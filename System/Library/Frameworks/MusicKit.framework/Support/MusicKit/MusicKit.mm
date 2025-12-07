uint64_t sub_100001720()
{
  _s6ServerCMa();
  v0 = swift_allocObject();
  result = sub_10000EDA4();
  qword_10002CE80 = v0;
  return result;
}

void *sub_10000175C()
{
  if (*(v0 + 40))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  *(v0 + 40) = 0;
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {

    Task.cancel()();
  }

  *(v0 + 48) = 0;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10000185C()
{
  sub_10000175C();

  return _swift_deallocClassInstance(v0, 88, 7);
}

void sub_1000018B4()
{
  sub_100011844();
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_100010D80();
  __chkstk_darwin(v0);
  sub_100010F5C();
  sub_10001189C();
  v1 = type metadata accessor for DispatchQoS();
  v2 = sub_100010FE8(v1);
  __chkstk_darwin(v2);
  sub_100010F5C();
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100010D0C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100010F5C();
  v9 = v8 - v7;
  sub_10001065C(0, &qword_10002C940, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  sub_10000F784(&qword_10002C948, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000E634(&qword_10002C950, &qword_100020550);
  sub_10001069C(&qword_10002C958, &qword_10002C950, &qword_100020550);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  qword_10002CE88 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10001182C();
}

uint64_t sub_100001ACC()
{
  v0 = type metadata accessor for XPCPeerRequirement();
  sub_100010B0C(v0, qword_10002C608);
  sub_10000F74C(v0, qword_10002C608);
  return static XPCPeerRequirement.hasEntitlement(_:)();
}

NSString sub_100001B30()
{
  result = String._bridgeToObjectiveC()();
  qword_10002C628 = result;
  return result;
}

void sub_100001B68()
{
  v1 = v0;
  v71 = sub_10000E634(&qword_10002C990, &qword_100020578);
  v2 = __chkstk_darwin(v71);
  v64 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v72 = &v63 - v5;
  v6 = __chkstk_darwin(v4);
  v67 = &v63 - v7;
  __chkstk_darwin(v6);
  v9 = (&v63 - v8);
  v10 = sub_10000E634(&qword_10002C998, &qword_100020580);
  v11 = __chkstk_darwin(v10 - 8);
  v68 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v63 - v13;
  if (qword_10002C638 != -1)
  {
LABEL_18:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_10000F74C(v15, qword_10002CEB0);

  v69 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134349056;
    swift_beginAccess();
    *(v19 + 4) = *(*(v1 + 72) + 16);

    _os_log_impl(&_mh_execute_header, v17, v18, " ╭ Daemon server: %{public}ld active session(s):", v19, 0xCu);
  }

  else
  {
  }

  v70 = v9;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v65 = v1;
    v24 = v23;
    v74 = v23;
    *v22 = 136315138;
    v25 = [objc_opt_self() currentThread];
    v26 = [v25 description];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v14;
    v30 = v29;

    v31 = sub_100013F98(v27, v30, &v74);
    v14 = v28;

    *(v22 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, " │   thread: %s", v22, 0xCu);
    sub_10000F7CC(v24);
    v1 = v65;
  }

  swift_beginAccess();
  sub_100002294(*(v1 + 72), &v74);

  v9 = &qword_10002C990;
  *&v32 = 134349314;
  v65 = v32;
  for (i = v14; ; v14 = i)
  {
    v33 = v68;
    sub_1000022D0(v68);
    sub_1000107D8(v33, v14, &qword_10002C998, &qword_100020580);
    v34 = sub_10000E634(&qword_10002C9A0, &qword_100020588);
    if (sub_10000ED7C(v14, 1, v34) == 1)
    {
      break;
    }

    v35 = *v14;
    v36 = &v14[*(v34 + 48)];
    v37 = v71;
    v38 = *&v36[*(v71 + 48)];
    v39 = type metadata accessor for UUID();
    v1 = *(v39 - 8);
    v40 = v9;
    v41 = *(v1 + 32);
    v42 = v67;
    v41(v67, v36, v39);
    v43 = *(v37 + 48);
    v44 = v70;
    v41(v70, v42, v39);
    v9 = v40;
    *(v44 + v43) = v38;
    sub_10001078C(v44, v72, v40, &qword_100020578);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v14 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v73 = v47;
      *v14 = v65;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      v48 = v47;
      *(v14 + 4) = v35 + 1;
      *(v14 + 6) = 2082;
      v49 = v72;
      v50 = v64;
      v51 = v40;
      sub_10001078C(v72, v64, v40, &qword_100020578);

      v52 = UUID.uuidString.getter();
      v53 = v49;
      v54 = v52;
      v56 = v55;
      sub_100010734(v53, v51, &qword_100020578);
      (*(v1 + 8))(v50, v39);
      v57 = sub_100013F98(v54, v56, &v73);

      *(v14 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v45, v46, " │   %{public}ld. %{public}s", v14, 0x16u);
      sub_10000F7CC(v48);
      v9 = v51;

      v58 = v70;
      v59 = v51;
    }

    else
    {

      sub_100010734(v72, v40, &qword_100020578);
      v58 = v44;
      v59 = v40;
    }

    sub_100010734(v58, v59, &qword_100020578);
  }

  sub_10000F818(v74);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, " ╰─", v62, 2u);
  }
}

uint64_t sub_100002294@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  a2[5] = 0;
  return result;
}

uint64_t sub_1000022D0@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_10000E634(&qword_10002C9A0, &qword_100020588);
  __chkstk_darwin(v2);
  v36 = (&v34 - v3);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000E634(&qword_10002C9A8, &qword_100020590);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_10000E634(&qword_10002C990, &qword_100020578);
  result = __chkstk_darwin(v11);
  v13 = *v1;
  v14 = v1[1];
  v16 = v1[2];
  v15 = v1[3];
  v17 = v1[4];
  v35 = &v34 - v18;
  if (v17)
  {
    v38 = v1;
    v39 = v16;
    v40 = v2;
    v19 = v15;
LABEL_7:
    v37 = (v17 - 1) & v17;
    v20 = __clz(__rbit64(v17)) | (v19 << 6);
    v21 = v7;
    v22 = v7;
    v23 = v13;
    (*(v5 + 16))(v22, *(v13 + 48) + *(v5 + 72) * v20, v4);
    v24 = *(*(v23 + 56) + 8 * v20);
    v25 = *(v11 + 48);
    (*(v5 + 32))(v10, v21, v4);
    *&v10[v25] = v24;
    sub_10000ED54(v10, 0, 1, v11);

    v26 = v37;
    v1 = v38;
    v16 = v39;
    v2 = v40;
LABEL_8:
    *v1 = v23;
    v1[1] = v14;
    v1[2] = v16;
    v1[3] = v15;
    v1[4] = v26;
    if (sub_10000ED7C(v10, 1, v11) == 1)
    {
      sub_100010734(v10, &qword_10002C9A8, &qword_100020590);
      v27 = v41;
      v28 = 1;
      return sub_10000ED54(v27, v28, 1, v2);
    }

    v29 = v35;
    sub_1000107D8(v10, v35, &qword_10002C990, &qword_100020578);
    v30 = *(v2 + 48);
    v31 = v1[5];
    v32 = v36;
    *v36 = v31;
    result = sub_1000107D8(v29, v32 + v30, &qword_10002C990, &qword_100020578);
    if (!__OFADD__(v31, 1))
    {
      v1[5] = v31 + 1;
      v33 = v41;
      sub_1000107D8(v32, v41, &qword_10002C9A0, &qword_100020588);
      v27 = v33;
      v28 = 0;
      return sub_10000ED54(v27, v28, 1, v2);
    }
  }

  else
  {
    while (1)
    {
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v19 >= ((v16 + 64) >> 6))
      {
        v23 = v13;
        sub_10000ED54(v10, 1, 1, v11);
        v26 = 0;
        goto LABEL_8;
      }

      v17 = *(v14 + 8 * v19);
      ++v15;
      if (v17)
      {
        v38 = v1;
        v39 = v16;
        v40 = v2;
        v15 = v19;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100002674()
{
  v1 = v0;
  swift_beginAccess();
  if (*(*(v0 + 80) + 16))
  {
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F74C(v2, qword_10002CEB0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "begin observing library changes.", v5, 2u);
    }

    *(v1 + 32) = os_transaction_create();
    swift_unknownObjectRelease();
    sub_1000081FC();
  }

  else
  {
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F74C(v6, qword_10002CEB0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "end observing library changes.", v9, 2u);
    }

    sub_100008558();
    *(v1 + 32) = 0;
    swift_unknownObjectRelease();
  }

  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000F74C(v10, qword_10002CEB0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 134218242;
    *(v13 + 4) = *(*(v1 + 80) + 16);

    *(v13 + 12) = 2080;
    type metadata accessor for UUID();
    _s14descr100028B61V18ObservationContextVMa(0);
    sub_10000F784(&qword_10002C978, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    v15 = Dictionary.description.getter();
    v17 = v16;

    v18 = sub_100013F98(v15, v17, &v19);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "observationContexts count: %ld\n%s", v13, 0x16u);
    sub_10000F7CC(v14);
  }

  else
  {
  }
}

uint64_t sub_100002A20()
{
  v1 = type metadata accessor for XPCListener.InitializationOptions();
  v2 = sub_100010FE8(v1);
  __chkstk_darwin(v2);
  sub_100010F5C();
  v3 = type metadata accessor for XPCPeerRequirement();
  sub_100010D0C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100010F5C();
  v9 = v8 - v7;
  type metadata accessor for XPCListener();
  static MusicDaemon.machName.getter();
  if (qword_10002C5F8 != -1)
  {
    sub_100010CE4();
    swift_once();
  }

  v10 = qword_10002C600;
  v11 = qword_10002CE88;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_10000F74C(v3, qword_10002C608);
  (*(v5 + 16))(v9, v12, v3);

  static XPCListener.InitializationOptions.none.getter();
  sub_100011550();
  result = XPCListener.__allocating_init(service:targetQueue:options:requirement:incomingSessionHandler:)();
  if (!v20)
  {
    *(v0 + 24) = result;

    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    v15 = sub_10000F74C(v14, qword_10002CEB0);
    v16 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v17 = sub_10001186C();
    if (os_log_type_enabled(v17, v18))
    {
      sub_1000110C0();
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v16, v15, "xpc listener created.", v19, 2u);
      sub_100010FBC();
    }
  }

  return result;
}

uint64_t sub_100002CB4(uint64_t a1, uint64_t a2)
{
  _s14descr100028B61V14SessionHandlerCMa(0);
  sub_10000F784(&qword_10002CA98, _s14descr100028B61V14SessionHandlerCMa, &unk_1000207F0);
  return dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
}

uint64_t sub_100002D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  _s14descr100028B61V14SessionHandlerCMa(0);
  swift_allocObject();

  result = sub_100011E04(a1, a2);
  *a3 = result;
  return result;
}

void sub_100002DB8(uint64_t a1)
{
  sub_100011844();
  v47 = v1;
  v48 = v2;
  v4 = v3;
  v49 = v6;
  v50 = v5;
  v7 = type metadata accessor for MusicDaemon.Request.Context();
  sub_100010D0C();
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v13 = type metadata accessor for MusicDaemon.Request.Action();
  sub_100010D0C();
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  v19 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000E634(&qword_10002CA18, &qword_1000205D8);
  sub_100010FE8(v20);
  sub_1000113E8();
  __chkstk_darwin(v21);
  v23 = &v45 - v22;
  type metadata accessor for TaskPriority();
  v45 = v23;
  v24 = sub_100010EE4();
  sub_10000ED54(v24, v25, v26, v27);
  sub_1000119F8();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = *(v15 + 16);
  v46 = v13;
  v29(v19, v48, v13);
  v30 = *(v9 + 16);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v7;
  v30(v47, v50, v7);
  v31 = qword_10002C630;

  v50 = v4;

  if (v31 != -1)
  {
    sub_100010CC4(&qword_10002C630);
  }

  v32 = qword_10002CEA8;
  sub_100010CAC();
  v35 = sub_10000F784(v33, v34, &unk_100020A50);
  v36 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v37 = (v17 + *(v9 + 80) + v36) & ~*(v9 + 80);
  v38 = (v11 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 2) = v32;
  *(v39 + 3) = v35;
  *(v39 + 4) = v28;
  (*(v15 + 32))(&v39[v36], v19, v46);
  (*(v9 + 32))(&v39[v37], v47, v48);
  v40 = &v39[v38];
  v41 = v50;
  *v40 = v49;
  *(v40 + 1) = v41;

  v42 = sub_1000114E8();
  sub_1000039D8(v42, v43, v45, v44, v39);

  sub_10001182C();
}

uint64_t sub_1000030B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = type metadata accessor for MusicDaemon.Request.Action();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v10 = type metadata accessor for MusicDaemon.Error();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  v8[16] = swift_task_alloc();
  sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  v8[17] = swift_task_alloc();
  sub_10000E634(&qword_10002CA68, &qword_100020650);
  v8[18] = swift_task_alloc();
  v11 = type metadata accessor for MusicDaemon.Request.Context();
  v8[19] = v11;
  v8[20] = *(v11 - 8);
  v8[21] = swift_task_alloc();
  v12 = type metadata accessor for MusicDaemon.Response.Context();
  v8[22] = v12;
  v8[23] = *(v12 - 8);
  v8[24] = swift_task_alloc();
  v13 = type metadata accessor for MusicDaemon.Response();
  v8[25] = v13;
  v8[26] = *(v13 - 8);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  v14 = qword_10002CEA8;
  v8[30] = qword_10002CEA8;

  return _swift_task_switch(sub_1000033F8, v14, 0);
}

uint64_t sub_1000033F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100011958();
  sub_100011C44();
  sub_1000110D8();
  Strong = swift_weakLoadStrong();
  v24[31] = Strong;
  if (Strong)
  {
    swift_task_alloc();
    sub_10001104C();
    v24[32] = v26;
    *v26 = v27;
    v26[1] = sub_10000378C;
    sub_1000114A8();

    return sub_100003CBC();
  }

  else
  {
    v30 = v24[27];
    v76 = v24[26];
    v77 = v24[25];
    v67 = v24[24];
    v72 = v24[23];
    v73 = v24[22];
    v31 = v24[20];
    v32 = v24[21];
    v34 = v24[18];
    v33 = v24[19];
    v35 = v24[12];
    v70 = v24[13];
    v71 = v24[15];
    v36 = v24[11];
    v65 = v24[17];
    v66 = v24[10];
    v74 = v24[8];
    v75 = v24[9];
    v37 = v24[7];
    v68 = v24[6];
    v69 = v24[14];

    (*(v31 + 16))(v32, v37, v33);
    v38 = type metadata accessor for MusicDaemon.Item();
    sub_100010DE8(v34, v39, v40, v38);
    v41 = type metadata accessor for MusicSubscription();
    sub_100010DE8(v65, v42, v43, v41);
    type metadata accessor for MusicRestrictions();
    sub_100010FB0();
    sub_10000ED54(v44, v45, v46, v47);
    MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
    (*(v36 + 104))(v35, enum case for MusicDaemon.Request.Action.favorite(_:), v66);
    LOBYTE(v31) = static MusicDaemon.Request.Action.== infix(_:_:)();
    (*(v36 + 8))(v35, v66);
    v48 = &enum case for MusicDaemon.Error.failedToPerformFavoriteAction(_:);
    if ((v31 & 1) == 0)
    {
      v48 = &enum case for MusicDaemon.Error.failedToPerformUndoFavoriteAction(_:);
    }

    (*(v69 + 104))(v71, *v48, v70);
    v49 = *(sub_10000E634(&qword_10002CA70, &qword_100020658) + 48);
    (*(v72 + 16))(v30, v67, v73);
    (*(v69 + 16))(v30 + v49, v71, v70);
    sub_100011040();
    sub_10000ED54(v50, v51, v52, v70);
    (*(v76 + 104))(v30, enum case for MusicDaemon.Response.actionPerformed(_:), v77);
    v74(v30);
    v53 = sub_1000114DC();
    v54(v53);
    v55 = sub_100011280();
    v56(v55);
    v78 = v24[12];
    (*(v24[23] + 8))(v24[24], v24[22]);

    sub_1000112D0();
    sub_1000114A8();

    return v58(v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v78, a22, a23, a24);
  }
}

uint64_t sub_10000378C()
{
  sub_1000110FC();
  sub_100011384();
  v2 = *(v1 + 240);
  v3 = *v0;
  sub_100010E2C();
  *v4 = v3;

  return _swift_task_switch(sub_1000038A8, v2, 0);
}

uint64_t sub_1000038A8()
{
  v1 = v0[29];
  v2 = v0[8];

  v3 = sub_1000119BC();
  v4(v3);
  v2(v1);
  (*(v0[26] + 8))(v0[29], v0[25]);

  sub_1000112D0();

  return v5();
}

uint64_t sub_1000039D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000E634(&qword_10002CA18, &qword_1000205D8);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_10001078C(a3, v24 - v10, &qword_10002CA18, &qword_1000205D8);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_10000ED7C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100010734(v11, &qword_10002CA18, &qword_1000205D8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
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
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100010734(a3, &qword_10002CA18, &qword_1000205D8);

      return v22;
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

  sub_100010734(a3, &qword_10002CA18, &qword_1000205D8);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100003CBC()
{
  sub_1000110FC();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  sub_100010FE8(v4);
  v0[5] = sub_1000115D4();
  v5 = sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  sub_100010FE8(v5);
  v0[6] = sub_1000115D4();
  v6 = sub_10000E634(&qword_10002CA68, &qword_100020650);
  sub_100010FE8(v6);
  v0[7] = sub_1000115D4();
  v7 = type metadata accessor for MusicDaemon.Request.Context();
  v0[8] = v7;
  sub_100010D70(v7);
  v0[9] = v8;
  v0[10] = sub_1000115D4();
  v9 = type metadata accessor for MusicDaemon.Item();
  v0[11] = v9;
  sub_100010D70(v9);
  v0[12] = v10;
  v0[13] = sub_1000115EC();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v11 = type metadata accessor for MusicDaemon.Request.Action();
  v0[17] = v11;
  sub_100010D70(v11);
  v0[18] = v12;
  v0[19] = sub_1000115EC();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v13 = type metadata accessor for MusicDaemon.Error();
  v0[23] = v13;
  sub_100010D70(v13);
  v0[24] = v14;
  v0[25] = sub_1000115EC();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v15 = sub_10000E634(&qword_10002CA90, &qword_100020670);
  sub_100010FE8(v15);
  v0[30] = sub_1000115D4();
  v16 = type metadata accessor for MusicDaemon.Response.Context();
  v0[31] = v16;
  sub_100010D70(v16);
  v0[32] = v17;
  v0[33] = sub_1000115D4();
  if (qword_10002C630 != -1)
  {
    sub_100010CC4(&qword_10002C630);
  }

  v0[34] = qword_10002CEA8;
  sub_100011B58();
  v18 = sub_1000112A0();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_100003FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  sub_100011704();
  a33 = v35;
  a34 = v36;
  sub_100011A04();
  a32 = v34;
  v37 = v34[22];
  v38 = v34[17];
  v39 = v34[3];
  v40 = v34[18];
  v41 = *(v40 + 16);
  v34[35] = v41;
  v34[36] = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v37, v39, v38);
  v42 = sub_1000117F8();
  v44 = v43(v42);
  if (v44 == enum case for MusicDaemon.Request.Action.favorite(_:))
  {
    v45 = MusicDaemon.Request.Context.accountID.getter();
    v47 = v46;
    v34[37] = v46;

    v34[38] = sub_10001B428(v45, v47);
    MusicDaemon.Request.Context.item.getter();
    swift_task_alloc();
    sub_10001104C();
    v34[39] = v48;
    *v48 = v49;
    v48[1] = sub_10000456C;
    sub_100011C24();
    sub_100011534();

    return sub_100014D8C();
  }

  else if (v44 == enum case for MusicDaemon.Request.Action.undoFavorite(_:))
  {
    v52 = MusicDaemon.Request.Context.accountID.getter();
    v54 = v53;
    v34[42] = v53;

    v34[43] = sub_10001B428(v52, v54);
    MusicDaemon.Request.Context.item.getter();
    swift_task_alloc();
    sub_10001104C();
    v34[44] = v55;
    *v55 = v56;
    v55[1] = sub_100004984;
    sub_100011C24();
    sub_100011534();

    return sub_100015530();
  }

  else
  {

    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v58 = v34[21];
    v59 = v34[17];
    v60 = v34[3];
    v61 = type metadata accessor for Logger();
    sub_10000F74C(v61, qword_10002CEB0);
    v41(v58, v60, v59);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    v64 = sub_1000112DC(v63);
    v65 = v34[21];
    if (v64)
    {
      v66 = v34[20];
      v68 = v34[17];
      v67 = v34[18];
      sub_1000118AC();
      v114 = sub_1000115B8();
      a23 = v114;
      *v60 = 136446210;
      v41(v66, v65, v68);
      v69 = String.init<A>(describing:)();
      v71 = v70;
      v116 = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v117 = *(v67 + 8);
      v117(v65, v68);
      v72 = sub_100013F98(v69, v71, &a23);

      *(v60 + 4) = v72;
      sub_100010F6C();
      _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
      sub_10000F7CC(v114);
      sub_100010FBC();

      sub_100010FBC();
    }

    else
    {
      v78 = v34[18];

      v116 = (v78 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v79 = sub_1000119BC();
      v117 = v80;
      (v80)(v79);
    }

    v81 = v34[30];
    v83 = v34[23];
    v82 = v34[24];
    v113 = v34[17];
    v115 = v34[22];
    v84 = v34[11];
    v85 = v34[6];
    (*(v34[9] + 16))(v34[10], v34[4], v34[8]);
    sub_100010FB0();
    sub_100011420(v86, v87, v88, v84);
    v89 = type metadata accessor for MusicSubscription();
    sub_100010DE8(v85, v90, v91, v89);
    type metadata accessor for MusicRestrictions();
    v92 = sub_100010EE4();
    sub_10000ED54(v92, v93, v94, v95);
    sub_100011550();
    MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
    (*(v82 + 104))(v81, enum case for MusicDaemon.Error.cannotPerformUnknownAction(_:), v83);
    sub_100011040();
    sub_10000ED54(v96, v97, v98, v83);
    v117(v115, v113);
    sub_100010D90();
    sub_10000E634(&qword_10002CA70, &qword_100020658);
    v99 = sub_100010F04();
    v101 = v100(v99);
    sub_100011B70(v101, v102, &qword_10002CA90, &qword_100020670);
    type metadata accessor for MusicDaemon.Response();
    sub_100010CF8();
    v103 = sub_1000119E0();
    v104(v103);

    sub_1000112D0();
    sub_100011534();

    return v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v113, v115, v116, v117, a23, a24, a25, a26);
  }
}

uint64_t sub_10000456C()
{
  sub_1000117D4();
  sub_100010E2C();
  *v3 = v0;
  *v3 = *v2;

  sub_10001188C();
  *(v0 + 320) = v4;
  *(v0 + 328) = v5;
  v6 = sub_100011390();
  v7(v6);
  sub_100011758();
  v9 = *(v8 + 272);
  if (v1)
  {
    v10 = sub_100004D9C;
  }

  else
  {
    v10 = sub_1000046E8;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000046E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void (*a21)(uint64_t), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100011704();
  sub_100011A04();

  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000114C4(v28, qword_10002CEB0);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    sub_1000110C0();
    *swift_slowAlloc() = 0;
    sub_100011CAC(&_mh_execute_header, v31, v32, "item favorited successfully.");
    sub_100010FBC();
  }

  v66 = *(v26 + 328);
  sub_100011650();
  sub_1000118EC();
  v33 = sub_100011BC8();
  v34(v33);
  v35 = sub_10001198C();
  v36(v35);
  sub_100011040();
  sub_100011420(v37, v38, v39, v27);
  v40 = type metadata accessor for MusicSubscription();
  sub_100010DE8(a15, v41, v42, v40);
  type metadata accessor for MusicRestrictions();
  v43 = sub_100010FA0();
  sub_10000ED54(v43, v44, v45, v46);
  sub_100011A64();

  v47 = sub_100011624();
  a21(v47);
  sub_100010FB0();
  sub_10000ED54(v48, v49, v50, a22);
  sub_100010F1C();
  sub_100011230();
  sub_10000E634(&qword_10002CA70, &qword_100020658);
  v51 = sub_100010F04();
  v53 = v52(v51);
  sub_100011B70(v53, v54, &qword_10002CA90, &qword_100020670);
  type metadata accessor for MusicDaemon.Response();
  sub_100010CF8();
  v55 = sub_1000119E0();
  v56(v55);

  sub_1000112D0();
  sub_100011534();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v66, a24, a25, a26);
}

uint64_t sub_100004984()
{
  sub_1000117D4();
  sub_100010E2C();
  *v3 = v0;
  *v3 = *v2;

  sub_10001188C();
  *(v0 + 360) = v4;
  *(v0 + 368) = v5;
  v6 = sub_100011390();
  v7(v6);
  sub_100011758();
  v9 = *(v8 + 272);
  if (v1)
  {
    v10 = sub_1000051AC;
  }

  else
  {
    v10 = sub_100004B00;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100004B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void (*a21)(uint64_t), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100011704();
  sub_100011A04();

  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000114C4(v28, qword_10002CEB0);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    sub_1000110C0();
    *swift_slowAlloc() = 0;
    sub_100011CAC(&_mh_execute_header, v31, v32, "item un-favorited successfully.");
    sub_100010FBC();
  }

  v66 = *(v26 + 368);
  sub_100011650();
  sub_1000118EC();
  v33 = sub_100011BC8();
  v34(v33);
  v35 = sub_10001198C();
  v36(v35);
  sub_100011040();
  sub_100011420(v37, v38, v39, v27);
  v40 = type metadata accessor for MusicSubscription();
  sub_100010DE8(a15, v41, v42, v40);
  type metadata accessor for MusicRestrictions();
  v43 = sub_100010FA0();
  sub_10000ED54(v43, v44, v45, v46);
  sub_100011A64();

  v47 = sub_100011624();
  a21(v47);
  sub_100010FB0();
  sub_10000ED54(v48, v49, v50, a22);
  sub_100010F1C();
  sub_100011230();
  sub_10000E634(&qword_10002CA70, &qword_100020658);
  v51 = sub_100010F04();
  v53 = v52(v51);
  sub_100011B70(v53, v54, &qword_10002CA90, &qword_100020670);
  type metadata accessor for MusicDaemon.Response();
  sub_100010CF8();
  v55 = sub_1000119E0();
  v56(v55);

  sub_1000112D0();
  sub_100011534();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v66, a24, a25, a26);
}

uint64_t sub_1000055B4()
{
  sub_1000110FC();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v5 = type metadata accessor for MusicDaemon.Error();
  v0[11] = v5;
  sub_100010D70(v5);
  v0[12] = v6;
  v0[13] = sub_1000115EC();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v7 = sub_10000E634(&qword_10002CA68, &qword_100020650);
  sub_100010FE8(v7);
  v0[16] = sub_1000115D4();
  v8 = type metadata accessor for MusicDaemon.Request.Context();
  v0[17] = v8;
  sub_100010D70(v8);
  v0[18] = v9;
  v0[19] = sub_1000115D4();
  v10 = type metadata accessor for MusicDaemon.Response.Context();
  v0[20] = v10;
  sub_100010D70(v10);
  v0[21] = v11;
  v0[22] = sub_1000115D4();
  v12 = sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  sub_100010FE8(v12);
  v0[23] = sub_1000115EC();
  v0[24] = swift_task_alloc();
  v13 = type metadata accessor for MusicRestrictions();
  v0[25] = v13;
  sub_100010D70(v13);
  v0[26] = v14;
  v0[27] = sub_1000115D4();
  v15 = sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  sub_100010FE8(v15);
  v0[28] = sub_1000115EC();
  v0[29] = swift_task_alloc();
  v16 = type metadata accessor for MusicSubscription();
  v0[30] = v16;
  sub_100010D70(v16);
  v0[31] = v17;
  v0[32] = sub_1000115EC();
  v0[33] = swift_task_alloc();
  v18 = type metadata accessor for MusicDaemon.Item();
  v0[34] = v18;
  sub_100010D70(v18);
  v0[35] = v19;
  v0[36] = sub_1000115EC();
  v0[37] = swift_task_alloc();
  if (qword_10002C630 != -1)
  {
    sub_100010CC4(&qword_10002C630);
  }

  v0[38] = qword_10002CEA8;
  sub_100011B58();
  v20 = sub_1000112A0();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_1000058D4()
{
  sub_1000111E4();
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v1[39] = sub_10000F74C(v2, qword_10002CEB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    sub_1000110C0();
    v5 = swift_slowAlloc();
    sub_100011690(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "mapping item.", v0, 2u);
    sub_100010FBC();
  }

  v6 = MusicDaemon.Request.Context.accountID.getter();
  v8 = sub_10001B428(v6, v7);
  v1[40] = v8;
  MusicDaemon.Request.Context.item.getter();
  swift_task_alloc();
  sub_10001104C();
  v1[41] = v9;
  *v9 = v10;
  v9[1] = sub_100005A2C;
  v12 = v1[36];
  v11 = v1[37];

  return sub_10001B4F8(v11, v12, v8);
}

uint64_t sub_100005A2C()
{
  sub_1000117D4();
  sub_100010E2C();
  *v3 = v0;
  *v3 = *v2;
  v0[42] = v1;

  sub_10001188C();
  v0[43] = v4;
  v0[44] = v5;
  v6 = sub_100011390();
  v7(v6);
  sub_100011758();
  v9 = *(v8 + 304);
  if (v1)
  {
    v10 = sub_100006340;
  }

  else
  {
    v10 = sub_100005BAC;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100005F68()
{
  sub_1000111E4();
  v2 = *v1;
  sub_100011058();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 368) = v0;

  v5 = *(v2 + 304);
  if (v0)
  {
    v6 = sub_100006838;
  }

  else
  {
    v6 = sub_10000608C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100006340()
{
  v6 = v1[40];

  sub_100011A40();
  v7 = sub_10000E634(&qword_10002CA30, &qword_100020610);
  if (sub_100011AEC(v7))
  {
    sub_100011D0C();
    v8 = sub_100011810();
    v9(v8);
    v10 = *(v5 + 16);
    v11 = sub_100011624();
    v10(v11);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = sub_1000112DC(v13);
    v16 = v1[12];
    v15 = v1[13];
    if (v14)
    {
      v0 = sub_1000118AC();
      v105 = sub_100011A28();
      *v0 = 138543362;
      sub_100010D40();
      v19 = sub_10000F784(v17, v18, &protocol conformance descriptor for MusicDaemon.Error);
      v20 = sub_100011CEC(v19);
      v22 = sub_100011BDC(v20, v21);
      v10(v22);
      v4 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v16 + 8;
      v24 = sub_10001149C();
      v25(v24);
      *(v0 + 4) = v4;
      v15 = v105;
      *v105 = v4;
      sub_100010F6C();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_100010734(v105, &qword_10002CA80, &unk_100020870);
      sub_100010FBC();

      sub_100010FBC();
    }

    else
    {

      v23 = v16 + 8;
      v76 = sub_10001149C();
      v77(v76);
    }

    v78 = sub_1000111F0();
    v79(v78);
    sub_100010FB0();
    sub_10000ED54(v80, v81, v82, v23);
    sub_100010FB0();
    sub_10000ED54(v83, v84, v85, v4);
    v86 = sub_100010FA0();
    sub_10000ED54(v86, v87, v88, v104);
    sub_100011B10();
    sub_10000E634(&qword_10002CA78, &unk_100020660);
    v89 = sub_10001173C();
    v90(v89);
    v91 = sub_100010EF4();
    sub_10000ED54(v91, v92, v93, v15);
    v106(&v12[v0], v105);
    v94 = enum case for MusicDaemon.Response.failure(_:);
    type metadata accessor for MusicDaemon.Response();
    sub_100010CF8();
    (*(v95 + 104))(v12, v94);
  }

  else
  {

    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    v33 = os_log_type_enabled(v31, v32);
    if (v33)
    {
      v3 = sub_1000118AC();
      v41 = sub_100011A28();
      *v3 = 138543362;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v42;
      *v41 = v42;
      sub_100011CCC(&_mh_execute_header, v43, v44, "failed to perform library mapping with error: %{public}@.");
      sub_100010734(v41, &qword_10002CA80, &unk_100020870);
      sub_100010FBC();

      sub_100010FBC();
    }

    sub_10001131C(v33, v34, v35, v36, v37, v38, v39, v40, v98);
    v45 = sub_100011BB4();
    v46(v45);
    sub_100010FB0();
    sub_10000ED54(v47, v48, v49, v100);
    sub_100010FB0();
    sub_10000ED54(v50, v51, v52, v101);
    v53 = sub_100010EE4();
    sub_10000ED54(v53, v54, v55, v102);
    sub_1000118C4();
    v56 = sub_10000E634(&qword_10002CA78, &unk_100020660);
    v64 = sub_100011474(v56, v57, v58, v59, v60, v61, v62, v63, v99, v100, v101, v102, v103, v104);
    v65(v64);
    sub_100011040();
    sub_10000ED54(v66, v67, v68, v3);
    swift_getErrorValue();
    v69 = Error.localizedDescription.getter();
    v71 = v70;

    v72 = sub_100011C04();
    v73(v72);
    *v2 = v69;
    v2[1] = v71;
    (*(v105 + 104))(v2, enum case for MusicDaemon.Error.other(_:));
    v74 = enum case for MusicDaemon.Response.failure(_:);
    type metadata accessor for MusicDaemon.Response();
    sub_100010CF8();
    (*(v75 + 104))(v32, v74);
  }

  sub_100010E08();
  sub_100011C6C();

  sub_1000112D0();

  return v96();
}

uint64_t sub_100006838()
{
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[40];

  v7 = sub_1000117F8();
  (v5)(v7);
  sub_100011A40();
  v8 = sub_10000E634(&qword_10002CA30, &qword_100020610);
  if (sub_100011AEC(v8))
  {
    sub_100011D0C();
    v9 = sub_100011810();
    v10(v9);
    v11 = *(v3 + 16);
    v12 = sub_100011624();
    v11(v12);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = sub_1000112DC(v14);
    v17 = v0[12];
    v16 = v0[13];
    if (v15)
    {
      v4 = sub_1000118AC();
      v106 = sub_100011A28();
      *v4 = 138543362;
      sub_100010D40();
      v20 = sub_10000F784(v18, v19, &protocol conformance descriptor for MusicDaemon.Error);
      v21 = sub_100011CEC(v20);
      v23 = sub_100011BDC(v21, v22);
      v11(v23);
      v2 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v17 + 8;
      v25 = sub_10001149C();
      v26(v25);
      *(v4 + 4) = v2;
      v16 = v106;
      *v106 = v2;
      sub_100010F6C();
      _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
      sub_100010734(v106, &qword_10002CA80, &unk_100020870);
      sub_100010FBC();

      sub_100010FBC();
    }

    else
    {

      v24 = v17 + 8;
      v77 = sub_10001149C();
      v78(v77);
    }

    v79 = sub_1000111F0();
    v80(v79);
    sub_100010FB0();
    sub_10000ED54(v81, v82, v83, v24);
    sub_100010FB0();
    sub_10000ED54(v84, v85, v86, v2);
    v87 = sub_100010FA0();
    sub_10000ED54(v87, v88, v89, v105);
    sub_100011B10();
    sub_10000E634(&qword_10002CA78, &unk_100020660);
    v90 = sub_10001173C();
    v91(v90);
    v92 = sub_100010EF4();
    sub_10000ED54(v92, v93, v94, v16);
    v107(&v13[v4], v106);
    v95 = enum case for MusicDaemon.Response.failure(_:);
    type metadata accessor for MusicDaemon.Response();
    sub_100010CF8();
    (*(v96 + 104))(v13, v95);
  }

  else
  {

    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    v34 = os_log_type_enabled(v32, v33);
    if (v34)
    {
      v1 = sub_1000118AC();
      v42 = sub_100011A28();
      *v1 = 138543362;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 4) = v43;
      *v42 = v43;
      sub_100011CCC(&_mh_execute_header, v44, v45, "failed to perform library mapping with error: %{public}@.");
      sub_100010734(v42, &qword_10002CA80, &unk_100020870);
      sub_100010FBC();

      sub_100010FBC();
    }

    sub_10001131C(v34, v35, v36, v37, v38, v39, v40, v41, v99);
    v46 = sub_100011BB4();
    v47(v46);
    sub_100010FB0();
    sub_10000ED54(v48, v49, v50, v101);
    sub_100010FB0();
    sub_10000ED54(v51, v52, v53, v102);
    v54 = sub_100010EE4();
    sub_10000ED54(v54, v55, v56, v103);
    sub_1000118C4();
    v57 = sub_10000E634(&qword_10002CA78, &unk_100020660);
    v65 = sub_100011474(v57, v58, v59, v60, v61, v62, v63, v64, v100, v101, v102, v103, v104, v105);
    v66(v65);
    sub_100011040();
    sub_10000ED54(v67, v68, v69, v1);
    swift_getErrorValue();
    v70 = Error.localizedDescription.getter();
    v72 = v71;

    v73 = sub_100011C04();
    v74(v73);
    *v5 = v70;
    *(v5 + 8) = v72;
    (*(v106 + 104))(v5, enum case for MusicDaemon.Error.other(_:));
    v75 = enum case for MusicDaemon.Response.failure(_:);
    type metadata accessor for MusicDaemon.Response();
    sub_100010CF8();
    (*(v76 + 104))(v33, v75);
  }

  sub_100010E08();
  sub_100011C6C();

  sub_1000112D0();

  return v97();
}

void sub_100006D40(uint64_t a1)
{
  sub_100011844();
  v99 = v2;
  v4 = v3;
  v102 = v5;
  v6 = sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  sub_100010FE8(v6);
  sub_1000113E8();
  __chkstk_darwin(v7);
  v101 = &v87 - v8;
  v9 = sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  sub_100010FE8(v9);
  sub_1000113E8();
  __chkstk_darwin(v10);
  v100 = &v87 - v11;
  v12 = sub_10000E634(&qword_10002CA68, &qword_100020650);
  sub_100010FE8(v12);
  sub_1000113E8();
  __chkstk_darwin(v13);
  v98 = &v87 - v14;
  v15 = type metadata accessor for MusicDaemon.Request.Context();
  sub_100010D0C();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100010F5C();
  v95 = v20 - v19;
  type metadata accessor for MusicDaemon.Response.Context();
  sub_100010D0C();
  v96 = v22;
  v97 = v21;
  __chkstk_darwin(v21);
  sub_100010F5C();
  v94 = v24 - v23;
  sub_10000E634(&qword_10002C960, &qword_100020558);
  sub_100010D80();
  __chkstk_darwin(v25);
  sub_100011290();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v31 = &v87 - v30;
  v32 = _s14descr100028B61V18ObservationContextVMa(0);
  sub_100010D80();
  __chkstk_darwin(v33);
  sub_100011290();
  v89 = v34 - v35;
  sub_100011804();
  __chkstk_darwin(v36);
  v90 = &v87 - v37;
  sub_100011804();
  __chkstk_darwin(v38);
  v88 = &v87 - v39;
  sub_100011804();
  v41 = __chkstk_darwin(v40);
  v43 = &v87 - v42;
  __chkstk_darwin(v41);
  v45 = &v87 - v44;
  type metadata accessor for UUID();
  sub_100010CF8();
  (*(v46 + 16))(v45, v99);
  v47 = *(v17 + 16);
  v48 = &v45[*(v32 + 20)];
  v92 = v17 + 16;
  v93 = v15;
  v91 = v47;
  v47(v48, v4, v15);
  v49 = v31;
  v103 = v1;
  v104 = v4;
  v99 = v4;
  v105 = v45;
  UnfairLock.locked<A>(_:)();
  sub_10001078C(v31, v28, &qword_10002C960, &qword_100020558);
  if (sub_10000ED7C(v28, 1, v32) != 1)
  {
    sub_10000ECF0(v28, v43);
    v51 = v43;
    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_1000114C4(v60, qword_10002CEB0);
    v61 = v43;
    v62 = v88;
    sub_10000EC8C(v61, v88);
    v52 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (!sub_1000116BC(v63))
    {

      sub_10000F6F0(v62);
      goto LABEL_12;
    }

    sub_1000118AC();
    v64 = sub_1000115B8();
    v106 = v64;
    MEMORY[0] = 136446210;
    sub_10000EC8C(v62, v90);
    sub_100011624();
    String.init<A>(describing:)();
    sub_10000F6F0(v62);
    v65 = sub_10001149C();
    v68 = sub_100013F98(v65, v66, v67);

    MEMORY[4] = v68;
    sub_100011A10(&_mh_execute_header, v52, v63, "already observing context: %{public}s");
    sub_10000F7CC(v64);
    sub_100010FBC();

    sub_100010FBC();

LABEL_10:

LABEL_12:
    sub_10000F6F0(v51);
    goto LABEL_13;
  }

  sub_100010734(v28, &qword_10002C960, &qword_100020558);
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_1000114C4(v50, qword_10002CEB0);
  v51 = v89;
  sub_10000EC8C(v45, v89);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (!sub_1000116BC(v53))
  {
    goto LABEL_10;
  }

  sub_1000118AC();
  v54 = v49;
  v55 = sub_1000115B8();
  v106 = v55;
  MEMORY[0] = 136446210;
  sub_10000EC8C(v51, v90);
  sub_100011624();
  String.init<A>(describing:)();
  sub_10000F6F0(v51);
  v56 = sub_10001149C();
  v59 = sub_100013F98(v56, v57, v58);

  MEMORY[4] = v59;
  sub_100011A10(&_mh_execute_header, v52, v53, "beginning observing context: %{public}s");
  sub_10000F7CC(v55);
  v49 = v54;
  sub_100010FBC();

  sub_100010FBC();

LABEL_13:
  v91(v95, v99, v93);
  v69 = type metadata accessor for MusicDaemon.Item();
  sub_100010DE8(v98, v70, v71, v69);
  v72 = type metadata accessor for MusicSubscription();
  sub_100010DE8(v100, v73, v74, v72);
  type metadata accessor for MusicRestrictions();
  v75 = sub_100010EE4();
  sub_10000ED54(v75, v76, v77, v78);
  v79 = v94;
  MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
  sub_100010734(v49, &qword_10002C960, &qword_100020558);
  sub_10000E634(&qword_10002CA70, &qword_100020658);
  v80 = v102;
  (*(v96 + 32))(v102, v79, v97);
  type metadata accessor for MusicDaemon.Error();
  sub_100010FB0();
  sub_10000ED54(v81, v82, v83, v84);
  v85 = enum case for MusicDaemon.Response.observationBegan(_:);
  type metadata accessor for MusicDaemon.Response();
  sub_100010CF8();
  (*(v86 + 104))(v80, v85);
  sub_10000F6F0(v45);
  sub_10001182C();
}

void sub_100007490(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15 = a2;
  v5 = sub_10000E634(&qword_10002C960, &qword_100020558);
  __chkstk_darwin(v5 - 8);
  v7 = &v14[-v6];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MusicDaemon.Request.Context.observerID.getter();
  swift_beginAccess();
  v12 = *(a1 + 80);

  sub_100007688(v12, a3, v11);

  (*(v9 + 8))(v11, v8);
  v13 = _s14descr100028B61V18ObservationContextVMa(0);
  if (sub_10000ED7C(a3, 1, v13) == 1)
  {
    MusicDaemon.Request.Context.observerID.getter();
    sub_10000EC8C(v15, v7);
    sub_10000ED54(v7, 0, 1, v13);
    swift_beginAccess();
    sub_100007738(v7, v11);
    swift_endAccess();
    sub_100002674();
  }
}

uint64_t sub_100007688@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_10000F1C0(a3), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a1 + 56);
    v9 = _s14descr100028B61V18ObservationContextVMa(0);
    sub_10000EC8C(v8 + *(*(v9 - 8) + 72) * v7, a2);
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = _s14descr100028B61V18ObservationContextVMa(0);
    v10 = a2;
    v11 = 1;
  }

  return sub_10000ED54(v10, v11, 1, v12);
}

uint64_t sub_100007738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000E634(&qword_10002C960, &qword_100020558);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = _s14descr100028B61V18ObservationContextVMa(0);
  __chkstk_darwin(v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10000ED7C(a1, 1, v12) == 1)
  {
    sub_100010734(a1, &qword_10002C960, &qword_100020558);
    sub_10000F414(a2, v8);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_100010734(v8, &qword_10002C960, &qword_100020558);
  }

  else
  {
    sub_10000ECF0(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10000F820(v11, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    v16 = type metadata accessor for UUID();
    return (*(*(v16 - 8) + 8))(a2, v16);
  }
}

void sub_100007910(uint64_t a1)
{
  sub_100011844();
  v98 = v1;
  v3 = v2;
  v102 = v4;
  v97 = _s14descr100028B61V18ObservationContextVMa(0);
  sub_100010D80();
  __chkstk_darwin(v5);
  sub_100011290();
  v90 = v6 - v7;
  sub_100011804();
  __chkstk_darwin(v8);
  v95 = &v89 - v9;
  sub_100011804();
  __chkstk_darwin(v10);
  v93 = &v89 - v11;
  v96 = sub_10000E634(&qword_10002C960, &qword_100020558);
  sub_100010D80();
  __chkstk_darwin(v12);
  sub_100011290();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v89 - v17;
  v19 = sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  sub_100010FE8(v19);
  sub_1000113E8();
  __chkstk_darwin(v20);
  v21 = sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  sub_100010FE8(v21);
  sub_1000113E8();
  __chkstk_darwin(v22);
  v24 = &v89 - v23;
  v25 = sub_10000E634(&qword_10002CA68, &qword_100020650);
  sub_100010FE8(v25);
  sub_1000113E8();
  __chkstk_darwin(v26);
  v28 = &v89 - v27;
  v29 = type metadata accessor for MusicDaemon.Request.Context();
  sub_100010D0C();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_100011290();
  v92 = (v33 - v34);
  sub_100011804();
  __chkstk_darwin(v35);
  v37 = &v89 - v36;
  type metadata accessor for MusicDaemon.Response.Context();
  sub_100010D0C();
  v100 = v39;
  v101 = v38;
  __chkstk_darwin(v38);
  sub_100010F5C();
  v42 = v41 - v40;
  v94 = v31;
  v91 = *(v31 + 16);
  v91(v37, v3, v29);
  v43 = type metadata accessor for MusicDaemon.Item();
  sub_100010DE8(v28, v44, v45, v43);
  v46 = type metadata accessor for MusicSubscription();
  sub_100010DE8(v24, v47, v48, v46);
  type metadata accessor for MusicRestrictions();
  sub_100010FB0();
  sub_10000ED54(v49, v50, v51, v52);
  v99 = v42;
  v53 = v97;
  v54 = v18;
  MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
  v55 = *(v98 + 16);
  v103 = v98;
  v104 = v3;
  UnfairLock.locked<A>(_:)();
  sub_10001078C(v54, v15, &qword_10002C960, &qword_100020558);
  if (sub_10000ED7C(v15, 1, v53) == 1)
  {
    sub_100010734(v15, &qword_10002C960, &qword_100020558);
    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_1000114C4(v56, qword_10002CEB0);
    v57 = v91;
    v58 = v92;
    v91(v92, v3, v29);
    v59 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v60 = sub_10001186C();
    if (os_log_type_enabled(v60, v61))
    {
      sub_1000118AC();
      v62 = sub_1000115B8();
      v105 = v62;
      MEMORY[0] = 136446210;
      v57(v37, v58, v29);
      String.init<A>(describing:)();
      v63 = sub_100011C18();
      v64(v63);
      v65 = sub_100011390();
      v68 = sub_100013F98(v65, v66, v67);

      MEMORY[4] = v68;
      sub_100011A10(&_mh_execute_header, v59, v55, "cannot end context that is not being observed: %{public}s.");
      sub_10000F7CC(v62);
      sub_100010FBC();

      sub_100010FBC();
    }

    else
    {

      v80 = sub_100011C18();
      v81(v80);
    }
  }

  else
  {
    v69 = v93;
    sub_10000ECF0(v15, v93);
    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_1000114C4(v70, qword_10002CEB0);
    v71 = v95;
    sub_10000EC8C(v69, v95);
    v72 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v73 = sub_10001186C();
    if (os_log_type_enabled(v73, v74))
    {
      sub_1000118AC();
      v75 = sub_1000115B8();
      v105 = v75;
      MEMORY[0] = 136446210;
      sub_10000EC8C(v71, v90);
      String.init<A>(describing:)();
      sub_10000F6F0(v71);
      v76 = sub_10001149C();
      v79 = sub_100013F98(v76, v77, v78);

      MEMORY[4] = v79;
      sub_100011A10(&_mh_execute_header, v72, v55, "ending observing context: %{public}s.");
      sub_10000F7CC(v75);
      sub_100010FBC();

      sub_100010FBC();
    }

    else
    {

      sub_10000F6F0(v71);
    }

    sub_10000F6F0(v69);
  }

  sub_100010734(v54, &qword_10002C960, &qword_100020558);
  sub_10000E634(&qword_10002CA70, &qword_100020658);
  v82 = v102;
  (*(v100 + 32))(v102, v99, v101);
  type metadata accessor for MusicDaemon.Error();
  sub_100010FB0();
  sub_10000ED54(v83, v84, v85, v86);
  v87 = enum case for MusicDaemon.Response.observationEnded(_:);
  type metadata accessor for MusicDaemon.Response();
  sub_100010CF8();
  (*(v88 + 104))(v82, v87);
  sub_10001182C();
}

void sub_100008000(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000E634(&qword_10002C960, &qword_100020558);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MusicDaemon.Request.Context.observerID.getter();
  swift_beginAccess();
  v11 = *(a1 + 80);

  sub_100007688(v11, a2, v10);

  v12 = *(v8 + 8);
  v12(v10, v7);
  v13 = _s14descr100028B61V18ObservationContextVMa(0);
  if (sub_10000ED7C(a2, 1, v13) != 1)
  {
    MusicDaemon.Request.Context.observerID.getter();
    swift_beginAccess();
    sub_10000F414(v10, v6);
    v12(v10, v7);
    sub_100010734(v6, &qword_10002C960, &qword_100020558);
    swift_endAccess();
    sub_100002674();
  }
}

uint64_t sub_1000081FC()
{
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000114C4(v0, qword_10002CEB0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_1000113CC(v2))
  {
    sub_1000110C0();
    v3 = swift_slowAlloc();
    sub_1000119EC(v3);
    sub_1000112B0(&_mh_execute_header, v4, v5, "beginning observing library, subscription and restrictions change notifications.");
    sub_100010FBC();
  }

  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = String._bridgeToObjectiveC()();
  v8 = sub_1000117F8();
  CFNotificationCenterAddObserver(v8, v9, v10, v7, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  v12 = String._bridgeToObjectiveC()();
  v13 = sub_1000117F8();
  CFNotificationCenterAddObserver(v13, v14, v15, v12, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_1000092BC();
  sub_10000B1D8();

  return sub_10000CBB4();
}

void sub_100008390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2)
  {

    sub_100008634();
  }

  else
  {
    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000114C4(v7, qword_10002CEB0);
    oslog = Logger.logObject.getter();
    v8 = a6();
    if (os_log_type_enabled(oslog, v8))
    {
      sub_1000110C0();
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "observer for darwin callback handler not found.", v9, 2u);
      sub_100010FBC();
    }
  }
}

void sub_1000084B8(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  v10 = a1;
  v11 = a3;
  v14 = a5;
  v12 = sub_100011624();
  sub_100008390(v12, v13, a3, a4, a5, a6);
}

uint64_t sub_100008558()
{
  v1 = v0;
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000114C4(v2, qword_10002CEB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_1000113CC(v4))
  {
    sub_1000110C0();
    v5 = swift_slowAlloc();
    sub_1000119EC(v5);
    sub_1000112B0(&_mh_execute_header, v6, v7, "ending observing library, subscription and restrictions change notifications.");
    sub_100010FBC();
  }

  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v8, v1);

  sub_10000B0DC();
  sub_10000CAB8();

  return sub_10000E410();
}

void sub_100008634()
{
  sub_100011844();
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_100010D0C();
  v22 = v3;
  __chkstk_darwin(v4);
  sub_100010F5C();
  v7 = v6 - v5;
  v21 = type metadata accessor for DispatchQoS();
  sub_100010D0C();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100010F5C();
  v13 = v12 - v11;
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000114C4(v14, qword_10002CEB0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (sub_1000116BC(v16))
  {
    sub_1000110C0();
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "library change notification triggered.", v17, 2u);
    sub_100010FBC();
  }

  if (qword_10002C5F8 != -1)
  {
    sub_100010CE4();
    swift_once();
  }

  v23[4] = sub_100010654;
  v23[5] = v1;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_1000091A0;
  v23[3] = &unk_100028F18;
  v18 = _Block_copy(v23);

  static DispatchQoS.unspecified.getter();
  sub_100010D58();
  sub_10000F784(v19, v20, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000E634(&qword_10002C9F8, &qword_1000205D0);
  sub_10001069C(&qword_10002CA00, &qword_10002C9F8, &qword_1000205D0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v22 + 8))(v7, v2);
  (*(v9 + 8))(v13, v21);

  sub_10001182C();
}

uint64_t sub_10000894C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v0 - 8);
  v52 = v0;
  __chkstk_darwin(v0);
  v49 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTimeInterval();
  v47 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = type metadata accessor for OS_dispatch_source.TimerFlags();
  result = __chkstk_darwin(v17);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v19 + 40))
  {
    v38 = v20;
    v39 = v14;
    v40 = v16;
    v41 = v11;
    v42 = v10;
    v43 = v9;
    v44 = v7;
    v45 = v3;
    v46 = v19;
    sub_10001065C(0, &qword_10002CA48, OS_dispatch_source_ptr);
    if (qword_10002C5F8 != -1)
    {
      swift_once();
    }

    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000F784(&qword_10002CA50, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
    sub_10000E634(&qword_10002CA58, &qword_100020648);
    sub_10001069C(&qword_10002CA60, &qword_10002CA58, &qword_100020648);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
    (*(v38 + 8))(v22, v17);
    *(v46 + 40) = v23;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v25 = v39;
    static DispatchTime.now()();
    v26 = v40;
    + infix(_:_:)();
    v27 = v42;
    v28 = *(v41 + 8);
    v28(v25, v42);
    v29 = v47;
    v30 = v43;
    v31 = v4;
    (*(v47 + 104))(v43, enum case for DispatchTimeInterval.never(_:), v4);
    v32 = v44;
    v38 = ObjectType;
    sub_100008F90(v44);
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    v33 = *(v29 + 8);
    v33(v32, v31);
    v33(v30, v31);
    v28(v26, v27);
    v34 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1000106F0;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000091A0;
    aBlock[3] = &unk_100028F40;
    v35 = _Block_copy(aBlock);

    v36 = v45;
    static DispatchQoS.unspecified.getter();
    v37 = v49;
    sub_1000091E4();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v35);
    (*(v51 + 8))(v37, v52);
    (*(v48 + 8))(v36, v50);

    OS_dispatch_source.resume()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100008F90@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_100009008(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() defaultCenter];
    if (qword_10002C620 != -1)
    {
      swift_once();
    }

    [v3 postNotificationName:qword_10002C628 object:0];

    *(v2 + 40) = 0;

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000F74C(v4, qword_10002CEB0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "debounceTimer: self deallocated.", v7, 2u);
    }
  }
}

uint64_t sub_1000091A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000091E4()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000F784(&qword_10002C9F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000E634(&qword_10002C9F8, &qword_1000205D0);
  sub_10001069C(&qword_10002CA00, &qword_10002C9F8, &qword_1000205D0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void sub_1000092BC()
{
  v1 = v0;
  v2 = sub_10000E634(&qword_10002CA18, &qword_1000205D8);
  sub_100010FE8(v2);
  sub_1000113E8();
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  if (*(v0 + 48))
  {
    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000114C4(v6, qword_10002CEB0);
    v29 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v7))
    {
      sub_1000110C0();
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v29, v7, "attempting to setup library notification task but it already exists.", v8, 2u);
      sub_100010FBC();
    }

    v9 = v29;
  }

  else
  {
    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000114C4(v10, qword_10002CEB0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (sub_1000116BC(v12))
    {
      sub_1000110C0();
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "setting up library notification task.", v13, 2u);
      sub_100010FBC();
    }

    type metadata accessor for TaskPriority();
    v14 = sub_100010FA0();
    sub_10000ED54(v14, v15, v16, v17);
    sub_1000119F8();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = qword_10002C630;

    if (v19 != -1)
    {
      sub_100010CC4(&qword_10002C630);
    }

    v20 = qword_10002CEA8;
    sub_100010CAC();
    v23 = sub_10000F784(v21, v22, &unk_100020A50);
    sub_100011BA8();
    v24 = swift_allocObject();
    v24[2] = v20;
    v24[3] = v23;
    v24[4] = v18;

    v25 = sub_1000114E8();
    *(v1 + 48) = sub_1000039D8(v25, v26, v5, v27, v24);
  }
}

uint64_t sub_100009574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  v5 = qword_10002CEA8;
  *(v4 + 48) = qword_10002CEA8;

  return _swift_task_switch(sub_100009620, v5, 0);
}

uint64_t sub_100009620()
{
  sub_1000110FC();
  sub_1000110D8();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1000096F4;

    return sub_10000988C();
  }

  else
  {

    sub_1000112D0();

    return v4();
  }
}

uint64_t sub_1000096F4()
{
  sub_1000111E4();
  sub_1000117D4();
  v2 = *v1;
  sub_100010E2C();
  *v3 = v2;

  sub_100011758();
  if (v0)
  {
  }

  sub_10001185C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100009834()
{
  sub_1000110FC();

  sub_1000112D0();

  return v0();
}

uint64_t sub_10000988C()
{
  sub_1000110FC();
  v1[12] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[13] = v2;
  sub_100010D70(v2);
  v1[14] = v3;
  v1[15] = sub_1000115D4();
  v4 = type metadata accessor for DispatchQoS();
  v1[16] = v4;
  sub_100010D70(v4);
  v1[17] = v5;
  v1[18] = sub_1000115D4();
  v6 = sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  sub_100010FE8(v6);
  v1[19] = sub_1000115D4();
  v7 = sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  sub_100010FE8(v7);
  v1[20] = sub_1000115D4();
  v8 = type metadata accessor for MusicDaemon.Response();
  v1[21] = v8;
  sub_100010D70(v8);
  v1[22] = v9;
  v1[23] = *(v10 + 64);
  v1[24] = sub_1000115EC();
  v1[25] = swift_task_alloc();
  v11 = _s14descr100028B61V18ObservationContextVMa(0);
  v1[26] = v11;
  sub_100010D70(v11);
  v1[27] = v12;
  v1[28] = sub_1000115EC();
  v1[29] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v1[30] = v13;
  sub_100010D70(v13);
  v1[31] = v14;
  v1[32] = sub_1000115D4();
  v15 = sub_10000E634(&qword_10002C968, &qword_100020560);
  sub_100010FE8(v15);
  v1[33] = sub_1000115EC();
  v1[34] = swift_task_alloc();
  v16 = sub_10000E634(&qword_10002CA38, &qword_100020628);
  sub_100010FE8(v16);
  v1[35] = sub_1000115D4();
  v17 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v1[36] = v17;
  sub_100010D70(v17);
  v1[37] = v18;
  v1[38] = sub_1000115D4();
  if (qword_10002C630 != -1)
  {
    sub_100010CC4(&qword_10002C630);
  }

  v1[39] = qword_10002CEA8;
  sub_100011B58();
  v19 = sub_1000112A0();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_100009BB8()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_10002C620 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  *(v0 + 320) = qword_10002CEA8;
  sub_100010CAC();
  sub_10000F784(v2, v3, &unk_100020A50);
  v8 = sub_100010FF4(qword_100020630);

  swift_task_alloc();
  sub_10001104C();
  *(v0 + 328) = v4;
  *v4 = v5;
  v6 = sub_100010EAC(v4);

  return (v8)(v6);
}

uint64_t sub_100009CFC()
{
  sub_1000110FC();
  sub_100011384();
  v3 = v2;
  sub_100011058();
  *v4 = v3;
  v5 = *v1;
  sub_100010E2C();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (!v0)
  {

    v8 = sub_100011270();

    return _swift_task_switch(v8, v9, v10);
  }

  return result;
}

uint64_t sub_100009DFC()
{
  v1 = *(v0 + 280);
  v2 = type metadata accessor for Notification();
  if (sub_10000ED7C(v1, 1, v2) == 1)
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

    sub_1000112D0();
    sub_100011C50();

    __asm { BRAA            X1, X16 }
  }

  v5 = *(v0 + 96);
  v6 = sub_10000E634(&qword_10002C9E0, &qword_1000205C0);
  sub_100011A88(v6, v7, v6);
  v8 = *(v0 + 72);
  *(v0 + 344) = v8;
  sub_10000E634(&qword_10002C9E8, &qword_1000205C8);
  UnfairLock.locked<A>(_:)();
  v9 = 0;
  *(v0 + 352) = *(v0 + 80);
  *(v0 + 392) = *(v8 + 32);
  sub_100010F7C();
  if (!v5)
  {
LABEL_7:
    while (!__OFADD__(v9, 1))
    {
      sub_1000117EC();
      if (v11 == v12)
      {
        v37 = sub_10001155C();
        sub_10000E634(v37, v38);
        v39 = sub_100010EE4();
        sub_10000ED54(v39, v40, v41, v42);
        v5 = 0;
        goto LABEL_11;
      }

      sub_1000117E0();
      ++v9;
    }

    __break(1u);
LABEL_26:
    sub_100010C98();
    swift_once();
LABEL_17:
    v43 = type metadata accessor for Logger();
    sub_1000114C4(v43, qword_10002CEB0);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (sub_1000112DC(v45))
    {
      sub_1000110C0();
      v46 = swift_slowAlloc();
      sub_100011690(v46);
      sub_100010F6C();
      _os_log_impl(v47, v48, v49, v50, v51, 2u);
      sub_100010FBC();
    }

    sub_100010734(*(v0 + 280), &qword_10002CA38, &qword_100020628);
    *(v0 + 320) = qword_10002CEA8;
    sub_100010CAC();
    sub_10000F784(v52, v53, &unk_100020A50);
    sub_100010FF4(qword_100020630);

    swift_task_alloc();
    sub_10001104C();
    *(v0 + 328) = v54;
    *v54 = v55;
    sub_100010EAC(v54);
    sub_100011C50();

    __asm { BR              X4 }
  }

  while (1)
  {
    v10 = *(v0 + 344);
    v13 = *(v0 + 264);
    v14 = *(v0 + 232);
    v69 = v14;
    sub_100010F34();
    v15 = sub_100010D20();
    v16(v15);
    v17 = sub_1000117C8(*(v10 + 56));
    sub_10000EC8C(v17, v14);
    v18 = sub_10000E634(&qword_10002C970, &qword_100020568);
    v19 = *(v18 + 48);
    v20 = sub_100010F48();
    v21(v20);
    sub_10000ECF0(v69, v13 + v19);
    v22 = sub_100010EF4();
    sub_10000ED54(v22, v23, v24, v18);
LABEL_11:
    *(v0 + 360) = v5;
    *(v0 + 368) = v9;
    sub_1000107D8(*(v0 + 264), *(v0 + 272), &qword_10002C968, &qword_100020560);
    v25 = sub_10001155C();
    v27 = sub_10000E634(v25, v26);
    v28 = sub_1000110CC();
    v30 = sub_10000ED7C(v28, v29, v27);
    v31 = *(v0 + 352);
    if (v30 == 1)
    {

      if (qword_10002C638 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }

    sub_10000ECF0(*(v0 + 272) + *(v27 + 48), *(v0 + 224));
    if (*(v31 + 16))
    {
      v32 = *(v0 + 352);
      v33 = sub_10000F1C0(*(v0 + 224));
      if (v34)
      {
        break;
      }
    }

    sub_10000F6F0(*(v0 + 224));
    v35 = sub_100011004();
    v36(v35);
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  v58 = sub_100011584(v33);
  sub_100010DE8(v32, v59, v60, v58);
  type metadata accessor for MusicRestrictions();
  sub_100010FB0();
  sub_10000ED54(v61, v62, v63, v64);

  swift_task_alloc();
  sub_10001104C();
  *(v0 + 384) = v65;
  *v65 = v66;
  sub_100011170(v65);
  sub_100011C50();

  return sub_1000055B4();
}

uint64_t sub_10000A328()
{
  sub_1000111E4();
  sub_100011384();
  v2 = *(v1 + 160);
  v3 = *(v1 + 152);
  v4 = *v0;
  sub_100010E2C();
  *v5 = v4;

  sub_100010734(v3, &qword_10002C9C0, &qword_1000205A8);
  sub_100010734(v2, &qword_10002C9B8, &qword_1000205A0);
  v6 = sub_100011270();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10000A480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100011958();
  sub_100011C44();
  v25 = v24 + 2;
  if (qword_10002C5F8 != -1)
  {
LABEL_20:
    sub_100010CE4();
    swift_once();
  }

  v26 = v24[47];
  v106 = v24[34];
  v104 = v24[31];
  v105 = v24[30];
  v27 = v24[24];
  v28 = v24[22];
  v29 = v24[21];
  v100 = v24[25];
  v101 = v24[17];
  v102 = v24[16];
  v103 = v24[28];
  v95 = v24[18];
  v96 = v24[15];
  v98 = v29;
  v99 = v24[14];
  v97 = qword_10002CE88;
  (*(v28 + 16))(v27);
  v30 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v31 = swift_allocObject();
  v94 = v26;
  *(v31 + 16) = v26;
  (*(v28 + 32))(v31 + v30, v27, v29);
  v24[6] = sub_100010528;
  v24[7] = v31;
  v24[2] = _NSConcreteStackBlock;
  v24[3] = 1107296256;
  v24[4] = sub_1000091A0;
  v24[5] = &unk_100028EC8;
  v32 = _Block_copy(v25);

  static DispatchQoS.unspecified.getter();
  v24[11] = &_swiftEmptyArrayStorage;
  sub_100010D58();
  sub_10000F784(v33, v34, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000E634(&qword_10002C9F8, &qword_1000205D0);
  sub_10001069C(&qword_10002CA00, &qword_10002C9F8, &qword_1000205D0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v97;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);

  v35 = sub_1000114DC();
  v36(v35);
  (*(v101 + 8))(v95, v102);
  (*(v28 + 8))(v100, v29);
  sub_10000F6F0(v103);

  (*(v104 + 8))(v106, v105);
  v37 = v24[45];
  v38 = v24[46];
  if (!v37)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v39 = v24[43];
    v42 = v24[33];
    v43 = v24[29];
    v107 = v43;
    v105 = v24[27];
    sub_100010F34();
    v44 = sub_100010D20();
    v45(v44);
    v46 = sub_1000117C8(*(v39 + 56));
    sub_10000EC8C(v46, v43);
    v47 = sub_10000E634(&qword_10002C970, &qword_100020568);
    v48 = *(v47 + 48);
    v49 = sub_100010F48();
    v50(v49);
    sub_10000ECF0(v107, v42 + v48);
    v51 = sub_100010EF4();
    sub_10000ED54(v51, v52, v53, v47);
LABEL_8:
    v24[45] = v37;
    v24[46] = v38;
    v54 = v24[34];
    sub_1000107D8(v24[33], v54, &qword_10002C968, &qword_100020560);
    v55 = sub_100011550();
    v57 = sub_10000E634(v55, v56);
    sub_100010FC8(v54);
    if (v58)
    {
      break;
    }

    v59 = v24[44];
    sub_10000ECF0(v24[34] + *(v57 + 48), v24[28]);
    if (*(v59 + 16))
    {
      v60 = v24[44];
      v61 = sub_10000F1C0(v24[28]);
      if (v62)
      {
        v84 = sub_100011584(v61);
        sub_100010DE8(v60, v85, v86, v84);
        type metadata accessor for MusicRestrictions();
        sub_100010FB0();
        sub_10000ED54(v87, v88, v89, v90);

        swift_task_alloc();
        sub_10001104C();
        v24[48] = v91;
        *v91 = v92;
        sub_100011170(v91);
        sub_1000114A8();

        return sub_1000055B4();
      }
    }

    v25 = v24[34];
    sub_10000F6F0(v24[28]);
    v63 = sub_100011004();
    v64(v63);
    if (!v37)
    {
LABEL_4:
      while (!__OFADD__(v38, 1))
      {
        sub_1000117EC();
        if (v40 == v41)
        {
          v65 = sub_100011550();
          sub_10000E634(v65, v66);
          v67 = sub_100010EE4();
          sub_10000ED54(v67, v68, v69, v70);
          v37 = 0;
          goto LABEL_8;
        }

        sub_1000117E0();
        ++v38;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  sub_100010734(v24[35], &qword_10002CA38, &qword_100020628);
  v24[40] = qword_10002CEA8;
  sub_100010CAC();
  sub_10000F784(v71, v72, &unk_100020A50);
  v108 = sub_100010FF4(qword_100020630);

  swift_task_alloc();
  sub_10001104C();
  v24[41] = v73;
  *v73 = v74;
  sub_100010EAC(v73);
  sub_1000114A8();

  return v79(v75, v76, v77, v78, v79, v80, v81, v82, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v108, a22, a23, a24);
}

uint64_t sub_10000A9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v5 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v6 = sub_10000F784(&qword_10002CA40, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10000AAE8;

  return dispatch thunk of AsyncIteratorProtocol.next()(a1, v5, v6);
}

uint64_t sub_10000AAE8()
{
  sub_1000111E4();
  sub_100011384();
  v3 = v2;
  sub_100011058();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_100010E2C();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (v6)
    {
      sub_100011DCC();
      dispatch thunk of Actor.unownedExecutor.getter();
      sub_100011B88();
    }

    else
    {
      sub_100011C38();
    }

    v11 = sub_100010C60;
  }

  else
  {
    if (v6)
    {
      sub_100011DCC();
      dispatch thunk of Actor.unownedExecutor.getter();
      sub_100011B88();
    }

    else
    {
      sub_100011C38();
    }

    v11 = sub_100010C4C;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_10000AC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v5 = type metadata accessor for MusicSubscription.Updates.Iterator();
  v6 = sub_10000F784(&qword_10002CA28, &type metadata accessor for MusicSubscription.Updates.Iterator, &protocol conformance descriptor for MusicSubscription.Updates.Iterator);
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10000AD2C;

  return dispatch thunk of AsyncIteratorProtocol.next()(a1, v5, v6);
}

uint64_t sub_10000AD2C()
{
  sub_1000111E4();
  sub_100011384();
  v3 = v2;
  sub_100011058();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_100010E2C();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (v6)
    {
      sub_100011DCC();
      dispatch thunk of Actor.unownedExecutor.getter();
      sub_100011B88();
    }

    else
    {
      sub_100011C38();
    }

    v11 = sub_10000AEA0;
  }

  else
  {
    if (v6)
    {
      sub_100011DCC();
      dispatch thunk of Actor.unownedExecutor.getter();
      sub_100011B88();
    }

    else
    {
      sub_100011C38();
    }

    v11 = sub_10000AE7C;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_10000AEA0()
{
  sub_1000110FC();
  *(v0 + 16) = *(v0 + 48);
  sub_10000E634(&qword_10002CA30, &qword_100020610);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  sub_1000112D0();

  return v1();
}

void sub_10000AF40(uint64_t a1, uint64_t a2)
{
  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F74C(v3, qword_10002CEB0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "responding to library did change notification.", v6, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_session))
  {
    type metadata accessor for MusicDaemon.Response();
    sub_10000F784(&qword_10002CA08, &type metadata accessor for MusicDaemon.Response, &protocol conformance descriptor for MusicDaemon.Response);

    dispatch thunk of XPCSession.send<A>(_:)();
  }
}

uint64_t sub_10000B0DC()
{
  v1 = v0;
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000114C4(v2, qword_10002CEB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_1000113CC(v4))
  {
    sub_1000110C0();
    v5 = swift_slowAlloc();
    sub_1000119EC(v5);
    sub_1000112B0(&_mh_execute_header, v6, v7, "resetting library notification task.");
    sub_100010FBC();
  }

  if (*(v1 + 48))
  {

    Task.cancel()();
  }

  *(v1 + 48) = 0;
}

uint64_t sub_10000B1D8()
{
  v3 = sub_10000E634(&qword_10002CA18, &qword_1000205D8);
  sub_100010FE8(v3);
  sub_1000113E8();
  __chkstk_darwin(v4);
  sub_10001189C();
  type metadata accessor for TaskPriority();
  sub_100010FB0();
  sub_10000ED54(v5, v6, v7, v8);
  sub_1000119F8();
  swift_allocObject();
  swift_weakInit();
  v9 = qword_10002C630;

  if (v9 != -1)
  {
    sub_100010CC4(&qword_10002C630);
  }

  sub_100010CAC();
  sub_10000F784(v10, v11, &unk_100020A50);
  sub_100011BA8();
  v12 = swift_allocObject();
  sub_100011D6C(v12);

  v13 = sub_1000114E8();
  *(v1 + 56) = sub_1000039D8(v13, v14, v0, v15, v2);
}

uint64_t sub_10000B320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  v5 = qword_10002CEA8;
  *(v4 + 48) = qword_10002CEA8;

  return _swift_task_switch(sub_10000B3CC, v5, 0);
}

uint64_t sub_10000B3CC()
{
  sub_1000110FC();
  sub_1000110D8();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_10000B4A0;

    return sub_10000B5E0();
  }

  else
  {

    sub_1000112D0();

    return v4();
  }
}

uint64_t sub_10000B4A0()
{
  sub_1000111E4();
  sub_1000117D4();
  v2 = *v1;
  sub_100010E2C();
  *v3 = v2;

  sub_100011758();
  if (v0)
  {
  }

  sub_10001185C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10000B5E0()
{
  sub_1000110FC();
  v1[12] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[13] = v2;
  sub_100010D70(v2);
  v1[14] = v3;
  v1[15] = sub_1000115D4();
  v4 = type metadata accessor for DispatchQoS();
  v1[16] = v4;
  sub_100010D70(v4);
  v1[17] = v5;
  v1[18] = sub_1000115D4();
  v6 = sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  sub_100010FE8(v6);
  v1[19] = sub_1000115D4();
  v7 = type metadata accessor for MusicDaemon.Response();
  v1[20] = v7;
  sub_100010D70(v7);
  v1[21] = v8;
  v1[22] = *(v9 + 64);
  v1[23] = sub_1000115EC();
  v1[24] = swift_task_alloc();
  v10 = _s14descr100028B61V18ObservationContextVMa(0);
  v1[25] = v10;
  sub_100010D70(v10);
  v1[26] = v11;
  v1[27] = sub_1000115EC();
  v1[28] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v1[29] = v12;
  sub_100010D70(v12);
  v1[30] = v13;
  v1[31] = sub_1000115D4();
  v14 = sub_10000E634(&qword_10002C968, &qword_100020560);
  sub_100010FE8(v14);
  v1[32] = sub_1000115EC();
  v1[33] = swift_task_alloc();
  v15 = type metadata accessor for MusicSubscription();
  v1[34] = v15;
  sub_100010D70(v15);
  v1[35] = v16;
  v1[36] = *(v17 + 64);
  v1[37] = sub_1000115EC();
  v1[38] = swift_task_alloc();
  v18 = sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  sub_100010FE8(v18);
  v1[39] = sub_1000115EC();
  v1[40] = swift_task_alloc();
  v19 = type metadata accessor for MusicSubscription.Updates();
  v1[41] = v19;
  sub_100010D70(v19);
  v1[42] = v20;
  v1[43] = sub_1000115D4();
  v21 = type metadata accessor for MusicSubscription.Updates.Iterator();
  v1[44] = v21;
  sub_100010D70(v21);
  v1[45] = v22;
  v1[46] = sub_1000115D4();
  if (qword_10002C630 != -1)
  {
    sub_100010CC4(&qword_10002C630);
  }

  v1[47] = qword_10002CEA8;
  sub_100011B58();
  v23 = sub_1000112A0();

  return _swift_task_switch(v23, v24, v25);
}

uint64_t sub_10000B998()
{
  static MusicSubscription.subscriptionUpdates.getter();
  MusicSubscription.Updates.makeAsyncIterator()();
  v1 = sub_1000114DC();
  v2(v1);
  *(v0 + 384) = qword_10002CEA8;
  sub_100010CAC();
  sub_10000F784(v3, v4, &unk_100020A50);
  v10 = sub_100010FF4(&qword_100020608);

  v5 = swift_task_alloc();
  v6 = sub_100011014(v5);
  *v6 = v7;
  v8 = sub_100010E3C(v6);

  return (v10)(v8);
}

uint64_t sub_10000BA90()
{
  sub_1000110FC();
  sub_100011384();
  v3 = v2;
  sub_100011058();
  *v4 = v3;
  v5 = *v1;
  sub_100010E2C();
  *v6 = v5;
  *(v3 + 400) = v0;

  if (!v0)
  {

    v8 = sub_100011270();

    return _swift_task_switch(v8, v9, v10);
  }

  return result;
}

uint64_t sub_10000BB90()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 272);
  sub_100010FC8(v1);
  if (v3)
  {
    (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));

    sub_1000112D0();
    sub_100011568();

    __asm { BRAA            X1, X16 }
  }

  v6 = *(v0 + 304);
  v7 = *(v0 + 280);
  v8 = *(v0 + 96);
  v9 = *(v7 + 32);
  *(v0 + 408) = v9;
  *(v0 + 416) = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v6, v1, v2);
  v10 = sub_10000E634(&qword_10002C9E0, &qword_1000205C0);
  sub_100011A88(v10, v11, v10);
  v12 = *(v0 + 72);
  *(v0 + 424) = v12;
  sub_10000E634(&qword_10002C9E8, &qword_1000205C8);
  UnfairLock.locked<A>(_:)();
  v13 = 0;
  *(v0 + 432) = *(v0 + 80);
  *(v0 + 488) = *(v12 + 32);
  sub_100010F7C();
  if (!v8)
  {
LABEL_8:
    while (!__OFADD__(v13, 1))
    {
      sub_1000117EC();
      if (v15 == v16)
      {
        v39 = sub_10001155C();
        sub_10000E634(v39, v40);
        v41 = sub_100010EE4();
        sub_10000ED54(v41, v42, v43, v44);
        v8 = 0;
        goto LABEL_12;
      }

      sub_1000117E0();
      ++v13;
    }

    __break(1u);
LABEL_27:
    sub_100010C98();
    swift_once();
LABEL_18:
    v45 = type metadata accessor for Logger();
    sub_1000114C4(v45, qword_10002CEB0);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (sub_1000112DC(v47))
    {
      sub_1000110C0();
      v48 = swift_slowAlloc();
      sub_100011690(v48);
      sub_100010F6C();
      _os_log_impl(v49, v50, v51, v52, v53, 2u);
      sub_100010FBC();
    }

    (*(*(v0 + 280) + 8))(*(v0 + 304), *(v0 + 272));
    *(v0 + 384) = qword_10002CEA8;
    sub_100010CAC();
    sub_10000F784(v54, v55, &unk_100020A50);
    sub_100010FF4(&qword_100020608);

    v56 = swift_task_alloc();
    v57 = sub_100011014(v56);
    *v57 = v58;
    sub_100010E3C(v57);
    sub_100011568();

    __asm { BR              X4 }
  }

  while (1)
  {
    v14 = *(v0 + 424);
    v17 = *(v0 + 256);
    v18 = *(v0 + 224);
    v74 = v18;
    sub_100010F34();
    v19 = sub_100010D20();
    v20(v19);
    v21 = sub_1000117C8(*(v14 + 56));
    sub_10000EC8C(v21, v18);
    v22 = sub_10000E634(&qword_10002C970, &qword_100020568);
    v23 = *(v22 + 48);
    v24 = sub_100010F48();
    v25(v24);
    sub_10000ECF0(v74, v17 + v23);
    v26 = sub_100010EF4();
    sub_10000ED54(v26, v27, v28, v22);
LABEL_12:
    *(v0 + 440) = v8;
    *(v0 + 448) = v13;
    v29 = *(v0 + 264);
    sub_1000107D8(*(v0 + 256), v29, &qword_10002C968, &qword_100020560);
    v30 = sub_10001155C();
    v32 = sub_10000E634(v30, v31);
    v33 = sub_1000110CC();
    sub_100011DE4(v33, v34);
    if (v3)
    {

      if (qword_10002C638 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }

    sub_10000ECF0(*(v0 + 264) + *(v32 + 48), *(v0 + 216));
    if (*(v29 + 16))
    {
      v35 = sub_10000F1C0(*(v0 + 216));
      if (v36)
      {
        break;
      }
    }

    sub_10000F6F0(*(v0 + 216));
    v37 = sub_100011004();
    v38(v37);
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  v61 = sub_1000111A0(v35);
  v62(v61);
  v63 = sub_100010EF4();
  sub_100011420(v63, v64, v65, v8);
  type metadata accessor for MusicRestrictions();
  v66 = sub_100010FA0();
  sub_10000ED54(v66, v67, v68, v69);

  swift_task_alloc();
  sub_10001104C();
  *(v0 + 480) = v70;
  *v70 = v71;
  sub_100011108(v70);
  sub_100011568();

  return sub_1000055B4();
}

uint64_t sub_10000C0F8()
{
  sub_1000111E4();
  sub_100011384();
  v2 = *(v1 + 312);
  v3 = *(v1 + 152);
  v4 = *v0;
  sub_100010E2C();
  *v5 = v4;

  sub_100010734(v3, &qword_10002C9C0, &qword_1000205A8);
  sub_100010734(v2, &qword_10002C9B8, &qword_1000205A0);
  v6 = sub_100011270();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10000C250()
{
  v113 = v0 + 16;
  if (qword_10002C5F8 != -1)
  {
LABEL_20:
    sub_100010CE4();
    swift_once();
  }

  v105 = *(v0 + 416);
  v108 = *(v0 + 456);
  v100 = *(v0 + 408);
  v121 = *(v0 + 240);
  v122 = *(v0 + 232);
  v123 = *(v0 + 264);
  v120 = *(v0 + 216);
  v1 = *(v0 + 168);
  v97 = *(v0 + 176);
  v2 = *(v0 + 160);
  v111 = *(v0 + 144);
  v117 = *(v0 + 192);
  v118 = *(v0 + 136);
  v119 = *(v0 + 128);
  v115 = *(v0 + 120);
  v116 = *(v0 + 104);
  (*(v0 + 464))(*(v0 + 296), *(v0 + 304), *(v0 + 272));
  v3 = sub_1000119BC();
  v4(v3);
  sub_10001139C();
  v5 = swift_allocObject();
  v6 = sub_100011720(v5);
  v8 = v7(v6);
  v16 = sub_100011630(v8, v9, v10, v11, v12, v13, v14, v15, v94, v97, v100, v0 + 32, v105, v108);
  v18 = v17(v16);
  sub_1000112F8(v18, v19, v20, v21, v22, v23, v24, v25, v95, v98, v101, v103, v106, v109, v111, v113);
  sub_10001136C(COERCE_DOUBLE(1107296256));
  *(v0 + 32) = v26;
  *(v0 + 40) = &unk_100028E50;
  v28 = _Block_copy(v27);

  v29 = v112;
  static DispatchQoS.unspecified.getter();
  *(v0 + 88) = &_swiftEmptyArrayStorage;
  sub_100010D58();
  sub_10000F784(v30, v31, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000E634(&qword_10002C9F8, &qword_1000205D0);
  v32 = sub_10001069C(&qword_10002CA00, &qword_10002C9F8, &qword_1000205D0);
  sub_100011764(v0 + 88, v33, v32, v34, v35, v36, v37, v38, v96, v99, v102, v104, v107, v110, v112, v114, v115, v116);
  sub_100011B34();
  _Block_release(v28);

  v39 = sub_100011280();
  v40(v39);
  (*(v118 + 8))(v29, v119);
  (*(v1 + 8))(v117, v2);
  sub_10000F6F0(v120);

  (*(v121 + 8))(v123, v122);
  v41 = *(v0 + 440);
  v42 = *(v0 + 448);
  if (!v41)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v43 = *(v0 + 424);
    v46 = *(v0 + 256);
    v47 = *(v0 + 224);
    v124 = v47;
    sub_100010F34();
    v48 = sub_100010D20();
    v49(v48);
    v50 = sub_1000117C8(*(v43 + 56));
    sub_10000EC8C(v50, v47);
    v51 = sub_10000E634(&qword_10002C970, &qword_100020568);
    v52 = *(v51 + 48);
    v53 = sub_100010F48();
    v54(v53);
    sub_10000ECF0(v124, v46 + v52);
    v55 = sub_100010EF4();
    sub_10000ED54(v55, v56, v57, v51);
LABEL_8:
    *(v0 + 440) = v41;
    *(v0 + 448) = v42;
    v58 = *(v0 + 264);
    sub_1000107D8(*(v0 + 256), v58, &qword_10002C968, &qword_100020560);
    v59 = sub_100011550();
    v61 = sub_10000E634(v59, v60);
    sub_100010FC8(v58);
    if (v62)
    {

      (*(*(v0 + 280) + 8))(*(v0 + 304), *(v0 + 272));
      *(v0 + 384) = qword_10002CEA8;
      sub_100010CAC();
      sub_10000F784(v74, v75, &unk_100020A50);
      sub_100010FF4(&qword_100020608);

      v76 = swift_task_alloc();
      v77 = sub_100011014(v76);
      *v77 = v78;
      sub_100010E3C(v77);
      sub_10001193C();

      __asm { BR              X4 }
    }

    v63 = *(v0 + 432);
    sub_10000ECF0(*(v0 + 264) + *(v61 + 48), *(v0 + 216));
    if (*(v63 + 16))
    {
      v64 = sub_10000F1C0(*(v0 + 216));
      if (v65)
      {
        break;
      }
    }

    sub_10000F6F0(*(v0 + 216));
    v66 = sub_100011004();
    v67(v66);
    if (!v41)
    {
LABEL_4:
      while (!__OFADD__(v42, 1))
      {
        sub_1000117EC();
        if (v44 == v45)
        {
          v68 = sub_100011550();
          sub_10000E634(v68, v69);
          v70 = sub_100010EE4();
          sub_10000ED54(v70, v71, v72, v73);
          v41 = 0;
          goto LABEL_8;
        }

        sub_1000117E0();
        ++v42;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  v81 = sub_1000111A0(v64);
  v82(v81);
  v83 = sub_100010EF4();
  sub_100011420(v83, v84, v85, v41);
  type metadata accessor for MusicRestrictions();
  v86 = sub_100010FA0();
  sub_10000ED54(v86, v87, v88, v89);

  swift_task_alloc();
  sub_10001104C();
  *(v0 + 480) = v90;
  *v90 = v91;
  sub_100011108(v90);
  sub_10001193C();

  return sub_1000055B4();
}

void sub_10000C7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MusicSubscription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F74C(v9, qword_10002CEB0);
  (*(v6 + 16))(v8, a1, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    sub_10000F784(&qword_10002CA20, &type metadata accessor for MusicSubscription, &protocol conformance descriptor for MusicSubscription);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v18 = sub_100013F98(v15, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "responding to subscription change notification with new subscription: %{public}s.", v13, 0xCu);
    sub_10000F7CC(v14);

    a2 = v20;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  if (*(a2 + OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_session))
  {
    type metadata accessor for MusicDaemon.Response();
    sub_10000F784(&qword_10002CA08, &type metadata accessor for MusicDaemon.Response, &protocol conformance descriptor for MusicDaemon.Response);

    dispatch thunk of XPCSession.send<A>(_:)();
  }
}

uint64_t sub_10000CAB8()
{
  v1 = v0;
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000114C4(v2, qword_10002CEB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_1000113CC(v4))
  {
    sub_1000110C0();
    v5 = swift_slowAlloc();
    sub_1000119EC(v5);
    sub_1000112B0(&_mh_execute_header, v6, v7, "resetting subscription change notification task.");
    sub_100010FBC();
  }

  if (*(v1 + 56))
  {

    Task.cancel()();
  }

  *(v1 + 56) = 0;
}

uint64_t sub_10000CBB4()
{
  v3 = sub_10000E634(&qword_10002CA18, &qword_1000205D8);
  sub_100010FE8(v3);
  sub_1000113E8();
  __chkstk_darwin(v4);
  sub_10001189C();
  type metadata accessor for TaskPriority();
  sub_100010FB0();
  sub_10000ED54(v5, v6, v7, v8);
  sub_1000119F8();
  swift_allocObject();
  swift_weakInit();
  v9 = qword_10002C630;

  if (v9 != -1)
  {
    sub_100010CC4(&qword_10002C630);
  }

  sub_100010CAC();
  sub_10000F784(v10, v11, &unk_100020A50);
  sub_100011BA8();
  v12 = swift_allocObject();
  sub_100011D6C(v12);

  v13 = sub_1000114E8();
  *(v1 + 64) = sub_1000039D8(v13, v14, v0, v15, v2);
}

uint64_t sub_10000CCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  v5 = qword_10002CEA8;
  *(v4 + 48) = qword_10002CEA8;

  return _swift_task_switch(sub_10000CDA8, v5, 0);
}

uint64_t sub_10000CDA8()
{
  sub_1000110FC();
  sub_1000110D8();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_10000B4A0;

    return sub_10000CE7C();
  }

  else
  {

    sub_1000112D0();

    return v4();
  }
}

uint64_t sub_10000CE7C()
{
  sub_1000110FC();
  v1[11] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[12] = v2;
  sub_100010D70(v2);
  v1[13] = v3;
  v1[14] = sub_1000115D4();
  v4 = type metadata accessor for DispatchQoS();
  v1[15] = v4;
  sub_100010D70(v4);
  v1[16] = v5;
  v1[17] = sub_1000115D4();
  v6 = sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  sub_100010FE8(v6);
  v1[18] = sub_1000115D4();
  v7 = type metadata accessor for MusicDaemon.Response();
  v1[19] = v7;
  sub_100010D70(v7);
  v1[20] = v8;
  v1[21] = *(v9 + 64);
  v1[22] = sub_1000115EC();
  v1[23] = swift_task_alloc();
  v10 = _s14descr100028B61V18ObservationContextVMa(0);
  v1[24] = v10;
  sub_100010D70(v10);
  v1[25] = v11;
  v1[26] = sub_1000115EC();
  v1[27] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v1[28] = v12;
  sub_100010D70(v12);
  v1[29] = v13;
  v1[30] = sub_1000115D4();
  v14 = sub_10000E634(&qword_10002C968, &qword_100020560);
  sub_100010FE8(v14);
  v1[31] = sub_1000115EC();
  v1[32] = swift_task_alloc();
  v15 = type metadata accessor for MusicRestrictions();
  v1[33] = v15;
  sub_100010D70(v15);
  v1[34] = v16;
  v1[35] = *(v17 + 64);
  v1[36] = sub_1000115EC();
  v1[37] = swift_task_alloc();
  v18 = sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  sub_100010FE8(v18);
  v1[38] = sub_1000115EC();
  v1[39] = swift_task_alloc();
  v19 = sub_10000E634(&qword_10002C9C8, &qword_1000205B0);
  v1[40] = v19;
  sub_100010D70(v19);
  v1[41] = v20;
  v1[42] = sub_1000115D4();
  v21 = sub_10000E634(&qword_10002C9D0, &qword_1000205B8);
  v1[43] = v21;
  sub_100010D70(v21);
  v1[44] = v22;
  v1[45] = sub_1000115D4();
  if (qword_10002C630 != -1)
  {
    sub_100010CC4(&qword_10002C630);
  }

  v1[46] = qword_10002CEA8;
  sub_100011B58();
  v23 = sub_1000112A0();

  return _swift_task_switch(v23, v24, v25);
}

uint64_t sub_10000D24C()
{
  sub_1000111E4();
  static MusicRestrictions.updates.getter();
  AsyncStream.makeAsyncIterator()();
  v1 = sub_1000114DC();
  v2(v1);
  v3 = qword_10002CEA8;
  *(v0 + 376) = 0;
  *(v0 + 384) = v3;
  sub_100010CAC();
  sub_10000F784(v4, v5, &unk_100020A50);

  v6 = swift_task_alloc();
  v7 = sub_100011014(v6);
  *v7 = v8;
  v9 = sub_100010E74(v7);

  return AsyncStream.Iterator.next(isolation:)(v9);
}

uint64_t sub_10000D338()
{
  sub_1000110FC();
  sub_100011384();
  v2 = *(v1 + 368);
  v3 = *v0;
  sub_100010E2C();
  *v4 = v3;

  return _swift_task_switch(sub_10000D454, v2, 0);
}

uint64_t sub_10000D454()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 264);
  sub_100010FC8(v1);
  if (v3)
  {
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));

    sub_1000112D0();
    sub_100011568();

    __asm { BRAA            X1, X16 }
  }

  v6 = *(v0 + 376);
  v7 = *(v0 + 296);
  v8 = *(v0 + 272);
  v9 = *(v0 + 88);
  v10 = *(v8 + 32);
  *(v0 + 400) = v10;
  *(v0 + 408) = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v7, v1, v2);
  sub_10000E634(&qword_10002C9E0, &qword_1000205C0);
  UnfairLock.locked<A>(_:)();
  v11 = *(v0 + 64);
  *(v0 + 416) = v11;
  v12 = sub_10000E634(&qword_10002C9E8, &qword_1000205C8);
  sub_100011A88(v12, v13, v12);
  v14 = 0;
  v15 = *(v0 + 72);
  *(v0 + 424) = v6;
  *(v0 + 432) = v15;
  *(v0 + 488) = *(v11 + 32);
  sub_100010F7C();
  if (v9)
  {
    while (1)
    {
      v16 = *(v0 + 416);
      v19 = *(v0 + 248);
      v6 = *(v0 + 232);
      v20 = *(v0 + 216);
      v76 = v20;
      sub_100010F34();
      v21 = sub_100010D20();
      v22(v21);
      v23 = sub_1000117C8(*(v16 + 56));
      sub_10000EC8C(v23, v20);
      v24 = sub_10000E634(&qword_10002C970, &qword_100020568);
      v25 = *(v24 + 48);
      v26 = sub_100010F48();
      v27(v26);
      sub_10000ECF0(v76, v19 + v25);
      v28 = sub_100010EF4();
      sub_10000ED54(v28, v29, v30, v24);
LABEL_12:
      *(v0 + 440) = v9;
      *(v0 + 448) = v14;
      v31 = *(v0 + 256);
      sub_1000107D8(*(v0 + 248), v31, &qword_10002C968, &qword_100020560);
      v32 = sub_10001155C();
      sub_10000E634(v32, v33);
      v34 = sub_1000110CC();
      sub_100011DE4(v34, v35);
      if (v3)
      {
        break;
      }

      sub_100011C8C();
      if (*(v31 + 16))
      {
        v36 = sub_10000F1C0(*(v0 + 208));
        if (v37)
        {
          sub_1000114F8(v36);
          sub_100010FB0();
          sub_10000ED54(v63, v64, v65, v66);
          v67 = sub_100011604();
          v68(v67);
          v69 = sub_100010EF4();
          sub_10000ED54(v69, v70, v71, v6);

          swift_task_alloc();
          sub_10001104C();
          *(v0 + 480) = v72;
          *v72 = v73;
          sub_10001113C(v72);
          sub_100011568();

          return sub_1000055B4();
        }
      }

      v6 = *(v0 + 232);
      sub_10000F6F0(*(v0 + 208));
      v38 = sub_100011004();
      v39(v38);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    if (qword_10002C638 != -1)
    {
      goto LABEL_27;
    }
  }

  else
  {
LABEL_8:
    while (!__OFADD__(v14, 1))
    {
      sub_1000117EC();
      if (v17 == v18)
      {
        v40 = sub_10001155C();
        sub_10000E634(v40, v41);
        v42 = sub_100010EE4();
        sub_10000ED54(v42, v43, v44, v45);
        v9 = 0;
        goto LABEL_12;
      }

      sub_1000117E0();
      ++v14;
    }

    __break(1u);
LABEL_27:
    sub_100010C98();
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_1000114C4(v46, qword_10002CEB0);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (sub_1000112DC(v48))
  {
    sub_1000110C0();
    v49 = swift_slowAlloc();
    sub_100011690(v49);
    sub_100010F6C();
    _os_log_impl(v50, v51, v52, v53, v54, 2u);
    sub_100010FBC();
  }

  (*(*(v0 + 272) + 8))(*(v0 + 296), *(v0 + 264));
  v55 = qword_10002CEA8;
  *(v0 + 376) = *(v0 + 424);
  *(v0 + 384) = v55;
  sub_100010CAC();
  sub_10000F784(v56, v57, &unk_100020A50);

  v58 = swift_task_alloc();
  v59 = sub_100011014(v58);
  *v59 = v60;
  sub_100010E74(v59);
  sub_100011568();

  return AsyncStream.Iterator.next(isolation:)(v61);
}

uint64_t sub_10000D9AC()
{
  sub_1000111E4();
  sub_100011384();
  v2 = *(v1 + 304);
  v3 = *(v1 + 144);
  v4 = *v0;
  sub_100010E2C();
  *v5 = v4;

  sub_100010734(v2, &qword_10002C9C0, &qword_1000205A8);
  sub_100010734(v3, &qword_10002C9B8, &qword_1000205A0);
  v6 = sub_100011270();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10000DB04()
{
  v114 = v0 + 16;
  if (qword_10002C5F8 != -1)
  {
LABEL_20:
    sub_100010CE4();
    swift_once();
  }

  v106 = *(v0 + 408);
  v109 = *(v0 + 456);
  v101 = *(v0 + 400);
  v122 = *(v0 + 232);
  v123 = *(v0 + 224);
  v124 = *(v0 + 256);
  v121 = *(v0 + 208);
  v1 = *(v0 + 160);
  v98 = *(v0 + 168);
  v2 = *(v0 + 152);
  v112 = *(v0 + 136);
  v118 = *(v0 + 184);
  v119 = *(v0 + 128);
  v120 = *(v0 + 120);
  v116 = *(v0 + 112);
  v117 = *(v0 + 96);
  (*(v0 + 464))(*(v0 + 288), *(v0 + 296), *(v0 + 264));
  v3 = sub_1000119BC();
  v4(v3);
  sub_10001139C();
  v5 = swift_allocObject();
  v6 = sub_100011720(v5);
  v8 = v7(v6);
  v16 = sub_100011630(v8, v9, v10, v11, v12, v13, v14, v15, v95, v98, v101, v0 + 32, v106, v109);
  v18 = v17(v16);
  sub_1000112F8(v18, v19, v20, v21, v22, v23, v24, v25, v96, v99, v102, v104, v107, v110, v112, v114);
  sub_10001136C(COERCE_DOUBLE(1107296256));
  *(v0 + 32) = v26;
  *(v0 + 40) = &unk_100028D60;
  v28 = _Block_copy(v27);

  v29 = v113;
  static DispatchQoS.unspecified.getter();
  *(v0 + 80) = &_swiftEmptyArrayStorage;
  sub_100010D58();
  sub_10000F784(v30, v31, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000E634(&qword_10002C9F8, &qword_1000205D0);
  v32 = sub_10001069C(&qword_10002CA00, &qword_10002C9F8, &qword_1000205D0);
  sub_100011764(v0 + 80, v33, v32, v34, v35, v36, v37, v38, v97, v100, v103, v105, v108, v111, v113, v115, v116, v117);
  sub_100011B34();
  _Block_release(v28);

  v39 = sub_100011280();
  v40(v39);
  (*(v119 + 8))(v29, v120);
  (*(v1 + 8))(v118, v2);
  sub_10000F6F0(v121);

  (*(v122 + 8))(v124, v123);
  v41 = *(v0 + 440);
  v42 = *(v0 + 448);
  if (!v41)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v43 = *(v0 + 416);
    v46 = *(v0 + 248);
    v29 = *(v0 + 232);
    v47 = *(v0 + 216);
    v125 = v47;
    sub_100010F34();
    v48 = sub_100010D20();
    v49(v48);
    v50 = sub_1000117C8(*(v43 + 56));
    sub_10000EC8C(v50, v47);
    v51 = sub_10000E634(&qword_10002C970, &qword_100020568);
    v52 = *(v51 + 48);
    v53 = sub_100010F48();
    v54(v53);
    sub_10000ECF0(v125, v46 + v52);
    v55 = sub_100010EF4();
    sub_10000ED54(v55, v56, v57, v51);
LABEL_8:
    *(v0 + 440) = v41;
    *(v0 + 448) = v42;
    v58 = *(v0 + 256);
    sub_1000107D8(*(v0 + 248), v58, &qword_10002C968, &qword_100020560);
    v59 = sub_100011550();
    sub_10000E634(v59, v60);
    v61 = sub_1000110CC();
    sub_100011DE4(v61, v62);
    if (v63)
    {
      break;
    }

    sub_100011C8C();
    if (*(v58 + 16))
    {
      v64 = sub_10000F1C0(*(v0 + 208));
      if (v65)
      {
        sub_1000114F8(v64);
        sub_100010FB0();
        sub_10000ED54(v82, v83, v84, v85);
        v86 = sub_100011604();
        v87(v86);
        v88 = sub_100010EF4();
        sub_10000ED54(v88, v89, v90, v29);

        swift_task_alloc();
        sub_10001104C();
        *(v0 + 480) = v91;
        *v91 = v92;
        sub_10001113C(v91);
        sub_10001193C();

        return sub_1000055B4();
      }
    }

    v29 = *(v0 + 232);
    sub_10000F6F0(*(v0 + 208));
    v66 = sub_100011004();
    v67(v66);
    if (!v41)
    {
LABEL_4:
      while (!__OFADD__(v42, 1))
      {
        sub_1000117EC();
        if (v44 == v45)
        {
          v68 = sub_100011550();
          sub_10000E634(v68, v69);
          v70 = sub_100010EE4();
          sub_10000ED54(v70, v71, v72, v73);
          v41 = 0;
          goto LABEL_8;
        }

        sub_1000117E0();
        ++v42;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  (*(*(v0 + 272) + 8))(*(v0 + 296), *(v0 + 264));
  v74 = qword_10002CEA8;
  *(v0 + 376) = *(v0 + 424);
  *(v0 + 384) = v74;
  sub_100010CAC();
  sub_10000F784(v75, v76, &unk_100020A50);

  v77 = swift_task_alloc();
  v78 = sub_100011014(v77);
  *v78 = v79;
  sub_100010E74(v78);
  sub_10001193C();

  return AsyncStream.Iterator.next(isolation:)(v80);
}

double sub_10000E048@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 80);

  return result;
}

double sub_10000E0A4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 72);

  return result;
}

void sub_10000E100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MusicRestrictions();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F74C(v9, qword_10002CEB0);
  (*(v6 + 16))(v8, a1, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    sub_10000F784(&qword_10002CA10, &type metadata accessor for MusicRestrictions, &protocol conformance descriptor for MusicRestrictions);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v18 = sub_100013F98(v15, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "responding to restrictions change notification with new restrictions: %{public}s.", v13, 0xCu);
    sub_10000F7CC(v14);

    a2 = v20;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  if (*(a2 + OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_session))
  {
    type metadata accessor for MusicDaemon.Response();
    sub_10000F784(&qword_10002CA08, &type metadata accessor for MusicDaemon.Response, &protocol conformance descriptor for MusicDaemon.Response);

    dispatch thunk of XPCSession.send<A>(_:)();
  }
}

uint64_t sub_10000E410()
{
  v1 = v0;
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000114C4(v2, qword_10002CEB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_1000113CC(v4))
  {
    sub_1000110C0();
    v5 = swift_slowAlloc();
    sub_1000119EC(v5);
    sub_1000112B0(&_mh_execute_header, v6, v7, "resetting restrictions change notification task.");
    sub_100010FBC();
  }

  if (*(v1 + 64))
  {

    Task.cancel()();
  }

  *(v1 + 64) = 0;
}

void sub_10000E524(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_id;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a1 + 72);
  sub_10000F9FC(a2, a2 + v4, isUniquelyReferenced_nonNull_native);
  *(a1 + 72) = v6;
  swift_endAccess();
  sub_100001B68();
}

uint64_t sub_10000E634(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000E67C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_10000E6C4(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = sub_10000E634(&qword_10002C960, &qword_100020558);
  __chkstk_darwin(v3 - 8);
  v48 = &v47[-v4];
  v5 = _s14descr100028B61V18ObservationContextVMa(0);
  v52 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v51 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = type metadata accessor for UUID();
  v7 = *(v65 - 8);
  v8 = __chkstk_darwin(v65);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v62 = &v47[-v11];
  v12 = sub_10000E634(&qword_10002C968, &qword_100020560);
  v13 = __chkstk_darwin(v12 - 8);
  v58 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v47[-v15];
  swift_beginAccess();
  v49 = a1;
  v17 = *(a1 + 80);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v56 = OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_id;
  v22 = (v19 + 63) >> 6;
  v60 = (v7 + 32);
  v61 = (v7 + 16);
  v50 = v7;
  v64 = (v7 + 8);
  v53 = v17;

  v23 = 0;
  v63 = v10;
  v59 = v16;
  v54 = v22;
  v55 = v18;
  if (v21)
  {
    while (1)
    {
      v24 = v23;
LABEL_10:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = v26 | (v24 << 6);
      v28 = v53;
      v29 = v50;
      v30 = v62;
      v31 = v65;
      (*(v50 + 16))(v62, *(v53 + 48) + *(v50 + 72) * v27, v65);
      v32 = *(v28 + 56);
      v33 = v51;
      sub_10000EC8C(v32 + *(v52 + 72) * v27, v51);
      v34 = sub_10000E634(&qword_10002C970, &qword_100020568);
      v35 = *(v34 + 48);
      v36 = *(v29 + 32);
      v37 = v58;
      v36(v58, v30, v31);
      v38 = v33;
      v25 = v37;
      sub_10000ECF0(v38, v37 + v35);
      sub_10000ED54(v37, 0, 1, v34);
      v10 = v63;
      v16 = v59;
LABEL_11:
      sub_1000107D8(v25, v16, &qword_10002C968, &qword_100020560);
      v39 = sub_10000E634(&qword_10002C970, &qword_100020568);
      if (sub_10000ED7C(v16, 1, v39) == 1)
      {
        break;
      }

      v40 = *(v39 + 48);
      v41 = v65;
      (*v60)(v10, v16, v65);
      v42 = v62;
      (*v61)(v62, &v16[v40], v41);
      sub_10000F6F0(&v16[v40]);
      LOBYTE(v40) = static UUID.== infix(_:_:)();
      v43 = *v64;
      (*v64)(v42, v41);
      if (v40)
      {
        swift_beginAccess();
        v44 = v48;
        sub_10000F414(v63, v48);
        v45 = v44;
        v16 = v59;
        sub_100010734(v45, &qword_10002C960, &qword_100020558);
        swift_endAccess();
        v10 = v63;
        sub_100002674();
      }

      v43(v10, v65);
      v22 = v54;
      v18 = v55;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    swift_beginAccess();
    sub_10000F5B0(v57 + v56);
    swift_endAccess();

    sub_100001B68();
  }

  else
  {
LABEL_5:
    v25 = v58;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {
        v46 = sub_10000E634(&qword_10002C970, &qword_100020568);
        sub_10000ED54(v25, 1, 1, v46);
        v21 = 0;
        goto LABEL_11;
      }

      v21 = *(v18 + 8 * v24);
      ++v23;
      if (v21)
      {
        v23 = v24;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10000EC8C(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr100028B61V18ObservationContextVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000ECF0(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr100028B61V18ObservationContextVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EDA4()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v0 + 16) = UnfairLock.init()();
  type metadata accessor for UUID();
  _s14descr100028B61V14SessionHandlerCMa(0);
  sub_10000F784(&qword_10002C978, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = Dictionary.init(dictionaryLiteral:)();
  _s14descr100028B61V18ObservationContextVMa(0);
  *(v0 + 80) = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

void sub_10000EEA4(uint64_t a2@<X8>)
{
  sub_10000EF04();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

Swift::Int sub_10000EF14(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10000EF94(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t sub_10000EFE4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F0DC;

  return v6(a1);
}

uint64_t sub_10000F0DC()
{
  sub_1000110FC();
  sub_100011384();
  v1 = *v0;
  sub_100010E2C();
  *v2 = v1;

  sub_1000112D0();

  return v3();
}

unint64_t sub_10000F1C0(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10000F784(&qword_10002C978, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10000F258(a1, v2);
}

unint64_t sub_10000F258(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_10000F784(&qword_10002C988, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10000F414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000F1C0(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    v8 = *(*v2 + 24);
    sub_10000E634(&qword_10002C980, &qword_100020570);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
    v9 = *(v17 + 48);
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);
    v11 = *(v17 + 56);
    v12 = _s14descr100028B61V18ObservationContextVMa(0);
    sub_10000ECF0(v11 + *(*(v12 - 8) + 72) * v6, a2);
    sub_10000F784(&qword_10002C978, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    _NativeDictionary._delete(at:)();
    *v2 = v17;
    v13 = a2;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = _s14descr100028B61V18ObservationContextVMa(0);
    v13 = a2;
    v14 = 1;
  }

  return sub_10000ED54(v13, v14, 1, v15);
}

uint64_t sub_10000F5B0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10000F1C0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v7 = *(*v1 + 24);
  sub_10000E634(&qword_10002C9B0, &qword_100020598);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(v12 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v12 + 56) + 8 * v5);
  _s14descr100028B61V14SessionHandlerCMa(0);
  sub_10000F784(&qword_10002C978, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  _NativeDictionary._delete(at:)();
  *v2 = v12;
  return v10;
}

uint64_t sub_10000F6F0(uint64_t a1)
{
  v2 = _s14descr100028B61V18ObservationContextVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F74C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000F784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F7CC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000F820(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_10000F1C0(a2);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v13;
  v19 = v14;
  sub_10000E634(&qword_10002C980, &qword_100020570);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = sub_10000F1C0(a2);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v20;
LABEL_5:
  v22 = *v4;
  if (v19)
  {
    v23 = v22[7];
    v24 = v23 + *(*(_s14descr100028B61V18ObservationContextVMa(0) - 8) + 72) * v18;

    return sub_10000FC98(a1, v24);
  }

  else
  {
    (*(v9 + 16))(v11, a2, v8);
    return sub_10000FBBC(v18, v11, a1, v22);
  }
}

uint64_t sub_10000F9FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_10000F1C0(a2);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v13;
  v19 = v14;
  sub_10000E634(&qword_10002C9B0, &qword_100020598);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = sub_10000F1C0(a2);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v20;
LABEL_5:
  v22 = *v4;
  if (v19)
  {
    *(v22[7] + 8 * v18) = a1;
  }

  else
  {
    (*(v9 + 16))(v11, a2, v8);
    return sub_10000FD18(v18, v11, a1, v22);
  }
}

uint64_t sub_10000FBBC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = _s14descr100028B61V18ObservationContextVMa(0);
  result = sub_10000ECF0(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_10000FC98(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr100028B61V18ObservationContextVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FD18(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10000FE14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000FE2C()
{
  swift_weakDestroy();
  sub_1000119F8();

  return _swift_deallocObject(v0);
}

uint64_t sub_10000FE64()
{
  sub_1000111E4();
  sub_10001187C();
  swift_task_alloc();
  sub_10001104C();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_100011024(v1);

  return sub_10000CCFC(v3, v4, v5, v6);
}

uint64_t sub_10000FEF4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10000FF2C()
{
  sub_1000111E4();
  swift_task_alloc();
  sub_10001104C();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_100011670(v1);

  return v4(v3);
}

uint64_t sub_10000FFC4()
{
  sub_1000111E4();
  swift_task_alloc();
  sub_10001104C();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_100011670(v1);

  return v4(v3);
}

uint64_t sub_10001005C()
{
  sub_1000110FC();
  sub_100011384();
  v1 = *v0;
  sub_100010E2C();
  *v2 = v1;

  sub_1000112D0();

  return v3();
}

uint64_t sub_100010154(uint64_t a1)
{
  sub_100011844();
  v3 = v2(0);
  sub_100010D0C();
  v5 = v4;
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = type metadata accessor for MusicDaemon.Response();
  sub_100010D0C();
  v11 = v10;
  v12 = (v8 + *(v10 + 80) + 8) & ~*(v10 + 80);
  (*(v5 + 8))(v1 + v6, v3);

  (*(v11 + 8))(v1 + v12, v9);
  sub_10001182C();

  return _swift_deallocObject(v13);
}

uint64_t sub_1000102BC(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t))
{
  v3 = a1(0);
  sub_100010D70(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for MusicDaemon.Response();
  sub_100010FE8(v8);
  v10 = *(v2 + v7);
  v11 = v2 + ((v7 + *(v9 + 80) + 8) & ~*(v9 + 80));

  return a2(v2 + v5, v10, v11);
}

uint64_t sub_1000103A8()
{
  sub_1000111E4();
  sub_10001187C();
  swift_task_alloc();
  sub_10001104C();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_100011024(v1);

  return sub_10000B320(v3, v4, v5, v6);
}

uint64_t sub_100010470()
{
  v1 = type metadata accessor for MusicDaemon.Response();
  sub_100010D0C();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

void sub_100010528()
{
  v1 = type metadata accessor for MusicDaemon.Response();
  sub_100010FE8(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_10000AF40(v3, v4);
}

uint64_t sub_100010588()
{
  swift_unknownObjectRelease();

  sub_100011BA8();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000105C4()
{
  sub_1000111E4();
  sub_10001187C();
  swift_task_alloc();
  sub_10001104C();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_100011024(v1);

  return sub_100009574(v3, v4, v5, v6);
}

uint64_t sub_10001065C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10001069C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000E67C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010734(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10000E634(a2, a3);
  sub_100010D80();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10001078C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100011D4C(a1, a2, a3, a4);
  sub_100010CF8();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1000107D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100011D4C(a1, a2, a3, a4);
  sub_100010CF8();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_100010824()
{
  sub_100011844();
  v1 = type metadata accessor for MusicDaemon.Request.Action();
  sub_100010D0C();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for MusicDaemon.Request.Context();
  sub_100010D0C();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  sub_10001182C();

  return _swift_deallocObject(v11);
}

uint64_t sub_10001096C(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for MusicDaemon.Request.Action();
  sub_100010D70(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for MusicDaemon.Request.Context();
  sub_100010D70(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = v1[2];
  v15 = v1[3];
  v16 = v1[4];
  v17 = (v1 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = *v17;
  v19 = v17[1];
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_100010C48;

  return sub_1000030B8(a1, v14, v15, v16, v1 + v7, v1 + v12, v18, v19);
}

uint64_t *sub_100010B0C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100010B98(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100010CC4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000110D8()
{

  return swift_beginAccess();
}

uint64_t sub_1000111A0(uint64_t a1)
{
  v2 = v1[39];
  v3 = v1[35];
  v1[57] = *(*(v1[54] + 56) + 8 * a1);
  v1[58] = *(v3 + 16);
  v1[59] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v2;
}

void sub_100011230()
{
  v2 = *(v0 + 40);
  *(v1 - 88) = *(v0 + 48);
  *(v1 - 80) = v2;
}

void sub_1000112B0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_1000112DC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000112F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17[6] = v16;
  v17[7] = v18;
  result = a16;
  v17[2] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10001131C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v9 + 272);

  return _objc_release_x9(a1, a2, a3, a4, a5, a6, a7, a8, a9, v12);
}

BOOL sub_1000113CC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100011438()
{

  return swift_slowAlloc();
}

uint64_t sub_1000114F8(uint64_t a1)
{
  *(v1 + 456) = *(*(*(v1 + 432) + 56) + 8 * a1);

  return type metadata accessor for MusicSubscription();
}

uint64_t sub_100011584(uint64_t a1)
{
  *(v1 + 376) = *(*(*(v1 + 352) + 56) + 8 * a1);

  return type metadata accessor for MusicSubscription();
}

uint64_t sub_1000115B8()
{

  return swift_slowAlloc();
}

uint64_t sub_1000115D4()
{

  return swift_task_alloc();
}

uint64_t sub_1000115EC()
{

  return swift_task_alloc();
}

uint64_t sub_100011604()
{
  *(v1 + 464) = *(v2 + 16);
  *(v1 + 472) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v0;
}

BOOL sub_1000116BC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000116D4()
{

  return type metadata accessor for Logger();
}

uint64_t sub_100011764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000118AC()
{

  return swift_slowAlloc();
}

uint64_t sub_1000118C4()
{

  return MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
}

void sub_1000118EC()
{
}

uint64_t sub_100011914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
}

void sub_100011A10(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_100011A28()
{

  return swift_slowAlloc();
}

uint64_t sub_100011A40()
{
  *(v1 + 40) = v0;

  return swift_errorRetain();
}

uint64_t sub_100011A64()
{

  return MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
}

uint64_t sub_100011A88(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return UnfairLock.locked<A>(_:)();
}

uint64_t sub_100011AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return swift_allocError();
}

uint64_t sub_100011AC8()
{

  return MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
}

uint64_t sub_100011AEC(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_100011B10()
{

  return MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
}

uint64_t sub_100011B34()
{

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

uint64_t sub_100011B58()
{
}

uint64_t sub_100011B70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1000107D8(v6, v4 + v5, a3, a4);
}

uint64_t sub_100011C6C()
{
}

uint64_t sub_100011C8C()
{
  v3 = *(v0 + 208);
  v4 = *(v0 + 256) + *(v1 + 48);

  return sub_10000ECF0(v4, v3);
}

void sub_100011CAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

void sub_100011CCC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100011CEC(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_100011D0C()
{
}

uint64_t sub_100011D2C()
{
  *(v1 - 80) = *(v0 + 104);
}

uint64_t sub_100011D4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10000E634(a3, a4);
}

uint64_t sub_100011D6C(void *a1)
{
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v1;
}

void sub_100011D8C()
{
}

void sub_100011DAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t sub_100011DCC()
{

  return swift_getObjectType();
}

uint64_t sub_100011E04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  UUID.init()();
  v5 = OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_session;
  *(v2 + OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_session) = 0;
  swift_weakInit();
  *(v2 + v5) = a1;

  swift_weakAssign();
  static MusicDaemon.Item.ensureRequiredTypeValuesLoaded()();
  if (qword_10002C638 != -1)
  {
    sub_100014C08(&qword_10002C638);
  }

  v6 = type metadata accessor for Logger();
  sub_10000F74C(v6, qword_10002CEB0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_1000118AC();
    v10 = sub_100014D3C();
    v15 = v10;
    *v9 = 136315138;
    type metadata accessor for XPCSession();

    v11 = String.init<A>(describing:)();
    v13 = sub_100013F98(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "session %s init.", v9, 0xCu);
    sub_10000F7CC(v10);
    sub_100014CDC(v10);
    sub_100014CDC(v9);
  }

  sub_10000E50C(v3);

  return v3;
}

uint64_t sub_100011FD0()
{
  v1 = v0;
  if (qword_10002C638 != -1)
  {
    sub_100014C08(&qword_10002C638);
  }

  v2 = type metadata accessor for Logger();
  sub_10000F74C(v2, qword_10002CEB0);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100014D30();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    sub_1000112B0(&_mh_execute_header, v5, v6, "session deinit.");
    sub_100014C80();
  }

  v7 = OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_id;
  type metadata accessor for UUID();
  sub_100010D80();
  (*(v8 + 8))(v1 + v7);

  swift_weakDestroy();
  return v1;
}

uint64_t sub_1000120D8()
{
  sub_100011FD0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s14descr100028B61V14SessionHandlerCMa(uint64_t a1)
{
  result = qword_10002CBA8;
  if (!qword_10002CBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012184(uint64_t a1)
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

uint64_t sub_100012228()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  sub_100010D0C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100010F5C();
  v8 = (v7 - v6);
  if (qword_10002C5F8 != -1)
  {
    sub_100014C4C(&qword_10002C5F8);
  }

  v9 = qword_10002CE88;
  *v8 = qword_10002CE88;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v2);
  if (v9)
  {
    if (qword_10002C638 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100014C08(&qword_10002C638);
LABEL_5:
  v11 = type metadata accessor for Logger();
  sub_10000F74C(v11, qword_10002CEB0);
  v12 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100014D30();
  if (os_log_type_enabled(v12, v13))
  {
    *swift_slowAlloc() = 0;
    sub_1000112B0(&_mh_execute_header, v14, v15, "xpc - handle cancellation.");
    sub_100014C80();
  }

  if (swift_weakLoadStrong())
  {
    sub_10000E5C4(v1);
  }

  *(v1 + OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_session) = 0;
}

double sub_100012404@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v228 = a1;
  v212 = type metadata accessor for XPCReceivedMessage();
  sub_100010D0C();
  v211 = v3;
  __chkstk_darwin(v4);
  v209 = v5;
  v210 = &v197 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014D80();
  type metadata accessor for MusicDaemon.Request.Context();
  sub_100010D0C();
  v220 = v6;
  v221 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_100014C3C(&v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  sub_100014CD0();
  sub_100014C3C(v11);
  __chkstk_darwin(v12);
  sub_100014CD0();
  sub_100014C3C(v13);
  __chkstk_darwin(v14);
  sub_100014CD0();
  sub_100014C3C(v15);
  __chkstk_darwin(v16);
  sub_100014CD0();
  sub_100014C3C(v17);
  __chkstk_darwin(v18);
  sub_100014CD0();
  v219 = v19;
  sub_100014D80();
  type metadata accessor for MusicDaemon.Request.Action();
  sub_100010D0C();
  v215 = v21;
  v216 = v20;
  v22 = __chkstk_darwin(v20);
  v225 = &v197 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  sub_100014CD0();
  v205 = v24;
  v208 = v25;
  __chkstk_darwin(v26);
  sub_100014CD0();
  v218 = v27;
  sub_100014D80();
  v28 = type metadata accessor for MusicDaemon.Request();
  sub_100010D0C();
  v226 = v29;
  v31 = __chkstk_darwin(v30);
  v203 = &v197 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v217 = &v197 - v34;
  v35 = __chkstk_darwin(v33);
  v213 = &v197 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v197 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v197 - v41;
  __chkstk_darwin(v40);
  v44 = &v197 - v43;
  type metadata accessor for MusicDaemon.Response();
  sub_100010D0C();
  v223 = v46;
  v224 = v45;
  __chkstk_darwin(v45);
  sub_100010F5C();
  v222 = (v48 - v47);
  sub_100014D80();
  v49 = type metadata accessor for DispatchPredicate();
  sub_100010D0C();
  v51 = v50;
  __chkstk_darwin(v52);
  sub_100010F5C();
  v55 = (v54 - v53);
  if (qword_10002C5F8 != -1)
  {
    sub_100014C4C(&qword_10002C5F8);
  }

  v56 = qword_10002CE88;
  *v55 = qword_10002CE88;
  (*(v51 + 104))(v55, enum case for DispatchPredicate.onQueue(_:), v49);
  v206 = v56;
  LOBYTE(v56) = _dispatchPreconditionTest(_:)();
  (*(v51 + 8))(v55, v49);
  if (v56)
  {
    if (qword_10002C638 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100014C08(&qword_10002C638);
LABEL_5:
  v57 = type metadata accessor for Logger();
  v227 = sub_10000F74C(v57, qword_10002CEB0);
  v58 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100014D30();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v55, "xpc - handle incoming request with session.", v60, 2u);
    sub_100014C80();
  }

  sub_100014AE4(&qword_10002CC80, &type metadata accessor for MusicDaemon.Request, &protocol conformance descriptor for MusicDaemon.Request);
  XPCReceivedMessage.decode<A>(as:)();
  v61 = v226;
  v62 = v42;
  v63 = v226;
  (*(v226 + 32))(v44, v62, v28);
  v202 = *(v61 + 16);
  v202(v39, v44, v28);
  v64 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100014D30();
  v66 = os_log_type_enabled(v64, v65);
  v200 = a2;
  v201 = v44;
  if (v66)
  {
    v67 = sub_1000118AC();
    v198 = sub_100014D3C();
    v229 = v198;
    *v67 = 136446210;
    v202(v213, v39, v28);
    v68 = String.init<A>(describing:)();
    v69 = v28;
    v71 = v70;
    v199 = *(v226 + 8);
    v199(v39, v69);
    v72 = sub_100013F98(v68, v71, &v229);
    v28 = v69;
    v44 = v201;

    *(v67 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "message decoded to request: %{public}s.", v67, 0xCu);
    v73 = v198;
    sub_10000F7CC(v198);
    sub_100014CDC(v73);
    v74 = v67;
    v63 = v226;
    sub_100014CDC(v74);
  }

  else
  {

    v199 = *(v63 + 8);
    v199(v39, v28);
  }

  v75 = v221;
  v76 = v217;
  v77 = v202;
  v202(v217, v44, v28);
  v78 = (*(v63 + 88))(v76, v28);
  v79 = v225;
  if (v78 == enum case for MusicDaemon.Request.perform(_:))
  {
    v80 = sub_100014C6C();
    v81(v80);
    v82 = *(sub_10000E634(&qword_10002CC88, &qword_100020830) + 48);
    v83 = v215;
    v84 = v216;
    v85 = *(v215 + 32);
    v86 = v218;
    v224 = v215 + 32;
    v222 = v85;
    (v85)(v218, v76, v216);
    v87 = *(v75 + 32);
    v217 = (v75 + 32);
    v213 = v87;
    (v87)(v219, &v76[v82], v220);
    v88 = *(v83 + 16);
    v89 = v205;
    v88(v205, v86, v84);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    v92 = os_log_type_enabled(v90, v91);
    v204 = v88;
    if (v92)
    {
      v93 = sub_1000118AC();
      v94 = sub_100014D3C();
      v229 = v94;
      *v93 = 136315138;
      v88(v225, v89, v84);
      v95 = String.init<A>(describing:)();
      v96 = v83;
      v97 = v95;
      v99 = v98;
      v100 = sub_100014CAC(v96);
      v101(v100);
      v102 = sub_100013F98(v97, v99, &v229);
      v103 = v221;

      *(v93 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v90, v91, "starting to perform action: %s.", v93, 0xCu);
      sub_10000F7CC(v94);
      sub_100014CDC(v94);
      v104 = v93;
      v79 = v225;
      sub_100014CDC(v104);
    }

    else
    {

      v123 = sub_100014CAC(v83);
      v124(v123);
      v103 = v75;
    }

    v125 = v211;
    v126 = v210;
    v127 = v212;
    (*(v211 + 16))(v210, v228, v212);
    v128 = (*(v125 + 80) + 16) & ~*(v125 + 80);
    v129 = swift_allocObject();
    (*(v125 + 32))(v129 + v128, v126, v127);
    v130 = swift_allocObject();
    swift_weakInit();
    v204(v79, v218, v84);
    v131 = v214;
    v132 = v220;
    (*(v103 + 16))(v214, v219, v220);
    v133 = (*(v215 + 80) + 24) & ~*(v215 + 80);
    v134 = (v208 + *(v103 + 80) + v133) & ~*(v103 + 80);
    v135 = (v9 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
    v136 = swift_allocObject();
    *(v136 + 16) = v130;
    v137 = v216;
    (v222)(v136 + v133, v225, v216);
    (v213)(v136 + v134, v131, v132);
    v138 = (v136 + v135);
    *v138 = sub_1000145F0;
    v138[1] = v129;

    XPCReceivedMessage.handoffReply(to:_:)();

    (*(v103 + 8))(v219, v132);
    v227(v218, v137);
    sub_100014D74();
    v139();

    return result;
  }

  if (v78 == enum case for MusicDaemon.Request.beginObserving(_:))
  {
    v105 = sub_100014C6C();
    v106(v105);
    v107 = v220;
    (*(v75 + 32))(v207, v76, v220);
    v108 = v75;
    v109 = *(v75 + 16);
    v110 = sub_100014D54(&v231);
    v109(v110);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = sub_1000118AC();
      v229 = sub_100014D3C();
      v114 = v229;
      v115 = sub_100014D14(4.8751e-34);
      v109(v115);
      v116 = String.init<A>(describing:)();
      v118 = v117;
      v119 = sub_100014C28();
      v108(v119);
      v120 = sub_100013F98(v116, v118, &v229);

      *(v113 + 4) = v120;
      sub_100014CF4(&_mh_execute_header, v121, v122, "beginning to observe context: %{public}s).");
      sub_10000F7CC(v114);
      sub_100014CDC(v114);
      sub_100014C80();
    }

    else
    {

      v159 = sub_100014C28();
      v108(v159);
    }

    v160 = v200;
    if (!swift_weakLoadStrong())
    {
      sub_100014D68();
      (v108)(v207, v107);
      sub_100014C9C();
      sub_100014D74();
      v177();
      *(v160 + 32) = 0;
      result = 0.0;
      *v160 = 0u;
      *(v160 + 16) = 0u;
      return result;
    }

    *(v160 + 24) = v224;
    sub_100014BF0();
    *(v160 + 32) = sub_100014AE4(v161, v162, &protocol conformance descriptor for MusicDaemon.Response);
    sub_100013F38(v160);
    v163 = v207;
    sub_100006D40(v207);

    sub_100014D68();
    (v108)(v163, v107);
    sub_100014C9C();
    goto LABEL_30;
  }

  v141 = v220;
  if (v78 == enum case for MusicDaemon.Request.endObserving(_:))
  {
    v142 = sub_100014C6C();
    v143(v142);
    (*(v75 + 32))(v204, v76, v141);
    v144 = v75;
    v145 = *(v75 + 16);
    v146 = sub_100014D54(&v230);
    v145(v146);
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = sub_1000118AC();
      v228 = sub_100014D3C();
      v229 = v228;
      v150 = sub_100014D14(4.8751e-34);
      v145(v150);
      v151 = String.init<A>(describing:)();
      v153 = v152;
      v154 = sub_100014C28();
      v144(v154);
      v155 = sub_100013F98(v151, v153, &v229);

      *(v149 + 4) = v155;
      sub_100014CF4(&_mh_execute_header, v156, v157, "ending observation of context: %{public}s).");
      v158 = v228;
      sub_10000F7CC(v228);
      sub_100014CDC(v158);
      sub_100014C80();
    }

    else
    {

      v178 = sub_100014C28();
      v144(v178);
    }

    v179 = v200;
    if (!swift_weakLoadStrong())
    {
      sub_100014D68();
      (v144)(v204, v141);
      sub_100014C9C();
      sub_100014D74();
      v196();
      *(v179 + 32) = 0;
      result = 0.0;
      *v179 = 0u;
      *(v179 + 16) = 0u;
      return result;
    }

    *(v179 + 24) = v224;
    sub_100014BF0();
    *(v179 + 32) = sub_100014AE4(v180, v181, &protocol conformance descriptor for MusicDaemon.Response);
    sub_100013F38(v179);
    v182 = v204;
    sub_100007910(v204);

    sub_100014D68();
    (v144)(v182, v141);
    sub_100014C9C();
LABEL_30:
    sub_100014D74();
    v183();
    return result;
  }

  v164 = v203;
  v77(v203, v44, v28);
  v165 = v77;
  v166 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100014D30();
  if (os_log_type_enabled(v166, v167))
  {
    v168 = sub_1000118AC();
    v169 = sub_100014D3C();
    v229 = v169;
    *v168 = 136315138;
    v165(v213, v164, v28);
    v170 = String.init<A>(describing:)();
    v171 = v28;
    v173 = v172;
    v174 = v164;
    v175 = v199;
    v199(v174, v171);
    v176 = sub_100013F98(v170, v173, &v229);
    v28 = v171;

    *(v168 + 4) = v176;
    _os_log_impl(&_mh_execute_header, v166, v76, "encountered unknown request type: %s.", v168, 0xCu);
    sub_10000F7CC(v169);
    sub_100014CDC(v169);
    sub_100014CDC(v168);
  }

  else
  {

    v184 = v164;
    v175 = v199;
    v199(v184, v28);
  }

  v185 = *(sub_10000E634(&qword_10002CA78, &unk_100020660) + 48);
  v186 = type metadata accessor for MusicDaemon.Response.Context();
  v187 = v222;
  sub_10000ED54(v222, 1, 1, v186);
  v188 = enum case for MusicDaemon.Error.unknownXPCRequest(_:);
  type metadata accessor for MusicDaemon.Error();
  sub_100010D80();
  (*(v189 + 104))(&v187[v185], v188);
  v191 = v223;
  v190 = v224;
  (*(v223 + 104))(v187, enum case for MusicDaemon.Response.failure(_:), v224);
  v175(v217, v28);
  v192 = v200;
  *(v200 + 24) = v190;
  sub_100014BF0();
  v192[4] = sub_100014AE4(v193, v194, &protocol conformance descriptor for MusicDaemon.Response);
  v195 = sub_100013F38(v192);
  (*(v191 + 32))(v195, v187, v190);
  v175(v44, v28);
  return result;
}

uint64_t sub_10001389C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicDaemon.Response();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for XPCReceivedMessage();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002C5F8 != -1)
  {
    swift_once();
  }

  v23 = qword_10002CE88;
  (*(v12 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  (*(v9 + 16))(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v15, v14, v11);
  (*(v9 + 32))(v17 + v16, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_100014A08;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000091A0;
  aBlock[3] = &unk_100029070;
  v18 = _Block_copy(aBlock);
  v19 = v24;
  static DispatchQoS.unspecified.getter();
  v30 = &_swiftEmptyArrayStorage;
  sub_100014AE4(&qword_10002C9F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000E634(&qword_10002C9F8, &qword_1000205D0);
  sub_100014B2C();
  v20 = v27;
  v21 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v28 + 8))(v20, v21);
  (*(v25 + 8))(v19, v26);
}

uint64_t sub_100013D08(uint64_t a1, uint64_t a2)
{
  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F74C(v2, qword_10002CEB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "action performed, sending result.", v5, 2u);
  }

  type metadata accessor for MusicDaemon.Response();
  sub_100014AE4(&qword_10002CA08, &type metadata accessor for MusicDaemon.Response, &protocol conformance descriptor for MusicDaemon.Response);
  return XPCReceivedMessage.reply<A>(_:)();
}

uint64_t sub_100013E44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      sub_100002DB8(a2);
    }
  }

  return result;
}

uint64_t *sub_100013F38(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_100013F98(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001405C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100014B90(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_10000F7CC(v11);
  return v7;
}

unint64_t sub_10001405C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001415C(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_10001415C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000141A8(a1, a2);
  sub_1000142C0(&off_100028D10);
  return v3;
}

char *sub_1000141A8(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_1000143A4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000142C0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100014414(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000143A4(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000E634(&qword_10002CC90, &qword_100020838);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100014414(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E634(&qword_10002CC90, &qword_100020838);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100014508(uint64_t a1)
{
  v2 = sub_10000E634(&qword_10002CA80, &unk_100020870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100014570()
{
  type metadata accessor for XPCReceivedMessage();
  sub_100010D80();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_1000145F0(uint64_t a1)
{
  v3 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001389C(a1, v4);
}

uint64_t sub_100014660()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_100014698()
{
  v1 = type metadata accessor for MusicDaemon.Request.Action();
  sub_100010D0C();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for MusicDaemon.Request.Context();
  sub_100010D0C();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return _swift_deallocObject(v0);
}

uint64_t sub_1000147E8()
{
  v1 = type metadata accessor for MusicDaemon.Request.Action();
  sub_100010D70(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = type metadata accessor for MusicDaemon.Request.Context();
  sub_100010D70(v4);
  v5 = *(v0 + 16);

  return sub_100013E44(v5, v0 + v3);
}

uint64_t sub_1000148D8()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  sub_100010D0C();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for MusicDaemon.Response();
  sub_100010D0C();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return _swift_deallocObject(v0);
}

uint64_t sub_100014A08()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  sub_100010D70(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(type metadata accessor for MusicDaemon.Response() - 8);
  v7 = v0 + ((v3 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100013D08(v0 + v3, v7);
}

uint64_t sub_100014ACC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014AE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100014B2C()
{
  result = qword_10002CA00;
  if (!qword_10002CA00)
  {
    sub_10000E67C(&qword_10002C9F8, &qword_1000205D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA00);
  }

  return result;
}

uint64_t sub_100014B90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100014C08(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100014C4C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100014C6C()
{
  result = v0;
  *(v2 - 184) = v1;
  return result;
}

uint64_t sub_100014C80()
{
}

uint64_t sub_100014CAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  *(v2 - 320) = (a1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v1;
  *(v2 - 152) = v3;
  return result;
}

uint64_t sub_100014CDC(uint64_t a1)
{
}

void sub_100014CF4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100014D3C()
{

  return swift_slowAlloc();
}

uint64_t sub_100014D8C()
{
  sub_1000110FC();
  v7 = sub_10001B234(v1, v2, v3, v4, v5, v6);
  v0[8] = v7;
  sub_100010D70(v7);
  v0[9] = v8;
  v0[10] = sub_1000115EC();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v9 = type metadata accessor for MusicDaemon.Item();
  v0[14] = v9;
  sub_100010D70(v9);
  v0[15] = v10;
  v0[16] = sub_1000115EC();
  v0[17] = swift_task_alloc();
  if (qword_10002C630 != -1)
  {
    sub_100010CC4(&qword_10002C630);
  }

  v0[18] = qword_10002CEA8;

  sub_10001B1AC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100015078()
{
  v2 = *v1;
  v3 = *v1;
  sub_100010E2C();
  *v4 = v3;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_100015310;
  }

  else
  {
    v6 = sub_10001519C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10001519C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10001AFC0();
  sub_10001B068();
  sub_10001B150();
  v18(v14, v17, v15);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = sub_10001B014(v20);
  v22 = *(v16 + 176);
  v23 = *(v16 + 128);
  if (v21)
  {
    sub_1000118AC();
    a10 = v22;
    a11 = sub_10001AF88();
    *v22 = 136446210;
    sub_10001AE5C();
    v26 = sub_100019F30(v24, v25, &protocol conformance descriptor for MusicDaemon.Item);
    sub_10001B26C(v26);
    sub_10001B0D8();
    v27 = sub_10001B058();
    v28 = (v22)(v27);
    sub_10001B0A0(v28, v29, v30, v31);
    sub_10001B174();
    *(v22 + 4) = v23;
    sub_10001AEE0();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    sub_10000F7CC(a11);
    sub_10001AF38();
    sub_10001AFA4();
  }

  else
  {

    v37 = sub_10001B058();
    (v22)(v37);
  }

  sub_10001B1A0();

  sub_10001AEF0();
  sub_10001AF54();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100015310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, void (*a11)(uint64_t *, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10001AFC0();
  sub_10001B068();
  sub_10001B1A0();
  v19 = *(v15 + 64);

  v20 = sub_10001B0FC();
  v18(v20);
  (v18)(v16, v14, v19);
  v21 = sub_10001B0E4();
  v22(v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = sub_1000116BC(v24);
  v26 = *(v15 + 64);
  if (v25)
  {
    v27 = sub_1000118AC();
    a9 = swift_slowAlloc();
    *v27 = 138543362;
    sub_10001AE44();
    v30 = sub_100019F30(v28, v29, &protocol conformance descriptor for MusicDaemon.Error);
    v31 = sub_100011CEC(v30);
    v33 = sub_10001B18C(v31, v32);
    v16(v33);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    v34 = sub_10001AE74();
    v35(v34);
    *(v27 + 4) = v17;
    v26 = a9;
    *a9 = v17;
    sub_10001B1F4(&_mh_execute_header, v36, v37, "╰ ending favorite operation with error: %{public}@.");
    sub_100010734(a9, &qword_10002CA80, &unk_100020870);
    sub_10001AF38();
    sub_100014CDC(v27);
  }

  else
  {

    v38 = sub_10001AE74();
    v39(v38);
  }

  v40 = sub_10001AFEC();
  v41(v40);
  sub_10001AE44();
  sub_100019F30(v42, v43, &protocol conformance descriptor for MusicDaemon.Error);
  swift_willThrowTypedImpl();
  a11(v26, v17);

  sub_10001AED0();
  sub_10001AF54();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, v16, a11, a12, a13, a14);
}

uint64_t sub_100015530()
{
  sub_1000110FC();
  v7 = sub_10001B234(v1, v2, v3, v4, v5, v6);
  v0[8] = v7;
  sub_100010D70(v7);
  v0[9] = v8;
  v0[10] = sub_1000115EC();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v9 = type metadata accessor for MusicDaemon.Item();
  v0[14] = v9;
  sub_100010D70(v9);
  v0[15] = v10;
  v0[16] = sub_1000115EC();
  v0[17] = swift_task_alloc();
  if (qword_10002C630 != -1)
  {
    sub_100010CC4(&qword_10002C630);
  }

  v0[18] = qword_10002CEA8;

  sub_10001B1AC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10001581C()
{
  v2 = *v1;
  v3 = *v1;
  sub_100010E2C();
  *v4 = v3;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_100015AB4;
  }

  else
  {
    v6 = sub_100015940;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100015940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10001AFC0();
  sub_10001B068();
  sub_10001B150();
  v18(v14, v17, v15);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = sub_10001B014(v20);
  v22 = *(v16 + 176);
  v23 = *(v16 + 128);
  if (v21)
  {
    sub_1000118AC();
    a10 = v22;
    a11 = sub_10001AF88();
    *v22 = 136446210;
    sub_10001AE5C();
    v26 = sub_100019F30(v24, v25, &protocol conformance descriptor for MusicDaemon.Item);
    sub_10001B26C(v26);
    sub_10001B0D8();
    v27 = sub_10001B058();
    v28 = (v22)(v27);
    sub_10001B0A0(v28, v29, v30, v31);
    sub_10001B174();
    *(v22 + 4) = v23;
    sub_10001AEE0();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    sub_10000F7CC(a11);
    sub_10001AF38();
    sub_10001AFA4();
  }

  else
  {

    v37 = sub_10001B058();
    (v22)(v37);
  }

  sub_10001B1A0();

  sub_10001AEF0();
  sub_10001AF54();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100015AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, void (*a11)(uint64_t *, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10001AFC0();
  sub_10001B068();
  sub_10001B1A0();
  v19 = *(v15 + 64);

  v20 = sub_10001B0FC();
  v18(v20);
  (v18)(v16, v14, v19);
  v21 = sub_10001B0E4();
  v22(v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = sub_1000116BC(v24);
  v26 = *(v15 + 64);
  if (v25)
  {
    v27 = sub_1000118AC();
    a9 = swift_slowAlloc();
    *v27 = 138543362;
    sub_10001AE44();
    v30 = sub_100019F30(v28, v29, &protocol conformance descriptor for MusicDaemon.Error);
    v31 = sub_100011CEC(v30);
    v33 = sub_10001B18C(v31, v32);
    v16(v33);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    v34 = sub_10001AE74();
    v35(v34);
    *(v27 + 4) = v17;
    v26 = a9;
    *a9 = v17;
    sub_10001B1F4(&_mh_execute_header, v36, v37, "╰ ending undo favorite operation with error: %{public}@.");
    sub_100010734(a9, &qword_10002CA80, &unk_100020870);
    sub_10001AF38();
    sub_100014CDC(v27);
  }

  else
  {

    v38 = sub_10001AE74();
    v39(v38);
  }

  v40 = sub_10001AFEC();
  v41(v40);
  sub_10001AE44();
  sub_100019F30(v42, v43, &protocol conformance descriptor for MusicDaemon.Error);
  swift_willThrowTypedImpl();
  a11(v26, v17);

  sub_10001AED0();
  sub_10001AF54();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, v16, a11, a12, a13, a14);
}

uint64_t sub_100015CD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 136) = a6;
  *(v7 + 144) = a7;
  *(v7 + 120) = a4;
  *(v7 + 128) = a5;
  *(v7 + 57) = a3;
  *(v7 + 104) = a1;
  *(v7 + 112) = a2;
  sub_10000E634(&qword_10002CA90, &qword_100020670);
  *(v7 + 152) = swift_task_alloc();
  sub_10000E634(&qword_10002CCA0, &qword_100020880);
  *(v7 + 160) = swift_task_alloc();
  v13 = type metadata accessor for Date();
  *(v7 + 168) = v13;
  *(v7 + 176) = *(v13 - 8);
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  v14 = sub_10000E634(&qword_10002CCA8, &qword_100020888);
  *(v7 + 200) = v14;
  *(v7 + 208) = *(v14 - 8);
  *(v7 + 216) = swift_task_alloc();
  v15 = sub_10000E634(&qword_10002CCB0, &qword_100020890);
  *(v7 + 224) = v15;
  *(v7 + 232) = *(v15 - 8);
  *(v7 + 240) = swift_task_alloc();
  v16 = sub_10000E634(&qword_10002CCB8, &qword_100020898);
  *(v7 + 248) = v16;
  *(v7 + 256) = *(v16 - 8);
  *(v7 + 264) = swift_task_alloc();
  v17 = type metadata accessor for MusicDaemon.Error();
  *(v7 + 272) = v17;
  *(v7 + 280) = *(v17 - 8);
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = swift_task_alloc();
  v18 = swift_task_alloc();
  *(v7 + 304) = v18;
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  *(v7 + 312) = qword_10002CEA8;

  v19 = swift_task_alloc();
  *(v7 + 320) = v19;
  *v19 = v7;
  v19[1] = sub_100016080;

  return sub_10001745C(a2, a3 & 1, a4, a5, a6, v18);
}

uint64_t sub_100016080()
{
  sub_1000110FC();
  sub_100011384();
  v3 = *(v2 + 312);
  v4 = *v1;
  sub_100010E2C();
  *v5 = v4;

  if (v0)
  {
    v6 = sub_1000170DC;
  }

  else
  {
    v6 = sub_100016194;
  }

  return _swift_task_switch(v6, v3, 0);
}

uint64_t sub_100016194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10001AFC0();
  a21 = v23;
  a22 = v24;
  sub_10001B068();
  a20 = v22;
  v25 = sub_10001855C();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    if (qword_10002C638 != -1)
    {
      sub_100014C08(&qword_10002C638);
    }

    v29 = type metadata accessor for Logger();
    *(v22 + 328) = sub_10000F74C(v29, qword_10002CEB0);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = sub_1000118AC();
      v33 = sub_100014D3C();
      a11 = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_100013F98(v27, v28, &a11);
      _os_log_impl(&_mh_execute_header, v30, v31, "| fetching database track with query: %{public}s.", v32, 0xCu);
      sub_10000F7CC(v33);
      sub_100014CDC(v33);
      sub_10001AF38();
    }

    v34 = v27;
    v36 = *(v22 + 232);
    v35 = *(v22 + 240);
    v37 = *(v22 + 216);
    v63 = *(v22 + 224);
    v39 = *(v22 + 200);
    v38 = *(v22 + 208);
    v40 = *(v22 + 120);
    v41 = swift_task_alloc();
    v42 = *(v22 + 128);
    *(v41 + 16) = v40;
    *(v41 + 24) = v42;
    *(v41 + 40) = v34;
    *(v41 + 48) = v28;
    (*(v38 + 104))(v37, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v39);
    AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

    AsyncThrowingStream.makeAsyncIterator()();
    (*(v36 + 8))(v35, v63);
    *(v22 + 58) = 1;
    *(v22 + 336) = 0;
    *(v22 + 344) = 0;
    *(v22 + 352) = qword_10002CEA8;
    sub_10001AF70();
    sub_100019F30(v43, v44, &unk_100020A50);

    swift_task_alloc();
    sub_10001104C();
    *(v22 + 360) = v45;
    *v45 = v46;
    sub_10001AF10(v45);
    sub_10001AF54();

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v47);
  }

  else
  {
    v49 = *(v22 + 272);
    v50 = *(v22 + 280);
    v51 = *(v22 + 144);

    (*(v50 + 104))(v51, enum case for MusicDaemon.Error.itemDeviceLocalIDNotFound(_:), v49);
    sub_10001AE44();
    sub_100019F30(v52, v53, &protocol conformance descriptor for MusicDaemon.Error);
    swift_willThrowTypedImpl();
    sub_10001AE90();

    sub_10001AED0();
    sub_10001AF54();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_100016504()
{
  sub_1000110FC();
  sub_100011384();
  v1 = *v0;
  sub_100010E2C();
  *v2 = v1;

  sub_10001B1AC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100016618()
{
  v100 = v0;
  v1 = *(v0 + 40);
  if (*(v0 + 56))
  {
    v2 = *(v0 + 58);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    if ((v2 & 1) != 0 || (v3 = [objc_allocWithZone(ML3Track) initWithPersistentID:*(v0 + 344) inLibrary:*(v0 + 136)], (*(v0 + 368) = v3) == 0))
    {
      v48 = *(v0 + 272);
      v49 = *(v0 + 280);
      v50 = *(v0 + 144);

      (*(v49 + 104))(v50, enum case for MusicDaemon.Error.libraryEntityNotFound(_:), v48);
      sub_10001AE44();
      sub_100019F30(v51, v52, &protocol conformance descriptor for MusicDaemon.Error);
      swift_willThrowTypedImpl();
    }

    else
    {
      v4 = v3;
      if (*(v0 + 57))
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      Date.init()();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      v98 = v4;
      if (sub_1000116BC(v7))
      {
        v8 = *(v0 + 344);
        v9 = sub_10001B254();
        v10 = sub_100014D3C();
        v99 = v10;
        *v9 = 134349314;
        *(v9 + 4) = v8;
        *(v9 + 12) = 2082;
        *(v0 + 96) = v5;
        type metadata accessor for ML3EntityLikedState(0);
        v11 = String.init<A>(describing:)();
        v13 = sub_100013F98(v11, v12, &v99);

        *(v9 + 14) = v13;
        _os_log_impl(&_mh_execute_header, v6, v7, "| updating liked_state for entity with pid: %{public}lld to %{public}s.", v9, 0x16u);
        sub_10000F7CC(v10);
        v14 = v10;
        v4 = v98;
        sub_100014CDC(v14);
        sub_100014CDC(v9);
      }

      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v16 = &MusicDaemon.Server;
      v17 = [v4 setValue:isa forProperty:ML3TrackPropertyLikedState];

      if (v17)
      {
        (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 192), *(v0 + 168));
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v18, v19))
        {
          HIDWORD(v95) = v19;
          v20 = *(v0 + 344);
          v21 = *(v0 + 176);
          v22 = *(v0 + 184);
          v23 = *(v0 + 168);
          v24 = sub_10001B254();
          v96 = sub_100014D3C();
          v97 = v5;
          v99 = v96;
          *v24 = 134349314;
          *(v24 + 4) = v20;
          *(v24 + 12) = 2082;
          sub_100019F30(&qword_10002CCC0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v25 = v22;
          v26 = dispatch thunk of CustomStringConvertible.description.getter();
          v28 = v27;
          v29 = *(v21 + 8);
          v29(v25, v23);
          v16 = &MusicDaemon.Server;
          v30 = sub_100013F98(v26, v28, &v99);

          *(v24 + 14) = v30;
          _os_log_impl(&_mh_execute_header, v18, BYTE4(v95), "| updating liked_state_changed_date for entity with pid: %{public}lld to %{public}s.", v24, 0x16u);
          v39 = sub_10001B080(v31, v32, v33, v34, v35, v36, v37, v38, v95, v96);
          v5 = v97;
          sub_100014CDC(v39);
          v40 = v24;
          v4 = v98;
          sub_100014CDC(v40);
        }

        else
        {
          v53 = *(v0 + 176);

          v29 = *(v53 + 8);
          v54 = sub_10001B074();
          (v29)(v54);
        }

        *(v0 + 376) = v29;
        v55 = Date._bridgeToObjectiveC()().super.isa;
        v56 = [v4 v16[15].base_props];

        if (v56)
        {
          v57 = v5;
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.default.getter();
          if (sub_1000116BC(v59))
          {
            v61 = *(v0 + 336);
            v60 = *(v0 + 344);
            v62 = sub_100014D3C();
            v63 = sub_100014D3C();
            v99 = v63;
            *v62 = 134349570;
            *(v62 + 4) = v60;
            *(v62 + 12) = 2050;
            *(v62 + 14) = v61;
            *(v62 + 22) = 2082;
            *(v0 + 88) = v57;
            type metadata accessor for ML3EntityLikedState(0);
            v64 = String.init<A>(describing:)();
            v66 = sub_100013F98(v64, v65, &v99);

            *(v62 + 24) = v66;
            _os_log_impl(&_mh_execute_header, v58, v59, "| updating content taste for entity with pid: %{public}lld and store ID: %{public}lld to %{public}s.", v62, 0x20u);
            sub_10000F7CC(v63);
            sub_100014CDC(v63);
            sub_10001AF38();
          }

          v86 = swift_task_alloc();
          *(v0 + 384) = v86;
          *v86 = v0;
          v86[1] = sub_100016DA8;
          sub_10001B1D8();

          return sub_100018A48(v87, v88, v89, v90, v91, v92);
        }
      }

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = *(v0 + 344);
        v70 = sub_1000118AC();
        *v70 = 134349056;
        *(v70 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v67, v68, "| failed to set values to entity with pid: %{public}lld.", v70, 0xCu);
        sub_100014CDC(v70);
      }

      v71 = *(v0 + 296);
      v72 = *(v0 + 272);
      v73 = *(v0 + 280);
      v74 = *(v0 + 192);
      v75 = *(v0 + 168);
      v76 = *(v0 + 176);
      v77 = *(v0 + 144);
      v78 = *(v0 + 57);

      v79 = &enum case for MusicDaemon.Error.failedToPerformFavoriteAction(_:);
      if (!v78)
      {
        v79 = &enum case for MusicDaemon.Error.failedToPerformUndoFavoriteAction(_:);
      }

      (*(v73 + 104))(v71, *v79, v72);
      (*(v73 + 16))(v77, v71, v72);
      sub_10001AE44();
      sub_100019F30(v80, v81, &protocol conformance descriptor for MusicDaemon.Error);
      swift_willThrowTypedImpl();

      v82 = sub_100011390();
      v83(v82);
      (*(v76 + 8))(v74, v75);
    }

    sub_10001AE90();

    sub_10001AED0();
    sub_10001B1D8();

    __asm { BRAA            X1, X16 }
  }

  v41 = *(v0 + 48);
  *(v0 + 58) = 0;
  *(v0 + 336) = v41;
  *(v0 + 344) = v1;
  *(v0 + 352) = qword_10002CEA8;
  sub_10001AF70();
  sub_100019F30(v42, v43, &unk_100020A50);

  swift_task_alloc();
  sub_10001104C();
  *(v0 + 360) = v44;
  *v44 = v45;
  sub_10001AF10(v44);
  sub_10001B1D8();

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v46);
}

uint64_t sub_100016DA8()
{
  sub_1000110FC();
  sub_100011384();
  v1 = *v0;
  sub_100010E2C();
  *v2 = v1;

  sub_10001B1AC();

  return _swift_task_switch(v3, v4, v5);
}

void sub_100016EA4()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 336);
    v3 = *(v0 + 344);
    v5 = sub_10001B254();
    *v5 = 134349312;
    *(v5 + 4) = v3;
    *(v5 + 12) = 2050;
    *(v5 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v1, v2, "| successfully set content taste for entity with pid: %{public}lld and store ID: %{public}lld", v5, 0x16u);
    sub_100014CDC(v5);
  }

  v6 = *(v0 + 368);
  v18 = *(v0 + 376);
  v7 = *(v0 + 160);
  v8 = *(v0 + 57);

  type metadata accessor for MusicDaemon.Item();
  sub_100010D80();
  v9 = sub_10001B1B8();
  v10(v9);
  v11 = &enum case for MusicFavoriteStatus.favorited(_:);
  if (!v8)
  {
    v11 = &enum case for MusicFavoriteStatus.neutral(_:);
  }

  v12 = *v11;
  v13 = type metadata accessor for MusicFavoriteStatus();
  sub_100010D80();
  (*(v14 + 104))(v7, v12, v13);
  sub_10000ED54(v7, 0, 1, v13);
  MusicDaemon.Item.favoriteStatus.setter();

  v15 = sub_100011390();
  v18(v15);

  sub_10001AEF0();
  sub_100011568();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000170DC()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[18];

  (*(v3 + 32))(v4, v1, v2);
  sub_10001AE90();

  sub_10001AED0();

  return v5();
}

uint64_t sub_1000171C8()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[32];

  (*(v3 + 8))(v1, v2);
  v0[9] = v0[8];
  swift_errorRetain();
  sub_10000E634(&qword_10002CA30, &qword_100020610);
  v4 = swift_dynamicCast();
  v5 = v0[35];
  v6 = v0[34];
  v7 = v0[19];
  v8 = v0[18];
  if (v4)
  {
    v9 = v0[36];
    sub_10000ED54(v0[19], 0, 1, v0[34]);
    (*(v5 + 32))(v9, v7, v6);
    (*(v5 + 16))(v8, v9, v6);
    sub_10001AE44();
    sub_100019F30(v10, v11, &protocol conformance descriptor for MusicDaemon.Error);
    sub_10001B120();
    swift_willThrowTypedImpl();

    (*(v5 + 8))(v9, v6);
  }

  else
  {
    sub_10000ED54(v0[19], 1, 1, v0[34]);
    sub_100010734(v7, &qword_10002CA90, &qword_100020670);
    swift_getErrorValue();
    *v8 = Error.localizedDescription.getter();
    v8[1] = v12;
    (*(v5 + 104))(v8, enum case for MusicDaemon.Error.other(_:), v6);
    sub_10001AE44();
    sub_100019F30(v13, v14, &protocol conformance descriptor for MusicDaemon.Error);
    sub_10001B120();
    swift_willThrowTypedImpl();
  }

  sub_10001AE90();

  sub_10001AED0();

  return v15();
}

uint64_t sub_10001745C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 168) = a5;
  *(v6 + 176) = a6;
  *(v6 + 344) = a2;
  *(v6 + 160) = a1;
  sub_10000E634(&qword_10002CCE0, &qword_1000208D0);
  *(v6 + 184) = swift_task_alloc();
  v7 = type metadata accessor for MusicDaemon.Item();
  *(v6 + 192) = v7;
  *(v6 + 200) = *(v7 - 8);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  v8 = type metadata accessor for MusicIdentifierSet();
  *(v6 + 240) = v8;
  *(v6 + 248) = *(v8 - 8);
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  v9 = qword_10002CEA8;
  *(v6 + 280) = qword_10002CEA8;

  return _swift_task_switch(sub_10001763C, v9, 0);
}

uint64_t sub_10001763C()
{
  v127 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  MusicDaemon.Item.identifierSet.getter();
  v4 = MusicIdentifierSet.isLibrary.getter();
  v5 = *(v3 + 8);
  v5(v1, v2);
  if (v4)
  {

    if (qword_10002C638 != -1)
    {
      sub_100014C08(&qword_10002C638);
    }

    v6 = type metadata accessor for Logger();
    v7 = sub_10000F74C(v6, qword_10002CEB0);
    v8 = sub_10001B074();
    v9(v8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!sub_10001B014(v11))
    {

      v43 = sub_10001B074();
      v44(v43);
      goto LABEL_90;
    }

    sub_1000118AC();
    v12 = sub_10001AF88();
    v126[0] = v12;
    *v7 = 136446210;
    MusicDaemon.Item.identifierSet.getter();
    sub_100011390();
    String.init<A>(describing:)();
    v13 = sub_10001B1B8();
    v14(v13);
    v15 = sub_100011390();
    v18 = sub_100013F98(v15, v16, v17);

    *(v7 + 4) = v18;
    goto LABEL_88;
  }

  if (qword_10002C638 != -1)
  {
    sub_100014C08(&qword_10002C638);
  }

  v19 = *(v0 + 232);
  v20 = *(v0 + 192);
  v21 = *(v0 + 200);
  v22 = *(v0 + 160);
  v23 = type metadata accessor for Logger();
  *(v0 + 288) = sub_10000F74C(v23, qword_10002CEB0);
  v24 = *(v21 + 16);
  *(v0 + 296) = v24;
  *(v0 + 304) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v124 = v24;
  v24(v19, v22, v20);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 272);
    v28 = *(v0 + 232);
    v29 = *(v0 + 240);
    v30 = *(v0 + 200);
    v120 = *(v0 + 192);
    v122 = v5;
    v31 = sub_1000118AC();
    v121 = sub_100014D3C();
    v126[0] = v121;
    *v31 = 136446210;
    MusicDaemon.Item.identifierSet.getter();
    String.init<A>(describing:)();
    sub_10001B0D8();
    v32 = *(v30 + 8);
    v32(v28, v120);
    sub_100013F98(v27, v29, v126);
    sub_10001B174();
    *(v31 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v25, v26, "| starting to import track with identifier set: %{public}s.", v31, 0xCu);
    v41 = sub_10001B080(v33, v34, v35, v36, v37, v38, v39, v40, v120, v121);
    sub_100014CDC(v41);
    v42 = v31;
    v5 = v122;
    sub_100014CDC(v42);
  }

  else
  {
    v45 = *(v0 + 232);
    v47 = *(v0 + 192);
    v46 = *(v0 + 200);

    v48 = *(v46 + 8);
    v48(v45, v47);
    v32 = v48;
  }

  v49 = v32;
  *(v0 + 312) = v32;
  v50 = *(v0 + 264);
  v51 = *(v0 + 240);
  v52 = *(v0 + 184);
  MusicDaemon.Item.identifierSet.getter();
  MusicIdentifierSet.catalogID.getter();
  v5(v50, v51);
  v53 = v5;
  v54 = type metadata accessor for MusicCatalogID();
  if (sub_10000ED7C(v52, 1, v54) == 1)
  {
    sub_100010734(*(v0 + 184), &qword_10002CCE0, &qword_1000208D0);
    MusicDaemon.Item.identifierSet.getter();
    v55 = MusicIdentifierSet.purchasedAdamID.getter();
    v57 = v56;
    v58 = sub_100011390();
    v59 = v53(v58);
    if (!v57)
    {
      v123 = v49;

LABEL_86:
      v124(*(v0 + 224), *(v0 + 160), *(v0 + 192));
      v10 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();
      if (!sub_10001B014(v82))
      {

        v93 = sub_10001B074();
        v123(v93);
LABEL_90:
        sub_10001B12C();

        sub_10001AEF0();
        sub_100011568();

        __asm { BRAA            X1, X16 }
      }

      sub_1000118AC();
      v12 = sub_10001AF88();
      v126[0] = v12;
      *v55 = 136446210;
      MusicDaemon.Item.identifierSet.getter();
      sub_100011390();
      String.init<A>(describing:)();
      v83 = sub_10001B1B8();
      v123(v83);
      v84 = sub_100011390();
      v87 = sub_100013F98(v84, v85, v86);

      *(v55 + 4) = v87;
LABEL_88:
      sub_10001AEE0();
      _os_log_impl(v88, v89, v90, v91, v92, 0xCu);
      sub_10000F7CC(v12);
      sub_100014CDC(v12);
      sub_10001AFA4();

      goto LABEL_90;
    }
  }

  else
  {
    v60 = *(v0 + 184);
    v55 = MusicCatalogID.value.getter();
    v57 = v61;
    v59 = (*(*(v54 - 8) + 8))(v60, v54);
  }

  v62 = HIBYTE(v57) & 0xF;
  v63 = v55 & 0xFFFFFFFFFFFFLL;
  if ((v57 & 0x2000000000000000) != 0)
  {
    v64 = HIBYTE(v57) & 0xF;
  }

  else
  {
    v64 = v55 & 0xFFFFFFFFFFFFLL;
  }

  if (!v64)
  {
LABEL_85:
    v123 = v49;

    goto LABEL_86;
  }

  if ((v57 & 0x1000000000000000) == 0)
  {
    if ((v57 & 0x2000000000000000) != 0)
    {
      v126[0] = v55;
      v126[1] = v57 & 0xFFFFFFFFFFFFFFLL;
      if (v55 == 43)
      {
        if (v62)
        {
          if (v62 != 1)
          {
            sub_10001B1C4();
            while (1)
            {
              sub_10001AF00();
              if (!v68 & v67)
              {
                break;
              }

              sub_10001AEBC();
              if (!v68)
              {
                break;
              }

              v66 = (v77 + v76);
              if (__OFADD__(v77, v76))
              {
                break;
              }

              sub_10001B114();
              if (v68)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_83;
        }

LABEL_107:
        __break(1u);
        return _swift_continuation_await(v59);
      }

      if (v55 != 45)
      {
        if (v62)
        {
          while (1)
          {
            sub_10001AF00();
            if (!v68 & v67)
            {
              break;
            }

            sub_10001AEBC();
            if (!v68)
            {
              break;
            }

            v66 = (v81 + v80);
            if (__OFADD__(v81, v80))
            {
              break;
            }

            sub_10001B114();
            if (v68)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_83;
      }

      if (v62)
      {
        if (v62 != 1)
        {
          sub_10001B1C4();
          while (1)
          {
            sub_10001AF00();
            if (!v68 & v67)
            {
              break;
            }

            sub_10001AEBC();
            if (!v68)
            {
              break;
            }

            v66 = (v73 - v72);
            if (__OFSUB__(v73, v72))
            {
              break;
            }

            sub_10001B114();
            if (v68)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_83;
      }
    }

    else
    {
      if ((v55 & 0x1000000000000000) != 0)
      {
        v59 = ((v57 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        sub_10001B120();
        v59 = _StringObject.sharedUTF8.getter();
      }

      v65 = *v59;
      if (v65 == 43)
      {
        if (v63 >= 1)
        {
          if (v63 != 1)
          {
            v66 = 0;
            if (v59)
            {
              while (1)
              {
                sub_10001AF00();
                if (!v68 & v67)
                {
                  goto LABEL_83;
                }

                sub_10001AEBC();
                if (!v68)
                {
                  goto LABEL_83;
                }

                v66 = (v75 + v74);
                if (__OFADD__(v75, v74))
                {
                  goto LABEL_83;
                }

                sub_10001B114();
                if (v68)
                {
                  goto LABEL_84;
                }
              }
            }

            goto LABEL_74;
          }

          goto LABEL_83;
        }

        goto LABEL_106;
      }

      if (v65 != 45)
      {
        if (v63)
        {
          v66 = 0;
          if (v59)
          {
            while (1)
            {
              v78 = *v59 - 48;
              if (v78 > 9)
              {
                goto LABEL_83;
              }

              v79 = 10 * v66;
              if ((v66 * 10) >> 64 != (10 * v66) >> 63)
              {
                goto LABEL_83;
              }

              v66 = (v79 + v78);
              if (__OFADD__(v79, v78))
              {
                goto LABEL_83;
              }

              ++v59;
              if (!--v63)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_83:
        v66 = 0;
        v71 = 1;
LABEL_84:
        if (v71)
        {
          goto LABEL_85;
        }

        goto LABEL_94;
      }

      if (v63 >= 1)
      {
        if (v63 != 1)
        {
          v66 = 0;
          if (v59)
          {
            while (1)
            {
              sub_10001AF00();
              if (!v68 & v67)
              {
                goto LABEL_83;
              }

              sub_10001AEBC();
              if (!v68)
              {
                goto LABEL_83;
              }

              v66 = (v70 - v69);
              if (__OFSUB__(v70, v69))
              {
                goto LABEL_83;
              }

              sub_10001B114();
              if (v68)
              {
                goto LABEL_84;
              }
            }
          }

LABEL_74:
          v71 = 0;
          goto LABEL_84;
        }

        goto LABEL_83;
      }

      __break(1u);
    }

    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v96 = sub_10001B120();
  v66 = sub_10001A11C(v96, v97, 10);
  v99 = v98;

  if (v99)
  {
    goto LABEL_85;
  }

LABEL_94:
  *(v0 + 320) = v66;
  v100 = *(v0 + 168);
  v101 = *(v0 + 344);
  sub_10001AC80();
  v102 = sub_10001ED64();
  *(v0 + 328) = v102;
  v103 = [v100 sagaCloudFavoriteSongAddToLibraryBehavior];

  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v104, v105))
  {
    v125 = v101;
    v106 = sub_10001B254();
    v107 = swift_slowAlloc();
    v126[0] = v107;
    *v106 = 136446466;
    v108 = sub_10001B120();
    v111 = sub_100013F98(v108, v109, v110);

    *(v106 + 4) = v111;
    *(v106 + 12) = 2082;
    *(v0 + 152) = v103;
    type metadata accessor for ML3FavoriteSongAddToLibraryBehavior(0);
    v112 = String.init<A>(describing:)();
    v114 = sub_100013F98(v112, v113, v126);

    *(v106 + 14) = v114;
    _os_log_impl(&_mh_execute_header, v104, v105, "| importing track with catalog ID: %{public}s with add-to-library behavior: %{public}s.", v106, 0x16u);
    swift_arrayDestroy();
    sub_100014CDC(v107);
    v115 = v106;
    v101 = v125;
    sub_100014CDC(v115);
  }

  else
  {
  }

  if (v103 < 2)
  {
    v116 = v101;
  }

  else
  {
    v116 = 0;
  }

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100018054;
  v117 = swift_continuation_init();
  *(v0 + 136) = sub_10000E634(&qword_10002CCF8, &qword_1000208E0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100018F74;
  *(v0 + 104) = &unk_100029188;
  *(v0 + 112) = v117;
  [v102 _musicKit_importTrackWithID:v66 addingToLibrary:v116 completionHandler:v0 + 80];
  sub_100011568();

  return _swift_continuation_await(v59);
}

uint64_t sub_100018054()
{
  sub_1000110FC();
  sub_100011384();
  v1 = v0[6];
  v0[42] = v1;
  v2 = v0[35];
  if (v1)
  {
    v3 = sub_100018228;
  }

  else
  {
    v3 = sub_10001816C;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10001816C()
{

  sub_10001B12C();

  sub_10001AEF0();

  return v1();
}

uint64_t sub_100018228()
{
  v38 = v0;
  v1 = v0[37];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[20];

  swift_willThrow();
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[42];
    v36 = v0[40];
    v8 = sub_100014D3C();
    v37[0] = swift_slowAlloc();
    *v8 = 136446722;
    sub_10001AE5C();
    sub_100019F30(v9, v10, &protocol conformance descriptor for MusicDaemon.Item);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v14 = sub_10001B1B8();
    v15(v14);
    v16 = sub_100013F98(v11, v13, v37);

    *(v8 + 4) = v16;
    *(v8 + 12) = 2050;
    *(v8 + 14) = v36;
    *(v8 + 22) = 2082;
    v0[18] = v7;
    swift_errorRetain();
    sub_10000E634(&qword_10002CA30, &qword_100020610);
    v17 = String.init<A>(describing:)();
    v19 = sub_100013F98(v17, v18, v37);

    *(v8 + 24) = v19;
    sub_10001AEE0();
    _os_log_impl(v20, v21, v22, v23, v24, 0x20u);
    swift_arrayDestroy();
    sub_10001AF38();
    sub_10001AFA4();
  }

  else
  {
    v25 = v0[39];

    v26 = sub_10001B074();
    v25(v26);
  }

  v27 = v0[41];
  v28 = v0[22];
  v29 = enum case for MusicDaemon.Error.failedToImportTrack(_:);
  v30 = type metadata accessor for MusicDaemon.Error();
  sub_100010D80();
  (*(v31 + 104))(v28, v29, v30);
  sub_10001AE44();
  sub_100019F30(v32, v33, &protocol conformance descriptor for MusicDaemon.Error);
  sub_10001B074();
  swift_willThrowTypedImpl();

  sub_10001AED0();

  return v34();
}

unint64_t sub_10001855C()
{
  v0 = sub_10000E634(&qword_10002CCE0, &qword_1000208D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = type metadata accessor for MusicIdentifierSet();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - v11;
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = sub_10000E634(&qword_10002CCE8, &qword_1000208D8);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v40 = 0xD00000000000006CLL;
  v41 = 0x8000000100020F50;
  MusicDaemon.Item.identifierSet.getter();
  MusicIdentifierSet.deviceLocalID.getter();
  v18 = *(v4 + 8);
  v18(v14, v3);
  v19 = type metadata accessor for MusicDeviceLocalID();
  if (sub_10000ED7C(v17, 1, v19) != 1)
  {
    v26 = MusicDeviceLocalID.value.getter();
    v28 = v27;
    (*(*(v19 - 8) + 8))(v17, v19);
    strcpy(&v39, "item_pid=");
    WORD1(v39._object) = 0;
    HIDWORD(v39._object) = -385875968;
LABEL_7:
    v30._countAndFlagsBits = v26;
    v30._object = v28;
    String.append(_:)(v30);
LABEL_8:

    goto LABEL_9;
  }

  sub_100010734(v17, &qword_10002CCE8, &qword_1000208D8);
  MusicDaemon.Item.identifierSet.getter();
  MusicIdentifierSet.catalogID.getter();
  v18(v12, v3);
  v20 = type metadata accessor for MusicCatalogID();
  if (sub_10000ED7C(v2, 1, v20) != 1)
  {
    v26 = MusicCatalogID.value.getter();
    v28 = v29;
    (*(*(v20 - 8) + 8))(v2, v20);
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v39._countAndFlagsBits = 0xD00000000000001BLL;
    v39._object = 0x8000000100020FE0;
    goto LABEL_7;
  }

  sub_100010734(v2, &qword_10002CCE0, &qword_1000208D0);
  MusicDaemon.Item.identifierSet.getter();
  v21 = MusicIdentifierSet.libraryID.getter();
  v23 = v22;
  v18(v9, v3);
  if (!v23)
  {
    v32 = v38;
    MusicDaemon.Item.identifierSet.getter();
    v33 = MusicIdentifierSet.purchasedAdamID.getter();
    v35 = v34;
    v18(v32, v3);
    if (!v35)
    {
      return 0;
    }

    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(&v39, "store_item_id=");
    HIBYTE(v39._object) = -18;
    v36._countAndFlagsBits = v33;
    v36._object = v35;
    String.append(_:)(v36);
    goto LABEL_8;
  }

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v39._countAndFlagsBits = 0xD00000000000001CLL;
  v39._object = 0x8000000100020FC0;
  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 34;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
LABEL_9:
  String.append(_:)(v39);

  return v40;
}

uint64_t sub_100018A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  v7 = qword_10002CEA8;
  v6[25] = qword_10002CEA8;

  return _swift_task_switch(sub_100018AFC, v7, 0);
}

uint64_t sub_100018AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10001AFC0();
  a21 = v24;
  a22 = v25;
  sub_10001B068();
  a20 = v22;
  if (qword_10002C638 != -1)
  {
    sub_100014C08(&qword_10002C638);
  }

  v26 = type metadata accessor for Logger();
  sub_10000F74C(v26, qword_10002CEB0);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (sub_1000116BC(v28))
  {
    v30 = v22[20];
    v29 = v22[21];
    v31 = v22[19];
    sub_100014D3C();
    v32 = sub_10001AF88();
    a11 = v32;
    *v23 = 134349570;
    *(v23 + 4) = v30;
    *(v23 + 12) = 2050;
    *(v23 + 14) = v29;
    *(v23 + 22) = 2082;
    v22[10] = v31;
    type metadata accessor for ML3EntityLikedState(0);
    v33 = String.init<A>(describing:)();
    v35 = sub_100013F98(v33, v34, &a11);

    *(v23 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "| setting content taste for storeID: %{public}lld, persistentID: %{public}lld, likedState: %{public}s", v23, 0x20u);
    sub_10000F7CC(v32);
    sub_10001AF38();
    sub_10001AFA4();
  }

  v36 = v22[21];
  v38 = v22[19];
  v37 = v22[20];
  v39 = String._bridgeToObjectiveC()();
  v40 = [v39 longLongValue];

  v41 = [objc_allocWithZone(NSNumber) initWithLongLong:v40];
  v22[26] = v41;
  v42 = [objc_opt_self() specificAccountWithDSID:v41];
  v22[27] = v42;
  v43 = [objc_allocWithZone(ICConnectionConfiguration) initWithUserIdentity:v42];
  v22[28] = v43;
  v44 = v38 == 2;
  v45 = [objc_opt_self() sharedCloudContentTasteRequestListener];
  v22[29] = v45;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v22[30] = isa;
  v22[2] = v22;
  v22[7] = v22 + 18;
  v22[3] = sub_100018DF8;
  v47 = swift_continuation_init();
  v22[17] = sub_10000E634(&qword_10002CCC8, &qword_1000208B8);
  v22[10] = _NSConcreteStackBlock;
  v22[11] = 1107296256;
  v22[12] = sub_100019D88;
  v22[13] = &unk_100029098;
  v22[14] = v47;
  [v45 setContentTaste:v44 forMediaItem:1 storeIdentifier:v37 persistentID:v36 timeStamp:isa configuration:v43 withCompletionHandler:?];
  sub_10001AF54();

  return _swift_continuation_await(v48);
}

uint64_t sub_100018DF8()
{
  sub_1000110FC();
  sub_100011384();
  v1 = *v0;
  sub_100010E2C();
  *v3 = v1;

  return _swift_task_switch(sub_100018EDC, v2, 0);
}

uint64_t sub_100018EDC()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100018F74(uint64_t a1, void *a2)
{
  v3 = sub_100019F90((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_100018FE4(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_100018FE4(uint64_t a1, uint64_t a2)
{
  sub_10000E634(&qword_10002CA30, &qword_100020610);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

void sub_100019054(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = aBlock - v13;
  (*(v11 + 16))(aBlock - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v15, v14, v10);
  v18 = (v17 + v16);
  *v18 = a5;
  v18[1] = a6;
  aBlock[4] = sub_10001A078;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001CB74;
  aBlock[3] = &unk_1000290E8;
  v19 = _Block_copy(aBlock);

  [a4 databaseConnectionAllowingWrites:0 withBlock:v19];
  _Block_release(v19);
  aBlock[0] = 0;
  AsyncThrowingStream.Continuation.finish(throwing:)();
  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000F74C(v20, qword_10002CEB0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "| database operation finished.", v23, 2u);
  }
}

void sub_1000192FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  if (a1)
  {
    v31 = a1;
    v12 = sub_10001E648(a3, a4, v31);
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000F74C(v13, qword_10002CEB0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "| database connection established.", v16, 2u);
    }

    if (v12)
    {
      (*(v9 + 16))(v11, a2, v8);
      v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v18 = swift_allocObject();
      (*(v9 + 32))(v18 + v17, v11, v8);
      v19 = swift_allocObject();
      *(v19 + 16) = sub_10001ABBC;
      *(v19 + 24) = v18;
      aBlock[4] = sub_10001AC60;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001CAF4;
      aBlock[3] = &unk_100029160;
      v20 = _Block_copy(aBlock);
      v21 = v12;

      [v21 enumerateRowsWithBlock:v20];

      _Block_release(v20);
    }

    else
    {
      v29 = v31;
    }
  }

  else
  {
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000F74C(v22, qword_10002CEB0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "| database connection failed.", v25, 2u);
    }

    v26 = type metadata accessor for MusicDaemon.Error();
    sub_100019F30(&qword_10002CA88, &type metadata accessor for MusicDaemon.Error, &protocol conformance descriptor for MusicDaemon.Error);
    v27 = swift_allocError();
    (*(*(v26 - 8) + 104))(v28, enum case for MusicDaemon.Error.databaseConnectionFailed(_:), v26);
    aBlock[0] = v27;
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }
}

uint64_t sub_100019774(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = sub_10000E634(&qword_10002CCD8, &qword_1000208C8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v40 - v8;
  if (a2)
  {
    swift_errorRetain();
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F74C(v10, qword_10002CEB0);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v41[0] = v14;
      *v13 = 136315138;
      v40[1] = a2;
      swift_errorRetain();
      sub_10000E634(&qword_10002CA30, &qword_100020610);
      v15 = String.init<A>(describing:)();
      v17 = sub_100013F98(v15, v16, v41);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "| database error: %s", v13, 0xCu);
      sub_10000F7CC(v14);
    }

    v18 = type metadata accessor for MusicDaemon.Error();
    sub_100019F30(&qword_10002CA88, &type metadata accessor for MusicDaemon.Error, &protocol conformance descriptor for MusicDaemon.Error);
    v19 = swift_allocError();
    v21 = v20;
    swift_getErrorValue();
    *v21 = Error.localizedDescription.getter();
    v21[1] = v22;
    (*(*(v18 - 8) + 104))(v21, enum case for MusicDaemon.Error.other(_:), v18);
    v41[0] = v19;
    sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    if (a3)
    {
      *a3 = 1;
    }
  }

  else if (a1)
  {
    v24 = a1;
    v25 = [v24 int64ForColumnIndex:0];
    v26 = [v24 int64ForColumnIndex:1];
    v27 = [v24 int64ForColumnIndex:2];
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000F74C(v29, qword_10002CEB0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134349312;
      *(v32 + 4) = v25;
      *(v32 + 12) = 2050;
      *(v32 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v30, v31, "| database row fetched with itemPersistentID: %{public}lld, storeID: %{public}lld.", v32, 0x16u);
    }

    v41[0] = v25;
    v41[1] = v28;
    sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
    AsyncThrowingStream.Continuation.yield(_:)();

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000F74C(v33, qword_10002CEB0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "| database row missing.", v36, 2u);
    }

    v37 = type metadata accessor for MusicDaemon.Error();
    sub_100019F30(&qword_10002CA88, &type metadata accessor for MusicDaemon.Error, &protocol conformance descriptor for MusicDaemon.Error);
    v38 = swift_allocError();
    *v39 = 0xD000000000000014;
    v39[1] = 0x8000000100020F30;
    (*(*(v37 - 8) + 104))(v39, enum case for MusicDaemon.Error.other(_:), v37);
    v41[0] = v38;
    sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
    result = AsyncThrowingStream.Continuation.finish(throwing:)();
    if (a3)
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t sub_100019D88(uint64_t a1, void *a2)
{
  v3 = *sub_100019F90((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_100019DD4(v3, v4);
}

Swift::Int sub_100019E38(Swift::UInt64 a1, Swift::UInt64 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_100019EBC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_100019F30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100019F90(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100019FD4()
{
  sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
  sub_100010D80();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

void sub_10001A078(void *a1)
{
  v3 = sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
  sub_100010D70(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_1000192FC(a1, v1 + v8, v10, v11);
}

unsigned __int8 *sub_10001A11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10001A6A4(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
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

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
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

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10001A6A4(unint64_t a1, unint64_t a2)
{
  v2 = sub_10001A710(sub_10001A70C, 0, a1, a2);
  v6 = sub_10001A744(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10001A710(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return String.subscript.getter(15, v5 | (v4 << 16));
}

uint64_t sub_10001A744(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_1000143A4(v9, 0), v12 = sub_10001A8A4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
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

unint64_t sub_10001A8A4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_10001AAB4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_10001AAB4(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_10001AAB4(unint64_t a1, uint64_t a2, uint64_t a3)
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