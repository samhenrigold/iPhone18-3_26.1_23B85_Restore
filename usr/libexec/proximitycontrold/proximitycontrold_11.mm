uint64_t storeEnumTagSinglePayload for CardEffect(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100101150(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100101164(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_100101184(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 1886352499;
      }

      goto LABEL_8;
    }

    return 2036427888;
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6D6F6F7276;
      }

LABEL_8:
      v2._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v2);

      return 0x2D6B63696C63;
    }

    return 0x6C43656C62756F64;
  }
}

BOOL sub_100101278(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      return v3 == 4;
    }

    if (v2 == 5)
    {
      return v3 == 5;
    }
  }

  else
  {
    if (v2 == 2)
    {
      return v3 == 2;
    }

    if (v2 == 3)
    {
      return v3 == 3;
    }
  }

  v5 = v3 - 2;
  v6 = ((v3 ^ v2) & 1) == 0;
  return v5 >= 4 && v6;
}

unint64_t sub_100101308()
{
  result = qword_1003445B8;
  if (!qword_1003445B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003445B8);
  }

  return result;
}

unint64_t sub_100101370()
{
  result = qword_1003445D8;
  if (!qword_1003445D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003445D8);
  }

  return result;
}

uint64_t sub_1001013C4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003445C0);
  sub_100003078(v0, qword_1003445C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100101448()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x4F64657265776F70;
  if (v1 != 5)
  {
    v3 = 0x7463697274736572;
  }

  v4 = 0x726F687475616E75;
  if (v1 != 3)
  {
    v4 = 0x4F64657265776F70;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E69747465736572;
  if (v1 != 1)
  {
    v5 = 0x726F707075736E75;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100101544(unint64_t a1)
{
  if (a1 < 0xB && ((0x43Fu >> a1) & 1) != 0)
  {
    return byte_10027ABE6[a1];
  }

  if (qword_100338FE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_1003445C0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
  }

  return 0;
}

void sub_100101654(unint64_t a1, char **a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v19 = v2 & 0xFFFFFFFFFFFFFF8;
    v20 = v2 & 0xC000000000000001;
    v18 = v2;
    while (1)
    {
      if (v20)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v19 + 16))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12._countAndFlagsBits = v9;
      v12._object = v11;
      String.append(_:)(v12);

      v13 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_100009088(0, *(v13 + 2) + 1, 1, v13);
        *a2 = v13;
      }

      v16 = *(v13 + 2);
      v15 = *(v13 + 3);
      if (v16 >= v15 >> 1)
      {
        v13 = sub_100009088((v15 > 1), v16 + 1, 1, v13);
        *a2 = v13;
      }

      *(v13 + 2) = v16 + 1;
      v17 = &v13[16 * v16];
      *(v17 + 4) = 2108704;
      *(v17 + 5) = 0xE300000000000000;

      ++v4;
      v2 = v18;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_100101824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1001018A4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003445E0);
  sub_100003078(v0, qword_1003445E0);
  return Logger.init(subsystem:category:)();
}

id sub_100101A4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a1 + *a3);
  if (*v4)
  {
    v5 = v4[1];
    v8[4] = *v4;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100018AB8;
    v8[3] = a4;
    v6 = _Block_copy(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

char *sub_100101BB4(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC17proximitycontrold9XPCServer_interruptionHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC17proximitycontrold9XPCServer_invalidationHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC17proximitycontrold9XPCServer_connections;
  KeyPath = swift_getKeyPath();
  sub_100035D04(&unk_1003447A0, qword_10027ACB0);
  swift_allocObject();
  v8 = sub_10006CCE4(KeyPath, 0);

  *&v2[v6] = v8;
  *&v2[OBJC_IVAR____TtC17proximitycontrold9XPCServer_lockscreenXPCPublisher] = 0;
  v9 = &v2[OBJC_IVAR____TtC17proximitycontrold9XPCServer_stateHandle];
  *v9 = 0;
  v9[8] = 1;
  *&v2[OBJC_IVAR____TtC17proximitycontrold9XPCServer_tasks] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC17proximitycontrold9XPCServer_dispatchQueue] = a1;
  v10 = PCXPCLaunchingServiceName;
  v11 = objc_allocWithZone(NSXPCListener);
  v12 = a1;
  v13 = [v11 initWithMachServiceName:v10];
  *&v2[OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcLaunchingListener] = v13;
  v14 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:PCXPCServiceName];
  *&v2[OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcListener] = v14;
  v39.receiver = v2;
  v39.super_class = type metadata accessor for XPCServer();
  v15 = objc_msgSendSuper2(&v39, "init");
  v16 = qword_100338E78;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_10038AEE0;
  type metadata accessor for XPCPublisher();
  v19 = swift_allocObject();

  sub_100103D08(0xD00000000000002ELL, 0x8000000100298DF0, v18, v19);
  *&v17[OBJC_IVAR____TtC17proximitycontrold9XPCServer_lockscreenXPCPublisher] = v20;

  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  v37 = sub_10010401C;
  v38 = v21;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100101FAC;
  v36 = &unk_1003086F8;
  v22 = _Block_copy(&v33);
  v23 = v17;

  v24 = os_state_add_handler();
  _Block_release(v22);
  v25 = &v23[OBJC_IVAR____TtC17proximitycontrold9XPCServer_stateHandle];
  *v25 = v24;
  v25[8] = 0;
  [*&v23[OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcLaunchingListener] setDelegate:v23];
  v26 = *&v23[OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcListener];
  [v26 setDelegate:v23];

  v27 = *&v23[OBJC_IVAR____TtC17proximitycontrold9XPCServer_dispatchQueue];
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  v37 = sub_100002AFC;
  v38 = v28;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1000028F8;
  v36 = &unk_100308748;
  v29 = _Block_copy(&v33);
  v30 = v23;
  v31 = v27;

  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", v31, v29);
  _Block_release(v29);

  return v30;
}

uint64_t sub_100101FAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

id sub_10010202C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100102124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v22 = *(v9 - 8);
  v23 = v9;
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338FE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_1003445E0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Activate", v15, 2u);
  }

  v16 = *(v3 + OBJC_IVAR____TtC17proximitycontrold9XPCServer_dispatchQueue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = sub_100104008;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100308608;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v24 + 8))(v8, v6);
  (*(v22 + 8))(v11, v23);

  return result;
}

void sub_1001024CC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcLaunchingListener) resume];
    v5 = OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcListener;
    v6 = [*&v4[OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcListener] _xpcConnection];
    xpc_connection_set_non_launching();
    swift_unknownObjectRelease();
    [*&v4[v5] resume];
    if (*&v4[OBJC_IVAR____TtC17proximitycontrold9XPCServer_lockscreenXPCPublisher])
    {

      sub_100051DFC();
    }

    if (qword_100338FE8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_1003445E0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Activated", v10, 2u);
    }

    (a2)(0);
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v11 = 0x666C6573206C696ELL;
    *(v11 + 8) = 0xE800000000000000;
    *(v11 + 16) = 9;
    a2();
  }
}

double sub_100102758()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v12 = *(v4 - 8);
  v13 = v4;
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold9XPCServer_dispatchQueue);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100103FF8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100308590;
  v9 = _Block_copy(aBlock);
  v10 = v7;

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v14 + 8))(v3, v1);
  (*(v12 + 8))(v6, v13);

  return result;
}

void sub_100102A1C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcLaunchingListener);

    [v3 invalidate];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcListener);

    [v6 invalidate];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC17proximitycontrold9XPCServer_invalidationHandler);
    v9 = *(v7 + OBJC_IVAR____TtC17proximitycontrold9XPCServer_invalidationHandler + 8);
    v10 = v7;
    sub_10009D4E0(v8, v9);

    if (v8)
    {
      v8();
      sub_10002689C(v8, v9);
    }
  }
}

uint64_t sub_100102B8C(void *a1, void *a2)
{
  v3 = v2;
  if (qword_100338FE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_1003445E0);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v52 = v13;
    *v11 = 136315650;
    *(v11 + 4) = sub_100017494(0xD000000000000026, 0x80000001002A02D0, &v52);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v7;
    *(v11 + 22) = 2112;
    *(v11 + 24) = v8;
    *v12 = v7;
    v12[1] = v8;
    v14 = v7;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: listener=%@, newConnection=%@", v11, 0x20u);
    sub_100035D04(&qword_100339940, &unk_100272C50);
    swift_arrayDestroy();

    sub_10000903C(v13);
  }

  sub_100103CBC();
  v16 = *&v3[OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcListener];
  v17 = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
    v18 = *&v3[OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcLaunchingListener];
    v19 = static NSObject.== infix(_:_:)();

    if ((v19 & 1) == 0)
    {
      v47 = v7;
      v43 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        *(v49 + 4) = v47;
        *v50 = v47;
        v51 = v47;
        _os_log_impl(&_mh_execute_header, v43, v48, "### New connection from unrecognized listener %@", v49, 0xCu);
        sub_1000030B0(v50);

        goto LABEL_15;
      }

LABEL_16:

      return 0;
    }
  }

  if ((sub_1000D0404(1u, v8) & 1) == 0)
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v52 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_100017494(0xD00000000000001ALL, 0x8000000100297290, &v52);
      _os_log_impl(&_mh_execute_header, v43, v44, "### Missing entitlement '%s'", v45, 0xCu);
      sub_10000903C(v46);

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v20 = objc_allocWithZone(type metadata accessor for XPCConnection());
  v21 = v8;
  v22 = sub_100079434(v21, v3);
  v23 = objc_opt_self();
  v24 = [v23 interfaceWithProtocol:&OBJC_PROTOCOL___PCServerXPCInterface];
  [v21 setExportedInterface:v24];

  [v21 setExportedObject:v22];
  v25 = [v23 interfaceWithProtocol:&OBJC_PROTOCOL___PCClientXPCInterface];
  [v21 setRemoteObjectInterface:v25];

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v27[2] = v21;
  v27[3] = v26;
  v27[4] = v22;
  v56 = sub_100103F38;
  v57 = v27;
  v52 = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_100018AB8;
  v55 = &unk_100308518;
  v28 = _Block_copy(&v52);
  v29 = v21;
  v30 = v22;

  [v29 setInterruptionHandler:v28];
  _Block_release(v28);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v32[2] = v29;
  v32[3] = v31;
  v32[4] = v30;
  v56 = sub_100103FBC;
  v57 = v32;
  v52 = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_100018AB8;
  v55 = &unk_100308568;
  v33 = _Block_copy(&v52);
  v34 = v29;
  v35 = v30;

  [v34 setInvalidationHandler:v33];
  _Block_release(v33);
  v36 = v34;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    *(v39 + 4) = v36;
    *v40 = v36;
    v41 = v36;
    _os_log_impl(&_mh_execute_header, v37, v38, "New XPC Connection: %@", v39, 0xCu);
    sub_1000030B0(v40);
  }

  sub_100103560(v35);
  return 1;
}

void sub_1001032A0(void *a1)
{
  if (qword_100338FE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003445E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Removing", v5, 2u);
  }

  sub_10007983C();

  v6 = sub_10004ACDC([a1 hash]);
}

void sub_1001033E0(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void), const char *a5)
{
  if (qword_100338FE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_1003445E0);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = a4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, a5, v13, 0xCu);
    sub_1000030B0(v14);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_1001032A0(a3);
  }
}

id sub_100103560(void *a1)
{
  if (qword_100338FE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003445E0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Accepting %@", v6, 0xCu);
    sub_1000030B0(v7);
  }

  sub_1000498D4(v3);

  v9 = *&v3[OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx];

  return [v9 resume];
}

uint64_t sub_1001037AC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1000EEB48();
    v6 = v5;
  }

  else
  {
    v6 = 0xEE006E6F69746163;
    v4 = 0x696C707041206F4ELL;
  }

  v7 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_100009088((v8 > 1), v9 + 1, 1, v7);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
  }

  *(v7 + 2) = v11;
  v12 = &v7[16 * v9];
  *(v12 + 4) = v4;
  *(v12 + 5) = v6;
  if (v10 < (v9 + 2))
  {
    v7 = sub_100009088((v8 > 1), v9 + 2, 1, v7);
  }

  *(v7 + 2) = v9 + 2;
  v13 = &v7[16 * v11];
  *(v13 + 4) = 10;
  *(v13 + 5) = 0xE100000000000000;
  _StringGuts.grow(_:)(26);

  v39 = 0xD000000000000014;
  v40 = 0x80000001002A02B0;
  v15 = OBJC_IVAR____TtC17proximitycontrold9XPCServer_connections;
  v16 = *(v1 + OBJC_IVAR____TtC17proximitycontrold9XPCServer_connections);
  __chkstk_darwin(v14);
  type metadata accessor for XPCConnection();
  swift_getKeyPath();
  v17 = v16 + qword_100346AF8;

  os_unfair_lock_lock(v17);
  v36 = *(v17 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v17);

  v18 = *(v38 + 16);
  if (v18)
  {
    v19 = sub_100009194(*(v38 + 16), 0);
    v20 = sub_1001295D4();
    result = sub_100004F98(v36);
    if (v20 != v18)
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v19 < 0)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
LABEL_21:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_14;
    }
  }

  if ((v19 & 0x4000000000000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_14:

  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 1027416105;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  v25 = v39;
  v26 = v40;
  v28 = *(v7 + 2);
  v27 = *(v7 + 3);
  if (v28 >= v27 >> 1)
  {
    v24 = sub_100009088((v27 > 1), v28 + 1, 1, v7);
    v7 = v24;
  }

  *(v7 + 2) = v28 + 1;
  v29 = &v7[16 * v28];
  *(v29 + 4) = v25;
  *(v29 + 5) = v26;
  v39 = v7;
  v30 = *(v1 + v15);
  __chkstk_darwin(v24);
  swift_getKeyPath();
  v31 = v30 + qword_100346AF8;

  os_unfair_lock_lock(v31);
  v37 = *(v31 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v31);

  v32 = *(v38 + 16);
  if (!v32)
  {

    v33 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v33 = sub_100009194(*(v38 + 16), 0);
  v34 = sub_1001295D4();
  result = sub_100004F98(v37);
  if (v34 == v32)
  {

LABEL_20:
    sub_100101654(v33, &v39);

    sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
    v35 = BidirectionalCollection<>.joined(separator:)();
    swift_bridgeObjectRelease_n();
    return v35;
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_100103CBC()
{
  result = qword_100344730;
  if (!qword_100344730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100344730);
  }

  return result;
}

void sub_100103D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 48) = 0;
  *(a4 + 40) = &off_100303248;
  swift_unknownObjectWeakAssign();
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  v7 = qword_1003391E8;

  if (v7 != -1)
  {
    swift_once();
  }

  String.utf8CString.getter();
  v8 = xpc_event_publisher_create();

  if (v8)
  {

    *(a4 + 56) = v8;
    v18 = sub_1001042A0;
    v19 = a4;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100101824;
    v17 = &unk_100308770;
    v9 = _Block_copy(&v14);
    v10 = v8;

    xpc_event_publisher_set_handler();
    _Block_release(v9);

    v11 = *(a4 + 56);
    v18 = sub_1001042A8;
    v19 = a4;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_1002386BC;
    v17 = &unk_100308798;
    v12 = _Block_copy(&v14);

    v13 = v11;

    xpc_event_publisher_set_error_handler();
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100103F74()
{

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_100104040()
{
  v1 = [v0 description];
  v19 = 0;
  v2 = [objc_opt_self() dataWithPropertyList:v1 format:200 options:0 error:&v19];

  v3 = v19;
  if (!v2)
  {
    v9 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v6);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v12 = *(v4 + 16);
  v11 = *(v4 + 24);
  v13 = __OFSUB__(v11, v12);
  v8 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_10:
    LODWORD(v8) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v8 = v8;
  }

LABEL_13:
  if (__OFADD__(v8, 200))
  {
    __break(1u);
    goto LABEL_37;
  }

  v14 = calloc(v8 + 200, 1uLL);
  if (!v14)
  {
    sub_100010708(v4, v6);
    return 0;
  }

  *v14 = 1;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
LABEL_31:
      *(v14 + 1) = 0;
      goto LABEL_32;
    }

    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    v13 = __OFSUB__(v15, v16);
    v17 = v15 - v16;
    if (!v13)
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_23:
    LODWORD(v17) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v17 = v17;
LABEL_25:
    if ((v17 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v17))
      {
        *(v14 + 1) = v17;
        strcpy(v14 + 136, "ProximityControl state");
        if (v7 == 2)
        {
          if (!__OFSUB__(*(v4 + 24), *(v4 + 16)))
          {
            goto LABEL_34;
          }

          __break(1u);
          goto LABEL_31;
        }

        if (!__OFSUB__(HIDWORD(v4), v4))
        {
          goto LABEL_34;
        }

LABEL_41:
        __break(1u);
      }

      goto LABEL_38;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v7)
  {
    goto LABEL_23;
  }

  *(v14 + 1) = BYTE6(v6);
LABEL_32:
  strcpy(v14 + 136, "ProximityControl state");
LABEL_34:
  v18 = v14;
  Data.copyBytes(to:count:)();
  sub_100010708(v4, v6);
  return v18;
}

uint64_t sub_1001042F4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern, &unk_10027ADB4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);

  return v3;
}

uint64_t sub_1001043B0@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern, &unk_10027ADB4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name + 8);
  *a3 = *(v4 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
  a3[1] = v5;
}

uint64_t sub_100104468(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1001044A8(v1, v2);
}

uint64_t sub_1001044A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
  v6 = *(v2 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name) == a1 && *(v2 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name + 8) == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern, &unk_10027ADB4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_100104614(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern, &unk_10027ADB4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier);
}

double sub_1001046BC@<D0>(uint64_t *a1@<X0>, double *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern, &unk_10027ADB4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v4 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier);
  *a3 = result;
  return result;
}

void sub_10010476C(double a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier) == a1)
  {
    *(v3 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern, &unk_10027ADB4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001048B4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern, &unk_10027ADB4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100104958@<X0>(uint64_t *a1@<X0>, void *a4@<X4>, void *a5@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern, &unk_10027ADB4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a5 = *(v7 + *a4);
}

double sub_100104A10(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern, &unk_10027ADB4);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_100104ACC()
{
  _StringGuts.grow(_:)(25);
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern, &unk_10027ADB4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);

  v2._countAndFlagsBits = 0x73746E6576652820;
  v2._object = 0xE90000000000003ALL;
  String.append(_:)(v2);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__events) >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x736576727563202CLL;
  v4._object = 0xE90000000000003ALL;
  String.append(_:)(v4);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__parameterCurves) >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return v1;
}

id sub_100104D24()
{
  v1 = v0;
  v2 = type metadata accessor for HapticPattern.HapticParameterCurve.ControlPoint(0);
  v53 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC17proximitycontrold13HapticPattern___observationRegistrar;
  v67 = v1;
  v63 = sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern, &unk_10027ADB4);
  v64 = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v65 = v1;
  v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__events);
  if (v6 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = _swiftEmptyArrayStorage;
    v51 = v4;
    v52 = v2;
    if (!i)
    {
      goto LABEL_11;
    }

    v9 = i;
    v67 = _swiftEmptyArrayStorage;

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v9 < 0)
    {
      break;
    }

    v11 = 0;
    v61 = OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier;
    v62 = (v6 & 0xC000000000000001);
    do
    {
      if (v62)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v6 + 8 * v11 + 32);
      }

      ++v11;
      swift_getKeyPath();
      v13 = v65;
      v66 = v65;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v14 = *(v13 + v61);
      swift_getKeyPath();
      v66 = v12;
      sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent, &unk_10027AD98);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = *(v12 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type);
      swift_getKeyPath();
      v66 = v12;
      v16 = v15;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v17 = v14 * *(v12 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime);
      swift_getKeyPath();
      v66 = v12;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v18 = v14 * *(v12 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration);
      v19 = objc_allocWithZone(CHHapticEvent);
      sub_100003118(0, &qword_10034E220, CHHapticEventParameter_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v4 = [v19 initWithEventType:v16 parameters:isa relativeTime:v17 duration:v18];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v9 != v11);

    v8 = v67;
LABEL_11:
    v47 = v8;
    swift_getKeyPath();
    v21 = v65;
    v67 = v65;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v21 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__parameterCurves);
    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = _swiftEmptyArrayStorage;
    if (!v23)
    {
LABEL_27:
      v45 = objc_allocWithZone(CHHapticPattern);
      return sub_100107C00(v47, v24);
    }

    v67 = _swiftEmptyArrayStorage;

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v23 < 0)
    {
      goto LABEL_33;
    }

    v25 = 0;
    v56 = v22 & 0xC000000000000001;
    v54 = OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier;
    v49 = v22 & 0xFFFFFFFFFFFFFF8;
    v48 = v22 + 32;
    v55 = v23;
    v50 = v22;
    while (1)
    {
      v2 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v56)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v49 + 16))
        {
          goto LABEL_29;
        }

        v6 = *(v48 + 8 * v25);
      }

      swift_getKeyPath();
      v30 = v65;
      v66 = v65;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v31 = *(v30 + v54);
      swift_getKeyPath();
      v32 = OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve___observationRegistrar;
      v66 = v6;
      v4 = sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve, &unk_10027AD7C);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v33 = *(v6 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID);
      swift_getKeyPath();
      v66 = v6;
      v34 = v33;
      v61 = v32;
      v62 = v34;
      v60 = v4;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v35 = *(v6 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__controlPoints);
      v36 = *(v35 + 16);
      if (v36)
      {
        v58 = v6;
        v59 = v2;
        v66 = _swiftEmptyArrayStorage;

        specialized ContiguousArray.reserveCapacity(_:)();
        v37 = v52;
        v38 = *(v53 + 80);
        v57 = v35;
        v39 = v35 + ((v38 + 32) & ~v38);
        v40 = *(v53 + 72);
        v4 = v51;
        do
        {
          sub_100107D70(v39, v4);
          v41 = v31 * *&v4[*(v37 + 20)];
          v42 = *&v4[*(v37 + 24)];
          v43 = objc_allocWithZone(CHHapticParameterCurveControlPoint);
          LODWORD(v44) = v42;
          [v43 initWithRelativeTime:v41 value:v44];
          sub_100107DD4(v4);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v39 += v40;
          --v36;
        }

        while (v36);

        v6 = v58;
        v2 = v59;
      }

      swift_getKeyPath();
      v66 = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v26 = v31 * *(v6 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime);
      v27 = objc_allocWithZone(CHHapticParameterCurve);
      sub_100003118(0, &qword_100344D20, CHHapticParameterCurveControlPoint_ptr);
      v28 = Array._bridgeToObjectiveC()().super.isa;

      v29 = v62;
      [v27 initWithParameterID:v62 controlPoints:v28 relativeTime:v26];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v25 = v2;
      if (v2 == v55)
      {

        v24 = v67;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_10010552C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern, &unk_10027ADB4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name + 8);
  v28 = *(v3 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
  swift_getKeyPath();
  v27 = v4;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v3 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__events);
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    v9 = 0;
    v29 = v6;
    v31 = v6 & 0xC000000000000001;
    do
    {
      if (v31)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      ++v9;
      swift_getKeyPath();
      sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent, &unk_10027AD98);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *(v10 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type);
      swift_getKeyPath();
      v12 = v11;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v13 = *(v10 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime);
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v14 = *(v10 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration);
      type metadata accessor for HapticPattern.HapticEvent(0);
      v15 = swift_allocObject();
      UUID.init()();
      ObservationRegistrar.init()();

      *(v15 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type) = v12;
      *(v15 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime) = v13;
      *(v15 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration) = v14;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v6 = v29;
    }

    while (v7 != v9);
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v3 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__parameterCurves);
  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v17)
  {
LABEL_21:
    v25 = swift_allocObject();
    UUID.init()();
    ObservationRegistrar.init()();
    v26 = (v25 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
    *v26 = v28;
    v26[1] = v27;
    *(v25 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier) = v5;
    *(v25 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__events) = _swiftEmptyArrayStorage;
    *(v25 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__parameterCurves) = _swiftEmptyArrayStorage;
    return v25;
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v30 = v16;
    v32 = v16 & 0xC000000000000001;
    do
    {
      if (v32)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(v16 + 8 * v18 + 32);
      }

      ++v18;
      swift_getKeyPath();
      sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve, &unk_10027AD7C);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v20 = *(v19 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID);
      swift_getKeyPath();
      v21 = v20;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22 = *(v19 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__controlPoints);
      swift_getKeyPath();

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v23 = *(v19 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime);
      type metadata accessor for HapticPattern.HapticParameterCurve(0);
      v24 = swift_allocObject();
      UUID.init()();
      ObservationRegistrar.init()();

      *(v24 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID) = v21;
      *(v24 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__controlPoints) = v22;
      *(v24 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime) = v23;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v16 = v30;
    }

    while (v17 != v18);

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100105BEC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold13HapticPattern_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC17proximitycontrold13HapticPattern___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_100105D24(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
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

id sub_100105E48(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent, &unk_10027AD98);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type);

  return v3;
}

id sub_100105F00@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent, &unk_10027AD98);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type);
  *a3 = v5;

  return v5;
}

void sub_100105FC0(void *a1)
{
  v3 = OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent, &unk_10027AD98);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }
  }

  v11 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_10010615C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent, &unk_10027AD98);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime);
}

double sub_100106204@<D0>(uint64_t *a1@<X0>, double *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent, &unk_10027AD98);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v4 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime);
  *a3 = result;
  return result;
}

void sub_1001062B4(double a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime) == a1)
  {
    *(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent, &unk_10027AD98);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1001063D4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent, &unk_10027AD98);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration);
}

double sub_10010647C@<D0>(uint64_t *a1@<X0>, double *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent, &unk_10027AD98);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v4 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration);
  *a3 = result;
  return result;
}

void sub_10010652C(double a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration) == a1)
  {
    *(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent, &unk_10027AD98);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10010664C()
{
  _StringGuts.grow(_:)(16);
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent, &unk_10027AD98);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x3D64207C20;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Double.write<A>(to:)();
  v2._countAndFlagsBits = 0x3D7472202CLL;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Double.write<A>(to:)();
  return 0;
}

uint64_t sub_100106818()
{
  v1 = OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

id sub_10010696C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve, &unk_10027AD7C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID);

  return v3;
}

id sub_100106A24@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve, &unk_10027AD7C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID);
  *a3 = v5;

  return v5;
}

void sub_100106AE4(void *a1)
{
  v3 = OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve, &unk_10027AD7C);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }
  }

  v11 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100106C80(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve, &unk_10027AD7C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100106D2C@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve, &unk_10027AD7C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__controlPoints);
}

double sub_100106DE0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve, &unk_10027AD7C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double sub_100106EAC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve, &unk_10027AD7C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime);
}

double sub_100106F54@<D0>(uint64_t *a1@<X0>, double *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve, &unk_10027AD7C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v4 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime);
  *a3 = result;
  return result;
}

void sub_100107004(double a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime) == a1)
  {
    *(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve, &unk_10027AD7C);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100107124@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10010718C()
{
  v1 = OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1001072C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v6 <= 0x3F)
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

uint64_t sub_1001073F0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100107480@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1001074F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100107580()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
  *v2 = v0[3];
  v2[1] = v1;
}

double sub_1001075CC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime) = result;
  return result;
}

double sub_1001075E4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration) = result;
  return result;
}

uint64_t sub_1001075FC()
{
  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002764E0;
  v1 = v0;
  v28 = v0;
  v2 = CHHapticEventTypeHapticContinuous;
  type metadata accessor for HapticPattern.HapticEvent(0);
  v3 = swift_allocObject();
  v4 = v2;
  UUID.init()();
  ObservationRegistrar.init()();
  *(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type) = v4;
  *(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime) = 0;
  *(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration) = 0x3FF0000000000000;
  *(v1 + 32) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100271B90;
  v6 = CHHapticDynamicParameterIDHapticIntensityControl;
  sub_100035D04(&qword_100344D38, qword_10027B060);
  v7 = (type metadata accessor for HapticPattern.HapticParameterCurve.ControlPoint(0) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100274B70;
  v11 = v10 + v9;
  v27 = v6;
  UUID.init()();
  *(v11 + v7[7]) = 0;
  *(v11 + v7[8]) = 0;
  v12 = v10 + v9 + v8;
  UUID.init()();
  *(v12 + v7[7]) = 0x3FC999999999999ALL;
  *(v12 + v7[8]) = 1060320051;
  v13 = v10 + v9 + 2 * v8;
  UUID.init()();
  *(v13 + v7[7]) = 0x3FE0000000000000;
  *(v13 + v7[8]) = 1065353216;
  v14 = v10 + v9 + 3 * v8;
  UUID.init()();
  *(v14 + v7[7]) = 0x3FE3333333333333;
  *(v14 + v7[8]) = 1065353216;
  v15 = v10 + v9 + 4 * v8;
  UUID.init()();
  *(v15 + v7[7]) = 0x3FECCCCCCCCCCCCDLL;
  *(v15 + v7[8]) = 1056964608;
  v16 = v10 + v9 + 5 * v8;
  UUID.init()();
  *(v16 + v7[7]) = 0x3FF0000000000000;
  *(v16 + v7[8]) = 0;
  type metadata accessor for HapticPattern.HapticParameterCurve(0);
  v17 = swift_allocObject();
  UUID.init()();
  ObservationRegistrar.init()();
  *(v17 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID) = v27;
  *(v17 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__controlPoints) = v10;
  *(v17 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime) = 0;
  *(v5 + 32) = v17;
  v18 = CHHapticDynamicParameterIDHapticSharpnessControl;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1002725A0;
  v20 = v19 + v9;
  v21 = v18;
  UUID.init()();
  *(v20 + v7[7]) = 0;
  *(v20 + v7[8]) = -1090519040;
  v22 = v19 + v9 + v8;
  UUID.init()();
  *(v22 + v7[7]) = 0x3FE0000000000000;
  *(v22 + v7[8]) = 1028443341;
  v23 = swift_allocObject();
  UUID.init()();
  ObservationRegistrar.init()();
  *(v23 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID) = v21;
  *(v23 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__controlPoints) = v19;
  *(v23 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime) = 0;
  *(v5 + 40) = v23;
  type metadata accessor for HapticPattern(0);
  v24 = swift_allocObject();
  UUID.init()();
  result = ObservationRegistrar.init()();
  v26 = (v24 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
  *v26 = 0x33206D6F6F7256;
  v26[1] = 0xE700000000000000;
  *(v24 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier) = 0x3FECCCCCCCCCCCCDLL;
  *(v24 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__events) = v28;
  *(v24 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__parameterCurves) = v5;
  qword_10038B148 = v24;
  return result;
}

uint64_t sub_100107A80(uint64_t a1, uint64_t a2)
{
  if (qword_100338FF0 != -1)
  {
    a1 = swift_once();
  }

  v2 = sub_10010552C(a1, a2);
  v3 = v2;
  if (*(v2 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier) == 1.0)
  {
    *(v2 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier) = 0x3FF0000000000000;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern, &unk_10027ADB4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  result = sub_1001044A8(0x34206D6F6F7256, 0xE700000000000000);
  qword_10038B150 = v3;
  return result;
}

id sub_100107C00(uint64_t a1, uint64_t a2)
{
  sub_100003118(0, &qword_100344D28, CHHapticEvent_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100003118(0, &qword_100344D30, CHHapticParameterCurve_ptr);
  v4 = Array._bridgeToObjectiveC()().super.isa;

  v9 = 0;
  v5 = [v2 initWithEvents:isa parameterCurves:v4 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

void sub_100107D30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type);
  *(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type) = v2;
  v4 = v2;
}

uint64_t sub_100107D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HapticPattern.HapticParameterCurve.ControlPoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100107DD4(uint64_t a1)
{
  v2 = type metadata accessor for HapticPattern.HapticParameterCurve.ControlPoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100107E30()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime) = result;
  return result;
}

uint64_t sub_100107E68(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

void sub_100107EAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID);
  *(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID) = v2;
  v4 = v2;
}

double sub_100107EEC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier) = result;
  return result;
}

uint64_t sub_100107F20(void *a1)
{
  v3 = [v1 callUUID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [a1 callUUID];
  if (v8 && (v9 = v8, v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v12 = v11, v9, v7) && v12)
  {
    if (v5 == v10 && v7 == v12)
    {
      goto LABEL_24;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      return 1;
    }
  }

  else
  {
  }

  v16 = [v1 conversationUUID];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a1 conversationUUID];
  if (v21 && (v22 = v21, v23 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v25 = v24, v22, v20) && v25)
  {
    if (v18 == v23 && v20 == v25)
    {
LABEL_24:

      return 1;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v26 & 1;
  }

  else
  {

    return 0;
  }
}

id sub_1001081CC()
{
  v0 = [objc_allocWithZone(PCMediaRemoteDisplayContext) init];
  v1 = objc_allocWithZone(MRClient);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithBundleIdentifier:v2];

  v4 = [objc_allocWithZone(MRPlayerPath) initWithOrigin:0 client:v3 player:0];
  v5 = [objc_allocWithZone(MRNowPlayingPlayerResponse) init];
  v6 = [objc_allocWithZone(PCMediaActivity) initWithDisplayContext:v0 response:v5];

  return v6;
}

unint64_t sub_1001082D0()
{
  result = qword_100344D40;
  if (!qword_100344D40)
  {
    type metadata accessor for PCActivityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344D40);
  }

  return result;
}

uint64_t PCInteractionDirection.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 1:
      return 1752397168;
    case 2:
      return 1819047280;
  }

  _StringGuts.grow(_:)(19);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0xD000000000000011;
}

unint64_t sub_1001084BC()
{
  result = qword_100344D48;
  if (!qword_100344D48)
  {
    type metadata accessor for PCInteractionDirection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344D48);
  }

  return result;
}

uint64_t sub_100108514(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_100108530(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

__n128 sub_100108550(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10010856C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 57))
  {
    return (*a1 + 60);
  }

  v3 = ((*(a1 + 56) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 56) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001085C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 60;
    if (a3 >= 0x3C)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_100108640(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 56) = *(result + 56) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CardEffect(unsigned __int8 *a1, unsigned int a2)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    v9 = v8 - 2;
  }

  else
  {
    v9 = 0;
  }

  if (v9 >= 2)
  {
    return v9 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100108738(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    v2 = v1 - 2;
  }

  else
  {
    v2 = 0;
  }

  if (v2 >= 3)
  {
    return v2 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100108758(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t sub_100108778(uint64_t a1)
{
  if (a1 == 5)
  {
    return 0x7373696D736964;
  }

  v2 = a1;
  _StringGuts.grow(_:)(22);

  v3._countAndFlagsBits = sub_10022C5BC(v2);
  String.append(_:)(v3);

  v4._countAndFlagsBits = 10528;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  return 0xD000000000000012;
}

uint64_t sub_100108830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E6573657270 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10010890C(uint64_t a1)
{
  v2 = sub_10010B9A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100108948(uint64_t a1)
{
  v2 = sub_10010B9A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100108984(uint64_t a1)
{
  v2 = sub_10010B9F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001089C0(uint64_t a1)
{
  v2 = sub_10010B9F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100108A08(uint64_t a1)
{
  v2 = sub_10010BA4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100108A44(uint64_t a1)
{
  v2 = sub_10010BA4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100108A80(void *a1, int a2)
{
  v18 = a2;
  v19 = a2;
  v3 = sub_100035D04(&qword_100344E60, &qword_10027B488);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v14 - v4;
  v6 = sub_100035D04(&qword_100344E68, &qword_10027B490);
  v15 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  v9 = sub_100035D04(&qword_100344E70, &qword_10027B498);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_10000EBC0(a1, a1[3]);
  sub_10010B9A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v19 == 5)
  {
    v22 = 1;
    sub_10010B9F8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v21 = 0;
    sub_10010BA4C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v18;
    sub_10010BAF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v15 + 8))(v8, v6);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100108D94@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10010A2D0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_100108DE4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = v3 == 5 && v2 == 5;
  if (v2 != 5 && v3 != 5)
  {
    if (v2 == 4)
    {
      if (v3 == 4)
      {
        return 1;
      }
    }

    else if (v2 == 3)
    {
      if (v3 == 3)
      {
        return 1;
      }
    }

    else if (v2 == v3 && (v3 - 5) < 0xFFFFFFFE)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_100108E4C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 56);
  v4 = v3 >> 5;
  if (v3 >> 5 <= 1)
  {
    if (!v4)
    {
      _StringGuts.grow(_:)(22);

      v16 = 0xD000000000000012;
      v7._countAndFlagsBits = v1;
      v7._object = v2;
      String.append(_:)(v7);
LABEL_19:
      v14._countAndFlagsBits = 10528;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      return v16;
    }

    _StringGuts.grow(_:)(17);
    v15 = 0;
    v12._countAndFlagsBits = 0x202864656C696166;
    v12._object = 0xEE003D726F727265;
    String.append(_:)(v12);
    _print_unlocked<A, B>(_:_:)();
    v9 = 32;
    v10 = 0xE100000000000000;
LABEL_16:
    String.append(_:)(*&v9);
    return v15;
  }

  if (v4 == 2)
  {
    _StringGuts.grow(_:)(19);

    v15 = 0x726F737365636361;
    v8._countAndFlagsBits = sub_100228198();
    String.append(_:)(v8);

    v9 = 10528;
    v10 = 0xE200000000000000;
    goto LABEL_16;
  }

  if (v4 == 3)
  {
    v5 = 0x65756E69746E6F63;
    _StringGuts.grow(_:)(19);

    v16 = 0x6F69746163756465;
    if (v1)
    {
      if (v1 == 1)
      {
        v6 = 0xEF74756F656D6954;
      }

      else
      {
        v5 = 0xD000000000000012;
        v6 = 0x800000010029ADA0;
      }
    }

    else
    {
      v6 = 0xEE00646570706154;
    }

    v13._countAndFlagsBits = v5;
    v13._object = v6;
    String.append(_:)(v13);

    goto LABEL_19;
  }

  if ((v2 | v1 | *(v0 + 16) | *(v0 + 24) | *(v0 + 32) | *(v0 + 40) | *(v0 + 48)) == 0 && v3 == 128)
  {
    return 0x69746E6573657270;
  }

  else
  {
    return 0x65746E6573657270;
  }
}

uint64_t sub_100109150(void *a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_100344DD8, &qword_10027B438);
  v55 = *(v4 - 8);
  *&v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v44 - v5;
  v53 = sub_100035D04(&qword_100344DE0, &qword_10027B440);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v44 - v6;
  v57 = sub_100035D04(&qword_100344DE8, &qword_10027B448);
  v50 = *(v57 - 8);
  __chkstk_darwin(v57);
  v8 = &v44 - v7;
  v9 = sub_100035D04(&qword_100344DF0, &qword_10027B450);
  v49 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  v48 = sub_100035D04(&qword_100344DF8, &qword_10027B458);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v44 - v12;
  v45 = sub_100035D04(&qword_100344E00, &qword_10027B460);
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v14 = &v44 - v13;
  v15 = sub_100035D04(&qword_100344E08, &qword_10027B468);
  v60 = *(v15 - 8);
  v61 = v15;
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  sub_10000EBC0(a1, a1[3]);
  sub_10010B560();
  v59 = v17;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v2;
  v19 = v2[1];
  v20 = *(v2 + 4);
  v21 = *(v2 + 5);
  v22 = *(v2 + 6);
  v23 = *(v2 + 56);
  v24 = v23 >> 5;
  if (v23 >> 5 <= 1)
  {
    v30 = v57;
    v58 = v18;
    if (v24)
    {
      LOBYTE(v62) = 3;
      v56 = v19;
      sub_10010B704();
      v40 = v8;
      v41 = v61;
      v42 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = v58;
      v63 = v56;
      v64 = v20;
      v65 = v21;
      v66 = v22;
      sub_10010B950();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v50 + 8))(v40, v30);
      return (*(v60 + 8))(v42, v41);
    }

    else
    {
      LOBYTE(v62) = 2;
      sub_10010B7AC();
      v31 = v61;
      v32 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v49 + 8))(v11, v9);
      return (*(v60 + 8))(v32, v31);
    }
  }

  else if (v24 == 2)
  {
    v33 = v23 & 0x1F;
    LOBYTE(v62) = 4;
    v58 = v18;
    v56 = v19;
    sub_10010B65C();
    v34 = v51;
    v35 = v61;
    v36 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v62 = v58;
    v63 = v56;
    v64 = v20;
    v65 = v21;
    v66 = v22;
    v67 = v33;
    sub_10010B8FC();
    v37 = v53;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v52 + 8))(v34, v37);
    return (*(v60 + 8))(v36, v35);
  }

  else if (v24 == 3)
  {
    LOBYTE(v62) = 5;
    v58 = v18;
    sub_10010B5B4();
    v25 = v54;
    v26 = v61;
    v27 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v62) = v58;
    sub_10010B8A8();
    v28 = v56;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v55 + 8))(v25, v28);
    return (*(v60 + 8))(v27, v26);
  }

  else
  {
    if (v19 | v18 | *(&v18 + 1) | *(&v19 + 1) | v20 | v21 | v22 || v23 != 128)
    {
      LOBYTE(v62) = 1;
      sub_10010B800();
      v43 = v46;
      v38 = v61;
      v39 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v47 + 8))(v43, v48);
    }

    else
    {
      LOBYTE(v62) = 0;
      sub_10010B854();
      v38 = v61;
      v39 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v44 + 8))(v14, v45);
    }

    return (*(v60 + 8))(v39, v38);
  }
}

uint64_t sub_100109990(uint64_t a1)
{
  v2 = sub_10010B65C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001099CC(uint64_t a1)
{
  v2 = sub_10010B65C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100109A08()
{
  v1 = *v0;
  v2 = 0x69746E6573657270;
  v3 = 0x64656C696166;
  v4 = 0x726F737365636361;
  if (v1 != 4)
  {
    v4 = 0x6F69746163756465;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746E6573657270;
  if (v1 != 1)
  {
    v5 = 0x657373696D736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100109AE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10010A7C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100109B10(uint64_t a1)
{
  v2 = sub_10010B560();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100109B4C(uint64_t a1)
{
  v2 = sub_10010B560();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100109B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100109C20(uint64_t a1)
{
  v2 = sub_10010B7AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100109C5C(uint64_t a1)
{
  v2 = sub_10010B7AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100109C98(uint64_t a1)
{
  v2 = sub_10010B5B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100109CD4(uint64_t a1)
{
  v2 = sub_10010B5B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100109D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100109D90(uint64_t a1)
{
  v2 = sub_10010B704();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100109DCC(uint64_t a1)
{
  v2 = sub_10010B704();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100109E08(uint64_t a1)
{
  v2 = sub_10010B800();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100109E44(uint64_t a1)
{
  v2 = sub_10010B800();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100109E80(uint64_t a1)
{
  v2 = sub_10010B854();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100109EBC(uint64_t a1)
{
  v2 = sub_10010B854();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100109EF8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_10010A9E0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

BOOL sub_100109F60(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_100109FBC(v5, v7);
}

BOOL sub_100109FBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 56);
  v3 = v2 >> 5;
  if (v2 >> 5 <= 1)
  {
    if (v3)
    {
      if ((a2[7] & 0xE0) == 0x20)
      {
        return 1;
      }
    }

    else if (*(a2 + 56) < 0x20u)
    {
      return 1;
    }
  }

  else
  {
    v5 = *a1;
    v4 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    if (v3 == 2)
    {
      v12 = *(a2 + 56);
      if ((v12 & 0xE0) == 0x40)
      {
        v13 = v12 & 0x1F;
        v14 = v2 & 0x1F;
        if (v14)
        {
          if (v14 == 1)
          {
            if (v13 == 1)
            {
              return 1;
            }
          }

          else
          {
            v20 = *a2;
            v19 = a2[1];
            v22 = a2[2];
            v21 = a2[3];
            v24 = a2[4];
            v23 = a2[5];
            v25 = a2[6];
            v26 = v8 | v9 | v10;
            if (v6 | v4 | v5 | v7 | v26)
            {
              v27 = v6 | v4 | v7 | v26;
              if (v5 != 1 || v27)
              {
                if (v5 != 2 || v27)
                {
                  if (v5 != 3 || v27)
                  {
                    if (v5 != 4 || v27)
                    {
                      if (v13 == 2 && v20 == 5 && !(v22 | v19 | v21 | v24 | v23 | v25))
                      {
                        return 1;
                      }
                    }

                    else if (v13 == 2 && v20 == 4 && !(v22 | v19 | v21 | v24 | v23 | v25))
                    {
                      return 1;
                    }
                  }

                  else if (v13 == 2 && v20 == 3 && !(v22 | v19 | v21 | v24 | v23 | v25))
                  {
                    return 1;
                  }
                }

                else if (v13 == 2 && v20 == 2 && !(v22 | v19 | v21 | v24 | v23 | v25))
                {
                  return 1;
                }
              }

              else if (v13 == 2 && v20 == 1 && !(v22 | v19 | v21 | v24 | v23 | v25))
              {
                return 1;
              }
            }

            else if (v13 == 2 && !(v22 | v19 | v20 | v21 | v24 | v23 | v25))
            {
              return 1;
            }
          }
        }

        else if ((v12 & 0x1F) == 0)
        {
          return 1;
        }
      }
    }

    else if (v3 == 3)
    {
      if ((a2[7] & 0xE0) == 0x60)
      {
        return *a2 == v5;
      }
    }

    else if (v6 | v4 | v5 | v7 | v8 | v9 | v10 || v2 != 128)
    {
      v17 = *(a2 + 56);
      if ((v17 & 0xE0) == 0x80 && v17 == 128 && *a2 == 1)
      {
        v18 = vorrq_s8(*(a2 + 3), *(a2 + 5));
        if (!(*&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | a2[2] | a2[1]))
        {
          return 1;
        }
      }
    }

    else
    {
      v15 = *(a2 + 56);
      if ((v15 & 0xE0) == 0x80 && v15 == 128)
      {
        v16 = vorrq_s8(*(a2 + 3), *(a2 + 5));
        if (!(*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | a2[2] | a2[1] | *a2))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10010A2D0(void *a1)
{
  v27 = sub_100035D04(&qword_100344E28, &qword_10027B470);
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v3 = &v26 - v2;
  v4 = sub_100035D04(&qword_100344E30, &qword_10027B478);
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_100035D04(&qword_100344E38, &qword_10027B480);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = a1[3];
  v31 = a1;
  v12 = sub_10000EBC0(a1, v11);
  sub_10010B9A4();
  v13 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v26 = v4;
    v14 = v29;
    v30 = v8;
    v15 = KeyedDecodingContainer.allKeys.getter();
    v16 = (2 * *(v15 + 16)) | 1;
    v32 = v15;
    v33 = v15 + 32;
    v34 = 0;
    v35 = v16;
    v17 = sub_10021800C();
    if (v17 == 2 || v34 != v35 >> 1)
    {
      v12 = v10;
      v19 = type metadata accessor for DecodingError();
      swift_allocError();
      v21 = v20;
      sub_100035D04(&qword_10033EA78, &qword_100275A60);
      *v21 = &type metadata for CardEffect;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
      swift_willThrow();
      (*(v30 + 8))(v10, v7);
      swift_unknownObjectRelease();
    }

    else if (v17)
    {
      v36 = 1;
      sub_10010B9F8();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v18 = v30;
      (*(v14 + 8))(v3, v27);
      (*(v18 + 8))(v10, v7);
      swift_unknownObjectRelease();
      v12 = 5;
    }

    else
    {
      v36 = 0;
      sub_10010BA4C();
      v23 = v6;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v30;
      sub_10010BAA0();
      v25 = v26;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v28 + 8))(v23, v25);
      (*(v24 + 8))(v10, v7);
      swift_unknownObjectRelease();
      v12 = v36;
    }
  }

  sub_10000903C(v31);
  return v12;
}

uint64_t sub_10010A7C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6573657270 && a2 == 0xEA0000000000676ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00007765695679 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69746163756465 && a2 == 0xED0000776569566ELL)
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

double sub_10010A9E0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v61 = sub_100035D04(&qword_100344D50, &qword_10027B3F8);
  v63 = *(v61 - 8);
  __chkstk_darwin(v61);
  v68 = &v49 - v3;
  v59 = sub_100035D04(&qword_100344D58, &qword_10027B400);
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v67 = &v49 - v4;
  v57 = sub_100035D04(&qword_100344D60, &qword_10027B408);
  v60 = *(v57 - 8);
  __chkstk_darwin(v57);
  v66 = &v49 - v5;
  v55 = sub_100035D04(&qword_100344D68, &qword_10027B410);
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v65 = &v49 - v6;
  v56 = sub_100035D04(&qword_100344D70, &qword_10027B418);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = &v49 - v7;
  v9 = sub_100035D04(&qword_100344D78, &qword_10027B420);
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v12 = sub_100035D04(&qword_100344D80, &unk_10027B428);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = a1[3];
  v81 = a1;
  sub_10000EBC0(a1, v16);
  sub_10010B560();
  v17 = v69;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    goto LABEL_12;
  }

  v18 = v11;
  v50 = v9;
  v51 = v8;
  v20 = v65;
  v19 = v66;
  v21 = v67;
  v22 = v68;
  v52 = 0;
  *&v69 = v13;
  v23 = v15;
  v24 = KeyedDecodingContainer.allKeys.getter();
  v25 = (2 * *(v24 + 16)) | 1;
  v77 = v24;
  v78 = v24 + 32;
  v79 = 0;
  v80 = v25;
  v26 = sub_100218010();
  if (v26 == 6 || v79 != v80 >> 1)
  {
    v33 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v34;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v35 = &type metadata for CardEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v33 - 8) + 104))(v35, enum case for DecodingError.typeMismatch(_:), v33);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v26 > 2u)
  {
    if (v26 == 3)
    {
      LOBYTE(v70) = 3;
      sub_10010B704();
      v40 = v52;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v64;
      if (!v40)
      {
        sub_10010B758();
        v41 = v57;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v52 = 0;
        (*(v60 + 8))(v19, v41);
        (*(v69 + 8))(v23, v12);
        swift_unknownObjectRelease();
        v31 = v70;
        v29 = v71;
        v12 = v72;
        v21 = v73;
        v22 = v74;
        v30 = 32;
        v69 = v75;
        goto LABEL_26;
      }
    }

    else
    {
      v32 = v64;
      if (v26 == 4)
      {
        LOBYTE(v70) = 4;
        sub_10010B65C();
        v37 = v52;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v37)
        {
          sub_10010B6B0();
          v38 = v59;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v52 = 0;
          (*(v62 + 8))(v21, v38);
          (*(v69 + 8))(v23, v12);
          swift_unknownObjectRelease();
          v31 = v70;
          v29 = v71;
          v12 = v72;
          v21 = v73;
          v22 = v74;
          v69 = v75;
          v30 = v76 & 3 | 0x40;
          goto LABEL_26;
        }
      }

      else
      {
        LOBYTE(v70) = 5;
        sub_10010B5B4();
        v46 = v52;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v46)
        {
          sub_10010B608();
          v47 = v61;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v29 = 0;
          v52 = 0;
          (*(v63 + 8))(v22, v47);
          (*(v69 + 8))(v23, v12);
          swift_unknownObjectRelease();
          v31 = v70;
          v30 = 96;
          goto LABEL_26;
        }
      }
    }

    (*(v69 + 8))(v23, v12);
    goto LABEL_11;
  }

  if (!v26)
  {
    LOBYTE(v70) = 0;
    sub_10010B854();
    v39 = v52;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v39;
    if (!v39)
    {
      v52 = 0;
      (*(v53 + 8))(v18, v50);
      (*(v69 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v31 = 0;
      v12 = 0;
      v21 = 0;
      v22 = 0;
      v69 = 0u;
      v30 = 0x80;
      v32 = v64;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  if (v26 != 1)
  {
    LOBYTE(v70) = 2;
    sub_10010B7AC();
    v22 = v20;
    v42 = v52;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v42)
    {
      v43 = v55;
      v44 = KeyedDecodingContainer.decode(_:forKey:)();
      v45 = v69;
      v52 = 0;
      v31 = v44;
      v29 = v48;
      (*(v58 + 8))(v22, v43);
      (*(v45 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v30 = 0;
      v32 = v64;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  LOBYTE(v70) = 1;
  sub_10010B800();
  v27 = v51;
  v28 = v52;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v29 = v28;
  if (v28)
  {
LABEL_10:
    (*(v69 + 8))(v15, v12);
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    sub_10000903C(v81);
    return result;
  }

  v52 = 0;
  (*(v54 + 8))(v27, v56);
  (*(v69 + 8))(v15, v12);
  swift_unknownObjectRelease();
  v12 = 0;
  v21 = 0;
  v22 = 0;
  v69 = 0u;
  v30 = 0x80;
  v31 = 1;
  v32 = v64;
LABEL_26:
  sub_10000903C(v81);
  *v32 = v31;
  *(v32 + 8) = v29;
  *(v32 + 16) = v12;
  *(v32 + 24) = v21;
  *(v32 + 32) = v22;
  result = *&v69;
  *(v32 + 40) = v69;
  *(v32 + 56) = v30;
  return result;
}

unint64_t sub_10010B560()
{
  result = qword_100344D88;
  if (!qword_100344D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344D88);
  }

  return result;
}

unint64_t sub_10010B5B4()
{
  result = qword_100344D90;
  if (!qword_100344D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344D90);
  }

  return result;
}

unint64_t sub_10010B608()
{
  result = qword_100344D98;
  if (!qword_100344D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344D98);
  }

  return result;
}

unint64_t sub_10010B65C()
{
  result = qword_100344DA0;
  if (!qword_100344DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344DA0);
  }

  return result;
}

unint64_t sub_10010B6B0()
{
  result = qword_100344DA8;
  if (!qword_100344DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344DA8);
  }

  return result;
}

unint64_t sub_10010B704()
{
  result = qword_100344DB0;
  if (!qword_100344DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344DB0);
  }

  return result;
}

unint64_t sub_10010B758()
{
  result = qword_100344DB8;
  if (!qword_100344DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344DB8);
  }

  return result;
}

unint64_t sub_10010B7AC()
{
  result = qword_100344DC0;
  if (!qword_100344DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344DC0);
  }

  return result;
}

unint64_t sub_10010B800()
{
  result = qword_100344DC8;
  if (!qword_100344DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344DC8);
  }

  return result;
}

unint64_t sub_10010B854()
{
  result = qword_100344DD0;
  if (!qword_100344DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344DD0);
  }

  return result;
}

unint64_t sub_10010B8A8()
{
  result = qword_100344E10;
  if (!qword_100344E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E10);
  }

  return result;
}

unint64_t sub_10010B8FC()
{
  result = qword_100344E18;
  if (!qword_100344E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E18);
  }

  return result;
}

unint64_t sub_10010B950()
{
  result = qword_100344E20;
  if (!qword_100344E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E20);
  }

  return result;
}

unint64_t sub_10010B9A4()
{
  result = qword_100344E40;
  if (!qword_100344E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E40);
  }

  return result;
}

unint64_t sub_10010B9F8()
{
  result = qword_100344E48;
  if (!qword_100344E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E48);
  }

  return result;
}

unint64_t sub_10010BA4C()
{
  result = qword_100344E50;
  if (!qword_100344E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E50);
  }

  return result;
}

unint64_t sub_10010BAA0()
{
  result = qword_100344E58;
  if (!qword_100344E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E58);
  }

  return result;
}

unint64_t sub_10010BAF4()
{
  result = qword_100344E78;
  if (!qword_100344E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E78);
  }

  return result;
}

unint64_t sub_10010BBEC()
{
  result = qword_100344E80;
  if (!qword_100344E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E80);
  }

  return result;
}

unint64_t sub_10010BC44()
{
  result = qword_100344E88;
  if (!qword_100344E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E88);
  }

  return result;
}

unint64_t sub_10010BC9C()
{
  result = qword_100344E90;
  if (!qword_100344E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E90);
  }

  return result;
}

unint64_t sub_10010BCF4()
{
  result = qword_100344E98;
  if (!qword_100344E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E98);
  }

  return result;
}

unint64_t sub_10010BD4C()
{
  result = qword_100344EA0;
  if (!qword_100344EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EA0);
  }

  return result;
}

unint64_t sub_10010BDA4()
{
  result = qword_100344EA8;
  if (!qword_100344EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EA8);
  }

  return result;
}

unint64_t sub_10010BDFC()
{
  result = qword_100344EB0;
  if (!qword_100344EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EB0);
  }

  return result;
}

unint64_t sub_10010BE54()
{
  result = qword_100344EB8;
  if (!qword_100344EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EB8);
  }

  return result;
}

unint64_t sub_10010BEAC()
{
  result = qword_100344EC0;
  if (!qword_100344EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EC0);
  }

  return result;
}

unint64_t sub_10010BF04()
{
  result = qword_100344EC8;
  if (!qword_100344EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EC8);
  }

  return result;
}

unint64_t sub_10010BF5C()
{
  result = qword_100344ED0;
  if (!qword_100344ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344ED0);
  }

  return result;
}

unint64_t sub_10010BFB4()
{
  result = qword_100344ED8;
  if (!qword_100344ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344ED8);
  }

  return result;
}

unint64_t sub_10010C00C()
{
  result = qword_100344EE0;
  if (!qword_100344EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EE0);
  }

  return result;
}

unint64_t sub_10010C064()
{
  result = qword_100344EE8;
  if (!qword_100344EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EE8);
  }

  return result;
}

unint64_t sub_10010C0BC()
{
  result = qword_100344EF0;
  if (!qword_100344EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EF0);
  }

  return result;
}

unint64_t sub_10010C114()
{
  result = qword_100344EF8;
  if (!qword_100344EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EF8);
  }

  return result;
}

unint64_t sub_10010C16C()
{
  result = qword_100344F00;
  if (!qword_100344F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F00);
  }

  return result;
}

unint64_t sub_10010C1C4()
{
  result = qword_100344F08;
  if (!qword_100344F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F08);
  }

  return result;
}

unint64_t sub_10010C21C()
{
  result = qword_100344F10;
  if (!qword_100344F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F10);
  }

  return result;
}

unint64_t sub_10010C274()
{
  result = qword_100344F18;
  if (!qword_100344F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F18);
  }

  return result;
}

unint64_t sub_10010C2CC()
{
  result = qword_100344F20;
  if (!qword_100344F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F20);
  }

  return result;
}

unint64_t sub_10010C324()
{
  result = qword_100344F28;
  if (!qword_100344F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F28);
  }

  return result;
}

unint64_t sub_10010C37C()
{
  result = qword_100344F30;
  if (!qword_100344F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F30);
  }

  return result;
}

unint64_t sub_10010C3D4()
{
  result = qword_100344F38;
  if (!qword_100344F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F38);
  }

  return result;
}

unint64_t sub_10010C42C()
{
  result = qword_100344F40;
  if (!qword_100344F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F40);
  }

  return result;
}

unint64_t sub_10010C484()
{
  result = qword_100344F48;
  if (!qword_100344F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F48);
  }

  return result;
}

unint64_t sub_10010C4DC()
{
  result = qword_100344F50;
  if (!qword_100344F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F50);
  }

  return result;
}

id sub_10010C548()
{
  if (qword_100338F08 != -1)
  {
    swift_once();
  }

  v0 = qword_10038B0A8;
  v1 = *(qword_10038B0A8 + 56);
  sub_10005F4E4();

  v2 = v0[8];
  sub_10005F4E4();

  v3 = v0[9];
  sub_10005F4E4();

  v4 = v0[10];
  sub_10005F4E4();

  nullsub_1();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v0[11];
  sub_10005F4E4();
  v15 = v14;

  v16 = objc_allocWithZone(FluidSpring);

  return [v16 initWithParameters:v6 retargetImpuse:{v8, v10, v12, v15}];
}

id sub_10010C688()
{
  if (qword_100338F08 != -1)
  {
    swift_once();
  }

  v0 = qword_10038B0A8;
  v1 = *(qword_10038B0A8 + 96);
  sub_10005F4E4();

  v2 = v0[13];
  sub_10005F4E4();

  v3 = v0[14];
  sub_10005F4E4();

  v4 = v0[15];
  sub_10005F4E4();

  nullsub_1();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v0[16];
  sub_10005F4E4();
  v15 = v14;

  v16 = objc_allocWithZone(FluidSpring);

  return [v16 initWithParameters:v6 retargetImpuse:{v8, v10, v12, v15}];
}

uint64_t sub_10010C7C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010C7EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
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

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10010C84C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

double sub_10010C8B8(double a1)
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 1288);
  sub_1000624D4();
  v4 = v3;

  return (v4 + -1.0) * a1 + 1.0;
}

uint64_t sub_10010C944(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10010C9B8()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner____lazy_storage___hintViewControllerEventPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner____lazy_storage___hintViewControllerEventPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner____lazy_storage___hintViewControllerEventPublisher);
  }

  else
  {
    sub_100035D04(&unk_10034D890, &unk_10027C0F0);
    sub_10000E244(&unk_1003450A0, &unk_10034D890, &unk_10027C0F0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_10010CA94(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10010D0E8(v2);
  }
}

void sub_10010CAF0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView);

    v7 = &v6[OBJC_IVAR____TtC17proximitycontrold8PillView_subtitle];
    *v7 = v3;
    *(v7 + 1) = v2;

    sub_1000FC910(0);
  }
}

void sub_10010CB94(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10010D354(Strong);
  }
}

void sub_10010CBE8(char a1, char a2, uint64_t a3)
{
  if (a1 & 1) != 0 && (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v4 = Strong;
    sub_10010D85C(Strong);
  }

  else
  {
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return;
    }

    v4 = v5;
    sub_10010DA38(v5);
  }
}

uint64_t sub_10010CC98()
{

  v1 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner__isPresenting;
  v2 = sub_100035D04(&qword_100345038, &qword_10027C0E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_10010CD9C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_log, v1);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Deinit", v8, 2u);
  }

  (*(v2 + 8))(v4, v1);
  v9 = [objc_opt_self() defaultCenter];
  [v9 removeObserver:v5];

  v10 = type metadata accessor for HintViewControllerBanner(0);
  v12.receiver = v5;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t type metadata accessor for HintViewControllerBanner(uint64_t a1)
{
  result = qword_100344FC8;
  if (!qword_100344FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010D0E8(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD000000000000022, 0x80000001002A06F0, &v16);
    *(v6 + 12) = 2080;
    if (a1)
    {
      swift_unknownObjectRetain();
      sub_100035D04(&qword_10033D6D0, &unk_10027C120);
      v7 = String.init<A>(describing:)();
      v9 = v8;
    }

    else
    {
      v9 = 0xE300000000000000;
      v7 = 7104878;
    }

    v10 = sub_100017494(v7, v9, &v16);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: activity=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = sub_1000BDC5C();
  v13 = v12;

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  v15 = [objc_opt_self() composedImageWithArtworkFor:a1 assetType:v14];
  [*(*(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView) + OBJC_IVAR____TtC17proximitycontrold8PillView_leadingImageView) setImage:v15];
}

void sub_10010D354(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v58.m11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x2928706F70, 0xE500000000000000, &v58);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView);
  [v7 transform3D];
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v8 = qword_10038B0B8;
  v9 = *(qword_10038B0B8 + 872);
  sub_10005F4E4();
  v11 = v10;

  v12 = *&CATransform3DIdentity.m33;
  *&v49.m31 = *&CATransform3DIdentity.m31;
  *&v49.m33 = v12;
  v13 = *&CATransform3DIdentity.m43;
  *&v49.m41 = *&CATransform3DIdentity.m41;
  *&v49.m43 = v13;
  v14 = *&CATransform3DIdentity.m13;
  *&v49.m11 = *&CATransform3DIdentity.m11;
  *&v49.m13 = v14;
  v15 = *&CATransform3DIdentity.m23;
  *&v49.m21 = *&CATransform3DIdentity.m21;
  *&v49.m23 = v15;
  CATransform3DScale(&v58, &v49, v11, v11, 1.0);
  v16 = [objc_allocWithZone(CAKeyframeAnimation) init];
  v17 = String._bridgeToObjectiveC()();
  [v16 setKeyPath:v17];

  v18 = *(v8 + 864);
  v19 = v16;
  v20 = v18;
  sub_10005F4E4();
  v22 = v21;

  [v19 setDuration:v22];
  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10027BF70;
  sub_100003118(0, &qword_10034B560, NSNumber_ptr);
  *(v23 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v23 + 40) = NSNumber.init(floatLiteral:)(0.5);
  *(v23 + 48) = NSNumber.init(integerLiteral:)(1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 setKeyTimes:isa];

  sub_100035D04(&qword_100345098, &qword_10027C130);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1002727F0;
  type metadata accessor for CATransform3D(0);
  v27 = v26;
  *(v25 + 56) = v26;
  v28 = swift_allocObject();
  *(v25 + 32) = v28;
  v29 = v55;
  v28[5] = v54;
  v28[6] = v29;
  v30 = v57;
  v28[7] = v56;
  v28[8] = v30;
  v31 = v51;
  v28[1] = v50;
  v28[2] = v31;
  v32 = v53;
  v28[3] = v52;
  v28[4] = v32;
  *(v25 + 88) = v27;
  v33 = swift_allocObject();
  *(v25 + 64) = v33;
  v34 = *&v58.m33;
  v33[5] = *&v58.m31;
  v33[6] = v34;
  v35 = *&v58.m43;
  v33[7] = *&v58.m41;
  v33[8] = v35;
  v36 = *&v58.m13;
  v33[1] = *&v58.m11;
  v33[2] = v36;
  v37 = *&v58.m23;
  v33[3] = *&v58.m21;
  v33[4] = v37;
  *(v25 + 120) = v27;
  v38 = swift_allocObject();
  *(v25 + 96) = v38;
  v39 = v55;
  v38[5] = v54;
  v38[6] = v39;
  v40 = v57;
  v38[7] = v56;
  v38[8] = v40;
  v41 = v51;
  v38[1] = v50;
  v38[2] = v41;
  v42 = v53;
  v38[3] = v52;
  v38[4] = v42;
  v43 = Array._bridgeToObjectiveC()().super.isa;

  [v19 setValues:v43];

  [v19 setRemovedOnCompletion:1];
  [v19 setAdditive:0];

  v44 = *(v8 + 880);
  v45 = sub_100061B10();

  if (v45)
  {
    v46 = [objc_opt_self() functionWithName:v45];
  }

  else
  {
    v46 = 0;
  }

  [v19 setTimingFunction:v46];

  v47 = [v7 layer];
  v48 = String._bridgeToObjectiveC()();
  [v47 addAnimation:v19 forKey:v48];
}

void sub_10010D85C(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD00000000000001ALL, 0x80000001002A06D0, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_displayLink;
  if (!*(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_displayLink))
  {
    v8 = [objc_opt_self() displayLinkWithTarget:v2 selector:"update"];
    v9 = [objc_opt_self() mainRunLoop];
    [v8 addToRunLoop:v9 forMode:NSRunLoopCommonModes];

    [v8 setPaused:0];
    v10 = *(v2 + v7);
    *(v2 + v7) = v8;
  }
}

void sub_10010DA38(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD000000000000019, 0x80000001002A06B0, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_displayLink;
  v8 = *(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_displayLink);
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 mainRunLoop];
    [v10 removeFromRunLoop:v11 forMode:NSRunLoopCommonModes];

    v12 = *(v2 + v7);
  }

  else
  {
    v12 = 0;
  }

  *(v2 + v7) = 0;
}

id sub_10010DBD0(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v11[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x2928657461647075, 0xE800000000000000, v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView);
  sub_100091EB8();
  sub_10010DEF8(v11, v8);
  v10[0] = v11[0];
  v10[1] = v11[1];
  v10[2] = v11[2];
  return [v7 setTransform:v10];
}

double sub_10010DD74(uint64_t a1)
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0x707061546C6C6970, 0xEC00000029286465, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  PassthroughSubject.send(_:)();

  return result;
}

CGFloat sub_10010DEF8@<D0>(_OWORD *a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v16.a = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0xD000000000000013, 0x80000001002A0690, &v16);
    *(v9 + 12) = 2048;
    *(v9 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: progress=%f", v9, 0x16u);
    sub_10000903C(v10);
  }

  [*(v4 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_scalingSpring) step:CACurrentMediaTime() progress:a3];
  v12 = sub_10010C8B8(v11);
  CGAffineTransformMakeScale(&v16, v12, v12);
  result = v16.a;
  v14 = *&v16.c;
  v15 = *&v16.tx;
  *a2 = *&v16.a;
  a2[1] = v14;
  a2[2] = v15;
  return result;
}

void sub_10010E060(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x4C64694477656976, 0xED0000292864616FLL, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = type metadata accessor for HintViewControllerBanner(0);
  v11.receiver = v2;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v8 = [v2 view];
  if (v8)
  {
    v9 = v8;
    [v8 addSubview:*&v2[OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView]];
  }

  else
  {
    __break(1u);
  }
}

void sub_10010E3A4(uint64_t a1)
{
  sub_10010E478();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10010E478()
{
  if (!qword_10034C3C0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10034C3C0);
    }
  }
}

unint64_t sub_10010E4DC()
{
  result = qword_100344FD8;
  if (!qword_100344FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344FD8);
  }

  return result;
}

double sub_10010E530()
{
  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView);
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v10 = *(qword_10038B0B8 + 872);
  sub_10005F4E4();
  v12 = v11;

  v16.origin.x = v3;
  v16.origin.y = v5;
  v16.size.width = v7;
  v16.size.height = v9;
  CGRectGetWidth(v16);
  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  v13 = (v12 + -1.0) * CGRectGetHeight(v17) * 0.5;
  [v1 shadowOutsets];
  return v13 + v12 * v14;
}

void sub_10010E65C(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a3 = v4;
}

uint64_t sub_10010E6DC(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

char *sub_10010E74C(uint64_t a1)
{
  v2 = v1;
  v152 = sub_100035D04(&qword_100344FE0, &qword_10027C080);
  __chkstk_darwin(v152);
  v151[2] = v151 - v4;
  v155 = sub_100035D04(&qword_100344FE8, &qword_10027C088);
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = v151 - v5;
  v158 = sub_100035D04(&qword_100344FF0, &qword_10027C090);
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v156 = v151 - v6;
  v184 = sub_100035D04(&qword_100344FF8, &qword_10027C098);
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v182 = v151 - v7;
  v181 = sub_100035D04(&qword_100345000, &qword_10027C0A0);
  v180 = *(v181 - 8);
  __chkstk_darwin(v181);
  v178 = v151 - v8;
  v179 = sub_100035D04(&qword_100345008, &unk_10027C0A8);
  v177 = *(v179 - 8);
  __chkstk_darwin(v179);
  v176 = v151 - v9;
  v171 = sub_100035D04(&qword_100345010, &qword_10027C0B8);
  v175 = *(v171 - 8);
  __chkstk_darwin(v171);
  v174 = v151 - v10;
  v163 = type metadata accessor for NSNotificationCenter.Publisher();
  v167 = *(v163 - 8);
  __chkstk_darwin(v163);
  v165 = v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_100035D04(&qword_100345018, &qword_10027C0C0);
  v168 = *(v169 - 8);
  __chkstk_darwin(v169);
  v166 = v151 - v12;
  v173 = sub_100035D04(&qword_100345020, &qword_10027C0C8);
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v170 = v151 - v13;
  v196 = sub_100035D04(&qword_100345028, &unk_10027C0D0);
  v189 = *(v196 - 8);
  __chkstk_darwin(v196);
  v164 = v151 - v14;
  v15 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v15 - 8);
  v210 = v151 - v16;
  v17 = sub_100035D04(&qword_10033D6B0, &unk_100274510);
  v208 = *(v17 - 8);
  v209 = v17;
  __chkstk_darwin(v17);
  v207 = v151 - v18;
  v206 = sub_100035D04(&qword_10034D8F0, &unk_100273380);
  v200 = *(v206 - 8);
  __chkstk_darwin(v206);
  v192 = v151 - v19;
  v162 = sub_100035D04(&qword_100345030, &qword_10027C0E0);
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v160 = v151 - v20;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v205 = v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v194 = v151 - v26;
  v191 = v27;
  __chkstk_darwin(v25);
  v29 = v151 - v28;
  v30 = type metadata accessor for ActivityDisplayContext(0);
  __chkstk_darwin(v30 - 8);
  v32 = (v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_100035D04(&qword_100345038, &qword_10027C0E8);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = v151 - v35;
  v37 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tapPill;
  *(v2 + v37) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v38 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_scalingSpring;
  *(v2 + v38) = sub_10010C548();
  v39 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_yTranslationSpring;
  *(v2 + v39) = sub_10010C688();
  *(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_displayLink) = 0;
  v40 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner__isPresenting;
  LOBYTE(v212) = 0;
  Published.init(initialValue:)();
  v41 = *(v34 + 32);
  v151[1] = v33;
  v41(v2 + v40, v36, v33);
  v42 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_hintViewControllerEventSubject;
  sub_100035D04(&unk_10034D890, &unk_10027C0F0);
  swift_allocObject();
  *(v2 + v42) = PassthroughSubject.init()();
  *(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner____lazy_storage___hintViewControllerEventPublisher) = 0;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tasks) = &_swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_viewModel) = a1;
  v43 = *(*(a1 + 16) + 24);

  v44 = sub_1001F00B0();
  sub_100249BE4(v43, v44, v32);
  swift_unknownObjectRelease();
  v45 = v32[3];
  v46 = v32[4];

  sub_1001107D0(v32);
  v47 = objc_allocWithZone(type metadata accessor for PillView());
  *(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView) = sub_1000FC528(v45, v46);
  v48 = UUID.uuidString.getter();
  v50 = sub_1000CB104(v48, v49);
  v211 = v22;
  v51 = *(v22 + 16);
  v202 = &v50[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_log];
  v203 = v51;
  v195 = v21;
  v204 = v22 + 16;
  (v51)(v29);
  v52 = v50;

  v198 = v52;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  v197 = a1;

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    *v55 = 136315394;
    *(v55 + 4) = sub_100017494(0xD000000000000010, 0x80000001002A0670, &v214);
    *(v55 + 12) = 2080;
    v212 = 60;
    v213 = 0xE100000000000000;
    LODWORD(v201) = v54;
    v56 = UUID.uuidString.getter();
    sub_10000B584(8, v56, v57);

    v58 = static String._fromSubstring(_:)();
    v60 = v59;

    v61._countAndFlagsBits = v58;
    v61._object = v60;
    String.append(_:)(v61);

    v62._countAndFlagsBits = 32;
    v62._object = 0xE100000000000000;
    String.append(_:)(v62);
    v65._countAndFlagsBits = sub_1000092A0(v63, v64);
    String.append(_:)(v65);

    v66._countAndFlagsBits = 62;
    v66._object = 0xE100000000000000;
    String.append(_:)(v66);
    v67 = sub_100017494(v212, v213, &v214);

    *(v55 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v53, v201, "%s: viewModel=%s", v55, 0x16u);
    swift_arrayDestroy();
  }

  v68 = *(v211 + 8);
  v201 = (v211 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v68(v29, v195);
  v69 = sub_1001F00B0();
  sub_10010D0E8(v69);
  swift_unknownObjectRelease();
  v212 = sub_1001EF664();
  sub_100035D04(&unk_10034D910, &unk_100273390);
  v188 = sub_100035D04(&qword_10034B4F0, &unk_10027C100);
  v193 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&unk_10034D920, &unk_10034D910, &unk_100273390, &protocol conformance descriptor for AnyPublisher<A, B>);
  v70 = v192;
  Publisher.map<A>(_:)();

  v199 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033D6B8, &qword_10034D8F0, &unk_100273380, &protocol conformance descriptor for Publishers.Map<A, B>);
  v72 = v206;
  v71 = v207;
  Publisher.removeDuplicates(by:)();
  sub_10000E244(&unk_10034D930, &qword_10033D6B0, &unk_100274510, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v73 = v209;
  v74 = Publisher.eraseToAnyPublisher()();
  (*(v208 + 8))(v71, v73);
  v200[1](v70, v72);
  v212 = v74;
  v185 = sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v75 = static OS_dispatch_queue.main.getter();
  v214 = v75;
  v206 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v76 = *(v206 - 8);
  v207 = *(v76 + 56);
  v209 = v76 + 56;
  v77 = v210;
  (v207)(v210, 1, 1, v206);
  v187 = sub_100035D04(&qword_10033D6C8, &unk_1002733A0);
  v78 = sub_10000E244(&unk_10034D940, &qword_10033D6C8, &unk_1002733A0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v208 = sub_1000513CC();
  v79 = v160;
  v159 = v78;
  Publisher.receive<A>(on:options:)();
  sub_100056CC4(v77);

  v80 = v194;
  v81 = v203;
  v82 = v195;
  v203(v194, v202, v195);
  v83 = v81;
  LOBYTE(v81) = static os_log_type_t.info.getter();
  v84 = v205;
  v83(v205, v80, v82);
  v192 = *(v211 + 80);
  v85 = v211;
  v86 = (v192 + 64) & ~v192;
  v190 = v86;
  v87 = &v191[v86];
  v186 = &v191[v86];
  v88 = swift_allocObject();
  *(v88 + 16) = sub_100110CA0;
  *(v88 + 24) = xmmword_10027BF80;
  *(v88 + 40) = 0xEE00203A79746976;
  *(v88 + 48) = 0;
  *(v88 + 56) = 0xE000000000000000;
  v191 = *(v85 + 32);
  (v191)(v88 + v86, v84, v82);
  v89 = v85 + 32;
  v211 = v85 + 32;
  v87[v88] = v81;
  v200 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000E244(&qword_10034D980, &qword_100345030, &qword_10027C0E0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v90 = v164;
  v91 = v162;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100345040, &qword_100345028, &unk_10027C0D0, v199);
  v92 = v196;
  v93 = Publisher.eraseToAnyPublisher()();
  (*(v189 + 8))(v90, v92);
  v189 = *(v89 - 24);
  (v189)(v80, v82);
  (*(v161 + 8))(v79, v91);
  v212 = v93;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  v196 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tasks;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v94 = [objc_opt_self() defaultCenter];
  v95 = kPCAssetManagerNotificationNameQueryDidComplete;
  v96 = v165;
  NSNotificationCenter.publisher(for:object:)();

  v97 = static OS_dispatch_queue.main.getter();
  v212 = v97;
  v98 = v210;
  (v207)(v210, 1, 1, v206);
  sub_100110860();
  v99 = v166;
  v100 = v163;
  Publisher.receive<A>(on:options:)();
  sub_100056CC4(v98);

  (*(v167 + 8))(v96, v100);
  sub_10000E244(&qword_100345050, &qword_100345018, &qword_10027C0C0, v200);

  v101 = v170;
  v102 = v169;
  Publisher.map<A>(_:)();

  (*(v168 + 8))(v99, v102);
  v103 = v203;
  v203(v80, v202, v82);
  LOBYTE(v94) = static os_log_type_t.info.getter();
  v104 = v205;
  v103(v205, v80, v82);
  v105 = v186;
  v106 = swift_allocObject();
  *(v106 + 16) = sub_100110CA0;
  *(v106 + 24) = xmmword_10027BF90;
  *(v106 + 40) = 0x80000001002A0640;
  *(v106 + 48) = 0;
  *(v106 + 56) = 0xE000000000000000;
  (v191)(v106 + v190, v104, v82);
  v105[v106] = v94;
  v107 = v199;
  sub_10000E244(&qword_100345058, &qword_100345020, &qword_10027C0C8, v199);
  v108 = v174;
  v109 = v173;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100345060, &qword_100345010, &qword_10027C0B8, v107);
  v110 = v171;
  v111 = Publisher.eraseToAnyPublisher()();
  (*(v175 + 8))(v108, v110);
  (v189)(v80, v82);
  (*(v172 + 8))(v101, v109);
  v212 = v111;
  swift_allocObject();
  v112 = v198;
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  v113 = v112;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v212 = sub_1001E48DC();
  v114 = static OS_dispatch_queue.main.getter();
  v214 = v114;
  v115 = v210;
  (v207)(v210, 1, 1, v206);
  v188 = sub_100035D04(&qword_100345068, &unk_10027C110);
  v187 = sub_10000E244(&unk_10034C7A0, &qword_100345068, &unk_10027C110, v193);
  v116 = v176;
  Publisher.receive<A>(on:options:)();
  sub_100056CC4(v115);

  v117 = v194;
  v118 = v203;
  v203(v194, v202, v82);

  LOBYTE(v94) = static os_log_type_t.info.getter();
  v119 = v205;
  v118(v205, v117, v82);
  v120 = v186;
  v121 = swift_allocObject();
  *(v121 + 16) = 0;
  *(v121 + 24) = 0;
  strcpy((v121 + 32), "New subtitle: ");
  *(v121 + 47) = -18;
  *(v121 + 48) = 0;
  *(v121 + 56) = 0xE000000000000000;
  (v191)(v121 + v190, v119, v82);
  v120[v121] = v94;
  sub_10000E244(&qword_100345070, &qword_100345008, &unk_10027C0A8, v200);
  v122 = v178;
  v123 = v179;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100345078, &qword_100345000, &qword_10027C0A0, v199);
  v124 = v181;
  v125 = Publisher.eraseToAnyPublisher()();
  (*(v180 + 8))(v122, v124);
  v126 = v82;
  v127 = v113;
  (v189)(v117, v126);
  (*(v177 + 8))(v116, v123);
  v212 = v125;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v212 = *(v197 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel_popSubject);
  sub_100035D04(&qword_10034C750, &unk_100287670);
  sub_10000E244(&unk_10034A3E0, &qword_10034C750, &unk_100287670, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v212 = Publisher.eraseToAnyPublisher()();
  v128 = static OS_dispatch_queue.main.getter();
  v214 = v128;
  v129 = v210;
  (v207)(v210, 1, 1, v206);
  sub_100035D04(&qword_10033D630, &unk_100274960);
  sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960, v193);
  v130 = v182;
  Publisher.receive<A>(on:options:)();
  sub_100056CC4(v129);

  v131 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v132 = swift_allocObject();
  *(v132 + 16) = sub_100110A88;
  *(v132 + 24) = v131;
  sub_10000E244(&qword_100345080, &qword_100344FF8, &qword_10027C098, v200);
  v133 = v184;
  Publisher<>.sink(receiveValue:)();

  (*(v183 + 8))(v130, v133);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v134 = *(qword_10038B0B8 + 856);
  v135 = sub_1000031CC();

  if (v135)
  {
    v214 = sub_1001E4740();
    swift_beginAccess();
    Published.projectedValue.getter();
    swift_endAccess();
    sub_100035D04(&unk_1003436E0, &unk_100276210);
    sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_10000E244(&qword_10034C7B0, &qword_100344FE0, &qword_10027C080, &protocol conformance descriptor for Published<A>.Publisher);
    v136 = v153;
    Publishers.CombineLatest.init(_:_:)();
    v137 = static OS_dispatch_queue.main.getter();
    v212 = v137;
    v138 = v210;
    (v207)(v210, 1, 1, v206);
    sub_10000E244(&qword_100345088, &qword_100344FE8, &qword_10027C088, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
    v139 = v156;
    v140 = v155;
    Publisher.receive<A>(on:options:)();
    sub_100056CC4(v138);

    (*(v154 + 8))(v136, v140);
    v141 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v142 = swift_allocObject();
    *(v142 + 16) = sub_100110A90;
    *(v142 + 24) = v141;
    sub_10000E244(&qword_100345090, &qword_100344FF0, &qword_10027C090, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v143 = v158;
    Publisher<>.sink(receiveValue:)();

    (*(v157 + 8))(v139, v143);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v144 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView;
  [*&v127[OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView] setFrame:{0.0, 0.0, 250.0, 50.0}];
  v145 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tapPill;
  v146 = *&v127[OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tapPill];
  v147 = v127;
  [v146 addTarget:v147 action:"pillTapped"];
  [*&v127[v144] addGestureRecognizer:*&v127[v145]];
  [*&v127[v144] frame];
  [v147 setPreferredContentSize:{v148, v149}];

  return v147;
}

uint64_t sub_1001107D0(uint64_t a1)
{
  v2 = type metadata accessor for ActivityDisplayContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100110860()
{
  result = qword_100345048;
  if (!qword_100345048)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100345048);
  }

  return result;
}

void *sub_1001108B8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1001F00B0();
  *a2 = result;
  return result;
}

uint64_t sub_1001108F8@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Logger();
  *a3 = a2(*a1, v3[2], v3[3], v3[4], v3[5], v3[6], v3[7]);

  return swift_unknownObjectRetain();
}

uint64_t sub_1001109BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  *a2 = sub_1001CDCBC(*a1, a1[1], *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64)));
  a2[1] = v6;
}

void sub_100110ACC()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_100345038, &qword_10027C0E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-v4];
  v6 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tapPill;
  *(v1 + v6) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v7 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_scalingSpring;
  *(v1 + v7) = sub_10010C548();
  v8 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_yTranslationSpring;
  *(v1 + v8) = sub_10010C688();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_displayLink) = 0;
  v9 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner__isPresenting;
  v11[15] = 0;
  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v9, v5, v2);
  v10 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_hintViewControllerEventSubject;
  sub_100035D04(&unk_10034D890, &unk_10027C0F0);
  swift_allocObject();
  *(v1 + v10) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner____lazy_storage___hintViewControllerEventPublisher) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tasks) = &_swiftEmptySetSingleton;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100110CA8(double a1)
{
  v2 = [objc_allocWithZone(NSNumberFormatter) init];
  [v2 setMaximumFractionDigits:3];
  if (a1 >= 0.001)
  {
    v4 = [objc_allocWithZone(NSNumber) initWithDouble:a1];
    v5 = [v2 stringFromNumber:v4];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = v6;
      v7._countAndFlagsBits = 115;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
    }

    else
    {
      v8 = 0;
      Double.write<A>(to:)();
    }

    return v8;
  }

  else
  {

    return 0x736D31203CLL;
  }
}

void *sub_100110DD4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject accessories];
      sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v32 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_10000E244(&qword_1003452C0, &qword_1003452B8, &qword_10027C220, &protocol conformance descriptor for [A]);
            for (i = 0; i != v16; ++i)
            {
              sub_100035D04(&qword_1003452B8, &qword_10027C220);
              v19 = sub_100128B4C(v31, i, v8);
              v21 = *v20;
              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v32;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v30;
      if (v30 == v1)
      {
        return v3;
      }
    }

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
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100111168()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003450B0);
  sub_100003078(v0, qword_1003450B0);
  return Logger.init(subsystem:category:)();
}

id sub_10011120C()
{
  v1 = v0;
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003450B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_100111954();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HomeKitProxy();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1001113B8()
{
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_1003450B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activate", v3, 2u);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  swift_allocObject();
  return Future.init(_:)();
}

double sub_1001114FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_dispatchQueue);
    v23 = v10;
    v17 = Strong;

    v22 = v16;

    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = sub_1000FBAA8;
    v18[4] = v14;
    aBlock[4] = sub_100114424;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_100309288;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_10007E5B8();
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v23);
  }

  else
  {
  }

  return result;
}

void sub_100111828(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_100113BCC();
    [v7 setDelegate:v6];
    v8 = *&v6[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager];
    *&v6[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager] = v7;
    v9 = v7;

    v10 = &v6[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise];
    v11 = *&v6[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise];
    v12 = *&v6[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise + 8];
    *v10 = a2;
    v10[1] = a3;

    sub_10002689C(v11, v12);
    sub_100111C24();
    sub_100112228();
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v13 = 0x666C6573206C696ELL;
    *(v13 + 8) = 0xE800000000000000;
    *(v13 + 16) = 9;
    a2();
  }
}

double sub_100111954()
{
  v1 = v0;
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003450B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidate", v5, 2u);
  }

  *(*(*(v1 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_state) + 24) + 24) = 0;

  sub_10005E50C();
  CurrentValueSubject.send(_:)();

  v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager);
  *(v1 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager) = 0;

  sub_1001AC448();

  return result;
}

void sub_100111AAC()
{
  v1 = v0;
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003450B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Activated", v5, 2u);
  }

  *(*(*(v1 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_state) + 24) + 24) = 1;

  sub_10005E50C();
  CurrentValueSubject.send(_:)();

  v6 = (v1 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise);
  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise);
  if (v7)
  {
    v8 = v6[1];

    v7(0, 0);
    sub_10002689C(v7, v8);
    v9 = *v6;
    v10 = v6[1];
    *v6 = 0;
    v6[1] = 0;
    sub_10002689C(v9, v10);
  }
}

double sub_100111C24()
{
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DispatchTime();
  v23 = v10;
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  v24 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_dispatchQueue);
  static DispatchTime.now()();
  *v9 = 1;
  (*(v7 + 104))(v9, enum case for DispatchTimeInterval.seconds(_:), v6);
  + infix(_:_:)();
  (*(v7 + 8))(v9, v6);
  v22 = *(v11 + 8);
  v22(v14, v10);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100114414;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100309210;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  v19 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v24;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v28 + 8))(v2, v19);
  (*(v26 + 8))(v5, v27);
  v22(v16, v23);

  return result;
}

void sub_100112090(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise);
    v3 = *(Strong + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise + 8);
    v4 = Strong;
    sub_10009D4E0(v2, v3);

    if (v2)
    {
      if (qword_100339000 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100003078(v5, qword_1003450B0);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
      }

      v2(0, 0);
      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      sub_10002689C(v2, v3);
      if (v9)
      {
        v10 = &v9[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise];
        v11 = *&v9[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise];
        v12 = *&v9[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise + 8];
        *v10 = 0;
        *(v10 + 1) = 0;
        sub_10002689C(v11, v12);
      }
    }
  }
}

double sub_100112228()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_1003452C8, &qword_10027C228);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  __chkstk_darwin(v5);
  v8 = v32 - v7;
  v45 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_state);
  v46 = v0;
  v49 = *(*(v45 + 16) + 32);
  v9 = sub_100035D04(&qword_1003452D0, &qword_10027C230);
  v43 = sub_10000E244(&qword_1003452D8, &qword_1003452D0, &qword_10027C230, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v44 = v9;
  v10 = Publisher.eraseToAnyPublisher()();
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v11 = sub_100003078(v1, qword_1003450B0);
  v42 = v11;
  v12 = static os_log_type_t.info.getter();
  v49 = v10;
  v41 = *(v2 + 16);
  v36 = v1;
  v41(v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v1);
  v13 = *(v2 + 80);
  v14 = (v13 + 64) & ~v13;
  v39 = v14;
  v40 = v13;
  v33 = v10;
  v15 = v14 + v3;
  v37 = v14 + v3;
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = 0x20444E554F46;
  *(v16 + 5) = 0xE600000000000000;
  *(v16 + 6) = 0;
  *(v16 + 7) = 0xE000000000000000;
  v38 = *(v2 + 32);
  v38(&v16[v14], v4, v1);
  v16[v15] = v12;
  v17 = sub_100035D04(&qword_1003452E0, &qword_10027C238);
  v35 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
  v18 = sub_10000E244(&qword_1003452E8, &qword_1003452E0, &qword_10027C238, &protocol conformance descriptor for AnyPublisher<A, B>);
  v32[0] = v17;
  v32[1] = v18;
  Publisher.map<A>(_:)();

  v34 = sub_10000E244(&unk_1003452F0, &qword_1003452C8, &qword_10027C228, &protocol conformance descriptor for Publishers.Map<A, B>);
  v19 = v47;
  v20 = v4;
  v21 = v8;
  v22 = Publisher.eraseToAnyPublisher()();

  v23 = *(v48 + 8);
  v48 += 8;
  v33 = v23;
  v23(v21, v19);
  v49 = v22;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v49 = *(*(v45 + 16) + 48);
  v24 = Publisher.eraseToAnyPublisher()();
  v25 = static os_log_type_t.info.getter();
  v49 = v24;
  v26 = v36;
  v41(v20, v42, v36);
  v27 = v37;
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = 0x2054534F4CLL;
  *(v28 + 5) = 0xE500000000000000;
  *(v28 + 6) = 0;
  *(v28 + 7) = 0xE000000000000000;
  v38(&v28[v39], v20, v26);
  v28[v27] = v25;
  Publisher.map<A>(_:)();

  v29 = v47;
  v30 = Publisher.eraseToAnyPublisher()();

  v33(v21, v29);
  v49 = v30;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return result;
}

void *sub_100112844()
{
  result = *(v0 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager);
  if (result)
  {
    v2 = v0;
    v3 = [result homes];
    sub_100003118(0, &qword_1003452A8, HMHome_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_100110DD4(v4);
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v29 = v4;
      v30 = v2;
      v8 = 0;
      v4 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v2 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v11 = [v9 category];
        v12 = [v11 categoryType];

        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
        {
        }

        else
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v18 & 1) == 0)
          {

            goto LABEL_7;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_7:
        ++v8;
        if (v2 == i)
        {
          v4 = v29;
          v2 = v30;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    if (qword_100339000 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003078(v19, qword_1003450B0);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134218240;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = _swiftEmptyArrayStorage[2];
      }

      *(v22 + 4) = v23;

      *(v22 + 12) = 2048;
      if (v4 >> 62)
      {
        v24 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 14) = v24;

      _os_log_impl(&_mh_execute_header, v20, v21, "Updating accessories. Found %ld homepods in %ld homes.", v22, 0x16u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v25 = *(*(v2 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_state) + 16) + qword_100346AF8;

    os_unfair_lock_lock(v25);
    v26 = *(v25 + 8);

    v28 = sub_1001C2ADC(v27, _swiftEmptyArrayStorage);

    *(v25 + 8) = v28;

    os_unfair_lock_unlock(v25);

    sub_1001C33A0(v26, v28);
  }

  return result;
}

void *sub_100112CA4()
{
  v1 = v0;
  if (qword_100339000 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_1003450B0);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v1 = &qword_100345000;
    v28 = v3;
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      v7 = *(v3 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager);
      if (v7)
      {
        v8 = [v7 homes];
        sub_100003118(0, &qword_1003452A8, HMHome_ptr);
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v10 = v9 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

        v3 = v28;
      }

      else
      {
        v10 = 0;
      }

      *(v6 + 4) = v10;

      _os_log_impl(&_mh_execute_header, v4, v5, "Updating homes (%ld)", v6, 0xCu);
    }

    else
    {

      v4 = v3;
    }

    v11 = *(v3 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager);
    if (!v11)
    {
      return sub_100112844();
    }

    v12 = [v11 homes];
    sub_100003118(0, &qword_1003452A8, HMHome_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (!v14)
      {
LABEL_26:

        return sub_100112844();
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    v15 = 0;
    v16 = v13 & 0xC000000000000001;
    v29 = v13 & 0xFFFFFFFFFFFFFF8;
    while (v16)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v1 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_22;
      }

LABEL_18:
      v18 = v17;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = v13;
        v22 = v16;
        v23 = v14;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v18;
        *v25 = v18;
        v26 = v18;
        _os_log_impl(&_mh_execute_header, v19, v20, "Adding self as delegate of %@", v24, 0xCu);
        sub_1000030B0(v25);
        v3 = v28;

        v14 = v23;
        v16 = v22;
        v13 = v21;
      }

      [v18 setDelegate:v3];
      ++v15;
      if (v1 == v14)
      {
        goto LABEL_26;
      }
    }

    if (v15 >= *(v29 + 16))
    {
      goto LABEL_23;
    }

    v17 = *(v13 + 8 * v15 + 32);
    v1 = (v15 + 1);
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }
}

double sub_100113134(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v12 = *(v24 - 8);
  __chkstk_darwin(v24);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v5[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_dispatchQueue];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v5;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = v23;
  v17 = _Block_copy(aBlock);
  v18 = v15;
  v19 = a1;
  v20 = a2;
  v21 = v5;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v25 + 8))(v11, v9);
  (*(v12 + 8))(v14, v24);

  return result;
}

void *sub_100113578(void *a1, void *a2, uint64_t a3, const char *a4)
{
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_1003450B0);
  v8 = a1;
  v9 = a2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    v15 = [v8 name];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = a4;
    v19 = v18;

    v20 = sub_100017494(v16, v19, &v23);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, v17, v12, 0x16u);
    sub_1000030B0(v13);

    sub_10000903C(v14);
  }

  return sub_100112844();
}

void sub_100113808()
{
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_1003450B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "homeManagerDidUpdateHomes(_:)", v3, 2u);
  }

  sub_100112CA4();
  sub_100111AAC();
}

void *sub_1001139EC(void *a1, uint64_t a2, const char *a3)
{
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_1003450B0);
  v6 = a1;
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
    _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 0xCu);
    sub_1000030B0(v10);
  }

  return sub_100112CA4();
}

id sub_100113BCC()
{
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_1003450B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Creating HMHomeManager", v3, 2u);
  }

  v4 = objc_allocWithZone(HMHomeManager);

  return [v4 initWithOptions:64];
}

double sub_100113CCC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v4 = *(v14 - 8);
  __chkstk_darwin(v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_dispatchQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100114264;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100309030;
  v9 = _Block_copy(aBlock);
  v10 = v7;
  v11 = v0;
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v15 + 8))(v3, v1);
  (*(v4 + 8))(v6, v14);

  return result;
}

double sub_100113F78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v11 = *(v22 - 8);
  __chkstk_darwin(v22);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v4[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_dispatchQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);
  v17 = v14;
  v18 = a1;
  v19 = v4;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v23 + 8))(v10, v8);
  (*(v11 + 8))(v13, v22);

  return result;
}

uint64_t sub_1001142E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_100114358@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = sub_1001CE164(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = v7;

  return v7;
}

uint64_t sub_100114484(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && *(a1 + 17))
  {
    return (*a1 + 31);
  }

  v3 = ((*(a1 + 16) >> 2) & 0x1E | (*(a1 + 16) >> 7)) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001144D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 16) = 0;
    *result = a2 - 31;
    *(result + 8) = 0;
    if (a3 >= 0x1F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_10011453C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    v9 = 0x286C6C657764;
    v4 = sub_10015F01C(a1, a2, a3 & 0x7F);
  }

  else
  {
    v9 = 0x2863697373616C63;
    v3 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = 0x7373696D736964;
      }

      else
      {
        v4 = 7368560;
      }

      if (v3 == 1)
      {
        v5 = 0xE700000000000000;
      }

      else
      {
        v5 = 0xE300000000000000;
      }
    }

    else
    {
      v5 = 0xE700000000000000;
      v4 = 0x746E6573657270;
    }

    v6 = v5;
  }

  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v9;
}

uint64_t sub_10011463C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 < 0)
  {
    v4 = sub_10003A898(v1, v2, v3 & 0x7F);
    v6 = 0x2E6C6C657744;
  }

  else
  {
    v4 = sub_10003A898(v1, v2, v3);
    v6 = 0x2E63697373616C43;
  }

  v8 = v6;
  String.append(_:)(*&v4);

  return v8;
}

BOOL sub_1001146FC(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 0x80) != 0)
  {
    if ((a6 & 0x80) == 0)
    {
      return 0;
    }

    v7 = a6 & 0x7F;
    v8 = a3 & 0x7F;
    if (v8 <= 1)
    {
      if ((a3 & 0x7F) != 0)
      {
        return v7 == 1;
      }

      else
      {
        return (a6 & 0x7F) == 0;
      }
    }

    else if (v8 == 2)
    {
      return v7 == 2;
    }

    else
    {
      if (v8 == 3)
      {
        return v7 == 3;
      }

      if (a1 <= 1)
      {
        if (a1 | a2)
        {
          return v7 == 4 && a4 == 1 && !a5;
        }

        else
        {
          return v7 == 4 && !(a5 | a4);
        }
      }

      else if (a1 ^ 2 | a2)
      {
        if (a1 ^ 3 | a2)
        {
          return v7 == 4 && a4 == 4 && !a5;
        }

        else
        {
          return v7 == 4 && a4 == 3 && !a5;
        }
      }

      else
      {
        return v7 == 4 && a4 == 2 && !a5;
      }
    }
  }

  else
  {
    if (a6 < 0)
    {
      return 0;
    }

    if (a3 <= 1u)
    {
      if (!a3)
      {
        return !a6;
      }

      return a6 == 1;
    }

    else
    {
      if (a3 == 2)
      {
        return a6 == 2;
      }

      if (a3 == 3)
      {
        return a6 == 3;
      }

      if (a1 <= 1)
      {
        if (a1 | a2)
        {
          return a6 == 4 && a4 == 1 && !a5;
        }

        else
        {
          return a6 == 4 && !(a5 | a4);
        }
      }

      else if (a1 ^ 2 | a2)
      {
        if (!(a1 ^ 3 | a2))
        {
          return a6 == 4 && a4 == 3 && !a5;
        }

        return a6 == 4 && a4 == 4 && !a5;
      }

      else
      {
        return a6 == 4 && a4 == 2 && !a5;
      }
    }
  }
}

BOOL sub_100114930(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 < 0)
  {
    if (a6 < 0)
    {
      v7 = a6 & 0x7F;
      v8 = a3 & 0x7F;
      if (v8 <= 1)
      {
        if ((a3 & 0x7F) != 0)
        {
          if (v7 == 1 && ((a4 ^ a1) & 1) == 0)
          {
            return 1;
          }
        }

        else if ((a6 & 0x7F) == 0 && *&a1 == *&a4)
        {
          return 1;
        }
      }

      else if (v8 == 2)
      {
        if (v7 == 2)
        {
          if (a2)
          {
            if (a5)
            {
              if (a1 == a4 && a2 == a5)
              {
                return 1;
              }

              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                return 1;
              }
            }
          }

          else if (!a5)
          {
            return 1;
          }
        }
      }

      else if (v8 == 3)
      {
        if (v7 == 3 && ((a4 ^ a1) & 1) == 0)
        {
          return 1;
        }
      }

      else if (v7 == 4 && !(a5 | a4))
      {
        return 1;
      }
    }

    return 0;
  }

  return (a6 & 0x80) == 0 && a4 == a1;
}

uint64_t sub_100114A64(uint64_t a1)
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

uint64_t sub_100114B60()
{
  v1 = *(*v0 + 80);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(*v0);
  v5 = v14 - v4;
  v14[0] = v3;
  swift_getMetatypeMetadata();
  v6 = String.init<A>(describing:)();
  v8 = v7;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  v9._countAndFlagsBits = 60;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  (*(*(*(*v0 + 80) - 8) + 16))(v5, &v0[*(*v0 + 96)]);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v2 + 8))(v5, v1);
  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return v14[0];
}

char *sub_100114D2C()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t sub_100114DDC(uint64_t a1)
{
  type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Publishers.SwitchToLatest();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100114FE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  v16[4] = v4;
  v16[5] = type metadata accessor for Publishers.Map();
  v16[6] = swift_getWitnessTable();
  v16[7] = swift_getWitnessTable();
  v5 = type metadata accessor for Publishers.SwitchToLatest();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v16 - v11;
  v13 = *(v3 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v12, &v1[v13], v6);
  v14 = *(v5 - 8);
  if ((*(v14 + 48))(v12, 1, v5) != 1)
  {
    return (*(v14 + 32))(a1, v12, v5);
  }

  (*(v7 + 8))(v12, v6);
  sub_100115308(v1);
  (*(v14 + 16))(v10, a1, v5);
  (*(v14 + 56))(v10, 0, 1, v5);
  swift_beginAccess();
  (*(v7 + 40))(&v1[v13], v10, v6);
  return swift_endAccess();
}

uint64_t sub_100115308(void *a1)
{
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  type metadata accessor for AnyPublisher();
  swift_getWitnessTable();
  v2 = type metadata accessor for Publishers.Map();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  v7[1] = a1[3];

  Publisher.map<A>(_:)();

  swift_getWitnessTable();
  swift_getWitnessTable();
  Publisher<>.switchToLatest()();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100115518@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a1;
  v25 = a3;
  v22 = *a2;
  v4 = *(v22 + class metadata base offset for CurrentValueSubject);
  v5 = type metadata accessor for Just();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = *(v4 - 8);
  v14 = __chkstk_darwin(v10);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v21 - v17;
  (*(v9 + 16))(v12, v24, v8);
  if ((*(v13 + 48))(v12, 1, v4) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v26 = a2;
    swift_getWitnessTable();
    result = Publisher.eraseToAnyPublisher()();
    v20 = result;
  }

  else
  {
    (*(v13 + 32))(v18, v12, v4);
    (*(v13 + 16))(v16, v18, v4);
    Just.init(_:)();
    swift_getWitnessTable();
    v20 = Publisher.eraseToAnyPublisher()();
    (*(v23 + 8))(v7, v5);
    result = (*(v13 + 8))(v18, v4);
  }

  *v25 = v20;
  return result;
}

uint64_t sub_1001158B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  v9[0] = v3;
  v9[1] = type metadata accessor for Publishers.Map();
  v9[2] = swift_getWitnessTable();
  v9[3] = swift_getWitnessTable();
  v4 = type metadata accessor for Publishers.SwitchToLatest();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100114FE0(v9 - v6);
  swift_getWitnessTable();
  dispatch thunk of Publisher.receive<A>(subscriber:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100115AA4()
{
  v1 = *v0;
  v2 = *(v1 + 80);
  v3 = type metadata accessor for Optional();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v7 = *(v2 - 8);
  v8 = __chkstk_darwin(v4);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1002725A0;
  v32 = v1;
  swift_getMetatypeMetadata();
  *(v13 + 32) = String.init<A>(describing:)();
  *(v13 + 40) = v14;
  v32 = 0;
  v33 = 0xE000000000000000;
  v15._countAndFlagsBits = 0x3D65756C6176;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  CurrentValueSubject.value.getter();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v16 = *(v7 + 8);
  v16(v12, v2);
  v17 = v33;
  *(v13 + 48) = v32;
  *(v13 + 56) = v17;
  CurrentValueSubject.value.getter();
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v30 + 8))(v6, v31);
  }

  else
  {
    (*(v7 + 32))(v10, v6, v2);
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v18._countAndFlagsBits = 0x656469727265766FLL;
    v18._object = 0xEE003D65756C6156;
    String.append(_:)(v18);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v19 = v32;
    v20 = v33;
    v22 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (v22 >= v21 >> 1)
    {
      v13 = sub_100009088((v21 > 1), v22 + 1, 1, v13);
    }

    v16(v10, v2);
    *(v13 + 16) = v22 + 1;
    v23 = v13 + 16 * v22;
    *(v23 + 32) = v19;
    *(v23 + 40) = v20;
  }

  v32 = v13;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  v32 = 60;
  v33 = 0xE100000000000000;
  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 62;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);

  return v32;
}

char *sub_100115E74()
{

  v1 = *(*v0 + 104);
  type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Publishers.SwitchToLatest();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 144);
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_1001160CC(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_100116194(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100009088((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 6646882;
  *(v5 + 5) = 0xE300000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100009088((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 6453109;
    *(v8 + 5) = 0xE300000000000000;
  }

LABEL_12:
  if ((a1 & 4) == 0)
  {
    if ((a1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_100009088((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 1768319351;
  *(v11 + 5) = 0xE400000000000000;
  if ((a1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_100009088((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 3306594;
    *(v14 + 5) = 0xE300000000000000;
  }

LABEL_25:
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v15 = BidirectionalCollection<>.joined(separator:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 93;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return 91;
}

uint64_t sub_10011642C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100036740();

  *a2 = v3;
  return result;
}

NSString sub_10011646C()
{
  result = String._bridgeToObjectiveC()();
  qword_10038B178 = result;
  return result;
}

uint64_t sub_1001164B4(uint64_t a1)
{
  v1 = *(a1 + 56);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  v8 = v1;
  _s7AnyEdgeVMa(255, &v5);
  type metadata accessor for Array();
  result = swift_getTupleTypeMetadata3();
  if (v3 <= 0x3F)
  {
    v9 = result;
    result = swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      v10 = result;
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100116598(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64);
  v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v3 > v4)
  {
    v4 = ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_100116708(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 24) - 8) + 80)) & ~*(*(*(a4 + 24) - 8) + 80)) + *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void *sub_100116930()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = _swiftEmptyDictionarySingleton;
  v17 = &_s14descr1002FF079V31LockscreenControlsAppearedEventVN;
  v5 = swift_allocObject();
  v16 = v5;
  v6 = *(v0 + 80);
  *(v5 + 80) = *(v0 + 64);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(v0 + 96);
  v7 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v7;
  v8 = *(v0 + 48);
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 64) = v8;
  sub_10011D9B8(v0, v15);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v14 = &v18;
  v11 = sub_10011DA30;
  v12 = &v13;
  dispatch thunk of _AnySequenceBox._forEach(_:)();

  return v18;
}

void *sub_100116AB4()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyDictionarySingleton;
  v10 = &_s14descr1002FF079V13CardPresentedVN;
  v9 = swift_allocObject();
  memcpy((v9 + 16), v0, 0x141uLL);
  sub_10011D848(v0, &v8);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v7[2] = &v11;
  v6[2] = sub_10011DA30;
  v6[3] = v7;
  dispatch thunk of _AnySequenceBox._forEach(_:)();

  return v11;
}

void *sub_100116C2C()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyDictionarySingleton;
  v10 = &_s14descr1002FF079V13HintPresentedVN;
  v9 = swift_allocObject();
  memcpy((v9 + 16), v0, 0x139uLL);
  sub_10011D900(v0, &v8);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v7[2] = &v11;
  v6[2] = sub_10011DA30;
  v6[3] = v7;
  dispatch thunk of _AnySequenceBox._forEach(_:)();

  return v11;
}

void *sub_100116DA4()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _swiftEmptyDictionarySingleton;
  v14[26] = &_s14descr1002FF079V17TransferCompletedVN;
  v5 = swift_allocObject();
  v14[23] = v5;
  v6 = *(v0 + 144);
  *(v5 + 144) = *(v0 + 128);
  *(v5 + 160) = v6;
  *(v5 + 176) = *(v0 + 160);
  *(v5 + 192) = *(v0 + 176);
  v7 = *(v0 + 80);
  *(v5 + 80) = *(v0 + 64);
  *(v5 + 96) = v7;
  v8 = *(v0 + 112);
  *(v5 + 112) = *(v0 + 96);
  *(v5 + 128) = v8;
  v9 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v9;
  v10 = *(v0 + 48);
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 64) = v10;
  sub_10011D7A8(v0, v14);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v13[2] = &v15;
  v12[2] = sub_10011D804;
  v12[3] = v13;
  dispatch thunk of _AnySequenceBox._forEach(_:)();

  return v15;
}

void *sub_100116F44()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _swiftEmptyDictionarySingleton;
  v14[25] = &_s14descr1002FF079V18EducationPresentedVN;
  v5 = swift_allocObject();
  v14[22] = v5;
  v6 = v0[9];
  v5[9] = v0[8];
  v5[10] = v6;
  v5[11] = v0[10];
  v7 = v0[5];
  v5[5] = v0[4];
  v5[6] = v7;
  v8 = v0[7];
  v5[7] = v0[6];
  v5[8] = v8;
  v9 = v0[1];
  v5[1] = *v0;
  v5[2] = v9;
  v10 = v0[3];
  v5[3] = v0[2];
  v5[4] = v10;
  sub_10011D8A4(v0, v14);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v13[2] = &v15;
  v12[2] = sub_10011DA30;
  v12[3] = v13;
  dispatch thunk of _AnySequenceBox._forEach(_:)();

  return v15;
}

void *sub_1001170DC()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _swiftEmptyDictionarySingleton;
  v14[26] = &_s14descr1002FF079V23HandoffSessionCompletedVN;
  v5 = swift_allocObject();
  v14[23] = v5;
  v6 = *(v0 + 144);
  *(v5 + 144) = *(v0 + 128);
  *(v5 + 160) = v6;
  *(v5 + 176) = *(v0 + 160);
  *(v5 + 192) = *(v0 + 176);
  v7 = *(v0 + 80);
  *(v5 + 80) = *(v0 + 64);
  *(v5 + 96) = v7;
  v8 = *(v0 + 112);
  *(v5 + 112) = *(v0 + 96);
  *(v5 + 128) = v8;
  v9 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v9;
  v10 = *(v0 + 48);
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 64) = v10;
  sub_10011D95C(v0, v14);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v13[2] = &v15;
  v12[2] = sub_10011DA30;
  v12[3] = v13;
  dispatch thunk of _AnySequenceBox._forEach(_:)();

  return v15;
}

void sub_10011727C()
{
  if (!sub_1000D0E68(0, &off_100300638))
  {
    if (qword_1003392D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_100350E48);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100017494(0xD000000000000028, 0x80000001002A0AC0, aBlock);
      _os_log_impl(&_mh_execute_header, v12, v13, "Not sending %s, current platform not supported", v14, 0xCu);
      sub_10000903C(v15);
    }

    sub_10011D74C();
    swift_allocError();
    v17 = 3;
    goto LABEL_14;
  }

  v0 = sub_100116AB4();
  v1 = sub_100119E8C(v0);
  sub_1000B3D8C(v1, 0xD000000000000028, 0x80000001002A0AC0, &v23);

  v2 = sub_1000B1898(2128928, 0xE300000000000000, 0, 1);
  v4 = v3;
  v29 = v23;
  sub_1000097E8(&v29, &qword_10033A238, &qword_10027D3E0);
  v30 = v24;
  sub_1000097E8(&v30, &qword_10033F140, &qword_100275E20);
  v28 = v25;
  sub_1000097E8(&v28, &qword_10033F148, &qword_100275E28);
  v27 = v26;
  sub_1000097E8(&v27, &qword_10033F140, &qword_100275E20);
  if (qword_1003392D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100350E48);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    v10 = sub_100017494(v2, v4, aBlock);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Sending analytics event: %s", v8, 0xCu);
    sub_10000903C(v9);
  }

  else
  {
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  aBlock[4] = sub_10011DA34;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011CD58;
  aBlock[3] = &unk_1003096F0;
  v20 = _Block_copy(aBlock);

  v21 = AnalyticsSendEventLazy();
  _Block_release(v20);

  if ((v21 & 1) == 0)
  {
    sub_10011D74C();
    swift_allocError();
    v17 = 2;
LABEL_14:
    *v16 = 0;
    v16[1] = v17;
    swift_willThrow();
  }
}

void sub_1001176EC()
{
  if (!sub_1000D0E68(0, &off_100300660))
  {
    if (qword_1003392D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_100350E48);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100017494(0xD00000000000002DLL, 0x80000001002A0AF0, aBlock);
      _os_log_impl(&_mh_execute_header, v12, v13, "Not sending %s, current platform not supported", v14, 0xCu);
      sub_10000903C(v15);
    }

    sub_10011D74C();
    swift_allocError();
    v17 = 3;
    goto LABEL_14;
  }

  v0 = sub_100116F44();
  v1 = sub_100119E8C(v0);
  sub_1000B3D8C(v1, 0xD00000000000002DLL, 0x80000001002A0AF0, &v23);

  v2 = sub_1000B1898(2128928, 0xE300000000000000, 0, 1);
  v4 = v3;
  v29 = v23;
  sub_1000097E8(&v29, &qword_10033A238, &qword_10027D3E0);
  v30 = v24;
  sub_1000097E8(&v30, &qword_10033F140, &qword_100275E20);
  v28 = v25;
  sub_1000097E8(&v28, &qword_10033F148, &qword_100275E28);
  v27 = v26;
  sub_1000097E8(&v27, &qword_10033F140, &qword_100275E20);
  if (qword_1003392D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100350E48);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    v10 = sub_100017494(v2, v4, aBlock);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Sending analytics event: %s", v8, 0xCu);
    sub_10000903C(v9);
  }

  else
  {
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  aBlock[4] = sub_10011DA34;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011CD58;
  aBlock[3] = &unk_100309768;
  v20 = _Block_copy(aBlock);

  v21 = AnalyticsSendEventLazy();
  _Block_release(v20);

  if ((v21 & 1) == 0)
  {
    sub_10011D74C();
    swift_allocError();
    v17 = 2;
LABEL_14:
    *v16 = 0;
    v16[1] = v17;
    swift_willThrow();
  }
}

void sub_100117B5C()
{
  if (!sub_1000D0E68(0, &off_100300688))
  {
    if (qword_1003392D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_100350E48);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100017494(0xD000000000000028, 0x80000001002A0B20, aBlock);
      _os_log_impl(&_mh_execute_header, v12, v13, "Not sending %s, current platform not supported", v14, 0xCu);
      sub_10000903C(v15);
    }

    sub_10011D74C();
    swift_allocError();
    v17 = 3;
    goto LABEL_14;
  }

  v0 = sub_100116C2C();
  v1 = sub_100119E8C(v0);
  sub_1000B3D8C(v1, 0xD000000000000028, 0x80000001002A0B20, &v23);

  v2 = sub_1000B1898(2128928, 0xE300000000000000, 0, 1);
  v4 = v3;
  v29 = v23;
  sub_1000097E8(&v29, &qword_10033A238, &qword_10027D3E0);
  v30 = v24;
  sub_1000097E8(&v30, &qword_10033F140, &qword_100275E20);
  v28 = v25;
  sub_1000097E8(&v28, &qword_10033F148, &qword_100275E28);
  v27 = v26;
  sub_1000097E8(&v27, &qword_10033F140, &qword_100275E20);
  if (qword_1003392D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100350E48);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    v10 = sub_100017494(v2, v4, aBlock);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Sending analytics event: %s", v8, 0xCu);
    sub_10000903C(v9);
  }

  else
  {
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  aBlock[4] = sub_10011DA34;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011CD58;
  aBlock[3] = &unk_1003097E0;
  v20 = _Block_copy(aBlock);

  v21 = AnalyticsSendEventLazy();
  _Block_release(v20);

  if ((v21 & 1) == 0)
  {
    sub_10011D74C();
    swift_allocError();
    v17 = 2;
LABEL_14:
    *v16 = 0;
    v16[1] = v17;
    swift_willThrow();
  }
}

void sub_100117FCC()
{
  if (!sub_1000D0E68(0, &off_1003006B0))
  {
    if (qword_1003392D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_100350E48);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100017494(0xD000000000000032, 0x80000001002A0B50, aBlock);
      _os_log_impl(&_mh_execute_header, v12, v13, "Not sending %s, current platform not supported", v14, 0xCu);
      sub_10000903C(v15);
    }

    sub_10011D74C();
    swift_allocError();
    v17 = 3;
    goto LABEL_14;
  }

  v0 = sub_1001170DC();
  v1 = sub_100119E8C(v0);
  sub_1000B3D8C(v1, 0xD000000000000032, 0x80000001002A0B50, &v23);

  v2 = sub_1000B1898(2128928, 0xE300000000000000, 0, 1);
  v4 = v3;
  v29 = v23;
  sub_1000097E8(&v29, &qword_10033A238, &qword_10027D3E0);
  v30 = v24;
  sub_1000097E8(&v30, &qword_10033F140, &qword_100275E20);
  v28 = v25;
  sub_1000097E8(&v28, &qword_10033F148, &qword_100275E28);
  v27 = v26;
  sub_1000097E8(&v27, &qword_10033F140, &qword_100275E20);
  if (qword_1003392D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100350E48);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    v10 = sub_100017494(v2, v4, aBlock);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Sending analytics event: %s", v8, 0xCu);
    sub_10000903C(v9);
  }

  else
  {
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  aBlock[4] = sub_10011DA34;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011CD58;
  aBlock[3] = &unk_100309858;
  v20 = _Block_copy(aBlock);

  v21 = AnalyticsSendEventLazy();
  _Block_release(v20);

  if ((v21 & 1) == 0)
  {
    sub_10011D74C();
    swift_allocError();
    v17 = 2;
LABEL_14:
    *v16 = 0;
    v16[1] = v17;
    swift_willThrow();
  }
}

void sub_10011843C()
{
  if (!sub_1000D0E68(0, &off_100300950))
  {
    if (qword_1003392D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_100350E48);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100017494(0xD000000000000035, 0x80000001002A0C40, aBlock);
      _os_log_impl(&_mh_execute_header, v12, v13, "Not sending %s, current platform not supported", v14, 0xCu);
      sub_10000903C(v15);
    }

    sub_10011D74C();
    swift_allocError();
    v17 = 3;
    goto LABEL_14;
  }

  v0 = sub_100116930();
  v1 = sub_100119E8C(v0);
  sub_1000B3D8C(v1, 0xD000000000000035, 0x80000001002A0C40, &v23);

  v2 = sub_1000B1898(2128928, 0xE300000000000000, 0, 1);
  v4 = v3;
  v29 = v23;
  sub_1000097E8(&v29, &qword_10033A238, &qword_10027D3E0);
  v30 = v24;
  sub_1000097E8(&v30, &qword_10033F140, &qword_100275E20);
  v28 = v25;
  sub_1000097E8(&v28, &qword_10033F148, &qword_100275E28);
  v27 = v26;
  sub_1000097E8(&v27, &qword_10033F140, &qword_100275E20);
  if (qword_1003392D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100350E48);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    v10 = sub_100017494(v2, v4, aBlock);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Sending analytics event: %s", v8, 0xCu);
    sub_10000903C(v9);
  }

  else
  {
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  aBlock[4] = sub_10011DA34;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011CD58;
  aBlock[3] = &unk_1003099E8;
  v20 = _Block_copy(aBlock);

  v21 = AnalyticsSendEventLazy();
  _Block_release(v20);

  if ((v21 & 1) == 0)
  {
    sub_10011D74C();
    swift_allocError();
    v17 = 2;
LABEL_14:
    *v16 = 0;
    v16[1] = v17;
    swift_willThrow();
  }
}

void sub_1001188AC(char a1)
{
  v2 = type metadata accessor for Mirror();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_1000D0E68(0, &off_100300978))
  {
    if (qword_1003392D8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003078(v20, qword_100350E48);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_100017494(0xD000000000000032, 0x80000001002A0B90, aBlock);
      _os_log_impl(&_mh_execute_header, v21, v22, "Not sending %s, current platform not supported", v23, 0xCu);
      sub_10000903C(v24);
    }

    sub_10011D74C();
    swift_allocError();
    v26 = 3;
    goto LABEL_14;
  }

  v35 = _swiftEmptyDictionarySingleton;
  v32 = &_s14descr1002FF079V23HandoffEnabledHeartbeatVN;
  LOBYTE(aBlock[0]) = a1;
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  v6 = (*(v3 + 8))(v5, v2);
  v7 = __chkstk_darwin(v6);
  aBlock[-2] = &v35;
  __chkstk_darwin(v7);
  aBlock[-2] = sub_10011DA30;
  aBlock[-1] = v8;
  dispatch thunk of _AnySequenceBox._forEach(_:)();

  v9 = v35;
  v10 = sub_100119E8C(v35);
  sub_1000B3D8C(v10, 0xD000000000000032, 0x80000001002A0B90, &v36);

  v11 = sub_1000B1898(2128928, 0xE300000000000000, 0, 1);
  v13 = v12;
  v42 = v36;
  sub_1000097E8(&v42, &qword_10033A238, &qword_10027D3E0);
  v43 = v37;
  sub_1000097E8(&v43, &qword_10033F140, &qword_100275E20);
  v41 = v38;
  sub_1000097E8(&v41, &qword_10033F148, &qword_100275E28);
  v40 = v39;
  sub_1000097E8(&v40, &qword_10033F140, &qword_100275E20);
  if (qword_1003392D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_100350E48);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    v19 = sub_100017494(v11, v13, aBlock);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "Sending analytics event: %s", v17, 0xCu);
    sub_10000903C(v18);
  }

  else
  {
  }

  v27 = String._bridgeToObjectiveC()();
  v28 = swift_allocObject();
  *(v28 + 16) = v9;
  v33 = sub_10011DA34;
  v34 = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011CD58;
  v32 = &unk_1003098D0;
  v29 = _Block_copy(aBlock);

  v30 = AnalyticsSendEventLazy();
  _Block_release(v29);

  if ((v30 & 1) == 0)
  {
    sub_10011D74C();
    swift_allocError();
    v26 = 2;
LABEL_14:
    *v25 = 0;
    v25[1] = v26;
    swift_willThrow();
  }
}

void sub_100118E70()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_1000D0E68(0, &off_1003009A0))
  {
    if (qword_1003392D8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003078(v21, qword_100350E48);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100017494(0xD000000000000030, 0x80000001002A0BD0, aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "Not sending %s, current platform not supported", v24, 0xCu);
      sub_10000903C(v25);
    }

    sub_10011D74C();
    swift_allocError();
    v27 = 3;
    goto LABEL_14;
  }

  v36 = _swiftEmptyDictionarySingleton;
  v33 = &_s14descr1002FF079V21HandoffEnabledChangedVN;
  v5 = swift_allocObject();
  aBlock[0] = v5;
  v6 = v0[1];
  v5[1] = *v0;
  v5[2] = v6;
  *(v5 + 42) = *(v0 + 26);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  v7 = (*(v2 + 8))(v4, v1);
  v8 = __chkstk_darwin(v7);
  aBlock[-2] = &v36;
  __chkstk_darwin(v8);
  aBlock[-2] = sub_10011DA30;
  aBlock[-1] = v9;
  dispatch thunk of _AnySequenceBox._forEach(_:)();

  v10 = v36;
  v11 = sub_100119E8C(v36);
  sub_1000B3D8C(v11, 0xD000000000000030, 0x80000001002A0BD0, &v37);

  v12 = sub_1000B1898(2128928, 0xE300000000000000, 0, 1);
  v14 = v13;
  v43 = v37;
  sub_1000097E8(&v43, &qword_10033A238, &qword_10027D3E0);
  v44 = v38;
  sub_1000097E8(&v44, &qword_10033F140, &qword_100275E20);
  v42 = v39;
  sub_1000097E8(&v42, &qword_10033F148, &qword_100275E28);
  v41 = v40;
  sub_1000097E8(&v41, &qword_10033F140, &qword_100275E20);
  if (qword_1003392D8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003078(v15, qword_100350E48);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    v20 = sub_100017494(v12, v14, aBlock);

    *(v18 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "Sending analytics event: %s", v18, 0xCu);
    sub_10000903C(v19);
  }

  else
  {
  }

  v28 = String._bridgeToObjectiveC()();
  v29 = swift_allocObject();
  *(v29 + 16) = v10;
  v34 = sub_10011DA34;
  v35 = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011CD58;
  v33 = &unk_100309948;
  v30 = _Block_copy(aBlock);

  v31 = AnalyticsSendEventLazy();
  _Block_release(v30);

  if ((v31 & 1) == 0)
  {
    sub_10011D74C();
    swift_allocError();
    v27 = 2;
LABEL_14:
    *v26 = 0;
    v26[1] = v27;
    swift_willThrow();
  }
}

void sub_100119454()
{
  if (!sub_1000D0E68(0, &off_1003009C8))
  {
    if (qword_1003392D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_100350E48);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100017494(0xD00000000000002BLL, 0x80000001002A0A70, aBlock);
      _os_log_impl(&_mh_execute_header, v12, v13, "Not sending %s, current platform not supported", v14, 0xCu);
      sub_10000903C(v15);
    }

    sub_10011D74C();
    swift_allocError();
    v17 = 3;
    goto LABEL_14;
  }

  v0 = sub_100116DA4();
  v1 = sub_100119E8C(v0);
  sub_1000B3D8C(v1, 0xD00000000000002BLL, 0x80000001002A0A70, &v23);

  v2 = sub_1000B1898(2128928, 0xE300000000000000, 0, 1);
  v4 = v3;
  v29 = v23;
  sub_1000097E8(&v29, &qword_10033A238, &qword_10027D3E0);
  v30 = v24;
  sub_1000097E8(&v30, &qword_10033F140, &qword_100275E20);
  v28 = v25;
  sub_1000097E8(&v28, &qword_10033F148, &qword_100275E28);
  v27 = v26;
  sub_1000097E8(&v27, &qword_10033F140, &qword_100275E20);
  if (qword_1003392D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100350E48);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    v10 = sub_100017494(v2, v4, aBlock);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Sending analytics event: %s", v8, 0xCu);
    sub_10000903C(v9);
  }

  else
  {
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  aBlock[4] = sub_10011D7A0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011CD58;
  aBlock[3] = &unk_100309678;
  v20 = _Block_copy(aBlock);

  v21 = AnalyticsSendEventLazy();
  _Block_release(v20);

  if ((v21 & 1) == 0)
  {
    sub_10011D74C();
    swift_allocError();
    v17 = 2;
LABEL_14:
    *v16 = 0;
    v16[1] = v17;
    swift_willThrow();
  }
}

void sub_1001198C4(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_1000D0E68(0, &off_1003009F0))
  {
    if (qword_1003392D8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003078(v22, qword_100350E48);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_100017494(0xD00000000000002CLL, 0x80000001002A0C10, &aBlock);
      _os_log_impl(&_mh_execute_header, v23, v24, "Not sending %s, current platform not supported", v25, 0xCu);
      sub_10000903C(v26);
    }

    sub_10011D74C();
    swift_allocError();
    v28 = 3;
    goto LABEL_14;
  }

  v39 = _swiftEmptyDictionarySingleton;
  v36 = &_s14descr1002FF079V22RangingTokenLimitEventVN;
  aBlock = a1;
  v34 = a2;
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  v8 = (*(v5 + 8))(v7, v4);
  v9 = __chkstk_darwin(v8);
  *(&aBlock - 2) = &v39;
  __chkstk_darwin(v9);
  *(&aBlock - 2) = sub_10011DA30;
  *(&aBlock - 1) = v10;
  dispatch thunk of _AnySequenceBox._forEach(_:)();

  v11 = v39;
  v12 = sub_100119E8C(v39);
  sub_1000B3D8C(v12, 0xD00000000000002CLL, 0x80000001002A0C10, &v40);

  v13 = sub_1000B1898(2128928, 0xE300000000000000, 0, 1);
  v15 = v14;
  v46 = v40;
  sub_1000097E8(&v46, &qword_10033A238, &qword_10027D3E0);
  v47 = v41;
  sub_1000097E8(&v47, &qword_10033F140, &qword_100275E20);
  v45 = v42;
  sub_1000097E8(&v45, &qword_10033F148, &qword_100275E28);
  v44 = v43;
  sub_1000097E8(&v44, &qword_10033F140, &qword_100275E20);
  if (qword_1003392D8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003078(v16, qword_100350E48);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock = v20;
    *v19 = 136315138;
    v21 = sub_100017494(v13, v15, &aBlock);

    *(v19 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v17, v18, "Sending analytics event: %s", v19, 0xCu);
    sub_10000903C(v20);
  }

  else
  {
  }

  v29 = String._bridgeToObjectiveC()();
  v30 = swift_allocObject();
  *(v30 + 16) = v11;
  v37 = sub_10011DA34;
  v38 = v30;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10011CD58;
  v36 = &unk_100309998;
  v31 = _Block_copy(&aBlock);

  v32 = AnalyticsSendEventLazy();
  _Block_release(v31);

  if ((v32 & 1) == 0)
  {
    sub_10011D74C();
    swift_allocError();
    v28 = 2;
LABEL_14:
    *v27 = 0;
    v27[1] = v28;
    swift_willThrow();
  }
}

uint64_t sub_100119E8C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100035D04(&unk_100350E90, &unk_10027C950);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_100103CBC();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000516B4(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000516B4(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
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
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000516B4(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10011A14C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100035D04(&unk_100350E90, &unk_10027C950);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10001766C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000516B4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000516B4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000516B4(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
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
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000516B4(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10011A414(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100035D04(&unk_100350E90, &unk_10027C950);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1000516B4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1000516B4(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1000516B4(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_10011A6DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100035D04(&qword_10033DED8, &qword_1002741F0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v23 = *(*(a1 + 56) + v14);

        sub_10006DA04(v23, *(&v23 + 1));
        swift_dynamicCast();
        sub_1000516B4(&v24, v26);
        sub_1000516B4(v26, v27);
        sub_1000516B4(v27, &v25);
        result = sub_100004B58(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_10000903C(v11);
          result = sub_1000516B4(&v25, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_1000516B4(&v25, (v2[7] + 32 * result));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}