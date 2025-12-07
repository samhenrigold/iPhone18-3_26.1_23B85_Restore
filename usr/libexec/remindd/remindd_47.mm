uint64_t sub_10045F100()
{
  v1 = v0;
  v2 = *v0;
  v40 = v2;
  v3 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v39 - v5;
  v7 = type metadata accessor for NSNotificationCenter.Publisher();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&qword_100947C48, &qword_1007AAB88);
  v13 = *(v12 - 8);
  v41 = v12;
  v42 = v13;
  __chkstk_darwin(v12, v14);
  v16 = &v39 - v15;
  v17 = (v1 + *(v2 + 144));
  v18 = *v17;
  v19 = v17[1];
  v20 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  v24 = sub_100440048(v21, v22, v18, v19, 0);
  v23, v25, v26, v27, v28, v29, v30, v31;
  (*(v8 + 8))(v11, v7);
  v43 = v1[3];
  v32 = v43;
  v44 = v24;
  v33 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v33 - 8) + 56))(v6, 1, 1, v33);
  v34 = v32;
  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100006CA4();
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v6, &qword_100939980, &unk_10079ADA0);

  type metadata accessor for RDHousekeepingActivityScheduler(0, *(v40 + 80), *(v40 + 88), v35);
  sub_10000CB48(&qword_100947C50, &qword_100947C48, &qword_1007AAB88, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v36 = v41;
  v37 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v42 + 8))(v16, v36);
  return v37;
}

void sub_10045F54C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_10045F5A4(a1);

  objc_autoreleasePoolPop(v2);
}

void sub_10045F5A4(uint64_t result)
{
  v27 = *(result + 16);
  v1 = *(v27 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (v27 + 40);
    v25 = *(v27 + 16);
    while (v2 < *(v27 + 16))
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      if (qword_1009361C8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006654(v7, qword_100947970);
      v8 = v5;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v28 = v26;
        *v11 = 136446210;
        ObjectType = swift_getObjectType();
        v13 = v6;
        v14 = (*(*(v6 + 16) + 16))(ObjectType);
        v16 = v15;
        v17 = sub_10000668C(v14, v15, &v28);
        v16, v18, v19, v20, v21, v22, v23, v24;
        *(v11 + 4) = v17;
        v6 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "RDHousekeepingActivityScheduler: Some accounts have been logged out or disabled. Resetting babysitter for {waiterID: %{public}s}", v11, 0xCu);
        sub_10000607C(v26);

        v1 = v25;
      }

      ++v2;
      v4 = swift_getObjectType();
      sub_10050B90C(0xD000000000000012, 0x80000001007F8770, v4, *(v6 + 8));
      v3 += 2;
      if (v1 == v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10045F7C8(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_10000F61C(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (sub_100463214(v6, 0.0) && !sub_1004631FC(v6, 0.0))
  {
    if (qword_1009361C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100947970);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v8, v9, "RDHousekeepingActivityScheduler: reduceFactor(=%f) is less than 0. It will set to 0.", v10, 0xCu);
    }

    v6 = 0.0;
  }

  if (sub_100463214(1.0, v6) && !sub_1004631FC(v6, 1.0))
  {
    if (qword_1009361C8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100947970);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v12, v13, "RDHousekeepingActivityScheduler: reduceFactor=(%f) is larger than 1. It will set to 1.", v14, 0xCu);
    }

    v6 = 1.0;
  }

  *(v2 + 16) = v6;
  sub_10000607C(a1);
  return v2;
}

BOOL sub_10045FA08()
{
  v1 = 1.0 - *(v0 + 16);
  if (sub_1004631FC(v1, 0.0))
  {
    return 1;
  }

  if (sub_1004631FC(v1, 1.0))
  {
    return 0;
  }

  v3 = sub_10029E464(0x20000000000001uLL);
  return sub_100463214(v1, vcvtd_n_f64_u64(v3, 0x35uLL) + 0.0);
}

void sub_10045FABC(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_10000F61C(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  sub_100240AFC(v1 + OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_babysitter, v59);
  v9 = v60;
  if (!v60)
  {
    sub_1000050A4(v59, &unk_10093D8F0, &unk_10079B600);
    goto LABEL_9;
  }

  v10 = v61;
  sub_10000F61C(v59, v60);
  v11 = (*(v10 + 8))(v1, v6, v8, v9, v10);
  sub_10000607C(v59);
  if (!v11)
  {
LABEL_9:
    sub_100460B54(v6, v8);
    v8, v49, v50, v51, v52, v53, v54, v55;
    swift_willThrow();
    return;
  }

  v58 = v11;
  v8, v12, v13, v14, v15, v16, v17, v18;
  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_10094B320);
  sub_100030E2C(a1, v59);
  v20 = v2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v21, v22))
  {

    sub_10000607C(v59);
    goto LABEL_11;
  }

  v23 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  *v23 = 136446466;
  v24 = [v20 waiterID];

  if (v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_10000668C(v25, v27, &v62);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v23 + 4) = v28;
    *(v23 + 12) = 2082;
    v36 = v60;
    v37 = v61;
    sub_10000F61C(v59, v60);
    v38 = (*(v37 + 8))(v36, v37);
    v40 = v39;
    sub_10000607C(v59);
    v41 = sub_10000668C(v38, v40, &v62);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v23 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v21, v22, "Obtained babysitter token for {waiterID: %{public}s, executable: %{public}s}", v23, 0x16u);
    swift_arrayDestroy();

LABEL_11:
    v56 = a1[3];
    v57 = a1[5];
    sub_10000F61C(a1, v56);
    (*(v57 + 8))(v56, v57);
    sub_100462FD0(v20, a1);

    return;
  }

  __break(1u);
}

void sub_10045FE38(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = a1[3];
  v7 = a1[4];
  sub_10000F61C(a1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  v11 = *a2;
  swift_beginAccess();
  sub_100240AFC(v4 + v11, v62);
  v12 = v63;
  if (!v63)
  {
    sub_1000050A4(v62, &unk_10093D8F0, &unk_10079B600);
    goto LABEL_9;
  }

  v13 = v64;
  sub_10000F61C(v62, v63);
  v14 = (*(v13 + 8))(v4, v8, v10, v12, v13);
  sub_10000607C(v62);
  if (!v14)
  {
LABEL_9:
    sub_100460B54(v8, v10);
    v10, v52, v53, v54, v55, v56, v57, v58;
    swift_willThrow();
    return;
  }

  v61 = v14;
  v10, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_10094B320);
  sub_100030E2C(a1, v62);
  v23 = v4;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v24, v25))
  {

    sub_10000607C(v62);
    goto LABEL_11;
  }

  v26 = swift_slowAlloc();
  v65 = swift_slowAlloc();
  *v26 = 136446466;
  v27 = [v23 waiterID];

  if (v27)
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, &v65);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    v39 = v63;
    v40 = v64;
    sub_10000F61C(v62, v63);
    v41 = (*(v40 + 8))(v39, v40);
    v43 = v42;
    sub_10000607C(v62);
    v44 = sub_10000668C(v41, v43, &v65);
    v43, v45, v46, v47, v48, v49, v50, v51;
    *(v26 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v24, v25, "Obtained babysitter token for {waiterID: %{public}s, executable: %{public}s}", v26, 0x16u);
    swift_arrayDestroy();

LABEL_11:
    v59 = a1[3];
    v60 = a1[5];
    sub_10000F61C(a1, v59);
    (*(v60 + 8))(v59, v60);
    sub_100462FD0(v23, a1);

    return;
  }

  __break(1u);
}

void sub_1004601C4(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_10000F61C(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  v9 = OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_babysitter;
  swift_beginAccess();
  sub_100240AFC(v2 + v9, v60);
  v10 = v61;
  if (!v61)
  {
    sub_1000050A4(v60, &unk_10093D8F0, &unk_10079B600);
    goto LABEL_9;
  }

  v11 = v62;
  sub_10000F61C(v60, v61);
  v12 = (*(v11 + 8))(v2, v6, v8, v10, v11);
  sub_10000607C(v60);
  if (!v12)
  {
LABEL_9:
    sub_100460B54(v6, v8);
    v8, v50, v51, v52, v53, v54, v55, v56;
    swift_willThrow();
    return;
  }

  v59 = v12;
  v8, v13, v14, v15, v16, v17, v18, v19;
  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_10094B320);
  sub_100030E2C(a1, v60);
  v21 = v2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v22, v23))
  {

    sub_10000607C(v60);
    goto LABEL_11;
  }

  v24 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  *v24 = 136446466;
  v25 = [v21 waiterID];

  if (v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_10000668C(v26, v28, &v63);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v24 + 4) = v29;
    *(v24 + 12) = 2082;
    v37 = v61;
    v38 = v62;
    sub_10000F61C(v60, v61);
    v39 = (*(v38 + 8))(v37, v38);
    v41 = v40;
    sub_10000607C(v60);
    v42 = sub_10000668C(v39, v41, &v63);
    v41, v43, v44, v45, v46, v47, v48, v49;
    *(v24 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v22, v23, "Obtained babysitter token for {waiterID: %{public}s, executable: %{public}s}", v24, 0x16u);
    swift_arrayDestroy();

LABEL_11:
    v57 = a1[3];
    v58 = a1[5];
    sub_10000F61C(a1, v57);
    (*(v58 + 8))(v57, v58);
    sub_100462FD0(v21, a1);

    return;
  }

  __break(1u);
}

double sub_100460554()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (*(v0 + 16) < v2)
  {
    if (qword_1009361C8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_100947970);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      *(v6 + 4) = *(v1 + 16);
      *(v6 + 12) = 2048;
      *(v6 + 14) = v2;
      _os_log_impl(&_mh_execute_header, v4, v5, "RDJitteredMinimumDelayXPCActivity: Requested delay (%f) is shorter than minimumDelay (%f). The minimumDelay value will take precedence.", v6, 0x16u);
    }
  }

  if (*(v1 + 16) > v2)
  {
    v2 = *(v1 + 16);
  }

  sub_100462F2C(0.0, 1.0);
  v8 = v7 + 1.0;
  if (qword_1009361C8 != -1)
  {
    swift_once();
  }

  v9 = v2 * v8;
  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100947970);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = *(v1 + 16);
    *(v13 + 12) = 2048;
    *(v13 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v11, v12, "RDJitteredMinimumDelayXPCActivity: Updating scheduler (xpcActivity) criteria {inputDelay: %f, jitteredMinimumDelay: %f}", v13, 0x16u);
  }

  v14 = *(v1 + 32);
  v15 = *(v1 + 33);
  v16 = *(v1 + 34);
  v17 = sub_10039363C(&off_1008E3650);
  v26 = xmmword_1007AA870;
  v27 = v9;
  v28 = 0;
  v29 = 0;
  v30 = 1;
  v31 = v14;
  v32 = 0;
  v33 = 0x4024000000000000;
  v34 = 0;
  v35 = v15;
  v36 = 0;
  v37 = v16;
  v38 = 0x10000;
  v39 = 513;
  v40 = 7;
  v41 = v17;
  sub_1005A46AC(&v26);

  v17, v18, v19, v20, v21, v22, v23, v24;
  return result;
}

uint64_t sub_100460818()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100460880()
{
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  return v1;
}

uint64_t sub_100460960(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 25);
  v10 = *(v3 + 26);
  type metadata accessor for RDJitteredMinimumDelayXPCActivity();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 32) = v8;
  *(v11 + 33) = v9;
  *(v11 + 34) = v10;
  *(v11 + 24) = v7;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  type metadata accessor for RDDynamicXPCActivity();
  swift_allocObject();
  v13 = a1;

  v14 = sub_1005A9A28(3u, sub_1000FCE88, v12);

  *(v11 + 40) = v14;
  return v11;
}

uint64_t sub_100460A98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_100460960(a1, a2, a3);
  *a4 = result;
  return result;
}

void sub_100460AD0(_TtC7remindd19RDXPCStorePerformer **a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), void (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1004364F0(v6);
  }

  v7 = *v6->clientIdentity;
  v8[0] = &v6->clientIdentity[16];
  v8[1] = v7;
  sub_100460F84(v8, a2, a3);
  *a1 = v6;
}

void sub_100460B54(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 babySatErrorWithOperationName:v7];

  sub_1000F5104(&unk_10093D030, &unk_10079C950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = String._bridgeToObjectiveC()();
  v10 = sub_10038D9FC(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &qword_100939270, &unk_100795D50);
  v11 = [v3 waiterID];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for Analytics();
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v73[0] = v13;
    v73[1] = v15;

    v16._countAndFlagsBits = 0x646568736172632ELL;
    v16._object = 0xE800000000000000;
    String.append(_:)(v16);
    v15, v17, v18, v19, v20, v21, v22, v23;
    v24 = v15;
    sub_10045C5E4(v10);
    v26 = v25;
    v10, v27, v28, v29, v30, v31, v32, v33;
    v34 = v8;
    static Analytics.postEvent(_:payload:error:performAutoBugCaptureOnError:)();
    v24, v35, v36, v37, v38, v39, v40, v41;
    v26, v42, v43, v44, v45, v46, v47, v48;

    if (qword_100936370 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100006654(v49, qword_10094B320);

    v50 = v3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.fault.getter();
    a2, v53, v54, v55, v56, v57, v58, v59;
    if (!os_log_type_enabled(v51, v52))
    {

      goto LABEL_8;
    }

    v60 = swift_slowAlloc();
    v73[0] = swift_slowAlloc();
    *v60 = 136446466;
    *(v60 + 4) = sub_10000668C(a1, a2, v73);
    *(v60 + 12) = 2082;
    v61 = [v50 waiterID];

    if (v61)
    {
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = sub_10000668C(v62, v64, v73);
      v64, v66, v67, v68, v69, v70, v71, v72;
      *(v60 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v51, v52, "Babysitting operation because it failed too many times {operation: %{public}s, waiterID: %{public}s}", v60, 0x16u);
      swift_arrayDestroy();

LABEL_8:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100460EF4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_executable);
  v3[4] = &off_1008FDCB8;
  v3[5] = &off_1008FDCC8;
  v3[3] = type metadata accessor for RDSuggestConversionToGroceryListActivity.RDSuggestConversionToGroceryListActivityExecutable();
  v3[0] = v1;

  sub_10045FE38(v3, &OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_babysitter);
  return sub_10000607C(v3);
}

void sub_100460F84(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), void (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = _minimumMergeRunLength(_:)(v6);
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      if (v6 <= 1)
      {
        v9 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000F5104(&unk_10093F810, &qword_10079CAB0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *v9->clientIdentity = v6 / 2;
      }

      v18[0] = &v9->clientIdentity[16];
      v18[1] = v6 / 2;
      v10 = v9;
      a2(v18, v19, a1, v8);
      *v10->clientIdentity = 0;
      v10, v11, v12, v13, v14, v15, v16, v17;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    a3(0, v6, 1, a1);
  }
}

void sub_10046109C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = a1 - a3;
LABEL_5:
    v20 = v4;
    v21 = a3;
    v6 = *(v22 + 16 * a3);
    v19 = v5;
    while (1)
    {
      v23 = *(&v6 + 1);
      v7 = *v4;
      v24 = *(v4 + 8);
      v8 = v6;
      ObjectType = swift_getObjectType();
      v10 = *(v23 + 48);
      v11 = v8;
      v12 = v7;
      v13 = v10(ObjectType, v23);
      v14 = swift_getObjectType();
      v15 = (*(v24 + 48))(v14);

      if (v13 >= v15)
      {
LABEL_4:
        a3 = v21 + 1;
        v4 = v20 + 16;
        v5 = v19 - 1;
        if (v21 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v16 = *v4;
      v6 = *(v4 + 16);
      *v4 = v6;
      *(v4 + 16) = v16;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004611EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v49 = type metadata accessor for Date();
  v8 = *(v49 - 8);
  __chkstk_darwin(v49, v9);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v47 = &v39 - v13;
  v14 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v14 - 8, v15);
  v46 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v45 = &v39 - v19;
  v40 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v44 = (v8 + 8);
    v50 = v20;
    v21 = v20 + 16 * a3 - 16;
    v22 = a1 - a3;
LABEL_5:
    v42 = v21;
    v43 = a3;
    v23 = *(v50 + 16 * a3);
    v41 = v22;
    while (1)
    {
      v52 = v23;
      v24 = *v21;
      v51 = *(v21 + 8);
      v25 = v23;
      ObjectType = swift_getObjectType();
      v54 = v52;
      v27 = *(*(&v52 + 1) + 16);
      *&v52 = v25;
      v28 = v24;
      v29 = v45;
      sub_10051E8CC(ObjectType, v27);
      v30 = v47;
      Optional<A>.orDistantPast.getter();
      sub_1000050A4(v29, &unk_100938850, qword_100795AE0);
      v31 = swift_getObjectType();
      v53 = v28;
      v32 = v46;
      sub_10051E8CC(v31, *(v51 + 16));
      v33 = v48;
      Optional<A>.orDistantPast.getter();
      sub_1000050A4(v32, &unk_100938850, qword_100795AE0);
      LOBYTE(v24) = static Date.< infix(_:_:)();
      v34 = *v44;
      v35 = v33;
      v36 = v49;
      (*v44)(v35, v49);
      v34(v30, v36);

      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v43 + 1;
        v21 = v42 + 16;
        v22 = v41 - 1;
        if (v43 + 1 == v40)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v37 = *v21;
      v23 = *(v21 + 16);
      *v21 = v23;
      *(v21 + 16) = v37;
      v21 -= 16;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004614F4(id *a1, const char *a2, uint64_t *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v10 = a3;
  v11 = a1;
  v12 = a3[1];
  if (v12 < 1)
  {
    v14 = &_swiftEmptyArrayStorage;
LABEL_92:
    v13 = *v11;
    if (!*v11)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v14 = sub_1004361F4(v14, a2, a3, a4, a5, a6, a7, a8);
    }

    v111 = *v14->clientIdentity;
    if (v111 >= 2)
    {
      while (*v10)
      {
        v112 = v14;
        v14 = (v111 - 1);
        v113 = *(&v112->super.isa + 2 * v111);
        v114 = *&v112->clientIdentity[16 * v111 + 8];
        sub_100462614((*v10 + 16 * v113), (*v10 + 16 * *&v112->clientIdentity[16 * v111]), (*v10 + 16 * v114), v13);
        if (v9)
        {
          v14 = v112;
          goto LABEL_104;
        }

        if (v114 < v113)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_1004361F4(v112, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v111 - 2 >= *v112->clientIdentity)
        {
          goto LABEL_120;
        }

        v115 = &v112->super.isa + 2 * v111;
        *v115 = v113;
        v115[1] = v114;
        sub_100436168(v111 - 1);
        v14 = v112;
        v111 = *v112->clientIdentity;
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:
    v14, a2, a3, a4, a5, a6, a7, a8;
    return;
  }

  v13 = 0;
  v14 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v15 = v13;
    v123 = v13;
    if ((v13 + 1) >= v12)
    {
      v30 = v13 + 1;
    }

    else
    {
      v127 = v12;
      v118 = v14;
      v120 = v9;
      v16 = v13;
      v17 = *v10 + 16 * (v13 + 1);
      v18 = *v17;
      v19 = *(v17 + 8);
      v129 = 16 * v13;
      v20 = *v10 + 16 * v13;
      v21 = *v20;
      v22 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      v132 = *(v19 + 48);
      v24 = v18;
      v13 = v21;
      v25 = v132(ObjectType, v19);
      v26 = swift_getObjectType();
      v27 = (*(v22 + 48))(v26, v22);

      v28 = v16 + 2;
      v29 = (v20 + 24);
      while (1)
      {
        v30 = v127;
        if (v127 == v28)
        {
          break;
        }

        v32 = *v29;
        v31 = v29[1];
        v33 = v29[2];
        v133 = v29 + 2;
        v34 = *(v29 - 1);
        v35 = swift_getObjectType();
        v13 = (v33 + 48);
        v36 = *(v33 + 48);
        v37 = v31;
        v38 = v34;
        v39 = v36(v35, v33);
        v40 = swift_getObjectType();
        v41 = (*(v32 + 48))(v40, v32);

        ++v28;
        v29 = v133;
        if (v25 < v27 == v39 >= v41)
        {
          v30 = v28 - 1;
          break;
        }
      }

      v14 = v118;
      v9 = v120;
      v10 = a3;
      v11 = a1;
      v15 = v123;
      v42 = v129;
      if (v25 < v27)
      {
        if (v30 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v30)
        {
          v43 = 16 * v30 - 16;
          v44 = v30;
          do
          {
            if (v15 != --v44)
            {
              v46 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v45 = *(v46 + v42);
              *(v46 + v42) = *(v46 + v43);
              *(v46 + v43) = v45;
            }

            ++v15;
            v43 -= 16;
            v42 += 16;
          }

          while (v15 < v44);
          v15 = v123;
        }
      }
    }

    v47 = v10[1];
    if (v30 >= v47)
    {
      goto LABEL_28;
    }

    if (__OFSUB__(v30, v15))
    {
      goto LABEL_122;
    }

    if (v30 - v15 < a4)
    {
      break;
    }

    v13 = v30;
    if (v30 < v123)
    {
      goto LABEL_121;
    }

LABEL_42:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1003658B8(0, *v14->clientIdentity + 1, 1, v14, a5, a6, a7, a8);
    }

    v63 = *v14->clientIdentity;
    v62 = *&v14->clientIdentity[8];
    v64 = v63 + 1;
    v65 = v123;
    if (v63 >= v62 >> 1)
    {
      v110 = sub_1003658B8((v62 > 1), v63 + 1, 1, v14, a5, a6, a7, a8);
      v65 = v123;
      v14 = v110;
    }

    *v14->clientIdentity = v64;
    v66 = v14 + 16 * v63;
    *(v66 + 4) = v65;
    *(v66 + 5) = v13;
    v67 = *v11;
    if (!*v11)
    {
      goto LABEL_131;
    }

    if (v63)
    {
      while (1)
      {
        v68 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v69 = *&v14->clientIdentity[16];
          v70 = *&v14->clientIdentity[24];
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_61:
          if (v72)
          {
            goto LABEL_110;
          }

          v85 = &v14->super.isa + 2 * v64;
          v87 = *v85;
          v86 = v85[1];
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_113;
          }

          v91 = &v14->clientIdentity[16 * v68 + 16];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_117;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v64 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v95 = &v14->super.isa + 2 * v64;
        v97 = *v95;
        v96 = v95[1];
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_75:
        if (v90)
        {
          goto LABEL_112;
        }

        v98 = v14 + 16 * v68;
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_115;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_82:
        v106 = v68 - 1;
        if (v68 - 1 >= v64)
        {
          __break(1u);
LABEL_106:
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

        if (!*v10)
        {
          goto LABEL_128;
        }

        v107 = *&v14->clientIdentity[16 * v106 + 16];
        v108 = *&v14->clientIdentity[16 * v68 + 24];
        sub_100462614((*v10 + 16 * v107), (*v10 + 16 * *&v14->clientIdentity[16 * v68 + 16]), (*v10 + 16 * v108), v67);
        if (v9)
        {
          goto LABEL_104;
        }

        if (v108 < v107)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1004361F4(v14, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v106 >= *v14->clientIdentity)
        {
          goto LABEL_107;
        }

        v109 = v14 + 16 * v106;
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        sub_100436168(v68);
        v64 = *v14->clientIdentity;
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v14->clientIdentity[16 * v64 + 16];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_108;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_109;
      }

      v80 = &v14->super.isa + 2 * v64;
      v82 = *v80;
      v81 = v80[1];
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_111;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_114;
      }

      if (v84 >= v76)
      {
        v102 = &v14->clientIdentity[16 * v68 + 16];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_118;
        }

        if (v71 < v105)
        {
          v68 = v64 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

LABEL_3:
    v12 = v10[1];
    v11 = a1;
    if (v13 >= v12)
    {
      goto LABEL_92;
    }
  }

  if (__OFADD__(v123, a4))
  {
    goto LABEL_124;
  }

  if (&a4[v123] >= v47)
  {
    v13 = v10[1];
  }

  else
  {
    v13 = &a4[v123];
  }

  if (v13 < v123)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v15 = v123;
  if (v30 == v13)
  {
LABEL_28:
    v13 = v30;
    if (v30 < v15)
    {
      goto LABEL_121;
    }

    goto LABEL_42;
  }

  v119 = v14;
  v121 = v9;
  v130 = *v10;
  v48 = *v10 + 16 * v30 - 16;
  v49 = v123 - v30;
  v124 = v13;
LABEL_35:
  v126 = v48;
  v128 = v30;
  v50 = *(v130 + 16 * v30);
  v125 = v49;
  while (1)
  {
    v131 = *(&v50 + 1);
    v51 = *v48;
    v134 = *(v48 + 8);
    v52 = v50;
    v53 = swift_getObjectType();
    v54 = *(v131 + 48);
    v55 = v52;
    v56 = v51;
    v57 = v54(v53, v131);
    v58 = swift_getObjectType();
    v59 = (*(v134 + 48))(v58);

    if (v57 >= v59)
    {
LABEL_34:
      v30 = v128 + 1;
      v48 = v126 + 16;
      v13 = v124;
      v49 = v125 - 1;
      if (v128 + 1 != v124)
      {
        goto LABEL_35;
      }

      v14 = v119;
      v9 = v121;
      v10 = a3;
      v11 = a1;
      if (v124 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_42;
    }

    if (!v130)
    {
      break;
    }

    v60 = *v48;
    v50 = *(v48 + 16);
    *v48 = v50;
    *(v48 + 16) = v60;
    v48 -= 16;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_34;
    }
  }

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
}

void sub_100461C74(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v136 = a1;
  v148 = type metadata accessor for Date();
  v6 = *(v148 - 8);
  __chkstk_darwin(v148, v7);
  v147 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v146 = &v132 - v11;
  v12 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v12 - 8, v13);
  v145 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v144 = &v132 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = &_swiftEmptyArrayStorage;
LABEL_90:
    v6 = *v136;
    if (!*v136)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_92;
  }

  v132 = a4;
  v26 = 0;
  v143 = (v6 + 8);
  v27 = &_swiftEmptyArrayStorage;
  v133 = a3;
  while (1)
  {
    v28 = v26;
    if (v26 + 1 >= v25)
    {
      v25 = v26 + 1;
    }

    else
    {
      v29 = *a3;
      v152 = *(*a3 + 16 * (v26 + 1));
      v150 = *(v29 + 16 * v26);
      v151 = v150;
      v30 = v152;
      v6 = v150;
      v31 = v141;
      LODWORD(v139) = sub_10045E49C(&v152, &v151);
      v141 = v31;
      if (v31)
      {
        v27, v32, v33, v34, v35, v36, v37, v38;

        return;
      }

      v134 = v27;

      v39 = v26 + 2;
      v135 = v26;
      v142 = 16 * v26;
      v40 = (v29 + 16 * v26 + 24);
      v140 = v25;
      while (v25 != v39)
      {
        v42 = v40 + 2;
        v41 = v40[2];
        v43 = *(v40 - 1);
        v44 = v40[1];
        v149 = *v40;
        ObjectType = swift_getObjectType();
        *&v152 = v44;
        v46 = *(v41 + 16);
        *&v150 = v44;
        v6 = v43;
        v47 = v144;
        sub_10051E8CC(ObjectType, v46);
        v48 = v146;
        Optional<A>.orDistantPast.getter();
        sub_1000050A4(v47, &unk_100938850, qword_100795AE0);
        v49 = swift_getObjectType();
        *&v151 = v6;
        v50 = v145;
        sub_10051E8CC(v49, *(v149 + 16));
        v51 = v147;
        Optional<A>.orDistantPast.getter();
        v25 = v140;
        sub_1000050A4(v50, &unk_100938850, qword_100795AE0);
        LODWORD(v41) = static Date.< infix(_:_:)() & 1;
        v27 = v143;
        isa = v143->super.isa;
        v53 = v51;
        v54 = v148;
        (v143->super.isa)(v53, v148);
        isa(v48, v54);

        ++v39;
        v40 = v42;
        if ((v139 & 1) != v41)
        {
          v25 = v39 - 1;
          break;
        }
      }

      a3 = v133;
      v28 = v135;
      if ((v139 & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v25 < v135)
      {
        goto LABEL_122;
      }

      if (v135 < v25)
      {
        v55 = 16 * v25 - 16;
        v56 = v25;
        v57 = v135;
        v27 = v134;
        do
        {
          if (v57 != --v56)
          {
            v58 = *a3;
            if (!*a3)
            {
              goto LABEL_126;
            }

            v59 = *(v58 + v142);
            *(v58 + v142) = *(v58 + v55);
            *(v58 + v55) = v59;
          }

          ++v57;
          v55 -= 16;
          v142 += 16;
        }

        while (v57 < v56);
      }

      else
      {
LABEL_19:
        v27 = v134;
      }
    }

    v60 = a3[1];
    if (v25 < v60)
    {
      if (__OFSUB__(v25, v28))
      {
        goto LABEL_119;
      }

      if (v25 - v28 < v132)
      {
        if (__OFADD__(v28, v132))
        {
          goto LABEL_120;
        }

        if (v28 + v132 >= v60)
        {
          v61 = a3[1];
        }

        else
        {
          v61 = v28 + v132;
        }

        if (v61 < v28)
        {
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          v27 = sub_1004361F4(v27, v17, v18, v19, v20, v21, v22, v23);
LABEL_92:
          v153 = v27;
          v127 = *v27->clientIdentity;
          if (v127 >= 2)
          {
            while (*a3)
            {
              v128 = *(&v27->super.isa + 2 * v127);
              v129 = *&v27->clientIdentity[16 * v127 + 8];
              v130 = v141;
              sub_100462980((*a3 + 16 * v128), (*a3 + 16 * *&v27->clientIdentity[16 * v127]), (*a3 + 16 * v129), v6);
              v141 = v130;
              if (v130)
              {
                goto LABEL_100;
              }

              if (v129 < v128)
              {
                goto LABEL_116;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_1004361F4(v27, v17, v18, v19, v20, v21, v22, v23);
              }

              if (v127 - 2 >= *v27->clientIdentity)
              {
                goto LABEL_117;
              }

              v131 = &v27->super.isa + 2 * v127;
              *v131 = v128;
              v131[1] = v129;
              v153 = v27;
              sub_100436168(v127 - 1);
              v27 = v153;
              v127 = *v153->clientIdentity;
              if (v127 <= 1)
              {
                goto LABEL_100;
              }
            }

            goto LABEL_127;
          }

LABEL_100:
          v27, v17, v18, v19, v20, v21, v22, v23;
          return;
        }

        if (v25 != v61)
        {
          break;
        }
      }
    }

    v26 = v25;
    if (v25 < v28)
    {
      goto LABEL_118;
    }

LABEL_30:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1003658B8(0, *v27->clientIdentity + 1, 1, v27, v20, v21, v22, v23);
    }

    v6 = *v27->clientIdentity;
    v62 = *&v27->clientIdentity[8];
    v63 = v6 + 1;
    if (v6 >= v62 >> 1)
    {
      v27 = sub_1003658B8((v62 > 1), v6 + 1, 1, v27, v20, v21, v22, v23);
    }

    *v27->clientIdentity = v63;
    v64 = v27 + 16 * v6;
    *(v64 + 4) = v28;
    *(v64 + 5) = v26;
    v65 = *v136;
    if (!*v136)
    {
      goto LABEL_128;
    }

    if (v6)
    {
      while (1)
      {
        v66 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v67 = *&v27->clientIdentity[16];
          v68 = *&v27->clientIdentity[24];
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_49:
          if (v70)
          {
            goto LABEL_107;
          }

          v83 = &v27->super.isa + 2 * v63;
          v85 = *v83;
          v84 = v83[1];
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_110;
          }

          v89 = &v27->clientIdentity[16 * v66 + 16];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_114;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v63 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v93 = &v27->super.isa + 2 * v63;
        v95 = *v93;
        v94 = v93[1];
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_63:
        if (v88)
        {
          goto LABEL_109;
        }

        v96 = v27 + 16 * v66;
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_112;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_70:
        v6 = v66 - 1;
        if (v66 - 1 >= v63)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v104 = *&v27->clientIdentity[16 * v6 + 16];
        v105 = *&v27->clientIdentity[16 * v66 + 24];
        v106 = v141;
        sub_100462980((*a3 + 16 * v104), (*a3 + 16 * *&v27->clientIdentity[16 * v66 + 16]), (*a3 + 16 * v105), v65);
        v141 = v106;
        if (v106)
        {
          goto LABEL_100;
        }

        if (v105 < v104)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1004361F4(v27, v17, v18, v19, v20, v21, v22, v23);
        }

        if (v6 >= *v27->clientIdentity)
        {
          goto LABEL_104;
        }

        v107 = v27 + 16 * v6;
        *(v107 + 4) = v104;
        *(v107 + 5) = v105;
        v153 = v27;
        sub_100436168(v66);
        v27 = v153;
        v63 = *v153->clientIdentity;
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v27->clientIdentity[16 * v63 + 16];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_105;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_106;
      }

      v78 = &v27->super.isa + 2 * v63;
      v80 = *v78;
      v79 = v78[1];
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_108;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_111;
      }

      if (v82 >= v74)
      {
        v100 = &v27->clientIdentity[16 * v66 + 16];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_115;
        }

        if (v69 < v103)
        {
          v66 = v63 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v25 = a3[1];
    if (v26 >= v25)
    {
      goto LABEL_90;
    }
  }

  v134 = v27;
  v142 = *a3;
  v108 = v142 + 16 * v25 - 16;
  v135 = v28;
  v109 = v28 - v25;
  v137 = v61;
LABEL_81:
  v139 = v108;
  v140 = v25;
  v110 = *(v142 + 16 * v25);
  v138 = v109;
  v111 = v108;
  while (1)
  {
    v150 = v110;
    v112 = *v111;
    v149 = *(v111 + 8);
    v113 = v110;
    v114 = swift_getObjectType();
    *&v152 = v150;
    v115 = *(*(&v150 + 1) + 16);
    *&v150 = v113;
    v116 = v112;
    v117 = v144;
    sub_10051E8CC(v114, v115);
    v118 = v146;
    Optional<A>.orDistantPast.getter();
    sub_1000050A4(v117, &unk_100938850, qword_100795AE0);
    v119 = swift_getObjectType();
    *&v151 = v116;
    v120 = v145;
    sub_10051E8CC(v119, *(v149 + 16));
    v121 = v147;
    Optional<A>.orDistantPast.getter();
    sub_1000050A4(v120, &unk_100938850, qword_100795AE0);
    LOBYTE(v112) = static Date.< infix(_:_:)();
    v6 = v143;
    v122 = v143->super.isa;
    v123 = v121;
    v124 = v148;
    (v143->super.isa)(v123, v148);
    v122(v118, v124);

    if ((v112 & 1) == 0)
    {
LABEL_80:
      v25 = v140 + 1;
      v108 = v139 + 16;
      v26 = v137;
      v109 = v138 - 1;
      if (v140 + 1 != v137)
      {
        goto LABEL_81;
      }

      a3 = v133;
      v27 = v134;
      v28 = v135;
      if (v137 < v135)
      {
        goto LABEL_118;
      }

      goto LABEL_30;
    }

    if (!v142)
    {
      break;
    }

    v125 = *v111;
    v110 = *(v111 + 16);
    *v111 = v110;
    *(v111 + 16) = v125;
    v111 -= 16;
    if (__CFADD__(v109++, 1))
    {
      goto LABEL_80;
    }
  }

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
}

uint64_t sub_100462614(char *__dst, char *__src, char *a3, char *a4)
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
  if (v10 >= v12 >> 4)
  {
    if (a4 != __src || &__src[16 * v13] <= a4)
    {
      memmove(a4, __src, 16 * v13);
    }

    v51 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      v50 = v4;
      v46 = v7;
LABEL_26:
      v42 = v6 - 16;
      v28 = v5 - 16;
      v29 = v51;
      v43 = v6;
      do
      {
        v48 = v28;
        v44 = v28 + 16;
        v30 = *(v29 - 2);
        v31 = *(v29 - 1);
        v29 -= 16;
        v32 = *(v6 - 2);
        v33 = *(v6 - 1);
        ObjectType = swift_getObjectType();
        v35 = *(v31 + 48);
        v36 = v30;
        v37 = v32;
        v38 = v35(ObjectType, v31);
        v39 = swift_getObjectType();
        v40 = (*(v33 + 48))(v39, v33);

        if (v38 < v40)
        {
          v5 = v48;
          v4 = v50;
          if (v44 != v43)
          {
            *v48 = *v42;
          }

          if (v51 <= v50 || (v6 = v42, v42 <= v46))
          {
            v6 = v42;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v4 = v50;
        if (v44 != v51)
        {
          *v48 = *v29;
        }

        v28 = v48 - 16;
        v51 = v29;
        v6 = v43;
      }

      while (v29 > v50);
      v51 = v29;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v51 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      v47 = v5;
      while (1)
      {
        v49 = v4;
        v45 = v7;
        v14 = v6;
        v15 = *v6;
        v16 = *(v6 + 1);
        v17 = *v4;
        v18 = *(v4 + 1);
        v19 = swift_getObjectType();
        v20 = *(v16 + 48);
        v21 = v15;
        v22 = v17;
        v23 = v20(v19, v16);
        v24 = swift_getObjectType();
        v25 = (*(v18 + 48))(v24, v18);

        if (v23 >= v25)
        {
          break;
        }

        v26 = v14;
        v6 = v14 + 16;
        v27 = v45;
        v4 = v49;
        if (v45 != v14)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 = v27 + 16;
        if (v4 >= v51 || v6 >= v47)
        {
          goto LABEL_19;
        }
      }

      v26 = v49;
      v4 = v49 + 16;
      v27 = v45;
      v6 = v14;
      if (v45 == v49)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= &v4[(v51 - v4 + (v51 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v51 - v4) / 16));
  }

  return 1;
}

uint64_t sub_100462980(void **a1, void **a2, void **a3, void **a4)
{
  v76 = type metadata accessor for Date();
  v8 = *(v76 - 8);
  __chkstk_darwin(v76, v9);
  v75 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v74 = &v66 - v13;
  v14 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v14 - 8, v15);
  v73 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v72 = &v66 - v19;
  v20 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v20 = a2 - a1;
  }

  v21 = v20 >> 4;
  v22 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v22 = a3 - a2;
  }

  v23 = v22 >> 4;
  if (v21 >= v22 >> 4)
  {
    v77 = a1;
    if (a4 != a2 || &a2[2 * v23] <= a4)
    {
      memmove(a4, a2, 16 * v23);
    }

    v79 = &a4[2 * v23];
    if (a3 - a2 >= 16 && a2 > v77)
    {
      v68 = (v8 + 8);
LABEL_26:
      v67 = a2 - 2;
      v45 = (a3 - 2);
      v46 = v79;
      v69 = a2;
      do
      {
        v47 = a4;
        v78 = v45;
        v48 = (v45 + 16);
        v49 = *(v46 - 2);
        v50 = *(v46 - 1);
        v46 -= 2;
        v51 = *(a2 - 2);
        v70 = *(a2 - 1);
        ObjectType = swift_getObjectType();
        v81 = v49;
        v53 = *(v50 + 16);
        v71 = v49;
        v54 = v51;
        v55 = v72;
        sub_10051E8CC(ObjectType, v53);
        v56 = v74;
        Optional<A>.orDistantPast.getter();
        sub_1000050A4(v55, &unk_100938850, qword_100795AE0);
        v57 = swift_getObjectType();
        v80 = v54;
        v58 = v73;
        sub_10051E8CC(v57, *(v70 + 16));
        v59 = v75;
        Optional<A>.orDistantPast.getter();
        sub_1000050A4(v58, &unk_100938850, qword_100795AE0);
        LOBYTE(v58) = static Date.< infix(_:_:)();
        v60 = *v68;
        v61 = v59;
        v62 = v76;
        (*v68)(v61, v76);
        v60(v56, v62);

        if (v58)
        {
          a4 = v47;
          a3 = v78;
          v64 = v67;
          if (v48 != v69)
          {
            *v78 = *v67;
          }

          if (v79 <= v47 || (a2 = v64, v64 <= v77))
          {
            a2 = v64;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v63 = v78;
        a4 = v47;
        if (v48 != v79)
        {
          *v78 = *v46;
        }

        v45 = v63 - 16;
        v79 = v46;
        a2 = v69;
      }

      while (v46 > v47);
      v79 = v46;
    }
  }

  else
  {
    v24 = a1;
    if (a4 != a1 || &a1[2 * v21] <= a4)
    {
      memmove(a4, a1, 16 * v21);
    }

    v79 = &a4[2 * v21];
    if (a2 - a1 >= 16 && a2 < a3)
    {
      v78 = a3;
      v70 = v8 + 8;
      while (1)
      {
        v77 = v24;
        v26 = *a2;
        v25 = a2[1];
        v27 = *a4;
        v28 = a4[1];
        v29 = a2;
        v30 = swift_getObjectType();
        v81 = v26;
        v31 = v25[2];
        v71 = v26;
        v32 = v27;
        v33 = a4;
        v34 = v32;
        v35 = v72;
        sub_10051E8CC(v30, v31);
        v36 = v74;
        Optional<A>.orDistantPast.getter();
        sub_1000050A4(v35, &unk_100938850, qword_100795AE0);
        v37 = swift_getObjectType();
        v80 = v34;
        v38 = v73;
        sub_10051E8CC(v37, v28[2]);
        v39 = v75;
        Optional<A>.orDistantPast.getter();
        sub_1000050A4(v38, &unk_100938850, qword_100795AE0);
        LOBYTE(v38) = static Date.< infix(_:_:)();
        v40 = *v70;
        v41 = v39;
        v42 = v76;
        (*v70)(v41, v76);
        v40(v36, v42);

        if ((v38 & 1) == 0)
        {
          break;
        }

        v43 = v29;
        a2 = v29 + 2;
        v44 = v77;
        a4 = v33;
        if (v77 != v29)
        {
          goto LABEL_16;
        }

LABEL_17:
        v24 = v44 + 2;
        if (a4 >= v79 || a2 >= v78)
        {
          goto LABEL_19;
        }
      }

      v43 = v33;
      a4 = v33 + 2;
      v44 = v77;
      a2 = v29;
      if (v77 == v33)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v44 = *v43;
      goto LABEL_17;
    }

LABEL_19:
    a2 = v24;
  }

LABEL_37:
  if (a2 != a4 || a2 >= (a4 + ((v79 - a4 + (v79 - a4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(a2, a4, 16 * ((v79 - a4) / 16));
  }

  return 1;
}

void sub_100462F2C(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_stdlib_random();
  if (v4 * vcvtd_n_f64_u64(0, 0x35uLL) + a1 == a2)
  {
    sub_100462F2C(a1, a2);
  }
}

void sub_100462FD0(void *a1, uint64_t a2)
{
  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094B320);
  sub_100030E2C(a2, v35);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = [v5 waiterID];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_10000668C(v10, v12, &v34);
      v12, v14, v15, v16, v17, v18, v19, v20;
      *(v8 + 4) = v13;
      *(v8 + 12) = 2082;
      v21 = v36;
      v22 = v37;
      sub_10000F61C(v35, v36);
      v23 = (*(v22 + 8))(v21, v22);
      v25 = v24;
      sub_10000607C(v35);
      v26 = sub_10000668C(v23, v25, &v34);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v8 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v6, v7, "Released babysitter token for {waiterID: %{public}s, executable: %{public}s}", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_10000607C(v35);
  }
}

void sub_100463288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v235 = a2;
  v5 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v5 - 8, v6);
  v193 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v200 = &v186 - v10;
  v220 = type metadata accessor for TimeZone();
  v234 = *(v220 - 8);
  __chkstk_darwin(v220, v11);
  v188 = &v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v195 = &v186 - v15;
  v219 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v233 = *(v219 - 8);
  __chkstk_darwin(v219, v16);
  v192 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v199 = &v186 - v20;
  v218 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v232 = *(v218 - 8);
  __chkstk_darwin(v218, v21);
  v23 = &v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v27 = &v186 - v26;
  v217 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v226 = *(v217 - 8);
  __chkstk_darwin(v217, v28);
  v190 = &v186 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v197 = &v186 - v32;
  v216 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v225 = *(v216 - 8);
  __chkstk_darwin(v216, v33);
  v189 = &v186 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v36);
  v231 = &v186 - v37;
  v215 = type metadata accessor for Date.ISO8601FormatStyle();
  v38 = *(v215 - 8);
  __chkstk_darwin(v215, v39);
  v187 = &v186 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41, v42);
  v194 = &v186 - v43;
  v214 = type metadata accessor for Date();
  v44 = *(v214 - 8);
  __chkstk_darwin(v214, v45);
  v230 = &v186 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47, v48);
  v229 = &v186 - v49;
  v50 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v50 - 8, v51);
  v196 = &v186 - v52;
  v53 = *(a1 + 16);
  v191 = v23;
  v198 = v27;
  if (v53)
  {
    v54 = (a1 + 32);
    v55 = &_swiftEmptyArrayStorage;
    do
    {
      v238 = *v54;
      v236 = v238;
      v56 = v238;
      if (sub_10045E0AC(&v238, v235, a3))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        p_super = &v55->super;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100253C48(0, *v55->clientIdentity + 1, 1);
          v55 = p_super;
        }

        v59 = *v55->clientIdentity;
        v58 = *&v55->clientIdentity[8];
        if (v59 >= v58 >> 1)
        {
          sub_100253C48((v58 > 1), v59 + 1, 1);
          v55 = p_super;
        }

        *v55->clientIdentity = v59 + 1;
        *&v55->clientIdentity[16 * v59 + 16] = v236;
      }

      else
      {
      }

      ++v54;
      --v53;
    }

    while (v53);
  }

  else
  {
    v55 = &_swiftEmptyArrayStorage;
  }

  *&v238 = v55;

  sub_100460AD0(&v238, sub_100461C74, sub_1004611EC);

  v61 = v238;
  v62 = v231;
  v227 = *(v238 + 16);
  if (v227)
  {
    v63 = 0;
    v212 = (v225 + 104);
    v211 = (v226 + 104);
    v210 = (v232 + 13);
    v209 = (v233 + 104);
    v208 = v234 + 6;
    v207 = enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:);
    v203 = v234 + 4;
    v202 = (v38 + 8);
    v206 = enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:);
    v201 = (v44 + 8);
    v64 = (v238 + 40);
    v205 = enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:);
    v204 = enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:);
    *&v60 = 136446466;
    v213 = v60;
    *&v60 = 136446210;
    v186 = v60;
    v65 = v230;
    v66 = v229;
    v226 = v238;
    v228 = a3;
    while (1)
    {
      if (v63 >= *(v61 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);

        __break(1u);
        return;
      }

      *&v236 = 0;
      v233 = v63;
      v67 = *(v64 - 1);
      v68 = *v64;
      v232 = v64;
      v69 = qword_1009361C8;
      v70 = v67;
      if (v69 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      v72 = sub_100006654(v71, qword_100947970);
      v73 = v70;
      v234 = v72;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v74, v75))
      {
        LODWORD(v223) = v75;
        v224 = v74;
        v76 = v62;
        v77 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        *&v238 = v222;
        *v77 = v213;
        ObjectType = swift_getObjectType();
        p_super = v73;
        v225 = v68;
        v79 = *(v68 + 16);
        v80 = (*(v79 + 16))(ObjectType, v79);
        v82 = v81;
        v83 = sub_10000668C(v80, v81, &v238);
        v82, v84, v85, v86, v87, v88, v89, v90;
        *(v77 + 4) = v83;
        v221 = v77;
        *(v77 + 12) = 2082;
        p_super = v73;
        v91 = v196;
        sub_10051E8CC(ObjectType, v79);
        Optional<A>.orDistantPast.getter();
        sub_1000050A4(v91, &unk_100938850, qword_100795AE0);
        (*v212)(v76, v207, v216);
        (*v211)(v197, v206, v217);
        (*v210)();
        (*v209)(v199, v204, v219);
        v92 = v200;
        TimeZone.init(secondsFromGMT:)();
        v93 = v220;
        if ((v208->isa)(v92, 1, v220) == 1)
        {
          goto LABEL_41;
        }

        (v203->isa)(v195, v92, v93);
        v94 = v194;
        Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
        v95 = Date.ISO8601Format(_:)();
        v97 = v96;
        (*v202)(v94, v215);
        (*v201)(v66, v214);
        v98 = sub_10000668C(v95, v97, &v238);
        v97, v99, v100, v101, v102, v103, v104, v105;
        v106 = v221;
        *(v221 + 14) = v98;
        v107 = v224;
        _os_log_impl(&_mh_execute_header, v224, v223, "RDHousekeepingActivityScheduler: Trying to execute activity {identifier: %{public}s, lastExecuted: %{public}s}", v106, 0x16u);
        swift_arrayDestroy();

        v65 = v230;
        v61 = v226;
        v68 = v225;
      }

      else
      {
      }

      v108 = swift_getObjectType();
      v109 = *(v68 + 32);
      v239 = v108;
      v240 = v109;
      *&v238 = v73;
      type metadata accessor for RDHousekeepingActivityScheduler(0, v235, v228, v110);
      v111 = v73;
      v112 = v236;
      sub_10047A91C(&v238);
      if (!v112)
      {

        sub_10000607C(&v238);
        return;
      }

      sub_10000607C(&v238);
      swift_getErrorValue();
      if (Error.isREMError(withErrorCode:)())
      {
        v113 = v111;
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v114, v115))
        {
          LODWORD(v225) = v115;
          v234 = v114;
          v116 = swift_slowAlloc();
          v224 = swift_slowAlloc();
          p_super = v224;
          *v116 = v213;
          *&v238 = v113;
          v117 = (*(*(v68 + 16) + 16))(v108);
          v119 = v118;
          v120 = sub_10000668C(v117, v118, &p_super);
          v119, v121, v122, v123, v124, v125, v126, v127;
          *(v116 + 4) = v120;
          v223 = v116;
          *(v116 + 12) = 2082;
          *&v236 = v113;
          v237 = v113;
          (*(v109 + 16))(&v238, v108, v109);
          sub_10000F61C(&v238, v239);
          sub_10051EE80(v65);
          (*v212)(v189, v207, v216);
          (*v211)(v190, v206, v217);
          (*v210)();
          (*v209)(v192, v204, v219);
          v128 = v193;
          TimeZone.init(secondsFromGMT:)();
          v129 = v220;
          if ((v208->isa)(v128, 1, v220) == 1)
          {
            goto LABEL_42;
          }

          (v203->isa)(v188, v128, v129);
          v130 = v187;
          Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
          v131 = Date.ISO8601Format(_:)();
          v133 = v132;
          (*v202)(v130, v215);
          (*v201)(v65, v214);
          sub_10000607C(&v238);
          v134 = sub_10000668C(v131, v133, &p_super);
          v133, v135, v136, v137, v138, v139, v140, v141;
          v142 = v223;
          *(v223 + 14) = v134;
          v143 = v234;
          _os_log_impl(&_mh_execute_header, v234, v225, "RDHousekeepingActivityScheduler: Activity [%{public}s] is throttled, skipping... {resetDate: %{public}s}", v142, 0x16u);
          swift_arrayDestroy();

          v61 = v226;
        }

        else
        {
        }
      }

      else
      {
        swift_getErrorValue();
        if ((Error.isREMError(withErrorCode:)() & 1) == 0)
        {

          v160 = v111;
          swift_errorRetain();
          v161 = Logger.logObject.getter();
          v162 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v161, v162))
          {
            v163 = swift_slowAlloc();
            *&v238 = swift_slowAlloc();
            *v163 = v213;
            p_super = v160;
            v164 = (*(*(v68 + 16) + 16))(v108);
            v166 = v165;
            v167 = sub_10000668C(v164, v165, &v238);
            v166, v168, v169, v170, v171, v172, v173, v174;
            *(v163 + 4) = v167;
            *(v163 + 12) = 2082;
            swift_getErrorValue();
            v175 = Error.rem_errorDescription.getter();
            v177 = v176;
            v178 = sub_10000668C(v175, v176, &v238);
            v177, v179, v180, v181, v182, v183, v184, v185;
            *(v163 + 14) = v178;
            _os_log_impl(&_mh_execute_header, v161, v162, "RDHousekeepingActivityScheduler: Activity [%{public}s] failed with error {%{public}s}", v163, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          return;
        }

        v144 = v111;
        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          *&v238 = v148;
          *v147 = v186;
          p_super = v144;
          v149 = (*(*(v68 + 16) + 16))(v108);
          v151 = v150;
          v152 = sub_10000668C(v149, v150, &v238);
          v151, v153, v154, v155, v156, v157, v158, v159;
          *(v147 + 4) = v152;
          _os_log_impl(&_mh_execute_header, v145, v146, "RDHousekeepingActivityScheduler: Activity [%{public}s] is babysat, skipping...", v147, 0xCu);
          sub_10000607C(v148);

          v61 = v226;
        }

        v65 = v230;
      }

      v63 = v233 + 1;
      v64 = v232 + 2;
      v62 = v231;
      v66 = v229;
      if (v227 == v233 + 1)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_34:
}

void sub_1004646D8(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  __chkstk_darwin(v3, v5);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  if (v8)
  {
    v55 = &_swiftEmptyArrayStorage;
    sub_100253258(0, v8 & ~(v8 >> 63), 0);
    v50 = v55;
    if (v49)
    {
      v9 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v9 = _HashTable.startBucket.getter();
      v10 = *(a1 + 36);
    }

    v52 = v9;
    v53 = v10;
    v54 = v49 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v45 = v8;
      v46 = v48 + 32;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v43 = a1 + 56;
      v44 = v12;
      v41[1] = v1;
      v42 = a1 + 64;
      while (v11 < v8)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_37;
        }

        v20 = v52;
        v21 = v53;
        v22 = v54;
        v23 = a1;
        sub_100411ACC(v52, v53, v54, a1);
        v25 = v24;
        v26 = [v24 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = v50;
        v55 = v50;
        v29 = *v50->clientIdentity;
        v28 = *&v50->clientIdentity[8];
        if (v29 >= v28 >> 1)
        {
          sub_100253258((v28 > 1), v29 + 1, 1);
          v27 = v55;
        }

        *v27->clientIdentity = v29 + 1;
        v30 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v50 = v27;
        (*(v48 + 32))(v27 + v30 + *(v48 + 72) * v29, v7, v47);
        if (v49)
        {
          if (!v22)
          {
            goto LABEL_42;
          }

          a1 = v23;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v45;
          sub_1000F5104(&unk_10093F490, &qword_1007A7660);
          v13 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v13(v51, 0);
          if (v11 == v8)
          {
LABEL_34:
            sub_100010E34(v52, v53, v54, v14, v15, v16, v17, v18);
            return;
          }
        }

        else
        {
          if (v22)
          {
            goto LABEL_43;
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v23;
          v31 = (1 << *(v23 + 32));
          if (v20 >= v31)
          {
            goto LABEL_38;
          }

          v32 = v20 >> 6;
          v33 = *(v43 + 8 * (v20 >> 6));
          if (((v33 >> v20) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v23 + 36) != v21)
          {
            goto LABEL_40;
          }

          v34 = v33 & (-2 << (v20 & 0x3F));
          if (v34)
          {
            v31 = (__clz(__rbit64(v34)) | v20 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v35 = v32 << 6;
            v36 = v32 + 1;
            v37 = (v42 + 8 * v32);
            while (v36 < &v31->storeProvider[1] >> 6)
            {
              v39 = *v37++;
              v38 = v39;
              v35 += 64;
              ++v36;
              if (v39)
              {
                sub_100010E34(v20, v21, 0, v14, v15, v16, v17, v18);
                v31 = (__clz(__rbit64(v38)) + v35);
                goto LABEL_33;
              }
            }

            sub_100010E34(v20, v21, 0, v14, v15, v16, v17, v18);
          }

LABEL_33:
          v40 = *(v23 + 36);
          v52 = v31;
          v53 = v40;
          v54 = 0;
          v8 = v45;
          if (v11 == v45)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_100464AE4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947C58);
  v1 = sub_100006654(v0, qword_100947C58);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100464BAC(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v251 = a4;
  v240 = a2;
  v247 = a5;
  v230 = type metadata accessor for REMRemindersListDataView.TodayGroupModel();
  v241 = *(v230 - 8);
  __chkstk_darwin(v230, v7);
  v229 = &v218 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v249 = &v218 - v11;
  v12 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v12 - 8, v13);
  v226 = &v218 - v14;
  v15 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v16 = *(v15 - 8);
  v235 = v15;
  v236 = v16;
  __chkstk_darwin(v15, v17);
  v234 = (&v218 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v20);
  v239 = &v218 - v21;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v232 = *(Configuration - 8);
  v233 = Configuration;
  __chkstk_darwin(Configuration, v23);
  v231 = &v218 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for REMRemindersListDataView.Diff();
  v228 = *(v237 - 8);
  __chkstk_darwin(v237, v25);
  v238 = &v218 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v242 = &v218 - v29;
  v30 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v30 - 8, v31);
  v227 = &v218 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33, v34);
  v246 = (&v218 - v35);
  v248 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group.GroupType();
  v243 = *&v248[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v248, v36);
  v38 = &v218 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group();
  v245 = *(v39 - 8);
  __chkstk_darwin(v39, v40);
  v42 = &v218 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43, v44);
  v46 = &v218 - v45;
  __chkstk_darwin(v47, v48);
  v50 = &v218 - v49;
  v53 = __chkstk_darwin(v51, v52);
  v55 = &v218 - v54;
  v56 = a1;
  v57 = a1;
  v58 = v251;
  v59 = v250;
  v60 = sub_100468A54(v57, a3, v251, v53);
  if (v59)
  {
    return;
  }

  v221 = v55;
  v62 = v248;
  v222 = v50;
  v223 = v46;
  v220 = v42;
  v225 = v39;
  v250 = v60;
  v224 = v61;
  v219 = a3;
  v63 = sub_10046C84C(v56, v58);
  v218 = v56;
  v71 = 0;
  if (*v63->clientIdentity)
  {
    v72 = v243;
    p_isa = &v62->super.isa;
    (*(v243 + 104))(v38, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.nearby(_:), v62);
    v74 = v221;
    REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();
    v75 = v250;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v246;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_65:
      v75 = sub_100365B60(0, *v75->clientIdentity + 1, 1, v75);
    }

    v78 = v245;
    v80 = *v75->clientIdentity;
    v79 = *&v75->clientIdentity[8];
    v81 = (v80 + 1);
    if (v80 >= v79 >> 1)
    {
      v250 = (v80 + 1);
      v217 = sub_100365B60((v79 > 1), v80 + 1, 1, v75);
      v81 = v250;
      v78 = v245;
      v75 = v217;
    }

    *v75->clientIdentity = v81;
    (*(v78 + 32))(v75 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v80, v74, v225);
    if (REMRemindersListDataView.TodayGroupInvocation.Parameters.grouped.getter())
    {
LABEL_7:
      (*(v72 + 104))(v38, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.empty(_:), p_isa);
      REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();
      v74 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v63, v64, v65, v66, v67, v68, v69, v70;
    v77 = v246;
    v75 = v250;
    p_isa = &v62->super.isa;
    v72 = v243;
    if (REMRemindersListDataView.TodayGroupInvocation.Parameters.grouped.getter())
    {
      goto LABEL_7;
    }
  }

  v74 = v58;
  v38 = v249;
LABEL_13:
  v85 = v244;

  sub_100465C64(v218, v75, v74, v77);
  if (v71)
  {
    swift_bridgeObjectRelease_n();

    return;
  }

  v250 = v75;
  v86 = [v85 fetchResultTokenToDiffAgainst];
  sub_100534D44(v86, v242);
  v243 = 0;

  v87 = v231;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  v88 = v239;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (*(v232 + 8))(v87, v233);
  v90 = v235;
  v89 = v236;
  v91 = v234;
  (*(v236 + 16))(v234, v88, v235);
  v92 = (*(v89 + 88))(v91, v90);
  if (v92 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v89 + 96))(v91, v90);
    v107 = *v91;
    v108 = *v250->clientIdentity;
    if (!v108)
    {
      v250, v100, v101, v102, v103, v104, v105, v106;
      v77 = &_swiftEmptyArrayStorage;
LABEL_53:
      v192 = v239;
      v248 = sub_10053DB98(v107, v77, v218, v219, 0);
      v77, v193, v194, v195, v196, v197, v198, v199;
      (*(v236 + 8))(v192, v90);
      v200 = v230;
      v140 = v241;
      v201 = v238;
      v202 = v227;
      goto LABEL_60;
    }

    v240 = *v91;
    v109 = v245 + 16;
    v248 = *(v245 + 16);
    v71 = v250 + ((*(v245 + 80) + 32) & ~*(v245 + 80));
    v244 = *(v245 + 72);
    v245 += 8;
    v77 = &_swiftEmptyArrayStorage;
    v110 = v223;
    while (1)
    {
      v118 = v110;
      p_isa = v225;
      v74 = v109;
      (v248)(v110, v71, v225);
      v75 = REMRemindersListDataView.TodayGroupModel.Group.reminders.getter();
      (*v245)(v118, p_isa);
      v58 = *v75->clientIdentity;
      v72 = *v77->clientIdentity;
      v38 = &v58[v72];
      if (__OFADD__(v72, v58))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v119 = swift_isUniquelyReferenced_nonNull_native();
      if (!v119 || v38 > *&v77->clientIdentity[8] >> 1)
      {
        if (v72 <= v38)
        {
          v127 = &v58[v72];
        }

        else
        {
          v127 = v72;
        }

        v77 = sub_100365A24(v119, v127, 1, v77);
      }

      v38 = v249;
      if (*v75->clientIdentity)
      {
        v72 = *v77->clientIdentity;
        v38 = ((*&v77->clientIdentity[8] >> 1) - v72);
        type metadata accessor for REMRemindersListDataView.ReminderLite();
        if (v38 < v58)
        {
          goto LABEL_64;
        }

        swift_arrayInitWithCopy();
        v75, v128, v129, v130, v131, v132, v133, v134;
        v38 = v249;
        v109 = v74;
        v110 = v223;
        if (v58)
        {
          v135 = *v77->clientIdentity;
          v136 = __OFADD__(v135, v58);
          v137 = &v58[v135];
          if (v136)
          {
            __break(1u);
LABEL_67:
            v75 = sub_100365B60(0, *v75->clientIdentity + 1, 1, v75);
LABEL_8:
            v83 = *v75->clientIdentity;
            v82 = *&v75->clientIdentity[8];
            v84 = v75;
            v38 = v249;
            if (v83 >= v82 >> 1)
            {
              v84 = sub_100365B60((v82 > 1), v83 + 1, 1, v75);
            }

            v75 = v84;
            *v84->clientIdentity = v83 + 1;
            (*(v245 + 32))(v84 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v83);
            goto LABEL_13;
          }

          *v77->clientIdentity = v137;
        }
      }

      else
      {
        v75, v120, v121, v122, v123, v124, v125, v126;
        p_isa = v247;
        v109 = v74;
        v110 = v223;
        if (v58)
        {
          goto LABEL_63;
        }
      }

      v71 += v244;
      if (!--v108)
      {
        v250, v111, v112, v113, v114, v115, v116, v117;
        v90 = v235;
        v107 = v240;
        goto LABEL_53;
      }
    }
  }

  v138 = v242;
  v139 = v219;
  if (v92 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v250, v93, v94, v95, v96, v97, v98, v99;
    (*(v89 + 96))(v91, v90);
    v248 = sub_10053E698(*v91, v138, v218, v139, 0);
    (*(v89 + 8))(v239, v90);
    v140 = v241;
LABEL_59:
    v202 = v227;
    v200 = v230;
    v201 = v238;
LABEL_60:
    sub_1003FAEE8(v246, v202);
    REMRemindersListDataView.TodayGroupInvocation.Parameters.currentLocation.getter();
    v251 = v224;
    REMRemindersListDataView.TodayGroupModel.init(groups:remindersCount:currentLocation:prefetchedReminders:prefetchedDueReminders:todaySmartList:)();
    (*(v140 + 16))(v229, v38, v200);
    v215 = v228;
    v216 = v242;
    (*(v228 + 16))(v201, v242, v237);
    sub_10046D43C(&qword_100947C98, &type metadata accessor for REMRemindersListDataView.TodayGroupModel, &protocol conformance descriptor for REMRemindersListDataView.TodayGroupModel);
    sub_10046D43C(&qword_100947CA0, &type metadata accessor for REMRemindersListDataView.TodayGroupModel, &protocol conformance descriptor for REMRemindersListDataView.TodayGroupModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

    (*(v140 + 8))(v38, v200);
    (*(v215 + 8))(v216, v237);
    sub_1000050A4(v246, &qword_100938A70, &qword_1007ACC60);
    return;
  }

  v141 = v241;
  if (v92 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    (*(v89 + 96))(v91, v90);
    v142 = *v91;
    v143 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    v144 = v226;
    sub_100226AD8(v91 + *(v143 + 48), v226);
    v152 = *v250->clientIdentity;
    if (!v152)
    {
      v140 = v141;
      v250, v145, v146, v147, v148, v149, v150, v151;
      v156 = &_swiftEmptyArrayStorage;
LABEL_58:
      v205 = v142;
      v206 = v218;
      v207 = v219;
      v248 = sub_10053DB98(v205, v156, v218, v219, 0);
      sub_10053EBE4(v144, v156, v206, v207, 0);
      v156, v208, v209, v210, v211, v212, v213, v214;
      sub_1000050A4(v144, &qword_10094B8E0, &unk_1007AABD0);
      (*(v236 + 8))(v239, v235);
      goto LABEL_59;
    }

    v153 = v245 + 16;
    v248 = *(v245 + 16);
    v154 = v250 + ((*(v245 + 80) + 32) & ~*(v245 + 80));
    v155 = *(v245 + 72);
    v244 = v142;
    v245 += 8;
    v156 = &_swiftEmptyArrayStorage;
    v157 = v225;
    v158 = v220;
    while (1)
    {
      v167 = v158;
      v168 = v153;
      (v248)(v158, v154, v157);
      v169 = REMRemindersListDataView.TodayGroupModel.Group.reminders.getter();
      (*v245)(v167, v157);
      v170 = *(v169 + 16);
      v171 = *v156->clientIdentity;
      v172 = v171 + v170;
      if (__OFADD__(v171, v170))
      {
        break;
      }

      v173 = swift_isUniquelyReferenced_nonNull_native();
      if (!v173 || v172 > *&v156->clientIdentity[8] >> 1)
      {
        if (v171 <= v172)
        {
          v181 = v171 + v170;
        }

        else
        {
          v181 = v171;
        }

        v156 = sub_100365A24(v173, v181, 1, v156);
      }

      v157 = v225;
      if (*(v169 + 16))
      {
        v182 = (*&v156->clientIdentity[8] >> 1) - *v156->clientIdentity;
        type metadata accessor for REMRemindersListDataView.ReminderLite();
        if (v182 < v170)
        {
          goto LABEL_70;
        }

        swift_arrayInitWithCopy();
        v169, v183, v184, v185, v186, v187, v188, v189;
        v166 = v241;
        v38 = v249;
        v157 = v225;
        v153 = v168;
        v158 = v220;
        if (v170)
        {
          v190 = *v156->clientIdentity;
          v136 = __OFADD__(v190, v170);
          v191 = v190 + v170;
          if (v136)
          {
            goto LABEL_71;
          }

          *v156->clientIdentity = v191;
        }
      }

      else
      {
        v169, v174, v175, v176, v177, v178, v179, v180;
        v38 = v249;
        v166 = v241;
        v153 = v168;
        v158 = v220;
        if (v170)
        {
          goto LABEL_69;
        }
      }

      v154 += v155;
      if (!--v152)
      {
        v140 = v166;
        v250, v159, v160, v161, v162, v163, v164, v165;
        v144 = v226;
        v142 = v244;
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }

  else
  {
    v140 = v241;
    v203 = enum case for REMRemindersListDataView.RemindersPrefetch.none(_:);
    v204 = v92;
    v250, v93, v94, v95, v96, v97, v98, v99;
    if (v204 == v203)
    {
      (*(v89 + 8))(v239, v90);
      v248 = &_swiftEmptyArrayStorage;
      goto LABEL_59;
    }
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_100465C64(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a2;
  v88 = a1;
  v78 = a4;
  v91 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group.GroupType();
  v81 = *(v91 - 8);
  __chkstk_darwin(v91, v6);
  v90 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group();
  v92 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v86 = *(v12 - 8);
  v87 = v12;
  __chkstk_darwin(v12, v13);
  v85 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s10PredicatesOMa(0);
  __chkstk_darwin(v15, v16);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v20 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v21);
  v83 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v26 = &v75 - v25;
  v27 = a3;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  LOBYTE(a3) = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  v28 = *(v20 + 8);
  v84 = Configuration;
  v82 = v28;
  v28(v26, Configuration);
  if (a3)
  {
    REMRemindersListDataView.TodayGroupInvocation.Parameters.today.getter();
    swift_storeEnumTagMultiPayload();
    v29 = sub_100043AA8();
    sub_1001A4F3C(v18, _s10PredicatesOMa);
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v30 = [objc_allocWithZone(NSFetchRequest) init];
    v31 = [swift_getObjCClassFromMetadata() entity];
    [v30 setEntity:v31];

    [v30 setAffectedStores:0];
    [v30 setPredicate:v29];
    v32 = v88;
    v33 = v80;
    v34 = NSManagedObjectContext.count<A>(for:)();
    v35 = v33;
    if (v33)
    {

      return;
    }

    v89 = v34;

    v39 = v27;
    v40 = REMRemindersListDataView.TodayGroupInvocation.Parameters.currentLocation.getter();
    v76 = v29;
    if (v40)
    {
      v41 = v40;
      v42 = v83;
      REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
      v43 = v85;
      REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
      v82(v42, v84);
      sub_10046C22C(v32, v41, v43, 1);
      v39 = v44;
      (*(v86 + 8))(v43, v87);
      if (v39 >> 62)
      {
LABEL_45:
        v75 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v75 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = v81;
      v80 = v35;

      v39, v46, v47, v48, v49, v50, v51, v52;
    }

    else
    {
      v80 = 0;
      v75 = 0;
      v45 = v81;
    }

    v53 = 0;
    v77 = 0;
    v54 = *(v93 + 16);
    v88 = v92 + 16;
    v55 = (v45 + 88);
    LODWORD(v87) = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.today(_:);
    LODWORD(v86) = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.beforeToday(_:);
    LODWORD(v85) = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.todayAllDay(_:);
    LODWORD(v84) = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.morning(_:);
    LODWORD(v83) = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.afternoon(_:);
    LODWORD(v82) = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.tonight(_:);
    LODWORD(v81) = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.nearby(_:);
    v41 = (v92 + 8);
    v79 = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.empty(_:);
LABEL_13:
    for (i = v53 == v54; ; i = v35 == v54)
    {
      v57 = v89;
      if (i)
      {
        break;
      }

      if (v53 >= v54)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      (*(v92 + 16))(v11, v93 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v53, v8);
      v35 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        goto LABEL_43;
      }

      v58 = v8;
      v59 = v90;
      v39 = v11;
      REMRemindersListDataView.TodayGroupModel.Group.groupType.getter();
      v60 = (*v55)(v59, v91);
      if (v60 == v87 || v60 == v86 || v60 == v85 || v60 == v84 || v60 == v83 || v60 == v82)
      {
        v66 = REMRemindersListDataView.TodayGroupModel.Group.reminders.getter();
        v39 = *(v66 + 16);
        v66, v67, v68, v69, v70, v71, v72, v73;
        v8 = v58;
        (*v41)(v11, v58);
        ++v53;
        v74 = __OFADD__(v77, v39);
        v57 = (v77 + v39);
        v77 += v39;
        if (!v74)
        {
          goto LABEL_13;
        }

        __break(1u);
        break;
      }

      v8 = v58;
      if (v60 != v81 && v60 != v79)
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      (*v41)(v11, v58);
      ++v53;
    }

    if (__OFADD__(v57, v75))
    {
      goto LABEL_44;
    }

    v37 = v78;
    REMRemindersListDataView.CountByCompleted.init(completed:incomplete:)();

    v36 = 0;
  }

  else
  {
    v36 = 1;
    v37 = v78;
  }

  v38 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  (*(*(v38 - 8) + 56))(v37, v36, 1, v38);
}

void sub_1004663D4(uint64_t a1@<X1>, void *a2@<X2>, char *a3@<X8>)
{
  v48 = a2;
  v49 = a3;
  v4 = type metadata accessor for REMTimeOfDay();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4, v5);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Calendar.Component();
  v43 = *(v47 - 8);
  __chkstk_darwin(v47, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar();
  v42 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = REMRemindersListDataView.ReminderLite.objectID.getter();
  v20 = v19;
  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  v21 = sub_100364184(v19);
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }

  v23 = *(*(a1 + 56) + 8 * v21);

  v24 = [v23 displayDate];
  if (!v24)
  {
    v20 = v23;
LABEL_7:

    v27 = 5;
    goto LABEL_8;
  }

  v41 = v24;
  v25 = [v24 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v25) = static Date.< infix(_:_:)();
  v26 = *(v15 + 8);
  v26(v18, v14);
  if (v25)
  {

    v27 = 0;
  }

  else
  {
    v28 = v41;
    if ([v41 isAllDay])
    {

      v27 = 1;
    }

    else
    {
      v48 = v23;
      static Calendar.current.getter();
      v29 = v43;
      (*(v43 + 104))(v9, enum case for Calendar.Component.hour(_:), v47);
      v30 = [v28 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = Calendar.component(_:from:)();
      v26(v18, v14);
      (*(v29 + 8))(v9, v47);
      v32 = v31;
      (*(v42 + 8))(v13, v10);
      v33 = v44;
      v34 = v45;
      v35 = *(v45 + 104);
      v36 = v46;
      v35(v44, enum case for REMTimeOfDay.morning(_:), v46);
      v37 = REMTimeOfDay.endHour.getter();
      v38 = *(v34 + 8);
      v38(v33, v36);
      if (v32 >= v37)
      {
        v35(v33, enum case for REMTimeOfDay.afternoon(_:), v36);
        v39 = REMTimeOfDay.endHour.getter();

        v38(v33, v36);
        if (v32 < v39)
        {
          v27 = 3;
        }

        else
        {
          v27 = 4;
        }
      }

      else
      {

        v27 = 2;
      }
    }
  }

LABEL_8:
  *v49 = v27;
}

id sub_10046688C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v8 = 0;
  v4 = [v3 remObjectIDWithError:&v8];
  v5 = v8;
  if (v4)
  {
    *a2 = v4;
    return v5;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_10046695C(uint64_t a1)
{
  result = sub_10046D43C(&qword_100947C90, &type metadata accessor for REMRemindersListDataView.TodayGroupInvocation, &protocol conformance descriptor for REMRemindersListDataView.TodayGroupInvocation);
  *(a1 + 8) = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004669B4(uint64_t a1, void *a2, uint64_t a3, unint64_t isa, __n128 a5)
{
  v211 = a3;
  v203 = a2;
  v6 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group.GroupType();
  v201 = *(v6 - 1);
  __chkstk_darwin(v6, v7);
  v9 = &v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v200 = &v187 - v12;
  __chkstk_darwin(v13, v14);
  v16 = &v187 - v15;
  __chkstk_darwin(v17, v18);
  v196 = &v187 - v19;
  v198 = type metadata accessor for REMSmartListSection.PredefinedSectionType.Today();
  v210 = *(v198 - 8);
  __chkstk_darwin(v198, v20);
  v197 = &v187 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v195 = &v187 - v24;
  v25 = type metadata accessor for Calendar();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25, v27);
  v29 = &v187 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for Date();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190, v30);
  v32 = &v187 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v204 = v32;
  Calendar.startOfDay(for:)();
  (*(v26 + 8))(v29, v25);
  v33 = sub_10038E768(&_swiftEmptyArrayStorage);
  v35 = v33;
  if (isa >> 62)
  {
    goto LABEL_100;
  }

  v36 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v199 = v16;
  v209 = v6;
  v202 = v9;
  if (v36)
  {
    v37 = 0;
    v212 = isa & 0xFFFFFFFFFFFFFF8;
    v213 = isa & 0xC000000000000001;
    do
    {
      if (v213)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *(v212 + 16))
        {
          goto LABEL_92;
        }

        v40 = *(isa + 8 * v37 + 32);
      }

      v41 = v40;
      v16 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_92:
        __break(1u);
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
        __break(1u);
LABEL_100:
        v33 = _CocoaArrayWrapper.endIndex.getter();
        v36 = v33;
        goto LABEL_3;
      }

      v42 = isa;
      isa = [v40 remObjectID];
      v6 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v214 = v35;
      v9 = sub_100364184(isa);
      v45 = *(v35 + 16);
      v46 = (v44 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_93;
      }

      v48 = v44;
      if (*(v35 + 24) >= v47)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v35 = v214;
          if (v44)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_100373A28();
          v35 = v214;
          if (v48)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_10036B200(v47, isUniquelyReferenced_nonNull_native);
        v49 = sub_100364184(isa);
        if ((v48 & 1) != (v50 & 1))
        {
          sub_1000F5104(&unk_10093AF40, &unk_100795790);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v9 = v49;
        v35 = v214;
        if (v48)
        {
LABEL_5:
          v38 = *(v35 + 56);
          v39 = *(v38 + 8 * v9);
          *(v38 + 8 * v9) = v6;

          goto LABEL_6;
        }
      }

      *(v35 + 8 * (v9 >> 6) + 64) |= 1 << v9;
      *(*(v35 + 48) + 8 * v9) = isa;
      *(*(v35 + 56) + 8 * v9) = v6;

      v51 = *(v35 + 16);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_98;
      }

      *(v35 + 16) = v53;
LABEL_6:
      ++v37;
      isa = v42;
    }

    while (v16 != v36);
  }

  __chkstk_darwin(v33, v34);
  v54 = v204;
  *(&v187 - 2) = v35;
  *(&v187 - 1) = v54;

  v56 = sub_1005C4608(v55, sub_10046D4E0, (&v187 - 4));
  v35, v57, v58, v59, v60, v61, v62, v63;
  v64 = *v56->clientIdentity;
  v188 = 0;
  v194 = v56;
  if (v64)
  {
    v65 = v56;
    v66 = sub_100364118(0);
    if (v67)
    {
      v68 = *(*&v56->clientIdentity[40] + 8 * v66);
    }

    else
    {
      v68 = &_swiftEmptyArrayStorage;
    }

    v69 = *v65->clientIdentity;
    v192 = v68;
    if (v69)
    {
      sub_100364118(1);
      if (v70)
      {
      }

      else
      {
        v71 = &_swiftEmptyArrayStorage;
      }

      v72 = *v65->clientIdentity;
      v191 = v71;
      if (v72)
      {
        v73 = sub_100364118(5);
        if (v74)
        {
          v75 = *(*&v65->clientIdentity[40] + 8 * v73);
          v76 = qword_1009361D0;

          if (v76 != -1)
          {
            swift_once();
          }

          v77 = type metadata accessor for Logger();
          sub_100006654(v77, qword_100947C58);

          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v214 = v81;
            *v80 = 134218242;
            *(v80 + 4) = *(v75 + 16);
            v75, v82, v83, v84, v85, v86, v87, v88;
            *(v80 + 12) = 2080;
            type metadata accessor for REMRemindersListDataView.ReminderLite();
            v89 = Array.description.getter();
            v91 = v90;
            v75, v90, v92, v93, v94, v95, v96, v97;
            v98 = sub_10000668C(v89, v91, &v214);
            v91, v99, v100, v101, v102, v103, v104, v105;
            *(v80 + 14) = v98;
            _os_log_impl(&_mh_execute_header, v78, v79, "today data view unable to group %ld reminders %s", v80, 0x16u);
            sub_10000607C(v81);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }
        }
      }
    }

    else
    {
      v191 = &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    v191 = &_swiftEmptyArrayStorage;
    v192 = &_swiftEmptyArrayStorage;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v213 = swift_allocObject();
  *(v213 + 16) = xmmword_100799D70;
  v106 = v210;
  v207 = *(v210 + 104);
  v208 = v210 + 104;
  v107 = v195;
  v108 = v198;
  v207(v195, enum case for REMSmartListSection.PredefinedSectionType.Today.beforeToday(_:), v198);
  REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter();
  v205 = *(v106 + 8);
  v205(v107, v108);
  v210 = v106 + 8;
  v206 = sub_1000F5104(&qword_100943EC0, &qword_1007A4650);
  v211 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group();
  v109 = *(v211 - 8);
  v212 = *(v109 + 72);
  v110 = (*(v109 + 80) + 32) & ~*(v109 + 80);
  v111 = swift_allocObject();
  v193 = xmmword_100791300;
  *(v111 + 16) = xmmword_100791300;
  isa = v201 + 104;
  v112 = *(v201 + 104);
  v113 = v196;
  v112(v196, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.beforeToday(_:), v209);
  REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();
  v214 = v111;
  v114 = sub_1000F5104(&qword_100947CB8, &qword_1007AACB8);
  swift_allocObject();
  *(v213 + 32) = REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)();
  v207(v107, enum case for REMSmartListSection.PredefinedSectionType.Today.todayAllDay(_:), v108);
  v192 = REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter();
  v205(v107, v108);
  v115 = swift_allocObject();
  *(v115 + 16) = v193;
  v116 = v209;
  v112(v113, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.todayAllDay(_:), v209);
  REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();
  v214 = v115;
  v201 = v114;
  swift_allocObject();
  *(v213 + 40) = REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)();
  v117 = v197;
  v207(v197, enum case for REMSmartListSection.PredefinedSectionType.Today.todayNonAllDay(_:), v108);
  v208 = REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter();
  v205(v117, v108);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_100791320;
  v210 = v110;
  v9 = v118 + v110;
  v112(v199, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.morning(_:), v116);
  v119 = v194;
  if (*v194->clientIdentity)
  {
    sub_100364118(2);
    v120 = v202;
    v6 = v200;
    if (v121)
    {
    }
  }

  else
  {
    v120 = v202;
    v6 = v200;
  }

  REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();
  v112(v6, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.afternoon(_:), v116);
  if (*v119->clientIdentity)
  {
    sub_100364118(3);
    if (v122)
    {
    }
  }

  REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();
  v112(v120, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.tonight(_:), v116);
  if (*v119->clientIdentity)
  {
    sub_100364118(4);
    v16 = v213;
    if (v123)
    {
    }
  }

  else
  {
    v16 = v213;
  }

  v119, v123, v124, v125, v126, v127, v128, v129;
  REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();
  v214 = v118;
  v35 = swift_allocObject();
  *(v16 + 48) = REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)();
  if (v203)
  {
    v137 = v203;
    v138 = [(RDXPCStorePerformer *)v137 sectionIDsOrderingAsData];
    if (!v138)
    {
      goto LABEL_60;
    }

    v139 = v138;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v140;

    sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
    v141 = v188;
    static REMJSONRepresentable.fromJSONData(_:)();
    if (!v141)
    {
      sub_10001BBA0(v6, v9);
      v35 = v214;
      v142 = REMOrderedIdentifierMap.reorder<A>(objects:)();
      goto LABEL_89;
    }

    sub_10001BBA0(v6, v9);

    if (qword_1009361D0 != -1)
    {
      swift_once();
    }

    v150 = type metadata accessor for Logger();
    v35 = sub_100006654(v150, qword_100947C58);
    swift_errorRetain();
    v137 = Logger.logObject.getter();
    v151 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(&v137->super, v151))
    {
      v9 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v214 = v6;
      *v9 = 136446210;
      swift_getErrorValue();
      v152 = Error.rem_errorDescription.getter();
      v35 = v153;
      v154 = sub_10000668C(v152, v153, &v214);
      v35, v155, v156, v157, v158, v159, v160, v161;
      *(v9 + 4) = v154;
      _os_log_impl(&_mh_execute_header, &v137->super, v151, "today data view error upon reordering groups by user-defined sections ordering {error: %{public}s}", v9, 0xCu);
      sub_10000607C(v6);

LABEL_60:

      if (v16 >> 62)
      {
        goto LABEL_61;
      }

      goto LABEL_66;
    }
  }

  if (v16 >> 62)
  {
    goto LABEL_61;
  }

LABEL_66:
  v162 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v162)
  {
    goto LABEL_62;
  }

  do
  {
    v164 = 0;
    v213 = v16 & 0xC000000000000001;
    v165 = v16 & 0xFFFFFFFFFFFFFF8;
    v137 = &_swiftEmptyArrayStorage;
    while (v213)
    {
      v6 = v16;
      v142 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v35 = v142;
      v16 = v164 + 1;
      if (__OFADD__(v164, 1))
      {
        goto LABEL_88;
      }

LABEL_73:
      REMOrderedIdentifierMap.IdentifiableContainer.nonIdentifiable.getter();

      v9 = v214;
      v35 = v214[2];
      isa = *v137->clientIdentity;
      v167 = isa + v35;
      if (__OFADD__(isa, v35))
      {
        goto LABEL_95;
      }

      v168 = swift_isUniquelyReferenced_nonNull_native();
      if (v168 && v167 <= *&v137->clientIdentity[8] >> 1)
      {
        if (!*(v9 + 16))
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (isa <= v167)
        {
          v176 = isa + v35;
        }

        else
        {
          v176 = isa;
        }

        v137 = sub_100365B60(v168, v176, 1, v137);
        if (!*(v9 + 16))
        {
LABEL_68:
          v9, v169, v170, v171, v172, v173, v174, v175;
          if (v35)
          {
            goto LABEL_96;
          }

          goto LABEL_69;
        }
      }

      if ((*&v137->clientIdentity[8] >> 1) - *v137->clientIdentity < v35)
      {
        goto LABEL_97;
      }

      swift_arrayInitWithCopy();
      v9, v177, v178, v179, v180, v181, v182, v183;
      if (v35)
      {
        v184 = *v137->clientIdentity;
        v52 = __OFADD__(v184, v35);
        v185 = v184 + v35;
        if (v52)
        {
          goto LABEL_99;
        }

        *v137->clientIdentity = v185;
      }

LABEL_69:
      ++v164;
      v166 = v16 == v162;
      v16 = v6;
      if (v166)
      {
        goto LABEL_63;
      }
    }

    if (v164 >= *(v165 + 16))
    {
      goto LABEL_94;
    }

    v6 = v16;
    v35 = *(v16 + 8 * v164 + 32);

    v16 = v164 + 1;
    if (!__OFADD__(v164, 1))
    {
      goto LABEL_73;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    v186 = v142;
    v16, v143, v144, v145, v146, v147, v148, v149;

    v16 = v186;
    if (!(v186 >> 62))
    {
      goto LABEL_66;
    }

LABEL_61:
    v162 = _CocoaArrayWrapper.endIndex.getter();
  }

  while (v162);
LABEL_62:
  v137 = &_swiftEmptyArrayStorage;
LABEL_63:
  v16, v130, v131, v132, v133, v134, v135, v136;
  (*(v189 + 8))(v204, v190);
  return v137;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004679EC(_TtC7remindd19RDXPCStorePerformer *a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3, unint64_t a4, __n128 a5)
{
  v9 = type metadata accessor for REMSmartListSection.PredefinedSectionType.Today();
  v253 = *(v9 - 8);
  v254 = v9;
  __chkstk_darwin(v9, v10);
  v252 = &v240 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v259 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v256 = &v240 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v255 = &v240 - v17;
  __chkstk_darwin(v18, v19);
  v258 = &v240 - v20;
  __chkstk_darwin(v21, v22);
  v265 = &v240 - v23;
  v24 = type metadata accessor for Calendar();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24, v26);
  v28 = &v240 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29, v31);
  v257 = &v240 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33, v34);
  v260 = &v240 - v35;
  if (a2)
  {
    v261 = a3;
    v36 = a2;
    v37 = [v36 sectionIDsOrderingAsData];
    if (!v37)
    {

      a1 = v261;
LABEL_65:

      return a1;
    }

    v242 = v30;
    v250 = v29;
    v247 = v36;
    v38 = v37;
    v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
    static REMJSONRepresentable.fromJSONData(_:)();
    v248 = 0;
    sub_10001BBA0(v39, v41);
    v241 = v267;
    static Calendar.current.getter();
    Calendar.startOfDay(for:)();
    (*(v25 + 8))(v28, v24);
    v42 = sub_10038E768(&_swiftEmptyArrayStorage);
    v266 = v42;
    if (a4 >> 62)
    {
      v50 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v50 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = v265;
    v264 = v12;
    if (v50)
    {
      v52 = 0;
      v262 = (a4 & 0xFFFFFFFFFFFFFF8);
      v263 = a4 & 0xC000000000000001;
      while (1)
      {
        if (v263)
        {
          v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v52 >= *v262->clientIdentity)
          {
            goto LABEL_92;
          }

          v56 = *(a4 + 8 * v52 + 32);
        }

        v57 = v56;
        v58 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_91;
        }

        v59 = v50;
        a1 = a4;
        v60 = [v56 remObjectID];
        v61 = v57;
        v62 = v266;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v267 = v62;
        v65 = sub_100364184(v60);
        v66 = *v62->clientIdentity;
        v67 = (v64 & 1) == 0;
        v68 = v66 + v67;
        if (__OFADD__(v66, v67))
        {
          break;
        }

        v69 = v64;
        if (*&v62->clientIdentity[8] >= v68)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100373A28();
          }
        }

        else
        {
          sub_10036B200(v68, isUniquelyReferenced_nonNull_native);
          v70 = sub_100364184(v60);
          if ((v69 & 1) != (v71 & 1))
          {
            sub_1000F5104(&unk_10093AF40, &unk_100795790);
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v65 = v70;
        }

        a4 = a1;
        v72 = v267;
        v266 = v267;
        if (v69)
        {
          v53 = *&v267->clientIdentity[40];
          v54 = *(v53 + 8 * v65);
          *(v53 + 8 * v65) = v61;
        }

        else
        {
          *&v267->storeProvider[8 * (v65 >> 6) + 2] |= 1 << v65;
          *(*&v72->clientIdentity[32] + 8 * v65) = v60;
          *(*&v72->clientIdentity[40] + 8 * v65) = v61;

          v73 = *v72->clientIdentity;
          v74 = __OFADD__(v73, 1);
          v75 = v73 + 1;
          if (v74)
          {
            goto LABEL_94;
          }

          *v72->clientIdentity = v75;
        }

        ++v52;
        v50 = v59;
        v55 = v58 == v59;
        v12 = v264;
        v51 = v265;
        if (v55)
        {
          goto LABEL_26;
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
      __break(1u);
LABEL_100:
      swift_once();
LABEL_62:
      v169 = type metadata accessor for Logger();
      sub_100006654(v169, qword_100947C58);
      swift_errorRetain();
      v170 = Logger.logObject.getter();
      v171 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v267 = v173;
        *v172 = 136446210;
        swift_getErrorValue();
        v174 = Error.rem_errorDescription.getter();
        v176 = v175;
        v177 = sub_10000668C(v174, v175, &v267);
        v176, v178, v179, v180, v181, v182, v183, v184;
        *(v172 + 4) = v177;
        _os_log_impl(&_mh_execute_header, v170, v171, "today data view error upon reordering reminders by user-defined sections ordering {error: %{public}s}", v172, 0xCu);
        sub_10000607C(v173);
      }

      else
      {
      }

      goto LABEL_65;
    }

LABEL_26:
    a1 = v261;
    v76 = *v261->clientIdentity;
    if (v76)
    {
      v77 = v259 + 16;
      v78 = *(v259 + 16);
      v245 = (*(v259 + 80) + 32) & ~*(v259 + 80);
      v79 = v261 + v245;
      v263 = *(v259 + 72);
      v80 = (v259 + 8);
      v244 = (v242 + 8);
      v243 = (v259 + 32);
      v249 = &_swiftEmptyArrayStorage;
      v246 = &_swiftEmptyArrayStorage;
      v262 = &_swiftEmptyArrayStorage;
      v78(v51, v261 + v245, v12);
      while (1)
      {
        v88 = REMRemindersListDataView.ReminderLite.objectID.getter();
        v89 = v88;
        v90 = v266;
        if (*v266->clientIdentity)
        {
          v91 = sub_100364184(v88);
          if (v92)
          {
            v93 = *(*&v90->clientIdentity[40] + 8 * v91);

            v94 = [v93 displayDate];
            if (v94)
            {
              v95 = v94;
              v251 = v93;
              v96 = v77;
              v97 = v78;
              v98 = [v94 date];
              v99 = v257;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              LOBYTE(v98) = static Date.< infix(_:_:)();
              (*v244)(v99, v250);
              if (v98)
              {
                v78 = v97;
                v77 = v96;
                v78(v258, v265, v12);
                v100 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v262 : sub_100365A24(0, *v262->clientIdentity + 1, 1, v262);
                v101 = v251;
                v103 = *v100->clientIdentity;
                v102 = *&v100->clientIdentity[8];
                v262 = v103 >= v102 >> 1 ? sub_100365A24((v102 > 1), v103 + 1, 1, v100) : v100;

                v104 = v264;
                v51 = v265;
                (*v80)(v265, v264);
                v105 = v262;
                *v262->clientIdentity = v103 + 1;
                v106 = v105 + v245 + v103 * v263;
                v12 = v104;
                (*v243)(v106, v258, v104);
              }

              else
              {
                v78 = v97;
                if ([v95 isAllDay])
                {
                  v77 = v96;
                  v78(v255, v265, v12);
                  v107 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v249 : sub_100365A24(0, *v249->clientIdentity + 1, 1, v249);
                  v108 = v251;
                  v110 = *v107->clientIdentity;
                  v109 = *&v107->clientIdentity[8];
                  v249 = v110 >= v109 >> 1 ? sub_100365A24((v109 > 1), v110 + 1, 1, v107) : v107;

                  v111 = v264;
                  v51 = v265;
                  (*v80)(v265, v264);
                  v112 = v249;
                  *v249->clientIdentity = v110 + 1;
                  v113 = v112 + v245 + v110 * v263;
                  v12 = v111;
                  (*v243)(v113, v255, v111);
                }

                else
                {
                  v77 = v96;
                  v78(v256, v265, v12);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v246 = sub_100365A24(0, *v246->clientIdentity + 1, 1, v246);
                  }

                  v114 = v251;
                  v116 = *v246->clientIdentity;
                  v115 = *&v246->clientIdentity[8];
                  if (v116 >= v115 >> 1)
                  {
                    v246 = sub_100365A24((v115 > 1), v116 + 1, 1, v246);
                  }

                  v117 = v264;
                  v51 = v265;
                  (*v80)(v265, v264);
                  v118 = v246;
                  *v246->clientIdentity = v116 + 1;
                  v119 = v118 + v245 + v116 * v263;
                  v12 = v117;
                  (*v243)(v119, v256, v117);
                }
              }
            }

            else
            {
              v51 = v265;
              (*v80)(v265, v12);
            }

            a1 = v261;
          }

          else
          {

            v51 = v265;
            (*v80)(v265, v12);
          }
        }

        else
        {

          (*v80)(v51, v12);
        }

        v79 += v263;
        if (!--v76)
        {
          break;
        }

        v78(v51, v79, v12);
      }

      v266, v81, v82, v83, v84, v85, v86, v87;
      v120 = v262;
    }

    else
    {
      v266, v43, v44, v45, v46, v47, v48, v49;
      v120 = &_swiftEmptyArrayStorage;
      v249 = &_swiftEmptyArrayStorage;
      v246 = &_swiftEmptyArrayStorage;
    }

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_100799D70;
    v122 = v121;
    v263 = v121;
    v123 = v252;
    v124 = v253;
    v125 = *(v253 + 104);
    v126 = v254;
    (v125)(v252, enum case for REMSmartListSection.PredefinedSectionType.Today.beforeToday(_:), v254);
    v265 = v125;
    v261 = REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter();
    v266 = *(v124 + 8);
    (v266)(v123, v126);
    v267 = v120;
    sub_1000F5104(&qword_100947CC0, &unk_1007AACC0);
    swift_allocObject();
    v262 = v120;

    *(v122 + 32) = REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)();
    (v125)(v123, enum case for REMSmartListSection.PredefinedSectionType.Today.todayAllDay(_:), v126);
    REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter();
    v127 = v266;
    (v266)(v123, v126);
    v267 = v249;
    swift_allocObject();

    v128 = REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)();
    v129 = v263;
    *(v263 + 40) = v128;
    (v265)(v123, enum case for REMSmartListSection.PredefinedSectionType.Today.todayNonAllDay(_:), v126);
    REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter();
    (v127)(v123, v126);
    v130 = v246;
    v267 = v246;
    swift_allocObject();

    *(v129 + 48) = REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)();
    v131 = v241;
    v132 = v248;
    v133 = REMOrderedIdentifierMap.reorder<A>(objects:)();
    if (v132)
    {
      (*(v242 + 8))(v260, v250);
      v262, v141, v142, v143, v144, v145, v146, v147;
      v249, v148, v149, v150, v151, v152, v153, v154;
      v130, v155, v156, v157, v158, v159, v160, v161;

      v129, v162, v163, v164, v165, v166, v167, v168;
      if (qword_1009361D0 == -1)
      {
        goto LABEL_62;
      }

      goto LABEL_100;
    }

    v186 = v133;
    v129, v134, v135, v136, v137, v138, v139, v140;
    if (v186 >> 62)
    {
      v194 = _CocoaArrayWrapper.endIndex.getter();
      if (v194)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v194 = *((v186 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v194)
      {
LABEL_69:
        v195 = 0;
        v266 = (v186 & 0xC000000000000001);
        a1 = &_swiftEmptyArrayStorage;
        while (1)
        {
          if (v266)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v196 = v195 + 1;
            if (__OFADD__(v195, 1))
            {
              goto LABEL_90;
            }
          }

          else
          {
            if (v195 >= *((v186 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_95;
            }

            v196 = v195 + 1;
            if (__OFADD__(v195, 1))
            {
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }
          }

          REMOrderedIdentifierMap.IdentifiableContainer.nonIdentifiable.getter();

          v197 = v267;
          v198 = *v267->clientIdentity;
          v199 = *a1->clientIdentity;
          v200 = v199 + v198;
          if (__OFADD__(v199, v198))
          {
            goto LABEL_96;
          }

          v201 = swift_isUniquelyReferenced_nonNull_native();
          if (v201 && v200 <= *&a1->clientIdentity[8] >> 1)
          {
            if (!*v197->clientIdentity)
            {
              goto LABEL_70;
            }
          }

          else
          {
            if (v199 <= v200)
            {
              v209 = v199 + v198;
            }

            else
            {
              v209 = v199;
            }

            a1 = sub_100365A24(v201, v209, 1, a1);
            if (!*v197->clientIdentity)
            {
LABEL_70:
              v197, v202, v203, v204, v205, v206, v207, v208;
              if (v198)
              {
                goto LABEL_97;
              }

              goto LABEL_71;
            }
          }

          if ((*&a1->clientIdentity[8] >> 1) - *a1->clientIdentity < v198)
          {
            goto LABEL_98;
          }

          swift_arrayInitWithCopy();
          v197, v210, v211, v212, v213, v214, v215, v216;
          if (v198)
          {
            v217 = *a1->clientIdentity;
            v74 = __OFADD__(v217, v198);
            v218 = v217 + v198;
            if (v74)
            {
              goto LABEL_99;
            }

            *a1->clientIdentity = v218;
          }

LABEL_71:
          ++v195;
          if (v196 == v194)
          {
            goto LABEL_104;
          }
        }
      }
    }

    a1 = &_swiftEmptyArrayStorage;
LABEL_104:
    v186, v187, v188, v189, v190, v191, v192, v193;

    (*(v242 + 8))(v260, v250);
    v262, v219, v220, v221, v222, v223, v224, v225;
    v249, v226, v227, v228, v229, v230, v231, v232;
    v246, v233, v234, v235, v236, v237, v238, v239;
    return a1;
  }

  return a3;
}

_OWORD *sub_100468A54(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v703 = a2;
  v734 = a1;
  v699 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group.GroupType();
  v698 = *(v699 - 8);
  __chkstk_darwin(v699, v5);
  v697 = &v694 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v702 = type metadata accessor for Date();
  v701 = *(v702 - 8);
  __chkstk_darwin(v702, v7);
  v700 = (&v694 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v724 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v706 = *(v724 - 8);
  __chkstk_darwin(v724, v9);
  v723 = &v694 - v10;
  v733 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v725 = *(v733 - 8);
  __chkstk_darwin(v733, v11);
  v705 = &v694 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v704 = &v694 - v15;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v711 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v16);
  v719 = &v694 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v714 = _s10PredicatesOMa(0);
  __chkstk_darwin(v714, v18);
  v715 = &v694 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v727 = *(v20 - 8);
  v728 = v20;
  __chkstk_darwin(v20, v21);
  v709 = (&v694 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23, v24);
  v726 = &v694 - v25;
  __chkstk_darwin(v26, v27);
  v718 = &v694 - v28;
  v29 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v29 - 8, v30);
  v32 = &v694 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v34 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v35);
  v716 = (&v694 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37, v38);
  v713 = &v694 - v39;
  __chkstk_darwin(v40, v41);
  v43 = &v694 - v42;
  v731 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v731, v44);
  v696 = (&v694 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v46, v47);
  v708 = &v694 - v48;
  __chkstk_darwin(v49, v50);
  v707 = &v694 - v51;
  __chkstk_darwin(v52, v53);
  v710 = (&v694 - v54);
  __chkstk_darwin(v55, v56);
  v717 = (&v694 - v57);
  __chkstk_darwin(v58, v59);
  v720 = (&v694 - v60);
  __chkstk_darwin(v61, v62);
  v732 = (&v694 - v63);
  __chkstk_darwin(v64, v65);
  v67 = &v694 - v66;
  __chkstk_darwin(v68, v69);
  v71 = &v694 - v70;
  __chkstk_darwin(v72, v73);
  v75 = &v694 - v74;
  v722 = a3;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v76 = *(v34 + 8);
  v735 = Configuration;
  v721 = (v34 + 8);
  v737 = v76;
  (v76)(v43, Configuration);
  v77 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v78 = *(v725 + 104);
  v78(v71, enum case for REMRemindersListDataView.SortingDirection.ascending(_:), v733);
  swift_storeEnumTagMultiPayload();
  sub_1005368D8(v32, v71, v75);
  v730 = v75;
  sub_1001A4ED8(v75, v67, v79);
  LODWORD(v34) = swift_getEnumCaseMultiPayload();
  sub_1001A4F3C(v67, _s9UtilitiesO12SortingStyleOMa);
  if (v34)
  {
    v78(v71, v77, v733);
    swift_storeEnumTagMultiPayload();
    REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
    v81 = v718;
    REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
    v82 = v735;
    v83 = v737;
    (v737)(v43, v735);
    v729 = sub_10053CE0C(v71, v81, 0);
    (*(v727 + 8))(v81, v728);
    sub_1001A4F3C(v71, _s9UtilitiesO12SortingStyleOMa);
  }

  else
  {
    v729 = 0;
    v82 = v735;
    v83 = v737;
  }

  v84 = REMSmartListTypeToday;
  v85 = v720;
  v86 = v730;
  v87 = v736;
  v88 = sub_100538914(v720, v734, REMSmartListTypeToday, v730, v80);
  v736 = v87;
  if (v87)
  {
    sub_1001A4F3C(v86, _s9UtilitiesO12SortingStyleOMa);
    v729, v90, v91, v92, v93, v94, v95, v96;
    return v84;
  }

  v694 = v84;
  v718 = v88;
  sub_1001B1DA0(v85, v732, v89);
  sub_1000F5104(&qword_100946048, &unk_1007A75C0);
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  v97 = v715;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  (v83)(v43, v82);
  REMRemindersListDataView.TodayGroupInvocation.Parameters.today.getter();
  swift_storeEnumTagMultiPayload();
  v98 = sub_100043AA8();
  sub_1001A4F3C(v97, _s10PredicatesOMa);
  v99 = &_swiftEmptyArrayStorage;
  if (REMRemindersListDataView.TodayGroupInvocation.Parameters.grouped.getter())
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v99 = swift_allocObject();
    *v99->clientIdentity = xmmword_100799D70;
    *&v99->clientIdentity[16] = swift_getKeyPath();
    *&v99->clientIdentity[24] = swift_getKeyPath();
    *&v99->clientIdentity[32] = swift_getKeyPath();
  }

  v100 = v713;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v101 = v737;
  (v737)(v100, v82);
  v102 = v716;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v103.n128_f64[0] = (v101)(v102, v82);
  v104 = v732;
  v721 = sub_1005393B4(v734, v103);
  if (qword_1009363F8 != -1)
  {
    swift_once();
  }

  v738 = qword_100974F68;

  sub_100271A80(v105);
  v745 = v738;
  v106 = &_swiftEmptyArrayStorage;
  v744 = &_swiftEmptyArrayStorage;
  v108 = sub_10053CBE4(v104, v107);
  sub_100271A80(v108);
  v109 = v717;
  sub_1001A4ED8(v104, v717, v110);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v112 = v736;
  if (EnumCaseMultiPayload < 4)
  {
    sub_1001A4F3C(v109, _s9UtilitiesO12SortingStyleOMa);
    v114 = &_swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v113 = EnumCaseMultiPayload;
  v114 = &_swiftEmptyArrayStorage;
  if (v113 != 4)
  {
    goto LABEL_15;
  }

  sub_1001A4F3C(v109, _s9UtilitiesO12SortingStyleOMa);
  if (qword_1009367F0 != -1)
  {
    goto LABEL_103;
  }

  while (1)
  {

LABEL_15:
    sub_100271A80(v114);
    v742 = v744;
    v743 = v745;
    v738 = &_swiftEmptyArrayStorage;

    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770, &protocol conformance descriptor for [A]);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v116 = sub_100235F88(Predicate);
    sub_100271A98(v116);
    v716 = Predicate;
    v117 = sub_100235FA0(Predicate);
    sub_100271A98(v117);
    sub_1000F5104(&qword_10093F5A8, &qword_10079DFD0);
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    v118 = v745;
    v119 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v120 = [objc_allocWithZone(NSFetchRequest) init];
    v714 = v119;
    v121 = [swift_getObjCClassFromMetadata() entity];
    [v120 setEntity:v121];

    [v120 setAffectedStores:0];
    [v120 setPredicate:v98];
    v738 = _swiftEmptySetSingleton;

    sub_100050AD0(v122);
    v717 = v118;
    v118, v123, v124, v125, v126, v127, v128, v129;
    v130 = v738;
    v131 = sub_1003FE014(v738);
    v713 = v112;
    v130, v132, v133, v134, v135, v136, v137, v138;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v131, v140, v141, v142, v143, v144, v145, v146;
    v715 = v120;
    [v120 setPropertiesToFetch:isa];

    v147 = v744;
    v695 = v98;
    v720 = v99;
    if (v744 >> 62)
    {
      break;
    }

    v148 = *((v744 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v737 = v744;
    if (!v148)
    {
      goto LABEL_29;
    }

LABEL_17:
    v741 = &_swiftEmptyArrayStorage;
    v149 = &v741;
    sub_100026EF4(0, v148 & ~(v148 >> 63), 0);
    if ((v148 & 0x8000000000000000) == 0)
    {
      v150 = 0;
      v106 = v741;
      v151 = v147;
      v735 = v147 & 0xFFFFFFFFFFFFFF8;
      v736 = v147 & 0xC000000000000001;
      while (1)
      {
        v152 = v150 + 1;
        if (__OFADD__(v150, 1))
        {
          __break(1u);
          goto LABEL_75;
        }

        if (v736)
        {
          v153 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v150 >= *(v735 + 16))
          {
            __break(1u);
            goto LABEL_97;
          }

          v153 = *&v151->clientIdentity[8 * v150 + 16];
        }

        v149 = v153;
        v154 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v155)
        {
          break;
        }

        v147 = v154;
        v131 = v155;

        v741 = v106;
        v157 = *v106->clientIdentity;
        v156 = *&v106->clientIdentity[8];
        if (v157 >= v156 >> 1)
        {
          v149 = &v741;
          sub_100026EF4((v156 > 1), v157 + 1, 1);
          v106 = v741;
        }

        *v106->clientIdentity = v157 + 1;
        v158 = v106 + 16 * v157;
        *(v158 + 4) = v147;
        *(v158 + 5) = v131;
        ++v150;
        v151 = v737;
        if (v152 == v148)
        {
          v147 = v737;
          v104 = v732;
          goto LABEL_29;
        }
      }

      v738 = 0;
      v739 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v691._object = 0x80000001007EC120;
      v691._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v691);
      v740 = v153;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      LODWORD(v693) = 0;
      v692 = 19;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_105:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_103:
    swift_once();
  }

  v148 = _CocoaArrayWrapper.endIndex.getter();
  v737 = v147;
  if (v148)
  {
    goto LABEL_17;
  }

LABEL_29:
  v159 = swift_allocObject();
  v160 = Array._bridgeToObjectiveC()().super.isa;
  v106, v161, v162, v163, v164, v165, v166, v167;
  v168 = v715;
  [v715 setRelationshipKeyPathsForPrefetching:v160];

  v169 = v104;
  v170 = v104;
  v171 = v726;
  v172 = v729;
  v173 = sub_10053CE0C(v170, v726, v729);
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v174 = Array._bridgeToObjectiveC()().super.isa;
  v173, v175, v176, v177, v178, v179, v180, v181;
  [v168 setSortDescriptors:v174];

  v182 = v713;
  v183 = NSManagedObjectContext.fetch<A>(_:)();
  v736 = v182;
  if (v182)
  {
    v720, v184, v185, v186, v187, v188, v189, v190;

    v716, v191, v192, v193, v194, v195, v196, v197;
    v172, v198, v199, v200, v201, v202, v203, v204;

    sub_1001A4F3C(v730, _s9UtilitiesO12SortingStyleOMa);
    v717, v205, v206, v207, v208, v209, v210, v211;
    v147, v212, v213, v214, v215, v216, v217, v218;
    v742, v219, v220, v221, v222, v223, v224, v225;
    v743, v226, v227, v228, v229, v230, v231, v232;
    swift_deallocUninitializedObject();
    v233 = Subtasks;
    v234 = v711;
    v236 = v727;
    v235 = v728;
LABEL_48:
    (*(v234 + 8))(v719, v233);
    v422 = *(v236 + 8);
    v84 = (v236 + 8);
    v422(v171, v235);
    sub_1001A4F3C(v169, _s9UtilitiesO12SortingStyleOMa);
    return v84;
  }

  *(v159 + 16) = v183;

  v237 = v727;
  v238 = v728;
  v239 = v709;
  (*(v727 + 16))(v709, v171, v728);
  v240 = (*(v237 + 88))(v239, v238);
  if (v240 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    v716, v241, v242, v243, v244, v245, v246, v247;
    (*(v237 + 8))(v239, v238);
    goto LABEL_38;
  }

  if (v240 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    v716, v241, v242, v243, v244, v245, v246, v247;
    (*(v237 + 96))(v239, v238);
    v738 = *v239;
    v248 = v738;
    sub_1000F5104(&qword_100944F78, qword_1007AABF0);
    type metadata accessor for UUID();
    sub_10000CB48(&qword_100947CB0, &qword_100944F78, qword_1007AABF0, &protocol conformance descriptor for Set<A>);
    sub_10046D43C(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v249 = v736;
    v250 = Sequence.mapToSet<A>(_:)();
    v736 = v249;
    v248, v251, v252, v253, v254, v255, v256, v257;
    goto LABEL_39;
  }

  if (v240 != enum case for REMRemindersListDataView.ShowCompleted.off(_:) && v240 != enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    goto LABEL_105;
  }

  v716, v241, v242, v243, v244, v245, v246, v247;
LABEL_38:
  v250 = _swiftEmptySetSingleton;
LABEL_39:
  v258 = *(v159 + 16);

  v259 = &_swiftEmptyArrayStorage;
  v260 = sub_100155C54(&_swiftEmptyArrayStorage, v250, v258);
  v258, v261, v262, v263, v264, v265, v266, v267;
  v250, v268, v269, v270, v271, v272, v273, v274;
  v275 = *(v159 + 16);
  v735 = v159;
  *(v159 + 16) = v260;
  v275, v276, v277, v278, v279, v280, v281, v282;
  v283 = v710;
  sub_1001A4ED8(v169, v710, v284);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v285 = v283;
    v286 = *v283;
    v288 = v285[1];
    v287 = v285[2];
    v290 = v285[3];
    v289 = v285[4];

    if (v286)
    {
      v288, v291, v292, v293, v294, v295, v296, v297;
      v287, v298, v299, v300, v301, v302, v303, v304;
      v290, v305, v306, v307, v308, v309, v310, v311;
      v289, v312, v313, v314, v315, v316, v317, v318;
      v326 = v721;
      if (v721)
      {
        v327 = v735;
        v328 = *(v735 + 16);

        v329 = sub_100155828(v286, v726, v326, v328);
        v328, v330, v331, v332, v333, v334, v335, v336;
        v286, v337, v338, v339, v340, v341, v342, v343;

        v344 = *(v327 + 16);
        *(v327 + 16) = v329;
      }

      else
      {
        v344 = v286;
      }

      v344, v319, v320, v321, v322, v323, v324, v325;
    }
  }

  else
  {
    sub_1001A4F3C(v283, _s9UtilitiesO12SortingStyleOMa);
  }

  v345 = swift_allocObject();
  *(v345 + 16) = 0;
  v346 = swift_allocObject();
  *(v346 + 2) = 0;
  v740 = _swiftEmptyDictionarySingleton;
  v741 = _swiftEmptyDictionarySingleton;
  v347 = v735;
  v348 = *(v735 + 16);
  __chkstk_darwin(v346, v349);
  v350 = v169;
  v351 = v719;
  *(&v694 - 14) = v169;
  *(&v694 - 13) = v351;
  v352 = v734;
  *(&v694 - 12) = v353;
  *(&v694 - 11) = v352;
  v354 = v726;
  *(&v694 - 10) = v347;
  *(&v694 - 9) = v354;
  *(&v694 - 8) = &v743;
  *(&v694 - 7) = &v742;
  *(&v694 - 6) = 0;
  *(&v694 - 40) = 0;
  *(&v694 - 4) = v721;
  *(&v694 - 3) = v345;
  v692 = &v741;
  v693 = &v740;

  v355 = v736;
  v356 = sub_1003DE68C(sub_10046D484, (&v694 - 16), v348);
  v736 = v355;
  if (v355)
  {
    v720, v357, v358, v359, v360, v361, v362, v363;

    v348, v364, v365, v366, v367, v368, v369, v370;

    v729, v371, v372, v373, v374, v375, v376, v377;

    sub_1001A4F3C(v730, _s9UtilitiesO12SortingStyleOMa);
    v717, v378, v379, v380, v381, v382, v383, v384;
    v737, v385, v386, v387, v388, v389, v390, v391;
    v740, v392, v393, v394, v395, v396, v397, v398;
    v399 = v741;

    v399, v400, v401, v402, v403, v404, v405, v406;
    v742, v407, v408, v409, v410, v411, v412, v413;
    v414 = v743;

    v414, v415, v416, v417, v418, v419, v420, v421;
    v233 = Subtasks;
    v234 = v711;
    v236 = v727;
    v235 = v728;
    v171 = v726;
    goto LABEL_48;
  }

  v424 = v356;
  v715 = v346;
  v716 = v345;
  v348, v357, v358, v359, v360, v361, v362, v363;
  v425 = v707;
  sub_1001A4ED8(v350, v707, v426);
  v427 = swift_getEnumCaseMultiPayload();
  v428 = v737;
  if (v427 > 2)
  {
    v429 = v726;
    v430 = v733;
    if (v427 == 3 || v427 == 4)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v429 = v726;
    v430 = v733;
    if (v427 < 2)
    {
      v431 = v725;
      v432 = v704;
      (*(v725 + 32))(v704, v425, v733);
      v433 = sub_100156950(v432, v429, v424);
      v424, v434, v435, v436, v437, v438, v439, v440;
      (*(v431 + 8))(v432, v430);
      goto LABEL_57;
    }

LABEL_55:
    sub_1001A4F3C(v425, _s9UtilitiesO12SortingStyleOMa);
  }

  v433 = v424;
LABEL_57:
  v738 = &_swiftEmptyArrayStorage;
  v441 = *(v433 + 16);
  if (v441)
  {
    v442 = *(v706 + 16);
    v443 = v433;
    v444 = v433 + ((*(v706 + 80) + 32) & ~*(v706 + 80));
    v445 = *(v706 + 72);
    v446 = (v706 + 8);
    do
    {
      v447 = v723;
      v448 = v724;
      v442(v723, v444, v724);
      REMSortableElement.element.getter();
      (*v446)(v447, v448);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v738 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v738 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v714 = *((v738 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v444 += v445;
      --v441;
    }

    while (v441);
    v428 = v737;
    v259 = v738;
    v429 = v726;
    v430 = v733;
  }

  else
  {
    v443 = v433;
  }

  v449 = v735;
  swift_beginAccess();
  v450 = *(v449 + 16);
  *(v449 + 16) = v259;
  v450, v451, v452, v453, v454, v455, v456, v457;
  v458 = v708;
  sub_1001A4ED8(v732, v708, v459);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v460 = v725;
    v461 = v705;
    (*(v725 + 32))(v705, v458, v430);
    v462 = *(v449 + 16);

    v463 = sub_1001561A0(v461, v429, v462);
    v462, v464, v465, v466, v467, v468, v469, v470;
    v471 = v461;
    v428 = v737;
    (*(v460 + 8))(v471, v430);
    v472 = *(v449 + 16);
    *(v449 + 16) = v463;
    v472, v473, v474, v475, v476, v477, v478, v479;
  }

  else
  {
    sub_1001A4F3C(v458, _s9UtilitiesO12SortingStyleOMa);
  }

  v480 = v429;
  v481 = v717;
  v482 = *(v449 + 16);

  v484 = v736;
  v737 = sub_1005364C4(v483, &v741, &v740);
  v485 = v484;
  v481, v486, v487, v488, v489, v490, v491, v492;
  v428, v493, v494, v495, v496, v497, v498, v499;
  v720, v500, v501, v502, v503, v504, v505, v506;
  v482, v507, v508, v509, v510, v511, v512, v513;
  v443, v514, v515, v516, v517, v518, v519, v520;
  v729, v521, v522, v523, v524, v525, v526, v527;

  v131 = *(v449 + 16);
  v528 = v740;

  v528, v529, v530, v531, v532, v533, v534, v535;
  v536 = v741;

  v536, v537, v538, v539, v540, v541, v542, v543;
  v742, v544, v545, v546, v547, v548, v549, v550;
  v551 = v743;

  v551, v552, v553, v554, v555, v556, v557, v558;
  (*(v711 + 8))(v719, Subtasks);
  (*(v727 + 8))(v480, v728);
  if (!v718)
  {
    v575 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v577 = v576;
    v579 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v585 = v578;
    v147 = v730;
    if (v575 == v579 && v577 == v578)
    {
      v131, v578, v579, v580, v581, v582, v583, v584;
      v737, v586, v587, v588, v589, v590, v591, v592;
    }

    else
    {
      v622 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v577, v623, v624, v625, v626, v627, v628, v629;
      v585, v630, v631, v632, v633, v634, v635, v636;
      if ((v622 & 1) == 0)
      {
        v654 = sub_10003A1B8();
        if (!v654)
        {
          goto LABEL_75;
        }

        v559 = v654;
        v655 = sub_10022F65C(v694, v654);
        if (!v485)
        {
          v600 = v655;
          v690 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
          [v690 initWithStore:v703 storage:v600];
          goto LABEL_74;
        }

        v131, v656, v657, v658, v659, v660, v661, v662;
        v737, v663, v664, v665, v666, v667, v668, v669;
LABEL_80:
        v559 = v695;
        goto LABEL_81;
      }

      v577 = v131;
      v585 = v737;
    }

    v577, v593, v594, v595, v596, v597, v598, v599;
    v585, v637, v638, v639, v640, v641, v642, v643;
    v644 = objc_opt_self();
    v645 = String._bridgeToObjectiveC()();
    [v644 invalidParameterErrorWithDescription:v645];

    swift_willThrow();
    goto LABEL_80;
  }

  v559 = v718;
  v560 = sub_10022EB6C(v559);
  v147 = v730;
  if (v485)
  {

    v131, v561, v562, v563, v564, v565, v566, v567;
    v737, v568, v569, v570, v571, v572, v573, v574;

LABEL_81:
    v84 = v732;

    sub_1001A4F3C(v147, _s9UtilitiesO12SortingStyleOMa);
    sub_1001A4F3C(v84, _s9UtilitiesO12SortingStyleOMa);
    return v84;
  }

  v600 = v560;
  v601 = objc_allocWithZone(REMSmartList);
  [v601 initWithStore:v703 storage:v600];
  v602 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
  REMSmartList_Codable.init(_:)();
LABEL_74:

LABEL_75:
  if (REMRemindersListDataView.TodayGroupInvocation.Parameters.grouped.getter())
  {
    v604 = v700;
    REMRemindersListDataView.TodayGroupInvocation.Parameters.today.getter();
    v605 = v718;
    v606 = v737;
    v84 = sub_1004669B4(v604, v718, v737, v131, v607);
    v131, v608, v609, v610, v611, v612, v613, v614;
    v606, v615, v616, v617, v618, v619, v620, v621;

    (*(v701 + 8))(v604, v702);
    goto LABEL_92;
  }

  v149 = v696;
  sub_1001A4ED8(v147, v696, v603);
  v646 = swift_getEnumCaseMultiPayload();
  if (v646 > 2)
  {
    if (v646 == 3 || v646 == 4)
    {
LABEL_90:
      v131, v647, v648, v649, v650, v651, v652, v653;
      sub_1001A4F3C(v149, _s9UtilitiesO12SortingStyleOMa);
    }

    else
    {
      v131, v647, v648, v649, v650, v651, v652, v653;
    }

    sub_1000F5104(&qword_100943EC0, &qword_1007A4650);
    type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group();
    v84 = swift_allocObject();
    v84[1] = xmmword_100791300;
    (*(v698 + 104))(v697, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.today(_:), v699);
    REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();

LABEL_92:
    v670 = v732;
  }

  else
  {
    if (v646)
    {
      goto LABEL_90;
    }

LABEL_97:
    v671 = v700;
    v672 = v149;
    REMRemindersListDataView.TodayGroupInvocation.Parameters.today.getter();
    v673 = v718;
    v674 = v737;
    v736 = sub_1004679EC(v671, v718, v737, v131, v675);
    v131, v676, v677, v678, v679, v680, v681, v682;
    v674, v683, v684, v685, v686, v687, v688, v689;
    (*(v701 + 8))(v671, v702);
    sub_1000F5104(&qword_100943EC0, &qword_1007A4650);
    type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group();
    v84 = swift_allocObject();
    v84[1] = xmmword_100791300;
    (*(v698 + 104))(v697, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.today(_:), v699);
    REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();

    sub_1001A4F3C(v147, _s9UtilitiesO12SortingStyleOMa);
    v147 = v732;
    v670 = v672;
  }

  sub_1001A4F3C(v147, _s9UtilitiesO12SortingStyleOMa);
  sub_1001A4F3C(v670, _s9UtilitiesO12SortingStyleOMa);
  return v84;
}

id sub_10046AB44(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9, v11);
  v14 = (v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    goto LABEL_2;
  }

  (*(v10 + 16))(v14, a1, v9, v12);
  v26 = (*(v10 + 88))(v14, v9);
  if (v26 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v10 + 96))(v14, v9);
    (*(v5 + 32))(v8, v14, v4);
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100791300;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 32) = 0xD000000000000018;
    *(v27 + 40) = 0x80000001007EAB00;
    v28 = String._bridgeToObjectiveC()();
    v130[1] = 0;
    v29 = v28;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v27, v31, v32, v33, v34, v35, v36, v37;
    v38 = objc_opt_self();
    v39 = [v38 predicateWithFormat:v29 argumentArray:isa];

    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100791340;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 32) = 0xD00000000000001DLL;
    *(v40 + 40) = 0x80000001007F8F60;
    *(v40 + 88) = v4;
    v41 = sub_1000103CC((v40 + 64));
    (*(v5 + 16))(v41, v8, v4);
    v42 = String._bridgeToObjectiveC()();
    v43 = Array._bridgeToObjectiveC()().super.isa;
    v40, v44, v45, v46, v47, v48, v49, v50;
    v51 = [v38 predicateWithFormat:v42 argumentArray:v43];

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100796900;
    *(v52 + 32) = v39;
    *(v52 + 40) = v51;
    sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
    v53 = v39;
    v54 = v51;
    v55 = Array._bridgeToObjectiveC()().super.isa;
    v52, v56, v57, v58, v59, v60, v61, v62;
    v25 = [objc_opt_self() orPredicateWithSubpredicates:v55];

    (*(v5 + 8))(v8, v4);
    goto LABEL_14;
  }

  if (v26 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    (*(v10 + 96))(v14, v9);
    v63 = *v14;
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_100791300;
    *(v64 + 56) = &type metadata for String;
    *(v64 + 32) = 0xD000000000000018;
    *(v64 + 40) = 0x80000001007EAB00;
    v65 = String._bridgeToObjectiveC()();
    v66 = Array._bridgeToObjectiveC()().super.isa;
    v64, v67, v68, v69, v70, v71, v72, v73;
    v74 = objc_opt_self();
    v25 = [v74 predicateWithFormat:v65 argumentArray:v66];

    if ((v63 & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_8:
        sub_1004646D8(v63);
        v83 = v82;
        v63, v84, v85, v86, v87, v88, v89, v90;
        v91 = swift_allocObject();
        *(v91 + 16) = xmmword_100791340;
        *(v91 + 56) = &type metadata for String;
        *(v91 + 32) = 0xD000000000000019;
        *(v91 + 40) = 0x80000001007EAAC0;
        *(v91 + 88) = sub_1000F5104(&qword_10093D008, qword_10079AAC0);
        *(v91 + 64) = v83;
        v92 = String._bridgeToObjectiveC()();
        v93 = Array._bridgeToObjectiveC()().super.isa;
        v91, v94, v95, v96, v97, v98, v99, v100;
        v101 = [v74 predicateWithFormat:v92 argumentArray:v93];

        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_100796900;
        *(v102 + 32) = v25;
        *(v102 + 40) = v101;
        sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
        v103 = v25;
        v104 = v101;
        v105 = Array._bridgeToObjectiveC()().super.isa;
        v102, v106, v107, v108, v109, v110, v111, v112;
        v25 = [objc_opt_self() orPredicateWithSubpredicates:v105];

        goto LABEL_14;
      }
    }

    else if (*(v63 + 16))
    {
      goto LABEL_8;
    }

    v63, v75, v76, v77, v78, v79, v80, v81;
  }

  else
  {
    if (v26 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
    {
LABEL_2:
      sub_1000F5104(&unk_100938E80, &unk_1007959D0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100791300;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 32) = 0xD000000000000018;
      *(v15 + 40) = 0x80000001007EAB00;
      v16 = String._bridgeToObjectiveC()();
      v17 = Array._bridgeToObjectiveC()().super.isa;
      v15, v18, v19, v20, v21, v22, v23, v24;
      v25 = [objc_opt_self() predicateWithFormat:v16 argumentArray:v17];

      goto LABEL_14;
    }

    if (v26 != enum case for REMRemindersListDataView.ShowCompleted.on(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v25 = [objc_opt_self() predicateWithValue:1];
  }

LABEL_14:
  v113 = v25;
  v114 = sub_10029EB64();
  v132[4] = v113;
  v132[5] = v114;
  v115 = &_swiftEmptyArrayStorage;
  v131 = &_swiftEmptyArrayStorage;
  v116 = v114;
  for (i = 0; i != 2; ++i)
  {
    v118 = v132[i + 4];
    if (v118)
    {
      v119 = v118;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v115 = v131;
    }
  }

  sub_1000F5104(&qword_100947CA8, &qword_1007AABE8);
  swift_arrayDestroy();
  sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
  v120 = Array._bridgeToObjectiveC()().super.isa;
  v115, v121, v122, v123, v124, v125, v126, v127;
  v128 = [objc_opt_self() andPredicateWithSubpredicates:v120];

  return v128;
}

unint64_t sub_10046B584(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_20:
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = &selRef_hack_willSaveHandled;
  v5 = &selRef_hack_willSaveHandled;
  v6 = &selRef_persistentStoreForIdentifier_;
  while (1)
  {
    if (v2 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v33 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v7 = *(a1 + 8 * v3 + 32);
    }

    v8 = v7;
    [v7 v4[286]];
    v10 = v9;
    [v8 v5[306]];
    v12 = v11;
    [v8 v6[63]];
    v14 = v13;
    v15 = [v8 locationUID];
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      [v8 v4[286]];
      Double.write<A>(to:)();
      [v8 v5[306]];
      Double.write<A>(to:)();
      [v8 v6[63]];
      Double.write<A>(to:)();
      v18 = 0xE000000000000000;
    }

    v19 = objc_allocWithZone(CLCircularRegion);
    v20 = String._bridgeToObjectiveC()();
    v18, v21, v22, v23, v24, v25, v26, v27;
    v28 = [v19 initWithCenter:v20 radius:v10 identifier:{v12, v14}];

    v29 = REMStructuredLocation.clCircularRegion.getter();
    v30 = CLCircularRegion.overlaps(_:)(v29);

    if (!v30)
    {
      return v3;
    }

    v31 = __OFADD__(v3++, 1);
    v4 = &selRef_hack_willSaveHandled;
    v5 = &selRef_hack_willSaveHandled;
    v6 = &selRef_persistentStoreForIdentifier_;
    if (v31)
    {
      goto LABEL_19;
    }
  }
}

unint64_t sub_10046B7E8(unint64_t *a1)
{
  v3 = *a1;
  result = sub_10046B584(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = a1;
  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &selRef_hack_willSaveHandled;
  v9 = &selRef_hack_willSaveHandled;
  v10 = &selRef_persistentStoreForIdentifier_;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v12 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v13 = v12;
    [v12 v8[286]];
    v15 = v14;
    [v13 v9[306]];
    v17 = v16;
    [v13 v10[63]];
    v19 = v18;
    v20 = [v13 locationUID];
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      [v13 v8[286]];
      Double.write<A>(to:)();
      [v13 v9[306]];
      Double.write<A>(to:)();
      [v13 v10[63]];
      Double.write<A>(to:)();
      v23 = 0xE000000000000000;
    }

    v24 = objc_allocWithZone(CLCircularRegion);
    v25 = String._bridgeToObjectiveC()();
    v23, v26, v27, v28, v29, v30, v31, v32;
    v33 = [v24 initWithCenter:v25 radius:v15 identifier:{v17, v19}];

    v34 = REMStructuredLocation.clCircularRegion.getter();
    v35 = CLCircularRegion.overlaps(_:)(v34);

    if (v35)
    {
      v9 = &selRef_hack_willSaveHandled;
      if (v6 == v7)
      {
        v8 = &selRef_hack_willSaveHandled;
        v10 = &selRef_persistentStoreForIdentifier_;
        v11 = __OFADD__(v6++, 1);
        if (v11)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v38 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v38)
          {
            goto LABEL_53;
          }

          if (v7 >= v38)
          {
            goto LABEL_54;
          }

          v39 = *(v3 + 32 + 8 * v7);
          v36 = *(v3 + 32 + 8 * v6);
          v37 = v39;
        }

        v40 = v37;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1002618D4();
          v41 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v41) = 0;
        }

        v42 = v3 & 0xFFFFFFFFFFFFFF8;
        v43 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v40;

        if ((v3 & 0x8000000000000000) != 0 || v41)
        {
          v3 = sub_1002618D4();
          v42 = v3 & 0xFFFFFFFFFFFFFF8;
        }

        v8 = &selRef_hack_willSaveHandled;
        v10 = &selRef_persistentStoreForIdentifier_;
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        if (v7 >= *(v42 + 16))
        {
          goto LABEL_51;
        }

        v44 = v42 + 8 * v7;
        v45 = *(v44 + 32);
        *(v44 + 32) = v36;

        *v46 = v3;
        v9 = &selRef_hack_willSaveHandled;
        v11 = __OFADD__(v6++, 1);
        if (v11)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v8 = &selRef_hack_willSaveHandled;
      v9 = &selRef_hack_willSaveHandled;
      v10 = &selRef_persistentStoreForIdentifier_;
    }

    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

unint64_t sub_10046BBC4(unint64_t a1, void *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_28:
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v22 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = [v6 alarm];
    if (!v8 || (v9 = v8, v10 = [v8 reminder], v9, !v10))
    {
      v13 = v7;
      v14 = v5;
LABEL_23:

      return v14;
    }

    if (!a2)
    {
      if (qword_100935F50 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006654(v15, qword_1009442B0);
      v16 = v10;
      v13 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v13, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v16;
        *v19 = v10;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v13, v17, "Evaluating TypedPredicate with nil NSPredicate against object {object: %@}", v18, 0xCu);
        sub_1000050A4(v19, &unk_100938E70, &unk_100797230);
      }

      v14 = 0;
      goto LABEL_23;
    }

    v11 = [a2 evaluateWithObject:v10];

    if ((v11 & 1) == 0)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_27;
    }
  }
}

void sub_10046BE48(unint64_t *a1, void *a2)
{
  v3 = a2;
  v5 = *a1;
  v6 = sub_10046BBC4(*a1, a2);
  v8 = v6;
  if (v2)
  {
    return;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      goto LABEL_56;
    }

    return;
  }

  v35 = 0;
  v36 = a1;
  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return;
  }

  v10 = &selRef_accountStatusWithCompletionHandler_;
  v38 = v3;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == _CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v13 = *(v5 + 8 * v9 + 32);
LABEL_16:
    v14 = v13;
    v15 = [v13 v10[46]];
    if (v15 && (v16 = v15, v17 = [v15 reminder], v16, v17))
    {
      if (v3)
      {
        v18 = [v3 evaluateWithObject:v17];

        if (v18)
        {
          if (v8 != v9)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_58;
              }

              v27 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v8 >= v27)
              {
                goto LABEL_59;
              }

              if (v9 >= v27)
              {
                goto LABEL_60;
              }

              v28 = *(v5 + 32 + 8 * v9);
              v19 = *(v5 + 32 + 8 * v8);
              v20 = v28;
            }

            v29 = v20;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = sub_1002618D4();
              v30 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v30) = 0;
            }

            v31 = v5 & 0xFFFFFFFFFFFFFF8;
            v32 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v29;

            if ((v5 & 0x8000000000000000) != 0 || v30)
            {
              v5 = sub_1002618D4();
              v31 = v5 & 0xFFFFFFFFFFFFFF8;
            }

            v10 = &selRef_accountStatusWithCompletionHandler_;
            v3 = v38;
            if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v9 >= *(v31 + 16))
            {
              goto LABEL_55;
            }

            v33 = v31 + 8 * v9;
            v34 = *(v33 + 32);
            *(v33 + 32) = v19;

            *v36 = v5;
          }

          v12 = __OFADD__(v8++, 1);
          if (v12)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_9;
      }

      if (qword_100935F50 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006654(v21, qword_1009442B0);
      v22 = v17;
      v11 = Logger.logObject.getter();
      v23 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v11, v23))
      {
        v37 = v8;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v22;
        *v25 = v17;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, v11, v23, "Evaluating TypedPredicate with nil NSPredicate against object {object: %@}", v24, 0xCu);
        sub_1000050A4(v25, &unk_100938E70, &unk_100797230);
        v3 = v38;

        v8 = v37;
      }

      v10 = &selRef_accountStatusWithCompletionHandler_;
    }

    else
    {
      v11 = v14;
    }

LABEL_9:
    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      goto LABEL_52;
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
  _CocoaArrayWrapper.endIndex.getter();
}

void sub_10046C22C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v31[0] = a2;
  v6 = _s10PredicatesOMa(0);
  __chkstk_darwin(v6, v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = sub_10046AB44(a3, a4);
  [v10 setPredicate:v11];

  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v12];

  v34 = &_swiftEmptyArrayStorage;
  sub_100010D04(0, 4, 0);
  v13 = v34;
  v33 = &type metadata for String;
  *&v32 = 0x656475746974616CLL;
  *(&v32 + 1) = 0xE800000000000000;
  v15 = *v34->clientIdentity;
  v14 = *&v34->clientIdentity[8];
  if (v15 >= v14 >> 1)
  {
    sub_100010D04((v14 > 1), v15 + 1, 1);
    v13 = v34;
  }

  *v13->clientIdentity = v15 + 1;
  sub_100005EE0(&v32, &v13->clientIdentity[32 * v15 + 16]);
  v33 = &type metadata for String;
  *&v32 = 0x64757469676E6F6CLL;
  *(&v32 + 1) = 0xE900000000000065;
  v34 = v13;
  v17 = *v13->clientIdentity;
  v16 = *&v13->clientIdentity[8];
  if (v17 >= v16 >> 1)
  {
    sub_100010D04((v16 > 1), v17 + 1, 1);
    v13 = v34;
  }

  *v13->clientIdentity = v17 + 1;
  sub_100005EE0(&v32, &v13->clientIdentity[32 * v17 + 16]);
  v33 = &type metadata for String;
  *&v32 = 0x737569646172;
  *(&v32 + 1) = 0xE600000000000000;
  v34 = v13;
  v19 = *v13->clientIdentity;
  v18 = *&v13->clientIdentity[8];
  if (v19 >= v18 >> 1)
  {
    sub_100010D04((v18 > 1), v19 + 1, 1);
    v13 = v34;
  }

  *v13->clientIdentity = v19 + 1;
  sub_100005EE0(&v32, &v13->clientIdentity[32 * v19 + 16]);
  v33 = &type metadata for String;
  *&v32 = 0x6E6F697461636F6CLL;
  *(&v32 + 1) = 0xEB00000000444955;
  v34 = v13;
  v21 = *v13->clientIdentity;
  v20 = *&v13->clientIdentity[8];
  if (v21 >= v20 >> 1)
  {
    sub_100010D04((v20 > 1), v21 + 1, 1);
    v13 = v34;
  }

  *v13->clientIdentity = v21 + 1;
  sub_100005EE0(&v32, &v13->clientIdentity[32 * v21 + 16]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setPropertiesToFetch:isa];

  v23 = v31[1];
  v24 = NSManagedObjectContext.fetch<A>(_:)();
  if (v23)
  {

    return;
  }

  *&v32 = v24;
  v25 = v31[0];
  v26 = sub_10046B7E8(&v32);

  if (!(v32 >> 62))
  {
    v27 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27 >= v26)
    {
      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30 >= v6)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v27 = _CocoaArrayWrapper.endIndex.getter();
  if (v27 < v26)
  {
    goto LABEL_17;
  }

LABEL_13:
  sub_100260DBC(v26, v27);
  swift_storeEnumTagMultiPayload();
  v28 = sub_100043AA8();
  sub_1001A4F3C(v9, _s10PredicatesOMa);
  v9 = v28;
  sub_10046BE48(&v32, v28);
  v6 = v29;

  if (v32 >> 62)
  {
    goto LABEL_18;
  }

  v30 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v30 >= v6)
  {
LABEL_15:
    sub_100260DBC(v6, v30);

    return;
  }

LABEL_19:
  __break(1u);
}

_TtC7remindd19RDXPCStorePerformer *sub_10046C84C(uint64_t a1, unint64_t a2)
{
  v168 = a1;
  v175 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v171 = *(v175 - 8);
  __chkstk_darwin(v175, v3);
  v170 = &v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v169 = &v149 - v7;
  __chkstk_darwin(v8, v9);
  v174 = &v149 - v10;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v11 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v12);
  v163 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v165 = &v149 - v16;
  v167 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v162 = *(v167 - 8);
  __chkstk_darwin(v167, v17);
  v161 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v20 = *(v19 - 8);
  v172 = v19;
  v173 = v20;
  __chkstk_darwin(v19, v21);
  v164 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v159 = &v149 - v25;
  __chkstk_darwin(v26, v27);
  v29 = &v149 - v28;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v31 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v32);
  v160 = &v149 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v35);
  v158 = &v149 - v36;
  __chkstk_darwin(v37, v38);
  v40 = (&v149 - v39);
  __chkstk_darwin(v41, v42);
  v44 = &v149 - v43;
  v45 = a2;
  v46 = REMRemindersListDataView.TodayGroupInvocation.Parameters.currentLocation.getter();
  v47 = &_swiftEmptyArrayStorage;
  if (!v46)
  {
    return v47;
  }

  v157 = v40;
  v156 = v11;
  v48 = v46;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v51 = *(v31 + 8);
  v50 = (v31 + 8);
  v49 = v51;
  v51(v44, Configuration);
  v52 = v176;
  sub_10046C22C(v168, v48, v29, 0);
  v54 = Configuration;
  if (v52)
  {

    (*(v173 + 8))(v29, v172);
    return v47;
  }

  v55 = v53;
  v150 = v49;
  v151 = v50;
  v177 = v45;
  v154 = v48;
  v176 = 0;
  v56 = *(v173 + 8);
  v173 += 8;
  v153 = v56;
  v56(v29, v172);
  v178 = &_swiftEmptyArrayStorage;
  v64 = v55 & 0xFFFFFFFFFFFFFF8;
  if (v55 >> 62)
  {
LABEL_58:
    v65 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v65 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v152 = v54;
  if (!v65)
  {
    v155 = &_swiftEmptyArrayStorage;
    v47 = v177;
    goto LABEL_25;
  }

  v66 = 0;
  v155 = &_swiftEmptyArrayStorage;
  while (2)
  {
    v54 = v66;
    while (1)
    {
      if ((v55 & 0xC000000000000001) != 0)
      {
        v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v54 >= *(v64 + 16))
        {
          goto LABEL_55;
        }

        v67 = *&v55->clientIdentity[8 * v54 + 16];
      }

      v68 = v67;
      v66 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v69 = [v67 alarm];
      if (v69)
      {
        break;
      }

LABEL_11:
      ++v54;
      v47 = v177;
      if (v66 == v65)
      {
        goto LABEL_25;
      }
    }

    v70 = v69;
    v71 = [v69 reminder];

    if (!v71)
    {
      goto LABEL_11;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v155 = v178;
    v47 = v177;
    if (v66 != v65)
    {
      continue;
    }

    break;
  }

LABEL_25:
  v55, v57, v58, v59, v60, v61, v62, v63;
  v72 = v155;
  v178 = v155;
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CB48(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0, &protocol conformance descriptor for [A]);
  sub_10018BA8C();
  v73 = v176;
  v74 = Sequence.unique<A>(by:)();
  if (v73)
  {

    v72, v82, v83, v84, v85, v86, v87, v88;
    return v47;
  }

  v176 = 0;
  v90 = v74;
  v72, v75, v76, v77, v78, v79, v80, v81;
  v92 = v161;
  v91 = v162;
  (*(v162 + 104))(v161, enum case for REMRemindersListDataView.SortingDirection.ascending(_:), v167);
  v93 = v157;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  v94 = v159;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v95 = v93;
  v96 = v152;
  v55 = v151;
  v97 = v150;
  v150(v95, v152);
  v157 = sub_1001561A0(v92, v94, v90);
  v90, v98, v99, v100, v101, v102, v103, v104;
  v153(v94, v172);
  (*(v91 + 8))(v92, v167);
  v105 = v158;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  v106 = v165;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v97(v105, v96);
  v107 = v160;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  v108 = v164;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v97(v107, v96);
  v109 = v156;
  v110 = v163;
  v111 = Subtasks;
  (*(v156 + 16))(v163, v106, Subtasks);
  v112 = (*(v109 + 88))(v110, v111);
  if (v112 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:) || v112 == enum case for REMRemindersListDataView.FetchSubtasks.on(_:))
  {
    v177 = sub_10038E654(&_swiftEmptyArrayStorage);
    v64 = v157;
    goto LABEL_35;
  }

  if (v112 == enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
  {
    v64 = v157;
    v113 = v176;
    sub_100539C70(v157, v108, v168, 0);
    v176 = v113;
    if (v113)
    {

      v64, v115, v116, v117, v118, v119, v120, v121;
      v153(v108, v172);
      (*(v109 + 8))(v106, v111);
      return v47;
    }

    v177 = v114;
LABEL_35:
    v153(v108, v172);
    (*(v109 + 8))(v106, v111);
    if (v64 >> 62)
    {
      v122 = _CocoaArrayWrapper.endIndex.getter();
      v54 = v177;
      if (v122)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v122 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v54 = v177;
      if (v122)
      {
LABEL_37:
        v123 = 0;
        v172 = v64 & 0xFFFFFFFFFFFFFF8;
        v173 = v64 & 0xC000000000000001;
        v124 = (v171 + 32);
        v47 = &_swiftEmptyArrayStorage;
        v168 = v122;
        while (1)
        {
          if (v173)
          {
            v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v126 = v123 + 1;
            if (__OFADD__(v123, 1))
            {
              goto LABEL_56;
            }
          }

          else
          {
            if (v123 >= *(v172 + 16))
            {
              goto LABEL_57;
            }

            v125 = *(v64 + 8 * v123 + 32);
            v126 = v123 + 1;
            if (__OFADD__(v123, 1))
            {
              goto LABEL_56;
            }
          }

          v55 = v125;
          v127 = [(RDXPCStorePerformer *)v55 objectID];
          v128 = v127;
          if (*(v54 + 16))
          {
            sub_100363FF4(v127);
          }

          v129 = [(RDXPCStorePerformer *)v55 remObjectID];
          if (v129)
          {
            REMObjectID.codable.getter();
            [(RDXPCStorePerformer *)v55 completed];
            v130 = v170;
            REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtaskCount:subtasks:)();

            v55 = *v124;
            v131 = v169;
            v132 = v175;
            (*v124)(v169, v130, v175);
            (v55)(v174, v131, v132);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_100365A24(0, *v47->clientIdentity + 1, 1, v47);
            }

            v134 = *v47->clientIdentity;
            v133 = *&v47->clientIdentity[8];
            v64 = v157;
            if (v134 >= v133 >> 1)
            {
              v47 = sub_100365A24((v133 > 1), v134 + 1, 1, v47);
            }

            *v47->clientIdentity = v134 + 1;
            (v55)(v47 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v134, v174, v175);
          }

          else
          {
          }

          ++v123;
          v54 = v177;
          if (v126 == v168)
          {
            goto LABEL_61;
          }
        }
      }
    }

    v47 = &_swiftEmptyArrayStorage;
LABEL_61:

    v54, v135, v136, v137, v138, v139, v140, v141;
    v64, v142, v143, v144, v145, v146, v147, v148;
    return v47;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10046D43C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10046D510()
{
  result = qword_100947CC8;
  if (!qword_100947CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947CC8);
  }

  return result;
}

uint64_t sub_10046D564()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947CD0);
  v1 = sub_100006654(v0, qword_100947CD0);
  if (qword_1009364D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10046D62C(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = (&v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8, v9);
  v11 = &v86 - v10;
  v12 = sub_1000F5104(&qword_100947E50, &unk_1007AF320);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v86 - v18;
  v20 = sub_1004719AC(a1, type metadata accessor for REMCDListInZREMCDOBJECT, &qword_100936520, &qword_100975230, sub_1005508AC);
  v100 = v1;
  if (v1)
  {
    return;
  }

  v28 = v20;
  v96 = v19;
  v92 = v15;
  v94 = v7;
  v102 = _swiftEmptyDictionarySingleton;
  if (v20 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v90 = v11;
    v93 = v4;
    v98 = v3;
    if (i)
    {
      v4 = i;
      v30 = 0;
      v3 = v28 & 0xC000000000000001;
      v11 = v28 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v3)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_41;
        }

        v34 = objc_autoreleasePoolPush();
        v35 = v100;
        sub_10046E364(a1, v32, &v102, &v101);
        v100 = v35;
        if (v35)
        {
          v28, v36, v37, v38, v39, v40, v41, v42;
          v100 = v101;
          objc_autoreleasePoolPop(v34);

          v50 = v102;
          goto LABEL_38;
        }

        objc_autoreleasePoolPop(v34);

        ++v30;
        if (v33 == v4)
        {
          v51 = v102;
          goto LABEL_16;
        }
      }
    }

    v51 = _swiftEmptyDictionarySingleton;
LABEL_16:
    v28, v21, v22, v23, v24, v25, v26, v27;
    v52 = *&v51->storeProvider[2];
    v87 = &v51->storeProvider[2];
    v53 = 1 << v51->clientIdentity[16];
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v11 = v54 & v52;
    v55 = (v53 + 63) >> 6;
    v88 = v93 + 16;
    v97 = (v93 + 32);
    v95 = (v93 + 8);
    v91 = v51;

    v56 = 0;
    v89 = a1;
    v28 = v94;
    v3 = v92;
    if (v11)
    {
      break;
    }

LABEL_20:
    if (v55 <= v56 + 1)
    {
      v58 = v56 + 1;
    }

    else
    {
      v58 = v55;
    }

    while (1)
    {
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v57 >= v55)
      {
        v99 = v58 - 1;
        v80 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
        (*(*(v80 - 8) + 56))(v3, 1, 1, v80);
        v11 = 0;
        goto LABEL_27;
      }

      v11 = *&v87[8 * v57];
      ++v56;
      if (v11)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  while (1)
  {
    v57 = v56;
LABEL_26:
    v59 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v60 = v59 | (v57 << 6);
    v61 = v91;
    v62 = v93;
    (*(v93 + 16))(v90, *&v91->clientIdentity[32] + *(v93 + 72) * v60, v98);
    v63 = *(*&v61->clientIdentity[40] + 8 * v60);
    v64 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
    v65 = *(v64 + 48);
    v3 = v92;
    (*(v62 + 32))();
    *(v3 + v65) = v63;
    (*(*(v64 - 8) + 56))(v3, 0, 1, v64);

    v99 = v57;
    a1 = v89;
    v28 = v94;
LABEL_27:
    v4 = v3;
    v66 = v3;
    v67 = v96;
    sub_100471B18(v66, v96);
    v68 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
    if ((*(*(v68 - 8) + 48))(v67, 1, v68) == 1)
    {
      break;
    }

    v69 = *(v67 + *(v68 + 48));
    v70 = v98;
    (*v97)(v28, v67, v98);
    v71 = objc_autoreleasePoolPush();
    v72 = v100;
    sub_10046EC48(v28, a1, v69, &v101);
    v100 = v72;
    if (v72)
    {
      v69, v73, v74, v75, v76, v77, v78, v79;
      v100 = v101;
      objc_autoreleasePoolPop(v71);
      v83 = v91;

      (*v95)(v28, v70);
      v50 = v83;
      goto LABEL_38;
    }

    v69, v73, v74, v75, v76, v77, v78, v79;
    objc_autoreleasePoolPop(v71);
    (*v95)(v28, v70);
    v56 = v99;
    v3 = v4;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  v81 = v91;

  if ([a1 hasChanges])
  {
    v101 = 0;
    if ([a1 save:&v101])
    {
      v82 = v101;
      [a1 refreshAllObjects];
    }

    else
    {
      v84 = v101;
      v85 = _convertNSErrorToError(_:)();

      v100 = v85;
      swift_willThrow();
    }
  }

  v50 = v81;
LABEL_38:
  v50, v43, v44, v45, v46, v47, v48, v49;
}

void sub_10046DCC8(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = (&v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8, v9);
  v11 = &v86 - v10;
  v12 = sub_1000F5104(&qword_100947E50, &unk_1007AF320);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v86 - v18;
  v20 = sub_1004719AC(a1, type metadata accessor for REMCDSmartListInZREMCDOBJECT, &qword_100936778, &qword_1009752E0, sub_1007157A0);
  v100 = v1;
  if (v1)
  {
    return;
  }

  v28 = v20;
  v96 = v19;
  v92 = v15;
  v94 = v7;
  v102 = _swiftEmptyDictionarySingleton;
  if (v20 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v90 = v11;
    v93 = v4;
    v98 = v3;
    if (i)
    {
      v4 = i;
      v30 = 0;
      v3 = v28 & 0xC000000000000001;
      v11 = v28 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v3)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_41;
        }

        v34 = objc_autoreleasePoolPush();
        v35 = v100;
        sub_10046F1C4(a1, v32, &v102, &v101);
        v100 = v35;
        if (v35)
        {
          v28, v36, v37, v38, v39, v40, v41, v42;
          v100 = v101;
          objc_autoreleasePoolPop(v34);

          v50 = v102;
          goto LABEL_38;
        }

        objc_autoreleasePoolPop(v34);

        ++v30;
        if (v33 == v4)
        {
          v51 = v102;
          goto LABEL_16;
        }
      }
    }

    v51 = _swiftEmptyDictionarySingleton;
LABEL_16:
    v28, v21, v22, v23, v24, v25, v26, v27;
    v52 = *&v51->storeProvider[2];
    v87 = &v51->storeProvider[2];
    v53 = 1 << v51->clientIdentity[16];
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v11 = v54 & v52;
    v55 = (v53 + 63) >> 6;
    v88 = v93 + 16;
    v97 = (v93 + 32);
    v95 = (v93 + 8);
    v91 = v51;

    v56 = 0;
    v89 = a1;
    v28 = v94;
    v3 = v92;
    if (v11)
    {
      break;
    }

LABEL_20:
    if (v55 <= v56 + 1)
    {
      v58 = v56 + 1;
    }

    else
    {
      v58 = v55;
    }

    while (1)
    {
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v57 >= v55)
      {
        v99 = v58 - 1;
        v80 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
        (*(*(v80 - 8) + 56))(v3, 1, 1, v80);
        v11 = 0;
        goto LABEL_27;
      }

      v11 = *&v87[8 * v57];
      ++v56;
      if (v11)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  while (1)
  {
    v57 = v56;
LABEL_26:
    v59 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v60 = v59 | (v57 << 6);
    v61 = v91;
    v62 = v93;
    (*(v93 + 16))(v90, *&v91->clientIdentity[32] + *(v93 + 72) * v60, v98);
    v63 = *(*&v61->clientIdentity[40] + 8 * v60);
    v64 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
    v65 = *(v64 + 48);
    v3 = v92;
    (*(v62 + 32))();
    *(v3 + v65) = v63;
    (*(*(v64 - 8) + 56))(v3, 0, 1, v64);

    v99 = v57;
    a1 = v89;
    v28 = v94;
LABEL_27:
    v4 = v3;
    v66 = v3;
    v67 = v96;
    sub_100471B18(v66, v96);
    v68 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
    if ((*(*(v68 - 8) + 48))(v67, 1, v68) == 1)
    {
      break;
    }

    v69 = *(v67 + *(v68 + 48));
    v70 = v98;
    (*v97)(v28, v67, v98);
    v71 = objc_autoreleasePoolPush();
    v72 = v100;
    sub_10046FAA8(v28, a1, v69, &v101);
    v100 = v72;
    if (v72)
    {
      v69, v73, v74, v75, v76, v77, v78, v79;
      v100 = v101;
      objc_autoreleasePoolPop(v71);
      v83 = v91;

      (*v95)(v28, v70);
      v50 = v83;
      goto LABEL_38;
    }

    v69, v73, v74, v75, v76, v77, v78, v79;
    objc_autoreleasePoolPop(v71);
    (*v95)(v28, v70);
    v56 = v99;
    v3 = v4;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  v81 = v91;

  if ([a1 hasChanges])
  {
    v101 = 0;
    if ([a1 save:&v101])
    {
      v82 = v101;
      [a1 refreshAllObjects];
    }

    else
    {
      v84 = v101;
      v85 = _convertNSErrorToError(_:)();

      v100 = v85;
      swift_willThrow();
    }
  }

  v50 = v81;
LABEL_38:
  v50, v43, v44, v45, v46, v47, v48, v49;
}

void sub_10046E364(void *a1, void *a2, id *a3, uint64_t *a4)
{
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8, v9);
  v11 = &v106 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v109 = v12;
  v110 = v13;
  __chkstk_darwin(v12, v14);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v17, v18).n128_u64[0];
  v21 = &v106 - v20;
  v113 = 0;
  v111 = a1;
  v22 = [a1 existingObjectWithID:a2 error:{&v113, v19}];
  v23 = v113;
  if (!v22)
  {
    v49 = v113;
    v50 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *a4 = v50;
    return;
  }

  v24 = v22;
  type metadata accessor for REMCDListInZREMCDOBJECT();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    v51 = v23;

    if (qword_1009361D8 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_100947CD0);
    v53 = a2;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v56 = 136315650;
      v112 = &_s57MigrateListsAndSmartListsFromZREMCDOBJECTToZREMCDBASELISTON;
      v113 = v58;
      sub_1000F5104(&unk_100947E60, &qword_1007AAEE8);
      v59 = String.init<A>(describing:)();
      v61 = v60;
      v62 = sub_10000668C(v59, v60, &v113);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v56 + 4) = v62;
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_10000668C(0xD000000000000014, 0x80000001007F2410, &v113);
      *(v56 + 22) = 2114;
      *(v56 + 24) = v53;
      *v57 = v53;
      v70 = v53;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%s|%s] Failed to process list of {listMOIDInZREMCDOBJECT: %{public}@} since its managed object could not be fetched", v56, 0x20u);
      sub_1000050A4(v57, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    return;
  }

  v26 = v25;
  type metadata accessor for REMCDListInZREMCDBASELIST();
  v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v28 = v23;
  isUniquelyReferenced_nonNull_native = [v27 initWithContext:v111];
  sub_100470AC8(v26);
  v30 = [v26 ckCloudState];
  if (v30)
  {
    v31 = v30;
    [v30 setObject:0];
    [v31 setSavedAttachment:0];
    [v31 setSavedReminder:0];
    [v31 setTemplate:0];
    [v31 setList:isUniquelyReferenced_nonNull_native];
  }

  v32 = [v26 parentList];
  if (!v32)
  {
LABEL_29:
    v94 = 0;
    goto LABEL_30;
  }

  v108 = v32;
  v33 = [v32 identifier];
  if (!v33)
  {
    if (qword_1009361D8 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_100006654(v71, qword_100947CD0);
    v72 = v24;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v107 = isUniquelyReferenced_nonNull_native;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v106 = v76;
      *v75 = 136315650;
      v112 = &_s57MigrateListsAndSmartListsFromZREMCDOBJECTToZREMCDBASELISTON;
      v113 = v76;
      sub_1000F5104(&unk_100947E60, &qword_1007AAEE8);
      v77 = String.init<A>(describing:)();
      v79 = v78;
      v80 = sub_10000668C(v77, v78, &v113);
      v79, v81, v82, v83, v84, v85, v86, v87;
      *(v75 + 4) = v80;
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_10000668C(0xD000000000000014, 0x80000001007F2410, &v113);
      *(v75 + 22) = 2082;
      v88 = [v26 identifier];
      if (v88)
      {
        v89 = v88;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v90 = 0;
      }

      else
      {
        v90 = 1;
      }

      (*(v110 + 56))(v11, v90, 1, v109);
      v95 = Optional.descriptionOrNil.getter();
      v97 = v96;
      sub_1000050A4(v11, &unk_100939D90, "8\n\r");
      v98 = sub_10000668C(v95, v97, &v113);
      v97, v99, v100, v101, v102, v103, v104, v105;
      *(v75 + 24) = v98;
      _os_log_impl(&_mh_execute_header, v73, v74, "[%s|%s] Failed to process parentList because parentList.identifier is nil {list.identifier: %{public}s}", v75, 0x20u);
      swift_arrayDestroy();

      v94 = 0;
      isUniquelyReferenced_nonNull_native = v107;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v34 = v33;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v107 = isUniquelyReferenced_nonNull_native;
  v106 = [isUniquelyReferenced_nonNull_native ic_permanentObjectID];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v113 = *a3;
  v35 = v113;
  *a3 = 0x8000000000000000;
  v43 = sub_100363F20(v21);
  v44 = v35[2];
  v45 = (v36 & 1) == 0;
  v46 = v44 + v45;
  if (__OFADD__(v44, v45))
  {
    __break(1u);
LABEL_34:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_27:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*(v110 + 8))(v21, a3);
    v94 = sub_100471B98;
LABEL_30:
    [v111 refreshObject:v26 mergeChanges:0];

    sub_10003E114(v94, 0);
    return;
  }

  v47 = v36;
  if (v35[3] >= v46)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1003769E8();
      v35 = v113;
    }

LABEL_24:
    isUniquelyReferenced_nonNull_native = v107;
    v91 = *a3;
    *a3 = v35;
    v91, v36, v37, v38, v39, v40, v41, v42;
    v92 = *a3;
    a3 = v109;
    if ((v47 & 1) == 0)
    {
      (*(v110 + 16))(v16, v21, v109);
      sub_1002CB9B0(v43, v16, &_swiftEmptyArrayStorage, v92);
    }

    v93 = (v92[7] + 8 * v43);
    v34 = v106;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v93 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_27;
    }

    goto LABEL_34;
  }

  sub_100370B40(v46, isUniquelyReferenced_nonNull_native);
  v35 = v113;
  v48 = sub_100363F20(v21);
  if ((v47 & 1) == (v36 & 1))
  {
    v43 = v48;
    goto LABEL_24;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10046EC48(void *a1, void *a2, unint64_t a3, uint64_t *a4)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100471718(a1);
  if (v4)
  {
LABEL_2:
    *a4 = v4;
    return;
  }

  v70 = 0;
  v71 = v14;
  if (v14 && (v15 = [v14 ic_permanentObjectID]) != 0)
  {
    v63 = a4;
    v73 = 0;
    v16 = v15;
    v17 = [a2 existingObjectWithID:v16 error:&v73];
    v18 = v73;
    if (!v17)
    {
      v58 = v73;

      v59 = _convertNSErrorToError(_:)();
      v60 = v59;
      swift_willThrow();
LABEL_28:

      v4 = v60;
      a4 = v63;
      goto LABEL_2;
    }

    v19 = v17;
    v20 = type metadata accessor for REMCDListInZREMCDBASELIST();
    v66 = v19;
    v69 = v20;
    v21 = swift_dynamicCastClass();
    v22 = v18;
    v65 = v16;

    v64 = v21;
    if (v21)
    {
      if (a3 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
        if (v23)
        {
LABEL_9:
          v13 = 0;
          v67 = a3 & 0xFFFFFFFFFFFFFF8;
          v68 = a3 & 0xC000000000000001;
          while (1)
          {
            if (v68)
            {
              v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v13 >= *(v67 + 16))
              {
                goto LABEL_30;
              }

              v54 = *(a3 + 8 * v13 + 32);
            }

            v53 = v54;
            v9 = (v13 + 1);
            if (__OFADD__(v13, 1))
            {
              break;
            }

            v73 = 0;
            v55 = [a2 existingObjectWithID:v54 error:&v73];
            v56 = v73;
            if (!v55)
            {
              v61 = v73;
              v62 = _convertNSErrorToError(_:)();

              v60 = v62;
              swift_willThrow();

              v16 = v65;
              goto LABEL_28;
            }

            a1 = v55;
            v10 = swift_dynamicCastClass();
            v57 = v56;
            if (v10)
            {
              v52 = v66;
              [v10 setParentList:v64];
            }

            else
            {
              v52 = v53;
              v53 = a1;
            }

            ++v13;
            if (v9 == v23)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {
        v23 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_9;
        }
      }

LABEL_33:

      goto LABEL_34;
    }

    a3 = v65;
  }

  else
  {
    a3 = 0;
  }

  if (qword_1009361D8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100006654(v24, qword_100947CD0);
  (*(v10 + 16))(v13, a1, v9);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v25, v26))
  {

    (*(v10 + 8))(v13, v9);
    return;
  }

  v27 = swift_slowAlloc();
  v65 = a3;
  v28 = v27;
  v29 = swift_slowAlloc();
  *v28 = 136315650;
  v72 = &_s57MigrateListsAndSmartListsFromZREMCDOBJECTToZREMCDBASELISTON;
  v73 = v29;
  sub_1000F5104(&unk_100947E60, &qword_1007AAEE8);
  v30 = String.init<A>(describing:)();
  v32 = v31;
  v33 = sub_10000668C(v30, v31, &v73);
  v32, v34, v35, v36, v37, v38, v39, v40;
  *(v28 + 4) = v33;
  *(v28 + 12) = 2080;
  *(v28 + 14) = sub_10000668C(0xD000000000000014, 0x80000001007F2410, &v73);
  *(v28 + 22) = 2082;
  sub_1001B397C();
  v41 = dispatch thunk of CustomStringConvertible.description.getter();
  v43 = v42;
  (*(v10 + 8))(v13, v9);
  v44 = sub_10000668C(v41, v43, &v73);
  v43, v45, v46, v47, v48, v49, v50, v51;
  *(v28 + 24) = v44;
  _os_log_impl(&_mh_execute_header, v25, v26, "[%s|%s] Failed to process sublists of {parentListIdentifier: %{public}s} since its managed object could not be fetched", v28, 0x20u);
  swift_arrayDestroy();

LABEL_34:
}

void sub_10046F1C4(void *a1, void *a2, id *a3, uint64_t *a4)
{
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8, v9);
  v11 = &v106 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v109 = v12;
  v110 = v13;
  __chkstk_darwin(v12, v14);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v17, v18).n128_u64[0];
  v21 = &v106 - v20;
  v113 = 0;
  v111 = a1;
  v22 = [a1 existingObjectWithID:a2 error:{&v113, v19}];
  v23 = v113;
  if (!v22)
  {
    v49 = v113;
    v50 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *a4 = v50;
    return;
  }

  v24 = v22;
  type metadata accessor for REMCDSmartListInZREMCDOBJECT();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    v51 = v23;

    if (qword_1009361D8 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_100947CD0);
    v53 = a2;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v56 = 136315650;
      v112 = &_s57MigrateListsAndSmartListsFromZREMCDOBJECTToZREMCDBASELISTON;
      v113 = v58;
      sub_1000F5104(&unk_100947E60, &qword_1007AAEE8);
      v59 = String.init<A>(describing:)();
      v61 = v60;
      v62 = sub_10000668C(v59, v60, &v113);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v56 + 4) = v62;
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_10000668C(0xD000000000000019, 0x80000001007F9460, &v113);
      *(v56 + 22) = 2114;
      *(v56 + 24) = v53;
      *v57 = v53;
      v70 = v53;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%s|%s] Failed to process smartlist of {listMOIDInZREMCDOBJECT: %{public}@} since its managed object could not be fetched", v56, 0x20u);
      sub_1000050A4(v57, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    return;
  }

  v26 = v25;
  type metadata accessor for REMCDSmartListInZREMCDBASELIST();
  v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v28 = v23;
  isUniquelyReferenced_nonNull_native = [v27 initWithContext:v111];
  sub_100471254(v26);
  v30 = [v26 ckCloudState];
  if (v30)
  {
    v31 = v30;
    [v30 setObject:0];
    [v31 setSavedAttachment:0];
    [v31 setSavedReminder:0];
    [v31 setTemplate:0];
    [v31 setList:isUniquelyReferenced_nonNull_native];
  }

  v32 = [v26 parentList];
  if (!v32)
  {
LABEL_29:
    v94 = 0;
    goto LABEL_30;
  }

  v108 = v32;
  v33 = [v32 identifier];
  if (!v33)
  {
    if (qword_1009361D8 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_100006654(v71, qword_100947CD0);
    v72 = v24;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v107 = isUniquelyReferenced_nonNull_native;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v106 = v76;
      *v75 = 136315650;
      v112 = &_s57MigrateListsAndSmartListsFromZREMCDOBJECTToZREMCDBASELISTON;
      v113 = v76;
      sub_1000F5104(&unk_100947E60, &qword_1007AAEE8);
      v77 = String.init<A>(describing:)();
      v79 = v78;
      v80 = sub_10000668C(v77, v78, &v113);
      v79, v81, v82, v83, v84, v85, v86, v87;
      *(v75 + 4) = v80;
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_10000668C(0xD000000000000019, 0x80000001007F9460, &v113);
      *(v75 + 22) = 2082;
      v88 = [v26 identifier];
      if (v88)
      {
        v89 = v88;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v90 = 0;
      }

      else
      {
        v90 = 1;
      }

      (*(v110 + 56))(v11, v90, 1, v109);
      v95 = Optional.descriptionOrNil.getter();
      v97 = v96;
      sub_1000050A4(v11, &unk_100939D90, "8\n\r");
      v98 = sub_10000668C(v95, v97, &v113);
      v97, v99, v100, v101, v102, v103, v104, v105;
      *(v75 + 24) = v98;
      _os_log_impl(&_mh_execute_header, v73, v74, "[%s|%s] Failed to process parentList because parentList.identifier is nil {smartList.identifier: %{public}s}", v75, 0x20u);
      swift_arrayDestroy();

      v94 = 0;
      isUniquelyReferenced_nonNull_native = v107;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v34 = v33;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v107 = isUniquelyReferenced_nonNull_native;
  v106 = [isUniquelyReferenced_nonNull_native ic_permanentObjectID];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v113 = *a3;
  v35 = v113;
  *a3 = 0x8000000000000000;
  v43 = sub_100363F20(v21);
  v44 = v35[2];
  v45 = (v36 & 1) == 0;
  v46 = v44 + v45;
  if (__OFADD__(v44, v45))
  {
    __break(1u);
LABEL_34:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_27:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*(v110 + 8))(v21, a3);
    v94 = sub_100471B98;
LABEL_30:
    [v111 refreshObject:v26 mergeChanges:0];

    sub_10003E114(v94, 0);
    return;
  }

  v47 = v36;
  if (v35[3] >= v46)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1003769E8();
      v35 = v113;
    }

LABEL_24:
    isUniquelyReferenced_nonNull_native = v107;
    v91 = *a3;
    *a3 = v35;
    v91, v36, v37, v38, v39, v40, v41, v42;
    v92 = *a3;
    a3 = v109;
    if ((v47 & 1) == 0)
    {
      (*(v110 + 16))(v16, v21, v109);
      sub_1002CB9B0(v43, v16, &_swiftEmptyArrayStorage, v92);
    }

    v93 = (v92[7] + 8 * v43);
    v34 = v106;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v93 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_27;
    }

    goto LABEL_34;
  }

  sub_100370B40(v46, isUniquelyReferenced_nonNull_native);
  v35 = v113;
  v48 = sub_100363F20(v21);
  if ((v47 & 1) == (v36 & 1))
  {
    v43 = v48;
    goto LABEL_24;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10046FAA8(void *a1, void *a2, unint64_t a3, uint64_t *a4)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100471718(a1);
  if (v4)
  {
LABEL_2:
    *a4 = v4;
    return;
  }

  v68 = 0;
  v69 = v14;
  if (v14 && (v15 = [v14 ic_permanentObjectID]) != 0)
  {
    v62 = a4;
    v71 = 0;
    v16 = v15;
    v17 = [a2 existingObjectWithID:v16 error:&v71];
    v18 = v71;
    if (!v17)
    {
      v56 = v71;

      v57 = _convertNSErrorToError(_:)();
      v58 = v57;
      swift_willThrow();
LABEL_28:

      v4 = v58;
      a4 = v62;
      goto LABEL_2;
    }

    v19 = v17;
    type metadata accessor for REMCDListInZREMCDBASELIST();
    v65 = v19;
    v20 = swift_dynamicCastClass();
    v21 = v18;
    v64 = v16;

    v63 = v20;
    if (v20)
    {
      if (a3 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
        if (v22)
        {
LABEL_9:
          v13 = 0;
          v66 = a3 & 0xFFFFFFFFFFFFFF8;
          v67 = a3 & 0xC000000000000001;
          while (1)
          {
            if (v67)
            {
              v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v13 >= *(v66 + 16))
              {
                goto LABEL_30;
              }

              v51 = *(a3 + 8 * v13 + 32);
            }

            v18 = v51;
            v9 = (v13 + 1);
            if (__OFADD__(v13, 1))
            {
              break;
            }

            v71 = 0;
            v52 = [a2 existingObjectWithID:v51 error:&v71];
            v53 = v71;
            if (!v52)
            {
              v59 = v71;
              v60 = _convertNSErrorToError(_:)();

              v58 = v60;
              swift_willThrow();

              v16 = v64;
              goto LABEL_28;
            }

            a1 = v52;
            type metadata accessor for REMCDSmartListInZREMCDBASELIST();
            v54 = swift_dynamicCastClass();
            v55 = v53;
            if (v54)
            {
              v10 = v65;
              [v54 setParentList:v63];
            }

            else
            {
              v10 = v18;
              v18 = a1;
            }

            ++v13;
            if (v9 == v22)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {
        v22 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_9;
        }
      }

LABEL_33:

      goto LABEL_34;
    }

    v18 = v64;
  }

  else
  {
    v18 = 0;
  }

  if (qword_1009361D8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100006654(v23, qword_100947CD0);
  (*(v10 + 2))(v13, a1, v9);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v24, v25))
  {

    (*(v10 + 1))(v13, v9);
    return;
  }

  v26 = swift_slowAlloc();
  v64 = v18;
  v27 = v26;
  v28 = swift_slowAlloc();
  *v27 = 136315650;
  v70 = &_s57MigrateListsAndSmartListsFromZREMCDOBJECTToZREMCDBASELISTON;
  v71 = v28;
  sub_1000F5104(&unk_100947E60, &qword_1007AAEE8);
  v29 = String.init<A>(describing:)();
  v31 = v30;
  v32 = sub_10000668C(v29, v30, &v71);
  v31, v33, v34, v35, v36, v37, v38, v39;
  *(v27 + 4) = v32;
  *(v27 + 12) = 2080;
  *(v27 + 14) = sub_10000668C(0xD000000000000019, 0x80000001007F9460, &v71);
  *(v27 + 22) = 2082;
  sub_1001B397C();
  v40 = dispatch thunk of CustomStringConvertible.description.getter();
  v42 = v41;
  (*(v10 + 1))(v13, v9);
  v43 = sub_10000668C(v40, v42, &v71);
  v42, v44, v45, v46, v47, v48, v49, v50;
  *(v27 + 24) = v43;
  _os_log_impl(&_mh_execute_header, v24, v25, "[%s|%s] Failed to process children smartlists of {parentListIdentifier: %{public}s} since its managed object could not be fetched", v27, 0x20u);
  swift_arrayDestroy();

LABEL_34:
}

void sub_10047002C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  *&v7 = __chkstk_darwin(v4, v6).n128_u64[0];
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 setCkDirtyFlags:{objc_msgSend(a1, "ckDirtyFlags", v7)}];
  v10 = [a1 ckIdentifier];
  [v2 setCkIdentifier:v10];

  [v2 setCkNeedsInitialFetchFromCloud:{objc_msgSend(a1, "ckNeedsInitialFetchFromCloud")}];
  [v2 setCkNeedsToBeFetchedFromCloud:{objc_msgSend(a1, "ckNeedsToBeFetchedFromCloud")}];
  v11 = [a1 ckServerRecordData];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v13, v15);
  }

  else
  {
    v16.super.isa = 0;
  }

  [v2 setCkServerRecordData:v16.super.isa];

  v17 = [a1 ckServerShareData];
  if (v17)
  {
    v18 = v17;
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v19, v21);
  }

  else
  {
    v22.super.isa = 0;
  }

  [v2 setCkServerShareData:v22.super.isa];

  v23 = [a1 ckZoneOwnerName];
  [v2 setCkZoneOwnerName:v23];

  v24 = [a1 daPushKey];
  [v2 setDaPushKey:v24];

  v25 = [a1 daSyncToken];
  [v2 setDaSyncToken:v25];

  [v2 setEffectiveMinimumSupportedAppVersion:{objc_msgSend(a1, "effectiveMinimumSupportedAppVersion")}];
  v26 = [a1 externalIdentifier];
  [v2 setExternalIdentifier:v26];

  v27 = [a1 externalModificationTag];
  [v2 setExternalModificationTag:v27];

  v28 = [a1 identifier];
  if (v28)
  {
    v29 = v28;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v30.super.isa = 0;
  }

  [v2 setIdentifier:v30.super.isa];

  [v2 setMarkedForDeletion:{objc_msgSend(a1, "markedForDeletion")}];
  [v2 setMinimumSupportedAppVersion:{objc_msgSend(a1, "minimumSupportedAppVersion")}];
  v31 = [a1 resolutionTokenMap];
  [v2 setResolutionTokenMap:v31];

  v32 = [a1 resolutionTokenMap_v2_JSON];
  [v2 setResolutionTokenMap_v2_JSON:v32];

  v33 = [a1 resolutionTokenMap_v3_JSONData];
  if (v33)
  {
    v34 = v33;
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v35, v37);
  }

  else
  {
    v38.super.isa = 0;
  }

  [v2 setResolutionTokenMap_v3_JSONData:v38.super.isa];

  v39 = [a1 account];
  [v2 setAccount:v39];
}

void sub_100470578(void *a1)
{
  v2 = v1;
  v42 = type metadata accessor for Date();
  v4 = *(v42 - 8);
  __chkstk_darwin(v42, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  *&v11 = __chkstk_darwin(v8, v10).n128_u64[0];
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 badgeEmblem];
  [v2 setBadgeEmblem:v14];

  v15 = [a1 color];
  [v2 setColor:v15];

  v16 = [a1 membershipsOfRemindersInSectionsAsData];
  if (v16)
  {
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v18, v20);
  }

  else
  {
    v21.super.isa = 0;
  }

  [v2 setMembershipsOfRemindersInSectionsAsData:v21.super.isa];

  v22 = [a1 membershipsOfRemindersInSectionsChecksum];
  [v2 setMembershipsOfRemindersInSectionsChecksum:v22];

  v23 = [a1 mostRecentTargetTemplateIdentifier];
  if (v23)
  {
    v24 = v23;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v13, v8);
  }

  else
  {
    v25.super.isa = 0;
  }

  [v2 setMostRecentTargetTemplateIdentifier:v25.super.isa];

  v26 = [a1 name];
  [v2 setName:v26];

  v27 = [a1 pinnedDate];
  if (v27)
  {
    v28 = v27;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v7, v42);
  }

  else
  {
    v29.super.isa = 0;
  }

  [v2 setPinnedDate:v29.super.isa];

  v30 = [a1 sectionIDsOrderingAsData];
  if (v30)
  {
    v31 = v30;
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v32, v34);
  }

  else
  {
    v35.super.isa = 0;
  }

  [v2 setSectionIDsOrderingAsData:v35.super.isa];

  [v2 setShowingLargeAttachments:{objc_msgSend(a1, "showingLargeAttachments")}];
  v36 = [a1 sortingStyle];
  [v2 setSortingStyle:v36];

  type metadata accessor for REMCDListInZREMCDOBJECT();
  v37 = swift_dynamicCastClass();
  if (v37)
  {
    v38 = v37;
    v39 = a1;
    [v2 setSpotlightIndexCount:{objc_msgSend(v38, "spotlightIndexCount")}];
  }

  v40 = [a1 parentAccount];
  [v2 setParentAccount:v40];
}

void sub_100470AC8(void *a1)
{
  v2 = v1;
  v54 = type metadata accessor for UUID();
  v4 = *(v54 - 8);
  __chkstk_darwin(v54, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047002C(a1);
  sub_100470578(a1);
  v13 = [a1 daBulkRequests];
  if (v13)
  {
    v14 = v13;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v15, v17);
  }

  else
  {
    v18.super.isa = 0;
  }

  [v2 setDaBulkRequests:v18.super.isa];

  [v2 setDaDisplayOrder:{objc_msgSend(a1, "daDisplayOrder")}];
  v19 = [a1 daExternalIdentificationTag];
  [v2 setDaExternalIdentificationTag:v19];

  [v2 setDaIsEventOnlyContainer:{objc_msgSend(a1, "daIsEventOnlyContainer")}];
  [v2 setDaIsImmutable:{objc_msgSend(a1, "daIsImmutable")}];
  [v2 setDaIsNotificationsCollection:{objc_msgSend(a1, "daIsNotificationsCollection")}];
  [v2 setDaIsReadOnly:{objc_msgSend(a1, "daIsReadOnly")}];
  v20 = [a1 groceryLocalCorrectionsAsData];
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v22, v24);
  }

  else
  {
    v25.super.isa = 0;
  }

  [v2 setGroceryLocalCorrectionsAsData:v25.super.isa];

  v26 = [a1 groceryLocalCorrectionsChecksum];
  [v2 setGroceryLocalCorrectionsChecksum:v26];

  v27 = [a1 groceryLocaleID];
  [v2 setGroceryLocaleID:v27];

  [v2 setIsGroup:{objc_msgSend(a1, "isGroup")}];
  [v2 setIsPinnedByCurrentUser:{objc_msgSend(a1, "isPinnedByCurrentUser")}];
  v28 = [a1 lastUserAccessDate];
  if (v28)
  {
    v29 = v28;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v30.super.isa = 0;
  }

  [v2 setLastUserAccessDate:v30.super.isa];

  v31 = [a1 mostRecentTargetTemplateIdentifierByCurrentUser];
  if (v31)
  {
    v32 = v31;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v33.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v7, v54);
  }

  else
  {
    v33.super.isa = 0;
  }

  [v2 setMostRecentTargetTemplateIdentifierByCurrentUser:v33.super.isa];

  v34 = [a1 reminderIDsMergeableOrdering];
  if (v34)
  {
    v35 = v34;
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v36, v38);
  }

  else
  {
    v39.super.isa = 0;
  }

  [v2 setReminderIDsMergeableOrdering:v39.super.isa];

  v40 = [a1 reminderIDsMergeableOrdering_v2_JSON];
  if (v40)
  {
    v41 = v40;
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v42, v44);
  }

  else
  {
    v45.super.isa = 0;
  }

  [v2 setReminderIDsMergeableOrdering_v2_JSON:v45.super.isa];

  v46 = [a1 sharedOwnerAddress];
  [v2 setSharedOwnerAddress:v46];

  v47 = [a1 sharedOwnerName];
  [v2 setSharedOwnerName:v47];

  [v2 setSharingStatus:{objc_msgSend(a1, "sharingStatus")}];
  [v2 setShouldCategorizeGroceryItems:{objc_msgSend(a1, "shouldCategorizeGroceryItems")}];
  [v2 setShouldSuggestConversionToGroceryList:{objc_msgSend(a1, "shouldSuggestConversionToGroceryList")}];
  v48 = [a1 calDAVNotifications];
  [v2 setCalDAVNotifications:v48];

  v49 = [a1 reminders];
  [v2 setReminders:v49];

  v50 = [a1 sections];
  [v2 setSections:v50];

  v51 = [a1 sharedOwner];
  [v2 setSharedOwner:v51];

  v52 = [a1 sharees];
  [v2 setSharees:v52];
}

void sub_100471254(void *a1)
{
  sub_10047002C(a1);
  sub_100470578(a1);
  v3 = [a1 filterData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v5, v7);
  }

  else
  {
    v8.super.isa = 0;
  }

  [v1 setFilterData:v8.super.isa];

  v9 = [a1 smartListType];
  [v1 setSmartListType:v9];

  v10 = [a1 sections];
  [v1 setSections:v10];
}

id REMCDAccountV2023MinorEMigratingToZREMCDBASELIST.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDAccountV2023MinorEMigratingToZREMCDBASELIST();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id sub_100471640(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a6(a5, a2);
  return objc_msgSendSuper2(&v9, "initWithEntity:insertIntoManagedObjectContext:", a3, a4);
}

id sub_1004716BC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100471718(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithEntityName:v5];

  [v6 setResultType:0];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791340;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 32) = 0x696669746E656469;
  *(v7 + 40) = 0xEA00000000007265;
  v8 = type metadata accessor for UUID();
  *(v7 + 88) = v8;
  v9 = sub_1000103CC((v7 + 64));
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  v10 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7, v12, v13, v14, v15, v16, v17, v18;
  v19 = [objc_opt_self() predicateWithFormat:v10 argumentArray:isa];

  [v6 setPredicate:v19];
  [v6 setFetchLimit:1];
  type metadata accessor for REMCDListInZREMCDBASELIST();
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    return v2;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:
    result, v21, v22, v23, v24, v25, v26, v27;

    return 0;
  }

  v37 = result;
  v38 = _CocoaArrayWrapper.endIndex.getter();
  result = v37;
  if (!v38)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v28 = result;
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = result;
    v29 = *(result + 32);
LABEL_8:
    v2 = v29;
    v28, v30, v31, v32, v33, v34, v35, v36;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004719AC(uint64_t a1, uint64_t (*a2)(void), void *a3, uint64_t a4, uint64_t a5)
{
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  a2(0);
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setPredicate:0];
  [v7 setResultType:1];
  if (*a3 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v7 setSortDescriptors:isa];

  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  v10 = NSManagedObjectContext.fetch<A>(_:)();

  return v10;
}

uint64_t sub_100471B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100947E50, &unk_1007AF320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100471B9C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947E70);
  v1 = sub_100006654(v0, qword_100947E70);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall REMCDHashtagLabel.willSave_Swift()()
{
  if (([v0 didCleanUpManualSortHintOnDeletion] & 1) == 0)
  {
    [v0 setDidCleanUpManualSortHintOnDeletion:1];

    sub_100471CB8();
  }
}

void sub_100471CB8()
{
  v1 = v0;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v237 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v237 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  *&v14 = __chkstk_darwin(v11, v13).n128_u64[0];
  v16 = &v237 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v1 canonicalName];
  if (!v17)
  {
    if (qword_1009361E0 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_100006654(v77, qword_100947E70);
    v242 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v242, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v242, v78, "cleanUpManualSortHintIfNeeded: Deleted hashtag label has nil canonicalName, abort cleanup", v79, 2u);
    }

    v80 = &v247;
    goto LABEL_26;
  }

  v18 = v17;
  v242 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if ([v1 isDeleted])
  {
    if (![v1 wasDeletedDueToUserInitiatedChanges])
    {
      if (qword_1009361E0 != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      sub_100006654(v81, qword_100947E70);

      v241 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      v20, v83, v84, v85, v86, v87, v88, v89;
      v90 = os_log_type_enabled(v241, v82);
      v91 = v242;
      if (v90)
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v245[0] = v93;
        *v92 = 136315138;
        v94 = sub_10000668C(v91, v20, v245);
        v20, v95, v96, v97, v98, v99, v100, v101;
        *(v92 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v241, v82, "cleanUpManualSortHintIfNeeded: Hashtag label was deleted due to non-user-initiated changes, cleanup is not needed {canonicalName: %s}", v92, 0xCu);
        sub_10000607C(v93);

        return;
      }

LABEL_25:
      v20, v30, v31, v32, v33, v34, v35, v36;
      v80 = &v246;
LABEL_26:
      v102 = *(v80 - 32);

      return;
    }

    v28 = [v1 managedObjectContext];
    if (v28)
    {
      v241 = v28;
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v37 = v29;
        v38 = [v1 accountIdentifier];
        if (!v38)
        {
LABEL_9:
          if (qword_1009361E0 != -1)
          {
            swift_once();
          }

          v50 = type metadata accessor for Logger();
          sub_100006654(v50, qword_100947E70);

          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.error.getter();
          v20, v53, v54, v55, v56, v57, v58, v59;
          if (os_log_type_enabled(v51, v52))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v245[0] = v68;
            *v67 = 136315138;
            v69 = sub_10000668C(v242, v20, v245);
            v20, v70, v71, v72, v73, v74, v75, v76;
            *(v67 + 4) = v69;
            _os_log_impl(&_mh_execute_header, v51, v52, "cleanUpManualSortHintIfNeeded: No accountIdentifier when the hashtag label is deleted {canonicalName: %s}", v67, 0xCu);
            sub_10000607C(v68);
          }

          else
          {
            v20, v60, v61, v62, v63, v64, v65, v66;
          }

          return;
        }

        v39 = v38;
        v240 = v37;
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;
        v239 = v40;
        UUID.init(uuidString:)();
        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {
          v42, v43, v44, v45, v46, v47, v48, v49;

          sub_1000050A4(v10, &unk_100939D90, "8\n\r");
          goto LABEL_9;
        }

        v238 = v42;
        (*(v12 + 32))(v16, v10, v11);
        v103 = [objc_opt_self() cloudKitAccountWithCKIdentifier:v39 context:v240];

        if (v103)
        {
          v237 = v103;
          sub_10059EB10(&v243);
          if (v244)
          {
            v238, v104, v105, v106, v107, v108, v109, v110;
            sub_100054B6C(&v243, v245);
            if (qword_1009361E0 != -1)
            {
              swift_once();
            }

            v111 = type metadata accessor for Logger();
            v112 = sub_100006654(v111, qword_100947E70);

            v238 = v112;
            v113 = Logger.logObject.getter();
            v114 = static os_log_type_t.default.getter();
            v20, v115, v116, v117, v118, v119, v120, v121;
            if (os_log_type_enabled(v113, v114))
            {
              v122 = swift_slowAlloc();
              LODWORD(v239) = v114;
              v123 = v122;
              v124 = swift_slowAlloc();
              *&v243 = v124;
              *v123 = 136315138;
              *(v123 + 4) = sub_10000668C(v242, v20, &v243);
              _os_log_impl(&_mh_execute_header, v113, v239, "cleanUpManualSortHintIfNeeded: Hashtag label was deleted due to user-initiated changes, will delete all associated sort hints for the label {canonicalName: %s}", v123, 0xCu);
              sub_10000607C(v124);
            }

            sub_1000F5104(&unk_100936FD0, &unk_100795D40);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_100791300;
            *(inited + 32) = v242;
            *(inited + 40) = v20;

            v126 = sub_1001A5660(inited);
            swift_setDeallocating();
            sub_100034610(inited + 32);
            static REMHashtagLabelSpecifier.labels(_:)();
            v126, v127, v128, v129, v130, v131, v132, v133;
            v239 = sub_1002D7E80(v6, v245);
            v135 = v134;
            (*(v3 + 8))(v6, v2);
            v136 = objc_opt_self();
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v138 = [v136 objectIDWithUUID:isa];

            v139 = v138;
            sub_10013A994(0x4000000000000003uLL, v239, v135, v138);
            v20, v216, v217, v218, v219, v220, v221, v222;

            v135, v223, v224, v225, v226, v227, v228, v229;
            sub_10000607C(v245);
            goto LABEL_49;
          }

          sub_1000050A4(&v243, &qword_100947E90, &qword_10079B250);
          if (qword_1009361E0 != -1)
          {
            swift_once();
          }

          v175 = type metadata accessor for Logger();
          sub_100006654(v175, qword_100947E70);

          v141 = v238;

          v176 = Logger.logObject.getter();
          v177 = static os_log_type_t.error.getter();
          v141, v178, v179, v180, v181, v182, v183, v184;
          v20, v185, v186, v187, v188, v189, v190, v191;
          if (os_log_type_enabled(v176, v177))
          {
            v192 = swift_slowAlloc();
            v245[0] = swift_slowAlloc();
            *v192 = 136315394;
            v193 = sub_10000668C(v242, v20, v245);
            v20, v194, v195, v196, v197, v198, v199, v200;
            *(v192 + 4) = v193;
            *(v192 + 12) = 2082;
            v201 = sub_10000668C(v239, v141, v245);
            v141, v202, v203, v204, v205, v206, v207, v208;
            *(v192 + 14) = v201;
            _os_log_impl(&_mh_execute_header, v176, v177, "cleanUpManualSortHintIfNeeded: Could not obtain manualSortIDHashKeyProvider in the CK account when the hashtag label is deleted {canonicalName: %s, accountIdentifier: %{public}s}", v192, 0x16u);
            swift_arrayDestroy();

            goto LABEL_49;
          }
        }

        else
        {
          if (qword_1009361E0 != -1)
          {
            swift_once();
          }

          v140 = type metadata accessor for Logger();
          sub_100006654(v140, qword_100947E70);

          v141 = v238;

          v142 = Logger.logObject.getter();
          v143 = static os_log_type_t.error.getter();
          v141, v144, v145, v146, v147, v148, v149, v150;
          v20, v151, v152, v153, v154, v155, v156, v157;
          if (os_log_type_enabled(v142, v143))
          {
            v158 = swift_slowAlloc();
            v245[0] = swift_slowAlloc();
            *v158 = 136315394;
            v159 = sub_10000668C(v242, v20, v245);
            v20, v160, v161, v162, v163, v164, v165, v166;
            *(v158 + 4) = v159;
            *(v158 + 12) = 2082;
            v167 = sub_10000668C(v239, v141, v245);
            v141, v168, v169, v170, v171, v172, v173, v174;
            *(v158 + 14) = v167;
            _os_log_impl(&_mh_execute_header, v142, v143, "cleanUpManualSortHintIfNeeded: Fail to fetch CK account when the hashtag label is deleted {canonicalName: %s, accountIdentifier: %{public}s}", v158, 0x16u);
            swift_arrayDestroy();

LABEL_49:
            (*(v12 + 8))(v16, v11);
            return;
          }
        }

        v141, v209, v210, v211, v212, v213, v214, v215;
        v20, v230, v231, v232, v233, v234, v235, v236;
        goto LABEL_49;
      }

      goto LABEL_25;
    }
  }

  v20, v21, v22, v23, v24, v25, v26, v27;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> REMCDHashtagLabel.validateForInsert_Swift()()
{
  if (([v0 didEnqueueApprovalCascade] & 1) == 0)
  {
    [v0 setDidEnqueueApprovalCascade:1];
    sub_100472C1C();
  }
}

void sub_100472C1C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for UUID();
  v144 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &isa - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v9 = &isa - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &isa - v12;
  __chkstk_darwin(v14, v15);
  v17 = &isa - v16;
  v18 = type metadata accessor for Date();
  v143 = *(v18 - 8);
  *&v20 = __chkstk_darwin(v18, v19).n128_u64[0];
  v22 = &isa - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [v0 canonicalName];
  if (!v23)
  {
    v64 = v2;
    if (qword_1009361E0 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_100006654(v65, qword_100947E70);
    v66 = v0;
    v143 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    v68 = os_log_type_enabled(v143, v67);
    v69 = v144;
    if (v68)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v145 = v71;
      *v70 = 136446210;
      v72 = [v66 uuidForChangeTracking];
      if (v72)
      {
        v73 = v72;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (v69[7].isa)(v9, 0, 1, v64);
      }

      else
      {
        (v69[7].isa)(v9, 1, 1, v64);
      }

      sub_100100FB4(v9, v13);
      if ((v69[6].isa)(v13, 1, v64))
      {
        sub_1000050A4(v13, &unk_100939D90, "8\n\r");
        v128 = 0xE90000000000003ELL;
        v129 = 0x64697575206F6E3CLL;
      }

      else
      {
        (v69[2].isa)(v5, v13, v64);
        sub_1000050A4(v13, &unk_100939D90, "8\n\r");
        v130 = UUID.uuidString.getter();
        v128 = v131;
        (v69[1].isa)(v5, v64);
        v129 = v130;
      }

      v132 = sub_10000668C(v129, v128, &v145);
      v128, v133, v134, v135, v136, v137, v138, v139;
      *(v70 + 4) = v132;
      _os_log_impl(&_mh_execute_header, v143, v67, "enqueueApprovalCascade: Failed to cascade HashtagLabel approval due to nil canonicalName {uuidForChangeTracking: %{public}s}", v70, 0xCu);
      sub_10000607C(v71);

      v100 = v143;
      goto LABEL_29;
    }

    v100 = v143;
    goto LABEL_27;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  v28 = [v0 managedObjectContext];
  if (!v28)
  {

    if (qword_1009361E0 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_100006654(v74, qword_100947E70);

    v144 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    v27, v76, v77, v78, v79, v80, v81, v82;
    if (os_log_type_enabled(v144, v75))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v145 = v91;
      *v90 = 136315138;
      v92 = sub_10000668C(v25, v27, &v145);
      v27, v93, v94, v95, v96, v97, v98, v99;
      *(v90 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v144, v75, "enqueueApprovalCascade: Failed to acquire handle to managedObjectContext {canonicalName: %s}", v90, 0xCu);
      sub_10000607C(v91);

      v100 = v144;
LABEL_29:

      return;
    }

    v27, v83, v84, v85, v86, v87, v88, v89;
    v100 = v144;
LABEL_27:

    goto LABEL_29;
  }

  v142 = v28;
  v29 = [v0 accountIdentifier];
  if (!v29)
  {

    if (qword_1009361E0 != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    sub_100006654(v101, qword_100947E70);

    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    v27, v104, v105, v106, v107, v108, v109, v110;
    if (os_log_type_enabled(v102, v103))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v145 = v119;
      *v118 = 136315138;
      v120 = sub_10000668C(v25, v27, &v145);
      v27, v121, v122, v123, v124, v125, v126, v127;
      *(v118 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v102, v103, "enqueueApprovalCascade: Failed to acquire handle to account identifier for HashtagLabel {canonicalName: %s}", v118, 0xCu);
      sub_10000607C(v119);

      v100 = v142;
      goto LABEL_29;
    }

    v27, v111, v112, v113, v114, v115, v116, v117;

    v100 = v142;
    goto LABEL_27;
  }

  v141 = v29;
  v27, v30, v31, v32, v33, v34, v35, v36;
  Date.init()();
  v37 = [swift_getObjCClassFromMetadata() cdEntityName];
  if (!v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v2;
    v40 = v39;
    v37 = String._bridgeToObjectiveC()();
    v41 = v40;
    v2 = v38;
    v41, v42, v43, v44, v45, v46, v47, v48;
  }

  v49 = v144;
  (v144[7].isa)(v17, 1, 1, v2);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v50 = String._bridgeToObjectiveC()();
  v51 = 0;
  if ((v49[6].isa)(v17, 1, v2) != 1)
  {
    v51 = UUID._bridgeToObjectiveC()().super.isa;
    (v49[1].isa)(v17, v2);
  }

  v52 = objc_allocWithZone(REMSharedEntitySyncActivity);
  v54 = isa;
  v53 = v141;
  v55 = [v52 initWithAccountIdentifier:v141 activityDate:isa activityType:4 authorUserRecordIDString:v50 ckParentCloudObjectEntityName:0 ckParentCloudObjectIdentifier:0 ckIdentifier:v24 sharedEntityName:v37 uuidForChangeTracking:v51];

  (v143[1].isa)(v22, v18);
  v56 = [v1 objectID];
  v57 = [v56 persistentStore];

  type metadata accessor for REMCKSharedEntitySyncActivity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = [ObjCClassFromMetadata entity];
  v60 = objc_allocWithZone(ObjCClassFromMetadata);
  v61 = [v60 initWithEntity:v59 insertIntoManagedObjectContext:v142];
  if (v57)
  {
    v62 = v57;
    v63 = v61;
    [v142 assignObject:v63 toPersistentStore:v62];
  }

  sub_1002A0038(v55);
}

uint64_t sub_1004735D8(void *a1, void *a2, void *a3, char a4)
{
  v263 = a1;
  v7 = type metadata accessor for UUID();
  v264 = *(v7 - 8);
  v265 = v7;
  __chkstk_darwin(v7, v8);
  v260 = v254 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v261 = (v254 - v12);
  __chkstk_darwin(v13, v14);
  v16 = v254 - v15;
  __chkstk_darwin(v17, v18);
  v259 = v254 - v19;
  __chkstk_darwin(v20, v21);
  v262 = v254 - v22;
  v269 = type metadata accessor for URL();
  v273 = *(v269 - 8);
  __chkstk_darwin(v269, v23);
  v25 = v254 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v267 = v254 - v28;
  __chkstk_darwin(v29, v30);
  v32 = v254 - v31;
  __chkstk_darwin(v33, v34);
  v266 = v254 - v35;
  __chkstk_darwin(v36, v37);
  v39 = v254 - v38;
  v40 = type metadata accessor for RDSavedAttachment.URLMetadata(0);
  *&v42 = __chkstk_darwin(v40, v41).n128_u64[0];
  v44 = v254 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    v66 = [a3 url];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = [a3 metadata];
    if (v67)
    {
      v68 = v67;
      v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;
    }

    else
    {
      v69 = 0;
      v71 = 0xF000000000000000;
    }

    (*(v273 + 32))(v44, v39, v269);
    v88 = &v44[*(v40 + 20)];
    *v88 = v69;
    v88[1] = v71;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_100476AF8(&qword_100947EC0, type metadata accessor for RDSavedAttachment.URLMetadata, &unk_1007AAFE4);
    v89 = v268;
    v90 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v89)
    {
      sub_100476444(v44);
    }

    v93 = v90;
    v94 = v91;

    v95 = String._bridgeToObjectiveC()();
    v96 = v263;
    [v263 setAttachmentTypeRawValue:v95];

    v97 = [a3 objectID];
    v98 = [v97 uuid];

    v99 = v262;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v264 + 8))(v99, v265);
    [v96 setIdentifier:isa];

    v101 = Data._bridgeToObjectiveC()().super.isa;
    [v96 setMetadata:v101];

    v102 = [a3 uti];
    if (!v102)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;
      v102 = String._bridgeToObjectiveC()();
      v104, v105, v106, v107, v108, v109, v110, v111;
    }

    [v96 setUti:v102];
    sub_10001BBA0(v93, v94);

    return sub_100476444(v44);
  }

  if (a4 == 1)
  {
    v45 = [a3 fileURL];
    if (v45)
    {
      v46 = v45;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = v266;
      (*(v273 + 32))(v266, v32, v269);
      v48 = a2[3];
      v49 = a2[4];
      sub_10000F61C(a2, v48);
      v50 = (*(v49 + 24))(v47, v48, v49);
      if (!v51)
      {
        v50 = static REMFileDigester.sha512Sum(url:)();
        if (!v51)
        {
          v172 = objc_opt_self();
          v173 = String._bridgeToObjectiveC()();
          [v172 internalErrorWithDebugDescription:v173];

          swift_willThrow();
          return (*(v273 + 8))(v47, v269);
        }
      }

      v52 = v50;
      v53 = v51;
      v54 = [a3 fileSize];
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v270 = v54;
      sub_100476540();
      v55 = v268;
      v56 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (v55)
      {
        (*(v273 + 8))(v47, v269);
        v65 = v53;
LABEL_15:
        v65, v58, v59, v60, v61, v62, v63, v64;
      }

      v257 = v56;
      v260 = v57;

      v267 = URL.lastPathComponent.getter();
      v261 = v115;
      v256 = v52;
      v116 = a2[3];
      v117 = a2[4];
      v255 = sub_10000F61C(a2, v116);
      v118 = [a3 objectID];
      v119 = [v118 uuid];
      v268 = 0;
      v120 = v119;

      v121 = v259;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v258 = a3;
      v122 = [a3 accountID];
      v123 = [v122 uuid];

      v124 = v261;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v125 = *(v117 + 16);
      v252 = v117;
      v75 = v266;
      v126 = v268;
      v125(v121, v16, v267, v124, v256, v53, v266, 1, v116, v252);
      if (v126)
      {
        v124, v127, v128, v129, v130, v131, v132, v133;
        sub_10001BBA0(v257, v260);
        v53, v134, v135, v136, v137, v138, v139, v140;
        v141 = v265;
        v142 = *(v264 + 8);
        v142(v16, v265);
        v143 = v121;
LABEL_29:
        v142(v143, v141);
        return (*(v273 + 8))(v75, v269);
      }

      v268 = 0;
      v176 = v265;
      v177 = *(v264 + 8);
      v177(v16, v265);
      v177(v121, v176);
      v178 = String._bridgeToObjectiveC()();
      v179 = v263;
      [v263 setAttachmentTypeRawValue:v178];

      v180 = [v258 objectID];
      v181 = [v180 uuid];

      v182 = v262;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v183 = UUID._bridgeToObjectiveC()().super.isa;
      v177(v182, v176);
      [v179 setIdentifier:v183];

      v184 = v257;
      v185 = v260;
      v186 = Data._bridgeToObjectiveC()().super.isa;
      [v179 setMetadata:v186];

      v187 = v261;
      v188 = String._bridgeToObjectiveC()();
      v187, v189, v190, v191, v192, v193, v194, v195;
      [v179 setFileName:v188];

      v196 = String._bridgeToObjectiveC()();
      v53, v197, v198, v199, v200, v201, v202, v203;
      [v179 setSha512Sum:v196];

      v204 = [v258 uti];
      if (!v204)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v206 = v205;
        v204 = String._bridgeToObjectiveC()();
        v206, v207, v208, v209, v210, v211, v212, v213;
      }

      [v179 setUti:v204];
      sub_10001BBA0(v184, v185);

      return (*(v273 + 8))(v266, v269);
    }

LABEL_24:
    v112 = objc_opt_self();
    sub_1004764A0();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v114 = String._bridgeToObjectiveC()();
    [v112 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v114];

    return swift_willThrow();
  }

  v72 = a3;
  v73 = [a3 fileURL];
  if (!v73)
  {
    goto LABEL_24;
  }

  v74 = v73;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v75 = v267;
  (*(v273 + 32))(v267, v25, v269);
  v76 = a2[3];
  v77 = a2[4];
  sub_10000F61C(a2, v76);
  v78 = (*(v77 + 24))(v75, v76, v77);
  if (!v79)
  {
    v78 = static REMFileDigester.sha512Sum(url:)();
    if (!v79)
    {
      v174 = objc_opt_self();
      v175 = String._bridgeToObjectiveC()();
      [v174 internalErrorWithDebugDescription:v175];

      swift_willThrow();
      return (*(v273 + 8))(v75, v269);
    }
  }

  v80 = v78;
  v81 = v79;
  v82 = [v72 fileSize];
  v83 = [v72 width];
  v84 = [v72 height];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v270 = v82;
  v271 = v83;
  v272 = v84;
  sub_1004764EC();
  v85 = v268;
  v86 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v85)
  {
    (*(v273 + 8))(v267, v269);
    v65 = v81;
    goto LABEL_15;
  }

  v257 = v86;
  v259 = v87;

  v266 = URL.lastPathComponent.getter();
  v255 = v144;
  v268 = 0;
  v145 = v80;
  v147 = a2[3];
  v146 = a2[4];
  v256 = sub_10000F61C(a2, v147);
  v148 = [v72 objectID];
  v149 = [v148 uuid];

  v150 = v261;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v258 = v72;
  v151 = [v72 accountID];
  v152 = [v151 uuid];

  v153 = v260;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v154 = *(v146 + 16);
  v253 = v146;
  v155 = v153;
  v156 = v255;
  v75 = v267;
  v254[1] = v145;
  v157 = v268;
  v154(v150, v155, v266, v255, v145, v81, v267, 1, v147, v253);
  if (v157)
  {
    v156, v158, v159, v160, v161, v162, v163, v164;
    sub_10001BBA0(v257, v259);
    v81, v165, v166, v167, v168, v169, v170, v171;
    v141 = v265;
    v142 = *(v264 + 8);
    v142(v155, v265);
    v143 = v150;
    goto LABEL_29;
  }

  v268 = 0;
  v214 = v265;
  v215 = *(v264 + 8);
  v215(v155, v265);
  v215(v150, v214);
  v216 = v156;
  v217 = String._bridgeToObjectiveC()();
  v218 = v263;
  [v263 setAttachmentTypeRawValue:v217];

  v219 = [v258 objectID];
  v220 = [v219 uuid];

  v221 = v262;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v222 = UUID._bridgeToObjectiveC()().super.isa;
  v215(v221, v214);
  [v218 setIdentifier:v222];

  v223 = v257;
  v224 = v259;
  v225 = Data._bridgeToObjectiveC()().super.isa;
  [v218 setMetadata:v225];

  v226 = String._bridgeToObjectiveC()();
  v216, v227, v228, v229, v230, v231, v232, v233;
  [v218 setFileName:v226];

  v234 = String._bridgeToObjectiveC()();
  v81, v235, v236, v237, v238, v239, v240, v241;
  [v218 setSha512Sum:v234];

  v242 = [v258 uti];
  if (!v242)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v244 = v243;
    v242 = String._bridgeToObjectiveC()();
    v244, v245, v246, v247, v248, v249, v250, v251;
  }

  [v218 setUti:v242];
  sub_10001BBA0(v223, v224);

  return (*(v273 + 8))(v267, v269);
}