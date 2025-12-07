unint64_t sub_1000AB898()
{
  result = qword_10038F870[0];
  if (!qword_10038F870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10038F870);
  }

  return result;
}

unint64_t sub_1000AB8EC()
{
  result = qword_100383FC0;
  if (!qword_100383FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100383FC0);
  }

  return result;
}

uint64_t sub_1000AB940@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v26 = sub_100095820(&qword_100383FE0, &qword_1002D6BC8);
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v24 - v8;
  v10 = type metadata accessor for CloudDeviceData(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v27 = a1;
  sub_1000A0E50(a1, v13);
  sub_1000AB898();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10009A9E8(v27);
  }

  v14 = v6;
  v24 = v12;
  v29 = 0;
  sub_1000ABEE8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = v24;
  *v24 = v28;
  v29 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v15 + 16) = v28;
  type metadata accessor for Date();
  LOBYTE(v28) = 2;
  sub_1000B74A0(&unk_100383FF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000ABF3C(v14, v15 + v10[6]);
  LOBYTE(v28) = 3;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = (v15 + v10[7]);
  *v17 = v16;
  v17[1] = v18;
  LOBYTE(v28) = 4;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = (v15 + v10[8]);
  *v20 = v19;
  v20[1] = v21;
  sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
  v29 = 5;
  sub_1000ABFAC(&unk_1003853D0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v15 + v10[9]) = v28;
  LOBYTE(v28) = 6;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v7 + 8))(v9, v26);
  *(v15 + v10[10]) = v22;
  sub_1000AC018(v15, v25);
  sub_10009A9E8(v27);
  return sub_1000AC07C(v15);
}

unint64_t sub_1000ABEE8()
{
  result = qword_100383FE8;
  if (!qword_100383FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100383FE8);
  }

  return result;
}

uint64_t sub_1000ABF3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ABFAC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000967DC(&unk_100383FD0, &qword_1002D6BC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000AC018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudDeviceData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AC07C(uint64_t a1)
{
  v2 = type metadata accessor for CloudDeviceData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AC0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v17 = type metadata accessor for CloudDeviceData(0);
  result = sub_1000ABF3C(a5, a9 + v17[6]);
  v19 = (a9 + v17[7]);
  *v19 = a6;
  v19[1] = a7;
  v20 = (a9 + v17[8]);
  *v20 = a8;
  v20[1] = a10;
  *(a9 + v17[9]) = a11;
  *(a9 + v17[10]) = a12;
  return result;
}

uint64_t sub_1000AC230()
{
  v0 = type metadata accessor for Logger();
  sub_100098130(v0, qword_10038F858);
  sub_10009597C(v0, qword_10038F858);
  return Logger.init(transparencyCategory:)(0x76656464756F6C63, 0xEB00000000656369);
}

id sub_1000AC2BC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void sub_1000AC300(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1000AC390(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1000AC3E0(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1000AC470;
}

void sub_1000AC470(void **a1, char a2)
{
  v3 = *a1;
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

uint64_t sub_1000AC4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 0x76654464756F6C43;
  *(v7 + 24) = 0xEB00000000656369;
  swift_unknownObjectWeakInit();
  *(v7 + 64) = xmmword_1002D6B50;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 48) = a3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1000AC5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0x76654464756F6C43;
  *(v4 + 24) = 0xEB00000000656369;
  swift_unknownObjectWeakInit();
  *(v4 + 64) = xmmword_1002D6B50;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1000AC6AC(double a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_1000AC770(double a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_1000AC800()
{
  (*(*v0 + 240))();
  (*(*v0 + 216))();
  return Date.addingTimeInterval(_:)();
}

uint64_t sub_1000AC8A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  sub_1000AB284(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000057C4(v6, &qword_100383FB0, &unk_1002D6690);
    v14 = 1;
  }

  else
  {
    v15 = (*(v8 + 32))(v13, v6, v7);
    (*(*v2 + 240))(v15);
    (*(*v2 + 216))();
    Date.addingTimeInterval(_:)();
    v14 = static Date.< infix(_:_:)();
    v16 = *(v8 + 8);
    v16(v11, v7);
    v16(v13, v7);
  }

  return v14 & 1;
}

uint64_t sub_1000ACB08(uint64_t a1, id a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = (*(*v5 + 344))();
  if (!v12)
  {
    return v12;
  }

  if (qword_10038F850 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10009597C(v13, qword_10038F858);
  v14 = static os_log_type_t.error.getter();
  v15 = v12;
  v16 = Logger.logObject.getter();

  if (os_log_type_enabled(v16, v14))
  {
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v17 = 136315138;
    v37 = a2;
    v18 = [v15 recordName];
    v33 = v14;
    v19 = v15;
    v20 = a1;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = a3;
    v22 = a5;
    v24 = v23;

    v25 = v21;
    a1 = v20;
    v15 = v19;
    v26 = sub_1000999E4(v25, v24, aBlock);
    a5 = v22;
    a3 = v35;

    *(v17 + 4) = v26;
    a2 = v37;
    _os_log_impl(&_mh_execute_header, v16, v33, "updating record %s", v17, 0xCu);
    sub_10009A9E8(v34);
  }

  v40 = 0;
  v38 = (*(*v6 + 160))();
  v27 = swift_allocObject();
  v27[2] = v15;
  v27[3] = v6;
  v27[4] = a1;
  v27[5] = a2;
  v27[6] = a3;
  v27[7] = a4;
  v27[8] = &v40;
  v27[9] = a5;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1000ADE28;
  *(v28 + 24) = v27;
  aBlock[4] = sub_1000A040C;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031F8C0;
  v29 = _Block_copy(aBlock);
  v30 = v15;
  v31 = v29;
  v36 = v30;

  sub_100002D78(a1, a2);
  sub_100002D78(a3, a4);

  [v38 performBlockAndWait:v31];

  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if ((v31 & 1) == 0)
  {
    v12 = v40;

    return v12;
  }

  __break(1u);
  return result;
}

void sub_1000ACEB8(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, _BYTE *a7, void *a8)
{
  v136 = a8;
  v140 = a6;
  v141 = a7;
  v131 = a4;
  v132 = a5;
  v130 = a3;
  v10 = type metadata accessor for Date();
  v137 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v133 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v138 = &v127 - v13;
  v14 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v14 - 8);
  v128 = &v127 - v15;
  v135 = type metadata accessor for String.Encoding();
  v16 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1002D47B0;
  v20 = [a1 recordName];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_10009FD4C();
  *(v19 + 32) = v21;
  *(v19 + 40) = v23;
  v24 = NSPredicate.init(format:_:)();
  [v18 setPredicate:v24];

  v142 = 0;
  v25 = [v18 execute:&v142];
  v26 = v142;
  v139 = v10;
  if (v25)
  {
    v27 = v25;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v26;

    if (v28 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v28 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v30 = *(v28 + 32);
      }

      v31 = v30;

      if (qword_10038F850 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10009597C(v32, qword_10038F858);
      v33 = a1;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v142 = v140;
        *v36 = 136315138;
        v37 = [v33 recordName];
        v38 = v16;
        v39 = v31;
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = a2;
        v42 = v18;
        v44 = v43;

        v45 = v40;
        v31 = v39;
        v16 = v38;
        v46 = sub_1000999E4(v45, v44, &v142);
        v18 = v42;
        a2 = v41;

        *(v36 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v34, v35, "self: updating existing record %s", v36, 0xCu);
        sub_10009A9E8(v140);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v47 = v142;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_10038F850 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_10009597C(v48, qword_10038F858);
  v49 = static os_log_type_t.error.getter();
  v50 = a1;
  v51 = Logger.logObject.getter();
  v129 = v50;

  if (os_log_type_enabled(v51, v49))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v142 = v53;
    *v52 = 136315138;
    v54 = [v129 recordName];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = a2;
    v57 = v18;
    v59 = v58;

    v60 = sub_1000999E4(v55, v59, &v142);
    v18 = v57;
    a2 = v56;

    *(v52 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v51, v49, "creating new record %s", v52, 0xCu);
    sub_10009A9E8(v53);
  }

  v61 = (*(*a2 + 160))();
  v31 = [objc_allocWithZone(CloudDevice) initWithContext:v61];

  if (!v31)
  {
    *v141 = 1;

    return;
  }

  v62 = [v129 recordName];
  if (!v62)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = String._bridgeToObjectiveC()();
  }

  [v31 setRecordID:v62];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v31 setPushToken:isa];

  v64 = Data._bridgeToObjectiveC()().super.isa;
  [v31 setRegistrationData:v64];

  sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
  v65 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v31 setLocal:v65];

  *v141 = 1;
LABEL_23:
  v66 = *(a2 + 48);
  v140 = v31;
  if (!v66)
  {
    goto LABEL_44;
  }

  v67 = [v66 osVersion];
  if (!v67)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = String._bridgeToObjectiveC()();
  }

  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;
  v71 = [v31 osVersion];
  if (v71)
  {
    v72 = v71;
    v132 = a2;
    v73 = v18;
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    if (v74 == v68 && v76 == v70)
    {

      v18 = v73;
      a2 = v132;
      v31 = v140;
      goto LABEL_35;
    }

    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v18 = v73;
    a2 = v132;
    v31 = v140;
    if (v77)
    {

      goto LABEL_35;
    }
  }

  else
  {

    v31 = v140;
  }

  [v31 setOsVersion:v67];

  *v141 = 1;
LABEL_35:
  v78 = [v66 serialNumber];
  if (!v78)
  {
    goto LABEL_44;
  }

  v79 = v78;
  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;
  v83 = [v31 serialNumber];
  if (v83)
  {
    v84 = v83;
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    if (v85 == v80 && v87 == v82)
    {

      v31 = v140;
      goto LABEL_44;
    }

    v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v31 = v140;
    if (v88)
    {

      goto LABEL_44;
    }
  }

  else
  {
  }

  [v31 setSerialNumber:v79];

  *v141 = 1;
LABEL_44:
  v89 = [v31 local];
  sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
  v90.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v91 = v90.super.super.isa;
  if (!v89)
  {

    goto LABEL_48;
  }

  v92 = static NSObject.== infix(_:_:)();

  if ((v92 & 1) == 0)
  {
LABEL_48:
    v93 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    [v31 setLocal:v93];

    *v141 = 1;
  }

  v142 = v136;
  sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
  sub_1000B4E10();
  BidirectionalCollection<>.joined(separator:)();
  v94 = v134;
  static String.Encoding.utf8.getter();
  v95 = String.data(using:allowLossyConversion:)();
  v97 = v96;

  (*(v16 + 8))(v94, v135);
  v98 = [v31 applications];
  v136 = (a2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000);
  if (v98)
  {
    v99 = v98;
    v100 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v101;

    if (v97 >> 60 == 15)
    {
      if (v102 >> 60 != 15)
      {
        sub_1000A4A5C(v95, v97);
        sub_10009A9D4(v95, v97);
        sub_10009A9D4(v100, v102);
        v103 = 0;
LABEL_64:
        v104 = v140;
        [v140 setApplications:v103];

        *v141 = 1;
        v105 = v137;
LABEL_65:
        v111 = a2;
        v112 = v18;
        v113 = v133;
        Date.init()();
        v114 = v138;
        (*(*v111 + 264))(v113);
        v115 = *(v105 + 8);
        v116 = v113;
        v18 = v112;
        a2 = v111;
        v117 = v139;
        v115(v116, v139);
        v118 = Date._bridgeToObjectiveC()().super.isa;
        v115(v114, v117);
        [v104 setTimeToLive:v118];

        *v141 = 1;
LABEL_66:
        v119 = String._bridgeToObjectiveC()();
        [v104 setCkstate:v119];

        goto LABEL_67;
      }

      goto LABEL_54;
    }

    if (v102 >> 60 != 15)
    {
      sub_1000A4A5C(v95, v97);
      sub_1000A4A5C(v100, v102);
      v110 = sub_100095AC0(v95, v97, v100, v102);
      sub_10009A9D4(v100, v102);
      sub_10009A9D4(v100, v102);
      sub_10009A9D4(v95, v97);
      if (v110)
      {
        goto LABEL_55;
      }

LABEL_63:
      sub_100002D78(v95, v97);
      v103 = Data._bridgeToObjectiveC()().super.isa;
      sub_10009A9D4(v95, v97);
      goto LABEL_64;
    }

LABEL_62:
    sub_1000A4A5C(v95, v97);
    sub_10009A9D4(v95, v97);
    sub_10009A9D4(v100, v102);
    goto LABEL_63;
  }

  if (v97 >> 60 != 15)
  {
    v100 = 0;
    v102 = 0xF000000000000000;
    goto LABEL_62;
  }

LABEL_54:
  sub_1000A4A5C(v95, v97);
  sub_10009A9D4(v95, v97);
LABEL_55:
  v104 = v140;
  v105 = v137;
  if (*v141)
  {
    goto LABEL_65;
  }

  v106 = [v140 timeToLive];
  if (v106)
  {
    v107 = v128;
    v108 = v106;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v109 = 0;
  }

  else
  {
    v109 = 1;
    v107 = v128;
  }

  v124 = v139;
  (*(v105 + 56))(v107, v109, 1, v139);
  v125 = v138;
  Date.init()();
  v126 = (*(*a2 + 272))(v107, v125);
  (*(v105 + 8))(v125, v124);
  sub_1000057C4(v107, &qword_100383FB0, &unk_1002D6690);
  v104 = v140;
  if (v126)
  {
    goto LABEL_65;
  }

  if (*v141 == 1)
  {
    goto LABEL_66;
  }

LABEL_67:
  v120 = (*(*a2 + 160))();
  v142 = 0;
  v121 = [v120 save:&v142];

  if (v121)
  {
    v122 = v142;

    sub_10009A9D4(v95, v97);
  }

  else
  {
    v123 = v142;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10009A9D4(v95, v97);
  }
}

uint64_t sub_1000ADE3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000ADE54(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(*v6 + 344))();
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v32 = 0;
  v30 = (*(*v6 + 160))();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &v32;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a1;
  v15[7] = a2;
  v15[8] = v6;
  v15[9] = a5;
  v15[10] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000B3A44;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031F938;
  v17 = _Block_copy(aBlock);
  v18 = v14;
  sub_100002D78(a3, a4);
  sub_100002D78(a1, a2);

  [v30 performBlockAndWait:v17];

  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (qword_10038F850 != -1)
  {
LABEL_10:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10009597C(v20, qword_10038F858);
  v21 = static os_log_type_t.info.getter();
  sub_100002D78(a1, a2);
  v22 = Logger.logObject.getter();
  sub_1000956CC(a1, a2);
  if (os_log_type_enabled(v22, v21))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 67109378;
    swift_beginAccess();
    *(v23 + 4) = v32;
    *(v23 + 8) = 2080;
    v25 = sub_1000DEC98(a1, a2);
    v27 = sub_1000999E4(v25, v26, aBlock);

    *(v23 + 10) = v27;
    _os_log_impl(&_mh_execute_header, v22, v21, "should update record %{BOOL}d %s", v23, 0x12u);
    sub_10009A9E8(v24);
  }

  swift_beginAccess();
  v28 = v32;

  return v28;
}

void sub_1000AE1FC(void *a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v115 = a7;
  v116 = a5;
  v110 = a6;
  v112 = a4;
  v121 = a3;
  v127 = a2;
  v114 = type metadata accessor for Date();
  v11 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v13 - 8);
  v122 = &v98 - v14;
  v15 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1002D47B0;
  v17 = [a1 recordName];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_10009FD4C();
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v21 = NSPredicate.init(format:_:)();
  [v15 setPredicate:v21];

  v128 = 0;
  v22 = [v15 execute:&v128];
  v23 = v128;
  if (v22)
  {
    v24 = v22;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v23;

    v27 = v25;
    v101 = a8;
    v102 = v15;
    if (v25 >> 62)
    {
      goto LABEL_116;
    }

    v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v122;
    while (v28)
    {
      v30 = 0;
      v120 = 0;
      v106 = a9;
      v31 = v27 & 0xC000000000000001;
      v126 = v27 & 0xFFFFFFFFFFFFFF8;
      if (v121)
      {
        v32 = 0;
      }

      else
      {
        v32 = v112 == 0xC000000000000000;
      }

      v33 = !v32;
      v117 = v33;
      v125 = v112 >> 62;
      v34 = __OFSUB__(HIDWORD(v121), v121);
      v104 = v34;
      v103 = HIDWORD(v121) - v121;
      v111 = BYTE6(v112);
      if (v116)
      {
        v35 = 0;
      }

      else
      {
        v35 = v110 == 0xC000000000000000;
      }

      v36 = !v35;
      v107 = v36;
      v118 = v110 >> 62;
      v37 = __OFSUB__(HIDWORD(v116), v116);
      v100 = v37;
      v99 = HIDWORD(v116) - v116;
      v105 = BYTE6(v110);
      v109 = (v11 + 56);
      v108 = (v11 + 8);
      v119 = v27;
      v123 = v27 & 0xC000000000000001;
      v124 = v28;
      while (1)
      {
        if (v31)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v30 >= *(v126 + 16))
          {
            goto LABEL_111;
          }

          v38 = *(v27 + 8 * v30 + 32);
        }

        v39 = v38;
        v40 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        v41 = [v38 registrationData];
        if (!v41)
        {

LABEL_24:
          *v127 = 1;
          goto LABEL_25;
        }

        v42 = v41;
        v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = [v39 pushToken];
        if (!v45)
        {

          sub_1000956CC(v11, v44);
          goto LABEL_24;
        }

        v46 = v45;
        v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        v50 = v44 >> 62;
        if (v44 >> 62 == 3)
        {
          if (v11)
          {
            v51 = 0;
          }

          else
          {
            v51 = v44 == 0xC000000000000000;
          }

          v52 = v125;
          v54 = !v51 || v125 < 3;
          if (((v54 | v117) & 1) == 0)
          {
            goto LABEL_62;
          }

          v55 = 0;
        }

        else
        {
          v52 = v125;
          if (v50)
          {
            if (v50 == 1)
            {
              LODWORD(v55) = HIDWORD(v11) - v11;
              if (__OFSUB__(HIDWORD(v11), v11))
              {
                goto LABEL_114;
              }

              v55 = v55;
            }

            else
            {
              v57 = *(v11 + 16);
              v56 = *(v11 + 24);
              v58 = __OFSUB__(v56, v57);
              v55 = v56 - v57;
              if (v58)
              {
                goto LABEL_115;
              }
            }
          }

          else
          {
            v55 = BYTE6(v44);
          }
        }

        if (v52 > 1)
        {
          if (v52 != 2)
          {
            if (v55)
            {
              goto LABEL_103;
            }

            goto LABEL_62;
          }

          v61 = *(v121 + 16);
          v60 = *(v121 + 24);
          v58 = __OFSUB__(v60, v61);
          v59 = v60 - v61;
          if (v58)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v59 = v111;
          if (v52)
          {
            v59 = v103;
            if (v104)
            {
              goto LABEL_113;
            }
          }
        }

        if (v55 != v59 || v55 >= 1 && (v62 = v121, v63 = v112, sub_100002D78(v121, v112), v64 = v62, v65 = v120, v66 = sub_1000948E4(v11, v44, v64, v63), v120 = v65, v27 = v119, (v66 & 1) == 0))
        {
LABEL_103:

          sub_1000956CC(v47, v49);
          sub_1000956CC(v11, v44);
          *v127 = 1;
LABEL_107:
          v31 = v123;
          v28 = v124;
          goto LABEL_25;
        }

LABEL_62:
        v67 = v49 >> 62;
        if (v49 >> 62 == 3)
        {
          if (v47)
          {
            v68 = 0;
          }

          else
          {
            v68 = v49 == 0xC000000000000000;
          }

          v69 = v118;
          v71 = !v68 || v118 < 3;
          if (((v71 | v107) & 1) == 0)
          {
            goto LABEL_91;
          }

          v72 = 0;
          if (v118 <= 1)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v69 = v118;
          if (v67 == 2)
          {
            v74 = *(v47 + 16);
            v73 = *(v47 + 24);
            v58 = __OFSUB__(v73, v74);
            v72 = v73 - v74;
            if (v58)
            {
              goto LABEL_121;
            }

            if (v118 <= 1)
            {
LABEL_82:
              v75 = v105;
              if (v69)
              {
                v75 = v99;
                if (v100)
                {
                  goto LABEL_120;
                }
              }

              goto LABEL_88;
            }
          }

          else if (v67 == 1)
          {
            LODWORD(v72) = HIDWORD(v47) - v47;
            if (__OFSUB__(HIDWORD(v47), v47))
            {
              goto LABEL_122;
            }

            v72 = v72;
            if (v118 <= 1)
            {
              goto LABEL_82;
            }
          }

          else
          {
            v72 = BYTE6(v49);
            if (v118 <= 1)
            {
              goto LABEL_82;
            }
          }
        }

        if (v69 == 2)
        {
          v77 = *(v116 + 16);
          v76 = *(v116 + 24);
          v58 = __OFSUB__(v76, v77);
          v75 = v76 - v77;
          if (v58)
          {
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
          }

LABEL_88:
          if (v72 != v75)
          {
            goto LABEL_103;
          }

          if (v72 >= 1)
          {
            v78 = v116;
            v79 = v110;
            sub_100002D78(v116, v110);
            v80 = v78;
            v81 = v120;
            v82 = sub_1000948E4(v47, v49, v80, v79);
            v120 = v81;
            v27 = v119;
            if ((v82 & 1) == 0)
            {
              goto LABEL_103;
            }
          }

          goto LABEL_91;
        }

        if (v72)
        {
          goto LABEL_103;
        }

LABEL_91:
        v83 = [v39 timeToLive];
        if (v83)
        {
          v84 = v83;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v85 = 0;
        }

        else
        {
          v85 = 1;
        }

        v86 = v29;
        v87 = v114;
        (*v109)(v86, v85, 1, v114);
        v88 = v113;
        Date.init()();
        v89 = (*(*v115 + 272))(v122, v88);
        v90 = v87;
        v29 = v122;
        (*v108)(v88, v90);
        sub_1000057C4(v29, &qword_100383FB0, &unk_1002D6690);
        if (v89)
        {
LABEL_95:

          sub_1000956CC(v11, v44);
          sub_1000956CC(v47, v49);
          goto LABEL_96;
        }

        if (!v106)
        {

          sub_1000956CC(v11, v44);
          sub_1000956CC(v47, v49);
          goto LABEL_106;
        }

        v91 = [v39 osVersion];
        if (!v91)
        {
          goto LABEL_95;
        }

        v92 = v91;
        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v95 = v94;

        if (v93 != v101 || v95 != v106)
        {
          v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_1000956CC(v11, v44);
          sub_1000956CC(v47, v49);
          v29 = v122;
          if (v96)
          {
LABEL_106:
            v27 = v119;
            goto LABEL_107;
          }

LABEL_96:
          *v127 = 1;
          goto LABEL_106;
        }

        sub_1000956CC(v11, v44);
        sub_1000956CC(v47, v49);
        v27 = v119;
        v31 = v123;
        v28 = v124;
        v29 = v122;
LABEL_25:
        ++v30;
        if (v40 == v28)
        {
          goto LABEL_117;
        }
      }

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
      v28 = _CocoaArrayWrapper.endIndex.getter();
      v29 = v122;
    }

LABEL_117:
  }

  else
  {
    v97 = v128;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000AEB80(unint64_t a1, void *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v36 = v2 & 0xC000000000000001;
    v35 = v2 & 0xFFFFFFFFFFFFFF8;
    v32 = i;
    v33 = v2;
    while (1)
    {
      if (v36)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v35 + 16))
        {
          goto LABEL_24;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 registrationData];
      if (v8)
      {
        v9 = v8;
        v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v13 = [v6 pushToken];
        if (v13)
        {
          v14 = v13;
          v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          v18 = [v6 ckstate];
          if (!v18)
          {
            goto LABEL_18;
          }

          v34 = v15;
          v19 = v17;
          v20 = v18;
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          if (v21 == 0x646574656C6564 && v23 == 0xE700000000000000)
          {

            v17 = v19;
            v15 = v34;
            goto LABEL_17;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v17 = v19;
          v15 = v34;
          if (v24)
          {
LABEL_17:
            sub_1000956CC(v15, v17);
            sub_1000956CC(v10, v12);
          }

          else
          {
LABEL_18:
            v31 = v17;
            v25 = objc_allocWithZone(KTLoggableData);
            sub_100002D78(v10, v12);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v27 = [v25 initWithClientData:isa];

            sub_1000956CC(v10, v12);
            v28 = Data._bridgeToObjectiveC()().super.isa;
            [v27 setDeviceID:v28];

            v29 = v27;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            sub_1000956CC(v15, v31);
            sub_1000956CC(v10, v12);

            v6 = v29;
          }

          i = v32;
          v2 = v33;
          goto LABEL_5;
        }

        sub_1000956CC(v10, v12);
      }

LABEL_5:

      ++v4;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }
}

void sub_1000AEE98(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_1000B008C(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

id sub_1000AEF84(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v21 = 0;
  v9 = (*(*v4 + 344))();
  if (!v9)
  {
    v17 = 0;
    v19 = 0;
    v12 = 0;
    goto LABEL_5;
  }

  v10 = v9;
  v11 = (*(*v4 + 160))();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = &v21;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000B3A8C;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031F9B0;
  v14 = _Block_copy(aBlock);
  v15 = v10;
  sub_100002D78(a3, a4);
  sub_100002D78(a1, a2);

  [v11 performBlockAndWait:v14];

  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    v17 = v21;
    v18 = v21;
    v19 = sub_1000B3A8C;
LABEL_5:

    sub_1000B3A7C(v19, v12);
    return v17;
  }

  __break(1u);
  return result;
}

id sub_1000AF1BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v21 = 0;
  v9 = (*(*v4 + 344))();
  if (!v9)
  {
    v16 = 0;
    v18 = 0;
    v11 = 0;
LABEL_7:

    sub_1000B3A7C(v18, v11);
    return v16;
  }

  v10 = v9;
  v19 = (*(*v4 + 160))();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = v4;
  v11[8] = &v21;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1000B3CC4;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031FA28;
  v13 = _Block_copy(aBlock);

  v14 = v10;
  sub_100002D78(a3, a4);
  sub_100002D78(a1, a2);

  [v19 performBlockAndWait:v13];

  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    v16 = v21;
    if (v21)
    {
      v17 = v21;
    }

    v18 = sub_1000B3CC4;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1000AF418(void **a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void **a7)
{
  v114 = a6;
  v115 = a7;
  v117 = a4;
  v118 = a5;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v111 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v113 = &v102 - v15;
  __chkstk_darwin(v14);
  v112 = &v102 - v16;
  v17 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v102 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v102 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v102 - v28;
  __chkstk_darwin(v27);
  v116 = &v102 - v30;
  v31 = *a1;
  v32 = [v31 registrationData];
  if (!v32)
  {
    return;
  }

  v33 = v32;
  v109 = v23;
  v110 = v11;
  v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = [v31 pushToken];
  if (!v37)
  {
    goto LABEL_12;
  }

  v107 = v20;
  v108 = v10;
  v38 = v37;
  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (!sub_100095AC0(v34, v36, a2, a3) || !sub_100095AC0(v39, v41, v117, v118))
  {
    sub_1000956CC(v34, v36);
    v48 = v39;
    v49 = v41;
    goto LABEL_13;
  }

  v104 = v39;
  v105 = v41;
  v42 = [v31 ckstate];
  v43 = v108;
  v106 = v36;
  if (v42)
  {
    v44 = v42;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    if (v45 == 0x646574656C6564 && v47 == 0xE700000000000000)
    {

      sub_1000956CC(v104, v105);
      v48 = v34;
      v49 = v106;
LABEL_13:

      sub_1000956CC(v48, v49);
      return;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v36 = v106;
    if (v50)
    {
      sub_1000956CC(v104, v105);
LABEL_12:
      v48 = v34;
      v49 = v36;
      goto LABEL_13;
    }
  }

  v51 = [v31 timeToLive];
  if (v51)
  {
    v52 = v51;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = v110;
    v54 = *(v110 + 56);
    v55 = v29;
    v56 = 0;
  }

  else
  {
    v53 = v110;
    v54 = *(v110 + 56);
    v55 = v29;
    v56 = 1;
  }

  v103 = v54;
  v54(v55, v56, 1, v43);
  v57 = v116;
  sub_1000ABF3C(v29, v116);
  v58 = [v31 ckstate];
  if (!v58)
  {
    goto LABEL_27;
  }

  v59 = v58;
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  if (v60 == 1701736292 && v62 == 0xE400000000000000)
  {

    v57 = v116;
  }

  else
  {
    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v57 = v116;
    if ((v63 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  sub_1000AB284(v57, v26);
  if ((*(v53 + 48))(v26, 1, v43) == 1)
  {
    sub_1000057C4(v26, &qword_100383FB0, &unk_1002D6690);
LABEL_28:
    v69 = 1;
    goto LABEL_29;
  }

  v64 = v112;
  (*(v53 + 32))(v112, v26, v43);
  v65 = v111;
  v66 = Date.init()();
  (*(*v114 + 240))(v66);
  v67 = v113;
  Date.addingTimeInterval(_:)();
  v68 = *(v53 + 8);
  v68(v65, v43);
  LOBYTE(v65) = static Date.< infix(_:_:)();
  v68(v67, v43);
  v68(v64, v43);
  if ((v65 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_27:
  v69 = 0;
LABEL_29:
  v70 = v117;
  v71 = [v31 ckstate];
  if (v71)
  {
    v72 = v71;
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;
  }

  else
  {
    v73 = 0;
    v75 = 0;
  }

  type metadata accessor for KTCloudRecordDeviceStatus(0);
  v76 = v109;
  v103(v109, 1, 1, v43);
  v77 = sub_1000DF6A8(v69, v73, v75, v76);
  v78 = [v31 ckrecord];
  if (v78)
  {
    v79 = v78;
    v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    v83 = *(type metadata accessor for KTCloudRecords() + 456);
    sub_100002D78(v80, v82);
    v84 = v83(v80, v82);
    sub_1000956CC(v80, v82);
    if (v84)
    {
      v85 = [v84 modificationDate];
      if (v85)
      {
        v86 = v107;
        v87 = v85;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v88 = 0;
      }

      else
      {
        v88 = 1;
        v86 = v107;
      }

      v103(v86, v88, 1, v108);
      (*((swift_isaMask & *v77) + 0xA0))(v86);
      sub_1000956CC(v80, v82);
    }

    else
    {
      sub_1000956CC(v80, v82);
    }
  }

  if (qword_10038F850 != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  sub_10009597C(v89, qword_10038F858);
  v90 = v118;
  sub_100002D78(v70, v118);
  v91 = v77;
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  sub_1000956CC(v70, v90);

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v119 = v96;
    *v94 = 136446466;
    v97 = sub_1000DEC98(v70, v90);
    v99 = sub_1000999E4(v97, v98, &v119);

    *(v94 + 4) = v99;
    *(v94 + 12) = 2114;
    *(v94 + 14) = v91;
    *v95 = v91;
    v100 = v91;
    _os_log_impl(&_mh_execute_header, v92, v93, "device status %{public}s: %{public}@", v94, 0x16u);
    sub_1000057C4(v95, &unk_100383290, &unk_1002D5BA0);

    sub_10009A9E8(v96);
  }

  sub_1000956CC(v102, v106);
  sub_1000956CC(v104, v105);

  sub_1000057C4(v57, &qword_100383FB0, &unk_1002D6690);
  v101 = *v115;
  *v115 = v91;
}

void *sub_1000AFD6C()
{
  v8 = _swiftEmptyArrayStorage;
  v1 = (*(*v0 + 160))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B3FA0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031FAA0;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

void *sub_1000AFEFC()
{
  v8 = _swiftEmptyArrayStorage;
  v1 = (*(*v0 + 160))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B3FB8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031FB18;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

void sub_1000B008C(void **a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = [v8 registrationData];
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [v8 pushToken];
  if (!v14)
  {
    goto LABEL_9;
  }

  v55 = v4;
  v56 = a2;
  v54 = v5;
  v15 = v14;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [v8 ckstate];
  if (v19)
  {
    v20 = v13;
    v21 = v18;
    v22 = v19;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v23 == 0x646574656C6564 && v25 == 0xE700000000000000)
    {

      sub_1000956CC(v16, v21);
      v26 = v11;
      v27 = v20;
LABEL_10:

      sub_1000956CC(v26, v27);
      return;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v18 = v21;
    v13 = v20;
    if (v28)
    {
      sub_1000956CC(v16, v18);
LABEL_9:
      v26 = v11;
      v27 = v13;
      goto LABEL_10;
    }
  }

  v29 = objc_allocWithZone(KTLoggableData);
  sub_100002D78(v11, v13);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v31 = [v29 initWithClientData:isa];

  sub_1000956CC(v11, v13);
  v32 = Data._bridgeToObjectiveC()().super.isa;
  [v31 setDeviceID:v32];

  v33 = [objc_allocWithZone(TransparencyCloudDevice) init];
  [v33 setLoggableData:v31];
  v34 = [v8 ckstate];
  [v33 setState:v34];

  v35 = [v8 serialNumber];
  [v33 setSerialNumber:v35];

  v36 = [v8 ckrecord];
  if (v36)
  {
    v52 = v31;
    v53 = v11;
    v37 = v16;
    v38 = v13;
    v39 = v18;
    v40 = v36;
    v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = *(type metadata accessor for KTCloudRecords() + 456);
    sub_100002D78(v41, v43);
    v45 = v44(v41, v43);
    sub_1000956CC(v41, v43);
    if (v45)
    {
      v46 = [v45 modificationDate];
      if (v46)
      {
        v47 = v46;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v48.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v54 + 8))(v7, v55);
      }

      else
      {
        v48.super.isa = 0;
      }

      v16 = v37;
      [v33 setUploadedToCKAt:v48.super.isa];
      sub_1000956CC(v41, v43);

      v18 = v39;
      v13 = v38;
      v11 = v53;
    }

    else
    {
      sub_1000956CC(v41, v43);
      v18 = v39;
      v13 = v38;
      v11 = v53;
      v16 = v37;
    }

    v31 = v52;
  }

  v49 = v33;
  v50 = v56;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000956CC(v16, v18);

  sub_1000956CC(v11, v13);
}

void *sub_1000B0568(uint64_t a1, id a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  result = (*(*v4 + 344))();
  if (result)
  {
    v10 = result;
    if (qword_10038F850 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10009597C(v11, qword_10038F858);
    v12 = static os_log_type_t.error.getter();
    v13 = v10;
    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v12))
    {
      v15 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v15 = 136315138;
      v30 = a2;
      v16 = [v13 recordName];
      v17 = a1;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v12;
      v20 = v19;

      v21 = v18;
      a1 = v17;
      v22 = sub_1000999E4(v21, v20, aBlock);

      *(v15 + 4) = v22;
      a2 = v30;
      _os_log_impl(&_mh_execute_header, v14, v28, "adding device record %s", v15, 0xCu);
      sub_10009A9E8(v29);
    }

    v31 = (*(*v5 + 160))();
    v23 = swift_allocObject();
    v23[2] = v13;
    v23[3] = v5;
    v24 = a1;
    v23[4] = a1;
    v23[5] = a2;
    v23[6] = a3;
    v23[7] = a4;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1000B40D8;
    *(v25 + 24) = v23;
    aBlock[4] = sub_1000A0E98;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009EB40;
    aBlock[3] = &unk_10031FB90;
    v26 = _Block_copy(aBlock);
    v27 = v13;

    sub_100002D78(v24, a2);
    sub_100002D78(a3, a4);

    [v31 performBlockAndWait:v26];

    _Block_release(v26);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1000B08F4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = (*(*v4 + 344))();
  if (v10)
  {
    v11 = v10;
    if (qword_10038F850 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10009597C(v12, qword_10038F858);
    v13 = static os_log_type_t.error.getter();
    sub_100002D78(a1, a2);
    sub_100002D78(a3, a4);
    v14 = Logger.logObject.getter();
    sub_1000956CC(a1, a2);
    sub_1000956CC(a3, a4);
    if (os_log_type_enabled(v14, v13))
    {
      v23 = v13;
      v15 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v15 = 136315394;
      v16 = Data.description.getter();
      v18 = sub_1000999E4(v16, v17, &v24);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v19 = Data.description.getter();
      v21 = sub_1000999E4(v19, v20, &v24);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v14, v23, "deleting record %s %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    v22 = (*(*v5 + 160))();
    __chkstk_darwin(v22);
    NSManagedObjectContext.performAndWait<A>(_:)();
  }
}

uint64_t sub_1000B0BA4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for SHA256();
  *&v45 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SHA256Digest();
  v44 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v43 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v42 - v14;
  v50 = a1;
  v51 = a2;
  v48 = &type metadata for Data;
  v49 = &protocol witness table for Data;
  v46 = a3;
  v47 = a4;
  v16 = sub_1000A0E50(&v46, &type metadata for Data);
  v17 = *v16;
  v18 = v16[1];
  sub_100002D78(a1, a2);
  sub_100002D78(a3, a4);
  sub_1000B4AF8(v17, v18, &v50);
  sub_10009A9E8(&v46);
  v19 = v50;
  v20 = v51;
  sub_1000B74A0(&unk_100384000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100002D78(v19, v20);
  sub_1000B4C30(v19, v20, v10);
  sub_1000956CC(v19, v20);
  dispatch thunk of HashFunction.finalize()();
  sub_1000956CC(v19, v20);
  (*(v45 + 8))(v10, v8);
  v21 = *(v44 + 16);
  v42[0] = v15;
  v21(v43, v15, v11);
  sub_1000B74A0(&qword_1003846A0, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v43 = v11;
  result = dispatch thunk of Sequence.makeIterator()();
  v23 = v46;
  v24 = v47;
  v25 = *(v46 + 16);
  v26 = _swiftEmptyArrayStorage;
  if (v47 == v25)
  {
LABEL_2:

    v46 = v26;
    sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
    sub_1000B4E10();
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
    v30 = *(v42[1] + 40);
    v31._countAndFlagsBits = v27;
    v31._object = v29;
    isa = CKRecordID.init(recordName:zoneID:)(v31, v30).super.isa;
    (*(v44 + 8))(v42[0], v43);
    return isa;
  }

  else
  {
    v45 = xmmword_1002D47B0;
    v33 = v47;
    while ((v24 & 0x8000000000000000) == 0)
    {
      if (v33 >= *(v23 + 16))
      {
        goto LABEL_13;
      }

      v34 = *(v23 + 32 + v33);
      sub_100095820(&unk_100383140, &qword_1002D6BD0);
      v35 = swift_allocObject();
      *(v35 + 16) = v45;
      *(v35 + 56) = &type metadata for UInt8;
      *(v35 + 64) = &protocol witness table for UInt8;
      *(v35 + 32) = v34;
      v36 = String.init(format:_:)();
      v38 = v37;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000B3938(0, *(v26 + 2) + 1, 1, v26);
        v26 = result;
      }

      v40 = *(v26 + 2);
      v39 = *(v26 + 3);
      if (v40 >= v39 >> 1)
      {
        result = sub_1000B3938((v39 > 1), v40 + 1, 1, v26);
        v26 = result;
      }

      ++v33;
      *(v26 + 2) = v40 + 1;
      v41 = &v26[16 * v40];
      *(v41 + 4) = v36;
      *(v41 + 5) = v38;
      if (v25 == v33)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

CKRecordID sub_1000B1058(void *a1)
{
  v3 = [a1 recordID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
    v8 = v1[5];
    v9._countAndFlagsBits = v5;
    v9._object = v7;
    return CKRecordID.init(recordName:zoneID:)(v9, v8);
  }

  else
  {
    result.super.isa = [a1 registrationData];
    if (result.super.isa)
    {
      isa = result.super.isa;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = [a1 pushToken];
      if (v15)
      {
        v16 = v15;
        v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = (*(*v1 + 43))(v17, v19, v12, v14);
        sub_1000956CC(v17, v19);
        sub_1000956CC(v12, v14);
        return v20;
      }

      else
      {
        sub_1000956CC(v12, v14);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000B11CC(void *a1)
{
  v2 = v1;
  if (qword_10038F850 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10009597C(v4, qword_10038F858);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = [v5 recordID];
    v11 = [v10 recordName];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1000999E4(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "merging cloud device: %s", v8, 0xCu);
    sub_10009A9E8(v9);
  }

  v16 = (*(*v2 + 160))();
  __chkstk_darwin(v16);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v18;
}

void sub_1000B1404(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v101 = a2;
  v99 = a3;
  v5 = type metadata accessor for String.Encoding();
  v92 = *(v5 - 8);
  v93 = v5;
  __chkstk_darwin(v5);
  v91 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v7 - 8);
  v9 = &v88 - v8;
  v10 = sub_100095820(&qword_100384448, &unk_1002D6DF0);
  __chkstk_darwin(v10 - 8);
  v96 = &v88 - v11;
  v97 = type metadata accessor for CloudDeviceData(0);
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002D47B0;
  v100 = a1;
  v15 = [a1 recordID];
  v16 = [v15 recordName];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_10009FD4C();
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  v20 = NSPredicate.init(format:_:)();
  [v13 setPredicate:v20];

  v103[0] = 0;
  v98 = v13;
  v21 = [v13 execute:v103];
  v22 = v103[0];
  if (v21)
  {
    v23 = v21;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v22;

    if (v24 >> 62)
    {
      v26 = v3;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_4:
        if ((v24 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          v27 = v100;
        }

        else
        {
          v27 = v100;
          if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v28 = *(v24 + 32);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v26 = v3;
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v29 = v103[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v26 = 0;
  }

  v31 = (*(*v101 + 160))(v30);
  v28 = [objc_allocWithZone(CloudDevice) initWithContext:v31];

  if (!v28)
  {

    v57 = 0;
    goto LABEL_32;
  }

  v27 = v100;
  v32 = [v100 recordID];
  v33 = [v32 recordName];

  if (!v33)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = String._bridgeToObjectiveC()();
  }

  [v28 setRecordID:v33];

LABEL_14:
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v34 = JSONDecoder.init()();
  v35 = [v27 encryptedValues];
  v36 = String._bridgeToObjectiveC()();
  v37 = [v35 objectForKeyedSubscript:v36];
  swift_unknownObjectRelease();

  if (v37)
  {
    v102 = v37;
    sub_100095820(&qword_1003844B0, &qword_1002D6E00);
    if (swift_dynamicCast())
    {
      v90 = v9;
      v38 = v103[0];
      v39 = v103[1];
      sub_1000B74A0(&qword_1003844B8, type metadata accessor for CloudDeviceData, &unk_1002D6BD8);
      v40 = v96;
      v41 = v97;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (!v26)
      {
        v88 = v38;
        (*(v95 + 56))(v40, 0, 1, v41);
        v65 = v40;
        v66 = v94;
        sub_1000B74E8(v65, v94);
        if (*(v66 + 8) >> 60 == 15)
        {
          isa = 0;
        }

        else
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
        }

        v68 = v90;
        [v28 setPushToken:isa];

        v69 = *(v66 + 24) >> 60;
        v89 = v39;
        if (v69 == 15)
        {
          v70 = 0;
        }

        else
        {
          v70 = Data._bridgeToObjectiveC()().super.isa;
        }

        [v28 setRegistrationData:v70];

        sub_1000AB284(v66 + *(v41 + 24), v68);
        v71 = v68;
        v72 = type metadata accessor for Date();
        v73 = *(v72 - 8);
        v74 = 0;
        if ((*(v73 + 48))(v71, 1, v72) != 1)
        {
          v74 = Date._bridgeToObjectiveC()().super.isa;
          (*(v73 + 8))(v71, v72);
        }

        [v28 setTimeToLive:v74];

        v75 = v94;
        if (*(v94 + *(v41 + 36)))
        {
          v103[0] = *(v94 + *(v41 + 36));

          sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
          sub_1000B4E10();
          BidirectionalCollection<>.joined(separator:)();

          v76 = v91;
          static String.Encoding.utf8.getter();
          v77 = String.data(using:allowLossyConversion:)();
          v79 = v78;

          (*(v92 + 8))(v76, v93);
          v80 = v89;
          if (v79 >> 60 == 15)
          {
            v81 = 0;
          }

          else
          {
            v81 = Data._bridgeToObjectiveC()().super.isa;
            sub_10009A9D4(v77, v79);
          }
        }

        else
        {
          v81 = 0;
          v80 = v89;
        }

        [v28 setApplications:v81];

        v82 = v97;
        if (*(v75 + *(v97 + 28) + 8))
        {
          v83 = String._bridgeToObjectiveC()();
        }

        else
        {
          v83 = 0;
        }

        v84 = v88;
        [v28 setOsVersion:v83];

        if (*(v75 + *(v82 + 32) + 8))
        {
          v85 = String._bridgeToObjectiveC()();
        }

        else
        {
          v85 = 0;
        }

        [v28 setSerialNumber:v85];

        v86 = String._bridgeToObjectiveC()();
        [v28 setCkstate:v86];

        if (*(v75 + *(v82 + 40)) == 2)
        {
          [v28 setInjected:0];
          sub_1000956CC(v84, v80);
        }

        else
        {
          v87 = Bool._bridgeToObjectiveC()().super.super.isa;
          [v28 setInjected:v87];
          sub_1000956CC(v84, v80);
        }

        sub_1000AC07C(v75);
        goto LABEL_19;
      }

      sub_1000956CC(v38, v39);
      (*(v95 + 56))(v40, 1, 1, v41);
      sub_1000057C4(v40, &qword_100384448, &unk_1002D6DF0);
      v26 = 0;
    }
  }

  v42 = String._bridgeToObjectiveC()();
  [v28 setCkstate:v42];

LABEL_19:
  if (qword_10038F850 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_10009597C(v43, qword_10038F858);
  v44 = v28;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v96 = v34;
    v97 = v26;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v103[0] = v48;
    *v47 = 136315138;
    v49 = [v44 pushToken];
    if (v49)
    {
      v50 = v49;
      v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = sub_1000DEC98(v51, v53);
      v56 = v55;
      sub_1000956CC(v51, v53);
    }

    else
    {
      v56 = 0xE100000000000000;
      v54 = 45;
    }

    v58 = sub_1000999E4(v54, v56, v103);

    *(v47 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v45, v46, "merged cloud device: %s", v47, 0xCu);
    sub_10009A9E8(v48);

    v27 = v100;
  }

  else
  {
  }

  v59 = v101;
  v60 = (*(*v101 + 432))(v44, v27);
  v61 = (*(*v59 + 160))(v60);
  v103[0] = 0;
  v62 = [v61 save:v103];

  if (v62)
  {
    v63 = v103[0];
  }

  else
  {
    v64 = v103[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v57 = 1;
LABEL_32:
  *v99 = v57;
}

uint64_t sub_1000B20C4(void *a1)
{
  v3 = (*(*v1 + 160))();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000B4E90;
  *(v5 + 24) = v4;
  v10[4] = sub_1000A0E98;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10009EB40;
  v10[3] = &unk_10031FC08;
  v6 = _Block_copy(v10);
  v7 = a1;

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B2254(void *a1)
{
  v3 = (*(*v1 + 160))();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000B52AC;
  *(v5 + 24) = v4;
  v10[4] = sub_1000A0E98;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10009EB40;
  v10[3] = &unk_10031FC80;
  v6 = _Block_copy(v10);
  v7 = a1;

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

objc_class *sub_1000B23E4(void *a1)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - v5;
  v7 = type metadata accessor for CloudDeviceData(0);
  __chkstk_darwin(v7);
  v9 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v10 - 8);
  v11 = [a1 ckrecord];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  v16 = type metadata accessor for KTCloudRecords();
  isa = (*(v16 + 456))(v13, v15);
  sub_10009A9D4(v13, v15);
  if (!isa)
  {
    result = (*(*v2 + 352))(a1);
    if (!result)
    {
      return result;
    }

    v19.super.isa = result;
    sub_10009FDA0(0, &qword_1003851B0, CKRecord_ptr);
    v20._countAndFlagsBits = (*(*v2 + 136))();
    isa = CKRecord.init(recordType:recordID:)(v20, v19).super.isa;
  }

  v21 = [a1 applications];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xC000000000000000;
  }

  static String.Encoding.utf8.getter();
  v69 = v23;
  v26 = String.init(data:encoding:)();
  if (v27)
  {
    v72 = v26;
    v73 = v27;
    v70 = 44;
    v71 = 0xE100000000000000;
    sub_100008D30();
    v67 = StringProtocol.components<A>(separatedBy:)();
  }

  else
  {
    v67 = 0;
  }

  v28 = [a1 pushToken];
  if (v28)
  {
    v29 = v28;
    v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v31;
    v66 = v30;
  }

  else
  {
    v65 = 0xF000000000000000;
    v66 = 0;
  }

  v32 = [a1 registrationData];
  if (v32)
  {
    v33 = v32;
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v35;
    v64 = v34;
  }

  else
  {
    v63 = 0xF000000000000000;
    v64 = 0;
  }

  v36 = [a1 timeToLive];
  if (v36)
  {
    v37 = v36;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = type metadata accessor for Date();
  (*(*(v39 - 8) + 56))(v6, v38, 1, v39);
  v40 = [a1 osVersion];
  v68 = v25;
  if (v40)
  {
    v41 = v40;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = isa;
  v46 = [a1 serialNumber];
  if (v46)
  {
    v47 = v46;
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v51 = [a1 injected];
  if (v51)
  {
    v52 = v51;
    v53 = [v51 BOOLValue];
  }

  else
  {
    v53 = 2;
  }

  v54 = v65;
  *v9 = v66;
  v9[1] = v54;
  v55 = v63;
  v9[2] = v64;
  v9[3] = v55;
  sub_1000ABF3C(v6, v9 + v7[6]);
  v56 = (v9 + v7[7]);
  *v56 = v42;
  v56[1] = v44;
  v57 = (v9 + v7[8]);
  *v57 = v48;
  v57[1] = v50;
  *(v9 + v7[9]) = v67;
  *(v9 + v7[10]) = v53;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000B74A0(&unk_100384020, type metadata accessor for CloudDeviceData, &unk_1002D6C00);
  v58 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v60 = v59;
  v61 = [(objc_class *)v45 encryptedValues];
  swift_getObjectType();
  v74 = &type metadata for Data;
  v75 = &protocol witness table for Data;
  v72 = v58;
  v73 = v60;
  sub_100002D78(v58, v60);
  CKRecordKeyValueSetting.subscript.setter();

  sub_1000956CC(v69, v68);
  swift_unknownObjectRelease();
  sub_1000956CC(v58, v60);
  sub_1000AC07C(v9);
  return v45;
}

uint64_t sub_1000B29D0()
{
  v9 = 0;
  v1 = (*(*v0 + 160))();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B56F0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031FCF8;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

void *sub_1000B2B60()
{
  v9 = _swiftEmptyArrayStorage;
  v1 = (*(*v0 + 160))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B58DC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031FD70;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

void *sub_1000B2CF8()
{
  v9 = _swiftEmptyArrayStorage;
  v1 = (*(*v0 + 160))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B58F4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031FDE8;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_1000B2E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*v3 + 160))();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000B5C54;
  *(v9 + 24) = v8;
  v13[4] = sub_1000A0E98;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10009EB40;
  v13[3] = &unk_10031FE60;
  v10 = _Block_copy(v13);

  [v7 performBlockAndWait:v10];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B3038(void *a1)
{
  v12 = 0;
  v3 = (*(*v1 + 160))();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = &v12;
  v4[4] = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000B61F0;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_10031FED8;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t sub_1000B31DC(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for KTCloudRecords() + 464);
  v5 = a2;
  v6 = v4(a2);
  if (v7 >> 60 == 15)
  {

    return 0;
  }

  v9 = v6;
  v10 = v7;
  v11 = [a1 ckrecord];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v15 >> 60 != 15)
    {
      sub_1000A4A5C(v9, v10);
      sub_1000A4A5C(v13, v15);
      v16 = sub_100095AC0(v13, v15, v9, v10);
      sub_10009A9D4(v13, v15);
      sub_10009A9D4(v9, v10);
      sub_10009A9D4(v13, v15);
      if (v16)
      {

        sub_10009A9D4(v9, v10);
        return 0;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  sub_1000A4A5C(v9, v10);
  sub_10009A9D4(v13, v15);
  sub_10009A9D4(v9, v10);
LABEL_12:
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a1 setCkrecord:isa];

  sub_10009A9D4(v9, v10);
  return 1;
}

uint64_t sub_1000B3388(char a1)
{
  v3 = (*(*v1 + 160))();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000B6B6C;
  *(v5 + 24) = v4;
  v9[4] = sub_1000A0E98;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10009EB40;
  v9[3] = &unk_10031FF50;
  v6 = _Block_copy(v9);

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B3510()
{

  swift_unknownObjectRelease();
  sub_1000B6FB8(v0 + 56);
  return v0;
}

uint64_t sub_1000B3550()
{

  swift_unknownObjectRelease();
  sub_1000B6FB8(v0 + 56);

  return _swift_deallocClassInstance(v0, 80, 7);
}

char *sub_1000B3938(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095820(&qword_1003844C0, &qword_1002D6E08);
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

uint64_t sub_1000B3A7C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000B3A8C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v20 = v0[7];
  v6 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002D47B0;
  v8 = [v2 recordName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_10009FD4C();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v12 = NSPredicate.init(format:_:)();
  [v6 setPredicate:v12];

  v21 = 0;
  v13 = [v6 execute:&v21];
  v14 = v21;
  if (v13)
  {
    v15 = v13;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v14;

    sub_100002D78(v1, v3);
    sub_100002D78(v4, v5);
    sub_1000B754C(v16, v1, v3, v4, v5, v20);
    sub_1000956CC(v4, v5);
    sub_1000956CC(v1, v3);
  }

  else
  {
    v19 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000B3CC4()
{
  v1 = v0[2];
  v2 = v0[5];
  v28 = v0[4];
  v29 = v0[3];
  v3 = v0[6];
  v4 = v0[7];
  v27 = v0[8];
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D47B0;
  v7 = [v1 recordName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10009FD4C();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  v11 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v11];

  v30 = 0;
  v12 = [v5 execute:&v30];
  v13 = v30;
  if (v12)
  {
    v14 = v12;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v13;

    v26 = v5;
    if (v15 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100002D78(v29, v28);
      sub_100002D78(v2, v3);

      if (!i)
      {
        break;
      }

      v18 = 4;
      while (1)
      {
        v19 = v18 - 4;
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v20 = *(v15 + 8 * v18);
        }

        v21 = v20;
        v22 = __OFADD__(v19, 1);
        v23 = v18 - 3;
        if (v22)
        {
          break;
        }

        v30 = v20;
        sub_1000AF418(&v30, v29, v28, v2, v3, v4, v27);

        ++v18;
        if (v23 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_13:

    sub_1000956CC(v2, v3);
    sub_1000956CC(v29, v28);
  }

  else
  {
    v25 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000B3FD0(void (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + 16);
  v4 = [objc_opt_self() fetchRequest];
  v12 = 0;
  v5 = [v4 execute:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = v5;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v6;

    a1(v8, v3);
  }

  else
  {
    v11 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000B40D8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47B0;
  v5 = [v2 recordName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10009FD4C();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v9];

  v50 = 0;
  v10 = [v3 execute:&v50];
  v11 = v50;
  if (!v10)
  {
    v28 = v50;
    _convertNSErrorToError(_:)();

    swift_willThrow();

LABEL_14:
    if (qword_10038F850 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10009597C(v29, qword_10038F858);
    v30 = static os_log_type_t.error.getter();
    v31 = v2;
    v32 = Logger.logObject.getter();

    if (os_log_type_enabled(v32, v30))
    {
      v33 = swift_slowAlloc();
      v49 = v30;
      v34 = swift_slowAlloc();
      v50 = v34;
      *v33 = 136315138;
      v35 = [v31 recordName];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = sub_1000999E4(v36, v38, &v50);

      *(v33 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v49, "creating new record %s", v33, 0xCu);
      sub_10009A9E8(v34);
    }

    v40 = (*(*v1 + 160))();
    v16 = [objc_allocWithZone(CloudDevice) initWithContext:v40];

    if (!v16)
    {

      return;
    }

    v41 = [v31 recordName];
    if (!v41)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = String._bridgeToObjectiveC()();
    }

    [v16 setRecordID:v41];

    isa = Data._bridgeToObjectiveC()().super.isa;
    [v16 setPushToken:isa];

    v19 = Data._bridgeToObjectiveC()().super.isa;
    [v16 setRegistrationData:v19];
    goto LABEL_22;
  }

  v12 = v10;
  sub_10009FDA0(0, &unk_1003853A0, off_100315880);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11;

  if (v13 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    goto LABEL_14;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  if (qword_10038F850 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10009597C(v17, qword_10038F858);
  v18 = v2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v50 = v22;
    *v21 = 136315138;
    v23 = [v18 recordName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = sub_1000999E4(v24, v26, &v50);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "add device: updating existing record %s", v21, 0xCu);
    sub_10009A9E8(v22);
  }

LABEL_22:

  sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
  v43 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v16 setInjected:v43];

  v44 = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
  [v16 setLocal:v44];

  v45 = String._bridgeToObjectiveC()();
  [v16 setCkstate:v45];

  v46 = (*(*v1 + 160))([v16 setTimeToLive:0]);
  v50 = 0;
  LODWORD(v43) = [v46 save:&v50];

  if (v43)
  {
    v47 = v50;
  }

  else
  {
    v48 = v50;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000B47F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47B0;
  v5 = [v2 recordName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10009FD4C();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v9];

  v28 = 0;
  v10 = [v3 execute:&v28];
  v11 = v28;
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = v10;
  sub_10009FDA0(0, &unk_1003853A0, off_100315880);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11;

  v27 = v1;
  if (v13 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = 4;
    while (1)
    {
      v17 = v16 - 4;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v18 = *(v13 + 8 * v16);
      }

      v19 = v18;
      v20 = v16 - 3;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = String._bridgeToObjectiveC()();
      [v19 setCkstate:v21];

      ++v16;
      if (v20 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v23 = (*(*v27 + 160))(v22);
  v28 = 0;
  v24 = [v23 save:&v28];

  v11 = v28;
  if (v24)
  {
    v25 = v28;
  }

  else
  {
LABEL_17:
    v26 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000B4AF8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000B687C(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1000B687C(v4, v5);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_1000B4C30(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      sub_1000B74A0(&unk_100384000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000B679C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1000B679C(v5, v6);
  }

  type metadata accessor for SHA256();
  sub_1000B74A0(&unk_100384000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

unint64_t sub_1000B4E10()
{
  result = qword_1003851A0;
  if (!qword_1003851A0)
  {
    sub_1000967DC(&unk_100383FD0, &qword_1002D6BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003851A0);
  }

  return result;
}

void sub_1000B4E90()
{
  v1 = *(v0 + 16);
  v39 = *(v0 + 24);
  v2 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002D47B0;
  v4 = [v1 recordName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_10009FD4C();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v8 = NSPredicate.init(format:_:)();
  [v2 setPredicate:v8];

  v40 = 0;
  v9 = [v2 execute:&v40];
  v10 = v40;
  if (v9)
  {
    v11 = v9;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v10;

    if (v12 >> 62)
    {
      goto LABEL_23;
    }

    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v2; v14; i = v2)
    {
      v15 = 0x676E696F6774756FLL;
      v2 = (v12 & 0xFFFFFFFFFFFFFF8);
      v16 = 4;
      while (1)
      {
        v19 = v16 - 4;
        if ((v12 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v20 = *(v12 + 8 * v16);
        }

        v18 = v20;
        v21 = v16 - 3;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v22 = [v20 ckstate];
        if (v22)
        {
          v23 = v14;
          v24 = v22;
          v25 = v15;
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          v29 = v26;
          v15 = v25;
          if (v29 == v25 && v28 == 0xE800000000000000)
          {

            v14 = v23;
            goto LABEL_6;
          }

          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v14 = v23;
          if (v31)
          {
            goto LABEL_6;
          }
        }

        v17 = (*(*v39 + 160))();
        [v17 deleteObject:v18];

        v18 = v17;
LABEL_6:

        ++v16;
        if (v21 == v14)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_24:

    v34 = (*(*v39 + 160))(v33);
    v40 = 0;
    v35 = [v34 save:&v40];

    if (v35)
    {
      v36 = v40;

      return;
    }

    v37 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v32 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000B526C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000B52AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47B0;
  v5 = [v2 recordName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10009FD4C();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v9];

  v33 = 0;
  v10 = [v3 execute:&v33];
  v11 = v33;
  if (v10)
  {
    v12 = v10;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v11;

    if (v13 >> 62)
    {
      goto LABEL_21;
    }

    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v3; v15; i = v3)
    {
      v16 = 4;
      while (1)
      {
        v18 = v16 - 4;
        if ((v13 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v19 = *(v13 + 8 * v16);
        }

        v20 = v19;
        v3 = (v16 - 3);
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v21 = [v19 local];
        sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
        v22.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
        if (v21)
        {
          v23 = static NSObject.== infix(_:_:)();

          if ((v23 & 1) == 0)
          {
            goto LABEL_6;
          }

          v24 = (*(*v1 + 384))(v20);
          if (!v24)
          {
            goto LABEL_6;
          }

          v22.super.super.isa = v24;
          v25 = [(objc_class *)v24 recordChangeTag];
          if (v25)
          {

            [v20 setCkrecord:0];
            v17 = String._bridgeToObjectiveC()();
            [v20 setCkstate:v17];

            goto LABEL_7;
          }
        }

LABEL_6:
        v17 = (*(*v1 + 160))();
        [v17 deleteObject:v20];
LABEL_7:

        ++v16;
        if (v3 == v15)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_22:

    v28 = (*(*v1 + 160))(v27);
    v33 = 0;
    v29 = [v28 save:&v33];

    if (v29)
    {
      v30 = v33;

      return;
    }

    v31 = v33;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v26 = v33;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000B56F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4790;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_10009FD4C();
  *(v4 + 32) = 0x676E696F6774756FLL;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v5;
  *(v4 + 64) = v5;
  *(v4 + 72) = 0x646574656C6564;
  *(v4 + 80) = 0xE700000000000000;
  v6 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v6];

  v8 = (*(*v1 + 160))();
  sub_10009FDA0(0, &unk_1003853A0, off_100315880);
  v7 = NSManagedObjectContext.count<A>(for:)();

  if (v7 >= 1)
  {
    *v2 = 1;
  }
}

uint64_t sub_1000B590C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002D47B0;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10009FD4C();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = NSPredicate.init(format:_:)();
  [v7 setPredicate:v9];

  v32 = 0;
  v10 = [v7 execute:&v32];
  v11 = v32;
  if (!v10)
  {
    v27 = v32;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v12 = v10;
  sub_10009FDA0(0, &unk_1003853A0, off_100315880);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11;

  v32 = _swiftEmptyArrayStorage;
  if (v13 >> 62)
  {
LABEL_21:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v31 = v7;
    if (v15)
    {
LABEL_4:
      v30 = v5;
      v7 = 0;
      v16 = _swiftEmptyArrayStorage;
      v5 = v13 & 0xC000000000000001;
      do
      {
        v17 = v7;
        while (1)
        {
          if (v5)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v18 = *(v13 + 8 * v17 + 32);
          }

          v19 = v18;
          v7 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          v20 = [v18 recordID];
          if (v20)
          {
            break;
          }

          ++v17;
          if (v7 == v15)
          {
            goto LABEL_23;
          }
        }

        v29 = v6;
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
        v25 = *(v30 + 40);
        v26._countAndFlagsBits = v22;
        v26._object = v24;
        CKRecordID.init(recordName:zoneID:)(v26, v25);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = v32;
        v6 = v29;
      }

      while (v7 != v15);
      goto LABEL_23;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v7;
    if (v15)
    {
      goto LABEL_4;
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_23:

  *v6 = v16;
}

id sub_1000B5C54()
{
  v40 = *(v0 + 40);
  v41 = *(v0 + 16);
  if (v41 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v2 = 0;
    v42 = i;
    while (1)
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v3 = *(v41 + 32 + 8 * v2);
      }

      v4 = v3;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [objc_opt_self() fetchRequest];
      sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
      sub_100095820(&unk_100383140, &qword_1002D6BD0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1002D47B0;
      v45 = v4;
      v8 = [v4 recordName];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      *(v7 + 56) = &type metadata for String;
      *(v7 + 64) = sub_10009FD4C();
      *(v7 + 32) = v9;
      *(v7 + 40) = v11;
      v12 = NSPredicate.init(format:_:)();
      [v6 setPredicate:v12];

      v46 = 0;
      v44 = v6;
      v13 = [v6 execute:&v46];
      v14 = v46;
      if (v13)
      {
        v15 = v13;
        sub_10009FDA0(0, &unk_1003853A0, off_100315880);
        v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v14;

        if (v16 >> 62)
        {
          v18 = _CocoaArrayWrapper.endIndex.getter();
          v43 = v2;
          if (v18)
          {
LABEL_13:
            v19 = 4;
            while (1)
            {
              v20 = v19 - 4;
              if ((v16 & 0xC000000000000001) != 0)
              {
                v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v20 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_30;
                }

                v21 = *(v16 + 8 * v19);
              }

              v22 = v21;
              v5 = __OFADD__(v20, 1);
              v23 = v19 - 3;
              if (v5)
              {
                break;
              }

              v24 = String._bridgeToObjectiveC()();
              [v22 setCkstate:v24];

              ++v19;
              if (v23 == v18)
              {
                goto LABEL_4;
              }
            }

            __break(1u);
LABEL_30:
            __break(1u);
            break;
          }
        }

        else
        {
          v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v43 = v2;
          if (v18)
          {
            goto LABEL_13;
          }
        }

LABEL_4:

        i = v42;
        v2 = v43;
      }

      else
      {
        v25 = v46;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_10038F850 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_10009597C(v26, qword_10038F858);
        v27 = v45;
        swift_errorRetain();
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = v2;
          v32 = swift_slowAlloc();
          *v30 = 138412546;
          *(v30 + 4) = v27;
          *v32 = v27;
          *(v30 + 12) = 2112;
          v33 = v27;
          swift_errorRetain();
          v34 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 14) = v34;
          v32[1] = v34;
          _os_log_impl(&_mh_execute_header, v28, v29, "record to update not found %@: %@", v30, 0x16u);
          sub_100095820(&unk_100383290, &unk_1002D5BA0);
          swift_arrayDestroy();
          v2 = v31;
          i = v42;
        }

        else
        {
        }
      }

      if (v2 == i)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_34:
  v35 = (*(*v40 + 160))();
  v46 = 0;
  v36 = [v35 save:&v46];

  v37 = v46;
  if (v36)
  {

    return v37;
  }

  else
  {
    v39 = v46;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000B61F0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002D47B0;
  v6 = [v1 recordName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10009FD4C();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v10];

  v40 = 0;
  v11 = [v4 execute:&v40];
  v12 = v40;
  if (!v11)
  {
    v23 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (qword_10038F850 == -1)
    {
LABEL_12:
      v24 = type metadata accessor for Logger();
      sub_10009597C(v24, qword_10038F858);
      v25 = static os_log_type_t.error.getter();
      v26 = v1;
      v27 = Logger.logObject.getter();

      if (!os_log_type_enabled(v27, v25))
      {
LABEL_21:

        return;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v26;
      *v29 = v26;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, v27, v25, "record not found %@", v28, 0xCu);
      sub_1000057C4(v29, &unk_100383290, &unk_1002D5BA0);

LABEL_20:

      goto LABEL_21;
    }

LABEL_25:
    swift_once();
    goto LABEL_12;
  }

  v13 = v11;
  sub_10009FDA0(0, &unk_1003853A0, off_100315880);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v12;

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_16:
    if (qword_10038F850 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10009597C(v32, qword_10038F858);
    v33 = static os_log_type_t.error.getter();

    v27 = Logger.logObject.getter();

    if (!os_log_type_enabled(v27, v33))
    {

      return;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v34 = 136315138;
    v36 = Array.description.getter();
    v38 = v37;

    v39 = sub_1000999E4(v36, v38, &v40);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v27, v33, "no response %s", v34, 0xCu);
    sub_10009A9E8(v35);

    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = *(v1 + 32);
LABEL_7:
  v16 = v15;

  v17 = (*(*v3 + 384))(v16);
  v18 = *v2;
  *v2 = v17;
  v19 = v17;

  LOBYTE(v17) = (*(*v3 + 432))(v16, v17);
  if ((v17 & 1) == 0)
  {
LABEL_10:

    return;
  }

  v20 = (*(*v3 + 160))();
  v40 = 0;
  v21 = [v20 save:&v40];

  if (v21)
  {
    v22 = v40;
    goto LABEL_10;
  }

  v31 = v40;
  _convertNSErrorToError(_:)();

  swift_willThrow();
}

uint64_t sub_1000B679C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1000B74A0(&unk_100384000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B687C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B6910(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656B6F5468737570 && a2 == 0xE90000000000006ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107700 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1936748641 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64657463656A6E69 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_1000B6B6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithEntityName:v4];

  if (v1 == 1)
  {
    sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
    v6 = NSPredicate.init(format:_:)();
    [v5 setPredicate:v6];
  }

  v7 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v5];
  v8 = *(*v2 + 160);
  v9 = v8();
  v36 = 0;
  v10 = [v9 executeRequest:v7 error:&v36];

  if (v10)
  {
    v11 = v36;

    if (!v1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = v36;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (!v1)
    {
      goto LABEL_23;
    }
  }

  v13 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  v14 = NSPredicate.init(format:_:)();
  [v13 setPredicate:v14];

  v36 = 0;
  v15 = [v13 execute:&v36];
  v16 = v36;
  if (v15)
  {
    v17 = v15;
    sub_10009FDA0(0, &unk_1003853A0, off_100315880);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v16;

    v35 = v5;
    v33 = v8;
    v34 = v7;
    v32 = v13;
    if (v18 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v21 = 4;
      while (1)
      {
        v22 = v21 - 4;
        if ((v18 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v23 = *(v18 + 8 * v21);
        }

        v24 = v23;
        v25 = v21 - 3;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        [v23 setCkrecord:{0, v32}];
        v26 = String._bridgeToObjectiveC()();
        [v24 setCkstate:v26];

        ++v21;
        if (v25 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:

    v5 = v35;
    v8 = v33;
    v7 = v34;
  }

  else
  {
    v27 = v36;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

LABEL_23:
  v28 = v8();
  v36 = 0;
  v29 = [v28 save:&v36];

  if (v29)
  {
    v30 = v36;
  }

  else
  {
    v31 = v36;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v5 = v7;
  }
}

void sub_1000B7008(uint64_t a1)
{
  sub_1000B71C0(319, &qword_1003840F8, &type metadata for Data);
  if (v1 <= 0x3F)
  {
    sub_1000B7104(319);
    if (v2 <= 0x3F)
    {
      sub_1000B71C0(319, &unk_1003847D0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_1000B715C(319);
        if (v4 <= 0x3F)
        {
          sub_1000B71C0(319, &unk_100384118, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000B7104(uint64_t a1)
{
  if (!qword_100384100)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100384100);
    }
  }
}

void sub_1000B715C(uint64_t a1)
{
  if (!qword_100384110)
  {
    sub_1000967DC(&unk_100383FD0, &qword_1002D6BC0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100384110);
    }
  }
}

void sub_1000B71C0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for CloudDeviceData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudDeviceData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B739C()
{
  result = qword_10038FA90[0];
  if (!qword_10038FA90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10038FA90);
  }

  return result;
}

unint64_t sub_1000B73F4()
{
  result = qword_10038FBA0;
  if (!qword_10038FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10038FBA0);
  }

  return result;
}

unint64_t sub_1000B744C()
{
  result = qword_10038FBA8[0];
  if (!qword_10038FBA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10038FBA8);
  }

  return result;
}

uint64_t sub_1000B74A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B74E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudDeviceData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000B754C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void **a6)
{
  v7 = v6;
  v8 = a1;
  if (a1 >> 62)
  {
LABEL_107:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  v10 = 0;
  v81 = v8 & 0xC000000000000001;
  v80 = v8 & 0xFFFFFFFFFFFFFF8;
  if (a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3 == 0xC000000000000000;
  }

  v12 = !v11;
  v75 = v12;
  v13 = __OFSUB__(HIDWORD(a2), a2);
  v67 = v13;
  if (a4)
  {
    v14 = 0;
  }

  else
  {
    v14 = a5 == 0xC000000000000000;
  }

  v15 = !v14;
  v70 = v15;
  v76 = a5 >> 62;
  v77 = v8;
  v16 = __OFSUB__(HIDWORD(a4), a4);
  v66 = v16;
  v78 = v9;
  while (1)
  {
    if (v81)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v80 + 16))
      {
        goto LABEL_102;
      }

      v19 = *(v8 + 8 * v10 + 32);
    }

    v20 = v19;
    v21 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v22 = [v19 registrationData];
    if (v22)
    {
      break;
    }

LABEL_25:

    ++v10;
    if (v21 == v9)
    {
      return;
    }
  }

  v23 = v22;
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = [v20 pushToken];
  if (!v27)
  {
    v17 = v24;
    v18 = v26;
    goto LABEL_24;
  }

  v28 = v27;
  v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = v26 >> 62;
  if (v26 >> 62 == 3)
  {
    if (v24)
    {
      v32 = 0;
    }

    else
    {
      v32 = v26 == 0xC000000000000000;
    }

    v33 = a3 >> 62;
    v35 = !v32 || a3 >> 62 != 3;
    if (((v35 | v75) & 1) == 0)
    {
      v9 = v78;
      goto LABEL_61;
    }

    v36 = 0;
    v9 = v78;
  }

  else
  {
    v33 = a3 >> 62;
    if (v31)
    {
      if (v31 == 1)
      {
        LODWORD(v36) = HIDWORD(v24) - v24;
        v9 = v78;
        if (__OFSUB__(HIDWORD(v24), v24))
        {
          goto LABEL_105;
        }

        v36 = v36;
      }

      else
      {
        v38 = *(v24 + 16);
        v37 = *(v24 + 24);
        v39 = __OFSUB__(v37, v38);
        v36 = v37 - v38;
        v9 = v78;
        if (v39)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
      v36 = BYTE6(v26);
      v9 = v78;
    }
  }

  if (v33 > 1)
  {
    if (v33 != 2)
    {
      if (!v36)
      {
        goto LABEL_61;
      }

LABEL_23:
      sub_1000956CC(v24, v26);
      v17 = v79;
      v18 = v30;
LABEL_24:
      sub_1000956CC(v17, v18);
      goto LABEL_25;
    }

    v42 = *(a2 + 16);
    v41 = *(a2 + 24);
    v39 = __OFSUB__(v41, v42);
    v40 = v41 - v42;
    if (v39)
    {
      goto LABEL_103;
    }
  }

  else
  {
    v40 = BYTE6(a3);
    if (v33)
    {
      v40 = HIDWORD(a2) - a2;
      if (v67)
      {
        goto LABEL_104;
      }
    }
  }

  if (v36 != v40)
  {
    goto LABEL_23;
  }

  if (v36 >= 1)
  {
    sub_100002D78(a2, a3);
    v8 = v77;
    v9 = v78;
    if ((sub_1000948E4(v24, v26, a2, a3) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_61:
  v43 = v30 >> 62;
  if (v30 >> 62 != 3)
  {
    v45 = a5 >> 62;
    if (v43 == 2)
    {
      v50 = *(v79 + 16);
      v49 = *(v79 + 24);
      v39 = __OFSUB__(v49, v50);
      v48 = v49 - v50;
      if (v39)
      {
        goto LABEL_111;
      }

      if (v76 > 1)
      {
        goto LABEL_85;
      }
    }

    else if (v43 == 1)
    {
      LODWORD(v48) = HIDWORD(v79) - v79;
      if (__OFSUB__(HIDWORD(v79), v79))
      {
        goto LABEL_112;
      }

      v48 = v48;
      if (v76 > 1)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v48 = BYTE6(v30);
      if (v76 > 1)
      {
        goto LABEL_85;
      }
    }

LABEL_81:
    v51 = BYTE6(a5);
    if (v45)
    {
      v51 = HIDWORD(a4) - a4;
      if (v66)
      {
        goto LABEL_110;
      }
    }

LABEL_87:
    if (v48 == v51)
    {
      if (v48 < 1)
      {
        goto LABEL_92;
      }

      sub_100002D78(a4, a5);
      v8 = v77;
      v9 = v78;
      if (sub_1000948E4(v79, v30, a4, a5))
      {
        goto LABEL_92;
      }
    }

    goto LABEL_23;
  }

  if (v79)
  {
    v44 = 0;
  }

  else
  {
    v44 = v30 == 0xC000000000000000;
  }

  v45 = a5 >> 62;
  v47 = !v44 || a5 >> 62 != 3;
  if (((v47 | v70) & 1) == 0)
  {
LABEL_92:
    v54 = [v20 ckstate];
    v73 = v7;
    if (!v54)
    {
      goto LABEL_98;
    }

    v55 = v54;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    if (v56 == 0x646574656C6564 && v58 == 0xE700000000000000)
    {

      v7 = v73;
      goto LABEL_97;
    }

    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v73;
    if (v59)
    {
LABEL_97:
      sub_1000956CC(v79, v30);
      sub_1000956CC(v24, v26);
    }

    else
    {
LABEL_98:
      v60 = objc_allocWithZone(KTLoggableData);
      sub_100002D78(v24, v26);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v62 = [v60 initWithClientData:isa];

      sub_1000956CC(v24, v26);
      v63 = Data._bridgeToObjectiveC()().super.isa;
      [v62 setDeviceID:v63];

      v64 = [v20 osVersion];
      [v62 setBuild:v64];
      sub_1000956CC(v24, v26);
      v7 = v73;
      sub_1000956CC(v79, v30);

      v65 = *a6;
      *a6 = v62;

      v20 = v65;
    }

    v8 = v77;
    v9 = v78;
    goto LABEL_25;
  }

  v48 = 0;
  if (v76 <= 1)
  {
    goto LABEL_81;
  }

LABEL_85:
  if (v45 != 2)
  {
    if (!v48)
    {
      goto LABEL_92;
    }

    goto LABEL_23;
  }

  v53 = *(a4 + 16);
  v52 = *(a4 + 24);
  v39 = __OFSUB__(v52, v53);
  v51 = v52 - v53;
  if (!v39)
  {
    goto LABEL_87;
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
}

uint64_t sub_1000B7BCC()
{
  swift_beginAccess();
  v0 = qword_1003844C8;

  return v0;
}

uint64_t sub_1000B7C20(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_1003844C8 = a1;
  off_1003844D0 = a2;
}

unint64_t sub_1000B7CD4(uint64_t a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 0x6261746164206F4ELL;
      break;
    case 2:
      result = 0x61746E6F63206F4ELL;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 11:
    case 13:
      result = 0xD00000000000001DLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000021;
      break;
    case 17:
      result = 0x66206E692D74704FLL;
      break;
    case 18:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B7F24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE7E0();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000B7F70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000BCDE0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000B7FA4(uint64_t a1)
{
  v2 = sub_1000BE7E0();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1000B7FE0(uint64_t a1)
{
  v2 = sub_1000BE7E0();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1000B801C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE660();
  v5 = sub_10009C574();

  return CustomNSError<>.errorCode.getter(a1, a2, v4, v5);
}

uint64_t sub_1000B807C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE7E0();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t sub_1000B80D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_element);

  return v1;
}

uint64_t sub_1000B811C()
{
  v1 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_success;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000B8160(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_success;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000B8210()
{
  v1 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasFailures;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000B8254(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasFailures;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000B8304()
{
  v1 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasMostRecentSuccess;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000B8348(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasMostRecentSuccess;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1000B83F8()
{
  v1 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_presentRate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000B843C(double a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_presentRate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1000B84EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_element];
  *v16 = a1;
  v16[1] = a2;
  *&v15[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_samples] = a3;
  v15[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_success] = a4;
  v15[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasFailures] = a5;
  v15[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasMostRecentSuccess] = a6;
  *&v15[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_presentRate] = a7;
  v18.receiver = v15;
  v18.super_class = v7;
  return objc_msgSendSuper2(&v18, "init");
}

id sub_1000B85B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, double a7)
{
  v8 = &v7[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_element];
  *v8 = a1;
  v8[1] = a2;
  *&v7[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_samples] = a3;
  v7[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_success] = a4;
  v7[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasFailures] = a5;
  v7[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasMostRecentSuccess] = a6;
  *&v7[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_presentRate] = a7;
  v10.receiver = v7;
  v10.super_class = type metadata accessor for AggregateElementInfo();
  return objc_msgSendSuper2(&v10, "init");
}

id sub_1000B8694()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AggregateElementInfo();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B8794@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13transparencyd15KTEligibilityDB_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_1000B8854()
{
  sub_10009AE38();
  if (!v0)
  {
    sub_10009AE38();
    _StringGuts.grow(_:)(24);

    v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v1);

    sub_10009AE38();
  }
}

uint64_t sub_1000B89A0()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000BCF98;
  *(v2 + 24) = v0;
  v5[4] = sub_1000A040C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009EB40;
  v5[3] = &unk_100320078;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B8B2C(uint64_t a1, uint64_t a2)
{
  sub_100095820(&qword_100384528, &unk_1002D6E20);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    return v4;
  }

  return result;
}

void sub_1000B8BB4(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v56 = a2;
  v6 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009AEC4();
  if (!v3)
  {
    v17 = v16;
    v52 = v15;
    v53 = v11;
    v51 = v9;
    v54 = v12;
    v55 = v13;
    v18 = (*(*v16 + 104))(0, a1, v56);
    v19 = (*(*v17 + 160))(v18);
    v20 = v19;
    v56 = 0;
    if (!v19)
    {

      *a3 = 0;
      return;
    }

    v21 = *(*v19 + 96);

    v22 = v21(0);
    if (!v23)
    {
      goto LABEL_13;
    }

    v24 = v22;
    v25 = v23;
    v26 = (*(*v20 + 104))(1);
    if ((v26 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }

    v49 = v26;
    v50 = v21;
    v27 = v53;
    (*(*v20 + 120))(2);
    v29 = v54;
    v28 = v55;
    if ((*(v55 + 48))(v27, 1, v54) == 1)
    {

      sub_1000BEC3C(v27);
LABEL_13:
      sub_1000BCE18();
      swift_allocError();
      *v36 = 3;
      swift_willThrow();

      return;
    }

    v48 = v24;
    v30 = v52;
    (*(v28 + 32))(v52, v27, v29);
    v31 = v50(3);
    if (!v32)
    {
      (*(v28 + 8))(v30, v29);
      goto LABEL_12;
    }

    v33 = v32;
    v34 = v31;
    (*(*v20 + 112))(4);
    if (v35)
    {
      (*(v55 + 8))(v52, v54);

LABEL_12:

      goto LABEL_13;
    }

    v53 = v25;
    v37 = v54;
    v38 = v52;
    if (v49)
    {

      type metadata accessor for KTEligibilityStatusResult(0);
      v39 = v55;
      v40 = v51;
      v41 = v38;
      (*(v55 + 16))(v51, v38, v37);
      (*(v39 + 56))(v40, 0, 1, v37);
      v42 = sub_100130A90(v48, v53, v40);

      sub_1000BEC3C(v40);
    }

    else
    {
      v50 = type metadata accessor for KTEligibilityStatusResult(0);
      v43 = v55;
      v44 = v51;
      (*(v55 + 16))(v51, v38, v37);
      (*(v43 + 56))(v44, 0, 1, v37);
      v45 = v34;
      v41 = v38;
      v42 = sub_1001305D0(2, v48, v53, v45, v33, v44);
    }

    v46 = *(*v17 + 96);
    v47 = v42;
    v46();

    (*(v55 + 8))(v41, v37);
    *a3 = v47;
  }
}

BOOL sub_1000B9148()
{
  Date.timeIntervalSinceReferenceDate.getter();
  v1 = v0;
  Date.timeIntervalSinceReferenceDate.getter();
  if (v2 >= v1)
  {
    return 0;
  }

  Date.timeIntervalSinceReferenceDate.getter();
  v4 = v3;
  Date.timeIntervalSinceReferenceDate.getter();
  return v4 <= v5;
}

void sub_1000B9240(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009AEC4();
  if (!v4)
  {
    v14 = v13;
    v28 = a4;
    v15 = *(*v13 + 104);
    v29 = 0;
    v15(0, a2, a3);
    sub_100095820(&qword_100383FB0, &unk_1002D6690);
    v16 = swift_allocBox();
    v17 = *(v10 + 56);
    v27 = v18;
    v17(v18, 1, 1, v9);
    v19 = swift_allocBox();
    static Date.now.getter();
    Date.advanced(by:)();
    (*(v10 + 8))(v12, v9);
    v20 = swift_allocBox();
    static Date.now.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = v19;
    v22[4] = v20;
    v22[5] = v21;
    v22[6] = v16;
    v23 = *(*v14 + 152);

    v24 = v29;
    v23(sub_1000BED50, v22);

    if (!v24)
    {
      v25 = v27;
      swift_beginAccess();
      sub_1000AB050(v25, v28, &qword_100383FB0, &unk_1002D6690);
    }
  }
}

uint64_t sub_1000B9570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v87 = a4;
  v6 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v7 = __chkstk_darwin(v6 - 8);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v74 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v84 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v85 = &v74 - v16;
  v17 = __chkstk_darwin(v15);
  v82 = &v74 - v18;
  v19 = __chkstk_darwin(v17);
  v83 = &v74 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v74 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v74 - v25;
  __chkstk_darwin(v24);
  v88 = &v74 - v27;
  v86 = swift_projectBox();
  v28 = swift_projectBox();
  v29 = swift_projectBox();
  v30 = (*(*a1 + 104))(1);
  (*(*a1 + 96))(0);
  if (v31)
  {

    (*(*a1 + 120))(2);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v80 = v28;
      v34 = v88;
      v79 = *(v12 + 32);
      v79(v88, v10, v11);
      if ((v30 & 0x1FFFFFFFFLL) != 1)
      {
        (*(v12 + 8))(v34, v11);
        return 0;
      }

      v77 = v29;
      v35 = v86;
      swift_beginAccess();
      v36 = *(v12 + 16);
      v36(v26, v35, v11);
      v37 = v80;
      swift_beginAccess();
      v36(v23, v37, v11);
      Date.timeIntervalSinceReferenceDate.getter();
      v39 = v38;
      Date.timeIntervalSinceReferenceDate.getter();
      v78 = v12;
      if (v40 >= v39)
      {
        v45 = *(v12 + 8);
        v45(v23, v11);
        v45(v26, v11);
      }

      else
      {
        Date.timeIntervalSinceReferenceDate.getter();
        v42 = v41;
        Date.timeIntervalSinceReferenceDate.getter();
        v44 = v43;
        v45 = *(v12 + 8);
        v45(v23, v11);
        v45(v26, v11);
        if (v42 <= v44)
        {
          v32 = 1;
          v46 = v87;
          swift_beginAccess();
          *(v46 + 16) = 1;
          v47 = v81;
          v79(v81, v88, v11);
          (*(v78 + 56))(v47, 0, 1, v11);
          v48 = v77;
          swift_beginAccess();
          sub_1000BECD4(v47, v48);
          return v32;
        }
      }

      v49 = v87;
      swift_beginAccess();
      if ((*(v49 + 16) & 1) == 0)
      {
        v45(v88, v11);
        return 0;
      }

      v50 = v86;
      swift_beginAccess();
      v51 = v83;
      v36(v83, v50, v11);
      v52 = v80;
      swift_beginAccess();
      v75 = v36;
      v76 = v45;
      v53 = v36;
      v55 = v78 + 40;
      v54 = *(v78 + 40);
      v54(v52, v51, v11);
      swift_beginAccess();
      v56 = v82;
      v53(v82, v50, v11);
      v57 = v76;
      Date.advanced(by:)();
      v82 = (v55 - 32);
      v57(v56, v11);
      swift_beginAccess();
      v54(v50, v51, v11);
      v58 = v87;
      swift_beginAccess();
      *(v58 + 16) = 0;
      swift_beginAccess();
      v59 = v85;
      v60 = v75;
      v75(v85, v50, v11);
      v61 = v80;
      swift_beginAccess();
      v62 = v84;
      v60(v84, v61, v11);
      v63 = v88;
      Date.timeIntervalSinceReferenceDate.getter();
      v65 = v64;
      Date.timeIntervalSinceReferenceDate.getter();
      if (v66 >= v65)
      {
        v57(v62, v11);
        v57(v59, v11);
      }

      else
      {
        Date.timeIntervalSinceReferenceDate.getter();
        v68 = v67;
        Date.timeIntervalSinceReferenceDate.getter();
        v70 = v69;
        v57(v62, v11);
        v57(v59, v11);
        if (v68 <= v70)
        {
          v32 = 1;
          v71 = v87;
          swift_beginAccess();
          *(v71 + 16) = 1;
          v72 = v81;
          v79(v81, v63, v11);
          (*(v78 + 56))(v72, 0, 1, v11);
          v73 = v77;
          swift_beginAccess();
          sub_1000BECD4(v72, v73);
          return v32;
        }
      }

      v57(v63, v11);
      return 1;
    }

    sub_1000BEC3C(v10);
  }

  return 0;
}

uint64_t sub_1000B9D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  type metadata accessor for AggregateElementInfo();
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1000B9DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(*a1 + 104))(1);
  v16 = (*(*a1 + 96))(0);
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v28 = v16;
  (*(*a1 + 120))(2);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_1000BEC3C(v10);
    return 0;
  }

  (*(v12 + 32))(v14, v10, v11);
  if ((v15 & 0x1FFFFFFFFLL) == 1)
  {

    v20 = sub_1000BD108(v14, a4);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(a5 + 16);
    *(a5 + 16) = 0x8000000000000000;
    sub_1000BC5EC(1, v20, isUniquelyReferenced_nonNull_native);
    *(a5 + 16) = v30;
    swift_endAccess();
    (*(v12 + 8))(v14, v11);
    return 1;
  }

  else
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v24 = 136446210;
      v26 = sub_1000999E4(v28, v18, v31);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failure found for element %{public}s when checking on-by-default eligibility", v24, 0xCu);
      sub_10009A9E8(v25);
    }

    else
    {
    }

    (*(v12 + 8))(v14, v11);
    v27 = v29;
    swift_beginAccess();
    result = 0;
    *(v27 + 16) = 1;
  }

  return result;
}

uint64_t sub_1000BA1B4(uint64_t a1, uint64_t a2)
{
  sub_100095820(&qword_100387710, &qword_1002D6E30);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1000BA2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return (_swift_task_switch)(sub_1000BA2D8, 0, 0);
}

uint64_t sub_1000BA2D8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v7 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v7;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  OS_dispatch_queue.sync<A>(execute:)();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000BA3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return (_swift_task_switch)(sub_1000BA3DC, 0, 0);
}

uint64_t sub_1000BA3DC()
{
  v1 = *(v0 + 48);
  v6 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v6;
  *(v3 + 40) = v2;
  sub_100095820(&qword_100383FB0, &unk_1002D6690);
  OS_dispatch_queue.sync<A>(execute:)();

  v4 = *(v0 + 8);

  return v4();
}

void sub_1000BA4C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v12 = __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v17 = *(a1 + 24);
  sub_10009AEC4();
  if (!v5)
  {
    v19 = v18;
    v54 = v17;
    v55 = v14;
    v59 = 0;
    v20 = a3;
    v21 = *(*v18 + 104);
    v52 = a2;
    v53 = v20;
    (v21)(0);
    v22 = [a4 code];
    if (v22 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v22 <= 0x7FFFFFFF)
    {
      v56 = a5;
      (*(*v19 + 112))(1, v22);
      v23 = [a4 domain];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = a4;
      v26 = v25;

      v21(2, v24, v26);

      v27 = swift_allocBox();
      v29 = v28;
      v30 = type metadata accessor for Date();
      v31 = *(v30 - 8);
      v32 = *(v31 + 56);
      v57 = v29;
      v58 = v30;
      v32(v29, 1, 1);
      v33 = *(*v19 + 152);

      v34 = v59;
      v33(sub_1000BECAC, v27);
      v59 = v34;
      if (v34)
      {

        return;
      }

      v49 = v32;
      v50 = v27;

      v35 = v57;
      swift_beginAccess();
      sub_1000AB050(v35, v16, &qword_100383FB0, &unk_1002D6690);
      v48 = v31;
      v36 = *(v31 + 48);
      v37 = v58;
      v38 = v36(v16, 1, v58);
      sub_1000BEC3C(v16);
      if (v38 == 1)
      {
        v39 = v59;
        sub_10009AEC4();
        if (v39)
        {

          return;
        }

        v43 = v40;
        (*(*v40 + 104))(0, v52, v53);
        v44 = swift_allocObject();
        v45 = v51;
        *(v44 + 16) = v51;
        *(v44 + 24) = v50;
        v46 = *(*v43 + 152);

        v47 = v45;
        v46(sub_1000BECCC, v44);
        v59 = 0;

        sub_1000AB050(v35, v56, &qword_100383FB0, &unk_1002D6690);
        goto LABEL_11;
      }

      v41 = v55;
      sub_1000AB050(v35, v55, &qword_100383FB0, &unk_1002D6690);
      if (v36(v41, 1, v37) != 1)
      {

        v42 = v56;
        (*(v48 + 32))(v56, v41, v37);
        (v49)(v42, 0, 1, v37);
LABEL_11:

        return;
      }

LABEL_16:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_1000BA9FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = swift_projectBox();
  (*(*a1 + 120))(0);
  swift_beginAccess();
  return sub_1000BECD4(v5, v6);
}

uint64_t sub_1000BAAD4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = swift_projectBox();
  v9 = (*(*a1 + 128))(1);
  if (v10 >> 60 == 15)
  {
    return 0;
  }

  v11 = v9;
  v12 = v10;
  v13 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v38[0] = 0;
  v15 = [v13 JSONObjectWithData:isa options:0 error:v38];

  if (v15)
  {
    v16 = *&v38[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100095820(&unk_100384D80, &qword_1002D6E48);
    if (swift_dynamicCast())
    {
      v17 = *&v37[0];
      if (*(*&v37[0] + 16))
      {
        v18 = sub_10000574C(0x6E69616D6F64, 0xE600000000000000);
        if (v19)
        {
          sub_10009AA34(*(v17 + 56) + 32 * v18, v37);
          sub_10009C6AC(v37, v38);
          swift_dynamicCast();
          if (*(v17 + 16))
          {
            v34 = v8;
            v21 = v35;
            v20 = v36;
            v22 = sub_10000574C(1701080931, 0xE400000000000000);
            if (v23)
            {
              sub_10009AA34(*(v17 + 56) + 32 * v22, v37);

              sub_10009C6AC(v37, v38);
              swift_dynamicCast();
              v33 = v35;
              v24 = [a2 domain];
              v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v27 = v26;

              if (v21 == v25 && v20 == v27)
              {

                v28 = v34;
              }

              else
              {
                v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v28 = v34;
                if ((v30 & 1) == 0)
                {
                  goto LABEL_18;
                }
              }

              v31 = [a2 code];
              if (v33 == v31)
              {
                (*(*a1 + 120))(0);
                sub_10009A9D4(v11, v12);
                swift_beginAccess();
                sub_1000BECD4(v7, v28);
                return 0;
              }

LABEL_18:
              sub_10009A9D4(v11, v12);
              return 1;
            }

LABEL_22:
            __break(1u);
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_21;
    }

    sub_10009A9D4(v11, v12);
  }

  else
  {
    v29 = *&v38[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10009A9D4(v11, v12);
  }

  return 0;
}

uint64_t sub_1000BAEC8(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = result;
    result = sub_10000574C(0x6E69616D6F64, 0xE600000000000000);
    if (v4)
    {
      sub_10009AA34(*(a2 + 56) + 32 * result, &v21);
      result = swift_dynamicCast();
      if (result)
      {
        if (!*(a2 + 16))
        {
        }

        v5 = sub_10000574C(1701080931, 0xE400000000000000);
        if ((v6 & 1) == 0)
        {
        }

        sub_10009AA34(*(a2 + 56) + 32 * v5, &v21);
        if ((swift_dynamicCast() & 1) == 0)
        {
        }

        v21 = v19;
        v22 = v20;
        v7._countAndFlagsBits = 45;
        v7._object = 0xE100000000000000;
        String.append(_:)(v7);
        v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v8);

        v10 = v21;
        v9 = v22;
        v11 = *v3;
        if (*(*v3 + 16) && (sub_10000574C(v21, v22), (v12 & 1) != 0))
        {
          if (!*(v11 + 16))
          {
          }

          result = sub_10000574C(v10, v9);
          if ((v13 & 1) == 0)
          {
          }

          v14 = *(*(v11 + 56) + 8 * result);
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
            return result;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = *v3;
          v17 = v15;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = *v3;
          v17 = 1;
        }

        sub_1000BC718(v17, v10, v9, isUniquelyReferenced_nonNull_native);

        *v3 = v21;
        if (*(a2 + 16))
        {
          result = sub_10000574C(0x646C696863, 0xE500000000000000);
          if (v18)
          {
            sub_10009AA34(*(a2 + 56) + 32 * result, &v21);
            sub_100095820(&unk_100384D80, &qword_1002D6E48);
            result = swift_dynamicCast();
            if (result)
            {
              sub_1000BAEC8(v3, v19);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000BB13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100095820(&qword_100384530, &qword_1002D6E50);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1000BB1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*a1 + 96))(0);
  if (!v9)
  {
    return 0;
  }

  v10 = v8;
  v11 = v9;
  v12 = (*(*a1 + 104))(1);
  if ((v12 & 0x100000000) == 0)
  {
    v13 = v12;
    if (v12)
    {
      v35 = v10;
      v36 = v11;
      v14._countAndFlagsBits = 45;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      LODWORD(v34) = v13;
      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      v17 = v35;
      v16 = v36;
      swift_beginAccess();
      v18 = *(a2 + 16);
      if (*(v18 + 16) && (v19 = sub_10000574C(v17, v16), (v20 & 1) != 0))
      {
        v21 = *(*(v18 + 56) + 8 * v19);
      }

      else
      {
        v21 = 0;
      }

      swift_endAccess();
      if (__OFADD__(v21, 1))
      {
        __break(1u);
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(a2 + 16);
      *(a2 + 16) = 0x8000000000000000;
      sub_1000BC718(v21 + 1, v17, v16, isUniquelyReferenced_nonNull_native);

      *(a2 + 16) = v34;
      swift_endAccess();
      return 1;
    }
  }

  static String.Encoding.utf8.getter();
  v22 = String.data(using:allowLossyConversion:)();
  v24 = v23;

  (*(v5 + 8))(v7, v4);
  if (v24 >> 60 == 15)
  {
    return 0;
  }

  sub_1000BEA10(_swiftEmptyArrayStorage);

  v27 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v35 = 0;
  v29 = [v27 JSONObjectWithData:isa options:0 error:&v35];

  if (!v29)
  {
    v32 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10009A9D4(v22, v24);

    return 0;
  }

  v30 = v35;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100095820(&unk_100384D80, &qword_1002D6E48);
  if (swift_dynamicCast())
  {
    v31 = v34;
  }

  else
  {
    v31 = sub_1000BEA10(_swiftEmptyArrayStorage);
  }

  swift_beginAccess();
  sub_1000BAEC8(a2 + 16, v31);
  swift_endAccess();
  sub_10009A9D4(v22, v24);

  return 1;
}

uint64_t sub_1000BB5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_100095820(&qword_100384538, &qword_1002D6E58);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1000BB654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(*a1 + 104))(0);
  (*(*a1 + 120))(1);
  v14 = (*(v10 + 48))(v8, 1, v9);
  if (v14 == 1)
  {
    goto LABEL_9;
  }

  v15 = v13 & 0x1FFFFFFFFLL;
  (*(v10 + 32))(v12, v8, v9);
  v16 = sub_1000BD108(v12, a2);
  swift_beginAccess();
  v17 = *(a3 + 16);
  if (!*(v17 + 16) || (v18 = sub_1000BBDB4(v16), (v19 & 1) == 0))
  {
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(a3 + 16);
    *(a3 + 16) = 0x8000000000000000;
    v26 = 1;
    v27 = v15 == 1;
    v28 = v15 != 1;
LABEL_13:
    sub_1000BC87C(v26, v27, v28, v16, isUniquelyReferenced_nonNull_native);
    *(a3 + 16) = v29;
    swift_endAccess();
    (*(v10 + 8))(v12, v9);
    return v14 != 1;
  }

  v20 = (*(v17 + 56) + 24 * v18);
  v21 = *v20;
  v22 = v20[1];
  v8 = v20[2];
  result = swift_endAccess();
  if (__OFADD__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    if (v15 != 1)
    {
      v24 = __OFADD__(v8++, 1);
      if (!v24)
      {
        goto LABEL_12;
      }

      __break(1u);
LABEL_9:
      sub_1000BEC3C(v8);
      return v14 != 1;
    }

    v24 = __OFADD__(v22++, 1);
    if (!v24)
    {
LABEL_12:
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(a3 + 16);
      *(a3 + 16) = 0x8000000000000000;
      v26 = v21 + 1;
      v27 = v22;
      v28 = v8;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t KTEligibilityDB.deinit()
{

  v1 = OBJC_IVAR____TtC13transparencyd15KTEligibilityDB_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t KTEligibilityDB.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC13transparencyd15KTEligibilityDB_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

unint64_t sub_1000BBA90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for KTSwiftDB();
  return static KTSwiftDB.== infix(_:_:)(*(v2 + 24), *(v3 + 24)) & 1;
}

void *sub_1000BBAD8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100095820(&unk_100384678, &qword_1002D7170);
  v10 = *(type metadata accessor for Date() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Date() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000BBCB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095820(&qword_100384650, &qword_1002D7140);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_1000BBDB4(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1000BBDF8(a1, v2);
}

unint64_t sub_1000BBDF8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1000BBE64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100095820(&qword_100384670, &qword_1002D7168);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_1000BC0C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100095820(&qword_100384668, &qword_1002D7160);
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

uint64_t sub_1000BC368(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100095820(&qword_100384658, &qword_1002D7148);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v3;
    v36 = v5;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 24 * v20);
      v24 = v22[1];
      v23 = v22[2];
      v25 = *v22;
      result = static Hasher._hash(seed:_:)();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v25;
      v16[1] = v24;
      v16[2] = v23;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1000BC5EC(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000BBDB4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1000BC9C8();
    result = v17;
    goto LABEL_8;
  }

  sub_1000BBE64(v14, a3 & 1);
  result = sub_1000BBDB4(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000BC718(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10000574C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000BC0C8(v16, a4 & 1);
      result = sub_10000574C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000BCB14();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_1000BC87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1000BBDB4(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a5 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a5 & 1) == 0)
  {
    v21 = result;
    sub_1000BCC7C();
    result = v21;
    goto LABEL_8;
  }

  sub_1000BC368(v18, a5 & 1);
  result = sub_1000BBDB4(a4);
  if ((v19 & 1) == (v22 & 1))
  {
LABEL_8:
    v23 = *v6;
    if (v19)
    {
      v24 = (v23[7] + 24 * result);
      *v24 = a1;
      v24[1] = a2;
      v24[2] = a3;
      return result;
    }

    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a4;
    v25 = (v23[7] + 24 * result);
    *v25 = a1;
    v25[1] = a2;
    v25[2] = a3;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000BC9C8()
{
  v1 = v0;
  sub_100095820(&qword_100384670, &qword_1002D7168);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000BCB14()
{
  v1 = v0;
  sub_100095820(&qword_100384668, &qword_1002D7160);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_1000BCC7C()
{
  v1 = v0;
  sub_100095820(&qword_100384658, &qword_1002D7148);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *v17;
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = *(v4 + 56) + 24 * v14;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1000BCDE0(uint64_t result)
{
  if ((result - 19) < 0xFFFFFFFFFFFFFFEELL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1000BCE18()
{
  result = qword_100385760;
  if (!qword_100385760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100385760);
  }

  return result;
}

unint64_t sub_1000BCE6C()
{
  result = qword_100384518;
  if (!qword_100384518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100384518);
  }

  return result;
}

unint64_t sub_1000BCEB8()
{
  result = qword_100384C00;
  if (!qword_100384C00)
  {
    sub_1000967DC(&qword_100384520, &qword_1002D74D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384C00);
  }

  return result;
}

void sub_1000BCF38()
{
  sub_10009AE38();
  if (!v0)
  {
    sub_10009AE38();
  }
}

uint64_t sub_1000BCFBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000BCFD4()
{
  v2 = *(v0 + 24);
  sub_10009AEC4();
  if (!v1)
  {
    v4 = v3;
    v5 = (*(*v3 + 128))(0, v2);
    if ((*(*v4 + 160))(v5))
    {

      sub_1000BCE18();
      swift_allocError();
      *v6 = 4;
      swift_willThrow();
    }

    else
    {
      (*(*v4 + 96))();
    }
  }
}

unint64_t sub_1000BD108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 < 2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(type metadata accessor for Date() - 8);
  v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v5 + 72);
  while (Date.compare(_:)() != -1 && Date.compare(_:)())
  {
    if (v2 - 2 == v4)
    {
      return v2 - 1;
    }

    ++v4;
    v6 += v7;
    if (v2 == v4)
    {
      __break(1u);
      return 0;
    }
  }

  return v4;
}

void *sub_1000BD1EC(uint64_t a1, double a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v27 = v23 - v9;
  __chkstk_darwin(v8);
  v11 = v23 - v10;
  result = Date.init()();
  v13 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v13 < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v14 = 0;
  v26 = v4 + 8;
  v23[1] = v4 + 32;
  v24 = (v4 + 16);
  v15 = _swiftEmptyArrayStorage;
  v25 = v7;
  while (1)
  {
    v16 = v27;
    Date.advanced(by:)();
    (*v24)(v7, v16, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1000BBAD8(0, v15[2] + 1, 1, v15);
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1000BBAD8((v17 > 1), v18 + 1, 1, v15);
    }

    v19 = *(v4 + 8);
    v19(v11, v3);
    v15[2] = v18 + 1;
    v20 = v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18;
    v21 = *(v4 + 32);
    v7 = v25;
    v21(v20, v25, v3);
    result = (v21)(v11, v27, v3);
    if (v13 == v14)
    {
      break;
    }

    if (__OFADD__(v14++, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  v19(v11, v3);
  return v15;
}

void sub_1000BD494(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  sub_10009AEC4();
  if (!v2)
  {
    v51 = a1;
    v12 = *(*v11 + 104);
    v13 = v11;
    v56 = 0;
    v12(0, v5, v7);
    (*(*v13 + 128))(1, v6);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1000BE834(_swiftEmptyArrayStorage);
    v15 = v14 + 16;
    v16 = sub_1000BD1EC(v8, v9);
    v52 = v5;
    v53 = v7;
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v18 = (v17 + 16);
    v50 = v8;
    v19 = swift_allocObject();
    v19[2] = v4;
    v19[3] = v17;
    v19[4] = v16;
    v19[5] = v14;
    v20 = *(*v13 + 152);

    v20(sub_1000BED44, v19);

    if (v56)
    {

      return;
    }

    swift_beginAccess();
    v21 = v14 + 16;
    v22 = *v15;
    v23 = *(*v15 + 16);
    v24 = v23 / v50 * 100.0;
    swift_beginAccess();
    v25 = *v18;
    if (v23)
    {
      v26 = sub_1000BBDB4(0);
      v27 = v52;
      if (v28)
      {
        v29 = *(*(v22 + 56) + v26);
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
      v27 = v52;
    }

    v30 = type metadata accessor for AggregateElementInfo();
    v31 = objc_allocWithZone(v30);
    v32 = &v31[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_element];
    *v32 = v27;
    v32[1] = v53;
    *&v31[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_samples] = v50;
    v31[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_success] = 0;
    v31[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasFailures] = v25;
    v31[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_hasMostRecentSuccess] = v29;
    *&v31[OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_presentRate] = v24;
    v55.receiver = v31;
    v55.super_class = v30;

    v33 = objc_msgSendSuper2(&v55, "init");
    if (*v18)
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Found failures, returning aggregate result of false", v36, 2u);
      }

      goto LABEL_25;
    }

    swift_beginAccess();
    v37 = *v21;
    if (*(*v21 + 16) && (v38 = sub_1000BBDB4(0), (v39 & 1) != 0))
    {
      v40 = *(*(v37 + 56) + v38);
      swift_endAccess();
      if (v40)
      {
        if (v24 < v10)
        {

          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.error.getter();

          v43 = v41;
          if (!os_log_type_enabled(v41, v42))
          {

            goto LABEL_25;
          }

          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v54[0] = v45;
          *v44 = 134218242;
          *(v44 + 4) = v24;
          *(v44 + 12) = 2082;
          *(v44 + 14) = sub_1000999E4(v52, v53, v54);
          v46 = v43;
          _os_log_impl(&_mh_execute_header, v43, v42, "Present rate of %f is too low for element %{public}s. Returning aggregate result of false", v44, 0x16u);
          sub_10009A9E8(v45);

          goto LABEL_23;
        }

        (*((swift_isaMask & *v33) + 0x88))(1);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v46, v47))
        {
          goto LABEL_24;
        }

        v48 = swift_slowAlloc();
        *v48 = 0;
        v49 = "Returning aggregate result of true";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v46, v47, v49, v48, 2u);
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      swift_endAccess();
    }

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v46, v47))
    {
LABEL_24:

LABEL_25:

      *v51 = v33;
      return;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "Most recent sample is missing, returning aggregate result of false";
    goto LABEL_22;
  }
}

void sub_1000BDA9C(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_10009AEC4();
  if (!v2)
  {
    v7 = v6;
    v8 = (*(*v6 + 104))(0, v4, v5);
    v9 = (*(*v7 + 160))(v8);
    if (v9)
    {
      v10 = *(*v9 + 96);

      v11 = v10(0);
      if (v12)
      {
        v13 = v11;
        v14 = v12;
        (*(*v7 + 96))();

        *a1 = v13;
        a1[1] = v14;
      }

      else
      {
        sub_1000BCE18();
        swift_allocError();
        *v15 = 3;
        swift_willThrow();
      }
    }

    else
    {

      *a1 = 0;
      a1[1] = 0;
    }
  }
}

void sub_1000BDC64()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 80);
  sub_10009AEC4();
  if (v1)
  {
    return;
  }

  v11 = v10;
  v16 = v5;
  v12 = *(*v10 + 104);
  v12(0, v3, v4);
  v13 = *(*v11 + 112);
  v13(1, v2);
  v14 = (*(*v11 + 128))(2, v6);
  if (v8)
  {
    v14 = v12(3, v16, v8);
  }

  if ((v9 & 1) == 0)
  {
    if (v7 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v7 <= 0x7FFFFFFF)
    {
      v14 = (v13)(4);
      goto LABEL_8;
    }

    __break(1u);
    return;
  }

LABEL_8:
  if ((*(*v11 + 160))(v14))
  {

    sub_1000BCE18();
    swift_allocError();
    *v15 = 4;
    swift_willThrow();
  }

  else
  {
    (*(*v11 + 96))();
  }
}

void sub_1000BDE6C()
{
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  sub_10009AEC4();
  if (!v1)
  {
    v7 = v6;
    v8 = *(*v6 + 104);
    v8(0, v2, v4);
    v9 = v8(1, v3, v5);
    if ((*(*v7 + 160))(v9))
    {

      sub_1000BCE18();
      swift_allocError();
      *v10 = 4;
      swift_willThrow();
    }

    else
    {
      (*(*v7 + 96))();
    }
  }
}

void sub_1000BDFDC(void *a1@<X8>)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  sub_10009AEC4();
  if (!v2)
  {
    v9 = v8;
    (*(*v8 + 104))(0, v5, v7);
    (*(*v9 + 128))(1, v6);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1000BE914(_swiftEmptyArrayStorage);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v4;
    v12 = *(*v9 + 152);

    v12(sub_1000BECA4, v11);

    swift_beginAccess();
    *a1 = *(v10 + 16);
  }
}

void sub_1000BE1A8(char **a1@<X8>)
{
  v5 = *(v1 + 2);
  v4 = *(v1 + 3);
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  sub_10009AEC4();
  if (!v2)
  {
    v11 = v10;
    v31 = a1;
    (*(*v10 + 104))(0, v4, v7);
    (*(*v11 + 128))(1, v6);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1000BEB40(_swiftEmptyArrayStorage);
    v13 = v12 + 16;
    v14 = sub_1000BD1EC(v8, v9);
    v15 = swift_allocObject();
    v15[2] = v5;
    v15[3] = v14;
    v15[4] = v12;
    v16 = *(*v11 + 152);

    v16(sub_1000BEC34, v15);

    if (v8 < 0)
    {
LABEL_33:
      __break(1u);
      return;
    }

    if (v8)
    {
      v17 = 0;
      v18 = _swiftEmptyArrayStorage;
      v19 = v31;
      while (1)
      {
        v20 = *(v18 + 2);
        if (v20 < v17)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v20 >= *(v18 + 3) >> 1)
        {
          v18 = sub_1000BBCB0(isUniquelyReferenced_nonNull_native, v20 + 1, 1, v18);
        }

        v22 = &v18[8 * v17];
        memmove(v22 + 40, v22 + 32, 8 * (*(v18 + 2) - v17));
        ++*(v18 + 2);
        *(v22 + 4) = 0;
        swift_beginAccess();
        v23 = *v13;
        if (*(*v13 + 16) && (v24 = sub_1000BBDB4(v17), (v25 & 1) != 0))
        {
          v26 = (*(v23 + 56) + 24 * v24);
          v28 = *v26;
          v27 = v26[1];
          v29 = v26[2];
          swift_endAccess();
          if (v29 <= 0)
          {
            v19 = v31;
            if (v27 >= 1)
            {
              if (v17 >= *(v18 + 2))
              {
                goto LABEL_32;
              }

              *(v22 + 4) = v27;
            }
          }

          else
          {
            v30 = round(v29 / v28 * 100.0);
            if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_27;
            }

            if (v30 <= -9.22337204e18)
            {
              goto LABEL_28;
            }

            if (v30 >= 9.22337204e18)
            {
              goto LABEL_29;
            }

            if (__OFADD__(v30, 1))
            {
              goto LABEL_30;
            }

            if (v17 >= *(v18 + 2))
            {
              goto LABEL_31;
            }

            *(v22 + 4) = -(v30 + 1);
            v19 = v31;
          }
        }

        else
        {
          swift_endAccess();
        }

        if (++v17 == v8)
        {

          *v19 = v18;
          return;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    *v31 = _swiftEmptyArrayStorage;
  }
}

unint64_t sub_1000BE558()
{
  result = qword_100384540;
  if (!qword_100384540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384540);
  }

  return result;
}

unint64_t sub_1000BE5B0()
{
  result = qword_100384548;
  if (!qword_100384548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384548);
  }

  return result;
}

unint64_t sub_1000BE608()
{
  result = qword_100384550;
  if (!qword_100384550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384550);
  }

  return result;
}

unint64_t sub_1000BE660()
{
  result = qword_100384558;
  if (!qword_100384558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384558);
  }

  return result;
}

uint64_t sub_1000BE6B8(uint64_t a1)
{
  result = sub_1000BE710(&qword_100384560, type metadata accessor for KTEligibilityDB, &protocol conformance descriptor for KTEligibilityDB);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000BE710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 initializeBufferWithCopyOfBuffer for BucketInfo(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BucketInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BucketInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_1000BE7E0()
{
  result = qword_100384648;
  if (!qword_100384648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384648);
  }

  return result;
}

unint64_t sub_1000BE834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100384670, &qword_1002D7168);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1000BBDB4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1000BE914(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100384668, &qword_1002D7160);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000574C(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000BEA10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100384A90, &unk_1002D7150);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000AB050(v4, &v13, &qword_100384660, &qword_1002D7640);
      v5 = v13;
      v6 = v14;
      result = sub_10000574C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10009C6AC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000BEB40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100384658, &qword_1002D7148);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1000BBDB4(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = (v3[7] + 24 * result);
      *v11 = v6;
      v11[1] = v7;
      v11[2] = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_1000BEC3C(uint64_t a1)
{
  v2 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BECD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BED84@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CloudOptInData(0) + 32);

  return sub_1000AB284(v3, a1);
}

uint64_t type metadata accessor for CloudOptInData(uint64_t a1)
{
  result = qword_100390270;
  if (!qword_100390270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BEE14()
{
  v1 = *(v0 + *(type metadata accessor for CloudOptInData(0) + 36));

  return v1;
}

uint64_t sub_1000BEE54()
{
  v1 = *(v0 + *(type metadata accessor for CloudOptInData(0) + 40));

  return v1;
}

uint64_t sub_1000BEE94()
{
  v1 = *v0;
  v2 = 0x444964726F636572;
  v3 = 0x6F6973726556736FLL;
  if (v1 != 5)
  {
    v3 = 0x6C6169726573;
  }

  v4 = 0x6574617473;
  if (v1 != 3)
  {
    v4 = 0x73656D6954746D73;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 6910581;
  if (v1 != 1)
  {
    v5 = 0x746163696C707061;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000BEF74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000CE058(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000BEF9C(uint64_t a1)
{
  v2 = sub_1000BF2C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BEFD8(uint64_t a1)
{
  v2 = sub_1000BF2C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BF014(void *a1)
{
  v3 = sub_100095820(&qword_100384688, &qword_1002D71A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000A0E50(a1, a1[3]);
  sub_1000BF2C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for CloudOptInData(0);
    v8[11] = 4;
    type metadata accessor for Date();
    sub_1000D24F0(&qword_100384690, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1000BF2C8()
{
  result = qword_100390160[0];
  if (!qword_100390160[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100390160);
  }

  return result;
}

uint64_t sub_1000BF31C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - v5;
  v7 = sub_100095820(&qword_100384698, &qword_1002D71A8);
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = type metadata accessor for CloudOptInData(0);
  __chkstk_darwin(v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v35 = a1;
  sub_1000A0E50(a1, v13);
  sub_1000BF2C8();
  v14 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10009A9E8(v35);
  }

  v15 = v6;
  v17 = v33;
  v16 = v34;
  v42 = 0;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v12 + 1) = v18;
  v31[1] = v18;
  v41 = 1;
  *(v12 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v12 + 3) = v19;
  v40 = 2;
  *(v12 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v12 + 5) = v20;
  v39 = 3;
  *(v12 + 6) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[56] = v21 & 1;
  type metadata accessor for Date();
  v38 = 4;
  sub_1000D24F0(&unk_100383FF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v10;
  sub_1000D1B4C(v15, &v12[*(v10 + 32)], &qword_100383FB0, &unk_1002D6690);
  v37 = 5;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = &v12[*(v10 + 36)];
  *v24 = v23;
  v24[1] = v25;
  v36 = 6;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v27;
  (*(v17 + 8))(v14, v16);
  v29 = &v12[*(v22 + 40)];
  *v29 = v26;
  v29[1] = v28;
  sub_1000BF818(v12, v32);
  sub_10009A9E8(v35);
  return sub_1000BF87C(v12);
}

uint64_t sub_1000BF818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudOptInData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BF87C(uint64_t a1)
{
  v2 = type metadata accessor for CloudOptInData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BF8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  v15 = type metadata accessor for CloudOptInData(0);
  result = sub_1000D1B4C(a10, a9 + v15[8], &qword_100383FB0, &unk_1002D6690);
  v17 = (a9 + v15[9]);
  *v17 = a11;
  v17[1] = a12;
  v18 = (a9 + v15[10]);
  *v18 = a13;
  v18[1] = a14;
  return result;
}

uint64_t sub_1000BF9A8()
{
  v0 = type metadata accessor for Logger();
  sub_100098130(v0, qword_100390148);
  sub_10009597C(v0, qword_100390148);
  return Logger.init(transparencyCategory:)(0x74706F64756F6C63, 0xEA00000000006E69);
}

id sub_1000BFA10()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 uri];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [v1 application];
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = objc_allocWithZone(KTOptInState);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithURI:v9 application:v7];

  v11 = [v1 state];
  if (v11)
  {
    v12 = v11;
    [v10 setState:{objc_msgSend(v11, "unsignedIntegerValue")}];
  }

  v13 = [v1 smtTimestamp];
  if (v13)
  {
    v14 = v13;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v15.super.isa = 0;
  }

  [v10 setSmtTimestamp:v15.super.isa];

  v16 = [v1 osVersion];
  [v10 setOsVersion:v16];

  v17 = [v1 serialNumber];
  [v10 setSerialNumber:v17];

  return v10;
}

void *sub_1000BFCBC()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void sub_1000BFD00(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t sub_1000BFDD0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

void *sub_1000BFE68(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = 0x6E4974704FLL;
  v10[3] = 0xE500000000000000;
  v10[9] = 0;
  v10[12] = 0xE100000000000000;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v10[7] = a4;
  v10[8] = a5;
  v10[10] = &_swiftEmptySetSingleton;
  v10[11] = 64;
  swift_beginAccess();
  v10[9] = 0;
  v11 = objc_allocWithZone(KTNearFutureScheduler);
  swift_unknownObjectRetain();
  swift_retain_n();
  v12 = a1;
  v13 = a2;
  v14 = a3;
  swift_unknownObjectRetain();
  v15 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1000C0294;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A31E0;
  aBlock[3] = &unk_1003202E8;
  v16 = _Block_copy(aBlock);
  v17 = [v11 initWithName:v15 initialDelay:2000000000 exponentialBackoff:3600000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v16 block:1.4];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v16);

  v18 = v10[9];
  v10[9] = v17;

  return v10;
}

void *sub_1000C0084(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[2] = 0x6E4974704FLL;
  v5[3] = 0xE500000000000000;
  v5[9] = 0;
  v5[12] = 0xE100000000000000;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a3;
  v5[7] = a4;
  v5[8] = a5;
  v5[10] = &_swiftEmptySetSingleton;
  v5[11] = 64;
  swift_beginAccess();
  v5[9] = 0;
  v9 = objc_allocWithZone(KTNearFutureScheduler);
  swift_unknownObjectRetain();
  swift_retain_n();
  v10 = a1;
  v11 = a2;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1000D2A2C;
  v19 = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A31E0;
  aBlock[3] = &unk_100320310;
  v14 = _Block_copy(aBlock);
  v15 = [v9 initWithName:v13 initialDelay:2000000000 exponentialBackoff:3600000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v14 block:1.4];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v14);

  v16 = v5[9];
  v5[9] = v15;

  return v5;
}