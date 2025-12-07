void (*sub_100278F4C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingItems;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_100278FE8;
}

void sub_100278FE8(void **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 4);
  v3 = *(*a1 + 5);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 3);
  if (a2)
  {

    sub_1000180A0(v5);
  }

  else
  {
    sub_1000180A0(v5);
  }

  free(v2);
}

uint64_t sub_10027906C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1002790D8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100028D40();
  (*(v3 + 16))(v5, v6, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10002C9C8(v10, v11, &v19);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), &v19);
    *(v9 + 22) = 2082;
    if (*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
    {
      v13 = *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
      v14 = *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8);
    }

    else
    {
      v14 = 0xE300000000000000;
      v13 = 7104878;
    }

    v15 = sub_10002C9C8(v13, v14, &v19);

    *(v9 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s]<%{public}s> setTargetRoutingContextIdentifier - value: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v5, v2);
  sub_10027A424();
  v16 = sub_10027C58C();
  return (*(*v1 + 240))(v16);
}

void *sub_1002793A4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
    *(v1 + v2) = &_swiftEmptySetSingleton;
  }

  return v4;
}

id sub_1002793E8()
{
  sub_1001BC5A8(&qword_1005249C8, &qword_100457080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100450890;
  v1 = MRAVEndpointVolumeDidChangeNotification;
  v2 = MRAVEndpointVolumeControlCapabilitiesDidChangeNotification;
  v5 = MRAVEndpointVolumeControlCapabilitiesDidChangeNotification;
  *(v0 + 32) = MRAVEndpointVolumeDidChangeNotification;
  *(v0 + 40) = v2;
  qword_100532E18 = v0;
  v3 = v1;

  return v5;
}

id sub_100279470()
{
  v0 = *sub_100021264();

  return v0;
}

uint64_t sub_10027949C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = a3;
  v14 = swift_allocObject();
  sub_100279534(a1, a2, v11, a4 | ((HIDWORD(a4) & 1) << 32), a5, a6, a7);
  return v14;
}

void *sub_100279534(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v105 = a6;
  v106 = a5;
  v110 = a4;
  LODWORD(v104) = a3;
  v102 = a2;
  v103 = a1;
  v101 = *v7;
  v10 = type metadata accessor for Logger();
  v107 = *(v10 - 8);
  v108 = v10;
  v11 = __chkstk_darwin(v10);
  v109 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v100 = &v95 - v13;
  v14 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  __chkstk_darwin(v14 - 8);
  v16 = &v95 - v15;
  v96 = type metadata accessor for NSNotificationCenter.Publisher();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v98 = *(v19 - 8);
  v99 = v19;
  __chkstk_darwin(v19);
  v97 = &v95 - v20;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (&v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingMode;
  v26 = enum case for RoutingMode.disabled(_:);
  v27 = type metadata accessor for RoutingMode();
  (*(*(v27 - 8) + 104))(v8 + v25, v26, v27);
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingItems) = _swiftEmptyArrayStorage;
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers) = 0;
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v28 = v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSessionIdentifier;
  *v28 = 0;
  v28[4] = 1;
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSession) = 0;
  v29 = (v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
  *v29 = 0;
  v29[1] = 0;
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___discoverySession) = 0;
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___hearingAidHelper) = 0;
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___notificationObservers) = 0;
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___endpointNotificationObservers) = 0;
  v30 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer;
  type metadata accessor for RouteNormalizer(0);
  *(v8 + v30) = sub_10033E514();
  v31 = (v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier);
  *v31 = static String.nanoIDFourChar()();
  v31[1] = v32;
  v33 = (v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken);
  *v33 = 0;
  v33[1] = 0;
  *v24 = a7;
  (*(v22 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v21);
  v34 = a7;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  result = (*(v22 + 8))(v24, v21);
  if (v31)
  {
    v36 = v102;
    *(v8 + 40) = v104;
    v8[3] = v103;
    v8[4] = v36;
    v8[2] = v34;
    if ((v110 & 0x100000000) != 0)
    {
      v76 = v34;
      v60 = v107;
      v59 = v108;
    }

    else
    {
      v37 = v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSessionIdentifier;
      v38 = v110;
      *v37 = v110;
      v37[4] = 0;
      v39 = objc_opt_self();
      v40 = v34;
      v41 = [v39 retrieveSessionWithID:v38];
      v42 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSession;
      v43 = *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSession);
      *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSession) = v41;
      v103 = v41;
      v104 = v41;

      v44 = [objc_opt_self() defaultCenter];
      v45 = *(v8 + v42);
      NSNotificationCenter.publisher(for:object:)();

      v112[0] = v8[2];
      v46 = v112[0];
      v47 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v47 - 8) + 56))(v16, 1, 1, v47);
      sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
      sub_100017FCC(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
      sub_1002853D8();
      v48 = v46;
      v49 = v97;
      v50 = v96;
      Publisher.receive<A>(on:options:)();
      sub_1000038A4(v16, &unk_100524C50, &qword_10044F180);

      (*(v95 + 8))(v18, v50);
      swift_allocObject();
      swift_weakInit();
      sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v51 = v99;
      Publisher<>.sink(receiveValue:)();

      (*(v98 + 8))(v49, v51);
      v112[0] = sub_10027938C();
      AnyCancellable.store(in:)();

      *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___notificationObservers) = v112[0];

      v52 = v104;
      v53 = [v104 routingContextUID];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v57 = (v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
      *v57 = v54;
      v57[1] = v56;

      v58 = sub_100028D40();
      v60 = v107;
      v59 = v108;
      v61 = v100;
      (*(v107 + 16))(v100, v58, v108);
      v62 = v52;

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v104 = v34;
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v112[0] = v102;
        *v65 = 136316162;
        v67 = _typeName(_:qualified:)();
        v69 = sub_10002C9C8(v67, v68, v112);

        *(v65 + 4) = v69;
        *(v65 + 12) = 2082;
        v70 = *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier);
        v71 = *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8);

        v72 = sub_10002C9C8(v70, v71, v112);

        *(v65 + 14) = v72;
        *(v65 + 22) = 2114;
        *(v65 + 24) = v62;
        *v66 = v103;
        *(v65 + 32) = 1024;
        *(v65 + 34) = v110;
        *(v65 + 38) = 2082;
        v73 = v57[1];
        if (v73)
        {
          v74 = *v57;
          v75 = v73;
        }

        else
        {
          v75 = 0xE300000000000000;
          v74 = 7104878;
        }

        v77 = v100;
        v78 = v62;

        v79 = sub_10002C9C8(v74, v75, v112);

        *(v65 + 40) = v79;
        _os_log_impl(&_mh_execute_header, v63, v64, "[%s]<%{public}s> init - configured session: %{public}@ for target identifier: %u with target context: %{public}s", v65, 0x30u);
        sub_1000038A4(v66, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();

        v60 = v107;
        v59 = v108;
        (*(v107 + 8))(v77, v108);
        v34 = v104;
      }

      else
      {

        (*(v60 + 8))(v61, v59);
      }
    }

    sub_10027A424();
    v80 = sub_10027C58C();
    v81 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingItems;
    swift_beginAccess();
    *(v8 + v81) = v80;

    v82 = v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delegate;
    swift_beginAccess();
    *(v82 + 1) = v105;
    swift_unknownObjectWeakAssign();
    v83 = sub_100028D40();
    v84 = v109;
    (*(v60 + 16))(v109, v83, v59);

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v87 = 136315394;
      v88 = _typeName(_:qualified:)();
      v90 = sub_10002C9C8(v88, v89, &v111);
      v104 = v34;
      v91 = v90;

      *(v87 + 4) = v91;
      *(v87 + 12) = 2082;
      v92 = *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier);
      v93 = *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8);

      v94 = sub_10002C9C8(v92, v93, &v111);

      *(v87 + 14) = v94;
      _os_log_impl(&_mh_execute_header, v85, v86, "[%s]<%{public}s> init - completed", v87, 0x16u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
      (*(v60 + 8))(v109, v59);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v60 + 8))(v84, v59);
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10027A144()
{
  v1 = type metadata accessor for RoutingMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = 0;
  *(&v19 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v21 = v19;
  v5._countAndFlagsBits = 60;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 60;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier));
  v8._countAndFlagsBits = 0x65707974202D203ELL;
  v8._object = 0xEA0000000000203ALL;
  String.append(_:)(v8);
  v9 = *(v0 + 40);
  v19 = *(v0 + 24);
  v20 = v9;
  sub_1002854F8();
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x6E6974756F72202CLL;
  v11._object = 0xEF203A65646F4D67;
  String.append(_:)(v11);
  (*(*v0 + 208))();
  sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  (*(v2 + 8))(v4, v1);
  v13._object = 0x800000010043E1F0;
  v13._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v13);
  v14 = (*(*v0 + 256))();
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v14 = 7104878;
    v16 = 0xE300000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v14);

  return v21;
}

void sub_10027A424()
{
  v1 = v0;
  v87 = *v0;
  v2 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  __chkstk_darwin(v2 - 8);
  v4 = &v66 - v3;
  v72 = type metadata accessor for NSNotificationCenter.Publisher();
  v5 = *(v72 - 8);
  __chkstk_darwin(v72);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v82 = *(v86 - 8);
  __chkstk_darwin(v86);
  v9 = &v66 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100279398();

  v81 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___endpointNotificationObservers;
  *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___endpointNotificationObservers) = &_swiftEmptySetSingleton;

  v14 = sub_100028D40();
  (*(v11 + 16))(v13, v14, v10);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  LODWORD(v85) = v16;
  v17 = os_log_type_enabled(v15, v16);
  v67 = v1;
  v68 = v7;
  v66 = v4;
  if (v17)
  {
    v80 = v11;
    v83 = v5;
    v84 = v9;
    v18 = v1;
    v19 = swift_slowAlloc();
    v88[0] = swift_slowAlloc();
    *v19 = 136315650;
    v20 = _typeName(_:qualified:)();
    v22 = sub_10002C9C8(v20, v21, v88);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_10002C9C8(*(v18 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v18 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), v88);
    *(v19 + 22) = 2082;
    v23 = (v18 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
    if (*(v18 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
    {
      v24 = *v23;
      v25 = v23[1];
    }

    else
    {
      v25 = 0xE300000000000000;
      v24 = 7104878;
    }

    v26 = v80;

    v27 = sub_10002C9C8(v24, v25, v88);

    *(v19 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v15, v85, "[%s]<%{public}s> registerEndpointNotifications - register for context: %{public}s", v19, 0x20u);
    swift_arrayDestroy();

    (*(v26 + 8))(v13, v10);
    v4 = v66;
    v5 = v83;
    v9 = v84;
    v7 = v68;
    v1 = v67;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  if (*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
  {

    v28 = String._bridgeToObjectiveC()();
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_opt_self() sharedLocalEndpointForRoutingContextWithUID:v28];
  v85 = v29;

  v84 = objc_opt_self();
  v30 = [v84 defaultCenter];
  v31 = v29;
  v87 = v31;
  NSNotificationCenter.publisher(for:object:)();

  v32 = v67;
  v88[0] = v67[2];
  v33 = v88[0];
  v80 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v34 = *(v80 - 8);
  v35 = *(v34 + 56);
  v78 = v34 + 56;
  v79 = v35;
  v35(v4, 1, 1, v80);
  v77 = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  v76 = sub_100017FCC(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v75 = sub_1002853D8();
  v74 = v33;
  v36 = v72;
  Publisher.receive<A>(on:options:)();
  sub_1000038A4(v4, &unk_100524C50, &qword_10044F180);
  v37 = *(v5 + 8);
  v83 = v5 + 8;
  v73 = v37;
  v37(v7, v36);
  swift_allocObject();
  swift_weakInit();
  v70 = sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v38 = v86;
  Publisher<>.sink(receiveValue:)();

  v39 = v36;
  v40 = v82 + 8;
  v69 = *(v82 + 8);
  v69(v9, v38);
  v41 = v81;
  v88[0] = *(v32 + v81);

  AnyCancellable.store(in:)();

  *(v32 + v41) = v88[0];

  v42 = [v84 defaultCenter];
  v43 = v87;
  NSNotificationCenter.publisher(for:object:)();

  v71 = v43;
  v44 = v74;
  v88[0] = v74;
  v79(v4, 1, 1, v80);
  Publisher.receive<A>(on:options:)();
  sub_1000038A4(v4, &unk_100524C50, &qword_10044F180);

  v45 = v86;
  v73(v7, v39);
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();
  v46 = v40;

  v47 = v9;
  v69(v9, v45);
  v88[0] = *(v32 + v41);

  AnyCancellable.store(in:)();

  *(v32 + v41) = v88[0];

  if (qword_100532E10 != -1)
  {
    swift_once();
  }

  v48 = *(qword_100532E18 + 16);
  v49 = v66;
  v50 = v67;
  v51 = v84;
  if (v48)
  {
    v52 = (qword_100532E18 + 32);
    v82 = v46;
    do
    {
      v53 = *v52++;
      v87 = v53;
      v54 = [v51 defaultCenter];
      v55 = v71;
      v56 = v68;
      NSNotificationCenter.publisher(for:object:)();

      v57 = v74;
      v88[0] = v74;
      v79(v49, 1, 1, v80);
      v58 = v57;
      v59 = v47;
      v60 = v49;
      v61 = v72;
      Publisher.receive<A>(on:options:)();
      sub_1000038A4(v60, &unk_100524C50, &qword_10044F180);

      v62 = v61;
      v49 = v60;
      v73(v56, v62);
      swift_allocObject();
      swift_weakInit();
      v63 = v86;
      Publisher<>.sink(receiveValue:)();
      v64 = v81;

      v65 = v63;
      v47 = v59;
      v69(v59, v65);
      v88[0] = *(v50 + v64);

      AnyCancellable.store(in:)();

      *(v50 + v64) = v88[0];
      v51 = v84;

      --v48;
    }

    while (v48);
  }
}

uint64_t sub_10027AEE8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v138 = *(v3 - 8);
  v139 = v3;
  __chkstk_darwin(v3);
  v136 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for DispatchQoS();
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v134 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for DispatchTime();
  v133 = *(v142 - 8);
  v6 = __chkstk_darwin(v142);
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v141 = &v131 - v9;
  v10 = type metadata accessor for Logger();
  v149 = *(v10 - 8);
  v150 = v10;
  v11 = __chkstk_darwin(v10);
  v143 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v131 - v14;
  v16 = __chkstk_darwin(v13);
  v140 = &v131 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v131 - v19;
  __chkstk_darwin(v18);
  v22 = &v131 - v21;
  v23 = type metadata accessor for RoutingMode();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v145 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v131 - v28;
  v148 = v2;
  v144 = *(v2 + 208);
  (v144)(v27);
  v146 = v24;
  v147 = v23;
  v30 = (*(v24 + 88))(v29, v23);
  if (v30 == enum case for RoutingMode.disabled(_:) || v30 == enum case for RoutingMode.prewarm(_:))
  {
    v48 = sub_10001B030();
    v49 = [v48 discoveryMode];

    if (v49)
    {
      v50 = (v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken);
      if (!*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken + 8))
      {
        v51 = static String.nanoIDFourChar()();
        *v50 = v51;
        v50[1] = v52;
        v143 = v52;

        v53 = sub_100028D40();
        v55 = v149;
        v54 = v150;
        (*(v149 + 16))(v22, v53, v150);

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          aBlock[0] = v132;
          *v58 = 136315650;
          v59 = _typeName(_:qualified:)();
          v61 = sub_10002C9C8(v59, v60, aBlock);
          v140 = v51;
          v62 = v61;

          *(v58 + 4) = v62;
          *(v58 + 12) = 2082;
          *(v58 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), aBlock);
          *(v58 + 22) = 2082;
          v63 = v145;
          v144();
          sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
          v64 = v147;
          v65 = dispatch thunk of CustomStringConvertible.description.getter();
          v67 = v66;
          (*(v146 + 8))(v63, v64);
          v68 = sub_10002C9C8(v65, v67, aBlock);
          v51 = v140;
          v69 = v148;

          *(v58 + 24) = v68;
          _os_log_impl(&_mh_execute_header, v56, v57, "[%s]<%{public}s> updateDiscovery - schedule disable for routing mode: %{public}s", v58, 0x20u);
          swift_arrayDestroy();

          (*(v149 + 8))(v22, v150);
        }

        else
        {

          (*(v55 + 8))(v22, v54);
          v69 = v148;
        }

        v150 = v1[2];
        static DispatchTime.now()();
        type metadata accessor for Preferences();
        static Preferences.discoveryHysteresis.getter();
        + infix(_:_:)();
        v149 = *(v133 + 8);
        (v149)(v8, v142);
        v122 = swift_allocObject();
        swift_weakInit();
        v123 = swift_allocObject();
        v123[2] = v122;
        v123[3] = v51;
        v123[4] = v143;
        v123[5] = v69;
        aBlock[4] = sub_10028639C;
        aBlock[5] = v123;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100003D98;
        aBlock[3] = &unk_1004C7210;
        v124 = _Block_copy(aBlock);

        v125 = v134;
        static DispatchQoS.unspecified.getter();
        v151 = _swiftEmptyArrayStorage;
        sub_100017FCC(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1001BC5A8(&unk_100522280, &unk_10044F590);
        sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
        v126 = v136;
        v127 = v139;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v128 = v141;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v124);
        (*(v138 + 8))(v126, v127);
        (*(v135 + 8))(v125, v137);
        (v149)(v128, v142);
      }
    }

    goto LABEL_30;
  }

  if (v30 == enum case for RoutingMode.localNetwork(_:))
  {
    v31 = sub_10001B030();
    v32 = [v31 discoveryMode];

    if (v32 != 2)
    {
      v33 = sub_100028D40();
      v35 = v149;
      v34 = v150;
      (*(v149 + 16))(v20, v33, v150);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        aBlock[0] = v143;
        *v38 = 136315650;
        v39 = _typeName(_:qualified:)();
        v41 = sub_10002C9C8(v39, v40, aBlock);

        *(v38 + 4) = v41;
        *(v38 + 12) = 2082;
        *(v38 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), aBlock);
        *(v38 + 22) = 2082;
        v42 = v145;
        v144();
        sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
        v43 = v147;
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v45;
        (*(v146 + 8))(v42, v43);
        v47 = sub_10002C9C8(v44, v46, aBlock);

        *(v38 + 24) = v47;
        _os_log_impl(&_mh_execute_header, v36, v37, "[%s]<%{public}s> updateDiscovery - enable for routing mode: %{public}s", v38, 0x20u);
        swift_arrayDestroy();

        (*(v149 + 8))(v20, v150);
      }

      else
      {

        (*(v35 + 8))(v20, v34);
      }

      [*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___discoverySession) setDiscoveryMode:2];
    }

    v87 = (v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken);
    if (!*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken + 8))
    {
      goto LABEL_30;
    }

    v88 = sub_100028D40();
    v90 = v149;
    v89 = v150;
    v91 = v140;
    (*(v149 + 16))(v140, v88, v150);

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v94 = 136315650;
      v95 = _typeName(_:qualified:)();
      v97 = sub_10002C9C8(v95, v96, aBlock);

      *(v94 + 4) = v97;
      *(v94 + 12) = 2082;
      *(v94 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), aBlock);
      *(v94 + 22) = 2082;
      v98 = v145;
      v144();
      sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
      v99 = v147;
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v102 = v101;
      (*(v146 + 8))(v98, v99);
      v103 = sub_10002C9C8(v100, v102, aBlock);

      *(v94 + 24) = v103;
      _os_log_impl(&_mh_execute_header, v92, v93, "[%s]<%{public}s> updateDiscovery - cancel scheduled disable for routing mode: %{public}s", v94, 0x20u);
      swift_arrayDestroy();

      (*(v149 + 8))(v140, v150);
    }

    else
    {

      (*(v90 + 8))(v91, v89);
    }

LABEL_27:
    *v87 = 0;
    v87[1] = 0;

LABEL_30:
    v129 = sub_10027C58C();
    return (*(*v1 + 240))(v129);
  }

  if (v30 == enum case for RoutingMode.detailed(_:))
  {
    v70 = sub_10001B030();
    v71 = [v70 discoveryMode];

    if (v71 != 3)
    {
      v72 = sub_100028D40();
      v74 = v149;
      v73 = v150;
      (*(v149 + 16))(v15, v72, v150);

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        aBlock[0] = v142;
        *v77 = 136315650;
        v78 = _typeName(_:qualified:)();
        v80 = sub_10002C9C8(v78, v79, aBlock);

        *(v77 + 4) = v80;
        *(v77 + 12) = 2082;
        *(v77 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), aBlock);
        *(v77 + 22) = 2082;
        v81 = v145;
        v144();
        sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
        v82 = v147;
        v83 = dispatch thunk of CustomStringConvertible.description.getter();
        v85 = v84;
        (*(v146 + 8))(v81, v82);
        v86 = sub_10002C9C8(v83, v85, aBlock);

        *(v77 + 24) = v86;
        _os_log_impl(&_mh_execute_header, v75, v76, "[%s]<%{public}s> updateDiscovery - enable for routing mode: %{public}s", v77, 0x20u);
        swift_arrayDestroy();

        (*(v149 + 8))(v15, v150);
      }

      else
      {

        (*(v74 + 8))(v15, v73);
      }

      [*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___discoverySession) setDiscoveryMode:3];
    }

    v87 = (v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken);
    v104 = v143;
    if (!*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken + 8))
    {
      goto LABEL_30;
    }

    v105 = sub_100028D40();
    v107 = v149;
    v106 = v150;
    (*(v149 + 16))(v104, v105, v150);

    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      LODWORD(v141) = v109;
      v111 = v110;
      v142 = swift_slowAlloc();
      aBlock[0] = v142;
      *v111 = 136315650;
      v112 = _typeName(_:qualified:)();
      v114 = sub_10002C9C8(v112, v113, aBlock);

      *(v111 + 4) = v114;
      *(v111 + 12) = 2082;
      *(v111 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), aBlock);
      *(v111 + 22) = 2082;
      v115 = v145;
      v144();
      sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
      v116 = v106;
      v117 = v147;
      v118 = dispatch thunk of CustomStringConvertible.description.getter();
      v120 = v119;
      (*(v146 + 8))(v115, v117);
      v121 = sub_10002C9C8(v118, v120, aBlock);

      *(v111 + 24) = v121;
      _os_log_impl(&_mh_execute_header, v108, v141, "[%s]<%{public}s> updateDiscovery - cancel scheduled disable for routing mode: %{public}s", v111, 0x20u);
      swift_arrayDestroy();

      (*(v107 + 8))(v143, v116);
    }

    else
    {

      (*(v107 + 8))(v104, v106);
    }

    goto LABEL_27;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_10027C14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RoutingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v40 = v7;
    v16 = (Strong + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken);
    v17 = *(Strong + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken + 8);
    if (v17 && (*v16 == a2 ? (v18 = v17 == a3) : (v18 = 0), v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v19 = sub_100028D40();
      (*(v11 + 16))(v13, v19, v10);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v39 = v11;
        v23 = v22;
        v38 = swift_slowAlloc();
        v41 = v38;
        *v23 = 136315650;
        v24 = _typeName(_:qualified:)();
        v37 = v21;
        v26 = sub_10002C9C8(v24, v25, &v41);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2082;
        v27 = *(v15 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier);
        v28 = *(v15 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8);

        v29 = sub_10002C9C8(v27, v28, &v41);

        *(v23 + 14) = v29;
        *(v23 + 22) = 2082;
        (*(*v15 + 208))(v30);
        sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        (*(v40 + 8))(v9, v6);
        v34 = sub_10002C9C8(v31, v33, &v41);

        *(v23 + 24) = v34;
        _os_log_impl(&_mh_execute_header, v20, v37, "[%s]<%{public}s> updateDiscovery - disable for routing mode: %{public}s", v23, 0x20u);
        swift_arrayDestroy();

        (*(v39 + 8))(v13, v10);
      }

      else
      {

        (*(v11 + 8))(v13, v10);
      }

      v35 = sub_10001B030();
      [v35 setDiscoveryMode:0];

      *v16 = 0;
      v16[1] = 0;
    }

    else
    {
    }
  }
}

id sub_10027C58C()
{
  v198 = sub_1001BC5A8(&unk_100524C80, &qword_1004573A0);
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = &v194 - v1;
  v2 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  v3 = __chkstk_darwin(v2 - 8);
  v207 = &v194 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v208 = &v194 - v5;
  v6 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  __chkstk_darwin(v6 - 8);
  v221 = &v194 - v7;
  v8 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  v9 = __chkstk_darwin(v8 - 8);
  v195 = &v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v217 = &v194 - v12;
  v13 = __chkstk_darwin(v11);
  v218 = &v194 - v14;
  __chkstk_darwin(v13);
  v16 = &v194 - v15;
  v226 = type metadata accessor for HostedRoutingItem(0);
  v210 = *(v226 - 8);
  v17 = __chkstk_darwin(v226);
  v19 = &v194 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v194 - v21;
  v23 = __chkstk_darwin(v20);
  v200 = &v194 - v24;
  v25 = __chkstk_darwin(v23);
  v202 = &v194 - v26;
  __chkstk_darwin(v25);
  v28 = &v194 - v27;
  sub_100018D7C(0, &qword_100523B28, MRDeviceInfo_ptr);
  v222 = sub_100018D1C();
  v227 = v0;
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
  {

    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_opt_self();
  v31 = [v30 sharedLocalEndpointForRoutingContextWithUID:v29];

  v32 = v31;
  v219 = [v30 sharedSystemAudioLocalEndpoint];

  v220 = v32;
  v203 = v32;
  result = [v203 outputDevices];
  if (!result)
  {
    goto LABEL_96;
  }

  v34 = result;
  sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = sub_10001B030();
  v37 = [v36 availableOutputDevices];

  v199 = v22;
  v194 = v19;
  if (v37)
  {
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  v231 = &_swiftEmptySetSingleton;
  v39 = v203;
  v40 = [v203 predictedOutputDevice];

  v41 = &selRef_sinkWithCompletion_shouldContinue_;
  v224 = v38;
  v209 = v35;
  if (!v40)
  {
    goto LABEL_16;
  }

  v42 = [v40 uid];
  if (!v42)
  {
    v43 = v40;
LABEL_15:

LABEL_16:
    v201 = 0;
    v56 = &_swiftEmptyDictionarySingleton;
    if (v35 < 0 || (v35 & 0x4000000000000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_24;
  }

  v43 = v42;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;
  v47 = [v40 name];
  if (!v47)
  {

    v35 = v209;
    goto LABEL_15;
  }

  v48 = v47;
  v228 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v225 = v49;

  v229 = (*(**(v227 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer) + 184))(v44, v46);
  v51 = v50;
  sub_100008318(&v230, v44, v46);

  v223 = sub_100018E6C();
  v216 = v52;
  LODWORD(v215) = v53;
  v54 = type metadata accessor for RoutingItem.SelectionIndicator();
  (*(*(v54 - 8) + 56))(v16, 1, 1, v54);
  if (v220 == v219)
  {
    v55 = *sub_10001CEC0();
  }

  else
  {
    v55 = sub_10001CB30();
  }

  v57 = [v222 matchesUID:v43];

  v58 = 1;
  if ((v57 & 1) == 0)
  {
    v59 = sub_100018E6C();
    v61 = v60;
    v63 = v62;
    v58 = sub_10001CD44(v59, v60, v62);
    sub_100019550(v59, v61, v63);
  }

  v64 = v221;
  sub_10001C1E0(v221);
  v65 = type metadata accessor for RoutingItem.Attributes();
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  v66 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
  v67 = variable initialization expression of SystemGroupSessionRemoteControlService.sessionCancellables();
  v68 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();

  LOBYTE(v230) = 1;
  v191 = v58;
  v201 = 1;
  v69 = v229;
  sub_100258314(v229, v51, 0, 0, v228, v225, v223, v216, v28, v215, 1, v66 & 1, v16, v55, v67, v191, v192, 0, 1, 0, v68, v64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v230 = &_swiftEmptyDictionarySingleton;
  sub_10001DB34(v28, v69, v51, isUniquelyReferenced_nonNull_native);

  v56 = v230;
  v35 = v209;
  if (v209 < 0)
  {
    goto LABEL_49;
  }

  v38 = v224;
  v41 = &selRef_sinkWithCompletion_shouldContinue_;
  if ((v209 & 0x4000000000000000) != 0)
  {
    goto LABEL_50;
  }

LABEL_24:
  v71 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v71)
  {
    while (v71 < 1)
    {
      __break(1u);
LABEL_49:
      v38 = v224;
      v41 = &selRef_sinkWithCompletion_shouldContinue_;
LABEL_50:
      v71 = _CocoaArrayWrapper.endIndex.getter();
      if (!v71)
      {
        goto LABEL_51;
      }
    }

    v72 = 0;
    v228 = v35 & 0xC000000000000001;
    v205 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer;
    v204 = (v210 + 56);
    v206 = v71;
    do
    {
      if (v228)
      {
        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v73 = *(v35 + 8 * v72 + 32);
      }

      v74 = v73;
      v75 = [v73 v41[237]];
      if (v75)
      {
        v76 = v75;
        v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v78;
        v80 = [v74 name];
        if (v80)
        {
          v81 = v80;
          v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v225 = v82;

          v83 = (*(**(v227 + v205) + 184))(v77, v79);
          v85 = v83;
          v86 = v84;
          if (v56[2] && (v87 = sub_10000698C(v83, v84), (v88 & 1) != 0))
          {
            v89 = v210;
            v90 = v208;
            sub_10001D948(v56[7] + *(v210 + 72) * v87, v208);
            (*(v89 + 56))(v90, 0, 1, v226);

            sub_1000038A4(v90, &qword_100523C18, &qword_100451AF0);
          }

          else
          {
            v91 = 1;
            v92 = v208;
            (*v204)(v208, 1, 1, v226);
            sub_1000038A4(v92, &qword_100523C18, &qword_100451AF0);
            v93 = v203;
            LODWORD(v212) = [v203 volumeControlCapabilitiesForOutputDeviceUID:v76];
            [v93 volumeForOutputDeviceUID:v76];
            v95 = v94;
            sub_100008318(&v230, v77, v79);

            v96 = sub_100018E6C();
            v214 = v97;
            v215 = v96;
            LODWORD(v213) = v98;
            if (v201)
            {
              v91 = !sub_10001B2AC();
            }

            v99 = type metadata accessor for RoutingItem.SelectionIndicator();
            (*(*(v99 - 8) + 56))(v218, 1, 1, v99);
            if (v220 == v219)
            {
              LODWORD(v211) = *sub_10001CEC0();
            }

            else
            {
              LODWORD(v211) = sub_10001CB30();
            }

            LODWORD(v216) = v91;
            v100 = [v222 matchesUID:v76];

            v229 = v56;
            if (v100)
            {
              v101 = 1;
            }

            else
            {
              v102 = sub_100018E6C();
              v104 = v103;
              v106 = v105;
              v101 = sub_10001CD44(v102, v103, v105);
              sub_100019550(v102, v104, v106);
            }

            v107 = sub_10001CB2C(v212);
            v108 = v221;
            sub_10001C1E0(v221);
            v109 = type metadata accessor for RoutingItem.Attributes();
            (*(*(v109 - 8) + 56))(v108, 0, 1, v109);
            v110 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
            v111 = variable initialization expression of SystemGroupSessionRemoteControlService.sessionCancellables();

            LOBYTE(v230) = 0;
            v193 = v108;
            v112 = v202;
            sub_100258314(v85, v86, 0, 0, v223, v225, v215, v214, v202, v213, v216 & 1, v110 & 1, v218, v211, v111, v101, v192, v95, 0, v95 >> 48, v107, v193);
            v113 = v229;
            v114 = swift_isUniquelyReferenced_nonNull_native();
            v230 = v113;
            sub_10001DB34(v112, v85, v86, v114);

            v56 = v230;
            v38 = v224;
          }

          v41 = &selRef_sinkWithCompletion_shouldContinue_;
          v35 = v209;
          v71 = v206;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v72;
    }

    while (v71 != v72);
  }

LABEL_51:

  if (!(v38 >> 62))
  {
    v115 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v115)
    {
      goto LABEL_53;
    }

LABEL_75:

    v156 = sub_10001E0D0();
    v157 = [v156 hearingAidName];

    if (!v157)
    {
LABEL_93:
      v230 = v56;
      swift_getKeyPath();

      v185 = v196;
      KeyPathComparator.init<A>(_:order:)();
      sub_1001BC5A8(&qword_1005249A8, &unk_100457068);
      sub_10000462C(&qword_1005249B0, &qword_1005249A8, &unk_100457068, &protocol conformance descriptor for [A : B].Values);
      sub_10000462C(&qword_1005249B8, &unk_100524C80, &qword_1004573A0, &protocol conformance descriptor for KeyPathComparator<A>);
      v186 = v198;
      v187 = Sequence.sorted<A>(using:)();
      (*(v197 + 8))(v185, v186);

      (*(**(v227 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer) + 192))(v231);

      return v187;
    }

    v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v160 = v159;

    v161 = 1 << *(v56 + 32);
    v162 = -1;
    if (v161 < 64)
    {
      v162 = ~(-1 << v161);
    }

    v163 = v162 & v56[8];
    v164 = (v161 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v165 = 0;
    v166 = v199;
    while (v163)
    {
LABEL_84:
      sub_10001D948(v56[7] + *(v210 + 72) * (__clz(__rbit64(v163)) | (v165 << 6)), v166);
      if (*(v166 + 32) == v158 && *(v166 + 40) == v160)
      {
        sub_10001DA14(v166);
LABEL_92:

        goto LABEL_93;
      }

      v163 &= v163 - 1;
      v169 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = sub_10001DA14(v166);
      if (v169)
      {
        goto LABEL_92;
      }
    }

    while (1)
    {
      v167 = v165 + 1;
      if (__OFADD__(v165, 1))
      {
        break;
      }

      if (v167 >= v164)
      {

        v170 = sub_100257FD0();
        v171 = v170[1];
        v229 = *v170;
        v172 = type metadata accessor for RoutingItem.SelectionIndicator();
        v173 = v195;
        (*(*(v172 - 8) + 56))(v195, 1, 1, v172);
        swift_bridgeObjectRetain_n();
        v174 = *sub_10001CEC0();
        v175 = type metadata accessor for RoutingItem.Attributes();
        v176 = v56;
        v177 = v221;
        (*(*(v175 - 8) + 56))(v221, 1, 1, v175);
        v178 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
        v179 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
        v180 = variable initialization expression of SystemGroupSessionRemoteControlService.sessionCancellables();
        v181 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
        LOBYTE(v230) = 1;
        v190 = v179 & 1;
        v189 = v178 & 1;
        v182 = v194;
        v183 = v229;
        sub_100258314(v229, v171, 0, 0, v158, v160, 10, 0, v194, 0x8A00u, v189, v190, v173, v174, v180, 0, v192, 0, 1, 0, v181, v177);
        v184 = swift_isUniquelyReferenced_nonNull_native();
        v230 = v176;
        sub_10001DB34(v182, v183, v171, v184);

        v56 = v230;
        goto LABEL_93;
      }

      v163 = v56[v167 + 8];
      ++v165;
      if (v163)
      {
        v165 = v167;
        goto LABEL_84;
      }
    }

    __break(1u);
    goto LABEL_95;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v115 = result;
  if (!result)
  {
    goto LABEL_75;
  }

LABEL_53:
  if (v115 >= 1)
  {
    v116 = 0;
    v214 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer;
    v117 = v38 & 0xC000000000000001;
    v212 = (v210 + 56);
    v211 = v115;
    v213 = v38 & 0xC000000000000001;
    do
    {
      if (v117)
      {
        v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v118 = *(v38 + 8 * v116 + 32);
      }

      v119 = v118;
      v120 = [v118 v41[237]];
      if (v120)
      {
        v121 = v120;
        v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v124 = v123;
        v125 = [v119 name];
        if (v125)
        {
          v126 = v125;
          v225 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v228 = v127;

          v128 = (*(**(v227 + v214) + 184))(v122, v124);
          v130 = v128;
          v131 = v129;
          if (v56[2] && (v132 = sub_10000698C(v128, v129), (v133 & 1) != 0))
          {
            v134 = v210;
            v135 = v207;
            sub_10001D948(v56[7] + *(v210 + 72) * v132, v207);
            (*(v134 + 56))(v135, 0, 1, v226);

            sub_1000038A4(v135, &qword_100523C18, &qword_100451AF0);
            v38 = v224;
            v41 = &selRef_sinkWithCompletion_shouldContinue_;
          }

          else
          {
            v136 = v207;
            (*v212)(v207, 1, 1, v226);
            sub_1000038A4(v136, &qword_100523C18, &qword_100451AF0);
            sub_100008318(&v230, v122, v124);

            v223 = sub_100018E6C();
            v218 = v137;
            LODWORD(v216) = v138;
            v139 = type metadata accessor for RoutingItem.SelectionIndicator();
            (*(*(v139 - 8) + 56))(v217, 1, 1, v139);
            if (v220 == v219)
            {
              LODWORD(v215) = *sub_10001CEC0();
            }

            else
            {
              LODWORD(v215) = sub_10001CB30();
            }

            v140 = [v222 matchesUID:v121];

            v229 = v56;
            if (v140)
            {
              v141 = 1;
            }

            else
            {
              v142 = sub_100018E6C();
              v144 = v143;
              v146 = v145;
              v141 = sub_10001CD44(v142, v143, v145);
              sub_100019550(v142, v144, v146);
            }

            v147 = v221;
            sub_10001C1E0(v221);
            v148 = type metadata accessor for RoutingItem.Attributes();
            (*(*(v148 - 8) + 56))(v147, 0, 1, v148);
            v149 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
            v150 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
            v151 = variable initialization expression of SystemGroupSessionRemoteControlService.sessionCancellables();
            v152 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();

            LOBYTE(v230) = 1;
            v188 = v149 & 1;
            v153 = v200;
            sub_100258314(v130, v131, 0, 0, v225, v228, v223, v218, v200, v216, v188, v150 & 1, v217, v215, v151, v141, v192, 0, 1, 0, v152, v147);
            v154 = v229;
            v155 = swift_isUniquelyReferenced_nonNull_native();
            v230 = v154;
            sub_10001DB34(v153, v130, v131, v155);

            v56 = v230;
            v38 = v224;
            v41 = &selRef_sinkWithCompletion_shouldContinue_;
            v115 = v211;
          }

          v117 = v213;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v116;
    }

    while (v115 != v116);
    goto LABEL_75;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_10027DB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_100285D14(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_10000698C(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1002860CC();
        v16 = v18;
      }

      result = sub_10021A064(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_10027DC94()
{
  sub_10002349C(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingMode;
  v2 = type metadata accessor for RoutingMode();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1001DFBCC(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delegate);

  return v0;
}

uint64_t sub_10027DDD4()
{
  sub_10027DC94();

  return swift_deallocClassInstance();
}

uint64_t (*sub_10027DE74(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 224))();
  return sub_10027DF04;
}

void sub_10027DF04(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10027DF98(uint64_t *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v401 = a3;
  v392 = a2;
  v393 = *v3;
  v379 = type metadata accessor for RoutingControl.RoutingControlType();
  v384 = *(v379 - 8);
  v5 = __chkstk_darwin(v379);
  v378 = &v370 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v383 = &v370 - v7;
  v387 = type metadata accessor for RoutingControl();
  v386 = *(v387 - 8);
  v8 = __chkstk_darwin(v387);
  v377 = &v370 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v385 = &v370 - v10;
  v374 = type metadata accessor for HostedRoutingItem(0);
  v408 = *(v374 - 8);
  v11 = __chkstk_darwin(v374);
  v407 = (&v370 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v372 = &v370 - v14;
  v15 = __chkstk_darwin(v13);
  v373 = &v370 - v16;
  v17 = __chkstk_darwin(v15);
  v406 = &v370 - v18;
  v19 = __chkstk_darwin(v17);
  v371 = &v370 - v20;
  __chkstk_darwin(v19);
  v380 = &v370 - v21;
  v395 = type metadata accessor for Logger();
  v397 = *(v395 - 8);
  v22 = __chkstk_darwin(v395);
  v376 = &v370 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v370 = &v370 - v25;
  v26 = __chkstk_darwin(v24);
  v375 = &v370 - v27;
  __chkstk_darwin(v26);
  v404 = &v370 - v28;
  v409 = type metadata accessor for ContinuousClock.Instant();
  v412 = *(v409 - 8);
  v390 = *(v412 + 8);
  v29 = __chkstk_darwin(v409);
  v400 = (&v370 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __chkstk_darwin(v29);
  v399 = (&v370 - v32);
  v33 = __chkstk_darwin(v31);
  v403 = &v370 - v34;
  __chkstk_darwin(v33);
  v36 = &v370 - v35;
  v37 = type metadata accessor for ContinuousClock();
  v410 = *(v37 - 8);
  v38 = v410;
  v39 = *(v410 + 64);
  v40 = __chkstk_darwin(v37);
  v398 = &v370 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v40);
  v43 = &v370 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v370 - v45;
  v402 = &v370 - v45;
  __chkstk_darwin(v44);
  v48 = &v370 - v47;
  v396 = a1;
  v49 = a1[1];
  v394 = *a1;
  v405 = v49;
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v50 = *(v38 + 16);
  v388 = v48;
  v51 = v37;
  v50(v46, v48, v37);
  v52 = v412;
  v53 = *(v412 + 2);
  v54 = v403;
  v389 = v36;
  v55 = v36;
  v56 = v409;
  v53(v403, v55, v409);
  v391 = v43;
  v57 = v43;
  v58 = v402;
  v50(v57, v402, v51);
  v53(v399, v54, v56);
  v50(v398, v58, v51);
  v53(v400, v54, v56);
  v59 = v410;
  v60 = (*(v410 + 80) + 16) & ~*(v410 + 80);
  v61 = (v39 + *(v52 + 80) + v60) & ~*(v52 + 80);
  v62 = (v390 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 23) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v66 = *(v59 + 32);
  v67 = v402;
  v402 = v51;
  v68 = v51;
  v69 = v393;
  v66(v65 + v60, v67, v68);
  v70 = v56;
  v71 = v394;
  (*(v412 + 4))(v65 + v61, v403, v70);
  *(v65 + v62) = v411;
  v72 = (v65 + v63);
  v73 = v397;
  v74 = v395;
  v75 = v405;
  *v72 = v71;
  v72[1] = v75;
  v76 = (v65 + v64);
  v77 = v401;
  *v76 = v392;
  v76[1] = v77;
  v403 = v65;
  *(v65 + ((v64 + 23) & 0xFFFFFFFFFFFFFFF8)) = v69;
  v78 = v396;
  v79 = v75;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  v80 = sub_100028D40();
  v81 = *(v73 + 16);
  v381 = v80;
  v390 = v73 + 16;
  v382 = v81;
  (v81)(v404);
  v82 = *(v78 + 2);
  v418[0] = *(v78 + 1);
  v418[1] = v82;
  v419 = *(v78 + 48);

  sub_10026D080(v418, &aBlock);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  v85 = v79;

  sub_100238E4C(v418);
  if (os_log_type_enabled(v83, v84))
  {
    v86 = swift_slowAlloc();
    *&v413 = swift_slowAlloc();
    *v86 = 136315906;
    v87 = _typeName(_:qualified:)();
    v89 = sub_10002C9C8(v87, v88, &v413);

    *(v86 + 4) = v89;
    *(v86 + 12) = 2082;
    *(v86 + 14) = sub_10002C9C8(*(v411 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v411 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), &v413);
    *(v86 + 22) = 2082;
    v90 = v71;
    *(v86 + 24) = sub_10002C9C8(v71, v85, &v413);
    *(v86 + 32) = 2082;
    v91 = *(v78 + 1);
    aBlock = *v78;
    v415 = v91;
    v416 = *(v78 + 2);
    v417 = *(v78 + 48);
    sub_1002856A4();
    v92 = dispatch thunk of CustomStringConvertible.description.getter();
    v94 = sub_10002C9C8(v92, v93, &v413);

    *(v86 + 34) = v94;
    _os_log_impl(&_mh_execute_header, v83, v84, "[%s]<%{public}s> interact<%{public}s> - interaction: %{public}s", v86, 0x2Au);
    swift_arrayDestroy();

    v73 = v397;
    v74 = v395;
  }

  else
  {
    v90 = v71;
  }

  v95 = *(v73 + 8);
  v95(v404, v74);
  v96 = v418[0];
  if (v419 > 1u)
  {
    if (v419 != 2)
    {
      if (v419 == 7)
      {
        v97 = *(v412 + 1);
        v97(v399, v409);
        v98 = *(v410 + 8);
        v410 += 8;
        v408 = v98;
        (v98)(v391, v402);
        v99 = swift_projectBox();
        (*(v386 + 16))(v385, v99, v387);
        v100 = v383;
        RoutingControl.type.getter();
        v101 = *(v384 + 88);
        v102 = v379;
        v103 = v101(v100, v379);
        if (v103 == enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
        {
          (v408)(v398, v402);
          v97(v400, v409);

          v345 = v405;

          v346 = v411;

          *&aBlock = 0;
          *(&aBlock + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(95);
          v347._countAndFlagsBits = 91;
          v347._object = 0xE100000000000000;
          String.append(_:)(v347);
          v348._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v348);

          v349._countAndFlagsBits = 15453;
          v349._object = 0xE200000000000000;
          String.append(_:)(v349);
          String.append(_:)(*(v346 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier));
          v350._countAndFlagsBits = 0x617265746E69203ELL;
          v350._object = 0xEB000000003C7463;
          String.append(_:)(v350);
          v351._countAndFlagsBits = v394;
          v351._object = v345;
          String.append(_:)(v351);
          v352._countAndFlagsBits = 0x746E6F63202D203ELL;
          v352._object = 0xED0000203A6C6F72;
          String.append(_:)(v352);
          sub_100017FCC(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
          v353._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v353);

          v354._countAndFlagsBits = 0xD00000000000003CLL;
          v354._object = 0x800000010043E270;
          String.append(_:)(v354);
        }

        else
        {
          v104 = enum case for RoutingControl.RoutingControlType.relativeVolume(_:);
          v105 = v405;
          v412 = v97;
          if (v103 == enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
          {
            v106 = v383;
            (*(v384 + 96))(v383, v102);
            v107 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
            (*(*(v107 - 8) + 8))(v106, v107);
LABEL_28:
            v163 = v378;
            RoutingControl.type.getter();
            v164 = v101(v163, v102);
            if (v164 == v104)
            {
              (*(v384 + 96))(v163, v102);
              v165 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
              (*(*(v165 - 8) + 8))(v163, v165);
LABEL_31:
              v166 = type metadata accessor for InternalRoutingError();
              sub_100017FCC(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
              swift_allocError();
              (*(*(v166 - 8) + 104))(v167, enum case for InternalRoutingError.notImplemented(_:), v166);
              MRDFastSyncGroupSessionState.rawValue.getter();
              v169 = v168;
              v171 = v170;
              v173 = v172;
              v174 = v398;
              v175 = v400;
              sub_100281384(v176, v168, v170, v172, v398, v400, v411, v394, v105, v392, v401, v393);

              sub_10023DCB0(v169, v171, v173);

              v177 = v402;
              v178 = v408;
              (v408)(v174, v402);
              v179 = v409;
              v180 = v412;
              v412(v175, v409);

              (*(v386 + 8))(v385, v387);
              v180(v389, v179);
              return v178(v388, v177);
            }

            if (v164 == enum case for RoutingControl.RoutingControlType.mute(_:))
            {
              goto LABEL_31;
            }

            (v408)(v398, v402);
            v412(v400, v409);

            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(58);
            v364._countAndFlagsBits = 91;
            v364._object = 0xE100000000000000;
            String.append(_:)(v364);
            v365._countAndFlagsBits = _typeName(_:qualified:)();
            String.append(_:)(v365);

            v366._countAndFlagsBits = 0xD000000000000016;
            v366._object = 0x800000010043E2B0;
            String.append(_:)(v366);
            v367._countAndFlagsBits = v394;
            v367._object = v105;
            String.append(_:)(v367);
            v368._countAndFlagsBits = 0xD00000000000001DLL;
            v368._object = 0x800000010043E2D0;
            String.append(_:)(v368);
            sub_100017FCC(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
            v369._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v369);

            goto LABEL_75;
          }

          if (v103 == enum case for RoutingControl.RoutingControlType.mute(_:))
          {
            goto LABEL_28;
          }

          (v408)(v398, v402);
          v412(v400, v409);

          v355 = v411;

          *&aBlock = 0;
          *(&aBlock + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(53);
          v413 = aBlock;
          v356._countAndFlagsBits = 91;
          v356._object = 0xE100000000000000;
          String.append(_:)(v356);
          v357._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v357);

          v358._countAndFlagsBits = 15453;
          v358._object = 0xE200000000000000;
          String.append(_:)(v358);
          String.append(_:)(*(v355 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier));
          v359._countAndFlagsBits = 0x617265746E69203ELL;
          v359._object = 0xEB000000003C7463;
          String.append(_:)(v359);
          v360._countAndFlagsBits = v394;
          v360._object = v105;
          String.append(_:)(v360);
          v361._object = 0x800000010043E250;
          v361._countAndFlagsBits = 0xD00000000000001FLL;
          String.append(_:)(v361);
          v362 = *(v396 + 1);
          aBlock = *v396;
          v415 = v362;
          v416 = *(v396 + 2);
          v417 = *(v396 + 48);
          sub_1002856A4();
          v363._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v363);
        }

LABEL_75:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v114 = v412;
      if (v419 == 10)
      {
        v412 = *(v412 + 1);
        v412(v399, v409);
        v410 = *(v410 + 8);
        v134 = v402;
        (v410)(v391, v402);
        v135 = sub_1001BC5A8(&qword_100523030, &unk_100450F40);
        v136 = swift_projectBox();
        v137 = *(v136 + *(v135 + 48));
        v138 = v386;
        v139 = v377;
        v140 = v387;
        (*(v386 + 16))(v377, v136, v387);

        sub_1002831BC(v139, v137, v396, v403);

        v141 = v410;
        (v410)(v398, v134);
        v142 = v409;
        v143 = v412;
        v412(v400, v409);

        (*(v138 + 8))(v139, v140);
        v143(v389, v142);
        return v141(v388, v134);
      }

LABEL_71:
      v330 = *(v410 + 8);
      v331 = v402;
      v330(v398, v402);
      v332 = *(v114 + 1);
      v333 = v409;
      v332(v400, v409);

      v334 = v90;
      v335 = v405;

      v336 = v411;

      v332(v399, v333);
      v330(v391, v331);
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v413 = aBlock;
      v337._countAndFlagsBits = 91;
      v337._object = 0xE100000000000000;
      String.append(_:)(v337);
      v338._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v338);

      v339._countAndFlagsBits = 15453;
      v339._object = 0xE200000000000000;
      String.append(_:)(v339);
      String.append(_:)(*(v336 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier));
      v340._countAndFlagsBits = 0x617265746E69203ELL;
      v340._object = 0xEB000000003C7463;
      String.append(_:)(v340);
      v341._countAndFlagsBits = v334;
      v341._object = v335;
      String.append(_:)(v341);
      v342._object = 0x800000010043E250;
      v342._countAndFlagsBits = 0xD00000000000001FLL;
      String.append(_:)(v342);
      v343 = *(v396 + 1);
      aBlock = *v396;
      v415 = v343;
      v416 = *(v396 + 2);
      v417 = *(v396 + 48);
      sub_1002856A4();
      v344._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v344);

      goto LABEL_75;
    }

    v404 = v95;
    v130 = v411;
    v131 = *(**(v411 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer) + 176);

    v386 = v131(v96, *(&v96 + 1));
    v387 = v132;
    if (*(v130 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
    {
      v90 = v74;

      v133 = String._bridgeToObjectiveC()();
    }

    else
    {
      v90 = v74;
      v133 = 0;
    }

    v406 = [objc_opt_self() sharedLocalEndpointForRoutingContextWithUID:v133];

    v181 = (*(*v411 + 232))();
    v114 = *(v181 + 16);
    if (v114)
    {
      v182 = 0;
      while (1)
      {
        if (v182 >= *(v181 + 16))
        {
          __break(1u);
          goto LABEL_70;
        }

        sub_10001D948(v181 + ((v408[80] + 32) & ~v408[80]) + *(v408 + 9) * v182, v407);
        if (sub_1002587B8() == v96 && v183 == *(&v96 + 1))
        {
          break;
        }

        v184 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v184)
        {
          goto LABEL_51;
        }

        ++v182;
        sub_10001DA14(v407);
        if (v114 == v182)
        {
          goto LABEL_40;
        }
      }

LABEL_51:

      v239 = v374;
      v240 = v372;
      v241 = *(v412 + 1);
      v242 = v399;
      v412 = (v412 + 8);
      v399 = v241;
      (v241)(v242, v409);
      v243 = *(v410 + 8);
      v410 += 8;
      v408 = v243;
      (v243)(v391, v402);
      sub_10001DFD4(v407, v240);
      v244 = v373;
      sub_10001DFD4(v240, v373);
      v245 = *(v244 + *(v239 + 64) + 16);
      v246 = v396;
      if (((v245 >> 8) & 6 | (v245 >> 7) & 1) == 5)
      {
        v247 = v370;
        v382();

        v248 = v405;

        v249 = Logger.logObject.getter();
        v250 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v249, v250))
        {
          v251 = swift_slowAlloc();
          *&aBlock = swift_slowAlloc();
          *v251 = 136315650;
          v252 = _typeName(_:qualified:)();
          v254 = sub_10002C9C8(v252, v253, &aBlock);

          *(v251 + 4) = v254;
          *(v251 + 12) = 2082;
          *(v251 + 14) = sub_10002C9C8(*(v411 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v411 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), &aBlock);
          *(v251 + 22) = 2082;
          v244 = v373;
          *(v251 + 24) = sub_10002C9C8(v394, v248, &aBlock);
          _os_log_impl(&_mh_execute_header, v249, v250, "[%s]<%{public}s> interact<%{public}s> - reset predicted item", v251, 0x20u);
          swift_arrayDestroy();

          v255 = v370;
          v256 = v395;
        }

        else
        {

          v255 = v247;
          v256 = v90;
        }

        (v404)(v255, v256);
        [v406 resetPredictedOutputDevice];
      }

      if (sub_100258968())
      {

        v294 = *(v244 + 32);
        v293 = *(v244 + 40);

        v295 = v411;
        v296 = sub_10001E0D0();
        v297 = String._bridgeToObjectiveC()();
        v298 = swift_allocObject();
        v299 = *(v246 + 1);
        *(v298 + 24) = *v246;
        *(v298 + 16) = v295;
        *(v298 + 40) = v299;
        *(v298 + 56) = *(v246 + 2);
        *(v298 + 72) = *(v246 + 48);
        v300 = v403;
        *(v298 + 80) = sub_10028554C;
        *(v298 + 88) = v300;
        *(v298 + 96) = v294;
        *(v298 + 104) = v293;
        *&v416 = sub_100285718;
        *(&v416 + 1) = v298;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v415 = sub_1001BC53C;
        *(&v415 + 1) = &unk_1004C70B8;
        v301 = _Block_copy(&aBlock);

        sub_10026D080(v418, &v413);

        [v296 routeToHearingAidForInteraction:v297 completion:v301];
        _Block_release(v301);

        v302 = v402;
        v303 = v408;
        (v408)(v398, v402);
        v304 = v409;
        v305 = v399;
        (v399)(v400, v409);

        v305(v389, v304);
        v303(v388, v302);
        v306 = v244;
      }

      else
      {
        v307 = MRRequestDetailsInitiatorRoutePicker;
        v308 = *(v246 + 1);
        aBlock = *v246;
        v415 = v308;
        v416 = *(v246 + 2);
        v417 = *(v246 + 48);
        sub_1002856A4();
        dispatch thunk of CustomStringConvertible.description.getter();
        v309 = objc_allocWithZone(MRRequestDetails);
        v310 = v246;
        v311 = String._bridgeToObjectiveC()();
        v312 = String._bridgeToObjectiveC()();

        v313 = [v309 initWithInitiator:v307 requestID:v311 reason:v312 userInitiated:1];

        sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
        v314 = swift_allocObject();
        *(v314 + 16) = xmmword_10044EC70;
        v315 = v387;
        *(v314 + 32) = v386;
        *(v314 + 40) = v315;
        v316 = objc_allocWithZone(MRGroupTopologyModificationRequest);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v318 = [v316 initWithRequestDetails:v313 type:3 outputDeviceUIDs:isa];

        [v318 setShouldWaitForUpdatedOutputDevices:1];
        v319 = v411;
        v320 = v411[2];
        v321 = swift_allocObject();
        v322 = *(v310 + 1);
        *(v321 + 56) = *v310;
        v323 = v403;
        *(v321 + 16) = sub_10028554C;
        *(v321 + 24) = v323;
        *(v321 + 32) = v96;
        *(v321 + 48) = v319;
        *(v321 + 72) = v322;
        *(v321 + 88) = *(v310 + 2);
        *(v321 + 104) = *(v310 + 48);
        *&v416 = sub_1002856F8;
        *(&v416 + 1) = v321;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v415 = sub_1001BC53C;
        *(&v415 + 1) = &unk_1004C7068;
        v324 = _Block_copy(&aBlock);

        sub_10026D080(v418, &v413);

        v325 = v406;
        [v406 modifyTopologyWithRequest:v318 withReplyQueue:v320 completion:v324];
        _Block_release(v324);

        v326 = v402;
        v327 = v408;
        (v408)(v398, v402);
        v328 = v409;
        v329 = v399;
        (v399)(v400, v409);

        v329(v389, v328);
        v327(v388, v326);
        v306 = v373;
      }

      return sub_10001DA14(v306);
    }

LABEL_40:

    v185 = v376;
    v186 = v90;
    (v382)(v376, v381, v90);

    v187 = v405;

    v188 = Logger.logObject.getter();
    v189 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v190 = 136315906;
      v191 = v393;
      v192 = _typeName(_:qualified:)();
      v194 = v187;
      v195 = sub_10002C9C8(v192, v193, &aBlock);

      *(v190 + 4) = v195;
      v187 = v194;
      v196 = v411;
      *(v190 + 12) = 2082;
      *(v190 + 14) = sub_10002C9C8(*(v196 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v196 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), &aBlock);
      *(v190 + 22) = 2082;
      *(v190 + 24) = sub_10002C9C8(v394, v187, &aBlock);
      *(v190 + 32) = 2082;
      v197 = v191;
      *(v190 + 34) = sub_10002C9C8(v96, *(&v96 + 1), &aBlock);
      _os_log_impl(&_mh_execute_header, v188, v189, "[%s]<%{public}s> interact<%{public}s> - could not find source item matching identifier: %{public}s", v190, 0x2Au);
      swift_arrayDestroy();

      (v404)(v376, v395);
      v198 = v398;
    }

    else
    {

      (v404)(v185, v186);
      v198 = v398;
      v197 = v393;
    }

    v211 = type metadata accessor for InternalRoutingError();
    sub_100017FCC(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v211 - 8) + 104))(v212, enum case for InternalRoutingError.itemNotFound(_:), v211);
    MRDFastSyncGroupSessionState.rawValue.getter();
    v214 = v213;
    v216 = v215;
    v218 = v217;
    v219 = v391;
    v220 = v399;
    sub_100281384(v221, v213, v215, v217, v391, v399, v411, v394, v187, v392, v401, v197);

    sub_10023DCB0(v214, v216, v218);

    v222 = *(v410 + 8);
    v223 = v198;
    v224 = v402;
    v222(v223, v402);
    v225 = *(v412 + 1);
    v226 = v409;
    v225(v400, v409);

    v225(v220, v226);
    v227 = v219;
LABEL_48:
    v222(v227, v224);
    v225(v389, v226);
    return (v222)(v388, v224);
  }

  if (v419)
  {
    v114 = v412;
    if (v419 != 1)
    {
      goto LABEL_71;
    }

    v145 = *(v412 + 1);
    v412 = (v412 + 8);
    v408 = v145;
    (v145)(v399, v409);
    v146 = *(v410 + 8);
    v410 += 8;
    v407 = v146;
    (v146)(v391, v402);
    v147 = v411;
    v148 = *(**(v411 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer) + 176);

    v406 = v96;
    v149 = v148(v96, *(&v96 + 1));
    v151 = v150;
    v152 = MRRequestDetailsInitiatorRoutePicker;
    v153 = *(v396 + 1);
    aBlock = *v396;
    v415 = v153;
    v416 = *(v396 + 2);
    v417 = *(v396 + 48);
    sub_1002856A4();
    dispatch thunk of CustomStringConvertible.description.getter();
    v154 = objc_allocWithZone(MRRequestDetails);
    v155 = String._bridgeToObjectiveC()();
    v156 = String._bridgeToObjectiveC()();

    v157 = [v154 initWithInitiator:v152 requestID:v155 reason:v156 userInitiated:1];

    sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
    v158 = swift_allocObject();
    *(v158 + 16) = xmmword_10044EC70;
    *(v158 + 32) = v149;
    *(v158 + 40) = v151;
    v159 = objc_allocWithZone(MRGroupTopologyModificationRequest);
    v160 = Array._bridgeToObjectiveC()().super.isa;

    v161 = [v159 initWithRequestDetails:v157 type:2 outputDeviceUIDs:v160];

    [v161 setShouldWaitForUpdatedOutputDevices:1];
    if (*(v147 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
    {

      v162 = String._bridgeToObjectiveC()();
    }

    else
    {
      v162 = 0;
    }

    v199 = v389;
    v200 = [objc_opt_self() sharedLocalEndpointForRoutingContextWithUID:v162];

    v201 = v147[2];
    v202 = swift_allocObject();
    v203 = v396;
    v204 = *(v396 + 1);
    *(v202 + 56) = *v396;
    v205 = v403;
    *(v202 + 16) = sub_10028554C;
    *(v202 + 24) = v205;
    *(v202 + 32) = v406;
    *(v202 + 40) = *(&v96 + 1);
    *(v202 + 48) = v147;
    *(v202 + 72) = v204;
    *(v202 + 88) = *(v203 + 2);
    *(v202 + 104) = *(v203 + 48);
    *&v416 = sub_1002857C0;
    *(&v416 + 1) = v202;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v415 = sub_1001BC53C;
    *(&v415 + 1) = &unk_1004C7108;
    v206 = _Block_copy(&aBlock);

    sub_10026D080(v418, &v413);

    [v200 modifyTopologyWithRequest:v161 withReplyQueue:v201 completion:v206];
    _Block_release(v206);

    v207 = v402;
    v208 = v407;
    (v407)(v398, v402);
    v209 = v409;
    v210 = v408;
    (v408)(v400, v409);

    v210(v199, v209);
    return v208(v388, v207);
  }

  else
  {
    v404 = v95;
    v108 = v411;
    v109 = *(**(v411 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer) + 176);
    v110 = *(&v418[0] + 1);

    v407 = v109(v96, v110);
    v112 = v111;
    v90 = v108;
    v113 = (*(*v108 + 232))();
    v114 = *(v113 + 16);
    if (!v114)
    {
LABEL_18:

      v118 = v375;
      v119 = v395;
      (v382)(v375, v381, v395);

      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v122 = 136315906;
        v123 = v393;
        v124 = _typeName(_:qualified:)();
        v126 = v90;
        v127 = sub_10002C9C8(v124, v125, &aBlock);

        *(v122 + 4) = v127;
        *(v122 + 12) = 2082;
        *(v122 + 14) = sub_10002C9C8(*(v126 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v126 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), &aBlock);
        *(v122 + 22) = 2082;
        *(v122 + 24) = sub_10002C9C8(v394, v405, &aBlock);
        *(v122 + 32) = 2082;
        v128 = v123;
        *(v122 + 34) = sub_10002C9C8(v96, v110, &aBlock);
        _os_log_impl(&_mh_execute_header, v120, v121, "[%s]<%{public}s> interact<%{public}s> - could not find source item matching identifier: %{public}s", v122, 0x2Au);
        swift_arrayDestroy();

        (v404)(v375, v395);
        v129 = v398;
      }

      else
      {

        (v404)(v118, v119);
        v129 = v398;
        v128 = v393;
      }

      v228 = type metadata accessor for InternalRoutingError();
      sub_100017FCC(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v228 - 8) + 104))(v229, enum case for InternalRoutingError.itemNotFound(_:), v228);
      MRDFastSyncGroupSessionState.rawValue.getter();
      v231 = v230;
      v233 = v232;
      v235 = v234;
      v236 = v399;
      sub_100281384(v237, v230, v232, v234, v391, v399, v411, v394, v405, v392, v401, v128);

      sub_10023DCB0(v231, v233, v235);

      v222 = *(v410 + 8);
      v238 = v129;
      v224 = v402;
      v222(v238, v402);
      v225 = *(v412 + 1);
      v226 = v409;
      v225(v400, v409);

      v225(v236, v226);
      v227 = v391;
      goto LABEL_48;
    }

    v115 = 0;
    while (1)
    {
      if (v115 >= *(v113 + 16))
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      sub_10001D948(v113 + ((v408[80] + 32) & ~v408[80]) + *(v408 + 9) * v115, v406);
      if (sub_1002587B8() == v96 && v116 == v110)
      {
        break;
      }

      v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v117)
      {
        goto LABEL_54;
      }

      ++v115;
      sub_10001DA14(v406);
      if (v114 == v115)
      {
        goto LABEL_18;
      }
    }

LABEL_54:

    v257 = (v412 + 8);
    v408 = *(v412 + 1);
    (v408)(v399, v409);
    v258 = *(v410 + 8);
    v410 += 8;
    v404 = v258;
    (v258)(v391, v402);
    v259 = v371;
    sub_10001DFD4(v406, v371);
    sub_10001DFD4(v259, v380);
    v260 = v396;
    if (*(v90 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
    {

      v261 = String._bridgeToObjectiveC()();
    }

    else
    {
      v261 = 0;
    }

    v262 = [objc_opt_self() sharedLocalEndpointForRoutingContextWithUID:v261];

    v263 = *(v380 + *(v374 + 44));
    LOBYTE(aBlock) = *sub_100257764();
    LOBYTE(v413) = v263;
    sub_100248690();
    v264 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v412 = v257;
    v406 = v262;
    if ((v264 & 1) != 0 && (v265 = [v262 predictedOutputDevice]) != 0 && (v266 = v265, v267 = objc_msgSend(v265, "uid"), v266, v267))
    {
      v268 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v270 = v269;

      sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
      v271 = swift_allocObject();
      *(v271 + 16) = xmmword_100450890;
      *(v271 + 32) = v407;
      *(v271 + 40) = v112;
      *(v271 + 48) = v268;
      *(v271 + 56) = v270;
    }

    else
    {
      sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
      v272 = swift_allocObject();
      *(v272 + 16) = xmmword_10044EC70;
      *(v272 + 32) = v407;
      *(v272 + 40) = v112;
    }

    v273 = MRRequestDetailsInitiatorRoutePicker;
    v274 = *(v260 + 1);
    aBlock = *v260;
    v415 = v274;
    v416 = *(v260 + 2);
    v417 = *(v260 + 48);
    sub_1002856A4();
    dispatch thunk of CustomStringConvertible.description.getter();
    v275 = objc_allocWithZone(MRRequestDetails);
    v276 = String._bridgeToObjectiveC()();
    v277 = String._bridgeToObjectiveC()();

    v278 = [v275 initWithInitiator:v273 requestID:v276 reason:v277 userInitiated:1];

    v279 = objc_allocWithZone(MRGroupTopologyModificationRequest);
    v280 = Array._bridgeToObjectiveC()().super.isa;

    v281 = [v279 initWithRequestDetails:v278 type:1 outputDeviceUIDs:v280];

    [v281 setShouldWaitForUpdatedOutputDevices:1];
    v282 = v411;
    v283 = v411[2];
    v284 = swift_allocObject();
    v285 = *(v260 + 1);
    *(v284 + 56) = *v260;
    v286 = v403;
    *(v284 + 16) = sub_10028554C;
    *(v284 + 24) = v286;
    *(v284 + 32) = v96;
    *(v284 + 40) = v110;
    *(v284 + 48) = v282;
    *(v284 + 72) = v285;
    *(v284 + 88) = *(v260 + 2);
    *(v284 + 104) = *(v260 + 48);
    *&v416 = sub_100285840;
    *(&v416 + 1) = v284;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v415 = sub_1001BC53C;
    *(&v415 + 1) = &unk_1004C7158;
    v287 = _Block_copy(&aBlock);

    sub_10026D080(v418, &v413);

    v288 = v406;
    [v406 modifyTopologyWithRequest:v281 withReplyQueue:v283 completion:v287];
    _Block_release(v287);

    v289 = v402;
    v290 = v404;
    (v404)(v398, v402);
    v291 = v409;
    v292 = v408;
    (v408)(v400, v409);

    sub_10001DA14(v380);
    v292(v389, v291);
    return v290(v388, v289);
  }
}

uint64_t sub_100281384(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void (*a10)(uint64_t *), uint64_t a11, uint64_t a12)
{
  v76 = a8;
  v104 = a4;
  v103 = a3;
  v99 = a11;
  v100 = a10;
  v15 = sub_1001BC5A8(&unk_100524EC0, &qword_100457040);
  __chkstk_darwin(v15 - 8);
  v95 = &v72 - v16;
  v17 = type metadata accessor for InternalRoutingError();
  v97 = *(v17 - 8);
  v98 = v17;
  __chkstk_darwin(v17);
  v96 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v80 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Duration.UnitsFormatStyle();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v78 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ContinuousClock.Instant();
  v93 = *(v27 - 8);
  v94 = v27;
  __chkstk_darwin(v27);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContinuousClock.now.getter();
  v92 = v29;
  v102 = ContinuousClock.Instant.duration(to:)();
  v91 = v30;
  v31 = sub_100028D40();
  v32 = *(v24 + 16);
  v90 = v23;
  v32(v26, v31, v23);
  v33 = a7;

  v34 = a1;
  v35 = a2;
  v36 = a2;
  v37 = v103;
  v38 = v104;
  sub_10023DBE8(a1, v36, v103, v104);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v75 = a9;

  v74 = v33;

  v101 = v35;
  sub_10023DC58(v34, v35, v37, v38);
  v89 = v39;
  if (os_log_type_enabled(v39, v40))
  {
    v41 = v26;
    v73 = v40;
    v42 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v106 = v72;
    *v42 = 136316162;
    v43 = _typeName(_:qualified:)();
    v45 = sub_10002C9C8(v43, v44, &v106);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2082;
    *(v42 + 14) = sub_10002C9C8(*(v74 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v74 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), &v106);
    *(v42 + 22) = 2082;
    *(v42 + 24) = sub_10002C9C8(v76, v75, &v106);
    *(v42 + 32) = 2082;
    v46 = v34;
    if (v34)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v105, " with error: ");
      HIWORD(v105[1]) = -4864;
      v107 = v34;
      v108 = v101;
      v109 = v103;
      v110 = v104;
      sub_10023DD70();
      v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v47);

      v48._countAndFlagsBits = 32;
      v48._object = 0xE100000000000000;
      String.append(_:)(v48);
      v49 = v105[0];
      v50 = v105[1];
    }

    else
    {
      v50 = 0xE100000000000000;
      v49 = 32;
    }

    v51 = sub_10002C9C8(v49, v50, &v106);

    *(v42 + 34) = v51;
    *(v42 + 42) = 2082;
    sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
    type metadata accessor for Duration.UnitsFormatStyle.Unit();
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100450890;
    static Duration.UnitsFormatStyle.Unit.seconds.getter();
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_1002868A0(v52);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v53 = v77;
    static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
    v54 = v80;
    static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
    v55 = v85;
    static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
    v56 = v78;
    static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

    (*(v87 + 8))(v55, v88);
    (*(v84 + 8))(v54, v86);
    (*(v79 + 8))(v53, v81);
    sub_100017FCC(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
    v57 = v83;
    Duration.formatted<A>(_:)();
    (*(v82 + 8))(v56, v57);
    v58 = sub_10002C9C8(v107, v108, &v106);

    *(v42 + 44) = v58;
    v59 = v89;
    _os_log_impl(&_mh_execute_header, v89, v73, "[%s]<%{public}s> interact<%{public}s> - finished%{public}sin: %{public}s", v42, 0x34u);
    swift_arrayDestroy();

    (*(v24 + 8))(v41, v90);
  }

  else
  {

    (*(v24 + 8))(v26, v90);
    v46 = v34;
  }

  v60 = v100;
  v62 = v97;
  v61 = v98;
  v63 = v95;
  v64 = v96;
  if (!v46)
  {
    (*(v97 + 56))(v95, 1, 1, v98);
    goto LABEL_12;
  }

  v107 = v46;
  swift_errorRetain();
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  v65 = swift_dynamicCast();
  (*(v62 + 56))(v63, v65 ^ 1u, 1, v61);
  if ((*(v62 + 48))(v63, 1, v61) == 1)
  {
LABEL_12:
    sub_1000038A4(v63, &unk_100524EC0, &qword_100457040);
LABEL_13:
    v67 = v101;
    v68 = v103;
    v69 = v104;
    sub_10023DBE8(v46, v101, v103, v104);
    static Duration./ infix(_:_:)();
    sub_10026CEA0(v46, v67, v68, v69, 1, &v107, v70);
    v60(&v107);
    sub_100286E38(&v107);
    return (*(v93 + 8))(v92, v94);
  }

  (*(v62 + 32))(v64, v63, v61);
  if ((InternalRoutingError.isStabilityError.getter() & 1) == 0)
  {
    (*(v62 + 8))(v64, v61);
    goto LABEL_13;
  }

  static Duration./ infix(_:_:)();
  sub_10026CEA0(0, 0, 0, 0, 0, &v107, v66);
  v60(&v107);
  sub_100286E38(&v107);
  (*(v62 + 8))(v64, v61);
  return (*(v93 + 8))(v92, v94);
}

void sub_100281F58(__int128 *a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v112 = a5;
  v113 = a4;
  v111 = a3;
  v110 = a2;
  v115 = *v5;
  v108 = type metadata accessor for DispatchWorkItemFlags();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for DispatchQoS();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for DispatchTime();
  v101 = *(v120 - 8);
  v10 = __chkstk_darwin(v120);
  v100 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v119 = &v94 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ContinuousClock.Instant();
  v123 = *(v17 - 8);
  v124 = v17;
  v18 = __chkstk_darwin(v17);
  v126 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v118 = &v94 - v21;
  v98 = v22;
  __chkstk_darwin(v20);
  v24 = &v94 - v23;
  v121 = type metadata accessor for ContinuousClock();
  v127 = *(v121 - 8);
  v25 = __chkstk_darwin(v121);
  v125 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v117 = &v94 - v28;
  v97 = v29;
  __chkstk_darwin(v27);
  v31 = &v94 - v30;
  ContinuousClock.init()();
  v32 = *(a1 + 1);
  v114 = *a1;
  v122 = v24;
  ContinuousClock.now.getter();
  v33 = sub_100028D40();
  v34 = *(v14 + 16);
  v106 = v13;
  v34(v16, v33, v13);
  v35 = a1[2];
  v133[0] = a1[1];
  v133[1] = v35;
  v134 = *(a1 + 48);

  sub_10026D080(v133, &aBlock);
  v99 = v16;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  sub_100238E4C(v133);
  v38 = os_log_type_enabled(v36, v37);
  v116 = v6;
  v109 = v32;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v132 = v96;
    *v39 = 136315906;
    v40 = _typeName(_:qualified:)();
    v42 = sub_10002C9C8(v40, v41, &v132);
    v95 = v14;
    v43 = v32;
    v44 = v42;

    *(v39 + 4) = v44;
    *(v39 + 12) = 2082;
    *(v39 + 14) = sub_10002C9C8(*(v116 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v116 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), &v132);
    *(v39 + 22) = 2082;
    *(v39 + 24) = sub_10002C9C8(v114, v43, &v132);
    *(v39 + 32) = 2082;
    v45 = a1[1];
    aBlock = *a1;
    v129 = v45;
    v130 = a1[2];
    v131 = *(a1 + 48);
    sub_1002856A4();
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = sub_10002C9C8(v46, v47, &v132);

    *(v39 + 34) = v48;
    _os_log_impl(&_mh_execute_header, v36, v37, "[%s]<%{public}s> waitForItemStability<%{public}s> - interaction: %{public}s", v39, 0x2Au);
    swift_arrayDestroy();

    (*(v95 + 8))(v99, v106);
  }

  else
  {

    (*(v14 + 8))(v99, v106);
  }

  v49 = v127;
  v50 = *(v127 + 16);
  v51 = v117;
  v106 = v31;
  v52 = v121;
  v50(v117, v31, v121);
  v53 = v123;
  v54 = *(v123 + 16);
  v55 = v118;
  v56 = v124;
  v54(v118, v122, v124);
  v50(v125, v51, v52);
  v54(v126, v55, v56);
  v57 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v58 = (v97 + *(v53 + 80) + v57) & ~*(v53 + 80);
  v59 = (v98 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  (*(v127 + 32))(v62 + v57, v117, v52);
  (*(v53 + 32))(v62 + v58, v118, v56);
  v63 = v116;
  *(v62 + v59) = v116;
  v64 = (v62 + v60);
  v65 = v109;
  *v64 = v114;
  v64[1] = v65;
  v66 = (v62 + v61);
  v67 = v111;
  *v66 = v110;
  v66[1] = v67;
  *(v62 + ((v61 + 23) & 0xFFFFFFFFFFFFFFF8)) = v115;

  v68 = static String.nanoIDFourChar()();
  v70 = v69;
  v71 = swift_allocObject();
  swift_weakInit();
  v72 = swift_allocObject();
  v99 = v71;
  v73 = v113;
  v72[2] = v71;
  v72[3] = v73;
  v72[4] = v112;
  v72[5] = v68;
  v72[6] = v70;
  v72[7] = sub_100286568;
  v72[8] = v62;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_100286568;
  *(v74 + 24) = v62;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_100286694;
  *(v75 + 24) = v72;
  v76 = sub_100037528();
  swift_bridgeObjectRetain_n();
  v118 = v62;
  swift_retain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = v76;
  sub_100285D14(sub_10021C408, v75, v68, v70, isUniquelyReferenced_nonNull_native);

  *(v63 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers) = aBlock;

  v97 = *(v63 + 16);
  v78 = v100;
  static DispatchTime.now()();
  + infix(_:_:)();
  v98 = *(v101 + 8);
  v98(v78, v120);
  v79 = swift_allocObject();
  swift_weakInit();
  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = v68;
  v100 = v68;
  v80[4] = v70;
  v80[5] = sub_1002867B0;
  v80[6] = v74;
  *&v130 = sub_1002867DC;
  *(&v130 + 1) = v80;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v129 = sub_100003D98;
  *(&v129 + 1) = &unk_1004C7378;
  v81 = _Block_copy(&aBlock);
  v101 = v70;

  v117 = v74;

  v82 = v102;
  static DispatchQoS.unspecified.getter();
  v132 = _swiftEmptyArrayStorage;
  sub_100017FCC(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  v83 = v105;
  v84 = v108;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v85 = v119;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v81);
  (*(v107 + 8))(v83, v84);
  (*(v103 + 8))(v82, v104);
  v98(v85, v120);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v87 = Strong;
    v88 = v101;
    (*(*Strong + 232))();
    v89 = v113();

    if (v89)
    {
      v132 = sub_100037528();
      sub_10027DB8C(0, 0, v100, v88);
      *(v87 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers) = v132;

      sub_100283D64(0, v125, v126, v116, v114, v109, v110, v111, v115);
    }

    else
    {
    }
  }

  else
  {
  }

  v90 = v124;
  v91 = *(v123 + 8);
  v91(v126, v124);
  v92 = *(v127 + 8);
  v93 = v121;
  v92(v125, v121);
  v91(v122, v90);
  v92(v106, v93);
}

uint64_t sub_100282DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HostedRoutingItem(0);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = *(v7 + 72);
  while (1)
  {
    sub_10001D948(v11, v9);
    v14 = *v9 == a2 && v9[1] == a3;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_10001DA14(v9);
      goto LABEL_4;
    }

    v13 = *(v9 + *(v6 + 36));
    sub_10001DA14(v9);
    if ((v13 & 1) == 0)
    {
      return 1;
    }

LABEL_4:
    v11 += v12;
    if (!--v10)
    {
      return 0;
    }
  }
}

uint64_t sub_100282F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HostedRoutingItem(0);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = *(v7 + 72);
  while (1)
  {
    sub_10001D948(v11, v9);
    v14 = *(v9 + 4) == a2 && *(v9 + 5) == a3;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_10001DA14(v9);
      goto LABEL_4;
    }

    v13 = v9[*(v6 + 36)];
    sub_10001DA14(v9);
    if (v13)
    {
      return 1;
    }

LABEL_4:
    v11 += v12;
    if (!--v10)
    {
      return 0;
    }
  }
}

uint64_t sub_100283078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HostedRoutingItem(0);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = *(v7 + 72);
  while (1)
  {
    sub_10001D948(v11, v9);
    v14 = *v9 == a2 && v9[1] == a3;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_10001DA14(v9);
      goto LABEL_4;
    }

    v13 = *(v9 + *(v6 + 36));
    sub_10001DA14(v9);
    if (v13)
    {
      return 1;
    }

LABEL_4:
    v11 += v12;
    if (!--v10)
    {
      return 0;
    }
  }
}

void sub_1002831BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v70 = a4;
  v68 = *v5;
  v8 = type metadata accessor for RoutingControl.Target();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RoutingControl.RoutingControlType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a3 + 8);
  v69 = *a3;
  v17 = v5[2];
  v71 = v16;
  v72 = v17;
  v67 = a1;
  RoutingControl.type.getter();
  if ((*(v13 + 88))(v15, v12) == enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
  {
    (*(v13 + 96))(v15, v12);
    v18 = *v15;
    if (*(v5 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
    {

      v19 = String._bridgeToObjectiveC()();
    }

    else
    {
      v19 = 0;
    }

    v20 = [objc_opt_self() sharedLocalEndpointForRoutingContextWithUID:v19];

    v21 = dispatch thunk of VolumeGroup.copy()();
    RoutingControl.target.getter();
    v22 = (*(v9 + 88))(v11, v8);
    v68 = v20;
    if (v22 == enum case for RoutingControl.Target.session(_:))
    {
      (*(v9 + 8))(v11, v8);
      dispatch thunk of VolumeGroup.apply(groupVolume:)();
      aBlock = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      aBlock = 0xD00000000000001CLL;
      v75 = 0x800000010043E5E0;
      v23._countAndFlagsBits = v69;
      v23._object = v71;
      String.append(_:)(v23);
      v24._countAndFlagsBits = 62;
      v24._object = 0xE100000000000000;
      String.append(_:)(v24);
      v25 = objc_allocWithZone(MRRequestDetails);
      v26 = String._bridgeToObjectiveC()();
      v27 = String._bridgeToObjectiveC()();
      v28 = String._bridgeToObjectiveC()();

      v29 = [v25 initWithName:v26 requestID:v27 reason:v28];

      v30 = *(a3 + 32);
      v80 = *(a3 + 16);
      v81 = v30;
      v82 = *(a3 + 48);
      v31 = swift_allocObject();
      v32 = v72;
      *(v31 + 16) = v72;
      *(v31 + 24) = sub_10028554C;
      *(v31 + 32) = v70;
      *(v31 + 40) = v5;
      v33 = *(a3 + 16);
      *(v31 + 48) = *a3;
      *(v31 + 64) = v33;
      *(v31 + 80) = *(a3 + 32);
      *(v31 + 96) = *(a3 + 48);
      v34 = v68;
      *(v31 + 104) = v21;
      *(v31 + 112) = v34;
      v78 = sub_100286CD8;
      v79 = v31;
      aBlock = _NSConcreteStackBlock;
      v75 = 1107296256;
      v76 = sub_1001BC53C;
      v77 = &unk_1004C74B8;
      v35 = _Block_copy(&aBlock);
      v36 = v32;

      sub_10026D080(&v80, v73);

      v37 = v34;

      LODWORD(v38) = v18;
      [v37 setVolume:v29 details:v36 queue:v35 completion:v38];

      _Block_release(v35);
LABEL_9:

      return;
    }

    if (v22 == enum case for RoutingControl.Target.item(_:))
    {
      (*(v9 + 96))(v11, v8);
      v41 = sub_1002586E4(*v11, v11[1], v39, v40);
      v43 = v42;

      dispatch thunk of VolumeGroup.apply(volume:to:)();
      (*(**(v5 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer) + 176))(v41, v43);

      v67 = String._bridgeToObjectiveC()();

      aBlock = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      aBlock = 0xD00000000000001CLL;
      v75 = 0x800000010043E5E0;
      v44._countAndFlagsBits = v69;
      v44._object = v71;
      String.append(_:)(v44);
      v45._countAndFlagsBits = 62;
      v45._object = 0xE100000000000000;
      String.append(_:)(v45);
      v46 = objc_allocWithZone(MRRequestDetails);
      v47 = String._bridgeToObjectiveC()();
      v48 = String._bridgeToObjectiveC()();
      v49 = String._bridgeToObjectiveC()();

      v29 = [v46 initWithName:v47 requestID:v48 reason:v49];

      v50 = *(a3 + 32);
      v80 = *(a3 + 16);
      v81 = v50;
      v82 = *(a3 + 48);
      v51 = swift_allocObject();
      v32 = v72;
      *(v51 + 16) = v72;
      *(v51 + 24) = sub_10028554C;
      *(v51 + 32) = v70;
      *(v51 + 40) = v5;
      v52 = *(a3 + 16);
      *(v51 + 48) = *a3;
      *(v51 + 64) = v52;
      *(v51 + 80) = *(a3 + 32);
      *(v51 + 96) = *(a3 + 48);
      v53 = v68;
      *(v51 + 104) = v21;
      *(v51 + 112) = v53;
      v78 = sub_100286C48;
      v79 = v51;
      aBlock = _NSConcreteStackBlock;
      v75 = 1107296256;
      v76 = sub_1001BC53C;
      v77 = &unk_1004C7468;
      v54 = _Block_copy(&aBlock);
      v55 = v32;

      v56 = v53;
      sub_10026D080(&v80, v73);

      LODWORD(v57) = v18;
      v58 = v67;
      [v56 setOutputDeviceVolume:v67 outputDevice:v29 details:v55 queue:v54 completion:v57];

      _Block_release(v54);

      goto LABEL_9;
    }
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    aBlock = 0;
    v75 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    v59._countAndFlagsBits = 91;
    v59._object = 0xE100000000000000;
    String.append(_:)(v59);
    v60._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v60);

    v61._countAndFlagsBits = 0xD00000000000001ELL;
    v61._object = 0x800000010043E5A0;
    String.append(_:)(v61);
    v62._countAndFlagsBits = v69;
    v62._object = v71;
    String.append(_:)(v62);
    v63._countAndFlagsBits = 0x746E6F63202D203ELL;
    v63._object = 0xED0000203A6C6F72;
    String.append(_:)(v63);
    type metadata accessor for RoutingControl();
    sub_100017FCC(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
    v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v64);

    v65._object = 0x800000010043E5C0;
    v65._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v65);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_100283B48(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t (*a10)(void))
{
  v32[1] = a5;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v20 = a2;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v21 = a2;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if (a2)
  {
    if (!a1)
    {
LABEL_5:
      v24 = swift_allocObject();
      *(v24 + 16) = a7;
      *(v24 + 24) = a8;

      v25 = a8;
      sub_100281F58(a6, a3, a4, a10, v24);

      return;
    }

    swift_getErrorValue();
    v22 = v32[3];
    v23 = v32[4];
    swift_errorRetain();
    if (sub_100248E9C(v22, v23))
    {

      goto LABEL_5;
    }

    swift_errorRetain();
    MRDFastSyncGroupSessionState.rawValue.getter();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    (a3)();

    sub_10023DCB0(v27, v29, v31);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100283D64(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a8, uint64_t a9)
{
  v97 = a8;
  v98 = a7;
  v81 = a9;
  v82 = a5;
  v12 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v76[-v13];
  v15 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v91 = *(v15 - 8);
  v92 = v15;
  __chkstk_darwin(v15);
  v87 = &v76[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v88 = *(v17 - 8);
  v89 = v17;
  __chkstk_darwin(v17);
  v84 = &v76[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v85 = *(v19 - 8);
  v86 = v19;
  __chkstk_darwin(v19);
  v83 = &v76[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for Duration.UnitsFormatStyle();
  v93 = *(v21 - 8);
  v94 = v21;
  __chkstk_darwin(v21);
  v90 = &v76[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v76[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = type metadata accessor for ContinuousClock.Instant();
  v95 = *(v27 - 8);
  v96 = v27;
  __chkstk_darwin(v27);
  v29 = &v76[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ContinuousClock.now.getter();
  v30 = ContinuousClock.Instant.duration(to:)();
  v32 = v30;
  if (a1)
  {
    v80 = v30;
    v79 = v31;
    v33 = sub_100028D40();
    (*(v24 + 16))(v26, v33, v23);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v101[0] = v78;
      *v36 = 136315906;
      v37 = _typeName(_:qualified:)();
      v77 = v35;
      v39 = sub_10002C9C8(v37, v38, v101);
      v81 = v23;
      v40 = v39;

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_10002C9C8(*(a4 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(a4 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), v101);
      *(v36 + 22) = 2082;
      *(v36 + 24) = sub_10002C9C8(v82, a6, v101);
      *(v36 + 32) = 2082;
      sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
      type metadata accessor for Duration.UnitsFormatStyle.Unit();
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_100450890;
      static Duration.UnitsFormatStyle.Unit.seconds.getter();
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_1002868A0(v41);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v42 = v83;
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      v43 = v84;
      static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
      v44 = v87;
      static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
      v45 = v90;
      static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

      (*(v91 + 8))(v44, v92);
      (*(v88 + 8))(v43, v89);
      (*(v85 + 8))(v42, v86);
      sub_100017FCC(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
      v46 = v94;
      Duration.formatted<A>(_:)();
      (*(v93 + 8))(v45, v46);
      v47 = sub_10002C9C8(v99, v100, v101);

      *(v36 + 34) = v47;
      _os_log_impl(&_mh_execute_header, v34, v77, "[%s]<%{public}s> waitForItemStability<%{public}s> - timed out after: %{public}s", v36, 0x2Au);
      swift_arrayDestroy();

      (*(v24 + 8))(v26, v81);
    }

    else
    {

      (*(v24 + 8))(v26, v23);
    }

    v50 = type metadata accessor for InternalRoutingError();
    sub_100017FCC(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, enum case for InternalRoutingError.stabilityTimeout(_:), v50);
    MRDFastSyncGroupSessionState.rawValue.getter();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
  }

  else
  {
    v48 = v31;
    v49 = sub_100015A78();
    sub_100015B34(v49, v14);
    if ((*(v24 + 48))(v14, 1, v23) == 1)
    {
      sub_1000038A4(v14, &qword_100525C00, &unk_1004511A0);
    }

    else
    {
      v80 = v32;

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v77 = v61;
        v63 = v62;
        v78 = swift_slowAlloc();
        v101[0] = v78;
        *v63 = 136315906;
        v64 = _typeName(_:qualified:)();
        v79 = v48;
        v66 = sub_10002C9C8(v64, v65, v101);
        v81 = v23;
        v67 = v66;

        *(v63 + 4) = v67;
        *(v63 + 12) = 2080;
        *(v63 + 14) = sub_10002C9C8(*(a4 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(a4 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), v101);
        *(v63 + 22) = 2080;
        *(v63 + 24) = sub_10002C9C8(v82, a6, v101);
        *(v63 + 32) = 2080;
        sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
        type metadata accessor for Duration.UnitsFormatStyle.Unit();
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_100450890;
        static Duration.UnitsFormatStyle.Unit.seconds.getter();
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_1002868A0(v68);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v69 = v83;
        static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
        v70 = v84;
        static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
        v71 = v87;
        static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
        v72 = v90;
        static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();
        v23 = v81;

        (*(v91 + 8))(v71, v92);
        (*(v88 + 8))(v70, v89);
        (*(v85 + 8))(v69, v86);
        sub_100017FCC(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
        v73 = v94;
        Duration.formatted<A>(_:)();
        (*(v93 + 8))(v72, v73);
        v74 = sub_10002C9C8(v99, v100, v101);

        *(v63 + 34) = v74;
        _os_log_impl(&_mh_execute_header, v60, v77, "[%s]<%s> waitForItemStability<%s> - stable after: %s", v63, 0x2Au);
        swift_arrayDestroy();
      }

      (*(v24 + 8))(v14, v23);
    }

    v53 = 0;
    v55 = 0;
    v57 = 0;
    v59 = 0;
  }

  v98(v53, v55, v57, v59);
  sub_10023DC58(v53, v55, v57, v59);
  return (*(v95 + 8))(v29, v96);
}

void sub_1002849F4()
{
  v65 = type metadata accessor for HostedRoutingItem(0);
  v1 = *(v65 - 8);
  __chkstk_darwin(v65);
  v3 = v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RoutingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = 0;
  v71 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v70 = 0xD000000000000023;
  v71 = 0x800000010043E2F0;
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier));
  v8._countAndFlagsBits = 2622;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v69, "Routing Mode: ");
  HIBYTE(v69._object) = -18;
  (*(*v0 + 208))(v9);
  sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  (*(v5 + 8))(v7, v4);
  v11._countAndFlagsBits = 10;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  String.append(_:)(v69);

  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v69._countAndFlagsBits = 0xD000000000000016;
  v69._object = 0x800000010043E320;
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSessionIdentifier + 4))
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSessionIdentifier);
  }

  LODWORD(v66) = v12;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 10;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  String.append(_:)(v69);

  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v69._countAndFlagsBits = 0xD000000000000011;
  v69._object = 0x800000010043E340;
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
  {
    v15 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
    v16 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8);
  }

  else
  {
    v16 = 0xE300000000000000;
    v15 = 7104878;
  }

  v17._countAndFlagsBits = v15;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 10;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  String.append(_:)(v69);

  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v69._countAndFlagsBits = 0xD000000000000010;
  v69._object = 0x800000010043E360;
  v20 = (*(*v0 + 232))(v19);
  v21 = *(v20 + 16);
  v64[1] = v0;
  if (v21)
  {
    v68 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v21, 0);
    v22 = v68;
    v23 = *(v1 + 80);
    v64[0] = v20;
    v24 = v20 + ((v23 + 32) & ~v23);
    v25 = *(v1 + 72);
    do
    {
      sub_10001D948(v24, v3);
      v66 = 538976288;
      v67 = 0xE400000000000000;
      sub_100017FCC(&unk_100524C40, type metadata accessor for HostedRoutingItem, &unk_100452308);
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v26);

      v27 = v66;
      v28 = v67;
      sub_10001DA14(v3);
      v68 = v22;
      v30 = v22[2];
      v29 = v22[3];
      if (v30 >= v29 >> 1)
      {
        sub_1000089FC((v29 > 1), v30 + 1, 1);
        v22 = v68;
      }

      v22[2] = v30 + 1;
      v31 = &v22[2 * v30];
      v31[4] = v27;
      v31[5] = v28;
      v24 += v25;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
  }

  v66 = v22;
  v32 = sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  v33 = sub_10000462C(&qword_100523680, &qword_1005229B0, &unk_100450110, &protocol conformance descriptor for [A]);
  v34 = BidirectionalCollection<>.joined(separator:)();
  v36 = v35;

  v37._countAndFlagsBits = v34;
  v37._object = v36;
  String.append(_:)(v37);

  v38._countAndFlagsBits = 10;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  String.append(_:)(v69);

  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v69._countAndFlagsBits = 0xD000000000000012;
  v69._object = 0x800000010043E380;
  v39 = sub_10001B030();
  v40 = [v39 availableOutputDevices];

  if (!v40)
  {
    goto LABEL_30;
  }

  sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v41 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
    if (v42)
    {
      goto LABEL_17;
    }

LABEL_27:

    v44 = _swiftEmptyArrayStorage;
LABEL_28:
    v66 = v44;
    v57 = BidirectionalCollection<>.joined(separator:)();
    v59 = v58;

    v60._countAndFlagsBits = v57;
    v60._object = v59;
    String.append(_:)(v60);

    v61._countAndFlagsBits = 10;
    v61._object = 0xE100000000000000;
    String.append(_:)(v61);
    String.append(_:)(v69);

    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v69._countAndFlagsBits = 0xD000000000000013;
    v69._object = 0x800000010043E3A0;
    v62._countAndFlagsBits = sub_10033E5D8();
    String.append(_:)(v62);

    v63._countAndFlagsBits = 10;
    v63._object = 0xE100000000000000;
    String.append(_:)(v63);
    String.append(_:)(v69);

    return;
  }

  v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
    goto LABEL_27;
  }

LABEL_17:
  v68 = _swiftEmptyArrayStorage;
  sub_1000089FC(0, v42 & ~(v42 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v64[0] = v33;
    v65 = v32;
    v43 = 0;
    v44 = v68;
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v45 = *(v41 + 8 * v43 + 32);
      }

      v46 = v45;
      v66 = 538976288;
      v67 = 0xE400000000000000;
      v47 = [v45 description];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51._countAndFlagsBits = v48;
      v51._object = v50;
      String.append(_:)(v51);

      v52 = v66;
      v53 = v67;
      v68 = v44;
      v55 = v44[2];
      v54 = v44[3];
      if (v55 >= v54 >> 1)
      {
        sub_1000089FC((v54 > 1), v55 + 1, 1);
        v44 = v68;
      }

      ++v43;
      v44[2] = v55 + 1;
      v56 = &v44[2 * v55];
      v56[4] = v52;
      v56[5] = v53;
    }

    while (v42 != v43);

    goto LABEL_28;
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_10028531C(uint64_t a1)
{
  v2 = sub_100017FCC(&qword_1005249F8, type metadata accessor for Name, &unk_100457180);
  v3 = sub_100017FCC(&qword_100524A00, type metadata accessor for Name, &unk_100457120);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_1002853D8()
{
  result = qword_100524C70;
  if (!qword_100524C70)
  {
    sub_100018D7C(255, &qword_100524C60, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524C70);
  }

  return result;
}

double sub_100285440()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSession);
    if (v3)
    {
      v4 = [v3 routingContextUID];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = (v2 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
    *v8 = v5;
    v8[1] = v7;

    sub_1002790D8();
  }

  return result;
}

unint64_t sub_1002854F8()
{
  result = qword_100524700;
  if (!qword_100524700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524700);
  }

  return result;
}

uint64_t sub_10028554C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v9 = *(type metadata accessor for ContinuousClock() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100281384(a1, a2, a3, a4, v4 + v10, v4 + v13, *(v4 + v14), *(v4 + v15), *(v4 + v15 + 8), *(v4 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + ((((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1002856A4()
{
  result = qword_100524708;
  if (!qword_100524708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524708);
  }

  return result;
}

double sub_100285718()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  sub_100281F58((v0 + 24), v1, v2, sub_100286BC8, v5);

  return result;
}

uint64_t sub_1002857E0()
{

  sub_1002485A4(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return _swift_deallocObject(v0, 105, 7);
}

void sub_100285860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = v3;
  v6 = *(v3 + 16);
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  if (!a1)
  {
    goto LABEL_4;
  }

  v17 = *(v5 + 24);
  swift_getErrorValue();
  swift_errorRetain();
  if (sub_100248E9C(v18, v19))
  {

    v7 = v17;
LABEL_4:
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;

    sub_100281F58((v5 + 56), v6, v7, a3, v10);

    return;
  }

  swift_errorRetain();

  MRDFastSyncGroupSessionState.rawValue.getter();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  (v6)();

  sub_10023DCB0(v12, v14, v16);
}

uint64_t sub_1002859AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000698C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1002860CC();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_10021A064(v6, v8);
  *v3 = v8;
  return v9;
}

void sub_100285A5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100524980, &qword_100457028);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100285D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000698C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100285A5C(v18, a5 & 1);
      v13 = sub_10000698C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1002860CC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

void sub_100285E9C()
{
  v1 = v0;
  v2 = type metadata accessor for HostedRoutingItem(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001BC5A8(&qword_1005249C0, &qword_100457078);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_10001D948(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10001DFD4(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }
}

void sub_1002860CC()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100524980, &qword_100457028);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t type metadata accessor for AVDiscoveryRoutingItemDataSource(uint64_t a1)
{
  result = qword_100532EF0;
  if (!qword_100532EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002862A0(uint64_t a1)
{
  result = type metadata accessor for RoutingMode();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1002863C8()
{
  v1 = type metadata accessor for ContinuousClock();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v12 = v3 | v8;
  v11 = (((((((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v12 | 7);
}

uint64_t sub_100286568(char a1)
{
  v3 = *(type metadata accessor for ContinuousClock() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100283D64(a1, v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v9), *(v1 + v9 + 8), *(v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_100286694()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(*Strong + 232))();
    v8 = v1();

    if (v8)
    {
      v9 = sub_100037528();

      sub_10027DB8C(0, 0, v2, v3);
      *(v7 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers) = v9;

      v4(0);
    }
  }

  return result;
}

double sub_1002867DC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v11 = sub_100037528();
    v7 = sub_1002859AC(v1, v2);
    v9 = v8;
    *(v6 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers) = v11;

    if (v7)
    {
      v10 = sub_1001C7C2C(v7, v9);
      v3(v10);
    }
  }

  return result;
}

void *sub_1002868A0(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1001BC5A8(&qword_100524990, &unk_100457030);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100017FCC(&qword_100524EF0, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100017FCC(&qword_100524998, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

double sub_100286BD0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_10027C58C();
    (*(*v2 + 240))(v3);
  }

  return result;
}

uint64_t sub_100286C68()
{

  sub_1002485A4(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100286D34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100286D78(uint64_t a1)
{
  v3 = *(v1 + 24);
  v6[3] = sub_1001BC5A8(&qword_1005249A0, &unk_100458530);
  v6[4] = sub_10000462C(&unk_100524CA0, &qword_1005249A0, &unk_100458530, &protocol conformance descriptor for [A]);
  v6[0] = a1;

  [v3 volume];
  LOBYTE(a1) = sub_100266EA8(v6, v4);
  sub_100026A44(v6);
  return a1 & 1;
}

uint64_t sub_100286E8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100286EF4()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_10001BF64(v7), (v3 & 1) == 0))
  {

    sub_10001BF10(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  sub_100020E0C(*(v1 + 56) + 32 * v2, &v8);
  sub_10001BF10(v7);

  if (!*(&v9 + 1))
  {
LABEL_9:
    sub_1000038A4(&v8, &qword_100522890, &qword_100450610);
    return;
  }

  sub_1000038A4(&v8, &qword_100522890, &qword_100450610);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_10027C58C();
    (*(*v5 + 240))(v6);
  }
}

void type metadata accessor for Name()
{
  if (!qword_1005249D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1005249D8);
    }
  }
}

uint64_t sub_1002871BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode;
  swift_beginAccess();
  v4 = type metadata accessor for RoutingMode();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100287244(uint64_t a1)
{
  v3 = type metadata accessor for RoutingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  sub_1002876D0(v6, &OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode, "[%s]<%{public}s> setRoutingMode - value: %{public}s");
  v8 = *(v4 + 8);
  v8(a1, v3);
  return (v8)(v6, v3);
}

void (*sub_1002873B8(uint64_t *a1))(char **a1, char a2)
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
  v11 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode;
  v4[14] = v9;
  v4[15] = v11;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[16] = v12;
  v4[17] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_10028752C;
}

void sub_10028752C(char **a1, char a2)
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
    sub_1002876D0(v6, &OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode, "[%s]<%{public}s> setRoutingMode - value: %{public}s");
    v11 = *(v9 + 8);
    v11(v6, v8);
  }

  else
  {
    v3(*(*a1 + 13), (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v4, v8);
    swift_endAccess();
    sub_1002876D0(v7, &OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode, "[%s]<%{public}s> setRoutingMode - value: %{public}s");
    v11 = *(v9 + 8);
  }

  v11(v7, v8);
  v11(v4, v8);
  free(v4);
  free(v7);
  free(v6);

  free(v2);
}

uint64_t sub_1002876D0(uint64_t a1, uint64_t *a2, const char *a3, ...)
{
  v5 = v3;
  v35 = *v3;
  v36 = a3;
  v6 = type metadata accessor for Logger();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RoutingMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  swift_beginAccess();
  v13 = *(v9 + 16);
  v13(v11, &v3[v12], v8);
  sub_100017EF4(&qword_1005249D0, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v9 + 8);
  result = v15(v11, v8);
  if ((v14 & 1) == 0)
  {
    v33 = v15;
    v17 = sub_100028D40();
    (*(v38 + 16))(v37, v17, v6);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    v34 = v19;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = v13;
      v21 = v20;
      v39 = swift_slowAlloc();
      *v21 = 136315650;
      v22 = _typeName(_:qualified:)();
      v32 = v18;
      v24 = sub_10002C9C8(v22, v23, &v39);
      v35 = v6;
      v25 = v24;

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_10002C9C8(*&v5[OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier], *&v5[OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier + 8], &v39);
      *(v21 + 22) = 2082;
      v31(v11, &v5[v12], v8);
      sub_100017EF4(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v33(v11, v8);
      v29 = sub_10002C9C8(v26, v28, &v39);

      *(v21 + 24) = v29;
      v30 = v32;
      _os_log_impl(&_mh_execute_header, v32, v34, v36, v21, 0x20u);
      swift_arrayDestroy();

      (*(v38 + 8))(v37, v35);
    }

    else
    {

      (*(v38 + 8))(v37, v6);
    }

    return sub_100289AC4();
  }

  return result;
}

void (*sub_100287B00(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingItems;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_100287B9C;
}

void sub_100287B9C(void **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 4);
  v3 = *(*a1 + 5);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 3);
  if (a2)
  {

    sub_10002C684(v5);
  }

  else
  {
    sub_10002C684(v5);
  }

  free(v2);
}

uint64_t sub_100287C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = a3;
  v14 = swift_allocObject();
  sub_100287CA8(a1, a2, v11, a4, a5, a6, a7);
  return v14;
}

uint64_t sub_100287CA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v56 = a6;
  v58 = a5;
  v63 = a4;
  v62 = a3;
  v60 = a1;
  v61 = a2;
  v54[1] = *v8;
  v59 = type metadata accessor for Logger();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v64 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode;
  v16 = enum case for RoutingMode.disabled(_:);
  v17 = type metadata accessor for RoutingMode();
  v18 = *(*(v17 - 8) + 104);
  v18(v8 + v15, v16, v17);
  v18(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_overrideRoutingMode, v16, v17);
  *(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingItems) = _swiftEmptyArrayStorage;
  *(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_pendingInteractions) = &_swiftEmptyDictionarySingleton;
  v19 = v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction;
  *(v19 + 48) = 0;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *v19 = 0u;
  v20 = (v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource____lazy_storage___subDataSource);
  *v20 = 0;
  v20[1] = 0;
  v20[2] = 0;
  v21 = (v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier);
  *v21 = static String.nanoIDFourChar()();
  v21[1] = v22;
  *v14 = a7;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v23 = a7;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v21)
  {
    v26 = v60;
    v25 = v61;
    *(v8 + 16) = v23;
    *(v8 + 24) = v26;
    *(v8 + 32) = v25;
    v27 = v62;
    *(v8 + 40) = v62;
    v28 = v63;
    *(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_timeline) = v63;
    v55 = v23;
    sub_10002CBE8(v26, v25, v27);

    sub_10002F518();
    v30 = v29;
    ObjectType = swift_getObjectType();
    v32 = (*(v30 + 56))(ObjectType, v30);
    swift_unknownObjectRelease();
    (*(*v8 + 224))(v32);
    v33 = *(*v28 + 224);

    v33(v34, &off_1004C7628);

    *(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_delegate + 8) = v56;
    swift_unknownObjectWeakAssign();
    v35 = sub_100028D40();
    v36 = v57;
    v37 = v59;
    (*(v57 + 16))(v64, v35, v59);
    sub_10002CBE8(v26, v25, v27);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    sub_10002349C(v26, v25, v27);
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v68 = v56;
      *v40 = 136315650;
      v41 = _typeName(_:qualified:)();
      v43 = sub_10002C9C8(v41, v42, &v68);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      v44 = *(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier);
      v45 = *(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier + 8);

      v46 = sub_10002C9C8(v44, v45, &v68);

      *(v40 + 14) = v46;
      *(v40 + 22) = 2082;
      v48 = v60;
      v47 = v61;
      v65 = v60;
      v66 = v61;
      v49 = v62;
      v67 = v62;
      sub_1002854F8();
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      sub_10002349C(v48, v47, v49);
      v53 = sub_10002C9C8(v50, v52, &v68);

      *(v40 + 24) = v53;
      _os_log_impl(&_mh_execute_header, v38, v39, "[%s]<%{public}s> init - item type: %{public}s", v40, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();

      (*(v36 + 8))(v64, v59);
    }

    else
    {

      swift_unknownObjectRelease();

      sub_10002349C(v60, v61, v62);
      (*(v36 + 8))(v64, v37);
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1002882CC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100028D40();
  (*(v3 + 16))(v5, v6, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10002C9C8(v10, v11, &v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_10002C9C8(*(v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier), *(v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier + 8), &v23);
    *(v9 + 22) = 2082;
    v13 = *(v0 + 40);
    v21 = *(v0 + 24);
    v22 = v13;
    sub_1002854F8();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = sub_10002C9C8(v14, v15, &v23);

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s]<%{public}s> deinit - item type: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v5, v2);
  sub_10002349C(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v17 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode;
  v18 = type metadata accessor for RoutingMode();
  v19 = *(*(v18 - 8) + 8);
  v19(v1 + v17, v18);
  v19(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_overrideRoutingMode, v18);

  sub_1001DFBCC(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_delegate);

  sub_10028AE60(*(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction), *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 8), *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 16), *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 24), *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 32), *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 40), *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 48));
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_100288648()
{
  sub_1002882CC();

  return swift_deallocClassInstance();
}

uint64_t sub_1002886A0()
{
  v1 = type metadata accessor for RoutingMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v15 = 60;
  v16 = 0xE100000000000000;
  v5._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 60;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier));
  v7._countAndFlagsBits = 0x65707974202D203ELL;
  v7._object = 0xEA0000000000203ALL;
  String.append(_:)(v7);
  v8 = *(v0 + 40);
  v13 = *(v0 + 24);
  v14 = v8;
  sub_1002854F8();
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x6E6974756F72202CLL;
  v10._object = 0xEF203A65646F4D67;
  String.append(_:)(v10);
  (*(*v0 + 168))();
  sub_100017EF4(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  (*(v2 + 8))(v4, v1);
  return v15;
}

void sub_1002888FC(uint64_t a1)
{
  v2 = v1;
  v167 = *v1;
  v165 = type metadata accessor for RoutingControl.RoutingControlType();
  v163 = *(v165 - 8);
  __chkstk_darwin(v165);
  v164 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoutingControl();
  v166 = *(v5 - 1);
  __chkstk_darwin(v5);
  v7 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HostedRoutingItem(0);
  v169 = *(v12 - 8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(*a1 + 112))(v13);
  v20 = v16[3];
  if (!v20)
  {

    goto LABEL_12;
  }

  if (v20 < 1)
  {
    goto LABEL_38;
  }

  v150 = v7;
  v151 = v5;
  v152 = v9;
  v153 = v11;
  v21 = v16[4];
  v22 = v16[2];
  if (v21 < v22)
  {
    v22 = 0;
  }

  v23 = v16[v21 - v22 + 5];

  v25 = *(*v23 + 176);
  v25(v177, v24);
  swift_beginAccess();
  v32 = sub_10028AED4(v177, v26, v27, v28, v29, v30, v31);
  v34 = v33;
  v187 = v177[0];
  v185[0] = v177[1];
  v185[1] = v177[2];
  v186 = v178;
  swift_endAccess();
  sub_1001E6204(&v187);
  sub_100238E4C(v185);
  if (!v32)
  {
    goto LABEL_12;
  }

  v149 = v8;
  v35 = swift_allocObject();
  v155 = v32;
  v156 = v34;
  *(v35 + 16) = v32;
  *(v35 + 24) = v34;

  v25(&v179, v36);
  v5 = *(&v179 + 1);
  v37 = v179;
  LODWORD(v161) = v182;
  v38 = swift_allocObject();
  v38[2] = v2;
  v38[3] = sub_10028AFB0;
  v154 = v38;
  v38[4] = v35;
  v39 = v180;
  v40 = v181;
  v183[0] = v180;
  v183[1] = v181;
  v184 = v182;
  v41 = v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction;
  v42 = *(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction);
  v159 = *(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 8);
  v160 = v42;
  v168 = v2;
  v43 = *(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 16);
  v162 = v23;
  v44 = *(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 24);
  v157 = *(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 32);
  v158 = v43;
  v45 = *(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 40);
  v148 = v37;
  *v41 = v37;
  *(v41 + 1) = v5;
  *(v41 + 1) = v39;
  *(v41 + 2) = v40;
  v46 = v41[48];
  v41[48] = v161;

  sub_10026D080(v183, &v173);

  sub_10026D080(v183, &v173);

  v161 = v35;

  v8 = v168;
  v47 = v44;
  v48 = v162;
  sub_10028AE60(v160, v159, v158, v47, v157, v45, v46);
  sub_100289D1C();

  v49 = sub_100238E4C(v183);
  v16 = (*(*v48 + 104))(v49);
  if (v16)
  {
    if (v16 == 3)
    {
      v50 = type metadata accessor for InternalRoutingError();
      sub_100017EF4(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v50 - 8) + 104))(v51, enum case for InternalRoutingError.cancelled(_:), v50);
      MRDFastSyncGroupSessionState.rawValue.getter();
      sub_10026CEA0(v52, v53, v54, v55, 1, &v173, 0.0);
      v56 = *v41;
      v57 = *(v41 + 1);
      v58 = *(v41 + 2);
      v59 = *(v41 + 3);
      v60 = *(v41 + 4);
      v61 = *(v41 + 5);
      *v41 = 0u;
      *(v41 + 1) = 0u;
      *(v41 + 2) = 0u;
      v62 = v41[48];
      v41[48] = 0;
      sub_10028AE60(v56, v57, v58, v59, v60, v61, v62);
      sub_100289D1C();
      v170 = v173;
      v171 = v174;
      v172 = v175;
      v64 = v155;
      v63 = v156;
      v155(&v170);

      sub_1001C7C2C(v64, v63);

LABEL_9:
      sub_100238E4C(v183);

      sub_100286E38(&v173);
      return;
    }

    goto LABEL_39;
  }

  (*(*a1 + 248))(v48);
  v65 = *&v183[0];
  if (v184 >= 4u)
  {
    if (v184 != 7)
    {
      v119 = v155;
      v120 = v156;
      if (v184 != 10)
      {
LABEL_42:
        v132 = v119;
        v133 = v120;

        sub_1001C7C2C(v132, v133);
        *&v173 = 0;
        *(&v173 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(62);
        v170 = v173;
        v134._countAndFlagsBits = 91;
        v134._object = 0xE100000000000000;
        String.append(_:)(v134);
        v135._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v135);

        v136._countAndFlagsBits = 15453;
        v136._object = 0xE200000000000000;
        String.append(_:)(v136);
        String.append(_:)(*(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier));
        v137._object = 0x800000010043E630;
        v137._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v137);
        v138._countAndFlagsBits = v148;
        v138._object = v5;
        String.append(_:)(v138);
        v139._countAndFlagsBits = 0xD00000000000001FLL;
        v139._object = 0x800000010043E250;
        String.append(_:)(v139);
        v173 = v179;
        v174 = v180;
        v175 = v181;
        v176 = v182;
        sub_1002856A4();
        v140._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v140);

        while (1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_44:
          *&v173 = 0;
          *(&v173 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(58);
          v141._countAndFlagsBits = 91;
          v141._object = 0xE100000000000000;
          String.append(_:)(v141);
          v142._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v142);

          v143._countAndFlagsBits = 15453;
          v143._object = 0xE200000000000000;
          String.append(_:)(v143);
          String.append(_:)(*(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier));
          v144._object = 0x800000010043E630;
          v144._countAndFlagsBits = 0xD000000000000014;
          String.append(_:)(v144);
          v145._countAndFlagsBits = v148;
          v145._object = v5;
          String.append(_:)(v145);
          v146._countAndFlagsBits = 0xD00000000000001BLL;
          v146._object = 0x800000010043E650;
          String.append(_:)(v146);
          sub_100017EF4(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
          v147._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v147);
        }
      }

      sub_1001C7C2C(v155, v156);
      v121 = sub_10002F518();
      v123 = v122;
      ObjectType = swift_getObjectType();
      *&v173 = v121;
      (*(*(v123 + 16) + 8))(&v179, sub_10028AFF4, v154, ObjectType);

      swift_unknownObjectRelease();

LABEL_36:
      sub_100238E4C(v183);
      return;
    }

    sub_1001C7C2C(v155, v156);
    v92 = swift_projectBox();
    v93 = v166;
    (*(v166 + 16))(v150, v92, v151);
    v94 = v164;
    RoutingControl.type.getter();
    v95 = v163;
    v96 = v165;
    v97 = (*(v163 + 88))(v94, v165);
    if (v97 != enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
    {
      if (v97 == enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
      {

        (*(v95 + 96))(v94, v96);
        v98 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
        (*(*(v98 - 8) + 8))(v94, v98);
LABEL_35:
        v125 = sub_10002F518();
        v127 = v126;
        v128 = swift_getObjectType();
        *&v173 = v125;
        (*(*(v127 + 16) + 8))(&v179, sub_10028AFF4, v154, v128);
        swift_unknownObjectRelease();

        (*(v93 + 8))(v150, v151);

        goto LABEL_36;
      }

      if (v97 != enum case for RoutingControl.RoutingControlType.mute(_:))
      {
        goto LABEL_44;
      }
    }

    goto LABEL_35;
  }

  v66 = *(&v183[0] + 1);

  v165 = v5;

  v67 = sub_10002F518();
  v164 = v68;
  v70 = v69;
  v71 = swift_getObjectType();
  v72 = *(v70 + 56);
  v166 = v67;
  v163 = v71;
  v16 = v72(v71, v70);
  v8 = v16;
  v73 = 0;
  v5 = v16[2];
  while (1)
  {
    if (v5 == v73)
    {

      v99 = type metadata accessor for InternalRoutingError();
      sub_100017EF4(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v99 - 8) + 104))(v100, enum case for InternalRoutingError.itemNotFound(_:), v99);
      MRDFastSyncGroupSessionState.rawValue.getter();
      sub_10026CEA0(v101, v102, v103, v104, 1, &v173, 0.0);
      v105 = *v41;
      v106 = *(v41 + 1);
      v107 = *(v41 + 2);
      v108 = *(v41 + 3);
      v109 = *(v41 + 4);
      v110 = *(v41 + 5);
      *v41 = 0u;
      *(v41 + 1) = 0u;
      *(v41 + 2) = 0u;
      v111 = v41[48];
      v41[48] = 0;
      sub_10028AE60(v105, v106, v107, v108, v109, v110, v111);
      sub_100289D1C();
      v170 = v173;
      v171 = v174;
      v172 = v175;
      v113 = v155;
      v112 = v156;
      v155(&v170);

      sub_1001C7C2C(v113, v112);

      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    if (v73 >= *(v8 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      if (v16 - 1 >= 2)
      {
        v129 = v19;
        v130 = v18;
        v131 = v17;

        sub_10023DCB0(v131, v130, v129);
      }

      v119 = sub_1001C7C2C(v155, v156);
      __break(1u);
      goto LABEL_42;
    }

    sub_10001D948(v8 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v73, v15);
    if (sub_1002587B8() == v65 && v75 == v66)
    {
      break;
    }

    ++v73;
    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v16 = sub_10001DA14(v15);
    if (v74)
    {
      goto LABEL_22;
    }
  }

  sub_10001DA14(v15);
LABEL_22:

  sub_1001C7C2C(v155, v156);

  v76 = sub_100028D40();
  v78 = v152;
  v77 = v153;
  v79 = v149;
  (*(v152 + 16))(v153, v76, v149);
  v80 = v165;

  v81 = v168;

  swift_unknownObjectRetain();
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *&v173 = swift_slowAlloc();
    *v84 = 136315906;
    v85 = _typeName(_:qualified:)();
    v87 = sub_10002C9C8(v85, v86, &v173);

    *(v84 + 4) = v87;
    *(v84 + 12) = 2082;
    *(v84 + 14) = sub_10002C9C8(*(v81 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier), *(v81 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier + 8), &v173);
    *(v84 + 22) = 2082;
    v88 = sub_10002C9C8(v148, v80, &v173);

    *(v84 + 24) = v88;
    *(v84 + 32) = 2082;
    *&v170 = v166;
    v89 = dispatch thunk of CustomStringConvertible.description.getter();
    v91 = sub_10002C9C8(v89, v90, &v173);

    *(v84 + 34) = v91;
    _os_log_impl(&_mh_execute_header, v82, v83, "[%s]<%{public}s> timelineDidUpdate<%{public}s> - delegating to data source: %{public}s", v84, 0x2Au);
    swift_arrayDestroy();

    (*(v78 + 8))(v153, v149);
  }

  else
  {

    (*(v78 + 8))(v77, v79);
  }

  v114 = *(v81 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource____lazy_storage___subDataSource);
  v115 = *(v81 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource____lazy_storage___subDataSource + 16);
  v116 = swift_getObjectType();
  *&v173 = v114;
  v117 = *(v115 + 16);
  v118 = *(v117 + 8);
  swift_unknownObjectRetain();
  v118(&v179, sub_10028AFF4, v154, v116, v117);

  swift_unknownObjectRelease();

  sub_100238E4C(v183);
  swift_unknownObjectRelease();
LABEL_12:
}

uint64_t sub_1002899A8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = a1[1];
  v20 = *a1;
  v9 = a1[2];
  v18[0] = v8;
  v18[1] = v9;
  v19 = *(a1 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_pendingInteractions;
  swift_beginAccess();
  sub_10028BC98(&v20, v17);
  sub_10026D080(v18, v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17[0] = *(v4 + v11);
  *(v4 + v11) = 0x8000000000000000;
  sub_10028B8E4(sub_10028BC54, v10, a1, isUniquelyReferenced_nonNull_native, v13, v14, v15);
  sub_1001E6204(&v20);
  sub_100238E4C(v18);
  *(v4 + v11) = v17[0];
  swift_endAccess();
  return sub_100289D1C();
}

uint64_t sub_100289AC4()
{
  v1 = v0;
  v2 = type metadata accessor for RoutingMode();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_overrideRoutingMode;
  swift_beginAccess();
  v16 = *(v3 + 16);
  v16(v8, v0 + v9, v2);
  (*(v3 + 104))(v6, enum case for RoutingMode.disabled(_:), v2);
  sub_100017EF4(&qword_1005249D0, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v6, v2);
  v11(v8, v2);
  sub_10002F518();
  v13 = v12;
  ObjectType = swift_getObjectType();
  if (v10)
  {
    (*(*v1 + 168))();
  }

  else
  {
    v16(v8, v1 + v9, v2);
  }

  (*(v13 + 40))(v8, ObjectType, v13);
  return swift_unknownObjectRelease();
}

uint64_t sub_100289D1C()
{
  v1 = type metadata accessor for RoutingMode();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = __chkstk_darwin(v1);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v34 = &v33 - v4;
  v5 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_pendingInteractions;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_10028ADC8(*(v6 + 16), 0);
  v9 = sub_10028BA90(&v38, (v8 + 32), v7, v6);
  v10 = v38;

  sub_100045960(v10);
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:
    v8 = _swiftEmptyArrayStorage;
  }

  v11 = (v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction);
  v12 = *(v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 8);
  if (v12)
  {
    v33 = *v11;
    v13 = v11[2];
    v14 = v11[3];
    v15 = v11[4];
    v16 = v11[5];
    v17 = *(v11 + 48);

    sub_10026D0B8(v13, v14, v15, v16, v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10028ACA4(0, *(v8 + 2) + 1, 1, v8);
    }

    v19 = *(v8 + 2);
    v18 = *(v8 + 3);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v8 = sub_10028ACA4((v18 > 1), v19 + 1, 1, v8);
    }

    *(v8 + 2) = v20;
    v21 = &v8[56 * v19];
    *(v21 + 4) = v33;
    *(v21 + 5) = v12;
    *(v21 + 6) = v13;
    *(v21 + 7) = v14;
    *(v21 + 8) = v15;
    *(v21 + 9) = v16;
    v21[80] = v17;
  }

  else
  {
    v20 = *(v8 + 2);
  }

  v22 = v20 + 1;
  v23 = 80;
  v24 = &enum case for RoutingMode.disabled(_:);
  while (--v22)
  {
    v25 = v8[v23];
    v23 += 56;
    if (v25 <= 2)
    {
      v24 = &enum case for RoutingMode.detailed(_:);
      break;
    }
  }

  v27 = v36;
  v26 = v37;
  v28 = v34;
  (*(v36 + 104))(v34, *v24, v37);
  v29 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_overrideRoutingMode;
  swift_beginAccess();
  v30 = v35;
  (*(v27 + 16))(v35, v0 + v29, v26);
  swift_beginAccess();
  (*(v27 + 24))(v0 + v29, v28, v26);
  swift_endAccess();
  sub_1002876D0(v30, &OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_overrideRoutingMode, "[%s]<%{public}s> setOverrideRoutingMode - value: %{public}s");
  v31 = *(v27 + 8);
  v31(v30, v26);
  return (v31)(v28, v26);
}

void (*sub_10028A0C4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 184))();
  return sub_10027DF04;
}

uint64_t sub_10028A218()
{
  v1 = v0;
  v59 = type metadata accessor for HostedRoutingItem(0);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v3 = v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RoutingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v63._countAndFlagsBits = 0xD000000000000018;
  v63._object = 0x800000010043E670;
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier));
  v8._countAndFlagsBits = 2622;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v65 = v63;
  v60._countAndFlagsBits = 0x707954206D657449;
  v60._object = 0xEB00000000203A65;
  v9 = *(v0 + 40);
  v63 = *(v0 + 24);
  v64 = v9;
  sub_1002854F8();
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 10;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  String.append(_:)(v60);

  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v63, "Routing Mode: ");
  HIBYTE(v63._object) = -18;
  (*(*v0 + 168))(v12);
  sub_100017EF4(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = *(v5 + 8);
  v14(v7, v4);
  v15._countAndFlagsBits = 10;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  String.append(_:)(v63);

  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v60._countAndFlagsBits = 0xD000000000000017;
  v60._object = 0x800000010043E690;
  v16 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_overrideRoutingMode;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v16, v4);
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v14(v7, v4);
  v18._countAndFlagsBits = 10;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  String.append(_:)(v60);

  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v60._countAndFlagsBits = 0xD000000000000010;
  v60._object = 0x800000010043E360;
  v20 = *(*v1 + 216);
  v58 = v1;
  v21 = v20(v19);
  v22 = *(v21 + 16);
  if (v22)
  {
    v62 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v22, 0);
    v23 = v62;
    v24 = *(v57 + 80);
    v56[1] = v21;
    v25 = v21 + ((v24 + 32) & ~v24);
    v26 = *(v57 + 72);
    do
    {
      sub_10001D948(v25, v3);
      v61._countAndFlagsBits = 538976288;
      v61._object = 0xE400000000000000;
      sub_100017EF4(&unk_100524C40, type metadata accessor for HostedRoutingItem, &unk_100452308);
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      countAndFlagsBits = v61._countAndFlagsBits;
      object = v61._object;
      sub_10001DA14(v3);
      v62 = v23;
      v31 = v23[2];
      v30 = v23[3];
      if (v31 >= v30 >> 1)
      {
        sub_1000089FC((v30 > 1), v31 + 1, 1);
        v23 = v62;
      }

      v23[2] = v31 + 1;
      v32 = &v23[2 * v31];
      v32[4] = countAndFlagsBits;
      v32[5] = object;
      v25 += v26;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
  }

  v61._countAndFlagsBits = v23;
  sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  sub_10002C150();
  v33 = BidirectionalCollection<>.joined(separator:)();
  v35 = v34;

  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  v37._countAndFlagsBits = 10;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  String.append(_:)(v60);

  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v61._countAndFlagsBits = 0xD000000000000017;
  v61._object = 0x800000010043E6B0;
  swift_beginAccess();

  sub_10028A9B8(v38);
  v40 = v39;

  v62 = v40;
  v41 = BidirectionalCollection<>.joined(separator:)();
  v43 = v42;

  v44._countAndFlagsBits = v41;
  v44._object = v43;
  String.append(_:)(v44);

  v45._countAndFlagsBits = 10;
  v45._object = 0xE100000000000000;
  String.append(_:)(v45);
  String.append(_:)(v61);

  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v61._countAndFlagsBits = 0xD000000000000012;
  v61._object = 0x800000010043E6D0;
  v46 = sub_10002F518();
  v48 = v47;
  ObjectType = swift_getObjectType();
  v62 = v46;
  v50 = (*(*(v48 + 8) + 8))(ObjectType);
  v52 = v51;
  swift_unknownObjectRelease();
  v53._countAndFlagsBits = v50;
  v53._object = v52;
  String.append(_:)(v53);

  v54._countAndFlagsBits = 10;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  String.append(_:)(v61);

  return v65._countAndFlagsBits;
}

void sub_10028A9B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_1000089FC(0, v1, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = v2 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v26 = v2 + 72;
    v27 = v1;
    v28 = v2 + 64;
    v29 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v32 = v5 >> 6;
      v30 = v6;
      v31 = *(v2 + 36);
      v8 = *(v2 + 48) + 56 * v5;
      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      v33 = v3;
      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      v13 = *(v8 + 48);

      sub_10026D0B8(v10, v9, v11, v12, v13);
      sub_1002856A4();
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15 = v11;
      v3 = v33;
      sub_1002485A4(v10, v9, v15, v12, v13);
      v17 = v33[2];
      v16 = v33[3];
      if (v17 >= v16 >> 1)
      {
        sub_1000089FC((v16 > 1), v17 + 1, 1);
        v3 = v33;
      }

      v3[2] = v17 + 1;
      v18 = &v3[2 * v17];
      v18[4] = 538976288;
      v18[5] = 0xE400000000000000;
      v2 = v29;
      v7 = 1 << *(v29 + 32);
      if (v5 >= v7)
      {
        goto LABEL_22;
      }

      v4 = v28;
      v19 = *(v28 + 8 * v32);
      if ((v19 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v31 != *(v29 + 36))
      {
        goto LABEL_24;
      }

      v20 = v19 & (-2 << (v5 & 0x3F));
      if (v20)
      {
        v7 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v32 << 6;
        v22 = v32 + 1;
        v23 = (v26 + 8 * v32);
        while (v22 < (v7 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_10000A16C(v5, v31, 0);
            v7 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_10000A16C(v5, v31, 0);
      }

LABEL_4:
      v6 = v30 + 1;
      v5 = v7;
      if (v30 + 1 == v27)
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

char *sub_10028ACA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100524C08, &unk_100457390);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10028ADC8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1001BC5A8(&qword_100524C08, &unk_100457390);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

double sub_10028AE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a2)
  {

    return sub_1002485A4(a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_10028AED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v9 = sub_10028B074(a1, a2, a3, a4, a5, a6, a7);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v7;
  v22 = *v8;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10028B70C();
    v13 = v22;
  }

  v14 = *(v13 + 48) + 56 * v11;
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  v17 = *(v14 + 32);
  v18 = *(v14 + 40);
  v19 = *(v14 + 48);

  sub_1002485A4(v15, v16, v17, v18, v19);
  v20 = *(*(v13 + 56) + 16 * v11);
  sub_10028B42C(v11, v13);
  *v8 = v13;
  return v20;
}

uint64_t sub_10028AFB0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

uint64_t sub_10028AFF4(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16) + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  v11 = *(v4 + 48);
  *(v4 + 48) = 0;
  sub_10028AE60(v5, v6, v7, v8, v9, v10, v11);
  sub_100289D1C();
  return v3(a1);
}

unint64_t sub_10028B074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10028BE34();
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10028B60C(a1, v8);
}

void sub_10028B0F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100524BF8, &qword_100457388);
  v42 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v39 = v3;
    v40 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v41 = v5;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v44 = (v11 - 1) & v11;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 56 * v21;
      v24 = *(v23 + 8);
      v25 = *(v23 + 16);
      v26 = *(v23 + 24);
      v27 = *(v23 + 32);
      v28 = *(v23 + 40);
      v29 = *(v23 + 48);
      v43 = *v23;
      v45 = *(v22 + 16 * v21);
      if ((v42 & 1) == 0)
      {

        sub_10026D0B8(v25, v26, v27, v28, v29);
      }

      sub_10028BE34();
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v15 = v26;
        v16 = v29;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v13 + 8 * v33);
          if (v37 != -1)
          {
            v14 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v15 = v26;
      v16 = v29;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v17 = *(v7 + 48) + 56 * v14;
      *v17 = v43;
      *(v17 + 8) = v24;
      *(v17 + 16) = v25;
      *(v17 + 24) = v15;
      *(v17 + 32) = v27;
      *(v17 + 40) = v28;
      *(v17 + 48) = v16;
      *(*(v7 + 56) + 16 * v14) = v45;
      ++*(v7 + 16);
      v5 = v41;
      v11 = v44;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v20 = v40[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_33;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v40, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v40 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_10028B42C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    sub_10028BE34();
    do
    {
      v9 = 56 * v6;
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 56 * v3;
          v15 = (v13 + v9);
          if (56 * v3 < v9 || v14 >= v15 + 56 || v3 != v6)
          {
            v16 = *v15;
            v17 = v15[1];
            v18 = v15[2];
            *(v14 + 48) = *(v15 + 6);
            *(v14 + 16) = v17;
            *(v14 + 32) = v18;
            *v14 = v16;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 16 * v3);
          v21 = (v19 + 16 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10028B60C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100276B34();
    do
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_10028B70C()
{
  sub_1001BC5A8(&qword_100524BF8, &qword_100457388);
  v25 = v0;
  v1 = *v0;
  v26 = static _DictionaryStorage.copy(original:)();
  if (*(v1 + 16))
  {
    v2 = (v26 + 64);
    v3 = ((1 << *(v26 + 32)) + 63) >> 6;
    if (v26 != v1 || v2 >= v1 + 64 + 8 * v3)
    {
      memmove(v2, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v26 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 56 * v14;
        v16 = *(v1 + 48) + 56 * v14;
        v17 = *(v16 + 8);
        v18 = *(v16 + 16);
        v19 = *(v16 + 24);
        v20 = *(v16 + 32);
        v21 = *(v16 + 40);
        v14 *= 16;
        v22 = *(*(v1 + 56) + v14);
        v23 = *(v26 + 48) + v15;
        v24 = *(v16 + 48);
        *v23 = *v16;
        *(v23 + 8) = v17;
        *(v23 + 16) = v18;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        *(v23 + 48) = v24;
        *(*(v26 + 56) + v14) = v22;

        sub_10026D0B8(v18, v19, v20, v21, v24);
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v25 = v26;
  }
}

void sub_10028B8E4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v9 = a4;
  v13 = *v7;
  v14 = sub_10028B074(a3, a2, a3, a4, a5, a6, a7);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (v9 & 1) == 0)
  {
    if (v21 < v19 || (v9 & 1) != 0)
    {
      sub_10028B0F4(v19, v9 & 1);
      v14 = sub_10028B074(a3, v23, v24, v25, v26, v27, v28);
      if ((v20 & 1) != (v29 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = v14;
      sub_10028B70C();
      v14 = v22;
    }
  }

  v30 = *v8;
  if ((v20 & 1) == 0)
  {
    v33 = a3[1];
    v43 = *a3;
    v32 = v43;
    v34 = a3[2];
    v41[0] = v33;
    v41[1] = v34;
    v42 = *(a3 + 48);
    v35 = v42;
    v30[(v14 >> 6) + 8] |= 1 << v14;
    v36 = v30[6] + 56 * v14;
    *(v36 + 48) = v35;
    *(v36 + 16) = v33;
    *(v36 + 32) = v34;
    *v36 = v32;
    v37 = (v30[7] + 16 * v14);
    *v37 = a1;
    v37[1] = a2;
    v38 = v30[2];
    v18 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (!v18)
    {
      v30[2] = v39;
      sub_10028BC98(&v43, v40);
      sub_10026D080(v41, v40);
      return;
    }

    goto LABEL_15;
  }

  v31 = (v30[7] + 16 * v14);
  *v31 = a1;
  v31[1] = a2;
}

void *sub_10028BA90(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
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
    v22 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v22;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v26 = a4;
    v27 = a3;
    v24 = -1 << *(a4 + 32);
    v25 = result;
    result = 0;
    v9 = 0;
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v28 = v9;
      v14 = *(a4 + 48) + 56 * (__clz(__rbit64(v7)) | (v9 << 6));
      v15 = *(v14 + 8);
      v7 &= v7 - 1;
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      v18 = *(v14 + 32);
      v19 = *(v14 + 40);
      v20 = *(v14 + 48);
      *v8 = *v14;
      *(v8 + 8) = v15;
      *(v8 + 16) = v16;
      *(v8 + 24) = v17;
      *(v8 + 32) = v18;
      *(v8 + 40) = v19;
      *(v8 + 48) = v20;
      if (v11 == v27)
      {

        sub_10026D0B8(v16, v17, v18, v19, v20);
        result = v25;
        a4 = v26;
        v5 = v24;
        a3 = v27;
        v22 = v28;
        goto LABEL_24;
      }

      v8 += 56;

      sub_10026D0B8(v16, v17, v18, v19, v20);
      result = v11;
      v21 = __OFADD__(v11++, 1);
      a4 = v26;
      v9 = v28;
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
      v23 = v9 + 1;
    }

    else
    {
      v23 = v10;
    }

    v22 = v23 - 1;
    a3 = result;
    v5 = v24;
    result = v25;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10028BC54(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

uint64_t type metadata accessor for RoutingItemDataSource(uint64_t a1)
{
  result = qword_100533240;
  if (!qword_100533240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10028BD48(uint64_t a1)
{
  result = type metadata accessor for RoutingMode();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_10028BE34()
{
  result = qword_100524C00;
  if (!qword_100524C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524C00);
  }

  return result;
}

id sub_10028BE88(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtCC12mediaremoted39RemoteControlGroupSessionItemDataSource27GroupSessionManagerObserver_callback];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

id sub_10028BFC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteControlGroupSessionItemDataSource.GroupSessionManagerObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10028C010@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingMode;
  swift_beginAccess();
  v4 = type metadata accessor for RoutingMode();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10028C098(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingMode;
  swift_beginAccess();
  v4 = type metadata accessor for RoutingMode();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_10028C188(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingItems;
  swift_beginAccess();

  LOBYTE(a1) = sub_10001ECB8(v9, a1);

  if ((a1 & 1) == 0)
  {
    v11 = sub_100028D40();
    (*(v5 + 16))(v7, v11, v4);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      HIDWORD(v28) = v13;
      v15 = v14;
      v29 = swift_slowAlloc();
      v30 = v29;
      *v15 = 136315394;
      v16 = _typeName(_:qualified:)();
      v18 = sub_10002C9C8(v16, v17, &v30);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      type metadata accessor for HostedRoutingItem(0);

      v19 = Array.description.getter();
      v21 = v20;

      v22 = sub_10002C9C8(v19, v21, &v30);

      *(v15 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v12, BYTE4(v28), "[%s] setRoutingItems - value: %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v7, v4);
    v23 = v2 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v24 = *(v23 + 8);
      ObjectType = swift_getObjectType();
      v26 = *(v2 + v8);
      v27 = *(v24 + 8);

      v27(v2, &off_1004C7720, v26, ObjectType, v24);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10028C4F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingItems;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_10028C188(v4);
}

void (*sub_10028C554(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingItems;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_10028C5F0;
}

void sub_10028C5F0(void **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 4);
  v3 = *(*a1 + 5);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 3);
  if (a2)
  {

    sub_10028C188(v5);
  }

  else
  {
    sub_10028C188(v5);
  }

  free(v2);
}

uint64_t sub_10028C674()
{
  v1 = (v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingContextIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10028C6CC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingContextIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *sub_10028C78C()
{
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource____lazy_storage___notificationObservers))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource____lazy_storage___notificationObservers);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    *(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource____lazy_storage___notificationObservers) = &_swiftEmptySetSingleton;
  }

  return v1;
}

uint64_t sub_10028C7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v12 = swift_allocObject();
  sub_10028C854(a1, a2, v9, a4, a5, a6);
  return v12;
}

void *sub_10028C854(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v44 = a2;
  v45 = a5;
  v48 = a4;
  LODWORD(v47) = a3;
  v42[1] = *v6;
  v43 = a1;
  v46 = type metadata accessor for Logger();
  v9 = *(v46 - 8);
  __chkstk_darwin(v46);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingMode;
  v17 = enum case for RoutingMode.disabled(_:);
  v18 = type metadata accessor for RoutingMode();
  (*(*(v18 - 8) + 104))(v7 + v16, v17, v18);
  *(v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingItems) = _swiftEmptyArrayStorage;
  v19 = (v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingContextIdentifier);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier);
  *v20 = static String.nanoIDFourChar()();
  v20[1] = v21;
  *(v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource____lazy_storage___notificationObservers) = 0;
  *(v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_discoveryObserver) = 0;
  *(v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *v15 = a6;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v22 = a6;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v15, v12);
  if (v20)
  {
    v24 = v44;
    v7[2] = v43;
    v7[3] = v24;
    *(v7 + 32) = v47;
    v7[5] = v22;
    v25 = *(*v7 + 320);
    v26 = v22;
    v27 = v25();
    v28 = (*(*v7 + 344))(v27);
    v29 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingItems;
    swift_beginAccess();
    *(v7 + v29) = v28;

    *(v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_delegate + 8) = v45;
    swift_unknownObjectWeakAssign();
    v30 = sub_100028D40();
    v31 = v46;
    (*(v9 + 16))(v11, v30, v46);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v34 = 136315394;
      v35 = _typeName(_:qualified:)();
      v37 = sub_10002C9C8(v35, v36, &v49);
      v47 = v26;
      v38 = v37;

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      v39 = *(v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier);
      v40 = *(v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8);

      v41 = sub_10002C9C8(v39, v40, &v49);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "[%s]<%{public}s> init", v34, 0x16u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v9 + 8))(v11, v31);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10028CD38()
{
  v1 = type metadata accessor for RoutingMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v15 = 60;
  v16 = 0xE100000000000000;
  v5._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 60;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier));
  v7._countAndFlagsBits = 0x65707974202D203ELL;
  v7._object = 0xEA0000000000203ALL;
  String.append(_:)(v7);
  v8 = *(v0 + 32);
  v13 = *(v0 + 16);
  v14 = v8;
  sub_1002854F8();
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x6E6974756F72202CLL;
  v10._object = 0xEF203A65646F4D67;
  String.append(_:)(v10);
  (*(*v0 + 152))();
  sub_100017F3C(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  (*(v2 + 8))(v4, v1);
  return v15;
}

uint64_t sub_10028CF94(uint64_t *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v185 = a3;
  v186 = a2;
  v197 = *v3;
  v168 = type metadata accessor for HostedRoutingItem(0);
  v182 = *(v168 - 8);
  v5 = __chkstk_darwin(v168);
  v180 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v167 = &v166 - v8;
  __chkstk_darwin(v7);
  v173 = &v166 - v9;
  v193 = type metadata accessor for Logger();
  v195 = *(v193 - 8);
  v10 = __chkstk_darwin(v193);
  v174 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v169 = &v166 - v13;
  __chkstk_darwin(v12);
  v191 = &v166 - v14;
  v196 = type metadata accessor for ContinuousClock.Instant();
  v15 = *(v196 - 8);
  v181 = *(v15 + 8);
  v16 = __chkstk_darwin(v196);
  v188 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v190 = &v166 - v19;
  __chkstk_darwin(v18);
  v21 = &v166 - v20;
  v22 = type metadata accessor for ContinuousClock();
  v189 = *(v22 - 8);
  v23 = v189;
  v24 = *(v189 + 64);
  v25 = __chkstk_darwin(v22);
  v187 = (&v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __chkstk_darwin(v25);
  v28 = (&v166 - v27);
  __chkstk_darwin(v26);
  v30 = &v166 - v29;
  v184 = a1;
  v31 = a1[1];
  v192 = *a1;
  v194 = v31;
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v32 = *(v23 + 16);
  v179 = v28;
  v177 = v30;
  v32(v28, v30, v22);
  v33 = *(v15 + 2);
  v34 = v190;
  v178 = v21;
  v35 = v21;
  v36 = v196;
  v33(v190, v35, v196);
  v32(v187, v28, v22);
  v33(v188, v34, v36);
  v37 = v189;
  v38 = (*(v189 + 80) + 16) & ~*(v189 + 80);
  v39 = (v24 + v15[80] + v38) & ~v15[80];
  v40 = (v181 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = *(v37 + 32);
  v175 = v22;
  v44(v43 + v38, v179, v22);
  v179 = v15;
  v45 = v183;
  (*(v15 + 4))(v43 + v39, v190, v196);
  *(v43 + v40) = v45;
  v46 = (v43 + v41);
  v47 = v194;
  *v46 = v192;
  v46[1] = v47;
  v48 = (v43 + v42);
  v49 = v185;
  *v48 = v186;
  v48[1] = v49;
  v176 = v43;
  *(v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8)) = v197;

  v50 = sub_100028D40();
  v51 = *(v195 + 16);
  v170 = v50;
  v172 = v195 + 16;
  v171 = v51;
  (v51)(v191);
  v53 = v184[2];
  v52 = v184[3];
  v55 = v184[4];
  v54 = v184[5];
  LODWORD(v39) = *(v184 + 48);

  sub_10026D0B8(v53, v52, v55, v54, v39);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  v181 = v53;
  LODWORD(v190) = v39;
  sub_1002485A4(v53, v52, v55, v54, v39);
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *&v202 = swift_slowAlloc();
    *v58 = 136315906;
    v59 = _typeName(_:qualified:)();
    v61 = v56;
    v62 = sub_10002C9C8(v59, v60, &v202);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v58 + 14) = sub_10002C9C8(*(v45 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(v45 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &v202);
    *(v58 + 22) = 2082;
    *(v58 + 24) = sub_10002C9C8(v192, v194, &v202);
    *(v58 + 32) = 2082;
    v63 = *(v184 + 1);
    aBlock = *v184;
    v199 = v63;
    v200 = *(v184 + 2);
    v201 = *(v184 + 48);
    sub_1002856A4();
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = sub_10002C9C8(v64, v65, &v202);

    *(v58 + 34) = v66;
    _os_log_impl(&_mh_execute_header, v61, v57, "[%s]<%{public}s> interact<%{public}s> - interaction: %{public}s", v58, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v67 = v191;
  v68 = v193;
  v191 = *(v195 + 8);
  (v191)(v67, v193);
  v69 = v45;
  v70 = v181;
  v71 = v180;
  if (v190 != 3)
  {
LABEL_29:
    v179[1](v188, v196);
    (*(v189 + 8))(v187, v175);
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v202 = aBlock;
    v150._countAndFlagsBits = 91;
    v150._object = 0xE100000000000000;
    String.append(_:)(v150);
    v151._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v151);

    v152._countAndFlagsBits = 15453;
    v152._object = 0xE200000000000000;
    String.append(_:)(v152);
    String.append(_:)(*(v69 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier));
    v153._countAndFlagsBits = 0x617265746E69203ELL;
    v153._object = 0xEB000000003C7463;
    String.append(_:)(v153);
    v154._countAndFlagsBits = v192;
    v154._object = v194;
    String.append(_:)(v154);
    v155._countAndFlagsBits = 0xD00000000000001FLL;
    v155._object = 0x800000010043E250;
    String.append(_:)(v155);
    v156 = *(v184 + 1);
    aBlock = *v184;
    v199 = v156;
    v200 = *(v184 + 2);
    v201 = *(v184 + 48);
    sub_1002856A4();
    v157._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v157);

LABEL_31:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v73 = (*(*v69 + 176))(v72);
  v74 = *(v73 + 16);
  v75 = v182;
  if (!v74)
  {
LABEL_14:

    v78 = v174;
    v171(v174, v170, v68);
    v79 = v68;
    v80 = v194;

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v83 = 136315906;
      v84 = _typeName(_:qualified:)();
      v86 = v69;
      v87 = sub_10002C9C8(v84, v85, &aBlock);

      *(v83 + 4) = v87;
      v69 = v86;
      *(v83 + 12) = 2082;
      *(v83 + 14) = sub_10002C9C8(*(v86 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(v86 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &aBlock);
      *(v83 + 22) = 2082;
      v88 = v192;
      *(v83 + 24) = sub_10002C9C8(v192, v80, &aBlock);
      *(v83 + 32) = 2082;
      *(v83 + 34) = sub_10002C9C8(v70, v52, &aBlock);
      _os_log_impl(&_mh_execute_header, v81, v82, "[%s]<%{public}s> interact<%{public}s> - could not find source item matching identifier: %{public}s", v83, 0x2Au);
      swift_arrayDestroy();

      (v191)(v174, v193);
      v89 = v175;
    }

    else
    {

      (v191)(v78, v79);
      v89 = v175;
      v88 = v192;
    }

    v110 = type metadata accessor for InternalRoutingError();
    sub_100017F3C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v110 - 8) + 104))(v111, enum case for InternalRoutingError.itemNotFound(_:), v110);
    MRDFastSyncGroupSessionState.rawValue.getter();
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v119 = v187;
    v118 = v188;
    sub_10028E52C(v120, v112, v114, v116, v187, v188, v69, v88, v80, v186, v185, v197);

    sub_10023DCB0(v113, v115, v117);

    v121 = v179[1];
    v122 = v196;
    v121(v118, v196);
    v123 = *(v189 + 8);
    v123(v119, v89);
    v121(v178, v122);
    return (v123)(v177, v89);
  }

  v76 = 0;
  while (1)
  {
    if (v76 >= *(v73 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    sub_10001D948(v73 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v76, v71);
    v77 = *v71 == v70 && v52 == v71[1];
    if (v77 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v76;
    sub_10001DA14(v71);
    if (v74 == v76)
    {
      goto LABEL_14;
    }
  }

  v90 = v167;
  sub_10001DFD4(v71, v167);
  v91 = v90;
  v92 = v173;
  sub_10001DFD4(v91, v173);
  v93 = v92 + *(v168 + 64);
  if ((HIBYTE(*(v93 + 16)) & 6 | (*(v93 + 16) >> 7) & 1) != 6 || (v94 = *v93, v95 = *(v94 + 32), (~v95 & 0x6FE) == 0))
  {
    v179[1](v188, v196);
    (*(v189 + 8))(v187, v175);
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v158._countAndFlagsBits = 91;
    v158._object = 0xE100000000000000;
    String.append(_:)(v158);
    v159._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v159);

    v160._countAndFlagsBits = 15453;
    v160._object = 0xE200000000000000;
    String.append(_:)(v160);
    String.append(_:)(*(v183 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier));
    v161._countAndFlagsBits = 0x617265746E69203ELL;
    v161._object = 0xEB000000003C7463;
    String.append(_:)(v161);
    v162._countAndFlagsBits = v192;
    v162._object = v194;
    String.append(_:)(v162);
    v163._object = 0x800000010043E890;
    v163._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v163);
    sub_100017F3C(&unk_100524C40, type metadata accessor for HostedRoutingItem, &unk_100452308);
    v164._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v164);

    v165._countAndFlagsBits = 0xD000000000000014;
    v165._object = 0x800000010043E8B0;
    String.append(_:)(v165);
    goto LABEL_31;
  }

  v96 = *(v94 + 16);
  v97 = *(v94 + 24);
  v98 = objc_opt_self();
  v184 = v96;
  v182 = v97;
  LODWORD(v190) = v95;
  sub_10001DAE0(v96, v97, v95);
  v99 = [v98 server];
  v100 = [v99 groupSessionServer];

  v101 = v194;
  v102 = v169;
  if (v100 && (v103 = [v100 sessionManager], v100, v103))
  {
    v197 = v179[1];
    v104 = v196;
    v197(v188, v196);
    v195 = *(v189 + 8);
    v105 = v175;
    (v195)(v187, v175);
    v106 = String._bridgeToObjectiveC()();
    v107 = swift_allocObject();
    swift_weakInit();
    v108 = swift_allocObject();
    v108[2] = v107;
    v108[3] = sub_100291830;
    v108[4] = v176;
    v108[5] = v70;
    v108[6] = v52;
    *&v200 = sub_100291988;
    *(&v200 + 1) = v108;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v199 = sub_1001BC53C;
    *(&v199 + 1) = &unk_1004C76D0;
    v109 = _Block_copy(&aBlock);

    [v103 launchApplicationForDiscoveredSessionIdentifier:v106 foreground:0 completion:v109];
    _Block_release(v109);

    sub_100248970(v184, v182, v190);
    v197(v178, v104);
    (v195)(v177, v105);
  }

  else
  {
    v171(v102, v170, v68);

    v125 = v183;

    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      *&aBlock = v180;
      *v128 = 136315650;
      v129 = _typeName(_:qualified:)();
      v131 = v101;
      v132 = sub_10002C9C8(v129, v130, &aBlock);

      *(v128 + 4) = v132;
      *(v128 + 12) = 2082;
      *(v128 + 14) = sub_10002C9C8(*(v125 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(v125 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &aBlock);
      *(v128 + 22) = 2082;
      v133 = v192;
      *(v128 + 24) = sub_10002C9C8(v192, v131, &aBlock);
      _os_log_impl(&_mh_execute_header, v126, v127, "[%s]<%{public}s> interact<%{public}s> - group session manager is missing", v128, 0x20u);
      swift_arrayDestroy();

      (v191)(v169, v193);
      v134 = v175;
    }

    else
    {

      (v191)(v102, v68);
      v134 = v175;
      v133 = v192;
    }

    v135 = v186;
    v136 = type metadata accessor for InternalRoutingError();
    sub_100017F3C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v136 - 8) + 104))(v137, enum case for InternalRoutingError.unsupportedOperation(_:), v136);
    MRDFastSyncGroupSessionState.rawValue.getter();
    v139 = v138;
    v141 = v140;
    v143 = v142;
    v145 = v187;
    v144 = v188;
    sub_10028E52C(v146, v138, v140, v142, v187, v188, v125, v133, v194, v135, v185, v197);

    sub_10023DCB0(v139, v141, v143);

    sub_100248970(v184, v182, v190);
    v147 = v179[1];
    v148 = v196;
    v147(v144, v196);
    v149 = *(v189 + 8);
    v149(v145, v134);
    v147(v178, v148);
    v149(v177, v134);
  }

  return sub_10001DA14(v173);
}

uint64_t sub_10028E52C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void (*a10)(uint64_t *), uint64_t a11, uint64_t a12)
{
  v76 = a8;
  v104 = a4;
  v103 = a3;
  v99 = a11;
  v100 = a10;
  v15 = sub_1001BC5A8(&unk_100524EC0, &qword_100457040);
  __chkstk_darwin(v15 - 8);
  v95 = &v72 - v16;
  v17 = type metadata accessor for InternalRoutingError();
  v97 = *(v17 - 8);
  v98 = v17;
  __chkstk_darwin(v17);
  v96 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v80 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Duration.UnitsFormatStyle();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v78 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ContinuousClock.Instant();
  v93 = *(v27 - 8);
  v94 = v27;
  __chkstk_darwin(v27);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContinuousClock.now.getter();
  v92 = v29;
  v102 = ContinuousClock.Instant.duration(to:)();
  v91 = v30;
  v31 = sub_100028D40();
  v32 = *(v24 + 16);
  v90 = v23;
  v32(v26, v31, v23);
  v33 = a7;

  v34 = a1;
  v35 = a2;
  v36 = a2;
  v37 = v103;
  v38 = v104;
  sub_10023DBE8(a1, v36, v103, v104);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v75 = a9;

  v74 = v33;

  v101 = v35;
  sub_10023DC58(v34, v35, v37, v38);
  v89 = v39;
  if (os_log_type_enabled(v39, v40))
  {
    v41 = v26;
    v73 = v40;
    v42 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v106 = v72;
    *v42 = 136316162;
    v43 = _typeName(_:qualified:)();
    v45 = sub_10002C9C8(v43, v44, &v106);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2082;
    *(v42 + 14) = sub_10002C9C8(*(v74 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(v74 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &v106);
    *(v42 + 22) = 2082;
    *(v42 + 24) = sub_10002C9C8(v76, v75, &v106);
    *(v42 + 32) = 2082;
    v46 = v34;
    if (v34)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v105, " with error: ");
      HIWORD(v105[1]) = -4864;
      v107 = v34;
      v108 = v101;
      v109 = v103;
      v110 = v104;
      sub_10023DD70();
      v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v47);

      v48._countAndFlagsBits = 32;
      v48._object = 0xE100000000000000;
      String.append(_:)(v48);
      v49 = v105[0];
      v50 = v105[1];
    }

    else
    {
      v50 = 0xE100000000000000;
      v49 = 32;
    }

    v51 = sub_10002C9C8(v49, v50, &v106);

    *(v42 + 34) = v51;
    *(v42 + 42) = 2082;
    sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
    type metadata accessor for Duration.UnitsFormatStyle.Unit();
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100450890;
    static Duration.UnitsFormatStyle.Unit.seconds.getter();
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_1002868A0(v52);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v53 = v77;
    static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
    v54 = v80;
    static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
    v55 = v85;
    static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
    v56 = v78;
    static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

    (*(v87 + 8))(v55, v88);
    (*(v84 + 8))(v54, v86);
    (*(v79 + 8))(v53, v81);
    sub_100017F3C(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
    v57 = v83;
    Duration.formatted<A>(_:)();
    (*(v82 + 8))(v56, v57);
    v58 = sub_10002C9C8(v107, v108, &v106);

    *(v42 + 44) = v58;
    v59 = v89;
    _os_log_impl(&_mh_execute_header, v89, v73, "[%s]<%{public}s> interact<%{public}s> - finished%{public}sin: %{public}s", v42, 0x34u);
    swift_arrayDestroy();

    (*(v24 + 8))(v41, v90);
  }

  else
  {

    (*(v24 + 8))(v26, v90);
    v46 = v34;
  }

  v60 = v100;
  v62 = v97;
  v61 = v98;
  v63 = v95;
  v64 = v96;
  if (!v46)
  {
    (*(v97 + 56))(v95, 1, 1, v98);
    goto LABEL_12;
  }

  v107 = v46;
  swift_errorRetain();
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  v65 = swift_dynamicCast();
  (*(v62 + 56))(v63, v65 ^ 1u, 1, v61);
  if ((*(v62 + 48))(v63, 1, v61) == 1)
  {
LABEL_12:
    sub_1000038A4(v63, &unk_100524EC0, &qword_100457040);
LABEL_13:
    v67 = v101;
    v68 = v103;
    v69 = v104;
    sub_10023DBE8(v46, v101, v103, v104);
    static Duration./ infix(_:_:)();
    sub_10026CEA0(v46, v67, v68, v69, 1, &v107, v70);
    v60(&v107);
    sub_100286E38(&v107);
    return (*(v93 + 8))(v92, v94);
  }

  (*(v62 + 32))(v64, v63, v61);
  if ((InternalRoutingError.isStabilityError.getter() & 1) == 0)
  {
    (*(v62 + 8))(v64, v61);
    goto LABEL_13;
  }

  static Duration./ infix(_:_:)();
  sub_10026CEA0(0, 0, 0, 0, 0, &v107, v66);
  v60(&v107);
  sub_100286E38(&v107);
  (*(v62 + 8))(v64, v61);
  return (*(v93 + 8))(v92, v94);
}

double sub_10028F100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  __chkstk_darwin(v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21[1] = Strong;
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a3;
    v19[4] = a4;
    v19[5] = a5;
    v19[6] = a6;
    aBlock[4] = sub_1002921D4;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C7850;
    v20 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_100017F3C(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v23 + 8))(v13, v11);
    (*(v14 + 8))(v16, v22);
  }

  return result;
}

uint64_t sub_10028F42C()
{
  v1 = v0;
  v2 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v35 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v23 - v8;
  v33 = objc_opt_self();
  v10 = [v33 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v36 = v1[5];
  v11 = v36;
  v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v12 = *(v30 - 8);
  v31 = *(v12 + 56);
  v32 = v12 + 56;
  v31(v4, 1, 1, v30);
  v27 = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  v26 = sub_100017F3C(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v25 = sub_1001C3D28(&qword_100524C70, &qword_100524C60, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v24 = v11;
  Publisher.receive<A>(on:options:)();
  v13 = v4;
  sub_1000038A4(v4, &unk_100524C50, &qword_10044F180);
  v14 = *(v34 + 8);
  v34 += 8;
  v28 = v14;
  v15 = v5;
  v14(v7, v5);
  swift_allocObject();
  swift_weakInit();
  v23 = sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v16 = v29;
  Publisher<>.sink(receiveValue:)();

  v17 = *(v35 + 8);
  v35 += 8;
  v17(v9, v16);
  v36 = sub_10028C78C();
  AnyCancellable.store(in:)();

  v18 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource____lazy_storage___notificationObservers;
  *(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource____lazy_storage___notificationObservers) = v36;

  v19 = [v33 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v20 = v24;
  v36 = v24;
  v31(v13, 1, 1, v30);
  Publisher.receive<A>(on:options:)();
  sub_1000038A4(v13, &unk_100524C50, &qword_10044F180);

  v28(v7, v15);
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  v17(v9, v16);
  v36 = *(v1 + v18);

  AnyCancellable.store(in:)();

  *(v1 + v18) = v36;

  return (*(*v1 + 328))(v21);
}

void sub_10028F9C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v38[-v8];
  v10 = [objc_opt_self() server];
  v11 = [v10 groupSessionServer];

  if (v11 && (v41 = [v11 sessionManager], v11, (v12 = v41) != 0))
  {
    v13 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_discoveryObserver;
    if (*(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_discoveryObserver))
    {
    }

    else
    {
      v22 = sub_100028D40();
      (*(v4 + 16))(v9, v22, v3);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v39 = v24;
        v26 = v25;
        v40 = swift_slowAlloc();
        v43 = v40;
        *v26 = 136315394;
        v27 = _typeName(_:qualified:)();
        v29 = sub_10002C9C8(v27, v28, &v43);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2082;
        *(v26 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &v43);
        _os_log_impl(&_mh_execute_header, v23, v39, "[%s]<%{public}s> updateGroupSessionDiscoveryMonitoring - install discoveryObserver", v26, 0x16u);
        swift_arrayDestroy();
      }

      (*(v4 + 8))(v9, v3);
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = v2;
      v32 = type metadata accessor for RemoteControlGroupSessionItemDataSource.GroupSessionManagerObserver();
      v33 = objc_allocWithZone(v32);
      v34 = &v33[OBJC_IVAR____TtCC12mediaremoted39RemoteControlGroupSessionItemDataSource27GroupSessionManagerObserver_callback];
      *v34 = sub_100291A18;
      v34[1] = v31;
      v42.receiver = v33;
      v42.super_class = v32;
      v35 = objc_msgSendSuper2(&v42, "init");
      v36 = *(v1 + v13);
      *(v1 + v13) = v35;
      v37 = v35;

      [v41 addObserver:v37];
    }
  }

  else
  {
    v14 = sub_100028D40();
    (*(v4 + 16))(v7, v14, v3);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v17 = 136315394;
      v18 = _typeName(_:qualified:)();
      v20 = sub_10002C9C8(v18, v19, &v43);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &v43);
      _os_log_impl(&_mh_execute_header, v15, v16, "[%s]<%{public}s> updateGroupSessionDiscoveryMonitoring - remove discoveryObserver", v17, 0x16u);
      swift_arrayDestroy();
    }

    (*(v4 + 8))(v7, v3);
    v21 = *(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_discoveryObserver);
    *(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_discoveryObserver) = 0;
  }
}

double sub_10028FEE8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(Strong + 40);
    v13 = Strong;
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a2;
    v19 = v13;
    aBlock[4] = sub_10029217C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C7800;
    v15 = v8;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_100017F3C(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    v18 = v7;
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);
    (*(v4 + 8))(v6, v3);
    (*(v15 + 8))(v10, v18);
  }

  return result;
}

uint64_t sub_1002901F8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100028D40();
  (*(v4 + 16))(v6, v7, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10002C9C8(v11, v12, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_10002C9C8(*(a1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(a1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &v17);
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s]<%{public}s> discoveryObserver - discoveredSessions changed", v10, 0x16u);
    swift_arrayDestroy();
  }

  v14 = (*(v4 + 8))(v6, v3);
  return (*(*a1 + 336))(v14);
}

uint64_t sub_100290434()
{
  v1 = (*(*v0 + 344))();
  v2 = *(*v0 + 184);

  return v2(v1);
}

void *sub_1002904A4()
{
  v1 = *v0;
  v2 = sub_1001BC5A8(&unk_100524C80, &qword_1004573A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v6 = [objc_opt_self() server];
  v7 = [v6 groupSessionServer];

  if (v7)
  {
    v8 = [v7 sessionManager];

    if (v8)
    {
      v9 = [v8 discoveredSessions];

      if (v9)
      {
        sub_100018D7C(0, &unk_100521AF0, MRDiscoveredGroupSession_ptr);
        sub_1001C3D28(&unk_100524C90, &unk_100521AF0, MRDiscoveredGroupSession_ptr, &protocol conformance descriptor for NSObject);
        v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v10 & 0xC000000000000001) != 0)
        {
          if (__CocoaSet.count.getter())
          {
LABEL_6:

            sub_100290FB0(v10, v0, v1);
            v12 = v11;

            v15 = v12;
            swift_getKeyPath();
            KeyPathComparator.init<A>(_:order:)();
            sub_1001BC5A8(&qword_1005249A0, &unk_100458530);
            sub_10000462C(&unk_100524CA0, &qword_1005249A0, &unk_100458530, &protocol conformance descriptor for [A]);
            sub_10000462C(&qword_1005249B8, &unk_100524C80, &qword_1004573A0, &protocol conformance descriptor for KeyPathComparator<A>);
            v13 = Sequence.sorted<A>(using:)();
            (*(v3 + 8))(v5, v2);

            return v13;
          }
        }

        else if (*(v10 + 16))
        {
          goto LABEL_6;
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1002907C4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v73 = a3;
  v7 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  __chkstk_darwin(v7 - 8);
  v9 = &v70 - v8;
  v10 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  __chkstk_darwin(v10 - 8);
  v78 = &v70 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = [v16 identifier];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v19;
  v77 = v18;

  v20 = [v16 hostInfo];
  v21 = [v20 localizedSessionName];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v23;
  v75 = v22;

  v24 = [v16 hostInfo];
  v25 = [v24 routeType];

  v79 = v9;
  v80 = a4;
  if (v25 <= 4)
  {
    switch(v25)
    {
      case 0:
        v28 = swift_allocObject();
        *(v28 + 16) = SystemGroupSessionTransport.hostname.getter();
        *(v28 + 24) = v35;
LABEL_25:
        *(v28 + 32) = 0;
        *(v28 + 40) = SystemGroupSessionTransport.hostname.getter();
        *(v28 + 48) = v56;

        v26 = 0;
        v27 = 0;
        goto LABEL_28;
      case 1:
        v26 = 0;
        v27 = 35328;
        v28 = 7;
        goto LABEL_28;
      case 2:
        v26 = 0;
        v27 = 35456;
        v28 = 7;
        goto LABEL_28;
    }

LABEL_15:
    v36 = sub_100028D40();
    v37 = v13;
    (*(v13 + 16))(v15, v36, v12);
    v38 = v16;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v71 = v39;
      v42 = v41;
      v72 = swift_slowAlloc();
      v82 = v72;
      *v42 = 136315650;
      v43 = _typeName(_:qualified:)();
      v44 = v38;
      v46 = sub_10002C9C8(v43, v45, &v82);
      LODWORD(v73) = v40;
      v47 = v46;

      *(v42 + 4) = v47;
      *(v42 + 12) = 2082;
      *(v42 + 14) = sub_10002C9C8(*(a2 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(a2 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &v82);
      *(v42 + 22) = 258;
      v48 = [v38 hostInfo];
      LOBYTE(v47) = [v48 routeType];

      v38 = v44;
      *(v42 + 24) = v47;

      v49 = v71;
      _os_log_impl(&_mh_execute_header, v71, v73, "[%s]<%{public}s> computeRoutingItems - unhandled route type: %{public}hhu", v42, 0x19u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v37 + 8))(v15, v12);
    v28 = swift_allocObject();
    v82 = 0x65756C6156776172;
    v83 = 0xEA0000000000203ALL;
    v52 = [v38 hostInfo];
    v53 = [v52 routeType];

    v81 = v53;
    v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v54);

    v55 = v83;
    *(v28 + 16) = v82;
    *(v28 + 24) = v55;
    goto LABEL_25;
  }

  if ((v25 - 8) < 2)
  {
    v32 = [v16 hostInfo];
    v33 = [v32 modelIdentifier];

    if (v33)
    {
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v34;
    }

    else
    {
      v28 = 0;
      v26 = 0;
    }

    v27 = 12416;
  }

  else if (v25 == 5)
  {
    v50 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
    v28 = 0;
    v26 = 0;
    if (SystemGroupSessionTransport.supportsIdleDisconnection.getter())
    {
      v51 = 256;
    }

    else
    {
      v51 = 0;
    }

    v27 = v51 & 0xFFFFFFFE | v50 & 1 | 0x880;
  }

  else
  {
    if (v25 != 11)
    {
      goto LABEL_15;
    }

    v29 = [v16 hostInfo];
    v30 = [v29 modelIdentifier];

    if (v30)
    {
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v31;
    }

    else
    {
      v28 = 0;
      v26 = 0;
    }

    v27 = 14464;
  }

LABEL_28:
  LODWORD(v73) = v27;
  v57 = swift_allocObject();
  *(v57 + 16) = v28;
  *(v57 + 24) = v26;
  *(v57 + 32) = v27;
  v58 = type metadata accessor for RoutingItem.SelectionIndicator();
  v59 = v78;
  (*(*(v58 - 8) + 56))(v78, 1, 1, v58);
  v82 = _swiftEmptyArrayStorage;
  sub_100248690();
  sub_1001BC5A8(&qword_100524EA0, &unk_100457510);
  sub_10000462C(&qword_100524EA8, &qword_100524EA0, &unk_100457510, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v60 = v81;
  v61 = type metadata accessor for RoutingItem.Attributes();
  v62 = v79;
  (*(*(v61 - 8) + 56))(v79, 1, 1, v61);
  v63 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
  v64 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
  v65 = variable initialization expression of SystemGroupSessionRemoteControlService.sessionCancellables();
  v66 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
  v67 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
  LOBYTE(v82) = 1;
  sub_100258314(v77, v76, 0, 0, v75, v74, v57, 0, v80, 0x600u, v63 & 1, v64 & 1, v59, v60, v65, v66 & 1, v69, 0, 1, 0, v67, v62);
  return sub_100019550(v28, v26, v73);
}

void sub_100290FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100291D78(a1, a2, a3);

  if (v3)
  {
    __break(1u);
  }
}

uint64_t sub_100291004()
{
  sub_10002349C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingMode;
  v2 = type metadata accessor for RoutingMode();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1001DFBCC(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_delegate);
  return v0;
}

uint64_t sub_1002910E0()
{
  sub_100291004();

  return swift_deallocClassInstance();
}

uint64_t sub_100291138()
{
  v1 = *(v0 + 16);
  sub_10002CBE8(v1, *(v0 + 24), *(v0 + 32));
  return v1;
}

void (*sub_1002911C8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 168))();
  return sub_10027DF04;
}

unint64_t sub_100291338()
{
  v32 = type metadata accessor for HostedRoutingItem(0);
  v1 = *(v32 - 8);
  __chkstk_darwin(v32);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RoutingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v37 = 0xD00000000000002ALL;
  v38 = 0x800000010043E8D0;
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier));
  v8._countAndFlagsBits = 2622;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v36, "Routing Mode: ");
  HIBYTE(v36._object) = -18;
  (*(*v0 + 152))(v9);
  sub_100017F3C(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  (*(v5 + 8))(v7, v4);
  v11._countAndFlagsBits = 10;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  String.append(_:)(v36);

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v36._countAndFlagsBits = 0xD000000000000010;
  v36._object = 0x800000010043E360;
  v13 = (*(*v0 + 176))(v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    v35 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v14, 0);
    v15 = v35;
    v16 = *(v1 + 80);
    v31[1] = v13;
    v17 = v13 + ((v16 + 32) & ~v16);
    v18 = *(v1 + 72);
    do
    {
      sub_10001D948(v17, v3);
      v33 = 538976288;
      v34 = 0xE400000000000000;
      sub_100017F3C(&unk_100524C40, type metadata accessor for HostedRoutingItem, &unk_100452308);
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      v21 = v33;
      v20 = v34;
      sub_10001DA14(v3);
      v35 = v15;
      v23 = v15[2];
      v22 = v15[3];
      if (v23 >= v22 >> 1)
      {
        sub_1000089FC((v22 > 1), v23 + 1, 1);
        v15 = v35;
      }

      v15[2] = v23 + 1;
      v24 = &v15[2 * v23];
      v24[4] = v21;
      v24[5] = v20;
      v17 += v18;
      --v14;
    }

    while (v14);
  }

  else
  {

    v15 = _swiftEmptyArrayStorage;
  }

  v33 = v15;
  sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  sub_10000462C(&qword_100523680, &qword_1005229B0, &unk_100450110, &protocol conformance descriptor for [A]);
  v25 = BidirectionalCollection<>.joined(separator:)();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 10;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  String.append(_:)(v36);

  return v37;
}

uint64_t sub_100291830(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v9 = *(type metadata accessor for ContinuousClock() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_10028E52C(a1, a2, a3, a4, v4 + v10, v4 + v13, *(v4 + v14), *(v4 + v15), *(v4 + v15 + 8), *(v4 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + ((((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_10029199C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 328))(Strong);
  }

  return result;
}

uint64_t type metadata accessor for RemoteControlGroupSessionItemDataSource(uint64_t a1)
{
  result = qword_1005332F0;
  if (!qword_1005332F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100291A74(uint64_t a1)
{
  result = type metadata accessor for RoutingMode();
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

void sub_100291B54(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100018D7C(0, &unk_100521AF0, MRDiscoveredGroupSession_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100018D7C(0, &unk_100521AF0, MRDiscoveredGroupSession_ptr);
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

void sub_100291D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v38 = a2;
  v6 = type metadata accessor for HostedRoutingItem(0);
  v37 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (v9)
  {
    v47 = _swiftEmptyArrayStorage;
    v10 = &v47;
    sub_10002A42C(0, v9 & ~(v9 >> 63), 0);
    v42 = v47;
    if (v41)
    {
      v11 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v11 = _HashTable.startBucket.getter();
      v12 = *(a1 + 36);
    }

    v44 = v11;
    v45 = v12;
    v46 = v41 != 0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v14 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v14 = a1;
      }

      v34 = a1 + 56;
      v35 = v14;
      v33 = a1 + 64;
      v36 = v9;
      while (v13 < v9)
      {
        if (__OFADD__(v13++, 1))
        {
          goto LABEL_39;
        }

        v9 = v44;
        v3 = v45;
        LODWORD(v4) = v46;
        v16 = a1;
        sub_100291B54(v44, v45, v46, a1);
        v10 = v17;
        v43[0] = v17;
        v18 = v8;
        sub_1002907C4(v43, v38, v39, v8);
        if (v40)
        {
          goto LABEL_44;
        }

        v19 = v42;
        v47 = v42;
        v21 = v42[2];
        v20 = v42[3];
        if (v21 >= v20 >> 1)
        {
          v10 = &v47;
          sub_10002A42C((v20 > 1), v21 + 1, 1);
          v19 = v47;
        }

        v19[2] = v21 + 1;
        v22 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v42 = v19;
        v23 = v19 + v22 + *(v37 + 72) * v21;
        v8 = v18;
        sub_10001DFD4(v18, v23);
        if (v41)
        {
          if (!v4)
          {
            goto LABEL_45;
          }

          a1 = v16;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_1001BC5A8(&unk_100524E80, &qword_1004574F8);
          v10 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          (v10)(v43, 0);
        }

        else
        {
          if (v4)
          {
            goto LABEL_46;
          }

          if (v9 < 0)
          {
            goto LABEL_40;
          }

          a1 = v16;
          v10 = (1 << *(v16 + 32));
          if (v9 >= v10)
          {
            goto LABEL_40;
          }

          v24 = v9 >> 6;
          v25 = *(v34 + 8 * (v9 >> 6));
          if (((v25 >> v9) & 1) == 0)
          {
            goto LABEL_41;
          }

          if (*(v16 + 36) != v3)
          {
            goto LABEL_42;
          }

          v26 = v25 & (-2 << (v9 & 0x3F));
          if (v26)
          {
            v10 = (__clz(__rbit64(v26)) | v9 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v4 = v24 << 6;
            v27 = v24 + 1;
            v28 = (v33 + 8 * v24);
            while (v27 < (v10 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v4 += 64;
              ++v27;
              if (v30)
              {
                sub_10000A16C(v9, v3, 0);
                v10 = (__clz(__rbit64(v29)) + v4);
                goto LABEL_35;
              }
            }

            sub_10000A16C(v9, v3, 0);
          }

LABEL_35:
          v31 = *(v16 + 36);
          v44 = v10;
          v45 = v31;
          v46 = 0;
        }

        v9 = v36;
        if (v13 == v36)
        {
          sub_10000A16C(v44, v45, v46);
          return;
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
    }

    __break(1u);
LABEL_44:

    sub_10000A16C(v9, v3, v4);

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }
}

uint64_t sub_100292184(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_1002921D4()
{
  v1 = *(v0 + 24);
  if (!*(v0 + 16))
  {
    return (v1)(0, 0, 0, 0);
  }

  v2 = swift_allocObject();
  swift_getErrorValue();
  swift_errorRetain();
  *(v2 + 16) = Error.localizedDescription.getter();
  *(v2 + 24) = v3;
  v4 = type metadata accessor for InternalRoutingError();
  sub_100017F3C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
  swift_allocError();
  *v5 = v2;
  (*(*(v4 - 8) + 104))(v5, enum case for InternalRoutingError.external(_:), v4);

  MRDFastSyncGroupSessionState.rawValue.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v1();

  sub_10023DCB0(v7, v9, v11);
}

void sub_100292394(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v2 + 16);
  if (a1)
  {
    if (v8)
    {
      sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);
      v9 = v8;
      v10 = a1;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        return;
      }
    }
  }

  else if (!v8)
  {
    return;
  }

  v12 = sub_100028D40();
  (*(v5 + 16))(v7, v12, v4);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_10002C9C8(v16, v17, &v26);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = *(v2 + 16);
    if (v19)
    {
      v20 = v19;

      v21 = [v20 description];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {

      v24 = 0xE300000000000000;
      v22 = 7104878;
    }

    v25 = sub_10002C9C8(v22, v24, &v26);

    *(v15 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s] setActiveSessionEndpoint - value: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
}

void *sub_1002926AC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1002926F0(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;
  sub_100292394(v3);
}

void (*sub_100292754(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 16);
  *(v4 + 24) = v5;
  v6 = v5;
  return sub_1002927E8;
}

void sub_1002927E8(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = *v5;
  v8 = v4;
  v9 = v8;
  if (a2)
  {
    v10 = v8;
    sub_100292394(v7);

    v7 = *v5;
  }

  else
  {
    sub_100292394(v7);
  }

  free(v3);
}

void sub_100292884(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v3 + 32);
  if (a2)
  {
    if (v10)
    {
      v11 = *(v3 + 24) == a1 && v10 == a2;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!v10)
  {
    return;
  }

  v12 = sub_100028D40();
  (*(v7 + 16))(v9, v12, v6);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_10002C9C8(v16, v17, &v22);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    if (*(v3 + 32))
    {
      v19 = *(v3 + 24);
      v20 = *(v3 + 32);
    }

    else
    {
      v20 = 0xE300000000000000;
      v19 = 7104878;
    }

    v21 = sub_10002C9C8(v19, v20, &v22);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s] setActiveDeviceIdentifier - value: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_100292B30()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_100292B7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  sub_100292884(v5, v6);
}

void (*sub_100292BDC(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  v5 = *(v1 + 32);
  *(v4 + 24) = *(v1 + 24);
  *(v4 + 32) = v5;

  return sub_100292C70;
}

void sub_100292C70(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = v2[5];
  v7 = *(v5 + 24);
  v6 = *(v5 + 32);
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  if (a2)
  {

    sub_100292884(v7, v6);
  }

  else
  {
    sub_100292884(v7, v6);
  }

  free(v2);
}

id sub_100292CFC()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[13];
  }

  else
  {
    v3 = sub_100292D80(v0, *v0);
    v4 = v0[13];
    v0[13] = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_100292D80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100028D40();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    *&aBlock = v15;
    *v14 = 136315138;
    v16 = _typeName(_:qualified:)();
    v18 = sub_10002C9C8(v16, v17, &aBlock);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%s] discoverySession - initializing", v14, 0xCu);
    sub_100026A44(v15);

    v3 = v31;
  }

  (*(v7 + 8))(v9, v6);
  result = [objc_opt_self() discoverySessionWithEndpointFeatures:8];
  if (result)
  {
    v20 = result;
    v21 = swift_allocObject();
    swift_weakInit();
    v40 = sub_100295B00;
    v41 = v21;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v39 = sub_10029360C;
    *(&v39 + 1) = &unk_1004C7968;
    v22 = _Block_copy(&aBlock);
    v23 = v20;

    v24 = [v23 addEndpointsChangedCallback:v22];
    _Block_release(v22);
    if (v24)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v39 = 0u;
    }

    sub_1000038A4(&aBlock, &qword_100522890, &qword_100450610);
    v25 = *(a1 + 56);
    v40 = sub_100295B2C;
    v41 = a1;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v39 = sub_100003D98;
    *(&v39 + 1) = &unk_1004C7990;
    v26 = _Block_copy(&aBlock);
    v27 = v25;

    v28 = v32;
    static DispatchQoS.unspecified.getter();
    v37 = _swiftEmptyArrayStorage;
    sub_100018014(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v29 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v26);
    (*(v36 + 8))(v29, v3);
    (*(v33 + 8))(v28, v35);

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100293318(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 56);
    aBlock[4] = sub_100295B08;
    aBlock[5] = Strong;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C79B8;
    v17 = Strong;
    v12 = _Block_copy(aBlock);
    v16 = v11;

    static DispatchQoS.unspecified.getter();
    v18 = _swiftEmptyArrayStorage;
    sub_100018014(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    v15 = v5;
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = v16;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v15);
  }

  return result;
}