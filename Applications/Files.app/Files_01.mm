Swift::Int sub_10001D504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v46[1] = a6;
  v48 = a4;
  v49 = a5;
  v52 = a3;
  v8 = type metadata accessor for Logger();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = __chkstk_darwin(v8);
  v47 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v46 - v11;
  v13 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v13 - 8);
  v15 = v46 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v46 - v21;
  sub_100034850(a1, v15, &qword_100093F50, &qword_100074090);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100005A04(v15, &qword_100093F50, &qword_100074090);
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    if (!a2)
    {
      v31 = [objc_opt_self() defaultManager];
      v33 = v47;
      URL.appendingPathComponent(_:)();

      URL._bridgeToObjectiveC()(v34);
      v36 = v35;
      v37 = *(v17 + 8);
      v37(v20, v16);
      v53 = 0;
      v38 = [v31 removeItemAtURL:v36 error:&v53];

      if (v38)
      {
        v39 = v53;
      }

      else
      {
        v40 = v53;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        static Logger.Tests.getter();
        v41 = v49;

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v53 = v45;
          *v44 = 136315138;
          *(v44 + 4) = sub_100005D28(v48, v41, &v53);
          _os_log_impl(&_mh_execute_header, v42, v43, "Failed teardown, QuickLook test files probably left in local files %s", v44, 0xCu);
          sub_100034948(v45);

          (*(v50 + 8))(v47, v51);
        }

        else
        {

          (*(v50 + 8))(v33, v51);
        }
      }

      v37(v22, v16);
      return OS_dispatch_semaphore.signal()();
    }

    (*(v17 + 8))(v22, v16);
  }

  v23 = v49;
  static Logger.Tests.getter();

  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v53 = v28;
    *v26 = 136315394;
    *(v26 + 4) = sub_100005D28(v48, v23, &v53);
    *(v26 + 12) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = v29;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    *(v26 + 14) = v29;
    *v27 = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed teardown, couldn't fech URL for %s, error: %@", v26, 0x16u);
    sub_100005A04(v27, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v28);
  }

  (*(v50 + 8))(v12, v51);
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10001DC5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, char a7)
{
  v36 = a5;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *(v15 + 64) = a6;
  *(v15 + 72) = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = v7;
  *(v18 + 48) = a7;
  *(v18 + 56) = sub_1000346DC;
  *(v18 + 64) = v15;
  v39 = sub_1000355D0;
  v40 = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C544;
  v38 = &unk_10008A750;
  v19 = _Block_copy(aBlock);
  v20 = v7;
  swift_bridgeObjectRetain_n();
  v21 = v20;

  v22 = a4;
  v23 = v36;

  v24 = [v17 beginMonitoringProviderDomainChangesWithHandler:v19];
  _Block_release(v19);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_10000AE08(aBlock, v16 + 16);
  sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
  v25 = v38;
  sub_100005A04(aBlock, &qword_100093498, &qword_100074430);
  if (v25)
  {
    result = sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
    v27 = v38;
    if (!v38)
    {
      __break(1u);
      return result;
    }

    v28 = sub_100006C6C(aBlock, v38);
    v29 = *(v27 - 1);
    __chkstk_darwin(v28);
    v31 = aBlock - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v29 + 16))(v31);
    v32 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v29 + 8))(v31, v27);
    [v17 endMonitoringProviderDomainChanges:{v32, sub_100034948(aBlock)}];
    swift_unknownObjectRelease();
  }

  sub_100002B84(0, &qword_100093790, NSUserDefaults_ptr);
  v33 = static NSUserDefaults.docUserDefaults.getter();
  if (v33)
  {
    v34 = v33;
    v35 = String._bridgeToObjectiveC()();
    [v34 setBool:1 forKey:v35];
  }

  else
  {
  }
}

uint64_t sub_10001E03C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char a8)
{
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a8;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a1;
  *(v17 + 40) = a6;
  *(v17 + 48) = a7;
  *(v17 + 56) = a5;
  *(v17 + 64) = sub_100034778;
  *(v17 + 72) = v15;
  *(v17 + 80) = sub_100034784;
  *(v17 + 88) = v16;
  *(v17 + 96) = a8;
  v18 = swift_allocObject();
  v18[2] = sub_1000355D4;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = a6;
  v19 = a1;
  swift_bridgeObjectRetain_n();
  v20 = v19;
  v21 = a6;
  v22 = v20;
  v23 = v21;
  v24 = a5;

  sub_1000144AC(v24, v23, sub_100035504, v18);
}

void sub_10001E204(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Tests.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100005D28(a1, a2, &v16);
    _os_log_impl(&_mh_execute_header, v10, v11, "Starting test %s", v12, 0xCu);
    sub_100034948(v13);
  }

  (*(v7 + 8))(v9, v6);
  v14 = String._bridgeToObjectiveC()();
  [a3 startedTest:v14];
}

uint64_t sub_10001E3D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, char a7)
{
  v36 = a5;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *(v15 + 64) = a6;
  *(v15 + 72) = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = v7;
  *(v18 + 48) = a7;
  *(v18 + 56) = sub_10003467C;
  *(v18 + 64) = v15;
  v39 = sub_1000355D0;
  v40 = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C544;
  v38 = &unk_10008A5C0;
  v19 = _Block_copy(aBlock);
  v20 = v7;
  swift_bridgeObjectRetain_n();
  v21 = v20;

  v22 = a4;
  v23 = v36;

  v24 = [v17 beginMonitoringProviderDomainChangesWithHandler:v19];
  _Block_release(v19);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_10000AE08(aBlock, v16 + 16);
  sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
  v25 = v38;
  sub_100005A04(aBlock, &qword_100093498, &qword_100074430);
  if (v25)
  {
    result = sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
    v27 = v38;
    if (!v38)
    {
      __break(1u);
      return result;
    }

    v28 = sub_100006C6C(aBlock, v38);
    v29 = *(v27 - 1);
    __chkstk_darwin(v28);
    v31 = aBlock - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v29 + 16))(v31);
    v32 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v29 + 8))(v31, v27);
    [v17 endMonitoringProviderDomainChanges:{v32, sub_100034948(aBlock)}];
    swift_unknownObjectRelease();
  }

  sub_100002B84(0, &qword_100093790, NSUserDefaults_ptr);
  v33 = static NSUserDefaults.docUserDefaults.getter();
  if (v33)
  {
    v34 = v33;
    v35 = String._bridgeToObjectiveC()();
    [v34 setBool:1 forKey:v35];
  }

  else
  {
  }
}

uint64_t sub_10001E7B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a1;
  *(v15 + 40) = a6;
  *(v15 + 48) = a8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a1;
  *(v16 + 40) = a6;
  *(v16 + 48) = a7;
  *(v16 + 56) = a5;
  *(v16 + 64) = nullsub_1;
  *(v16 + 72) = 0;
  *(v16 + 80) = sub_100034694;
  *(v16 + 88) = v15;
  *(v16 + 96) = a8;
  v17 = swift_allocObject();
  v17[2] = sub_1000355D4;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a6;
  v18 = a1;
  v19 = a6;
  v20 = v18;
  v21 = v19;
  swift_bridgeObjectRetain_n();
  v22 = v20;
  v23 = v21;
  v24 = a5;

  sub_1000144AC(v24, v23, sub_100035504, v17);
}

uint64_t sub_10001E958(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v39 = a5;
  v37 = a3;
  v38 = a4;
  v35 = a1;
  v36 = a2;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for DispatchTime();
  v33 = v14;
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v32 - v19;
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v34 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v13 = 1;
  (*(v11 + 104))(v13, enum case for DispatchTimeInterval.seconds(_:), v10);
  + infix(_:_:)();
  (*(v11 + 8))(v13, v10);
  v21 = *(v15 + 8);
  v21(v18, v14);
  v22 = swift_allocObject();
  v23 = v36;
  *(v22 + 16) = v35;
  *(v22 + 24) = v23;
  v25 = v37;
  v24 = v38;
  *(v22 + 32) = v37;
  *(v22 + 40) = v24;
  *(v22 + 48) = v39;
  aBlock[4] = sub_1000346AC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008A688;
  v26 = _Block_copy(aBlock);

  v27 = v25;
  v28 = v24;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  v29 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v34;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v43 + 8))(v6, v29);
  (*(v41 + 8))(v9, v42);
  return (v21)(v20, v33);
}

uint64_t sub_10001EDE8(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Tests.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26 = a4;
    v27 = v18;
    v19 = v5;
    v20 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100005D28(a1, a2, &v27);
    _os_log_impl(&_mh_execute_header, v14, v15, "Starting test %s", v17, 0xCu);
    sub_100034948(v20);
    v5 = v19;
    a4 = v26;

    a3 = v25;
  }

  (*(v11 + 8))(v13, v10);
  v21 = String._bridgeToObjectiveC()();
  [a3 startedTest:v21];

  v22 = a3;
  sub_10005BF68(1, a4, v22, a1, a2, v5);
}

void sub_10001F038(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*&a1[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8])
  {

    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  v17[4] = a6;
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100002DB0;
  v17[3] = a7;
  v15 = _Block_copy(v17);
  v16 = a1;

  [v16 finishedTest:v13 waitForCommit:1 extraResults:0 withTeardownBlock:v15];
  _Block_release(v15);
}

uint64_t sub_10001F1B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, char a7)
{
  v36 = a5;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *(v15 + 64) = a6;
  *(v15 + 72) = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = v7;
  *(v18 + 48) = a7;
  *(v18 + 56) = sub_10003462C;
  *(v18 + 64) = v15;
  v39 = sub_1000355D0;
  v40 = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C544;
  v38 = &unk_10008A480;
  v19 = _Block_copy(aBlock);
  v20 = v7;
  swift_bridgeObjectRetain_n();
  v21 = v20;

  v22 = a4;
  v23 = v36;

  v24 = [v17 beginMonitoringProviderDomainChangesWithHandler:v19];
  _Block_release(v19);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_10000AE08(aBlock, v16 + 16);
  sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
  v25 = v38;
  sub_100005A04(aBlock, &qword_100093498, &qword_100074430);
  if (v25)
  {
    result = sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
    v27 = v38;
    if (!v38)
    {
      __break(1u);
      return result;
    }

    v28 = sub_100006C6C(aBlock, v38);
    v29 = *(v27 - 1);
    __chkstk_darwin(v28);
    v31 = aBlock - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v29 + 16))(v31);
    v32 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v29 + 8))(v31, v27);
    [v17 endMonitoringProviderDomainChanges:{v32, sub_100034948(aBlock)}];
    swift_unknownObjectRelease();
  }

  sub_100002B84(0, &qword_100093790, NSUserDefaults_ptr);
  v33 = static NSUserDefaults.docUserDefaults.getter();
  if (v33)
  {
    v34 = v33;
    v35 = String._bridgeToObjectiveC()();
    [v34 setBool:1 forKey:v35];
  }

  else
  {
  }
}

uint64_t sub_10001F598(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a1;
  *(v15 + 48) = a8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a1;
  *(v16 + 40) = a6;
  *(v16 + 48) = a7;
  *(v16 + 56) = a5;
  *(v16 + 64) = nullsub_1;
  *(v16 + 72) = 0;
  *(v16 + 80) = sub_100034664;
  *(v16 + 88) = v15;
  *(v16 + 96) = a8;
  v17 = swift_allocObject();
  v17[2] = sub_1000355D4;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a6;
  v18 = a1;
  v19 = a6;
  v20 = v18;
  v21 = v19;
  swift_bridgeObjectRetain_n();
  v22 = v21;
  v23 = v20;
  v24 = a5;

  sub_1000144AC(v24, v22, sub_100035504, v17);
}

void sub_10001F734(char *a1, uint64_t a2, unint64_t a3, void *a4, char a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v67 - v16;
  __chkstk_darwin(v15);
  v19 = &v67 - v18;
  v20 = *&a1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
  if (!v20)
  {
    static Logger.Tests.getter();

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock[0] = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_100005D28(a2, a3, aBlock);
      _os_log_impl(&_mh_execute_header, v59, v60, "Failed to launch QuickLook for test %s", v61, 0xCu);
      sub_100034948(v62);
    }

    (*(v11 + 8))(v14, v10);
    v52 = String._bridgeToObjectiveC()();
    [a4 failedTest:v52];
    goto LABEL_15;
  }

  v67 = a4;
  v68 = v10;
  v21 = a2;
  v22 = v20;
  v23 = [a1 view];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 window];

    if (!v25)
    {
      static Logger.Tests.getter();

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock[0] = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_100005D28(v21, a3, aBlock);
        _os_log_impl(&_mh_execute_header, v63, v64, "Failed to find QuickLook bounds for test %s", v65, 0xCu);
        sub_100034948(v66);
      }

      (*(v11 + 8))(v17, v68);
      v52 = String._bridgeToObjectiveC()();
      [v67 failedTest:v52];
      goto LABEL_14;
    }

    v22 = v22;
    v26 = [v22 view];
    if (v26)
    {
      v27 = v26;
      v28 = v21;
      [v26 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v37 = [v22 view];
      [v25 convertRect:v37 fromView:{v30, v32, v34, v36}];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v46 = swift_allocObject();
      v47 = v67;
      *(v46 + 16) = v67;
      *(v46 + 24) = v21;
      *(v46 + 32) = a3;
      *(v46 + 40) = a5;
      v48 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);
      v49 = v47;

      v50 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1000355E4;
      aBlock[5] = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002DB0;
      aBlock[3] = &unk_10008A548;
      v51 = _Block_copy(aBlock);

      v52 = [v48 initWithTestName:v50 scrollingBounds:1 swipeCount:6 direction:v51 completionHandler:{v39, v41, v43, v45}];
      _Block_release(v51);

      [v52 setShouldFlick:1];
      static Logger.Tests.getter();

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v28;
        v58 = v56;
        aBlock[0] = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_100005D28(v57, a3, aBlock);
        _os_log_impl(&_mh_execute_header, v53, v54, "Starting test %s", v55, 0xCu);
        sub_100034948(v58);
      }

      (*(v11 + 8))(v19, v68);
      [objc_opt_self() runTestWithParameters:v52];
LABEL_14:

LABEL_15:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10001FD94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, char a7)
{
  v35 = a5;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *(v15 + 64) = a6;
  *(v15 + 72) = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = v7;
  *(v18 + 48) = a7;
  *(v18 + 56) = sub_10002C9C8;
  *(v18 + 64) = v15;
  v38 = sub_10002C9E0;
  v39 = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C544;
  v37 = &unk_100089C60;
  v19 = _Block_copy(aBlock);
  v20 = v7;
  swift_bridgeObjectRetain_n();
  v21 = v20;

  v22 = a4;
  v23 = v35;

  v24 = [v17 beginMonitoringProviderDomainChangesWithHandler:v19];
  _Block_release(v19);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_10000AE08(aBlock, v16 + 16);
  sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
  v25 = v37;
  sub_100005A04(aBlock, &qword_100093498, &qword_100074430);
  if (v25)
  {
    sub_100034850(v16 + 16, aBlock, &qword_100093498, &qword_100074430);
    v26 = v37;
    if (!v37)
    {
      __break(1u);
      return;
    }

    v27 = sub_100006C6C(aBlock, v37);
    v28 = *(v26 - 1);
    __chkstk_darwin(v27);
    v30 = aBlock - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v28 + 16))(v30);
    v31 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v28 + 8))(v30, v26);
    [v17 endMonitoringProviderDomainChanges:{v31, sub_100034948(aBlock)}];
    swift_unknownObjectRelease();
  }

  sub_100002B84(0, &qword_100093790, NSUserDefaults_ptr);
  v32 = static NSUserDefaults.docUserDefaults.getter();
  if (v32)
  {
    v33 = v32;
    v34 = String._bridgeToObjectiveC()();
    [v33 setBool:1 forKey:v34];
  }

  else
  {
  }
}

double sub_100020174(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a1;
  *(v15 + 48) = a8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a1;
  *(v16 + 40) = a6;
  *(v16 + 48) = a7;
  *(v16 + 56) = a5;
  *(v16 + 64) = nullsub_1;
  *(v16 + 72) = 0;
  *(v16 + 80) = sub_10002CBE8;
  *(v16 + 88) = v15;
  *(v16 + 96) = a8;
  v17 = swift_allocObject();
  v17[2] = sub_10002CC00;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a6;
  v18 = a1;
  v19 = a6;
  v20 = v18;
  v21 = v19;
  swift_bridgeObjectRetain_n();
  v22 = v21;
  v23 = v20;
  v24 = a5;

  sub_1000144AC(v24, v22, sub_10002CC04, v17);

  return result;
}

void sub_100020310(char *a1, uint64_t a2, unint64_t a3, void *a4, char a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v71 - v16;
  __chkstk_darwin(v15);
  v19 = &v71 - v18;
  v20 = *&a1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
  if (!v20)
  {
    static Logger.Tests.getter();

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v75 = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_100005D28(a2, a3, &v75);
      _os_log_impl(&_mh_execute_header, v63, v64, "Failed to launch QuickLook for test %s", v65, 0xCu);
      sub_100034948(v66);
    }

    (*(v11 + 8))(v14, v10);
    v52 = String._bridgeToObjectiveC()();
    [a4 failedTest:v52];
    goto LABEL_14;
  }

  v72 = a2;
  v73 = v10;
  v21 = a4;
  v22 = v20;
  v23 = [a1 view];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 window];

    if (!v25)
    {
      static Logger.Tests.getter();

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v75 = v70;
        *v69 = 136315138;
        *(v69 + 4) = sub_100005D28(v72, a3, &v75);
        _os_log_impl(&_mh_execute_header, v67, v68, "Failed to find QuickLook bounds for test %s", v69, 0xCu);
        sub_100034948(v70);
      }

      (*(v11 + 8))(v17, v73);
      v52 = String._bridgeToObjectiveC()();
      [v21 failedTest:v52];

      goto LABEL_14;
    }

    v26 = v22;
    v27 = [v26 view];
    if (v27)
    {
      v28 = v27;
      [v27 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v37 = [v26 view];
      [v25 convertRect:v37 fromView:{v30, v32, v34, v36}];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v46 = type metadata accessor for DOCPinchZoomTestParameters();
      v47 = objc_allocWithZone(v46);
      v48 = &v47[OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_testName];
      *v48 = 0;
      *(v48 + 1) = 0;
      v49 = &v47[OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_completionHandler];
      *v49 = 0;
      *(v49 + 1) = 0;
      v50 = v72;
      *v48 = v72;
      *(v48 + 1) = a3;
      v51 = &v47[OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_bounds];
      *v51 = v39;
      *(v51 + 1) = v41;
      *(v51 + 2) = v43;
      *(v51 + 3) = v45;
      v74.receiver = v47;
      v74.super_class = v46;

      v52 = objc_msgSendSuper2(&v74, "init");
      v53 = swift_allocObject();
      *(v53 + 16) = v21;
      *(v53 + 24) = v50;
      *(v53 + 32) = a3;
      *(v53 + 40) = a5;
      v54 = &v52[OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_completionHandler];
      v55 = *&v52[OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_completionHandler];
      v56 = *&v52[OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_completionHandler + 8];
      *v54 = sub_1000355E4;
      v54[1] = v53;

      v57 = v21;
      sub_10003461C(v55, v56);
      static Logger.Tests.getter();

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = v26;
        v62 = swift_slowAlloc();
        v75 = v62;
        *v60 = 136315138;
        *(v60 + 4) = sub_100005D28(v50, a3, &v75);
        _os_log_impl(&_mh_execute_header, v58, v59, "Starting test %s", v60, 0xCu);
        sub_100034948(v62);
        v26 = v61;
      }

      (*(v11 + 8))(v19, v73);
      [objc_opt_self() runTestWithParameters:v52];

LABEL_14:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100020964(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v65 = a7;
  v66 = a8;
  v67 = a9;
  v68 = a5;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v60[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v23 = &v60[-v22];
  v24 = &off_100091000;
  if (a2)
  {
    v64 = v21;
    static Logger.Tests.getter();

    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v63 = v18;
      v28 = v27;
      v62 = swift_slowAlloc();
      *&v70[0] = v62;
      *v28 = 136315394;
      *(v28 + 4) = sub_100005D28(a3, a4, v70);
      *(v28 + 12) = 2080;
      v69 = a2;
      swift_errorRetain();
      sub_10000DB4C(&unk_100093B40, qword_100074410);
      v29 = String.init<A>(describing:)();
      v31 = sub_100005D28(v29, v30, v70);
      v61 = v26;
      v32 = a4;
      v33 = v17;
      v34 = a6;
      v35 = a3;
      v36 = v31;

      *(v28 + 14) = v36;
      a3 = v35;
      a6 = v34;
      v17 = v33;
      a4 = v32;
      _os_log_impl(&_mh_execute_header, v25, v61, "Failed test %s. Error: %s", v28, 0x16u);
      swift_arrayDestroy();

      v18 = v63;
    }

    (*(v18 + 8))(v23, v17);
    v37 = String._bridgeToObjectiveC()();
    v24 = &off_100091000;
    [v68 failedTest:v37];

    v21 = v64;
  }

  v38 = [a6 effectiveFullBrowser];
  DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)();

  v67();
  v39 = [a6 effectiveBrowserViewController];
  if (v39 && (v40 = v39, v41 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v40, v41))
  {
    v42 = DOCQLPreviewFinishLoadingNotificationName;
    v43 = swift_allocObject();
    *(v43 + 16) = a11;
    *(v43 + 24) = a12;
    v44 = objc_opt_self();
    v45 = v41;
    v46 = v42;

    v47 = [v44 defaultCenter];
    memset(v70, 0, sizeof(v70));
    v48 = [objc_opt_self() mainQueue];
    v49 = swift_allocObject();
    *(v49 + 16) = sub_100030388;
    *(v49 + 24) = v43;

    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(v70, &qword_100093498, &qword_100074430);

    v50 = dispatch thunk of DOCItemCollectionViewController.collectionView.getter();

    v51 = v45;
    v52 = v68;
    v53 = a6;
    sub_100031950(v50, a13, a13, v52, v53, a3, a4, v50, v51);
  }

  else
  {
    static Logger.Tests.getter();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v24;
      v57 = swift_slowAlloc();
      v58 = v21;
      v59 = swift_slowAlloc();
      *&v70[0] = v59;
      *v57 = 136315138;
      *(v57 + 4) = sub_100005D28(a3, a4, v70);
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed test %s. mainViewController.effectiveBrowserViewController?.containedItemCollectionViewController was nil", v57, 0xCu);
      sub_100034948(v59);

      v24 = v56;

      (*(v18 + 8))(v58, v17);
    }

    else
    {

      (*(v18 + 8))(v21, v17);
    }

    v51 = String._bridgeToObjectiveC()();
    [v68 v24[284]];
  }
}

uint64_t sub_100020F70(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v41 = a4;
  v42 = a5;
  v39 = a2;
  v40 = a3;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v36 - v19;
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v38 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v13 = 1;
  (*(v11 + 104))(v13, enum case for DispatchTimeInterval.seconds(_:), v10);
  + infix(_:_:)();
  (*(v11 + 8))(v13, v10);
  v37 = *(v15 + 8);
  v21 = v18;
  v22 = v14;
  v37(v21, v14);
  v23 = swift_allocObject();
  v24 = v39;
  v25 = v40;
  v23[2] = a1;
  v23[3] = v24;
  v26 = v41;
  v27 = v42;
  v23[4] = v25;
  v23[5] = v26;
  v23[6] = v27;
  aBlock[4] = sub_1000330A4;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008A2C8;
  v28 = _Block_copy(aBlock);
  v29 = a1;

  v30 = v26;
  v31 = v27;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  v33 = v43;
  v32 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = v38;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v28);

  (*(v47 + 8))(v33, v32);
  (*(v45 + 8))(v9, v46);
  return (v37)(v20, v22);
}

void sub_10002140C(void *a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 effectiveBrowserViewController];
  if (v14 && (v15 = v14, v16 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v15, v16))
  {
    v17 = dispatch thunk of DOCItemCollectionViewController.collectionView.getter();
    v18 = v16;
    v19 = a5;

    v26 = a4;
    sub_100033440(v17, 7, v18, v19, a2, a3, v26);

    v20 = v26;
  }

  else
  {
    static Logger.Tests.getter();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_100005D28(a2, a3, &v27);
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed test %s. Timed out waiting for mainViewController.effectiveBrowserViewController?.containedItemCollectionViewController", v23, 0xCu);
      sub_100034948(v24);
    }

    (*(v11 + 8))(v13, v10);
    v25 = String._bridgeToObjectiveC()();
    [a4 failedTest:v25];
  }
}

uint64_t sub_1000216B4(char *a1, uint64_t a2, uint8_t *a3)
{
  v6 = type metadata accessor for Logger();
  v675 = *(v6 - 8);
  v676 = v6;
  v7 = __chkstk_darwin(v6);
  v656 = &v634 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v655 = &v634 - v10;
  v11 = __chkstk_darwin(v9);
  v654 = &v634 - v12;
  v13 = __chkstk_darwin(v11);
  v653 = &v634 - v14;
  v15 = __chkstk_darwin(v13);
  v652 = &v634 - v16;
  v17 = __chkstk_darwin(v15);
  v651 = &v634 - v18;
  v19 = __chkstk_darwin(v17);
  v650 = &v634 - v20;
  v21 = __chkstk_darwin(v19);
  v649 = &v634 - v22;
  v23 = __chkstk_darwin(v21);
  v648 = &v634 - v24;
  v25 = __chkstk_darwin(v23);
  v647 = &v634 - v26;
  v27 = __chkstk_darwin(v25);
  v646 = &v634 - v28;
  v29 = __chkstk_darwin(v27);
  v645 = &v634 - v30;
  v31 = __chkstk_darwin(v29);
  v644 = &v634 - v32;
  v33 = __chkstk_darwin(v31);
  v643 = &v634 - v34;
  v35 = __chkstk_darwin(v33);
  v642 = &v634 - v36;
  v37 = __chkstk_darwin(v35);
  v641 = &v634 - v38;
  v39 = __chkstk_darwin(v37);
  v640 = &v634 - v40;
  v41 = __chkstk_darwin(v39);
  v639 = &v634 - v42;
  v43 = __chkstk_darwin(v41);
  v638 = &v634 - v44;
  v45 = __chkstk_darwin(v43);
  v637 = &v634 - v46;
  v47 = __chkstk_darwin(v45);
  v657 = &v634 - v48;
  v49 = __chkstk_darwin(v47);
  v658 = &v634 - v50;
  v51 = __chkstk_darwin(v49);
  v659 = &v634 - v52;
  v53 = __chkstk_darwin(v51);
  v660 = &v634 - v54;
  v55 = __chkstk_darwin(v53);
  v661 = &v634 - v56;
  v57 = __chkstk_darwin(v55);
  v59 = &v634 - v58;
  v60 = __chkstk_darwin(v57);
  v62 = (&v634 - v61);
  v63 = __chkstk_darwin(v60);
  v65 = &v634 - v64;
  __chkstk_darwin(v63);
  v67 = &v634 - v66;
  sub_100002B84(0, &qword_100093790, NSUserDefaults_ptr);
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = sub_10000E834(v68, v69);
  v670 = v70;
  v673 = a2;
  v666 = a3;
  v677 = a1;
  v662 = v59;
  v665 = v62;
  v674 = v65;
  v672 = 0;
  if (!v70)
  {
    v683 = 0u;
    v684 = 0u;
LABEL_10:
    sub_100005A04(&v683, &qword_100093498, &qword_100074430);
    goto LABEL_11;
  }

  if ([v70 objectForKey:DOCTestUserDefaultsKeyProviderForPPT])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v678 = 0u;
    v679 = 0u;
  }

  v683 = v678;
  v684 = v679;
  if (!*(&v679 + 1))
  {
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v74 = static DOCDocumentSourceIdentifier.iCloudCurrent.getter();
    v671 = 0;
    goto LABEL_12;
  }

  v71 = *(&v678 + 1);

  v72 = String._bridgeToObjectiveC()();
  static Logger.Tests.getter();
  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  v74 = v72;
  v669 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();
  v76 = swift_allocObject();
  *(v76 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = 8;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_100035514;
  *(v78 + 24) = v73;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_100035528;
  *(v79 + 24) = v78;
  sub_10000DB4C(&qword_100093888, &qword_1000740A0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_100073FF0;
  *(v80 + 32) = sub_1000355C4;
  *(v80 + 40) = v76;
  *(v80 + 48) = sub_1000355C4;
  *(v80 + 56) = v77;
  *(v80 + 64) = sub_10003550C;
  *(v80 + 72) = v79;

  LODWORD(v668) = v75;
  v81 = v75;
  v82 = v669;
  v83 = os_log_type_enabled(v669, v81);
  v671 = v71;
  if (v83)
  {
    v84 = sub_100047A6C(12);
    v85 = swift_slowAlloc();
    v680 = v85;
    v681 = 0;
    *v84 = 258;
    *&v678 = v84 + 2;
    *&v683 = sub_1000355C4;
    *(&v683 + 1) = v76;
    sub_100047A74(&v683, &v678, &v681, &v680);

    *&v683 = sub_1000355C4;
    *(&v683 + 1) = v77;
    sub_100047A74(&v683, &v678, &v681, &v680);

    *&v683 = sub_10003550C;
    *(&v683 + 1) = v79;
    sub_100047A74(&v683, &v678, &v681, &v680);
    a1 = v677;
    v672 = 0;

    _os_log_impl(&_mh_execute_header, v82, v668, "forcing provider to: %s", v84, 0xCu);
    sub_100034948(v85);

    sub_100047AB0(v84);

    (*(v675 + 8))(v67, v676);
    a2 = v673;
  }

  else
  {

    (*(v675 + 8))(v67, v676);
    a1 = v677;
  }

LABEL_12:
  static Logger.Tests.getter();
  v86 = swift_allocObject();
  *(v86 + 16) = a1;
  *(v86 + 24) = a2;
  v87 = swift_allocObject();
  *(v87 + 16) = v74;

  v669 = v74;
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();
  v90 = swift_allocObject();
  *(v90 + 16) = 32;
  v91 = swift_allocObject();
  *(v91 + 16) = 8;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_100034C24;
  *(v92 + 24) = v86;
  v93 = swift_allocObject();
  *(v93 + 16) = sub_100034C70;
  *(v93 + 24) = v92;
  v94 = swift_allocObject();
  *(v94 + 16) = 32;
  v95 = swift_allocObject();
  *(v95 + 16) = 8;
  v96 = swift_allocObject();
  *(v96 + 16) = sub_100034C60;
  *(v96 + 24) = v87;
  v97 = swift_allocObject();
  *(v97 + 16) = sub_100035528;
  *(v97 + 24) = v96;
  v663 = sub_10000DB4C(&qword_100093888, &qword_1000740A0);
  v98 = swift_allocObject();
  v664 = xmmword_100074000;
  *(v98 + 16) = xmmword_100074000;
  *(v98 + 32) = sub_100034C68;
  *(v98 + 40) = v90;
  *(v98 + 48) = sub_1000355C4;
  *(v98 + 56) = v91;
  *(v98 + 64) = sub_100034C78;
  *(v98 + 72) = v93;
  *(v98 + 80) = sub_1000355C4;
  *(v98 + 88) = v94;
  *(v98 + 96) = sub_1000355C4;
  *(v98 + 104) = v95;
  *(v98 + 112) = sub_10003550C;
  *(v98 + 120) = v97;

  LODWORD(v668) = v89;
  if (os_log_type_enabled(v88, v89))
  {
    v99 = sub_100047A6C(22);
    v680 = swift_slowAlloc();
    v681 = 0;
    *v99 = 514;
    *&v678 = v99 + 2;
    *&v683 = sub_100034C68;
    *(&v683 + 1) = v90;
    v100 = v672;
    sub_100047A74(&v683, &v678, &v681, &v680);
    if (v100)
    {
      goto LABEL_172;
    }

    *&v683 = sub_1000355C4;
    *(&v683 + 1) = v91;
    sub_100047A74(&v683, &v678, &v681, &v680);

    *&v683 = sub_100034C78;
    *(&v683 + 1) = v93;
    sub_100047A74(&v683, &v678, &v681, &v680);
    v101 = v677;

    *&v683 = sub_1000355C4;
    *(&v683 + 1) = v94;
    sub_100047A74(&v683, &v678, &v681, &v680);

    *&v683 = sub_1000355C4;
    *(&v683 + 1) = v95;
    sub_100047A74(&v683, &v678, &v681, &v680);
    v102 = v673;

    *&v683 = sub_10003550C;
    *(&v683 + 1) = v97;
    sub_100047A74(&v683, &v678, &v681, &v680);

    _os_log_impl(&_mh_execute_header, v88, v668, "runTest: %s with provider: %s", v99, 0x16u);
    swift_arrayDestroy();

    sub_100047AB0(v99);

    v103 = *(v675 + 8);
    (v103)(v674, v676);
  }

  else
  {

    v103 = *(v675 + 8);
    (v103)(v674, v676);
    v100 = v672;
    v102 = v673;
    v101 = v677;
  }

  v104 = [objc_opt_self() keyWindow];
  if (!v104)
  {
    goto LABEL_34;
  }

  v105 = v104;
  v106 = [v104 rootViewController];
  if (!v106)
  {

LABEL_35:
    v117 = 0;
    goto LABEL_36;
  }

  v107 = v106;
  type metadata accessor for DRIMainViewController(0);
  v108 = swift_dynamicCastClass();
  if (!v108)
  {

    goto LABEL_35;
  }

  v109 = v108;
  v110 = [v108 tabBarController];
  if (!v110)
  {

LABEL_34:

    goto LABEL_35;
  }

  v111 = v110;
  v112 = &v667[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName];
  *v112 = v101;
  v112[1] = v102;

  [v111 enclosingTabSwitcherStyle];
  v113 = DOCTabSwitcherStyle.showsTabs.getter();
  if (!v102)
  {

    v119 = 0;
LABEL_38:
    if (v666)
    {
      v120.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v120.super.isa = 0;
    }

    v126 = type metadata accessor for DOCApplication();
    v682.receiver = v667;
    v682.super_class = v126;
    v117 = objc_msgSendSuper2(&v682, "runTest:options:", v119, v120.super.isa);

    goto LABEL_36;
  }

  v114 = v113;
  v115 = 0x6F54686374697753;
  if (v101 == 0x6F54686374697753 && v102 == 0xEE006573776F7242 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (v114)
    {

      sub_100019110(2, v101, v102, v109, v111);
LABEL_26:

LABEL_27:
LABEL_28:
      v116 = &v686;
LABEL_29:

      v117 = 1;
LABEL_36:

      return v117;
    }

    if (v666)
    {

      v121 = swift_allocObject();
      v122 = v667;
      v121[2] = v667;
      v121[3] = v101;
      v121[4] = v102;
      v121[5] = v109;

      v123 = v122;
      v124 = v107;
      v125 = v669;
      sub_1000144AC(v669, v109, sub_100035508, v121);

LABEL_42:

      v117 = 1;
      goto LABEL_36;
    }

    __break(1u);
LABEL_134:
    if (v677 == 0x6F466573776F7242 && v673 == 0xEC0000007265646CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      static Logger.Tests.getter();
      v272 = swift_allocObject();
      v273 = v674;
      *(v272 + 16) = v674;
      v274 = swift_allocObject();
      *(v274 + 16) = v273;
      v662 = v107;
      v275 = Logger.logObject.getter();
      LODWORD(v665) = static os_log_type_t.debug.getter();
      v276 = swift_allocObject();
      *(v276 + 16) = 64;
      v277 = swift_allocObject();
      v114 = 8;
      *(v277 + 16) = 8;
      v278 = swift_allocObject();
      *(v278 + 16) = sub_1000355A8;
      *(v278 + 24) = v272;
      v103 = swift_allocObject();
      *(v103 + 2) = sub_10003552C;
      *(v103 + 3) = v278;
      v101 = swift_allocObject();
      *(v101 + 16) = 32;
      v279 = swift_allocObject();
      *(v279 + 16) = 8;
      v280 = swift_allocObject();
      *(v280 + 16) = sub_1000355AC;
      *(v280 + 24) = v274;
      v115 = swift_allocObject();
      *(v115 + 16) = sub_100035528;
      *(v115 + 24) = v280;
      v281 = swift_allocObject();
      *(v281 + 16) = v664;
      *(v281 + 32) = sub_1000355C4;
      *(v281 + 40) = v276;
      *(v281 + 48) = sub_1000355C4;
      *(v281 + 56) = v277;
      *(v281 + 64) = sub_100035510;
      *(v281 + 72) = v103;
      *(v281 + 80) = sub_1000355C4;
      *(v281 + 88) = v101;
      *(v281 + 96) = sub_1000355C4;
      *(v281 + 104) = v279;
      *(v281 + 112) = sub_10003550C;
      *(v281 + 120) = v115;

      v107 = v275;
      if (os_log_type_enabled(v275, v665))
      {
        v282 = sub_100047A6C(22);
        v114 = swift_slowAlloc();
        v283 = swift_slowAlloc();
        v680 = v283;
        v681 = v114;
        *&v664 = v282;
        *v282 = 514;
        *&v678 = v282 + 1;
        *&v683 = sub_1000355C4;
        *(&v683 + 1) = v276;
        v284 = v672;
        sub_100047A74(&v683, &v678, &v681, &v680);
        if (v284)
        {
          goto LABEL_213;
        }

        *&v683 = sub_1000355C4;
        *(&v683 + 1) = v277;
        sub_100047A74(&v683, &v678, &v681, &v680);

        *&v683 = sub_100035510;
        *(&v683 + 1) = v103;
        sub_100047A74(&v683, &v678, &v681, &v680);

        *&v683 = sub_1000355C4;
        *(&v683 + 1) = v101;
        sub_100047A74(&v683, &v678, &v681, &v680);

        *&v683 = sub_1000355C4;
        *(&v683 + 1) = v279;
        sub_100047A74(&v683, &v678, &v681, &v680);

        *&v683 = sub_10003550C;
        *(&v683 + 1) = v115;
        sub_100047A74(&v683, &v678, &v681, &v680);

        v285 = v107;
        v286 = v107;
        v107 = v664;
        _os_log_impl(&_mh_execute_header, v286, v665, "BrowseFolder %@ %s", v664, 0x16u);
        sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

        sub_100034948(v283);

        sub_100047AB0(v107);
      }

      else
      {
      }

      (v635)(v637, v676);
      if (v666)
      {

        v117 = 1;
        v287 = v669;
        sub_100030D04(v677, v673, v669, v674, 0, 1);

        goto LABEL_71;
      }

      __break(1u);
      goto LABEL_249;
    }

    goto LABEL_144;
  }

  if ((v101 != 0x6F54686374697753 || v102 != 0xEF73746E65636552) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v635 = v103;
    v103 = 0xD000000000000014;
    v114 = 0xD000000000000010;
    v636 = v105;
    v668 = v111;
    v674 = v109;
    if (v101 == 0xD000000000000010 && 0x8000000100075250 == v102 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      static Logger.Tests.getter();
      v131 = swift_allocObject();
      *(v131 + 16) = v109;
      v132 = swift_allocObject();
      *(v132 + 16) = v109;
      v661 = v107;
      v672 = Logger.logObject.getter();
      LODWORD(v662) = static os_log_type_t.debug.getter();
      v133 = swift_allocObject();
      *(v133 + 16) = 64;
      v134 = swift_allocObject();
      v114 = 8;
      *(v134 + 16) = 8;
      v135 = swift_allocObject();
      *(v135 + 16) = sub_1000355A8;
      *(v135 + 24) = v131;
      v136 = swift_allocObject();
      *(v136 + 16) = sub_10003552C;
      *(v136 + 24) = v135;
      v137 = swift_allocObject();
      *(v137 + 16) = 32;
      v138 = swift_allocObject();
      *(v138 + 16) = 8;
      v139 = swift_allocObject();
      *(v139 + 16) = sub_1000355AC;
      *(v139 + 24) = v132;
      v115 = swift_allocObject();
      *(v115 + 16) = sub_100035528;
      *(v115 + 24) = v139;
      v140 = swift_allocObject();
      *(v140 + 16) = v664;
      *(v140 + 32) = sub_1000355C4;
      *(v140 + 40) = v133;
      *(v140 + 48) = sub_1000355C4;
      *(v140 + 56) = v134;
      *(v140 + 64) = sub_100035510;
      *(v140 + 72) = v136;
      *(v140 + 80) = sub_1000355C4;
      *(v140 + 88) = v137;
      *(v140 + 96) = sub_1000355C4;
      *(v140 + 104) = v138;
      *(v140 + 112) = sub_10003550C;
      *(v140 + 120) = v115;

      v141 = v672;

      if (os_log_type_enabled(v141, v662))
      {
        v142 = sub_100047A6C(22);
        v114 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v680 = v143;
        v681 = v114;
        *v142 = 514;
        *&v678 = v142 + 2;
        *&v683 = sub_1000355C4;
        *(&v683 + 1) = v133;
        sub_100047A74(&v683, &v678, &v681, &v680);
        if (v100)
        {
          goto LABEL_213;
        }

        *&v683 = sub_1000355C4;
        *(&v683 + 1) = v134;
        sub_100047A74(&v683, &v678, &v681, &v680);

        *&v683 = sub_100035510;
        *(&v683 + 1) = v136;
        sub_100047A74(&v683, &v678, &v681, &v680);

        *&v683 = sub_1000355C4;
        *(&v683 + 1) = v137;
        sub_100047A74(&v683, &v678, &v681, &v680);
        v144 = v674;

        *&v683 = sub_1000355C4;
        *(&v683 + 1) = v138;
        sub_100047A74(&v683, &v678, &v681, &v680);
        v101 = v673;
        v103 = v668;

        *&v683 = sub_10003550C;
        *(&v683 + 1) = v115;
        sub_100047A74(&v683, &v678, &v681, &v680);

        v145 = v672;
        _os_log_impl(&_mh_execute_header, v672, v662, "ScrollAllRecents %@ %s", v142, 0x16u);
        sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

        sub_100034948(v143);

        sub_100047AB0(v142);

        (v635)(v665, v676);
      }

      else
      {

        (v635)(v665, v676);
        v101 = v673;
        v144 = v674;
        v103 = v668;
      }

      v107 = v666;
      if (v666)
      {

        sub_10002EFCC(v677, v101, v107, v144, 0);

        v116 = &v666;
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_151;
    }

    if (v101 == 0xD000000000000014 && 0x8000000100075230 == v102 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      static Logger.Tests.getter();
      v146 = swift_allocObject();
      *(v146 + 16) = v109;
      v147 = swift_allocObject();
      *(v147 + 16) = v109;
      v661 = v107;
      v672 = Logger.logObject.getter();
      LODWORD(v665) = static os_log_type_t.debug.getter();
      v148 = swift_allocObject();
      *(v148 + 16) = 64;
      v149 = swift_allocObject();
      v114 = 8;
      *(v149 + 16) = 8;
      v150 = swift_allocObject();
      *(v150 + 16) = sub_1000355A8;
      *(v150 + 24) = v146;
      v151 = swift_allocObject();
      *(v151 + 16) = sub_10003552C;
      *(v151 + 24) = v150;
      v152 = swift_allocObject();
      *(v152 + 16) = 32;
      v153 = swift_allocObject();
      *(v153 + 16) = 8;
      v154 = swift_allocObject();
      *(v154 + 16) = sub_1000355AC;
      *(v154 + 24) = v147;
      v115 = swift_allocObject();
      *(v115 + 16) = sub_100035528;
      *(v115 + 24) = v154;
      v155 = swift_allocObject();
      *(v155 + 16) = v664;
      *(v155 + 32) = sub_1000355C4;
      *(v155 + 40) = v148;
      *(v155 + 48) = sub_1000355C4;
      *(v155 + 56) = v149;
      *(v155 + 64) = sub_100035510;
      *(v155 + 72) = v151;
      *(v155 + 80) = sub_1000355C4;
      *(v155 + 88) = v152;
      *(v155 + 96) = sub_1000355C4;
      *(v155 + 104) = v153;
      *(v155 + 112) = sub_10003550C;
      *(v155 + 120) = v115;

      v156 = v672;

      if (os_log_type_enabled(v156, v665))
      {
        v157 = sub_100047A6C(22);
        v114 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v680 = v158;
        v681 = v114;
        *v157 = 514;
        *&v678 = v157 + 2;
        *&v683 = sub_1000355C4;
        *(&v683 + 1) = v148;
        sub_100047A74(&v683, &v678, &v681, &v680);
        if (v100)
        {
          goto LABEL_213;
        }

        *&v683 = sub_1000355C4;
        *(&v683 + 1) = v149;
        sub_100047A74(&v683, &v678, &v681, &v680);

        *&v683 = sub_100035510;
        *(&v683 + 1) = v151;
        sub_100047A74(&v683, &v678, &v681, &v680);
        v159 = v674;

        *&v683 = sub_1000355C4;
        *(&v683 + 1) = v152;
        sub_100047A74(&v683, &v678, &v681, &v680);

        *&v683 = sub_1000355C4;
        *(&v683 + 1) = v153;
        sub_100047A74(&v683, &v678, &v681, &v680);
        v101 = v673;
        v103 = v668;

        *&v683 = sub_10003550C;
        *(&v683 + 1) = v115;
        sub_100047A74(&v683, &v678, &v681, &v680);

        v160 = v672;
        _os_log_impl(&_mh_execute_header, v672, v665, "ScrollAllRecentsList %@ %s", v157, 0x16u);
        sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

        sub_100034948(v158);

        sub_100047AB0(v157);

        (v635)(v662, v676);
      }

      else
      {

        (v635)(v662, v676);
        v101 = v673;
        v159 = v674;
        v103 = v668;
      }

      v107 = v666;
      if (v666)
      {

        v117 = 1;
        sub_10002EFCC(v677, v101, v107, v159, 1);

LABEL_71:
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_162;
    }

    if ((v101 != 0x65526C6C6F726353 || v102 != 0xED000073746E6563) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v672 = v100;
      if (v101 == 0xD000000000000014 && 0x8000000100075210 == v102 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v114 = v666;
        if (v666)
        {

          sub_100017C28(v101, v102, v114, v674);

LABEL_82:
          goto LABEL_28;
        }

        __break(1u);

        __break(1u);
        goto LABEL_184;
      }

      if (v101 == 0x72426C6C6F726353 && v673 == 0xEC0000006573776FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        static Logger.Tests.getter();
        v162 = swift_allocObject();
        v163 = v674;
        *(v162 + 16) = v674;
        v164 = swift_allocObject();
        *(v164 + 16) = v163;
        v662 = v107;
        v665 = Logger.logObject.getter();
        v165 = static os_log_type_t.debug.getter();
        v166 = swift_allocObject();
        *(v166 + 16) = 64;
        v167 = swift_allocObject();
        v114 = 8;
        *(v167 + 16) = 8;
        v168 = swift_allocObject();
        *(v168 + 16) = sub_1000355A8;
        *(v168 + 24) = v162;
        v103 = swift_allocObject();
        *(v103 + 2) = sub_10003552C;
        *(v103 + 3) = v168;
        v101 = swift_allocObject();
        *(v101 + 16) = 32;
        v169 = swift_allocObject();
        *(v169 + 16) = 8;
        v170 = swift_allocObject();
        *(v170 + 16) = sub_1000355AC;
        *(v170 + 24) = v164;
        v115 = swift_allocObject();
        *(v115 + 16) = sub_100035528;
        *(v115 + 24) = v170;
        v171 = swift_allocObject();
        *(v171 + 16) = v664;
        *(v171 + 32) = sub_1000355C4;
        *(v171 + 40) = v166;
        *(v171 + 48) = sub_1000355C4;
        *(v171 + 56) = v167;
        *(v171 + 64) = sub_100035510;
        *(v171 + 72) = v103;
        *(v171 + 80) = sub_1000355C4;
        *(v171 + 88) = v101;
        *(v171 + 96) = sub_1000355C4;
        *(v171 + 104) = v169;
        *(v171 + 112) = sub_10003550C;
        *(v171 + 120) = v115;

        LODWORD(v664) = v165;
        v107 = v665;
        if (os_log_type_enabled(v665, v165))
        {
          v172 = sub_100047A6C(22);
          v114 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          v680 = v173;
          v681 = v114;
          v663 = v172;
          *v172 = 514;
          *&v678 = v172 + 2;
          *&v683 = sub_1000355C4;
          *(&v683 + 1) = v166;
          v174 = v672;
          sub_100047A74(&v683, &v678, &v681, &v680);
          if (v174)
          {
            goto LABEL_213;
          }

          *&v683 = sub_1000355C4;
          *(&v683 + 1) = v167;
          sub_100047A74(&v683, &v678, &v681, &v680);

          *&v683 = sub_100035510;
          *(&v683 + 1) = v103;
          sub_100047A74(&v683, &v678, &v681, &v680);

          *&v683 = sub_1000355C4;
          *(&v683 + 1) = v101;
          sub_100047A74(&v683, &v678, &v681, &v680);

          *&v683 = sub_1000355C4;
          *(&v683 + 1) = v169;
          sub_100047A74(&v683, &v678, &v681, &v680);

          *&v683 = sub_10003550C;
          *(&v683 + 1) = v115;
          sub_100047A74(&v683, &v678, &v681, &v680);

          v175 = v107;
          v176 = v107;
          v107 = v663;
          _os_log_impl(&_mh_execute_header, v176, v664, "ScrollBrowse %@ %s", v663, 0x16u);
          sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

          sub_100034948(v173);

          sub_100047AB0(v107);
        }

        else
        {
        }

        (v635)(v661, v676);
        if (!v666)
        {
          __break(1u);
          goto LABEL_194;
        }

        v177 = swift_allocObject();
        v178 = v667;
        v179 = v677;
        *(v177 + 16) = v667;
        *(v177 + 24) = v179;
        v180 = v674;
        *(v177 + 32) = v673;
        *(v177 + 40) = v180;
        *(v177 + 48) = 0;
        *(v177 + 56) = v666;
        v181 = swift_allocObject();
        v181[2] = sub_1000355D8;
        v181[3] = v177;
        v181[4] = v178;
        v181[5] = v180;
        v182 = v178;
        v183 = v662;

        v184 = v182;
        v185 = v183;
      }

      else
      {
        v101 = 0xD000000000000013;
        if ((v677 != 0xD000000000000013 || 0x80000001000751F0 != v673) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v677 == 0xD000000000000010 && 0x80000001000751D0 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            static Logger.Tests.getter();
            v210 = swift_allocObject();
            v211 = v674;
            *(v210 + 16) = v674;
            v212 = swift_allocObject();
            *(v212 + 16) = v211;
            v662 = v107;
            v665 = Logger.logObject.getter();
            v213 = static os_log_type_t.debug.getter();
            v214 = swift_allocObject();
            *(v214 + 16) = 64;
            v215 = swift_allocObject();
            v114 = 8;
            *(v215 + 16) = 8;
            v216 = swift_allocObject();
            *(v216 + 16) = sub_100034CE0;
            *(v216 + 24) = v210;
            v103 = swift_allocObject();
            *(v103 + 2) = sub_10003552C;
            *(v103 + 3) = v216;
            v101 = swift_allocObject();
            *(v101 + 16) = 32;
            v115 = swift_allocObject();
            *(v115 + 16) = 8;
            v217 = swift_allocObject();
            *(v217 + 16) = sub_100034CE8;
            *(v217 + 24) = v212;
            v218 = swift_allocObject();
            *(v218 + 16) = sub_100035528;
            *(v218 + 24) = v217;
            v219 = swift_allocObject();
            *(v219 + 16) = v664;
            *(v219 + 32) = sub_1000355C4;
            *(v219 + 40) = v214;
            *(v219 + 48) = sub_1000355C4;
            *(v219 + 56) = v215;
            *(v219 + 64) = sub_100035510;
            *(v219 + 72) = v103;
            *(v219 + 80) = sub_1000355C4;
            *(v219 + 88) = v101;
            *(v219 + 96) = sub_1000355C4;
            *(v219 + 104) = v115;
            *(v219 + 112) = sub_10003550C;
            *(v219 + 120) = v218;

            LODWORD(v664) = v213;
            v107 = v665;
            if (os_log_type_enabled(v665, v213))
            {
              v220 = sub_100047A6C(22);
              v114 = swift_slowAlloc();
              v221 = swift_slowAlloc();
              v680 = v221;
              v681 = v114;
              v663 = v220;
              *v220 = 514;
              *&v678 = v220 + 2;
              *&v683 = sub_1000355C4;
              *(&v683 + 1) = v214;
              v222 = v672;
              sub_100047A74(&v683, &v678, &v681, &v680);
              if (v222)
              {

                while (1)
                {

                  __break(1u);
                }
              }

              *&v683 = sub_1000355C4;
              *(&v683 + 1) = v215;
              sub_100047A74(&v683, &v678, &v681, &v680);

              *&v683 = sub_100035510;
              *(&v683 + 1) = v103;
              sub_100047A74(&v683, &v678, &v681, &v680);

              *&v683 = sub_1000355C4;
              *(&v683 + 1) = v101;
              sub_100047A74(&v683, &v678, &v681, &v680);

              *&v683 = sub_1000355C4;
              *(&v683 + 1) = v115;
              sub_100047A74(&v683, &v678, &v681, &v680);

              *&v683 = sub_10003550C;
              *(&v683 + 1) = v218;
              sub_100047A74(&v683, &v678, &v681, &v680);

              v223 = v107;
              v224 = v107;
              v107 = v663;
              _os_log_impl(&_mh_execute_header, v224, v664, "ScrollBrowseList %@ %s", v663, 0x16u);
              sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

              sub_100034948(v221);

              sub_100047AB0(v107);
            }

            else
            {
            }

            (v635)(v659, v676);
            if (!v666)
            {
              __break(1u);
              goto LABEL_215;
            }

            v225 = swift_allocObject();
            v226 = v667;
            v227 = v677;
            *(v225 + 16) = v667;
            *(v225 + 24) = v227;
            v228 = v674;
            *(v225 + 32) = v673;
            *(v225 + 40) = v228;
            v117 = 1;
            *(v225 + 48) = 1;
            *(v225 + 56) = v666;
            v229 = swift_allocObject();
            v229[2] = sub_1000355D8;
            v229[3] = v225;
            v229[4] = v226;
            v229[5] = v228;
            v230 = v226;
            v231 = v662;

            v232 = v230;
            v233 = v231;
          }

          else
          {
            v102 = 0xD000000000000017;
            if ((v677 != 0xD000000000000017 || 0x80000001000751B0 != v673) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              if (v677 == 0xD000000000000014 && 0x8000000100075190 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                static Logger.Tests.getter();
                v256 = swift_allocObject();
                v257 = v674;
                *(v256 + 16) = v674;
                v258 = swift_allocObject();
                *(v258 + 16) = v257;
                v662 = v107;
                v259 = Logger.logObject.getter();
                LODWORD(v665) = static os_log_type_t.debug.getter();
                v260 = swift_allocObject();
                *(v260 + 16) = 64;
                v261 = swift_allocObject();
                v114 = 8;
                *(v261 + 16) = 8;
                v262 = swift_allocObject();
                *(v262 + 16) = sub_1000355A8;
                *(v262 + 24) = v256;
                v103 = swift_allocObject();
                *(v103 + 2) = sub_10003552C;
                *(v103 + 3) = v262;
                v101 = swift_allocObject();
                *(v101 + 16) = 32;
                v263 = swift_allocObject();
                *(v263 + 16) = 8;
                v264 = swift_allocObject();
                *(v264 + 16) = sub_1000355AC;
                *(v264 + 24) = v258;
                v115 = swift_allocObject();
                *(v115 + 16) = sub_100035528;
                *(v115 + 24) = v264;
                v265 = swift_allocObject();
                *(v265 + 16) = v664;
                *(v265 + 32) = sub_1000355C4;
                *(v265 + 40) = v260;
                *(v265 + 48) = sub_1000355C4;
                *(v265 + 56) = v261;
                *(v265 + 64) = sub_100035510;
                *(v265 + 72) = v103;
                *(v265 + 80) = sub_1000355C4;
                *(v265 + 88) = v101;
                *(v265 + 96) = sub_1000355C4;
                *(v265 + 104) = v263;
                *(v265 + 112) = sub_10003550C;
                *(v265 + 120) = v115;

                v107 = v259;
                if (os_log_type_enabled(v259, v665))
                {
                  v266 = sub_100047A6C(22);
                  v114 = swift_slowAlloc();
                  v267 = swift_slowAlloc();
                  v680 = v267;
                  v681 = v114;
                  *&v664 = v266;
                  *v266 = 514;
                  *&v678 = v266 + 1;
                  *&v683 = sub_1000355C4;
                  *(&v683 + 1) = v260;
                  v268 = v672;
                  sub_100047A74(&v683, &v678, &v681, &v680);
                  if (v268)
                  {
                    goto LABEL_213;
                  }

                  *&v683 = sub_1000355C4;
                  *(&v683 + 1) = v261;
                  sub_100047A74(&v683, &v678, &v681, &v680);

                  *&v683 = sub_100035510;
                  *(&v683 + 1) = v103;
                  sub_100047A74(&v683, &v678, &v681, &v680);

                  *&v683 = sub_1000355C4;
                  *(&v683 + 1) = v101;
                  sub_100047A74(&v683, &v678, &v681, &v680);

                  *&v683 = sub_1000355C4;
                  *(&v683 + 1) = v263;
                  sub_100047A74(&v683, &v678, &v681, &v680);

                  *&v683 = sub_10003550C;
                  *(&v683 + 1) = v115;
                  sub_100047A74(&v683, &v678, &v681, &v680);

                  v269 = v107;
                  v270 = v107;
                  v107 = v664;
                  _os_log_impl(&_mh_execute_header, v270, v665, "ScrollSidebarNatural %@ %s", v664, 0x16u);
                  sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

                  sub_100034948(v267);

                  sub_100047AB0(v107);
                }

                else
                {
                }

                (v635)(v657, v676);
                if (v666)
                {

                  sub_10000FB10(v677, v673, v666, v674);
LABEL_131:
                  v271 = &v685;
LABEL_132:

                  goto LABEL_82;
                }

                __break(1u);
                goto LABEL_237;
              }

              goto LABEL_134;
            }

            static Logger.Tests.getter();
            v235 = swift_allocObject();
            v236 = v674;
            *(v235 + 16) = v674;
            v237 = swift_allocObject();
            *(v237 + 16) = v236;
            v662 = v107;
            v238 = Logger.logObject.getter();
            LODWORD(v665) = static os_log_type_t.debug.getter();
            v239 = swift_allocObject();
            *(v239 + 16) = 64;
            v240 = swift_allocObject();
            v114 = 8;
            *(v240 + 16) = 8;
            v241 = swift_allocObject();
            *(v241 + 16) = sub_1000355A8;
            *(v241 + 24) = v235;
            v103 = swift_allocObject();
            *(v103 + 2) = sub_10003552C;
            *(v103 + 3) = v241;
            v101 = swift_allocObject();
            *(v101 + 16) = 32;
            v242 = swift_allocObject();
            *(v242 + 16) = 8;
            v243 = swift_allocObject();
            *(v243 + 16) = sub_1000355AC;
            *(v243 + 24) = v237;
            v115 = swift_allocObject();
            *(v115 + 16) = sub_100035528;
            *(v115 + 24) = v243;
            v244 = swift_allocObject();
            *(v244 + 16) = v664;
            *(v244 + 32) = sub_1000355C4;
            *(v244 + 40) = v239;
            *(v244 + 48) = sub_1000355C4;
            *(v244 + 56) = v240;
            *(v244 + 64) = sub_100035510;
            *(v244 + 72) = v103;
            *(v244 + 80) = sub_1000355C4;
            *(v244 + 88) = v101;
            *(v244 + 96) = sub_1000355C4;
            *(v244 + 104) = v242;
            *(v244 + 112) = sub_10003550C;
            *(v244 + 120) = v115;

            v107 = v238;
            if (os_log_type_enabled(v238, v665))
            {
              v245 = sub_100047A6C(22);
              v114 = swift_slowAlloc();
              v246 = swift_slowAlloc();
              v680 = v246;
              v681 = v114;
              *&v664 = v245;
              *v245 = 514;
              *&v678 = v245 + 1;
              *&v683 = sub_1000355C4;
              *(&v683 + 1) = v239;
              v247 = v672;
              sub_100047A74(&v683, &v678, &v681, &v680);
              if (v247)
              {
                goto LABEL_213;
              }

              *&v683 = sub_1000355C4;
              *(&v683 + 1) = v240;
              sub_100047A74(&v683, &v678, &v681, &v680);

              *&v683 = sub_100035510;
              *(&v683 + 1) = v103;
              sub_100047A74(&v683, &v678, &v681, &v680);

              *&v683 = sub_1000355C4;
              *(&v683 + 1) = v101;
              sub_100047A74(&v683, &v678, &v681, &v680);

              *&v683 = sub_1000355C4;
              *(&v683 + 1) = v242;
              sub_100047A74(&v683, &v678, &v681, &v680);

              *&v683 = sub_10003550C;
              *(&v683 + 1) = v115;
              sub_100047A74(&v683, &v678, &v681, &v680);

              v248 = v107;
              v249 = v107;
              v107 = v664;
              _os_log_impl(&_mh_execute_header, v249, v665, "ScrollBrowseListNatural %@ %s", v664, 0x16u);
              sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

              sub_100034948(v246);

              sub_100047AB0(v107);
            }

            else
            {
            }

            (v635)(v658, v676);
            if (!v666)
            {
              __break(1u);
              goto LABEL_227;
            }

            v250 = swift_allocObject();
            v251 = v667;
            v252 = v677;
            *(v250 + 16) = v667;
            *(v250 + 24) = v252;
            v228 = v674;
            *(v250 + 32) = v673;
            *(v250 + 40) = v228;
            v117 = 1;
            *(v250 + 48) = 1;
            *(v250 + 56) = v666;
            v229 = swift_allocObject();
            v229[2] = sub_100034CDC;
            v229[3] = v250;
            v229[4] = v251;
            v229[5] = v228;
            v253 = v251;
            v254 = v662;

            v255 = v253;
            v233 = v254;
          }

          v234 = v669;
          sub_1000144AC(v669, v228, sub_100035504, v229);

          goto LABEL_36;
        }

        static Logger.Tests.getter();
        v189 = swift_allocObject();
        v190 = v674;
        *(v189 + 16) = v674;
        v191 = swift_allocObject();
        *(v191 + 16) = v190;
        v665 = v107;
        v101 = Logger.logObject.getter();
        v192 = static os_log_type_t.debug.getter();
        v193 = swift_allocObject();
        *(v193 + 16) = 64;
        v194 = swift_allocObject();
        v114 = 8;
        *(v194 + 16) = 8;
        v195 = swift_allocObject();
        *(v195 + 16) = sub_1000355A8;
        *(v195 + 24) = v189;
        v103 = swift_allocObject();
        *(v103 + 2) = sub_10003552C;
        *(v103 + 3) = v195;
        v196 = swift_allocObject();
        *(v196 + 16) = 32;
        v197 = swift_allocObject();
        *(v197 + 16) = 8;
        v198 = swift_allocObject();
        *(v198 + 16) = sub_1000355AC;
        *(v198 + 24) = v191;
        v115 = swift_allocObject();
        *(v115 + 16) = sub_100035528;
        *(v115 + 24) = v198;
        v199 = swift_allocObject();
        *(v199 + 16) = v664;
        *(v199 + 32) = sub_1000355C4;
        *(v199 + 40) = v193;
        *(v199 + 48) = sub_1000355C4;
        *(v199 + 56) = v194;
        *(v199 + 64) = sub_100035510;
        *(v199 + 72) = v103;
        *(v199 + 80) = sub_1000355C4;
        *(v199 + 88) = v196;
        *(v199 + 96) = sub_1000355C4;
        *(v199 + 104) = v197;
        *(v199 + 112) = sub_10003550C;
        *(v199 + 120) = v115;

        LODWORD(v664) = v192;
        v107 = v101;
        if (os_log_type_enabled(v101, v192))
        {
          v200 = sub_100047A6C(22);
          v114 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v680 = v101;
          v681 = v114;
          v663 = v200;
          *v200 = 514;
          *&v678 = v200 + 2;
          *&v683 = sub_1000355C4;
          *(&v683 + 1) = v193;
          v201 = v672;
          sub_100047A74(&v683, &v678, &v681, &v680);
          if (v201)
          {
            goto LABEL_213;
          }

          *&v683 = sub_1000355C4;
          *(&v683 + 1) = v194;
          sub_100047A74(&v683, &v678, &v681, &v680);

          *&v683 = sub_100035510;
          *(&v683 + 1) = v103;
          sub_100047A74(&v683, &v678, &v681, &v680);

          *&v683 = sub_1000355C4;
          *(&v683 + 1) = v196;
          sub_100047A74(&v683, &v678, &v681, &v680);

          *&v683 = sub_1000355C4;
          *(&v683 + 1) = v197;
          sub_100047A74(&v683, &v678, &v681, &v680);

          *&v683 = sub_10003550C;
          *(&v683 + 1) = v115;
          sub_100047A74(&v683, &v678, &v681, &v680);

          v202 = v107;
          v203 = v107;
          v107 = v663;
          _os_log_impl(&_mh_execute_header, v203, v664, "ScrollBrowseNatural %@ %s", v663, 0x16u);
          sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

          sub_100034948(v101);

          sub_100047AB0(v107);
        }

        else
        {
        }

        (v635)(v660, v676);
        if (!v666)
        {
          __break(1u);
          goto LABEL_204;
        }

        v204 = swift_allocObject();
        v205 = v667;
        v206 = v677;
        *(v204 + 16) = v667;
        *(v204 + 24) = v206;
        v180 = v674;
        *(v204 + 32) = v673;
        *(v204 + 40) = v180;
        *(v204 + 48) = 0;
        *(v204 + 56) = v666;
        v181 = swift_allocObject();
        v181[2] = sub_1000355D8;
        v181[3] = v204;
        v181[4] = v205;
        v181[5] = v180;
        v207 = v205;
        v208 = v665;

        v209 = v207;
        v185 = v208;
      }

LABEL_92:
      v186 = v669;
      v187 = v669;
      v188 = v180;
LABEL_93:
      sub_1000144AC(v187, v188, sub_100035504, v181);

      goto LABEL_42;
    }

    v161 = v666;
    if (v666)
    {

      sub_100017C28(v101, v102, v161, v109);
      goto LABEL_26;
    }

    __break(1u);
LABEL_172:

    while (1)
    {

      __break(1u);
    }
  }

  if (v114)
  {

    sub_100019110(0, v101, v102, v109, v111);

    goto LABEL_27;
  }

  if (v666)
  {

    v127 = DOCDocumentSourceIdentifierRecentDocuments;
    v128 = swift_allocObject();
    v129 = v667;
    v128[2] = v667;
    v128[3] = v101;
    v128[4] = v102;
    v128[5] = v109;

    v129;
    v130 = v107;
    sub_1000144AC(v127, v109, sub_100035508, v128);

LABEL_52:
    goto LABEL_42;
  }

  __break(1u);
LABEL_144:
  v115 = (v103 - 3);
  if (v677 == v103 - 3 && 0x8000000100075170 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v288 = swift_allocObject();
    v289 = v674;
    *(v288 + 16) = v674;
    v290 = swift_allocObject();
    *(v290 + 16) = v289;
    v662 = v107;
    v291 = Logger.logObject.getter();
    LODWORD(v665) = static os_log_type_t.debug.getter();
    v292 = swift_allocObject();
    *(v292 + 16) = 64;
    v293 = swift_allocObject();
    v114 = 8;
    *(v293 + 16) = 8;
    v294 = swift_allocObject();
    *(v294 + 16) = sub_1000355A8;
    *(v294 + 24) = v288;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v294;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v295 = swift_allocObject();
    *(v295 + 16) = 8;
    v296 = swift_allocObject();
    *(v296 + 16) = sub_1000355AC;
    *(v296 + 24) = v290;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100035528;
    *(v115 + 24) = v296;
    v297 = swift_allocObject();
    *(v297 + 16) = v664;
    *(v297 + 32) = sub_1000355C4;
    *(v297 + 40) = v292;
    *(v297 + 48) = sub_1000355C4;
    *(v297 + 56) = v293;
    *(v297 + 64) = sub_100035510;
    *(v297 + 72) = v103;
    *(v297 + 80) = sub_1000355C4;
    *(v297 + 88) = v101;
    *(v297 + 96) = sub_1000355C4;
    *(v297 + 104) = v295;
    *(v297 + 112) = sub_10003550C;
    *(v297 + 120) = v115;

    v107 = v291;
    if (os_log_type_enabled(v291, v665))
    {
      v298 = sub_100047A6C(22);
      v114 = swift_slowAlloc();
      v299 = swift_slowAlloc();
      v680 = v299;
      v681 = v114;
      *&v664 = v298;
      *v298 = 514;
      *&v678 = v298 + 1;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v292;
      v300 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v300)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v293;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v101;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v295;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v115;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v301 = v107;
      v302 = v107;
      v107 = v664;
      _os_log_impl(&_mh_execute_header, v302, v665, "BrowseEmptyFolder %@ %s", v664, 0x16u);
      sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v299);

      sub_100047AB0(v107);

      goto LABEL_152;
    }

LABEL_151:

LABEL_152:
    (v635)(v638, v676);
    if (v666)
    {

      v303 = v677;
      v304 = v673;
      v305 = v674;
      v306 = v669;
      v307 = v669;
      v308 = 0;
LABEL_154:
      sub_100030D04(v303, v304, v307, v305, 0, v308);

      v116 = &v666;
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_259;
  }

  if (v677 == v101 && 0x8000000100075150 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v309 = swift_allocObject();
    v310 = v674;
    *(v309 + 16) = v674;
    v311 = swift_allocObject();
    *(v311 + 16) = v310;
    v662 = v107;
    v312 = Logger.logObject.getter();
    LODWORD(v665) = static os_log_type_t.debug.getter();
    v313 = swift_allocObject();
    *(v313 + 16) = 64;
    v314 = swift_allocObject();
    v114 = 8;
    *(v314 + 16) = 8;
    v315 = swift_allocObject();
    *(v315 + 16) = sub_1000355A8;
    *(v315 + 24) = v309;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v315;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v316 = swift_allocObject();
    *(v316 + 16) = 8;
    v317 = swift_allocObject();
    *(v317 + 16) = sub_1000355AC;
    *(v317 + 24) = v311;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100035528;
    *(v115 + 24) = v317;
    v318 = swift_allocObject();
    *(v318 + 16) = v664;
    *(v318 + 32) = sub_1000355C4;
    *(v318 + 40) = v313;
    *(v318 + 48) = sub_1000355C4;
    *(v318 + 56) = v314;
    *(v318 + 64) = sub_100035510;
    *(v318 + 72) = v103;
    *(v318 + 80) = sub_1000355C4;
    *(v318 + 88) = v101;
    *(v318 + 96) = sub_1000355C4;
    *(v318 + 104) = v316;
    *(v318 + 112) = sub_10003550C;
    *(v318 + 120) = v115;

    v107 = v312;
    if (os_log_type_enabled(v312, v665))
    {
      v319 = sub_100047A6C(22);
      v114 = swift_slowAlloc();
      v320 = swift_slowAlloc();
      v680 = v320;
      v681 = v114;
      *&v664 = v319;
      *v319 = 514;
      *&v678 = v319 + 1;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v313;
      v321 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v321)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v314;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v101;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v316;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v115;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v322 = v107;
      v323 = v107;
      v107 = v664;
      _os_log_impl(&_mh_execute_header, v323, v665, "Browse100ItemFolder %@ %s", v664, 0x16u);
      sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v320);

      sub_100047AB0(v107);

      goto LABEL_163;
    }

LABEL_162:

LABEL_163:
    (v635)(v639, v676);
    if (v666)
    {

      v303 = v677;
      v304 = v673;
      v305 = v674;
      v306 = v669;
      v307 = v669;
      v308 = 2;
      goto LABEL_154;
    }

    __break(1u);
    goto LABEL_271;
  }

  if (v677 == v103 && 0x8000000100075130 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v324 = swift_allocObject();
    v325 = v674;
    *(v324 + 2) = v674;
    v326 = swift_allocObject();
    *(v326 + 16) = v325;
    v662 = v107;
    v327 = Logger.logObject.getter();
    LODWORD(v665) = static os_log_type_t.debug.getter();
    v328 = swift_allocObject();
    *(v328 + 16) = 64;
    v329 = swift_allocObject();
    v114 = 8;
    *(v329 + 16) = 8;
    v330 = swift_allocObject();
    *(v330 + 16) = sub_1000355A8;
    *(v330 + 24) = v324;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v330;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v331 = swift_allocObject();
    *(v331 + 16) = 8;
    v332 = swift_allocObject();
    *(v332 + 16) = sub_1000355AC;
    *(v332 + 24) = v326;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100035528;
    *(v115 + 24) = v332;
    v333 = swift_allocObject();
    *(v333 + 16) = v664;
    *(v333 + 32) = sub_1000355C4;
    *(v333 + 40) = v328;
    *(v333 + 48) = sub_1000355C4;
    *(v333 + 56) = v329;
    *(v333 + 64) = sub_100035510;
    *(v333 + 72) = v103;
    *(v333 + 80) = sub_1000355C4;
    *(v333 + 88) = v101;
    *(v333 + 96) = sub_1000355C4;
    *(v333 + 104) = v331;
    *(v333 + 112) = sub_10003550C;
    *(v333 + 120) = v115;

    v107 = v327;
    if (os_log_type_enabled(v327, v665))
    {
      v334 = sub_100047A6C(22);
      v114 = swift_slowAlloc();
      v324 = swift_slowAlloc();
      v680 = v324;
      v681 = v114;
      *&v664 = v334;
      *v334 = 514;
      *&v678 = v334 + 1;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v328;
      v335 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v335)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v329;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v101;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v331;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v115;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v336 = v107;
      v337 = v107;
      v107 = v664;
      _os_log_impl(&_mh_execute_header, v337, v665, "Browse1000ItemFolder %@ %s", v664, 0x16u);
      sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v324);

      sub_100047AB0(v107);
    }

    else
    {
    }

    (v635)(v640, v676);
    if (v666)
    {

      v303 = v677;
      v304 = v673;
      v305 = v674;
      v306 = v669;
      v307 = v669;
      v308 = 4;
      goto LABEL_154;
    }

    __break(1u);
    goto LABEL_283;
  }

  if (v677 == v103 && 0x8000000100075110 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v338 = swift_allocObject();
    v339 = v674;
    *(v338 + 16) = v674;
    v340 = swift_allocObject();
    *(v340 + 16) = v339;
    v662 = v107;
    v341 = Logger.logObject.getter();
    LODWORD(v665) = static os_log_type_t.debug.getter();
    v342 = swift_allocObject();
    *(v342 + 16) = 64;
    v343 = swift_allocObject();
    v114 = 8;
    *(v343 + 16) = 8;
    v344 = swift_allocObject();
    *(v344 + 16) = sub_1000355A8;
    *(v344 + 24) = v338;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v344;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v345 = swift_allocObject();
    *(v345 + 16) = 8;
    v346 = swift_allocObject();
    *(v346 + 16) = sub_1000355AC;
    *(v346 + 24) = v340;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100035528;
    *(v115 + 24) = v346;
    v347 = swift_allocObject();
    *(v347 + 16) = v664;
    *(v347 + 32) = sub_1000355C4;
    *(v347 + 40) = v342;
    *(v347 + 48) = sub_1000355C4;
    *(v347 + 56) = v343;
    *(v347 + 64) = sub_100035510;
    *(v347 + 72) = v103;
    *(v347 + 80) = sub_1000355C4;
    *(v347 + 88) = v101;
    *(v347 + 96) = sub_1000355C4;
    *(v347 + 104) = v345;
    *(v347 + 112) = sub_10003550C;
    *(v347 + 120) = v115;

    v107 = v341;
    if (os_log_type_enabled(v341, v665))
    {
      v348 = sub_100047A6C(22);
      v114 = swift_slowAlloc();
      v349 = swift_slowAlloc();
      v680 = v349;
      v681 = v114;
      *&v664 = v348;
      *v348 = 514;
      *&v678 = v348 + 1;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v342;
      v350 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v350)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v343;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v101;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v345;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v115;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v351 = v107;
      v352 = v107;
      v107 = v664;
      _os_log_impl(&_mh_execute_header, v352, v665, "ScrollBrowse %@ %s", v664, 0x16u);
      sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v349);

      sub_100047AB0(v107);

      goto LABEL_185;
    }

LABEL_184:

LABEL_185:
    (v635)(v641, v676);
    if (v666)
    {

      v353 = swift_allocObject();
      v354 = v667;
      v355 = v677;
      v353[2] = v667;
      v353[3] = v355;
      v180 = v674;
      v353[4] = v673;
      v353[5] = v180;
      v356 = v666;
      v353[6] = 0;
      v353[7] = v356;
      v181 = swift_allocObject();
      v181[2] = sub_100034CCC;
      v181[3] = v353;
      v181[4] = v354;
      v181[5] = v180;
      v357 = v354;
      v358 = v662;

      v359 = v357;
      v185 = v358;

      goto LABEL_92;
    }

    __break(1u);
    goto LABEL_287;
  }

  if (v677 == v103 + 14 && 0x80000001000750E0 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v360 = swift_allocObject();
    v361 = v674;
    *(v360 + 16) = v674;
    v362 = swift_allocObject();
    *(v362 + 16) = v361;
    v662 = v107;
    v363 = Logger.logObject.getter();
    LODWORD(v665) = static os_log_type_t.debug.getter();
    v364 = swift_allocObject();
    *(v364 + 16) = 64;
    v365 = swift_allocObject();
    v114 = 8;
    *(v365 + 16) = 8;
    v366 = swift_allocObject();
    *(v366 + 16) = sub_1000355A8;
    *(v366 + 24) = v360;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v366;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v367 = swift_allocObject();
    *(v367 + 16) = 8;
    v368 = swift_allocObject();
    *(v368 + 16) = sub_1000355AC;
    *(v368 + 24) = v362;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100035528;
    *(v115 + 24) = v368;
    v369 = swift_allocObject();
    *(v369 + 16) = v664;
    *(v369 + 32) = sub_1000355C4;
    *(v369 + 40) = v364;
    *(v369 + 48) = sub_1000355C4;
    *(v369 + 56) = v365;
    *(v369 + 64) = sub_100035510;
    *(v369 + 72) = v103;
    *(v369 + 80) = sub_1000355C4;
    *(v369 + 88) = v101;
    *(v369 + 96) = sub_1000355C4;
    *(v369 + 104) = v367;
    *(v369 + 112) = sub_10003550C;
    *(v369 + 120) = v115;

    v107 = v363;
    if (os_log_type_enabled(v363, v665))
    {
      v370 = sub_100047A6C(22);
      v114 = swift_slowAlloc();
      v371 = swift_slowAlloc();
      v680 = v371;
      v681 = v114;
      *&v664 = v370;
      *v370 = 514;
      *&v678 = v370 + 1;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v364;
      v372 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v372)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v365;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v101;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v367;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v115;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v373 = v107;
      v374 = v107;
      v107 = v664;
      _os_log_impl(&_mh_execute_header, v374, v665, "SwitchBrowseViewModeFromGridToList %@ %s", v664, 0x16u);
      sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v371);

      sub_100047AB0(v107);

      goto LABEL_195;
    }

LABEL_194:

LABEL_195:
    (v635)(v642, v676);
    if (!v666)
    {
LABEL_287:
      __break(1u);
      goto LABEL_288;
    }

    v375 = swift_allocObject();
    v376 = v667;
    v377 = v677;
    v375[2] = v667;
    v375[3] = v377;
    v378 = v674;
    v375[4] = v673;
    v375[5] = v378;
    v375[6] = 2;
    v181 = swift_allocObject();
    v181[2] = sub_1000355C8;
    v181[3] = v375;
    v181[4] = v376;
    v181[5] = v378;
    v379 = v376;
    v380 = v662;

    v381 = v379;
    v185 = v380;

LABEL_218:
    v186 = v669;
    v187 = v669;
    v188 = v378;
    goto LABEL_93;
  }

  if (v677 == v103 + 16 && 0x80000001000750B0 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v382 = swift_allocObject();
    v383 = v674;
    *(v382 + 16) = v674;
    v384 = swift_allocObject();
    *(v384 + 16) = v383;
    v662 = v107;
    v385 = Logger.logObject.getter();
    LODWORD(v665) = static os_log_type_t.debug.getter();
    v386 = swift_allocObject();
    *(v386 + 16) = 64;
    v387 = swift_allocObject();
    v114 = 8;
    *(v387 + 16) = 8;
    v388 = swift_allocObject();
    *(v388 + 16) = sub_1000355A8;
    *(v388 + 24) = v382;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v388;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v389 = swift_allocObject();
    *(v389 + 16) = 8;
    v390 = swift_allocObject();
    *(v390 + 16) = sub_1000355AC;
    *(v390 + 24) = v384;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100035528;
    *(v115 + 24) = v390;
    v391 = swift_allocObject();
    *(v391 + 16) = v664;
    *(v391 + 32) = sub_1000355C4;
    *(v391 + 40) = v386;
    *(v391 + 48) = sub_1000355C4;
    *(v391 + 56) = v387;
    *(v391 + 64) = sub_100035510;
    *(v391 + 72) = v103;
    *(v391 + 80) = sub_1000355C4;
    *(v391 + 88) = v101;
    *(v391 + 96) = sub_1000355C4;
    *(v391 + 104) = v389;
    *(v391 + 112) = sub_10003550C;
    *(v391 + 120) = v115;

    v107 = v385;
    if (os_log_type_enabled(v385, v665))
    {
      v392 = sub_100047A6C(22);
      v114 = swift_slowAlloc();
      v393 = swift_slowAlloc();
      v680 = v393;
      v681 = v114;
      *&v664 = v392;
      *v392 = 514;
      *&v678 = v392 + 1;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v386;
      v394 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v394)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v387;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v101;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v389;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v115;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v395 = v107;
      v396 = v107;
      v107 = v664;
      _os_log_impl(&_mh_execute_header, v396, v665, "SwitchBrowseViewModeFromGridToColumn %@ %s", v664, 0x16u);
      sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v393);

      sub_100047AB0(v107);

      goto LABEL_205;
    }

LABEL_204:

LABEL_205:
    (v635)(v643, v676);
    if (!v666)
    {
LABEL_288:
      __break(1u);
      goto LABEL_289;
    }

    v397 = swift_allocObject();
    v398 = v667;
    v399 = v677;
    v397[2] = v667;
    v397[3] = v399;
    v378 = v674;
    v397[4] = v673;
    v397[5] = v378;
    v397[6] = 3;
    v181 = swift_allocObject();
    v181[2] = sub_1000355C8;
    v181[3] = v397;
    v181[4] = v398;
    v181[5] = v378;
    v400 = v398;
    v401 = v662;

    v402 = v400;
    v185 = v401;

    goto LABEL_218;
  }

  if (v677 == v103 + 14 && 0x8000000100075080 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v403 = swift_allocObject();
    v404 = v674;
    *(v403 + 16) = v674;
    v405 = swift_allocObject();
    *(v405 + 16) = v404;
    v662 = v107;
    v406 = Logger.logObject.getter();
    LODWORD(v665) = static os_log_type_t.debug.getter();
    v407 = swift_allocObject();
    *(v407 + 16) = 64;
    v408 = swift_allocObject();
    v114 = 8;
    *(v408 + 16) = 8;
    v409 = swift_allocObject();
    *(v409 + 16) = sub_1000355A8;
    *(v409 + 24) = v403;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v409;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v410 = swift_allocObject();
    *(v410 + 16) = 8;
    v411 = swift_allocObject();
    *(v411 + 16) = sub_1000355AC;
    *(v411 + 24) = v405;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100035528;
    *(v115 + 24) = v411;
    v412 = swift_allocObject();
    *(v412 + 16) = v664;
    *(v412 + 32) = sub_1000355C4;
    *(v412 + 40) = v407;
    *(v412 + 48) = sub_1000355C4;
    *(v412 + 56) = v408;
    *(v412 + 64) = sub_100035510;
    *(v412 + 72) = v103;
    *(v412 + 80) = sub_1000355C4;
    *(v412 + 88) = v101;
    *(v412 + 96) = sub_1000355C4;
    *(v412 + 104) = v410;
    *(v412 + 112) = sub_10003550C;
    *(v412 + 120) = v115;

    v107 = v406;
    if (os_log_type_enabled(v406, v665))
    {
      v413 = sub_100047A6C(22);
      v114 = swift_slowAlloc();
      v414 = swift_slowAlloc();
      v680 = v414;
      v681 = v114;
      *&v664 = v413;
      *v413 = 514;
      *&v678 = v413 + 1;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v407;
      v415 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v415)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v408;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v101;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v410;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v115;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v416 = v107;
      v417 = v107;
      v107 = v664;
      _os_log_impl(&_mh_execute_header, v417, v665, "SwitchBrowseViewModeFromListToGrid %@ %s", v664, 0x16u);
      sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v414);

      sub_100047AB0(v107);

      goto LABEL_216;
    }

LABEL_215:

LABEL_216:
    (v635)(v644, v676);
    if (!v666)
    {
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
      goto LABEL_293;
    }

    v418 = swift_allocObject();
    v419 = v667;
    v420 = v677;
    v418[2] = v667;
    v418[3] = v420;
    v378 = v674;
    v418[4] = v673;
    v418[5] = v378;
    v418[6] = 0;
    v181 = swift_allocObject();
    v181[2] = sub_100034C9C;
    v181[3] = v418;
    v181[4] = v419;
    v181[5] = v378;
    v421 = v419;
    v422 = v662;

    v423 = v421;
    v185 = v422;

    goto LABEL_218;
  }

  if (v677 == v101 && 0x8000000100075060 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v424 = swift_allocObject();
    v425 = v674;
    *(v424 + 16) = v674;
    v426 = swift_allocObject();
    *(v426 + 16) = v425;
    v662 = v107;
    v427 = Logger.logObject.getter();
    LODWORD(v665) = static os_log_type_t.debug.getter();
    v428 = swift_allocObject();
    *(v428 + 16) = 64;
    v429 = swift_allocObject();
    v114 = 8;
    *(v429 + 16) = 8;
    v430 = swift_allocObject();
    *(v430 + 16) = sub_1000355A8;
    *(v430 + 24) = v424;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v430;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v431 = swift_allocObject();
    *(v431 + 16) = 8;
    v432 = swift_allocObject();
    *(v432 + 16) = sub_1000355AC;
    *(v432 + 24) = v426;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100035528;
    *(v115 + 24) = v432;
    v433 = swift_allocObject();
    *(v433 + 16) = v664;
    *(v433 + 32) = sub_1000355C4;
    *(v433 + 40) = v428;
    *(v433 + 48) = sub_1000355C4;
    *(v433 + 56) = v429;
    *(v433 + 64) = sub_100035510;
    *(v433 + 72) = v103;
    *(v433 + 80) = sub_1000355C4;
    *(v433 + 88) = v101;
    *(v433 + 96) = sub_1000355C4;
    *(v433 + 104) = v431;
    *(v433 + 112) = sub_10003550C;
    *(v433 + 120) = v115;

    v107 = v427;
    if (os_log_type_enabled(v427, v665))
    {
      v434 = sub_100047A6C(22);
      v114 = swift_slowAlloc();
      v435 = swift_slowAlloc();
      v680 = v435;
      v681 = v114;
      *&v664 = v434;
      *v434 = 514;
      *&v678 = v434 + 1;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v428;
      v436 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v436)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v429;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v101;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v431;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v115;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v437 = v107;
      v438 = v107;
      v107 = v664;
      _os_log_impl(&_mh_execute_header, v438, v665, "Browse300ItemFolder %@ %s", v664, 0x16u);
      sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v435);

      sub_100047AB0(v107);

LABEL_228:
      (v635)(v645, v676);
      if (v666)
      {

        v303 = v677;
        v304 = v673;
        v305 = v674;
        v306 = v669;
        v307 = v669;
        v308 = 3;
        goto LABEL_154;
      }

      goto LABEL_290;
    }

LABEL_227:

    goto LABEL_228;
  }

  if (v677 == v103 + 2 && 0x8000000100075040 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v439 = swift_allocObject();
    v440 = v674;
    *(v439 + 16) = v674;
    v441 = swift_allocObject();
    *(v441 + 16) = v440;
    v662 = v107;
    v442 = Logger.logObject.getter();
    LODWORD(v665) = static os_log_type_t.debug.getter();
    v443 = swift_allocObject();
    *(v443 + 16) = 64;
    v444 = swift_allocObject();
    v114 = 8;
    *(v444 + 16) = 8;
    v445 = swift_allocObject();
    *(v445 + 16) = sub_1000355A8;
    *(v445 + 24) = v439;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v445;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v446 = swift_allocObject();
    *(v446 + 16) = 8;
    v447 = swift_allocObject();
    *(v447 + 16) = sub_1000355AC;
    *(v447 + 24) = v441;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100035528;
    *(v115 + 24) = v447;
    v448 = swift_allocObject();
    *(v448 + 16) = v664;
    *(v448 + 32) = sub_1000355C4;
    *(v448 + 40) = v443;
    *(v448 + 48) = sub_1000355C4;
    *(v448 + 56) = v444;
    *(v448 + 64) = sub_100035510;
    *(v448 + 72) = v103;
    *(v448 + 80) = sub_1000355C4;
    *(v448 + 88) = v101;
    *(v448 + 96) = sub_1000355C4;
    *(v448 + 104) = v446;
    *(v448 + 112) = sub_10003550C;
    *(v448 + 120) = v115;

    v107 = v442;
    if (os_log_type_enabled(v442, v665))
    {
      v449 = sub_100047A6C(22);
      v114 = swift_slowAlloc();
      v450 = swift_slowAlloc();
      v680 = v450;
      v681 = v114;
      *&v664 = v449;
      *v449 = 514;
      *&v678 = v449 + 1;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v443;
      v451 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v451)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v444;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v101;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v446;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v115;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v452 = v107;
      v453 = v107;
      v107 = v664;
      _os_log_impl(&_mh_execute_header, v453, v665, "BrowseSMB300ItemFolder %@ %s", v664, 0x16u);
      sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v450);

      sub_100047AB0(v107);

      goto LABEL_238;
    }

LABEL_237:

LABEL_238:
    (v635)(v646, v676);
    if (v666)
    {

      v454 = &DOCDocumentSourceIdentifierSMBFileProvider;
LABEL_240:
      v455 = *v454;
      v456 = v677;
      v457 = v673;
      v458 = v674;
      v459 = 3;
LABEL_241:
      sub_100030D04(v456, v457, v455, v458, 0, v459);
      goto LABEL_131;
    }

    goto LABEL_291;
  }

  if (v677 == v103 + 2 && 0x8000000100075020 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v460 = swift_allocObject();
    v461 = v674;
    *(v460 + 16) = v674;
    v462 = swift_allocObject();
    *(v462 + 16) = v461;
    v662 = v107;
    v463 = Logger.logObject.getter();
    LODWORD(v665) = static os_log_type_t.debug.getter();
    v464 = swift_allocObject();
    *(v464 + 16) = 64;
    v465 = swift_allocObject();
    v114 = 8;
    *(v465 + 16) = 8;
    v466 = swift_allocObject();
    *(v466 + 16) = sub_1000355A8;
    *(v466 + 24) = v460;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v466;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v467 = swift_allocObject();
    *(v467 + 16) = 8;
    v468 = swift_allocObject();
    *(v468 + 16) = sub_1000355AC;
    *(v468 + 24) = v462;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100035528;
    *(v115 + 24) = v468;
    v469 = swift_allocObject();
    *(v469 + 16) = v664;
    *(v469 + 32) = sub_1000355C4;
    *(v469 + 40) = v464;
    *(v469 + 48) = sub_1000355C4;
    *(v469 + 56) = v465;
    *(v469 + 64) = sub_100035510;
    *(v469 + 72) = v103;
    *(v469 + 80) = sub_1000355C4;
    *(v469 + 88) = v101;
    *(v469 + 96) = sub_1000355C4;
    *(v469 + 104) = v467;
    *(v469 + 112) = sub_10003550C;
    *(v469 + 120) = v115;

    v107 = v463;
    if (os_log_type_enabled(v463, v665))
    {
      v470 = sub_100047A6C(22);
      v114 = swift_slowAlloc();
      v471 = swift_slowAlloc();
      v680 = v471;
      v681 = v114;
      *&v664 = v470;
      *v470 = 514;
      *&v678 = v470 + 1;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v464;
      v472 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v472)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v465;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v101;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v467;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v115;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v473 = v107;
      v474 = v107;
      v107 = v664;
      _os_log_impl(&_mh_execute_header, v474, v665, "BrowseUSB300ItemFolder %@ %s", v664, 0x16u);
      sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v471);

      sub_100047AB0(v107);

      goto LABEL_250;
    }

LABEL_249:

LABEL_250:
    (v635)(v647, v676);
    if (v666)
    {

      v454 = &DOCDocumentSourceIdentifierExternalDeviceFileProvider;
      goto LABEL_240;
    }

    goto LABEL_292;
  }

  if (v677 == v103 + 6 && 0x8000000100075000 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v475 = swift_allocObject();
    v476 = v674;
    *(v475 + 16) = v674;
    v477 = swift_allocObject();
    *(v477 + 16) = v476;
    v662 = v107;
    v478 = Logger.logObject.getter();
    LODWORD(v665) = static os_log_type_t.debug.getter();
    v479 = swift_allocObject();
    *(v479 + 16) = 64;
    v480 = swift_allocObject();
    v114 = 8;
    *(v480 + 16) = 8;
    v481 = swift_allocObject();
    *(v481 + 16) = sub_1000355A8;
    *(v481 + 24) = v475;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v481;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v482 = swift_allocObject();
    *(v482 + 16) = 8;
    v483 = swift_allocObject();
    *(v483 + 16) = sub_1000355AC;
    *(v483 + 24) = v477;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100035528;
    *(v115 + 24) = v483;
    v484 = swift_allocObject();
    *(v484 + 16) = v664;
    *(v484 + 32) = sub_1000355C4;
    *(v484 + 40) = v479;
    *(v484 + 48) = sub_1000355C4;
    *(v484 + 56) = v480;
    *(v484 + 64) = sub_100035510;
    *(v484 + 72) = v103;
    *(v484 + 80) = sub_1000355C4;
    *(v484 + 88) = v101;
    *(v484 + 96) = sub_1000355C4;
    *(v484 + 104) = v482;
    *(v484 + 112) = sub_10003550C;
    *(v484 + 120) = v115;

    v107 = v478;
    if (os_log_type_enabled(v478, v665))
    {
      v485 = sub_100047A6C(22);
      v114 = swift_slowAlloc();
      v486 = swift_slowAlloc();
      v680 = v486;
      v681 = v114;
      *&v664 = v485;
      *v485 = 514;
      *&v678 = v485 + 1;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v479;
      v487 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v487)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v480;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v101;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v482;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v115;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v488 = v107;
      v489 = v107;
      v107 = v664;
      _os_log_impl(&_mh_execute_header, v489, v665, "SwitchLocationToiCloudTest %@ %s", v664, 0x16u);
      sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v486);

      sub_100047AB0(v107);

      goto LABEL_260;
    }

LABEL_259:

LABEL_260:
    (v635)(v648, v676);
    if (!v666)
    {
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
      goto LABEL_295;
    }

    v490 = static DOCDocumentSourceIdentifier.iCloudCurrent.getter();
    v491 = swift_allocObject();
    v492 = v667;
    v493 = v677;
    v491[2] = v667;
    v491[3] = v493;
    v494 = v674;
    v491[4] = v673;
    v491[5] = v494;

    v495 = v492;
    v496 = v662;
    sub_1000144AC(v490, v494, sub_100035508, v491);

    goto LABEL_262;
  }

  if (v677 == v102 && 0x8000000100074FE0 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v497 = swift_allocObject();
    v498 = v674;
    *(v497 + 16) = v674;
    v499 = swift_allocObject();
    *(v499 + 16) = v498;
    v662 = v107;
    v500 = Logger.logObject.getter();
    LODWORD(v665) = static os_log_type_t.debug.getter();
    v501 = swift_allocObject();
    *(v501 + 16) = 64;
    v502 = swift_allocObject();
    v114 = 8;
    *(v502 + 16) = 8;
    v503 = swift_allocObject();
    *(v503 + 16) = sub_1000355A8;
    *(v503 + 24) = v497;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v503;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v504 = swift_allocObject();
    *(v504 + 16) = 8;
    v505 = swift_allocObject();
    *(v505 + 16) = sub_1000355AC;
    *(v505 + 24) = v499;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100035528;
    *(v115 + 24) = v505;
    v506 = swift_allocObject();
    *(v506 + 16) = v664;
    *(v506 + 32) = sub_1000355C4;
    *(v506 + 40) = v501;
    *(v506 + 48) = sub_1000355C4;
    *(v506 + 56) = v502;
    *(v506 + 64) = sub_100035510;
    *(v506 + 72) = v103;
    *(v506 + 80) = sub_1000355C4;
    *(v506 + 88) = v101;
    *(v506 + 96) = sub_1000355C4;
    *(v506 + 104) = v504;
    *(v506 + 112) = sub_10003550C;
    *(v506 + 120) = v115;

    v107 = v500;
    if (os_log_type_enabled(v500, v665))
    {
      v507 = sub_100047A6C(22);
      v114 = swift_slowAlloc();
      v508 = swift_slowAlloc();
      v680 = v508;
      v681 = v114;
      *&v664 = v507;
      *v507 = 514;
      *&v678 = v507 + 1;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v501;
      v509 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v509)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v502;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v101;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v504;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v115;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v510 = v107;
      v511 = v107;
      v107 = v664;
      _os_log_impl(&_mh_execute_header, v511, v665, "SwitchLocationToSMBTest %@ %s", v664, 0x16u);
      sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v508);

      sub_100047AB0(v107);

      goto LABEL_272;
    }

LABEL_271:

LABEL_272:
    (v635)(v649, v676);
    if (v666)
    {

      v455 = DOCDocumentSourceIdentifierSMBFileProvider;
      v456 = v677;
      v457 = v673;
      v458 = v674;
      v459 = 5;
      goto LABEL_241;
    }

    goto LABEL_294;
  }

  if (v677 == v102 && 0x8000000100074FC0 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v324 = swift_allocObject();
    v512 = v674;
    *(v324 + 2) = v674;
    v513 = swift_allocObject();
    *(v513 + 16) = v512;
    v662 = v107;
    v514 = Logger.logObject.getter();
    LODWORD(v665) = static os_log_type_t.debug.getter();
    v515 = swift_allocObject();
    *(v515 + 16) = 64;
    v516 = swift_allocObject();
    v114 = 8;
    *(v516 + 16) = 8;
    v517 = swift_allocObject();
    *(v517 + 16) = sub_1000355A8;
    *(v517 + 24) = v324;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v517;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v518 = swift_allocObject();
    *(v518 + 16) = 8;
    v519 = swift_allocObject();
    *(v519 + 16) = sub_1000355AC;
    *(v519 + 24) = v513;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100035528;
    *(v115 + 24) = v519;
    v520 = swift_allocObject();
    *(v520 + 16) = v664;
    *(v520 + 32) = sub_1000355C4;
    *(v520 + 40) = v515;
    *(v520 + 48) = sub_1000355C4;
    *(v520 + 56) = v516;
    *(v520 + 64) = sub_100035510;
    *(v520 + 72) = v103;
    *(v520 + 80) = sub_1000355C4;
    *(v520 + 88) = v101;
    *(v520 + 96) = sub_1000355C4;
    *(v520 + 104) = v518;
    *(v520 + 112) = sub_10003550C;
    *(v520 + 120) = v115;

    v107 = v514;
    if (os_log_type_enabled(v514, v665))
    {
      v521 = sub_100047A6C(22);
      v114 = swift_slowAlloc();
      v324 = swift_slowAlloc();
      v680 = v324;
      v681 = v114;
      *&v664 = v521;
      *v521 = 514;
      *&v678 = v521 + 1;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v515;
      v522 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v522)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v516;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v101;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v518;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v115;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v523 = v107;
      v524 = v107;
      v107 = v664;
      _os_log_impl(&_mh_execute_header, v524, v665, "SwitchLocationToUSBTest %@ %s", v664, 0x16u);
      sub_100005A04(v114, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v324);

      sub_100047AB0(v107);

      goto LABEL_284;
    }

LABEL_283:

LABEL_284:
    (v635)(v650, v676);
    if (!v666)
    {
      __break(1u);
      goto LABEL_302;
    }

    v525 = DOCDocumentSourceIdentifierExternalDeviceFileProvider;
    v526 = swift_allocObject();
    v527 = v667;
    v528 = v677;
    v526[2] = v667;
    v526[3] = v528;
    v529 = v674;
    v526[4] = v673;
    v526[5] = v529;

    v530 = v527;
    v496 = v662;
    sub_1000144AC(v525, v529, sub_100034C90, v526);
LABEL_262:

    goto LABEL_52;
  }

LABEL_295:
  v324 = v103 - 2;
  if (v677 == v103 - 2 && 0x8000000100074FA0 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v324 = swift_allocObject();
    v531 = v674;
    *(v324 + 2) = v674;
    v532 = swift_allocObject();
    *(v532 + 16) = v531;
    v661 = v107;
    v533 = Logger.logObject.getter();
    LODWORD(v662) = static os_log_type_t.debug.getter();
    v534 = swift_allocObject();
    *(v534 + 16) = 64;
    v535 = swift_allocObject();
    *(v535 + 16) = 8;
    v536 = swift_allocObject();
    *(v536 + 16) = sub_1000355A8;
    *(v536 + 24) = v324;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v536;
    v537 = swift_allocObject();
    *(v537 + 16) = 32;
    v538 = swift_allocObject();
    *(v538 + 16) = 8;
    v539 = swift_allocObject();
    *(v539 + 16) = sub_1000355AC;
    *(v539 + 24) = v532;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100035528;
    *(v115 + 24) = v539;
    v107 = swift_allocObject();
    *(v107 + 1) = v664;
    *(v107 + 4) = sub_1000355C4;
    *(v107 + 5) = v534;
    *(v107 + 6) = sub_1000355C4;
    *(v107 + 7) = v535;
    *(v107 + 8) = sub_100035510;
    *(v107 + 9) = v103;
    *(v107 + 10) = sub_1000355C4;
    *(v107 + 11) = v537;
    *(v107 + 12) = sub_1000355C4;
    *(v107 + 13) = v538;
    *(v107 + 14) = sub_10003550C;
    *(v107 + 15) = v115;

    v665 = v533;
    if (os_log_type_enabled(v533, v662))
    {
      v107 = sub_100047A6C(22);
      v540 = swift_slowAlloc();
      v324 = swift_slowAlloc();
      v680 = v324;
      v681 = v540;
      *v107 = 514;
      *&v678 = v107 + 2;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v534;
      v541 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v541)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v535;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v537;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v538;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v115;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v542 = v665;
      _os_log_impl(&_mh_execute_header, v665, v662, "OpenQuickLookImage %@ %s", v107, 0x16u);
      sub_100005A04(v540, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v324);

      sub_100047AB0(v107);
    }

    else
    {
    }

    (v635)(v651, v676);
    if (v666)
    {

      v556 = DOCDocumentSourceIdentifierLocal;
      v557 = v677;
      v558 = v673;
      v559 = v674;
      v560 = v666;
      v561 = 6;
LABEL_321:
      sub_10001DC5C(v557, v558, v560, v556, v559, 0, v561);
      v271 = &v684 + 1;
      goto LABEL_132;
    }

    __break(1u);
    goto LABEL_323;
  }

LABEL_302:
  if (v677 == v114 && 0x8000000100074F80 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v324 = swift_allocObject();
    v543 = v674;
    *(v324 + 2) = v674;
    v544 = swift_allocObject();
    *(v544 + 16) = v543;
    v661 = v107;
    v545 = Logger.logObject.getter();
    LODWORD(v662) = static os_log_type_t.debug.getter();
    v546 = swift_allocObject();
    *(v546 + 16) = 64;
    v547 = swift_allocObject();
    *(v547 + 16) = 8;
    v548 = swift_allocObject();
    *(v548 + 16) = sub_1000355A8;
    *(v548 + 24) = v324;
    v103 = swift_allocObject();
    *(v103 + 2) = sub_10003552C;
    *(v103 + 3) = v548;
    v549 = swift_allocObject();
    *(v549 + 16) = 32;
    v550 = swift_allocObject();
    *(v550 + 16) = 8;
    v551 = swift_allocObject();
    *(v551 + 16) = sub_1000355AC;
    *(v551 + 24) = v544;
    v552 = swift_allocObject();
    *(v552 + 16) = sub_100035528;
    *(v552 + 24) = v551;
    v107 = swift_allocObject();
    *(v107 + 1) = v664;
    *(v107 + 4) = sub_1000355C4;
    *(v107 + 5) = v546;
    *(v107 + 6) = sub_1000355C4;
    *(v107 + 7) = v547;
    *(v107 + 8) = sub_100035510;
    *(v107 + 9) = v103;
    *(v107 + 10) = sub_1000355C4;
    *(v107 + 11) = v549;
    *(v107 + 12) = sub_1000355C4;
    *(v107 + 13) = v550;
    *(v107 + 14) = sub_10003550C;
    *(v107 + 15) = v552;

    v665 = v545;
    if (os_log_type_enabled(v545, v662))
    {
      v107 = sub_100047A6C(22);
      v553 = swift_slowAlloc();
      v324 = swift_slowAlloc();
      v680 = v324;
      v681 = v553;
      *v107 = 514;
      *&v678 = v107 + 2;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v546;
      v554 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v554)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v547;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v103;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v549;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v550;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v552;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v555 = v665;
      _os_log_impl(&_mh_execute_header, v665, v662, "OpenQuickLookPDF %@ %s", v107, 0x16u);
      sub_100005A04(v553, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v324);

      sub_100047AB0(v107);
    }

    else
    {
    }

    (v635)(v652, v676);
    if (v666)
    {

      v556 = DOCDocumentSourceIdentifierLocal;
      v557 = v677;
      v558 = v673;
      v559 = v674;
      v560 = v666;
      v561 = 7;
      goto LABEL_321;
    }

    __break(1u);
    goto LABEL_333;
  }

  if (v677 == v101 && 0x8000000100074F60 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v324 = swift_allocObject();
    v562 = v674;
    *(v324 + 2) = v674;
    v563 = swift_allocObject();
    *(v563 + 16) = v562;
    v661 = v107;
    v564 = Logger.logObject.getter();
    LODWORD(v662) = static os_log_type_t.debug.getter();
    v565 = swift_allocObject();
    *(v565 + 16) = 64;
    v566 = swift_allocObject();
    *(v566 + 16) = 8;
    v567 = swift_allocObject();
    *(v567 + 16) = sub_1000355A8;
    *(v567 + 24) = v324;
    v568 = swift_allocObject();
    *(v568 + 16) = sub_10003552C;
    *(v568 + 24) = v567;
    v569 = swift_allocObject();
    *(v569 + 16) = 32;
    v570 = swift_allocObject();
    *(v570 + 16) = 8;
    v571 = swift_allocObject();
    *(v571 + 16) = sub_1000355AC;
    *(v571 + 24) = v563;
    v572 = swift_allocObject();
    *(v572 + 16) = sub_100035528;
    *(v572 + 24) = v571;
    v107 = swift_allocObject();
    *(v107 + 1) = v664;
    *(v107 + 4) = sub_1000355C4;
    *(v107 + 5) = v565;
    *(v107 + 6) = sub_1000355C4;
    *(v107 + 7) = v566;
    *(v107 + 8) = sub_100035510;
    *(v107 + 9) = v568;
    *(v107 + 10) = sub_1000355C4;
    *(v107 + 11) = v569;
    *(v107 + 12) = sub_1000355C4;
    *(v107 + 13) = v570;
    *(v107 + 14) = sub_10003550C;
    *(v107 + 15) = v572;

    v665 = v564;
    if (os_log_type_enabled(v564, v662))
    {
      v107 = sub_100047A6C(22);
      v573 = swift_slowAlloc();
      v324 = swift_slowAlloc();
      v680 = v324;
      v681 = v573;
      *v107 = 514;
      *&v678 = v107 + 2;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v565;
      v574 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v574)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v566;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v568;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v569;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v570;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v572;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v575 = v665;
      _os_log_impl(&_mh_execute_header, v665, v662, "CloseQuickLookImage %@ %s", v107, 0x16u);
      sub_100005A04(v573, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v324);

      sub_100047AB0(v107);
    }

    else
    {
    }

    (v635)(v653, v676);
    if (v666)
    {

      v592 = DOCDocumentSourceIdentifierLocal;
      v593 = v677;
      v594 = v673;
      v595 = v674;
      v596 = v666;
      v597 = 6;
LABEL_342:
      sub_10001E3D8(v593, v594, v596, v592, v595, 0, v597);
      v271 = &v684 + 1;
      goto LABEL_132;
    }

    __break(1u);
    goto LABEL_344;
  }

LABEL_323:
  if (v677 == v115 && 0x8000000100074F40 == v673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Logger.Tests.getter();
    v576 = swift_allocObject();
    v577 = v674;
    *(v576 + 16) = v674;
    v578 = swift_allocObject();
    *(v578 + 16) = v577;
    v661 = v107;
    v579 = Logger.logObject.getter();
    LODWORD(v662) = static os_log_type_t.debug.getter();
    v580 = swift_allocObject();
    *(v580 + 16) = 64;
    v581 = swift_allocObject();
    *(v581 + 16) = 8;
    v582 = swift_allocObject();
    *(v582 + 16) = sub_1000355A8;
    *(v582 + 24) = v576;
    v583 = swift_allocObject();
    *(v583 + 16) = sub_10003552C;
    *(v583 + 24) = v582;
    v584 = swift_allocObject();
    *(v584 + 16) = 32;
    v585 = swift_allocObject();
    *(v585 + 16) = 8;
    v586 = swift_allocObject();
    *(v586 + 16) = sub_1000355AC;
    *(v586 + 24) = v578;
    v587 = swift_allocObject();
    *(v587 + 16) = sub_100035528;
    *(v587 + 24) = v586;
    v107 = swift_allocObject();
    *(v107 + 1) = v664;
    *(v107 + 4) = sub_1000355C4;
    *(v107 + 5) = v580;
    *(v107 + 6) = sub_1000355C4;
    *(v107 + 7) = v581;
    *(v107 + 8) = sub_100035510;
    *(v107 + 9) = v583;
    *(v107 + 10) = sub_1000355C4;
    *(v107 + 11) = v584;
    *(v107 + 12) = sub_1000355C4;
    *(v107 + 13) = v585;
    *(v107 + 14) = sub_10003550C;
    *(v107 + 15) = v587;

    v665 = v579;
    if (!os_log_type_enabled(v579, v662))
    {

      goto LABEL_340;
    }

    v107 = sub_100047A6C(22);
    v588 = swift_slowAlloc();
    v589 = swift_slowAlloc();
    v680 = v589;
    v681 = v588;
    *v107 = 514;
    *&v678 = v107 + 2;
    *&v683 = sub_1000355C4;
    *(&v683 + 1) = v580;
    v590 = v672;
    sub_100047A74(&v683, &v678, &v681, &v680);
    if (!v590)
    {

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v581;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100035510;
      *(&v683 + 1) = v583;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v584;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v585;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v587;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v591 = v665;
      _os_log_impl(&_mh_execute_header, v665, v662, "CloseQuickLookPDF %@ %s", v107, 0x16u);
      sub_100005A04(v588, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v589);

      sub_100047AB0(v107);

LABEL_340:
      (v635)(v654, v676);
      if (v666)
      {

        v592 = DOCDocumentSourceIdentifierLocal;
        v593 = v677;
        v594 = v673;
        v595 = v674;
        v596 = v666;
        v597 = 7;
        goto LABEL_342;
      }

      __break(1u);
      goto LABEL_355;
    }

LABEL_213:

    while (1)
    {

      __break(1u);
    }
  }

LABEL_333:
  if ((v677 != v103 + 5 || 0x8000000100074F20 != v673) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_344:
    if ((v677 != v324 || 0x8000000100074F00 != v673) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_355:

      v119 = String._bridgeToObjectiveC()();
      v105 = v636;
      v111 = v668;
      goto LABEL_38;
    }

    static Logger.Tests.getter();
    v616 = swift_allocObject();
    v617 = v674;
    *(v616 + 16) = v674;
    v618 = swift_allocObject();
    *(v618 + 16) = v617;
    v661 = v107;
    v619 = Logger.logObject.getter();
    LODWORD(v662) = static os_log_type_t.debug.getter();
    v620 = swift_allocObject();
    *(v620 + 16) = 64;
    v621 = swift_allocObject();
    *(v621 + 16) = 8;
    v622 = swift_allocObject();
    *(v622 + 16) = sub_1000355A8;
    *(v622 + 24) = v616;
    v623 = swift_allocObject();
    *(v623 + 16) = sub_100034C80;
    *(v623 + 24) = v622;
    v624 = swift_allocObject();
    *(v624 + 16) = 32;
    v625 = swift_allocObject();
    *(v625 + 16) = 8;
    v626 = swift_allocObject();
    *(v626 + 16) = sub_1000355AC;
    *(v626 + 24) = v618;
    v627 = swift_allocObject();
    *(v627 + 16) = sub_100035528;
    *(v627 + 24) = v626;
    v628 = swift_allocObject();
    *(v628 + 16) = v664;
    *(v628 + 32) = sub_1000355C4;
    *(v628 + 40) = v620;
    *(v628 + 48) = sub_1000355C4;
    *(v628 + 56) = v621;
    *(v628 + 64) = sub_100034C88;
    *(v628 + 72) = v623;
    *(v628 + 80) = sub_1000355C4;
    *(v628 + 88) = v624;
    *(v628 + 96) = sub_1000355C4;
    *(v628 + 104) = v625;
    *(v628 + 112) = sub_10003550C;
    *(v628 + 120) = v627;

    v665 = v619;
    if (os_log_type_enabled(v619, v662))
    {
      v629 = sub_100047A6C(22);
      v630 = swift_slowAlloc();
      v631 = swift_slowAlloc();
      v680 = v631;
      v681 = v630;
      *v629 = 514;
      *&v678 = v629 + 2;
      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v620;
      v632 = v672;
      sub_100047A74(&v683, &v678, &v681, &v680);
      if (v632)
      {
        goto LABEL_213;
      }

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v621;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_100034C88;
      *(&v683 + 1) = v623;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v624;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_1000355C4;
      *(&v683 + 1) = v625;
      sub_100047A74(&v683, &v678, &v681, &v680);

      *&v683 = sub_10003550C;
      *(&v683 + 1) = v627;
      sub_100047A74(&v683, &v678, &v681, &v680);

      v633 = v665;
      _os_log_impl(&_mh_execute_header, v665, v662, "ZoomQuickLookImage %@ %s", v629, 0x16u);
      sub_100005A04(v630, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v631);

      sub_100047AB0(v629);
    }

    else
    {
    }

    result = (v635)(v656, v676);
    if (v666)
    {

      sub_10001FD94(v677, v673, v666, DOCDocumentSourceIdentifierLocal, v674, 0, 6);
      v271 = &v684 + 1;
      goto LABEL_132;
    }

    goto LABEL_361;
  }

  static Logger.Tests.getter();
  v598 = swift_allocObject();
  v599 = v674;
  *(v598 + 16) = v674;
  v600 = swift_allocObject();
  *(v600 + 16) = v599;
  v661 = v107;
  v601 = Logger.logObject.getter();
  LODWORD(v662) = static os_log_type_t.debug.getter();
  v602 = swift_allocObject();
  *(v602 + 16) = 64;
  v603 = swift_allocObject();
  *(v603 + 16) = 8;
  v604 = swift_allocObject();
  *(v604 + 16) = sub_1000355A8;
  *(v604 + 24) = v598;
  v605 = swift_allocObject();
  *(v605 + 16) = sub_10003552C;
  *(v605 + 24) = v604;
  v606 = swift_allocObject();
  *(v606 + 16) = 32;
  v607 = swift_allocObject();
  *(v607 + 16) = 8;
  v608 = swift_allocObject();
  *(v608 + 16) = sub_1000355AC;
  *(v608 + 24) = v600;
  v609 = swift_allocObject();
  *(v609 + 16) = sub_100035528;
  *(v609 + 24) = v608;
  v610 = swift_allocObject();
  *(v610 + 16) = v664;
  *(v610 + 32) = sub_1000355C4;
  *(v610 + 40) = v602;
  *(v610 + 48) = sub_1000355C4;
  *(v610 + 56) = v603;
  *(v610 + 64) = sub_100035510;
  *(v610 + 72) = v605;
  *(v610 + 80) = sub_1000355C4;
  *(v610 + 88) = v606;
  *(v610 + 96) = sub_1000355C4;
  *(v610 + 104) = v607;
  *(v610 + 112) = sub_10003550C;
  *(v610 + 120) = v609;

  v665 = v601;
  if (os_log_type_enabled(v601, v662))
  {
    v611 = sub_100047A6C(22);
    v612 = swift_slowAlloc();
    v613 = swift_slowAlloc();
    v680 = v613;
    v681 = v612;
    *v611 = 514;
    *&v678 = v611 + 2;
    *&v683 = sub_1000355C4;
    *(&v683 + 1) = v602;
    v614 = v672;
    sub_100047A74(&v683, &v678, &v681, &v680);
    if (v614)
    {
      goto LABEL_213;
    }

    *&v683 = sub_1000355C4;
    *(&v683 + 1) = v603;
    sub_100047A74(&v683, &v678, &v681, &v680);

    *&v683 = sub_100035510;
    *(&v683 + 1) = v605;
    sub_100047A74(&v683, &v678, &v681, &v680);

    *&v683 = sub_1000355C4;
    *(&v683 + 1) = v606;
    sub_100047A74(&v683, &v678, &v681, &v680);

    *&v683 = sub_1000355C4;
    *(&v683 + 1) = v607;
    sub_100047A74(&v683, &v678, &v681, &v680);

    *&v683 = sub_10003550C;
    *(&v683 + 1) = v609;
    sub_100047A74(&v683, &v678, &v681, &v680);

    v615 = v665;
    _os_log_impl(&_mh_execute_header, v665, v662, "SwipeQuickLookPDFAndImage %@ %s", v611, 0x16u);
    sub_100005A04(v612, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v613);

    sub_100047AB0(v611);
  }

  else
  {
  }

  result = (v635)(v655, v676);
  if (v666)
  {

    sub_10001F1B8(v677, v673, v666, DOCDocumentSourceIdentifierLocal, v674, 0, 8);
    v271 = &v684 + 1;
    goto LABEL_132;
  }

  __break(1u);
LABEL_361:
  __break(1u);
  return result;
}

uint64_t sub_10002C7E0(void *a1)
{
  [a1 tabBarController];
  sub_10000DB4C(&qword_100093890, &qword_1000740A8);
  return String.init<A>(describing:)();
}

id sub_10002C8E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCApplication();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002C9E4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_10001B45C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v6, *v7, v7[1]);
}

void sub_10002CAB8(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_10001C634(a1, a2, v7, v8, v9, v2 + v6, v11, v12);
}

uint64_t sub_10002CB70()
{

  return _swift_deallocObject(v0, 56, 7);
}

unsigned __int8 *sub_10002CC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10002D18C(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10002D18C(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10002D20C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10002D20C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10000607C(v9, 0), v12 = sub_10002D364(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10002D364(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10002D584(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10002D584(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10002D584(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

double sub_10002D600(void **a1, unint64_t a2, void *a3, unsigned int a4, unsigned int a5, void *a6)
{
  v79 = a6;
  v80 = a4;
  v81 = a5;
  v83 = a1;
  v78 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v69 - 8);
  __chkstk_darwin(v69);
  v12 = (&v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for DispatchTime();
  v71 = *(v72 - 8);
  v13 = __chkstk_darwin(v72);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v70 = &v68 - v16;
  v17 = type metadata accessor for Logger();
  v82 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v68 - v22;
  __chkstk_darwin(v21);
  v25 = &v68 - v24;
  v91[3] = type metadata accessor for DOCItemCollectionViewController();
  v91[4] = &off_100089BD0;
  v91[0] = a3;
  v26 = a3;
  v27 = dispatch thunk of DOCItemCollectionViewController.collectionView.getter();
  if ((dispatch thunk of DOCItemCollectionViewController.gatheringThumbnails.getter() & 1) == 0)
  {
    [v27 layoutIfNeeded];
    [v27 contentSize];
    if (v33 >= 20.0)
    {
      static Logger.Tests.getter();
      v34 = v27;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();

      v57 = os_log_type_enabled(v55, v56);
      v58 = v80;
      if (v57)
      {
        v59 = swift_slowAlloc();
        *v59 = 67109632;
        *(v59 + 4) = v58;
        *(v59 + 8) = 1024;
        *(v59 + 10) = v81;
        *(v59 + 14) = 2048;
        [v34 contentSize];
        *(v59 + 16) = v60;
        _os_log_impl(&_mh_execute_header, v55, v56, "performing scroll test. %d iterations, %d delta, content size is %f", v59, 0x18u);
      }

      (*(v82 + 8))(v20, v17);
      aBlock = v83;
      v85 = a2;
      *&v90[0] = 0x6C61727574614ELL;
      *(&v90[0] + 1) = 0xE700000000000000;
      sub_10000A1D0();
      if (StringProtocol.contains<A>(_:)())
      {
        v61 = objc_opt_self();
        if ([v61 isRecapAvailable])
        {
          v62 = objc_allocWithZone(RPTScrollViewTestParameters);

          v63 = v34;
          v64 = String._bridgeToObjectiveC()();

          v65 = [v62 initWithTestName:v64 scrollView:v63 completionHandler:0];

          [v61 runTestWithParameters:v65];
          return sub_100034948(v91);
        }
      }

      [v34 _effectiveContentInset];
      [v34 setContentOffset:{0.0, -v66}];
      v40 = String._bridgeToObjectiveC()();
      [v34 _performScrollTest:v40 iterations:v58 delta:v81];
    }

    else
    {
      static Logger.Tests.getter();
      v34 = v27;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        *(v37 + 4) = v34;
        *v38 = v34;
        v39 = v34;
        _os_log_impl(&_mh_execute_header, v35, v36, "Cannot perform scroll test on empty collection view %@", v37, 0xCu);
        sub_100005A04(v38, &qword_1000937D0, &unk_1000743F0);
      }

      (*(v82 + 8))(v23, v17);
      v40 = String._bridgeToObjectiveC()();
      [v79 failedTest:v40];
    }

    return sub_100034948(v91);
  }

  v68 = v27;
  static Logger.Tests.getter();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = v17;
    v32 = swift_slowAlloc();
    aBlock = v32;
    *v30 = 136315138;
    *(v30 + 4) = sub_100005D28(v83, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v28, v29, "waiting before starting test %s. items or thumbnails still gathering", v30, 0xCu);
    sub_100034948(v32);

    (*(v82 + 8))(v25, v31);
  }

  else
  {

    (*(v82 + 8))(v25, v17);
  }

  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v82 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v12 = 1;
  v41 = v69;
  (*(v10 + 104))(v12, enum case for DispatchTimeInterval.seconds(_:), v69);
  v42 = v70;
  + infix(_:_:)();
  (*(v10 + 8))(v12, v41);
  v43 = *(v71 + 8);
  v44 = v72;
  v43(v15, v72);
  sub_100034994(v91, v90);
  v45 = swift_allocObject();
  v46 = v79;
  v47 = v83;
  *(v45 + 16) = v79;
  *(v45 + 24) = v47;
  *(v45 + 32) = a2;
  sub_1000349F8(v90, v45 + 40);
  v48 = v81;
  *(v45 + 80) = v80;
  *(v45 + 84) = v48;
  v88 = sub_100034A10;
  v89 = v45;
  aBlock = _NSConcreteStackBlock;
  v85 = 1107296256;
  v86 = sub_100002DB0;
  v87 = &unk_10008AA70;
  v49 = _Block_copy(&aBlock);

  v50 = v46;

  v51 = v73;
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  v52 = v75;
  v53 = v78;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v54 = v82;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v49);

  (*(v77 + 8))(v52, v53);
  (*(v74 + 8))(v51, v76);
  v43(v42, v44);
  return sub_100034948(v91);
}

double sub_10002E08C(void **a1, unint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, void *a6, uint64_t a7, uint64_t a8)
{
  v84 = a6;
  v85 = a4;
  v86 = a5;
  v89 = a1;
  v83 = type metadata accessor for DispatchWorkItemFlags();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DispatchQoS();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchTimeInterval();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v14 = (&v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = type metadata accessor for DispatchTime();
  v76 = *(v77 - 8);
  v15 = __chkstk_darwin(v77);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v75 = &v72 - v18;
  v19 = type metadata accessor for Logger();
  v87 = *(v19 - 8);
  v88 = v19;
  v20 = __chkstk_darwin(v19);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v72 - v24;
  __chkstk_darwin(v23);
  v27 = &v72 - v26;
  v97[3] = a7;
  v97[4] = a8;
  sub_10000AE7C(v97);
  (*(*(a7 - 8) + 16))();
  v28 = (*(a8 + 16))(a7, a8);
  if ((*(a8 + 8))(a7, a8))
  {
    [v28 layoutIfNeeded];
    [v28 contentSize];
    if (v29 < 20.0)
    {
      static Logger.Tests.getter();
      v30 = v28;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        *(v33 + 4) = v30;
        *v34 = v30;
        v35 = v30;
        _os_log_impl(&_mh_execute_header, v31, v32, "Cannot perform scroll test on empty collection view %@", v33, 0xCu);
        sub_100005A04(v34, &qword_1000937D0, &unk_1000743F0);
      }

      (*(v87 + 8))(v25, v88);
      v36 = String._bridgeToObjectiveC()();
      [v84 failedTest:v36];
      goto LABEL_16;
    }

    static Logger.Tests.getter();
    v30 = v28;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    v44 = os_log_type_enabled(v42, v43);
    v45 = a2;
    v47 = v85;
    v46 = v86;
    if (v44)
    {
      v48 = swift_slowAlloc();
      *v48 = 67109632;
      *(v48 + 4) = v47;
      *(v48 + 8) = 1024;
      *(v48 + 10) = v46;
      *(v48 + 14) = 2048;
      [v30 contentSize];
      *(v48 + 16) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, "performing scroll test. %d iterations, %d delta, content size is %f", v48, 0x18u);
    }

    (*(v87 + 8))(v22, v88);
    aBlock = v89;
    v91 = v45;
    *&v96[0] = 0x6C61727574614ELL;
    *(&v96[0] + 1) = 0xE700000000000000;
    sub_10000A1D0();
    if ((StringProtocol.contains<A>(_:)() & 1) == 0 || (v50 = objc_opt_self(), ![v50 isRecapAvailable]))
    {
      [v30 _effectiveContentInset];
      [v30 setContentOffset:{0.0, -v70}];
      v36 = String._bridgeToObjectiveC()();
      [v30 _performScrollTest:v36 iterations:v47 delta:v46];
LABEL_16:

      return sub_100034948(v97);
    }

    v51 = objc_allocWithZone(RPTScrollViewTestParameters);

    v52 = v30;
    v53 = String._bridgeToObjectiveC()();

    v54 = [v51 initWithTestName:v53 scrollView:v52 completionHandler:0];

    [v50 runTestWithParameters:v54];
  }

  else
  {
    v72 = v28;
    static Logger.Tests.getter();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v39 = 136315138;
      v41 = v89;
      *(v39 + 4) = sub_100005D28(v89, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v37, v38, "waiting before starting test %s. items or thumbnails still gathering", v39, 0xCu);
      sub_100034948(v40);

      (*(v87 + 8))(v27, v88);
    }

    else
    {

      (*(v87 + 8))(v27, v88);
      v41 = v89;
    }

    v55 = v85;
    sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
    v89 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v14 = 1;
    v56 = v73;
    v57 = v74;
    (*(v73 + 104))(v14, enum case for DispatchTimeInterval.seconds(_:), v74);
    v58 = v75;
    + infix(_:_:)();
    (*(v56 + 8))(v14, v57);
    v59 = *(v76 + 8);
    v60 = v77;
    v59(v17, v77);
    sub_100034994(v97, v96);
    v61 = swift_allocObject();
    v62 = v84;
    *(v61 + 16) = v84;
    *(v61 + 24) = v41;
    *(v61 + 32) = a2;
    sub_1000349F8(v96, v61 + 40);
    v63 = v86;
    *(v61 + 80) = v55;
    *(v61 + 84) = v63;
    v94 = sub_10003551C;
    v95 = v61;
    aBlock = _NSConcreteStackBlock;
    v91 = 1107296256;
    v92 = sub_100002DB0;
    v93 = &unk_10008AAC0;
    v64 = _Block_copy(&aBlock);

    v65 = v62;

    v66 = v78;
    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
    sub_1000035DC();
    v67 = v80;
    v68 = v83;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v69 = v89;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v64);

    (*(v82 + 8))(v67, v68);
    (*(v79 + 8))(v66, v81);
    v59(v58, v60);
  }

  return sub_100034948(v97);
}

unint64_t sub_10002EB80(uint64_t a1)
{
  if (!a1)
  {
    __break(1u);
LABEL_19:
    sub_10000A774(v15);
    goto LABEL_20;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v2 = sub_10000A60C(v15);
  if ((v3 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_100005CC8(*(a1 + 56) + 32 * v2, v16);
  sub_10000A774(v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v4 = 10;
  v15[0] = 0x6F69746172657469;
  v15[1] = 29550;
  v5 = 0;
  v6 = v15;
  while (1)
  {
    v7 = *v6 - 48;
    if (v7 > 9)
    {
      break;
    }

    v8 = 10 * v5;
    if (v8 != v8)
    {
      break;
    }

    v5 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    ++v6;
    if (!--v4)
    {
      v9 = 0;
      goto LABEL_12;
    }
  }

  v5 = 0;
  v9 = 1;
LABEL_12:
  v16[0] = v9;
  v10 = v9;

  if (v10)
  {
    goto LABEL_20;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v11 = sub_10000A60C(v15);
  if ((v12 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_100005CC8(*(a1 + 56) + 32 * v11, v16);
  sub_10000A774(v15);
  if (swift_dynamicCast())
  {
    v13 = sub_10000F644(0x74657366666FuLL, 0xE600000000000000);
    if ((v13 & 0x100000000) == 0)
    {
      return v5 | (v13 << 32);
    }
  }

LABEL_20:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10002EFCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v44 = a2;
  v41 = a5;
  v47 = a3;
  v40 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v51 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for DispatchTime();
  v46 = *(v48 - 8);
  v13 = __chkstk_darwin(v48);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v42 = &v38 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = a4;
  result = [a4 tabBarController];
  if (result)
  {
    v22 = result;
    sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
    *v20 = static OS_dispatch_queue.main.getter();
    (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
    v23 = _dispatchPreconditionTest(_:)();
    result = (*(v18 + 8))(v20, v17);
    if (v23)
    {
      [v22 setSelectedIndex:0];

      v39 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v12 = 2;
      (*(v10 + 104))(v12, enum case for DispatchTimeInterval.seconds(_:), v9);
      v24 = v42;
      + infix(_:_:)();
      (*(v10 + 8))(v12, v9);
      v25 = *(v46 + 8);
      v26 = v48;
      v25(v15, v48);
      v27 = swift_allocObject();
      v29 = v43;
      v28 = v44;
      v30 = v45;
      *(v27 + 16) = v43;
      *(v27 + 24) = v30;
      *(v27 + 32) = v40;
      *(v27 + 40) = v28;
      *(v27 + 48) = v41 & 1;
      *(v27 + 56) = v47;
      aBlock[4] = sub_100034DBC;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002DB0;
      aBlock[3] = &unk_10008DDB0;
      v31 = _Block_copy(aBlock);
      v32 = v29;
      v33 = v30;

      v34 = v49;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v35 = v51;
      v36 = v54;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v37 = v39;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v31);

      (*(v53 + 8))(v35, v36);
      (*(v50 + 8))(v34, v52);
      return (v25)(v24, v26);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10002F5B8(uint64_t a1)
{
  result = DOCItemCollectionViewController.nodeCollection.getter();
  if (result)
  {
    v2 = result;
    v3 = [result isGathering];

    v4 = dispatch thunk of DOCItemCollectionViewController.items.getter();
    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = dispatch thunk of DOCItemCollectionViewController.collectionViewIfLoaded.getter();
    if (result)
    {
      v6 = result;
      v7 = [result visibleCells];

      sub_100002B84(0, &qword_1000937E8, UICollectionViewCell_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v8 >> 62)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v5)
      {
        v10 = v3;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }

      else
      {
        return (v9 > 0);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10002F6EC(void *a1, unint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = static DOCDocumentSourceIdentifier.iCloudCurrent.getter();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  v9 = String.hasPrefix(_:)(v8);

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String.hasPrefix(_:)(v11);
  }

  if (a2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v14 = *(a2 + 8 * j + 32);
      }

      v15 = v14;
      v16 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v20 = v14;
      if (sub_100013978(&v20, a1, v10))
      {
        v17 = [v15 identifier];
        v18 = [objc_allocWithZone(DOCConcreteLocation) initWithSourceIdentifier:v17 node:0];

        return v18;
      }

      if (v16 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

double sub_10002F8D0(void *a1, void *a2, void (*a3)(void, uint64_t), uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  if (a1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000355CC;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = sub_1000302D8;
    v16[4] = v15;
    v17 = a5;

    v18 = a1;

    if (sub_10002F5B8(v18))
    {
      sub_100014F3C(v18, sub_1000302D8, v15);
    }

    else
    {
      v25 = static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews.getter();
      v26 = swift_allocObject();
      v26[2] = a2;
      v26[3] = v18;
      v26[4] = sub_1000302E0;
      v26[5] = v16;
      v27 = objc_opt_self();
      v28 = v18;
      v29 = a2;

      v30 = [v27 defaultCenter];
      v36[3] = sub_100002B84(0, &qword_1000937E0, UIViewController_ptr);
      v36[0] = v28;
      v31 = objc_opt_self();
      v32 = v28;
      v33 = [v31 mainQueue];
      v34 = swift_allocObject();
      *(v34 + 16) = sub_1000302EC;
      *(v34 + 24) = v26;

      NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

      sub_100005A04(v36, &qword_100093498, &qword_100074430);
    }
  }

  else
  {
    v19 = a5;

    static Logger.Tests.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "content view controller is nil", v22, 2u);
    }

    (*(v11 + 8))(v13, v10);
    sub_100030284();
    v23 = swift_allocError();
    *v24 = 1;
    a3(0, v23);
  }

  return result;
}

void sub_10002FD1C(void *a1, void *a2, void *a3, void (*a4)(void, uint64_t), uint64_t a5, void *a6)
{
  v55 = a1;
  v11 = type metadata accessor for Logger();
  v53 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v52 = a4;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v51 = a6;

  v15 = [a2 effectiveFullBrowser];
  v16 = [v15 hierarchyController];

  v17 = DOCHierarchyController.locations.getter();
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v54 = v11;
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_23:

    v22 = 0;
    goto LABEL_24;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  v54 = v11;
  if (!v18)
  {
    goto LABEL_23;
  }

LABEL_3:
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else if ((v17 & 0xC000000000000001) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v20 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v17 + 8 * v20 + 32);
      goto LABEL_8;
    }

    __break(1u);
    return;
  }

  v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  v22 = v21;

  if (![v22 isRoot])
  {
LABEL_24:
    v56 = v22;
    static Logger.Tests.getter();
    v39 = v55;
    v40 = a2;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412546;
      *(v43 + 4) = v39;
      *v44 = v39;
      *(v43 + 12) = 2112;
      v45 = v39;
      v46 = [v40 effectiveFullBrowser];
      *(v43 + 14) = v46;
      v44[1] = v46;
      _os_log_impl(&_mh_execute_header, v41, v42, "showing %@ on %@", v43, 0x16u);
      sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
      swift_arrayDestroy();
    }

    (*(v53 + 8))(v13, v54);
    v47 = swift_allocObject();
    v47[2] = sub_100030234;
    v47[3] = v14;
    v47[4] = a3;

    v48 = a3;
    sub_100013E60(v39, v40, sub_100030238, v47);

    return;
  }

  v50 = a3;
  v56 = v22;
  v23 = [v22 sourceIdentifier];
  v24 = [v55 sourceIdentifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      a3 = v50;
      v22 = v56;
      goto LABEL_24;
    }
  }

  v31 = [a2 effectiveBrowserViewController];
  v32 = v56;
  if (v31)
  {
    v33 = v31;
    v55 = DOCBrowserContainerController.containedItemCollectionViewController.getter();
  }

  else
  {
    v55 = 0;
  }

  v35 = v50;
  v34 = v51;
  v36 = v52;

  v37 = v34;
  sub_10002F8D0(v55, v35, v36, a5, a6);

  v38 = v55;
}

uint64_t sub_100030244(uint64_t a1)
{
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 32);
  }

  return (*(v1 + 16))(v3, a1);
}

unint64_t sub_100030284()
{
  result = qword_1000937D8;
  if (!qword_1000937D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000937D8);
  }

  return result;
}

uint64_t sub_100030300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1000303B0(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  if (a1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100035530;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = sub_100035524;
    v16[4] = v15;
    v17 = a1;
    v18 = a3;

    if (sub_10002F5B8(v17))
    {
      sub_100014F3C(v17, sub_100035524, v15);
    }

    else
    {
      v25 = static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews.getter();
      v26 = swift_allocObject();
      v26[2] = a2;
      v26[3] = v17;
      v26[4] = sub_1000355EC;
      v26[5] = v16;
      v27 = objc_opt_self();
      v28 = v17;
      v29 = a2;

      v30 = [v27 defaultCenter];
      v36[3] = sub_100002B84(0, &qword_1000937E0, UIViewController_ptr);
      v36[0] = v28;
      v31 = objc_opt_self();
      v32 = v28;
      v33 = [v31 mainQueue];
      v34 = swift_allocObject();
      *(v34 + 16) = sub_1000355DC;
      *(v34 + 24) = v26;

      NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

      sub_100005A04(v36, &qword_100093498, &qword_100074430);
    }
  }

  else
  {
    v19 = a3;

    static Logger.Tests.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "content view controller is nil", v22, 2u);
    }

    (*(v11 + 8))(v13, v10);
    sub_100030284();
    v23 = swift_allocError();
    *v24 = 1;
    sub_100016C30(v23, v19, a4, a5);
  }

  return result;
}

void sub_1000307FC(void *a1, void *a2, void *a3, void *a4, uint64_t a5, unint64_t a6)
{
  v55 = a1;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v52 = a5;
  v15[4] = a6;
  v51 = a4;

  v16 = [a2 effectiveFullBrowser];
  v17 = [v16 hierarchyController];

  v18 = DOCHierarchyController.locations.getter();
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = v11;
    v54 = a3;
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_23:

    v23 = 0;
    goto LABEL_24;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  v53 = v11;
  v54 = a3;
  if (!v19)
  {
    goto LABEL_23;
  }

LABEL_3:
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v22 = *(v18 + 8 * v21 + 32);
      goto LABEL_8;
    }

    __break(1u);
    return;
  }

  v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  v23 = v22;

  if (![v23 isRoot])
  {
LABEL_24:
    static Logger.Tests.getter();
    v39 = v55;
    v40 = a2;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412546;
      *(v43 + 4) = v39;
      *v44 = v39;
      *(v43 + 12) = 2112;
      v45 = v39;
      v46 = [v40 effectiveFullBrowser];
      *(v43 + 14) = v46;
      v44[1] = v46;
      _os_log_impl(&_mh_execute_header, v41, v42, "showing %@ on %@", v43, 0x16u);
      sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
      swift_arrayDestroy();
    }

    (*(v12 + 8))(v14, v53);
    v47 = swift_allocObject();
    v47[2] = sub_100035094;
    v47[3] = v15;
    v48 = v54;
    v47[4] = v54;

    v49 = v48;
    sub_100013E60(v39, v40, sub_100035520, v47);

    return;
  }

  v50 = v23;
  v24 = [v23 sourceIdentifier];
  v25 = [v55 sourceIdentifier];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      v23 = v50;
      goto LABEL_24;
    }
  }

  v32 = [a2 effectiveBrowserViewController];
  v33 = v50;
  if (v32)
  {
    v34 = v32;
    v55 = DOCBrowserContainerController.containedItemCollectionViewController.getter();
  }

  else
  {
    v55 = 0;
  }

  v35 = v54;
  v36 = v52;
  v37 = v51;

  sub_1000303B0(v55, v35, v37, v36, a6);

  v38 = v55;
}

double sub_100030D04(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v57 = a6;
  v55 = a4;
  v56 = a5;
  v47 = a3;
  v58 = a2;
  v45 = a1;
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for DispatchTime();
  v44 = v14;
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v46 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v13 = 10;
  (*(v11 + 104))(v13, enum case for DispatchTimeInterval.seconds(_:), v10);
  + infix(_:_:)();
  (*(v11 + 8))(v13, v10);
  v43 = *(v15 + 8);
  v43(v18, v14);
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v23 = v47;
  v22[4] = v58;
  v22[5] = v23;
  v24 = v49;
  v22[6] = v49;
  aBlock[4] = sub_100034FC4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008E058;
  v25 = _Block_copy(aBlock);

  v47 = v23;
  v26 = v24;

  v27 = v48;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  v28 = v50;
  v29 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v46;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v25);

  (*(v54 + 8))(v28, v29);
  (*(v52 + 8))(v27, v53);
  v43(v20, v44);
  v31 = swift_allocObject();
  v32 = v45;
  *(v31 + 16) = v21;
  *(v31 + 24) = v32;
  v33 = v47;
  *(v31 + 32) = v58;
  *(v31 + 40) = v33;
  v35 = v55;
  v34 = v56;
  *(v31 + 48) = v55;
  *(v31 + 56) = v26;
  *(v31 + 64) = v34;
  *(v31 + 72) = v57;
  v36 = swift_allocObject();
  v36[2] = sub_100034FF4;
  v36[3] = v31;
  v36[4] = v26;
  v36[5] = v35;
  v37 = v26;
  v38 = v35;

  v39 = v33;
  v37;
  v40 = v38;

  sub_1000144AC(v39, v40, sub_100035504, v36);

  return result;
}

void sub_1000312DC(uint64_t a1, unsigned __int8 a2, void *a3, void *a4, id a5, unint64_t a6, void *a7, void *a8)
{
  v49 = a8;
  v50 = a7;
  v51 = a5;
  v52 = a3;
  v46 = a4;
  v11 = type metadata accessor for Logger();
  v47 = *(v11 - 8);
  v48 = v11;
  __chkstk_darwin(v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000DB4C(&qword_100093858, &qword_100074088);
  __chkstk_darwin(v14 - 8);
  v16 = &v45 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034850(a1, v16, &qword_100093858, &qword_100074088);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v25 = a6;
    (*(v18 + 32))(v20, v16, v17);
    v26 = a2;
    v27 = v20;
    if (a2 <= 3u)
    {
      v28 = v50;
    }

    else
    {
      v28 = v50;
      if (v26 >= 8)
      {

        goto LABEL_10;
      }
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
LABEL_11:
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v49 collectionView:v28 performPrimaryActionForItemAtIndexPath:isa];

      (*(v18 + 8))(v27, v17);
      return;
    }

LABEL_10:
    v31 = DOCFullDocumentManagerViewControllerDidFinishLoadingNotificationName;
    v32 = swift_allocObject();
    v33 = v46;
    v34 = v51;
    v32[2] = v46;
    v32[3] = v34;
    v32[4] = v25;
    v35 = v52;
    v32[5] = v52;
    v32[6] = v28;
    v36 = objc_opt_self();
    v51 = v31;
    v37 = v33;

    v38 = v35;
    v39 = v28;
    v40 = [v36 defaultCenter];
    memset(v53, 0, sizeof(v53));
    v41 = [objc_opt_self() mainQueue];
    v42 = swift_allocObject();
    *(v42 + 16) = sub_100035518;
    *(v42 + 24) = v32;

    v43 = v51;
    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(v53, &qword_100093498, &qword_100074430);

    goto LABEL_11;
  }

  sub_100005A04(v16, &qword_100093858, &qword_100074088);
  static Logger.Tests.getter();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v53[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_100005D28(v51, a6, v53);
    _os_log_impl(&_mh_execute_header, v21, v22, "Failed test %s. Could not find index path", v23, 0xCu);
    sub_100034948(v24);
  }

  (*(v47 + 8))(v13, v48);
  v29 = String._bridgeToObjectiveC()();
  [v52 failedTest:v29];
}

void sub_100031950(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, unint64_t a7, void *a8, void *a9)
{
  v14 = a3;
  v162 = a2;
  v161 = a1;
  v156 = a9;
  v148 = type metadata accessor for DispatchWorkItemFlags();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for DispatchQoS();
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v143 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for DispatchTimeInterval();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = (&v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = type metadata accessor for DispatchTime();
  v141 = *(v142 - 8);
  v18 = __chkstk_darwin(v142);
  v135 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v139 = &v127 - v20;
  v21 = type metadata accessor for IndexPath();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v129 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v140 = &v127 - v25;
  v26 = type metadata accessor for Logger();
  v158 = *(v26 - 8);
  v159 = v26;
  v27 = __chkstk_darwin(v26);
  v128 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v134 = &v127 - v30;
  __chkstk_darwin(v29);
  v154 = &v127 - v31;
  v32 = sub_10000DB4C(&qword_100093858, &qword_100074088);
  v33 = __chkstk_darwin(v32 - 8);
  v133 = &v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v152 = &v127 - v36;
  v37 = __chkstk_darwin(v35);
  v151 = &v127 - v38;
  v39 = __chkstk_darwin(v37);
  v157 = &v127 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v127 - v42;
  __chkstk_darwin(v41);
  v45 = &v127 - v44;
  v46 = swift_allocObject();
  v149 = v14;
  *(v46 + 16) = v14;
  *(v46 + 24) = a4;
  *(v46 + 32) = a5;
  v155 = a6;
  *(v46 + 40) = a6;
  *(v46 + 48) = a7;
  v160 = v46;
  v47 = v156;
  *(v46 + 56) = a8;
  *(v46 + 64) = v47;
  v163 = v22;
  v48 = *(v22 + 56);
  v48(v45, 1, 1, v21);
  v153 = a4;
  v131 = a5;

  v150 = a8;
  v156 = v47;
  sub_100011B8C(v161, v162, v43);
  v132 = v48;
  sub_100005A04(v45, &qword_100093858, &qword_100074088);
  v48(v43, 0, 1, v21);
  sub_100033034(v43, v45);
  v49 = v21;
  v50 = v157;
  sub_100034850(v45, v157, &qword_100093858, &qword_100074088);
  v51 = *(v163 + 48);
  LODWORD(a6) = v51(v50, 1, v21);
  sub_100005A04(v50, &qword_100093858, &qword_100074088);
  if (a6 == 1)
  {
    v52 = v161;
    [v161 bounds];
    v53 = CGRectGetHeight(v168) * 0.75;
    [v52 contentOffset];
    v55 = v54;
    v56 = v53 + v54;
    [v52 contentSize];
    if (v56 < v57)
    {
      [v52 bounds];
      [v52 setContentOffset:{0.0, v55 + CGRectGetHeight(v169) * 0.75}];
      [v52 reloadData];
      sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
      v58 = v52;
      v163 = static OS_dispatch_queue.main.getter();
      v59 = v135;
      static DispatchTime.now()();
      v60 = v136;
      *v136 = 1;
      v61 = v137;
      v62 = v138;
      (*(v137 + 104))(v60, enum case for DispatchTimeInterval.seconds(_:), v138);
      v63 = v139;
      + infix(_:_:)();
      (*(v61 + 8))(v60, v62);
      v130 = v45;
      v64 = *(v141 + 8);
      v65 = v142;
      v64(v59, v142);
      v66 = swift_allocObject();
      *(v66 + 16) = v162;
      *(v66 + 24) = v58;
      *(v66 + 32) = sub_100032FF8;
      *(v66 + 40) = v160;
      v166 = sub_100033024;
      v167 = v66;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v165 = sub_100002DB0;
      *(&v165 + 1) = &unk_10008A228;
      v67 = _Block_copy(&aBlock);
      v68 = v58;

      v69 = v143;
      static DispatchQoS.unspecified.getter();
      *&aBlock = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v70 = v145;
      v71 = v148;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v72 = v163;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v67);

      (*(v147 + 8))(v70, v71);
      (*(v144 + 8))(v69, v146);
      v64(v63, v65);
      v45 = v130;
      goto LABEL_29;
    }

    v82 = v152;
    v132(v152, 1, 1, v21);
    v83 = v82;
    v84 = v133;
    sub_100034850(v83, v133, &qword_100093858, &qword_100074088);
    if (v51(v84, 1, v21) == 1)
    {
      sub_100005A04(v84, &qword_100093858, &qword_100074088);
      v85 = v128;
      static Logger.Tests.getter();

      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();

      v88 = os_log_type_enabled(v86, v87);
      v89 = v155;
      if (v88)
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&aBlock = v91;
        *v90 = 136315138;
        *(v90 + 4) = sub_100005D28(v89, a7, &aBlock);
        _os_log_impl(&_mh_execute_header, v86, v87, "Failed test %s. Could not find index path", v90, 0xCu);
        sub_100034948(v91);
      }

      (*(v158 + 8))(v85, v159);
      v92 = String._bridgeToObjectiveC()();
      [v153 failedTest:v92];

      goto LABEL_28;
    }

    v96 = v129;
    (*(v163 + 32))(v129, v84, v21);
    v97 = v155;
    if (v149 <= 3u)
    {
      v98 = v150;
    }

    else
    {
      v98 = v150;
      if (v149 >= 8u)
      {

        goto LABEL_26;
      }
    }

    v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v113 & 1) == 0)
    {
LABEL_27:
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v156 collectionView:v98 performPrimaryActionForItemAtIndexPath:isa];

      (*(v163 + 8))(v96, v49);
LABEL_28:
      sub_100005A04(v152, &qword_100093858, &qword_100074088);
      goto LABEL_29;
    }

LABEL_26:
    v114 = DOCFullDocumentManagerViewControllerDidFinishLoadingNotificationName;
    v115 = swift_allocObject();
    v116 = v131;
    v115[2] = v131;
    v115[3] = v97;
    v117 = v153;
    v115[4] = a7;
    v115[5] = v117;
    v115[6] = v98;
    v118 = objc_opt_self();
    v119 = v117;
    v120 = v116;

    v121 = v98;
    v122 = v114;
    v123 = [v118 defaultCenter];
    aBlock = 0u;
    v165 = 0u;
    v124 = [objc_opt_self() mainQueue];
    v125 = swift_allocObject();
    *(v125 + 16) = sub_10003300C;
    *(v125 + 24) = v115;

    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(&aBlock, &qword_100093498, &qword_100074430);

    goto LABEL_27;
  }

  v73 = v151;
  sub_100034850(v45, v151, &qword_100093858, &qword_100074088);
  if (v51(v73, 1, v21) != 1)
  {
    v93 = v140;
    (*(v163 + 32))(v140, v73, v21);
    v94 = v155;
    if (v149 <= 3u)
    {
      v95 = v150;
    }

    else
    {
      v95 = v150;
      if (v149 >= 8u)
      {

        goto LABEL_22;
      }
    }

    v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v99 & 1) == 0)
    {
LABEL_23:
      v112 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v156 collectionView:v95 performPrimaryActionForItemAtIndexPath:v112];

      (*(v163 + 8))(v93, v49);
      goto LABEL_29;
    }

LABEL_22:
    v100 = DOCFullDocumentManagerViewControllerDidFinishLoadingNotificationName;
    v101 = swift_allocObject();
    v102 = v131;
    v101[2] = v131;
    v101[3] = v94;
    v103 = v153;
    v101[4] = a7;
    v101[5] = v103;
    v101[6] = v95;
    v104 = objc_opt_self();
    v105 = v103;
    v106 = v102;

    v107 = v95;
    v108 = v100;
    v109 = [v104 defaultCenter];
    aBlock = 0u;
    v165 = 0u;
    v110 = [objc_opt_self() mainQueue];
    v111 = swift_allocObject();
    *(v111 + 16) = sub_100035518;
    *(v111 + 24) = v101;

    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(&aBlock, &qword_100093498, &qword_100074430);

    goto LABEL_23;
  }

  sub_100005A04(v73, &qword_100093858, &qword_100074088);
  v74 = v134;
  static Logger.Tests.getter();

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();

  v77 = os_log_type_enabled(v75, v76);
  v78 = v155;
  if (v77)
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *&aBlock = v80;
    *v79 = 136315138;
    *(v79 + 4) = sub_100005D28(v78, a7, &aBlock);
    _os_log_impl(&_mh_execute_header, v75, v76, "Failed test %s. Could not find index path", v79, 0xCu);
    sub_100034948(v80);
  }

  (*(v158 + 8))(v74, v159);
  v81 = String._bridgeToObjectiveC()();
  [v153 failedTest:v81];

LABEL_29:
  sub_100005A04(v45, &qword_100093858, &qword_100074088);
}

uint64_t sub_100033034(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093858, &qword_100074088);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000330BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v28 = a4;
  v29 = a6;
  v25 = a3;
  v9 = type metadata accessor for Logger();
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000DB4C(&qword_100093858, &qword_100074088);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034850(a1, v14, &qword_100093858, &qword_100074088);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100005A04(v14, &qword_100093858, &qword_100074088);
    static Logger.Tests.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100005D28(v28, a5, &v30);
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed test %s. Could not find index path of PDF", v21, 0xCu);
      sub_100034948(v22);
    }

    (*(v26 + 8))(v11, v27);
    v24 = String._bridgeToObjectiveC()();
    [v29 failedTest:v24];
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [a2 collectionView:v25 performPrimaryActionForItemAtIndexPath:isa];

    (*(v16 + 8))(v18, v15);
  }
}

void sub_100033440(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v124 = a2;
  v123 = a1;
  v111 = type metadata accessor for DispatchWorkItemFlags();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v91[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v109 = type metadata accessor for DispatchQoS();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v91[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = type metadata accessor for DispatchTimeInterval();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v91[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = type metadata accessor for DispatchTime();
  v104 = *(v105 - 8);
  v15 = __chkstk_darwin(v105);
  v98 = &v91[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v103 = &v91[-v17];
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v92 = &v91[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v96 = &v91[-v22];
  v23 = type metadata accessor for Logger();
  v119 = *(v23 - 8);
  v120 = v23;
  v24 = __chkstk_darwin(v23);
  v93 = &v91[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v97 = &v91[-v27];
  __chkstk_darwin(v26);
  v28 = sub_10000DB4C(&qword_100093858, &qword_100074088);
  v29 = __chkstk_darwin(v28 - 8);
  v95 = &v91[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __chkstk_darwin(v29);
  v99 = &v91[-v32];
  v33 = __chkstk_darwin(v31);
  v117 = &v91[-v34];
  v35 = __chkstk_darwin(v33);
  v118 = &v91[-v36];
  v37 = __chkstk_darwin(v35);
  v39 = &v91[-v38];
  __chkstk_darwin(v37);
  v41 = &v91[-v40];
  v42 = swift_allocObject();
  v42[2] = a3;
  v42[3] = a4;
  v115 = a5;
  v42[4] = a5;
  v42[5] = a6;
  v121 = v42;
  v122 = v19;
  v42[6] = a7;
  v43 = *(v19 + 56);
  v43(v41, 1, 1, v18);
  v113 = a3;
  v112 = a4;
  v116 = a6;

  v114 = a7;
  sub_100011B8C(v123, v124, v39);
  v94 = v43;
  sub_100005A04(v41, &qword_100093858, &qword_100074088);
  v43(v39, 0, 1, v18);
  sub_100033034(v39, v41);
  v44 = v118;
  sub_100034850(v41, v118, &qword_100093858, &qword_100074088);
  v45 = *(v122 + 48);
  LODWORD(a5) = v45(v44, 1, v18);
  sub_100005A04(v44, &qword_100093858, &qword_100074088);
  if (a5 == 1)
  {
    v46 = v18;
    v47 = v123;
    [v123 bounds];
    v48 = CGRectGetHeight(v126) * 0.75;
    [v47 contentOffset];
    v50 = v49;
    v51 = v48 + v49;
    [v47 contentSize];
    if (v51 >= v52)
    {
      v75 = v99;
      v94(v99, 1, 1, v46);
      v76 = v95;
      sub_100034850(v75, v95, &qword_100093858, &qword_100074088);
      if (v45(v76, 1, v46) == 1)
      {
        sub_100005A04(v76, &qword_100093858, &qword_100074088);
        v77 = v93;
        static Logger.Tests.getter();
        v78 = v116;

        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          aBlock[0] = v82;
          *v81 = 136315138;
          *(v81 + 4) = sub_100005D28(v115, v78, aBlock);
          _os_log_impl(&_mh_execute_header, v79, v80, "Failed test %s. Could not find index path of PDF", v81, 0xCu);
          sub_100034948(v82);
        }

        (*(v119 + 8))(v77, v120);
        v90 = String._bridgeToObjectiveC()();
        [v114 failedTest:v90];
      }

      else
      {
        v87 = v122;
        v88 = v92;
        (*(v122 + 32))(v92, v76, v46);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v113 collectionView:v112 performPrimaryActionForItemAtIndexPath:isa];

        (*(v87 + 8))(v88, v46);
      }

      sub_100005A04(v75, &qword_100093858, &qword_100074088);
    }

    else
    {
      [v47 bounds];
      [v47 setContentOffset:{0.0, v50 + CGRectGetHeight(v127) * 0.75}];
      [v47 reloadData];
      sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
      v122 = static OS_dispatch_queue.main.getter();
      v53 = v98;
      static DispatchTime.now()();
      v54 = v100;
      *v100 = 1;
      v55 = v101;
      v56 = v102;
      (*(v101 + 104))(v54, enum case for DispatchTimeInterval.seconds(_:), v102);
      v57 = v103;
      + infix(_:_:)();
      (*(v55 + 8))(v54, v56);
      v120 = *(v104 + 8);
      v58 = v105;
      v120(v53, v105);
      v59 = swift_allocObject();
      *(v59 + 16) = v124;
      *(v59 + 24) = v47;
      *(v59 + 32) = sub_100034528;
      *(v59 + 40) = v121;
      aBlock[4] = sub_1000355E0;
      aBlock[5] = v59;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002DB0;
      aBlock[3] = &unk_10008A340;
      v60 = _Block_copy(aBlock);
      v61 = v47;

      v62 = v41;
      v63 = v106;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v64 = v108;
      v65 = v111;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v66 = v122;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v60);

      (*(v110 + 8))(v64, v65);
      v67 = v63;
      v41 = v62;
      (*(v107 + 8))(v67, v109);
      v120(v57, v58);
    }
  }

  else
  {
    v68 = v117;
    sub_100034850(v41, v117, &qword_100093858, &qword_100074088);
    if (v45(v68, 1, v18) == 1)
    {
      sub_100005A04(v68, &qword_100093858, &qword_100074088);
      v69 = v97;
      static Logger.Tests.getter();
      v70 = v116;

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        aBlock[0] = v74;
        *v73 = 136315138;
        *(v73 + 4) = sub_100005D28(v115, v70, aBlock);
        _os_log_impl(&_mh_execute_header, v71, v72, "Failed test %s. Could not find index path of PDF", v73, 0xCu);
        sub_100034948(v74);
      }

      (*(v119 + 8))(v69, v120);
      v86 = String._bridgeToObjectiveC()();
      [v114 failedTest:v86];
    }

    else
    {
      v83 = v122;
      v84 = v96;
      (*(v122 + 32))(v96, v68, v18);
      v85 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v113 collectionView:v112 performPrimaryActionForItemAtIndexPath:v85];

      (*(v83 + 8))(v84, v18);
    }
  }

  sub_100005A04(v41, &qword_100093858, &qword_100074088);
}

unint64_t sub_100034538()
{
  result = qword_100093860;
  if (!qword_100093860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093860);
  }

  return result;
}

uint64_t sub_10003458C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000345CC()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_10003461C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1000346F4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100034850(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000DB4C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_100034948(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_100034994(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000349F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100034A14()
{

  sub_100034948((v0 + 40));

  return _swift_deallocObject(v0, 88, 7);
}

double sub_100034A5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 80);
  v5 = *(v0 + 84);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = sub_100006C6C((v0 + 40), v6);

  return sub_10002E08C(v2, v3, v8, v4, v5, v1, v6, v7);
}

uint64_t sub_100034B2C()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100034BE8()
{
  v1 = *(v0 + 56);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    sub_10000E8BC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 52), v1 + 1);
  }
}

uint64_t sub_100034C24()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100034D04()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100034D68(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100034DD4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100034E58()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100034EC0(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100034F34()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100035030(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_1000350A0(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_1000350E8(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100035144()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t getEnumTagSinglePayload for DOCApplication.BrowseFolderTestInfo.BrowseFolderTestInfoError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DOCApplication.BrowseFolderTestInfo.BrowseFolderTestInfoError(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DOCApplication.DOCApplicationTestError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCApplication.DOCApplicationTestError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000353D4()
{
  result = qword_1000938B0;
  if (!qword_1000938B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000938B0);
  }

  return result;
}

unint64_t sub_10003542C()
{
  result = qword_1000938B8;
  if (!qword_1000938B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000938B8);
  }

  return result;
}

void sub_100035674(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 1);
  v6 = __chkstk_darwin(v4);
  v69 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v70 = &v68 - v9;
  __chkstk_darwin(v8);
  v11 = &v68 - v10;
  static Logger.Application.getter();
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v71 = v12;
  v72 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075B30, &v73);
    *(v16 + 12) = 2080;
    v17 = [v12 session];
    v18 = [v17 persistentIdentifier];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v2;
    v21 = v4;
    v23 = v22;

    v24 = sub_100005D28(v19, v23, &v73);
    v4 = v21;
    v2 = v20;

    *(v16 + 14) = v24;
    v5 = v72;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: identifier: %s freeing resources", v16, 0x16u);
    swift_arrayDestroy();
  }

  v25 = *(v5 + 8);
  (v25)(v11, v4);
  v26 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController;
  v27 = *(v2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (v27)
  {
    v68 = [v27 configuration];
    v28 = [objc_opt_self() sharedApplication];
    v29 = [v28 openSessions];

    sub_100002B84(0, &unk_1000941A0, UISceneSession_ptr);
    sub_100003A30(&qword_100093C50, &unk_1000941A0, UISceneSession_ptr);
    v30 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = v71;
    v32 = [v71 session];
    v33 = sub_100035E14(v32, v30);

    if (v33)
    {
      v34 = v70;
      static Logger.Application.getter();
      v35 = v31;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v71 = v4;
        v39 = v38;
        v73 = swift_slowAlloc();
        *v39 = 136315394;
        *(v39 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075B30, &v73);
        *(v39 + 12) = 2080;
        v40 = [v35 session];
        v41 = [v40 persistentIdentifier];

        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = sub_100005D28(v42, v44, &v73);

        *(v39 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v36, v37, "%s: identifier: %s was disconnected but session still exists. Keeping state.", v39, 0x16u);
        swift_arrayDestroy();

        (v25)(v70, v71);
      }

      else
      {

        (v25)(v34, v4);
      }
    }

    else
    {
      v46 = v69;
      static Logger.Application.getter();
      v47 = v31;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v70 = v25;
        v51 = v50;
        v73 = swift_slowAlloc();
        *v51 = 136315394;
        *(v51 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075B30, &v73);
        *(v51 + 12) = 2080;
        v52 = v46;
        v53 = [v47 session];
        v54 = [v53 persistentIdentifier];
        v71 = v4;
        v55 = v54;

        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        v59 = sub_100005D28(v56, v58, &v73);

        *(v51 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v48, v49, "%s: identifier: %s was disconnected and session is gone. Clearing state.", v51, 0x16u);
        swift_arrayDestroy();

        (v70)(v52, v71);
      }

      else
      {

        (v25)(v46, v4);
      }

      v60 = [objc_opt_self() sharedStore];
      v61 = v68;
      [v60 purgeStateForConfiguration:v68];
    }
  }

  v62 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window;
  v63 = *(v2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window);
  if (v63 && ([v63 setHidden:1], (v64 = *(v2 + v62)) != 0))
  {
    [v64 setRootViewController:0];
    v65 = *(v2 + v62);
  }

  else
  {
    v65 = 0;
  }

  *(v2 + v62) = 0;

  v66 = *(v2 + v26);
  *(v2 + v26) = 0;

  v67 = *(v2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController);
  *(v2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController) = 0;
}

uint64_t sub_100035E14(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_100002B84(0, &unk_1000941A0, UISceneSession_ptr), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

double sub_100035F94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v60 = a3;
  v61 = a4;
  v6 = type metadata accessor for Logger();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = __chkstk_darwin(v6);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v56 = &v55 - v9;
  v10 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v10 - 8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v55 - v18;
  sub_100034850(a1, v12, &qword_100093F50, &qword_100074090);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v29 = *(v14 + 32);
    v29(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    v30 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v31 = swift_allocObject();
    v32 = v60;
    *(v31 + 16) = v60;
    v29((v31 + v30), v17, v13);
    v33 = v61;
    *(v31 + ((v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v61;
    v34 = v32;
    v35 = v33;
    DOCRunInMainThread(_:)();

    (*(v14 + 8))(v19, v13);
    return result;
  }

  v21 = v60;
  v20 = v61;
  sub_100005A04(v12, &qword_100093F50, &qword_100074090);
  if (!a2)
  {
    goto LABEL_9;
  }

  v22 = a2;
  v23 = a2;
  v24 = [v23 domain];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {

LABEL_9:
    v38 = v57;
    static Logger.Application.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v62 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_100005D28(0xD000000000000011, 0x8000000100075BD0, &v62);
      _os_log_impl(&_mh_execute_header, v39, v40, "%s: Could not decode FPItem from NSUserActivity.", v41, 0xCu);
      sub_100034948(v42);
    }

    (*(v58 + 8))(v38, v59);
    type metadata accessor for DOCUserActivityController();
    static DOCUserActivityController.deleteActivity(_:item:)();
    return result;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {

    goto LABEL_9;
  }

  v43 = v56;
  static Logger.Application.getter();
  v44 = v23;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = v22;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v62 = v50;
    *v48 = 136315394;
    *(v48 + 4) = sub_100005D28(0xD000000000000011, 0x8000000100075BD0, &v62);
    *(v48 + 12) = 2112;
    *(v48 + 14) = v44;
    *v49 = v47;
    v51 = v44;
    _os_log_impl(&_mh_execute_header, v45, v46, "%s: Could not retrieve URL for item: %@", v48, 0x16u);
    sub_100005A04(v49, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v50);
  }

  (*(v58 + 8))(v43, v59);
  v52 = swift_allocObject();
  *(v52 + 16) = v20;
  *(v52 + 24) = v21;
  v53 = v21;
  v54 = v20;
  DOCRunInMainThread(_:)();

  return result;
}

uint64_t sub_1000365E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10003A72C(a2, 0, 0, 1, 1u);
  if ((result & 1) == 0)
  {
    type metadata accessor for DOCUserActivityController();
    v14 = static DOCUserActivityController.alertController(with:)();
    if (v14)
    {
      v15 = v14;
      v16 = *(a1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
      if (v16)
      {
        v17 = v16;
        [v17 presentViewController:v15 animated:1 completion:0];
      }
    }

    static Logger.Application.getter();
    (*(v6 + 16))(v8, a2, v5);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v20 = 136315394;
      *(v20 + 4) = sub_100005D28(0xD000000000000011, 0x8000000100075BD0, &v28);
      *(v20 + 12) = 2080;
      sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v9;
      v23 = v22;
      (*(v6 + 8))(v8, v5);
      v24 = sub_100005D28(v21, v23, &v28);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s: URL decoded FPItem could not be opened: %s", v20, 0x16u);
      swift_arrayDestroy();

      return (*(v10 + 8))(v12, v26);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

void sub_10003696C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DOCUserActivityController();
  v3 = static DOCUserActivityController.alertController(with:)();
  if (v3)
  {
    v4 = *(a2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    if (v4)
    {
      v6 = v3;
      v5 = v4;
      [v5 presentViewController:v6 animated:1 completion:0];

      v3 = v6;
    }
  }
}

void sub_100036BDC(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_100005D28(0xD000000000000019, 0x8000000100075C80, &v14);
    *(v8 + 12) = 2048;
    if (a1 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 14) = v10;

    _os_log_impl(&_mh_execute_header, v6, v7, "%s [App Shortcut] finished creating %ld app shortcuts.", v8, 0x16u);
    sub_100034948(v9);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  v11 = [objc_opt_self() sharedApplication];
  sub_100002B84(0, &unk_100093C78, UIApplicationShortcutItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v11 setShortcutItems:isa];
}

double sub_100036E30(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v35 = a1;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v33 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = &_swiftEmptyArrayStorage;
  v10 = (v9 + 16);
  static Logger.UI.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v2;
    v14 = swift_slowAlloc();
    v15 = v3;
    v16 = swift_slowAlloc();
    v38[0] = v16;
    *v14 = 136315138;
    *(v14 + 4) = sub_100005D28(0xD000000000000015, 0x8000000100075CA0, v38);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s [App Shortcut] 1. Start", v14, 0xCu);
    sub_100034948(v16);
    v3 = v15;

    v2 = v13;
  }

  v17 = *(v3 + 8);
  v17(v8, v2);
  sub_100045D9C();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100045F40();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  static Logger.UI.getter();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v2;
    v21 = v20;
    v39 = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_100005D28(0xD000000000000015, 0x8000000100075CA0, &v39);
    *(v21 + 12) = 2080;
    swift_beginAccess();
    v33[1] = v3;
    sub_100002B84(0, &unk_100093C78, UIApplicationShortcutItem_ptr);

    v22 = Array.description.getter();
    v24 = v23;

    v25 = sub_100005D28(v22, v24, &v39);

    *(v21 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s [App Shortcut] 2. Start getting provider locations %s", v21, 0x16u);
    swift_arrayDestroy();

    v26 = v34;
    v27 = v6;
  }

  else
  {

    v27 = v6;
    v26 = v2;
  }

  v17(v27, v26);
  v28 = swift_allocObject();
  v29 = v35;
  v30 = v36;
  v28[2] = v9;
  v28[3] = v29;
  v31 = v37;
  v28[4] = v30;
  v28[5] = v31;

  sub_100046560(sub_1000524BC, v28, v31);

  return result;
}

uint64_t sub_1000373C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v79 - v10;
  __chkstk_darwin(v9);
  v13 = &v79 - v12;
  static Logger.Application.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v87 = v5;
  v82 = v8;
  v83 = v2;
  v85 = v11;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100075A40, &v90);
    *(v17 + 12) = 2080;
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    v18 = Set.description.getter();
    v20 = sub_100005D28(v18, v19, &v90);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: urlContexts: %s", v17, 0x16u);
    swift_arrayDestroy();

    v86 = *(v87 + 8);
  }

  else
  {

    v86 = *(v5 + 8);
  }

  v86(v13, v4);
  v84 = v4;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v39 = *(a1 + 32);
    v40 = v39 & 0x3F;
    v80 = ((1 << v39) + 63) >> 6;
    v27 = (8 * v80);

    if (v40 <= 0xD)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

  v21 = &_swiftEmptySetSingleton;
  v90 = &_swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v22 = __CocoaSet.Iterator.next()();
  if (!v22)
  {
LABEL_23:

LABEL_40:
    v4 = v84;
    goto LABEL_41;
  }

  v23 = v22;
  sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
  v24 = v23;
  v4 = -1;
  while (1)
  {
    v88 = v24;
    swift_dynamicCast();
    v25 = [v89 options];
    v26 = [v25 _openAsDownload];

    v27 = v89;
    if (v26)
    {
      break;
    }

LABEL_8:
    v24 = __CocoaSet.Iterator.next()();
    if (!v24)
    {
      goto LABEL_23;
    }
  }

  v28 = *(v21 + 16);
  if (*(v21 + 24) <= v28)
  {
    sub_10004877C(v28 + 1);
  }

  v21 = v90;
  v29 = NSObject._rawHashValue(seed:)(v90[5]);
  v30 = v21 + 56;
  v31 = -1 << *(v21 + 32);
  v32 = v29 & ~v31;
  v33 = v32 >> 6;
  if (((-1 << v32) & ~*(v21 + 56 + 8 * (v32 >> 6))) != 0)
  {
    v34 = __clz(__rbit64((-1 << v32) & ~*(v21 + 56 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    *(*(v21 + 48) + 8 * v34) = v27;
    ++*(v21 + 16);
    goto LABEL_8;
  }

  v35 = 0;
  v36 = (63 - v31) >> 6;
  while (++v33 != v36 || (v35 & 1) == 0)
  {
    v37 = v33 == v36;
    if (v33 == v36)
    {
      v33 = 0;
    }

    v35 |= v37;
    v38 = *(v30 + 8 * v33);
    if (v38 != -1)
    {
      v34 = __clz(__rbit64(~v38)) + (v33 << 6);
      goto LABEL_22;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_65:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

LABEL_25:
    v79 = &v79;
    __chkstk_darwin(isStackAllocationSafe);
    v42 = &v79 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v27);
    v81 = 0;
    v43 = 0;
    v4 = a1 + 56;
    v44 = 1 << *(a1 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(a1 + 56);
    v47 = (v44 + 63) >> 6;
    while (v46)
    {
      v48 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
LABEL_35:
      v51 = v48 | (v43 << 6);
      v27 = *(*(a1 + 48) + 8 * v51);
      v52 = [v27 options];
      v53 = [v52 _openAsDownload];

      if (v53)
      {
        *&v42[(v51 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v51;
        if (__OFADD__(v81++, 1))
        {
          __break(1u);
LABEL_39:
          v21 = sub_10004AAC0(v42, v80, v81, a1);
          goto LABEL_40;
        }
      }
    }

    v49 = v43;
    while (1)
    {
      v43 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v43 >= v47)
      {
        goto LABEL_39;
      }

      v50 = *(v4 + 8 * v43);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        v46 = (v50 - 1) & v50;
        goto LABEL_35;
      }
    }
  }

  v78 = swift_slowAlloc();
  v21 = sub_10004B128(v78, v80, a1, sub_100037E68);

LABEL_41:

  v55 = sub_100037EC8(v21, a1);
  v56 = v85;
  static Logger.Application.getter();

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v59 = 136315650;
    *(v59 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100075A40, &v90);
    *(v59 + 12) = 2048;
    if ((v21 & 0xC000000000000001) != 0)
    {
      v60 = __CocoaSet.count.getter();
    }

    else
    {
      v60 = *(v21 + 16);
    }

    *(v59 + 14) = v60;

    *(v59 + 22) = 2080;
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    v62 = Set.description.getter();
    v64 = sub_100005D28(v62, v63, &v90);

    *(v59 + 24) = v64;
    _os_log_impl(&_mh_execute_header, v57, v58, "%s: urls to import directly to Downloads folder (%ld): %s", v59, 0x20u);
    swift_arrayDestroy();

    v61 = v85;
  }

  else
  {

    v61 = v56;
  }

  v86(v61, v4);
  v65 = v82;
  static Logger.Application.getter();

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v68 = 136315650;
    *(v68 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100075A40, &v90);
    *(v68 + 12) = 2048;
    if ((v55 & 0xC000000000000001) != 0)
    {
      v69 = __CocoaSet.count.getter();
    }

    else
    {
      v69 = *(v55 + 16);
    }

    *(v68 + 14) = v69;

    *(v68 + 22) = 2080;
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    v72 = Set.description.getter();
    v74 = sub_100005D28(v72, v73, &v90);

    *(v68 + 24) = v74;
    _os_log_impl(&_mh_execute_header, v66, v67, "%s: urls to import via the picker (%ld): %s", v68, 0x20u);
    swift_arrayDestroy();

    v70 = v65;
    v71 = v84;
  }

  else
  {

    v70 = v65;
    v71 = v4;
  }

  v86(v70, v71);
  v76 = v83;
  if ((v21 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_55;
    }
  }

  else if (*(v21 + 16))
  {
LABEL_55:
    sub_10003853C(v21, v76, v75);
  }

  if ((v55 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_58;
    }
  }

  else if (*(v55 + 16))
  {
LABEL_58:
    sub_100037FBC(v55, v76);
  }
}

id sub_100037E68(id *a1)
{
  v1 = [*a1 options];
  v2 = [v1 _openAsDownload];

  return v2;
}

void *sub_100037EC8(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_100049DBC(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_10004858C(v5, v6);
LABEL_10:

  return sub_100049FF4(a1, v2);
}

void sub_100037FBC(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v39 = type metadata accessor for URL();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_100005D28(0xD00000000000001CLL, 0x8000000100075A60, v43);
    *(v11 + 12) = 2048;
    v13 = a1 & 0xC000000000000001;
    v36 = v3;
    v37 = v6;
    v35[1] = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *(a1 + 16);
    }

    *(v11 + 14) = v14;

    *(v11 + 22) = 2080;
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    v18 = Set.description.getter();
    v20 = sub_100005D28(v18, v19, v43);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: Calling openInputURL: for %ld urlContexts: %s", v11, 0x20u);
    swift_arrayDestroy();

    (*(v37 + 8))(v8, v5);
    v3 = v36;
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_5:
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    a1 = v43[0];
    v15 = v43[1];
    v16 = v43[2];
    v13 = v43[3];
    v17 = v43[4];
    goto LABEL_12;
  }

  (*(v6 + 8))(v8, v5);
  v13 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_5;
  }

LABEL_8:
  v21 = -1 << *(a1 + 32);
  v15 = a1 + 56;
  v16 = ~v21;
  v22 = -v21;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v17 = v23 & *(a1 + 56);

LABEL_12:
  v37 = v16;
  v24 = (v16 + 64) >> 6;
  v25 = (v3 + 8);
  if (a1 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = v13;
    v27 = v17;
    v28 = v13;
    if (!v17)
    {
      break;
    }

LABEL_17:
    v29 = (v27 - 1) & v27;
    v30 = *(*(a1 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v30)
    {
LABEL_23:
      sub_100052240(a1);
      return;
    }

    while (1)
    {
      v32 = [v30 URL];
      v33 = v38;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for DeepLinkNavigator();
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v34 + 32) = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      *(v34 + 32) = &off_10008E4D8;
      swift_unknownObjectWeakAssign();
      sub_100069794(v33, v30);

      (*v25)(v33, v39);
      v13 = v28;
      v17 = v29;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      v31 = __CocoaSet.Iterator.next()();
      if (v31)
      {
        v41 = v31;
        sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
        swift_dynamicCast();
        v30 = v42;
        v28 = v13;
        v29 = v17;
        if (v42)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v24)
    {
      goto LABEL_23;
    }

    v27 = *(v15 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_10003853C(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = a2;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for URL();
  v6 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  v14 = os_log_type_enabled(v12, v13);
  v68 = a1;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075A80, aBlock);
    *(v15 + 12) = 2048;
    v17 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *(a1 + 16);
    }

    *(v15 + 14) = v18;

    _os_log_impl(&_mh_execute_header, v12, v13, "%s: starting to import (%ld) items directly to Downloads folder.", v15, 0x16u);
    sub_100034948(v16);

    (*(v9 + 8))(v11, v8);
    if (!v17)
    {
      goto LABEL_8;
    }

LABEL_5:
    v62 = __CocoaSet.count.getter();
    goto LABEL_9;
  }

  (*(v9 + 8))(v11, v8);
  v17 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_5;
  }

LABEL_8:
  v62 = *(v68 + 16);
LABEL_9:
  v65 = dispatch_group_create();
  v66 = swift_allocObject();
  *(v66 + 16) = &_swiftEmptyArrayStorage;
  if (v17)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    v20 = aBlock[6];
    v19 = aBlock[7];
    v21 = aBlock[8];
    v22 = aBlock[9];
    v23 = aBlock[10];
  }

  else
  {
    v20 = v68;
    v24 = -1 << *(v68 + 32);
    v19 = v68 + 56;
    v21 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(v68 + 56);

    v22 = 0;
  }

  v53[1] = v21;
  v27 = (v21 + 64) >> 6;
  v60 = (v6 + 8);
  v61 = v27;
  if (v20 < 0)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v28 = v22;
    v29 = v23;
    v30 = v22;
    if (!v23)
    {
      break;
    }

LABEL_20:
    v31 = (v29 - 1) & v29;
    v32 = *(*(v20 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
    if (!v32)
    {
LABEL_26:
      sub_100052240(v20);
      sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
      v44 = static OS_dispatch_queue.main.getter();
      v45 = swift_allocObject();
      v46 = v67;
      *(v45 + 16) = v66;
      *(v45 + 24) = v46;
      aBlock[4] = sub_100052288;
      aBlock[5] = v45;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002DB0;
      aBlock[3] = &unk_10008EC68;
      v47 = _Block_copy(aBlock);
      v48 = v46;

      v49 = v54;
      static DispatchQoS.unspecified.getter();
      v69 = &_swiftEmptyArrayStorage;
      sub_10004DC20(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_100002D44(&qword_100093420, &unk_100093A80, &qword_1000736E0, &protocol conformance descriptor for [A]);
      v50 = v56;
      v51 = v59;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v52 = v65;
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v47);

      (*(v58 + 8))(v50, v51);
      (*(v55 + 8))(v49, v57);

      return;
    }

    while (1)
    {
      LODWORD(v68) = v62 == 1;
      v34 = v65;
      dispatch_group_enter(v65);
      v35 = [v32 URL];
      v36 = v19;
      v37 = v63;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = v20;
      v39 = v67;
      v40 = v32;
      v23 = v31;
      v41 = v66;

      v42 = v34;
      sub_10004DC68(v37, v39, v68, v39, v40, v41, v42);

      v20 = v38;

      v43 = v37;
      v19 = v36;
      v27 = v61;
      (*v60)(v43, v64);
      v22 = v30;
      if ((v38 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_22:
      v33 = __CocoaSet.Iterator.next()();
      if (v33)
      {
        v69 = v33;
        sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
        swift_dynamicCast();
        v32 = aBlock[0];
        v30 = v22;
        v31 = v23;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      goto LABEL_26;
    }

    v29 = *(v19 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}