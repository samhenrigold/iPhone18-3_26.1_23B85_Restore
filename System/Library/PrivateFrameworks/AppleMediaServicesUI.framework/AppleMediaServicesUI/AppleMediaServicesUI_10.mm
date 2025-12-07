uint64_t sub_1000E5FB8(uint64_t a1, void *a2, void *a3)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000E6284(a2, *(a1 + 24));
  if (v3)
  {
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001E5F70;
    v20 = type metadata accessor for EngagementService();
    v19[0] = a3;
    v10 = a3;
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v19);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._object = 0x80000001001F7230;
    v13._countAndFlagsBits = 0xD000000000000023;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
    swift_getErrorValue();
    v20 = v18;
    v14 = sub_100017E64(v19);
    (*(*(v18 - 8) + 16))(v14);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(v19, &qword_10026D350);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    LogInterpolation.init(stringInterpolation:)();
    v16 = static os_log_type_t.info.getter();
    sub_1000036B0(v16, v9);

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1000E6284(void *a1, uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10007B9A4(&qword_10026C950, qword_1001EBE98);
  __chkstk_darwin(v42);
  v9 = &v39 - v8;
  v10 = *(a2 + 64);
  v40 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v39 = (v11 + 63) >> 6;
  v44 = "event destination: ";
  v41 = (v7 + 8);
  v51 = a2;

  v14 = 0;
  v15 = &type metadata for String;
  v43 = xmmword_1001E5F70;
  v45 = v9;
  while (1)
  {
    while (1)
    {
      if (!v13)
      {
        while (1)
        {
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
          }

          if (v16 >= v39)
          {
            break;
          }

          v13 = *(v40 + 8 * v16);
          ++v14;
          if (v13)
          {
            v14 = v16;
            goto LABEL_9;
          }
        }

        LOBYTE(v24) = 1;
        goto LABEL_20;
      }

LABEL_9:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = (*(v51 + 48) + ((v14 << 10) | (16 * v17)));
      v19 = *v18;
      v20 = v18[1];

      v50 = v19;
      v21 = String._bridgeToObjectiveC()();
      *&v55 = 0;
      v22 = [v49 valueForKeyPath:v21 exception:&v55];

      v52 = v55;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v23 = v15;
      if (swift_dynamicCast())
      {
        break;
      }

      v47 = v3;

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v46 = *(*(type metadata accessor for LogInterpolation() - 8) + 72);
      v30 = swift_allocObject();
      *(v30 + 16) = v43;
      v31 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for EngagementService();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v32._object = (v44 | 0x8000000000000000);
      v32._countAndFlagsBits = 0xD000000000000035;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
      *(&v56 + 1) = v15;
      *&v55 = v50;
      *(&v55 + 1) = v20;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A0C4(&v55, &qword_10026D350);
      v33._countAndFlagsBits = 0x747065637865202CLL;
      v33._object = 0xED0000203A6E6F69;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
      v34 = v52;
      if (v52)
      {
        *(&v56 + 1) = sub_100002BC0(0, &qword_10026C958, NSException_ptr);
        *&v55 = v34;
      }

      else
      {
        v55 = 0u;
        v56 = 0u;
      }

      v35 = v34;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A0C4(&v55, &qword_10026D350);
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
      LogInterpolation.init(stringInterpolation:)();
      v3 = v47;
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v37 = static os_log_type_t.debug.getter();
      sub_1000036B0(v37, v30);
    }

    v24 = v53;
    v25 = v54;
    v26 = v45;
    Regex<A>.init(_:)();
    if (v3)
    {
      break;
    }

    *&v55 = v24;
    *(&v55 + 1) = v25;
    v50 = sub_1000F104C();
    sub_1000140D0(&qword_10026C968, &qword_10026C950, qword_1001EBE98, &protocol conformance descriptor for Regex<A>);
    v27 = v42;
    v28 = BidirectionalCollection<>.contains<A>(_:)();
    v29 = v27;
    v15 = v23;
    (*v41)(v26, v29);

    if ((v28 & 1) == 0)
    {
      LOBYTE(v24) = 0;
LABEL_20:

      return v24 & 1;
    }
  }

  return v24 & 1;
}

void sub_1000E6878(id *a1, unint64_t *a2)
{
  v27 = *a1;
  v2 = *a2;
  v3 = sub_1000116AC(*a2);

  v4 = 4;
  while (1)
  {
    if (v4 - v3 == 4)
    {

      v18 = v27;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_100004004(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return;
    }

    v5 = v4 - 4;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v6 = *(v2 + 8 * v4);
    }

    v7 = v6;
    v8 = [v6 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = [v27 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v9 == v13 && v11 == v15)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_17;
    }

    ++v4;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_23;
    }
  }

LABEL_17:

  v19 = *a2;
  v20 = *a2 & 0xC000000000000001;
  sub_1000EF534(v4 - 4, v20 == 0, *a2);
  if (!v20)
  {
    v21 = *(v19 + 8 * v4);
    goto LABEL_19;
  }

LABEL_24:
  v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:
  v22 = v21;
  if ((*a2 & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v23 = *(*a2 + 8 * v4);
  }

  v24 = v23;
  v25 = [v23 components];

  [v22 setComponents:{objc_msgSend(v27, "components") | v25}];
}

uint64_t sub_1000E6AE8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_allocWithZone(AMSEngagementSyncRequest) init];
    sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1001E61B0;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;

    sub_1000E2000(v8, v7);
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001E5F70;
    v19 = type metadata accessor for EngagementService();
    v18[0] = v6;
    v10 = v6;
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v18);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v18, "Force syncing ");
    HIBYTE(v18[1]) = -18;
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    String.append(_:)(v15);
    v19 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_10000A0C4(v18, &qword_10026D350);
    v16 = static os_log_type_t.default.getter();
    sub_1000036B0(v16, v9);

    sub_1000627E8();
    v19 = type metadata accessor for SyncTaskScheduler();
    v20 = &protocol witness table for SyncTaskScheduler;
    sub_100017E64(v18);
    SyncTaskScheduler.init()();
    v14 = Promise.map<A>(on:_:)();

    sub_100002C00(v18);
  }

  else
  {
    sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
    sub_1000F0FF8();
    swift_allocError();
    *v13 = 1;
    return Promise.__allocating_init(error:)();
  }

  return v14;
}

uint64_t sub_1000E6E60(uint64_t *a1)
{
  v1 = a1[1];
  if (v1)
  {
    v29 = *a1;
    v30 = v1;
    v2 = *(a1 + 2);
    v3 = *(a1 + 3);
    v4 = *a1;
    v31 = *(a1 + 1);
    v32 = v2;
    v33 = v3;
    v28[0] = v4;
    v28[1] = v31;
    v28[2] = v2;
    v28[3] = v3;
    sub_10000F4A4(v28, &v26);
    result = sub_10018AA30();
    v6 = result;
    v7 = (result + 40);
    v25 = -*(result + 16);
    v8 = -1;
    while (1)
    {
      if (v25 + v8 == -1)
      {

        sub_10000A0C4(a1, &unk_10026C940);
        return 0;
      }

      if (++v8 >= *(v6 + 16))
      {
        break;
      }

      v9 = v7 + 2;
      v11 = *(v7 - 1);
      v10 = *v7;
      v12 = 0xE900000000000073;
      v13 = 0x636974796C616E61;
      switch(BYTE1(v29))
      {
        case 1:
          v12 = 0xE800000000000000;
          v13 = 0x6C616E7265746E69;
          break;
        case 2:
          v12 = 0xE800000000000000;
          v13 = 0x7379656E72756F6ALL;
          break;
        case 3:
          v13 = 0x6E656D6D6F636572;
          v12 = 0xEF736E6F69746164;
          break;
        default:
          break;
      }

      v26 = v13;
      v27 = v12;

      v14._countAndFlagsBits = 46;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v16 = v26;
      v15 = v27;
      v17 = sub_100027970();
      v19 = v18;
      v26 = v16;
      v27 = v15;

      v20._countAndFlagsBits = v17;
      v20._object = v19;
      String.append(_:)(v20);

      if (v11 == v26 && v10 == v27)
      {

LABEL_18:

        sub_10000A0C4(a1, &unk_10026C940);
        return 1;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v7 = v9;
      if (v22)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = sub_10018AA30()[2];

    return v23 != 0;
  }

  return result;
}

void *sub_1000E70F4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v119 = a2;
  v120 = a3;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v139 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v136 = v10;
  v137 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v127 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v135 = &v108 - v14;
  Date.init()();
  v15 = AMSLogKey();
  if (!v15)
  {
    v15 = AMSGenerateLogCorrelationKey();
  }

  v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v132 = v16;

  if (qword_100268830 != -1)
  {
LABEL_38:
    swift_once();
  }

  sub_100011C54(0xD000000000000013, 0x80000001001F61B0);
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  v122 = qword_100287850;
  v17 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v18 = *(type metadata accessor for LogInterpolation() - 8);
  v19 = *(v18 + 80);
  v20 = (v19 + 32) & ~v19;
  v121 = *(v18 + 72);
  v117 = v19;
  v118 = v17;
  v115 = v20 + 2 * v121;
  v21 = swift_allocObject();
  v114 = xmmword_1001E5F70;
  *(v21 + 16) = xmmword_1001E5F70;
  v116 = v20;
  v113 = type metadata accessor for EngagementService();
  *&v149 = v113;
  v147 = v4;
  v143 = v4;
  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v147);
  LogInterpolation.init(stringLiteral:)();
  v24 = static os_log_type_t.debug.getter();
  sub_1000036B0(v24, v21);

  v158 = _swiftEmptyArrayStorage;
  v157 = _swiftEmptyArrayStorage;
  v147 = a1;

  a1 = 0;
  sub_100027804(&v147);
  v4 = 0;
  v25 = v147;
  v111 = "Scheduling request";
  v112 = OBJC_IVAR____TtC14amsengagementd17EngagementService_priorityQueue;
  v110 = ", allowsResponse: ";
  v124 = v12 + 7;
  v125 = v137 + 16;
  v123 = v137 + 32;
  v129 = enum case for DispatchQoS.QoSClass.default(_:);
  v128 = (v8 + 104);
  v130 = (v8 + 8);
  v26 = _swiftEmptyArrayStorage;
  v109 = _swiftEmptyArrayStorage;
  v126 = v147;
LABEL_9:
  v27 = (v4 << 6) | 0x20;
  while (1)
  {
    v28 = *(v25 + 16);
    if (v4 == v28)
    {
      break;
    }

    if (v4 >= v28)
    {
      __break(1u);
      goto LABEL_38;
    }

    v140 = v27;
    v29 = *(v25 + v27);
    v30 = *(v25 + v27 + 16);
    v31 = *(v25 + v27 + 32);
    v152[3] = *(v25 + v27 + 48);
    v152[1] = v30;
    v152[2] = v31;
    v152[0] = v29;
    v148 = *(v25 + v27);
    v149 = *(v25 + v27 + 16);
    v150 = *(v25 + v27 + 32);
    v151 = *(v25 + v27 + 48);
    v165 = v150;
    v166 = v151;
    v163 = v148;
    v164 = v149;
    v155 = v150;
    v156 = v151;
    v153 = v148;
    v154 = v149;
    v145 = v131;
    v146 = v132;

    sub_10000F4A4(v152, &v147);
    v32._countAndFlagsBits = 95;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v34 = v145;
    v33 = v146;
    v147 = v4;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v147 = v34;
    *&v148 = v33;

    v38._countAndFlagsBits = v35;
    v38._object = v37;
    String.append(_:)(v38);

    v39 = v148;
    v40 = v166;
    v142 = v4;
    v144 = v147;
    if (v166 && v166 != 1)
    {
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v167[0] = v153;
    v167[1] = v154;
    v167[2] = v155;
    v167[3] = v156;
    sub_10000F4A4(&v163, &v147);
    v42 = sub_1000E6E60(v167);
    sub_10000FF10(&v163);
    if (v42)
    {
      sub_10007B9A4(&qword_10026C860, &qword_1001EBC88);
      v43 = String._bridgeToObjectiveC()();
      v44 = String._bridgeToObjectiveC()();
      v45 = AMSError();

      v141 = Promise.__allocating_init(error:)();
      v46 = v143;
      goto LABEL_25;
    }

LABEL_19:
    v47 = swift_allocObject();
    *(v47 + 16) = v114;
    *&v149 = v113;
    v147 = v143;
    v48 = v143;

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v147);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v49._countAndFlagsBits = 0x6E69756575716E45;
    v49._object = 0xEA00000000002067;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v49);
    v141 = v48;
    if (v40)
    {
      if (v40 == 1)
      {
        v50 = 0x696577746867696CLL;
        v51 = 0xEF636E7953746867;
      }

      else
      {
        v51 = 0xE400000000000000;
        v50 = 1668184435;
      }
    }

    else
    {
      v51 = 0xE700000000000000;
      v50 = 0x65756575716E65;
    }

    *&v149 = &type metadata for String;
    v147 = v50;
    *&v148 = v51;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v147, &qword_10026D350);
    v52._countAndFlagsBits = 0x7473657571657220;
    v52._object = 0xEF203A7070612820;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v52);
    *&v149 = &unk_1002471C0;
    v138 = BYTE1(v163);
    LOBYTE(v147) = BYTE1(v163);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v147, &qword_10026D350);
    v53._object = (v111 | 0x8000000000000000);
    v53._countAndFlagsBits = 0xD000000000000012;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v53);
    *&v149 = &type metadata for Bool;
    LOBYTE(v147) = v163;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v147, &qword_10026D350);
    v54._countAndFlagsBits = 0x69726F697270202CLL;
    v54._object = 0xEC000000203A7974;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v54);
    v55 = sub_100027970();
    *&v149 = &type metadata for String;
    v147 = v55;
    *&v148 = v56;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v147, &qword_10026D350);
    v57._countAndFlagsBits = 41;
    v57._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v57);
    LogInterpolation.init(stringInterpolation:)();
    v58 = static os_log_type_t.default.getter();
    sub_1000036B0(v58, v47);

    v46 = v143;
    v59 = sub_100027970();
    v61 = v60;
    v62 = swift_allocObject();
    v63 = v141;
    v64 = v144;
    *(v62 + 16) = v141;
    *(v62 + 24) = v64;
    *(v62 + 32) = v39;
    *(v62 + 40) = v40;
    v65 = v164;
    *(v62 + 48) = v163;
    *(v62 + 64) = v65;
    v66 = v166;
    *(v62 + 80) = v165;
    *(v62 + 96) = v66;
    v67 = v120;
    *(v62 + 112) = v119;
    *(v62 + 120) = v67;
    v68 = v63;
    sub_10000F4A4(&v163, &v147);

    sub_100027C4C(v138, v59, v61, v159);
    v141 = sub_1000EDBDC(v159, sub_10002D0B8, v62);
    v162 = *&v159[8];
    sub_100027DE8(&v162);
    v161 = v160;
    sub_100027DE8(&v161);

LABEL_25:
    v69 = v136;
    v70 = v137;
    v71 = v127;
    (*(v137 + 16))(v127, v135, v136);
    v72 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v73 = (v124 + v72) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    (*(v70 + 32))(v74 + v72, v71, v69);
    *(v74 + v73) = v46;
    v75 = (v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v75 = v144;
    v75[1] = v39;
    v76 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v78 = v133;
    v77 = v134;
    (*v128)(v133, v129, v134);
    v79 = v46;
    v8 = v141;

    v80 = static OS_dispatch_queue.global(qos:)();
    (*v130)(v78, v77);
    *&v149 = v76;
    *(&v149 + 1) = &protocol witness table for OS_dispatch_queue;
    v147 = v80;
    v81 = swift_allocObject();
    *(v81 + 16) = sub_100060194;
    *(v81 + 24) = v74;
    v82 = objc_allocWithZone(NSLock);
    v83 = v80;

    v84 = [v82 init];
    v12 = swift_allocObject();
    *(v12 + 16) = v84;
    *(v12 + 24) = v81;
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    *(v85 + 24) = v81;
    v86 = v84;
    swift_retain_n();
    v87 = v86;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(&v147);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    a1 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1 >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = v158;
    v88 = v142;
    v25 = v126;
    if (v163)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      a1 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1 >= *((v157 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v4 = v88 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v109 = v157;
      sub_10000FF10(&v163);
      goto LABEL_9;
    }

    sub_10000FF10(&v163);
    v27 = v140 + 64;
    v4 = v88 + 1;
  }

  v89 = v109;
  if (!sub_1000116AC(v109))
  {
    goto LABEL_36;
  }

  if ((v89 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_36:

    v144 = sub_1000E4344(v90);

    v91 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v92 = swift_allocObject();
    v94 = v131;
    v93 = v132;
    v92[2] = v91;
    v92[3] = v94;
    v92[4] = v93;
    v95 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v97 = v133;
    v96 = v134;
    (*v128)(v133, v129, v134);
    v98 = static OS_dispatch_queue.global(qos:)();
    (*v130)(v97, v96);
    *&v149 = v95;
    *(&v149 + 1) = &protocol witness table for OS_dispatch_queue;
    v147 = v98;
    v99 = swift_allocObject();
    *(v99 + 16) = sub_1000F0610;
    *(v99 + 24) = v92;
    v100 = objc_allocWithZone(NSLock);
    v101 = v98;

    v102 = [v100 init];
    v103 = swift_allocObject();
    *(v103 + 16) = v102;
    *(v103 + 24) = v99;
    v104 = swift_allocObject();
    *(v104 + 16) = v102;
    *(v104 + 24) = v99;
    v105 = v102;
    swift_retain_n();
    v106 = v105;
    Promise.then(perform:orCatchError:on:)();

    (*(v137 + 8))(v135, v136);

    sub_100002C00(&v147);
    return v26;
  }

  else
  {
    if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_36;
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1000E808C()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  sub_1000060D0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000E8174()
{
  sub_100004768();
  if (qword_100268830 != -1)
  {
    swift_once();
  }

  sub_100004810();
  sub_1001AE448(0xD000000000000013, v0);
  sub_100002D8C();

  return v1();
}

void sub_1000E8214(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v51 = a2;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LogInterpolation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v50 = v6;
    memset(v56, 0, sizeof(v56));
    v12 = sub_1000E6E60(v56);
    v13 = &v11[OBJC_IVAR____TtC14amsengagementd17EngagementService_engineReleaseToken];
    v14 = *&v11[OBJC_IVAR____TtC14amsengagementd17EngagementService_engineReleaseToken + 8];
    if (v14)
    {
      if (*v13 == v51 && v14 == a3)
      {
        if (v12)
        {
          goto LABEL_8;
        }
      }

      else if (v12 & 1 | ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
        goto LABEL_8;
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v23 = *(v7 + 72);
      v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1001E5F60;
      v51 = v24;
      v55 = type metadata accessor for EngagementService();
      v52 = v11;
      v11 = v11;
      v26 = AMSLogKey();
      if (v26)
      {
        v27 = v26;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v52);
      v55 = &type metadata for String;
      v52 = 0xD000000000000018;
      v53 = 0x80000001001F7170;
      static LogInterpolation.safe(_:)();
      sub_10000A0C4(&v52, &qword_10026D350);
      LogInterpolation.init(stringLiteral:)();
      if (qword_1002686F0 != -1)
      {
        swift_once();
      }

      v32 = qword_100287850;
      v33 = static os_log_type_t.debug.getter();
      v34 = *(v32 + 16);
      if (os_log_type_enabled(v34, v33))
      {
        v52 = 0;
        v53 = 0xE000000000000000;
        _StringGuts.grow(_:)(45);

        v52 = 0xD000000000000015;
        v53 = 0x80000001001F71B0;
        if (v13[1])
        {
          v35 = *v13;
          v36 = v13[1];
        }

        else
        {
          v36 = 0xE400000000000000;
          v35 = 1701736302;
        }

        v37._countAndFlagsBits = v35;
        v37._object = v36;
        String.append(_:)(v37);

        v38._countAndFlagsBits = 0xD000000000000013;
        v38._object = 0x80000001001F71D0;
        String.append(_:)(v38);
        v39._countAndFlagsBits = 0x65736C6166;
        v39._object = 0xE500000000000000;
        String.append(_:)(v39);
        v40._countAndFlagsBits = 41;
        v40._object = 0xE100000000000000;
        String.append(_:)(v40);
        v55 = &type metadata for String;
        static LogInterpolation.safe(_:)();
        sub_10000A0C4(&v52, &qword_10026D350);
        v41 = *(v25 + 16);
        if (v41 >= *(v25 + 24) >> 1)
        {
          sub_1000D5C7C();
          v25 = v48;
        }

        *(v25 + 16) = v41 + 1;
        (*(v7 + 32))(v25 + v51 + v41 * v23, v9, v50);
        v34 = *(v32 + 16);
      }

      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v42))
      {
        v43 = static os_log_type_t.default.getter();

        sub_1000036B0(v43, v25);
      }

      v44 = &v11[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer];
      v45 = *&v11[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer];
      v46 = *&v11[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer + 8];
      v47 = *&v11[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer + 16];
      *v44 = 0u;
      *(v44 + 1) = 0u;
      sub_10002DA34(v45, v46, v47);
      goto LABEL_32;
    }

LABEL_8:
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    v50 = qword_100287850;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001E6580;
    sub_10004167C();
    static LogInterpolation.prefix<A>(_:_:)();

    v55 = &type metadata for String;
    v52 = 0xD000000000000018;
    v53 = 0x80000001001F7170;
    static LogInterpolation.safe(_:)();
    sub_10000A0C4(&v52, &qword_10026D350);
    LogInterpolation.init(stringLiteral:)();
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._countAndFlagsBits = 0xD000000000000015;
    v17._object = 0x80000001001F71B0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
    v18 = v13[1];
    if (v18)
    {
      v19 = *v13;
      v20 = &type metadata for String;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v54 = 0;
    }

    v52 = v19;
    v53 = v18;
    v55 = v20;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v52, &qword_10026D350);
    v28._countAndFlagsBits = 0xD000000000000013;
    v28._object = 0x80000001001F71D0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    v55 = &type metadata for Bool;
    LOBYTE(v52) = v12 & 1;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v52, &qword_10026D350);
    v29._countAndFlagsBits = 0x3A6E656B6F74202CLL;
    v29._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
    v55 = &type metadata for String;
    v52 = v51;
    v53 = a3;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v52, &qword_10026D350);
    v30._countAndFlagsBits = 41;
    v30._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
    LogInterpolation.init(stringInterpolation:)();
    v31 = static os_log_type_t.debug.getter();
    sub_1000036B0(v31, v16);
LABEL_32:

    return;
  }

  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001E5F70;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v22 = static os_log_type_t.default.getter();
  sub_1000036B0(v22, v21);
}

uint64_t sub_1000E8A14()
{
  v1 = [objc_opt_self() buildVersion];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  v45 = v0;
  v7 = &v0[OBJC_IVAR____TtC14amsengagementd17EngagementService_appDefaultsProvider];
  do
  {
    v8 = *(&off_100244588 + v5 + 32);
    sub_100003CA8(v7, *(v7 + 3));
    sub_10003B834(v47);
    if (v47[0])
    {
      v10 = v47[4];
      v9 = v47[5];
      v11 = v47[6];
      v48 = v47[0];
      sub_10000A0C4(&v48, &qword_10026A6F8);
      v49 = v11;
      sub_10000A0C4(&v49, &qword_10026A758);
      if (v9)
      {
        if (v10 == v2 && v9 == v4)
        {

          goto LABEL_15;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v13)
        {
          goto LABEL_15;
        }
      }
    }

    v46[0] = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_100004C7C();
      sub_10009B9B4(v14, v15, v16);
      v6 = v46[0];
    }

    v18 = v6[2];
    v17 = v6[3];
    if (v18 >= v17 >> 1)
    {
      v19 = sub_10000B380(v17);
      sub_10009B9B4(v19, v20, v21);
      v6 = v46[0];
    }

    v6[2] = v18 + 1;
    *(v6 + v18 + 32) = v8;
LABEL_15:
    ++v5;
  }

  while (v5 != 4);

  if (v6[2])
  {
    if (qword_1002686F0 != -1)
    {
      sub_100006C90();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_10000A610();
    v22 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v22);
    sub_1000056F8();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1001E5F70;
    v46[3] = type metadata accessor for EngagementService();
    v46[0] = v45;
    v45;
    v24 = AMSLogKey();
    if (v24)
    {
      v25 = v24;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v46);
    LogInterpolation.init(stringLiteral:)();
    v26 = static os_log_type_t.info.getter();
    sub_1000036B0(v26, v23);

    v27 = [objc_allocWithZone(AMSEngagementSyncRequest) init];
    v28 = v27;
    v29 = v6[2];
    if (v29)
    {
      v44 = v27;
      v46[0] = _swiftEmptyArrayStorage;
      sub_100027C2C(0, v29, 0);
      v30 = 32;
      v31 = v46[0];
      sub_10001117C();
      sub_1000F129C();
      sub_10005EE9C();
      do
      {
        v35 = 0xE900000000000073;
        v36 = 0x636974796C616E61;
        switch(*(v6 + v30))
        {
          case 1:
            v35 = 0xE800000000000000;
            v36 = v32;
            break;
          case 2:
            v35 = 0xE800000000000000;
            v36 = v33;
            break;
          case 3:
            v36 = 0x6E656D6D6F636572;
            v35 = v34;
            break;
          default:
            break;
        }

        v46[0] = v31;
        v38 = v31[2];
        v37 = v31[3];
        if (v38 >= v37 >> 1)
        {
          v40 = sub_10000B380(v37);
          sub_100027C2C(v40, v41, v42);
          sub_10005EE9C();
          sub_1000F129C();
          sub_10001117C();
          v31 = v46[0];
        }

        v31[2] = v38 + 1;
        v39 = &v31[2 * v38];
        v39[4] = v36;
        v39[5] = v35;
        ++v30;
        --v29;
      }

      while (v29);

      v28 = v44;
    }

    else
    {

      v31 = _swiftEmptyArrayStorage;
    }

    sub_1000E2000(v31, v28);
    sub_1000627E8();
  }
}

uint64_t sub_1000E8E80(uint64_t a1)
{
  v3 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v4 = sub_100003D10(v3);
  __chkstk_darwin(v4);
  sub_10000C79C();
  v5 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v1, 1, 1, v5);
  sub_100007A3C();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1000E349C();
}

uint64_t sub_1000E8F7C()
{
  sub_100004768();
  if (qword_100268630 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1000E9044;
  v2 = *(v0 + 56);

  return sub_1000C27B8(v2);
}

uint64_t sub_1000E9044()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000E9134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017F0C();
  v13 = v12[9];
  v14 = [objc_opt_self() ams_sharedAccountStore];
  v15 = [v14 ams_activeiTunesAccount];

  v16 = type metadata accessor for SystemEngagementPerformer();
  v17 = swift_allocObject();
  v12[5] = v16;
  v12[6] = &off_1002529B8;
  v12[2] = v17;
  type metadata accessor for SystemEngagementAction();
  v18 = swift_allocObject();
  v19 = sub_100046CB8((v12 + 2), v16);
  v20 = *(v16 - 8);
  v21 = swift_task_alloc();
  (*(v20 + 16))(v21, v19, v16);
  v22 = *v21;
  v18[6] = v16;
  v18[7] = &off_1002529B8;
  v18[2] = v15;
  v18[3] = v22;
  sub_100002C00(v12 + 2);

  sub_1001AC06C(v13);

  sub_100002D8C();
  sub_10000481C();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

id sub_1000E930C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E9418()
{
  sub_100004768();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v7 = type metadata accessor for ContentInfo(0);
  v0[8] = v7;
  sub_100002CFC(v7);
  v0[9] = v8;
  v0[10] = swift_task_alloc();
  sub_1000060D0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000E94D0()
{

  v54._countAndFlagsBits = sub_100005B9C();
  v1 = sub_1000116D0(v54);
  if (v1 == 4)
  {
    v2 = String._bridgeToObjectiveC()();
    sub_100004810();
    v3 = String._bridgeToObjectiveC()();
    sub_100015AEC();
    AMSError();

    swift_willThrow();

    sub_100002D8C();
    sub_100012AFC();

    __asm { BRAA            X1, X16 }
  }

  v6 = v1;
  v8 = v0[6];
  v7 = v0[7];
  type metadata accessor for ContentManager();
  *(swift_allocObject() + 16) = v6;
  v9 = sub_100006378();
  v11 = sub_1000B7DD0(v9, v10, v8, v7, 4);
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_19:

    sub_100012AFC();

    __asm { BRAA            X2, X16 }
  }

  v14 = v0[8];
  v13 = v0[9];
  v15 = v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v16 = _swiftEmptyDictionarySingleton;
  v49 = *(v13 + 72);
  v50 = v14;
  while (1)
  {
    v51 = v15;
    v52 = v12;
    v17 = v0[10];
    sub_1000B2AD0(v15, v17);
    v18 = [objc_allocWithZone(AMSContentInfo) init];
    sub_100005B9C();
    v19 = String._bridgeToObjectiveC()();
    sub_100018028(v19, "setCacheKey:");

    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_100018028(isa, "setCreated:");

    v21 = Date._bridgeToObjectiveC()().super.isa;
    sub_100018028(v21, "setExpires:");

    if (*(v17 + *(v14 + 36) + 8))
    {
      v22 = String._bridgeToObjectiveC()();
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v0[10];
    sub_100018028(v22, "setPath:");

    v25 = (v24 + *(v14 + 48));
    v26 = *v25;
    v27 = v25[1];
    v28 = String._bridgeToObjectiveC()();
    sub_100018028(v28, "setVersion:");

    v29 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v16;
    result = sub_100012A94();
    v33 = v16[2];
    v34 = (v32 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = result;
    v37 = v32;
    sub_10007B9A4(&qword_10026C938, &qword_1001EBE60);
    result = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v35);
    v16 = v53;
    if (result)
    {
      result = sub_100012A94();
      if ((v37 & 1) != (v38 & 1))
      {
        sub_100012AFC();

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      v36 = result;
    }

    if (v37)
    {
      v39 = v53[7];
      v40 = *(v39 + 8 * v36);
      *(v39 + 8 * v36) = v29;

      v29 = v40;
    }

    else
    {
      v53[(v36 >> 6) + 8] |= 1 << v36;
      v41 = (v53[6] + 16 * v36);
      *v41 = v26;
      v41[1] = v27;
      *(v53[7] + 8 * v36) = v29;
      v42 = v53[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_26;
      }

      v53[2] = v44;
    }

    v45 = v0[10];

    sub_1000A0914(v45);
    v14 = v50;
    v15 = v51 + v49;
    v12 = v52 - 1;
    if (v52 == 1)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000E99A8(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[4] = v8;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v9;
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v5[6] = v11;
  v12 = a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1000E9AD4;

  return sub_1000E9418();
}

uint64_t sub_1000E9AD4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_100011624();

    isa = 0;
    v9 = v1;
  }

  else
  {
    sub_100002BC0(0, &qword_10026C930, AMSContentInfo_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v1 = 0;
    v9 = isa;
  }

  v10 = *(v4 + 24);
  (v10)[2](v10, isa, v1);

  _Block_release(v10);
  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_1000E9D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017F0C();

  v17 = v12[34];
  if (v17 == v12[32])
  {
    sub_10001D730();

    v18 = Promise.isResolved.getter();

    if (v18)
    {
LABEL_16:

      sub_100002D8C();
      sub_10000481C();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
    }

    if (qword_1002686F0 == -1)
    {
LABEL_4:
      sub_10000F3F0();
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v19 = sub_10000C3AC();
      sub_100002CFC(v19);
      sub_1000056F8();
      v20 = sub_100015C9C();
      v12[5] = sub_1000F12D0(v20, xmmword_1001E5F70);
      v12[2] = v15;
      v21 = v15;
      sub_100015A84();
      sub_100002C00(v12 + 2);
      sub_10000DD34();
      v22 = static os_log_type_t.default.getter();
      sub_1000036B0(v22, v20);

      sub_10000602C(v13 + 16, (v12 + 17));
      if (v14)
      {
      }

      else
      {
        sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
        v35 = objc_allocWithZone(AMSEngagementEnqueueResult);

        v12[23] = [v35 init];
        Promise.__allocating_init(value:)();
      }

      sub_100019C18();
      sub_100061EDC();

      goto LABEL_16;
    }

LABEL_20:
    sub_100006C90();
    swift_once();
    goto LABEL_4;
  }

  v23 = v12[25];
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v17 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v24 = *(v23 + 8 * v17 + 32);
  }

  v12[33] = v24;
  v12[34] = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_1000058A4(&unk_1001EBD18);
  v44 = v25;
  v26 = swift_task_alloc();
  v12[35] = v26;
  *v26 = v12;
  sub_100007FAC(v26);
  sub_10000481C();

  return v27(v27, v28, v29, v30, v31, v32, v33, v34, v44, a10, a11, a12);
}

uint64_t sub_1000EA00C()
{
  sub_100004768();
  v1 = swift_task_alloc();
  sub_100061DE4(v1);
  sub_10007B9A4(&qword_10026C900, &qword_1001EBDE0);
  sub_10001CD6C();
  *v0 = v2;
  sub_100017EE4();
  sub_10000522C();
  v3 = sub_100004C68();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3);
}

uint64_t sub_1000EA0D0()
{
  sub_100004768();
  swift_task_alloc();
  sub_100015B58();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1000EA180;
  sub_10000522C();
  sub_10000A724();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3);
}

uint64_t sub_1000EA180()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    sub_100002D8C();

    return v10();
  }
}

uint64_t sub_1000EA2AC()
{
  sub_100004768();
  swift_task_alloc();
  sub_100015B58();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1000615C0;
  sub_10000522C();
  sub_10000A724();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3);
}

uint64_t sub_1000EA370()
{
  sub_100004768();
  v1 = swift_task_alloc();
  sub_100061DE4(v1);
  sub_10007B9A4(&qword_10026C8C8, &qword_1001EBD88);
  sub_10001CD6C();
  *v0 = v2;
  sub_100017EE4();
  sub_10000522C();
  v3 = sub_100004C68();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3);
}

uint64_t sub_1000EA468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001E5F70;
  v20[3] = type metadata accessor for EngagementService();
  v20[0] = a2;
  v13 = a2;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v20);
  LogInterpolation.init(stringLiteral:)();
  v14 = static os_log_type_t.default.getter();
  sub_1000036B0(v14, v12);

  v15 = sub_1000EA628(a6, a7, a8, a9, (a10 + 16));
  swift_beginAccess();
  *(a5 + 16) = v15;
}

uint64_t sub_1000EA628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  if (a4)
  {
    swift_beginAccess();
    v6 = *a5;

    v7 = sub_1000288B0(0x2065756575716E45, 0xEF74756F656D6974, &unk_10024A618, &unk_10024A640, sub_1000F117C, &unk_10024A658, v6);
  }

  else
  {
    sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
    [objc_allocWithZone(AMSEngagementEnqueueResult) init];
    return Promise.__allocating_init(value:)();
  }

  return v7;
}

uint64_t sub_1000EA730(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  swift_errorRetain();
  [a2 lock];
  sub_1000EA7A8(&v8, (a3 + 16), (a4 + 16));
  [a2 unlock];
  return swift_willThrow();
}

uint64_t sub_1000EA7A8(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_errorRetain();
  v6 = _convertErrorToNSError(_:)();

  sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F70;
  AnyHashable.init<A>(_:)();
  swift_beginAccess();
  v8 = *a2;
  *(inited + 96) = sub_10007B9A4(&qword_10026C890, &unk_1001EBCF8);
  *(inited + 72) = v8;

  AnyHashable.init<A>(_:)();
  swift_beginAccess();
  v10 = *a3;
  v9 = a3[1];
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v10;
  *(inited + 152) = v9;

  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v6 ams_errorByAddingUserInfo:{isa, 0x74616E6974736564, 0xEB000000006E6F69}];

  *a1 = v12;
}

uint64_t sub_1000EA994()
{

  sub_1000ED448(sub_10006270C, v0, &unk_100249D08, sub_100062AFC);

  sub_1000ED294();
}

uint64_t sub_1000EAA68()
{
  sub_10001B228();
  sub_1000ED448(j___s9JetEngine7PromiseC7resolveyyxF, v0, &unk_10024B090, sub_1000F0E34);

  sub_1000ED294();
}

uint64_t sub_1000EAB30()
{
  sub_10001B228();
  sub_1000ED448(sub_1000F0AD4, v0, &unk_10024AD20, sub_1000F0ACC);

  sub_1000ED294();
}

uint64_t sub_1000EABF8()
{
  sub_10001B228();
  sub_1000ED448(sub_10006270C, v0, &unk_10024ACF8, sub_1000F0AC4);

  sub_1000ED294();
}

uint64_t sub_1000EACC0()
{
  sub_10001B228();
  sub_1000ED448(sub_100062700, v0, &unk_10024AC58, sub_100062AFC);

  sub_1000ED294();
}

uint64_t sub_1000EAD88()
{
  sub_10001B228();
  sub_1000ED448(sub_100062700, v0, &unk_10024AB18, sub_100062AFC);

  sub_1000ED294();
}

uint64_t sub_1000EAE50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10009B7C0(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001E5F60;
      *(inited + 32) = 0x656372756F73;
      *(inited + 40) = 0xE600000000000000;
      strcpy((inited + 48), "amsengagementd");
      *(inited + 63) = -18;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x707954746E657665;
      *(inited + 88) = 0xE900000000000065;
      *(inited + 96) = 0xD000000000000013;
      *(inited + 104) = 0x80000001001F7050;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 0x696669746E656469;
      *(inited + 168) = &type metadata for String;
      *(inited + 136) = 0xEA00000000007265;
      *(inited + 144) = v5;
      *(inited + 152) = v4;

      v7 = Dictionary.init(dictionaryLiteral:)();
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        v10 = sub_100005C40(v8);
        sub_10009B7C0(v10, v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      _swiftEmptyArrayStorage[v9 + 4] = v7;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  v11 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  sub_100007A3C();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001E8AB0;
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  sub_1000058B4();
  *(v12 + 32) = sub_100092378();
  sub_1000F43B4(v12, v11);
  v13 = sub_10012E0C0(_swiftEmptyArrayStorage);

  sub_1000F4334(v13, v11);
  if (qword_100268670 != -1)
  {
    sub_100003198(&qword_100268670);
  }

  sub_100004454();
}

void sub_1000EB164(void *a1, uint64_t a2, void *a3)
{
  sub_10000C7B8(a1);
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  if ([objc_opt_self() isBuddyRunning])
  {
    v7 = String._bridgeToObjectiveC()();
    v8 = String._bridgeToObjectiveC()();
    v19 = AMSError();

    Promise.reject(_:)();
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = Dictionary.init(dictionaryLiteral:)();
    v10 = [objc_allocWithZone(NSLock) init];
    v11 = sub_1000F12E8() & 1;
    sub_1000E5458();
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = v10;
    *(v14 + 32) = v9;
    *(v14 + 40) = v11;
    *(v14 + 48) = a1;
    v15 = a3;
    v19 = v10;

    v16 = a1;
    sub_1000E70F4(v13, sub_1000F04FC, v14);
    v18 = v17;

    if (!v18)
    {
      v20[3] = type metadata accessor for SyncTaskScheduler();
      v20[4] = &protocol witness table for SyncTaskScheduler;
      sub_100017E64(v20);
      SyncTaskScheduler.init()();
      sub_100002BC0(0, &qword_10026C868, AMSEngagementSyncResult_ptr);
      Promise.map<A>(on:_:)();
      sub_100002C00(v20);
      sub_1000EA994();

      return;
    }

    sub_1000EA994();
  }
}

uint64_t sub_1000EB4BC(_BYTE *a1, void (*a2)(void, void, void), uint64_t a3, void *a4, void *a5, uint64_t a6, char a7, void *a8)
{
  v101 = a8;
  v100 = a3;
  v99 = a2;
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v104 = *(v13 - 8);
  __chkstk_darwin(v13);
  v103 = v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for OSSignposter();
  v109 = *(v98 - 8);
  v15 = __chkstk_darwin(v98);
  v106 = v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v90 - v17;
  v19 = type metadata accessor for OSSignpostID();
  v108 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v97 = v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v90 - v22;
  v24 = a4;
  if (sub_1000F13D4(a1))
  {
    sub_10007B9A4(&qword_10026C860, &qword_1001EBC88);
    v25 = String._bridgeToObjectiveC()();
    v26 = String._bridgeToObjectiveC()();
    v27 = AMSError();

    return Promise.__allocating_init(error:)();
  }

  else
  {
    v107 = v23;
    sub_1000F1840(a1);
    v29 = 0xE000000000000000;
    v110 = 0;
    v111 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    v102 = a1;
    if (*a1)
    {
      v30 = 3041653;
    }

    else
    {
      v30 = 0;
    }

    if (*a1)
    {
      v29 = 0xE300000000000000;
    }

    v31 = v29;
    String.append(_:)(*&v30);

    v32._countAndFlagsBits = 0x656D656761676E65;
    v32._object = 0xEF636E79732E746ELL;
    String.append(_:)(v32);
    v33 = v110;
    v34 = v111;
    [a5 lock];
    swift_beginAccess();
    v92 = v33;
    v91 = v34;
    sub_10000E42C(0xD000000000000013, 0x80000001001F6D40, v33, v34);
    swift_endAccess();
    [a5 unlock];
    v105 = v19;
    v95 = v13;
    v94 = a6;
    v93 = a5;
    v35 = a4;
    if (a7)
    {
      if (qword_1002686F0 != -1)
      {
        swift_once();
      }

      v36 = qword_100287850;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1001E5F70;
      v112 = type metadata accessor for EngagementService();
      v110 = a4;
      v38 = a4;
      v39 = AMSLogKey();
      v40 = v102;
      if (v39)
      {
        v41 = v39;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v46 = v107;
      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v110);
      LogInterpolation.init(stringLiteral:)();
      v47 = static os_log_type_t.default.getter();
      sub_1000036B0(v47, v37);

      v48 = type metadata accessor for UniversalLinksUpdater();
      sub_1001CB614(v48);
    }

    else
    {
      if (qword_1002686F0 != -1)
      {
        swift_once();
      }

      v36 = qword_100287850;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1001E5F70;
      v112 = type metadata accessor for EngagementService();
      v110 = a4;
      v43 = a4;
      v44 = AMSLogKey();
      if (v44)
      {
        v45 = v44;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v46 = v107;
      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v110);
      LogInterpolation.init(stringLiteral:)();
      v49 = static os_log_type_t.default.getter();
      sub_1000036B0(v49, v42);

      v40 = v102;
    }

    v50 = sub_10002D0CC(v40);
    v52 = v51;
    type metadata accessor for SyncRunner();
    swift_allocObject();
    v53 = sub_1001AA50C(v40, v50, v52);
    sub_1000262E4(v24 + OBJC_IVAR____TtC14amsengagementd17EngagementService_appDefaultsProvider, v114);
    swift_beginAccess();
    v90[1] = v50;
    swift_unknownObjectRetain();
    sub_10000F4A4(v40, &v110);
    sub_10002636C(v114, v53 + 16);
    swift_endAccess();
    v54 = v98;
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    v55 = *(v36 + 16);
    OSSignposter.init(logHandle:)();

    OSSignposter.logHandle.getter();
    v96 = v53;
    OSSignpostID.init(log:object:)();
    v56 = *(v109 + 8);
    v109 += 8;
    v56(v18, v54);
    v57 = 0xE900000000000073;
    v58 = 0x636974796C616E61;
    switch(*(v40 + 1))
    {
      case 1:
        v57 = 0xE800000000000000;
        v58 = 0x6C616E7265746E69;
        break;
      case 2:
        v57 = 0xE800000000000000;
        v58 = 0x7379656E72756F6ALL;
        break;
      case 3:
        v57 = 0xEF736E6F69746164;
        v58 = 0x6E656D6D6F636572;
        break;
      default:
        break;
    }

    v59 = *(v36 + 16);
    OSSignposter.init(logHandle:)();

    v60 = OSSignposter.logHandle.getter();
    v61 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v110 = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_1000127B4();
      v64 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, v61, v64, "Sync", "%s sync", v62, 0xCu);
      sub_100002C00(v63);

      v46 = v107;
    }

    (*(v108 + 16))(v97, v46, v105);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v65 = OSSignpostIntervalState.init(id:isOpen:)();
    v56(v106, v54);
    v109 = sub_1001AA548(v101, v99, v100);
    v66 = swift_allocObject();
    v67 = v93;
    v68 = v94;
    *(v66 + 16) = v93;
    *(v66 + 24) = v68;
    v69 = v91;
    *(v66 + 32) = v92;
    *(v66 + 40) = v69;
    *(v66 + 48) = v35;
    *(v66 + 56) = v65;
    *(v66 + 64) = v58;
    *(v66 + 72) = v57;
    v70 = v102;
    v71 = v102[1];
    *(v66 + 80) = *v102;
    *(v66 + 96) = v71;
    v72 = *(v70 + 48);
    *(v66 + 112) = *(v70 + 32);
    *(v66 + 128) = v72;
    v73 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v74 = v104;
    v75 = v35;
    v76 = v103;
    v77 = v95;
    (*(v104 + 104))(v103, enum case for DispatchQoS.QoSClass.default(_:), v95);
    v78 = v75;
    sub_10000F4A4(v70, &v110);
    v79 = v67;

    v80 = static OS_dispatch_queue.global(qos:)();
    (*(v74 + 8))(v76, v77);
    v112 = v73;
    v113 = &protocol witness table for OS_dispatch_queue;
    v110 = v80;
    v81 = swift_allocObject();
    *(v81 + 16) = sub_1000F0720;
    *(v81 + 24) = v66;
    v82 = objc_allocWithZone(NSLock);
    v83 = v80;

    v84 = [v82 init];
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    *(v85 + 24) = v81;
    v86 = swift_allocObject();
    *(v86 + 16) = v84;
    *(v86 + 24) = v81;
    v87 = v84;
    swift_retain_n();
    v88 = v87;
    v89 = v109;
    Promise.then(perform:orCatchError:on:)();
    swift_unknownObjectRelease();

    (*(v108 + 8))(v107, v105);

    sub_100002C00(&v110);
    return v89;
  }
}

id sub_1000EC148(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v87 = a8;
  v82[1] = a7;
  v86 = a6;
  v83 = type metadata accessor for OSSignpostError();
  v85 = *(v83 - 8);
  v15 = __chkstk_darwin(v83);
  v17 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v84 = v82 - v18;
  *&v91 = type metadata accessor for OSSignpostID();
  v90 = *(v91 - 8);
  v19 = __chkstk_darwin(v91);
  v21 = v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v82 - v22;
  v89 = type metadata accessor for OSSignposter();
  v88 = *(v89 - 8);
  v24 = __chkstk_darwin(v89);
  v26 = v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = v82 - v27;
  [a3 lock];
  swift_beginAccess();
  v92 = a4;
  v29 = a2;
  sub_10000E42C(0xD000000000000018, 0x80000001001F6DD0, a5, v86);
  swift_endAccess();
  v93 = a3;
  [a3 unlock];
  if (a2)
  {
    swift_errorRetain();
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    v30 = a9;
    v31 = *(qword_100287850 + 16);
    OSSignposter.init(logHandle:)();
    v32 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v33 = static os_signpost_type_t.end.getter();
    v34 = OS_os_log.signpostsEnabled.getter();
    v35 = v84;
    if (v34)
    {
      v86 = a9;
      v36 = v29;

      checkForErrorAndConsumeState(state:)();

      v37 = v85;
      v38 = v83;
      if ((*(v85 + 88))(v35, v83) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v39 = "[Error] Interval already ended";
      }

      else
      {
        (*(v37 + 8))(v35, v38);
        v39 = "Failed";
      }

      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, v33, v50, "Sync", v39, v49, 2u);

      v29 = v36;
      v30 = v86;
    }

    (*(v90 + 8))(v23, v91);
    (*(v88 + 8))(v28, v89);
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
    v54 = objc_allocWithZone(AMSMetricsLoggingEvent);
    swift_errorRetain();
    v55 = sub_1000EF494(v51, v53, 0x656D656761676E65, 0xEF636E79732D746ELL, v29);
    swift_getErrorValue();
    Error.localizedDescription.getter();
    v56 = String._bridgeToObjectiveC()();

    [v55 setErrorMessage:v56];

    v57 = v93;
    [v93 lock];
    v58 = v92;
    swift_beginAccess();

    sub_1000E3C88();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v55 setBreadcrumbs:isa];

    [v57 unlock];
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v60 = swift_allocObject();
    v91 = xmmword_1001E61B0;
    *(v60 + 16) = xmmword_1001E61B0;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 32) = v30;
    *(v60 + 40) = a10;

    v61 = Array._bridgeToObjectiveC()().super.isa;

    [v55 setEventDestinations:v61];

    v62 = objc_opt_self();
    v63 = sub_1000617E0(v62, &selRef_jsVersionMap, &type metadata for String, &type metadata for String, &protocol witness table for String);
    if (!v63)
    {
      v63 = Dictionary.init(dictionaryLiteral:)();
    }

    v64 = v63;
    v65 = sub_10003A3C0(v30, a10, v63);
    if (v66)
    {
      v67 = v65;
      v68 = v66;

      sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
      inited = swift_initStackObject();
      *(inited + 16) = v91;
      aBlock = v30;
      v95 = a10;

      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v67;
      *(inited + 80) = v68;
      Dictionary.init(dictionaryLiteral:)();
    }

    else
    {
      sub_1000E39C4(v64);
    }

    v70 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v55 setJsVersions:v70];

    v71 = objc_opt_self();
    sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
    v72 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
    v73 = [v71 shouldSampleErrorsWithBag:v72];

    v74 = swift_allocObject();
    *(v74 + 16) = v55;
    v98 = sub_1000F075C;
    v99 = v74;
    aBlock = _NSConcreteStackBlock;
    v95 = 1107296256;
    v96 = sub_100005E50;
    v97 = &unk_10024A1F8;
    v75 = _Block_copy(&aBlock);
    v76 = v55;

    [v73 addSuccessBlock:v75];
    _Block_release(v75);
  }

  else
  {
    v40 = v17;
    sub_1000F1BB0(a11);
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    v41 = *(qword_100287850 + 16);
    OSSignposter.init(logHandle:)();
    v42 = OSSignposter.logHandle.getter();
    v43 = v21;
    OSSignpostIntervalState.signpostID.getter();
    v44 = static os_signpost_type_t.end.getter();
    v45 = OS_os_log.signpostsEnabled.getter();
    v46 = v85;
    if (v45)
    {

      checkForErrorAndConsumeState(state:)();

      v47 = v83;
      if ((*(v46 + 88))(v40, v83) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v48 = "[Error] Interval already ended";
      }

      else
      {
        (*(v46 + 8))(v40, v47);
        v48 = "Succeeded";
      }

      v77 = swift_slowAlloc();
      *v77 = 0;
      v78 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, v44, v78, "Sync", v48, v77, 2u);
    }

    (*(v90 + 8))(v43, v91);
    (*(v88 + 8))(v26, v89);
    sub_100185EF0(*(a11 + 1));
    v58 = v92;
  }

  v79 = v93;
  [v93 lock];
  v80 = Dictionary.init(dictionaryLiteral:)();
  swift_beginAccess();
  *(v58 + 16) = v80;

  return [v79 unlock];
}

void sub_1000ECCC0(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v3 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  v4 = [v2 internalInstanceUsingBag:v3];

  [v4 enqueueEvent:a1];
}

id sub_1000ECD98@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000116AC(*a1);
  if (!result)
  {
    result = [objc_allocWithZone(AMSEngagementSyncResult) init];
    goto LABEL_6;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v3 + 32);
LABEL_6:
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000ECE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002DFC();
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  __chkstk_darwin(v6);
  sub_100002DEC();
  sub_10001C064();
  sub_1000627E8();
  sub_100002FB8();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v9 = sub_100008758();
  v10(v9);

  v11 = static OS_dispatch_queue.global(qos:)();
  v12 = sub_1000F11DC();
  v13(v12);
  v23[3] = v8;
  v23[4] = &protocol witness table for OS_dispatch_queue;
  v23[0] = v11;
  sub_100002FB8();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100062B28;
  *(v14 + 24) = v7;
  v15 = objc_allocWithZone(NSLock);
  v16 = v11;
  sub_100011624();

  v17 = [v15 init];
  sub_100002FB8();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v14;
  sub_100002FB8();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v14;
  v20 = v17;
  swift_retain_n();
  v21 = v20;
  sub_1000F11F8(sub_100083BC0);

  return sub_100002C00(v23);
}

void sub_1000ED094()
{
  if (qword_1002687B0 != -1)
  {
    sub_1000293DC(&qword_1002687B0);
  }

  sub_10016E024();
}

uint64_t sub_1000ED16C(char a1, uint64_t (*a2)(void))
{
  if (qword_1002687B0 != -1)
  {
    sub_1000293DC(&qword_1002687B0);
  }

  return a2(a1 & 1);
}

void sub_1000ED294()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002DEC();
  v10 = v9 - v8;
  sub_100002FB8();
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v1;
  v12 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v6 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v4);

  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v10, v4);
  v14[3] = v12;
  v14[4] = &protocol witness table for OS_dispatch_queue;
  v14[0] = v13;
  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v14);
  sub_100005F14();
}

uint64_t sub_1000ED448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  __chkstk_darwin(v6);
  sub_100002DEC();
  sub_10001C064();
  sub_100002FB8();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v9 = sub_100008758();
  v10(v9);

  v11 = static OS_dispatch_queue.global(qos:)();
  v12 = sub_1000F11DC();
  v13(v12);
  v15[3] = v8;
  v15[4] = &protocol witness table for OS_dispatch_queue;
  v15[0] = v11;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v15);
}

void sub_1000ED5B8()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  __chkstk_darwin(v8);
  sub_100002DEC();
  sub_100012F6C();
  v25 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100002DEC();
  sub_100012F7C();
  sub_10007B9A4(&qword_10026C8F0, &qword_1001EBDC0);
  v12 = Promise.__allocating_init()();
  v13 = *(v7 + 8);
  v28 = *(v7 + 24);
  v29 = v13;
  v14 = swift_allocObject();
  v15 = *(v7 + 16);
  *(v14 + 24) = *v7;
  *(v14 + 16) = v0;
  *(v14 + 40) = v15;
  *(v14 + 56) = *(v7 + 32);
  *(v14 + 64) = v5;
  *(v14 + 72) = v3;
  *(v14 + 80) = v12;
  v27[4] = sub_1000F0B78;
  v27[5] = v14;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 1107296256;
  sub_100007A28();
  v27[2] = v16;
  v27[3] = &unk_10024AE28;
  v17 = _Block_copy(v27);

  sub_100027D8C(&v29, v26);
  sub_100027D8C(&v28, v26);

  static DispatchQoS.unspecified.getter();
  v26[0] = _swiftEmptyArrayStorage;
  sub_10000B890();
  sub_100005DC0(v18, v19, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  sub_1000140D0(v20, v21, &unk_1001E74F0, v22);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  v23 = sub_10000A19C();
  v24(v23);
  (*(v10 + 8))(v1, v25);

  sub_100005F14();
}

uint64_t sub_1000ED88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
  v13 = Promise.__allocating_init()();
  v19[1] = *(v3 + 72);
  v14 = *(a1 + 8);
  v24 = *(a1 + 24);
  v25 = v14;
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  *(v15 + 24) = *a1;
  *(v15 + 16) = v3;
  *(v15 + 40) = v16;
  *(v15 + 56) = *(a1 + 32);
  *(v15 + 64) = a2;
  *(v15 + 72) = a3;
  *(v15 + 80) = v13;
  aBlock[4] = sub_1000290B4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_10024A928;
  v17 = _Block_copy(aBlock);

  sub_100027D8C(&v25, v22);
  sub_100027D8C(&v24, v22);

  static DispatchQoS.unspecified.getter();
  v22[0] = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_1000140D0(&qword_10026CD50, &unk_100270490, &unk_1001E74F0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v9, v7);
  (*(v10 + 8))(v12, v20);

  return v13;
}

uint64_t sub_1000EDBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_10026C860, &qword_1001EBC88);
  v13 = Promise.__allocating_init()();
  v19[1] = *(v3 + 72);
  v14 = *(a1 + 8);
  v24 = *(a1 + 24);
  v25 = v14;
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  *(v15 + 24) = *a1;
  *(v15 + 16) = v3;
  *(v15 + 40) = v16;
  *(v15 + 56) = *(a1 + 32);
  *(v15 + 64) = a2;
  *(v15 + 72) = a3;
  *(v15 + 80) = v13;
  aBlock[4] = sub_10004EE74;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_10024A0B8;
  v17 = _Block_copy(aBlock);

  sub_100027D8C(&v25, v22);
  sub_100027D8C(&v24, v22);

  static DispatchQoS.unspecified.getter();
  v22[0] = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_1000140D0(&qword_10026CD50, &unk_100270490, &unk_1001E74F0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v9, v7);
  (*(v10 + 8))(v12, v20);

  return v13;
}

uint64_t sub_1000EDF2C(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (qword_100268710 != -1)
  {
    swift_once();
  }

  v6 = qword_100287870;

  sub_1000600AC(v6, a2);
  v7 = Promise.resolve(_:)();
  return a4(v7);
}

uint64_t sub_1000EDFD4()
{
  sub_1000F1284();
  if (qword_100268710 != -1)
  {
    sub_1000063EC(&qword_100268710);
  }

  v1 = sub_100006378();
  sub_10014A3DC(v1, v2);
  v3 = Promise.reject(_:)();
  return v0(v3);
}

void sub_1000EE080()
{
  sub_1000067E4();
  v2 = v1();
  if (v0)
  {
    sub_1000F121C();
  }

  else
  {
    sub_1000040EC(v2);
  }
}

uint64_t sub_1000EE0F4()
{
  sub_1000067E4();
  v2 = v1();
  if (v0)
  {
    sub_1000F121C();
  }

  else
  {
    sub_1000040EC(v2);
    return sub_100002C00(v4);
  }
}

id sub_1000EE194(void *a1, uint64_t a2)
{
  [a1 lock];
  sub_10000E6D0(a2 + 16, v4, v5, v6, v7, v8);
  v9 = *(a2 + 16);
  sub_10004EEF0(a2 + 16, v10, v11);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  result = [a1 unlock];
  if (v9)
  {
    v17[0] = 0;

    v9(v17, 0);
    v13 = sub_100005B9C();
    sub_100014A10(v13, v14);
    v15 = sub_100005B9C();
    return sub_100014A10(v15, v16);
  }

  return result;
}

void sub_1000EE22C()
{
  sub_10000C530();
  v5 = v4;
  [v3 lock];
  sub_10000E6D0(v2 + 16, v6, v7, v8, v9, v10);
  v11 = *(v2 + 16);
  sub_10004EEF0(v2 + 16, v12, v13);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  [v3 unlock];
  if (v11)
  {
    v18 = v5;
    v14 = sub_10000A144();
    v1(v14);
    v15 = v5;
    v11(&v18, 0);
    v16 = sub_10000A144();
    v0(v16);
    v17 = sub_10000A144();
    v0(v17);
  }
}

id sub_1000EE2F0()
{
  sub_10000C530();
  v5 = v4;
  [v3 lock];
  sub_10000E6D0(v2 + 16, v6, v7, v8, v9, v10);
  v11 = *(v2 + 16);
  sub_10004EEF0(v2 + 16, v12, v13);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  result = [v3 unlock];
  if (v11)
  {
    v18[0] = v5;
    v15 = sub_100008BF8();
    v1(v15);

    v11(v18, 0);
    v16 = sub_100008BF8();
    v0(v16);
    v17 = sub_100008BF8();
    v0(v17);
  }

  return result;
}

id sub_1000EE3B8()
{
  sub_10000A920();
  v3 = v2;
  [v1 lock];
  v4 = sub_10000602C(v0 + 16, v15);
  v5 = *(v0 + 16);
  sub_10000DDEC(v4, v6, v7, v8);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  result = [v1 unlock];
  if (v5)
  {
    sub_1000F0DD0(v3, v14);

    v5(v14, 0);
    v10 = sub_100005B9C();
    sub_100014A10(v10, v11);
    v12 = sub_100005B9C();
    sub_100014A10(v12, v13);
    return sub_10000A0C4(v14, &qword_10026C928);
  }

  return result;
}

id sub_1000EE494()
{
  sub_10000A920();
  v3 = v2;
  [v1 lock];
  sub_10000E6D0(v0 + 16, v4, v5, v6, v7, v8);
  v9 = *(v0 + 16);
  sub_10004EEF0(v0 + 16, v10, v11);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  result = [v1 unlock];
  if (v9)
  {
    v17[0] = 1;

    v9(v17, v3);
    v13 = sub_10000A144();
    sub_100014A10(v13, v14);
    v15 = sub_10000A144();
    return sub_100014A10(v15, v16);
  }

  return result;
}

id sub_1000EE53C(uint64_t a1, id a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  [a2 lock];
  sub_10000E6D0(a3 + 16, v8, v9, v10, v11, v12);
  v13 = *(a3 + 16);
  sub_10004EEF0(a3 + 16, v14, v15);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  result = [a2 unlock];
  if (v13)
  {
    v19[0] = 0;

    v13(v19, a1);
    v17 = sub_100007F3C();
    a4(v17);
    v18 = sub_100007F3C();
    return a4(v18);
  }

  return result;
}

id sub_1000EE5F4()
{
  sub_10000A920();
  v3 = v2;
  [v1 lock];
  v4 = sub_10000602C(v0 + 16, v15);
  v5 = *(v0 + 16);
  sub_10000DDEC(v4, v6, v7, v8);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  result = [v1 unlock];
  if (v5)
  {
    memset(v14, 0, 32);

    v5(v14, v3);
    v10 = sub_10000A144();
    sub_100014A10(v10, v11);
    v12 = sub_10000A144();
    sub_100014A10(v12, v13);
    return sub_10000A0C4(v14, &qword_10026C928);
  }

  return result;
}

void sub_1000EE6DC()
{
  sub_1000F1290();
  sub_10000602C(v1 + 16, v4);
  if (swift_weakLoadStrong())
  {
    String._bridgeToObjectiveC()();
    sub_100011624();
    v2 = String._bridgeToObjectiveC()();
    v3 = AMSError();

    Promise.invalidate(_:)();
  }
}

uint64_t sub_1000EE79C(uint64_t a1)
{
  swift_getErrorValue();
  sub_1000F4C40(v2, v3);
  return swift_willThrow();
}

uint64_t sub_1000EE7E8(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v23 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B9A4(&qword_10026C908, &qword_1001EBDE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *(v6 + 16);
  v12(&v22 - v10, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v14 = *(v6 + 32);
  v14(v24 + v13, v11, v5);
  v12(v9, v23, v5);
  v15 = swift_allocObject();
  v14(v15 + v13, v9, v5);
  v16 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v18 = v25;
  v17 = v26;
  v19 = v27;
  (*(v26 + 104))(v25, enum case for DispatchQoS.QoSClass.default(_:), v27);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v18, v19);
  v29[3] = v16;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v20;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v29);
}

uint64_t sub_1000EEAD8(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v23 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B9A4(&qword_10026C8E8, &qword_1001EBDB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *(v6 + 16);
  v12(&v22 - v10, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v14 = *(v6 + 32);
  v14(v24 + v13, v11, v5);
  v12(v9, v23, v5);
  v15 = swift_allocObject();
  v14(v15 + v13, v9, v5);
  v16 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v18 = v25;
  v17 = v26;
  v19 = v27;
  (*(v26 + 104))(v25, enum case for DispatchQoS.QoSClass.default(_:), v27);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v18, v19);
  v29[3] = v16;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v20;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v29);
}

uint64_t sub_1000EEDC8(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v23 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B9A4(&qword_10026C8F8, &qword_1001EBDD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *(v6 + 16);
  v12(&v22 - v10, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v14 = *(v6 + 32);
  v14(v24 + v13, v11, v5);
  v12(v9, v23, v5);
  v15 = swift_allocObject();
  v14(v15 + v13, v9, v5);
  v16 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v18 = v25;
  v17 = v26;
  v19 = v27;
  (*(v26 + 104))(v25, enum case for DispatchQoS.QoSClass.default(_:), v27);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v18, v19);
  v29[3] = v16;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v20;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v29);
}

uint64_t sub_1000EF0B8(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v23 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B9A4(&qword_10026C8D0, &qword_1001EBD90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *(v6 + 16);
  v12(&v22 - v10, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v14 = *(v6 + 32);
  v14(v24 + v13, v11, v5);
  v12(v9, v23, v5);
  v15 = swift_allocObject();
  v14(v15 + v13, v9, v5);
  v16 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v18 = v25;
  v17 = v26;
  v19 = v27;
  (*(v26 + 104))(v25, enum case for DispatchQoS.QoSClass.default(_:), v27);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v18, v19);
  v29[3] = v16;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v20;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v29);
}

uint64_t sub_1000EF440()
{
  sub_1000F1284();
  swift_errorRetain();
  v0 = sub_100008FE8();
  sub_10007B9A4(v0, v1);
  return CheckedContinuation.resume(throwing:)();
}

id sub_1000EF494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000A920();
  v7 = String._bridgeToObjectiveC()();

  String._bridgeToObjectiveC()();
  sub_100011624();

  v8 = _convertErrorToNSError(_:)();
  v9 = [v5 initWithSubsystem:v7 category:v6 error:v8];

  return v9;
}

unint64_t sub_1000EF534(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000EF5E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1000EF6D4(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

char *sub_1000EF71C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007B9A4(&qword_10026C880, &qword_1001EBCE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void sub_1000EF810(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    i = _swiftEmptyArrayStorage;
LABEL_105:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    v4 = v140;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_107:
      v148 = i;
      v126 = (i + 16);
      for (i = *(i + 16); i >= 2; *v126 = i)
      {
        if (!*a3)
        {
          goto LABEL_142;
        }

        v127 = (v148 + 16 * i);
        v128 = *v127;
        v129 = &v126[2 * i];
        v130 = v129[1];
        sub_1000EFFB4((*a3 + (*v127 << 6)), (*a3 + (*v129 << 6)), (*a3 + (v130 << 6)), v6);
        if (v4)
        {
          break;
        }

        if (v130 < v128)
        {
          goto LABEL_130;
        }

        if (i - 2 >= *v126)
        {
          goto LABEL_131;
        }

        *v127 = v128;
        v127[1] = v130;
        v131 = *v126 - i;
        if (*v126 < i)
        {
          goto LABEL_132;
        }

        i = *v126 - 1;
        memmove(v129, v129 + 2, 16 * v131);
      }

LABEL_103:

      return;
    }

LABEL_139:
    i = sub_1000F02B4(i);
    goto LABEL_107;
  }

  v6 = 0;
  i = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = (*a3 + (v6 << 6));
      v11 = v10[3];
      v13 = *v10;
      v12 = v10[1];
      v147[2] = v10[2];
      v147[3] = v11;
      v147[0] = v13;
      v147[1] = v12;
      v14 = (v9 + (v8 << 6));
      v15 = v14[3];
      v17 = *v14;
      v16 = v14[1];
      v146[2] = v14[2];
      v146[3] = v15;
      v146[0] = v17;
      v146[1] = v16;
      sub_10000F4A4(v147, v141);
      sub_10000F4A4(v146, v141);
      v18 = sub_100027970();
      v20 = v19;
      v21 = sub_100027970();
      v4 = v22;
      v23 = v18 == v21 && v20 == v22;
      v148 = i;
      if (v23)
      {
        v136 = 0;
      }

      else
      {
        v136 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_10000FF10(v146);
      sub_10000FF10(v147);
      v24 = v8 + 2;
      v133 = v8;
      v25 = v8 << 6;
      v26 = v14 + 8;
      v27 = (v8 << 6) + 64;
      v28 = v5;
      do
      {
        i = v24;
        v29 = v6;
        v30 = v27;
        if (v24 >= v28)
        {
          break;
        }

        v31 = *v26;
        v32 = v26[1];
        v33 = v26[3];
        v145[2] = v26[2];
        v145[3] = v33;
        v145[0] = v31;
        v145[1] = v32;
        v34 = *(v26 - 4);
        v35 = *(v26 - 3);
        v36 = *(v26 - 1);
        v144[2] = *(v26 - 2);
        v144[3] = v36;
        v144[0] = v34;
        v144[1] = v35;
        sub_10000F4A4(v145, v141);
        sub_10000F4A4(v144, v141);
        v37 = sub_100027970();
        v39 = v38;
        v40 = sub_100027970();
        v4 = v41;
        v42 = v37 == v40 && v39 == v41;
        v43 = v42 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10000FF10(v144);
        sub_10000FF10(v145);
        v44 = v136 ^ v43;
        v24 = i + 1;
        v26 += 4;
        v6 = v29 + 1;
        v27 = v30 + 64;
      }

      while ((v44 & 1) == 0);
      if (v136)
      {
        v45 = v133;
        if (i < v133)
        {
          goto LABEL_136;
        }

        if (v133 >= i)
        {
          v6 = i;
          i = v148;
          v8 = v133;
          goto LABEL_28;
        }

        do
        {
          if (v45 != v29)
          {
            v46 = *a3;
            if (!*a3)
            {
              goto LABEL_143;
            }

            v47 = (v46 + v25);
            v48 = (v46 + v30);
            v50 = v47[2];
            v49 = v47[3];
            v52 = *v47;
            v51 = v47[1];
            v53 = v48[3];
            v55 = *v48;
            v54 = v48[1];
            v47[2] = v48[2];
            v47[3] = v53;
            *v47 = v55;
            v47[1] = v54;
            *v48 = v52;
            v48[1] = v51;
            v48[2] = v50;
            v48[3] = v49;
          }

          ++v45;
          v30 -= 64;
          v25 += 64;
        }

        while (v45 < v29--);
      }

      v6 = i;
      i = v148;
      v8 = v133;
    }

LABEL_28:
    v57 = a3[1];
    if (v6 < v57)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_135;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v6 < v8)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000D4E00();
      i = v124;
    }

    v85 = *(i + 16);
    v86 = v85 + 1;
    if (v85 >= *(i + 24) >> 1)
    {
      sub_1000D4E00();
      i = v125;
    }

    *(i + 16) = v86;
    v87 = i + 32;
    v88 = (i + 32 + 16 * v85);
    *v88 = v8;
    v88[1] = v6;
    v138 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v85)
    {
      v148 = i;
      while (1)
      {
        v89 = v86 - 1;
        v90 = (v87 + 16 * (v86 - 1));
        v91 = (i + 16 * v86);
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v92 = *(i + 32);
          v93 = *(i + 40);
          v102 = __OFSUB__(v93, v92);
          v94 = v93 - v92;
          v95 = v102;
LABEL_72:
          if (v95)
          {
            goto LABEL_121;
          }

          v107 = *v91;
          v106 = v91[1];
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_124;
          }

          v111 = v90[1];
          v112 = v111 - *v90;
          if (__OFSUB__(v111, *v90))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v109, v112))
          {
            goto LABEL_129;
          }

          if (v109 + v112 >= v94)
          {
            if (v94 < v112)
            {
              v89 = v86 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v86 < 2)
        {
          goto LABEL_123;
        }

        v114 = *v91;
        v113 = v91[1];
        v102 = __OFSUB__(v113, v114);
        v109 = v113 - v114;
        v110 = v102;
LABEL_87:
        if (v110)
        {
          goto LABEL_126;
        }

        v116 = *v90;
        v115 = v90[1];
        v102 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v102)
        {
          goto LABEL_128;
        }

        if (v117 < v109)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v89 - 1 >= v86)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v121 = (v87 + 16 * (v89 - 1));
        i = *v121;
        v122 = (v87 + 16 * v89);
        v123 = v122[1];
        sub_1000EFFB4((*a3 + (*v121 << 6)), (*a3 + (*v122 << 6)), (*a3 + (v123 << 6)), v138);
        if (v140)
        {
          goto LABEL_103;
        }

        if (v123 < i)
        {
          goto LABEL_116;
        }

        v4 = *(v148 + 16);
        if (v89 > v4)
        {
          goto LABEL_117;
        }

        *v121 = i;
        v121[1] = v123;
        if (v89 >= v4)
        {
          goto LABEL_118;
        }

        v86 = v4 - 1;
        memmove((v87 + 16 * v89), v122 + 2, 16 * (v4 - 1 - v89));
        i = v148;
        *(v148 + 16) = v4 - 1;
        if (v4 <= 2)
        {
          goto LABEL_101;
        }
      }

      v96 = v87 + 16 * v86;
      v97 = *(v96 - 64);
      v98 = *(v96 - 56);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_119;
      }

      v101 = *(v96 - 48);
      v100 = *(v96 - 40);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_120;
      }

      v103 = v91[1];
      v104 = v103 - *v91;
      if (__OFSUB__(v103, *v91))
      {
        goto LABEL_122;
      }

      v102 = __OFADD__(v94, v104);
      v105 = v94 + v104;
      if (v102)
      {
        goto LABEL_125;
      }

      if (v105 >= v99)
      {
        v119 = *v90;
        v118 = v90[1];
        v102 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v102)
        {
          goto LABEL_133;
        }

        if (v94 < v120)
        {
          v89 = v86 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_137;
  }

  if (v8 + a4 >= v57)
  {
    v58 = a3[1];
  }

  else
  {
    v58 = v8 + a4;
  }

  if (v58 < v8)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v6 == v58)
  {
    goto LABEL_51;
  }

  v148 = i;
  v59 = *a3;
  v60 = *a3 + (v6 << 6);
  v134 = v8;
  v61 = v8 - v6;
  v137 = v58;
LABEL_38:
  v62 = v61;
  v63 = v60;
  while (1)
  {
    v64 = *v63;
    v65 = v63[1];
    v66 = v63[3];
    v143[2] = v63[2];
    v143[3] = v66;
    v143[0] = v64;
    v143[1] = v65;
    v67 = *(v63 - 4);
    v68 = *(v63 - 3);
    v69 = *(v63 - 1);
    v142[2] = *(v63 - 2);
    v142[3] = v69;
    v142[0] = v67;
    v142[1] = v68;
    sub_10000F4A4(v143, v141);
    sub_10000F4A4(v142, v141);
    v70 = sub_100027970();
    v72 = v71;
    v73 = sub_100027970();
    v4 = v74;
    if (v70 == v73 && v72 == v74)
    {

      sub_10000FF10(v142);
      sub_10000FF10(v143);
LABEL_49:
      v60 += 64;
      --v61;
      if (++v6 == v137)
      {
        v6 = v137;
        i = v148;
        v8 = v134;
        goto LABEL_51;
      }

      goto LABEL_38;
    }

    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10000FF10(v142);
    sub_10000FF10(v143);
    if ((v76 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v59)
    {
      break;
    }

    v77 = v63 - 4;
    v79 = v63[2];
    v78 = v63[3];
    v81 = *v63;
    v80 = v63[1];
    v82 = *(v63 - 3);
    *v63 = *(v63 - 4);
    v63[1] = v82;
    v83 = *(v63 - 1);
    v63[2] = *(v63 - 2);
    v63[3] = v83;
    *v77 = v81;
    v77[1] = v80;
    v63 -= 4;
    v77[2] = v79;
    v77[3] = v78;
    if (__CFADD__(v62++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_1000EFFB4(char *a1, char *a2, char *a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 64;
  v10 = (a3 - a2) / 64;
  if (v9 < v10)
  {
    sub_1000D6878(a1, (a2 - a1) / 64, a4);
    v11 = &v5[64 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_39;
      }

      v13 = *v7;
      v14 = *(v7 + 1);
      v15 = *(v7 + 3);
      v58 = *(v7 + 2);
      v59 = v15;
      v56 = v13;
      v57 = v14;
      v16 = *v5;
      v17 = *(v5 + 1);
      v18 = *(v5 + 3);
      v54 = *(v5 + 2);
      v55 = v18;
      v52 = v16;
      v53 = v17;
      sub_10000F4A4(&v56, v51);
      sub_10000F4A4(&v52, v51);
      v19 = sub_100027970();
      v21 = v20;
      v23 = v19 == sub_100027970() && v21 == v22;
      if (v23)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000FF10(&v52);
      sub_10000FF10(&v56);
      if ((v24 & 1) == 0)
      {
        goto LABEL_16;
      }

      v25 = v7;
      v23 = v8 == v7;
      v7 += 64;
      if (!v23)
      {
        goto LABEL_17;
      }

LABEL_18:
      v8 += 64;
    }

    sub_10000FF10(&v52);
    sub_10000FF10(&v56);
LABEL_16:
    v25 = v5;
    v23 = v8 == v5;
    v5 += 64;
    if (v23)
    {
      goto LABEL_18;
    }

LABEL_17:
    v26 = *v25;
    v27 = *(v25 + 1);
    v28 = *(v25 + 3);
    *(v8 + 2) = *(v25 + 2);
    *(v8 + 3) = v28;
    *v8 = v26;
    *(v8 + 1) = v27;
    goto LABEL_18;
  }

  v60 = v4;
  sub_1000D6878(a2, (a3 - a2) / 64, a4);
  v11 = &v5[64 * v10];
LABEL_20:
  v29 = v7 - 64;
  for (v6 -= 64; v11 > v5 && v7 > v8; v6 -= 64)
  {
    v31 = *(v11 - 4);
    v32 = *(v11 - 3);
    v33 = *(v11 - 1);
    v58 = *(v11 - 2);
    v59 = v33;
    v56 = v31;
    v57 = v32;
    v34 = *(v7 - 3);
    v52 = *v29;
    v53 = v34;
    v35 = *(v7 - 1);
    v54 = *(v7 - 2);
    v55 = v35;
    sub_10000F4A4(&v56, v51);
    sub_10000F4A4(&v52, v51);
    v36 = sub_100027970();
    v38 = v37;
    if (v36 == sub_100027970() && v38 == v39)
    {
      v41 = 0;
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    sub_10000FF10(&v52);
    sub_10000FF10(&v56);
    if (v41)
    {
      v23 = v6 + 64 == v7;
      v7 -= 64;
      if (!v23)
      {
        v45 = *v29;
        v46 = *(v29 + 1);
        v47 = *(v29 + 3);
        *(v6 + 2) = *(v29 + 2);
        *(v6 + 3) = v47;
        *v6 = v45;
        *(v6 + 1) = v46;
        v7 = v29;
      }

      goto LABEL_20;
    }

    if (v11 != v6 + 64)
    {
      v42 = *(v11 - 4);
      v43 = *(v11 - 3);
      v44 = *(v11 - 1);
      *(v6 + 2) = *(v11 - 2);
      *(v6 + 3) = v44;
      *v6 = v42;
      *(v6 + 1) = v43;
    }

    v11 -= 64;
  }

LABEL_39:
  v48 = (v11 - v5) / 64;
  if (v7 != v5 || v7 >= &v5[64 * v48])
  {
    memmove(v7, v5, v48 << 6);
  }

  return 1;
}

char *sub_1000F02C8(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1000F02F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007B9A4(&qword_10026BEE0, &qword_1001EBCD0);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1000F041C(void *a1)
{
  v1 = [a1 apps];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000F0624()
{
  sub_1000061B4();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v1[1] = sub_100009BE8;
  v3 = sub_100005F88();

  return v4(v3);
}

uint64_t sub_1000F0790()
{
  if (*(v0 + 16))
  {
  }

  v1 = sub_1000074E4();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000F07FC()
{
  swift_unknownObjectRelease();

  sub_100007A3C();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000F0838()
{

  sub_1000083D8();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000F0884()
{

  sub_100007A3C();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000F08C8()
{

  v1 = sub_100008FD8();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000F09D8()
{
  sub_1000F1290();
  v2 = sub_10000C504(v0, v1);
  v4 = sub_10007B9A4(v2, v3);
  sub_100003D10(v4);
  sub_1000F11BC();
  return sub_1000EF440();
}

uint64_t sub_1000F0B20()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000F0B98()
{

  sub_1000083D8();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000F0C48()
{

  sub_1000083D8();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000F0D20(uint64_t *a1, uint64_t *a2)
{
  sub_10007B9A4(a1, a2);
  sub_100002DDC();
  (*(v3 + 8))(v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return _swift_deallocObject(v2);
}

uint64_t sub_1000F0E5C()
{

  v1 = sub_1000074E4();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000F0E94()
{
  sub_100003D28();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009CC8;

  return sub_1000E99A8(v2, v3, v4, v5, v6);
}

uint64_t sub_1000F0F58()
{
  sub_1000061B4();
  sub_1000F11CC();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v3 = sub_100005C78(v1);

  return sub_1000E8F5C(v3, v4, v5, v6);
}

unint64_t sub_1000F0FF8()
{
  result = qword_10026C948;
  if (!qword_10026C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C948);
  }

  return result;
}

unint64_t sub_1000F104C()
{
  result = qword_10026C960;
  if (!qword_10026C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C960);
  }

  return result;
}

uint64_t sub_1000F1180(uint64_t a1)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000F11F8(uint64_t a1)
{

  return Promise.then(perform:orCatchError:on:)();
}

uint64_t sub_1000F121C()
{

  return Promise.reject(_:)();
}

uint64_t sub_1000F12B0()
{

  return swift_allocObject();
}

uint64_t sub_1000F12D0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for EngagementService();
}

uint64_t sub_1000F12E8()
{
  sub_100003CA8((v0 + 56), *(v0 + 80));
  v1 = sub_1000C248C(10);
  v3 = v2;
  v4 = [objc_opt_self() buildVersion];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v3)
  {
    if (v1 == v5 && v3 == v7)
    {

      v10 = 0;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v10 = v9 ^ 1;
    }
  }

  else
  {

    v10 = 1;
  }

  return v10 & 1;
}

BOOL sub_1000F13D4(uint64_t a1)
{
  sub_100003F74();
  v35 = v3;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v6 = type metadata accessor for Date();
  sub_100002CC4();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  sub_100059478((*&v1 + 56), &v34 - v13);
  v15 = sub_100003CA8((*&v1 + 56), *(*&v1 + 80));
  *&v16 = COERCE_DOUBLE(sub_1000F3320(*v15, a1));
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v18 = v17;
  v38 = *(v8 + 8);
  v39 = v6;
  v38(v12, v6);
  if (qword_1002686F0 != -1)
  {
    sub_100006B94(&qword_1002686F0);
  }

  v37 = qword_100287850;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v19 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v19);
  sub_10000BF6C();
  v36 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001E5F70;
  v41 = v35;
  v40[0] = v1;

  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v24 = dbl_1001EBEC0[v16 == 3];
  if (v16 == 2)
  {
    v24 = 600.0;
  }

  if (v16 <= 1)
  {
    v25 = 60.0;
  }

  else
  {
    v25 = v24;
  }

  v26 = v18 - v25;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v40);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0xD00000000000001FLL;
  v27._object = 0x80000001001F7430;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
  v28 = *(a1 + 1);
  v41 = &unk_1002471C0;
  LOBYTE(v40[0]) = v28;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000B8C4();
  sub_10000640C(", attemptIteration: ");
  v41 = &type metadata for Int;
  v40[0] = *&v16;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000B8C4();
  sub_10000640C(", effectiveBackoff: ");
  v41 = &type metadata for Double;
  v40[0] = v25;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000B8C4();
  v29._countAndFlagsBits = 0x61426E497369202CLL;
  v29._object = 0xEF203A66666F6B63;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
  v41 = &type metadata for Bool;
  LOBYTE(v40[0]) = v26 < 0.0;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000B8C4();
  v30._countAndFlagsBits = 0xD000000000000011;
  v30._object = 0x80000001001F7490;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
  v41 = &type metadata for Double;
  v40[0] = v26;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000B8C4();
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
  LogInterpolation.init(stringInterpolation:)();
  v32 = static os_log_type_t.debug.getter();
  sub_1000036B0(v32, v21);

  v38(v14, v39);
  return v26 < 0.0;
}

uint64_t sub_1000F1840(uint64_t a1)
{
  sub_100003F74();
  v4 = v3;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v7 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v8 = sub_100003D10(v7);
  __chkstk_darwin(v8);
  v10 = v26 - v9;
  static Date.now.getter();
  v11 = type metadata accessor for Date();
  sub_10000A7C0(v10, 0, 1, v11);
  v12 = sub_1000083E4();
  sub_1000F34BC(v10, *v12, a1);
  sub_10000A064(v10, &unk_100271EA0, &qword_1001E77F0);
  v13 = sub_1000083E4();
  if (__OFADD__(sub_1000F3320(*v13, a1), 1))
  {
    __break(1u);
  }

  else
  {
    sub_1000083E4();
    sub_1000F3168();
    if (qword_1002686F0 == -1)
    {
      goto LABEL_3;
    }
  }

  sub_100006B94(&qword_1002686F0);
LABEL_3:
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v14 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v14);
  sub_10000BF6C();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001E5F70;
  v27 = v4;
  v26[0] = v1;

  v16 = AMSLogKey();
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v26);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0xD00000000000001DLL;
  v18._object = 0x80000001001F73F0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  v19 = *(a1 + 1);
  v27 = &unk_1002471C0;
  LOBYTE(v26[0]) = v19;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v26, &qword_10026D350, &qword_1001E6050);
  v20._object = 0x80000001001F7410;
  v20._countAndFlagsBits = 0xD000000000000010;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  v21 = sub_1000083E4();
  v22 = sub_1000F3320(*v21, a1);
  v27 = &type metadata for Int;
  v26[0] = v22;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v26, &qword_10026D350, &qword_1001E6050);
  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
  LogInterpolation.init(stringInterpolation:)();
  v24 = static os_log_type_t.debug.getter();
  sub_1000036B0(v24, v15);
}

void sub_1000F1BB0(uint64_t a1)
{
  sub_100003F74();
  v4 = v3;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  __chkstk_darwin(v6);
  sub_100002DEC();
  if (qword_1002686F0 != -1)
  {
    sub_100006B94(&qword_1002686F0);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v7);
  sub_10000BF6C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E5F70;
  v16 = v4;
  v15[0] = v1;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v15);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x80000001001F73D0;
  v11._countAndFlagsBits = 0xD00000000000001ELL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  v12 = *(a1 + 1);
  v16 = &unk_1002471C0;
  LOBYTE(v15[0]) = v12;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v15, &qword_10026D350, &qword_1001E6050);
  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  LogInterpolation.init(stringInterpolation:)();
  v14 = static os_log_type_t.debug.getter();
  sub_1000036B0(v14, v8);

  sub_1000083E4();
  sub_1000F3168();
}

uint64_t sub_1000F1E08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F60;
  v13 = type metadata accessor for EngagementSyncCoordinator();
  v12[0] = a2;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v12);
  LogInterpolation.init(stringLiteral:)();
  v13 = &type metadata for String;
  v12[0] = a3;
  v12[1] = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A064(v12, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10, v7);

  return sub_1000F2010(a3, a4);
}

uint64_t sub_1000F2010(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F70;
  v16 = v6;
  v14 = v3;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v14);
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v14 = 0x676E69766F6D6552;
  v15 = 0xE900000000000020;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x7571206D6F726620;
  v11._object = 0xEB00000000657565;
  String.append(_:)(v11);
  v16 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v14, &qword_10026D350, &qword_1001E6050);
  v12 = static os_log_type_t.debug.getter();
  sub_1000036B0(v12, v7);

  swift_beginAccess();
  sub_100193C7C(a1, a2);
  swift_endAccess();
}

uint64_t sub_1000F22A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E6580;
  v16 = type metadata accessor for EngagementSyncCoordinator();
  v14 = a2;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v14);
  swift_getErrorValue();
  v10 = Error.localizedDescription.getter();
  v16 = &type metadata for String;
  v14 = v10;
  v15 = v11;
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v14, &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v16 = &type metadata for String;
  v14 = a3;
  v15 = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v14, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v12 = static os_log_type_t.error.getter();
  sub_1000036B0(v12, v7);

  return sub_1000F2010(a3, a4);
}

uint64_t sub_1000F24F8()
{
  sub_100027C2C(0, 4, 0);
  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  do
  {
    v2 = 0xE900000000000073;
    v3 = 0x636974796C616E61;
    switch(*(&off_100244588 + v0 + 32))
    {
      case 1:
        v2 = 0xE800000000000000;
        v3 = 0x6C616E7265746E69;
        break;
      case 2:
        v2 = 0xE800000000000000;
        v3 = 0x7379656E72756F6ALL;
        break;
      case 3:
        v3 = 0x6E656D6D6F636572;
        v2 = 0xEF736E6F69746164;
        break;
      default:
        break;
    }

    v8 = v1;
    v5 = v1[2];
    v4 = v1[3];
    if (v5 >= v4 >> 1)
    {
      sub_100027C2C((v4 > 1), v5 + 1, 1);
      v1 = v8;
    }

    ++v0;
    v1[2] = v5 + 1;
    v6 = &v1[2 * v5];
    v6[4] = v3;
    v6[5] = v2;
  }

  while (v0 != 4);

  return sub_100062640(v1);
}

uint64_t sub_1000F2690(void **a1, void *a2, uint64_t (*a3)(void *, unint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E5F70;
  v22 = type metadata accessor for EngagementSyncCoordinator();
  v19 = a2;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v19);
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v24 = v19;
  v25 = v20;
  v9._object = 0x80000001001F75C0;
  v9._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v9);
  v19 = v5;
  v20 = v4;
  v21 = v17;
  v22 = v18;
  sub_10007B9A4(&qword_10026CA30, &qword_1001EBF20);
  _print_unlocked<A, B>(_:_:)();
  v22 = &type metadata for String;
  v19 = v24;
  v20 = v25;
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v19, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10, v6);

  a3(v5, v4);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = v5;
  v11[4] = v4;
  v11[5] = v17;
  v11[6] = v18;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v5;
  v12[4] = v4;
  v12[5] = v17;
  v12[6] = v18;
  v13 = a2[12];
  v22 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v23 = &protocol witness table for OS_dispatch_queue;
  v19 = v13;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v14 = v13;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(&v19);
}

uint64_t sub_1000F29F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E6580;
  v18 = type metadata accessor for EngagementSyncCoordinator();
  v16 = a2;

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v16);
  LogInterpolation.init(stringLiteral:)();
  v18 = &type metadata for String;
  v16 = a3;
  v17 = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v16, &qword_10026D350, &qword_1001E6050);
  v18 = &type metadata for String;
  v16 = a5;
  v17 = a6;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v16, &qword_10026D350, &qword_1001E6050);
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12, v9);

  sub_1000F2C60(a5, a6);
  return sub_1000F2010(a3, a4);
}

uint64_t sub_1000F2C60(uint64_t a1, uint64_t a2)
{
  sub_100057298();

  swift_isUniquelyReferenced_nonNull_native();
  sub_1000ABF90();
  sub_1000F2F9C();
}

uint64_t sub_1000F2D04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E61C0;
  v20 = type metadata accessor for EngagementSyncCoordinator();
  v18 = a2;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v18);
  swift_getErrorValue();
  v11 = Error.localizedDescription.getter();
  v20 = &type metadata for String;
  v18 = v11;
  v19 = v12;
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v18, &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v20 = &type metadata for String;
  v18 = a3;
  v19 = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v18, &qword_10026D350, &qword_1001E6050);
  v20 = &type metadata for String;
  v18 = a5;
  v19 = a6;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v18, &qword_10026D350, &qword_1001E6050);
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13, v8);

  return sub_1000F2010(a3, a4);
}

void sub_1000F2F9C()
{
  sub_100003CA8((v0 + 56), *(v0 + 80));
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  sub_1000C2474(isa, 3);
}

uint64_t sub_1000F3014()
{
  sub_100002C00((v0 + 16));
  sub_100002C00((v0 + 56));

  return v0;
}

uint64_t sub_1000F304C()
{
  sub_1000F3014();

  return swift_deallocClassInstance();
}

unint64_t *sub_1000F3080(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v12 = sub_100057630(v11, a2, a3, a4, a5, a6);
    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

void sub_1000F3168()
{
  if (!sub_100057280(9) || (sub_10007B9A4(&qword_10026CA28, &unk_1001EBF10), (swift_dynamicCast() & 1) == 0))
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1000AC528();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1000C2474(isa, 9);
}

uint64_t sub_1000F3320(void *a1, uint64_t a2)
{
  v16 = type metadata accessor for Defaults();
  v17 = &off_100248840;
  v15[0] = a1;
  sub_100003CA8(v15, v16);
  v4 = a1;
  if (sub_100057280(9) && (sub_10007B9A4(&qword_10026CA28, &unk_1001EBF10), (swift_dynamicCast() & 1) != 0))
  {
    v5 = v14;
  }

  else
  {
    v5 = Dictionary.init(dictionaryLiteral:)();
  }

  v6 = *(a2 + 1);
  v7 = 0xE900000000000073;
  v8 = 0x636974796C616E61;
  switch(v6)
  {
    case 1:
      v7 = 0xE800000000000000;
      v8 = 0x6C616E7265746E69;
      break;
    case 2:
      v7 = 0xE800000000000000;
      v8 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v7 = 0xEF736E6F69746164;
      v8 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v9 = sub_10001B0E4(v8, v7, v5);
  v11 = v10;

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  sub_100002C00(v15);
  return v12;
}

uint64_t sub_1000F34BC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v7 = __chkstk_darwin(v6 - 8);
  v38 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v42 = type metadata accessor for Defaults();
  v43 = &off_100248840;
  v41[0] = a2;
  sub_100003CA8(v41, v42);
  v18 = a2;
  v19 = sub_100057280(8);
  if (v19 && (v40 = v19, sub_10007B9A4(&qword_10026A0A0, &qword_1001E77F8), (swift_dynamicCast() & 1) != 0))
  {
    v20 = v39;
  }

  else
  {
    v20 = Dictionary.init(dictionaryLiteral:)();
  }

  v21 = 0xE900000000000073;
  v22 = 0x636974796C616E61;
  sub_1000652F0(a1, v10);
  if (sub_100009F34(v10, 1, v11) == 1)
  {
    sub_10000A064(v10, &unk_100271EA0, &qword_1001E77F0);
    v23 = sub_100012A94();
    if (v24)
    {
      v25 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v20;
      v27 = *(v20 + 24);
      sub_10007B9A4(&unk_10026AE80, &unk_1001E8630);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v27);
      v28 = v40;

      v29 = v38;
      (*(v12 + 32))(v38, v28[7] + *(v12 + 72) * v25, v11);
      _NativeDictionary._delete(at:)();
      v30 = 0;
    }

    else
    {
      v30 = 1;
      v29 = v38;
    }

    sub_10000A7C0(v29, v30, 1, v11);

    sub_10000A064(v29, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    switch(*(a3 + 1))
    {
      case 1:
        v21 = 0xE800000000000000;
        v22 = 0x6C616E7265746E69;
        break;
      case 2:
        v21 = 0xE800000000000000;
        v22 = 0x7379656E72756F6ALL;
        break;
      case 3:
        v22 = 0x6E656D6D6F636572;
        v21 = 0xEF736E6F69746164;
        break;
      default:
        break;
    }

    (*(v12 + 16))(v15, v17, v11);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v20;
    sub_1000AC5EC(v15, v22, v21, v31, v32, v33, v34, v35, v38, v39);

    (*(v12 + 8))(v17, v11);
  }

  sub_100003CA8(v41, v42);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1000C2474(isa, 8);

  return sub_100002C00(v41);
}

uint64_t sub_1000F39E8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000F3A40(uint64_t a1, uint64_t a2)
{
  v45[1] = a2;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for ScheduleInfo(0);
  __chkstk_darwin(v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v45 - v12;
  __chkstk_darwin(v11);
  v15 = v45 - v14;
  v16 = AMSLogKey();
  if (v16)
  {
    v17 = v16;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v46 = 0;
  }

  v18 = AMSGenerateLogCorrelationKey();
  v45[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v19;

  v48 = 0x73746E657665;
  v49 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v50, a1, &v53);
  sub_10000E1E8(&v50);
  if (v54)
  {
    v20 = sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
    if (sub_100005264(v20))
    {
      v21 = v48;
      goto LABEL_9;
    }
  }

  else
  {
    sub_10000A064(&v53, &qword_10026D350, &qword_1001E6050);
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_9:
  sub_10000A7C0(v15, 1, 1, v4);
  v48 = 0x656C756465686373;
  v49 = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v50, a1, &v53);
  sub_10000E1E8(&v50);
  if (v54)
  {
    v22 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    if (sub_100005264(v22))
    {

      sub_1001910E0();
      sub_10000A064(v15, &qword_100269F90, &qword_1001E8720);
      sub_1000F449C(v13, v15);
    }
  }

  else
  {
    sub_10000A064(&v53, &qword_10026D350, &qword_1001E6050);
  }

  sub_1000A94A8(v15, v10);
  if (sub_100009F34(v10, 1, v4) == 1)
  {
    sub_10000A064(v10, &qword_100269F90, &qword_1001E8720);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1001E5F70;
    type metadata accessor for EnqueueAction();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v24._countAndFlagsBits = 0xD000000000000021;
    v24._object = 0x80000001001F7630;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
    v52 = &type metadata for String;
    v25 = v45[0];
    v26 = v47;
    v50 = v45[0];
    v51 = v47;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v50, &qword_10026D350, &qword_1001E6050);
    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v28 = static os_log_type_t.default.getter();
    sub_1000036B0(v28, v23);

    v29 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
    sub_1000F4334(v21, v29);
    sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1001E8AB0;
    v31 = v30;
    sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
    *(v31 + 32) = sub_100092378();
    sub_1000F43B4(v31, v29);
    v40 = [objc_opt_self() currentProcess];
    [v29 setClientInfo:v40];

    sub_1000F4438(v25, v26, v29);
    sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
    v41 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
    v42 = [objc_allocWithZone(AMSEngagement) initWithBag:v41];

    v43 = [v42 _enqueue:v29];
  }

  else
  {

    sub_1000A1B18(v10, v6);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1001E5F70;
    type metadata accessor for EnqueueAction();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v33._object = 0x80000001001F7660;
    v33._countAndFlagsBits = 0xD00000000000001BLL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
    v34 = *(v4 + 20);
    v35 = &v6[v34 + *(type metadata accessor for ScheduleInfo.Metadata(0) + 44)];
    v37 = *v35;
    v36 = *(v35 + 1);
    v52 = &type metadata for String;
    v50 = v37;
    v51 = v36;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v50, &qword_10026D350, &qword_1001E6050);
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v39 = static os_log_type_t.default.getter();
    sub_1000036B0(v39, v32);

    sub_10009B1A0(v6);
    sub_1000A1B7C(v6);
  }

  return sub_10000A064(v15, &qword_100269F90, &qword_1001E8720);
}

void sub_1000F4334(uint64_t a1, void *a2)
{
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setEvents:isa];
}

void sub_1000F43B4(uint64_t a1, void *a2)
{
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setDestinations:isa];
}

void sub_1000F4438(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setLogKey:v4];
}

uint64_t sub_1000F449C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unsigned __int8 *sub_1000F450C(uint64_t a1, void *a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v17, a1, &v18);
  sub_10000E1E8(v17);
  if (!v19)
  {
    goto LABEL_8;
  }

  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v17, 0x746E756F636361, &v18);

  sub_10000E1E8(v17);
  if (!v19)
  {
LABEL_8:
    sub_100002C5C(&v18);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v4 = 4;
    v17[0] = 1684632420;
    v17[1] = 0;
    v8 = 0;
    v9 = v17;
    while (1)
    {
      v10 = *v9 - 48;
      if (v10 > 9)
      {
        break;
      }

      v11 = 10 * v8;
      if ((v8 * 10) >> 64 != (10 * v8) >> 63)
      {
        break;
      }

      v8 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        break;
      }

      ++v9;
      if (!--v4)
      {
        goto LABEL_17;
      }
    }

    v8 = 0;
    LOBYTE(v4) = 1;
LABEL_17:
    LOBYTE(v18) = v4;
    v12 = v4;

    if ((v12 & 1) == 0)
    {
      v13 = objc_opt_self();
      v14 = [a2 clientInfo];
      v15 = [v13 ams_sharedAccountStoreForClient:v14];

      v16 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
      v6 = [v15 ams_iTunesAccountWithDSID:v16];

      goto LABEL_10;
    }
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  sub_1000F4A00();

  return sub_1000991BC(v7, 0, v6, 0);
}

unint64_t sub_1000F4A00()
{
  result = qword_10026CAD8;
  if (!qword_10026CAD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026CAD8);
  }

  return result;
}

id sub_1000F4A44()
{
  v0 = String._bridgeToObjectiveC()();
  if (qword_1002685F8 != -1)
  {
    swift_once();
  }

  v1 = [qword_10026A070 integerForKey:v0];
  v2 = [v1 valuePromise];

  v8 = 0;
  v3 = [v2 resultWithError:&v8];

  v4 = v8;
  if (v3)
  {
    v8 = 0;
    v9 = 1;
    v5 = v4;
    static Int._conditionallyBridgeFromObjectiveC(_:result:)();

    return v8;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }
}

void sub_1000F4BC0(uint64_t a1, void *a2)
{
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setActions:isa];
}

id sub_1000F4C40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  v9 = [v8 ams_sanitizedForSecureCoding];

  return v9;
}

unint64_t sub_1000F4DD8(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_1000F4DE8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F4DD8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000F4E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9498();
  v5 = sub_100050EF8();

  return CustomNSError<>.errorCode.getter(a1, a2, v4, v5);
}

uint64_t sub_1000F4E74(uint64_t a1)
{
  v2 = sub_1000F9444();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000F4EB0(uint64_t a1)
{
  v2 = sub_1000F9444();
  v3 = sub_1000F9498();
  v4 = sub_100050EF8();

  return Error<>._code.getter(a1, v2, v3, v4);
}

BOOL sub_1000F4F0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244EA0, v2);

  return v3 != 0;
}

BOOL sub_1000F4F7C@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F4F0C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000F4FB0@<X0>(void *a1@<X8>)
{
  result = sub_1000F4F54();
  *a1 = 0xD000000000000022;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000F4FE0()
{
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002CC4();
  v15 = v2;
  v16 = v1;
  __chkstk_darwin(v1);
  sub_1000052A4();
  v14 = v3;
  sub_100003D1C();
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  sub_100002DEC();
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100002DEC();
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100002DEC();
  v12 = v11 - v10;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v12, enum case for DispatchQoS.QoSClass.utility(_:), v6);
  static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v12, v6);
  static DispatchQoS.unspecified.getter();
  sub_100013AFC(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v15 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000F892C();
  return v0;
}

_OWORD *sub_1000F52E4(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v5 = *(v2 + 16);
  v6 = sub_100049574(v5);

  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v3 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v2 = a2;
    v9 = [v8 bundleIdentifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 == v30 && v12 == v2)
    {

LABEL_19:

      if (qword_1002686E0 != -1)
      {
LABEL_27:
        sub_10000B8E0(&qword_1002686E0);
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v18 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v18);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1001E5F60;
      v29 = type metadata accessor for ExtensionLoader();
      v27 = v26;

      v20 = AMSLogKey();
      if (v20)
      {
        v21 = v20;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v27);
      LogInterpolation.init(stringLiteral:)();
      v29 = &type metadata for String;
      v27 = v30;
      v28 = v2;

      static LogInterpolation.safe(_:)();
      sub_10000A064(&v27, &qword_10026D350, &qword_1001E6050);
      v22 = static os_log_type_t.default.getter();
      sub_1000036B0(v22, v19);

      return v3;
    }

    a2 = v2;
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_19;
    }
  }

  if (qword_1002686E0 != -1)
  {
    sub_10000B8E0(&qword_1002686E0);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v15 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v15);
  v3 = swift_allocObject();
  v3[1] = xmmword_1001E5F60;
  v29 = type metadata accessor for ExtensionLoader();
  v27 = v26;

  v16 = AMSLogKey();
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v27);
  LogInterpolation.init(stringLiteral:)();
  v29 = &type metadata for String;
  v27 = v30;
  v28 = a2;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v27, &qword_10026D350, &qword_1001E6050);
  v23 = static os_log_type_t.error.getter();
  sub_1000036B0(v23, v3);

  sub_1000F90A8();
  swift_allocError();
  *v24 = 1;
  swift_willThrow();
  return v3;
}

uint64_t sub_1000F57B0(uint64_t a1, void *a2, uint64_t a3, int a4, void (*a5)(uint64_t, uint64_t), void (*a6)(void, void))
{
  v208 = a5;
  v209 = a6;
  LODWORD(v210) = a4;
  v222 = a3;
  v235 = a1;
  v225 = *v6;
  type metadata accessor for OSSignpostError();
  sub_100002CC4();
  v200 = v9;
  v201 = v8;
  __chkstk_darwin(v8);
  sub_1000052A4();
  v207 = v10;
  sub_100003D1C();
  v218 = type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v224 = v11;
  __chkstk_darwin(v12);
  sub_1000052A4();
  v217 = v13;
  sub_100003D1C();
  v216 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v223 = v14;
  __chkstk_darwin(v15);
  sub_1000052A4();
  v215 = v16;
  sub_100003D1C();
  type metadata accessor for DispatchTimeInterval();
  sub_100002CC4();
  v204 = v18;
  v205 = v17;
  __chkstk_darwin(v17);
  sub_1000052A4();
  v203 = v19;
  sub_100003D1C();
  v214 = type metadata accessor for DispatchTime();
  sub_100002CC4();
  v206 = v20;
  __chkstk_darwin(v21);
  sub_100005C2C();
  v202 = v22;
  __chkstk_darwin(v23);
  v213 = &v199 - v24;
  sub_100003D1C();
  v25 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v25 - 8);
  sub_1000052A4();
  *&v231 = v26;
  sub_100003D1C();
  v27 = type metadata accessor for OSSignposter();
  sub_100002CC4();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_100005C2C();
  v221 = v31;
  v33 = __chkstk_darwin(v32);
  v35 = &v199 - v34;
  __chkstk_darwin(v33);
  v37 = &v199 - v36;
  type metadata accessor for OSSignpostID();
  sub_100002CC4();
  v240 = v39;
  v241 = v38;
  __chkstk_darwin(v38);
  sub_100005C2C();
  v211 = v40;
  v42 = __chkstk_darwin(v41);
  v44 = &v199 - v43;
  __chkstk_darwin(v42);
  v46 = &v199 - v45;
  v226 = a2;
  v47 = [a2 bundleIdentifier];
  v243 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  if (qword_1002686E0 != -1)
  {
    sub_10000B8E0(&qword_1002686E0);
  }

  v50 = qword_100287840;
  v51 = *(qword_100287840 + 16);
  OSSignposter.init(logHandle:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v52 = *(v29 + 8);
  v233 = v29 + 8;
  v234 = v27;
  v232 = v52;
  v52(v37, v27);
  v242 = v50;
  v53 = *(v50 + 16);
  OSSignposter.init(logHandle:)();

  v54 = OSSignposter.logHandle.getter();
  v55 = static os_signpost_type_t.begin.getter();

  v56 = OS_os_log.signpostsEnabled.getter();
  v239 = v46;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v250 = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_1000127B4();
    v59 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, v55, v59, "ExtensionLoader", "Request to %s", v57, 0xCu);
    sub_100002C00(v58);
    v46 = v239;
  }

  v60 = v244;
  (*(v240 + 16))(v44, v46, v241);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v237 = OSSignpostIntervalState.init(id:isOpen:)();
  (v232)(v35, v234);
  v61 = swift_allocObject();
  sub_100191E50(&v256);
  v62 = v257;
  v259 = v257;
  *(v61 + 16) = v256;
  *(v61 + 32) = v62;
  *(v61 + 48) = v258;
  v63 = v243;
  *(v61 + 32) = v243;
  *(v61 + 40) = v49;

  sub_10000A064(&v259, &unk_10026CD20, &unk_1001E7CC0);
  [*(v61 + 56) lock];
  sub_10000E42C(0x6E69726170657250, 0xE900000000000067, 0x74736575716572, 0xE700000000000000);
  [*(v61 + 56) unlock];
  v64 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v65 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v65);
  v68 = *(v67 + 80);
  v69 = (v68 + 32) & ~v68;
  v238 = *(v66 + 72);
  v227 = v68;
  v229 = v64;
  v220 = v69 + 2 * v238;
  v70 = swift_allocObject();
  v219 = xmmword_1001E5F70;
  *(v70 + 16) = xmmword_1001E5F70;
  v230 = v69;
  v228 = type metadata accessor for ExtensionLoader();
  v253 = v228;
  v250 = v60;

  v71 = AMSLogKey();
  v236 = v61;
  if (v71)
  {
    v72 = v71;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100004C88();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v250);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v73._countAndFlagsBits = v61 | 3;
  v73._object = 0x80000001001F7990;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v73);
  sub_100011BAC(v235, &v250);
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  sub_100023D70();
  v74._countAndFlagsBits = 544175136;
  v74._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v74);
  v253 = &type metadata for String;
  v250 = v63;
  v251 = v49;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100023D70();
  v75._countAndFlagsBits = 41;
  v75._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v75);
  v76 = v238;
  LogInterpolation.init(stringInterpolation:)();
  v77 = static os_log_type_t.default.getter();
  sub_10000C3C4(v77);

  v250 = 0;
  v78 = [v226 makeXPCConnectionWithError:&v250];
  v79 = v250;
  if (v78)
  {
    v80 = v78;
    v81 = objc_opt_self();
    v82 = v79;
    v83 = v80;
    v84 = [v81 interfaceWithProtocol:&OBJC_PROTOCOL___AMSEngagementExtensionRemoteContextProtocol];
    [v83 setRemoteObjectInterface:v84];

    [v83 resume];
    v85 = swift_allocObject();
    v86 = v244;
    v85[2] = v244;
    v85[3] = v63;
    v85[4] = v49;
    v254 = sub_1000F91AC;
    v255 = v85;
    v250 = _NSConcreteStackBlock;
    v251 = 1107296256;
    v252 = sub_1000266E0;
    v253 = &unk_10024B5D0;
    v87 = _Block_copy(&v250);

    v88 = [v83 synchronousRemoteObjectProxyWithErrorHandler:v87];

    _Block_release(v87);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100011BAC(v249, &v250);
    sub_10007B9A4(&qword_10026CD38, &unk_1001EC0C0);
    if (swift_dynamicCast())
    {
      v89 = *&v248[0];
      v90 = v83;
      sub_1000F8A74(v90, v90);
      v91 = swift_allocObject();
      *(v91 + 16) = 0;
      v92 = swift_allocObject();
      v93 = v209;
      v92[2] = v208;
      v92[3] = v93;
      v94 = objc_allocWithZone(NSLock);

      v95 = [v94 init];
      sub_100004C9C();
      v96 = swift_allocObject();
      v96[2] = v91;
      v96[3] = v95;
      v96[4] = v90;
      v96[5] = v92;
      v97 = v237;
      v96[6] = v236;
      v96[7] = v97;
      v233 = v96;
      v96[8] = v225;
      v98 = *(v222 + *(type metadata accessor for ExtensionLoader.RequestOptions(0) + 20)) * 1000.0;
      if (COERCE__INT64(fabs(v98)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v98 > -9.22337204e18)
      {
        if (v98 < 9.22337204e18)
        {
          v211 = v90;
          v221 = v89;
          v99 = v98;
          v209 = v86[3];

          v210 = v95;
          v226 = v92;

          v100 = v202;
          static DispatchTime.now()();
          v101 = v91;
          v103 = v203;
          v102 = v204;
          v201 = v99;
          *v203 = v99;
          v104 = v205;
          (*(v102 + 104))(v103, enum case for DispatchTimeInterval.milliseconds(_:), v205);
          + infix(_:_:)();
          (*(v102 + 8))(v103, v104);
          v205 = *(v206 + 8);
          v205(v100, v214);
          v105 = swift_allocObject();
          swift_weakInit();
          sub_100004C9C();
          v106 = swift_allocObject();
          v106[2] = v101;
          v106[3] = v105;
          v106[4] = v243;
          v106[5] = v49;
          v107 = v233;
          v106[6] = sub_1000F91B8;
          v106[7] = v107;
          v106[8] = v225;
          v254 = sub_1000F9238;
          v255 = v106;
          v250 = _NSConcreteStackBlock;
          v251 = 1107296256;
          v252 = sub_100005E50;
          v253 = &unk_10024B6C0;
          v108 = _Block_copy(&v250);
          v234 = v49;

          v232 = v101;

          v109 = v215;
          static DispatchQoS.unspecified.getter();
          *&v248[0] = _swiftEmptyArrayStorage;
          v110 = sub_100013AFC(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          v111 = sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
          v112 = sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
          v113 = v217;
          v206 = v112;
          v207 = v111;
          v114 = v218;
          v225 = v110;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v115 = v213;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v108);
          v116 = *(v224 + 8);
          v224 += 8;
          v209 = v116;
          v116(v113, v114);
          v117 = *(v223 + 8);
          v223 += 8;
          v208 = v117;
          v117(v109, v216);
          v205(v115, v214);

          sub_10000ABEC();
          v118 = swift_allocObject();
          sub_100012C7C(v118);
          v253 = v228;
          v250 = v244;

          v119 = AMSLogKey();
          if (v119)
          {
            v120 = v119;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          sub_100004C88();
          static LogInterpolation.prefix(_:_:)();

          sub_100002C00(&v250);
          LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v163._countAndFlagsBits = v109 + 6;
          v163._object = 0x80000001001F7AC0;
          LogInterpolation.StringInterpolation.appendLiteral(_:)(v163);
          v253 = &type metadata for String;
          v164 = v243;
          v165 = v234;
          v250 = v243;
          v251 = v234;

          LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
          sub_100023D70();
          v166._countAndFlagsBits = 0x756F656D69742820;
          v166._object = 0xEB00000000203A74;
          LogInterpolation.StringInterpolation.appendLiteral(_:)(v166);
          v253 = &type metadata for Int;
          v250 = v201;
          LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
          sub_100023D70();
          v167._countAndFlagsBits = 695430432;
          v167._object = 0xE400000000000000;
          LogInterpolation.StringInterpolation.appendLiteral(_:)(v167);
          LogInterpolation.init(stringInterpolation:)();
          v168 = static os_log_type_t.default.getter();
          sub_10000C3C4(v168);

          v169 = v236;
          swift_beginAccess();
          [*(v169 + 56) lock];
          sub_100007508(v109 + 2, 0x80000001001F7AE0);
          [*(v169 + 56) unlock];
          swift_endAccess();
          sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
          v242 = static OS_dispatch_queue.global(qos:)();
          sub_100011BAC(v235, v248);
          v170 = swift_allocObject();
          *(v170 + 16) = v221;
          sub_100002C4C(v248, (v170 + 24));
          *(v170 + 56) = v244;
          *(v170 + 64) = v164;
          *(v170 + 72) = v165;
          *(v170 + 80) = sub_1000F91B8;
          *(v170 + 88) = v233;
          v254 = sub_1000F924C;
          v255 = v170;
          v250 = _NSConcreteStackBlock;
          v251 = 1107296256;
          v252 = sub_100005E50;
          v253 = &unk_10024B710;
          v171 = _Block_copy(&v250);

          swift_unknownObjectRetain();
          v172 = v215;
          static DispatchQoS.unspecified.getter();
          v245 = _swiftEmptyArrayStorage;
          v174 = v217;
          v173 = v218;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v175 = v242;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v171);

          swift_unknownObjectRelease();

          v209(v174, v173);
          v208(v172, v216);
          sub_100002C00(v249);
          v176 = sub_100007A68();
          v177(v176);
        }

LABEL_42:
        __break(1u);
      }

      __break(1u);
      goto LABEL_42;
    }

    sub_10000ABEC();
    v126 = swift_allocObject();
    sub_100012C7C(v126);
    v129 = v127 + v128;
    v253 = v228;
    v250 = v86;

    v130 = AMSLogKey();
    v131 = v236;
    if (v130)
    {
      v132 = v130;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v154 = v207;
    sub_100019C30();
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v250);
    sub_10000A3EC();
    LogInterpolation.init(stringLiteral:)();
    v155 = static os_log_type_t.error.getter();
    sub_10000C3C4(v155);

    v156 = *(v129 + 16);
    OSSignposter.init(logHandle:)();
    v157 = OSSignposter.logHandle.getter();
    v158 = v211;
    OSSignpostIntervalState.signpostID.getter();
    v159 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v161 = v200;
      v160 = v201;
      if ((*(v200 + 88))(v154, v201) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v162 = "[Error] Interval already ended";
      }

      else
      {
        (*(v161 + 8))(v154, v160);
        v162 = "Proxy Object does not conform to protocol";
      }

      v182 = swift_slowAlloc();
      *v182 = 0;
      v183 = v211;
      v184 = OSSignpostID.rawValue.getter();
      v185 = v162;
      v158 = v183;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v157, v159, v184, "ExtensionLoader", v185, v182, 2u);
    }

    v186 = v241;
    v244 = *(v240 + 8);
    (v244)(v158, v241);
    (v232)(v221, v234);
    [*(v131 + 56) lock];
    sub_100007508(0xD000000000000026, 0x80000001001F7A90);
    [*(v131 + 56) unlock];
    sub_1000F90A8();
    v187 = sub_10000642C(&type metadata for ExtensionLoaderError);
    *v188 = 0;
    [*(v131 + 56) lock];
    *(v131 + 24) = v187;

    [*(v131 + 56) unlock];
    v189 = *(v131 + 32);
    v260[0] = *(v131 + 16);
    v260[1] = v189;
    v260[2] = *(v131 + 48);
    sub_1000F90FC(v260, &v250);
    sub_100191EDC();
    sub_1000F9158(v260);
    sub_10000642C(&type metadata for ExtensionLoaderError);
    *v190 = 0;
    swift_willThrow();

    sub_100002C00(v249);
    (v244)(v239, v186);
  }

  v233 = 2 * v76;
  v234 = v49;
  v121 = v250;
  v122 = _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10000ABEC();
  v123 = swift_allocObject();
  sub_10000BF8C(v123, xmmword_1001E61C0);
  v124 = AMSLogKey();
  if (v124)
  {
    v125 = v124;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100019C30();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v250);
  LogInterpolation.init(stringLiteral:)();
  v253 = &type metadata for String;
  v250 = v243;
  v251 = v234;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v250, &qword_10026D350, &qword_1001E6050);
  v232 = 3 * v76;
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v133 = v246;
  v134 = v247;
  v253 = v247;
  v135 = sub_100017E64(&v250);
  (*(*(v134 - 1) + 16))(v135, v133, v134);
  sub_100019C30();
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v250, &qword_10026D350, &qword_1001E6050);
  v136 = static os_log_type_t.error.getter();
  sub_10000C3C4(v136);

  if (v210)
  {

    v137 = v236;
    [*(v236 + 56) lock];
    sub_100007508(0xD000000000000011, 0x80000001001F7A40);
    [*(v137 + 56) unlock];
    sub_1000F90A8();
    v138 = sub_10000642C(&type metadata for ExtensionLoaderError);
    *v139 = 0;
    [*(v137 + 56) lock];
    *(v137 + 24) = v138;

    [*(v137 + 56) unlock];
    v140 = *(v137 + 32);
    v261[0] = *(v137 + 16);
    v261[1] = v140;
    v261[2] = *(v137 + 48);
    sub_1000F90FC(v261, &v250);
    sub_100191EDC();
    sub_1000F9158(v261);
    sub_10000642C(&type metadata for ExtensionLoaderError);
    *v141 = 0;
    swift_willThrow();
    sub_1000F7374(v237);

    v142 = sub_100007A68();
    v143(v142);
  }

  v144 = _convertErrorToNSError(_:)();
  v145 = [v144 domain];
  v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v148 = v147;

  v150 = v146 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v148 == v149;
  v151 = v122;
  if (v150)
  {

    v153 = v237;
  }

  else
  {
    v152 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v153 = v237;
    if ((v152 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  if ([v144 code] != 5)
  {
LABEL_34:

    swift_willThrow();

    sub_1000F7374(v153);

    v195 = sub_100007A68();
    v196(v195);
  }

  v212 = v151;
  sub_10000ABEC();
  v179 = swift_allocObject();
  v231 = xmmword_1001E5F60;
  sub_10000BF8C(v179, xmmword_1001E5F60);
  v180 = AMSLogKey();
  if (v180)
  {
    v181 = v180;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100019C30();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v250);
  sub_10000A3EC();
  LogInterpolation.init(stringLiteral:)();
  v253 = &type metadata for String;
  v191 = v243;
  v192 = v234;
  v250 = v243;
  v251 = v234;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v250, &qword_10026D350, &qword_1001E6050);
  v193 = static os_log_type_t.default.getter();
  sub_1000036B0(v193, v179);

  sub_1000F892C();
  v194 = sub_1000F52E4(v191, v192);
  sub_1000F57B0(v235, v194, v222, 1, v208, v209);

  sub_1000F7374(v153);

  v197 = sub_100007A68();
  v198(v197);
}

uint64_t sub_1000F7374(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v19 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OSSignpostID();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OSSignposter();
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E0 != -1)
  {
    swift_once();
  }

  v10 = *(qword_100287840 + 16);
  OSSignposter.init(logHandle:)();
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v13 = v19;
    if ((*(v19 + 88))(v3, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v13 + 8))(v3, v1);
      v14 = "Failed to make XPC connection";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v16, "ExtensionLoader", v14, v15, 2u);
  }

  (*(v4 + 8))(v6, v21);
  return (*(v7 + 8))(v9, v20);
}

uint64_t sub_1000F769C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1002686E0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F60;
  v13 = type metadata accessor for ExtensionLoader();
  v12[0] = a2;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v12);
  LogInterpolation.init(stringLiteral:)();
  v13 = &type metadata for String;
  v12[0] = a3;
  v12[1] = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A064(v12, &qword_10026D350, &qword_1001E6050);
  v10 = static os_log_type_t.error.getter();
  sub_1000036B0(v10, v7);
}

id sub_1000F7894(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a8;
  v41 = type metadata accessor for OSSignpostError();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for OSSignpostID();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for OSSignposter();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    v40 = a4;
    [a4 lock];
    [a5 invalidate];
    swift_beginAccess();
    *(a3 + 16) = 1;
    swift_beginAccess();
    v22 = *(a6 + 16);
    if (v22)
    {
      v23 = *(a6 + 24);

      v22(a1, a2);
      sub_100014A10(v22, v23);
    }

    swift_beginAccess();
    v24 = *(a6 + 16);
    v25 = *(a6 + 24);
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
    sub_100014A10(v24, v25);
    if (a2)
    {
      swift_beginAccess();
      v26 = *(a7 + 56);
      swift_errorRetain();
      swift_errorRetain();
      [v26 lock];
      *(a7 + 24) = a2;

      [v26 unlock];
      [*(a7 + 56) lock];
      sub_10000E42C(0x64656873696E6946, 0xE800000000000000, 0x74736575716572, 0xE700000000000000);
      [*(a7 + 56) unlock];
      swift_endAccess();
      swift_beginAccess();
      v27 = *(a7 + 32);
      v50[0] = *(a7 + 16);
      v50[1] = v27;
      v50[2] = *(a7 + 48);
      sub_1000F90FC(v50, v48);
      sub_100191EDC();
      sub_1000F9158(v50);
    }

    if (qword_1002686E0 != -1)
    {
      swift_once();
    }

    v28 = *(qword_100287840 + 16);
    OSSignposter.init(logHandle:)();
    sub_100003C38(a1, v48);
    v29 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v30 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v31 = v42;
      v32 = v41;
      if ((*(v42 + 88))(v16, v41) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v33 = 0;
        v34 = 0;
        v35 = "[Error] Interval already ended";
      }

      else
      {
        (*(v31 + 8))(v16, v32);
        v35 = "%s";
        v34 = 2;
        v33 = 1;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = v34;
      *(v36 + 1) = v33;
      *(v36 + 2) = 2080;
      sub_10000A064(v48, &qword_10026D350, &qword_1001E6050);
      v38 = sub_1000127B4();

      *(v36 + 4) = v38;
      v39 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v30, v39, "ExtensionLoader", v35, v36, 0xCu);
      sub_100002C00(v37);

      (*(v46 + 8))(v18, v47);
      (*(v44 + 8))(v20, v45);
    }

    else
    {

      (*(v46 + 8))(v18, v47);
      (*(v44 + 8))(v20, v45);
      sub_10000A064(v48, &qword_10026D350, &qword_1001E6050);
    }

    return [v40 unlock];
  }

  return result;
}

uint64_t sub_1000F7F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, uint64_t), uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_1002686E0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001E5F70;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v31 = type metadata accessor for ExtensionLoader();
      *&v30 = v15;
      sub_100002C4C(&v30, &v32);
    }

    else
    {
      *(&v33 + 1) = swift_getMetatypeMetadata();
      *&v32 = a7;
    }

    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v32);
    LogInterpolation.init(stringLiteral:)();
    v23 = static os_log_type_t.debug.getter();
    sub_1000036B0(v23, v13);
  }

  else
  {
    if (qword_1002686E0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001E5F70;
    swift_beginAccess();
    v17 = swift_weakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v31 = type metadata accessor for ExtensionLoader();
      *&v30 = v18;
      sub_100002C4C(&v30, &v32);
    }

    else
    {
      *(&v33 + 1) = swift_getMetatypeMetadata();
      *&v32 = a7;
    }

    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v32);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._countAndFlagsBits = 0x2074736575716552;
    v25._object = 0xEB00000000206F74;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    *(&v33 + 1) = &type metadata for String;
    *&v32 = a3;
    *(&v32 + 1) = a4;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v32, &qword_10026D350, &qword_1001E6050);
    v26._object = 0x80000001001F7B40;
    v26._countAndFlagsBits = 0xD00000000000001DLL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
    LogInterpolation.init(stringInterpolation:)();
    v27 = static os_log_type_t.default.getter();
    sub_1000036B0(v27, v16);

    sub_1000F90A8();
    v32 = 0u;
    v33 = 0u;
    v28 = swift_allocError();
    *v29 = 2;
    a5(&v32, v28);

    return sub_10000A064(&v32, &qword_10026D350, &qword_1001E6050);
  }
}

uint64_t sub_1000F83F8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100003CA8(a2, a2[3]);
  v13 = _bridgeAnythingToObjectiveC<A>(_:)();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v17[4] = sub_1000F9264;
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000F887C;
  v17[3] = &unk_10024B760;
  v15 = _Block_copy(v17);

  [a1 performRequestWithObject:v13 completion:v15];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1000F8538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v11 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  if (qword_1002686E0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001E5F70;
  *(&v26 + 1) = type metadata accessor for ExtensionLoader();
  *&v25 = a3;

  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v25);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x80000001001F7B20;
  v15._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  *(&v26 + 1) = &type metadata for String;
  *&v25 = a4;
  *(&v25 + 1) = a5;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v25, &qword_10026D350, &qword_1001E6050);
  v16._countAndFlagsBits = 0x6C75736572202D20;
  v16._object = 0xEB00000000203A74;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v17._countAndFlagsBits = 0x726F727265202D20;
  v17._object = 0xEA0000000000203ALL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  if (a2)
  {
    swift_getErrorValue();
    *(&v26 + 1) = v24;
    v18 = sub_100017E64(&v25);
    (*(*(v24 - 8) + 16))(v18);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v25, &qword_10026D350, &qword_1001E6050);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  LogInterpolation.init(stringInterpolation:)();
  v20 = static os_log_type_t.default.getter();
  sub_1000036B0(v20, v12);

  return a6(a1, a2);
}

uint64_t sub_1000F887C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_100002C4C(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_10000A064(v10, &qword_10026D350, &qword_1001E6050);
}

uint64_t sub_1000F892C()
{
  v1 = v0;
  sub_100002BC0(0, &qword_10026CD10, _EXQuery_ptr);
  v2 = sub_1000F8A00();
  v3 = [objc_opt_self() executeQuery:v2];
  sub_100002BC0(0, &qword_10026CD18, _EXExtensionIdentity_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v1 + 16) = v4;
}

id sub_1000F8A00()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithExtensionPointIdentifier:v1];

  return v2;
}

void sub_1000F8A74(uint64_t a1, void *a2)
{
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_100005E50;
  v9 = &unk_10024B530;
  v4 = _Block_copy(&v6);

  [a2 setInvalidationHandler:v4];
  _Block_release(v4);
  v10 = sub_1000F90A0;
  v11 = v2;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_100005E50;
  v9 = &unk_10024B558;
  v5 = _Block_copy(&v6);

  [a2 setInterruptionHandler:v5];
  _Block_release(v5);
}

uint64_t sub_1000F8BCC(uint64_t a1)
{
  if (qword_1002686E0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001E5F70;
  v7[3] = type metadata accessor for ExtensionLoader();
  v7[0] = a1;

  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v7);
  LogInterpolation.init(stringLiteral:)();
  v5 = static os_log_type_t.debug.getter();
  sub_1000036B0(v5, v2);
}

uint64_t sub_1000F8D70(uint64_t a1)
{
  if (qword_1002686E0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001E5F70;
  v7[3] = type metadata accessor for ExtensionLoader();
  v7[0] = a1;

  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v7);
  LogInterpolation.init(stringLiteral:)();
  v5 = static os_log_type_t.error.getter();
  sub_1000036B0(v5, v2);
}

uint64_t sub_1000F8F14()
{

  return v0;
}

uint64_t sub_1000F8F3C()
{
  sub_1000F8F14();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for ExtensionLoader.ExtensionPoint(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1000F9044()
{
  result = qword_10026CCE0;
  if (!qword_10026CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CCE0);
  }

  return result;
}

unint64_t sub_1000F90A8()
{
  result = qword_10026CD30;
  if (!qword_10026CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CD30);
  }

  return result;
}

uint64_t type metadata accessor for ExtensionLoader.RequestOptions(uint64_t a1)
{
  result = qword_10026CDB0;
  if (!qword_10026CDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExtensionLoaderError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000F9378(uint64_t a1)
{
  result = type metadata accessor for DispatchQoS.QoSClass();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000F93F0()
{
  result = qword_10026CDE8;
  if (!qword_10026CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CDE8);
  }

  return result;
}

unint64_t sub_1000F9444()
{
  result = qword_10026CDF0;
  if (!qword_10026CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CDF0);
  }

  return result;
}

unint64_t sub_1000F9498()
{
  result = qword_10026CDF8;
  if (!qword_10026CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CDF8);
  }

  return result;
}

uint64_t sub_1000F9598()
{
  sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  strcpy((inited + 72), "FamilyChanged");
  *(inited + 86) = -4864;
  return Dictionary.init(dictionaryLiteral:)();
}

id sub_1000F9670()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyObserver.EngagementFamilyChangedEvent();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000F96CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyObserver.EngagementFamilyChangedEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000F9704()
{
  type metadata accessor for FamilyObserver();
  swift_allocObject();
  result = sub_1000F9790();
  qword_1002877D8 = result;
  return result;
}

uint64_t sub_1000F9740()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100048C6C(v0, qword_10026CE10);
  sub_100048CD0(v0, qword_10026CE10);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t sub_1000F9790()
{
  v1 = v0;
  v2 = sub_10007B9A4(&unk_10026F880, &qword_1001E62B0);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  v5 = sub_10007B9A4(&unk_10026CFA0, &qword_1001E8EC0);
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = v17 - v6;
  sub_10007B9A4(&unk_10026F890, &unk_1001E74C0);
  swift_allocObject();
  v8 = PassthroughSubject.init()();
  *(v0 + 16) = v8;
  *(v0 + 24) = 0;
  v21 = v8;
  v9 = qword_100268680;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v17[1] = sub_100048CD0(v10, qword_10026CE10);
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v11 = qword_1002878E8;
  v20 = qword_1002878E8;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  sub_10000A7C0(v4, 1, 1, v12);
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  sub_100006070(&qword_10026B700, &unk_10026F890, &unk_1001E74C0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_100048F10();
  v13 = v11;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000C0868(v4);

  swift_allocObject();
  swift_weakInit();
  sub_100006070(&qword_10026B708, &unk_10026CFA0, &qword_1001E8EC0, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v14 = v19;
  v15 = Publisher<>.sink(receiveValue:)();

  (*(v18 + 8))(v7, v14);
  *(v1 + 24) = v15;

  return v1;
}

uint64_t sub_1000F9AD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000F9D24();
  }

  return result;
}

uint64_t sub_1000F9B28()
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001E5F70;
  v6[3] = type metadata accessor for FamilyObserver();
  v6[0] = v0;

  v2 = AMSLogKey();
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v6);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v4 = static os_log_type_t.info.getter();
  sub_1000036B0(v4, v1);

  sub_10007B9A4(&unk_10026F890, &unk_1001E74C0);
  sub_100006070(&qword_100269F80, &unk_10026F890, &unk_1001E74C0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Subject<>.send()();
}

void sub_1000F9D24()
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001E5F70;
  v9[3] = type metadata accessor for FamilyObserver();
  v9[0] = v0;

  v2 = AMSLogKey();
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v9);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v4 = static os_log_type_t.info.getter();
  sub_1000036B0(v4, v1);

  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v5 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  v6 = objc_allocWithZone(AMSEngagement);
  v7 = [v6 initWithBag:{v5, v9[0]}];

  v8 = [objc_allocWithZone(type metadata accessor for FamilyObserver.EngagementFamilyChangedEvent()) init];
}

uint64_t sub_1000F9F64()
{

  return v0;
}

uint64_t sub_1000F9F8C()
{
  sub_1000F9F64();

  return swift_deallocClassInstance();
}

id sub_1000FA020@<X0>(uint64_t a1@<X0>, char a2@<W1>, Class isa@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v14 = URL.path.getter();
  LOBYTE(a5) = (*(a5 + 24))(v14);

  if (a5)
  {
    v15 = type metadata accessor for URL();
    sub_1000047A4();
    (*(v16 + 16))(a6, a1, v15);

    return sub_10000A7C0(a6, 0, 1, v15);
  }

  else
  {
    v44 = a2;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1001E5F70;
    v48 = a4;
    sub_100017E64(v47);
    sub_1000047A4();
    v43 = v6;
    v42 = *(v19 + 16);
    v42();
    v20 = AMSLogKey();
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v47);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22._object = 0x80000001001F7D60;
    v22._countAndFlagsBits = 0xD000000000000014;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    v23 = type metadata accessor for URL();
    v48 = v23;
    sub_100017E64(v47);
    sub_1000047A4();
    v41 = *(v24 + 16);
    v41();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v47);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v26 = static os_log_type_t.debug.getter();
    sub_1000036B0(v26, v18);

    v27 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    if (isa)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_1000FA840();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    v47[0] = 0;
    v31 = [v27 createDirectoryAtURL:v30 withIntermediateDirectories:v44 & 1 attributes:isa error:v47];

    v45 = v47[0];
    if (v31)
    {
      (v41)(a6, a1, v23);
      sub_10000A7C0(a6, 0, 1, v23);

      return v45;
    }

    else
    {
      v32 = v47[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1001E5F70;
      v48 = a4;
      v34 = sub_100017E64(v47);
      (v42)(v34, v43, a4);
      v35 = AMSLogKey();
      if (v35)
      {
        v36 = v35;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v47);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v37._countAndFlagsBits = 0xD00000000000001CLL;
      v37._object = 0x80000001001F7D80;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
      swift_getErrorValue();
      v48 = v46;
      sub_100017E64(v47);
      sub_1000047A4();
      (*(v38 + 16))();
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100002C5C(v47);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v39);
      LogInterpolation.init(stringInterpolation:)();
      v40 = static os_log_type_t.error.getter();
      sub_1000036B0(v40, v33);

      return sub_10000A7C0(a6, 1, 1, v23);
    }
  }
}

uint64_t sub_1000FA784()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 contentsAtPath:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1000FA840()
{
  result = qword_100269188;
  if (!qword_100269188)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269188);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AMSFlags(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000FA978()
{
  result = qword_10026CFE8;
  if (!qword_10026CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CFE8);
  }

  return result;
}

void sub_1000FA9CC(uint64_t a1)
{
  *&v53 = 0x696669746E656469;
  *(&v53 + 1) = 0xEA00000000007265;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v55, a1, &v57);
  sub_10000E1E8(&v55);
  if (v58)
  {
    if (swift_dynamicCast())
    {
      v2 = v53;
      *&v53 = 1635017060;
      *(&v53 + 1) = 0xE400000000000000;
      AnyHashable.init<A>(_:)();
      sub_10000E0C8(&v55, a1, &v57);
      sub_10000E1E8(&v55);
      if (v58)
      {
        v3 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
        if (swift_dynamicCast())
        {
          v4 = v53;
          sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1001E5F60;
          v55 = 49;
          v56 = 0xE100000000000000;
          sub_1000058E4();
          *(inited + 96) = &type metadata for Int;
          *(inited + 72) = 25;
          v55 = 50;
          v56 = 0xE100000000000000;
          sub_1000058E4();
          *(inited + 168) = &type metadata for String;
          *(inited + 144) = v2;
          v55 = 7565409;
          v56 = 0xE300000000000000;
          sub_1000058E4();
          *(inited + 240) = v3;
          *(inited + 216) = v4;

          v6 = Dictionary.init(dictionaryLiteral:)();
          *&v57 = 0x44746E756F636361;
          *(&v57 + 1) = 0xEB00000000444953;
          AnyHashable.init<A>(_:)();
          sub_10000E0C8(&v55, v4, &v53);

          sub_10000E1E8(&v55);
          if (!*(&v54 + 1))
          {
            sub_100002C5C(&v53);
LABEL_91:
            if (qword_1002685F8 != -1)
            {
              swift_once();
            }

            v44 = qword_10026A070;
            v45 = [objc_allocWithZone(AMSPushConfiguration) init];
            v46 = sub_1000FB2EC();
            swift_getObjectType();
            v47 = v45;
            swift_unknownObjectRetain();
            v48 = sub_1000FBC7C(v45, v44, v46);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;
            LODWORD(v46) = [v48 shouldHandleNotification:isa];

            if (v46)
            {
              v50 = Dictionary._bridgeToObjectiveC()().super.isa;

              [v48 handleNotification:v50];
            }

            else
            {
            }

            return;
          }

          sub_100002C4C(&v53, &v57);
          *&v53 = 48;
          *(&v53 + 1) = 0xE100000000000000;
          AnyHashable.init<A>(_:)();
          sub_100011BAC(&v57, &v53);
          v7 = String.init<A>(describing:)();
          v9 = HIBYTE(v8) & 0xF;
          v10 = v7 & 0xFFFFFFFFFFFFLL;
          if ((v8 & 0x2000000000000000) != 0)
          {
            v11 = HIBYTE(v8) & 0xF;
          }

          else
          {
            v11 = v7 & 0xFFFFFFFFFFFFLL;
          }

          if (!v11)
          {

            goto LABEL_83;
          }

          if ((v8 & 0x1000000000000000) != 0)
          {
            LOBYTE(v52[0]) = 0;
            v14 = sub_1000FB330(v7, v8, 10);
            v43 = v42;

            if (v43)
            {
              goto LABEL_83;
            }

            goto LABEL_89;
          }

          if ((v8 & 0x2000000000000000) != 0)
          {
            *&v53 = v7;
            *(&v53 + 1) = v8 & 0xFFFFFFFFFFFFFFLL;
            if (v7 == 43)
            {
              if (v9)
              {
                if (v9 != 1)
                {
                  sub_100023D8C();
                  while (1)
                  {
                    sub_1000031D0();
                    if (!v16 & v15)
                    {
                      break;
                    }

                    sub_100006CD8();
                    if (!v16)
                    {
                      break;
                    }

                    v14 = v28 + v27;
                    if (__OFADD__(v28, v27))
                    {
                      break;
                    }

                    sub_100006448();
                    if (v16)
                    {
                      goto LABEL_82;
                    }
                  }
                }

                goto LABEL_81;
              }

LABEL_101:
              __break(1u);
              return;
            }

            if (v7 != 45)
            {
              if (v9)
              {
                v31 = &v53;
                while (*v31 - 48 <= 9)
                {
                  sub_100006CD8();
                  if (!v16)
                  {
                    break;
                  }

                  v14 = v35 + v34;
                  if (__OFADD__(v35, v34))
                  {
                    break;
                  }

                  v31 = (v32 + 1);
                  if (v33 == 1)
                  {
                    goto LABEL_80;
                  }
                }
              }

              goto LABEL_81;
            }

            if (v9)
            {
              if (v9 != 1)
              {
                sub_100023D8C();
                while (1)
                {
                  sub_1000031D0();
                  if (!v16 & v15)
                  {
                    break;
                  }

                  sub_100006CD8();
                  if (!v16)
                  {
                    break;
                  }

                  v14 = v24 - v23;
                  if (__OFSUB__(v24, v23))
                  {
                    break;
                  }

                  sub_100006448();
                  if (v16)
                  {
                    goto LABEL_82;
                  }
                }
              }

              goto LABEL_81;
            }
          }

          else
          {
            if ((v7 & 0x1000000000000000) != 0)
            {
              v12 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v12 = _StringObject.sharedUTF8.getter();
              v10 = v51;
            }

            v13 = *v12;
            if (v13 == 43)
            {
              if (v10 >= 1)
              {
                if (v10 != 1)
                {
                  v14 = 0;
                  if (v12)
                  {
                    while (1)
                    {
                      sub_1000031D0();
                      if (!v16 & v15)
                      {
                        goto LABEL_81;
                      }

                      sub_100006CD8();
                      if (!v16)
                      {
                        goto LABEL_81;
                      }

                      v14 = v26 + v25;
                      if (__OFADD__(v26, v25))
                      {
                        goto LABEL_81;
                      }

                      sub_100006448();
                      if (v16)
                      {
                        goto LABEL_82;
                      }
                    }
                  }

                  goto LABEL_80;
                }

                goto LABEL_81;
              }

              goto LABEL_100;
            }

            if (v13 != 45)
            {
              if (v10)
              {
                v14 = 0;
                if (v12)
                {
                  while (1)
                  {
                    v29 = *v12 - 48;
                    if (v29 > 9)
                    {
                      goto LABEL_81;
                    }

                    v30 = 10 * v14;
                    if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                    {
                      goto LABEL_81;
                    }

                    v14 = v30 + v29;
                    if (__OFADD__(v30, v29))
                    {
                      goto LABEL_81;
                    }

                    ++v12;
                    if (!--v10)
                    {
                      goto LABEL_82;
                    }
                  }
                }

                goto LABEL_80;
              }

LABEL_81:
              v14 = 0;
              LOBYTE(v10) = 1;
LABEL_82:
              LOBYTE(v52[0]) = v10;
              v36 = v10;

              if (v36)
              {
LABEL_83:
                v37 = sub_10000C818(&v55);
                if (v38)
                {
                  v39 = v37;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v52[0] = v6;
                  v41 = v6[3];
                  sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
                  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v41);
                  sub_10000E1E8(v6[6] + 40 * v39);
                  sub_100002C4C((v6[7] + 32 * v39), &v53);
                  _NativeDictionary._delete(at:)();
                }

                else
                {
                  v53 = 0u;
                  v54 = 0u;
                }

                sub_10000E1E8(&v55);
                sub_100002C5C(&v53);
                goto LABEL_90;
              }

LABEL_89:
              *(&v54 + 1) = &type metadata for Int;
              *&v53 = v14;
              sub_100002C4C(&v53, v52);
              swift_isUniquelyReferenced_nonNull_native();
              sub_1000AC178(v52, &v55);
              sub_10000E1E8(&v55);
LABEL_90:
              sub_100002C00(&v57);
              goto LABEL_91;
            }

            if (v10 >= 1)
            {
              if (v10 != 1)
              {
                v14 = 0;
                if (v12)
                {
                  while (1)
                  {
                    sub_1000031D0();
                    if (!v16 & v15)
                    {
                      goto LABEL_81;
                    }

                    sub_100006CD8();
                    if (!v16)
                    {
                      goto LABEL_81;
                    }

                    v14 = v18 - v17;
                    if (__OFSUB__(v18, v17))
                    {
                      goto LABEL_81;
                    }

                    sub_100006448();
                    if (v16)
                    {
                      goto LABEL_82;
                    }
                  }
                }

LABEL_80:
                LOBYTE(v10) = 0;
                goto LABEL_82;
              }

              goto LABEL_81;
            }

            __break(1u);
          }

          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }
      }

      else
      {

        sub_100002C5C(&v57);
      }
    }
  }

  else
  {
    sub_100002C5C(&v57);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v19 = sub_10000BFB4();
  *(v19 + 16) = xmmword_1001E5F70;
  v20 = sub_10004167C();
  sub_10000B900(v20, v21);

  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v22 = static os_log_type_t.error.getter();
  sub_1000036B0(v22, v19);
}

unint64_t sub_1000FB2EC()
{
  result = qword_10026D088;
  if (!qword_10026D088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026D088);
  }

  return result;
}

unsigned __int8 *sub_1000FB330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000FB848(result, v5);
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
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
        if (v8 != 1)
        {
          sub_100007A78();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  sub_10000841C();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
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

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_100007A78();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                sub_10000841C();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        sub_1000052B8();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              sub_10000841C();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        sub_1000052B8();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              sub_10000841C();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      sub_1000052B8();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            sub_10000841C();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
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

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_1000FB848(uint64_t a1, unint64_t a2)
{
  v2 = sub_100080528(sub_100080524, 0, a1, a2);
  v6 = sub_1000FB8B0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1000FB8B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100011768(v9, 0), v12 = sub_1000FBA10(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
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

unint64_t sub_1000FBA10(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1000FBC20(v12, a6, a7);
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
      result = sub_1000FBC20(v12, a6, a7);
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

uint64_t sub_1000FBC20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_10000752C(v6);
    return v7 | 4;
  }

  else
  {
    v3 = String.UTF8View._foreignIndex(_:offsetBy:)();
    sub_10000752C(v3);
    return v4 | 8;
  }
}

id sub_1000FBC7C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 bag:a2];

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1000FBCDC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*HeapType.comparator<A>(type:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = sub_1000FC180;
  }

  else
  {
    v6 = sub_1000FC1AC;
  }

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a3;
  return v6;
}

Swift::Int sub_1000FC1D8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  HeapType.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_1000FC220()
{
  result = qword_10026D090[0];
  if (!qword_10026D090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10026D090);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HeapType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_1000FC350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000FC3C0(uint64_t result)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = __OFADD__(2 * result, 2);
  result = 2 * result + 2;
  if (v1)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000FC3E4(void *a1, uint64_t (*a2)(_BYTE *, _BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v29 = a6;
  v27 = *(a5 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v10);
  v15 = &v23[-v14];
  if (v16 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1000FC3C0(a4);
  result = ContiguousArray.count.getter();
  if (__OFSUB__(result, 1))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v26 = a1;
  v18 = a4;
  if (result - 1 > 2 * a4)
  {
    v18 = (2 * a4) | 1;
    ContiguousArray.subscript.getter();
    ContiguousArray.subscript.getter();
    v24 = a2(v15, v12);
    v25 = a2;
    v19 = *(v27 + 8);
    v19(v12, a5);
    v19(v15, a5);
    a2 = v25;
    if ((v24 & 1) == 0)
    {
      v18 = a4;
    }
  }

  result = ContiguousArray.count.getter();
  if (__OFSUB__(result, 1))
  {
    goto LABEL_15;
  }

  if (result - 1 >= v17)
  {
    ContiguousArray.subscript.getter();
    ContiguousArray.subscript.getter();
    v20 = a2(v15, v12);
    v21 = *(v27 + 8);
    v21(v12, a5);
    result = (v21)(v15, a5);
    if (v20)
    {
      v18 = v17;
    }
  }

  if (v18 != a4)
  {
    v30 = v18;
    v31 = a4;
    type metadata accessor for ContiguousArray();
    swift_getWitnessTable();
    v22 = v26;
    MutableCollection.swapAt(_:_:)();
    return sub_1000FC3E4(v22, a2, v28, v18, a5, v29);
  }

  return result;
}

uint64_t sub_1000FC6A8(uint64_t *a1, uint64_t (*a2)(char *, char *), uint64_t a3, int64_t a4, char *a5, uint64_t a6)
{
  v12 = *(a6 - 8);
  v13 = __chkstk_darwin(a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  ContiguousArray.subscript.getter();
  v23 = a5;
  v24 = a2;
  v25 = a3;
  LOBYTE(a3) = a2(v17, a5);
  v18 = *(v12 + 8);
  v18(v17, a6);
  if (a3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v19 = *a1;
    sub_1000FD784(a4, *a1);
    result = (*(v12 + 24))(v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * a4, v23, a6);
    while (a4 >= 1)
    {
      ContiguousArray.subscript.getter();
      ContiguousArray.subscript.getter();
      v21 = v24(v17, v15);
      v18(v15, a6);
      result = (v18)(v17, a6);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v26 = (a4 - 1) >> 1;
      v27 = a4;
      swift_getWitnessTable();
      result = MutableCollection.swapAt(_:_:)();
      a4 = (a4 - 1) >> 1;
    }
  }

  return result;
}

uint64_t sub_1000FC958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v42 = a3;
  v7 = *(a2 + 16);
  v41 = *(v7 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = *(v3 + 8);
  v40 = (v3 + 8);
  v43 = v16;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    v17 = 1;
    v18 = v42;
    return sub_10000A7C0(v18, v17, 1, v7);
  }

  v39 = v15;
  ContiguousArray.subscript.getter();
  if (ContiguousArray.count.getter() == 1)
  {
    goto LABEL_6;
  }

  v38 = a1;
  ContiguousArray.subscript.getter();
  v19 = ContiguousArray.count.getter();
  v20 = __OFSUB__(v19, 1);
  result = v19 - 1;
  if (v20)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  ContiguousArray.subscript.getter();
  v37 = *(a2 + 24);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v41 + 8);
  v23(v10, v7);
  v23(v13, v7);
  v24 = v38;
  if (v22)
  {
LABEL_6:
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.removeLast()();
    v25 = v41;
    (*(v41 + 8))(v13, v7);
    v26 = v39;
LABEL_7:
    v18 = v42;
    (*(v25 + 32))(v42, v26, v7);
    v17 = 0;
    return sub_10000A7C0(v18, v17, 1, v7);
  }

  v27 = *(v4 + 24);
  v36 = *(v4 + 16);
  ContiguousArray.subscript.getter();
  v28 = ContiguousArray.count.getter();
  v20 = __OFSUB__(v28, 1);
  result = v28 - 1;
  if (v20)
  {
    goto LABEL_19;
  }

  ContiguousArray.subscript.getter();
  v29 = v36(v13, v10);
  v23(v10, v7);
  v23(v13, v7);
  v30 = ContiguousArray.count.getter();
  v20 = __OFSUB__(v30, 1);
  result = v30 - 1;
  v31 = v20;
  if (v29)
  {
    v34 = v27;
    v35 = v23;
    v26 = v39;
    if ((v31 & 1) == 0)
    {
      ContiguousArray.subscript.getter();
      v32 = v40;
      ContiguousArray._makeMutableAndUnique()();
      v33 = *v32;
      sub_1000FD784(v24, *v32);
      v25 = v41;
      (*(v41 + 40))(v33 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v24, v13, v7);
      swift_getWitnessTable();
      swift_getWitnessTable();
      RangeReplaceableCollection<>.removeLast()();
      v35(v13, v7);
      sub_1000FC3E4(v32, v36, v34, v24, v7, v37);
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  v26 = v39;
  if ((v31 & 1) == 0)
  {
    ContiguousArray.subscript.getter();
    sub_1000FC6A8(v40, v36, v27, v24, v13, v7);
    v23(v13, v7);
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.removeLast()();
    v23(v13, v7);
    v25 = v41;
    goto LABEL_7;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1000FCE88(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a3;
  v68 = a4;
  v66 = a1;
  v69 = a2;
  v9 = type metadata accessor for ContiguousArray();

  WitnessTable = swift_getWitnessTable();
  v11 = Collection.isEmpty.getter();
  if (v11)
  {

    return;
  }

  v69 = a2;
  __chkstk_darwin(v11);
  v60[2] = a5;
  v60[3] = a6;
  v13 = sub_1000FBCDC(sub_1000FD764, v60, v9, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v12);

  v14 = *(v13 + 16);
  v62 = v13;
  if (v14)
  {
    v69 = _swiftEmptyArrayStorage;
    sub_10009B9F8(0, v14, 0);
    v15 = v69;
    v16 = v13 + 40;
    v17 = v14;
    do
    {

      v18 = String.count.getter();

      v69 = v15;
      v20 = v15[2];
      v19 = v15[3];
      if (v20 >= v19 >> 1)
      {
        sub_10009B9F8((v19 > 1), v20 + 1, 1);
        v15 = v69;
      }

      v15[2] = v20 + 1;
      v15[v20 + 4] = v18;
      v16 += 16;
      --v14;
    }

    while (v14);
    v14 = v17;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v21 = sub_1000FD480(v15);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    v63 = a2;
    v64 = a5;
    v65 = a6;
    v24 = v62;
    if (v14)
    {
      v71 = _swiftEmptyArrayStorage;
      v61._object = v14;
      sub_100027C2C(0, v14, 0);
      v25 = 0;
      v26 = v71;
      v27 = v24 + 4;
      while (v25 < v24[2])
      {
        v28 = v26;
        v29 = &v27[2 * v25];
        v31 = *v29;
        v30 = v29[1];

        sub_100004FD0();
        if (String.count.getter() < v21)
        {
          do
          {
            sub_100004FD0();
            if (String.count.getter())
            {
              v69 = v31;
              v70 = v30;
              v33._countAndFlagsBits = sub_100006CEC();
              String.append(_:)(v33);
            }

            else
            {
              v69 = 32;
              v70 = 0xE100000000000000;
              v32._countAndFlagsBits = sub_100004FD0();
              String.append(_:)(v32);
            }

            v31 = v69;
            v30 = v70;

            sub_100004FD0();
            v34 = String.count.getter();
          }

          while (v34 < v21);
        }

        v26 = v28;
        v71 = v28;
        v35 = v28[2];
        v36 = v26[3];
        if (v35 >= v36 >> 1)
        {
          sub_100027C2C((v36 > 1), v35 + 1, 1);
          v26 = v71;
        }

        ++v25;
        v26[2] = v35 + 1;
        v37 = &v26[2 * v35];
        v37[4] = v31;
        v37[5] = v30;
        v24 = v62;
        if (v25 == v61._object)
        {
          v38 = v26;

          goto LABEL_24;
        }
      }
    }

    else
    {

      v38 = _swiftEmptyArrayStorage;
LABEL_24:
      v69 = 10;
      v70 = 0xE100000000000000;
      v39._countAndFlagsBits = sub_100006CEC();
      v61 = String.init(repeating:count:)(v39, v21);
      v40 = 0;
      v41 = v38[2];
      v42 = (v38 + 5);
      v62 = v38;
      if (!v41)
      {
LABEL_36:

        v59._countAndFlagsBits = 10;
        v59._object = 0xE100000000000000;
        String.append(_:)(v59);
        return;
      }

      while (v40 < v38[2])
      {
        v44 = *(v42 - 1);
        v43 = *v42;
        v45 = v42;

        sub_1000FD4C4(v40, v66 & 1, v63, v67, v68, v21, v64, v65);
        v47 = v46;
        v48._countAndFlagsBits = sub_100006CEC();
        v50 = String.init(repeating:count:)(v48, v49);
        String.append(_:)(v50);

        v51._countAndFlagsBits = v44;
        v51._object = v43;
        String.append(_:)(v51);

        v52._countAndFlagsBits = sub_100006CEC();
        v53 = String.init(repeating:count:)(v52, v47);
        String.append(_:)(v53);

        v54 = log2((v40 + 1));
        v55 = v54;
        if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_38;
        }

        if (v54 <= -9.22337204e18)
        {
          goto LABEL_39;
        }

        if (v54 >= 9.22337204e18)
        {
          goto LABEL_40;
        }

        v56 = log2((v40 + 2));
        if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_41;
        }

        if (v56 <= -9.22337204e18)
        {
          goto LABEL_42;
        }

        if (v56 >= 9.22337204e18)
        {
          goto LABEL_43;
        }

        if (*&v55 == *&v56)
        {
          countAndFlagsBits = v61._countAndFlagsBits;
          object = v61._object;
        }

        else
        {
          countAndFlagsBits = 10;
          object = 0xE100000000000000;
        }

        String.append(_:)(*&countAndFlagsBits);
        v42 = v45 + 2;
        --v41;
        ++v40;
        v38 = v62;
        if (!v41)
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
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}