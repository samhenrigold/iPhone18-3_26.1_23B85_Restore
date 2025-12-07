uint64_t sub_100052308()
{
  sub_10005809C();
  v1 = v0;
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v5 = v1[25];
  v6 = v1[19];
  v7 = v1[20];
  sub_1000032B8((v7 + 176), *(v7 + 200));
  PredictedLocationsScheduleStoreType.recordRefresh()();
  v1[18] = v6;
  swift_getKeyPath();
  KeyPathComparator.init<A>(_:order:)();
  sub_100003020(&qword_1000A4100, &unk_100081060);
  sub_100006CD0(&qword_1000A4108, &qword_1000A4100, &unk_100081060, &protocol conformance descriptor for [A]);
  sub_100006CD0(&qword_1000A4110, &qword_1000A40F0, &qword_100081030, &protocol conformance descriptor for KeyPathComparator<A>);
  Sequence.sorted<A>(using:)();
  (*(v4 + 8))(v3, v5);
  sub_100015FC8();

  v1[32] = sub_100052AA0(v2, v7);
  v8 = [objc_opt_self() defaultStore];
  v1[33] = v8;
  sub_100030944(0, &qword_1000A4F48, INRelevantShortcut_ptr);
  sub_10004B08C();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1[34] = isa;
  v10 = sub_1000580B8();
  v1[35] = v10;
  v1[2] = v1;
  v1[3] = sub_1000525C0;
  v11 = swift_continuation_init();
  v1[17] = sub_100003020(&qword_1000A4F50, &unk_100082060);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000520D4;
  v1[13] = &unk_10009C018;
  v1[14] = v11;
  [v8 setRelevantShortcuts:isa forBundleIdentifier:v10 completionHandler:?];
  sub_10005805C();

  return _swift_continuation_await(v12);
}

uint64_t sub_1000525C0()
{
  sub_100030C4C();
  sub_100043668();
  v1 = v0[6];
  v0[36] = v1;
  v2 = v0[31];
  v3 = v0[30];
  if (v1)
  {
    v4 = sub_10005288C;
  }

  else
  {
    v4 = sub_1000526E8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000526E8()
{
  sub_100030E20();
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[24];

  static Logger.predictedLocationIntentDonations.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = sub_10004B070(v6);
  v8 = v0[32];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    v10 = sub_100036C5C(v8);

    *(v9 + 4) = v10;

    _os_log_impl(&_mh_execute_header, v5, v4, "Intent donation of %ld shortcut(s) was successful", v9, 0xCu);
    sub_10000FA7C(v9);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v11 = v0[20];
  (*(v0[22] + 8))(v0[24], v0[21]);
  sub_1000032B8((v11 + 176), *(v11 + 200));
  sub_100030F18();
  PredictedLocationsScheduleStoreType.recordSuccessfulExecution()();
  sub_100018858(v0[28], &qword_1000A4F70, &qword_1000820B0);

  sub_100030C70();

  return v12();
}

uint64_t sub_10005288C()
{
  v1 = v0[35];
  v3 = v0[33];
  v2 = v0[34];

  swift_willThrow();

  static Logger.predictedLocationIntentDonations.getter();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[32];
    v7 = sub_100037B44();
    v8 = swift_slowAlloc();
    *v7 = 134218499;
    v9 = sub_100036C5C(v6);

    *(v7 + 4) = v9;

    *(v7 + 12) = 2160;
    sub_1000436A8();
    *(v7 + 14) = v10;
    *(v7 + 22) = 2113;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    *v8 = v11;
    sub_10004AFE8();
    _os_log_impl(v12, v13, v14, v15, v16, 0x20u);
    sub_100018858(v8, &qword_1000A4030, &qword_100080F58);
    sub_10000FA7C(v8);
    sub_10000FA7C(v7);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v17 = sub_100030F18();
  v18(v17);
  sub_100018858(v0[28], &qword_1000A4F70, &qword_1000820B0);

  sub_100030C70();

  return v19();
}

void *sub_100052AA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = sub_100003020(&qword_1000A4F70, &qword_1000820B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = type metadata accessor for ResolvedPredictedLocation(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  sub_100057B8C(a1, v13);
  if (sub_100007374(v13, 1, v14) == 1)
  {
    sub_100018858(v13, &qword_1000A4F70, &qword_1000820B0);
    static Logger.predictedLocationIntentDonations.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No relevant predicted locations for intent donation. Will clear out all donations.", v22, 2u);
    }

    (*(v5 + 8))(v10, v4);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    sub_100057DDC(v13, v19, type metadata accessor for ResolvedPredictedLocation);
    static Logger.predictedLocationIntentDonations.getter();
    sub_1000579D8(v19, v17, type metadata accessor for ResolvedPredictedLocation);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v4;
      v28 = v27;
      v37 = v27;
      *v26 = 141558275;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      v29 = ResolvedPredictedLocation.description.getter();
      v36 = a2;
      v31 = v30;
      sub_100057E3C(v17, type metadata accessor for ResolvedPredictedLocation);
      v32 = sub_10000D9FC(v29, v31, &v37);

      *(v26 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "Found relevant predicted locations for intent donation; Will make a donation for location=%{private,mask.hash}s", v26, 0x16u);
      sub_100006994(v28);

      (*(v5 + 8))(v8, v35);
    }

    else
    {

      sub_100057E3C(v17, type metadata accessor for ResolvedPredictedLocation);
      (*(v5 + 8))(v8, v4);
    }

    v23 = sub_100052EE0(v19);
    sub_100057E3C(v19, type metadata accessor for ResolvedPredictedLocation);
  }

  return v23;
}

void *sub_100052EE0(uint64_t a1)
{
  v94 = type metadata accessor for WidgetNames();
  v91 = *(v94 - 8);
  v2 = __chkstk_darwin(v94);
  v93 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v92 = &v73 - v4;
  v5 = type metadata accessor for Location.Identifier();
  v79 = *(v5 - 8);
  v80 = v5;
  __chkstk_darwin(v5);
  v78 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResolvedPredictedLocation(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v90 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v85 = *(v10 - 8);
  v86 = v10;
  __chkstk_darwin(v10);
  v87 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Calendar();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v73 - v21;
  static Date.now.getter();
  v23 = *(v8 + 32);
  static Calendar.current.getter();
  Date.wc_addHours(_:calendar:)();
  v24 = *(v13 + 8);
  v83 = v12;
  v81 = v24;
  (v24)(v15, v12);
  sub_100057F40(&qword_1000A4058, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v82 = v23;
  LOBYTE(v8) = dispatch thunk of static Comparable.< infix(_:_:)();
  v27 = *(v17 + 8);
  v26 = v17 + 8;
  v25 = v27;
  v27(v20, v16);
  v89 = v27;
  v84 = v16;
  if (v8 & 1) != 0 && (static Calendar.current.getter(), Date.wc_addHours(_:calendar:)(), (v81)(v15, v83), v28 = dispatch thunk of static Comparable.< infix(_:_:)(), v25(v20, v16), (v28))
  {
    static Calendar.current.getter();
    v77 = v22;
    Date.wc_addDays(_:calendar:)();
    (v81)(v15, v83);
    v29 = dispatch thunk of static Comparable.< infix(_:_:)();
    v25(v20, v16);
    if (v29)
    {
      v30 = v25;
      v31 = _swiftEmptyArrayStorage;
      v33 = v87;
      v32 = v88;
      v22 = v77;
      v34 = a1;
      v35 = v90;
      goto LABEL_7;
    }

    v36 = &enum case for WidgetNames.DailyForecast(_:);
    v33 = v87;
    v32 = v88;
    v22 = v77;
    v34 = a1;
  }

  else
  {
    v36 = &enum case for WidgetNames.Forecast(_:);
    v33 = v87;
    v32 = v88;
    v34 = a1;
  }

  v35 = v90;
  sub_100003020(&qword_1000A4F78, &unk_1000820E0);
  v37 = v91;
  v38 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100081610;
  v40 = *v36;
  v31 = v39;
  (*(v37 + 104))(v39 + v38, v40, v94);
  v30 = v89;
LABEL_7:
  static Logger.predictedLocationIntentDonations.getter();
  sub_1000579D8(v34, v35, type metadata accessor for ResolvedPredictedLocation);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v76 = v42;
    v82 = v41;
    v43 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v96[0] = v75;
    v81 = v43;
    *v43 = 136315651;
    v44 = v31[2];
    v83 = v31;
    if (v44)
    {
      v77 = v22;
      v73 = v26;
      v74 = v34;
      v95 = _swiftEmptyArrayStorage;
      sub_100014558(0, v44, 0);
      v45 = v95;
      v46 = v91 + 16;
      v47 = *(v91 + 16);
      v48 = v31 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
      v91 = *(v91 + 72);
      v49 = (v46 - 8);
      do
      {
        v50 = v92;
        v51 = v94;
        v47(v92, v48, v94);
        v47(v93, v50, v51);
        v52 = String.init<A>(describing:)();
        v54 = v53;
        (*v49)(v50, v51);
        v95 = v45;
        v56 = v45[2];
        v55 = v45[3];
        if (v56 >= v55 >> 1)
        {
          sub_100014558((v55 > 1), v56 + 1, 1);
          v45 = v95;
        }

        v45[2] = v56 + 1;
        v57 = &v45[2 * v56];
        v57[4] = v52;
        v57[5] = v54;
        v48 += v91;
        --v44;
      }

      while (v44);
      v34 = v74;
      v33 = v87;
      v32 = v88;
      v22 = v77;
    }

    v59 = Array.description.getter();
    v61 = v60;

    v62 = sub_10000D9FC(v59, v61, v96);

    v63 = v81;
    *(v81 + 1) = v62;
    *(v63 + 6) = 2160;
    *(v63 + 14) = 1752392040;
    *(v63 + 11) = 2081;
    v64 = v78;
    v65 = v90;
    Location.identifier.getter();
    v66 = Location.Identifier.uniqueID.getter();
    v68 = v67;
    (*(v79 + 8))(v64, v80);
    sub_100057E3C(v65, type metadata accessor for ResolvedPredictedLocation);
    v69 = sub_10000D9FC(v66, v68, v96);

    *(v63 + 3) = v69;
    v70 = v82;
    _os_log_impl(&_mh_execute_header, v82, v76, "Relevant widgets are %s for location=%{private,mask.hash}s", v63, 0x20u);
    swift_arrayDestroy();

    v58 = (*(v85 + 8))(v33, v86);
    v30 = v89;
    v31 = v83;
  }

  else
  {

    sub_100057E3C(v35, type metadata accessor for ResolvedPredictedLocation);
    v58 = (*(v85 + 8))(v33, v86);
  }

  __chkstk_darwin(v58);
  *(&v73 - 2) = v32;
  *(&v73 - 1) = v34;
  v71 = sub_100032854(sub_100057BFC, (&v73 - 4), v31);

  v30(v22, v84);
  return v71;
}

id sub_100053870(NSObject *a1, uint64_t a2)
{
  v117 = a1;
  v118 = a2;
  v2 = type metadata accessor for Location.Identifier();
  v107 = *(v2 - 8);
  v108 = v2;
  __chkstk_darwin(v2);
  v106 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WidgetNames();
  v112 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v115 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v109 = &v96 - v8;
  __chkstk_darwin(v7);
  v105 = &v96 - v9;
  v101 = type metadata accessor for ResolvedPredictedLocation(0);
  v10 = __chkstk_darwin(v101);
  v110 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v104 = &v96 - v12;
  v13 = type metadata accessor for Logger();
  v113 = *(v13 - 8);
  v114 = v13;
  v14 = __chkstk_darwin(v13);
  v116 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v111 = &v96 - v16;
  v17 = sub_100003020(&qword_1000A3800, &unk_100080860);
  __chkstk_darwin(v17 - 8);
  v100 = &v96 - v18;
  v99 = type metadata accessor for Date();
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003020(&qword_1000A4F58, &qword_100082070);
  __chkstk_darwin(v20 - 8);
  v22 = &v96 - v21;
  v23 = type metadata accessor for INShortcut();
  v103 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v96 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v102 = &v96 - v26;
  v27 = type metadata accessor for Location();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = 0;
  v120 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v119 = v31;
  v120 = v33;
  v34._object = 0x8000000100085B20;
  v34._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x726568746165572ELL;
  v35._object = 0xEE00746E65746E49;
  String.append(_:)(v35);
  v36 = String._bridgeToObjectiveC()();

  v37 = INIntentCreate();

  if (!v37)
  {
    static Logger.predictedLocationIntentDonations.getter();
    v64 = v110;
    sub_1000579D8(v117, v110, type metadata accessor for ResolvedPredictedLocation);
    v65 = v112;
    v66 = *(v112 + 16);
    v66(v115, v118, v4);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    v69 = v4;
    if (os_log_type_enabled(v67, v68))
    {
      v70 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v119 = v118;
      *v70 = 141558531;
      *(v70 + 4) = 1752392040;
      *(v70 + 12) = 2081;
      v71 = v106;
      LODWORD(v117) = v68;
      Location.identifier.getter();
      v72 = Location.Identifier.uniqueID.getter();
      v74 = v73;
      (*(v107 + 8))(v71, v108);
      sub_100057E3C(v64, type metadata accessor for ResolvedPredictedLocation);
      v75 = sub_10000D9FC(v72, v74, &v119);

      *(v70 + 14) = v75;
      *(v70 + 22) = 2080;
      v76 = v115;
      v66(v109, v115, v69);
      v77 = String.init<A>(describing:)();
      v79 = v78;
      (*(v65 + 8))(v76, v69);
      v80 = sub_10000D9FC(v77, v79, &v119);

      *(v70 + 24) = v80;
      _os_log_impl(&_mh_execute_header, v67, v117, "Failed to make weather intent for location=%{private,mask.hash}s, widget=%s", v70, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v65 + 8))(v115, v4);
      sub_100057E3C(v64, type metadata accessor for ResolvedPredictedLocation);
    }

    (*(v113 + 8))(v116, v114);
    return 0;
  }

  v116 = v4;
  sub_100057B20(0xD000000000000011, 0x8000000100084790, v37, &selRef__setLaunchId_);
  sub_100057AC8(0xD000000000000020, 0x8000000100085B20, v37);
  type metadata accessor for WeatherLocation();
  v38 = v117;
  (*(v28 + 16))(v30, v117, v27);
  v39 = sub_1000545EC(v30);
  v40 = String._bridgeToObjectiveC()();
  [v37 setValue:v39 forKey:v40];

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v42 = String._bridgeToObjectiveC()();
  [v37 setValue:isa forKey:v42];

  v43 = v37;
  INShortcut.init(intent:)();
  if (sub_100007374(v22, 1, v23) == 1)
  {
    v115 = v43;
    sub_100018858(v22, &qword_1000A4F58, &qword_100082070);
    v44 = v111;
    static Logger.predictedLocationIntentDonations.getter();
    v45 = v104;
    sub_1000579D8(v38, v104, type metadata accessor for ResolvedPredictedLocation);
    v46 = v112;
    v47 = *(v112 + 16);
    v48 = v105;
    v49 = v116;
    v47(v105, v118, v116);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v119 = v118;
      *v52 = 141558531;
      *(v52 + 4) = 1752392040;
      *(v52 + 12) = 2081;
      v117 = v50;
      v53 = v48;
      v54 = v106;
      LODWORD(v110) = v51;
      Location.identifier.getter();
      v55 = Location.Identifier.uniqueID.getter();
      v57 = v56;
      (*(v107 + 8))(v54, v108);
      sub_100057E3C(v45, type metadata accessor for ResolvedPredictedLocation);
      v58 = sub_10000D9FC(v55, v57, &v119);

      *(v52 + 14) = v58;
      *(v52 + 22) = 2080;
      v47(v109, v53, v49);
      v59 = String.init<A>(describing:)();
      v61 = v60;
      (*(v46 + 8))(v53, v49);
      v62 = sub_10000D9FC(v59, v61, &v119);

      *(v52 + 24) = v62;
      v63 = v117;
      _os_log_impl(&_mh_execute_header, v117, v110, "Failed to make shortcut for location=%{private,mask.hash}s, widget=%s", v52, 0x20u);
      swift_arrayDestroy();

      (*(v113 + 8))(v111, v114);
    }

    else
    {

      (*(v46 + 8))(v48, v49);
      sub_100057E3C(v45, type metadata accessor for ResolvedPredictedLocation);
      (*(v113 + 8))(v44, v114);
    }

    return 0;
  }

  v82 = v102;
  v81 = v103;
  (*(v103 + 32))(v102, v22, v23);
  v83 = v98;
  static Date.now.getter();
  v84 = v100;
  v85 = v99;
  (*(v97 + 16))(v100, v38 + *(v101 + 28), v99);
  sub_100006BD4(v84, 0, 1, v85);
  v86 = objc_allocWithZone(INDateRelevanceProvider);
  v87 = sub_1000578D8(v83, v84);
  sub_100030944(0, &qword_1000A4F48, INRelevantShortcut_ptr);
  v88 = v96;
  (*(v81 + 16))(v96, v82, v23);
  v89 = sub_100054744(v88);
  v90 = WidgetNames.rawValue.getter();
  sub_100057B20(v90, v91, v89, &selRef_setWidgetKind_);
  sub_100003020(&qword_1000A4988, &qword_100081BA0);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_100081EA0;
  *(v92 + 32) = v87;
  sub_100030944(0, &qword_1000A4F60, INRelevanceProvider_ptr);
  v93 = v87;
  v94 = Array._bridgeToObjectiveC()().super.isa;

  [v89 setRelevanceProviders:v94];

  [v89 setShortcutRole:1];
  (*(v81 + 8))(v82, v23);
  return v89;
}

id sub_1000545EC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = Location.intentIdentifier.getter();
  v6 = v5;
  Location.name.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = sub_100057A64(v4, v6, v7, v3);

  sub_100030944(0, &qword_1000A4F68, CLPlacemark_ptr);
  v9 = v8;
  Location.coordinate.getter();
  v11 = v10;
  Location.coordinate.getter();
  v13 = [objc_allocWithZone(CLLocation) initWithLatitude:v11 longitude:v12];
  Location.name.getter();
  sub_100058090();
  v16 = sub_10005783C(v13, v14, v15, 0);
  [v9 setGeolocation:v16];

  type metadata accessor for Location();
  sub_100018904();
  (*(v17 + 8))(a1);
  return v9;
}

id sub_100054744(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = INShortcut._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithShortcut:isa];

  v5 = type metadata accessor for INShortcut();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1000547E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000435A4;

  return sub_100054870();
}

uint64_t sub_100054870()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_10000E960(v2);
  v1[4] = v3;
  v1[5] = sub_100058078();
  v4 = type metadata accessor for PredictedLocationsFeatureState();
  v1[6] = v4;
  sub_10000E960(v4);
  v1[7] = v5;
  v1[8] = sub_1000580D8();
  v1[9] = swift_task_alloc();
  v1[10] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F94();
  sub_100057F40(v6, 255, v7, &protocol conformance descriptor for LocIntelActor.Actor);
  sub_10004B08C();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[11] = v9;
  v1[12] = v8;

  return _swift_task_switch(sub_1000549C4, v9, v8);
}

uint64_t sub_1000549C4()
{
  sub_100030C58();
  v1 = v0[2];
  v2 = v1[30];
  v3 = v1[31];
  sub_1000032B8(v1 + 27, v2);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_100054A80;
  v5 = v0[9];

  return dispatch thunk of PredictedLocationsFeatureStateManagerType.intentDonationFeatureState()(v5, v2, v3);
}

uint64_t sub_100054A80()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 96);
  v6 = *(v0 + 88);

  return _swift_task_switch(sub_100054B8C, v6, v5);
}

uint64_t sub_100054B8C()
{
  sub_100030E20();
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = sub_100058018();
  v5(v4);
  sub_100030F18();
  v6 = static PredictedLocationsFeatureState.== infix(_:_:)();
  v7 = *(v3 + 8);
  v8 = sub_100030CE0();
  v7(v8);
  (v7)(v1, v2);
  if (v6)
  {
    sub_1000032B8((v0[2] + 96), *(v0[2] + 120));
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_100054D70;

    return sub_10004F30C();
  }

  else
  {

    static Logger.predictedLocationIntentDonations.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_100030F7C();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Skipping intent donation, feature is not active", v13, 2u);
      sub_10000FA7C(v13);
    }

    v14 = sub_100030CE0();
    v15(v14);

    sub_100030C70();

    return v16();
  }
}

uint64_t sub_100054D70()
{
  sub_100030E20();
  v2 = v1;
  v3 = *v0;
  sub_10000FA6C();
  *v4 = v3;
  v5 = *v0;
  *v4 = *v0;
  *(v3 + 120) = v2;

  v6 = swift_task_alloc();
  *(v3 + 128) = v6;
  *v6 = v5;
  v6[1] = sub_100054EB8;

  return sub_100052138(v2);
}

uint64_t sub_100054EB8()
{
  sub_100030C58();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 96);
  v6 = *(v0 + 88);

  return _swift_task_switch(sub_100054FE8, v6, v5);
}

uint64_t sub_100054FE8()
{
  sub_100030C4C();

  sub_100030C70();

  return v0();
}

uint64_t sub_10005505C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100043300;

  return sub_1000550EC();
}

uint64_t sub_1000550EC()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = sub_100003020(&qword_1000A4600, &qword_100081A30);
  sub_100006FF0(v2);
  v1[3] = sub_100058078();
  v1[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F94();
  sub_100057F40(v3, 255, v4, &protocol conformance descriptor for LocIntelActor.Actor);
  sub_10004B08C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100058090();
  v5 = sub_10005804C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000551BC()
{
  sub_100030C4C();
  v1 = *(v0 + 24);

  sub_10005802C();
  sub_10003C268(v1);
  sub_100018858(v1, &qword_1000A4600, &qword_100081A30);

  sub_100030C70();

  return v2();
}

uint64_t sub_100055244()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000435A4;

  return sub_1000552D4();
}

uint64_t sub_1000552D4()
{
  sub_100030C4C();
  *(v1 + 16) = v0;
  *(v1 + 24) = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F94();
  sub_100057F40(v2, 255, v3, &protocol conformance descriptor for LocIntelActor.Actor);
  sub_10004B08C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100058090();
  v4 = sub_10005804C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100055378()
{
  sub_100030C4C();

  sub_10005802C();
  sub_10003C4D8();
  sub_100030C70();

  return v0();
}

uint64_t sub_1000553D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000435A4;

  return sub_100055468();
}

uint64_t sub_100055468()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_10000E960(v2);
  v1[4] = v3;
  v1[5] = sub_100058078();
  v1[6] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F94();
  sub_100057F40(v4, 255, v5, &protocol conformance descriptor for LocIntelActor.Actor);
  sub_10004B08C();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v7;
  v1[8] = v6;

  return _swift_task_switch(sub_100055564, v7, v6);
}

uint64_t sub_100055564()
{
  sub_100030C58();
  static Logger.predictedLocationIntentDonations.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10004B070(v2))
  {
    v3 = sub_100030F7C();
    *v3 = 0;
    sub_10004AFE8();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_10000FA7C(v3);
  }

  v9 = sub_100030CE0();
  v10(v9);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_100046D7C;

  return sub_1000552D4();
}

uint64_t sub_100055668()
{
  sub_100030C4C();
  v1[18] = v2;
  v1[19] = v0;
  v3 = type metadata accessor for Logger();
  v1[20] = v3;
  sub_10000E960(v3);
  v1[21] = v4;
  v1[22] = sub_1000580D8();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v5 = type metadata accessor for WidgetNames();
  v1[26] = v5;
  sub_10000E960(v5);
  v1[27] = v6;
  v1[28] = sub_100058078();
  v7 = type metadata accessor for PredictedLocationsFeatureState();
  v1[29] = v7;
  sub_10000E960(v7);
  v1[30] = v8;
  v1[31] = sub_1000580D8();
  v1[32] = swift_task_alloc();
  v9 = type metadata accessor for SevereNotificationSubscription(0);
  v1[33] = v9;
  sub_100006FF0(v9);
  v1[34] = sub_100058078();
  v10 = type metadata accessor for ResolvedPredictedLocation(0);
  sub_100006FF0(v10);
  v1[35] = sub_1000580D8();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F94();
  sub_100057F40(v11, 255, v12, &protocol conformance descriptor for LocIntelActor.Actor);
  sub_10004B08C();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[40] = v14;
  v1[41] = v13;

  return _swift_task_switch(sub_100055894, v14, v13);
}

uint64_t sub_100055894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10005809C();
  sub_1000579D8(v14[18], v14[34], type metadata accessor for SevereNotificationSubscription);
  sub_100030F18();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = v14[34];
  if (EnumCaseMultiPayload == 1)
  {
    v17 = v14[19];
    sub_100057DDC(v14[34], v14[38], type metadata accessor for ResolvedPredictedLocation);
    sub_1000032B8((v17 + 216), *(v17 + 240));
    v18 = swift_task_alloc();
    v14[42] = v18;
    *v18 = v14;
    v18[1] = sub_100055A64;
    sub_10005805C();

    return dispatch thunk of PredictedLocationsFeatureStateManagerType.intentDonationFeatureState()(v19, v20, v21);
  }

  else
  {

    sub_100057E3C(v16, type metadata accessor for SevereNotificationSubscription);
    sub_100057FC4();
    v34 = v24;
    v35 = v23;

    sub_100030C70();
    sub_10005805C();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, a12, a13, a14);
  }
}

uint64_t sub_100055A64()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 328);
  v6 = *(v0 + 320);

  return _swift_task_switch(sub_100055B70, v6, v5);
}

uint64_t sub_100055B70(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[29];
  v4 = v1[30];
  v5 = sub_100058018();
  v6(v5);
  sub_100030F18();
  v7 = static PredictedLocationsFeatureState.== infix(_:_:)();
  v8 = *(v4 + 8);
  v9 = sub_100030CE0();
  v8(v9);
  (v8)(v2, v3);
  if (v7)
  {
    v10 = v1[38];
    v11 = v1[28];
    v12 = sub_100058018();
    v13(v12);
    v14 = sub_100053870(v10, v11);
    v1[43] = v14;
    v15 = sub_100030CE0();
    v16(v15);
    if (v14)
    {
      v17 = [objc_opt_self() defaultStore];
      v1[44] = v17;
      sub_100003020(&qword_1000A4988, &qword_100081BA0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100081EA0;
      *(v18 + 32) = v14;
      sub_100030944(0, &qword_1000A4F48, INRelevantShortcut_ptr);
      v19 = v14;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v1[45] = isa;

      v21 = sub_1000580B8();
      v1[46] = v21;
      v1[2] = v1;
      v1[3] = sub_1000560A8;
      v22 = swift_continuation_init();
      v1[17] = sub_100003020(&qword_1000A4F50, &unk_100082060);
      v1[10] = _NSConcreteStackBlock;
      v1[11] = 1107296256;
      v1[12] = sub_1000520D4;
      v1[13] = &unk_10009BFF0;
      v1[14] = v22;
      [v17 setRelevantShortcuts:isa forBundleIdentifier:v21 completionHandler:v1 + 10];

      return _swift_continuation_await(v1 + 2);
    }

    v33 = v1[36];
    v34 = v1[24];

    static Logger.predictedLocationIntentDonations.getter();
    v35 = sub_100057FE4();
    sub_1000579D8(v35, v33, v36);
    v37 = v34;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v1[38];
    v42 = v1[36];
    v43 = v1[24];
    v45 = v1[20];
    v44 = v1[21];
    if (v40)
    {
      v57 = v1[20];
      v46 = swift_slowAlloc();
      v58 = sub_100037B44();
      *v46 = 141558275;
      sub_1000436A8();
      *(v46 + 4) = v47;
      *(v46 + 12) = 2081;
      v37 = v42;
      ResolvedPredictedLocation.description.getter();
      v56 = v41;
      sub_100058000();
      sub_100057E3C(v42, v48);
      v49 = sub_100030CE0();
      v52 = sub_10000D9FC(v49, v50, v51);

      *(v46 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to make shortcut for severe weather notification subscription; predictedLocation=%{private,mask.hash}s", v46, 0x16u);
      sub_100006994(v58);
      sub_10000FA7C(v58);
      sub_10000FA7C(v46);

      (*(v44 + 8))(v43, v57);
      v32 = v56;
    }

    else
    {

      sub_100058000();
      sub_100057E3C(v42, v53);
      (*(v44 + 8))(v43, v45);
      v32 = v41;
    }

    v31 = v37;
  }

  else
  {

    static Logger.predictedLocationIntentDonations.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v1[38];
    v27 = v1[23];
    v28 = v1[20];
    v29 = v1[21];
    if (v25)
    {
      v30 = sub_100030F7C();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Skipping intent donation, feature is not active", v30, 2u);
      sub_10000FA7C(v30);
    }

    (*(v29 + 8))(v27, v28);
    sub_100057FAC();
    v32 = v26;
  }

  sub_100057E3C(v32, v31);
  sub_100057FC4();

  sub_100030C70();

  return v54();
}

uint64_t sub_1000560A8()
{
  sub_100030C4C();
  sub_100043668();
  v1 = v0[6];
  v0[47] = v1;
  v2 = v0[41];
  v3 = v0[40];
  if (v1)
  {
    v4 = sub_100056420;
  }

  else
  {
    v4 = sub_1000561D0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000561D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10005809C();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v26 = v22[45];
  v25 = v22[46];
  v27 = v22[44];
  v28 = v22[37];

  static Logger.predictedLocationIntentDonations.getter();
  v29 = sub_100057FE4();
  sub_1000579D8(v29, v28, v30);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v22[37];
  v35 = v22[25];
  v37 = v22[20];
  v36 = v22[21];
  if (v33)
  {
    v62 = v22[25];
    v38 = swift_slowAlloc();
    v39 = sub_100037B44();
    a11 = v39;
    *v38 = 141558275;
    sub_1000436A8();
    *(v38 + 4) = v40;
    *(v38 + 12) = 2081;
    v41 = ResolvedPredictedLocation.description.getter();
    v43 = v42;
    sub_100057FAC();
    sub_100057E3C(v34, v44);
    v45 = sub_10000D9FC(v41, v43, &a11);

    *(v38 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v31, v32, "Intent donation was successful for severe weather notification subscription; predictedLocation=%{private,mask.hash}s", v38, 0x16u);
    sub_100006994(v39);
    sub_10000FA7C(v39);
    sub_10000FA7C(v38);

    (*(v36 + 8))(v62, v37);
  }

  else
  {

    sub_100057FAC();
    sub_100057E3C(v34, v46);
    (*(v36 + 8))(v35, v37);
  }

  v47 = v22[43];
  v48 = v22[38];
  sub_1000032B8((v22[19] + 176), *(v22[19] + 200));
  PredictedLocationsScheduleStoreType.recordSuccessfulExecution()();

  sub_100057FAC();
  sub_100057E3C(v48, v49);
  sub_100057FC4();
  v61 = v51;
  v63 = v50;

  sub_100030C70();
  sub_10005805C();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, v61, v63, a11, a12, a13, a14);
}

uint64_t sub_100056420()
{
  v38 = v0;
  v1 = v0[46];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[35];

  swift_willThrow();

  static Logger.predictedLocationIntentDonations.getter();
  v5 = sub_100057FE4();
  sub_1000579D8(v5, v4, v6);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[43];
  v11 = v0[38];
  v12 = v0[35];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[20];
  if (v9)
  {
    v36 = v0[20];
    v16 = swift_slowAlloc();
    v35 = v10;
    v17 = swift_slowAlloc();
    v18 = sub_100037B44();
    v37 = v18;
    *v16 = 141558787;
    sub_1000436A8();
    *(v16 + 4) = v19;
    *(v16 + 12) = 2081;
    v33 = v13;
    v34 = v11;
    v20 = ResolvedPredictedLocation.description.getter();
    v22 = v21;
    sub_100057FAC();
    v32 = v23;
    sub_100057E3C(v12, v24);
    v25 = sub_10000D9FC(v20, v22, &v37);

    *(v16 + 14) = v25;
    *(v16 + 22) = 2160;
    sub_1000436A8();
    *(v16 + 24) = v26;
    *(v16 + 32) = 2113;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 34) = v27;
    *v17 = v27;
    _os_log_impl(&_mh_execute_header, v7, v8, "Intent donation failed for severe weather notification subscription; predictedLocation=%{private,mask.hash}s, error=%{private,mask.hash}@", v16, 0x2Au);
    sub_100018858(v17, &qword_1000A4030, &qword_100080F58);
    sub_10000FA7C(v17);
    sub_100006994(v18);
    sub_10000FA7C(v18);
    sub_10000FA7C(v16);

    (*(v14 + 8))(v33, v36);
    v28 = v34;
    v29 = v32;
  }

  else
  {

    sub_100057E3C(v12, type metadata accessor for ResolvedPredictedLocation);
    (*(v14 + 8))(v13, v15);
    v28 = v11;
    v29 = type metadata accessor for ResolvedPredictedLocation;
  }

  sub_100057E3C(v28, v29);
  sub_100057FC4();

  sub_100030C70();

  return v30();
}

uint64_t sub_10005675C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v7 = sub_100006FF0(v6);
  __chkstk_darwin(v7);
  v8 = type metadata accessor for Logger();
  sub_100006FBC();
  v10 = v9;
  v12 = __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  static Logger.predictedLocationIntentDonations.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = sub_100030F7C();
    v49 = v14;
    v20 = v3;
    v21 = a2;
    v22 = a1;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Running predicted locations manager as xpc activity", v19, 2u);
    v24 = v23;
    a1 = v22;
    a2 = v21;
    v3 = v20;
    v14 = v49;
    sub_10000FA7C(v24);
  }

  v25 = *(v10 + 8);
  v25(v16, v8);
  if (WDWeatherAppIsInstalled())
  {
    type metadata accessor for TaskPriority();
    sub_100030DE0();
    sub_100006BD4(v26, v27, v28, v29);

    v30 = static LocIntelActor.shared.getter();
    sub_100057F94();
    v33 = sub_100057F40(v31, 255, v32, &protocol conformance descriptor for LocIntelActor.Actor);
    v34 = swift_allocObject();
    v34[2] = v30;
    v34[3] = v33;
    v34[4] = v3;
    v34[5] = a1;
    v34[6] = a2;
  }

  else
  {
    static Logger.predictedLocationIntentDonations.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = sub_100030F7C();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Weather app was uninstalled; rejecting xpc run instructions", v37, 2u);
      sub_10000FA7C(v37);
    }

    v25(v14, v8);
    type metadata accessor for TaskPriority();
    sub_100030DE0();
    sub_100006BD4(v38, v39, v40, v41);

    v42 = static LocIntelActor.shared.getter();
    sub_100057F94();
    v45 = sub_100057F40(v43, 255, v44, &protocol conformance descriptor for LocIntelActor.Actor);
    v46 = swift_allocObject();
    v46[2] = v42;
    v46[3] = v45;
    v46[4] = a1;
    v46[5] = a2;
  }

  sub_10006C7F8();

  return 1;
}

uint64_t sub_100056B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  sub_100006FBC();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (WDWeatherAppIsInstalled())
  {
    sub_10005802C();
    return sub_10003BBA0(a1, a2);
  }

  else
  {
    static Logger.predictedLocationIntentDonations.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_100030F7C();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Weather app was uninstalled; rejecting verification request", v13, 2u);
      sub_10000FA7C(v13);
    }

    (*(v6 + 8))(v9, v4);
    type metadata accessor for Date();
    sub_100030DE0();
    sub_100006BD4(v14, v15, v16, v17);
    return 0;
  }
}

uint64_t sub_100056C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_100003020(&qword_1000A3800, &unk_100080860);
  v5[4] = swift_task_alloc();
  v5[5] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F40(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100049F28, v7, v6);
}

uint64_t sub_100056D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100003020(&qword_1000A3800, &unk_100080860);
  v6[5] = swift_task_alloc();
  sub_100003020(&qword_1000A4600, &qword_100081A30);
  v6[6] = swift_task_alloc();
  v6[7] = type metadata accessor for PredictedLocationsRefresh(0);
  v6[8] = swift_task_alloc();
  v6[9] = static LocIntelActor.shared.getter();
  v7 = swift_task_alloc();
  v6[10] = v7;
  *v7 = v6;
  v7[1] = sub_100056EBC;

  return sub_100054870();
}

uint64_t sub_100056EBC()
{
  sub_100030C4C();
  sub_100043668();
  v1 = *v0;
  sub_10000FA6C();
  *v2 = v1;

  type metadata accessor for LocIntelActor.Actor();
  sub_100057F94();
  sub_100057F40(v3, 255, v4, &protocol conformance descriptor for LocIntelActor.Actor);
  sub_10004B08C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100058090();
  v5 = sub_10005804C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100056FF4()
{
  sub_100030E20();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  sub_10005802C();
  v4 = type metadata accessor for Date();
  sub_100030DE0();
  sub_100006BD4(v5, v6, v7, v4);
  sub_10003AA50(v3, 1, v2);
  sub_100018858(v3, &qword_1000A3800, &unk_100080860);
  if (sub_100007374(v2, 1, v1) == 1)
  {
    v8 = v0[5];
    v9 = v0[3];
    sub_100018858(v0[6], &qword_1000A4600, &qword_100081A30);
    sub_100030DE0();
    sub_100006BD4(v10, v11, v12, v4);
    v9(v8, 0, 1);
    sub_100018858(v8, &qword_1000A3800, &unk_100080860);
  }

  else
  {
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[5];
    v16 = v0[3];
    sub_100057DDC(v0[6], v13, type metadata accessor for PredictedLocationsRefresh);
    (*(*(v4 - 8) + 16))(v15, v13, v4);
    sub_100006BD4(v15, 0, 1, v4);
    v16(v15, *(v13 + *(v14 + 20)), 0);
    sub_100018858(v15, &qword_1000A3800, &unk_100080860);
    sub_100057E3C(v13, type metadata accessor for PredictedLocationsRefresh);
  }

  sub_100030C70();

  return v17();
}

uint64_t sub_1000571FC(uint64_t a1, int a2)
{
  v4 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v5 = sub_100006FF0(v4);
  result = __chkstk_darwin(v5);
  v7 = *(v2 + 256);
  if (v7)
  {
    *(v2 + 256) = a2;
    if (v7 != a2)
    {
      type metadata accessor for TaskPriority();
      sub_100030DE0();
      sub_100006BD4(v8, v9, v10, v11);

      v12 = static LocIntelActor.shared.getter();
      sub_100057F94();
      v15 = sub_100057F40(v13, 255, v14, &protocol conformance descriptor for LocIntelActor.Actor);
      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      *(v16 + 24) = v15;
      *(v16 + 32) = v7;
      *(v16 + 36) = a2;
      *(v16 + 40) = v2;
      sub_10006C7F8();
    }
  }

  else
  {
    *(v2 + 256) = a2;
  }

  return result;
}

uint64_t sub_100057334(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  *(v6 + 80) = a4;
  *(v6 + 84) = a5;
  v7 = type metadata accessor for Logger();
  *(v6 + 24) = v7;
  *(v6 + 32) = *(v7 - 8);
  *(v6 + 40) = swift_task_alloc();
  *(v6 + 48) = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F40(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 56) = v9;
  *(v6 + 64) = v8;

  return _swift_task_switch(sub_10005745C, v9, v8);
}

uint64_t sub_10005745C()
{
  sub_100030E20();
  static Logger.predictedLocationIntentDonations.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10004B070(v2))
  {
    v4 = *(v0 + 80);
    v3 = *(v0 + 84);
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 4) = v4;
    *(v5 + 8) = 1024;
    *(v5 + 10) = v3;
    sub_10004AFE8();
    _os_log_impl(v6, v7, v8, v9, v10, 0xEu);
    sub_10000FA7C(v5);
  }

  v11 = sub_100030CE0();
  v12(v11);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_10004A8B0;

  return sub_1000550EC();
}

id sub_10005758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = String._bridgeToObjectiveC()();

  if (a6)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for WeatherLocation();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id sub_10005770C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WeatherLocation();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10005779C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WeatherLocation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10005783C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() placemarkWithLocation:a1 name:v6 postalAddress:a4];

  return v7;
}

id sub_1000578D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v7 = type metadata accessor for Date();
  isa = 0;
  if (sub_100007374(a2, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v7 - 8) + 8))(a2, v7);
  }

  v9 = [v3 initWithStartDate:v6.super.isa endDate:isa];

  (*(*(v7 - 8) + 8))(a1, v7);
  return v9;
}

uint64_t sub_1000579D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100018904();
  (*(v5 + 16))(a2, a1);
  return a2;
}

id sub_100057A64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [a4 initWithIdentifier:v6 displayString:a3];

  return v7;
}

void sub_100057AC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 _setExtensionBundleId:v4];
}

void sub_100057B20(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

uint64_t sub_100057B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A4F70, &qword_1000820B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100057BFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_100053870(*(v2 + 24), a1);
  *a2 = result;
  return result;
}

uint64_t sub_100057C44()
{
  sub_100030E20();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_100030BFC(v3);
  *v4 = v5;
  v6 = sub_10004AFC0(v4);

  return sub_100056C7C(v6, v7, v8, v2, v1);
}

uint64_t sub_100057CE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100057D30()
{
  sub_100030E20();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_100030BFC(v4);
  *v5 = v6;
  v7 = sub_10004AFC0(v5);

  return sub_100056D7C(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_100057DDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100018904();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100057E3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100018904();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100057E94()
{
  sub_100030E20();
  v1 = *(v0 + 32);
  v2 = *(v0 + 36);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = sub_100030BFC(v4);
  *v5 = v6;
  v7 = sub_10004AFC0(v5);

  return sub_100057334(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_100057F40(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100058078()
{

  return swift_task_alloc();
}

NSString sub_1000580B8()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_1000580D8()
{

  return swift_task_alloc();
}

uint64_t sub_1000580F0(uint64_t a1)
{
  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5018, &qword_100082168);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5020, &qword_100082170);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  type metadata accessor for PrecipitationNotificationsManager();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  sub_100003020(&qword_1000A5028, &unk_100082178);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  type metadata accessor for NotificationAuthorizationManager();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3B38, &qword_100080A50);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5030, &qword_100082188);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3B28, &qword_100080A40);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3B30, &qword_100080A48);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

void *sub_100058398(void *a1)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5020, &qword_100082170);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v7[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B38, &qword_100080A50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5090, &qword_1000821E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v3 = result;
    v4 = objc_allocWithZone(type metadata accessor for NotificationsManager(0));
    return sub_10006D0E0(v7, v5, v6, v3);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000584C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  v3 = type metadata accessor for PrecipitationNotificationsManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &protocol witness table for PrecipitationNotificationsManager;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10005853C(void *a1)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50A8, &qword_1000821F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5040, &qword_100082190);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5048, &qword_100082198);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5050, &qword_1000821A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5058, &qword_1000821A8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50A0, &qword_1000821F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5030, &qword_100082188);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50C8, &qword_100082228);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v6)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5028, &unk_100082178);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v4)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5090, &qword_1000821E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50D0, &qword_100082240);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v3 = objc_allocWithZone(type metadata accessor for PrecipitationNotificationsManager());
    return PrecipitationNotificationsManager.init(weatherDataService:policyHandler:notificationContentFactory:notificationDeliveryScheduler:notificationFetchScheduler:notificationSubscriptionManager:notificationConfigurationProvider:notificationAuthorizationStatusProvider:locationManager:locationComparator:notificationsEnablementTracker:notificationAccuracyTracker:)();
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_100058914@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for NotificationLocationComparator();
    swift_allocObject();
    result = NotificationLocationComparator.init(appConfigurationManager:)();
    a2[3] = v4;
    a2[4] = &protocol witness table for NotificationLocationComparator;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000589BC(void *a1)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5018, &qword_100082168);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A58, &qword_100080990);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v6[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100030944(0, &qword_1000A5038, UNUserNotificationCenter_ptr);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v4 = result;
    v5 = objc_allocWithZone(type metadata accessor for NotificationAuthorizationManager());
    return sub_10000E9A0(v3, v6, v4);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_100058AE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5060, &qword_1000821B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v135)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5068, &qword_1000821B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v133)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5080, &qword_1000821D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v131)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B28, &qword_100080A40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v129)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B30, &qword_100080A48);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v127)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50A0, &qword_1000821F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v125[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v124[3])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5028, &unk_100082178);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v123[3])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50C8, &qword_100082228);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v122[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = result;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5090, &qword_1000821E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = result;
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for SevereNotificationsPowerLogger();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = result;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A70, &unk_100082230);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v121)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v93 = v7;
  v94 = v6;
  v95 = v5;
  v96 = a2;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA8, &unk_1000809E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v119[3])
  {
    v8 = sub_1000123F0(v134, v135);
    v92 = &v75;
    __chkstk_darwin(v8);
    v10 = (&v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = sub_1000123F0(v132, v133);
    v91 = &v75;
    __chkstk_darwin(v12);
    v14 = (&v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = sub_1000123F0(v130, v131);
    v90 = &v75;
    __chkstk_darwin(v16);
    v18 = (&v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = sub_1000123F0(v128, v129);
    v89 = &v75;
    __chkstk_darwin(v20);
    v22 = (&v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = sub_1000123F0(v126, v127);
    v88 = &v75;
    __chkstk_darwin(v24);
    v26 = (&v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = sub_1000123F0(v120, v121);
    v87 = &v75;
    __chkstk_darwin(v28);
    v30 = (&v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    v32 = *v10;
    v33 = *v14;
    v34 = *v18;
    v35 = *v22;
    v36 = *v26;
    v37 = *v30;
    v38 = type metadata accessor for APSConnectionManager();
    v118[4] = &off_10009C8C0;
    v118[3] = v38;
    v118[0] = v32;
    v81 = type metadata accessor for CloudChannelManager();
    v117 = &off_10009C190;
    v116 = v81;
    v115[0] = v33;
    v80 = type metadata accessor for SevereWeatherEventDataProvider();
    v114 = &off_10009C498;
    v113 = v80;
    v112[0] = v34;
    v79 = type metadata accessor for SevereNotificationContentFactory();
    v111 = &off_10009B530;
    v110 = v79;
    v109[0] = v35;
    v77 = type metadata accessor for SevereNotificationScheduler();
    v107 = v77;
    v108 = &off_10009BB58;
    v106[0] = v36;
    v76 = type metadata accessor for PredictedLocationsNotificationLocationsProvider();
    v104 = v76;
    v105 = &off_10009C408;
    v103[0] = v37;
    type metadata accessor for SevereNotificationsManager();
    v39 = swift_allocObject();
    v40 = sub_1000123F0(v118, v38);
    v86 = &v75;
    __chkstk_darwin(v40);
    v42 = (&v75 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v42);
    v44 = sub_1000123F0(v115, v116);
    v85 = &v75;
    __chkstk_darwin(v44);
    v46 = (&v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46);
    v48 = sub_1000123F0(v112, v113);
    v84 = &v75;
    __chkstk_darwin(v48);
    v50 = (&v75 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50);
    v52 = sub_1000123F0(v109, v110);
    v83 = &v75;
    __chkstk_darwin(v52);
    v54 = (&v75 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v54);
    v56 = sub_1000123F0(v106, v107);
    v82 = &v75;
    __chkstk_darwin(v56);
    v58 = (&v75 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v58);
    v60 = sub_1000123F0(v103, v104);
    v78 = &v75;
    __chkstk_darwin(v60);
    v62 = (&v75 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v63 + 16))(v62);
    v64 = *v42;
    v65 = *v46;
    v66 = *v50;
    v67 = *v54;
    v68 = *v58;
    v69 = *v62;
    v102[3] = v38;
    v102[4] = &off_10009C8C0;
    v102[0] = v64;
    v101[4] = &off_10009C190;
    v101[3] = v81;
    v101[0] = v65;
    v100[3] = v80;
    v100[4] = &off_10009C498;
    v100[0] = v66;
    v99[3] = v79;
    v99[4] = &off_10009B530;
    v99[0] = v67;
    v98[3] = v77;
    v98[4] = &off_10009BB58;
    v98[0] = v68;
    v97[3] = v76;
    v97[4] = &off_10009C408;
    v97[0] = v69;
    sub_100030944(0, &qword_1000A4188, NSOperationQueue_ptr);
    *(v39 + 480) = static NSOperationQueue.notifications.getter();
    *(v39 + 496) = 0;
    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.notifications.getter();
    type metadata accessor for Debouncer();
    swift_allocObject();
    *(v39 + 504) = Debouncer.init(interval:queue:)();
    sub_100006930(v102, v39 + 16);
    sub_100006930(v101, v39 + 56);
    sub_100006930(v100, v39 + 96);
    sub_100006930(v99, v39 + 136);
    sub_100006930(v98, v39 + 176);
    sub_100006930(v125, v39 + 216);
    sub_100006930(v124, v39 + 256);
    sub_100006930(v123, v39 + 296);
    sub_100006930(v122, v39 + 336);
    v70 = v94;
    *(v39 + 376) = v95;
    *(v39 + 384) = v70;
    *(v39 + 392) = v93;
    sub_100006930(v97, v39 + 400);
    sub_100006930(v119, v39 + 440);
    v71 = [objc_allocWithZone(NSOperationQueue) init];
    *(v39 + 488) = v71;
    [v71 setMaxConcurrentOperationCount:1];
    v72 = *(v39 + 488);
    v73 = static OS_dispatch_queue.notifications.getter();
    [v72 setUnderlyingQueue:v73];

    sub_100006994(v119);
    sub_100006994(v122);
    sub_100006994(v123);
    sub_100006994(v124);
    sub_100006994(v125);
    sub_100006994(v97);
    sub_100006994(v98);
    sub_100006994(v99);
    sub_100006994(v100);
    sub_100006994(v101);
    sub_100006994(v102);
    sub_100006994(v103);
    sub_100006994(v106);
    sub_100006994(v109);
    sub_100006994(v112);
    sub_100006994(v115);
    sub_100006994(v118);
    sub_100006994(v120);
    sub_100006994(v126);
    sub_100006994(v128);
    sub_100006994(v130);
    sub_100006994(v132);
    result = sub_100006994(v134);
    v74 = v96;
    *v96 = v39;
    v74[1] = &off_10009B558;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_100059A94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for NotificationConfigurationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_1000032B8(a1, a1[3]);
    sub_100003020(&qword_1000A5050, &qword_1000821A0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      v5 = type metadata accessor for PreciptationNotificationConfigurationProvider();
      swift_allocObject();
      result = PreciptationNotificationConfigurationProvider.init(notificationConfigurationManager:notificationDeliveryScheduler:)();
      a2[3] = v5;
      a2[4] = &protocol witness table for PreciptationNotificationConfigurationProvider;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100059B84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5088, &qword_1000821D8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v4 = type metadata accessor for SevereNotificationContentFactory();
    v5 = swift_allocObject();
    result = sub_100006D78(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_10009B530;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100059C30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100030944(0, &qword_1000A5038, UNUserNotificationCenter_ptr);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A68, &unk_1000809A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v22)
  {
    v7 = sub_1000123F0(v21, v22);
    __chkstk_darwin(v7);
    v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for PredictedLocationsIntentDonationManager();
    v20[3] = v12;
    v20[4] = &off_10009BFE0;
    v20[0] = v11;
    v13 = type metadata accessor for SevereNotificationScheduler();
    v14 = swift_allocObject();
    v15 = sub_1000123F0(v20, v12);
    __chkstk_darwin(v15);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v14[7] = v12;
    v14[8] = &off_10009BFE0;
    v14[3] = v6;
    v14[4] = v19;
    v14[2] = v5;
    sub_100006994(v20);
    result = sub_100006994(v21);
    a2[3] = v13;
    a2[4] = &off_10009BB58;
    *a2 = v14;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100059EF0()
{
  sub_100030944(0, &qword_1000A5038, UNUserNotificationCenter_ptr);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5040, &qword_100082190);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5048, &qword_100082198);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5050, &qword_1000821A0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5058, &qword_1000821A8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5060, &qword_1000821B0);
  RegistrationContainer.register<A>(_:name:factory:)();
  Definition.thenConfigure(_:)();

  sub_100003020(&qword_1000A5068, &qword_1000821B8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5070, &qword_1000821C0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5078, &qword_1000821C8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5080, &qword_1000821D0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5088, &qword_1000821D8);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for APSIncomingMessageStore();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5090, &qword_1000821E0);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for SevereNotificationsPowerLogger();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5098, &qword_1000821E8);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10005A39C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_1000032B8(a1, a1[3]);
    sub_100030944(0, &qword_1000A5038, UNUserNotificationCenter_ptr);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = type metadata accessor for PrecipitationNotificationDeliveryScheduler();
      swift_allocObject();
      result = PrecipitationNotificationDeliveryScheduler.init(notificationStore:userNotificationCenter:)();
      a2[3] = v5;
      a2[4] = &protocol witness table for PrecipitationNotificationDeliveryScheduler;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10005A494@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_1000032B8(a1, a1[3]);
    sub_100003020(&qword_1000A3AA0, &qword_100082220);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      Scheduler = type metadata accessor for PrecipitationNotificationFetchScheduler();
      swift_allocObject();
      result = PrecipitationNotificationFetchScheduler.init(notificationStore:activityManager:)();
      a2[3] = Scheduler;
      a2[4] = &protocol witness table for PrecipitationNotificationFetchScheduler;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10005A590@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for APSConnectionManager();
  result = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  a1[4] = &off_10009C8C0;
  *a1 = result;
  return result;
}

uint64_t sub_10005A5DC(void *a1, void *a2)
{
  v3 = sub_1000032B8(a1, a1[3]);
  sub_1000032B8(a2, a2[3]);
  type metadata accessor for APSIncomingMessageStore();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10005C2F4(result, *v3, &off_10009C4D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10005A66C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5098, &qword_1000821E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5060, &qword_1000821B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000032B8(a1, a1[3]);
  type metadata accessor for NotificationConfigurationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v6 = result;
    v7 = sub_1000123F0(v13, v14);
    __chkstk_darwin(v7);
    v9 = (&v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = sub_10005C448(v5, *v9, v6);
    sub_100006994(v13);
    result = type metadata accessor for CloudChannelManager();
    a2[3] = result;
    a2[4] = &off_10009C190;
    *a2 = v11;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_10005A83C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for NotificationConfigurationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5078, &qword_1000821C8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v24)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B10, &unk_100080A30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v22)
  {
    v6 = sub_1000123F0(v23, v24);
    __chkstk_darwin(v6);
    v8 = (&v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v11 = type metadata accessor for CloudChannelMapManager();
    v20[3] = v11;
    v20[4] = &off_10009BF58;
    v20[0] = v10;
    v12 = type metadata accessor for CloudChannelMapProvider();
    v13 = swift_allocObject();
    v14 = sub_1000123F0(v20, v11);
    __chkstk_darwin(v14);
    v16 = (&v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v16;
    v13[6] = v11;
    v13[7] = &off_10009BF58;
    v13[2] = v5;
    v13[3] = v18;
    sub_100006D78(&v21, (v13 + 8));
    sub_100006994(v20);
    result = sub_100006994(v23);
    a2[3] = v12;
    a2[4] = &off_10009B078;
    *a2 = v13;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_10005AAFC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50B0, &unk_100082200);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    v4 = type metadata accessor for CloudChannelMapManager();
    swift_allocObject();
    result = sub_100051138(&v5);
    a2[3] = v4;
    a2[4] = &off_10009BF58;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005ABA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50A8, &qword_1000821F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for SevereWeatherEventDataProvider();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_10009C498;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005AC6C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_10005ACD4(void *a1)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = result;
    type metadata accessor for APSIncomingMessageStore();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10005AD80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50A0, &qword_1000821F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    type metadata accessor for NotificationEnablementTracker();
    swift_allocObject();
    result = NotificationEnablementTracker.init(subscriptionManager:)();
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005AE18(void *a1)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    type metadata accessor for SevereNotificationsPowerLogger();
    swift_allocObject();
    return SevereNotificationsPowerLogger.init(notificationStore:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005AECC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  type metadata accessor for LazyOptions();
  sub_100018904();
  __chkstk_darwin(v8);
  sub_100006930(a1, v11);
  v9 = swift_allocObject();
  sub_100006D78(v11, v9 + 16);
  *&v11[0] = _swiftEmptyArrayStorage;
  sub_10005B100();
  sub_100003020(&qword_1000A3AF8, &qword_100080A20);
  sub_1000129F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100003020(a3, a4);
  swift_allocObject();
  return ReferenceCountedLazy.init(options:loadBlock:)();
}

void *sub_10005B004@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5070, &qword_1000821C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    return sub_100006D78(&v4, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_10005B0C0()
{
  sub_100006994((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10005B100()
{
  result = qword_1000A3AF0;
  if (!qword_1000A3AF0)
  {
    type metadata accessor for LazyOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3AF0);
  }

  return result;
}

void *sub_10005B160()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_10005B1EC(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_10005B1AC(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_10005B1EC((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void *sub_10005B1EC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003020(&qword_1000A50B8, &qword_100082210);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003020(&qword_1000A50C0, &qword_100082218);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10005B31C()
{
  sub_10005C6A0();
  if (v4)
  {
    sub_10005C614();
    if (v5 != v6)
    {
      sub_10005C668();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10005C604();
    }
  }

  sub_10005C658();
  if (v3)
  {
    sub_100003020(&qword_1000A3B90, &qword_100080AB0);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * ((v8 - 32) / 40);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[40 * v2] <= v9)
    {
      memmove(v9, v10, 40 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10005B414()
{
  sub_10005C58C();
  if (v4)
  {
    sub_10005C59C();
    if (v6 != v7)
    {
      sub_10005C64C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10005C5AC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10005C674(v2, v5, &qword_1000A50D8, &qword_100082248);
  sub_10005C640();
  type metadata accessor for LocationInfo();
  sub_10005105C();
  sub_100043674();
  if (v1)
  {
    sub_10005C624(&type metadata accessor for LocationInfo, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10005C5BC();
  }
}

void sub_10005B4EC()
{
  sub_10005C58C();
  if (v4)
  {
    sub_10005C59C();
    if (v6 != v7)
    {
      sub_10005C64C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10005C5AC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10005C674(v2, v5, &qword_1000A3B78, &unk_100082260);
  sub_10005C640();
  type metadata accessor for URLQueryItem();
  sub_10005105C();
  sub_100043674();
  if (v1)
  {
    sub_10005C624(&type metadata accessor for URLQueryItem, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10005C5BC();
  }
}

void sub_10005B5C4()
{
  sub_10005C6A0();
  if (v4)
  {
    sub_10005C614();
    if (v5 != v6)
    {
      sub_10005C668();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10005C604();
    }
  }

  sub_10005C658();
  if (v3)
  {
    sub_100003020(&qword_1000A3B60, &unk_100082250);
    v7 = sub_10005C6AC();
    j__malloc_size(v7);
    sub_10005C5F0();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10005B698()
{
  sub_10005C58C();
  if (v4)
  {
    sub_10005C59C();
    if (v6 != v7)
    {
      sub_10005C64C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10005C5AC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10005C674(v2, v5, &qword_1000A3B98, &qword_100080AB8);
  v8 = sub_10005C640();
  type metadata accessor for SevereNotificationSubscription(v8);
  sub_10005105C();
  sub_100043674();
  if (v1)
  {
    sub_10005C624(type metadata accessor for SevereNotificationSubscription, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10005C5BC();
  }
}

void sub_10005B794()
{
  sub_10005C58C();
  if (v4)
  {
    sub_10005C59C();
    if (v6 != v7)
    {
      sub_10005C64C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10005C5AC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10005C674(v2, v5, &qword_1000A3B68, &qword_100080A98);
  sub_10005C640();
  type metadata accessor for WeatherAlert();
  sub_10005105C();
  sub_100043674();
  if (v1)
  {
    sub_10005C624(&type metadata accessor for WeatherAlert, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10005C5BC();
  }
}

void sub_10005B86C()
{
  sub_10005C6A0();
  if (v4)
  {
    sub_10005C614();
    if (v5 != v6)
    {
      sub_10005C668();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10005C604();
    }
  }

  sub_10005C658();
  if (v3)
  {
    sub_100003020(&qword_1000A50F0, &qword_1000822A0);
    v7 = sub_10005C6AC();
    j__malloc_size(v7);
    sub_10005C5F0();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10005B940()
{
  sub_10005C6A0();
  if (v3)
  {
    sub_10005C614();
    if (v5 != v6)
    {
      sub_10005C668();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10005C604();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100003020(&qword_1000A50E8, &qword_100082288);
    v9 = sub_10005C6AC();
    j__malloc_size(v9);
    sub_10005C5F0();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_10005BA14()
{
  sub_10005C58C();
  if (v4)
  {
    sub_10005C59C();
    if (v6 != v7)
    {
      sub_10005C64C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10005C5AC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10005C674(v2, v5, &qword_1000A3BA8, &unk_100082290);
  v8 = sub_10005C640();
  type metadata accessor for PredictedLocation(v8);
  sub_10005105C();
  sub_100043674();
  if (v1)
  {
    sub_10005C624(type metadata accessor for PredictedLocation, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10005C5BC();
  }
}

void sub_10005BAEC()
{
  sub_10005C58C();
  if (v4)
  {
    sub_10005C59C();
    if (v6 != v7)
    {
      sub_10005C64C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10005C5AC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10005C674(v2, v5, &qword_1000A3BA0, &qword_100082280);
  v8 = sub_10005C640();
  type metadata accessor for ResolvedPredictedLocation(v8);
  sub_10005105C();
  sub_100043674();
  if (v1)
  {
    sub_10005C624(type metadata accessor for ResolvedPredictedLocation, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10005C5BC();
  }
}

void sub_10005BBC4()
{
  sub_10005C58C();
  if (v4)
  {
    sub_10005C59C();
    if (v6 != v7)
    {
      sub_10005C64C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10005C5AC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10005C674(v2, v5, &qword_1000A50F8, &qword_1000822A8);
  sub_10005C640();
  type metadata accessor for WeatherServiceRequestLocation();
  sub_10005105C();
  sub_100043674();
  if (v1)
  {
    sub_10005C624(&type metadata accessor for WeatherServiceRequestLocation, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10005C5BC();
  }
}

void sub_10005BCC0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = a1;
  if (a3)
  {
    sub_10005C614();
    if (v13 != v14)
    {
      sub_10005C668();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_10005C604();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_10005BF1C(v15, v12, a5, a6, a7, a8);
  sub_100003020(a7, a8);
  sub_10005105C();
  sub_100043674();
  if (v11)
  {
    sub_10005C13C(a4 + v17, v15, v16 + v17, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_10005BDBC(uint64_t a1, uint64_t a2)
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

  sub_100003020(&qword_1000A3B60, &unk_100082250);
  v4 = sub_10005C6AC();
  j__malloc_size(v4);
  sub_10005C5F0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_10005BE24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003020(a3, a4);
  v8 = sub_10005C640();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10005BF1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003020(a3, a4);
  v10 = *(sub_100003020(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_10005C01C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_10005C57C(a3, result);
  }

  return result;
}

char *sub_10005C044(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_10005C57C(a3, result);
  }

  return result;
}

char *sub_10005C094(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_10005C57C(a3, result);
  }

  return result;
}

void sub_10005C13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_10005C68C();
  if (v10 && (sub_100003020(a4, a5), sub_100018904(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v12 = sub_10005C5DC();

      _swift_arrayInitWithTakeBackToFront(v12);
    }
  }

  else
  {
    sub_100003020(a4, a5);
    v13 = sub_10005C5DC();

    _swift_arrayInitWithTakeFrontToBack(v13);
  }
}

void sub_10005C234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_10005C68C();
  if (v8 && (a4(0), sub_100018904(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = sub_10005C5DC();

      _swift_arrayInitWithTakeBackToFront(v10);
    }
  }

  else
  {
    a4(0);
    v11 = sub_10005C5DC();

    _swift_arrayInitWithTakeFrontToBack(v11);
  }
}

void sub_10005C2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UnfairLock.lock()();
  v6 = OBJC_IVAR____TtC8weatherd20APSConnectionManager_observers;
  swift_beginAccess();
  sub_10005B160();
  v7 = *(*(a2 + v6) + 16);
  sub_10005B1AC(v7);
  v8 = *(a2 + v6);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = a1;
  *(v9 + 40) = a3;
  *(a2 + v6) = v8;
  swift_endAccess();

  UnfairLock.unlock()();
}

void *sub_10005C3B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = type metadata accessor for APSConnectionManager();
  v11 = &off_10009C8C0;
  *&v9 = a2;
  sub_100030944(0, &qword_1000A4188, NSOperationQueue_ptr);
  a4[9] = static NSOperationQueue.cloudChannels.getter();
  a4[2] = a1;
  sub_100006D78(&v9, (a4 + 3));
  a4[8] = a3;
  return a4;
}

void *sub_10005C448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = type metadata accessor for APSConnectionManager();
  v16 = &off_10009C8C0;
  v14[0] = a2;
  type metadata accessor for CloudChannelManager();
  v6 = swift_allocObject();
  v7 = sub_1000123F0(v14, v15);
  __chkstk_darwin(v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_10005C3B8(a1, *v9, a3, v6);
  sub_100006994(v14);
  return v11;
}

uint64_t sub_10005C5BC()
{

  return swift_arrayInitWithCopy();
}

void sub_10005C624(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_10005C234(v2 + a2, v4, v3 + a2, a1);
}

void *sub_10005C674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10005BE24(v5, a2, a3, a4, v4);
}

uint64_t sub_10005C6AC()
{

  return swift_allocObject();
}

uint64_t sub_10005C6C4(uint64_t a1)
{
  v8 = Location.id.getter();
  v2._countAndFlagsBits = 58;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = (v1 + *(type metadata accessor for CloudChannelSubscription(0) + 20));
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701736270;
  }

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  return v8;
}

uint64_t type metadata accessor for CloudChannelSubscription(uint64_t a1)
{
  result = qword_1000A5160;
  if (!qword_1000A5160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005C7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Location();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100007374(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_10005C890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Location();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100006BD4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_10005C93C(uint64_t a1)
{
  type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    sub_10005C9C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005C9C0()
{
  if (!qword_1000A5170)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5170);
    }
  }
}

uint64_t sub_10005CA10(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a2[4];

  return sub_10002AB24(v6, v7);
}

void sub_10005CAA0(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  v3 = *(v1 + 32);

  sub_10002F9FC(a1, v3);
}

Swift::Int sub_10005CAEC()
{
  sub_10005CCE0();
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10002F9FC(v2, v0);
  return Hasher._finalize()();
}

Swift::Int sub_10005CB68()
{
  sub_10005CCE0();
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10002F9FC(v2, v0);
  return Hasher._finalize()();
}

__n128 sub_10005CBDC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10005CBF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10005CC30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005CC8C()
{
  result = qword_1000A51A0;
  if (!qword_1000A51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A51A0);
  }

  return result;
}

uint64_t sub_10005CCF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Location();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v43 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v10 = type metadata accessor for SevereNotificationSubscription(0);
  __chkstk_darwin(v10 - 8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v42 = a1;
  sub_10005F478(a1, v12, type metadata accessor for SevereNotificationSubscription);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37[1] = v6;
    v19 = v18;
    v20 = swift_slowAlloc();
    v39 = v2;
    v21 = v20;
    v45[0] = v20;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    sub_1000383B8();
    v23 = v22;
    v38 = v9;
    v24 = v5;
    v25 = v4;
    v27 = v26;
    sub_1000600C4(v12, type metadata accessor for SevereNotificationSubscription);
    v28 = sub_10000D9FC(v23, v27, v45);
    v4 = v25;
    v5 = v24;
    v9 = v38;

    *(v19 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "Enqueuing request to get cloud channel for notification subscription; subscription=%{private,mask.hash}s", v19, 0x16u);
    sub_100006994(v21);
    v2 = v39;
  }

  else
  {

    sub_1000600C4(v12, type metadata accessor for SevereNotificationSubscription);
  }

  (*(v40 + 8))(v15, v41);
  ReferenceCountedLazy.increase()();
  sub_100037B74();
  sub_100006930(v45, v44);
  v29 = v43;
  (*(v5 + 16))(v43, v9, v4);
  v30 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v2;
  sub_1000435A8(v44, v31 + 24);
  (*(v5 + 32))(v31 + v30, v29, v4);
  v32 = objc_allocWithZone(sub_100003020(&qword_1000A5298, &qword_100082458));

  v33 = AsyncBlockOperation.init(_:)();
  sub_100003020(&qword_1000A5268, &qword_100082440);
  v34 = v33;
  v35 = Promise.__allocating_init(_:scheduleOn:)();

  (*(v5 + 8))(v9, v4);
  sub_100006994(v45);
  return v35;
}

uint64_t sub_10005D170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v22 = a1;
  v5 = type metadata accessor for Location();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v18 = sub_100005360();
  v8 = static OS_dispatch_queue.notifications.getter();
  sub_100006930(a2, v23);
  v19 = *(v6 + 16);
  v19(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v9 = *(v6 + 80);
  v10 = swift_allocObject();
  sub_1000435A8(v23, v10 + 16);
  v17 = *(v6 + 32);
  v17(v10 + ((v9 + 56) & ~v9), &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_100003020(&qword_1000A34B0, &qword_1000804C0);
  v21 = type metadata accessor for CloudChannelManager();
  firstly<A, B>(on:disposeOn:closure:)();

  v11 = static OS_dispatch_queue.notifications.getter();
  v19(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v5);
  v12 = swift_allocObject();
  v17(v12 + ((v9 + 16) & ~v9), &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  type metadata accessor for CloudChannelSubscription(0);
  Promise.then<A>(on:closure:)();

  v13 = zalgo.getter();
  v14 = Promise.always<A>(on:disposeOn:closure:)();

  return v14;
}

double sub_10005D45C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = type metadata accessor for Location();
  (*(*(v7 - 8) + 16))(a3, a2, v7);
  v8 = (a3 + *(type metadata accessor for CloudChannelSubscription(0) + 20));
  *v8 = v6;
  v8[1] = v5;

  return result;
}

uint64_t sub_10005D518(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = v6;
    v12 = v11;
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136446210;

    sub_10005D9BC(v14);
    v15 = Set.description.getter();
    v27 = v4;
    v16 = v15;
    v25 = v5;
    v18 = v17;

    v19 = sub_10000D9FC(v16, v18, &v28);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Expecting to subscribe to channels: %{public}s", v12, 0xCu);
    sub_100006994(v13);

    (*(v26 + 8))(v8, v25);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  sub_100005360();
  v20 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A5BC0, &unk_100082DB0);
  firstly<A, B>(on:disposeOn:closure:)();

  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v2;

  v22 = zalgo.getter();
  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  v23 = Promise.then<A>(on:closure:)();

  return v23;
}

uint64_t sub_10005D840(uint64_t a1)
{
  v2 = type metadata accessor for SevereNotificationSubscription(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  sub_10005F2B0();
  v9 = Set.init(minimumCapacity:)();
  v16 = v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10005F478(v11, v6, type metadata accessor for SevereNotificationSubscription);
      sub_10002CBD4(v8, v6);
      sub_1000600C4(v8, type metadata accessor for SevereNotificationSubscription);
      v11 += v12;
      --v10;
    }

    while (v10);

    return v16;
  }

  else
  {
    v13 = v9;
  }

  return v13;
}

uint64_t sub_10005D9BC(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_10002CA88(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_10005DAB4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  static Logger.notifications.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v38 = v3;
    v34 = v17;
    v39 = v17;
    *v16 = 136446210;
    v36 = v8;

    v18 = a3;
    v19 = Array.description.getter();
    v35 = v9;
    v21 = v20;

    v22 = v19;
    a3 = v18;
    v23 = sub_10000D9FC(v22, v21, &v39);

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Currently subscribed to channels: %{public}s", v16, 0xCu);
    sub_100006994(v34);
    v4 = v38;

    a2 = v37;

    (*(v35 + 8))(v11, v36);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v25 = sub_10005D9BC(v24);
  if (v12)
  {
    v26 = v12;
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v27 = sub_10005F53C(v26, v25);

  v28 = sub_10005D9BC(v26);
  v29 = sub_10005F53C(a2, v28);
  if (*(v27 + 2))
  {
    sub_1000032B8((a3 + 24), *(a3 + 48));
    v30 = sub_10005DE38(v27);
    sub_100071424(v30);
    if (v4)
    {
    }
  }

  else
  {
  }

  if (!*(v29 + 2))
  {

    goto LABEL_16;
  }

  sub_1000032B8((a3 + 24), *(a3 + 48));
  v32 = sub_10005DE38(v29);
  sub_100071818(v32);

  if (!v4)
  {
LABEL_16:
    v39 = a2;
    sub_100003020(&qword_1000A3538, &qword_100080EF0);
    swift_allocObject();

    return Promise.init(value:)();
  }

  return result;
}

void *sub_10005DE38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10005BDBC(*(a1 + 16), 0);
  sub_10005FF68(&v7, v3 + 4, v2, a1);
  v5 = v4;
  sub_100060178(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_10005DEC8()
{

  sub_100006994((v0 + 24));

  return v0;
}

uint64_t sub_10005DF00()
{
  sub_10005DEC8();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_10005DF58(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for Logger();
  sub_100006FBC();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v3;
    v13 = v12;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;

    sub_10005D840(v14);
    type metadata accessor for SevereNotificationSubscription(0);
    v25 = v4;
    sub_10005F2B0();
    v15 = Set.description.getter();
    v17 = v16;

    v18 = sub_10000D9FC(v15, v17, &v28);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Validating cloud channel subscriptions; notificationSubscriptions=%{private,mask.hash}s", v13, 0x16u);
    sub_100006994(v26);

    v19 = (*(v6 + 8))(v9, v25);
  }

  else
  {

    v19 = (*(v6 + 8))(v9, v4);
  }

  __chkstk_darwin(v19);
  *(&v25 - 2) = a1;
  sub_100003020(&qword_1000A5260, &qword_100082438);
  firstly<A>(closure:)();
  sub_100005360();
  v20 = static OS_dispatch_queue.notifications.getter();

  sub_100003020(&qword_1000A5268, &qword_100082440);
  sub_100006CD0(&qword_1000A5270, &qword_1000A5260, &qword_100082438, &protocol conformance descriptor for [A]);
  Promise<A>.compactMap<A>(on:closure:)();

  v21 = zalgo.getter();
  sub_100003020(&qword_1000A4140, &qword_1000810C0);
  Promise.then<A>(on:closure:)();

  v22 = static OS_dispatch_queue.notifications.getter();
  v23 = Promise.then<A, B>(on:disposeOn:closure:)();

  return v23;
}

uint64_t sub_10005E350(uint64_t a1)
{
  sub_100003020(&qword_1000A40E8, &qword_100081018);
  swift_allocObject();

  return Promise.init(value:)();
}

uint64_t sub_10005E3D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10005CCF4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10005E408(uint64_t *a1)
{
  sub_100003020(&qword_1000A5268, &qword_100082440);
  v1 = zalgo.getter();
  sub_100003020(&qword_1000A5288, &qword_100082450);
  sub_100006CD0(&qword_1000A5290, &qword_1000A5288, &qword_100082450, &protocol conformance descriptor for [A]);
  v2 = static Promise.all<A>(on:_:)();

  return v2;
}

uint64_t sub_10005E4D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_100005360();
  v4 = static OS_dispatch_queue.notifications.getter();
  type metadata accessor for NotificationConfiguration();

  firstly<A>(on:closure:)();

  v5 = static OS_dispatch_queue.notifications.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a2;

  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  Promise.then<A>(on:closure:)();

  v7 = static OS_dispatch_queue.notifications.getter();
  *(swift_allocObject() + 16) = v3;

  sub_100003020(&qword_1000A4140, &qword_1000810C0);
  v8 = Promise.then<A>(on:closure:)();

  return v8;
}

uint64_t sub_10005E68C(char *a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v75 = a1;
  v6 = type metadata accessor for Logger();
  v70 = *(v6 - 8);
  v71 = v6;
  __chkstk_darwin(v6);
  v73 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CloudChannelSubscription(0);
  v9 = __chkstk_darwin(v8);
  v76 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v14 = &v65 - v13;
  v15 = *(a2 + 16);
  v16 = _swiftEmptyArrayStorage;
  v72 = v15;
  v68 = v12;
  v69 = a2;
  v67 = v11;
  if (v15)
  {
    v4 = &v14[*(v11 + 20)];
    v17 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v78 = *(v12 + 72);
    do
    {
      v3 = type metadata accessor for CloudChannelSubscription;
      sub_10005F478(v17, v14, type metadata accessor for CloudChannelSubscription);
      v18 = *v4;
      v19 = *(v4 + 1);

      sub_1000600C4(v14, type metadata accessor for CloudChannelSubscription);
      if (v19)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10005B5C4();
          v16 = v22;
        }

        v20 = *(v16 + 16);
        v3 = v20 + 1;
        if (v20 >= *(v16 + 24) >> 1)
        {
          sub_10005B5C4();
          v16 = v23;
        }

        *(v16 + 16) = v3;
        v21 = v16 + 16 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = v19;
      }

      v17 += v78;
      --v15;
    }

    while (v15);
  }

  v24 = v75;
  v25 = NotificationConfiguration.channelSubscriptionLimit.getter();
  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  v26 = v25;
  if (v25 < *(v16 + 16))
  {
    v27 = v73;
    static Logger.notifications.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v66 = v26;
    if (v30)
    {
      v31 = swift_slowAlloc();
      *v31 = 134349312;
      v32 = *(v16 + 16);

      *(v31 + 4) = v32;
      v27 = v73;

      *(v31 + 12) = 2050;
      *(v31 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v28, v29, "Required number of channel subscriptions exceeds threshold: %{public}ld/%{public}ld", v31, 0x16u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v34 = v76;
    v35 = v72;
    v36 = _swiftEmptyArrayStorage;
    (*(v70 + 8))(v27, v71);
    v80 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v37 = (v34 + *(v67 + 20));
      v38 = v69 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v78 = *(v68 + 72);
      v75 = v37;
      while (1)
      {
        sub_10005F478(v38, v34, type metadata accessor for CloudChannelSubscription);
        v39 = v37[1];
        if (v39)
        {
          break;
        }

        sub_1000600C4(v34, type metadata accessor for CloudChannelSubscription);
LABEL_39:
        v38 += v78;
        if (!--v35)
        {
          goto LABEL_40;
        }
      }

      v40 = *v37;

      Location.kind.getter();
      v41 = Location.Identifier.Kind.rawValue.getter();
      v43 = v42;
      if (v41 == Location.Identifier.Kind.rawValue.getter() && v43 == v44)
      {
      }

      else
      {
        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v46 & 1) == 0)
        {
          v34 = v76;
LABEL_31:
          v79[0] = v40;
          v79[1] = v39;
          __chkstk_darwin(v47);
          *(&v65 - 2) = v79;

          v51 = v77;
          v52 = sub_100036E7C(sub_1000604E4, (&v65 - 4), v36);
          v77 = v51;

          if (v52)
          {
            sub_1000600C4(v34, type metadata accessor for CloudChannelSubscription);
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10005B5C4();
              v36 = v55;
            }

            v53 = v36[2];
            if (v53 >= v36[3] >> 1)
            {
              sub_10005B5C4();
              v36 = v56;
            }

            sub_1000600C4(v34, type metadata accessor for CloudChannelSubscription);
            v36[2] = v53 + 1;
            v54 = &v36[2 * v53];
            v54[4] = v40;
            v54[5] = v39;
          }

          v37 = v75;
          goto LABEL_39;
        }
      }

      v48 = v36[2];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v36;
      if (!isUniquelyReferenced_nonNull_native || v48 >= v36[3] >> 1)
      {
        sub_10005B5C4();
        v36 = v50;
        v80 = v50;
      }

      v34 = v76;
      sub_10005FD94(0, 0, 1, v40, v39);
      goto LABEL_31;
    }

LABEL_40:
    v3 = sub_10005ED9C(v66, v36);
    v24 = v57;
    v4 = v58;
    v16 = v59;
    if ((v59 & 1) == 0)
    {
      goto LABEL_41;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v62 = swift_dynamicCastClass();
    if (!v62)
    {
      swift_unknownObjectRelease();
      v62 = _swiftEmptyArrayStorage;
    }

    v63 = v62[2];

    if (!__OFSUB__(v16 >> 1, v4))
    {
      if (v63 == (v16 >> 1) - v4)
      {
        v61 = swift_dynamicCastClass();
        if (!v61)
        {
          swift_unknownObjectRelease();
          v61 = _swiftEmptyArrayStorage;
        }

        goto LABEL_48;
      }

      goto LABEL_52;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    swift_unknownObjectRelease();
LABEL_41:
    sub_10005F308(v3, v24, v4, v16);
    v61 = v60;
LABEL_48:
    v33 = sub_10005D518(v61);
    swift_unknownObjectRelease();

    return v33;
  }

  v33 = sub_10005D518(v16);

  return v33;
}

uint64_t sub_10005ED9C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_10005FF1C(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_10005FEB0(0, v5, a2);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005EE30(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v42 = type metadata accessor for Logger();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for CloudChannelSubscription(0);
  v9 = *(v43 - 8);
  __chkstk_darwin(v43);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v44 = *a1;
    v49 = _swiftEmptyArrayStorage;
    v13 = sub_1000148C4(0, v11, 0);
    v12 = v49;
    v47 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a2 + v47;
    v41 = (v6 + 8);
    v46 = *(v9 + 72);
    *&v15 = 136315138;
    v39 = v15;
    v16 = v8;
    v17 = v43;
    v18 = v45;
    v38 = v8;
    while (1)
    {
      v19 = (v14 + *(v17 + 20));
      v20 = v19[1];
      if (!v20)
      {
        break;
      }

      v48[0] = *v19;
      v48[1] = v20;
      __chkstk_darwin(v13);
      *(&v37 - 2) = v48;
      if (sub_100036E7C(sub_100036F58, (&v37 - 4), v44))
      {
        v21 = v14;
        v18 = v45;
LABEL_7:
        sub_10005F478(v21, v18, type metadata accessor for CloudChannelSubscription);
        goto LABEL_12;
      }

      static Logger.notifications.getter();

      v22 = Logger.logObject.getter();
      v23 = v16;
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v40 = v3;
        v27 = v26;
        v48[0] = v26;
        *v25 = v39;
        v28 = String.identifier.getter();
        v30 = sub_10000D9FC(v28, v29, v48);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v22, v24, "Failed to subscribe to channel %s due to channel limit", v25, 0xCu);
        sub_100006994(v27);
        v3 = v40;

        v16 = v38;
        (*v41)(v38, v42);
      }

      else
      {

        (*v41)(v23, v42);
        v16 = v23;
      }

      v31 = type metadata accessor for Location();
      v18 = v45;
      (*(*(v31 - 8) + 16))(v45, v14, v31);
      v17 = v43;
      v32 = (v18 + *(v43 + 20));
      *v32 = 0;
      v32[1] = 0;
LABEL_12:
      v49 = v12;
      v34 = v12[2];
      v33 = v12[3];
      if (v34 >= v33 >> 1)
      {
        sub_1000148C4((v33 > 1), v34 + 1, 1);
        v17 = v43;
        v12 = v49;
      }

      v12[2] = v34 + 1;
      v35 = v46;
      v13 = sub_10005F4D8(v18, v12 + v47 + v34 * v46);
      v14 += v35;
      if (!--v11)
      {
        goto LABEL_15;
      }
    }

    v21 = v14;
    goto LABEL_7;
  }

LABEL_15:
  v48[0] = v12;
  sub_100003020(&qword_1000A5280, &qword_100082448);
  swift_allocObject();
  return Promise.init(value:)();
}

unint64_t sub_10005F2B0()
{
  result = qword_1000A5278;
  if (!qword_1000A5278)
  {
    type metadata accessor for SevereNotificationSubscription(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5278);
  }

  return result;
}

void sub_10005F308(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_100003020(&qword_1000A3B60, &unk_100082250);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_10005F424()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005F478(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100018904();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10005F4D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudChannelSubscription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_10005F53C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v43[0] = a1;
    v3 = *(a1 + 16);
    v41 = a1 + 32;
    v4 = a2 + 7;
    v5 = 0;

    v40 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v41 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & v4[v12]) == 0)
        {

          v3 = v40;
          goto LABEL_3;
        }

        v14 = (v2[6] + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v43[1] = v5;

      v18 = *(v2 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      v20 = 8 * v19;
      if ((v18 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v34 = swift_slowAlloc();
          v35 = sub_10005FAF0(v34, v19, v2 + 7, v19, v2, v11, v43);

          return v35;
        }
      }

      v36[0] = v19;
      v36[1] = v36;
      __chkstk_darwin(v17);
      v21 = v36 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v21, v2 + 7, v20);
      v22 = *&v21[8 * v12] & ~v13;
      v38 = v21;
      *&v21[8 * v12] = v22;
      v23 = v2[2] - 1;
      v11 = v42;
      v40 = *(v42 + 16);
      v19 = v16;
      while (1)
      {
        v37 = v23;
        v39 = v16;
LABEL_16:
        while (2)
        {
          if (v19 == v40)
          {
            v2 = sub_10005FB78(v38, v36[0], v37, v2);
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v19 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v24 = (v41 + 16 * v19);
          v13 = *v24;
          v12 = v24[1];
          ++v19;
          Hasher.init(_seed:)();

          String.hash(into:)();
          v25 = Hasher._finalize()();
          v20 = ~(-1 << *(v2 + 32));
          do
          {
            v26 = v25 & v20;
            v27 = (v25 & v20) >> 6;
            v28 = 1 << (v25 & v20);
            if ((v28 & v4[v27]) == 0)
            {

              v11 = v42;
              v16 = v39;
              goto LABEL_16;
            }

            v29 = (v2[6] + 16 * v26);
            if (*v29 == v13 && v29[1] == v12)
            {
              break;
            }

            v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v25 = v26 + 1;
          }

          while ((v31 & 1) == 0);

          v32 = v38[v27];
          v38[v27] = v32 & ~v28;
          v15 = (v32 & v28) == 0;
          v11 = v42;
          v16 = v39;
          if (v15)
          {
            continue;
          }

          break;
        }

        v23 = v37 - 1;
        if (__OFSUB__(v37, 1))
        {
          break;
        }

        v16 = v19;
        if (v37 == 1)
        {

          v2 = &_swiftEmptySetSingleton;
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

char *sub_10005F944(char *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *&result[(a4 >> 3) & 0x1FFFFFFFFFFFFFF8] &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_10005FB78(v25, a2, v24, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v14 = Hasher._finalize()();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = v25[v17];
    v25[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

char *sub_10005FAF0(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_10005F944(a1, a2, a5, a6, a7);

  return v12;
}

Swift::Int sub_10005FB78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100003020(&qword_1000A4068, &qword_100080F88);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_10005FD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_10005C044((v11 + 32 + 16 * a2), v14 - a2, &v12[2 * a3]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if (v12 + 2 < &v12[2 * a3])
    {

      __break(1u);
    }
  }
}

void sub_10005FEB0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_10005FF1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_10005FF68(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000600C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100018904();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10006011C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100060180()
{
  v1 = type metadata accessor for Location();
  sub_100006FBC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);

  sub_100006994((v0 + 24));
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100060240()
{
  v1 = *(type metadata accessor for Location() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_10005D170(v2, v0 + 24, v3);
}

uint64_t sub_1000602BC()
{
  v1 = type metadata accessor for Location();
  sub_100006FBC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  sub_100006994((v0 + 16));
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000603E4()
{
  type metadata accessor for Location();
  sub_100018904();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100060500(uint64_t a1)
{
  v1 = type metadata accessor for Scope();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for Client();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5338, &qword_1000824C0);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5340, qword_1000824C8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A50D0, &qword_100082240);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for UploadBatchEventConfig();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for UploadBatchEventProcessor();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for FlushManager();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  (*(v2 + 104))(v4, enum case for Scope.singleton(_:), v1);
  Definition.inScope(_:)();

  (*(v2 + 8))(v4, v1);
  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

void sub_1000607D0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForInfoDictionaryKey:v1];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018804(v8, v9);
  swift_dynamicCast();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 objectForInfoDictionaryKey:v3];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018804(v8, v9);
  swift_dynamicCast();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v0 objectForInfoDictionaryKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100018804(v8, v9);
    swift_dynamicCast();
    v7 = objc_allocWithZone(type metadata accessor for Client());
    Client.init(identifier:name:version:buildNumber:)();

    return;
  }

LABEL_7:
  __break(1u);
}

void *sub_100060A38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for LocationAccessDataProvider();
    swift_allocObject();
    result = LocationAccessDataProvider.init(locationManager:)();
    a2[3] = v4;
    a2[4] = &protocol witness table for LocationAccessDataProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100060AE0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NonAppCellularRadioAccessTechnologyProvider();
  swift_allocObject();
  result = NonAppCellularRadioAccessTechnologyProvider.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for NonAppCellularRadioAccessTechnologyProvider;
  *a1 = result;
  return result;
}

uint64_t sub_100060B38(uint64_t a1)
{
  v2 = type metadata accessor for LazyOptions();
  __chkstk_darwin(v2);
  sub_100006930(a1, v5);
  v3 = swift_allocObject();
  sub_100006D78(v5, v3 + 16);
  *&v5[0] = _swiftEmptyArrayStorage;
  sub_100062714(&qword_1000A3AF0, &type metadata accessor for LazyOptions, &protocol conformance descriptor for LazyOptions);
  sub_100003020(&qword_1000A3AF8, &qword_100080A20);
  sub_1000626C0(&qword_1000A3B00, &qword_1000A3AF8, &qword_100080A20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100003020(&qword_1000A50D0, &qword_100082240);
  swift_allocObject();
  return ReferenceCountedLazy.init(options:loadBlock:)();
}

void *sub_100060CCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5030, &qword_100082188);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000032B8(a1, a1[3]);
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5338, &qword_1000824C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5340, qword_1000824C8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10)
  {
    v7 = type metadata accessor for PrecipitationNotificationAccuracyTracker();
    swift_allocObject();
    v8 = sub_100008398(v5, &v15, v6, &v13, &v11, &v9);
    a2[3] = v7;
    result = sub_100062714(&qword_1000A53B8, type metadata accessor for PrecipitationNotificationAccuracyTracker, &unk_10008080C);
    a2[4] = result;
    *a2 = v8;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100060F24()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UploadBatchEventConfig();
  v4 = static UploadBatchEventConfig.default.getter();
  URL.init(fileURLWithPath:)();
  v5 = UploadBatchEventConfig.with(directory:)();

  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_100061034(void *a1)
{
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for AppSessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000032B8(a1, a1[3]);
  type metadata accessor for Client();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5348, &qword_1000824E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000032B8(a1, a1[3]);
  type metadata accessor for UploadBatchEventConfig();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    type metadata accessor for FlushManager();
    type metadata accessor for URLSessionUploadClientFactory();
    swift_allocObject();
    URLSessionUploadClientFactory.init()();
    return FlushManager.__allocating_init(appSessionManager:client:endpoint:contentType:config:clientFactory:)();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000611B8()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimestampJitter();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for SessionManager();
  RegistrationContainer.register<A>(_:name:factory:)();
  Definition.thenConfigure(_:)();

  type metadata accessor for DiagnosticsConsentProvider();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for AppSessionManager();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for TrackingConsent();
  RegistrationContainer.register<A>(_:name:factory:)();
  Definition.thenConfigure(_:)();

  type metadata accessor for LoggingEventProcessor();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for UploadBatchEventProcessor();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for UploadBatchEventConfig();
  RegistrationContainer.register<A>(_:name:factory:)();
  (*(v1 + 104))(v3, enum case for Scope.singleton(_:), v0);
  Definition.inScope(_:)();

  (*(v1 + 8))(v3, v0);
  sub_100003020(&qword_1000A5348, &qword_1000824E0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5350, &qword_1000824E8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5358, &qword_1000824F0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100061578@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_100082460;
  v2 = enum case for TimestampJitter.enabled(_:);
  v3 = type metadata accessor for TimestampJitter();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000615F8(void *a1)
{
  v2 = type metadata accessor for TimeDurationGranularity();
  __chkstk_darwin(v2 - 8);
  v22 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003020(&qword_1000A5368, &qword_100082508);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_100003020(&qword_1000A5370, &qword_100082510);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SessionManager.Options();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for SessionManagerConfiguration();
  v20 = *(v11 - 8);
  v21 = v11;
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003020(&qword_1000A5378, &qword_100082518);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100080310;
  static SessionManager.Options.gracefulNoSessionEventSubmission.getter();
  static SessionManager.Options.gracefulEventCreation.getter();
  v23[0] = v14;
  sub_100062714(&qword_1000A5380, &type metadata accessor for SessionManager.Options, &protocol conformance descriptor for SessionManager.Options);
  sub_100003020(&qword_1000A5388, &qword_100082520);
  sub_1000626C0(&qword_1000A5390, &qword_1000A5388, &qword_100082520);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1000032B8(a1, a1[3]);
  v15 = type metadata accessor for TimestampJitter();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100007374(v9, 1, v15);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v23[3] = v15;
  v23[4] = &protocol witness table for TimestampJitter;
  v17 = sub_100006D18(v23);
  (*(*(v15 - 8) + 32))(v17, v9, v15);
  sub_1000032B8(a1, a1[3]);
  v18 = type metadata accessor for DiagnosticsConsentProvider();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100007374(v6, 1, v18);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_100061AA4();
  type metadata accessor for DisabledPrivacyValidationProvider();
  swift_allocObject();
  DisabledPrivacyValidationProvider.init()();
  static TimeDurationGranularity.milliseconds.getter();
  SessionManagerConfiguration.init(options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:diagnosticsConsentProvider:timeDurationGranularity:)();
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for AppSessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v19 = AppSessionManager.createSessionManager(with:)();

    (*(v20 + 8))(v13, v21);
    return v19;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100061AA4()
{
  v0 = type metadata accessor for FlushEvents();
  __chkstk_darwin(v0);
  sub_100003020(&qword_1000A5398, &qword_100082528);
  *(swift_allocObject() + 16) = xmmword_100082470;
  static FlushEvents.didStartSession.getter();
  static FlushEvents.didEndSession.getter();
  static FlushEvents.didLeaveGroup.getter();
  sub_100062714(&qword_1000A53A0, &type metadata accessor for FlushEvents, &protocol conformance descriptor for FlushEvents);
  sub_100003020(&qword_1000A53A8, &unk_100082530);
  sub_1000626C0(&qword_1000A53B0, &qword_1000A53A8, &unk_100082530);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for FlushProcessor();
  swift_allocObject();
  return FlushProcessor.init(flushEvents:flushInterval:)();
}

uint64_t sub_100061C74(uint64_t a1, void *a2)
{
  SessionManager.processorManager.getter();
  sub_1000032B8(a2, a2[3]);
  type metadata accessor for LoggingEventProcessor();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  ProcessorManager.add(eventProcessor:)();

  SessionManager.processorManager.getter();
  sub_1000032B8(a2, a2[3]);
  type metadata accessor for UploadBatchEventProcessor();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  ProcessorManager.add(eventProcessor:)();
}

uint64_t sub_100061D7C()
{
  v0 = type metadata accessor for DiagnosticsConsentProvider();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  static DiagnosticsConsentProvider.default.getter();
  (*(v1 + 16))(v4, v6, v0);
  v7 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v8 = swift_allocObject();
  (*(v1 + 32))(v8 + v7, v4, v0);
  static DiagnosticsConsentProvider.custom(_:)();

  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_100061EFC@<X0>(uint64_t a1@<X8>)
{
  static Settings.WeatherAnalytics.Debugging.overrides.getter();
  v2 = dispatch thunk of SettingGroup.isEnabled.getter();

  if ((v2 & 1) == 0)
  {
    return DiagnosticsConsentProvider.status.getter();
  }

  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  type metadata accessor for Settings.WeatherAnalytics.Debugging.Overrides();
  static Settings.WeatherAnalytics.Debugging.Overrides.dnuConsent.getter();
  SettingReader.read<A>(_:)();

  v3 = type metadata accessor for DiagnosticsConsentStatus();
  if (v6 == 1)
  {
    v4 = &enum case for DiagnosticsConsentStatus.allowed(_:);
  }

  else
  {
    v4 = &enum case for DiagnosticsConsentStatus.disallowed(_:);
  }

  return (*(*(v3 - 8) + 104))(a1, *v4, v3);
}

uint64_t sub_100061FFC(void *a1)
{
  v2 = type metadata accessor for SummaryEventConfiguration();
  __chkstk_darwin(v2 - 8);
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for TrackingConsent();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    type metadata accessor for AppSessionManager();
    type metadata accessor for CrashDetector();
    static CrashDetector.shared.getter();
    static SummaryEventConfiguration.disabled.getter();
    return AppSessionManager.__allocating_init(trackingConsent:crashDetector:summaryEventConfiguration:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100062140()
{
  v0 = type metadata accessor for LoggingEventProcessorFormat();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for LoggingEventProcessor();
  *v3 = 11;
  (*(v1 + 104))(v3, enum case for LoggingEventProcessorFormat.json(_:), v0);
  return LoggingEventProcessor.__allocating_init(logFormat:)();
}

uint64_t sub_10006222C(void *a1, uint64_t a2)
{
  sub_1000032B8(a1, a1[3]);
  sub_10006275C();
  type metadata accessor for Client();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5348, &qword_1000824E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000032B8(a1, a1[3]);
  sub_10006275C();
  type metadata accessor for UploadBatchEventConfig();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10006275C();
    type metadata accessor for UploadBatchEventProcessor();
    return UploadBatchEventProcessor.__allocating_init(client:endpoint:contentType:config:)();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_10006235C(void *a1)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    type metadata accessor for AnalyticsEndpoint();
    v2 = swift_allocObject();
    *(v2 + 16) = 7;
    sub_100006D78(&v3, v2 + 24);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000623FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5360, &qword_1000824F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for PrivacySaltProvider();
    swift_allocObject();
    result = PrivacySaltProvider.init(identityService:)();
    a2[3] = v4;
    a2[4] = &protocol witness table for PrivacySaltProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000624A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5350, &qword_1000824E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for PrivacySampler();
    swift_allocObject();
    result = PrivacySampler.init(saltProvider:)();
    a2[3] = v4;
    a2[4] = &protocol witness table for PrivacySampler;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100062588()
{
  v1 = type metadata accessor for DiagnosticsConsentProvider();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100062610@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DiagnosticsConsentProvider();

  return sub_100061EFC(a1);
}

uint64_t sub_100062680()
{
  sub_100006994((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000626C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000325C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100062714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100062768()
{
  v1 = type metadata accessor for PredictedLocationsConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  SettingProperty.wrappedValue.getter();

  if (v13 == 1)
  {

    SettingProperty.wrappedValue.getter();

    v9 = v13;

    SettingProperty.wrappedValue.getter();
  }

  else
  {
    sub_1000032B8((v0 + 136), *(v0 + 160));
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.predictedLocations.getter();
    PredictedLocationsConfiguration.firstSchedulingInterval.getter();
    v9 = v10;
    PredictedLocationsConfiguration.reschedulingIntervalForSevereWeatherNotifications.getter();
    PredictedLocationsConfiguration.reschedulingGracePeriodInterval.getter();
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

void sub_1000629B8()
{
  sub_100030E38();
  v45 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100006FF0(v6);
  sub_100018920();
  __chkstk_darwin(v7);
  v46 = &v40 - v8;
  sub_100003020(&qword_1000A4600, &qword_100081A30);
  sub_100018904();
  __chkstk_darwin(v9);
  sub_100015754();
  v12 = v10 - v11;
  v14 = __chkstk_darwin(v13);
  v16 = &v40 - v15;
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  v44 = type metadata accessor for Logger();
  sub_100006FBC();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_10003C888();
  v42 = v0;
  sub_100062DB8(v0, v3, v5);
  static Logger.predictedLocationNotifications.getter();
  v43 = v5;
  sub_10003C7D0(v5, v18, &qword_1000A4600, &qword_100081A30);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = sub_100037B44();
    v41 = v12;
    v26 = v25;
    v47[0] = v25;
    *v24 = 136446210;
    sub_10003C7D0(v18, v16, &qword_1000A4600, &qword_100081A30);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    sub_100018858(v18, &qword_1000A4600, &qword_100081A30);
    v30 = sub_10000D9FC(v27, v29, v47);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Calculated next refresh: %{public}s", v24, 0xCu);
    sub_100006994(v26);
    v31 = v26;
    v12 = v41;
    sub_10000FA7C(v31);
    sub_10000FA7C(v24);
  }

  else
  {

    sub_100018858(v18, &qword_1000A4600, &qword_100081A30);
  }

  (*(v20 + 8))(v0, v44);
  if (v45)
  {
    sub_100006930((v42 + 7), v47);
    sub_1000032B8(v47, v47[3]);
    sub_10003C7D0(v43, v12, &qword_1000A4600, &qword_100081A30);
    v32 = type metadata accessor for PredictedLocationsRefresh(0);
    if (sub_100007374(v12, 1, v32) == 1)
    {
      sub_100018858(v12, &qword_1000A4600, &qword_100081A30);
      v33 = type metadata accessor for Date();
      v34 = v46;
      v35 = 1;
      v36 = 1;
    }

    else
    {
      v37 = type metadata accessor for Date();
      sub_100018904();
      (*(v38 + 16))(v46, v12, v37);
      sub_100007E88(v12);
      sub_1000649AC();
      v33 = v37;
    }

    sub_100006BD4(v34, v35, v36, v33);
    v39 = v46;
    dispatch thunk of PredictedLocationsScheduleStoreType.recordNextRefresh(at:)();
    sub_100018858(v39, &qword_1000A3800, &unk_100080860);
    sub_100006994(v47);
  }

  sub_100030E08();
}

uint64_t sub_100062DB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a2;
  v5 = type metadata accessor for Logger();
  v127 = *(v5 - 8);
  v128 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v114 = &v107 - v10;
  __chkstk_darwin(v9);
  v120 = &v107 - v11;
  v112 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v12 = __chkstk_darwin(v112);
  v119 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v111 = &v107 - v15;
  v16 = __chkstk_darwin(v14);
  v118 = &v107 - v17;
  v18 = __chkstk_darwin(v16);
  v117 = &v107 - v19;
  v20 = __chkstk_darwin(v18);
  v115 = &v107 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v107 - v23;
  __chkstk_darwin(v22);
  v126 = &v107 - v25;
  v125 = type metadata accessor for Date();
  v122 = *(v125 - 8);
  v26 = __chkstk_darwin(v125);
  v113 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v107 - v29;
  v31 = __chkstk_darwin(v28);
  v116 = &v107 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v107 - v34;
  v36 = __chkstk_darwin(v33);
  v121 = &v107 - v37;
  __chkstk_darwin(v36);
  v123 = &v107 - v38;
  v39 = type metadata accessor for PredictedLocationsFeatureState();
  v40 = *(v39 - 8);
  v41 = __chkstk_darwin(v39);
  v43 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v107 - v44;
  if (WDWeatherAppIsInstalled())
  {
    v109 = v30;
    v110 = a3;
    sub_1000032B8(a1 + 12, a1[15]);
    dispatch thunk of PredictedLocationsFeatureStateManagerType.syncSevereNotificationFeatureState()();
    (*(v40 + 104))(v43, enum case for PredictedLocationsFeatureState.active(_:), v39);
    v46 = static PredictedLocationsFeatureState.== infix(_:_:)();
    v47 = *(v40 + 8);
    v47(v43, v39);
    v47(v45, v39);
    if (v46)
    {
      v48 = v123;
      Date.init()();
      v49 = sub_100062768();
      v51 = v50;
      v53 = v52;
      v55 = v54;
      sub_1000032B8(a1 + 7, a1[10]);
      v56 = v126;
      dispatch thunk of PredictedLocationsScheduleStoreType.mostRecentRefreshDate()();
      sub_1000032B8(a1 + 7, a1[10]);
      dispatch thunk of PredictedLocationsScheduleStoreType.nextScheduledRefreshDate()();
      v57 = v125;
      sub_100007374(v24, 1, v125);
      sub_100018858(v24, &qword_1000A3800, &unk_100080860);
      v58 = v56;
      v59 = v115;
      sub_10003C7D0(v58, v115, &qword_1000A3800, &unk_100080860);
      if (sub_100007374(v59, 1, v57) == 1)
      {
        v60 = v122;
        (*(v122 + 16))(v35, v48, v57);
        v61 = sub_100007374(v59, 1, v57);
        v62 = v120;
        v63 = v121;
        v64 = v116;
        if (v61 != 1)
        {
          sub_100018858(v59, &qword_1000A3800, &unk_100080860);
        }
      }

      else
      {
        v60 = v122;
        (*(v122 + 32))(v35, v59, v57);
        v62 = v120;
        v63 = v121;
        v64 = v116;
      }

      sub_100068054(v63);
      v116 = *(v60 + 8);
      (v116)(v35, v57);
      static Logger.predictedLocationNotifications.getter();
      v75 = v117;
      sub_10003C7D0(v126, v117, &qword_1000A3800, &unk_100080860);
      (*(v60 + 16))(v64, v63, v57);
      v76 = v118;
      sub_10003C7D0(v124, v118, &qword_1000A3800, &unk_100080860);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v133[0] = v114;
        *v79 = 136446978;
        v129 = v49;
        v130 = v51;
        v131 = v53;
        v132 = v55;
        v80 = String.init<A>(describing:)();
        v108 = v78;
        v82 = sub_10000D9FC(v80, v81, v133);

        *(v79 + 4) = v82;
        *(v79 + 12) = 2080;
        v83 = v111;
        v115 = v60 + 8;
        sub_10003C7D0(v75, v111, &qword_1000A3800, &unk_100080860);
        v107 = v77;
        v84 = String.init<A>(describing:)();
        v86 = v85;
        sub_100018858(v75, &qword_1000A3800, &unk_100080860);
        v87 = sub_10000D9FC(v84, v86, v133);

        *(v79 + 14) = v87;
        *(v79 + 22) = 2080;
        sub_10003C830();
        v88 = dispatch thunk of CustomStringConvertible.description.getter();
        v90 = v89;
        (v116)(v64, v125);
        v91 = sub_10000D9FC(v88, v90, v133);

        *(v79 + 24) = v91;
        *(v79 + 32) = 2080;
        v60 = v122;
        sub_10003C7D0(v76, v83, &qword_1000A3800, &unk_100080860);
        v92 = String.init<A>(describing:)();
        v94 = v93;
        v63 = v121;
        sub_100018858(v76, &qword_1000A3800, &unk_100080860);
        v95 = sub_10000D9FC(v92, v94, v133);

        *(v79 + 34) = v95;
        v96 = v107;
        _os_log_impl(&_mh_execute_header, v107, v108, "Will determine next refresh, config=%{public}s, lastRefresh=%s, nextLogicalRefreshDate=%s, currentScheduledDate=%s)", v79, 0x2Au);
        swift_arrayDestroy();

        v57 = v125;

        (*(v127 + 8))(v120, v128);
        v97 = v116;
      }

      else
      {

        sub_100018858(v76, &qword_1000A3800, &unk_100080860);
        v97 = v116;
        (v116)(v64, v57);
        sub_100018858(v75, &qword_1000A3800, &unk_100080860);
        (*(v127 + 8))(v62, v128);
      }

      v98 = v119;
      sub_10003C7D0(v124, v119, &qword_1000A3800, &unk_100080860);
      if (sub_100007374(v98, 1, v57) == 1)
      {
        sub_100018858(v126, &qword_1000A3800, &unk_100080860);
        v97(v123, v57);
        sub_100018858(v98, &qword_1000A3800, &unk_100080860);
        v99 = *(v60 + 32);
      }

      else
      {
        v99 = *(v60 + 32);
        v100 = v113;
        v99();
        v101 = v123;
        if (static Date.> infix(_:_:)())
        {
          v102 = static Date.< infix(_:_:)();
          sub_100018858(v126, &qword_1000A3800, &unk_100080860);
          v97(v101, v57);
          if (v102)
          {
            v97(v63, v57);
            v103 = v109;
            (v99)(v109, v100, v57);
LABEL_26:
            v105 = v110;
            (v99)(v110, v103, v57);
            v68 = type metadata accessor for PredictedLocationsRefresh(0);
            *(v105 + *(v68 + 20)) = v53;
            v69 = v105;
            v74 = 0;
            return sub_100006BD4(v69, v74, 1, v68);
          }

          v104 = v100;
        }

        else
        {
          v97(v100, v57);
          sub_100018858(v126, &qword_1000A3800, &unk_100080860);
          v104 = v101;
        }

        v97(v104, v57);
      }

      v103 = v109;
      (v99)(v109, v63, v57);
      goto LABEL_26;
    }

    v70 = v114;
    static Logger.predictedLocationNotifications.getter();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Predicted locations notification feature state is not active; no next refresh", v73, 2u);
    }

    (*(v127 + 8))(v70, v128);
    v68 = type metadata accessor for PredictedLocationsRefresh(0);
    v69 = v110;
  }

  else
  {
    static Logger.predictedLocationNotifications.getter();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Weather app was uninstalled; no next refresh", v67, 2u);
    }

    (*(v127 + 8))(v8, v128);
    v68 = type metadata accessor for PredictedLocationsRefresh(0);
    v69 = a3;
  }

  v74 = 1;
  return sub_100006BD4(v69, v74, 1, v68);
}

uint64_t sub_100063AEC(uint64_t a1, uint64_t a2)
{
  v95 = a1;
  v3 = type metadata accessor for Date();
  sub_100006FBC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100015754();
  v87 = (v7 - v8);
  sub_100030F24();
  __chkstk_darwin(v9);
  v88 = &v82[-v10];
  type metadata accessor for Logger();
  sub_100006FBC();
  v93 = v12;
  v94 = v11;
  __chkstk_darwin(v11);
  sub_100015754();
  v89 = v13 - v14;
  sub_100030F24();
  __chkstk_darwin(v15);
  v91 = &v82[-v16];
  v17 = sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100006FF0(v17);
  sub_100018920();
  __chkstk_darwin(v18);
  v20 = &v82[-v19];
  v21 = sub_100003020(&qword_1000A4600, &qword_100081A30);
  sub_100006FF0(v21);
  sub_100018920();
  __chkstk_darwin(v22);
  v24 = &v82[-v23];
  v25 = type metadata accessor for PredictedLocationsRefresh(0);
  sub_100018904();
  __chkstk_darwin(v26);
  sub_100015754();
  v86 = v27 - v28;
  sub_100030F24();
  __chkstk_darwin(v29);
  v85 = &v82[-v30];
  sub_100030F24();
  __chkstk_darwin(v31);
  v33 = &v82[-v32];
  v92 = v5;
  v34 = *(v5 + 16);
  v35 = a2;
  (v34)(v20, a2, v3);
  sub_1000649AC();
  sub_100006BD4(v36, v37, v38, v3);
  sub_1000629B8();
  sub_100018858(v20, &qword_1000A3800, &unk_100080860);
  v90 = v25;
  v39 = sub_100007374(v24, 1, v25);
  if (v39 == 1)
  {
    sub_100018858(v24, &qword_1000A4600, &qword_100081A30);
    v40 = v89;
    static Logger.predictedLocationNotifications.getter();
    v41 = sub_10003C8B4();
    v34(v41);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = sub_100037B44();
      v96 = v45;
      *v44 = 136446210;
      sub_10003C830();
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v49 = sub_10003C8A0();
      v50(v49);
      v51 = sub_10000D9FC(v46, v48, &v96);

      *(v44 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v42, v43, "Verified schedule date=%{public}s, will reject rescheduling.", v44, 0xCu);
      sub_100006994(v45);
      sub_10000FA7C(v45);
      sub_10000FA7C(v44);
    }

    else
    {

      v73 = sub_10003C8A0();
      v74(v73);
    }

    (*(v93 + 8))(v40, v94);
    sub_100006BD4(v95, 1, 1, v35);
    return 0;
  }

  else
  {
    sub_10003C76C(v24, v33);
    static Logger.predictedLocationNotifications.getter();
    v52 = v88;
    v53 = sub_10003C8B4();
    v34(v53);
    v54 = v85;
    sub_100007E24(v33, v85);
    v55 = v86;
    sub_100007E24(v33, v86);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = sub_100037B44();
      v87 = v34;
      v59 = v58;
      v84 = swift_slowAlloc();
      v96 = v84;
      *v59 = 136446722;
      sub_10003C830();
      LODWORD(v89) = v39;
      v83 = v57;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v52;
      v63 = v62;
      (*(v92 + 8))(v61, v35);
      v64 = sub_10000D9FC(v60, v63, &v96);

      *(v59 + 4) = v64;
      *(v59 + 12) = 2082;
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      sub_100007E88(v54);
      v68 = sub_10000D9FC(v65, v67, &v96);

      *(v59 + 14) = v68;
      *(v59 + 22) = 2050;
      v69 = v90;
      v70 = *(v55 + *(v90 + 20));
      sub_100007E88(v55);
      *(v59 + 24) = v70;
      _os_log_impl(&_mh_execute_header, v56, v83, "Verified schedule date=%{public}s returning date=%{public}s gracePeriod=%{public}f", v59, 0x20u);
      v71 = v84;
      swift_arrayDestroy();
      sub_10000FA7C(v71);
      v72 = v59;
      v34 = v87;
      sub_10000FA7C(v72);

      (*(v93 + 8))(v91, v94);
    }

    else
    {

      sub_100007E88(v55);
      sub_100007E88(v54);
      v76 = sub_10003C8A0();
      v77(v76);
      (*(v93 + 8))(v91, v94);
      v69 = v90;
    }

    (v34)(v95, v33, v35);
    sub_1000649AC();
    sub_100006BD4(v78, v79, v80, v35);
    v75 = *&v33[*(v69 + 20)];
    sub_100007E88(v33);
  }

  return v75;
}

void sub_1000643FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100030E38();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for XPCActivity();
  sub_100006FBC();
  v25 = v24;
  __chkstk_darwin(v26);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Logger();
  sub_100006FBC();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_10003C888();
  static Logger.predictedLocationNotifications.getter();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Will unschedule next refresh", v35, 2u);
    sub_10000FA7C(v35);
  }

  (*(v31 + 8))(v20, v29);
  sub_1000032B8(v20 + 2, v20[5]);
  static XPCActivity.predictedLocationNotifications.getter();
  dispatch thunk of XPCActivityManagerType.unscheduleActivity(_:)();
  (*(v25 + 8))(v28, v23);
  sub_1000032B8(v20 + 7, v20[10]);
  dispatch thunk of PredictedLocationsScheduleStoreType.clearNextRefreshRecord()();
  sub_100030E08();
}

void sub_1000645E0()
{
  sub_100030E38();
  v2 = v1;
  v3 = sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100006FF0(v3);
  sub_100018920();
  __chkstk_darwin(v4);
  v6 = &v39 - v5;
  type metadata accessor for XPCActivity();
  sub_100006FBC();
  v42 = v8;
  v43 = v7;
  __chkstk_darwin(v7);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PredictedLocationsRefresh(0);
  sub_100018904();
  __chkstk_darwin(v10);
  sub_100015754();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = type metadata accessor for Logger();
  sub_100006FBC();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_10003C888();
  static Logger.predictedLocationNotifications.getter();
  v44 = v2;
  sub_100007E24(v2, v16);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v39 = v17;
    v24 = v23;
    v25 = sub_100037B44();
    v40 = v6;
    v26 = v25;
    v46 = v25;
    *v24 = 136446210;
    sub_100007E24(v16, v13);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    sub_100007E88(v16);
    v30 = sub_10000D9FC(v27, v29, &v46);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Will schedule refresh: %{public}s", v24, 0xCu);
    sub_100006994(v26);
    v31 = v26;
    v6 = v40;
    sub_10000FA7C(v31);
    sub_10000FA7C(v24);

    (*(v19 + 8))(v0, v39);
  }

  else
  {

    sub_100007E88(v16);
    (*(v19 + 8))(v0, v17);
  }

  sub_1000032B8(v0 + 2, v0[5]);
  v32 = v41;
  static XPCActivity.predictedLocationNotifications.getter();
  v33 = v44;
  dispatch thunk of XPCActivityManagerType.scheduleActivity(_:on:with:)();
  (*(v42 + 8))(v32, v43);
  sub_1000032B8(v0 + 7, v0[10]);
  v34 = type metadata accessor for Date();
  sub_100018904();
  (*(v35 + 16))(v6, v33, v34);
  sub_1000649AC();
  sub_100006BD4(v36, v37, v38, v34);
  dispatch thunk of PredictedLocationsScheduleStoreType.recordNextRefresh(at:)();
  sub_100018858(v6, &qword_1000A3800, &unk_100080860);
  sub_100030E08();
}

void sub_1000649B8(uint64_t a1)
{
  ReferenceCountedLazy.increase()();
  sub_1000032B8(v1, v1[3]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  sub_100006994(v1);
  ReferenceCountedLazy.decrease()();
}

uint64_t sub_100064AC4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  sub_1000032B8(a1, v7);
  return a4(a2, a3, v7, v8);
}

uint64_t sub_100064B28(uint64_t a1)
{
  ReferenceCountedLazy.increase()();
  sub_1000032B8(v4, v4[3]);
  dispatch thunk of AppConfigurationManagerType.fetchAppConfig(cachePolicy:)();
  v1 = zalgo.getter();
  v2 = Promise.always<A>(on:disposeOn:closure:)();

  sub_100006994(v4);
  return v2;
}

uint64_t sub_100064C08()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100064D54()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for Daemon();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  v2 = *(v1 + 104);
  v3 = sub_100068008();
  v2(v3);
  sub_10006803C();

  v4 = *(v1 + 8);
  v5 = sub_100068018();
  v4(v5);
  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3B08, &qword_100080A28);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A55C8, &qword_1000826B0);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3AA0, &qword_100082220);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  Definition.thenConfigure(_:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A55D0, &qword_1000826B8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A55D8, &qword_1000826C0);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A55E0, &qword_1000826C8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for WDSEndpoint();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  v6 = sub_100068008();
  v2(v6);
  sub_10006803C();

  v7 = sub_100068018();
  v4(v7);
  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A55E8, &qword_1000826D0);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5360, &qword_1000824F8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  v8 = sub_10006275C();
  type metadata accessor for DatabaseManager(v8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  sub_100003020(&qword_1000A55F0, &qword_1000826D8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  v9 = sub_100068008();
  v2(v9);
  sub_10006803C();

  v10 = sub_100068018();
  v4(v10);
  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  v11 = sub_100068008();
  v2(v11);
  sub_10006803C();

  v12 = sub_100068018();
  v4(v12);
  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for NotificationConfigurationManager();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A50A8, &qword_1000821F8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3B10, &unk_100080A30);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A55F8, &qword_1000826E0);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  type metadata accessor for GeocodeService();
  Definition.thenConfigure<A>(as:configuration:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5600, &qword_1000826E8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  v13 = sub_100068008();
  v2(v13);
  sub_10006803C();

  v14 = sub_100068018();
  v4(v14);
  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5608, &qword_1000826F0);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for LocationMetadataStore();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5610, &qword_1000826F8);
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  v15 = sub_100068008();
  v2(v15);
  sub_10006803C();

  v16 = sub_100068018();
  v4(v16);
  ProxyContainer.private.getter();

  RegistrationContainer.lazy(block:)();
}

void *sub_100065568(void *a1)
{
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for DatabaseManager(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5018, &qword_100082168);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA0, &qword_100082220);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000032B8(a1, a1[3]);
  type metadata accessor for NotificationAuthorizationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A55C8, &qword_1000826B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B38, &qword_100080A50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v7 = v18;
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v19;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A48, &qword_100080980);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for Daemon();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC8weatherd6Daemon_databaseManager] = v3;
    *&v11[OBJC_IVAR____TtC8weatherd6Daemon_notificationsManager] = v4;
    sub_100006930(v20, &v11[OBJC_IVAR____TtC8weatherd6Daemon_activityManager]);
    *&v11[OBJC_IVAR____TtC8weatherd6Daemon_notificationAuthorizationManager] = v5;
    *&v11[OBJC_IVAR____TtC8weatherd6Daemon_decommissioningService] = v6;
    v12 = &v11[OBJC_IVAR____TtC8weatherd6Daemon_severeNotificationsManager];
    *v12 = v7;
    *(v12 + 1) = v8;
    *&v11[OBJC_IVAR____TtC8weatherd6Daemon_predictedLocationsService] = v9;
    sub_100030944(0, &qword_1000A5678, OS_dispatch_source_ptr);
    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    swift_unknownObjectRetain();
    v13 = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v14 = static OS_dispatch_queue.main.getter();
    v15 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

    *&v11[OBJC_IVAR____TtC8weatherd6Daemon_sigtermListener] = v15;
    type metadata accessor for Settings.Daemon.Performance();
    static Settings.Daemon.Performance.logConfiguration()();
    v17.receiver = v11;
    v17.super_class = v10;
    v16 = objc_msgSendSuper2(&v17, "init");
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100006994(v20);
    return v16;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1000658D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for WeatherStatisticsCaching();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v26 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WeatherAvailabilityCaching();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v23 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WeatherDataCaching();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003020(&qword_1000A5658, &qword_100082728);
  __chkstk_darwin(v11 - 8);
  v13 = v20 - v12;
  sub_1000032B8(a1, a1[3]);
  v14 = type metadata accessor for WDSEndpoint();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100007374(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v16 = *(v8 + 104);
  v20[1] = v10;
  v16(v10, enum case for WeatherDataCaching.disabled(_:), v7);
  (*(v5 + 104))(v23, enum case for WeatherAvailabilityCaching.disabled(_:), v22);
  (*(v24 + 104))(v26, enum case for WeatherStatisticsCaching.disabled(_:), v25);
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A55E8, &qword_1000826D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v29)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A55E0, &qword_1000826C8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v28)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A55D8, &qword_1000826C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v27)
  {
    v17 = type metadata accessor for WeatherDataServiceProxy();
    v18 = objc_allocWithZone(v17);
    result = WeatherDataServiceProxy.init(endpoint:caching:availableDataSetCaching:statisticsCaching:networkMonitor:authenticator:appConfigurationSettingsProvider:)();
    v19 = v21;
    v21[3] = v17;
    v19[4] = &protocol witness table for WeatherDataServiceProxy;
    *v19 = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_100065CC8(void *a1)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5018, &qword_100082168);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A58, &qword_100080990);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A60, &qword_100080998);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    v3 = objc_allocWithZone(type metadata accessor for DaemonDecommissioningService());
    return DaemonDecommissioningService.init(notificationManager:predictedLocationsNotificationsManager:predictedLocationsIntentDonationManager:)();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100065DF0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for XPCActivityManager();
  swift_allocObject();
  result = XPCActivityManager.init(onActivityCompletion:)();
  a1[3] = v2;
  a1[4] = &protocol witness table for XPCActivityManager;
  *a1 = result;
  return result;
}

id sub_100065E60()
{
  v0 = objc_opt_self();

  return [v0 neSessionClearCaches];
}

void *sub_100065E98(void *a1, void *a2)
{
  v4 = type metadata accessor for XPCActivity();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8(a2, a2[3]);
  v8 = type metadata accessor for PrecipitationNotificationsManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  sub_1000032B8(a1, a1[3]);
  static XPCActivity.Notifications.getter();
  v36 = v8;
  v37 = sub_100067FAC(&qword_1000A5668, &type metadata accessor for PrecipitationNotificationsManager, &protocol conformance descriptor for PrecipitationNotificationsManager);
  v35[0] = v10;
  v26 = v10;
  dispatch thunk of XPCActivityManagerType.registerActivity(_:handler:)();
  v11 = v4;
  v27 = *(v5 + 8);
  v28 = v5 + 8;
  v27(v7, v4);
  sub_100006994(v35);
  sub_1000032B8(a2, a2[3]);
  v12 = type metadata accessor for DatabaseManager(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  if (qword_1000A3248 != -1)
  {
    swift_once();
  }

  sub_100002FE8(v11, static XPCActivity.Databases);
  v36 = v12;
  v37 = sub_100067FAC(&qword_1000A5670, type metadata accessor for DatabaseManager, &unk_100081C08);
  v35[0] = v13;
  v25 = v13;
  dispatch thunk of XPCActivityManagerType.registerActivity(_:handler:)();
  sub_100006994(v35);
  sub_1000032B8(a2, a2[3]);
  sub_100003020(&qword_1000A3A58, &qword_100080990);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v33)
  {
    goto LABEL_10;
  }

  sub_100006D78(&v32, v35);
  static XPCActivity.predictedLocationNotifications.getter();
  v14 = v36;
  v15 = v37;
  v16 = sub_1000032B8(v35, v36);
  v33 = v14;
  v34 = *(v15 + 8);
  v17 = sub_100006D18(&v32);
  (*(*(v14 - 8) + 16))(v17, v16, v14);
  dispatch thunk of XPCActivityManagerType.registerActivity(_:handler:)();
  v24 = v11;
  v18 = v27;
  v27(v7, v11);
  sub_100006994(&v32);
  sub_1000032B8(a2, a2[3]);
  sub_100003020(&qword_1000A3A60, &qword_100080998);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v30)
  {
    sub_100006D78(&v29, &v32);
    static XPCActivity.predictedLocationIntentDonations.getter();
    v19 = v33;
    v20 = v34;
    v21 = sub_1000032B8(&v32, v33);
    v30 = v19;
    v31 = *(v20 + 8);
    v22 = sub_100006D18(&v29);
    (*(*(v19 - 8) + 16))(v22, v21, v19);
    dispatch thunk of XPCActivityManagerType.registerActivity(_:handler:)();

    v18(v7, v24);
    sub_100006994(&v29);
    sub_100006994(&v32);
    return sub_100006994(v35);
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_100066328@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A55D8, &qword_1000826C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for WDSAuthenticatorFactory();
    swift_allocObject();
    result = WDSAuthenticatorFactory.init(clientConfigurationProvider:)();
    a2[3] = v4;
    a2[4] = &protocol witness table for WDSAuthenticatorFactory;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000663D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6[3])
  {
    v4 = type metadata accessor for AppConfigurationSettingsProvider(0);
    swift_allocObject();
    v5 = sub_10006A314(v6);
    a2[3] = v4;
    result = sub_100067FAC(&qword_1000A5660, type metadata accessor for AppConfigurationSettingsProvider, &unk_1000829B4);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000664AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v16 = type metadata accessor for WDSVersion();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003020(&qword_1000A5658, &qword_100082728);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for WDSEndpoint();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A55D0, &qword_1000826B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    sub_100006D78(&v17, v19);
    sub_1000032B8(a1, a1[3]);
    dispatch thunk of ResolverType.resolve<A>(_:)();
    result = sub_100007374(v8, 1, v9);
    if (result != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      sub_1000032B8(v19, v19[3]);
      v14 = v16;
      (*(v3 + 104))(v5, enum case for WDSVersion.tokenServiceVersion(_:), v16);
      dispatch thunk of WDSAuthenticatorFactoryType.makeAuthenticator(for:version:isJWTEnabled:)();
      (*(v3 + 8))(v5, v14);
      (*(v10 + 8))(v12, v9);
      return sub_100006994(v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100066784@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v3 = type metadata accessor for URL();
  __chkstk_darwin(v3 - 8);
  v13 = type metadata accessor for EndpointConfiguration();
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppConfiguration();
  v7 = *(v12 - 8);
  __chkstk_darwin(v12);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.WeatherEnvironment.contentEnvironment.getter();
  SettingReader.read<A>(_:)();

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v16)
  {
    sub_100006D78(&v15, v17);
    sub_1000032B8(v17, v17[3]);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.endpointConfig(for:)();
    EndpointConfiguration.weatherDataURL.getter();
    WDSEndpoint.init(url:)();
    (*(v4 + 8))(v6, v13);
    (*(v7 + 8))(v9, v12);
    return sub_100006994(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100066A7C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_100066AE4(void *a1)
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  type metadata accessor for Settings.Daemon.Performance();
  static Settings.Daemon.Performance.clearCachesWithinXPCActivity.getter();
  SettingReader.read<A>(_:)();

  v2 = 0;
  if (v5 == 1 && (sub_1000032B8(a1, a1[3]), sub_100003020(&qword_1000A55F0, &qword_1000826D8), result = dispatch thunk of ResolverType.resolve<A>(_:)(), (v2 = result) == 0))
  {
    __break(1u);
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for DatabaseManager(0));
    return sub_10004CE28(v2);
  }

  return result;
}

uint64_t sub_100066BC8()
{
  v0 = type metadata accessor for LazyOptions();
  __chkstk_darwin(v0);
  sub_100067FAC(&qword_1000A3AF0, &type metadata accessor for LazyOptions, &protocol conformance descriptor for LazyOptions);
  sub_100003020(&qword_1000A3AF8, &qword_100080A20);
  sub_1000129F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100003020(&qword_1000A55F0, &qword_1000826D8);
  swift_allocObject();
  return ReferenceCountedLazy.init(options:loadBlock:)();
}

uint64_t sub_100066D00@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WeatherDataStore();
  swift_allocObject();
  result = WeatherDataStore.init()();
  *a1 = result;
  return result;
}

uint64_t sub_100066D64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5620, &qword_100082708);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ReferenceCountedLazyAppConfigurationManager();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    a2[3] = v5;
    result = sub_100067FAC(&qword_1000A5650, type metadata accessor for ReferenceCountedLazyAppConfigurationManager, &unk_10008262C);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100066E2C(void *a1)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v2)
  {
    type metadata accessor for NotificationConfigurationManager();
    swift_allocObject();
    return NotificationConfigurationManager.init(appConfigurationManager:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100066EBC(uint64_t a1)
{
  v2 = type metadata accessor for LazyOptions();
  __chkstk_darwin(v2);
  sub_100006930(a1, v5);
  v3 = swift_allocObject();
  sub_100006D78(v5, v3 + 16);
  *&v5[0] = _swiftEmptyArrayStorage;
  sub_100067FAC(&qword_1000A3AF0, &type metadata accessor for LazyOptions, &protocol conformance descriptor for LazyOptions);
  sub_100003020(&qword_1000A3AF8, &qword_100080A20);
  sub_1000129F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100003020(&qword_1000A50A8, &qword_1000821F8);
  swift_allocObject();
  return ReferenceCountedLazy.init(options:loadBlock:)();
}

void *sub_100067030@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B08, &qword_100080A28);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    return sub_100006D78(&v4, a2);
  }

  __break(1u);
  return result;
}

void *sub_1000670B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A55F8, &qword_1000826E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    sub_1000032B8(a1, a1[3]);
    sub_100003020(&qword_1000A5608, &qword_1000826F0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      v5 = type metadata accessor for LocationMetadataManager();
      swift_allocObject();
      result = LocationMetadataManager.init(geocodeService:store:)();
      a2[3] = v5;
      a2[4] = &protocol witness table for LocationMetadataManager;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000671CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5358, &qword_1000824F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5648, &qword_100082720);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_100006D78(&v5, v7);
    type metadata accessor for GeocodeService();
    swift_allocObject();
    result = GeocodeService.init(appConfigurationManager:privacySampler:locationMetadataUpdater:)();
    *a2 = result;
    a2[1] = &protocol witness table for GeocodeService;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_10006731C(uint64_t a1, void *a2)
{
  sub_1000032B8(a2, a2[3]);
  sub_100003020(&qword_1000A5618, &qword_100082700);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v3[3])
  {
    GeocodeService.setupWeatherKitGeocoding(using:)();
    return sub_100006994(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000673A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5600, &qword_1000826E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    v4 = type metadata accessor for LocationManager();
    v5 = objc_allocWithZone(v4);
    result = LocationManager.init(geocodeManager:locationCacheManager:)();
    a2[3] = v4;
    a2[4] = &protocol witness table for LocationManager;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006744C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CurrentLocationCacheManager();
  swift_allocObject();
  result = CurrentLocationCacheManager.init(store:)();
  a1[3] = v2;
  a1[4] = &protocol witness table for CurrentLocationCacheManager;
  *a1 = result;
  return result;
}

uint64_t sub_1000674C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for LocationMetadataStore();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    *a2 = result;
    a2[1] = &protocol witness table for LocationMetadataStore;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100067528()
{
  GeocodeManagerGetCurrentCountryCode()();
  type metadata accessor for LocationMetadataStore();
  swift_allocObject();
  return LocationMetadataStore.init(database:configuredCountryCode:)();
}

uint64_t sub_100067590()
{
  v0 = type metadata accessor for Database.JournalingMode();
  v15 = *(v0 - 8);
  v16 = v0;
  __chkstk_darwin(v0);
  v14 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Database.VacuumMode();
  v2 = *(v13 - 8);
  __chkstk_darwin(v13);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Database.CacheSize();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for Database.RecoveryMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AssertionOptions();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for Database.Location();
  __chkstk_darwin(v11 - 8);
  type metadata accessor for Database();
  type metadata accessor for LocationMetadataStore();
  static LocationMetadataStore.location.getter();
  static AssertionOptions.weatherAssertions.getter();
  (*(v7 + 104))(v9, enum case for Database.RecoveryMode.truncate(_:), v6);
  static LocationMetadataStore.preferredCacheSize.getter();
  (*(v2 + 104))(v4, enum case for Database.VacuumMode.incremental(_:), v13);
  (*(v15 + 104))(v14, enum case for Database.JournalingMode.wal(_:), v16);
  v17 = 0;
  return Database.init(location:assertions:journalingMode:recoveryMode:preferredCacheSize:vacuumMode:busyTimeout:)();
}

uint64_t sub_1000678EC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for CoherenceContainerName.weatherd(_:);
  v3 = type metadata accessor for CoherenceContainerName();
  (*(*(v3 - 8) + 104))(a1, v2, v3);

  return sub_100006BD4(a1, 0, 1, v3);
}

uint64_t sub_100067980()
{
  sub_100003020(&qword_1000A5618, &qword_100082700);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5350, &qword_1000824E8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5358, &qword_1000824F0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5620, &qword_100082708);

  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_100067AD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B08, &qword_100080A28);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v4 = type metadata accessor for GeocodeWeatherService();
    v5 = swift_allocObject();
    sub_100006D78(&v6, v5 + 16);
    a2[3] = v4;
    result = sub_100067FAC(&qword_1000A5640, type metadata accessor for GeocodeWeatherService, &unk_100080B68);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100067BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LazyOptions();
  __chkstk_darwin(v4);
  v5 = *(a2 + 16);
  v11 = &type metadata for WrappedLock;
  v12 = sub_100067EE8();
  v10 = v5;
  sub_100006930(a1, v9);
  v6 = swift_allocObject();
  sub_100006D78(v9, v6 + 16);
  *&v9[0] = _swiftEmptyArrayStorage;
  sub_100067FAC(&qword_1000A3AF0, &type metadata accessor for LazyOptions, &protocol conformance descriptor for LazyOptions);
  v7 = v5;
  sub_100003020(&qword_1000A3AF8, &qword_100080A20);
  sub_1000129F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100003020(&qword_1000A5620, &qword_100082708);
  swift_allocObject();
  return ReferenceCountedLazy.init(lock:options:loadBlock:)();
}

void *sub_100067D48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5630, &qword_100082710);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    sub_1000032B8(a1, a1[3]);
    sub_100003020(&qword_1000A5638, &qword_100082718);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      v5 = type metadata accessor for AppConfigurationManager();
      swift_allocObject();
      result = AppConfigurationManager.init(appConfigurationService:appConfigurationStore:)();
      a2[3] = v5;
      a2[4] = &protocol witness table for AppConfigurationManager;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100067E58()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_100067EE8()
{
  result = qword_1000A5628;
  if (!qword_1000A5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5628);
  }

  return result;
}

uint64_t sub_100067F3C()
{
  sub_100006994((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100067FAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100068024()
{
}

uint64_t sub_10006803C()
{

  return Definition.inScope(_:)();
}

uint64_t sub_100068054@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - v8;
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  Date.addingTimeInterval(_:)();
  Date.init()();
  Date.addingTimeInterval(_:)();
  v12 = *(v3 + 8);
  v12(v6, v2);
  v13 = static Date.> infix(_:_:)();
  v14 = (v13 & 1) == 0;
  if (v13)
  {
    v15 = v11;
  }

  else
  {
    v15 = v9;
  }

  if (v14)
  {
    v16 = v11;
  }

  else
  {
    v16 = v9;
  }

  v12(v15, v2);
  return (*(v3 + 32))(a1, v16, v2);
}

__n128 sub_100068200(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10006820C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006822C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

double sub_100068268()
{
  v1 = type metadata accessor for PredictedLocationsConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8((v0 + 136), *(v0 + 160));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.predictedLocations.getter();
  PredictedLocationsConfiguration.minProbabilityToConsiderLocationForSevereWeatherNotification.getter();
  v10 = v9;
  PredictedLocationsConfiguration.minStayToConsiderLocationForSevereWeatherNotification.getter();
  PredictedLocationsConfiguration.minDistanceFromCurrentLocationToConsiderLocationForSevereWeatherNotification.getter();
  PredictedLocationsConfiguration.minDistanceFromSavedLocationsToConsiderLocationForSevereWeatherNotification.getter();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);

  SettingProperty.wrappedValue.getter();

  if (v13 == 1)
  {

    SettingProperty.wrappedValue.getter();

    return v12;
  }

  return v10;
}

uint64_t sub_10006848C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for Location.Identifier();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for LocationCoordinate();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for LocationDataModel();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_100068684, 0, 0);
}

uint64_t sub_100068684()
{
  v1 = v0[3];
  v2 = sub_100068268();
  v4 = v3;
  v6 = v5;
  v0[2] = v1;
  v0[20] = v7;

  sub_100031B60();
  if (!*(v0[2] + 16))
  {

    static Logger.predictedLocationNotifications.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (!sub_100069158(v13))
    {
      goto LABEL_14;
    }

    v14 = sub_100031128();
    *v14 = 134217984;
    *(v14 + 4) = v2;
    v15 = "No predicted locations met the probability threshold (%f) for severe notification";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v12, v1, v15, v14, 0xCu);

    goto LABEL_14;
  }

  sub_100032330();
  if (!*(v0[2] + 16))
  {

    static Logger.predictedLocationNotifications.getter();
    v12 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!sub_100069158(v16))
    {
      goto LABEL_14;
    }

    v14 = sub_100031128();
    *v14 = 134217984;
    *(v14 + 4) = v4;
    v15 = "No predicted locations met the minimum stay duration (%f) for severe notification";
    goto LABEL_13;
  }

  sub_1000032B8((v0[4] + 56), *(v0[4] + 80));
  v1 = dispatch thunk of LocationManagerType.currentCLLocation.getter();
  sub_100031D00(v1);

  if (*(v0[2] + 16))
  {
    v8 = v0[4];
    v9 = v8[15];
    v10 = v8[16];
    sub_1000032B8(v8 + 12, v9);
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_1000689B8;

    return dispatch thunk of SavedLocationsReaderType.fetchSavedLocationsAsync()(v9, v10);
  }

  static Logger.predictedLocationNotifications.getter();
  v12 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (sub_100069158(v17))
  {
    v14 = sub_100031128();
    *v14 = 134217984;
    *(v14 + 4) = v6;
    v15 = "No predicted locations met the minimum current location distance (%f) for severe notification";
    goto LABEL_13;
  }

LABEL_14:

  v18 = sub_100030CAC();
  v19(v18);

  v20 = v0[1];

  return v20(_swiftEmptyArrayStorage);
}

uint64_t sub_1000689B8(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_100068AB8, 0, 0);
}

uint64_t sub_100068AB8()
{
  if (v0[22])
  {
    v1 = v0[22];
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = v1[2];
  if (v2)
  {
    v3 = v0[18];
    v4 = v0[15];
    v5 = v0[12];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = *(v3 + 16);
    v3 += 16;
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v26 = *(v3 + 56);
    v27 = v6;
    v24 = (v4 + 8);
    v25 = (v5 + 8);
    v23 = (v3 - 8);
    do
    {
      v8 = v0[19];
      v10 = v0[16];
      v9 = v0[17];
      v12 = v0[13];
      v11 = v0[14];
      v13 = v0[11];
      v27(v8, v7, v9);
      LocationDataModel.identifier.getter();
      Location.Identifier.coordinate.getter();
      (*v25)(v12, v13);
      LocationCoordinate.init(_:)();
      LocationCoordinate.clLocation.getter();
      (*v24)(v10, v11);
      (*v23)(v8, v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 += v26;
      --v2;
    }

    while (v2);
  }

  sub_100031F80(_swiftEmptyArrayStorage);

  v14 = v0[2];
  if (!v14[2])
  {

    static Logger.predictedLocationNotifications.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[20];
      v18 = sub_100031128();
      *v18 = 134217984;
      *(v18 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v15, v16, "No predicted locations met the minimum saved locations distance (%f) for severe notification", v18, 0xCu);
    }

    v19 = sub_100030CAC();
    v20(v19);
    v14 = _swiftEmptyArrayStorage;
  }

  v21 = v0[1];

  return v21(v14);
}

uint64_t sub_100068DE0()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100068EA0, 0, 0);
}

uint64_t sub_100068EA0(uint64_t a1)
{
  static Logger.predictedLocationNotifications.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will fetch predicted locations for notifications", v4, 2u);
  }

  v5 = *(v1 + 16);

  v6 = sub_100030CAC();
  v7(v6);
  sub_1000032B8((v5 + 16), *(v5 + 40));
  v8 = swift_task_alloc();
  *(v1 + 48) = v8;
  *v8 = v1;
  v8[1] = sub_100068FE0;

  return sub_1000389D0(1);
}

uint64_t sub_100068FE0(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 56) = a1;

  v5 = swift_task_alloc();
  *(v3 + 64) = v5;
  *v5 = v4;
  v5[1] = sub_10004F658;

  return sub_10006848C(a1);
}

BOOL sub_100069158(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100069174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000691A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000691E4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100069254(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Location();
  sub_100006FBC();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v46 = v11;
  v47 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v38[-v12];
  type metadata accessor for Logger();
  sub_100006FBC();
  v42 = v15;
  v43 = v14;
  __chkstk_darwin(v14);
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.notifications.getter();
  v18 = *(v8 + 16);
  v48 = a3;
  v49 = v6;
  v44 = v18;
  v45 = v8 + 16;
  v18(v13, a3, v6);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = v20;
    v22 = v21;
    v40 = swift_slowAlloc();
    v51[0] = v40;
    *v22 = 136446723;
    *(v22 + 4) = sub_10000D9FC(a1, a2, v51);
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    v23 = Location.id.getter();
    v41 = a1;
    v25 = v24;
    v26 = sub_100069944();
    v27(v26);
    v28 = sub_10000D9FC(v23, v25, v51);
    a1 = v41;

    *(v22 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v19, v39, "Requesting severe event details with identifier: %{public}s for location: %{private,mask.hash}s", v22, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = sub_100069944();
    v30(v29);
  }

  (*(v42 + 8))(v17, v43);
  ReferenceCountedLazy.increase()();
  sub_100005360();
  v31 = static OS_dispatch_queue.notifications.getter();
  sub_100006930(v51, v50);
  v32 = v47;
  v44(v47, v48, v13);
  v33 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v34 = swift_allocObject();
  sub_1000435A8(v50, v34 + 16);
  *(v34 + 56) = a1;
  *(v34 + 64) = a2;
  (*(v8 + 32))(v34 + v33, v32, v13);
  type metadata accessor for WeatherAlert();

  firstly<A>(on:closure:)();

  v35 = zalgo.getter();
  v36 = Promise.always<A>(on:disposeOn:closure:)();

  sub_100006994(v51);
  return v36;
}

uint64_t sub_1000696B8(void *a1, uint64_t a2, uint64_t a3)
{
  v11[2] = a2;
  v11[3] = a3;
  v4 = type metadata accessor for TimeZone();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v11[1] = a1[4];
  sub_1000032B8(a1, v8);
  static Locale.languageIdentifier.getter();
  Location.timeZone.getter();
  TimeZone.identifier.getter();
  (*(v5 + 8))(v7, v4);
  v9 = dispatch thunk of WeatherDataServiceType.fetchWeatherAlert(with:for:timezone:)();

  return v9;
}

uint64_t sub_100069818()
{
  v1 = type metadata accessor for Location();
  sub_100006FBC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  sub_100006994((v0 + 16));

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100069980(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v78 = a3;
  v79 = a2;
  v65 = type metadata accessor for Expression();
  sub_100006FBC();
  v64 = v6;
  __chkstk_darwin(v7);
  sub_10000E970();
  v10 = v9 - v8;
  type metadata accessor for UUID();
  sub_100006FBC();
  v72 = v12;
  v73 = v11;
  __chkstk_darwin(v11);
  sub_10000E970();
  v71 = v14 - v13;
  type metadata accessor for IncomingMessageEntity();
  sub_100006FBC();
  v75 = v16;
  v76 = v15;
  __chkstk_darwin(v15);
  sub_10000E970();
  v74 = v18 - v17;
  v19 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v19 - 8);
  sub_10000E970();
  v70 = v21 - v20;
  v22 = type metadata accessor for APSMessage(0);
  __chkstk_darwin(v22);
  sub_10000E970();
  v25 = (v24 - v23);
  v26 = type metadata accessor for Logger();
  sub_100006FBC();
  v28 = v27;
  v30 = __chkstk_darwin(v29);
  v77 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v63 - v32;
  static Logger.notifications.getter();
  sub_10006A228(a1, v25);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v80 = v28;
  v81 = v26;
  v63 = v10;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v82[0] = v38;
    *v37 = 136315138;
    v39 = v4;
    v69 = v22;
    v41 = *v25;
    v40 = v25[1];

    sub_10006A28C(v25);
    v42 = v41;
    v4 = v39;
    v43 = sub_10000D9FC(v42, v40, v82);

    *(v37 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "Storing incoming message with identifier: %s", v37, 0xCu);
    sub_100006994(v38);
    v44 = v38;
    v28 = v80;
    v26 = v81;
    sub_10000FA7C(v44);
    sub_10000FA7C(v37);
  }

  else
  {

    sub_10006A28C(v25);
  }

  v45 = *(v28 + 8);
  v45(v33, v26);
  v46 = *(v4 + 16);
  ReferenceCountedLazy.increase()();
  v47 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v82[0] = 0;
  v49 = [v47 dataWithPropertyList:isa format:100 options:0 error:{v82, v63, v64, v65}];

  v50 = v82[0];
  if (v49)
  {
    v66 = v45;
    v69 = v46;
    v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    static String.Encoding.utf8.getter();
    v67 = v51;
    v68 = v53;
    String.init(data:encoding:)();

    v54 = v71;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v72 + 8))(v54, v73);
    IncomingMessageEntity.init(id:messageID:channel:userInfo:)();
    NotificationStore.incomingMessages.getter();
    v56 = v67;
    v57 = v68;
    dispatch thunk of Table.save.getter();

    dispatch thunk of Save.entity(_:)();

    NotificationStore.incomingMessages.getter();
    dispatch thunk of Table.delete.getter();

    v82[3] = type metadata accessor for Date();
    v82[4] = &protocol witness table for Date;
    sub_100006D18(v82);
    Date.init(timeIntervalSinceNow:)();
    <= infix(_:_:)();
    sub_100006994(v82);
    dispatch thunk of Delete.where(_:)();

    sub_100006C78(v56, v57);

    v59 = sub_10006A2F8();
    v60(v59);
    v61 = sub_10006A2E8();
    v62(v61);
    ReferenceCountedLazy.decrease()();
    return v79();
  }

  else
  {
    v55 = v50;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_10006A228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for APSMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A28C(uint64_t a1)
{
  v2 = type metadata accessor for APSMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006A314(void *a1)
{
  v3 = type metadata accessor for AppConfiguration();
  sub_100006FBC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8(a1, a1[3]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC8weatherd32AppConfigurationSettingsProvider_appConfiguration, v8, v3);
  sub_100006994(a1);
  return v1;
}

uint64_t sub_10006A414()
{
  v1 = OBJC_IVAR____TtC8weatherd32AppConfigurationSettingsProvider_appConfiguration;
  v2 = type metadata accessor for AppConfiguration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for AppConfigurationSettingsProvider(uint64_t a1)
{
  result = qword_1000A58B8;
  if (!qword_1000A58B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006A504(uint64_t a1)
{
  result = type metadata accessor for AppConfiguration();
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

uint64_t sub_10006A594@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for NamedNetworkConfiguration();
  sub_100006FBC();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = v36 - v9;
  v10 = sub_100003020(&qword_1000A5940, qword_1000829E8);
  __chkstk_darwin(v10 - 8);
  v42 = v36 - v11;
  type metadata accessor for NetworkConfiguration();
  sub_100006FBC();
  v43 = v13;
  v44 = v12;
  v14 = __chkstk_darwin(v12);
  v39 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v41 = v36 - v16;
  v17 = [objc_allocWithZone(NSProcessInfo) init];
  v18 = [v17 processName];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v36[1] = OBJC_IVAR____TtC8weatherd32AppConfigurationSettingsProvider_appConfiguration;
  v37 = v1;
  result = AppConfiguration.namedNetworkConfigurations.getter();
  v23 = result;
  v24 = 0;
  v25 = *(result + 16);
  v45 = v4 + 16;
  v46 = v25;
  while (1)
  {
    if (v46 == v24)
    {

      v29 = v42;
      v30 = v44;
      sub_100006BD4(v42, 1, 1, v44);
      v31 = v41;
      AppConfiguration.network.getter();
      v32 = sub_100007374(v29, 1, v30);
      v33 = v43;
      if (v32 != 1)
      {
        sub_10006A9F4(v29);
      }

      goto LABEL_14;
    }

    if (v24 >= *(v23 + 16))
    {
      break;
    }

    (*(v4 + 16))(v8, v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v2);
    if (NamedNetworkConfiguration.name.getter() == v19 && v26 == v21)
    {

LABEL_13:

      v34 = v38;
      (*(v4 + 32))(v38, v8, v2);
      v35 = v42;
      NamedNetworkConfiguration.networkConfiguration.getter();
      (*(v4 + 8))(v34, v2);
      v30 = v44;
      sub_100006BD4(v35, 0, 1, v44);
      v33 = v43;
      v31 = v41;
      (*(v43 + 32))(v41, v35, v30);
LABEL_14:
      (*(v33 + 16))(v39, v31, v30);
      WDSClientConfiguration.init(networkConfiguration:)();
      return (*(v33 + 8))(v31, v30);
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      goto LABEL_13;
    }

    result = (*(v4 + 8))(v8, v2);
    ++v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006A9F4(uint64_t a1)
{
  v2 = sub_100003020(&qword_1000A5940, qword_1000829E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006AA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v26[-v10];
  v12 = type metadata accessor for PrecipitationForecastSummaries(0);
  v13 = *(v12 + 20);
  type metadata accessor for ForecastSummary();
  sub_10006C76C();
  sub_100006BD4(v14, v15, v16, v17);
  v18 = *(v12 + 24);
  sub_10006C76C();
  sub_100006BD4(v19, v20, v21, v22);
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  (*(v24 + 16))(a3, a1, v23);
  v27 = a1;
  sub_10006AC1C(sub_10006C034, a2, v11);
  sub_10006AF70(v11, a2, v9);

  (*(v24 + 8))(a1, v23);
  sub_10006C054(v11, a3 + v13);
  return sub_10006C054(v9, a3 + v18);
}

uint64_t sub_10006AC1C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16 = a3;
  v17 = a1;
  v5 = type metadata accessor for ForecastSummary();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v18 = a2;
  v10 = *(a2 + 16);
  v11 = (v6 + 8);
  while (1)
  {
    if (v10 == v9)
    {
      v13 = 1;
      v14 = v16;
      return sub_100006BD4(v14, v13, 1, v5);
    }

    (*(v6 + 16))(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v5);
    v12 = v17(v8);
    if (v3)
    {
      return (*v11)(v8, v5);
    }

    if (v12)
    {
      break;
    }

    (*v11)(v8, v5);
    ++v9;
  }

  v14 = v16;
  (*(v6 + 32))(v16, v8, v5);
  v13 = 0;
  return sub_100006BD4(v14, v13, 1, v5);
}

uint64_t sub_10006ADD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_100003020(&qword_1000A3800, &unk_100080860);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ForecastSummary.endTime.getter();
  if (sub_100007374(v4, 1, v5) == 1)
  {
    sub_10006C0E4(v4, &qword_1000A3800, &unk_100080860);
    v9 = 1;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = static Date.> infix(_:_:)();
    (*(v6 + 8))(v8, v5);
  }

  return v9 & 1;
}

uint64_t sub_10006AF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v19[-v7];
  v9 = sub_100003020(&qword_1000A3800, &unk_100080860);
  __chkstk_darwin(v9 - 8);
  v11 = &v19[-v10];
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000E244(a1, v8);
  v16 = type metadata accessor for ForecastSummary();
  if (sub_100007374(v8, 1, v16) == 1)
  {
    sub_10006C0E4(v8, &qword_1000A37F8, &unk_100082A40);
    sub_100006BD4(v11, 1, 1, v12);
LABEL_4:
    sub_10006C0E4(v11, &qword_1000A3800, &unk_100080860);
    return sub_100006BD4(a3, 1, 1, v16);
  }

  ForecastSummary.endTime.getter();
  (*(*(v16 - 8) + 8))(v8, v16);
  if (sub_100007374(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v18 = (*(v13 + 32))(v15, v11, v12);
  __chkstk_darwin(v18);
  *&v19[-16] = a1;
  *&v19[-8] = v15;
  sub_10006AC1C(sub_10006C0C4, a2, a3);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_10006B238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v35 = a2;
  v4 = sub_100003020(&qword_1000A3800, &unk_100080860);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v34 = type metadata accessor for Date();
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ForecastSummary();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003020(&qword_1000A5948, &qword_100082A50);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  v16 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v30 - v20;
  v22 = *(v9 + 16);
  v33 = a1;
  v22(&v30 - v20, a1, v8);
  sub_100006BD4(v21, 0, 1, v8);
  v23 = *(v13 + 56);
  sub_10000E244(v21, v15);
  sub_10000E244(v35, &v15[v23]);
  if (sub_100007374(v15, 1, v8) == 1)
  {
    sub_10006C0E4(v21, &qword_1000A37F8, &unk_100082A40);
    if (sub_100007374(&v15[v23], 1, v8) == 1)
    {
      sub_10006C0E4(v15, &qword_1000A37F8, &unk_100082A40);
LABEL_11:
      v25 = 0;
      return v25 & 1;
    }

    goto LABEL_6;
  }

  sub_10000E244(v15, v19);
  if (sub_100007374(&v15[v23], 1, v8) == 1)
  {
    sub_10006C0E4(v21, &qword_1000A37F8, &unk_100082A40);
    (*(v9 + 8))(v19, v8);
LABEL_6:
    sub_10006C0E4(v15, &qword_1000A5948, &qword_100082A50);
    goto LABEL_7;
  }

  (*(v9 + 32))(v11, &v15[v23], v8);
  sub_10006C1FC(&qword_1000A5950, &type metadata accessor for ForecastSummary, &protocol conformance descriptor for ForecastSummary);
  LODWORD(v35) = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v9 + 8);
  v28(v11, v8);
  sub_10006C0E4(v21, &qword_1000A37F8, &unk_100082A40);
  v28(v19, v8);
  sub_10006C0E4(v15, &qword_1000A37F8, &unk_100082A40);
  if (v35)
  {
    goto LABEL_11;
  }

LABEL_7:
  ForecastSummary.endTime.getter();
  v24 = v34;
  if (sub_100007374(v6, 1, v34) == 1)
  {
    sub_10006C0E4(v6, &qword_1000A3800, &unk_100080860);
    v25 = 1;
  }

  else
  {
    v27 = v30;
    v26 = v31;
    (*(v31 + 32))(v30, v6, v24);
    v25 = static Date.> infix(_:_:)();
    (*(v26 + 8))(v27, v24);
  }

  return v25 & 1;
}

uint64_t sub_10006B724(void *a1)
{
  v3 = v1;
  v5 = sub_100003020(&qword_1000A5970, &qword_100082A60);
  sub_100006FBC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  sub_1000032B8(a1, a1[3]);
  sub_10006C144();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21[1] = 0;
  type metadata accessor for Date();
  sub_10006C73C();
  sub_10006C1FC(v11, v12, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for PrecipitationForecastSummaries(0);
    v14 = *(v13 + 20);
    v21[0] = 1;
    type metadata accessor for ForecastSummary();
    sub_10006C754();
    sub_10006C1FC(v15, v16, &protocol conformance descriptor for ForecastSummary);
    sub_10006C7B8(v3 + v14, v21);
    v17 = *(v13 + 24);
    v20 = 2;
    sub_10006C7B8(v3 + v17, &v20);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_10006B910(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_10006C7DC(1702125924, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
    if (v6 || (sub_10006C7DC(0x746E6572727563, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1954047342 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_10006C7DC(1954047342, 0xE400000000000000);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int sub_10006BA34(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_10006BA7C(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0x746E6572727563;
  }

  return 1954047342;
}

uint64_t sub_10006BAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006B910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006BB1C(uint64_t a1)
{
  v2 = sub_10006C144();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006BB58(uint64_t a1)
{
  v2 = sub_10006C144();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006BB94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
  v5 = __chkstk_darwin(v4 - 8);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v39 - v7;
  v8 = type metadata accessor for Date();
  sub_100006FBC();
  v42 = v9;
  __chkstk_darwin(v10);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100003020(&qword_1000A5958, &qword_100082A58);
  sub_100006FBC();
  v43 = v12;
  __chkstk_darwin(v13);
  v14 = type metadata accessor for PrecipitationForecastSummaries(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 28);
  type metadata accessor for ForecastSummary();
  v48 = v18;
  sub_10006C76C();
  sub_100006BD4(v19, v20, v21, v22);
  v47 = *(v15 + 32);
  sub_10006C76C();
  sub_100006BD4(v23, v24, v25, v26);
  sub_1000032B8(a1, a1[3]);
  sub_10006C144();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100006994(a1);
    sub_10006C0E4(&v17[v48], &qword_1000A37F8, &unk_100082A40);
    return sub_10006C0E4(&v17[v47], &qword_1000A37F8, &unk_100082A40);
  }

  else
  {
    v27 = v44;
    v39 = a1;
    v50[1] = 0;
    sub_10006C73C();
    sub_10006C1FC(v28, v29, &protocol conformance descriptor for Date);
    v30 = v45;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v42 + 32))(v17, v30, v8);
    v50[0] = 1;
    sub_10006C754();
    v33 = sub_10006C1FC(v31, v32, &protocol conformance descriptor for ForecastSummary);
    sub_10006C77C(v33, v50);
    v34 = sub_10006C054(v27, &v17[v48]);
    v49 = 2;
    v35 = v41;
    sub_10006C77C(v34, &v49);
    v36 = sub_10006C7A8();
    v37(v36);
    sub_10006C054(v35, &v17[v47]);
    sub_10006C198(v17, v40);
    sub_100006994(v39);
    return sub_10000E2B4(v17);
  }
}

uint64_t type metadata accessor for PrecipitationForecastSummaries(uint64_t a1)
{
  result = qword_1000A59D0;
  if (!qword_1000A59D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006C054(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C0E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003020(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10006C144()
{
  result = qword_1000A5960;
  if (!qword_1000A5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5960);
  }

  return result;
}

uint64_t sub_10006C198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationForecastSummaries(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C1FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PrecipitationForecastSummaries.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}