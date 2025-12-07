unint64_t sub_1001324C0()
{
  result = qword_100346750;
  if (!qword_100346750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346750);
  }

  return result;
}

void sub_100132514(id *a1)
{
  v1 = [*a1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100132574()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038B220);
  sub_100003078(v0, qword_10038B220);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001325F4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100346758);
  v1 = sub_100003078(v0, qword_100346758);
  if (qword_100339070 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B220);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1001326BC(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for HomeKitProxyState();
  v4 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  sub_100035D04(&qword_1003468E8, &unk_10027DF40);
  swift_allocObject();
  v6 = sub_10006BD34(KeyPath, 0);

  *(v4 + 16) = v6;
  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v4 + 24) = v7;
  v2[3] = v4;
  v2[4] = 0;
  type metadata accessor for RPIdentitySourceState();
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v8 + 16) = v9;
  type metadata accessor for RPIdentityWrapper();
  sub_10013B49C(&qword_1003468F0, type metadata accessor for RPIdentityWrapper, &unk_100287884);
  v10 = swift_getKeyPath();
  sub_100035D04(&qword_1003468F8, &qword_10027DF80);
  swift_allocObject();
  v11 = sub_10006BF64(v10, 0);

  *(v8 + 24) = v11;
  v2[5] = v8;
  v2[2] = a1;
  return v2;
}

uint64_t sub_100132874()
{

  return swift_deallocClassInstance();
}

double sub_100132AC0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy);
  v4 = *(v3 + 24);
  *(v3 + 24) = a1;

  v5 = a1;

  sub_10005E5BC();
  v6 = *(v3 + 24);
  CurrentValueSubject.send(_:)();

  return result;
}

void *sub_100132B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = &v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_interruptionHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_invalidationHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_dispatchQueue;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v11 = qword_10038B5B8;
  *&v4[v10] = qword_10038B5B8;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_rpClientProxy] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_homekitProxy] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_idsProxy] = 0;
  v12 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_telephonyProxy;
  v13 = qword_100339180;
  v14 = v11;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_10038B4E8;
  *&v4[v12] = qword_10038B4E8;
  v16 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy;
  sub_100035D04(&qword_1003468E0, qword_10027DEF8);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *&v4[v16] = v17;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_sharingProxy] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_activationTask] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_discoveryTasks] = &_swiftEmptySetSingleton;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_tasks] = &_swiftEmptySetSingleton;
  v18 = qword_100339078;
  v19 = v15;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100003078(v20, qword_100346758);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Init", v23, 2u);
  }

  v24 = &v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_model];
  *v24 = a1;
  *(v24 + 1) = a2;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state] = a3;
  v33.receiver = v4;
  v33.super_class = type metadata accessor for NearbyAgent();

  v25 = objc_msgSendSuper2(&v33, "init");
  v26 = qword_100338E78;
  v27 = v25;
  if (v26 != -1)
  {
    v32 = v27;
    swift_once();
    v27 = v32;
  }

  v28 = *(*&v27[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state] + 16);
  v29 = v27;
  type metadata accessor for LockscreenControlsFeatureModel();
  v30 = swift_allocObject();
  *(v30 + 16) = v28;

  sub_10005A3E4(v30);

  return v29;
}

id sub_100132E90()
{
  v1 = v0;
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for NearbyAgent();
  return objc_msgSendSuper2(&v7, "dealloc");
}

double sub_100133114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v113 = a1;
  v5 = sub_100035D04(&qword_100346900, &qword_10027E138);
  v111 = *(v5 - 8);
  v112 = v5;
  __chkstk_darwin(v5);
  v110 = v92 - v6;
  v7 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v108 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v120 = v9;
  v121 = v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (v92 - v10);
  v12 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v12 - 8);
  v105 = v92 - v13;
  v101 = sub_100035D04(&qword_100346908, &qword_10027E140);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v15 = v92 - v14;
  v104 = sub_100035D04(&qword_100346910, &qword_10027E148);
  v103 = *(v104 - 1);
  __chkstk_darwin(v104);
  v102 = v92 - v16;
  v109 = sub_100035D04(&qword_100346918, &unk_10027E150);
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v119 = v92 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v106 = type metadata accessor for Logger();
  v118 = sub_100003078(v106, qword_100346758);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Activate", v24, 2u);
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v25 = qword_10038B5B8;
  *v21 = qword_10038B5B8;
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  v28 = *(v19 + 8);
  v27 = (v19 + 8);
  v28(v21, v18);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v98 = v15;
  v99 = a2;
  v117 = v11;
  type metadata accessor for Stopwatch();
  a2 = swift_allocObject();
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 24) = UpTicks()();
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  sub_100035D04(&qword_100339900, &unk_1002703D0);
  swift_allocObject();
  v29 = sub_10002AA3C(1, 0, 0, 0, 0, 0);
  type metadata accessor for BluetoothProxyModel();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  type metadata accessor for BluetoothProxyState();
  v31 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  sub_100035D04(&qword_100346920, &unk_10027E188);
  swift_allocObject();
  v33 = sub_10006D144(KeyPath, 0);

  v31[2] = v33;
  swift_allocObject();
  v31[3] = sub_10002AA3C(0, 0, 0, 0, 0, 0);
  swift_allocObject();
  v31[4] = sub_10002AA3C(0, 0, 0, 0, 0, 0);
  type metadata accessor for BluetoothProxy(0);
  swift_allocObject();
  v34 = sub_1001245FC(v30, v31);
  *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy] = v34;
  v114 = v34;

  v35 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state];
  v36 = *(v35 + 24);
  v37 = type metadata accessor for HomeKitProxy();
  v38 = objc_allocWithZone(v37);
  v39 = &v38[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise];
  *v39 = 0;
  *(v39 + 1) = 0;
  *&v38[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_dispatchQueue] = v26;
  *&v38[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager] = 0;
  *&v38[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_tasks] = &_swiftEmptySetSingleton;
  *&v38[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_state] = v36;
  v124.receiver = v38;
  v124.super_class = v37;
  v40 = v26;

  v41 = objc_msgSendSuper2(&v124, "init");
  v42 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_homekitProxy];
  *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_homekitProxy] = v41;
  v116 = v41;

  v43 = [objc_allocWithZone(type metadata accessor for IDSProxy()) init];
  v44 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_idsProxy];
  *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_idsProxy] = v43;
  v115 = v43;

  v45 = objc_allocWithZone(type metadata accessor for RangingProxy(0));
  v46 = v3;
  v47 = sub_1001A2B38(v46);
  v27 = v47;
  sub_100132AC0(v47);
  v48 = *&v46[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_model];
  v49 = objc_allocWithZone(type metadata accessor for RapportProxy());
  v3 = v46;

  v50 = sub_10013B4E4(v3, v48, v49);

  v51 = *(v35 + 32);
  *(v35 + 32) = v50;
  v15 = v50;

  type metadata accessor for RPClientProxy();
  swift_allocObject();

  v53 = sub_1001AD11C(v52);
  *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_rpClientProxy] = v53;
  v26 = v53;

  type metadata accessor for SharingProxy();
  swift_allocObject();

  v11 = sub_1000F6A1C(v54);
  *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_sharingProxy] = v11;

  if (qword_100338F98 != -1)
  {
LABEL_11:
    swift_once();
  }

  *(qword_10038B130 + 56) = &off_100305178;
  swift_unknownObjectWeakAssign();
  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_10027DE20;
  v95 = v11;
  *(v55 + 32) = sub_100124AA8();
  *(v55 + 40) = sub_1001113B8();
  *(v55 + 48) = sub_1001793A4();
  v97 = v15;
  *(v55 + 56) = sub_10018D6E0();
  v94 = v27;
  *(v55 + 64) = sub_1001A3EB8();
  swift_allocObject();
  v96 = v26;
  swift_weakInit();
  sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  swift_allocObject();
  *(v55 + 72) = Future.init(_:)();
  v56 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_telephonyProxy];
  v57 = sub_1001C4E90();
  v93 = v3;
  v58 = v57;

  *(v55 + 80) = v58;
  v123 = v55;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002764E0;
  *(inited + 32) = sub_1000F6B6C();
  sub_1000B3618(inited);
  v122 = v123;
  v92[1] = sub_100035D04(&qword_100345FE8, &unk_10027D030);
  sub_10000E244(&qword_100346928, &qword_100345FE8, &unk_10027D030, &protocol conformance descriptor for [A]);
  v60 = v98;
  Sequence.publisher.getter();

  v61 = v102;
  v62 = v101;
  Publishers.Sequence.collect()();
  (*(v100 + 8))(v60, v62);
  v63 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_dispatchQueue];
  v122 = v63;
  v64 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v65 = v105;
  (*(*(v64 - 8) + 56))(v105, 1, 1, v64);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  sub_10000E244(&qword_100346930, &qword_100346910, &qword_10027E148, &protocol conformance descriptor for Result<A, B>.Publisher);
  sub_1000513CC();
  v66 = v63;
  v67 = v104;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v65, &qword_10034C680, &qword_100270390);

  (*(v103 + 8))(v61, v67);
  v68 = v106;
  v69 = *(v106 - 8);
  v105 = *(v69 + 16);
  v70 = v117;
  (v105)(v117, v118, v106);
  v104 = *(v69 + 56);
  (v104)(v70, 0, 1, v68);
  v71 = v121;
  sub_1000EF05C(v70, v121);
  v72 = *(v108 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = a2;
  *(v73 + 24) = xmmword_10027DE30;
  sub_10007E4B8(v71, v73 + ((v72 + 40) & ~v72));
  sub_10000E244(&qword_100346938, &qword_100346918, &unk_10027E150, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  swift_retain_n();
  v92[2] = a2;
  v74 = v110;
  v75 = v109;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100346940, &qword_100346900, &qword_10027E138, &protocol conformance descriptor for Publishers.Map<A, B>);
  v76 = v112;
  v77 = Publisher.eraseToAnyPublisher()();

  (*(v111 + 8))(v74, v76);
  v78 = v117;
  sub_1000097E8(v117, &unk_10033D8B0, &qword_100275520);
  (*(v107 + 8))(v119, v75);
  v119 = 0x80000001002A1600;
  v79 = swift_allocObject();
  v80 = v93;
  *(v79 + 16) = v93;
  (v105)(v78, v118, v68);
  (v104)(v78, 0, 1, v68);
  v122 = v77;
  v81 = v78;
  v82 = v121;
  sub_1000EF05C(v78, v121);
  v83 = (v72 + 32) & ~v72;
  v84 = (v120 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = swift_allocObject();
  v86 = v99;
  *(v85 + 16) = v113;
  *(v85 + 24) = v86;
  sub_10007E4B8(v82, v85 + v83);
  v87 = (v85 + v84);
  *v87 = 0xD000000000000015;
  v87[1] = v119;
  v88 = (v85 + ((v84 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v88 = sub_10013B7FC;
  v88[1] = v79;
  v89 = v80;

  sub_100035D04(&qword_100346948, &qword_10027E198);
  sub_10000E244(&qword_100346950, &qword_100346948, &qword_10027E198, &protocol conformance descriptor for AnyPublisher<A, B>);
  v90 = Publisher.sink(receiveCompletion:receiveValue:)();

  sub_1000097E8(v81, &unk_10033D8B0, &qword_100275520);

  *&v89[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_activationTask] = v90;

  return result;
}

void sub_100134210()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100134454();
  static OSSignpostID.exclusive.getter();
  static os_signpost_type_t.end.getter();
  if (qword_100338F28 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v2 + 8))(v4, v1);
  v5 = *(*(v0 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
  if (v5 && *(*&v5[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24) != 2)
  {
    v6 = v5;
    if (sub_1000036FC())
    {
      sub_10000B620();
    }
  }
}

void sub_100134454()
{
  v1 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v1 - 8);
  v3 = v39 - v2;
  v4 = sub_100035D04(&qword_100346958, &qword_10027E1A0);
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v47 = v39 - v5;
  v6 = sub_100035D04(&qword_100346960, &qword_10027E1A8);
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v48 = v39 - v7;
  v8 = sub_100035D04(&qword_100346968, &qword_10027E1B0);
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v53 = v39 - v9;
  v10 = sub_100035D04(&qword_100346970, &qword_10027E1B8);
  v57 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = v39 - v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v44 = *(v12 - 8);
  v45 = v12;
  __chkstk_darwin(v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100035D04(&qword_100346978, &qword_10027E1C0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v39 - v17;
  v19 = sub_100035D04(&qword_100346980, &qword_10027E1C8);
  v46 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v39 - v20;
  sub_10013518C();
  v22 = *(v0 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy);
  if (v22)
  {
    v40 = v16;
    v41 = v10;
    v42 = v3;
    v43 = v0;
    v58 = *(*(*(v22 + 24) + 16) + 32);

    sub_100035D04(&qword_10033C370, &qword_10027E1D0);
    sub_10000E244(&qword_100346988, &qword_10033C370, &qword_10027E1D0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v58 = Publisher.eraseToAnyPublisher()();
    v59 = *(*(*(v22 + 24) + 16) + 48);
    v59 = Publisher.eraseToAnyPublisher()();
    sub_100035D04(&qword_100346990, &qword_10027E1D8);
    sub_10000E244(&qword_100346998, &qword_100346990, &qword_10027E1D8, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publishers.Merge.init(_:_:)();
    OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v23 = qword_10038B5B8;
    v58 = qword_10038B5B8;
    v39[2] = sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    sub_10000E244(&qword_1003469A0, &qword_100346978, &qword_10027E1C0, &protocol conformance descriptor for Publishers.Merge<A, B>);
    v39[1] = sub_1000513CC();
    v39[0] = v23;
    Publisher.throttle<A>(for:scheduler:latest:)();
    (*(v44 + 8))(v14, v45);
    (*(v40 + 8))(v18, v15);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000E244(&qword_1003469A8, &qword_100346980, &qword_10027E1C8, &protocol conformance descriptor for Publishers.Throttle<A, B>);
    Publisher<>.sink(receiveValue:)();

    (*(v46 + 8))(v21, v19);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();
    sub_100035D04(&qword_100345FF8, &qword_10027E1E0);
    v24 = v47;
    Published.projectedValue.getter();
    swift_endAccess();
    sub_10000E244(&qword_1003469B0, &qword_100346958, &qword_10027E1A0, &protocol conformance descriptor for Published<A>.Publisher);
    v25 = v48;
    v26 = v50;
    Publisher.compactMap<A>(_:)();
    (*(v49 + 8))(v24, v26);
    sub_10000E244(&qword_1003469B8, &qword_100346960, &qword_10027E1A8, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    sub_100101370();
    v27 = v52;
    v28 = v53;
    Publisher<>.removeDuplicates()();
    (*(v51 + 8))(v25, v27);
    v29 = v39[0];
    v58 = v39[0];
    v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v31 = v42;
    (*(*(v30 - 8) + 56))(v42, 1, 1, v30);
    sub_10000E244(&qword_1003469C0, &qword_100346968, &qword_10027E1B0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v33 = v55;
    v32 = v56;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v31, &qword_10034C680, &qword_100270390);

    (*(v54 + 8))(v28, v33);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000E244(&qword_1003469C8, &qword_100346970, &qword_10027E1B8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v34 = v41;
    Publisher<>.sink(receiveValue:)();

    (v57[1].isa)(v32, v34);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    if (qword_100339078 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100003078(v35, qword_100346758);
    v57 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v57, v36, "### No bluetoothProxy?", v37, 2u);
    }

    v38 = v57;
  }
}

uint64_t sub_100134F64()
{
  v1 = v0;
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy))
  {

    sub_100124DD0();
  }

  v6 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 32);
  if (v6)
  {
    v7 = v6;
    sub_10018EFC8();
  }

  v8 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
  if (v8)
  {
    v9 = v8;
    sub_1001A5108();
  }

  sub_1001AC430();

  v10 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_discoveryTasks;
  swift_beginAccess();
  *(v1 + v10) = &_swiftEmptySetSingleton;

  *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_tasks) = &_swiftEmptySetSingleton;

  v12 = v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_invalidationHandler;
  v13 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_invalidationHandler);
  if (v13)
  {
    v14 = *(v12 + 8);

    v13(v15);
    return sub_10002689C(v13, v14);
  }

  return result;
}

uint64_t sub_10013518C()
{
  v1 = v0;
  v114 = sub_100035D04(&qword_1003469D0, &qword_10027E1E8);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = v91 - v2;
  v117 = sub_100035D04(&qword_1003469D8, &qword_10027E1F0);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = v91 - v3;
  v110 = sub_100035D04(&qword_1003469E0, &qword_10027E1F8);
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v106 = v91 - v4;
  v111 = sub_100035D04(&qword_1003469E8, &qword_10027E200);
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v107 = v91 - v5;
  v105 = sub_100035D04(&qword_1003469F0, &qword_10027E208);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = v91 - v6;
  v7 = sub_100035D04(&qword_1003469F8, &qword_10027E210);
  v119 = *(v7 - 8);
  v120 = v7;
  __chkstk_darwin(v7);
  v118 = v91 - v8;
  v9 = sub_100035D04(&qword_100346A00, &qword_10027E218);
  v123 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v101 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v102 = v91 - v12;
  v13 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v13 - 8);
  v125 = v91 - v14;
  v121 = sub_100035D04(&qword_100346A08, &unk_10027E220);
  v15 = __chkstk_darwin(v121);
  v100 = v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v91 - v18;
  v126 = *(v0 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state);
  v20 = *(v126 + 32);
  v124 = v9;
  if (v20)
  {
    v122 = v17;
    v21 = *&v20[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject + 8];
    v128 = *&v20[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject];
    v99 = v20;
    sub_100035D04(&qword_100346A10, &qword_100283B20);
    v22 = sub_10000E244(&qword_100346A18, &qword_100346A10, &qword_100283B20, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v128 = Publisher.share()();
    sub_100035D04(&qword_100346A20, &qword_10027E230);
    v23 = sub_10000E244(&qword_100346A28, &qword_100346A20, &qword_10027E230, &protocol conformance descriptor for Publishers.Share<A>);
    v24 = Publisher.eraseToAnyPublisher()();

    v128 = v21;
    v98 = v22;
    v128 = Publisher.share()();
    v95 = v23;
    Publisher.eraseToAnyPublisher()();

    v128 = v24;
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v25 = qword_10038B5B8;
    v129 = qword_10038B5B8;
    v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v27 = *(v26 - 8);
    v28 = v125;
    v99 = *(v27 + 56);
    v97 = v27 + 56;
    (v99)(v125, 1, 1, v26);
    v29 = v25;
    sub_100035D04(&qword_100346A30, &qword_10027E238);
    v30 = sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    v31 = sub_10000E244(&qword_100346A38, &qword_100346A30, &qword_10027E238, &protocol conformance descriptor for AnyPublisher<A, B>);
    v32 = sub_1000513CC();
    v96 = v30;
    v94 = v31;
    v93 = v32;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v28, &qword_10034C680, &qword_100270390);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = sub_10000E244(&qword_100346A40, &qword_100346A08, &unk_10027E220, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v34 = v121;
    Publisher<>.sink(receiveValue:)();

    v35 = v122 + 8;
    v36 = *(v122 + 8);
    v36(v19, v34);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v37 = *(v126 + 32);
    v9 = v124;
    if (v37)
    {
      v91[0] = v36;
      v91[1] = v33;
      v92 = v26;
      v122 = v35;
      v38 = *&v37[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject + 8];
      v128 = *&v37[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject];
      v39 = v37;
      sub_100035D04(&qword_100346A10, &qword_100283B20);
      v128 = Publisher.share()();
      sub_100035D04(&qword_100346A20, &qword_10027E230);
      Publisher.eraseToAnyPublisher()();

      v128 = v38;
      v128 = Publisher.share()();
      v40 = Publisher.eraseToAnyPublisher()();

      v128 = v40;
      if (qword_1003391E8 != -1)
      {
        swift_once();
      }

      v41 = qword_10038B5B8;
      v129 = qword_10038B5B8;
      v42 = v125;
      (v99)(v125, 1, 1, v92);
      v43 = v41;
      sub_100035D04(&qword_100346A30, &qword_10027E238);
      v44 = v100;
      Publisher.receive<A>(on:options:)();
      sub_1000097E8(v42, &qword_10034C680, &qword_100270390);

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = v121;
      Publisher<>.sink(receiveValue:)();

      (v91[0])(v44, v45);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v9 = v124;
    }
  }

  v46 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy;
  v47 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy);
  if (v47)
  {
    v128 = *(*(*(v47 + 24) + 16) + 32);
    sub_100035D04(&qword_10033C370, &qword_10027E1D0);
    sub_10000E244(&qword_100346988, &qword_10033C370, &qword_10027E1D0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v128 = Publisher.eraseToAnyPublisher()();
    sub_100035D04(&qword_100346990, &qword_10027E1D8);
    type metadata accessor for Identity(0);
    sub_10000E244(&qword_100346998, &qword_100346990, &qword_10027E1D8, &protocol conformance descriptor for AnyPublisher<A, B>);
    v48 = v102;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_100346A48, &qword_100346A00, &qword_10027E218, &protocol conformance descriptor for Publishers.Map<A, B>);
    v49 = Publisher.eraseToAnyPublisher()();
    (*(v123 + 8))(v48, v9);
  }

  else
  {
    v49 = 0;
  }

  v127[0] = v49;
  v128 = *(*(*(v126 + 24) + 16) + 32);
  sub_100035D04(&qword_1003452D0, &qword_10027C230);
  sub_10000E244(&qword_1003452D8, &qword_1003452D0, &qword_10027C230, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v128 = Publisher.eraseToAnyPublisher()();
  sub_100035D04(&qword_1003452E0, &qword_10027C238);
  v50 = type metadata accessor for Identity(0);
  sub_10000E244(&qword_1003452E8, &qword_1003452E0, &qword_10027C238, &protocol conformance descriptor for AnyPublisher<A, B>);
  v51 = v118;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100346A50, &qword_1003469F8, &qword_10027E210, &protocol conformance descriptor for Publishers.Map<A, B>);
  v52 = v120;
  v53 = Publisher.eraseToAnyPublisher()();
  (*(v119 + 8))(v51, v52);
  v127[1] = v53;
  v54 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_idsProxy);
  if (v54)
  {
    v128 = *(*(v54 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices) + 32);
    sub_100035D04(&unk_100348F50, &qword_100272B30);
    sub_10000E244(&qword_100346A58, &unk_100348F50, &qword_100272B30, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v128 = Publisher.eraseToAnyPublisher()();
    sub_100035D04(&unk_100348F60, &unk_1002833A0);
    sub_10000E244(&qword_100346A60, &unk_100348F60, &unk_1002833A0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v55 = v103;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_100346A68, &qword_1003469F0, &qword_10027E208, &protocol conformance descriptor for Publishers.Map<A, B>);
    v56 = v105;
    v57 = Publisher.eraseToAnyPublisher()();
    (*(v104 + 8))(v55, v56);
  }

  else
  {
    v57 = 0;
  }

  v127[2] = v57;
  v58 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_rpClientProxy);
  if (v58)
  {
    v128 = *(*(*(v58 + 16) + 24) + 32);
    sub_100035D04(&qword_10033C228, &qword_10027E240);
    sub_10000E244(&qword_100346A70, &qword_10033C228, &qword_10027E240, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v128 = Publisher.eraseToAnyPublisher()();
    swift_getKeyPath();
    sub_100035D04(&qword_100346A78, &qword_10027E268);
    sub_10000E244(&qword_100346A80, &qword_100346A78, &qword_10027E268, &protocol conformance descriptor for AnyPublisher<A, B>);
    v59 = v106;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_100346A88, &qword_1003469E0, &qword_10027E1F8, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
    v60 = v107;
    v61 = v110;
    Publisher.map<A>(_:)();
    (*(v108 + 8))(v59, v61);
    sub_10000E244(&qword_100346A90, &qword_1003469E8, &qword_10027E200, &protocol conformance descriptor for Publishers.Map<A, B>);
    v62 = v111;
    v63 = Publisher.eraseToAnyPublisher()();
    (*(v109 + 8))(v60, v62);
  }

  else
  {
    v63 = 0;
  }

  v64 = 0;
  v127[3] = v63;
  v65 = _swiftEmptyArrayStorage;
  v128 = _swiftEmptyArrayStorage;
LABEL_18:
  if (v64 <= 4)
  {
    v66 = 4;
  }

  else
  {
    v66 = v64;
  }

  while (v64 != 4)
  {
    if (v66 == v64)
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v127[v64++])
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v128[2] >= v128[3] >> 1)
      {
        v9 = v128[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v65 = v128;
      goto LABEL_18;
    }
  }

  v122 = v50;
  v9 = v46;
  sub_100035D04(&qword_100346A98, &qword_10027E270);
  swift_arrayDestroy();
  v128 = v65;
  sub_100035D04(&qword_100346AA0, &qword_10027E278);
  sub_100035D04(&qword_100346AA8, &unk_10027E280);
  sub_10000E244(&qword_100346AB0, &qword_100346AA0, &qword_10027E278, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000E244(&qword_100346AB8, &qword_100346AA8, &unk_10027E280, &protocol conformance descriptor for [A]);
  v46 = v112;
  Publishers.MergeMany.init<A>(_:)();
  if (qword_1003391E8 == -1)
  {
    goto LABEL_28;
  }

LABEL_50:
  swift_once();
LABEL_28:
  v68 = qword_10038B5B8;
  v128 = qword_10038B5B8;
  v69 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v70 = v125;
  (*(*(v69 - 8) + 56))(v125, 1, 1, v69);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  sub_10000E244(&qword_100346AC0, &qword_1003469D0, &qword_10027E1E8, &protocol conformance descriptor for Publishers.MergeMany<A>);
  sub_1000513CC();
  v71 = v68;
  v72 = v115;
  v73 = v114;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v70, &qword_10034C680, &qword_100270390);

  (*(v113 + 8))(v46, v73);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000E244(&qword_100346AC8, &qword_1003469D8, &qword_10027E1F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v74 = v117;
  Publisher<>.sink(receiveValue:)();

  (*(v116 + 8))(v72, v74);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v75 = *(v1 + v9);
  if (v75)
  {
    v128 = *(*(*(v75 + 24) + 16) + 48);
    sub_100035D04(&qword_10033C370, &qword_10027E1D0);
    sub_10000E244(&qword_100346988, &qword_10033C370, &qword_10027E1D0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v128 = Publisher.eraseToAnyPublisher()();
    sub_100035D04(&qword_100346990, &qword_10027E1D8);
    sub_10000E244(&qword_100346998, &qword_100346990, &qword_10027E1D8, &protocol conformance descriptor for AnyPublisher<A, B>);
    v76 = v101;
    Publisher.map<A>(_:)();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000E244(&qword_100346A48, &qword_100346A00, &qword_10027E218, &protocol conformance descriptor for Publishers.Map<A, B>);
    v71 = v124;
    Publisher<>.sink(receiveValue:)();

    (*(v123 + 8))(v76, v71);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v77 = *(v126 + 32);
  if (v77 && (v78 = *&v77[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient]) != 0)
  {
    v79 = v77;
    v80 = [v78 activeDevices];
    sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
    v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v81 = _swiftEmptyArrayStorage;
  }

  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  sub_100003078(v82, qword_100346758);

  v83 = Logger.logObject.getter();
  LOBYTE(v84) = static os_log_type_t.default.getter();
  v85 = v81 >> 62;
  if (!os_log_type_enabled(v83, v84))
  {

    goto LABEL_41;
  }

  v71 = swift_slowAlloc();
  *v71 = 134217984;
  if (v85)
  {
    goto LABEL_54;
  }

  for (i = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v71 + 1) = i;

    _os_log_impl(&_mh_execute_header, v83, v84, "After activation FOUND %ld rpCLDevices", v71, 0xCu);

LABEL_41:
    if (v85)
    {
      v84 = _CocoaArrayWrapper.endIndex.getter();
      if (!v84)
      {
      }
    }

    else
    {
      v84 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v84)
      {
      }
    }

    if (v84 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_54:
    ;
  }

  for (j = 0; j != v84; ++j)
  {
    if ((v81 & 0xC000000000000001) != 0)
    {
      v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v88 = *(v81 + 8 * j + 32);
    }

    v89 = v88;
    sub_100136BB4(v88);
  }
}

void sub_100136B30(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      sub_1001A4DEC(v2);
    }
  }
}

double sub_100136BB4(void *a1)
{
  v2 = v1;
  if (([a1 statusFlags] & 4) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = ~[a1 statusFlags] & 2;
  }

  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100346758);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v39 = v2;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_100017494(0xD000000000000013, 0x80000001002A1620, v40);
    *(v9 + 12) = 2080;
    if (v4 == 2)
    {
      v11 = 0xE300000000000000;
      v12 = 7104878;
    }

    else
    {
      v12 = String.init<A>(describing:)();
      v11 = v15;
    }

    v16 = sub_100017494(v12, v11, v40);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2112;
    *(v9 + 24) = v6;
    *v10 = v6;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: type=%s, rpCLDevice=%@", v9, 0x20u);
    sub_1000097E8(v10, &qword_100339940, &unk_100272C50);

    swift_arrayDestroy();

    v2 = v39;
    if (v4 == 2)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v4 == 2)
    {
LABEL_14:
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "### rpCLDevice found with neither statusFlag: .infraWiFi, .BLE", v20, 2u);
      }

      return result;
    }
  }

  type metadata accessor for Identity(0);
  swift_allocObject();
  v13 = v6;
  if (v4)
  {
    v14 = sub_1000BD44C(v6);
  }

  else
  {
    v14 = sub_1000BD430(v6);
  }

  v22 = v14;
  v23 = (*(*(v2 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16) + qword_100346AF8);

  os_unfair_lock_lock(v23);

  sub_1001A9BF0(v24, sub_10013B978);
  v26 = v25;

  os_unfair_lock_unlock(v23);

  if (v26)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v40[0])
    {
    }

    else
    {
      v28 = *(v2 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy);
      if (v28)
      {
        v29 = (*(*(v28 + 24) + 16) + qword_100346AF8);

        os_unfair_lock_lock(v29);

        sub_10013AC78(v30, v22, sub_1001BD450);
        v32 = v31;

        os_unfair_lock_unlock(v29);

        if (v32)
        {
          v33 = v32;
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            *(v36 + 4) = v33;
            *v37 = v32;
            v38 = v33;
            _os_log_impl(&_mh_execute_header, v34, v35, "Attaching CBDevice: %@", v36, 0xCu);
            sub_1000097E8(v37, &qword_100339940, &unk_100272C50);
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v40[0] = v32;

          static Published.subscript.setter();
        }
      }
    }

    sub_100137D78(v26, v22);
  }

  else
  {
    v27 = sub_100138400(v13, v4 & 1);
    sub_100139364(v27);
  }

  return result;
}

void sub_1001371CC(void *a1)
{
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100346758);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32[0] = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD000000000000012, 0x80000001002A16A0, v32);
    *(v7 + 12) = 2112;
    *(v7 + 14) = v4;
    *v8 = v4;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: rpCLDevice=%@", v7, 0x16u);
    sub_1000097E8(v8, &qword_100339940, &unk_100272C50);

    sub_10000903C(v9);
  }

  __chkstk_darwin(v11);
  v12 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state);
  v13 = (*(v12 + 16) + qword_100346AF8);

  os_unfair_lock_lock(v13);

  sub_1001A9BF0(v14, sub_10013B9A0);
  v16 = v15;

  os_unfair_lock_unlock(v13);

  if (v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32[0])
    {

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Not marking as lost - rapportBTDevice still present", v20, 2u);
      }

LABEL_14:

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      v32[0] = 0;
      static Published.subscript.setter();
LABEL_16:

      return;
    }

    goto LABEL_15;
  }

  __chkstk_darwin(v17);
  v21 = (*(v12 + 16) + qword_100346AF8);

  os_unfair_lock_lock(v21);

  sub_1001A9BF0(v22, sub_10013B9D0);
  v16 = v23;

  os_unfair_lock_unlock(v21);

  if (v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32[0])
    {

      v18 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v18, v24, "Not marking as lost - wifiDevice still present", v25, 2u);
      }

      goto LABEL_14;
    }

LABEL_15:
    sub_100139AD0(v16);
    goto LABEL_16;
  }

  v26 = v4;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "No existing HandoffDevice for %@", v29, 0xCu);
    sub_1000097E8(v30, &qword_100339940, &unk_100272C50);
  }
}

void sub_1001378A4(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for Identity(0);
  swift_allocObject();
  v4 = v3;
  v5 = sub_1000BFEE8(v3);

  *a2 = v5;
}

void sub_100137908(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for Identity(0);
  swift_allocObject();
  v4 = v3;
  v5 = sub_1000C02A8(v4);

  *a2 = v5;
}

void sub_100137964(uint64_t a1)
{
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346758);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD00000000000001DLL, 0x80000001002A1660, &v24);
    *(v5 + 12) = 2080;
    v6 = sub_10000A474();
    v8 = sub_100017494(v6, v7, &v24);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: identity=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v24;
  if (v24)
  {
    __chkstk_darwin(v9);
    v11 = (*(*(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16) + qword_100346AF8);

    os_unfair_lock_lock(v11);

    sub_1001A9BF0(v12, sub_10013B998);
    v14 = v13;

    os_unfair_lock_unlock(v11);

    if (v14)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      v24 = 0;
      static Published.subscript.setter();

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24 = v18;
        *v17 = 136315138;

        v20 = sub_1001EE1E4(v19);
        v22 = v21;

        v23 = sub_100017494(v20, v22, &v24);

        *(v17 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v15, v16, "UPDATED %s", v17, 0xCu);
        sub_10000903C(v18);
      }
    }
  }
}

double sub_100137D78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100015D5C(a2);

  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100346758);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = sub_1001EE1E4(v10);
    v13 = sub_100017494(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "UPDATED %s", v9, 0xCu);
    sub_10000903C(v10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10000DF0C(v14, v15);
  v17 = v16;

  if (v17)
  {

    if (*(v3 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_sharingProxy))
    {

      sub_100016F18(a1);
    }
  }

  return result;
}

char **sub_100138400(void *a1, char a2)
{
  v3 = v2;
  type metadata accessor for Identity(0);
  swift_allocObject();
  v6 = a1;
  v114 = v2;
  if ((a2 & 1) == 0)
  {
    v7 = sub_1000BD430(a1);
    v13 = *(*&v2[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state] + 32);
    v112 = *&v2[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state];
    if (v13)
    {
      v14 = *&v13[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient];

      if (v14)
      {
        v15 = v13;
        v16 = [v14 activeDevices];
        sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v12 = _swiftEmptyArrayStorage;
      }

      v116 = _swiftEmptyArrayStorage;
      if (v12 >> 62)
      {
LABEL_59:
        v22 = _CocoaArrayWrapper.endIndex.getter();
        if (v22)
        {
LABEL_27:
          v108 = v7;
          v23 = 0;
          v7 = &off_100333000;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v23 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_41;
              }

              v24 = *(v12 + 8 * v23 + 32);
            }

            v3 = v24;
            v25 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              goto LABEL_39;
            }

            if (([v24 statusFlags] & 4) != 0)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            ++v23;
            if (v25 == v22)
            {
              v3 = v114;
              v21 = v116;
              v7 = v108;
              goto LABEL_61;
            }
          }
        }
      }

      else
      {
        v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      v21 = _swiftEmptyArrayStorage;
LABEL_61:

      if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
      {
        v31 = _CocoaArrayWrapper.endIndex.getter();
        if (v31)
        {
LABEL_64:
          v32 = 0;
          while (1)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v32 >= *(v21 + 16))
              {
                goto LABEL_75;
              }

              v33 = *(v21 + 8 * v32 + 32);
            }

            v29 = v33;
            v35 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (sub_100007B90(v7, v34))
            {
              goto LABEL_73;
            }

            ++v32;
            if (v35 == v31)
            {
              goto LABEL_80;
            }
          }

          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }
      }

      else
      {
        v31 = *(v21 + 16);
        if (v31)
        {
          goto LABEL_64;
        }
      }

LABEL_80:
    }

    else
    {
    }

    v29 = 0;
    goto LABEL_82;
  }

  v7 = sub_1000BD44C(a1);
  v8 = *(*&v2[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state] + 32);
  v112 = *&v2[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state];
  if (!v8)
  {

LABEL_78:
    v29 = 0;
    goto LABEL_82;
  }

  v9 = *&v8[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient];

  if (v9)
  {
    v10 = v8;
    v11 = [v9 activeDevices];
    sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v116 = _swiftEmptyArrayStorage;
  if (v12 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v107 = v7;
    v18 = 0;
    v7 = &off_100333000;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v19 = *(v12 + 8 * v18 + 32);
      }

      v3 = v19;
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (([v19 statusFlags] & 2) != 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v18;
      if (v20 == i)
      {
        v3 = v114;
        v21 = v116;
        v7 = v107;
        goto LABEL_44;
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
    ;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_44:

  if ((v21 & 0x8000000000000000) == 0 && (v21 & 0x4000000000000000) == 0)
  {
    v12 = *(v21 + 16);
    if (v12)
    {
      goto LABEL_47;
    }

    goto LABEL_77;
  }

LABEL_76:
  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
LABEL_77:

    goto LABEL_78;
  }

LABEL_47:
  v26 = 0;
  while (1)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v26 >= *(v21 + 16))
      {
        goto LABEL_58;
      }

      v27 = *(v21 + 8 * v26 + 32);
    }

    v29 = v27;
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (sub_100007B90(v7, v28))
    {
      break;
    }

    ++v26;
    if (v30 == v12)
    {
      goto LABEL_77;
    }
  }

LABEL_73:

LABEL_82:
  swift_getKeyPath();
  swift_getKeyPath();
  v116 = v29;
  static Published.subscript.setter();
  v36 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy];
  if (v36)
  {
    v37 = (*(*(v36 + 24) + 16) + qword_100346AF8);

    os_unfair_lock_lock(v37);

    sub_10013AC78(v38, v7, sub_1001BD450);
    v40 = v39;

    os_unfair_lock_unlock(v37);
  }

  else
  {
    v40 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v116 = v40;

  static Published.subscript.setter();
  v41 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_idsProxy;
  v42 = *&v114[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_idsProxy];
  if (v42)
  {
    v43 = (*(v42 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices) + qword_100346AF8);

    os_unfair_lock_lock(v43);

    sub_10013AC78(v44, v7, sub_1001BC78C);
    v46 = v45;

    os_unfair_lock_unlock(v43);
  }

  else
  {
    v46 = 0;
  }

  v47 = *(v7 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  *(v7 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = v46;

  v48 = (*(*(v112 + 24) + 16) + qword_100346AF8);

  os_unfair_lock_lock(v48);

  sub_10013AC78(v49, v7, sub_1001BCC9C);
  v51 = v50;

  os_unfair_lock_unlock(v48);

  swift_getKeyPath();
  swift_getKeyPath();
  v116 = v51;

  v109 = v7;
  v52 = static Published.subscript.setter();
  v53 = *&v114[v41];
  if (v53)
  {
    v54 = *(v53 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices);
    __chkstk_darwin(v52);
    sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    type metadata accessor for UUID();
    sub_10013B49C(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    swift_getKeyPath();
    v55 = v54 + qword_100346AF8;

    os_unfair_lock_lock(v55);
    v116 = *(v55 + 8);

    swift_getAtKeyPath();

    os_unfair_lock_unlock(v55);

    v56 = *(v118 + 16);
    if (v56)
    {
      v57 = sub_100009194(*(v118 + 16), 0);
      v58 = sub_1001295D4();
      result = sub_100004F98(v116);
      if (v58 != v56)
      {
        __break(1u);
        goto LABEL_181;
      }
    }

    else
    {

      v57 = _swiftEmptyArrayStorage;
    }

    v116 = _swiftEmptyArrayStorage;
    if (v57 < 0 || (v57 & 0x4000000000000000) != 0)
    {
      goto LABEL_107;
    }

    for (j = *(v57 + 16); j; j = _CocoaArrayWrapper.endIndex.getter())
    {
      v62 = 0;
      while (1)
      {
        if ((v57 & 0xC000000000000001) != 0)
        {
          v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v62 >= *(v57 + 16))
          {
            goto LABEL_106;
          }

          v63 = *(v57 + 8 * v62 + 32);
        }

        v64 = v63;
        v65 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        v66 = sub_1000BBD2C();

        sub_1000B3708(v66);
        ++v62;
        if (v65 == j)
        {
          v67 = v116;
          goto LABEL_109;
        }
      }

      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      ;
    }

    v67 = _swiftEmptyArrayStorage;
LABEL_109:

    v60 = sub_100008F34(v67);
  }

  else
  {
    v60 = &_swiftEmptySetSingleton;
  }

  v68 = *&v114[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_rpClientProxy];
  if (!v68)
  {

    v74 = 0;
LABEL_172:
    *(v7 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = v74;

    return v7;
  }

  v69 = *(*(v68 + 16) + 24);
  __chkstk_darwin(v52);
  type metadata accessor for RPIdentityWrapper();
  swift_getKeyPath();
  v70 = v69 + qword_100346AF8;

  os_unfair_lock_lock(v70);
  v116 = *(v70 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v70);

  v71 = *(v118 + 16);
  if (v71)
  {
    v72 = sub_100009194(*(v118 + 16), 0);
    v73 = sub_100009A04(&v116, (v72 + 32), v71, v118);
    result = sub_100004F98(v116);
    if (v73 == v71)
    {

      if (v72 < 0)
      {
        goto LABEL_126;
      }

      goto LABEL_117;
    }

LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v72 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_126;
  }

LABEL_117:
  if ((v72 & 0x4000000000000000) == 0)
  {
    v75 = *(v72 + 16);
    if (!v75)
    {
LABEL_127:

      v79 = _swiftEmptyArrayStorage;
      goto LABEL_128;
    }

    goto LABEL_119;
  }

LABEL_126:
  v75 = _CocoaArrayWrapper.endIndex.getter();
  if (!v75)
  {
    goto LABEL_127;
  }

LABEL_119:
  v116 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v75 & 0x8000000000000000) == 0)
  {
    v76 = 0;
    do
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v77 = *(v72 + 8 * v76 + 32);
      }

      ++v76;
      swift_beginAccess();
      v78 = *(v77 + 32);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v75 != v76);

    v79 = v116;
LABEL_128:
    v117 = _swiftEmptyArrayStorage;
    if (v79 >> 62)
    {
      goto LABEL_177;
    }

    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_130:
    v74 = _swiftEmptyArrayStorage;
    if (v80)
    {
      v81 = 0;
      v82 = v79 & 0xC000000000000001;
      v83 = v79 & 0xFFFFFFFFFFFFFF8;
      v84 = v60;
      v60 = (v79 + 32);
      v113 = v80;
      v115 = v84;
      v85 = &off_100333000;
      v7 = v80;
      v110 = v84 + 7;
      v111 = v79 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v82)
        {
          v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v81 >= *(v83 + 16))
          {
            goto LABEL_174;
          }

          v79 = v60[v81];
        }

        v86 = v79;
        v87 = __OFADD__(v81, 1);
        v81 = (v81 + 1);
        if (v87)
        {
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          v106 = v79;
          v80 = _CocoaArrayWrapper.endIndex.getter();
          v79 = v106;
          goto LABEL_130;
        }

        if ([v79 v85[399]] == 2)
        {
          v88 = v7;
          v89 = [v86 idsDeviceID];
          if (v89)
          {
            v90 = v89;
            v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v93 = v92;
          }

          else
          {
            v91 = 0;
            v93 = 0xE000000000000000;
          }

          if (!v115[2])
          {

            v85 = &off_100333000;
            v7 = v88;
            goto LABEL_134;
          }

          v94 = v82;
          Hasher.init(_seed:)();
          String.hash(into:)();
          v95 = Hasher._finalize()();
          v96 = -1 << *(v115 + 32);
          v97 = v95 & ~v96;
          v85 = &off_100333000;
          if (((*(v110 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
          {
LABEL_152:

            v82 = v94;
            v83 = v111;
            v7 = v113;
            goto LABEL_134;
          }

          v98 = ~v96;
          while (1)
          {
            v99 = v115[6] + 16 * v97;
            v100 = *v99 == v91 && v99[1] == v93;
            if (v100 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v97 = (v97 + 1) & v98;
            if (((*(v110 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
            {
              goto LABEL_152;
            }
          }

          v82 = v94;
          v83 = v111;
          v7 = v113;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v79 = specialized ContiguousArray._endMutation()();
LABEL_134:
        if (v81 == v7)
        {
          v101 = v117;
          v7 = v109;
          v74 = _swiftEmptyArrayStorage;
          goto LABEL_157;
        }
      }
    }

    v101 = _swiftEmptyArrayStorage;
LABEL_157:

    v116 = _swiftEmptyArrayStorage;
    if ((v101 & 0x8000000000000000) != 0 || (v101 & 0x4000000000000000) != 0)
    {
      v79 = _CocoaArrayWrapper.endIndex.getter();
      v60 = v79;
      if (v79)
      {
LABEL_160:
        v102 = 0;
        while (1)
        {
          if ((v101 & 0xC000000000000001) != 0)
          {
            v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v102 >= *(v101 + 16))
            {
              goto LABEL_176;
            }

            v79 = *(v101 + 8 * v102 + 32);
          }

          v104 = v79;
          v105 = (v102 + 1);
          if (__OFADD__(v102, 1))
          {
            goto LABEL_175;
          }

          if (sub_1001BC2D0(v7, v103))
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v79 = specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v102;
          if (v105 == v60)
          {
            v74 = v116;
            break;
          }
        }
      }
    }

    else
    {
      v60 = *(v101 + 16);
      if (v60)
      {
        goto LABEL_160;
      }
    }

    goto LABEL_172;
  }

LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_100139364(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_100003078(v7, qword_100346758);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0xD00000000000001ALL, 0x80000001002A15A0, v53);
    *(v11 + 12) = 2080;
    v12 = sub_10000A474();
    v14 = sub_100017494(v12, v13, v53);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *&v1[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state];
  v16 = (*(v15 + 16) + qword_100346AF8);

  os_unfair_lock_lock(v16);

  sub_1001A9BF0(v17, sub_10013BA78);
  v19 = v18;

  os_unfair_lock_unlock(v16);

  if (v19)
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v51 = v15;
      v23 = v22;
      v53[0] = swift_slowAlloc();
      *v23 = 136315394;
      v24 = sub_10000A474();
      v26 = sub_100017494(v24, v25, v53);
      v50 = v8;
      v27 = v6;
      v28 = v26;

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;

      v30 = sub_1001EE1E4(v29);
      v32 = v31;

      v33 = sub_100017494(v30, v32, v53);
      v6 = v27;

      *(v23 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v20, v21, "### Device found in cache, replacing...\n  Identity: %s\n  HandoffDevice:%s", v23, 0x16u);
      swift_arrayDestroy();

      v15 = v51;
    }

    sub_100139AD0(v19);
  }

  v34 = *&v2[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_model + 8];
  v53[0] = a1;
  v53[1] = v2;
  v53[2] = &off_10030C530;
  v53[3] = v34;
  v54 = 0;
  type metadata accessor for HandoffDevice(0);
  swift_allocObject();

  v35 = v2;
  v36 = sub_10007639C(v53);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v51 = v15;
    v40 = v39;
    v41 = swift_slowAlloc();
    v50 = v6;
    v42 = v41;
    v52[0] = v41;
    *v40 = 136315138;

    v44 = sub_1001EE1E4(v43);
    v46 = v45;

    v47 = sub_100017494(v44, v46, v52);

    *(v40 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v37, v38, "FOUND %s", v40, 0xCu);
    sub_10000903C(v42);
    v6 = v50;
  }

  sub_100049880(v36);

  *(v36 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncDelegate + 8) = &off_10030C530;
  swift_unknownObjectWeakAssign();
  type metadata accessor for DiscoveryTokenStateMachine(0);
  sub_100005D90(v6);
  swift_beginAccess();
  sub_1001677A8(v6);
  swift_endAccess();

  sub_100010B48(v6);
  return v36;
}

uint64_t sub_100139940(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v15;
  if (v15)
  {
    v6 = [v15 effectiveIdentifier];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = [a2 effectiveIdentifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v5)
  {
    if (v7 == v10 && v5 == v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

double sub_100139AD0(uint64_t a1)
{
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100346758);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_1001EE1E4(v7);
    v10 = sub_100017494(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "LOST %s", v6, 0xCu);
    sub_10000903C(v7);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = 0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = 0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = 0;
  static Published.subscript.setter();
  v11 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
  if (v11)
  {
    v12 = v11;
    sub_1001A6328(a1);
  }

  sub_100072F14();

  sub_1002096F0(a1);

  return result;
}

uint64_t sub_100139E00(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v14;
  if (v14)
  {
    v4 = [v14 identifier];

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v6;
    }

    else
    {
      v5 = 0;
      v3 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = [a2 identifier];
  if (v7 && (v8 = v7, v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v11 = v10, v8, v3) && v11)
  {
    if (v5 == v9 && v3 == v11)
    {

      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_100139FD0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(a2) = sub_10000E2B0(a2, v3);

  return a2 & 1;
}

uint64_t sub_10013A064(uint64_t a1, void *a2)
{
  v3 = sub_100139AD0(a1);
  if (a2)
  {
    v4 = [a2 statusFlags];
    if ((v4 & 4) != 0 || ([a2 statusFlags] & 2) != 0)
    {
      v8 = sub_100138400(a2, (v4 & 4) >> 2);
      v9 = sub_100139364(v8);

      return v9;
    }

    v5 = 0x80000001002A1640;
    sub_100035D04(&qword_100346AE0, &qword_10027E298);
    sub_10000E244(&qword_100346AE8, &qword_100346AE0, &qword_10027E298, &unk_10027EBE0);
    swift_allocError();
    v7 = 0xD000000000000015;
  }

  else
  {
    sub_100035D04(&qword_100346AD0, &qword_10027E290);
    sub_10000E244(&qword_100346AD8, &qword_100346AD0, &qword_10027E290, &unk_10027EBE0);
    swift_allocError();
    v5 = 0xEE003F6563697665;
    v7 = 0x444C437072206F4ELL;
  }

  *v6 = v7;
  v6[1] = v5;
  return swift_willThrow();
}

uint64_t sub_10013A268(uint64_t *a1, int a2)
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

uint64_t sub_10013A2B0(uint64_t result, int a2, int a3)
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

uint64_t sub_10013A2FC()
{
  v1 = v0;
  v2 = 0xD000000000000010;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10026F050;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x80000001002A15C0;
  v4 = v3;
  v81 = 0x3D736B736154;
  v82 = 0xE600000000000000;
  v5 = *(v0 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_tasks);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v5 + 16);
  }

  v86[0] = v6;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8 = v81;
  v9 = v82;
  v10 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    *(v10 + 16) = v13;
    v14 = v10 + 16 * v12;
    *(v14 + 32) = v8;
    *(v14 + 40) = v9;
    v81 = 0;
    v82 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v81 = 0x7265766F63736944;
    v82 = 0xEF3D736B73615479;
    v15 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_discoveryTasks;
    swift_beginAccess();
    v16 = *(v1 + v15);
    if ((v16 & 0xC000000000000001) != 0)
    {

      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *(v16 + 16);
    }

    v84 = v17;
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19 = v81;
    v20 = v82;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      v10 = sub_100009088((v21 > 1), v22 + 1, 1, v10);
    }

    *(v10 + 16) = v22 + 1;
    v23 = v10 + 16 * v22;
    *(v23 + 32) = v19;
    *(v23 + 40) = v20;
    v81 = v10;

    v24 = sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    v78[1] = sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
    v78[2] = v24;
    v25 = BidirectionalCollection<>.joined(separator:)();
    v26 = v10;
    v28 = v27;
    v78[0] = v26;

    v29 = v4;
    v31 = *(v4 + 2);
    v30 = *(v4 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_100009088((v30 > 1), v31 + 1, 1, v4);
    }

    *(v29 + 2) = v31 + 1;
    v32 = v29;
    v33 = &v29[16 * v31];
    *(v33 + 4) = v25;
    *(v33 + 5) = v28;
    v81 = 0;
    v82 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v84 = v2;
    v85 = 0x80000001002A15E0;
    v79 = v1;
    v4 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state);
    v13 = *(v4 + 2);
    __chkstk_darwin(v34);
    v35 = type metadata accessor for HandoffDevice(0);
    v36 = type metadata accessor for UUID();
    v37 = sub_10013B49C(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    swift_getKeyPath();
    v38 = &qword_100346000;
    v39 = v13 + qword_100346AF8;

    os_unfair_lock_lock(v39);
    v81 = *(v39 + 8);

    swift_getAtKeyPath();

    v40 = v83;
    os_unfair_lock_unlock(v39);

    v9 = *(v40 + 16);
    if (v9)
    {
      v41 = sub_100009194(*(v40 + 16), 0);
      v2 = sub_100009A04(&v81, (v41 + 32), v9, v40);
      sub_100004F98(v81);
      if (v2 != v9)
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v80 = v37;
      if (v41 < 0)
      {
        goto LABEL_41;
      }
    }

    else
    {

      v41 = _swiftEmptyArrayStorage;
      v80 = v37;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }
    }

    if ((v41 & 0x4000000000000000) == 0)
    {
      v43 = *(v41 + 16);
      goto LABEL_19;
    }

LABEL_41:
    v43 = _CocoaArrayWrapper.endIndex.getter();
LABEL_19:
    v36 = v35;

    v81 = v43;
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    v45._countAndFlagsBits = 41;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    v47 = v84;
    v48 = v85;
    v49 = v32;
    v12 = *(v32 + 2);
    v50 = *(v49 + 3);
    v51 = v4;
    if (v12 >= v50 >> 1)
    {
      v46 = sub_100009088((v50 > 1), v12 + 1, 1, v49);
      v49 = v46;
    }

    v38 = v78;
    *(v49 + 2) = v12 + 1;
    v4 = v49;
    v52 = &v49[16 * v12];
    *(v52 + 4) = v47;
    *(v52 + 5) = v48;
    v13 = *(v51 + 2);
    __chkstk_darwin(v46);
    swift_getKeyPath();
    v53 = v13 + qword_100346AF8;

    os_unfair_lock_lock(v53);
    v81 = *(v53 + 8);

    swift_getAtKeyPath();

    v2 = v84;
    os_unfair_lock_unlock(v53);

    v9 = *(v2 + 16);
    if (v9)
    {
      v10 = sub_100009194(*(v2 + 16), 0);
      v2 = sub_100009A04(&v81, (v10 + 32), v9, v2);
      sub_100004F98(v81);
      if (v2 != v9)
      {
        goto LABEL_53;
      }

      if (v10 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {

      v10 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }
    }

    if ((v10 & 0x4000000000000000) == 0)
    {
      v8 = *(v10 + 16);
      if (!v8)
      {
        break;
      }

      goto LABEL_28;
    }

LABEL_42:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      break;
    }

LABEL_28:
    v1 = 0;
    v80 = v10 & 0xC000000000000001;
    while (v80)
    {
      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v2 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_38;
      }

LABEL_32:
      v81 = 2108704;
      v82 = 0xE300000000000000;
      v55._countAndFlagsBits = sub_1001EE1E4(v54);
      String.append(_:)(v55);

      v9 = v81;
      v12 = v82;
      v56 = v4;
      v58 = *(v4 + 2);
      v57 = *(v4 + 3);
      v13 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        v56 = sub_100009088((v57 > 1), v58 + 1, 1, v4);
      }

      *(v56 + 2) = v13;
      v4 = v56;
      v59 = &v56[16 * v58];
      *(v59 + 4) = v9;
      *(v59 + 5) = v12;

      ++v1;
      if (v2 == v8)
      {
        goto LABEL_43;
      }
    }

    v11 = *(v10 + 16);
    if (v1 >= v11)
    {
      goto LABEL_39;
    }

    v2 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_32;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v10 = sub_100009088((v11 > 1), v13, 1, v10);
  }

LABEL_43:

  v38 = v79;
  if (*(v79 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy))
  {
    v81 = 10;
    v82 = 0xE100000000000000;

    v60._countAndFlagsBits = sub_100126480();
    String.append(_:)(v60);

    v36 = v81;
    v9 = v82;
    v2 = *(v4 + 2);
    v42 = *(v4 + 3);
    v13 = v2 + 1;
    if (v2 < v42 >> 1)
    {
LABEL_45:

      v61 = v4;
      *(v4 + 2) = v13;
      v62 = &v4[16 * v2];
      *(v62 + 4) = v36;
      *(v62 + 5) = v9;
      goto LABEL_47;
    }

LABEL_54:
    v4 = sub_100009088((v42 > 1), v13, 1, v4);
    goto LABEL_45;
  }

  v61 = v4;
LABEL_47:
  v63 = *(*(v38 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
  if (v63)
  {
    v81 = 10;
    v82 = 0xE100000000000000;
    v64 = v61;
    v65 = v63;
    v66 = [v65 description];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70._countAndFlagsBits = v67;
    v70._object = v69;
    String.append(_:)(v70);

    v71 = v81;
    v72 = v82;
    v74 = *(v64 + 2);
    v73 = *(v64 + 3);
    if (v74 >= v73 >> 1)
    {
      v64 = sub_100009088((v73 > 1), v74 + 1, 1, v64);
    }

    v61 = v64;
    *(v64 + 2) = v74 + 1;
    v75 = &v64[16 * v74];
    *(v75 + 4) = v71;
    *(v75 + 5) = v72;
  }

  v81 = v61;

  v76 = BidirectionalCollection<>.joined(separator:)();
  swift_bridgeObjectRelease_n();
  return v76;
}

void sub_10013AC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(a1 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      if (a3(a2))
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_10013AD90(void *a1, uint64_t a2, void (*a3)(uint64_t, void, uint64_t), uint64_t a4, uint64_t a5)
{
  v59 = a4;
  v60 = a5;
  v57 = a2;
  v58 = a3;
  v56 = a1;
  v5 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v7 = &v52 - v6;
  v8 = sub_100035D04(&qword_10033FA38, &qword_100276800);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v52 - v10;
  v12 = sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v52 - v14;
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003078(v16, qword_100346758);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v53 = v15;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Guest requested ranging token", v19, 2u);
    v15 = v53;
  }

  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass == 4 || DeviceClass == 7)
  {
    type metadata accessor for Identity(0);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 20) = 256;
    v22 = OBJC_IVAR____TtC17proximitycontrold8Identity__bluetoothDevice;
    v61 = 0;
    sub_100035D04(&qword_10033D5D0, &unk_100273240);
    Published.init(initialValue:)();
    (*(v13 + 32))(v21 + v22, v15, v12);
    v23 = OBJC_IVAR____TtC17proximitycontrold8Identity__homekitAccessory;
    v61 = 0;
    sub_100035D04(&qword_10033F6A8, &qword_100276540);
    Published.init(initialValue:)();
    (*(v9 + 32))(v21 + v23, v11, v8);
    v24 = OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice;
    *(v21 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = 0;
    v25 = (v21 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
    *v25 = 0;
    v25[1] = 0;
    v26 = (v21 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
    *v26 = 0;
    v26[1] = 0;
    v27 = OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID;
    *(v21 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID) = 0;
    v28 = OBJC_IVAR____TtC17proximitycontrold8Identity__rapportBTDevice;
    v61 = 0;
    sub_100035D04(&qword_10033D608, &unk_100273250);
    Published.init(initialValue:)();
    v29 = v55;
    v30 = *(v54 + 32);
    v30(v21 + v28, v7, v55);
    v31 = OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities;
    *(v21 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = 0;
    v32 = OBJC_IVAR____TtC17proximitycontrold8Identity__wifiDevice;
    v61 = 0;
    Published.init(initialValue:)();
    v30(v21 + v32, v7, v29);
    v33 = (v21 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode);
    *v33 = 0;
    v33[1] = 0;
    v34 = (v21 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
    *v34 = 0;
    v34[1] = 0;
    v35 = (v21 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
    *v35 = 0;
    v35[1] = 0;
    v36 = (v21 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName);
    *v36 = 0;
    v36[1] = 0;
    *(v21 + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities) = 0;
    v37 = v21 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
    *v37 = 0;
    *(v37 + 8) = 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v61 = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v61 = 0;

    static Published.subscript.setter();
    v38 = *(v21 + v24);
    *(v21 + v24) = 0;

    swift_getKeyPath();
    swift_getKeyPath();
    v61 = 0;

    static Published.subscript.setter();
    *(v21 + v31) = 0;

    swift_getKeyPath();
    swift_getKeyPath();
    v61 = 0;

    static Published.subscript.setter();
    v39 = *(v21 + v27);
    v40 = v56;
    *(v21 + v27) = v56;
    v41 = v40;

    v42 = sub_100139364(v21);
    v43 = sub_100168AF4(v41, v42);
    v45 = v44;
    sub_100123AEC(v43, v44, v58, v59, v60);
    sub_10006DB04(v43, v45);
  }

  else
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Attempt to send guest ranging token on non-communal device", v48, 2u);
    }

    v49 = v58;
    v50 = v59;
    v51 = v60;

    sub_100123AEC(0, 0xF000000000000000, v49, v50, v51);
  }
}

uint64_t sub_10013B49C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10013B4E4(uint64_t a1, uint64_t a2, char *a3)
{
  v20[3] = type metadata accessor for DeviceActivityServer();
  v20[4] = &off_100316D70;
  v20[0] = a2;
  v5 = &a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_activitySource];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_registeredRequestHandlers] = _swiftEmptyDictionarySingleton;
  *&a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_registeredEventHandlers] = _swiftEmptyDictionarySingleton;
  *&a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient] = 0;
  *&a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_pushTaskStorage] = &_swiftEmptySetSingleton;
  *&a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_remoteSubscriptions] = _swiftEmptyDictionarySingleton;
  v6 = OBJC_IVAR____TtC17proximitycontrold12RapportProxy_airplayPrefs;
  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithSuiteName:v8];

  *&a3[v6] = v9;
  v10 = &a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject];
  sub_100035D04(&qword_100346A10, &qword_100283B20);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  *v10 = v11;
  *(v10 + 1) = v12;
  *(v10 + 2) = 0;
  v13 = OBJC_IVAR____TtC17proximitycontrold12RapportProxy_dispatchQueue;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v14 = qword_10038B5B8;
  *&a3[v13] = qword_10038B5B8;
  *&a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_tasks] = &_swiftEmptySetSingleton;
  swift_unknownObjectWeakAssign();
  sub_10007E790(v20, v19);
  swift_beginAccess();
  v15 = v14;
  sub_10013BA00(v19, v5);
  swift_endAccess();
  v18.receiver = a3;
  v18.super_class = type metadata accessor for RapportProxy();
  v16 = objc_msgSendSuper2(&v18, "init");
  sub_10000903C(v20);
  return v16;
}

uint64_t sub_10013B764@<X0>(uint64_t *a1@<X0>, Swift::UInt64 *a2@<X8>)
{
  v5 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  *a2 = sub_100202368(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80)));
}

uint64_t sub_10013B820(char *a1)
{
  v3 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v6 + 8);
  v14 = *a1;

  return sub_100200498(v14, v7, v8, v1 + v4, v10, v11, v12, v13);
}

uint64_t sub_10013BA00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100342B68, qword_10027E2A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013BA7C(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10013BB4C()
{
  v1 = (v0 + qword_100346AF8);
  os_unfair_lock_lock((v0 + qword_100346AF8));
  v2 = Dictionary.count.getter();
  type metadata accessor for Dictionary();
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_10013BC04(void *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    result = [*(*(v1 + 56) + ((v9 << 9) | (8 * v10))) nearbyActionFlags];
    if ((result & 0x10) != 0)
    {
      v11 = 1;
LABEL_13:

      return v11;
    }
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
      v11 = 0;
      goto LABEL_13;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10013BCF8(void *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v1 + 56) + ((v7 << 9) | (8 * v9)));
    if ([v10 supportsR1])
    {
      if (qword_1003391D8 != -1)
      {
        swift_once();
      }

      if (byte_10038B5A8 == 1)
      {
        if (![v10 nearbyActivityLevel] || objc_msgSend(v10, "nearbyActivityLevel") >= 7)
        {
          if (qword_100339240 != -1)
          {
            swift_once();
          }

          swift_beginAccess();

          CurrentValueSubject.value.getter();
          v11 = v24;
          if (v24 == 3)
          {
            CurrentValueSubject.value.getter();

            v11 = v25;
          }

          else
          {
          }

          v12 = [v10 model];
          if (v11 != 2)
          {
            if (v12 && (v19 = v12, static String._unconditionallyBridgeFromObjectiveC(_:)(), v19, v20._countAndFlagsBits = 0x656E6F685069, v20._object = 0xE600000000000000, LOBYTE(v19) = String.hasPrefix(_:)(v20), , (v19 & 1) != 0) || (v21 = [v10 model]) == 0)
            {
LABEL_33:
            }

            else
            {
              v22 = v21;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v23._countAndFlagsBits = 0x6863746157;
              v23._object = 0xE500000000000000;
              String.hasPrefix(_:)(v23);
            }

            return 1;
          }

          if (v12)
          {
            v13 = v12;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v14._countAndFlagsBits = 0x656E6F685069;
            v14._object = 0xE600000000000000;
            LOBYTE(v13) = String.hasPrefix(_:)(v14);

            if (v13)
            {
              goto LABEL_36;
            }
          }

          v15 = [v10 model];
          if (v15)
          {
            v16 = v15;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v17._countAndFlagsBits = 0x6863746157;
            v17._object = 0xE500000000000000;
            LOBYTE(v16) = String.hasPrefix(_:)(v17);

            if (v16)
            {
              goto LABEL_33;
            }
          }
        }
      }

      else if (([v10 nearbyActionFlags] & 0x10) != 0)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return 0;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_36:

  return 1;
}

uint64_t sub_10013C0AC()
{
  swift_getKeyPath();
  v1 = (v0 + qword_100346AF8);
  os_unfair_lock_lock(v1);

  swift_getAtKeyPath();

  type metadata accessor for Dictionary();
  type metadata accessor for Dictionary.Values();
  os_unfair_lock_unlock(v1);

  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

char *sub_10013C1F0()
{

  v1 = qword_100346AF0;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  type metadata accessor for Dictionary();
  type metadata accessor for _Cell();
  UnsafeMutablePointer.deinitialize(count:)();

  return v0;
}

uint64_t sub_10013C304()
{
  sub_10013C1F0();

  return swift_deallocClassInstance();
}

uint64_t sub_10013C374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10013C3C8()
{
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10026F050;
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);

  v2._countAndFlagsBits = 10272;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  sub_10013BB4C();
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  *(v1 + 32) = v7;
  *(v1 + 40) = v8;
  sub_10013C0AC();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v5 = BidirectionalCollection<>.joined(separator:)();
  swift_bridgeObjectRelease_n();
  return v5;
}

char *sub_10013C5C8(uint64_t a1, char **a2, uint64_t a3)
{
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100058C0C();
  sub_100058C60();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  String.append(_:)(v4);

  v5 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_100009088(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *a2 = result;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    result = sub_100009088((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
    *a2 = result;
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 4) = 2108704;
  *(v9 + 5) = 0xE300000000000000;
  return result;
}

uint64_t sub_10013C760(uint64_t a1)
{
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10026F050;
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);

  v3._countAndFlagsBits = 10272;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  sub_10013BB4C();
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  *(v2 + 32) = v8;
  *(v2 + 40) = v9;
  sub_10013C0AC();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v6 = BidirectionalCollection<>.joined(separator:)();
  swift_bridgeObjectRelease_n();
  return v6;
}

char *sub_10013C968(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10013FD60(a3, a5);
  sub_100058C0C();
  sub_100058C60();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

  String.append(_:)(v11);

  v6 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v6;
  if ((result & 1) == 0)
  {
    result = sub_100009088(0, *(v6 + 2) + 1, 1, v6);
    v6 = result;
    *a2 = result;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    result = sub_100009088((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
    *a2 = result;
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = 2108704;
  *(v10 + 5) = 0xE300000000000000;
  return result;
}

uint64_t sub_10013CB48()
{
  v1 = qword_10033E9C0;
  if (*(v0 + qword_10033E9C0))
  {
    v2 = *(v0 + qword_10033E9C0);
  }

  else
  {
    sub_100035D04(&qword_10033EAC0, &unk_100274E70);
    sub_10000E244(&qword_100346DC8, &qword_10033EAC0, &unk_100274E70, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10013CC24()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100346C08);
  sub_100003078(v0, qword_100346C08);
  return Logger.init(subsystem:category:)();
}

double sub_10013CCA4(uint64_t a1)
{
  *(*(v1 + 16) + 24) = a1;

  sub_10005E5D0(v2);

  CurrentValueSubject.send(_:)();

  return result;
}

uint64_t sub_10013CD3C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {

    sub_10005E5D0(v2);
    sub_100035D04(&qword_10033C350, &unk_10027E560);
    sub_10000E244(&qword_100346DD8, &qword_10033C350, &unk_10027E560, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    Publisher.eraseToAnyPublisher()();

    sub_100035D04(&qword_10033B560, &qword_100272030);
    sub_10000E244(&qword_10033B568, &qword_10033B560, &qword_100272030, &protocol conformance descriptor for AnyPublisher<A, B>);
    v1 = Publisher.eraseToAnyPublisher()();

    *(v0 + 24) = v1;
  }

  return v1;
}

void *sub_10013CE98()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v51 = *(v2 - 8);
  __chkstk_darwin(v2);
  v48 = v3;
  v50 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100035D04(&qword_100346D50, &qword_10027E508);
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v53 = &v38 - v5;
  v6 = sub_100035D04(&qword_100346D58, &qword_10027E510);
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = sub_100035D04(&qword_100346D60, &qword_10027E518);
  v44 = *(v9 - 8);
  v45 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v49 = sub_100035D04(&qword_100346D68, &qword_10027E520);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v38 - v12;
  sub_100035D04(&qword_100346D70, &qword_10027E528);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v0[2] = v13;
  v0[3] = 0;
  v14 = objc_allocWithZone(sub_100035D04(&qword_100346D78, &qword_10027E530));
  v15 = sub_10013DF1C(0xD000000000000031, 0x80000001002A17D0, &qword_100346D78, &qword_10027E530);
  v0[5] = &_swiftEmptySetSingleton;
  v16 = v0 + 5;
  v0[4] = v15;
  if (qword_100339080 != -1)
  {
    swift_once();
  }

  v52 = v2;
  v40 = sub_100003078(v2, qword_100346C08);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Init", v19, 2u);
  }

  v20 = v1[4];
  v21 = sub_1002376C0();

  v56 = v21;
  swift_allocObject();
  swift_weakInit();

  sub_100035D04(&qword_100346D80, &qword_10027E538);
  v39 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_100346D88, &qword_100346D80, &qword_10027E538, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  v41 = v16;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v56 = sub_10013CD3C();
  sub_100035D04(&qword_10033B560, &qword_100272030);
  sub_100035D04(&qword_100343150, &qword_100278FF0);
  sub_10000E244(&qword_10033B568, &qword_10033B560, &qword_100272030, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100346D90, &unk_10027E540);
  v22 = v43;
  Publishers.CompactMap.map<A>(_:)();
  (*(v42 + 8))(v8, v22);
  sub_10000E244(&qword_100346D98, &qword_100346D60, &qword_10027E518, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_10000E244(&qword_100346DA0, &qword_100346D90, &unk_10027E540, &protocol conformance descriptor for Publishers.Map<A, B>);
  v23 = v45;
  v24 = v46;
  Publisher<>.switchToLatest()();
  (*(v44 + 8))(v11, v23);
  LOBYTE(v20) = static os_log_type_t.info.getter();
  v25 = v50;
  v26 = v51;
  v27 = v52;
  (*(v51 + 16))(v50, v40, v52);
  v28 = (*(v26 + 80) + 64) & ~*(v26 + 80);
  v29 = v28 + v48;
  v30 = swift_allocObject();
  *(v30 + 2) = sub_10013DA1C;
  *(v30 + 3) = 0;
  *(v30 + 4) = 0;
  *(v30 + 5) = 0xE000000000000000;
  *(v30 + 6) = 0;
  *(v30 + 7) = 0xE000000000000000;
  (*(v26 + 32))(&v30[v28], v25, v27);
  v30[v29] = v20;
  sub_100035D04(&unk_10034B570, &unk_100289810);
  sub_10000E244(&qword_100346DA8, &qword_100346D68, &qword_10027E520, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v31 = v53;
  v32 = v49;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100346DB0, &qword_100346D50, &qword_10027E508, &protocol conformance descriptor for Publishers.Map<A, B>);
  v33 = v55;
  v34 = Publisher.eraseToAnyPublisher()();
  (*(v54 + 8))(v31, v33);
  (*(v47 + 8))(v24, v32);
  v56 = v34;
  v35 = swift_allocObject();
  swift_weakInit();

  v36 = swift_allocObject();
  *(v36 + 16) = sub_10013E328;
  *(v36 + 24) = v35;
  sub_100035D04(&qword_100346DB8, &unk_10027E550);
  sub_10000E244(&qword_100346DC0, &qword_100346DB8, &unk_10027E550, v39);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

double sub_10013D7D0(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_10013CCA4(v3);
  }

  return result;
}

double sub_10013D834(uint64_t *a1)
{
  sub_10013CB48();

  sub_100035D04(&qword_10033E738, &unk_100274820);
  sub_100035D04(&unk_10034B570, &unk_100289810);
  sub_10000E244(&qword_10033E740, &qword_10033E738, &unk_100274820, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

uint64_t sub_10013D930(uint64_t a1, char a2)
{
  _StringGuts.grow(_:)(26);
  v2._countAndFlagsBits = 0x206B6E694CLL;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  sub_100035D04(&qword_100343150, &qword_100278FF0);
  _print_unlocked<A, B>(_:_:)();
  v3._object = 0x80000001002A1810;
  v3._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

double sub_10013DA2C(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (a2 >= 2u)
  {
    v17[14] = v3;
    v17[15] = v4;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = *(*(Strong + 16) + 24);

      if (v8)
      {

        if (v8 == a1)
        {
          if (qword_100339080 != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          sub_100003078(v9, qword_100346C08);

          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v17[0] = v13;
            *v12 = 136315138;

            sub_100035D04(&qword_100343150, &qword_100278FF0);
            v14 = String.init<A>(describing:)();
            v16 = sub_100017494(v14, v15, v17);

            *(v12 + 4) = v16;
            _os_log_impl(&_mh_execute_header, v10, v11, "Removing link: %s", v12, 0xCu);
            sub_10000903C(v13);
          }

          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_10013CCA4(0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10013DC40()
{
  v1 = v0;
  if (qword_100339080 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346C08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_10013DD40()
{
  sub_10013DC40();

  return swift_deallocClassInstance();
}

void sub_10013DD98()
{
  v1 = v0;
  if (qword_100339080 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346C08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x29287472617473, 0xE700000000000000, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v1 + 32);
  sub_1002377C4();
}

char *sub_10013DF1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v32 = a4;
  v6 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  *&v6[qword_100347AC8] = 0;
  *&v6[qword_100347AD0] = 0;
  *&v6[qword_100347AD8] = &_swiftEmptySetSingleton;
  v17 = &v6[qword_100347AB8];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = objc_allocWithZone(NSXPCListener);

  v19 = String._bridgeToObjectiveC()();

  v20 = [v18 initWithMachServiceName:v19];

  *&v6[qword_100347AB0] = v20;
  v21 = qword_1003391E8;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  [v22 _setQueue:{qword_10038B5B8, v32}];

  v34 = ObjectType;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v23 = v16;
  v24 = v10;
  (*(v11 + 32))(&v6[qword_100347AC0], v23, v10);
  v25 = sub_100035D04(a3, v32);
  v33.receiver = v6;
  v33.super_class = v25;
  v26 = objc_msgSendSuper2(&v33, "init");
  (*(v11 + 16))(v14, v26 + qword_100347AC0, v10);
  v27 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Init", v30, 2u);
  }

  (*(v11 + 8))(v14, v24);
  [*&v27[qword_100347AB0] setDelegate:v27];

  return v27;
}

uint64_t sub_10013E260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  *a2 = sub_1001CC3A8(*a1, *(a1 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64)));
  *(a2 + 8) = v6;
}

uint64_t sub_10013E364@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = v2;
  *(a2 + 8) = v3;
}

uint64_t sub_10013E378(void *a1, double a2)
{
  v3 = v2;
  v28 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v24 = v11;
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_storage) = &_swiftEmptySetSingleton;
  *(v3 + OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_duration) = a2;
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v12 + 8);
  v23(v15, v11);
  v18 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10013EDDC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_10030A708;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10013EDE4(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v28;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v27 + 8))(v7, v5);
  (*(v25 + 8))(v10, v26);
  v23(v17, v24);

  return v3;
}

double sub_10013E75C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10013E7B4();
  }

  return result;
}

void sub_10013E7B4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_storage;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_10013EDE4(&qword_10033B5E8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    Set.Iterator.init(_cocoa:)();
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_100051964(v3);
      v16 = *(v1 + 16);
      if (v16)
      {
        v17 = *(v1 + 24);

        v16(v18);
        sub_10002689C(v16, v17);
      }

      return;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v6 = v13;
      v7 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v13 = v6;
        v14 = v7;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10013E9F4()
{
  sub_10002689C(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimedTaskStorage(uint64_t a1)
{
  result = qword_100346E18;
  if (!qword_100346E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013EAFC(uint64_t a1)
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

Swift::Int sub_10013EC18()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10013EDE4(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10013ECB8(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10013EDE4(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10013ED40(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10013EDE4(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10013EDE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10013EE30(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2073756F69726553;
    v6 = 1802723668;
    if (a1 != 8)
    {
      v6 = 0x69626173552F4955;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x754220726568744FLL;
    if (a1 != 5)
    {
      v7 = 0x7265776F50;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6D65636E61686E45;
    v2 = 0x2065727574616546;
    v3 = 0x7974697275636553;
    if (a1 != 3)
    {
      v3 = 0x616D726F66726550;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_10013EF94()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10013EE30(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013EFF8(uint64_t a1)
{
  sub_10013EE30(*v1);
  String.hash(into:)();
}

Swift::Int sub_10013F04C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10013EE30(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10013F0AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013FC28(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10013F0DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10013EE30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10013F108(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10013EE30(*a1);
  v5 = v4;
  if (v3 == sub_10013EE30(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10013F1BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013F23C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10013F2A8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013F324@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100301168, *a1);

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

void sub_10013F384(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (*v1)
  {
    v3 = "Prox Handoff Feedback";
  }

  else
  {
    v3 = "Task";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_10013F3C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = "Task";
  }

  else
  {
    v4 = "Prox Handoff Feedback";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (*a2)
  {
    v7 = "Prox Handoff Feedback";
  }

  else
  {
    v7 = "Task";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t sub_10013F480()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000015;
  }
}

unint64_t sub_10013F4BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  _StringGuts.grow(_:)(25);

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x3D6469202CLL;
  v6._object = 0xE500000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v1;
  v7._object = v2;
  String.append(_:)(v7);
  return 0xD000000000000010;
}

__n128 sub_10013F58C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10013F5A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10013F5E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BugComponents.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BugComponents.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10013F7D8()
{
  result = qword_100346F10;
  if (!qword_100346F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346F10);
  }

  return result;
}

unint64_t sub_10013F860()
{
  result = qword_100346F28;
  if (!qword_100346F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346F28);
  }

  return result;
}

uint64_t sub_10013F8BC(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10013F9C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013FC74(*a1);
  *a2 = result;
  return result;
}

void sub_10013F9F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x796C65726152;
  v7 = 0xE900000000000073;
  v8 = 0x656D6974656D6F53;
  if (v2 != 4)
  {
    v8 = 0x656C62616E55;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000079725420;
  v10 = 0x74276E6469442049;
  if (v2 != 1)
  {
    v10 = 0x6C70704120746F4ELL;
    v9 = 0xEE00656C62616369;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_10013FAD8()
{
  v1 = *v0;
  v2 = 0x737961776C41;
  v3 = 0x796C65726152;
  v4 = 0x656D6974656D6F53;
  if (v1 != 4)
  {
    v4 = 0x656C62616E55;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74276E6469442049;
  if (v1 != 1)
  {
    v5 = 0x6C70704120746F4ELL;
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

unint64_t sub_10013FBD4()
{
  result = qword_100346F40;
  if (!qword_100346F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346F40);
  }

  return result;
}

unint64_t sub_10013FC28(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100301028, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10013FC74(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003011E0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t BSInterfaceOrientation.description.getter(uint64_t a1)
{
  v1 = BSInterfaceOrientationDescription();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10013FD10()
{
  v0 = BSInterfaceOrientationDescription();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t sub_10013FD74(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(describing:)();
}

unint64_t sub_10013FE2C(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return static String._fromUTF8Repairing(_:)();
    }

LABEL_9:
    __break(1u);
    return static String._fromUTF8Repairing(_:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_10013FF24(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v2;
}

uint64_t sub_10013FFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __chkstk_darwin(a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11);
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    return (*(v13 + 32))(a4, v9, v12);
  }

  _s11UnwrapErrorVMa(0, v12, v14, v15);
  swift_getWitnessTable();
  swift_allocError();
  *v16 = a1;
  v16[1] = a2;
  swift_willThrow();
}

uint64_t sub_100140158(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  return v8;
}

void *sub_1001402BC(uint64_t a1)
{
  v2 = sub_10024CF38(_swiftEmptyArrayStorage);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v31 = a1;

  v8 = 0;
  if (v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
  }

  while (!v6);
  while (1)
  {
    v11 = __clz(__rbit64(v6)) | (v10 << 6);
    v12 = *(*(v31 + 48) + 8 * v11);
    v13 = (*(v31 + 56) + 16 * v11);
    v14 = v13[1];
    v32 = *v13;
    v15 = objc_allocWithZone(NSNumber);

    v16 = [v15 initWithInteger:v12];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1000850CC(v16);
    v20 = v2[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (v2[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        sub_100089A10();
        v18 = v29;
      }
    }

    else
    {
      sub_10008599C(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_1000850CC(v16);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_24;
      }
    }

    v6 &= v6 - 1;
    if (v24)
    {
      v9 = (v2[7] + 16 * v18);
      *v9 = v32;
      v9[1] = v14;

      v8 = v10;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v2[(v18 >> 6) + 8] |= 1 << v18;
      *(v2[6] + 8 * v18) = v16;
      v26 = (v2[7] + 16 * v18);
      *v26 = v32;
      v26[1] = v14;

      v27 = v2[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v2[2] = v28;
      v8 = v10;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v10 = v8;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_10008CCE8();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100140528(uint64_t a1)
{
  v2 = sub_10024E154(_swiftEmptyArrayStorage);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v32 = a1;

  v8 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v10 = v8;
LABEL_14:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (*(v32 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_10001766C(*(v32 + 56) + 32 * v14, v33);
    *&v34 = v16;
    *(&v34 + 1) = v17;
    sub_1000516B4(v33, &v35);

    v12 = v10;
LABEL_15:
    v37 = v34;
    v38[0] = v35;
    v38[1] = v36;
    if (!*(&v34 + 1))
    {

      return v2;
    }

    sub_1000516B4(v38, &v34);
    v18 = String._bridgeToObjectiveC()();
    sub_10001766C(&v34, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v2;
    v20 = sub_10008CE90();
    v22 = v2[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v2[3] >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v30 = v20;
      sub_10008A964();
      v20 = v30;
      v2 = v39;
      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_5:
      v9 = (v2[7] + 32 * v20);
      sub_10000903C(v9);
      sub_1000516B4(v33, v9);

      sub_10000903C(&v34);

      v8 = v12;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_100087CD8(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_10008CE90();
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_32;
      }

LABEL_21:
      v2 = v39;
      if (v26)
      {
        goto LABEL_5;
      }

LABEL_22:
      v2[(v20 >> 6) + 8] |= 1 << v20;
      *(v2[6] + 8 * v20) = v18;
      sub_1000516B4(v33, (v2[7] + 32 * v20));
      sub_10000903C(&v34);

      v28 = v2[2];
      v24 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v24)
      {
        goto LABEL_31;
      }

      v2[2] = v29;
      v8 = v12;
      if (!v6)
      {
LABEL_7:
        if (v7 <= v8 + 1)
        {
          v11 = v8 + 1;
        }

        else
        {
          v11 = v7;
        }

        v12 = v11 - 1;
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= v7)
          {
            v6 = 0;
            v35 = 0u;
            v36 = 0u;
            v34 = 0u;
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v10);
          ++v8;
          if (v6)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  type metadata accessor for Key(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100140808()
{
  v1 = *v0;

  return v1;
}

uint64_t static Optional<A>.allCases.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v15[-v6];
  v8 = type metadata accessor for Optional();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v9 = static Array._adoptStorage(_:count:)();
  (*(*(a1 - 8) + 56))(v10, 1, 1, a1);
  sub_100042610(v9, v8);
  dispatch thunk of static CaseIterable.allCases.getter();
  v16 = a1;
  v17 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10007F168(sub_100140BE0, v15, AssociatedTypeWitness, v8, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v12);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  v13 = static Array.+ infix(_:_:)();

  return v13;
}

void sub_100140A90()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_10038B240 = v2;
}

void sub_100140B00()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_10038B248 = v2;
}

void sub_100140B70()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_10038B250 = v2;
}

uint64_t sub_100140BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

unint64_t sub_100140C98()
{
  result = qword_100346F48;
  if (!qword_100346F48)
  {
    sub_100035D4C(qword_100346F50, qword_10027EAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346F48);
  }

  return result;
}

uint64_t sub_100140D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100140D50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_100140DAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100140E18()
{
  v1 = sub_100035D04(&qword_100347300, &unk_10027EDB8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);
  }

  else
  {
    v7 = v0;
    sub_1001431EC(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___handoffSessionManager, type metadata accessor for HandoffSessionManager, sub_1000B9DD4);
    swift_beginAccess();
    sub_100035D04(&qword_10033F5A0, &qword_100276200);
    Published.projectedValue.getter();
    swift_endAccess();

    sub_10000E244(&qword_100347308, &qword_100347300, &unk_10027EDB8, &protocol conformance descriptor for Published<A>.Publisher);
    v6 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

uint64_t sub_100140FF4()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceUXRegionPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceUXRegionPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceUXRegionPublisher);
  }

  else
  {
    sub_100035D04(&qword_100347310, &unk_10027EDC8);
    sub_10000E244(&qword_100347318, &qword_100347310, &unk_10027EDC8, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001410D0()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___experienceEventSessionIDReasonPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___experienceEventSessionIDReasonPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___experienceEventSessionIDReasonPublisher);
  }

  else
  {
    sub_100035D04(&qword_1003472F0, &qword_10027EDB0);
    sub_10000E244(&qword_1003472F8, &qword_1003472F0, &qword_10027EDB0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_1001411E4()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxy;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxy))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxy);
  }

  else
  {
    v3 = sub_100142978();
    type metadata accessor for ActivityProxy();
    swift_allocObject();
    v2 = sub_1000A41CC(v3);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100141270()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkPublisher);
  }

  else
  {
    sub_1001434D0();
    v2 = sub_10013CD3C();

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001412EC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___screenOnPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___screenOnPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___screenOnPublisher);
  }

  else
  {

    sub_10005E50C();
    sub_100035D04(&unk_1003436D0, &qword_1002702F0);
    sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001413FC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___isEnabledPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___isEnabledPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___isEnabledPublisher);
  }

  else
  {

    sub_10005E50C();
    sub_100035D04(&unk_1003436D0, &qword_1002702F0);
    sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100141508()
{
  v0 = sub_100035D04(&qword_100347320, &qword_10027EDD8);
  v1 = *(v0 - 8);
  v24 = v0;
  v25 = v1;
  __chkstk_darwin(v0);
  v3 = &v21 - v2;
  v4 = sub_100035D04(&qword_100347328, &qword_10027EDE0);
  v5 = *(v4 - 8);
  v22 = v4;
  v23 = v5;
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v27 = sub_100035D04(&qword_100347330, &qword_10027EDE8);
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v21 - v8;
  v26 = sub_100035D04(&qword_100347338, &unk_10027EDF0);
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v11 = &v21 - v10;
  v12 = sub_100142EBC();

  v30 = sub_10005E5BC();
  sub_100035D04(&qword_10033C290, &qword_100272A88);
  sub_10000E244(&qword_100347340, &qword_10033C290, &qword_100272A88, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v13 = Publisher.eraseToAnyPublisher()();

  v30 = v13;
  sub_100035D04(&qword_100347348, &qword_10027EE00);
  sub_100035D04(&qword_100347350, &qword_10027EE08);
  sub_10000E244(&qword_100347358, &qword_100347348, &qword_10027EE00, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_100035D04(&qword_100347360, &qword_10027EE10);
  sub_10000E244(&qword_100347368, &qword_100347328, &qword_10027EDE0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v14 = v22;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_100347370, &qword_100347320, &qword_10027EDD8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v15 = v24;
  v16 = Publisher.eraseToAnyPublisher()();
  (*(v25 + 8))(v3, v15);
  (*(v23 + 8))(v7, v14);
  v30 = v16;
  sub_100035D04(&qword_100347378, &qword_10027EE18);
  sub_10000E244(&qword_100347380, &qword_100347378, &qword_10027EE18, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000E244(&qword_100347388, &qword_100347360, &qword_10027EE10, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.switchToLatest()();

  sub_10000E244(&qword_100347390, &qword_100347330, &qword_10027EDE8, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v17 = v27;
  Publisher.compactMap<A>(_:)();
  (*(v29 + 8))(v9, v17);
  sub_10000E244(&qword_100347398, &qword_100347338, &unk_10027EDF0, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v18 = v26;
  v19 = Publisher.eraseToAnyPublisher()();
  (*(v28 + 8))(v11, v18);
  return v19;
}

uint64_t sub_100141ADC(uint64_t a1)
{
  v2 = sub_100035D04(&qword_1003473A0, &qword_10027EE20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  v6 = sub_100035D04(&qword_1003473A8, &qword_10027EE28);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = sub_100035D04(&qword_1003473B0, &qword_10027EE30);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  if (a1)
  {
    v16 = a1;

    sub_100035D04(&qword_100342B20, &qword_100278AA0);
    sub_100035D04(&qword_1003473B8, &unk_10027EE38);
    sub_10000E244(&qword_100342B28, &qword_100342B20, &qword_100278AA0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_1003473C8, &qword_1003473B0, &qword_10027EE30, &protocol conformance descriptor for Publishers.Map<A, B>);
    v14 = Publisher.eraseToAnyPublisher()();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v16 = 0;
    v17 = -1;
    sub_100035D04(&qword_1003473B8, &unk_10027EE38);
    Just.init(_:)();
    Just.setFailureType<A>(to:)();
    (*(v3 + 8))(v5, v2);
    sub_10000E244(&qword_1003473C0, &qword_1003473A8, &qword_10027EE28, &protocol conformance descriptor for Result<A, B>.Publisher);
    v14 = Publisher.eraseToAnyPublisher()();
    (*(v7 + 8))(v9, v6);
  }

  return v14;
}

uint64_t sub_100141E74(uint64_t a1)
{
  v2 = sub_100035D04(&qword_1003473D0, &qword_10027EE48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  v6 = sub_100035D04(&qword_1003473D8, &qword_10027EE50);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = sub_100035D04(&qword_1003473E0, &qword_10027EE58);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  if (a1)
  {
    *&v16 = a1;

    sub_100035D04(&qword_100343058, &qword_100278EE8);
    sub_100035D04(&qword_1003473E8, &unk_10027EE60);
    sub_10000E244(&qword_100343060, &qword_100343058, &qword_100278EE8, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_1003473F8, &qword_1003473E0, &qword_10027EE58, &protocol conformance descriptor for Publishers.Map<A, B>);
    v14 = Publisher.eraseToAnyPublisher()();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v16 = xmmword_10026F060;
    sub_100035D04(&qword_1003473E8, &unk_10027EE60);
    Just.init(_:)();
    Just.setFailureType<A>(to:)();
    (*(v3 + 8))(v5, v2);
    sub_10000E244(&qword_1003473F0, &qword_1003473D8, &qword_10027EE50, &protocol conformance descriptor for Result<A, B>.Publisher);
    v14 = Publisher.eraseToAnyPublisher()();
    (*(v7 + 8))(v9, v6);
  }

  return v14;
}

uint64_t sub_10014220C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  result = __chkstk_darwin(v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_1000EF05C(a4, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      return sub_1000097E8(v10, &unk_10033D8B0, &qword_100275520);
    }

    else
    {
      (*(v12 + 32))(v15, v10, v11);
      if (a1)
      {

        swift_errorRetain();
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v29 = v27;
          *v18 = 136315394;
          *(v18 + 4) = sub_100017494(a2, a3, &v29);
          *(v18 + 12) = 2112;
          v28 = a1;
          swift_errorRetain();
          sub_100035D04(&unk_100346020, &qword_100271A00);
          if (_getErrorEmbeddedNSError<A>(_:)())
          {
          }

          else
          {
            swift_allocError();
            *v24 = a1;
          }

          v25 = _swift_stdlib_bridgeErrorToNSError();
          *(v18 + 14) = v25;
          *v19 = v25;
          _os_log_impl(&_mh_execute_header, v16, v17, "### %s: %@", v18, 0x16u);
          sub_1000097E8(v19, &qword_100339940, &unk_100272C50);

          sub_10000903C(v27);
        }
      }

      else
      {

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v29 = v23;
          *v22 = 136315138;
          *(v22 + 4) = sub_100017494(a2, a3, &v29);
          _os_log_impl(&_mh_execute_header, v20, v21, "%s", v22, 0xCu);
          sub_10000903C(v23);
        }
      }

      return (*(v12 + 8))(v15, v11);
    }
  }

  return result;
}

uint64_t sub_100142608()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100346FD8);
  sub_100003078(v0, qword_100346FD8);
  return Logger.init(subsystem:category:)();
}

void *sub_100142978()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxyModel;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxyModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxyModel);
  }

  else
  {
    v3 = sub_100142AE4();
    v4 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_mediaRemoteProxy);
    v8 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ActivityProxyModel();
    v2 = swift_allocObject();
    v2[2] = v3;
    v2[3] = v4;
    v2[4] = sub_100147A68;
    v2[5] = v5;
    v2[6] = sub_100147A70;
    v2[7] = v6;
    v2[8] = v7;
    v2[9] = sub_100147A78;
    v2[10] = v8;
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_100142AE4()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceActivityServer;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceActivityServer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceActivityServer);
  }

  else
  {
    v3 = *(*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_shareableContentResolver) + 112);
    v4 = qword_100339180;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = *(qword_10038B4E8 + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_state);
    type metadata accessor for DeviceActivityServer();
    v2 = swift_allocObject();
    v2[3] = v3;
    v2[4] = 0;
    v2[2] = v5;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100142BD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (sub_1001431EC(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___handoffSessionManager, type metadata accessor for HandoffSessionManager, sub_1000B9DD4), swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , , v4))
  {

    v2 = static UUID.== infix(_:_:)();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_100142D0C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = *(*(*(Strong + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_screenOnMonitor) + 16) + 24);

  return v2;
}

double sub_100142D78@<D0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (v3 = sub_100142E20(), , v4 = v3[4], v5 = v4, , v4))
  {
    *(a2 + 24) = type metadata accessor for RapportProxy();
    *(a2 + 32) = &off_100306AC8;
    *a2 = v5;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *sub_100142E20()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentState;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentState))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentState);
  }

  else
  {
    type metadata accessor for NearbyAgentState();
    swift_allocObject();

    v2 = sub_1001326BC(v3);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_100142EBC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgent;
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgent);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgent);
  }

  else
  {
    v4 = v0;
    v5 = sub_100142F5C();
    v7 = v6;
    v8 = sub_100142E20();
    v9 = objc_allocWithZone(type metadata accessor for NearbyAgent());
    v10 = sub_100132B54(v5, v7, v8);
    v11 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void *sub_100142F5C()
{
  v1 = (v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel);
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel);
  v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel);
  }

  else
  {
    v4 = sub_100142AE4();
    v5 = sub_1001411E4()[3];

    v6 = *v1;
    v7 = v1[1];
    *v1 = v4;
    v1[1] = v5;

    sub_1001479E8(v6, v7);
  }

  sub_100147A28(v2, v3);
  return v4;
}

uint64_t sub_100143040()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___debugHandoffDeviceServiceServer;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___debugHandoffDeviceServiceServer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___debugHandoffDeviceServiceServer);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);

    v4 = sub_1001411E4()[3];

    type metadata accessor for MockHandoffDeviceServiceServer();
    swift_allocObject();
    v2 = sub_1000FE260(v3, v4);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_100143100()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___classicBannerPresenter;
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___classicBannerPresenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___classicBannerPresenter);
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for ClassicBannerPresenter());

    v6 = v0;
    sub_1001E4AF8(v5);
    v7 = *(v0 + v1);
    *(v6 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1001431EC(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    a2();
    swift_allocObject();

    v6 = a3(v9);

    *(v8 + v4) = v6;
  }

  return v6;
}

void *sub_100143284()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___devicePrewarmer;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___devicePrewarmer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___devicePrewarmer);
  }

  else
  {
    type metadata accessor for HandoffDevicePrewarmer();
    swift_allocObject();

    v2 = sub_100028040(v3);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_10014337C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServer;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServer);
  }

  else
  {
    v3 = sub_100143408();
    type metadata accessor for NanoPreferencesSyncServer();
    swift_allocObject();
    v2 = sub_100052D88(v3);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_100143408()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServerModel;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServerModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServerModel);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);
    type metadata accessor for NanoPreferencesSyncServerModel();
    v2 = swift_allocObject();
    sub_100035D04(&qword_100347428, &qword_10027EEC0);
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v2[2] = v4;
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    v2[3] = v5;
    v2[4] = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_1001434D0()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkProducer;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkProducer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkProducer);
  }

  else
  {
    v3 = v0;
    type metadata accessor for ViewServiceLinkProducer();
    swift_allocObject();
    v2 = sub_10013CE98();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10014354C()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_100347400, &unk_10027EE70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v49 - v4;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v6 = qword_10038B5B8;
  *(v0 + 16) = qword_10038B5B8;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = _swiftEmptyDictionarySingleton;
  *(v0 + 72) = &_swiftEmptySetSingleton;
  v7 = v6;
  UUID.init()();
  v8 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment__isEnabled;
  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v1 + v8) = v9;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___isEnabledPublisher) = 0;
  v10 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage;
  __chkstk_darwin(v9);
  v49[-4] = type metadata accessor for HandoffDevice(0);
  v49[-3] = type metadata accessor for UUID();
  v49[-2] = sub_100147A80(&qword_100344208, type metadata accessor for HandoffDevice, &unk_100272FC8);
  KeyPath = swift_getKeyPath();
  sub_100035D04(&qword_100344210, &unk_10027EEB0);
  swift_allocObject();
  v12 = sub_10006CF14(KeyPath, 1);

  *(v1 + v10) = v12;
  v13 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_assetManager;
  type metadata accessor for AssetManager();
  v14 = swift_allocObject();
  *(v1 + v13) = v14;
  *(v14 + 16) = _swiftEmptyDictionarySingleton;
  *(v14 + 24) = &_swiftEmptySetSingleton;
  v15 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_mediaRemoteProxy;
  if (qword_100338F98 != -1)
  {
    swift_once();
  }

  *(v1 + v15) = qword_10038B130;
  v16 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_orientationPublisher;
  v17 = qword_100338F70;

  if (v17 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_100035D04(&qword_100343498, qword_100279210);
  Published.projectedValue.getter();
  swift_endAccess();

  sub_10000E244(&qword_100347408, &qword_100347400, &unk_10027EE70, &protocol conformance descriptor for Published<A>.Publisher);
  v18 = Publisher.eraseToAnyPublisher()();
  (*(v3 + 8))(v5, v2);
  *(v1 + v16) = v18;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___screenOnPublisher) = 0;
  v19 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_batteryStateMonitor;
  type metadata accessor for BatteryStateMonitor();
  swift_allocObject();
  *(v1 + v19) = sub_1000F3AE8();
  v20 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_screenOnMonitor;
  if (qword_100339268 != -1)
  {
    swift_once();
  }

  *(v1 + v20) = qword_10038B5D8;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxy) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxyModel) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceActivityServer) = 0;
  v21 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_shareableContentResolver;
  type metadata accessor for ShareableContentResolver();
  swift_allocObject();

  *(v1 + v21) = sub_100246E98();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgent) = 0;
  v22 = (v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel);
  *v22 = 0;
  v22[1] = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentState) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher) = 0;
  v23 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceUXRegionSubject;
  sub_100035D04(&qword_100347310, &unk_10027EDC8);
  swift_allocObject();
  *(v1 + v23) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceUXRegionPublisher) = 0;
  v24 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject;
  sub_100035D04(&qword_1003472F0, &qword_10027EDB0);
  swift_allocObject();
  *(v1 + v24) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___experienceEventSessionIDReasonPublisher) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___handoffSessionManager) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___debugHandoffDeviceServiceServer) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___classicBannerPresenter) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___hapticPresenter) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___remoteFollowerPresenter) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServicePresenter) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___devicePrewarmer) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___systemEventManager) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___transferManager) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___telemetryManager) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServer) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServerModel) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkPublisher) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkProducer) = 0;
  v25 = (v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v26 = static OS_dispatch_queue.main.getter();
  v27 = objc_allocWithZone(type metadata accessor for HapticPlayer(0));
  v28 = sub_100218838(v26);
  v29 = sub_100147A80(&qword_100347410, type metadata accessor for HapticPlayer, &unk_10027F108);
  *v25 = v28;
  v25[1] = v29;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v30 = qword_10038B0B8;
  v31 = *(qword_10038B0B8 + 960);
  v32 = sub_100061FA4();

  v33 = (v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_impactGeneratorSoft);
  v34 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:qword_10027EFA0[v32]];
  v35 = sub_100003118(0, &qword_100347418, UIImpactFeedbackGenerator_ptr);
  v33[3] = v35;
  v33[4] = &off_10030AB88;
  *v33 = v34;
  v36 = *(v30 + 976);
  LOBYTE(v30) = sub_100061FA4();

  v37 = qword_10027EFA0[v30];
  v38 = (v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_impactGeneratorHard);
  v39 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:v37];
  v38[3] = v35;
  v38[4] = &off_10030AB88;
  *v38 = v39;
  v40 = (v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_notificationGenerator);
  v41 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  v40[3] = sub_100003118(0, &qword_100347420, UINotificationFeedbackGenerator_ptr);
  v40[4] = &off_10030ABA0;
  *v40 = v41;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___proxControlDemoLinkServerManager) = 0;
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100003078(v42, qword_100346FD8);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Init", v45, 2u);
  }

  sub_1001434D0();
  sub_10013DD98();

  sub_1001440AC();
  v52 = sub_1001411E4();
  v51 = sub_100143040();
  v50 = sub_100143100();
  v49[3] = sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServicePresenter, type metadata accessor for ViewServicePresenter, 72, sub_1000E274C);
  v49[2] = sub_100143284();
  v49[1] = sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___hapticPresenter, type metadata accessor for HapticPresenter, 80, sub_10014A5C0);
  if (qword_100338F58 != -1)
  {
    swift_once();
  }

  sub_10014337C();
  v46 = sub_100142EBC();
  sub_1001431EC(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___remoteFollowerPresenter, type metadata accessor for RemoteFollowerPresenter, sub_100182800);
  sub_1001431EC(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___handoffSessionManager, type metadata accessor for HandoffSessionManager, sub_1000B9DD4);
  if (qword_100339290 != -1)
  {
    swift_once();
  }

  v47 = qword_100338FD0;

  if (v47 != -1)
  {
    swift_once();
  }

  sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___telemetryManager, type metadata accessor for HandoffTelemetryManager, 64, sub_10004E50C);
  sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___transferManager, type metadata accessor for HandoffTransferManager, 72, sub_100212AE8);

  return v1;
}

double sub_1001440AC()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033E6F0, &qword_10027A060);
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v4 = v20 - v3;
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100346FD8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100017494(0xD00000000000001ELL, 0x80000001002A1FF0, v24);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000903C(v9);
  }

  v10 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);
  v24[0] = *(v10 + 32);
  v11 = sub_100035D04(&qword_100339828, &unk_100270300);
  v12 = sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v20[1] = v11;
  v25 = Publisher.eraseToAnyPublisher()();
  __chkstk_darwin(v25);
  v20[-4] = type metadata accessor for HandoffDevice(0);
  v20[-3] = type metadata accessor for UUID();
  v20[-2] = sub_100147A80(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  swift_getKeyPath();
  v21 = v10;
  v13 = v10 + qword_100346AF8;
  os_unfair_lock_lock((v10 + qword_100346AF8));
  v24[0] = *(v13 + 8);

  swift_getAtKeyPath();

  v14 = v24[5];
  os_unfair_lock_unlock(v13);

  v15 = *(v14 + 16);
  v20[0] = v12;
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = sub_100009194(v15, 0);
  v17 = sub_100009A04(v24, v16 + 4, v15, v14);
  sub_100004F98(v24[0]);
  if (v17 != v15)
  {
    __break(1u);
LABEL_8:

    v16 = _swiftEmptyArrayStorage;
  }

  v24[0] = v16;
  sub_100035D04(&qword_100339838, &qword_100271F10);
  sub_100035D04(&qword_10033BAA0, &unk_100274880);
  sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000E244(&qword_10033E750, &qword_10033BAA0, &unk_100274880, &protocol conformance descriptor for [A]);
  Publisher.prepend<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033E758, &qword_10033E6F0, &qword_10027A060, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  v18 = v23;
  Publisher<>.sink(receiveValue:)();

  (*(v22 + 8))(v4, v18);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v24[0] = *(v21 + 48);
  v24[0] = Publisher.eraseToAnyPublisher()();
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return result;
}

uint64_t sub_100144680()
{
  v1 = v0;
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346FD8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10002689C(*(v1 + 24), *(v1 + 32));
  sub_10002689C(*(v1 + 40), *(v1 + 48));

  v6 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  sub_1001479E8(*(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel), *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel + 8));

  swift_unknownObjectRelease();
  sub_10000903C((v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_impactGeneratorSoft));
  sub_10000903C((v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_impactGeneratorHard));
  sub_10000903C((v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_notificationGenerator));

  return v1;
}

uint64_t sub_100144A54()
{
  sub_100144680();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandoffEnvironment(uint64_t a1)
{
  result = qword_1003470F8;
  if (!qword_1003470F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100144B00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v5 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v8 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_100346FD8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = a1;
    v16 = swift_slowAlloc();
    v29 = v16;
    *v14 = 136315138;
    *(v14 + 4) = sub_100017494(0xD000000000000015, 0x80000001002A2010, &v29);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_10000903C(v16);
    a1 = v15;
  }

  sub_1001411E4();
  sub_1000A4544();

  sub_10014337C();
  sub_100053058();

  v17 = sub_100142EBC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  swift_allocObject();
  v18 = Future.init(_:)();

  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = v28;
  v20[4] = v19;
  v29 = v18;
  sub_1000EF05C(v10, v8);
  v21 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_10007E4B8(v8, v22 + v21);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_100147B30;
  *(v23 + 24) = v20;
  sub_10000E244(&qword_1003436B0, &qword_100345FE0, &qword_1002795C0, &protocol conformance descriptor for Future<A, B>);

  v24 = Publisher.sink(receiveCompletion:receiveValue:)();

  sub_1000097E8(v10, &unk_10033D8B0, &qword_100275520);

  *(v3 + 56) = v24;

  sub_100145048();
  sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___proxControlDemoLinkServerManager, type metadata accessor for ProxControlDemoLinkServerManager, 48, sub_100238530);
  sub_100237AE8();

  sub_100143040();
  sub_1000FEA10();

  return result;
}

double sub_100144FDC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  a2(0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 56) = 0;
  }

  return result;
}

void sub_100145048()
{
  v1 = v0;
  v49 = sub_100035D04(&qword_100347450, &qword_10027EF28);
  __chkstk_darwin(v49);
  v47[5] = v47 - v2;
  v52 = sub_100035D04(&qword_100347458, &qword_10027EF30);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = v47 - v3;
  v4 = sub_100035D04(&qword_100347460, &qword_10027EF38);
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v51 = v47 - v5;
  v58 = sub_100035D04(&qword_100347468, &qword_10027EF40);
  __chkstk_darwin(v58);
  v6 = sub_100035D04(&qword_100347470, &qword_10027EF48);
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v8 = v47 - v7;
  v9 = sub_100035D04(&qword_100347478, &unk_10027EF50);
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v57 = v47 - v10;
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_100346FD8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v63 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100017494(0xD00000000000002CLL, 0x80000001002A2030, &v63);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_10000903C(v15);
  }

  v16 = sub_100142E20()[3];

  v17 = *(v16 + 16);

  v63 = *(v17 + 40);
  sub_100035D04(&qword_10033C238, &qword_100272A30);
  sub_10000E244(&qword_100347480, &qword_10033C238, &qword_100272A30, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v65 = Publisher.eraseToAnyPublisher()();
  sub_100035D04(&qword_100347488, &qword_10027EF60);
  v18 = swift_allocObject();
  v56 = xmmword_10026F050;
  *(v18 + 16) = xmmword_10026F050;
  __chkstk_darwin(v18);
  v47[-4] = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
  v47[-3] = type metadata accessor for UUID();
  v47[-2] = sub_100147A80(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  swift_getKeyPath();
  v47[4] = v17;
  v19 = v17 + qword_100346AF8;
  os_unfair_lock_lock(v19);
  v63 = *(v19 + 8);

  swift_getAtKeyPath();

  v20 = v64;
  os_unfair_lock_unlock(v19);

  v21 = *(v20 + 16);
  v55 = v8;
  if (v21)
  {
    v22 = sub_100009194(v21, 0);
    v23 = sub_1001295D4();
    sub_100004F98(v63);
    if (v23 == v21)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_9:
  *(v18 + 32) = v22;
  sub_100035D04(&qword_100347490, &unk_10027EF68);
  sub_10000E244(&qword_100347498, &qword_100347490, &unk_10027EF68, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.prepend(_:)();

  v24 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentState;

  v63 = sub_10005E50C();
  v25 = sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  v26 = sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v47[3] = v25;
  v27 = v24;
  v47[2] = v26;
  v28 = Publisher.eraseToAnyPublisher()();

  v63 = v28;
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  sub_10000E244(&qword_1003474A0, &qword_100347468, &qword_10027EF40, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  v29 = sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210, &protocol conformance descriptor for AnyPublisher<A, B>);
  v30 = v55;
  v47[1] = v29;
  Publishers.CombineLatest.init(_:_:)();
  v31 = sub_100035D04(&qword_1003474A8, &unk_10027EF78);
  sub_10000E244(&qword_1003474B0, &qword_100347470, &qword_10027EF48, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v32 = v57;
  v33 = v60;
  Publisher.map<A>(_:)();
  (*(v59 + 8))(v30, v33);
  sub_10000E244(&qword_1003474B8, &qword_100347478, &unk_10027EF50, &protocol conformance descriptor for Publishers.Map<A, B>);

  v34 = v62;
  Publisher<>.sink(receiveValue:)();

  (*(v61 + 8))(v32, v34);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v35 = *(*(*(v1 + v27) + 40) + 24);
  v63 = *(v35 + 40);

  sub_100035D04(&qword_10033C230, &unk_100272A20);
  sub_10000E244(&qword_1003474C0, &qword_10033C230, &unk_100272A20, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v65 = Publisher.eraseToAnyPublisher()();
  sub_100035D04(&qword_1003474C8, &qword_10027EF88);
  v36 = swift_allocObject();
  *(v36 + 16) = v56;
  __chkstk_darwin(v36);
  v47[-4] = type metadata accessor for RPIdentityWrapper();
  v47[-3] = &type metadata for String;
  v47[-2] = &protocol witness table for String;
  swift_getKeyPath();
  v37 = v35 + qword_100346AF8;
  os_unfair_lock_lock((v35 + qword_100346AF8));
  v63 = *(v37 + 8);

  swift_getAtKeyPath();

  v38 = v64;
  os_unfair_lock_unlock(v37);

  v39 = *(v38 + 16);
  v58 = v31;
  if (!v39)
  {

    v40 = _swiftEmptyArrayStorage;
LABEL_13:
    *(v36 + 32) = v40;
    sub_100035D04(&qword_1003474D0, &unk_10027EF90);
    sub_10000E244(&qword_1003474D8, &qword_1003474D0, &unk_10027EF90, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.prepend(_:)();

    v63 = sub_10005E50C();
    v42 = Publisher.eraseToAnyPublisher()();

    v63 = v42;
    sub_10000E244(&qword_1003474E0, &qword_100347450, &qword_10027EF28, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
    v43 = v48;
    Publishers.CombineLatest.init(_:_:)();
    sub_10000E244(&qword_1003474E8, &qword_100347458, &qword_10027EF30, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
    v45 = v51;
    v44 = v52;
    Publisher.map<A>(_:)();
    (*(v50 + 8))(v43, v44);
    sub_10000E244(&qword_1003474F0, &qword_100347460, &qword_10027EF38, &protocol conformance descriptor for Publishers.Map<A, B>);

    v46 = v54;
    Publisher<>.sink(receiveValue:)();

    (*(v53 + 8))(v45, v46);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    return;
  }

  v40 = sub_100009194(v39, 0);
  v41 = sub_100009A04(&v63, v40 + 4, v39, v38);
  sub_100004F98(v63);
  if (v41 == v39)
  {
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_100145E7C()
{
  v1 = v0;
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346FD8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  sub_1001411E4();
  sub_1000A6024();

  sub_10014337C();
  sub_100054538();

  v7 = sub_100142EBC();
  [v7 invalidate];

  sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___proxControlDemoLinkServerManager, type metadata accessor for ProxControlDemoLinkServerManager, 48, sub_100238530);
  sub_10023818C();

  sub_100143040();
  sub_100100A18();

  swift_beginAccess();
  *(v1 + 72) = &_swiftEmptySetSingleton;
}

uint64_t sub_1001460D8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100146254(uint64_t a1)
{
  v21 = sub_100035D04(&qword_100347430, &unk_10027EF10);
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v20 - v4;
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100346FD8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_100017494(0x3A5F28646E756F66, 0xE900000000000029, v23);
    *(v9 + 4) = v10;
    *(v9 + 12) = 2080;
    v12 = sub_1000092A0(v10, v11);
    v14 = sub_100017494(v12, v13, v23);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: device=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000F2E3C(a1);
  v15 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  v23[0] = sub_100070F78();

  sub_100035D04(&qword_10033D680, &qword_100273290);
  sub_100035D04(&qword_100347438, &qword_10027EF20);
  sub_10000E244(&qword_10033D688, &qword_10033D680, &qword_100273290, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_100035D04(&qword_100347310, &unk_10027EDC8);
  sub_10000E244(&qword_100347440, &qword_100347430, &unk_10027EF10, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10000E244(&qword_100347448, &qword_100347310, &unk_10027EDC8, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v16 = v21;
  v17 = Publisher.subscribe<A>(_:)();
  (*(v3 + 8))(v5, v16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v1 + 64);
  *(v1 + 64) = 0x8000000000000000;
  sub_10004CE14(v17, a1 + v15, isUniquelyReferenced_nonNull_native);
  *(v1 + 64) = v22;
  return swift_endAccess();
}

double sub_100146664(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3(v4);
  }

  return result;
}

uint64_t sub_1001466D8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100346FD8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17 = v2;
    v10 = v9;
    v18[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = sub_100017494(0x293A5F2874736F6CLL, 0xE800000000000000, v18);
    *(v10 + 4) = v11;
    *(v10 + 12) = 2080;
    v13 = sub_1000092A0(v11, v12);
    v15 = sub_100017494(v13, v14, v18);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: device=%s", v10, 0x16u);
    swift_arrayDestroy();

    v2 = v17;
  }

  sub_1000F2FCC(a1);
  (*(v3 + 16))(v5, a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, v2);
  swift_beginAccess();
  sub_1001CF58C(0, v5);
  return swift_endAccess();
}

char *sub_100146960(unint64_t a1, char a2)
{
  v26 = type metadata accessor for UUID();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a2)
  {
    if (a1 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = _swiftEmptyArrayStorage;
    if (v8)
    {
      v27 = _swiftEmptyArrayStorage;
      result = sub_1000CDF40(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = 0;
      v9 = v27;
      v11 = a1;
      v24 = a1 & 0xC000000000000001;
      v25 = a1;
      v12 = (v4 + 8);
      v13 = v8;
      do
      {
        if (v24)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v14 = *(v11 + 8 * v10 + 32);
        }

        v15 = v14;
        v16 = [v14 uniqueIdentifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = UUID.uuidString.getter();
        v19 = v18;

        (*v12)(v6, v26);
        v27 = v9;
        v21 = v9[2];
        v20 = v9[3];
        if (v21 >= v20 >> 1)
        {
          sub_1000CDF40((v20 > 1), v21 + 1, 1);
          v9 = v27;
        }

        ++v10;
        v9[2] = v21 + 1;
        v22 = &v9[2 * v21];
        v22[4] = v17;
        v22[5] = v19;
        v11 = v25;
      }

      while (v13 != v10);
    }

    v23 = sub_100008F34(v9);

    return v23;
  }

  return result;
}

char *sub_100146B80@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_100146960(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

double sub_100146BB4(uint64_t *a1)
{
  v1 = *a1;
  *(sub_100143408()[2] + 24) = v1;

  sub_10005E744();

  CurrentValueSubject.send(_:)();

  return result;
}

uint64_t sub_100146C58(unint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (!i)
    {
      v2 = _swiftEmptyArrayStorage;
      goto LABEL_15;
    }

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_beginAccess();
        v8 = *(v7 + 32);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v6;
      }

      while (i != v6);
    }

    else
    {
      v9 = (v2 + 32);
      do
      {
        v10 = *v9++;
        swift_beginAccess();
        v11 = *(v10 + 32);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --i;
      }

      while (i);
    }

    v2 = _swiftEmptyArrayStorage;
LABEL_15:
    if (_swiftEmptyArrayStorage >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (!v12)
      {
LABEL_32:

        if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
        {
LABEL_54:
          v17 = _CocoaArrayWrapper.endIndex.getter();
          if (v17)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v17 = _swiftEmptyArrayStorage[2];
          if (v17)
          {
LABEL_35:
            v18 = 0;
            v19 = _swiftEmptyArrayStorage;
            do
            {
              v20 = v18;
              while (1)
              {
                if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
                {
                  v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v18 = v20 + 1;
                  if (__OFADD__(v20, 1))
                  {
                    goto LABEL_52;
                  }
                }

                else
                {
                  if (v20 >= _swiftEmptyArrayStorage[2])
                  {
                    goto LABEL_53;
                  }

                  v21 = _swiftEmptyArrayStorage[v20 + 4];
                  v18 = v20 + 1;
                  if (__OFADD__(v20, 1))
                  {
LABEL_52:
                    __break(1u);
LABEL_53:
                    __break(1u);
                    goto LABEL_54;
                  }
                }

                v22 = v21;
                v23 = [v22 identifier];
                if (v23)
                {
                  break;
                }

                ++v20;
                if (v18 == v17)
                {
                  goto LABEL_56;
                }
              }

              v24 = v23;
              v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v27 = v26;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_100009088(0, *(v19 + 2) + 1, 1, v19);
              }

              v29 = *(v19 + 2);
              v28 = *(v19 + 3);
              if (v29 >= v28 >> 1)
              {
                v19 = sub_100009088((v28 > 1), v29 + 1, 1, v19);
              }

              *(v19 + 2) = v29 + 1;
              v30 = &v19[16 * v29];
              *(v30 + 4) = v25;
              *(v30 + 5) = v27;
            }

            while (v18 != v17);
            goto LABEL_56;
          }
        }

        v19 = _swiftEmptyArrayStorage;
LABEL_56:

        v31 = sub_100008F34(v19);

        return v31;
      }
    }

    else
    {
      v12 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_32;
      }
    }

    v13 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v14 = _swiftEmptyArrayStorage[v13 + 4];
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ([v14 type] == 4)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v13;
      if (v16 == v12)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_100147050@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100146C58(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

double sub_100147084(uint64_t *a1)
{
  v1 = *a1;
  *(sub_100143408()[3] + 24) = v1;

  sub_10005E744();

  CurrentValueSubject.send(_:)();

  return result;
}

uint64_t sub_100147128()
{
  v41[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(90);
  v42 = 0;
  v43 = 0xE000000000000000;
  v0._object = 0x80000001002A1FB0;
  v0._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v0);
  sub_1001431EC(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___handoffSessionManager, type metadata accessor for HandoffSessionManager, sub_1000B9DD4);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1._countAndFlagsBits = 7104878;
  v1._object = 0xE300000000000000;
  String.append(_:)(v1);

  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 2570;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);

  v5._countAndFlagsBits = sub_1000B8FE0();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 2570;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7 = sub_100143100();
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 2570;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___hapticPresenter, type metadata accessor for HapticPresenter, 80, sub_10014A5C0);
  v14._countAndFlagsBits = sub_10014A1FC();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 2570;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  sub_1001431EC(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___remoteFollowerPresenter, type metadata accessor for RemoteFollowerPresenter, sub_100182800);
  v16._countAndFlagsBits = sub_100182298();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 2570;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v41[0] = sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServicePresenter, type metadata accessor for ViewServicePresenter, 72, sub_1000E274C);
  type metadata accessor for ViewServicePresenter();
  _print_unlocked<A, B>(_:_:)();

  v18._countAndFlagsBits = 2570;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___telemetryManager, type metadata accessor for HandoffTelemetryManager, 64, sub_10004E50C);
  v19._countAndFlagsBits = sub_100048F24();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 2570;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  if (qword_100339180 != -1)
  {
    swift_once();
  }

  v21 = qword_10038B4E8;
  v22 = [v21 description];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 2570;
  v27._object = 0xE200000000000000;
  String.append(_:)(v27);
  v28 = sub_1001411E4();
  v41[3] = type metadata accessor for ActivityProxy();
  v41[0] = v28;

  v29 = sub_100057FC8(v41);
  v31 = v30;
  sub_10000903C(v41);
  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 2570;
  v33._object = 0xE200000000000000;
  String.append(_:)(v33);
  v34 = sub_100142EBC();
  v35 = [v34 description];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);

  return v42;
}

unint64_t sub_1001477CC()
{
  _StringGuts.grow(_:)(23);

  v0 = UUID.uuidString.getter();
  sub_10000B584(8, v0, v1);

  v2 = static String._fromSubstring(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0xD000000000000014;
}

uint64_t sub_100147914@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100147990@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100141ADC(*a1);
  *a2 = result;
  return result;
}

id sub_1001479BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v2;
  return sub_100056F7C(v3);
}

double sub_1001479E8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_100147A28(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100147A80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100147BCC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003474F8);
  sub_100003078(v0, qword_1003474F8);
  return Logger.init(subsystem:category:)();
}

double sub_100147C74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100147FAC(v2);
  }

  return result;
}

double sub_100147CD4(uint64_t *a1)
{
  sub_1000935F8();

  sub_100035D04(&qword_1003476D8, &qword_10027F150);
  sub_100035D04(&qword_1003476E0, &qword_10027F158);
  sub_10000E244(&qword_1003476E8, &qword_1003476D8, &qword_10027F150, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

double sub_100147DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100148464(v4, a2);
  }

  return result;
}

void *sub_100147E44()
{
  v1 = v0;
  if (qword_1003390A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003474F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  swift_unownedRelease();

  sub_10009D4C8(*(v1 + 64));

  return v1;
}

uint64_t sub_100147F54()
{
  sub_100147E44();

  return swift_deallocClassInstance();
}

double sub_100147FAC(uint64_t a1)
{
  v2 = v1;
  if (qword_1003390A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_1003474F8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD000000000000014, 0x80000001002A21B0, &v27);
    *(v7 + 12) = 2080;
    if (a1)
    {
      v8 = UUID.uuidString.getter();
      sub_10000B584(8, v8, v9);

      v10 = static String._fromSubstring(_:)();
      v12 = v11;

      v13._countAndFlagsBits = v10;
      v2 = v1;
      v13._object = v12;
      String.append(_:)(v13);

      v14._countAndFlagsBits = 32;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v17._countAndFlagsBits = sub_1000092A0(v15, v16);
      String.append(_:)(v17);

      v18._countAndFlagsBits = 62;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19 = 60;
      v20 = 0xE100000000000000;
    }

    else
    {
      v20 = 0xE300000000000000;
      v19 = 7104878;
    }

    v21 = sub_100017494(v19, v20, &v27);

    *(v7 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: session=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_100149B18();
  if (a1)
  {
    v23 = *(v2 + 16);
    swift_unownedRetainStrong();
    v24 = *(v23 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer);

    swift_unknownObjectRetain();

    *(v24 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_activeDeviceClass) = sub_100092098(v25, v26);
    swift_unknownObjectRelease();
    sub_100149CBC();
  }

  return result;
}

void *sub_1001482DC(__n128 a1)
{
  v2 = v1;
  v3 = *(v1 + 64);
  v4 = v3;
  if (v3 == 1)
  {
    if (qword_100338FF8 != -1)
    {
      swift_once();
    }

    v5 = qword_10038B150;
    v6 = sub_100104D24();
    swift_getKeyPath();
    sub_10014AC90(&qword_100344D08, type metadata accessor for HapticPattern, &unk_10027ADB4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v5 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
    v8 = *(v5 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name + 8);
    type metadata accessor for HapticPatternPlayer();
    swift_allocObject();

    v4 = sub_1001F9170(v7, v8, v6);
    v9 = *(v2 + 64);
    *(v2 + 64) = v4;

    sub_10009D4C8(v9);
  }

  sub_10014AD9C(v3);
  return v4;
}

void sub_100148464(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v116 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v117 = v8;
  v118 = &v98[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v115 = &v98[-v9];
  v10 = type metadata accessor for Logger();
  v113 = *(v10 - 8);
  __chkstk_darwin(v10);
  v107 = v11;
  v109 = &v98[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = sub_100035D04(&qword_1003476F0, &unk_10027F160);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v98[-v12];
  v13 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v13 - 8);
  v102 = &v98[-v14];
  v104 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v16 = &v98[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v108 = sub_100035D04(&qword_1003476F8, &qword_10027F170);
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v98[-v17];
  v18 = type metadata accessor for DispatchWorkItemFlags();
  isa = v18[-1].isa;
  v125 = v18;
  __chkstk_darwin(v18);
  v121 = &v98[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for DispatchQoS();
  v122 = *(v20 - 8);
  v123 = v20;
  __chkstk_darwin(v20);
  v120 = &v98[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1003390A8 != -1)
  {
    swift_once();
  }

  v22 = sub_100003078(v10, qword_1003474F8);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v114 = v10;
  v101 = v16;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v119 = v22;
    v27 = v26;
    v100 = swift_slowAlloc();
    v132 = v100;
    *v27 = 136315650;
    *(v27 + 4) = sub_100017494(0x5F28656C646E6168, 0xEE00293A726F663ALL, &v132);
    *(v27 + 12) = 2080;
    v28 = sub_100101184(a1);
    v99 = v24;
    v30 = v3;
    v31 = sub_100017494(v28, v29, &v132);

    *(v27 + 14) = v31;
    *(v27 + 22) = 2080;
    aBlock = 60;
    v127 = 0xE100000000000000;
    v32 = UUID.uuidString.getter();
    sub_10000B584(8, v32, v33);
    v34 = a2;

    v3 = v30;
    v35 = static String._fromSubstring(_:)();
    v37 = v36;

    v38._countAndFlagsBits = v35;
    v38._object = v37;
    String.append(_:)(v38);
    a2 = v34;

    v39._countAndFlagsBits = 32;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    v42._countAndFlagsBits = sub_1000092A0(v40, v41);
    String.append(_:)(v42);

    v43._countAndFlagsBits = 62;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    v44 = sub_100017494(aBlock, v127, &v132);

    *(v27 + 24) = v44;
    _os_log_impl(&_mh_execute_header, v23, v99, "%s: effect=%s, session=%s", v27, 0x20u);
    swift_arrayDestroy();

    v22 = v119;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      if (qword_100338F18 != -1)
      {
        swift_once();
      }

      v63 = *(qword_10038B0B8 + 936);
      v64 = sub_1000031CC();

      if (v64)
      {
        aBlock = sub_10009219C();
        swift_allocObject();
        swift_weakInit();
        v65 = sub_100035D04(&qword_100343068, &qword_100278EF0);
        isa = sub_10000E244(&qword_100343078, &qword_100343068, &qword_100278EF0, &protocol conformance descriptor for AnyPublisher<A, B>);
        v125 = v65;
        v66 = Publisher<>.sink(receiveValue:)();

        v3[5] = v66;

        aBlock = *(a2 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___progressPublisher);

        v67 = v101;
        static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
        if (qword_1003391E8 != -1)
        {
          swift_once();
        }

        v68 = qword_10038B5B8;
        v132 = qword_10038B5B8;
        v69 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        v70 = v102;
        (*(*(v69 - 8) + 56))(v102, 1, 1, v69);
        sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
        sub_1000513CC();
        v71 = v68;
        v72 = v105;
        Publisher.debounce<A>(for:scheduler:options:)();
        sub_1000097E8(v70, &qword_10034C680, &qword_100270390);

        (*(v103 + 8))(v67, v104);

        v73 = static os_log_type_t.info.getter();
        v74 = v113;
        v123 = *(v113 + 16);
        v75 = v109;
        v76 = v114;
        v123(v109, v22, v114);
        v77 = (*(v74 + 80) + 64) & ~*(v74 + 80);
        v119 = v22;
        v78 = v77 + v107;
        v79 = swift_allocObject();
        *(v79 + 2) = sub_1001499C4;
        *(v79 + 3) = 0;
        *(v79 + 4) = 0;
        *(v79 + 5) = 0xE000000000000000;
        *(v79 + 6) = 0;
        *(v79 + 7) = 0xE000000000000000;
        (*(v74 + 32))(&v79[v77], v75, v76);
        v79[v78] = v73;
        sub_10000E244(&qword_100347700, &qword_1003476F8, &qword_10027F170, &protocol conformance descriptor for Publishers.Debounce<A, B>);
        v80 = v110;
        v81 = v108;
        Publisher.map<A>(_:)();

        sub_10000E244(&qword_100347708, &qword_1003476F0, &unk_10027F160, &protocol conformance descriptor for Publishers.Map<A, B>);
        v82 = v112;
        v83 = Publisher.eraseToAnyPublisher()();
        (*(v111 + 8))(v80, v82);
        (*(v106 + 8))(v72, v81);
        aBlock = v83;
        swift_allocObject();
        swift_weakInit();
        v84 = Publisher<>.sink(receiveValue:)();

        v3[6] = v84;

        v85 = v3[2];
        swift_unownedRetainStrong();
        v86 = *(v85 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer);
        swift_unknownObjectRetain();

        v87 = v115;
        v123(v115, v119, v76);
        (*(v74 + 56))(v87, 0, 1, v76);
        v88 = v118;
        sub_10007E4B8(v87, v118);
        v89 = (*(v116 + 80) + 32) & ~*(v116 + 80);
        v90 = swift_allocObject();
        *(v90 + 16) = 0xD000000000000015;
        *(v90 + 24) = 0x80000001002A2140;
        sub_10007E4B8(v88, v90 + v89);
        v130 = sub_10007E528;
        v131 = v90;
        aBlock = _NSConcreteStackBlock;
        v127 = 1107296256;
        v128 = sub_100124498;
        v129 = &unk_10030ACE0;
        v91 = _Block_copy(&aBlock);

        [v86 activateWithCompletion:v91];
        _Block_release(v91);
        swift_unknownObjectRelease();
      }

      return;
    }

    if (a1 == 5)
    {

      sub_100149B18();
      return;
    }

    goto LABEL_17;
  }

  if (a1 == 2)
  {
    sub_100149B18();
    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    v56 = static OS_dispatch_queue.main.getter();
    v130 = sub_10014AD88;
    v131 = v3;
    aBlock = _NSConcreteStackBlock;
    v127 = 1107296256;
    v58 = &unk_10030AD08;
    goto LABEL_24;
  }

  if (a1 != 3)
  {
LABEL_17:
    sub_100149B18();
    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v49 = qword_10038B0B8;
    v50 = *(qword_10038B0B8 + 928);
    v51 = sub_1000031CC();

    if ((v51 & 1) == 0)
    {
      return;
    }

    v52 = 968;
    if (a1)
    {
      v52 = 984;
    }

    v53 = *(v49 + v52);
    sub_1000624D4();
    v55 = v54;

    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    v56 = static OS_dispatch_queue.main.getter();
    v57 = swift_allocObject();
    *(v57 + 16) = v3;
    *(v57 + 24) = v55;
    v130 = sub_10014AD90;
    v131 = v57;
    aBlock = _NSConcreteStackBlock;
    v127 = 1107296256;
    v58 = &unk_10030AD58;
LABEL_24:
    v128 = sub_100018AB8;
    v129 = v58;
    v59 = _Block_copy(&aBlock);

    v60 = v120;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10014AC90(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
    v61 = v121;
    v62 = v125;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v59);

    (*(isa + 8))(v61, v62);
    (*(v122 + 8))(v60, v123);
    return;
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v45 = *(qword_10038B0B8 + 200);
  sub_1000610B4(&aBlock);

  v47 = v127;
  if (v127 >> 60 == 15)
  {
    if (sub_1001482DC(v46))
    {
      sub_1001F8B68();
LABEL_34:

      return;
    }

    v125 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v125, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v125, v94, "### No hapticPatternPlayer?", v95, 2u);
    }

    v96 = v125;
  }

  else
  {
    v48 = aBlock;
    sub_100003118(0, &qword_100347710, CHHapticPattern_ptr);
    v92 = sub_10024BC10();
    type metadata accessor for HapticPatternPlayer();
    swift_allocObject();
    v93 = v92;
    v97 = sub_1001F9170(0x6C41206D6F6F7256, 0xE900000000000074, v93);
    v3[9] = v97;

    if (v97)
    {
      sub_1001F8B68();

      sub_10006DB04(v48, v47);
      goto LABEL_34;
    }

    sub_10006DB04(v48, v47);
  }
}

uint64_t sub_1001497EC(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  swift_unownedRetainStrong();
  sub_10007E790(v3 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_impactGeneratorHard, v7);

  v4 = v8;
  v5 = v9;
  sub_10000EBC0(v7, v8);
  (*(v5 + 8))(v4, v5, a2);
  return sub_10000903C(v7);
}

uint64_t sub_10014988C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_unownedRetainStrong();
  sub_10007E790(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_notificationGenerator, v5);

  v2 = v6;
  v3 = v7;
  sub_10000EBC0(v5, v6);
  (*(v3 + 8))(0, v2, v3);
  return sub_10000903C(v5);
}

uint64_t sub_100149920(int *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 16);
    swift_unownedRetainStrong();

    v5 = *(v4 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer);
    swift_unknownObjectRetain();

    *(v5 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_progress) = v2;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001499C4(int *a1)
{
  _StringGuts.grow(_:)(52);
  v1._countAndFlagsBits = 0xD000000000000021;
  v1._object = 0x80000001002A2160;
  String.append(_:)(v1);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._object = 0x80000001002A2190;
  v3._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v3);
  return 0;
}

uint64_t sub_100149A80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    swift_unownedRetainStrong();

    v4 = *(v3 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer);
    swift_unknownObjectRetain();

    [v4 invalidate];
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_100149B18()
{
  v1 = v0;
  if (qword_1003390A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003474F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x2928706F7473, 0xE600000000000000, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = v1[2];
  swift_unownedRetainStrong();
  v8 = *(v7 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer);
  swift_unknownObjectRetain();

  [v8 invalidate];
  swift_unknownObjectRelease();
  v1[5] = 0;

  v1[6] = 0;

  return result;
}

uint64_t sub_100149CBC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003390A8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_1003474F8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100017494(0x292870657270, 0xE600000000000000, aBlock);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s", v11, 0xCu);
    sub_10000903C(v12);
  }

  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10014AC88;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_10030AC68;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10014AC90(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v16);
}

uint64_t sub_10014A0A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  sub_10007E790(v2 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_impactGeneratorSoft, v12);

  v3 = v13;
  v4 = v14;
  sub_10000EBC0(v12, v13);
  (*(v4 + 16))(v3, v4);
  sub_10000903C(v12);
  v5 = *(a1 + 16);
  swift_unownedRetainStrong();
  sub_10007E790(v5 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_impactGeneratorHard, v12);

  v6 = v13;
  v7 = v14;
  sub_10000EBC0(v12, v13);
  (*(v7 + 16))(v6, v7);
  sub_10000903C(v12);
  v8 = *(a1 + 16);
  swift_unownedRetainStrong();
  sub_10007E790(v8 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_notificationGenerator, v12);

  v9 = v13;
  v10 = v14;
  sub_10000EBC0(v12, v13);
  (*(v10 + 16))(v9, v10);
  return sub_10000903C(v12);
}

uint64_t sub_10014A1FC()
{
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10026F050;
  *(v1 + 32) = 0xD000000000000015;
  *(v1 + 40) = 0x80000001002A2120;
  strcpy(v31, "hapticPlayer=");
  HIWORD(v31[1]) = -4864;
  swift_unownedRetainStrong();
  swift_unknownObjectRetain();

  swift_getObjectType();
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  swift_unknownObjectRelease();
  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6 = v31[0];
  v7 = v31[1];
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  if (v9 >= v8 >> 1)
  {
    v1 = sub_100009088((v8 > 1), v9 + 1, 1, v1);
  }

  v10 = 7104878;
  *(v1 + 16) = v9 + 1;
  v11 = v1 + 16 * v9;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  strcpy(v31, "playTask=");
  WORD1(v31[1]) = 0;
  HIDWORD(v31[1]) = -385875968;
  if (*(v0 + 40))
  {
    type metadata accessor for AnyCancellable();

    v12 = String.init<A>(describing:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = v14;
  String.append(_:)(*&v12);

  v16 = v31[0];
  v17 = v31[1];
  v19 = *(v1 + 16);
  v18 = *(v1 + 24);
  if (v19 >= v18 >> 1)
  {
    v1 = sub_100009088((v18 > 1), v19 + 1, 1, v1);
  }

  *(v1 + 16) = v19 + 1;
  v20 = v1 + 16 * v19;
  *(v20 + 32) = v16;
  *(v20 + 40) = v17;
  strcpy(v31, "timeoutTask=");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  if (*(v0 + 48))
  {
    type metadata accessor for AnyCancellable();

    v10 = String.init<A>(describing:)();
    v22 = v21;
  }

  else
  {
    v22 = 0xE300000000000000;
  }

  v23._countAndFlagsBits = v10;
  v23._object = v22;
  String.append(_:)(v23);

  v24 = v31[0];
  v25 = v31[1];
  v27 = *(v1 + 16);
  v26 = *(v1 + 24);
  if (v27 >= v26 >> 1)
  {
    v1 = sub_100009088((v26 > 1), v27 + 1, 1, v1);
  }

  *(v1 + 16) = v27 + 1;
  v28 = v1 + 16 * v27;
  *(v28 + 32) = v24;
  *(v28 + 40) = v25;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v29 = BidirectionalCollection<>.joined(separator:)();

  return v29;
}

uint64_t sub_10014A568(uint64_t a1)
{
  result = sub_10014AC90(&qword_1003476A0, type metadata accessor for HapticPlayer, &protocol conformance descriptor for NSObject);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10014A5C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_10034C660, &qword_100278DD0);
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = sub_100035D04(&qword_1003476A8, &qword_10027F130);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = sub_100035D04(&qword_1003476B0, &unk_10027F138);
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v31 = &v27 - v11;
  *(v1 + 24) = 3;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v12 = *(qword_10038B0B8 + 1368);
  sub_10005F4E4();
  v14 = v13;

  *(v2 + 56) = &_swiftEmptySetSingleton;
  *(v2 + 32) = v14;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 64) = xmmword_100271890;
  if (qword_1003390A8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003078(v15, qword_1003474F8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Init", v18, 2u);
  }

  *(v2 + 16) = a1;
  v19 = *(a1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer) + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_frequency;
  *v19 = *(v2 + 32);
  *(v19 + 8) = 0;
  swift_unownedRetain();
  v34 = sub_100140E18();
  swift_allocObject();
  swift_weakInit();

  sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
  sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v34 = *(a1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);
  type metadata accessor for HandoffSession(0);

  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_1003476B8, &qword_10027F148);
  v20 = v28;
  Publishers.CompactMap.map<A>(_:)();
  (*(v27 + 8))(v6, v20);
  sub_10000E244(&qword_1003476C0, &qword_1003476A8, &qword_10027F130, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_10000E244(&qword_1003476C8, &qword_1003476B8, &qword_10027F148, &protocol conformance descriptor for Publishers.Map<A, B>);
  v21 = v30;
  v22 = v31;
  Publisher<>.switchToLatest()();
  (*(v29 + 8))(v9, v21);
  v23 = swift_allocObject();
  swift_weakInit();

  v24 = swift_allocObject();
  *(v24 + 16) = sub_10014AC50;
  *(v24 + 24) = v23;
  sub_10000E244(&qword_1003476D0, &qword_1003476B0, &unk_10027F138, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v25 = v33;
  Publisher<>.sink(receiveValue:)();

  (*(v32 + 8))(v22, v25);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_10014AC90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10014ACE0(float *a1@<X0>, float *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a2 = sub_1001BFFA4(*(v2 + 16), *a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_10014AD9C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_10014ADC8(uint64_t a1)
{
  sub_10014AE50(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ExperienceEvent(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10014AE50(uint64_t a1)
{
  if (!qword_100347798)
  {
    type metadata accessor for ExperienceEffect(255);
    type metadata accessor for ExperienceEvent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100347798);
    }
  }
}

uint64_t sub_10014AEC4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    v15 = static os_log_type_t.error.getter();
    v25 = 0;
    v26 = 0xE000000000000000;
    v16._countAndFlagsBits = 539173667;
    v16._object = 0xE400000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = a2;
    v17._object = a3;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 8250;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    v24[1] = a1;
    sub_100035D04(&unk_100346020, &qword_100271A00);
    _print_unlocked<A, B>(_:_:)();

    a2 = v25;
    a3 = v26;
  }

  else
  {
    v15 = static os_log_type_t.info.getter();
  }

  sub_1000EF05C(a4, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10014B1D8(v10);
    NSLog(_:_:)();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v20 = Logger.logObject.getter();
    if (os_log_type_enabled(v20, v15))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      v23 = sub_100017494(a2, a3, &v25);

      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v20, v15, "%s", v21, 0xCu);
      sub_10000903C(v22);
    }

    else
    {
    }

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_10014B1D8(uint64_t a1)
{
  v2 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014B240(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t, BOOL), uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v29 = a2;
  v9 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = static os_log_type_t.info.getter();
  if (a1)
  {
    if (a3)
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      swift_errorRetain();
      v17._countAndFlagsBits = 539173667;
      v17._object = 0xE400000000000000;
      String.append(_:)(v17);
      v18._countAndFlagsBits = v29;
      v18._object = a3;
      String.append(_:)(v18);
      v19._countAndFlagsBits = 8250;
      v19._object = 0xE200000000000000;
      String.append(_:)(v19);
      v30 = a1;
      sub_100035D04(&unk_100346020, &qword_100271A00);
      _print_unlocked<A, B>(_:_:)();
      a3 = v32;
      v29 = v31;
    }

    else
    {
      swift_errorRetain();
    }

    v20 = static os_log_type_t.error.getter();
  }

  else
  {
    v20 = v16;
  }

  a4(a1, a1 != 0);
  if (!a3)
  {
    return sub_100077140(a1, a1 != 0);
  }

  sub_1000EF05C(v28, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10014B1D8(v11);
    NSLog(_:_:)();

    return sub_100077140(a1, a1 != 0);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v22 = Logger.logObject.getter();
    if (os_log_type_enabled(v22, v20))
    {
      LODWORD(v28) = a1 != 0;
      v23 = v13;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      v26 = sub_100017494(v29, a3, &v31);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v22, v20, "%s", v24, 0xCu);
      sub_10000903C(v25);

      sub_100077140(a1, v28);

      return (*(v23 + 8))(v15, v12);
    }

    else
    {
      sub_100077140(a1, a1 != 0);

      return (*(v13 + 8))(v15, v12);
    }
  }
}

double sub_10014B5E8()
{
  type metadata accessor for HandoffUsageOverTimeMonitor();
  v0 = swift_allocObject();
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10038B0B8 + 488);
  v2 = sub_10006045C();

  *(v0 + 16) = v2;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  qword_10038B2C0 = v0;
  return result;
}

uint64_t sub_10014B688()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for FeatureUsageOverTime();
    v3 = v0;
    v1 = swift_allocObject();
    sub_10014BE2C(v2, sub_10014B734, 0, sub_10014B7A4, 0);
    *(v3 + 24) = v1;
  }

  return v1;
}

uint64_t sub_10014B734()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 496);
  v1 = sub_100061554();

  return v1;
}

void sub_10014B7A4(uint64_t a1)
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 496);

  sub_10025A734(v1);
}

uint64_t sub_10014B834()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for FeatureUsageOverTime();
    v3 = v0;
    v1 = swift_allocObject();
    sub_10014BE2C(v2, sub_10014B8E0, 0, sub_10014B950, 0);
    *(v3 + 32) = v1;
  }

  return v1;
}

uint64_t sub_10014B8E0()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 512);
  v1 = sub_100061554();

  return v1;
}

void sub_10014B950(uint64_t a1)
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 512);

  sub_10025A734(v1);
}

uint64_t sub_10014B9E0()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for FeatureUsageOverTime();
    v3 = v0;
    v1 = swift_allocObject();
    sub_10014BE2C(v2, sub_10014BA8C, 0, sub_10014BAFC, 0);
    *(v3 + 40) = v1;
  }

  return v1;
}

uint64_t sub_10014BA8C()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 504);
  v1 = sub_100061554();

  return v1;
}

void sub_10014BAFC(uint64_t a1)
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 504);

  sub_10025A734(v1);
}

uint64_t sub_10014BB8C()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for FeatureUsageOverTime();
    v3 = v0;
    v1 = swift_allocObject();
    sub_10014BE2C(v2, sub_10014BC38, 0, sub_10014BCA8, 0);
    *(v3 + 48) = v1;
  }

  return v1;
}

uint64_t sub_10014BC38()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 520);
  v1 = sub_100061554();

  return v1;
}

void sub_10014BCA8(uint64_t a1)
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 520);

  sub_10025A734(v1);
}

uint64_t sub_10014BD38()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10014BDAC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003477C8);
  sub_100003078(v0, qword_1003477C8);
  return Logger.init(subsystem:category:)();
}

void *sub_10014BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = [objc_allocWithZone(NSDateFormatter) init];
  v13 = String._bridgeToObjectiveC()();
  [v12 setDateFormat:v13];

  v6[7] = v12;
  if (qword_1003390B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_1003477C8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Init", v17, 2u);
  }

  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return v6;
}

uint64_t sub_10014BF9C()
{
  v1 = v0;
  if (qword_1003390B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003477C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_10014C094()
{
  sub_10014BF9C();

  return swift_deallocClassInstance();
}

uint64_t sub_10014C0EC()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v59 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v56 - v6;
  if (qword_1003390B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_1003477C8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v63 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100017494(0x63634F6567617375, 0xEF29286465727275, &v63);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s", v11, 0xCu);
    sub_10000903C(v12);
  }

  v13 = (*(v1 + 24))();
  Date.init()();
  v61 = v1;
  v14 = *(v1 + 56);
  v15.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v16 = [v14 stringFromDate:v15.super.isa];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = *(v3 + 8);
  v60 = v3 + 8;
  v58 = v20;
  v20(v7, v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = v13;
  v23 = sub_100004B58(v17, v19);
  v24 = *(v13 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_14;
  }

  LOBYTE(v15.super.isa) = v22;
  if (*(v13 + 24) >= v26)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v63;
      if (v22)
      {
        goto LABEL_12;
      }

LABEL_15:
      sub_10004E06C(v23, v17, v19, 0, v29);
LABEL_16:
      v30 = *(v29 + 56);
      v31 = *(v30 + 8 * v23);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (!v32)
      {
        *(v30 + 8 * v23) = v33;
        Date.init()();
        if (__OFSUB__(*(v61 + 16), 1))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        static Date.- infix(_:_:)();
        v57 = v2;
        v58(v7, v2);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v35 = [v14 stringFromDate:isa];

        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = 1 << *(v29 + 32);
        v40 = -1;
        if (v39 < 64)
        {
          v40 = ~(-1 << v39);
        }

        v41 = v40 & *(v29 + 64);
        v42 = (v39 + 63) >> 6;

        v43 = 0;
        v62 = v29;
        while (v41)
        {
LABEL_26:
          v45 = __clz(__rbit64(v41));
          v41 &= v41 - 1;
          v46 = (*(v29 + 48) + ((v43 << 10) | (16 * v45)));
          v47 = *v46;
          v48 = v46[1];
          if (*v46 != v36 || v48 != v38) && (_stringCompareWithSmolCheck(_:_:expecting:)())
          {

            v50 = sub_100004B58(v47, v48);
            v52 = v51;

            if (v52)
            {
              v53 = v62;
              v54 = swift_isUniquelyReferenced_nonNull_native();
              v63 = v53;
              if (!v54)
              {
                sub_100089D04();
                v53 = v63;
              }

              v62 = v53;
              sub_100005840(v50, v53);
            }
          }
        }

        while (1)
        {
          v44 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          if (v44 >= v42)
          {

            (*(v61 + 40))(v62);

            return (v58)(v59, v57);
          }

          v41 = *(v29 + 64 + 8 * v44);
          ++v43;
          if (v41)
          {
            v43 = v44;
            goto LABEL_26;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_14:
    sub_100089D04();
    v29 = v63;
    if (v15.super.isa)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  sub_1000865E0(v26, isUniquelyReferenced_nonNull_native);
  v27 = sub_100004B58(v17, v19);
  if ((v15.super.isa & 1) == (v28 & 1))
  {
    v23 = v27;
    v29 = v63;
    if ((v15.super.isa & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_12:

    goto LABEL_16;
  }

LABEL_39:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

NSObject *sub_10014C668(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v59 = type metadata accessor for Date();
  v64 = *(v59 - 8);
  v6 = __chkstk_darwin(v59);
  v63 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v55 - v8;
  if (qword_1003390B8 != -1)
  {
    goto LABEL_46;
  }

  while (2)
  {
    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_1003477C8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v65 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_100017494(0xD000000000000016, 0x80000001002A2340, &v65);
      *(v13 + 12) = 2048;
      *(v13 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s: days=%ld", v13, 0x16u);
      sub_10000903C(v14);
    }

    if (a1 < 1 || v4[2] < a1)
    {

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134218240;
        *(v17 + 4) = a1;
        *(v17 + 12) = 2048;
        *(v17 + 14) = v4[2];

        _os_log_impl(&_mh_execute_header, v15, v16, "### Interval not tracked: days=%ld, self.maxDaysToRemember=%ld", v17, 0x16u);
      }

      else
      {
      }

      sub_10014CD30();
      swift_allocError();
      swift_willThrow();
      return v15;
    }

    v55 = v3;
    v18 = v4[3];
    v60 = v4;
    v56 = v18();
    v65 = _swiftEmptyArrayStorage;
    sub_1000CE060(0, a1, 0);
    v19 = 0;
    v20 = v65;
    v62 = (v64 + 8);
    v21 = v59;
    do
    {
      v22 = v63;
      Date.init()();
      static Date.- infix(_:_:)();
      v61 = *v62;
      v61(v22, v21);
      v65 = v20;
      v24 = v20[2];
      v23 = v20[3];
      if (v24 >= v23 >> 1)
      {
        sub_1000CE060((v23 > 1), v24 + 1, 1);
        v21 = v59;
        v20 = v65;
      }

      ++v19;
      v20[2] = v24 + 1;
      v25 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v3 = *(v64 + 72);
      (*(v64 + 32))(v20 + v25 + v3 * v24, v9, v21);
    }

    while (a1 != v19);
    v9 = v20[2];
    if (v9)
    {
      v65 = _swiftEmptyArrayStorage;
      sub_1000CDF40(0, v9, 0);
      v26 = v59;
      v27 = v65;
      v28 = *(v60 + 56);
      v29 = v20 + v25;
      v57 = *(v64 + 16);
      v58 = v28;
      v64 += 16;
      do
      {
        v30 = v63;
        v57(v63, v29, v26);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v32 = [v58 stringFromDate:isa];

        v26 = v59;
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v61(v30, v26);
        v65 = v27;
        a1 = v27[2];
        v35 = v27[3];
        if (a1 >= v35 >> 1)
        {
          sub_1000CDF40((v35 > 1), a1 + 1, 1);
          v26 = v59;
          v27 = v65;
        }

        v27[2] = a1 + 1;
        v36 = &v27[2 * a1];
        v36[4] = v60;
        v36[5] = v34;
        v29 = v3 + v29;
        --v9;
      }

      while (v9);

      v4 = v27;
    }

    else
    {

      v4 = _swiftEmptyArrayStorage;
    }

    v37 = v4[2];
    v38 = v56;
    if (!v37)
    {
      v40 = _swiftEmptyArrayStorage;
      goto LABEL_36;
    }

    v39 = 0;
    v3 = v4 + 5;
    a1 = (v37 - 1);
    v40 = _swiftEmptyArrayStorage;
    do
    {
      v41 = &v3[2 * v39];
      v9 = v39;
      while (1)
      {
        if (v9 >= v4[2])
        {
          __break(1u);
          goto LABEL_45;
        }

        if (*(v38 + 16))
        {
          break;
        }

LABEL_25:
        ++v9;
        v41 += 2;
        if (v37 == v9)
        {
          goto LABEL_36;
        }
      }

      v43 = *(v41 - 1);
      v42 = *v41;

      v44 = sub_100004B58(v43, v42);
      if ((v45 & 1) == 0)
      {

        goto LABEL_25;
      }

      v46 = *(*(v38 + 56) + 8 * v44);

      v47 = a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1000AFBB8(0, *(v40 + 2) + 1, 1, v40);
      }

      v49 = *(v40 + 2);
      v48 = *(v40 + 3);
      if (v49 >= v48 >> 1)
      {
        v40 = sub_1000AFBB8((v48 > 1), v49 + 1, 1, v40);
      }

      v39 = v9 + 1;
      *(v40 + 2) = v49 + 1;
      *&v40[8 * v49 + 32] = v46;
      a1 = v47;
      v38 = v56;
    }

    while (v47 != v9);
LABEL_36:

    v50 = *(v40 + 2);
    if (v50)
    {
      v15 = 0;
      v51 = (v40 + 32);
      while (1)
      {
        v52 = *v51++;
        v53 = __OFADD__(v15, v52);
        v15 = (v15 + v52);
        if (v53)
        {
          break;
        }

        if (!--v50)
        {
          goto LABEL_42;
        }
      }

LABEL_45:
      __break(1u);
LABEL_46:
      swift_once();
      continue;
    }

    break;
  }

  v15 = 0;
LABEL_42:

  return v15;
}