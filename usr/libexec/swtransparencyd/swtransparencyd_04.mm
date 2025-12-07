uint64_t sub_100073518()
{
  sub_1000331C0(*(v0 + 102) + 112, (v0 + 61));
  v1 = swift_task_alloc();
  *(v0 + 115) = v1;
  *v1 = v0;
  v1[1] = sub_1000735C8;
  v2 = v0[107];

  return sub_1000A86B8((v0 + 61), 1, v2);
}

uint64_t sub_1000735C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 928) = v1;

  if (v1)
  {
    sub_100024E14((v4 + 488));
    v5 = sub_100074884;
  }

  else
  {
    *(v4 + 936) = a1;
    sub_100024E14((v4 + 488));
    v5 = sub_100073700;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100073700()
{
  v1 = v0[117];
  v2 = v1;
  ATLogProofs.keyBag.setter(v1);

  v3 = swift_task_alloc();
  v0[118] = v3;
  *v3 = v0;
  v3[1] = sub_1000737C4;
  v4 = v0[90];
  v5 = v0[89];

  return ATLogProofs.verify(digest:)(v5, v4);
}

uint64_t sub_1000737C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[119] = a1;
  v4[120] = a2;
  v4[121] = v2;

  if (v2)
  {
    v5 = sub_100075194;
  }

  else
  {
    v5 = sub_1000738E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1000738E0()
{
  v133 = v0;
  v1 = *(v0 + 952);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);
  sub_100027004(v3, v2);
  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = *(v0 + 696);
  v8 = *(v0 + 688);
  if (v1 != 1)
  {
    v17 = static os_log_type_t.error.getter();
    sub_100026FB0(v8, v7);
    if (os_log_type_enabled(v6, v17))
    {
      v18 = *(v0 + 952);
      v129 = *(v0 + 832);
      v19 = *(v0 + 824);
      v20 = *(v0 + 680);
      v21 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v21 = 136315906;
      v22 = Data.description.getter();
      v24 = sub_100021D24(v22, v23, &v132);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2050;
      *(v21 + 14) = v18;
      *(v21 + 22) = 2082;
      *(v21 + 24) = sub_100021D24(v19, v129, &v132);
      *(v21 + 32) = 1026;
      LODWORD(v19) = *&v20[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_pid];

      *(v21 + 34) = v19;
      _os_log_impl(&_mh_execute_header, v6, v17, "Proofs %s invalid with %{public}lu: %{public}s[%{public}d]", v21, 0x26u);
      swift_arrayDestroy();
    }

    else
    {
      v56 = *(v0 + 680);
    }

    v124 = *(v0 + 824);
    v125 = *(v0 + 832);
    v57 = *(v0 + 800);
    v58 = *(v0 + 792);
    v131 = *(v0 + 784);
    v59 = *(v0 + 768);
    v60 = *(v0 + 760);
    v61 = *(v0 + 752);
    v126 = *(v0 + 704);
    v63 = *(v0 + 392);
    v62 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v63);
    v64 = (*(v62 + 80))(v63, v62);
    SuspendingClock.init()();
    SuspendingClock.now.getter();
    (*(v60 + 8))(v59, v61);
    SuspendingClock.Instant.duration(to:)();
    v128 = *(v58 + 8);
    v128(v57, v131);
    v65 = Duration.components.getter();
    Duration.components.getter();
    v67 = [objc_allocWithZone(NSNumber) initWithDouble:v66 / 1.0e18 + v65];
    v68 = String._bridgeToObjectiveC()();
    [v64 logMetric:v67 withName:v68];

    v69 = *(v0 + 392);
    v70 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v69);
    v71 = (*(v70 + 80))(v69, v70);
    v72 = String._bridgeToObjectiveC()();

    sub_1000798CC();
    swift_allocError();
    v123 = 0;
    *v73 = xmmword_100106440;
    v74 = _convertErrorToNSError(_:)();

    sub_100024248(&qword_100153DC8, &unk_100106BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100106430;
    *(v0 + 640) = 99;
    *(v0 + 648) = 0xE100000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v124;
    *(inited + 80) = v125;
    *(v0 + 656) = 114;
    *(v0 + 664) = 0xE100000000000000;

    AnyHashable.init<A>(_:)();
    if (v126)
    {
      v76 = [*(v0 + 704) name];
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      v80 = (inited + 144);
      *(inited + 168) = &type metadata for String;
      if (v79)
      {
        *v80 = v77;
        goto LABEL_16;
      }
    }

    else
    {
      v80 = (inited + 144);
      *(inited + 168) = &type metadata for String;
    }

    *v80 = 45;
    v79 = 0xE100000000000000;
LABEL_16:
    *(inited + 152) = v79;
    sub_10007A4E0(inited);
    swift_setDeallocating();
    sub_100024248(&qword_100153DD0, &unk_100106940);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v71 logResultForEvent:v72 hardFailure:1 result:v74 withAttributes:isa];

    v127 = swift_allocError();
    *v82 = xmmword_100106440;
    sub_100024248(&qword_1001535C8, &qword_100104BE8);
    v83 = *(sub_100024248(&qword_1001535D0, &unk_100104BF0) - 8);
    v84 = *(v83 + 72);
    v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_100106420;
    v87 = (v86 + v85);
    *v87 = 0x73736563637573;
    v87[1] = 0xE700000000000000;
    EventValue.init(BOOLeanLiteral:)();
    v88 = (v86 + v85 + v84);
    *v88 = 0x746E65696C63;
    v88[1] = 0xE600000000000000;

    EventValue.init(stringLiteral:)();
    v89 = (v86 + v85 + 2 * v84);
    *v89 = 7761509;
    v89[1] = 0xE300000000000000;
    v90 = *(v0 + 392);
    v91 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v90);
    v92 = (*(v91 + 48))(v90, v91);
    v93 = [v92 currentEnvironment];

    if ((v93 & 0x8000000000000000) == 0)
    {
      v94 = *(v0 + 704);
      EventValue.init(integerLiteral:)();
      v95 = (v87 + 3 * v84);
      *v95 = 0x6E6F73616572;
      v95[1] = 0xE600000000000000;
      if (v94)
      {
        v96 = [*(v0 + 704) name];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v108 = *(v0 + 960);
      v109 = *(v0 + 952);
      EventValue.init(stringLiteral:)();
      v110 = sub_10004C674(v86);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v111 = *(v0 + 392);
      v112 = *(v0 + 400);
      sub_100026F6C((v0 + 368), v111);
      (*(v112 + 88))(v111, v112);
      v113 = *(v0 + 552);
      v114 = *(v0 + 560);
      sub_100026F6C((v0 + 528), v113);
      (*(v114 + 8))(0x7270796676747753, 0xEC00000073666F6FLL, v127, v110, v113, v114);

      sub_100024E14((v0 + 528));
      ATLogProofs.VerificationResult.expiry.getter(v109, v108);
      v103 = objc_allocWithZone(SWTransparencyExpiringVerificationResult);
      v104.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v107 = *(v0 + 872);
      v105 = 1;
      v106 = v104.super.isa;
      goto LABEL_21;
    }

LABEL_25:
    __break(1u);
    return;
  }

  v9 = static os_log_type_t.default.getter();
  sub_100026FB0(v8, v7);
  if (os_log_type_enabled(v6, v9))
  {
    v10 = *(v0 + 832);
    v11 = *(v0 + 824);
    v12 = *(v0 + 680);
    v13 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *v13 = 136315650;
    v14 = Data.description.getter();
    v16 = sub_100021D24(v14, v15, &v132);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_100021D24(v11, v10, &v132);
    *(v13 + 22) = 1026;
    LODWORD(v10) = *&v12[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_pid];

    *(v13 + 24) = v10;
    _os_log_impl(&_mh_execute_header, v6, v9, "Proofs %s valid: %{public}s[%{public}d]", v13, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
    v25 = *(v0 + 680);
  }

  v26 = *(v0 + 800);
  v27 = *(v0 + 792);
  v130 = *(v0 + 784);
  v28 = *(v0 + 768);
  v29 = *(v0 + 760);
  v30 = *(v0 + 752);
  v32 = *(v0 + 392);
  v31 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v32);
  v33 = (*(v31 + 80))(v32, v31);
  SuspendingClock.init()();
  SuspendingClock.now.getter();
  (*(v29 + 8))(v28, v30);
  SuspendingClock.Instant.duration(to:)();
  v128 = *(v27 + 8);
  v128(v26, v130);
  v34 = Duration.components.getter();
  Duration.components.getter();
  v36 = [objc_allocWithZone(NSNumber) initWithDouble:v35 / 1.0e18 + v34];
  v37 = String._bridgeToObjectiveC()();
  [v33 logMetric:v36 withName:v37];

  v38 = *(v0 + 392);
  v39 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v38);
  v40 = (*(v39 + 80))(v38, v39);
  v41 = String._bridgeToObjectiveC()();

  [v40 logResultForEvent:v41 hardFailure:0 result:0];

  sub_100024248(&qword_1001535C8, &qword_100104BE8);
  v42 = *(sub_100024248(&qword_1001535D0, &unk_100104BF0) - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100106420;
  v46 = (v45 + v44);
  *v46 = 0x73736563637573;
  v46[1] = 0xE700000000000000;
  EventValue.init(BOOLeanLiteral:)();
  v47 = (v45 + v44 + v43);
  *v47 = 0x746E65696C63;
  v47[1] = 0xE600000000000000;

  EventValue.init(stringLiteral:)();
  v48 = (v45 + v44 + 2 * v43);
  *v48 = 7761509;
  v48[1] = 0xE300000000000000;
  v49 = *(v0 + 392);
  v50 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v49);
  v51 = (*(v50 + 48))(v49, v50);
  v52 = [v51 currentEnvironment];

  if ((v52 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v53 = *(v0 + 704);
  EventValue.init(integerLiteral:)();
  v54 = (v46 + 3 * v43);
  *v54 = 0x6E6F73616572;
  v54[1] = 0xE600000000000000;
  if (v53)
  {
    v55 = [*(v0 + 704) name];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v97 = *(v0 + 960);
  EventValue.init(stringLiteral:)();
  v98 = sub_10004C674(v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v99 = *(v0 + 392);
  v100 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v99);
  (*(v100 + 88))(v99, v100);
  v101 = *(v0 + 592);
  v102 = *(v0 + 600);
  sub_100026F6C((v0 + 568), v101);
  (*(v102 + 8))(0x7270796676747753, 0xEC00000073666F6FLL, 0, v98, v101, v102);

  sub_100024E14((v0 + 568));
  ATLogProofs.VerificationResult.expiry.getter(1, v97);
  v103 = objc_allocWithZone(SWTransparencyExpiringVerificationResult);
  v104.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v105 = 0;
  v106 = *(v0 + 872);
  v107 = v104.super.isa;
LABEL_21:
  v115 = *(v0 + 808);
  v116 = *(v0 + 784);
  v117 = *(v0 + 744);
  v118 = *(v0 + 736);
  v119 = *(v0 + 728);
  v120 = *(v0 + 672);
  v121 = [v103 initWithResult:v105 expiry:{v104.super.isa, v123}];

  (*(v118 + 8))(v117, v119);
  v128(v115, v116);
  *v120 = v121;
  sub_100024E14((v0 + 368));

  v122 = *(v0 + 8);

  v122();
}

void sub_100074884()
{
  v72 = v0;

  v1 = *(v0 + 928);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);
  sub_10007A61C();
  v5 = sub_10005D380(v3, v2);
  v7 = v6;
  v8 = v4;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v70 = v1;

  if (os_log_type_enabled(v9, v10))
  {
    v68 = *(v0 + 832);
    v11 = *(v0 + 824);
    v12 = *(v0 + 680);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v71[0] = swift_slowAlloc();
    *v13 = 136315906;
    v15 = sub_100021D24(v5, v7, v71);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v14 = v16;
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_100021D24(v11, v68, v71);
    *(v13 + 32) = 1026;
    v17 = *&v12[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_pid];

    *(v13 + 34) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Proof verification %s failed with %@: %{public}s[%{public}d]", v13, 0x26u);
    sub_10002533C(v14, &qword_100153450, &unk_100104140);

    swift_arrayDestroy();
  }

  else
  {
    v18 = *(v0 + 680);
  }

  v66 = *(v0 + 824);
  v19 = *(v0 + 800);
  v20 = *(v0 + 792);
  v65 = *(v0 + 784);
  v21 = *(v0 + 768);
  v22 = *(v0 + 760);
  v23 = *(v0 + 752);
  v67 = *(v0 + 832);
  v69 = *(v0 + 704);
  v25 = *(v0 + 392);
  v24 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v25);
  v26 = (*(v24 + 80))(v25, v24);
  SuspendingClock.init()();
  SuspendingClock.now.getter();
  (*(v22 + 8))(v21, v23);
  SuspendingClock.Instant.duration(to:)();
  v64 = *(v20 + 8);
  v64(v19, v65);
  v27 = Duration.components.getter();
  Duration.components.getter();
  v29 = [objc_allocWithZone(NSNumber) initWithDouble:v28 / 1.0e18 + v27];
  v30 = String._bridgeToObjectiveC()();
  [v26 logMetric:v29 withName:v30];

  v31 = *(v0 + 392);
  v32 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v31);
  v33 = (*(v32 + 80))(v31, v32);
  v34 = String._bridgeToObjectiveC()();

  v35 = _convertErrorToNSError(_:)();
  sub_100024248(&qword_100153DC8, &unk_100106BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100106430;
  *(v0 + 608) = 99;
  *(v0 + 616) = 0xE100000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v66;
  *(inited + 80) = v67;
  *(v0 + 624) = 114;
  *(v0 + 632) = 0xE100000000000000;

  AnyHashable.init<A>(_:)();
  if (v69)
  {
    v37 = [*(v0 + 704) name];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = (inited + 144);
    *(inited + 168) = &type metadata for String;
    if (v40)
    {
      *v41 = v38;
      goto LABEL_9;
    }
  }

  else
  {
    v41 = (inited + 144);
    *(inited + 168) = &type metadata for String;
  }

  *v41 = 45;
  v40 = 0xE100000000000000;
LABEL_9:
  *(inited + 152) = v40;
  sub_10007A4E0(inited);
  swift_setDeallocating();
  sub_100024248(&qword_100153DD0, &unk_100106940);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v33 logResultForEvent:v34 hardFailure:1 result:v35 withAttributes:isa];

  sub_100024248(&qword_1001535C8, &qword_100104BE8);
  v43 = *(sub_100024248(&qword_1001535D0, &unk_100104BF0) - 8);
  v44 = *(v43 + 72);
  v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100106420;
  v47 = (v46 + v45);
  *v47 = 0x73736563637573;
  v47[1] = 0xE700000000000000;
  swift_errorRetain();
  EventValue.init(BOOLeanLiteral:)();
  v48 = (v46 + v45 + v44);
  *v48 = 0x746E65696C63;
  v48[1] = 0xE600000000000000;

  EventValue.init(stringLiteral:)();
  v49 = (v46 + v45 + 2 * v44);
  *v49 = 7761509;
  v49[1] = 0xE300000000000000;
  v50 = *(v0 + 392);
  v51 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v50);
  v52 = (*(v51 + 48))(v50, v51);
  v53 = [v52 currentEnvironment];

  if ((v53 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    EventValue.init(integerLiteral:)();
    v54 = (v47 + 3 * v44);
    *v54 = 0x6E6F73616572;
    v54[1] = 0xE600000000000000;
    if (v69)
    {
      v55 = [*(v0 + 704) name];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v56 = *(v0 + 808);
    v57 = *(v0 + 784);
    EventValue.init(stringLiteral:)();
    v58 = sub_10004C674(v46);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v59 = *(v0 + 392);
    v60 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v59);
    (*(v60 + 88))(v59, v60);
    v61 = *(v0 + 472);
    v62 = *(v0 + 480);
    sub_100026F6C((v0 + 448), v61);
    (*(v62 + 8))(0x7270796676747753, 0xEC00000073666F6FLL, v70, v58, v61, v62);

    sub_100024E14((v0 + 448));
    swift_willThrow();
    v64(v56, v57);
    sub_100024E14((v0 + 368));

    v63 = *(v0 + 8);

    v63();
  }
}

void sub_100075194()
{
  v72 = v0;

  v1 = *(v0 + 968);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);
  sub_10007A61C();
  v5 = sub_10005D380(v3, v2);
  v7 = v6;
  v8 = v4;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v70 = v1;

  if (os_log_type_enabled(v9, v10))
  {
    v68 = *(v0 + 832);
    v11 = *(v0 + 824);
    v12 = *(v0 + 680);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v71[0] = swift_slowAlloc();
    *v13 = 136315906;
    v15 = sub_100021D24(v5, v7, v71);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v14 = v16;
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_100021D24(v11, v68, v71);
    *(v13 + 32) = 1026;
    v17 = *&v12[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_pid];

    *(v13 + 34) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Proof verification %s failed with %@: %{public}s[%{public}d]", v13, 0x26u);
    sub_10002533C(v14, &qword_100153450, &unk_100104140);

    swift_arrayDestroy();
  }

  else
  {
    v18 = *(v0 + 680);
  }

  v66 = *(v0 + 824);
  v19 = *(v0 + 800);
  v20 = *(v0 + 792);
  v65 = *(v0 + 784);
  v21 = *(v0 + 768);
  v22 = *(v0 + 760);
  v23 = *(v0 + 752);
  v67 = *(v0 + 832);
  v69 = *(v0 + 704);
  v25 = *(v0 + 392);
  v24 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v25);
  v26 = (*(v24 + 80))(v25, v24);
  SuspendingClock.init()();
  SuspendingClock.now.getter();
  (*(v22 + 8))(v21, v23);
  SuspendingClock.Instant.duration(to:)();
  v64 = *(v20 + 8);
  v64(v19, v65);
  v27 = Duration.components.getter();
  Duration.components.getter();
  v29 = [objc_allocWithZone(NSNumber) initWithDouble:v28 / 1.0e18 + v27];
  v30 = String._bridgeToObjectiveC()();
  [v26 logMetric:v29 withName:v30];

  v31 = *(v0 + 392);
  v32 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v31);
  v33 = (*(v32 + 80))(v31, v32);
  v34 = String._bridgeToObjectiveC()();

  v35 = _convertErrorToNSError(_:)();
  sub_100024248(&qword_100153DC8, &unk_100106BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100106430;
  *(v0 + 608) = 99;
  *(v0 + 616) = 0xE100000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v66;
  *(inited + 80) = v67;
  *(v0 + 624) = 114;
  *(v0 + 632) = 0xE100000000000000;

  AnyHashable.init<A>(_:)();
  if (v69)
  {
    v37 = [*(v0 + 704) name];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = (inited + 144);
    *(inited + 168) = &type metadata for String;
    if (v40)
    {
      *v41 = v38;
      goto LABEL_9;
    }
  }

  else
  {
    v41 = (inited + 144);
    *(inited + 168) = &type metadata for String;
  }

  *v41 = 45;
  v40 = 0xE100000000000000;
LABEL_9:
  *(inited + 152) = v40;
  sub_10007A4E0(inited);
  swift_setDeallocating();
  sub_100024248(&qword_100153DD0, &unk_100106940);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v33 logResultForEvent:v34 hardFailure:1 result:v35 withAttributes:isa];

  sub_100024248(&qword_1001535C8, &qword_100104BE8);
  v43 = *(sub_100024248(&qword_1001535D0, &unk_100104BF0) - 8);
  v44 = *(v43 + 72);
  v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100106420;
  v47 = (v46 + v45);
  *v47 = 0x73736563637573;
  v47[1] = 0xE700000000000000;
  swift_errorRetain();
  EventValue.init(BOOLeanLiteral:)();
  v48 = (v46 + v45 + v44);
  *v48 = 0x746E65696C63;
  v48[1] = 0xE600000000000000;

  EventValue.init(stringLiteral:)();
  v49 = (v46 + v45 + 2 * v44);
  *v49 = 7761509;
  v49[1] = 0xE300000000000000;
  v50 = *(v0 + 392);
  v51 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v50);
  v52 = (*(v51 + 48))(v50, v51);
  v53 = [v52 currentEnvironment];

  if ((v53 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    EventValue.init(integerLiteral:)();
    v54 = (v47 + 3 * v44);
    *v54 = 0x6E6F73616572;
    v54[1] = 0xE600000000000000;
    if (v69)
    {
      v55 = [*(v0 + 704) name];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v56 = *(v0 + 808);
    v57 = *(v0 + 784);
    EventValue.init(stringLiteral:)();
    v58 = sub_10004C674(v46);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v59 = *(v0 + 392);
    v60 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v59);
    (*(v60 + 88))(v59, v60);
    v61 = *(v0 + 472);
    v62 = *(v0 + 480);
    sub_100026F6C((v0 + 448), v61);
    (*(v62 + 8))(0x7270796676747753, 0xEC00000073666F6FLL, v70, v58, v61, v62);

    sub_100024E14((v0 + 448));
    swift_willThrow();
    v64(v56, v57);
    sub_100024E14((v0 + 368));

    v63 = *(v0 + 8);

    v63();
  }
}

double sub_100075AA4(uint64_t a1, uint64_t a2)
{
  v2 = Duration.components.getter();
  Duration.components.getter();
  return v3 / 1.0e18 + v2;
}

uint64_t sub_100075AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100075B18, 0, 0);
}

uint64_t sub_100075B18()
{
  v3 = (*(**(*(v0 + 24) + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 176) + **(**(*(v0 + 24) + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 176));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100075C38;

  return v3();
}

uint64_t sub_100075C38()
{
  *(*v1 + 40) = v0;

  if (v0)
  {

    v2 = sub_10007A9C0;
  }

  else
  {
    v2 = sub_100075D54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100075D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100025834(a3, v25 - v10, &unk_100152620, &unk_1001031E0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002533C(v11, &unk_100152620, &unk_1001031E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100024248(&qword_100153DD8, &qword_100106970);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10002533C(a3, &unk_100152620, &unk_1001031E0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002533C(a3, &unk_100152620, &unk_1001031E0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100024248(&qword_100153DD8, &qword_100106970);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100076234(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v10 = a3;
  a5;
  v11 = a1;
  v12 = a2;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v5[5] = v13;
  v5[6] = v15;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v5[7] = v16;
  v5[8] = v18;
  v19 = swift_task_alloc();
  v5[9] = v19;
  *v19 = v5;
  v19[1] = sub_10007635C;

  return sub_100071150(v13, v15, v16, v18, a3);
}

uint64_t sub_10007635C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = v5[6];
  v10 = v5[5];
  v11 = v5[4];
  sub_100026FB0(v5[7], v5[8]);
  sub_100026FB0(v10, v9);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (v11)[2](v11, 0, v12);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](v11, a1, 0);
    _Block_release(v11);
  }

  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_100076574()
{
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_10007660C;

  return sub_100076874(v1 + 16, v0);
}

uint64_t sub_10007660C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10007673C;
  }

  else
  {
    v2 = sub_100076720;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007673C()
{
  v1 = objc_opt_self();
  v2 = _convertErrorToNSError(_:)();
  v3 = [v1 cleanseErrorForXPC:v2];

  if (!v3)
  {
    v0[6] = v0[8];
    v0[4] = 0;
    v0[5] = 0xE000000000000000;
    sub_100024248(&qword_100152630, &qword_100103210);
    _print_unlocked<A, B>(_:_:)();
    v4 = v0[4];
    v5 = v0[5];
    sub_1000798CC();
    swift_allocError();
    *v6 = v4;
    v6[1] = v5;
  }

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100076874(uint64_t a1, uint64_t a2)
{
  v2[93] = a2;
  v2[87] = a1;
  sub_100024248(&qword_100152D90, &qword_100105620);
  v2[99] = swift_task_alloc();
  sub_100024248(&qword_100153448, &qword_100104650);
  v2[105] = swift_task_alloc();
  v3 = type metadata accessor for TransparencySWSysdiagnose();
  v2[106] = v3;
  v2[107] = *(v3 - 8);
  v2[108] = swift_task_alloc();
  v4 = type metadata accessor for TransparencySWSysdiagnose.StateMachine();
  v2[109] = v4;
  v2[110] = *(v4 - 8);
  v2[111] = swift_task_alloc();

  return _swift_task_switch(sub_100076A04, 0, 0);
}

uint64_t sub_100076A04()
{
  v1 = v0[93];
  v2 = swift_allocObject();
  v0[112] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  swift_asyncLet_begin();
  v4 = v0[111];

  return _swift_asyncLet_get_throwing(v0 + 2, v4, sub_100076ACC, v0 + 82);
}

uint64_t sub_100076ACC()
{
  *(v1 + 904) = v0;
  if (v0)
  {
    v2 = sub_100076D48;
  }

  else
  {
    v2 = sub_100076B00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100076B00()
{
  v1 = v0[113];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[105];
  v5 = v0[99];
  (*(v2 + 16))(v4, v0[111], v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  TransparencySWSysdiagnose.init(stateMachine:fallback:)();
  v7 = TransparencySWSysdiagnose.json()();
  v9 = v8;
  v0[114] = v1;
  v10 = v0[108];
  v11 = v0[107];
  v12 = v0[106];
  if (v1)
  {
    (*(v11 + 8))(v10, v12);
    v13 = sub_100076E28;
    v14 = v0[111];
    v15 = v0 + 2;
    v16 = v0 + 94;
  }

  else
  {
    v17 = v0[87];
    (*(v11 + 8))(v10, v12);
    *v17 = v7;
    v17[1] = v9;
    v13 = sub_100076C90;
    v14 = v0[111];
    v15 = v0 + 2;
    v16 = v0 + 100;
  }

  return _swift_asyncLet_finish(v15, v14, v13, v16);
}

uint64_t sub_100076CAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100076D84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100076E44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100076EE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100076F08, 0, 0);
}

uint64_t sub_100076F08()
{
  v4 = (*(**(v0[3] + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 200) + **(**(v0[3] + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 200));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100077030;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_100077030()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100077298(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100077340;

  return sub_100076574();
}

uint64_t sub_100077340(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026FB0(a1, a2);
    v12 = isa;
    v11 = 0;
    v10 = isa;
  }

  v14 = *(v7 + 24);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t sub_1000774D4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  *v6 = v3;
  v6[1] = sub_10007757C;

  return sub_100077690(v6, a1, a2, v2);
}

uint64_t sub_10007757C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10007A9AC;
  }

  else
  {
    v2 = sub_10007A9B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100077690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_100024248(&qword_100153DB8, &qword_100106920);
  v4[5] = swift_task_alloc();
  v5 = type metadata accessor for SWTFollowUpType();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10007778C, 0, 0);
}

uint64_t sub_10007778C()
{
  v21 = v0;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100025AE0(v1, qword_10015D290);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100021D24(v5, v4, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "posting cfu %{public}s", v6, 0xCu);
    sub_100024E14(v7);
  }

  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  SWTFollowUpType.init(rawValue:)();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_10002533C(v0[5], &qword_100153DB8, &qword_100106920);
    sub_1000798CC();
    swift_allocError();
    *v11 = xmmword_100104D20;
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[4];
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    v15 = *(v14 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine);
    v16 = sub_1000AD1E8();
    v0[9] = v16;
    v19 = (*(*v15 + 144) + **(*v15 + 144));
    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_100077AF4;
    v18 = v0[8];

    return v19(v18, v16);
  }
}

uint64_t sub_100077AF4()
{

  return _swift_task_switch(sub_100077C0C, 0, 0);
}

uint64_t sub_100077C0C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100077E1C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100077EF0;

  return sub_1000774D4(v5, v7);
}

uint64_t sub_100077EF0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100078090()
{
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_100078120;

  return sub_10007836C(v2, v0);
}

uint64_t sub_100078120()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100078234;
  }

  else
  {
    v2 = sub_1000494DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100078234()
{
  v1 = objc_opt_self();
  v2 = _convertErrorToNSError(_:)();
  v3 = [v1 cleanseErrorForXPC:v2];

  if (!v3)
  {
    v0[4] = v0[6];
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    sub_100024248(&qword_100152630, &qword_100103210);
    _print_unlocked<A, B>(_:_:)();
    v4 = v0[2];
    v5 = v0[3];
    sub_1000798CC();
    swift_allocError();
    *v6 = v4;
    v6[1] = v5;
  }

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10007838C()
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100025AE0(v1, qword_10015D290);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "clearing all cfus", v4, 2u);
  }

  v5 = *(v0 + 16);

  v8 = (*(**(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 152) + **(**(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 152));
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100078568;

  return v8();
}

uint64_t sub_100078568()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000787D4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007887C;

  return sub_100078090();
}

uint64_t sub_10007887C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100078A20()
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100025AE0(v1, qword_10015D290);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "wait for ready", v4, 2u);
  }

  v5 = *(v0 + 16);

  v8 = (*(**(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 128) + **(**(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 128));
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100078568;

  return v8(0xA055690D9DB80000, 1);
}

uint64_t sub_100078D84(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007A9B0;

  return sub_100078A00();
}

uint64_t sub_100078E2C()
{
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_10007757C;

  return sub_100078EBC(v2, v0);
}

uint64_t sub_100078EDC()
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100025AE0(v1, qword_10015D290);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "running daily", v4, 2u);
  }

  v5 = v0[2];

  if (*(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_daemon))
  {
    v6 = *(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_daemon + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v6 + 8) + **(v6 + 8));
    v8 = swift_task_alloc();
    v0[3] = v8;
    *v8 = v0;
    v8[1] = sub_100038BE4;

    return v11(ObjectType, v6);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100079270(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007A9B0;

  return sub_100078E2C();
}

unint64_t sub_100079400(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000038;
  }
}

Swift::Int TransparencyTLSError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

unint64_t sub_1000794DC()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000038;
  }
}

uint64_t sub_100079518()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10007952C(uint64_t a1)
{
  v2 = sub_10007A360();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100079568(uint64_t a1)
{
  v2 = sub_10007A360();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_1000795A4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000795E8(a1, v4);
}

unint64_t sub_1000795E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10007A890(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10007A8EC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000796B0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000797A4;

  return v5(v2 + 32);
}

uint64_t sub_1000797A4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000798B8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t sub_1000798CC()
{
  result = qword_100153D08;
  if (!qword_100153D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153D08);
  }

  return result;
}

unint64_t sub_100079928()
{
  result = qword_100153D10;
  if (!qword_100153D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153D10);
  }

  return result;
}

unint64_t sub_10007997C()
{
  result = qword_100153D18;
  if (!qword_100153D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153D18);
  }

  return result;
}

uint64_t sub_1000799D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000799EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100079A48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_100079A98(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SWTXPCError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SWTXPCError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100079C4C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_100079270(v2, v3);
}

uint64_t sub_100079CF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_100078D84(v2, v3);
}

uint64_t sub_100079DA4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001CF5C;

  return sub_1000787D4(v2, v3);
}

uint64_t sub_100079E50()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100079E98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000258C8;

  return sub_100077E1C(v2, v3, v4);
}

uint64_t sub_100079F4C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_100077298(v2, v3);
}

uint64_t sub_100079FFC()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10007A054()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000258C8;

  return sub_100076234(v2, v3, v4, v5, v6);
}

uint64_t sub_10007A11C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_100070C10(v2, v3);
}

uint64_t sub_10007A1C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_1000707F8(v2, v3);
}

uint64_t sub_10007A274()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007A2B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_1000702AC(v2, v3);
}

unint64_t sub_10007A360()
{
  result = qword_100153DA8;
  if (!qword_100153DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153DA8);
  }

  return result;
}

unint64_t sub_10007A3B4()
{
  result = qword_100153DB0;
  if (!qword_100153DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153DB0);
  }

  return result;
}

uint64_t sub_10007A408()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A440(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001CF5C;

  return sub_100076EE8(a1, v4);
}

unint64_t sub_10007A4E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024248(&qword_100153DE0, &qword_100106980);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100025834(v4, v13, &qword_100153DD0, &unk_100106940);
      result = sub_1000795A4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100032F28(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10007A61C()
{
  result = qword_100153DC0;
  if (!qword_100153DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100153DC0);
  }

  return result;
}

unint64_t sub_10007A668()
{
  result = qword_100152F48;
  if (!qword_100152F48)
  {
    type metadata accessor for KTSWDB();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152F48);
  }

  return result;
}

uint64_t sub_10007A6C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007A700(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000258C8;

  return sub_100075AF8(a1, v5, v6, v4);
}

uint64_t sub_10007A7A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007A7D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000258C8;

  return sub_1000796B0(a1, v4);
}

uint64_t sub_10007A9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100024248(&qword_100152D90, &qword_100105620);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  sub_100025834(a2, v10, &qword_100152D90, &qword_100105620);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v10, 1, v13);
  if (v15 == 1)
  {
    sub_10002533C(a2, &qword_100152D90, &qword_100105620);
    (*(v14 + 8))(a1, v13);
    result = sub_10002533C(v10, &qword_100152D90, &qword_100105620);
    v17 = 0;
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    v17 = v18;
    sub_10002533C(a2, &qword_100152D90, &qword_100105620);
    v19 = *(v14 + 8);
    v19(a1, v13);
    result = (v19)(v10, v13);
  }

  *a4 = v12;
  *(a4 + 8) = 0;
  *(a4 + 16) = v17;
  *(a4 + 24) = v15 == 1;
  *(a4 + 32) = a3;
  return result;
}

double sub_10007ABD0@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_10007E04C(a2, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

unint64_t sub_10007AC14()
{
  v1 = v0;
  v2 = sub_10007A4E0(_swiftEmptyArrayStorage);
  v22 = v2;
  if ((v0[1] & 1) == 0)
  {
    v3 = *v0;
    *(&v19 + 1) = 0xE100000000000000;
    AnyHashable.init<A>(_:)();
    v20 = &type metadata for Double;
    *&v19 = v3;
    sub_100032F28(&v19, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10007D584(v18, v21, isUniquelyReferenced_nonNull_native);
    sub_10007A8EC(v21);
    v22 = v2;
  }

  if ((v1[3] & 1) == 0)
  {
    v5 = v1[2];
    *&v19 = 101;
    *(&v19 + 1) = 0xE100000000000000;
    AnyHashable.init<A>(_:)();
    v20 = &type metadata for Double;
    *&v19 = v5;
    sub_100032F28(&v19, v18);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_10007D584(v18, v21, v6);
    sub_10007A8EC(v21);
    v22 = v2;
  }

  *&v19 = 115;
  *(&v19 + 1) = 0xE100000000000000;
  AnyHashable.init<A>(_:)();
  v7 = v1[4];
  if (v7)
  {
    v8 = *(v7 + 16);
    v9 = _swiftEmptyArrayStorage;
    if (v8)
    {
      *&v19 = _swiftEmptyArrayStorage;
      sub_10007DDF0(0, v8, 0);
      v9 = v19;
      v10 = (v7 + 40);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        sub_100027004(v11, *v10);
        v13 = Data.base64EncodedString(options:)(0);
        sub_100026FB0(v11, v12);
        *&v19 = v9;
        v15 = v9[2];
        v14 = v9[3];
        if (v15 >= v14 >> 1)
        {
          sub_10007DDF0((v14 > 1), v15 + 1, 1);
          v9 = v19;
        }

        v10 += 2;
        v9[2] = v15 + 1;
        *&v9[2 * v15 + 4] = v13;
        --v8;
      }

      while (v8);
      v2 = v22;
    }

    v20 = sub_100024248(&qword_100153E08, qword_1001069A0);
    *&v19 = v9;
    sub_100032F28(&v19, v18);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_10007D584(v18, v21, v16);
    sub_10007A8EC(v21);
    return v2;
  }

  else
  {
    sub_10007CAD4(v21, &v19);
    sub_10002533C(&v19, &qword_100152D70, &qword_100103DB0);
    sub_10007A8EC(v21);
    return v22;
  }
}

uint64_t sub_10007AED4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd11SWTFollowUp_log;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10007AF4C()
{
  v0 = swift_allocObject();
  sub_10007AF84();
  return v0;
}

uint64_t sub_10007AF84()
{
  swift_defaultActor_initialize();
  if (FLFollowUpController)
  {
    v1 = objc_allocWithZone(FLFollowUpController);
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 initWithClientIdentifier:v2];
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 112) = v3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  (*(v5 + 32))(v0 + OBJC_IVAR____TtC15swtransparencyd11SWTFollowUp_log, v7, v4);
  return v0;
}

uint64_t sub_10007B120(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100024248(&qword_100153DE0, &qword_100106980);
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
    sub_100025058(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100032F28(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100032F28(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100032F28(v31, v32);
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
    result = sub_100032F28(v32, (v2[7] + 32 * v10));
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

void sub_10007B3EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v69 = a3;
  v63 = a2;
  v7 = type metadata accessor for Date();
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin(v7);
  v64 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SWTFollowUpType();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v68 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v60 - v13;
  v71 = v10;
  v67 = *(v10 + 16);
  v67(&v60 - v13, a1, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = os_log_type_enabled(v15, v16);
  v70 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v62 = v4;
    v19 = v18;
    v60 = swift_slowAlloc();
    v73[0] = v60;
    *v19 = 136446210;
    v20 = SWTFollowUpType.rawValue.getter();
    v61 = v5;
    v22 = v21;
    v23 = *(v71 + 8);
    v23(v14, v9);
    v24 = sub_100021D24(v20, v22, v73);
    v25 = v61;

    *(v19 + 4) = v24;
    v26 = v16;
    v27 = v23;
    _os_log_impl(&_mh_execute_header, v15, v26, "postCFU: %{public}s", v19, 0xCu);
    sub_100024E14(v60);
    a1 = v70;

    v28 = v71;
    v29 = *(v25 + 112);
    if (!v29)
    {
      return;
    }
  }

  else
  {

    v28 = v71;
    v27 = *(v71 + 8);
    v27(v14, v9);
    v29 = *(v5 + 112);
    if (!v29)
    {
      return;
    }
  }

  v30 = v68;
  v67(v68, a1, v9);
  v31 = (*(v28 + 88))(v30, v9);
  if (v31 == enum case for SWTFollowUpType.rollback(_:))
  {
    v32 = v29;
    v71 = sub_10007E5EC(0xD000000000000012, 0x800000010010C710, 0xD000000000000021, 0x800000010010C730);
    v33 = "SWT_ROLLBACK_INFO";
    v34 = " to older version";
    v35 = 0xD000000000000038;
  }

  else
  {
    if (v31 != enum case for SWTFollowUpType.treeFork(_:))
    {
      v27(v30, v9);
      return;
    }

    v36 = v29;
    v71 = sub_10007E5EC(0xD000000000000012, 0x800000010010C640, 0x742064656B726F46, 0xEB00000000656572);
    v33 = "SWT_TREEFORK_INFO";
    v34 = "SWT_TREEFORK_TITLE";
    v35 = 0xD000000000000053;
  }

  v68 = sub_10007E5EC(0xD000000000000011, v34 | 0x8000000000000000, v35, v33 | 0x8000000000000000);
  sub_100024248(&unk_100153C20, qword_1001062C8);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100106300;
  v38 = v63[3];
  v39 = v63[4];
  sub_100026F6C(v63, v38);
  v40 = (*(v39 + 48))(v38, v39);
  v41 = [v40 swtCFUDetailsURL];

  if (v41)
  {
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  sub_10007E818(v42, v44);
  v46 = v45;

  *(v37 + 32) = v46;
  v72 = v37;
  v47 = v64;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v49 = v48;
  (*(v65 + 8))(v47, v66);
  if ((*(v69 + 8) & 1) == 0 && *v69 + 1209600.0 < v49)
  {
    sub_10007EB54();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v50 = [objc_allocWithZone(FLFollowUpItem) init];
  v73[0] = 0xD000000000000019;
  v73[1] = 0x800000010010C5E0;
  v51._countAndFlagsBits = SWTFollowUpType.rawValue.getter();
  String.append(_:)(v51);

  v52 = String._bridgeToObjectiveC()();

  [v50 setUniqueIdentifier:v52];

  [v50 setGroupIdentifier:FLGroupIdentifierAccount];
  v53 = String._bridgeToObjectiveC()();

  [v50 setTitle:v53];

  v54 = String._bridgeToObjectiveC()();

  [v50 setInformativeText:v54];

  sub_10007AC14();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v50 setUserInfo:isa];

  sub_100033178(0, &qword_100153E10, FLFollowUpAction_ptr);
  v56 = Array._bridgeToObjectiveC()().super.isa;

  [v50 setActions:v56];

  v57 = String._bridgeToObjectiveC()();
  [v50 setExtensionIdentifier:v57];

  v73[0] = 0;
  if ([v29 postFollowUpItem:v50 error:v73])
  {
    v58 = v73[0];
  }

  else
  {
    v59 = v73[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_10007BBF8(uint64_t a1)
{
  v2 = *(v1 + 112);
  if (v2)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v19 = _swiftEmptyArrayStorage;
      v17 = v2;
      sub_10007DDF0(0, v4, 0);
      v5 = _swiftEmptyArrayStorage;
      v6 = (a1 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v18[0] = 0xD000000000000019;
        v18[1] = 0x800000010010C5E0;

        v9._countAndFlagsBits = v7;
        v9._object = v8;
        String.append(_:)(v9);

        v19 = v5;
        v11 = v5[2];
        v10 = v5[3];
        if (v11 >= v10 >> 1)
        {
          sub_10007DDF0((v10 > 1), v11 + 1, 1);
          v5 = v19;
        }

        v5[2] = v11 + 1;
        v12 = &v5[2 * v11];
        v12[4] = 0xD000000000000019;
        v12[5] = 0x800000010010C5E0;
        v6 += 2;
        --v4;
      }

      while (v4);
      sub_10007BDE0(v5);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v18[0] = 0;
      v14 = [v17 clearPendingFollowUpItemsWithUniqueIdentifiers:isa error:v18];

      if (v14)
      {
        v15 = v18[0];
      }

      else
      {
        v16 = v18[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }
}

unint64_t *sub_10007BDE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_10007DE10(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10007DE10((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100032F28(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_10007BEE0()
{
  v1 = *(v0 + 112);
  if (!v1)
  {
    return sub_10007E4A8(_swiftEmptyArrayStorage);
  }

  v51 = 0;
  v2 = v1;
  v3 = [v2 pendingFollowUpItems:&v51];
  v4 = v51;
  if (v3)
  {
    v5 = v3;
    sub_100033178(0, &qword_100153E18, FLFollowUpItem_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v4;

    v51 = _swiftEmptyArrayStorage;
    if (v6 >> 62)
    {
      goto LABEL_21;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v2; v8; i = v2)
    {
      v9 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v6 + 8 * v9 + 32);
        }

        v11 = v10;
        v2 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v12 = [v10 uniqueIdentifier];
        if (!v12)
        {
          __break(1u);
LABEL_58:
          __break(1u);
        }

        v13 = v12;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v14._object = 0x800000010010C5E0;
        v14._countAndFlagsBits = 0xD000000000000019;
        LOBYTE(v13) = String.hasPrefix(_:)(v14);

        if (v13)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v9;
        if (v2 == v8)
        {
          v16 = v51;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    v16 = _swiftEmptyArrayStorage;
LABEL_23:

    if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
    {
      goto LABEL_53;
    }

    v17 = *(v16 + 16);
    if (v17)
    {
LABEL_26:
      v18 = 0;
      v49 = v16 & 0xC000000000000001;
      v15 = _swiftEmptyDictionarySingleton;
      v48 = v16;
      while (1)
      {
        if (v49)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *(v16 + 16))
          {
            goto LABEL_50;
          }

          v21 = *(v16 + 8 * v18 + 32);
        }

        v22 = v21;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          v17 = _CocoaArrayWrapper.endIndex.getter();
          if (!v17)
          {
            break;
          }

          goto LABEL_26;
        }

        v50 = v18 + 1;
        v23 = [v21 userInfo];
        if (v23)
        {
          v24 = v23;
          v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v25 = 0;
        }

        v26 = v17;
        sub_10007E04C(v25, &v52);
        v27 = [v22 uniqueIdentifier];
        if (!v27)
        {
          goto LABEL_58;
        }

        v28 = v27;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v15;
        v33 = sub_1000435B4(v16, v30);
        v34 = v15[2];
        v35 = (v32 & 1) == 0;
        v36 = v34 + v35;
        if (__OFADD__(v34, v35))
        {
          goto LABEL_51;
        }

        v37 = v32;
        if (v15[3] >= v36)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v32)
            {
              goto LABEL_27;
            }
          }

          else
          {
            sub_10007DC50();
            if (v37)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          sub_10007D0E8(v36, isUniquelyReferenced_nonNull_native);
          v38 = sub_1000435B4(v16, v30);
          if ((v37 & 1) != (v39 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v33 = v38;
          if (v37)
          {
LABEL_27:

            v15 = v51;
            v19 = v51[7] + 40 * v33;
            v20 = v53;
            *v19 = v52;
            *(v19 + 16) = v20;
            *(v19 + 32) = v54;

            goto LABEL_28;
          }
        }

        v15 = v51;
        v51[(v33 >> 6) + 8] |= 1 << v33;
        v40 = (v15[6] + 16 * v33);
        *v40 = v16;
        v40[1] = v30;
        v41 = v15[7] + 40 * v33;
        *(v41 + 32) = v54;
        v42 = v53;
        *v41 = v52;
        *(v41 + 16) = v42;

        v43 = v15[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_52;
        }

        v15[2] = v45;
LABEL_28:
        ++v18;
        v17 = v26;
        v16 = v48;
        if (v50 == v26)
        {
          goto LABEL_55;
        }
      }
    }

    v15 = _swiftEmptyDictionarySingleton;
LABEL_55:
  }

  else
  {
    v15 = v51;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v15;
}

uint64_t sub_10007C3F8()
{
  v24 = type metadata accessor for SWTFollowUpType();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = static SWTFollowUpType.allCases.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    v20[1] = v0;
    v25 = _swiftEmptyArrayStorage;
    sub_10007DDF0(0, v5, 0);
    v6 = v25;
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v9 = *(v7 + 64);
    v20[0] = v4;
    v10 = v4 + ((v9 + 32) & ~v9);
    v22 = *(v7 + 56);
    v23 = v8;
    v21 = (v7 - 8);
    do
    {
      v11 = v24;
      v12 = v7;
      v23(v3, v10, v24);
      v13 = SWTFollowUpType.rawValue.getter();
      v15 = v14;
      (*v21)(v3, v11);
      v25 = v6;
      v17 = v6[2];
      v16 = v6[3];
      if (v17 >= v16 >> 1)
      {
        sub_10007DDF0((v16 > 1), v17 + 1, 1);
        v6 = v25;
      }

      v6[2] = v17 + 1;
      v18 = &v6[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
      v10 += v22;
      --v5;
      v7 = v12;
    }

    while (v5);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  sub_10007BBF8(v6);
}

uint64_t sub_10007C700()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd11SWTFollowUp_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10007C770()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd11SWTFollowUp_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10007C7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return _swift_task_switch(sub_10007C814, v5, 0);
}

uint64_t sub_10007C814()
{
  sub_10007B3EC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007C894(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return _swift_task_switch(sub_10007C8B8, v4, 0);
}

uint64_t sub_10007C8B8()
{
  sub_10007EEB0(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007C91C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10007C93C, v3, 0);
}

uint64_t sub_10007C93C()
{
  sub_10007BBF8(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007C9B8()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_10007C9D8, v2, 0);
}

uint64_t sub_10007C9D8()
{
  v1 = sub_10007BEE0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10007CA54()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_10007CA74, v2, 0);
}

uint64_t sub_10007CA74()
{
  sub_10007C3F8();
  v1 = *(v0 + 8);

  return v1();
}

double sub_10007CAD4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000795A4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10007D908();
      v9 = v11;
    }

    sub_10007A8EC(*(v9 + 48) + 40 * v7);
    sub_100032F28((*(v9 + 56) + 32 * v7), a2);
    sub_10007D3E0(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10007CB78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100024248(&qword_100153DE0, &qword_100106980);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100032F28((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_10007A890(v23, &v36);
        sub_100025058(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100032F28(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
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

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10007CE30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100024248(&qword_100153BE0, &unk_100106EA0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100032F28(v24, v34);
      }

      else
      {
        sub_100025058(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100032F28(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10007D0E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100024248(&qword_100153ED0, &qword_100106AC0);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 40 * v21;
      v40 = *v25;
      v39 = *(v25 + 8);
      v38 = *(v25 + 16);
      v37 = *(v25 + 24);
      v26 = *(v25 + 32);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 40 * v15;
      *v17 = v40;
      *(v17 + 8) = v39;
      *(v17 + 16) = v38;
      *(v17 + 24) = v37;
      *(v17 + 32) = v26;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10007D3E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_10007A890(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_10007A8EC(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
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

_OWORD *sub_10007D584(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000795A4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10007D908();
      goto LABEL_7;
    }

    sub_10007CB78(v13, a3 & 1);
    v19 = sub_1000795A4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10007A890(a2, v21);
      return sub_10007D820(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100024E14(v17);

  return sub_100032F28(a1, v17);
}

_OWORD *sub_10007D6D0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000435B4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10007DAAC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10007CE30(v16, a4 & 1);
    v11 = sub_1000435B4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100024E14(v22);

    return sub_100032F28(a1, v22);
  }

  else
  {
    sub_10007D89C(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_10007D820(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100032F28(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_10007D89C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100032F28(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10007D908()
{
  v1 = v0;
  sub_100024248(&qword_100153DE0, &qword_100106980);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_10007A890(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100025058(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100032F28(v22, (*(v4 + 56) + v17));
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

  return result;
}

void *sub_10007DAAC()
{
  v1 = v0;
  sub_100024248(&qword_100153BE0, &unk_100106EA0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100025058(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100032F28(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10007DC50()
{
  v1 = v0;
  sub_100024248(&qword_100153ED0, &qword_100106AC0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = (*(v4 + 48) + v18);
        *v28 = v20;
        v28[1] = v21;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        *(v29 + 24) = v26;
        *(v29 + 32) = v27;
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

  return result;
}

char *sub_10007DDF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007DE30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10007DE10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007DF3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10007DE30(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024248(&qword_100153EE0, &unk_100106AD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10007DF3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024248(&qword_100153ED8, &qword_100106AC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10007E04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v36 = 0u;
    v37 = 0u;
    sub_10002533C(&v36, &qword_100152D70, &qword_100103DB0);
    v36 = 0u;
    v37 = 0u;
    sub_10002533C(&v36, &qword_100152D70, &qword_100103DB0);
    v12 = 0;
    v7 = 0;
    v36 = 0u;
    v37 = 0u;
    v13 = 1;
    v8 = 1;
    goto LABEL_36;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v4 = sub_1000795A4(v35), (v5 & 1) == 0))
  {

    sub_10007A8EC(v35);
    v36 = 0u;
    v37 = 0u;
    goto LABEL_10;
  }

  sub_100025058(*(a1 + 56) + 32 * v4, &v36);
  sub_10007A8EC(v35);

  if (!*(&v37 + 1))
  {
LABEL_10:
    sub_10002533C(&v36, &qword_100152D70, &qword_100103DB0);
    v7 = 0;
    v8 = 1;
    goto LABEL_11;
  }

  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = v35[0];
  }

  else
  {
    v7 = 0;
  }

  v8 = v6 ^ 1;
LABEL_11:

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v9 = sub_1000795A4(v35), (v10 & 1) == 0))
  {

    sub_10007A8EC(v35);
    v36 = 0u;
    v37 = 0u;
    goto LABEL_19;
  }

  sub_100025058(*(a1 + 56) + 32 * v9, &v36);
  sub_10007A8EC(v35);

  if (!*(&v37 + 1))
  {
LABEL_19:
    sub_10002533C(&v36, &qword_100152D70, &qword_100103DB0);
    v12 = 0;
    v13 = 1;
    goto LABEL_20;
  }

  v11 = swift_dynamicCast();
  if (v11)
  {
    v12 = v35[0];
  }

  else
  {
    v12 = 0;
  }

  v13 = v11 ^ 1;
LABEL_20:
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v14 = sub_1000795A4(v35), (v15 & 1) == 0))
  {

    sub_10007A8EC(v35);
    v36 = 0u;
    v37 = 0u;
    goto LABEL_36;
  }

  sub_100025058(*(a1 + 56) + 32 * v14, &v36);
  sub_10007A8EC(v35);

  if (!*(&v37 + 1))
  {
LABEL_36:
    result = sub_10002533C(&v36, &qword_100152D70, &qword_100103DB0);
LABEL_37:
    v21 = 0;
LABEL_38:
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v21;
    return result;
  }

  sub_100024248(&qword_100153E08, qword_1001069A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_37;
  }

  v32 = v12;
  v33 = v8;
  v34 = v7;
  v17 = 0;
  v18 = v35[0];
  v19 = *(v35[0] + 16);
  v20 = v35[0] + 40;
  v21 = _swiftEmptyArrayStorage;
  v31 = v35[0] + 40;
LABEL_25:
  v22 = v20 + 16 * v17;
  while (1)
  {
    if (v19 == v17)
    {

      v7 = v34;
      v8 = v33;
      v12 = v32;
      goto LABEL_38;
    }

    if (v17 >= *(v18 + 16))
    {
      break;
    }

    ++v17;
    v23 = v22 + 16;

    v24 = Data.init(base64Encoded:options:)();
    v26 = v25;

    v22 = v23;
    if (v26 >> 60 != 15)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10004B124(0, *(v21 + 2) + 1, 1, v21);
        v21 = result;
      }

      v28 = *(v21 + 2);
      v27 = *(v21 + 3);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        result = sub_10004B124((v27 > 1), v28 + 1, 1, v21);
        v29 = v28 + 1;
        v21 = result;
      }

      *(v21 + 2) = v29;
      v30 = &v21[16 * v28];
      *(v30 + 4) = v24;
      *(v30 + 5) = v26;
      v20 = v31;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10007E4A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024248(&qword_100153ED0, &qword_100106AC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 24);
      v9 = *(i - 2);
      v10 = *(i - 8);
      v11 = *i;

      result = sub_1000435B4(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = v3[7] + 40 * result;
      *v15 = v7;
      *(v15 + 8) = v8;
      *(v15 + 16) = v9;
      *(v15 + 24) = v10;
      *(v15 + 32) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10007E5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();

  URL.init(fileURLWithPath:)();

  v10 = objc_allocWithZone(NSBundle);
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = [v10 initWithURL:v12];

  (*(v7 + 8))(v9, v6);
  if (v14)
  {
    v15 = String._bridgeToObjectiveC()();
    if (a4)
    {
      v16 = String._bridgeToObjectiveC()();
    }

    else
    {
      v16 = 0;
    }

    swift_beginAccess();

    v17 = String._bridgeToObjectiveC()();

    v18 = [v14 localizedStringForKey:v15 value:v16 table:v17];

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return a1;
}

void sub_10007E818(unint64_t a1, unint64_t a2)
{
  v4 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  sub_10007E5EC(0xD000000000000010, 0x800000010010C810, 0x6F4D206E7261654CLL, 0xEA00000000006572);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v6, 1, 1, v7);
  v9 = String._bridgeToObjectiveC()();
  v11 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(v8 + 8))(v6, v7);
  }

  v13 = [objc_opt_self() actionWithLabel:v9 url:v11];

  if (v13)
  {

    sub_100024248(&qword_100153B90, &unk_100105E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001042A0;
    *(inited + 32) = 0x6E6F69746361;
    v15 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE600000000000000;
    strcpy((inited + 48), "detailsAction");
    *(inited + 62) = -4864;
    v16 = sub_100061318(inited);
    swift_setDeallocating();
    sub_10002533C(v15, &qword_100153B98, &qword_100107EA0);
    v17 = 0x800000010010C830;
    v18 = 0xD000000000000016;
    if (a2)
    {
      v18 = a1;
    }

    v25 = &type metadata for String;
    if (a2)
    {
      v17 = a2;
    }

    *&v24 = v18;
    *(&v24 + 1) = v17;
    sub_100032F28(&v24, v23);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v16;
    sub_10007D6D0(v23, 7107189, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    sub_10007B120(v22);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v13 setUserInfo:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_10007EB54()
{
  v0 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2, 1, 1, v5);
  v7 = String._bridgeToObjectiveC()();

  v9 = 0;
  if ((*(v6 + 48))(v2, 1, v5) != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v9 = v10;
    (*(v6 + 8))(v2, v5);
  }

  v11 = [objc_opt_self() actionWithLabel:v7 url:v9];

  if (v11)
  {
    sub_100024248(&qword_100153B90, &unk_100105E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001042A0;
    *(inited + 32) = 0x6E6F69746361;
    v13 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 0x7463417261656C63;
    *(inited + 56) = 0xEB000000006E6F69;
    v14 = sub_100061318(inited);
    swift_setDeallocating();
    sub_10002533C(v13, &qword_100153B98, &qword_100107EA0);
    sub_10007B120(v14);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 setUserInfo:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_10007EEB0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024248(&qword_100152D90, &qword_100105620);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  (*(v5 + 56))(&v20 - v12, 1, 1, v4);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v15 = v14;
  sub_100025834(v13, v11, &qword_100152D90, &qword_100105620);
  v16 = (*(v5 + 48))(v11, 1, v4);
  if (v16 == 1)
  {
    (*(v5 + 8))(v7, v4);
    sub_10002533C(v13, &qword_100152D90, &qword_100105620);
    sub_10002533C(v11, &qword_100152D90, &qword_100105620);
    v17 = 0;
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    v17 = v18;
    v19 = *(v5 + 8);
    v19(v7, v4);
    sub_10002533C(v13, &qword_100152D90, &qword_100105620);
    v19(v11, v4);
  }

  v21 = v15;
  v22 = 0;
  v23 = v17;
  v24 = v16 == 1;
  v25 = 0;
  sub_10007B3EC(a1, a2, &v21);
}

__n128 sub_10007F150(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10007F164(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_10007F1C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for SWTFollowUp(uint64_t a1)
{
  result = qword_10015AF30;
  if (!qword_10015AF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007F280(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t Application.description.getter(int a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x2F6E776F6E6B6E55;
      case 1:
        return 5456969;
      case 2:
        return 19267;
    }

    return 0x4E574F4E4B4E55;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 21569;
    }

    if (a1 == 6)
    {
      return 4805697;
    }

    return 0x4E574F4E4B4E55;
  }

  if (a1 == 3)
  {
    return 20557;
  }

  else
  {
    return 21574;
  }
}

void sub_10007F3F0()
{
  v1 = [v0 appSmtKeyStore];
  v2 = [v1 signatureVerifier];

  [v2 setNeedsRefresh:1];
  v3 = [v0 appSthKeyStore];
  v4 = [v3 signatureVerifier];

  [v4 setNeedsRefresh:1];
  v5 = [v0 tltKeyStore];
  v6 = [v5 signatureVerifier];

  [v6 setNeedsRefresh:1];
}

uint64_t sub_10007F53C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 4;
  }

  if (a3 == 1)
  {
    return 5;
  }

  return qword_100106EB0[a1];
}

unint64_t sub_10007F56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 1u)
  {

    return sub_100061318(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = a3;
    sub_100024248(&qword_100153B90, &unk_100105E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001042A0;
    *(inited + 32) = 107;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE100000000000000;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    sub_100087BF0(a1, a2, v6);
    v8 = sub_100061318(inited);
    swift_setDeallocating();
    sub_10002533C(inited + 32, &qword_100153B98, &qword_100107EA0);
    return v8;
  }
}

uint64_t sub_10007F668(uint64_t a1)
{
  v2 = sub_10008819C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10007F6A4(uint64_t a1)
{
  v2 = sub_10008819C();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10007F6E0()
{
  if (!*(v0 + 16))
  {
    return 4;
  }

  if (*(v0 + 16) == 1)
  {
    return 5;
  }

  return qword_100106EB0[*v0];
}

unint64_t sub_10007F714()
{
  v1 = *(v0 + 16);
  if (v1 >= 2)
  {

    return sub_100061318(_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = v0;
    v2 = *v0;
    v3 = *(v4 + 8);
    sub_100024248(&qword_100153B90, &unk_100105E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001042A0;
    *(inited + 32) = 107;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE100000000000000;
    *(inited + 48) = v2;
    *(inited + 56) = v3;
    sub_100087BF0(v2, v3, v1);
    v6 = sub_100061318(inited);
    swift_setDeallocating();
    sub_10002533C(inited + 32, &qword_100153B98, &qword_100107EA0);
    return v6;
  }
}

void *sub_10007F818()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

uint64_t sub_10007F864()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D2B0);
  sub_100025AE0(v0, qword_10015D2B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10007F8E8()
{
  if (qword_10015AF40 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D2B0);
}

uint64_t sub_10007F94C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015AF40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D2B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10007F9F4(int a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v16 + 112) = 0;
  *(v16 + 128) = a2;
  *(v16 + 136) = a1;
  v17 = *(a5 + 16);
  *(v16 + 144) = *a5;
  *(v16 + 160) = v17;
  *(v16 + 176) = *(a5 + 32);
  v18 = OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_directory;
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 32))(v16 + v18, a3, v19);
  v20 = *(a6 + 16);
  *(v16 + 184) = *a6;
  *(v16 + 200) = v20;
  *(v16 + 216) = *(a6 + 32);
  sub_100037608(a4, v16 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_database);
  v21 = v16 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_followup;
  v22 = *(a7 + 16);
  *v21 = *a7;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a7 + 32);
  *(v16 + 120) = a8;
  return v16;
}

uint64_t sub_10007FB18(int a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_defaultActor_initialize();
  *(v8 + 112) = 0;
  *(v8 + 128) = a2;
  *(v8 + 136) = a1;
  v17 = *(a5 + 16);
  *(v8 + 144) = *a5;
  *(v8 + 160) = v17;
  *(v8 + 176) = *(a5 + 32);
  v18 = OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_directory;
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 32))(v8 + v18, a3, v19);
  v20 = *(a6 + 16);
  *(v8 + 184) = *a6;
  *(v8 + 200) = v20;
  *(v8 + 216) = *(a6 + 32);
  sub_100037608(a4, v8 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_database);
  v21 = v8 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_followup;
  v22 = *(a7 + 16);
  *v21 = *a7;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a7 + 32);
  *(v8 + 120) = a8;
  return v8;
}

uint64_t sub_10007FC28(void *a1)
{
  v2 = swift_allocObject();
  sub_10007FC68(a1);
  return v2;
}

uint64_t sub_10007FC68(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  v8 = a1[3];
  v9 = a1[4];
  sub_100026F6C(a1, v8);
  *(v1 + 136) = (*(v9 + 8))(v8, v9);
  v10 = a1[3];
  v11 = a1[4];
  sub_100026F6C(a1, v10);
  *(v1 + 128) = (*(v11 + 32))(v10, v11);
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0;
  v12 = a1[3];
  v13 = a1[4];
  sub_100026F6C(a1, v12);
  (*(v13 + 16))(v12, v13);
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_directory, v7, v4);
  v14 = a1[3];
  v15 = a1[4];
  sub_100026F6C(a1, v14);
  v16 = (*(v15 + 64))(v14, v15);
  v17 = (v2 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_database);
  v17[3] = type metadata accessor for KTSWDB();
  v17[4] = sub_100087C08(&qword_100152F48, type metadata accessor for KTSWDB, &unk_100105078);
  *v17 = v16;
  *(v2 + 216) = 0;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  v18 = a1[3];
  v19 = a1[4];
  sub_100026F6C(a1, v18);
  (*(v19 + 40))(v26, v18, v19);
  v20 = v2 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_followup;
  v21 = v26[1];
  *v20 = v26[0];
  *(v20 + 16) = v21;
  *(v20 + 32) = v27;
  v22 = a1[3];
  v23 = a1[4];
  sub_100026F6C(a1, v22);
  *(v2 + 120) = (*(v23 + 80))(v22, v23);
  sub_100024E14(a1);
  return v2;
}

uint64_t sub_10007FF28()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v0 + 160))(v4);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 receiptTime];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceNow.getter();
    v11 = v10;
    (*(v3 + 8))(v6, v2);
    if (kKTPublicKeysResponseRefresh == 0x8000000000000000)
    {
      __break(1u);
    }

    else
    {
      if (v11 >= -kKTPublicKeysResponseRefresh)
      {

        return 0;
      }

      if (qword_10015AF40 == -1)
      {
LABEL_5:
        v12 = type metadata accessor for Logger();
        sub_100025AE0(v12, qword_10015D2B0);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v13, v14))
        {
LABEL_25:

          (*(*v1 + 224))();
          return 1;
        }

        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23 = v16;
        *v15 = 136446210;
        v17 = v1[34];
        if (v17 <= 2)
        {
          switch(v17)
          {
            case 0:
              v18 = 0xEB00000000544C54;
              v19 = 0x2F6E776F6E6B6E55;
              goto LABEL_24;
            case 1:
              v18 = 0xE300000000000000;
              v19 = 5456969;
              goto LABEL_24;
            case 2:
              v18 = 0xE200000000000000;
              v19 = 19267;
LABEL_24:
              v21 = sub_100021D24(v19, v18, &v23);

              *(v15 + 4) = v21;
              _os_log_impl(&_mh_execute_header, v13, v14, "Public key response for %{public}s older than refresh period", v15, 0xCu);
              sub_100024E14(v16);

              goto LABEL_25;
          }
        }

        else
        {
          if (v17 <= 4)
          {
            v18 = 0xE200000000000000;
            if (v17 == 3)
            {
              v19 = 20557;
            }

            else
            {
              v19 = 21574;
            }

            goto LABEL_24;
          }

          if (v17 == 5)
          {
            v18 = 0xE200000000000000;
            v19 = 21569;
            goto LABEL_24;
          }

          if (v17 == 6)
          {
            v18 = 0xE300000000000000;
            v19 = 4805697;
            goto LABEL_24;
          }
        }

        v18 = 0xE700000000000000;
        v19 = 0x4E574F4E4B4E55;
        goto LABEL_24;
      }
    }

    swift_once();
    goto LABEL_5;
  }

  (*(*v0 + 224))();
  return 1;
}

id sub_1000802D0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*v0 + 160))(v3);
  if (!v6)
  {
    return 0;
  }

  v7 = objc_opt_self();
  v8 = [v6 receiptTime];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v5, v1);
  v10 = [v7 fuzzyDaysSinceDate:isa];

  return v10;
}

uint64_t sub_100080454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return _swift_task_switch(sub_100080474, a4, 0);
}

uint64_t sub_100080474()
{
  sub_100025834(*(v0 + 64) + 184, v0 + 16, &qword_100153F20, &qword_100106BD0);
  v1 = *(v0 + 40);
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = *(v0 + 48);
    sub_100026F6C((v0 + 16), v1);
    v6 = (*(v2 + 8) + **(v2 + 8));
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_100080624;

    return v6(v1, v2);
  }

  else
  {
    sub_10002533C(v0 + 16, &qword_100153F20, &qword_100106BD0);
    **(v0 + 56) = *(v0 + 72) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100080624()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100080734, v1, 0);
}

uint64_t sub_100080734()
{
  sub_100024E14((v0 + 16));
  **(v0 + 56) = *(v0 + 72) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000807C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_100087C08(&qword_100153EE8, type metadata accessor for SWTPublicKeyBag, &unk_100106CA8);
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v8;
  v9[4] = v2;
  swift_retain_n();
  sub_100075D7C(0, 0, v6, a2, v9);
}

uint64_t sub_100080908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return _swift_task_switch(sub_100080928, a4, 0);
}

uint64_t sub_100080928()
{
  sub_100025834(*(v0 + 64) + 184, v0 + 16, &qword_100153F20, &qword_100106BD0);
  v1 = *(v0 + 40);
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = *(v0 + 48);
    sub_100026F6C((v0 + 16), v1);
    v6 = (*(v2 + 16) + **(v2 + 16));
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_100080AD8;

    return v6(v1, v2);
  }

  else
  {
    sub_10002533C(v0 + 16, &qword_100153F20, &qword_100106BD0);
    **(v0 + 56) = *(v0 + 72) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100080AD8()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_1000882FC, v1, 0);
}

uint64_t sub_100080BE8()
{
  v1 = v0;
  v2 = (*(*v0 + 160))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 appSthKeyStore];
    v5 = [v4 signatureVerifier];

    LODWORD(v4) = [v5 needsRefresh];
    if (v4)
    {
      if (qword_10015AF40 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100025AE0(v6, qword_10015D2B0);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_67;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136446210;
      v11 = v1[34];
      if (v11 <= 2)
      {
        switch(v11)
        {
          case 0:
            v13 = 0x2F6E776F6E6B6E55;
            v12 = 0xEB00000000544C54;
            goto LABEL_59;
          case 1:
            v12 = 0xE300000000000000;
            v13 = 5456969;
            goto LABEL_59;
          case 2:
            v12 = 0xE200000000000000;
            v13 = 19267;
LABEL_59:
            v30 = sub_100021D24(v13, v12, &v33);

            *(v9 + 4) = v30;
            v31 = "App STH keys for %{public}s need refresh";
LABEL_66:
            _os_log_impl(&_mh_execute_header, v7, v8, v31, v9, 0xCu);
            sub_100024E14(v10);

LABEL_67:

            (*(*v1 + 224))();
            return 0;
        }
      }

      else
      {
        if (v11 <= 4)
        {
          v12 = 0xE200000000000000;
          if (v11 == 3)
          {
            v13 = 20557;
          }

          else
          {
            v13 = 21574;
          }

          goto LABEL_59;
        }

        if (v11 == 5)
        {
          v12 = 0xE200000000000000;
          v13 = 21569;
          goto LABEL_59;
        }

        if (v11 == 6)
        {
          v12 = 0xE300000000000000;
          v13 = 4805697;
          goto LABEL_59;
        }
      }

      v12 = 0xE700000000000000;
      v13 = 0x4E574F4E4B4E55;
      goto LABEL_59;
    }

    v22 = [v3 tltKeyStore];
    v23 = [v22 signatureVerifier];

    LODWORD(v22) = [v23 needsRefresh];
    if (!v22)
    {

      return 1;
    }

    if (qword_10015AF40 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100025AE0(v24, qword_10015D2B0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_67;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136446210;
    v25 = v1[34];
    if (v25 <= 2)
    {
      switch(v25)
      {
        case 0:
          v27 = 0x2F6E776F6E6B6E55;
          v26 = 0xEB00000000544C54;
          goto LABEL_65;
        case 1:
          v26 = 0xE300000000000000;
          v27 = 5456969;
          goto LABEL_65;
        case 2:
          v26 = 0xE200000000000000;
          v27 = 19267;
LABEL_65:
          v32 = sub_100021D24(v27, v26, &v33);

          *(v9 + 4) = v32;
          v31 = "TLT STH keys for %{public}s need refresh";
          goto LABEL_66;
      }
    }

    else
    {
      if (v25 <= 4)
      {
        v26 = 0xE200000000000000;
        if (v25 == 3)
        {
          v27 = 20557;
        }

        else
        {
          v27 = 21574;
        }

        goto LABEL_65;
      }

      if (v25 == 5)
      {
        v26 = 0xE200000000000000;
        v27 = 21569;
        goto LABEL_65;
      }

      if (v25 == 6)
      {
        v26 = 0xE300000000000000;
        v27 = 4805697;
        goto LABEL_65;
      }
    }

    v26 = 0xE700000000000000;
    v27 = 0x4E574F4E4B4E55;
    goto LABEL_65;
  }

  if (qword_10015AF40 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100025AE0(v14, qword_10015D2B0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136446210;
    v19 = v1[34];
    if (v19 <= 2)
    {
      switch(v19)
      {
        case 0:
          v21 = 0x2F6E776F6E6B6E55;
          v20 = 0xEB00000000544C54;
          goto LABEL_49;
        case 1:
          v20 = 0xE300000000000000;
          v21 = 5456969;
          goto LABEL_49;
        case 2:
          v20 = 0xE200000000000000;
          v21 = 19267;
LABEL_49:
          v29 = sub_100021D24(v21, v20, &v33);

          *(v17 + 4) = v29;
          _os_log_impl(&_mh_execute_header, v15, v16, "No key bag for %{public}s", v17, 0xCu);
          sub_100024E14(v18);

          goto LABEL_50;
      }
    }

    else
    {
      if (v19 <= 4)
      {
        v20 = 0xE200000000000000;
        if (v19 == 3)
        {
          v21 = 20557;
        }

        else
        {
          v21 = 21574;
        }

        goto LABEL_49;
      }

      if (v19 == 5)
      {
        v20 = 0xE200000000000000;
        v21 = 21569;
        goto LABEL_49;
      }

      if (v19 == 6)
      {
        v20 = 0xE300000000000000;
        v21 = 4805697;
        goto LABEL_49;
      }
    }

    v20 = 0xE700000000000000;
    v21 = 0x4E574F4E4B4E55;
    goto LABEL_49;
  }

LABEL_50:

  (*(*v1 + 224))();
  return 0;
}

void sub_1000812BC(char a1)
{
  v3 = (*(*v1 + 160))();
  if (v3)
  {
    v8 = v3;
    v4 = [v3 appSthKeyStore];
    v5 = [v4 signatureVerifier];

    [v5 setNeedsRefresh:(a1 & 1) == 0];
    v6 = [v8 tltKeyStore];
    v7 = [v6 signatureVerifier];

    [v7 setNeedsRefresh:(a1 & 1) == 0];
    if ((a1 & 1) == 0)
    {
      sub_100082A78();
    }
  }
}

void (*sub_100081570(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_100080BE8() & 1;
  return sub_1000815BC;
}

void sub_1000815E4()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  *(v0 + 112) = 0;
}

unint64_t sub_100081620()
{
  v1 = v0;
  v2 = [*(v0 + 128) atEnvironment];
  if (v2 <= 5)
  {
    if ((v2 - 1) < 5)
    {
      if (qword_10015AF40 != -1)
      {
        swift_once();
      }

      v3 = 0xD000000000000019;
      v4 = type metadata accessor for Logger();
      sub_100025AE0(v4, qword_10015D2B0);

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_55;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v43 = v8;
      *v7 = 136315138;
      v9 = *(v1 + 136);
      if (v9 <= 2)
      {
        switch(v9)
        {
          case 0:
            v11 = 0x2F6E776F6E6B6E55;
            v10 = 0xEB00000000544C54;
            goto LABEL_54;
          case 1:
            v10 = 0xE300000000000000;
            v11 = 5456969;
            goto LABEL_54;
          case 2:
            v10 = 0xE200000000000000;
            v11 = 19267;
LABEL_54:
            v35 = sub_100021D24(v11, v10, &v43);

            *(v7 + 4) = v35;
            _os_log_impl(&_mh_execute_header, v5, v6, "Using QA1 Primary key bag for %s", v7, 0xCu);
            sub_100024E14(v8);

            goto LABEL_55;
        }
      }

      else
      {
        if (v9 <= 4)
        {
          v10 = 0xE200000000000000;
          if (v9 == 3)
          {
            v11 = 20557;
          }

          else
          {
            v11 = 21574;
          }

          goto LABEL_54;
        }

        if (v9 == 5)
        {
          v10 = 0xE200000000000000;
          v11 = 21569;
          goto LABEL_54;
        }

        if (v9 == 6)
        {
          v10 = 0xE300000000000000;
          v11 = 4805697;
          goto LABEL_54;
        }
      }

      v10 = 0xE700000000000000;
      v11 = 0x4E574F4E4B4E55;
      goto LABEL_54;
    }

LABEL_38:
    if (qword_10015AF40 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100025AE0(v31, qword_10015D2B0);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_111;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43 = v23;
    *v22 = 136446210;
    v32 = *(v1 + 136);
    if (v32 <= 2)
    {
      switch(v32)
      {
        case 0:
          v34 = 0x2F6E776F6E6B6E55;
          v33 = 0xEB00000000544C54;
          goto LABEL_109;
        case 1:
          v33 = 0xE300000000000000;
          v34 = 5456969;
          goto LABEL_109;
        case 2:
          v33 = 0xE200000000000000;
          v34 = 19267;
LABEL_109:
          v41 = sub_100021D24(v34, v33, &v43);

          *(v22 + 4) = v41;
          v37 = "Using prod key bag for %{public}s";
          goto LABEL_110;
      }
    }

    else
    {
      if (v32 <= 4)
      {
        v33 = 0xE200000000000000;
        if (v32 == 3)
        {
          v34 = 20557;
        }

        else
        {
          v34 = 21574;
        }

        goto LABEL_109;
      }

      if (v32 == 5)
      {
        v33 = 0xE200000000000000;
        v34 = 21569;
        goto LABEL_109;
      }

      if (v32 == 6)
      {
        v33 = 0xE300000000000000;
        v34 = 4805697;
        goto LABEL_109;
      }
    }

    v33 = 0xE700000000000000;
    v34 = 0x4E574F4E4B4E55;
    goto LABEL_109;
  }

  if (v2 == 6)
  {
    if (qword_10015AF40 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100025AE0(v19, qword_10015D2B0);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_111;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43 = v23;
    *v22 = 136446210;
    v24 = *(v1 + 136);
    if (v24 <= 2)
    {
      switch(v24)
      {
        case 0:
          v26 = 0x2F6E776F6E6B6E55;
          v25 = 0xEB00000000544C54;
          goto LABEL_91;
        case 1:
          v25 = 0xE300000000000000;
          v26 = 5456969;
          goto LABEL_91;
        case 2:
          v25 = 0xE200000000000000;
          v26 = 19267;
LABEL_91:
          v36 = sub_100021D24(v26, v25, &v43);

          *(v22 + 4) = v36;
          v37 = "Using carry key bag for %{public}s";
LABEL_110:
          _os_log_impl(&_mh_execute_header, v20, v21, v37, v22, 0xCu);
          sub_100024E14(v23);

LABEL_111:

          return 0xD000000000000015;
      }
    }

    else
    {
      if (v24 <= 4)
      {
        v25 = 0xE200000000000000;
        if (v24 == 3)
        {
          v26 = 20557;
        }

        else
        {
          v26 = 21574;
        }

        goto LABEL_91;
      }

      if (v24 == 5)
      {
        v25 = 0xE200000000000000;
        v26 = 21569;
        goto LABEL_91;
      }

      if (v24 == 6)
      {
        v25 = 0xE300000000000000;
        v26 = 4805697;
        goto LABEL_91;
      }
    }

    v25 = 0xE700000000000000;
    v26 = 0x4E574F4E4B4E55;
    goto LABEL_91;
  }

  if (v2 != 9)
  {
    if (v2 != 8)
    {
      goto LABEL_38;
    }

    if (qword_10015AF40 != -1)
    {
      swift_once();
    }

    v3 = 0xD000000000000019;
    v12 = type metadata accessor for Logger();
    sub_100025AE0(v12, qword_10015D2B0);

    v5 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v5, v13))
    {
      goto LABEL_55;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v43 = v15;
    *v14 = 136315138;
    v16 = *(v1 + 136);
    if (v16 <= 2)
    {
      switch(v16)
      {
        case 0:
          v18 = 0x2F6E776F6E6B6E55;
          v17 = 0xEB00000000544C54;
          goto LABEL_103;
        case 1:
          v17 = 0xE300000000000000;
          v18 = 5456969;
          goto LABEL_103;
        case 2:
          v17 = 0xE200000000000000;
          v18 = 19267;
LABEL_103:
          v38 = sub_100021D24(v18, v17, &v43);

          *(v14 + 4) = v38;
          v39 = "Using QA2 Primary key bag for %s";
LABEL_106:
          _os_log_impl(&_mh_execute_header, v5, v13, v39, v14, 0xCu);
          sub_100024E14(v15);

          goto LABEL_55;
      }
    }

    else
    {
      if (v16 <= 4)
      {
        v17 = 0xE200000000000000;
        if (v16 == 3)
        {
          v18 = 20557;
        }

        else
        {
          v18 = 21574;
        }

        goto LABEL_103;
      }

      if (v16 == 5)
      {
        v17 = 0xE200000000000000;
        v18 = 21569;
        goto LABEL_103;
      }

      if (v16 == 6)
      {
        v17 = 0xE300000000000000;
        v18 = 4805697;
        goto LABEL_103;
      }
    }

    v17 = 0xE700000000000000;
    v18 = 0x4E574F4E4B4E55;
    goto LABEL_103;
  }

  if (qword_10015AF40 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100025AE0(v27, qword_10015D2B0);

  v5 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v43 = v15;
    *v14 = 136315138;
    v28 = *(v1 + 136);
    if (v28 <= 2)
    {
      switch(v28)
      {
        case 0:
          v30 = 0x2F6E776F6E6B6E55;
          v29 = 0xEB00000000544C54;
          goto LABEL_105;
        case 1:
          v29 = 0xE300000000000000;
          v30 = 5456969;
          goto LABEL_105;
        case 2:
          v29 = 0xE200000000000000;
          v30 = 19267;
LABEL_105:
          v3 = 0xD000000000000019;
          v40 = sub_100021D24(v30, v29, &v43);

          *(v14 + 4) = v40;
          v39 = "Using QA2 Internal key bag for %s";
          goto LABEL_106;
      }
    }

    else
    {
      if (v28 <= 4)
      {
        v29 = 0xE200000000000000;
        if (v28 == 3)
        {
          v30 = 20557;
        }

        else
        {
          v30 = 21574;
        }

        goto LABEL_105;
      }

      if (v28 == 5)
      {
        v29 = 0xE200000000000000;
        v30 = 21569;
        goto LABEL_105;
      }

      if (v28 == 6)
      {
        v29 = 0xE300000000000000;
        v30 = 4805697;
        goto LABEL_105;
      }
    }

    v29 = 0xE700000000000000;
    v30 = 0x4E574F4E4B4E55;
    goto LABEL_105;
  }

  v3 = 0xD000000000000019;
LABEL_55:

  return v3;
}

uint64_t sub_100081FEC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100024248(&qword_100152D90, &qword_100105620);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100082088, v1, 0);
}

uint64_t sub_100082088()
{
  v1 = *(**(v0 + 24) + 160);
  v2 = v1();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 trustedAppSigningKeys];

    sub_100087DE0();
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000823F4(v5);
  }

  sub_10002A9AC([*(*(v0 + 24) + 128) atEnvironment]);
  v6 = v1();
  v7 = v6;
  if (v6)
  {
    [v6 patLogBeginningMs];
  }

  v8 = v1();
  v9 = v8;
  if (v8)
  {
    [v8 tltLogBeginningMs];
  }

  v10 = v1();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 receiptTime];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = *(v0 + 32);
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(v14, v13, 1, v15);
  TransparencySWSysdiagnose.PublicKeybag.init(env:app:patLogBeginMs:tltLogBeginMs:fetchTime:trustedAppSPKI:)();

  v16 = *(v0 + 8);

  return v16();
}

void *sub_1000823F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007DDF0(0, v1, 0);
  v3 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v22 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v9 = (*(a1 + 48) + 16 * v5);
    v11 = *v9;
    v10 = v9[1];
    sub_100027004(*v9, v10);
    v12 = Data.base64EncodedString(options:)(0);
    result = sub_100026FB0(v11, v10);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      result = sub_10007DDF0((v13 > 1), v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    *&_swiftEmptyArrayStorage[2 * v14 + 4] = v12;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v8);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v8 << 6;
      v18 = v8 + 1;
      v19 = (a1 + 72 + 8 * v8);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_100024A68(v5, v23, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_100024A68(v5, v23, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v22)
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

id sub_100082638()
{
  v1 = objc_opt_self();
  (*(*v0 + 264))();
  v2 = String._bridgeToObjectiveC()();

  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v12 = 0;
  v6 = [v1 readDictionaryFromFile:v2 inDirectory:v4 error:&v12];

  v7 = v12;
  if (v6)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v7;

    v10 = sub_1000827A8(v8);
  }

  else
  {
    v10 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v10;
}

unint64_t sub_1000827A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100024248(&qword_1001540F8, &qword_100106E70);
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
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_10007A890(*(a1 + 48) + 40 * v12, v24);
        sub_100025058(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_10007A890(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_10002533C(v21, &qword_100154100, qword_100106E78);

          goto LABEL_23;
        }

        sub_100025058(v22 + 8, v20);
        sub_10002533C(v21, &qword_100154100, qword_100106E78);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1000435B4(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_100082A78()
{
  v2 = v0;
  v3 = (*(*v0 + 160))();
  if (!v3)
  {
    sub_100087F38();
    swift_allocError();
    *v8 = xmmword_100106AF0;
    *(v8 + 16) = 2;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_directory;
  v6 = sub_100082638();
  if (v1)
  {

LABEL_4:
    v7 = sub_100087E34(_swiftEmptyArrayStorage);
    goto LABEL_7;
  }

  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

LABEL_7:
  v9 = v2[34];
  v42 = v5;
  if (v9 <= 2)
  {
    switch(v9)
    {
      case 0:
        v10 = 0xEB00000000544C54;
        v11 = 0x2F6E776F6E6B6E55;
        goto LABEL_23;
      case 1:
        v10 = 0xE300000000000000;
        v11 = 5456969;
        goto LABEL_23;
      case 2:
        v10 = 0xE200000000000000;
        v11 = 19267;
        goto LABEL_23;
    }

LABEL_19:
    v10 = 0xE700000000000000;
    v11 = 0x4E574F4E4B4E55;
    goto LABEL_23;
  }

  if (v9 > 4)
  {
    if (v9 == 5)
    {
      v10 = 0xE200000000000000;
      v11 = 21569;
      goto LABEL_23;
    }

    if (v9 == 6)
    {
      v10 = 0xE300000000000000;
      v11 = 4805697;
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v10 = 0xE200000000000000;
  if (v9 == 3)
  {
    v11 = 20557;
  }

  else
  {
    v11 = 21574;
  }

LABEL_23:
  v12 = [v4 diskStoreDictionary];
  if (!v12)
  {
    __break(1u);
    goto LABEL_30;
  }

  v13 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100087904(v13, v11, v10, isUniquelyReferenced_nonNull_native);

  v15 = v7;
  v16 = sub_100087E34(_swiftEmptyArrayStorage);
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v16;
  sub_100087904(isa, v17, v19, v21);

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  (*(*v2 + 232))();
  v25 = Bool._bridgeToObjectiveC()().super.super.isa;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v16;
  sub_100087904(v25, v22, v24, v26);

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  v30.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (!v15)
  {
LABEL_30:
    __break(1u);
    __break(1u);
    return;
  }

  v31 = v30.super.isa;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v15;
  sub_100087904(v31, v27, v29, v32);

  v33 = objc_opt_self();
  sub_100082F54(v15);
  v34 = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(*v2 + 264))(v35);
  v36 = String._bridgeToObjectiveC()();

  URL._bridgeToObjectiveC()(v42);
  v38 = v37;
  v43 = 0;
  v39 = [v33 writeDictionaryToFile:v34 fileName:v36 inDirectory:v37 error:&v43];

  if (v39)
  {
    v40 = v43;
  }

  else
  {
    v41 = v43;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100082F54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100024248(&qword_100153DE0, &qword_100106980);
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
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100032F28(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100032F28(v29, v30);
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
    result = sub_100032F28(v30, (v2[7] + 32 * v10));
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

uint64_t sub_100083214(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100024248(&qword_100153DE0, &qword_100106980);
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
    sub_10007A890(*(a1 + 48) + 40 * v13, v33);
    v35 = *(*(a1 + 56) + 8 * v13);
    v21 = v33[0];
    v23 = v33[1];
    v25 = v34;
    *&v32[0] = v35;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    v28 = v21;
    v29 = v23;
    v30 = v25;
    sub_100032F28(&v27, v31);
    v22 = v28;
    v24 = v29;
    v26 = v30;
    sub_100032F28(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~v7[v15 >> 6]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = v7[v16];
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~v7[v15 >> 6])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v24;
    *(v11 + 32) = v26;
    result = sub_100032F28(v32, (v2[7] + 32 * v10));
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

void sub_1000834C8(unint64_t a1)
{
  v28 = type metadata accessor for Date();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v8 = (v1 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_database);
    v33 = a1 & 0xC000000000000001;
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = (v3 + 8);
    *&v4 = 136315394;
    v24 = v4;
    v31 = a1;
    v30 = i;
    v29 = (v1 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_database);
    while (1)
    {
      if (v33)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v26 + 16))
        {
          goto LABEL_12;
        }

        v9 = *(a1 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_100061CE4(v37);
      sub_1000331C0(v8, &v34);
      v12 = v35;
      v13 = v36;
      v32 = sub_100026F6C(&v34, v35);
      v14 = v27;
      static Date.now.getter();
      v15 = [v10 data];
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_100061EBC();
      (*(v13 + 24))(v37, v14, v16, v18, v19, v12, v13);
      (*v25)(v14, v28);
      sub_100026FB0(v16, v18);
      sub_100024E14(&v34);
      v8 = v29;
      v20 = v29[3];
      v21 = v29[4];
      sub_100026F6C(v29, v20);
      (*(v21 + 48))(v37, 1, v20, v21);
      v22 = v30;
      v3 = v8[3];
      v23 = v8[4];
      v1 = sub_100026F6C(v8, v3);
      (*(v23 + 40))(v37, 1, v3, v23);

      sub_1000270C0(v37);
      a1 = v31;
      ++v7;
      if (v11 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_100083C08(unint64_t a1, SEL *a2, const char *a3, ...)
{
  v7 = (*(*v3 + 160))();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if ([v7 *a2] && objc_msgSend(v8, *a2) < a1)
  {
    if (qword_10015AF40 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100025AE0(v9, qword_10015D2B0);
    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134349312;
      *(v13 + 4) = [v10 *a2];

      *(v13 + 12) = 2050;
      *(v13 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v11, v12, a3, v13, 0x16u);
    }

    else
    {

      v11 = v10;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_100083D9C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(sub_100083DC0, v2, 0);
}

uint64_t sub_100083DC0()
{
  v1 = *(v0 + 64);
  v2 = sub_100083BE0(*(v0 + 56));
  *(v0 + 88) = v2 & 1;
  v3 = sub_100083BF4(v1);
  *(v0 + 89) = v3 & 1;
  if ((v2 & 1) == 0 && (v3 & 1) == 0)
  {
    v4 = 0;
LABEL_9:
    v9 = *(v0 + 8);
    v10 = (v4 | *(v0 + 88)) & 1;

    return v9(v10);
  }

  sub_100025834(*(v0 + 72) + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_followup, v0 + 16, &qword_100153F28, &qword_100106BD8);
  v5 = *(v0 + 40);
  if (!v5)
  {
    sub_10002533C(v0 + 16, &qword_100153F28, &qword_100106BD8);
    v4 = *(v0 + 89);
    goto LABEL_9;
  }

  v6 = *(v0 + 48);
  sub_100026F6C((v0 + 16), *(v0 + 40));
  v11 = (*(v6 + 40) + **(v6 + 40));
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_100083FA8;

  return v11(v5, v6);
}

uint64_t sub_100083FA8()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_1000840B8, v1, 0);
}

uint64_t sub_1000840B8()
{
  sub_100024E14((v0 + 16));
  v1 = *(v0 + 8);
  v2 = (*(v0 + 89) | *(v0 + 88)) & 1;

  return v1(v2);
}

id sub_100084128()
{
  v1 = objc_opt_self();
  sub_10007A4E0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(*v0 + 264))(v3);
  v4 = String._bridgeToObjectiveC()();

  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_directory);
  v6 = v5;
  v9 = 0;
  LODWORD(v1) = [v1 writeDictionaryToFile:isa fileName:v4 inDirectory:v5 error:&v9];

  if (v1)
  {
    return v9;
  }

  v8 = v9;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_1000842A0()
{
  v2 = v0;
  v3 = sub_100082638();
  if (v1)
  {
    return;
  }

  v4 = v3;
  if (!v3)
  {
    sub_100087F38();
    swift_allocError();
    *v15 = xmmword_100106B00;
    *(v15 + 16) = 2;
    swift_willThrow();
    return;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v4[2])
  {

    goto LABEL_11;
  }

  v7 = sub_1000435B4(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_11:

    (*(*v2 + 336))(v16);
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    sub_100087F38();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0;
    swift_willThrow();
    return;
  }

  v10 = *(v4[7] + 8 * v7);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (([v10 respondsToSelector:"__swift_objectForKeyedSubscript:"] & 1) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_13;
  }

  *&v57 = v11;
  *(&v57 + 1) = v13;
  swift_unknownObjectRetain();

  v14 = [v10 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    v60 = v57;
    v61 = v59;
    if (*(&v59 + 1) == 1)
    {
      goto LABEL_14;
    }
  }

  else
  {

    v60 = 0u;
    v61 = 0u;
  }

  v62 = v60;
  v63 = v61;
  if (!*(&v61 + 1))
  {
LABEL_34:

    v21 = &qword_100152D70;
    v22 = &qword_100103DB0;
    v23 = &v62;
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:

    goto LABEL_16;
  }

  if (v57 < kTransparencyProtocolVersion)
  {

    (*(*v2 + 336))(v29);
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    sub_100087F38();
    swift_allocError();
    *v33 = v30;
    *(v33 + 8) = v32;
    *(v33 + 16) = 1;
    goto LABEL_17;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (([v10 respondsToSelector:"__swift_objectForKeyedSubscript:"] & 1) == 0)
  {
LABEL_13:

    v60 = 0uLL;
    *&v61 = 0;
    *(&v61 + 1) = 1;
    goto LABEL_14;
  }

  *&v58 = v34;
  *(&v58 + 1) = v36;

  v37 = [v10 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (!v37)
  {

    v60 = 0u;
    v61 = 0u;
    goto LABEL_28;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  v60 = v58;
  v61 = v59;
  if (*(&v59 + 1) == 1)
  {
LABEL_14:

    v21 = &unk_100153F00;
    v22 = &unk_100106B70;
    v23 = &v60;
LABEL_15:
    v24 = sub_10002533C(v23, v21, v22);
LABEL_16:
    (*(*v2 + 336))(v24);
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    sub_100087F38();
    swift_allocError();
    *v28 = v25;
    *(v28 + 8) = v27;
    *(v28 + 16) = 0;
LABEL_17:
    swift_willThrow();
    swift_unknownObjectRelease();
    return;
  }

LABEL_28:
  v62 = v60;
  v63 = v61;
  if (!*(&v61 + 1))
  {
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v38 = *(v2 + 136);
  if (v38 <= 2)
  {
    switch(v38)
    {
      case 0:
        v40 = 0x2F6E776F6E6B6E55;
        v39 = 0xEB00000000544C54;
        goto LABEL_48;
      case 1:
        v39 = 0xE300000000000000;
        v40 = 5456969;
        goto LABEL_48;
      case 2:
        v39 = 0xE200000000000000;
        v40 = 19267;
        goto LABEL_48;
    }

LABEL_44:
    v39 = 0xE700000000000000;
    v40 = 0x4E574F4E4B4E55;
    goto LABEL_48;
  }

  if (v38 > 4)
  {
    if (v38 == 5)
    {
      v39 = 0xE200000000000000;
      v40 = 21569;
      goto LABEL_48;
    }

    if (v38 == 6)
    {
      v39 = 0xE300000000000000;
      v40 = 4805697;
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  v39 = 0xE200000000000000;
  if (v38 == 3)
  {
    v40 = 20557;
  }

  else
  {
    v40 = 21574;
  }

LABEL_48:
  if (!v4[2])
  {

    goto LABEL_53;
  }

  v41 = sub_1000435B4(v40, v39);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
LABEL_53:

    goto LABEL_54;
  }

  v44 = *(v4[7] + 8 * v41);
  swift_unknownObjectRetain();

  *&v62 = v44;
  sub_100024248(&qword_100153F08, &qword_100106B80);
  if (swift_dynamicCast())
  {
    sub_100083214(v60);

    v48 = [*(v2 + 128) transparencySettings];
    v49 = objc_allocWithZone(TransparencyPublicKeyBag);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v51 = String._bridgeToObjectiveC()();

    *&v62 = 0;
    v52 = [v49 initWithDiskKeyStore:isa application:v51 settings:v48 allowOldKeys:1 error:&v62];

    v53 = v62;
    if (v52)
    {
      swift_unknownObjectRelease();
      swift_beginAccess();
      v54 = *(v2 + 112);
      *(v2 + 112) = v52;
      v55 = v52;

      if ((v58 & 1) == 0)
      {
        (*(*v2 + 240))(0);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v56 = v53;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    return;
  }

LABEL_54:
  if (v38 > 6)
  {
    v46 = 0xE700000000000000;
    v45 = 0x4E574F4E4B4E55;
  }

  else
  {
    v45 = *&aUnknownIds[8 * v38];
    v46 = *&aTlt[8 * v38];
  }

  sub_100087F38();
  swift_allocError();
  *v47 = v45;
  *(v47 + 8) = v46;
  *(v47 + 16) = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
}

uint64_t sub_100084C08(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100084C28, v1, 0);
}

uint64_t sub_100084C28()
{
  v16 = v0;
  v1 = v0[3];
  v2 = v1[34];
  v3 = (*(*v1 + 160))();
  v4 = v0[3];
  if (!v3)
  {
    (*(*v4 + 344))();
    v0[4] = 0;
    goto LABEL_26;
  }

  if ((*(*v4 + 232))() & 1) == 0 || ((*(*v0[3] + 200))())
  {
    if (qword_10015AF40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100025AE0(v5, qword_10015D2B0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_25;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    if (v2 <= 2)
    {
      switch(v2)
      {
        case 0:
          v11 = 0x2F6E776F6E6B6E55;
          v10 = 0xEB00000000544C54;
          goto LABEL_24;
        case 1:
          v10 = 0xE300000000000000;
          v11 = 5456969;
          goto LABEL_24;
        case 2:
          v10 = 0xE200000000000000;
          v11 = 19267;
LABEL_24:
          v12 = sub_100021D24(v11, v10, &v15);

          *(v8 + 4) = v12;
          _os_log_impl(&_mh_execute_header, v6, v7, "have key bag for %{public}s, but triggering refresh", v8, 0xCu);
          sub_100024E14(v9);

LABEL_25:

          goto LABEL_26;
      }
    }

    else
    {
      if (v2 <= 4)
      {
        v10 = 0xE200000000000000;
        if (v2 == 3)
        {
          v11 = 20557;
        }

        else
        {
          v11 = 21574;
        }

        goto LABEL_24;
      }

      if (v2 == 5)
      {
        v10 = 0xE200000000000000;
        v11 = 21569;
        goto LABEL_24;
      }

      if (v2 == 6)
      {
        v10 = 0xE300000000000000;
        v11 = 4805697;
        goto LABEL_24;
      }
    }

    v10 = 0xE700000000000000;
    v11 = 0x4E574F4E4B4E55;
    goto LABEL_24;
  }

LABEL_26:
  v13 = v0[1];

  return v13();
}

uint64_t sub_100085274()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100085404;
  }

  else
  {
    v4 = sub_1000853A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000853A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100085404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100085490(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for URLRequest();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_100024248(&qword_100152F00, &qword_1001042C0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100085630, v1, 0);
}

uint64_t sub_100085630()
{
  v71 = v0;
  v1 = *(v0 + 48);
  v2 = v1[3];
  v3 = v1[4];
  v69 = v1;
  sub_100026F6C(v1, v2);
  v4 = *(v3 + 8);
  v5 = v4(v2, v3);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 urlForKey:v6];

  if (v7)
  {
    v66 = v4;
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 56);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100033178(0, &qword_100153B80, NSMutableURLRequest_ptr);
    v65 = *(v10 + 16);
    v65(v9, v8, v11);
    v13 = *(v12 + 128);
    *(v0 + 136) = v13;
    [v13 networkTimeout];
    v15 = sub_1000B79C8(v9, v14);
    *(v0 + 144) = v15;
    v16 = String._bridgeToObjectiveC()();
    [v15 setHTTPMethod:v16];

    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    [v15 setValue:v17 forHTTPHeaderField:v18];

    v19 = objc_opt_self();
    v20 = [v19 deviceUserAgent];
    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = String._bridgeToObjectiveC()();
    }

    v21 = *(v0 + 56);
    v22 = String._bridgeToObjectiveC()();
    [v15 setValue:v20 forHTTPHeaderField:v22];

    v23 = *(v21 + 136);
    *(v0 + 224) = v23;
    *(v0 + 228) = v23;
    sub_100087F8C();
    BinaryInteger.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v15 setValue:v24 forHTTPHeaderField:off_1001523A0];

    v25 = ProtocolVersion_EnumDescriptor();
    v26 = [v25 textFormatNameForValue:kTransparencyProtocolVersion];

    [v15 setValue:v26 forHTTPHeaderField:off_1001523A8];
    v27 = [v19 transparencyVersionStr];
    if (!v27)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = String._bridgeToObjectiveC()();
    }

    [v15 setValue:v27 forHTTPHeaderField:off_1001523B8];

    v28 = [v19 automatedDeviceGroup];
    if (v28)
    {
      v29 = v28;
      [v15 setValue:v28 forHTTPHeaderField:off_1001523B0];
    }

    v30 = v66(v2, v3);
    v31 = [v30 currentEnvironment];

    if (sub_10002AAF4(v31))
    {
      [v15 _setPrivacyProxyFailClosed:1];
      if (qword_10015AF40 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100025AE0(v32, qword_10015D2B0);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Enforcing privacy proxy", v35, 2u);
      }
    }

    if (qword_10015AF40 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    *(v0 + 152) = sub_100025AE0(v36, qword_10015D2B0);
    v37 = v15;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v70 = v41;
      *v40 = 136315138;
      v42 = [v37 URL];
      if (v42)
      {
        v43 = v42;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = 0;
      }

      else
      {
        v44 = 1;
      }

      v49 = *(v0 + 104);
      v48 = *(v0 + 112);
      v51 = *(v0 + 88);
      v50 = *(v0 + 96);
      (*(v48 + 56))(v51, v44, 1, v49);
      sub_1000443C0(v51, v50);
      if ((*(v48 + 48))(v50, 1, v49))
      {
        sub_10002533C(*(v0 + 96), &qword_100152F00, &qword_1001042C0);
        v52 = 0xE100000000000000;
        v53 = 45;
      }

      else
      {
        v67 = v41;
        v54 = *(v0 + 112);
        v55 = *(v0 + 120);
        v56 = *(v0 + 96);
        v57 = *(v0 + 104);
        v65(v55, v56, v57);
        sub_10002533C(v56, &qword_100152F00, &qword_1001042C0);
        v58 = URL.description.getter();
        v52 = v59;
        (*(v54 + 8))(v55, v57);
        v41 = v67;
        v53 = v58;
      }

      v60 = sub_100021D24(v53, v52, &v70);

      *(v40 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v38, v39, "configuring from network %s", v40, 0xCu);
      sub_100024E14(v41);
    }

    v62 = v69[3];
    v61 = v69[4];
    sub_100026F6C(*(v0 + 48), v62);
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = (*(v61 + 16) + **(v61 + 16));
    v63 = swift_task_alloc();
    *(v0 + 160) = v63;
    *v63 = v0;
    v63[1] = sub_100085F2C;
    v64 = *(v0 + 80);

    return v68(v64, v62, v61);
  }

  else
  {
    (*(**(v0 + 56) + 216))();
    sub_100087F38();
    swift_allocError();
    *v45 = xmmword_100106B10;
    *(v45 + 16) = 2;
    swift_willThrow();

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_100085F2C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[21] = a1;
  v5[22] = a2;
  v5[23] = v2;

  v6 = v4[10];
  v7 = v4[9];
  v8 = v4[8];
  v9 = v4[7];
  (*(v7 + 8))(v6, v8);
  if (v2)
  {
    v10 = sub_1000869C8;
  }

  else
  {
    v10 = sub_1000860E0;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000860E0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = objc_allocWithZone(PublicKeysResponse);
  sub_100027004(v3, v1);
  v5 = sub_1000330B8();
  *(v0 + 192) = v5;
  *(v0 + 200) = v2;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  if (v2)
  {
    v8 = *(v0 + 144);
    v9 = *(v0 + 128);
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);
    sub_100026FB0(*(v0 + 168), *(v0 + 176));
    (*(v11 + 8))(v9, v10);
    sub_100026FB0(v6, v7);

LABEL_3:

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = v5;
  sub_100026FB0(*(v0 + 168), *(v0 + 176));
  v15 = [*(v0 + 136) transparencySettings];
  v16 = objc_allocWithZone(TransparencyPublicKeyBag);
  v17 = v14;
  v18 = String._bridgeToObjectiveC()();

  *(v0 + 40) = 0;
  v19 = [v16 initWithPublicKeysResponse:v17 application:v18 settings:v15 allowOldKeys:1 error:v0 + 40];
  *(v0 + 208) = v19;

  v20 = *(v0 + 40);
  if (!v19)
  {
    v27 = *(v0 + 168);
    v26 = *(v0 + 176);
    v28 = *(v0 + 144);
    v31 = *(v0 + 128);
    v30 = *(v0 + 104);
    v29 = *(v0 + 112);
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();

    sub_100026FB0(v27, v26);
    (*(v29 + 8))(v31, v30);
    goto LABEL_3;
  }

  swift_unknownObjectRelease();
  v21 = [v19 verifiedLogHeads];
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000834C8(v22);

  v23 = [v19 tltLogBeginningMs];
  v24 = [v19 patLogBeginningMs];
  v25 = swift_task_alloc();
  *(v0 + 216) = v25;
  *v25 = v0;
  v25[1] = sub_100086534;

  return sub_100083D9C(v23, v24);
}

uint64_t sub_100086534()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100086670, v1, 0);
}

uint64_t sub_100086670()
{
  v1 = v0[26];
  v2 = v0[7];
  swift_beginAccess();
  v3 = *(v2 + 112);
  *(v2 + 112) = v1;
  v4 = v1;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "storing public key to disk", v7, 2u);
  }

  v8 = v0[25];

  sub_100082A78();
  if (v8)
  {
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "failed to write new public key response to disk: %@", v11, 0xCu);
      sub_10002533C(v12, &qword_100153450, &unk_100104140);
    }

    v14 = v0[26];
    v15 = v0[24];
    v17 = v0[21];
    v16 = v0[22];
    v18 = v9;
    v19 = v0[18];
    v29 = v0[16];
    v21 = v0[13];
    v20 = v0[14];

    swift_willThrow();
    sub_100026FB0(v17, v16);

    (*(v20 + 8))(v29, v21);

    v22 = v0[1];
  }

  else
  {
    v23 = v0[26];
    v24 = v0[24];
    v25 = v0[21];
    v26 = v0[22];
    v27 = v0[18];
    (*(v0[14] + 8))(v0[16], v0[13]);

    sub_100026FB0(v25, v26);

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_1000869C8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100086AD8()
{
  sub_100025834(*(v0 + 96) + 144, v0 + 56, &qword_100153F18, &qword_100106BB0);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_100037608((v0 + 56), v0 + 16);
    v6 = (*(*v1 + 352) + **(*v1 + 352));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_100086CBC;

    return v6(v0 + 16);
  }

  else
  {
    sub_10002533C(v0 + 56, &qword_100153F18, &qword_100106BB0);
    sub_100087F38();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100086CBC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_100086E4C;
  }

  else
  {
    v4 = sub_100086DE8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100086DE8()
{
  sub_100024E14((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100086E4C()
{
  sub_100024E14((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100086ED0()
{
  sub_100025834(*(v0 + 216) + 144, v0 + 160, &qword_100153F18, &qword_100106BB0);
  if (*(v0 + 184))
  {
    v1 = *(v0 + 216);
    sub_100037608((v0 + 160), v0 + 120);
    v6 = (*(*v1 + 360) + **(*v1 + 360));
    v2 = swift_task_alloc();
    *(v0 + 224) = v2;
    *v2 = v0;
    v2[1] = sub_1000870B4;

    return v6(v0 + 120);
  }

  else
  {
    sub_10002533C(v0 + 160, &qword_100153F18, &qword_100106BB0);
    sub_100087F38();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1000870B4()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_10008728C;
  }

  else
  {
    v4 = sub_1000871E0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000871E0()
{
  v1 = *(v0[27] + 120);
  v2 = String._bridgeToObjectiveC()();
  [v1 logResultForEvent:v2 hardFailure:1 result:0];

  sub_100024E14(v0 + 15);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10008728C()
{
  v1 = *(v0[27] + 120);
  v2 = String._bridgeToObjectiveC()();
  v3 = _convertErrorToNSError(_:)();
  sub_100024248(&qword_100153DC8, &unk_100106BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001042A0;
  v0[25] = 112;
  v0[26] = 0xE100000000000000;
  AnyHashable.init<A>(_:)();
  v5 = v0[18];
  v6 = v0[19];
  sub_100026F6C(v0 + 15, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = [v7 currentEnvironment];

  v9 = sub_10002AAF4(v8);
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = v9;
  sub_10007A4E0(inited);
  swift_setDeallocating();
  sub_10002533C(inited + 32, &qword_100153DD0, &unk_100106940);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 logResultForEvent:v2 hardFailure:1 result:v3 withAttributes:isa];

  sub_100024E14(v0 + 15);
  v11 = v0[1];

  return v11();
}

uint64_t sub_10008748C()
{
  swift_unknownObjectRelease();
  sub_10002533C(v0 + 144, &qword_100153F18, &qword_100106BB0);
  sub_10002533C(v0 + 184, &qword_100153F20, &qword_100106BD0);
  v1 = OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_directory;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100024E14((v0 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_database));
  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_followup, &qword_100153F28, &qword_100106BD8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10008756C()
{
  swift_unknownObjectRelease();
  sub_10002533C(v0 + 144, &qword_100153F18, &qword_100106BB0);
  sub_10002533C(v0 + 184, &qword_100153F20, &qword_100106BD0);
  v1 = OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_directory;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100024E14((v0 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_database));
  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_followup, &qword_100153F28, &qword_100106BD8);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int sub_10008765C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100024248(&qword_1001540F8, &qword_100106E70);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100087904(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000435B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10008765C(v16, a4 & 1);
      v11 = sub_1000435B4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100087A80();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_100087A80()
{
  v1 = v0;
  sub_100024248(&qword_1001540F8, &qword_100106E70);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

  return result;
}

uint64_t sub_100087BF0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_100087C08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SWTPublicKeyBag(uint64_t a1)
{
  result = qword_10015B160;
  if (!qword_10015B160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100087CA0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001CF5C;

  return sub_100080454(a1, v5, v6, v4);
}

uint64_t sub_100087D40(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000258C8;

  return sub_100080908(a1, v5, v6, v4);
}

unint64_t sub_100087DE0()
{
  result = qword_100153EF0;
  if (!qword_100153EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153EF0);
  }

  return result;
}

unint64_t sub_100087E34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024248(&qword_1001540F8, &qword_100106E70);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1000435B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100087F38()
{
  result = qword_100153EF8;
  if (!qword_100153EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153EF8);
  }

  return result;
}

unint64_t sub_100087F8C()
{
  result = qword_100153F10;
  if (!qword_100153F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153F10);
  }

  return result;
}

uint64_t sub_100087FE4(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100088000(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100088048(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10008808C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1000880BC(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_10008819C()
{
  result = qword_1001540F0;
  if (!qword_1001540F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001540F0);
  }

  return result;
}

uint64_t sub_1000881F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088228(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001CF5C;

  return sub_1000796B0(a1, v4);
}

uint64_t sub_100088310@<X0>(uint64_t a1@<X8>)
{
  static TaskPriority.userInitiated.getter();
  v2 = type metadata accessor for TaskPriority();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1000883A8()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_pendingFetch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000883EC(char a1)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_pendingFetch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10008849C(__int128 *a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = 1;
  *(v2 + 120) = sub_10008B5FC(&off_100135D20);
  v3 = OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_priority;
  static TaskPriority.userInitiated.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2 + v3, 0, 1, v4);
  *(v2 + OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_pendingFetch) = 0;
  sub_100037608(a1, v2 + OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_deps);
  return v2;
}

uint64_t sub_100088568(__int128 *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 1;
  *(v1 + 120) = sub_10008B5FC(&off_100135D20);
  v3 = OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_priority;
  static TaskPriority.userInitiated.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1 + v3, 0, 1, v4);
  *(v1 + OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_pendingFetch) = 0;
  sub_100037608(a1, v1 + OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_deps);
  return v1;
}

uint64_t sub_100088624(unsigned __int8 a1)
{
  v2[2] = v1;
  if (a1 <= 6u && ((1 << a1) & 0x45) != 0)
  {
    v6 = (*(*v1 + 176) + **(*v1 + 176));
    v3 = swift_task_alloc();
    v2[3] = v3;
    *v3 = v2;
    v3[1] = sub_10008878C;

    return v6();
  }

  else
  {
    v5 = v2[1];

    return v5(10);
  }
}

uint64_t sub_10008878C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1000888A4, v2, 0);
}

uint64_t sub_1000888A4()
{
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      sub_10008B670(v1);
      v2 = 10;
    }

    else if (v1 == 0x8000000000000000)
    {
      v2 = 4;
    }

    else
    {
      v2 = 10;
    }
  }

  else
  {
    sub_10008B670(v1);
    v2 = 11;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10008893C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v5 = (*(*v1 + 176) + **(*v1 + 176));
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100088A50;

  return v5();
}

uint64_t sub_100088A50(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100088B68, v2, 0);
}

uint64_t sub_100088B68()
{
  v1 = v0[5];
  if (!(v1 >> 62))
  {
    v2 = v0[2];
    sub_10008B670(v1);
    v8 = (*(*v2 + 216) + **(*v2 + 216));
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v4 = sub_100088E2C;
LABEL_10:
    v3[1] = v4;

    return v8(0);
  }

  if (v1 >> 62 == 1)
  {
    sub_10008B670(v1);
LABEL_9:
    v8 = (*(*v0[2] + 216) + **(*v0[2] + 216));
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v4 = sub_100088F24;
    goto LABEL_10;
  }

  if (v1 != 0x8000000000000000)
  {
    goto LABEL_9;
  }

  v5 = v0[2];
  v6 = (*v5 + 192) & 0xFFFFFFFFFFFFLL | 0xBE86000000000000;
  v0[6] = *(*v5 + 192);
  v0[7] = v6;

  return _swift_task_switch(sub_100088DC0, v5, 0);
}

uint64_t sub_100088DC0()
{
  (*(v0 + 48))(1);
  v1 = *(v0 + 8);

  return v1(4);
}

uint64_t sub_100088E2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(0x8000000000000000);
}

uint64_t sub_100088F24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(0x8000000000000000);
}

uint64_t sub_10008901C()
{
  v1[18] = v0;
  v2 = type metadata accessor for Logger();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000890DC, v0, 0);
}

uint64_t sub_1000890DC()
{
  if ((*(*v0[18] + 128))())
  {

    v1 = v0[1];

    return v1(0x8000000000000008);
  }

  else
  {
    v3 = v0[18];
    v4 = *(*v3 + 136);
    v5 = (*v3 + 136) & 0xFFFFFFFFFFFFLL | 0x3DFD000000000000;
    v0[22] = v4;
    v0[23] = v5;
    v4(1);
    v6 = OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_deps;
    v0[24] = OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_deps;
    v7 = (v3 + v6);
    v8 = *(v3 + v6 + 24);
    v9 = *(v3 + v6 + 32);
    sub_100026F6C((v3 + v6), v8);
    v0[25] = (*(v9 + 48))(v8, v9);
    v10 = v7[3];
    v11 = v7[4];
    sub_100026F6C(v7, v10);
    v13 = (*(v11 + 96) + **(v11 + 96));
    v12 = swift_task_alloc();
    v0[26] = v12;
    *v12 = v0;
    v12[1] = sub_1000892F8;

    return v13(v10, v11);
  }
}

uint64_t sub_1000892F8(uint64_t a1)
{
  v2 = *(*v1 + 144);
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_100089410, v2, 0);
}

uint64_t sub_100089410()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = (v0[18] + v0[24]);
  v4 = v3[3];
  v5 = v3[4];
  sub_100026F6C(v3, v4);
  [(*(v5 + 32))(v4 v5)];
  v7 = v6;
  swift_unknownObjectRelease();
  v0[2] = v0;
  v0[3] = sub_100089590;
  v8 = swift_continuation_init();
  v0[17] = sub_100024248(&unk_100154108, &unk_100106F60);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10008992C;
  v0[13] = &unk_100135D48;
  v0[14] = v8;
  [v2 configureWithFetcher:v1 networkTimeout:v0 + 10 completionHandler:v7];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100089590()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 144);
  if (v2)
  {
    v4 = sub_100089740;
  }

  else
  {
    v4 = sub_1000896B0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000896B0()
{
  v1 = *(v0 + 176);

  swift_unknownObjectRelease();
  v1(0);

  v2 = *(v0 + 8);

  return v2(0x8000000000000000);
}

uint64_t sub_100089740(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[22];
  swift_willThrow();

  swift_unknownObjectRelease();
  v3(0);
  Logger.init()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "load config threw error: %@", v6, 0xCu);
    sub_10002533C(v7, &qword_100153450, &unk_100104140);
  }

  v9 = v1[28];
  v11 = v1[20];
  v10 = v1[21];
  v12 = v1[19];

  (*(v11 + 8))(v10, v12);
  type metadata accessor for ReachabilityTracker(0);
  v13 = _convertErrorToNSError(_:)();
  sub_1000212AC(v13);
  v15 = v14;

  if (v15)
  {
    v16 = v9;
  }

  else
  {
    v16 = v9 | 0x4000000000000000;
  }

  v17 = v1[1];

  return v17(v16);
}

uint64_t sub_10008992C(uint64_t a1, void *a2)
{
  v3 = sub_100026F6C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100024248(&qword_100152630, &qword_100103210);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100089A00(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_100089B20(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_100089C54@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TaskPriority();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100089CE8(__int128 *a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = 3;
  *(v2 + 120) = &_swiftEmptySetSingleton;
  v3 = OBJC_IVAR____TtC15swtransparencyd15LoadConfigState_priority;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  sub_100037608(a1, v2 + OBJC_IVAR____TtC15swtransparencyd15LoadConfigState_deps);
  return v2;
}

uint64_t sub_100089D9C(__int128 *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 3;
  *(v1 + 120) = &_swiftEmptySetSingleton;
  v3 = OBJC_IVAR____TtC15swtransparencyd15LoadConfigState_priority;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  sub_100037608(a1, v1 + OBJC_IVAR____TtC15swtransparencyd15LoadConfigState_deps);
  return v1;
}

uint64_t sub_100089E58()
{
  *(v1 + 16) = v0;
  sub_100024248(&unk_100152620, &unk_1001031E0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100089EF4, v0, 0);
}

uint64_t sub_100089EF4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = os_transaction_create();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_10008B818(&qword_100154118, type metadata accessor for LoadConfigState, &unk_100106FEC);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  v6[5] = v3;
  swift_retain_n();
  v7 = sub_10008A6AC(0, 0, v2, &unk_100106F90, v6);

  v8 = v0[1];

  return v8(v7 | 0x4000000000000000);
}

uint64_t sub_10008A04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a1;
  *(v4 + 152) = a4;
  return _swift_task_switch(sub_10008A06C, a4, 0);
}

uint64_t sub_10008A06C()
{
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC15swtransparencyd15LoadConfigState_deps;
  v0[20] = OBJC_IVAR____TtC15swtransparencyd15LoadConfigState_deps;
  v3 = (v1 + v2);
  v4 = *(v1 + v2 + 24);
  v5 = *(v1 + v2 + 32);
  sub_100026F6C((v1 + v2), v4);
  v0[21] = (*(v5 + 48))(v4, v5);
  v6 = v3[3];
  v7 = v3[4];
  sub_100026F6C(v3, v6);
  v10 = (*(v7 + 96) + **(v7 + 96));
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_10008A1E0;

  return v10(v6, v7);
}

uint64_t sub_10008A1E0(uint64_t a1)
{
  v2 = *(*v1 + 152);
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_10008A2F8, v2, 0);
}

uint64_t sub_10008A2F8()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = (v0[19] + v0[20]);
  v4 = v3[3];
  v5 = v3[4];
  sub_100026F6C(v3, v4);
  [(*(v5 + 32))(v4 v5)];
  v7 = v6;
  swift_unknownObjectRelease();
  v0[2] = v0;
  v0[3] = sub_10008A478;
  v8 = swift_continuation_init();
  v0[17] = sub_100024248(&unk_100154108, &unk_100106F60);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10008992C;
  v0[13] = &unk_100135E98;
  v0[14] = v8;
  [v2 configureWithFetcher:v1 networkTimeout:v0 + 10 completionHandler:v7];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10008A478()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_10008A614;
  }

  else
  {
    v4 = sub_10008A598;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10008A598()
{
  v1 = *(v0 + 144);

  swift_unknownObjectRelease();
  *v1 = 9;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10008A614(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 144);

  swift_unknownObjectRelease();
  *v2 = 9;
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10008A6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000398A4(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10002533C(v10, &unk_100152620, &unk_1001031E0);
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

      sub_10002533C(a3, &unk_100152620, &unk_1001031E0);

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

  sub_10002533C(a3, &unk_100152620, &unk_1001031E0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10008A954(void *a1, void *a2)
{

  sub_10002533C(v2 + *a1, &unk_100152620, &unk_1001031E0);
  sub_100024E14((v2 + *a2));
  swift_defaultActor_destroy();
  return v2;
}

uint64_t sub_10008A9D0(void *a1, void *a2)
{

  sub_10002533C(v2 + *a1, &unk_100152620, &unk_1001031E0);
  sub_100024E14((v2 + *a2));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v2);
}

uint64_t sub_10008AA48(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008AB68;

  return v6(a1);
}

uint64_t sub_10008AB68(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10008AC64(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008AB68;

  return v6(a1);
}

uint64_t sub_10008AD84(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_10008BBC8();
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_10008BC1C();
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10008B114(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10008AEBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100024248(&unk_100154370, &qword_100107190);
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_10008BBC8();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      *(*(v5 + 48) + v13) = v17;
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}