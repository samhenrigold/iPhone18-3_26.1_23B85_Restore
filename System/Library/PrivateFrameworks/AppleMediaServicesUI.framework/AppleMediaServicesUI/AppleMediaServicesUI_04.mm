void sub_100065AC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for Date();
  sub_100005C6C();
  if (*(v8 + 84) == a3)
  {
    v9 = a4[6];
  }

  else
  {
    sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
    sub_100005C6C();
    if (*(v10 + 84) == a3)
    {
      v9 = a4[8];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[11] + 8) = (a2 - 1);
        return;
      }

      type metadata accessor for TimeZone();
      v9 = a4[12];
    }
  }

  v11 = sub_10000A64C(v9);

  sub_10000A7C0(v11, v12, a2, v13);
}

uint64_t sub_100065BEC(uint64_t a1, int a2, int *a3)
{
  type metadata accessor for Date();
  sub_100005C6C();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[6];
  }

  else
  {
    sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
    sub_100005C6C();
    if (*(v8 + 84) == a2)
    {
      v7 = a3[8];
    }

    else
    {
      if (a2 == 0x7FFFFFFF)
      {
        return sub_10000321C(*(a1 + a3[11] + 8));
      }

      type metadata accessor for TimeZone();
      v7 = a3[12];
    }
  }

  v10 = sub_10000A64C(v7);

  return sub_100009F34(v10, v11, v12);
}

uint64_t sub_100065CF8(char *a1, uint64_t a2)
{
  result = type metadata accessor for ScheduleInfo.Metadata(0);
  v5 = *(result + 44);
  v6 = *&a1[v5];
  v7 = *&a1[v5 + 8];
  v8 = (a2 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      sub_100066958(*a1, v6, v7);
      sub_1001CF380();
    }
  }

  return result;
}

uint64_t sub_100065DAC()
{
  v2 = v0;
  v3 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v3);
  sub_100004E78();
  __chkstk_darwin(v4);
  sub_10000B0C0();
  v5 = type metadata accessor for Date();
  sub_100002CC4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000056E8();
  v61 = v9 - v10;
  sub_100003F08();
  __chkstk_darwin(v11);
  v12 = sub_1000182A4();
  sub_10003AF98(v0 + v12[8], v0, &unk_100271EA0, &qword_1001E77F0);
  if (sub_100009F34(v0, 1, v5) == 1)
  {
    sub_10000A00C(v0, &unk_100271EA0, &qword_1001E77F0);
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    (*(v7 + 32))(v1, v0, v5);
    if (qword_100268688 != -1)
    {
      sub_100008188(&qword_100268688);
    }

    v15 = qword_1002877E0;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v17 = [v15 stringFromDate:{isa, v61}];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);

    v13 = 0x3D65746164;
    v14 = 0xE500000000000000;
    (*(v7 + 8))(v1, v5);
  }

  HIBYTE(v63) = 0;
  _StringGuts.grow(_:)(108);
  v23._countAndFlagsBits = 0x203A70706128;
  v23._object = 0xE600000000000000;
  String.append(_:)(v23);
  *(&v63 + 7) = *v2;
  _print_unlocked<A, B>(_:_:)();
  v24._countAndFlagsBits = 0x69746E656469202CLL;
  v24._object = 0xEE00203A72656966;
  String.append(_:)(v24);
  String.append(_:)(*&v2[v12[11]]);
  v25._countAndFlagsBits = 0x657461657263202CLL;
  v25._object = 0xEA00000000003D64;
  String.append(_:)(v25);
  sub_10006524C(&unk_100271F70, &protocol conformance descriptor for Date);
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 32;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = v13;
  v28._object = v14;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0x3D79616C6564203BLL;
  v29._object = 0xE800000000000000;
  String.append(_:)(v29);
  sub_100066318(v30, v31, v32, v33, v34, v35, v36, v37, v61, v63, *(&v63 + 1), 0xE000000000000000, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86);
  Double.write<A>(to:)();
  v38._countAndFlagsBits = 0x3D7373616C63203BLL;
  v38._object = 0xE800000000000000;
  String.append(_:)(v38);
  HIBYTE(v64) = v2[v12[7]];
  _print_unlocked<A, B>(_:_:)();
  v39._countAndFlagsBits = 0x726574746162203BLL;
  v39._object = 0xEA00000000003D79;
  String.append(_:)(v39);
  if (v2[1])
  {
    v40 = 1702195828;
  }

  else
  {
    v40 = 0x65736C6166;
  }

  if (v2[1])
  {
    v41 = 0xE400000000000000;
  }

  else
  {
    v41 = 0xE500000000000000;
  }

  v42 = v41;
  String.append(_:)(*&v40);

  v43._countAndFlagsBits = 0x3D6563617267203BLL;
  v43._object = 0xE800000000000000;
  String.append(_:)(v43);
  Double.write<A>(to:)();
  v44._countAndFlagsBits = 0x657269707865203BLL;
  v44._object = 0xEA00000000003D73;
  String.append(_:)(v44);
  v45 = v62;
  sub_100064E90(v46, v47, v48, v49, v50, v51, v52, v53, v62, v64, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87);
  v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v54);

  (*(v7 + 8))(v45, v5);
  v55._countAndFlagsBits = 0x697470616461203BLL;
  v55._object = 0xEC000000203A6576;
  String.append(_:)(v55);
  if (v2[v12[9]])
  {
    v56 = 1702195828;
  }

  else
  {
    v56 = 0x65736C6166;
  }

  if (v2[v12[9]])
  {
    v57 = 0xE400000000000000;
  }

  else
  {
    v57 = 0xE500000000000000;
  }

  v58 = v57;
  String.append(_:)(*&v56);

  v59._countAndFlagsBits = 41;
  v59._object = 0xE100000000000000;
  String.append(_:)(v59);
  return v66;
}

void sub_100066318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100004988();
  a21 = v24;
  a22 = v25;
  v26 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v26);
  sub_100004E78();
  __chkstk_darwin(v27);
  v29 = &a9 - v28;
  v30 = type metadata accessor for Date();
  sub_100002CC4();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_1000056E8();
  v36 = v34 - v35;
  v38 = __chkstk_darwin(v37);
  v40 = &a9 - v39;
  __chkstk_darwin(v38);
  v41 = sub_1000182A4();
  sub_10003AF98(v22 + *(v41 + 32), v29, &unk_100271EA0, &qword_1001E77F0);
  if (sub_100009F34(v29, 1, v30) == 1)
  {
    sub_10000A00C(v29, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    (*(v32 + 32))(v23, v29, v30);
    if (*(v22 + *(v41 + 36)) == 1)
    {
      sub_100065054();
      Date.addingTimeInterval(_:)();
    }

    else
    {
      (*(v32 + 16))(v40, v23, v30);
    }

    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v42 = *(v32 + 8);
    v42(v36, v30);
    v42(v40, v30);
    v42(v23, v30);
  }

  sub_10000B16C();
}

uint64_t sub_10006655C(char *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  if (qword_100268718 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E5F70;
  v7 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x80000001001F4550;
  v8._countAndFlagsBits = 0xD000000000000016;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
  v9 = type metadata accessor for ScheduleInfo.Metadata(0);
  v25 = v9;
  v10 = sub_100017E64(v24);
  sub_100065290(a1, v10, type metadata accessor for ScheduleInfo.Metadata);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(v24, &qword_10026D350, &qword_1001E6050);
  v11._countAndFlagsBits = 0x7974206874697720;
  v11._object = 0xEC000000203A6570;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  v25 = &unk_100254498;
  LOBYTE(v24[0]) = a2 & 1;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(v24, &qword_10026D350, &qword_1001E6050);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  LogInterpolation.init(stringInterpolation:)();
  v13 = static os_log_type_t.default.getter();
  sub_1000036B0(v13, v6);

  v14 = &a1[*(v9 + 44)];
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v6) = *a1;
  sub_100066958(*a1, *v14, v16);

  sub_100066A8C(v24);
  sub_1000262E4(a3, v23);
  sub_1000262E4(a4, v22);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  sub_10003B104(v23, v17 + 32);
  *(v17 + 72) = v6;
  sub_10003B104(v22, v17 + 80);
  if (a2)
  {
    sub_1001CF924();
  }

  else
  {
    sub_100066B48();
  }
}

uint64_t sub_100066910()
{

  sub_100002C00((v0 + 32));
  sub_100002C00((v0 + 80));

  return _swift_deallocObject(v0);
}

unint64_t sub_100066958(char a1, uint64_t a2, void *a3)
{
  v4 = 0xE900000000000073;
  v5 = 0x636974796C616E61;
  switch(a1)
  {
    case 1:
      v4 = 0xE800000000000000;
      v5 = sub_100006854();
      break;
    case 2:
      v4 = 0xE800000000000000;
      v5 = sub_1000058B4();
      break;
    case 3:
      v4 = 0xEF736E6F69746164;
      v5 = sub_1000084E4();
      break;
    default:
      break;
  }

  v8 = v4;
  String.append(_:)(*&v5);

  v9._countAndFlagsBits = 95;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  v10._countAndFlagsBits = a2;
  v10._object = a3;
  String.append(_:)(v10);

  return 0xD000000000000019;
}

void sub_100066A8C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ScheduleInfo.Metadata(0);
  v4 = v3[13];
  v5 = *(v1 + v4);
  v14 = sub_10002F8B8(*(v1 + v4));
  if (v5)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  sub_100066318(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);
  v16 = *(v1 + v3[7]);
  v17 = *(v1 + v3[10]);
  *a1 = *(v1 + 1);
  *(a1 + 1) = v16;
  *(a1 + 8) = v19;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v17;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 57) = v15;
  *(a1 + 58) = 1;
}

void sub_100066B48()
{
  sub_100003D74();
  v20 = v2;
  v21 = v3;
  v5 = v4;
  v6 = sub_100007E0C();
  v7 = sub_100003D10(v6);
  __chkstk_darwin(v7);
  sub_100005478();
  if (qword_100268740 != -1)
  {
    sub_1000070EC(&qword_100268740);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E5F70;
  v10 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v11._countAndFlagsBits = 0xD000000000000016;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  sub_1000086C4(&type metadata for String);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(&v22);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  LogInterpolation.init(stringInterpolation:)();
  v13 = static os_log_type_t.default.getter();
  sub_1000036B0(v13, v9);

  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v0;
  *(v14 + 32) = v20;
  *(v14 + 40) = v21;
  v15 = v5[1];
  *(v14 + 48) = *v5;
  *(v14 + 64) = v15;
  *(v14 + 80) = v5[2];
  *(v14 + 92) = *(v5 + 44);

  v16 = sub_100006710();
  sub_100066DC8(v16, v17, v18, v19, v14);

  sub_100005F14();
}

void sub_100066DC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;
  v13[4] = sub_1001D0790;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10017F158;
  v13[3] = &unk_100254338;
  v11 = _Block_copy(v13);

  v12 = String.utf8CString.getter();
  xpc_activity_register((v12 + 32), a3, v11);

  _Block_release(v11);
}

uint64_t sub_100066F08(unsigned __int8 *a1, char a2)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v24 = &type metadata for EngagementScheduleRunner;
  v25 = &off_100249BF8;
  if (qword_100268718 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F70;
  v4 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x80000001001F44B0;
  v5._countAndFlagsBits = 0xD000000000000016;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v5);
  v6 = type metadata accessor for ScheduleInfo.Metadata(0);
  v21 = v6;
  v7 = sub_100017E64(&v20);
  sub_100065290(a1, v7, type metadata accessor for ScheduleInfo.Metadata);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(&v20, &qword_10026D350, &qword_1001E6050);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
  LogInterpolation.init(stringInterpolation:)();
  v9 = static os_log_type_t.default.getter();
  sub_1000036B0(v9, v3);

  if (sub_100064D5C())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1001E5F70;
    v11 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._countAndFlagsBits = 0xD000000000000027;
    v12._object = 0x80000001001F44F0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
    v21 = v6;
    v13 = sub_100017E64(&v20);
    sub_100065290(a1, v13, type metadata accessor for ScheduleInfo.Metadata);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v20, &qword_10026D350, &qword_1001E6050);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
    LogInterpolation.init(stringInterpolation:)();
    v15 = static os_log_type_t.default.getter();
    sub_1000036B0(v15, v10);

    sub_100003CA8(v23, v24);
    sub_10009CC24(a1);
  }

  else
  {
    v21 = &type metadata for ScheduleDatabase;
    v22 = &off_100251628;
    v19[3] = &type metadata for EngagementScheduleRunner;
    v19[4] = &off_100249BF8;
    sub_10006655C(a1, a2 & 1, &v20, v19);
    sub_100002C00(v19);
    sub_100002C00(&v20);
  }

  return sub_100002C00(v23);
}

uint64_t sub_100067514(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002DDC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10006756C(uint64_t a1)
{
  Date.timeIntervalSince1970.getter();
  v2 = [objc_opt_self() standardUserDefaults];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v4 = sub_100004AFC();
  [v2 setValue:isa forKey:v4];

  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

uint64_t sub_100067898(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1000678BC(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

NSString sub_1000679B0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10007ADA4(a2);
  *a1 = result;
  return result;
}

uint64_t sub_100067A2C(uint64_t a1)
{
  v2 = sub_100002CD8(a1);
  result = sub_100067888(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_100067A54(uint64_t a1)
{
  v2 = sub_100002CD8(a1);
  result = sub_100067890(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_100067ADC(uint64_t a1)
{
  v2 = sub_100002CD8(a1);
  result = sub_1000678E4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_100067B78()
{
  v1 = sub_100007E28();
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void *sub_100067BA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100067D7C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_100067DC0()
{
  sub_100004AA0();

  return _swift_deallocObject(v1);
}

uint64_t sub_100067E54()
{
  v1 = (type metadata accessor for MediaCatalogSyncScheduleModel(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[7];
  type metadata accessor for Date();
  sub_100002DDC();
  (*(v4 + 8))(v0 + v2 + v3);

  return _swift_deallocObject(v0);
}

uint64_t sub_100067F44()
{
  v1 = type metadata accessor for Date();
  sub_100002CC4();
  v3 = v2;
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006801C()
{
  swift_unknownObjectRelease();

  sub_10000B2F0();

  return _swift_deallocObject(v0);
}

uint64_t sub_100068068()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_1000680A0()
{
  swift_unknownObjectRelease();

  sub_10000B2F0();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000680F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_100068134()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_100068234()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006833C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100068384()
{

  sub_100004AA0();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000683B8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100068464()
{

  return _swift_deallocObject(v0);
}

BOOL sub_10006856C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_100068598()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000685D0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100068618()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100068690()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006879C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000687D4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006881C()
{
  _Block_release(*(v0 + 16));

  sub_100002FB8();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000688DC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 28);

    return sub_100009F34(v9, a2, v8);
  }
}

void *sub_100068964(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 28);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100068A4C()
{

  sub_100004AA0();

  return _swift_deallocObject(v0);
}

uint64_t sub_100068A80()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100068AD0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100068B10()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_100068BCC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100068C04()
{
  sub_10007B9A4(&qword_10026B880, &qword_1001E8FD0);
  sub_100002D30();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_100068D34()
{
  swift_unknownObjectRelease();
  sub_100002C00((v0 + 32));

  return _swift_deallocObject(v0);
}

uint64_t sub_100068D84()
{
  v1 = type metadata accessor for URL();
  sub_100002CC4();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_100068E3C()
{
  type metadata accessor for URL();
  sub_1000047A4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_100068ED0()
{
  type metadata accessor for URL();
  sub_1000047A4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006905C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100009F34(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10006910C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000A7C0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000691B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100009F34(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100069268(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000A7C0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

char *sub_10006933C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100006C1C(a3, result);
  }

  return result;
}

uint64_t sub_10006935C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 20);

    return sub_100009F34(v9, a2, v8);
  }
}

uint64_t sub_1000693E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 20);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100069464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100009F34(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100069514(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000A7C0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000695C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 28);

    return sub_100009F34(v9, a2, v8);
  }
}

uint64_t sub_100069648(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 28);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100069790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 20);

    return sub_100009F34(v9, a2, v8);
  }
}

uint64_t sub_100069818(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100069898(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269AD8, &qword_1001E66A0);
  v5 = sub_100009F34(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000698EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10007B9A4(&qword_100269AD8, &qword_1001E66A0);

  return sub_10000A7C0(a1, v5, a3, v6);
}

uint64_t sub_1000699CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100069954();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100069A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = type metadata accessor for Date();
      v10 = *(a3 + 40);
    }

    return sub_100009F34(a1 + v10, a2, v9);
  }
}

uint64_t sub_100069B28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = type metadata accessor for Date();
      v10 = *(a4 + 40);
    }

    return sub_10000A7C0(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_100069C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 20);

    return sub_100009F34(v9, a2, v8);
  }
}

uint64_t sub_100069CD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 20);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100069F90@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1000EE79C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100069FBC()
{

  v1 = sub_100008FD8();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006A008()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A0C8()
{
  _Block_release(*(v0 + 40));

  v1 = sub_100008FD8();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006A28C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A2E4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A334()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A374()
{

  sub_100004C9C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006A3D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A408()
{

  sub_100004C9C();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A454()
{
  swift_unknownObjectRelease();
  sub_100002C00((v0 + 24));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A4AC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A51C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS.QoSClass();

  return sub_100009F34(a1, a2, v4);
}

uint64_t sub_10006A564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS.QoSClass();

  return sub_10000A7C0(a1, a2, a2, v4);
}

uint64_t sub_10006A5B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = type metadata accessor for URL();
    v10 = a1 + *(a3 + 20);

    return sub_100009F34(v10, a2, v9);
  }
}

uint64_t sub_10006A6EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 20);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006A78C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A7EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A85C()
{
  swift_unknownObjectWeakDestroy();
  sub_100004AA0();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A890()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A8F0()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A980()
{

  sub_100004AA0();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006A9B4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006AA24()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006AAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_10000321C(*(a1 + 8));
  }

  v7 = type metadata accessor for JSContent.Request(0);
  v8 = a1 + *(a3 + 24);

  return sub_100009F34(v8, a2, v7);
}

uint64_t sub_10006AB68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for JSContent.Request(0);
    v8 = v5 + *(a4 + 24);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006AC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_10000321C(*(a1 + *(a3 + 20)));
  }

  return sub_100009F34(a1, a2, v6);
}

uint64_t sub_10006ACB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003EFC();
  result = type metadata accessor for URL();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000A7C0(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10006AD8C()
{
  type metadata accessor for Date();
  sub_100002EF0();
  sub_100008004();

  sub_100002C00((v0 + 40));

  v2 = sub_100008428();
  v3(v2);

  v4 = sub_100012C90();

  return _swift_deallocObject(v4);
}

uint64_t sub_10006AE6C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006AEA4()
{

  sub_100002FB8();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006AEE8()
{
  if (*(v0 + 16))
  {
  }

  sub_100002FB8();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006AF28()
{
  type metadata accessor for Date();
  sub_100002EF0();
  sub_100008004();

  sub_100002C00((v0 + 48));
  v2 = sub_100008428();
  v3(v2);

  v4 = sub_100012C90();

  return _swift_deallocObject(v4);
}

uint64_t sub_10006B000()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006B038()
{
  v1 = (type metadata accessor for JSExtension.RequestOptions(0) - 8);
  v2 = (*(*v1 + 80) + 88) & ~*(*v1 + 80);

  sub_100002C00((v0 + 56));
  v3 = v0 + v1[7];
  type metadata accessor for DispatchQoS.QoSClass();
  sub_100002DDC();
  (*(v4 + 8))(v3 + v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006B13C()
{
  type metadata accessor for JSCallable();
  sub_100002EF0();

  v0 = sub_100008428();
  v1(v0);
  v2 = sub_100012C90();

  return _swift_deallocObject(v2);
}

uint64_t sub_10006B1E4()
{
  type metadata accessor for JSCallable();
  sub_100002EF0();

  v0 = sub_100008428();
  v1(v0);
  v2 = sub_100012C90();

  return _swift_deallocObject(v2);
}

uint64_t sub_10006B294()
{
  type metadata accessor for JSCallable();
  sub_100002DDC();
  v1 = sub_10000327C();
  v2(v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006B31C()
{
  type metadata accessor for JSCallable();
  sub_100002DDC();
  v2 = sub_10000327C();
  v3(v2);
  sub_100002C00((v0 + v1));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006B3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for DispatchQoS.QoSClass();

  return sub_100009F34(a1 + v5, a2, v6);
}

uint64_t sub_10006B3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for DispatchQoS.QoSClass();

  return sub_10000A7C0(a1 + v6, a2, a2, v7);
}

uint64_t sub_10006B460()
{
  sub_100004AA0();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006B498()
{
  swift_unknownObjectRelease();
  sub_1000083D8();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006B4CC()
{
  swift_unknownObjectWeakDestroy();
  sub_100004AA0();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006B500()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006B548()
{
  type metadata accessor for JSCallable();
  sub_100002EF0();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v1 + v4, v0);

  return _swift_deallocObject(v1);
}

uint64_t sub_10006B610()
{
  type metadata accessor for JSCallable();
  sub_100002EF0();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v3 + 8))(v1 + v4, v0);

  return _swift_deallocObject(v1);
}

uint64_t sub_10006B6F0()
{

  sub_1000083D8();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006B734()
{
  type metadata accessor for JSCallable();
  sub_100002EF0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v8 = *(v3 + 8);
  v8(v1 + v5, v0);

  v8(v1 + ((v4 + v7 + 8) & ~v4), v0);

  return _swift_deallocObject(v1);
}

uint64_t sub_10006B8A0()
{

  sub_1000083D8();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006B8E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006B91C()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002CC4();
  v4 = v3;
  v5 = *(v3 + 80);
  sub_100007B08();

  v6 = *(v4 + 8);
  v6(v0 + ((v5 + 24) & ~v5), v2);
  v6(v0 + v1, v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006B9F4()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002CC4();
  v4 = v3;
  v5 = *(v3 + 80);
  sub_100007B08();

  v6 = *(v4 + 8);
  v6(v0 + ((v5 + 24) & ~v5), v2);
  v6(v0 + v1, v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006BAD0()
{

  sub_100007600();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006BB20()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006BBB8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006BC04()
{

  sub_1000083D8();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006BC68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006BCA0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006BCE0()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006BD80()
{
  v1 = type metadata accessor for Bag();
  sub_100002CC4();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v6 = (((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  sub_100002C00((v0 + v6));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006BEBC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006BF3C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006BF74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006BFAC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006BFF8()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  v1 = sub_10000327C();
  v2(v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006C07C()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  v2 = sub_10000327C();
  v3(v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006C104()
{
  swift_unknownObjectRelease();

  sub_100004C9C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006C150()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006C188()
{

  sub_100004C9C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006C1DC()
{
  v1 = type metadata accessor for JSCallable();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  swift_unknownObjectRelease();

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006C2F0()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  v1 = sub_10000327C();
  v2(v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006C374()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  v1 = sub_10000327C();
  v2(v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006C3F8()
{
  type metadata accessor for JSCallable();
  sub_100002EF0();
  sub_100007628();

  v0 = sub_100008428();
  v1(v0);
  v2 = sub_100007B40();

  return _swift_deallocObject(v2);
}

uint64_t sub_10006C4A8()
{
  type metadata accessor for JSCallable();
  sub_100002EF0();
  sub_100007628();

  v0 = sub_100008428();
  v1(v0);
  v2 = sub_100007B40();

  return _swift_deallocObject(v2);
}

uint64_t sub_10006C598()
{
  type metadata accessor for JSCallable();
  sub_100002EF0();
  sub_100007628();

  v0 = sub_100008428();
  v1(v0);
  v2 = sub_100007B40();

  return _swift_deallocObject(v2);
}

uint64_t sub_10006C650()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  v1 = sub_10000327C();
  v2(v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006C6D8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006C718()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  v2 = sub_10000327C();
  v3(v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006C79C()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006C838()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006C878()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006C8B0()
{
  v7 = type metadata accessor for JSCallable();
  v1 = *(v7 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + 7 + v3) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = *(v1 + 8);
  v5(v0 + v3, v7);

  v5(v0 + ((v2 + ((((((((((((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2), v7);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006CA6C()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006CAFC()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006CB7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006CBE8()
{
  type metadata accessor for JSCallable();
  sub_1000047A4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006CC78()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006CCB0()
{
  sub_10007B9A4(&qword_10026DFB0, &qword_1001ED6E0);
  sub_100002EF0();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v0);

  return _swift_deallocObject(v1);
}

uint64_t sub_10006CD88()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006CDC0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006CE00()
{
  sub_10007B9A4(&qword_10026C8C0, &qword_1001EBD78);
  sub_100002EF0();
  v3 = v2;
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v0);

  return _swift_deallocObject(v1);
}

uint64_t sub_10006CEF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006CF28()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006CF70()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006CFF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006D028()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006D070()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  v1 = sub_10000327C();
  v2(v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006D0F4()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  v2 = sub_10000327C();
  v3(v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006D188()
{

  sub_100007600();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006D1D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006D238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for URL();
  sub_100005C6C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_100009F34(v9, a2, v8);
  }

  sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100005C6C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 48));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_10006D330(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for URL();
  sub_100005C6C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
    sub_100005C6C();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 48)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_10000A7C0(v11, a2, a2, v10);
}

uint64_t sub_10006D49C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006D4E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006D520()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  v2 = sub_10000327C();
  v3(v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006D5A4()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  v1 = sub_10000327C();
  v2(v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006D630()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006D668()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006D6A4()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006D724()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006D7A0()
{
  sub_100007A3C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006D848()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006D884()
{
  type metadata accessor for JSCallable();
  sub_100002EF0();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v1 + v4, v0);

  return _swift_deallocObject(v1);
}

uint64_t sub_10006D9CC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006DA4C()
{
  sub_100002C00((v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006DB34(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    updated = type metadata accessor for MercuryCacheUpdateInput(0);
    if (*(*(updated - 8) + 84) == a2)
    {
      v9 = updated;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = type metadata accessor for Date();
      v10 = *(a3 + 36);
    }

    return sub_100009F34(a1 + v10, a2, v9);
  }
}

void *sub_10006DC00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    updated = type metadata accessor for MercuryCacheUpdateInput(0);
    if (*(*(updated - 8) + 84) == a3)
    {
      v9 = updated;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = type metadata accessor for Date();
      v10 = *(a4 + 36);
    }

    return sub_10000A7C0(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_10006DCDC()
{
  sub_100004E28();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Date();

  return sub_100009F34(v1 + v3, v0, v4);
}

uint64_t sub_10006DD2C()
{
  sub_100004E28();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Date();

  return sub_10000A7C0(v1 + v3, v0, v0, v4);
}

uint64_t sub_10006DD80(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_10000B26C();
  }

  type metadata accessor for Date();
  v5 = sub_10000A64C(*(a3 + 20));

  return sub_100009F34(v5, v6, v7);
}

void sub_10006DDF4()
{
  sub_100004E28();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for Date();
    v5 = sub_10000A64C(*(v4 + 20));

    sub_10000A7C0(v5, v6, v0, v7);
  }
}

uint64_t sub_10006DE94(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_10000B26C();
  }

  if (*(*(type metadata accessor for Date() - 8) + 84) == a2)
  {
    v5 = *(a3 + 20);
  }

  else
  {
    sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
    v5 = *(a3 + 28);
  }

  v6 = sub_10000A64C(v5);

  return sub_100009F34(v6, v7, v8);
}

void sub_10006DF58()
{
  sub_100004E28();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    if (*(*(type metadata accessor for Date() - 8) + 84) == v2)
    {
      v5 = *(v4 + 20);
    }

    else
    {
      sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
      v5 = *(v4 + 28);
    }

    v6 = sub_10000A64C(v5);

    sub_10000A7C0(v6, v7, v0, v8);
  }
}

uint64_t sub_10006E024()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E074()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E0BC()
{

  sub_100002C00((v0 + 32));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_10000321C(*(a1 + *(a3 + 24) + 8));
  }

  v7 = v6;
  v8 = a1 + *(a3 + 20);

  return sub_100009F34(v8, a2, v7);
}

uint64_t sub_10006E1B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_10000A7C0(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10006E26C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 32);

    return sub_100009F34(v9, a2, v8);
  }
}

void *sub_10006E2F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 32);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006E374()
{
  swift_unknownObjectRelease();
  sub_100002C00((v0 + 24));
  sub_100007600();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006E3B0()
{
  swift_unknownObjectRelease();
  sub_100002C00((v0 + 24));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E3F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 20);

    return sub_100009F34(v9, a2, v8);
  }
}

void *sub_10006E480(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

unint64_t *sub_10006E500(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_100169544(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_10006E588()
{
  swift_unknownObjectRelease();
  sub_100002C00((v0 + 32));
  swift_unknownObjectRelease();
  sub_100002C00((v0 + 112));
  sub_10016BA80(*(v0 + 152), *(v0 + 160), *(v0 + 168));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E61C()
{
  sub_100002C00((v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E654()
{

  sub_100007A3C();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E698()
{

  sub_100004AA0();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E6CC()
{

  swift_unknownObjectRelease();
  v0 = sub_10000B284();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E714()
{

  sub_100004AA0();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E74C()
{

  v1 = sub_10000B284();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006E794()
{

  swift_unknownObjectRelease();
  v1 = sub_10000B284();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006E804()
{

  sub_100002FB8();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E838()
{

  sub_100002FB8();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E888()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E938()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E978()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E9B4()
{
  swift_weakDestroy();
  v0 = sub_100005254();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006E9E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006EA50()
{
  v1 = type metadata accessor for URL();
  sub_100002CC4();
  v3 = v2;
  v4 = (*(v2 + 80) + 176) & ~*(v2 + 80);
  sub_10000557C();
  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006EB68()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006EBB0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006EC58()
{
  sub_100002C00((v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10006ECA0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006ED18()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006ED58()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006EE00(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_10000321C(*a1);
  }

  type metadata accessor for ScheduleInfo.Metadata(0);
  v5 = sub_10000A64C(*(a3 + 20));

  return sub_100009F34(v5, v6, v7);
}

void *sub_10006EE78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for ScheduleInfo.Metadata(0);
    v6 = sub_10000A64C(*(a4 + 20));

    return sub_10000A7C0(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_10006EEF4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006EF4C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006EFD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006F00C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006F0BC()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100005254();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F0EC()
{
  swift_unknownObjectRelease();

  v1 = sub_100008FD8();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F12C()
{
  swift_unknownObjectRelease();

  v1 = sub_100016440();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F174()
{

  sub_10005E280();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F1D0()
{

  sub_10005E280();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F22C()
{

  v1 = sub_10005AE40();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F280()
{

  sub_100018124();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F2D4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_10006F2E8(a1, a2);
  }

  return a1;
}

uint64_t sub_10006F2E8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10006F2FC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006F35C()
{

  sub_100018124();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F3B4()
{

  v0 = sub_1000074E4();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006F3E4()
{

  v1 = sub_10000B284();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F424()
{

  v1 = sub_10000B284();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F464()
{

  v1 = sub_100009010();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F4AC()
{

  v1 = sub_10000B284();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F4E4()
{
  swift_unknownObjectRelease();

  v1 = sub_100016440();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F530()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100005254();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006F560()
{

  v1 = sub_1000074E4();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F598()
{
  v1 = sub_1000074E4();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F5C8()
{
  swift_unknownObjectRelease();

  v1 = sub_10000B284();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F600()
{

  v1 = sub_10005AE40();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F650()
{

  v1 = sub_10005AE40();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F6A0()
{
  v1 = sub_1000074E4();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F6D8()
{

  v1 = sub_100009010();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F728()
{

  v1 = sub_100008FD8();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F768()
{

  v1 = sub_10000B284();

  return _swift_deallocObject(v1);
}

uint64_t sub_10006F81C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006F884()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006F96C()
{

  sub_100002FB8();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006F9A0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006F9D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006FA10()
{

  if (*(v0 + 56))
  {
    sub_100002C00((v0 + 32));
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10006FA8C()
{
  v1 = type metadata accessor for OSSignpostID();
  sub_100002CC4();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006FBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100009F34(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10006FC9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000A7C0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10006FDE8()
{

  sub_100007A3C();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006FE3C()
{

  sub_100004AA0();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006FE7C()
{
  if (*(v0 + 40))
  {
    sub_100002C00((v0 + 16));
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10006FEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100009F34(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10006FF6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000A7C0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100070044()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0);
}

uint64_t sub_100070088()
{
  if (*(v0 + 16))
  {
  }

  sub_100002FB8();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000700F4()
{

  v0 = sub_10000B284();

  return _swift_deallocObject(v0);
}

uint64_t sub_10007013C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000701FC()
{
  v1 = type metadata accessor for Notification();
  sub_100002CC4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_1000702B4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000702EC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100070354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_1000703A0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000703D8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_100070410()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100070450()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10007059C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0);
}

uint64_t sub_1000705EC()
{

  return _swift_deallocObject(v0);
}

void sub_1000719CC(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = 138543874;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error posting notification: %{public}@", &v9, 0x20u);
    }
  }
}

id sub_100072030()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100272B00;
  v7 = qword_100272B00;
  if (!qword_100272B00)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10007325C;
    v3[3] = &unk_1002440C8;
    v3[4] = &v4;
    sub_10007325C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000720F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100072110(uint64_t a1, void *a2)
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100072398;
  v16[3] = &unk_100243FC0;
  v17 = *(a1 + 32);
  v4 = [a2 ams_firstObjectPassingTest:v16];
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = [v4 familyID];
      *buf = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Arcade entitlement found, user is a subscriber. Entitlement.familyID = %{public}@", buf, 0x20u);
    }

    [*(a1 + 48) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v6 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      *buf = 138543618;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No Arcade entitlement found, user is not subscribed.", buf, 0x16u);
    }

    v14 = *(a1 + 48);
    v15 = AMSError();
    [v14 finishWithError:v15];
  }
}

uint64_t sub_100072398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 familyID];
  v5 = [v4 stringValue];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  v7 = [v3 expiryDate];

  v8 = +[NSDate date];
  v9 = [v7 compare:v8];

  if (v9 == -1)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void sub_100072608(uint64_t a1, void *a2)
{
  v3 = [a2 ams_firstObjectPassingTest:&stru_100244028];
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = [v3 familyID];
      v15 = 138543874;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fitness+ entitlement found, user is a subscriber. Entitlement.familyID = %{public}@", &v15, 0x20u);
    }

    [*(a1 + 40) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v5 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No Fitness+ entitlement found, user is not subscribed.", &v15, 0x16u);
    }

    v13 = *(a1 + 40);
    v14 = AMSError();
    [v13 finishWithError:v14];
  }
}

BOOL sub_100072838(id a1, ASDSubscriptionEntitlement *a2)
{
  v2 = [(ASDSubscriptionEntitlement *)a2 expiryDate];
  v3 = +[NSDate date];
  v4 = [v2 compare:v3] != -1;

  return v4;
}

void sub_100072AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100072B10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 statusType];
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v6 = v5;
  if (v4 == 1)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 statusType]);
      v17 = 138543874;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Music subscription enabled, user is a subscriber. StatusType = %{public}@", &v17, 0x20u);
    }

    [*(a1 + 40) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v6 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 statusType]);
      v17 = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Music subscription not enabled, user is not subscribed. StatusType = %{public}@", &v17, 0x20u);
    }

    v15 = *(a1 + 40);
    v16 = AMSError();
    [v15 finishWithError:v16];
  }
}

void sub_100072FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100072FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isTVPlusSubscriber];
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isTVPlusSubscriber]);
      v17 = 138543874;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] TV subscription enabled, user is a subscriber. SubscriptionData.isTVPlusSubscriber = %{public}@", &v17, 0x20u);
    }

    [*(a1 + 40) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v6 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isTVPlusSubscriber]);
      v17 = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] TV subscription not enabled, user is not subscribed. SubscriptionData.isTVPlusSubscriber = %{public}@", &v17, 0x20u);
    }

    v15 = *(a1 + 40);
    v16 = AMSError();
    [v15 finishWithError:v16];
  }
}

Class sub_10007325C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100272B08)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000733A0;
    v4[4] = &unk_100244100;
    v4[5] = v4;
    v5 = off_1002440E8;
    v6 = 0;
    qword_100272B08 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100272B08)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ASDSubscriptionEntitlements");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001DA6A0();
  }

  qword_100272B00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000733A0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100272B08 = result;
  return result;
}

Class sub_100073414(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100272B18)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100073558;
    v4[4] = &unk_100244100;
    v4[5] = v4;
    v5 = off_100244120;
    v6 = 0;
    qword_100272B18 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100272B18)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ICMusicSubscriptionStatusController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001DA6C8();
  }

  qword_100272B10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100073558(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100272B18 = result;
  return result;
}

Class sub_1000735CC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100272B28)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100073710;
    v4[4] = &unk_100244100;
    v4[5] = v4;
    v5 = off_100244138;
    v6 = 0;
    qword_100272B28 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100272B28)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("WLKSubscriptionStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001DA6F0();
  }

  qword_100272B20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100073710(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100272B28 = result;
  return result;
}

void sub_100073818(void *a1)
{
  v2 = objc_begin_catch(a1);
  if (v1)
  {
    *v1 = v2;
  }

  objc_end_catch();
  JUMPOUT(0x1000737F0);
}

uint64_t sub_100073890(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736B6E696C707061 && a2 == 0xE800000000000000)
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

Swift::Int sub_100073930(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100073974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100073890(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000739BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001676C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000739E8(uint64_t a1)
{
  v2 = sub_10007B9EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100073A24(uint64_t a1)
{
  v2 = sub_10007B9EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100073A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003CEC(a1, a2, a3, a4);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v6)
    {
      return 0;
    }

    sub_10000821C();
    sub_1001C49D8();
    sub_10001BD44();
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5 == 3)
  {
    if (v4 == 3)
    {
      return 1;
    }
  }

  else if (v4 != 3)
  {
    if (v5 == 2)
    {
      sub_100003EF0();
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      sub_100003EF0();
      if (v10 || ((v4 ^ v5) & 1) != 0)
      {
        return 0;
      }
    }

    if (BYTE1(v5) == 2)
    {
      if (BYTE1(v4) == 2)
      {
        return 1;
      }
    }

    else if (BYTE1(v4) != 2 && ((BYTE1(v4) ^ BYTE1(v5)) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

void sub_100073B38()
{
  sub_100007E34();
  v2 = v1;
  v3 = sub_10007B9A4(&qword_100269040, &qword_1001E4F60);
  sub_100002CC4();
  v5 = v4;
  sub_100004E78();
  __chkstk_darwin(v6);
  sub_100006724();
  sub_100003CA8(v2, v2[3]);
  sub_10007B9EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10007BA40();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v5 + 8))(v0, v3);
  sub_100005B78();
}

uint64_t sub_100073C70(void *a1)
{
  sub_10007B9A4(&qword_100269178, &qword_1001E4FA0);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v3);
  sub_10000A264(a1);
  v4 = sub_10007B9EC();
  sub_10000AE18(&type metadata for AASA.AASAContainer.CodingKeys, v5, v4);
  if (!v1)
  {
    sub_10007C360();
    sub_10000A7E8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = sub_100009DB0();
    v7(v6);
  }

  sub_100002C00(a1);
  return sub_10000569C();
}

uint64_t sub_100073DB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C6961746564 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001001F31F0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73746C7561666564 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100073ED4(char a1)
{
  if (!a1)
  {
    return 0x736C6961746564;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x73746C7561666564;
}

void sub_100073F30()
{
  sub_100007E34();
  v3 = v2;
  v4 = sub_10007B9A4(&qword_1002692A8, &qword_1001E5CF8);
  sub_100002CC4();
  v6 = v5;
  sub_100004E78();
  __chkstk_darwin(v7);
  sub_10000710C();
  sub_100003CA8(v3, v3[3]);
  sub_10007D294();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10007B9A4(&qword_1002692B8, &unk_1001E5D00);
  sub_10007D2E8();
  sub_10003D2C0();
  sub_100007814();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    sub_1000060B8();
    sub_10007B9A4(&qword_1002692D0, &unk_1001E70E0);
    sub_10007D5C4(&unk_1002692D8);
    sub_10003D2C0();
    sub_100007814();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000115B8();
    sub_10007BFE8();
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v6 + 8))(v1, v4);
  sub_100005B78();
}

void sub_100074114(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_1000797A8(a1, a2);
  if (a3)
  {
    Hasher._combine(_:)(1u);
    v6 = sub_100007828();
    sub_100079B7C(v6, v7);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (a4 == 3 || ((Hasher._combine(_:)(1u), a4 != 2) ? (Hasher._combine(_:)(1u), v8 = a4 & 1) : (v8 = 0), Hasher._combine(_:)(v8), BYTE1(a4) == 2))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v9 = (a4 >> 8) & 1;
  }

  Hasher._combine(_:)(v9);
}

Swift::Int sub_1000741C0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_100004750();
  sub_100074114(v7, a1, a2, a3);
  return Hasher._finalize()();
}

void sub_100074218()
{
  sub_100007E34();
  v1 = v0;
  sub_10007B9A4(&qword_100269310, &qword_1001E5D28);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v2);
  sub_10000A264(v1);
  v3 = sub_10007D294();
  sub_10000AE18(&type metadata for AASA.AppLinks.CodingKeys, v4, v3);
  sub_10007B9A4(&qword_1002692B8, &unk_1001E5D00);
  sub_10007D4EC();
  sub_10000616C();
  sub_10000A7E8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10007B9A4(&qword_1002692D0, &unk_1001E70E0);
  sub_1000060B8();
  sub_10007D5C4(&unk_100269328);
  sub_10000616C();
  sub_10000A7E8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000115B8();
  sub_10007BDE4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v5 = sub_100009DB0();
  v6(v5);
  sub_100002C00(v1);
  sub_100005B78();
}

uint64_t sub_100074468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x734449707061 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73746C7561666564 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E45737961776C61 && a2 == 0xED000064656C6261;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001001F31D0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65766974616C6572 && a2 == 0xED0000726564724FLL)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100074674(char a1)
{
  result = 0x734449707061;
  switch(a1)
  {
    case 1:
      result = 0x6E656E6F706D6F63;
      break;
    case 2:
      result = 0x73746C7561666564;
      break;
    case 3:
      result = 0x6E45737961776C61;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x65766974616C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100074744(uint64_t a1, uint64_t a2)
{
  sub_100012EF8(a1);
  if ((sub_1001CB0F4() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = sub_10000821C();
    sub_1001C3B70(v6, v7);
    sub_10001BD44();
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = *(v2 + 16);
  v9 = *(a2 + 16);
  v10 = *(a2 + 16);
  if (*(v2 + 16) == 3)
  {
    if (v10 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == 3)
    {
      return 0;
    }

    if (*(v2 + 16) == 2)
    {
      if (*(a2 + 16) != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (*(a2 + 16) == 2 || ((v9 ^ v8) & 1) != 0)
      {
        return result;
      }
    }

    if (v8 >> 8 == 2)
    {
      if (v9 >> 8 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = sub_10001CB10();
      if (v14 || ((v18 ^ v19) & 1) != 0)
      {
        return result;
      }
    }
  }

  if (*(v2 + 18) == 2)
  {
    if (*(a2 + 18) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_10001CB10();
    if (v14 || ((v12 ^ v13) & 1) != 0)
    {
      return result;
    }
  }

  if (*(v2 + 19) == 2)
  {
    if (*(a2 + 19) != 2)
    {
      return 0;
    }

    goto LABEL_30;
  }

  result = sub_10001CB10();
  if (!v14 && ((v15 ^ v16) & 1) == 0)
  {
LABEL_30:
    v17 = *(a2 + 32);
    if ((*(v2 + 32) & 1) == 0)
    {
      if (*(v2 + 24) != *(a2 + 24))
      {
        v17 = 1;
      }

      return (v17 & 1) == 0;
    }

    return (*(a2 + 32) & 1) != 0;
  }

  return result;
}

uint64_t sub_1000748C4(void *a1)
{
  v4 = sub_10007B9A4(&qword_1002690E8, &qword_1001E4F80);
  sub_100002CC4();
  v6 = v5;
  sub_100004E78();
  __chkstk_darwin(v7);
  sub_10000710C();
  sub_10000A264(a1);
  v8 = sub_10007BB98();
  sub_100018174(&type metadata for AASA.Detail.CodingKeys, v9, v8);
  sub_10007B9A4(&qword_1002690B0, &qword_1001E4F70);
  sub_10007BE38();
  sub_10003D2C0();
  sub_100007814();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    sub_10007B9A4(&qword_1002690C8, &qword_1001E4F78);
    sub_10007BF10();
    sub_10003D2C0();
    sub_100007814();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10007BFE8();
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_100074AD8(void *a1)
{
  sub_100079A44(a1, *v1);
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    v2 = sub_100007828();
    sub_10007A648(v2, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = *(v1 + 16);
  v5 = *(v1 + 16);
  if (v5 == 3 || ((Hasher._combine(_:)(1u), v5 != 2) ? (Hasher._combine(_:)(1u), v6 = v4 & 1) : (v6 = 0), Hasher._combine(_:)(v6), v4 >> 8 == 2))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = (v4 >> 8) & 1;
  }

  Hasher._combine(_:)(v7);
  v8 = *(v1 + 18);
  if (v8 == 2)
  {
    v9 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v9 = v8 & 1;
  }

  Hasher._combine(_:)(v9);
  v10 = *(v1 + 19);
  if (v10 == 2)
  {
    v11 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v11 = v10 & 1;
  }

  Hasher._combine(_:)(v11);
  if (*(v1 + 32) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v12 = *(v1 + 24);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v12);
  }
}

Swift::Int sub_100074C08()
{
  sub_100004750();
  sub_100074AD8(v1);
  return Hasher._finalize()();
}

void sub_100074C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100007E34();
  v13 = v12;
  v15 = v14;
  v16 = sub_10007B9A4(&qword_1002690A0, &qword_1001E4F68);
  sub_100002CC4();
  v18 = v17;
  sub_100004E78();
  __chkstk_darwin(v19);
  sub_100006724();
  sub_100003CA8(v13, v13[3]);
  sub_10007BB98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    sub_100002C00(v13);
  }

  else
  {
    sub_10007B9A4(&qword_1002690B0, &qword_1001E4F70);
    sub_10007BBEC();
    sub_10000616C();
    sub_1000086E0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10007B9A4(&qword_1002690C8, &qword_1001E4F78);
    sub_1000060B8();
    sub_10007BD0C();
    sub_10000616C();
    sub_1000086E0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000115B8();
    sub_10007BDE4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100019B18(3);
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100019B18(4);
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100019B18(5);
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21 = v11;
    v23 = v22;
    (*(v18 + 8))(v21, v16);

    sub_100002C00(v13);

    *v15 = a10;
    *(v15 + 8) = a10;
    *(v15 + 16) = a10;
    *(v15 + 18) = v25;
    *(v15 + 19) = v24;
    *(v15 + 24) = v20;
    *(v15 + 32) = v23 & 1;
  }

  sub_100005B78();
}

unint64_t sub_100074F04(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244208, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100074F54(char a1)
{
  result = 47;
  switch(a1)
  {
    case 1:
      result = 63;
      break;
    case 2:
      result = 35;
      break;
    case 3:
      result = 0x45746E6563726570;
      break;
    case 4:
      result = 0x6564756C637865;
      break;
    case 5:
      result = 0x736E655365736163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100074FF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100073C70(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100075070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100073DB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000750B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100073ECC();
  *a1 = result;
  return result;
}

uint64_t sub_1000750E0(uint64_t a1)
{
  v2 = sub_10007D294();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007511C(uint64_t a1)
{
  v2 = sub_10007D294();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100075158(uint64_t a1@<X8>)
{
  sub_100074218();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

Swift::Int sub_1000751B4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  sub_100074114(v6, v2, v3, v4);
  return Hasher._finalize()();
}

Swift::Int sub_100075230(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10007527C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100074468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000752A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007466C();
  *a1 = result;
  return result;
}

uint64_t sub_1000752CC(uint64_t a1)
{
  v2 = sub_10007BB98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100075308(uint64_t a1)
{
  v2 = sub_10007BB98();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100075344@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_100074C40(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  if (!v9)
  {
    result = *&v13;
    *a9 = v13;
    *(a9 + 16) = v14;
    *(a9 + 32) = v15;
  }

  return result;
}

Swift::Int sub_1000753AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100074AD8(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100075428()
{
  sub_100004750();
  sub_10000A240();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10007548C()
{
  sub_100004750();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100075540()
{
  v0 = sub_100004750();
  sub_100007370(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100075588()
{
  v0 = sub_100004750();
  sub_100007370(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100075628()
{
  v0 = sub_100004750();
  sub_100007370(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000756A0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_100004750();
  v4 = a2(a1);
  sub_100017CCC(v4, v5, v6);

  return Hasher._finalize()();
}

Swift::Int sub_100075714(unsigned __int8 a1)
{
  sub_100004750();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10007576C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_100004750();
  a2(v5, a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000757B4(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_100075844(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100075928(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1000759D4(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100075AA8(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_100002CE8();
  }

  String.hash(into:)();
}

uint64_t sub_100075B20(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100075B90(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100075C48(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_100002CE8();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_100075D08(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_10000AAB4();
  }

  else
  {
    sub_10000C2D4();
  }

  String.hash(into:)();
}

uint64_t sub_100075D60(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100075DC0(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100075E20(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100075E80(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100075F54(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100076014(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1000760AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  sub_10003AE2C(v3, v4);
}

uint64_t sub_1000760F0(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_10000B2B0();
  }

  String.hash(into:)();
}

uint64_t sub_100076170(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1000762A4(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int sub_100076344(uint64_t a1)
{
  v2 = sub_100005E94(a1);
  if (v1)
  {
    v4 = 0x566B63617074656ALL;
  }

  else
  {
    v4 = 0x6B63617074656ALL;
  }

  sub_10001CC78(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1000763D0(uint64_t a1)
{
  v2 = sub_100005E94(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x696577746867696CLL;
    }

    else
    {
      v4 = 1668184435;
    }
  }

  else
  {
    sub_10000B2B0();
  }

  sub_10001CC78(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_100076454(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100076498(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  sub_100007370(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000764E4(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  sub_100007370(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100076530(uint64_t a1)
{
  sub_100005E94(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100076594(uint64_t a1)
{
  v2 = sub_100005E94(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 1936748641;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    sub_100002CE8();
  }

  sub_10001CC78(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_100076640(uint64_t a1)
{
  v2 = sub_100005E94(a1);
  if (v1)
  {
    v4 = 25705;
  }

  else
  {
    v4 = 0x7374656B637562;
  }

  sub_10001CC78(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1000766A4(uint64_t a1)
{
  v2 = sub_100005E94(a1);
  if (v1)
  {
    v4 = 25705;
  }

  else
  {
    v4 = 0x73644961657261;
  }

  sub_10001CC78(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_100076708(uint64_t a1)
{
  v2 = sub_100005E94(a1);
  if (v1)
  {
    v4 = 0x73644961657261;
  }

  else
  {
    v4 = 25705;
  }

  sub_10001CC78(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_10007676C(uint64_t a1)
{
  sub_100005E94(a1);
  if (v1)
  {
    sub_10000AAB4();
  }

  else
  {
    sub_10000C2D4();
  }

  sub_10001CC78(v2, v3, v4);

  return Hasher._finalize()();
}

Swift::Int sub_100076810(uint64_t a1)
{
  v2 = sub_100005E94(a1);
  if (v1)
  {
    v4 = 0x656C646E61686E75;
  }

  else
  {
    v4 = 0x726F727265;
  }

  sub_10001CC78(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_100076884(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1000768E0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10000A240();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100076938(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a3(v6, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10007699C(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  sub_100007370(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000769E8(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t sub_100076A2C()
{
  sub_100004E28();
  v3 = *(v2 + 8);
  v4 = *(v0 + 8);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *v1 == *v0 && v3 == v4;
    if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v6 = *(v1 + 16);
  v7 = *(v0 + 16);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_10000821C();
    sub_1001C4B20();
    sub_10001BD44();
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(v1 + 32);
  v9 = *(v0 + 32);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *(v1 + 24) == *(v0 + 24) && v8 == v9;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  if (*(v1 + 40) == 2)
  {
    if (*(v0 + 40) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_10001CB10();
    if (v5 || ((v12 ^ v13) & 1) != 0)
    {
      return result;
    }
  }

  if (*(v1 + 41) == 2)
  {
    if (*(v0 + 41) != 2)
    {
      return 0;
    }

LABEL_34:
    v16 = *(v1 + 42);
    v17 = *(v0 + 42);
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

    return 1;
  }

  result = sub_10001CB10();
  if (!v5 && ((v14 ^ v15) & 1) == 0)
  {
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_100076B84(void *a1)
{
  v4 = sub_10007B9A4(&qword_100269150, &qword_1001E4F98);
  sub_100002CC4();
  v6 = v5;
  sub_100004E78();
  __chkstk_darwin(v7);
  sub_10000710C();
  sub_10000A264(a1);
  v8 = sub_10007C03C();
  sub_100018174(&type metadata for AASA.Component.CodingKeys, v9, v8);
  sub_10007C1F4();
  sub_10000B648();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    sub_1000060B8();
    sub_10007B9A4(&qword_100269130, &qword_1001E4F90);
    sub_10007C248(&unk_100269160);
    sub_100007814();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000115B8();
    sub_10007C30C();
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_100076DB4()
{
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    sub_10000569C();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + 16))
  {
    Hasher._combine(_:)(1u);
    v1 = sub_100007828();
    sub_100079CF0(v1, v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + 32))
  {
    Hasher._combine(_:)(1u);
    sub_10000569C();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = *(v0 + 40);
  if (v3 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = v3 & 1;
  }

  Hasher._combine(_:)(v4);
  v5 = *(v0 + 41);
  if (v5 == 2)
  {
    v6 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v6 = v5 & 1;
  }

  Hasher._combine(_:)(v6);
  v7 = *(v0 + 42);
  if (v7 == 2)
  {
    v8 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v8 = v7 & 1;
  }

  Hasher._combine(_:)(v8);
}

Swift::Int sub_100076EC8()
{
  sub_100004750();
  sub_100076DB4();
  return Hasher._finalize()();
}

void sub_100076F00()
{
  sub_100007E34();
  v2 = v1;
  v4 = v3;
  sub_10007B9A4(&qword_100269118, &qword_1001E4F88);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v5);
  sub_100006724();
  sub_100003CA8(v2, v2[3]);
  sub_10007C03C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100002C00(v2);
  }

  else
  {
    sub_10007C090();
    sub_100005B6C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v6 = v19;
    sub_10007B9A4(&qword_100269130, &qword_1001E4F90);
    sub_10007C248(&unk_100269138);
    sub_100005B6C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v14 = v18;
    v15 = v18;
    sub_10007C138();
    sub_100005B6C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v12 = v18;
    v13 = v19;
    sub_100005B6C();
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v18) = 4;
    sub_100005B6C();
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100005B6C();
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v8 = sub_10000BD18();
    v9(v8);
    v16 = __PAIR128__(v19, v14);
    *v17 = v15;
    *&v17[8] = v12;
    *&v17[16] = v19;
    v17[24] = v26;
    v17[25] = v11;
    v17[26] = v7;
    sub_10007C18C(&v16, &v18);
    sub_100002C00(v2);
    v18 = v14;
    v19 = v6;
    v20 = v15;
    v21 = v12;
    v22 = v13;
    v23 = v26;
    v24 = v11;
    v25 = v7;
    sub_10007C1C4(&v18);
    v10 = *v17;
    *v4 = v16;
    v4[1] = v10;
    *(v4 + 27) = *&v17[11];
  }

  sub_100005B78();
}

uint64_t sub_100077294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E655365736163 && a2 == 0xED00006576697469;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45746E6563726570 && a2 == 0xEE006465646F636ELL)
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

Swift::Int sub_100077374(char a1)
{
  sub_100004750();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_1000773B4(char a1)
{
  if (a1)
  {
    return 0x45746E6563726570;
  }

  else
  {
    return 0x736E655365736163;
  }
}

uint64_t sub_100077404(int a1, int a2)
{
  if (a1 == 2)
  {
    if (a2 != 2)
    {
      return 0;
    }

LABEL_6:
    if (BYTE1(a1) == 2)
    {
      if (BYTE1(a2) != 2)
      {
        return 0;
      }
    }

    else if (BYTE1(a2) == 2 || ((BYTE1(a2) ^ BYTE1(a1)) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (a2 != 2 && ((a2 ^ a1) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100077478(void *a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269308, &qword_1001E5D20);
  sub_100002CC4();
  v6 = v5;
  sub_100004E78();
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  sub_10000A264(a1);
  v10 = sub_10007D498();
  sub_100018174(&type metadata for AASA.Default.CodingKeys, v11, v10);
  v13[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v4);
}

void sub_1000775B8(uint64_t a1, unsigned int a2)
{
  v3 = BYTE1(a2);
  if (a2 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = a2 & 1;
  }

  Hasher._combine(_:)(v4);
  if (v3 == 2)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = (a2 >> 8) & 1;
  }

  Hasher._combine(_:)(v5);
}

Swift::Int sub_10007762C(unsigned int a1)
{
  sub_100004750();
  sub_1000775B8(v3, a1);
  return Hasher._finalize()();
}

uint64_t sub_10007766C(void *a1)
{
  sub_10007B9A4(&qword_1002692F8, &qword_1001E5D18);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v3);
  v4 = a1[3];
  sub_10000A264(a1);
  v5 = sub_10007D498();
  sub_10000AE18(&type metadata for AASA.Default.CodingKeys, v6, v5);
  if (v1)
  {
    sub_100002C00(a1);
  }

  else
  {
    sub_10000A7E8();
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10000A7E8();
    v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9 = sub_100009DB0();
    v10(v9);
    sub_100002C00(a1);
    return v7 | (v8 << 8);
  }

  return v4;
}

unint64_t sub_1000777D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100074F04(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100077808@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100074F54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10007783C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100074F50(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100077870(uint64_t a1)
{
  v2 = sub_10007C03C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000778AC(uint64_t a1)
{
  v2 = sub_10007C03C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000778E8@<D0>(_OWORD *a1@<X8>)
{
  sub_100076F00();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = *v5;
    result = *&v5[11];
    *(a1 + 27) = *&v5[11];
  }

  return result;
}

Swift::Int sub_10007794C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100076DB4();
  return Hasher._finalize()();
}

uint64_t sub_100077994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100077294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000779BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007736C();
  *a1 = result;
  return result;
}

uint64_t sub_1000779E4(uint64_t a1)
{
  v2 = sub_10007D498();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077A20(uint64_t a1)
{
  v2 = sub_10007D498();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100077A5C@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_10007766C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_100077AB4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1000775B8(v4, v2);
  return Hasher._finalize()();
}

uint64_t sub_100077B04()
{
  v1 = *v0;

  return v1;
}

void sub_100077B34(void *a1@<X8>)
{
  nullsub_1();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100077B64(uint64_t a1)
{
  v2 = sub_10007BB44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077BA0(uint64_t a1)
{
  v2 = sub_10007BB44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100077BDC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100077C08(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_100077C08(void *a1)
{
  sub_100003CA8(a1, a1[3]);
  sub_100004A74();
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_100002C00(a1);
  }

  else
  {
    sub_100003CA8(v5, v5[3]);
    sub_100004A74();
    v1 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_100002C00(v5);
    sub_100002C00(a1);
  }

  return v1;
}

uint64_t sub_100077CB4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100003CA8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100046CB8(v4, v4[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100002C00(v4);
}

uint64_t sub_100077D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

Swift::Int sub_100077D70()
{
  sub_100004E28();
  sub_100004750();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100077DB4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100077E00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t variable initialization expression of PriorityQueue.runningWorkers()
{
  type metadata accessor for Worker();

  return Dictionary.init(dictionaryLiteral:)();
}

void sub_100077FC4()
{
  sub_100007E28();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_100077FEC@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of SQLRow.stmt();
  *a1 = result;
  return result;
}

uint64_t sub_100078014(uint64_t a1)
{
  v2 = sub_100002CD8(a1);
  result = sub_100187344(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_10007809C()
{
  v1 = sub_100007E28();
  result = j_j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000780C4(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100269088);
  v3 = sub_100048A70(&unk_100269090);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100078194(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100269290);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100078200(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100269290);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10007826C(void *a1, uint64_t a2)
{
  v4 = sub_100048A70(&qword_100269290);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000782FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100048A70(&qword_100269290);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10007838C(uint64_t a1)
{
  v2 = sub_100048A70(&qword_10026F8E0);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000783F8(uint64_t a1)
{
  v2 = sub_100048A70(&qword_10026F8E0);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100078464(void *a1, uint64_t a2)
{
  v4 = sub_100048A70(&qword_10026F8E0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000784F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100048A70(&qword_10026F8E0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100078570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000785FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100077E00(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100078624(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100268B70);
  v3 = sub_100048A70(&unk_100268B78);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100078770(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100269078);
  v3 = sub_100048A70(&unk_100269080);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10007882C(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100268B58);
  v3 = sub_100048A70(&unk_100268B60);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000788E8(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100268B48);
  v3 = sub_100048A70(&unk_100268B50);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000789A4(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100269188);
  v3 = sub_100048A70(&unk_100269190);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100078D30(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100269260);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100078D9C(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100269260);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100078E08(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100269290);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100078E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100048A70(&qword_100269290);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100078EF8(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100269340);
  v3 = sub_100048A70(&unk_100269348);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100078FB4@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100078FE0(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100269058);
  v3 = sub_100048A70(&unk_100269060);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10007909C@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000790E4(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100269068);
  v3 = sub_100048A70(&unk_100269070);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000791A0(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100268FF0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10007920C(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100268FF0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100079278(uint64_t a1)
{
  v2 = sub_100048A70(&qword_10026F8E0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000792E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100048A70(&qword_10026F8E0);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000793BC(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10003AE2C(v2, v3);
}

void sub_1000793FC(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  Hasher._finalize()();
  sub_100004E5C();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_5:
      sub_10000DCD8();
      v13 = *(*(a2 + 48) + 24 * (v12 | (v11 << 6)) + 16);
      Hasher.init(_seed:)();

      sub_100003B18(__srca);

      sub_100079558(__srca, v13);

      v14 = Hasher._finalize()();

      v8 ^= v14;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      Hasher._combine(_:)(0);
      return;
    }

    ++v9;
    if (*(a2 + 56 + 8 * v10))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_100079558(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  Hasher._finalize()();
  v21 = a2;
  v3 = a2 + 56;
  sub_100004E5C();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  do
  {
    v24 = v9;
LABEL_7:
    v12 = *(v21 + 48) + 48 * (__clz(__rbit64(v6)) | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 25);
    v22 = *(v12 + 32);
    v23 = *(v12 + 40);
    Hasher.init(_seed:)();

    sub_100079A44(__srca, v13);
    if (v14)
    {
      Hasher._combine(_:)(1u);
      sub_10007A648(__srca, v14);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v15)
    {
      Hasher._combine(_:)(1u);
      sub_100079B7C(__srca, v15);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v16 == 2)
    {
      v18 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v18 = v16 & 1;
    }

    Hasher._combine(_:)(v18);
    if (v17 == 2)
    {
      v19 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v19 = v17 & 1;
    }

    Hasher._combine(_:)(v19);
    if (v23)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v22);
    }

    v6 &= v6 - 1;
    v20 = Hasher._finalize()();

    v9 = v20 ^ v24;
  }

  while (v6);
LABEL_3:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      Hasher._combine(_:)(v9);
      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v24 = v9;
      v10 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1000797A8(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  Hasher._finalize()();
  v21 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  for (i = 0; v6; v8 = v20 ^ v25)
  {
    v25 = v8;
LABEL_9:
    v11 = *(v21 + 48) + 40 * (__clz(__rbit64(v6)) | (i << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 19);
    v22 = *(v11 + 24);
    v23 = *(v11 + 18);
    v24 = *(v11 + 32);
    Hasher.init(_seed:)();

    sub_100079A44(__srca, v12);
    if (v13)
    {
      Hasher._combine(_:)(1u);
      sub_10007A648(__srca, v13);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v14 == 3 || ((Hasher._combine(_:)(1u), v14 != 2) ? (Hasher._combine(_:)(1u), v16 = v14 & 1) : (v16 = 0), Hasher._combine(_:)(v16), v14 >> 8 == 2))
    {
      LOBYTE(v17) = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v17 = (v14 >> 8) & 1;
    }

    Hasher._combine(_:)(v17);
    if (v23 == 2)
    {
      v18 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v18 = v23 & 1;
    }

    Hasher._combine(_:)(v18);
    if (v15 == 2)
    {
      v19 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v19 = v15 & 1;
    }

    Hasher._combine(_:)(v19);
    if (v24)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v22);
    }

    v6 &= v6 - 1;
    v20 = Hasher._finalize()();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      Hasher._combine(_:)(v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      v25 = v8;
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100079A44(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  Hasher._finalize()();
  sub_100004E5C();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      Hasher._combine(_:)(v8);
      return;
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_7:
        v5 &= v5 - 1;
        Hasher.init(_seed:)();

        sub_100003B18(&v12);
        v11 = Hasher._finalize()();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

void sub_100079B7C(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  sub_100004E5C();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  do
  {
    v16 = v9;
LABEL_7:
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v6)) | (v10 << 6)));
    memcpy(__dst, a1, sizeof(__dst));

    sub_100003B18(__dst);

    Hasher._combine(_:)(*(v12 + 16));
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = v12 + 40;
      do
      {

        sub_100003B18(__dst);

        v14 += 16;
        --v13;
      }

      while (v13);
    }

    v6 &= v6 - 1;

    v9 = Hasher._finalize()() ^ v16;
  }

  while (v6);
LABEL_3:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      Hasher._combine(_:)(v9);
      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v16 = v9;
      v10 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_100079CF0(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        memcpy(__dst, a1, sizeof(__dst));

        String.hash(into:)();

        String.hash(into:)();
        swift_bridgeObjectRelease_n();
        v7 ^= Hasher._finalize()();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

void sub_100079E5C(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  sub_100004E5C();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (!v5)
  {
    goto LABEL_3;
  }

  do
  {
    v37 = v8;
LABEL_7:
    v11 = *(a2 + 56) + 32 * (__clz(__rbit64(v5)) | (v9 << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    v35 = *(v11 + 16);
    v36 = *(v11 + 24);
    memcpy(__dst, a1, sizeof(__dst));

    sub_100015B3C(v14, v15, v16, v17, v18);

    if (v12)
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(*(v12 + 16));
      v19 = *(v12 + 16);
      if (v19)
      {
        v20 = v12 + 40;
        do
        {

          sub_100015B3C(v21, v22, v23, v24, v25);

          v20 += 16;
          --v19;
        }

        while (v19);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v13)
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(*(v13 + 16));
      v26 = *(v13 + 16);
      if (v26)
      {
        v27 = v13 + 40;
        do
        {

          sub_100015B3C(v28, v29, v30, v31, v32);

          v27 += 16;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v5 &= v5 - 1;
    Hasher._combine(_:)(v35);
    Hasher._combine(_:)(v36);

    v8 = Hasher._finalize()() ^ v37;
  }

  while (v5);
LABEL_3:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      Hasher._combine(_:)(v8);
      return;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v37 = v8;
      v9 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_10007A074(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  sub_100005680();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v39 = v7;
  v40 = v2;
  if (v5)
  {
LABEL_2:
    v45 = v8;
LABEL_7:
    v43 = (v5 - 1) & v5;
    v44 = v9;
    v11 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));
    memcpy(__dst, a1, 0x48uLL);

    sub_100003B18(__dst);

    v12 = v11 + 64;
    sub_100005680();
    v15 = v14 & v13;
    v46 = (v16 + 63) >> 6;

    v53 = 0;
    v17 = 0;
    v47 = v11 + 64;
    v48 = v11;
    if (v15)
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v46)
      {
        goto LABEL_37;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
LABEL_12:
        while (1)
        {
          v19 = __clz(__rbit64(v15)) | (v17 << 6);
          v20 = *(*(v11 + 48) + 16 * v19 + 8);
          memcpy(v59, (*(v11 + 56) + 96 * v19), sizeof(v59));
          v54 = v59[3];
          v55 = v59[1];
          v50 = v59[2];
          v51 = v59[0];
          v52 = v59[5];
          v49 = v59[4];

          sub_10007BA94(v59, __src);
          if (!v20)
          {
            break;
          }

          v59[0] = v51;
          v59[1] = v55;
          v59[2] = v50;
          v59[3] = v54;
          v59[4] = v49;
          v59[5] = v52;
          memcpy(__src, __dst, 0x48uLL);
          String.hash(into:)();

          String.hash(into:)();
          String.hash(into:)();
          String.hash(into:)();
          v21 = *&v59[3];
          v22 = *(*&v59[3] + 16);
          Hasher._combine(_:)(v22);
          if (v22)
          {
            v23 = (v21 + 32);
            do
            {
              v24 = *v23++;
              Hasher._combine(_:)(v24);
              --v22;
            }

            while (v22);
          }

          Hasher._combine(_:)(*(&v59[3] + 1));
          if (BYTE8(v59[4]))
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v25 = *&v59[4];
            Hasher._combine(_:)(1u);
            if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v26 = v25;
            }

            else
            {
              v26 = 0;
            }

            Hasher._combine(_:)(v26);
          }

          Hasher._combine(_:)(BYTE9(v59[4]));
          v27 = *&v59[5];
          if (*&v59[5] == 0.0)
          {
            v27 = 0.0;
          }

          Hasher._combine(_:)(*&v27);
          v28 = *(&v59[5] + 1);
          if (*(&v59[5] + 1))
          {
            Hasher._combine(_:)(1u);
            v29 = v28 + 64;
            sub_100005680();
            v32 = v31 & v30;
            v34 = (v33 + 63) >> 6;

            v35 = 0;
            v36 = 0;
            if (!v32)
            {
              goto LABEL_27;
            }

            do
            {
              v56 = v35;
LABEL_31:
              v32 &= v32 - 1;
              memcpy(v57, __src, sizeof(v57));

              String.hash(into:)();

              String.hash(into:)();

              v35 = Hasher._finalize()() ^ v56;
            }

            while (v32);
LABEL_27:
            while (1)
            {
              v37 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                break;
              }

              if (v37 >= v34)
              {

                Hasher._combine(_:)(v35);
                v12 = v47;
                v11 = v48;
                goto LABEL_35;
              }

              v32 = *(v29 + 8 * v37);
              ++v36;
              if (v32)
              {
                v56 = v35;
                v36 = v37;
                goto LABEL_31;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

          Hasher._combine(_:)(0);
LABEL_35:
          v15 &= v15 - 1;
          sub_10007BAF0(v59);
          v53 ^= Hasher._finalize()();
          if (!v15)
          {
            goto LABEL_8;
          }
        }

LABEL_37:

        Hasher._combine(_:)(v53);

        v38 = Hasher._finalize()();
        v9 = v44;
        v8 = v38 ^ v45;
        v7 = v39;
        v2 = v40;
        v5 = v43;
        if (!v43)
        {
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

LABEL_41:
    __break(1u);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        Hasher._combine(_:)(v8);
        return;
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        v45 = v8;
        v9 = v10;
        goto LABEL_7;
      }
    }
  }

  __break(1u);
}

void sub_10007A508(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  sub_100004E5C();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_5:
      sub_10000DCD8();
      memcpy(__dst, a1, sizeof(__dst));

      String.hash(into:)();

      String.hash(into:)();

      v8 ^= Hasher._finalize()();
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      Hasher._combine(_:)(0);
      return;
    }

    ++v9;
    if (*(v2 + 8 * v10))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_10007A648(uint64_t a1, uint64_t a2)
{
  sub_100004A54(a1, a2);
  if (v2)
  {
    v4 = (v3 + 74);
    do
    {
      v5 = *(v4 - 26);
      v6 = *(v4 - 10);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      if (*(v4 - 34))
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
        if (v5)
        {
          goto LABEL_5;
        }
      }

      else
      {
        Hasher._combine(_:)(0);

        if (v5)
        {
LABEL_5:
          Hasher._combine(_:)(1u);
          v10 = sub_10000569C();
          sub_100079CF0(v10, v11);
          if (!v6)
          {
            goto LABEL_9;
          }

          goto LABEL_6;
        }
      }

      Hasher._combine(_:)(0);
      if (!v6)
      {
LABEL_9:
        Hasher._combine(_:)(0);
        goto LABEL_10;
      }

LABEL_6:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_10:
      if (v7 == 2)
      {
        v12 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v12 = v7 & 1;
      }

      Hasher._combine(_:)(v12);
      if (v8 == 2)
      {
        v13 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v13 = v8 & 1;
      }

      Hasher._combine(_:)(v13);
      if (v9 == 2)
      {
        v14 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v14 = v9 & 1;
      }

      v4 += 48;
      Hasher._combine(_:)(v14);

      --v2;
    }

    while (v2);
  }
}

void sub_10007A7D8(uint64_t a1, uint64_t a2)
{
  sub_100004A54(a1, a2);
  if (v2)
  {
    v4 = v3 + 40;
    do
    {

      sub_100007828();
      String.hash(into:)();

      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

void sub_10007A83C(uint64_t a1, uint64_t a2)
{
  sub_100004A54(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v2;
    }

    while (v2);
  }
}

void sub_10007A87C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  sub_100002CC4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  Hasher._combine(_:)(v9);
  if (v9)
  {
    v10 = &v8[*(v3 + 20)];
    v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_10007ACE4(v11, v8);
      type metadata accessor for URL();
      sub_100048A70(&unk_100268B68);
      dispatch thunk of Hashable.hash(into:)();
      if (!*v10)
      {
        sub_100002CE8();
      }

      String.hash(into:)();

      String.hash(into:)();
      sub_10007AD48(v8);
      v11 += v12;
      --v9;
    }

    while (v9);
  }
}

void sub_10007AA40(uint64_t a1, uint64_t a2)
{
  sub_100004A54(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *v4;
      v4 += 2;
      if (v5)
      {
        Hasher._combine(_:)(1u);

        sub_10000569C();
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      --v2;
    }

    while (v2);
  }
}

Swift::Int sub_10007AAC4(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10007AB38(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10007ABBC()
{
  sub_100004E28();

  v2 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_10007AC38()
{
  sub_100004E28();

  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *v0 = 0;
  return result;
}

uint64_t sub_10007ACAC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String.hashValue.getter();

  return v1;
}

uint64_t sub_10007ACE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007AD48(uint64_t a1)
{
  v2 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSString sub_10007ADA4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

__n128 sub_10007AEB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_10007AED4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10007AEE8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10007AF28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10007AF8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10007AFA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 43))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007AFF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_10007B078(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

unint64_t sub_10007B144()
{
  result = qword_100268F50;
  if (!qword_100268F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268F50);
  }

  return result;
}

unint64_t sub_10007B19C()
{
  result = qword_100268F58;
  if (!qword_100268F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268F58);
  }

  return result;
}

unint64_t sub_10007B1F4()
{
  result = qword_100268F60;
  if (!qword_100268F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268F60);
  }

  return result;
}

unint64_t sub_10007B24C()
{
  result = qword_100268F68;
  if (!qword_100268F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268F68);
  }

  return result;
}

unint64_t sub_10007B2A4()
{
  result = qword_100268F70;
  if (!qword_100268F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268F70);
  }

  return result;
}

unint64_t sub_10007B2FC()
{
  result = qword_100268F78;
  if (!qword_100268F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268F78);
  }

  return result;
}

unint64_t sub_10007B354()
{
  result = qword_100268F80;
  if (!qword_100268F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268F80);
  }

  return result;
}

uint64_t sub_10007B9A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10007B9EC()
{
  result = qword_100269048;
  if (!qword_100269048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269048);
  }

  return result;
}

unint64_t sub_10007BA40()
{
  result = qword_100269050;
  if (!qword_100269050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269050);
  }

  return result;
}

unint64_t sub_10007BB44()
{
  result = qword_100269098;
  if (!qword_100269098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269098);
  }

  return result;
}

unint64_t sub_10007BB98()
{
  result = qword_1002690A8;
  if (!qword_1002690A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690A8);
  }

  return result;
}

unint64_t sub_10007BBEC()
{
  result = qword_1002690B8;
  if (!qword_1002690B8)
  {
    sub_10007BC70(&qword_1002690B0, &qword_1001E4F70);
    sub_10007BCB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690B8);
  }

  return result;
}

uint64_t sub_10007BC70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10007BCB8()
{
  result = qword_1002690C0;
  if (!qword_1002690C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690C0);
  }

  return result;
}

unint64_t sub_10007BD0C()
{
  result = qword_1002690D0;
  if (!qword_1002690D0)
  {
    sub_10007BC70(&qword_1002690C8, &qword_1001E4F78);
    sub_10007BD90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690D0);
  }

  return result;
}

unint64_t sub_10007BD90()
{
  result = qword_1002690D8;
  if (!qword_1002690D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690D8);
  }

  return result;
}

unint64_t sub_10007BDE4()
{
  result = qword_1002690E0;
  if (!qword_1002690E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690E0);
  }

  return result;
}

unint64_t sub_10007BE38()
{
  result = qword_1002690F0;
  if (!qword_1002690F0)
  {
    sub_10007BC70(&qword_1002690B0, &qword_1001E4F70);
    sub_10007BEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690F0);
  }

  return result;
}

unint64_t sub_10007BEBC()
{
  result = qword_1002690F8;
  if (!qword_1002690F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690F8);
  }

  return result;
}

unint64_t sub_10007BF10()
{
  result = qword_100269100;
  if (!qword_100269100)
  {
    sub_10007BC70(&qword_1002690C8, &qword_1001E4F78);
    sub_10007BF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269100);
  }

  return result;
}

unint64_t sub_10007BF94()
{
  result = qword_100269108;
  if (!qword_100269108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269108);
  }

  return result;
}

unint64_t sub_10007BFE8()
{
  result = qword_100269110;
  if (!qword_100269110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269110);
  }

  return result;
}

unint64_t sub_10007C03C()
{
  result = qword_100269120;
  if (!qword_100269120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269120);
  }

  return result;
}

unint64_t sub_10007C090()
{
  result = qword_100269128;
  if (!qword_100269128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269128);
  }

  return result;
}

unint64_t sub_10007C0E4()
{
  result = qword_100269140;
  if (!qword_100269140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269140);
  }

  return result;
}

unint64_t sub_10007C138()
{
  result = qword_100269148;
  if (!qword_100269148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269148);
  }

  return result;
}

unint64_t sub_10007C1F4()
{
  result = qword_100269158;
  if (!qword_100269158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269158);
  }

  return result;
}

unint64_t sub_10007C248(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    v4 = v3;
    sub_10007BC70(&qword_100269130, &qword_1001E4F90);
    v4();
    result = sub_10001D6F8();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10007C2B8()
{
  result = qword_100269168;
  if (!qword_100269168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269168);
  }

  return result;
}

unint64_t sub_10007C30C()
{
  result = qword_100269170;
  if (!qword_100269170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269170);
  }

  return result;
}

unint64_t sub_10007C360()
{
  result = qword_100269180;
  if (!qword_100269180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269180);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AMPBag.Definition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10007C44C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AASA.AASAContainer.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AASA.AASAContainer.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AASA.Default(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65283;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AASA.Default(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_10007C810(uint64_t a1, int a2)
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

uint64_t sub_10007C850(uint64_t result, int a2, int a3)
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

uint64_t sub_10007C89C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_10007C8DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10007C930()
{
  result = qword_1002691B8;
  if (!qword_1002691B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002691B8);
  }

  return result;
}

unint64_t sub_10007C988()
{
  result = qword_1002691C0;
  if (!qword_1002691C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002691C0);
  }

  return result;
}

unint64_t sub_10007C9E0()
{
  result = qword_1002691C8;
  if (!qword_1002691C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002691C8);
  }

  return result;
}

unint64_t sub_10007CA38()
{
  result = qword_1002691D0;
  if (!qword_1002691D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002691D0);
  }

  return result;
}

unint64_t sub_10007CA90()
{
  result = qword_1002691D8;
  if (!qword_1002691D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002691D8);
  }

  return result;
}

unint64_t sub_10007CBC0()
{
  result = qword_1002691F8;
  if (!qword_1002691F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002691F8);
  }

  return result;
}

unint64_t sub_10007CD80()
{
  result = qword_100269230;
  if (!qword_100269230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269230);
  }

  return result;
}

unint64_t sub_10007CDD8()
{
  result = qword_100269238;
  if (!qword_100269238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269238);
  }

  return result;
}

unint64_t sub_10007CE30()
{
  result = qword_100269240;
  if (!qword_100269240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269240);
  }

  return result;
}

unint64_t sub_10007CE88()
{
  result = qword_100269248;
  if (!qword_100269248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269248);
  }

  return result;
}

unint64_t sub_10007CEE0()
{
  result = qword_100269250;
  if (!qword_100269250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269250);
  }

  return result;
}

unint64_t sub_10007CF38()
{
  result = qword_100269258;
  if (!qword_100269258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269258);
  }

  return result;
}

void sub_10007D0C0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_10007D1E8()
{
  result = qword_100269298;
  if (!qword_100269298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269298);
  }

  return result;
}

unint64_t sub_10007D240()
{
  result = qword_1002692A0;
  if (!qword_1002692A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002692A0);
  }

  return result;
}

unint64_t sub_10007D294()
{
  result = qword_1002692B0;
  if (!qword_1002692B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002692B0);
  }

  return result;
}

unint64_t sub_10007D2E8()
{
  result = qword_1002692C0;
  if (!qword_1002692C0)
  {
    sub_10007BC70(&qword_1002692B8, &unk_1001E5D00);
    sub_10007D36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002692C0);
  }

  return result;
}

unint64_t sub_10007D36C()
{
  result = qword_1002692C8;
  if (!qword_1002692C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002692C8);
  }

  return result;
}

unint64_t sub_10007D3C0()
{
  result = qword_1002692E0;
  if (!qword_1002692E0)
  {
    sub_10007BC70(&qword_1002692E8, &qword_1001E5D10);
    sub_10007D444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002692E0);
  }

  return result;
}

unint64_t sub_10007D444()
{
  result = qword_1002692F0;
  if (!qword_1002692F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002692F0);
  }

  return result;
}

unint64_t sub_10007D498()
{
  result = qword_100269300;
  if (!qword_100269300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269300);
  }

  return result;
}

unint64_t sub_10007D4EC()
{
  result = qword_100269318;
  if (!qword_100269318)
  {
    sub_10007BC70(&qword_1002692B8, &unk_1001E5D00);
    sub_10007D570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269318);
  }

  return result;
}

unint64_t sub_10007D570()
{
  result = qword_100269320;
  if (!qword_100269320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269320);
  }

  return result;
}

unint64_t sub_10007D5C4(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    v4 = v3;
    sub_10007BC70(&qword_1002692D0, &unk_1001E70E0);
    v4();
    result = sub_10001D6F8();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10007D634()
{
  result = qword_100269330;
  if (!qword_100269330)
  {
    sub_10007BC70(&qword_1002692E8, &qword_1001E5D10);
    sub_10007D6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269330);
  }

  return result;
}

unint64_t sub_10007D6B8()
{
  result = qword_100269338;
  if (!qword_100269338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269338);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AASA.Default.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AASA.Default.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AASA.AppLinks.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AASA.AppLinks.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10007D9D8()
{
  result = qword_100269358;
  if (!qword_100269358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269358);
  }

  return result;
}

unint64_t sub_10007DA30()
{
  result = qword_100269360;
  if (!qword_100269360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269360);
  }

  return result;
}

unint64_t sub_10007DA88()
{
  result = qword_100269368;
  if (!qword_100269368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269368);
  }

  return result;
}

unint64_t sub_10007DAE0()
{
  result = qword_100269370;
  if (!qword_100269370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269370);
  }

  return result;
}

unint64_t sub_10007DB38()
{
  result = qword_100269378;
  if (!qword_100269378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269378);
  }

  return result;
}

unint64_t sub_10007DB90()
{
  result = qword_100269380;
  if (!qword_100269380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269380);
  }

  return result;
}

__n128 sub_10007DD18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10007DD2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10007DD6C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10007DDC0@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v1 = sub_10007B9A4(&qword_100269538, &qword_1001E6020);
  __chkstk_darwin(v1 - 8);
  v80 = &v57 - v2;
  v69 = type metadata accessor for CharacterClass();
  v91 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007B9A4(&qword_100269540, &qword_1001E6028);
  v92 = *(v4 - 8);
  v93 = v4;
  v5 = __chkstk_darwin(v4);
  v71 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v78 = &v57 - v8;
  __chkstk_darwin(v7);
  v89 = &v57 - v9;
  v10 = sub_10007B9A4(&qword_100269548, &qword_1001E6030);
  v88 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v72 = sub_10007B9A4(&qword_100269520, &qword_1001E6010);
  v74 = *(v72 - 8);
  v13 = __chkstk_darwin(v72);
  v73 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v84 = &v57 - v16;
  v17 = __chkstk_darwin(v15);
  v83 = &v57 - v18;
  __chkstk_darwin(v17);
  v20 = &v57 - v19;
  v85 = type metadata accessor for _RegexFactory();
  v21 = *(v85 - 8);
  __chkstk_darwin(v85);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10007B9A4(&qword_100269550, &qword_1001E6038);
  v90 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v82 = &v57 - v28;
  makeFactory()();
  sub_10007E8E4(v12);
  v29 = sub_10007B9A4(&qword_100269528, &qword_1001E6018);
  v66 = &protocol conformance descriptor for Regex<A>;
  v68 = sub_100006070(&qword_100269558, &qword_100269548, &qword_1001E6030, &protocol conformance descriptor for Regex<A>);
  v77 = v20;
  v79 = v29;
  v65 = v10;
  _RegexFactory.capture<A, B>(_:)();
  v67 = *(v88 + 8);
  v88 += 8;
  v67(v12, v10);
  v30 = *(v21 + 8);
  v31 = v85;
  v30(v23, v85);
  v86 = v30;
  v87 = v21 + 8;
  Capture.init(_:)();
  v63 = sub_100006070(&qword_100269560, &qword_100269550, &qword_1001E6038, &protocol conformance descriptor for Capture<A>);
  v81 = v24;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v32 = *(v90 + 8);
  v90 += 8;
  v70 = v32;
  v32(v27, v24);
  v96 = 45;
  v97 = 0xE100000000000000;
  v61 = sub_10008055C();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v33 = v64;
  static RegexComponent<>.digit.getter();
  v60 = type metadata accessor for RegexRepetitionBehavior();
  v34 = v80;
  sub_10000A7C0(v80, 1, 1, v60);
  makeFactory()();
  v59 = sub_1000808D8(&qword_100269570, &type metadata accessor for CharacterClass, &protocol conformance descriptor for CharacterClass);
  v35 = v69;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v30(v23, v31);
  sub_100009F5C(v34, &qword_100269538, &qword_1001E6020);
  v36 = *(v91 + 8);
  v91 += 8;
  v58 = v36;
  v36(v33, v35);
  v37 = v78;
  OneOrMore.init(_:)();
  v76 = sub_100006070(&qword_100269578, &qword_100269540, &qword_1001E6028, &protocol conformance descriptor for OneOrMore<A>);
  v38 = v93;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v39 = v92 + 8;
  v40 = *(v92 + 8);
  v40(v37, v38);
  v62 = v40;
  v92 = v39;
  v94 = 44;
  v95 = 0xE100000000000000;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  static RegexComponent<>.digit.getter();
  v41 = v80;
  sub_10000A7C0(v80, 1, 1, v60);
  makeFactory()();
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v42 = v85;
  v86(v23, v85);
  sub_100009F5C(v41, &qword_100269538, &qword_1001E6020);
  v58(v33, v35);
  v43 = v71;
  OneOrMore.init(_:)();
  v44 = v93;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v40(v43, v44);
  v45 = v77;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  sub_10007ECB8(v45, v98, v99, v83);

  makeFactory()();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v91 = sub_100006070(&qword_100269530, &qword_100269520, &qword_1001E6010, v66);
  v46 = v84;
  v47 = v72;
  v48 = v65;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v49 = v67;
  v67(v12, v48);
  v86(v23, v42);
  v50 = v73;
  sub_10007ECB8(v46, v96, v97, v73);

  makeFactory()();
  v51 = v12;
  v52 = v78;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v49(v51, v48);
  v86(v23, v85);
  v53 = *(v74 + 8);
  v53(v50, v47);
  v53(v84, v47);
  v53(v83, v47);
  v53(v77, v47);
  v54 = v93;
  v55 = v62;
  v62(v52, v93);
  v55(v89, v54);
  return v70(v82, v81);
}

uint64_t sub_10007E8E4@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_10007B9A4(&qword_100269548, &qword_1001E6030);
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for _RegexFactory();
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B9A4(&qword_100269538, &qword_1001E6020);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for CharacterClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007B9A4(&qword_100269540, &qword_1001E6028);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v22 - v17;
  static RegexComponent<>.digit.getter();
  v19 = type metadata accessor for RegexRepetitionBehavior();
  sub_10000A7C0(v7, 1, 1, v19);
  makeFactory()();
  sub_1000808D8(&qword_100269570, &type metadata accessor for CharacterClass, &protocol conformance descriptor for CharacterClass);
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  (*(v23 + 8))(v4, v24);
  sub_100009F5C(v7, &qword_100269538, &qword_1001E6020);
  (*(v9 + 8))(v11, v8);
  OneOrMore.init(_:)();
  sub_100006070(&qword_100269578, &qword_100269540, &qword_1001E6028, &protocol conformance descriptor for OneOrMore<A>);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v20 = *(v13 + 8);
  v20(v16, v12);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  return (v20)(v18, v12);
}

uint64_t sub_10007ECB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a4;
  v17 = a1;
  v6 = sub_10007B9A4(&qword_100269548, &qword_1001E6030);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v15 = type metadata accessor for _RegexFactory();
  v10 = *(v15 - 8);
  __chkstk_darwin(v15);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  makeFactory()();
  v18 = a2;
  v19 = a3;
  sub_10008055C();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  sub_10007B9A4(&qword_100269528, &qword_1001E6018);
  sub_10007B9A4(&qword_100269520, &qword_1001E6010);
  sub_100006070(&qword_100269530, &qword_100269520, &qword_1001E6010, &protocol conformance descriptor for Regex<A>);
  sub_100006070(&qword_100269558, &qword_100269548, &qword_1001E6030, &protocol conformance descriptor for Regex<A>);
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v15);
}

uint64_t sub_10007EF00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_10007B9A4(&qword_100269520, &qword_1001E6010);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100080528(sub_100080524, 0, a2, a3);
  sub_100006070(&qword_100269530, &qword_100269520, &qword_1001E6010, &protocol conformance descriptor for Regex<A>);
  dispatch thunk of RegexComponent.regex.getter();
  Regex.firstMatch(in:)();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_10007F0E4(uint64_t a1, uint64_t a2)
{
  sub_1000056A8();
  v7 = v6;
  v8 = *v3;
  sub_100002D20();
  *v9 = v8;
  v7[44] = v2;

  if (v2)
  {
    v10 = sub_10007F2F4;
  }

  else
  {

    v7[45] = a2;
    v7[46] = a1;
    v10 = sub_10007F214;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10007F214()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 232);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v8 = *(v0 + 360);
  v9 = *(v0 + 368);

  sub_100007E4C();

  return v10(v9, v8);
}

uint64_t sub_10007F2F4()
{
  v1 = v0[29];

  v2 = swift_allocObject();
  v0[14] = v1;
  *(v2 + 16) = xmmword_1001E5F60;
  v0[17] = &unk_100246478;
  v3 = v1;
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = v0[44];
  v7 = v0[36];
  v27 = v0[35];
  v28 = v0[37];
  v25 = v0[38];
  v26 = v0[34];
  v8 = v0[31];
  v24 = v0[30];
  v23 = v0[29];
  sub_10000618C();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 14);
  v0[21] = &type metadata for String;
  sub_100002D0C();
  v0[18] = v9;
  sub_100008228();
  v0[19] = v10;
  static LogInterpolation.safe(_:)();
  v11 = sub_10000618C();
  sub_100009F5C(v11, v12, v13);
  _StringGuts.grow(_:)(21);
  v0[26] = 0;
  v0[27] = 0xE000000000000000;
  v14._object = 0x80000001001F3300;
  v14._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v14);
  v0[28] = v6;
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  _print_unlocked<A, B>(_:_:)();
  v15 = v0[26];
  v16 = v0[27];
  v0[25] = &type metadata for String;
  v0[22] = v15;
  v0[23] = v16;
  static LogInterpolation.safe(_:)();
  v17 = sub_10000618C();
  sub_100009F5C(v17, v18, v19);
  v20 = static os_log_type_t.debug.getter();
  sub_1000036B0(v20, v2);

  (*(v8 + 8))(v26, v24);
  (*(v7 + 8))(v28, v27);

  sub_100007E4C();

  return v21(0, 0);
}