uint64_t sub_10001D680()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001D710(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10000281C(&qword_100039D28, &qword_10002B900);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10001D820, 0, 0);
}

uint64_t sub_10001D820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = v3;
  if (*(v3[4] + 32))
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v4 = v3[10];
    v5 = v3[6];
    v6 = v3[7];
    v7 = v3[2];
    v8 = type metadata accessor for Logger();
    v3[11] = sub_100001F70(v8, static Logger.daemon);
    v38 = *(v6 + 16);
    v38(v4, v7, v5);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v3[10];
    v14 = v3[6];
    v13 = v3[7];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v15 = 136315138;
      sub_1000211DC(&qword_10003A150, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v12, v14);
      v19 = sub_100020014(v16, v18, &v39);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Wait for download to complete %s", v15, 0xCu);
      sub_10000EA28(v37);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v23 = v3[9];
    v24 = v3[6];
    v25 = v3[7];
    v27 = v3[4];
    v26 = v3[5];
    v28 = v3[2];
    v29 = v3[3];
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
    v38(v23, v28, v24);
    v31 = (*(v25 + 80) + 48) & ~*(v25 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    *(v32 + 4) = v29;
    *(v32 + 5) = v27;
    (*(v25 + 32))(&v32[v31], v23, v24);
    v33 = v29;

    v34 = sub_100022EC4(0, 0, v26, &unk_10002BBC8, v32);
    v3[12] = v34;
    v35 = swift_task_alloc();
    v3[13] = v35;
    v36 = sub_10000281C(&qword_100039ED0, &unk_10002B940);
    *v35 = v3;
    v35[1] = sub_10001DC50;

    return Task.value.getter(v36, v34, &type metadata for () + 8, v36, &protocol self-conformance witness table for Error);
  }

  else
  {
    sub_100014E24();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();

    v21 = v3[1];

    return v21();
  }
}

uint64_t sub_10001DC50()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100022018;
  }

  else
  {
    v2 = sub_10001DD64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001DD64(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Download complete", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

void sub_10001DE60(uint64_t a1)
{
  if (!qword_10003A570)
  {
    sub_10000E99C(&unk_10003A578, &unk_10002BBB0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10003A570);
    }
  }
}

uint64_t sub_10001DEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  type metadata accessor for CocoaError.Code();
  v6[29] = swift_task_alloc();
  v8 = type metadata accessor for CocoaError();
  v6[30] = v8;
  v6[31] = *(v8 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_10001E03C, 0, 0);
}

uint64_t sub_10001E03C()
{
  v97 = v0;
  v1 = *(v0 + 184);
  v2 = [objc_opt_self() progressWithTotalUnitCount:100];
  *(v0 + 264) = v2;
  [v1 addChild:v2 withPendingUnitCount:80];
  if ([v1 isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100001F70(v3, static Logger.daemon);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Progress cancelled, stop waiting for download to complete", v6, 2u);
    }

    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    v9 = *(v0 + 240);
    v10 = *(v0 + 248);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v10 + 8))(v8, v9);
    swift_willThrow();
    goto LABEL_8;
  }

  *(v0 + 272) = NSMetadataItemURLKey;
  *(v0 + 280) = NSMetadataUbiquitousItemDownloadingStatusKey;
  *(v0 + 288) = NSMetadataUbiquitousItemDownloadingErrorKey;
  *(v0 + 296) = NSMetadataUbiquitousItemIsDownloadingKey;
  *(v0 + 304) = NSMetadataUbiquitousItemPercentDownloadedKey;
  *(v0 + 312) = NSMetadataUbiquitousItemDownloadingStatusCurrent;
  *(v0 + 320) = _NSProgressRemoteLocalizedDescriptionKey;
  v11 = sub_100018BA0(*(v0 + 200), 1u, 0x14uLL);
  *(v0 + 328) = v11;
  if (!v11)
  {
    v7 = *(v0 + 264);
    sub_100014E24();
    swift_allocError();
    *v39 = 2;
    swift_willThrow();
LABEL_8:

    v12 = *(v0 + 8);
LABEL_9:

    return v12();
  }

  v14 = v11;
  sub_10000281C(&qword_10003A738, &unk_10002BBE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10002BAE0;
  *(v15 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 40) = v16;
  *(v15 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 56) = v17;
  *(v15 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 72) = v18;
  *(v15 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 88) = v19;
  *(v15 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 104) = v20;
  v7 = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v7 valuesForAttributes:isa];

  if (!v22)
  {
    v40 = *(v0 + 264);
    sub_100014E24();
    swift_allocError();
    *v41 = 2;
    swift_willThrow();

    goto LABEL_8;
  }

  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100001F70(v24, static Logger.daemon);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v96 = v28;
    *v27 = 136315138;
    v29 = Dictionary.description.getter();
    v31 = sub_100020014(v29, v30, &v96);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "Item values: %s", v27, 0xCu);
    sub_10000EA28(v28);
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v23 + 16))
  {

LABEL_25:
    v37 = 0;
    v38 = 0xE000000000000000;
    goto LABEL_26;
  }

  v34 = sub_1000104D0(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_10000E7A8(*(v23 + 56) + 32 * v34, v0 + 16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 152);
LABEL_26:
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v42)
  {

LABEL_30:

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Bundle is current", v46, 2u);
    }

    v47 = *(v0 + 264);

    [v47 setCompletedUnitCount:100];

    v12 = *(v0 + 8);
    goto LABEL_9;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v43)
  {
    goto LABEL_30;
  }

  v48 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v49);
  v51 = v50;
  *(v0 + 160) = 0;
  v52 = [v48 startDownloadingUbiquitousItemAtURL:v50 error:v0 + 160];

  v53 = *(v0 + 160);
  if (!v52)
  {
    v69 = *(v0 + 264);
    v70 = v53;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_8;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;
  if (*(v23 + 16))
  {
    v57 = v54;
    v58 = v53;
    v59 = sub_1000104D0(v57, v56);
    LOBYTE(v57) = v60;

    if (v57)
    {
      sub_10000E7A8(*(v23 + 56) + 32 * v59, v0 + 48);
      sub_10000E838(0, &qword_100039ED8, NSError_ptr);
      if (swift_dynamicCast())
      {
        v61 = *(v0 + 176);

        v62 = v61;
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *v65 = 138412290;
          *(v65 + 4) = v62;
          *v66 = v62;
          v67 = v62;
          _os_log_impl(&_mh_execute_header, v63, v64, "Download error %@", v65, 0xCu);
          sub_100014CFC(v66, &qword_100039E40, &unk_10002BAC0);
        }

        v68 = *(v0 + 264);

        swift_willThrow();
        goto LABEL_8;
      }
    }
  }

  else
  {
    v71 = v53;
  }

  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v23 + 16))
  {
    v74 = sub_1000104D0(v72, v73);
    v76 = v75;

    if (v76)
    {
      sub_10000E7A8(*(v23 + 56) + 32 * v74, v0 + 80);
      if (swift_dynamicCast() & 1) != 0 && (*(v0 + 376))
      {

        v77 = 10;
        goto LABEL_51;
      }
    }
  }

  else
  {
  }

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&_mh_execute_header, v78, v79, "Item didn't start downloading yet", v80, 2u);
  }

  v77 = 9;
LABEL_51:
  *(v0 + 336) = v77;
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v23 + 16))
  {

    goto LABEL_56;
  }

  v83 = sub_1000104D0(v81, v82);
  v85 = v84;

  if ((v85 & 1) == 0)
  {
LABEL_56:

    goto LABEL_57;
  }

  sub_10000E7A8(*(v23 + 56) + 32 * v83, v0 + 112);

  if (swift_dynamicCast())
  {
    v86 = *(v0 + 168);
    goto LABEL_58;
  }

LABEL_57:
  v86 = 0.0;
LABEL_58:
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 134217984;
    *(v89 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v87, v88, "Download progress %f", v89, 0xCu);
  }

  v90 = 0.0;
  if (v86 != 0.0)
  {
    v90 = v86;
  }

  *(v0 + 352) = v90;
  *(v0 + 344) = v86 == 0.0;
  if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_69;
  }

  if (v86 <= -9.22337204e18)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  if (v86 >= 9.22337204e18)
  {
    goto LABEL_70;
  }

  [*(v0 + 264) setCompletedUnitCount:v86];
  v91 = *(v0 + 320);
  v92 = *(v0 + 184);
  v93 = String._bridgeToObjectiveC()();
  [v92 setLocalizedDescription:v93];

  v94 = String._bridgeToObjectiveC()();
  [v92 setUserInfoObject:v94 forKey:v91];

  static Clock<>.continuous.getter();
  v95 = swift_task_alloc();
  *(v0 + 360) = v95;
  *v95 = v0;
  v95[1] = sub_10001ED8C;

  return sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001ED8C()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = v2[41];
    v5 = v2[27];
    v4 = v2[28];
    v6 = v2[26];

    (*(v5 + 8))(v4, v6);
    v7 = sub_10001FDCC;
  }

  else
  {
    (*(v2[27] + 8))(v2[28], v2[26]);
    v7 = sub_10001EF14;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001EF14()
{
  v109 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 184);

  if ([v2 isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100001F70(v3, static Logger.daemon);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Progress cancelled, stop waiting for download to complete", v6, 2u);
    }

    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    v9 = *(v0 + 240);
    v10 = *(v0 + 248);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v10 + 8))(v8, v9);
    swift_willThrow();
    goto LABEL_9;
  }

  v11 = *(v0 + 368);
  v12 = *(v0 + 352);
  v13 = *(v0 + 336);
  v14 = *(v0 + 344);
  v15 = sub_100018BA0(*(v0 + 200), 1u, 0x14uLL);
  *(v0 + 328) = v15;
  if (v11)
  {
    v7 = *(v0 + 264);
LABEL_9:

    v16 = *(v0 + 8);
LABEL_10:

    return v16();
  }

  if (!v15)
  {
    v7 = *(v0 + 264);
    sub_100014E24();
    swift_allocError();
    *v36 = 2;
    swift_willThrow();
    goto LABEL_9;
  }

  v18 = v15;
  sub_10000281C(&qword_10003A738, &unk_10002BBE0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10002BAE0;
  *(v19 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v19 + 40) = v20;
  *(v19 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v19 + 56) = v21;
  *(v19 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v19 + 72) = v22;
  *(v19 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v19 + 88) = v23;
  *(v19 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v19 + 104) = v24;
  v7 = v18;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = [v7 valuesForAttributes:isa];

  if (!v26)
  {
    v37 = *(v0 + 264);
    sub_100014E24();
    swift_allocError();
    *v38 = 2;
    swift_willThrow();

    goto LABEL_9;
  }

  v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100001F70(v28, static Logger.daemon);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  v107 = v13;
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v108 = v106;
    *v31 = 136315138;
    v32 = Dictionary.description.getter();
    v34 = v14;
    v35 = sub_100020014(v32, v33, &v108);

    *(v31 + 4) = v35;
    v14 = v34;
    _os_log_impl(&_mh_execute_header, v29, v30, "Item values: %s", v31, 0xCu);
    sub_10000EA28(v106);
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v27 + 16))
  {

LABEL_26:
    v45 = 0;
    v44 = 0xE000000000000000;
    goto LABEL_27;
  }

  v41 = sub_1000104D0(v39, v40);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_10000E7A8(*(v27 + 56) + 32 * v41, v0 + 16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v45 = *(v0 + 144);
  v44 = *(v0 + 152);
LABEL_27:
  if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v46)
  {

LABEL_31:

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v48, v49))
    {
LABEL_34:
      v52 = *(v0 + 264);

      [v52 setCompletedUnitCount:100];

      v16 = *(v0 + 8);
      goto LABEL_10;
    }

    v50 = "Bundle is current";
LABEL_33:
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, v50, v51, 2u);

    goto LABEL_34;
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v47)
  {
    goto LABEL_31;
  }

  v53 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v54);
  v56 = v55;
  *(v0 + 160) = 0;
  v57 = [v53 startDownloadingUbiquitousItemAtURL:v55 error:v0 + 160];

  v58 = *(v0 + 160);
  if (!v57)
  {
    v74 = *(v0 + 264);
    v75 = v58;

    _convertNSErrorToError(_:)();

LABEL_83:
    swift_willThrow();

    goto LABEL_9;
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;
  if (*(v27 + 16))
  {
    v62 = v59;
    v63 = v58;
    v64 = sub_1000104D0(v62, v61);
    LOBYTE(v62) = v65;

    if (v62)
    {
      sub_10000E7A8(*(v27 + 56) + 32 * v64, v0 + 48);
      sub_10000E838(0, &qword_100039ED8, NSError_ptr);
      if (swift_dynamicCast())
      {
        v66 = *(v0 + 176);

        v67 = v66;
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v70 = 138412290;
          *(v70 + 4) = v67;
          *v71 = v67;
          v72 = v67;
          _os_log_impl(&_mh_execute_header, v68, v69, "Download error %@", v70, 0xCu);
          sub_100014CFC(v71, &qword_100039E40, &unk_10002BAC0);
        }

        v73 = *(v0 + 264);

        swift_willThrow();
        goto LABEL_9;
      }
    }
  }

  else
  {
    v76 = v58;
  }

  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v27 + 16))
  {
    v79 = sub_1000104D0(v77, v78);
    v81 = v80;

    if (v81)
    {
      sub_10000E7A8(*(v27 + 56) + 32 * v79, v0 + 80);
      if (swift_dynamicCast() & 1) != 0 && (*(v0 + 376))
      {

        v82 = v107;
        goto LABEL_54;
      }
    }
  }

  else
  {
  }

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&_mh_execute_header, v83, v84, "Item didn't start downloading yet", v85, 2u);
  }

  if (!v107)
  {

    if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v92)
    {
    }

    else
    {
      v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v102 & 1) == 0)
      {
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v48, v49))
        {
          goto LABEL_34;
        }

        v50 = "Bundle is downloaded (but not current), completing";
        goto LABEL_33;
      }
    }

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v97, v98))
    {
      goto LABEL_82;
    }

    v99 = swift_slowAlloc();
    *v99 = 0;
    v100 = "Item didn't start downloading for 10 waiting iterations, throwing an error";
    goto LABEL_81;
  }

  v82 = v107 - 1;
  if (__OFSUB__(v107, 1))
  {
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_54:
  *(v0 + 336) = v82;
  v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v27 + 16))
  {

    goto LABEL_62;
  }

  v88 = sub_1000104D0(v86, v87);
  v90 = v89;

  if ((v90 & 1) == 0)
  {
LABEL_62:

    goto LABEL_63;
  }

  sub_10000E7A8(*(v27 + 56) + 32 * v88, v0 + 112);

  if (swift_dynamicCast())
  {
    v91 = *(v0 + 168);
    goto LABEL_64;
  }

LABEL_63:
  v91 = 0.0;
LABEL_64:
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 134217984;
    *(v95 + 4) = v91;
    _os_log_impl(&_mh_execute_header, v93, v94, "Download progress %f", v95, 0xCu);
  }

  if (v91 == v12)
  {
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_90;
    }

    if (v14 >= 100)
    {

      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v97, v98))
      {
LABEL_82:
        v103 = *(v0 + 256);
        v74 = *(v0 + 264);
        v104 = *(v0 + 240);
        v105 = *(v0 + 248);

        static CocoaError.Code.ubiquitousFileUnavailable.getter();
        sub_100026FA8(_swiftEmptyArrayStorage);
        sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
        _BridgedStoredNSError.init(_:userInfo:)();
        CocoaError._nsError.getter();
        (*(v105 + 8))(v103, v104);
        goto LABEL_83;
      }

      v99 = swift_slowAlloc();
      *v99 = 0;
      v100 = "No progress for a while, throwing an error";
LABEL_81:
      _os_log_impl(&_mh_execute_header, v97, v98, v100, v99, 2u);

      goto LABEL_82;
    }
  }

  else
  {
    v12 = v91;
  }

  *(v0 + 352) = v12;
  *(v0 + 344) = v14;
  if ((*&v91 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_87;
  }

  if (v91 <= -9.22337204e18)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v91 >= 9.22337204e18)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
  }

  [*(v0 + 264) setCompletedUnitCount:v91];
  static Clock<>.continuous.getter();
  v101 = swift_task_alloc();
  *(v0 + 360) = v101;
  *v101 = v0;
  v101[1] = sub_10001ED8C;

  return sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001FDCC()
{
  v1 = *(v0 + 328);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001FE8C(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000EE44;

  return sub_10001DEC4(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10001FFB8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100020014(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100020014(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000200E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000E7A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000EA28(v11);
  return v7;
}

unint64_t sub_1000200E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000201EC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id *sub_1000201EC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100020238(a1, a2);
  sub_100020368(&off_100034D88);
  return v3;
}

id *sub_100020238(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100020454(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100020454(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100020368(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000204C8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id *sub_100020454(uint64_t a1, uint64_t a2)
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

  sub_10000281C(&qword_10003A730, &qword_10002BBD8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *sub_1000204C8(id *result, int64_t a2, char a3, id *a4)
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
    sub_10000281C(&qword_10003A730, &qword_10002BBD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1000205C0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100020634(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10002086C(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100020A5C(v20 + 1);
    }

    v18 = v8;
    sub_100020C84(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100020D08(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_10002086C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000281C(&qword_10003A758, &qword_10002BC30);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100020A5C(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100020A5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000281C(&qword_10003A758, &qword_10002BC30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_100020C84(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100020D08(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100020A5C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100020E78();
      goto LABEL_12;
    }

    sub_100020FC8(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_100020E78()
{
  v1 = v0;
  sub_10000281C(&qword_10003A758, &qword_10002BC30);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

Swift::Int sub_100020FC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000281C(&qword_10003A758, &qword_10002BC30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000211DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100021224(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000EE44;

  return sub_10001BDBC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100021328(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000EE44;

  return sub_10001ACCC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10002142C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100021500(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000296C;

  return sub_100019C70(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100021604()
{
  if (*(v0 + 40))
  {
    sub_10000EA28((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100021644()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10002171C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100018FC0(v3, v0 + v2, v4);
}

uint64_t sub_1000217AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000217E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000281C(&qword_10003A740, &unk_10002BC20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100021854()
{
  result = qword_10003A750;
  if (!qword_10003A750)
  {
    sub_10000E838(255, &qword_10003A748, NSMetadataItem_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A750);
  }

  return result;
}

void sub_1000218C4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10000281C(&qword_10003A758, &qword_10002BC30);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
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

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
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
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_100021BB4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
    sub_100021854();
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100020634(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_100021CF4()
{
  result = qword_10003A778;
  if (!qword_10003A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A778);
  }

  return result;
}

uint64_t sub_100021D50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100021D98(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000296C;

  return sub_100018454(v6, a1, v4, v5, v8, v7);
}

uint64_t getEnumTagSinglePayload for ContainerObserverError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContainerObserverError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100021FB4()
{
  result = qword_10003A780;
  if (!qword_10003A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A780);
  }

  return result;
}

uint64_t sub_100022020(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100022100(__SecTask *a1)
{
  error = 0;
  v2 = String._bridgeToObjectiveC()();
  v3 = SecTaskCopyValueForEntitlement(a1, v2, &error);

  if (v3)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v16[0] = 0;
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    swift_unknownObjectRelease();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Couldn't convert cloudServicesArray to Array of Strings", v14, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = error;
    v5 = error;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v16[0] = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_100020014(0xD000000000000023, 0x800000010002D3C0, v16);
      *(v8 + 12) = 2082;
      v16[2] = v4;
      sub_10000281C(qword_10003A830, &qword_10002BD58);
      v9 = Optional.debugDescription.getter();
      v11 = sub_100020014(v9, v10, v16);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Couldn't lookup %s: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1000228A8(__SecTask *a1)
{
  error = 0;
  v2 = String._bridgeToObjectiveC()();
  v3 = SecTaskCopyValueForEntitlement(a1, v2, &error);

  if (!v3)
  {
    v14 = error;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136446210;
      sub_10000281C(qword_10003A830, &qword_10002BD58);
      v19 = Optional.debugDescription.getter();
      v21 = sub_100020014(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Couldn't lookup kSecEntitlementApplicationIdentifier: %{public}s", v17, 0xCu);
      sub_10000EA28(v18);
    }

    else
    {
    }

    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 lastPathComponent];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (String.count.getter() >= 1)
    {
      v9 = v6 == 11822 && v8 == 0xE200000000000000;
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v6 != 46 || v8 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        swift_unknownObjectRelease();
        return v6;
      }
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_19;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Invalid application identifier.";
    goto LABEL_18;
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Couldn't convert application identifier to String";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);
  }

LABEL_19:

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_100022BF0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100022C4C(uint64_t a1)
{
  sub_10000E99C(&qword_100039ED0, &unk_10002B940);
  type metadata accessor for CheckedContinuation();
  result = type metadata accessor for Optional();
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

id *sub_100022D28()
{
  v1 = *(*v0 + 13);
  sub_10000E99C(&qword_100039ED0, &unk_10002B940);
  type metadata accessor for CheckedContinuation();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100022E84(*(v0 + *(*v0 + 14)), *(v0 + *(*v0 + 14) + 8));
  return v0;
}

uint64_t sub_100022E14()
{
  sub_100022D28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100022E84(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100022EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100014C94(a3, v22 - v9, &qword_100039D28, &qword_10002B900);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100014CFC(v10, &qword_100039D28, &qword_10002B900);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100014CFC(a3, &qword_100039D28, &qword_10002B900);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100014CFC(a3, &qword_100039D28, &qword_10002B900);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100023170(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v5 = type metadata accessor for CocoaError.Code();
  __chkstk_darwin(v5 - 8);
  v37[1] = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CocoaError();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v37[0] = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000281C(&qword_10003A998, &qword_10002BE38);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - v11;
  v13 = sub_10000281C(&qword_10003A9A0, &qword_10002BE50);
  v14 = __chkstk_darwin(v13 - 8);
  v40 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v42 = v37 - v17;
  __chkstk_darwin(v16);
  v43 = v37 - v18;
  v44 = a1[2];
  v19 = *(*a1 + 112);
  v20 = (a1 + v19);
  v21 = *(a1 + v19);
  v22 = *(a1 + v19 + 8);
  if (v21)
  {
    aBlock[4] = *(a1 + v19);
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002BBC;
    aBlock[3] = &unk_1000357B0;
    v23 = _Block_copy(aBlock);
    v41 = a1;
    sub_1000270D8(v21, v22);
    sub_1000270D8(v21, v22);
    a1 = v41;
  }

  else
  {
    sub_1000270D8(0, *(a1 + v19 + 8));
    v23 = 0;
  }

  [v44 setCancellationHandler:v23];
  _Block_release(v23);
  sub_100022E84(v21, v22);
  v24 = *v20;
  v25 = v20[1];
  *v20 = 0;
  v20[1] = 0;
  sub_100022E84(v24, v25);
  v26 = (v10 + 48);
  v27 = v45;
  if (v45 != 1)
  {
    v31 = v43;
    sub_100014C94(a1 + *(*a1 + 104), v43, &qword_10003A9A0, &qword_10002BE50);
    if (!(*v26)(v31, 1, v9))
    {
      (*(v10 + 16))(v12, v31, v9);
      sub_100014CFC(v31, &qword_10003A9A0, &qword_10002BE50);
      aBlock[0] = v27;

      CheckedContinuation.resume(returning:)();
LABEL_16:
      (*(v10 + 8))(v12, v9);
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v28 = a1 + *(*a1 + 104);
  if (!a3)
  {
    v31 = v40;
    sub_100014C94(v28, v40, &qword_10003A9A0, &qword_10002BE50);
    if (!(*v26)(v31, 1, v9))
    {
      (*(v10 + 16))(v12, v31, v9);
      sub_100014CFC(v31, &qword_10003A9A0, &qword_10002BE50);
      static CocoaError.Code.featureUnsupported.getter();
      sub_100026FA8(_swiftEmptyArrayStorage);
      sub_1000270E8(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
      v32 = v37[0];
      v33 = v39;
      _BridgedStoredNSError.init(_:userInfo:)();
      v34 = CocoaError._nsError.getter();
      (*(v38 + 8))(v32, v33);
      aBlock[0] = v34;
      goto LABEL_15;
    }

LABEL_11:
    v30 = v31;
    goto LABEL_12;
  }

  v29 = v42;
  sub_100014C94(v28, v42, &qword_10003A9A0, &qword_10002BE50);
  if (!(*v26)(v29, 1, v9))
  {
    (*(v10 + 16))(v12, v29, v9);
    swift_errorRetain();
    sub_100014CFC(v29, &qword_10003A9A0, &qword_10002BE50);
    aBlock[0] = a3;
LABEL_15:
    CheckedContinuation.resume(throwing:)();
    goto LABEL_16;
  }

  v30 = v29;
LABEL_12:
  sub_100014CFC(v30, &qword_10003A9A0, &qword_10002BE50);
LABEL_17:
  v35 = *(*a1 + 104);
  sub_100014CFC(a1 + v35, &qword_10003A9A0, &qword_10002BE50);
  return (*(v10 + 56))(a1 + v35, 1, 1, v9);
}

uint64_t sub_1000237C0(void *a1, int a2, uint64_t a3)
{
  v44 = a2;
  v5 = type metadata accessor for CocoaError.Code();
  __chkstk_darwin(v5 - 8);
  v36[1] = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CocoaError();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v36[0] = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000281C(&qword_100039E50, &qword_10002BE90);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v36 - v11;
  v13 = sub_10000281C(&qword_10003A9B8, &qword_10002BE88);
  v14 = __chkstk_darwin(v13 - 8);
  v39 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v41 = v36 - v17;
  __chkstk_darwin(v16);
  v42 = v36 - v18;
  v43 = a1[2];
  v19 = *(*a1 + 112);
  v20 = (a1 + v19);
  v21 = *(a1 + v19);
  v22 = *(a1 + v19 + 8);
  if (v21)
  {
    aBlock[4] = *(a1 + v19);
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002BBC;
    aBlock[3] = &unk_1000358A0;
    v23 = _Block_copy(aBlock);
    v40 = a1;
    sub_1000270D8(v21, v22);
    sub_1000270D8(v21, v22);
    a1 = v40;
  }

  else
  {
    sub_1000270D8(0, *(a1 + v19 + 8));
    v23 = 0;
  }

  [v43 setCancellationHandler:v23];
  _Block_release(v23);
  sub_100022E84(v21, v22);
  v24 = *v20;
  v25 = v20[1];
  *v20 = 0;
  v20[1] = 0;
  sub_100022E84(v24, v25);
  v26 = (v10 + 48);
  if ((v44 & 1) == 0)
  {
    v30 = v42;
    sub_100014C94(a1 + *(*a1 + 104), v42, &qword_10003A9B8, &qword_10002BE88);
    if (!(*v26)(v30, 1, v9))
    {
      (*(v10 + 16))(v12, v30, v9);
      sub_100014CFC(v30, &qword_10003A9B8, &qword_10002BE88);
      CheckedContinuation.resume(returning:)();
LABEL_16:
      (*(v10 + 8))(v12, v9);
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v27 = a1 + *(*a1 + 104);
  if (!a3)
  {
    v30 = v39;
    sub_100014C94(v27, v39, &qword_10003A9B8, &qword_10002BE88);
    if (!(*v26)(v30, 1, v9))
    {
      (*(v10 + 16))(v12, v30, v9);
      sub_100014CFC(v30, &qword_10003A9B8, &qword_10002BE88);
      static CocoaError.Code.featureUnsupported.getter();
      sub_100026FA8(_swiftEmptyArrayStorage);
      sub_1000270E8(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
      v31 = v36[0];
      v32 = v38;
      _BridgedStoredNSError.init(_:userInfo:)();
      v33 = CocoaError._nsError.getter();
      (*(v37 + 8))(v31, v32);
      aBlock[0] = v33;
      goto LABEL_15;
    }

LABEL_11:
    v29 = v30;
    goto LABEL_12;
  }

  v28 = v41;
  sub_100014C94(v27, v41, &qword_10003A9B8, &qword_10002BE88);
  if (!(*v26)(v28, 1, v9))
  {
    (*(v10 + 16))(v12, v28, v9);
    swift_errorRetain();
    sub_100014CFC(v28, &qword_10003A9B8, &qword_10002BE88);
    aBlock[0] = a3;
LABEL_15:
    CheckedContinuation.resume(throwing:)();
    goto LABEL_16;
  }

  v29 = v28;
LABEL_12:
  sub_100014CFC(v29, &qword_10003A9B8, &qword_10002BE88);
LABEL_17:
  v34 = *(*a1 + 104);
  sub_100014CFC(a1 + v34, &qword_10003A9B8, &qword_10002BE88);
  return (*(v10 + 56))(a1 + v34, 1, 1, v9);
}

void sub_100023DFC()
{
  v1 = v0;
  v2 = type metadata accessor for CocoaError.Code();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for CocoaError();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CocoaError.Code.userCancelled.getter();
  sub_100026FA8(_swiftEmptyArrayStorage);
  sub_1000270E8(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v7 = CocoaError._nsError.getter();
  (*(v4 + 8))(v6, v3);
  v8 = v1[3];
  [v8 lock];
  sub_100023170(v1, 1, v7);
  [v8 unlock];
}

void sub_100023FD8()
{
  v1 = v0;
  v2 = type metadata accessor for CocoaError.Code();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for CocoaError();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CocoaError.Code.userCancelled.getter();
  sub_100026FA8(_swiftEmptyArrayStorage);
  sub_1000270E8(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v7 = CocoaError._nsError.getter();
  (*(v4 + 8))(v6, v3);
  v8 = v1[3];
  [v8 lock];
  sub_1000237C0(v1, 1, v7);
  [v8 unlock];
}

uint64_t sub_1000241B4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v35 = a6;
  v13 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v16 = *(*a2 + 104);
  sub_100014CFC(&a2[v16], &qword_10003A9A0, &qword_10002BE50);
  v17 = sub_10000281C(&qword_10003A998, &qword_10002BE38);
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a2[v16], a1, v17);
  (*(v18 + 56))(&a2[v16], 0, 1, v17);
  v19 = *(a2 + 2);
  v20 = [v19 cancellationHandler];
  if (v20)
  {
    v21 = v20;
    v20 = swift_allocObject();
    v20[2] = v21;
    v22 = sub_100026AE0;
  }

  else
  {
    v22 = 0;
  }

  v23 = &a2[*(*a2 + 112)];
  v25 = *v23;
  v24 = v23[1];
  *v23 = v22;
  v23[1] = v20;
  sub_100022E84(v25, v24);
  v26 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000268CC;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002BBC;
  aBlock[3] = &unk_100035710;
  v27 = _Block_copy(aBlock);

  [v19 setCancellationHandler:v27];
  _Block_release(v27);
  v28 = type metadata accessor for TaskPriority();
  v29 = *(*(v28 - 8) + 56);
  v29(v15, 1, 1, v28);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = a2;
  v30[5] = a3;
  v30[6] = a4;

  sub_100012918(0, 0, v15, &unk_10002BE60, v30);

  if ((a7 & 1) == 0)
  {
    v29(v15, 1, 1, v28);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v33 = v35;
    v32[4] = a5;
    v32[5] = v33;
    v32[6] = a2;

    sub_100022EC4(0, 0, v15, &unk_10002BE70, v32);
  }

  return result;
}

uint64_t sub_100024558(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v35 = a6;
  v13 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v16 = *(*a2 + 104);
  sub_100014CFC(&a2[v16], &qword_10003A9B8, &qword_10002BE88);
  v17 = sub_10000281C(&qword_100039E50, &qword_10002BE90);
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a2[v16], a1, v17);
  (*(v18 + 56))(&a2[v16], 0, 1, v17);
  v19 = *(a2 + 2);
  v20 = [v19 cancellationHandler];
  if (v20)
  {
    v21 = v20;
    v20 = swift_allocObject();
    v20[2] = v21;
    v22 = sub_100028CB4;
  }

  else
  {
    v22 = 0;
  }

  v23 = &a2[*(*a2 + 112)];
  v25 = *v23;
  v24 = v23[1];
  *v23 = v22;
  v23[1] = v20;
  sub_100022E84(v25, v24);
  v26 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100027140;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002BBC;
  aBlock[3] = &unk_100035800;
  v27 = _Block_copy(aBlock);

  [v19 setCancellationHandler:v27];
  _Block_release(v27);
  v28 = type metadata accessor for TaskPriority();
  v29 = *(*(v28 - 8) + 56);
  v29(v15, 1, 1, v28);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = a2;
  v30[5] = a3;
  v30[6] = a4;

  sub_100012918(0, 0, v15, &unk_10002BEA0, v30);

  if ((a7 & 1) == 0)
  {
    v29(v15, 1, 1, v28);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v33 = v35;
    v32[4] = a5;
    v32[5] = v33;
    v32[6] = a2;

    sub_100022EC4(0, 0, v15, &unk_10002BEB0, v32);
  }

  return result;
}

uint64_t sub_1000248FC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100001F70(v4, static Logger.daemon);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Progress canceled, cancelling operation...", v7, 2u);
  }

  if (swift_weakLoadStrong())
  {
    a2();
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = (result + *(*result + 112));
    v10 = *v9;
    v11 = v9[1];
    sub_1000270D8(*v9, v11);

    if (v10)
    {
      v10(result);

      return sub_100022E84(v10, v11);
    }
  }

  return result;
}

uint64_t sub_100024A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 24) = a4;
  v8 = (a5 + *a5);
  v6 = swift_task_alloc();
  *(v5 + 32) = v6;
  *v6 = v5;
  v6[1] = sub_100024B70;

  return v8(v5 + 16);
}

uint64_t sub_100024B70()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100024D78;
  }

  else
  {
    v2 = sub_100024C84;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_100024C84()
{
  v1 = v0[2];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v3[3];
  [v4 lock];
  sub_100023170(v3, v1, 0);
  if (v2)
  {

    return [v4 unlock];
  }

  else
  {
    [v4 unlock];
    sub_100027130(v1);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100024D78()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v2[3];
  swift_errorRetain();
  [v3 lock];
  sub_100023170(v2, 1, v1);
  [v3 unlock];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100024E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 16) = a4;
  v8 = (a5 + *a5);
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_100024F64;

  return v8(v5 + 40);
}

uint64_t sub_100024F64()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_100025158;
  }

  else
  {
    v2 = sub_100025078;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_100025078()
{
  *(v0 + 40) = 0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = v2[3];
  [v3 lock];
  sub_1000237C0(v2, 0, 0);
  if (v1)
  {

    return [v3 unlock];
  }

  else
  {
    [v3 unlock];
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100025158()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v2[3];
  swift_errorRetain();
  [v3 lock];
  sub_1000237C0(v2, 1, v1);
  [v3 unlock];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100025250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for CocoaError.Code();
  v6[5] = swift_task_alloc();
  v7 = type metadata accessor for CocoaError();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_10002539C, 0, 0);
}

uint64_t sub_10002539C(uint64_t a1)
{
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v1[12] = v2;
  *v2 = v1;
  v2[1] = sub_10002545C;
  v4 = v1[2];
  v3 = v1[3];

  return sub_100026AF0(v4, v3, 0, 0, 1);
}

uint64_t sub_10002545C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10002577C;
  }

  else
  {
    v5 = sub_1000255CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

id sub_1000255CC(uint64_t a1)
{
  v2 = v1[13];
  v4 = v1[7];
  v3 = v1[8];
  v5 = v1[6];
  v6 = v1[4];
  static CocoaError.Code.userCancelled.getter();
  sub_100026FA8(_swiftEmptyArrayStorage);
  sub_1000270E8(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v7 = CocoaError._nsError.getter();
  (*(v4 + 8))(v3, v5);
  v8 = v6[3];
  [v8 lock];
  sub_100023170(v6, 1, v7);
  if (v2)
  {

    return [v8 unlock];
  }

  else
  {
    [v8 unlock];

    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_10002577C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000257F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for CocoaError.Code();
  v6[5] = swift_task_alloc();
  v7 = type metadata accessor for CocoaError();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_100025944, 0, 0);
}

uint64_t sub_100025944(uint64_t a1)
{
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v1[12] = v2;
  *v2 = v1;
  v2[1] = sub_100025A04;
  v4 = v1[2];
  v3 = v1[3];

  return sub_100026AF0(v4, v3, 0, 0, 1);
}

uint64_t sub_100025A04()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100028CD0;
  }

  else
  {
    v5 = sub_100025B74;
  }

  return _swift_task_switch(v5, 0, 0);
}

id sub_100025B74(uint64_t a1)
{
  v2 = v1[13];
  v4 = v1[7];
  v3 = v1[8];
  v5 = v1[6];
  v6 = v1[4];
  static CocoaError.Code.userCancelled.getter();
  sub_100026FA8(_swiftEmptyArrayStorage);
  sub_1000270E8(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v7 = CocoaError._nsError.getter();
  (*(v4 + 8))(v3, v5);
  v8 = v6[3];
  [v8 lock];
  sub_1000237C0(v6, 1, v7);
  if (v2)
  {

    return [v8 unlock];
  }

  else
  {
    [v8 unlock];

    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_100025D24(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100025DB4;

  return sub_10002738C();
}

uint64_t sub_100025DB4(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100025EB4, 0, 0);
}

uint64_t sub_100025ED4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 80) = a3;
  *(v4 + 24) = a1;
  return _swift_task_switch(sub_100025EFC, 0, 0);
}

uint64_t sub_100025EFC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 80);
  v4 = *(v0 + 24);
  v5 = *(v1 + 16);
  sub_10000281C(&qword_10003A990, &qword_10002BE30);
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  v7 = objc_allocWithZone(NSRecursiveLock);
  v8 = v5;
  *(v6 + 3) = [v7 init];
  v9 = *(*v6 + 104);
  v10 = sub_10000281C(&qword_10003A998, &qword_10002BE38);
  (*(*(v10 - 8) + 56))(&v6[v9], 1, 1, v10);
  v11 = &v6[*(*v6 + 112)];
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v6 + 2) = v8;

  v12 = swift_task_alloc();
  *(v0 + 56) = v12;
  *(v12 + 16) = v6;
  *(v12 + 24) = &unk_10002BE48;
  *(v12 + 32) = v1;
  *(v12 + 40) = v4;
  *(v12 + 48) = v2;
  *(v12 + 56) = v3 & 1;
  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  v14 = sub_10000281C(&qword_10003A168, &unk_10002B6F0);
  *v13 = v0;
  v13[1] = sub_10002611C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000021, 0x800000010002CBA0, sub_100026880, v12, v14);
}

uint64_t sub_10002611C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1000262D8;
  }

  else
  {

    *(v2 + 72) = *(v2 + 16);
    v3 = sub_10002625C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002625C()
{
  v1 = *(v0 + 72);

  if (!v1)
  {

    v1 = _swiftEmptyArrayStorage;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000262D8()
{

  v1 = *(v0 + 8);

  return v1(_swiftEmptyArrayStorage);
}

uint64_t sub_100026350(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_100026370, 0, 0);
}

uint64_t sub_100026370()
{
  v1 = *(*(v0 + 32) + 24);
  *(v0 + 40) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    v3 = sub_10000281C(&unk_100039FB8, &unk_10002B490);
    *v2 = v0;
    v2[1] = sub_100026478;

    return Task<>.value.getter(v0 + 16, v1, v3);
  }

  else
  {
    **(v0 + 24) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100026478()
{

  return _swift_task_switch(sub_100026590, 0, 0);
}

uint64_t sub_1000265B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10000E9E4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000281C(&qword_100039ED0, &unk_10002B940);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_10000E838(0, &qword_10003A9E0, ACAccount_ptr);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000266B0(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10000E9E4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000281C(&qword_100039ED0, &unk_10002B940);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100026780()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000267E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000296C;

  return sub_100026350(a1, v1);
}

uint64_t sub_100026894()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000268FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100026914(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000296C;

  return sub_100024A7C(a1, v4, v5, v6, v7);
}

uint64_t sub_1000269E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000EE44;

  return sub_100025250(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100026AA8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100026BF0, 0, 0);
}

uint64_t sub_100026BF0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1000270E8(&qword_10003A9A8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000270E8(&qword_10003A9B0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100026D80;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100026D80()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100026F3C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100026F3C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100026FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000281C(&qword_10003A130, &qword_10002BE80);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100014C94(v4, &v13, &qword_10003A138, &unk_10002B6D0);
      v5 = v13;
      v6 = v14;
      result = sub_1000104D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100010A3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000270D8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000270E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100027130(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100027174()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000271BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EE44;

  return sub_100024E70(a1, v4, v5, v6, v7);
}

uint64_t sub_100027284()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000272C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000EE44;

  return sub_1000257F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10002738C()
{

  return _swift_task_switch(sub_100027418, 0, 0);
}

uint64_t sub_100027418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v3[37] = sub_100001F70(v4, static Logger.daemon);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting to prefetch the devices for account", v7, 2u);
  }

  v8 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  v3[38] = v8;
  if (v8)
  {
    v9 = objc_opt_self();
    v3[39] = v9;
    v10 = [v9 defaultStore];
    v3[40] = v10;
    if (v10)
    {
      v11 = v10;
      v12 = ACAccountTypeIdentifierAppleAccount;
      v3[41] = ACAccountTypeIdentifierAppleAccount;
      v3[2] = v3;
      v3[7] = v3 + 36;
      v3[3] = sub_100027748;
      v13 = swift_continuation_init();
      v3[33] = sub_10000281C(&qword_10003A9C0, &qword_10002BEC8);
      v3[26] = _NSConcreteStackBlock;
      v3[27] = 1107296256;
      v3[28] = sub_100028CCC;
      v3[29] = &unk_1000358C8;
      v3[30] = v13;
      [v11 accountTypeWithIdentifier:v12 completion:v3 + 26];
      v10 = v3 + 2;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v10);
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not create AppleIDAuthController", v16, 2u);
    }

    v17 = v3[1];

    return v17(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100027748()
{
  v1 = *(*v0 + 48);
  *(*v0 + 336) = v1;
  if (v1)
  {
    v2 = sub_1000288AC;
  }

  else
  {
    v2 = sub_100027884;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100027884()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[36];
  v0[43] = v3;

  if (v3)
  {
    v4 = v0[39];
    v5 = v3;
    v6 = [v4 defaultStore];
    v0[44] = v6;
    if (v6)
    {
      v7 = v6;
      v0[10] = v0;
      v0[15] = v0 + 36;
      v0[11] = sub_100027AF0;
      v8 = swift_continuation_init();
      v0[33] = sub_10000281C(&qword_10003A9C8, &unk_10002BED0);
      v0[26] = _NSConcreteStackBlock;
      v0[27] = 1107296256;
      v0[28] = sub_1000265B4;
      v0[29] = &unk_1000358F0;
      v0[30] = v8;
      [v7 accountsWithAccountType:v5 completion:v0 + 26];
      v6 = v0 + 10;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v6);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[38];
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Could not find AppleAccount account type", v13, 2u);
    }

    v14 = v0[1];

    return v14(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100027AF0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 360) = v2;
  if (v2)
  {

    v3 = sub_1000289E0;
  }

  else
  {
    v3 = sub_100027C34;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100027C34()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 288);

  if (!v2)
  {

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 344);
    v12 = *(v0 + 304);
    if (v10)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Could not fetch AppleAccount accounts";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v8, v9, v14, v13, 2u);
    }

LABEL_26:

    v32 = *(v0 + 8);

    return v32(_swiftEmptyArrayStorage);
  }

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_23:
    v30 = *(v0 + 344);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 344);
    v12 = *(v0 + 304);
    if (v31)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Could not find correct AppleAccount account";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

LABEL_22:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_4:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    *(v0 + 368) = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if ([v5 correctPersonaScopedForAccount])
    {
      break;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_23;
    }
  }

  v15 = objc_allocWithZone(AKDeviceListRequestContext);
  v16 = v6;
  v17 = [v15 init];
  *(v0 + 376) = v17;
  v18 = [v16 aa_altDSID];
  [v17 setAltDSID:v18];

  [v17 setIncludeFamilyDevices:0];
  [v17 setIncludeUntrustedDevices:0];
  [v17 setFetchDeviceSafetyState:0];
  sub_10000281C(&qword_10003A738, &unk_10002BBE0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10002B4A0;
  *(v19 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v19 + 40) = v20;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setServices:isa];

  [v17 setType:2];
  v22 = v16;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "Fetching device list for account %@...", v25, 0xCu);
    sub_100014CFC(v26, &qword_100039E40, &unk_10002BAC0);
  }

  v28 = *(v0 + 304);

  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 288;
  *(v0 + 152) = sub_100028190;
  v29 = swift_continuation_init();
  *(v0 + 264) = sub_10000281C(&qword_10003A9D0, &unk_10002BEE0);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_100028CCC;
  *(v0 + 232) = &unk_100035918;
  *(v0 + 240) = v29;
  [v28 deviceListWithContext:v17 completion:v0 + 208];

  return _swift_continuation_await(v0 + 144);
}

uint64_t sub_100028190()
{
  v1 = *(*v0 + 176);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_100028B1C;
  }

  else
  {
    v2 = sub_1000282CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000282CC()
{
  receiver = v0[18].receiver;

  if (!receiver)
  {
    v11 = 0;
LABEL_19:
    super_class = v0[21].super_class;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[23].receiver;
    v17 = v0[23].super_class;
    v18 = v0[21].super_class;
    v19 = v0[19].receiver;
    if (v15)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not fetch device list", v20, 2u);
    }

    goto LABEL_43;
  }

  v2 = receiver;
  v3 = [v2 deviceList];

  if (!v3)
  {
    v11 = v2;
    goto LABEL_19;
  }

  v59 = v2;
  sub_10000E838(0, &qword_10003A9D8, AKRemoteDevice_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 name];
      if (v10)
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_22;
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
    ;
  }

LABEL_22:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v21 = _swiftEmptyArrayStorage[2];
    if (v21)
    {
LABEL_25:
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v21 < 0)
      {
        __break(1u);
LABEL_54:
        __break(1u);
      }

      v22 = 0;
      v60 = v21;
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_48;
        }

        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= _swiftEmptyArrayStorage[2])
          {
            goto LABEL_49;
          }

          v24 = _swiftEmptyArrayStorage[v22 + 4];
        }

        v25 = v24;
        v26 = [v24 model];
        if (!v26)
        {
          goto LABEL_39;
        }

        v27 = v26;
        v28 = [objc_opt_self() _typeWithDeviceModelCode:v26];

        if (!v28)
        {
          goto LABEL_39;
        }

        v29 = [v28 identifier];

        if (!v29)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = String._bridgeToObjectiveC()();
        }

        v30 = objc_opt_self();
        v0[13].receiver = 0;
        v31 = [v30 symbolForTypeIdentifier:v29 error:&v0[13]];

        v32 = v0[13].receiver;
        if (!v31)
        {
          break;
        }

        v33 = v32;
        v34 = [v31 name];

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

LABEL_40:
        v40 = [v25 name];
        if (!v40)
        {
          goto LABEL_54;
        }

        v41 = v40;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = type metadata accessor for DeviceInfo();
        v46 = objc_allocWithZone(v45);
        v47 = &v46[OBJC_IVAR___DeviceInfo_name];
        *v47 = v42;
        v47[1] = v44;
        v48 = &v46[OBJC_IVAR___DeviceInfo_symbol];
        *v48 = v35;
        v48[1] = v37;
        v0[17].receiver = v46;
        v0[17].super_class = v45;
        objc_msgSendSuper2(v0 + 17, "init");

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v22;
        if (v23 == v60)
        {
          v49 = v0[23].receiver;
          v50 = v0[23].super_class;
          v51 = v0[21].super_class;
          v52 = v0[19].receiver;

          goto LABEL_43;
        }
      }

      v38 = v32;
      v39 = _convertNSErrorToError(_:)();

      v4 = v39;
      swift_willThrow();

LABEL_39:
      v37 = 0xE600000000000000;
      v35 = 0x656E6F687069;
      goto LABEL_40;
    }
  }

  v55 = v0[23].receiver;
  v56 = v0[23].super_class;
  v57 = v0[21].super_class;
  v58 = v0[19].receiver;

LABEL_43:
  v53 = v0->super_class;

  return v53(_swiftEmptyArrayStorage);
}

uint64_t sub_1000288AC(uint64_t a1)
{
  v2 = v1[41];
  v3 = v1[40];
  swift_willThrow();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[38];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not find AppleAccount account type", v8, 2u);
  }

  v9 = v1[1];

  return v9(_swiftEmptyArrayStorage);
}

uint64_t sub_1000289E0(uint64_t a1)
{
  v2 = v1[44];
  v3 = v1[43];
  swift_willThrow();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[43];
  v8 = v1[38];
  if (v6)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not fetch AppleAccount accounts", v9, 2u);
  }

  v10 = v1[1];

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_100028B1C(uint64_t a1)
{
  v2 = v1[47];
  v3 = v1[46];
  v4 = v1[43];
  swift_willThrow();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[46];
  v9 = v1[47];
  v10 = v1[43];
  v11 = v1[38];
  if (v7)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not fetch device list", v12, 2u);
  }

  v13 = v1[1];

  return v13(_swiftEmptyArrayStorage);
}

uint64_t Logger.daemon.unsafeMutableAddressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_100001F70(v3, static Logger.daemon);
}

uint64_t sub_100028D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  sub_100028FB8(v3, static Logger.daemon);
  sub_100001F70(v3, static Logger.daemon);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.daemon.getter@<X0>(uint64_t a3@<X8>)
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100001F70(v4, static Logger.daemon);
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, v5, v4);
}

uint64_t sub_100028E54()
{
  sub_100028F6C();
  result = OS_os_log.init(subsystem:category:)();
  static Logger.stateTracking = result;
  return result;
}

uint64_t *Logger.stateTracking.unsafeMutableAddressor()
{
  if (qword_100039C28 != -1)
  {
    swift_once();
  }

  return &static Logger.stateTracking;
}

id static Logger.stateTracking.getter()
{
  if (qword_100039C28 != -1)
  {
    swift_once();
  }

  v1 = static Logger.stateTracking;

  return v1;
}

unint64_t sub_100028F6C()
{
  result = qword_10003A9E8;
  if (!qword_10003A9E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003A9E8);
  }

  return result;
}

uint64_t *sub_100028FB8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_10002903C()
{
  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = 0x746C7561666544;
  v4 = [result currentPersona];
  v0[3] = v4;

  if (v4 && (v5 = [v4 userPersonaUniqueString]) != 0)
  {
    v6 = v5;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  v0[4] = v3;
  v0[5] = v8;
  v9 = *(v0[2] + 112);
  if (*(v9 + 16))
  {

    v10 = sub_1000104D0(v3, v8);
    if (v11)
    {
      v12 = v10;

      v13 = *(*(v9 + 56) + 8 * v12);

      v14 = v0[1];

      return v14(v13);
    }
  }

  type metadata accessor for GameSaveContainerHandler();
  swift_allocObject();
  v15 = swift_task_alloc();
  v0[6] = v15;
  *v15 = v0;
  v15[1] = sub_100029218;

  return sub_10001239C();
}

uint64_t sub_100029218(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100029330, v2, 0);
}

uint64_t sub_100029330()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v5 + 112);
  *(v5 + 112) = 0x8000000000000000;
  sub_100029AF4(v1, v3, v2, isUniquelyReferenced_nonNull_native, &qword_10003A1A0, &qword_10002B718);

  *(v5 + 112) = v10;

  v7 = v0[7];
  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_10002942C()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  v2 = *(v1 + 32);
  *(v0 + 64) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 32) = v5;
    *(v0 + 40) = v7;
    *(v0 + 48) = *(*(v6 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));

    v9 = swift_task_alloc();
    *(v0 + 56) = v9;
    *v9 = v0;
    v9[1] = sub_10002958C;

    return sub_100013020();
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10002958C()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10002969C, v1, 0);
}

uint64_t sub_10002969C()
{

  v2 = *(v0 + 40);
  v3 = (*(v0 + 32) - 1) & *(v0 + 32);
  if (v3)
  {
    result = *(v0 + 24);
LABEL_7:
    *(v0 + 32) = v3;
    *(v0 + 40) = v2;
    *(v0 + 48) = *(*(result + 56) + ((v2 << 9) | (8 * __clz(__rbit64(v3)))));

    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_10002958C;

    return sub_100013020();
  }

  else
  {
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 24);
      if (v4 >= (((1 << *(v0 + 64)) + 63) >> 6))
      {
        break;
      }

      v3 = *(result + 8 * v4 + 64);
      ++v2;
      if (v3)
      {
        v2 = v4;
        goto LABEL_7;
      }
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1000297E4()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int sub_100029840(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10000281C(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_100029AF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1000104D0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_100029840(v20, a4 & 1, a5, a6);
      v15 = sub_1000104D0(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_100029C94(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_100029C94(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000281C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
    return CocoaError._nsError.getter();
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}