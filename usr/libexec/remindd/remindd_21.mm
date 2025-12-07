Swift::Int sub_10023A7D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0x80000001007EA980;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

double sub_10023A85C(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0x80000001007EA980;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
  return result;
}

Swift::Int sub_10023A8CC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 0x80000001007EA980;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_10023A94C(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E27F0, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_10023A9AC(unint64_t *a1@<X8>)
{
  v2 = 0x80000001007EA980;
  v3 = 0x68636E75616CLL;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

void sub_10023A9EC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration + 8);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (qword_100935CE0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10093E500);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "#️⃣ RDSharedInlineTagAutoConvertEngine Starting...", v13, 2u);
  }

  v14 = OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_cancellables;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if ((v15 & 0xC000000000000001) != 0)
  {

    v16 = __CocoaSet.count.getter();
    v15, v17, v18, v19, v20, v21, v22, v23;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  else if (*(v15 + 16))
  {
LABEL_7:
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 2u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  sub_10023ACE0();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "#️⃣ RDSharedInlineTagAutoConvertEngine Started";
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t sub_10023ACE0()
{
  v1 = *v0;
  v67 = v0;
  v68 = v1;
  v2 = sub_1000F5104(&qword_10093E6C8, &qword_10079C960);
  v3 = *(v2 - 8);
  v60 = v2;
  v61 = v3;
  __chkstk_darwin(v2, v4);
  v57 = &v44 - v5;
  v6 = sub_1000F5104(&qword_10093E6D0, &qword_10079C968);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  __chkstk_darwin(v6, v8);
  v58 = &v44 - v9;
  v10 = sub_1000F5104(&qword_10093E6D8, &qword_10079C970);
  v11 = *(v10 - 8);
  v64 = v10;
  v65 = v11;
  __chkstk_darwin(v10, v12);
  v59 = &v44 - v13;
  v14 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v14 - 8, v15);
  v48 = &v44 - v16;
  v17 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v21 = &v44 - v20;
  v51 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v56 = *(v51 - 8);
  __chkstk_darwin(v51, v22);
  v24 = &v44 - v23;
  v52 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v54 = *(v52 - 8);
  __chkstk_darwin(v52, v25);
  v27 = &v44 - v26;
  v70 = sub_100441A9C(0xD000000000000022, 0x800000010079C8D0, 0);
  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_1000F5104(&unk_100936F70, &unk_100791B60);
  v55 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();
  sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40, &protocol conformance descriptor for Publishers.Map<A, B>);
  Publisher.filter(_:)();

  (*(v18 + 8))(v21, v17);
  v53 = v67 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration;
  v70 = *(v67 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration + 8);
  v28 = v70;
  v66 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v29 = *(v66 - 8);
  v49 = *(v29 + 56);
  v50 = v29 + 56;
  v30 = v48;
  v49(v48, 1, 1, v66);
  v47 = sub_100007F54();
  sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0, &protocol conformance descriptor for Publishers.Filter<A>);
  v46 = sub_100006CA4();
  v31 = v28;
  v45 = v31;
  v32 = v51;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v30, &qword_100939980, &unk_10079ADA0);
  v56[1](v24, v32);
  v56 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v33 = v52;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v54 + 8))(v27, v33);
  v54 = OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_cancellables;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v70 = sub_10023B6E8();
  v69 = sub_10023BBC4();
  sub_1000F5104(&qword_10093E6F0, &qword_10079C978);
  sub_10000CB48(&qword_10093E6F8, &qword_10093E6F0, &qword_10079C978, v55);
  v34 = v57;
  Publisher.merge(with:)();

  type metadata accessor for RDSharedInlineTagAutoConvertEngine.Configuration(0);
  v70 = v31;
  v35 = v49;
  v49(v30, 1, 1, v66);
  sub_10000CB48(&qword_10093E700, &qword_10093E6C8, &qword_10079C960, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v36 = v58;
  v37 = v60;
  v38 = v34;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000050A4(v30, &qword_100939980, &unk_10079ADA0);
  v39 = v45;

  (*(v61 + 8))(v38, v37);
  v70 = v39;
  v35(v30, 1, 1, v66);
  sub_10000CB48(&qword_10093E708, &qword_10093E6D0, &qword_10079C968, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v40 = v59;
  v41 = v62;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v30, &qword_100939980, &unk_10079ADA0);

  (*(v63 + 8))(v36, v41);
  *(swift_allocObject() + 16) = v68;
  sub_10000CB48(&qword_10093E710, &qword_10093E6D8, &qword_10079C970, v56);
  v42 = v64;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  (*(v65 + 8))(v40, v42);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10023B6E8()
{
  v35 = sub_1000F5104(&unk_10093D130, &unk_100791BA0);
  v1 = *(v35 - 8);
  __chkstk_darwin(v35, v2);
  v4 = &v35 - v3;
  v5 = sub_1000F5104(&unk_100936FC0, &qword_10079C9A0);
  v6 = *(v5 - 8);
  v38 = v5;
  v39 = v6;
  __chkstk_darwin(v5, v7);
  v9 = &v35 - v8;
  v10 = sub_1000F5104(&unk_10093E740, &qword_10079C9A8);
  v11 = *(v10 - 8);
  v36 = v10;
  v37 = v11;
  __chkstk_darwin(v10, v12);
  v14 = &v35 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration);
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100791340;
  *(v16 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v16 + 40) = v17;
  *(v16 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v16 + 56) = v18;
  v19 = sub_100441DF8(v15, 0xD00000000000004DLL, 0x80000001007F1E30, v16);
  v16, v20, v21, v22, v23, v24, v25, v26;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v40 = type metadata accessor for REMCKSharedEntitySyncActivity();
  sub_1000F5104(&unk_10093E750, qword_10079FC30);
  *(inited + 32) = String.init<A>(describing:)();
  *(inited + 40) = v28;
  v29 = sub_1001A5660(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  v40 = v19;
  *(swift_allocObject() + 16) = v29;
  sub_1000F5104(&unk_10093D170, &unk_100791BC0);
  sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
  sub_10000CB48(&unk_10093D180, &unk_10093D170, &unk_100791BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_10000CB48(&unk_100936FF0, &unk_10093D130, &unk_100791BA0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v30 = v35;
  Publisher.filter(_:)();

  (*(v1 + 8))(v4, v30);
  sub_10000CB48(&qword_10093D190, &unk_100936FC0, &qword_10079C9A0, &protocol conformance descriptor for Publishers.Filter<A>);
  v31 = v38;
  Publisher.map<A>(_:)();
  (*(v39 + 8))(v9, v31);
  sub_10000CB48(&qword_10093E760, &unk_10093E740, &qword_10079C9A8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v32 = v36;
  v33 = Publisher.eraseToAnyPublisher()();
  (*(v37 + 8))(v14, v32);
  return v33;
}

uint64_t sub_10023BBC4()
{
  v1 = v0;
  v2 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v31 - v4;
  v6 = sub_1000F5104(&qword_10093E718, &qword_10079C980);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  __chkstk_darwin(v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000F5104(&qword_10093E720, &qword_10079C988);
  v36 = *(v33 - 8);
  __chkstk_darwin(v33, v15);
  v17 = &v31 - v16;
  v18 = sub_1000F5104(&qword_10093E728, &unk_10079C990);
  v19 = *(v18 - 8);
  v34 = v18;
  v35 = v19;
  __chkstk_darwin(v18, v20);
  v22 = &v31 - v21;
  v38 = 0;
  Just.init(_:)();
  v23 = v1 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  (*(v11 + 56))(v9, 1, 1, v10);
  v24 = *(v23 + 8);
  v37 = v24;
  v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
  sub_100007F54();
  sub_10000CB48(&qword_10093E730, &qword_10093E720, &qword_10079C988, &protocol conformance descriptor for Just<A>);
  sub_100006CA4();
  v26 = v24;
  v27 = v33;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_1000050A4(v5, &qword_100939980, &unk_10079ADA0);

  sub_1000050A4(v9, &qword_10093E718, &qword_10079C980);
  (*(v32 + 8))(v14, v31);
  (*(v36 + 8))(v17, v27);
  sub_10000CB48(&qword_10093E738, &qword_10093E728, &unk_10079C990, &protocol conformance descriptor for Publishers.Delay<A, B>);
  v28 = v34;
  v29 = Publisher.eraseToAnyPublisher()();
  (*(v35 + 8))(v22, v28);
  return v29;
}

void sub_10023C004()
{
  v0 = objc_autoreleasePoolPush();
  sub_10023CAAC();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10023C058(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a2;
  v11 = *(a1 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration + 8);
  *v9 = v11;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4, v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v4);
  if (v11)
  {
    if (qword_100935CE0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_10093E500);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_10000668C(0xD00000000000004DLL, 0x80000001007F1E30, v29);
    _os_log_impl(&_mh_execute_header, v14, v15, "os_transaction INIT {name: %{public}s}", v16, 0xCu);
    sub_10000607C(v17);
  }

  String.utf8CString.getter();
  os_transaction_create();

  v18 = sub_10023C638(v10);
  if (v18)
  {
    v26 = v18;
    v27 = objc_autoreleasePoolPush();
    sub_10023C32C(v10, a1);
    objc_autoreleasePoolPop(v27);
  }

  else
  {
    sub_10023C778(v10, v19, v20, v21, v22, v23, v24, v25);
  }

  sub_10023D484();
  return swift_unknownObjectRelease();
}

void sub_10023C32C(char a1, uint64_t a2)
{
  if (qword_100935CE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10093E500);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v36 = a1;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v35 = a2;
    v8 = swift_slowAlloc();
    v37 = v8;
    *v7 = 136446210;
    if (a1)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x68636E75616CLL;
    }

    if (a1)
    {
      v10 = 0x80000001007EA980;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    v11 = sub_10000668C(v9, v10, &v37);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "#️⃣ RDSharedInlineTagAutoConvertEngine: Starting journal consumption due to %{public}s", v7, 0xCu);
    sub_10000607C(v8);
    a2 = v35;
  }

  v19 = *(a2 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_handler + 8);
  ObjectType = swift_getObjectType();
  (*(v19 + 16))(ObjectType, v19);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 136446210;
    if (v36)
    {
      v25 = 0xD000000000000010;
    }

    else
    {
      v25 = 0x68636E75616CLL;
    }

    if (v36)
    {
      v26 = 0x80000001007EA980;
    }

    else
    {
      v26 = 0xE600000000000000;
    }

    v27 = sub_10000668C(v25, v26, &v37);
    v26, v28, v29, v30, v31, v32, v33, v34;
    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "#️⃣ RDSharedInlineTagAutoConvertEngine: Finished journal consumption due to %{public}s", v23, 0xCu);
    sub_10000607C(v24);
  }
}

id sub_10023C638(char a1)
{
  v3 = [objc_opt_self() sharedBabysitter];
  if (!v3)
  {
    return 0;
  }

  v11 = v3;
  if (a1)
  {
    v12 = 0x80000001007EA980;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (v12 != 0xE600000000000000 || (a1 & 1) != 0)
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v12, v16, v17, v18, v19, v20, v21, v22;
    v13 = &OBJC_IVAR____TtCC7remindd34RDSharedInlineTagAutoConvertEngineP33_5B5B2EA781175C6DB341AB3D5E32460613BabysitTarget_babysitterOperationStoreDidChange;
    if (v15)
    {
      v13 = &OBJC_IVAR____TtCC7remindd34RDSharedInlineTagAutoConvertEngineP33_5B5B2EA781175C6DB341AB3D5E32460613BabysitTarget_babysitterOperationDidLaunch;
    }
  }

  else
  {
    0xE600000000000000, v4, v5, v6, v7, v8, v9, v10;
    v13 = &OBJC_IVAR____TtCC7remindd34RDSharedInlineTagAutoConvertEngineP33_5B5B2EA781175C6DB341AB3D5E32460613BabysitTarget_babysitterOperationDidLaunch;
  }

  v23 = *(v1 + *v13 + 8);

  v24 = String._bridgeToObjectiveC()();
  v23, v25, v26, v27, v28, v29, v30, v31;
  v14 = [v11 tokenByRegisteringAccount:v1 forOperationWithName:v24];

  return v14;
}

void sub_10023C778(char a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  if (a1)
  {
    v10 = 0x80000001007EA980;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v10 != 0xE600000000000000 || (a1 & 1) != 0)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v10, v13, v14, v15, v16, v17, v18, v19;
    v11 = &OBJC_IVAR____TtCC7remindd34RDSharedInlineTagAutoConvertEngineP33_5B5B2EA781175C6DB341AB3D5E32460613BabysitTarget_babysitterOperationStoreDidChange;
    if (v12)
    {
      v11 = &OBJC_IVAR____TtCC7remindd34RDSharedInlineTagAutoConvertEngineP33_5B5B2EA781175C6DB341AB3D5E32460613BabysitTarget_babysitterOperationDidLaunch;
    }
  }

  else
  {
    0xE600000000000000, a2, a3, a4, a5, a6, a7, a8;
    v11 = &OBJC_IVAR____TtCC7remindd34RDSharedInlineTagAutoConvertEngineP33_5B5B2EA781175C6DB341AB3D5E32460613BabysitTarget_babysitterOperationDidLaunch;
  }

  v20 = *&v9[*v11 + 8];

  v21 = objc_opt_self();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 babySatErrorWithOperationName:v22];

  sub_1000F5104(&unk_10093D030, &unk_10079C950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v25 = String._bridgeToObjectiveC()();
  v20, v26, v27, v28, v29, v30, v31, v32;
  *(inited + 48) = v25;
  v33 = sub_10038D9FC(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &qword_100939270, &unk_100795D50);
  type metadata accessor for Analytics();
  v34 = sub_1004646CC();
  v33, v35, v36, v37, v38, v39, v40, v41;
  v42 = v23;
  static Analytics.postEvent(_:payload:error:performAutoBugCaptureOnError:)();
  v34, v43, v44, v45, v46, v47, v48, v49;

  if (qword_100935CE0 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_100006654(v50, qword_10093E500);
  v51 = v9;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = v55;
    *v54 = 136446210;
    *(v54 + 4) = sub_10000668C(0xD00000000000003FLL, 0x80000001007F1DA0, &v56);
    _os_log_impl(&_mh_execute_header, v52, v53, "Babysitting RDSharedInlineTagAutoConvertEngine because it failed too many times {waiterID: %{public}s}", v54, 0xCu);
    sub_10000607C(v55);
  }
}

void sub_10023CAAC()
{
  v1 = [objc_opt_self() sharedBabysitter];
  if (v1)
  {
    v9 = v1;
    v2 = String._bridgeToObjectiveC()();
    [v9 giveAccountWithIDAnotherChance:v2];

    if (qword_100935CE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10093E500);
    v4 = v0;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000668C(0xD00000000000003FLL, 0x80000001007F1DA0, &v10);
      _os_log_impl(&_mh_execute_header, v5, v6, "RDSharedInlineTagAutoConvertEngine: Reset babysitter upon enabled/disabled CloudKit account(s) for {waiterID: %{public}s}", v7, 0xCu);
      sub_10000607C(v8);
    }

    else
    {
    }
  }
}

id sub_10023CD3C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RDSharedInlineTagAutoConvertEngine.BabysitTarget();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10023CDDC()
{
  sub_10023D420(v0 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration);
  swift_unknownObjectRelease();
  *(v0 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_cancellables), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocClassInstance();
}

uint64_t sub_10023CE98(uint64_t a1)
{
  result = type metadata accessor for RDSharedInlineTagAutoConvertEngine.Configuration(319);
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

char *sub_10023CF90(char *a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = a1;
    v7 = a2[1];
    v6 = a2[2];
    *(a1 + 1) = v7;
    *(a1 + 2) = v6;
    v8 = *(a3 + 28);
    v10 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    v11 = *(*(v10 - 8) + 16);
    v12 = v4;
    v13 = v7;
    v11(&v5[v8], a2 + v8, v10);
  }

  return v5;
}

uint64_t sub_10023D074(id *a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *sub_10023D0F0(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  *(a1 + 2) = *(a2 + 16);
  v7 = *(a3 + 28);
  v8 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v9 = *(*(v8 - 8) + 16);
  v10 = v5;
  v11 = v6;
  v9(&a1[v7], a2 + v7, v8);
  return a1;
}

uint64_t sub_10023D18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a2 + 8);
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;
  v11 = v9;

  *(a1 + 16) = *(a2 + 16);
  v12 = *(a3 + 28);
  v13 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v13 - 8) + 24))(a1 + v12, a2 + v12, v13);
  return a1;
}

uint64_t sub_10023D230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_10023D2B0(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  *(a1 + 16) = *(a2 + 2);
  v8 = *(a3 + 28);
  v9 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v9 - 8) + 40))(a1 + v8, &a2[v8], v9);
  return a1;
}

uint64_t sub_10023D374(uint64_t a1)
{
  result = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_10023D420(uint64_t a1)
{
  v2 = type metadata accessor for RDSharedInlineTagAutoConvertEngine.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10023D484()
{
  if (qword_100935CE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_10093E500);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_10000668C(0xD00000000000004DLL, 0x80000001007F1E30, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: %{public}s}", v2, 0xCu);
    sub_10000607C(v3);
  }
}

unint64_t sub_10023D5E0()
{
  result = qword_10093E768;
  if (!qword_10093E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E768);
  }

  return result;
}

uint64_t sub_10023D634()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093E770);
  v1 = sub_100006654(v0, qword_10093E770);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10023D6FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_100005F4C(0x73656E6F6870, 0xE600000000000000);
    if (v3)
    {
      sub_100005EF0(*(a1 + 56) + 32 * v2, v36);
      sub_1000F5104(&unk_10093B300, &unk_100797780);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v11 = sub_100005F4C(0x736C69616D65, 0xE600000000000000);
          if (v4)
          {
            sub_100005EF0(*(a1 + 56) + 32 * v11, v36);
            if (swift_dynamicCast())
            {
              v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              isa = Array._bridgeToObjectiveC()().super.isa;
              v35, v14, v15, v16, v17, v18, v19, v20;
              v21 = Array._bridgeToObjectiveC()().super.isa;
              v35, v22, v23, v24, v25, v26, v27, v28;
              v29 = [v12 initWithPhones:isa emails:v21];

              return v29;
            }
          }
        }

        v35, v4, v5, v6, v7, v8, v9, v10;
      }
    }
  }

  if (qword_100935CE8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_10093E770);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Can't construct REMContactRepresentation from invalid JSON", v34, 2u);
  }

  return 0;
}

id sub_10023D92C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_10023D6FC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10023D954()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093E788);
  v1 = sub_100006654(v0, qword_10093E788);
  if (qword_100936428 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10023DA1C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1000F5104(&qword_10093E7A0, &qword_10079CAA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007912F0;
  v6 = objc_opt_self();
  v7 = [v6 sharedConfiguration];
  sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v7;
  v10 = [ObjCClassFromMetadata daemonUserDefaults];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 sharedBabysitter];
  v14 = v13;
  if (v13)
  {
    v13 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
    v15 = &off_1008F54F0;
  }

  else
  {
    v15 = 0;
    v158 = 0;
    v159 = 0;
  }

  v157 = v14;
  v160 = v13;
  v161 = v15;
  v16 = a3;
  v17 = sub_10023EADC(v16, v9, v12, &v157);

  *(v5 + 32) = v17;
  *(v5 + 40) = &off_1008EACA8;
  v18 = sub_10023F408(v16);
  if (v18)
  {
    v19 = &off_1008F9F18;
  }

  else
  {
    v19 = 0;
  }

  *(v5 + 48) = v18;
  *(v5 + 56) = v19;
  v20 = sub_10023FF04(v16);
  if (v20)
  {
    v21 = &off_1008F9F18;
  }

  else
  {
    v21 = 0;
  }

  *(v5 + 64) = v20;
  *(v5 + 72) = v21;
  v22 = sub_1002403F0(v16);
  v23 = &off_1008FDD60;
  if (!v22)
  {
    v23 = 0;
  }

  *(v5 + 80) = v22;
  *(v5 + 88) = v23;
  v24 = [v6 sharedConfiguration];
  v25 = [ObjCClassFromMetadata daemonUserDefaults];
  v26 = [v11 sharedBabysitter];
  v27 = v26;
  if (v26)
  {
    v26 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
    v28 = &off_1008F54F0;
  }

  else
  {
    v28 = 0;
    v158 = 0;
    v159 = 0;
  }

  v157 = v27;
  v160 = v26;
  v161 = v28;
  v29 = v16;
  v30 = sub_100240544(v29, v24, v25, &v157);

  *(v5 + 96) = v30;
  *(v5 + 104) = &off_1008F1788;
  v31 = sub_100240898(v29);
  v32 = &off_1008EB418;
  if (!v31)
  {
    v32 = 0;
  }

  *(v5 + 112) = v31;
  *(v5 + 120) = v32;
  v157 = v5;
  sub_1000F5104(&qword_10093E7A8, &qword_10079CAA8);
  sub_1000F5104(&unk_10093F810, &qword_10079CAB0);
  sub_1002409C0();
  v33 = Sequence.removingNils<A>()();
  v5, v34, v35, v36, v37, v38, v39, v40;
  v41 = [v6 sharedConfiguration];
  [v41 housekeepingActivityMinimumDelay];
  v43 = v42;

  v51 = sub_10027058C(v33);
  v52 = &v51->clientIdentity[16];
  v53 = -*v51->clientIdentity;
  v54 = -1;
  do
  {
    v55 = v53 + v54;
    if ((v53 + v54) == -1)
    {
      break;
    }

    if (++v54 >= *v51->clientIdentity)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      swift_once();
      goto LABEL_30;
    }

    v16 = (v52 + 40);
    sub_10000A87C(v52, &v157);
    v56 = v160;
    v57 = v161;
    sub_10000F61C(&v157, v160);
    v58 = (v57[1])(v56, v57);
    sub_10000607C(&v157);
    v52 = v16;
  }

  while ((v58 & 1) != 0);
  v150 = v29;
  v51, v44, v45, v46, v47, v48, v49, v50;
  v156 = v33;
  v66 = sub_10027058C(v33);
  v67 = &v66->clientIdentity[16];
  v54 = -*v66->clientIdentity;
  v68 = -1;
  do
  {
    v53 = (v54 + v68);
    if (v54 + v68 == -1)
    {
      break;
    }

    if (++v68 >= *v66->clientIdentity)
    {
      goto LABEL_42;
    }

    v16 = (v67 + 40);
    sub_10000A87C(v67, &v157);
    v69 = v160;
    v70 = v161;
    sub_10000F61C(&v157, v160);
    v71 = (v70[2])(v69, v70);
    sub_10000607C(&v157);
    v67 = v16;
  }

  while ((v71 & 1) == 0);
  v66, v59, v60, v61, v62, v63, v64, v65;
  v79 = sub_10027058C(v33);
  v80 = &v79->clientIdentity[16];
  v54 = -*v79->clientIdentity;
  v81 = -1;
  do
  {
    v16 = (v54 + v81);
    if (v54 + v81 == -1)
    {
      break;
    }

    if (++v81 >= *v79->clientIdentity)
    {
      goto LABEL_43;
    }

    v82 = v80 + 40;
    sub_10000A87C(v80, &v157);
    v83 = v160;
    v84 = v161;
    sub_10000F61C(&v157, v160);
    v85 = (v84[3])(v83, v84);
    sub_10000607C(&v157);
    v80 = v82;
  }

  while ((v85 & 1) == 0);
  v79, v72, v73, v74, v75, v76, v77, v78;
  type metadata accessor for RDJitteredMinimumDelayXPCActivityFactory();
  v86 = swift_allocObject();
  *(v86 + 16) = v43;
  *(v86 + 24) = v55 == -1;
  *(v86 + 25) = v53 != -1;
  *(v86 + 26) = v16 != -1;
  v16 = sub_1000F5104(&qword_10093E7B8, &qword_10079CAB8);
  v54 = swift_allocObject();
  *(v54 + 56) = xmmword_10079CA90;
  *(v54 + 72) = 0x80000001007F1E80;
  *(v54 + 80) = 0xD00000000000001DLL;
  *(v54 + 128) = 0;
  *(v54 + 88) = 0x80000001007F1E80;
  *(v54 + 96) = 0;
  *(v54 + 104) = 0;
  *(v54 + 112) = 0;
  *(v54 + 118) = 0;
  v53 = v156;
  *(v54 + 16) = v156;
  *(v54 + 24) = a1;
  *(v54 + 32) = a2;
  *(v54 + 40) = v150;
  *(v54 + 48) = v86;
  v87 = qword_100935CF0;
  v88 = v150;

  v89 = a1;
  v90 = a2;
  if (v87 != -1)
  {
    goto LABEL_44;
  }

LABEL_30:
  v91 = type metadata accessor for Logger();
  sub_100006654(v91, qword_10093E788);

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  v53, v94, v95, v96, v97, v98, v99, v100;
  if (os_log_type_enabled(v92, v93))
  {
    v108 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v157 = v155;
    *v108 = 136446210;
    v116 = *v53->clientIdentity;
    if (v116)
    {
      v148 = v108;
      v149 = v93;
      v151 = v92;
      sub_100026EF4(0, v116, 0);
      v117 = 32;
      do
      {
        swift_getObjectType();
        swift_getWitnessTable();
        v125 = dispatch thunk of CustomStringConvertible.description.getter();
        v126 = v118;
        v128 = *_swiftEmptyArrayStorage.clientIdentity;
        v127 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        if (v128 >= v127 >> 1)
        {
          sub_100026EF4((v127 > 1), v128 + 1, 1);
        }

        *_swiftEmptyArrayStorage.clientIdentity = v128 + 1;
        v129 = &_swiftEmptyArrayStorage + 16 * v128;
        *(v129 + 4) = v125;
        *(v129 + 5) = v126;
        v117 += 16;
        --v116;
      }

      while (v116);
      v156, v118, v119, v120, v121, v122, v123, v124;
      v92 = v151;
      v93 = v149;
      v108 = v148;
    }

    else
    {
      v53, v109, v110, v111, v112, v113, v114, v115;
    }

    v130 = Array.description.getter();
    v132 = v131;
    &_swiftEmptyArrayStorage, v131, v133, v134, v135, v136, v137, v138;
    v139 = sub_10000668C(v130, v132, &v157);
    v132, v140, v141, v142, v143, v144, v145, v146;
    *(v108 + 4) = v139;
    _os_log_impl(&_mh_execute_header, v92, v93, "RDHousekeepingActivitiesAssembly has registered activities: %{public}s", v108, 0xCu);
    sub_10000607C(v155);
  }

  else
  {
    v53, v101, v102, v103, v104, v105, v106, v107;
  }

  a4[3] = v16;
  a4[4] = &off_1008F2A90;

  *a4 = v54;
  return result;
}

void *sub_10023E260(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27[3] = sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  v27[4] = &off_1008EAB58;
  v27[0] = a2;
  a4[2] = 0xD000000000000022;
  a4[3] = 0x80000001007F1F70;
  a4[4] = a1;
  sub_10000A87C(v27, (a4 + 5));
  a4[10] = a3;
  if (!a3)
  {
    v8 = qword_100935C30;
    v9 = a1;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_10093D610);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136446210;
      v15 = a4[2];
      v16 = a4[3];

      v17 = sub_10000668C(v15, v16, &v26);
      v16, v18, v19, v20, v21, v22, v23, v24;
      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] configurations.staledFileAttachmentCleanupPerRunDeleteLimit is 0", v13, 0xCu);
      sub_10000607C(v14);
    }

    else
    {
    }
  }

  sub_10000607C(v27);
  return a4;
}

id sub_10023E450(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
  v32 = &off_1008EB308;
  v30[0] = a2;
  v29[3] = sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  v29[4] = &off_1008EB2E8;
  v29[0] = a3;
  v8 = type metadata accessor for RDBatchDeleteExpiredRemindersActivity();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_xpcActivityAllowBattery] = 0;
  v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_xpcActivityIsCPUIntensive] = 1;
  v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_xpcActivityIsDiskIntensive] = 0;
  v10 = &v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_identifier];
  *&v28[0] = v8;
  sub_1000F5104(&qword_10093E7C0, &qword_10079CAC0);
  *v10 = String.init<A>(reflecting:)();
  v10[1] = v11;
  v12 = &v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_babysitter];
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *&v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_storeController] = a1;
  sub_10000A87C(v30, &v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations]);
  sub_10000A87C(v29, &v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_states]);
  swift_beginAccess();
  v13 = a1;
  sub_100240A24(a4, v12);
  swift_endAccess();
  sub_10000A87C(v29, v28);
  v14 = type metadata accessor for RDBatchDeleteExpiredRemindersActivity.RDBatchDeleteExpiredRemindersExecutionDateStorage();
  v15 = swift_allocObject();
  sub_100054B6C(v28, v15 + 16);
  v16 = &v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_executionDateStorage];
  v16[3] = v14;
  v16[4] = &off_1008EB358;
  *v16 = v15;
  v17 = v31;
  v18 = v32;
  v19 = sub_10000F61C(v30, v31);
  v20 = swift_allocObject();
  v20[5] = v17;
  v20[6] = v18[2];
  v21 = sub_1000103CC(v20 + 2);
  (*(*(v17 - 8) + 16))(v21, v19, v17);
  v22 = &v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_rateReducerConfiguration];
  *v22 = v20;
  v22[3] = &type metadata for RDBatchDeleteExpiredRemindersActivity.RDBatchDeleteExpiredRemindersRateReducer;
  v22[4] = &off_1008EB4E0;
  sub_10000A87C(v29, v28);
  sub_10000A87C(v30, v27);
  type metadata accessor for RDBatchDeleteExpiredRemindersActivity.RDBatchDeleteExpiredRemindersActivityExecutable();
  v23 = swift_allocObject();
  v23[2] = 0xD000000000000022;
  v23[3] = 0x80000001007F1EA0;
  v23[4] = v13;
  sub_100054B6C(v28, (v23 + 5));
  sub_100054B6C(v27, (v23 + 10));
  *&v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_executable] = v23;
  v26.receiver = v9;
  v26.super_class = v8;
  v24 = objc_msgSendSuper2(&v26, "init");
  sub_100240A94(a4);
  sub_10000607C(v29);
  sub_10000607C(v30);
  return v24;
}

id sub_10023E788(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  v36 = &off_1008FDC50;
  v34[0] = a4;
  v32 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
  v33 = &off_1008FDC68;
  v31[0] = a2;
  v30[3] = v35;
  v30[4] = &off_1008FDC30;
  v30[0] = a3;
  v10 = type metadata accessor for RDSuggestConversionToGroceryListActivity();
  v11 = objc_allocWithZone(v10);
  v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_xpcActivityAllowBattery] = 0;
  v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_xpcActivityIsCPUIntensive] = 1;
  v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_xpcActivityIsDiskIntensive] = 0;
  v12 = &v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_identifier];
  *&v29[0] = v10;
  sub_1000F5104(&qword_10093E7D0, &qword_10079CAD0);
  *v12 = String.init<A>(reflecting:)();
  v12[1] = v13;
  v14 = &v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_babysitter];
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *&v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_storeController] = a1;
  sub_10000A87C(v31, &v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations]);
  sub_10000A87C(v30, &v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_states]);
  sub_10000A87C(v34, &v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_userDefaults]);
  swift_beginAccess();
  v15 = a1;
  sub_100240A24(a5, v14);
  swift_endAccess();
  sub_10000A87C(v30, v29);
  v16 = type metadata accessor for RDSuggestConversionToGroceryListActivity.RDSuggestConversionToGroceryListExecutionDateStorage();
  v17 = swift_allocObject();
  sub_100054B6C(v29, v17 + 16);
  v18 = &v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_executionDateStorage];
  v18[3] = v16;
  v18[4] = &off_1008FDCA0;
  *v18 = v17;
  v19 = v32;
  v20 = v33;
  v21 = sub_10000F61C(v31, v32);
  v22 = swift_allocObject();
  v22[5] = v19;
  v22[6] = v20[1];
  v23 = sub_1000103CC(v22 + 2);
  (*(*(v19 - 8) + 16))(v23, v21, v19);
  v24 = &v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_rateReducerConfiguration];
  *v24 = v22;
  v24[3] = &type metadata for RDSuggestConversionToGroceryListActivity.RDSuggestConversionToGroceryListRateReducer;
  v24[4] = &off_1008FDE28;
  sub_10000A87C(v30, v29);
  type metadata accessor for RDSuggestConversionToGroceryListActivity.RDSuggestConversionToGroceryListActivityExecutable();
  v25 = swift_allocObject();
  v25[2] = 0xD000000000000025;
  v25[3] = 0x80000001007F1EF0;
  v25[4] = v15;
  sub_100054B6C(v29, (v25 + 5));
  *&v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_executable] = v25;
  v28.receiver = v11;
  v28.super_class = v10;
  v26 = objc_msgSendSuper2(&v28, "init");
  sub_100240A94(a5);
  sub_10000607C(v34);
  sub_10000607C(v30);
  sub_10000607C(v31);
  return v26;
}

id sub_10023EADC(void *a1, void *a2, void *a3, uint64_t a4)
{
  v33 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
  v34 = &off_1008EAB90;
  v32[0] = a2;
  v31[3] = sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  v31[4] = &off_1008EAB58;
  v31[0] = a3;
  v8 = type metadata accessor for RDStaledFileAttachmentCleanupActivity();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_xpcActivityAllowBattery] = 1;
  v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_xpcActivityIsCPUIntensive] = 0;
  v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_xpcActivityIsDiskIntensive] = 0;
  v10 = &v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_identifier];
  *&v30[0] = v8;
  v11 = a3;
  sub_1000F5104(&qword_10093E830, &qword_10079CB28);
  *v10 = String.init<A>(reflecting:)();
  v10[1] = v12;
  v13 = &v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_babysitter];
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *&v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_storeController] = a1;
  sub_10000A87C(v32, &v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations]);
  sub_10000A87C(v31, &v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_states]);
  swift_beginAccess();
  v14 = a1;
  sub_100240A24(a4, v13);
  swift_endAccess();
  sub_10000A87C(v31, v30);
  v15 = type metadata accessor for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupExecutionDateStorage();
  v16 = swift_allocObject();
  sub_100054B6C(v30, v16 + 16);
  v17 = &v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_executionDateStorage];
  v17[3] = v15;
  v17[4] = &off_1008EABE8;
  *v17 = v16;
  v18 = v33;
  v19 = v34;
  v20 = sub_10000F61C(v32, v33);
  v21 = swift_allocObject();
  v21[5] = v18;
  v21[6] = v19[2];
  v22 = sub_1000103CC(v21 + 2);
  (*(*(v18 - 8) + 16))(v22, v20, v18);
  v23 = &v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_rateReducerConfiguration];
  *v23 = v21;
  v23[3] = &type metadata for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupRateReducer;
  v23[4] = &off_1008EAD70;
  v24 = v14;
  v25 = [a2 staledFileAttachmentCleanupPerRunDeleteLimit];
  type metadata accessor for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupActivityExecutable();
  v26 = swift_allocObject();
  *&v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_executable] = sub_10023E260(v24, v11, v25, v26);
  v29.receiver = v9;
  v29.super_class = v8;
  v27 = objc_msgSendSuper2(&v29, "init");
  sub_100240A94(a4);
  sub_10000607C(v31);
  sub_10000607C(v32);
  return v27;
}

id sub_10023EDF8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  ObjectType = swift_getObjectType();
  v72[3] = type metadata accessor for Analytics();
  v72[4] = &protocol witness table for Analytics;
  v72[0] = a6;
  v70 = type metadata accessor for RDImageDeduplicationActivity.Configurations();
  v71 = &off_1008F9E38;
  v69[0] = a2;
  v68[4] = &off_1008F9DC8;
  v68[3] = type metadata accessor for RDImageDeduplicationActivity.States();
  v68[0] = a3;
  a7[qword_10094E180] = 0;
  a7[qword_10094E188] = 1;
  a7[qword_10094E190] = 1;
  v15 = &a7[qword_10094E198];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v16 = &a7[qword_10094E1A8];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  *&a7[qword_10094E1B0] = a1;
  sub_10000A87C(v69, &a7[qword_10094E1B8]);
  sub_10000A87C(v68, &a7[qword_10094E1C0]);
  *&a7[qword_10094E1C8] = a4;
  swift_beginAccess();
  v17 = a1;

  v61 = a5;
  sub_100240A24(a5, v16);
  swift_endAccess();
  sub_10000A87C(v68, &v65);
  v18 = sub_1000F5104(&qword_10093E808, &qword_10079CB00);
  v19 = swift_allocObject();
  sub_100054B6C(&v65, v19 + 16);
  v20 = &a7[qword_10094E1A0];
  v20[3] = v18;
  v20[4] = &off_1008F9E58;
  *v20 = v19;
  v21 = v70;
  v22 = v71;
  v23 = sub_10000F61C(v69, v70);
  v66 = sub_1000F5104(&qword_10093E810, &qword_10079CB08);
  v67 = &off_1008FA028;
  v24 = swift_allocObject();
  *&v65 = v24;
  v24[5] = v21;
  v24[6] = v22[2];
  v25 = sub_1000103CC(v24 + 2);
  (*(*(v21 - 8) + 16))(v25, v23, v21);
  swift_beginAccess();
  sub_100240B6C(&v65, v15);
  swift_endAccess();
  *&v65 = ObjectType;
  swift_getMetatypeMetadata();
  v26 = String.init<A>(reflecting:)();
  v28 = v27;
  sub_10000A87C(v68, &v65);
  v29 = a2[5];
  v30 = a2[6];
  sub_10000F61C(a2 + 2, v29);
  v31 = (*(*(v30 + 8) + 8))(v29);
  v32 = v31;
  if (v31 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = v31;
  }

  sub_10000A87C(v72, v64);
  sub_1000F5104(&qword_10093E818, &qword_10079CB10);
  v34 = swift_allocObject();
  v34[2] = v26;
  v34[3] = v28;
  v63[0] = v26;
  v63[1] = v28;
  v35 = v17;

  v36._countAndFlagsBits = 0x617475636578452ELL;
  v36._object = 0xEB00000000656C62;
  String.append(_:)(v36);
  v37 = v28;
  v34[18] = v26;
  v34[19] = v28;
  v34[4] = v35;
  sub_10000A87C(&v65, (v34 + 5));
  v34[10] = a4;
  v34[11] = v33;
  sub_1000F5104(&qword_10093E820, &qword_10079CB18);
  v38 = swift_allocObject();
  *(v38 + 5) = &_swiftEmptyArrayStorage;
  *(v38 + 6) = &_swiftEmptyArrayStorage;
  v39 = qword_10094E388;
  v40 = type metadata accessor for Date();
  (*(*(v40 - 8) + 56))(&v38[v39], 1, 1, v40);
  *(v38 + 2) = v33;
  *(v38 + 3) = v26;
  *(v38 + 4) = v37;
  v34[17] = v38;
  sub_10000A87C(v64, (v34 + 12));
  if (v32)
  {
  }

  else
  {
    v41 = qword_1009366A0;
    v42 = v35;

    if (v41 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_10094E160);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v63[0] = v47;
      *v46 = 136446210;
      v48 = v42;
      v50 = v34[2];
      v49 = v34[3];

      v51 = sub_10000668C(v50, v49, v63);
      v49, v52, v53, v54, v55, v56, v57, v58;
      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "[%{public}s] configurations.approximatePerRunDeleteLimit is 0", v46, 0xCu);
      sub_10000607C(v47);
    }

    else
    {
    }
  }

  sub_10000607C(v64);
  sub_10000607C(&v65);
  *&a7[qword_10094E1D0] = v34;
  v62.receiver = a7;
  v62.super_class = sub_1000F5104(&qword_10093E828, &qword_10079CB20);
  v59 = objc_msgSendSuper2(&v62, "init");
  sub_10000607C(v72);
  sub_100240A94(v61);
  sub_10000607C(v68);
  sub_10000607C(v69);
  return v59;
}

id sub_10023F408(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v7, v8).n128_u64[0];
  v11 = &v42 - v10;
  v12 = [a1 _dataSeparationIncompatible_defaultReminderDataContainerURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 16))(v6, v11, v2);
  v13 = [objc_opt_self() defaultManager];
  v47 = sub_1000060C8(0, &qword_10093E7D8, NSFileManager_ptr);
  v48 = &off_1008F3738;
  *&v45 = v13;
  type metadata accessor for RDSentinelFileLocation(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0xD00000000000001BLL;
  *(v14 + 24) = 0x80000001007F1F50;
  (*(v3 + 32))(v14 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_containerURL, v6, v2);
  sub_100054B6C(&v45, v14 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager);
  v15 = *(v14 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager + 32);
  sub_10000F61C((v14 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager), *(v14 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager + 24));
  v16 = sub_10048C990();
  v18 = v17;
  LOBYTE(v6) = (*(v15 + 8))(v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  if (v6)
  {
    if (qword_100935CF0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_10093E788);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "RDImageDeduplicationActivity's sentinel file exists, activity does not need to register.", v29, 2u);
    }

    else
    {
    }

    (*(v3 + 8))(v11, v2);
    return 0;
  }

  else
  {
    sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
    v30 = [swift_getObjCClassFromMetadata() daemonUserDefaults];
    v31 = [objc_opt_self() sharedConfiguration];
    v32 = [objc_opt_self() sharedBabysitter];
    v33 = v32;
    if (v32)
    {
      v32 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
      v34 = &off_1008F54F0;
    }

    else
    {
      v34 = 0;
      *(&v45 + 1) = 0;
      v46 = 0;
    }

    *&v45 = v33;
    v47 = v32;
    v48 = v34;
    v36 = [objc_allocWithZone(type metadata accessor for Analytics()) init];
    v44[3] = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
    v44[4] = &off_1008F97C8;
    v44[0] = v31;
    v37 = objc_allocWithZone(type metadata accessor for RDImageDeduplicationActivity(0));
    sub_10000A87C(v44, v43);
    type metadata accessor for RDImageDeduplicationActivity.Configurations();
    v38 = swift_allocObject();
    sub_100054B6C(v43, (v38 + 2));
    type metadata accessor for RDImageDeduplicationActivity.States();
    v39 = swift_allocObject();
    *(v39 + 16) = v30;
    *(v39 + 24) = &off_1008F9758;
    sub_100240AFC(&v45, v43);
    v40 = a1;
    v41 = sub_10023EDF8(v40, v38, v39, v14, v43, v36, v37);

    sub_100240A94(&v45);
    sub_10000607C(v44);
    (*(v3 + 8))(v11, v2);
    return v41;
  }
}

id sub_10023F8F4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  ObjectType = swift_getObjectType();
  v72[3] = type metadata accessor for Analytics();
  v72[4] = &protocol witness table for Analytics;
  v72[0] = a6;
  v70 = type metadata accessor for RDSavedImageDeduplicationActivity.Configurations();
  v71 = &off_1008F9DA8;
  v69[0] = a2;
  v68[4] = &off_1008F9D38;
  v68[3] = type metadata accessor for RDSavedImageDeduplicationActivity.States();
  v68[0] = a3;
  a7[qword_10094E180] = 0;
  a7[qword_10094E188] = 1;
  a7[qword_10094E190] = 1;
  v15 = &a7[qword_10094E198];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v16 = &a7[qword_10094E1A8];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  *&a7[qword_10094E1B0] = a1;
  sub_10000A87C(v69, &a7[qword_10094E1B8]);
  sub_10000A87C(v68, &a7[qword_10094E1C0]);
  *&a7[qword_10094E1C8] = a4;
  swift_beginAccess();
  v17 = a1;

  v61 = a5;
  sub_100240A24(a5, v16);
  swift_endAccess();
  sub_10000A87C(v68, &v65);
  v18 = sub_1000F5104(&qword_10093E7E0, &qword_10079CAD8);
  v19 = swift_allocObject();
  sub_100054B6C(&v65, v19 + 16);
  v20 = &a7[qword_10094E1A0];
  v20[3] = v18;
  v20[4] = &off_1008F9E58;
  *v20 = v19;
  v21 = v70;
  v22 = v71;
  v23 = sub_10000F61C(v69, v70);
  v66 = sub_1000F5104(&qword_10093E7E8, &qword_10079CAE0);
  v67 = &off_1008FA028;
  v24 = swift_allocObject();
  *&v65 = v24;
  v24[5] = v21;
  v24[6] = v22[2];
  v25 = sub_1000103CC(v24 + 2);
  (*(*(v21 - 8) + 16))(v25, v23, v21);
  swift_beginAccess();
  sub_100240B6C(&v65, v15);
  swift_endAccess();
  *&v65 = ObjectType;
  swift_getMetatypeMetadata();
  v26 = String.init<A>(reflecting:)();
  v28 = v27;
  sub_10000A87C(v68, &v65);
  v29 = a2[5];
  v30 = a2[6];
  sub_10000F61C(a2 + 2, v29);
  v31 = (*(*(v30 + 8) + 8))(v29);
  v32 = v31;
  if (v31 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = v31;
  }

  sub_10000A87C(v72, v64);
  sub_1000F5104(&qword_10093E7F0, &qword_10079CAE8);
  v34 = swift_allocObject();
  v34[2] = v26;
  v34[3] = v28;
  v63[0] = v26;
  v63[1] = v28;
  v35 = v17;

  v36._countAndFlagsBits = 0x617475636578452ELL;
  v36._object = 0xEB00000000656C62;
  String.append(_:)(v36);
  v37 = v28;
  v34[18] = v26;
  v34[19] = v28;
  v34[4] = v35;
  sub_10000A87C(&v65, (v34 + 5));
  v34[10] = a4;
  v34[11] = v33;
  sub_1000F5104(&qword_10093E7F8, &qword_10079CAF0);
  v38 = swift_allocObject();
  *(v38 + 5) = &_swiftEmptyArrayStorage;
  *(v38 + 6) = &_swiftEmptyArrayStorage;
  v39 = qword_10094E388;
  v40 = type metadata accessor for Date();
  (*(*(v40 - 8) + 56))(&v38[v39], 1, 1, v40);
  *(v38 + 2) = v33;
  *(v38 + 3) = v26;
  *(v38 + 4) = v37;
  v34[17] = v38;
  sub_10000A87C(v64, (v34 + 12));
  if (v32)
  {
  }

  else
  {
    v41 = qword_1009366A0;
    v42 = v35;

    if (v41 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_10094E160);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v63[0] = v47;
      *v46 = 136446210;
      v48 = v42;
      v50 = v34[2];
      v49 = v34[3];

      v51 = sub_10000668C(v50, v49, v63);
      v49, v52, v53, v54, v55, v56, v57, v58;
      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "[%{public}s] configurations.approximatePerRunDeleteLimit is 0", v46, 0xCu);
      sub_10000607C(v47);
    }

    else
    {
    }
  }

  sub_10000607C(v64);
  sub_10000607C(&v65);
  *&a7[qword_10094E1D0] = v34;
  v62.receiver = a7;
  v62.super_class = sub_1000F5104(&qword_10093E800, &qword_10079CAF8);
  v59 = objc_msgSendSuper2(&v62, "init");
  sub_10000607C(v72);
  sub_100240A94(v61);
  sub_10000607C(v68);
  sub_10000607C(v69);
  return v59;
}

id sub_10023FF04(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v7, v8).n128_u64[0];
  v11 = &v42 - v10;
  v12 = [a1 _dataSeparationIncompatible_defaultReminderDataContainerURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 16))(v6, v11, v2);
  v13 = [objc_opt_self() defaultManager];
  v47 = sub_1000060C8(0, &qword_10093E7D8, NSFileManager_ptr);
  v48 = &off_1008F3738;
  *&v45 = v13;
  type metadata accessor for RDSentinelFileLocation(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0xD000000000000020;
  *(v14 + 24) = 0x80000001007F1F20;
  (*(v3 + 32))(v14 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_containerURL, v6, v2);
  sub_100054B6C(&v45, v14 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager);
  v15 = *(v14 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager + 32);
  sub_10000F61C((v14 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager), *(v14 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager + 24));
  v16 = sub_10048C990();
  v18 = v17;
  LOBYTE(v6) = (*(v15 + 8))(v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  if (v6)
  {
    if (qword_100935CF0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_10093E788);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "RDSavedImageDeduplicationActivity's sentinel file exists, activity does not need to register.", v29, 2u);
    }

    else
    {
    }

    (*(v3 + 8))(v11, v2);
    return 0;
  }

  else
  {
    sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
    v30 = [swift_getObjCClassFromMetadata() daemonUserDefaults];
    v31 = [objc_opt_self() sharedConfiguration];
    v32 = [objc_opt_self() sharedBabysitter];
    v33 = v32;
    if (v32)
    {
      v32 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
      v34 = &off_1008F54F0;
    }

    else
    {
      v34 = 0;
      *(&v45 + 1) = 0;
      v46 = 0;
    }

    *&v45 = v33;
    v47 = v32;
    v48 = v34;
    v36 = [objc_allocWithZone(type metadata accessor for Analytics()) init];
    v44[3] = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
    v44[4] = &off_1008F9820;
    v44[0] = v31;
    v37 = objc_allocWithZone(type metadata accessor for RDSavedImageDeduplicationActivity(0));
    sub_10000A87C(v44, v43);
    type metadata accessor for RDSavedImageDeduplicationActivity.Configurations();
    v38 = swift_allocObject();
    sub_100054B6C(v43, (v38 + 2));
    type metadata accessor for RDSavedImageDeduplicationActivity.States();
    v39 = swift_allocObject();
    *(v39 + 16) = v30;
    *(v39 + 24) = &off_1008F9790;
    sub_100240AFC(&v45, v43);
    v40 = a1;
    v41 = sub_10023F8F4(v40, v38, v39, v14, v43, v36, v37);

    sub_100240A94(&v45);
    sub_10000607C(v44);
    (*(v3 + 8))(v11, v2);
    return v41;
  }
}

id sub_1002403F0(void *a1)
{
  v2 = [objc_opt_self() sharedConfiguration];
  sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = v2;
  v5 = [ObjCClassFromMetadata daemonUserDefaults];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 daemonUserDefaults];
  v9 = [objc_opt_self() sharedBabysitter];
  v10 = v9;
  if (v9)
  {
    v9 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
    v11 = &off_1008F54F0;
  }

  else
  {
    v11 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v10;
  v14[3] = v9;
  v14[4] = v11;
  v12 = sub_10023E788(a1, v4, v7, v8, v14);

  return v12;
}

id sub_100240544(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
  v36 = &off_1008F1680;
  v34[0] = a2;
  v33[3] = sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  v33[4] = &off_1008F1660;
  v33[0] = a3;
  v8 = type metadata accessor for RDAnalyticsActivity();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_xpcActivityAllowBattery] = 0;
  v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_xpcActivityIsCPUIntensive] = 0;
  v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_xpcActivityIsDiskIntensive] = 1;
  v10 = &v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_identifier];
  *&v32[0] = v8;
  sub_1000F5104(&qword_10093E7C8, &qword_10079CAC8);
  *v10 = String.init<A>(reflecting:)();
  v10[1] = v11;
  v12 = &v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_babysitter];
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *&v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_storeController] = a1;
  sub_10000A87C(v34, &v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations]);
  sub_10000A87C(v33, &v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_states]);
  swift_beginAccess();
  v13 = a1;
  sub_100240A24(a4, v12);
  swift_endAccess();
  sub_10000A87C(v33, v32);
  v14 = type metadata accessor for RDAnalyticsActivity.RDAnalyticsExecutionDateStorage();
  v15 = swift_allocObject();
  sub_100054B6C(v32, v15 + 16);
  v16 = &v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_executionDateStorage];
  v16[3] = v14;
  v16[4] = &off_1008F16B8;
  *v16 = v15;
  v17 = v35;
  v18 = v36;
  v19 = sub_10000F61C(v34, v35);
  v20 = swift_allocObject();
  v20[5] = v17;
  v20[6] = v18[1];
  v21 = sub_1000103CC(v20 + 2);
  (*(*(v17 - 8) + 16))(v21, v19, v17);
  v22 = &v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_rateReducerConfiguration];
  *v22 = v20;
  v22[3] = &type metadata for RDAnalyticsActivity.RDAnalyticsRateReducer;
  v22[4] = &off_1008F1850;
  sub_10000A87C(v33, v32);
  v23 = type metadata accessor for RDAnalyticsActivity.RDAnalyticsActivityExecutable();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[OBJC_IVAR____TtCC7remindd19RDAnalyticsActivityP33_35FD618111A9B708721C682F761C56BE29RDAnalyticsActivityExecutable_name];
  *v25 = 0xD000000000000010;
  *(v25 + 1) = 0x80000001007F1ED0;
  *&v24[OBJC_IVAR____TtCC7remindd19RDAnalyticsActivityP33_35FD618111A9B708721C682F761C56BE29RDAnalyticsActivityExecutable_storeController] = v13;
  sub_10000A87C(v32, &v24[OBJC_IVAR____TtCC7remindd19RDAnalyticsActivityP33_35FD618111A9B708721C682F761C56BE29RDAnalyticsActivityExecutable_states]);
  v31.receiver = v24;
  v31.super_class = v23;
  v26 = v13;
  v27 = objc_msgSendSuper2(&v31, "init");
  sub_10000607C(v32);
  *&v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_executable] = v27;
  v30.receiver = v9;
  v30.super_class = v8;
  v28 = objc_msgSendSuper2(&v30, "init");
  sub_100240A94(a4);
  sub_10000607C(v33);
  sub_10000607C(v34);
  return v28;
}

id sub_100240898(void *a1)
{
  v2 = [objc_opt_self() sharedConfiguration];
  sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = v2;
  v5 = [ObjCClassFromMetadata daemonUserDefaults];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedBabysitter];
  v9 = v8;
  if (v8)
  {
    v8 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
    v10 = &off_1008F54F0;
  }

  else
  {
    v10 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  v13[0] = v9;
  v13[3] = v8;
  v13[4] = v10;
  v11 = sub_10023E450(a1, v4, v7, v13);

  return v11;
}

unint64_t sub_1002409C0()
{
  result = qword_10093E7B0;
  if (!qword_10093E7B0)
  {
    sub_1000F514C(&qword_10093E7A8, &qword_10079CAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E7B0);
  }

  return result;
}

uint64_t sub_100240A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_10093D8F0, &unk_10079B600);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100240A94(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_10093D8F0, &unk_10079B600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100240AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_10093D8F0, &unk_10079B600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100240B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_10093E4F0, &qword_1007A9640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100240BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100240CD4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100242700(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v8 = dispatch thunk of Hashable._rawHashValue(seed:)(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_100242700(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100240F04(uint64_t a1, uint64_t a2)
{
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v4 = *(PredicateType - 8);
  __chkstk_darwin(PredicateType, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100242700(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType, &protocol conformance descriptor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType), v8 = dispatch thunk of Hashable._rawHashValue(seed:)(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, PredicateType);
      sub_100242700(&qword_100943DD0, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType, &protocol conformance descriptor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v15)(v7, PredicateType);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100241134(void *a1, uint64_t a2, void (*a3)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (a3(0), v6 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100241240(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100242700(&qword_10093E838, &type metadata accessor for URL, &protocol conformance descriptor for URL), v8 = dispatch thunk of Hashable._rawHashValue(seed:)(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_100242700(&unk_100944080, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100241458(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && ((Hasher.init(_seed:)(), a1 != 3) ? (v4 = "ActivityScheduler") : (v4 = "atchUpSyncController"), a1 == 2 ? (v5 = "d.ICCloudConfigurationUpdater") : (v5 = v4), !a1 ? (v6 = "REMCDTemplateOperationQueueItem") : (v6 = "butesAutoTrainer"), a1 <= 1u ? (v7 = v6) : (v7 = v5), String.hash(into:)(), (v7 | 0x8000000000000000), v8, v9, v10, v11, v12, v13, v14, v15 = Hasher._finalize()(), v22 = -1 << *(a2 + 32), v23 = v15 & ~v22, ((*(a2 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
  {
    v61 = ~v22;
    while (1)
    {
      v24 = *(*(a2 + 48) + v23);
      if (v24 <= 1)
      {
        if (*(*(a2 + 48) + v23))
        {
          v25 = 0xD00000000000002DLL;
        }

        else
        {
          v25 = 0xD000000000000030;
        }

        if (*(*(a2 + 48) + v23))
        {
          v26 = "butesAutoTrainer";
        }

        else
        {
          v26 = "REMCDTemplateOperationQueueItem";
        }
      }

      else if (v24 == 2)
      {
        v25 = 0xD000000000000034;
        v26 = "d.ICCloudConfigurationUpdater";
      }

      else
      {
        if (v24 == 3)
        {
          v25 = 0xD000000000000031;
        }

        else
        {
          v25 = 0xD00000000000001BLL;
        }

        if (v24 == 3)
        {
          v26 = "atchUpSyncController";
        }

        else
        {
          v26 = "ActivityScheduler";
        }
      }

      v27 = (v26 | 0x8000000000000000);
      v28 = 0xD000000000000030;
      v29 = 0xD000000000000034;
      v30 = 0xD000000000000031;
      if (a1 == 3)
      {
        v31 = "atchUpSyncController";
      }

      else
      {
        v30 = 0xD00000000000001BLL;
        v31 = "ActivityScheduler";
      }

      if (a1 != 2)
      {
        v29 = v30;
      }

      v32 = "d.ICCloudConfigurationUpdater";
      if (a1 != 2)
      {
        v32 = v31;
      }

      if (a1)
      {
        v28 = 0xD00000000000002DLL;
        v33 = "butesAutoTrainer";
      }

      else
      {
        v33 = "REMCDTemplateOperationQueueItem";
      }

      v34 = (a1 <= 1u ? v28 : v29);
      v35 = a1 <= 1u ? v33 : v32;
      v36 = a1;
      v37 = (v35 | 0x8000000000000000);
      if (v25 == v34 && v27 == v37)
      {
        break;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v27, v39, v40, v41, v42, v43, v44, v45;
      v37, v46, v47, v48, v49, v50, v51, v52;
      if ((v38 & 1) == 0)
      {
        v23 = (v23 + 1) & v61;
        a1 = v36;
        if ((*(a2 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          continue;
        }
      }

      return v38 & 1;
    }

    v27, v16, v34, v17, v18, v19, v20, v21;
    v37, v54, v55, v56, v57, v58, v59, v60;
    v38 = 1;
  }

  else
  {
    v38 = 0;
  }

  return v38 & 1;
}

uint64_t REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.init(dictionary:forEvaluatingAgainst:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a1;
  v109 = a3;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v108 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v104 = &v99 - v9;
  __chkstk_darwin(v10, v11);
  v114 = &v99 - v12;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v14 = *(PredicateType - 8);
  __chkstk_darwin(PredicateType, v15);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v18 - 8, v19);
  v107 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v106 = &v99 - v23;
  __chkstk_darwin(v24, v25);
  v105 = &v99 - v26;
  __chkstk_darwin(v27, v28);
  v103 = &v99 - v29;
  __chkstk_darwin(v30, v31);
  v113 = &v99 - v32;
  __chkstk_darwin(v33, v34);
  v36 = &v99 - v35;
  __chkstk_darwin(v37, v38);
  v112 = &v99 - v39;
  __chkstk_darwin(v40, v41);
  v43 = &v99 - v42;
  __chkstk_darwin(v44, v45);
  v47 = &v99 - v46;
  v48 = type metadata accessor for UUID();
  v49 = *(*(v48 - 8) + 56);
  v110 = v47;
  v49(v47, 1, 1, v48);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.hashtags.getter();
  v116 = a2;
  LOBYTE(a2) = sub_100240F04(v17, a2);
  v115 = *(v14 + 8);
  v115(v17, PredicateType);
  if (a2)
  {
    *&v118 = 0x696669746E656469;
    *(&v118 + 1) = 0xEA00000000007265;
    v50 = [v111 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v50)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000050A4(v110, &unk_100939D90, "8\n\r");
    }

    else
    {
      sub_1000050A4(v110, &unk_100939D90, "8\n\r");
      v118 = 0u;
      v119 = 0u;
    }

    v120 = v118;
    v121 = v119;
    if (*(&v119 + 1))
    {
      v51 = swift_dynamicCast() ^ 1;
      v52 = v43;
    }

    else
    {
      sub_1000050A4(&v120, &qword_100939ED0, &qword_100791B10);
      v52 = v43;
      v51 = 1;
    }

    v49(v52, v51, 1, v48);
    sub_100031B58(v43, v110, &unk_100939D90, "8\n\r");
  }

  v49(v112, 1, 1, v48);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.lists.getter();
  v53 = sub_100240F04(v17, v116);
  v115(v17, PredicateType);
  v54 = v111;
  if (v53)
  {
    *&v118 = 0x6564692E7473696CLL;
    *(&v118 + 1) = 0xEF7265696669746ELL;
    v55 = [v111 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v55)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000050A4(v112, &unk_100939D90, "8\n\r");
    }

    else
    {
      sub_1000050A4(v112, &unk_100939D90, "8\n\r");
      v118 = 0u;
      v119 = 0u;
    }

    v120 = v118;
    v121 = v119;
    if (*(&v119 + 1))
    {
      v56 = swift_dynamicCast() ^ 1;
      v57 = v36;
    }

    else
    {
      sub_1000050A4(&v120, &qword_100939ED0, &qword_100791B10);
      v57 = v36;
      v56 = 1;
    }

    v49(v57, v56, 1, v48);
    sub_100031B58(v36, v112, &unk_100939D90, "8\n\r");
  }

  v49(v113, 1, 1, v48);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.account.getter();
  v58 = sub_100240F04(v17, v116);
  v115(v17, PredicateType);
  if (v58)
  {
    *&v118 = 0xD000000000000012;
    *(&v118 + 1) = 0x80000001007F1FC0;
    v59 = [v54 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v59)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000050A4(v113, &unk_100939D90, "8\n\r");
    }

    else
    {
      sub_1000050A4(v113, &unk_100939D90, "8\n\r");
      v118 = 0u;
      v119 = 0u;
    }

    v60 = v103;
    v120 = v118;
    v121 = v119;
    if (*(&v119 + 1))
    {
      v61 = swift_dynamicCast() ^ 1;
      v62 = v60;
    }

    else
    {
      sub_1000050A4(&v120, &qword_100939ED0, &qword_100791B10);
      v62 = v60;
      v61 = 1;
    }

    v49(v62, v61, 1, v48);
    sub_100031B58(v60, v113, &unk_100939D90, "8\n\r");
  }

  v63 = type metadata accessor for Date();
  v64 = *(*(v63 - 8) + 56);
  v64(v114, 1, 1, v63);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.date.getter();
  v65 = sub_100240F04(v17, v116);
  v115(v17, PredicateType);
  if (v65 & 1) != 0 || (static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.partOfDay.getter(), v66 = sub_100240F04(v17, v116), v115(v17, PredicateType), (v66))
  {
    *&v118 = 0x4479616C70736964;
    *(&v118 + 1) = 0xEF65746144657461;
    v67 = [v54 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v67)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000050A4(v114, &unk_100938850, qword_100795AE0);
    }

    else
    {
      sub_1000050A4(v114, &unk_100938850, qword_100795AE0);
      v118 = 0u;
      v119 = 0u;
    }

    v68 = v104;
    v120 = v118;
    v121 = v119;
    if (*(&v119 + 1))
    {
      v69 = swift_dynamicCast() ^ 1;
      v70 = v68;
    }

    else
    {
      sub_1000050A4(&v120, &qword_100939ED0, &qword_100791B10);
      v70 = v68;
      v69 = 1;
    }

    v64(v70, v69, 1, v63);
    sub_100031B58(v68, v114, &unk_100938850, qword_100795AE0);
    *&v120 = 0xD000000000000013;
    *(&v120 + 1) = 0x80000001007F0040;
    v71 = [v54 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v71)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v118 = 0u;
      v119 = 0u;
    }

    v120 = v118;
    v121 = v119;
    if (*(&v119 + 1))
    {
      if (swift_dynamicCast())
      {
        v72 = v117;
      }

      else
      {
        v72 = 2;
      }
    }

    else
    {
      sub_1000050A4(&v120, &qword_100939ED0, &qword_100791B10);
      v72 = 2;
    }

    *&v120 = 0xD000000000000019;
    *(&v120 + 1) = 0x80000001007F1FA0;
    v73 = [v54 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v73)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v118 = 0u;
      v119 = 0u;
    }

    v120 = v118;
    v121 = v119;
    if (*(&v119 + 1))
    {
      v74 = swift_dynamicCast();
      if (v74)
      {
        v75 = v117;
      }

      else
      {
        v75 = 0;
      }

      v76 = v74 ^ 1;
      goto LABEL_52;
    }

    sub_1000050A4(&v120, &qword_100939ED0, &qword_100791B10);
    v75 = 0;
  }

  else
  {
    v75 = 0;
    v72 = 2;
  }

  v76 = 1;
LABEL_52:
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.priorities.getter();
  v77 = sub_100240F04(v17, v116);
  v115(v17, PredicateType);
  if ((v77 & 1) == 0)
  {
    goto LABEL_61;
  }

  *&v118 = 0x797469726F697270;
  *(&v118 + 1) = 0xE800000000000000;
  v78 = [v54 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v78)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v118 = 0u;
    v119 = 0u;
  }

  v120 = v118;
  v121 = v119;
  if (!*(&v119 + 1))
  {
    sub_1000050A4(&v120, &qword_100939ED0, &qword_100791B10);
    goto LABEL_61;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_61:
    v101 = 0;
    v100 = 1;
LABEL_62:
    static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.flagged.getter();
    v80 = sub_100240F04(v17, v116);
    v115(v17, PredicateType);
    LODWORD(v104) = v72;
    if (v80)
    {
      *&v118 = 0x64656767616C66;
      *(&v118 + 1) = 0xE700000000000000;
      v81 = [v54 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v81)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v118 = 0u;
        v119 = 0u;
      }

      v120 = v118;
      v121 = v119;
      if (*(&v119 + 1))
      {
        if (swift_dynamicCast())
        {
          v82 = v117 > 0;
          goto LABEL_71;
        }
      }

      else
      {
        sub_1000050A4(&v120, &qword_100939ED0, &qword_100791B10);
      }
    }

    v82 = 2;
LABEL_71:
    v99 = v82;
    static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.completed.getter();
    v83 = v116;
    v84 = sub_100240F04(v17, v116);
    v83, v85, v86, v87, v88, v89, v90, v91;
    v115(v17, PredicateType);
    v103 = v75;
    v102 = v76;
    if (v84)
    {
      *&v120 = 0x6574656C706D6F63;
      *(&v120 + 1) = 0xE900000000000064;
      v92 = [v111 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v92)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v118 = 0u;
        v119 = 0u;
      }

      v120 = v118;
      v121 = v119;
      if (*(&v119 + 1))
      {
        v93 = swift_dynamicCast();
        v94 = v117;
        if (!v93)
        {
          v94 = 2;
        }

        goto LABEL_80;
      }

      sub_1000050A4(&v120, &qword_100939ED0, &qword_100791B10);
    }

    v94 = 2;
LABEL_80:
    LODWORD(v116) = v94;
    v95 = v110;
    sub_100010364(v110, v105, &unk_100939D90, "8\n\r");
    v96 = v112;
    sub_100010364(v112, v106, &unk_100939D90, "8\n\r");
    v97 = v113;
    sub_100010364(v113, v107, &unk_100939D90, "8\n\r");
    v98 = v114;
    sub_100010364(v114, v108, &unk_100938850, qword_100795AE0);
    REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.init(identifier:listIdentifier:accountIdentifier:displayDateDate:displayDateIsAllDay:displayDateSecondsFromGMT:alarmTriggers:priority:flagged:completed:)();

    sub_1000050A4(v98, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v97, &unk_100939D90, "8\n\r");
    sub_1000050A4(v96, &unk_100939D90, "8\n\r");
    return sub_1000050A4(v95, &unk_100939D90, "8\n\r");
  }

  result = v117;
  if ((v117 & 0x8000000000000000) == 0)
  {
    v101 = REMReminderPriorityLevelForPriority();
    v100 = 0;
    goto LABEL_62;
  }

  __break(1u);
  return result;
}

uint64_t sub_100242700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100242748()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093E840);
  v1 = sub_100006654(v0, qword_10093E840);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMCDHashtag.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDHashtag.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v9 = String._bridgeToObjectiveC()();
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v19 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v19)
  {
    v20 = [a2 ckIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = v19;
      [v22 setAccount:a2];
      [v22 mergeDataFromRecord:a1 accountID:v21];

      [v22 setCkServerRecord:a1];
      [v22 setInCloud:1];

      [v22 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100935CF8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_10093E840);
      v24 = a2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = v4;
        *v27 = 136446466;
        swift_getMetatypeMetadata();
        v28 = String.init<A>(describing:)();
        v30 = v29;
        v31 = sub_10000668C(v28, v29, &v54);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v27 + 4) = v31;
        *(v27 + 12) = 2082;
        v39 = [v24 remObjectID];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 description];

          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {
          v44 = 0xE300000000000000;
          v42 = 7104878;
        }

        v45 = sub_10000668C(v42, v44, &v54);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v27 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v25, v26, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v27, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v19;
}

Swift::String __swiftcall REMCDHashtag.recordType()()
{
  v0 = 0x67617468736148;
  v1 = 0xE700000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDHashtag.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v284 = &v283 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v297 = &v283 - v10;
  __chkstk_darwin(v11, v12);
  v296 = &v283 - v13;
  __chkstk_darwin(v14, v15);
  v286 = &v283 - v16;
  __chkstk_darwin(v17, v18);
  v285 = &v283 - v19;
  v308 = type metadata accessor for UUID();
  v20 = *(v308 - 8);
  __chkstk_darwin(v308, v21);
  v291 = &v283 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v300 = &v283 - v25;
  __chkstk_darwin(v26, v27);
  v299 = &v283 - v28;
  v29 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v29 - 8, v30);
  v32 = &v283 - v31;
  v311 = type metadata accessor for Date();
  v33 = *(v311 - 8);
  __chkstk_darwin(v311, v34);
  v294 = &v283 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = String._bridgeToObjectiveC()();
  v315.receiver = v3;
  v315.super_class = REMCDHashtag;
  objc_msgSendSuper2(&v315, "mergeDataFromRecord:accountID:", from.super.isa, v36);

  isa = from.super.isa;
  v37 = [(objc_class *)from.super.isa recordID];
  v38 = [v37 recordName];

  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
    v38 = String._bridgeToObjectiveC()();
    v40, v41, v42, v43, v44, v45, v46, v47;
  }

  v48 = [v3 ckIdentifierFromRecordName:v38];

  if (!v48)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
    v48 = String._bridgeToObjectiveC()();
    v50, v51, v52, v53, v54, v55, v56, v57;
  }

  [v3 setCkIdentifier:v48];

  v58 = 0;
  v290 = "account.identifier";
  v302 = (v20 + 48);
  v303 = (v20 + 8);
  v298 = (v20 + 32);
  v301 = (v20 + 56);
  v289 = (v20 + 16);
  v310 = (v33 + 56);
  v305 = (v33 + 48);
  v293 = (v33 + 32);
  v292 = (v33 + 8);
  *&v59 = 136446722;
  v295 = v59;
  *&v59 = 136446466;
  v287 = v59;
  *&v59 = 136446210;
  v288 = v59;
  v60 = isa;
  v306 = v3;
  v307 = v32;
  do
  {
    v62 = *(&off_1008E28A0 + v58 + 32);
    if (v62 <= 1)
    {
      if (*(&off_1008E28A0 + v58 + 32))
      {
        v70 = v32;
        v71 = v60;
        v72 = [(objc_class *)v60 encryptedValues];
        v73 = String._bridgeToObjectiveC()();
        v74 = [v72 objectForKeyedSubscript:v73];
        swift_unknownObjectRelease();

        if (v74 && (v314 = v74, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
        {
          v75 = v313;
          v76 = String._bridgeToObjectiveC()();
          v75, v77, v78, v79, v80, v81, v82, v83;
          [v3 setName:v76];
        }

        else
        {
          if (qword_100935CF8 != -1)
          {
            swift_once();
          }

          v84 = type metadata accessor for Logger();
          sub_100006654(v84, qword_10093E840);
          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&_mh_execute_header, v85, v86, "Hashtag does not have a name", v87, 2u);
          }
        }

        goto LABEL_45;
      }

      v63 = CKRecord.subscript.getter();
      if (v63)
      {
        v312 = v63;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        v64 = v311;
        v65 = swift_dynamicCast();
        (*v310)(v32, v65 ^ 1u, 1, v64);
        if ((*v305)(v32, 1, v64) != 1)
        {
          v66 = v294;
          v67 = v311;
          (*v293)(v294, v32, v311);
          v68 = Date._bridgeToObjectiveC()().super.isa;
          [v3 setCreationDate:v68];

          (*v292)(v66, v67);
          goto LABEL_10;
        }
      }

      else
      {
        (*v310)(v32, 1, 1, v311);
      }

      sub_1000050A4(v32, &unk_100938850, qword_100795AE0);
      if (qword_100935CF8 != -1)
      {
        swift_once();
      }

      v125 = type metadata accessor for Logger();
      sub_100006654(v125, qword_10093E840);
      v114 = Logger.logObject.getter();
      v126 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v114, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&_mh_execute_header, v114, v126, "Hashtag does not have creation date", v127, 2u);
      }

LABEL_57:

      goto LABEL_10;
    }

    if (v62 == 2)
    {
      if (CKRecord.subscript.getter())
      {
        objc_opt_self();
        v69 = swift_dynamicCastObjCClass();
        if (!v69)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v69 = 0;
      }

      v70 = v32;
      v88 = sub_1001287DC(v69);

      v71 = v60;
      if (v88)
      {
        objc_opt_self();
        v89 = swift_dynamicCastObjCClass();
        if (!v89)
        {
        }
      }

      else
      {
        v89 = 0;
      }

      [v3 setReminder:v89];

      v90 = [v3 reminder];
      if (v90)
      {
        v91 = v90;
        v92 = [v90 remObjectID];
        if (!v92)
        {
          if (qword_100935CF8 != -1)
          {
            swift_once();
          }

          v128 = type metadata accessor for Logger();
          sub_100006654(v128, qword_10093E840);
          v129 = v3;
          v130 = Logger.logObject.getter();
          v131 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v130, v131))
          {

LABEL_82:
            v60 = isa;
            v32 = v307;
            goto LABEL_10;
          }

          v132 = swift_slowAlloc();
          v304 = swift_slowAlloc();
          v312 = v304;
          *v132 = v287;
          v133 = [v129 remObjectID];
          if (v133)
          {
            v134 = v133;
            v135 = [v133 description];

            v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v138 = v137;
          }

          else
          {
            v138 = 0xE300000000000000;
            v136 = 7104878;
          }

          v198 = sub_10000668C(v136, v138, &v312);
          v138, v199, v200, v201, v202, v203, v204, v205;
          *(v132 + 4) = v198;
          *(v132 + 12) = 2082;
          v206 = [v129 reminderIdentifier];
          if (v206)
          {
            v207 = v286;
            v208 = v206;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v209 = 0;
          }

          else
          {
            v209 = 1;
            v207 = v286;
          }

          v32 = v307;
          v210 = v308;
          (*v301)(v207, v209, 1, v308);
          v211 = v285;
          sub_100031B58(v207, v285, &unk_100939D90, "8\n\r");
          if ((*v302)(v211, 1, v210))
          {
            sub_1000050A4(v211, &unk_100939D90, "8\n\r");
            v212 = 0xE300000000000000;
            v213 = 7104878;
          }

          else
          {
            v214 = v291;
            (*v289)(v291, v211, v210);
            sub_1000050A4(v211, &unk_100939D90, "8\n\r");
            v215 = UUID.uuidString.getter();
            v212 = v216;
            (*v303)(v214, v210);
            v213 = v215;
          }

          v217 = sub_10000668C(v213, v212, &v312);
          v212, v218, v219, v220, v221, v222, v223, v224;
          *(v132 + 14) = v217;
          _os_log_impl(&_mh_execute_header, v130, v131, "REMCDHashtag+CloudKit: mergeData(from:) unexpected nil cdReminder.remObjectID when merging cdHashtag.reminder {hashtag: %{public}s, reminderIdentifier: %{public}s}", v132, 0x16u);
          swift_arrayDestroy();

          v3 = v306;
          goto LABEL_92;
        }

        v93 = v92;
        v94 = [v92 uuid];

        v95 = v300;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v96 = v299;
        v97 = v95;
        v98 = v308;
        (*v298)(v299, v97, v308);
        v99 = UUID._bridgeToObjectiveC()().super.isa;
        [v3 setReminderIdentifier:v99];

        (*v303)(v96, v98);
      }

      if (qword_100935CF8 != -1)
      {
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      sub_100006654(v100, qword_10093E840);
      v101 = v3;
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v102, v103))
      {

LABEL_45:
        v60 = v71;
        v32 = v70;
        goto LABEL_10;
      }

      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v312 = v105;
      *v104 = v295;
      v106 = [v101 remObjectID];
      if (v106)
      {
        v107 = v106;
        v108 = [v106 description];

        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v111 = v110;
      }

      else
      {
        v111 = 0xE300000000000000;
        v109 = 7104878;
      }

      v147 = sub_10000668C(v109, v111, &v312);
      v111, v148, v149, v150, v151, v152, v153, v154;
      *(v104 + 4) = v147;
      *(v104 + 12) = 2082;
      v155 = [v101 reminderIdentifier];
      v304 = v105;
      if (v155)
      {
        v156 = v297;
        v157 = v155;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v158 = 0;
      }

      else
      {
        v158 = 1;
        v156 = v297;
      }

      v32 = v307;
      v159 = v308;
      (*v301)(v156, v158, 1, v308);
      v160 = v296;
      sub_100031B58(v156, v296, &unk_100939D90, "8\n\r");
      if ((*v302)(v160, 1, v159))
      {
        sub_1000050A4(v160, &unk_100939D90, "8\n\r");
        v161 = 0xE300000000000000;
        v162 = 7104878;
      }

      else
      {
        v163 = v291;
        (*v289)(v291, v160, v159);
        sub_1000050A4(v160, &unk_100939D90, "8\n\r");
        v164 = UUID.uuidString.getter();
        v161 = v165;
        v166 = v163;
        v32 = v307;
        (*v303)(v166, v159);
        v162 = v164;
      }

      v167 = sub_10000668C(v162, v161, &v312);
      v161, v168, v169, v170, v171, v172, v173, v174;
      *(v104 + 14) = v167;
      *(v104 + 22) = 2082;
      [v101 markedForDeletion];
      v175 = Bool.yesno.getter();
      v177 = v176;
      v178 = sub_10000668C(v175, v176, &v312);
      v177, v179, v180, v181, v182, v183, v184, v185;
      *(v104 + 24) = v178;
      _os_log_impl(&_mh_execute_header, v102, v103, "REMCDHashtag+CloudKit: mergeData(from:) merged to cdHashtag.reminder from a CK reference {hashtag: %{public}s, reminderIdentifier: %{public}s, markedForDeletion: %{public}s}", v104, 0x20u);
      swift_arrayDestroy();

      goto LABEL_75;
    }

    if (v62 == 3)
    {
      if (CKRecord.subscript.getter())
      {
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      if ([v3 markedForDeletion])
      {
        [v3 setSharedToMeReminderCKIdentifier:0];
        if (qword_100935CF8 != -1)
        {
          swift_once();
        }

        v112 = type metadata accessor for Logger();
        sub_100006654(v112, qword_10093E840);
        v113 = v3;
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.info.getter();

        if (!os_log_type_enabled(v114, v115))
        {
          goto LABEL_57;
        }

        v116 = v60;
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v312 = v118;
        *v117 = v288;
        v119 = [v113 remObjectID];
        if (v119)
        {
          v120 = v119;
          v121 = [v119 description];

          v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v124 = v123;
        }

        else
        {
          v124 = 0xE300000000000000;
          v122 = 7104878;
        }

        v225 = sub_10000668C(v122, v124, &v312);
        v124, v226, v227, v228, v229, v230, v231, v232;
        *(v117 + 4) = v225;
        _os_log_impl(&_mh_execute_header, v114, v115, "REMCDHashtag+CloudKit: mergeData(from:) hashtag is markedForDeletion so we should not try to merge SharedToMeReminderCKIdentifier {hashtag: %{public}s}", v117, 0xCu);
        sub_10000607C(v118);

        v60 = v116;
        v3 = v306;
        v32 = v307;
      }

      else
      {
        v139 = [(objc_class *)v60 encryptedValues];
        v140 = String._bridgeToObjectiveC()();
        v141 = [v139 objectForKeyedSubscript:v140];
        swift_unknownObjectRelease();

        if (!v141 || (v314 = v141, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) == 0))
        {
          if (qword_100935CF8 != -1)
          {
            swift_once();
          }

          v186 = type metadata accessor for Logger();
          sub_100006654(v186, qword_10093E840);
          v187 = v3;
          v188 = Logger.logObject.getter();
          v189 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v188, v189))
          {

            v60 = isa;
            goto LABEL_10;
          }

          v190 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          v312 = v191;
          *v190 = v288;
          v192 = [v187 remObjectID];
          if (v192)
          {
            v193 = v192;
            v194 = [v192 description];

            v195 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v197 = v196;
          }

          else
          {
            v197 = 0xE300000000000000;
            v195 = 7104878;
          }

          v259 = sub_10000668C(v195, v197, &v312);
          v197, v260, v261, v262, v263, v264, v265, v266;
          *(v190 + 4) = v259;
          _os_log_impl(&_mh_execute_header, v188, v189, "REMCDHashtag+CloudKit: mergeData(from:) unexpected nil record['SharedToMeReminderCKIdentifier'] when record['Reminder'] is nil and hashtag not markedForDeletion, the former must present otherwise we have no way to associate the tag to the reminder {hashtag: %{public}s}", v190, 0xCu);
          sub_10000607C(v191);

LABEL_75:
          v3 = v306;
LABEL_92:
          v60 = isa;
          goto LABEL_10;
        }

        v143 = v312;
        v142 = v313;
        v144 = v284;
        UUID.init(uuidString:)();
        v145 = v308;
        if ((*v302)(v144, 1, v308) == 1)
        {
          v146 = 0;
        }

        else
        {
          v146 = UUID._bridgeToObjectiveC()().super.isa;
          (*v303)(v144, v145);
        }

        [v3 setReminderIdentifier:v146];

        v233 = String._bridgeToObjectiveC()();
        [v3 setSharedToMeReminderCKIdentifier:v233];

        if (qword_100935CF8 != -1)
        {
          swift_once();
        }

        v234 = type metadata accessor for Logger();
        sub_100006654(v234, qword_10093E840);
        v235 = v3;

        v236 = Logger.logObject.getter();
        v237 = static os_log_type_t.info.getter();
        v142, v238, v239, v240, v241, v242, v243, v244;

        if (!os_log_type_enabled(v236, v237))
        {
          v142, v245, v246, v247, v248, v249, v250, v251;

          goto LABEL_82;
        }

        v304 = v143;
        v252 = swift_slowAlloc();
        v312 = swift_slowAlloc();
        *v252 = v287;
        v253 = [v235 remObjectID];
        if (v253)
        {
          v254 = v253;
          v255 = [v253 description];

          v256 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v258 = v257;

          v3 = v306;
        }

        else
        {
          v258 = 0xE300000000000000;
          v256 = 7104878;
        }

        v267 = sub_10000668C(v256, v258, &v312);
        v258, v268, v269, v270, v271, v272, v273, v274;
        *(v252 + 4) = v267;
        *(v252 + 12) = 2082;
        v275 = sub_10000668C(v304, v142, &v312);
        v142, v276, v277, v278, v279, v280, v281, v282;
        *(v252 + 14) = v275;
        _os_log_impl(&_mh_execute_header, v236, v237, "REMCDHashtag+CloudKit: mergeData(from:) merged to cdHashtag.reminder from SharedToMeReminderCKIdentifier {hashtag: %{public}s, sharedToMeReminderCKIdentifier: %{public}s}", v252, 0x16u);
        swift_arrayDestroy();

        v60 = isa;
        v32 = v307;
      }
    }

    else
    {
      sub_10018E134();
      CKRecordKeyValueSetting.subscript.getter();
      if (BYTE2(v312))
      {
        v61 = 0;
      }

      else
      {
        v61 = v312;
      }

      [v3 setType:v61];
    }

LABEL_10:
    ++v58;
  }

  while (v58 != 5);
}

CKRecord_optional __swiftcall REMCDHashtag.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v261 = &v258 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v258 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v269 = &v258 - v12;
  v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v258 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v17, v18).n128_u64[0];
  v21 = &v258 - v20;
  v280.receiver = v1;
  v280.super_class = REMCDHashtag;
  v22 = objc_msgSendSuper2(&v280, "newlyCreatedRecord", v19);
  v25 = v22;
  if (v22)
  {
    v267 = v9;
    v268 = v2;
    v26 = 0;
    v271 = "account.identifier";
    v265 = (v3 + 48);
    v266 = (v3 + 56);
    v260 = (v3 + 16);
    v259 = (v3 + 8);
    v24.n128_u64[0] = 136446210;
    v262 = v24;
    v24.n128_u64[0] = 136446722;
    v264 = v24;
    v24.n128_u64[0] = 136446466;
    v258 = v24;
    v24.n128_u64[0] = 136446978;
    v263 = v24;
    v272 = v1;
    v273 = v16;
    v274 = v21;
    v276 = v22;
    while (1)
    {
      v28 = *(&off_1008E28C8 + v26 + 32);
      if (v28 <= 1)
      {
        break;
      }

      if (v28 == 2)
      {
        v68 = [v1 reminder];
        if (!v68)
        {
          if ([v1 markedForDeletion])
          {
            if (qword_100935CF8 != -1)
            {
              swift_once();
            }

            v100 = type metadata accessor for Logger();
            sub_100006654(v100, qword_10093E840);
            v101 = v1;
            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              *&v277 = v105;
              *v104 = v262.n128_u32[0];
              v106 = [v101 remObjectID];
              if (v106)
              {
                v107 = v106;
                v108 = [v106 description];

                v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v111 = v110;

                v16 = v273;
              }

              else
              {
                v111 = 0xE300000000000000;
                v109 = 7104878;
              }

              v206 = sub_10000668C(v109, v111, &v277);
              v111, v207, v208, v209, v210, v211, v212, v213;
              *(v104 + 4) = v206;
              _os_log_impl(&_mh_execute_header, v102, v103, "REMCDHashtag+CloudKit: newlyCreatedRecord() (key=.reminder) unsetting reminder CK reference as the hashtag is markedForDeletion and no longer connected to its reminder {hashtag: %{public}s}", v104, 0xCu);
              sub_10000607C(v105);
            }

            else
            {
            }

            v25 = v276;
            CKRecord.subscript.setter();
            goto LABEL_5;
          }

          if (qword_100935CF8 != -1)
          {
            swift_once();
          }

          v131 = type metadata accessor for Logger();
          sub_100006654(v131, qword_10093E840);
          v132 = v1;
          v133 = Logger.logObject.getter();
          v134 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            *&v277 = v136;
            *v135 = v262.n128_u32[0];
            v137 = [v132 remObjectID];
            if (v137)
            {
              v138 = v137;
              v139 = [v137 description];

              v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v142 = v141;

              v16 = v273;
            }

            else
            {
              v142 = 0xE300000000000000;
              v140 = 7104878;
            }

            v214 = sub_10000668C(v140, v142, &v277);
            v142, v215, v216, v217, v218, v219, v220, v221;
            *(v135 + 4) = v214;
            _os_log_impl(&_mh_execute_header, v133, v134, "REMCDHashtag+CloudKit: Unexpectedly got cdHashtag.reminder == nil for a hashtag not marked for deletion in newlyCreatedRecord() (key=.reminder) {hashtag: %{public}s}", v135, 0xCu);
            sub_10000607C(v136);

            goto LABEL_97;
          }

          goto LABEL_79;
        }

        v69 = v68;
        v70 = [v68 isOwnedByCurrentUser];
        if (qword_100935CF8 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_100006654(v71, qword_10093E840);
        v72 = v1;
        v73 = v69;
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v270 = swift_slowAlloc();
          *&v277 = v270;
          *v76 = v264.n128_u32[0];
          v275 = v70;
          v77 = Bool.yesno.getter();
          v79 = v78;
          v80 = sub_10000668C(v77, v78, &v277);
          v79, v81, v82, v83, v84, v85, v86, v87;
          *(v76 + 4) = v80;
          *(v76 + 12) = 2082;
          v88 = [v72 remObjectID];
          if (v88)
          {
            v89 = v88;
            v90 = [v88 description];

            v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v93 = v92;
          }

          else
          {
            v93 = 0xE300000000000000;
            v91 = 7104878;
          }

          v153 = sub_10000668C(v91, v93, &v277);
          v93, v154, v155, v156, v157, v158, v159, v160;
          *(v76 + 14) = v153;
          *(v76 + 22) = 2082;
          v161 = [v73 remObjectID];
          if (v161)
          {
            v162 = v161;
            v163 = [v161 description];

            v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v166 = v165;
          }

          else
          {
            v166 = 0xE300000000000000;
            v164 = 7104878;
          }

          v167 = sub_10000668C(v164, v166, &v277);
          v166, v168, v169, v170, v171, v172, v173, v174;
          *(v76 + 24) = v167;
          _os_log_impl(&_mh_execute_header, v74, v75, "REMCDHashtag+CloudKit: newlyCreatedRecord() will set up a CK reference only if the tag was created by the owner {owner?: %{public}s, hashtag: %{public}s, reminder: %{public}s}", v76, 0x20u);
          swift_arrayDestroy();

          v1 = v272;
          v16 = v273;
          v25 = v276;
          if (v275)
          {
LABEL_65:
            v175 = [v73 recordID];
            v176 = [v72 cloudKitReferenceWithRecordIDAndValidateAction:v175];

            CKRecord.subscript.setter();
          }
        }

        else
        {

          if (v70)
          {
            goto LABEL_65;
          }
        }

        v21 = v274;
        goto LABEL_5;
      }

      if (v28 != 3)
      {
        v27 = [v1 type];
        *(&v278 + 1) = &type metadata for Int16;
        v279 = &protocol witness table for Int16;
        LOWORD(v277) = v27;
        sub_10018E134();
LABEL_4:
        CKRecordKeyValueSetting.subscript.setter();
        goto LABEL_5;
      }

      v29 = [v1 reminder];
      if (!v29)
      {
        if ([v1 markedForDeletion])
        {
          if (qword_100935CF8 != -1)
          {
            swift_once();
          }

          v112 = type metadata accessor for Logger();
          sub_100006654(v112, qword_10093E840);
          v113 = v1;
          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            *&v277 = v117;
            *v116 = v262.n128_u32[0];
            v118 = [v113 remObjectID];
            if (v118)
            {
              v119 = v118;
              v120 = [v118 description];

              v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v123 = v122;

              v16 = v273;
            }

            else
            {
              v123 = 0xE300000000000000;
              v121 = 7104878;
            }

            v222 = sub_10000668C(v121, v123, &v277);
            v123, v223, v224, v225, v226, v227, v228, v229;
            *(v116 + 4) = v222;
            _os_log_impl(&_mh_execute_header, v114, v115, "REMCDHashtag+CloudKit: newlyCreatedRecord() (key=.sharedToMeReminderCKIdentifier) unsetting SharedToMeReminderCKIdentifier as the hashtag is markedForDeletion and no longer connected to its reminder {hashtag: %{public}s}", v116, 0xCu);
            sub_10000607C(v117);
          }

          else
          {
          }

          v25 = v276;
          v230 = [v276 encryptedValues];
          v231 = String._bridgeToObjectiveC()();
          [v230 setObject:0 forKeyedSubscript:v231];
          swift_unknownObjectRelease();

          goto LABEL_5;
        }

        if (qword_100935CF8 != -1)
        {
          swift_once();
        }

        v143 = type metadata accessor for Logger();
        sub_100006654(v143, qword_10093E840);
        v144 = v1;
        v133 = Logger.logObject.getter();
        v145 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v133, v145))
        {
          v146 = swift_slowAlloc();
          *&v277 = swift_slowAlloc();
          *v146 = v258.n128_u32[0];
          v147 = [v144 remObjectID];
          if (v147)
          {
            v148 = v147;
            v149 = [v147 description];

            v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v152 = v151;
          }

          else
          {
            v152 = 0xE300000000000000;
            v150 = 7104878;
          }

          v232 = sub_10000668C(v150, v152, &v277);
          v152, v233, v234, v235, v236, v237, v238, v239;
          *(v146 + 4) = v232;
          *(v146 + 12) = 2082;
          v240 = [v144 reminder];
          if (v240)
          {
            v241 = v240;
            v242 = [v240 remObjectID];
            v21 = v274;
            if (v242)
            {
              v243 = v242;
              v244 = [v242 description];

              v245 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v247 = v246;

              v248 = v245;
            }

            else
            {

              v247 = 0xE300000000000000;
              v248 = 7104878;
            }
          }

          else
          {
            v247 = 0xE300000000000000;
            v248 = 7104878;
            v21 = v274;
          }

          v249 = sub_10000668C(v248, v247, &v277);
          v247, v250, v251, v252, v253, v254, v255, v256;
          *(v146 + 14) = v249;
          _os_log_impl(&_mh_execute_header, v133, v145, "REMCDHashtag+CloudKit: Unexpectedly got cdHashtag.reminder == nil for a hashtag not marked for deletion in newlyCreatedRecord() (key=.sharedToMeReminderCKIdentifier) {hashtag: %{public}s, reminder: %{public}s}", v146, 0x16u);
          swift_arrayDestroy();

          v1 = v272;
          v16 = v273;
LABEL_97:
          v25 = v276;
          goto LABEL_5;
        }

LABEL_79:

        v25 = v276;
        goto LABEL_5;
      }

      v30 = v29;
      v275 = [v29 isOwnedByCurrentUser];
      if (qword_100935CF8 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100006654(v31, qword_10093E840);
      v32 = v1;
      v33 = v30;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v270 = swift_slowAlloc();
        *&v277 = v270;
        *v36 = v263.n128_u32[0];
        v37 = Bool.yesno.getter();
        v39 = v38;
        v40 = sub_10000668C(v37, v38, &v277);
        v39, v41, v42, v43, v44, v45, v46, v47;
        *(v36 + 4) = v40;
        *(v36 + 12) = 2082;
        [v33 isSharedViaICloud];
        v48 = Bool.yesno.getter();
        v50 = v49;
        v51 = sub_10000668C(v48, v49, &v277);
        v50, v52, v53, v54, v55, v56, v57, v58;
        *(v36 + 14) = v51;
        *(v36 + 22) = 2082;
        v59 = [v32 remObjectID];
        if (v59)
        {
          v60 = v59;
          v61 = [v59 description];

          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
        }

        else
        {
          v64 = 0xE300000000000000;
          v62 = 7104878;
        }

        v177 = sub_10000668C(v62, v64, &v277);
        v64, v178, v179, v180, v181, v182, v183, v184;
        *(v36 + 24) = v177;
        *(v36 + 32) = 2082;
        v185 = [v33 remObjectID];
        if (v185)
        {
          v186 = v185;
          v187 = [v185 description];

          v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v190 = v189;
        }

        else
        {
          v190 = 0xE300000000000000;
          v188 = 7104878;
        }

        v21 = v274;
        v193 = sub_10000668C(v188, v190, &v277);
        v190, v194, v195, v196, v197, v198, v199, v200;
        *(v36 + 34) = v193;
        _os_log_impl(&_mh_execute_header, v34, v35, "REMCDHashtag+CloudKit: newlyCreatedRecord() will write to SharedToMeReminderCKIdentifier only if the tag was created by a participant {owner?: %{public}s, isShared?: %{public}s, hashtag: %{public}s, reminder: %{public}s}", v36, 0x2Au);
        swift_arrayDestroy();

        v1 = v272;
        v16 = v273;
        v25 = v276;
        if ((v275 & 1) == 0)
        {
LABEL_48:
          [v25 encryptedValues];
          v127 = [v32 reminderIdentifier];
          if (v127)
          {
            v128 = v267;
            v129 = v127;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v130 = 0;
          }

          else
          {
            v130 = 1;
            v128 = v267;
          }

          v191 = v268;
          (*v266)(v128, v130, 1, v268);
          v192 = v269;
          sub_100031B58(v128, v269, &unk_100939D90, "8\n\r");
          if ((*v265)(v192, 1, v191))
          {
            sub_1000050A4(v192, &unk_100939D90, "8\n\r");
            v277 = 0u;
            v278 = 0u;
            v279 = 0;
          }

          else
          {
            v201 = v261;
            (*v260)(v261, v192, v191);
            sub_1000050A4(v192, &unk_100939D90, "8\n\r");
            v202 = UUID.uuidString.getter();
            v204 = v203;
            v205 = v201;
            v25 = v276;
            (*v259)(v205, v191);
            *(&v278 + 1) = &type metadata for String;
            v279 = &protocol witness table for String;
            *&v277 = v202;
            *(&v277 + 1) = v204;
          }

          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.setter();

          swift_unknownObjectRelease();
          v21 = v274;
          goto LABEL_5;
        }
      }

      else
      {

        if ((v275 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

LABEL_5:
      if (++v26 == 5)
      {
        goto LABEL_98;
      }
    }

    if (*(&off_1008E28C8 + v26 + 32))
    {
      v94 = [v25 encryptedValues];
      v95 = [v1 name];
      if (v95)
      {
        v96 = v95;
        v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v99 = v98;

        *(&v278 + 1) = &type metadata for String;
        v279 = &protocol witness table for String;
        *&v277 = v97;
        *(&v277 + 1) = v99;
      }

      else
      {
        v279 = 0;
        v277 = 0u;
        v278 = 0u;
      }

      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.setter();
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

    v65 = [v1 creationDate];
    if (v65)
    {
      v66 = v65;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = 0;
    }

    else
    {
      v67 = 1;
    }

    v124 = type metadata accessor for Date();
    v125 = *(v124 - 8);
    (*(v125 + 56))(v16, v67, 1, v124);
    sub_100031B58(v16, v21, &unk_100938850, qword_100795AE0);
    if ((*(v125 + 48))(v21, 1, v124) == 1)
    {
      sub_1000050A4(v21, &unk_100938850, qword_100795AE0);
      v277 = 0u;
      v278 = 0u;
      v279 = 0;
    }

    else
    {
      *(&v278 + 1) = v124;
      v279 = &protocol witness table for Date;
      v126 = sub_1000103CC(&v277);
      (*(v125 + 32))(v126, v21, v124);
    }

    sub_10018E134();
    goto LABEL_4;
  }

LABEL_98:
  v257 = v25;
  result.value.super.isa = v257;
  result.is_nil = v23;
  return result;
}

Swift::Void __swiftcall REMCDHashtag.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100935CF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_10093E840);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v73 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v75);
  v14, v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v23 = [v4 reminder];
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v23 remObjectID];
  if (!v25)
  {

LABEL_12:
    v29 = 0xE300000000000000;
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

LABEL_13:
  v30 = sub_10000668C(v7, v29, &v75);
  v29, v31, v32, v33, v34, v35, v36, v37;
  *(v8 + 14) = v30;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for hashtag {hashtagID: %{public}s, reminderID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v38 = [v4 reminder];
  if (v38)
  {
    v74 = v38;
    if ([v38 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
    {
      v39 = v4;
      v40 = v74;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v43 = 136446466;
        v44 = &selRef_persistentStoreForIdentifier_;
        v45 = [v39 remObjectID];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 description];

          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v44 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v50 = 0xE300000000000000;
          v48 = 7104878;
        }

        v51 = sub_10000668C(v48, v50, &v75);
        v50, v52, v53, v54, v55, v56, v57, v58;
        *(v43 + 4) = v51;
        *(v43 + 12) = 2082;
        v59 = [v40 v44[106]];
        if (v59)
        {
          v60 = v59;
          v61 = [v59 description];

          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
        }

        else
        {
          v64 = 0xE300000000000000;
          v62 = 7104878;
        }

        v65 = sub_10000668C(v62, v64, &v75);
        v64, v66, v67, v68, v69, v70, v71, v72;
        *(v43 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v41, v42, "Reminder is marked for deletion but hashtag is not {hashtagID: %{public}s, reminderID: %{public}s}", v43, 0x16u);
        swift_arrayDestroy();
      }

      [v39 markForDeletion];
    }

    [v74 forcePushToCloud];
  }
}

Swift::Void __swiftcall REMCDHashtag.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093E840);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093E858, qword_10079CB30);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v18);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

uint64_t _sSo12REMCDHashtagC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093E840);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093E858, qword_10079CB30);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _sSo12REMCDHashtagC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093E840);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093E858, qword_10079CB30);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_10024653C(void *a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v12[-v4];
  v13 = &_swiftEmptyArrayStorage;
  sub_1000F5104(qword_10094ECA0, &unk_1007B4A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  KeyPath = swift_getKeyPath();
  v8 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v10 = sub_100392340(KeyPath, v5);

  *(inited + 32) = v10;
  sub_100272378(inited);
  return sub_10000C2B0();
}

uint64_t sub_100246698()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093E860);
  v1 = sub_100006654(v0, qword_10093E860);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Class sub_100246760(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  swift_bridgeObjectRelease_n();
  return v4.super.isa;
}

char *sub_100246808(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v37 - v10;
  v12 = sub_1000F5104(&qword_10093E970, &unk_10079CC50);
  v44 = *(v12 - 8);
  v45 = v12;
  __chkstk_darwin(v12, v13);
  v15 = &v37 - v14;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = sub_100392DF0(&_swiftEmptyArrayStorage);
  }

  else
  {
    v16 = _swiftEmptySetSingleton;
  }

  *&v4[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cancellables] = v16;
  *&v4[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList] = 0;
  v17 = OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedEditingSessionID;
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v19 = &v4[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedMLModels];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  *(v19 + 5) = 255;
  *(v19 + 3) = 0u;
  *(v19 + 4) = 0u;
  *(v19 + 73) = 0u;
  *&v4[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedContacts] = _swiftEmptyDictionarySingleton;
  v20 = OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_contactStore;
  *&v4[v20] = [objc_allocWithZone(CNContactStore) init];
  v21 = a3;
  *&v4[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_queue] = a3;
  *&v4[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_storePerformer] = a1;
  v22 = *(a2 + 8);
  v23 = *(a2 + 24);
  v24 = *(a2 + 40);
  v25 = a1;
  v26 = *(a2 + 56);
  v27 = &v4[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource];
  v28 = *(a2 + 16);
  *v27 = *a2;
  *(v27 + 1) = v28;
  v29 = *(a2 + 48);
  *(v27 + 2) = *(a2 + 32);
  *(v27 + 3) = v29;
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v30 = v21;
  v39 = v25;
  v43 = v22;

  v42 = v23;

  v41 = v24;

  v40 = v26;

  v31 = objc_msgSendSuper2(&v49, "init");
  v32 = qword_100935D08;
  v33 = v31;
  if (v32 != -1)
  {
    swift_once();
  }

  v47 = qword_10093E878;
  v48 = v30;
  v34 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v34 - 8) + 56))(v11, 1, 1, v34);

  v38 = v30;
  sub_1000F5104(&unk_10093E978, &qword_1007A1070);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&unk_10093E988, &unk_10093E978, &qword_1007A1070, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v11, &qword_100939980, &unk_10079ADA0);

  sub_10000CB48(&qword_10093E998, &qword_10093E970, &unk_10079CC50, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v35 = v45;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v44 + 8))(v15, v35);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v33;
}

uint64_t sub_100246D50()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v1 = v0 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedMLModels;
  swift_beginAccess();
  if (*(v1 + 40) != 0xFF)
  {
    v9 = *(v1 + 80);
    v10 = *(v1 + 88);
    v16[1] = v9;
    v17 = v10;
    sub_1002490E8(v9, v10);
    sub_1000F5104(&qword_10093E9A8, &qword_1007A8A70);
    Result<>.tryMap<A>(transform:)();
    sub_100249154(v9, v10);
    sub_100138D4C(*&v18[0], SBYTE8(v18[0]));
  }

  if (qword_100935D00 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_10093E860);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "SuggestedAttributesPerformer.cachedMLModels invalidating cache", v14, 2u);
  }

  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v20 = 255;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  swift_beginAccess();
  sub_100249770(v18, v1);
  return swift_endAccess();
}

id sub_100247000()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_100935D00 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10093E860);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deallocating SuggestedAttributesPerformer", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t type metadata accessor for RDXPCSuggestedAttributesPerformer(uint64_t a1)
{
  result = qword_10093E948;
  if (!qword_10093E948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100247294()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (qword_100935D00 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10093E860);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Prewarming models", v13, 2u);
  }

  sub_100247474(v15);
  return sub_1002497E0(v15);
}

double sub_100247474@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v3);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
LABEL_4:
    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10093E860);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "SuggestedAttributesPerformer.cachedMLModels cache miss, loaded and set cache";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v14, v15, v17, v16, 2u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v11 = &v27;
  v12 = OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedMLModels;
  swift_beginAccess();
  sub_100010364(v1 + v12, v23, &qword_10093E9A0, &unk_10079CC60);
  if (BYTE8(v24) == 0xFF)
  {
    sub_1000050A4(v23, &qword_10093E9A0, &unk_10079CC60);
    sub_100247988(&v27);
    sub_100249810(&v27, v23);
    swift_beginAccess();
    sub_100249770(v23, v1 + v12);
    swift_endAccess();
    if (qword_100935D00 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v29 = v24;
  v30 = v25;
  v31[0] = v26[0];
  *(v31 + 9) = *(v26 + 9);
  v27 = v23[0];
  v28 = v23[1];
  if (qword_100935D00 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10093E860);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "SuggestedAttributesPerformer.cachedMLModels cache hit";
    goto LABEL_10;
  }

LABEL_11:

  v19 = v30;
  a1[2] = v29;
  a1[3] = v19;
  a1[4] = v31[0];
  *(a1 + 73) = *(v11 + 73);
  result = *&v27;
  v21 = v28;
  *a1 = v27;
  a1[1] = v21;
  return result;
}

uint64_t sub_100247988@<X0>(_OWORD *a1@<X8>)
{
  v90 = a1;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v88 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v80 - v8;
  __chkstk_darwin(v10, v11);
  v13 = &v80 - v12;
  sub_1000060C8(0, &qword_10093E9B0, REMPaths_ptr);
  static REMPaths.mlModelURL()();
  sub_1002487A0(v13, v95);
  v95[40] = 0;
  v93 = *&v95[8];
  v94 = *&v95[24];
  v98 = *v95;
  v99 = *&v95[8];
  v100 = *&v95[24];
  v101 = 0;
  v89 = v3;
  v14 = v2;
  v85 = *(v3 + 16);
  v86 = v3 + 16;
  v85(v9, v13, v2);
  type metadata accessor for REMkNNByTitleEmbedding();
  swift_allocObject();
  v15 = REMkNNByTitleEmbedding.init(from:with:)();
  v81 = 0;
  v87 = v15;
  __chkstk_darwin(v15, v16);
  v82 = v13;
  *(&v80 - 2) = v13;
  sub_1000F5104(&unk_10093E960, &qword_10079CC10);
  type metadata accessor for RDIntentClusterModel();
  v17 = Result<>.tryMap<A>(transform:)();
  v84 = *v95;
  v83 = v95[8];
  v18 = v1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource;
  v19 = (*(v1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource + 48))(v17);
  if (!v19)
  {
    memset(v95, 0, 32);
LABEL_11:
    v23 = sub_1000050A4(v95, &qword_100939ED0, &qword_100791B10);
    goto LABEL_12;
  }

  v20 = v19;
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 valueForKey:v21];

  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v93 = 0u;
    v94 = 0u;
  }

  *v95 = v93;
  *&v95[16] = v94;
  if (!*(&v94 + 1))
  {
    goto LABEL_11;
  }

  sub_1000F5104(&qword_10093E9C0, qword_100794F90);
  v23 = swift_dynamicCast();
  if ((v23 & 1) == 0)
  {
LABEL_12:
    v34 = 0;
    v33 = 0;
    v35 = 1;
    v36 = 1;
    goto LABEL_13;
  }

  v31 = v93;
  if (*(v93 + 16))
  {
    v32 = sub_100005F4C(0x65766974616C6572, 0xEF74726F70707553);
    if (v24)
    {
      v33 = *(*(v31 + 56) + 8 * v32);
    }

    else
    {
      v33 = 0;
    }

    v36 = v24 ^ 1;
    if (*(v31 + 16))
    {
      v54 = sub_100005F4C(0x6E656469666E6F63, 0xEA00000000006563);
      if (v24)
      {
        v34 = *(*(v31 + 56) + 8 * v54);
        v31, v24, v25, v26, v27, v28, v29, v30;
        v35 = 0;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v33 = 0;
    v36 = 1;
  }

  v31, v24, v25, v26, v27, v28, v29, v30;
  v34 = 0;
  v35 = 1;
LABEL_13:
  v37 = (*(v18 + 32))(v23);
  if (!v37)
  {
    memset(v95, 0, 32);
    v41 = v82;
    v42 = v33;
    v43 = v14;
LABEL_23:
    sub_1000050A4(v95, &qword_100939ED0, &qword_100791B10);
    v51 = v41;
    goto LABEL_36;
  }

  v38 = v37;
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 valueForKey:v39];

  if (v40)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v93 = 0u;
    v94 = 0u;
  }

  v41 = v82;
  v42 = v33;
  *v95 = v93;
  *&v95[16] = v94;
  v43 = v14;
  if (!*(&v94 + 1))
  {
    goto LABEL_23;
  }

  sub_1000F5104(&qword_10093E9C0, qword_100794F90);
  v51 = v41;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v52 = v93;
  if (*(v93 + 16))
  {
    v53 = sub_100005F4C(0x65766974616C6572, 0xEF74726F70707553);
    if (v44)
    {
      v42 = *(*(v52 + 56) + 8 * v53);
    }

    else
    {
      v42 = 0;
    }

    v36 = v44 ^ 1;
    if (*(v52 + 16))
    {
      v55 = sub_100005F4C(0x6E656469666E6F63, 0xEA00000000006563);
      if (v44)
      {
        v34 = *(*(v52 + 56) + 8 * v55);
        v52, v44, v45, v46, v47, v48, v49, v50;
        v35 = 0;
        goto LABEL_36;
      }
    }
  }

  else
  {
    v42 = 0;
    v36 = 1;
  }

  v52, v44, v45, v46, v47, v48, v49, v50;
  v34 = 0;
  v35 = 1;
LABEL_36:
  v56 = v81 != 0;
  v57 = v88;
  v85(v88, v51, v43);
  type metadata accessor for RDCoreBehaviorModel(0);
  swift_allocObject();
  v58 = sub_1004C9A28(v57, v42, v36 & 1, v34, v35);
  sub_100010364(&v98, v95, &unk_10093E960, &qword_10079CC10);
  *&v96 = v87;
  BYTE8(v96) = v56;
  *v97 = v84;
  v97[8] = v83;
  *&v97[16] = v58;
  v97[24] = 0;
  if (qword_100935D00 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_100006654(v59, qword_10093E860);
  sub_100249810(v95, &v93);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v92 = v63;
    *v62 = 136446210;
    sub_100249810(&v93, &v91);
    v64 = String.init<A>(describing:)();
    v66 = v65;
    sub_1002497E0(&v93);
    v67 = sub_10000668C(v64, v66, &v92);
    v66, v68, v69, v70, v71, v72, v73, v74;
    *(v62 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v60, v61, "Loaded MLModels {models: %{public}s}", v62, 0xCu);
    sub_10000607C(v63);
  }

  else
  {

    sub_1002497E0(&v93);
  }

  sub_1000050A4(&v98, &unk_10093E960, &qword_10079CC10);
  v75 = v96;
  v76 = v89;
  v77 = v90;
  v90[2] = *&v95[32];
  v77[3] = v75;
  v77[4] = *v97;
  *(v77 + 73) = *&v97[9];
  v78 = *&v95[16];
  *v77 = *v95;
  v77[1] = v78;
  return (*(v76 + 8))(v51, v43);
}

uint64_t sub_1002481DC(unint64_t a1)
{
  isUniquelyReferenced_nonNull_native = v1;
  v3 = a1;
  v76 = _swiftEmptyDictionarySingleton;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_61:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1000F5104(&qword_10093E9E0, &qword_10079CC78);
  Dictionary.reserveCapacity(_:)(v5);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100799D70;
  *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  *(v6 + 40) = CNContactPhoneNumbersKey;
  v71 = v6;
  *(v6 + 48) = CNContactEmailAddressesKey;
  if (v4)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_52:
    v64 = CNContactPhoneNumbersKey;
    v65 = CNContactEmailAddressesKey;
LABEL_53:
    v71, v11, v12, v13, v14, v15, v16, v17;
    return v76;
  }

  v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_52;
  }

LABEL_5:
  v74 = OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedContacts;
  v75 = v3 & 0xC000000000000001;
  v72 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = CNContactPhoneNumbersKey;
  v9 = CNContactEmailAddressesKey;
  v10 = 0;
  v67 = isUniquelyReferenced_nonNull_native;
  v68 = v3;
  v73 = v7;
  while (1)
  {
    if (v75)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v72 + 16))
      {
        goto LABEL_55;
      }

      v18 = *(v3 + 8 * v10 + 32);
    }

    v19 = v18;
    v20 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v21 = [v18 address];
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v23;

      sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
      v24 = REMContactRepresentation.init(address:)();
      if (v24)
      {
        break;
      }
    }

LABEL_7:
    ++v10;
    if (v20 == v7)
    {
      goto LABEL_53;
    }
  }

  v4 = v24;
  swift_beginAccess();
  v25 = *(isUniquelyReferenced_nonNull_native + v74);
  if (*(v25 + 16))
  {
    v26 = sub_100364588(v4);
    if (v27)
    {
      v28 = *(*(v25 + 56) + 8 * v26);
      swift_endAccess();
      v29 = v28;
      if (v28)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }
  }

  swift_endAccess();
  v30 = CNContactStore.contact(matching:keysToFetch:)();
  if (!v30)
  {
LABEL_25:

    v7 = v73;
    goto LABEL_7;
  }

  v28 = v30;
  v31 = v4;
  v4 = v74;
  swift_beginAccess();
  v69 = v28;
  v70 = v31;
  v32 = v31;
  v33 = isUniquelyReferenced_nonNull_native;
  v3 = v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v33 + v74);
  *(v33 + v74) = 0x8000000000000000;
  v36 = sub_100364588(v3);
  v37 = v34[2];
  v38 = (v35 & 1) == 0;
  v39 = v37 + v38;
  if (__OFADD__(v37, v38))
  {
    goto LABEL_57;
  }

  v4 = v35;
  if (v34[3] >= v39)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v35 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_100375348();
      if ((v4 & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    sub_10036DD94(v39, isUniquelyReferenced_nonNull_native);
    v40 = sub_100364588(v3);
    if ((v4 & 1) != (v41 & 1))
    {
      goto LABEL_62;
    }

    v36 = v40;
    if ((v4 & 1) == 0)
    {
LABEL_30:
      v34[(v36 >> 6) + 8] |= 1 << v36;
      *(v34[6] + 8 * v36) = v3;
      *(v34[7] + 8 * v36) = v28;
      v44 = v34[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_60;
      }

      v34[2] = v46;
      goto LABEL_32;
    }
  }

  v42 = v34[7];
  v43 = *(v42 + 8 * v36);
  *(v42 + 8 * v36) = v28;

LABEL_32:
  isUniquelyReferenced_nonNull_native = v67;
  *(v67 + v74) = v34;
  swift_endAccess();

  v4 = v70;
LABEL_33:
  v47 = [v19 objectID];
  v48 = v76;
  if ((v76 & 0xC000000000000001) != 0)
  {
    if (v76 < 0)
    {
      v49 = v76;
    }

    else
    {
      v49 = v76 & 0xFFFFFFFFFFFFFF8;
    }

    v50 = v28;
    v51 = __CocoaDictionary.count.getter();
    if (__OFADD__(v51, 1))
    {
      goto LABEL_58;
    }

    v3 = v4;
    v48 = sub_10021D964(v49, v51 + 1);
    v76 = v48;
  }

  else
  {
    v3 = v4;
    v52 = v28;
  }

  v4 = swift_isUniquelyReferenced_nonNull_native();
  v53 = sub_10002B924(v47);
  v55 = v48[2];
  v56 = (v54 & 1) == 0;
  v45 = __OFADD__(v55, v56);
  v57 = v55 + v56;
  if (v45)
  {
    goto LABEL_56;
  }

  v58 = v54;
  if (v48[3] >= v57)
  {
    if ((v4 & 1) == 0)
    {
      v4 = v53;
      sub_1003754A8();
      v53 = v4;
      if (v58)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    }

LABEL_45:
    if (v58)
    {
LABEL_46:
      v60 = v48[7];
      v61 = *(v60 + 8 * v53);
      *(v60 + 8 * v53) = v28;

LABEL_50:
      v76 = v48;
      v7 = v73;
      v3 = v68;
      goto LABEL_7;
    }

LABEL_48:
    v48[(v53 >> 6) + 8] |= 1 << v53;
    *(v48[6] + 8 * v53) = v47;
    *(v48[7] + 8 * v53) = v28;

    v62 = v48[2];
    v45 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v45)
    {
      goto LABEL_59;
    }

    v48[2] = v63;
    goto LABEL_50;
  }

  sub_10036DFFC(v57, v4);
  v53 = sub_10002B924(v47);
  if ((v58 & 1) == (v59 & 1))
  {
    goto LABEL_45;
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_62:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002487A0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a1;
  v72 = a2;
  v73 = sub_1000F5104(&qword_10093E9C8, &qword_10079CC70);
  __chkstk_darwin(v73, v2);
  v74 = &v69 - v3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_10093E9D0, &qword_10079E220);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v69 - v11;
  v76 = type metadata accessor for REMTitleEmbeddingConfig();
  v13 = *(v76 - 8);
  __chkstk_darwin(v76, v14);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v20 = &v69 - v19;
  __chkstk_darwin(v21, v22);
  v24 = &v69 - v23;
  v27 = __chkstk_darwin(v25, v26);
  v29 = &v69 - v28;
  (*(v5 + 16))(v8, v75, v4, v27);
  v30 = v79;
  REMTitleEmbeddingConfig.init(url:)();
  if (v30)
  {

    (*(v13 + 56))(v12, 1, 1, v76);
    sub_1000050A4(v12, &unk_10093E9D0, &qword_10079E220);
    v31 = objc_opt_self();
    v32 = String._bridgeToObjectiveC()();
    [v31 internalErrorWithDebugDescription:v32];

    return swift_willThrow();
  }

  v75 = v20;
  v70 = v24;
  v71 = v16;
  v79 = 0;
  v34 = v76;
  (*(v13 + 56))(v12, 0, 1, v76);
  (*(v13 + 32))(v29, v12, v34);
  REMTitleEmbeddingConfig.currentMethod.getter();
  v35 = v74;
  REMTitleEmbeddingMethods.init(rawValue:)();
  v36 = type metadata accessor for REMTitleEmbeddingMethods();
  v37 = *(v36 - 8);
  v38 = v13;
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    v39 = objc_opt_self();
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v40._object = 0x80000001007F2170;
    v40._countAndFlagsBits = 0xD00000000000001FLL;
    String.append(_:)(v40);
    v41._countAndFlagsBits = REMTitleEmbeddingConfig.currentMethod.getter();
    v42 = v29;
    object = v41._object;
    String.append(_:)(v41);
    object, v44, v45, v46, v47, v48, v49, v50;
    v51._countAndFlagsBits = 0xD000000000000021;
    v51._object = 0x80000001007F2190;
    String.append(_:)(v51);
    v52 = v78;
    v53 = String._bridgeToObjectiveC()();
    v52, v54, v55, v56, v57, v58, v59, v60;
    [v39 internalErrorWithDebugDescription:v53];

    swift_willThrow();
    return (*(v13 + 8))(v42, v34);
  }

  v61 = (*(v37 + 88))(v35, v36);
  if (v61 == enum case for REMTitleEmbeddingMethods.Sentence2Vec(_:))
  {
    v62 = type metadata accessor for REMSentence2VecTitleEmbedding();
    (*(v13 + 16))(v75, v29, v34);
    v63 = v79;
    v64 = REMSentence2VecTitleEmbedding.__allocating_init(from:)();
    if (!v63)
    {
      v65 = &protocol witness table for REMSentence2VecTitleEmbedding;
      v66 = v72;
LABEL_14:
      v66[3] = v62;
      v66[4] = v65;
      *v66 = v64;
    }
  }

  else if (v61 == enum case for REMTitleEmbeddingMethods.UniversalGrammar(_:))
  {
    v62 = type metadata accessor for REMUniversalGrammarTitleEmbedding();
    (*(v13 + 16))(v71, v29, v34);
    v67 = v79;
    v64 = REMUniversalGrammarTitleEmbedding.__allocating_init(from:)();
    v66 = v72;
    if (!v67)
    {
      v65 = &protocol witness table for REMUniversalGrammarTitleEmbedding;
      goto LABEL_14;
    }
  }

  else
  {
    v66 = v72;
    if (v61 != enum case for REMTitleEmbeddingMethods.FilteredStopWords(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v62 = type metadata accessor for REMFilteredTitleEmbedding();
    (*(v38 + 16))(v70, v29, v34);
    v68 = v79;
    v64 = REMFilteredTitleEmbedding.__allocating_init(from:)();
    if (!v68)
    {
      v65 = &protocol witness table for REMFilteredTitleEmbedding;
      goto LABEL_14;
    }
  }

  return (*(v38 + 8))(v29, v34);
}

uint64_t sub_100248DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for RDIntentClusterModel();
  (*(v8 + 16))(v11, a2, v7);
  sub_10000A87C(a1, v14);
  result = RDIntentClusterModel.__allocating_init(url:embedding:)();
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100248EFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004C51D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100248F3C()
{
  sub_1000F5104(&unk_10093E978, &qword_1007A1070);
  swift_allocObject();
  result = PassthroughSubject.init()();
  qword_10093E878 = result;
  return result;
}

void sub_100248FB8(uint64_t a1)
{
  sub_100249090(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100249090(uint64_t a1)
{
  if (!qword_10093ADC0)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10093ADC0);
    }
  }
}

uint64_t sub_1002490E8(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t destroy for RDXPCSuggestedAttributesPerformer.MLModels(void *a1)
{
  if (a1[5])
  {
  }

  else
  {
    sub_10000607C(a1);
  }

  sub_100249154(a1[6], *(a1 + 56));
  sub_100249154(a1[8], *(a1 + 72));
  return sub_100249154(a1[10], *(a1 + 88));
}

uint64_t sub_100249154(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t initializeWithCopy for RDXPCSuggestedAttributesPerformer.MLModels(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *a2;
    swift_errorRetain();
    *a1 = v5;
  }

  else
  {
    v6 = *(a2 + 3);
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1, a2);
  }

  *(a1 + 40) = v4;
  v7 = a2[6];
  v8 = *(a2 + 56);
  sub_1002490E8(v7, v8);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  v9 = a2[8];
  v10 = *(a2 + 72);
  sub_1002490E8(v9, v10);
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  v11 = a2[10];
  v12 = *(a2 + 88);
  sub_1002490E8(v11, v12);
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  return a1;
}

uint64_t assignWithCopy for RDXPCSuggestedAttributesPerformer.MLModels(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    sub_1000050A4(a1, &unk_10093E960, &qword_10079CC10);
    v4 = *(a2 + 40);
    if (v4)
    {
      v5 = *a2;
      swift_errorRetain();
      *a1 = v5;
    }

    else
    {
      v6 = a2[3];
      *(a1 + 24) = v6;
      *(a1 + 32) = a2[4];
      (**(v6 - 8))(a1, a2);
    }

    *(a1 + 40) = v4;
  }

  v7 = a2[6];
  v8 = *(a2 + 56);
  sub_1002490E8(v7, v8);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  sub_100249154(v9, v10);
  v11 = a2[8];
  v12 = *(a2 + 72);
  sub_1002490E8(v11, v12);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  *(a1 + 64) = v11;
  *(a1 + 72) = v12;
  sub_100249154(v13, v14);
  v15 = a2[10];
  v16 = *(a2 + 88);
  sub_1002490E8(v15, v16);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  *(a1 + 80) = v15;
  *(a1 + 88) = v16;
  sub_100249154(v17, v18);
  return a1;
}

__n128 initializeWithTake for RDXPCSuggestedAttributesPerformer.MLModels(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for RDXPCSuggestedAttributesPerformer.MLModels(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1000050A4(a1, &unk_10093E960, &qword_10079CC10);
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    *(a1 + 25) = *(a2 + 25);
  }

  v5 = *(a2 + 56);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  sub_100249154(v6, v7);
  v8 = *(a2 + 72);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v8;
  sub_100249154(v9, v10);
  v11 = *(a2 + 88);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v11;
  sub_100249154(v12, v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDXPCSuggestedAttributesPerformer.MLModels(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDXPCSuggestedAttributesPerformer.MLModels(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destroy for RDXPCSuggestedAttributesPerformer.ConfigurationSource(void *a1)
{
}

uint64_t initializeWithCopy for RDXPCSuggestedAttributesPerformer.ConfigurationSource(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v3;

  return a1;
}

void *assignWithCopy for RDXPCSuggestedAttributesPerformer.ConfigurationSource(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;

  v7 = a2[7];
  a1[6] = a2[6];
  a1[7] = v7;

  return a1;
}

__n128 initializeWithTake for RDSavedReminders(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

_OWORD *assignWithTake for RDXPCSuggestedAttributesPerformer.ConfigurationSource(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

uint64_t getEnumTagSinglePayload for RDSavedReminders(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for RDSavedReminders(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100249770(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093E9A0, &unk_10079CC60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1002498B4(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

id sub_100249958(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RDDispatchQueue_ObjC();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1002499B0()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8, v8);
  sub_100007F54();
  static DispatchQoS.unspecified.getter();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100974CA8 = result;
  return result;
}

dispatch_workloop_t sub_100249BB8()
{
  result = rd_dispatch_workloop_create("com.apple.remindd.xpc.default");
  qword_100974CB0 = result;
  return result;
}

dispatch_workloop_t sub_100249BE8()
{
  result = rd_dispatch_workloop_create("com.apple.remindd.xpc.notification");
  qword_100974CB8 = result;
  return result;
}

uint64_t sub_100249C18()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0, v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8, v3);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007F54();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100974CC0 = result;
  return result;
}

uint64_t sub_100249E18()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8, v8);
  sub_100007F54();
  static DispatchQoS.utility.getter();
  v11[1] = &_swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  if (qword_100935D40 != -1)
  {
    swift_once();
  }

  v9 = qword_100974CD8;
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100974CC8 = result;
  return result;
}

uint64_t sub_10024A05C()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8, v8);
  sub_100007F54();
  static DispatchQoS.background.getter();
  v11[1] = &_swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  if (qword_100935D40 != -1)
  {
    swift_once();
  }

  v9 = qword_100974CD8;
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100974CD0 = result;
  return result;
}

dispatch_workloop_t sub_10024A2A0()
{
  result = rd_dispatch_workloop_create("com.apple.remindd.discretionary");
  qword_100974CD8 = result;
  return result;
}

uint64_t sub_10024A2D0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093EA10);
  v1 = sub_100006654(v0, qword_10093EA10);
  if (qword_1009364D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10024A398(void *a1)
{
  v3 = [objc_allocWithZone(NSFetchRequest) init];
  type metadata accessor for REMCDGroceryOperationQueueItem();
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity:v4];

  [v3 setPredicate:0];
  [v3 setResultType:1];
  sub_10024AC98();
  v5 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    if (v5 >> 62)
    {
      goto LABEL_15;
    }

    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = a1; v13; i = a1)
    {
      v14 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v15 = *(v5 + 8 * v14 + 32);
        }

        v16 = v15;
        a1 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v17 = objc_autoreleasePoolPush();
        sub_10024A614(i, v16, &v21);
        objc_autoreleasePoolPop(v17);

        ++v14;
        if (a1 == v13)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_16:
    v5, v6, v7, v8, v9, v10, v11, v12;
    if ([i hasChanges])
    {
      v21 = 0;
      if ([i save:&v21])
      {
        v18 = v21;
        [i refreshAllObjects];
      }

      else
      {
        v19 = v21;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }
}

void sub_10024A614(void *a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for UUID();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  *&v13 = __chkstk_darwin(v10, v12).n128_u64[0];
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = 0;
  v16 = [a1 existingObjectWithID:a2 error:{&v62, v13}];
  v17 = v62;
  if (v16)
  {
    v18 = v16;
    type metadata accessor for REMCDGroceryOperationQueueItem();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = v19;
      type metadata accessor for REMCDOperationQueueItem();
      v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v22 = v17;
      v23 = [v21 initWithContext:a1];
      [v23 setOperationTypeRawValue:{objc_msgSend(v20, "operationTypeRawValue")}];
      [v23 setPriorityRawValue:{objc_msgSend(v20, "priorityRawValue")}];
      v24 = [v20 creationDate];
      if (v24)
      {
        v25 = v24;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v26.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v11 + 8))(v15, v10);
      }

      else
      {
        v26.super.isa = 0;
      }

      [v23 setCreationDate:{v26.super.isa, v59, v60}];

      [v23 setIsCompleted:{objc_msgSend(v20, "isCompleted")}];
      v49 = [v20 listIdentifier];
      if (v49)
      {
        v50 = v49;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v51.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v59 + 8))(v9, v60);
      }

      else
      {
        v51.super.isa = 0;
      }

      [v23 setEntityIdentifier:v51.super.isa];

      v52 = [v20 configurationData];
      if (v52)
      {
        v53 = v52;
        v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001BBA0(v54, v56);
      }

      else
      {
        v57.super.isa = 0;
      }

      [v23 setConfigurationData:v57.super.isa];

      v58 = [v20 account];
      [v23 setAccount:v58];
    }

    else
    {
      v29 = v17;

      if (qword_100935D48 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100006654(v30, qword_10093EA10);
      v31 = a2;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v34 = 136315650;
        v61 = &_s75MigrateOperationQueueItemsFromGroceryOperationQueueItemToOperationQueueItemON;
        v62 = v36;
        sub_1000F5104(&qword_10093EA50, &qword_10079CCC8);
        v37 = String.init<A>(describing:)();
        v39 = v38;
        v40 = sub_10000668C(v37, v38, &v62);
        v39, v41, v42, v43, v44, v45, v46, v47;
        *(v34 + 4) = v40;
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_10000668C(0xD000000000000022, 0x80000001007F2340, &v62);
        *(v34 + 22) = 2114;
        *(v34 + 24) = v31;
        *v35 = v31;
        v48 = v31;
        _os_log_impl(&_mh_execute_header, v32, v33, "[%s|%s] Failed to process list of {groceryOperationQueueItemMOID: %{public}@} since its managed object could not be fetched", v34, 0x20u);
        sub_100039860(v35);

        swift_arrayDestroy();
      }
    }
  }

  else
  {
    v27 = v62;
    v28 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *a3 = v28;
  }
}

id sub_10024AC34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDGroceryOperationQueueItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10024AC98()
{
  result = qword_100943230;
  if (!qword_100943230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100943230);
  }

  return result;
}

uint64_t sub_10024ACF4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093EA58);
  v1 = sub_100006654(v0, qword_10093EA58);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_10024ADE0(uint64_t a1)
{
  v2 = v1;
  if (qword_100935D50 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10093EA58);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v45 = v2;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);
    a1, v8, v9, v10, v11, v12, v13, v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDAlarmCoreSuggestionsConsumer consume %ld producerAlarms", v7, 0xCu);
  }

  else
  {

    a1, v15, v16, v17, v18, v19, v20, v21;
  }

  v22 = *(a1 + 16);
  if (v22)
  {
    sub_100003C4C();
    v46 = objc_opt_self();
    v23 = (a1 + 64);
    do
    {
      v28 = *(v23 - 3);
      v30 = *(v23 - 2);
      v29 = *(v23 - 1);
      v31 = *v23;
      v32 = *(v23 - 4);
      sub_1001A3944(v28, v30, v29, v31);
      v33 = [v32 list];
      v34 = [v33 objectID];

      v35 = [v46 siriFoundInAppsListID];
      LOBYTE(v33) = static NSObject.== infix(_:_:)();

      if (v33)
      {
        if (v31 <= 1)
        {
          if (!v31)
          {
            v36 = v32;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            sub_1001A39AC(v28, v30, v29, 0);
            goto LABEL_10;
          }

          v24 = v28;
          v25 = v30;
          v26 = v29;
          v27 = 1;
        }

        else if (v31 == 2)
        {

          v24 = v28;
          v25 = v30;
          v26 = v29;
          v27 = 2;
        }

        else
        {

          v24 = v28;
          v25 = v30;
          v26 = v29;
          if (v31 == 3)
          {
            v27 = 3;
          }

          else
          {
            v27 = 4;
          }
        }
      }

      else
      {

        v24 = v28;
        v25 = v30;
        v26 = v29;
        v27 = v31;
      }

      sub_1001A39AC(v24, v25, v26, v27);
LABEL_10:
      v23 += 40;
      --v22;
    }

    while (v22);
  }

  sub_10000F61C((v45 + 16), *(v45 + 40));
  sub_1003E60E8(&_swiftEmptyArrayStorage);

  &_swiftEmptyArrayStorage, v37, v38, v39, v40, v41, v42, v43;
  return result;
}

uint64_t sub_10024B16C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093EB10);
  v1 = sub_100006654(v0, qword_10093EB10);
  if (qword_1009364D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10024B234(void *a1)
{
  v3 = [objc_allocWithZone(NSFetchRequest) init];
  type metadata accessor for REMCDListWithSharedOwnerIdentifier();
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity:v4];

  [v3 setPredicate:0];
  [v3 setResultType:1];
  sub_10024AC98();
  v5 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    if (v5 >> 62)
    {
      goto LABEL_15;
    }

    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = a1; v13; i = a1)
    {
      v14 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v15 = *(v5 + 8 * v14 + 32);
        }

        v16 = v15;
        a1 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v17 = objc_autoreleasePoolPush();
        sub_10024B4B0(i, v16, &v21);
        objc_autoreleasePoolPop(v17);

        ++v14;
        if (a1 == v13)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_16:
    v5, v6, v7, v8, v9, v10, v11, v12;
    if ([i hasChanges])
    {
      v21 = 0;
      if ([i save:&v21])
      {
        v18 = v21;
        [i refreshAllObjects];
      }

      else
      {
        v19 = v21;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }
}

void sub_10024B4B0(void *a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  *&v9 = __chkstk_darwin(v6, v8).n128_u64[0];
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v12 = [a1 existingObjectWithID:a2 error:{&v43, v9}];
  v13 = v43;
  if (v12)
  {
    v14 = v12;
    type metadata accessor for REMCDListWithSharedOwnerIdentifier();
    v15 = swift_dynamicCastClass();
    v16 = v13;
    if (v15)
    {
      v17 = [v15 sharedOwner];
      if (v17)
      {
        v18 = v17;
        isa = [v17 remObjectID];

        if (isa)
        {
          v20 = [(objc_class *)isa uuid];

          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v7 + 8))(v11, v6);
        }
      }

      else
      {
        isa = 0;
      }

      [v15 setSharedOwnerIdentifier:isa];
    }

    else
    {

      if (qword_100935D58 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_10093EB10);
      v24 = a2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v27 = 136315650;
        v42[1] = &_s50MigrateListsFromSharedOwnerToSharedOwnerIdentifierON;
        v43 = v29;
        sub_1000F5104(&qword_10093EB50, &unk_10079CD90);
        v30 = String.init<A>(describing:)();
        v32 = v31;
        v33 = sub_10000668C(v30, v31, &v43);
        v32, v34, v35, v36, v37, v38, v39, v40;
        *(v27 + 4) = v33;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_10000668C(0xD000000000000014, 0x80000001007F2410, &v43);
        *(v27 + 22) = 2114;
        *(v27 + 24) = v24;
        *v28 = v24;
        v41 = v24;
        _os_log_impl(&_mh_execute_header, v25, v26, "[%s|%s] Failed to process list of {listMOID: %{public}@} since its managed object could not be fetched", v27, 0x20u);
        sub_100039860(v28);

        swift_arrayDestroy();
      }
    }
  }

  else
  {
    v21 = v43;
    v22 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *a3 = v22;
  }
}

id sub_10024B8F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDListWithSharedOwnerIdentifier();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_TtC7remindd19RDXPCStorePerformer *sub_10024B964(unint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v38 - v11;
  v41 = &_swiftEmptyArrayStorage;
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      KeyPath = swift_getKeyPath();
      if (a1 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = &_swiftEmptyArrayStorage;
      if (v14)
      {
        v38 = KeyPath;
        v39 = v12;
        v40 = &_swiftEmptyArrayStorage;
        result = sub_100253218(0, v14 & ~(v14 >> 63), 0);
        if (v14 < 0)
        {
          __break(1u);
          return result;
        }

        v17 = 0;
        v15 = v40;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v18 = *(a1 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = [v18 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v21 = type metadata accessor for UUID();
          (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
          v40 = v15;
          v23 = *v15->clientIdentity;
          v22 = *&v15->clientIdentity[8];
          if (v23 >= v22 >> 1)
          {
            sub_100253218((v22 > 1), v23 + 1, 1);
            v15 = v40;
          }

          ++v17;
          *v15->clientIdentity = v23 + 1;
          sub_100100FB4(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23);
        }

        while (v14 != v17);
        KeyPath = v38;
        v12 = v39;
      }

      sub_1003EB84C(KeyPath, v15);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v41->clientIdentity >= *&v41->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v27 = 0;
    }

    else
    {
      v27 = 1;
    }
  }

  else
  {
    v24 = swift_getKeyPath();
    v25 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
    sub_1003915A0(v24, v12);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v41->clientIdentity >= *&v41->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v27 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_100023B44(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v41->clientIdentity >= *&v41->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000F5104(&qword_10093EB58, qword_10079CE08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  v29 = swift_getKeyPath();
  v30 = sub_1003EB870(v29);

  *(inited + 32) = v30;
  v31 = swift_getKeyPath();
  v32 = sub_1003EB89C(v31);

  *(inited + 40) = v32;
  sub_100025060(inited);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v41->clientIdentity >= *&v41->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_28:
  v33 = swift_getKeyPath();
  sub_1003EB89C(v33);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v41->clientIdentity >= *&v41->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (v27)
  {
    v34 = swift_getKeyPath();
    v35 = [objc_opt_self() localInternalAccountID];
    v36 = [v35 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = type metadata accessor for UUID();
    (*(*(v37 - 8) + 56))(v12, 0, 1, v37);
    sub_1003EB8C4(v34, v12);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v41->clientIdentity >= *&v41->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return sub_10000C2B0();
}

id sub_10024BF98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 smartList];
  *a2 = result;
  return result;
}

void sub_10024BFE8(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

uint64_t sub_10024C124()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_10012DF40();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_100974CE0 = v0;
  return result;
}

uint64_t sub_10024C19C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  sub_10012DF40();
  swift_getKeyPath();
  *(v0 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 40) = result;
  qword_100974CE8 = v0;
  return result;
}

uint64_t sub_10024C22C@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_10024C2E4(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreationDate:isa];
}

_TtC7remindd19RDXPCStorePerformer *sub_10024C42C()
{
  sub_100026EF4(0, 5, 0);
  result = &_swiftEmptyArrayStorage;
  v2 = *_swiftEmptyArrayStorage.clientIdentity;
  v1 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100026EF4((v1 > 1), v2 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v3;
  v4 = &_swiftEmptyArrayStorage + 16 * v2;
  *(v4 + 4) = 0xD000000000000023;
  *(v4 + 5) = 0x80000001007F2430;
  v5 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    sub_100026EF4((v5 > 1), v6, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v6;
  v7 = &_swiftEmptyArrayStorage + 16 * v3;
  *(v7 + 4) = 0x696669746E656469;
  *(v7 + 5) = 0xEA00000000007265;
  v9 = *_swiftEmptyArrayStorage.clientIdentity;
  v8 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_100026EF4((v8 > 1), v9 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v10;
  v11 = &_swiftEmptyArrayStorage + 16 * v9;
  *(v11 + 4) = 0xD00000000000001ALL;
  *(v11 + 5) = 0x80000001007EA730;
  v12 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v13 = v9 + 2;
  if (v10 >= v12 >> 1)
  {
    sub_100026EF4((v12 > 1), v13, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v13;
  v14 = &_swiftEmptyArrayStorage + 16 * v10;
  *(v14 + 4) = 0xD00000000000001ELL;
  *(v14 + 5) = 0x80000001007EC560;
  v16 = *_swiftEmptyArrayStorage.clientIdentity;
  v15 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v16 >= v15 >> 1)
  {
    sub_100026EF4((v15 > 1), v16 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v16 + 1;
  v17 = &_swiftEmptyArrayStorage + 16 * v16;
  *(v17 + 4) = 0x4E79616C70736964;
  *(v17 + 5) = 0xEB00000000656D61;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10024C888()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v1 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v2)
  {
LABEL_12:
    _StringGuts.grow(_:)(46);
    v14._object = 0x80000001007EC120;
    v14._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v14);
    sub_1000F5104(&qword_1009435E0, &qword_1007A3F10);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v3 = v1;
  v4 = v2;

  v5 = &_swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_100365788(0, *_swiftEmptyArrayStorage.clientIdentity + 1, 1, &_swiftEmptyArrayStorage, v6, v7, v8, v9);
  }

  v11 = *v5->clientIdentity;
  v10 = *&v5->clientIdentity[8];
  if (v11 >= v10 >> 1)
  {
    v5 = sub_100365788((v10 > 1), v11 + 1, 1, v5, v6, v7, v8, v9);
  }

  *v5->clientIdentity = v11 + 1;
  v12 = v5 + 16 * v11;
  *(v12 + 4) = v3;
  *(v12 + 5) = v4;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v5;
}

void sub_10024CAF0(void (*a1)(id *), unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a2;
  v25 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v6 = *(v25 - 8);
  __chkstk_darwin(v25, v7);
  v9 = &v19 - v8;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = a3;
    v29 = &_swiftEmptyArrayStorage;
    a3 = &v29;
    sub_10025346C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v12 = 0;
    v13 = v29;
    v14 = v11;
    v23 = v11;
    v24 = v11 & 0xC000000000000001;
    v20 = v11 & 0xFFFFFFFFFFFFFF8;
    v21 = v6 + 32;
    v22 = i;
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v24)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(v14 + 8 * v12 + 32);
      }

      i = v16;
      v28 = v16;
      a3 = v27;
      v26(&v28);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v29 = v13;
      v18 = *v13->clientIdentity;
      v17 = *&v13->clientIdentity[8];
      if (v18 >= v17 >> 1)
      {
        a3 = &v29;
        sub_10025346C((v17 > 1), v18 + 1, 1);
        v13 = v29;
      }

      *v13->clientIdentity = v18 + 1;
      (*(v6 + 32))(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v9, v25);
      ++v12;
      v14 = v23;
      if (v15 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10024CD40(void (*a1)(id *, uint64_t *), uint64_t a2, unint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t))
{
  v7 = v5;
  v28 = a1;
  v29 = a2;
  v27 = a4(0);
  v9 = *(v27 - 8);
  v11 = __chkstk_darwin(v27, v10);
  v30 = &v21 - v12;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = &_swiftEmptyArrayStorage;
    if (!i)
    {
      return v14;
    }

    v33 = &_swiftEmptyArrayStorage;
    result = (a5)(0, i & ~(i >> 63), 0, v11);
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    v14 = v33;
    v25 = i;
    v26 = a3 & 0xC000000000000001;
    v22 = a5;
    v23 = a3 & 0xFFFFFFFFFFFFFF8;
    v24 = v9 + 32;
    while (1)
    {
      a5 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v26)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v23 + 16))
        {
          goto LABEL_19;
        }

        v17 = *(a3 + 8 * v16 + 32);
      }

      v18 = v17;
      v32 = v17;
      v28(&v32, &v31);
      if (v7)
      {

        return v14;
      }

      v7 = 0;

      v33 = v14;
      v20 = *v14->clientIdentity;
      v19 = *&v14->clientIdentity[8];
      if (v20 >= v19 >> 1)
      {
        v22(v19 > 1, v20 + 1, 1);
        v14 = v33;
      }

      *v14->clientIdentity = v20 + 1;
      (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v30, v27);
      ++v16;
      if (a5 == v25)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10024CF9C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = &_swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v23 = &_swiftEmptyArrayStorage;
  sub_100253530(0, v10, 0);
  v11 = v23;
  v12 = *(type metadata accessor for UUID() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v19 = v6 + 32;
  v18 = *(v12 + 72);
  while (1)
  {
    v21(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *v11->clientIdentity;
    v14 = *&v11->clientIdentity[8];
    if (v15 >= v14 >> 1)
    {
      sub_100253530((v14 > 1), v15 + 1, 1);
      v11 = v23;
    }

    *v11->clientIdentity = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v20);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10024D1A0(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v18 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, v4, 0);
  v5 = &_swiftEmptyArrayStorage;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v16 = v9;
    a1(v17, &v16);
    if (v3)
    {
      break;
    }

    v10 = v17[0];
    v11 = v17[1];
    v18 = v5;
    v13 = *v5->clientIdentity;
    v12 = *&v5->clientIdentity[8];
    if (v13 >= v12 >> 1)
    {
      sub_100026EF4((v12 > 1), v13 + 1, 1);
      v5 = v18;
    }

    *v5->clientIdentity = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 4) = v10;
    *(v14 + 5) = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_10024D2B0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v35 = &_swiftEmptyArrayStorage;
    sub_100253968(0, v5, 0);
    v7 = &_swiftEmptyArrayStorage;
    for (i = (a3 + 48); ; i += 3)
    {
      v9 = *(i - 1);
      v10 = *i;
      v28[0] = *(i - 2);
      v28[1] = v9;
      v28[2] = v10;
      v11 = v28[0];
      v12 = v9;
      v13 = v10;
      a1(&v29, v28);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v14 = v29;
      v15 = v30;
      v16 = v31;
      v17 = v32;
      v18 = v33;
      v19 = v34;
      v35 = v7;
      v21 = *v7->clientIdentity;
      v20 = *&v7->clientIdentity[8];
      if (v21 >= v20 >> 1)
      {
        v26 = v30;
        v23 = v32;
        v24 = v34;
        v25 = v33;
        sub_100253968((v20 > 1), v21 + 1, 1);
        v19 = v24;
        v18 = v25;
        v17 = v23;
        v15 = v26;
        v7 = v35;
      }

      *v7->clientIdentity = v21 + 1;
      v22 = v7 + 40 * v21;
      *(v22 + 4) = v14;
      *(v22 + 40) = v15;
      *(v22 + 7) = v16;
      v22[64] = v17;
      v22[65] = v18;
      v22[66] = v19;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10024D43C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for RDTimelineEngineDueReminder(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = &_swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v22 = &_swiftEmptyArrayStorage;
  sub_100253A0C(0, v11, 0);
  v12 = v22;
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a3 + v19;
  v14 = *(v7 + 72);
  while (1)
  {
    v20(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *v12->clientIdentity;
    v15 = *&v12->clientIdentity[8];
    if (v16 >= v15 >> 1)
    {
      sub_100253A0C((v15 > 1), v16 + 1, 1);
      v12 = v22;
    }

    *v12->clientIdentity = v16 + 1;
    sub_10025C608(v10, v12 + v19 + v16 * v14);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10024D5D0(void (*a1)(uint64_t *__return_ptr, uint64_t *))
{
  v3 = v1;
  v4 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  sub_10000CB48(&qword_10093EE00, &qword_10093EDF8, &qword_10079D5B0, &protocol conformance descriptor for OrderedSet<A>);
  v5 = dispatch thunk of Collection.count.getter();
  result = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v22 = &_swiftEmptyArrayStorage;
    sub_100253A94(0, v5 & ~(v5 >> 63), 0);
    v18 = &_swiftEmptyArrayStorage;
    dispatch thunk of Collection.startIndex.getter();
    if ((v5 & 0x8000000000000000) == 0)
    {
      for (i = 0; !__OFADD__(i, 1); ++i)
      {
        v17 = i + 1;
        v8 = v3;
        v9 = v4;
        v10 = dispatch thunk of Collection.subscript.read();
        v19 = *v11;
        v10(v20, 0);
        a1(&v21, &v19);
        if (v2)
        {
          goto LABEL_13;
        }

        v12 = v21;
        v13 = v18;
        v22 = v18;
        v15 = *v18->clientIdentity;
        v14 = *&v18->clientIdentity[8];
        if (v15 >= v14 >> 1)
        {
          sub_100253A94((v14 > 1), v15 + 1, 1);
          v13 = v22;
        }

        *v13->clientIdentity = v15 + 1;
        v18 = v13;
        *&v13->clientIdentity[8 * v15 + 16] = v12;
        v3 = v8;
        v4 = v9;
        dispatch thunk of Collection.formIndex(after:)();
        if (v17 == v5)
        {
          return v18;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:

    __break(1u);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10024D7DC(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v30 = &_swiftEmptyArrayStorage;
  sub_100253968(0, v4, 0);
  v5 = &_swiftEmptyArrayStorage;
  v7 = *(sub_1000F5104(&unk_1009464C0, &qword_10079D360) - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v22 = *(v7 + 72);
  while (1)
  {
    a1(&v24, v8);
    if (v3)
    {
      break;
    }

    v9 = v24;
    v10 = v25;
    v11 = v26;
    v12 = v27;
    v13 = v28;
    v14 = v29;
    v30 = v5;
    v16 = *v5->clientIdentity;
    v15 = *&v5->clientIdentity[8];
    if (v16 >= v15 >> 1)
    {
      v20 = v26;
      v21 = v25;
      v18 = v29;
      sub_100253968((v15 > 1), v16 + 1, 1);
      v14 = v18;
      v11 = v20;
      v10 = v21;
      v5 = v30;
    }

    *v5->clientIdentity = v16 + 1;
    v17 = v5 + 40 * v16;
    *(v17 + 4) = v9;
    *(v17 + 40) = v10;
    *(v17 + 7) = v11;
    v17[64] = v12;
    v17[65] = v13;
    v17[66] = v14;
    v8 += v22;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10024D9F4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093EB60);
  v1 = sub_100006654(v0, qword_10093EB60);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t REMGroceryModelType.modelFileName.getter(unsigned __int8 a1)
{
  v1 = 0x736A2E7865676572;
  v2 = 0xD000000000000016;
  if (a1 == 3)
  {
    v2 = 0;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (a1 <= 1u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t REMGroceryModelType.description.getter(unsigned __int8 a1)
{
  v1 = 1953654114;
  v2 = 0x7865676572;
  v3 = 0x796D6D7564;
  if (a1 != 3)
  {
    v3 = 0x6C774F69726973;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6465726F68636E61;
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

unint64_t sub_10024DBF4@<X0>(Swift::Int *a1@<X0>, remindd::REMGroceryModelType_optional *a2@<X8>)
{
  result = _s7remindd19REMGroceryModelTypeO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

unint64_t sub_10024DC60(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x7079546C65646F6DLL;
      break;
    case 3:
      result = 0x6E656B6F5478616DLL;
      break;
    case 4:
      result = 0x6C6F687365726874;
      break;
    case 5:
      result = 1315991412;
      break;
    case 6:
      result = 0x69726F6765746163;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    case 9:
      result = 0x6C6E4F6969637361;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10024DE0C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0x6E656B6F5478616DLL;
    if (a1 != 2)
    {
      v6 = 0x6C6F687365726874;
    }

    if (a1)
    {
      v5 = 0x7079546C65646F6DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000019;
    v2 = 0xD000000000000022;
    if (a1 != 7)
    {
      v2 = 0x6C6E4F6969637361;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1315991412;
    if (a1 != 4)
    {
      v3 = 0x69726F6765746163;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10024DF48()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x6974636572726F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10024DFB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_1002571D8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_10024DFD8(uint64_t a1)
{
  v2 = sub_10025C264();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024E014(uint64_t a1)
{
  v2 = sub_10025C264();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10024E050@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100257300(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_10024E088@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_1002574FC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_10024E0BC(uint64_t a1)
{
  v2 = sub_10025CDC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024E0F8(uint64_t a1)
{
  v2 = sub_10025CDC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10024E134@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100257968(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_10024E1A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_1002581D4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_10024E1D8(uint64_t a1)
{
  v2 = sub_10025CEBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024E214(uint64_t a1)
{
  v2 = sub_10025CEBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10024E250@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1002584D0(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

void sub_10024E2C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_10024E338(uint64_t a1, uint64_t a2, void *a3, const char *a4, const char *a5, const char *a6, const char *a7)
{
  if (a2)
  {
    if (qword_100935D70 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10093EB60);
    v10 = a3;
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v74 = v14;
      *v12 = 136315394;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      v18 = sub_10000668C(v15, v16, &v74);
      v17, v19, v20, v21, v22, v23, v24, v25;
      *(v12 + 4) = v18;
      *(v12 + 12) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v26;
      *v13 = v26;
      _os_log_impl(&_mh_execute_header, oslog, v11, a7, v12, 0x16u);
      sub_100039860(v13);

      sub_10000607C(v14);
LABEL_6:

LABEL_18:

      return;
    }

    goto LABEL_24;
  }

  switch(a1)
  {
    case 0:
      return;
    case 2:
      a4 = a5;
      if (qword_100935D70 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100006654(v31, qword_10093EB60);
      v29 = a3;
      oslog = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
LABEL_16:
      v32 = v30;

      if (os_log_type_enabled(oslog, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v74 = v34;
        *v33 = 136315138;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
        v38 = sub_10000668C(v35, v36, &v74);
        v37, v39, v40, v41, v42, v43, v44, v45;
        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, oslog, v32, a4, v33, 0xCu);
        sub_10000607C(v34);

        goto LABEL_18;
      }

      goto LABEL_24;
    case 1:
      if (qword_100935D70 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100006654(v28, qword_10093EB60);
      v29 = a3;
      oslog = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();
      goto LABEL_16;
  }

  if (qword_100935D70 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_100006654(v47, qword_10093EB60);
  v48 = a3;
  oslog = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v49))
  {
    v50 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v50 = 136315394;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
    v54 = sub_10000668C(v51, v52, &v74);
    v53, v55, v56, v57, v58, v59, v60, v61;
    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    type metadata accessor for AssetsResult(0);
    v62 = String.init<A>(describing:)();
    v64 = v63;
    v65 = sub_10000668C(v62, v63, &v74);
    v64, v66, v67, v68, v69, v70, v71, v72;
    *(v50 + 14) = v65;
    _os_log_impl(&_mh_execute_header, oslog, v49, a6, v50, 0x16u);
    swift_arrayDestroy();
    goto LABEL_6;
  }

LABEL_24:
}

uint64_t REMGroceryClassifier.predict(_:threshold:topN:localeReason:predictReason:withGlobalCorrections:includeMisc:shouldPostGroceryPredictionAnalytics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 248) = v13;
  *(v9 + 256) = v8;
  *(v9 + 65) = v16;
  *(v9 + 59) = v15;
  *(v9 + 58) = v14;
  *(v9 + 232) = a7;
  *(v9 + 240) = a8;
  *(v9 + 216) = a4;
  *(v9 + 224) = a6;
  *(v9 + 57) = a5;
  *(v9 + 200) = a2;
  *(v9 + 208) = a3;
  *(v9 + 192) = a1;
  v10 = type metadata accessor for Date();
  *(v9 + 264) = v10;
  *(v9 + 272) = *(v10 - 8);
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_10024E904, 0, 0);
}

uint64_t sub_10024E904()
{
  v209 = v0;
  if (qword_100935D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = type metadata accessor for Logger();
  *(v0 + 296) = sub_100006654(v3, qword_10093EB60);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v2, v6, v7, v8, v9, v10, v11, v12;
  v1, v13, v14, v15, v16, v17, v18, v19;
  if (os_log_type_enabled(v4, v5))
  {
    v204 = *(v0 + 59);
    v205 = *(v0 + 65);
    v203 = *(v0 + 58);
    v201 = *(v0 + 224);
    v202 = *(v0 + 232);
    v200 = *(v0 + 57);
    v20 = *(v0 + 208);
    v21 = *(v0 + 216);
    v23 = *(v0 + 192);
    v22 = *(v0 + 200);
    v24 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    *v24 = 136316674;
    *(v24 + 4) = sub_10000668C(v23, v22, &v208);
    *(v24 + 12) = 2080;
    *(v0 + 60) = v20;
    *(v0 + 64) = BYTE4(v20) & 1;
    sub_1000F5104(&qword_10093EBA8, &qword_10079D078);
    v25 = Optional.descriptionOrNil.getter();
    v27 = v26;
    v28 = sub_10000668C(v25, v26, &v208);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v24 + 14) = v28;
    *(v24 + 22) = 2080;
    *(v0 + 152) = v21;
    *(v0 + 160) = v200 & 1;
    sub_1000F5104(&qword_10093EBB0, &unk_10079D080);
    v36 = Optional.descriptionOrNil.getter();
    v38 = v37;
    v39 = sub_10000668C(v36, v37, &v208);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v24 + 24) = v39;
    *(v24 + 32) = 2080;
    *(v0 + 136) = v201;
    *(v0 + 144) = v202;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v47 = Optional.descriptionOrNil.getter();
    v49 = v48;
    v50 = sub_10000668C(v47, v48, &v208);
    v49, v51, v52, v53, v54, v55, v56, v57;
    *(v24 + 34) = v50;
    *(v24 + 42) = 1024;
    *(v24 + 44) = v203;
    *(v24 + 48) = 1024;
    *(v24 + 50) = v204;
    *(v24 + 54) = 1024;
    *(v24 + 56) = v205;
    _os_log_impl(&_mh_execute_header, v4, v5, "REMGroceryClassifier predicting {title: %s, threshold: %s, topN: %s, localeReason: %s, withGlobalCorrections: %{BOOL}d, includeMisc: %{BOOL}d, shouldPostGroceryPredictionAnalytics: %{BOOL}d}", v24, 0x3Cu);
    swift_arrayDestroy();
  }

  v59 = *(v0 + 192);
  v58 = *(v0 + 200);
  Date.init()();
  v60 = sub_10024FF38(v59, v58);
  *(v0 + 304) = v60;
  *(v0 + 312) = v61;
  *(v0 + 320) = sub_1002501E4(v60, v61);
  *(v0 + 328) = v62;
  v63 = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  *(v0 + 336) = v63;
  v64 = String._bridgeToObjectiveC()();
  [v63 setString:v64];

  v65 = NLTokenizer.tokens(for:)();
  v73 = v65;
  v74 = *(v65 + 16);
  if (v74)
  {
    v208 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v74, 0);
    v75 = v208;
    v206 = v73;
    v76 = &v73->clientIdentity[24];
    do
    {
      String.subscript.getter();
      v78 = v77;
      static String._fromSubstring(_:)();
      v80 = v79;
      v78, v79, v81, v82, v83, v84, v85, v86;
      v87 = String.lowercased()();
      v80, v87._object, v88, v89, v90, v91, v92, v93;
      v208 = v75;
      v102 = *v75->clientIdentity;
      v101 = *&v75->clientIdentity[8];
      if (v102 >= v101 >> 1)
      {
        sub_100026EF4((v101 > 1), v102 + 1, 1);
        v75 = v208;
      }

      v76 += 16;
      *v75->clientIdentity = v102 + 1;
      *&v75->clientIdentity[16 * v102 + 16] = v87;
      --v74;
    }

    while (v74);
    v206, v94, v95, v96, v97, v98, v99, v100;
  }

  else
  {
    v65, v66, v67, v68, v69, v70, v71, v72;
    v75 = &_swiftEmptyArrayStorage;
  }

  v103 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v75, v105, v106, v107, v108, v109, v110, v111;
  v112 = String._bridgeToObjectiveC()();
  LOBYTE(v103) = [v103 profanityInTokens:isa forLocaleIdentifier:v112];

  if (v103)
  {
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&_mh_execute_header, v120, v121, "REMGroceryClassifier predict func triggered profanity", v122, 2u);
    }

    v123 = &_swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  v124 = *(v0 + 256);
  if (*(v0 + 212))
  {

    goto LABEL_34;
  }

  v125 = *(*(v124 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_labels) + 16);
  if (v125)
  {
    v126 = (v0 + 208);
    v127 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *v127->clientIdentity = v125;
    v128 = &v127->clientIdentity[16];
    if (v125 > 0xB && (v128 < v0 + 216 ? (v129 = v126 >= &v127->clientIdentity[4 * v125 + 16]) : (v129 = 1), v129))
    {
      v130 = v125 & 0x7FFFFFFFFFFFFFF8;
      v128 += 4 * (v125 & 0x7FFFFFFFFFFFFFF8);
      v131 = vld1q_dup_f32(v126);
      v132 = &v127->clientIdentity[32];
      v133 = v125 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v132[-1] = v131;
        *v132 = v131;
        v132 += 2;
        v133 -= 8;
      }

      while (v133);
      if (v125 == v130)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v130 = 0;
    }

    v134 = v125 - v130;
    do
    {
      *v128 = *v126;
      v128 += 4;
      --v134;
    }

    while (v134);
LABEL_32:
    v124 = *(v0 + 256);
    goto LABEL_34;
  }

  v127 = &_swiftEmptyArrayStorage;
LABEL_34:
  *(v0 + 344) = v127;
  v135 = *(v124 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_models);
  *(v0 + 352) = v135;
  v136 = *(v124 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelTypes);
  *(v0 + 360) = v136;
  v137 = *(v135 + 16);
  *(v0 + 368) = v137;
  *(v0 + 376) = &_swiftEmptyArrayStorage;
  if (v137)
  {
    *(v0 + 384) = 0;
    if (!*(v135 + 16))
    {
      __break(1u);
      return dispatch thunk of REMGroceryModel.predict(_:thresholds:)(v127, v113, v114, v115, v116);
    }

    sub_10000A87C(v135 + 32, v0 + 72);
    if (*(v136 + 16))
    {
      *(v0 + 66) = *(*(v0 + 360) + 32);
      sub_100054B6C((v0 + 72), v0 + 16);
      v138 = *(v0 + 40);
      v139 = *(v0 + 48);
      sub_10000F61C((v0 + 16), v138);
      v140 = swift_task_alloc();
      *(v0 + 392) = v140;
      *v140 = v0;
      v140[1] = sub_10024F2AC;
      v114 = *(v0 + 344);
      v113 = *(v0 + 328);
      v127 = *(v0 + 320);
      v115 = v138;
      v116 = v139;

      return dispatch thunk of REMGroceryModel.predict(_:thresholds:)(v127, v113, v114, v115, v116);
    }

    sub_10000607C((v0 + 72));
    v127 = *(v0 + 344);
  }

  v127, v113, v114, v115, v116, v117, v118, v119;
  v123 = *(v0 + 376);
LABEL_42:

  v141 = Logger.logObject.getter();
  v142 = static os_log_type_t.info.getter();
  v123, v143, v144, v145, v146, v147, v148, v149;
  if (os_log_type_enabled(v141, v142))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v208 = v151;
    *v150 = 136315138;
    v152 = Array.description.getter();
    v154 = v153;
    v155 = sub_10000668C(v152, v153, &v208);
    v154, v156, v157, v158, v159, v160, v161, v162;
    *(v150 + 4) = v155;
    _os_log_impl(&_mh_execute_header, v141, v142, "REMGroceryClassifier: prediction from model pipeline before filtering and correction: %s", v150, 0xCu);
    sub_10000607C(v151);
  }

  if (*(v0 + 57))
  {
    v163 = (*(v0 + 256) + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_topN);
  }

  else
  {
    v163 = (v0 + 216);
  }

  v164 = *(v0 + 328);
  v165 = *(v0 + 312);
  v166 = *(v0 + 272);
  v167 = *(v0 + 280);
  v168 = *(v0 + 264);
  v207 = sub_100250768(v123, *(v0 + 59), *v163, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 58), *(v0 + 304), v165, *(v0 + 320), v164, *(v0 + 65));
  v165, v169, v170, v171, v172, v173, v174, v175;
  v164, v176, v177, v178, v179, v180, v181, v182;
  v123, v183, v184, v185, v186, v187, v188, v189;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v191 = v190;
  v192 = *(v166 + 8);
  v192(v167, v168);
  v193 = Logger.logObject.getter();
  v194 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v193, v194))
  {
    v195 = swift_slowAlloc();
    *v195 = 134217984;
    *(v195 + 4) = v191;
    _os_log_impl(&_mh_execute_header, v193, v194, "REMGroceryClassifier model prediction time: %f", v195, 0xCu);
  }

  v196 = *(v0 + 288);
  v197 = *(v0 + 264);

  v192(v196, v197);

  v198 = *(v0 + 8);

  return v198(v207);
}

uint64_t sub_10024F2AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    sub_10000607C(v4 + 2);
    v5 = sub_10024F96C;
  }

  else
  {
    v6 = v4[47];
    v4[51] = a1;
    sub_10000607C(v4 + 2);
    v6, v7, v8, v9, v10, v11, v12, v13;
    v5 = sub_10024F3EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10024F3EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v116 = v8;
  v9 = v8;
  v10 = *(v8 + 408);
  v11 = *(v10 + 16);
  if (v11)
  {
    *(v8 + 184) = &_swiftEmptyArrayStorage;
    sub_1002538E4(0, v11, 0);
    v12 = (v10 + 56);
    v13 = *(v8 + 184);
    do
    {
      v14 = *(v9 + 66);
      v113 = *(v12 - 6);
      v15 = *(v12 - 1);
      v16 = *v12;
      v17 = 0x796D6D7564;
      if (v14 != 3)
      {
        v17 = 0x6C774F69726973;
      }

      v18 = 0xE700000000000000;
      if (v14 == 3)
      {
        v18 = 0xE500000000000000;
      }

      if (v14 == 2)
      {
        v17 = 0x7865676572;
        v18 = 0xE500000000000000;
      }

      v19 = 1953654114;
      if (*(v9 + 66))
      {
        v19 = 0x6465726F68636E61;
      }

      v20 = 0xE400000000000000;
      if (*(v9 + 66))
      {
        v20 = 0xEE00656C62627542;
      }

      if (*(v9 + 66) <= 1u)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

      if (*(v9 + 66) <= 1u)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      v23 = v9;
      *(v9 + 184) = v13;
      v25 = *v13->clientIdentity;
      v24 = *&v13->clientIdentity[8];

      if (v25 >= v24 >> 1)
      {
        sub_1002538E4((v24 > 1), v25 + 1, 1);
        v13 = *(v23 + 184);
      }

      *v13->clientIdentity = v25 + 1;
      v33 = v13 + 48 * v25;
      *(v33 + 2) = v113;
      *(v33 + 6) = v15;
      *(v33 + 14) = v16;
      *(v33 + 8) = v21;
      *(v33 + 9) = v22;
      v12 += 8;
      --v11;
      v9 = v23;
    }

    while (v11);
    *(v23 + 408), v26, v27, v28, v29, v30, v31, v32;
    if (*v13->clientIdentity)
    {
      goto LABEL_23;
    }

LABEL_25:
    v42 = *(v9 + 384) + 1;
    *(v9 + 376) = v13;
    if (v42 == *(v9 + 368))
    {
LABEL_29:
      *(v9 + 344), v35, v36, v37, v38, v39, v40, v41;
      v13 = *(v9 + 376);
      goto LABEL_30;
    }

    *(v9 + 384) = v42;
    v43 = *(v9 + 352);
    if (v42 >= *(v43 + 16))
    {
      __break(1u);
    }

    else
    {
      v44 = *(v9 + 360);
      v34 = sub_10000A87C(v43 + 40 * v42 + 32, v9 + 72);
      v45 = *(v44 + 16);
      if (v42 == v45)
      {
        sub_10000607C((v9 + 72));
        goto LABEL_29;
      }

      if (v42 < v45)
      {
        *(v9 + 66) = *(*(v9 + 360) + v42 + 32);
        sub_100054B6C((v9 + 72), v9 + 16);
        v110 = *(v9 + 40);
        v111 = *(v9 + 48);
        sub_10000F61C((v9 + 16), v110);
        v112 = swift_task_alloc();
        *(v9 + 392) = v112;
        *v112 = v9;
        v112[1] = sub_10024F2AC;
        v36 = *(v9 + 344);
        v35 = *(v9 + 328);
        v34 = *(v9 + 320);
        v37 = v110;
        v38 = v111;

        return dispatch thunk of REMGroceryModel.predict(_:thresholds:)(v34, v35, v36, v37, v38);
      }
    }

    __break(1u);
    return dispatch thunk of REMGroceryModel.predict(_:thresholds:)(v34, v35, v36, v37, v38);
  }

  *(v8 + 408), a2, a3, a4, a5, a6, a7, a8;
  v13 = &_swiftEmptyArrayStorage;
  if (!*_swiftEmptyArrayStorage.clientIdentity)
  {
    goto LABEL_25;
  }

LABEL_23:
  *(v9 + 344), v35, v36, v37, v38, v39, v40, v41;
LABEL_30:

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  v13, v48, v49, v50, v51, v52, v53, v54;
  if (os_log_type_enabled(v46, v47))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v115 = v56;
    *v55 = 136315138;
    v57 = Array.description.getter();
    v59 = v58;
    v60 = sub_10000668C(v57, v58, &v115);
    v59, v61, v62, v63, v64, v65, v66, v67;
    *(v55 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v46, v47, "REMGroceryClassifier: prediction from model pipeline before filtering and correction: %s", v55, 0xCu);
    sub_10000607C(v56);
  }

  if (*(v9 + 57))
  {
    v68 = (*(v9 + 256) + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_topN);
  }

  else
  {
    v68 = (v9 + 216);
  }

  v69 = *v68;
  v70 = *(v9 + 320);
  v71 = *(v9 + 328);
  v72 = *(v9 + 304);
  v73 = *(v9 + 312);
  v74 = *(v9 + 272);
  v75 = *(v9 + 280);
  v76 = v9;
  v77 = *(v9 + 264);
  v78 = v76;
  v114 = sub_100250768(v13, *(v76 + 59), v69, *(v76 + 224), *(v76 + 232), *(v76 + 240), *(v76 + 248), *(v76 + 58), v72, v73, v70, v71, *(v76 + 65));
  v73, v79, v80, v81, v82, v83, v84, v85;
  v71, v86, v87, v88, v89, v90, v91, v92;
  v13, v93, v94, v95, v96, v97, v98, v99;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v101 = v100;
  v102 = *(v74 + 8);
  v102(v75, v77);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 134217984;
    *(v105 + 4) = v101;
    _os_log_impl(&_mh_execute_header, v103, v104, "REMGroceryClassifier model prediction time: %f", v105, 0xCu);
  }

  v106 = *(v78 + 288);
  v107 = *(v78 + 264);

  v102(v106, v107);

  v108 = *(v78 + 8);

  return v108(v114);
}

uint64_t sub_10024F96C()
{
  v109 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 66);
    v4 = swift_slowAlloc();
    *(v0 + 168) = swift_slowAlloc();
    v5 = 0xE400000000000000;
    v6 = 1953654114;
    *v4 = 136315394;
    v7 = 0xE500000000000000;
    v8 = 0x7865676572;
    v9 = 0xE500000000000000;
    v10 = 0x796D6D7564;
    if (v3 != 3)
    {
      v10 = 0x6C774F69726973;
      v9 = 0xE700000000000000;
    }

    if (v3 != 2)
    {
      v8 = v10;
      v7 = v9;
    }

    if (v3)
    {
      v6 = 0x6465726F68636E61;
      v5 = 0xEE00656C62627542;
    }

    if (v3 <= 1)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    if (v3 <= 1)
    {
      v12 = v5;
    }

    else
    {
      v12 = v7;
    }

    v13 = sub_10000668C(v11, v12, (v0 + 168));
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v4 + 4) = v13;
    *(v4 + 12) = 2080;
    swift_getErrorValue();
    v21 = Error.rem_errorDescription.getter();
    v23 = v22;
    v24 = sub_10000668C(v21, v22, (v0 + 168));
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v4 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v1, v2, "REMGroceryClassifier of type %s failed to make prediction %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v40 = *(v0 + 384) + 1;
  if (v40 == *(v0 + 368))
  {
    goto LABEL_20;
  }

  *(v0 + 384) = v40;
  v41 = *(v0 + 352);
  if (v40 >= *(v41 + 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  v42 = *(v0 + 360);
  v32 = sub_10000A87C(v41 + 40 * v40 + 32, v0 + 72);
  v43 = *(v42 + 16);
  if (v40 != v43)
  {
    if (v40 < v43)
    {
      *(v0 + 66) = *(*(v0 + 360) + v40 + 32);
      sub_100054B6C((v0 + 72), v0 + 16);
      v104 = *(v0 + 40);
      v105 = *(v0 + 48);
      sub_10000F61C((v0 + 16), v104);
      v106 = swift_task_alloc();
      *(v0 + 392) = v106;
      *v106 = v0;
      v106[1] = sub_10024F2AC;
      v34 = *(v0 + 344);
      v33 = *(v0 + 328);
      v32 = *(v0 + 320);
      v35 = v104;
      v36 = v105;

      return dispatch thunk of REMGroceryModel.predict(_:thresholds:)(v32, v33, v34, v35, v36);
    }

LABEL_35:
    __break(1u);
    return dispatch thunk of REMGroceryModel.predict(_:thresholds:)(v32, v33, v34, v35, v36);
  }

  sub_10000607C((v0 + 72));
LABEL_20:
  *(v0 + 344), v33, v34, v35, v36, v37, v38, v39;
  v44 = *(v0 + 376);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();
  v44, v47, v48, v49, v50, v51, v52, v53;
  if (os_log_type_enabled(v45, v46))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v108 = v55;
    *v54 = 136315138;
    v56 = Array.description.getter();
    v58 = v57;
    v59 = sub_10000668C(v56, v57, &v108);
    v58, v60, v61, v62, v63, v64, v65, v66;
    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v45, v46, "REMGroceryClassifier: prediction from model pipeline before filtering and correction: %s", v54, 0xCu);
    sub_10000607C(v55);
  }

  if (*(v0 + 57))
  {
    v67 = (*(v0 + 256) + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_topN);
  }

  else
  {
    v67 = (v0 + 216);
  }

  v68 = *(v0 + 328);
  v69 = *(v0 + 312);
  v70 = *(v0 + 272);
  v71 = *(v0 + 280);
  v72 = *(v0 + 264);
  v107 = sub_100250768(v44, *(v0 + 59), *v67, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 58), *(v0 + 304), v69, *(v0 + 320), v68, *(v0 + 65));
  v69, v73, v74, v75, v76, v77, v78, v79;
  v68, v80, v81, v82, v83, v84, v85, v86;
  v44, v87, v88, v89, v90, v91, v92, v93;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v95 = v94;
  v96 = *(v70 + 8);
  v96(v71, v72);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 134217984;
    *(v99 + 4) = v95;
    _os_log_impl(&_mh_execute_header, v97, v98, "REMGroceryClassifier model prediction time: %f", v99, 0xCu);
  }

  v100 = *(v0 + 288);
  v101 = *(v0 + 264);

  v96(v100, v101);

  v102 = *(v0 + 8);

  return v102(v107);
}

uint64_t sub_10024FF38(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for CharacterSet();
  v25 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Locale.Components();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  Locale.Components.init(identifier:)();
  rawValue = Locale.Components.rem_language()()._rawValue;
  type metadata accessor for REMFilteredTitleEmbedding();
  v11 = static REMFilteredTitleEmbedding.decodeEmojiInText(_:language:)();
  v13 = v12;
  v27 = v11;
  v28 = v12;
  v26 = &off_1008E28F0;
  sub_10025C528(&qword_10093EE60, &type metadata accessor for CharacterSet, &protocol conformance descriptor for CharacterSet);
  sub_1000F5104(&qword_10093EE68, &qword_10079D610);
  sub_10000CB48(&qword_10093EE70, &qword_10093EE68, &qword_10079D610, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10013BCF4();
  v14 = StringProtocol.trimmingCharacters(in:)();

  (*(v25 + 8))(v5, v2);
  (*(v6 + 8))(v9, v24);
  v13, v15, v16, v17, v18, v19, v20, v21;
  return v14;
}

uint64_t sub_1002501E4(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v5 = type metadata accessor for CharacterSet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v77 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale.Components();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  Locale.Components.init(identifier:)();
  v14._rawValue = Locale.Components.rem_language()()._rawValue;
  if (!sub_10018F9A4(0, *(v2 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelTypes)) && ((v76 = v6, v15 = *(v2 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_requireLemmatization), (v15 & 1) != 0) || (*(v2 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_requireRemovingNumbers) & 1) != 0))
  {
    LODWORD(v72) = *(v2 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_requireRemovingNumbers);
    rawValue = v14._rawValue;

    v73 = objc_autoreleasePoolPush();
    sub_1000F5104(&qword_10093EE58, &unk_10079E1F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100791300;
    *(v17 + 32) = NLTagSchemeNameTypeOrLexicalClass;
    v74 = v5;
    v71[1] = NLTagSchemeNameTypeOrLexicalClass;
    v18 = NLTagSchemeNameTypeOrLexicalClass;
    if (v15)
    {
      v19 = NLTagSchemeLemma;
      v17 = sub_1003669BC(1, 2, 1, v17, v20, v21, v22, v23);
      *(v17 + 16) = 2;
      *(v17 + 40) = v19;
    }

    v24 = objc_allocWithZone(NLTagger);
    type metadata accessor for NLTagScheme(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v17, v26, v27, v28, v29, v30, v31, v32;
    v33 = [v24 initWithTagSchemes:isa];

    v34 = String._bridgeToObjectiveC()();
    [v33 setString:v34];

    v35 = NLTagger.setLanguage(_:range:)();
    v81 = &_swiftEmptyArrayStorage;
    __chkstk_darwin(v35, v36);
    LOBYTE(v71[-6]) = v72 & 1;
    BYTE1(v71[-6]) = v15 & 1;
    v71[-5] = v33;
    v71[-4] = &v81;
    v71[-3] = a1;
    v71[-2] = a2;
    NLTagger.enumerateTags(in:unit:scheme:options:using:)();
    v37 = v81;
    v79 = v81;

    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
    v38 = BidirectionalCollection<>.joined(separator:)();
    v40 = v39;
    v72 = v39;
    v37, v39, v41, v42, v43, v44, v45, v46;
    v79 = v38;
    v80 = v40;
    v78 = &off_1008E2920;
    sub_10025C528(&qword_10093EE60, &type metadata accessor for CharacterSet, &protocol conformance descriptor for CharacterSet);
    sub_1000F5104(&qword_10093EE68, &qword_10079D610);
    sub_10000CB48(&qword_10093EE70, &qword_10093EE68, &qword_10079D610, &protocol conformance descriptor for [A]);
    v47 = v77;
    v48 = v74;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_10013BCF4();
    a1 = StringProtocol.trimmingCharacters(in:)();

    a2, v49, v50, v51, v52, v53, v54, v55;
    (*(v76 + 8))(v47, v48);
    v37, v56, v57, v58, v59, v60, v61, v62;
    v72, v63, v64, v65, v66, v67, v68, v69;
    objc_autoreleasePoolPop(v73);

    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v16 = *(v10 + 8);

    v16(v13, v9);
  }

  return a1;
}

uint64_t sub_100250768(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v357 = a7;
  v356 = a5;
  v358 = type metadata accessor for REMAnalyticsEvent();
  v340 = *(v358 - 8);
  __chkstk_darwin(v358, v19);
  __chkstk_darwin(v20, v21);
  v345 = (&v332 - v22);
  v339 = v23;
  v355 = a6;
  v354 = a4;
  LODWORD(v352) = a2;
  LODWORD(v353) = a8;
  if (a2)
  {
  }

  else
  {
    v351 = a3;
    v24 = *(a1 + 16);

    v350 = a1;
    if (v24)
    {
      v32 = v24;
      v33 = a1;
      v34 = 0;
      v35 = 0xED000073756F656ELL;
      v36 = 0x616C6C656373694DLL;
      v37 = v33 + 72;
      v38 = &_swiftEmptyArrayStorage;
      v348 = v37;
      do
      {
        v349 = v38;
        v39 = (v37 + 48 * v34);
        v40 = v34;
        while (1)
        {
          if (v40 >= v32)
          {
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          v34 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_137;
          }

          v41 = *(v39 - 3);
          if (*(v39 - 4) != v36 || v41 != v35)
          {
            v43 = *(v39 - 5);
            v44 = *(v39 - 4);
            v46 = *(v39 - 1);
            v45 = *v39;
            a3 = v36;
            v24 = v35;
            v47 = v32;
            v359 = *(v39 - 4);
            v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v36 = a3;
            v32 = v47;
            v35 = v24;
            if ((v48 & 1) == 0)
            {
              break;
            }
          }

          ++v40;
          v39 += 6;
          if (v34 == v32)
          {
            goto LABEL_19;
          }
        }

        v347 = v46;

        v38 = v349;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v367 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002538E4(0, *v38->clientIdentity + 1, 1);
          v38 = v367;
        }

        v50 = v347;
        v52 = *v38->clientIdentity;
        v51 = *&v38->clientIdentity[8];
        v35 = v24;
        v32 = v47;
        v36 = a3;
        if (v52 >= v51 >> 1)
        {
          sub_1002538E4((v51 > 1), v52 + 1, 1);
          v50 = v347;
          v36 = a3;
          v32 = v47;
          v35 = v24;
          v38 = v367;
        }

        *v38->clientIdentity = v52 + 1;
        v53 = v38 + 48 * v52;
        v54 = v359;
        *(v53 + 4) = v43;
        *(v53 + 5) = v54;
        *(v53 + 6) = v41;
        *(v53 + 14) = v44;
        *(v53 + 8) = v50;
        *(v53 + 9) = v45;
        v37 = v348;
      }

      while (v34 != v32);
    }

LABEL_19:
    v350, v25, v26, v27, v28, v29, v30, v31;
  }

  v39 = sub_1002F36CC();
  if ((v57 & 1) == 0)
  {
    goto LABEL_21;
  }

  a3 = v57;
  v40 = v56;
  v24 = v55;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v60 = swift_dynamicCastClass();
  if (!v60)
  {
    swift_unknownObjectRelease();
    v60 = &_swiftEmptyArrayStorage;
  }

  v61 = *v60->clientIdentity;

  if (__OFSUB__(a3 >> 1, v40))
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v61 != (a3 >> 1) - v40)
  {
LABEL_139:
    swift_unknownObjectRelease();
    v57 = a3;
    v56 = v40;
    v55 = v24;
LABEL_21:
    sub_10027836C(v39, v55, v56, v57);
    v59 = v58;
    goto LABEL_28;
  }

  v59 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v59)
  {
    goto LABEL_29;
  }

  v59 = &_swiftEmptyArrayStorage;
LABEL_28:
  swift_unknownObjectRelease();
LABEL_29:
  v342 = a10;
  v341 = a9;
  v343 = v59;
  v361 = v59;
  v62 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_corrections + 16);
  v63 = String.lowercased()();
  object = v63._object;
  v65._countAndFlagsBits = 115;
  v65._object = 0xE100000000000000;
  v66 = String.hasSuffix(_:)(v65);

  countAndFlagsBits = v63._countAndFlagsBits;
  v75 = v63._object;
  if (v66)
  {
    sub_1006C1AFC(1, v63._countAndFlagsBits, v63._object);
    v77 = v76;
    v63._object, v78, v79, v76, v80, v81, v82, v83;
    countAndFlagsBits = static String._fromSubstring(_:)();
    v75 = v84;
    v77, v84, v85, v86, v87, v88, v89, v90;
  }

  v91 = a13;
  if ((v353 & 1) == 0)
  {
    v75, v67, v68, v69, v70, v71, v72, v73;
    v101 = v343;
LABEL_39:
    object, v94, v95, v96, v97, v98, v99, v100;
LABEL_40:
    if ((a13 & 1) == 0)
    {
      goto LABEL_73;
    }

    v109 = *v101->clientIdentity;
    if (v109)
    {
      v336 = a13;
      v353 = type metadata accessor for REMAnalyticsManager();
      v110 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale + 8);
      v352 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
      v351 = v110;
      v111 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_trialDeploymentID + 8);
      v350 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_trialDeploymentID);
      v349 = v111;
      LODWORD(v348) = enum case for REMAnalyticsEvent.groceryPrediction(_:);
      v347 = (v340 + 104);
      v346 = (v340 + 8);
      v112 = &v101->storeProvider[10];
      v113 = v345;
      do
      {
        v115 = *(v112 - 4);
        v114 = *(v112 - 3);
        v117 = *(v112 - 1);
        v116 = *v112;

        v359 = static REMAnalyticsManager.shared.getter();
        *v113 = v117;
        v113[1] = v116;
        *(v113 + 16) = 0;
        *(v113 + 17) = v367;
        *(v113 + 5) = *(&v367 + 3);
        v118 = v351;
        v113[3] = v352;
        v113[4] = v118;
        v119 = v356;
        v113[5] = v354;
        v113[6] = v119;
        v120 = v357;
        v113[7] = v355;
        v113[8] = v120;
        v113[9] = v115;
        v113[10] = v114;
        v121 = v349;
        v113[11] = v350;
        v113[12] = v121;
        v122 = v358;
        (*v347)(v113, v348, v358);

        REMAnalyticsManager.post(event:)();
        v116, v123, v124, v125, v126, v127, v128, v129;
        v114, v130, v131, v132, v133, v134, v135, v136;

        (*v346)(v113, v122);
        v112 += 6;
        --v109;
      }

      while (v109);
      v101 = v343;
      v91 = v336;
    }

    v137 = *v101->clientIdentity;
    if (v137)
    {
      goto LABEL_74;
    }

LABEL_46:
    if ((v91 & 1) == 0)
    {
LABEL_74:
      if (v137)
      {
        v360 = &_swiftEmptyArrayStorage;
        sub_1002538A4(0, v137, 0);
        v175 = v360;
        v176 = v101;
        v177 = &v101->clientIdentity[40];
        do
        {
          v178 = *(v177 - 3);
          v179 = *(v177 - 2);
          v180 = *(v177 - 1);
          v181 = *v177;
          v360 = v175;
          v183 = *v175->clientIdentity;
          v182 = *&v175->clientIdentity[8];

          if (v183 >= v182 >> 1)
          {
            sub_1002538A4((v182 > 1), v183 + 1, 1);
            v175 = v360;
          }

          *v175->clientIdentity = v183 + 1;
          v191 = v175 + 32 * v183;
          *(v191 + 4) = v178;
          *(v191 + 5) = v179;
          *(v191 + 6) = v180;
          *(v191 + 14) = v181;
          v177 += 48;
          --v137;
        }

        while (v137);
        v176, v184, v185, v186, v187, v188, v189, v190;
        return v175;
      }

      v101, v102, v103, v104, v105, v106, v107, v108;
      return &_swiftEmptyArrayStorage;
    }

    v343 = v101;
    type metadata accessor for REMAnalyticsManager();
    v138 = static REMAnalyticsManager.shared.getter();
    v139 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelTypes);
    v140 = *(v139 + 16);
    v141 = &_swiftEmptyArrayStorage;
    if (v140)
    {
      v359 = v138;
      v360 = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, v140, 0);
      v142 = (v139 + 32);
      v141 = v360;
      v143 = 0x796D6D7564;
      do
      {
        v145 = *v142++;
        v144 = v145;
        v146 = v145 == 3;
        if (v145 == 3)
        {
          v147 = v143;
        }

        else
        {
          v147 = 0x6C774F69726973;
        }

        if (v146)
        {
          v148 = 0xE500000000000000;
        }

        else
        {
          v148 = 0xE700000000000000;
        }

        if (v144 == 2)
        {
          v147 = 0x7865676572;
          v148 = 0xE500000000000000;
        }

        if (v144)
        {
          v149 = 0x6465726F68636E61;
        }

        else
        {
          v149 = 1953654114;
        }

        if (v144)
        {
          v150 = 0xEE00656C62627542;
        }

        else
        {
          v150 = 0xE400000000000000;
        }

        if (v144 <= 1)
        {
          v151 = v149;
        }

        else
        {
          v151 = v147;
        }

        if (v144 <= 1)
        {
          v152 = v150;
        }

        else
        {
          v152 = v148;
        }

        v360 = v141;
        v154 = *v141->clientIdentity;
        v153 = *&v141->clientIdentity[8];
        if (v154 >= v153 >> 1)
        {
          v156 = v143;
          sub_100026EF4((v153 > 1), v154 + 1, 1);
          v143 = v156;
          v141 = v360;
        }

        *v141->clientIdentity = v154 + 1;
        v155 = v141 + 16 * v154;
        *(v155 + 4) = v151;
        *(v155 + 5) = v152;
        --v140;
      }

      while (v140);
    }

    v360 = v141;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
    v157 = BidirectionalCollection<>.joined(separator:)();
    v159 = v158;
    v141, v158, v160, v161, v162, v163, v164, v165;
    v166 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
    v167 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale + 8);
    v168 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_trialDeploymentID);
    v169 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_trialDeploymentID + 8);
    v170 = v339;
    *v339 = v157;
    v170[1] = v159;
    *(v170 + 16) = 1;
    *(v170 + 17) = v360;
    *(v170 + 5) = *(&v360 + 3);
    v170[3] = v166;
    v170[4] = v167;
    v171 = v356;
    v170[5] = v354;
    v170[6] = v171;
    v172 = v357;
    v170[7] = v355;
    v170[8] = v172;
    v170[9] = 0;
    v170[10] = 0;
    v170[11] = v168;
    v170[12] = v169;
    v173 = v340;
    v174 = v358;
    (*(v340 + 104))(v170, enum case for REMAnalyticsEvent.groceryPrediction(_:), v358);

    REMAnalyticsManager.post(event:)();

    (*(v173 + 8))(v170, v174);
    type metadata accessor for Analytics();
    static Analytics.postBiomeEventForUncategorizedGroceryItem(item:locale:)();
    v101 = v343;
LABEL_73:
    v137 = *v101->clientIdentity;
    goto LABEL_74;
  }

  if (!*(v62 + 16))
  {
    goto LABEL_84;
  }

  v92 = sub_100005F4C(v341, v342);
  if (v67)
  {
LABEL_36:
    v93 = v92;
    v63._object, v67, v68, v69, v70, v71, v72, v73;
    v101 = v343;
LABEL_37:
    v75, v94, v95, v96, v97, v98, v99, v100;
    goto LABEL_87;
  }

  if (!*(v62 + 16))
  {
    goto LABEL_84;
  }

  v92 = sub_100005F4C(a11, a12);
  if (v67)
  {
    goto LABEL_36;
  }

  if (*(v62 + 16))
  {
    v93 = sub_100005F4C(v63._countAndFlagsBits, v63._object);
    v193 = v192;
    v63._object, v192, v194, v195, v196, v197, v198, v199;
    v101 = v343;
    if (v193)
    {
      goto LABEL_37;
    }
  }

  else
  {
LABEL_84:
    v63._object, v67, v68, v69, v70, v71, v72, v73;
    v101 = v343;
  }

  if (!*(v62 + 16))
  {
    object = v75;
    goto LABEL_39;
  }

  v93 = sub_100005F4C(countAndFlagsBits, v75);
  v201 = v200;
  v75, v200, v202, v203, v204, v205, v206, v207;
  if ((v201 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_87:
  v208 = *(*(v62 + 56) + 8 * v93);
  v209 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_labels);
  v362 = v209;
  *&v366 = v208;

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10000CB48(&qword_10093EE30, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
  Collection.subscript.getter();
  v217 = *(&v367 + 1);
  if (!*(&v367 + 1))
  {
    if (qword_100935D70 != -1)
    {
      swift_once();
    }

    v235 = type metadata accessor for Logger();
    sub_100006654(v235, qword_10093EB60);

    v236 = Logger.logObject.getter();
    v237 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v236, v237))
    {
      v238 = swift_slowAlloc();
      *v238 = 134218240;
      *(v238 + 4) = v208;
      *(v238 + 12) = 2048;
      v239 = *(v209 + 16);
      v209, v240, v241, v242, v243, v244, v245, v246;
      *(v238 + 14) = v239;
      v209, v247, v248, v249, v250, v251, v252, v253;
      _os_log_impl(&_mh_execute_header, v236, v237, "REMGroceryClassifier topNFilteredCorrected asked for %ld in intelligentCategoryNames with count %ld", v238, 0x16u);

      v254 = *v101->clientIdentity;
      if (v254)
      {
        goto LABEL_102;
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v254 = *v101->clientIdentity;
      if (v254)
      {
LABEL_102:
        *&v367 = &_swiftEmptyArrayStorage;
        sub_1002538A4(0, v254, 0);
        v175 = v367;
        v255 = &v101->clientIdentity[40];
        do
        {
          v256 = *(v255 - 3);
          v257 = *(v255 - 2);
          v258 = *(v255 - 1);
          v259 = *v255;
          *&v367 = v175;
          v261 = *v175->clientIdentity;
          v260 = *&v175->clientIdentity[8];

          if (v261 >= v260 >> 1)
          {
            sub_1002538A4((v260 > 1), v261 + 1, 1);
            v175 = v367;
          }

          *v175->clientIdentity = v261 + 1;
          v262 = v175 + 32 * v261;
          *(v262 + 4) = v256;
          *(v262 + 5) = v257;
          *(v262 + 6) = v258;
          *(v262 + 14) = v259;
          v255 += 48;
          --v254;
        }

        while (v254);
        goto LABEL_106;
      }
    }

LABEL_121:

    return &_swiftEmptyArrayStorage;
  }

  v218 = v367;
  v209, v210, v211, v212, v213, v214, v215, v216;
  if (v218 == 0x616C6C656373694DLL && v217 == 0xED000073756F656ELL || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v352 & 1) == 0)
  {
    v217, v219, v220, v221, v222, v223, v224, v225;
    v226 = *v101->clientIdentity;
    if (v226)
    {
      *&v367 = &_swiftEmptyArrayStorage;
      sub_1002538A4(0, v226, 0);
      v175 = v367;
      v227 = &v101->clientIdentity[40];
      do
      {
        v228 = *(v227 - 3);
        v229 = *(v227 - 2);
        v230 = *(v227 - 1);
        v231 = *v227;
        *&v367 = v175;
        v233 = *v175->clientIdentity;
        v232 = *&v175->clientIdentity[8];

        if (v233 >= v232 >> 1)
        {
          sub_1002538A4((v232 > 1), v233 + 1, 1);
          v175 = v367;
        }

        *v175->clientIdentity = v233 + 1;
        v234 = v175 + 32 * v233;
        *(v234 + 4) = v228;
        *(v234 + 5) = v229;
        *(v234 + 6) = v230;
        *(v234 + 14) = v231;
        v227 += 48;
        --v226;
      }

      while (v226);
LABEL_106:

      return v175;
    }

    goto LABEL_121;
  }

  v263 = *v101->clientIdentity;
  if (v263)
  {
    v264 = 0;
    v265 = &v101->clientIdentity[32];
    while (1)
    {
      v266 = *(v265 - 1) == v218 && v217 == *v265;
      if (v266 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v264;
      v265 += 6;
      if (v263 == v264)
      {
        goto LABEL_116;
      }
    }

    sub_10042C970(v264, &v362);
    v366 = v363;
    sub_100034610(&v366);
    v365 = v364;
    sub_100034610(&v365);
LABEL_125:
    if (a13)
    {
      v336 = a13;
      v338 = type metadata accessor for REMAnalyticsManager();
      v359 = static REMAnalyticsManager.shared.getter();
      v287 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
      v288 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale + 8);
      v289 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_trialDeploymentID);
      v290 = *(v344 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_trialDeploymentID + 8);
      v291 = v345;
      *v345 = 0xD000000000000010;
      v291[1] = 0x80000001007F26D0;
      *(v291 + 16) = 0;
      *(v291 + 17) = v367;
      v349 = (v291 + 17);
      *(v291 + 5) = *(&v367 + 3);
      v353 = v287;
      v291[3] = v287;
      v291[4] = v288;
      v292 = v356;
      v291[5] = v354;
      v291[6] = v292;
      v293 = v357;
      v291[7] = v355;
      v291[8] = v293;
      v291[9] = v218;
      v291[10] = v217;
      v351 = v289;
      v291[11] = v289;
      v291[12] = v290;
      v294 = v340;
      v295 = *(v340 + 104);
      LODWORD(v348) = enum case for REMAnalyticsEvent.groceryPrediction(_:);
      v296 = v358;
      v347 = (v340 + 104);
      v346 = v295;
      v295(v291);
      v350 = v290;

      v352 = v288;

      REMAnalyticsManager.post(event:)();

      v297 = *(v294 + 8);
      v343 = (v294 + 8);
      v297(v291, v296);
      v298 = *v361->clientIdentity;
      if (v298)
      {
        v333 = v218;
        v334 = v217;
        v335 = v208;
        v299 = &v361->storeProvider[10];
        v337 = v297;
        v300 = v352;
        v301 = v357;
        do
        {
          v303 = *(v299 - 4);
          v302 = *(v299 - 3);
          v304 = *(v299 - 1);
          v305 = *v299;

          v359 = static REMAnalyticsManager.shared.getter();
          *v345 = v304;
          v306 = v345;
          v345[1] = v305;
          *(v306 + 16) = 0;
          v307 = v349;
          LODWORD(v349->super.isa) = v360;
          *(&v307->super.isa + 3) = *(&v360 + 3);
          v306[3] = v353;
          v306[4] = v300;
          v308 = v356;
          v306[5] = v354;
          v306[6] = v308;
          v306[7] = v355;
          v306[8] = v301;
          v306[9] = v303;
          v306[10] = v302;
          v309 = v350;
          v306[11] = v351;
          v306[12] = v309;
          v310 = v358;
          (v346)(v306, v348, v358);

          REMAnalyticsManager.post(event:)();
          v305, v311, v312, v313, v314, v315, v316, v317;
          v302, v318, v319, v320, v321, v322, v323, v324;
          v325 = v337;

          v325(v306, v310);
          v299 += 6;
          --v298;
        }

        while (v298);
        v91 = v336;
        v208 = v335;
        v217 = v334;
        v218 = v333;
      }

      else
      {
        v91 = v336;
      }
    }

    v101 = v361;
    v326 = *v361->clientIdentity;
    v327 = swift_isUniquelyReferenced_nonNull_native();
    if (!v327 || v326 >= *&v101->clientIdentity[8] >> 1)
    {
      v101 = sub_100366D1C(v327, v326 + 1, 1, v101, v328, v329, v330, v331);
      v361 = v101;
    }

    *&v367 = v208;
    *(&v367 + 1) = v218;
    v368 = v217;
    v369 = 1065353216;
    v370 = 0xD000000000000010;
    v371 = 0x80000001007F26D0;
    sub_100260A0C(0, 0, 1, &v367);
    v137 = *v101->clientIdentity;
    if (v137)
    {
      goto LABEL_74;
    }

    goto LABEL_46;
  }

LABEL_116:
  if (!*v101->clientIdentity)
  {
    goto LABEL_125;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v275 = *v101->clientIdentity;
    if (v275)
    {
LABEL_119:
      v276 = v275 - 1;
      v277 = (v101 + 48 * v275);
      v278 = *v277;
      v279 = v277[3];
      *v101->clientIdentity = v276;
      v279, v268, v269, v270, v271, v272, v273, v274;
      v278, v280, v281, v282, v283, v284, v285, v286;
      v361 = v101;
      goto LABEL_125;
    }
  }

  else
  {
    result = sub_100260B98(v101, v268, v269, v270, v271, v272, v273, v274);
    v101 = result;
    v275 = *(result + 16);
    if (v275)
    {
      goto LABEL_119;
    }
  }

  __break(1u);
  return result;
}