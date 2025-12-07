uint64_t sub_10014EF28()
{
  sub_1000087A0();
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  __chkstk_darwin(v3);
  sub_100002DEC();
  sub_100004B68();
  sub_100024044();
  sub_10000A8C0();
  sub_1000179B4(v4, v5);
  if (!v0)
  {
    v0 = 0;
    sub_1000170D4();
    sub_100003CA8((v1 + 16), *(v1 + 40));
    sub_100005FD8();
    if (sub_1001542E0(24, v6))
    {
      sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
      inited = swift_initStackObject();
      sub_100011650(inited, xmmword_1001E61B0);
      sub_1001542A0(0xD00000000000004BLL);
      swift_setDeallocating();
      sub_10001CE50();
      sub_100019CE4();
      sub_10001C50C();
      return sub_10001BDCC();
    }

    v8 = sub_10015398C();
    v9 = sub_100007544(&type metadata for MercuryCacheError, v8);
    sub_10000A480(v9, v10, v11);
  }

  sub_100019CE4();
  sub_10005AE14();
  sub_10001C50C();
  if (v0)
  {
  }

  if (qword_100268750 != -1)
  {
    sub_100006DF0();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v12 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v12);
  v13 = sub_1000080C0();
  sub_100005D40(v13, xmmword_1001E5F70);
  v14 = AMSLogKey();
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000B3DC();

  sub_100003E38();
  v16._countAndFlagsBits = sub_10000B870();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  sub_100004B44();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100011AC0();
  v17._countAndFlagsBits = sub_100005A00();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  sub_10000E70C();
  sub_10003D338();
  sub_10000AA40();
  (*(v18 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100011AC0();
  v19._countAndFlagsBits = sub_10000B870();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  LogInterpolation.init(stringInterpolation:)();
  v20 = static os_log_type_t.error.getter();
  sub_1000036B0(v20, v13);

  swift_willThrow();
  return sub_10001BDCC();
}

void sub_10014F288()
{
  sub_100003D74();
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  __chkstk_darwin(v3);
  sub_100002DEC();
  sub_10001CC10();
  sub_100002CC4();
  __chkstk_darwin(v4);
  sub_100002DEC();
  sub_100012F7C();
  sub_10007B9A4(&qword_10026E6F0, &qword_1001EE010);
  v5 = Promise.__allocating_init()();
  if (qword_100268758 != -1)
  {
    sub_100007698(&qword_100268758);
  }

  v6 = swift_allocObject();
  v6[2] = v0;
  v6[3] = v2;
  v6[4] = v5;
  v18[4] = sub_100153C6C;
  v18[5] = v6;
  sub_100002E50();
  sub_100004F0C(COERCE_DOUBLE(1107296256));
  v18[2] = v7;
  v18[3] = &unk_10024F338;
  v8 = _Block_copy(v18);

  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v9, v10, &protocol conformance descriptor for DispatchWorkItemFlags);
  v11 = sub_10001B25C();
  sub_100007BEC(&qword_10026CD50);
  v12 = sub_100007298();
  sub_100018288(v12, v11, v13);
  sub_100006888();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  v14 = sub_100023EA8();
  v15(v14);
  v16 = sub_100018114();
  v17(v16);

  sub_100061E84();
  sub_100005F14();
}

uint64_t sub_10014F4E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  sub_10014F824(a2);
  Promise.resolve(_:)();
}

uint64_t sub_10014F824(uint64_t a1)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  __chkstk_darwin(v4);
  sub_100002DEC();
  sub_100004B68();
  sub_100024044();
  sub_10000A8C0();
  sub_1000179B4(v5, v6);
  if (v1)
  {
    sub_100019CE4();
    sub_10005AE14();
    sub_10001C50C();

    if (qword_100268750 != -1)
    {
      sub_100006DF0();
      swift_once();
    }

    v18 = qword_10026E620;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v7 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v7);
    v8 = sub_1000080C0();
    sub_100005D40(v8, xmmword_1001E5F70);
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000B3DC();

    sub_100003E38();
    v11._countAndFlagsBits = sub_10000B870();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
    sub_100004B44();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100011AC0();
    v12._countAndFlagsBits = sub_100005A00();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
    sub_10000E70C();
    sub_10003D338();
    sub_10000AA40();
    (*(v13 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100011AC0();
    v14._countAndFlagsBits = sub_10000B870();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
    LogInterpolation.init(stringInterpolation:)();
    v15 = static os_log_type_t.error.getter();
    v17 = v18;
    sub_1000036B0(v15, v8);

    swift_willThrow();
  }

  else
  {
    sub_1000170D4();
    v17 = sub_10014E4B0(a1);
    sub_100019CE4();
    sub_10001C50C();
  }

  return v17 & 1;
}

void sub_10014FB00()
{
  sub_100003D74();
  v3 = v2;
  v24 = v4;
  v6 = v5;
  v8 = v7;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  __chkstk_darwin(v9);
  sub_100002DEC();
  v25 = sub_10001CC10();
  sub_100002CC4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100002DEC();
  sub_100012F7C();
  sub_10007B9A4(&qword_10026E6E8, &qword_1001EDFF8);
  v13 = Promise.__allocating_init()();
  if (qword_100268758 != -1)
  {
    sub_100007698(&qword_100268758);
  }

  v14 = swift_allocObject();
  v14[2] = v0;
  v14[3] = v8;
  v14[4] = v6;
  v14[5] = v13;
  v14[6] = v24;
  v14[7] = v3;
  v26[4] = sub_1001539E0;
  v26[5] = v14;
  sub_100002E50();
  sub_100004F0C(COERCE_DOUBLE(1107296256));
  v26[2] = v15;
  v26[3] = &unk_10024F040;
  v16 = _Block_copy(v26);

  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v17, v18, &protocol conformance descriptor for DispatchWorkItemFlags);
  v19 = sub_10001B25C();
  sub_100007BEC(&qword_10026CD50);
  v20 = sub_100007298();
  sub_100018288(v20, v19, v21);
  sub_100006888();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  v22 = sub_100023EA8();
  v23(v22);
  (*(v11 + 8))(v1, v25);

  sub_100061E84();
  sub_100005F14();
}

uint64_t sub_10014FD80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v41._countAndFlagsBits = a5;
  v41._object = a6;
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v11 = sub_100150578();
  v13 = v12;

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v42, v13, &v45);

  sub_10000E1E8(&v42);
  if (!v46)
  {

    sub_10000A064(&v45, &qword_10026D350, &qword_1001E6050);
LABEL_30:
    if (qword_100268750 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1001E5F70;
    v44 = type metadata accessor for MercuryCacheDatabase();
    v42 = a1;

    v33 = AMSLogKey();
    if (v33)
    {
      v34 = v33;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v42);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
    v44 = &type metadata for String;
    v42 = 0xD000000000000022;
    v43 = 0x80000001001FE660;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v42, &qword_10026D350, &qword_1001E6050);
    v37._countAndFlagsBits = 0xD00000000000002FLL;
    v37._object = 0x80000001001FE6B0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
    LogInterpolation.init(stringInterpolation:)();
    v38 = static os_log_type_t.error.getter();
    sub_1000036B0(v38, v32);

    sub_10015398C();
    swift_allocError();
    *v39 = 2;
    Promise.reject(_:)();
  }

  sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_30;
  }

  v40 = v11;
  v14 = 0;
  v15 = MEMORY[0x73746E65746E6F73];
  v16 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v15 == v14)
    {

      LOBYTE(v42) = v40 & 1;
      v43 = v16;
      Promise.resolve(_:)();
    }

    if (v14 >= MEMORY[0x73746E65746E6F73])
    {
      break;
    }

    v17 = *(8 * v14 + 0x73746E65746E6F83);

    AnyHashable.init<A>(_:)();
    if (!v17[2] || (a1 = v17, v18 = sub_10000C818(&v42), (v19 & 1) == 0))
    {

      sub_10000E1E8(&v42);
      goto LABEL_19;
    }

    sub_100011BAC(v17[7] + 32 * v18, &v45);
    sub_10000E1E8(&v42);
    if (swift_dynamicCast())
    {
      v20 = v16;
      a1 = 0xE400000000000000;
      if (v41._countAndFlagsBits == 1701869940 && v41._object == 0xE400000000000000)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {

          v16 = v20;
          goto LABEL_19;
        }
      }

      a1 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10009B994(0, v20[2] + 1, 1);
        a1 = v20;
      }

      v24 = a1[2];
      v23 = a1[3];
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        sub_10009B994((v23 > 1), v24 + 1, 1);
        v25 = v24 + 1;
        a1 = v20;
      }

      ++v14;
      a1[2] = v25;
      a1[v24 + 4] = v17;
      v16 = a1;
    }

    else
    {

LABEL_19:
      ++v14;
    }
  }

  __break(1u);
  swift_once();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E5F70;
  v44 = type metadata accessor for MercuryCacheDatabase();
  v42 = a1;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v42);
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v26._object = 0x80000001001FE660;
  v26._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 32;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = &protocol witness table for String;
  v28._object = &type metadata for String;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 32;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  String.append(_:)(v41);
  v30._countAndFlagsBits = 0xD000000000000012;
  v30._object = 0x80000001001FE690;
  String.append(_:)(v30);
  *&v45 = 0x73746E65746E6F63;
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  _print_unlocked<A, B>(_:_:)();
  v44 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v42, &qword_10026D350, &qword_1001E6050);
  v31 = static os_log_type_t.error.getter();
  sub_1000036B0(v31, v8);

  Promise.reject(_:)();
}

uint64_t sub_100150578()
{
  sub_1000087A0();
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  __chkstk_darwin(v3);
  sub_100002DEC();
  sub_100004B68();
  sub_100024044();
  sub_10000A8C0();
  sub_1000179B4(v4, v5);
  if (!v0)
  {
    v0 = 0;
    sub_1000170D4();
    sub_100003CA8((v1 + 16), *(v1 + 40));
    sub_100005FD8();
    if (sub_1001542E0(16, v6))
    {
      sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
      inited = swift_initStackObject();
      sub_100011650(inited, xmmword_1001E61B0);
      sub_1001542A0(0xD000000000000042);
      swift_setDeallocating();
      sub_10001CE50();
      sub_100019CE4();
      sub_10001C50C();
      return sub_10001BDCC();
    }

    v8 = sub_10015398C();
    v9 = sub_100007544(&type metadata for MercuryCacheError, v8);
    sub_10000A480(v9, v10, v11);
  }

  sub_100019CE4();
  sub_10005AE14();
  sub_10001C50C();
  if (v0)
  {
  }

  if (qword_100268750 != -1)
  {
    sub_100006DF0();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v12 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v12);
  v13 = sub_1000080C0();
  sub_100005D40(v13, xmmword_1001E5F70);
  v14 = AMSLogKey();
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000B3DC();

  sub_100003E38();
  v16._countAndFlagsBits = sub_10000B870();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  sub_100004B44();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100011AC0();
  v17._countAndFlagsBits = sub_100005A00();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  sub_10000E70C();
  sub_10003D338();
  sub_10000AA40();
  (*(v18 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100011AC0();
  v19._countAndFlagsBits = sub_10000B870();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  LogInterpolation.init(stringInterpolation:)();
  v20 = static os_log_type_t.error.getter();
  sub_1000036B0(v20, v13);

  swift_willThrow();
  return sub_10001BDCC();
}

void sub_1001508D8()
{
  sub_100003D74();
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  __chkstk_darwin(v3);
  sub_100002DEC();
  sub_10001CC10();
  sub_100002CC4();
  __chkstk_darwin(v4);
  sub_100002DEC();
  sub_100012F7C();
  sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
  v5 = Promise.__allocating_init()();
  if (qword_100268758 != -1)
  {
    sub_100007698(&qword_100268758);
  }

  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v0;
  v6[4] = v5;
  v18[4] = sub_100153AD4;
  v18[5] = v6;
  sub_100002E50();
  sub_100004F0C(COERCE_DOUBLE(1107296256));
  v18[2] = v7;
  v18[3] = &unk_10024F248;
  v8 = _Block_copy(v18);

  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v9, v10, &protocol conformance descriptor for DispatchWorkItemFlags);
  v11 = sub_10001B25C();
  sub_100007BEC(&qword_10026CD50);
  v12 = sub_100007298();
  sub_100018288(v12, v11, v13);
  sub_100006888();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  v14 = sub_100023EA8();
  v15(v14);
  v16 = sub_100018114();
  v17(v16);

  sub_100061E84();
  sub_100005F14();
}

uint64_t sub_100150B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  if (*(a1 + 16))
  {
    v5 = *sub_100003CA8((a2 + 16), *(a2 + 40));

    sub_1000179B4(v6, v5);
    sub_1000170D4();
    sub_100151138();
    Promise.resolve(_:)();
    sub_100003CA8((a2 + 16), *(a2 + 40));

    return sub_10001C50C();
  }

  else
  {
    if (qword_100268750 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1001E5F70;
    v16 = type metadata accessor for MercuryCacheDatabase();
    v15[0] = a2;

    v8 = AMSLogKey();
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v15);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
    v16 = &type metadata for String;
    strcpy(v15, "update(with:)");
    HIWORD(v15[1]) = -4864;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(v15, &qword_10026D350, &qword_1001E6050);
    v11._countAndFlagsBits = 0xD00000000000001ELL;
    v11._object = 0x80000001001FE9C0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
    LogInterpolation.init(stringInterpolation:)();
    v12 = static os_log_type_t.error.getter();
    sub_1000036B0(v12, v7);

    sub_10015398C();
    swift_allocError();
    *v13 = 3;
    Promise.reject(_:)();
  }
}

void sub_100151138()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v68 = *v1;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v66 = v7 - v6;
  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = v3 + 32;
    sub_100004B44();
    v53 = v10;
    sub_100004B44();
    v51 = v11;
    v60 = 0x80000001001FEA00;
    v58 = "updateDatabase(with:)";
    v55 = xmmword_1001E5F70;
    v62 = 0x80000001001F3050;
    v64 = v1;
    while (1)
    {
      sub_1000262E4(v9, v86);
      v12 = sub_100003CA8(v86, v86[3]);
      v20 = *v12;
      v21 = v12[1];
      v22 = 0xD000000000000018;
      if (v20 == 0xD000000000000018 && 0x80000001001F3050 == v21)
      {
        break;
      }

      v22 = sub_10000DD78(0xD000000000000018, 0x80000001001F3050);
      if (v22)
      {
        break;
      }

      v38 = v20 == 0xD000000000000010 && v53 == v21;
      if (!v38 && (sub_10000DD78(0xD000000000000010, v53) & 1) == 0)
      {
        v43 = v20 == 0xD000000000000013 && v51 == v21;
        if (!v43 && (sub_10000DD78(0xD000000000000013, v51) & 1) == 0)
        {
          v50 = sub_100058334();
          sub_10015334C(v50);
          goto LABEL_15;
        }

        sub_10014E4B0(0);
        v45 = v44;
        sub_10000AC7C();
        v46 = sub_100058334();
        sub_100152644(v46, v47, v48, v49);
        sub_10014E4B0(0);
        (*(v1[13] + 24))(v45);
        goto LABEL_17;
      }

      sub_100004D20();
      v39 = sub_100058334();
      sub_100152644(v39, v40, v41, v42);
      (*(v1[13] + 16))();
LABEL_15:
      sub_100002C00(v86);
      v9 += 40;
      if (!--v8)
      {
        goto LABEL_25;
      }
    }

    sub_10014E140(v22, v13, v14, v15, v16, v17, v18, v19, v51, v53, v55, *(&v55 + 1), v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84);
    v25 = v24;
    sub_100012D4C();
    v26 = sub_100058334();
    v30 = sub_100152644(v26, v27, v28, v29);
    sub_10014E140(v30, v31, v32, v33, v34, v35, v36, v37, v52, v54, v56, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85);
    (*(v1[13] + 8))(v25);
LABEL_17:

    goto LABEL_15;
  }

LABEL_25:
  sub_100005F14();
}

uint64_t sub_100151748()
{
  v1 = *v0;
  if (qword_100268750 != -1)
  {
    sub_100006DF0();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  sub_1000056F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F70;
  v9[3] = v1;
  v9[0] = v0;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v9);
  LogInterpolation.init(stringLiteral:)();
  v6 = static os_log_type_t.default.getter();
  sub_1000036B0(v6, v3);

  sub_100003CA8(v0 + 7, v0[10]);
  v7 = *(*sub_100003CA8(v0 + 2, v0[5]) + 16);

  sub_1000FA6E4(v7);
}

uint64_t sub_100151960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Date();
  sub_100002CC4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100002DEC();
  v15 = v14 - v13;
  sub_1001542C0();
  sub_100041D2C(0x797269707865, 0xE600000000000000);
  if (v5)
  {
  }

  else if ((v16 & 1) == 0)
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    Date.timeIntervalSinceNow.getter();
    v18 = v17;
    (*(v11 + 8))(v15, v9);
    swift_beginAccess();
    *(a2 + 16) = v18 < 0.0;
  }

  sub_1001542C0();
  sub_10003A420(v42);
  if (*(&v42[0] + 1) >> 60 == 15)
  {
    goto LABEL_12;
  }

  v19 = objc_opt_self();
  sub_100004894();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v42[0] = 0;
  v21 = [v19 JSONObjectWithData:isa options:0 error:v42];

  if (!v21)
  {
    v27 = *&v42[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v28 = sub_100004894();
    sub_10003AE18(v28, v29);

    goto LABEL_12;
  }

  v22 = *&v42[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v23 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = sub_100004894();
    sub_10003AE18(v30, v31);
    goto LABEL_12;
  }

  sub_1001542C0();
  sub_10001ADD4(a4, a5);
  v35 = v24;
  if (!v24)
  {
    v25 = sub_100004894();
    sub_10003AE18(v25, v26);

LABEL_12:
    v32 = sub_10015398C();
    sub_100007544(&type metadata for MercuryCacheError, v32);
    *v33 = 4;
    swift_willThrow();
    return 1;
  }

  v36 = v41[0];
  sub_10000602C(a3 + 16, v43);
  if (!*(a3 + 16))
  {
    v37 = Dictionary.init(dictionaryLiteral:)();
    swift_beginAccess();
    *(a3 + 16) = v37;
  }

  swift_beginAccess();
  if (*(a3 + 16))
  {
    v41[1] = v35;

    AnyHashable.init<A>(_:)();
    v41[3] = v23;
    v41[0] = v36;

    sub_1000A9FF8(v41, v42);
  }

  swift_endAccess();
  v38 = sub_100004894();
  sub_10003AE18(v38, v39);

  return 1;
}

uint64_t sub_100151D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *v3;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  sub_100003CA8(v3 + 2, v3[5]);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_10005AFD4(a1, a2, a3, sub_1001539F0, v7);
  if (v23)
  {
  }

  else
  {

    swift_beginAccess();
    if (*(v6 + 16))
    {
      swift_beginAccess();
      v11 = *(v5 + 16);

      return v11 & 1;
    }

    sub_10015398C();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();
  }

  if (qword_100268750 != -1)
  {
    swift_once();
  }

  v24 = qword_10026E620;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E5F70;
  v27 = v19;
  v26[0] = v3;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v26);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  v27 = &type metadata for String;
  v26[0] = 0xD000000000000024;
  v26[1] = 0x80000001001FE750;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v26, &qword_10026D350, &qword_1001E6050);
  v13._countAndFlagsBits = 0x3A64656C69616620;
  v13._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  swift_getErrorValue();
  v27 = v25;
  v14 = sub_100017E64(v26);
  (*(*(v25 - 1) + 16))(v14);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v26, &qword_10026D350, &qword_1001E6050);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  v16 = static os_log_type_t.error.getter();
  v11 = v24;
  sub_1000036B0(v16, v8);

  swift_willThrow();

  return v11 & 1;
}

uint64_t sub_100152204(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003CA8(a1, a1[3]);
  sub_100041D2C(0x797269707865, 0xE600000000000000);
  if (v3)
  {
  }

  else if ((v11 & 1) == 0)
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    Date.timeIntervalSinceNow.getter();
    v13 = v12;
    (*(v8 + 8))(v10, v7);
    swift_beginAccess();
    *(a2 + 16) = v13 < 0.0;
  }

  sub_100003CA8(a1, a1[3]);
  sub_10003A420(v24);
  v14 = *(&v24[0] + 1);
  if (*(&v24[0] + 1) >> 60 != 15)
  {
    v15 = *&v24[0];
    v16 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    *&v24[0] = 0;
    v18 = [v16 JSONObjectWithData:isa options:0 error:v24];

    if (v18)
    {
      v19 = *&v24[0];
      _bridgeAnyObjectToAny(_:)();
      sub_10003AE18(v15, v14);
      swift_unknownObjectRelease();
      sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
      if (swift_dynamicCast())
      {
        v20 = v23[1];
        swift_beginAccess();
        *(a3 + 16) = v20;
      }
    }

    else
    {
      v21 = *&v24[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10003AE18(v15, v14);
    }
  }

  return 0;
}

uint64_t sub_1001524EC()
{
  sub_100003CA8((v0 + 16), *(v0 + 40));
  result = sub_10014CE84(0xD000000000000018, 0x80000001001F3050);
  if (!v1)
  {
    sub_100003CA8((v0 + 16), *(v0 + 40));
    sub_10007B9A4(qword_10026E708, &unk_1001EE030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E6580;
    *(inited + 32) = 0x7079546568636163;
    *(inited + 40) = 0xEB00000000444965;
    *(inited + 48) = 0;
    *(inited + 56) = 0x4449656C646E7562;
    *(inited + 64) = 0xE800000000000000;
    *(inited + 72) = 0;
    *(inited + 80) = 0x64616F6C796170;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 96) = 2;
    *(inited + 104) = 0x797269707865;
    *(inited + 112) = 0xE600000000000000;
    *(inited + 120) = 3;
    sub_10014CF4C(0xD000000000000018, 0x80000001001F3050, inited);
    swift_setDeallocating();
    return sub_1001A65FC();
  }

  return result;
}

uint64_t sub_100152644(void *a1, void (*a2)(void), uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t (*a4)(void))
{
  v45 = a4;
  v44 = a3;
  v47 = a2;
  v54 = *v4;
  v6 = a1[3];
  v48 = a1;
  v7 = sub_100003CA8(a1, v6);
  updated = type metadata accessor for MercuryCacheUpdateData.Success(0);
  v8 = *(v7 + *(updated + 24));
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v52 = " failed to update ";
  v57 = v8;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v49 = _swiftEmptyArrayStorage;
  v51 = xmmword_1001E5F60;
  v55 = v13;
  v53 = v9;
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = v16 | (v14 << 6);
    sub_10000DF68(*(v57 + 48) + 40 * v17, v62);
    sub_100011BAC(*(v57 + 56) + 32 * v17, v63);
    sub_10000DF68(v62, v60);
    if (!swift_dynamicCast())
    {
      goto LABEL_12;
    }

    v5 = v58;
    v18 = v59;
    v19 = objc_opt_self();
    sub_100003CA8(v63, v63[3]);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    v60[0] = 0;
    v21 = [v19 dataWithJSONObject:v20 options:0 error:v60];
    swift_unknownObjectRelease();
    v22 = v60[0];
    if (v21)
    {
      v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      sub_10000A064(v62, &qword_10026E5B0, &unk_1001EDC90);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = v44(0, v49[2] + 1, 1);
      }

      v33 = v49[2];
      v32 = v49[3];
      if (v33 >= v32 >> 1)
      {
        v49 = (v44)(v32 > 1, v33 + 1, 1, v49);
      }

      v34 = v49;
      v49[2] = v33 + 1;
      v35 = &v34[4 * v33];
      v35[4] = v29;
      v35[5] = v31;
      v35[6] = v5;
      v35[7] = v18;
      v13 = v55;
    }

    else
    {
      v23 = v22;

      _convertNSErrorToError(_:)();

      swift_willThrow();

      v50 = 0;
LABEL_12:
      if (qword_100268750 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v24 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v24);
      sub_1000056F8();
      v25 = swift_allocObject();
      sub_100016420(v25);
      v61 = v54;
      v60[0] = v56;

      v26 = AMSLogKey();
      if (v26)
      {
        v27 = v26;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v60);
      LogInterpolation.init(stringLiteral:)();
      v61 = &type metadata for AnyHashable;
      v60[0] = swift_allocObject();
      sub_10000DF68(v62, v60[0] + 16);
      static LogInterpolation.safe(_:)();
      sub_10000A064(v60, &qword_10026D350, &qword_1001E6050);
      v28 = static os_log_type_t.error.getter();
      sub_1000036B0(v28, v5);

      sub_10000A064(v62, &qword_10026E5B0, &unk_1001EDC90);
      v9 = v53;
      v13 = v55;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  sub_100003CA8(v48, v48[3]);
  v36 = Date.timeIntervalSinceReferenceDate.getter();
  v38 = v37;
  (v47)(v36);
  if (v50)
  {
  }

  v40 = sub_100003CA8(v56 + 2, v56[5]);
  __chkstk_darwin(v40);
  v42[2] = v49;
  v42[3] = v56;
  v42[4] = v48;
  v42[5] = v38;
  v42[6] = 0;
  v43 = 2;

  sub_10001A648(v41, v41, v45, v42);
}

uint64_t sub_100152C94()
{
  sub_100003CA8((v0 + 16), *(v0 + 40));
  result = sub_10014CE84(0xD000000000000010, 0x80000001001F3030);
  if (!v1)
  {
    sub_100003CA8((v0 + 16), *(v0 + 40));
    sub_10007B9A4(qword_10026E708, &unk_1001EE030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E6580;
    *(inited + 32) = 0x7079546568636163;
    *(inited + 40) = 0xEB00000000444965;
    *(inited + 48) = 0;
    *(inited + 56) = 0x65636976726573;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = 0;
    *(inited + 80) = 0x64616F6C796170;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 96) = 2;
    *(inited + 104) = 0x797269707865;
    *(inited + 112) = 0xE600000000000000;
    *(inited + 120) = 3;
    sub_10014CF4C(0xD000000000000010, 0x80000001001F3030, inited);
    swift_setDeallocating();
    return sub_1001A65FC();
  }

  return result;
}

uint64_t sub_100152DE8(uint64_t result, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v49 = a2;
  v12 = *(result + 16);
  if (v12)
  {
    v13 = (result + 56);
    while (1)
    {
      v42 = v13;
      v43 = v12;
      v45 = *(v13 - 1);
      v46 = v11;
      v14 = *v13;
      v15 = *(v13 - 3);
      v16 = *(v13 - 2);
      sub_10003A5E0(v15, v16);
      v17 = qword_100268750;
      v18 = v14;

      if (v17 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v19 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v19);
      sub_1000056F8();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1001E5F60;
      v48 = type metadata accessor for MercuryCacheDatabase();
      v47[0] = v49;

      v21 = AMSLogKey();
      if (v21)
      {
        v22 = v21;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v47);
      LogInterpolation.init(stringLiteral:)();
      v48 = a7;
      sub_1000083D8();
      v23 = swift_allocObject();
      v47[0] = v23;
      v23[2] = v15;
      v23[3] = v16;
      v23[4] = v45;
      v23[5] = v18;
      sub_10003A5E0(v15, v16);

      static LogInterpolation.safe(_:)();
      sub_10000A064(v47, &qword_10026D350, &qword_1001E6050);
      v24 = static os_log_type_t.info.getter();
      sub_1000036B0(v24, v20);

      sub_100003CA8((v49 + 16), *(v49 + 40));
      v25 = sub_100003CA8(a3, a3[3]);
      v26 = v25[1];
      v44 = *v25;
      sub_10007B9A4(&qword_10026E700, &qword_1001EE028);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001E6580;
      sub_100003CA8(a3, a3[3]);
      sub_10000A754();
      *(inited + 32) = v28;
      *(inited + 40) = 0xEB00000000444965;
      *(inited + 48) = v29;
      *(inited + 56) = v17;
      *(inited + 64) = 3;
      *(inited + 72) = 0x797269707865;
      *(inited + 80) = 0xE600000000000000;
      *(inited + 88) = a4;
      *(inited + 96) = a5;
      *(inited + 104) = a6;
      *(inited + 112) = a9;
      *(inited + 120) = a10;
      *(inited + 128) = v45;
      *(inited + 136) = v18;
      *(inited + 144) = 3;
      sub_1000167C4();
      *(inited + 152) = v30;
      *(inited + 160) = 0xE700000000000000;
      *(inited + 168) = v15;
      *(inited + 176) = v16;
      *(inited + 184) = 0;

      sub_100153B1C(a4, a5, a6);

      v31 = sub_100004894();
      sub_10003A5E0(v31, v32);
      sub_10014D444(v44, v26, inited);
      v11 = v46;
      if (v46)
      {
        break;
      }

      v33 = sub_100004894();
      sub_1000253FC(v33, v34);

      swift_setDeallocating();
      result = sub_1001A6638();
      v13 = v42 + 4;
      v12 = v43 - 1;
      if (v43 == 1)
      {
        return result;
      }
    }

    v35 = sub_100004894();
    sub_1000253FC(v35, v36);

    swift_setDeallocating();
    return sub_1001A6638();
  }

  return result;
}

uint64_t sub_1001531F8()
{
  sub_100003CA8((v0 + 16), *(v0 + 40));
  result = sub_10014CE84(0xD000000000000013, 0x80000001001F3070);
  if (!v1)
  {
    sub_100003CA8((v0 + 16), *(v0 + 40));
    sub_10007B9A4(qword_10026E708, &unk_1001EE030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E6580;
    *(inited + 32) = 0x7079546568636163;
    *(inited + 40) = 0xEB00000000444965;
    *(inited + 48) = 0;
    *(inited + 56) = 0x65636976726573;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = 0;
    *(inited + 80) = 0x64616F6C796170;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 96) = 2;
    *(inited + 104) = 0x797269707865;
    *(inited + 112) = 0xE600000000000000;
    *(inited + 120) = 3;
    sub_10014CF4C(0xD000000000000013, 0x80000001001F3070, inited);
    swift_setDeallocating();
    return sub_1001A65FC();
  }

  return result;
}

uint64_t sub_10015334C(uint64_t a1)
{
  v3 = v2;
  v4 = *v1;
  v5 = objc_opt_self();
  sub_100003FB4();
  type metadata accessor for MercuryCacheUpdateData.Success(0);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v37 = 0;
  v7 = [v5 dataWithJSONObject:isa options:0 error:&v37];

  v8 = v37;
  if (v7)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    sub_100003FB4();
    Date.timeIntervalSinceReferenceDate.getter();
    v13 = v12;
    v14 = sub_100003FB4();
    v15 = *v14;
    v16 = v14[1];

    sub_100153854(v15, v16);

    if (v3)
    {
      return sub_1000253FC(v9, v11);
    }

    else
    {
      v36 = v9;
      if (qword_100268750 != -1)
      {
        sub_100006DF0();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_100003EFC();
      v19 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v19);
      sub_1000056F8();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1001E5F60;
      v39 = v4;
      v37 = v1;

      v21 = AMSLogKey();
      if (v21)
      {
        v22 = v21;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v37);
      v37 = 0x203A656C626154;
      v38 = 0xE700000000000000;
      v23 = sub_100003FB4();
      v24 = *v23;
      v25 = v23[1];

      v26._countAndFlagsBits = v24;
      v26._object = v25;
      String.append(_:)(v26);

      v39 = &type metadata for String;
      static LogInterpolation.safe(_:)();
      sub_10000A064(&v37, &qword_10026D350, &qword_1001E6050);
      v37 = 0;
      v38 = 0xE000000000000000;
      v27._countAndFlagsBits = 0x6E69747265736E49;
      v27._object = 0xEA00000000002067;
      String.append(_:)(v27);
      sub_10007B9A4(&qword_10026BF40, &qword_1001EE040);
      _print_unlocked<A, B>(_:_:)();
      v39 = &type metadata for String;
      static LogInterpolation.safe(_:)();
      sub_10000A064(&v37, &qword_10026D350, &qword_1001E6050);
      v28 = static os_log_type_t.debug.getter();
      sub_1000036B0(v28, v20);

      sub_100022280();
      v29 = sub_100003FB4();
      v30 = *v29;
      v31 = v29[1];
      sub_10007B9A4(&qword_10026E700, &qword_1001EE028);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001E5F60;
      sub_100003FB4();
      sub_10000A754();
      *(inited + 32) = v33;
      *(inited + 40) = 0xEB00000000444965;
      *(inited + 48) = v34;
      *(inited + 56) = v24;
      *(inited + 64) = 3;
      *(inited + 72) = 0x797269707865;
      *(inited + 80) = 0xE600000000000000;
      *(inited + 88) = v13;
      *(inited + 96) = 0;
      *(inited + 104) = 2;
      sub_1000167C4();
      *(inited + 112) = v35;
      *(inited + 120) = 0xE700000000000000;
      *(inited + 128) = v36;
      *(inited + 136) = v11;
      *(inited + 144) = 0;

      sub_10003A5E0(v36, v11);
      sub_10014D444(v30, v31, inited);
      sub_1000253FC(v36, v11);

      swift_setDeallocating();
      return sub_1001A6638();
    }
  }

  else
  {
    v18 = v8;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_100153854(uint64_t a1, void *a2)
{
  sub_100003CA8((v2 + 16), *(v2 + 40));
  result = sub_10014CE84(a1, a2);
  if (!v3)
  {
    sub_100003CA8((v2 + 16), *(v2 + 40));
    sub_10007B9A4(qword_10026E708, &unk_1001EE030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E5F60;
    *(inited + 32) = 0x7079546568636163;
    *(inited + 40) = 0xEB00000000444965;
    *(inited + 48) = 0;
    *(inited + 56) = 0x64616F6C796170;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = 2;
    *(inited + 80) = 0x797269707865;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 96) = 3;
    sub_10014CF4C(a1, a2, inited);
    swift_setDeallocating();
    return sub_1001A65FC();
  }

  return result;
}

unint64_t sub_10015398C()
{
  result = qword_10026E6E0;
  if (!qword_10026E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E6E0);
  }

  return result;
}

uint64_t sub_100153A1C()
{

  sub_1000083D8();

  return _swift_deallocObject(v0);
}

uint64_t sub_100153B1C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  if (!a3)
  {
    return sub_10003A5E0(result, a2);
  }

  return result;
}

uint64_t sub_100153BD0()
{
  sub_1000253FC(*(v0 + 16), *(v0 + 24));

  sub_1000083D8();

  return _swift_deallocObject(v1);
}

uint64_t sub_100153C0C(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2);
}

uint64_t sub_100153CA8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100153D28(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 1) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *&a1[v10];
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xFE)
      {
        return sub_100009F34(&a1[v7 + 1] & ~v7, v6, v4);
      }

      v16 = *a1;
      v17 = v16 >= 2;
      v18 = (v16 + 2147483646) & 0x7FFFFFFF;
      if (v17)
      {
        return (v18 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = a1[v10];
  if (!a1[v10])
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (a1[2] << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_100153EB0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 1) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
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
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v8 > 0xFE)
          {
            v21 = &a1[v10 + 1] & ~v10;

            sub_10000A7C0(v21, a2, v8, v6);
          }

          else
          {
            *a1 = a2 + 1;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
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
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MercuryCacheError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001541EC()
{
  result = qword_10026E790;
  if (!qword_10026E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E790);
  }

  return result;
}

uint64_t sub_1001542A0(uint64_t a1)
{

  return sub_100151D78(a1, v1 | 0x8000000000000000, v2);
}

uint64_t sub_1001542E0(uint64_t a1, void *a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_10005AE84(v3, a2);
}

uint64_t sub_100154308()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026E798 = qword_100287880;
}

uint64_t sub_10015436C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 105) = a5;
  *(v5 + 128) = a3;
  *(v5 + 136) = a4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  return sub_100006CA4();
}

uint64_t sub_100154388()
{
  if (qword_100268760 != -1)
  {
    sub_100005490(&qword_100268760);
  }

  v1 = *(v0 + 112);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001E5F60;
  v3 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  v4 = [v1 ams_DSID];
  v5 = v4;
  if (v4)
  {
    v4 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  }

  else
  {
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
  }

  v6 = *(v0 + 105);
  v7 = *(v0 + 136);
  *(v0 + 16) = v5;
  *(v0 + 40) = v4;
  static LogInterpolation.sensitive(_:)();
  sub_100002C5C(v0 + 16);
  _StringGuts.grow(_:)(33);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  v8._object = 0x80000001001FEAD0;
  v8._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v8);
  v9._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x646F6D20726F6620;
  v10._object = 0xEB00000000203A65;
  String.append(_:)(v10);
  *(v0 + 96) = v7;
  *(v0 + 104) = v6;
  _print_unlocked<A, B>(_:_:)();
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  *(v0 + 72) = &type metadata for String;
  *(v0 + 48) = v11;
  *(v0 + 56) = v12;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v0 + 48);
  v13 = static os_log_type_t.info.getter();
  sub_1000036B0(v13, v2);

  if (v6)
  {
    v14 = *(v0 + 120);
    v15 = *(v0 + 112);
    objc_allocWithZone(AMSMercuryCacheFetchTask);

    v16 = v15;
    swift_unknownObjectRetain();
    *(v0 + 144) = sub_100155098(v16, v14);
    v17 = swift_task_alloc();
    *(v0 + 152) = v17;
    *v17 = v0;
    v17[1] = sub_100154758;

    return sub_100154938();
  }

  else
  {
    sub_10000B214();
    v21 = v19;

    return v21(v20);
  }
}

uint64_t sub_100154758(uint64_t a1)
{
  v4 = *v2;
  sub_100002D98();
  *v5 = v4;
  v6 = *v2;
  sub_100002D98();
  *v7 = v6;
  *(v4 + 160) = v1;

  if (v1)
  {
    v8 = sub_1001548D8;
  }

  else
  {
    *(v4 + 168) = a1;
    v8 = sub_100154878;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100154878()
{
  sub_100004768();

  sub_10000B214();

  return v1();
}

uint64_t sub_1001548D8()
{
  sub_100004768();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015494C()
{
  v1 = [*(v0 + 152) perform];
  *(v0 + 160) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100154A84;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_10007B9A4(&qword_10026BB90, &unk_1001EE250);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100048FD8;
  *(v0 + 104) = &unk_10024F5F8;
  *(v0 + 112) = v2;
  [v1 resultWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100154A84()
{
  sub_100004768();
  sub_100002D98();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_100154E70;
  }

  else
  {
    v5 = sub_100154B8C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100154B8C()
{
  v1 = *(v0 + 144);

  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  if (qword_100268760 != -1)
  {
    sub_100005490(&qword_100268760);
  }

  v2 = *(v0 + 152);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F70;
  *(v0 + 104) = sub_100002BC0(0, &qword_10026E7A0, AMSMercuryCacheFetchTask_ptr);
  *(v0 + 80) = v2;
  v4 = v2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 80));
  LogInterpolation.init(stringLiteral:)();
  v7 = static os_log_type_t.error.getter();
  sub_1000036B0(v7, v3);

  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  AMSError();

  swift_willThrow();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100154E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 160);
  swift_willThrow();

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_100154EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100154FA4;

  return sub_10015436C(a1, a2, a3, a4, a5);
}

uint64_t sub_100154FA4()
{
  sub_100004768();
  v3 = v2;
  v4 = *v1;
  sub_100002D98();
  *v5 = v4;

  sub_10000B214();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

id sub_100155098(void *a1, uint64_t a2)
{
  isa = Set._bridgeToObjectiveC()().super.isa;

  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = [v2 initWithAccount:a1 bag:a2 cacheTypeIDs:isa clientIdentifier:v6 clientVersion:v7];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_100155188(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v6 = a4 + 64;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = (*(a4 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(a4 + 56) + 8 * v14);
      v19[0] = *v15;
      v19[1] = v16;
      v19[2] = v17;

      a2(&v20, v19);
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v20;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001552F0(uint64_t a1)
{
  *&v3 = 0x73746C75736572;
  *(&v3 + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v4, a1, &v3);
  sub_10000E1E8(v4);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  sub_10007B9A4(&qword_10026E7E0, &qword_1001EEA50);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001553CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v8 = sub_10015A1EC(a1);
  *(&v8 + 1) = v4;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v9, a2, &v8);
  sub_10000E1E8(v9);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  v5 = swift_dynamicCast();
  v6 = v10;
  if (!v5)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_100155474@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, char a3@<W0>)
{
  *&v9 = sub_10015A1EC(a3);
  *(&v9 + 1) = v5;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v10, a1, &v9);
  sub_10000E1E8(v10);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  v6 = type metadata accessor for Date();
  v7 = swift_dynamicCast();
  return sub_10000A7C0(a2, v7 ^ 1u, 1, v6);
}

uint64_t sub_100155534()
{
  sub_100004768();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_10007B9A4(&qword_10026E7A8, &qword_1001EE278);
  sub_100003D10(v3);
  v1[4] = sub_100023C0C();
  updated = type metadata accessor for MercuryCacheUpdateResponse(0);
  v1[5] = updated;
  sub_100003D10(updated);
  v1[6] = sub_100023C0C();
  v5 = sub_1000033A0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001555DC()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_1001564C4(v0[2], v2);
  if (sub_100009F34(v2, 1, v1) == 1)
  {
    sub_10000A00C(v0[4], &qword_10026E7A8, &qword_1001EE278);
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_100155B30;

    return sub_100155C50();
  }

  else
  {
    v5 = v0[6];
    v6 = v0[3];
    sub_100158DBC(v0[4], v5, type metadata accessor for MercuryCacheUpdateResponse);
    v7 = sub_100156874(v5);
    v0[7] = v7;
    updated = type metadata accessor for MercuryCacheDataUpdateHandler(0);
    v0[8] = updated;
    v0[9] = sub_100157F14(v5, v6 + *(updated + 24));
    v9 = *v6;
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_100155790;

    return sub_10015C64C(v7, v9);
  }
}

uint64_t sub_100155790()
{
  sub_100004768();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  v3 = sub_1000033A0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100155894()
{
  v1 = (v0[3] + *(v0[8] + 44));
  sub_100003CA8(v1, v1[3]);
  sub_1001508D8();
  v0[11] = v2;

  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_10015596C;

  return (sub_10002E1E0)();
}

uint64_t sub_10015596C()
{
  v2 = *v1;
  sub_100002D20();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_1001591D4;
  }

  else
  {

    v4 = sub_100155AAC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100155AAC()
{
  sub_100004768();
  sub_100158E7C(*(v0 + 48), type metadata accessor for MercuryCacheUpdateResponse);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100155B30()
{
  sub_100004768();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100155C50()
{
  sub_100004768();
  *(v1 + 16) = v0;
  *(v1 + 144) = v2;
  updated = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  *(v1 + 24) = updated;
  sub_100003D10(updated);
  *(v1 + 32) = sub_100023C0C();
  v4 = type metadata accessor for Date();
  *(v1 + 40) = v4;
  *(v1 + 48) = *(v4 - 8);
  *(v1 + 56) = sub_100023C0C();
  *(v1 + 64) = *(type metadata accessor for MercuryCacheMetadata(0) - 8);
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  v5 = type metadata accessor for MercuryCacheUpdateData.Failure(0);
  *(v1 + 112) = v5;
  sub_100003D10(v5);
  *(v1 + 120) = sub_100023C0C();
  v6 = sub_1000033A0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100155DD0()
{
  v57 = v0[14];
  v58 = v0[15];
  v62 = v0[8];
  v1 = v0[6];
  v2 = v0[2];
  updated = type metadata accessor for MercuryCacheDataUpdateHandler(0);
  v56 = v2;
  v3 = *(v2 + updated[6]);

  v5 = sub_1001C1D1C(v4, v3);

  result = sub_1001C1D1C(v6, v5);
  v8 = 0;
  v9 = result + 56;
  v60 = result;
  v10 = -1;
  v11 = -1 << *(result + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(result + 56);
  v13 = (63 - v11) >> 6;
  v53 = (v1 + 16);
  v51 = (v1 + 8);
  v14 = _swiftEmptyArrayStorage;
  v54 = v13;
  v55 = result + 56;
  v59 = v0;
  while (1)
  {
    v0[16] = v14;
    if (!v12)
    {
      break;
    }

    v66 = v14;
LABEL_10:
    v16 = v0[15];
    v65 = v0[5];
    v17 = v0[2];
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = (*(v60 + 48) + ((v8 << 10) | (16 * v18)));
    v20 = v19[1];
    v63 = *v19;
    v21 = *(v17 + updated[8]);
    v22 = updated[9];
    v23 = *(v17 + updated[10]);
    swift_bridgeObjectRetain_n();
    Date.addingTimeInterval(_:)();
    (*v53)(&v16[*(v57 + 28)], v17 + v22, v65);
    *v16 = v63;
    *(v58 + 8) = v20;
    v24 = &v16[*(v57 + 24)];
    *v24 = xmmword_1001EE260;
    *(v24 + 2) = v21;
    *(v24 + 3) = v23;
    v24[32] = 0;
    v25 = *(v56 + 8);
    if (*(v25 + 16))
    {
      v26 = sub_100012A94();
      v28 = v27;

      if (v28)
      {
        v0 = v59;
        v29 = v59[15];
        v31 = v59[12];
        v30 = v59[13];
        v64 = v59[11];
        v32 = v59[7];
        v52 = v59[5];
        v33 = *(v59 + 144);
        sub_100158E1C(*(v25 + 56) + *(v62 + 72) * v26, v31, type metadata accessor for MercuryCacheMetadata);
        sub_1000054B0();
        sub_100158DBC(v31, v30, v34);
        static Date.now.getter();
        sub_100159290(v29, v33, v32);
        (*v51)(v32, v52);
        sub_100158E1C(v30, v64, type metadata accessor for MercuryCacheMetadata);
        v14 = v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100003030();
          sub_1000D5830();
          v14 = v45;
        }

        v35 = v14[2];
        if (v35 >= v14[3] >> 1)
        {
          sub_100006574();
          v14 = v46;
        }

        v36 = v59[11];
        sub_100007C18(v59[13]);
        sub_10000BA6C();
        v14[2] = v35 + 1;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v0 = v59;
    v37 = v59[9];
    v38 = v59[10];
    v39 = v59[4];
    sub_100158E1C(v59[15], v39, type metadata accessor for MercuryCacheUpdateData.Failure);
    swift_storeEnumTagMultiPayload();
    sub_100159BE4(v39, v38);
    sub_100158E1C(v38, v37, type metadata accessor for MercuryCacheMetadata);
    v14 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100003030();
      sub_1000D5830();
      v14 = v43;
    }

    v40 = v14[2];
    if (v40 >= v14[3] >> 1)
    {
      sub_100006574();
      v14 = v44;
    }

    v36 = v59[9];
    sub_100007C18(v59[10]);
    sub_10000BA6C();
    v14[2] = v40 + 1;
LABEL_23:
    sub_1000054B0();
    result = sub_100158DBC(v36, v41, v42);
    v13 = v54;
    v9 = v55;
  }

  while (1)
  {
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v8;
    if (v12)
    {
      v66 = v14;
      v8 = v15;
      goto LABEL_10;
    }
  }

  v47 = v0;
  v48 = v0[2];

  v49 = *v48;
  v50 = swift_task_alloc();
  v47[17] = v50;
  *v50 = v47;
  v50[1] = sub_1001562BC;

  return sub_10015C64C(v14, v49);
}

uint64_t sub_1001562BC()
{
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1001564C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  updated = type metadata accessor for MercuryCacheUpdateResponse(0);
  __chkstk_darwin(updated);
  v7 = (v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007B9A4(&qword_10026E7A8, &qword_1001EE278);
  __chkstk_darwin(v12 - 8);
  v14 = v28 - v13;
  if (a1)
  {
    v31 = a2;
    v15 = type metadata accessor for MercuryCacheDataUpdateHandler(0);
    v16 = v2 + v15[9];
    v30 = *(v9 + 16);
    v30(v11, v16, v8);
    v17 = *(v2 + v15[7]);
    v29 = *(v2 + v15[8]);
    v18 = *(v2 + v15[10]);
    v19 = sub_1001552F0(a1);
    if (v19)
    {
      v20 = v19;
      v28[1] = v28;
      __chkstk_darwin(v19);
      v28[-4] = v11;
      v28[-3] = v17;
      v21 = v29;
      v28[-2] = v29;
      v28[-1] = v18;
      v22 = sub_100155188(_swiftEmptyDictionarySingleton, sub_100158FA4, &v28[-6], v20);

      *v7 = v22;
      v30(v7 + updated[5], v11, v8);
      *(v7 + updated[6]) = v17;
      *(v7 + updated[7]) = v21;
      *(v7 + updated[8]) = v18;
      sub_100158DBC(v7, v14, type metadata accessor for MercuryCacheUpdateResponse);
      sub_10000A7C0(v14, 0, 1, updated);
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      (*(v9 + 8))(v11, v8);
      sub_10000A7C0(v14, 1, 1, updated);
    }

    v24 = sub_100009F34(v14, 1, updated);
    v25 = v31;
    if (v24 == 1)
    {
      sub_10000A00C(v14, &qword_10026E7A8, &qword_1001EE278);
      v26 = v25;
      v27 = 1;
    }

    else
    {
      sub_100158DBC(v14, v31, type metadata accessor for MercuryCacheUpdateResponse);
      v26 = v25;
      v27 = 0;
    }

    return sub_10000A7C0(v26, v27, 1, updated);
  }

  else
  {

    return sub_10000A7C0(a2, 1, 1, updated);
  }
}

void *sub_100156874(uint64_t *a1)
{
  v3 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  __chkstk_darwin(v3 - 8);
  v188 = &v181 - v4;
  updated = type metadata accessor for MercuryCacheUpdateData.Success(0);
  __chkstk_darwin(updated);
  v194 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for Date();
  v6 = *(v225 - 8);
  v7 = __chkstk_darwin(v225);
  v184 = &v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v197 = &v181 - v10;
  v11 = __chkstk_darwin(v9);
  v196 = &v181 - v12;
  __chkstk_darwin(v11);
  v201 = &v181 - v13;
  v202 = type metadata accessor for MercuryCacheUpdateData.Failure(0);
  v14 = __chkstk_darwin(v202);
  v187 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v186 = (&v181 - v17);
  __chkstk_darwin(v16);
  v200 = &v181 - v18;
  v221 = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  v189 = *(v221 - 8);
  v19 = __chkstk_darwin(v221);
  v198 = &v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v205 = &v181 - v22;
  v23 = __chkstk_darwin(v21);
  v181 = &v181 - v24;
  v25 = __chkstk_darwin(v23);
  v182 = &v181 - v26;
  v27 = __chkstk_darwin(v25);
  v193 = &v181 - v28;
  __chkstk_darwin(v27);
  v192 = &v181 - v29;
  v30 = sub_10007B9A4(&qword_10026AF40, &unk_1001EEAD0);
  v31 = __chkstk_darwin(v30 - 8);
  v208 = &v181 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v219 = (&v181 - v33);
  v214 = type metadata accessor for MercuryCacheMetadata(0);
  v226 = *(v214 - 8);
  v34 = __chkstk_darwin(v214);
  v213 = &v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v181 - v37;
  v39 = __chkstk_darwin(v36);
  v224 = &v181 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v181 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v181 - v45;
  v47 = __chkstk_darwin(v44);
  v227 = &v181 - v48;
  __chkstk_darwin(v47);
  v203 = &v181 - v49;
  v50 = sub_10007B9A4(&qword_10026E7D0, &qword_1001EE2B0);
  v51 = __chkstk_darwin(v50 - 8);
  v212 = (&v181 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v51);
  v209 = (&v181 - v53);
  v54 = *a1;
  v230 = v1;
  v211 = sub_100158604(sub_100158D9C, v229, v54);
  v220 = v1;
  v55 = *(v1 + 8);
  v56 = v55 + 64;
  v57 = 1 << *(v55 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v55 + 64);
  v190 = (v57 + 63) >> 6;
  v185 = (v6 + 24);
  v199 = (v6 + 8);
  v183 = v6;
  v204 = v55;

  v61 = 0;
  v62 = _swiftEmptyArrayStorage;
  v191 = xmmword_1001EE260;
  v223 = v38;
  v206 = v56;
  v210 = (v6 + 16);
  v207 = v46;
  v218 = v43;
  while (1)
  {
    v228 = v62;
    if (!v59)
    {
      break;
    }

    v63 = v61;
LABEL_11:
    v65 = __clz(__rbit64(v59));
    v59 &= v59 - 1;
    v66 = v65 | (v63 << 6);
    v67 = (*(v204 + 48) + 16 * v66);
    v69 = *v67;
    v68 = v67[1];
    v70 = v203;
    sub_100158E1C(*(v204 + 56) + *(v226 + 72) * v66, v203, type metadata accessor for MercuryCacheMetadata);
    v71 = sub_10007B9A4(&qword_10026E7D8, &qword_1001EE2B8);
    v72 = *(v71 + 48);
    v73 = v212;
    *v212 = v69;
    v73[1] = v68;
    v64 = v73;
    sub_100158DBC(v70, v73 + v72, type metadata accessor for MercuryCacheMetadata);
    sub_10000A7C0(v64, 0, 1, v71);

    v62 = v228;
LABEL_12:
    v74 = v209;
    sub_100158ED4(v64, v209, &qword_10026E7D0, &qword_1001EE2B0);
    v75 = sub_10007B9A4(&qword_10026E7D8, &qword_1001EE2B8);
    if (sub_100009F34(v74, 1, v75) == 1)
    {

      v125 = sub_1001BF318();

      v127 = sub_100169084(v126, v125);

      v128 = 1 << *(v127 + 32);
      v129 = -1;
      if (v128 < 64)
      {
        v129 = ~(-1 << v128);
      }

      v130 = v129 & v127[7];
      v131 = (v128 + 63) >> 6;

      v132 = 0;
      v219 = _swiftEmptyArrayStorage;
LABEL_33:
      v133 = v225;
      while (v130)
      {
        v134 = v130;
LABEL_40:
        v130 = (v134 - 1) & v134;
        if (v211[2])
        {

          v136 = sub_100012A94();
          if (v137)
          {
            v138 = *(v189 + 72);
            v139 = v181;
            sub_100158E1C(v211[7] + v138 * v136, v181, type metadata accessor for MercuryCacheUpdateData.DataKind);

            sub_100158DBC(v139, v182, type metadata accessor for MercuryCacheUpdateData.DataKind);
            v140 = v219;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000D59E8();
              v140 = v144;
            }

            v142 = v140[2];
            v141 = v140[3];
            v219 = v140;
            if (v142 >= v141 >> 1)
            {
              sub_1000D59E8();
              v219 = v145;
            }

            v143 = v219;
            v219[2] = v142 + 1;
            result = sub_100158DBC(v182, v143 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + v142 * v138, type metadata accessor for MercuryCacheUpdateData.DataKind);
          }

          else
          {
          }

          goto LABEL_33;
        }
      }

      while (1)
      {
        v135 = v132 + 1;
        if (__OFADD__(v132, 1))
        {
          goto LABEL_65;
        }

        if (v135 >= v131)
        {

          v146 = v219[2];
          if (v146)
          {
            v147 = v219 + ((*(v189 + 80) + 32) & ~*(v189 + 80));
            v227 = *(v189 + 72);
            v222 = (v183 + 32);
            v220 = (v183 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
            v148 = v198;
            v149 = v205;
            do
            {
              v228 = v62;
              sub_100158E1C(v147, v149, type metadata accessor for MercuryCacheUpdateData.DataKind);
              sub_100158E1C(v149, v148, type metadata accessor for MercuryCacheUpdateData.DataKind);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v150 = v186;
                sub_100158DBC(v148, v186, type metadata accessor for MercuryCacheUpdateData.Failure);
                v151 = v150[1];
                v224 = *v150;
                v152 = v202;
                v153 = *v210;
                (*v210)(v196, v150 + *(v202 + 20), v133);
                v153(v197, v150 + *(v152 + 28), v133);
                v154 = v187;
                sub_100158E1C(v150, v187, type metadata accessor for MercuryCacheUpdateData.Failure);
                v155 = v154 + *(v152 + 24);
                if (*(v155 + 32))
                {

                  sub_100158E7C(v205, type metadata accessor for MercuryCacheUpdateData.DataKind);
                  sub_100158E7C(v154, type metadata accessor for MercuryCacheUpdateData.Failure);
                  sub_100158E7C(v150, type metadata accessor for MercuryCacheUpdateData.Failure);
                  v156 = type metadata accessor for RetryConfiguration(0);
                  v157 = v188;
                  sub_10000A7C0(v188, 1, 1, v156);
                  v158 = *v222;
                }

                else
                {
                  v169 = v152;
                  v170 = *(v155 + 16);
                  v171 = *(v169 + 28);
                  if (*(v155 + 8))
                  {
                    v155 += 24;
                  }

                  v172 = *v155;
                  v173 = v184;
                  v153(v184, (v154 + v171), v133);

                  sub_100158E7C(v205, type metadata accessor for MercuryCacheUpdateData.DataKind);
                  sub_100158E7C(v154, type metadata accessor for MercuryCacheUpdateData.Failure);
                  sub_100158E7C(v150, type metadata accessor for MercuryCacheUpdateData.Failure);
                  v157 = v188;
                  *v188 = 0;
                  *(v157 + 1) = v170;
                  *(v157 + 2) = v172;
                  v174 = type metadata accessor for RetryConfiguration(0);
                  v158 = *v222;
                  (*v222)(&v157[*(v174 + 28)], v173, v225);
                  v175 = v174;
                  v133 = v225;
                  sub_10000A7C0(v157, 0, 1, v175);
                }

                v62 = v228;
                v176 = v223;
                *v223 = v224;
                *(v176 + 1) = v151;
                v177 = v214;
                v158(&v176[*(v214 + 20)], v196, v133);
                v158(&v176[*(v177 + 24)], v197, v133);
                sub_100158ED4(v157, &v176[*(v177 + 28)], &qword_10026E7C8, &unk_1001EE2A0);
              }

              else
              {
                sub_100158E7C(v149, type metadata accessor for MercuryCacheUpdateData.DataKind);
                v159 = v194;
                sub_100158DBC(v148, v194, type metadata accessor for MercuryCacheUpdateData.Success);
                v160 = *v159;
                v161 = *(v159 + 1);
                v162 = updated;
                v163 = v214;
                v164 = v223;
                v165 = *v210;
                (*v210)(&v223[*(v214 + 20)], &v159[*(updated + 20)], v225);
                v166 = *(v162 + 28);
                v133 = v225;
                v165(&v164[*(v163 + 24)], &v159[v166], v225);

                sub_100158E7C(v159, type metadata accessor for MercuryCacheUpdateData.Success);
                v167 = *(v163 + 28);
                v168 = type metadata accessor for RetryConfiguration(0);
                sub_10000A7C0(&v164[v167], 1, 1, v168);
                *v164 = v160;
                *(v164 + 1) = v161;
                v62 = v228;
              }

              sub_100158E1C(v223, v213, type metadata accessor for MercuryCacheMetadata);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1000D5830();
                v62 = v179;
              }

              v148 = v198;
              v149 = v205;
              v178 = v62[2];
              if (v178 >= v62[3] >> 1)
              {
                sub_1000D5830();
                v62 = v180;
              }

              sub_100158E7C(v223, type metadata accessor for MercuryCacheMetadata);
              v62[2] = v178 + 1;
              sub_100158DBC(v213, v62 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v178, type metadata accessor for MercuryCacheMetadata);
              v147 += v227;
              --v146;
            }

            while (v146);
          }

          return v62;
        }

        v134 = v127[v135 + 7];
        ++v132;
        if (v134)
        {
          v132 = v135;
          goto LABEL_40;
        }
      }
    }

    v76 = *v74;
    v77 = v74[1];
    sub_100158DBC(v74 + *(v75 + 48), v227, type metadata accessor for MercuryCacheMetadata);
    v78 = type metadata accessor for MercuryCacheDataUpdateHandler(0);
    v79 = v220;
    v80 = *(v220 + v78[6] + 8);

    v82 = sub_1001C1D1C(v81, v80);
    LODWORD(v80) = sub_10005938C(v76, v77, v82);

    v83 = *(v79 + v78[8]);
    v216 = *(v79 + v78[10]);
    v84 = v211[2];
    LODWORD(v222) = v80;
    v217 = v83;
    if (v84)
    {
      v85 = v211;
      v86 = sub_100012A94();
      v88 = v87;

      if (v88)
      {
        v89 = v219;
        sub_100158E1C(v85[7] + *(v189 + 72) * v86, v219, type metadata accessor for MercuryCacheUpdateData.DataKind);
        v90 = 0;
        v91 = v208;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v90 = 1;
    v91 = v208;
    v89 = v219;
LABEL_18:
    v92 = v227;
    v93 = v221;
    sub_10000A7C0(v89, v90, 1, v221);
    v215 = v78[9];
    v94 = v93;
    v95 = v218;
    sub_100158E1C(v92, v218, type metadata accessor for MercuryCacheMetadata);
    v96 = *v92;
    v97 = v92[1];
    sub_100158F34(v89, v91);
    if (sub_100009F34(v91, 1, v94) == 1)
    {

      sub_10000A00C(v91, &qword_10026AF40, &unk_1001EEAD0);
      v98 = v202;
      v99 = *v210;
      v100 = v200;
      v101 = v92 + *(v214 + 20);
      v102 = v225;
      (*v210)(&v200[*(v202 + 20)], v101, v225);
      v99(&v100[*(v98 + 28)], (v220 + v215), v102);
      *v100 = v96;
      *(v100 + 1) = v97;
      v103 = &v100[*(v98 + 24)];
      *v103 = v191;
      v104 = v216;
      *(v103 + 2) = v217;
      *(v103 + 3) = v104;
      v103[32] = 0;
      v105 = v201;
      static Date.now.getter();
      sub_100159290(v100, v222 & 1, v105);
      (*v199)(v105, v102);
      sub_100158E7C(v100, type metadata accessor for MercuryCacheUpdateData.Failure);
      sub_10000A00C(v219, &qword_10026AF40, &unk_1001EEAD0);
      v62 = v228;
      v106 = v95;
    }

    else
    {
      v107 = v192;
      sub_100158DBC(v91, v192, type metadata accessor for MercuryCacheUpdateData.DataKind);
      v108 = v193;
      sub_100158E1C(v107, v193, type metadata accessor for MercuryCacheUpdateData.DataKind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v109 = v200;
        sub_100158DBC(v108, v200, type metadata accessor for MercuryCacheUpdateData.Failure);
        v110 = v201;
        static Date.now.getter();
        v111 = v218;
        sub_100159290(v109, v222 & 1, v110);
        (*v199)(v110, v225);
        v106 = v111;
        sub_100158E7C(v109, type metadata accessor for MercuryCacheUpdateData.Failure);
        sub_100158E7C(v107, type metadata accessor for MercuryCacheUpdateData.DataKind);
        sub_10000A00C(v89, &qword_10026AF40, &unk_1001EEAD0);
      }

      else
      {
        sub_100158E7C(v107, type metadata accessor for MercuryCacheUpdateData.DataKind);
        sub_10000A00C(v89, &qword_10026AF40, &unk_1001EEAD0);
        v112 = v194;
        sub_100158DBC(v108, v194, type metadata accessor for MercuryCacheUpdateData.Success);
        v113 = updated;
        v114 = v214;
        v115 = *v185;
        v116 = v218;
        v117 = v225;
        (*v185)(&v218[*(v214 + 20)], v112 + *(updated + 20), v225);
        v115(v116 + *(v114 + 24), v112 + *(v113 + 28), v117);
        sub_100158E7C(v112, type metadata accessor for MercuryCacheUpdateData.Success);
        v118 = *(v114 + 28);
        v106 = v116;
        sub_10000A00C(v116 + v118, &qword_10026E7C8, &unk_1001EE2A0);
        v119 = type metadata accessor for RetryConfiguration(0);
        sub_10000A7C0(v116 + v118, 1, 1, v119);
      }

      v62 = v228;
    }

    v120 = v207;
    sub_100158DBC(v106, v207, type metadata accessor for MercuryCacheMetadata);
    sub_100158E1C(v120, v224, type metadata accessor for MercuryCacheMetadata);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000D5830();
      v62 = v123;
    }

    v121 = v62[2];
    if (v121 >= v62[3] >> 1)
    {
      sub_1000D5830();
      v62 = v124;
    }

    sub_100158E7C(v120, type metadata accessor for MercuryCacheMetadata);
    sub_100158E7C(v227, type metadata accessor for MercuryCacheMetadata);
    v62[2] = v121 + 1;
    result = sub_100158DBC(v224, v62 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v121, type metadata accessor for MercuryCacheMetadata);
    v56 = v206;
  }

  v64 = v212;
  while (1)
  {
    v63 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v63 >= v190)
    {
      v122 = sub_10007B9A4(&qword_10026E7D8, &qword_1001EE2B8);
      sub_10000A7C0(v64, 1, 1, v122);
      v59 = 0;
      goto LABEL_12;
    }

    v59 = *(v56 + 8 * v63);
    ++v61;
    if (v59)
    {
      v61 = v63;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MercuryCacheDataUpdateHandler(uint64_t a1)
{
  result = qword_10026E840;
  if (!qword_10026E840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100157F14(uint64_t *a1, uint64_t a2)
{
  updated = type metadata accessor for MercuryCacheUpdateData.Success(0);
  sub_100002DDC();
  __chkstk_darwin(v5);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = *a1;
  v46 = a2;
  v14 = sub_100158604(sub_1001585E4, v45, v13);
  v15 = v14 + 8;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v14[8];
  v19 = (v16 + 63) >> 6;
  v44 = v14;

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v40 = v10;
  v41 = updated;
  v39 = v12;
  if (v18)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return v22;
    }

    v18 = v15[v23];
    ++v21;
    if (v18)
    {
      v21 = v23;
      do
      {
LABEL_8:
        sub_100158E1C(v44[7] + *(v42 + 72) * (__clz(__rbit64(v18)) | (v21 << 6)), v12, type metadata accessor for MercuryCacheUpdateData.DataKind);
        sub_100158E1C(v12, v10, type metadata accessor for MercuryCacheUpdateData.DataKind);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_100003388();
          sub_100158E7C(v12, v24);
          v47 = 0u;
          v48 = 0u;
          v49 = 0;
        }

        else
        {
          v25 = v38;
          sub_100158DBC(v10, v38, type metadata accessor for MercuryCacheUpdateData.Success);
          *(&v48 + 1) = updated;
          v49 = &off_10024FAA0;
          v26 = sub_100017E64(&v47);
          sub_100158DBC(v25, v26, type metadata accessor for MercuryCacheUpdateData.Success);
        }

        sub_100003388();
        sub_100158E7C(v27, v28);
        if (*(&v48 + 1))
        {
          sub_10003B104(&v47, v50);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100003030();
            sub_1000D5AC4();
            v22 = v35;
          }

          v29 = v22[2];
          if (v29 >= v22[3] >> 1)
          {
            sub_1000D5AC4();
            v22 = v36;
          }

          v30 = sub_100046CB8(v50, v50[3]);
          __chkstk_darwin(v30);
          v32 = &v37 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v33 + 16))(v32);
          updated = v41;
          *(&v48 + 1) = v41;
          v49 = &off_10024FAA0;
          v34 = sub_100017E64(&v47);
          sub_100158DBC(v32, v34, type metadata accessor for MercuryCacheUpdateData.Success);
          v22[2] = v29 + 1;
          sub_10003B104(&v47, &v22[5 * v29 + 4]);
          result = sub_100002C00(v50);
          v12 = v39;
          v10 = v40;
        }

        else
        {
          result = sub_10000A00C(&v47, &qword_10026E7B0, &qword_1001EE288);
        }

        v18 &= v18 - 1;
      }

      while (v18);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100158364(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007B9A4(&qword_10026E7C0, &qword_1001EE298);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = (&v18 - v8);
  v11 = *a1;
  v10 = a1[1];
  *v9 = v11;
  v9[1] = v10;
  sub_100158E1C(a2, &v18 + *(v7 + 56) - v8, type metadata accessor for MercuryCacheUpdateData.DataKind);
  v12 = *(a3 + *(type metadata accessor for MercuryCacheDataUpdateHandler(0) + 24));

  v14 = sub_1001C1D1C(v13, v12);

  v16 = sub_1001C1D1C(v15, v14);
  LOBYTE(a2) = sub_10005938C(v11, v10, v16);

  sub_10000A00C(v9, &qword_10026E7C0, &qword_1001EE298);
  return a2 & 1;
}

uint64_t sub_1001584AC(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_10007B9A4(&qword_10026E7C0, &qword_1001EE298);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = (&v18 - v8);
  v11 = *a1;
  v10 = a1[1];
  *v9 = v11;
  v9[1] = v10;
  sub_100158E1C(a2, &v18 + *(v7 + 56) - v8, type metadata accessor for MercuryCacheUpdateData.DataKind);
  v12 = *a3;

  v14 = sub_1001C1D1C(v13, v12);

  v16 = sub_1001C1D1C(v15, v14);
  LOBYTE(a2) = sub_10005938C(v11, v10, v16);

  sub_10000A00C(v9, &qword_10026E7C0, &qword_1001EE298);
  return a2 & 1;
}

unint64_t *sub_100158604(uint64_t (*a1)(void *, char *), unint64_t *a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a2 = sub_1001589C8(v12, v8, a3, v6);

      return a2;
    }
  }

  __chkstk_darwin(a1);
  v9 = (&v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1000575CC(0, v8, v9);
  v10 = sub_100158788(v9, v8, a3, v6);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a2;
}

uint64_t sub_100158788(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *))
{
  v33 = a4;
  v28 = a2;
  v29 = a1;
  updated = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  v32 = *(updated - 8);
  result = __chkstk_darwin(updated - 8);
  v30 = 0;
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v34 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_11:
    v19 = v16 | (v8 << 6);
    v20 = v34[7];
    v21 = (v34[6] + 16 * v19);
    v22 = v21[1];
    v36[0] = *v21;
    v36[1] = v22;
    v23 = v31;
    v24 = v19;
    sub_100158E1C(v20 + *(v32 + 72) * v19, v31, type metadata accessor for MercuryCacheUpdateData.DataKind);

    v25 = v37;
    v26 = v33(v36, v23);
    sub_100158E7C(v23, type metadata accessor for MercuryCacheUpdateData.DataKind);

    v37 = v25;
    if (v25)
    {
      return result;
    }

    v14 = v35;
    if (v26)
    {
      *(v29 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
        return sub_100158A58(v29, v28, v30, v34);
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_100158A58(v29, v28, v30, v34);
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v35 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1001589C8(unint64_t *result, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *))
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

    v8 = sub_100158788(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_100158A58(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  updated = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  v41 = *(updated - 8);
  v9 = __chkstk_darwin(updated - 8);
  __chkstk_darwin(v9);
  v40 = &v37 - v11;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v39 = v10;
  sub_10007B9A4(&qword_10026E7B8, &qword_1001EE290);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v39;
  v38 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v40;
    v43 = *(v41 + 72);
    sub_100158E1C(v22 + v43 * v21, v40, type metadata accessor for MercuryCacheUpdateData.DataKind);
    sub_100158DBC(v26, v17, type metadata accessor for MercuryCacheUpdateData.DataKind);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v17 = v39;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v17 = v39;
LABEL_25:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v13 + 48) + 16 * v30);
    *v35 = v25;
    v35[1] = v24;
    result = sub_100158DBC(v17, *(v13 + 56) + v30 * v43, type metadata accessor for MercuryCacheUpdateData.DataKind);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100158DBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100002DDC();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100158E1C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100002DDC();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100158E7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002DDC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100158ED4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10007B9A4(a3, a4);
  sub_100002DDC();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100158F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026AF40, &unk_1001EEAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100158FF4(uint64_t a1)
{
  sub_1000AF20C();
  if (v1 <= 0x3F)
  {
    sub_100159118(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MercuryCacheUpdateInput(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          sub_100159180(319, &qword_10026E858, &protocol descriptor for MercuryCacheStorage, 1);
          if (v5 <= 0x3F)
          {
            sub_100159180(319, &unk_10026E860, &protocol descriptor for MercuryCacheMetadataStoring, 0);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100159118(uint64_t a1)
{
  if (!qword_10026E850)
  {
    type metadata accessor for MercuryCacheMetadata(255);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_10026E850);
    }
  }
}

uint64_t sub_100159180(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1001591D8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_10015BD34();
  if (!v7)
  {
    return sub_10000A00C(&v6, &qword_10026D350, &qword_1001E6050);
  }

  sub_100002C4C(&v6, v8);
  v5[0] = sub_10015A1EC(v2);
  v5[1] = v3;
  AnyHashable.init<A>(_:)();
  sub_100011BAC(v8, v5);
  sub_1000A9FF8(v5, &v6);
  return sub_100002C00(v8);
}

uint64_t sub_100159290(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v92 = a3;
  v97 = a2;
  v6 = type metadata accessor for Date();
  sub_100002CC4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000056E8();
  v90 = (v10 - v11);
  sub_100003F08();
  __chkstk_darwin(v12);
  v88 = &v86[-v13];
  sub_100003F08();
  __chkstk_darwin(v14);
  v91 = &v86[-v15];
  sub_100003F08();
  __chkstk_darwin(v16);
  v93 = &v86[-v17];
  v18 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  v19 = sub_100003D10(v18);
  __chkstk_darwin(v19);
  sub_1000056E8();
  v96 = v20 - v21;
  sub_100003F08();
  __chkstk_darwin(v22);
  v24 = &v86[-v23];
  v25 = sub_10001CC2C();
  v26 = type metadata accessor for RetryConfiguration(v25);
  sub_100002DDC();
  __chkstk_darwin(v27);
  sub_1000056E8();
  v89 = (v28 - v29);
  sub_100003F08();
  __chkstk_darwin(v30);
  v95 = &v86[-v31];
  sub_100003F08();
  __chkstk_darwin(v32);
  v34 = &v86[-v33];
  updated = type metadata accessor for MercuryCacheUpdateData.Failure(0);
  v36 = *(updated + 28);
  v37 = type metadata accessor for MercuryCacheMetadata(0);
  v38 = *(v37 + 24);
  v98 = v8;
  v99 = v6;
  v39 = *(v8 + 24);
  v94 = v36;
  v39(v4 + v38, a1 + v36, v6);
  v40 = *(updated + 24);
  v100 = a1;
  v41 = a1 + v40;
  if (*(v41 + 32))
  {
    v101 = v37;
    v99 = v4;
    if (qword_100268768 != -1)
    {
      sub_10000C10C(&qword_100268768);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v42 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v42);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1001E5F60;
    v103 = v101;
    sub_100017E64(v102);
    sub_1000033B0();
    sub_10015BC68();
    v44 = AMSLogKey();
    if (v44)
    {
      v45 = v44;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v102);
    LogInterpolation.init(stringLiteral:)();
    v103 = updated;
    sub_100017E64(v102);
    sub_100023EBC();
    sub_10015BC68();
    static LogInterpolation.safe(_:)();
    sub_10000A00C(v102, &qword_10026D350, &qword_1001E6050);
    v63 = static os_log_type_t.info.getter();
    sub_1000036B0(v63, v43);

    sub_10000A00C(v99 + *(v101 + 28), &qword_10026E7C8, &unk_1001EE2A0);
    goto LABEL_35;
  }

  v46 = *v41;
  v47 = *(v41 + 16);
  v48 = *(v41 + 24);
  v87 = *(v41 + 8);
  v49 = *(v37 + 28);
  v50 = v4;
  sub_10015BD34();
  sub_100009EC4(v24);
  if (v51)
  {
    v92 = v46;
    sub_10000A00C(v24, &qword_10026E7C8, &unk_1001EE2A0);
    v52 = v4;
    v53 = v98;
    v54 = v99;
  }

  else
  {
    v101 = v37;
    v55 = v47;
    sub_1000054C8();
    v47 = v34;
    sub_10015BBB4();
    v53 = v98;
    v54 = v99;
    if (*v34 >= v34[1])
    {
      v92 = v46;
      sub_100006E24();
      sub_10015BC10(v34, v64);
      v52 = v50;
    }

    else
    {
      v56 = v49;
      v57 = v91;
      Date.addingTimeInterval(_:)();
      v58 = v93;
      (*(v53 + 32))(v93, v57, v54);
      if (static Date.> infix(_:_:)())
      {
        v49 = v58;
        if (qword_100268768 == -1)
        {
LABEL_12:
          sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
          v59 = type metadata accessor for LogInterpolation();
          sub_100002CFC(v59);
          v60 = sub_1000072A8();
          *(v60 + 16) = xmmword_1001E5F70;
          v103 = v101;
          sub_100017E64(v102);
          sub_1000033B0();
          sub_10015BC68();
          v61 = AMSLogKey();
          if (v61)
          {
            v62 = v61;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          sub_100015C20();

          sub_100002C00(v102);
          LogInterpolation.init(stringLiteral:)();
          v84 = static os_log_type_t.info.getter();
          sub_1000036B0(v84, v60);

          (*(v98 + 8))(v49, v99);
          sub_100006E24();
          return sub_10015BC10(v47, v85);
        }

LABEL_38:
        sub_10000C10C(&qword_100268768);
        goto LABEL_12;
      }

      v92 = v46;
      (*(v53 + 8))(v58, v54);
      sub_100006E24();
      sub_10015BC10(v47, v65);
      v52 = v50;
      v49 = v56;
    }

    v47 = v55;
    v37 = v101;
  }

  v66 = v96;
  if (v97)
  {
    sub_10015BD34();
    sub_100009EC4(v66);
    if (v51)
    {
      sub_10000A00C(v66, &qword_10026E7C8, &unk_1001EE2A0);
      sub_10001CDB8();
      v67 = v90;
      v68(v90);
      v69 = 0;
      if ((v87 & 1) == 0)
      {
        v48 = *&v92;
      }
    }

    else
    {
      sub_1000054C8();
      v74 = v89;
      sub_10015BBB4();
      v69 = *v74 + 1;
      if (__OFADD__(*v74, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_10001CDB8();
      v67 = v88;
      v75(v88);
      if (v87)
      {
        v48 = v48 * exp2(v69);
      }

      else
      {
        v48 = *&v92;
      }

      sub_100006E24();
      sub_10015BC10(v74, v78);
    }

    v79 = v95;
    *v95 = v69;
    v79[1] = v47;
    *(v79 + 2) = v48;
    (*(v53 + 32))(v79 + *(v26 + 28), v67, v54);
    sub_10000A00C(&v49[v52], &qword_10026E7C8, &unk_1001EE2A0);
    sub_1000054C8();
    sub_10015BBB4();
LABEL_35:
    sub_100003E6C();
    return sub_10000A7C0(v80, v81, v82, v83);
  }

  if (qword_100268768 != -1)
  {
    sub_10000C10C(&qword_100268768);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v70 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v70);
  v71 = sub_1000072A8();
  *(v71 + 16) = xmmword_1001E5F70;
  v103 = v37;
  sub_100017E64(v102);
  sub_1000033B0();
  sub_10015BC68();
  v72 = AMSLogKey();
  if (v72)
  {
    v73 = v72;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100015C20();

  sub_100002C00(v102);
  LogInterpolation.init(stringLiteral:)();
  v76 = static os_log_type_t.info.getter();
  sub_1000036B0(v76, v71);
}

uint64_t sub_100159BE4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  updated = type metadata accessor for MercuryCacheUpdateData.Success(0);
  sub_100002DDC();
  __chkstk_darwin(v3);
  sub_100002DEC();
  v6 = (v5 - v4);
  v7 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  sub_100003D10(v7);
  sub_100004E78();
  __chkstk_darwin(v8);
  v70 = (&v65 - v9);
  v10 = type metadata accessor for Date();
  sub_100002CC4();
  v72 = v11;
  __chkstk_darwin(v12);
  sub_1000056E8();
  v68 = (v13 - v14);
  sub_100003F08();
  v16 = __chkstk_darwin(v15);
  v18 = &v65 - v17;
  __chkstk_darwin(v16);
  v20 = &v65 - v19;
  v21 = sub_10001CC2C();
  v22 = type metadata accessor for MercuryCacheUpdateData.Failure(v21);
  sub_100002DDC();
  __chkstk_darwin(v23);
  sub_1000056E8();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  v29 = &v65 - v28;
  type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  sub_100002DDC();
  __chkstk_darwin(v30);
  sub_100002DEC();
  sub_10015BC68();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v65 = a1;
    sub_10015BBB4();
    v31 = *(v29 + 1);
    v66 = *v29;
    v67 = v20;
    v32 = *(v72 + 16);
    v32(v20, &v29[*(v22 + 20)], v10);
    v33 = &v29[*(v22 + 28)];
    updated = v18;
    v32(v18, v33, v10);
    sub_100023EBC();
    sub_10015BC68();
    v34 = v26 + *(v22 + 24);
    if (*(v34 + 32))
    {

      sub_100007C3C();
      sub_10015BC10(v65, v35);
      sub_100006598();
      sub_10015BC10(v26, v36);
      sub_10015BC10(v29, v22);
      type metadata accessor for RetryConfiguration(0);
      v37 = v70;
      sub_100004798();
      sub_10000A7C0(v38, v39, v40, v41);
      v43 = v71;
      v42 = v72;
    }

    else
    {
      v57 = *(v34 + 16);
      if (*(v34 + 8))
      {
        v34 += 24;
      }

      v58 = *v34;
      v59 = v68;
      v32(v68, (v26 + *(v22 + 28)), v10);

      sub_100007C3C();
      sub_10015BC10(v65, v60);
      sub_100006598();
      sub_10015BC10(v26, v61);
      sub_10015BC10(v29, v22);
      v37 = v70;
      *v70 = 0;
      *(v37 + 8) = v57;
      *(v37 + 16) = v58;
      v62 = type metadata accessor for RetryConfiguration(0);
      v42 = v72;
      (*(v72 + 32))(v37 + *(v62 + 28), v59, v10);
      sub_10000A7C0(v37, 0, 1, v62);
      v43 = v71;
    }

    *v43 = v66;
    *(v43 + 1) = v31;
    v63 = type metadata accessor for MercuryCacheMetadata(0);
    v64 = *(v42 + 32);
    v64(&v43[v63[5]], v67, v10);
    v64(&v43[v63[6]], updated, v10);
    return sub_10015BCC4(v37, &v43[v63[7]]);
  }

  else
  {
    sub_100007C3C();
    sub_10015BC10(a1, v44);
    sub_10015BBB4();
    v46 = *v6;
    v45 = *(v6 + 1);
    v47 = updated;
    v48 = *(updated + 20);
    v49 = type metadata accessor for MercuryCacheMetadata(0);
    v50 = v71;
    v51 = *(v72 + 16);
    v51(&v71[*(v49 + 20)], &v6[v48], v10);
    v51(&v50[*(v49 + 24)], &v6[*(v47 + 28)], v10);

    sub_10015BC10(v6, type metadata accessor for MercuryCacheUpdateData.Success);
    type metadata accessor for RetryConfiguration(0);
    sub_100004798();
    result = sub_10000A7C0(v52, v53, v54, v55);
    *v50 = v46;
    *(v50 + 1) = v45;
  }

  return result;
}

uint64_t sub_10015A0FC()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026E8B0 = qword_100287880;
}

uint64_t sub_10015A160()
{
  sub_100004E28();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (updated = type metadata accessor for CacheUpdateRun(0), (static Date.== infix(_:_:)()))
  {
    v5 = *(v1 + *(updated + 24)) ^ *(v0 + *(updated + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10015A1EC(char a1)
{
  result = 0x756F437972746572;
  switch(a1)
  {
    case 1:
      result = 0x797274655278616DLL;
      break;
    case 2:
      result = 0x6C65447972746572;
      break;
    case 3:
      result = 0x74616E696769726FLL;
      break;
    case 4:
      result = 0x727465527478656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10015A2B4@<X0>(uint64_t a1@<X8>)
{
  if (*v1 >= v1[1])
  {
    v3 = 1;
  }

  else
  {
    type metadata accessor for RetryConfiguration(0);
    Date.addingTimeInterval(_:)();
    v3 = 0;
  }

  v4 = type metadata accessor for Date();

  return sub_10000A7C0(a1, v3, 1, v4);
}

uint64_t sub_10015A330(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_100004E28();
  if (*(v4 + 8) != *(v5 + 8) || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  type metadata accessor for RetryConfiguration(0);

  return static Date.== infix(_:_:)();
}

void sub_10015A3B8()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v4 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v4);
  sub_100004E78();
  __chkstk_darwin(v5);
  v7 = &v38 - v6;
  sub_10001CC2C();
  v8 = type metadata accessor for Date();
  sub_100002CC4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100002DEC();
  v14 = (v13 - v12);
  v15 = type metadata accessor for RetryConfiguration(0);
  sub_100002DDC();
  __chkstk_darwin(v16);
  sub_100002DEC();
  v19 = (v18 - v17);
  v20 = sub_1001553B4(0, v1);
  if ((v21 & 1) == 0)
  {
    v22 = v20;
    v23 = sub_1001553B4(1, v1);
    if ((v24 & 1) == 0)
    {
      v25 = v23;
      v26 = sub_1001553C0(2, v1);
      if ((v27 & 1) == 0)
      {
        v39 = v26;
        sub_100155474(v1, v7, 3);
        sub_1000067A0(v7, 1, v8);
        if (!v28)
        {

          v36 = *(v10 + 32);
          v36(v14, v7, v8);
          *v19 = v22;
          v19[1] = v25;
          v19[2] = v39;
          v36(v19 + *(v15 + 28), v14, v8);
          sub_1000054C8();
          sub_10015BBB4();
          v37 = 0;
          goto LABEL_10;
        }

        sub_10000A00C(v7, &unk_100271EA0, &qword_1001E77F0);
      }
    }
  }

  if (qword_100268768 != -1)
  {
    sub_10000C10C(&qword_100268768);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v29 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v29);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1001E5F70;
  LogInterpolation.init(stringLiteral:)();
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v40 = 0xD000000000000025;
  v41 = 0x80000001001FEBE0;
  v31 = Dictionary.description.getter();
  v33 = v32;

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  v42 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v40, &qword_10026D350, &qword_1001E6050);
  v35 = static os_log_type_t.info.getter();
  sub_1000036B0(v35, v30);

  v37 = 1;
LABEL_10:
  sub_10000A7C0(v3, v37, 1, v15);
  sub_100005F14();
}

void sub_10015A76C()
{
  sub_100003D74();
  v1 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v1);
  sub_100004E78();
  __chkstk_darwin(v2);
  v4 = &v15 - v3;
  sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E6580;
  *&v15 = 0x756F437972746572;
  *(&v15 + 1) = 0xEA0000000000746ELL;
  sub_100005D64();
  v6 = *v0;
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = v6;
  strcpy(&v15, "maxRetryCount");
  HIWORD(v15) = -4864;
  sub_100005D64();
  v7 = *(v0 + 1);
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v7;
  *&v15 = 0x6C65447972746572;
  *(&v15 + 1) = 0xEA00000000007961;
  sub_100005D64();
  v8 = *(v0 + 2);
  *(inited + 240) = &type metadata for Double;
  *(inited + 216) = v8;
  *&v15 = 0x74616E696769726FLL;
  *(&v15 + 1) = 0xEF657461446E6F69;
  sub_100005D64();
  v9 = *(type metadata accessor for RetryConfiguration(0) + 28);
  v10 = type metadata accessor for Date();
  *(inited + 312) = v10;
  v11 = sub_100017E64((inited + 288));
  v12 = *(v10 - 8);
  (*(v12 + 16))(v11, &v0[v9], v10);
  v17 = Dictionary.init(dictionaryLiteral:)();
  sub_10015A2B4(v4);
  sub_1000067A0(v4, 1, v10);
  if (v13)
  {
    sub_10000A00C(v4, &unk_100271EA0, &qword_1001E77F0);
    v15 = 0u;
    v16 = 0u;
  }

  else
  {
    *(&v16 + 1) = v10;
    v14 = sub_100017E64(&v15);
    (*(v12 + 32))(v14, v4, v10);
  }

  sub_1001591D8(&v15, 4);
  sub_10000A00C(&v15, &qword_10026D350, &qword_1001E6050);
  sub_100005F14();
}

void sub_10015AA14()
{
  sub_100003D74();
  v1 = v0;
  v42 = v2;
  v3 = type metadata accessor for Date();
  sub_100002CC4();
  v41 = v4;
  __chkstk_darwin(v5);
  sub_1000056E8();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  sub_100003D10(v12);
  sub_100004E78();
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  v16 = sub_10001CC2C();
  v17 = type metadata accessor for RetryConfiguration(v16);
  sub_100002DDC();
  __chkstk_darwin(v18);
  sub_100002DEC();
  v21 = (v20 - v19);
  v22 = type metadata accessor for MercuryCacheMetadata(0);
  sub_10015BD34();
  sub_1000067A0(v15, 1, v17);
  if (v23)
  {
    sub_10000A00C(v15, &qword_10026E7C8, &unk_1001EE2A0);
    v24 = *(v22 + 20);
    sub_100092A84();
    if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1000054C8();
    sub_10015BBB4();
    if (*v21 < v21[1])
    {
      Date.addingTimeInterval(_:)();
      sub_100006E24();
      sub_10015BC10(v21, v29);
      v30 = *(v41 + 32);
      v30(v11, v8, v3);
      v32 = *v1;
      v31 = *(v1 + 1);
      updated = type metadata accessor for CacheUpdateRun(0);
      v34 = v42;
      v30(v42 + *(updated + 20), v11, v3);
      *v34 = v32;
      v34[1] = v31;
      *(v34 + *(updated + 24)) = 1;
      v35 = v34;
LABEL_9:
      sub_10000A7C0(v35, 0, 1, updated);

      goto LABEL_10;
    }

    v24 = *(v22 + 20);
    sub_100092A84();
    v36 = dispatch thunk of static Comparable.< infix(_:_:)();
    sub_100006E24();
    sub_10015BC10(v21, v37);
    if ((v36 & 1) == 0)
    {
LABEL_8:
      v39 = *v1;
      v38 = *(v1 + 1);
      updated = type metadata accessor for CacheUpdateRun(0);
      v40 = v42;
      (*(v41 + 16))(v42 + *(updated + 20), &v1[v24], v3);
      *v40 = v39;
      v40[1] = v38;
      *(v40 + *(updated + 24)) = 0;
      v35 = v40;
      goto LABEL_9;
    }
  }

  type metadata accessor for CacheUpdateRun(0);
  sub_100004798();
  sub_10000A7C0(v25, v26, v27, v28);
LABEL_10:
  sub_100005F14();
}

void sub_10015AD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100003D74();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for RetryConfiguration(0);
  sub_100002DDC();
  __chkstk_darwin(v27);
  sub_100002DEC();
  v30 = v29 - v28;
  v31 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  sub_100003D10(v31);
  sub_100004E78();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  v35 = sub_10007B9A4(&qword_10026EA98, &qword_1001F1EC0);
  sub_100002DDC();
  sub_100004E78();
  __chkstk_darwin(v36);
  v38 = &a9 - v37;
  v39 = *v25 == *v23 && v25[1] == v23[1];
  if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for MercuryCacheMetadata(0);
    if (static Date.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
    {
      v40 = *(v35 + 48);
      sub_10015BD34();
      sub_10015BD34();
      sub_1000067A0(v38, 1, v26);
      if (!v39)
      {
        sub_10015BD34();
        sub_1000067A0(&v38[v40], 1, v26);
        if (!v41)
        {
          sub_1000054C8();
          sub_10015BBB4();
          if (*v34 == *v30 && *(v34 + 1) == *(v30 + 8) && *(v34 + 2) == *(v30 + 16))
          {
            static Date.== infix(_:_:)();
            sub_10015BC10(v30, type metadata accessor for RetryConfiguration);
            sub_10015BC10(v34, type metadata accessor for RetryConfiguration);
            sub_10000A00C(v38, &qword_10026E7C8, &unk_1001EE2A0);
            goto LABEL_23;
          }

          sub_10015BC10(v30, type metadata accessor for RetryConfiguration);
          sub_10015BC10(v34, type metadata accessor for RetryConfiguration);
          v43 = &qword_10026E7C8;
          v44 = &unk_1001EE2A0;
LABEL_22:
          sub_10000A00C(v38, v43, v44);
          goto LABEL_23;
        }

        sub_100006E24();
        sub_10015BC10(v34, v42);
LABEL_16:
        v43 = &qword_10026EA98;
        v44 = &qword_1001F1EC0;
        goto LABEL_22;
      }

      sub_1000067A0(&v38[v40], 1, v26);
      if (!v39)
      {
        goto LABEL_16;
      }

      sub_10000A00C(v38, &qword_10026E7C8, &unk_1001EE2A0);
    }
  }

LABEL_23:
  sub_100005F14();
}

void sub_10015B034()
{
  sub_100003D74();
  v1 = v0;
  v2 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  sub_100003D10(v2);
  sub_100004E78();
  __chkstk_darwin(v3);
  v68 = &v65 - v4;
  v5 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v6 = sub_100003D10(v5);
  __chkstk_darwin(v6);
  sub_1000056E8();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v65 - v11;
  v13 = type metadata accessor for Date();
  sub_100002CC4();
  v71 = v14;
  __chkstk_darwin(v15);
  sub_1000056E8();
  v69 = (v16 - v17);
  sub_100003F08();
  __chkstk_darwin(v18);
  v70 = &v65 - v19;
  v20 = type metadata accessor for MercuryCacheMetadata(0);
  sub_100002DDC();
  __chkstk_darwin(v21);
  sub_100002DEC();
  v24 = (v23 - v22);
  v26 = *(v25 + 28);
  type metadata accessor for RetryConfiguration(0);
  sub_100004798();
  v67 = v27;
  sub_10000A7C0(v28, v29, v30, v27);
  sub_10000C45C();
  v72 = v31;
  v73 = v32;
  sub_10000A8CC();
  AnyHashable.init<A>(_:)();
  sub_100011ADC();
  sub_10000E1E8(v74);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  if ((swift_dynamicCast() & 1) != 0 && (v33 = v76) != 0)
  {
    v66 = v75;
    sub_100017FA8();
    v72 = v34;
    v73 = v35;
    sub_10000A8CC();
    AnyHashable.init<A>(_:)();
    sub_100011ADC();
    sub_10000E1E8(v74);
    swift_dynamicCast();
    sub_100003E6C();
    sub_10000A7C0(v36, v37, v38, v39);
    sub_100009EC4(v12);
    if (v51)
    {

      sub_10000A00C(v12, &unk_100271EA0, &qword_1001E77F0);
    }

    else
    {
      v65 = v1;
      v43 = v12;
      v44 = *(v71 + 32);
      v44(v70, v43, v13);
      sub_10000B048();
      v72 = v45;
      v73 = v46;
      sub_10000A8CC();
      AnyHashable.init<A>(_:)();
      sub_100011ADC();
      sub_10000E1E8(v74);
      swift_dynamicCast();
      sub_100003E6C();
      sub_10000A7C0(v47, v48, v49, v50);
      sub_100009EC4(v9);
      if (!v51)
      {
        v44(v69, v9, v13);
        *v24 = v66;
        *(v24 + 1) = v33;
        v53 = v70;
        v52 = v71;
        v54 = *(v71 + 16);
        v54(&v24[*(v20 + 20)], v70, v13);
        v54(&v24[*(v20 + 24)], v69, v13);
        sub_100017DE4();
        v72 = v56;
        v73 = v55;
        sub_10000A8CC();
        AnyHashable.init<A>(_:)();
        sub_100011ADC();

        sub_10000E1E8(v74);
        sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
        v57 = swift_dynamicCast();
        if (v57)
        {
          v58 = v65;
          v59 = v68;
          if (v75)
          {
            sub_10015A3B8();
            v60 = *(v52 + 8);
            v60(v69, v13);
            v60(v53, v13);
LABEL_17:
            sub_10015BD90(v59, &v24[v26]);
            sub_1000033B0();
            sub_10015BC68();
            sub_10000A7C0(v58, 0, 1, v20);
            sub_10015BC10(v24, type metadata accessor for MercuryCacheMetadata);
            goto LABEL_8;
          }
        }

        else
        {
          v58 = v65;
          v59 = v68;
        }

        v61 = *(v52 + 8);
        v61(v69, v13);
        v61(v53, v13);
        sub_100004798();
        sub_10000A7C0(v62, v63, v64, v67);
        goto LABEL_17;
      }

      (*(v71 + 8))(v70, v13);

      sub_10000A00C(v9, &unk_100271EA0, &qword_1001E77F0);
    }
  }

  else
  {
  }

  sub_10000A00C(&v24[v26], &qword_10026E7C8, &unk_1001EE2A0);
  sub_100004798();
  sub_10000A7C0(v40, v41, v42, v20);
LABEL_8:
  sub_100005F14();
}

void sub_10015B5AC()
{
  sub_100003D74();
  v1 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  sub_100003D10(v1);
  sub_100004E78();
  __chkstk_darwin(v2);
  v4 = &v33[-1] - v3;
  Dictionary.init(dictionaryLiteral:)();
  v6 = *v0;
  v5 = v0[1];
  v40 = &type metadata for String;
  v37 = v6;
  v38 = v5;
  sub_10000C45C();
  *&v34[0] = v7;
  *(&v34[0] + 1) = v8;

  sub_10000AA50();
  sub_100011BAC(&v37, v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100019D14(isUniquelyReferenced_nonNull_native);
  sub_10000E1E8(&v35);
  sub_100002C00(&v37);
  v10 = type metadata accessor for MercuryCacheMetadata(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Date();
  v40 = v12;
  v13 = sub_100017E64(&v37);
  v14 = *(*(v12 - 8) + 16);
  v14(v13, v0 + v11, v12);
  sub_100017FA8();
  *&v34[0] = v15;
  *(&v34[0] + 1) = v16;
  sub_10000AA50();
  sub_100011BAC(&v37, v34);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100019D14(v17);
  sub_10000E1E8(&v35);
  sub_100002C00(&v37);
  v18 = *(v10 + 24);
  v40 = v12;
  v19 = sub_100017E64(&v37);
  v14(v19, v0 + v18, v12);
  sub_10000B048();
  *&v34[0] = v20;
  *(&v34[0] + 1) = v21;
  sub_10000AA50();
  sub_100011BAC(&v37, v34);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_100019D14(v22);
  v23 = v33[0];
  sub_10000E1E8(&v35);
  sub_100002C00(&v37);
  sub_10015BD34();
  v24 = type metadata accessor for RetryConfiguration(0);
  sub_1000067A0(v4, 1, v24);
  if (v25)
  {
    sub_10000A00C(v4, &qword_10026E7C8, &unk_1001EE2A0);
    v27 = 0;
    v29 = 0;
    v38 = 0;
    v39 = 0;
  }

  else
  {
    sub_10015A76C();
    v27 = v26;
    sub_100006E24();
    sub_10015BC10(v4, v28);
    v29 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  }

  v37 = v27;
  v40 = v29;
  sub_10015BD34();
  if (v36)
  {
    sub_100002C4C(&v35, v34);
    sub_100017DE4();
    v33[0] = v31;
    v33[1] = v30;
    AnyHashable.init<A>(_:)();
    sub_100011BAC(v34, v33);
    swift_isUniquelyReferenced_nonNull_native();
    v32 = v23;
    sub_1000AC178(v33, &v35);
    sub_10000E1E8(&v35);
    sub_100002C00(v34);
  }

  else
  {
    sub_10000A00C(&v35, &qword_10026D350, &qword_1001E6050);
  }

  sub_10000A00C(&v37, &qword_10026D350, &qword_1001E6050);
  sub_100005F14();
}

BOOL sub_10015B904(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CacheUpdateRun(0);
  type metadata accessor for Date();
  sub_100092A84();
  return (dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0;
}

uint64_t sub_10015B97C@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_10007B9A4(&qword_10026E8B8, &unk_1001EE2F0);
  sub_100003D10(v4);
  sub_100004E78();
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  updated = type metadata accessor for CacheUpdateRun(0);
  sub_100002DDC();
  __chkstk_darwin(v9);
  sub_100002DEC();
  v12 = v11 - v10;
  sub_10015AA14();
  if (sub_100009F34(v7, 1, updated) == 1)
  {
    sub_10000A00C(v7, &qword_10026E8B8, &unk_1001EE2F0);
LABEL_6:
    sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
    sub_100004798();
    return sub_10000A7C0(v16, v17, v18, v19);
  }

  sub_10015BBB4();
  v13 = *(updated + 20);
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    sub_1000080E8();
    goto LABEL_6;
  }

  v14 = *(sub_10007B9A4(&qword_100269FE0, &unk_1001E7550) + 48);
  sub_1000033B0();
  sub_10015BC68();
  type metadata accessor for Date();
  sub_100002DDC();
  (*(v15 + 16))(a3 + v14, v12 + v13);
  sub_1000080E8();
  sub_100003E6C();
  return sub_10000A7C0(v16, v17, v18, v19);
}

uint64_t sub_10015BBB4()
{
  sub_100004E28();
  v2(0);
  sub_100002DDC();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_10015BC10(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002DDC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10015BC68()
{
  sub_100004E28();
  v2(0);
  sub_100002DDC();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_10015BCC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015BD34()
{
  sub_100004E28();
  sub_10007B9A4(v2, v3);
  sub_100002DDC();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_10015BD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015BE28(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10015BEDC(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CacheUpdateRun.RunType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_10015C064(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_10015C0F8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10015C0F8(uint64_t a1)
{
  if (!qword_10026EA58)
  {
    type metadata accessor for RetryConfiguration(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10026EA58);
    }
  }
}

unint64_t sub_10015C154()
{
  result = qword_10026EA90;
  if (!qword_10026EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026EA90);
  }

  return result;
}

uint64_t sub_10015C1A8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_10015D8D8(a1, sub_10015DCB4, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_10015C22C()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026EAA0 = qword_100287880;
}

uint64_t sub_10015C290()
{
  v0 = sub_10015D894();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v0;
  v5 = &off_10024ECA0;
  *&v3 = sub_10015C310();
  type metadata accessor for MercuryCacheMetadataStore();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_10003B104(&v3, v1 + 112);
  qword_1002878A8 = v1;
  return result;
}

id sub_10015C310()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithDomain:v1];

  return v2;
}

void *sub_10015C384(void *a1)
{
  v2 = sub_10007B9A4(&qword_10026EBA8, &unk_1001EE500);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for MercuryCacheMetadata(0);
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 stringValue];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = sub_10015D5F8(v8, v10);

  sub_100004E5C();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  while (1)
  {
    v20 = v18;
    if (!v14)
    {
      break;
    }

LABEL_6:
    v14 &= v14 - 1;

    sub_10015B034();
    if (sub_100009F34(v4, 1, v5) == 1)
    {
      result = sub_10000A064(v4, &qword_10026EBA8, &unk_1001EE500);
    }

    else
    {
      sub_10015DCF8(v4, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000D5830();
        v19 = v23;
      }

      v21 = v19[2];
      v22 = v21 + 1;
      if (v21 >= v19[3] >> 1)
      {
        v27 = v21 + 1;
        v24 = v21;
        sub_1000D5830();
        v21 = v24;
        v22 = v27;
        v19 = v25;
      }

      v19[2] = v22;
      result = sub_10015DCF8(v29, v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v21);
    }
  }

  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      return v19;
    }

    v14 = *(v11 + 64 + 8 * v18);
    ++v20;
    if (v14)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10015C64C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for MercuryCacheMetadata(0);
  sub_100002CFC(v4);
  v3[5] = v5;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10015C710, v2, 0);
}

uint64_t sub_10015C710()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v28 = *(v0 + 56);
    v3 = *(v0 + 40);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = _swiftEmptyDictionarySingleton;
    v6 = *(v3 + 72);
    while (1)
    {
      v29 = v4;
      v30 = v2;
      v8 = *(v0 + 48);
      v7 = *(v0 + 56);
      sub_10015DB84(v4, v7);
      v9 = *v7;
      v10 = *(v28 + 8);
      sub_10015DB84(v7, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v5;
      result = sub_100012A94();
      v14 = v5[2];
      v15 = (v13 & 1) == 0;
      v16 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      v17 = result;
      v18 = v13;
      sub_10007B9A4(&qword_10026EBA0, &qword_1001EE4F8);
      v19 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v16);
      v5 = v31;
      if (v19)
      {
        v20 = sub_100012A94();
        if ((v18 & 1) != (v21 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v17 = v20;
      }

      v22 = *(v0 + 48);
      if (v18)
      {
        sub_10015DD5C(v22, v31[7] + v17 * v6);
      }

      else
      {
        v31[(v17 >> 6) + 8] |= 1 << v17;
        v23 = (v31[6] + 16 * v17);
        *v23 = v9;
        v23[1] = v10;
        result = sub_10015DCF8(v22, v31[7] + v17 * v6);
        v24 = v31[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_21;
        }

        v31[2] = v26;
      }

      sub_10015DC58(*(v0 + 56));
      v4 = v29 + v6;
      v2 = v30 - 1;
      if (v30 == 1)
      {
        goto LABEL_14;
      }
    }
  }

  v5 = _swiftEmptyDictionarySingleton;
LABEL_14:
  sub_10015C96C(v5, *(v0 + 24));

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10015C96C(uint64_t a1, void *a2)
{
  v5 = sub_10007B9A4(&qword_10026E7D8, &qword_1001EE2B8);
  v6 = __chkstk_darwin(v5);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (&v55 - v9);
  v57 = a2;
  v11 = [a2 stringValue];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v58 = v2;
  v56 = sub_10015D5F8(v12, v14);

  v15 = a1 + 64;
  sub_100004E5C();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v64 = a1;

  v21 = 0;
  v22 = _swiftEmptyDictionarySingleton;
  v59 = v20;
  v60 = a1 + 64;
  v62 = v8;
  v63 = v5;
  v61 = v10;
  if (v18)
  {
LABEL_6:
    while (1)
    {
      v24 = __clz(__rbit64(v18)) | (v21 << 6);
      v25 = *(v64 + 56);
      v26 = (*(v64 + 48) + 16 * v24);
      v28 = *v26;
      v27 = v26[1];
      v29 = type metadata accessor for MercuryCacheMetadata(0);
      sub_10015DB84(v25 + *(*(v29 - 8) + 72) * v24, v10 + *(v5 + 48));
      *v10 = v28;
      v10[1] = v27;
      sub_10015DBE8(v10, v8);
      v31 = *v8;
      v30 = v8[1];

      sub_10015B5AC();
      v33 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v22;
      v35 = sub_100012A94();
      v37 = v22[2];
      v38 = (v36 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        break;
      }

      v40 = v35;
      v41 = v36;
      sub_10007B9A4(&qword_10026EB98, &qword_1001EE4F0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39))
      {
        v42 = sub_100012A94();
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_20;
        }

        v40 = v42;
      }

      v22 = v65;
      if (v41)
      {
        *(v65[7] + 8 * v40) = v33;
      }

      else
      {
        v65[(v40 >> 6) + 8] |= 1 << v40;
        v44 = (v22[6] + 16 * v40);
        *v44 = v31;
        v44[1] = v30;
        *(v22[7] + 8 * v40) = v33;
        v45 = v22[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_19;
        }

        v22[2] = v47;
      }

      v18 &= v18 - 1;
      v5 = v63;
      v48 = *(v63 + 48);
      v10 = v61;
      sub_10000A064(v61, &qword_10026E7D8, &qword_1001EE2B8);
      v8 = v62;
      sub_10015DC58(v62 + v48);
      v20 = v59;
      v15 = v60;
      if (!v18)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {

        v49 = sub_10015C1A8(v22, v56);
        v50 = [v57 stringValue];
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        sub_10015D1DC(v49, v51, v53);
      }

      v18 = *(v15 + 8 * v23);
      ++v21;
      if (v18)
      {
        v21 = v23;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10015CD10(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_10015CD30, v1, 0);
}

uint64_t sub_10015CD30()
{
  if (qword_100268770 != -1)
  {
    sub_100006E3C(&qword_100268770);
  }

  v1 = *(v0 + 64);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F70;
  *(v0 + 40) = type metadata accessor for MercuryCacheMetadataStore();
  *(v0 + 16) = v1;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 16));
  _StringGuts.grow(_:)(30);

  v8 = [v6 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = 0xD00000000000001CLL;
  *(v0 + 24) = 0x80000001001FEC80;
  static LogInterpolation.sensitive(_:)();
  sub_10000A064(v0 + 16, &qword_10026D350, &qword_1001E6050);
  v13 = static os_log_type_t.info.getter();
  sub_1000036B0(v13, v3);

  sub_100003CA8(v7 + 14, v7[17]);
  v14 = sub_10000BA94();
  v15(v14);
  if (v3)
  {

    goto LABEL_7;
  }

  if (!*(v0 + 40))
  {
    sub_10000A064(v0 + 16, &qword_10026D350, &qword_1001E6050);
    goto LABEL_7;
  }

  sub_10007B9A4(&qword_10026EB90, &qword_1001EE4D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_10007B9A4(&qword_10026E7E0, &qword_1001EEA50);
    v16 = Dictionary.init(dictionaryLiteral:)();
    goto LABEL_8;
  }

  v16 = *(v0 + 48);
LABEL_8:
  v17 = [*(v0 + 56) stringValue];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100012A94();
  if (v18)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v16 + 24);
    sub_10007B9A4(&qword_10026AF50, &unk_1001EE4E0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v20);

    sub_10007B9A4(&qword_10026E7E0, &qword_1001EEA50);
    _NativeDictionary._delete(at:)();
  }

  v21 = v7[17];
  v22 = v7[18];
  sub_100003CA8(v7 + 14, v21);
  *(v0 + 40) = sub_10007B9A4(&qword_10026EB90, &qword_1001EE4D8);
  *(v0 + 16) = v16;
  (*(v22 + 8))(v0 + 16, 0xD00000000000001ELL, 0x80000001001FEC40, v21, v22);
  sub_100002C00((v0 + 16));
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10015D1DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v19._countAndFlagsBits = a2;
  v19._object = a3;
  if (qword_100268770 != -1)
  {
    sub_100006E3C(&qword_100268770);
  }

  v5 = qword_10026EAA0;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F60;
  v23 = type metadata accessor for MercuryCacheMetadataStore();
  v21 = v3;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v21);
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v21 = 0xD00000000000001CLL;
  v22 = 0x80000001001FEC60;
  String.append(_:)(v19);
  v23 = &type metadata for String;
  static LogInterpolation.sensitive(_:)();
  sub_10000A064(&v21, &qword_10026D350, &qword_1001E6050);
  v21 = 0x203A68746977;
  v22 = 0xE600000000000000;
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v10._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v10);

  v23 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v21, &qword_10026D350, &qword_1001E6050);
  v11 = static os_log_type_t.info.getter();
  sub_1000036B0(v11, v7);

  sub_100003CA8(v3 + 14, v3[17]);
  v12 = sub_10000BA94();
  v13(v12);
  if (v5)
  {
  }

  else if (v23)
  {
    sub_10007B9A4(&qword_10026EB90, &qword_1001EE4D8);
    if (swift_dynamicCast())
    {
      v14 = v20;
      goto LABEL_8;
    }
  }

  else
  {
    sub_10000A064(&v21, &qword_10026D350, &qword_1001E6050);
  }

  sub_10007B9A4(&qword_10026E7E0, &qword_1001EEA50);
  v14 = Dictionary.init(dictionaryLiteral:)();
LABEL_8:

  swift_isUniquelyReferenced_nonNull_native();
  v21 = v14;
  sub_1000ACAF8();
  v15 = v21;
  v16 = v4[17];
  v17 = v4[18];
  sub_100003CA8(v4 + 14, v16);
  v23 = sub_10007B9A4(&qword_10026EB90, &qword_1001EE4D8);
  v21 = v15;
  (*(v17 + 8))(&v21, 0xD00000000000001ELL, 0x80000001001FEC40, v16, v17);
  return sub_100002C00(&v21);
}

uint64_t sub_10015D5F8(uint64_t a1, uint64_t a2)
{
  sub_100003CA8((v2 + 112), *(v2 + 136));
  v5 = sub_10000BA94();
  v6(v5);
  if (v3)
  {

    goto LABEL_11;
  }

  if (!v10)
  {
    v8 = v9;
LABEL_10:
    sub_10000A064(v8, &qword_10026D350, &qword_1001E6050);
    goto LABEL_11;
  }

  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v9, v11, &v11);

  sub_10000E1E8(v9);
  if (!v12)
  {
    v8 = &v11;
    goto LABEL_10;
  }

  sub_10007B9A4(&qword_10026E7E0, &qword_1001EEA50);
  if (swift_dynamicCast())
  {
    return a1;
  }

LABEL_11:
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10015D7BC()
{
  sub_100002C00((v0 + 112));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10015D818(uint64_t a1)
{
  result = sub_10015D840();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10015D840()
{
  result = qword_10026EB80;
  if (!qword_10026EB80)
  {
    type metadata accessor for MercuryCacheMetadataStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026EB80);
  }

  return result;
}

unint64_t sub_10015D894()
{
  result = qword_10026EB88;
  if (!qword_10026EB88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026EB88);
  }

  return result;
}

uint64_t sub_10015D8D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v66 = a5;
  v7 = a1;
  sub_1001CAF10(&v58);
  v8 = v59;
  v9 = v61;
  v10 = v62;
  v48 = v63;
  v49 = v58;
  v50 = v64;
  v43 = v60;
  v11 = (v60 + 64) >> 6;
  v45 = v7;

  v44 = a3;

  v47 = v8;
  if (v10)
  {
    while (1)
    {
      HIDWORD(v51) = a4;
      v12 = v9;
LABEL_8:
      v14 = __clz(__rbit64(v10)) | (v12 << 6);
      v15 = (*(v49 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(v49 + 56) + 8 * v14);
      v55 = *v15;
      v56 = v16;
      v57 = v17;

      v48(&v52, &v55);

      v18 = v52;
      v19 = v53;
      v20 = v54;
      v21 = *v66;
      v29 = sub_100012A94();
      v30 = v21[2];
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (v21[3] >= v32)
      {
        if ((v51 & 0x100000000) == 0)
        {
          sub_10007B9A4(&qword_10026EB98, &qword_1001EE4F0);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        sub_1001C6778(v32, BYTE4(v51) & 1, v23, v24, v25, v26, v27, v28, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
        v34 = sub_100012A94();
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_24;
        }

        v29 = v34;
      }

      v10 &= v10 - 1;
      v36 = *v66;
      if (v33)
      {

        *(v36[7] + 8 * v29) = v20;
      }

      else
      {
        v36[(v29 >> 6) + 8] |= 1 << v29;
        v37 = (v36[6] + 16 * v29);
        *v37 = v18;
        v37[1] = v19;
        *(v36[7] + 8 * v29) = v20;
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_23;
        }

        v36[2] = v40;
      }

      a4 = 1;
      v9 = v12;
      v8 = v47;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v9;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        sub_10004EB70(v49);
      }

      v10 = *(v8 + 8 * v12);
      ++v13;
      if (v10)
      {
        HIDWORD(v51) = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10015DB84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MercuryCacheMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015DBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026E7D8, &qword_1001EE2B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015DC58(uint64_t a1)
{
  v2 = type metadata accessor for MercuryCacheMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10015DCB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001CB0F0(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_10015DCF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MercuryCacheMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015DD5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MercuryCacheMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10015DDC0(void *a1)
{
  v1 = [a1 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 95;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  return 0xD00000000000001ELL;
}

uint64_t sub_10015DE78()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026EBB0 = qword_100287880;
}

uint64_t sub_10015DEFC()
{
  if (qword_100268780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 288);
  *(v0 + 296) = qword_10026EBB0;
  *(v0 + 304) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = *(type metadata accessor for LogInterpolation() - 8);
  *(v0 + 312) = *(v2 + 72);
  *(v0 + 60) = *(v2 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F60;
  v4 = *(v1 + 24);
  *(v0 + 320) = v4;
  v5 = *(v1 + 32);
  *(v0 + 328) = v5;
  v6 = *(v1 + 40);
  *(v0 + 57) = v6;
  *(v0 + 216) = *(v1 + 8);
  *(v0 + 88) = &unk_10024F910;
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  v8 = *(v1 + 25);
  v9 = *(v1 + 16);
  v7[1] = *v1;
  v7[2] = v9;
  *(v7 + 41) = v8;
  sub_100027D8C(v0 + 216, v0 + 232);

  v10 = v4;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = *(v0 + 288);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 64));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 248) = 0;
  *(v0 + 256) = 0xE000000000000000;
  v14._countAndFlagsBits = 0x646F6D2068746977;
  v14._object = 0xEB00000000206C65;
  String.append(_:)(v14);
  v15 = *(v13 + 16);
  *(v0 + 16) = *v13;
  *(v0 + 32) = v15;
  *(v0 + 40) = v10;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  _print_unlocked<A, B>(_:_:)();
  v16 = *(v0 + 248);
  v17 = *(v0 + 256);
  *(v0 + 120) = &type metadata for String;
  *(v0 + 96) = v16;
  *(v0 + 104) = v17;
  static LogInterpolation.sensitive(_:)();
  sub_100002C5C(v0 + 96);
  v18 = static os_log_type_t.info.getter();
  sub_1000036B0(v18, v3);

  if (qword_100268798 != -1)
  {
    swift_once();
  }

  v19 = qword_1002878B0;
  *(v0 + 336) = qword_1002878B0;
  v20 = qword_100268778;
  v21 = v10;
  if (v20 != -1)
  {
    swift_once();
  }

  *(v0 + 344) = qword_1002878A8;
  type metadata accessor for MercuryCacheDatabase();
  sub_10014D878();
  *(v0 + 352) = v22;
  sub_100042428();
  *(v0 + 360) = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  type metadata accessor for MercuryCacheUpdateStateManager();
  v23 = swift_allocObject();
  *(v0 + 368) = v23;
  swift_defaultActor_initialize();
  *(v23 + 112) = &_swiftEmptySetSingleton;
  type metadata accessor for DynamicActivityTaskScheduler();
  *(v0 + 376) = swift_allocObject();

  return _swift_task_switch(sub_10015E318, v19, 0);
}

uint64_t sub_10015E44C()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_10015E5C4;
  }

  else
  {
    v2 = sub_10015E560;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015E560()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015E5C4()
{
  v1 = v0[40];
  v2 = v0[36];
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F70;
  v0[19] = &unk_10024F910;
  v4 = swift_allocObject();
  v0[16] = v4;
  v5 = *(v2 + 25);
  v6 = v2[1];
  v4[1] = *v2;
  v4[2] = v6;
  *(v4 + 41) = v5;
  sub_100027D8C((v0 + 27), (v0 + 33));
  v7 = v1;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 16);
  swift_getErrorValue();
  v10 = v0[24];
  v11 = v0[25];
  v0[23] = v11;
  v12 = sub_100017E64(v0 + 20);
  (*(*(v11 - 8) + 16))(v12, v10, v11);
  static LogInterpolation.safe(_:)();
  sub_100002C5C((v0 + 20));
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13, v3);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10015E7C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10015E800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_10015E85C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for NetworkObserver.NetworkError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10015E898(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10015E8D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10015E91C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10015E940(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_10015E980(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10015E9E0(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = sub_10007B9A4(&qword_10026ECC0, &unk_1001EE830);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  v28 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v29 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v27 = &v24 - v12;
  v13 = 0;
  v14 = *(a3 + 16);
  v30 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v14 == v13)
    {
      return v30;
    }

    v15 = *(type metadata accessor for MercuryCacheMetadata(0) - 8);
    a1(a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13);
    if (v3)
    {
      break;
    }

    if (sub_100009F34(v8, 1, v9) == 1)
    {
      sub_10000A00C(v8, &qword_10026ECC0, &unk_1001EE830);
      ++v13;
    }

    else
    {
      v16 = v27;
      sub_100161E78(v8, v27);
      sub_100161E78(v16, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000D5BAC();
        v30 = v20;
      }

      v17 = v30[2];
      v18 = v17 + 1;
      if (v17 >= v30[3] >> 1)
      {
        v25 = v30[2];
        v26 = v17 + 1;
        sub_1000D5BAC();
        v17 = v25;
        v18 = v26;
        v30 = v21;
      }

      ++v13;
      v19 = v30;
      v30[2] = v18;
      sub_100161E78(v29, v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v17);
    }
  }

  v22 = v30;

  return v22;
}

uint64_t sub_10015ECCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[2] = a1;
  v6 = sub_10015E9E0(sub_100161EE8, v5, a2);

  sub_100160880(&v6);

  sub_10018A334(v6, a3);
}

uint64_t sub_10015ED70()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026EBB8 = qword_100287880;
}

uint64_t sub_10015EDD4()
{
  sub_100004768();
  *(v1 + 169) = v2;
  *(v1 + 296) = v3;
  *(v1 + 304) = v0;
  v4 = type metadata accessor for Date();
  *(v1 + 312) = v4;
  sub_100002CFC(v4);
  *(v1 + 320) = v5;
  *(v1 + 328) = swift_task_alloc();
  v6 = sub_1000047B0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10015EE84()
{
  v1 = *(v0 + 304);
  v9 = *(v1 + 208);
  sub_1000262E4(v1 + 168, v0 + 32);
  v2 = *(v1 + 160);
  *(v0 + 336) = v2;
  v7 = *(v1 + 240);
  v8 = *(v1 + 224);
  sub_1000262E4(v1 + 256, v0 + 112);
  v3 = *(v1 + 152);
  *(v0 + 344) = v3;
  *(v0 + 16) = v9;
  *(v0 + 72) = v2;
  *(v0 + 80) = v8;
  *(v0 + 96) = v7;
  *(v0 + 152) = v3;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 352) = v5;
  *v5 = v0;
  v5[1] = sub_10015EFA0;

  return sub_10016994C();
}

uint64_t sub_10015EFA0()
{
  sub_1000061B4();
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 304);
  if (v0)
  {
    v4 = sub_10015F528;
  }

  else
  {
    v4 = sub_10015F0C8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10015F0C8()
{
  sub_100004768();
  *(v0 + 368) = 0;
  static Date.now.getter();
  v1 = swift_task_alloc();
  *(v0 + 376) = v1;
  *v1 = v0;
  sub_1000033C8(v1);

  return sub_10015F86C();
}

uint64_t sub_10015F140()
{
  sub_1000061B4();
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 312);
  v4 = *(*v0 + 304);
  v5 = *v0;
  sub_100002D20();
  *v6 = v5;

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10015F2A0, v4, 0);
}

uint64_t sub_10015F2A0()
{
  sub_1000061B4();
  if (*(v0 + 169) == 2 && *(v0 + 296) == 0)
  {
    v4 = swift_task_alloc();
    *(v0 + 384) = v4;
    *v4 = v0;
    v4[1] = sub_10015F3A0;
    v5 = *(v0 + 336);

    return sub_10014C558(v5);
  }

  else
  {
    if (*(v0 + 368))
    {
      swift_willThrow();
    }

    sub_100161F74(v0 + 16);

    sub_100002D8C();

    return v2();
  }
}

uint64_t sub_10015F3A0()
{
  sub_100004768();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;
  *(v3 + 392) = v4;

  v5 = sub_1000047B0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10015F4A0()
{
  sub_1000061B4();
  sub_1001600A0(*(v0 + 392));
  if (*(v0 + 368))
  {
    swift_willThrow();
  }

  sub_100161F74(v0 + 16);

  sub_100002D8C();

  return v1();
}

uint64_t sub_10015F528()
{
  if (qword_100268788 != -1)
  {
    sub_100006E5C(&qword_100268788);
  }

  v1 = v0[38];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  sub_1000056F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F60;
  v0[25] = type metadata accessor for MercuryCacheUpdateCoordinator();
  v0[22] = v1;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = v0[45];
  v7 = v0[43];
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 22);
  _StringGuts.grow(_:)(18);

  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x64656C69616620;
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  v0[29] = &type metadata for String;
  v0[26] = 0x726F66206B736154;
  v0[27] = 0xE900000000000020;
  static LogInterpolation.sensitive(_:)();
  sub_10000A00C((v0 + 26), &qword_10026D350, &qword_1001E6050);
  v0[34] = 0;
  v0[35] = 0xE000000000000000;
  v14._countAndFlagsBits = 0x203A68746977;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v0[36] = v6;
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  _print_unlocked<A, B>(_:_:)();
  v15 = v0[34];
  v16 = v0[35];
  v0[33] = &type metadata for String;
  v0[30] = v15;
  v0[31] = v16;
  static LogInterpolation.safe(_:)();
  sub_10000A00C((v0 + 30), &qword_10026D350, &qword_1001E6050);
  v17 = static os_log_type_t.error.getter();
  sub_1000036B0(v17, v3);

  v0[46] = v6;
  static Date.now.getter();
  v18 = swift_task_alloc();
  v0[47] = v18;
  *v18 = v0;
  sub_1000033C8(v18);

  return sub_10015F86C();
}

uint64_t sub_10015F86C()
{
  sub_100004768();
  v1[35] = v2;
  v1[36] = v0;
  sub_10007B9A4(&qword_10026ECC0, &unk_1001EE830);
  v1[37] = swift_task_alloc();
  v1[38] = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v3 = sub_1000047B0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10015F944(uint64_t a1)
{
  v2 = v1[36];
  v3 = *(v2 + 208);
  v1[41] = v3;
  v1[42] = *(v2 + 152);
  return sub_100006E7C(a1, v3);
}

uint64_t sub_10015F968()
{
  sub_100004768();
  v1 = *(v0 + 288);
  *(v0 + 344) = sub_10015C384(*(v0 + 336));

  return _swift_task_switch(sub_10015F9D4, v1, 0);
}

uint64_t sub_10015F9D4()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  sub_10015ECCC(*(v0 + 280), *(v0 + 344), v2);

  if (sub_100009F34(v2, 1, v1) == 1)
  {
    sub_10000A00C(*(v0 + 296), &qword_10026ECC0, &unk_1001EE830);
    if (qword_100268788 != -1)
    {
      sub_100006E5C(&qword_100268788);
    }

    v3 = *(v0 + 288);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v4 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v4);
    sub_1000056F8();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1001E5F70;
    *(v0 + 128) = type metadata accessor for MercuryCacheUpdateCoordinator();
    *(v0 + 104) = v3;

    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v13 = *(v0 + 336);
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v0 + 104));
    _StringGuts.grow(_:)(24);

    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    *(v0 + 160) = &type metadata for String;
    *(v0 + 136) = 0xD000000000000016;
    *(v0 + 144) = 0x80000001001FEDB0;
    static LogInterpolation.sensitive(_:)();
    sub_10000A00C(v0 + 136, &qword_10026D350, &qword_1001E6050);
    v19 = static os_log_type_t.info.getter();
    sub_1000036B0(v19, v5);
  }

  else
  {
    sub_100161E78(*(v0 + 296), *(v0 + 320));
    if (qword_100268788 != -1)
    {
      sub_100006E5C(&qword_100268788);
    }

    v8 = *(v0 + 288);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v9 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v9);
    sub_1000056F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1001E5F60;
    *(v0 + 192) = type metadata accessor for MercuryCacheUpdateCoordinator();
    *(v0 + 168) = v8;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v20 = *(v0 + 336);
    v22 = *(v0 + 312);
    v21 = *(v0 + 320);
    v23 = *(v0 + 304);
    v49 = *(v0 + 288);
    v48 = v20;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v0 + 168));
    _StringGuts.grow(_:)(26);

    v24 = [v20 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    *(v0 + 224) = &type metadata for String;
    *(v0 + 200) = 0xD000000000000018;
    *(v0 + 208) = 0x80000001001FEDD0;
    static LogInterpolation.sensitive(_:)();
    sub_10000A00C(v0 + 200, &qword_10026D350, &qword_1001E6050);
    *(v0 + 264) = 0;
    *(v0 + 272) = 0xE000000000000000;
    v29._countAndFlagsBits = 0x203A68746977;
    v29._object = 0xE600000000000000;
    String.append(_:)(v29);
    v30 = *(v23 + 48);
    sub_10015DB84(v21, v22);
    type metadata accessor for Date();
    sub_100002DDC();
    (*(v31 + 16))(v22 + v30, v21 + v30);
    _print_unlocked<A, B>(_:_:)();
    sub_10000A00C(v22, &qword_100269FE0, &unk_1001E7550);
    v32 = *(v0 + 264);
    v33 = *(v0 + 272);
    *(v0 + 256) = &type metadata for String;
    *(v0 + 232) = v32;
    *(v0 + 240) = v33;
    static LogInterpolation.safe(_:)();
    sub_10000A00C(v0 + 232, &qword_10026D350, &qword_1001E6050);
    v34 = static os_log_type_t.info.getter();
    sub_1000036B0(v34, v10);

    v50 = sub_10015DDC0(v48);
    v51 = v35;

    v36._countAndFlagsBits = sub_100023ED4();
    v36._object = 0xE700000000000000;
    String.append(_:)(v36);

    Date.timeIntervalSince(_:)();
    v38 = v37;
    v39 = v48;

    sub_1001CF380();

    v40 = sub_100003CA8((v49 + 112), *(v49 + 136));
    *(v0 + 88) = &unk_10024F910;
    *(v0 + 96) = &off_10024F928;
    v41 = swift_allocObject();
    *(v0 + 64) = v41;
    *(v41 + 16) = v38;
    *(v41 + 24) = v50;
    *(v41 + 32) = v51;
    *(v41 + 40) = v39;
    *(v41 + 48) = &_swiftEmptySetSingleton;
    *(v41 + 56) = 1;
    v42 = *v40;
    v43 = sub_100003CA8((v0 + 64), &unk_10024F910);
    v44 = *(v43 + 25);
    v45 = v43[1];
    *(v0 + 16) = *v43;
    *(v0 + 32) = v45;
    *(v0 + 41) = v44;
    sub_100161BB8(v0 + 16, v42);
    sub_10000A00C(v21, &qword_100269FE0, &unk_1001E7550);
    sub_100002C00((v0 + 64));
  }

  sub_100002D8C();

  return v46();
}

uint64_t sub_1001600A0(double a1)
{
  v2 = v1;
  v4 = *(v1 + 152);
  *&v22 = sub_10015DDC0(v4);
  *(&v22 + 1) = v5;

  v6._countAndFlagsBits = sub_10000A4A0();
  v6._object = 0xE90000000000006CLL;
  String.append(_:)(v6);

  v7 = *(&v22 + 1);
  v20 = v22;
  v8 = qword_100268788;
  v9 = v4;
  if (v8 != -1)
  {
    sub_100006E5C(&qword_100268788);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v10 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v10);
  sub_1000056F8();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001E5F70;
  *&v23[8] = type metadata accessor for MercuryCacheUpdateCoordinator();
  *&v22 = v2;

  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v22);
  LogInterpolation.init(stringLiteral:)();
  v14 = static os_log_type_t.info.getter();
  sub_1000036B0(v14, v11);

  v15 = sub_100003CA8((v2 + 112), *(v2 + 136));
  v21[3] = &unk_10024F910;
  v21[4] = &off_10024F928;
  v16 = swift_allocObject();
  v21[0] = v16;
  *(v16 + 16) = a1;
  *(v16 + 24) = v20;
  *(v16 + 32) = v7;
  *(v16 + 40) = v9;
  *(v16 + 48) = 0;
  *(v16 + 56) = 2;
  v17 = *v15;
  v18 = sub_100003CA8(v21, &unk_10024F910);
  v22 = *v18;
  *v23 = v18[1];
  *&v23[9] = *(v18 + 25);
  sub_100161BB8(&v22, v17);
  return sub_100002C00(v21);
}

uint64_t sub_10016032C()
{
  if (qword_100268788 != -1)
  {
    sub_100006E5C(&qword_100268788);
  }

  v1 = v0[10];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  sub_1000056F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F70;
  v0[5] = type metadata accessor for MercuryCacheUpdateCoordinator();
  v0[2] = v1;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = v0[10];
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 2);
  _StringGuts.grow(_:)(35);

  v7 = *(v6 + 152);
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v0[9] = &type metadata for String;
  v0[6] = 0xD000000000000021;
  v0[7] = 0x80000001001FED40;
  static LogInterpolation.sensitive(_:)();
  sub_10000A00C((v0 + 6), &qword_10026D350, &qword_1001E6050);
  v13 = static os_log_type_t.info.getter();
  sub_1000036B0(v13, v3);

  sub_10015DDC0(v7);

  v14._countAndFlagsBits = sub_100023ED4();
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);

  sub_1001CF380();

  sub_10015DDC0(v7);

  v15._countAndFlagsBits = sub_10000A4A0();
  v15._object = 0xE90000000000006CLL;
  String.append(_:)(v15);

  sub_1001CF380();

  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  v16[1] = sub_100160660;

  return sub_10015CD10(v7);
}

uint64_t sub_100160660()
{
  sub_100004768();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  v3 = sub_1000047B0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10016075C()
{
  sub_1000061B4();
  sub_100003CA8((*(v0 + 80) + 168), *(*(v0 + 80) + 192));
  sub_100151748();
  sub_100002D8C();

  return v1();
}

uint64_t sub_1001607E0()
{
  sub_100002C00((v0 + 112));

  swift_unknownObjectRelease();
  sub_100002C00((v0 + 168));
  swift_unknownObjectRelease();
  sub_100002C00((v0 + 256));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100160830()
{
  sub_1001607E0();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int sub_100160880(uint64_t *a1)
{
  v2 = *(sub_10007B9A4(&qword_100269FE0, &unk_1001E7550) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000F0408(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_100160934(v7);
  *a1 = v3;
  return result;
}

Swift::Int sub_100160934(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10007B9A4(&qword_100269FE0, &unk_1001E7550) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_100160CAC(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100160A7C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100160A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  v9 = __chkstk_darwin(v8);
  v35 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v33 = -v19;
    v34 = v18;
    v21 = a1 - a3;
    v27 = v19;
    v22 = v18 + v19 * a3;
    while (2)
    {
      v31 = v20;
      v32 = a3;
      v29 = v22;
      v30 = v21;
      do
      {
        sub_100161F04(v22, v17);
        sub_100161F04(v20, v13);
        v23 = static Date.< infix(_:_:)();
        sub_10000A00C(v13, &qword_100269FE0, &unk_1001E7550);
        result = sub_10000A00C(v17, &qword_100269FE0, &unk_1001E7550);
        if ((v23 & 1) == 0)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return result;
        }

        v24 = v35;
        sub_100161E78(v22, v35);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_100161E78(v24, v20);
        v20 += v33;
        v22 += v33;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v32 + 1;
      v20 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100160CAC(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v5 = v4;
  v102 = a1;
  v115 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  v108 = *(v115 - 8);
  v8 = __chkstk_darwin(v115);
  v105 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v113 = &v99 - v11;
  v12 = __chkstk_darwin(v10);
  v114 = &v99 - v13;
  __chkstk_darwin(v12);
  v15 = &v99 - v14;
  v111 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = _swiftEmptyArrayStorage;
    v19 = v4;
LABEL_100:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_142;
    }

    v16 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v93 = (v18 + 16);
      v94 = *(v18 + 16);
      for (i = v18; v94 >= 2; v18 = i)
      {
        if (!*v111)
        {
          goto LABEL_139;
        }

        v95 = (v18 + 16 * v94);
        v96 = *v95;
        v97 = &v93[2 * v94];
        v18 = *(v97 + 1);
        sub_100161578(*v111 + *(v108 + 72) * *v95, *v111 + *(v108 + 72) * *v97, *v111 + *(v108 + 72) * v18, v5);
        if (v16)
        {
          break;
        }

        if (v18 < v96)
        {
          goto LABEL_127;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_128;
        }

        *v95 = v96;
        v95[1] = v18;
        v98 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_129;
        }

        v94 = *v93 - 1;
        sub_1000F02C8(v97 + 16, v98, v97);
        *v93 = v94;
      }

LABEL_110:

      return;
    }

LABEL_136:
    v18 = sub_1000F02B4(v18);
    goto LABEL_102;
  }

  v99 = a4;
  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v19 = v4;
  while (1)
  {
    v20 = v17;
    v21 = v17 + 1;
    if (v17 + 1 >= v16)
    {
      goto LABEL_31;
    }

    i = v18;
    v101 = v19;
    v22 = *v111;
    v18 = *(v108 + 72);
    v23 = *v111 + v18 * v21;
    sub_100161F04(v23, v15);
    v24 = v114;
    sub_100161F04(v22 + v18 * v20, v114);
    LODWORD(v107) = static Date.< infix(_:_:)();
    v25 = v24;
    v5 = &qword_100269FE0;
    sub_10000A00C(v25, &qword_100269FE0, &unk_1001E7550);
    sub_10000A00C(v15, &qword_100269FE0, &unk_1001E7550);
    v100 = v20;
    v26 = v20 + 2;
    v109 = v18;
    v27 = v22 + v18 * (v20 + 2);
    while (1)
    {
      v28 = v26;
      v29 = v21 + 1;
      if (v29 >= v16)
      {
        break;
      }

      sub_100161F04(v27, v15);
      v30 = v114;
      sub_100161F04(v23, v114);
      v5 = v29;
      v31 = static Date.< infix(_:_:)() & 1;
      v18 = &unk_1001E7550;
      sub_10000A00C(v30, &qword_100269FE0, &unk_1001E7550);
      sub_10000A00C(v15, &qword_100269FE0, &unk_1001E7550);
      v27 += v109;
      v23 += v109;
      v26 = v28 + 1;
      v32 = (v107 & 1) == v31;
      v21 = v5;
      if (!v32)
      {
        goto LABEL_10;
      }
    }

    v21 = v16;
LABEL_10:
    v19 = v101;
    if (v107)
    {
      v33 = v16;
      v16 = v100;
      if (v21 < v100)
      {
        goto LABEL_133;
      }

      if (v100 >= v21)
      {
        v18 = i;
        v20 = v100;
        goto LABEL_31;
      }

      if (v33 >= v28)
      {
        v33 = v28;
      }

      v34 = v109 * (v33 - 1);
      v5 = v109 * v33;
      v35 = v100 * v109;
      v36 = v21;
      v110 = v21;
      do
      {
        if (v16 != --v36)
        {
          v37 = *v111;
          if (!*v111)
          {
            goto LABEL_140;
          }

          sub_100161E78(v37 + v35, v105);
          v38 = v35 < v34 || v37 + v35 >= v37 + v5;
          if (v38)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v35 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_100161E78(v105, v37 + v34);
          v21 = v110;
        }

        ++v16;
        v34 -= v109;
        v5 -= v109;
        v35 += v109;
      }

      while (v16 < v36);
      v19 = v101;
    }

    v18 = i;
    v20 = v100;
LABEL_31:
    v39 = v111[1];
    if (v21 < v39)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_132;
      }

      if (v21 - v20 < v99)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_131;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000D4E00();
      v18 = v91;
    }

    v50 = *(v18 + 16);
    v51 = v50 + 1;
    if (v50 >= *(v18 + 24) >> 1)
    {
      sub_1000D4E00();
      v18 = v92;
    }

    *(v18 + 16) = v51;
    v52 = v18 + 32;
    v53 = (v18 + 32 + 16 * v50);
    v54 = v110;
    *v53 = v20;
    v53[1] = v54;
    v109 = *v102;
    if (!v109)
    {
      goto LABEL_141;
    }

    if (v50)
    {
      i = v18;
      while (1)
      {
        v55 = v51 - 1;
        v56 = (v52 + 16 * (v51 - 1));
        v57 = (v18 + 16 * v51);
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v58 = *(v18 + 32);
          v59 = *(v18 + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_68:
          if (v61)
          {
            goto LABEL_118;
          }

          v73 = *v57;
          v72 = v57[1];
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_121;
          }

          v77 = v56[1];
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_126;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v51 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v51 < 2)
        {
          goto LABEL_120;
        }

        v80 = *v57;
        v79 = v57[1];
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_83:
        if (v76)
        {
          goto LABEL_123;
        }

        v82 = *v56;
        v81 = v56[1];
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_125;
        }

        if (v83 < v75)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v55 - 1 >= v51)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
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
          goto LABEL_135;
        }

        if (!*v111)
        {
          goto LABEL_138;
        }

        v5 = v15;
        v87 = (v52 + 16 * (v55 - 1));
        v88 = *v87;
        v89 = v55;
        v90 = v52 + 16 * v55;
        v18 = *(v90 + 8);
        sub_100161578(*v111 + *(v108 + 72) * *v87, *v111 + *(v108 + 72) * *v90, *v111 + *(v108 + 72) * v18, v109);
        if (v19)
        {
          goto LABEL_110;
        }

        if (v18 < v88)
        {
          goto LABEL_113;
        }

        v16 = *(i + 16);
        if (v89 > v16)
        {
          goto LABEL_114;
        }

        *v87 = v88;
        v87[1] = v18;
        if (v89 >= v16)
        {
          goto LABEL_115;
        }

        v51 = v16 - 1;
        sub_1000F02C8((v90 + 16), v16 - 1 - v89, v90);
        v18 = i;
        *(i + 16) = v16 - 1;
        v15 = v5;
        if (v16 <= 2)
        {
          goto LABEL_97;
        }
      }

      v62 = v52 + 16 * v51;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_116;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_117;
      }

      v69 = v57[1];
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_119;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_122;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = v56[1];
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_130;
        }

        if (v60 < v86)
        {
          v55 = v51 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v17 = v110;
    v16 = v111[1];
    if (v110 >= v16)
    {
      goto LABEL_100;
    }
  }

  v40 = (v20 + v99);
  if (__OFADD__(v20, v99))
  {
    goto LABEL_134;
  }

  if (v40 >= v39)
  {
    v40 = v111[1];
  }

  if (v40 < v20)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v21 == v40)
  {
    goto LABEL_47;
  }

  i = v18;
  v100 = v20;
  v101 = v19;
  v5 = *v111;
  v41 = *(v108 + 72);
  v42 = *v111 + v41 * (v21 - 1);
  v16 = -v41;
  v43 = v20 - v21;
  v103 = v41;
  v104 = v40;
  v44 = v5 + v21 * v41;
LABEL_40:
  v109 = v42;
  v110 = v21;
  v106 = v44;
  v107 = v43;
  v45 = v42;
  while (1)
  {
    sub_100161F04(v44, v15);
    v46 = v114;
    sub_100161F04(v45, v114);
    v47 = static Date.< infix(_:_:)();
    sub_10000A00C(v46, &qword_100269FE0, &unk_1001E7550);
    sub_10000A00C(v15, &qword_100269FE0, &unk_1001E7550);
    if ((v47 & 1) == 0)
    {
LABEL_45:
      v21 = v110 + 1;
      v42 = v109 + v103;
      v43 = v107 - 1;
      v44 = v106 + v103;
      if ((v110 + 1) == v104)
      {
        v21 = v104;
        v20 = v100;
        v19 = v101;
        v18 = i;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v5)
    {
      break;
    }

    v48 = v113;
    sub_100161E78(v44, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_100161E78(v48, v45);
    v45 += v16;
    v44 += v16;
    v38 = __CFADD__(v43++, 1);
    if (v38)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_100161578(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = a3;
  v52 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  v8 = __chkstk_darwin(v52);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = v44 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v16 = a2 - a1;
  v17 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = v51 - a2;
  if (v51 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v20 = v16 / v15;
  v55 = a1;
  v54 = a4;
  v21 = v18 / v15;
  v44[1] = v4;
  if (v16 / v15 >= v18 / v15)
  {
    sub_1000D679C(a2, v18 / v15, a4);
    v26 = a4 + v21 * v15;
    v27 = -v15;
    v28 = v26;
    v29 = v51;
    v49 = a4;
    v50 = v27;
    v47 = v10;
    v48 = a1;
    v46 = v13;
LABEL_37:
    v30 = a2 + v27;
    v31 = v29;
    v44[0] = v28;
    v32 = v27;
    v51 = a2 + v27;
    while (1)
    {
      if (v26 <= a4)
      {
        v55 = a2;
        v53 = v28;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v45 = v28;
      v33 = v31 + v32;
      v34 = v26 + v32;
      v35 = v30;
      v36 = v26 + v32;
      v37 = v31;
      sub_100161F04(v36, v13);
      sub_100161F04(v35, v10);
      v38 = static Date.< infix(_:_:)();
      v39 = v10;
      v40 = v38;
      sub_10000A00C(v39, &qword_100269FE0, &unk_1001E7550);
      sub_10000A00C(v13, &qword_100269FE0, &unk_1001E7550);
      if (v40)
      {
        v42 = v37 < a2 || v33 >= a2;
        v29 = v33;
        if (v42)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v45;
          v13 = v46;
          v10 = v47;
          a1 = v48;
          a4 = v49;
          v27 = v50;
        }

        else
        {
          v13 = v46;
          v28 = v45;
          v17 = v37 == a2;
          v27 = v50;
          a2 = v51;
          v10 = v47;
          a1 = v48;
          a4 = v49;
          if (!v17)
          {
            a2 = v51;
            v43 = v45;
            swift_arrayInitWithTakeBackToFront();
            v28 = v43;
          }
        }

        goto LABEL_37;
      }

      if (v37 < v26 || v33 >= v26)
      {
        swift_arrayInitWithTakeFrontToBack();
        v31 = v33;
        v26 = v34;
        v28 = v34;
        v13 = v46;
        v10 = v47;
        a4 = v49;
        v32 = v50;
        a1 = v48;
        v30 = v51;
      }

      else
      {
        v28 = v34;
        v17 = v26 == v37;
        v31 = v33;
        v26 = v34;
        v13 = v46;
        v10 = v47;
        a4 = v49;
        v32 = v50;
        a1 = v48;
        v30 = v51;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v51;
          v31 = v33;
          v26 = v34;
          v28 = v34;
        }
      }
    }

    v55 = a2;
    v53 = v44[0];
  }

  else
  {
    sub_1000D679C(a1, v16 / v15, a4);
    v50 = a4 + v20 * v15;
    v53 = v50;
    while (a4 < v50 && a2 < v51)
    {
      sub_100161F04(a2, v13);
      sub_100161F04(a4, v10);
      v23 = static Date.< infix(_:_:)();
      sub_10000A00C(v10, &qword_100269FE0, &unk_1001E7550);
      sub_10000A00C(v13, &qword_100269FE0, &unk_1001E7550);
      if (v23)
      {
        if (a1 < a2 || a1 >= a2 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v15;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v54 = a4 + v15;
        a4 += v15;
      }

      a1 += v15;
      v55 = a1;
    }
  }

LABEL_59:
  sub_100161ACC(&v55, &v54, &v53);
  return 1;
}

void sub_1001619F4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  type metadata accessor for URLQueryItem();
  sub_100002DDC();
  v7 = *(v6 + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_100161ACC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100161BB8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v20 = &unk_10024F910;
  v21 = &off_10024F928;
  v5 = swift_allocObject();
  v19[0] = v5;
  v6 = *(a1 + 24);
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v24 = *(a1 + 8);
  v7 = *(a1 + 16);
  v5[1] = *a1;
  v5[2] = v7;
  *(v5 + 41) = *(a1 + 25);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_100027D8C(&v24, v18);
  v8 = v6;
  sub_100161DEC(&v22, v18);
  _StringGuts.grow(_:)(18);

  v25 = 0xD000000000000010;
  v26 = 0x80000001001FED90;
  v9 = sub_100003CA8(v19, &unk_10024F910);
  v10 = v9[1];
  v11 = v9[2];

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  v13 = v25;
  v14 = v26;
  sub_100003CA8(v19, v20);
  v15 = *sub_100003CA8(v19, v20);
  v37 = 0;
  v36 = 0;
  v35 = 1;
  LOWORD(v25) = 1;
  v26 = v15;
  v27 = 0;
  v28 = 0x404E000000000000;
  v29 = 0x4072C00000000000;
  v30 = 0;
  v31 = 0;
  v32 = 1;
  v33 = 257;
  v34 = 0;
  sub_1000262E4(v19, v18);
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v14;
  sub_10003B104(v18, (v16 + 4));
  v16[9] = a2;
  v16[10] = v4;

  sub_100066B48();

  return sub_100002C00(v19);
}

uint64_t sub_100161E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100161F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100161FC8()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026ECC8 = qword_100287880;
}

uint64_t sub_10016202C()
{
  type metadata accessor for MercuryCacheUpdateCoordinatorProvider();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000AF20C();
  type metadata accessor for MercuryCacheUpdateCoordinator();
  sub_1000AE204();
  result = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 112) = result;
  qword_1002878B0 = v0;
  return result;
}

uint64_t sub_1001620A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 176) = v12;
  *(v9 + 184) = v8;
  *(v9 + 160) = v11;
  *(v9 + 144) = a7;
  *(v9 + 152) = a8;
  *(v9 + 128) = a5;
  *(v9 + 136) = a6;
  *(v9 + 112) = a2;
  *(v9 + 120) = a4;
  *(v9 + 104) = a1;
  return _swift_task_switch(sub_1001620E8, v8, 0);
}

uint64_t sub_1001620E8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v31 = *(v0 + 152);
  v32 = *(v0 + 160);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 104);
  v9 = sub_100003CA8(*(v0 + 120), *(*(v0 + 120) + 24));
  v10 = sub_100003CA8(v3, v3[3]);
  v11 = sub_100003CA8(v1, v1[3]);
  sub_1001A0A64(v8, v7, *v9, v6, v5, v4, v31, v32, *v10, *v11, v2, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v0, v41);
  *(v0 + 192) = v12;
  swift_beginAccess();
  sub_1000AB8B0(v8, v13, v14, v15, v16, v17, v18, v19, v29, v30);
  swift_endAccess();

  if (qword_100268790 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 184);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001E5F60;
  *(v0 + 40) = type metadata accessor for MercuryCacheUpdateCoordinatorProvider();
  *(v0 + 16) = v20;

  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v24 = *(v0 + 104);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 16));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 72) = sub_1000AF20C();
  *(v0 + 48) = v24;
  v25 = v24;
  static LogInterpolation.sensitive(_:)();
  sub_100002C5C(v0 + 48);
  v26 = static os_log_type_t.info.getter();
  sub_1000036B0(v26, v21);

  v27 = swift_task_alloc();
  *(v0 + 200) = v27;
  *v27 = v0;
  v27[1] = sub_1001623E8;

  return sub_100160314(v27);
}

uint64_t sub_1001623E8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    v4 = sub_100162578;
  }

  else
  {
    v4 = sub_100162514;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100162514()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100162578()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001625DC()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100162638@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v35.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v35.i8[-v9];
  updated = type metadata accessor for MercuryCacheUpdateData(0);
  v12 = *(v1 + updated[7]);
  if (v12)
  {
    v13 = (v1 + updated[6]);
    v14 = v13[1];
    v37 = *v13;
    v15 = updated[5];

    Date.addingTimeInterval(_:)();
    v16 = type metadata accessor for MercuryCacheUpdateData.Success(0);
    v17 = sub_10000C12C(v16);
    v18(v17, v1 + v15, v4);
    *a1 = v37;
    *(a1 + 1) = v14;
    (*(v5 + 32))(&a1[*(v16 + 20)], v10, v4);
    *&a1[*(v16 + 24)] = v12;
  }

  else
  {
    v19 = (v1 + updated[6]);
    v20 = v19[1];
    v37 = *v19;
    v21 = (v1 + updated[8]);
    v22 = v21[2];
    v35 = v21[1];
    v36 = v22;
    v23 = v21[3].i8[0];
    v24 = v21[3].u8[1];
    v25 = updated[5];

    Date.addingTimeInterval(_:)();
    v26 = v24 | v23;
    if (v24)
    {
      v27 = -1;
    }

    else
    {
      v27 = 0;
    }

    v28 = vdupq_n_s64(v27);
    v35 = vbicq_s8(v35, v28);
    v36 = vbicq_s8(v36, v28);
    v29 = type metadata accessor for MercuryCacheUpdateData.Failure(0);
    v30 = sub_10000C12C(v29);
    v31(v30, v2 + v25, v4);
    *a1 = v37;
    *(a1 + 1) = v20;
    (*(v5 + 32))(&a1[*(v29 + 20)], v8, v4);
    v32 = &a1[*(v29 + 24)];
    v33 = v36;
    *v32 = v35;
    *(v32 + 1) = v33;
    v32[32] = v26 & 1;
  }

  type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1001628EC(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = AnyHashable.init<A>(_:)();
  sub_1000054E0(v6, v7, v8, v9, v10, v11, v12, v13, v57, v60);
  sub_10000E1E8(v64);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  v14 = sub_1000AF20C();
  v18 = sub_100006E88(v14, v15, v16, v14, v17);
  if (v18)
  {
    v21 = v61;
    if (v61)
    {
      v18 = [v61 doubleValue];
      v23 = v22;
      v24 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = 0;
  v24 = 1;
LABEL_6:
  v25 = sub_100007C54(v18, v19, v20);
  sub_1000054E0(v25, v26, v27, v28, v29, v30, v31, v32, v58, v61);
  v33 = sub_10000E1E8(v64);
  v37 = sub_100006E88(v33, v34, v35, &type metadata for Double, v36);
  v40 = v37;
  if (v37)
  {
    v41 = v62;
  }

  else
  {
    v41 = 0;
  }

  v42 = sub_100007C54(v37, v38, v39);
  sub_1000054E0(v42, v43, v44, v45, v46, v47, v48, v49, v59, v62);

  v50 = sub_10000E1E8(v64);
  if (sub_100006E88(v50, v51, v52, &type metadata for Bool, v53))
  {
    if (v63 == 2 || (v63 & 1) == 0)
    {
      sub_10000BAA4();
    }

    else
    {
      v54 = 0;
      v55 = v40 ^ 1u;
      v56 = a3;
    }
  }

  else
  {
    sub_10000BAA4();
    v56 = 0.0;
  }

  *a2 = v23;
  *(a2 + 8) = v24;
  *(a2 + 16) = v41;
  *(a2 + 24) = v55;
  *(a2 + 32) = a1;
  *(a2 + 40) = v56;
  *(a2 + 48) = v54;
}

uint64_t sub_100162B80(uint64_t a1)
{
  v1 = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    sub_10004750C(319, &unk_10026EE08, &type metadata for MercuryCacheUpdateData.RetryMetadata);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_100162C38(uint64_t a1, int a2)
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

uint64_t sub_100162C58(uint64_t result, int a2, int a3)
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

void sub_100162CBC(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100162D80(319);
    if (v2 <= 0x3F)
    {
      sub_10004750C(319, &unk_10026EEB0, &type metadata for MercuryCacheUpdateData.Meta);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100162D80(uint64_t a1)
{
  if (!qword_10026EEA8)
  {
    sub_10007BC70(&qword_10026AE50, &unk_1001E83A0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10026EEA8);
    }
  }
}

uint64_t sub_100162DE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100162E04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

uint64_t sub_100162E58(uint64_t a1)
{
  result = type metadata accessor for MercuryCacheUpdateData.Success(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MercuryCacheUpdateData.Failure(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100162EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_10000321C(*(a1 + 8));
  }

  v7 = type metadata accessor for Date();
  v8 = a1 + *(a3 + 20);

  return sub_100009F34(v8, a2, v7);
}

uint64_t sub_100162F70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100162FF0(uint64_t a1)
{
  v1 = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    sub_100163098();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_100163098()
{
  if (!qword_10026F000)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10026F000);
    }
  }
}

void *sub_100163164(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(void), void (*a7)(uint64_t))
{
  v27 = a7;
  v32 = a5;
  v33 = a6;
  v30 = a1;
  v31 = a2;
  v9 = a4(0);
  v10 = sub_100002CFC(v9);
  __chkstk_darwin(v10);
  sub_100005C2C();
  v28 = v11;
  sub_100003F08();
  result = __chkstk_darwin(v12);
  v15 = &v26 - v14;
  v16 = 0;
  v17 = *(a3 + 16);
  v29 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v17 == v16)
    {

      return v29;
    }

    if (v16 >= *(a3 + 16))
    {
      break;
    }

    sub_100164F84();
    v18 = v30(v15);
    if (v7)
    {
      sub_100164FDC(v15, v33);
      v25 = v29;

      return v25;
    }

    if (v18)
    {
      sub_100165030();
      v19 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_100004C7C();
        v27(v21);
        v19 = v34;
      }

      v23 = v19[2];
      v22 = v19[3];
      v24 = (v23 + 1);
      if (v23 >= v22 >> 1)
      {
        v29 = (v23 + 1);
        v26 = v23;
        (v27)(v22 > 1, v23 + 1, 1);
        v24 = v29;
        v19 = v34;
      }

      ++v16;
      v19[2] = v24;
      v29 = v19;
      result = sub_100165030();
    }

    else
    {
      result = sub_100164FDC(v15, v33);
      ++v16;
    }
  }

  __break(1u);
  return result;
}

void *sub_1001633A8(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v47 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v43 - v7;
  v8 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  __chkstk_darwin(v8 - 8);
  v48 = &v43 - v9;
  v10 = type metadata accessor for RetryConfiguration(0);
  __chkstk_darwin(v10);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10007B9A4(&qword_10026E8B8, &unk_1001EE2F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  updated = type metadata accessor for CacheUpdateRun(0);
  v51 = *(updated - 8);
  __chkstk_darwin(updated);
  v58 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MercuryCacheMetadata(0);
  v19 = __chkstk_darwin(v18);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 16);
  if (v23)
  {
    v57 = v3;
    v52 = v19;
    v54 = *(v19 + 28);
    v24 = a2 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v49 = (v4 + 16);
    v45 = (v4 + 32);
    v59 = _swiftEmptyArrayStorage;
    v53 = *(v20 + 72);
    v25 = v48;
    v55 = v12;
    v56 = v10;
    while (1)
    {
      sub_100164F84();
      sub_100164EF4(&v22[v54], v25);
      if (sub_100009F34(v25, 1, v10) == 1)
      {
        sub_100009F5C(v25, &qword_10026E7C8, &unk_1001EE2A0);
        v26 = *(v52 + 20);
        sub_100092A84();
        v27 = v57;
        if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_100165030();
        if (*v12 < v12[1])
        {
          v28 = v47;
          Date.addingTimeInterval(_:)();
          sub_100164FDC(v12, type metadata accessor for RetryConfiguration);
          v29 = v46;
          v30 = *v45;
          v31 = v28;
          v32 = v57;
          (*v45)(v46, v31, v57);
          v33 = *(v22 + 1);
          v50 = *v22;
          v34 = v29;
          v25 = v48;
          v30(&v15[*(updated + 20)], v34, v32);
          *v15 = v50;
          *(v15 + 1) = v33;
          v15[*(updated + 24)] = 1;
          sub_10000A7C0(v15, 0, 1, updated);
LABEL_10:

          goto LABEL_11;
        }

        v26 = *(v52 + 20);
        sub_100092A84();
        v27 = v57;
        v35 = dispatch thunk of static Comparable.< infix(_:_:)();
        sub_100164FDC(v12, type metadata accessor for RetryConfiguration);
        if ((v35 & 1) == 0)
        {
LABEL_9:
          v37 = *v22;
          v36 = *(v22 + 1);
          (*v49)(&v15[*(updated + 20)], &v22[v26], v27);
          *v15 = v37;
          *(v15 + 1) = v36;
          v15[*(updated + 24)] = 0;
          sub_10000A7C0(v15, 0, 1, updated);
          goto LABEL_10;
        }
      }

      sub_10000A7C0(v15, 1, 1, updated);
LABEL_11:
      sub_100164FDC(v22, type metadata accessor for MercuryCacheMetadata);
      if (sub_100009F34(v15, 1, updated) == 1)
      {
        v19 = sub_100009F5C(v15, &qword_10026E8B8, &unk_1001EE2F0);
        v12 = v55;
        v10 = v56;
      }

      else
      {
        sub_100165030();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = v55;
        v10 = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000D590C();
          v59 = v40;
        }

        v39 = v59[2];
        if (v39 >= v59[3] >> 1)
        {
          sub_1000D590C();
          v59 = v41;
        }

        v59[2] = v39 + 1;
        v19 = sub_100165030();
      }

      v24 += v53;
      if (!--v23)
      {
        goto LABEL_21;
      }
    }
  }

  v59 = _swiftEmptyArrayStorage;
LABEL_21:
  __chkstk_darwin(v19);
  *(&v43 - 2) = v44;
  return sub_100163164(sub_100164F64, (&v43 - 4), v59, type metadata accessor for CacheUpdateRun, type metadata accessor for CacheUpdateRun, type metadata accessor for CacheUpdateRun, sub_10009B878);
}

uint64_t sub_100163AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 88) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_100163AE4, 0, 0);
}

uint64_t sub_100163AE4()
{
  *(v0 + 56) = sub_10014BC08(*(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100163B94;

  return sub_1000E9FF8();
}

uint64_t sub_100163B94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_100163D40;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_100163CC4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100163CC4()
{
  sub_100163DA4(*(v0 + 24), *(v0 + 80), *(v0 + 40), *(v0 + 48), *(v0 + 88), *(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100163D40()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100163DA4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v122 = a2;
  v120 = a1;
  updated = type metadata accessor for CacheUpdateRun(0);
  v10 = *(updated - 8);
  __chkstk_darwin(updated);
  sub_100005C2C();
  v118 = v11;
  sub_100003F08();
  __chkstk_darwin(v12);
  v116 = &v112 - v13;
  sub_100003F08();
  __chkstk_darwin(v14);
  v119 = &v112 - v15;
  sub_100003F08();
  v17 = __chkstk_darwin(v16);
  v19 = &v112 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v112 - v21;
  __chkstk_darwin(v20);
  v24 = &v112 - v23;
  v25 = type metadata accessor for MercuryCacheMetadata(0);
  v26 = sub_100002CFC(v25);
  v28 = v27;
  __chkstk_darwin(v26);
  v30 = (&v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = &_swiftEmptySetSingleton;
  if (a5)
  {
    v117 = a3;
    v114 = v22;
    v115 = a6;
    if (a5 == 1)
    {

      v31 = sub_100164958();
      sub_1001926F4(v31);
      v32 = *(a3 + 16);
      v33 = _swiftEmptyArrayStorage;
      if (v32)
      {
        v113 = v19;
        v124 = _swiftEmptyArrayStorage;
        sub_100027C2C(0, v32, 0);
        v33 = v124;
        v34 = a3 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
        v123 = *(v28 + 72);
        do
        {
          sub_10000853C();
          sub_100164F84();
          v36 = *v30;
          v35 = v30[1];

          sub_100007C74();
          sub_100164FDC(v30, v37);
          v124 = v33;
          v39 = v33[2];
          v38 = v33[3];
          if (v39 >= v38 >> 1)
          {
            v41 = sub_1000065B0(v38);
            sub_100027C2C(v41, v39 + 1, 1);
            v33 = v124;
          }

          v33[2] = v39 + 1;
          v40 = &v33[2 * v39];
          v40[4] = v36;
          v40[5] = v35;
          v34 += v123;
          --v32;
        }

        while (v32);
        a3 = v117;
        v19 = v113;
      }

      v43 = sub_100062640(v33);
      v44 = v122;

      v42 = sub_10016848C(v43, v44);
    }

    else
    {
      v42 = v122;
    }

    sub_1001926F4(v42);
    result = sub_1001633A8(v120, a3);
    v46 = result;
    v47 = 0;
    v48 = result[2];
    v123 = _swiftEmptyArrayStorage;
    v49 = updated;
    while (v48 != v47)
    {
      if (v47 >= *(v46 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      sub_10000AC94();
      sub_1000033F8();
      sub_100164F84();
      if (v24[*(v49 + 24)] == 1)
      {
        sub_100006EA8();
        sub_100165030();
        v51 = v123;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v51;
        v124 = v51;
        v54 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = sub_100004C7C();
          sub_10009B878(v55, v56, v57);
          v49 = updated;
          v53 = v124;
        }

        v59 = v53[2];
        v58 = v53[3];
        v60 = v59 + 1;
        if (v59 >= v58 >> 1)
        {
          v61 = sub_1000065B0(v58);
          v123 = v62;
          sub_10009B878(v61, v62, 1);
          v60 = v123;
          v53 = v124;
          v49 = updated;
        }

        ++v47;
        v53[2] = v60;
        v123 = v53;
        sub_100006EA8();
        v19 = v54;
        result = sub_100165030();
      }

      else
      {
        sub_1000054FC();
        result = sub_100164FDC(v24, v50);
        ++v47;
      }
    }

    v126 = &_swiftEmptySetSingleton;
    v63 = *(v123 + 16);
    if (v63)
    {
      sub_10000AC94();
      v67 = v66 + (v65 & ~v64);
      v68 = *(v10 + 72);
      v69 = v114;
      do
      {
        sub_1000033F8();
        sub_100164F84();

        sub_100012D64(v70, v71, v72, v73, v74, v75, v76, v77, v112, v113, v114, v115, v116, v117, v118, v119, v120, updated, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);

        sub_1000054FC();
        sub_100164FDC(v69, v78);
        v67 += v68;
        --v63;
      }

      while (v63);

      v49 = updated;
    }

    else
    {
    }

    result = sub_100164958();
    v79 = result;
    v80 = 0;
    v81 = _swiftEmptyArrayStorage;
    v82 = v119;
    while (v48 != v80)
    {
      if (v80 >= *(v46 + 16))
      {
        goto LABEL_47;
      }

      sub_10000AC94();
      sub_1000033F8();
      sub_100164F84();
      if (*(v82 + *(v49 + 24)))
      {
        sub_1000054FC();
        result = sub_100164FDC(v82, v83);
        ++v80;
      }

      else
      {
        sub_100006EA8();
        sub_100165030();
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v123 = v79;
        v124 = v81;
        if ((v84 & 1) == 0)
        {
          v85 = sub_100004C7C();
          sub_10009B878(v85, v86, v87);
          v49 = updated;
          v81 = v124;
        }

        v89 = v81[2];
        v88 = v81[3];
        if (v89 >= v88 >> 1)
        {
          v90 = sub_1000065B0(v88);
          sub_10009B878(v90, v89 + 1, 1);
          v49 = updated;
          v81 = v124;
        }

        ++v80;
        v81[2] = v89 + 1;
        sub_100006EA8();
        result = sub_100165030();
        v82 = v119;
        v79 = v123;
      }
    }

    v126 = &_swiftEmptySetSingleton;
    v91 = v81[2];
    if (v91)
    {
      sub_10000AC94();
      v94 = v81 + (v93 & ~v92);
      v95 = *(v10 + 72);
      a6 = v115;
      v96 = v116;
      do
      {
        sub_1000033F8();
        sub_100164F84();

        sub_100012D64(v97, v98, v99, v100, v101, v102, v103, v104, v112, v113, v114, v115, v116, v117, v118, v119, v120, updated, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);

        sub_1000054FC();
        sub_100164FDC(v96, v105);
        v94 += v95;
        --v91;
      }

      while (v91);
    }

    else
    {

      a6 = v115;
    }

    v106 = sub_100164958();
    v107 = v127;
    v108 = *(type metadata accessor for MercuryCacheUpdateInput(0) + 32);
    type metadata accessor for Date();
    sub_10000BAB8();
    (*(v109 + 16))(a6 + v108, v120);
    a3 = v117;
  }

  else
  {
    if (sub_1001552F0(a4))
    {
      sub_1001BF318();
    }

    v107 = sub_100164958();

    v110 = *(type metadata accessor for MercuryCacheUpdateInput(0) + 32);
    type metadata accessor for Date();
    sub_10000BAB8();
    (*(v111 + 16))(a6 + v110, v120);
    v79 = &_swiftEmptySetSingleton;
    v106 = &_swiftEmptySetSingleton;
  }

  *a6 = v107;
  a6[1] = v79;
  a6[2] = v106;
  a6[3] = a3;
}

uint64_t sub_1001644EC@<X0>(void *a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for MercuryCacheMetadata(0);
  v4 = sub_100002CFC(v3);
  v49 = v5;
  __chkstk_darwin(v4);
  sub_100005C2C();
  v48 = v6;
  sub_100003F08();
  __chkstk_darwin(v7);
  v9 = (&v42 - v8);

  v10 = sub_100164958();

  v11 = sub_100164958();

  v44 = v11;
  v45 = v10;
  v13 = sub_1001C1D1C(v12, v10);
  v14 = *v2;
  swift_bridgeObjectRetain_n();
  v43 = v14;
  result = sub_1001C1D1C(v14, v13);
  v16 = result;
  v17 = 0;
  v46 = v2;
  v18 = *(v2 + 3);
  v51 = *(v18 + 16);
  v19 = result + 56;
  v20 = _swiftEmptyArrayStorage;
  v50 = v18;
LABEL_2:
  v21 = v17;
  while (1)
  {
    if (v21 == v51)
    {

      v37 = *(type metadata accessor for MercuryCacheUpdateInput(0) + 32);
      type metadata accessor for Date();
      sub_10000BAB8();
      v39 = v47;
      result = (*(v38 + 16))(v47 + v37, &v46[v37]);
      v40 = v44;
      v41 = v45;
      *v39 = v43;
      v39[1] = v41;
      v39[2] = v40;
      v39[3] = v20;
      return result;
    }

    if (v21 >= *(v18 + 16))
    {
      break;
    }

    v52 = v21 + 1;
    sub_10000853C();
    sub_100164F84();
    if (*(v16 + 16))
    {
      v22 = *v9;
      v23 = v9[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();
      v25 = ~(-1 << *(v16 + 32));
      while (1)
      {
        v26 = v24 & v25;
        if (((*(v19 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
        {
          break;
        }

        v27 = (*(v16 + 48) + 16 * v26);
        if (*v27 != v22 || v27[1] != v23)
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v24 = v26 + 1;
          if ((v29 & 1) == 0)
          {
            continue;
          }
        }

        sub_10000C140();
        sub_100165030();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = sub_100004C7C();
          sub_10009B8D0(v32, v33, v34);
          v20 = v53;
        }

        v36 = v20[2];
        v35 = v20[3];
        if (v36 >= v35 >> 1)
        {
          sub_10009B8D0(v35 > 1, v36 + 1, 1);
          v20 = v53;
        }

        v20[2] = v36 + 1;
        sub_10000C140();
        result = sub_100165030();
        v18 = v50;
        v17 = v52;
        goto LABEL_2;
      }
    }

    sub_100007C74();
    result = sub_100164FDC(v9, v30);
    v21 = v52;
    v18 = v50;
  }

  __break(1u);
  return result;
}

uint64_t sub_100164830()
{
  sub_100004E28();
  sub_1001C31D0();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  sub_1001C31D0();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  sub_1001C31D0();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  sub_1001C407C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MercuryCacheUpdateInput(0);

  return static Date.== infix(_:_:)();
}

void *sub_1001648C8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_100164B50(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_100164958()
{
  sub_100004E28();
  v1 = *(v0 + 32);
  v2 = v1 & 0x3F;
  v3 = ((1 << v1) + 63) >> 6;

  if (v2 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    sub_1000575CC(0, v3, &v16 - ((8 * v3 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100008110();
    v9 = sub_100164B50(v5, v6, v7, v8);
    if (!v3)
    {
      v10 = v9;

      return v10;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    swift_slowAlloc();

    sub_100008110();
    v10 = sub_1001648C8(v12, v13, v14, v15);

    if (!v3)
    {

      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MercuryCacheUpdateInput(uint64_t a1)
{
  result = qword_10026F090;
  if (!qword_10026F090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100164B50(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v40 = Hasher._finalize()();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_100169730(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}