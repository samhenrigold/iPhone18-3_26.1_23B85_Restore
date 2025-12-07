uint64_t sub_10029360C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

uint64_t sub_100293694(void *a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  sub_1002936EC(a1, a2, a3);
  return v6;
}

void sub_1002936EC(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - v9;
  v11 = type metadata accessor for NSNotificationCenter.Publisher();
  v42 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v43 = *(v14 - 8);
  v44 = v14;
  __chkstk_darwin(v14);
  v16 = v41 - v15;
  *(v4 + 24) = 0;
  *(v4 + 48) = 0;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 96) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  swift_unknownObjectWeakAssign();
  v17 = objc_opt_self();
  v18 = a3;
  v19 = [v17 currentSettings];
  if (!v19)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v19;
  v21 = [v19 supportSystemEndpoints];

  if (!v21)
  {
    swift_unknownObjectRelease();

    return;
  }

  v41[0] = v18;
  v41[1] = a1;
  v22 = [objc_opt_self() defaultCenter];
  if (!kMRMediaRemoteActiveSystemEndpointDidChangeNotification)
  {
    goto LABEL_16;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = String._bridgeToObjectiveC()();

  NSNotificationCenter.publisher(for:object:)();

  v45 = *(v4 + 56);
  v24 = v45;
  v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  sub_100018014(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_1002853D8();
  v26 = v24;
  Publisher.receive<A>(on:options:)();
  sub_1000038A4(v10, &unk_100524C50, &qword_10044F180);

  (*(v42 + 8))(v13, v11);
  sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v27 = v44;
  v28 = Publisher<>.sink(receiveValue:)();

  (*(v43 + 8))(v16, v27);
  *(v4 + 64) = v28;
  swift_unknownObjectRelease();
  v29 = [objc_opt_self() server];
  v30 = [v29 routingServer];

  v31 = [v30 systemEndpointController];
  if (!v31)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v32 = [v31 activeOutputDeviceUID:0];

  if (v32)
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = [objc_opt_self() localDeviceUID];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if (v33 == v37 && v35 == v39)
    {
      swift_unknownObjectRelease();

LABEL_12:

      return;
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {
      swift_unknownObjectRelease();

      goto LABEL_12;
    }

    swift_beginAccess();
    *(v4 + 24) = v33;
    *(v4 + 32) = v35;

    sub_1002941C8();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100293CB8()
{
  v1 = 7104878;
  _StringGuts.grow(_:)(47);

  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._object = 0x800000010043EA10;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v3);
  v4 = (*(*v0 + 176))();
  if (!v5)
  {
    v4 = 7104878;
  }

  v6 = 0xE300000000000000;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v4);

  v9._countAndFlagsBits = 0x696F70646E65202CLL;
  v9._object = 0xEC000000203A746ELL;
  String.append(_:)(v9);
  v10 = (*(*v0 + 152))();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 description];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v13;
  }

  v14._countAndFlagsBits = v1;
  v14._object = v6;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return 60;
}

void sub_100293E84(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100028D40();
  (*(v7 + 16))(v9, v10, v6);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = a1;
    v14 = v13;
    v31 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = _typeName(_:qualified:)();
    v17 = sub_10002C9C8(v15, v16, &v31);
    v29 = v6;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    if (a2)
    {
      v19 = v30;
    }

    else
    {
      v19 = 7104878;
    }

    if (a2)
    {
      v20 = a2;
    }

    else
    {
      v20 = 0xE300000000000000;
    }

    v21 = sub_10002C9C8(v19, v20, &v31);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%s] updateActiveDeviceIdentifier - identifier: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    a1 = v30;

    v22 = (*(v7 + 8))(v9, v29);
  }

  else
  {

    v22 = (*(v7 + 8))(v9, v6);
  }

  v23 = (*(*v3 + 176))(v22);
  if (a2)
  {
    if (v24)
    {
      if (v23 == a1 && v24 == a2)
      {

        goto LABEL_22;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_20;
  }

  if (v24)
  {

LABEL_20:
    v27 = *(*v3 + 184);

    v27(a1, a2);
  }

LABEL_22:
  sub_1002941C8();
}

void sub_1002941C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v56 - v9;
  v11 = *(v2 + 176);
  v11(v8);
  if (v12)
  {

    [v0[11] invalidate];
    v13 = v0[11];
    v0[11] = 0;

    v14 = sub_100028D40();
    (*(v4 + 16))(v7, v14, v3);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v58 = v4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v57 = v3;
      aBlock[0] = v19;
      *v18 = 136315394;
      v20 = _typeName(_:qualified:)();
      v22 = sub_10002C9C8(v20, v21, aBlock);
      v59 = v2;
      v23 = v22;

      *(v18 + 4) = v23;
      *(v18 + 12) = 2082;
      v25 = (v11)(v24);
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v25 = 7104878;
        v27 = 0xE300000000000000;
      }

      v28 = sub_10002C9C8(v25, v27, aBlock);

      *(v18 + 14) = v28;
      v2 = v59;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%s] discoverEndpointIfNeeded - Allow 7s discovery for active device: %{public}s", v18, 0x16u);
      swift_arrayDestroy();

      (*(v58 + 8))(v7, v57);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    v41 = sub_100292CFC();
    [v41 setDiscoveryMode:2];

    v42 = static String.nanoIDFourChar()();
    v44 = v43;
    v1[9] = v42;
    v1[10] = v43;

    v45 = v1[7];
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = swift_allocObject();
    v47[2] = v46;
    v47[3] = v42;
    v47[4] = v44;
    v47[5] = v2;
    v48 = objc_allocWithZone(MSVTimer);
    aBlock[4] = sub_100295B0C;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C7A08;
    v49 = _Block_copy(aBlock);
    v50 = v45;

    v51 = [v48 initWithInterval:0 repeats:v50 queue:v49 block:7.0];
    _Block_release(v49);

    v52 = v1[11];
    v1[11] = v51;

    sub_100294AF4();
  }

  else
  {
    v29 = v0[11];
    if (v29)
    {
      [v29 invalidate];
      v30 = v0[11];
      v0[11] = 0;

      v31 = sub_100292CFC();
      [v31 setDiscoveryMode:0];

      v32 = sub_100028D40();
      (*(v4 + 16))(v10, v32, v3);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        aBlock[0] = v36;
        *v35 = 136315138;
        v37 = _typeName(_:qualified:)();
        v39 = v3;
        v40 = sub_10002C9C8(v37, v38, aBlock);

        *(v35 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v33, v34, "[%s] discoverEndpointIfNeeded - disable discovery for active device: nil", v35, 0xCu);
        sub_100026A44(v36);

        (*(v4 + 8))(v10, v39);
      }

      else
      {

        (*(v4 + 8))(v10, v3);
      }
    }

    v53 = v1[12];
    if (v53)
    {
      v1[12] = 0;

      (*(*v1 + 160))(0);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v54 = v1[6];
        ObjectType = swift_getObjectType();
        (*(v54 + 8))(v1, 0, ObjectType, v54);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1002947FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + 80);
    if (v12 && (*(Strong + 72) == a2 ? (v13 = v12 == a3) : (v13 = 0), v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v14 = v11[11];
      v11[11] = 0;

      v15 = sub_100292CFC();
      [v15 setDiscoveryMode:0];

      v16 = sub_100028D40();
      (*(v7 + 16))(v9, v16, v6);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v19 = 136315394;
        v20 = _typeName(_:qualified:)();
        v22 = sub_10002C9C8(v20, v21, &v28);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2082;
        v24 = (*(*v11 + 176))(v23);
        if (v25)
        {
          v26 = v25;
        }

        else
        {
          v24 = 7104878;
          v26 = 0xE300000000000000;
        }

        v27 = sub_10002C9C8(v24, v26, &v28);

        *(v19 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v17, v18, "[%s] discoverEndpointIfNeeded - disable discovery for active device: %{public}s", v19, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v7 + 8))(v9, v6);
    }

    else
    {
    }
  }
}

void sub_100294AF4()
{
  v1 = *v0;
  v2 = sub_100292CFC();
  v3 = [v2 discoveryMode];

  if (!v3)
  {
    return;
  }

  (*(*v0 + 176))();
  if (v4)
  {
    v5 = [v0[13] availableEndpoints];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = v1;
    if (v7 >> 62)
    {
LABEL_37:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_6:
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v13 = String._bridgeToObjectiveC()();
          v14 = [v11 containsOutputDeviceWithUID:v13];

          if (v14)
          {
            break;
          }

          ++v9;
          if (v12 == v8)
          {
            goto LABEL_38;
          }
        }

        v18 = v0;
        v19 = v0[12];
        if (v19)
        {
          v38 = v11;
          v20 = v19;
          v21 = static NSObject.== infix(_:_:)();

          if (v21)
          {
            goto LABEL_29;
          }

          v19 = v18[12];
        }

        else
        {
          v22 = v11;
        }

        v18[12] = v11;
        v38 = v11;

        if ([v38 isLocalEndpoint])
        {

          v23 = v18[12];
          v18[12] = 0;

          (*(*v18 + 160))(0);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v24 = v18[6];
            ObjectType = swift_getObjectType();
            (*(v24 + 8))(v18, 0, ObjectType, v24);
            swift_unknownObjectRelease();
          }

          goto LABEL_30;
        }

        if (![v38 isConnected])
        {

          v29 = objc_allocWithZone(MRRequestDetails);
          v30 = String._bridgeToObjectiveC()();
          v31 = String._bridgeToObjectiveC()();
          v32 = [v29 initWithName:v30 requestID:0 reason:v31 userInitiated:0];

          v33 = swift_allocObject();
          swift_weakInit();
          v34 = swift_allocObject();
          v34[2] = v33;
          v34[3] = v38;
          v34[4] = v37;
          aBlock[4] = sub_100295AE8;
          aBlock[5] = v34;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1001BC53C;
          aBlock[3] = &unk_1004C78F0;
          v35 = _Block_copy(aBlock);
          v36 = v38;

          [v36 connectToExternalDeviceWithOptions:0 details:v32 completion:v35];

          _Block_release(v35);
          return;
        }

        v26 = *(*v18 + 160);
        v38 = v38;
        v26(v11);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v27 = v18[6];
          v28 = swift_getObjectType();
          (*(v27 + 8))(v18, v11, v28, v27);
          swift_unknownObjectRelease();
        }

LABEL_29:

LABEL_30:

        return;
      }
    }

LABEL_38:

    return;
  }

  v15 = v0[12];
  v0[12] = 0;

  (*(*v0 + 160))(0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = v0[6];
    v17 = swift_getObjectType();
    (*(v16 + 8))(v0, 0, v17, v16);

    swift_unknownObjectRelease();
  }
}

double sub_1002950F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = v8;
    v17 = *(Strong + 56);
    v18 = Strong;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a3;
    v24[1] = v18;
    v19[4] = a1;
    v19[5] = a4;
    aBlock[4] = sub_100295AF4;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C7940;
    v20 = _Block_copy(aBlock);
    v25 = v11;
    v21 = v20;
    v22 = v17;

    v23 = a3;
    swift_errorRetain();
    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_100018014(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v26 + 8))(v10, v7);
    (*(v12 + 8))(v14, v25);
  }

  return result;
}

void sub_10029542C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[12];
  if (v11)
  {
    sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);
    v12 = v11;
    v13 = a2;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      if (a3)
      {
        v15 = sub_100028D40();
        (*(v8 + 16))(v10, v15, v7);
        v16 = v13;
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33 = v32;
          *v19 = 136315394;
          v20 = _typeName(_:qualified:)();
          v22 = sub_10002C9C8(v20, v21, &v33);

          *(v19 + 4) = v22;
          *(v19 + 12) = 2114;
          *(v19 + 14) = v16;
          v23 = v31;
          *v31 = v16;
          v24 = v16;
          _os_log_impl(&_mh_execute_header, v17, v18, "[%s] evaluateEndpoints - error connecting to endpoint: %{public}@", v19, 0x16u);
          sub_1000038A4(v23, &qword_100521870, &unk_10044EA70);

          sub_100026A44(v32);
        }

        (*(v8 + 8))(v10, v7);
        v25 = a1[12];
        a1[12] = 0;
      }

      else
      {
        v26 = *(*a1 + 160);
        v27 = v13;
        v26(v13);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v28 = a1[6];
          ObjectType = swift_getObjectType();
          (*(v28 + 8))(a1, v13, ObjectType, v28);

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

id *sub_100295764()
{

  sub_1001DFBCC((v0 + 5));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1002957C4()
{
  sub_100295764();

  return swift_deallocClassInstance();
}

void sub_100295844()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_12;
  }

  v1 = v0;
  if (!kMRMediaRemoteActiveEndpointTypeUserInfoKey)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_10001BF64(v16), (v3 & 1) == 0))
  {

    sub_10001BF10(v16);
LABEL_12:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_13;
  }

  sub_100020E0C(*(v1 + 56) + 32 * v2, &v17);
  sub_10001BF10(v16);

  if (!*(&v18 + 1))
  {
LABEL_13:
    sub_1000038A4(&v17, &qword_100522890, &qword_100450610);
    return;
  }

  if ((swift_dynamicCast() & 1) != 0 && !v16[0])
  {
    v4 = [objc_opt_self() server];
    v5 = [v4 routingServer];

    v6 = [v5 systemEndpointController];
    if (v6)
    {
      v7 = [v6 activeOutputDeviceUID:0];

      if (v7)
      {
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      v11 = [objc_opt_self() localDeviceUID];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v10)
      {
        if (v8 == v12 && v10 == v14)
        {

LABEL_22:

          v8 = 0;
          v10 = 0;
          goto LABEL_23;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

LABEL_23:
      sub_100293E84(v8, v10);

      return;
    }

    goto LABEL_25;
  }
}

void sub_100295B44()
{
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004575E0;
  v1 = kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification;
  if (!kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[5] = v3;
  v4 = kMRMediaRemoteOriginNowPlayingApplicationClientStateDidChange;
  if (!kMRMediaRemoteOriginNowPlayingApplicationClientStateDidChange)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[7] = v5;
  if (!kMRMediaRemoteOriginNowPlayingPlayerDidChange)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2[8] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[9] = v6;
  if (!kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2[10] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[11] = v7;
  if (!kMROriginNowPlayingPlaybackQueueChangedNotification)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2[12] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[13] = v8;
  if (!kMROriginPlaybackQueueContentItemsChangedNotification)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2[14] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[15] = v9;
  if (!kMROriginPlaybackQueueContentItemArtworkChangedNotification)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v2[16] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[17] = v10;
  if (!kMRMediaRemoteOriginSupportedCommandsDidChangeNotification)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v2[18] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[19] = v11;
  if (!kMRMediaRemoteOriginNowPlayingPlayerStateDidChange)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v2[20] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[21] = v12;
  if (!kMRMediaRemoteOriginDidRegisterNotification)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v2[22] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[23] = v13;
  v14 = kMRMediaRemoteOriginDidUnregisterNotification;
  if (kMRMediaRemoteOriginDidUnregisterNotification)
  {
    v15 = v1;
    v16 = v4;
    v17 = v14;

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v2[24] = v18;
    v2[25] = v20;
    qword_100533388 = v2;
    return;
  }

LABEL_23:
  __break(1u);
}

id sub_100295D14()
{
  sub_1001BC5A8(&qword_1005249C8, &qword_100457080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10044F530;
  v1 = MRAVEndpointVolumeDidChangeNotification;
  v2 = MRAVEndpointVolumeControlCapabilitiesDidChangeNotification;
  *(v0 + 32) = MRAVEndpointVolumeDidChangeNotification;
  *(v0 + 40) = v2;
  v6 = MRAVEndpointDeviceInfoDidChangeNotification;
  *(v0 + 48) = MRAVEndpointDeviceInfoDidChangeNotification;
  qword_100533398 = v0;
  v3 = v1;
  v4 = v2;

  return v6;
}

uint64_t sub_100295DB8()
{
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10044F530;
  result = kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification;
  if (!kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v2;
  result = kMROriginNowPlayingPlaybackQueueChangedNotification;
  if (!kMROriginNowPlayingPlaybackQueueChangedNotification)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v3;
  result = kMRMediaRemoteOriginSupportedCommandsDidChangeNotification;
  if (kMRMediaRemoteOriginSupportedCommandsDidChangeNotification)
  {
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 64) = result;
    *(v0 + 72) = v4;
    qword_1005333A8 = v0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_100295E60()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void sub_100295EA4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_100295F3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode;
  swift_beginAccess();
  v4 = type metadata accessor for RoutingMode();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100295FC4(uint64_t a1)
{
  v3 = type metadata accessor for RoutingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  sub_100296450(v6, &OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode, "[%s] setRoutingMode - value: %{public}s");
  v8 = *(v4 + 8);
  v8(a1, v3);
  return (v8)(v6, v3);
}

void (*sub_100296138(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = type metadata accessor for RoutingMode();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[11] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v11 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode;
  v4[14] = v9;
  v4[15] = v11;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[16] = v12;
  v4[17] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_1002962AC;
}

void sub_1002962AC(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 14);
  v5 = *(*a1 + 15);
  v6 = *(*a1 + 12);
  v7 = *(*a1 + 13);
  v8 = *(*a1 + 10);
  v9 = *(*a1 + 11);
  v10 = *(*a1 + 9);
  if (a2)
  {
    v3(*(*a1 + 13), v4, v8);
    v3(v6, (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v7, v8);
    swift_endAccess();
    sub_100296450(v6, &OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode, "[%s] setRoutingMode - value: %{public}s");
    v11 = *(v9 + 8);
    v11(v6, v8);
  }

  else
  {
    v3(*(*a1 + 13), (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v4, v8);
    swift_endAccess();
    sub_100296450(v7, &OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode, "[%s] setRoutingMode - value: %{public}s");
    v11 = *(v9 + 8);
  }

  v11(v7, v8);
  v11(v4, v8);
  free(v4);
  free(v7);
  free(v6);

  free(v2);
}

void sub_100296450(uint64_t a1, uint64_t *a2, const char *a3, ...)
{
  v5 = v3;
  v33 = *v3;
  v34 = a3;
  v6 = type metadata accessor for Logger();
  v36 = *(v6 - 8);
  __chkstk_darwin(v6);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RoutingMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  swift_beginAccess();
  v13 = *(v9 + 16);
  v13(v11, &v3[v12], v8);
  sub_1002CDD70(&qword_1005249D0, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v9 + 8);
  v15(v11, v8);
  if ((v14 & 1) == 0)
  {
    v31 = v13;
    v16 = sub_100028D40();
    (*(v36 + 16))(v35, v16, v6);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v32 = v18;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      *v19 = 136315394;
      v20 = _typeName(_:qualified:)();
      v29 = v17;
      v22 = sub_10002C9C8(v20, v21, &v37);
      v33 = v6;
      v23 = v22;

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v31(v11, &v5[v12], v8);
      sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v15(v11, v8);
      v27 = sub_10002C9C8(v24, v26, &v37);

      *(v19 + 14) = v27;
      v28 = v29;
      _os_log_impl(&_mh_execute_header, v29, v32, v34, v19, 0x16u);
      swift_arrayDestroy();

      (*(v36 + 8))(v35, v33);
    }

    else
    {

      (*(v36 + 8))(v35, v6);
    }

    sub_1002A6FE8();
  }
}

void sub_10029685C(uint64_t a1)
{
  v2 = v1;
  v108 = *v2;
  v4 = type metadata accessor for HostedRoutingSourceSession(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = (v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v94 - v13;
  v15 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_sessions;
  swift_beginAccess();
  v16 = *(v2 + v15);

  LOBYTE(a1) = sub_100034B1C(a1, v16);

  if ((a1 & 1) == 0)
  {
    v102 = v5;
    v17 = sub_100028D40();
    v18 = v9 + 16;
    v104 = *(v9 + 16);
    v105 = v17;
    v104(v14);

    v19 = Logger.logObject.getter();
    v20 = v9;
    v21 = static os_log_type_t.info.getter();

    v103 = v21;
    v22 = os_log_type_enabled(v19, v21);
    v107 = v15;
    if (v22)
    {
      v23 = v20;
      v98 = v19;
      v99 = v18;
      v106 = v12;
      v24 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v110 = v96;
      *v24 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = sub_10002C9C8(v25, v26, &v110);

      *(v24 + 4) = v27;
      v97 = v24;
      *(v24 + 12) = 2082;
      v28 = *(v2 + v15);
      v29 = *(v28 + 16);
      if (v29)
      {
        v95 = v14;
        v100 = v23;
        v101 = v8;
        v109 = _swiftEmptyArrayStorage;

        sub_1000089FC(0, v29, 0);
        v30 = v109;
        v31 = *(v102 + 80);
        v94[1] = v28;
        v32 = v28 + ((v31 + 32) & ~v31);
        v33 = *(v102 + 72);
        do
        {
          sub_1002CDCB4(v32, v7, type metadata accessor for HostedRoutingSourceSession);
          v34 = *v7;
          v35 = v7[1];

          sub_10002187C(v7, type metadata accessor for HostedRoutingSourceSession);
          v109 = v30;
          v37 = v30[2];
          v36 = v30[3];
          if (v37 >= v36 >> 1)
          {
            sub_1000089FC((v36 > 1), v37 + 1, 1);
            v30 = v109;
          }

          v30[2] = v37 + 1;
          v38 = &v30[2 * v37];
          v38[4] = v34;
          v38[5] = v35;
          v32 += v33;
          --v29;
        }

        while (v29);

        v15 = v107;
        v23 = v100;
        v8 = v101;
        v14 = v95;
      }

      v41 = Array.description.getter();
      v43 = v42;

      v44 = sub_10002C9C8(v41, v43, &v110);

      v45 = v97;
      *(v97 + 14) = v44;
      v46 = v98;
      _os_log_impl(&_mh_execute_header, v98, v103, "[%s] setSessions - value: %{public}s", v45, 0x16u);
      swift_arrayDestroy();

      v40 = *(v23 + 8);
      v40(v14, v8);
      v12 = v106;
    }

    else
    {

      v39 = *(v20 + 8);
      v39(v14, v8);
      v23 = v20;
      v40 = v39;
    }

    v47 = (v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements);
    v48 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements + 16);
    if (v48)
    {
      v49 = *v47;
      v50 = v47[1];
      (v104)(v12, v105, v8);
      v105 = v49;
      sub_1002D18E0(v49, v50, v48);

      v51 = Logger.logObject.getter();
      v52 = v12;
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v51, v53))
      {
        v54 = swift_slowAlloc();
        v101 = v8;
        v55 = v54;
        v104 = swift_slowAlloc();
        v110 = v104;
        *v55 = 136315394;
        v56 = _typeName(_:qualified:)();
        v106 = v52;
        v58 = sub_10002C9C8(v56, v57, &v110);
        v100 = v23;
        v59 = v58;

        *(v55 + 4) = v59;
        *(v55 + 12) = 2082;

        v60 = sub_1002998F0(v105, v50, v48);
        v62 = v61;

        v63 = sub_10002C9C8(v60, v62, &v110);

        *(v55 + 14) = v63;
        _os_log_impl(&_mh_execute_header, v51, v53, "[%s] setSessions - consuming deferred elements: %{public}s", v55, 0x16u);
        swift_arrayDestroy();

        v64 = v101;
        v65 = v106;
      }

      else
      {

        v65 = v52;
        v64 = v8;
      }

      v40(v65, v64);
      v66 = *v47;
      v67 = v47[1];
      v68 = v47[2];
      v47[1] = 0;
      v47[2] = 0;
      *v47 = 0;
      sub_10029A0A4(v66, v67, v68);
      sub_1002CDC70(v66, v67, v68);
      v69 = (v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
      v70 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
      v71 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
      v72 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
      *v69 = v105;
      v69[1] = v50;
      v69[2] = v48;
      sub_10029A410(v70, v71, v72);
      sub_1002CDC70(v70, v71, v72);
      v15 = v107;
    }

    sub_10029F204();
    v73 = v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v74 = *(v73 + 1);
      ObjectType = swift_getObjectType();
      v76 = *(v2 + v15);
      v77 = *(v74 + 8);

      v77(v2, v76, ObjectType, v74);

      swift_unknownObjectRelease();
    }

    v78 = sub_100297768();
    v79 = v78;
    v80 = v78 + 64;
    v81 = 1 << v78[32];
    v82 = -1;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    v83 = v82 & *(v78 + 8);
    v84 = (v81 + 63) >> 6;

    v85 = 0;
    while (v83)
    {
      v86 = v85;
LABEL_26:
      v87 = __clz(__rbit64(v83));
      v83 &= v83 - 1;
      v88 = *(*(v79 + 7) + ((v86 << 10) | (16 * v87)));

      v88(v89);
    }

    while (1)
    {
      v86 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v86 >= v84)
      {

        v90 = *(**(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore) + 272);

        v90(v91);

        v92 = *(**(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource) + 232);

        v92(v93);

        return;
      }

      v83 = *&v80[8 * v86];
      ++v85;
      if (v83)
      {
        v85 = v86;
        goto LABEL_26;
      }
    }

    __break(1u);
  }
}

void *sub_100297140(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1000089FC(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v23 = v1 + 72;
    v24 = v2;
    v25 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v26 = v7;
      v27 = *(v1 + 36);

      v10._countAndFlagsBits = sub_1002992B0();
      String.append(_:)(v10);

      v11 = v4;
      v28 = v4;
      v12 = v1;
      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_1000089FC((v13 > 1), v14 + 1, 1);
        v11 = v28;
      }

      v11[2] = v14 + 1;
      v15 = &v11[2 * v14];
      v15[4] = 538976288;
      v15[5] = 0xE400000000000000;
      v8 = 1 << *(v12 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v25;
      v16 = *(v25 + 8 * v9);
      if ((v16 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v12;
      v4 = v11;
      if (v27 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v17 = v16 & (-2 << (v6 & 0x3F));
      if (v17)
      {
        v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v9 << 6;
        v19 = v9 + 1;
        v20 = (v23 + 8 * v9);
        while (v19 < (v8 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_10000A16C(v6, v27, 0);
            v8 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_10000A16C(v6, v27, 0);
      }

LABEL_4:
      v7 = v26 + 1;
      v6 = v8;
      if (v26 + 1 == v24)
      {
        return v4;
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

  return result;
}

void sub_1002973A0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000089FC(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = v1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v23 = v1 + 72;
    v24 = v2;
    v25 = v1 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v26 = *(v1 + 36);

      v27 = sub_10028A218();
      v10 = v9;

      v11 = v3;
      v28 = v3;
      v12 = v1;
      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        sub_1000089FC((v13 > 1), v14 + 1, 1);
        v11 = v28;
      }

      v11[2] = v14 + 1;
      v15 = &v11[2 * v14];
      v15[4] = v27;
      v15[5] = v10;
      v7 = 1 << *(v12 + 32);
      if (v5 >= v7)
      {
        goto LABEL_22;
      }

      v4 = v25;
      v16 = *(v25 + 8 * v8);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      v1 = v12;
      v3 = v11;
      if (v26 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v7 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v8 << 6;
        v19 = v8 + 1;
        v20 = (v23 + 8 * v8);
        while (v19 < (v7 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_10000A16C(v5, v26, 0);
            v7 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        sub_10000A16C(v5, v26, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v24)
      {
        return;
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
  }
}

uint64_t sub_1002975E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_sessions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_10029685C(v4);
}

void (*sub_100297648(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_sessions;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_1002976E4;
}

void sub_1002976E4(void **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 4);
  v3 = *(*a1 + 5);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 3);
  if (a2)
  {

    sub_10029685C(v5);
  }

  else
  {
    sub_10029685C(v5);
  }

  free(v2);
}

id sub_100297780()
{
  v1 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___discoverySession;
  v2 = *(v0 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___discoverySession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___discoverySession);
  }

  else
  {
    v4 = sub_10029780C(v0, *v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10029780C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100028D40();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v37 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    *&aBlock = v15;
    *v14 = 136315138;
    v16 = _typeName(_:qualified:)();
    v18 = sub_10002C9C8(v16, v17, &aBlock);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%s] discoverySession - initializing", v14, 0xCu);
    sub_100026A44(v15);

    v3 = v37;
  }

  (*(v7 + 8))(v9, v6);
  result = [objc_opt_self() discoverySessionWithEndpointFeatures:8];
  if (result)
  {
    v20 = result;
    v21 = swift_allocObject();
    swift_weakInit();
    v46 = sub_1002D1D5C;
    v47 = v21;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v45 = sub_10029360C;
    *(&v45 + 1) = &unk_1004C8130;
    v22 = _Block_copy(&aBlock);
    v23 = v20;

    v24 = [v23 addEndpointsAddedCallback:v22];
    _Block_release(v22);
    if (v24)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v45 = 0u;
    }

    sub_1000038A4(&aBlock, &qword_100522890, &qword_100450610);
    v25 = swift_allocObject();
    swift_weakInit();
    v46 = sub_1002D1D94;
    v47 = v25;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v45 = sub_10029360C;
    *(&v45 + 1) = &unk_1004C8158;
    v26 = _Block_copy(&aBlock);

    v27 = [v23 addEndpointsRemovedCallback:v26];
    _Block_release(v26);
    if (v27)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v45 = 0u;
    }

    sub_1000038A4(&aBlock, &qword_100522890, &qword_100450610);
    v28 = swift_allocObject();
    swift_weakInit();
    v46 = sub_1002D1DCC;
    v47 = v28;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v45 = sub_10029360C;
    *(&v45 + 1) = &unk_1004C8180;
    v29 = _Block_copy(&aBlock);

    v30 = [v23 addEndpointsModifiedCallback:v29];
    _Block_release(v29);
    if (v30)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v45 = 0u;
    }

    v31 = sub_1000038A4(&aBlock, &qword_100522890, &qword_100450610);
    v32 = (*(*a1 + 368))(v31);
    v46 = sub_1002D504C;
    v47 = a1;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v45 = sub_100003D98;
    *(&v45 + 1) = &unk_1004C81A8;
    v33 = _Block_copy(&aBlock);

    v34 = v38;
    static DispatchQoS.unspecified.getter();
    v43 = _swiftEmptyArrayStorage;
    sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v35 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v33);
    (*(v42 + 8))(v35, v3);
    (*(v39 + 8))(v34, v41);

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100297FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(*Strong + 368);
    v22 = v10;
    v16 = Strong;
    v21 = v15();
    aBlock[4] = a2;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = a3;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v23 = _swiftEmptyArrayStorage;
    sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    v20 = v9;
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v21;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v6 + 8))(v8, v5);
    (*(v22 + 8))(v12, v20);
  }

  return result;
}

unint64_t sub_1002982CC()
{
  v1 = 0x65766F637369642ELL;
  v2 = 0x7463656E6E6F632ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x7463656E6E6F632ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100298360()
{
  if (*v0)
  {
    return 0x636E79732ELL;
  }

  else
  {
    return 0x65766F637369642ELL;
  }
}

uint64_t sub_10029839C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 97) != v3)
  {
    v9 = sub_100028D40();
    (*(v5 + 16))(v8, v9, v4);
    swift_retain_n();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315394;
      v14 = _typeName(_:qualified:)();
      v16 = sub_10002C9C8(v14, v15, &v19);

      *(v12 + 4) = v16;
      *(v12 + 12) = 1026;
      v17 = *(v2 + 97);

      *(v12 + 14) = v17;

      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] setMusicPushHandoffDisabled - value: %{BOOL,public}d", v12, 0x12u);
      sub_100026A44(v13);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1002985D8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 98) != v3)
  {
    v9 = sub_100028D40();
    (*(v5 + 16))(v8, v9, v4);
    swift_retain_n();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315394;
      v14 = _typeName(_:qualified:)();
      v16 = sub_10002C9C8(v14, v15, &v19);

      *(v12 + 4) = v16;
      *(v12 + 12) = 1026;
      v17 = *(v2 + 98);

      *(v12 + 14) = v17;

      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] setMusicPullHandoffDisabled - value: %{BOOL,public}d", v12, 0x12u);
      sub_100026A44(v13);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void *sub_100298814()
{
  if ((*(v0 + 96) & 1) == 0)
  {
    v8 = [*(v0 + 80) outputDevices];
    if (!v8)
    {
      return _swiftEmptyArrayStorage;
    }

LABEL_9:
    v9 = v8;
    sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v10;
  }

  v1 = [*(v0 + 88) syncedOutputDevices];
  if (!v1)
  {
    v8 = [*(v0 + 80) outputDevices];
    if (!v8)
    {
      return _swiftEmptyArrayStorage;
    }

    goto LABEL_9;
  }

  v2 = v1;
  sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = v3;
  if (v3 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    result = v3;
    if (v11)
    {
      return result;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  v5 = result;
  v6 = [*(v0 + 88) designatedGroupLeader];
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  if ([v6 supportsMultiplayer])
  {

    return v5;
  }

  else
  {

    sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
    result = swift_allocObject();
    *(result + 1) = xmmword_10044EBC0;
    result[4] = v7;
  }

  return result;
}

uint64_t sub_1002989C8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_100298A90(void *a1)
{
  v2 = v1;
  v4 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v64 - v8;
  v10 = *(v2 + 80);
  *(v2 + 80) = a1;
  v11 = a1;
  v12 = [v10 outputDevices];
  if (v12)
  {
    v13 = v12;
    sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v11 outputDevices];
  if (!v15)
  {
    if (v14)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v16 = v15;
  sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v14)
  {
    if (v17)
    {
LABEL_12:

      goto LABEL_13;
    }

LABEL_16:
    v22 = [v10 discoveredIsPlaying];
    if (v22 == [v11 discoveredIsPlaying])
    {
      goto LABEL_56;
    }

    v74 = v10;
    v23 = sub_100015A78();
    sub_10001D9AC(v23, v7, &qword_100525C00, &unk_1004511A0);
    v24 = type metadata accessor for Logger();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v7, 1, v24) == 1)
    {
      sub_1000038A4(v7, &qword_100525C00, &unk_1004511A0);
    }

    else
    {
      v48 = v11;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        LODWORD(v73) = v50;
        v52 = v51;
        v72 = swift_slowAlloc();
        v75 = v72;
        *v52 = 136315394;
        v53 = _typeName(_:qualified:)();
        v55 = sub_10002C9C8(v53, v54, &v75);

        *(v52 + 4) = v55;
        *(v52 + 12) = 1024;
        v56 = [v48 discoveredIsPlaying];

        *(v52 + 14) = v56;
        _os_log_impl(&_mh_execute_header, v49, v73, "[%s] updateWithEndpoint - updated isPlaying: %{BOOL}d", v52, 0x12u);
        sub_100026A44(v72);
      }

      else
      {
      }

      (*(v25 + 8))(v7, v24);
    }

    v10 = v74;
    if ((*(v2 + 96) & 1) == 0)
    {
      goto LABEL_56;
    }

    if (*(v2 + 16) == 3)
    {
      goto LABEL_56;
    }

    v63 = [*(v2 + 88) syncedOutputDevices];
    if (!v63)
    {
      goto LABEL_56;
    }

LABEL_55:

LABEL_56:
    return;
  }

  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = sub_1002BB218(v14, v17);

  if (v18)
  {
    goto LABEL_16;
  }

LABEL_13:
  v19 = sub_100015A78();
  sub_10001D9AC(v19, v9, &qword_100525C00, &unk_1004511A0);
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v9, 1, v20) == 1)
  {
    sub_1000038A4(v9, &qword_100525C00, &unk_1004511A0);
    if ((*(v2 + 96) & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  v26 = v11;
  v73 = v9;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v27, v28))
  {

    goto LABEL_46;
  }

  v71 = v28;
  v29 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  v75 = v70;
  *v29 = 136315394;
  v30 = _typeName(_:qualified:)();
  v32 = sub_10002C9C8(v30, v31, &v75);

  *(v29 + 4) = v32;
  *(v29 + 12) = 2080;
  v33 = [v26 outputDevices];

  if (v33)
  {
    sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = v21;
    v66 = v29;
    if (v34 >> 62)
    {
LABEL_60:
      v35 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v67 = v27;
    v69 = v20;
    v74 = v10;
    if (v35)
    {
      v27 = 0;
      v20 = v34 & 0xC000000000000001;
      v72 = _swiftEmptyArrayStorage;
      v10 = &selRef_sinkWithCompletion_shouldContinue_;
      do
      {
        v36 = v27;
        while (1)
        {
          if (v20)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v27 = (&v36->isa + 1);
            if (__OFADD__(v36, 1))
            {
              goto LABEL_58;
            }
          }

          else
          {
            if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_59;
            }

            v37 = *(v34 + 8 * v36 + 32);
            v27 = (&v36->isa + 1);
            if (__OFADD__(v36, 1))
            {
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }
          }

          v38 = v37;
          v39 = [v38 uid];
          if (v39)
          {
            break;
          }

          v36 = (v36 + 1);
          if (v27 == v35)
          {
            goto LABEL_45;
          }
        }

        v40 = v39;
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v42;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_10002AFD0(0, *(v72 + 2) + 1, 1, v72);
        }

        v44 = *(v72 + 2);
        v43 = *(v72 + 3);
        if (v44 >= v43 >> 1)
        {
          v72 = sub_10002AFD0((v43 > 1), v44 + 1, 1, v72);
        }

        v45 = v72;
        *(v72 + 2) = v44 + 1;
        v46 = &v45[16 * v44];
        v47 = v65;
        *(v46 + 4) = v41;
        *(v46 + 5) = v47;
      }

      while (v27 != v35);
    }

    else
    {
      v72 = _swiftEmptyArrayStorage;
    }

LABEL_45:

    v57 = Array.description.getter();
    v59 = v58;

    v60 = sub_10002C9C8(v57, v59, &v75);

    v62 = v66;
    v61 = v67;
    *(v66 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v61, v71, "[%s] updateWithEndpoint - updated topology: %s", v62, 0x16u);
    swift_arrayDestroy();

    v10 = v74;
    v21 = v68;
    v20 = v69;
LABEL_46:
    (*(v21 + 8))(v73, v20);
    if ((*(v2 + 96) & 1) == 0)
    {
      goto LABEL_56;
    }

LABEL_47:
    if (*(v2 + 16) == 3)
    {
      goto LABEL_56;
    }

    v63 = [*(v2 + 88) syncedOutputDevices];
    if (!v63)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  __break(1u);
}

char *sub_1002992B0()
{
  v1 = v0;
  _StringGuts.grow(_:)(92);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x203A6469202D20;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + 64));
  v5._countAndFlagsBits = 0x3A6574617473202CLL;
  v5._object = 0xE900000000000020;
  String.append(_:)(v5);
  v6 = 0xEB00000000646572;
  v7 = 0x65766F637369642ELL;
  v8 = 0xEA00000000006465;
  v9 = 0x7463656E6E6F632ELL;
  if (*(v0 + 16) != 2)
  {
    v9 = 0xD000000000000016;
    v8 = 0x800000010043F170;
  }

  if (*(v0 + 16))
  {
    v7 = 0x7463656E6E6F632ELL;
    v6 = 0xEB00000000676E69;
  }

  if (*(v0 + 16) <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  if (*(v0 + 16) <= 1u)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 0xD000000000000013;
  v13._object = 0x800000010043F190;
  String.append(_:)(v13);
  String.append(_:)(*(v0 + 48));
  v14._countAndFlagsBits = 0x79616C507369202CLL;
  v14._object = 0xED0000203A676E69;
  String.append(_:)(v14);
  v15 = [*(v0 + 80) discoveredIsPlaying];
  v16 = v15 == 0;
  if (v15)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v16)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  v19 = v18;
  String.append(_:)(*&v17);

  v20._object = 0x800000010043F1B0;
  v20._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v20);
  v21 = [*(v0 + 88) uniqueIdentifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x656369766564202CLL;
  v26._object = 0xEB00000000203A73;
  String.append(_:)(v26);
  v27 = [*(v1 + 88) outputDevices];
  if (v27)
  {
    v28 = v27;
    sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v29 >> 62))
    {
      goto LABEL_19;
    }

LABEL_38:
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30)
    {
      goto LABEL_20;
    }

LABEL_39:

    v54 = Array.description.getter();
    v56 = v55;

    v57._countAndFlagsBits = v54;
    v57._object = v56;
    String.append(_:)(v57);

    v58._countAndFlagsBits = 62;
    v58._object = 0xE100000000000000;
    String.append(_:)(v58);
    return 0;
  }

  v29 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_38;
  }

LABEL_19:
  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_39;
  }

LABEL_20:
  result = sub_1000089FC(0, v30 & ~(v30 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    v33 = v29;
    v59 = v29 & 0xFFFFFFFFFFFFFF8;
    v60 = v29 & 0xC000000000000001;
    v34 = v29;
    while (1)
    {
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v60)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v32 >= *(v59 + 16))
        {
          goto LABEL_41;
        }

        v36 = *(v33 + 8 * v32 + 32);
      }

      v37 = v36;
      v38 = [v36 name];
      if (v38)
      {
        v39 = v38;
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;
      }

      else
      {
        v42 = 0xE300000000000000;
        v40 = 7104878;
      }

      v43._countAndFlagsBits = v40;
      v43._object = v42;
      String.append(_:)(v43);

      v44._countAndFlagsBits = 124;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);
      v45 = [v37 uid];
      if (v45)
      {
        v46 = v45;
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;
      }

      else
      {
        v49 = 0xE300000000000000;
        v47 = 7104878;
      }

      v50._countAndFlagsBits = v47;
      v50._object = v49;
      String.append(_:)(v50);

      v52 = _swiftEmptyArrayStorage[2];
      v51 = _swiftEmptyArrayStorage[3];
      if (v52 >= v51 >> 1)
      {
        result = sub_1000089FC((v51 > 1), v52 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v52 + 1;
      v53 = &_swiftEmptyArrayStorage[2 * v52];
      v53[4] = 0;
      v53[5] = 0xE000000000000000;
      ++v32;
      v33 = v34;
      if (v35 == v30)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_100299808()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10029985C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002998C4(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 64) == *(*a2 + 64) && *(*a1 + 72) == *(*a2 + 72))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_1002998F0(uint64_t a1, void *a2, uint64_t a3)
{
  _StringGuts.grow(_:)(39);

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    a1 = 7104878;
    v5 = 0xE300000000000000;
  }

  v6._countAndFlagsBits = a1;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x656369766564202CLL;
  v7._object = 0xEB00000000203A73;
  String.append(_:)(v7);
  v8._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0xD00000000000004BLL;
}

void sub_1002999FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v5 = *(a4 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = a4 + 40;
    do
    {

      String.hash(into:)();

      v6 += 16;
      --v5;
    }

    while (v5);
  }
}

Swift::Int sub_100299AA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  sub_1002999FC(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_100299B0C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  sub_1002999FC(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t sub_100299B70(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_100034D74(v4, v6);
}

void sub_100299BF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v3 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionIdentifier);
  swift_beginAccess();
  v11 = *v10 == a1 && v10[1] == a2;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v12 = sub_100028D40();
    (*(v7 + 16))(v9, v12, v6);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v15 = 136315394;
      v16 = _typeName(_:qualified:)();
      v18 = sub_10002C9C8(v16, v17, &v30);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      v19 = *v10;
      v20 = v10[1];

      v21 = sub_10002C9C8(v19, v20, &v30);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%s] setActiveSessionIdentifier - value: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    (*(v7 + 8))(v9, v6);
    v22 = v3 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 8);
      ObjectType = swift_getObjectType();
      v26 = *v10;
      v25 = v10[1];
      v27 = *(v23 + 24);

      v27(v3, v26, v25, ObjectType, v23);

      swift_unknownObjectRelease();
    }

    sub_1002A5EA8();
    sub_1002A9524();
  }
}

uint64_t sub_100299EFC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionIdentifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_100299BF8(v6, v7);
}

void (*sub_100299F70(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionIdentifier;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_10029A010;
}

void sub_10029A010(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_100299BF8(v9, v8);
  }

  else
  {
    sub_100299BF8(v9, v8);
  }

  free(v2);
}

uint64_t sub_10029A0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  result = __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v4 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements);
  v14 = *(v4 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements + 16);
  if (!a3)
  {
    if (!v14)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v14)
  {
    v16 = *v13;
    v15 = v13[1];
    if (a2)
    {
      if (!v15)
      {
        goto LABEL_16;
      }

      v17 = v16 == a1 && v15 == a2;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_10:
        v18 = sub_100034D74(a3, v14);
        sub_1002D18E0(v16, v15, v14);

        if (v18)
        {
          return result;
        }

        goto LABEL_16;
      }
    }

    else if (!v15)
    {
      goto LABEL_10;
    }

    sub_1002D18E0(v16, v15, v14);
  }

LABEL_16:
  v19 = sub_100028D40();
  v21 = v36;
  v20 = v37;
  (*(v37 + 16))(v12, v19, v36);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v24 = 136315394;
    v25 = _typeName(_:qualified:)();
    v27 = sub_10002C9C8(v25, v26, &v38);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    v28 = v13[2];
    if (v28)
    {
      v29 = *v13;
      v30 = v13[1];

      v31 = sub_1002998F0(v29, v30, v28);
      v33 = v32;

      v21 = v36;
    }

    else
    {
      v33 = 0xE300000000000000;
      v31 = 7104878;
    }

    v34 = sub_10002C9C8(v31, v33, &v38);

    *(v24 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%s] setDeferredActiveSessionElements - value: %{public}s", v24, 0x16u);
    swift_arrayDestroy();

    return (*(v37 + 8))(v12, v21);
  }

  else
  {

    return (*(v20 + 8))(v12, v21);
  }
}

uint64_t *sub_10029A410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v37 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v4 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v13 = *(v4 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
  if (!a3)
  {
    if (!v13)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v13)
  {
    v15 = *v12;
    v14 = v12[1];
    if (!a2)
    {
      v36 = (v4 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
      if (!v14)
      {
        goto LABEL_10;
      }

LABEL_15:
      sub_1002D18E0(v15, v14, v13);

      v12 = v36;
      goto LABEL_16;
    }

    if (v14)
    {
      v36 = (v4 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
      v16 = v15 == a1 && v14 == a2;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_10:
        v17 = sub_100034D74(a3, v13);
        sub_1002D18E0(v15, v14, v13);

        v12 = v36;
        if (v17)
        {
          return result;
        }

        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v18 = v12;
  v19 = sub_100028D40();
  v20 = v37;
  (*(v37 + 16))(v11, v19, v8);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v36 = v8;
    v23 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v23 = 136315394;
    v24 = _typeName(_:qualified:)();
    v26 = sub_10002C9C8(v24, v25, &v38);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    v27 = v18;
    v28 = v18[2];
    if (v28)
    {
      v30 = *v27;
      v29 = v27[1];

      v31 = sub_1002998F0(v30, v29, v28);
      v33 = v32;
    }

    else
    {
      v33 = 0xE300000000000000;
      v31 = 7104878;
    }

    v34 = sub_10002C9C8(v31, v33, &v38);

    *(v23 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%s] setActiveSessionElements - value: %{public}s", v23, 0x16u);
    swift_arrayDestroy();

    (*(v37 + 8))(v11, v36);
  }

  else
  {

    (*(v20 + 8))(v11, v8);
  }

  return sub_10029F204();
}

char *sub_10029A7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_allocObject();
  v12 = sub_1002CD728(a1, a2, a3, a4, a5, a6);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_10029A840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1002CB7B8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10000698C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1002CBC28();
        v14 = v16;
      }

      result = sub_1001DEE44(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_10029A938(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_10000698C(a3, a4);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v5;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002CBD98();
        v13 = v16;
      }

      result = sub_1001DEE44(v8, v13);
      *v5 = v13;
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1002CB934(a3, a4, v15, *&a1);

    *v4 = v17;
  }

  return result;
}

uint64_t sub_10029AA24()
{
  v1 = v0;
  v2 = *(**(v0 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline) + 232);

  v2(v0, &off_1004C7B58);

  v3 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode;
  v4 = type metadata accessor for RoutingMode();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);
  v5(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_overrideRoutingMode, v4);

  sub_1001DFBCC(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate);

  sub_1002CDC70(*(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements + 8), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements + 16));
  sub_1002CDC70(*(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16));

  sub_10028AE60(*(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 8), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 16), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 24), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 32), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 40), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 48));

  return v1;
}

uint64_t sub_10029AC84()
{
  sub_10029AA24();

  return swift_deallocClassInstance();
}

uint64_t sub_10029ACDC(uint64_t a1)
{
  v2 = v1;
  v107 = *v1;
  v111 = type metadata accessor for Logger();
  v4 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for RoutingMode();
  v6 = *(v117 - 8);
  v7 = __chkstk_darwin(v117);
  v113 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v116 = &v102 - v9;
  *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___itemTypes) = a1;

  v10 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
  swift_beginAccess();
  v121 = v2;
  v122 = v10;
  v11 = *(v2 + v10);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v11 + 64);
  v120 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline;
  v16 = (v13 + 63) >> 6;
  v124 = a1 + 56;
  v115 = enum case for RoutingMode.disabled(_:);
  v114 = (v6 + 104);
  v112 = (v6 + 8);
  v109 = (v4 + 16);
  v108 = (v4 + 8);
  v119 = v11;
  swift_bridgeObjectRetain_n();

  v17 = 0;
  *&v18 = 136315138;
  v106 = v18;
  v123 = a1;
  v118 = v16;
  while (v15)
  {
LABEL_10:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = *(v119 + 48) + 24 * (v20 | (v17 << 6));
    v23 = *v21;
    v22 = *(v21 + 8);
    v24 = *(v21 + 16);
    v125[0] = *v21;
    v125[1] = v22;
    v126 = v24;
    if (*(a1 + 16))
    {
      sub_10002CBE8(v23, v22, v24);
      sub_100036860();
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(a1 + 32);
      v27 = v25 & ~v26;
      if ((*(v124 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        v28 = ~v26;
        sub_1000360C4();
        do
        {
          v29 = *(v123 + 48) + 24 * v27;
          v30 = *(v29 + 16);
          v127 = *v29;
          v128 = v30;
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          if (v25)
          {
            goto LABEL_18;
          }

          v27 = (v27 + 1) & v28;
        }

        while (((*(v124 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0);
      }
    }

    else
    {
      v25 = sub_10002CBE8(v23, v22, v24);
    }

    v31 = *(v121 + v120);
    v32 = *((*(*v31 + 112))(v25) + 24);

    if (v32)
    {
      goto LABEL_18;
    }

    if (static HostedItemType.__derived_enum_equals(_:_:)(v23, v22, v24, 0, 0, 3))
    {
      sub_10002349C(v23, v22, v24);
      v33 = *(v121 + v122);
      if (!*(v33 + 16))
      {
        goto LABEL_66;
      }

      v34 = sub_100036134(0, 0, 3);
      if ((v35 & 1) == 0)
      {
        goto LABEL_67;
      }

      v36 = *(*(v33 + 56) + 8 * v34);

      v38 = v116;
      (*(*v36 + 168))(v37);
      v39 = v113;
      v40 = v117;
      v105 = *v114;
      (v105)(v113, v115, v117);
      sub_1002CDD70(&qword_1005249D0, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *v112;
      (*v112)(v39, v40);
      v42(v38, v40);
      if (v41)
      {

        goto LABEL_19;
      }

      v53 = sub_100028D40();
      v54 = v110;
      v55 = v111;
      (*v109)(v110, v53, v111);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v125[0] = v59;
        *v58 = v106;
        v60 = _typeName(_:qualified:)();
        v62 = sub_10002C9C8(v60, v61, v125);

        *(v58 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v56, v57, "[%s] updateWithItemTypes - disable routing mode for .standard", v58, 0xCu);
        sub_100026A44(v59);

        (*v108)(v110, v111);
      }

      else
      {

        (*v108)(v54, v55);
      }

      a1 = v123;
      v16 = v118;
      v63 = v116;
      (v105)(v116, v115, v117);
      (*(*v36 + 176))(v63);
    }

    else
    {
      v43 = v121;
      v44 = v122;
      swift_beginAccess();
      v45 = sub_100036134(v23, v22, v24);
      if ((v46 & 1) == 0)
      {
        swift_endAccess();
LABEL_18:
        sub_10002349C(v23, v22, v24);
        goto LABEL_19;
      }

      v105 = v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v43 + v44);
      *&v127 = v48;
      *(v43 + v44) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002CBF00();
        v48 = v127;
      }

      v103 = v48;
      v49 = v105;
      sub_10002349C(*(*(v48 + 48) + 24 * v105), *(*(v48 + 48) + 24 * v105 + 8), *(*(v48 + 48) + 24 * v105 + 16));
      v104 = *(*(v103 + 56) + 8 * v49);
      v50 = v49;
      v51 = v103;
      sub_1002CB5EC(v50, v103);
      *(v43 + v44) = v51;
      swift_endAccess();
      sub_10002349C(v23, v22, v24);
      v52 = *(*v31 + 232);

      v52();

LABEL_19:
      a1 = v123;
      v16 = v118;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  v64 = 1 << *(a1 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(a1 + 56);
  v67 = (v64 + 63) >> 6;

  v68 = 0;
  v69 = v121;
  while (2)
  {
    v70 = v122;
    if (!v66)
    {
      goto LABEL_39;
    }

LABEL_43:
    v72 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v73 = *(a1 + 48) + 24 * (v72 | (v68 << 6));
    v75 = *v73;
    v74 = *(v73 + 8);
    v76 = *(v73 + 16);
    v77 = *(*(v69 + v70) + 16);
    sub_10002CBE8(*v73, v74, *(v73 + 16));
    if (v77)
    {

      sub_100036134(v75, v74, v76);
      v79 = v78;

      if (v79)
      {
        sub_10002349C(v75, v74, v76);
        continue;
      }
    }

    break;
  }

  type metadata accessor for RoutingItemDataSource(0);
  v80 = *(v69 + v120);
  sub_10002CBE8(v75, v74, v76);

  v81 = v69;
  v82 = sub_100279470();
  swift_unknownObjectRetain();
  v118 = sub_100287C20(v75, v74, v76, v80, v81, &off_1004C7B78, v82);
  v83 = v122;
  swift_beginAccess();
  v84 = swift_isUniquelyReferenced_nonNull_native();
  *&v127 = *(v81 + v83);
  v85 = v127;
  *(v81 + v83) = 0x8000000000000000;
  v86 = sub_100036134(v75, v74, v76);
  v88 = *(v85 + 16);
  v89 = (v87 & 1) == 0;
  v90 = __OFADD__(v88, v89);
  v91 = v88 + v89;
  if (v90)
  {
    goto LABEL_64;
  }

  v92 = v87;
  if (*(v85 + 24) >= v91)
  {
    if (v84)
    {
      goto LABEL_50;
    }

    v96 = v86;
    sub_1002CBF00();
    v86 = v96;
    if ((v92 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_51:
    v94 = v86;
    sub_10002349C(v75, v74, v76);
    v95 = v127;
    *(*(v127 + 56) + 8 * v94) = v118;
  }

  else
  {
    sub_1002CB300(v91, v84);
    v86 = sub_100036134(v75, v74, v76);
    if ((v92 & 1) != (v93 & 1))
    {
      goto LABEL_68;
    }

LABEL_50:
    if (v92)
    {
      goto LABEL_51;
    }

LABEL_53:
    v95 = v127;
    *(v127 + 8 * (v86 >> 6) + 64) |= 1 << v86;
    v97 = v95[6] + 24 * v86;
    *v97 = v75;
    *(v97 + 8) = v74;
    *(v97 + 16) = v76;
    *(v95[7] + 8 * v86) = v118;
    v98 = v95[2];
    v90 = __OFADD__(v98, 1);
    v99 = v98 + 1;
    if (v90)
    {
      goto LABEL_65;
    }

    v95[2] = v99;
  }

  v69 = v121;
  v70 = v122;
  *(v121 + v122) = v95;
  swift_endAccess();
  a1 = v123;
  if (v66)
  {
    goto LABEL_43;
  }

LABEL_39:
  while (1)
  {
    v71 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v71 >= v67)
    {

      v100 = *(sub_1002982C0() + 2);

      if (v100)
      {
        sub_1002AA57C();
      }

      else if (!*(*(v69 + v70) + 16))
      {
        sub_1002AB230();
      }
    }

    v66 = *(v124 + 8 * v71);
    ++v68;
    if (v66)
    {
      v68 = v71;
      goto LABEL_43;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10029B854(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = type metadata accessor for RoutingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
  swift_beginAccess();
  v14 = *(v4 + v13);
  if (*(v14 + 16))
  {

    v15 = sub_100036134(a2, a3, a4);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      (*(v10 + 16))(v12, a1, v9);
      (*(*v17 + 176))(v12);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10029B9DC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HostedRoutingItem(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HostedRoutingSourceSession(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(*v2 + 440);
  v36 = v2;
  result = v14(v11);
  v37 = *(result + 16);
  if (!v37)
  {
    goto LABEL_25;
  }

  v16 = 0;
  v17 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v34 = v17;
  v35 = v10;
  v39 = result;
  while (2)
  {
    if (v16 >= *(result + 16))
    {
LABEL_28:
      __break(1u);
      return result;
    }

    v38 = v16 + 1;
    result = sub_1002CDCB4(v17 + *(v10 + 72) * v16, v13, type metadata accessor for HostedRoutingSourceSession);
    v18 = 0;
    v19 = v13[4];
    v20 = *(v19 + 16);
    while (v20 != v18)
    {
      if (v18 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      sub_1002CDCB4(v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18++, v8, type metadata accessor for HostedRoutingItem);
      v21 = sub_1002589A8(a1, a2);
      result = sub_10002187C(v8, type metadata accessor for HostedRoutingItem);
      if (v21)
      {
        goto LABEL_24;
      }
    }

    v22 = v13[3];
    if (!v22)
    {
      sub_10002187C(v13, type metadata accessor for HostedRoutingSourceSession);
      result = v39;
      goto LABEL_21;
    }

    v23 = v13[2];
    v24 = sub_100034D68();
    v25 = v39;
    if (!v24[2] || (v26 = sub_10000698C(v23, v22), (v27 & 1) == 0))
    {

LABEL_17:
      sub_10002187C(v13, type metadata accessor for HostedRoutingSourceSession);
      goto LABEL_20;
    }

    v28 = *(v24[7] + 8 * v26);

    if (*(v28 + 16) != 2 || (v29 = [*(v28 + 88) designatedGroupLeader]) == 0)
    {
      sub_10002187C(v13, type metadata accessor for HostedRoutingSourceSession);

      goto LABEL_20;
    }

    v30 = v29;
    if (([v29 supportsMultiplayer] & 1) == 0)
    {
      v31 = String._bridgeToObjectiveC()();
      v32 = [v30 containsUID:v31];

      if (v32)
      {
LABEL_24:

        v33 = *v13;

        sub_10002187C(v13, type metadata accessor for HostedRoutingSourceSession);
        return v33;
      }

      goto LABEL_17;
    }

    sub_10002187C(v13, type metadata accessor for HostedRoutingSourceSession);

LABEL_20:
    result = v25;
LABEL_21:
    v16 = v38;
    v17 = v34;
    v10 = v35;
    if (v38 != v37)
    {
      continue;
    }

    break;
  }

LABEL_25:

  return 0;
}

uint64_t sub_10029BE28@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_10029BE98(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v390 = a3;
  v383 = a2;
  v385 = *v3;
  v387 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v386 = *(v387 - 8);
  __chkstk_darwin(v387);
  v6 = &v359 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = type metadata accessor for RoutingEvent(0);
  __chkstk_darwin(v388);
  v8 = &v359 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = type metadata accessor for RoutingControl.Target();
  v372 = *(v373 - 8);
  __chkstk_darwin(v373);
  v397 = (&v359 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v371 = type metadata accessor for RoutingControl.RoutingControlType();
  v370 = *(v371 - 1);
  __chkstk_darwin(v371);
  v369 = &v359 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v382 = type metadata accessor for RoutingControl();
  v395 = *(v382 - 8);
  v11 = __chkstk_darwin(v382);
  v377 = &v359 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v400 = &v359 - v13;
  v381 = type metadata accessor for DispatchPredicate();
  v380 = *(v381 - 8);
  __chkstk_darwin(v381);
  v379 = (&v359 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for HostedRoutingItem(0);
  v398 = *(v15 - 8);
  v16 = __chkstk_darwin(v15 - 8);
  v378 = (&v359 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v384 = (&v359 - v19);
  __chkstk_darwin(v18);
  v396 = (&v359 - v20);
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v363 = &v359 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v365 = &v359 - v26;
  v27 = __chkstk_darwin(v25);
  v366 = &v359 - v28;
  v29 = __chkstk_darwin(v27);
  v368 = &v359 - v30;
  __chkstk_darwin(v29);
  v32 = &v359 - v31;
  v33 = *a1;
  v34 = *(a1 + 1);
  v35 = sub_100028D40();
  v394 = v22;
  v36 = *(v22 + 16);
  v374 = v35;
  v376 = v22 + 16;
  v375 = v36;
  (v36)(v32);
  v37 = a1[2];
  v408 = a1[1];
  v409 = v37;
  v410 = *(a1 + 48);

  sub_10026D080(&v408, &v401);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  sub_100238E4C(&v408);
  v40 = os_log_type_enabled(v38, v39);
  v391 = v8;
  v389 = v6;
  v393 = v34;
  v367 = v33;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v364 = swift_slowAlloc();
    *&v405 = v364;
    *v41 = 136315650;
    v42 = _typeName(_:qualified:)();
    v44 = sub_10002C9C8(v42, v43, &v405);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2082;
    *(v41 + 14) = sub_10002C9C8(v33, v34, &v405);
    *(v41 + 22) = 2082;
    v45 = a1[1];
    v401 = *a1;
    v402 = v45;
    v403 = a1[2];
    v404 = *(a1 + 48);
    sub_1002856A4();
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = sub_10002C9C8(v46, v47, &v405);

    *(v41 + 24) = v48;
    _os_log_impl(&_mh_execute_header, v38, v39, "[%s] handleInteractionForConfiguration<%{public}s> - interaction: %{public}s", v41, 0x20u);
    swift_arrayDestroy();
  }

  v49 = *(v394 + 8);
  v50 = v49(v32, v21);
  v51 = (*(*v399 + 368))(v50);
  sub_1001BC5A8(&qword_1005250D8, &unk_100457600);
  v52 = sub_10033D5FC();
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v53 + 24) = v52;
  v54 = v400;
  v55 = v397;
  v392 = a1;
  if (v410 <= 4u)
  {
    v371 = v49;
    v87 = v409;
    v397 = *(&v408 + 1);
    v88 = *(&v409 + 1);
    v395 = v408;
    if (v410 >= 3u)
    {
      if (v410 != 3)
      {
        goto LABEL_55;
      }

      v360 = v21;
      sub_10026D080(&v408, &v401);
      v362 = v52;

      v377 = v51;
      v99 = sub_100037234();
      if ((v87 != *v99 || v88 != *(v99 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        *&v401 = 0;
        *(&v401 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(110);
        v354._countAndFlagsBits = 91;
        v354._object = 0xE100000000000000;
        String.append(_:)(v354);
        v355._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v355);

        v356._object = 0x800000010043EB80;
        v356._countAndFlagsBits = 0xD000000000000024;
        String.append(_:)(v356);
        v357._countAndFlagsBits = v367;
        v357._object = v393;
        String.append(_:)(v357);
        v358._countAndFlagsBits = 0xD000000000000045;
        v358._object = 0x800000010043EBF0;
        String.append(_:)(v358);
        goto LABEL_176;
      }

      v100 = sub_10002CC04();
      v101 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
      v102 = v399;
      swift_beginAccess();
      v103 = *(v102 + v101);
      v104 = v103 + 64;
      v105 = 1 << *(v103 + 32);
      if (v105 < 64)
      {
        v106 = ~(-1 << v105);
      }

      else
      {
        v106 = -1;
      }

      v107 = v106 & *(v103 + 64);
      v108 = (v105 + 63) >> 6;
      v400 = (v100 + 56);
      swift_bridgeObjectRetain_n();
      v109 = 0;
      v364 = v53;
      v361 = v51;
      v378 = v103;
      while (v107)
      {
LABEL_38:
        v111 = __clz(__rbit64(v107));
        v107 &= v107 - 1;
        v112 = *(*(v103 + 56) + ((v109 << 9) | (8 * v111)));
        v113 = *(v112 + 24);
        v51 = *(v112 + 32);
        v114 = *(v112 + 40);
        *&v401 = v113;
        *(&v401 + 1) = v51;
        LOBYTE(v402) = v114;
        if (*(v100 + 16))
        {
          v396 = v112;

          v382 = v51;
          LODWORD(v383) = v114;
          sub_10002CBE8(v113, v51, v114);
          sub_100036860();
          v115 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v116 = -1 << *(v100 + 32);
          v51 = v115 & ~v116;
          if ((*&v400[(v51 >> 3) & 0xFFFFFFFFFFFFFF8] >> v51))
          {
            v117 = ~v116;
            sub_1000360C4();
            while (1)
            {
              v118 = *(v100 + 48) + 24 * v51;
              v119 = *(v118 + 16);
              v405 = *v118;
              LOBYTE(v406) = v119;
              if (dispatch thunk of static Equatable.== infix(_:_:)())
              {
                break;
              }

              v51 = (v51 + 1) & v117;
              if (((*&v400[(v51 >> 3) & 0xFFFFFFFFFFFFFF8] >> v51) & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            v120 = sub_10002349C(v113, v382, v383);
            v121 = (*(*v396 + 216))(v120);
            v122 = 0;
            v123 = *(v121 + 16);
            v51 = v361;
            while (1)
            {
              if (v123 == v122)
              {

                goto LABEL_44;
              }

              v124 = v384;
              if (v122 >= *(v121 + 16))
              {
                goto LABEL_168;
              }

              sub_1002CDCB4(v121 + ((LOBYTE(v398[10].isa) + 32) & ~LOBYTE(v398[10].isa)) + v398[9].isa * v122, v384, type metadata accessor for HostedRoutingItem);
              v125 = *v124 == v395 && v124[1] == v397;
              if (v125)
              {
                break;
              }

              ++v122;
              v126 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v127 = v124;
              v128 = v126;
              sub_10002187C(v127, type metadata accessor for HostedRoutingItem);
              if (v128)
              {
                goto LABEL_139;
              }
            }

            sub_10002187C(v124, type metadata accessor for HostedRoutingItem);
LABEL_139:

            v292 = v366;
            v293 = v360;
            v375(v366, v374, v360);
            v294 = v393;

            v218 = v396;

            v295 = Logger.logObject.getter();
            v296 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v295, v296))
            {
              v297 = swift_slowAlloc();
              *&v401 = swift_slowAlloc();
              *v297 = 136315650;
              v298 = _typeName(_:qualified:)();
              v300 = sub_10002C9C8(v298, v299, &v401);

              *(v297 + 4) = v300;
              *(v297 + 12) = 2082;
              *(v297 + 14) = sub_10002C9C8(v367, v294, &v401);
              *(v297 + 22) = 2082;
              *&v405 = v218;
              type metadata accessor for RoutingItemDataSource(0);
              sub_1002CDD70(&qword_1005250E0, type metadata accessor for RoutingItemDataSource, &unk_100457248);
              v301 = dispatch thunk of CustomStringConvertible.description.getter();
              v303 = sub_10002C9C8(v301, v302, &v401);

              *(v297 + 24) = v303;
              _os_log_impl(&_mh_execute_header, v295, v296, "[%s] handleInteractionForConfiguration<%{public}s> - delegating to data source: %{public}s", v297, 0x20u);
              swift_arrayDestroy();

              v304 = v292;
              v305 = v360;
            }

            else
            {

              v304 = v292;
              v305 = v293;
            }

            v371(v304, v305);
            v52 = v362;
            v97 = v399;
            v53 = v364;
            v234 = type metadata accessor for RoutingItemDataSource(0);
            v231 = 0;
            v233 = 0;
LABEL_143:
            *(&v402 + 1) = v234;
            *&v403 = &off_1004C7638;
            *&v401 = v218;
            goto LABEL_162;
          }

LABEL_43:

          sub_10002349C(v113, v382, v383);
LABEL_44:
          v103 = v378;
        }
      }

      while (1)
      {
        v110 = v109 + 1;
        if (__OFADD__(v109, 1))
        {
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        if (v110 >= v108)
        {
          break;
        }

        v107 = *(v104 + 8 * v110);
        ++v109;
        if (v107)
        {
          v109 = v110;
          goto LABEL_38;
        }
      }

      v196 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v196 - 8) + 104))(v197, enum case for InternalRoutingError.itemNotFound(_:), v196);
      MRDFastSyncGroupSessionState.rawValue.getter();
      sub_10026CEA0(v198, v199, v200, v201, 1, &v401, 0.0);
      v202 = v379;
      v203 = v377;
      *v379 = v377;
      v204 = v380;
      v205 = v381;
      (*(v380 + 104))(v202, enum case for DispatchPredicate.onQueue(_:), v381);
      v172 = v203;
      v206 = _dispatchPreconditionTest(_:)();
      (*(v204 + 8))(v202, v205);
      if ((v206 & 1) == 0)
      {
        goto LABEL_171;
      }
    }

    else
    {
      sub_10026D080(&v408, &v401);

      v377 = v51;
      v89 = sub_100037234();
      if (v87 == *v89 && v88 == *(v89 + 1))
      {
      }

      else
      {
        v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v130 & 1) == 0)
        {

          *(&v402 + 1) = type metadata accessor for HostedRoutingSessionDataSource(0);
          *&v403 = &off_1004C7B88;
          v97 = v399;
LABEL_103:
          *&v401 = v97;
          goto LABEL_104;
        }
      }

      v360 = v21;
      v364 = v53;
      v362 = v52;
      v131 = sub_10002CC04();
      v132 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
      v133 = v399;
      swift_beginAccess();
      v134 = *(v133 + v132);
      v135 = v134 + 64;
      v136 = 1 << *(v134 + 32);
      if (v136 < 64)
      {
        v137 = ~(-1 << v136);
      }

      else
      {
        v137 = -1;
      }

      v138 = v137 & *(v134 + 64);
      v139 = (v136 + 63) >> 6;
      v400 = (v131 + 56);
      swift_bridgeObjectRetain_n();
      v140 = 0;
      v361 = v51;
      v378 = v134;
      while (v138)
      {
LABEL_66:
        v142 = __clz(__rbit64(v138));
        v138 &= v138 - 1;
        v143 = *(*(v134 + 56) + ((v140 << 9) | (8 * v142)));
        v145 = *(v143 + 24);
        v144 = *(v143 + 32);
        v146 = *(v143 + 40);
        *&v401 = v145;
        *(&v401 + 1) = v144;
        LOBYTE(v402) = v146;
        if (*(v131 + 16))
        {
          v384 = v143;
          v147 = v144;

          v382 = v147;
          LODWORD(v383) = v146;
          sub_10002CBE8(v145, v147, v146);
          sub_100036860();
          v148 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v149 = -1 << *(v131 + 32);
          v51 = v148 & ~v149;
          if ((*&v400[(v51 >> 3) & 0xFFFFFFFFFFFFFF8] >> v51))
          {
            v150 = ~v149;
            sub_1000360C4();
            while (1)
            {
              v151 = *(v131 + 48) + 24 * v51;
              v152 = *(v151 + 16);
              v405 = *v151;
              LOBYTE(v406) = v152;
              if (dispatch thunk of static Equatable.== infix(_:_:)())
              {
                break;
              }

              v51 = (v51 + 1) & v150;
              if (((*&v400[(v51 >> 3) & 0xFFFFFFFFFFFFFF8] >> v51) & 1) == 0)
              {
                goto LABEL_71;
              }
            }

            v153 = sub_10002349C(v145, v382, v383);
            v154 = (*(*v384 + 216))(v153);
            v155 = 0;
            v156 = *(v154 + 16);
            v51 = v361;
            while (1)
            {
              if (v156 == v155)
              {

                goto LABEL_72;
              }

              v157 = v396;
              if (v155 >= *(v154 + 16))
              {
                goto LABEL_166;
              }

              sub_1002CDCB4(v154 + ((LOBYTE(v398[10].isa) + 32) & ~LOBYTE(v398[10].isa)) + v398[9].isa * v155, v396, type metadata accessor for HostedRoutingItem);
              if (*v157 == v395 && v157[1] == v397)
              {
                break;
              }

              ++v155;
              v159 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v160 = v157;
              v161 = v159;
              sub_10002187C(v160, type metadata accessor for HostedRoutingItem);
              if (v161)
              {
                goto LABEL_97;
              }
            }

            sub_10002187C(v157, type metadata accessor for HostedRoutingItem);
LABEL_97:

            v215 = v368;
            v216 = v360;
            v375(v368, v374, v360);
            v217 = v393;

            v218 = v384;

            v219 = Logger.logObject.getter();
            v220 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v219, v220))
            {
              v221 = swift_slowAlloc();
              *&v401 = swift_slowAlloc();
              *v221 = 136315650;
              v222 = _typeName(_:qualified:)();
              v224 = sub_10002C9C8(v222, v223, &v401);

              *(v221 + 4) = v224;
              *(v221 + 12) = 2082;
              *(v221 + 14) = sub_10002C9C8(v367, v217, &v401);
              *(v221 + 22) = 2082;
              *&v405 = v218;
              type metadata accessor for RoutingItemDataSource(0);
              sub_1002CDD70(&qword_1005250E0, type metadata accessor for RoutingItemDataSource, &unk_100457248);
              v225 = dispatch thunk of CustomStringConvertible.description.getter();
              v227 = sub_10002C9C8(v225, v226, &v401);

              *(v221 + 24) = v227;
              _os_log_impl(&_mh_execute_header, v219, v220, "[%s] handleInteractionForConfiguration<%{public}s> - delegating to data source: %{public}s", v221, 0x20u);
              swift_arrayDestroy();

              v228 = v215;
              v229 = v360;
            }

            else
            {

              v228 = v215;
              v229 = v216;
            }

            v230 = (v371)(v228, v229);
            v52 = v362;
            v97 = v399;
            v53 = v364;
            v231 = (*(*v218 + 240))(v230);
            v233 = v232;
            v234 = type metadata accessor for RoutingItemDataSource(0);
            goto LABEL_143;
          }

LABEL_71:

          sub_10002349C(v145, v382, v383);
LABEL_72:
          v134 = v378;
        }
      }

      while (1)
      {
        v141 = v140 + 1;
        if (__OFADD__(v140, 1))
        {
          __break(1u);
          goto LABEL_165;
        }

        if (v141 >= v139)
        {
          break;
        }

        v138 = *(v135 + 8 * v141);
        ++v140;
        if (v138)
        {
          v140 = v141;
          goto LABEL_66;
        }
      }

      v162 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v162 - 8) + 104))(v163, enum case for InternalRoutingError.itemNotFound(_:), v162);
      MRDFastSyncGroupSessionState.rawValue.getter();
      sub_10026CEA0(v164, v165, v166, v167, 1, &v401, 0.0);
      v168 = v379;
      v169 = v377;
      *v379 = v377;
      v170 = v380;
      v171 = v381;
      (*(v380 + 104))(v168, enum case for DispatchPredicate.onQueue(_:), v381);
      v172 = v169;
      v173 = _dispatchPreconditionTest(_:)();
      (*(v170 + 8))(v168, v171);
      if ((v173 & 1) == 0)
      {
        goto LABEL_170;
      }
    }

    v405 = v401;
    v406 = v402;
    v407 = v403;
    v52 = v362;
    (*(*v362 + 160))(&v405);

    sub_100286E38(&v401);
    return v52;
  }

  if (v410 <= 7u)
  {
    if (v410 != 5)
    {
      if (v410 == 6)
      {
        v360 = v21;
        v56 = *(v408 + 16);
        v57 = *(v408 + 24);
        v58 = *(v408 + 48);
        sub_10026D080(&v408, &v401);

        v59 = v51;
        v60 = sub_100037234();
        v61 = *v60;
        v62 = *(v60 + 1);
        v125 = v56 == *v60;
        v364 = v53;
        v400 = v57;
        if (v125 && v57 == v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v371 = v49;
          sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
          v63 = sub_10024C81C();
          v64 = [objc_opt_self() localOrigin];
          v65 = objc_allocWithZone(MRPlayerPath);
          v66 = String._bridgeToObjectiveC()();
          v67 = v65;
          v68 = v399;
          v69 = [v67 initWithOrigin:v64 bundleIdentifier:v66 player:0];

          v70 = [v63 resolveExistingPlayerPath:v69];
          if (v70)
          {
            if ([v70 isResolved])
            {
              v397 = v56;
              v71 = v365;
              v72 = v360;
              v375(v365, v374, v360);
              v73 = v393;

              v74 = v70;
              v75 = Logger.logObject.getter();
              v76 = static os_log_type_t.default.getter();
              v396 = v74;

              v398 = v75;
              if (os_log_type_enabled(v75, v76))
              {
                v77 = swift_slowAlloc();
                v395 = swift_slowAlloc();
                *&v401 = swift_slowAlloc();
                *v77 = 136315650;
                v78 = _typeName(_:qualified:)();
                v80 = v51;
                v81 = sub_10002C9C8(v78, v79, &v401);

                *(v77 + 4) = v81;
                v51 = v80;
                *(v77 + 12) = 2082;
                *(v77 + 14) = sub_10002C9C8(v367, v73, &v401);
                *(v77 + 22) = 2114;
                v82 = v396;
                *(v77 + 24) = v396;
                v83 = v395;
                *v395 = v70;
                v84 = v82;
                v85 = v398;
                _os_log_impl(&_mh_execute_header, v398, v76, "[%s] handleInteractionForConfiguration<%{public}s> - inject source player path: %{public}@ into handoff context", v77, 0x20u);
                sub_1000038A4(v83, &qword_100521870, &unk_10044EA70);

                swift_arrayDestroy();

                v371(v365, v360);
                v86 = v82;
              }

              else
              {

                v371(v71, v72);
                v86 = v396;
              }

              v306 = *(*v58 + 168);
              v307 = v86;
              v306(v70);
              v68 = v399;
              v56 = v397;
            }
          }

          v308 = static String.nanoIDEightChar()();
          v310 = v309;
          v311 = *(**(v68 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore) + 280);

          v312 = v311(v308, v310, v392);
          v314 = v313;

          v315 = v314;
          v97 = v399;
          (*(*v58 + 144))(v312, v315);
          v316 = v97 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v317 = *(v316 + 8);
            ObjectType = swift_getObjectType();
            (*(v317 + 32))(v97, v56, v400, v308, v310, ObjectType, v317);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v53 = v364;
        }

        else
        {
          v97 = v399;
          v239 = v399 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v240 = *(v239 + 8);
            v241 = swift_getObjectType();
            v361 = v51;
            v242 = v52;
            v243 = *(v240 + 32);

            v244 = v241;
            v53 = v364;
            v243(v97, v56, v400, v61, v62, v244, v240);
            v52 = v242;
            v51 = v361;

            swift_unknownObjectRelease();
          }
        }

        *(&v402 + 1) = type metadata accessor for HostedRoutingSessionDataSource(0);
        *&v403 = &off_1004C7B88;

        sub_100238E4C(&v408);
        v231 = 0;
        v233 = 0;
        *&v401 = v97;
        goto LABEL_162;
      }

      v188 = swift_projectBox();
      v189 = v395;
      v190 = v382;
      (*(v395 + 16))(v54, v188, v382);
      sub_10026D080(&v408, &v401);

      v191 = v51;
      v192 = v369;
      RoutingControl.type.getter();
      v193 = v370;
      v194 = v371;
      if ((v370[11])(v192, v371) != enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
      {
        v193[1](v192, v194);
        *(&v402 + 1) = type metadata accessor for HostedRoutingSessionDataSource(0);
        *&v403 = &off_1004C7B88;
        v97 = v399;
        *&v401 = v399;
        v195 = *(v189 + 8);

        v195(v54, v190);
LABEL_160:
        sub_100238E4C(&v408);
        goto LABEL_161;
      }

      *&v401 = 0;
      *(&v401 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(116);
      v347._countAndFlagsBits = 91;
      v347._object = 0xE100000000000000;
      String.append(_:)(v347);
      v348._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v348);

      v349._object = 0x800000010043EB80;
      v349._countAndFlagsBits = 0xD000000000000024;
      String.append(_:)(v349);
      v350._countAndFlagsBits = v367;
      v350._object = v393;
      String.append(_:)(v350);
      v351._countAndFlagsBits = 0x746E6F63202D203ELL;
      v351._object = 0xED0000203A6C6F72;
      String.append(_:)(v351);
      sub_1002CDD70(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
      v352._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v352);

      v353._countAndFlagsBits = 0xD00000000000003CLL;
      v353._object = 0x800000010043E270;
      String.append(_:)(v353);
      goto LABEL_176;
    }

    v174 = v51;
    v175 = static String.nanoIDEightChar()();
    v176 = a1;
    v178 = v177;
    v97 = v399;
    v179 = *(**(v399 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore) + 280);

    v179(v175, v178, v176);

    v180 = v97 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v181 = *(v180 + 8);
      v400 = swift_getObjectType();
      v182 = sub_100037234();
      v183 = v175;
      v364 = v53;
      v184 = *v182;
      v185 = *(v182 + 1);
      v361 = v51;
      v186 = v52;
      v187 = *(v181 + 32);

      v187(v97, v184, v185, v183, v178, v400, v181);
      v52 = v186;
      v51 = v361;
      v53 = v364;

      swift_unknownObjectRelease();
    }

    else
    {
    }

    *(&v402 + 1) = type metadata accessor for HostedRoutingSessionDataSource(0);
    *&v403 = &off_1004C7B88;
    goto LABEL_103;
  }

  if (v410 - 8 < 2)
  {
LABEL_55:
    *(&v402 + 1) = type metadata accessor for HostedRoutingSessionDataSource(0);
    *&v403 = &off_1004C7B88;
    v97 = v399;
    *&v401 = v399;

    v129 = v51;
LABEL_104:

LABEL_161:
    v231 = 0;
    v233 = 0;
LABEL_162:
    v334 = *(&v402 + 1);
    v335 = v403;
    sub_1000326D8(&v401, *(&v402 + 1));
    v336 = v392;
    (*(v335 + 8))(v392, sub_1002CDD1C, v53, v334, v335);
    v337 = v389;
    (*(v386 + 16))(v389, v390, v387);

    sub_10026D080(&v408, &v405);

    v338 = v391;
    sub_10026D1C4(v336, v337, v52, v391);
    v339 = (v338 + *(v388 + 24));

    *v339 = v231;
    v339[1] = v233;
    (*(**(v97 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline) + 240))(v338);

    sub_100026A44(&v401);
    sub_10002187C(v338, type metadata accessor for RoutingEvent);
    return v52;
  }

  if (v410 != 10)
  {
LABEL_173:
    *&v401 = 0;
    *(&v401 + 1) = 0xE000000000000000;

    v341 = v51;
    _StringGuts.grow(_:)(102);
    v342._countAndFlagsBits = 91;
    v342._object = 0xE100000000000000;
    String.append(_:)(v342);
    v343._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v343);

    v344._object = 0x800000010043EB80;
    v344._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v344);
    v345._countAndFlagsBits = v367;
    v345._object = v393;
    String.append(_:)(v345);
    v346._countAndFlagsBits = 0xD00000000000003DLL;
    v346._object = 0x800000010043EBB0;
    String.append(_:)(v346);
LABEL_176:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_177;
  }

  v90 = swift_projectBox();
  (*(v395 + 16))(v377, v90, v382);
  sub_10026D080(&v408, &v401);

  v370 = v51;
  RoutingControl.target.getter();
  v91 = v372;
  v92 = v373;
  v93 = (*(v372 + 88))(v55, v373);
  if (v93 == enum case for RoutingControl.Target.session(_:))
  {
    (*(v91 + 96))(v55, v92);
    v95 = *v55;
    v94 = v55[1];
    v96 = sub_100037234();
    if (v95 == *v96 && v94 == *(v96 + 1))
    {

      v97 = v399;
      v98 = v382;
    }

    else
    {
      v235 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v97 = v399;
      v98 = v382;
      if ((v235 & 1) == 0)
      {
        *(&v402 + 1) = type metadata accessor for HostedRoutingSessionDataSource(0);
        *&v403 = &off_1004C7B88;
        *&v401 = v97;

        goto LABEL_159;
      }
    }

    v236 = (*(*v97 + 888))(0, 0, 3);
    v238 = v237;
    *(&v402 + 1) = swift_getObjectType();
    *&v403 = *(v238 + 16);
    *&v401 = v236;
LABEL_159:
    (*(v395 + 8))(v377, v98);
    goto LABEL_160;
  }

  v371 = v49;
  v360 = v21;
  if (v93 == enum case for RoutingControl.Target.item(_:))
  {
    v364 = v53;
    (*(v91 + 96))(v55, v92);
    v208 = *v55;
    v207 = v55[1];
    v211 = sub_100258614(*v55, v207, v209, v210);
    v213 = v212;
    v214 = sub_100037234();
    v97 = v399;
    if (v211 == *v214 && v213 == *(v214 + 1))
    {
    }

    else
    {
      v245 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v245 & 1) == 0)
      {

        *(&v402 + 1) = type metadata accessor for HostedRoutingSessionDataSource(0);
        *&v403 = &off_1004C7B88;
        *&v401 = v97;

        v53 = v364;
        v98 = v382;
        goto LABEL_159;
      }
    }

    v246 = sub_10002CC04();
    v396 = sub_1002586E4(v208, v207, v247, v248);
    v397 = v249;

    v250 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
    swift_beginAccess();
    v251 = *(v97 + v250);
    v252 = v251 + 64;
    v253 = 1 << *(v251 + 32);
    if (v253 < 64)
    {
      v254 = ~(-1 << v253);
    }

    else
    {
      v254 = -1;
    }

    v255 = v254 & *(v251 + 64);
    v256 = (v253 + 63) >> 6;
    v400 = (v246 + 56);
    swift_bridgeObjectRetain_n();
    v257 = 0;
    v362 = v52;
    v361 = v51;
    v372 = v251;
    while (v255)
    {
LABEL_119:
      v259 = __clz(__rbit64(v255));
      v255 &= v255 - 1;
      v260 = *(*(v251 + 56) + ((v257 << 9) | (8 * v259)));
      v262 = *(v260 + 24);
      v261 = *(v260 + 32);
      v263 = *(v260 + 40);
      *&v401 = v262;
      *(&v401 + 1) = v261;
      LOBYTE(v402) = v263;
      if (*(v246 + 16))
      {
        v384 = v260;
        v264 = v263;
        v265 = v261;

        v373 = v265;
        LODWORD(v383) = v264;
        sub_10002CBE8(v262, v265, v264);
        sub_100036860();
        v266 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v267 = -1 << *(v246 + 32);
        v268 = v266 & ~v267;
        if ((*&v400[(v268 >> 3) & 0xFFFFFFFFFFFFFF8] >> v268))
        {
          v51 = ~v267;
          sub_1000360C4();
          while (1)
          {
            v269 = *(v246 + 48) + 24 * v268;
            v270 = *(v269 + 16);
            v405 = *v269;
            LOBYTE(v406) = v270;
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              break;
            }

            v268 = (v268 + 1) & v51;
            if (((*&v400[(v268 >> 3) & 0xFFFFFFFFFFFFFF8] >> v268) & 1) == 0)
            {
              goto LABEL_124;
            }
          }

          v271 = sub_10002349C(v262, v373, v383);
          v272 = (*(*v384 + 216))(v271);
          v273 = 0;
          v274 = *(v272 + 16);
          v51 = v361;
          while (1)
          {
            if (v274 == v273)
            {

              goto LABEL_125;
            }

            v275 = v378;
            if (v273 >= *(v272 + 16))
            {
              goto LABEL_169;
            }

            sub_1002CDCB4(v272 + ((LOBYTE(v398[10].isa) + 32) & ~LOBYTE(v398[10].isa)) + v398[9].isa * v273, v378, type metadata accessor for HostedRoutingItem);
            if (*v275 == v396 && v275[1] == v397)
            {
              break;
            }

            ++v273;
            v277 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v278 = v275;
            v279 = v277;
            sub_10002187C(v278, type metadata accessor for HostedRoutingItem);
            if (v279)
            {
              goto LABEL_155;
            }
          }

          sub_10002187C(v275, type metadata accessor for HostedRoutingItem);
LABEL_155:

          v319 = v363;
          v320 = v360;
          v375(v363, v374, v360);
          v321 = v393;

          v322 = v384;

          v323 = Logger.logObject.getter();
          v324 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v323, v324))
          {
            v325 = swift_slowAlloc();
            *&v401 = swift_slowAlloc();
            *v325 = 136315650;
            v326 = _typeName(_:qualified:)();
            v328 = sub_10002C9C8(v326, v327, &v401);

            *(v325 + 4) = v328;
            *(v325 + 12) = 2082;
            *(v325 + 14) = sub_10002C9C8(v367, v321, &v401);
            *(v325 + 22) = 2082;
            *&v405 = v322;
            type metadata accessor for RoutingItemDataSource(0);
            sub_1002CDD70(&qword_1005250E0, type metadata accessor for RoutingItemDataSource, &unk_100457248);
            v329 = dispatch thunk of CustomStringConvertible.description.getter();
            v331 = sub_10002C9C8(v329, v330, &v401);

            *(v325 + 24) = v331;
            _os_log_impl(&_mh_execute_header, v323, v324, "[%s] handleInteractionForConfiguration<%{public}s> - delegating to data source: %{public}s", v325, 0x20u);
            swift_arrayDestroy();

            v332 = v319;
            v333 = v360;
          }

          else
          {

            v332 = v319;
            v333 = v320;
          }

          v371(v332, v333);
          v52 = v362;
          v97 = v399;
          v53 = v364;
          v98 = v382;
          *(&v402 + 1) = type metadata accessor for RoutingItemDataSource(0);
          *&v403 = &off_1004C7638;
          *&v401 = v322;
          goto LABEL_159;
        }

LABEL_124:

        sub_10002349C(v262, v373, v383);
LABEL_125:
        v52 = v362;
        v251 = v372;
      }
    }

    while (1)
    {
      v258 = v257 + 1;
      if (__OFADD__(v257, 1))
      {
        break;
      }

      if (v258 >= v256)
      {

        v280 = type metadata accessor for InternalRoutingError();
        sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
        swift_allocError();
        (*(*(v280 - 8) + 104))(v281, enum case for InternalRoutingError.itemNotFound(_:), v280);
        MRDFastSyncGroupSessionState.rawValue.getter();
        sub_10026CEA0(v282, v283, v284, v285, 1, &v401, 0.0);
        v286 = v379;
        v287 = v370;
        *v379 = v370;
        v288 = v380;
        v289 = v381;
        (*(v380 + 104))(v286, enum case for DispatchPredicate.onQueue(_:), v381);
        v290 = v287;
        v291 = _dispatchPreconditionTest(_:)();
        (*(v288 + 8))(v286, v289);
        if ((v291 & 1) == 0)
        {
          goto LABEL_172;
        }

        v405 = v401;
        v406 = v402;
        v407 = v403;
        (*(*v52 + 160))(&v405);

        (*(v395 + 8))(v377, v382);
        sub_100286E38(&v401);
        sub_100238E4C(&v408);
        return v52;
      }

      v255 = *(v252 + 8 * v258);
      ++v257;
      if (v255)
      {
        v257 = v258;
        goto LABEL_119;
      }
    }

LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

LABEL_177:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10029EEEC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = a2;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = a2;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (a2)
  {
    v12 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v12;
    v14 = *(a1 + 32);
    return (*(*a3 + 160))(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10029F038@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for HostedRoutingSourceSession(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1002CDCB4(v12, v10, type metadata accessor for HostedRoutingSourceSession);
      v14 = a1(v10);
      if (v3)
      {
        return sub_10002187C(v10, type metadata accessor for HostedRoutingSourceSession);
      }

      if (v14)
      {
        break;
      }

      sub_10002187C(v10, type metadata accessor for HostedRoutingSourceSession);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_100032E70(v10, v18, type metadata accessor for HostedRoutingSourceSession);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t *sub_10029F204()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for HostedRoutingItem(0);
  v139 = *(v3 - 8);
  v140 = v3;
  v4 = __chkstk_darwin(v3);
  v137 = v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v142 = (v123 - v6);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v123 - v12;
  v14 = type metadata accessor for HostedRoutingSourceSession(0);
  v136 = *(v14 - 8);
  v15 = __chkstk_darwin(v14 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = v123 - v17;
  v19 = __chkstk_darwin(v16);
  v20 = __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v123 - v21);
  v24 = v123 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = v123 - v26;
  result = __chkstk_darwin(v25);
  v33 = v123 - v32;
  if (*(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_supportActiveSession) != 1)
  {
    return result;
  }

  v129 = v31;
  v124 = v30;
  v126 = v2;
  v125 = v11;
  v130 = v29;
  v127 = v8;
  v128 = v7;
  v34 = (v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v35 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
  if (!v35)
  {
    goto LABEL_48;
  }

  v141 = result;
  v36 = *v34;
  v37 = v34[1];
  sub_1002D18E0(*v34, v37, v35);

  sub_1002CDC70(v36, v37, v35);
  if (v37)
  {
    v138 = v33;
    v135 = v13;
    result = (*(*v1 + 440))();
    v38 = result;
    v39 = result[2];
    if (v39)
    {
      v40 = 0;
      while (1)
      {
        if (v40 >= *(v38 + 16))
        {
          __break(1u);
          goto LABEL_67;
        }

        sub_1002CDCB4(v38 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v40, v24, type metadata accessor for HostedRoutingSourceSession);
        if (sub_100259F30(*(v24 + 2), *(v24 + 3), v36, v37))
        {
          break;
        }

        ++v40;
        result = sub_10002187C(v24, type metadata accessor for HostedRoutingSourceSession);
        if (v39 == v40)
        {
          goto LABEL_9;
        }
      }

      sub_100032E70(v24, v27, type metadata accessor for HostedRoutingSourceSession);
      v42 = v27;
      v41 = v138;
      sub_100032E70(v42, v138, type metadata accessor for HostedRoutingSourceSession);
      v43 = sub_100034D68();
      if (!v43[2] || (v44 = sub_10000698C(v36, v37), (v45 & 1) == 0))
      {

        sub_10002187C(v41, type metadata accessor for HostedRoutingSourceSession);
        goto LABEL_17;
      }

      v46 = *(v43[7] + 8 * v44);

      if (*(v46 + 16) == 2)
      {
        v47 = sub_100028D40();
        v48 = v127;
        v49 = v135;
        (*(v127 + 16))(v135, v47, v128);
        v50 = v141;
        sub_1002CDCB4(v41, v141, type metadata accessor for HostedRoutingSourceSession);

        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v143[0] = v140;
          *v53 = 136315650;
          v54 = _typeName(_:qualified:)();
          v142 = v46;
          v56 = sub_10002C9C8(v54, v55, v143);

          *(v53 + 4) = v56;
          *(v53 + 12) = 2082;
          v57 = sub_10002C9C8(v36, v37, v143);

          *(v53 + 14) = v57;
          *(v53 + 22) = 2082;
          v58 = *v50;
          v59 = v50[1];

          sub_10002187C(v50, type metadata accessor for HostedRoutingSourceSession);
          v60 = sub_10002C9C8(v58, v59, v143);

          *(v53 + 24) = v60;
          _os_log_impl(&_mh_execute_header, v51, v52, "[%s] updateActiveSessionIdentifierIfNeeded - matched session elements groupIdentifier: %{public}s to session: %{public}s", v53, 0x20u);
          swift_arrayDestroy();

          (*(v48 + 8))(v135, v128);
        }

        else
        {

          sub_10002187C(v50, type metadata accessor for HostedRoutingSourceSession);
          (*(v48 + 8))(v49, v128);
        }

        v115 = v138;
        v116 = *v138;
        v117 = v138[1];
        v118 = *(*v1 + 688);

        v118(v116, v117);

        return sub_10002187C(v115, type metadata accessor for HostedRoutingSourceSession);
      }

LABEL_59:
      sub_10002187C(v41, type metadata accessor for HostedRoutingSourceSession);

      v41 = v34[2];
      if (v41)
      {
        goto LABEL_18;
      }

LABEL_48:
      v84 = sub_100037234();
      v85 = *v84;
      v86 = *(v84 + 1);
      v87 = *(*v1 + 688);

      return v87(v85, v86);
    }

LABEL_9:

    v41 = v34[2];
    if (!v41)
    {
      goto LABEL_48;
    }
  }

  else
  {
LABEL_17:
    v41 = v34[2];
    if (!v41)
    {
      goto LABEL_48;
    }
  }

LABEL_18:
  v62 = *v34;
  v61 = v34[1];
  sub_1002D18E0(*v34, v61, v41);

  sub_1002CDC70(v62, v61, v41);

  v64 = sub_100008280(v63);
  v123[1] = v41;

  result = (*(*v1 + 440))(v65);
  v66 = result;
  v134 = result[2];
  if (!v134)
  {

LABEL_47:

    goto LABEL_48;
  }

  v123[0] = v1;
  v67 = 0;
  v68 = *(v136 + 80);
  v132 = v18;
  v133 = result + ((v68 + 32) & ~v68);
  v1 = (v64 + 56);
  v131 = result;
  while (v67 < *(v66 + 16))
  {
    v69 = *(v136 + 72);
    v135 = v67;
    sub_1002CDCB4(&v133[v69 * v67], v18, type metadata accessor for HostedRoutingSourceSession);
    v34 = *(v18 + 32);
    v141 = v34[2];
    if (v141)
    {
      v70 = 0;
      v138 = _swiftEmptyArrayStorage;
      while (v70 < v34[2])
      {
        v71 = (*(v139 + 80) + 32) & ~*(v139 + 80);
        v72 = *(v139 + 72);
        v73 = v142;
        sub_1002CDCB4(v34 + v71 + v72 * v70, v142, type metadata accessor for HostedRoutingItem);
        if (*(v73 + *(v140 + 36)) == 1 && *(v64 + 16) && (v41 = *v142, v74 = v142[1], Hasher.init(_seed:)(), String.hash(into:)(), v75 = Hasher._finalize()(), v76 = -1 << *(v64 + 32), v77 = v75 & ~v76, ((*(v1 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) != 0))
        {
          v18 = ~v76;
          while (1)
          {
            v78 = (*(v64 + 48) + 16 * v77);
            v79 = *v78 == v41 && v78[1] == v74;
            if (v79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v77 = (v77 + 1) & v18;
            if (((*(v1 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          sub_100032E70(v142, v137, type metadata accessor for HostedRoutingItem);
          v80 = v138;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v144 = v80;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10002A42C(0, v80[2] + 1, 1);
            v80 = v144;
          }

          v18 = v80[2];
          v82 = v80[3];
          v41 = (v18 + 1);
          if (v18 >= v82 >> 1)
          {
            sub_10002A42C((v82 > 1), v18 + 1, 1);
            v80 = v144;
          }

          v80[2] = v41;
          v138 = v80;
          sub_100032E70(v137, v80 + v71 + v18 * v72, type metadata accessor for HostedRoutingItem);
        }

        else
        {
LABEL_23:
          sub_10002187C(v142, type metadata accessor for HostedRoutingItem);
        }

        if (++v70 == v141)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
      goto LABEL_59;
    }

    v138 = _swiftEmptyArrayStorage;
LABEL_43:
    v83 = v138[2];

    if (v83)
    {

      v88 = v129;
      sub_100032E70(v132, v129, type metadata accessor for HostedRoutingSourceSession);
      v89 = v130;
      sub_100032E70(v88, v130, type metadata accessor for HostedRoutingSourceSession);
      v90 = v89[3];
      if (!v90)
      {

        sub_10002187C(v89, type metadata accessor for HostedRoutingSourceSession);
        v1 = v123[0];
        goto LABEL_48;
      }

      v91 = v89[2];
      v1 = v123[0];
      v92 = sub_100034D68();
      if (!v92[2] || (v93 = sub_10000698C(v91, v90), (v94 & 1) == 0))
      {

        sub_10002187C(v89, type metadata accessor for HostedRoutingSourceSession);
        goto LABEL_48;
      }

      v95 = *(v92[7] + 8 * v93);

      if (*(v95 + 16) != 2)
      {
        sub_10002187C(v89, type metadata accessor for HostedRoutingSourceSession);

        goto LABEL_48;
      }

      v96 = sub_100028D40();
      v97 = v127;
      v98 = v125;
      v99 = v128;
      (*(v127 + 16))(v125, v96, v128);
      v100 = v124;
      sub_1002CDCB4(v89, v124, type metadata accessor for HostedRoutingSourceSession);

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        LODWORD(v141) = v102;
        v104 = v103;
        v142 = swift_slowAlloc();
        v143[0] = v142;
        *v104 = 136315650;
        v105 = _typeName(_:qualified:)();
        v107 = sub_10002C9C8(v105, v106, v143);

        *(v104 + 4) = v107;
        *(v104 + 12) = 2082;
        v108 = Array.description.getter();
        v110 = v109;

        v111 = sub_10002C9C8(v108, v110, v143);

        *(v104 + 14) = v111;
        *(v104 + 22) = 2082;
        v112 = *v100;
        v113 = v100[1];

        sub_10002187C(v100, type metadata accessor for HostedRoutingSourceSession);
        v114 = sub_10002C9C8(v112, v113, v143);

        *(v104 + 24) = v114;
        _os_log_impl(&_mh_execute_header, v101, v141, "[%s] updateActiveSessionIdentifierIfNeeded - matched session elements device identifiers: %{public}s to session: %{public}s", v104, 0x20u);
        swift_arrayDestroy();

        (*(v97 + 8))(v98, v128);
      }

      else
      {

        sub_10002187C(v100, type metadata accessor for HostedRoutingSourceSession);
        (*(v97 + 8))(v98, v99);
      }

      v119 = v130;
      v120 = *v130;
      v121 = v130[1];
      v122 = *(*v1 + 688);

      v122(v120, v121);

      return sub_10002187C(v119, type metadata accessor for HostedRoutingSourceSession);
    }

    v67 = v135 + 1;
    v18 = v132;
    result = sub_10002187C(v132, type metadata accessor for HostedRoutingSourceSession);
    v66 = v131;
    if (v67 == v134)
    {

      v1 = v123[0];
      goto LABEL_47;
    }
  }

LABEL_67:
  __break(1u);
  return result;
}

void sub_1002A01EC()
{
  v1 = v0;
  v149 = *v0;
  v143 = type metadata accessor for RoutingMode();
  v2 = *(v143 - 8);
  v3 = __chkstk_darwin(v143);
  v142 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v141 = &v135 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v135 - v11;
  v165 = _swiftEmptyArrayStorage;
  v13 = sub_100297780();
  v14 = [v13 discoveryMode];

  if (v14)
  {
    v15 = [*(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___discoverySession) availableEndpoints];
    if (!v15)
    {
      goto LABEL_123;
    }

    v16 = v15;
    sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1002A1410(v17);
  }

  v155 = v10;
  v137 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource;
  v18 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource);
  if (v18)
  {
    v19 = *(*v18 + 152);

    v21 = v19(v20);

    if (v21)
    {
      v22 = v21;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v23 = sub_100028D40();
    v24 = *(v7 + 16);
    v159 = v23;
    v158 = (v7 + 16);
    v157 = v24;
    (v24)(v12);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    v27 = os_log_type_enabled(v25, v26);
    v160 = v1;
    v150 = v6;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *v28 = 136315394;
      v29 = _typeName(_:qualified:)();
      v31 = sub_10002C9C8(v29, v30, &v162);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2082;
      swift_beginAccess();
      sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);

      v32 = Array.description.getter();
      v34 = v33;

      v35 = v32;
      v6 = v150;
      v36 = sub_10002C9C8(v35, v34, &v162);

      *(v28 + 14) = v36;
      v1 = v160;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%s] updateEndpoints - endpoints: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    v156 = *(v7 + 8);
    v156(v12, v6);
    v37 = v155;
    v164 = &_swiftEmptySetSingleton;
    v163 = _swiftEmptyArrayStorage;
    swift_beginAccess();
    v38 = v165;
    if (v165 >> 62)
    {
      goto LABEL_114;
    }

    v39 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
    v40 = &unk_100533000;
    v148 = v38;
    v151 = v39;
    if (v39)
    {
      v136 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints;
      v41 = v38 & 0xC000000000000001;
      v153 = v38 & 0xFFFFFFFFFFFFFF8;
      v152 = v38 + 32;
      v140 = enum case for RoutingMode.disabled(_:);
      v139 = (v2 + 13);
      v138 = (v2 + 1);
      v154 = (v7 + 8);

      v146 = 0;
      v42 = 0;
      v144 = _swiftEmptyArrayStorage;
      v2 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
      *&v43 = 136315394;
      v147 = v43;
      v44 = v151;
      v161 = v38 & 0xC000000000000001;
      while (1)
      {
        if (v41)
        {
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v42 >= *(v153 + 16))
          {
            goto LABEL_112;
          }

          v45 = *(v152 + 8 * v42);
        }

        v7 = v45;
        if (__OFADD__(v42++, 1))
        {
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          v39 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_13;
        }

        if (![v45 v2[158]])
        {
          break;
        }

LABEL_16:
        if (v42 == v44)
        {

          v40 = &unk_100533000;
          goto LABEL_76;
        }
      }

      v47 = [v7 outputDevices];
      if (!v47)
      {
        goto LABEL_69;
      }

      v48 = v47;
      sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
      v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v49 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_68:

LABEL_69:
          v157(v37, v159, v6);
          v7 = v7;
          v103 = Logger.logObject.getter();
          v104 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v162 = v107;
            *v105 = v147;
            v108 = _typeName(_:qualified:)();
            v110 = sub_10002C9C8(v108, v109, &v162);
            v44 = v151;

            *(v105 + 4) = v110;
            v1 = v160;
            *(v105 + 12) = 2114;
            *(v105 + 14) = v7;
            *v106 = v7;
            v7 = v7;
            _os_log_impl(&_mh_execute_header, v103, v104, "[%s] updateEndpoints - endpoint: %{public}@ has no output device with a groupID", v105, 0x16u);
            sub_1000038A4(v106, &qword_100521870, &unk_10044EA70);
            v37 = v155;

            sub_100026A44(v107);
            v6 = v150;
          }

          else
          {
          }

          v156(v37, v6);
          v41 = v161;
          v2 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
          goto LABEL_16;
        }
      }

      else if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      if ((v49 & 0xC000000000000001) != 0)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_113;
        }

        v50 = *(v49 + 32);
      }

      v51 = v50;

      v52 = [v51 groupID];

      if (!v52)
      {
        goto LABEL_69;
      }

      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = v164;
      if (v164[2])
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v57 = Hasher._finalize()();
        v58 = -1 << *(v56 + 32);
        v59 = v57 & ~v58;
        if ((*(v56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v59))
        {
          v60 = ~v58;
          while (1)
          {
            v61 = (v56[6] + 16 * v59);
            v62 = *v61 == v53 && v61[1] == v55;
            if (v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v59 = (v59 + 1) & v60;
            if (((*(v56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v59) & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          v38 = v148;
          v6 = v150;
          v37 = v155;
          v44 = v151;
          goto LABEL_60;
        }
      }

LABEL_39:

      sub_100008318(&v162, v53, v55);

      v63 = sub_100034D68();
      v64 = v63[2];
      v145 = v53;
      if (!v64 || (v65 = sub_10000698C(v53, v55), (v66 & 1) == 0))
      {

        v78 = v141;
        (*(*v1 + 392))(v77);
        v79 = v142;
        v80 = v143;
        (*v139)(v142, v140, v143);
        sub_1002CDD70(&qword_1005249D0, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
        v81 = dispatch thunk of static Equatable.== infix(_:_:)();
        v82 = *v138;
        (*v138)(v79, v80);
        v82(v78, v80);
        v2 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
        v44 = v151;
        if ((v81 & 1) == 0)
        {
          goto LABEL_52;
        }

        v83 = *(v1 + v137);
        if (!v83)
        {
          goto LABEL_124;
        }

        v84 = *(*v83 + 152);
        v85 = v7;

        v87 = v84(v86);

        if (v87 && (v87, v85 == v87))
        {
LABEL_52:
          type metadata accessor for HostedRoutingSessionDataSource.EndpointEntry();
          v88 = swift_allocObject();

          v7 = v7;
          v89 = v145;
          sub_1002CD69C(v7, v145, v55, v90);

          v91 = v136;
          v92 = *(v1 + v136);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v162 = v92;
          sub_1002CB7B8(v88, v89, v55, isUniquelyReferenced_nonNull_native);

          *(v1 + v91) = v162;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v144 = v163;
        }

        else
        {
        }

        v38 = v148;
        goto LABEL_59;
      }

      v67 = *(v63[7] + 8 * v65);

      sub_100298A90(v7);
      v146 |= v68;
      v70 = *(v67 + 24);
      v69 = *(v67 + 32);

      v71 = [v7 uniqueIdentifier];
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      if (v70 == v72 && v69 == v74)
      {

        v1 = v160;
        v38 = v148;
        v44 = v151;
      }

      else
      {
        v135 = v67;
        v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v38 = v148;
        v44 = v151;
        if ((v76 & 1) == 0)
        {
          v94 = v135;
          v1 = v160;
          v95 = v145;
          if ((*(v135 + 16) & 0xFE) != 2)
          {
            if (!*(sub_100299BEC() + 2) || (sub_10000698C(v95, v55), (v96 & 1) == 0))
            {

              goto LABEL_58;
            }

            v94 = v135;
          }

          v97 = [v7 uniqueIdentifier];
          v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v100 = v99;

          *(v94 + 24) = v98;
          *(v94 + 32) = v100;
          v44 = v151;

          type metadata accessor for HostedRoutingSessionDataSource.EndpointEntry();
          v101 = swift_allocObject();
          v7 = v7;
          sub_1002CD69C(v7, v145, v55, v102);

          sub_1002A1500(v101);

          goto LABEL_59;
        }

        v1 = v160;
      }

LABEL_58:

LABEL_59:
      v6 = v150;
      v37 = v155;
LABEL_60:
      v41 = v161;
      goto LABEL_16;
    }

    v146 = 0;
    v144 = _swiftEmptyArrayStorage;
LABEL_76:
    v111 = sub_100034D68();
    v2 = (v111 + 64);
    v112 = 1 << v111[32];
    if (v112 < 64)
    {
      v113 = ~(-1 << v112);
    }

    else
    {
      v113 = -1;
    }

    v38 = v113 & *(v111 + 8);
    v159 = v40[126];
    v1 = (v112 + 63) >> 6;
    v161 = v111;

    LODWORD(v158) = 0;
    v6 = 0;
LABEL_80:
    v114 = v164;
    v37 = (v164 + 7);
    while (v38)
    {
LABEL_87:
      v116 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v117 = (*(v161 + 48) + ((v6 << 10) | (16 * v116)));
      v119 = *v117;
      v118 = v117[1];
      if (!v114[2])
      {

LABEL_96:
        v125 = *(v160 + v159);

        v126 = sub_10000698C(v119, v118);
        v128 = v127;

        if (v128)
        {
          v129 = swift_isUniquelyReferenced_nonNull_native();
          v162 = v125;
          if (!v129)
          {
            sub_1002CBC28();
            v125 = v162;
          }

          sub_1001DEE44(v126, v125);
        }

        *(v160 + v159) = v125;

        LODWORD(v158) = 1;
        goto LABEL_80;
      }

      Hasher.init(_seed:)();

      String.hash(into:)();
      v120 = Hasher._finalize()();
      v121 = -1 << *(v114 + 32);
      v122 = v120 & ~v121;
      if (((*&v37[(v122 >> 3) & 0xFFFFFFFFFFFFFF8] >> v122) & 1) == 0)
      {
        goto LABEL_96;
      }

      v7 = ~v121;
      while (1)
      {
        v123 = (v114[6] + 16 * v122);
        v124 = *v123 == v119 && v123[1] == v118;
        if (v124 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v122 = (v122 + 1) & v7;
        if (((*&v37[(v122 >> 3) & 0xFFFFFFFFFFFFFF8] >> v122) & 1) == 0)
        {
          goto LABEL_96;
        }
      }
    }

    while (1)
    {
      v115 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_111;
      }

      if (v115 >= v1)
      {
        break;
      }

      v38 = v2[v115];
      ++v6;
      if (v38)
      {
        v6 = v115;
        goto LABEL_87;
      }
    }

    v130 = v144;
    if (v144 >> 62)
    {
      v131 = _CocoaArrayWrapper.endIndex.getter();
      if (v131)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v131 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v131)
      {
LABEL_104:
        if (v131 >= 1)
        {
          for (i = 0; i != v131; ++i)
          {
            if ((v130 & 0xC000000000000001) != 0)
            {
              v133 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v133 = *(v130 + 8 * i + 32);
            }

            sub_1002A1500(v133);
          }

          goto LABEL_116;
        }

        __break(1u);
        goto LABEL_122;
      }
    }

LABEL_116:

    if ((v146 | v158))
    {
      v134 = "updateEndpoints - removed mapped endpoint entry";
      if (v146)
      {
        v134 = "updateEndpoints - updated mapped endpoint entry";
      }

      sub_100033F40(0xD00000000000002FLL, (v134 - 32) | 0x8000000000000000);
    }

    return;
  }

LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
}

uint64_t sub_1002A1410(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10021B99C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1002CD460(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

double sub_1002A1500(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for RoutingMode();
  v148 = *(v5 - 8);
  v149 = v5;
  __chkstk_darwin(v5);
  v147 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v159 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v142 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v145 = &v141 - v11;
  v12 = __chkstk_darwin(v10);
  v156 = &v141 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v141 - v15;
  __chkstk_darwin(v14);
  v18 = &v141 - v17;
  v20 = *(a1 + 48);
  v19 = *(a1 + 56);
  v21 = *(a1 + 72);
  v153 = *(a1 + 64);
  v154 = v4;
  v22 = *(v4 + 368);

  v158 = v21;

  v151 = v22(v23);
  v24 = *(sub_100299BEC() + 2);
  v157 = v19;
  v155 = v20;
  if (v24)
  {
    sub_10000698C(v20, v19);
    v26 = v25;

    v27 = v20;
    v28 = v158;
    if (v26)
    {
      if (*(sub_100034D68() + 2) && (sub_10000698C(v27, v19), (v29 & 1) != 0))
      {

        v30 = sub_100028D40();
        (*(v159 + 16))(v18, v30, v7);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v146 = v7;
          v34 = v33;
          aBlock[0] = swift_slowAlloc();
          *v34 = 136315650;
          v35 = _typeName(_:qualified:)();
          LODWORD(v152) = v32;
          v37 = sub_10002C9C8(v35, v36, aBlock);

          *(v34 + 4) = v37;
          *(v34 + 12) = 2082;
          *(v34 + 14) = sub_10002C9C8(v153, v28, aBlock);
          *(v34 + 22) = 2082;

          v38 = sub_1002992B0();
          v40 = v39;

          v41 = sub_10002C9C8(v38, v40, aBlock);
          v19 = v157;

          *(v34 + 24) = v41;
          _os_log_impl(&_mh_execute_header, v31, v152, "[%s] connectToEntry<%{public}s> - removing existing entry in timeout: %{public}s", v34, 0x20u);
          swift_arrayDestroy();

          v7 = v146;
          v27 = v155;
        }

        (*(v159 + 8))(v18, v7);
        v42 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints;
        aBlock[0] = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints);

        sub_10029A840(0, v27, v19);

        *(v2 + v42) = aBlock[0];
      }

      else
      {

        v43 = sub_100028D40();
        (*(v159 + 16))(v16, v43, v7);

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          aBlock[0] = v152;
          *v46 = 136315650;
          v47 = _typeName(_:qualified:)();
          v49 = sub_10002C9C8(v47, v48, aBlock);

          *(v46 + 4) = v49;
          v19 = v157;
          *(v46 + 12) = 2082;
          *(v46 + 14) = sub_10002C9C8(v153, v28, aBlock);
          *(v46 + 22) = 2082;
          v27 = v155;
          *(v46 + 24) = sub_10002C9C8(v155, v19, aBlock);
          _os_log_impl(&_mh_execute_header, v44, v45, "[%s] connectToEntry<%{public}s> - expected existing entry in timeout for groupIdentifier: %{public}s but found none", v46, 0x20u);
          swift_arrayDestroy();
        }

        (*(v159 + 8))(v16, v7);
      }

      v50 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___failedEndpointReconnectIntervals;
      aBlock[0] = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___failedEndpointReconnectIntervals);

      sub_10029A938(0, 1, v27, v19);
      *(v2 + v50) = aBlock[0];
    }
  }

  else
  {

    v27 = v20;
    v28 = v158;
  }

  v51 = swift_allocObject();
  v52 = sub_100034D68();
  if (v52[2] && (v53 = sub_10000698C(v27, v19), (v54 & 1) != 0))
  {
    v55 = *(v52[7] + 8 * v53);

    *(v51 + 16) = v55;
    if (v55 == a1)
    {
      *(v51 + 16) = 0;
    }
  }

  else
  {

    *(v51 + 16) = 0;
  }

  v152 = v51;
  v56 = sub_100028D40();
  v57 = *(v159 + 16);
  v58 = v156;
  v143 = v56;
  v144 = v57;
  (v57)(v156);

  v59 = Logger.logObject.getter();
  v60 = v7;
  v61 = static os_log_type_t.default.getter();

  v62 = os_log_type_enabled(v59, v61);
  v150 = v2;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v146 = v60;
    v64 = v63;
    v141 = swift_slowAlloc();
    aBlock[0] = v141;
    *v64 = 136316162;
    v65 = _typeName(_:qualified:)();
    v67 = v28;
    v68 = sub_10002C9C8(v65, v66, aBlock);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2082;
    *(v64 + 14) = sub_10002C9C8(v153, v67, aBlock);
    *(v64 + 22) = 2082;
    v69 = *(a1 + 24);
    v70 = *(a1 + 32);

    v71 = sub_10002C9C8(v69, v70, aBlock);

    *(v64 + 24) = v71;
    *(v64 + 32) = 2082;
    *(v64 + 34) = sub_10002C9C8(v155, v157, aBlock);
    *(v64 + 42) = 2082;
    v72 = v147;
    (*(*v2 + 392))();
    sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
    v73 = v149;
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v75;
    (*(v148 + 8))(v72, v73);
    v77 = sub_10002C9C8(v74, v76, aBlock);
    v78 = v151;

    *(v64 + 44) = v77;
    _os_log_impl(&_mh_execute_header, v59, v61, "[%s] connectToEntry<%{public}s> - connect to endpoint: %{public}s with groupID: %{public}s, routingMode: %{public}s", v64, 0x34u);
    swift_arrayDestroy();

    v79 = *(v159 + 8);
    v80 = v146;
    v79(v156, v146);
  }

  else
  {

    v79 = *(v159 + 8);
    v79(v58, v60);
    v80 = v60;
    v78 = v151;
  }

  *(a1 + 16) = 1;
  if ([*(a1 + 88) isConnected])
  {
    v81 = v78;
    v82 = *(v152 + 16);
    v83 = v150;
    v84 = v158;
    if (v82)
    {
      v156 = v79;
      if (v82[3] == *(a1 + 24) && v82[4] == *(a1 + 32) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v85 = v145;
        v144(v145, v143, v80);
        swift_retain_n();

        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v146 = v80;
          v89 = v88;
          aBlock[0] = swift_slowAlloc();
          *v89 = 136315906;
          v90 = _typeName(_:qualified:)();
          v92 = v87;
          v93 = sub_10002C9C8(v90, v91, aBlock);

          *(v89 + 4) = v93;
          *(v89 + 12) = 2082;
          v94 = sub_10002C9C8(v153, v84, aBlock);

          *(v89 + 14) = v94;
          *(v89 + 22) = 2082;

          v95 = sub_1002992B0();
          v97 = v96;

          v98 = sub_10002C9C8(v95, v97, aBlock);

          *(v89 + 24) = v98;
          *(v89 + 32) = 2082;
          v99 = sub_1002992B0();
          v101 = sub_10002C9C8(v99, v100, aBlock);

          *(v89 + 34) = v101;
          v102 = v151;
          _os_log_impl(&_mh_execute_header, v86, v92, "[%s] connectToEntry<%{public}s> - pre-connected, replacing: %{public}s with: %{public}s", v89, 0x2Au);
          swift_arrayDestroy();

          v83 = v150;
          (v156)(v145, v146);
          v103 = v155;
        }

        else
        {

          (v156)(v85, v80);
          v103 = v155;
          v102 = v81;
        }

        v119 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints;
        v120 = *(v83 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v120;
        sub_1002CB7B8(a1, v103, v157, isUniquelyReferenced_nonNull_native);

        *(v83 + v119) = aBlock[0];

        sub_1002A4A5C(a1);
      }

      else
      {
        v122 = v142;
        v144(v142, v143, v80);
        v123 = v157;

        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v126 = 136316162;
          v127 = _typeName(_:qualified:)();
          v129 = sub_10002C9C8(v127, v128, aBlock);
          v146 = v80;
          v130 = v129;

          *(v126 + 4) = v130;
          *(v126 + 12) = 2082;
          v131 = sub_10002C9C8(v153, v84, aBlock);

          *(v126 + 14) = v131;
          *(v126 + 22) = 2082;
          v132 = v82[8];
          v133 = v82[9];

          v134 = sub_10002C9C8(v132, v133, aBlock);

          *(v126 + 24) = v134;
          *(v126 + 32) = 2082;
          v135 = sub_10002C9C8(v155, v123, aBlock);

          *(v126 + 34) = v135;
          *(v126 + 42) = 2082;
          v136 = v82[3];
          v137 = v82[4];

          v138 = sub_10002C9C8(v136, v137, aBlock);

          *(v126 + 44) = v138;
          _os_log_impl(&_mh_execute_header, v124, v125, "[%s] connectToEntry<%{public}s> - pre-connected, dropping entry because existing entry: %{public}s for groupID: %{public}s expects different endpoint: %{public}s", v126, 0x34u);
          swift_arrayDestroy();

          v139 = v142;
          v140 = v146;
        }

        else
        {

          v139 = v122;
          v140 = v80;
        }

        (v156)(v139, v140);
      }
    }

    else
    {

      sub_1002A4A5C(a1);
    }
  }

  else
  {
    v104 = *(a1 + 88);
    v105 = objc_allocWithZone(MRRequestDetails);
    v106 = v104;
    v107 = String._bridgeToObjectiveC()();
    v108 = v153;
    v109 = v158;
    v110 = String._bridgeToObjectiveC()();
    v111 = String._bridgeToObjectiveC()();
    v112 = [v105 initWithName:v107 requestID:v110 reason:v111 userInitiated:0];

    v113 = swift_allocObject();
    v114 = v152;
    v113[2] = v78;
    v113[3] = v114;
    v115 = v155;
    v113[4] = v150;
    v113[5] = v115;
    v113[6] = v157;
    v113[7] = v108;
    v113[8] = v109;
    v113[9] = a1;
    v113[10] = v154;
    aBlock[4] = sub_1002D1CC4;
    aBlock[5] = v113;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001BC53C;
    aBlock[3] = &unk_1004C8040;
    v116 = _Block_copy(aBlock);

    v117 = v78;

    [v106 connectToExternalDeviceWithOptions:0 details:v112 completion:v116];

    _Block_release(v116);
  }

  return result;
}

double sub_1002A2648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32 = a2;
  v27 = a10;
  v28 = a7;
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v29 = *(v19 - 8);
  v30 = v19;
  __chkstk_darwin(v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = a6;
  v23 = v27;
  v22[6] = v28;
  v22[7] = a8;
  v22[8] = a9;
  v22[9] = a1;
  v22[10] = v23;
  aBlock[4] = sub_1002D1CFC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C8090;
  v24 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v31 + 8))(v18, v16);
  (*(v29 + 8))(v21, v30);

  return result;
}

void sub_1002A296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), void *a7, uint64_t a8, uint64_t a9)
{
  v212 = a8;
  v213 = a7;
  v217 = a4;
  v218 = a6;
  v215 = a5;
  v216 = a3;
  v214 = a9;
  v208 = type metadata accessor for DispatchWorkItemFlags();
  v207 = *(v208 - 8);
  __chkstk_darwin(v208);
  v205 = &v192[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v206 = type metadata accessor for DispatchQoS();
  v204 = *(v206 - 8);
  __chkstk_darwin(v206);
  v203 = &v192[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v211 = type metadata accessor for DispatchTime();
  v202 = *(v211 - 8);
  v13 = __chkstk_darwin(v211);
  v200 = &v192[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v201 = &v192[-v15];
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v210 = &v192[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v209 = &v192[-v21];
  v22 = __chkstk_darwin(v20);
  v24 = &v192[-v23];
  v25 = __chkstk_darwin(v22);
  v27 = &v192[-v26];
  v28 = __chkstk_darwin(v25);
  v30 = &v192[-v29];
  v31 = __chkstk_darwin(v28);
  v33 = &v192[-v32];
  __chkstk_darwin(v31);
  v35 = &v192[-v34];
  swift_beginAccess();
  v36 = *(a1 + 16);
  if (v36)
  {
    v199 = a2;
    v37 = sub_100034D68();
    v38 = v37[2];

    if (v38)
    {

      v39 = v217;
      v40 = sub_10000698C(v216, v217);
      if (v41)
      {
        v42 = *(v37[7] + 8 * v40);

        if (v42 == v36)
        {
          v43 = v213;
          if (v36[3] == v213[3] && v36[4] == v213[4] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v44 = sub_100028D40();
            v45 = *(v17 + 16);
            v197 = v16;
            v45(v35, v44, v16);

            v46 = v218;

            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.default.getter();

            LODWORD(v196) = v48;
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v198 = v17;
              v50 = v49;
              aBlock = swift_slowAlloc();
              *v50 = 136315906;
              v51 = _typeName(_:qualified:)();
              v195 = v47;
              v53 = sub_10002C9C8(v51, v52, &aBlock);

              *(v50 + 4) = v53;
              *(v50 + 12) = 2082;
              *(v50 + 14) = sub_10002C9C8(v215, v46, &aBlock);
              *(v50 + 22) = 2082;

              v54 = sub_1002992B0();
              v56 = v55;

              v57 = sub_10002C9C8(v54, v56, &aBlock);

              *(v50 + 24) = v57;
              *(v50 + 32) = 2082;
              v58 = sub_1002992B0();
              v60 = sub_10002C9C8(v58, v59, &aBlock);

              *(v50 + 34) = v60;
              v43 = v213;
              v61 = v195;
              _os_log_impl(&_mh_execute_header, v195, v196, "[%s] connectToEntry<%{public}s> - replacing: %{public}s with: %{public}s", v50, 0x2Au);
              swift_arrayDestroy();

              v62 = v198;
            }

            else
            {

              v62 = v17;
            }

            (*(v62 + 1))(v35, v197);
            a2 = v199;
            v93 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints;
            v94 = *(v199 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints);

            v95 = v217;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v94;
            sub_1002CB7B8(v43, v216, v95, isUniquelyReferenced_nonNull_native);

            *(a2 + v93) = aBlock;

            v67 = v17;
            goto LABEL_26;
          }

          v141 = sub_100028D40();
          v142 = v17;
          v143 = v39;
          v69 = v16;
          (*(v17 + 16))(v33, v141, v16);

          v144 = v218;

          v145 = Logger.logObject.getter();
          v146 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v145, v146))
          {
            v147 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            v198 = v142;
            aBlock = v148;
            *v147 = 136316162;
            v149 = _typeName(_:qualified:)();
            v151 = sub_10002C9C8(v149, v150, &aBlock);
            v197 = v69;
            v152 = v151;

            *(v147 + 4) = v152;
            *(v147 + 12) = 2082;
            *(v147 + 14) = sub_10002C9C8(v215, v144, &aBlock);
            *(v147 + 22) = 2082;
            v153 = v36[8];
            v154 = v36[9];

            v155 = sub_10002C9C8(v153, v154, &aBlock);

            *(v147 + 24) = v155;
            *(v147 + 32) = 2082;
            *(v147 + 34) = sub_10002C9C8(v216, v143, &aBlock);
            *(v147 + 42) = 2082;
            v156 = v36[3];
            v157 = v36[4];

            v158 = sub_10002C9C8(v156, v157, &aBlock);

            *(v147 + 44) = v158;
            _os_log_impl(&_mh_execute_header, v145, v146, "[%s] connectToEntry<%{public}s> - dropping entry because existing entry: %{public}s for groupID: %{public}s expects different endpoint: %{public}s", v147, 0x34u);
            swift_arrayDestroy();

            (*(v198 + 1))(v33, v197);
            return;
          }

          v91 = *(v142 + 8);
          v92 = v33;
LABEL_23:
          v91(v92, v69);
          return;
        }

LABEL_19:
        v77 = sub_100028D40();
        v78 = v17;
        (*(v17 + 16))(v30, v77, v16);

        v79 = v218;

        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v198 = v78;
          v83 = v82;
          aBlock = swift_slowAlloc();
          *v83 = 136315650;
          v84 = _typeName(_:qualified:)();
          v86 = sub_10002C9C8(v84, v85, &aBlock);

          *(v83 + 4) = v86;
          *(v83 + 12) = 2082;
          *(v83 + 14) = sub_10002C9C8(v215, v79, &aBlock);
          *(v83 + 22) = 2082;

          v87 = sub_1002992B0();
          v89 = v88;

          v90 = sub_10002C9C8(v87, v89, &aBlock);

          *(v83 + 24) = v90;
          _os_log_impl(&_mh_execute_header, v80, v81, "[%s] connectToEntry<%{public}s> - dropping entry because replacement target: %{public}s is no longer current", v83, 0x20u);
          swift_arrayDestroy();

          (*(v198 + 1))(v30, v16);
        }

        else
        {

          (*(v78 + 8))(v30, v16);
        }

        return;
      }
    }

    goto LABEL_19;
  }

  v63 = sub_100034D68();
  if (!v63[2] || (v64 = sub_10000698C(v216, v217), (v65 & 1) == 0))
  {

    v67 = v17;
    goto LABEL_15;
  }

  v66 = *(v63[7] + 8 * v64);

  v67 = v17;
  if (v66 != v213)
  {
LABEL_15:
    v68 = sub_100028D40();
    v69 = v16;
    (*(v67 + 16))(v27, v68, v16);
    v70 = v218;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v73 = 136315394;
      v74 = _typeName(_:qualified:)();
      v76 = sub_10002C9C8(v74, v75, &aBlock);

      *(v73 + 4) = v76;
      *(v73 + 12) = 2082;
      *(v73 + 14) = sub_10002C9C8(v215, v70, &aBlock);
      _os_log_impl(&_mh_execute_header, v71, v72, "[%s] connectToEntry<%{public}s> - dropping entry because it is no longer current", v73, 0x16u);
      swift_arrayDestroy();

      (*(v67 + 8))(v27, v16);
      return;
    }

    v91 = *(v67 + 8);
    v92 = v27;
    goto LABEL_23;
  }

LABEL_26:
  v199 = a2;
  if (v212)
  {
    swift_getErrorValue();
    v97 = v226;
    v98 = v227;
    swift_errorRetain();
    sub_1002490BC(v97, v98);
    v100 = v99 & 0x1FFFFFFFFLL;
    v101 = sub_100028D40();
    v102 = *(v67 + 16);
    if (v100 == 119)
    {
      v103 = v16;
      (v102)(v24, v101, v16);
      v104 = v218;

      v105 = v213;

      v106 = v217;

      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        aBlock = v211;
        *v109 = 136315906;
        v110 = _typeName(_:qualified:)();
        v112 = v67;
        v113 = sub_10002C9C8(v110, v111, &aBlock);

        *(v109 + 4) = v113;
        *(v109 + 12) = 2082;
        v114 = v215;
        *(v109 + 14) = sub_10002C9C8(v215, v218, &aBlock);
        *(v109 + 22) = 2082;
        v115 = [v213[11] uniqueIdentifier];
        v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v197 = v103;
        v118 = v117;

        v119 = sub_10002C9C8(v116, v118, &aBlock);

        *(v109 + 24) = v119;
        *(v109 + 32) = 2082;
        *(v109 + 34) = sub_10002C9C8(v216, v106, &aBlock);
        _os_log_impl(&_mh_execute_header, v107, v108, "[%s] connectToEntry<%{public}s> - authorization required for endpoint: %{public}s with groupID: %{public}s", v109, 0x2Au);
        swift_arrayDestroy();

        v105 = v213;

        (*(v112 + 8))(v24, v197);
        v104 = v218;
      }

      else
      {

        (*(v67 + 8))(v24, v103);
        v114 = v215;
      }

      *(v105 + 16) = 3;
      aBlock = 0;
      v221 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v159._countAndFlagsBits = 0x547463656E6E6F63;
      v159._object = 0xEF3C7972746E456FLL;
      String.append(_:)(v159);
      v160._countAndFlagsBits = v114;
      v160._object = v104;
      String.append(_:)(v160);
      v161._object = 0x800000010043F4B0;
      v161._countAndFlagsBits = 0xD000000000000023;
      String.append(_:)(v161);
      sub_100033F40(aBlock, v221);

      sub_1002A01EC();
    }

    else
    {
      v120 = v209;
      v196 = v101;
      v121 = v16;
      v198 = v102;
      v194 = v67 + 16;
      v102(v209);
      v122 = v218;

      swift_errorRetain();
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.error.getter();

      v193 = v124;
      v195 = v123;
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v125 = 136316162;
        v127 = _typeName(_:qualified:)();
        v197 = v121;
        v129 = sub_10002C9C8(v127, v128, &aBlock);

        *(v125 + 4) = v129;
        *(v125 + 12) = 2082;
        *(v125 + 14) = sub_10002C9C8(v215, v122, &aBlock);
        *(v125 + 22) = 2114;
        swift_errorRetain();
        v130 = _swift_stdlib_bridgeErrorToNSError();
        *(v125 + 24) = v130;
        *v126 = v130;
        *(v125 + 32) = 2082;
        v131 = v213;
        v132 = [v213[11] uniqueIdentifier];
        v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v135 = v134;

        v136 = sub_10002C9C8(v133, v135, &aBlock);

        *(v125 + 34) = v136;
        *(v125 + 42) = 2082;
        *(v125 + 44) = sub_10002C9C8(v216, v217, &aBlock);
        v137 = v195;
        _os_log_impl(&_mh_execute_header, v195, v193, "[%s] connectToEntry<%{public}s> - error: %{public}@ connecting to endpoint: %{public}s with groupID: %{public}s", v125, 0x34u);
        sub_1000038A4(v126, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();

        v138 = v209;
        v121 = v197;
        v209 = *(v17 + 8);
        (v209)(v138, v197);
        v139 = v199;
        v140 = v131;
      }

      else
      {

        v209 = *(v67 + 8);
        (v209)(v120, v121);
        v139 = v199;
        v140 = v213;
      }

      v162 = v210;
      v163 = v140[6];
      v164 = v140[7];
      v165 = sub_100299BEC();
      if (v165[2] && (v166 = sub_10000698C(v163, v164), (v167 & 1) != 0))
      {
        v168 = *(v165[7] + 8 * v166);

        if (v168 * 4.0 > 1800.0)
        {
          v169 = v168 * 4.0;
        }

        else
        {
          v169 = 1800.0;
        }
      }

      else
      {

        v170 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___failedEndpointReconnectIntervals;
        v171 = *(v199 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___failedEndpointReconnectIntervals);

        v172 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v171;
        v169 = 30.0;
        sub_1002CB934(v163, v164, v172, 30.0);
        *(v199 + v170) = aBlock;
        v139 = v199;
      }

      v174 = v217;
      v173 = v218;
      (v198)(v162, v196, v121);

      v175 = Logger.logObject.getter();
      v176 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v177 = 136315906;
        v178 = _typeName(_:qualified:)();
        v180 = sub_10002C9C8(v178, v179, &aBlock);

        *(v177 + 4) = v180;
        *(v177 + 12) = 2082;
        *(v177 + 14) = sub_10002C9C8(v215, v173, &aBlock);
        *(v177 + 22) = 2082;
        *(v177 + 24) = sub_10002C9C8(v216, v174, &aBlock);
        *(v177 + 32) = 2050;
        *(v177 + 34) = v169;
        _os_log_impl(&_mh_execute_header, v175, v176, "[%s] connectToEntry<%{public}s> - pause reconnection attempts for groupID: %{public}s for: %{public}fs", v177, 0x2Au);
        swift_arrayDestroy();
        v139 = v199;

        v181 = v210;
      }

      else
      {

        v181 = v162;
      }

      v182 = (v209)(v181, v121);
      v183 = v213;
      v184 = (*(*v139 + 368))(v182);
      v185 = v200;
      static DispatchTime.now()();
      v186 = v201;
      + infix(_:_:)();
      v218 = *(v202 + 8);
      v218(v185, v211);
      v187 = swift_allocObject();
      *(v187 + 16) = v139;
      *(v187 + 24) = v183;
      v224 = sub_1002D1D34;
      v225 = v187;
      aBlock = _NSConcreteStackBlock;
      v221 = 1107296256;
      v222 = sub_100003D98;
      v223 = &unk_1004C80E0;
      v188 = _Block_copy(&aBlock);

      v189 = v203;
      static DispatchQoS.unspecified.getter();
      v219 = _swiftEmptyArrayStorage;
      sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      v190 = v205;
      v191 = v208;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v188);

      (*(v207 + 8))(v190, v191);
      (*(v204 + 8))(v189, v206);
      v218(v186, v211);
    }
  }

  else
  {
    sub_1002A4A5C(v213);
  }
}

void sub_1002A4144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v60 = a2;
  v61 = a3;
  v6 = *v3;
  v7 = type metadata accessor for RoutingMode();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  v62 = *(a1 + 64);
  v63 = v13;
  v53 = v6;
  isa = v6[46].isa;

  v59 = isa(v17);
  v18 = sub_100028D40();
  v57 = v10;
  v58 = v9;
  (*(v10 + 16))(v12, v18, v9);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    aBlock[0] = v52;
    *v21 = 136316162;
    v22 = _typeName(_:qualified:)();
    v53 = v19;
    v24 = sub_10002C9C8(v22, v23, aBlock);
    v51 = v20;
    v25 = v24;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_10002C9C8(v62, v15, aBlock);
    *(v21 + 22) = 2082;
    v26 = [*(a1 + 88) uniqueIdentifier];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_10002C9C8(v27, v29, aBlock);

    *(v21 + 24) = v30;
    *(v21 + 32) = 2082;
    *(v21 + 34) = sub_10002C9C8(v63, v14, aBlock);
    *(v21 + 42) = 2082;
    v31 = v54;
    ((*v4)[49].isa)();
    sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
    v32 = v56;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    (*(v55 + 8))(v31, v32);
    v36 = sub_10002C9C8(v33, v35, aBlock);

    *(v21 + 44) = v36;
    v19 = v53;
    _os_log_impl(&_mh_execute_header, v53, v51, "[%s] connectWithAuthorization<%{public}s> - connect to endpoint: %{public}s with groupID: %{public}s, routingMode: %{public}s", v21, 0x34u);
    swift_arrayDestroy();
  }

  (*(v57 + 8))(v12, v58);
  v37 = *(a1 + 88);
  v38 = objc_allocWithZone(MRRequestDetails);
  v39 = v37;
  v40 = String._bridgeToObjectiveC()();
  v41 = String._bridgeToObjectiveC()();
  v42 = String._bridgeToObjectiveC()();
  v43 = [v38 initWithName:v40 requestID:v41 reason:v42 userInitiated:1];

  v44 = swift_allocObject();
  v45 = v59;
  v44[2] = v59;
  v44[3] = a1;
  v46 = v63;
  v44[4] = v4;
  v44[5] = v46;
  v47 = v60;
  v44[6] = v14;
  v44[7] = v47;
  v44[8] = v61;
  aBlock[4] = sub_1002D1B38;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BC53C;
  aBlock[3] = &unk_1004C7F78;
  v48 = _Block_copy(aBlock);

  v49 = v45;

  [v39 connectToExternalDeviceWithOptions:1 details:v43 completion:v48];
  _Block_release(v48);
}

double sub_1002A474C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a2;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v25 = *(v18 - 8);
  v26 = v18;
  __chkstk_darwin(v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = a7;
  v21[7] = a8;
  v21[8] = a1;
  aBlock[4] = sub_1002D1B4C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C7FC8;
  v22 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v27 + 8))(v17, v15);
  (*(v25 + 8))(v20, v26);

  return result;
}

void sub_1002A4A5C(void *a1)
{
  v2 = v1;
  v4 = a1[6];
  v5 = a1[7];
  v28 = (*(*v1 + 368))();
  v6 = a1[8];
  v7 = a1[9];
  v8 = sub_100034D68();
  if (v8[2] && (v9 = sub_10000698C(v4, v5), (v10 & 1) != 0))
  {
    v11 = *(v8[7] + 8 * v9);

    v12 = *(v11 + 64) == v6 && *(v11 + 72) == v7;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = objc_opt_self();
      v14 = [v13 defaultCenter];
      v15 = *(v11 + 88);
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      v18[2] = v28;
      v18[3] = v16;
      v18[4] = v17;
      v33 = sub_1002D1A28;
      v34 = v18;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_1002A513C;
      v32 = &unk_1004C7ED8;
      v19 = _Block_copy(&aBlock);
      v20 = v15;
      v21 = v28;

      v22 = [v14 addObserverForName:0 object:v20 queue:0 usingBlock:v19];
      _Block_release(v19);

      if ([*(v11 + 88) isConnected])
      {
        *(v11 + 16) = 2;
        *(v11 + 40) = v22;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v23 = *(v11 + 48);
        v24 = *(v11 + 56);
        aBlock = sub_100299BEC();

        sub_10029A938(0, 1, v23, v24);
        *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___failedEndpointReconnectIntervals) = aBlock;

        aBlock = 0;
        v30 = 0xE000000000000000;
        _StringGuts.grow(_:)(45);

        aBlock = 0xD000000000000015;
        v30 = 0x800000010043F450;
        v25._countAndFlagsBits = v6;
        v25._object = v7;
        String.append(_:)(v25);
        v26._countAndFlagsBits = 0xD000000000000016;
        v26._object = 0x800000010043F470;
        String.append(_:)(v26);
        sub_100033F40(aBlock, v30);

        sub_1002A5230(v11);
        sub_1002A01EC();

        swift_unknownObjectRelease();
      }

      else
      {
        v27 = [v13 defaultCenter];
        [v27 removeObserver:v22];

        sub_1002A58F4(v11);

        swift_unknownObjectRelease();
      }

      return;
    }
  }

  else
  {
  }
}

double sub_1002A4E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Notification.name.getter();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = v14;
  v17[5] = v16;
  aBlock[4] = sub_1002D1A34;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C7F28;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v21);

  return result;
}

uint64_t sub_1002A513C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_1002A5230(uint64_t a1)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(*v1 + 368);

  v50 = v5(v6);
  v7 = [*(a1 + 88) origin];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  if (*(a1 + 16) != 2)
  {

LABEL_9:

    return;
  }

  v49 = v4;
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v9 = sub_10024C81C();
  v10 = [v9 originClientForOrigin:v8];

  v11 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
  v12 = &MROutputContextDataSourceVolumeCapabilitiesUserInfoKey_ptr;
  v13 = &selRef_requestDetails;
  if (!v10 || (v14 = [v10 deviceInfo], v10, v15 = objc_msgSend(v14, "systemMediaApplication"), v14, !v15) || (static String._unconditionallyBridgeFromObjectiveC(_:)(), v15, v16 = sub_10024C81C(), v17 = objc_allocWithZone(MRPlayerPath), v18 = v8, v19 = String._bridgeToObjectiveC()(), , v20 = v17, v12 = &MROutputContextDataSourceVolumeCapabilitiesUserInfoKey_ptr, v21 = objc_msgSend(v20, "initWithOrigin:bundleIdentifier:player:", v18, v19, 0), v18, v13 = &selRef_requestDetails, v19, v22 = objc_msgSend(v16, "resolveExistingPlayerPath:", v21), v16, v21, v11 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_, !v22))
  {
LABEL_13:
    if (*(a1 + 98) == 1)
    {
      *(a1 + 98) = 0;
      sub_1002985D8(1);
      aBlock = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(77);
      v32._object = 0x800000010043F2A0;
      v32._countAndFlagsBits = 0xD00000000000004BLL;
      String.append(_:)(v32);
      v33._countAndFlagsBits = sub_1002992B0();
      String.append(_:)(v33);

      sub_100033F40(0, 0xE000000000000000);
    }

    goto LABEL_15;
  }

  if (![v22 isResolved])
  {

    goto LABEL_13;
  }

  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 localOrigin];
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = v50;
  v27[3] = v26;
  v27[4] = v49;
  v27[5] = v3;
  v27[6] = a1;
  v55 = sub_1002D198C;
  v56 = v27;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_1002C82C8;
  v54 = &unk_1004C7DE8;
  v28 = _Block_copy(&aBlock);
  v29 = v50;

  v30 = v29;

  v12 = &MROutputContextDataSourceVolumeCapabilitiesUserInfoKey_ptr;

  MRMediaRemotePlaybackSessionIsMigrationPossibleForPlayer();
  v31 = v28;
  v11 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
  _Block_release(v31);

  v13 = &selRef_requestDetails;
LABEL_15:
  v34 = sub_10024C81C();
  v35 = [objc_opt_self() v11[292]];
  sub_10033D250();
  swift_beginAccess();
  v36 = objc_allocWithZone(v12[157]);

  v37 = String._bridgeToObjectiveC()();

  v38 = [v36 initWithOrigin:v35 bundleIdentifier:v37 player:0];

  v39 = [v34 v13[37]];
  if (v39)
  {
    if ([v39 isResolved])
    {
      v40 = swift_allocObject();
      swift_weakInit();
      v41 = swift_allocObject();
      v41[2] = v50;
      v41[3] = v40;
      v41[4] = v49;
      v41[5] = v3;
      v41[6] = a1;
      v55 = sub_1002D1924;
      v56 = v41;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v53 = sub_1002C82C8;
      v54 = &unk_1004C7D98;
      v42 = _Block_copy(&aBlock);
      v43 = v50;
      v44 = v8;
      v45 = v43;

      v46 = v39;

      MRMediaRemotePlaybackSessionIsMigrationPossibleForPlayer();

      _Block_release(v42);
      return;
    }
  }

  if (*(a1 + 97) == 1)
  {
    *(a1 + 97) = 0;
    sub_10029839C(1);
    aBlock = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    v47._object = 0x800000010043F210;
    v47._countAndFlagsBits = 0xD00000000000004BLL;
    String.append(_:)(v47);
    v48._countAndFlagsBits = sub_1002992B0();
    String.append(_:)(v48);

    sub_100033F40(aBlock, v52);
  }
}

double sub_1002A58F4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchTime();
  v41 = *(v45 - 8);
  v9 = __chkstk_darwin(v45);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v15 = a1[6];
  v14 = a1[7];
  v16 = sub_100034D68();
  if (v16[2] && (v17 = sub_10000698C(v15, v14), (v18 & 1) != 0))
  {
    v39 = v6;
    v19 = *(v16[7] + 8 * v17);

    v20 = *(v19 + 64);
    v21 = *(v19 + 72);
    v40 = v19;
    v22 = a1[8];
    v23 = a1[9];
    v24 = v20 == v22 && v21 == v23;
    if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v37 = v4;
      v38 = v22;
      v25 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints;
      *&aBlock = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints);

      sub_10029A840(0, v15, v14);
      *(v2 + v25) = aBlock;

      v35 = (*(*v2 + 368))(v26);
      static DispatchTime.now()();
      + infix(_:_:)();
      v36 = v41[1];
      v41 = v23;
      v36(v11, v45);
      v50 = sub_1002D504C;
      v51 = v2;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v48 = sub_100003D98;
      v49 = &unk_1004C7E60;
      v27 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v46 = _swiftEmptyArrayStorage;
      sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      v28 = v43;
      v29 = v37;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v30 = v35;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v27);

      (*(v44 + 8))(v28, v29);
      (*(v42 + 8))(v8, v39);
      v36(v13, v45);

      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      strcpy(&aBlock, "removeEntry<");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v31._countAndFlagsBits = v38;
      v31._object = v41;
      String.append(_:)(v31);
      v32._object = 0x800000010043F410;
      v32._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v32);
      v33._countAndFlagsBits = sub_1002992B0();
      String.append(_:)(v33);

      sub_100033F40(aBlock, *(&aBlock + 1));
    }

    else
    {
    }
  }

  else
  {
  }

  return result;
}

void *sub_1002A5EA8()
{
  v1 = type metadata accessor for RoutingMode();
  v147 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v146 = &v143 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v145 = &v143 - v4;
  v167 = type metadata accessor for RoutingControl.Target();
  v169 = *(v167 - 8);
  v5 = __chkstk_darwin(v167);
  v7 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v159 = &v143 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = (&v143 - v11);
  __chkstk_darwin(v10);
  v14 = (&v143 - v13);
  v158 = type metadata accessor for ContinuousRoutingControl();
  v164 = *(v158 - 8);
  v15 = __chkstk_darwin(v158);
  v156 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v143 - v17;
  v19 = type metadata accessor for RoutingControl();
  v165 = *(v19 - 8);
  v166 = v19;
  v20 = __chkstk_darwin(v19);
  v155 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v154 = &v143 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v143 - v25;
  __chkstk_darwin(v24);
  v28 = &v143 - v27;
  v153 = v0;
  v29 = v0 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction;
  v30 = *(v0 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 8);
  v157 = v7;
  if (!v30)
  {
    goto LABEL_38;
  }

  v31 = *(v29 + 24);
  v168 = *(v29 + 16);
  v32 = *(v29 + 40);
  v163 = *(v29 + 32);
  v33 = *(v29 + 48);
  if (v33 <= 5)
  {
    if (v33 < 3)
    {

      v34 = v32;
      v35 = *(*v153 + 680);
      v162 = v30;

      v36 = v163;
      v37 = sub_10026D0B8(v168, v31, v163, v32, v33);
      if (v36 == v35(v37) && v38 == v32)
      {

        v39 = v168;
        v40 = v31;
        v41 = v36;
        v42 = v32;
        v43 = v33;
LABEL_37:
        sub_1002485A4(v39, v40, v41, v42, v43);
        goto LABEL_38;
      }

      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v79.n128_f64[0] = sub_1002485A4(v168, v31, v36, v34, v33);
      if (v78)
      {
        goto LABEL_38;
      }

LABEL_31:
      v86 = &enum case for RoutingMode.detailed(_:);
LABEL_76:
      v130 = v147;
      v131 = v145;
      (*(v147 + 104))(v145, *v86, v1, v79);
      v132 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_overrideRoutingMode;
      v133 = v153;
      swift_beginAccess();
      v134 = v146;
      (*(v130 + 16))(v146, v133 + v132, v1);
      swift_beginAccess();
      (*(v130 + 24))(v133 + v132, v131, v1);
      swift_endAccess();
      sub_100296450(v134, &OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_overrideRoutingMode, "[%s] setOverrideRoutingMode - value: %{public}s");
      v135 = *(v130 + 8);
      v135(v134, v1);
      return (v135)(v131, v1);
    }

    v60 = v163;
    if (v33 == 4)
    {

      v85 = v168;
      sub_10026D0B8(v168, v31, v60, v32, 4u);

      v62 = v85;
      v63 = v31;
      v64 = v60;
      v65 = v32;
      v66 = 4;
      goto LABEL_30;
    }

    if (v33 == 5)
    {

      v61 = v168;
      sub_10026D0B8(v168, v31, v60, v32, 5u);

      v62 = v61;
      v63 = v31;
      v64 = v60;
      v65 = v32;
      v66 = 5;
LABEL_30:
      v79.n128_f64[0] = sub_1002485A4(v62, v63, v64, v65, v66);
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (*(v29 + 48) <= 7u)
  {
    if (v33 == 6)
    {

      v81 = v168;
      v82 = v163;
      sub_10026D0B8(v168, v31, v163, v32, 6u);

      v62 = v81;
      v63 = v31;
      v64 = v82;
      v65 = v32;
      v66 = 6;
      goto LABEL_30;
    }

    v60 = v163;
    if (v33 != 7)
    {
LABEL_25:

      v80 = v168;
      sub_10026D0B8(v168, v31, v60, v32, v33);

      v39 = v80;
      v40 = v31;
      v41 = v60;
      v42 = v32;
      v43 = v33;
      goto LABEL_37;
    }
  }

  else
  {
    if (v33 - 8 < 2)
    {
      v44 = v168;
      v45 = swift_projectBox();
      v46 = v158;
      (v164[2])(v18, v45, v158);
      v162 = v30;
      v47 = v44;

      v160 = v31;
      v48 = v31;
      v49 = v163;
      LODWORD(v161) = v33;
      sub_10026D0B8(v44, v48, v163, v32, v33);
      v50 = v32;
      ContinuousRoutingControl.control.getter();
      (v164[1])(v18, v46);
      RoutingControl.target.getter();
      (v165[1])(v26, v166);
      v51 = v169;
      v52 = v167;
      if ((*(v169 + 88))(v12, v167) != enum case for RoutingControl.Target.session(_:))
      {

        v84 = sub_1002485A4(v47, v160, v49, v50, v161);
        (*(v51 + 8))(v12, v52, v84);
        goto LABEL_38;
      }

      v53 = v50;
      v54 = (*(v51 + 96))(v12, v52);
      v56 = *v12;
      v55 = v12[1];
      v57 = (*(*v153 + 680))(v54);
      v59 = v160;
      if (v56 == v57 && v55 == v58)
      {

LABEL_35:

        v39 = v168;
        v40 = v59;
        v41 = v163;
        v42 = v53;
        goto LABEL_36;
      }

      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v88)
      {
        goto LABEL_35;
      }

      v137 = sub_100037234();
      if (v56 == *v137 && v55 == *(v137 + 1))
      {
        goto LABEL_35;
      }

      v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v139 = v168;
      v140 = v59;
      v141 = v163;
      v142 = v53;
      goto LABEL_85;
    }

    v60 = v163;
    if (v33 != 10)
    {
      goto LABEL_25;
    }
  }

  v67 = v168;
  v68 = swift_projectBox();
  v69 = v166;
  (v165[2])(v28, v68, v166);
  v162 = v30;

  sub_10026D0B8(v67, v31, v60, v32, v33);
  v70 = v60;
  v71 = v32;
  RoutingControl.target.getter();
  (v165[1])(v28, v69);
  v72 = v169;
  v73 = v167;
  if ((*(v169 + 88))(v14, v167) != enum case for RoutingControl.Target.session(_:))
  {

    v83 = sub_1002485A4(v168, v31, v70, v71, v33);
    (*(v72 + 8))(v14, v73, v83);
    goto LABEL_38;
  }

  LODWORD(v161) = v33;
  v160 = v71;
  v74 = (*(v72 + 96))(v14, v73);
  v76 = *v14;
  v75 = v14[1];
  if (v76 == (*(*v153 + 680))(v74) && v75 == v77)
  {

LABEL_33:

    v39 = v168;
    v40 = v31;
    v41 = v163;
    v42 = v160;
LABEL_36:
    v43 = v161;
    goto LABEL_37;
  }

  v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v87)
  {
    goto LABEL_33;
  }

  v136 = sub_100037234();
  if (v76 == *v136 && v75 == *(v136 + 1))
  {
    goto LABEL_33;
  }

  v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v139 = v168;
  v140 = v31;
  v141 = v163;
  v142 = v160;
LABEL_85:
  v79.n128_f64[0] = sub_1002485A4(v139, v140, v141, v142, v161);
  if ((v138 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_38:
  v89 = sub_10029A79C();
  v90 = v89[2];
  v144 = v1;
  if (v90)
  {
    v91 = sub_10028ADC8(v90, 0);
    v92 = sub_10028BA90(&v170, (v91 + 4), v90, v89);
    result = sub_100045960(v170);
    v94 = v169;
    v95 = v159;
    if (v92 != v90)
    {
      goto LABEL_88;
    }

    result = v91;
  }

  else
  {

    result = _swiftEmptyArrayStorage;
    v94 = v169;
    v95 = v159;
  }

  v168 = result[2];
  if (!v168)
  {
LABEL_74:

    v86 = &enum case for RoutingMode.disabled(_:);
LABEL_75:
    v1 = v144;
    goto LABEL_76;
  }

  v96 = 0;
  v97 = 0;
  v148 = (v165 + 2);
  v152 = (v164 + 2);
  v151 = (v164 + 1);
  v163 = (v94 + 88);
  v164 = v165 + 1;
  LODWORD(v162) = enum case for RoutingControl.Target.session(_:);
  v150 = (v94 + 8);
  v149 = (v94 + 96);
  v165 = result;
  while (v97 < result[2])
  {
    v99 = *(result + v96 + 48);
    v100 = *(result + v96 + 56);
    v101 = *(result + v96 + 64);
    v102 = *(result + v96 + 72);
    v103 = *(result + v96 + 80);
    if (v103 <= 7)
    {
      if (*(result + v96 + 80) <= 4u)
      {
        if (*(result + v96 + 80) <= 1u || v103 == 2 || v103 == 4)
        {
LABEL_73:

          v86 = &enum case for RoutingMode.detailed(_:);
          goto LABEL_75;
        }

        goto LABEL_46;
      }

      if (v103 != 7)
      {
        if (v103 == 5 || v103 == 6)
        {
          goto LABEL_73;
        }

        goto LABEL_46;
      }

      goto LABEL_60;
    }

    if (v103 - 8 >= 2)
    {
      if (v103 != 10)
      {
        goto LABEL_46;
      }

LABEL_60:
      v161 = v96;
      v116 = swift_projectBox();
      v117 = v101;
      v118 = v102;
      v119 = v154;
      v120 = v166;
      (*v148)(v154, v116, v166);

      v160 = v117;
      v169 = v118;
      sub_10026D0B8(v99, v100, v117, v118, v103);
      RoutingControl.target.getter();
      v121 = v167;
      (*v164)(v119, v120);
      v122 = (*v163)(v95, v121);
      if (v122 != v162)
      {

        v127 = sub_1002485A4(v99, v100, v160, v169, v103);
        (*v150)(v95, v121, v127);
        goto LABEL_65;
      }

      v123 = v160;
      (*v149)(v95, v121);
      v125 = *v95;
      v124 = v95[1];
      v126 = sub_100037234();
      if (v125 == *v126 && v124 == *(v126 + 1))
      {

        sub_1002485A4(v99, v100, v123, v169, v103);
LABEL_65:
        result = v165;
        v96 = v161;
        goto LABEL_46;
      }

      v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1002485A4(v99, v100, v123, v169, v103);
      result = v165;
      v96 = v161;
      if ((v129 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_46;
    }

    v104 = swift_projectBox();
    v105 = v156;
    v106 = v158;
    (*v152)(v156, v104, v158);

    sub_10026D0B8(v99, v100, v101, v102, v103);
    v169 = v102;
    v107 = v155;
    ContinuousRoutingControl.control.getter();
    (*v151)(v105, v106);
    v108 = v101;
    v109 = v157;
    RoutingControl.target.getter();
    v110 = v167;
    (*v164)(v107, v166);
    v111 = (*v163)(v109, v110);
    if (v111 != v162)
    {

      v98 = sub_1002485A4(v99, v100, v108, v169, v103);
      (*v150)(v109, v110, v98);
LABEL_45:
      v95 = v159;
      result = v165;
      goto LABEL_46;
    }

    v112 = v108;
    (*v149)(v109, v110);
    v114 = *v109;
    v113 = v109[1];
    v115 = sub_100037234();
    if (v114 == *v115 && v113 == *(v115 + 1))
    {

      sub_1002485A4(v99, v100, v112, v169, v103);
      goto LABEL_45;
    }

    v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_1002485A4(v99, v100, v112, v169, v103);
    v95 = v159;
    result = v165;
    if ((v128 & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_46:
    ++v97;
    v96 += 56;
    if (v168 == v97)
    {
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

void sub_1002A6FE8()
{
  v1 = v0;
  v169 = *v0;
  v157 = type metadata accessor for DispatchWorkItemFlags();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v154 = &v148 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for DispatchQoS();
  v153 = *(v155 - 8);
  __chkstk_darwin(v155);
  v152 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for DispatchTime();
  v151 = *(v159 - 8);
  v4 = __chkstk_darwin(v159);
  v149 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v150 = &v148 - v6;
  v7 = type metadata accessor for Logger();
  v171 = *(v7 - 8);
  v172 = v7;
  v8 = __chkstk_darwin(v7);
  v165 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v164 = &v148 - v11;
  v12 = __chkstk_darwin(v10);
  v158 = &v148 - v13;
  v14 = __chkstk_darwin(v12);
  v170 = &v148 - v15;
  __chkstk_darwin(v14);
  v160 = &v148 - v16;
  v17 = type metadata accessor for RoutingMode();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v148 - v23;
  __chkstk_darwin(v22);
  v26 = &v148 - v25;
  v27 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_overrideRoutingMode;
  swift_beginAccess();
  v28 = *(v18 + 16);
  v162 = v18 + 16;
  v163 = v27;
  v161 = v28;
  v28(v26, &v1[v27], v17);
  v29 = enum case for RoutingMode.detailed(_:);
  (*(v18 + 104))(v24, enum case for RoutingMode.detailed(_:), v17);
  v30 = static RoutingMode.== infix(_:_:)();
  v31 = *(v18 + 8);
  v31(v24, v17);
  v167 = v18 + 8;
  v168 = v26;
  v166 = v31;
  v32 = (v31)(v26, v17);
  if (v30)
  {
    v165 = v17;
    v33 = sub_100297780();
    v34 = [v33 discoveryMode];

    v35 = v170;
    if (!v34)
    {
      v36 = sub_100028D40();
      v38 = v171;
      v37 = v172;
      v39 = v160;
      (*(v171 + 16))(v160, v36, v172);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v148 = v1;
        v43 = v42;
        v164 = swift_slowAlloc();
        aBlock[0] = v164;
        *v43 = 136315394;
        v44 = _typeName(_:qualified:)();
        v46 = sub_10002C9C8(v44, v45, aBlock);

        *(v43 + 4) = v46;
        *(v43 + 12) = 2082;
        v47 = v168;
        v48 = v165;
        v161(v168, v163 + v148, v165);
        sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        v166(v47, v48);
        v52 = sub_10002C9C8(v49, v51, aBlock);

        *(v43 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v40, v41, "[%s] updateDiscovery - enable for override routing mode: %{public}s", v43, 0x16u);
        swift_arrayDestroy();

        v1 = v148;

        (*(v38 + 8))(v39, v172);
      }

      else
      {

        (*(v38 + 8))(v39, v37);
      }

      [*&v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___discoverySession] setDiscoveryMode:2];
    }

    v100 = &v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken];
    if (*&v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken + 8])
    {
      v101 = sub_100028D40();
      v103 = v171;
      v102 = v172;
      (*(v171 + 16))(v35, v101, v172);

      v104 = Logger.logObject.getter();
      v105 = v1;
      v106 = static os_log_type_t.default.getter();

      v107 = os_log_type_enabled(v104, v106);
      v148 = v105;
      if (v107)
      {
        v108 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v108 = 136315394;
        v109 = _typeName(_:qualified:)();
        v111 = sub_10002C9C8(v109, v110, aBlock);

        *(v108 + 4) = v111;
        *(v108 + 12) = 2082;
        v112 = v163 + v105;
        v113 = v168;
        v114 = v165;
        v161(v168, v112, v165);
        sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
        v115 = dispatch thunk of CustomStringConvertible.description.getter();
        v117 = v116;
        v166(v113, v114);
        v118 = sub_10002C9C8(v115, v117, aBlock);

        *(v108 + 14) = v118;
        _os_log_impl(&_mh_execute_header, v104, v106, "[%s] updateDiscovery - cancel scheduled disable for override routing mode: %{public}s", v108, 0x16u);
        swift_arrayDestroy();

        (*(v103 + 8))(v170, v172);
      }

      else
      {

        (*(v103 + 8))(v35, v102);
      }

      *v100 = 0;
      *(v100 + 1) = 0;
    }

LABEL_30:
    sub_1002A01EC();
    return;
  }

  v53 = *(*v1 + 392);
  v54 = v1;
  v170 = (*v1 + 392);
  v53(v32);
  v55 = (*(v18 + 88))(v21, v17);
  if (v55 == enum case for RoutingMode.disabled(_:) || v55 == enum case for RoutingMode.prewarm(_:))
  {
    v75 = sub_100297780();
    v76 = [v75 discoveryMode];

    if (v76 == 2)
    {
      v77 = &v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken];
      if (!*&v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken + 8])
      {
        v78 = static String.nanoIDFourChar()();
        *v77 = v78;
        v77[1] = v79;
        v165 = v79;

        v80 = sub_100028D40();
        v82 = v171;
        v81 = v172;
        v83 = v158;
        (*(v171 + 16))(v158, v80, v172);

        v84 = v1;
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v164 = v78;
          v88 = v87;
          v163 = swift_slowAlloc();
          aBlock[0] = v163;
          *v88 = 136315394;
          v89 = _typeName(_:qualified:)();
          v91 = v53;
          v92 = sub_10002C9C8(v89, v90, aBlock);

          *(v88 + 4) = v92;
          *(v88 + 12) = 2082;
          v94 = v168;
          v91(v93);
          sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
          v95 = dispatch thunk of CustomStringConvertible.description.getter();
          v97 = v96;
          v166(v94, v17);
          v98 = sub_10002C9C8(v95, v97, aBlock);

          *(v88 + 14) = v98;
          _os_log_impl(&_mh_execute_header, v85, v86, "[%s] updateDiscovery - schedule disable for routing mode: %{public}s", v88, 0x16u);
          swift_arrayDestroy();

          v78 = v164;

          v99 = (*(v82 + 8))(v158, v172);
        }

        else
        {

          v99 = (*(v82 + 8))(v83, v81);
        }

        v137 = v169;
        v138 = *(*v84 + 368);
        v148 = v84;
        v171 = v138(v99);
        v139 = v149;
        static DispatchTime.now()();
        type metadata accessor for Preferences();
        static Preferences.discoveryHysteresis.getter();
        v140 = v150;
        + infix(_:_:)();
        v172 = *(v151 + 8);
        v172(v139, v159);
        v141 = swift_allocObject();
        swift_weakInit();
        v142 = swift_allocObject();
        v142[2] = v141;
        v142[3] = v78;
        v142[4] = v165;
        v142[5] = v137;
        aBlock[4] = sub_1002D1A1C;
        aBlock[5] = v142;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100003D98;
        aBlock[3] = &unk_1004C7E38;
        v143 = _Block_copy(aBlock);

        v144 = v152;
        static DispatchQoS.unspecified.getter();
        v173 = _swiftEmptyArrayStorage;
        sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1001BC5A8(&unk_100522280, &unk_10044F590);
        sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
        v145 = v154;
        v146 = v157;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v147 = v171;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v143);

        (*(v156 + 8))(v145, v146);
        (*(v153 + 8))(v144, v155);
        v172(v140, v159);
      }
    }

    goto LABEL_30;
  }

  if (v55 == enum case for RoutingMode.localNetwork(_:) || v55 == v29)
  {
    v56 = sub_100297780();
    v57 = [v56 discoveryMode];

    v58 = v164;
    if (!v57)
    {
      v59 = sub_100028D40();
      v61 = v171;
      v60 = v172;
      (*(v171 + 16))(v58, v59, v172);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v163 = v53;
        v65 = v64;
        v162 = swift_slowAlloc();
        aBlock[0] = v162;
        *v65 = 136315394;
        v66 = _typeName(_:qualified:)();
        v68 = sub_10002C9C8(v66, v67, aBlock);

        *(v65 + 4) = v68;
        *(v65 + 12) = 2082;
        v70 = v168;
        v163(v69);
        sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        v166(v70, v17);
        v74 = sub_10002C9C8(v71, v73, aBlock);
        v1 = v54;

        *(v65 + 14) = v74;
        _os_log_impl(&_mh_execute_header, v62, v63, "[%s] updateDiscovery - enable for routing mode: %{public}s", v65, 0x16u);
        swift_arrayDestroy();

        v53 = v163;

        (*(v61 + 8))(v164, v60);
      }

      else
      {

        (*(v61 + 8))(v58, v60);
      }

      [*&v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___discoverySession] setDiscoveryMode:2];
    }

    v119 = &v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken];
    v120 = v165;
    if (*&v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken + 8])
    {
      v121 = v17;
      v122 = sub_100028D40();
      v123 = v171;
      (*(v171 + 16))(v120, v122, v172);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v163 = v53;
        v127 = v126;
        v164 = swift_slowAlloc();
        aBlock[0] = v164;
        *v127 = 136315394;
        v128 = _typeName(_:qualified:)();
        v130 = sub_10002C9C8(v128, v129, aBlock);

        *(v127 + 4) = v130;
        *(v127 + 12) = 2082;
        v132 = v168;
        v163(v131);
        sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
        v133 = dispatch thunk of CustomStringConvertible.description.getter();
        v135 = v134;
        v166(v132, v121);
        v136 = sub_10002C9C8(v133, v135, aBlock);

        *(v127 + 14) = v136;
        _os_log_impl(&_mh_execute_header, v124, v125, "[%s] updateDiscovery - cancel scheduled disable for routing mode: %{public}s", v127, 0x16u);
        swift_arrayDestroy();

        (*(v123 + 8))(v165, v172);
      }

      else
      {

        (*(v123 + 8))(v120, v172);
      }

      *v119 = 0;
      *(v119 + 1) = 0;
    }

    goto LABEL_30;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

double sub_1002A836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RoutingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v37 = v7;
    v17 = (Strong + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken);
    v18 = *(Strong + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken + 8);
    if (v18)
    {
      v19 = *v17 == a2 && v18 == a3;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v20 = sub_100028D40();
        (*(v11 + 16))(v13, v20, v10);

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v35 = v22;
          v24 = v23;
          v36 = swift_slowAlloc();
          v38 = v36;
          *v24 = 136315394;
          v25 = _typeName(_:qualified:)();
          v34 = v21;
          v27 = sub_10002C9C8(v25, v26, &v38);

          *(v24 + 4) = v27;
          *(v24 + 12) = 2082;
          (*(*v16 + 392))(v28);
          sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
          v29 = dispatch thunk of CustomStringConvertible.description.getter();
          v31 = v30;
          (*(v37 + 8))(v9, v6);
          v32 = sub_10002C9C8(v29, v31, &v38);

          *(v24 + 14) = v32;
          v21 = v34;
          _os_log_impl(&_mh_execute_header, v34, v35, "[%s] updateDiscovery - disable for routing mode: %{public}s", v24, 0x16u);
          swift_arrayDestroy();
        }

        (*(v11 + 8))(v13, v10);
        v33 = sub_100297780();
        [v33 setDiscoveryMode:0];

        *v17 = 0;
        v17[1] = 0;

        sub_1002A01EC();
      }
    }
  }

  return result;
}

void sub_1002A8758(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100028D40();
  (*(v5 + 16))(v7, v8, v4);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27 = a1;
    v12 = v11;
    v29 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_10002C9C8(v13, v14, &v29);
    v28 = v4;
    v16 = v15;

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_10002C9C8(v27, a2, &v29);
    _os_log_impl(&_mh_execute_header, v9, v10, "[%s] updateMigrationAbilityIfNeeded - reason: %{public}s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v7, v28);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v17 = sub_100034D68();
  v18 = 0;
  v19 = v17 + 64;
  v20 = 1 << v17[32];
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 8);
  v23 = (v20 + 63) >> 6;
  if (v22)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return;
    }

    v22 = *&v19[8 * v24];
    ++v18;
    if (v22)
    {
      v18 = v24;
      do
      {
LABEL_12:
        v22 &= v22 - 1;

        sub_1002A5230(v25);
      }

      while (v22);
      continue;
    }
  }

  __break(1u);
}

void sub_1002A8A5C(uint64_t a1)
{
  v112 = a1;
  v3 = type metadata accessor for HostedRoutingItem(0);
  v122 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = (&v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = &v103 - v7;
  v9 = type metadata accessor for HostedRoutingSourceSession(0);
  v110 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v109 = &v103 - v14;
  __chkstk_darwin(v13);
  v16 = &v103 - v15;
  v117 = v1;
  v17 = (v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v18 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
  if (!v18)
  {
    return;
  }

  v20 = *v17;
  v19 = v17[1];
  v111 = v17;
  sub_1002D18E0(v20, v19, v18);

  sub_1002CDC70(v20, v19, v18);
  v121 = v16;
  if (!v19)
  {
    goto LABEL_28;
  }

  v21 = sub_100034D68();
  if (!v21[2])
  {

    goto LABEL_27;
  }

  v22 = sub_10000698C(v20, v19);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  v25 = *(v21[7] + 8 * v22);

  if (*(v25 + 16) == 2)
  {
    v26 = *(v25 + 48);
    v120 = *(v25 + 56);
    v121 = v26;

    v27 = sub_100298814();
    v28 = v27;
    v2 = v27 & 0xFFFFFFFFFFFFFF8;
    if (v27 >> 62)
    {
      goto LABEL_93;
    }

    for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v30 = 0;
      v122 = _swiftEmptyArrayStorage;
LABEL_9:
      v31 = v30;
      while (1)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v31 >= *(v2 + 16))
          {
            goto LABEL_92;
          }

          v34 = *(v28 + 8 * v31 + 32);
        }

        v35 = v34;
        v30 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if ([v34 deviceType] == 1)
        {
          v36 = [v35 uid];
          if (v36)
          {
            v33 = v36;
LABEL_20:
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v122 = sub_10002AFD0(0, *(v122 + 2) + 1, 1, v122);
            }

            v41 = *(v122 + 2);
            v40 = *(v122 + 3);
            if (v41 >= v40 >> 1)
            {
              v122 = sub_10002AFD0((v40 > 1), v41 + 1, 1, v122);
            }

            v42 = v122;
            *(v122 + 2) = v41 + 1;
            v43 = &v42[16 * v41];
            *(v43 + 4) = v37;
            *(v43 + 5) = v39;
            if (v30 != i)
            {
              goto LABEL_9;
            }

            goto LABEL_95;
          }
        }

        else
        {
          v32 = [*(v25 + 88) groupLeader];
          v33 = [v32 uid];

          if (v33)
          {
            goto LABEL_20;
          }
        }

        ++v31;
        if (v30 == i)
        {
          goto LABEL_95;
        }
      }

LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      ;
    }

    v122 = _swiftEmptyArrayStorage;
LABEL_95:

    v98 = v111;
    v99 = *v111;
    v100 = v111[1];
    v101 = v111[2];
    v102 = v120;
    *v111 = v121;
    v98[1] = v102;
    v98[2] = v122;
    sub_10029A410(v99, v100, v101);
    sub_1002CDC70(v99, v100, v101);

    return;
  }

LABEL_28:
  v25 = v111[2];
  if (v25)
  {
    v28 = *v111;
    v44 = v111[1];
    sub_1002D18E0(*v111, v44, v111[2]);

    sub_1002CDC70(v28, v44, v25);
    v113 = *(v25 + 16);
    if (v113)
    {
      v45 = 0;
      v118 = *(v112 + 16);
      v119 = v12;
      v107 = v25;
      v108 = v25 + 32;
      while (1)
      {
        if (v45 >= *(v25 + 16))
        {
          goto LABEL_90;
        }

        if (!v118)
        {
          goto LABEL_35;
        }

        v114 = v45;
        v51 = (v108 + 16 * v45);
        v53 = *v51;
        v52 = v51[1];
        v28 = v110;
        v54 = v112 + ((*(v28 + 80) + 32) & ~*(v28 + 80));

        v55 = 0;
        v56 = *(v28 + 72);
        v115 = v56;
        v116 = v54;
LABEL_39:
        v120 = v55 + 1;
        sub_1002CDCB4(v54 + v56 * v55, v12, type metadata accessor for HostedRoutingSourceSession);
        v2 = 0;
        v25 = *(v12 + 4);
        v57 = *(v25 + 16);
        do
        {
          if (v57 == v2)
          {
            v12 = v119;
            sub_10002187C(v119, type metadata accessor for HostedRoutingSourceSession);
            v55 = v120;
            v56 = v115;
            v54 = v116;
            if (v120 == v118)
            {

              goto LABEL_34;
            }

            goto LABEL_39;
          }

          if (v2 >= *(v25 + 16))
          {
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          v58 = (v122[80] + 32) & ~v122[80];
          v59 = *(v122 + 9);
          sub_1002CDCB4(v25 + v58 + v59 * v2++, v8, type metadata accessor for HostedRoutingItem);
          v28 = sub_1002589A8(v53, v52);
          sub_10002187C(v8, type metadata accessor for HostedRoutingItem);
        }

        while ((v28 & 1) == 0);
        v60 = v109;
        sub_100032E70(v119, v109, type metadata accessor for HostedRoutingSourceSession);
        v61 = v121;
        sub_100032E70(v60, v121, type metadata accessor for HostedRoutingSourceSession);
        v62 = *(v61 + 24);
        if (!v62)
        {
          break;
        }

        v63 = *(v61 + 16);

        v64 = sub_100034D68();
        if (v64[2] && (v65 = sub_10000698C(v63, v62), (v66 & 1) != 0))
        {
          v25 = *(v64[7] + 8 * v65);

          v67 = v121;
          if (*(v25 + 16) == 2)
          {
            v68 = *(v25 + 48);
            v105 = *(v25 + 56);
            v106 = v68;

            v116 = v25;
            v69 = sub_100298814();
            v28 = v69;
            v70 = v69 & 0xFFFFFFFFFFFFFF8;
            if (!(v69 >> 62))
            {
              v71 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v71)
              {
                goto LABEL_52;
              }

LABEL_79:
              v115 = _swiftEmptyArrayStorage;
              goto LABEL_80;
            }

            v71 = _CocoaArrayWrapper.endIndex.getter();
            if (!v71)
            {
              goto LABEL_79;
            }

LABEL_52:
            v72 = 0;
            v120 = v28 & 0xC000000000000001;
            v115 = _swiftEmptyArrayStorage;
LABEL_53:
            v73 = v72;
            while (1)
            {
              if (v120)
              {
                v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v73 >= *(v70 + 16))
                {
                  goto LABEL_89;
                }

                v78 = *(v28 + 8 * v73 + 32);
              }

              v25 = v78;
              v72 = v73 + 1;
              if (__OFADD__(v73, 1))
              {
                goto LABEL_88;
              }

              if ([v78 deviceType] == 1)
              {
                v79 = [v25 uid];
                if (v79)
                {
                  v2 = v79;
LABEL_64:
                  v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v81 = v80;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v115 = sub_10002AFD0(0, *(v115 + 2) + 1, 1, v115);
                  }

                  v83 = *(v115 + 2);
                  v82 = *(v115 + 3);
                  v25 = v83 + 1;
                  if (v83 >= v82 >> 1)
                  {
                    v115 = sub_10002AFD0((v82 > 1), v83 + 1, 1, v115);
                  }

                  v84 = v115;
                  *(v115 + 2) = v25;
                  v85 = &v84[16 * v83];
                  *(v85 + 4) = v104;
                  *(v85 + 5) = v81;
                  if (v72 == v71)
                  {
LABEL_80:

                    v93 = v111;
                    v94 = *v111;
                    v95 = v111[1];
                    v96 = v111[2];
                    v97 = v105;
                    *v111 = v106;
                    v93[1] = v97;
                    v93[2] = v115;
                    v28 = v117;
                    sub_10029A410(v94, v95, v96);
                    sub_1002CDC70(v94, v95, v96);

                    v12 = v119;
                    goto LABEL_33;
                  }

                  goto LABEL_53;
                }
              }

              else
              {
                v74 = v28;
                v75 = v71;
                v76 = v70;
                v77 = [*(v116 + 88) groupLeader];
                v2 = [v77 uid];

                v70 = v76;
                v71 = v75;
                v28 = v74;
                if (v2)
                {
                  goto LABEL_64;
                }
              }

              ++v73;
              if (v72 == v71)
              {
                goto LABEL_80;
              }
            }
          }
        }

        else
        {

          v67 = v121;
        }

        v86 = *(v67 + 32);
        v87 = *(v86 + 16);
        if (v87)
        {
          v123 = _swiftEmptyArrayStorage;
          sub_1000089FC(0, v87, 0);
          v46 = v123;
          v88 = v86 + v58;
          do
          {
            sub_1002CDCB4(v88, v6, type metadata accessor for HostedRoutingItem);
            v89 = *v6;
            v90 = v6[1];

            sub_10002187C(v6, type metadata accessor for HostedRoutingItem);
            v123 = v46;
            v2 = v46[2];
            v91 = v46[3];
            if (v2 >= v91 >> 1)
            {
              sub_1000089FC((v91 > 1), v2 + 1, 1);
              v46 = v123;
            }

            v46[2] = v2 + 1;
            v92 = &v46[2 * v2];
            v92[4] = v89;
            v92[5] = v90;
            v88 += v59;
            --v87;
          }

          while (v87);
        }

        else
        {
          v46 = _swiftEmptyArrayStorage;
        }

        v12 = v119;
        v47 = v111;
        v48 = *v111;
        v49 = v111[1];
        v50 = v111[2];
        *v111 = 0;
        v47[1] = 0;
        v47[2] = v46;
        v28 = v117;
        sub_10029A410(v48, v49, v50);
        sub_1002CDC70(v48, v49, v50);
LABEL_33:
        sub_10002187C(v121, type metadata accessor for HostedRoutingSourceSession);
LABEL_34:
        v25 = v107;
        v45 = v114;
LABEL_35:
        if (++v45 == v113)
        {

          return;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_1002A9524()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for HostedRoutingSourceSession(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = (&v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v5);
  v10 = (&v141 - v9);
  v11 = __chkstk_darwin(v8);
  v13 = &v141 - v12;
  v14 = *(v2 + 85);
  v147 = v2 + 680;
  v15 = v14(v11);
  v17 = v16;
  v18 = sub_100037234();
  if (v15 == *v18 && v17 == *(v18 + 1))
  {
    goto LABEL_16;
  }

  v146 = v18;
  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
LABEL_17:
    v33 = [objc_opt_self() server];
    v34 = [v33 routingServer];

    v35 = [v34 systemEndpointController];
    if (v35)
    {
      v148 = 0;
      v149 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v148 = 91;
      v149 = 0xE100000000000000;
      v36._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v36);

      v37._countAndFlagsBits = 0xD000000000000017;
      v37._object = 0x800000010043F1F0;
      String.append(_:)(v37);
      v38 = objc_allocWithZone(MRUpdateActiveSystemEndpointRequest);
      v39 = String._bridgeToObjectiveC()();

      v147 = [v38 initWithOutputDeviceUID:0 type:0 reason:v39];

      [v35 updateSystemEndpointForRequest:v147];
      v40 = v147;

      return;
    }

    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v143 = v2;
  i = v10;
  v145 = v13;
  v22 = v1;
  v23 = (*(*v1 + 440))(v21);
  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_15:

    __break(1u);
LABEL_16:

    goto LABEL_17;
  }

  v25 = 0;
  while (1)
  {
    if (v25 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_93;
    }

    v26 = sub_1002CDCB4(v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, v7, type metadata accessor for HostedRoutingSourceSession);
    v27 = *v7;
    v28 = v7[1];
    v29 = v14(v26);
    v22 = v30;
    if (v27 == v29 && v28 == v30)
    {
      break;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_22;
    }

    ++v25;
    sub_10002187C(v7, type metadata accessor for HostedRoutingSourceSession);
    if (v24 == v25)
    {
      goto LABEL_15;
    }
  }

LABEL_22:

  v41 = i;
  sub_100032E70(v7, i, type metadata accessor for HostedRoutingSourceSession);
  v42 = v41;
  v43 = v145;
  sub_100032E70(v42, v145, type metadata accessor for HostedRoutingSourceSession);
  v44 = *(v43 + 24);
  if (!v44)
  {
    goto LABEL_147;
  }

  v45 = *(v43 + 16);
  v46 = sub_100034D68();
  if (!v46[2])
  {
    goto LABEL_36;
  }

  v47 = sub_10000698C(v45, v44);
  if ((v48 & 1) == 0)
  {
    goto LABEL_36;
  }

  v24 = *(v46[7] + 8 * v47);

  if (*(v24 + 16) != 2)
  {
    goto LABEL_38;
  }

  v141 = objc_opt_self();
  v49 = [v141 server];
  v50 = [v49 routingServer];

  v51 = [v50 systemEndpointController];
  if (!v51)
  {
    goto LABEL_148;
  }

  v52 = [v51 activeOutputDeviceUID:0];

  if (!v52)
  {
    goto LABEL_33;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v57 = [objc_opt_self() localDeviceUID];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  v142 = v54;
  if (v54 == v58 && v56 == v60)
  {

LABEL_32:

LABEL_33:
    v62 = v14(v53);
    if (v62 == *v146 && v63 == v146[1])
    {

LABEL_36:

      goto LABEL_39;
    }

    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v64)
    {
LABEL_38:

      goto LABEL_39;
    }

    v65 = [v141 server];
    v66 = [v65 routingServer];

    v67 = [v66 systemEndpointController];
    if (v67)
    {
      v146 = v67;
      v68 = sub_100298814();
      v22 = v68;
      v25 = v68 & 0xFFFFFFFFFFFFFF8;
      if (v68 >> 62)
      {
        goto LABEL_99;
      }

      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v24; v69; i = v24)
      {
        v24 = 0;
        v147 = _swiftEmptyArrayStorage;
LABEL_44:
        v70 = v24;
        while (1)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v70 >= *(v25 + 16))
            {
              goto LABEL_94;
            }

            v73 = *(v22 + 8 * v70 + 32);
          }

          v74 = v73;
          v24 = (v70 + 1);
          if (__OFADD__(v70, 1))
          {
            break;
          }

          if ([v73 deviceType] == 1)
          {
            v75 = [v74 uid];
            if (v75)
            {
              v72 = v75;
LABEL_55:
              v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v78 = v77;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v147 = sub_10002AFD0(0, *(v147 + 2) + 1, 1, v147);
              }

              v80 = *(v147 + 2);
              v79 = *(v147 + 3);
              if (v80 >= v79 >> 1)
              {
                v147 = sub_10002AFD0((v79 > 1), v80 + 1, 1, v147);
              }

              v81 = v147;
              *(v147 + 2) = v80 + 1;
              v82 = &v81[16 * v80];
              *(v82 + 4) = v76;
              *(v82 + 5) = v78;
              if (v24 != v69)
              {
                goto LABEL_44;
              }

              goto LABEL_101;
            }
          }

          else
          {
            v71 = [i[11] groupLeader];
            v72 = [v71 uid];

            if (v72)
            {
              goto LABEL_55;
            }
          }

          ++v70;
          if (v24 == v69)
          {
            goto LABEL_101;
          }
        }

LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        v69 = _CocoaArrayWrapper.endIndex.getter();
      }

      v147 = _swiftEmptyArrayStorage;
LABEL_101:

      if (*(v147 + 2))
      {
        v104 = *(v147 + 5);
      }

      else
      {
        v104 = 0;
      }

      v43 = v145;

      v148 = 0;
      v149 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v148 = 91;
      v149 = 0xE100000000000000;
      v105._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v105);

      v106._object = 0x800000010043F1D0;
      v106._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v106);
      if (v104)
      {
        v107 = String._bridgeToObjectiveC()();
      }

      else
      {
        v107 = 0;
      }

      v108 = objc_allocWithZone(MRUpdateActiveSystemEndpointRequest);
      v109 = String._bridgeToObjectiveC()();

      v110 = [v108 initWithOutputDeviceUID:v107 type:0 reason:v109];

      v111 = v146;
      [v146 updateSystemEndpointForRequest:v110];
LABEL_108:

LABEL_39:
      sub_10002187C(v43, type metadata accessor for HostedRoutingSourceSession);
      return;
    }

LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v61)
  {
    goto LABEL_32;
  }

  v83 = sub_100298814();
  v22 = v83;
  i = v24;
  v25 = v83 & 0xFFFFFFFFFFFFFF8;
  if (v83 >> 62)
  {
    v84 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v85 = 0;
  while (v84 != v85)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v85 >= *(v25 + 16))
      {
        goto LABEL_96;
      }

      v86 = *(v22 + 8 * v85 + 32);
    }

    v87 = v86;
    if (__OFADD__(v85, 1))
    {
      goto LABEL_95;
    }

    v88 = String._bridgeToObjectiveC()();
    v24 = [v87 containsUID:v88];

    ++v85;
    if (v24)
    {

      v43 = v145;
      goto LABEL_39;
    }
  }

  v89 = sub_100298814();
  v22 = v89;
  v24 = v143;
  if (v89 >> 62)
  {
    v90 = v89 & 0xFFFFFFFFFFFFFF8;
    v91 = _CocoaArrayWrapper.endIndex.getter();
    if (v91)
    {
      goto LABEL_74;
    }

LABEL_111:
    v147 = _swiftEmptyArrayStorage;
    goto LABEL_112;
  }

  v90 = v89 & 0xFFFFFFFFFFFFFF8;
  v91 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v91)
  {
    goto LABEL_111;
  }

LABEL_74:
  v25 = 0;
  v147 = _swiftEmptyArrayStorage;
  do
  {
    v92 = v25;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v92 >= *(v90 + 16))
        {
          goto LABEL_98;
        }

        v95 = *(v22 + 8 * v92 + 32);
      }

      v96 = v95;
      v25 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        goto LABEL_97;
      }

      if ([v95 deviceType] == 1)
      {
        break;
      }

      v93 = [i[11] groupLeader];
      v94 = [v93 uid];

      v24 = v143;
      if (v94)
      {
        goto LABEL_86;
      }

LABEL_77:

      ++v92;
      if (v25 == v91)
      {
        goto LABEL_112;
      }
    }

    v97 = [v96 uid];
    if (!v97)
    {
      goto LABEL_77;
    }

    v94 = v97;
LABEL_86:
    v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v147 = sub_10002AFD0(0, *(v147 + 2) + 1, 1, v147);
    }

    v100 = v147;
    v102 = *(v147 + 2);
    v101 = *(v147 + 3);
    if (v102 >= v101 >> 1)
    {
      v100 = sub_10002AFD0((v101 > 1), v102 + 1, 1, v147);
    }

    v147 = v100;
    *(v100 + 2) = v102 + 1;
    v103 = &v100[16 * v102];
    *(v103 + 4) = v146;
    *(v103 + 5) = v99;
  }

  while (v25 != v91);
LABEL_112:

  v148 = v142;
  v149 = v56;
  __chkstk_darwin(v112);
  *(&v141 - 2) = &v148;
  v113 = sub_1001E5604(sub_10001BDAC, (&v141 - 4), v147);

  if (v113)
  {

    v43 = v145;
    goto LABEL_39;
  }

  v114 = [v141 server];
  v115 = [v114 routingServer];

  v116 = [v115 systemEndpointController];
  if (v116)
  {
    v146 = v116;
    v117 = sub_100298814();
    v118 = v117;
    v119 = v117 & 0xFFFFFFFFFFFFFF8;
    if (!(v117 >> 62))
    {
      v120 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v120)
      {
        goto LABEL_117;
      }

LABEL_138:
      v147 = _swiftEmptyArrayStorage;
      goto LABEL_139;
    }

LABEL_137:
    v120 = _CocoaArrayWrapper.endIndex.getter();
    if (!v120)
    {
      goto LABEL_138;
    }

LABEL_117:
    v121 = 0;
    v147 = _swiftEmptyArrayStorage;
LABEL_118:
    v122 = v121;
    while (1)
    {
      if ((v118 & 0xC000000000000001) != 0)
      {
        v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v122 >= *(v119 + 16))
        {
          goto LABEL_136;
        }

        v125 = *(v118 + 8 * v122 + 32);
      }

      v126 = v125;
      v121 = v122 + 1;
      if (__OFADD__(v122, 1))
      {
        __break(1u);
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      if ([v125 deviceType] == 1)
      {
        v127 = [v126 uid];
        if (v127)
        {
          v124 = v127;
LABEL_129:
          v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v130 = v129;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v147 = sub_10002AFD0(0, *(v147 + 2) + 1, 1, v147);
          }

          v132 = *(v147 + 2);
          v131 = *(v147 + 3);
          if (v132 >= v131 >> 1)
          {
            v147 = sub_10002AFD0((v131 > 1), v132 + 1, 1, v147);
          }

          v133 = v147;
          *(v147 + 2) = v132 + 1;
          v134 = &v133[16 * v132];
          *(v134 + 4) = v128;
          *(v134 + 5) = v130;
          if (v121 == v120)
          {
LABEL_139:

            if (*(v147 + 2))
            {
              v135 = *(v147 + 5);
            }

            else
            {
              v135 = 0;
            }

            v43 = v145;

            v148 = 0;
            v149 = 0xE000000000000000;
            _StringGuts.grow(_:)(31);

            v148 = 91;
            v149 = 0xE100000000000000;
            v136._countAndFlagsBits = _typeName(_:qualified:)();
            String.append(_:)(v136);

            v137._object = 0x800000010043F1D0;
            v137._countAndFlagsBits = 0xD00000000000001CLL;
            String.append(_:)(v137);
            if (v135)
            {
              v138 = String._bridgeToObjectiveC()();
            }

            else
            {
              v138 = 0;
            }

            v139 = objc_allocWithZone(MRUpdateActiveSystemEndpointRequest);
            v140 = String._bridgeToObjectiveC()();

            v110 = [v139 initWithOutputDeviceUID:v138 type:0 reason:v140];

            v111 = v146;
            [v146 updateSystemEndpointForRequest:v110];
            goto LABEL_108;
          }

          goto LABEL_118;
        }
      }

      else
      {
        v123 = [i[11] groupLeader];
        v124 = [v123 uid];

        if (v124)
        {
          goto LABEL_129;
        }
      }

      ++v122;
      if (v121 == v120)
      {
        goto LABEL_139;
      }
    }
  }

LABEL_150:
  __break(1u);
}