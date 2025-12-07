uint64_t sub_100478FCC()
{
  v3 = *v0;
  *(*v0 + 1488) = *v0;
  v1 = *(v3 + 1936);

  return _swift_task_switch(sub_1004790EC, v1);
}

void sub_1004790EC()
{
  v165 = v0;
  v1 = *(v0 + 2024);
  v149 = *(v0 + 1434);
  *(v0 + 1488) = v0;
  _objc_release(*(v0 + 1456));
  *(v0 + 1704) = sub_10043CEA4();
  *(swift_task_alloc() + 16) = v149 & 1;
  sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  sub_10027D6A0();
  Sequence.forEach(_:)();
  if (v1)
  {

    return;
  }

  sub_100264880((v148 + 1704));
  _objc_release(*(v148 + 2016));
  v2 = sub_10046F118();
  v147 = v2;
  *(v148 + 1435) = v2;
  if (v2 != 2)
  {
    v3 = *(v148 + 1872);
    v136 = *(v148 + 1816);
    __src = *(v148 + 1768);
    v135 = *(v148 + 1824);
    *(v148 + 2088) = v2 & 1;
    v4 = sub_10046F54C();
    v137 = *(v135 + 16);
    v137(v3, v4, v136);
    sub_1003422F0(__src, (v148 + 880));
    v139 = swift_allocObject();
    memcpy((v139 + 16), __src, 0x30uLL);
    oslog = Logger.logObject.getter();
    v146 = static os_log_type_t.info.getter();
    v141 = swift_allocObject();
    *(v141 + 16) = 0;
    v142 = swift_allocObject();
    *(v142 + 16) = 8;
    v140 = swift_allocObject();
    *(v140 + 16) = sub_10047D9B0;
    *(v140 + 24) = v139;
    v143 = swift_allocObject();
    *(v143 + 16) = sub_10026E818;
    *(v143 + 24) = v140;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    _allocateUninitializedArray<A>(_:)();
    v144 = v5;

    *v144 = sub_10026434C;
    v144[1] = v141;

    v144[2] = sub_10026434C;
    v144[3] = v142;

    v144[4] = sub_10026EBF8;
    v144[5] = v143;
    sub_1002612B0();

    if (os_log_type_enabled(oslog, v146))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v131 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v133 = sub_1002641E8(0, v131, v131);
      v134 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      v160 = buf;
      v161 = v133;
      v162 = v134;
      sub_10026423C(0, &v160);
      sub_10026423C(1, &v160);
      v163 = sub_10026434C;
      v164 = v141;
      sub_100264250(&v163, &v160, &v161, &v162);
      v163 = sub_10026434C;
      v164 = v142;
      sub_100264250(&v163, &v160, &v161, &v162);
      v163 = sub_10026EBF8;
      v164 = v143;
      sub_100264250(&v163, &v160, &v161, &v162);
      _os_log_impl(&_mh_execute_header, oslog, v146, "#SiriMail UpdateMessageIntent junking %ld messages", buf, 0xCu);
      sub_10026429C(v133, 0);
      sub_10026429C(v134, 0);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v128 = *(v148 + 1984);
    v121 = *(v148 + 1872);
    v122 = *(v148 + 1816);
    v125 = *(v148 + 1768);
    v120 = *(v148 + 1824);
    _objc_release(oslog);
    v123 = *(v120 + 8);
    v123(v121, v122);
    sub_10047E290();

    v124 = sub_10046F6B4();
    v126 = sub_100353058();
    _objc_release(v124);
    memcpy((v148 + 928), v125, 0x30uLL);
    v127 = sub_10028E57C();
    memcpy((v148 + 976), v125, 0x30uLL);
    v6 = sub_10028E5B4();
    v129 = sub_10027D364(v128, v126, v127, v6);
    *(v148 + 2032) = v129;
    *(v148 + 1616) = v129;
    _objc_retain(v129);
    v130 = [v129 flagState];
    _objc_release(v129);
    if (v130 != (v147 & 1))
    {
      v7 = *(v148 + 1864);
      v105 = *(v148 + 1816);
      v106 = *(v148 + 1768);
      v8 = sub_10046F54C();
      v137(v7, v8, v105);
      v107 = swift_allocObject();
      *(v107 + 16) = v147 & 1;
      sub_1003422F0(v106, (v148 + 1024));
      v109 = swift_allocObject();
      memcpy((v109 + 16), v106, 0x30uLL);
      log = Logger.logObject.getter();
      v119 = static os_log_type_t.info.getter();
      v111 = swift_allocObject();
      *(v111 + 16) = 32;
      v112 = swift_allocObject();
      *(v112 + 16) = 8;
      v108 = swift_allocObject();
      *(v108 + 16) = sub_10047E2F4;
      *(v108 + 24) = v107;
      v113 = swift_allocObject();
      *(v113 + 16) = sub_10026EE84;
      *(v113 + 24) = v108;
      v114 = swift_allocObject();
      *(v114 + 16) = 0;
      v115 = swift_allocObject();
      *(v115 + 16) = 8;
      v110 = swift_allocObject();
      *(v110 + 16) = sub_10047D9B0;
      *(v110 + 24) = v109;
      v116 = swift_allocObject();
      *(v116 + 16) = sub_10026E818;
      *(v116 + 24) = v110;
      _allocateUninitializedArray<A>(_:)();
      v117 = v9;

      *v117 = sub_10026434C;
      v117[1] = v111;

      v117[2] = sub_10026434C;
      v117[3] = v112;

      v117[4] = sub_10026EF2C;
      v117[5] = v113;

      v117[6] = sub_10026434C;
      v117[7] = v114;

      v117[8] = sub_10026434C;
      v117[9] = v115;

      v117[10] = sub_10026EBF8;
      v117[11] = v116;
      sub_1002612B0();

      if (os_log_type_enabled(log, v119))
      {
        v102 = static UnsafeMutablePointer.allocate(capacity:)();
        v101 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v103 = sub_1002641E8(0, v101, v101);
        v104 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v155 = v102;
        v156 = v103;
        v157 = v104;
        sub_10026423C(2, &v155);
        sub_10026423C(2, &v155);
        v158 = sub_10026434C;
        v159 = v111;
        sub_100264250(&v158, &v155, &v156, &v157);
        v158 = sub_10026434C;
        v159 = v112;
        sub_100264250(&v158, &v155, &v156, &v157);
        v158 = sub_10026EF2C;
        v159 = v113;
        sub_100264250(&v158, &v155, &v156, &v157);
        v158 = sub_10026434C;
        v159 = v114;
        sub_100264250(&v158, &v155, &v156, &v157);
        v158 = sub_10026434C;
        v159 = v115;
        sub_100264250(&v158, &v155, &v156, &v157);
        v158 = sub_10026EBF8;
        v159 = v116;
        sub_100264250(&v158, &v155, &v156, &v157);
        _os_log_impl(&_mh_execute_header, log, v119, "#SiriMail UpdateMessageIntent %s %ld messages", v102, 0x16u);
        sub_10026429C(v103, 0);
        sub_10026429C(v104, 1);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      *(v148 + 2040) = 0;
      v98 = *(v148 + 1864);
      v99 = *(v148 + 1816);
      _objc_release(log);
      v123(v98, v99);
      *(v148 + 80) = *(v148 + 1488);
      *(v148 + 120) = v148 + 1440;
      *(v148 + 88) = sub_10047B9C0;
      v100 = swift_continuation_init();
      *(v148 + 552) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
      *(v148 + 528) = v100;
      *(v148 + 496) = _NSConcreteStackBlock;
      *(v148 + 504) = 1107296256;
      *(v148 + 508) = 0;
      *(v148 + 512) = sub_10027D41C;
      *(v148 + 520) = &unk_100662218;
      [v129 performInteractionWithCompletion:?];
      v10 = v148 + 80;

uint64_t sub_10047B9C0()
{
  v3 = *v0;
  *(*v0 + 1488) = *v0;
  v1 = *(v3 + 1936);

  return _swift_task_switch(sub_10047BAE0, v1);
}

void sub_10047BAE0()
{
  v83 = v0;
  v1 = *(v0 + 2040);
  v77 = *(v0 + 1435);
  *(v0 + 1488) = v0;
  _objc_release(*(v0 + 1440));
  *(v0 + 1656) = sub_10043CEA4();
  *(swift_task_alloc() + 16) = v77 & 1;
  sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  sub_10027D6A0();
  Sequence.forEach(_:)();
  if (v1)
  {

    return;
  }

  sub_100264880((v76 + 1656));
  _objc_release(*(v76 + 2032));
  sub_10043CE50();
  if (!*(v76 + 360))
  {
    sub_10027D594((v76 + 352));
LABEL_19:
    *(v76 + 1512) = sub_10043CEA4();
    sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
    sub_10027D124();
    static IntentResult.result<A>(value:)();
    sub_100264880((v76 + 1512));

    v9 = *(*(v76 + 1488) + 8);

    v9();
    return;
  }

  v2 = *(v76 + 1848);
  v65 = *(v76 + 1816);
  __src = *(v76 + 1768);
  v64 = *(v76 + 1824);
  memcpy((v76 + 272), (v76 + 352), 0x50uLL);
  v3 = sub_10046F54C();
  v66 = *(v64 + 16);
  v66(v2, v3, v65);
  sub_1003422F0(__src, (v76 + 736));
  v68 = swift_allocObject();
  memcpy((v68 + 16), __src, 0x30uLL);
  oslog = Logger.logObject.getter();
  v75 = static os_log_type_t.info.getter();
  v70 = swift_allocObject();
  *(v70 + 16) = 0;
  v71 = swift_allocObject();
  *(v71 + 16) = 8;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_10047D9B0;
  *(v69 + 24) = v68;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_10026E818;
  *(v72 + 24) = v69;
  sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  _allocateUninitializedArray<A>(_:)();
  v73 = v4;

  *v73 = sub_10026434C;
  v73[1] = v70;

  v73[2] = sub_10026434C;
  v73[3] = v71;

  v73[4] = sub_10026EBF8;
  v73[5] = v72;
  sub_1002612B0();

  if (os_log_type_enabled(oslog, v75))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v60 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v62 = sub_1002641E8(0, v60, v60);
    v63 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v78 = buf;
    v79 = v62;
    v80 = v63;
    sub_10026423C(0, &v78);
    sub_10026423C(1, &v78);
    v81 = sub_10026434C;
    v82 = v70;
    sub_100264250(&v81, &v78, &v79, &v80);
    v81 = sub_10026434C;
    v82 = v71;
    sub_100264250(&v81, &v78, &v79, &v80);
    v81 = sub_10026EBF8;
    v82 = v72;
    sub_100264250(&v81, &v78, &v79, &v80);
    _os_log_impl(&_mh_execute_header, oslog, v75, "#SiriMail UpdateMessageIntent moving %ld messages to mailbox", buf, 0xCu);
    sub_10026429C(v62, 0);
    sub_10026429C(v63, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v53 = *(v76 + 1984);
  v46 = *(v76 + 1848);
  v47 = *(v76 + 1816);
  v59 = *(v76 + 1784);
  v58 = *(v76 + 1776);
  v50 = *(v76 + 1768);
  v45 = *(v76 + 1824);
  v57 = *(v76 + 1792);
  _objc_release(oslog);
  v48 = *(v45 + 8);
  v48(v46, v47);
  sub_1002BCF88();

  v49 = sub_10046F6B4();
  v51 = sub_100353058();
  _objc_release(v49);
  memcpy((v76 + 784), v50, 0x30uLL);
  v52 = sub_10028E57C();
  memcpy((v76 + 832), v50, 0x30uLL);
  v5 = sub_10028E5B4();
  v54 = sub_10027D364(v53, v51, v52, v5);
  *(v76 + 2048) = v54;
  *(v76 + 1520) = v54;
  v55 = *(v76 + 272);
  v56 = *(v76 + 280);
  *(v76 + 2056) = v56;

  *(v76 + 1408) = v55;
  *(v76 + 1416) = v56;
  URL.init(string:)();
  if ((*(v57 + 48))(v58, 1, v59) == 1)
  {
    v7 = *(v76 + 1832);
    v18 = *(v76 + 1816);
    sub_100286140(*(v76 + 1776));
    v8 = Logger.appIntentLogger.unsafeMutableAddressor();
    v66(v7, v8, v18);
    v20 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v21 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v20, v19))
    {
      v14 = static UnsafeMutablePointer.allocate(capacity:)();
      v13 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v15 = sub_1002641E8(0, v13, v13);
      v16 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v76 + 1528) = v14;
      *(v76 + 1536) = v15;
      *(v76 + 1544) = v16;
      sub_10026423C(0, (v76 + 1528));
      sub_10026423C(0, (v76 + 1528));
      *(v76 + 1552) = v21;
      v17 = swift_task_alloc();
      v17[2] = v76 + 1528;
      v17[3] = v76 + 1536;
      v17[4] = v76 + 1544;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v20, v19, "#SiriMail UpdateMessageIntent failed to build URL from raw ID String, doing nothing", v14, 2u);
      sub_10026429C(v15, 0);
      sub_10026429C(v16, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v10 = *(v76 + 1832);
    v11 = *(v76 + 1816);
    _objc_release(v20);
    v48(v10, v11);
    v12 = *(v76 + 2048);

    _objc_release(v12);
    sub_10027D728((v76 + 272));
    goto LABEL_19;
  }

  v40 = *(v76 + 1808);
  v41 = *(v76 + 1800);
  v39 = *(v76 + 1784);
  v38 = *(v76 + 1792);
  (*(v38 + 32))();
  sub_100365480();
  (*(v38 + 16))(v41, v40, v39);
  v42 = sub_10047D9B8(v41);
  *(v76 + 2064) = v42;
  *(v76 + 1560) = v42;
  v43 = sub_10046F6B4();
  v44 = [v43 daemonInterface];
  _objc_release(v43);
  if (v44)
  {
    v33 = *(v76 + 1840);
    v34 = *(v76 + 1816);
    v30 = [v44 mailboxRepository];
    _objc_release(v44);
    v31 = [v30 mailboxForObjectID:v42];
    *(v76 + 2072) = v31;
    _objc_release(v30);
    *(v76 + 1568) = v31;
    v32 = [v31 result];
    [v54 setTargetMailbox:?];
    _objc_release(v32);
    _objc_retain(v54);
    sub_10046F6B4();
    [v54 setDelegate:?];
    swift_unknownObjectRelease();
    _objc_release(v54);
    v6 = Logger.appIntentLogger.unsafeMutableAddressor();
    v66(v33, v6, v34);
    log = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    v37 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v35))
    {
      v26 = static UnsafeMutablePointer.allocate(capacity:)();
      v25 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v27 = sub_1002641E8(0, v25, v25);
      v28 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v76 + 1584) = v26;
      *(v76 + 1592) = v27;
      *(v76 + 1600) = v28;
      sub_10026423C(0, (v76 + 1584));
      sub_10026423C(0, (v76 + 1584));
      *(v76 + 1608) = v37;
      v29 = swift_task_alloc();
      v29[2] = v76 + 1584;
      v29[3] = v76 + 1592;
      v29[4] = v76 + 1600;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, log, v35, "#SiriMail UpdateMessageIntent moving message to mailbox", v26, 2u);
      sub_10026429C(v27, 0);
      sub_10026429C(v28, 0);
      UnsafeMutablePointer.deallocate()();
    }

    *(v76 + 2080) = 0;
    v22 = *(v76 + 1840);
    v23 = *(v76 + 1816);
    _objc_release(log);
    v48(v22, v23);
    *(v76 + 16) = *(v76 + 1488);
    *(v76 + 56) = v76 + 1424;
    *(v76 + 24) = sub_10047CF88;
    v24 = swift_continuation_init();
    *(v76 + 488) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
    *(v76 + 464) = v24;
    *(v76 + 432) = _NSConcreteStackBlock;
    *(v76 + 440) = 1107296256;
    *(v76 + 444) = 0;
    *(v76 + 448) = sub_10027D41C;
    *(v76 + 456) = &unk_100661F98;
    [v54 performInteractionWithCompletion:?];

    _swift_continuation_await(v76 + 16);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_10047CF88()
{
  v3 = *v0;
  *(*v0 + 1488) = *v0;
  v1 = *(v3 + 1936);

  return _swift_task_switch(sub_10047D0A8, v1);
}

uint64_t sub_10047D0A8()
{
  v1 = *(v0 + 2080);
  *(v0 + 1488) = v0;
  _objc_release(*(v0 + 1424));
  *(v0 + 1576) = sub_10043CEA4();
  *(swift_task_alloc() + 16) = v0 + 272;
  sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  sub_10027D6A0();
  Sequence.forEach(_:)();
  if (v1)
  {
  }

  v4 = v10[259];
  v5 = v10[258];
  v7 = v10[226];
  v8 = v10[223];
  v6 = v10[224];

  sub_100264880(v10 + 197);
  _objc_release(v4);
  _objc_release(v5);
  (*(v6 + 8))(v7, v8);
  v9 = v10[256];

  _objc_release(v9);
  sub_10027D728(v10 + 34);
  v10[189] = sub_10043CEA4();
  sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  sub_10027D124();
  static IntentResult.result<A>(value:)();
  sub_100264880(v10 + 189);

  v2 = *(v10[186] + 8);

  return v2();
}

uint64_t sub_10047D47C()
{
  v1 = *(v0 + 1960);
  *(v0 + 1488) = v0;
  _objc_release(v1);

  v2 = *(*(v0 + 1488) + 8);

  return v2();
}

unint64_t sub_10047D62C()
{
  v2 = qword_1006DCC48;
  if (!qword_1006DCC48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCC48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10047D6A8()
{
  sub_10043CEA4();
  v1 = Array.count.getter();

  return v1;
}

uint64_t sub_10047D6F8(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("read", 4uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unread", 6uLL, 1)._countAndFlagsBits;
  }
}

uint64_t sub_10047D7E0(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("flagging", 8uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unflagging", 0xAuLL, 1)._countAndFlagsBits;
  }
}

uint64_t sub_10047D8C8(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("junking", 7uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unjunking", 9uLL, 1)._countAndFlagsBits;
  }
}

uint64_t sub_10047D9F8@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_10043CEA4();
  *a1 = result;
  return result;
}

uint64_t sub_10047DA44(uint64_t *a1)
{
  v3 = *a1;
  memcpy(__dst, v1, sizeof(__dst));
  return sub_10043D21C(v3);
}

void (*sub_10047DA90(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x58uLL, 2204);
  *a1 = v3;
  memcpy(v3, __src, 0x30uLL);
  v3[10] = sub_10046F61C(v3 + 6);
  return sub_10047DB28;
}

void sub_10047DB28(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 80))();
  free(v1);
}

uint64_t sub_10047DBAC()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0488;
  sub_10002094C(v7, qword_1006F0488);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_10047DCEC();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_10047DCEC()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateMailIntent", 0x10uLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_10047DDC4()
{
  if (qword_1006D6150 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0488);
}

uint64_t sub_10047DE30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10047DDC4();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10047DEAC(uint64_t a1)
{
  *(v2 + 64) = v2;
  memcpy((v2 + 16), v1, 0x30uLL);
  v3 = swift_task_alloc();
  *(v5 + 72) = v3;
  *v3 = *(v5 + 64);
  v3[1] = sub_10047DF74;

  return sub_10046F7EC(a1);
}

uint64_t sub_10047DF74()
{
  v2 = *v1;
  *(v2 + 64) = *v1;
  v5 = v2 + 64;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

id sub_10047E174@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  URL._bridgeToObjectiveC()(a2);
  v6 = v3;
  v8 = [v2 initWithURL:?];
  _objc_release(v6);
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(a1);
  return v8;
}

unint64_t sub_10047E290()
{
  v2 = qword_1006DCC50;
  if (!qword_1006DCC50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DCC50);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10047E378()
{
  v2 = qword_1006DCC58;
  if (!qword_1006DCC58)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DCC58);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10047E448()
{
  v2 = qword_1006DCC60;
  if (!qword_1006DCC60)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DCC60);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10047E524(uint64_t a1)
{
  result = sub_100337D04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10047E580()
{
  v2 = qword_1006DCC70;
  if (!qword_1006DCC70)
  {
    sub_10025CAA4(&unk_1006D6FF0, &unk_1004FEA30);
    sub_10038F8F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCC70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10047E630()
{
  v2 = qword_1006DCC80;
  if (!qword_1006DCC80)
  {
    sub_10025CAA4(&unk_1006D6FF0, &unk_1004FEA30);
    sub_10038F98C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCC80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10047E6E0()
{
  v2 = qword_1006DCC90;
  if (!qword_1006DCC90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCC90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10047E774()
{
  v2 = qword_1006DCC98;
  if (!qword_1006DCC98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCC98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10047E808()
{
  v2 = qword_1006DCCA0;
  if (!qword_1006DCCA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCCA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10047E92C(uint64_t a1, uint64_t a2)
{
  v100 = a1;
  v101 = a2;
  v77 = sub_10047F8F0;
  v78 = sub_10047F964;
  v79 = sub_10026EE84;
  v80 = sub_10035728C;
  v81 = sub_10026EE84;
  v82 = sub_10026434C;
  v83 = sub_10026434C;
  v84 = sub_10026EF2C;
  v85 = sub_10026434C;
  v86 = sub_10026434C;
  v87 = sub_10026EF2C;
  v88 = "Fatal error";
  v89 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v90 = "MobileMail/ViewIntegration.swift";
  v121 = 0;
  v119 = 0;
  v120 = 0;
  v118 = 0;
  v91 = 0;
  v97 = 0;
  v92 = type metadata accessor for Logger();
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v92);
  v96 = &v34 - v95;
  v98 = (*(*(sub_10025C9B0(&qword_1006DCCE8, qword_10050D1F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v97);
  v99 = &v34 - v98;
  v102 = type metadata accessor for EntityIdentifier();
  v104 = *(v102 - 8);
  v103 = v102 - 8;
  v105 = v104;
  v107 = *(v104 + 64);
  v106 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v111);
  v108 = &v34 - v106;
  v109 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v110 = &v34 - v109;
  v121 = &v34 - v109;
  v119 = v4;
  v120 = v5;
  v118 = v3;
  _objc_retain(v3);
  v112 = [v111 view];
  _objc_release(v111);
  if (v112)
  {
    v76 = v112;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v75 = v76;
  UIView.appEntityIdentifier.getter();
  if ((*(v104 + 48))(v99, 1, v102) == 1)
  {
    sub_10047F7E8(v99);
    _objc_release(v75);
    v36 = 0;
  }

  else
  {
    v50 = v105;
    v53 = *(v104 + 32);
    v52 = v104 + 32;
    v53(v110, v99, v102);
    _objc_release(v75);
    Logger.init()();
    (*(v104 + 16))(v108, v110, v102);
    v51 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v61 = 7;
    v54 = swift_allocObject();
    v53((v54 + v51), v108, v102);

    v60 = 32;
    v6 = swift_allocObject();
    v7 = v54;
    v55 = v6;
    *(v6 + 16) = v77;
    *(v6 + 24) = v7;

    v8 = swift_allocObject();
    v9 = v101;
    v62 = v8;
    *(v8 + 16) = v100;
    *(v8 + 24) = v9;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.info.getter();
    v58 = 17;
    v64 = swift_allocObject();
    v57 = 32;
    *(v64 + 16) = 32;
    v65 = swift_allocObject();
    v59 = 8;
    *(v65 + 16) = 8;
    v10 = swift_allocObject();
    v11 = v55;
    v56 = v10;
    *(v10 + 16) = v78;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v56;
    v66 = v12;
    *(v12 + 16) = v79;
    *(v12 + 24) = v13;
    v67 = swift_allocObject();
    *(v67 + 16) = v57;
    v68 = swift_allocObject();
    *(v68 + 16) = v59;
    v14 = swift_allocObject();
    v15 = v62;
    v63 = v14;
    *(v14 + 16) = v80;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v63;
    v70 = v16;
    *(v16 + 16) = v81;
    *(v16 + 24) = v17;
    v72 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v69 = _allocateUninitializedArray<A>(_:)();
    v71 = v18;

    v19 = v64;
    v20 = v71;
    *v71 = v82;
    v20[1] = v19;

    v21 = v65;
    v22 = v71;
    v71[2] = v83;
    v22[3] = v21;

    v23 = v66;
    v24 = v71;
    v71[4] = v84;
    v24[5] = v23;

    v25 = v67;
    v26 = v71;
    v71[6] = v85;
    v26[7] = v25;

    v27 = v68;
    v28 = v71;
    v71[8] = v86;
    v28[9] = v27;

    v29 = v70;
    v30 = v71;
    v71[10] = v87;
    v30[11] = v29;
    sub_1002612B0();

    if (os_log_type_enabled(v73, v74))
    {
      v31 = v91;
      v42 = static UnsafeMutablePointer.allocate(capacity:)();
      v41 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v43 = sub_1002641E8(0, v41, v41);
      v44 = sub_1002641E8(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v46 = &v117;
      v117 = v42;
      v47 = &v116;
      v116 = v43;
      v48 = &v115;
      v115 = v44;
      v45 = 2;
      sub_10026423C(2, &v117);
      sub_10026423C(v45, v46);
      v113 = v82;
      v114 = v64;
      sub_100264250(&v113, v46, v47, v48);
      v49 = v31;
      if (v31)
      {

        __break(1u);
      }

      else
      {
        v113 = v83;
        v114 = v65;
        sub_100264250(&v113, &v117, &v116, &v115);
        v40 = 0;
        v113 = v84;
        v114 = v66;
        sub_100264250(&v113, &v117, &v116, &v115);
        v39 = 0;
        v113 = v85;
        v114 = v67;
        sub_100264250(&v113, &v117, &v116, &v115);
        v38 = 0;
        v113 = v86;
        v114 = v68;
        sub_100264250(&v113, &v117, &v116, &v115);
        v37 = 0;
        v113 = v87;
        v114 = v70;
        sub_100264250(&v113, &v117, &v116, &v115);
        _os_log_impl(&_mh_execute_header, v73, v74, "#ViewIntegration current view entity: %s, test: %s", v42, 0x16u);
        sub_10026429C(v43, 0);
        sub_10026429C(v44, 2);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v73);
    (*(v93 + 8))(v96, v92);
    EntityIdentifier.identifier.getter();
    v34 = v32;
    v35 = static String.== infix(_:_:)();

    (*(v104 + 8))(v110, v102);
    v36 = v35;
  }

  return v36 & 1;
}

uint64_t sub_10047F7E8(uint64_t a1)
{
  v3 = type metadata accessor for EntityIdentifier();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_10047F8F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EntityIdentifier();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_10047F890(v3, a1);
}

uint64_t sub_10047F964()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for EntityIdentifier();
  v1 = sub_10047F9C0();

  return sub_10026E834(v5, v3, v4, v1);
}

unint64_t sub_10047F9C0()
{
  v2 = qword_1006DCCF0;
  if (!qword_1006DCCF0)
  {
    type metadata accessor for EntityIdentifier();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCCF0);
    return WitnessTable;
  }

  return v2;
}

id sub_10047FAE0()
{
  sub_1003C8628();
  type metadata accessor for ResourceBundleClass();
  result = sub_1003C868C();
  qword_1006DCCF8 = result;
  return result;
}

uint64_t *sub_10047FB28()
{
  if (qword_1006D6158 != -1)
  {
    swift_once();
  }

  return &qword_1006DCCF8;
}

uint64_t sub_10047FB88()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F04A0);
  sub_1000208F4(v1, qword_1006F04A0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-1", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10047FC20()
{
  if (qword_1006D6160 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F04A0);
}

uint64_t sub_10047FC8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10047FC20();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10047FCF0()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F04B8);
  sub_1000208F4(v1, qword_1006F04B8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-10", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10047FD88()
{
  if (qword_1006D6168 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F04B8);
}

uint64_t sub_10047FDF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10047FD88();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10047FE58()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F04D0);
  sub_1000208F4(v1, qword_1006F04D0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-11", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10047FEF0()
{
  if (qword_1006D6170 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F04D0);
}

uint64_t sub_10047FF5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10047FEF0();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10047FFC0()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F04E8);
  sub_1000208F4(v1, qword_1006F04E8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-12", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480058()
{
  if (qword_1006D6178 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F04E8);
}

uint64_t sub_1004800C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480058();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480128()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0500);
  sub_1000208F4(v1, qword_1006F0500);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-13", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1004801C0()
{
  if (qword_1006D6180 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0500);
}

uint64_t sub_10048022C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004801C0();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480290()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0518);
  sub_1000208F4(v1, qword_1006F0518);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-14", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480328()
{
  if (qword_1006D6188 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0518);
}

uint64_t sub_100480394@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480328();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004803F8()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0530);
  sub_1000208F4(v1, qword_1006F0530);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-15", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480490()
{
  if (qword_1006D6190 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0530);
}

uint64_t sub_1004804FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480490();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480560()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0548);
  sub_1000208F4(v1, qword_1006F0548);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-16", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1004805F8()
{
  if (qword_1006D6198 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0548);
}

uint64_t sub_100480664@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004805F8();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004806C8()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0560);
  sub_1000208F4(v1, qword_1006F0560);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-17", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480760()
{
  if (qword_1006D61A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0560);
}

uint64_t sub_1004807CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480760();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480830()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0578);
  sub_1000208F4(v1, qword_1006F0578);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-18", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1004808C8()
{
  if (qword_1006D61A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0578);
}

uint64_t sub_100480934@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004808C8();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480998()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0590);
  sub_1000208F4(v1, qword_1006F0590);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-19", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480A30()
{
  if (qword_1006D61B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0590);
}

uint64_t sub_100480A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480A30();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480B00()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F05A8);
  sub_1000208F4(v1, qword_1006F05A8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-2", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480B98()
{
  if (qword_1006D61B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F05A8);
}

uint64_t sub_100480C04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480B98();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480C68()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F05C0);
  sub_1000208F4(v1, qword_1006F05C0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-3", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480D00()
{
  if (qword_1006D61C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F05C0);
}

uint64_t sub_100480D6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480D00();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480DD0()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F05D8);
  sub_1000208F4(v1, qword_1006F05D8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-4", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480E68()
{
  if (qword_1006D61C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F05D8);
}

uint64_t sub_100480ED4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480E68();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480F38()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F05F0);
  sub_1000208F4(v1, qword_1006F05F0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-5", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480FD0()
{
  if (qword_1006D61D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F05F0);
}

uint64_t sub_10048103C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480FD0();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004810A0()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0608);
  sub_1000208F4(v1, qword_1006F0608);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-6", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100481138()
{
  if (qword_1006D61D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0608);
}

uint64_t sub_1004811A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481138();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481208()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0620);
  sub_1000208F4(v1, qword_1006F0620);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-7", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1004812A0()
{
  if (qword_1006D61E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0620);
}

uint64_t sub_10048130C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004812A0();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481370()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0638);
  sub_1000208F4(v1, qword_1006F0638);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-8", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100481408()
{
  if (qword_1006D61E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0638);
}

uint64_t sub_100481474@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481408();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004814D8()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0650);
  sub_1000208F4(v1, qword_1006F0650);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-9", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100481570()
{
  if (qword_1006D61F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0650);
}

uint64_t sub_1004815DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481570();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481640()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0668);
  sub_1000208F4(v1, qword_1006F0668);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/2.back", 0xEuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1004816D8()
{
  if (qword_1006D61F8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0668);
}

uint64_t sub_100481744@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004816D8();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004817A8()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0680);
  sub_1000208F4(v1, qword_1006F0680);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/3.bottom", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100481840()
{
  if (qword_1006D6200 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0680);
}

uint64_t sub_1004818AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481840();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481910()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0698);
  sub_1000208F4(v1, qword_1006F0698);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/4.top", 0xDuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1004819A8()
{
  if (qword_1006D6208 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0698);
}

uint64_t sub_100481A14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004819A8();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481A78()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F06B0);
  sub_1000208F4(v1, qword_1006F06B0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/5.text", 0xEuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100481B10()
{
  if (qword_1006D6210 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F06B0);
}

uint64_t sub_100481B7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481B10();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481BE0()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F06C8);
  sub_1000208F4(v1, qword_1006F06C8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("visionOS App Icon/Back/Content", 0x1EuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100481C78()
{
  if (qword_1006D6218 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F06C8);
}

uint64_t sub_100481CE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481C78();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481D48()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F06E0);
  sub_1000208F4(v1, qword_1006F06E0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("visionOS App Icon/Middle/Content", 0x20uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100481DE0()
{
  if (qword_1006D6220 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F06E0);
}

uint64_t sub_100481E4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481DE0();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481EB0()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F06F8);
  sub_1000208F4(v1, qword_1006F06F8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MFActionViewHeaderIcon", 0x16uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100481F48()
{
  if (qword_1006D6228 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F06F8);
}

uint64_t sub_100481FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481F48();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100482018()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0710);
  sub_1000208F4(v1, qword_1006F0710);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MFMailMessageDragPreview", 0x18uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1004820B0()
{
  if (qword_1006D6230 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0710);
}

uint64_t sub_10048211C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004820B0();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100482180()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0728);
  sub_1000208F4(v1, qword_1006F0728);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PhoneWithBuckets", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100482218()
{
  if (qword_1006D6238 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0728);
}

uint64_t sub_100482284@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100482218();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004822E8()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0740);
  sub_1000208F4(v1, qword_1006F0740);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PhoneWithNoBuckets", 0x12uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100482380()
{
  if (qword_1006D6240 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0740);
}

uint64_t sub_1004823EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100482380();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100482450()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0758);
  sub_1000208F4(v1, qword_1006F0758);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("envelope", 8uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1004824E8()
{
  if (qword_1006D6248 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0758);
}

uint64_t sub_100482554@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004824E8();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004825B8()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0770);
  sub_1000208F4(v1, qword_1006F0770);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("custom.envelope.badge.minus", 0x1BuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100482650()
{
  if (qword_1006D6250 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0770);
}

uint64_t sub_1004826BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100482650();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004827B4(int a1, int a2, int a3, int a4)
{
  if (qword_1006EFDA8 == -1)
  {
    if (qword_1006EFDB0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10048DCCC();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1006EFDB0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1006EFDA0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10048DCE4();
    a3 = v10;
    a4 = v9;
    v8 = dword_1006EFD90 < v11;
    if (dword_1006EFD90 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1006EFD94 > a3)
      {
        return 1;
      }

      if (dword_1006EFD94 >= a3)
      {
        return dword_1006EFD98 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1006EFD90 < a2;
  if (dword_1006EFD90 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100482948(uint64_t result)
{
  v1 = qword_1006EFDB0;
  if (qword_1006EFDB0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1006EFDB0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1006EFD90, &dword_1006EFD94, &dword_1006EFD98);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100482CAC(void *a1, void *a2)
{
  [a2 bounds];

  sub_1000513A4(a2, v3, v4, v5, v6);
}

void sub_100482DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_100482EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *sub_100483158(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[4];
    if (!v3)
    {
      v4 = objc_opt_new();
      v5 = v2[4];
      v2[4] = v4;

      v3 = v2[4];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void sub_1004831B4(uint64_t *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = a1[4];
  if (v4)
  {
    v4 = v4[11];
  }

  v5 = v4;
  v6 = a1[4];
  if (v6)
  {
    v6 = v6[10];
  }

  v7 = v6;
  if ([v3 isEqualToString:a1[5]] && objc_msgSend(v5, "isEqual:", a1[6]) && (v8 = objc_msgSend(v7, "isEqual:", a1[7]), (v8 & 1) != 0))
  {
    v9 = sub_100053E68(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Did not start new search. Criteria are identical.", &v22, 2u);
    }
  }

  else
  {
    v10 = a1[4];
    if (v10)
    {
      v11 = *(v10 + 56) + 1;
      *(v10 + 56) = v11;
      v12 = a1[4];
    }

    else
    {
      v12 = 0;
      v11 = 1;
    }

    sub_100483428(v12, a1[5]);
    sub_100483438(a1[4], a1[6]);
    sub_100483448(a1[4], a1[7]);
    v14 = sub_100053E68(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a1[5];
      v16 = a1[6];
      v22 = 141558786;
      v23 = 1752392040;
      v24 = 2112;
      v25 = v15;
      v26 = 2114;
      v27 = v16;
      v28 = 2048;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Begin message search with %{mask.hash}@, options: %{public}@, searchID: %lu", &v22, 0x2Au);
    }

    v18 = a1[4];
    if (v18)
    {
      Property = objc_getProperty(v18, v17, 64, 1);
    }

    else
    {
      Property = 0;
    }

    objc_storeStrong((*(a1[8] + 8) + 40), Property);
    v9 = sub_1000549E0(a1[4], v11);
    v21 = a1[4];
    if (v21)
    {
      objc_setProperty_atomic(v21, v20, v9, 64);
    }
  }
}

void sub_100483428(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_100483438(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

void sub_100483448(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

void sub_100483458(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100007F50(a1, a2);
  }
}

void sub_100483464(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = *(v2 + 56);
  }

  if (*(a1 + 72) == v2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v3 = sub_10005387C([_MessageSearchAggregationContext alloc], *(a1 + 40), *(a1 + 72), *(a1 + 32));
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 120);
    }

    else
    {
      v7 = 0;
    }

    [v7 addObject:*(*(*(a1 + 64) + 8) + 40)];
    [*(a1 + 48) addCancelable:*(*(*(a1 + 64) + 8) + 40)];
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[20];
    }

    v9 = v8;
    v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 72)];
    [v9 addObject:v10];

    v12 = sub_100053E68(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 134349314;
      sub_100007E94();
      v16 = v13;
      sub_100056484(&_mh_execute_header, v12, v14, "search: %{public}lu is waiting on a loading controller, searches %{public}@ are waiting", v15);
    }
  }
}

id sub_10048360C(uint64_t a1, char a2, uint64_t a3)
{
  if (!a1 || (v6 = *(a1 + 144), v7 = dispatch_time(0, 5000000000), v8 = dispatch_semaphore_wait(v6, v7), v6, v8) && (v22 = 0, v23 = &v22, v24 = 0x2020000000, LOBYTE(v25) = -86, v9 = *(a1 + 96), block[0] = _NSConcreteStackBlock, block[1] = 3221225472, block[2] = sub_10005583C, block[3] = &unk_10064C950, block[4] = a1, block[5] = &v22, block[6] = a3, dispatch_sync(v9, block), v10 = *(v23 + 24), _Block_object_dispose(&v22, 8), (v10 & 1) != 0))
  {
    v11 = 0;
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_1000549C8;
    v26 = sub_1000549D8;
    v27 = 0;
    v12 = *(a1 + 96);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000559D0;
    v21[3] = &unk_10064C950;
    v21[5] = &v22;
    v21[6] = a3;
    v21[4] = a1;
    dispatch_sync(v12, v21);
    sub_100007868();
    v15 = 3221225472;
    v16 = sub_100055AE4;
    v17 = &unk_10064CA38;
    v18 = a1;
    v19 = &v22;
    v20 = a2;
    dispatch_sync(&_dispatch_main_q, v14);
    v11 = v23[5];
    _Block_object_dispose(&v22, 8);
  }

  return v11;
}

void sub_1004838E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[15];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[15];
  }

  v5 = v4;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100483BF8;
  v31[3] = &unk_10064CA88;
  v31[4] = *(a1 + 32);
  v6 = [v5 indexesOfObjectsPassingTest:v31];
  [v3 removeObjectsAtIndexes:v6];

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(v7 + 24);
    v9 = *(a1 + 32);
    if (!v9)
    {
      v10 = 0;
      if (v8)
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v9 = *(a1 + 32);
    if (!v9)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v8 = 0;
  }

  if (v8 != *(v9 + 56))
  {
    goto LABEL_27;
  }

  v10 = *(v9 + 80);
LABEL_9:
  v11 = v10;
  v12 = *(a1 + 32);
  if (v12)
  {
    v12 = v12[9];
  }

  v13 = v12;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = [*(a1 + 40) allFoundRanges];
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v15)
  {
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(a1 + 40);
        if (v18)
        {
          v18 = v18[2];
        }

        v19 = *(*(&v27 + 1) + 8 * v17);
        v20 = v18;
        [v11 foundRange:v19 forSearchString:v13 inDocument:v20];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v15);
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    ++*(v22 + 128);
  }

  v23 = sub_100053E68(v21);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 40);
    if (v25)
    {
      v25 = *(v25 + 16);
    }

    v26 = *(*(a1 + 32) + 56);
    v32 = 138412546;
    v33 = v25;
    v34 = 2048;
    v35 = v26;
    sub_100056484(&_mh_execute_header, v23, v24, "aggregation for item %@ finished for searchID: %lu@", &v32);
  }

  v9 = *(a1 + 32);
LABEL_27:
  sub_1000557A8(v9, *(a1 + 48));
}

BOOL sub_100483BF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = *(v3 + 56);
  }

  return v2 < v3;
}

id sub_100483C20(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return [*(v1 + 80) finishedSearching];
  }

  else
  {
    return [0 finishedSearching];
  }
}

id *sub_100483C38(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 5, a2);
  }

  return result;
}

uint64_t sub_100483C48(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

void sub_100483C54(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = *(v3 + 16);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = *(v4 + 24);
  }

  v5 = 138412546;
  v6 = v3;
  v7 = 2048;
  v8 = v4;
  sub_100056484(&_mh_execute_header, a2, a3, "_MessageSearchAggregationContext start search: itemID:%@, searchID: %lu", &v5);
}

void sub_100483CFC(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error loading content for message search id: %lu, error: %{public}@", buf, 0x16u);
}

void sub_100483D64(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to get a loading controller for search %lu, itemID:%{public}@", &v3, 0x16u);
}

void sub_100483DEC(void ***block, void **a2)
{
  *block = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100483C20;
  block[3] = &unk_10064C7E8;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100483E58()
{
  v2[0] = 134349314;
  sub_100007E94();
  v3 = v0;
  sub_100056484(&_mh_execute_header, v1, v1, "search: %{public}lu is no longer waiting on a loading controller, searches %{public}@ are still waiting", v2);
}

id sub_100483EE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(*(a2 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = a1;

  if (*a4)
  {
    v8 = *(*a4 + 152);
  }

  else
  {
    v8 = 0;
  }

  return [v8 removeLastObject];
}

void sub_100483F34(const __CFString *a1, NSObject *a2)
{
  v2 = @"«empty»";
  if (a1)
  {
    v2 = a1;
  }

  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MCVLog] %{public}@", &v3, 0xCu);
}

uint64_t sub_100483FD0(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void sub_10048405C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "setReferenceMessageListItem: Reload again since we failed to load item: %@", v5);
}

void sub_1004840A0()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Skip update, collection stale:%@", v5);
}

void sub_1004840E4()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100484120()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Message future for conversation subject failed: %@", v5);
}

void sub_100484164()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004841D4()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Skip collectionDidFinishInitialLoad, collection stale: %@", v5);
}

void sub_100484218()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_100083FAC();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100484264()
{
  sub_100007EA4();
  sub_100083FAC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004842D8()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "%@ - try to automatically reload", v5);
}

void sub_10048431C()
{
  sub_100007EA4();
  sub_100083FAC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100484390()
{
  sub_100007F58();
  sub_100007888(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "Error fetching message for itemID %@ for a change with error - %@", v4, v5);
}

void sub_100484448()
{
  sub_100007EA4();
  sub_100007EBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004844BC()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004844F8()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "No message in %@", v5);
}

void sub_10048453C(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2048;
  *(a3 + 14) = a2;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "<%@: %p> [Quick Reply] Missing quick-reply animation context", a3, 0x16u);
}

void sub_1004845B4()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004845F0()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484660()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "%@", v5);
}

void sub_1004846A4()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484714()
{
  sub_100007F58();
  *v2 = 67109378;
  *(v2 + 4) = v1 == 0;
  *(v2 + 8) = 2112;
  *(v2 + 10) = v3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to retrieve message from content request(nil:%{BOOL}d) for:%@", v4, 0x12u);
}

void sub_10048477C()
{
  sub_1000087E4();
  sub_100007EC8(v2, v3, 5.7779e-34);
  sub_100083FAC();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1004847CC()
{
  sub_100007F58();
  v2 = v1;
  sub_100007888(v1, v3, v4, 5.778e-34);
  _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "referenceMessageListItem is nil See rdar://problem/51331949\n referenceMessageList: %@, referenceMessageListQuery: %@", v5, 0x16u);
}

void sub_100484824()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Unknown Remind Me action. plist = %{public}@", v5);
}

void sub_100484868()
{
  sub_1000087E4();
  sub_100007EC8(v2, v3, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v4, v5, "Remind Me not available for selected items: %@", v6);
}

void sub_1004848B0()
{
  sub_100007F58();
  sub_100007888(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "No contentRequest for %@ in %@", v4, v5);
}

void sub_1004848F4()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "No targetMessageForBarButtonTriage in %@", v5);
}

void sub_100484938()
{
  sub_100007F58();
  v2 = v1;
  sub_100007888(v1, v3, v4, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "Send Again interaction not permitted for %@ in %@", v5, v6);
}

void sub_100484984()
{
  sub_100007F58();
  v2 = v1;
  sub_100007888(v1, v3, v4, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "No messageItemId found for %@ in %@", v5, v6);
}

void sub_1004849D0()
{
  sub_100007F58();
  v2 = v1;
  sub_100007888(v1, v3, v4, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "Clear Time Sensitive interaction not permitted for %@ in %@", v5, v6);
}

void sub_100484A1C()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100484A58()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Missing property list for Remind Me command in %@", v5);
}

void sub_100484A9C()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484B0C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Missing property list for Categorize command in %@", v5);
}

void sub_100484B50()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484BC0()
{
  sub_100007F58();
  v2 = v1;
  sub_100007888(v1, v3, v4, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "Mute interaction not permitted for %@ in %@", v5, v6);
}

void sub_100484C0C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Missing property list for set Flag color command in %@", v5);
}

void sub_100484C50()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484CC0()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484D30()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "%@ - auto-mark-as-read interaction failed", v5);
}

void sub_100484D74()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100484DB0()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Could not find any messageListItems in %@", v5);
}

void sub_100484DF4()
{
  sub_100007F58();
  *v1 = 138412546;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2114;
  *(v1 + 14) = v3;
  sub_100007EE0(&_mh_execute_header, "Unable to get message count for query: %@ error: %{public}@", v4, v5);
}

void sub_100484E48()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484EB8()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484FA0()
{
  sub_100007EA4();
  sub_100007EBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100485014(void *a1, uint64_t *a2, uint64_t a3, NSObject *a4)
{
  v5 = *a2;
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2048;
  *(a3 + 14) = v5;
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Attempting to clear the transferController when a new one is already set", a3, a4);
}

void sub_100485074()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Failed to get message count due to error: %{public}@", v5);
}

void sub_1004850F8()
{
  sub_100007ED4();
  *v1 = 136315394;
  *(v1 + 4) = "[ConversationViewController datePickerViewControllerDidDeleteDate:]";
  *(v1 + 12) = 2112;
  *(v1 + 14) = v2;
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10048515C()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100485198()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Restore state failed: %@", v5);
}

void sub_1004851DC()
{
  sub_1000087E4();
  sub_100007EC8(v2, v3, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v4, v5, "Failed to get reference item index path for app intent summarization for mailMessageIDs: %{public}@", v6);
}

void sub_100485224()
{
  sub_100007F68();
  sub_100007EBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

uint64_t sub_1004852A4(uint64_t result)
{
  if (result)
  {
    return *(result + 360);
  }

  return result;
}

uint64_t sub_1004852B8(uint64_t result)
{
  if (result)
  {
    return (*(result + 36) >> 4) & 1;
  }

  return result;
}

uint64_t sub_1004852D0(uint64_t result)
{
  if (result)
  {
    return *(result + 368);
  }

  return result;
}

void sub_1004852E4(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000078C8(a1, a2, 368);
  }
}

BOOL sub_1004852F8(_BOOL8 result)
{
  if (result)
  {
    return *(result + 368) != 0;
  }

  return result;
}

void sub_100485314(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000078C8(a1, a2, 360);
  }
}

void sub_100485380(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "\t\tindexPath: %@", &v2, 0xCu);
}

void sub_1004854E0(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "No pinned item. Using proposed content offset %02.f", &v2, 0xCu);
}

void sub_10048555C(uint64_t a1, NSObject *a2)
{
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = 1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to upgrade state from Version=%li to currentStateVersion=%li", &v2, 0x16u);
}

void sub_1004855E4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Restoration data for %{public}@ is in valid.", &v2, 0xCu);
}

void sub_10048565C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000078D0(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error while decoding %{public}@: %{public}@", v4, 0x16u);
}

void sub_1004856B4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Querying reference item failed with error: %{public}@", buf, 0xCu);
}

void sub_10048570C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "An error occurred while fetching reference item for state restoration: %{public}@", buf, 0xCu);
}

void sub_100485764(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000078D0(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error encoding '%{public}@' for state restoration: %{public}@", v4, 0x16u);
}

void sub_1004857BC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Finished initial load for: %{public}@", buf, 0xCu);
}

void sub_100485858(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Checking for drafts to recover failed with error: %@", &v2, 0xCu);
}

void sub_1004858D0(void *a1, uint64_t a2, NSObject *a3)
{
  if (*a1 == 2)
  {
    v5 = @"Completing";
  }

  else
  {
    v5 = @"Idle";
  }

  if (*a1 == 1)
  {
    v6 = @"In Progress";
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  if (a2 == 2)
  {
    v8 = @"Completing";
  }

  else
  {
    v8 = @"Idle";
  }

  if (a2 == 1)
  {
    v8 = @"In Progress";
  }

  v9 = v8;
  v10 = 138543618;
  v11 = v7;
  v12 = 2114;
  v13 = v9;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Docking transition state changed from %{public}@ to %{public}@", &v10, 0x16u);
}

void sub_1004859D0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = @"hidden";
  if (a1)
  {
    v8 = @"visible";
  }

  LODWORD(v9) = 138543362;
  HIDWORD(v9) = v8;
  sub_100007904(&_mh_execute_header, a2, a3, "Changing dock visibility to %{public}@.", a5, a6, a7, a8, v9, HIDWORD(v8));
}

void sub_100485A54(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  sub_100007904(&_mh_execute_header, a2, a3, "Laying out docked views with index offset %ld", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100485AF4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100007904(&_mh_execute_header, a2, a3, "Setting presentation delegate to self for dockable view controller: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100485D34(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = 134217984;
  v4 = a1;
  sub_100007EFC(&_mh_execute_header, a2, a3, "Unexpected docked draft compatibility version %ld!", &v3);
}

void sub_100485DA4(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_100007EFC(&_mh_execute_header, a3, a3, "Serialization failed with error: %{public}@", a2);
}

void sub_100485DF4(void *a1, uint8_t *a2, void *a3, NSObject *a4)
{
  *a2 = 138543362;
  *a3 = a1;
  sub_100007EFC(&_mh_execute_header, a4, a3, "Deserializing ID string failed with error: %{public}@", a2);
}

void sub_100485E48(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Deserializing ID string failed. Data is empty or nil.", buf, 2u);
}

void sub_100485E88(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_100007EFC(&_mh_execute_header, a3, a3, "Deserializing previously presented state failed with error: %{public}@", a2);
}

void sub_10048601C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Favorites Failed to create FavoriteItem_Account dictionary representation for %@", &v2, 0xCu);
}

void sub_1004860BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Favorites Failed to create FavoriteItem_Inbox dictionary representation for %@", &v2, 0xCu);
}

void sub_100486F18(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "invalidateVisibleItems %@", &v2, 0xCu);
}

void sub_100486F90(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Favorites Failed to send follow up settings to Proactive SPI: %{public}@", buf, 0xCu);
}

void sub_100486FE8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Favorites Could not find collection for item:%@", &v2, 0xCu);
}

void sub_100487060(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000B8CE4;
    v5[3] = &unk_10064C660;
    v6 = v3;
    v7 = a1;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_1004870FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = WeakRetained[14];
  }

  [WeakRetained synchronize];
  if ([*(a1 + 32) count])
  {
    v4 = *(a1 + 32);
  }

  else
  {
    if (v3)
    {
      v5 = v3[14];
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v6 dictionaryRepresentation];
    v4 = [v7 allKeys];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100487244;
  block[3] = &unk_10064CF10;
  block[4] = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v8 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100487244(uint64_t a1)
{
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 120);
  }

  else
  {
    v3 = 0;
  }

  [v3 lock];
  v69 = [*(a1 + 40) copy];
  v74 = +[NSMutableDictionary dictionary];
  v75 = a1;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v69;
  v4 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
  if (v4)
  {
    v5 = *v87;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v87 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v86 + 1) + 8 * i);
        if ([v7 length] == 36)
        {
          v8 = *(v75 + 32);
          if (v8)
          {
            v8 = v8[14];
          }

          v9 = v8;
          v10 = [v9 objectForKey:v7];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v74 setObject:v10 forKey:v7];
          }

          else if (!v10 && *(v75 + 48) != 3)
          {
            v11 = +[NSNull null];
            [v74 setObject:v11 forKey:v7];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
    }

    while (v4);
  }

  v12 = sub_100007718(FavoritesPersistence);
  v13 = &off_1004FB000;
  if (sub_1000209F0(v12))
  {
    v14 = [v74 count];
    v95 = 134217984;
    v96 = v14;
    sub_100007F44();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
  }

  v20 = v75;
  [*(v75 + 32) mailboxesCollection];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_1000B751C;
  v70 = v81[3] = &unk_10064F0C0;
  v82 = v70;
  v83 = 0;
  v84 = *(v75 + 32);
  v85 = &v90;
  [v74 enumerateKeysAndObjectsUsingBlock:v81];
  if (*(v75 + 48) <= 1uLL)
  {
    v21 = sub_100007718(FavoritesPersistence);
    if (sub_1000209F0(v21))
    {
      v22 = *(v75 + 48);
      v95 = 134217984;
      v96 = v22;
      sub_100007F44();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v72 = [v70 items];
    v28 = [v72 countByEnumeratingWithState:&v77 objects:v94 count:16];
    if (v28)
    {
      v30 = *v78;
      *&v29 = 138412290;
      v71 = v29;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v78 != v30)
          {
            objc_enumerationMutation(v72);
          }

          v32 = *(*(&v77 + 1) + 8 * j);
          v33 = [v32 syncKey];
          if ([v32 shouldSync])
          {
            v34 = [v74 objectForKey:v33];
            if (v34)
            {
              v35 = [v32 representingMailbox];
              v4 = v35;
              if (v35)
              {
                v13 = MFMailboxUid;
                if (+[MFMailboxUid isStandardizedMailboxUidType:](MFMailboxUid, "isStandardizedMailboxUidType:", [v35 mailboxType]))
                {
                  v13 = [v34 objectForKey:@"mailboxType"];
                  v36 = [v13 integerValue];

                  if (!v36)
                  {
                    v37 = [v34 mutableCopy];
                    v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 mailboxType]);
                    [v37 setObject:v38 forKey:@"mailboxType"];

                    v39 = sub_100007718(FavoritesPersistence);
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      v40 = [EFPrivacy partiallyRedactedStringForString:v33];
                      sub_100007FB8(v40, v41, v42, v43, v44, v45, v46, v47, v69, v70, v71);
                      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Found new Favorite Mailbox to add %@", v48, 0xCu);
                    }

                    v49 = *(v75 + 32);
                    if (v49)
                    {
                      v49 = v49[14];
                    }

                    v50 = v49;
                    v13 = [v32 syncKey];
                    [v50 setObject:v37 forKey:v13];

                    goto LABEL_44;
                  }
                }
              }
            }

            else
            {
              v51 = sub_100007718(FavoritesPersistence);
              if (sub_1000209F0(v51))
              {
                v52 = [EFPrivacy partiallyRedactedStringForString:v33];
                sub_100007FB8(v52, v53, v54, v55, v56, v57, v58, v59, v69, v70, v71);
                sub_100007F44();
                _os_log_impl(v60, v61, v62, "Found new Favorite Mailbox to add %@", v63, 0xCu);
              }

              v13 = v75;
              v4 = sub_1000B71FC(*(v75 + 32), v32);
              v64 = *(v75 + 32);
              if (v64)
              {
                v64 = v64[14];
              }

              v37 = v64;
              [v37 setObject:v4 forKey:v33];
LABEL_44:
            }
          }
        }

        v28 = [v72 countByEnumeratingWithState:&v77 objects:v94 count:16];
      }

      while (v28);
    }

    v20 = v75;
  }

  if (*(v91 + 24) == 1)
  {
    sub_1000B5BC8(*(v20 + 32), @"_mergeExternalChanges");
  }

  v65 = +[EFScheduler globalAsyncScheduler];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_100487ABC;
  v76[3] = &unk_10064C7E8;
  v76[4] = *(v20 + 32);
  [v65 performBlock:v76];

  v66 = *(v75 + 32);
  if (v66)
  {
    v67 = *(v66 + 120);
  }

  else
  {
    v67 = 0;
  }

  [v67 unlock];
  if (*(v91 + 24) == 1)
  {
    v68 = *(v75 + 32);
    if (v68)
    {
      sub_100487060(v68, 0);
    }
  }

  _Block_object_dispose(&v90, 8);
}

void sub_100487934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100487ABC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v2 = 0;
  }

  return [v2 synchronize];
}

void sub_100487AD4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v3 = sub_100007718(FavoritesPersistence);
    if (sub_1000209F0(v3))
    {
      sub_100007F44();
      _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
    }

    sub_100006E64(*(a1 + 48));
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    sub_100487060(v9, 0);
  }
}

void sub_100487BA8(uint64_t a1)
{
  v3 = sub_100007718(FavoritesPersistence);
  if (sub_1000209F0(v3))
  {
    LOWORD(v13) = 0;
    sub_100007F44();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_100006E64(*(a1 + 32));
  v9 = *(a1 + 32);
  if (v9)
  {
    sub_100487060(v9, 0);
  }

  v10 = +[NSNotificationCenter defaultCenter];
  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) userInfo];
  [v10 postNotificationName:@"FavoritesPersistenceFocusDidChangeNotification" object:v11 userInfo:v12];
}

void sub_100487C90(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not read %@: %s", buf, 0x16u);
}

void sub_100487D2C(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "syncing key = %@; value = %@", buf, 0x16u);
}

void sub_100487D94(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "cannot create item for KV entry (possibly the account does not exist): %@ = %@", &v3, 0x16u);
}

void sub_100487E60(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Favorites Failed to get outbox predicate: %{public}@", buf, 0xCu);
}

BOOL sub_100487EF0(uint64_t a1, double a2)
{
  v4 = *(a1 + 72);
  [*(a1 + 32) frame];
  Width = CGRectGetWidth(v14);
  v6 = Width;
  if (v4 == 1)
  {
    v7 = Width - *(a1 + 48) - *(a1 + 56);
  }

  else
  {
    [*(a1 + 32) safeAreaInsets];
    v9 = v6 - (v8 + *(a1 + 48));
    [*(a1 + 32) safeAreaInsets];
    v7 = v9 - (v10 + *(a1 + 56));
  }

  if (*(a1 + 40))
  {
    v11 = MUISolariumFeatureEnabled();
    v12 = 8.0;
    if (v11)
    {
      v12 = 10.0;
    }
  }

  else
  {
    v12 = 0.0;
  }

  return floor((v7 - v12 * (a2 + -1.0)) / a2 + 5.0 * -2.0) <= ceil(*(a1 + 64));
}

void sub_100487FCC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No messageListItem in %{public}@", buf, 0xCu);
}

void sub_100488024(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No primaryMessage in %{public}@", buf, 0xCu);
}

void sub_10048807C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 320), a2);
  }
}

void sub_100488094(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D3D4C;
    block[3] = &unk_10064C598;
    v6 = v3;
    dispatch_async(v4, block);
  }
}

void sub_100488240(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000078D0(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error creating the local diagnostics directory at %{public}@, error: %{public}@", v4, 0x16u);
}

void sub_100488298(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000078D0(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "<%@> Failed to dump diagnostics to %{public}@", v4, 0x16u);
}

void sub_1004882F0(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Skipping recovery of draft %@ because it is marked as active in scene session %@.", buf, 0x16u);
}

void sub_100488468(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "_createMailboxesFromUids returned no mailboxes; mailboxProvider: %@", buf, 0xCu);
}

void sub_1004884C8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#Favorites Apply snapshot %@", &v2, 0xCu);
}

void sub_100488540(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#Favorites Apply snapshot %@ for section %@", &v3, 0x16u);
}

void sub_1004885C8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "updateMailboxSelectionAnimated skipped selection since the data is out of sync with the UI - invalid lastSelectedIndexPath:%{public}@ for collectionView:%{public}@", &v3, 0x16u);
}

void sub_100488694(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@ - about to select item:%@ with nil indexPath", buf, 0x16u);
}

void sub_1004886FC(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#Favorites _sharedMailboxControllerBadgeCountDidChange %@ sourceType:%lu", buf, 0x16u);
}

void sub_100488754(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#Favorites _vipSendersDidChange %@", &v2, 0xCu);
}

void sub_100488810(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000078C8(a1, a2, 88);
  }
}

void *sub_100488838(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[13];
    if (!v3)
    {
      v4 = objc_alloc_init(MSOpenComposeDelegateRequest);
      v5 = v2[13];
      v2[13] = v4;

      v3 = v2[13];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void sub_1004888A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = WeakRetained[11];
  }

  [WeakRetained setDelegate:*(a1 + 32)];
  v3 = v4;
  if (v4)
  {
    v3 = v4[11];
  }

  [v3 setEntitledDelegate:*(a1 + 40)];
}

void sub_100488934()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Failed to decode MSOpenMailComposeViewControllerContext. %{public}@", v5);
}

void sub_100488978()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Failed to decode composition values. %{public}@", v5);
}

void sub_1004889BC()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "error checking in to receive remote delegate: %{public}@", v5);
}

void sub_100488A00()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "error sending message to remote delegate: %{public}@", v5);
}

void sub_100488A88(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Trying to dismiss compose controller that is not the active view controller. Aborting. ComposeController=%@ ActiveController=%@", &v3, 0x16u);
}

void sub_100488BD0(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not select favorite item at index: %lu", &v2, 0xCu);
}

void sub_100488C7C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "didFailToContinueUserActivityWithType: %{public}@, error: %{public}@", buf, 0x16u);
}

void sub_100488CE4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Contact Store access request finished with error: %{public}@", buf, 0xCu);
}

void sub_100488D70(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Authorization failed with error: %{public}@", &v2, 0xCu);
}

void sub_100488E9C(uint64_t a1, NSObject *a2)
{
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = 3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot load from dictionary. Dictionary version (%ld) is higher than current version (%ld). Will use default values.", &v2, 0x16u);
}

void sub_100489000(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error writing metadata at: %@ with error: %{public}@", buf, 0x16u);
}

void sub_100489070(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error serializing metadata: %{public}@", buf, 0xCu);
}

void sub_100489170(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to close quick look scene. Error: %{public}@", buf, 0xCu);
}

id sub_1004891C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 56);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v7 dequeueConfiguredReusableCellWithRegistration:v11 forIndexPath:v8 item:v9];

  return v12;
}

void sub_1004892B0()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Quick look item couldn't be copied to container. Error: %{public}@", v5);
}

void sub_100489328()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Disk space is critically low. Blocking URL routing request: %{public}@", v5);
}

void sub_10048936C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Failed to open new window: %{public}@", v5);
}

void sub_1004893B0()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Failed to activate Message Viewer: %{public}@", v5);
}

void sub_100489428(char a1, char a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1 & 1;
  v4 = 1024;
  v5 = a2 & 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "WARNING: Background scene monitoring is disabled. This should only be used for testing purposes. isTesting=%{BOOL}d forceDisable=%{BOOL}d", v3, 0xEu);
}

void sub_1004894F8()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Unknown free space state. Error:%{public}@", v5);
}

void sub_10048953C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Ignoring unsupported Asset Viewer editCompletedForHandler %@ url %@", &v3, 0x16u);
}

id sub_10048972C(id result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = MUISolariumFeatureEnabled();
    if (result)
    {
      [v2 setPreferredSupplementaryColumnWidth:402.0];

      return [v2 setMinimumSupplementaryColumnWidth:320.0];
    }
  }

  return result;
}

void sub_1004897D4(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a2;
  *(buf + 6) = 2082;
  *(buf + 14) = "[MailSplitViewController _MailKeyCommandRoutingForAction:usingCommand:]";
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Unexpected display mode %ld in %{public}s", buf, 0x16u);
}

void sub_100489830(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Attempted to show indeterminate status (rdar://83262883) with empty status: %{public}@", buf, 0xCu);
}

void sub_100489888(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "iCloud quota error loading offer: %@", &v2, 0xCu);
}

void sub_100489900(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[ICQ] Failed to fetch in app message with error: %{public}@", buf, 0xCu);
}

void sub_100489958(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No name to report for account %{public}@ with error %{public}@", buf, 0x16u);
}

void *sub_1004899C8(void *a1)
{
  if (a1)
  {
    if ([a1 isHighlighted])
    {
      [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.2];
    }

    else
    {
      +[UIColor mailMessageListHighlightColor];
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10014F844;
    v5 = v4[3] = &unk_100651768;
    v1 = v5;
    v2 = objc_retainBlock(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100489AC4(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000078D0(a1, a2, a3, 3.8521e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%p: Failed to generate an avatar with error %{public}@", v4, 0x16u);
}

void sub_100489B1C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Decoding visible message list items failed with error: %{public}@", v5);
}

void sub_100489B60()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Decoding selected item ID failed with error: %{public}@", v5);
}

void sub_100489BA4(uint64_t a1, NSObject *a2)
{
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = 3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to upgrade state from Version=%li to currentStateVersion=%li", &v2, 0x16u);
}

void sub_100489C2C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Decoding mailbox object IDs failed with error: %{public}@", v5);
}

void sub_100489C70()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Mailbox request failed with error: %{public}@", v5);
}

void sub_100489CB4()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Encoding visible items failed with error: %{public}@", v5);
}

void sub_100489CF8()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Encoding last selected item ID failed with error: %{public}@", v5);
}

void sub_100489D80()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Message list initial load failed with error: %{public}@", v5);
}

void sub_100489DEC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Remote search failed with error %{public}@", buf, 0xCu);
}

void sub_100489E44(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Local and remote search failed with error %@", &v2, 0xCu);
}

void sub_100489F00(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%p: Skip reporting failed search for outdated collection %{public}@", &v3, 0x16u);
}

void sub_100489FCC(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000078C8(a1, a2, 432);
  }
}

void sub_100489FE0(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000078C8(a1, a2, 424);
  }
}

void *sub_10048A100(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[68];
    if (!v3)
    {
      v4 = [[FocusBannerView alloc] initWithDelegate:a1];
      v5 = v2[68];
      v2[68] = v4;

      v3 = v2[68];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void sub_10048A174(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000078C8(a1, a2, 416);
  }
}

void sub_10048A188(void *a1)
{
  if (a1 && sub_10017E098(a1))
  {

    sub_10017AA50(a1);
  }
}

BOOL sub_10048A1D4(_BOOL8 result, char *a2)
{
  if (result)
  {
    return (sub_10012F538(MailSplitViewController, a2) & 1) != 0 || sub_10012F238(MailSplitViewController, a2) || "selectAll:" == a2;
  }

  return result;
}

void sub_10048A248(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to update last seen date - message list item future at indexPath: %{public}@ is nil", buf, 0xCu);
}

void sub_10048A2A0(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  sub_100007EE0(&_mh_execute_header, "Unable to update last seen date - date is nil - indexPath:%{public}@, messageListItem:%{public}@", a3, a4);
}

void sub_10048A304()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Unable to load more messages - failed to resolve any mailbox object ids", v4, v5);
}

void sub_10048A348()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Skip _updateSelectionModelDidSelectItemID since itemID is nil", v4, v5);
}

void sub_10048A38C()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> The refresh control should not be visible", v4, v5);
}

void sub_10048A3D0()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10048A44C()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Scene is nil", v4, v5);
}

void sub_10048A490(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not activate scene from menu: %{public}@", buf, 0xCu);
}

void sub_10048A4E8()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10048A524(void *a1, uint8_t *buf, os_log_t log, os_signpost_id_t a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, log, OS_SIGNPOST_EVENT, a4, "MessageListViewController Delete", "The user has selected to transfer all the messages to mailbox %@", buf, 0xCu);
}

void sub_10048A584()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Select All Button Pressed. But we don't have a selection model.", v4, v5);
}

void sub_10048A5C8()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Ignoring move action, no messages selected", v4, v5);
}

void sub_10048A60C()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Ignoring move action, favorite item is nil", v4, v5);
}

void sub_10048A650()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.7781e-34);
  *(v4 + 22) = 2080;
  *(v4 + 24) = "[MessageListViewController _expandCollapseThreadCommand:]";
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "<%@: %p> Missing property list for expand/collapse in %s", v5, 0x20u);
}

void sub_10048A6C8()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10048A738()
{
  sub_100007990();
  v2 = *v1;
  *v3 = 138412546;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2048;
  *(v3 + 14) = v2;
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Unable to apply change action - cell is nil", v5, v6);
}

void sub_10048A804()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> No indexPaths found. Returning nil for context menu", v4, v5);
}

void sub_10048A8C0()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10048A8FC(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  sub_100007EE0(&_mh_execute_header, "_handleRowSelectionOnMoveOfItemID failed to get messageListItem for %@ error: %@", a3, a4);
}

void sub_10048A958()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10048A994()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10048AA04()
{
  sub_100007F68();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%p: Attempted to provide feedback for an invalid feature %ld", v2, 0x16u);
}

void sub_10048AA88()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "No message list for %{public}@", v5);
}

void sub_10048AACC()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "No contentRequest for %{public}@", v5);
}

void sub_10048AB10()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "No displayMessage for %{public}@", v5);
}

void sub_10048AB54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create count predicate for favorite item: %@", &v2, 0xCu);
}

void sub_10048ABCC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to read data for content representation: %@ - Error: %@", &v3, 0x16u);
}

void sub_10048AC54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't decode contacts from attachment data %@", &v2, 0xCu);
}

void sub_10048ACCC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unable to generate avatar image for missing context %p avatarGenerator %p", &v3, 0x16u);
}

void sub_10048AD54(uint64_t a1, id a2, NSObject *a3)
{
  v5 = objc_retainBlock(a2);
  v6 = 134218240;
  v7 = a1;
  v8 = 2048;
  v9 = v5;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Unable to generate avatar image for missing context %p avatarGenerationBlock %p", &v6, 0x16u);
}

void sub_10048AE08(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid presentation source: %{public}@", &v2, 0xCu);
}

void sub_10048AE80()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Could not activate compose scene from menu action: %{public}@", v5);
}

void sub_10048AEC4()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Could not activate compose scene: %{public}@", v5);
}

void sub_10048AF08(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to archive composition values with error: %{public}@", &v2, 0xCu);
}

void sub_10048AF80(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to open message in new window:\n\t%{public}@\n\n\t%{public}@", buf, 0x16u);
}

void sub_10048B034()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Failed to convert draft user activity to data. %{public}@", v5);
}

void sub_10048B078()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Failed to migrate draft. %{public}@", v5);
}

void sub_10048B0BC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Missing messageItemID for message list item %{public}@", buf, 0xCu);
}

void sub_10048B114(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to find message for item ID %{public}@ error %{public}@", buf, 0x16u);
}

void sub_10048B1C0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Request %{public}@ has source message. Will setup sending account based on that message.", buf, 0xCu);
}

void sub_10048B218(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Request %{public}@ is either external or does not have a source message, will use default sending account.", buf, 0xCu);
}

void sub_10048B284(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to get content repressentation from %@", buf, 0xCu);
}

void sub_10048B2E4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to load message for itemID: %{public}@", buf, 0xCu);
}

void sub_10048B33C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to find messageID for indexPath:%{public}@. Returning collapsed.", &v2, 0xCu);
}

void sub_10048B3B4(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to get content representation for message: %{public}@ (%{public}@)", buf, 0x16u);
}

void sub_10048B424(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to get message to configure handoff (%{public}@)", buf, 0xCu);
}

void sub_10048B47C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to get persistentID for messageObjectID: %{public}@", buf, 0xCu);
}

id sub_10048B4D4(void *a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    return [a1 _addMessageInfoButton];
  }

  return result;
}

void sub_10048B53C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to retrieve free space with error: %{public}@", buf, 0xCu);
}

uint64_t sub_10048B594(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((MUISolariumFeatureEnabled() & 1) != 0 || (+[UIDevice mf_isPadIdiom]& 1) != 0)
    {
      return 1;
    }

    else
    {
      return *(v2 + 80) ^ 1;
    }
  }

  return result;
}

void sub_10048B5EC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "File URL route received request for non-existent or unreadable file. request=%{public}@", buf, 0xCu);
}

void sub_10048B644(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Blocking file:// URL pointing into Library/Mail. request=%{public}@", buf, 0xCu);
}

void sub_10048B6B0()
{
  sub_100007990();
  sub_100007888(v1, v2, v3, 5.8382e-34);
  sub_100007EE0(&_mh_execute_header, "%{public}@: error unsubscribing from mailing list: %@", v4, v5);
}

void sub_10048B6F4(char a1, uint8_t *buf, os_log_t log, void *a4)
{
  v5 = "HTTPS POST";
  if (a1)
  {
    v5 = "mailto:";
  }

  *buf = 136315138;
  *(buf + 4) = v5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Successfully unsubscribed from mailing list using %s.", buf, 0xCu);
}

void sub_10048B764()
{
  sub_100007990();
  v2 = *(v1 + 40);
  *v3 = 138543618;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2112;
  *(v3 + 14) = v2;
  sub_100007EE0(&_mh_execute_header, "%{public}@: block attempted failed: %@", v5, v6);
}

void sub_10048B7BC()
{
  sub_100007990();
  sub_100007888(v1, v2, v3, 5.8382e-34);
  sub_100007EE0(&_mh_execute_header, "%{public}@: error ignoring unsubscribe: %@", v4, v5);
}

void sub_10048B88C()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10048B8C8()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10048B978()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10048B9B4()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10048BA48(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_1000078A0(&_mh_execute_header, a2, a3, "Error getting address metadata: %{public}@", a2);
}

void sub_10048BA94(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_1000078A0(&_mh_execute_header, a2, a3, "Failed to save send later message (%{public}@)", a2);
}

void sub_10048BAE0(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_1000078A0(&_mh_execute_header, a2, a3, "Failed to move cancelled message to drafts (%{public}@)", a2);
}

void sub_10048BB2C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#PurgeableStorage Failed to compute size for %@ with error %{public}@", buf, 0x16u);
}

void sub_10048BBE4(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%p: canceling display request because it did not finish in time for request:%@", buf, 0x16u);
}

void sub_10048BC4C(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to find contact: %@, using key descriptors: %@", buf, 0x16u);
}

void sub_10048BCB4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "No viewing options available for contentRepresentation [%@]", &v2, 0xCu);
}

void sub_10048BD2C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Quicklook can not handle the attachment. %@", &v2, 0xCu);
}

void sub_10048BDA4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Attachments Error unable to copy to container: %{public}@", buf, 0xCu);
}

void sub_10048BDFC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to get display message: %{public}@", buf, 0xCu);
}

void sub_10048BE54(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Nano Attempt to recover mailboxUid for MFNanoBridgeSettingsAccountSpecificMailbox failed. Account did not return valid mailboxUid for mailboxURL: %@", &v3, 0xCu);
}

void sub_10048BED0(uint64_t a1, char a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a2 & 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Nano Attempt to recover mailboxUid for MFNanoBridgeSettingsAccountSpecificMailbox failed. (Id: %{public}@, Active: %lu)", buf, 0x16u);
}

void sub_10048BF2C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to handle OAuth redirect from request %{public}@", buf, 0xCu);
}

void sub_10048BFC4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "No mailboxes found for mailbox search suggestion predicate: %@", &v2, 0xCu);
}

void sub_10048C114(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100007888(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#SearchSuggestions shouldReloadSearchSuggestion was unable to find suggestion: %@ in model: %@", v4, 0x16u);
}

void sub_10048C16C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100007888(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#SearchSuggestions didRemoveSearchSuggestion was unable to find suggestion: %@ in model: %@", v4, 0x16u);
}

void sub_10048C1C4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "error encoding search token: %{public}@", buf, 0xCu);
}

void sub_10048C21C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "error decoding search token data for UISearchToken: %{public}@", buf, 0xCu);
}

void sub_10048C2AC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error requesting representation: %{public}@", buf, 0xCu);
}

void sub_10048C304(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not load product with URL: %@ error: %{public}@", buf, 0x16u);
}

void sub_10048C440(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid display message for message: %{public}@", &v3, 0xCu);
}

void sub_10048C4BC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Load data for unexpected item (%@)", buf, 0xCu);
}

void sub_10048C528(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100007888(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: unblock attempted failed: %@", v4, 0x16u);
}

void sub_10048C580(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100007888(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: block attempted failed: %@", v4, 0x16u);
}

void sub_10048C5D8(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Routing failed with an error indicating that it should not continue. request=%{public}@ error=%{public}@", buf, 0x16u);
}

void sub_10048C648(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Request failed. Request=%{public}@ error=%{public}@", buf, 0x16u);
}

void sub_10048C780()
{
  sub_100007F68();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#ReturnToSender return to sender activity failed. valid message with id %@, but file url is not reachable. NSURL error: %@", v2, 0x16u);
}

void sub_10048C86C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to handle VIP request %{public}@. Unexpected URL scheme found", buf, 0xCu);
}

uint64_t sub_10048C8C4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_10048C964(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to obtain messageListItem for itemID:%@ in messageList:%{public}@", buf, 0x16u);
}

void sub_10048C9CC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Skip update, collection stale:%{public}@", buf, 0xCu);
}

void sub_10048CAB8()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "RestorationMailboxEncoder: Encoding generic mailbox: %{public}@", v5);
}

void sub_10048CAFC()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "RestorationMailboxEncoder: Encoding smart mailbox: %{public}@", v5);
}

void sub_10048CB40()
{
  sub_100007ED4();
  *v1 = 134218242;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2114;
  *(v1 + 14) = v3;
  sub_100007EE0(&_mh_execute_header, "RestorationMailboxEncoder: Unsupported MSSourceType (%lu) for smart mailbox: %{public}@", v4, v5);
}

void sub_10048CB98()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "RestorationMailboxEncoder: Encoding unified mailbox: %{public}@", v5);
}

void sub_10048CBDC()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10048CC28()
{
  sub_100007ED4();
  *v1 = 138543618;
  sub_1000079C4(v2, v1, @"Failed to create NSKeyedUnarchiver");
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10048CC80()
{
  sub_100007ED4();
  *v1 = 138543618;
  sub_1000079C4(v2, v1, @"Could not determine serialization type of data.");
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10048CCD8()
{
  sub_100007ED4();
  *v1 = 138543618;
  sub_1000079C4(v2, v1, @"decodeMailboxData called with empty or nil data.");
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10048CD98()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10048CDE4()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10048CE30()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "RestorationMailboxDecoder: Mailbox was successfully returned from repository: %{public}@", v5);
}

void sub_10048CEA8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000078D0(a1, a2, a3, 5.8382e-34);
  sub_100007EE0(&_mh_execute_header, "RestorationMailboxDecoder: %{public}@ Error: %{public}@", v4, v5);
}

void sub_10048CEF4(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "RestorationMailboxDecoder: Decoded smart mailbox source type: %lu", &v2, 0xCu);
}

void sub_10048CF6C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "RestorationMailboxDecoder: Mailbox was successfully returned from controller: %{public}@", v5);
}

void sub_10048CFB0()
{
  sub_100007ED4();
  *v1 = 138543618;
  sub_1000079C4(v2, v1, @"Failed to decode smart mailbox sourcetype.");
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10048D03C()
{
  sub_100007ED4();
  *v1 = 138543618;
  sub_1000079C4(v2, v1, @"Unified mailbox type not found in mailbox data.");
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10048D094(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "RestorationMailboxDecoder: Decoded unified mailbox type: %li", &v2, 0xCu);
}

void sub_10048D140()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "RestorationMailboxDecoder: Unified mailbox was successfully decoded: %{public}@", v5);
}

void sub_10048D184()
{
  sub_100007ED4();
  *v1 = 138543618;
  sub_1000079C4(v2, v1, @"Failed to create smart mailbox.");
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

uint64_t sub_10048D28C(uint64_t result, int a2, int a3, int a4)
{
  if (result)
  {
    v7 = result;
    v8 = +[SearchTopHitsSuggester log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v7 + 13);
      v10[0] = 67109888;
      v10[1] = a2;
      v11 = 1024;
      v12 = v9;
      v13 = 1024;
      v14 = a3;
      v15 = 1024;
      v16 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Suggester finished with queryStatus: %d, hasQueryEmbedding: %{BOOL}d, hasKeywordResults: %{BOOL}d, hasEmbeddingResults: %{BOOL}d", v10, 0x1Au);
    }

    return (*(*(v7 + 40) + 16))();
  }

  return result;
}

void sub_10048D3A4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to generate suggestions %@", buf, 0xCu);
}

void sub_10048D3FC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[instant answers] Failed to generate instant answers %@", buf, 0xCu);
}

void sub_10048D454(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[instant answers][Top Hit] final top hit item suggestions:%@ and their count:%ld after deduping with instant answers", buf, 0x16u);
}

void sub_10048D590(int a1, NSObject *a2, double a3)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 2048;
  v5 = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Determining most visible cell. ascending=%{BOOL}d preferredMinimumHeight=%0.1f", v3, 0x12u);
}

void sub_10048D614(uint8_t *buf, NSObject *a2, double a3, double a4)
{
  *buf = 134217984;
  *(buf + 4) = a4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Current content offset: %0.1f", buf, 0xCu);
}

void sub_10048D658()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "CV safe visible bounds: %{public}@", v5);
}

void sub_10048D69C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "Returning entirely visible cell. Index path: %{public}@", v5);
}

void sub_10048D6E0()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "Returning most visible cell. Index path: %{public}@", v5);
}

void sub_10048D768(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100007904(&_mh_execute_header, a2, a3, "Calculating dynamic offset representation for cell: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10048D918()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "Final dynamic offset representation: %{public}@", v5);
}

void sub_10048D95C()
{
  sub_100007ED4();
  *v1 = 134218242;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2114;
  *(v1 + 14) = v3;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Calculating cell offset using dynamic offset on height %0.1f, dynamicOffset=%{public}@", v5, 0x16u);
}

void sub_10048DB00(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Calculating content offset for index path %{public}@ dynamicOffset=%{public}@", &v3, 0x16u);
}

uint64_t EntityProperty<>.init(title:)()
{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

uint64_t EntityProperty<>.init()()
{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

uint64_t AssistantSchema.init<A>(_:)()
{
  return AssistantSchema.init<A>(_:)();
}

{
  return AssistantSchema.init<A>(_:)();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall PersonNameComponents.formatted()()
{
  v0 = PersonNameComponents.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t GroupedSearchItems.subscript.getter()
{
  return GroupedSearchItems.subscript.getter();
}

{
  return GroupedSearchItems.subscript.getter();
}

uint64_t AppStorage.init<A>(wrappedValue:_:store:)()
{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

uint64_t ViewDimensions.subscript.getter()
{
  return ViewDimensions.subscript.getter();
}

{
  return ViewDimensions.subscript.getter();
}

uint64_t View.alignmentGuide(_:computeValue:)()
{
  return View.alignmentGuide(_:computeValue:)();
}

{
  return View.alignmentGuide(_:computeValue:)();
}

Swift::String __swiftcall BinaryFloatingPoint.formatted()()
{
  v0 = BinaryFloatingPoint.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t Dictionary.subscript.getter()
{
  return Dictionary.subscript.getter();
}

{
  return Dictionary.subscript.getter();
}

uint64_t String.init<A>(describing:)()
{
  return String.init<A>(describing:)();
}

{
  return String.init<A>(describing:)();
}

{
  return String.init<A>(describing:)();
}

Swift::String __swiftcall String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(Builtin::RawPointer _builtinStringLiteral, Builtin::Word utf8CodeUnitCount, Builtin::Int1 isASCII)
{
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(_builtinStringLiteral, utf8CodeUnitCount, isASCII);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return _assertionFailure(_:_:file:line:flags:)();
}

{
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}