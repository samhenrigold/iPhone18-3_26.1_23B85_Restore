uint64_t sub_10006AF28(void *a1)
{
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60(&qword_1000D1AE8);
  }

  v2 = type metadata accessor for SKLogger(0);
  v3 = sub_1000128C0(v2, qword_1000E4560);
  _StringGuts.grow(_:)(36);

  strcpy(v20, "Application ");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  v4 = [a1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._object = 0x80000001000A1D40;
  v9._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v9);
  v11 = v20[0];
  v10 = v20[1];
  v12 = static os_log_type_t.default.getter();

  v13 = v3;
  v14 = Logger.logObject.getter();

  if (os_log_type_enabled(v14, v12))
  {
    sub_100039EE0();
    v15 = sub_10006BA34();
    v20[0] = v15;
    *v13 = 136446466;
    v16 = sub_1000847A8(0, 0xE000000000000000, v20);
    sub_100037B8C(v16);
    v17 = sub_1000847A8(v11, v10, v20);

    *(v13 + 14) = v17;
    sub_100063DD4(&_mh_execute_header, v18, v12, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_100039E94(v15);
    sub_100039E94(v13);
  }

  else
  {
  }

  return 1;
}

id sub_10006B1A8(void *a1, void *a2, void *a3)
{
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60(&qword_1000D1AE8);
  }

  v6 = type metadata accessor for SKLogger(0);
  v7 = sub_1000128C0(v6, qword_1000E4560);
  sub_10004A7DC();
  _StringGuts.grow(_:)(83);
  v8._countAndFlagsBits = 0x746163696C707041;
  v8._object = 0xEC000000206E6F69;
  String.append(_:)(v8);
  v9 = [a1 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0xD000000000000033;
  v14._object = 0x80000001000A1CC0;
  String.append(_:)(v14);
  v15 = [a2 description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x706F206874697720;
  v20._object = 0xEE0020736E6F6974;
  String.append(_:)(v20);
  v21 = [a3 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v27 = v74;
  v26 = v75;
  v28 = static os_log_type_t.default.getter();

  v29 = Logger.logObject.getter();

  if (os_log_type_enabled(v29, v28))
  {
    v30 = sub_100039EE0();
    v31 = swift_slowAlloc();
    v74 = v31;
    *v30 = 136446466;
    *(v30 + 4) = sub_10006BA50(v31, v32, v33, v34);
    *(v30 + 12) = 2082;
    v35 = sub_1000847A8(v27, v26, &v74);

    *(v30 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s%{public}s", v30, 0x16u);
    swift_arrayDestroy();
    sub_100039E94(v31);
    sub_100039E94(v30);
  }

  else
  {
  }

  v36 = sub_10006BA6C();
  v37 = objc_allocWithZone(UISceneConfiguration);
  v38 = sub_10006B918(0, 0, v36);
  sub_10004A7DC();
  _StringGuts.grow(_:)(27);
  v39._countAndFlagsBits = 0xD000000000000019;
  v39._object = 0x80000001000A1D00;
  String.append(_:)(v39);
  v72 = sub_10006BA6C();
  type metadata accessor for Role(0);
  _print_unlocked<A, B>(_:_:)();

  v41 = v74;
  v40 = v75;
  v42 = static os_log_type_t.default.getter();

  v43 = Logger.logObject.getter();

  if (os_log_type_enabled(v43, v42))
  {
    v44 = sub_100039EE0();
    v45 = v7;
    v46 = swift_slowAlloc();
    v74 = v46;
    *v44 = 136446466;
    *(v44 + 4) = sub_10006BA50(v46, v47, v48, v49);
    *(v44 + 12) = 2082;
    v50 = sub_1000847A8(v41, v40, &v74);

    *(v44 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v43, v42, "%{public}s%{public}s", v44, 0x16u);
    swift_arrayDestroy();
    v51 = v46;
    v7 = v45;
    sub_100039E94(v51);
    sub_100039E94(v44);
  }

  else
  {
  }

  v52 = sub_10006BA6C();
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;
  if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
  {

    goto LABEL_17;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v58)
  {
LABEL_17:
    sub_10006B988();
    [v38 setSceneClass:swift_getObjCClassFromMetadata()];
    type metadata accessor for StoreKitAngelRemoteAlertSceneDelegate(0);
    [v38 setDelegateClass:swift_getObjCClassFromMetadata()];
    return v38;
  }

  sub_10004A7DC();
  _StringGuts.grow(_:)(26);
  v59._object = 0x80000001000A1D20;
  v59._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v59);
  v73 = sub_10006BA6C();
  _print_unlocked<A, B>(_:_:)();

  v61 = v74;
  v60 = v75;
  v62 = static os_log_type_t.fault.getter();

  v63 = Logger.logObject.getter();

  if (os_log_type_enabled(v63, v62))
  {
    sub_100039EE0();
    v64 = sub_10006BA34();
    v74 = v64;
    *v7 = 136446466;
    v68 = sub_10006BA50(v64, v65, v66, v67);
    sub_100037B8C(v68);
    v69 = sub_1000847A8(v61, v60, &v74);

    *(v7 + 14) = v69;
    sub_100063DD4(&_mh_execute_header, v70, v62, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_100039E94(v64);
    sub_100039E94(v7);
  }

  else
  {
  }

  return v38;
}

id sub_10006B918(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithName:v5 sessionRole:a3];

  return v6;
}

unint64_t sub_10006B988()
{
  result = qword_1000D4060;
  if (!qword_1000D4060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D4060);
  }

  return result;
}

unint64_t sub_10006B9CC()
{
  result = qword_1000D1F48;
  if (!qword_1000D1F48)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D1F48);
  }

  return result;
}

uint64_t sub_10006BA34()
{

  return swift_slowAlloc();
}

unint64_t sub_10006BA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1000847A8(0, 0xE000000000000000, va);
}

id sub_10006BA6C()
{
  v3 = *(v1 + 1832);

  return [v0 v3];
}

uint64_t sub_10006BA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_100058EDC(a3, v24 - v10, &unk_1000D3EC0, &qword_100093590);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100012898(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100012CB4(v11, &unk_1000D3EC0, &qword_100093590);
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
      sub_10006E7DC();
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

      sub_100012CB4(a3, &unk_1000D3EC0, &qword_100093590);

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

  sub_100012CB4(a3, &unk_1000D3EC0, &qword_100093590);
  sub_10006E7DC();
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

uint64_t sub_10006BD60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v124 = a7;
  v14 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v14 - 8);
  v117 = v115 - v15;
  v16 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  __chkstk_darwin(v16 - 8);
  v126 = v115 - v17;
  v123 = type metadata accessor for URL();
  v18 = *(v123 - 8);
  v19 = __chkstk_darwin(v123);
  v119 = v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v121 = v115 - v21;
  v22 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  v23 = __chkstk_darwin(v22 - 8);
  v118 = v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = v115 - v25;
  v130 = a1;
  v131 = a2;

  swift_task_localValuePush();
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v125 = v26;
  v27 = type metadata accessor for SKLogger(0);
  v28 = sub_1000128C0(v27, qword_1000E4560);
  v29 = qword_1000D1AC8;

  if (v29 != -1)
  {
    swift_once();
  }

  v128 = qword_1000E4520;
  v129 = a9;
  TaskLocal.get()();
  v31 = v130;
  v30 = v131;
  v32 = static os_log_type_t.default.getter();

  v33 = Logger.logObject.getter();

  v34 = os_log_type_enabled(v33, v32);
  v120 = v18;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    *v35 = 136446466;
    v130 = 91;
    v131 = 0xE100000000000000;
    v36._countAndFlagsBits = v31;
    v36._object = v30;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 8285;
    v37._object = 0xE200000000000000;
    String.append(_:)(v37);
    v38 = sub_1000847A8(v130, v131, &v134);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2082;
    v39 = sub_1000847A8(v124, a8, &v134);

    *(v35 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s%{public}s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v40 = [objc_opt_self() currentContext];
  v41 = v126;
  v127 = a8;
  if (!v40)
  {
    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v134 = 0xD00000000000002ELL;
    v135 = 0x80000001000A1E30;
    swift_beginAccess();
    v53._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v53);

    v54 = v134;
    v55 = v135;
    TaskLocal.get()();
    v57 = v134;
    v56 = v135;
    v58 = static os_log_type_t.error.getter();

    v59 = Logger.logObject.getter();

    if (os_log_type_enabled(v59, v58))
    {
      v60 = swift_slowAlloc();
      v124 = a11;
      v61 = v60;
      v138 = swift_slowAlloc();
      *v61 = 136446466;
      v134 = 91;
      v135 = 0xE100000000000000;
      v62._countAndFlagsBits = v57;
      v62._object = v56;
      String.append(_:)(v62);
      v63._countAndFlagsBits = 8285;
      v63._object = 0xE200000000000000;
      String.append(_:)(v63);
      v64 = sub_1000847A8(v134, v135, &v138);

      *(v61 + 4) = v64;
      *(v61 + 12) = 2082;
      v65 = sub_1000847A8(v54, v55, &v138);

      *(v61 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v59, v58, "%{public}s%{public}s", v61, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100018F34();
    swift_allocError();
    *v82 = 1;
    swift_willThrow();
    goto LABEL_25;
  }

  v42 = v40;
  v43 = [v40 remoteToken];
  if (!v43)
  {
    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v66._object = 0x80000001000A1E60;
    v66._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v66);
    v67._countAndFlagsBits = v124;
    v67._object = a8;
    String.append(_:)(v67);
    v68._countAndFlagsBits = 0xD000000000000024;
    v68._object = 0x80000001000A1E80;
    String.append(_:)(v68);
    v69 = v130;
    v70 = v131;
    TaskLocal.get()();
    v72 = v130;
    v71 = v131;
    v73 = static os_log_type_t.error.getter();

    v74 = Logger.logObject.getter();

    if (os_log_type_enabled(v74, v73))
    {
      v75 = swift_slowAlloc();
      v124 = a11;
      v76 = v75;
      v77 = swift_slowAlloc();
      v116 = v42;
      v134 = v77;
      *v76 = 136446466;
      v130 = 91;
      v131 = 0xE100000000000000;
      v78._countAndFlagsBits = v72;
      v78._object = v71;
      String.append(_:)(v78);
      v79._countAndFlagsBits = 8285;
      v79._object = 0xE200000000000000;
      String.append(_:)(v79);
      v80 = sub_1000847A8(v130, v131, &v134);

      *(v76 + 4) = v80;
      *(v76 + 12) = 2082;
      v81 = sub_1000847A8(v69, v70, &v134);

      *(v76 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v74, v73, "%{public}s%{public}s", v76, 0x16u);
      swift_arrayDestroy();
      v42 = v116;
    }

    else
    {
    }

    sub_100018F34();
    swift_allocError();
    *v105 = 1;
    swift_willThrow();

    goto LABEL_25;
  }

  v44 = v43;
  v115[1] = v28;
  v116 = v42;
  v124 = a11;
  [v43 realToken];
  v46 = v130;
  v45 = v131;
  v47 = v132;
  v48 = v133;

  v49 = type metadata accessor for ClientOverride(0);
  v50 = v125;
  sub_10001267C(v125, 1, 1, v49);
  v51 = type metadata accessor for Client(0);
  TaskLocal.get()();
  v115[0] = v51;
  v52 = v122;
  sub_100027A74(v46, v45, v47);
  if (v52)
  {

    sub_10001267C(v41, 1, 1, v123);
    sub_100012CB4(v41, &qword_1000D1D58, &unk_1000954C0);
    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v134 = 0xD00000000000001CLL;
    v135 = 0x80000001000A1E60;
    swift_beginAccess();
    v91._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v91);

    v92 = v134;
    v93 = v135;
    TaskLocal.get()();
    v95 = v134;
    v94 = v135;
    v96 = static os_log_type_t.error.getter();

    v97 = Logger.logObject.getter();

    if (os_log_type_enabled(v97, v96))
    {
      v98 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v98 = 136446466;
      v134 = 91;
      v135 = 0xE100000000000000;
      v99._countAndFlagsBits = v95;
      v99._object = v94;
      String.append(_:)(v99);
      v100._countAndFlagsBits = 8285;
      v100._object = 0xE200000000000000;
      String.append(_:)(v100);
      v101 = sub_1000847A8(v134, v135, &v138);

      *(v98 + 4) = v101;
      *(v98 + 12) = 2082;
      v102 = sub_1000847A8(v92, v93, &v138);

      *(v98 + 14) = v102;
      _os_log_impl(&_mh_execute_header, v97, v96, "%{public}s%{public}s", v98, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v103 = v116;
    sub_100018F34();
    swift_allocError();
    *v104 = 1;
    swift_willThrow();

    sub_100012CB4(v125, &qword_1000D2000, qword_1000945D0);
LABEL_25:
    swift_task_localValuePop();
  }

  v83 = v123;
  sub_10001267C(v41, 0, 1, v123);
  v84 = v120;
  v85 = v41;
  v86 = v121;
  (*(v120 + 32))(v121, v85, v83);
  v136[0] = v46;
  v136[1] = v45;
  v136[2] = v47;
  v136[3] = v48;
  v87 = v84;
  v137 = 0;
  v88 = *(v84 + 16);
  v89 = v119;
  v88(v119, v86, v83);
  v90 = v118;
  sub_100058EDC(v50, v118, &qword_1000D2000, qword_1000945D0);
  sub_100025DD8(v136, v89, v90);
  v108 = v107;
  v109 = type metadata accessor for TaskPriority();
  v110 = v117;
  sub_10001267C(v117, 1, 1, v109);
  v111 = swift_allocObject();
  v111[2] = 0;
  v111[3] = 0;
  v112 = v124;
  v111[4] = a10;
  v111[5] = v112;
  v113 = v129;
  v111[6] = v108;
  v111[7] = v113;

  v114 = v108;

  sub_10006BA84(0, 0, v110, &unk_100098660, v111);

  (*(v87 + 8))(v121, v83);
  sub_100012CB4(v125, &qword_1000D2000, qword_1000945D0);
  swift_task_localValuePop();
}

uint64_t sub_10006CB70(uint64_t a1, int *a2)
{
  *(v2 + 72) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_10006CC64;

  return v5(v2 + 16);
}

uint64_t sub_10006CC64()
{
  sub_100013A88();
  sub_10001937C();
  sub_1000540C0();
  *v3 = v2;
  v4 = *v1;
  sub_100019340();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_1000193B4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10006CD84()
{
  v21 = v0;
  v1 = v0[11];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10006E768();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {

    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v4, qword_1000E4560);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    v0[6] = 0;
    v0[7] = 0xE000000000000000;
    v5._object = 0x80000001000A1EB0;
    v5._countAndFlagsBits = 0xD00000000000001FLL;
    String.append(_:)(v5);
    v6._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v0[8] = v1;
    sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    _print_unlocked<A, B>(_:_:)();
    v9 = v0[6];
    v8 = v0[7];
    v10 = static os_log_type_t.error.getter();

    v11 = Logger.logObject.getter();

    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v12 = 136446466;
      *(v12 + 4) = sub_1000847A8(0, 0xE000000000000000, v20);
      *(v12 + 12) = 2082;
      v13 = sub_1000847A8(v9, v8, v20);

      *(v12 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100018F34();
    swift_allocError();
    *v18 = 7;
    swift_willThrow();

    sub_100019370();
  }

  else
  {
    v14 = v2;
    v15 = v3;
    v16 = v0[9];

    *v16 = v14;
    v16[1] = v15;

    sub_100019370();
  }

  return v17();
}

uint64_t sub_10006D0C0@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000339DC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {

    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v5, qword_1000E4560);
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v6._countAndFlagsBits = 0x656420726F727245;
    v6._object = 0xEF20676E69646F63;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 1635017028;
    v7._object = 0xE400000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v24 = v3;
    sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    _print_unlocked<A, B>(_:_:)();
    v9 = static os_log_type_t.error.getter();

    v10 = Logger.logObject.getter();

    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136446466;
      *(v11 + 4) = sub_1000847A8(0, 0xE000000000000000, &v19);
      *(v11 + 12) = 2082;
      v12 = sub_1000847A8(0, 0xE000000000000000, &v19);

      *(v11 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100018F34();
    swift_allocError();
    *v18 = 6;
    swift_willThrow();
  }

  else
  {

    v14 = v20;
    v15 = v22;
    v16 = v23;
    v17 = v21;
    *a3 = v19;
    *(a3 + 8) = v14;
    *(a3 + 16) = v17;
    *(a3 + 32) = v15;
    *(a3 + 40) = v16;
  }

  return result;
}

uint64_t sub_10006D3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  return _swift_task_switch(sub_10006D3EC, 0, 0);
}

uint64_t sub_10006D3EC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v0 + 120) = v4;
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  *(v0 + 128) = v5;
  v7 = *(v1 + 48);
  *(v0 + 136) = v7;
  LOBYTE(v1) = *(v1 + 56);
  *(v0 + 16) = v3;
  *(v0 + 57) = v1;
  *(v0 + 24) = v4;
  *(v0 + 32) = v6;
  *(v0 + 40) = v5;
  *(v0 + 48) = v7;
  *(v0 + 56) = v1;

  j__swift_bridgeObjectRetain(v7);
  v11 = (v2 + *v2);
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_10006D554;
  v9 = *(v0 + 104);

  return v11(v9, v0 + 16);
}

uint64_t sub_10006D554()
{
  sub_10001D674();
  sub_10001937C();
  sub_1000540C0();
  *v2 = v1;
  v4 = *(v3 + 136);
  v5 = *v0;
  sub_100019340();
  *v6 = v5;

  j__swift_bridgeObjectRelease(v4);
  sub_100019370();

  return v7();
}

uint64_t sub_10006D6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10006E7DC();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = &unk_100098638;
  v8[4] = 0;
  v8[5] = sub_10006DD5C;
  v8[6] = v7;
  v9 = swift_allocObject();
  swift_retain_n();
  v10 = v4;

  sub_10006D0C0(&v16);
  v11 = v17[0];
  *(v9 + 16) = v16;
  *(v9 + 32) = v11;
  *(v9 + 41) = *(v17 + 9);
  if (qword_1000D1AC8 != -1)
  {
    swift_once();
  }

  v12 = qword_1000E4520;
  v13 = *(v9 + 16);
  v14 = *(v9 + 24);

  sub_10006BD60(v13, v14, 0xD000000000000031, 0x80000001000A1DF0, 169, v12, 0xD00000000000001ELL, 0x80000001000A1DD0, v9, &unk_100098648, v8);
}

uint64_t sub_10006D988(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 64) = a1;
  v4 = a3[1];
  *(v3 + 16) = *a3;
  *(v3 + 32) = v4;
  *(v3 + 41) = *(a3 + 25);
  v5 = swift_task_alloc();
  *(v3 + 72) = v5;
  *v5 = v3;
  v5[1] = sub_10006DA34;

  return sub_10004E644();
}

uint64_t sub_10006DA34()
{
  sub_10004AE50();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_10001937C();
  v11 = v10;
  sub_1000540C0();
  *v12 = v11;
  v13 = *v1;
  sub_100019340();
  *v14 = v13;

  if (v0)
  {
    v15 = *(v13 + 8);

    return v15();
  }

  else
  {
    v11[10] = v3;
    v11[11] = v5;
    v11[12] = v7;
    v11[13] = v9;
    sub_1000193B4();

    return _swift_task_switch(v17, v18, v19);
  }
}

uint64_t sub_10006DB90()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  v2->i64[0] = *(v0 + 104);
  v2->i64[1] = v1;
  v2[1] = vextq_s8(v3, v3, 8uLL);
  return sub_10004A778();
}

void sub_10006DC84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_10006DD1C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006DD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = a7;
  *(v7 + 96) = a4;
  *(v7 + 104) = a5;
  *(v7 + 80) = a1;
  *(v7 + 88) = a3;
  v8 = *(a2 + 8);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  *(v7 + 16) = *a2;
  *(v7 + 24) = v8;
  *(v7 + 32) = *(a2 + 16);
  *(v7 + 48) = v9;
  *(v7 + 56) = v10;
  return _swift_task_switch(sub_10006DDD8, 0, 0);
}

uint64_t sub_10006DDD8()
{
  sub_10001D674();
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *(v2 + 16) = *(v0 + 96);
  *(v2 + 32) = v1;
  *(v2 + 40) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_10006DEB0;

  return sub_10006CB70(v0 + 64, dword_100098690);
}

uint64_t sub_10006DEB0()
{
  sub_100013A88();
  sub_10001937C();
  v3 = v2;
  sub_1000540C0();
  *v4 = v3;
  v5 = *v1;
  sub_100019340();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  sub_1000193B4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10006DFB4()
{
  sub_10001D674();
  v7 = v0;
  v1 = v0[14];
  v2 = v0[9];
  v5 = v0[8];
  v6 = v2;
  sub_100019008(v5, v2);
  v1(&v5, 0);
  sub_100019064(v5, v6);
  sub_100018DF0(v0[8], v0[9]);
  sub_100019370();

  return v3();
}

uint64_t sub_10006E03C()
{
  sub_10004AE50();
  v7 = v0;
  v1 = *(v0 + 112);

  v6 = xmmword_100095310;
  v2 = _convertErrorToNSError(_:)();
  v3 = [v2 toASDErrorWithMetadata:0];

  v1(&v6, v3);

  sub_100019064(v6, *(&v6 + 1));
  sub_100019370();

  return v4();
}

uint64_t sub_10006E108()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006E150()
{
  sub_10004AE50();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001D5E0;
  sub_10006E7C4();

  return v2();
}

uint64_t sub_10006E21C()
{

  j__swift_bridgeObjectRelease(*(v0 + 48));

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10006E268()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006E2B8()
{
  sub_10004AE50();
  v0 = swift_task_alloc();
  v1 = sub_10004A854(v0);
  *v1 = v2;
  v1[1] = sub_10001D270;
  sub_10004A8A4();
  sub_10006E7C4();

  return sub_10006D3C8(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10006E368()
{

  sub_10006E7DC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10006E39C()
{
  sub_10001D674();
  v0 = swift_task_alloc();
  v1 = sub_10004A854(v0);
  *v1 = v2;
  v1[1] = sub_10001D5E0;
  v3 = sub_10004A8A4();

  return v4(v3);
}

uint64_t sub_10006E440(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a1;
  v7 = *(a5 + 8);
  v8 = *(a5 + 32);
  v9 = *(a5 + 40);
  *(v5 + 16) = *a5;
  *(v5 + 24) = v7;
  *(v5 + 32) = *(a5 + 16);
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  v12 = (a2 + *a2);
  v10 = swift_task_alloc();
  *(v5 + 104) = v10;
  *v10 = v5;
  v10[1] = sub_10006E574;

  return v12(v5 + 64, a4, v5 + 16);
}

uint64_t sub_10006E574()
{
  sub_100013A88();
  sub_10001937C();
  sub_1000540C0();
  *v3 = v2;
  v4 = *v1;
  sub_100019340();
  *v5 = v4;
  *(v6 + 112) = v0;

  sub_1000193B4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10006E670()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  *v1 = *(v0 + 64);
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return sub_10004A778();
}

uint64_t sub_10006E6AC()
{
  v0 = swift_task_alloc();
  v1 = sub_10004A854(v0);
  *v1 = v2;
  v1[1] = sub_10001D270;
  v3 = sub_10004A8A4();

  return v4(v3);
}

unint64_t sub_10006E768()
{
  result = qword_1000D4090;
  if (!qword_1000D4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4090);
  }

  return result;
}

uint64_t sub_10006E81C()
{
  v1 = *(v0 + 24);
  sub_1000704B8();
  return v1;
}

void *sub_10006E848()
{
  ObjectType = swift_getObjectType();
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v27 - 8);
  __chkstk_darwin(v27);
  sub_10002FC5C();
  v4 = v3 - v2;
  v5 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v5);
  sub_10002FC5C();
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  sub_10002FC5C();
  v0[2] = 0;
  v0[4] = [objc_allocWithZone(type metadata accessor for StoreKitAngelService()) init];
  Logger.init(subsystem:category:)();
  sub_100012BAC(0, &qword_1000D4148, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_100070520();
  sub_100012634(&qword_1000D4158, qword_100098740);
  sub_100070578();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v27);
  v0[3] = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v31.receiver = v0;
  v31.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v31, "init");
  sub_100012BAC(0, &qword_1000D4168, BSServiceConnectionListener_ptr);
  v8 = v7;
  v9 = sub_10006EDBC(sub_1000705DC, v8);
  v10 = v8[2];
  v8[2] = v9;

  if (v8[2])
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v11 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v11, qword_1000E4560);
    sub_100070760();
    _StringGuts.grow(_:)(29);
    _typeName(_:qualified:)();
    sub_100070744();
    v29 = ObjectType;
    v30 = "";
    v12._countAndFlagsBits = 0xD00000000000001BLL;
    v12._object = 0x80000001000A2070;
    String.append(_:)(v12);
    v13 = ObjectType;
    v14 = static os_log_type_t.default.getter();
  }

  else
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v15 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v15, qword_1000E4560);
    sub_100070760();
    _StringGuts.grow(_:)(37);
    _typeName(_:qualified:)();
    sub_100070744();
    v29 = ObjectType;
    v30 = "";
    v16._countAndFlagsBits = 0xD000000000000023;
    v16._object = 0x80000001000A2040;
    String.append(_:)(v16);
    v13 = ObjectType;
    v14 = static os_log_type_t.fault.getter();
  }

  v17 = v14;

  v18 = Logger.logObject.getter();

  if (os_log_type_enabled(v18, v17))
  {
    v19 = sub_100039EE0();
    v20 = sub_100039EC8();
    v29 = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_100037CAC(v20, v21, &v29);
    *(v19 + 12) = 2082;
    v22 = sub_1000847A8(v13, "", &v29);

    *(v19 + 14) = v22;
    sub_100070774(&_mh_execute_header, v23, v24, "%{public}s%{public}s");
    sub_100037BD0();
    sub_10004AA1C();
    sub_100039E94(v19);
  }

  else
  {
  }

  v25 = v8[2];
  if (v25)
  {
    [v25 activate];
  }

  return v8;
}

id sub_10006ECFC(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

id sub_10006EDBC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v9[4] = sub_100070740;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10007073C;
  v9[3] = &unk_1000C13F0;
  v5 = _Block_copy(v9);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v7 = [ObjCClassFromMetadata listenerWithConfigurator:v5];
  _Block_release(v5);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006EF10()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60(&qword_1000D1AE8);
  }

  v4 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v4, qword_1000E4560);
  _StringGuts.grow(_:)(31);
  _typeName(_:qualified:)();
  sub_100070744();
  v19[0] = ObjectType;
  v19[1] = v1;
  v5._object = 0x80000001000A2240;
  v5._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v5);
  v7 = ObjectType;
  v6 = v1;
  v8 = static os_log_type_t.default.getter();

  v9 = Logger.logObject.getter();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = sub_100039EE0();
    v11 = sub_100039EC8();
    v19[0] = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_100037CAC(v11, v12, v19);
    *(v10 + 12) = 2082;
    v13 = sub_1000847A8(v7, v6, v19);

    *(v10 + 14) = v13;
    sub_100070774(&_mh_execute_header, v14, v15, "%{public}s%{public}s");
    sub_100037BD0();
    sub_10004AA1C();
    sub_100039E94(v10);
  }

  else
  {
  }

  v16 = *(v2 + 16);
  if (v16)
  {
    [v16 invalidate];
    v17 = *(v2 + 16);
  }

  else
  {
    v17 = 0;
  }

  sub_1000498A0(v2 + OBJC_IVAR____TtC22StoreKitUISceneService28StoreKitAngelServiceListener_logger);
  return v2;
}

uint64_t sub_10006F0F4()
{
  sub_10006EF10();
  v1 = *((swift_isaMask & *v0) + 0x30);
  v2 = *((swift_isaMask & *v0) + 0x34);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for StoreKitAngelServiceListener(uint64_t a1)
{
  result = qword_1000D4130;
  if (!qword_1000D4130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006F1B0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  aBlock = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  v7._object = 0x80000001000A20F0;
  String.append(_:)(v7);
  swift_getObjectType();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v8._countAndFlagsBits = 0x6F63206874697720;
  v8._object = 0xEF203A747865746ELL;
  String.append(_:)(v8);
  v33 = a3;
  v41 = a3;
  v32 = sub_100012634(&qword_1000D4230, qword_100098758);
  _print_unlocked<A, B>(_:_:)();
  v9 = static os_log_type_t.default.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = sub_100039EE0();
    v12 = sub_100039EC8();
    aBlock = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_100037CAC(v12, v13, &aBlock);
    *(v11 + 12) = 2082;
    v14 = sub_1000847A8(0, 0xE000000000000000, &aBlock);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    sub_100037BD0();
    sub_10004AA1C();
    sub_100039E94(v11);
  }

  else
  {
  }

  sub_100012BAC(0, &qword_1000D4238, BSMutableServiceInterface_ptr);
  v15 = sub_10006F76C();
  sub_100012BAC(0, &qword_1000D4240, BSObjCProtocol_ptr);
  v16 = sub_10006F7DC(&OBJC_PROTOCOL____TtP22StoreKitUISceneService30StoreKitUISceneServiceProtocol_, sub_10006F7D0, 0);
  [v15 setServer:v16];

  [v15 setClientMessagingExpectation:1];
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v4;
  v17[4] = a2;
  v17[5] = ObjectType;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100070650;
  *(v18 + 24) = v17;
  v39 = sub_10007065C;
  v40 = v18;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_10007073C;
  v38 = &unk_1000C1468;
  v19 = _Block_copy(&aBlock);
  v20 = v15;

  v21 = a2;

  [v21 configureConnection:v19];
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    aBlock = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);
    v22._object = 0x80000001000A2140;
    v22._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v22);
    v41 = v21;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v23._countAndFlagsBits = 0x6F63206874697720;
    v23._object = 0xEF203A747865746ELL;
    String.append(_:)(v23);
    v41 = v33;
    _print_unlocked<A, B>(_:_:)();
    v25 = aBlock;
    v24 = v36;
    v26 = static os_log_type_t.default.getter();

    v27 = Logger.logObject.getter();

    if (os_log_type_enabled(v27, v26))
    {
      v28 = sub_100039EE0();
      v29 = sub_100039EC8();
      aBlock = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_100037CAC(v29, v30, &aBlock);
      *(v28 + 12) = 2082;
      v31 = sub_1000847A8(v25, v24, &aBlock);

      *(v28 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v27, v26, "%{public}s%{public}s", v28, 0x16u);
      sub_100037BD0();
      sub_10004AA1C();
      sub_100039E94(v28);
    }

    else
    {
    }

    [v21 activate];
  }
}

id sub_10006F76C()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() interfaceWithIdentifier:v0];

  return v1;
}

id sub_10006F7DC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v10[4] = sub_1000706E0;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10006F8DC;
    v10[3] = &unk_1000C15A8;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [swift_getObjCClassFromMetadata() protocolForProtocol:a1 interpreter:v7];
  _Block_release(v7);

  return v8;
}

id sub_10006F8DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

void sub_10006F930(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  [a1 setInterface:a2];
  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v9];

  [a1 setTargetQueue:*(a3 + 24)];
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v22 = sub_100070690;
  v23 = v10;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10006FE00;
  v21 = &unk_1000C14B8;
  v11 = _Block_copy(&v18);

  [a1 setActivationHandler:v11];
  _Block_release(v11);
  [a1 setInterfaceTarget:*(a3 + 32)];
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v22 = sub_1000706D0;
  v23 = v12;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10006FE00;
  v21 = &unk_1000C1508;
  v13 = _Block_copy(&v18);
  v14 = a4;

  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a5;
  v22 = sub_1000706D8;
  v23 = v15;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10006FE00;
  v21 = &unk_1000C1558;
  v16 = _Block_copy(&v18);
  v17 = v14;

  [a1 setInvalidationHandler:v16];
  _Block_release(v16);
}

void sub_10006FBCC(uint64_t a1, uint64_t a2)
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v2, qword_1000E4560);
  v9[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  v3._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v3);

  v4._object = 0x80000001000A21E0;
  v4._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v4);
  swift_getObjectType();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v5 = static os_log_type_t.default.getter();

  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v9[0] = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000847A8(0, 0xE000000000000000, v9);
    *(v7 + 12) = 2082;
    v8 = sub_1000847A8(0, 0xE000000000000000, v9);

    *(v7 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v6, v5, "%{public}s%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10006FE00(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10006FE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v3, qword_1000E4560);
  v11[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(32);
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x7463656E6E6F4320;
  v5._object = 0xEC000000206E6F69;
  String.append(_:)(v5);
  swift_getObjectType();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v6._object = 0x80000001000A21C0;
  v6._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v6);
  v7 = static os_log_type_t.error.getter();

  v8 = Logger.logObject.getter();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v11[0] = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_1000847A8(0, 0xE000000000000000, v11);
    *(v9 + 12) = 2082;
    v10 = sub_1000847A8(0, 0xE000000000000000, v11);

    *(v9 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v8, v7, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1000700C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v3, qword_1000E4560);
  v11[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(32);
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x7463656E6E6F4320;
  v5._object = 0xEC000000206E6F69;
  String.append(_:)(v5);
  swift_getObjectType();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v6._object = 0x80000001000A21A0;
  v6._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v6);
  v7 = static os_log_type_t.default.getter();

  v8 = Logger.logObject.getter();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v11[0] = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_1000847A8(0, 0xE000000000000000, v11);
    *(v9 + 12) = 2082;
    v10 = sub_1000847A8(0, 0xE000000000000000, v11);

    *(v9 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v8, v7, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10007031C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000703FC(uint64_t a1)
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

unint64_t sub_1000704B8()
{
  result = qword_1000D4140;
  if (!qword_1000D4140)
  {
    sub_100012BAC(255, &qword_1000D4148, OS_dispatch_queue_serial_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4140);
  }

  return result;
}

unint64_t sub_100070520()
{
  result = qword_1000D4150;
  if (!qword_1000D4150)
  {
    type metadata accessor for OS_dispatch_queue_serial.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4150);
  }

  return result;
}

unint64_t sub_100070578()
{
  result = qword_1000D4160;
  if (!qword_1000D4160)
  {
    sub_10001CEC4(&qword_1000D4158, qword_100098740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4160);
  }

  return result;
}

uint64_t sub_1000705F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100070608()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100070698()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100070744()
{
}

void sub_100070774(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

_BYTE *storeEnumTagSinglePayload for StoreKitAngelServiceName(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100070830);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100070878(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000711FC(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000708F0(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000024;
  }

  else
  {
    v3 = 0x74694B65726F7453;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x800000010009D3E0;
  }

  if (a2)
  {
    v5 = 0xD000000000000024;
  }

  else
  {
    v5 = 0x74694B65726F7453;
  }

  if (a2)
  {
    v6 = 0x800000010009D3E0;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000711FC(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_100070988(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x65646F6378;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x65646F6378;
  switch(v4)
  {
    case 1:
      v5 = 0x67696C6674736574;
      v3 = 0xEA00000000007468;
      break;
    case 2:
      v5 = 0x69746375646F7270;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x786F62646E6173;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x67696C6674736574;
      v6 = 0xEA00000000007468;
      break;
    case 2:
      v2 = 0x69746375646F7270;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x786F62646E6173;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000711FC(v5, a2, v2);
  }

  return v8 & 1;
}

Swift::Int sub_100070AFC(uint64_t a1)
{
  v1 = a1;
  sub_10007123C(a1);
  sub_100070D64(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100070B3C(Swift::UInt a1)
{
  sub_10007123C(a1);
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100070B7C(uint64_t a1)
{
  v1 = sub_10007123C(a1);
  sub_1000711D0(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100070BBC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100070C18(uint64_t a1)
{
  v1 = a1;
  sub_10007123C(a1);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100070C58(uint64_t a1)
{
  v1 = sub_10007123C(a1);
  sub_100071218(v1);
  return Hasher._finalize()();
}

uint64_t sub_100070C94(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100070D64(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int sub_100070E54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100070EA8(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  sub_100070D64(v4, a2);
  return Hasher._finalize()();
}

Swift::Int sub_100070EEC(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_100070F30()
{
  v0 = Hasher.init(_seed:)();
  sub_100071218(v0);
  return Hasher._finalize()();
}

Swift::Int sub_100070F70()
{
  v0 = Hasher.init(_seed:)();
  sub_1000711D0(v0);
  return Hasher._finalize()();
}

Swift::Int sub_100070FA8(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_100070FEC(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

BOOL sub_1000710A8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000BE830, v2);

  return v3 != 0;
}

BOOL sub_1000710FC@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000710A8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100071130@<X0>(void *a1@<X8>)
{
  result = sub_10007108C();
  *a1 = 0xD000000000000039;
  a1[1] = v3;
  return result;
}

unint64_t sub_100071164()
{
  result = qword_1000D43D0;
  if (!qword_1000D43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D43D0);
  }

  return result;
}

uint64_t sub_1000711D0(uint64_t a1, ...)
{

  return String.hash(into:)();
}

uint64_t sub_1000711FC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100071218(uint64_t a2, ...)
{

  return String.hash(into:)();
}

void *sub_10007123C(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

BOOL sub_100071254()
{
  if ([v0 isProfileValidated])
  {
    return 0;
  }

  else
  {
    if (!sub_100009894())
    {
      return 1;
    }

    if (qword_1000D1B00 != -1)
    {
      swift_once();
    }

    return byte_1000E457A != 1 || !sub_100071AA4(4);
  }
}

id sub_1000712E4()
{
  result = [objc_opt_self() deviceIsiPad];
  if (result)
  {
    objc_opt_self();
    result = 1;
    if (swift_dynamicCastObjCClass())
    {
      v2 = v0;
      v3 = sub_100071E84();

      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100071470@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = [v2 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:isDirectory:)();
  v37 = *(v9 + 8);
  v37(v12, v8);
  sub_100012BAC(0, &qword_1000D1D68, NSDictionary_ptr);
  (*(v9 + 16))(v12, v14, v8);
  v16 = sub_100071A08(v12);
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  *&v39 = 0xD000000000000026;
  *(&v39 + 1) = 0x80000001000A2330;
  v18 = [v16 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41[0] = v39;
  v41[1] = v40;
  if (*(&v40 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_12;
    }

    URL.init(string:)();

    if (sub_100012898(v7, 1, v8) != 1)
    {
      v37(v14, v8);
      v33 = v38;
      (*(v9 + 32))(v38, v7, v8);
      v32 = 0;
      return sub_10001267C(v33, v32, 1, v8);
    }

    v19 = &qword_1000D1D58;
    v20 = &unk_1000954C0;
    v21 = v7;
  }

  else
  {

    v19 = &qword_1000D1D60;
    v20 = &qword_100093620;
    v21 = v41;
  }

  sub_100012CB4(v21, v19, v20);
LABEL_12:
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v22 = sub_1000128C0(v3, qword_1000E4560);
  v23 = v36;
  sub_100012C50(v22, v36);
  *&v41[0] = 0;
  *(&v41[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v24._countAndFlagsBits = 0xD00000000000003BLL;
  v24._object = 0x80000001000A22F0;
  String.append(_:)(v24);
  *&v39 = sub_100071F5C(v2);
  *(&v39 + 1) = v25;
  sub_100012634(&unk_1000D3A40, &qword_100094E90);
  v26._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v26);

  v27 = v41[0];
  v28 = static os_log_type_t.error.getter();
  v29 = Logger.logObject.getter();
  if (os_log_type_enabled(v29, v28))
  {
    v30 = swift_slowAlloc();
    *&v41[0] = swift_slowAlloc();
    *v30 = 136446466;
    *(v30 + 4) = sub_1000847A8(0, 0xE000000000000000, v41);
    *(v30 + 12) = 2082;
    v31 = sub_1000847A8(v27, *(&v27 + 1), v41);

    *(v30 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s%{public}s", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1000498A0(v23);
  v37(v14, v8);
  v32 = 1;
  v33 = v38;
  return sub_10001267C(v33, v32, 1, v8);
}

id sub_100071A08(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithContentsOfURL:v4];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

BOOL sub_100071AA4(uint64_t a1)
{
  v1 = a1;
  sub_100071BC4(9, &v6);
  if (!v7)
  {
    sub_100012CB4(&v6, &qword_1000D1D60, &qword_100093620);
    return 0;
  }

  sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  *&v6 = sub_1000816B4(v1);
  *(&v6 + 1) = v2;
  __chkstk_darwin(v6);
  v5[2] = &v6;
  v3 = sub_100081510(sub_100072004, v5, v5[5]);

  return v3;
}

double sub_100071BC4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  v5 = [v2 entitlements];
  sub_100081800(v3);
  v6 = String._bridgeToObjectiveC()();

  sub_100012BAC(0, &qword_1000D43D8, NSObject_ptr);
  v7 = [v5 objectForKey:v6 ofClass:swift_getObjCClassFromMetadata()];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_100071D30(uint64_t a1)
{
  sub_100071BC4(a1, &v12);
  if (v13)
  {
    result = sub_100072024(v1, v2, v3, &type metadata for Bool, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10), v12);
    if (result)
    {
      return v11;
    }
  }

  else
  {
    sub_100012CB4(&v12, &qword_1000D1D60, &qword_100093620);
    return 0;
  }

  return result;
}

uint64_t sub_100071DCC()
{
  sub_100071BC4(10, &v11);
  if (v12)
  {
    if (sub_100072024(v0, v1, v2, &type metadata for Bool, v3, v4, v5, v6, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9), v11) && (v10 & 1) != 0)
    {
      return 1;
    }
  }

  else
  {
    sub_100012CB4(&v11, &qword_1000D1D60, &qword_100093620);
  }

  result = sub_100009894();
  if (result)
  {
    if (qword_1000D1AF8 != -1)
    {
      swift_once();
    }

    return byte_1000E4579;
  }

  return result;
}

uint64_t sub_100071E84()
{
  v1 = [v0 deviceFamilies];
  sub_100012BAC(0, &qword_1000D1D78, NSNumber_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [objc_allocWithZone(NSNumber) initWithInteger:2];
  v8 = v3;
  v7[2] = &v8;
  sub_1000815C0(sub_100071FE4, v7, v2);
  v5 = v4;

  return v5 & 1;
}

uint64_t sub_100071F5C(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100072024(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8)
{

  return swift_dynamicCast();
}

uint64_t sub_100072044@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v24 = a4;
  v25 = a1;
  v26 = a3;
  v22 = *(a2 - 8);
  v23 = a2;
  v7 = __chkstk_darwin(a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v7);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19);
  v20 = 1;
  if (sub_100012898(v17, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v17, v11);
    v25(v15, v9);
    (*(v12 + 8))(v15, v11);
    if (v5)
    {
      return (*(v22 + 32))(v24, v9, v23);
    }

    v20 = 0;
  }

  return sub_10001267C(a5, v20, 1, v26);
}

uint64_t sub_1000722B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727245707061 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F727245637078 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69646F636E65 && a2 == 0xED0000726F727245;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x676E69646F636564 && a2 == 0xED0000726F727245)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_100072418(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_10007243C(char a1)
{
  result = 0x726F727245707061;
  switch(a1)
  {
    case 1:
      result = 0x726F727245637078;
      break;
    case 2:
      result = 0x676E69646F636E65;
      break;
    case 3:
      result = 0x676E69646F636564;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000724FC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100072418(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100072528@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100072434(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10007255C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000722B8(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1000725A4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100072418(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000725CC(uint64_t a1)
{
  v2 = sub_1000761E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100072608(uint64_t a1)
{
  v2 = sub_1000761E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100072644(void *a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v74 = type metadata accessor for DecodingError();
  sub_100014A8C();
  v73 = v5;
  __chkstk_darwin(v6);
  sub_10002FC4C();
  v65 = v7 - v8;
  __chkstk_darwin(v9);
  sub_1000794CC(v62 - v10);
  v71 = type metadata accessor for EncodingError();
  sub_100014A8C();
  v70 = v11;
  __chkstk_darwin(v12);
  sub_10002FC4C();
  v64 = v13 - v14;
  __chkstk_darwin(v15);
  sub_1000794CC(v62 - v16);
  v63 = *(a2 + 24);
  v69 = type metadata accessor for Optional();
  sub_100014A8C();
  v67 = v17;
  __chkstk_darwin(v18);
  sub_1000794CC(v62 - v19);
  v20 = *(a2 + 16);
  sub_10001F2A0();
  v62[1] = v21;
  __chkstk_darwin(v22);
  sub_10002FC5C();
  v25 = v24 - v23;
  sub_10001F2A0();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_10002FC5C();
  v31 = v30 - v29;
  sub_100012634(&qword_1000D43E0, &qword_100098908);
  sub_100014A8C();
  v78 = v33;
  v79 = v32;
  __chkstk_darwin(v32);
  v35 = v62 - v34;
  v36 = a1[3];
  sub_100012980(a1, v36);
  sub_1000761E8();
  v77 = v35;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v27 + 16))(v31, v76, a2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v54 = v67;
      v55 = v66;
      v56 = v31;
      v57 = v69;
      v58 = (*(v67 + 32))(v66, v56, v69);
      __chkstk_darwin(v58);
      v62[-6] = v20;
      v59 = v75;
      v62[-5] = v63;
      v62[-4] = v59;
      *&v62[-3] = *(a2 + 32);
      sub_100072044(sub_1000762C0, &type metadata for Never, &type metadata for CodableNSError, v60, v81);
      *&v80[0] = *&v81[0];
      v82 = 1;
      sub_100012634(&qword_1000D43F8, &qword_100098910);
      sub_1000762E8();
      v38 = v79;
      v61 = v77;
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      (*(v54 + 8))(v55, v57);
      v40 = *(v78 + 8);
      v41 = v61;
      goto LABEL_7;
    case 2u:
      sub_1000794A8();
      v42 = v68;
      v43 = v71;
      v44(v68, v31, v71);
      v45 = sub_1000794B8();
      v46(v45);
      sub_100072E70(v25, v81);
      v47 = 2;
      goto LABEL_5;
    case 3u:
      sub_1000794A8();
      v42 = v72;
      v43 = v74;
      v48(v72, v31, v74);
      v49 = sub_1000794B8();
      v50(v49);
      sub_10007338C(v25, v81);
      v47 = 3;
LABEL_5:
      v82 = v47;
      sub_10007623C();
      v51 = v79;
      v52 = v77;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v80[0] = v81[0];
      v80[1] = v81[1];
      v80[2] = v81[2];
      v80[3] = v81[3];
      sub_100076290(v80);
      (*(v36 + 8))(v42, v43);
      result = (*(v78 + 8))(v52, v51);
      break;
    default:
      sub_1000794A8();
      v37(v25, v31, v20);
      LOBYTE(v81[0]) = 0;
      v38 = v79;
      v39 = v77;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v36 + 8))(v25, v20);
      v40 = *(v78 + 8);
      v41 = v39;
LABEL_7:
      result = v40(v41, v38);
      break;
  }

  return result;
}

uint64_t sub_100072D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = _getErrorEmbeddedNSError<A>(_:)();
  if (v9)
  {
    v10 = v9;
    result = (*(v6 + 8))(v8, a2);
  }

  else
  {
    v10 = swift_allocError();
    result = (*(v6 + 32))(v12, v8, a2);
  }

  *a4 = v10;
  return result;
}

double sub_100072E70@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for EncodingError.Context();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EncodingError();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = *(v8 + 16);
  v14(&v43 - v12, a1, v7);
  if ((*(v8 + 88))(v13, v7) == enum case for EncodingError.invalidValue(_:))
  {
    v49 = a1;
    (*(v8 + 96))(v13, v7);
    v15 = *(sub_100012634(&qword_1000D4410, &qword_100098918) + 48);
    sub_100012AD4(v13, &v52);
    v47 = v4;
    v16 = *(v4 + 32);
    v48 = v3;
    v16(v6, &v13[v15], v3);
    sub_100012908(&v52, v56);
    v45 = String.init<A>(describing:)();
    v46 = v17;
    v18 = EncodingError.Context.codingPath.getter();
    v19 = *(v18 + 16);
    if (v19)
    {
      v44 = v6;
      v51 = _swiftEmptyArrayStorage;
      sub_100077764(0, v19, 0);
      v20 = v51;
      v43 = v18;
      v21 = v18 + 32;
      do
      {
        sub_100077784(v21, v56);
        sub_100012980(v56, v59);
        v22 = dispatch thunk of CodingKey.stringValue.getter();
        v24 = v23;
        sub_100012A18(v56);
        v51 = v20;
        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          sub_100077764((v25 > 1), v26 + 1, 1);
          v20 = v51;
        }

        v20[2] = v26 + 1;
        v27 = &v20[2 * v26];
        v27[4] = v22;
        v27[5] = v24;
        v21 += 40;
        --v19;
      }

      while (v19);

      v37 = v50;
      v6 = v44;
    }

    else
    {

      v20 = _swiftEmptyArrayStorage;
      v37 = v50;
    }

    v28 = EncodingError.Context.debugDescription.getter();
    v30 = v38;
    if (EncodingError.Context.underlyingError.getter())
    {
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v32 = v39;
    }

    else
    {
      v33 = 0;
      v32 = 0;
    }

    (*(v8 + 8))(v49, v7);
    (*(v47 + 8))(v6, v48);
    sub_100012A18(&v52);
    v36 = 0;
    v34 = v46;
    v35 = v45;
  }

  else
  {
    v14(v11, a1, v7);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v31 = *(v8 + 8);
    v31(a1, v7);
    v31(v13, v7);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 2;
    v20 = _swiftEmptyArrayStorage;
    v37 = v50;
  }

  *&v52 = v35;
  *(&v52 + 1) = v34;
  LOBYTE(v53) = v36;
  *(&v53 + 1) = *v64;
  DWORD1(v53) = *&v64[3];
  *(&v53 + 1) = v20;
  *&v54 = v28;
  *(&v54 + 1) = v30;
  *&v55 = v33;
  *(&v55 + 1) = v32;
  v56[0] = v35;
  v56[1] = v34;
  v57 = v36;
  *v58 = *v64;
  *&v58[3] = *&v64[3];
  v59 = v20;
  v60 = v28;
  v61 = v30;
  v62 = v33;
  v63 = v32;
  sub_1000763C0(&v52, &v51);
  sub_100076290(v56);
  v40 = v53;
  *v37 = v52;
  v37[1] = v40;
  result = *&v54;
  v42 = v55;
  v37[2] = v54;
  v37[3] = v42;
  return result;
}

double sub_10007338C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for DecodingError();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v51 - v8);
  v10 = type metadata accessor for DecodingError.Context();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 16);
  v59 = a1;
  v14(v9, a1, v3);
  v15 = (*(v4 + 88))(v9, v3);
  v58 = v3;
  v57 = v4;
  if (v15 == enum case for DecodingError.typeMismatch(_:))
  {
    (*(v4 + 96))(v9, v3);
    v16 = sub_100012634(qword_1000D2A78, &qword_1000959C0);
    (*(v11 + 32))(v13, v9 + *(v16 + 48), v10);
    v54 = 0;
    v53 = 2;
    v17 = 2;
  }

  else if (v15 == enum case for DecodingError.valueNotFound(_:))
  {
    (*(v4 + 96))(v9, v3);
    v18 = sub_100012634(qword_1000D2A78, &qword_1000959C0);
    (*(v11 + 32))(v13, v9 + *(v18 + 48), v10);
    v54 = 0;
    v53 = 2;
    v17 = 3;
  }

  else
  {
    if (v15 == enum case for DecodingError.keyNotFound(_:))
    {
      (*(v4 + 96))(v9, v3);
      v44 = *(sub_100012634(&qword_1000D4418, &unk_100098928) + 48);
      sub_10002F650(v9, v66);
      (*(v11 + 32))(v13, v9 + v44, v10);
      sub_100012980(v66, v69);
      v52 = dispatch thunk of CodingKey.stringValue.getter();
      v54 = v45;
      sub_100012A18(v66);
      v17 = 1;
      v19 = v70;
      goto LABEL_6;
    }

    if (v15 != enum case for DecodingError.dataCorrupted(_:))
    {
      v46 = v59;
      v14(v7, v59, v3);
      v47 = v3;
      v32 = String.init<A>(describing:)();
      v48 = v4;
      v34 = v49;
      v50 = *(v48 + 8);
      v50(v46, v47);
      v50(v9, v47);
      v37 = 0;
      v35 = 0;
      v38 = 0;
      v39 = 2;
      v22 = _swiftEmptyArrayStorage;
      v40 = 4;
      v30 = v60;
      goto LABEL_17;
    }

    (*(v4 + 96))(v9, v3);
    (*(v11 + 32))(v13, v9, v10);
    v54 = 0;
    v53 = 2;
    v17 = 1;
  }

  v19 = &v69;
LABEL_6:
  *(v19 - 32) = v17;
  v55 = v11;
  v56 = v10;
  v20 = DecodingError.Context.codingPath.getter();
  v21 = *(v20 + 16);
  if (v21)
  {
    *&v62 = _swiftEmptyArrayStorage;
    sub_100077764(0, v21, 0);
    v22 = v62;
    v23 = v20 + 32;
    do
    {
      sub_100077784(v23, v66);
      sub_100012980(v66, v69);
      v24 = dispatch thunk of CodingKey.stringValue.getter();
      v26 = v25;
      sub_100012A18(v66);
      *&v62 = v22;
      v28 = v22[2];
      v27 = v22[3];
      if (v28 >= v27 >> 1)
      {
        sub_100077764((v27 > 1), v28 + 1, 1);
        v22 = v62;
      }

      v22[2] = v28 + 1;
      v29 = &v22[2 * v28];
      v29[4] = v24;
      v29[5] = v26;
      v23 += 40;
      --v21;
    }

    while (v21);

    v30 = v60;
    v31 = v59;
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
    v31 = v59;
    v30 = v60;
  }

  v32 = DecodingError.Context.debugDescription.getter();
  v34 = v33;
  if (DecodingError.Context.underlyingError.getter())
  {
    swift_getErrorValue();
    v35 = Error.localizedDescription.getter();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  (*(v57 + 8))(v31, v58);
  (*(v55 + 8))(v13, v56);
  v38 = v54;
  v39 = v53;
  v40 = v52;
LABEL_17:
  *&v62 = v40;
  *(&v62 + 1) = v38;
  LOBYTE(v63) = v39;
  *(&v63 + 1) = *v71;
  DWORD1(v63) = *&v71[3];
  *(&v63 + 1) = v22;
  *&v64 = v32;
  *(&v64 + 1) = v34;
  *&v65 = v35;
  *(&v65 + 1) = v37;
  v66[0] = v40;
  v66[1] = v38;
  v67 = v39;
  *v68 = *v71;
  *&v68[3] = *&v71[3];
  v69 = v22;
  v70[0] = v32;
  v70[1] = v34;
  v70[2] = v35;
  v70[3] = v37;
  sub_1000763C0(&v62, v61);
  sub_100076290(v66);
  v41 = v63;
  *v30 = v62;
  v30[1] = v41;
  result = *&v64;
  v43 = v65;
  v30[2] = v64;
  v30[3] = v43;
  return result;
}

uint64_t sub_100073A60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v74 = a4;
  v75 = a7;
  sub_10001F2A0();
  v68 = v12;
  __chkstk_darwin(v13);
  sub_10002FC5C();
  sub_1000794CC(v15 - v14);
  v16 = sub_100012634(&qword_1000D4420, &qword_100098938);
  sub_100014A8C();
  v76 = v17;
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  v78 = a2;
  v72 = a3;
  v79 = a3;
  v69 = a5;
  v80 = a5;
  v70 = a6;
  v81 = a6;
  v21 = type metadata accessor for SwiftXPCError(0, &v78);
  sub_100014A8C();
  v73 = v22;
  __chkstk_darwin(v23);
  sub_10002FC4C();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  v29 = (&v65 - v28);
  v30 = a1[3];
  v87 = a1;
  sub_100012980(a1, v30);
  sub_1000761E8();
  v31 = v77;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    v32 = v87;
    return sub_100012A18(v32);
  }

  v66 = v26;
  v77 = a2;
  v67 = v29;
  v33 = v75;
  v34 = KeyedDecodingContainer.allKeys.getter();
  v35 = v16;
  if (!*(v34 + 16))
  {

    v32 = v87;
    goto LABEL_8;
  }

  v36 = *(v34 + 32);

  v37 = *(KeyedDecodingContainer.allKeys.getter() + 16);

  v32 = v87;
  if (v37 != 1)
  {
LABEL_8:
    v47 = type metadata accessor for DecodingError();
    swift_allocError();
    v49 = v48;
    sub_100012980(v32, v32[3]);
    dispatch thunk of Decoder.codingPath.getter();
    v78 = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v50._object = 0x80000001000A2360;
    v50._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v50);
    v51 = *(KeyedDecodingContainer.allKeys.getter() + 16);

    v84 = v51;
    v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v52);

    v53._countAndFlagsBits = 0x2E7379656B20;
    v53._object = 0xE600000000000000;
    String.append(_:)(v53);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v47 - 8) + 104))(v49, enum case for DecodingError.dataCorrupted(_:), v47);
    swift_willThrow();
    (*(v76 + 8))(v20, v35);
    return sub_100012A18(v32);
  }

  v38 = v33;
  switch(v36)
  {
    case 1:
      LOBYTE(v84) = 1;
      sub_10007797C();
      sub_100079480();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v57 = sub_100079498();
      v58(v57);
      sub_100012634(&qword_1000D43F8, &qword_100098910);
      v59 = v66;
      v60 = v72;
      v61 = swift_dynamicCast();
      sub_10001267C(v59, v61 ^ 1u, 1, v60);
      v45 = v21;
      swift_storeEnumTagMultiPayload();
      v46 = v73;
      v44 = v67;
      (*(v73 + 32))(v67, v59, v45);
      break;
    case 2:
      LOBYTE(v84) = 2;
      sub_100077928();
      sub_100079480();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v86[0] = sub_1000794D8();
      v86[1] = v55;
      v86[2] = v82;
      v86[3] = v83;
      v56 = v86;
      goto LABEL_13;
    case 3:
      LOBYTE(v84) = 3;
      sub_100077928();
      sub_100079480();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v85[0] = sub_1000794D8();
      v85[1] = v62;
      v85[2] = v82;
      v85[3] = v83;
      v56 = v85;
LABEL_13:
      v44 = v67;
      sub_1000741AC(v56, v77, v72, v69, v70, v67);
      v63 = sub_100079498();
      v64(v63);
      v45 = v21;
      v46 = v73;
      break;
    default:
      LOBYTE(v78) = 0;
      v39 = v71;
      v40 = v77;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v41 = sub_100079498();
      v42(v41);
      v43 = v39;
      v44 = v67;
      (*(v68 + 32))(v67, v43, v40);
      v45 = v21;
      swift_storeEnumTagMultiPayload();
      v46 = v73;
      break;
  }

  (*(v46 + 32))(v38, v44, v45);
  return sub_100012A18(v32);
}

uint64_t sub_1000741AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  sub_1000741F4(a2, a3, a4, a5, a6);

  return sub_100076290(a1);
}

uint64_t sub_1000741F4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v12 = *v5;
  v11 = *(v5 + 8);
  if (*(v5 + 16))
  {
    if (*(v5 + 16) != 1)
    {
      switch(v12)
      {
        case 1:
        case 4:
          sub_100076890(&DecodingError.Context.init(codingPath:debugDescription:underlyingError:));
          v13 = &enum case for DecodingError.dataCorrupted(_:);
          goto LABEL_11;
        case 2:
          sub_100012634(qword_1000D2A78, &qword_1000959C0);
          *a5 = &type metadata for CodableCodingError.RemoteDecodableType;
          sub_100076890(&DecodingError.Context.init(codingPath:debugDescription:underlyingError:));
          v13 = &enum case for DecodingError.typeMismatch(_:);
          goto LABEL_11;
        case 3:
          sub_100012634(qword_1000D2A78, &qword_1000959C0);
          *a5 = &type metadata for CodableCodingError.RemoteDecodableType;
          sub_100076890(&DecodingError.Context.init(codingPath:debugDescription:underlyingError:));
          v13 = &enum case for DecodingError.valueNotFound(_:);
          goto LABEL_11;
        default:
          sub_100012634(&qword_1000D4410, &qword_100098918);
          a5[3] = sub_100012634(&qword_1000D1D60, &qword_100093620);
          v16 = swift_allocObject();
          *a5 = v16;
          *(v16 + 16) = 0u;
          *(v16 + 32) = 0u;
          goto LABEL_5;
      }
    }

    sub_100012634(&qword_1000D4418, &unk_100098928);
    a5[3] = &type metadata for CodableCodingError.RemoteCodingKey;
    a5[4] = sub_1000779D0();
    *a5 = v12;
    a5[1] = v11;

    sub_100076890(&DecodingError.Context.init(codingPath:debugDescription:underlyingError:));
    v13 = &enum case for DecodingError.keyNotFound(_:);
LABEL_11:
    v17 = *v13;
    v18 = type metadata accessor for DecodingError();
    (*(*(v18 - 8) + 104))(a5, v17, v18);
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = a4;
    type metadata accessor for SwiftXPCError(0, &v20);
  }

  else
  {
    sub_100012634(&qword_1000D4410, &qword_100098918);
    a5[3] = &type metadata for CodableCodingError.RemoteEncodableValue;
    *a5 = v12;
    a5[1] = v11;

LABEL_5:
    sub_100076890(&EncodingError.Context.init(codingPath:debugDescription:underlyingError:));
    v14 = enum case for EncodingError.invalidValue(_:);
    v15 = type metadata accessor for EncodingError();
    (*(*(v15 - 8) + 104))(a5, v14, v15);
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = a4;
    type metadata accessor for SwiftXPCError(0, &v20);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100074564(void *a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = _convertErrorToNSError(_:)();
  v17[0] = 0;
  v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:v17];

  v6 = v17[0];
  if (v5)
  {
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_100012980(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    sub_100077BF0(v17, v17[3]);
    sub_100019008(v7, v9);
    sub_10001E308();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_100018DF0(v7, v9);
    sub_100018DF0(v7, v9);
    return sub_100012A18(v17);
  }

  else
  {
    v11 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for EncodingError();
    swift_allocError();
    v14 = v13;
    sub_100012634(&qword_1000D4410, &qword_100098918);
    swift_getErrorValue();
    v14[3] = v16;
    v15 = sub_100012AE4(v14);
    (*(*(v16 - 8) + 16))(v15);
    sub_100012980(a1, a1[3]);
    dispatch thunk of Encoder.codingPath.getter();
    swift_errorRetain();
    EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v12 - 8) + 104))(v14, enum case for EncodingError.invalidValue(_:), v12);
    swift_willThrow();
  }
}

void *sub_100074844(void *a1)
{
  v3 = sub_100012980(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100012980(v12, v12[3]);
    sub_10001E244();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    sub_100012BAC(0, qword_1000D4450, NSKeyedUnarchiver_ptr);
    v4 = sub_100012BAC(0, &qword_1000D2688, NSError_ptr);
    v5 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v3 = v5;
    if (v5)
    {
      sub_100018DF0(v10, v11);
      sub_100012A18(v12);
      sub_100012A18(a1);
      return v3;
    }

    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    sub_100012634(qword_1000D2A78, &qword_1000959C0);
    v13 = v10;
    *v9 = v4;
    v3 = sub_100012980(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.typeMismatch(_:), v7);
    swift_willThrow();
    sub_100018DF0(v13, v11);
    sub_100012A18(v12);
  }

  sub_100012A18(a1);
  return v3;
}

uint64_t sub_100074B74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001000A2420 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E69646F636E65 && a2 == 0xEF6E776F6E6B6E55;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001000A2440 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001000A2460 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001000A2480 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001000A24A0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x676E69646F636564 && a2 == 0xEF6E776F6E6B6E55)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100074DBC(char a1)
{
  result = 0x676E69646F636E65;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 4:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x676E69646F636564;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_100074EA8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v52 = a4;
  v51 = a3;
  v53 = a2;
  v5 = sub_100012634(&qword_1000D4550, &qword_100098FD8);
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v34 - v6;
  v7 = sub_100012634(&qword_1000D4558, &qword_100098FE0);
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v48 = &v34 - v8;
  v9 = sub_100012634(&qword_1000D4560, &qword_100098FE8);
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v42 = &v34 - v10;
  v11 = sub_100012634(&qword_1000D4568, &qword_100098FF0);
  v40 = *(v11 - 8);
  v41 = v11;
  __chkstk_darwin(v11);
  v39 = &v34 - v12;
  v13 = sub_100012634(&qword_1000D4570, &qword_100098FF8);
  v37 = *(v13 - 8);
  v38 = v13;
  __chkstk_darwin(v13);
  v36 = &v34 - v14;
  v15 = sub_100012634(&qword_1000D4578, &qword_100099000);
  v35 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = sub_100012634(&qword_1000D4580, &qword_100099008);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v34 - v20;
  v22 = sub_100012634(&qword_1000D4588, &qword_100099010);
  v54 = *(v22 - 8);
  v55 = v22;
  __chkstk_darwin(v22);
  v24 = &v34 - v23;
  sub_100012980(a1, a1[3]);
  sub_100078878();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v52)
  {
    if (v52 == 1)
    {
      v61 = 5;
      sub_100078920();
      v25 = v48;
      v26 = v55;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v27 = v50;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v49 + 8))(v25, v27);
      return (*(v54 + 8))(v24, v26);
    }

    else
    {
      switch(v53)
      {
        case 1:
          v58 = 2;
          sub_100078A1C();
          v31 = v36;
          v30 = v55;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v33 = v37;
          v32 = v38;
          goto LABEL_12;
        case 2:
          v59 = 3;
          sub_1000789C8();
          v31 = v39;
          v30 = v55;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v33 = v40;
          v32 = v41;
          goto LABEL_12;
        case 3:
          v60 = 4;
          sub_100078974();
          v31 = v42;
          v30 = v55;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v33 = v43;
          v32 = v44;
          goto LABEL_12;
        case 4:
          v62 = 6;
          sub_1000788CC();
          v31 = v45;
          v30 = v55;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v33 = v46;
          v32 = v47;
LABEL_12:
          (*(v33 + 8))(v31, v32);
          break;
        default:
          v57 = 1;
          sub_100078A70();
          v30 = v55;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v35 + 8))(v17, v15);
          break;
      }

      return (*(v54 + 8))(v24, v30);
    }
  }

  else
  {
    v56 = 0;
    sub_100078AC4();
    v29 = v55;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v19 + 8))(v21, v18);
    return (*(v54 + 8))(v24, v29);
  }
}

uint64_t sub_10007560C(void *a1)
{
  v2 = sub_100012634(&qword_1000D45D0, &qword_100099018);
  v3 = *(v2 - 8);
  v70 = v2;
  v71 = v3;
  __chkstk_darwin(v2);
  v78 = &v54 - v4;
  v67 = sub_100012634(&qword_1000D45D8, &qword_100099020);
  v72 = *(v67 - 8);
  __chkstk_darwin(v67);
  v74 = &v54 - v5;
  v6 = sub_100012634(&qword_1000D45E0, &qword_100099028);
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v77 = &v54 - v7;
  v8 = sub_100012634(&qword_1000D45E8, &qword_100099030);
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin(v8);
  v76 = &v54 - v9;
  v10 = sub_100012634(&qword_1000D45F0, &qword_100099038);
  v63 = *(v10 - 8);
  v64 = v10;
  __chkstk_darwin(v10);
  v73 = &v54 - v11;
  v12 = sub_100012634(&qword_1000D45F8, &qword_100099040);
  v61 = *(v12 - 8);
  v62 = v12;
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = sub_100012634(&qword_1000D4600, &qword_100099048);
  v75 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v18 = sub_100012634(&qword_1000D4608, &unk_100099050);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  v22 = a1[3];
  v79 = a1;
  v23 = sub_100012980(a1, v22);
  sub_100078878();
  v24 = v80;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    goto LABEL_10;
  }

  v59 = v14;
  v60 = v17;
  v58 = v15;
  v26 = v76;
  v25 = v77;
  v27 = v78;
  v80 = v19;
  v28 = KeyedDecodingContainer.allKeys.getter();
  sub_10004E288(v28, 0);
  if (v30 == v31 >> 1)
  {
LABEL_9:
    v42 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    sub_100012634(qword_1000D2A78, &qword_1000959C0);
    *v44 = &type metadata for CodableCodingError.Code;
    v23 = v21;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v42 - 8) + 104))(v44, enum case for DecodingError.typeMismatch(_:), v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v80 + 8))(v21, v18);
LABEL_10:
    v45 = v79;
    goto LABEL_11;
  }

  v56 = 0;
  if (v30 >= (v31 >> 1))
  {
    __break(1u);
    JUMPOUT(0x1000761A0);
  }

  v32 = v18;
  v55 = *(v29 + v30);
  v33 = sub_10004E284(v30 + 1);
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  v57 = v33;
  v38 = v75;
  if (v35 != v37 >> 1)
  {
    v18 = v32;
    goto LABEL_9;
  }

  v39 = v32;
  v40 = v56;
  switch(v55)
  {
    case 1:
      v82 = 1;
      sub_100078A70();
      v48 = v59;
      v23 = v21;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v79;
      if (v40)
      {
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      (*(v61 + 8))(v48, v62);
      (*(v80 + 8))(v21, v39);
      v23 = 0;
      break;
    case 2:
      v83 = 2;
      sub_100078A1C();
      v47 = v73;
      v23 = v21;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v79;
      if (v40)
      {
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      (*(v63 + 8))(v47, v64);
      (*(v80 + 8))(v21, v39);
      v23 = 1;
      break;
    case 3:
      v84 = 3;
      sub_1000789C8();
      v23 = v21;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v79;
      if (v40)
      {
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      (*(v65 + 8))(v26, v66);
      (*(v80 + 8))(v21, v39);
      v23 = 2;
      break;
    case 4:
      v85 = 4;
      sub_100078974();
      v23 = v21;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v79;
      if (v40)
      {
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      (*(v68 + 8))(v25, v69);
      (*(v80 + 8))(v21, v39);
      v23 = 3;
      break;
    case 5:
      v86 = 5;
      sub_100078920();
      v49 = v74;
      v23 = v21;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v79;
      if (v40)
      {
        goto LABEL_23;
      }

      v50 = v67;
      v51 = KeyedDecodingContainer.decode(_:forKey:)();
      v52 = v80;
      v23 = v51;
      swift_unknownObjectRelease();
      (*(v72 + 8))(v49, v50);
      (*(v52 + 8))(v21, v39);
      break;
    case 6:
      v87 = 6;
      sub_1000788CC();
      v23 = v21;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v79;
      if (v40)
      {
LABEL_23:
        (*(v80 + 8))(v21, v39);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        (*(v71 + 8))(v27, v70);
        (*(v80 + 8))(v21, v39);
        v23 = 4;
      }

      break;
    default:
      v81 = 0;
      sub_100078AC4();
      v41 = v60;
      v23 = v21;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v40)
      {
        (*(v80 + 8))(v21, v39);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      v53 = v58;
      v23 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_unknownObjectRelease();
      (*(v38 + 8))(v41, v53);
      (*(v80 + 8))(v21, v39);
      v45 = v79;
      break;
  }

LABEL_11:
  sub_100012A18(v45);
  return v23;
}

void *sub_1000761BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100074844(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000761E8()
{
  result = qword_1000D43E8;
  if (!qword_1000D43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D43E8);
  }

  return result;
}

unint64_t sub_10007623C()
{
  result = qword_1000D43F0;
  if (!qword_1000D43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D43F0);
  }

  return result;
}

unint64_t sub_1000762E8()
{
  result = qword_1000D4400;
  if (!qword_1000D4400)
  {
    sub_10001CEC4(&qword_1000D43F8, &qword_100098910);
    sub_10007636C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4400);
  }

  return result;
}

unint64_t sub_10007636C()
{
  result = qword_1000D4408;
  if (!qword_1000D4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4408);
  }

  return result;
}

uint64_t sub_100076400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100074B74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100076428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100074DB4();
  *a1 = result;
  return result;
}

uint64_t sub_100076450(uint64_t a1)
{
  v2 = sub_100078878();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007648C(uint64_t a1)
{
  v2 = sub_100078878();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000764C8(uint64_t a1)
{
  v2 = sub_100078A1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100076504(uint64_t a1)
{
  v2 = sub_100078A1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100076544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100030D80(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100076570(uint64_t a1)
{
  v2 = sub_100078920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000765AC(uint64_t a1)
{
  v2 = sub_100078920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000765E8(uint64_t a1)
{
  v2 = sub_1000789C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100076624(uint64_t a1)
{
  v2 = sub_1000789C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100076660(uint64_t a1)
{
  v2 = sub_1000788CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007669C(uint64_t a1)
{
  v2 = sub_1000788CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000766D8(uint64_t a1)
{
  v2 = sub_100078974();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100076714(uint64_t a1)
{
  v2 = sub_100078974();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100076750(uint64_t a1)
{
  v2 = sub_100078AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007678C(uint64_t a1)
{
  v2 = sub_100078AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000767C8(uint64_t a1)
{
  v2 = sub_100078A70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100076804(uint64_t a1)
{
  v2 = sub_100078A70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100076840@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10007560C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100076890(uint64_t (*a1)(void *, uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = v1[3];
  v4 = *(v3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_1000777E8(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (v3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v23 = v5;
      v9 = v5[2];
      v10 = v5[3];

      if (v9 >= v10 >> 1)
      {
        sub_1000777E8((v10 > 1), v9 + 1, 1);
        v5 = v23;
      }

      v21 = &type metadata for CodableCodingError.RemoteCodingKey;
      v22 = sub_1000779D0();
      *&v20 = v7;
      *(&v20 + 1) = v8;
      v5[2] = v9 + 1;
      sub_10002F650(&v20, &v5[5 * v9 + 4]);
      v6 += 2;
      --v4;
    }

    while (v4);
    v2 = a1;
    v1 = v18;
  }

  v11 = v1[7];
  if (v11)
  {
    v12 = v1[6];
    sub_100077A64();
    v13 = swift_allocError();
    *v14 = v12;
    v14[1] = v11;
  }

  else
  {
    v13 = 0;
  }

  v16 = v1[4];
  v15 = v1[5];

  return v2(v5, v16, v15, v13);
}

unint64_t sub_100076A10(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = result;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v8 = 0;
            v18 = v28 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                break;
              }

              v20 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                break;
              }

              ++v18;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v8 = 0;
          v23 = v28;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v8 = 0;
          v12 = v28 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              break;
            }

            v14 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            ++v12;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v8 = 0;
            if (result)
            {
              v15 = (result + 1);
              while (1)
              {
                v16 = *v15 - 48;
                if (v16 > 9)
                {
                  goto LABEL_61;
                }

                v17 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_61;
                }

                v8 = v17 + v16;
                if (__OFADD__(v17, v16))
                {
                  goto LABEL_61;
                }

                ++v15;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v7 != 45)
      {
        if (v4)
        {
          v8 = 0;
          if (result)
          {
            while (1)
            {
              v21 = *result - 48;
              if (v21 > 9)
              {
                goto LABEL_61;
              }

              v22 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v8 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          if (result)
          {
            v9 = (result + 1);
            while (1)
            {
              v10 = *v9 - 48;
              if (v10 > 9)
              {
                goto LABEL_61;
              }

              v11 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_61;
              }

              ++v9;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v26 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v8 = sub_10002E498(v6, a2, 10);
  v26 = v27;

LABEL_63:
  if (v26)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_100076D54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6150676E69646F63 && a2 == 0xEA00000000006874;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001000A23E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x80000001000A2400 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_100076EC0(char a1)
{
  result = 1701080931;
  switch(a1)
  {
    case 1:
      result = 0x6150676E69646F63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100076F60(void *a1)
{
  v3 = v1;
  v5 = sub_100012634(&qword_1000D4500, &unk_100098DF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100012980(a1, a1[3]);
  sub_1000784DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = *(v3 + 16);
  v11 = 0;
  sub_100078530();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v12 = *(v3 + 3);
    v11 = 1;
    sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
    sub_1000785D8(&qword_1000D4518, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100077184@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100012634(&qword_1000D4520, &qword_100098E00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_100012980(a1, a1[3]);
  sub_1000784DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100012A18(a1);
  }

  LOBYTE(v25) = 0;
  sub_100078584();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v29;
  v24 = v30;
  v37 = v31;
  sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
  LOBYTE(v25) = 1;
  sub_1000785D8(&qword_1000D4530, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v29;
  LOBYTE(v29) = 2;
  *&v22 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v22 + 1) = v10;
  v38 = 3;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v8;
  v14 = v13;
  (*(v6 + 8))(v12, v5);
  v21 = v9;
  v16 = v23;
  v15 = v24;
  *&v25 = v9;
  *(&v25 + 1) = v24;
  LOBYTE(v9) = v37;
  LOBYTE(v26) = v37;
  v17 = *(&v22 + 1);
  *(&v26 + 1) = v23;
  v27 = v22;
  *&v28 = v11;
  *(&v28 + 1) = v14;
  sub_1000763C0(&v25, &v29);
  sub_100012A18(a1);
  v29 = v21;
  v30 = v15;
  v31 = v9;
  v32 = v16;
  v33 = v22;
  v34 = v17;
  v35 = v11;
  v36 = v14;
  result = sub_100076290(&v29);
  v19 = v26;
  *a2 = v25;
  a2[1] = v19;
  v20 = v28;
  a2[2] = v27;
  a2[3] = v20;
  return result;
}

uint64_t sub_1000774F8()
{
  v1 = *v0;

  return v1;
}

void sub_100077528(void *a1@<X8>)
{
  nullsub_1();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100077570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100076D14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100077598(uint64_t a1)
{
  v2 = sub_1000779D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000775D4(uint64_t a1)
{
  v2 = sub_1000779D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100077618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100076D54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100077640(uint64_t a1)
{
  v2 = sub_1000784DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007767C(uint64_t a1)
{
  v2 = sub_1000784DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000776B8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100077184(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

char *sub_100077738(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_100077764(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100077808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100077784(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1000777E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100077AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100077808(char *result, int64_t a2, char a3, char *a4)
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
    sub_100012634(&qword_1000D1D38, &qword_100098920);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100077928()
{
  result = qword_1000D4428;
  if (!qword_1000D4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4428);
  }

  return result;
}

unint64_t sub_10007797C()
{
  result = qword_1000D4430;
  if (!qword_1000D4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4430);
  }

  return result;
}

unint64_t sub_1000779D0()
{
  result = qword_1000D4438;
  if (!qword_1000D4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4438);
  }

  return result;
}

uint64_t sub_100077A24()
{
  if (*(v0 + 40))
  {
    sub_100012A18((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100077A64()
{
  result = qword_1000D4440;
  if (!qword_1000D4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4440);
  }

  return result;
}

void *sub_100077AB8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100012634(&qword_1000D24A8, &qword_100094EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100012634(&qword_1000D4448, &qword_100098940);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100077BF0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100077C80(uint64_t a1)
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

__n128 sub_100077C9C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100077CB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100077CF0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100077D70(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for EncodingError();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for DecodingError();
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100077E14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(*(a3 + 24) - 8) + 84);
  v7 = *(*(*(a3 + 24) - 8) + 64);
  v8 = *(*(type metadata accessor for EncodingError() - 8) + 64);
  v9 = *(*(type metadata accessor for DecodingError() - 8) + 64);
  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 + 1;
  }

  if (v10 <= v5)
  {
    v10 = v5;
  }

  if (v8 > v10)
  {
    v10 = v8;
  }

  if (v9 > v10)
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_29;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 252) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_29:
      v17 = *(a1 + v10);
      if (v17 >= 4)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_29;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    switch(v11)
    {
      case 2:
        LODWORD(v11) = *a1;
        break;
      case 3:
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v11) = *a1;
        break;
      default:
        LODWORD(v11) = *a1;
        break;
    }
  }

  return (v11 | v16) + 253;
}

void sub_100078004(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(*(a4 + 24) - 8) + 84);
  v9 = *(*(*(a4 + 24) - 8) + 64);
  v10 = *(*(type metadata accessor for EncodingError() - 8) + 64);
  v11 = *(*(type metadata accessor for DecodingError() - 8) + 64);
  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = v9 + 1;
  }

  if (v12 <= v7)
  {
    v12 = v7;
  }

  if (v10 > v12)
  {
    v12 = v10;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  v13 = v11 + 1;
  v14 = 8 * (v11 + 1);
  if (a3 < 0xFD)
  {
    v15 = 0;
  }

  else if (v13 <= 3)
  {
    v18 = ((a3 + ~(-1 << v14) - 252) >> v14) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFC)
  {
    v16 = a2 - 253;
    if (v13 < 4)
    {
      v17 = (v16 >> v14) + 1;
      if (v11 != -1)
      {
        v20 = v16 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v13 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11 + 1);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v13] = v17;
        break;
      case 2:
        *&a1[v13] = v17;
        break;
      case 3:
LABEL_44:
        __break(1u);
        JUMPOUT(0x100078264);
      case 4:
        *&a1[v13] = v17;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v15)
    {
      case 1:
        a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      case 2:
        *&a1[v13] = 0;
        goto LABEL_32;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          a1[v11] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_100078298(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000782D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100078328()
{
  result = qword_1000D44D8;
  if (!qword_1000D44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D44D8);
  }

  return result;
}

unint64_t sub_100078380()
{
  result = qword_1000D44E0;
  if (!qword_1000D44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D44E0);
  }

  return result;
}

unint64_t sub_1000783D8()
{
  result = qword_1000D44E8;
  if (!qword_1000D44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D44E8);
  }

  return result;
}

unint64_t sub_100078430()
{
  result = qword_1000D44F0;
  if (!qword_1000D44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D44F0);
  }

  return result;
}

unint64_t sub_100078488()
{
  result = qword_1000D44F8;
  if (!qword_1000D44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D44F8);
  }

  return result;
}

unint64_t sub_1000784DC()
{
  result = qword_1000D4508;
  if (!qword_1000D4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4508);
  }

  return result;
}

unint64_t sub_100078530()
{
  result = qword_1000D4510;
  if (!qword_1000D4510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4510);
  }

  return result;
}

unint64_t sub_100078584()
{
  result = qword_1000D4528;
  if (!qword_1000D4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4528);
  }

  return result;
}

uint64_t sub_1000785D8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001CEC4(&qword_1000D1D00, &qword_10009B1B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100078644(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

_BYTE *sub_10007865C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100078728);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100078774()
{
  result = qword_1000D4538;
  if (!qword_1000D4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4538);
  }

  return result;
}

unint64_t sub_1000787CC()
{
  result = qword_1000D4540;
  if (!qword_1000D4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4540);
  }

  return result;
}

unint64_t sub_100078824()
{
  result = qword_1000D4548;
  if (!qword_1000D4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4548);
  }

  return result;
}

unint64_t sub_100078878()
{
  result = qword_1000D4590;
  if (!qword_1000D4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4590);
  }

  return result;
}

unint64_t sub_1000788CC()
{
  result = qword_1000D4598;
  if (!qword_1000D4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4598);
  }

  return result;
}

unint64_t sub_100078920()
{
  result = qword_1000D45A0;
  if (!qword_1000D45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D45A0);
  }

  return result;
}

unint64_t sub_100078974()
{
  result = qword_1000D45A8;
  if (!qword_1000D45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D45A8);
  }

  return result;
}

unint64_t sub_1000789C8()
{
  result = qword_1000D45B0;
  if (!qword_1000D45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D45B0);
  }

  return result;
}

unint64_t sub_100078A1C()
{
  result = qword_1000D45B8;
  if (!qword_1000D45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D45B8);
  }

  return result;
}

unint64_t sub_100078A70()
{
  result = qword_1000D45C0;
  if (!qword_1000D45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D45C0);
  }

  return result;
}

unint64_t sub_100078AC4()
{
  result = qword_1000D45C8;
  if (!qword_1000D45C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D45C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableCodingError.Code.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CodableCodingError.Code.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100078C6CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100078CF8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100078D94);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100078DE0()
{
  result = qword_1000D4610;
  if (!qword_1000D4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4610);
  }

  return result;
}

unint64_t sub_100078E38()
{
  result = qword_1000D4618;
  if (!qword_1000D4618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4618);
  }

  return result;
}

unint64_t sub_100078E90()
{
  result = qword_1000D4620;
  if (!qword_1000D4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4620);
  }

  return result;
}

unint64_t sub_100078EE8()
{
  result = qword_1000D4628;
  if (!qword_1000D4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4628);
  }

  return result;
}

unint64_t sub_100078F40()
{
  result = qword_1000D4630;
  if (!qword_1000D4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4630);
  }

  return result;
}

unint64_t sub_100078F98()
{
  result = qword_1000D4638;
  if (!qword_1000D4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4638);
  }

  return result;
}

unint64_t sub_100078FF0()
{
  result = qword_1000D4640;
  if (!qword_1000D4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4640);
  }

  return result;
}

unint64_t sub_100079048()
{
  result = qword_1000D4648;
  if (!qword_1000D4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4648);
  }

  return result;
}

unint64_t sub_1000790A0()
{
  result = qword_1000D4650;
  if (!qword_1000D4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4650);
  }

  return result;
}

unint64_t sub_1000790F8()
{
  result = qword_1000D4658;
  if (!qword_1000D4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4658);
  }

  return result;
}

unint64_t sub_100079150()
{
  result = qword_1000D4660;
  if (!qword_1000D4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4660);
  }

  return result;
}

unint64_t sub_1000791A8()
{
  result = qword_1000D4668;
  if (!qword_1000D4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4668);
  }

  return result;
}

unint64_t sub_100079200()
{
  result = qword_1000D4670;
  if (!qword_1000D4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4670);
  }

  return result;
}

unint64_t sub_100079258()
{
  result = qword_1000D4678;
  if (!qword_1000D4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4678);
  }

  return result;
}

unint64_t sub_1000792B0()
{
  result = qword_1000D4680;
  if (!qword_1000D4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4680);
  }

  return result;
}

unint64_t sub_100079308()
{
  result = qword_1000D4688;
  if (!qword_1000D4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4688);
  }

  return result;
}

unint64_t sub_100079360()
{
  result = qword_1000D4690;
  if (!qword_1000D4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4690);
  }

  return result;
}

unint64_t sub_1000793B8()
{
  result = qword_1000D4698;
  if (!qword_1000D4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4698);
  }

  return result;
}

unint64_t sub_100079410()
{
  result = qword_1000D46A0[0];
  if (!qword_1000D46A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000D46A0);
  }

  return result;
}

void *sub_100079530()
{
  v1 = v0;
  v3 = *v0;
  v2 = (v0 + 2);
  v4 = v3;
  if (os_unfair_lock_trylock(v2))
  {
    v7 = *(v4 + 80);
    sub_1000795E8(v1 + 3);
    type metadata accessor for ExportedObjectTaskTracker.State(0, v7, v8, v9);
    os_unfair_lock_unlock(v2);
  }

  else
  {
    v7 = *(v4 + 80);
  }

  type metadata accessor for ExportedObjectTaskTracker.State(255, v7, v5, v6);
  v10 = type metadata accessor for _Cell();
  sub_10007981C(v10);
  return v1;
}

uint64_t sub_1000795E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v11 = (v2 + 63) >> 6;

  v6 = 0;
  v13 = result;
  while (v4)
  {
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(*(*(result + 56) + ((v6 << 9) | (8 * v8))) + 16);
    if (v9)
    {

      v10 = 32;
      do
      {

        Task.cancel()();

        v10 += 8;
        --v9;
      }

      while (v9);

      result = v13;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v11)
    {
    }

    v4 = *(v12 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100079730()
{
  sub_100079530();

  return _swift_deallocClassInstance(v0, 32, 7);
}

char *sub_10007977C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  type metadata accessor for ExportedObjectTaskTracker.State(255, *a1, a3, a4);
  return type metadata accessor for Mutex();
}

uint64_t sub_1000797E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10007982C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007986C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000798BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657373696D736964 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100079994(char a1)
{
  if (a1)
  {
    return 0x6573616863727570;
  }

  else
  {
    return 0x657373696D736964;
  }
}

uint64_t sub_1000799C8(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v24 = a2;
  v5 = sub_100012634(&qword_1000D47E8, &qword_100099AB8);
  sub_100014A8C();
  v23 = v6;
  sub_10002FF34();
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  sub_100012634(&qword_1000D47F0, &qword_100099AC0);
  sub_100014A8C();
  v21 = v11;
  v22 = v10;
  sub_10002FF34();
  __chkstk_darwin(v12);
  sub_10007B14C();
  v13 = sub_100012634(&qword_1000D47F8, &qword_100099AC8);
  sub_100014A8C();
  v15 = v14;
  sub_10002FF34();
  __chkstk_darwin(v16);
  v18 = &v21 - v17;
  sub_100012980(a1, a1[3]);
  sub_10007AB88();
  v19 = v25;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v19)
  {
    v27 = 1;
    sub_10007ABDC();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v23 + 8))(v9, v5);
  }

  else
  {
    v26 = 0;
    sub_10007AC30();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v21 + 8))(v3, v22);
  }

  return (*(v15 + 8))(v18, v13);
}

uint64_t sub_100079C84(void *a1)
{
  sub_100012634(&qword_1000D4818, &qword_100099AD0);
  sub_100014A8C();
  v47 = v3;
  v48 = v4;
  sub_10002FF34();
  __chkstk_darwin(v5);
  sub_10007B14C();
  v6 = sub_100012634(&qword_1000D4820, &qword_100099AD8);
  sub_100014A8C();
  v46 = v7;
  sub_10002FF34();
  __chkstk_darwin(v8);
  v10 = v45 - v9;
  sub_100012634(&qword_1000D4828, &unk_100099AE0);
  sub_100014A8C();
  v49 = v11;
  sub_10002FF34();
  __chkstk_darwin(v12);
  v14 = v45 - v13;
  v15 = sub_100012980(a1, a1[3]);
  sub_10007AB88();
  v16 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    goto LABEL_9;
  }

  v50 = v10;
  v45[2] = v1;
  v17 = KeyedDecodingContainer.allKeys.getter();
  result = sub_10004E288(v17, 0);
  if (v20 == v21 >> 1)
  {
    v22 = a1;
    goto LABEL_8;
  }

  if (v20 < (v21 >> 1))
  {
    v22 = a1;
    v51 = *(v19 + v20);
    v23 = sub_10004E284(v20 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    if (v25 == v27 >> 1)
    {
      v45[1] = v23;
      if (v51)
      {
        v53 = 1;
        v28 = sub_10007ABDC();
        sub_10007B170(&type metadata for OfferDisplayResponse.Result.PurchasedCodingKeys, &v53, v29, v30, v28);
        v15 = KeyedDecodingContainer.decode(_:forKey:)();
        swift_unknownObjectRelease();
        v41 = sub_10007B15C();
        v42(v41);
        v43 = sub_10007B130();
        v44(v43);
      }

      else
      {
        v52 = 0;
        v36 = sub_10007AC30();
        sub_10007B170(&type metadata for OfferDisplayResponse.Result.DismissedCodingKeys, &v52, v37, v38, v36);
        swift_unknownObjectRelease();
        (*(v46 + 8))(v50, v6);
        v39 = sub_10007B130();
        v40(v39);
        v15 = 0;
      }

      goto LABEL_9;
    }

LABEL_8:
    v31 = type metadata accessor for DecodingError();
    swift_allocError();
    v33 = v32;
    sub_100012634(qword_1000D2A78, &qword_1000959C0);
    *v33 = &type metadata for OfferDisplayResponse.Result;
    v15 = v14;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v31 - 8) + 104))(v33, enum case for DecodingError.typeMismatch(_:), v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    v34 = sub_10007B130();
    v35(v34);
    a1 = v22;
LABEL_9:
    sub_100012A18(a1);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_10007A178(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10007A240(char a1)
{
  if (a1)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0x79654B676F6CLL;
  }
}

uint64_t sub_10007A268(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = sub_100012634(&qword_1000D47A8, &qword_100099918);
  sub_100014A8C();
  v9 = v8;
  sub_10002FF34();
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  sub_100012980(a1, a1[3]);
  sub_10007A884();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_10007A8D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_10007A3E8(void *a1)
{
  sub_100012634(&qword_1000D47C0, &qword_100099920);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v3);
  sub_10007B14C();
  v4 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_10007A884();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10007A92C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = sub_10007B13C();
    v7(v6);
  }

  sub_100012A18(a1);
  return v4;
}

uint64_t sub_10007A5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000798BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007A5DC(uint64_t a1)
{
  v2 = sub_10007AB88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A618(uint64_t a1)
{
  v2 = sub_10007AB88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A654(uint64_t a1)
{
  v2 = sub_10007AC30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A690(uint64_t a1)
{
  v2 = sub_10007AC30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A6CC(uint64_t a1)
{
  v2 = sub_10007ABDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A708(uint64_t a1)
{
  v2 = sub_10007ABDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A744@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100079C84(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10007A794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007A178(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007A7BC(uint64_t a1)
{
  v2 = sub_10007A884();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A7F8(uint64_t a1)
{
  v2 = sub_10007A884();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A834@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10007A3E8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_10007A884()
{
  result = qword_1000D47B0;
  if (!qword_1000D47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D47B0);
  }

  return result;
}

unint64_t sub_10007A8D8()
{
  result = qword_1000D47B8;
  if (!qword_1000D47B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D47B8);
  }

  return result;
}

unint64_t sub_10007A92C()
{
  result = qword_1000D47C8;
  if (!qword_1000D47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D47C8);
  }

  return result;
}

uint64_t sub_10007A994(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007A9E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_10007AA38(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10007AA50(void *result, int a2)
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

unint64_t sub_10007AA84()
{
  result = qword_1000D47D0;
  if (!qword_1000D47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D47D0);
  }

  return result;
}

unint64_t sub_10007AADC()
{
  result = qword_1000D47D8;
  if (!qword_1000D47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D47D8);
  }

  return result;
}

unint64_t sub_10007AB34()
{
  result = qword_1000D47E0;
  if (!qword_1000D47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D47E0);
  }

  return result;
}

unint64_t sub_10007AB88()
{
  result = qword_1000D4800;
  if (!qword_1000D4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4800);
  }

  return result;
}

unint64_t sub_10007ABDC()
{
  result = qword_1000D4808;
  if (!qword_1000D4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4808);
  }

  return result;
}

unint64_t sub_10007AC30()
{
  result = qword_1000D4810;
  if (!qword_1000D4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4810);
  }

  return result;
}

_BYTE *sub_10007AC84(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10007AD50);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OfferDisplayResponse.Result.PurchasedCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10007AE34);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10007AE70()
{
  result = qword_1000D4830;
  if (!qword_1000D4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4830);
  }

  return result;
}

unint64_t sub_10007AEC8()
{
  result = qword_1000D4838;
  if (!qword_1000D4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4838);
  }

  return result;
}

unint64_t sub_10007AF20()
{
  result = qword_1000D4840;
  if (!qword_1000D4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4840);
  }

  return result;
}

unint64_t sub_10007AF78()
{
  result = qword_1000D4848;
  if (!qword_1000D4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4848);
  }

  return result;
}

unint64_t sub_10007AFD0()
{
  result = qword_1000D4850;
  if (!qword_1000D4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4850);
  }

  return result;
}

unint64_t sub_10007B028()
{
  result = qword_1000D4858;
  if (!qword_1000D4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4858);
  }

  return result;
}

unint64_t sub_10007B080()
{
  result = qword_1000D4860;
  if (!qword_1000D4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4860);
  }

  return result;
}

unint64_t sub_10007B0D8()
{
  result = qword_1000D4868;
  if (!qword_1000D4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4868);
  }

  return result;
}

uint64_t sub_10007B170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

char *sub_10007B1F0(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v5);
  sub_10002FF34();
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = a1;
  a3();

  v10 = type metadata accessor for URL();
  v12 = 0;
  if (sub_10007CF54(v8) != 1)
  {
    v12 = v8;
    URL._bridgeToObjectiveC()(v11);
    sub_10007CF78();
    (*(v13 + 8))(v8, v10);
  }

  return v12;
}

uint64_t sub_10007B2E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43[0] = a1;
  v3 = type metadata accessor for SKLogger(0);
  sub_100019360();
  __chkstk_darwin(v4);
  sub_10002FC4C();
  v7 = (v5 - v6);
  __chkstk_darwin(v8);
  v10 = v43 - v9;
  v11 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v11);
  sub_10002FF34();
  __chkstk_darwin(v12);
  v14 = v43 - v13;
  v15 = type metadata accessor for URL();
  sub_100014A8C();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10002FC4C();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = v43 - v23;
  sub_10007B714(v14);
  if (sub_100012898(v14, 1, v15) == 1)
  {
    sub_1000379F4(v14);
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v25 = sub_1000128C0(v3, qword_1000E4560);
    sub_100012C50(v25, v10);
    Logger.logObject.getter();
    sub_10007D004();
    sub_100019360();
    (*(v26 + 8))(v10);
    v27 = static os_log_type_t.fault.getter();
    if (sub_10007CFEC(v27))
    {
      *sub_10007CFD4() = 0;
      sub_10007CF38(&_mh_execute_header, v28, v27, "Unable to determine path for StoreKit persistant data directory");
      sub_100063D00();
    }

    v29 = 1;
    v30 = v43[0];
  }

  else
  {
    URL.appendingPathComponent(_:)();
    (*(v17 + 8))(v14, v15);
    v31 = *(v17 + 32);
    v31(v24, v21, v15);
    URL._bridgeToObjectiveC()(v32);
    v34 = v33;
    v44 = 0;
    v35 = [v2 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:&v44];

    if (v35)
    {
      v36 = v44;
    }

    else
    {
      v37 = v44;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1000D1AE8 != -1)
      {
        sub_100039E60(&qword_1000D1AE8);
      }

      v38 = sub_1000128C0(v3, qword_1000E4560);
      sub_100012C50(v38, v7);
      Logger.logObject.getter();
      sub_10007D004();
      sub_100019360();
      (*(v39 + 8))(v7);
      v40 = static os_log_type_t.error.getter();
      if (sub_10007CFEC(v40))
      {
        v41 = sub_10007CFD4();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v7, v40, "Unable to create StoreKit persistant data directory", v41, 2u);
      }
    }

    v30 = v43[0];
    v31(v43[0], v24, v15);
    v29 = 0;
  }

  return sub_10001267C(v30, v29, 1, v15);
}

uint64_t sub_10007B714@<X0>(uint64_t a1@<X8>)
{
  v93 = type metadata accessor for SKLogger(0);
  v2 = __chkstk_darwin(v93);
  v90 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v79 - v4;
  v6 = type metadata accessor for URLResourceValues();
  v97 = *(v6 - 8);
  __chkstk_darwin(v6);
  v89 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v101 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v79 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 containerURLForSecurityApplicationGroupIdentifier:v15];

  if (!v16)
  {
    if (qword_1000D1AE8 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v82 = v6;
  v85 = a1;
  v100 = v13;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100012634(&qword_1000D4870, &qword_100099DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100093330;
  *(inited + 32) = 0x746E656D75636F44;
  *(inited + 40) = 0xE900000000000073;
  *(inited + 48) = NSFileProtectionNone;
  *(inited + 56) = 1;
  *(inited + 64) = 0x7972617262694CLL;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = NSFileProtectionNone;
  *(inited + 88) = 0;
  strcpy((inited + 96), "Library/Caches");
  *(inited + 111) = -18;
  *(inited + 112) = NSFileProtectionNone;
  *(inited + 120) = 1;
  v18 = NSFileProtectionNone;
  sub_100012634(&qword_1000D4878, &qword_100099DE0);
  v19 = Dictionary.init(dictionaryLiteral:)();
  v20 = 0;
  v91 = 0;
  v21 = v9;
  v23 = v19 + 64;
  v22 = *(v19 + 64);
  v99 = v19;
  v24 = 1 << *(v19 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  a1 = v25 & v22;
  v26 = (v24 + 63) >> 6;
  v88 = NSFileProtectionKey;
  v27 = v98;
  v81 = (v97 + 8);
  v84 = v21;
  v96 = (v21 + 8);
  *(&v28 + 1) = 2;
  v87 = xmmword_100094DD0;
  *&v28 = 136446466;
  v83 = v28;
  v97 = v26;
  v92 = v8;
  v86 = v19 + 64;
  while (a1)
  {
    v29 = v20;
LABEL_11:
    v30 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v31 = *(v99 + 56) + ((v29 << 10) | (16 * v30));
    v32 = *v31;
    LODWORD(v94) = *(v31 + 8);

    v33 = v32;
    v34 = v101;
    URL.appendingPathComponent(_:)();

    swift_beginAccess();
    if (sub_100039EF8())
    {
      (*v96)(v34, v8);

      v20 = v29;
      v26 = v97;
    }

    else
    {
      v95 = v33;
      URL._bridgeToObjectiveC()(v35);
      v37 = v36;
      v102[0] = 0;
      v38 = [v27 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v102];

      v39 = v102[0];
      if (v38)
      {
        sub_100012634(&qword_1000D4880, &qword_100099DE8);
        v40 = swift_initStackObject();
        *(v40 + 16) = v87;
        v41 = v88;
        *(v40 + 32) = v88;
        type metadata accessor for FileProtectionType(0);
        *(v40 + 64) = v42;
        v43 = v95;
        *(v40 + 40) = v95;
        type metadata accessor for FileAttributeKey(0);
        sub_10007CED4(&qword_1000D1F78, type metadata accessor for FileAttributeKey, &unk_1000943E0);
        v44 = v43;
        v45 = v34;
        v80 = v44;
        v46 = v39;
        v47 = v41;
        Dictionary.init(dictionaryLiteral:)();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        URL.path.getter();
        v49 = String._bridgeToObjectiveC()();

        v102[0] = 0;
        v50 = [v98 setAttributes:isa ofItemAtPath:v49 error:v102];

        if (!v50)
        {
          v55 = v102[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v91 = 0;
          v23 = v86;
          goto LABEL_20;
        }

        v51 = v102[0];
        v52 = v89;
        URLResourceValues.init()();
        URLResourceValues.isExcludedFromBackup.setter();
        swift_beginAccess();
        v53 = v91;
        URL.setResourceValues(_:)();
        v23 = v86;
        if (!v53)
        {
          v91 = 0;
          swift_endAccess();

          (*v81)(v52, v82);
          v68 = *v96;
          v69 = v45;
          goto LABEL_25;
        }

        swift_endAccess();
        (*v81)(v52, v82);
      }

      else
      {
        v54 = v102[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v91 = 0;
LABEL_20:
      if (qword_1000D1AE8 != -1)
      {
        swift_once();
      }

      v56 = sub_1000128C0(v93, qword_1000E4560);
      v57 = v90;
      sub_100012C50(v56, v90);
      swift_errorRetain();
      v58 = Logger.logObject.getter();
      v59 = type metadata accessor for Logger();
      (*(*(v59 - 8) + 8))(v57, v59);
      v60 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v58, v60))
      {
        v61 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v102[0] = v94;
        *v61 = v83;
        sub_10007CED4(&qword_1000D27F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = sub_1000847A8(v62, v63, v102);

        *(v61 + 4) = v64;
        *(v61 + 12) = 2082;
        swift_getErrorValue();
        v65 = Error.localizedDescription.getter();
        v67 = sub_1000847A8(v65, v66, v102);

        *(v61 + 14) = v67;
        _os_log_impl(&_mh_execute_header, v58, v60, "Failed to create directory %{public}s and set attributes: %{public}s", v61, 0x16u);
        swift_arrayDestroy();

        v8 = v92;

        (*v96)(v101, v8);
        goto LABEL_26;
      }

      v68 = *v96;
      v69 = v101;
LABEL_25:
      v8 = v92;
      v68(v69, v92);
LABEL_26:
      v20 = v29;
      v26 = v97;
      v27 = v98;
    }
  }

  v5 = v100;
  while (1)
  {
    v29 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v29 >= v26)
    {

      v70 = v85;
      (*(v84 + 32))(v85, v5, v8);
      v71 = v70;
      v72 = 0;
      return sub_10001267C(v71, v72, 1, v8);
    }

    a1 = *(v23 + 8 * v29);
    ++v20;
    if (a1)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_35:
  swift_once();
LABEL_30:
  v73 = sub_1000128C0(v93, qword_1000E4560);
  sub_100012C50(v73, v5);
  v74 = Logger.logObject.getter();
  v75 = type metadata accessor for Logger();
  (*(*(v75 - 8) + 8))(v5, v75);
  v76 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v74, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&_mh_execute_header, v74, v76, "Unable to determine StoreKit container URL", v77, 2u);
  }

  v71 = a1;
  v72 = 1;
  return sub_10001267C(v71, v72, 1, v8);
}

char *sub_10007C200(void *a1, uint64_t a2, SEL *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v9);
  sub_10002FF34();
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = a1;
  sub_10007C324(a3, a4, a5);

  v14 = type metadata accessor for URL();
  v16 = 0;
  if (sub_10007CF54(v12) != 1)
  {
    v16 = v12;
    URL._bridgeToObjectiveC()(v15);
    sub_10007CF78();
    (*(v17 + 8))(v12, v14);
  }

  return v16;
}

uint64_t sub_10007C324(SEL *a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  sub_10007CF6C();
  v9 = type metadata accessor for URL.DirectoryHint();
  sub_100014A8C();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10002FC5C();
  v15 = v14 - v13;
  v16 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v17 = sub_10002FD0C(v16);
  __chkstk_darwin(v17);
  sub_10002FC4C();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v30 - v22;
  v24 = [v8 *a1];
  if (v24)
  {
    v25 = v24;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = type metadata accessor for URL();
    v27 = 0;
  }

  else
  {
    v26 = type metadata accessor for URL();
    v27 = 1;
  }

  sub_10001267C(v20, v27, 1, v26);
  sub_100037984(v20, v23);
  type metadata accessor for URL();
  if (sub_100012898(v23, 1, v26) == 1)
  {
    sub_1000379F4(v23);
    v28 = 1;
  }

  else
  {
    v30[0] = a2;
    v30[1] = a3;
    (*(v11 + 104))(v15, enum case for URL.DirectoryHint.isDirectory(_:), v9);
    sub_100012B58();
    URL.appending<A>(component:directoryHint:)();
    (*(v11 + 8))(v15, v9);
    (*(*(v26 - 8) + 8))(v23, v26);
    v28 = 0;
  }

  return sub_10001267C(v3, v28, 1, v26);
}

uint64_t sub_10007C594()
{
  v1 = sub_10007CF6C();
  v2 = type metadata accessor for SKLogger(v1);
  sub_100019360();
  __chkstk_darwin(v3);
  sub_10002FC5C();
  v6 = v5 - v4;
  v7 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v7);
  sub_10002FF34();
  __chkstk_darwin(v8);
  sub_10007CFB4();
  sub_100014A8C();
  __chkstk_darwin(v9);
  sub_10002FC5C();
  sub_10007B714(v0);
  if (sub_10007CF54(v0) == 1)
  {
    sub_1000379F4(v0);
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v10 = sub_1000128C0(v2, qword_1000E4560);
    sub_100012C50(v10, v6);
    v11 = v6;
    Logger.logObject.getter();
    sub_10007D004();
    sub_100019360();
    (*(v12 + 8))(v6);
    v13 = static os_log_type_t.fault.getter();
    if (sub_10007CFEC(v13))
    {
      *sub_10007CFD4() = 0;
      sub_10007CF38(&_mh_execute_header, v14, v13, "Unable to determine path for StoreKit caches directory");
      sub_100063D00();
    }

    v16 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v17 = sub_10007CFA0();
    v18(v17);
    v19 = sub_10007CF8C();
    v15 = v20(v19);
    v16 = 0;
  }

  return sub_10007CF1C(v15, v16);
}

uint64_t sub_10007C7DC()
{
  v1 = v0;
  sub_10007CF6C();
  v2 = type metadata accessor for URL.DirectoryHint();
  sub_100014A8C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10002FC5C();
  v8 = v7 - v6;
  v9 = type metadata accessor for URL();
  sub_100014A8C();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10002FC5C();
  v15 = v14 - v13;
  v16 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v17 = sub_10002FD0C(v16);
  __chkstk_darwin(v17);
  sub_10002FC4C();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v30 - v22;
  v24 = [v1 sk_cachedDataURL];
  if (v24)
  {
    v25 = v24;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  sub_10001267C(v23, v26, 1, v9);
  sub_100037A5C(v23, v20);
  if (sub_10007CF54(v20) == 1)
  {
    v27 = sub_1000379F4(v23);
    v28 = 1;
  }

  else
  {
    (*(v11 + 32))(v15, v20, v9);
    strcpy(v30, "storeUser.db");
    HIBYTE(v30[6]) = 0;
    v30[7] = -5120;
    (*(v4 + 104))(v8, enum case for URL.DirectoryHint.notDirectory(_:), v2);
    sub_100012B58();
    URL.appending<A>(component:directoryHint:)();
    (*(v4 + 8))(v8, v2);
    (*(v11 + 8))(v15, v9);
    v27 = sub_1000379F4(v23);
    v28 = 0;
  }

  return sub_10007CF1C(v27, v28);
}

uint64_t sub_10007CAA4()
{
  v1 = sub_10007CF6C();
  v2 = type metadata accessor for SKLogger(v1);
  sub_100019360();
  __chkstk_darwin(v3);
  sub_10002FC5C();
  v6 = v5 - v4;
  v7 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v7);
  sub_10002FF34();
  __chkstk_darwin(v8);
  sub_10007CFB4();
  sub_100014A8C();
  __chkstk_darwin(v9);
  sub_10002FC5C();
  sub_10007CCCC(v0);
  if (sub_10007CF54(v0) == 1)
  {
    sub_1000379F4(v0);
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v10 = sub_1000128C0(v2, qword_1000E4560);
    sub_100012C50(v10, v6);
    v11 = v6;
    Logger.logObject.getter();
    sub_10007D004();
    sub_100019360();
    (*(v12 + 8))(v6);
    v13 = static os_log_type_t.fault.getter();
    if (sub_10007CFEC(v13))
    {
      *sub_10007CFD4() = 0;
      sub_10007CF38(&_mh_execute_header, v14, v13, "Unable to determine path for iTunesStore library directory");
      sub_100063D00();
    }

    v16 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v17 = sub_10007CFA0();
    v18(v17);
    v19 = sub_10007CF8C();
    v15 = v20(v19);
    v16 = 0;
  }

  return sub_10007CF1C(v15, v16);
}

void *sub_10007CCCC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CPSharedResourcesDirectory();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v13 = 0;
    v14 = 0;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v14)
    {
      URL.init(string:)();
    }
  }

  else
  {
  }

  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v7 = sub_1000128C0(v2, qword_1000E4560);
  sub_100012C50(v7, v4);
  v8 = Logger.logObject.getter();
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(v4, v9);
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v8, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, v10, "Unable to determine path for shared resources directory", v11, 2u);
  }

  v12 = type metadata accessor for URL();
  return sub_10001267C(a1, 1, 1, v12);
}

uint64_t sub_10007CED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007CF1C(uint64_t a1, uint64_t a2)
{

  return sub_10001267C(v2, a2, 1, v3);
}

void sub_10007CF38(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_10007CF54(uint64_t a1)
{

  return sub_100012898(a1, 1, v1);
}

uint64_t sub_10007CFB4()
{

  return type metadata accessor for URL();
}

uint64_t sub_10007CFD4()
{

  return swift_slowAlloc();
}

BOOL sub_10007CFEC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10007D004()
{

  return type metadata accessor for Logger();
}

id sub_10007D01C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      type metadata accessor for ASDError(0);
      sub_10007D238(_swiftEmptyArrayStorage);
      sub_100020A24();
      _BridgedStoredNSError.init(_:userInfo:)();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = _BridgedStoredNSError.errorCode.getter();

      goto LABEL_6;
    case 15:
      v5 = 1;
      goto LABEL_6;
    case 16:
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = 500;
LABEL_6:
      v6 = String._bridgeToObjectiveC()();

      v4 = [v3 initWithDomain:v6 code:v5 userInfo:0];

      break;
    default:
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      v4 = 0;
      break;
  }

  return v4;
}

unint64_t sub_10007D238(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = _swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_100012634(&qword_1000D31D0, &qword_100096B00);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_10007D3E8(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_10007D370(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_100012AD4(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_10007D370(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10007D458(a1, a2, v4);
}

uint64_t sub_10007D3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D4888, qword_100099DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007D458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10007D520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_100012898(a1, a2, v4);
}

uint64_t sub_10007D57C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_10001267C(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SKLogger(uint64_t a1)
{
  result = qword_1000D48E8;
  if (!qword_1000D48E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007D614(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10007D680()
{
  v0 = type metadata accessor for SKLogger(0);
  sub_10007D6F8(v0, qword_1000E4560);
  sub_1000128C0(v0, qword_1000E4560);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10007D6F8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10007D770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ClientOverride.Server(0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 28);
    }

    else
    {
      v10 = sub_100012634(&qword_1000D2800, qword_100099E20);
      v11 = *(a3 + 40);
    }

    return sub_100012898(a1 + v11, a2, v10);
  }
}

uint64_t sub_10007D888(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = type metadata accessor for ClientOverride.Server(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = sub_100012634(&qword_1000D2800, qword_100099E20);
      v10 = *(a4 + 40);
    }

    return sub_10001267C(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_10007D97C(uint64_t a1)
{
  sub_10007DA78(319, &qword_1000D4988, &type metadata for Data);
  if (v1 <= 0x3F)
  {
    sub_10007DA78(319, &qword_1000D4990, &type metadata for String);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ClientOverride.Server(319);
      if (v3 <= 0x3F)
      {
        sub_10007DA78(319, &unk_1000D4998, &type metadata for UInt64);
        if (v4 <= 0x3F)
        {
          sub_10007DAC4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10007DA78(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10007DAC4(uint64_t a1)
{
  if (!qword_1000D2720)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000D2720);
    }
  }
}

uint64_t sub_10007DB30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  v5 = sub_100012898(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007DB98(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100012634(&qword_1000D2730, &qword_100096BC0);

  return sub_10001267C(a1, v5, a3, v6);
}

uint64_t sub_10007DC04(uint64_t a1)
{
  sub_10002CF68();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_10007DC5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100081038();
  v6 = v6 && v5 == 0xE900000000000063;
  if (v6 || (sub_100080FF4(v4, 0xE900000000000063) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = sub_100080FB8();
    v10 = v6 && a2 == v9;
    if (v10 || (sub_100080FF4(v8, 0xEA00000000006E6FLL) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v11 = sub_100081020();
      v12 = v6 && a2 == 0xE700000000000000;
      if (v12 || (sub_100080FF4(v11, 0xE700000000000000) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73655465646F6378 && a2 == 0xE900000000000074)
      {

        return 3;
      }

      else
      {
        v14 = sub_100080FF4(0x73655465646F6378, 0xE900000000000074);

        if (v14)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_10007DD64(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0x69746375646F7270;
      break;
    case 2:
      result = 0x786F62646E6173;
      break;
    case 3:
      result = 0x73655465646F6378;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10007DE00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001000A26D0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10007DEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007DC5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007DED8(uint64_t a1)
{
  v2 = sub_100080510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007DF14(uint64_t a1)
{
  v2 = sub_100080510();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007DF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007DE00(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10007DF9C(uint64_t a1)
{
  v2 = sub_100080564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007DFD8(uint64_t a1)
{
  v2 = sub_100080564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007E014()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  sub_100014A8C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10002FC5C();
  v8 = v7 - v6;
  v9 = type metadata accessor for ClientOverride.Server(0);
  v10 = sub_10002FD0C(v9);
  __chkstk_darwin(v10);
  sub_10002FC5C();
  v13 = v12 - v11;
  sub_100080F30();
  sub_100080444(v1, v13, v14);
  v15 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  v16 = 0x6974616D6F747541;
  switch(sub_100012898(v13, 3, v15))
  {
    case 1u:
      return v16;
    case 2u:
      v16 = 0x69746375646F7250;
      break;
    case 3u:
      v16 = 0x786F62646E6153;
      break;
    default:
      (*(v4 + 32))(v8, v13, v2);
      sub_100080EE8();
      sub_100080344(v17, v18, &protocol conformance descriptor for URL);
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      v20._countAndFlagsBits = 41;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v16 = 0x73655465646F6358;
      (*(v4 + 8))(v8, v2);
      break;
  }

  return v16;
}

uint64_t sub_10007E250@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v4 = sub_100012634(&qword_1000D4AB8, &qword_100099F68);
  sub_10002FD0C(v4);
  sub_10002FF34();
  __chkstk_darwin(v5);
  sub_100032608();
  v91 = v6;
  v93 = sub_100012634(&qword_1000D4AC0, &qword_100099F70);
  sub_100014A8C();
  v90 = v7;
  sub_10002FF34();
  __chkstk_darwin(v8);
  sub_100032608();
  v89 = v9;
  v95 = sub_100012634(&qword_1000D4AC8, &qword_100099F78);
  sub_100014A8C();
  v92 = v10;
  sub_10002FF34();
  __chkstk_darwin(v11);
  sub_100032608();
  v94 = v12;
  type metadata accessor for URL();
  sub_100014A8C();
  v100 = v14;
  v101 = v13;
  __chkstk_darwin(v13);
  sub_10002FC5C();
  v96 = v16 - v15;
  v17 = sub_100012634(&qword_1000D4AD0, &qword_100099F80);
  sub_100014A8C();
  v97 = v18;
  sub_10002FF34();
  __chkstk_darwin(v19);
  v21 = &v87 - v20;
  v22 = sub_100012634(&qword_1000D4AD8, &qword_100099F88);
  sub_10002FD0C(v22);
  sub_10002FF34();
  __chkstk_darwin(v23);
  v25 = &v87 - v24;
  v26 = sub_100012634(&qword_1000D4AE0, &qword_100099F90);
  sub_100014A8C();
  v28 = v27;
  sub_10002FF34();
  __chkstk_darwin(v29);
  sub_100037C08();
  v30 = type metadata accessor for ClientOverride.Server(0);
  v31 = sub_10002FD0C(v30);
  __chkstk_darwin(v31);
  sub_10002FC5C();
  v99 = v33 - v32;
  v34 = a1[3];
  v104 = a1;
  sub_100012980(a1, v34);
  sub_100080510();
  v35 = v102;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v35)
  {

    sub_10001267C(v25, 1, 1, v26);
    sub_100049EA0(v25, &qword_1000D4AD8, &qword_100099F88);
  }

  else
  {
    v102 = v21;
    v88 = v17;
    v40 = v100;
    v39 = v101;
    sub_10001267C(v25, 0, 1, v26);
    (*(v28 + 32))(v2, v25, v26);
    v41 = KeyedDecodingContainer.allKeys.getter();
    if (*(v41 + 16))
    {
      v42 = *(v41 + 32);

      switch(v42)
      {
        case 1:
          v65 = sub_100080F70();
          v66(v65);
          sub_100012634(&qword_1000D2730, &qword_100096BC0);
          v45 = sub_100080F60();
          v47 = 2;
          goto LABEL_24;
        case 2:
          v58 = sub_100080F70();
          v59(v58);
          sub_100012634(&qword_1000D2730, &qword_100096BC0);
          v45 = sub_100080F60();
          v47 = 3;
          goto LABEL_24;
        case 3:
          v60 = v39;
          v61 = v40;
          LOBYTE(v103[0]) = 3;
          sub_100080564();
          v62 = v102;
          v63 = v2;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v64 = v28;
          sub_100080EE8();
          sub_100080344(v68, v69, &protocol conformance descriptor for URL);
          v70 = v96;
          v71 = v62;
          v72 = v88;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v97 + 8))(v71, v72);
          (*(v64 + 8))(v63, v26);
          v36 = v104;
          v42 = v99;
          (*(v61 + 32))(v99, v70, v60);
          v73 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
          sub_10001267C(v42, 0, 3, v73);
          break;
        default:
          v43 = sub_100080F70();
          v44(v43);
          sub_100012634(&qword_1000D2730, &qword_100096BC0);
          v45 = sub_100080F60();
          v47 = 1;
LABEL_24:
          sub_10001267C(v45, v47, 3, v46);
          v36 = v104;
          break;
      }

LABEL_25:
      sub_1000803E0(v42, v98);
      return sub_100012A18(v36);
    }

    v48 = sub_100080F70();
    v49(v48);
  }

  v36 = v104;
  sub_100012980(v104, v104[3]);
  sub_1000810B4();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v35)
  {
    sub_100012980(v103, v103[3]);
    sub_1000810B4();
    v37 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v42 = v37;
    v50 = v38;
    v51 = v37 == 1869903201 && v38 == 0xE400000000000000;
    if (v51 || (sub_100080F90(1869903201, 0xE400000000000000) & 1) != 0 || ((v52 = sub_100081038(), v51) ? (v54 = v50 == v53) : (v54 = 0), v54 || (sub_100080F90(v52, 0xE900000000000063) & 1) != 0))
    {

      v55 = 1;
    }

    else
    {
      v74 = v42 == 1685025392 && v50 == 0xE400000000000000;
      if (v74 || (sub_100080F90(1685025392, 0xE400000000000000) & 1) != 0 || ((v75 = sub_100080FB8(), v51) ? (v77 = v50 == v76) : (v77 = 0), v77 || (sub_100080F90(v75, 0xEA00000000006E6FLL) & 1) != 0))
      {

        v55 = 2;
      }

      else
      {
        v78 = sub_100081020();
        v79 = v51 && v50 == 0xE700000000000000;
        if (v79 || (sub_100080F90(v78, 0xE700000000000000) & 1) != 0)
        {

          v55 = 3;
        }

        else
        {
          sub_100012634(&qword_1000D4AF0, &qword_100099F98);
          Regex.init(_regexString:version:)();
          v80 = v91;
          Regex.wholeMatch(in:)();

          if (sub_100012898(v80, 1, v93) == 1)
          {
            sub_100049EA0(v80, &qword_1000D4AB8, &qword_100099F68);
            v81 = type metadata accessor for DecodingError();
            swift_allocError();
            v83 = v82;
            v36 = v104;
            sub_100012980(v104, v104[3]);
            dispatch thunk of Decoder.codingPath.getter();
            DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
            (*(*(v81 - 8) + 104))(v83, enum case for DecodingError.dataCorrupted(_:), v81);
            swift_willThrow();
            (*(v92 + 8))(v94, v95);
            sub_100012A18(v103);
            return sub_100012A18(v36);
          }

          v84 = v90;
          v85 = v89;
          v86 = v93;
          (*(v90 + 32))(v89, v80, v93);
          swift_getKeyPath();
          Regex.Match.subscript.getter();

          v42 = static String._fromSubstring(_:)();

          URL.init(fileURLWithPath:)();

          (*(v84 + 8))(v85, v86);
          (*(v92 + 8))(v94, v95);
          v55 = 0;
          v36 = v104;
        }
      }
    }

    sub_100012634(&qword_1000D2730, &qword_100096BC0);
    v56 = sub_100080F60();
    sub_10001267C(v56, v55, 3, v57);
    sub_100012A18(v103);
    goto LABEL_25;
  }

  return sub_100012A18(v36);
}

uint64_t sub_10007EC98(void *a1)
{
  sub_100012634(&qword_1000D4B08, &qword_100099FC0);
  sub_100014A8C();
  v55 = v4;
  v56 = v3;
  sub_10002FF34();
  __chkstk_darwin(v5);
  sub_100032608();
  v52 = v6;
  type metadata accessor for URL();
  sub_100014A8C();
  v53 = v8;
  v54 = v7;
  __chkstk_darwin(v7);
  sub_10002FC5C();
  v57 = v10 - v9;
  sub_100012634(&qword_1000D4B10, &qword_100099FC8);
  sub_100014A8C();
  v50 = v12;
  v51 = v11;
  sub_10002FF34();
  __chkstk_darwin(v13);
  sub_100032608();
  v49 = v14;
  sub_100012634(&qword_1000D4B18, &qword_100099FD0);
  sub_100014A8C();
  v47 = v16;
  v48 = v15;
  sub_10002FF34();
  __chkstk_darwin(v17);
  sub_100081010();
  sub_100012634(&qword_1000D4B20, &qword_100099FD8);
  sub_100014A8C();
  v45 = v19;
  v46 = v18;
  sub_10002FF34();
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  v23 = type metadata accessor for ClientOverride.Server(0);
  v24 = sub_10002FD0C(v23);
  __chkstk_darwin(v24);
  sub_10002FC5C();
  v27 = v26 - v25;
  v28 = sub_100012634(&qword_1000D4B28, &unk_100099FE0);
  sub_100014A8C();
  v30 = v29;
  sub_10002FF34();
  __chkstk_darwin(v31);
  v33 = &v44 - v32;
  sub_100012980(a1, a1[3]);
  sub_100080510();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100080F30();
  sub_100080444(v58, v27, v34);
  v35 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  switch(sub_100012898(v27, 3, v35))
  {
    case 1u:
      v59 = 0;
      sub_100080660();
      sub_100080FD8(&type metadata for ClientOverride.Server.AutomaticCodingKeys);
      (*(v45 + 8))(v22, v46);
      goto LABEL_6;
    case 2u:
      v60 = 1;
      sub_10008060C();
      sub_100080FD8(&type metadata for ClientOverride.Server.ProductionCodingKeys);
      (*(v47 + 8))(v1, v48);
      goto LABEL_6;
    case 3u:
      v61 = 2;
      sub_1000805B8();
      v43 = v49;
      sub_100080FD8(&type metadata for ClientOverride.Server.SandboxCodingKeys);
      (*(v50 + 8))(v43, v51);
LABEL_6:
      result = (*(v30 + 8))(v33, v28);
      break;
    default:
      v37 = v53;
      v36 = v54;
      (*(v53 + 32))(v57, v27, v54);
      v62 = 3;
      sub_100080564();
      v38 = v52;
      sub_100080FD8(&type metadata for ClientOverride.Server.XcodeTestCodingKeys);
      sub_100080EE8();
      sub_100080344(v39, v40, &protocol conformance descriptor for URL);
      v41 = v56;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v55 + 8))(v38, v41);
      (*(v37 + 8))(v57, v36);
      result = (*(v30 + 8))(v33, v28);
      break;
  }

  return result;
}

uint64_t sub_10007F1E4(uint64_t a1)
{
  v2 = sub_100080660();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007F220(uint64_t a1)
{
  v2 = sub_100080660();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007F25C(uint64_t a1)
{
  v2 = sub_10008060C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007F298(uint64_t a1)
{
  v2 = sub_10008060C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007F2D4(uint64_t a1)
{
  v2 = sub_1000805B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007F310(uint64_t a1)
{
  v2 = sub_1000805B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007F380()
{
  v3 = sub_100012634(&qword_1000D2800, qword_100099E20);
  sub_10002FD0C(v3);
  sub_10002FF34();
  __chkstk_darwin(v4);
  sub_100081010();
  v5 = type metadata accessor for UUID();
  sub_100014A8C();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10002FC5C();
  sub_100037C08();
  v9 = v0[3];
  if (v9)
  {
    v10 = v0[2];
    String.append(_:)(*(&v9 - 1));
    sub_100081068();
    v11._countAndFlagsBits = 0x2864696272;
    v11._object = 0xE500000000000000;
    String.append(_:)(v11);
  }

  v12 = v0[5];
  if (v12)
  {
    v13 = v0[4];
    String.append(_:)(*(&v12 - 1));
    sub_100081068();
    v14._countAndFlagsBits = 0x287372766272;
    v14._object = 0xE600000000000000;
    String.append(_:)(v14);
  }

  v15 = type metadata accessor for ClientOverride(0);
  if ((*(v0 + v15[9] + 8) & 1) == 0)
  {
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    sub_100081068();
    v17._countAndFlagsBits = 0x2864496D616461;
    v17._object = 0xE700000000000000;
    String.append(_:)(v17);
  }

  if ((*(v0 + v15[8] + 8) & 1) == 0)
  {
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    sub_100081068();
    v19._countAndFlagsBits = 0x6449737256747865;
    v19._object = 0xE900000000000028;
    String.append(_:)(v19);
  }

  sub_1000802D4(v0 + v15[10], v2);
  if (sub_100012898(v2, 1, v5) == 1)
  {
    sub_100049EA0(v2, &qword_1000D2800, qword_100099E20);
  }

  else
  {
    (*(v7 + 32))(v1, v2, v5);
    sub_100080F00();
    sub_100080344(v20, v21, &protocol conformance descriptor for UUID);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    sub_100081068();
    v23._countAndFlagsBits = 677669238;
    v23._object = 0xE400000000000000;
    String.append(_:)(v23);

    (*(v7 + 8))(v1, v5);
  }

  v24._countAndFlagsBits = sub_10007E014();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 41;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x28726576726573;
  v26._object = 0xE700000000000000;
  String.append(_:)(v26);

  return 0;
}

uint64_t sub_10007F73C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001000A2690 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4274736575716572 && a2 == 0xEF4449656C646E75;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000010009F420 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726576726573 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x80000001000A26B0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65744965726F7473 && a2 == 0xEB0000000044496DLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4449726F646E6576 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10007F984(char a1)
{
  result = 0x4274736575716572;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x726576726573;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x65744965726F7473;
      break;
    case 6:
      result = 0x4449726F646E6576;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_10007FA84(void *a1)
{
  v4 = v1;
  v6 = sub_100012634(&qword_1000D4AA0, &qword_100099F60);
  sub_100014A8C();
  v8 = v7;
  sub_10002FF34();
  __chkstk_darwin(v9);
  sub_100037C08();
  sub_100012980(a1, a1[3]);
  sub_10008038C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v4;
  v16 = v4[1];
  sub_1000804FC(*v4, v16);
  sub_10001E308();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    sub_100019064(v15, v16);
  }

  else
  {
    sub_100019064(v15, v16);
    sub_100080F18(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100080F18(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for ClientOverride(0);
    type metadata accessor for ClientOverride.Server(0);
    sub_100080F48();
    sub_100080344(v10, v11, &unk_100099E68);
    sub_100081050();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100080F18(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100080F18(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for UUID();
    sub_100080F00();
    sub_100080344(v12, v13, &protocol conformance descriptor for UUID);
    sub_100081050();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_10007FD08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100012634(&qword_1000D2800, qword_100099E20);
  sub_10002FD0C(v5);
  sub_10002FF34();
  __chkstk_darwin(v6);
  sub_100081010();
  type metadata accessor for ClientOverride.Server(0);
  sub_100019360();
  __chkstk_darwin(v7);
  sub_10002FC5C();
  sub_100037C08();
  sub_100012634(&qword_1000D4A80, &qword_100099F58);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v8);
  type metadata accessor for ClientOverride(0);
  sub_100019360();
  __chkstk_darwin(v9);
  sub_10002FC5C();
  v12 = (v11 - v10);
  *(v11 - v10) = xmmword_100095310;
  v32 = v13;
  v14 = v13[10];
  v15 = type metadata accessor for UUID();
  v33 = v14;
  sub_10001267C(v12 + v14, 1, 1, v15);
  v16 = sub_100012980(a1, a1[3]);
  sub_10008038C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    sub_100081080();
    sub_100012A18(a1);
    sub_100019064(*v12, v12[1]);

    if (v16)
    {
      sub_1000804A4(v12 + *(v3 + 28), type metadata accessor for ClientOverride.Server);
    }

    return sub_100049EA0(v12 + v33, &qword_1000D2800, qword_100099E20);
  }

  else
  {
    sub_10001E244();
    sub_100080FAC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100019064(*v12, v12[1]);
    *v12 = v34;
    v12[1] = v35;
    sub_1000810A8(1);
    sub_100080FAC();
    v12[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12[3] = v17;
    sub_1000810A8(2);
    sub_100080FAC();
    v12[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12[5] = v18;
    sub_100080F48();
    sub_100080344(v19, v20, &unk_100099E90);
    sub_100080FAC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000803E0(v2, v12 + v32[7]);
    sub_1000810A8(4);
    sub_100080FAC();
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100081094(v21, v22, v32[8]);
    sub_1000810A8(5);
    sub_100080FAC();
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100081094(v23, v24, v32[9]);
    sub_100080F00();
    sub_100080344(v25, v26, &protocol conformance descriptor for UUID);
    sub_100080FAC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = sub_100080F80();
    v28(v27);
    sub_10002F384(v3, v12 + v33);
    sub_100080444(v12, a2, type metadata accessor for ClientOverride);
    sub_100012A18(a1);
    return sub_1000804A4(v12, type metadata accessor for ClientOverride);
  }
}

uint64_t sub_100080200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007F73C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100080228(uint64_t a1)
{
  v2 = sub_10008038C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100080264(uint64_t a1)
{
  v2 = sub_10008038C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000802D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D2800, qword_100099E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100080344(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10008038C()
{
  result = qword_1000D4A88;
  if (!qword_1000D4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4A88);
  }

  return result;
}

uint64_t sub_1000803E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientOverride.Server(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100080444(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100019360();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000804A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100019360();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000804FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100019008(result, a2);
  }

  return result;
}

unint64_t sub_100080510()
{
  result = qword_1000D4AE8;
  if (!qword_1000D4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4AE8);
  }

  return result;
}

unint64_t sub_100080564()
{
  result = qword_1000D4AF8;
  if (!qword_1000D4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4AF8);
  }

  return result;
}

unint64_t sub_1000805B8()
{
  result = qword_1000D4B38;
  if (!qword_1000D4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4B38);
  }

  return result;
}

unint64_t sub_10008060C()
{
  result = qword_1000D4B40;
  if (!qword_1000D4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4B40);
  }

  return result;
}

unint64_t sub_100080660()
{
  result = qword_1000D4B48;
  if (!qword_1000D4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4B48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientOverride.Server.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000807B0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}