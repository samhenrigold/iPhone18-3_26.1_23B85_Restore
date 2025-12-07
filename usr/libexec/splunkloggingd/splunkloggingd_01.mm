uint64_t sub_100016164()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_100059548);
  sub_100006C6C(v0, qword_100059548);
  sub_100029948();

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000161F0()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for URL();
  sub_1000074E8(v7, qword_10005B038);
  sub_100006C6C(v7, qword_10005B038);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return URL.init(filePath:directoryHint:relativeTo:)();
}

uint64_t sub_10001639C()
{
  if (qword_100059560 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();

  return sub_100006C6C(v0, qword_10005B038);
}

uint64_t sub_100016400@<X0>(uint64_t a1@<X8>)
{
  if (qword_100059560 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_100006C6C(v2, qword_10005B038);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1000164C0(uint64_t a1)
{
  if (qword_100059560 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_100006C6C(v2, qword_10005B038);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1000165B4(uint64_t a1))(uint64_t a1)
{
  if (qword_100059560 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for URL();
  sub_100006C6C(v1, qword_10005B038);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100016698(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100016704(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10000B168;
}

uint64_t sub_1000167A4(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001684C;

  return sub_100016948(a1);
}

uint64_t sub_10001684C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100016948(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100016A08, 0, 0);
}

uint64_t sub_100016A08()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = *(v2 + 16);
  v6(v4 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbURL, v5, v3);
  type metadata accessor for FileMonitor(0);
  v6(v1, v4 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbURL, v3);
  v7 = sub_100002920(v1, 0, 0);
  v8 = OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbMonitor;
  v0[7] = OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbMonitor;
  *(v4 + v8) = v7;

  return _swift_task_switch(sub_100016B1C, v4, 0);
}

uint64_t sub_100016B1C()
{
  v1 = *(v0[3] + v0[7]);
  v0[8] = v1;
  v2 = *(*v1 + 344);

  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_100016C6C;
  v4 = v0[3];

  return (v6)(v4, &off_100052120);
}

uint64_t sub_100016C6C()
{

  sub_10001A3C8(&qword_100057138, type metadata accessor for PanicMonitor, &unk_100046788);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100016DFC, v1, v0);
}

uint64_t sub_100016DFC()
{
  (*(v0[5] + 8))(v0[2], v0[4]);

  v1 = v0[1];
  v2 = v0[3];

  return v1(v2);
}

uint64_t type metadata accessor for PanicMonitor(uint64_t a1)
{
  result = qword_100059600;
  if (!qword_100059600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016EE8()
{
  if ((*(**(v0 + 16) + 136))())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100059540 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006C6C(v1, qword_100059548);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error: starting monitor without a delegate to handle panics", v4, 2u);
    }
  }

  v5 = *(*(v0 + 16) + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbMonitor);
  *(v0 + 24) = v5;
  v6 = *v5 + 392;
  *(v0 + 32) = *v6;
  *(v0 + 40) = v6 & 0xFFFFFFFFFFFFLL | 0xA103000000000000;

  return _swift_task_switch(sub_10001A4E8, v5, 0);
}

uint64_t sub_10001707C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000170A0, v2, 0);
}

uint64_t sub_1000170A0()
{
  v1 = *(v0 + 24);
  v2 = *(**(v0 + 32) + 144);
  v3 = swift_unknownObjectRetain();
  v2(v3, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100017134(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_100001FDC(&unk_100056B40, &unk_100045890);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000172A0, v1, 0);
}

uint64_t sub_1000172A0()
{
  v90 = v0;
  v1 = sub_10002AD10();
  v3 = v2;
  v4 = v1;
  v5 = Data.init(contentsOf:options:)();
  v0[18] = v5;
  v0[19] = v6;
  v7 = v5;
  v8 = v6;
  v9 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_11;
    }

    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 >= 1)
      {
        goto LABEL_8;
      }

LABEL_11:

      if (qword_100059540 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006C6C(v14, qword_100059548);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Found empty breadcrumb file", v17, 2u);
      }

      v18 = v0[13];
      v19 = v0[14];
      v20 = v0[7];
      sub_10000803C(v7, v8);

      (*(v19 + 56))(v20, 1, 1, v18);
      goto LABEL_29;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v9)
  {
    if (!__OFSUB__(HIDWORD(v5), v5))
    {
      if (HIDWORD(v5) - v5 >= 1)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_47;
  }

  if (!BYTE6(v6))
  {
    goto LABEL_11;
  }

LABEL_8:
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v0[20] = PropertyListDecoder.init()();
  sub_100001FDC(&qword_100057260, qword_1000468C0);
  sub_10001A410();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v21 = v0[6];
  if (!*(v21 + 16) || (v22 = sub_10000FE4C(v4, v3), (v23 & 1) == 0))
  {

    if (qword_100059540 == -1)
    {
LABEL_33:
      v36 = type metadata accessor for Logger();
      sub_100006C6C(v36, qword_100059548);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v89[0] = v40;
        *v39 = 136446210;
        v41 = sub_10000604C(v4, v3, v89);

        *(v39 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v37, v38, "Breadcrumb missing boot UUID: %{public}s", v39, 0xCu);
        sub_100006D94(v40);

        sub_10000803C(v7, v8);
      }

      else
      {
        sub_10000803C(v7, v8);
      }

      (*(v0[14] + 56))(v0[7], 1, 1, v0[13]);
LABEL_29:

      v35 = v0[1];

      return v35();
    }

LABEL_48:
    swift_once();
    goto LABEL_33;
  }

  v24 = v22;

  v25 = (*(v21 + 56) + 16 * v24);
  v27 = *v25;
  v26 = v25[1];

  if ((v27 || v26 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v42 = v0[11];
    v87 = v27;
    v43 = v0[10];
    v85 = *(v0[14] + 56);
    v85(v0[12], 1, 1, v0[13]);
    v83 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v82 = *(v43 + 104);
    v82(v42);

    URL.init(filePath:directoryHint:relativeTo:)();
    v44 = [objc_opt_self() defaultManager];
    v45 = String._bridgeToObjectiveC()();
    v86 = v44;
    LODWORD(v44) = [v44 fileExistsAtPath:v45];

    v46 = v0[17];
    if (v44)
    {
      v47 = v0[13];
      v48 = v0[14];
      v49 = v0[7];

      sub_10000803C(v7, v8);
      (*(v48 + 32))(v49, v46, v47);
      v85(v49, 0, 1, v47);
    }

    else
    {
      v76 = v0[15];
      v50 = v0[14];
      v80 = v0[13];
      v51 = v0[11];
      v78 = v0[10];
      v52 = v0[9];
      v53 = URL.lastPathComponent.getter();
      v74 = v54;
      v75 = v53;
      URL.deletingLastPathComponent()();
      sub_100001FDC(&unk_100056C98, &unk_100045C20);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_100045B60;
      *(v55 + 32) = 0x64657269746552;
      *(v55 + 40) = 0xE700000000000000;
      *(v55 + 48) = v75;
      *(v55 + 56) = v74;
      (v82)(v51, v83, v52);
      sub_10001A48C();
      URL.appending<A>(components:directoryHint:)();

      (*(v78 + 8))(v51, v52);
      v84 = *(v50 + 8);
      v84(v76, v80);
      v56 = URL.path(percentEncoded:)(0);
      v57 = String._bridgeToObjectiveC()();
      LODWORD(v50) = [v86 fileExistsAtPath:v57];

      if (v50)
      {
        v88 = v0[16];
        v58 = v0[13];
        v59 = v0[14];
        v60 = v0[7];
        v84(v0[17], v58);

        sub_10000803C(v7, v8);
        (*(v59 + 32))(v60, v88, v58);
        v85(v60, 0, 1, v58);
      }

      else
      {
        if (qword_100059540 != -1)
        {
          swift_once();
        }

        v61 = type metadata accessor for Logger();
        sub_100006C6C(v61, qword_100059548);

        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();

        v64 = v62;
        v65 = os_log_type_enabled(v62, v63);
        v66 = v0[17];
        v79 = v0[13];
        v81 = v0[16];
        if (v65)
        {
          v77 = v0[17];
          v67 = swift_slowAlloc();
          v89[0] = swift_slowAlloc();
          *v67 = 136446466;
          v68 = sub_10000604C(v87, v26, v89);

          *(v67 + 4) = v68;
          *(v67 + 12) = 2082;
          v69 = sub_10000604C(v56._countAndFlagsBits, v56._object, v89);

          *(v67 + 14) = v69;
          _os_log_impl(&_mh_execute_header, v64, v63, "Breadcrumb file has path: '%{public}s, but no file found there or %{public}s'", v67, 0x16u);
          swift_arrayDestroy();

          sub_10000803C(v7, v8);
          v70 = v79;
          v71 = v84;
          v84(v81, v79);
          v72 = v77;
        }

        else
        {

          sub_10000803C(v7, v8);

          v70 = v79;
          v71 = v84;
          v84(v81, v79);
          v72 = v66;
        }

        v71(v72, v70);
        v85(v0[7], 1, 1, v0[13]);
      }
    }

    goto LABEL_29;
  }

  if (qword_100059540 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100006C6C(v28, qword_100059548);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "No panic found this boot, stopping monitoring breadcrumb", v31, 2u);
  }

  v32 = v0[8];

  v33 = *(v32 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbMonitor);
  v0[21] = v33;
  v34 = *v33;
  v0[22] = *(*v33 + 400);
  v0[23] = (v34 + 400) & 0xFFFFFFFFFFFFLL | 0x5E9D000000000000;

  return _swift_task_switch(sub_100018234, v33, 0);
}

uint64_t sub_100018234()
{
  v1 = *(v0 + 64);
  (*(v0 + 176))();

  return _swift_task_switch(sub_1000182AC, v1, 0);
}

uint64_t sub_1000182AC()
{
  v1 = v0[19];
  v2 = v0[18];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[7];

  sub_10000803C(v2, v1);
  (*(v4 + 56))(v5, 1, 1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000183A4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbMonitor);
  v0[3] = v1;
  v2 = *v1 + 400;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0x5E9D000000000000;

  return _swift_task_switch(sub_100018448, v1, 0);
}

uint64_t sub_100018448()
{
  (*(v0 + 32))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000184B4()
{
  v1[2] = v0;
  sub_100001FDC(&qword_100056880, &qword_100046FE0);
  v1[3] = swift_task_alloc();
  sub_100001FDC(&unk_100056B40, &unk_100045890);
  v2 = swift_task_alloc();
  v1[4] = v2;
  v3 = type metadata accessor for URL();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_100018630;

  return sub_100017134(v2);
}

uint64_t sub_100018630()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100018740, v1, 0);
}

uint64_t sub_100018740()
{
  v53 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007E2C(v3, &unk_100056B40, &unk_100045890);
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    (*(v2 + 32))(v4, v3, v1);
    v6 = URL.path(percentEncoded:)(0);
    type metadata accessor for PanicReport();
    (*(v2 + 16))(v5, v4, v1);
    if (IPSReport.__allocating_init(reportPath:)())
    {
      dispatch thunk of PanicReport.prepareReportForSubmission()();

      v7 = dispatch thunk of IPSReport.reportData.getter();
      v9 = v8;

      if (v9 >> 60 == 15)
      {
        if (qword_100059540 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_100006C6C(v10, qword_100059548);

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.error.getter();

        v13 = os_log_type_enabled(v11, v12);
        v14 = v0[8];
        v16 = v0[5];
        v15 = v0[6];
        if (v13)
        {
          v50 = v0[8];
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v52 = v18;
          *v17 = 136446210;
          v19 = sub_10000604C(v6._countAndFlagsBits, v6._object, &v52);

          *(v17 + 4) = v19;
          _os_log_impl(&_mh_execute_header, v11, v12, "Failed to redact panic report at path '%{public}s'", v17, 0xCu);
          sub_100006D94(v18);

          (*(v15 + 8))(v50, v16);
        }

        else
        {

          (*(v15 + 8))(v14, v16);
        }
      }

      else
      {
        v30 = sub_100019498(v6._countAndFlagsBits, v6._object, v7, v9);
        if (v32)
        {
          (*(v0[6] + 8))(v0[8], v0[5]);

          sub_100010C2C(v7, v9);
        }

        else
        {
          v49 = v30;
          v51 = v31;
          if (qword_100059540 != -1)
          {
            swift_once();
          }

          v33 = type metadata accessor for Logger();
          sub_100006C6C(v33, qword_100059548);

          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v52 = v37;
            *v36 = 136446210;
            v38 = sub_10000604C(v6._countAndFlagsBits, v6._object, &v52);

            *(v36 + 4) = v38;
            _os_log_impl(&_mh_execute_header, v34, v35, "Forwarding panic event to Splunk from path %{public}s", v36, 0xCu);
            sub_100006D94(v37);
          }

          else
          {
          }

          v39 = v0[6];
          v47 = v0[5];
          v48 = v0[8];
          v41 = v0[2];
          v40 = v0[3];
          v42 = type metadata accessor for TaskPriority();
          (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
          v43 = sub_10001A3C8(&qword_100057138, type metadata accessor for PanicMonitor, &unk_100046788);
          v44 = swift_allocObject();
          v44[2] = v41;
          v44[3] = v43;
          v44[4] = v41;
          v44[5] = v49;
          v44[6] = v51;
          swift_retain_n();
          sub_10001A300(v49, v51, 0);
          sub_10000326C(0, 0, v40, &unk_100046860, v44);
          sub_100010C2C(v7, v9);

          sub_10001A35C(v49, v51, 0);

          (*(v39 + 8))(v48, v47);
        }
      }
    }

    else
    {
      if (qword_100059540 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006C6C(v20, qword_100059548);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      v23 = os_log_type_enabled(v21, v22);
      v24 = v0[8];
      v25 = v0[5];
      v26 = v0[6];
      if (v23)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v52 = v28;
        *v27 = 136446210;
        v29 = sub_10000604C(v6._countAndFlagsBits, v6._object, &v52);

        *(v27 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to initialize Panic Helper at path '%{public}s'", v27, 0xCu);
        sub_100006D94(v28);
      }

      else
      {
      }

      (*(v26 + 8))(v24, v25);
    }
  }

  v45 = v0[1];

  return v45();
}

uint64_t sub_100018E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_100018E50, a4, 0);
}

uint64_t sub_100018E50()
{
  v1 = (*(**(v0 + 24) + 136))();
  *(v0 + 48) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v10 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_100018FE8;
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);

    return v10(v7, v6, ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100018FE8()
{
  v1 = *(*v0 + 24);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10000D7B0, v1, 0);
}

uint64_t sub_100019114()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100006DE0(v0 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_delegate);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10001919C()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100006DE0(v0 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_delegate);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100019234()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000073F4;

  return sub_100019AE0();
}

uint64_t sub_1000192D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007EAC;

  return sub_100019DCC();
}

uint64_t sub_100019378()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007EAC;

  return sub_100019AE0();
}

uint64_t sub_100019438()
{
  sub_100019FC4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100019498(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_100001FDC(&qword_100056C18, &qword_100045BC0);
  __chkstk_darwin(v8 - 8);
  v10 = v40 - v9;
  v43 = type metadata accessor for Date();
  v11 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002CD18(a3, a4);
  if (v13)
  {
    v14 = v13;
    v15 = sub_10002BE40();
    if (!v16)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v41 = a1;
  if (qword_100059540 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100006C6C(v30, qword_100059548);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v51 = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_10000604C(v41, a2, &v51);
    _os_log_impl(&_mh_execute_header, v31, v32, "Failed to extract json from redacted panic report. Sending raw data for path %{public}s", v33, 0xCu);
    sub_100006D94(v34);
  }

  sub_100001FDC(&unk_100056C70, &unk_100046890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100045B50;
  *(inited + 32) = 0x70655263696E6170;
  *(inited + 40) = 0xEB0000000074726FLL;
  v36 = sub_100010724(a3, a4);
  if (v37)
  {
    a1 = v41;
    goto LABEL_22;
  }

  v46 = a3;
  v47 = a4;
  sub_100007F28(a3, a4);
  sub_100001FDC(&unk_1000578A0, &unk_100045C10);
  if (swift_dynamicCast())
  {
    v40[1] = 0;
    sub_100010C50(v44, &v48);
    v40[2] = v50;
    sub_100010C68(&v48, v49);
    if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
    {
      sub_100010C68(&v48, v49);
      dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
      v39 = *(&v44[0] + 1);
      v38 = *&v44[0];
      sub_100006D94(&v48);
      v37 = v39;
      v36 = v38;
      a1 = v41;
      goto LABEL_22;
    }

    sub_100006D94(&v48);
  }

  else
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_100007E2C(v44, &qword_100056C90, &qword_1000471D0);
  }

  a1 = v41;
  v36 = sub_10000FDA4(a3, a4);
LABEL_22:
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v36;
  *(inited + 56) = v37;
  v14 = sub_100010AFC(inited);
  swift_setDeallocating();
  sub_100007E2C(inited + 32, &unk_100056C80, &unk_1000468A0);
  v15 = sub_10002BE40();
  if (v16)
  {
LABEL_3:
    v52 = &type metadata for String;
    *&v51 = v15;
    *(&v51 + 1) = v16;
    sub_100010C40(&v51, &v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v44[0] = v14;
    sub_100010234(&v48, 0x6C6169726573, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v14 = *&v44[0];
  }

LABEL_4:
  sub_100001FDC(&unk_100056C70, &unk_100046890);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_100045B60;
  *(v18 + 32) = 0x746E657665;
  *(v18 + 40) = 0xE500000000000000;
  v19 = sub_100001FDC(&qword_1000578B0, &unk_100045C00);
  *(v18 + 48) = v14;
  *(v18 + 72) = v19;
  *(v18 + 80) = 0x656372756F73;
  *(v18 + 120) = &type metadata for String;
  *(v18 + 88) = 0xE600000000000000;
  *(v18 + 96) = a1;
  *(v18 + 104) = a2;

  v20 = a1;
  v21 = sub_100010AFC(v18);
  swift_setDeallocating();
  sub_100001FDC(&unk_100056C80, &unk_1000468A0);
  swift_arrayDestroy();
  sub_10002D128(v20, a2, v10);
  v22 = v43;
  if ((*(v11 + 48))(v10, 1, v43) == 1)
  {
    sub_100007E2C(v10, &qword_100056C18, &qword_100045BC0);
  }

  else
  {
    v23 = v42;
    (*(v11 + 32))(v42, v10, v22);
    Date.timeIntervalSince1970.getter();
    v52 = &type metadata for Double;
    *&v51 = v24;
    sub_100010C40(&v51, &v48);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v44[0] = v21;
    sub_100010234(&v48, 1701669236, 0xE400000000000000, v25);
    (*(v11 + 8))(v23, v22);
    v21 = *&v44[0];
  }

  v26 = sub_10002C584(v21);
  v28 = v27;

  if (v28 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return v26;
  }
}

uint64_t sub_100019B00()
{
  v11 = v0;
  if (qword_100059540 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006C6C(v1, qword_100059548);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    v6 = URL.path(percentEncoded:)(1);
    v7 = sub_10000604C(v6._countAndFlagsBits, v6._object, &v10);

    *(v4 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Observed change in %{public}s", v4, 0xCu);
    sub_100006D94(v5);
  }

  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_100019CD8;

  return sub_1000184B4();
}

uint64_t sub_100019CD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100019DEC()
{
  v11 = v0;
  if (qword_100059540 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006C6C(v1, qword_100059548);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    v6 = URL.path(percentEncoded:)(1);
    v7 = sub_10000604C(v6._countAndFlagsBits, v6._object, &v10);

    *(v4 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Started monitoring %{public}s", v4, 0xCu);
    sub_100006D94(v5);
  }

  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_10001A4E4;

  return sub_1000184B4();
}

void sub_100019FC4()
{
  if (qword_100059540 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006C6C(v0, qword_100059548);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v7 = v3;
    *v2 = 136446210;
    v4 = URL.path(percentEncoded:)(1);
    v5 = sub_10000604C(v4._countAndFlagsBits, v4._object, &v7);

    *(v2 + 4) = v5;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Stopped monitoring %{public}s", v2, 0xCu);
    sub_100006D94(v3);
  }
}

uint64_t sub_10001A13C(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_10001A1F0()
{
  swift_unknownObjectRelease();

  sub_10001A334(*(v0 + 40), *(v0 + 48), sub_10000803C);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001A24C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000073F4;

  return sub_100018E2C(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_10001A300(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_10001A334(result, a2, sub_100007F28);
  }

  return result;
}

uint64_t sub_10001A334(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  v3 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  if (((a2 >> 60) & 3) == 0)
  {
    v3 = a2;
  }

  if (((a2 >> 60) & 3) <= 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  }

  return a3(a1, v4);
}

uint64_t sub_10001A35C(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_10001A334(result, a2, sub_10000803C);
  }

  return result;
}

uint64_t sub_10001A390()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001A3C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001A410()
{
  result = qword_100057268;
  if (!qword_100057268)
  {
    sub_100002024(&qword_100057260, qword_1000468C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057268);
  }

  return result;
}

unint64_t sub_10001A48C()
{
  result = qword_1000578E0;
  if (!qword_1000578E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000578E0);
  }

  return result;
}

id sub_10001A4EC()
{
  result = [v0 decomposedMessage];
  if (result)
  {
    v2 = result;
    v3 = [result placeholderCount];

    result = v3;
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_10001A548(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    result = [v1 decomposedMessage];
    if (result)
    {
      v3 = result;
      if ([result placeholderCount] > v2 && (v4 = objc_msgSend(v3, "argumentAtIndex:", v2)) != 0)
      {
        v5 = v4;
        v6 = [v4 availability];
        if (v6 > 1)
        {
          switch(v6)
          {
            case 2:

              return 0x657461766972703CLL;
            case 3:

              return 0x7461636E7572743CLL;
            case 4:

              return 0x6D726F666C616D3CLL;
          }

          goto LABEL_20;
        }

        if (v6)
        {
          if (v6 == 1)
          {

            return 0x676E697373696D3CLL;
          }

LABEL_20:
          [v5 availability];
          v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v11);

          v12._countAndFlagsBits = 62;
          v12._object = 0xE100000000000000;
          String.append(_:)(v12);

          return 0x6E776F6E6B6E753CLL;
        }

        v7 = [v5 objectRepresentation];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 description];

          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          return v10;
        }
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10001A7B0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 process];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0x8000000100043B90;
    v8 = 0xD000000000000011;
  }

  v70 = sub_100001FDC(&unk_100056C70, &unk_100046890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000468E0;
  *(inited + 32) = 0x6449646165726874;
  *(inited + 40) = 0xE800000000000000;
  *&v75 = [v2 threadIdentifier];
  sub_10001AFB0();
  *(inited + 48) = BinaryInteger.description.getter();
  *(inited + 56) = v12;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x737365636F7270;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v8;
  v69 = v8;
  *(inited + 104) = v10;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 6580592;
  *(inited + 136) = 0xE300000000000000;
  v74 = v10;

  LODWORD(v79[0]) = [v2 processIdentifier];
  v68[1] = sub_10001B004();
  *(inited + 144) = BinaryInteger.description.getter();
  *(inited + 152) = v13;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x65707954676F6CLL;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = OSLogEventLogType.description.getter([v2 logType]);
  *(inited + 200) = v14;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 1701869940;
  *(inited + 232) = 0xE400000000000000;
  v15 = OSLogEventType.description.getter([v2 type]);
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = v15;
  *(inited + 248) = v16;
  v17 = sub_100010AFC(inited);
  swift_setDeallocating();
  v68[2] = sub_100001FDC(&unk_100056C80, &unk_1000468A0);
  swift_arrayDestroy();
  if (a1)
  {
    v18 = sub_10001B1E4();
    v76 = v18;
    v77 = &off_1000521B8;
    *&v75 = v2;

    v19 = v2;
    v20 = sub_100013020(&v75);
    sub_100006D94(&v75);
    v76 = v18;
    v77 = &off_1000521B8;
    *&v75 = v19;
    v21 = v19;
    v22 = sub_100013074(&v75);

    sub_100006D94(&v75);
    if ((v20 & 1) == 0)
    {
      if (!v22)
      {

        return 0;
      }

      v30 = v74;
      goto LABEL_17;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = 0xED00003E65676173;
  v24 = 0x73656D5F6C696E3CLL;
  v25 = [v2 composedMessage];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v76 = &type metadata for String;
    if (v29)
    {
      v24 = v27;
      v23 = v29;
    }
  }

  else
  {
    v76 = &type metadata for String;
  }

  *&v75 = v24;
  *(&v75 + 1) = v23;
  sub_100010C40(&v75, v79);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = v17;
  sub_100010234(v79, 0x6567617373656DLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v17 = v78;
  if (!v22)
  {
    v30 = v74;
    goto LABEL_19;
  }

  v30 = v74;
LABEL_17:

  v76 = sub_100001FDC(&qword_100057260, qword_1000468C0);
  *&v75 = v22;
  sub_100010C40(&v75, v79);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v78 = v17;
  sub_100010234(v79, 0x746E656D75677261, 0xE900000000000073, v32);
  v17 = v78;
LABEL_19:
  v33 = [v2 sender];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v76 = &type metadata for String;
    *&v75 = v35;
    *(&v75 + 1) = v37;
    sub_100010C40(&v75, v79);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v17;
    sub_100010234(v79, 0x7265646E6573, 0xE600000000000000, v38);
    v17 = v78;
    v39 = [v2 subsystem];
    if (v39)
    {
      v40 = v39;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v76 = &type metadata for String;
      *&v75 = v41;
      *(&v75 + 1) = v43;
      sub_100010C40(&v75, v79);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v78 = v17;
      sub_100010234(v79, 0x6574737973627573, 0xE90000000000006DLL, v44);
      v17 = v78;
      v45 = [v2 category];
      if (v45)
      {
        v46 = v45;
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        v76 = &type metadata for String;
        *&v75 = v47;
        *(&v75 + 1) = v49;
        sub_100010C40(&v75, v79);
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v78 = v17;
        sub_100010234(v79, 0x79726F6765746163, 0xE800000000000000, v50);
        v17 = v78;
      }
    }
  }

  v74 = v22;
  v51 = sub_10002BE40();
  if (v52)
  {
    v76 = &type metadata for String;
    *&v75 = v51;
    *(&v75 + 1) = v52;
    sub_100010C40(&v75, v79);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v17;
    sub_100010234(v79, 0x6C6169726573, 0xE600000000000000, v53);
    v17 = v78;
  }

  *&v75 = v69;
  *(&v75 + 1) = v30;
  v54._countAndFlagsBits = 58;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  LODWORD(v79[0]) = [v2 processIdentifier];
  v55._countAndFlagsBits = BinaryInteger.description.getter();
  String.append(_:)(v55);

  v56 = v75;
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_100045570;
  *(v57 + 32) = 1701669236;
  *(v57 + 40) = 0xE400000000000000;
  v58 = [v2 date];
  v59 = v71;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince1970.getter();
  v61 = v60;
  (*(v72 + 8))(v59, v73);
  *(v57 + 48) = v61;
  *(v57 + 72) = &type metadata for Double;
  *(v57 + 80) = 0x746E657665;
  *(v57 + 88) = 0xE500000000000000;
  v62 = sub_100001FDC(&qword_1000578B0, &unk_100045C00);
  *(v57 + 96) = v17;
  *(v57 + 120) = v62;
  *(v57 + 128) = 0x656372756F73;
  *(v57 + 168) = &type metadata for String;
  *(v57 + 136) = 0xE600000000000000;
  *(v57 + 144) = v56;
  v63 = sub_100010AFC(v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  v64 = sub_10002C584(v63);
  v66 = v65;

  if (v66 >> 60 != 15)
  {
    return v64;
  }

  return 0;
}

unint64_t sub_10001AFB0()
{
  result = qword_100057270;
  if (!qword_100057270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057270);
  }

  return result;
}

unint64_t sub_10001B004()
{
  result = qword_100057278;
  if (!qword_100057278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057278);
  }

  return result;
}

uint64_t sub_10001B0A0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

id sub_10001B104()
{
  result = [*v0 decomposedMessage];
  if (result)
  {
    v2 = result;
    v3 = [result placeholderCount];

    result = v3;
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10001B160()
{
  v1 = [*v0 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t sub_10001B1E4()
{
  result = qword_100057280;
  if (!qword_100057280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100057280);
  }

  return result;
}

uint64_t sub_10001B230(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&unk_100056C80, &unk_1000468A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OSLogEventType.description.getter(uint64_t a1)
{
  if (a1 <= 1023)
  {
    if ((a1 - 513) < 3)
    {
      return 0x7974697669746341;
    }

    if (a1 == 768)
    {
      return 0x6563617254;
    }
  }

  else if (a1 <= 1535)
  {
    if (a1 == 1024)
    {
      return 6778700;
    }

    if (a1 == 1280)
    {
      return 0x636E7973656D6954;
    }
  }

  else
  {
    switch(a1)
    {
      case 1536:
        return 0x74736F706E676953;
      case 1792:
        return 1936944972;
      case 2560:
        return 0x6D75646574617453;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_10001B39C()
{
  v1 = *v0;
  if (*v0 <= 1023)
  {
    if ((v1 - 513) < 3)
    {
      return 0x7974697669746341;
    }

    if (v1 == 768)
    {
      return 0x6563617254;
    }
  }

  else if (v1 <= 1535)
  {
    if (v1 == 1024)
    {
      return 6778700;
    }

    if (v1 == 1280)
    {
      return 0x636E7973656D6954;
    }
  }

  else
  {
    switch(v1)
    {
      case 1536:
        return 0x74736F706E676953;
      case 1792:
        return 1936944972;
      case 2560:
        return 0x6D75646574617453;
    }
  }

  return 0x6E776F6E6B6E55;
}

void type metadata accessor for OSLogEventType()
{
  if (!qword_100057288)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100057288);
    }
  }
}

uint64_t sub_10001B4EC()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_100059698);
  sub_100006C6C(v0, qword_100059698);
  sub_100029948();

  return Logger.init(subsystem:category:)();
}

unint64_t sub_10001B580(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100052228, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001B5CC(char a1)
{
  if (!a1)
  {
    return 0x746C7561666544;
  }

  if (a1 == 1)
  {
    return 1868983881;
  }

  return 0x6775626544;
}

unint64_t sub_10001B628@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001B580(*a1);
  *a2 = result;
  return result;
}

void sub_10001B658(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1868983881;
  if (v2 != 1)
  {
    v5 = 0x6775626544;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666544;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10001B6AC()
{
  v1 = 1868983881;
  if (*v0 != 1)
  {
    v1 = 0x6775626544;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666544;
  }
}

unint64_t sub_10001B6FC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10001B580(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001B724(uint64_t a1)
{
  v2 = sub_100022178();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B760(uint64_t a1)
{
  v2 = sub_100022178();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B7A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1868983881;
  if (v2 != 1)
  {
    v4 = 0x6775626544;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666544;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1868983881;
  if (*a2 != 1)
  {
    v8 = 0x6775626544;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666544;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10001B88C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001B924(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10001B9A8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001BA3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100020AB8(*a1);
  *a2 = result;
  return result;
}

uint64_t *sub_10001BB8C()
{
  if (qword_1000596B0 != -1)
  {
    swift_once();
  }

  return &qword_10005B058;
}

unint64_t sub_10001BBDC()
{
  result = sub_100014AD4(_swiftEmptyArrayStorage);
  qword_10005B060 = result;
  return result;
}

uint64_t *sub_10001BC04()
{
  if (qword_1000596B8 != -1)
  {
    swift_once();
  }

  return &qword_10005B060;
}

uint64_t sub_10001BD5C()
{
  v1 = *(v0 + *(type metadata accessor for Configuration(0) + 24));

  return v1;
}

uint64_t sub_10001BD9C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Configuration(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_10001BE44@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_10001BFB4(double a1)
{
  result = type metadata accessor for Configuration(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_10001C050(uint64_t a1)
{
  result = type metadata accessor for Configuration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_10001C0EC(uint64_t a1)
{
  result = type metadata accessor for Configuration(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_10001C188(char a1)
{
  result = type metadata accessor for Configuration(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

double sub_10001C224()
{
  type metadata accessor for Configuration(0);

  return result;
}

uint64_t sub_10001C258(uint64_t a1)
{
  v3 = *(type metadata accessor for Configuration(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

double sub_10001C304(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

double sub_10001C364()
{
  type metadata accessor for Configuration(0);

  return result;
}

uint64_t sub_10001C398(uint64_t a1)
{
  v3 = *(type metadata accessor for Configuration(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10001C444(char a1)
{
  result = type metadata accessor for Configuration(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t sub_10001C4E0(char a1)
{
  result = type metadata accessor for Configuration(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

unint64_t sub_10001C568(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x726576726553;
    v6 = 0x6E656B6F54;
    v7 = 0x74756F656D6954;
    if (a1 != 3)
    {
      v7 = 0x6953726566667542;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x7865646E49;
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
    v1 = 0x614C6C61626F6C47;
    if (a1 != 8)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0x6F43726566667542;
    v3 = 0x6C6576654CLL;
    if (a1 != 6)
    {
      v3 = 0x7461636964657250;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10001C6D8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10001C568(*a1);
  v5 = v4;
  if (v3 == sub_10001C568(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10001C760()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10001C568(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001C7C4(uint64_t a1)
{
  sub_10001C568(*v1);
  String.hash(into:)();
}

Swift::Int sub_10001C818(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10001C568(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001C878@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100020BB8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10001C8A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001C568(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001C8F0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100020BB8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001C924(uint64_t a1)
{
  v2 = sub_100020C04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001C960(uint64_t a1)
{
  v2 = sub_100020C04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001C99C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v59 = a2;
  v2 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  __chkstk_darwin(v2 - 8);
  v58 = &v56 - v3;
  v4 = sub_100001FDC(&unk_100057530, &unk_100046FC0);
  __chkstk_darwin(v4 - 8);
  v62 = &v56 - v5;
  v6 = sub_100001FDC(&qword_100057290, &unk_1000469D0);
  v70 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v56 - v7;
  v9 = type metadata accessor for Configuration(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = *(v10 + 20);
  v14 = type metadata accessor for URL();
  v15 = *(*(v14 - 8) + 56);
  v57 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = &v12[v9[6]];
  *v16 = 1667523425;
  v16[1] = 0xE400000000000000;
  v69 = v16;
  v17 = v9[7];
  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 56);
  v60 = v17;
  v61 = v18;
  v19(&v12[v17], 1, 1);
  v68 = v9[8];
  *&v12[v68] = 0x403E000000000000;
  v67 = v9[9];
  *&v12[v67] = 0x40000;
  v20 = v9[10];
  *&v12[v20] = 2;
  v65 = v9[11];
  v66 = v20;
  v12[v65] = 0;
  v21 = v9[12];
  if (qword_1000596B0 != -1)
  {
    swift_once();
  }

  v74 = v8;
  v71 = v6;
  v63 = v21;
  v64 = qword_10005B058;
  *&v12[v21] = qword_10005B058;
  v22 = v9[13];
  v23 = qword_1000596B8[0];

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_10005B060;
  *&v12[v22] = qword_10005B060;
  v25 = v9[14];
  v12[v25] = 1;
  v26 = v9[15];
  v73 = v12;
  v12[v26] = 1;
  sub_100010C68(v75, v75[3]);
  sub_100020C04();

  v27 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    v30 = v73;
    sub_100006D94(v75);
    v31 = v30;
  }

  else
  {
    v72 = v26;
    v76[0] = 1;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = 1667523425;
    if (v29)
    {
      v33 = v28;
    }

    v34 = 0xE400000000000000;
    if (v29)
    {
      v34 = v29;
    }

    v35 = v69;
    *v69 = v33;
    v35[1] = v34;
    v76[0] = 3;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v73;
    v38 = *&v36;
    if (v39)
    {
      v38 = 30.0;
    }

    *(v73 + v68) = v38;
    v76[0] = 4;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = 0x40000;
    if ((v41 & 1) == 0)
    {
      v42 = v40;
    }

    *(v37 + v67) = v42;
    v76[0] = 5;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = 2;
    if ((v44 & 1) == 0)
    {
      v45 = v43;
    }

    *(v37 + v66) = v45;
    v77 = 6;
    sub_100020CB4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v46 = v76[0];
    if (v76[0] == 3)
    {
      v46 = 0;
    }

    *(v37 + v65) = v46;
    sub_100001FDC(&qword_100057260, qword_1000468C0);
    v77 = 8;
    sub_1000216BC(&qword_100057268, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v47 = *v76;
    if (*v76)
    {
    }

    else
    {
      v47 = v24;
    }

    *(v37 + v22) = v47;
    sub_100001FDC(&qword_100057030, &unk_1000469E0);
    v77 = 7;
    sub_100021650(&qword_100057038, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v48 = *v76;
    if (*v76)
    {
    }

    else
    {
      v48 = v64;
    }

    *(v37 + v63) = v48;
    v76[0] = 9;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v37 + v25) = (v49 == 2) | v49 & 1;
    v76[0] = 10;
    v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v37 + v72) = (v50 == 2) | v50 & 1;
    sub_10001D1E0(v48);
    v76[0] = 2;
    sub_100022374(&qword_1000572A8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100020B50(v62, v73 + v60, &unk_100057530, &unk_100046FC0);
    v76[0] = 0;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v73;
    *v73 = v51;
    v52[1] = v53;
    if (v53)
    {

      v54 = v58;
      URL.init(string:)();

      (*(v70 + 8))(v74, v71);
      sub_100020B50(v54, v73 + v57, &unk_100056B40, &unk_100045890);
    }

    else
    {
      (*(v70 + 8))(v74, v71);
    }

    v55 = v73;
    sub_100020D08(v73, v59);
    sub_100006D94(v75);
    v31 = v55;
  }

  return sub_100020C58(v31);
}

uint64_t sub_10001D1E0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    for (i = result + 40; ; i += 16)
    {
      v3 = String.lowercased()();
      v13 = v3;
      sub_10001A48C();
      if ((StringProtocol.contains<A>(_:)() & 1) == 0)
      {
        v13 = v3;
        if ((StringProtocol.contains<A>(_:)() & 1) == 0)
        {
          v13 = v3;
          if (StringProtocol.contains<A>(_:)())
          {
            break;
          }
        }
      }

      if (!--v1)
      {
        return result;
      }
    }

    if (qword_100059690 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006C6C(v4, qword_100059698);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13._countAndFlagsBits = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000604C(v3._countAndFlagsBits, v3._object, &v13._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v5, v6, "Found invalid predicate with string 'splunkloggingd': %{public}s", v7, 0xCu);
      sub_100006D94(v8);
    }

    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v9._countAndFlagsBits = 0xD000000000000037;
    v9._object = 0x8000000100043D70;
    String.append(_:)(v9);
    String.append(_:)(v3);

    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;
    sub_1000223BC();
    swift_allocError();
    *v12 = countAndFlagsBits;
    *(v12 + 8) = object;
    *(v12 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10001D4E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Configuration(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 1) = 0;
  v10 = *(v7 + 20);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v34 = v11;
  v13(&a2[v10], 1, 1);
  v14 = &a2[v6[6]];
  *v14 = 1667523425;
  *(v14 + 1) = 0xE400000000000000;
  v15 = v6[7];
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 56))(&a2[v15], 1, 1, v16);
  *&a2[v6[8]] = 0x403E000000000000;
  *&a2[v6[9]] = 0x40000;
  *&a2[v6[10]] = 2;
  a2[v6[11]] = 0;
  v17 = v6[12];
  if (qword_1000596B0 != -1)
  {
    swift_once();
  }

  *&a2[v17] = qword_10005B058;
  v18 = v6[13];
  v19 = qword_1000596B8[0];

  if (v19 != -1)
  {
    swift_once();
  }

  *&a2[v18] = qword_10005B060;
  a2[v6[14]] = 1;
  a2[v6[15]] = 1;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();

  PropertyListDecoder.init()();
  v35 = a1;
  v20 = Data.init(contentsOf:options:)();
  if (v3)
  {
    if (qword_100059690 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006C6C(v22, qword_100059698);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v35;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to read config with error %{public}@", v27, 0xCu);
      sub_100007E2C(v28, &qword_100056C40, &unk_100045BE0);
    }

    swift_willThrow();

    (*(v12 + 8))(v26, v34);
    return sub_100020C58(a2);
  }

  else
  {
    v30 = v20;
    v31 = v21;
    sub_100022374(&qword_1000572B0, 255, type metadata accessor for Configuration, &unk_100046DD8);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_10000803C(v30, v31);
    (*(v12 + 8))(v35, v34);
    sub_100020C58(a2);
    return sub_100020D6C(v9, a2);
  }
}

double sub_10001DA94@<D0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Configuration(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = v2[5];
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  *v5 = 1667523425;
  *(v5 + 1) = 0xE400000000000000;
  v6 = v2[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  *&a1[v2[8]] = 0x403E000000000000;
  *&a1[v2[9]] = 0x40000;
  *&a1[v2[10]] = 2;
  a1[v2[11]] = 0;
  v8 = v2[12];
  if (qword_1000596B0 != -1)
  {
    swift_once();
  }

  *&a1[v8] = qword_10005B058;
  v9 = v2[13];
  v10 = qword_1000596B8[0];

  if (v10 != -1)
  {
    swift_once();
  }

  *&a1[v9] = qword_10005B060;
  a1[v2[14]] = 1;
  a1[v2[15]] = 1;

  return result;
}

void sub_10001DC40()
{
  v1 = v0;
  v97 = sub_100001FDC(&unk_100057530, &unk_100046FC0);
  v2 = __chkstk_darwin(v97);
  v96 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v95 = &v86 - v4;
  v93 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  __chkstk_darwin(v93);
  v92 = &v86 - v5;
  v98 = type metadata accessor for Configuration(0);
  v6 = __chkstk_darwin(v98);
  v99 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v86 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v86 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v86 - v15;
  v17 = __chkstk_darwin(v14);
  v102 = &v86 - v18;
  v19 = __chkstk_darwin(v17);
  v101 = &v86 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v86 - v22;
  v24 = __chkstk_darwin(v21);
  v100 = &v86 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v86 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v86 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v86 - v33;
  __chkstk_darwin(v32);
  v36 = &v86 - v35;
  if (qword_100059690 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100006C6C(v37, qword_100059698);
  sub_100020D08(v1, v36);
  sub_100020D08(v1, v34);
  sub_100020D08(v1, v31);
  sub_100020D08(v1, v28);
  sub_100020D08(v1, v100);
  sub_100020D08(v1, v23);
  sub_100020D08(v1, v101);
  sub_100020D08(v1, v102);
  sub_100020D08(v1, v16);
  sub_100020D08(v1, v13);
  v103 = v38;
  v39 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v94))
  {
    v88 = v39;
    v89 = v16;
    v90 = v13;
    v91 = v10;
    v40 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v104[0] = v87;
    *v40 = 136448515;
    v41 = v98;
    sub_10001102C(&v36[*(v98 + 20)], v92, &unk_100056B40, &unk_100045890);
    v42 = String.init<A>(describing:)();
    v44 = v43;
    sub_100020C58(v36);
    v45 = sub_10000604C(v42, v44, v104);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2082;
    v46 = &v34[v41[6]];
    v47 = *v46;
    v48 = v46[1];

    sub_100020C58(v34);
    v49 = sub_10000604C(v47, v48, v104);

    *(v40 + 14) = v49;
    *(v40 + 22) = 1024;
    v50 = v95;
    sub_10001102C(&v31[v41[7]], v95, &unk_100057530, &unk_100046FC0);
    v51 = type metadata accessor for UUID();
    v52 = (*(*(v51 - 8) + 48))(v50, 1, v51) != 1;
    sub_100007E2C(v50, &unk_100057530, &unk_100046FC0);
    sub_100020C58(v31);
    *(v40 + 24) = v52;
    *(v40 + 28) = 2085;
    sub_10001102C(&v28[v41[7]], v96, &unk_100057530, &unk_100046FC0);
    v53 = String.init<A>(describing:)();
    v55 = v54;
    sub_100020C58(v28);
    v56 = sub_10000604C(v53, v55, v104);

    *(v40 + 30) = v56;
    *(v40 + 38) = 2048;
    v57 = *(v100 + v41[8]);
    sub_100020C58(v100);
    *(v40 + 40) = v57;
    *(v40 + 48) = 2048;
    v58 = *&v23[v41[9]];
    sub_100020C58(v23);
    *(v40 + 50) = v58;
    *(v40 + 58) = 2048;
    v59 = *(v101 + v41[10]);
    sub_100020C58(v101);
    *(v40 + 60) = v59;
    *(v40 + 68) = 2082;
    v60 = 0xE400000000000000;
    v61 = 1868983881;
    if (*(v102 + v41[11]) != 1)
    {
      v61 = 0x6775626544;
      v60 = 0xE500000000000000;
    }

    if (*(v102 + v41[11]))
    {
      v62 = v61;
    }

    else
    {
      v62 = 0x746C7561666544;
    }

    if (*(v102 + v41[11]))
    {
      v63 = v60;
    }

    else
    {
      v63 = 0xE700000000000000;
    }

    sub_100020C58(v102);
    v64 = sub_10000604C(v62, v63, v104);

    *(v40 + 70) = v64;
    *(v40 + 78) = 1024;
    v65 = v89[v41[14]];
    sub_100020C58(v89);
    *(v40 + 80) = v65;
    *(v40 + 84) = 1024;
    v66 = v90[v41[15]];
    sub_100020C58(v90);
    *(v40 + 86) = v66;
    v67 = v88;
    _os_log_impl(&_mh_execute_header, v88, v94, "Got new config:\nServerURL: %{public}s\nIndex: %{public}s\nToken provided: %{BOOL}d\nToken: %{sensitive}s\nTimeout: %f\nBufferSize: %ld\nBufferCount: %ld\nLevel: %{public}s\nForwardCrashes: %{BOOL}d\nForwardPanics: %{BOOL}d", v40, 0x5Au);
    swift_arrayDestroy();

    v10 = v91;
  }

  else
  {
    sub_100020C58(v13);
    sub_100020C58(v16);
    sub_100020C58(v101);
    sub_100020C58(v23);
    sub_100020C58(v31);

    sub_100020C58(v102);
    sub_100020C58(v100);
    sub_100020C58(v28);
    sub_100020C58(v34);
    sub_100020C58(v36);
  }

  sub_100020D08(v1, v10);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = v10;
    v72 = swift_slowAlloc();
    v104[0] = v72;
    *v70 = 136446210;
    v73 = Array.description.getter();
    v75 = v74;
    sub_100020C58(v71);
    v76 = sub_10000604C(v73, v75, v104);

    *(v70 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v68, v69, "Predicates: %{public}s", v70, 0xCu);
    sub_100006D94(v72);
  }

  else
  {

    sub_100020C58(v10);
  }

  v77 = v99;
  sub_100020D08(v1, v99);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v104[0] = v81;
    *v80 = 136446210;
    v82 = Dictionary.description.getter();
    v84 = v83;
    sub_100020C58(v77);
    v85 = sub_10000604C(v82, v84, v104);

    *(v80 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v78, v79, "GlobalLabels: %{public}s", v80, 0xCu);
    sub_100006D94(v81);
  }

  else
  {

    sub_100020C58(v77);
  }
}

uint64_t sub_10001E5C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10001E654(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_10000FE4C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E7F8(void *a1)
{
  v3 = v1;
  v5 = sub_100001FDC(&qword_1000572B8, &qword_1000469F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100010C68(a1, a1[3]);
  sub_100020C04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for Configuration(0);
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 2;
    type metadata accessor for UUID();
    sub_100022374(&qword_1000572C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = *(v3 + v9[11]);
    v12 = 6;
    sub_1000215FC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + v9[12]);
    v12 = 7;
    sub_100001FDC(&qword_100057030, &unk_1000469E0);
    sub_100021650(&qword_1000572D0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + v9[13]);
    v12 = 8;
    sub_100001FDC(&qword_100057260, qword_1000468C0);
    sub_1000216BC(&qword_1000572D8, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10001EC6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 120) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10001ECCC(uint64_t *a1))(uint64_t a1, char a2)
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
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 120);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10001ED60;
}

void sub_10001ED60(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 120) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10001EDE4()
{
  v1[2] = v0;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_100001FDC(&qword_1000572E0, &qword_100046A00);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Configuration(0);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001EF38, v0, 0);
}

uint64_t sub_10001EF38()
{
  v1 = v0[5];
  v2 = v0[6];
  (*(v0[4] + 16))(v1, *(v0[2] + 128) + OBJC_IVAR____TtC14splunkloggingd11FileMonitor_url, v0[3]);
  sub_10001D4E4(v1, v2);
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[2];
  (*(v0[8] + 56))(v6, 0, 1, v0[7]);
  sub_100020D6C(v6, v5);
  sub_10001DC40();
  v8 = (*(*v7 + 104))();
  v0[10] = v8;
  if (v8)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    v14 = (*(v10 + 8) + **(v10 + 8));
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_10001F1C0;
    v13 = v0[9];

    return v14(v13, ObjectType, v10);
  }

  else
  {
    sub_100020C58(v0[9]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10001F1C0()
{
  v1 = *(*v0 + 16);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10001F2EC, v1, 0);
}

uint64_t sub_10001F2EC()
{
  sub_100020C58(*(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001F368(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001684C;

  return sub_10001F410(a1);
}

uint64_t sub_10001F410(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10001F4DC, 0, 0);
}

uint64_t sub_10001F4DC()
{
  v28 = v0;
  v1 = v0[3];
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  swift_unknownObjectWeakInit();
  if (qword_100059690 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_100006C6C(v6, qword_100059698);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[7];
  v12 = v0[4];
  v13 = v0[5];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v15 = v27;
    *v14 = 136446210;
    v16 = URL.path(percentEncoded:)(1);
    v19 = *(v13 + 8);
    v17 = v13 + 8;
    v18 = v19;
    v19(v11, v12);
    v20 = sub_10000604C(v16._countAndFlagsBits, v16._object, &v27);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Creating config monitor at %{public}s", v14, 0xCu);
    sub_100006D94(v15);
  }

  else
  {

    v21 = *(v13 + 8);
    v17 = v13 + 8;
    v18 = v21;
    v21(v11, v12);
  }

  v0[8] = v17;
  v0[9] = v18;
  v22 = v0[6];
  v24 = v0[3];
  v23 = v0[4];
  v25 = v0[2];
  type metadata accessor for FileMonitor(0);
  v7(v22, v25, v23);
  *(v24 + 128) = sub_100002920(v22, 0, 0);

  return _swift_task_switch(sub_10001F750, v24, 0);
}

uint64_t sub_10001F750()
{
  v1 = *(v0[3] + 128);
  v0[10] = v1;
  v2 = *(*v1 + 344);

  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_10001F89C;
  v4 = v0[3];

  return (v6)(v4, &off_100052470);
}

uint64_t sub_10001F89C()
{
  v1 = *v0;

  *(v1 + 96) = sub_100022374(&qword_1000572E8, v2, type metadata accessor for ConfigurationMonitor, &unk_100046E50);
  swift_getObjectType();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001FA30, v4, v3);
}

uint64_t sub_10001FA30()
{
  v1 = *(v0[3] + 128);
  v0[13] = v1;
  v2 = *v1 + 392;
  v0[14] = *v2;
  v0[15] = v2 & 0xFFFFFFFFFFFFLL | 0xA103000000000000;

  return _swift_task_switch(sub_10001FACC, v1, 0);
}

uint64_t sub_10001FACC()
{
  (*(v0 + 112))();

  swift_getObjectType();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001FB68, v2, v1);
}

uint64_t sub_10001FB68()
{
  (*(v0 + 72))(*(v0 + 16), *(v0 + 32));

  v1 = *(v0 + 8);
  v2 = *(v0 + 24);

  return v1(v2);
}

uint64_t sub_10001FBF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10001FC14, v2, 0);
}

uint64_t sub_10001FC14()
{
  v1 = *(v0 + 24);
  v2 = *(**(v0 + 32) + 112);
  v3 = swift_unknownObjectRetain();
  v2(v3, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001FCC8()
{
  v1 = *(v0[2] + 128);
  v0[3] = v1;
  v2 = *v1 + 400;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0x5E9D000000000000;
  return _swift_task_switch(sub_10001FD10, v1, 0);
}

uint64_t sub_10001FD10()
{
  (*(v0 + 32))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001FD74()
{
  v1 = v0;
  v2 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  if (qword_100059690 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006C6C(v5, qword_100059698);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10000604C(0xD00000000000001ELL, 0x8000000100043C60, &v16);
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s", v8, 0xCu);
    sub_100006D94(v9);
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v12 = sub_100022374(&qword_1000572E8, v11, type metadata accessor for ConfigurationMonitor, &unk_100046E50);
  v13 = swift_allocObject();
  v13[2] = v1;
  v13[3] = v12;
  v13[4] = v1;
  swift_retain_n();
  sub_1000200E8(0, 0, v4, &unk_100046A38, v13);
}

uint64_t sub_10001FFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 128) + **(*a4 + 128));
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000073F4;

  return v7();
}

uint64_t sub_1000200E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001102C(a3, v25 - v10, &qword_100056880, &qword_100046FE0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007E2C(v11, &qword_100056880, &qword_100046FE0);
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

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100007E2C(a3, &qword_100056880, &qword_100046FE0);

      return v23;
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

  sub_100007E2C(a3, &qword_100056880, &qword_100046FE0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1000203E8()
{
  if (qword_100059690 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006C6C(v0, qword_100059698);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_10000604C(0xD000000000000020, 0x8000000100043C80, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%{public}s", v2, 0xCu);
    sub_100006D94(v3);
  }
}

void sub_100020530()
{
  if (qword_100059690 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006C6C(v0, qword_100059698);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_10000604C(0xD00000000000001FLL, 0x8000000100043CB0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%{public}s", v2, 0xCu);
    sub_100006D94(v3);
  }
}

uint64_t sub_100020678()
{
  sub_100006DE0(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000206A8()
{
  sub_100006DE0(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000206E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100020708, v1, 0);
}

uint64_t sub_100020708()
{
  (*(**(v0 + 24) + 160))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100020788(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000207A8, v1, 0);
}

uint64_t sub_1000207A8()
{
  (*(**(v0 + 24) + 168))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100020828(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100020848, v1, 0);
}

uint64_t sub_100020848()
{
  (*(**(v0 + 24) + 176))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000208C8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000209C0;

  return v6(a1);
}

uint64_t sub_1000209C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100020AB8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100052290, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for Configuration(uint64_t a1)
{
  result = qword_10005A1C0;
  if (!qword_10005A1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100020B50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001FDC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_100020BB8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000522F8, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100020C04()
{
  result = qword_100057298;
  if (!qword_100057298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057298);
  }

  return result;
}

uint64_t sub_100020C58(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100020CB4()
{
  result = qword_1000572A0;
  if (!qword_1000572A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000572A0);
  }

  return result;
}

uint64_t sub_100020D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020DD0(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v64 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001FDC(&unk_100057530, &unk_100046FC0);
  __chkstk_darwin(v7 - 8);
  v65 = &v60 - v8;
  v66 = sub_100001FDC(&qword_100057500, &qword_100046F40);
  __chkstk_darwin(v66);
  v67 = &v60 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  __chkstk_darwin(v14 - 8);
  v16 = &v60 - v15;
  v17 = sub_100001FDC(&qword_100057508, qword_100046F48);
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  v20 = a1[1];
  v21 = a2[1];
  if (v20)
  {
    if (!v21 || (*a1 != *a2 || v20 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v21)
  {
    goto LABEL_25;
  }

  v63 = v5;
  v60 = v4;
  v22 = type metadata accessor for Configuration(0);
  v23 = *(v22 + 20);
  v24 = *(v17 + 48);
  v61 = v22;
  v62 = a1;
  sub_10001102C(a1 + v23, v19, &unk_100056B40, &unk_100045890);
  v25 = a2 + v23;
  v26 = a2;
  sub_10001102C(v25, &v19[v24], &unk_100056B40, &unk_100045890);
  v27 = *(v11 + 48);
  if (v27(v19, 1, v10) == 1)
  {
    if (v27(&v19[v24], 1, v10) == 1)
    {
      sub_100007E2C(v19, &unk_100056B40, &unk_100045890);
      goto LABEL_15;
    }

LABEL_13:
    v28 = &qword_100057508;
    v29 = qword_100046F48;
    v30 = v19;
LABEL_24:
    sub_100007E2C(v30, v28, v29);
    goto LABEL_25;
  }

  sub_10001102C(v19, v16, &unk_100056B40, &unk_100045890);
  if (v27(&v19[v24], 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_13;
  }

  (*(v11 + 32))(v13, &v19[v24], v10);
  sub_100022374(&qword_100057518, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v11 + 8);
  v32(v13, v10);
  v32(v16, v10);
  sub_100007E2C(v19, &unk_100056B40, &unk_100045890);
  if ((v31 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  v34 = v61;
  v33 = v62;
  v35 = v61[6];
  v36 = *(v62 + v35);
  v37 = *(v62 + v35 + 8);
  v38 = (v26 + v35);
  if ((v36 != *v38 || v37 != v38[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v39 = v34[7];
  v40 = v67;
  v41 = *(v66 + 48);
  sub_10001102C(v33 + v39, v67, &unk_100057530, &unk_100046FC0);
  sub_10001102C(v26 + v39, v40 + v41, &unk_100057530, &unk_100046FC0);
  v42 = *(v63 + 48);
  v43 = v60;
  if (v42(v40, 1, v60) != 1)
  {
    v44 = v65;
    sub_10001102C(v40, v65, &unk_100057530, &unk_100046FC0);
    if (v42(v40 + v41, 1, v43) != 1)
    {
      v47 = v63;
      v48 = v40 + v41;
      v49 = v64;
      (*(v63 + 32))(v64, v48, v43);
      sub_100022374(&qword_100057510, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      v51 = *(v47 + 8);
      v51(v49, v43);
      v51(v44, v43);
      sub_100007E2C(v40, &unk_100057530, &unk_100046FC0);
      if ((v50 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    (*(v63 + 8))(v44, v43);
    goto LABEL_23;
  }

  if (v42(v40 + v41, 1, v43) != 1)
  {
LABEL_23:
    v28 = &qword_100057500;
    v29 = &qword_100046F40;
    v30 = v40;
    goto LABEL_24;
  }

  sub_100007E2C(v40, &unk_100057530, &unk_100046FC0);
LABEL_28:
  if (*(v33 + v34[8]) != *(v26 + v34[8]) || *(v33 + v34[9]) != *(v26 + v34[9]) || *(v33 + v34[10]) != *(v26 + v34[10]))
  {
    goto LABEL_25;
  }

  v52 = 0x746C7561666544;
  v53 = v34[11];
  v54 = *(v33 + v53);
  v55 = *(v26 + v53);
  if (v54)
  {
    if (v54 == 1)
    {
      v56 = 0xE400000000000000;
      v57 = 1868983881;
    }

    else
    {
      v56 = 0xE500000000000000;
      v57 = 0x6775626544;
    }
  }

  else
  {
    v56 = 0xE700000000000000;
    v57 = 0x746C7561666544;
  }

  if (v55)
  {
    if (v55 == 1)
    {
      v58 = 0xE400000000000000;
      v52 = 1868983881;
    }

    else
    {
      v58 = 0xE500000000000000;
      v52 = 0x6775626544;
    }
  }

  else
  {
    v58 = 0xE700000000000000;
  }

  if (v57 == v52 && v56 == v58)
  {
  }

  else
  {
    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v59 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if ((sub_10001E5C4(*(v33 + v34[12]), *(v26 + v34[12])) & 1) != 0 && (sub_10001E654(*(v33 + v34[13]), *(v26 + v34[13])) & 1) != 0 && *(v33 + v34[14]) == *(v26 + v34[14]))
  {
    v45 = *(v33 + v34[15]) ^ *(v26 + v34[15]) ^ 1;
    return v45 & 1;
  }

LABEL_25:
  v45 = 0;
  return v45 & 1;
}

unint64_t sub_1000215FC()
{
  result = qword_1000572C8;
  if (!qword_1000572C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000572C8);
  }

  return result;
}

uint64_t sub_100021650(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002024(&qword_100057030, &unk_1000469E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000216BC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002024(&qword_100057260, qword_1000468C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002174C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002178C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000073F4;

  return sub_10001FFD4(v3, v4, v5, v2);
}

unint64_t sub_100021824()
{
  result = qword_1000572F0;
  if (!qword_1000572F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000572F0);
  }

  return result;
}

unint64_t sub_10002187C()
{
  result = qword_1000572F8;
  if (!qword_1000572F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000572F8);
  }

  return result;
}

unint64_t sub_1000218D4()
{
  result = qword_100057300;
  if (!qword_100057300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057300);
  }

  return result;
}

unint64_t sub_10002192C()
{
  result = qword_100057308;
  if (!qword_100057308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057308);
  }

  return result;
}

unint64_t sub_100021984()
{
  result = qword_100057310;
  if (!qword_100057310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057310);
  }

  return result;
}

unint64_t sub_1000219DC()
{
  result = qword_100057318;
  if (!qword_100057318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057318);
  }

  return result;
}

unint64_t sub_100021A34()
{
  result = qword_100057320;
  if (!qword_100057320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057320);
  }

  return result;
}

uint64_t sub_100021ABC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100001FDC(&unk_100057530, &unk_100046FC0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100021C14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_100001FDC(&unk_100057530, &unk_100046FC0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_100021D58(uint64_t a1)
{
  sub_100021F24(319, &qword_100057380, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100021ED0(319, &qword_100057388, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      sub_100021ED0(319, &qword_100057390, &type metadata accessor for UUID);
      if (v3 <= 0x3F)
      {
        sub_100021F24(319, &qword_100057398, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_100021F78();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100021ED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100021F24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100021F78()
{
  if (!qword_1000573A0)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1000573A0);
    }
  }
}

uint64_t getEnumTagSinglePayload for Configuration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100022124()
{
  result = qword_1000574F0;
  if (!qword_1000574F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000574F0);
  }

  return result;
}

unint64_t sub_100022178()
{
  result = qword_1000574F8;
  if (!qword_1000574F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000574F8);
  }

  return result;
}

uint64_t sub_1000221CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022204(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007EAC;

  return sub_1000208C8(a1, v4);
}

uint64_t sub_1000222BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000073F4;

  return sub_1000208C8(a1, v4);
}

uint64_t sub_100022374(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000223BC()
{
  result = qword_100057880;
  if (!qword_100057880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057880);
  }

  return result;
}

uint64_t OSLogEventLogType.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x746C7561666544;
    }

    if (a1 == 1)
    {
      return 1868983881;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6775626544;
      case 16:
        return 0x726F727245;
      case 17:
        return 0x746C756146;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_1000224E4()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x746C7561666544;
    }

    if (v1 == 1)
    {
      return 1868983881;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x6775626544;
      case 16:
        return 0x726F727245;
      case 17:
        return 0x746C756146;
    }
  }

  return 0x6E776F6E6B6E55;
}

void type metadata accessor for OSLogEventLogType()
{
  if (!qword_100057520)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100057520);
    }
  }
}

uint64_t sub_1000225E0()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_10005A258);
  sub_100006C6C(v0, qword_10005A258);
  sub_100029948();

  return Logger.init(subsystem:category:)();
}

NSString sub_100022668()
{
  result = String._bridgeToObjectiveC()();
  qword_10005A278 = result;
  return result;
}

Swift::Int sub_1000226C8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10002270C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

id sub_100022818()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100022860@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_jsonEndpoint;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100022910()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_refreshEventRecieved;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100022954(char a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_refreshEventRecieved;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_100022A04()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_acdcActorURLSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100022A50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_acdcActorURLSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100022B08()
{
  v0 = [objc_opt_self() sharedSession];
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_10005B068 = &unk_100047220;
  qword_10005B070 = result;
  return result;
}

uint64_t sub_100022B7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100022C1C;

  return NSURLSession.data(for:delegate:)(a1, 0);
}

uint64_t sub_100022C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

uint64_t *sub_100022D34()
{
  if (qword_10005A280 != -1)
  {
    swift_once();
  }

  return &qword_10005B068;
}

uint64_t sub_100022D84()
{
  if (qword_10005A280 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_10005B068;

  return v0;
}

uint64_t sub_100022E08(uint64_t a1, uint64_t a2)
{
  if (qword_10005A280 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_10005B068 = a1;
  qword_10005B070 = a2;
}

uint64_t (*sub_100022E94(uint64_t a1))(uint64_t a1)
{
  if (qword_10005A280 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100022F1C(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100022FDC, v1, 0);
}

uint64_t sub_100022FDC()
{
  if ((*(**(v0 + 112) + 120))())
  {
    if (qword_10005A250 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006C6C(v1, qword_10005A258);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing acdc actor cert.", v4, 2u);
    }

    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);

    v9 = objc_allocWithZone(type metadata accessor for NarrativeCert());
    v25 = NarrativeCert.init(domain:identityType:)();
    v10 = dispatch thunk of NarrativeCert.getCredential()();
    v11 = type metadata accessor for MTLSURLSessionDelegate();
    v12 = objc_allocWithZone(v11);
    *&v12[OBJC_IVAR____TtC14splunkloggingdP33_F073D0EF6A22BE81F4E8780E926B09A722MTLSURLSessionDelegate_cred] = v10;
    v12[OBJC_IVAR____TtC14splunkloggingdP33_F073D0EF6A22BE81F4E8780E926B09A722MTLSURLSessionDelegate_insecure] = 0;
    *(v0 + 88) = v12;
    *(v0 + 96) = v11;
    v27 = v10;
    v26 = objc_msgSendSuper2((v0 + 88), "init");
    v13 = (*(*v7 + 144))();
    [v13 finishTasksAndInvalidate];

    v14 = [objc_opt_self() defaultSessionConfiguration];
    v15 = [objc_opt_self() sessionWithConfiguration:v14 delegate:v26 delegateQueue:0];

    (*(*v7 + 152))(v15);
    (*(*v7 + 128))(0);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    NarrativeCert.refreshedNotificationName.getter();
    sub_100028308();
    (*(v5 + 104))(v6, enum case for DispatchQoS.QoSClass.utility(_:), v8);
    v17 = static OS_dispatch_queue.global(qos:)();
    (*(v5 + 8))(v6, v8);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v7;
    *(v0 + 48) = sub_100028394;
    *(v0 + 56) = v18;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1000236A8;
    *(v0 + 40) = &unk_100052850;
    v19 = _Block_copy((v0 + 16));

    v20 = String.utf8CString.getter();

    swift_beginAccess();
    notify_register_dispatch((v20 + 32), (v16 + 16), v17, v19);
    swift_endAccess();

    _Block_release(v19);
  }

  v21 = (*(**(v0 + 112) + 144))();
  *(v0 + 144) = v21;
  if (v21)
  {
    v23 = swift_task_alloc();
    *(v0 + 152) = v23;
    *v23 = v0;
    v23[1] = sub_1000234BC;
    v21 = *(v0 + 104);
    v22 = 0;
  }

  else
  {
    __break(1u);
  }

  return NSURLSession.data(for:delegate:)(v21, v22);
}

uint64_t sub_1000234BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;
  *(*v4 + 160) = v3;

  if (v3)
  {
    v10 = *(v8 + 112);

    return _swift_task_switch(sub_10002363C, v10, 0);
  }

  else
  {

    v11 = *(v9 + 8);

    return v11(a1, a2, a3);
  }
}

uint64_t sub_10002363C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000236A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1000236FC(uint64_t a1, uint64_t a2)
{
  v3[96] = v2;
  v3[95] = a2;
  v3[94] = a1;
  sub_100001FDC(&unk_100057530, &unk_100046FC0);
  v3[97] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[98] = v4;
  v3[99] = *(v4 - 8);
  v3[100] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock.Instant();
  v3[101] = v5;
  v3[102] = *(v5 - 8);
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v3[105] = v6;
  v3[106] = *(v6 - 8);
  v3[107] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v3[108] = v7;
  v3[109] = *(v7 - 8);
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v3[113] = v8;
  v3[114] = *(v8 - 8);
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();

  return _swift_task_switch(sub_10002399C, v2, 0);
}

uint64_t sub_10002399C()
{
  v50 = v0;
  v1 = sub_100007EC8(*(v0 + 752), *(v0 + 760));
  v3 = v1;
  *(v0 + 936) = v1;
  *(v0 + 944) = v2;
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2 && *(v1 + 16) != *(v1 + 24))
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!v4)
    {
      if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_7:
      v48 = v2;
      v5 = *(v0 + 928);
      v6 = *(v0 + 912);
      v7 = *(v0 + 904);
      v8 = *(v0 + 768);
      v9 = *(v0 + 760);
      v10 = *(v0 + 752);
      *(v0 + 728) = v10;
      *(v0 + 736) = v9;
      sub_10001A334(v10, v9, sub_100007F28);
      sub_1000280D0();
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10001A334(*(v0 + 728), *(v0 + 736), sub_10000803C);
      v11 = *(v6 + 16);
      v12 = v11(v5, v8 + OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_jsonEndpoint, v7);
      if (v4 == 2)
      {
        v19 = *(v3 + 16);
        v18 = *(v3 + 24);
        v15 = v18 - v19;
        if (!__OFSUB__(v18, v19))
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v4 != 1)
        {
          goto LABEL_18;
        }

        if (!__OFSUB__(HIDWORD(v3), v3))
        {
          v15 = HIDWORD(v3) - v3;
LABEL_16:
          if ((v15 & 0x8000000000000000) == 0)
          {
LABEL_19:
            v20 = *(v0 + 928);
            v46 = *(v0 + 920);
            v47 = *(v0 + 904);
            v45 = v11;
            *(v0 + 952) = sub_100001FDC(&qword_100057710, &unk_1000471C0);
            v21 = sub_100028E80();
            *(v0 + 960) = v21;

            sub_1000287B8(v22, v15);

            v23 = *(*v21 + OBJC_IVAR____TtC14splunkloggingd10Statistics_minimumBytes);

            os_unfair_lock_lock((v23 + 24));
            v24 = *(v23 + 16);
            if (v24 >= v15)
            {
              v24 = v15;
            }

            *(v23 + 16) = v24;
            os_unfair_lock_unlock((v23 + 24));

            v25 = *(*v21 + OBJC_IVAR____TtC14splunkloggingd10Statistics_maximumBytes);

            os_unfair_lock_lock((v25 + 24));
            v26 = *(v25 + 16);
            if (v26 <= v15)
            {
              v26 = v15;
            }

            *(v25 + 16) = v26;
            os_unfair_lock_unlock((v25 + 24));

            sub_100001FDC(&unk_100057550, &qword_100046FD8);
            type metadata accessor for URLQueryItem();
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_100045B50;
            URLQueryItem.init(name:value:)();

            URL.append(queryItems:)(v27);

            sub_10002AC8C();
            v28 = swift_allocObject();
            *(v28 + 16) = xmmword_100045B50;
            URLQueryItem.init(name:value:)();

            URL.append(queryItems:)(v28);

            v45(v46, v20, v47);
            URLRequest.init(url:cachePolicy:timeoutInterval:)();
            URLRequest.httpMethod.setter();
            sub_100007F28(v3, v48);
            URLRequest.httpBody.setter();
            if (qword_10005A250 != -1)
            {
              swift_once();
            }

            v29 = type metadata accessor for Logger();
            *(v0 + 968) = sub_100006C6C(v29, qword_10005A258);
            v30 = Logger.logObject.getter();
            v31 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v49 = v33;
              *v32 = 136446210;
              swift_beginAccess();
              sub_1000282B0(&qword_100057738, &type metadata accessor for URLRequest, &protocol conformance descriptor for URLRequest);
              v34 = dispatch thunk of CustomStringConvertible.description.getter();
              v36 = sub_10000604C(v34, v35, &v49);

              *(v32 + 4) = v36;
              _os_log_impl(&_mh_execute_header, v30, v31, "sending HTTP POST: %{public}s", v32, 0xCu);
              sub_100006D94(v33);
            }

            v37 = Logger.logObject.getter();
            v38 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v37, v38))
            {
              v39 = *(v0 + 896);
              v40 = swift_slowAlloc();
              v41 = swift_slowAlloc();
              v49 = v41;
              *v40 = 136446210;
              swift_beginAccess();
              v42 = sub_10002F224(v39);
              v44 = sub_10000604C(v42, v43, &v49);

              *(v40 + 4) = v44;
              _os_log_impl(&_mh_execute_header, v37, v38, "body: %{public}s", v40, 0xCu);
              sub_100006D94(v41);
            }

            *(v0 + 976) = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_token;
            swift_beginAccess();
            *(v0 + 984) = NSLocalizedFailureErrorKey;
            *(v0 + 992) = 0;
            static Clock<>.continuous.getter();
            *(v0 + 664) = 0u;
            *(v0 + 592) = 0u;
            *(v0 + 608) = 1;
            v12 = sub_100024154;
            v13 = 0;
            v14 = 0;

            return _swift_task_switch(v12, v13, v14);
          }

          __break(1u);
LABEL_18:
          v15 = BYTE6(v48);
          goto LABEL_19;
        }

        __break(1u);
      }

      __break(1u);
      return _swift_task_switch(v12, v13, v14);
    }

    if (v1 != v1 >> 32)
    {
      goto LABEL_7;
    }
  }

LABEL_12:
  sub_10000803C(v1, v2);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100024154()
{
  v1 = v0[103];
  v2 = v0[102];
  v3 = v0[101];
  v4 = sub_1000282B0(&qword_100057718, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000282B0(&qword_100057720, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v2 + 8);
  v0[125] = v5;
  v0[126] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[127] = v6;
  *v6 = v0;
  v6[1] = sub_1000242E8;
  v7 = v0[105];
  v8 = v0[104];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 74, v7, v4);
}

uint64_t sub_1000242E8()
{
  v2 = *v1;
  *(*v1 + 1024) = v0;

  if (v0)
  {
    (*(v2 + 1000))(*(v2 + 832), *(v2 + 808));
    v3 = sub_100024924;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 1000);
    v6 = *(v2 + 856);
    v7 = *(v2 + 848);
    v8 = *(v2 + 840);
    v9 = *(v2 + 832);
    v10 = *(v2 + 808);
    v11 = *(v2 + 768);
    v5(v9, v10);
    (*(v7 + 8))(v6, v8);
    v3 = sub_10002445C;
    v4 = v11;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10002445C()
{
  v1 = v0[122];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];

  sub_1000287B8(v6, 1uLL);

  sub_10001102C(v5 + v1, v4, &unk_100057530, &unk_100046FC0);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_100007E2C(v0[97], &unk_100057530, &unk_100046FC0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Auth: using acdc actor cert", v9, 2u);
    }

    v10 = v0[112];
    v11 = v0[110];
    v12 = v0[109];
    v13 = v0[108];

    (*(v12 + 16))(v11, v10, v13);
    v14 = swift_task_alloc();
    v0[133] = v14;
    *v14 = v0;
    v14[1] = sub_10002571C;
    v15 = v0[110];

    return sub_100022F1C(v15);
  }

  else
  {
    (*(v0[99] + 32))(v0[100], v0[97], v0[98]);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Auth: using token", v19, 2u);
    }

    sub_100001FDC(&qword_100057728, &qword_1000471D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100045B50;
    strcpy((inited + 32), "Authorization");
    *(inited + 46) = -4864;
    v0[89] = 0x206B6E756C7053;
    v0[90] = 0xE700000000000000;
    v21._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v21);

    v22 = v0[90];
    *(inited + 48) = v0[89];
    *(inited + 56) = v22;
    sub_100014AD4(inited);
    swift_setDeallocating();
    sub_100007E2C(inited + 32, &qword_100057730, &unk_1000471E0);
    swift_beginAccess();
    URLRequest.allHTTPHeaderFields.setter();
    swift_endAccess();
    if (qword_10005A280 != -1)
    {
      swift_once();
    }

    v23 = v0[112];
    v24 = v0[111];
    v25 = v0[109];
    v26 = v0[108];
    swift_beginAccess();
    v27 = qword_10005B068;
    v0[129] = qword_10005B070;
    (*(v25 + 16))(v24, v23, v26);

    v30 = (v27 + *v27);
    v28 = swift_task_alloc();
    v0[130] = v28;
    *v28 = v0;
    v28[1] = sub_100024AF0;
    v29 = v0[111];

    return v30(v29);
  }
}

uint64_t sub_100024924()
{
  v1 = v0[96];
  (*(v0[106] + 8))(v0[107], v0[105]);

  return _swift_task_switch(sub_1000249A4, v1, 0);
}

uint64_t sub_1000249A4()
{
  v1 = v0[116];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[112];
  v5 = v0[109];
  v6 = v0[108];
  sub_10000803C(v0[117], v0[118]);
  (*(v2 + 8))(v1, v3);

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100024AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[40] = v4;
  v6[41] = a1;
  v6[42] = a2;
  v6[43] = a3;
  v6[44] = v3;
  v6[131] = v3;

  v7 = v5[111];
  v8 = v5[109];
  v9 = v5[108];
  v10 = v5[96];
  v11 = *(v8 + 8);
  if (v3)
  {
    v6[136] = v11;
    v11(v7, v9);

    v12 = sub_100026308;
  }

  else
  {
    v6[132] = v11;
    v11(v7, v9);

    v12 = sub_100024CB8;
  }

  return _swift_task_switch(v12, v10, 0);
}

uint64_t sub_100024CB8()
{
  v61 = v0;
  (*(*(v0 + 792) + 8))(*(v0 + 800), *(v0 + 784));
  v1 = *(v0 + 1056);
  v2 = *(v0 + 344);
  *(v0 + 632) = *(v0 + 328);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v6 = [v4 statusCode];
    if (v6 == 200)
    {
      v7 = *(v0 + 944);
      v8 = *(v0 + 936);
      v9 = *(v0 + 896);
      v10 = *(v0 + 864);
      (*(*(v0 + 912) + 8))(*(v0 + 928), *(v0 + 904));

      sub_10000803C(v8, v7);
      sub_10000803C(*(v0 + 632), *(v0 + 640));
      v1(v9, v10);
LABEL_47:

      v57 = *(v0 + 8);

      return v57();
    }

    v28 = v6;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v29, v30))
    {

LABEL_40:

      sub_1000287B8(v49, 1uLL);

      v50 = CFNotificationCenterGetDarwinNotifyCenter();
      if (v50)
      {
        v51 = qword_10005A270;
        v52 = v50;
        if (v51 != -1)
        {
          swift_once();
        }

        CFNotificationCenterPostNotification(v52, qword_10005A278, 0, 0, 0);
      }

      else
      {
        v52 = v5;
      }

      sub_10000803C(*(v0 + 632), *(v0 + 640));
LABEL_46:
      v53 = *(v0 + 944);
      v54 = *(v0 + 936);
      v55 = *(v0 + 896);
      v56 = *(v0 + 864);
      (*(*(v0 + 912) + 8))(*(v0 + 928), *(v0 + 904));
      sub_10000803C(v54, v53);
      v1(v55, v56);
      goto LABEL_47;
    }

    v59 = v1;
    v31 = swift_slowAlloc();
    v60[0] = swift_slowAlloc();
    *v31 = 134218499;
    *(v31 + 4) = v28;
    *(v31 + 12) = 2082;
    swift_beginAccess();
    v32 = *(v0 + 632);
    v33 = *(v0 + 640);
    sub_100007F28(v32, v33);
    v34 = sub_100010724(v32, v33);
    if (!v35)
    {
      *(v0 + 616) = v32;
      *(v0 + 624) = v33;
      sub_100007F28(v32, v33);
      sub_100001FDC(&unk_1000578A0, &unk_100045C10);
      if (swift_dynamicCast())
      {
        sub_100010C50((v0 + 240), v0 + 280);
        sub_100010C68((v0 + 280), *(v0 + 304));
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10000803C(v32, v33);
          sub_100010C68((v0 + 280), *(v0 + 304));
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v36 = *(v0 + 696);
          v37 = *(v0 + 704);
          sub_100006D94((v0 + 280));
          goto LABEL_25;
        }

        sub_100006D94((v0 + 280));
      }

      else
      {
        *(v0 + 272) = 0;
        *(v0 + 240) = 0u;
        *(v0 + 256) = 0u;
        sub_100007E2C(v0 + 240, &qword_100056C90, &qword_1000471D0);
      }

      v34 = sub_10000FDA4(v32, v33);
    }

    v36 = v34;
    v37 = v35;
    sub_10000803C(v32, v33);
LABEL_25:
    v38 = sub_10000604C(v36, v37, v60);

    *(v31 + 14) = v38;
    *(v31 + 22) = 2081;
    swift_beginAccess();
    v39 = URLRequest.httpBody.getter();
    v41 = v40;
    swift_endAccess();
    if (v41 >> 60 == 15)
    {
      v42 = 0;
    }

    else
    {
      v42 = v39;
    }

    if (v41 >> 60 == 15)
    {
      v43 = 0xC000000000000000;
    }

    else
    {
      v43 = v41;
    }

    v44 = sub_100010724(v42, v43);
    if (!v45)
    {
      *(v0 + 648) = v42;
      *(v0 + 656) = v43;
      sub_100007F28(v42, v43);
      sub_100001FDC(&unk_1000578A0, &unk_100045C10);
      if (swift_dynamicCast())
      {
        sub_100010C50((v0 + 160), v0 + 200);
        sub_100010C68((v0 + 200), *(v0 + 224));
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10000803C(v42, v43);
          sub_100010C68((v0 + 200), *(v0 + 224));
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v46 = *(v0 + 680);
          v47 = *(v0 + 688);
          sub_100006D94((v0 + 200));
LABEL_39:
          v48 = sub_10000604C(v46, v47, v60);

          *(v31 + 24) = v48;
          _os_log_impl(&_mh_execute_header, v29, v30, "ERROR: Response: %ld\nERROR: %{public}s\nERROR: Request body:\n%{private}s", v31, 0x20u);
          swift_arrayDestroy();

          v1 = v59;
          goto LABEL_40;
        }

        sub_100006D94((v0 + 200));
      }

      else
      {
        *(v0 + 192) = 0;
        *(v0 + 160) = 0u;
        *(v0 + 176) = 0u;
        sub_100007E2C(v0 + 160, &qword_100056C90, &qword_1000471D0);
      }

      v44 = sub_10000FDA4(v42, v43);
    }

    v46 = v44;
    v47 = v45;
    sub_10000803C(v42, v43);
    goto LABEL_39;
  }

  sub_100001FDC(&unk_100056C70, &unk_100046890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100045B50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v12;
  *(inited + 48) = 0xD00000000000001CLL;
  *(inited + 56) = 0x8000000100043F00;
  sub_100010AFC(inited);
  swift_setDeallocating();
  sub_100007E2C(inited + 32, &unk_100056C80, &unk_1000468A0);
  v13 = objc_allocWithZone(NSError);
  v14 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v13 initWithDomain:v14 code:1 userInfo:isa];

  swift_willThrow();
  sub_10000803C(*(v0 + 632), *(v0 + 640));
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v60[0] = v19;
    *v18 = 136446210;
    swift_getErrorValue();
    v20 = Error.localizedDescription.getter();
    v22 = sub_10000604C(v20, v21, v60);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Splunk HTTP POST failed:\n%{public}s", v18, 0xCu);
    sub_100006D94(v19);
  }

  v23 = *(v0 + 992);

  sub_1000287B8(v24, 1uLL);

  v25 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v25)
  {
    v26 = qword_10005A270;
    v27 = v25;
    if (v26 != -1)
    {
      swift_once();
    }

    CFNotificationCenterPostNotification(v27, qword_10005A278, 0, 0, 0);
  }

  else
  {
  }

  if (*(v0 + 992) >= 4uLL)
  {
    goto LABEL_46;
  }

  *(v0 + 992) = v23 + 1;
  static Clock<>.continuous.getter();
  *(v0 + 664) = 125000000000000000 * (v23 + 1);
  *(v0 + 672) = 0;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 1;

  return _swift_task_switch(sub_100024154, 0, 0);
}

uint64_t sub_10002571C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[45] = v4;
  v6[46] = a1;
  v6[47] = a2;
  v6[48] = a3;
  v6[49] = v3;
  v6[134] = v3;

  v7 = v5[110];
  v8 = v5[109];
  v9 = v5[108];
  v10 = v5[96];
  v11 = *(v8 + 8);
  if (v3)
  {
    v6[137] = v11;
    v11(v7, v9);
    v12 = sub_1000266A0;
  }

  else
  {
    v6[135] = v11;
    v11(v7, v9);
    v12 = sub_1000258B8;
  }

  return _swift_task_switch(v12, v10, 0);
}

uint64_t sub_1000258B8()
{
  v62 = v0;
  *(v0 + 632) = *(v0 + 368);
  v1 = *(v0 + 1080);
  v2 = *(v0 + 384);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v6 = [v4 statusCode];
    if (v6 == 200)
    {
      v7 = *(v0 + 944);
      v8 = *(v0 + 936);
      v9 = *(v0 + 896);
      v10 = *(v0 + 864);
      (*(*(v0 + 912) + 8))(*(v0 + 928), *(v0 + 904));

      sub_10000803C(v8, v7);
      sub_10000803C(*(v0 + 632), *(v0 + 640));
      v1(v9, v10);
LABEL_46:

      v58 = *(v0 + 8);

      return v58();
    }

    v29 = v6;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_39;
    }

    v60 = v31;
    v32 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v32 = 134218499;
    *(v32 + 4) = v29;
    *(v32 + 12) = 2082;
    swift_beginAccess();
    v33 = *(v0 + 632);
    v34 = *(v0 + 640);
    sub_100007F28(v33, v34);
    v35 = sub_100010724(v33, v34);
    if (!v36)
    {
      *(v0 + 616) = v33;
      *(v0 + 624) = v34;
      sub_100007F28(v33, v34);
      sub_100001FDC(&unk_1000578A0, &unk_100045C10);
      if (swift_dynamicCast())
      {
        sub_100010C50((v0 + 240), v0 + 280);
        sub_100010C68((v0 + 280), *(v0 + 304));
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10000803C(v33, v34);
          sub_100010C68((v0 + 280), *(v0 + 304));
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v37 = *(v0 + 696);
          v38 = *(v0 + 704);
          sub_100006D94((v0 + 280));
          goto LABEL_24;
        }

        sub_100006D94((v0 + 280));
      }

      else
      {
        *(v0 + 272) = 0;
        *(v0 + 240) = 0u;
        *(v0 + 256) = 0u;
        sub_100007E2C(v0 + 240, &qword_100056C90, &qword_1000471D0);
      }

      v35 = sub_10000FDA4(v33, v34);
    }

    v37 = v35;
    v38 = v36;
    sub_10000803C(v33, v34);
LABEL_24:
    v39 = sub_10000604C(v37, v38, v61);

    *(v32 + 14) = v39;
    *(v32 + 22) = 2081;
    swift_beginAccess();
    v40 = URLRequest.httpBody.getter();
    v42 = v41;
    swift_endAccess();
    if (v42 >> 60 == 15)
    {
      v43 = 0;
    }

    else
    {
      v43 = v40;
    }

    if (v42 >> 60 == 15)
    {
      v44 = 0xC000000000000000;
    }

    else
    {
      v44 = v42;
    }

    v45 = sub_100010724(v43, v44);
    if (!v46)
    {
      *(v0 + 648) = v43;
      *(v0 + 656) = v44;
      sub_100007F28(v43, v44);
      sub_100001FDC(&unk_1000578A0, &unk_100045C10);
      if (swift_dynamicCast())
      {
        sub_100010C50((v0 + 160), v0 + 200);
        sub_100010C68((v0 + 200), *(v0 + 224));
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10000803C(v43, v44);
          sub_100010C68((v0 + 200), *(v0 + 224));
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v47 = *(v0 + 680);
          v48 = *(v0 + 688);
          sub_100006D94((v0 + 200));
LABEL_38:
          v49 = sub_10000604C(v47, v48, v61);

          *(v32 + 24) = v49;
          _os_log_impl(&_mh_execute_header, v30, v60, "ERROR: Response: %ld\nERROR: %{public}s\nERROR: Request body:\n%{private}s", v32, 0x20u);
          swift_arrayDestroy();

LABEL_39:

          sub_1000287B8(v50, 1uLL);

          v51 = CFNotificationCenterGetDarwinNotifyCenter();
          if (v51)
          {
            v52 = qword_10005A270;
            v53 = v51;
            if (v52 != -1)
            {
              swift_once();
            }

            CFNotificationCenterPostNotification(v53, qword_10005A278, 0, 0, 0);
          }

          else
          {
            v53 = v5;
          }

          sub_10000803C(*(v0 + 632), *(v0 + 640));
LABEL_45:
          v54 = *(v0 + 944);
          v55 = *(v0 + 936);
          v56 = *(v0 + 896);
          v57 = *(v0 + 864);
          (*(*(v0 + 912) + 8))(*(v0 + 928), *(v0 + 904));
          sub_10000803C(v55, v54);
          v1(v56, v57);
          goto LABEL_46;
        }

        sub_100006D94((v0 + 200));
      }

      else
      {
        *(v0 + 192) = 0;
        *(v0 + 160) = 0u;
        *(v0 + 176) = 0u;
        sub_100007E2C(v0 + 160, &qword_100056C90, &qword_1000471D0);
      }

      v45 = sub_10000FDA4(v43, v44);
    }

    v47 = v45;
    v48 = v46;
    sub_10000803C(v43, v44);
    goto LABEL_38;
  }

  v11 = v1;
  sub_100001FDC(&unk_100056C70, &unk_100046890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100045B50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v13;
  *(inited + 48) = 0xD00000000000001CLL;
  *(inited + 56) = 0x8000000100043F00;
  sub_100010AFC(inited);
  swift_setDeallocating();
  sub_100007E2C(inited + 32, &unk_100056C80, &unk_1000468A0);
  v14 = objc_allocWithZone(NSError);
  v15 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v14 initWithDomain:v15 code:1 userInfo:isa];

  swift_willThrow();
  sub_10000803C(*(v0 + 632), *(v0 + 640));
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v61[0] = v20;
    *v19 = 136446210;
    swift_getErrorValue();
    v21 = Error.localizedDescription.getter();
    v23 = sub_10000604C(v21, v22, v61);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Splunk HTTP POST failed:\n%{public}s", v19, 0xCu);
    sub_100006D94(v20);
  }

  v24 = *(v0 + 992);

  sub_1000287B8(v25, 1uLL);

  v26 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = v11;
  if (v26)
  {
    v27 = qword_10005A270;
    v28 = v26;
    if (v27 != -1)
    {
      swift_once();
    }

    CFNotificationCenterPostNotification(v28, qword_10005A278, 0, 0, 0);
  }

  else
  {
  }

  if (*(v0 + 992) >= 4uLL)
  {
    goto LABEL_45;
  }

  *(v0 + 992) = v24 + 1;
  static Clock<>.continuous.getter();
  *(v0 + 664) = 125000000000000000 * (v24 + 1);
  *(v0 + 672) = 0;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 1;

  return _swift_task_switch(sub_100024154, 0, 0);
}

uint64_t sub_100026308()
{
  v21 = v0;
  (*(*(v0 + 792) + 8))(*(v0 + 800), *(v0 + 784));
  v1 = *(v0 + 1088);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10000604C(v6, v7, &v20);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Splunk HTTP POST failed:\n%{public}s", v4, 0xCu);
    sub_100006D94(v5);
  }

  v9 = *(v0 + 992);

  sub_1000287B8(v10, 1uLL);

  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v11)
  {
    v12 = qword_10005A270;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    CFNotificationCenterPostNotification(v13, qword_10005A278, 0, 0, 0);
  }

  else
  {
  }

  if (*(v0 + 992) >= 4uLL)
  {
    v14 = *(v0 + 944);
    v15 = *(v0 + 936);
    v16 = *(v0 + 896);
    v17 = *(v0 + 864);
    (*(*(v0 + 912) + 8))(*(v0 + 928), *(v0 + 904));
    sub_10000803C(v15, v14);
    v1(v16, v17);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    *(v0 + 992) = v9 + 1;
    static Clock<>.continuous.getter();
    *(v0 + 664) = 125000000000000000 * (v9 + 1);
    *(v0 + 672) = 0;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 1;

    return _swift_task_switch(sub_100024154, 0, 0);
  }
}

uint64_t sub_1000266A0()
{
  v21 = v0;
  v1 = *(v0 + 1096);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10000604C(v6, v7, &v20);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Splunk HTTP POST failed:\n%{public}s", v4, 0xCu);
    sub_100006D94(v5);
  }

  v9 = *(v0 + 992);

  sub_1000287B8(v10, 1uLL);

  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v11)
  {
    v12 = qword_10005A270;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    CFNotificationCenterPostNotification(v13, qword_10005A278, 0, 0, 0);
  }

  else
  {
  }

  if (*(v0 + 992) >= 4uLL)
  {
    v14 = *(v0 + 944);
    v15 = *(v0 + 936);
    v16 = *(v0 + 896);
    v17 = *(v0 + 864);
    (*(*(v0 + 912) + 8))(*(v0 + 928), *(v0 + 904));
    sub_10000803C(v15, v14);
    v1(v16, v17);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    *(v0 + 992) = v9 + 1;
    static Clock<>.continuous.getter();
    *(v0 + 664) = 125000000000000000 * (v9 + 1);
    *(v0 + 672) = 0;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 1;

    return _swift_task_switch(sub_100024154, 0, 0);
  }
}

uint64_t sub_100026A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_100026A8C(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_100026A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[2] = a2;
  v5 = v4;
  v32 = a3;
  v8 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  __chkstk_darwin(v8 - 8);
  v30 = v29 - v9;
  v10 = type metadata accessor for URL();
  v33 = *(v10 - 8);
  __chkstk_darwin(v10);
  v29[0] = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100001FDC(&qword_100057540, &qword_100046FD0);
  __chkstk_darwin(v12 - 8);
  v14 = v29 - v13;
  v15 = type metadata accessor for URLComponents();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v29 - v20;
  swift_defaultActor_initialize();
  *(v5 + OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_refreshEventRecieved) = 1;
  *(v5 + OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_acdcActorURLSession) = 0;
  v31 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_token;
  v34 = a4;
  sub_10001102C(a4, v5 + OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_token, &unk_100057530, &unk_100046FC0);
  v35 = a1;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_100007E2C(v14, &qword_100057540, &qword_100046FD0);
    sub_100027088();
    swift_allocError();
    swift_willThrow();
    v22 = v33;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_100001FDC(&unk_100057550, &qword_100046FD8);
    type metadata accessor for URLQueryItem();
    *(swift_allocObject() + 16) = xmmword_100045B50;
    URLQueryItem.init(name:value:)();

    (*(v16 + 16))(v19, v21, v15);
    URLComponents.path.setter();
    URLComponents.queryItems.setter();
    v23 = v30;
    URLComponents.url.getter();
    v22 = v33;
    if ((*(v33 + 48))(v23, 1, v10) != 1)
    {
      sub_100007E2C(v34, &unk_100057530, &unk_100046FC0);
      (*(v22 + 8))(v35, v10);
      v25 = *(v16 + 8);
      v25(v19, v15);
      v25(v21, v15);
      v26 = *(v22 + 32);
      v27 = v29[0];
      v26(v29[0], v23, v10);
      v26(v5 + OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_jsonEndpoint, v27, v10);
      return v5;
    }

    sub_100007E2C(v23, &unk_100056B40, &unk_100045890);
    sub_100027088();
    swift_allocError();
    swift_willThrow();
    v24 = *(v16 + 8);
    v24(v19, v15);
    v24(v21, v15);
  }

  sub_100007E2C(v5 + v31, &unk_100057530, &unk_100046FC0);

  type metadata accessor for SplunkEventOffloader(0);
  swift_defaultActor_destroy();
  sub_100007E2C(v34, &unk_100057530, &unk_100046FC0);
  (*(v22 + 8))(v35, v10);
  swift_deallocPartialClassInstance();
  return v5;
}

unint64_t sub_100027088()
{
  result = qword_100057548;
  if (!qword_100057548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057548);
  }

  return result;
}

uint64_t type metadata accessor for SplunkEventOffloader(uint64_t a1)
{
  result = qword_10005A490;
  if (!qword_10005A490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100027128()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_jsonEndpoint;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100007E2C(v0 + OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_token, &unk_100057530, &unk_100046FC0);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000271C0()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_jsonEndpoint;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100007E2C(v0 + OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_token, &unk_100057530, &unk_100046FC0);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100027268(uint64_t a1, unint64_t a2)
{
  v5 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  result = __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v9)
    {
      if (a1 == a1 >> 32)
      {
        return result;
      }
    }

    else if ((a2 & 0xFF000000000000) == 0)
    {
      return result;
    }

LABEL_9:
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v2;
    v11[5] = a1;
    v11[6] = a2;

    sub_100007F28(a1, a2);
    sub_1000200E8(0, 0, v8, &unk_100046FF0, v11);
  }

  if (v9 == 2 && *(a1 + 16) != *(a1 + 24))
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1000273D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000273F8, 0, 0);
}

uint64_t sub_1000273F8()
{
  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  sub_100028E80();

  sub_1000287B8(v1, 1uLL);

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1000287B4;
  v4 = v0[3];
  v3 = v0[4];

  return sub_1000236FC(v4, v3);
}

uint64_t sub_1000274DC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007EAC;

  return sub_1000273D4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_100027584(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = a1;
  v10[6] = a2;

  sub_100007F28(a1, a2);
  sub_1000200E8(0, 0, v8, &unk_100047000, v10);
}

uint64_t sub_1000276B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1000073F4;

  return sub_1000236FC(a5, a6);
}

uint64_t sub_10002775C()
{
  swift_unknownObjectRelease();

  sub_10000803C(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000277A4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007EAC;

  return sub_1000276B0(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10002784C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = a1;
  v10[6] = a2;

  sub_10001A334(a1, a2, sub_100007F28);
  sub_1000200E8(0, 0, v8, &unk_100047010, v10);
}

uint64_t sub_10002798C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000279B0, 0, 0);
}

uint64_t sub_1000279B0()
{
  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  sub_100028E80();

  sub_1000287B8(v1, 1uLL);

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_100027A90;
  v4 = v0[3];
  v3 = v0[4];

  return sub_1000236FC(v4, v3);
}

uint64_t sub_100027A90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100027B84()
{
  swift_unknownObjectRelease();

  sub_10001A334(*(v0 + 40), *(v0 + 48), sub_10000803C);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100027BE0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007EAC;

  return sub_10002798C(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_100027C8C()
{
  result = qword_100057560;
  if (!qword_100057560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057560);
  }

  return result;
}

uint64_t sub_100027CE4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = a1;
  v10[6] = a2;

  sub_100007F28(a1, a2);
  sub_1000200E8(0, 0, v8, &unk_1000471F8, v10);
}

uint64_t sub_100027E10(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = a1;
  v10[6] = a2;

  sub_10001A334(a1, a2, sub_100007F28);
  sub_1000200E8(0, 0, v8, &unk_1000471F0, v10);
}

void sub_100027F8C(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_100028078(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100028078(uint64_t a1)
{
  if (!qword_100057390)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100057390);
    }
  }
}

unint64_t sub_1000280D0()
{
  result = qword_100057708;
  if (!qword_100057708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057708);
  }

  return result;
}

uint64_t sub_100028124(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 protectionSpace];
  v7 = [v6 authenticationMethod];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    v19 = [a1 protectionSpace];
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v14 = [a1 protectionSpace];

    if ((v13 & 1) == 0)
    {
      v15 = *(a3 + 16);
      v16 = a3;
      v17 = 1;
      v18 = 0;
      goto LABEL_9;
    }
  }

  v18 = *(a2 + OBJC_IVAR____TtC14splunkloggingdP33_F073D0EF6A22BE81F4E8780E926B09A722MTLSURLSessionDelegate_cred);
  v15 = *(a3 + 16);
  v16 = a3;
  v17 = 0;
LABEL_9:

  return v15(v16, v17, v18);
}

uint64_t sub_1000282B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100028308()
{
  result = qword_100056860;
  if (!qword_100056860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100056860);
  }

  return result;
}

uint64_t sub_100028354()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100028394()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  notify_cancel(*(v2 + 16));
  if (qword_10005A250 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006C6C(v3, qword_10005A258);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received acdc cert expiry notification.", v6, 2u);
  }

  return (*(*v1 + 128))(1);
}

uint64_t sub_1000284C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000284DC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000073F4;

  return sub_10002798C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_100028584()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000285BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000285F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100028690;

  return sub_100022B7C(a1);
}

uint64_t sub_100028690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

atomic_ullong *sub_1000287B8(uint64_t a1, unint64_t a2)
{
  result = (*(*a1 + 136))();
  atomic_fetch_add_explicit(result, a2, memory_order_relaxed);
  return result;
}

uint64_t sub_100028804@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd10Statistics_startTime;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10002895C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_10002899C(a1);
  return v2;
}

uint64_t sub_10002899C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd10Statistics_startTime;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1 + v3, a1, v4);
  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_droppedEvents) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_processedEvents) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_skippedEvents) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_crashReports) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_jetsamReports) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_panicReports) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_timerOffloads) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_directOffloads) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpRequests) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpErrors) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_splunkErrors) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_totalBytes) = v17;
  sub_100001FDC(&qword_100057758, qword_100047228);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = -1;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_minimumBytes) = v18;
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  (*(v5 + 8))(a1, v4);
  *(v19 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_maximumBytes) = v19;
  return v1;
}

uint64_t sub_100028C54()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd10Statistics_startTime;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100028D94()
{
  sub_100028C54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100028DEC()
{
  v0 = type metadata accessor for Date();
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  type metadata accessor for Statistics(0);
  v3 = swift_allocObject();
  result = sub_10002899C(v2);
  qword_10005B098 = v3;
  return result;
}

uint64_t *sub_100028E80()
{
  if (qword_10005A4A0 != -1)
  {
    swift_once();
  }

  return &qword_10005B098;
}

uint64_t sub_100028ED0()
{
  if (qword_10005A4A0 != -1)
  {
    swift_once();
  }
}

void sub_100028F2C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  Date.timeIntervalSince1970.getter();
  v9 = round((v7 - v8) * 1000.0);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(394);
    v10._countAndFlagsBits = 0xD000000000000017;
    v10._object = 0x8000000100043F80;
    String.append(_:)(v10);
    Double.write<A>(to:)();
    v11._countAndFlagsBits = 0xD00000000000001DLL;
    v11._object = 0x8000000100043FA0;
    String.append(_:)(v11);
    v44 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_processedEvents) + 136))();
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._object = 0x8000000100043FC0;
    v13._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v13);
    v44 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_droppedEvents) + 136))();
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._object = 0x8000000100043FE0;
    v15._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v15);
    v44 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_skippedEvents) + 136))();
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17._object = 0x8000000100044000;
    v17._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v17);
    v44 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_crashReports) + 136))();
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._object = 0x8000000100044020;
    v19._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v19);
    v44 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_jetsamReports) + 136))();
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21._object = 0x8000000100044040;
    v21._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v21);
    v44 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_panicReports) + 136))();
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._object = 0x8000000100044060;
    v23._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v23);
    v44 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_timerOffloads) + 136))();
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25._object = 0x8000000100044080;
    v25._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v25);
    v44 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_directOffloads) + 136))();
    v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v26);

    v27._object = 0x80000001000440A0;
    v27._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v27);
    v44 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpRequests) + 136))();
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._object = 0x80000001000440C0;
    v29._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v29);
    v44 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpErrors) + 136))();
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    v31._object = 0x80000001000440E0;
    v31._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v31);
    v44 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_splunkErrors) + 136))();
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v33._object = 0x8000000100044100;
    v33._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v33);
    v44 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_totalBytes) + 136))();
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35._object = 0x8000000100044120;
    v35._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v35);
    v36 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_minimumBytes);
    os_unfair_lock_lock((v36 + 24));
    v37 = *(v36 + 16);
    os_unfair_lock_unlock((v36 + 24));
    v44 = v37;
    v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v38);

    v39._object = 0x8000000100044140;
    v39._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v39);
    v40 = *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_maximumBytes);
    os_unfair_lock_lock((v40 + 24));
    v41 = *(v40 + 16);
    os_unfair_lock_unlock((v40 + 24));
    v44 = v41;
    v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v42);

    (*(v3 + 8))(v5, v2);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t type metadata accessor for Statistics(uint64_t a1)
{
  result = qword_10005A530;
  if (!qword_10005A530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000297F0(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000298B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000298D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_100057870)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100057870);
    }
  }
}

uint64_t sub_100029954()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_10005A548);
  sub_100006C6C(v0, qword_10005A548);
  return Logger.init(subsystem:category:)();
}

void sub_1000299D4()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_serialNumber_obj();

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    qword_10005A568 = v3;
    qword_10005A570 = v5;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029A58()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_releaseType_obj();

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      qword_10005A580 = v3;
      qword_10005A588 = v5;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100029AD4()
{
  if (qword_10005A578 != -1)
  {
    swift_once();
  }

  sub_10001A48C();

  v0 = StringProtocol.contains<A>(_:)();

  byte_10005A598 = v0 & 1;
  return result;
}

uint64_t sub_100029BB8()
{
  type metadata accessor for HostNameWrapper();
  v0 = swift_allocObject();
  result = sub_10002A098();
  qword_10005A5A8 = v0;
  return result;
}

uint64_t sub_100029BF4()
{
  result = sub_100029C18();
  qword_10005B118 = result;
  unk_10005B120 = v1;
  return result;
}

uint64_t sub_100029C18()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = CFPreferencesCopyValue(v0, kCFPreferencesAnyApplication, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);

  if (v1 && (v14[2] = v1, (swift_dynamicCast() & 1) != 0))
  {
    v2 = v14[0];
    v3 = v14[1];
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006C6C(v4, qword_10005A548);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v14[0] = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_10000604C(v2, v3, v14);
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_10000604C(0xD000000000000014, 0x8000000100044270, v14);
      _os_log_impl(&_mh_execute_header, v5, v6, "Found value of %{public}s for key %{public}s.", v7, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006C6C(v8, qword_10005A548);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14[0] = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10000604C(0xD000000000000014, 0x8000000100044270, v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "Couldn't find value for key %{public}s.", v11, 0xCu);
      sub_100006D94(v12);
    }

    return 0;
  }

  return v2;
}

uint64_t *sub_100029F28()
{
  if (qword_10005A5B0 != -1)
  {
    swift_once();
  }

  return &qword_10005B118;
}

uint64_t sub_100029F78()
{
  String.utf8CString.getter();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    has_internal_diagnostics = 1;
  }

  else
  {
    String.utf8CString.getter();
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
  }

  byte_10005A5C0 = has_internal_diagnostics;
  return result;
}

uint64_t sub_10002A00C()
{
  sub_100001FDC(&qword_100057AC8, &qword_100047590);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  qword_10005A5D0 = result;
  return result;
}

uint64_t sub_10002A050()
{
  sub_100001FDC(&qword_100057AD0, &qword_100047598);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 1;
  qword_10005A5E0 = result;
  return result;
}

uint64_t sub_10002A098()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin(v2);
  v51 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTimeInterval();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v47 = (v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for DispatchTime();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v36[0]);
  v36[1] = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v43 = *(v11 - 8);
  v44 = v11;
  __chkstk_darwin(v11);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v0 + 128) = 0x404E000000000000;
  v14 = [objc_opt_self() processInfo];
  v15 = [v14 hostName];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (String.count.getter() <= 0)
  {

    v18 = 0x8000000100044560;
    v16 = 0xD000000000000012;
  }

  if (qword_10005A540 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006C6C(v19, qword_10005A548);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_10000604C(v16, v18, aBlock);
    _os_log_impl(&_mh_execute_header, v20, v21, "Setting initial hostname to %{public}s", v22, 0xCu);
    sub_100006D94(v23);
  }

  sub_100001FDC(&qword_100057AD8, &qword_1000475A0);
  v24 = swift_allocObject();
  *(v24 + 32) = 0;
  *(v24 + 16) = v16;
  *(v24 + 24) = v18;
  *(v1 + 112) = v24;
  sub_1000075EC(0, &qword_100057AE0, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002FF34(&qword_100057AE8, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_100001FDC(&qword_100057AF0, qword_1000475A8);
  sub_10003002C(&qword_100057AF8, &qword_100057AF0, qword_1000475A8, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v38 + 104))(v37, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v39);
  v25 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000075EC(0, &unk_100056C50, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002FF34(&qword_100056B28, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_100001FDC(&qword_100056B30, &unk_100045BF0);
  sub_10003002C(&qword_100056B38, &qword_100056B30, &unk_100045BF0, &protocol conformance descriptor for [A]);
  v26 = v40;
  v27 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v41 + 8))(v26, v27);
  *(v1 + 120) = v28;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v29 = v45;
  static DispatchTime.now()();
  v30 = v47;
  *v47 = 0;
  v32 = v49;
  v31 = v50;
  (*(v49 + 104))(v30, enum case for DispatchTimeInterval.nanoseconds(_:), v50);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  (*(v32 + 8))(v30, v31);
  (*(v46 + 8))(v29, v48);
  aBlock[4] = sub_10003000C;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000040C8;
  aBlock[3] = &unk_100052A58;
  v33 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = v51;
  sub_10000410C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v33);
  (*(v52 + 8))(v34, v53);
  (*(v43 + 8))(v13, v44);

  OS_dispatch_source.activate()();

  swift_unknownObjectRelease();
  return v1;
}

void sub_10002A9AC(uint64_t a1)
{
  v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v2 + 16) = 256;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 32) = 0u;
  v3 = gethostname((v2 + 32), 0x100uLL);
  if (v3)
  {
    v4 = v3;

    v5 = errno.getter();
    if (strerror(v5))
    {
      v6 = String.init(cString:)();
      v8 = v7;
    }

    else
    {
      v8 = 0xE300000000000000;
      v6 = 7104878;
    }

    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006C6C(v13, qword_10005A548);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 67109635;
      *(v16 + 4) = v4;
      *(v16 + 8) = 1024;
      *(v16 + 10) = v5;
      *(v16 + 14) = 2081;
      v18 = sub_10000604C(v6, v8, &v19);

      *(v16 + 16) = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to fetch darwin hostname with retval: %d, errno: %d, error: %{private}s", v16, 0x18u);
      sub_100006D94(v17);
    }

    else
    {
    }
  }

  else
  {
    sub_10002FA08(v2);
    v10 = v9;

    if (v10)
    {
      v12 = *(a1 + 112);
      __chkstk_darwin(v11);
      os_unfair_lock_lock((v12 + 32));
      sub_100030074((v12 + 16));
      os_unfair_lock_unlock((v12 + 32));
    }
  }
}

uint64_t sub_10002AC4C()
{

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10002AC8C()
{
  if (qword_10005A5A0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10005A5A8 + 112);
  os_unfair_lock_lock((v0 + 32));
  v1 = *(v0 + 16);

  os_unfair_lock_unlock((v0 + 32));
  return v1;
}

uint64_t sub_10002AD10()
{
  v8 = 0;
  if (!sysctlbyname("kern.bootsessionuuid", 0, &v8, 0, 0))
  {
    v0 = v8;
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    if (v8)
    {
      v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v1[2] = v0;
      bzero(v1 + 4, v0);
    }

    else
    {
      v1 = _swiftEmptyArrayStorage;
    }

    if (!sysctlbyname("kern.bootsessionuuid", v1 + 4, &v8, 0, 0))
    {
      v4 = sub_10002FA08(v1);

      return v4;
    }
  }

  _StringGuts.grow(_:)(55);
  v2._object = 0x80000001000442B0;
  v2._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v2);
  v7 = errno.getter();
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = 0xE000000000000000;
  sub_1000223BC();
  swift_allocError();
  *v5 = HIDWORD(v7);
  *(v5 + 8) = 0xE000000000000000;
  *(v5 + 16) = 0;
  swift_willThrow();
  return v4;
}

uint64_t sub_10002AF0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports);
  sub_10002FA54(v1, *(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports + 8));
  return v1;
}

uint64_t sub_10002AF6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_crashDir);

  return v1;
}

_BYTE *sub_10002AFA8(char a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v14 = swift_allocObject();
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0)
  {
    *(v14 + 16) = a1;
    *(v14 + 17) = a2;
    sub_10002FA74(a3, v14 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_logPolicyPath);
    *(v14 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_isInternal) = a4;
    v15 = (v14 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports);
    *v15 = a5;
    v15[1] = a6;
    *(v14 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_ownCrashDeletion) = a7;
    v16 = (v14 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_crashDir);
    *v16 = a8;
    v16[1] = a9;
  }

  else
  {

    sub_1000223BC();
    swift_allocError();
    *v17 = 0xD000000000000032;
    *(v17 + 8) = 0x80000001000442F0;
    *(v17 + 16) = 2;
    swift_willThrow();
    sub_10002FA64(a5, a6);
    sub_100007E2C(a3, &unk_100056B40, &unk_100045890);
    swift_deallocPartialClassInstance();
  }

  return v14;
}

_BYTE *sub_10002B174(char a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  if (qword_10005A5B8 != -1)
  {
    v21 = a8;
    swift_once();
    a8 = v21;
  }

  if (byte_10005A5C0)
  {
    *(v9 + 16) = a1;
    *(v9 + 17) = a2;
    v16 = a8;
    sub_10002FA74(a3, v9 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_logPolicyPath);
    *(v9 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_isInternal) = a4;
    v17 = (v9 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports);
    *v17 = a5;
    v17[1] = a6;
    *(v9 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_ownCrashDeletion) = a7;
    v18 = (v9 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_crashDir);
    *v18 = v16;
    v18[1] = a9;
  }

  else
  {

    sub_1000223BC();
    swift_allocError();
    *v19 = 0xD000000000000032;
    *(v19 + 8) = 0x80000001000442F0;
    *(v19 + 16) = 2;
    swift_willThrow();
    sub_10002FA64(a5, a6);
    sub_100007E2C(a3, &unk_100056B40, &unk_100045890);
    swift_deallocPartialClassInstance();
  }

  return v9;
}

uint64_t sub_10002B360()
{
  v1 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  __chkstk_darwin(v1);
  v3 = &v17 - v2;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(115);
  v4._countAndFlagsBits = 0xD000000000000017;
  v4._object = 0x8000000100044330;
  String.append(_:)(v4);
  v18 = *(v0 + 16);
  sub_100001FDC(&qword_100057890, &qword_1000472C8);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0xD000000000000018;
  v6._object = 0x8000000100044350;
  String.append(_:)(v6);
  v18 = *(v0 + 17);
  v7._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v7);

  v8._object = 0x8000000100044370;
  v8._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v8);
  sub_10001102C(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_logPolicyPath, v3, &unk_100056B40, &unk_100045890);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD00000000000001DLL;
  v10._object = 0x8000000100044390;
  String.append(_:)(v10);
  if (*(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 0x7265746E4973690ALL;
  v14._object = 0xED0000203A6C616ELL;
  String.append(_:)(v14);
  v18 = *(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_isInternal);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  return v19;
}

uint64_t sub_10002B5C0()
{
  sub_100007E2C(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_logPolicyPath, &unk_100056B40, &unk_100045890);
  sub_10002FA64(*(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports), *(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports + 8));

  return v0;
}

uint64_t sub_10002B620()
{
  sub_100007E2C(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_logPolicyPath, &unk_100056B40, &unk_100045890);
  sub_10002FA64(*(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports), *(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports + 8));

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10002B6E0()
{
  if (qword_10005A5D8 != -1)
  {
    swift_once();
  }

  v0 = qword_10005A5E0;
  os_unfair_lock_lock((qword_10005A5E0 + 20));
  v1 = *(v0 + 16);
  os_unfair_lock_unlock((v0 + 20));
  return v1;
}

void sub_10002B74C(char a1)
{
  if (qword_10005A540 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006C6C(v2, qword_10005A548);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Setting canLogToStdout: %{BOOL}d", v5, 8u);
  }

  if (qword_10005A5D8 != -1)
  {
    swift_once();
  }

  v6 = qword_10005A5E0;
  os_unfair_lock_lock((qword_10005A5E0 + 20));
  *(v6 + 16) = a1 & 1;

  os_unfair_lock_unlock((v6 + 20));
}

void sub_10002B894(uint64_t a1)
{
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0)
  {
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006C6C(v2, qword_10005A548);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315138;

      sub_100001FDC(&qword_100057898, qword_1000472D0);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000604C(v7, v8, &v13);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Setting testing mock: %s", v5, 0xCu);
      sub_100006D94(v6);
    }

    if (qword_10005A5C8 != -1)
    {
      v10 = swift_once();
    }

    v11 = qword_10005A5D0;
    __chkstk_darwin(v10);
    os_unfair_lock_lock((v11 + 24));
    sub_10002FAE4((v11 + 16));
    os_unfair_lock_unlock((v11 + 24));
    if (v1)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000223BC();
    swift_allocError();
    *v12 = 0xD000000000000031;
    *(v12 + 8) = 0x80000001000443B0;
    *(v12 + 16) = 2;
    swift_willThrow();
  }
}

void sub_10002BB40()
{
  if (qword_10005A540 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006C6C(v0, qword_10005A548);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unsetting testing mock", v3, 2u);
  }

  if (qword_10005A5C8 != -1)
  {
    swift_once();
  }

  v4 = qword_10005A5D0;
  os_unfair_lock_lock((qword_10005A5D0 + 24));

  *(v4 + 16) = 0;

  os_unfair_lock_unlock((v4 + 24));
}

uint64_t sub_10002BC78()
{
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0 == 1)
  {
    if (qword_10005A5C8 != -1)
    {
      swift_once();
    }

    v0 = qword_10005A5D0;
    os_unfair_lock_lock((qword_10005A5D0 + 24));
    v1 = *(v0 + 16);

    os_unfair_lock_unlock((v0 + 24));
    if (v1)
    {
      v2 = *(v1 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_isInternal);
      if (v2 == 2)
      {

        LOBYTE(v2) = 1;
      }

      else
      {
        if (qword_10005A540 != -1)
        {
          swift_once();
        }

        v3 = type metadata accessor for Logger();
        sub_100006C6C(v3, qword_10005A548);
        v4 = Logger.logObject.getter();
        v5 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          *v6 = 67109120;
          *(v6 + 4) = v2 & 1;
          _os_log_impl(&_mh_execute_header, v4, v5, "Found mocked value for isAppleInternal, returning %{BOOL}d", v6, 8u);
        }
      }
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t sub_10002BE40()
{
  if (qword_10005A560 != -1)
  {
    swift_once();
  }

  v0 = qword_10005A568;

  return v0;
}

uint64_t sub_10002BEAC()
{
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0 != 1)
  {
    goto LABEL_9;
  }

  if (qword_10005A5C8 != -1)
  {
    swift_once();
  }

  v0 = qword_10005A5D0;
  os_unfair_lock_lock((qword_10005A5D0 + 24));
  v1 = *(v0 + 16);

  os_unfair_lock_unlock((v0 + 24));
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = *(v1 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_ownCrashDeletion);
  if (v2 == 2)
  {

LABEL_9:
    if (qword_10005A590 != -1)
    {
      swift_once();
    }

    LOBYTE(v2) = byte_10005A598;
    return v2 & 1;
  }

  if (qword_10005A540 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006C6C(v4, qword_10005A548);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v2 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Found mocked value for shouldOwnCrashDeletion, returning %{BOOL}d", v7, 8u);
  }

  return v2 & 1;
}

uint64_t sub_10002C098()
{
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0 == 1)
  {
    if (qword_10005A5C8 != -1)
    {
      swift_once();
    }

    v0 = qword_10005A5D0;
    os_unfair_lock_lock((qword_10005A5D0 + 24));
    v1 = *(v0 + 16);

    os_unfair_lock_unlock((v0 + 24));
    if (v1)
    {
      v2 = *(v1 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_crashDir + 8);
      if (v2)
      {
        v3 = *(v1 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_crashDir);
        v4 = qword_10005A540;

        if (v4 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_100006C6C(v5, qword_10005A548);

        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v12 = v9;
          *v8 = 136315138;
          *(v8 + 4) = sub_10000604C(v3, v2, &v12);
          _os_log_impl(&_mh_execute_header, v6, v7, "Found mocked value for crash dir, returning %s", v8, 0xCu);
          sub_100006D94(v9);
        }

        goto LABEL_16;
      }
    }
  }

  v10 = [objc_opt_self() sharedInstance];
  v6 = [v10 pathSubmission];

  if (!v6)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_16:

  return v3;
}

uint64_t sub_10002C314(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedClient];
  *(swift_allocObject() + 16) = v4;
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0 != 1)
  {
    goto LABEL_13;
  }

  if (qword_10005A5C8 != -1)
  {
    swift_once();
  }

  v5 = qword_10005A5D0;
  os_unfair_lock_lock((qword_10005A5D0 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports);
    if (v7)
    {
      v8 = qword_10005A540;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100006C6C(v9, qword_10005A548);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Found mocked value for OSAnalytics registration, registering for mock", v12, 2u);
      }
    }

    else
    {
      v7 = sub_10002FB64;
    }

    (v7)(a1, a2);
  }

  else
  {
LABEL_13:
    (sub_10002FB64)(a1, a2);
  }
}

uint64_t sub_10002C584(uint64_t a1)
{
  v1 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v18 = 0;
  v3 = [v1 dataWithJSONObject:isa options:0 error:&v18];

  v4 = v18;
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006C6C(v7, qword_10005A548);
    swift_errorRetain();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v10 = 136446466;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = sub_10000604C(v11, v12, &v18);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;
      v14 = Dictionary.description.getter();
      v16 = sub_10000604C(v14, v15, &v18);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "JSON ERROR: %{public}s, payload:\n%{public}s", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  return v5;
}

uint64_t sub_10002C84C(uint64_t a1)
{
  v1 = 7104878;
  if (a1)
  {
    v2 = sub_10002C584(a1);
    if (v3 >> 60 != 15)
    {
      v4 = v2;
      v5 = v3;
      sub_100007F28(v2, v3);
      v6 = sub_100010724(v4, v5);
      if (v7)
      {
        v1 = v6;
        sub_100010C2C(v4, v5);
      }

      else
      {
        v12 = v4;
        v13 = v5;
        sub_100007F28(v4, v5);
        sub_100001FDC(&unk_1000578A0, &unk_100045C10);
        if (swift_dynamicCast())
        {
          sub_100010C50(v10, v14);
          sub_100010C68(v14, v15);
          HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
          sub_100010C2C(v4, v5);
          if (HasContiguous)
          {
            sub_100010C68(v14, v15);
            dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
            sub_100010C2C(v4, v5);
            v1 = *&v10[0];
            sub_100006D94(v14);
            return v1;
          }

          sub_100006D94(v14);
        }

        else
        {
          sub_100010C2C(v4, v5);
          v11 = 0;
          memset(v10, 0, sizeof(v10));
          sub_100007E2C(v10, &qword_100056C90, &qword_1000471D0);
        }

        v1 = sub_10000FDA4(v4, v5);
      }

      sub_100010C2C(v4, v5);
    }
  }

  return v1;
}

uint64_t sub_10002CA28(uint64_t a1, unint64_t a2)
{
  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v21[0] = 0;
  v6 = [v4 JSONObjectWithData:isa options:0 error:v21];

  if (v6)
  {
    v7 = v21[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100001FDC(&qword_1000578B0, &unk_100045C00);
    if (swift_dynamicCast())
    {
      return v20;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = v21[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006C6C(v10, qword_10005A548);
    swift_errorRetain();
    sub_100007F28(a1, a2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    sub_10000803C(a1, a2);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v13 = 136446466;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_10000604C(v14, v15, v21);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      v17 = Data.description.getter();
      v19 = sub_10000604C(v17, v18, v21);

      *(v13 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "JSON ERROR: %{public}s, payload:\n%{public}s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }
}

unint64_t sub_10002CD18(uint64_t a1, uint64_t a2)
{
  *&v31 = a1;
  *(&v31 + 1) = a2;
  *&v30[0] = 10;
  *(&v30[0] + 1) = 0xE100000000000000;
  sub_10002FBD4();
  sub_10002FC28();
  v2 = Collection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)();
  v3 = v2[2];
  if (v3 != 2)
  {

    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006C6C(v18, qword_10005A548);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_20;
    }

    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v3;
    v22 = "Got os analytics event with unexpected number of elements: %ld";
    v23 = v20;
    v24 = v19;
    v25 = v21;
    v26 = 12;
    goto LABEL_19;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2;
  sub_100007F28(v4, v5);
  v7 = sub_10002CA28(v4, v5);
  sub_10000803C(v4, v5);
  if (!v7)
  {
    goto LABEL_16;
  }

  if (v6[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = v6[6];
  v9 = v6[7];
  sub_100007F28(v8, v9);

  v10 = sub_10002CA28(v8, v9);
  sub_10000803C(v8, v9);
  if (!v10)
  {
LABEL_16:

    if (qword_10005A540 == -1)
    {
LABEL_17:
      v27 = type metadata accessor for Logger();
      sub_100006C6C(v27, qword_10005A548);
      v19 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v19, v28))
      {
LABEL_20:

        return 0;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v22 = "Found 2 elements in os analytics event, but failed to convert to json";
      v23 = v28;
      v24 = v19;
      v25 = v29;
      v26 = 2;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v24, v23, v22, v25, v26);

      goto LABEL_20;
    }

LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  sub_100001FDC(&unk_100056C70, &unk_100046890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100045B60;
  *(inited + 32) = 0x726564616568;
  *(inited + 40) = 0xE600000000000000;
  v12 = sub_100001FDC(&qword_1000578B0, &unk_100045C00);
  *(inited + 48) = v7;
  *(inited + 72) = v12;
  *(inited + 80) = 2036625250;
  *(inited + 120) = v12;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v10;

  v13 = sub_100010AFC(inited);
  swift_setDeallocating();
  sub_100001FDC(&unk_100056C80, &unk_1000468A0);
  swift_arrayDestroy();
  if (*(v10 + 16) && (v14 = sub_10000FE4C(0x656D614E636F7270, 0xE800000000000000), (v15 & 1) != 0))
  {
    sub_10000717C(*(v10 + 56) + 32 * v14, &v31);

    if (swift_dynamicCast())
    {
      v32 = &type metadata for String;
      v31 = v30[0];
      sub_100010C40(&v31, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100010234(v30, 0x737365636F7270, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    }

    return v13;
  }

  else
  {

    return v13;
  }
}

uint64_t sub_10002D128@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001FDC(&qword_100056C18, &qword_100045BC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v37[-1] - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = String._bridgeToObjectiveC()();
  v37[0] = 0;
  v11 = [v9 attributesOfItemAtPath:v10 error:v37];

  v12 = v37[0];
  if (v11)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_10002FF34(&unk_1000578D0, type metadata accessor for FileAttributeKey, &unk_100047540);
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v12;

    if (*(v13 + 16) && (v16 = sub_10002F744(NSFileModificationDate, v15), (v17 & 1) != 0))
    {
      sub_10000717C(*(v13 + 56) + 32 * v16, v37);

      v18 = type metadata accessor for Date();
      v19 = swift_dynamicCast();
      v20 = *(v18 - 8);
      v21 = *(v20 + 56);
      v21(v8, v19 ^ 1u, 1, v18);
      if ((*(v20 + 48))(v8, 1, v18) != 1)
      {

        (*(v20 + 32))(a3, v8, v18);
        return (v21)(a3, 0, 1, v18);
      }
    }

    else
    {

      v23 = type metadata accessor for Date();
      (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    }

    sub_100007E2C(v8, &qword_100056C18, &qword_100045BC0);
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006C6C(v24, qword_10005A548);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_10000604C(a1, a2, v37);
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to fetch date from file attrs for '%{public}s', not setting timestamp", v27, 0xCu);
      sub_100006D94(v28);
    }
  }

  else
  {
    v29 = v37[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006C6C(v30, qword_10005A548);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37[0] = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_10000604C(a1, a2, v37);
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to fetch file attrs for '%{public}s', not setting timestamp", v33, 0xCu);
      sub_100006D94(v34);
    }
  }

  v35 = type metadata accessor for Date();
  return (*(*(v35 - 8) + 56))(a3, 1, 1, v35);
}

uint64_t sub_10002D6BC(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    return 0;
  }

  v10 = a1;
  sub_100008014(a1, a2, sub_100007F28);
  v11 = sub_100007F7C(v10, a2);
  if (!v11)
  {
    sub_10001A35C(v10, a2, 0);
    return 0;
  }

  v12 = v11;
  v13 = 0xEA00000000006570;
  v62 = &type metadata for String;
  *&v61 = a4;
  *(&v61 + 1) = a5;
  sub_100010C40(&v61, v60);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100010234(v60, 0x7865646E69, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v15 = v12;
  *&v61 = v10;
  *(&v61 + 1) = a2;
  v58 = a2;
  sub_100008014(v10, a2, sub_100007F28);
  sub_1000280D0();
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  sub_100008014(v61, *(&v61 + 1), sub_10000803C);
  v62 = &type metadata for String;
  *&v61 = v16;
  *(&v61 + 1) = v18;
  sub_100010C40(&v61, v60);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100010234(v60, 0x7974656372756F73, 0xEA00000000006570, v19);
  if (qword_10005A5B0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v20 = qword_10005B118;
    v21 = unk_10005B120;
    if (!unk_10005B120 && !*(a6 + 16))
    {
      break;
    }

    if (*(v15 + 16) && (v22 = sub_10000FE4C(0x746E657665, 0xE500000000000000), (v23 & 1) != 0) && (sub_10000717C(*(v15 + 56) + 32 * v22, &v61), sub_100001FDC(&qword_1000578B0, &unk_100045C00), (swift_dynamicCast() & 1) != 0))
    {
      v24 = *&v60[0];
    }

    else
    {
      v24 = sub_100010AFC(_swiftEmptyArrayStorage);
    }

    if (v21)
    {
      v62 = &type metadata for String;
      *&v61 = v20;
      *(&v61 + 1) = v21;
      sub_100010C40(&v61, v60);

      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_100010234(v60, 0x62614C6567617375, v13 + 1781, v25);
    }

    if (!*(a6 + 16))
    {
LABEL_35:
      v62 = sub_100001FDC(&qword_1000578B0, &unk_100045C00);
      *&v61 = v24;
      sub_100010C40(&v61, v60);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      sub_100010234(v60, 0x746E657665, 0xE500000000000000, v52);
      break;
    }

    v57 = v15;
    v13 = a6 + 64;
    v26 = 1 << *(a6 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v15 = v27 & *(a6 + 64);
    v28 = (v26 + 63) >> 6;

    v29 = 0;
    v59 = v10;
    while (v15)
    {
      v32 = v29;
LABEL_24:
      v33 = (v32 << 10) | (16 * __clz(__rbit64(v15)));
      v34 = (*(a6 + 48) + v33);
      v10 = *v34;
      v35 = v34[1];
      v36 = (*(a6 + 56) + v33);
      v37 = *v36;
      v38 = v36[1];
      v62 = &type metadata for String;
      *&v61 = v37;
      *(&v61 + 1) = v38;
      sub_100010C40(&v61, v60);

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v40 = sub_10000FE4C(v10, v35);
      v42 = v24[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_41;
      }

      v46 = v41;
      if (v24[3] >= v45)
      {
        if ((v39 & 1) == 0)
        {
          v51 = v40;
          sub_1000103F0();
          v40 = v51;
        }
      }

      else
      {
        sub_10000FF7C(v45, v39);
        v40 = sub_10000FE4C(v10, v35);
        if ((v46 & 1) != (v47 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v15 &= v15 - 1;
      if (v46)
      {
        v30 = v40;

        v31 = (v24[7] + 32 * v30);
        sub_100006D94(v31);
        sub_100010C40(v60, v31);
      }

      else
      {
        v24[(v40 >> 6) + 8] |= 1 << v40;
        v48 = (v24[6] + 16 * v40);
        *v48 = v10;
        v48[1] = v35;
        sub_100010C40(v60, (v24[7] + 32 * v40));
        v49 = v24[2];
        v44 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v44)
        {
          goto LABEL_42;
        }

        v24[2] = v50;
      }

      v29 = v32;
      v10 = v59;
    }

    while (1)
    {
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v32 >= v28)
      {

        v15 = v57;
        goto LABEL_35;
      }

      v15 = *(v13 + 8 * v32);
      ++v29;
      if (v15)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  v53 = sub_10002C584(v15);
  if (v54 >> 60 == 15)
  {
    sub_10001A35C(v10, v58, 0);

    return 0;
  }

  v55 = v53;
  sub_10001A35C(v10, v58, 0);

  return v55;
}

uint64_t sub_10002DC90@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  type metadata accessor for SecureConfigParameters();
  v10 = static SecureConfigParameters.loadContents()();
  if (v1)
  {
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006C6C(v11, qword_10005A548);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to load secure config logPolicyPath with exception %{public}@", v14, 0xCu);
      sub_100007E2C(v15, &qword_100056C40, &unk_100045BE0);
    }

    if (qword_10005A590 != -1)
    {
      swift_once();
    }

    if (byte_10005A598 == 1)
    {
      return swift_willThrow();
    }

    else
    {
      v25 = type metadata accessor for URL();
      (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
    }
  }

  else
  {
    v18 = v10;
    v29 = SecureConfigParameters.logPolicyPath.getter();
    v20 = v19;

    if (v20)
    {
      v21 = type metadata accessor for URL();
      v22 = *(v21 - 8);
      v28 = a1;
      v23 = *(v22 + 56);
      v23(v9, 1, 1, v21);
      (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
      v24 = v28;
      URL.init(filePath:directoryHint:relativeTo:)();
      return (v23)(v24, 0, 1, v21);
    }

    else
    {
      v26 = type metadata accessor for URL();
      return (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
    }
  }
}

uint64_t sub_10002E07C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v6 = __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v52 = &v41 - v10;
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0 != 1)
  {
    goto LABEL_11;
  }

  if (qword_10005A5C8 != -1)
  {
    swift_once();
  }

  v15 = qword_10005A5D0;
  os_unfair_lock_lock((qword_10005A5D0 + 24));
  v16 = *(v15 + 16);

  os_unfair_lock_unlock((v15 + 24));
  if (v16)
  {
    v45 = a1;
    sub_10002FD00(v16 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_logPolicyPath, v12);
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006C6C(v17, qword_10005A548);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v43 = v20;
      v44 = swift_slowAlloc();
      v51[0] = v44;
      *v20 = 136446210;
      swift_beginAccess();
      v42 = v18;
      sub_10001102C(v12, v52, &unk_100056B40, &unk_100045890);
      v21 = String.init<A>(describing:)();
      v23 = sub_10000604C(v21, v22, v51);

      v24 = v43;
      *(v43 + 1) = v23;
      v25 = v19;
      v26 = v42;
      _os_log_impl(&_mh_execute_header, v42, v25, "Found mocked value for logPolicyPath, returning %{public}s", v24, 0xCu);
      sub_100006D94(v44);
    }

    else
    {
    }

    a1 = v45;
  }

  else
  {
LABEL_11:
    sub_10002DC90(v8);
    if (v1)
    {
      v27 = v12;
      return sub_100007E2C(v27, &unk_100056B40, &unk_100045890);
    }

    sub_10002FC90(v8, v12);
  }

  swift_beginAccess();
  if ((*(v14 + 48))(v12, 1, v13))
  {
    swift_endAccess();
  }

  else
  {
    v49 = 0xD000000000000014;
    v50 = 0x80000001000443F0;
    v29 = v46;
    v28 = v47;
    v30 = v48;
    (*(v47 + 104))(v46, enum case for URL.DirectoryHint.inferFromPath(_:), v48);
    sub_10001A48C();
    URL.append<A>(component:directoryHint:)();
    swift_endAccess();
    (*(v28 + 8))(v29, v30);
  }

  if (qword_10005A540 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006C6C(v31, qword_10005A548);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v51[0] = v35;
    *v34 = 136446210;
    sub_10001102C(v12, v52, &unk_100056B40, &unk_100045890);
    v36 = String.init<A>(describing:)();
    v38 = a1;
    v39 = sub_10000604C(v36, v37, v51);

    *(v34 + 4) = v39;
    a1 = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "audit table path: found value of %{public}s from Secure Config", v34, 0xCu);
    sub_100006D94(v35);
  }

  sub_10001102C(v12, a1, &unk_100056B40, &unk_100045890);
  v27 = v12;
  return sub_100007E2C(v27, &unk_100056B40, &unk_100045890);
}

uint64_t sub_10002E6E4()
{
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0 != 1)
  {
    goto LABEL_12;
  }

  if (qword_10005A5C8 != -1)
  {
    swift_once();
  }

  v1 = qword_10005A5D0;
  os_unfair_lock_lock((qword_10005A5D0 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  if (v2)
  {
    v3 = *(v2 + 16);
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006C6C(v4, qword_10005A548);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32 = v8;
      *v7 = 136446210;
      sub_100001FDC(&qword_100057890, &qword_1000472C8);
      v9 = String.init<A>(describing:)();
      v11 = sub_10000604C(v9, v10, &v32);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Found mocked value for logFilteringEnforced: %{public}s", v7, 0xCu);
      sub_100006D94(v8);
    }
  }

  else
  {
LABEL_12:
    type metadata accessor for SecureConfigParameters();
    v12 = static SecureConfigParameters.loadContents()();
    if (v0)
    {
      if (qword_10005A540 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100006C6C(v13, qword_10005A548);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v3))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138543362;
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v17;
        *v16 = v17;
        _os_log_impl(&_mh_execute_header, v14, v3, "SecureConfig error for logFilteringEnforced: %{public}@", v15, 0xCu);
        sub_100007E2C(v16, &qword_100056C40, &unk_100045BE0);
      }

      if (qword_10005A590 != -1)
      {
        swift_once();
      }

      if (byte_10005A598 == 1)
      {
        swift_willThrow();
        return v3 & 1;
      }

      v3 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v18 = v12;
      v3 = SecureConfigParameters.logFilteringEnforced.getter();

      if (qword_10005A540 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100006C6C(v19, qword_10005A548);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v32 = v23;
        *v22 = 136446210;
        sub_100001FDC(&qword_100057890, &qword_1000472C8);
        v24 = String.init<A>(describing:)();
        v26 = sub_10000604C(v24, v25, &v32);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "logFilteringEnforced: found value of %{public}s from Secure Config", v22, 0xCu);
        sub_100006D94(v23);
      }
    }
  }

  if (v3 == OS_LOG_TYPE_DEBUG)
  {
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006C6C(v27, qword_10005A548);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Got no value from SecureConfig for logFilteringEnforced, returning false", v30, 2u);
    }

    v3 = OS_LOG_TYPE_DEFAULT;
  }

  return v3 & 1;
}

uint64_t sub_10002ECA4()
{
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0 != 1)
  {
    goto LABEL_12;
  }

  if (qword_10005A5C8 != -1)
  {
    swift_once();
  }

  v0 = qword_10005A5D0;
  os_unfair_lock_lock((qword_10005A5D0 + 24));
  v1 = *(v0 + 16);

  os_unfair_lock_unlock((v0 + 24));
  if (v1)
  {
    v2 = *(v1 + 17);
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006C6C(v3, qword_10005A548);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24[0] = v7;
      *v6 = 136446210;
      sub_100001FDC(&qword_100057890, &qword_1000472C8);
      v8 = String.init<A>(describing:)();
      v10 = sub_10000604C(v8, v9, v24);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Found mocked value for crashRedactionEnabled: %{public}s", v6, 0xCu);
      sub_100006D94(v7);
    }
  }

  else
  {
LABEL_12:
    type metadata accessor for SecureConfigParameters();
    v11 = static SecureConfigParameters.loadContents()();
    v2 = SecureConfigParameters.crashRedactionEnabled.getter();

    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006C6C(v12, qword_10005A548);
    v4 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136446210;
      sub_100001FDC(&qword_100057890, &qword_1000472C8);
      v16 = String.init<A>(describing:)();
      v18 = sub_10000604C(v16, v17, v24);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v4, v13, "crashRedactionEnabled: found value of %{public}s from Secure Config", v14, 0xCu);
      sub_100006D94(v15);
    }
  }

  if (v2 == 2)
  {
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006C6C(v19, qword_10005A548);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Got no value from SecureConfig for crashRedactionEnabled, returning false", v22, 2u);
    }

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_10002F224(uint64_t a1)
{
  v1 = URLRequest.httpBody.getter();
  if (v2 >> 60 == 15)
  {
    return 0x3E6C696E3CLL;
  }

  v4 = v1;
  v5 = v2;
  sub_10002F31C(v1, v2);
  sub_100001FDC(&qword_100057030, &unk_1000469E0);
  sub_10003002C(&qword_1000578F0, &qword_100057030, &unk_1000469E0, &protocol conformance descriptor for [A]);
  v6 = BidirectionalCollection<>.joined(separator:)();
  sub_100010C2C(v4, v5);

  return v6;
}

void *sub_10002F31C(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_10002F8DC(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
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
        __break(1u);
LABEL_46:
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
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_100001FDC(&qword_100057AC0, &qword_100047588);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100045B50;
      *(v20 + 56) = &type metadata for UInt8;
      *(v20 + 64) = &protocol witness table for UInt8;
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_10002F8DC((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      v8[2] = v24 + 1;
      v25 = &v8[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_10002F688(uint64_t a1)
{
  v2 = sub_10002FF34(&unk_1000578D0, type metadata accessor for FileAttributeKey, &unk_100047540);
  v3 = sub_10002FF34(&qword_100057AB8, type metadata accessor for FileAttributeKey, &unk_10004746C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_10002F744(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v3 = Hasher._finalize()();

  return sub_10002F7D8(a1, v3);
}

unint64_t sub_10002F7D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_10002F8DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002F8FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002F8FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001FDC(&unk_100056C98, &unk_100045C20);
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

uint64_t sub_10002FA08(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
      return static String._fromUTF8Repairing(_:)();
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        return static String._fromUTF8Repairing(_:)();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002FA54(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002FA64(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002FA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002FAE4(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

uint64_t sub_10002FB2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10002FB64(uint64_t a1)
{
  v3 = *(v1 + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 addObserver:a1 forTypes:isa];
}

unint64_t sub_10002FBD4()
{
  result = qword_1000578B8;
  if (!qword_1000578B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000578B8);
  }

  return result;
}

unint64_t sub_10002FC28()
{
  result = qword_1000578C0;
  if (!qword_1000578C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000578C0);
  }

  return result;
}

uint64_t sub_10002FC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}