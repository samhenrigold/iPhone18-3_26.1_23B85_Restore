void sub_10059910C(void *a1, int a2)
{
  v61 = a2;
  v60 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue];
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v3);
  if ((v11 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  sub_10000F61C(&v2[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_dataSource], *&v2[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_dataSource + 24]);

  v13 = sub_10041294C(v12);

  v21 = *v13->clientIdentity;
  v22 = v2;
  if (v21)
  {
    v57 = v2;
    v70 = &_swiftEmptyArrayStorage;
    sub_100253968(0, v21, 0);
    v23 = 0;
    v24 = 0;
    v25 = v70;
    v26 = &v13->clientIdentity[32];
    v58 = v21;
    v59 = v13;
    while (v23 < *v13->clientIdentity)
    {
      v27 = *(v26 - 1);
      v28 = *v26;
      v63[0] = *(v26 - 2);
      v63[1] = v27;
      v63[2] = v28;
      v29 = v63[0];
      v30 = v27;
      v31 = v28;
      sub_100599CB0(v63, v60, v61 & 1, &v64);
      v62 = v24;

      v39 = v64;
      v40 = v65;
      v41 = v66;
      v42 = v67;
      v43 = v68;
      v44 = v69;
      v70 = v25;
      v46 = *v25->clientIdentity;
      v45 = *&v25->clientIdentity[8];
      if (v46 >= v45 >> 1)
      {
        v56 = v65;
        sub_100253968((v45 > 1), v46 + 1, 1);
        v40 = v56;
        v25 = v70;
      }

      *v25->clientIdentity = v46 + 1;
      v47 = v25 + 40 * v46;
      *(v47 + 4) = v39;
      ++v23;
      *(v47 + 40) = v40;
      *(v47 + 7) = v41;
      v47[64] = v42;
      v47[65] = v43;
      v47[66] = v44;
      v26 += 3;
      v13 = v59;
      v24 = v62;
      if (v58 == v23)
      {
        v59, v32, v33, v34, v35, v36, v37, v38;
        v22 = v57;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v13, v14, v15, v16, v17, v18, v19, v20;
  v25 = &_swiftEmptyArrayStorage;
LABEL_10:
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_10029312C(v22, v25, Strong);
  v25, v49, v50, v51, v52, v53, v54, v55;
  swift_unknownObjectRelease();
}

void sub_10059948C(void (*a1)(void), uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  a1();
  if (qword_1009365B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094D320);

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  a4, v8, v9, v10, v11, v12, v13, v14;
  if (os_log_type_enabled(oslog, v7))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_10000668C(a3, a4, &v18);
    _os_log_impl(&_mh_execute_header, oslog, v7, "os_transaction RELEASE {name: com.apple.remindd.RDLocationAlarmProducer.%{public}s}", v15, 0xCu);
    sub_10000607C(v16);
  }
}

void sub_100599680()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue];
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v2 + 104);
  (v9)(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = *(v2 + 8);
  v11(v6, v1);
  if (v7)
  {
    v48 = v11;
    v49 = v9;
    if (qword_1009365B8 == -1)
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
  v12 = type metadata accessor for Logger();
  v13 = sub_100006654(v12, qword_10094D320);
  v14 = v0;
  v47 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    HIDWORD(v45) = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    *v18 = 136315138;
    v50 = 60;
    v51 = 0xE100000000000000;
    v52 = v19;
    v20._countAndFlagsBits = sub_100597C80(v14);
    v46 = v14;
    object = v20._object;
    String.append(_:)(v20);
    object, v22, v23, v24, v25, v26, v27, v28;
    v29._countAndFlagsBits = 62;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v30 = v51;
    v31 = sub_10000668C(v50, v51, &v52);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v18 + 4) = v31;
    v14 = v46;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting location alarm producer {producer: %s}", v18, 0xCu);
    sub_10000607C(v19);

    v8 = HIDWORD(v45);
  }

  v39 = *&v14[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_locationManager];
  v40 = *(v39 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v6 = v40;
  v49(v6, v8, v1);
  v41 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v48(v6, v1);
  if (v40)
  {
    if (*(v39 + OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager))
    {
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "locationManager started, reconciling all geofences", v44, 2u);
      }

      sub_100597F7C();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100599A00()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (qword_1009365B8 == -1)
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
  sub_100006654(v10, qword_10094D320);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "alarmDatabaseDidChange, reconciling all geofences", v13, 2u);
  }

  sub_100597F7C();
}

void sub_100599CB0(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v143 = a4;
  v146 = type metadata accessor for Date();
  v150 = *(v146 - 8);
  __chkstk_darwin(v146, v7);
  v9 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v141 = (&v137 - v12);
  __chkstk_darwin(v13, v14);
  v16 = &v137 - v15;
  __chkstk_darwin(v17, v18);
  v149 = &v137 - v19;
  v20 = type metadata accessor for Calendar();
  v144 = *(v20 - 8);
  v145 = v20;
  __chkstk_darwin(v20, v21);
  v148 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v147 = *a1;
  v142 = v23;
  v151 = v24;
  v25 = [v151 identifier];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (!a2)
  {
    v28, v29, v30, v31, v32, v33, v34, v35;
    goto LABEL_17;
  }

  v36 = [a2 identifier];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  if (v26 != v37 || v28 != v39)
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v28, v55, v56, v57, v58, v59, v60, v61;
    v39, v62, v63, v64, v65, v66, v67, v68;
    if (v54)
    {
      goto LABEL_7;
    }

LABEL_17:
    v71 = v147;
    v99 = v147;
    v100 = v148;
    static Calendar.current.getter();
    v74 = v149;
    Date.init()();
    v101 = 1;
    goto LABEL_33;
  }

  v28, v40, v41, v42, v43, v44, v45, v46;
  v39, v47, v48, v49, v50, v51, v52, v53;
LABEL_7:
  v69 = &selRef_notifyOnEntry;
  if ((a3 & 1) == 0)
  {
    v69 = &selRef_notifyOnExit;
  }

  v70 = [v151 *v69];
  v71 = v147;
  v72 = v147;
  v73 = v148;
  static Calendar.current.getter();
  v74 = v149;
  Date.init()();
  if (v70)
  {
    v75 = [v72 displayDate];
    v76 = v150;
    if (v75)
    {
      v140 = v75;
      v77 = [v75 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v78 = v16;
      v79 = Calendar.isDate(_:inSameDayAs:)();
      v80 = v146;
      if ((v79 & 1) != 0 || (sub_10059B3E8(&qword_1009464D0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date), (dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0))
      {
        if (qword_1009365B8 != -1)
        {
          swift_once();
        }

        v102 = type metadata accessor for Logger();
        sub_100006654(v102, qword_10094D320);
        (*(v76 + 16))(v9, v16, v80);
        v103 = Logger.logObject.getter();
        v104 = v80;
        v105 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v103, v105))
        {
          v106 = swift_slowAlloc();
          v139 = v16;
          v107 = v106;
          v141 = swift_slowAlloc();
          v152 = v141;
          *v107 = 136315138;
          sub_10059B3E8(&qword_100937010, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v108 = dispatch thunk of CustomStringConvertible.description.getter();
          v110 = v109;
          v111 = *(v76 + 8);
          v111(v9, v104);
          v112 = sub_10000668C(v108, v110, &v152);
          v110, v113, v114, v115, v116, v117, v118, v119;
          *(v107 + 4) = v112;
          _os_log_impl(&_mh_execute_header, v103, v105, "Reminder has displayDate that's in the past or same day, firing geofence as active as usual {displayDate.date: %s}", v107, 0xCu);
          sub_10000607C(v141);

          v111(v139, v104);
        }

        else
        {

          v125 = *(v76 + 8);
          v125(v9, v104);
          v125(v16, v104);
        }

        v101 = 0;
      }

      else
      {
        if (qword_1009365B8 != -1)
        {
          swift_once();
        }

        v81 = type metadata accessor for Logger();
        sub_100006654(v81, qword_10094D320);
        v82 = v141;
        (*(v76 + 16))(v141, v78, v80);
        v83 = v78;
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          v152 = v138;
          *v86 = 136315138;
          sub_10059B3E8(&qword_100937010, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v87 = dispatch thunk of CustomStringConvertible.description.getter();
          v139 = v83;
          v89 = v88;
          v90 = *(v76 + 8);
          v90(v82, v80);
          v91 = sub_10000668C(v87, v89, &v152);
          v89, v92, v93, v94, v95, v96, v97, v98;
          *(v86 + 4) = v91;
          _os_log_impl(&_mh_execute_header, v84, v85, "Reminder has displayDate that's in the future, firing geofence as passive instead of active. {displayDate.date: %s}", v86, 0xCu);
          sub_10000607C(v138);

          v90(v139, v80);
        }

        else
        {

          v126 = *(v76 + 8);
          v126(v82, v80);
          v126(v83, v80);
        }

        v101 = 1;
      }

      v100 = v148;
      v74 = v149;
      v71 = v147;
    }

    else
    {
      if (qword_1009365B8 != -1)
      {
        swift_once();
      }

      v120 = type metadata accessor for Logger();
      sub_100006654(v120, qword_10094D320);
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.default.getter();
      v123 = os_log_type_enabled(v121, v122);
      v71 = v147;
      if (v123)
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&_mh_execute_header, v121, v122, "Reminder has no displayDate, firing geofence as active", v124, 2u);
      }

      v101 = 0;
      v100 = v148;
      v74 = v149;
    }
  }

  else
  {
    v101 = 1;
    v100 = v73;
  }

LABEL_33:
  v127 = v71;
  v128 = v142;
  v129 = sub_1007467B8(v128);
  v131 = v130;
  v133 = v132;
  v135 = v134;

  (*(v150 + 8))(v74, v146);
  (*(v144 + 8))(v100, v145);

  v136 = v143;
  *v143 = v127;
  v136[1] = v129;
  v136[2] = v131;
  v136[3] = v133;
  *(v136 + 32) = v135;
  *(v136 + 33) = v101;
  *(v136 + 34) = 0;
}

void sub_10059A5D8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  *&v7 = __chkstk_darwin(v4, v6).n128_u64[0];
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 structuredLocation];
  v92 = REMStructuredLocation.clCircularRegion.getter();

  v11 = [a1 objectID];
  v12 = [v11 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v9, v4);
  v93 = v13;
  v94 = v15;

  v17._countAndFlagsBits = 47;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v15, v18, v19, v20, v21, v22, v23, v24;
  v25 = v93;
  v26 = v94;
  v27 = [v2 objectID];
  v28 = [v27 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = UUID.uuidString.getter();
  v31 = v30;
  v16(v9, v4);
  v93 = v25;
  v94 = v26;
  v32 = v92;

  v33._countAndFlagsBits = v29;
  v33._object = v31;
  String.append(_:)(v33);
  v31, v34, v35, v36, v37, v38, v39, v40;
  v26, v41, v42, v43, v44, v45, v46, v47;
  v48 = v94;
  [v32 center];
  v50 = v49;
  v52 = v51;
  [v32 radius];
  v54 = v53;
  v55 = objc_allocWithZone(CLCircularRegion);
  v56 = String._bridgeToObjectiveC()();
  v57 = [v55 initWithCenter:v56 radius:v50 identifier:{v52, v54}];

  [v57 setGeoReferenceFrame:{objc_msgSend(v32, "geoReferenceFrame")}];
  v58 = [v2 proximity];
  if (!v58)
  {
    v48, v59, v60, v61, v62, v63, v64, v65;
    goto LABEL_13;
  }

  if (v58 == 2)
  {
    v48, v59, v60, v61, v62, v63, v64, v65;
    v66 = v57;
    [v66 setNotifyOnEntry:0];
    [v66 setNotifyOnExit:1];
    [v66 setConservativeEntry:0];

LABEL_13:
    return;
  }

  if (v58 == 1)
  {
    v48, v59, v60, v61, v62, v63, v64, v65;
    v67 = v57;
    [v67 setNotifyOnEntry:1];
    [v67 setNotifyOnExit:0];
    v68 = [v2 structuredLocation];
    v69 = [v68 contactLabel];

    if (v69 || (v70 = [v2 structuredLocation], v69 = objc_msgSend(v70, "title"), v70, v69))
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      if (String.containsNameOfHomeLocation.getter())
      {
        v72, v73, v74, v75, v76, v77, v78, v79;
LABEL_11:
        [v67 setConservativeEntry:1];

        goto LABEL_13;
      }

      v80 = String.containsNameOfWorkLocation.getter();
      v72, v81, v82, v83, v84, v85, v86, v87;
      if (v80)
      {
        goto LABEL_11;
      }
    }

    v32 = v67;
    goto LABEL_13;
  }

  if (qword_1009365B8 != -1)
  {
    swift_once();
  }

  v88 = type metadata accessor for Logger();
  sub_100006654(v88, qword_10094D320);
  v89 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  v90 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  sub_10054573C("unknown proximity", 17, 2, v89, v90);
  __break(1u);
}

uint64_t sub_10059AB04(uint64_t a1, uint64_t a2)
{
  result = sub_10059B3E8(&qword_10094D380, a2, type metadata accessor for RDLocationAlarmProducer, &protocol conformance descriptor for NSObject);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10059AB5C(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4, uint64_t a5)
{
  v63 = a4;
  v64 = a5;
  v65 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v66 = *(v11 - 8);
  v67 = v11;
  __chkstk_darwin(v11, v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009365B8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_10094D320);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  a3, v18, v19, v20, v21, v22, v23, v24;
  if (os_log_type_enabled(v16, v17))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_10000668C(a2, a3, &aBlock);
    _os_log_impl(&_mh_execute_header, v16, v17, "os_transaction INIT {name: com.apple.remindd.RDLocationAlarmProducer.%{public}s}", v25, 0xCu);
    sub_10000607C(v26);
  }

  aBlock = 0;
  v71 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);
  v71, v27, v28, v29, v30, v31, v32, v33;
  aBlock = 0xD00000000000002ALL;
  v71 = 0x80000001007FD120;
  v34._countAndFlagsBits = a2;
  v34._object = a3;
  String.append(_:)(v34);
  v35 = v71;
  String.utf8CString.getter();
  v35, v36, v37, v38, v39, v40, v41, v42;
  v43 = os_transaction_create();

  if (v43)
  {
    v44 = swift_allocObject();
    v45 = v64;
    v44[2] = v63;
    v44[3] = v45;
    v44[4] = a2;
    v44[5] = a3;
    v44[6] = v43;
    v74 = sub_10059B430;
    v75 = v44;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_100019200;
    v73 = &unk_1008F84D8;
    v46 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v69 = &_swiftEmptyArrayStorage;
    sub_10059B3E8(&qword_100936E90, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000AB90();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v46);
    swift_unknownObjectRelease();
  }

  else
  {

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    a3, v49, v50, v51, v52, v53, v54, v55;
    if (os_log_type_enabled(v47, v48))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock = v57;
      *v56 = 136446210;
      *(v56 + 4) = sub_10000668C(a2, a3, &aBlock);
      _os_log_impl(&_mh_execute_header, v47, v48, "RDLocationAlarmProducer: Couldn't create os_transaction_t for %{public}s", v56, 0xCu);
      sub_10000607C(v57);
    }

    v58 = swift_allocObject();
    v59 = v64;
    *(v58 + 16) = v63;
    *(v58 + 24) = v59;
    v74 = sub_100008D30;
    v75 = v58;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_100019200;
    v73 = &unk_1008F8488;
    v60 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v69 = &_swiftEmptyArrayStorage;
    sub_10059B3E8(&qword_100936E90, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000AB90();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v60);
  }

  (*(v68 + 8))(v10, v7);
  (*(v66 + 8))(v14, v67);
}

uint64_t sub_10059B1B0(void *a1)
{
  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    [v5 center];
    Double.write<A>(to:)();
    v7._countAndFlagsBits = 44;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    [v5 center];
    Double.write<A>(to:)();
    [v5 radius];
    Double.write<A>(to:)();
    [v5 geoReferenceFrame];
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v11._countAndFlagsBits = 95;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    String.append(_:)(v12);
    0xE000000000000000, v13, v14, v15, v16, v17, v18, v19;
    v20._countAndFlagsBits = 95;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    String.append(_:)(v21);
    0xE000000000000000, v22, v23, v24, v25, v26, v27, v28;
    v29._countAndFlagsBits = 95;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v30._countAndFlagsBits = v8;
    v30._object = v10;
    String.append(_:)(v30);

    v10, v31, v32, v33, v34, v35, v36, v37;
  }

  return v3;
}

unint64_t sub_10059B39C()
{
  result = qword_100946540;
  if (!qword_100946540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100946540);
  }

  return result;
}

uint64_t sub_10059B3E8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10059B448@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6, v9);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

void sub_10059B61C(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = a1;
  v23 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  v26 = *(v23 - 8);
  __chkstk_darwin(v23, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v22 - v10;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      sub_1001A3A2C(*(a2 + 48) + *(v26 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v11);
      sub_1001A3A90(v11, v7);
      v18 = v25(v7);
      if (v3)
      {
        sub_1001A3AF4(v7);

        return;
      }

      if (v18)
      {
        break;
      }

      v14 &= v14 - 1;
      sub_1001A3AF4(v7);
      v16 = v17;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v21 = v24;
    sub_1001A3A90(v7, v24);
    v20 = v21;
    v19 = 0;
LABEL_13:
    (*(v26 + 56))(v20, v19, 1, v23);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        v19 = 1;
        v20 = v24;
        goto LABEL_13;
      }

      v14 = *(a2 + 56 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_10059B844(uint64_t a1)
{
  v2 = v1;
  v104 = *v1;
  v4 = sub_1000F5104(&unk_10094D440, &qword_1007B2C60);
  __chkstk_darwin(v4 - 8, v5);
  v106 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v117 = &v100 - v9;
  v108 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  v116 = *(v108 - 8);
  __chkstk_darwin(v108, v10);
  v114 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v113 = &v100 - v14;
  __chkstk_darwin(v15, v16);
  v112 = &v100 - v17;
  __chkstk_darwin(v18, v19);
  v105 = &v100 - v20;
  __chkstk_darwin(v21, v22);
  v111 = &v100 - v23;
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24, v26);
  v101 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v103 = &v100 - v30;
  v31 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  v32 = v31 - 8;
  __chkstk_darwin(v31, v33);
  v35 = &v100 - v34;
  v36 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v36 - 8, v37);
  v102 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v40);
  v42 = &v100 - v41;
  __chkstk_darwin(v43, v44);
  v109 = &v100 - v45;
  __chkstk_darwin(v46, v47);
  v49 = &v100 - v48;
  __chkstk_darwin(v50, v51);
  v107 = &v100 - v52;
  v53 = OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate;
  v54 = *(v32 + 56);
  v110 = v2;
  sub_10012F78C(v2 + OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate, v35);
  v115 = a1;
  sub_10012F78C(a1 + v53, &v35[v54]);
  v55 = *(v25 + 48);
  LODWORD(v32) = v55(&v35[v54], 1, v24);
  v56 = v55(v35, 1, v24);
  if (v32 != 1)
  {
    if (v56 != 1)
    {
      sub_10012F7FC(v35, v49);
      v61 = v109;
      sub_10012F7FC(&v35[v54], v109);
      sub_10012F78C(v49, v42);
      if (v55(v42, 1, v24) == 1)
      {
        sub_1000050A4(v49, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v42, &unk_100938850, qword_100795AE0);
        v58 = v108;
        v59 = v110;
      }

      else
      {
        v62 = *(v25 + 32);
        v63 = v61;
        v64 = v103;
        v62(v103, v42, v24);
        v65 = v63;
        v66 = v102;
        sub_10012F78C(v65, v102);
        if (v55(v66, 1, v24) == 1)
        {
          (*(v25 + 8))(v64, v24);
          sub_1000050A4(v49, &unk_100938850, qword_100795AE0);
          sub_1000050A4(v66, &unk_100938850, qword_100795AE0);
          v58 = v108;
        }

        else
        {
          v67 = v101;
          v62(v101, v66, v24);
          v68 = static Date.> infix(_:_:)();
          v69 = *(v25 + 8);
          v69(v67, v24);
          sub_1000050A4(v49, &unk_100938850, qword_100795AE0);
          v70 = v64;
          v71 = v25;
          v58 = v108;
          if (v68)
          {
            sub_1000050A4(v109, &unk_100938850, qword_100795AE0);
            v72 = v107;
            v62(v107, v70, v24);
            (*(v71 + 56))(v72, 0, 1, v24);
            goto LABEL_9;
          }

          v69(v70, v24);
        }

        v61 = v109;
        v59 = v110;
      }

      v60 = v115;
      sub_10012F7FC(v61, v107);
      goto LABEL_19;
    }

    v57 = &v35[v54];
    goto LABEL_7;
  }

  if (v56 != 1)
  {
    v57 = v35;
LABEL_7:
    sub_10012F7FC(v57, v107);
    goto LABEL_8;
  }

  (*(v25 + 56))(v107, 1, 1, v24);
LABEL_8:
  v58 = v108;
LABEL_9:
  v59 = v110;
  v60 = v115;
LABEL_19:
  v73 = *(v60 + 16);
  v74 = *(v59 + 16);
  v76 = v74 + 56;
  v75 = *(v74 + 56);
  v118 = v73;
  v119 = _swiftEmptySetSingleton;
  v77 = 1 << *(v74 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & v75;
  v80 = (v77 + 63) >> 6;
  v109 = v116 + 48;
  v110 = v73;

  v115 = v74;

  v81 = 0;
  for (i = v105; ; sub_1001A3AF4(i))
  {
    v86 = v58;
    if (!v79)
    {
      break;
    }

LABEL_30:
    v88 = v116;
    v89 = v111;
    sub_1001A3A2C(*(v115 + 48) + *(v116 + 72) * (__clz(__rbit64(v79)) | (v81 << 6)), v111);
    v90 = sub_1001A3A90(v89, i);
    __chkstk_darwin(v90, v91);
    *(&v100 - 2) = i;
    v92 = v117;
    sub_10059B61C(sub_10026017C, v110, v117);
    if ((*(v88 + 48))(v92, 1, v86) == 1)
    {
      sub_1000050A4(v117, &unk_10094D440, &qword_1007B2C60);
LABEL_23:
      v83 = v114;
      sub_1001A3A2C(i, v114);
      v84 = v113;
      sub_10037E7F4(v113, v83);
      v85 = v84;
      v58 = v86;
      goto LABEL_24;
    }

    v93 = v112;
    sub_1001A3A90(v117, v112);
    if ((static Date.> infix(_:_:)() & 1) == 0)
    {
      sub_1001A3AF4(v93);
      goto LABEL_23;
    }

    v94 = v114;
    sub_1001A3A2C(v93, v114);
    v95 = v113;
    sub_10037E7F4(v113, v94);
    sub_1001A3AF4(v95);
    v96 = v106;
    sub_10019F22C(v106);
    v97 = v96;
    v58 = v108;
    sub_1000050A4(v97, &unk_10094D440, &qword_1007B2C60);
    v85 = v112;
LABEL_24:
    v79 &= v79 - 1;
    sub_1001A3AF4(v85);
  }

  while (1)
  {
    v87 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      break;
    }

    if (v87 >= v80)
    {

      sub_1003562D4(v118);
      v98 = v119;
      v99 = swift_allocObject();
      *(v99 + 16) = v98;
      sub_10012F7FC(v107, v99 + OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate);
      return;
    }

    v79 = *(v76 + 8 * v87);
    ++v81;
    if (v79)
    {
      v81 = v87;
      goto LABEL_30;
    }
  }

  __break(1u);
}

uint64_t sub_10059C178(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  sub_1000050A4(v8 + OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate, &unk_100938850, qword_100795AE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDRecentlyDeletedInfo(uint64_t a1)
{
  result = qword_10094D3B0;
  if (!qword_10094D3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10059C248(uint64_t a1)
{
  sub_100140DD4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10059C2F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  __chkstk_darwin(v13, v14);
  v16 = &v24 - v15;
  sub_1005A4F78(*(a1 + 16), *(a2 + 16));
  if ((v17 & 1) == 0)
  {
    v21 = 0;
    return v21 & 1;
  }

  v18 = OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate;
  v19 = *(v13 + 48);
  sub_10012F78C(a1 + OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate, v16);
  sub_10012F78C(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_10012F78C(v16, v12);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v19], v4);
      sub_1002D81D8();
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1000050A4(v16, &unk_100938850, qword_100795AE0);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_8;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
LABEL_8:
    sub_1000050A4(v16, &qword_100938C18, &qword_1007957A0);
    v21 = 0;
    return v21 & 1;
  }

  sub_1000050A4(v16, &unk_100938850, qword_100795AE0);
  v21 = 1;
  return v21 & 1;
}

void sub_10059C6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1001BF6C0;
    v11[3] = a7;
    v10 = _Block_copy(v11);
  }

  else
  {
    v10 = 0;
  }

  [v7 updateCloudContextStateWithSyncOption:a1 syncReason:a2 withCompletionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_10059C7C8()
{

  return swift_deallocClassInstance();
}

void sub_10059C9F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(NSError);
  v6 = @"com.apple.remindd.RDAccountPropertiesErrorDomain";
  v7 = [v5 initWithDomain:v6 code:a2 userInfo:0];

  *a3 = v7;
}

char *sub_10059CA8C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v111 = a7;
  v112 = a3;
  v98 = a2;
  ObjectType = swift_getObjectType();
  v108 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v106 = *(v108 - 8);
  __chkstk_darwin(v108, v15);
  v103 = &v83 - v16;
  v101 = type metadata accessor for NSNotificationCenter.Publisher();
  v100 = *(v101 - 1);
  __chkstk_darwin(v101, v17);
  v99 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105, v19);
  v102 = &v83 - v20;
  v21 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v109 = *(v21 - 8);
  v110 = v21;
  __chkstk_darwin(v21, v22);
  v107 = &v83 - v23;
  v24 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v24 - 8, v25);
  v94 = &v83 - v26;
  v89 = sub_1000F5104(&qword_10094D5B8, &qword_1007B2DE0);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89, v27);
  v85 = &v83 - v28;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29, v31);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = &v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_propertyName];
  *v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34[1] = v35;
  UUID.init()();
  v36 = v29;
  v37 = v112;
  (*(v30 + 32))(&v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_uuid], v33, v36);
  type metadata accessor for RDAccountPersonIDSaltObserver.AccountInfo();
  v38 = swift_allocObject();
  v39 = v98;
  *(v38 + 16) = a1;
  *(v38 + 24) = v39;
  *&v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_account] = v38;
  v40 = &v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_successHandler];
  v96 = a5;
  *v40 = a5;
  *(v40 + 1) = a6;
  v41 = &v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_errorHandler];
  *v41 = v111;
  *(v41 + 1) = a8;
  *&v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_callbackQueue] = a4;
  v93 = a1;
  v113 = a6;

  v114 = a8;

  v42 = a4;
  if (v37)
  {
    v43 = v37;
    v44 = NSData.startIndex.getter();
    if (v44 != NSData.endIndex.getter())
    {
      v46 = v43;
      v45 = 0;
      goto LABEL_6;
    }

    v37 = 1;
  }

  v45 = 1;
LABEL_6:
  v97 = v45;
  v98 = v37;
  v115 = v37;
  v116 = v45;
  sub_1000F5104(&qword_10094D5C0, &qword_1007B2DE8);
  swift_allocObject();
  *&v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_currentValueSubject] = CurrentValueSubject.init(_:)();
  *&v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_cancellables] = &_swiftEmptyArrayStorage;
  v47 = ObjectType;
  v118.receiver = v9;
  v118.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v118, "init");
  v115 = *&v48[OBJC_IVAR___RDAccountPersonIDSaltObserver_currentValueSubject];
  v117 = v42;
  v92 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v49 = *(v92 - 8);
  v91 = *(v49 + 56);
  v90 = v49 + 56;
  v50 = v94;
  v91(v94, 1, 1, v92);
  v87 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&qword_10094D5C8, &qword_10094D5C0, &qword_1007B2DE8, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v86 = sub_100006CA4();
  v84 = v48;

  v51 = v85;
  Publisher.receive<A>(on:options:)();
  v52 = v50;
  sub_1000050A4(v50, &qword_100939980, &unk_10079ADA0);

  v53 = swift_allocObject();
  v54 = v96;
  v53[2] = v42;
  v53[3] = v54;
  v55 = v114;
  v56 = v111;
  v53[4] = v113;
  v53[5] = v56;
  v53[6] = v55;
  v53[7] = v47;
  v111 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000CB48(&qword_10094D5D0, &qword_10094D5B8, &qword_1007B2DE0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  ObjectType = v42;
  v57 = v89;
  Publisher<>.sink(receiveValue:)();

  (*(v88 + 8))(v51, v57);
  v58 = v84;
  swift_beginAccess();
  sub_1000F5104(&unk_10093D1B0, &unk_10079ADC0);
  v96 = sub_10000CB48(&qword_100936FA0, &unk_10093D1B0, &unk_10079ADC0, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v59 = [objc_opt_self() defaultCenter];
  v60 = v99;
  NSNotificationCenter.publisher(for:object:)();

  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;
  v64 = sub_100440048(v61, v62, 0xD00000000000001DLL, 0x80000001007B2C80, 0);
  v63, v65, v66, v67, v68, v69, v70, v71;
  (*(v100 + 8))(v60, v101);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  v73 = v93;
  *(inited + 32) = v93;
  v101 = v73;
  v74 = sub_1001A577C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v115 = v64;
  *(swift_allocObject() + 16) = v74;
  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_1000F5104(&unk_100936F70, &unk_100791B60);
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v75 = v103;
  Publisher.map<A>(_:)();

  sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40, &protocol conformance descriptor for Publishers.Map<A, B>);
  v76 = v102;
  v77 = v108;
  Publisher.filter(_:)();

  (*(v106 + 8))(v75, v77);
  v78 = ObjectType;
  v115 = ObjectType;
  v91(v52, 1, 1, v92);
  sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0, &protocol conformance descriptor for Publishers.Filter<A>);
  v79 = v107;
  v80 = v105;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v52, &qword_100939980, &unk_10079ADA0);
  (*(v104 + 8))(v76, v80);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50, v111);
  v81 = v110;
  Publisher<>.sink(receiveValue:)();

  (*(v109 + 8))(v79, v81);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
  sub_10059E4CC(v98, v97);

  return v58;
}

uint64_t sub_10059D738(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9, v11);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  v16 = *(a1 + 8);
  *v14 = a2;
  (*(v10 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v9, v12);
  v17 = a2;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v14, v9);
  if ((a2 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_6;
  }

  if ((v16 & 1) == 0)
  {
    return a3(v15);
  }

  if (v15 > 1u)
  {
    if (v15 == 2)
    {
      if (qword_1009365C8 != -1)
      {
        swift_once();
      }

      v18 = qword_100975260;
    }

    else
    {
      if (qword_1009365D8 != -1)
      {
        swift_once();
      }

      v18 = qword_100975270;
    }

    return a5(v18);
  }

  if (v15)
  {
    if (qword_1009365D0 != -1)
    {
      swift_once();
    }

    v18 = qword_100975268;
    return a5(v18);
  }

  if (qword_1009365C0 != -1)
  {
    goto LABEL_20;
  }

LABEL_6:
  v18 = qword_100975258;
  return a5(v18);
}

void *sub_10059D990(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    CurrentValueSubject.send(_:)();
  }

  return result;
}

void sub_10059DBB4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR___RDAccountPersonIDSaltObserver_callbackQueue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    return;
  }

  sub_10014F5CC(a1, &v14);
  if (!v16)
  {
    sub_1000050A4(&v14, &qword_100939ED0, &qword_100791B10);
    goto LABEL_8;
  }

  sub_1000060C8(0, &qword_100947440, NSData_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v14 = 2;
    v15 = 1;
    CurrentValueSubject.send(_:)();
    return;
  }

  v11 = v13[1];
  v12 = NSData.startIndex.getter();
  if (v12 == NSData.endIndex.getter())
  {
    v14 = 1;
    v15 = 1;
    CurrentValueSubject.send(_:)();
  }

  else
  {
    v14 = v11;
    v15 = 0;
    v11 = v11;
    CurrentValueSubject.send(_:)();
  }
}

uint64_t sub_10059DEAC()
{
  _StringGuts.grow(_:)(52);
  v1._object = 0x80000001007FD440;
  v1._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v1);
  v2._countAndFlagsBits = UUID.uuidString.getter();
  object = v2._object;
  String.append(_:)(v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  v11._countAndFlagsBits = 0x746E756F63636120;
  v11._object = 0xEB000000003A4449;
  String.append(_:)(v11);
  v12 = [*(v0 + OBJC_IVAR___RDAccountPersonIDSaltObserver_account) objectID];
  v13 = [v12 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);
  v16, v18, v19, v20, v21, v22, v23, v24;

  v25._countAndFlagsBits = 62;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  return 0;
}

id sub_10059DFDC()
{
  ObjectType = swift_getObjectType();
  v4 = 1;

  CurrentValueSubject.send(completion:)();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for RDAccountPersonIDSaltObserver(uint64_t a1)
{
  result = qword_10094D4F8;
  if (!qword_10094D4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10059E244(uint64_t a1)
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

unint64_t sub_10059E358()
{
  result = qword_10094D5B0;
  if (!qword_10094D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D5B0);
  }

  return result;
}

unint64_t *sub_10059E3BC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10059E4D8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void sub_10059E458(_TtC7remindd19RDXPCStorePerformer *a2@<X1>, uint64_t *a3@<X8>)
{

  v6 = sub_10059E758(v5, a2);
  a2, v7, v8, v9, v10, v11, v12, v13;
  *a3 = v6;
}

void sub_10059E4CC(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

void sub_10059E4D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v34 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v36 = a4 & 0xC000000000000001;
  v37 = a4 + 56;
  while (v9)
  {
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v35 = v14 | (v5 << 6);
    v17 = *(v4 + 48) + 24 * v35;
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
    if (v36)
    {
      v11 = v19;
      v12 = v18;
      v13 = __CocoaSet.contains(_:)();

      if (v13)
      {
LABEL_21:
        *(a1 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
LABEL_24:

          sub_1001A0644(a1, a2, v34, v4);
          return;
        }
      }
    }

    else if (*(a4 + 16))
    {
      v30 = v9;
      v31 = v4;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v20 = *(a4 + 40);
      v29 = v19;
      v21 = v18;
      v22 = NSObject._rawHashValue(seed:)(v20);
      v23 = -1 << *(a4 + 32);
      v24 = v22 & ~v23;
      if ((*(v37 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = *(*(a4 + 48) + 8 * v24);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v37 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        v9 = v30;
        v4 = v31;
        goto LABEL_21;
      }

LABEL_19:

      v9 = v30;
      v4 = v31;
    }
  }

  v15 = v5;
  while (1)
  {
    v5 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_24;
    }

    v16 = *(v6 + 8 * v5);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v9 = (v16 - 1) & v16;
      goto LABEL_13;
    }
  }

  __break(1u);
}

Swift::Int sub_10059E758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (2)
  {
    v58 = v8;
    v59 = v3;
    v57 = &v54;
    __chkstk_darwin(v10, v11);
    v60 = &v54 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v60, v9);
    v12 = 0;
    v8 = v5 + 56;
    v13 = 1 << *(v5 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v5 + 56);
    v16 = (v13 + 63) >> 6;
    v64 = a2 & 0xC000000000000001;
    v17 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v17 = a2;
    }

    v61 = 0;
    v62 = v17;
    v66 = a2 + 56;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_16:
      v24 = v21 | (v12 << 6);
      v25 = *(v5 + 48);
      v63 = v24;
      v26 = v25 + 24 * v24;
      v3 = *(v26 + 8);
      v27 = *(v26 + 16);
      if (v64)
      {
        v9 = v3;
        v18 = v27;
        v19 = v5;
        v20 = v18;
        v3 = __CocoaSet.contains(_:)();

        v5 = v19;
        if (v3)
        {
LABEL_24:
          *&v60[(v63 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v63;
          if (__OFADD__(v61++, 1))
          {
            __break(1u);
LABEL_27:
            v36 = sub_1001A0644(v60, v58, v61, v5);
            a2, v37, v38, v39, v40, v41, v42, v43;
            return v36;
          }
        }
      }

      else if (*(a2 + 16))
      {
        v55 = v15;
        v56 = v5;
        v65 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v28 = *(a2 + 40);
        v54 = v3;
        v3 = v27;
        v29 = NSObject._rawHashValue(seed:)(v28);
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if ((*(v66 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
        {
          v32 = ~v30;
          while (1)
          {
            v9 = a2;
            v33 = *(*(a2 + 48) + 8 * v31);
            v34 = static NSObject.== infix(_:_:)();

            if (v34)
            {
              break;
            }

            v31 = (v31 + 1) & v32;
            a2 = v9;
            if (((*(v66 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          a2 = v9;
          v15 = v55;
          v5 = v56;
          goto LABEL_24;
        }

LABEL_22:

        v15 = v55;
        v5 = v56;
      }
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v12 >= v16)
      {
        goto LABEL_27;
      }

      v23 = *(v8 + 8 * v12);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v45 = v5;
  v46 = swift_slowAlloc();

  v36 = sub_10059E3BC(v46, v8, v45, a2);

  a2, v47, v48, v49, v50, v51, v52, v53;
  return v36;
}

double sub_10059EB10@<D0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() daemonUserDefaults];
  v4 = [v3 enableHashingUserIdentifiablesWithPersonIDSalt];

  if (!v4)
  {
LABEL_15:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v5 = [v1 accountTypeHost];
  v6 = [v5 isCloudKit];

  if (!v6)
  {
    if (qword_1009365E0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094D5D8);
    v16 = v1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136446210;
      v21 = [v16 remObjectID];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 description];

        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v26 = 0xE300000000000000;
        v24 = 7104878;
      }

      v28 = sub_10000668C(v24, v26, &v36);
      v26, v29, v30, v31, v32, v33, v34, v35;
      *(v19 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "We don't currently support providing hash key other than cloudkit accounts. This log indicates there's some programming errors to pass on an incorrect account object {account: %{public}s}", v19, 0xCu);
      sub_10000607C(v20);
    }

    goto LABEL_15;
  }

  v7 = type metadata accessor for _RDManualSortIDPrimaryCloudKitAccountHashKeyProvider();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007A5D40;
  v9 = v1;
  v10 = [v9 personIDSalt];
  if (v10)
  {
    v11 = v10;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {

    v12 = 0;
    v14 = 0xF000000000000000;
  }

  *(v8 + 16) = v12;
  *(v8 + 24) = v14;
  sub_100031A14(0, 0xF000000000000000);
  *(a1 + 24) = v7;
  *(a1 + 32) = &off_1008F86E0;
  *a1 = v8;
  return result;
}

uint64_t sub_10059EDD8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094D5D8);
  v1 = sub_100006654(v0, qword_10094D5D8);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10059EEA0()
{
  sub_100031A14(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_10059EEFC(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >> 60 == 15)
  {
    return 0;
  }

  v5 = *(*v2 + 16);
  sub_100029344(v5, v3);
  v6 = String.base64EncodedHMACString(using:)();
  sub_100031A14(v5, v3);
  return v6;
}

id sub_10059EF88(uint64_t a1, uint64_t a2)
{
  result = [*(v2 + 16) personIDSalt];
  if (result)
  {
    v4 = result;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    sub_10001BBA0(v5, v7);
    v8 = String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    return v8;
  }

  return result;
}

uint64_t sub_10059F0B0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094D730);
  v1 = sub_100006654(v0, qword_10094D730);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_10059F18C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xEC00000065746144;
  v3 = 0xED0000656D614E6CLL;
  if (v1 != 2)
  {
    v3 = 0xE400000000000000;
  }

  if (v1)
  {
    v2 = 0xEB00000000656D61;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

void sub_10059F264(uint64_t a1)
{
  v2 = 0xEC00000065746144;
  v3 = 0xED0000656D614E6CLL;
  if (*v1 != 2)
  {
    v3 = 0xE400000000000000;
  }

  if (*v1)
  {
    v2 = 0xEB00000000656D61;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_10059F328(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0xEC00000065746144;
  v4 = 0xED0000656D614E6CLL;
  if (v2 != 2)
  {
    v4 = 0xE400000000000000;
  }

  if (v2)
  {
    v3 = 0xEB00000000656D61;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  String.hash(into:)();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return Hasher._finalize()();
}

unint64_t sub_10059F3FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005A1388(*a1);
  *a2 = result;
  return result;
}

void sub_10059F42C(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000065746144;
  v3 = 0x6E6F697461657263;
  v4 = 0xED0000656D614E6CLL;
  v5 = 0x6163696E6F6E6163;
  if (*v1 != 2)
  {
    v5 = 1953720684;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x4E79616C70736964;
    v2 = 0xEB00000000656D61;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t static REMCDListSection.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for REMCDListSection();
  v6 = String._bridgeToObjectiveC()();
  v7 = [swift_getObjCClassFromMetadata() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDListSection.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
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
      [v19 mergeDataFromRecord:a1 accountID:v20];

      v22 = v19;
      [v22 setCkServerRecord:a1];
      [v22 setInCloud:1];

      [v22 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_1009365E8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_10094D730);
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

Swift::String __swiftcall REMCDListSection.recordType()()
{
  v0 = 0x746365537473694CLL;
  v1 = 0xEB000000006E6F69;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDListSection.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v4 = String._bridgeToObjectiveC()();
  v33.receiver = v2;
  v33.super_class = type metadata accessor for REMCDListSection();
  objc_msgSendSuper2(&v33, "mergeDataFromRecord:accountID:", from.super.isa, v4);

  v5 = [(objc_class *)from.super.isa recordID];
  v6 = [v5 recordName];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v6 = String._bridgeToObjectiveC()();
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  v16 = [v2 ckIdentifierFromRecordName:v6];

  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    v16 = String._bridgeToObjectiveC()();
    v18, v19, v20, v21, v22, v23, v24, v25;
  }

  [v2 setCkIdentifier:v16];

  v26 = [v2 mergeDataRevertedLocallyMarkedForDeletion];
  v27 = [v2 mergeDataRefusedToMergeMarkedForDeletion];
  v32 = 0;
  v28 = v2;
  v29 = from.super.isa;
  sub_1004E96DC(v29, v26, v27, v28, v28, v29, &v32);

  if (v32 == 1)
  {
    v30 = [v28 list];
    if (v30)
    {
      v31 = v30;
      if (([v30 ckNeedsInitialFetchFromCloud] & 1) == 0)
      {
        sub_100358264();
      }
    }
  }
}

void sub_10059FC28(_BYTE *a1, void *a2, void *a3, _BYTE *a4)
{
  v82 = a4;
  v84 = a2;
  v6 = type metadata accessor for UUID();
  v83 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v80 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v9, v10);
  v12 = &v80 - v11;
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v13 - 8, v14);
  v81 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v80 - v18;
  __chkstk_darwin(v20, v21);
  v23 = &v80 - v22;
  __chkstk_darwin(v24, v25);
  v27 = &v80 - v26;
  __chkstk_darwin(v28, v29);
  v31 = &v80 - v30;
  v32 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  *&v34 = __chkstk_darwin(v32 - 8, v33).n128_u64[0];
  v36 = &v80 - v35;
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      v40 = [a3 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      swift_unknownObjectRelease();
      v41 = v86;
      if (v86)
      {
        v42 = String._bridgeToObjectiveC()();
        v41, v43, v44, v45, v46, v47, v48, v49;
      }

      else
      {
        v42 = 0;
      }

      [v84 setCanonicalName:v42];
LABEL_20:

      return;
    }

    v60 = [v84 list];
    if (v60)
    {
      v61 = v60;
      v62 = [v60 identifier];

      if (v62)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v63 = *(v83 + 56);
        v63(v27, 0, 1, v6);
      }

      else
      {
        v63 = *(v83 + 56);
        v63(v27, 1, 1, v6);
      }

      sub_100031B58(v27, v31, &unk_100939D90, "8\n\r");
    }

    else
    {
      v63 = *(v83 + 56);
      v63(v31, 1, 1, v6);
    }

    if (CKRecord.subscript.getter())
    {
      objc_opt_self();
      v64 = swift_dynamicCastObjCClass();
      if (!v64)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v64 = 0;
    }

    v65 = v84;
    v66 = sub_1004D6EF0(v64, v84);

    [v65 setList:v66];
    v67 = [v65 list];
    if (v67)
    {
      v68 = v67;
      v69 = [v67 identifier];

      if (v69)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v70 = 0;
      }

      else
      {
        v70 = 1;
      }

      v71 = v83;
      v63(v19, v70, 1, v6);
      sub_100031B58(v19, v23, &unk_100939D90, "8\n\r");
    }

    else
    {
      v71 = v83;
      v63(v23, 1, 1, v6);
    }

    v72 = *(v9 + 48);
    sub_10018E470(v23, v12);
    sub_10018E470(v31, &v12[v72]);
    v73 = *(v71 + 48);
    if (v73(v12, 1, v6) == 1)
    {
      sub_1000050A4(v23, &unk_100939D90, "8\n\r");
      sub_1000050A4(v31, &unk_100939D90, "8\n\r");
      if (v73(&v12[v72], 1, v6) == 1)
      {
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v74 = 0;
LABEL_40:
        *v82 = v74 & 1;
        return;
      }
    }

    else
    {
      v75 = v81;
      sub_10018E470(v12, v81);
      if (v73(&v12[v72], 1, v6) != 1)
      {
        v76 = &v12[v72];
        v77 = v80;
        (*(v71 + 32))(v80, v76, v6);
        sub_10018E4E0();
        v78 = dispatch thunk of static Equatable.== infix(_:_:)();
        v79 = *(v71 + 8);
        v79(v77, v6);
        sub_1000050A4(v23, &unk_100939D90, "8\n\r");
        sub_1000050A4(v31, &unk_100939D90, "8\n\r");
        v79(v75, v6);
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v74 = v78 ^ 1;
        goto LABEL_40;
      }

      sub_1000050A4(v23, &unk_100939D90, "8\n\r");
      sub_1000050A4(v31, &unk_100939D90, "8\n\r");
      (*(v71 + 8))(v75, v6);
    }

    sub_1000050A4(v12, &unk_10093A3D0, &qword_100795770);
    v74 = 1;
    goto LABEL_40;
  }

  if (*a1)
  {
    v50 = [a3 encryptedValues];
    v51 = String._bridgeToObjectiveC()();
    v42 = [v50 objectForKeyedSubscript:v51];
    swift_unknownObjectRelease();

    if (v42)
    {
      v85 = v42;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      if (swift_dynamicCast())
      {
        v52 = v86;
        v42 = String._bridgeToObjectiveC()();
        v52, v53, v54, v55, v56, v57, v58, v59;
      }

      else
      {
        v42 = 0;
      }
    }

    [v84 setDisplayName:v42];
    goto LABEL_20;
  }

  sub_10018E134();
  v37 = type metadata accessor for Date();
  CKRecordKeyValueSetting.subscript.getter();
  v38 = *(v37 - 8);
  isa = 0;
  if ((*(v38 + 48))(v36, 1, v37) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v38 + 8))(v36, v37);
  }

  [v84 setCreationDate:isa];
}

CKRecord_optional __swiftcall REMCDListSection.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for REMCDListSection();
  v48.receiver = v0;
  v48.super_class = v10;
  v12 = objc_msgSendSuper2(&v48, "newlyCreatedRecord");
  if (v12)
  {
    v13 = 0;
    v14 = &selRef_persistentStoreForIdentifier_;
    do
    {
      if (*(&off_1008E3E98 + v13 + 32) > 1u)
      {
        if (*(&off_1008E3E98 + v13 + 32) != 2)
        {
          if (([v1 markedForDeletion] & 1) != 0 || (v30 = objc_msgSend(v1, "list")) == 0)
          {
            v39 = 0;
          }

          else
          {
            v31 = v14[78];
            v32 = v14;
            v33 = v30;
            v34 = [v30 v31];

            if (v34)
            {
              v35 = [v12 v32[78]];
              v36 = [v35 zoneID];

              v37 = [v34 zoneID];
              v38 = [v36 isEqual:v37];

              if (v38)
              {
                v39 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v34];

                if (v39)
                {
                  v40 = v39;
                }

                v14 = &selRef_persistentStoreForIdentifier_;
              }

              else
              {

                v39 = 0;
                v14 = &selRef_persistentStoreForIdentifier_;
              }
            }

            else
            {
              v39 = 0;
              v14 = v32;
            }
          }

          CKRecord.subscript.setter();

          goto LABEL_6;
        }

        v24 = [v12 encryptedValues];
        v25 = [v1 canonicalName];
        if (v25)
        {
          v26 = v25;
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v14 = &selRef_persistentStoreForIdentifier_;
          *(&v46 + 1) = &type metadata for String;
          v47 = &protocol witness table for String;
          *&v45 = v27;
          *(&v45 + 1) = v29;
        }

        else
        {
          v47 = 0;
          v45 = 0u;
          v46 = 0u;
        }
      }

      else
      {
        if (!*(&off_1008E3E98 + v13 + 32))
        {
          v21 = [v1 creationDate];
          if (v21)
          {
            v22 = v21;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v23 = 0;
          }

          else
          {
            v23 = 1;
          }

          v41 = type metadata accessor for Date();
          v42 = *(v41 - 8);
          (*(v42 + 56))(v5, v23, 1, v41);
          sub_100031B58(v5, v9, &unk_100938850, qword_100795AE0);
          if ((*(v42 + 48))(v9, 1, v41) == 1)
          {
            sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
            v45 = 0u;
            v46 = 0u;
            v47 = 0;
          }

          else
          {
            *(&v46 + 1) = v41;
            v47 = &protocol witness table for Date;
            v43 = sub_1000103CC(&v45);
            (*(v42 + 32))(v43, v9, v41);
          }

          v14 = &selRef_persistentStoreForIdentifier_;
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.setter();
          goto LABEL_6;
        }

        v15 = [v12 encryptedValues];
        v16 = [v1 displayName];
        if (v16)
        {
          v17 = v16;
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          *(&v46 + 1) = &type metadata for String;
          v47 = &protocol witness table for String;
          *&v45 = v18;
          *(&v45 + 1) = v20;
          v14 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v47 = 0;
          v45 = 0u;
          v46 = 0u;
        }
      }

      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.setter();
      swift_unknownObjectRelease();
LABEL_6:
      ++v13;
    }

    while (v13 != 4);
  }

  v44 = v12;
  result.value.super.isa = v44;
  result.is_nil = v11;
  return result;
}

Swift::Void __swiftcall REMCDListSection.cleanUpAfterLocalObjectMerge()()
{
  if (qword_1009365E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094D730);
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
    sub_1000F5104(&qword_100946A80, &qword_1007A93F8);
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

Swift::Void __swiftcall REMCDListSection.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_1009365E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_10094D730);
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
  v23 = [v4 list];
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
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for section in list {listSectionID: %{public}s, listID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v38 = [v4 list];
  if (!v38)
  {
    return;
  }

  v74 = v38;
  if ([v38 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
  {
    v39 = v4;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v40, v41))
    {
LABEL_28:

      [v39 markForDeletion];
      goto LABEL_29;
    }

    v42 = 7104878;
    v43 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v43 = 136446466;
    v44 = [v39 remObjectID];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 description];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v42 = 7104878;
    }

    else
    {
      v49 = 0xE300000000000000;
      v47 = 7104878;
    }

    v50 = sub_10000668C(v47, v49, &v75);
    v49, v51, v52, v53, v54, v55, v56, v57;
    *(v43 + 4) = v50;
    *(v43 + 12) = 2082;
    v58 = [v39 list];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 remObjectID];
      if (v60)
      {
        v61 = v60;
        v62 = [v60 description];

        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

LABEL_27:
        v65 = sub_10000668C(v42, v64, &v75);
        v64, v66, v67, v68, v69, v70, v71, v72;
        *(v43 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v40, v41, "List is marked for deletion but section in list is not {listSectionID: %{public}s, listID: %{public}s}", v43, 0x16u);
        swift_arrayDestroy();

        goto LABEL_28;
      }
    }

    v64 = 0xE300000000000000;
    goto LABEL_27;
  }

LABEL_29:
  [v74 forcePushToCloud];
}

unint64_t sub_1005A1388(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E3D90, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t _s7remindd16REMCDListSectionC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_1009365E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094D730);
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
    sub_1000F5104(&qword_100946A80, &qword_1007A93F8);
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

uint64_t _s7remindd16REMCDListSectionC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_1009365E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094D730);
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
    sub_1000F5104(&qword_100946A80, &qword_1007A93F8);
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

unint64_t sub_1005A16D4(uint64_t a1)
{
  result = sub_1005A16FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1005A16FC()
{
  result = qword_10094D750;
  if (!qword_10094D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D750);
  }

  return result;
}

unint64_t sub_1005A1750(uint64_t a1)
{
  result = sub_1005A1778();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1005A1778()
{
  result = qword_10094D758;
  if (!qword_10094D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D758);
  }

  return result;
}

unint64_t sub_1005A17D0()
{
  result = qword_10094D760;
  if (!qword_10094D760)
  {
    sub_1000F514C(&qword_10094D768, &qword_1007B2F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D760);
  }

  return result;
}

unint64_t sub_1005A1838()
{
  result = qword_10094D770;
  if (!qword_10094D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D770);
  }

  return result;
}

void sub_1005A188C(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned int (**a3)(void, uint64_t, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v35 = a2;
  v32 = a4;
  v6 = type metadata accessor for REMRemindersListDataView.Diff();
  v33 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for REMRemindersListDataView.ListsModel();
  v36 = *(v14 - 8);
  __chkstk_darwin(v14, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v29 - v20;
  v22 = v37;
  sub_1005A2B88(a1, a3);
  if (!v22)
  {
    v30 = v9;
    v31 = v13;
    v37 = v14;
    sub_1005A3E80(a1);
    REMRemindersListDataView.ListsModel.init(groups:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v23 = [v34 fetchResultTokenToDiffAgainst];
    v24 = v31;
    sub_100534D44(v23, v31);
    v35 = 0;

    v25 = v36;
    v26 = *(v36 + 16);
    v34 = v21;
    v27 = v37;
    v26(v17, v21, v37);
    v28 = v33;
    (*(v33 + 16))(v30, v24, v6);
    sub_1005A4664(&qword_10094C3B0, &type metadata accessor for REMRemindersListDataView.ListsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsModel);
    sub_1005A4664(&qword_10094C3B8, &type metadata accessor for REMRemindersListDataView.ListsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v28 + 8))(v24, v6);
    (*(v25 + 8))(v34, v27);
  }
}

uint64_t sub_1005A1BF0()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  result = swift_getKeyPath();
  *(v0 + 32) = result;
  qword_10094D780 = v0;
  return result;
}

uint64_t sub_1005A1C54@<X0>(id *a1@<X0>, uint64_t a2@<X1>, unsigned int (**a3)(char *, uint64_t, uint64_t)@<X8>)
{
  v4 = v3;
  v8 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v54 - v10;
  v12 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v64 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v63 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v65 = &v54 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  *&v21 = __chkstk_darwin(v18, v20).n128_u64[0];
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *a1;
  v24 = [v59 identifier];
  if (!v24)
  {
    goto LABEL_23;
  }

  v25 = v24;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(a2 + 16) || (v26 = sub_100363F20(v23), (v27 & 1) == 0))
  {
    (*(v19 + 8))(v23, v18);
LABEL_23:
    v43 = 1;
    goto LABEL_24;
  }

  v28 = *(*(a2 + 56) + 8 * v26);
  if (v28 >> 62)
  {
    goto LABEL_33;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v55 = v19;
  v56 = v18;
  v57 = a3;
  v58 = v4;

  if (v29)
  {
    v19 = 0;
    v66 = v28 & 0xFFFFFFFFFFFFFF8;
    v67 = v28 & 0xC000000000000001;
    a3 = (v64 + 48);
    v4 = (v64 + 32);
    v68 = &_swiftEmptyArrayStorage;
    v61 = v28;
    v62 = v23;
    v60 = v29;
    while (1)
    {
      if (v67)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v19 >= *(v66 + 16))
        {
          goto LABEL_32;
        }

        v37 = *&v28->clientIdentity[8 * v19 + 16];
        v18 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v29 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_6;
        }
      }

      sub_1005384A4(v37, 0, 0, v11);
      if ((*a3)(v11, 1, v12))
      {
        sub_1000050A4(v11, &qword_100940628, &unk_1007A6A20);
      }

      else
      {
        v38 = *v4;
        v39 = v63;
        (*v4)(v63, v11, v12);
        v38(v65, v39, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_100365A24(0, *v68->clientIdentity + 1, 1, v68);
        }

        v41 = *v68->clientIdentity;
        v40 = *&v68->clientIdentity[8];
        if (v41 >= v40 >> 1)
        {
          v68 = sub_100365A24((v40 > 1), v41 + 1, 1, v68);
        }

        v42 = v68;
        *v68->clientIdentity = v41 + 1;
        v38(v42 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v41, v65, v12);
        v28 = v61;
        v23 = v62;
        v29 = v60;
      }

      ++v19;
      if (v18 == v29)
      {
        goto LABEL_26;
      }
    }
  }

  v68 = &_swiftEmptyArrayStorage;
LABEL_26:
  v28, v30, v31, v32, v33, v34, v35, v36;
  v46 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v48 = [v46 objectIDWithUUID:isa];

  REMObjectID.codable.getter();
  v49 = v59;
  v50 = [v59 displayName];
  if (v50)
  {
    v51 = v50;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  a3 = v57;
  v52 = [v49 color];
  if (v52)
  {
    v53 = v52;
    REMColor.codable.getter();
  }

  REMRemindersListDataView.ListsModel.Sublist.init(listID:listName:listColor:reminders:isCustomSmartList:)();
  (*(v55 + 8))(v23, v56);
  v43 = 0;
LABEL_24:
  v44 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  return (*(*(v44 - 8) + 56))(a3, v43, 1, v44);
}

uint64_t sub_1005A21DC(uint64_t a1)
{
  result = sub_1005A4664(&qword_10094D7A8, &type metadata accessor for REMRemindersListDataView.SearchInvocation, &protocol conformance descriptor for REMRemindersListDataView.SearchInvocation);
  *(a1 + 8) = result;
  return result;
}

void *sub_1005A2234(unint64_t a1)
{
  v35 = type metadata accessor for UUID();
  v32 = *(v35 - 8);
  __chkstk_darwin(v35, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = _swiftEmptyDictionarySingleton;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

LABEL_26:
  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  v6 = 0;
  v33 = a1 & 0xFFFFFFFFFFFFFF8;
  v34 = a1 & 0xC000000000000001;
  v30 = (v32 + 8);
  v31 = v32 + 32;
  v7 = _swiftEmptyDictionarySingleton;
  v29 = xmmword_1007953F0;
  while (1)
  {
    if (v34)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v33 + 16))
      {
        goto LABEL_23;
      }

      v9 = *(a1 + 8 * v6 + 32);
    }

    v10 = v9;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v12 = [v9 list];
    if (!v12)
    {
      break;
    }

    v13 = v12;
    v14 = [v12 identifier];

    if (!v14)
    {
      goto LABEL_30;
    }

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = sub_100363F20(v4);
    v17 = v7[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_24;
    }

    v20 = v15;
    if (v7[3] < v19)
    {
      sub_10036AF20(v19, 1);
      v7 = v36;
      v21 = sub_100363F20(v4);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_31;
      }

      v16 = v21;
    }

    if (v20)
    {
      (*v30)(v4, v35);
      v8 = (v7[7] + 8 * v16);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v23 = swift_allocObject();
      *(v23 + 16) = v29;
      *(v23 + 32) = v10;
      v7[(v16 >> 6) + 8] |= 1 << v16;
      (*(v32 + 32))(v7[6] + *(v32 + 72) * v16, v4, v35);
      *(v7[7] + 8 * v16) = v23;
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      v7[2] = v26;
    }

    ++v6;
    if (v11 == v5)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005A259C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v9, v9);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  v14 = &_swiftEmptyArrayStorage;
  if (v13)
  {
    v44 = v12;
    v45 = v10;
    v46 = v2;
    *&v51 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = objc_opt_self();
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v49 = v17;
    v50 = v15;
    v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v48 = *(v16 + 56);
    do
    {
      v49(v8, v18, v4);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v20 = [v50 objectIDWithUUID:isa];

      (*(v16 - 8))(v8, v4);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v18 += v48;
      --v13;
    }

    while (v13);
    v14 = v51;
    v12 = v44;
  }

  *v12 = v14;
  swift_storeEnumTagMultiPayload();
  v21 = sub_10001F6F4();
  sub_1005A4604(v12, _s10PredicatesOMa_1);
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v22 = [objc_allocWithZone(NSFetchRequest) init];
  v23 = [swift_getObjCClassFromMetadata() entity];
  [v22 setEntity:v23];

  [v22 setAffectedStores:0];
  [v22 setPredicate:v21];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v24 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v25 = Array._bridgeToObjectiveC()().super.isa;
  v24, v26, v27, v28, v29, v30, v31, v32;
  [v22 setSortDescriptors:v25];

  v53 = &_swiftEmptyArrayStorage;
  sub_100010D04(0, 3, 0);
  v33 = v53;
  v52 = &type metadata for String;
  *&v51 = 0x696669746E656469;
  *(&v51 + 1) = 0xEA00000000007265;
  v35 = *v53->clientIdentity;
  v34 = *&v53->clientIdentity[8];
  if (v35 >= v34 >> 1)
  {
    sub_100010D04((v34 > 1), v35 + 1, 1);
    v33 = v53;
  }

  *v33->clientIdentity = v35 + 1;
  sub_100005EE0(&v51, &v33->clientIdentity[32 * v35 + 16]);
  v52 = &type metadata for String;
  *&v51 = 1701667182;
  *(&v51 + 1) = 0xE400000000000000;
  v53 = v33;
  v37 = *v33->clientIdentity;
  v36 = *&v33->clientIdentity[8];
  if (v37 >= v36 >> 1)
  {
    sub_100010D04((v36 > 1), v37 + 1, 1);
    v33 = v53;
  }

  *v33->clientIdentity = v37 + 1;
  sub_100005EE0(&v51, &v33->clientIdentity[32 * v37 + 16]);
  v52 = &type metadata for String;
  *&v51 = 0x726F6C6F63;
  *(&v51 + 1) = 0xE500000000000000;
  v53 = v33;
  v39 = *v33->clientIdentity;
  v38 = *&v33->clientIdentity[8];
  if (v39 >= v38 >> 1)
  {
    sub_100010D04((v38 > 1), v39 + 1, 1);
    v33 = v53;
  }

  *v33->clientIdentity = v39 + 1;
  sub_100005EE0(&v51, &v33->clientIdentity[32 * v39 + 16]);
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v22 setPropertiesToFetch:v40];

  v41 = NSManagedObjectContext.fetch<A>(_:)();
  return v41;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005A2B88(uint64_t a1, unsigned int (**a2)(void, uint64_t, uint64_t))
{
  v286 = a1;
  v3 = sub_1000F5104(&qword_10094C3A8, &qword_1007B0E38);
  __chkstk_darwin(v3 - 8, v4);
  v291 = (&v274 - v5);
  v295 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v287 = *(v295 - 8);
  __chkstk_darwin(v295, v6);
  v290 = &v274 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v285 = &v274 - v10;
  v11 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v274 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v296 = (&v274 - v17);
  __chkstk_darwin(v18, v19);
  v300 = (&v274 - v20);
  v21 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v293 = *(v21 - 8);
  v294 = v21;
  __chkstk_darwin(v21, v22);
  v284 = (&v274 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v24 - 8, v25);
  v283 = &v274 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v282, v27);
  v281 = &v274 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v30);
  v32 = &v274 - v31;
  v280 = _s10PredicatesOMa(0);
  __chkstk_darwin(v280, v33);
  v289 = (&v274 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v298 = a2;
  v35 = REMRemindersListDataView.SearchInvocation.Parameters.objectIDs.getter();
  v36 = v35;
  v288 = v32;
  v292 = v14;
  if ((v35 & 0xC000000000000001) != 0)
  {
    v37 = _swiftEmptySetSingleton;
    v303[0] = _swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    v38 = __CocoaSet.Iterator.next()();
    if (v38)
    {
      v39 = v38;
      type metadata accessor for REMObjectID_Codable();
      v40 = v39;
      v32 = -1;
      do
      {
        v301 = v40;
        swift_dynamicCast();
        v47 = [v302 entityName];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v51 = [objc_opt_self() cdEntityName];
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        if (v48 == v52 && v50 == v54)
        {
          v50, v55, v56, v57, v58, v59, v60, v61;
          v54, v78, v79, v80, v81, v82, v83, v84;
        }

        else
        {
          v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v50, v64, v65, v66, v67, v68, v69, v70;
          v54, v71, v72, v73, v74, v75, v76, v77;
          if ((v63 & 1) == 0)
          {

            goto LABEL_7;
          }
        }

        v85 = v302;
        v86 = v37[2];
        if (v37[3] <= v86)
        {
          sub_1003800CC(v86 + 1);
        }

        v37 = v303[0];
        v41 = NSObject._rawHashValue(seed:)(*(v303[0] + 5));
        v42 = v37 + 7;
        v43 = -1 << *(v37 + 32);
        v44 = v41 & ~v43;
        v45 = v44 >> 6;
        if (((-1 << v44) & ~v37[(v44 >> 6) + 7]) != 0)
        {
          v46 = __clz(__rbit64((-1 << v44) & ~v37[(v44 >> 6) + 7])) | v44 & 0x7FFFFFFFFFFFFFC0;
          goto LABEL_6;
        }

        v87 = 0;
        v88 = (63 - v43) >> 6;
        do
        {
          if (++v45 == v88 && (v87 & 1) != 0)
          {
            __break(1u);
            goto LABEL_80;
          }

          v89 = v45 == v88;
          if (v45 == v88)
          {
            v45 = 0;
          }

          v87 |= v89;
          v90 = v42[v45];
        }

        while (v90 == -1);
        v46 = __clz(__rbit64(~v90)) + (v45 << 6);
LABEL_6:
        *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        *(v37[6] + 8 * v46) = v85;
        ++v37[2];
LABEL_7:
        v40 = __CocoaSet.Iterator.next()();
      }

      while (v40);
    }

    goto LABEL_48;
  }

  v91 = *(v35 + 32);
  v92 = v91 & 0x3F;
  v93 = (1 << v91) + 63;
  v94 = (v93 >> 6);
  v95 = 8 * (v93 >> 6);
  if (v92 > 0xD)
  {
    v212 = 8 * (v93 >> 6);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_117;
    }

    v36, v213, v214, v215, v216, v217, v218, v219;
    v95 = v212;
  }

  v275 = v94;
  v274 = &v274;
  __chkstk_darwin(v35, v95);
  v276 = &v274 - ((v96 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v276, v96);
  v277 = 0;
  v97 = 0;
  v98 = &v36->clientIdentity[40];
  v99 = 1 << v36->clientIdentity[16];
  v100 = -1;
  if (v99 < 64)
  {
    v100 = ~(-1 << v99);
  }

  v101 = v100 & *&v36->clientIdentity[40];
  v32 = (v99 + 63) >> 6;
  v279 = v36;
  while (v101)
  {
    v102 = __clz(__rbit64(v101));
    v299 = (v101 - 1) & v101;
LABEL_37:
    v105 = v102 | (v97 << 6);
    v106 = *&v36->clientIdentity[32];
    v278 = v105;
    v107 = *(v106 + 8 * v105);
    v108 = [v107 entityName];
    v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v110;

    v112 = [objc_opt_self() cdEntityName];
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    if (v109 == v113 && v111 == v115)
    {

      v111, v132, v133, v134, v135, v136, v137, v138;
      v115, v139, v140, v141, v142, v143, v144, v145;
      v36 = v279;
      v101 = v299;
LABEL_44:
      *&v276[(v278 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v278;
      if (__OFADD__(v277++, 1))
      {
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v111, v118, v119, v120, v121, v122, v123, v124;
      v115, v125, v126, v127, v128, v129, v130, v131;
      v36 = v279;
      v101 = v299;
      if (v117)
      {
        goto LABEL_44;
      }
    }
  }

  v103 = v97;
  while (1)
  {
    v97 = v103 + 1;
    if (__OFADD__(v103, 1))
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v97 >= v32)
    {
      break;
    }

    v104 = *&v98[8 * v97];
    ++v103;
    if (v104)
    {
      v102 = __clz(__rbit64(v104));
      v299 = (v104 - 1) & v104;
      goto LABEL_37;
    }
  }

LABEL_47:
  v37 = sub_1001A0DF0(v276, v275, v277, v36);
LABEL_48:
  v32 = v288;
  while (2)
  {
    v147 = sub_1000436E4(v37);

    if (v147 < 0 || (v147 & 0x4000000000000000) != 0)
    {
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

      v148 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v148 = v147;
    }

    v149 = v289;

    sub_1000F5104(&qword_10093A560, &qword_100797768);
    *v149 = v148;
    REMRemindersListDataView.SearchInvocation.Parameters.showCompleted.getter();
    swift_storeEnumTagMultiPayload();
    v289 = sub_100043AA8();
    sub_1005A4604(v149, _s10PredicatesOMa);
    if (qword_1009363F8 != -1)
    {
LABEL_83:
      swift_once();
    }

    v150 = qword_100974F68;
    if (qword_1009365F0 != -1)
    {
      swift_once();
    }

    v151 = qword_10094D780;
    if (qword_10094D780 >> 62)
    {

      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      v204 = _bridgeCocoaArray<A>(_:)();
      v151, v205, v206, v207, v208, v209, v210, v211;
      v152 = v204;
      v151 = v204;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v152 = v151;
    }

    v153 = sub_100050654(v150, v152, 0, v289);
    v151, v154, v155, v156, v157, v158, v159, v160;
    v161 = v283;
    REMRemindersListDataView.SearchInvocation.Parameters.sortingStyle.getter();
    v162 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
    v163 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    v164 = v281;
    (*(*(v163 - 8) + 104))(v281, v162, v163);
    swift_storeEnumTagMultiPayload();
    sub_1005368D8(v161, v164, v32);
    v165 = v284;
    REMRemindersListDataView.SearchInvocation.Parameters.showCompleted.getter();
    v166 = sub_10053CE0C(v32, v165, 0);
    (*(v293 + 8))(v165, v294);
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v166, v168, v169, v170, v171, v172, v173, v174;
    [(RDXPCStorePerformer *)v153 setSortDescriptors:isa];

    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v175 = v297;
    v176 = NSManagedObjectContext.fetch<A>(_:)();
    v299 = v175;
    if (v175)
    {
      sub_1005A4604(v32, _s9UtilitiesO12SortingStyleOMa);

      goto LABEL_96;
    }

    v184 = v176;
    v284 = v153;
    v303[0] = &_swiftEmptyArrayStorage;
    if (v176 >> 62)
    {
      v185 = _CocoaArrayWrapper.endIndex.getter();
      if (!v185)
      {
        goto LABEL_89;
      }

LABEL_61:
      v32 = 0;
      v297 = v184 & 0xFFFFFFFFFFFFFF8;
      v298 = (v184 & 0xC000000000000001);
      v293 = v185;
      v294 = v184;
      while (1)
      {
        if (v298)
        {
          v188 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v32 >= *(v297 + 16))
          {
            goto LABEL_82;
          }

          v188 = *(v184 + 8 * v32 + 32);
        }

        v189 = v188;
        v190 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_81;
        }

        v191 = [v188 identifier];
        if (v191)
        {
          v192 = v300;
          v193 = v191;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v194 = type metadata accessor for UUID();
          v195 = *(v194 - 8);
          v196 = *(v195 + 56);
          v196(v192, 0, 1, v194);
          sub_1000050A4(v192, &unk_100939D90, "8\n\r");
          v197 = [v189 list];
          if (v197)
          {
            v198 = v197;
            v199 = [v197 identifier];

            if (v199)
            {
              v200 = v292;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v201 = 0;
            }

            else
            {
              v201 = 1;
              v200 = v292;
            }

            v196(v200, v201, 1, v194);
            v202 = v296;
            sub_100100FB4(v200, v296);
            if ((*(v195 + 48))(v202, 1, v194) != 1)
            {
              sub_1000050A4(v202, &unk_100939D90, "8\n\r");
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v185 = v293;
              v184 = v294;
              goto LABEL_63;
            }
          }

          else
          {

            v202 = v296;
            v196(v296, 1, 1, v194);
          }

          v185 = v293;
          sub_1000050A4(v202, &unk_100939D90, "8\n\r");
          v184 = v294;
        }

        else
        {

          v186 = type metadata accessor for UUID();
          v187 = v300;
          (*(*(v186 - 8) + 56))(v300, 1, 1, v186);
          sub_1000050A4(v187, &unk_100939D90, "8\n\r");
        }

LABEL_63:
        ++v32;
        if (v190 == v185)
        {
          v203 = v303[0];
          v32 = v288;
          goto LABEL_90;
        }
      }
    }

    v185 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v185)
    {
      goto LABEL_61;
    }

LABEL_89:
    v203 = &_swiftEmptyArrayStorage;
LABEL_90:
    v184, v177, v178, v179, v180, v181, v182, v183;
    v220 = v299;
    v221 = sub_1005A2234(v203);
    v222 = v220;

    v300 = v221;
    v223 = *v221->clientIdentity;
    if (!v223)
    {
      v165 = &_swiftEmptyArrayStorage;
LABEL_94:
      v227 = v284;
      v228 = sub_1005A259C(v165, v286);
      v299 = v222;
      if (v222)
      {
        sub_1005A4604(v32, _s9UtilitiesO12SortingStyleOMa);
        v300, v229, v230, v231, v232, v233, v234, v235;

LABEL_96:

        return v165;
      }

      v237 = v228;

      if (v237 >> 62)
      {
        v36 = _CocoaArrayWrapper.endIndex.getter();
        if (!v36)
        {
LABEL_120:
          v165 = &_swiftEmptyArrayStorage;
LABEL_121:
          v237, v238, v239, v240, v241, v242, v243, v244;
          v300, v267, v268, v269, v270, v271, v272, v273;

          sub_1005A4604(v288, _s9UtilitiesO12SortingStyleOMa);
          return v165;
        }
      }

      else
      {
        v36 = *((v237 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v36)
        {
          goto LABEL_120;
        }
      }

      v32 = 0;
      v245 = v237 & 0xC000000000000001;
      v94 = (v237 & 0xFFFFFFFFFFFFFF8);
      v297 = v287 + 32;
      v298 = (v287 + 48);
      v165 = &_swiftEmptyArrayStorage;
      v296 = v36;
      v293 = v237 & 0xC000000000000001;
      v294 = v237 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v245)
        {
          v246 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v32 >= *v94->clientIdentity)
          {
            goto LABEL_115;
          }

          v246 = *(v237 + 8 * v32 + 32);
        }

        v247 = v246;
        v248 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
          break;
        }

        v303[0] = v246;
        v249 = v291;
        v250 = v299;
        sub_1005A1C54(v303, v300, v291);
        v299 = v250;

        v251 = v295;
        if ((*v298)(v249, 1, v295) == 1)
        {
          sub_1000050A4(v249, &qword_10094C3A8, &qword_1007B0E38);
        }

        else
        {
          v252 = v237;
          v253 = *v297;
          v254 = v285;
          (*v297)(v285, v249, v251);
          v253(v290, v254, v251);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v165 = sub_100365B14(0, *v165->clientIdentity + 1, 1, v165);
          }

          v256 = *v165->clientIdentity;
          v255 = *&v165->clientIdentity[8];
          v237 = v252;
          if (v256 >= v255 >> 1)
          {
            v165 = sub_100365B14((v255 > 1), v256 + 1, 1, v165);
          }

          v245 = v293;
          *v165->clientIdentity = v256 + 1;
          v253(v165 + ((*(v287 + 80) + 32) & ~*(v287 + 80)) + *(v287 + 72) * v256, v290, v295);
          v36 = v296;
          v94 = v294;
        }

        ++v32;
        if (v248 == v36)
        {
          goto LABEL_121;
        }
      }

      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v165 = sub_100368A1C(*v221->clientIdentity, 0);
    v224 = *(type metadata accessor for UUID() - 8);
    v94 = v300;
    sub_100279334(v303, v165 + ((*(v224 + 80) + 32) & ~*(v224 + 80)), v223, v300);
    v32 = v225;
    v226 = v303[0];
    v36 = v303[1];

    sub_10001B860(v226);
    if (v32 == v223)
    {
      v32 = v288;
      goto LABEL_94;
    }

LABEL_116:
    __break(1u);
LABEL_117:
    v257 = swift_slowAlloc();
    v258 = v297;
    v259 = sub_10026EC00(v257, v94, v36, sub_100226BF8, 0);
    v297 = v258;
    if (!v258)
    {
      v37 = v259;
      v36, v260, v261, v262, v263, v264, v265, v266;

      continue;
    }

    break;
  }

  v36, v260, v261, v262, v263, v264, v265, v266;

  __break(1u);
  return result;
}

void sub_1005A3E80(uint64_t a1)
{
  v2 = v1;
  v152 = _s10PredicatesOMa(0);
  __chkstk_darwin(v152, v4);
  v153 = (&v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = REMRemindersListDataView.SearchInvocation.Parameters.countCompleted.getter();
  if ((v6 & 1) == 0)
  {
    return;
  }

  v147 = v6;
  v7 = REMRemindersListDataView.SearchInvocation.Parameters.objectIDs.getter();
  v8 = v7;
  v150 = a1;
  v151 = v1;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = _swiftEmptySetSingleton;
    v157 = _swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    v10 = __CocoaSet.Iterator.next()();
    if (v10)
    {
      v11 = v10;
      type metadata accessor for REMObjectID_Codable();
      v12 = v11;
      while (1)
      {
        v155 = v12;
        swift_dynamicCast();
        v19 = [v156 entityName];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = [objc_opt_self() cdEntityName];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        if (v20 == v24 && v22 == v26)
        {
          break;
        }

        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v22, v36, v37, v38, v39, v40, v41, v42;
        v26, v43, v44, v45, v46, v47, v48, v49;
        if (v35)
        {
          goto LABEL_16;
        }

LABEL_8:
        v12 = __CocoaSet.Iterator.next()();
        if (!v12)
        {
          goto LABEL_27;
        }
      }

      v22, v27, v28, v29, v30, v31, v32, v33;
      v26, v50, v51, v52, v53, v54, v55, v56;
LABEL_16:
      v57 = v156;
      v58 = v9[2];
      if (v9[3] <= v58)
      {
        sub_1003800CC(v58 + 1);
      }

      v9 = v157;
      v13 = NSObject._rawHashValue(seed:)(v157[5]);
      v14 = v9 + 7;
      v15 = -1 << *(v9 + 32);
      v16 = v13 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~v9[(v16 >> 6) + 7]) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~v9[(v16 >> 6) + 7])) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v59 = 0;
        v60 = (63 - v15) >> 6;
        do
        {
          if (++v17 == v60 && (v59 & 1) != 0)
          {
            __break(1u);
            goto LABEL_54;
          }

          v61 = v17 == v60;
          if (v17 == v60)
          {
            v17 = 0;
          }

          v59 |= v61;
          v62 = v14[v17];
        }

        while (v62 == -1);
        v18 = __clz(__rbit64(~v62)) + (v17 << 6);
      }

      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v9[6] + 8 * v18) = v57;
      ++v9[2];
      goto LABEL_8;
    }

LABEL_27:

LABEL_50:
    v120 = sub_1000436E4(v9);

    if (v120 < 0 || (v120 & 0x4000000000000000) != 0)
    {
      goto LABEL_55;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v121 = v120;
    goto LABEL_53;
  }

  v63 = *(v7 + 32);
  v64 = v63 & 0x3F;
  v65 = (1 << v63) + 63;
  v66 = v65 >> 6;
  v67 = 8 * (v65 >> 6);
  if (v64 > 0xD)
  {
    v126 = 8 * (v65 >> 6);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v134 = swift_slowAlloc();
      v135 = sub_10026EC00(v134, v66, v8, sub_100226BF8, 0);
      v151 = v2;
      if (v2)
      {
        v8, v136, v137, v138, v139, v140, v141, v142;

        __break(1u);
        return;
      }

      v9 = v135;
      v8, v136, v137, v138, v139, v140, v141, v142;

      goto LABEL_50;
    }

    v8, v127, v128, v129, v130, v131, v132, v133;
    v67 = v126;
  }

  v143 = &v143;
  v144 = v66;
  __chkstk_darwin(v7, v67);
  v145 = &v143 - ((v68 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v145, v68);
  v146 = 0;
  v69 = 0;
  v70 = v8 + 56;
  v71 = 1 << *(v8 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & *(v8 + 56);
  v74 = (v71 + 63) >> 6;
  v149 = v8;
  while (v73)
  {
    v75 = __clz(__rbit64(v73));
    v154 = (v73 - 1) & v73;
LABEL_39:
    v78 = v75 | (v69 << 6);
    v79 = *(v8 + 48);
    v148 = v78;
    v80 = *(v79 + 8 * v78);
    v81 = [v80 entityName];
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;

    v85 = [objc_opt_self() cdEntityName];
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;

    if (v82 == v86 && v84 == v88)
    {

      v84, v105, v106, v107, v108, v109, v110, v111;
      v88, v112, v113, v114, v115, v116, v117, v118;
      v8 = v149;
      v73 = v154;
LABEL_46:
      *&v145[(v148 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v148;
      if (__OFADD__(v146++, 1))
      {
        __break(1u);
LABEL_49:
        v9 = sub_1001A0DF0(v145, v144, v146, v8);
        goto LABEL_50;
      }
    }

    else
    {
      v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v84, v91, v92, v93, v94, v95, v96, v97;
      v88, v98, v99, v100, v101, v102, v103, v104;
      v8 = v149;
      v73 = v154;
      if (v90)
      {
        goto LABEL_46;
      }
    }
  }

  v76 = v69;
  while (1)
  {
    v69 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      break;
    }

    if (v69 >= v74)
    {
      goto LABEL_49;
    }

    v77 = *(v70 + 8 * v69);
    ++v76;
    if (v77)
    {
      v75 = __clz(__rbit64(v77));
      v154 = (v77 - 1) & v77;
      goto LABEL_39;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

  v121 = _bridgeCocoaArray<A>(_:)();

LABEL_53:

  v122 = v153;
  *v153 = v121;
  swift_storeEnumTagMultiPayload();
  v123 = sub_100043AA8();
  sub_1005A4604(v122, _s10PredicatesOMa);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v124 = [objc_allocWithZone(NSFetchRequest) init];
  v125 = [swift_getObjCClassFromMetadata() entity];
  [v124 setEntity:v125];

  [v124 setAffectedStores:0];
  [v124 setPredicate:v123];
  NSManagedObjectContext.count<A>(for:)();
}

uint64_t sub_1005A4604(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005A4664(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005A46AC(__int128 *a1)
{
  v2 = v1;
  if (qword_1009365F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094D7B0);

  sub_1005A9460(a1, v87);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  sub_1005A9498(a1, v7, v8, v9, v10, v11, v12, v13);
  if (os_log_type_enabled(v5, v6))
  {
    v14 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = 0xD000000000000030;
    v16 = *(v2 + 16);
    v17 = "REMCDTemplateOperationQueueItem";
    v18 = "d.ICCloudConfigurationUpdater";
    v19 = 0xD000000000000034;
    v20 = "atchUpSyncController";
    v21 = 0xD000000000000031;
    if (v16 != 3)
    {
      v21 = 0xD00000000000001BLL;
      v20 = "ActivityScheduler";
    }

    if (v16 != 2)
    {
      v19 = v21;
      v18 = v20;
    }

    if (*(v2 + 16))
    {
      v15 = 0xD00000000000002DLL;
      v17 = "butesAutoTrainer";
    }

    if (*(v2 + 16) <= 1u)
    {
      v22 = v15;
    }

    else
    {
      v22 = v19;
    }

    if (*(v2 + 16) <= 1u)
    {
      v23 = v17;
    }

    else
    {
      v23 = v18;
    }

    v24 = sub_10000668C(v22, (v23 | 0x8000000000000000), &v86);
    (v23 | 0x8000000000000000), v25, v26, v27, v28, v29, v30, v31;
    *(v14 + 4) = v24;
    *(v14 + 12) = 2082;
    v32 = a1[2];
    v33 = a1[4];
    v87[3] = a1[3];
    v87[4] = v33;
    v34 = *a1;
    v87[1] = a1[1];
    v87[2] = v32;
    v87[0] = v34;
    sub_1005A9460(a1, aBlock);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v38 = sub_10000668C(v35, v36, &v86);
    v37, v39, v40, v41, v42, v43, v44, v45;
    *(v14 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDDynamicXPCActivity UPDATE START {identifier: %{public}s, newCriteria: %{public}s}", v14, 0x16u);
    swift_arrayDestroy();
  }

  *&v87[0] = *(v2 + 120);
  __chkstk_darwin(v46, v47);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  if (LOBYTE(aBlock[0]) == 1)
  {
    v48 = *(v2 + 16);
    if (v48 <= 1)
    {
      if (*(v2 + 16))
      {
        v49 = "butesAutoTrainer";
        goto LABEL_43;
      }

      v71 = "com.apple.remindd.suggestedAttributesAutoTrainer";
    }

    else
    {
      if (v48 == 2)
      {
        v49 = "d.ICCloudConfigurationUpdater";
        goto LABEL_43;
      }

      if (v48 == 3)
      {
        v49 = "atchUpSyncController";
LABEL_43:
        v72 = swift_allocObject();
        swift_weakInit();
        v73 = swift_allocObject();
        *(v73 + 16) = v72;
        *(v73 + 24) = v48;
        v74 = a1[3];
        *(v73 + 64) = a1[2];
        *(v73 + 80) = v74;
        *(v73 + 96) = a1[4];
        v75 = a1[1];
        *(v73 + 32) = *a1;
        *(v73 + 48) = v75;
        aBlock[4] = sub_1005A94CC;
        aBlock[5] = v73;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000EBA84;
        aBlock[3] = &unk_1008F8A20;
        v76 = _Block_copy(aBlock);
        sub_1005A9460(a1, v87);

        v77 = String.utf8CString.getter();
        (v49 | 0x8000000000000000), v78, v79, v80, v81, v82, v83, v84;
        xpc_activity_register((v77 + 32), XPC_ACTIVITY_CHECK_IN, v76);

        _Block_release(v76);
        return;
      }

      v71 = "com.apple.remindd.UnitTests";
    }

    v49 = (v71 - 32);
    goto LABEL_43;
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v87[0] = v53;
    *v52 = 136446210;
    v54 = 0xD000000000000030;
    v55 = *(v2 + 16);
    v56 = "REMCDTemplateOperationQueueItem";
    v57 = "d.ICCloudConfigurationUpdater";
    v58 = 0xD000000000000034;
    v59 = "atchUpSyncController";
    v60 = 0xD000000000000031;
    if (v55 != 3)
    {
      v60 = 0xD00000000000001BLL;
      v59 = "ActivityScheduler";
    }

    if (v55 != 2)
    {
      v58 = v60;
      v57 = v59;
    }

    if (*(v2 + 16))
    {
      v54 = 0xD00000000000002DLL;
      v56 = "butesAutoTrainer";
    }

    if (*(v2 + 16) <= 1u)
    {
      v61 = v54;
    }

    else
    {
      v61 = v58;
    }

    if (*(v2 + 16) <= 1u)
    {
      v62 = v56;
    }

    else
    {
      v62 = v57;
    }

    v63 = sub_10000668C(v61, (v62 | 0x8000000000000000), v87);
    (v62 | 0x8000000000000000), v64, v65, v66, v67, v68, v69, v70;
    *(v52 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v50, v51, "RDDynamicXPCActivity UPDATE END pendingCriteria == newCriteria {identifier: %{public}s}", v52, 0xCu);
    sub_10000607C(v53);
  }
}

uint64_t sub_1005A4C98()
{
  v1 = v0;
  if (qword_1009365F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094D7B0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v38 = v6;
    *v5 = 136446210;
    v7 = 0xD000000000000030;
    v8 = *(v1 + 16);
    v9 = "REMCDTemplateOperationQueueItem";
    v10 = "d.ICCloudConfigurationUpdater";
    v11 = 0xD000000000000034;
    v12 = "atchUpSyncController";
    v13 = 0xD000000000000031;
    if (v8 != 3)
    {
      v13 = 0xD00000000000001BLL;
      v12 = "ActivityScheduler";
    }

    if (v8 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (*(v1 + 16))
    {
      v7 = 0xD00000000000002DLL;
      v9 = "butesAutoTrainer";
    }

    if (*(v1 + 16) <= 1u)
    {
      v14 = v7;
    }

    else
    {
      v14 = v11;
    }

    if (*(v1 + 16) <= 1u)
    {
      v15 = v9;
    }

    else
    {
      v15 = v10;
    }

    v16 = sub_10000668C(v14, (v15 | 0x8000000000000000), &v38);
    (v15 | 0x8000000000000000), v17, v18, v19, v20, v21, v22, v23;
    *(v5 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "RDDynamicXPCActivity UNREGISTER {identifier: %{public}s}", v5, 0xCu);
    sub_10000607C(v6);
  }

  else
  {
  }

  v38 = *(v1 + 120);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  v24 = *(v1 + 16);
  v25 = "REMCDTemplateOperationQueueItem";
  v26 = "d.ICCloudConfigurationUpdater";
  v27 = "atchUpSyncController";
  if (v24 != 3)
  {
    v27 = "ActivityScheduler";
  }

  if (v24 != 2)
  {
    v26 = v27;
  }

  if (*(v1 + 16))
  {
    v25 = "butesAutoTrainer";
  }

  if (*(v1 + 16) <= 1u)
  {
    v28 = v25;
  }

  else
  {
    v28 = v26;
  }

  v29 = String.utf8CString.getter();
  (v28 | 0x8000000000000000), v30, v31, v32, v33, v34, v35, v36;
  xpc_activity_unregister((v29 + 32));
}

void sub_1005A4F78(uint64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  __chkstk_darwin(v38, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v32 - v9;
  __chkstk_darwin(v11, v12);
  v15 = &v32 - v14;
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v16 = 0;
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(a1 + 56);
  v21 = (v18 + 63) >> 6;
  v22 = a2 + 56;
  v35 = v13;
  v36 = a1;
  v33 = a1 + 56;
  v34 = v15;
  v32 = v21;
  if (!v20)
  {
    goto LABEL_8;
  }

  do
  {
    v23 = __clz(__rbit64(v20));
    v37 = (v20 - 1) & v20;
LABEL_13:
    v26 = *(v13 + 72);
    sub_1001A3A2C(*(a1 + 48) + v26 * (v23 | (v16 << 6)), v15);
    sub_1001A3A90(v15, v10);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_1005A9F00(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for Date();
    sub_1005A9F00(&unk_1009431A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    v27 = Hasher._finalize()();
    v28 = -1 << *(a2 + 32);
    v29 = v27 & ~v28;
    if (((*(v22 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
LABEL_22:
      sub_1001A3AF4(v10);
      return;
    }

    v30 = ~v28;
    while (1)
    {
      sub_1001A3A2C(*(a2 + 48) + v29 * v26, v6);
      if (static UUID.== infix(_:_:)())
      {
        break;
      }

      sub_1001A3AF4(v6);
LABEL_16:
      v29 = (v29 + 1) & v30;
      if (((*(v22 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v31 = static Date.== infix(_:_:)();
    sub_1001A3AF4(v6);
    if ((v31 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1001A3AF4(v10);
    v13 = v35;
    a1 = v36;
    v17 = v33;
    v15 = v34;
    v21 = v32;
    v20 = v37;
  }

  while (v37);
LABEL_8:
  v24 = v16;
  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return;
    }

    v25 = *(v17 + 8 * v16);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v37 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
}

Swift::Int sub_1005A52DC(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005A544C(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v29 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v24 = -1 << *(a2 + 32);
    v25 = v16 & ~v24;
    if (((*(v9 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
LABEL_23:
      v14, v17, v18, v19, v20, v21, v22, v23;
      return 0;
    }

    v26 = ~v24;
    while (1)
    {
      v27 = (*(a2 + 48) + 16 * v25);
      v17 = v27[1];
      v28 = *v27 == v15 && v17 == v14;
      if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v25 = (v25 + 1) & v26;
      if (((*(v9 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v14, v17, v18, v19, v20, v21, v22, v23;
    result = v29;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005A5604()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094D7B0);
  v1 = sub_100006654(v0, qword_10094D7B0);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_1005A56D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = "REMCDTemplateOperationQueueItem";
  v3 = "d.ICCloudConfigurationUpdater";
  v4 = "atchUpSyncController";
  if (v1 != 3)
  {
    v4 = "ActivityScheduler";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1)
  {
    v2 = "butesAutoTrainer";
  }

  if (v1 <= 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  String.hash(into:)();
  (v5 | 0x8000000000000000), v6, v7, v8, v9, v10, v11, v12;
  return Hasher._finalize()();
}

void sub_1005A57AC(uint64_t a1)
{
  v2 = *v1;
  v3 = "d.ICCloudConfigurationUpdater";
  v4 = "atchUpSyncController";
  if (v2 != 3)
  {
    v4 = "ActivityScheduler";
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v1)
  {
    v5 = "butesAutoTrainer";
  }

  else
  {
    v5 = "REMCDTemplateOperationQueueItem";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  String.hash(into:)();

  (v6 | 0x8000000000000000), v7, v8, v9, v10, v11, v12, v13;
}

Swift::Int sub_1005A586C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = "REMCDTemplateOperationQueueItem";
  v4 = "d.ICCloudConfigurationUpdater";
  v5 = "atchUpSyncController";
  if (v2 != 3)
  {
    v5 = "ActivityScheduler";
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = "butesAutoTrainer";
  }

  if (v2 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  String.hash(into:)();
  (v6 | 0x8000000000000000), v7, v8, v9, v10, v11, v12, v13;
  return Hasher._finalize()();
}

unint64_t sub_1005A593C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005AA4B8(*a1);
  *a2 = result;
  return result;
}

void sub_1005A596C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "d.ICCloudConfigurationUpdater";
  v4 = 0xD000000000000034;
  v5 = "atchUpSyncController";
  v6 = 0xD000000000000031;
  if (v2 != 3)
  {
    v6 = 0xD00000000000001BLL;
    v5 = "ActivityScheduler";
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xD00000000000002DLL;
  if (*v1)
  {
    v8 = "butesAutoTrainer";
  }

  else
  {
    v7 = 0xD000000000000030;
    v8 = "REMCDTemplateOperationQueueItem";
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v7 = v4;
    v9 = v3;
  }

  *a1 = v7;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t sub_1005A5A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  __chkstk_darwin(v22, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a1;
  v18[5] = a2;
  aBlock[4] = sub_1005A9EF4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F8BD8;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_1005A9F00(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v22);
}

void sub_1005A5D84(uint64_t a1)
{
  if (qword_100936608 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_10094D7D8;

  v3 = sub_100241458(a1, v2);
  v2, v4, v5, v6, v7, v8, v9, v10;
  if (v3)
  {
    if (qword_1009365F8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_10094D7B0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32[0] = v15;
      v16 = 0xD000000000000030;
      v17 = "REMCDTemplateOperationQueueItem";
      *v14 = 136446210;
      v18 = "d.ICCloudConfigurationUpdater";
      v19 = 0xD000000000000034;
      v20 = "atchUpSyncController";
      v21 = 0xD000000000000031;
      if (a1 != 3)
      {
        v21 = 0xD00000000000001BLL;
        v20 = "ActivityScheduler";
      }

      if (a1 != 2)
      {
        v19 = v21;
        v18 = v20;
      }

      if (a1)
      {
        v16 = 0xD00000000000002DLL;
        v17 = "butesAutoTrainer";
      }

      if (a1 <= 1u)
      {
        v22 = v16;
      }

      else
      {
        v22 = v19;
      }

      if (a1 <= 1u)
      {
        v23 = v17;
      }

      else
      {
        v23 = v18;
      }

      v24 = sub_10000668C(v22, (v23 | 0x8000000000000000), v32);
      (v23 | 0x8000000000000000), v25, v26, v27, v28, v29, v30, v31;
      *(v14 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "RDDynamicXPCActivity registered more than once {identifier: %{public}s}", v14, 0xCu);
      sub_10000607C(v15);
    }
  }

  else
  {
    swift_beginAccess();
    sub_10037ED5C(&v33, a1);
    swift_endAccess();
  }
}

void sub_1005A5FF0(_xpc_activity_s *a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = type metadata accessor for REM_os_activity.Options();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    state = xpc_activity_get_state(a1);
    if (state == 3)
    {
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      sub_100006654(v85, qword_10094D7B0);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        aBlock[0] = v89;
        v90 = 0xD000000000000030;
        v91 = "REMCDTemplateOperationQueueItem";
        *v88 = 136446210;
        v92 = "d.ICCloudConfigurationUpdater";
        v93 = 0xD000000000000034;
        v94 = "atchUpSyncController";
        v95 = 0xD000000000000031;
        if (a3 != 3)
        {
          v95 = 0xD00000000000001BLL;
          v94 = "ActivityScheduler";
        }

        if (a3 != 2)
        {
          v93 = v95;
          v92 = v94;
        }

        if (a3)
        {
          v90 = 0xD00000000000002DLL;
          v91 = "butesAutoTrainer";
        }

        if (a3 <= 1u)
        {
          v96 = v90;
        }

        else
        {
          v96 = v93;
        }

        if (a3 <= 1u)
        {
          v97 = v91;
        }

        else
        {
          v97 = v92;
        }

        v98 = sub_10000668C(v96, (v97 | 0x8000000000000000), aBlock);
        (v97 | 0x8000000000000000), v99, v100, v101, v102, v103, v104, v105;
        *(v88 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v86, v87, "RDDynamicXPCActivity should defer {identifier: %{public}s}", v88, 0xCu);
        sub_10000607C(v89);
      }

      v82 = 0;
      v80 = 0;
      v106 = 1;
      goto LABEL_91;
    }

    if (state == 2)
    {
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_100006654(v60, qword_10094D7B0);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        aBlock[0] = v128;
        v64 = 0xD000000000000030;
        v65 = "REMCDTemplateOperationQueueItem";
        *v63 = 136446210;
        v66 = "d.ICCloudConfigurationUpdater";
        v67 = 0xD000000000000034;
        v68 = "atchUpSyncController";
        v69 = 0xD000000000000031;
        if (a3 != 3)
        {
          v69 = 0xD00000000000001BLL;
          v68 = "ActivityScheduler";
        }

        if (a3 != 2)
        {
          v67 = v69;
          v66 = v68;
        }

        if (a3)
        {
          v64 = 0xD00000000000002DLL;
          v65 = "butesAutoTrainer";
        }

        if (a3 <= 1u)
        {
          v70 = v64;
        }

        else
        {
          v70 = v67;
        }

        if (a3 <= 1u)
        {
          v71 = v65;
        }

        else
        {
          v71 = v66;
        }

        v72 = sub_10000668C(v70, (v71 | 0x8000000000000000), aBlock);
        (v71 | 0x8000000000000000), v73, v74, v75, v76, v77, v78, v79;
        *(v63 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v61, v62, "RDDynamicXPCActivity CHECKIN RUN {identifier: %{public}s}", v63, 0xCu);
        sub_10000607C(v128);
      }

      v80 = swift_allocObject();
      *(v80 + 16) = v11;
      *(v80 + 24) = a1;
      v81 = swift_allocObject();
      v82 = sub_1005A9ECC;
      *(v81 + 16) = sub_1005A9ECC;
      *(v81 + 24) = v80;
      aBlock[4] = sub_1000FDA90;
      aBlock[5] = v81;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F160;
      aBlock[3] = &unk_1008F8B88;
      v128 = _Block_copy(aBlock);
      sub_1000F5104(&unk_10094D920, &unk_1007B3300);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_100791300;

      swift_unknownObjectRetain();
      static REM_os_activity.Options.ifNonePresent.getter();
      v129 = v83;
      sub_1005A9F00(&qword_10093FE28, &type metadata accessor for REM_os_activity.Options, &protocol conformance descriptor for REM_os_activity.Options);
      sub_1000F5104(&unk_10094D930, &qword_10079EE00);
      sub_10000CB48(&qword_10093FE30, &unk_10094D930, &qword_10079EE00, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v84 = v128;
      static REM_os_activity.initiate(_:dso:options:execute:)();
      _Block_release(v84);
      (*(v6 + 8))(v9, v5);

      goto LABEL_90;
    }

    if (state)
    {
      v107 = state;
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v108 = type metadata accessor for Logger();
      sub_100006654(v108, qword_10094D7B0);
      v14 = Logger.logObject.getter();
      v109 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v14, v109))
      {
        goto LABEL_89;
      }

      v110 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      v111 = 0xD000000000000030;
      v112 = "REMCDTemplateOperationQueueItem";
      *v110 = 136446466;
      v113 = "d.ICCloudConfigurationUpdater";
      v114 = 0xD000000000000034;
      v115 = "atchUpSyncController";
      v116 = 0xD000000000000031;
      if (a3 != 3)
      {
        v116 = 0xD00000000000001BLL;
        v115 = "ActivityScheduler";
      }

      if (a3 != 2)
      {
        v114 = v116;
        v113 = v115;
      }

      if (a3)
      {
        v111 = 0xD00000000000002DLL;
        v112 = "butesAutoTrainer";
      }

      if (a3 <= 1u)
      {
        v117 = v111;
      }

      else
      {
        v117 = v114;
      }

      if (a3 <= 1u)
      {
        v118 = v112;
      }

      else
      {
        v118 = v113;
      }

      v119 = sub_10000668C(v117, (v118 | 0x8000000000000000), aBlock);
      (v118 | 0x8000000000000000), v120, v121, v122, v123, v124, v125, v126;
      *(v110 + 4) = v119;
      *(v110 + 12) = 2048;
      *(v110 + 14) = v107;
      v34 = "RDDynamicXPCActivity CHECKIN ERROR unexpected state {identifier: %{public}s, state: %ld}";
      v35 = v109;
      v36 = v14;
      v37 = v110;
      v38 = 22;
    }

    else
    {
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100006654(v13, qword_10094D7B0);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_89;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      v18 = 0xD000000000000030;
      v19 = "REMCDTemplateOperationQueueItem";
      *v16 = 136446210;
      v20 = "d.ICCloudConfigurationUpdater";
      v21 = 0xD000000000000034;
      v22 = "atchUpSyncController";
      v23 = 0xD000000000000031;
      if (a3 != 3)
      {
        v23 = 0xD00000000000001BLL;
        v22 = "ActivityScheduler";
      }

      if (a3 != 2)
      {
        v21 = v23;
        v20 = v22;
      }

      if (a3)
      {
        v18 = 0xD00000000000002DLL;
        v19 = "butesAutoTrainer";
      }

      if (a3 <= 1u)
      {
        v24 = v18;
      }

      else
      {
        v24 = v21;
      }

      if (a3 <= 1u)
      {
        v25 = v19;
      }

      else
      {
        v25 = v20;
      }

      v26 = sub_10000668C(v24, (v25 | 0x8000000000000000), aBlock);
      (v25 | 0x8000000000000000), v27, v28, v29, v30, v31, v32, v33;
      *(v16 + 4) = v26;
      v34 = "RDDynamicXPCActivity CHECKIN CHECKIN {identifier: %{public}s}";
      v35 = v15;
      v36 = v14;
      v37 = v16;
      v38 = 12;
    }

    _os_log_impl(&_mh_execute_header, v36, v35, v34, v37, v38);
    sub_10000607C(v17);

LABEL_89:

    v82 = 0;
    v80 = 0;
LABEL_90:
    v106 = 0;
LABEL_91:
    *(v11 + 17) = v106;

    sub_1000FDA80(v82, v80);
    return;
  }

  if (qword_1009365F8 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100006654(v39, qword_10094D7B0);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    v44 = 0xD000000000000030;
    v45 = "REMCDTemplateOperationQueueItem";
    *v42 = 136446210;
    v46 = "d.ICCloudConfigurationUpdater";
    v47 = 0xD000000000000034;
    v48 = "atchUpSyncController";
    v49 = 0xD000000000000031;
    if (a3 != 3)
    {
      v49 = 0xD00000000000001BLL;
      v48 = "ActivityScheduler";
    }

    if (a3 != 2)
    {
      v47 = v49;
      v46 = v48;
    }

    if (a3)
    {
      v44 = 0xD00000000000002DLL;
      v45 = "butesAutoTrainer";
    }

    if (a3 <= 1u)
    {
      v50 = v44;
    }

    else
    {
      v50 = v47;
    }

    if (a3 <= 1u)
    {
      v51 = v45;
    }

    else
    {
      v51 = v46;
    }

    v52 = sub_10000668C(v50, (v51 | 0x8000000000000000), aBlock);
    (v51 | 0x8000000000000000), v53, v54, v55, v56, v57, v58, v59;
    *(v42 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v40, v41, "RDDynamicXPCActivity CHECKIN executed on deallocated instance {identifier: %{public}s}", v42, 0xCu);
    sub_10000607C(v43);
  }
}

void sub_1005A6AB4(_xpc_activity_s *a1)
{
  v2 = v1;
  if (qword_1009365F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094D7B0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v66 = v8;
    *v7 = 136446210;
    v9 = 0xD000000000000030;
    v10 = *(v2 + 16);
    v11 = "REMCDTemplateOperationQueueItem";
    v12 = "d.ICCloudConfigurationUpdater";
    v13 = 0xD000000000000034;
    v14 = "atchUpSyncController";
    v15 = 0xD000000000000031;
    if (v10 != 3)
    {
      v15 = 0xD00000000000001BLL;
      v14 = "ActivityScheduler";
    }

    if (v10 != 2)
    {
      v13 = v15;
      v12 = v14;
    }

    if (*(v2 + 16))
    {
      v9 = 0xD00000000000002DLL;
      v11 = "butesAutoTrainer";
    }

    if (*(v2 + 16) <= 1u)
    {
      v16 = v9;
    }

    else
    {
      v16 = v13;
    }

    if (*(v2 + 16) <= 1u)
    {
      v17 = v11;
    }

    else
    {
      v17 = v12;
    }

    v18 = sub_10000668C(v16, (v17 | 0x8000000000000000), &v66);
    (v17 | 0x8000000000000000), v19, v20, v21, v22, v23, v24, v25;
    *(v7 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDDynamicXPCActivity RUN START {identifier: %{public}s}", v7, 0xCu);
    sub_10000607C(v8);
  }

  if (xpc_activity_set_state(a1, 4))
  {
    v66 = *(v2 + 120);
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();

    v26 = *(v2 + 16);
    v66 = 0;
    v67 = 0xE000000000000000;
    v27._countAndFlagsBits = 0x7669746341637078;
    v27._object = 0xEC0000005B797469;
    String.append(_:)(v27);
    _print_unlocked<A, B>(_:_:)();
    v28._countAndFlagsBits = 93;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v30 = v66;
    v29 = v67;

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v29, v33, v34, v35, v36, v37, v38, v39;
    if (os_log_type_enabled(v31, v32))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v66 = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_10000668C(v30, v29, &v66);
      _os_log_impl(&_mh_execute_header, v31, v32, "os_transaction INIT {name: %{public}s}", v40, 0xCu);
      sub_10000607C(v41);
    }

    String.utf8CString.getter();
    v42 = os_transaction_create();

    v43 = *(v2 + 24);
    v44 = swift_allocObject();
    *(v44 + 16) = a1;
    *(v44 + 24) = v26;
    *(v44 + 32) = v30;
    *(v44 + 40) = v29;
    *(v44 + 48) = v42;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v43(sub_1005A9570, v44);
    swift_unknownObjectRelease();
  }

  else
  {

    oslog = Logger.logObject.getter();
    v45 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(oslog, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v66 = v47;
      *v46 = 136446210;
      v48 = 0xD000000000000030;
      v49 = *(v2 + 16);
      v50 = "REMCDTemplateOperationQueueItem";
      v51 = "d.ICCloudConfigurationUpdater";
      v52 = 0xD000000000000034;
      v53 = "atchUpSyncController";
      v54 = 0xD000000000000031;
      if (v49 != 3)
      {
        v54 = 0xD00000000000001BLL;
        v53 = "ActivityScheduler";
      }

      if (v49 != 2)
      {
        v52 = v54;
        v51 = v53;
      }

      if (*(v2 + 16))
      {
        v48 = 0xD00000000000002DLL;
        v50 = "butesAutoTrainer";
      }

      if (*(v2 + 16) <= 1u)
      {
        v55 = v48;
      }

      else
      {
        v55 = v52;
      }

      if (*(v2 + 16) <= 1u)
      {
        v56 = v50;
      }

      else
      {
        v56 = v51;
      }

      v57 = sub_10000668C(v55, (v56 | 0x8000000000000000), &v66);
      (v56 | 0x8000000000000000), v58, v59, v60, v61, v62, v63, v64;
      *(v46 + 4) = v57;
      _os_log_impl(&_mh_execute_header, oslog, v45, "RDDynamicXPCActivity RUN ERROR. setState(XPC_ACTIVITY_STATE_CONTINUE) failed {identifier: %{public}s}", v46, 0xCu);
      sub_10000607C(v47);
    }

    else
    {
    }
  }
}

uint64_t sub_1005A7074@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a1[3];
  v51 = a1[2];
  v52 = v5;
  v6 = *(a1 + 9);
  v53 = *(a1 + 8);
  v7 = a1[1];
  v49 = *a1;
  v50 = v7;
  v8 = *(a2 + 104);
  v9 = *(a2 + 72);
  v57[3] = *(a2 + 88);
  v57[4] = v8;
  v10 = *(a2 + 40);
  v57[1] = *(a2 + 56);
  v57[2] = v9;
  v57[0] = v10;
  v11 = *(&v8 + 1);
  if (!v6)
  {
    if (!*(&v8 + 1))
    {
      v28 = a1[3];
      v40 = a1[2];
      v41 = v28;
      v29 = *(a1 + 8);
      v30 = a1[1];
      v38 = *a1;
      v39 = v30;
      v42 = v29;
      sub_1005A9584(v57, v54);
      sub_1005A9460(a1, v54);
      result = sub_1000050A4(&v38, &qword_10094D940, &unk_1007B3310);
      v21 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!*(&v8 + 1))
  {
LABEL_5:
    v22 = a1[3];
    v40 = a1[2];
    v41 = v22;
    v23 = *(a1 + 8);
    v24 = a1[1];
    v38 = *a1;
    v39 = v24;
    *&v42 = v23;
    *(&v42 + 1) = v6;
    v25 = *(a2 + 56);
    v26 = *(a2 + 88);
    v45 = *(a2 + 72);
    v46 = v26;
    v27 = *(a2 + 104);
    v43 = *(a2 + 40);
    v44 = v25;
    v47 = v27;
    v48 = v11;
    sub_1005A9584(v57, v54);
    sub_1005A9460(a1, v54);
    result = sub_1000050A4(&v38, &qword_10094D948, &qword_1007B3320);
    v21 = 1;
    goto LABEL_7;
  }

  v12 = *(a2 + 104);
  v13 = *(a2 + 56);
  v14 = *(a2 + 88);
  v32 = *(a2 + 72);
  v33 = v14;
  v31[0] = *(a2 + 40);
  v31[1] = v13;
  *&v34 = v12;
  *(&v34 + 1) = v11;
  v40 = v32;
  v41 = v14;
  v38 = v31[0];
  v39 = v13;
  v42 = v34;
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[3];
  v18 = *(a1 + 8);
  v54[2] = a1[2];
  v54[3] = v17;
  v54[0] = v15;
  v54[1] = v16;
  v55 = v18;
  v56 = v6;
  v19 = sub_1005A968C(v54, &v38);
  sub_1005A9584(v57, v35);
  sub_1005A9460(a1, v35);
  sub_1000050A4(v31, &qword_10094D940, &unk_1007B3310);
  v35[2] = v51;
  v35[3] = v52;
  v35[0] = v49;
  v35[1] = v50;
  v36 = v53;
  v37 = v6;
  result = sub_1000050A4(v35, &qword_10094D940, &unk_1007B3310);
  v21 = v19 ^ 1;
LABEL_7:
  *a3 = v21 & 1;
  return result;
}

void sub_1005A727C(_xpc_activity_s *a1, uint64_t a2, unsigned __int8 a3, __int128 *a4)
{
  v7 = type metadata accessor for REM_os_activity.Options();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v149[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    state = xpc_activity_get_state(a1);
    if (state == 3)
    {
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      sub_100006654(v100, qword_10094D7B0);
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *&aBlock = v104;
        v105 = 0xD000000000000030;
        v106 = "REMCDTemplateOperationQueueItem";
        *v103 = 136446210;
        v107 = "d.ICCloudConfigurationUpdater";
        v108 = 0xD000000000000034;
        v109 = "atchUpSyncController";
        v110 = 0xD000000000000031;
        if (a3 != 3)
        {
          v110 = 0xD00000000000001BLL;
          v109 = "ActivityScheduler";
        }

        if (a3 != 2)
        {
          v108 = v110;
          v107 = v109;
        }

        if (a3)
        {
          v105 = 0xD00000000000002DLL;
          v106 = "butesAutoTrainer";
        }

        if (a3 <= 1u)
        {
          v111 = v105;
        }

        else
        {
          v111 = v108;
        }

        if (a3 <= 1u)
        {
          v112 = v106;
        }

        else
        {
          v112 = v107;
        }

        v113 = sub_10000668C(v111, (v112 | 0x8000000000000000), &aBlock);
        (v112 | 0x8000000000000000), v114, v115, v116, v117, v118, v119, v120;
        *(v103 + 4) = v113;
        _os_log_impl(&_mh_execute_header, v101, v102, "RDDynamicXPCActivity should defer {identifier: %{public}s}", v103, 0xCu);
        sub_10000607C(v104);
      }

      v121 = 0;
      v122 = 0;
      v123 = 1;
      goto LABEL_92;
    }

    if (state == 2)
    {
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      sub_100006654(v79, qword_10094D7B0);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v148 = v13;
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&aBlock = v83;
        v84 = 0xD000000000000030;
        v85 = "REMCDTemplateOperationQueueItem";
        *v82 = 136446210;
        v86 = "d.ICCloudConfigurationUpdater";
        v87 = 0xD000000000000034;
        v88 = "atchUpSyncController";
        v89 = 0xD000000000000031;
        if (a3 != 3)
        {
          v89 = 0xD00000000000001BLL;
          v88 = "ActivityScheduler";
        }

        if (a3 != 2)
        {
          v87 = v89;
          v86 = v88;
        }

        if (a3)
        {
          v84 = 0xD00000000000002DLL;
          v85 = "butesAutoTrainer";
        }

        if (a3 <= 1u)
        {
          v90 = v84;
        }

        else
        {
          v90 = v87;
        }

        if (a3 <= 1u)
        {
          v91 = v85;
        }

        else
        {
          v91 = v86;
        }

        v92 = sub_10000668C(v90, (v91 | 0x8000000000000000), &aBlock);
        (v91 | 0x8000000000000000), v93, v94, v95, v96, v97, v98, v99;
        *(v82 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v80, v81, "RDDynamicXPCActivity UPDATE RUN {identifier: %{public}s", v82, 0xCu);
        sub_10000607C(v83);

        v13 = v148;
      }

      else
      {
      }

      v122 = swift_allocObject();
      *(v122 + 16) = v13;
      *(v122 + 24) = a1;
      v145 = swift_allocObject();
      v121 = sub_1005AA778;
      *(v145 + 16) = sub_1005AA778;
      *(v145 + 24) = v122;
      *&v153 = sub_1000529DC;
      *(&v153 + 1) = v145;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v152 = sub_10000F160;
      *(&v152 + 1) = &unk_1008F8A98;
      v148 = _Block_copy(&aBlock);
      sub_1000F5104(&unk_10094D920, &unk_1007B3300);
      v146 = swift_allocObject();
      *(v146 + 16) = xmmword_100791300;

      swift_unknownObjectRetain();
      static REM_os_activity.Options.ifNonePresent.getter();
      v149[0] = v146;
      sub_1005A9F00(&qword_10093FE28, &type metadata accessor for REM_os_activity.Options, &protocol conformance descriptor for REM_os_activity.Options);
      sub_1000F5104(&unk_10094D930, &qword_10079EE00);
      sub_10000CB48(&qword_10093FE30, &unk_10094D930, &qword_10079EE00, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v147 = v148;
      static REM_os_activity.initiate(_:dso:options:execute:)();
      _Block_release(v147);
      (*(v8 + 8))(v11, v7);

      goto LABEL_91;
    }

    if (state)
    {
      v124 = state;
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v125 = type metadata accessor for Logger();
      sub_100006654(v125, qword_10094D7B0);
      v18 = Logger.logObject.getter();
      v126 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v18, v126))
      {
        goto LABEL_88;
      }

      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *&aBlock = v128;
      v129 = 0xD000000000000030;
      v130 = "REMCDTemplateOperationQueueItem";
      *v127 = 136446466;
      v131 = "d.ICCloudConfigurationUpdater";
      v132 = 0xD000000000000034;
      v133 = "atchUpSyncController";
      v134 = 0xD000000000000031;
      if (a3 != 3)
      {
        v134 = 0xD00000000000001BLL;
        v133 = "ActivityScheduler";
      }

      if (a3 != 2)
      {
        v132 = v134;
        v131 = v133;
      }

      if (a3)
      {
        v129 = 0xD00000000000002DLL;
        v130 = "butesAutoTrainer";
      }

      if (a3 <= 1u)
      {
        v135 = v129;
      }

      else
      {
        v135 = v132;
      }

      if (a3 <= 1u)
      {
        v136 = v130;
      }

      else
      {
        v136 = v131;
      }

      v137 = sub_10000668C(v135, (v136 | 0x8000000000000000), &aBlock);
      (v136 | 0x8000000000000000), v138, v139, v140, v141, v142, v143, v144;
      *(v127 + 4) = v137;
      *(v127 + 12) = 2048;
      *(v127 + 14) = v124;
      _os_log_impl(&_mh_execute_header, v18, v126, "RDDynamicXPCActivity unexpected state {identifier: %{public}s, state: %ld}", v127, 0x16u);
      sub_10000607C(v128);
    }

    else
    {
      *&aBlock = *(v13 + 15);
      __chkstk_darwin(0, v15);
      *(&v148 - 2) = v13;
      *(&v148 - 1) = a4;
      type metadata accessor for UnfairLock();

      Lock.sync<A>(_:)();

      sub_1005A7EB8();
      xpc_activity_set_criteria(a1, v16);
      swift_unknownObjectRelease();
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_10094D7B0);
      sub_1005A9460(a4, &aBlock);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      sub_1005A9498(a4, v20, v21, v22, v23, v24, v25, v26);
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_88;
      }

      v27 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v28 = 0xD000000000000030;
      v29 = "REMCDTemplateOperationQueueItem";
      *v27 = 136446466;
      v30 = "d.ICCloudConfigurationUpdater";
      v31 = 0xD000000000000034;
      v32 = "atchUpSyncController";
      v33 = 0xD000000000000031;
      if (a3 != 3)
      {
        v33 = 0xD00000000000001BLL;
        v32 = "ActivityScheduler";
      }

      if (a3 != 2)
      {
        v31 = v33;
        v30 = v32;
      }

      if (a3)
      {
        v28 = 0xD00000000000002DLL;
        v29 = "butesAutoTrainer";
      }

      if (a3 <= 1u)
      {
        v34 = v28;
      }

      else
      {
        v34 = v31;
      }

      if (a3 <= 1u)
      {
        v35 = v29;
      }

      else
      {
        v35 = v30;
      }

      v36 = sub_10000668C(v34, (v35 | 0x8000000000000000), &v150);
      (v35 | 0x8000000000000000), v37, v38, v39, v40, v41, v42, v43;
      *(v27 + 4) = v36;
      *(v27 + 12) = 2082;
      v44 = a4[2];
      v45 = a4[4];
      v154 = a4[3];
      v155 = v45;
      v46 = *a4;
      v152 = a4[1];
      v153 = v44;
      aBlock = v46;
      sub_1005A9460(a4, v149);
      v47 = String.init<A>(describing:)();
      v49 = v48;
      v50 = sub_10000668C(v47, v48, &v150);
      v49, v51, v52, v53, v54, v55, v56, v57;
      *(v27 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v18, v19, "RDDynamicXPCActivity UPDATE END Updated {identifier: %{public}s, newCriteria: %{public}s}", v27, 0x16u);
      swift_arrayDestroy();
    }

LABEL_88:

    v121 = 0;
    v122 = 0;
LABEL_91:
    v123 = 0;
LABEL_92:
    *(v13 + 17) = v123;

    sub_1000FDA80(v121, v122);
    return;
  }

  if (qword_1009365F8 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_100006654(v58, qword_10094D7B0);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&aBlock = v62;
    v63 = 0xD000000000000030;
    v64 = "REMCDTemplateOperationQueueItem";
    *v61 = 136446210;
    v65 = "d.ICCloudConfigurationUpdater";
    v66 = 0xD000000000000034;
    v67 = "atchUpSyncController";
    v68 = 0xD000000000000031;
    if (a3 != 3)
    {
      v68 = 0xD00000000000001BLL;
      v67 = "ActivityScheduler";
    }

    if (a3 != 2)
    {
      v66 = v68;
      v65 = v67;
    }

    if (a3)
    {
      v63 = 0xD00000000000002DLL;
      v64 = "butesAutoTrainer";
    }

    if (a3 <= 1u)
    {
      v69 = v63;
    }

    else
    {
      v69 = v66;
    }

    if (a3 <= 1u)
    {
      v70 = v64;
    }

    else
    {
      v70 = v65;
    }

    v71 = sub_10000668C(v69, (v70 | 0x8000000000000000), &aBlock);
    (v70 | 0x8000000000000000), v72, v73, v74, v75, v76, v77, v78;
    *(v61 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v59, v60, "RDDynamicXPCActivity UPDATE executed on deallocated instance {identifier: %{public}s}", v61, 0xCu);
    sub_10000607C(v62);
  }
}

void sub_1005A7EB8()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  v2 = v1;
  v3 = *(v0 + 8);
  if ((v3 & 0xFF00) != 0x200)
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    if ((v3 & 1) == 0)
    {
      if ((~*v0 & 0x7FF0000000000000) == 0)
      {
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v8 = *v0;
      if (*v0 <= -9.22337204e18)
      {
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      if (v8 >= 9.22337204e18)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      xpc_dictionary_set_int64(v1, XPC_ACTIVITY_INTERVAL, v8);
    }

    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, v3 & 0x100);
    if ((v5 & 1) == 0)
    {
      if ((~*&v4 & 0x7FF0000000000000) == 0)
      {
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      if (v4 <= -9.22337204e18)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (v4 >= 9.22337204e18)
      {
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      xpc_dictionary_set_int64(v2, XPC_ACTIVITY_DELAY, v4);
    }

    if ((v7 & 1) == 0)
    {
      if ((~*&v6 & 0x7FF0000000000000) == 0)
      {
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      if (v6 <= -9.22337204e18)
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      if (v6 >= 9.22337204e18)
      {
        goto LABEL_111;
      }

      xpc_dictionary_set_int64(v2, XPC_ACTIVITY_GRACE_PERIOD, v6);
    }
  }

  v9 = *(v0 + 41);
  if (v9 != 2)
  {
    if (v9)
    {
      v10 = &XPC_ACTIVITY_PRIORITY_UTILITY;
    }

    else
    {
      v10 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
    }

    xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, *v10);
  }

  v11 = *(v0 + 42);
  if (v11 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, v11 & 1);
  }

  v12 = *(v0 + 43);
  if (v12 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, v12 & 1);
  }

  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (*(v0 + 56))
  {
    goto LABEL_32;
  }

  if ((~*(v0 + 48) & 0x7FF0000000000000) == 0)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v13 = *(v0 + 48);
  if (v13 <= -9.22337204e18)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_EXPECTED_DURATION, v13);
LABEL_32:
  if (!XPC_ACTIVITY_CPU_INTENSIVE)
  {
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
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    return;
  }

  v14 = *(v0 + 57);
  if (v14 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_CPU_INTENSIVE, v14 & 1);
  }

  if (!XPC_ACTIVITY_MEMORY_INTENSIVE)
  {
    goto LABEL_116;
  }

  v15 = *(v0 + 58);
  if (v15 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_MEMORY_INTENSIVE, v15 & 1);
  }

  if (!XPC_ACTIVITY_DISK_INTENSIVE)
  {
    goto LABEL_117;
  }

  v16 = *(v0 + 59);
  if (v16 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_DISK_INTENSIVE, v16 & 1);
  }

  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
    goto LABEL_118;
  }

  v17 = *(v0 + 62);
  if (v17 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, v17 & 1);
  }

  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
    goto LABEL_119;
  }

  v18 = *(v0 + 63);
  if (v18 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, v18 & 1);
  }

  if (!XPC_ACTIVITY_MAY_REBOOT_DEVICE)
  {
    goto LABEL_120;
  }

  v19 = *(v0 + 60);
  if (v19 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_MAY_REBOOT_DEVICE, v19 & 1);
  }

  if (!XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)
  {
    goto LABEL_121;
  }

  v20 = *(v0 + 61);
  if (v20 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY, v20 & 1);
  }

  if (!XPC_ACTIVITY_POWER_NAP)
  {
    goto LABEL_122;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_POWER_NAP, *(v0 + 64));
  if (!XPC_ACTIVITY_SHOULD_WAKE_DEVICE)
  {
    goto LABEL_123;
  }

  v21 = *(v0 + 44);
  if (v21 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, v21 & 1);
  }

  v22 = *(v0 + 72);
  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 56);
  sub_1005A9460(v0, &v37);
  v26 = 0;
  v27 = (v23 + 63) >> 6;
  v28 = XPC_ACTIVITY_REQUIRES_CLASS_C;
  v29 = XPC_ACTIVITY_REQUIRES_CLASS_B;
  v30 = XPC_ACTIVITY_REQUIRES_CLASS_A;
  while (1)
  {
    if (!v25)
    {
      while (1)
      {
        v32 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v32 >= v27)
        {
          goto LABEL_73;
        }

        v25 = *(v22 + 56 + 8 * v32);
        ++v26;
        if (v25)
        {
          v26 = v32;
          goto LABEL_67;
        }
      }

      __break(1u);
      goto LABEL_100;
    }

LABEL_67:
    v33 = *(*(v22 + 48) + (__clz(__rbit64(v25)) | (v26 << 6)));
    if (!v33)
    {
      v31 = v30;
      if (!v30)
      {
        goto LABEL_113;
      }

      goto LABEL_61;
    }

    if (v33 != 1)
    {
      break;
    }

    v31 = v29;
    if (!v29)
    {
      goto LABEL_112;
    }

LABEL_61:
    v25 &= v25 - 1;
    xpc_dictionary_set_BOOL(v2, v31, 1);
  }

  v31 = v28;
  if (v28)
  {
    goto LABEL_61;
  }

  __break(1u);
LABEL_73:

  if (!XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE)
  {
    goto LABEL_124;
  }

  v34 = *(v0 + 65);
  if (v34 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, v34 & 1);
  }

  LODWORD(v35) = *(v0 + 66);
  if (v35 > 3)
  {
LABEL_81:
    if (v35 > 5)
    {
LABEL_88:
      if (v35 != 6)
      {
        return;
      }

      v36 = XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_STATIONARY;
      if (XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_STATIONARY)
      {
        goto LABEL_96;
      }

      __break(1u);
      goto LABEL_91;
    }

    if (v35 != 4)
    {
LABEL_93:
      v36 = XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_MOVING;
      if (XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_MOVING)
      {
        goto LABEL_96;
      }

      __break(1u);
      goto LABEL_95;
    }

    v35 = &XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE;
    v36 = XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE;
    if (XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE)
    {
      goto LABEL_96;
    }

    __break(1u);
LABEL_85:
    if (v35 != 2)
    {
LABEL_95:
      v36 = XPC_ACTIVITY_MOTION_STATE_CYCLING;
      if (!XPC_ACTIVITY_MOTION_STATE_CYCLING)
      {
        goto LABEL_126;
      }

      goto LABEL_96;
    }

    v35 = &XPC_ACTIVITY_MOTION_STATE_RUNNING;
    v36 = XPC_ACTIVITY_MOTION_STATE_RUNNING;
    if (XPC_ACTIVITY_MOTION_STATE_RUNNING)
    {
      goto LABEL_96;
    }

    __break(1u);
    goto LABEL_88;
  }

  if (*(v0 + 66) > 1u)
  {
    goto LABEL_85;
  }

  if (*(v0 + 66))
  {
LABEL_91:
    v36 = XPC_ACTIVITY_MOTION_STATE_WALKING;
    if (XPC_ACTIVITY_MOTION_STATE_WALKING)
    {
      goto LABEL_96;
    }

    __break(1u);
    goto LABEL_93;
  }

  v35 = &XPC_ACTIVITY_MOTION_STATE_STATIONARY;
  v36 = XPC_ACTIVITY_MOTION_STATE_STATIONARY;
  if (!XPC_ACTIVITY_MOTION_STATE_STATIONARY)
  {
    __break(1u);
    goto LABEL_81;
  }

LABEL_96:
  if (!XPC_ACTIVITY_DESIRED_MOTION_STATE)
  {
    goto LABEL_125;
  }

  xpc_dictionary_set_string(v2, XPC_ACTIVITY_DESIRED_MOTION_STATE, v36);
}

uint64_t sub_1005A84EC()
{
  v0 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v0, v1);
  sub_1005A9F00(&qword_100936E60, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init(options:)();
  qword_10094D7D0 = result;
  return result;
}

uint64_t sub_1005A8650(uint64_t a1)
{
  if (qword_1009365F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094D7B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Clearing l_pendingCriteria", v5, 2u);
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v9[2] = *(a1 + 72);
  v9[3] = v7;
  v9[4] = *(a1 + 104);
  v9[0] = *(a1 + 40);
  v9[1] = v6;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return sub_1000050A4(v9, &qword_10094D940, &unk_1007B3310);
}

void sub_1005A8784(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5)
{
  if (xpc_activity_set_completion_status())
  {
    if (qword_1009365F8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094D7B0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v13 = 0xD000000000000030;
      v14 = "REMCDTemplateOperationQueueItem";
      *v12 = 136446466;
      v15 = "d.ICCloudConfigurationUpdater";
      v16 = 0xD000000000000034;
      v17 = "atchUpSyncController";
      v18 = 0xD000000000000031;
      if (a3 != 3)
      {
        v18 = 0xD00000000000001BLL;
        v17 = "ActivityScheduler";
      }

      if (a3 != 2)
      {
        v16 = v18;
        v15 = v17;
      }

      if (a3)
      {
        v13 = 0xD00000000000002DLL;
        v14 = "butesAutoTrainer";
      }

      if (a3 <= 1u)
      {
        v19 = v13;
      }

      else
      {
        v19 = v16;
      }

      if (a3 <= 1u)
      {
        v20 = v14;
      }

      else
      {
        v20 = v15;
      }

      v21 = sub_10000668C(v19, (v20 | 0x8000000000000000), &v75);
      (v20 | 0x8000000000000000), v22, v23, v24, v25, v26, v27, v28;
      *(v12 + 4) = v21;
      v29 = 0xE800000000000000;
      *(v12 + 12) = 2082;
      v30 = 0x6574656C706D6F63;
      v31 = 0xE600000000000000;
      v32 = 0x6B726F576F6ELL;
      if (a1 != 2)
      {
        v32 = 0x726F727265;
        v31 = 0xE500000000000000;
      }

      if (a1)
      {
        v30 = 0x57676E69646E6570;
        v29 = 0xEB000000006B726FLL;
      }

      if (a1 <= 1u)
      {
        v33 = v30;
      }

      else
      {
        v33 = v32;
      }

      if (a1 <= 1u)
      {
        v34 = v29;
      }

      else
      {
        v34 = v31;
      }

      v35 = sub_10000668C(v33, v34, &v75);
      v34, v36, v37, v38, v39, v40, v41, v42;
      *(v12 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v10, v11, "RDDynamicXPCActivity RUN END {identifier: %{public}s, completionStatus: %{public}s}", v12, 0x16u);
      swift_arrayDestroy();

LABEL_44:
    }
  }

  else
  {
    if (qword_1009365F8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_10094D7B0);
    v10 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v10, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v75 = v46;
      v47 = 0xD000000000000030;
      v48 = "REMCDTemplateOperationQueueItem";
      *v45 = 136446210;
      v49 = "d.ICCloudConfigurationUpdater";
      v50 = 0xD000000000000034;
      v51 = "atchUpSyncController";
      v52 = 0xD000000000000031;
      if (a3 != 3)
      {
        v52 = 0xD00000000000001BLL;
        v51 = "ActivityScheduler";
      }

      if (a3 != 2)
      {
        v50 = v52;
        v49 = v51;
      }

      if (a3)
      {
        v47 = 0xD00000000000002DLL;
        v48 = "butesAutoTrainer";
      }

      if (a3 <= 1u)
      {
        v53 = v47;
      }

      else
      {
        v53 = v50;
      }

      if (a3 <= 1u)
      {
        v54 = v48;
      }

      else
      {
        v54 = v49;
      }

      v55 = sub_10000668C(v53, (v54 | 0x8000000000000000), &v75);
      (v54 | 0x8000000000000000), v56, v57, v58, v59, v60, v61, v62;
      *(v45 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v10, v44, "RDDynamicXPCActivity RUN ERROR. setState(XPC_ACTIVITY_STATE_DONE) failed {identifier: %{public}s}", v45, 0xCu);
      sub_10000607C(v46);

      goto LABEL_44;
    }
  }

  if (qword_1009365F8 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_100006654(v63, qword_10094D7B0);

  oslog = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  a5, v65, v66, v67, v68, v69, v70, v71;
  if (os_log_type_enabled(oslog, v64))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v75 = v73;
    *v72 = 136446210;
    *(v72 + 4) = sub_10000668C(a4, a5, &v75);
    _os_log_impl(&_mh_execute_header, oslog, v64, "os_transaction RELEASE {name: %{public}s}", v72, 0xCu);
    sub_10000607C(v73);
  }
}

uint64_t sub_1005A8CB0()
{

  *(v0 + 112), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocClassInstance();
}

uint64_t initializeWithCopy for RDDynamicXPCActivity.Criteria(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithCopy for RDDynamicXPCActivity.Criteria(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 25) = *(a2 + 25);
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 41) = *(a2 + 41);
  v5 = *(a2 + 6);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 65) = *(a2 + 65);
  v6 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 9);

  v6, v7, v8, v9, v10, v11, v12, v13;
  return a1;
}

__n128 initializeWithTake for RDDynamicXPCActivity.Criteria(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t assignWithTake for RDDynamicXPCActivity.Criteria(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  v10 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  v10, a2, a3, a4, a5, a6, a7, a8;
  return a1;
}

uint64_t getEnumTagSinglePayload for RDDynamicXPCActivity.Criteria(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RDDynamicXPCActivity.Criteria(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005A901C()
{
  result = qword_10094D8B0;
  if (!qword_10094D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D8B0);
  }

  return result;
}

Swift::Int sub_1005A9070(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1005A968C(v8, v9) & 1;
}

Swift::Int sub_1005A90CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE800000000000000;
  v3 = 0xE600000000000000;
  if (v1 != 2)
  {
    v3 = 0xE500000000000000;
  }

  if (v1)
  {
    v2 = 0xEB000000006B726FLL;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

void sub_1005A9190(uint64_t a1)
{
  v2 = 0xE800000000000000;
  v3 = 0xE600000000000000;
  if (*v1 != 2)
  {
    v3 = 0xE500000000000000;
  }

  if (*v1)
  {
    v2 = 0xEB000000006B726FLL;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_1005A9240(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  if (v2 != 2)
  {
    v4 = 0xE500000000000000;
  }

  if (v2)
  {
    v3 = 0xEB000000006B726FLL;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  String.hash(into:)();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return Hasher._finalize()();
}

unint64_t sub_1005A9300@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005AA504(*a1);
  *a2 = result;
  return result;
}

void sub_1005A9330(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6574656C706D6F63;
  v4 = 0xE600000000000000;
  v5 = 0x6B726F576F6ELL;
  if (*v1 != 2)
  {
    v5 = 0x726F727265;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x57676E69646E6570;
    v2 = 0xEB000000006B726FLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1005A93C0()
{
  result = qword_10094D8B8;
  if (!qword_10094D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D8B8);
  }

  return result;
}

uint64_t sub_1005A9414(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1005A95F4(&v5, &v7) & 1;
}

uint64_t sub_1005A94DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  v4 = *(v1 + 88);
  v10[2] = *(v1 + 72);
  v10[3] = v4;
  v10[4] = *(v1 + 104);
  v10[0] = *(v1 + 40);
  v10[1] = v3;
  v6 = v2[1];
  v5 = v2[2];
  v7 = v2[3];
  *(v1 + 104) = v2[4];
  *(v1 + 56) = v6;
  *(v1 + 88) = v7;
  *(v1 + 72) = v5;
  *(v1 + 40) = *v2;
  sub_1000050A4(v10, &qword_10094D940, &unk_1007B3310);
  return sub_1005A9460(v2, &v9);
}

uint64_t sub_1005A9584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094D940, &unk_1007B3310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A95F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 9) ^ *(a2 + 9)))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Int sub_1005A968C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v3 & 0xFF00;
  if ((v2 & 0xFF00) == 0x200)
  {
    if (v4 != 512)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 512)
    {
      return 0;
    }

    v8 = *(a2 + 24);
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v3 & 1) != 0 || *a1 != *a2)
    {
      return 0;
    }

    if (((v2 >> 8) & 1) != ((v3 >> 8) & 1))
    {
      return 0;
    }

    if (*(a1 + 24))
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v8 & 1 | (*(a1 + 16) != *(a2 + 16)))
    {
      return 0;
    }

    if (*(a1 + 40))
    {
      if ((*(a2 + 40) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 40) & 1) != 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  v5 = *(a1 + 41);
  v6 = *(a2 + 41);
  if (v5 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else if (v6 == 2 || ((v6 ^ v5) & 1) != 0)
  {
    return 0;
  }

  v9 = *(a1 + 42);
  v10 = *(a2 + 42);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v10 ^ v9) & 1) != 0)
  {
    return 0;
  }

  v11 = *(a1 + 43);
  v12 = *(a2 + 43);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else if (v12 == 2 || ((v12 ^ v11) & 1) != 0)
  {
    return 0;
  }

  v13 = *(a1 + 44);
  v14 = *(a2 + 44);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else if (v14 == 2 || ((v14 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v15 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = *(a1 + 57);
  v17 = *(a2 + 57);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else if (v17 == 2 || ((v17 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v18 = *(a1 + 58);
  v19 = *(a2 + 58);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v19 ^ v18) & 1) != 0)
  {
    return 0;
  }

  v20 = *(a1 + 59);
  v21 = *(a2 + 59);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v21 ^ v20) & 1) != 0)
  {
    return 0;
  }

  v22 = *(a1 + 60);
  v23 = *(a2 + 60);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v23 ^ v22) & 1) != 0)
  {
    return 0;
  }

  v24 = *(a1 + 61);
  v25 = *(a2 + 61);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else if (v25 == 2 || ((v25 ^ v24) & 1) != 0)
  {
    return 0;
  }

  v26 = *(a1 + 62);
  v27 = *(a2 + 62);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
  {
    return 0;
  }

  v28 = *(a1 + 63);
  v29 = *(a2 + 63);
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }
  }

  else if (v29 == 2 || ((v29 ^ v28) & 1) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) ^ *(a2 + 64)))
  {
    return 0;
  }

  v30 = *(a1 + 65);
  v31 = *(a2 + 65);
  if (v30 == 2)
  {
    if (v31 != 2)
    {
      return 0;
    }
  }

  else if (v31 == 2 || ((v31 ^ v30) & 1) != 0)
  {
    return 0;
  }

  v32 = *(a1 + 66);
  v33 = *(a2 + 66);
  if (v32 == 7)
  {
    if (v33 == 7)
    {
      return sub_1005A52DC(*(a1 + 72), *(a2 + 72));
    }

    return 0;
  }

  if (v32 != v33)
  {
    return 0;
  }

  return sub_1005A52DC(*(a1 + 72), *(a2 + 72));
}

uint64_t sub_1005A99BC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 88);
  v4[2] = *(v0 + 72);
  v4[3] = v2;
  v4[4] = *(v0 + 104);
  v4[0] = *(v0 + 40);
  v4[1] = v1;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  return sub_1000050A4(v4, &qword_10094D940, &unk_1007B3310);
}

void *sub_1005A9A28(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v6 = *v3;
  v7 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v7, v8);
  *(v4 + 5) = 0u;
  v11 = v4 + 5;
  *(v4 + 13) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 7) = 0u;
  if (qword_100936600 != -1)
  {
    v9 = swift_once();
  }

  *&v32[0] = qword_10094D7D0;
  __chkstk_darwin(v9, v10);
  *(&v29 - 16) = a1;
  *(&v29 - 1) = v6;
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  *(v4 + 16) = a1;
  *&v32[0] = &_swiftEmptyArrayStorage;
  sub_1005A9F00(&qword_100936E60, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  swift_allocObject();
  v4[15] = UnfairLock.init(options:)();
  *(v4 + 17) = 0;
  v12 = v30;
  v4[3] = v29;
  v4[4] = v12;
  v13 = *(v4 + 11);
  v32[2] = *(v4 + 9);
  v32[3] = v13;
  v32[4] = *(v4 + 13);
  v14 = *(v4 + 7);
  v32[0] = *v11;
  v32[1] = v14;
  *v11 = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 13) = 0u;

  sub_1000050A4(v32, &qword_10094D940, &unk_1007B3310);
  if (a1 <= 1u)
  {
    if (a1)
    {
      v15 = "butesAutoTrainer";
      goto LABEL_13;
    }

    v16 = "com.apple.remindd.suggestedAttributesAutoTrainer";
    goto LABEL_11;
  }

  if (a1 == 2)
  {
    v15 = "d.ICCloudConfigurationUpdater";
    goto LABEL_13;
  }

  if (a1 != 3)
  {
    v16 = "com.apple.remindd.UnitTests";
LABEL_11:
    v15 = (v16 - 32);
    goto LABEL_13;
  }

  v15 = "atchUpSyncController";
LABEL_13:
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  aBlock[4] = sub_1005A9E80;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000EBA84;
  aBlock[3] = &unk_1008F8B10;
  v19 = _Block_copy(aBlock);

  v20 = String.utf8CString.getter();
  (v15 | 0x8000000000000000), v21, v22, v23, v24, v25, v26, v27;
  xpc_activity_register((v20 + 32), XPC_ACTIVITY_CHECK_IN, v19);

  _Block_release(v19);
  return v4;
}

uint64_t sub_1005A9E8C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005A9F00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005A9F48(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_10094D7C8)
  {
    if (qword_1009365F8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094D7B0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "allCheckedInActivities called more than once", v9, 2u);
    }
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = 0;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = sub_1005AA550;
  v11[4] = v10;
  type metadata accessor for RDDynamicXPCActivity();
  swift_allocObject();

  v12 = a1;
  sub_1005A9A28(0, sub_1000FCE88, v11);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = 1;
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = sub_1005AA77C;
  v14[4] = v13;
  swift_allocObject();

  v15 = v12;
  sub_1005A9A28(1u, sub_1005AA774, v14);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = 2;
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = sub_1005AA77C;
  v17[4] = v16;
  swift_allocObject();

  v18 = v15;
  sub_1005A9A28(2u, sub_1005AA774, v17);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = 3;
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = sub_1005AA77C;
  v20[4] = v19;
  swift_allocObject();

  v21 = v18;
  sub_1005A9A28(3u, sub_1005AA774, v20);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = 4;
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = sub_1005AA77C;
  v23[4] = v22;
  swift_allocObject();

  v24 = v21;
  sub_1005A9A28(4u, sub_1005AA774, v23);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v32 = qword_10094D7C8;
  qword_10094D7C8 = &_swiftEmptyArrayStorage;

  v32, v25, v26, v27, v28, v29, v30, v31;
}

unint64_t sub_1005AA4B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E3EC0, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1005AA504(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E3F80, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for RDDynamicXPCActivity.IntervalInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RDDynamicXPCActivity.IntervalInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1005AA668()
{
  result = qword_10094D950;
  if (!qword_10094D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D950);
  }

  return result;
}

unint64_t sub_1005AA6C0()
{
  result = qword_10094D958;
  if (!qword_10094D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D958);
  }

  return result;
}

unint64_t sub_1005AA718()
{
  result = qword_10094D960;
  if (!qword_10094D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D960);
  }

  return result;
}

uint64_t sub_1005AA79C(void *a1, void (*a2)(uint64_t, void), uint64_t a3, double a4)
{
  v5 = v4;
  v324 = a3;
  v323 = a2;
  v327 = a1;
  v7 = *v4;
  v306 = type metadata accessor for RDPublicTemplate(0);
  v304 = *(v306 - 8);
  __chkstk_darwin(v306, v8);
  v309 = &v295[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10, v11);
  v298 = &v295[-v12];
  v303 = v13;
  __chkstk_darwin(v14, v15);
  v310 = &v295[-v16];
  v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v17 - 8, v18);
  v317 = &v295[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20, v21);
  v315 = &v295[-v22];
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23, v25);
  v313 = &v295[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27, v28);
  v316 = &v295[-v29];
  v302 = v30;
  __chkstk_darwin(v31, v32);
  v319 = &v295[-v33];
  v34 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v300 = *(v34 - 8);
  __chkstk_darwin(v34 - 8, v35);
  v308 = &v295[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v37, v38);
  v314 = &v295[-v39];
  v301 = v40;
  __chkstk_darwin(v41, v42);
  v318 = &v295[-v43];
  v44 = type metadata accessor for Date();
  v336 = *(v44 - 8);
  __chkstk_darwin(v44, v45);
  v47 = &v295[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v48, v49);
  v305 = &v295[-v50];
  __chkstk_darwin(v51, v52);
  v321 = &v295[-v53];
  __chkstk_darwin(v54, v55);
  v307 = &v295[-v56];
  __chkstk_darwin(v57, v58);
  v312 = &v295[-v59];
  __chkstk_darwin(v60, v61);
  v297 = &v295[-v62];
  __chkstk_darwin(v63, v64);
  v66 = &v295[-v65];
  __chkstk_darwin(v67, v68);
  v335 = &v295[-v69];
  v299 = v70;
  __chkstk_darwin(v71, v72);
  v337 = &v295[-v73];
  if (qword_100936610 != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  v75 = sub_100006654(v74, qword_10094D970);
  swift_retain_n();
  v326 = v75;
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  v78 = os_log_type_enabled(v76, v77);
  v328 = v23;
  v329 = v24;
  v334 = v5;
  v338 = v44;
  v333 = v7;
  v311 = v47;
  if (v78)
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v341 = v81;
    *v79 = 136446978;
    v340[0] = v7;
    swift_getMetatypeMetadata();
    v82 = String.init<A>(describing:)();
    v84 = v83;
    v85 = v66;
    v86 = sub_10000668C(v82, v83, &v341);
    v84, v87, v88, v89, v90, v91, v92, v93;
    *(v79 + 4) = v86;
    v66 = v85;
    v5 = v334;
    *(v79 + 12) = 2114;
    v94 = v5[2];
    v95 = v5[3];
    *(v79 + 14) = v94;
    *(v79 + 22) = 2114;
    *(v79 + 24) = v95;
    *v80 = v94;
    v80[1] = v95;
    *(v79 + 32) = 2048;
    v96 = v5[10];
    v97 = v94;
    v98 = v95;

    *(v79 + 34) = v96;

    _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: Start execution {templateObjectID: %{public}@, templatePublicLinkConfiguration: %{public}@, remindersCountLimit: %ld}", v79, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();
    v44 = v338;

    sub_10000607C(v81);
  }

  else
  {
  }

  Date.init()();
  v99 = v5[3];
  v332 = v5[2];
  v325 = v99;
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v100 = *(v336 + 8);
  v320 = v66;
  v331 = v336 + 8;
  v330 = v100;
  v100(v66, v44);
  v296 = *(v5 + 72);
  v322 = swift_allocObject();
  *(v322 + 16) = 0;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  v341 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 2, 0);
  v102 = v341;
  if ((inited & 0xC000000000000001) != 0)
  {
    v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v103 = *(inited + 32);
  }

  v104 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v105)
  {
LABEL_42:
    v340[0] = 0;
    v340[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v294._object = 0x80000001007EC120;
    v294._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v294);
    v339 = v103;
    sub_1000F5104(&qword_100938C08, &unk_10079B270);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v106 = v104;
  v107 = v105;

  v109 = *v102->clientIdentity;
  v108 = *&v102->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    sub_100026EF4((v108 > 1), v109 + 1, 1);
    v102 = v341;
  }

  *v102->clientIdentity = v109 + 1;
  v110 = v102 + 16 * v109;
  *(v110 + 4) = v106;
  *(v110 + 5) = v107;
  if ((inited & 0xC000000000000001) != 0)
  {
    v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_17;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_41:
    __break(1u);
  }

  v103 = *(inited + 40);

LABEL_17:
  v111 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  v113 = v327;
  if (!v112)
  {
    goto LABEL_42;
  }

  v114 = v111;
  v115 = v112;

  v341 = v102;
  v117 = *v102->clientIdentity;
  v116 = *&v102->clientIdentity[8];
  if (v117 >= v116 >> 1)
  {
    sub_100026EF4((v116 > 1), v117 + 1, 1);
    v102 = v341;
  }

  *v102->clientIdentity = v117 + 1;
  v118 = v102 + 16 * v117;
  *(v118 + 4) = v114;
  *(v118 + 5) = v115;
  swift_setDeallocating();
  swift_arrayDestroy();
  v119 = 0;
  v120 = sub_10034AE0C(v332, v113, v102, 0);

  v121 = [v120 mostRecentPublicLinkUpdateRequestDate];
  v122 = v329;
  v123 = v338;
  if (v121)
  {
    v124 = v314;
    v125 = v121;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v126 = 0;
    v127 = v328;
    v128 = v315;
  }

  else
  {
    v126 = 1;
    v127 = v328;
    v128 = v315;
    v124 = v314;
  }

  v129 = 1;
  (*(v336 + 56))(v124, v126, 1, v123);
  sub_10012F7FC(v124, v318);
  v130 = [v120 publicLinkURLUUID];
  v315 = v130;
  if (v130)
  {
    v131 = v130;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v129 = 0;
  }

  v132 = *(v122 + 56);
  v132(v128, v129, 1, v127);
  sub_1000050A4(v128, &unk_100939D90, "8\n\r");
  v133 = [v120 publicLinkURLUUID];
  if (v133)
  {
    v134 = v313;
    v135 = v133;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v136 = *(v122 + 32);
    v314 = v120;
    v137 = v317;
    v136(v317, v134, v127);
    v132(v137, 0, 1, v127);
    v138 = v316;
    v139 = v137;
    v119 = 0;
    v120 = v314;
    v136(v316, v139, v127);
    v140 = v321;
  }

  else
  {
    v141 = v317;
    v132(v317, 1, 1, v127);
    v138 = v316;
    UUID.init()();
    v142 = (*(v122 + 48))(v141, 1, v127);
    v140 = v321;
    if (v142 != 1)
    {
      sub_1000050A4(v141, &unk_100939D90, "8\n\r");
    }
  }

  v143 = *(v122 + 32);
  v143(v319, v138, v127);
  v144 = v320;
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v330(v144, v338);
  [v120 setMostRecentPublicLinkUpdateRequestDate:isa];

  v340[0] = 0;
  if ([v113 save:v340])
  {
    v146 = v340[0];

    v147 = v113;
    v148 = objc_autoreleasePoolPush();
    v149 = sub_10034B568();
    v196 = sub_10034AE0C(v332, v147, v149, 0);
    v149, v197, v198, v199, v200, v201, v202, v203;
    v204 = v310;
    sub_100531140(v319, v335, v325, v334[10], v310);

    objc_autoreleasePoolPop(v148);
    v205 = v298;
    sub_10042A1BC(v204, v298);
    v206 = v297;
    v207 = v338;
    v321 = *(v336 + 16);
    v317 = (v336 + 16);
    (v321)(v297, v337, v338);
    v208 = v332;
    v209 = Logger.logObject.getter();
    v210 = static os_log_type_t.default.getter();
    v332 = v208;

    LODWORD(v326) = v210;
    if (os_log_type_enabled(v209, v210))
    {
      LODWORD(v311) = v315 != 0;
      v211 = v206;
      v212 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v312 = v213;
      v316 = swift_slowAlloc();
      v340[0] = v316;
      *v212 = 136447234;
      v214 = sub_1001424F8(v333);
      v216 = v215;
      v217 = sub_10000668C(v214, v215, v340);
      v314 = v209;
      v218 = v217;
      v216, v219, v220, v221, v222, v223, v224, v225;
      *(v212 + 4) = v218;
      *(v212 + 12) = 2114;
      v226 = v332;
      *(v212 + 14) = v332;
      *v213 = v226;
      *(v212 + 22) = 2082;
      v227 = *(v306 + 32);
      v228 = v226;
      v229 = sub_10013FBFC(&v205[v227]);
      v230 = [(objc_class *)v229 recordName];

      v231 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v232 = v205;
      v234 = v233;

      v127 = v328;
      sub_1003B52F4(v232);
      v235 = sub_10000668C(v231, v234, v340);
      v234, v236, v237, v238, v239, v240, v241, v242;
      *(v212 + 24) = v235;
      *(v212 + 32) = 2082;
      v243 = Bool.yesno.getter();
      v245 = v244;
      v246 = sub_10000668C(v243, v244, v340);
      v245, v247, v248, v249, v250, v251, v252, v253;
      *(v212 + 34) = v246;
      *(v212 + 42) = 2048;
      v254 = v320;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v256 = v255;
      v257 = v254;
      v258 = v338;
      v259 = v330;
      v330(v254, v338);
      v260 = v211;
      v261 = v306;
      v259(v260, v258);
      *(v212 + 44) = v256;
      v262 = v314;
      _os_log_impl(&_mh_execute_header, v314, v326, "%{public}s: Generated content for template's public link {templateObjectID: %{public}@, recordName: %{public}s, hasPublicLinkPriorToTemplateOperation: %{public}s, elapsedSeconds: %f}", v212, 0x34u);
      sub_1000050A4(v312, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      v263 = v315;
      v264 = v327;
      v265 = v304;
    }

    else
    {

      v330(v206, v207);
      sub_1003B52F4(v205);
      v264 = v327;
      v257 = v320;
      v265 = v304;
      v261 = v306;
      v263 = v315;
    }

    LODWORD(v314) = v263 != 0;
    [v264 reset];
    v326 = v334[7];
    v315 = v334[8];
    v316 = sub_10000F61C(v334 + 4, v326);
    v340[3] = v261;
    v340[4] = &off_1008E60A0;
    v266 = sub_1000103CC(v340);
    sub_10042A1BC(v204, v266);
    sub_10042A1BC(v204, v309);
    v267 = v257;
    v268 = v338;
    v269 = v321;
    (v321)(v267, v337, v338);
    v270 = v329;
    (*(v329 + 16))(v313, v319, v127);
    v269(v307, v335, v268);
    sub_10012F78C(v318, v308);
    v271 = (*(v265 + 80) + 24) & ~*(v265 + 80);
    v272 = v271 + v303;
    v273 = v336;
    v274 = *(v336 + 80);
    v275 = (v274 + v271 + v303 + 1) & ~v274;
    v304 = (v299 + 7 + v275) & 0xFFFFFFFFFFFFFFF8;
    v276 = (*(v270 + 80) + v304 + 8) & ~*(v270 + 80);
    v306 = (v302 + v274 + v276) & ~v274;
    v321 = ((v299 + 7 + v306) & 0xFFFFFFFFFFFFFFF8);
    v317 = ((v321 + 15) & 0xFFFFFFFFFFFFFFF8);
    v312 = ((v317 + 15) & 0xFFFFFFFFFFFFFFF8);
    v303 = (v312 + 15) & 0xFFFFFFFFFFFFFFF8;
    v305 = ((*(v300 + 80) + v303 + 16) & ~*(v300 + 80));
    v311 = &v305[v301];
    v302 = &v305[v301] & 0xFFFFFFFFFFFFFFF8;
    v277 = swift_allocObject();
    v278 = v332;
    *(v277 + 16) = v332;
    sub_10042A158(v309, v277 + v271);
    *(v277 + v272) = v314;
    v279 = *(v273 + 32);
    v280 = v277 + v275;
    v281 = v338;
    v279(v280, v320, v338);
    *(v277 + v304) = v264;
    v282 = v277 + v276;
    v283 = v328;
    v143(v282, v313, v328);
    v279(v277 + v306, v307, v281);
    v284 = v325;
    *&v321[v277] = v325;
    *&v317[v277] = v322;
    *&v312[v277] = v334;
    v285 = (v277 + v303);
    v286 = v324;
    *v285 = v323;
    v285[1] = v286;
    sub_10012F7FC(v308, &v305[v277]);
    v311[v277] = v296;
    *(v277 + v302 + 8) = v333;
    v287 = v315;
    v288 = *(v315 + 1);

    v289 = v278;
    v290 = v327;
    v291 = v284;

    v288(v340, sub_1005AF878, v277, v326, v287, a4);

    sub_1003B52F4(v310);
    (*(v329 + 8))(v319, v283);
    sub_1000050A4(v318, &unk_100938850, qword_100795AE0);
    v292 = v338;
    v293 = v330;
    v330(v335, v338);
    v293(v337, v292);
    sub_10000607C(v340);
  }

  else
  {
    v150 = v340[0];
    v151 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v152 = v332;
    v153 = v338;
    (*(v336 + 16))(v140, v337, v338);
    v154 = v152;
    swift_errorRetain();
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      v336 = 0;
      v158 = v157;
      v159 = swift_slowAlloc();
      v332 = swift_slowAlloc();
      v341 = v332;
      *v158 = 136446978;
      v340[0] = v333;
      swift_getMetatypeMetadata();
      v160 = String.init<A>(describing:)();
      v162 = v161;
      v163 = sub_10000668C(v160, v161, &v341);
      v162, v164, v165, v166, v167, v168, v169, v170;
      *(v158 + 4) = v163;
      *(v158 + 12) = 2114;
      *(v158 + 14) = v154;
      *v159 = v154;
      *(v158 + 22) = 2082;
      swift_getErrorValue();
      v171 = v154;
      v172 = Error.rem_errorDescription.getter();
      v174 = v173;
      v175 = sub_10000668C(v172, v173, &v341);
      v174, v176, v177, v178, v179, v180, v181, v182;
      *(v158 + 24) = v175;
      *(v158 + 32) = 2048;
      v183 = v320;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v185 = v184;
      v186 = v140;
      v187 = v330;
      v330(v183, v338);
      v187(v186, v338);
      *(v158 + 34) = v185;
      _os_log_impl(&_mh_execute_header, v155, v156, "%{public}s: Failed to fetch template {templateObjectID: %{public}@, error: %{public}s, elapsedSeconds: %f}", v158, 0x2Au);
      sub_1000050A4(v159, &unk_100938E70, &unk_100797230);
      v153 = v338;

      swift_arrayDestroy();

      v119 = v336;
    }

    else
    {

      v188 = v140;
      v187 = v330;
      v330(v188, v153);
    }

    v189 = v328;
    v190 = v329;
    v191 = v324;
    v192 = v334;
    swift_errorRetain();
    v193 = v154;
    v194 = v337;
    sub_1005ACD3C(v151, 1, v322, v193, v325, v192, v337, v323, v191, v333);

    v187(v335, v153);
    v187(v194, v153);
    if (!v119)
    {
      (*(v190 + 8))(v319, v189);
      sub_1000050A4(v318, &unk_100938850, qword_100795AE0);
    }
  }
}

uint64_t sub_1005ACC74()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094D970);
  v1 = sub_100006654(v0, qword_10094D970);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005ACD3C(uint64_t a1, int a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void), uint64_t a9, uint64_t a10)
{
  v75 = a2;
  v73 = a5;
  v74 = a10;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v68 - v23;
  swift_beginAccess();
  if (*(a3 + 16))
  {
    if (qword_100936610 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_10094D970);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v77 = v29;
      *v28 = 136446210;
      v76[1] = v74;
      swift_getMetatypeMetadata();
      v30 = String.init<A>(describing:)();
      v32 = v31;
      v33 = sub_10000668C(v30, v31, &v77);
      v32, v34, v35, v36, v37, v38, v39, v40;
      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s: Attempted to call completion more than once", v28, 0xCu);
      sub_10000607C(v29);
    }
  }

  else
  {
    v71 = a1;
    v72 = a8;
    v70 = a9;
    swift_beginAccess();
    *(a3 + 16) = 1;
    if (qword_100936610 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_10094D970);
    (*(v17 + 16))(v24, a7, v16);
    v42 = a6;
    swift_retain_n();
    v43 = a4;
    v44 = v73;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v68 = v45;
      v48 = v47;
      v73 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v76[0] = v69;
      *v48 = 136447234;
      v77 = v74;
      swift_getMetatypeMetadata();
      v49 = String.init<A>(describing:)();
      LODWORD(v74) = v46;
      v51 = v50;
      v52 = sub_10000668C(v49, v50, v76);
      v51, v53, v54, v55, v56, v57, v58, v59;
      *(v48 + 4) = v52;
      *(v48 + 12) = 2114;
      *(v48 + 14) = v43;
      *(v48 + 22) = 2114;
      *(v48 + 24) = v44;
      v60 = v73;
      *v73 = v43;
      v60[1] = v44;
      *(v48 + 32) = 2048;
      v61 = *(v42 + 80);
      v62 = v43;
      v63 = v44;

      *(v48 + 34) = v61;

      *(v48 + 42) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v65 = v64;
      v66 = *(v17 + 8);
      v66(v20, v16);
      v66(v24, v16);
      *(v48 + 44) = v65;
      v67 = v68;
      _os_log_impl(&_mh_execute_header, v68, v74, "%{public}s: Finished execution {templateObjectID: %{public}@, templatePublicLinkConfiguration: %{public}@, remindersCountLimit: %ld, elapsedSeconds: %f}", v48, 0x34u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v69);
    }

    else
    {

      (*(v17 + 8))(v24, v16);
    }

    v72(v71, v75 & 1);
  }
}

void sub_1005AD244(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, unint64_t a6, void *a7, unint64_t a8, unint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, unsigned __int8 a16, uint64_t a17)
{
  v79 = a8;
  v86 = a7;
  v77 = a6;
  v85 = a5;
  v95 = a1;
  v96 = a3;
  v82 = a2;
  v84 = a11;
  v91 = a16;
  v89 = a12;
  v90 = a17;
  v87 = a13;
  v88 = a14;
  v78 = a15;
  v83 = a10;
  v76 = a9;
  v18 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v80 = *(v18 - 8);
  v81 = *(v80 + 64);
  __chkstk_darwin(v18 - 8, v19);
  v94 = &v70 - v20;
  v21 = type metadata accessor for UUID();
  v92 = *(v21 - 8);
  v93 = v21;
  v22 = *(v92 + 64);
  __chkstk_darwin(v21, v23);
  v75 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24, v27);
  v74 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v31 = &v70 - v30;
  v73 = &v70 - v30;
  v32 = type metadata accessor for RDPublicTemplate(0);
  v70 = *(v32 - 8);
  v33 = *(v70 + 64);
  __chkstk_darwin(v32 - 8, v34);
  v72 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10042A1BC(a4, v72);
  v35 = *(v25 + 16);
  v36 = v31;
  v37 = v24;
  v71 = v24;
  v35(v36, v77, v24);
  v38 = v92;
  (*(v92 + 16))(&v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v79, v93);
  v35(&v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v76, v37);
  sub_10012F78C(v78, v94);
  v39 = (*(v70 + 80) + 40) & ~*(v70 + 80);
  v40 = v39 + v33;
  v41 = *(v25 + 80);
  v42 = (v41 + v40 + 1) & ~v41;
  v43 = v26 + 7;
  v44 = (v26 + 7 + v42) & 0xFFFFFFFFFFFFFFF8;
  v45 = (*(v38 + 80) + v44 + 8) & ~*(v38 + 80);
  v46 = (v22 + v41 + v45) & ~v41;
  v79 = (v43 + v46) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
  v80 = (*(v80 + 80) + v47 + 16) & ~*(v80 + 80);
  v48 = (v81 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v95;
  v82 &= 1u;
  *(v49 + 24) = v82;
  *(v49 + 32) = v96;
  sub_10042A158(v72, v49 + v39);
  *(v49 + v40) = v85;
  v50 = *(v25 + 32);
  v51 = v49 + v42;
  v52 = v84;
  v53 = v71;
  v50(v51, v73, v71);
  v54 = v86;
  *(v49 + v44) = v86;
  v55 = v54;
  v56 = v49 + v45;
  v57 = v83;
  (*(v92 + 32))(v56, v75, v93);
  v50(v49 + v46, v74, v53);
  v58 = v89;
  *(v49 + v79) = v57;
  *(v49 + v78) = v52;
  *(v49 + v77) = v58;
  v59 = (v49 + v47);
  v60 = v88;
  *v59 = v87;
  v59[1] = v60;
  sub_10012F7FC(v94, v49 + v80);
  *(v49 + v48) = v90;
  if (v91)
  {
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1005AFAE0;
    *(v61 + 24) = v49;
    v101 = sub_1000529DC;
    v102 = v61;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = sub_10000F160;
    v100 = &unk_1008F9090;
    v62 = _Block_copy(&aBlock);
    sub_100138D40(v95, v82);
    v63 = v96;
    v64 = v55;
    v65 = v57;

    [v64 performBlockAndWait:v62];

    _Block_release(v62);
    LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

    if ((v62 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v101 = sub_1005AFAE0;
  v102 = v49;
  aBlock = _NSConcreteStackBlock;
  v98 = 1107296256;
  v99 = sub_100019200;
  v100 = &unk_1008F9040;
  v66 = _Block_copy(&aBlock);
  sub_100138D40(v95, v82);
  v67 = v96;
  v68 = v55;
  v69 = v57;

  [v68 performBlock:v66];

  _Block_release(v66);
}

id sub_1005AD998(void (*a1)(void, void), char a2, void *a3, void *a4, int a5, uint64_t a6, void *a7, NSObject *a8, NSObject *a9, NSObject *a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, void), uint64_t a14, uint64_t a15, void *a16)
{
  v446 = a8;
  v464 = a7;
  v466 = a6;
  v463 = a4;
  v461 = a1;
  v19 = a16;
  v457 = a14;
  v460 = a13;
  v459 = a12;
  v458 = a11;
  v462 = a10;
  v20 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v20 - 8, v21);
  v448 = &v437[-v22];
  v23 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v23 - 8, v24);
  v445 = &v437[-v25];
  v26 = type metadata accessor for Date();
  v465 = *(v26 - 8);
  __chkstk_darwin(v26, v27);
  v451 = &v437[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29, v30);
  v455 = &v437[-v31];
  __chkstk_darwin(v32, v33);
  v35 = &v437[-v34];
  __chkstk_darwin(v36, v37);
  v39 = &v437[-v38];
  __chkstk_darwin(v40, v41);
  v449 = &v437[-v42];
  __chkstk_darwin(v43, v44);
  v452 = &v437[-v45];
  __chkstk_darwin(v46, v47);
  v456 = &v437[-v48];
  __chkstk_darwin(v49, v50);
  v52 = &v437[-v51];
  v454 = type metadata accessor for RDPublicTemplate(0);
  __chkstk_darwin(v454, v53);
  __chkstk_darwin(v54, v55);
  v57 = &v437[-v56];
  __chkstk_darwin(v58, v59);
  __chkstk_darwin(v60, v61);
  v65 = &v437[-v64];
  if (a2)
  {
    if (qword_100936610 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    v67 = sub_100006654(v66, qword_10094D970);
    sub_10042A1BC(v463, v57);
    isa = v465[2].isa;
    v449 = v465 + 2;
    v448 = isa;
    (isa)(v39, v466, v26);
    v69 = a3;
    v70 = v461;
    sub_100138D40(v461, 1);
    v452 = v67;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    sub_100138D4C(v70, 1);
    v73 = os_log_type_enabled(v71, v72);
    v453 = v26;
    v463 = v69;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v450 = a5;
      v76 = v75;
      v445 = v75;
      v447 = swift_slowAlloc();
      v467 = a16;
      v468 = v447;
      *v74 = 136447490;
      swift_getMetatypeMetadata();
      v77 = String.init<A>(describing:)();
      LODWORD(v446) = v72;
      v79 = v78;
      v80 = v35;
      v81 = sub_10000668C(v77, v78, &v468);
      v79, v82, v83, v84, v85, v86, v87, v88;
      *(v74 + 4) = v81;
      *(v74 + 12) = 2114;
      *(v74 + 14) = v69;
      *v76 = v69;
      *(v74 + 22) = 2082;
      v89 = *(v454 + 32);
      v90 = v69;
      v91 = sub_10013FBFC(&v57[v89]);
      v92 = [(objc_class *)v91 recordName];

      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      v35 = v80;
      v19 = a16;
      v70 = v461;
      sub_1003B52F4(v57);
      v96 = sub_10000668C(v93, v95, &v468);
      v95, v97, v98, v99, v100, v101, v102, v103;
      *(v74 + 24) = v96;
      *(v74 + 32) = 2082;
      v104 = Bool.yesno.getter();
      v106 = v105;
      v107 = sub_10000668C(v104, v105, &v468);
      v106, v108, v109, v110, v111, v112, v113, v114;
      *(v74 + 34) = v107;
      *(v74 + 42) = 2082;
      swift_getErrorValue();
      v115 = Error.rem_errorDescription.getter();
      v117 = v116;
      v118 = sub_10000668C(v115, v116, &v468);
      v117, v119, v120, v121, v122, v123, v124, v125;
      *(v74 + 44) = v118;
      *(v74 + 52) = 2048;
      v126 = v456;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v128 = v127;
      v129 = v465[1].isa;
      v129(v126, v453);
      v455 = v129;
      v129(v39, v453);
      v69 = v463;
      *(v74 + 54) = v128;
      _os_log_impl(&_mh_execute_header, v71, v446, "%{public}s: Failed to upload content of template's public link {templateObjectID: %{public}@, recordName: %{public}s, hasPublicLinkPriorToTemplateOperation: %{public}s, error: %{public}s, elapsedSeconds: %f}", v74, 0x3Eu);
      sub_1000050A4(v445, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      v26 = v453;
    }

    else
    {

      v455 = v465[1].isa;
      (v455)(v39, v26);
      sub_1003B52F4(v57);
    }

    v247 = sub_10034AE0C(v69, v464, &off_1008E4000, 0);
    sub_100034610(&unk_1008E4020);
    KeyPath = swift_getKeyPath();
    sub_10013206C(KeyPath, a15);

    [v247 updateChangeCount];

    v467 = 0;
    v249 = [v464 save:&v467];
    v250 = v467;
    if (v249)
    {
      (v448)(v35, v466, v26);
      v251 = v463;
      v252 = v250;
      v253 = Logger.logObject.getter();
      v254 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v253, v254))
      {
        v255 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        v454 = swift_slowAlloc();
        v467 = v19;
        v468 = v454;
        *v255 = 136446978;
        swift_getMetatypeMetadata();
        v257 = String.init<A>(describing:)();
        v259 = v258;
        v260 = v19;
        v261 = sub_10000668C(v257, v258, &v468);
        v259, v262, v263, v264, v265, v266, v267, v268;
        *(v255 + 4) = v261;
        v19 = v260;
        *(v255 + 12) = 2114;
        *(v255 + 14) = v251;
        *v256 = v251;
        *(v255 + 22) = 2082;
        v269 = v251;
        v270 = Bool.yesno.getter();
        v272 = v271;
        v273 = sub_10000668C(v270, v271, &v468);
        v272, v274, v275, v276, v277, v278, v279, v280;
        *(v255 + 24) = v273;
        *(v255 + 32) = 2048;
        v281 = v456;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v283 = v282;
        v284 = v281;
        v285 = v453;
        v286 = v455;
        (v455)(v284, v453);
        v286(v35, v285);
        *(v255 + 34) = v283;
        _os_log_impl(&_mh_execute_header, v253, v254, "%{public}s: Reverted template's mostRecentPublicLinkUpdateRequestDate {templateObjectID: %{public}@, hasPublicLinkPriorToTemplateOperation: %{public}s, elapsedSeconds: %f}", v255, 0x2Au);
        sub_1000050A4(v256, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      else
      {

        (v455)(v35, v26);
      }

      v70 = v461;
      v378 = v463;
    }

    else
    {
      v376 = v19;
      v377 = v467;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v378 = v463;
      v379 = v451;
      (v448)(v451, v466, v26);
      v380 = v378;
      swift_errorRetain();
      v381 = Logger.logObject.getter();
      v382 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v381, v382))
      {
        v383 = swift_slowAlloc();
        v384 = swift_slowAlloc();
        v449 = v384;
        v454 = swift_slowAlloc();
        v467 = v376;
        v468 = v454;
        *v383 = 136447234;
        swift_getMetatypeMetadata();
        v385 = String.init<A>(describing:)();
        v452 = v381;
        v387 = v386;
        v388 = sub_10000668C(v385, v386, &v468);
        LODWORD(v448) = v382;
        v389 = v388;
        v387, v390, v391, v392, v393, v394, v395, v396;
        *(v383 + 4) = v389;
        *(v383 + 12) = 2114;
        *(v383 + 14) = v380;
        v384->isa = v380;
        *(v383 + 22) = 2082;
        v397 = v380;
        v398 = Bool.yesno.getter();
        v400 = v399;
        v401 = sub_10000668C(v398, v399, &v468);
        v400, v402, v403, v404, v405, v406, v407, v408;
        *(v383 + 24) = v401;
        *(v383 + 32) = 2082;
        swift_getErrorValue();
        v409 = Error.rem_errorDescription.getter();
        v411 = v410;
        v412 = sub_10000668C(v409, v410, &v468);
        v411, v413, v414, v415, v416, v417, v418, v419;
        *(v383 + 34) = v412;
        v19 = v376;
        *(v383 + 42) = 2048;
        v420 = v456;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v422 = v421;
        v423 = v420;
        v424 = v453;
        v425 = v455;
        (v455)(v423, v453);
        v426 = v424;
        v70 = v461;
        v425(v379, v426);
        *(v383 + 44) = v422;
        v427 = v452;
        _os_log_impl(&_mh_execute_header, v452, v448, "%{public}s: Failed to revert template's mostRecentPublicLinkUpdateRequestDate {templateObjectID: %{public}@, hasPublicLinkPriorToTemplateOperation: %{public}s, error: %{public}s, elapsedSeconds: %f}", v383, 0x34u);
        sub_1000050A4(v449, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v378 = v463;
      }

      else
      {

        (v455)(v379, v26);
        v19 = v376;
      }
    }

    sub_1005ACD3C(v70, 1, v458, v378, v462, v459, v466, v460, v457, v19);
  }

  else
  {
    v442 = v63;
    v443 = v62;
    if (qword_100936610 != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    v131 = sub_100006654(v130, qword_10094D970);
    sub_10042A1BC(v463, v65);
    v132 = v465;
    v447 = v465[2].isa;
    v451 = v465 + 2;
    (v447)(v52, v466, v26);
    v133 = a3;
    v444 = v131;
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v439 = v137;
      v441 = swift_slowAlloc();
      v467 = a16;
      v468 = v441;
      *v136 = 136447234;
      swift_getMetatypeMetadata();
      v138 = String.init<A>(describing:)();
      v440 = v134;
      v140 = v139;
      v141 = sub_10000668C(v138, v139, &v468);
      v438 = v135;
      v142 = v26;
      v143 = v133;
      v144 = v141;
      v140, v145, v146, v147, v148, v149, v150, v151;
      *(v136 + 4) = v144;
      *(v136 + 12) = 2114;
      *(v136 + 14) = v143;
      *v137 = v143;
      *(v136 + 22) = 2082;
      v152 = *(v454 + 32);
      v153 = v143;
      v154 = sub_10013FBFC(&v65[v152]);
      v155 = [(objc_class *)v154 recordName];

      v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v157 = a5;
      v159 = v158;

      v133 = v143;
      v26 = v142;
      sub_1003B52F4(v65);
      v160 = sub_10000668C(v156, v159, &v468);
      v161 = v159;
      a5 = v157;
      v19 = a16;
      v132 = v465;
      v161, v162, v163, v164, v165, v166, v167, v168;
      *(v136 + 24) = v160;
      *(v136 + 32) = 2082;
      v169 = Bool.yesno.getter();
      v171 = v170;
      v172 = sub_10000668C(v169, v170, &v468);
      v171, v173, v174, v175, v176, v177, v178, v179;
      *(v136 + 34) = v172;
      *(v136 + 42) = 2048;
      v180 = v456;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v182 = v181;
      v183 = v132[1].isa;
      v183(v180, v26);
      v461 = v183;
      v183(v52, v26);
      *(v136 + 44) = v182;
      v184 = v440;
      _os_log_impl(&_mh_execute_header, v440, v438, "%{public}s: Uploaded content of template's public link {templateObjectID: %{public}@, recordName: %{public}s, hasPublicLinkPriorToTemplateOperation: %{public}s, elapsedSeconds: %f}", v136, 0x34u);
      sub_1000050A4(v439, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      v461 = v132[1].isa;
      v461(v52, v26);
      sub_1003B52F4(v65);
    }

    v185 = sub_10034AE0C(v133, v464, 0, 0);
    v450 = a5;
    v287 = v185;
    v441 = v133;
    v440 = a9;
    v288 = type metadata accessor for UUID();
    v289 = *(v288 - 8);
    v290 = v445;
    (*(v289 + 16))(v445, v446, v288);
    (*(v289 + 56))(v290, 0, 1, v288);
    v291 = swift_getKeyPath();
    sub_10013411C(v291, v290);

    sub_1000050A4(v290, &unk_100939D90, "8\n\r");
    v292 = v462;
    v446 = v462;
    REMCDTemplate.publicLinkConfiguration.setter(v292);
    v293 = [v287 createResolutionTokenMapIfNecessary];
    v294 = String._bridgeToObjectiveC()();
    [v293 updateForKey:v294];

    v295 = v452;
    static Date.now.getter();
    v296 = v448;
    v297 = v447;
    (v447)(v448, v295, v26);
    v298 = v132[7].isa;
    v298(v296, 0, 1, v26);
    v299 = swift_getKeyPath();
    sub_10013206C(v299, v296);

    sub_1000050A4(v296, &unk_100938850, qword_100795AE0);
    if ((a5 & 1) == 0)
    {
      (v297)(v296, v452, v26);
      v298(v296, 0, 1, v26);
      v300 = swift_getKeyPath();
      sub_10013206C(v300, v296);

      sub_1000050A4(v296, &unk_100938850, qword_100795AE0);
    }

    (v297)(v296, v440, v26);
    v298(v296, 0, 1, v26);
    v301 = swift_getKeyPath();
    sub_10013206C(v301, v296);

    sub_1000050A4(v296, &unk_100938850, qword_100795AE0);
    [v287 updateChangeCount];
    v302 = REMCDTemplate.publicLink.getter();
    v303 = v449;
    if (v302)
    {
      v304 = v302;
      v305 = v465;
      v461(v452, v26);

      v467 = 0;
      v306 = [v464 save:&v467];
      v307 = v467;
      v308 = v441;
      if (v306)
      {
        v462 = v305 + 1;
        v309 = v442;
        sub_10042A1BC(v463, v442);
        (v447)(v303, v466, v26);
        v310 = v308;
        v311 = v307;
        v312 = v304;
        v313 = Logger.logObject.getter();
        v314 = static os_log_type_t.default.getter();

        v465 = v310;
        LODWORD(v455) = v314;
        if (os_log_type_enabled(v313, v314))
        {
          v315 = swift_slowAlloc();
          v316 = swift_slowAlloc();
          v448 = v316;
          v452 = swift_slowAlloc();
          v467 = v19;
          v468 = v452;
          *v315 = 136447490;
          swift_getMetatypeMetadata();
          v317 = String.init<A>(describing:)();
          v451 = v313;
          v319 = v318;
          v320 = v312;
          v321 = sub_10000668C(v317, v318, &v468);
          v319, v322, v323, v324, v325, v326, v327, v328;
          *(v315 + 4) = v321;
          *(v315 + 12) = 2114;
          v329 = v465;
          *(v315 + 14) = v465;
          *v316 = v329;
          *(v315 + 22) = 2082;
          v330 = *(v454 + 32);
          v331 = v329;
          v332 = sub_10013FBFC(v309 + v330);
          v333 = [(objc_class *)v332 recordName];

          v334 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v463 = v19;
          v336 = v335;

          sub_1003B52F4(v309);
          v337 = sub_10000668C(v334, v336, &v468);
          v336, v338, v339, v340, v341, v342, v343, v344;
          *(v315 + 24) = v337;
          *(v315 + 32) = 2082;
          v345 = Bool.yesno.getter();
          v347 = v346;
          v348 = sub_10000668C(v345, v346, &v468);
          v347, v349, v350, v351, v352, v353, v354, v355;
          *(v315 + 34) = v348;
          *(v315 + 42) = 2082;
          v356 = v320;
          v357 = [v320 description];
          v358 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v360 = v359;

          v19 = v463;
          v361 = sub_10000668C(v358, v360, &v468);
          v360, v362, v363, v364, v365, v366, v367, v368;
          *(v315 + 44) = v361;
          *(v315 + 52) = 2048;
          v369 = v456;
          Date.init()();
          v370 = v449;
          Date.timeIntervalSince(_:)();
          v372 = v371;
          v373 = v369;
          v374 = v461;
          v461(v373, v26);
          v374(v370, v26);
          *(v315 + 54) = v372;
          v375 = v451;
          _os_log_impl(&_mh_execute_header, v451, v455, "%{public}s: Saved template's public link {templateObjectID: %{public}@, recordName: %{public}s, hasPublicLinkPriorToTemplateOperation: %{public}s, publicLink: %{public}s, elapsedSeconds: %f}", v315, 0x3Eu);
          sub_1000050A4(v448, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          v312 = v356;
        }

        else
        {

          v461(v303, v26);
          sub_1003B52F4(v309);
        }

        v435 = v465;
        v436 = v312;
        sub_1005ACD3C(v304, 0, v458, v435, v446, v459, v466, v460, v457, v19);

        return [v464 reset];
      }

      v229 = v19;
      v433 = v467;
      v431 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v432 = v455;
    }

    else
    {
      v229 = v19;
      type metadata accessor for REMCDTemplate();
      v428 = objc_opt_self();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v430 = String._bridgeToObjectiveC()();
      v431 = [v428 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v430];

      swift_willThrow();
      v461(v452, v26);
      v432 = v455;
      v308 = v441;
    }

    v186 = v443;
    sub_10042A1BC(v463, v443);
    (v447)(v432, v466, v26);
    v187 = v308;
    swift_errorRetain();
    v188 = Logger.logObject.getter();
    v189 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v449 = v191;
      v452 = swift_slowAlloc();
      v467 = v229;
      v468 = v452;
      *v190 = 136447490;
      swift_getMetatypeMetadata();
      v192 = String.init<A>(describing:)();
      LODWORD(v451) = v189;
      v194 = v193;
      v195 = sub_10000668C(v192, v193, &v468);
      v194, v196, v197, v198, v199, v200, v201, v202;
      *(v190 + 4) = v195;
      *(v190 + 12) = 2114;
      *(v190 + 14) = v187;
      v191->isa = v187;
      v463 = v229;
      *(v190 + 22) = 2082;
      v203 = *(v454 + 32);
      v204 = v187;
      v205 = sub_10013FBFC(v186 + v203);
      v206 = [(objc_class *)v205 recordName];

      v207 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v209 = v208;

      sub_1003B52F4(v186);
      v210 = sub_10000668C(v207, v209, &v468);
      v209, v211, v212, v213, v214, v215, v216, v217;
      *(v190 + 24) = v210;
      *(v190 + 32) = 2082;
      v218 = Bool.yesno.getter();
      v220 = v219;
      v221 = sub_10000668C(v218, v219, &v468);
      v220, v222, v223, v224, v225, v226, v227, v228;
      *(v190 + 34) = v221;
      *(v190 + 42) = 2082;
      v229 = v463;
      swift_getErrorValue();
      v230 = Error.rem_errorDescription.getter();
      v232 = v231;
      v233 = sub_10000668C(v230, v231, &v468);
      v232, v234, v235, v236, v237, v238, v239, v240;
      *(v190 + 44) = v233;
      *(v190 + 52) = 2048;
      v241 = v456;
      Date.init()();
      v242 = v455;
      Date.timeIntervalSince(_:)();
      v244 = v243;
      v245 = v241;
      v246 = v461;
      v461(v245, v26);
      v246(v242, v26);
      *(v190 + 54) = v244;
      _os_log_impl(&_mh_execute_header, v188, v451, "%{public}s: Failed to save template's public link {templateObjectID: %{public}@, recordName: %{public}s, hasPublicLinkPriorToTemplateOperation: %{public}s, error: %{public}s, elapsedSeconds: %f}", v190, 0x3Eu);
      sub_1000050A4(v449, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      v461(v432, v26);
      sub_1003B52F4(v186);
    }

    swift_errorRetain();
    sub_1005ACD3C(v431, 1, v458, v187, v462, v459, v466, v460, v457, v229);
  }

  return [v464 reset];
}