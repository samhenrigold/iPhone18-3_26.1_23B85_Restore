void *sub_1000779F8(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v23 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = *(a4 + 56) + 48 * (__clz(__rbit64(v9)) | (v16 << 6));
      v18 = *(v17 + 8);
      v9 &= v9 - 1;
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      v21 = *(v17 + 32);
      v22 = *(v17 + 40);
      *v11 = *v17;
      *(v11 + 8) = v18;
      *(v11 + 16) = v19;
      *(v11 + 24) = v20;
      *(v11 + 32) = v21;
      *(v11 + 40) = v22;
      if (v15 == v10)
      {
        break;
      }

      v11 += 48;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v23;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_100077C8C(char a1@<W8>)
{
  *v1 = v2;
  *(v1 + 8) = v3;
  v6 = *(v4 - 176);
  *(v1 + 16) = *(v4 - 184);
  *(v1 + 24) = v6;
  *(v1 + 32) = a1;
  *(v1 + 40) = v5;
}

void sub_100077DF0(uint64_t a1@<X8>)
{
  *(a1 - 48) = v2;
  *(a1 - 40) = v3;
  *(a1 - 32) = v1;
  *(a1 - 24) = v4;
}

uint64_t sub_100077E00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10000AAEC(a1, a2, a3, &protocol conformance descriptor for AsyncThrowingPublisher<A>.Iterator);
}

id *sub_100077E34(uint64_t a1)
{

  return sub_100070428(a1, sub_1000D0F34);
}

id *sub_100077E68(uint64_t a1)
{

  return sub_100070428(a1, sub_1000D0F48);
}

void sub_100077E9C(uint64_t a1@<X8>)
{
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v1;
  *(a1 + 24) = v4;
}

uint64_t sub_100077EB8@<X0>(uint64_t a1@<X8>)
{
  v7 = a1 + 32 * v3;
  v8 = *(v4 - 168) != *(v4 - 128);
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v8;
  *(v7 + 24) = v6;
}

void sub_100077F24()
{
  v1 = v0[44];
  v0[53] = v1 + 16;
  v0[51] = v1 + 32;
}

void sub_100077F74(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v1;
  v6 = *(v4 - 112);
  a1[2] = *(v4 - 120);
  a1[3] = v6;
  v7 = *(v4 - 128);
  a1[4] = v3;
  a1[5] = v7;
  a1[6] = v5;
}

uint64_t sub_100077FC0()
{

  return static Message.with(_:)();
}

void sub_100077FF4(unint64_t a1@<X8>)
{

  sub_1000D1224(a1 > 1, v1, 1);
}

uint64_t sub_100078018(uint64_t a1)
{
  *(v1 - 104) = a1;
}

uint64_t sub_100078030()
{
  *(v0 + 472) = v1;
}

void sub_100078054(char a1@<W8>)
{
  v6 = v1 + 32 * v4;
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = a1;
  *(v6 + 24) = v5;
}

__n128 sub_100078080()
{
  result = *v0;
  v3 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 32) = v3;
  *v1 = result;
  return result;
}

void sub_1000780F4()
{

  sub_1000D1224(0, v0, 0);
}

unint64_t sub_100078114()
{

  return sub_100083754(v0, v1);
}

uint64_t sub_10007812C(uint64_t a1)
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100078144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return static Message.with(_:)();
}

void *sub_10007815C()
{
  type metadata accessor for Locale();
  sub_10007B688();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100019E84();
  v0[15] = 0xD000000000000043;
  v0[16] = 0x8000000100137270;
  v0[17] = &_swiftEmptySetSingleton;
  static Locale.current.getter();
  v0[2] = sub_1000785F4(v2, sub_10001B6EC, sub_10001B6CC);
  v0[3] = v6;
  v0[4] = sub_10007841C();
  v0[5] = v7;
  v0[6] = sub_1000785F4(v2, sub_1000EC344, sub_1000EC24C);
  v0[7] = v8;
  v0[8] = sub_1000785F4(v2, sub_1000DAEB4, sub_1000DAE94);
  v0[9] = v9;
  v0[10] = sub_1000787E0();
  v0[11] = v10;
  v0[12] = sub_1000785F4(v2, sub_1000D7404, sub_1000D73E4);
  v0[13] = v11;
  sub_10007B654();
  if (v12)
  {
    sub_10007B6D4();
    sub_10007B668();
    sub_10007B6BC();
  }

  sub_10007B654();
  if (v13)
  {
    sub_10007B6D4();
    sub_10007B668();
    sub_10007B6BC();
  }

  sub_10007B654();
  if (v14)
  {
    sub_10007B6D4();
    sub_10007B668();
    sub_10007B6BC();
  }

  sub_10007B654();
  if (v15)
  {
    sub_10007B6D4();
    sub_10007B668();
    sub_10007B6BC();
  }

  sub_10007B654();
  if (v16)
  {
    sub_10007B6D4();
    sub_10007B668();
    sub_10007B6BC();
  }

  sub_10007B654();
  if (v17)
  {
    sub_10007B6D4();
    sub_10007B668();
    sub_10007B6BC();
  }

  (*(v4 + 8))(v2, v1);
  v0[14] = &_swiftEmptySetSingleton;
  return v0;
}

uint64_t sub_10007841C()
{
  v0 = sub_100003768(&qword_10018D468, &qword_10012E130);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[4] = Locale.identifier.getter();
  v12[5] = v3;
  v12[2] = 95;
  v12[3] = 0xE100000000000000;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_10000AC24();
  v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v6 = v5;

  v13._countAndFlagsBits = v4;
  v13._object = v6;
  if (sub_10001DBD8(v13) == 15)
  {
    Locale.region.getter();
    v7 = type metadata accessor for Locale.Region();
    if (sub_10000E5F0(v2, 1, v7) == 1)
    {
      sub_10001D724(v2, &qword_10018D468, &qword_10012E130);
      return 0;
    }

    v8 = Locale.Region.identifier.getter();
    v10 = v9;
    (*(*(v7 - 8) + 8))(v2, v7);
    v14._countAndFlagsBits = v8;
    v14._object = v10;
    if (sub_10001DBD8(v14) == 15)
    {
      return 0;
    }
  }

  return 0x726F745320707041;
}

uint64_t sub_1000785F4(uint64_t a1, unsigned __int8 (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = sub_100003768(&qword_10018D468, &qword_10012E130);
  __chkstk_darwin(v5 - 8);
  v7 = v18 - v6;
  v18[4] = Locale.identifier.getter();
  v18[5] = v8;
  v18[2] = 95;
  v18[3] = 0xE100000000000000;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_10000AC24();
  v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v11 = v10;

  if (a2(v9, v11) == 15)
  {
    Locale.region.getter();
    v12 = type metadata accessor for Locale.Region();
    if (sub_10000E5F0(v7, 1, v12) == 1)
    {
      sub_10001D724(v7, &qword_10018D468, &qword_10012E130);
      return 0;
    }

    v13 = Locale.Region.identifier.getter();
    v15 = v14;
    (*(*(v12 - 8) + 8))(v7, v12);
    if (a2(v13, v15) == 15)
    {
      return 0;
    }
  }

  result = a3();
  if (!v17)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000787E0()
{
  v0 = sub_100003768(&qword_10018D468, &qword_10012E130);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[4] = Locale.identifier.getter();
  v12[5] = v3;
  v12[2] = 95;
  v12[3] = 0xE100000000000000;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_10000AC24();
  v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v6 = v5;

  v13._countAndFlagsBits = v4;
  v13._object = v6;
  if (sub_1000357A8(v13) == 15)
  {
    Locale.region.getter();
    v7 = type metadata accessor for Locale.Region();
    if (sub_10000E5F0(v2, 1, v7) == 1)
    {
      sub_10001D724(v2, &qword_10018D468, &qword_10012E130);
      return 0;
    }

    v8 = Locale.Region.identifier.getter();
    v10 = v9;
    (*(*(v7 - 8) + 8))(v2, v7);
    v14._countAndFlagsBits = v8;
    v14._object = v10;
    if (sub_1000357A8(v14) == 15)
    {
      return 0;
    }
  }

  return 0x6567617373654D69;
}

void *sub_1000789D0()
{

  return v0;
}

uint64_t sub_100078A30()
{
  sub_1000789D0();

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_100078A88()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for Locale();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v5;
  v1[13] = v4;

  return _swift_task_switch(sub_100078C38, v5, v4);
}

uint64_t sub_100078C38(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  static Locale.current.getter();
  v5 = sub_1000785F4(v2, sub_10006FCD4, sub_10006FCBC);
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    goto LABEL_7;
  }

  v10 = v1[4];
  v9 = v1[5];
  sub_100003768(&qword_100188810, &unk_100121780);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100121620;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100017A18();
  *(v11 + 32) = v5;
  *(v11 + 40) = v7;
  String.init(format:_:)();
  URL.init(string:)();

  if (sub_10000E5F0(v10, 1, v9) == 1)
  {
    v12 = v1[4];

    sub_10001D724(v12, &qword_100188EE0, &unk_100122AE0);
LABEL_7:

    sub_10000875C();

    return v13();
  }

  (*(v1[6] + 32))(v1[7], v1[4], v1[5]);
  v15 = swift_task_alloc();
  v1[14] = v15;
  *v15 = v1;
  v15[1] = sub_100078E9C;
  v16 = v1[7];

  return sub_100079130(v16);
}

uint64_t sub_100078E9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_100079088;
  }

  else
  {
    v4[16] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_100078FC4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100078FC4()
{
  v1 = v0[16];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = v0[2];

  (*(v3 + 8))(v2, v4);
  *(v5 + 136) = v1;

  sub_10000875C();

  return v6();
}

uint64_t sub_100079088()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  sub_10000875C();

  return v4();
}

uint64_t sub_100079130(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = type metadata accessor for URL();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100079290, 0, 0);
}

uint64_t sub_100079290(uint64_t a1)
{
  v29 = v1;
  v3 = v1[16];
  v2 = v1[17];
  v4 = v1[15];
  v5 = v1[13];
  static Logger.supportFlowApp.getter();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[22];
  v11 = v1[18];
  v10 = v1[19];
  v13 = v1[16];
  v12 = v1[17];
  v14 = v1[15];
  if (v8)
  {
    v27 = v1[18];
    v15 = swift_slowAlloc();
    v25 = v7;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    sub_10007B43C();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v9;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_10009CACC(v17, v19, &v28);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v25, "Fetching service status %s", v15, 0xCu);
    sub_1000086BC(v16);
    sub_100008744(v16);
    sub_100008744(v15);

    v21 = *(v10 + 8);
    v21(v26, v27);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v1[23] = v21;
  v1[24] = [objc_opt_self() sharedSession];
  v22 = swift_task_alloc();
  v1[25] = v22;
  *v22 = v1;
  v22[1] = sub_100079518;
  v23 = v1[13];

  return NSURLSession.data(from:delegate:)(v23, 0);
}

uint64_t sub_100079518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(v5 + 208) = a1;
  *(v5 + 216) = a2;
  *(v5 + 224) = a3;
  *(v5 + 232) = v3;

  if (v3)
  {
    v6 = sub_100079B98;
  }

  else
  {

    v6 = sub_10007966C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10007966C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = *(v0 + 224);
  if ([v2 statusCode] != 200)
  {

LABEL_9:
    v14 = *(v0 + 224);
    static Logger.supportFlowApp.getter();
    v15 = v14;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = -1;
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v18 = [v20 statusCode];
      }

      v21 = *(v0 + 224);
      *(v19 + 4) = v18;

      _os_log_impl(&_mh_execute_header, v16, v17, "Response error status: %ld", v19, 0xCu);
      sub_100008744(v19);
      v22 = *(v0 + 224);
    }

    else
    {

      v22 = *(v0 + 224);
      v16 = v22;
    }

    v24 = *(v0 + 208);
    v23 = *(v0 + 216);
    v25 = *(v0 + 184);
    v26 = *(v0 + 160);
    v27 = *(v0 + 144);

    v25(v26, v27);
    sub_100008408(v24, v23);

    goto LABEL_15;
  }

  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 80) = 0;
  v6 = [v4 JSONObjectWithData:isa options:0 error:v0 + 80];

  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = v7;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100003768(&qword_10018B580, &unk_100128EB0);
    if (swift_dynamicCast())
    {
      sub_100082C6C(0x7365636976726573, 0xE800000000000000, *(v0 + 88), (v0 + 48));

      if (*(v0 + 72))
      {
        sub_100003768(&qword_10018D458, &unk_100128EC0);
        v9 = swift_dynamicCast();
        v10 = *(v0 + 224);
        if (v9)
        {
          v12 = *(v0 + 208);
          v11 = *(v0 + 216);
          v13 = sub_100079C50(*(v0 + 96));

          sub_100008408(v12, v11);
LABEL_16:
          sub_10007B6A0();

          v28 = *(v0 + 8);

          return v28(v13);
        }
      }

      else
      {

        sub_10001D724(v0 + 48, &unk_10018A520, &unk_100124310);
      }
    }

    else
    {
    }

    static Logger.supportFlowApp.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 216);
    v39 = *(v0 + 224);
    v40 = *(v0 + 208);
    v41 = *(v0 + 184);
    v42 = *(v0 + 168);
    v43 = *(v0 + 144);
    if (v37)
    {
      v47 = *(v0 + 216);
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Unable to parse service status json.", v44, 2u);
      sub_100008744(v44);

      v41(v42, v43);
      v45 = v40;
      v46 = v47;
    }

    else
    {

      v41(v42, v43);
      v45 = v40;
      v46 = v38;
    }

    sub_100008408(v45, v46);
LABEL_15:
    v13 = &_swiftEmptySetSingleton;
    goto LABEL_16;
  }

  v30 = *(v0 + 216);
  v31 = *(v0 + 224);
  v32 = *(v0 + 208);
  v33 = v7;

  _convertNSErrorToError(_:)();
  swift_willThrow();
  sub_100008408(v32, v30);

  sub_10007B6A0();

  sub_10000875C();

  return v34();
}

uint64_t sub_100079B98()
{
  sub_10007B6A0();

  sub_10000875C();

  return v1();
}

uint64_t sub_100079C50(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v45 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &_swiftEmptySetSingleton;
  v50 = &_swiftEmptySetSingleton;
  v8 = *(a1 + 16);
  if (v8)
  {
    v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v4;
    v9 = 0;
    v10 = a1 + 32;
    v46 = v2;
    do
    {
      v11 = *(v10 + 8 * v9);
      if (*(v11 + 16))
      {

        v12 = sub_100083754(0x4E65636976726573, 0xEB00000000656D61);
        if (v13)
        {
          sub_10001E894(*(v11 + 56) + 32 * v12, v47);
          if (swift_dynamicCast())
          {
            v14 = v48;
            v15 = v49;
            v16 = HIBYTE(v49) & 0xF;
            if ((v49 & 0x2000000000000000) == 0)
            {
              v16 = v48 & 0xFFFFFFFFFFFFLL;
            }

            if (v16)
            {
              v17 = *(v2 + 112);
              if (*(v17 + 16))
              {
                Hasher.init(_seed:)();
                String.hash(into:)();
                v18 = Hasher._finalize()();
                v19 = ~(-1 << *(v17 + 32));
                do
                {
                  v20 = v18 & v19;
                  if (((*(v17 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
                  {
                    goto LABEL_30;
                  }

                  v21 = (*(v17 + 48) + 16 * v20);
                  if (*v21 == v14 && v21[1] == v15)
                  {
                    break;
                  }

                  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v18 = v20 + 1;
                }

                while ((v23 & 1) == 0);
                if (!*(v11 + 16) || (v24 = sub_100083754(0x73746E657665, 0xE600000000000000), (v25 & 1) == 0))
                {
LABEL_30:

                  v2 = v46;
                  goto LABEL_31;
                }

                sub_10001E894(*(v11 + 56) + 32 * v24, v47);

                sub_100003768(&qword_10018D458, &unk_100128EC0);
                result = swift_dynamicCast();
                v2 = v46;
                if ((result & 1) == 0)
                {
                  goto LABEL_29;
                }

                v27 = v48;
                v42 = *(v48 + 16);
                if (v42)
                {
                  for (i = 0; v42 != i; ++i)
                  {
                    if (i >= *(v27 + 16))
                    {
                      __break(1u);
                      return result;
                    }

                    v29 = *(v27 + 8 * i + 32);
                    if (!*(v29 + 16))
                    {
                      goto LABEL_35;
                    }

                    v30 = sub_100083754(0x65746144646E65, 0xE700000000000000);
                    if ((v31 & 1) == 0)
                    {

LABEL_35:

                      memset(v47, 0, 32);
                      sub_10001D724(v47, &unk_10018A520, &unk_100124310);
                      sub_1000E0B24(v47, v14, v15);
                      goto LABEL_29;
                    }

                    sub_10001E894(*(v29 + 56) + 32 * v30, v47);

                    result = sub_10001D724(v47, &unk_10018A520, &unk_100124310);
                  }
                }
              }
            }
          }
        }

LABEL_29:
      }

LABEL_31:
      ++v9;
    }

    while (v9 != v8);
    v7 = v50;
    v6 = v43;
    v4 = v44;
  }

  if (v7[2])
  {
    static Logger.supportFlowApp.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v6;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v47[0] = v36;
      *v35 = 136315138;

      v37 = Set.description.getter();
      v39 = v38;

      v40 = sub_10009CACC(v37, v39, v47);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "Service outage detected: %s", v35, 0xCu);
      sub_1000086BC(v36);

      (*(v45 + 8))(v34, v4);
    }

    else
    {

      (*(v45 + 8))(v6, v4);
    }
  }

  return v7;
}

uint64_t sub_10007A1C0(uint64_t a1)
{
  type metadata accessor for SupportFlowIdentifier();
  sub_10007B688();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100019E84();
  (*(v6 + 16))(v3, a1, v2);
  v8 = (*(v6 + 88))(v3, v2);
  if (v8 == enum case for SupportFlowIdentifier.compromisedAccount(_:) || v8 == enum case for SupportFlowIdentifier.disabledAccount(_:) || v8 == enum case for SupportFlowIdentifier.forgotPassword(_:))
  {
    sub_100003768(&qword_10018D470, &unk_100128ED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100121620;
    v13 = v1[2];
    v12 = v1[3];
  }

  else if (v8 == enum case for SupportFlowIdentifier.mail(_:))
  {
    sub_100003768(&qword_10018D470, &unk_100128ED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100121620;
    v13 = v1[8];
    v12 = v1[9];
  }

  else if (v8 == enum case for SupportFlowIdentifier.messages(_:))
  {
    sub_100003768(&qword_10018D470, &unk_100128ED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100121620;
    v13 = v1[10];
    v12 = v1[11];
  }

  else
  {
    if (v8 == enum case for SupportFlowIdentifier.purchases(_:))
    {
      sub_100003768(&qword_10018D470, &unk_100128ED0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100128690;
      v16 = v1[5];
      *(inited + 32) = v1[4];
      *(inited + 40) = v16;
      v17 = v1[3];
      *(inited + 48) = v1[2];
      *(inited + 56) = v17;
      v18 = v1[13];
      *(inited + 64) = v1[12];
      *(inited + 72) = v18;

      goto LABEL_15;
    }

    if (v8 != enum case for SupportFlowIdentifier.softwareUpdate(_:))
    {
      (*(v6 + 8))(v3, v2);
      return 0;
    }

    sub_100003768(&qword_10018D470, &unk_100128ED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100121620;
    v13 = v1[6];
    v12 = v1[7];
  }

  *(inited + 32) = v13;
  *(inited + 40) = v12;
LABEL_15:

  v14 = sub_10007A488(inited);
  swift_setDeallocating();
  sub_10006EB40();
  return v14;
}

uint64_t sub_10007A488(uint64_t a1)
{
  v2 = v1;
  v110 = type metadata accessor for UUID();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  __chkstk_darwin(v5 - 8);
  v108 = &v96 - v6;
  v103 = type metadata accessor for FlowSymbol(0);
  __chkstk_darwin(v103);
  v106 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for URL();
  v96 = *(v102 - 8);
  __chkstk_darwin(v102);
  v97 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v10 = __chkstk_darwin(v9 - 8);
  v100 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v101 = &v96 - v12;
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v99 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for URLComponents();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v111 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003768(&qword_10018D468, &qword_10012E130);
  __chkstk_darwin(v16 - 8);
  v18 = &v96 - v17;
  v19 = type metadata accessor for Locale();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v98 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v96 - v23;
  if (qword_100188360 != -1)
  {
    swift_once();
  }

  v114 = v18;
  v115 = v1;
  if (!qword_1001A5950)
  {
LABEL_7:
    v112 = v20;
    v113 = v19;
    v31 = 0;
    v32 = *(a1 + 16);
    v33 = a1 + 32;
LABEL_8:
    while (v31 != v32)
    {
      v34 = v31++;
      v35 = v2[17];
      if (*(v35 + 2))
      {
        v36 = (v33 + 16 * v34);
        v28 = *v36;
        v30 = v36[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v37 = Hasher._finalize()();
        v38 = ~(-1 << v35[32]);
        do
        {
          v39 = v37 & v38;
          if (((*&v35[(((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v37 & v38)) & 1) == 0)
          {

            v2 = v115;
            goto LABEL_8;
          }

          v40 = (*(v35 + 6) + 16 * v39);
          if (*v40 == v28 && v40[1] == v30)
          {
            break;
          }

          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v37 = v39 + 1;
        }

        while ((v42 & 1) == 0);

        v20 = v112;
        v19 = v113;
        goto LABEL_20;
      }
    }

    return 0;
  }

  KeyPath = swift_getKeyPath();

  v26 = sub_1000FBFA4(KeyPath);

  if ((v26 & 1) == 0)
  {

    goto LABEL_7;
  }

  v28 = sub_10007B55C(v27, a1);
  v30 = v29;

LABEL_20:
  static Locale.current.getter();
  v120 = Locale.identifier.getter();
  v121 = v43;
  v118 = 95;
  v119 = 0xE100000000000000;
  v116 = 0;
  v117 = 0xE000000000000000;
  sub_10000AC24();
  v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v46 = v45;

  v125._countAndFlagsBits = v44;
  v125._object = v46;
  v47 = sub_10006FCD4(v125);
  if (v47 == 15)
  {
    v48 = v114;
    Locale.region.getter();
    v49 = type metadata accessor for Locale.Region();
    if (sub_10000E5F0(v48, 1, v49) == 1)
    {
      (*(v20 + 8))(v24, v19);
      sub_10001D724(v48, &qword_10018D468, &qword_10012E130);
LABEL_25:
      v124 = 0;
      v122 = 0u;
      v123 = 0u;
LABEL_41:

      sub_10001D724(&v122, &qword_10018D478, &qword_100128EE0);
      return 0;
    }

    v50 = Locale.Region.identifier.getter();
    v52 = v51;
    (*(*(v49 - 8) + 8))(v48, v49);
    v126._countAndFlagsBits = v50;
    v126._object = v52;
    v47 = sub_10006FCD4(v126);
    if (v47 == 15)
    {
      (*(v20 + 8))(v24, v19);
      goto LABEL_25;
    }
  }

  *(&v123 + 1) = &type metadata for ServiceStatusInfoProvider;
  v124 = &off_10017B798;
  LOBYTE(v122) = v47;
  (*(v20 + 8))(v24, v19);
  if (!*(&v123 + 1))
  {
    goto LABEL_41;
  }

  sub_100003768(&qword_10018D480, &qword_100128EE8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  if (!v30)
  {
    return 0;
  }

  v53 = v120;
  v54 = v28 == v115[2] && v30 == v115[3];
  if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v115 = &off_100178778;
    v55 = &type metadata for AppleAccountServiceProvider;
LABEL_35:

    goto LABEL_36;
  }

  v90 = v28 == v115[4] && v30 == v115[5];
  if (v90 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v115 = &off_1001789E0;
    v55 = &type metadata for AppStoreServiceProvider;
    goto LABEL_35;
  }

  v91 = v28 == v115[6] && v30 == v115[7];
  if (v91 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v115 = &off_10017F018;
    v55 = &type metadata for DeviceActivationServiceProvider;
    goto LABEL_35;
  }

  v92 = v28 == v115[8] && v30 == v115[9];
  if (v92 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v115 = &off_10017EBF8;
    v55 = &type metadata for MailServiceProvider;
    goto LABEL_35;
  }

  v93 = v28 == v115[10] && v30 == v115[11];
  if (v93 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v115 = &off_100179818;
    v55 = &type metadata for MessagesServiceProvider;
    goto LABEL_35;
  }

  if (v28 == v115[12] && v30 == v115[13])
  {
    v115 = &off_10017E650;
    v55 = &type metadata for WalletServiceProvider;
    goto LABEL_35;
  }

  v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v95 & 1) == 0)
  {
    return 0;
  }

  v115 = &off_10017E650;
  v55 = &type metadata for WalletServiceProvider;
LABEL_36:
  v56 = v102;
  URLComponents.init()();
  URLComponents.scheme.setter();
  if (sub_10006FBD8(v53) != 20035 || v57 != 0xE200000000000000)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  URLComponents.host.setter();
  v61 = sub_10006FB30(v53);
  if (v62)
  {
    *&v122 = v61;
    *(&v122 + 1) = v62;

    v63._countAndFlagsBits = 0xD000000000000016;
    v63._object = 0x8000000100137190;
    String.append(_:)(v63);
  }

  URLComponents.path.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v64 = String.init(localized:table:bundle:locale:comment:)();
  v66 = v65;
  v67 = v101;
  URLComponents.url.getter();
  v68 = v100;
  sub_10001BDA0(v67, v100);
  if (sub_10000E5F0(v68, 1, v56) == 1)
  {
    sub_10001D724(v67, &qword_100188EE0, &unk_100122AE0);

    v69 = 0;
  }

  else
  {
    v70 = v96 + 32;
    v71 = v97;
    (*(v96 + 32))(v97, v68, v56);
    sub_10007B2EC(v71, v64, v66, &v122);

    (*(v70 - 24))(v71, v56);
    sub_10001D724(v67, &qword_100188EE0, &unk_100122AE0);
    v69 = v122;
  }

  v72 = v103;
  v73 = v106;
  static SymbolRenderingMode.multicolor.getter();
  v74 = v72[6];
  v75 = enum case for Image.Scale.medium(_:);
  v76 = type metadata accessor for Image.Scale();
  (*(*(v76 - 8) + 104))(&v73[v74], v75, v76);
  *v73 = 0xD00000000000001DLL;
  *(v73 + 1) = 0x8000000100137210;
  *&v73[v72[7]] = 0;
  *&v73[v72[8]] = vdupq_n_s64(0x4046000000000000uLL);
  v77 = v108;
  sub_10007B494(v73, v108);
  v78 = type metadata accessor for FlowImage(0);
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v77, 0, 1, v78);
  v79 = v115;
  v80 = (v115[1])(v55, v115);
  v82 = v81;
  v83 = (v79[2])(v55, v79);
  v85 = v84;
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v86 = v107;
  UUID.init()();
  v87 = UUID.uuidString.getter();
  v89 = v88;
  (*(v109 + 8))(v86, v110);
  type metadata accessor for PlacardInfoItem(0);
  swift_allocObject();
  v59 = sub_1000F04E8(1, v87, v89, v77, v80, v82, v83, v85, v69, &v122);
  sub_10007B4F8(v73);
  (*(v104 + 8))(v111, v105);
  return v59;
}

uint64_t sub_10007B2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ActionInfoDestination(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ActionInfo(0);
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  swift_allocObject();

  result = sub_1000EDD44(v10, a2, a3, 1, v13, 0, 0);
  *a4 = result;
  return result;
}

unint64_t sub_10007B43C()
{
  result = qword_10018D460;
  if (!qword_10018D460)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D460);
  }

  return result;
}

uint64_t sub_10007B494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowSymbol(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007B4F8(uint64_t a1)
{
  v2 = type metadata accessor for FlowSymbol(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10007B55C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = sub_10007B5C8(*(a2 + 16));
  if (result < v2)
  {
    v5 = *(a2 + 16 * result + 32);

    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_10007B5C8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_10007B668()
{

  return sub_1000E0B24((v2 - 88), v1, v0);
}

uint64_t sub_10007B6A0()
{
}

uint64_t sub_10007B6BC()
{
}

uint64_t sub_10007B6D4()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_10007B6EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_10007B72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007B7A8()
{
  type metadata accessor for EnvironmentValues();
  sub_10007BFD0();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v0);
    return v11[1];
  }

  return v7;
}

uint64_t sub_10007B8D8()
{
  v2 = v1;
  sub_100003768(&qword_10018D488, &qword_100129018);
  sub_10007BFD0();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = *(v1 + 40);
  v9 = *(v2 + 48);
  sub_100025734((v2 + 16), v8);
  v14 = sub_1000C2D64(v8, *(*(v9 + 8) + 16));
  sub_10007BE08(v2, __src);
  v10 = swift_allocObject();
  memcpy((v10 + 16), __src, 0x48uLL);
  View.onFirstAppear(perform:)();

  sub_10007BE08(v2, __src);
  v11 = swift_allocObject();
  memcpy((v11 + 16), __src, 0x48uLL);
  v14 = &type metadata for AnyView;
  v15 = &protocol witness table for AnyView;
  sub_10007BFB8();
  swift_getOpaqueTypeConformance2();
  View.onLoad(perform:)();

  return (*(v4 + 8))(v7, v0);
}

uint64_t sub_10007BADC(uint64_t a1)
{
  sub_100003768(&qword_10018D490, &unk_100129030);
  State.wrappedValue.getter();
  v1 = *(v4 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected);
  v2 = *(v4 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected + 8);
  sub_100006568(v1, v2);

  if (v1)
  {
    v1(result);
    return sub_1000068F8(v1, v2);
  }

  return result;
}

uint64_t sub_10007BB74(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007BC68, v4, v3);
}

uint64_t sub_10007BC68()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  sub_10007B7A8();
  v5 = v4[5];
  v6 = v4[6];
  sub_100025734(v4 + 2, v5);
  (*(v6 + 24))(v5, v6);
  v7 = v4[8];
  v0[2] = v4[7];
  v0[3] = v7;
  sub_100003768(&qword_10018D490, &unk_100129030);
  State.wrappedValue.getter();

  (*(v3 + 104))(v1, enum case for DeviceExpertTroubleshooting.ActionType.executed(_:), v2);
  sub_10008787C();

  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10007BE4C()
{

  sub_1000086BC((v0 + 32));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10007BE9C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000D870;

  return sub_10007BB74(v0 + 16);
}

uint64_t sub_10007BF30()
{
  sub_100004D48(&qword_10018D488, &qword_100129018);
  sub_10007BFB8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10007C020(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

double sub_10007C160@<D0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a5@<X8>)
{
  sub_10007C020(a1, a2 & 1);

  v6 = sub_10008ADF0();

  if (v6)
  {

    sub_10007C2A8();
  }

  sub_100003768(&qword_10018B7C8, &unk_100126840);
  sub_10004FDF8();
  sub_10001BB68();
  _ConditionalContent<>.init(storage:)();
  *a5 = v8;
  a5[1] = v9;
  a5[2] = *v10;
  result = *&v10[9];
  *(a5 + 41) = *&v10[9];
  return result;
}

id *sub_10007C2A8()
{
  v28 = type metadata accessor for UUID();
  v0 = *(v28 - 8);
  __chkstk_darwin(v28);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  __chkstk_darwin(v3 - 8);
  v27 = v23 - v4;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v26 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v25 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  result = _swiftEmptyArrayStorage;
  v29 = _swiftEmptyArrayStorage;
  v23[1] = "itle regarding a subscription";
  v23[2] = "system_status_%@.js";
  v23[0] = "itle regarding a purchase";
  v24 = (v0 + 8);
  do
  {
    v11 = *(&off_1001765C8 + v9 + 32);
    if (v11 == 4 || v11 == 3 || v11 == 2)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v12 = String.init(localized:table:bundle:locale:comment:)();
      v14 = v13;
      v15 = type metadata accessor for FlowImage(0);
      v16 = v27;
      sub_100003CE8(v27, 1, 1, v15);
      UUID.init()();
      v17 = UUID.uuidString.getter();
      v19 = v18;
      (*v24)(v2, v28);
      type metadata accessor for OptionInfoItem(0);
      v20 = swift_allocObject();
      v21 = v20 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep;
      *(v20 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep + 24) = &type metadata for PurchasesStepProvider;
      *(v21 + 32) = sub_1000258DC();
      *v21 = v11;
      v22 = (v20 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected);
      *v22 = 0;
      v22[1] = 0;
      sub_1000EBC54(v17, v19, v16, v12, v14, 0, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v29;
    }

    ++v9;
  }

  while (v9 != 3);
  return result;
}

unint64_t sub_10007C6E4()
{
  result = qword_10018D498;
  if (!qword_10018D498)
  {
    sub_100004D48(&qword_10018D4A0, &qword_100129128);
    sub_10004FDF8();
    sub_10001BB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D498);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisabledAccountStepOverrideProvider(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DisabledAccountStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10007C8C4);
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

unint64_t sub_10007C918(char a1)
{
  result = 0x694C206575737349;
  switch(a1)
  {
    case 1:
      result = 0x7974697275636553;
      break;
    case 2:
      result = 0x6150207465736552;
      break;
    case 3:
      result = 0x41206B636F6C6E55;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10007CA3C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001765F0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10007CA88(char a1)
{
  result = 0x73694C6575737369;
  switch(a1)
  {
    case 1:
      result = 0x655364656B636F6CLL;
      break;
    case 2:
      result = 0x7361507465736572;
      break;
    case 3:
      result = 0x63416B636F6C6E75;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x52746E756F636361;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10007CBB0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10007CA3C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10007CBE0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10007CA88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10007CC58()
{
  result = qword_10018D4A8;
  if (!qword_10018D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D4A8);
  }

  return result;
}

unint64_t sub_10007CCAC()
{
  result = qword_10018D4B0;
  if (!qword_10018D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D4B0);
  }

  return result;
}

uint64_t sub_10007CD68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018D4C0, &qword_1001291C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10007CE20()
{
  result = qword_10018D508;
  if (!qword_10018D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D508);
  }

  return result;
}

unint64_t sub_10007CE74()
{
  result = qword_10018D510;
  if (!qword_10018D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D510);
  }

  return result;
}

unint64_t sub_10007CECC()
{
  result = qword_10018D518;
  if (!qword_10018D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D518);
  }

  return result;
}

uint64_t sub_10007CF50(uint64_t a1)
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  sub_10000C30C();
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  sub_10000C30C();
  v3 = type metadata accessor for SupportFlowIdentifier();
  __chkstk_darwin(v3);
  sub_10000C30C();
  (*(v6 + 104))(v5 - v4, enum case for SupportFlowIdentifier.screenRepair(_:));

  v7 = sub_100104F78();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_1001062E0();
  sub_1001080A8(0);

  return v7;
}

uint64_t type metadata accessor for ScreenRepairFlowViewModel(uint64_t a1)
{
  result = qword_10018D548;
  if (!qword_10018D548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007D1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 40) = &type metadata for MailStepProvider;
  *(a4 + 48) = sub_1000257D8();
  *(a4 + 16) = a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0;
}

uint64_t sub_10007D258(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_10007D2AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10007D32C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_100003768(&qword_10018D818, &qword_100129548);
  sub_100003768(&qword_10018D820, &qword_100129550);
  sub_10007E4F4();
  sub_10000AAEC(v5, &qword_10018D818, &qword_100129548, v6);
  sub_100004D48(&qword_10018D830, &qword_100129558);
  sub_100004D48(&qword_10018D838, &unk_100129560);
  sub_10007E034();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return View.toolbar<A>(content:)();
}

uint64_t sub_10007D474@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a3;
  v47 = a5;
  v8 = sub_100003768(&qword_10018B2A0, &qword_1001259A0);
  v40 = *(v8 - 8);
  __chkstk_darwin(v8);
  v46 = &v39 - v9;
  v10 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v10 - 8);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003768(&qword_10018B2B8, &qword_1001259A8);
  v45 = *(v12 - 8);
  __chkstk_darwin(v12);
  v44 = &v39 - v13;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100003768(&qword_10018D838, &unk_100129560);
  v18 = __chkstk_darwin(v52);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v48 = &v39 - v21;
  v22 = sub_100003768(&qword_10018D830, &qword_100129558);
  v50 = *(v22 - 8);
  v51 = v22;
  __chkstk_darwin(v22);
  v49 = &v39 - v23;

  v42 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    v39 = v14;
    v26 = v25;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(a1);
    (*(v15 + 8))(v17, v39);
    v24 = v53;
  }

  if (v24)
  {

    v27 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v27);
    *(&v39 - 4) = a1;
    *(&v39 - 24) = v42 & 1;
    *(&v39 - 2) = v43;
    *(&v39 - 1) = a4;
    sub_100003768(&qword_10018B318, &unk_10012ED70);
    sub_10000AAEC(&qword_10018B320, &qword_10018B318, &unk_10012ED70, &protocol conformance descriptor for Button<A>);
    v28 = v44;
    ToolbarItem<>.init(placement:content:)();
    v29 = sub_10000AAEC(&qword_10018B2C0, &qword_10018B2B8, &qword_1001259A8, &protocol conformance descriptor for ToolbarItem<A, B>);
    v30 = v46;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v31 = v40;
    (*(v40 + 16))(v20, v30, v8);
    sub_100003CE8(v20, 0, 1, v8);
    v53 = v12;
    v54 = v29;
    swift_getOpaqueTypeConformance2();
    v32 = v48;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10007E12C(v20);
    (*(v31 + 8))(v30, v8);
    (*(v45 + 8))(v28, v12);
  }

  else
  {
    sub_100003CE8(v20, 1, 1, v8);
    v33 = sub_10000AAEC(&qword_10018B2C0, &qword_10018B2B8, &qword_1001259A8, &protocol conformance descriptor for ToolbarItem<A, B>);
    v53 = v12;
    v54 = v33;
    swift_getOpaqueTypeConformance2();
    v32 = v48;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10007E12C(v20);
  }

  v34 = sub_10007E034();
  v35 = v49;
  v36 = v52;
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  sub_10007E12C(v32);
  v53 = v36;
  v54 = v34;
  swift_getOpaqueTypeConformance2();
  v37 = v51;
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v50 + 8))(v35, v37);
}

uint64_t sub_10007DAFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    *(v6 + 24) = a4;
    v7 = sub_10007E4F0;
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2 & 1;
    *(v10 + 32) = 0;
    *(v10 + 40) = a4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10007E218;
    *(v6 + 24) = v10;
    j__swift_retain(a1);
    v7 = sub_100040A84;
  }

  v11 = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v6;
  sub_100006568(a3, a4);
  sub_100003768(&qword_10018B328, &unk_100125A30);
  sub_100045D24();

  return Button.init(action:label:)();
}

uint64_t sub_10007DC7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = a1 + *(sub_100003768(&qword_10018B328, &unk_100125A30) + 36);
  v4 = *(sub_100003768(&qword_10018ACB0, &qword_100125420) + 28);
  v5 = enum case for Image.Scale.large(_:);
  v6 = type metadata accessor for Image.Scale();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_10007DD54(uint64_t a1, char a2)
{
  v4 = type metadata accessor for ClientFlowPresentationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(a1);
    result = (*(v9 + 8))(v11, v8);
    a1 = v14[1];
  }

  if (a1)
  {
    (*(v5 + 104))(v7, enum case for ClientFlowPresentationState.cancelled(_:), v4);
    SupportFlowSceneHostingClientManager.flowState.setter();
  }

  return result;
}

uint64_t sub_10007DF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_100006568(a1, a2);
  View.modifier<A>(_:)();

  return sub_1000068F8(a1, a2);
}

unint64_t sub_10007E034()
{
  result = qword_10018D840;
  if (!qword_10018D840)
  {
    sub_100004D48(&qword_10018D838, &unk_100129560);
    sub_100004D48(&qword_10018B2B8, &qword_1001259A8);
    sub_10000AAEC(&qword_10018B2C0, &qword_10018B2B8, &qword_1001259A8, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D840);
  }

  return result;
}

uint64_t sub_10007E12C(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018D838, &unk_100129560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007E1CC()
{
  j__swift_release(*(v0 + 16));
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007E230()
{

  return _swift_deallocObject(v0, 32, 7);
}

_BYTE *storeEnumTagSinglePayload for ToolbarItemConfiguration(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10007E338);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10007E370()
{
  sub_100004D48(&qword_10018D818, &qword_100129548);
  sub_100004D48(&qword_10018D820, &qword_100129550);
  sub_10007E4F4();
  sub_10000AAEC(v0, &qword_10018D818, &qword_100129548, v1);
  sub_100004D48(&qword_10018D830, &qword_100129558);
  sub_100004D48(&qword_10018D838, &unk_100129560);
  sub_10007E034();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10007E494()
{
  result = qword_10018D848;
  if (!qword_10018D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D848);
  }

  return result;
}

uint64_t sub_10007E50C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v8 = v1;
  sub_10008299C();
  sub_1000827DC(v3, v4, &unk_100129670);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath;
  swift_beginAccess();
  type metadata accessor for NavigationPath();
  sub_10000AF7C();
  return (*(v6 + 16))(a1, v8 + v5);
}

uint64_t sub_10007E5EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NavigationPath();
  sub_100008780();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000C30C();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath;
  swift_beginAccess();
  (*(v6 + 16))(v10, v1 + v11, v4);
  sub_1000827DC(&qword_10018DA38, &type metadata accessor for NavigationPath, &protocol conformance descriptor for NavigationPath);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v10, v4);
  if (v12)
  {
    sub_100052FBC(v2 + v11, v18);
    (*(v6 + 24))(v2 + v11, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v15 = __chkstk_darwin(KeyPath);
    *(&v17 - 2) = v2;
    *(&v17 - 1) = a1;
    sub_100081050(v15, sub_100082824, (&v17 - 4));
  }

  return (v13)(a1, v4);
}

BOOL sub_10007E7F4(uint64_t a1)
{
  v1 = sub_10008ADF0();
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_10007E834()
{
  sub_100025A94();
  *(v1 + 160) = v0;
  *(v1 + 467) = v2;
  v3 = sub_100003768(&qword_10018DA18, &unk_100129750);
  sub_10000ED84(v3);
  *(v1 + 168) = sub_100052FA4();
  v4 = type metadata accessor for PhoneNumberOption(0);
  *(v1 + 176) = v4;
  sub_10000ED84(v4);
  *(v1 + 184) = sub_100052FA4();
  v5 = type metadata accessor for URL();
  *(v1 + 192) = v5;
  sub_100052F6C(v5);
  *(v1 + 200) = v6;
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 216) = swift_task_alloc();
  v7 = type metadata accessor for ContactType();
  *(v1 + 224) = v7;
  sub_100052F6C(v7);
  *(v1 + 232) = v8;
  *(v1 + 240) = sub_100052FA4();
  v9 = sub_100003768(&qword_100189108, &unk_1001226E0);
  sub_10000ED84(v9);
  *(v1 + 248) = sub_100052FA4();
  v10 = sub_100003768(&qword_10018DA20, &qword_100129760);
  sub_10000ED84(v10);
  *(v1 + 256) = sub_100052FA4();
  v11 = sub_100003768(&qword_10018DA28, &unk_100129768);
  sub_10000ED84(v11);
  *(v1 + 264) = sub_100052FA4();
  v12 = type metadata accessor for SupportSolutions(0);
  *(v1 + 272) = v12;
  sub_10000ED84(v12);
  *(v1 + 280) = sub_100052FA4();
  v13 = type metadata accessor for CaseDetails();
  *(v1 + 288) = v13;
  sub_100052F6C(v13);
  *(v1 + 296) = v14;
  *(v1 + 304) = sub_100052FA4();
  v15 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v15);
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v1 + 352) = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 360) = v17;
  *(v1 + 368) = v16;

  return _swift_task_switch(sub_10007EB20, v17, v16);
}

uint64_t sub_10007EB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100082B3C();
  sub_100082B70();
  v20 = *(v18 + 467);
  sub_100003CE8(*(v18 + 344), 1, 1, *(v18 + 192));
  if (v20 == 1)
  {
    v21 = *(v18 + 160);
    *(v18 + 466) = 0;
    swift_getKeyPath();
    *(v18 + 136) = v21;
    sub_10008299C();
    sub_1000827DC(v22, v23, &unk_100129670);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v18 + 144) = v21;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    sub_100052FBC(v21 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath, v18 + 64);
    sub_10002EA50();
    NavigationPath.append<A>(_:)();
    swift_endAccess();
    *(v18 + 152) = v21;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v24 = swift_task_alloc();
    *(v18 + 376) = v24;
    *v24 = v18;
    v24[1] = sub_10007F2BC;
    sub_100082AD8();

    return sub_100087A1C();
  }

  v28 = *(v18 + 264);
  v27 = *(v18 + 272);
  v29 = *(v18 + 256);
  sub_10008CBB8();
  sub_1000912CC(v28);
  sub_10000ABCC(v29, &qword_10018DA20, &qword_100129760);
  v30 = sub_100082B98();
  v32 = sub_10000E5F0(v30, v31, v27);
  v33 = *(v18 + 264);
  if (v32 == 1)
  {
    v34 = *(v18 + 344);

    sub_10000ABCC(v33, &qword_10018DA28, &unk_100129768);
    v35 = sub_1000825B0();
    sub_100082BA4(&type metadata for SupportHandoffUserConsentViewModel.Error, v35);
    v37 = 4;
LABEL_7:
    sub_100082B7C(v36, v37);
    v38 = &qword_100188EE0;
    v39 = &unk_100122AE0;
    v40 = v34;
LABEL_8:
    sub_10000ABCC(v40, v38, v39);
LABEL_9:
    sub_1000829B4();
    sub_1000829EC();

    sub_10000875C();
    sub_100082AD8();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v49 = *(v18 + 280);
  v50 = *(v18 + 248);
  sub_10000ABCC(*(v18 + 344), &qword_100188EE0, &unk_100122AE0);
  sub_100082688(v33, v49, type metadata accessor for SupportSolutions);
  sub_10000EC9C(v49, v50, &qword_100189108, &unk_1001226E0);
  type metadata accessor for SupportSolutions.ChatInfo(0);
  v51 = sub_100082B98();
  v54 = sub_10000E5F0(v51, v52, v53);
  v55 = *(v18 + 328);
  v56 = *(v18 + 248);
  if (v54 == 1)
  {
    v57 = *(v18 + 192);
    sub_10000ABCC(*(v18 + 248), &qword_100189108, &unk_1001226E0);
    sub_100003CE8(v55, 1, 1, v57);
  }

  else
  {
    sub_10000EC9C(*(v18 + 248), *(v18 + 328), &qword_100188EE0, &unk_100122AE0);
    sub_1000826E8(v56, type metadata accessor for SupportSolutions.ChatInfo);
  }

  v58 = *(v18 + 272);
  v59 = *(v18 + 280);
  sub_100082604(*(v18 + 328), *(v18 + 344));
  v60 = (v59 + *(v58 + 20));
  v61 = *v60;
  v62 = v60[1];
  sub_100082674(*v60, v62);
  sub_1000826E8(v59, type metadata accessor for SupportSolutions);
  if (v62 == 1)
  {
    v63 = 0;
  }

  else
  {
    v63 = v61;
  }

  if (v62 == 1)
  {
    v64 = 0;
  }

  else
  {
    v64 = v62;
  }

  sub_100082BD4();
  v65 = sub_100082BBC();
  v66(v65);
  v67 = (*(v19 + 88))(v59, v62);
  if (v67 == enum case for ContactType.call(_:))
  {
    if (!v64)
    {
      v34 = *(v18 + 344);

      v90 = sub_1000825B0();
      sub_100082BA4(&type metadata for SupportHandoffUserConsentViewModel.Error, v90);
      v37 = 1;
      goto LABEL_7;
    }

    v68 = *(v18 + 467);
    if ((sub_1000CBE74() & 1) != 0 && (v68 & 1) == 0)
    {
      v69 = *(v18 + 160);
      *(v18 + 465) = 0;
      swift_getKeyPath();
      *(v18 + 112) = v69;
      sub_10008299C();
      sub_1000827DC(v70, v71, &unk_100129670);
      sub_100082B1C();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v18 + 120) = v69;
      swift_getKeyPath();
      sub_100082B1C();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      sub_100052FBC(v69 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath, v18 + 40);
      sub_10002EA50();
      NavigationPath.append<A>(_:)();
      swift_endAccess();
      *(v18 + 128) = v69;
      swift_getKeyPath();
      sub_100082B58();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }

    v72 = swift_task_alloc();
    *(v18 + 424) = v72;
    *v72 = v18;
    sub_100082A78(v72);
    sub_100082AD8();

    return sub_100081624(v73, v74);
  }

  else
  {
    if (v67 != enum case for ContactType.chat(_:))
    {
      v84 = *(v18 + 344);
      v85 = *(v18 + 232);
      v86 = *(v18 + 240);
      v87 = *(v18 + 224);

      v88 = sub_1000825B0();
      sub_100082BA4(&type metadata for SupportHandoffUserConsentViewModel.Error, v88);
      sub_100082B7C(v89, 3);
      sub_10000ABCC(v84, &qword_100188EE0, &unk_100122AE0);
      (*(v85 + 8))(v86, v87);
      goto LABEL_9;
    }

    sub_100082C48();
    sub_10000EC9C(v59, v63, &qword_100188EE0, &unk_100122AE0);
    v76 = sub_100082B98();
    if (sub_10000E5F0(v76, v77, v62) == 1)
    {

      sub_100082B58();
      sub_10000ABCC(v78, v79, v80);
      v81 = sub_1000825B0();
      v82 = sub_100082BA4(&type metadata for SupportHandoffUserConsentViewModel.Error, v81);
      *v83 = 0;
      a14 = v82;
      swift_willThrow();
      sub_100082B58();
      goto LABEL_8;
    }

    v91 = sub_100082BFC();
    v92(v91);
    v93 = swift_task_alloc();
    *(v18 + 408) = v93;
    *v93 = v18;
    sub_100082AA8(v93);
    sub_100082AD8();

    return sub_1000819E8(v94);
  }
}

uint64_t sub_10007F2BC()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 384) = v0;

  sub_100052FF8();
  v6 = *(v5 + 368);
  v7 = *(v1 + 360);
  if (v0)
  {
    v8 = sub_100080534;
  }

  else
  {
    v8 = sub_10007F3E4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10007F3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100082B3C();
  sub_100082B70();
  v20 = *(v18 + 336);
  v19 = *(v18 + 344);
  v22 = *(v18 + 296);
  v21 = *(v18 + 304);
  v23 = *(v18 + 288);
  CaseDetails.bizChatURL.getter();
  v25 = v24;
  URL.init(string:)();

  sub_10000ABCC(v19, &qword_100188EE0, &unk_100122AE0);
  sub_100082604(v20, v19);
  v26 = CaseDetails.phoneNumber.getter();
  v28 = v27;
  (*(v22 + 8))(v21, v23);
  sub_100082BD4();
  v29 = sub_100082BBC();
  v30(v29);
  v31 = (*(v25 + 88))(v21, v23);
  if (v31 == enum case for ContactType.call(_:))
  {
    if (v28)
    {
      v32 = *(v18 + 467);
      if ((sub_1000CBE74() & 1) != 0 && (v32 & 1) == 0)
      {
        v33 = *(v18 + 160);
        *(v18 + 465) = 0;
        swift_getKeyPath();
        *(v18 + 112) = v33;
        sub_10008299C();
        sub_1000827DC(v34, v35, &unk_100129670);
        sub_100082B1C();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v18 + 120) = v33;
        swift_getKeyPath();
        sub_100082B1C();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        sub_100052FBC(v33 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath, v18 + 40);
        sub_10002EA50();
        NavigationPath.append<A>(_:)();
        swift_endAccess();
        *(v18 + 128) = v33;
        swift_getKeyPath();
        sub_100082B58();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();
      }

      v36 = swift_task_alloc();
      *(v18 + 424) = v36;
      *v36 = v18;
      sub_100082A78(v36);
      sub_100082AD8();

      return sub_100081624(v37, v38);
    }

    v58 = *(v18 + 344);

    v59 = sub_1000825B0();
    sub_100082BA4(&type metadata for SupportHandoffUserConsentViewModel.Error, v59);
    sub_100082B7C(v60, 1);
    v50 = &qword_100188EE0;
    v51 = &unk_100122AE0;
    v49 = v58;
    goto LABEL_14;
  }

  if (v31 != enum case for ContactType.chat(_:))
  {
    v52 = *(v18 + 344);
    v54 = *(v18 + 232);
    v53 = *(v18 + 240);
    v55 = *(v18 + 224);

    v56 = sub_1000825B0();
    sub_100082BA4(&type metadata for SupportHandoffUserConsentViewModel.Error, v56);
    sub_100082B7C(v57, 3);
    sub_10000ABCC(v52, &qword_100188EE0, &unk_100122AE0);
    (*(v54 + 8))(v53, v55);
LABEL_15:
    sub_1000829B4();
    sub_1000829EC();

    sub_10000875C();
    sub_100082AD8();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  sub_100082C48();
  sub_10000EC9C(v21, v26, &qword_100188EE0, &unk_100122AE0);
  v41 = sub_100082B98();
  if (sub_10000E5F0(v41, v42, v23) == 1)
  {

    sub_100082B58();
    sub_10000ABCC(v43, v44, v45);
    v46 = sub_1000825B0();
    v47 = sub_100082BA4(&type metadata for SupportHandoffUserConsentViewModel.Error, v46);
    *v48 = 0;
    a14 = v47;
    swift_willThrow();
    sub_100082B58();
LABEL_14:
    sub_10000ABCC(v49, v50, v51);
    goto LABEL_15;
  }

  v69 = sub_100082BFC();
  v70(v69);
  v71 = swift_task_alloc();
  *(v18 + 408) = v71;
  *v71 = v18;
  sub_100082AA8(v71);
  sub_100082AD8();

  return sub_1000819E8(v72);
}

uint64_t sub_10007F86C()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 416) = v0;

  sub_100052FF8();
  v6 = *(v5 + 368);
  v7 = *(v1 + 360);
  if (v0)
  {
    v8 = sub_10008062C;
  }

  else
  {
    v8 = sub_10007F994;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10007F994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100082C2C();
  v17 = *(v16 + 344);

  v18 = sub_100082B2C();
  v19(v18);
  sub_10000ABCC(v17, &qword_100188EE0, &unk_100122AE0);
  sub_1000829CC();
  sub_100082A44();

  sub_100082A68();
  sub_100082C10();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10007FAA0()
{
  sub_100025A94();
  v1 = *v0;

  v2 = *(v1 + 368);
  v3 = *(v1 + 360);

  return _swift_task_switch(sub_10007FBBC, v3, v2);
}

uint64_t sub_10007FBBC(uint64_t a1)
{
  v2 = *(sub_1000810F8() + 16);

  if (v2)
  {

    v3 = *(sub_1000810F8() + 16);

    if (v3 != 1)
    {
      v19 = *(v1 + 344);
      v20 = *(v1 + 160);

      sub_10008094C();
      *(v1 + 464) = 1;
      swift_getKeyPath();
      *(v1 + 88) = v20;
      sub_10008299C();
      sub_1000827DC(v21, v22, &unk_100129670);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v1 + 96) = v20;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      sub_100052FBC(v20 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath, v1 + 16);
      sub_10002EA50();
      NavigationPath.append<A>(_:)();
      swift_endAccess();
      *(v1 + 104) = v20;
      swift_getKeyPath();
      sub_100082B58();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      sub_10000ABCC(v19, &qword_100188EE0, &unk_100122AE0);
      sub_1000829CC();

      sub_100082A68();
      goto LABEL_9;
    }

    v5 = *(v1 + 168);
    v4 = *(v1 + 176);
    v6 = sub_1000810F8();
    sub_1001098B0(v6, v5);

    v7 = sub_100082B98();
    if (sub_10000E5F0(v7, v8, v4) == 1)
    {
      v9 = *(v1 + 344);
      v10 = *(v1 + 168);

      v11 = &qword_10018DA18;
      v12 = &unk_100129750;
LABEL_7:
      sub_10000ABCC(v10, v11, v12);
      v16 = sub_1000825B0();
      sub_100082BA4(&type metadata for SupportHandoffUserConsentViewModel.Error, v16);
      *v17 = 2;
      swift_willThrow();
      sub_10000ABCC(v9, &qword_100188EE0, &unk_100122AE0);
      sub_1000829B4();
      sub_1000829EC();

      sub_10000875C();
LABEL_9:

      return v18();
    }

    v27 = *(v1 + 176);
    v26 = *(v1 + 184);
    sub_100082688(*(v1 + 168), v26, type metadata accessor for PhoneNumberOption);
    v28 = *(v27 + 20);
    v29 = swift_task_alloc();
    *(v1 + 448) = v29;
    *v29 = v1;
    v29[1] = sub_100080310;
    v25 = v26 + v28;
  }

  else
  {
    v13 = *(v1 + 192);
    String.append(_:)(*(v1 + 392));

    URL.init(string:)();

    v14 = sub_100082B98();
    if (sub_10000E5F0(v14, v15, v13) == 1)
    {
      v9 = *(v1 + 344);
      v10 = *(v1 + 312);

      v11 = &qword_100188EE0;
      v12 = &unk_100122AE0;
      goto LABEL_7;
    }

    (*(*(v1 + 200) + 32))(*(v1 + 208), *(v1 + 312), *(v1 + 192));
    v24 = swift_task_alloc();
    *(v1 + 432) = v24;
    *v24 = v1;
    v24[1] = sub_1000800DC;
    v25 = *(v1 + 208);
  }

  return sub_1000819E8(v25);
}

uint64_t sub_1000800DC()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 440) = v0;

  sub_100052FF8();
  v6 = *(v5 + 368);
  v7 = *(v1 + 360);
  if (v0)
  {
    v8 = sub_10008073C;
  }

  else
  {
    v8 = sub_100080204;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100080204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100082C2C();
  v17 = *(v16 + 344);

  v18 = sub_100082B2C();
  v19(v18);
  sub_10000ABCC(v17, &qword_100188EE0, &unk_100122AE0);
  sub_1000829CC();
  sub_100082A44();

  sub_100082A68();
  sub_100082C10();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100080310()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 456) = v0;

  sub_100052FF8();
  v6 = *(v5 + 368);
  v7 = *(v1 + 360);
  if (v0)
  {
    v8 = sub_10008084C;
  }

  else
  {
    v8 = sub_100080438;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100080438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100082C2C();
  v17 = *(v16 + 344);

  sub_100082AF4();
  sub_10000ABCC(v17, &qword_100188EE0, &unk_100122AE0);
  sub_1000829CC();
  sub_100082A44();

  sub_100082A68();
  sub_100082C10();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100080534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100082B3C();
  sub_100082B70();
  v19 = *(v18 + 344);

  sub_10000ABCC(v19, &qword_100188EE0, &unk_100122AE0);
  sub_1000829B4();
  sub_100082A14();

  sub_10000875C();
  sub_100082AD8();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_10008062C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100082B3C();
  sub_100082B70();
  v19 = *(v18 + 344);

  v20 = sub_100082B2C();
  v21(v20);
  sub_10000ABCC(v19, &qword_100188EE0, &unk_100122AE0);
  sub_1000829B4();
  sub_100082A14();

  sub_10000875C();
  sub_100082AD8();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_10008073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100082B3C();
  sub_100082B70();
  v19 = *(v18 + 344);

  v20 = sub_100082B2C();
  v21(v20);
  sub_10000ABCC(v19, &qword_100188EE0, &unk_100122AE0);
  sub_1000829B4();
  sub_100082A14();

  sub_10000875C();
  sub_100082AD8();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_10008084C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100082B3C();
  sub_100082B70();
  v19 = *(v18 + 344);

  sub_100082AF4();
  sub_10000ABCC(v19, &qword_100188EE0, &unk_100122AE0);
  sub_1000829B4();
  sub_100082A14();

  sub_10000875C();
  sub_100082AD8();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_10008094C()
{
  v1 = v0;
  v2 = type metadata accessor for NavigationPath();
  sub_100008780();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000C30C();
  v8 = v7 - v6;
  sub_10007E50C(v7 - v6);
  v9 = NavigationPath.isEmpty.getter();
  v10 = *(v4 + 8);
  result = v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    sub_10007E50C(v8);
    v12 = NavigationPath.count.getter();
    v10(v8, v2);
    swift_getKeyPath();
    sub_10008299C();
    sub_1000827DC(v13, v14, &unk_100129670);
    sub_100082BE8();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15[0] = v1;
    swift_getKeyPath();
    sub_100082BE8();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    sub_100052FBC(v1 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath, v15);
    NavigationPath.removeLast(_:)(v12);
    swift_endAccess();
    v15[0] = v1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_100080B18()
{
  sub_100025A94();
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100080BAC, v3, v2);
}

uint64_t sub_100080BAC()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100080C44;

  return sub_100087D1C();
}

uint64_t sub_100080C44()
{
  sub_10003DCD8();
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_100080D84;

  return sub_10007E834();
}

uint64_t sub_100080D84()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 64) = v0;

  sub_100052FF8();
  v6 = *(v5 + 40);
  v7 = *(v1 + 32);
  if (v0)
  {
    v8 = sub_100080F04;
  }

  else
  {
    v8 = sub_100080EAC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100080EAC()
{
  sub_100025A94();

  sub_100082A68();

  return v0();
}

uint64_t sub_100080F04()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

BOOL sub_100080F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v5 & 1) == 0;
}

uint64_t sub_100080FB4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationPath();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100081050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10008299C();
  sub_1000827DC(v3, v4, &unk_100129670);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000810F8()
{
  swift_getKeyPath();
  sub_10008299C();
  v2 = sub_1000827DC(v0, v1, &unk_100129670);
  sub_10006F2DC(v2, v3);
}

uint64_t sub_1000811B0(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_100081050(KeyPath, sub_100082770, &v5);
}

uint64_t sub_100081224(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberOptions) = a2;
}

uint64_t sub_100081268()
{
  swift_getKeyPath();
  sub_10008299C();
  v3 = sub_1000827DC(v1, v2, &unk_100129670);
  sub_10006F2DC(v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription);

  return v5;
}

uint64_t sub_100081304(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100081344(v1, v2);
}

uint64_t sub_100081344(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription);
  if (sub_100080F60(*(v2 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription), *(v2 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription + 8), a1, a2))
  {
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v9[2] = v2;
    v9[3] = a1;
    v9[4] = a2;
    sub_100081050(v7, sub_1000827BC, v9);
  }

  else
  {
    *v5 = a1;
    v5[1] = a2;
  }
}

uint64_t sub_100081440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_100081488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for NavigationPath();
  sub_100008780();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000C30C();
  v16 = v15 - v14;
  NavigationPath.init()();
  (*(v12 + 32))(v5 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath, v16, v10);
  *(v5 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberOptions) = _swiftEmptyArrayStorage;
  v17 = (v5 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_phoneNumberParser;
  type metadata accessor for SupportPhoneNumberParser();
  swift_allocObject();
  *(v5 + v18) = sub_1000CF954();
  ObservationRegistrar.init()();
  *(v5 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dataProvider) = a1;
  sub_100082688(a2, v5 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_bundle, type metadata accessor for HandoffBundle);
  v19 = (v5 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dismissAction);
  *v19 = a3;
  v19[1] = a4;
  return v5;
}

uint64_t sub_100081624(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Locale();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v6;
  v3[10] = v5;

  return _swift_task_switch(sub_10008171C, v6, v5);
}

uint64_t sub_10008171C()
{
  sub_10003DCD8();
  v1 = sub_1000CBF60(v0[2], v0[3]);
  sub_100081344(v1, v2);
  static Locale.current.getter();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1000817EC;

  return sub_1000CC0FC();
}

uint64_t sub_1000817EC()
{
  v1 = *v0;
  sub_100052FD4();
  *v3 = v2;
  v4 = v1[7];
  v5 = v1[6];
  v6 = v1[5];
  *(v2 + 96) = v7;

  (*(v5 + 8))(v4, v6);
  v8 = v1[10];
  v9 = v1[9];

  return _swift_task_switch(sub_100081970, v9, v8);
}

uint64_t sub_100081970()
{
  sub_10003DCD8();
  v1 = *(v0 + 96);

  sub_1000811B0(v1);

  sub_10000875C();

  return v2();
}

uint64_t sub_1000819E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v2[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v5;
  v2[10] = v4;

  return _swift_task_switch(sub_100081B14, v5, v4);
}

uint64_t sub_100081B14()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = type metadata accessor for URL();
  sub_10000AF7C();
  (*(v4 + 16))(v1, v2, v3);
  sub_100003CE8(v1, 0, 1, v3);
  sub_10001BBBC(v1);
  sub_10000ABCC(v1, &qword_100188EE0, &unk_100122AE0);
  v5 = static Duration.seconds(_:)();
  v7 = v6;
  static Clock<>.continuous.getter();
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_100081C64;

  return (sub_100111FB4)(v5, v7, 0, 0, 1);
}

uint64_t sub_100081C64()
{
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  v5 = v1[6];
  v6 = v1[5];
  v7 = v1[4];
  *v4 = *v2;
  *(v3 + 96) = v0;

  (*(v6 + 8))(v5, v7);
  sub_100052FF8();
  v9 = *(v8 + 80);
  v10 = v1[9];
  if (v0)
  {
    v11 = sub_100081E80;
  }

  else
  {
    v11 = sub_100081DEC;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100081DEC()
{
  sub_10003DCD8();
  v1 = *(v0 + 24);

  v2 = sub_10008094C();
  (*(v1 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dismissAction))(v2);

  sub_100082A68();

  return v3();
}

uint64_t sub_100081E80()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_100081EF0()
{
  v1 = OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath;
  type metadata accessor for NavigationPath();
  sub_10000AF7C();
  (*(v2 + 8))(v0 + v1);

  sub_1000826E8(v0 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_bundle, type metadata accessor for HandoffBundle);

  v3 = OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_10000AF7C();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_100081FFC()
{
  sub_100081EF0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10008207C(uint64_t a1)
{
  result = type metadata accessor for NavigationPath();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HandoffBundle(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1000821C8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ContactType();
    v9 = a1 + *(a3 + 20);

    return sub_10000E5F0(v9, a2, v8);
  }
}

void *sub_100082264(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ContactType();
    v8 = v5 + *(a4 + 20);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100082304(uint64_t a1)
{
  result = sub_1000823A8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ContactType();
    if (v3 <= 0x3F)
    {
      result = sub_100082404();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1000823A8()
{
  result = qword_10018D9D0;
  if (!qword_10018D9D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10018D9D0);
  }

  return result;
}

unint64_t sub_100082404()
{
  result = qword_10018D9D8;
  if (!qword_10018D9D8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10018D9D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HandoffErrorAlert.Origin(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100082518);
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

unint64_t sub_100082554()
{
  result = qword_10018DA10;
  if (!qword_10018DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DA10);
  }

  return result;
}

unint64_t sub_1000825B0()
{
  result = qword_10018DA30;
  if (!qword_10018DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DA30);
  }

  return result;
}

uint64_t sub_100082604(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100082674(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100082688(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000AF7C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000826E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000AF7C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100082740@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000810F8();
  *a1 = result;
  return result;
}

uint64_t sub_10008278C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100081268();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000827DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for SupportHandoffUserConsentViewModel.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x10008290CLL);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100082948()
{
  result = qword_10018DA40;
  if (!qword_10018DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DA40);
  }

  return result;
}

uint64_t sub_1000829EC()
{
}

uint64_t sub_100082A14()
{
}

uint64_t sub_100082A44()
{
}

uint64_t sub_100082AF4()
{

  return sub_1000826E8(v0, type metadata accessor for PhoneNumberOption);
}

uint64_t sub_100082B7C@<X0>(_BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;

  return swift_willThrow();
}

uint64_t sub_100082BA4(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_100082C48()
{
}

double sub_100082C6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100083754(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10001E894(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_100082CD0@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1000837CC(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_10001E894(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100082D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_100083754(a1, a2), (a2 & 1) != 0))
  {
    v9 = v8;
    v10 = *(a3 + 56);
    v11 = a4(0);
    (*(*(v11 - 8) + 16))(a5, v10 + *(*(v11 - 8) + 72) * v9, v11);
    v12 = sub_100083BD4();
  }

  else
  {
    (a4)(0, a2);
    v12 = sub_100083BE8();
  }

  return sub_100003CE8(v12, v13, v14, v15);
}

uint64_t sub_100082E24(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_10008387C(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

void *sub_100082E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100083754(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_100082EB8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 8211:
      if (qword_1001883E0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for ImageResource();
      v4 = v3;
      v5 = qword_1001A59F8;
      goto LABEL_16;
    case 8212:
    case 8228:
      goto LABEL_9;
    case 8213:
    case 8214:
    case 8215:
    case 8216:
    case 8218:
    case 8220:
    case 8221:
    case 8223:
    case 8225:
    case 8226:
    case 8227:
    case 8229:
    case 8230:
      goto LABEL_12;
    case 8217:
    case 8219:
    case 8222:
    case 8224:
      if (qword_1001883F0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for ImageResource();
      v4 = v3;
      v5 = qword_1001A5A28;
      goto LABEL_16;
    case 8231:
    case 8232:
      if (qword_100188418 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for ImageResource();
      v4 = v3;
      v5 = qword_1001A5AA0;
      goto LABEL_16;
    default:
      if (a1 == 8206)
      {
LABEL_9:
        if (qword_1001883F8 != -1)
        {
          swift_once();
        }

        v3 = type metadata accessor for ImageResource();
        v4 = v3;
        v5 = qword_1001A5A40;
LABEL_16:
        v10 = sub_10000C2D4(v3, v5);
        (*(*(v4 - 8) + 16))(a2, v10, v4);
        v6 = sub_100083BD4();
      }

      else
      {
LABEL_12:
        type metadata accessor for ImageResource();
        v6 = sub_100083BE8();
      }

      return sub_100003CE8(v6, v7, v8, v9);
  }
}

void sub_1000830E4(int a1)
{
  switch(a1)
  {
    case 8217:
    case 8219:
    case 8222:
    case 8224:
      sub_100083BC8();
      break;
    default:
      return;
  }
}

void sub_1000831E4(char a1)
{
  switch(a1)
  {
    case 7:
      sub_100083BC8();
      break;
    default:
      return;
  }
}

uint64_t sub_1000832D8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
    case 2:
      if (qword_1001883E8 != -1)
      {
        swift_once();
      }

      v3 = qword_1001A5A10;
      break;
    case 3:
    case 4:
      if (qword_100188408 != -1)
      {
        swift_once();
      }

      v3 = qword_1001A5A70;
      break;
    case 5:
      if (qword_1001883D8 != -1)
      {
        swift_once();
      }

      v3 = qword_1001A59E0;
      break;
    case 6:
      if (qword_100188400 != -1)
      {
        swift_once();
      }

      v3 = qword_1001A5A58;
      break;
    case 7:
    case 8:
      if (qword_1001883D0 != -1)
      {
        swift_once();
      }

      v3 = qword_1001A59C8;
      break;
    default:
      if (qword_100188410 != -1)
      {
        swift_once();
      }

      v3 = qword_1001A5A88;
      break;
  }

  v4 = type metadata accessor for ImageResource();
  v5 = sub_10000C2D4(v4, v3);
  v6 = *(*(v4 - 8) + 16);

  return v6(a2, v5, v4);
}

uint64_t sub_100083500(int a1)
{
  v1 = a1 - 8206;
  result = 0;
  switch(v1)
  {
    case 0:
      result = 6;
      break;
    case 1:
      result = 7;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 4;
      break;
    case 11:
    case 16:
      result = 2;
      break;
    case 13:
    case 18:
      result = 1;
      break;
    case 22:
      result = 3;
      break;
    case 25:
    case 26:
      return result;
    default:
      result = 9;
      break;
  }

  return result;
}

uint64_t sub_1000835F4(unsigned int a1)
{
  v3 = sub_100083AFC(v1);
  if (!v3)
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_10;
  }

  v4 = v3;
  AnyHashable.init<A>(_:)();
  sub_100082CD0(v4, &v7, v6);

  sub_10002B078(v6);
  if (!*(&v8 + 1))
  {
LABEL_10:
    sub_10002E810(&v7);
    return 0;
  }

  sub_100003768(&qword_10018DA48, &qword_100129888);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*(v6[0] + 16) <= a1)
  {

    return 0;
  }

  sub_10001E894(v6[0] + 32 * a1 + 32, v6);

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100083754(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000838C4(a1, a2, v4);
}

unint64_t sub_1000837CC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100083978(a1, v4);
}

unint64_t sub_100083810(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_100083A3C(v1, v2);
}

unint64_t sub_10008387C(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_100083A9C(v1, v2);
}

unint64_t sub_1000838C4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100083978(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100083B68(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10002B078(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100083A3C(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_100083A9C(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_100083AFC(void *a1)
{
  v1 = [a1 accessoryInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for WiFiPlacardInfoItemType(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100083C98);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_100083CD0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176700, v2);

  return v3 != 0;
}

BOOL sub_100083D24@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100083CD0(*a1);
  *a2 = result;
  return result;
}

void sub_100083D58(uint64_t a1@<X8>)
{
  strcpy(a1, "disconnected");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_100083D7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E7664();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100083DA4(uint64_t a1)
{
  result = sub_100083DCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100083DCC()
{
  result = qword_10018DA80;
  if (!qword_10018DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DA80);
  }

  return result;
}

unint64_t sub_100083E24()
{
  result = qword_10018DA88;
  if (!qword_10018DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DA88);
  }

  return result;
}

uint64_t sub_100083E78()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-v5 - 8];
  if (qword_100188220 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for FlowImage(0);
  v8 = sub_10000C2D4(v7, qword_10018DA68);
  v20 = sub_100021124();
  v10 = v9;
  if (qword_100188210 != -1)
  {
    swift_once();
  }

  v11 = qword_10018DA50;
  v12 = *algn_10018DA58;
  v13 = qword_100188218;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_10018DA60;
  sub_100053ED8(v8, v6);
  sub_100003CE8(v6, 0, 1, v7);
  v22 = &type metadata for WiFiPlacardInfoItemType;
  v23 = sub_100084324();
  swift_retain_n();
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v1 + 8))(v3, v0);
  type metadata accessor for PlacardInfoItem(0);
  swift_allocObject();
  v18 = sub_1000F04E8(0, v15, v17, v6, v20, v10, v11, v12, v14, v21);

  return v18;
}

uint64_t sub_100084118()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018DA50 = result;
  *algn_10018DA58 = v3;
  return result;
}

uint64_t sub_100084220()
{
  type metadata accessor for ActionInfo(0);
  v0 = sub_100021258();
  v2 = sub_1000EDA28(v0, v1, 0xD00000000000002DLL, 0x80000001001375A0);

  qword_10018DA60 = v2;
  return result;
}

uint64_t sub_100084280()
{
  v0 = type metadata accessor for FlowImage(0);
  sub_10000C270(v0, qword_10018DA68);
  v1 = sub_10000C2D4(v0, qword_10018DA68);
  v1->i64[0] = 0xD00000000000001BLL;
  v1->i64[1] = 0x8000000100137640;
  v1[1].i8[0] = 0;
  v1[1].i64[1] = 0;
  v1[2].i64[0] = 0;
  v1[2].i8[8] = 1;
  v1[3] = vdupq_n_s64(0x4046000000000000uLL);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100084324()
{
  result = qword_10018DA90;
  if (!qword_10018DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DA90);
  }

  return result;
}

uint64_t sub_1000843A4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_1000844E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100058208(a3);
  v10 = v9;
  sub_1000843A4(a1, a2 & 1);
  v11 = sub_1000DEC54(a3, 0);

  v13[3] = &type metadata for MessagesStepProvider;
  v13[4] = sub_10001362C();
  v13[0] = v11;
  return sub_100018FE0(v8, v10, v13, a4);
}

_BYTE *storeEnumTagSinglePayload for ForgotPasswordStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100084670);
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

uint64_t sub_1000846C4(char a1)
{
  switch(a1)
  {
    case 1:
      sub_1000851EC();
      sub_100084F80();
      sub_100084FD4();
      v29 = _ConditionalContent<>.init(storage:)();
      sub_1000851D4(v29, v30, v31, v32, v33, v34, v35, v36, v45[0]);
      sub_100003768(&qword_10018DAD0, &qword_100129C38);
      sub_100003768(&qword_10018DAC8, &qword_100129C30);
      sub_100084EF4();
      v37 = sub_100085028();
      result = sub_1000851AC(v37, v38, v39, v40, v41, v42, v43, v44, *&v45[0]);
      break;
    case 2:
      sub_1000851EC();
      *&v45[0] = v12 + 5;
      *(&v45[0] + 1) = v11;
      v46 = 0;
      sub_100084E30();
      sub_10001D5E8();
      _ConditionalContent<>.init(storage:)();
      sub_100084E84(v48, v45);
      v47 = 1;
      sub_100003768(&qword_10018DAD0, &qword_100129C38);
      sub_100003768(&qword_10018DAC8, &qword_100129C30);
      sub_100084EF4();
      v13 = sub_100085028();
      sub_1000851AC(v13, v14, v15, v16, v17, v18, v19, v20, *&v45[0]);
      result = sub_1000850B4(v48);
      break;
    case 3:
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      strcpy(v50, "UNLOCK_ACCOUNT");
      v50[15] = -18;
      sub_10001D6C8(v50, v45);
      v46 = 1;
      sub_100084E30();
      sub_10001D5E8();
      _ConditionalContent<>.init(storage:)();
      sub_100084E84(v48, v45);
      v47 = 1;
      sub_100003768(&qword_10018DAD0, &qword_100129C38);
      sub_100003768(&qword_10018DAC8, &qword_100129C30);
      sub_100084EF4();
      v21 = sub_100085028();
      sub_1000851AC(v21, v22, v23, v24, v25, v26, v27, v28, *&v45[0]);
      sub_1000850B4(v48);
      result = sub_10001D784(v50);
      break;
    default:
      type metadata accessor for ForgotPasswordFlowViewModel(0);
      sub_10000C118();
      v48[0] = Environment.init<A>(_:)();
      v48[1] = v1 & 1;
      v48[2] = 0xD000000000000016;
      v48[3] = 0x8000000100133150;
      v49 = 0;
      sub_100084F80();
      sub_100084FD4();

      v2 = _ConditionalContent<>.init(storage:)();
      sub_1000851D4(v2, v3, v4, v5, v6, v7, v8, v9, v45[0]);
      sub_100003768(&qword_10018DAD0, &qword_100129C38);
      sub_100003768(&qword_10018DAC8, &qword_100129C30);
      sub_100084EF4();
      sub_100085028();
      _ConditionalContent<>.init(storage:)();

      break;
  }

  return result;
}

unint64_t sub_100084A40(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176738, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100084A8C(char a1)
{
  result = 0x63416B636F6C6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

unint64_t sub_100084B64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100084A40(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100084B94@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100084A8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100084BC0(uint64_t *a1@<X8>)
{
  sub_1000E76A0(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_100084C20()
{
  result = qword_10018DA98;
  if (!qword_10018DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DA98);
  }

  return result;
}

unint64_t sub_100084C74()
{
  result = qword_10018DAA0;
  if (!qword_10018DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAA0);
  }

  return result;
}

uint64_t sub_100084CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100084D30()
{
  result = qword_10018DAA8;
  if (!qword_10018DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAA8);
  }

  return result;
}

unint64_t sub_100084D84()
{
  result = qword_10018DAB0;
  if (!qword_10018DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAB0);
  }

  return result;
}

unint64_t sub_100084DDC()
{
  result = qword_10018DAB8;
  if (!qword_10018DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAB8);
  }

  return result;
}

unint64_t sub_100084E30()
{
  result = qword_10018DAC0;
  if (!qword_10018DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAC0);
  }

  return result;
}

uint64_t sub_100084E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018DAC8, &qword_100129C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100084EF4()
{
  result = qword_10018DAD8;
  if (!qword_10018DAD8)
  {
    sub_100004D48(&qword_10018DAD0, &qword_100129C38);
    sub_100084F80();
    sub_100084FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAD8);
  }

  return result;
}

unint64_t sub_100084F80()
{
  result = qword_10018DAE0;
  if (!qword_10018DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAE0);
  }

  return result;
}

unint64_t sub_100084FD4()
{
  result = qword_10018DAE8;
  if (!qword_10018DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAE8);
  }

  return result;
}

unint64_t sub_100085028()
{
  result = qword_10018DAF0;
  if (!qword_10018DAF0)
  {
    sub_100004D48(&qword_10018DAC8, &qword_100129C30);
    sub_100084E30();
    sub_10001D5E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAF0);
  }

  return result;
}

uint64_t sub_1000850B4(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018DAC8, &qword_100129C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100085120()
{
  result = qword_10018DAF8;
  if (!qword_10018DAF8)
  {
    sub_100004D48(&qword_10018DB00, qword_100129C40);
    sub_100084EF4();
    sub_100085028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAF8);
  }

  return result;
}

uint64_t sub_1000851AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return _ConditionalContent<>.init(storage:)();
}

void sub_100085200()
{
  sub_100017C00();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  sub_10000ED84(v9);
  sub_10000ED78();
  __chkstk_darwin(v10);
  sub_1000968C0();
  sub_10000AB80(v6, v0, &qword_1001888B0, &qword_1001228F0);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_10000E5F0(v0, 1, v11);

  if (v12 == 1)
  {
    sub_10000ABCC(v0, &qword_1001888B0, &qword_1001228F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100012448();
    (*(v13 + 8))(v0, v11);
  }

  v14 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_10000ABCC(v6, &qword_1001888B0, &qword_1001228F0);
    sub_100096BD0();
    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    *(v16 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_100096BD0();
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = v2;

  swift_task_create();

  sub_10000ABCC(v6, &qword_1001888B0, &qword_1001228F0);

LABEL_9:
  sub_100017C18();
}

void sub_1000854B8()
{
  sub_100017C00();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  sub_10000ED84(v9);
  sub_10000ED78();
  __chkstk_darwin(v10);
  sub_1000968C0();
  sub_10000AB80(v6, v0, &qword_1001888B0, &qword_1001228F0);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_10000E5F0(v0, 1, v11);

  if (v12 == 1)
  {
    sub_10000ABCC(v0, &qword_1001888B0, &qword_1001228F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100012448();
    v13 = sub_100096D88();
    v14(v13);
  }

  v15 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_10000ABCC(v6, &qword_1001888B0, &qword_1001228F0);
    sub_100096BD0();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v2;
    sub_100003768(&qword_10018BBD0, &qword_100126CD0);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_100096BD0();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;

  sub_100003768(&qword_10018BBD0, &qword_100126CD0);
  swift_task_create();
  sub_10006F37C();

  sub_10000ABCC(v6, &qword_1001888B0, &qword_1001228F0);

LABEL_9:
  sub_100017C18();
}

void sub_10008577C()
{
  sub_100017C00();
  v4 = v3;
  v5 = type metadata accessor for Logger();
  sub_100008780();
  v41 = v6;
  __chkstk_darwin(v7);
  sub_10000C30C();
  sub_100096914();
  v8 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v8);
  sub_10000ED78();
  __chkstk_darwin(v9);
  sub_1000969F4();
  v10 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v10);
  sub_10000ED78();
  __chkstk_darwin(v11);
  sub_1000967F8();
  v12 = sub_100096D00();
  v14 = sub_10008D788(v12, v13);
  if (v14)
  {
    sub_10009515C(v14, &selRef_title);
    if (v15)
    {
      sub_10000AB80(v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_typeProvider, v42, &qword_10018E4C0, &qword_10012A2E0);
      if (v43)
      {
        v16 = v44;
        sub_100025734(v42, v43);
        v17 = sub_10006F37C();
        v18(v17, v16);
        sub_1000086BC(v42);
        sub_1000EDA9C(v2);
        sub_10008BCE0();
        sub_100077FE8();
        SupportFlowBiomeManager.donateTroubleShootingActionEvent(actionId:title:url:flowId:type:)();

        sub_10000ABCC(v1, &unk_10018A300, &unk_1001241E0);
        sub_10000ABCC(v2, &qword_100188EE0, &unk_100122AE0);
        goto LABEL_17;
      }

      sub_10000ABCC(v42, &qword_10018E4C0, &qword_10012A2E0);
    }
  }

  static Logger.supportFlowApp.getter();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v40 = v5;
    v21 = sub_100018FBC();
    v22 = swift_slowAlloc();
    v45 = v22;
    *v21 = 136315650;
    v23 = sub_100096D00();
    v25 = sub_10008D788(v23, v24);
    if (!v25 || (sub_10009515C(v25, &selRef_title), !v26))
    {
    }

    v30 = sub_100096D88();
    v33 = sub_10009CACC(v30, v31, v32);

    *(v21 + 4) = v33;
    *(v21 + 12) = 2080;
    sub_10000AB80(v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_typeProvider, v42, &qword_10018E4C0, &qword_10012A2E0);
    v34 = v43;
    if (v43)
    {
      v35 = v44;
      sub_100025734(v42, v43);
      (*(v35 + 24))(v34, v35);
      sub_1000086BC(v42);
    }

    else
    {
      sub_10000ABCC(v42, &qword_10018E4C0, &qword_10012A2E0);
    }

    v36 = sub_100096D88();
    v39 = sub_10009CACC(v36, v37, v38);

    *(v21 + 14) = v39;
    *(v21 + 22) = 2080;
    *(v21 + 24) = sub_10009CACC(*(v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_text), *(v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_text + 8), &v45);
    _os_log_impl(&_mh_execute_header, v19, v20, "Donating user action failed: Missing title(%s) or donation identifier(%s) for action: %s", v21, 0x20u);
    swift_arrayDestroy();
    sub_100008744(v22);
    sub_100008744(v21);

    v28 = v40;
    v29 = *(v41 + 8);
    v27 = v0;
  }

  else
  {

    v27 = sub_100096908();
  }

  v29(v27, v28);
LABEL_17:
  sub_100017C18();
}

uint64_t sub_100085C20@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for URLQueryItem();
  sub_100008780();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000C30C();
  v11 = v10 - v9;
  v12 = 0;
  v13 = *(a2 + 16);
  while (1)
  {
    if (v13 == v12)
    {
      v17 = 1;
      v18 = a3;
      return sub_100003CE8(v18, v17, 1, v5);
    }

    (*(v7 + 16))(v11, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v5);
    v14 = a1(v11);
    if (v3)
    {
      v19 = sub_100096CF4();
      return v20(v19);
    }

    if (v14)
    {
      break;
    }

    v15 = sub_100096CF4();
    v16(v15);
    ++v12;
  }

  v18 = a3;
  (*(v7 + 32))(a3, v11, v5);
  v17 = 0;
  return sub_100003CE8(v18, v17, 1, v5);
}

void sub_100085DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100017C00();
  a19 = v20;
  a20 = v21;
  sub_100096DA0();
  v22 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v22);
  sub_10000ED78();
  __chkstk_darwin(v23);
  v25 = &a9 - v24;
  sub_10008BCE0();
  sub_100096B50();
  SupportFlowBiomeManager.donateTroubleShootingArticleEvent(articleId:url:flowId:type:)();
  sub_10000ABCC(v25, &unk_10018A300, &unk_1001241E0);
  sub_100017C18();
}

void sub_100085E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100096D74();
  v6 = v5;
  v8 = v7;
  v9 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v9);
  sub_10000ED78();
  __chkstk_darwin(v10);
  sub_100096A04();
  v11 = type metadata accessor for URL();
  sub_100008780();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_10000C30C();
  sub_100096A30();
  sub_10009339C(v8, v6, v15, v16);
  sub_100096960(v3);
  if (v17)
  {
    sub_10000ABCC(v3, &qword_100188EE0, &unk_100122AE0);
  }

  else
  {
    v18 = sub_100096B50();
    v20 = v19(v18);
    sub_100090F0C(v20, v21, v22, v23);
    static DeviceEventCoordinator.recordReentryNotificationURL(url:title:requiredSignal:)();

    (*(v13 + 8))(v4, v11);
  }

  sub_100053050();
}

void sub_100085FE4()
{
  sub_100017C00();
  v3 = v2;
  v4 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  sub_100008780();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000C30C();
  sub_100096A30();
  v8 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v8);
  sub_10000ED78();
  __chkstk_darwin(v9);
  sub_1000969F4();
  sub_10009A9FC(v3);
  sub_10008BCE0();
  *v0 = 0;
  (*(v6 + 104))(v0, enum case for DeviceExpertTroubleshooting.ActionType.unknown(_:), v4);
  sub_100096B94();
  SupportFlowBiomeManager.donateTroubleShootingSettingsEvent(settingId:value:flowId:type:)();

  v10 = sub_100096BB8();
  v11(v10);
  sub_10000ABCC(v1, &unk_10018A300, &unk_1001241E0);
  sub_100017C18();
}

void sub_100086184()
{
  sub_100017C00();
  v4 = v3;
  v5 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v5);
  sub_10000ED78();
  __chkstk_darwin(v6);
  sub_100017BAC();
  v7 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v7);
  sub_10000ED78();
  __chkstk_darwin(v8);
  sub_1000969F4();
  type metadata accessor for SupportFlowBiomeManager();
  sub_100008780();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000C30C();
  v14 = v13 - v12;
  v23 = v15;
  (*(v10 + 16))(v13 - v12, v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_biomeManager);
  sub_10000AB80(v4 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_typeProvider, v24, &qword_10018E4C0, &qword_10012A2E0);
  if (v25)
  {
    v16 = v26;
    sub_100025734(v24, v25);
    v17 = sub_10006F37C();
    v18(v17, v16);
    sub_1000086BC(v24);
  }

  else
  {
    sub_10000ABCC(v24, &qword_10018E4C0, &qword_10012A2E0);
  }

  if (*(v4 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_action))
  {

    sub_1000EDA9C(v2);
  }

  else
  {
    type metadata accessor for URL();
    sub_100053004();
    sub_100003CE8(v19, v20, v21, v22);
  }

  sub_10008BCE0();
  sub_100096D00();
  SupportFlowBiomeManager.donateTroubleShootingActionEvent(actionId:title:url:flowId:type:)();

  sub_10000ABCC(v1, &unk_10018A300, &unk_1001241E0);
  sub_10000ABCC(v2, &qword_100188EE0, &unk_100122AE0);
  (*(v10 + 8))(v14, v23);
  sub_100017C18();
}

void sub_100086430()
{
  sub_100017C00();
  v1 = v0;
  v2 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  sub_100008780();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000C30C();
  v9 = v8 - v7;
  if (!(v1 >> 62))
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_100017C18();
    return;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  v6 = v1;
  v10 = v16;
  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = v6 & 0xC000000000000001;
    v13 = enum case for DeviceExpertTroubleshooting.ActionType.suggested(_:);
    do
    {
      if (v12)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v11;
      (*(v4 + 104))(v9, v13, v2);
      sub_100096CF4();
      sub_100086184();

      v14 = sub_100096B28();
      v15(v14);
    }

    while (v10 != v11);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1000865A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100017C00();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v26);
  sub_10000ED78();
  __chkstk_darwin(v27);
  sub_100017BAC();
  type metadata accessor for ActionInfoDestination(0);
  sub_10000AF7C();
  __chkstk_darwin(v28);
  sub_10000C30C();
  sub_100096A30();
  v29 = type metadata accessor for URL();
  sub_100008780();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_100012454();
  v35 = v33 - v34;
  __chkstk_darwin(v36);
  v38 = &a9 - v37;
  sub_100096614(v25 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_destination, v21, type metadata accessor for ActionInfoDestination);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = [objc_opt_self() defaultWorkspace];
      if (v44)
      {
        v45 = v44;
        v46 = sub_100096BC4();
        sub_100095114(v46, v47, v45);
      }

      break;
    case 2u:
      (*(v31 + 32))(v35, v21, v29);
      (*(v31 + 16))(v20, v35, v29);
      sub_100096B34();
      v51 = sub_100096D30(v48, v49, v50, v29);
      sub_10008AEE0(v51, v52, v53, v54);
      (*(v31 + 8))(v35, v29);
      break;
    case 4u:
      sub_100096670(v21, type metadata accessor for ActionInfoDestination);
      break;
    default:
      v39 = *(v31 + 32);
      v39(v38, v21, v29);
      v39(v20, v38, v29);
      sub_100096B34();
      v43 = sub_100096D30(v40, v41, v42, v29);
      sub_10001BBBC(v43);
      sub_10000ABCC(v20, &qword_100188EE0, &unk_100122AE0);
      break;
  }

  v55 = *(v25 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
  if (v55)
  {

    v55(v56);
    v57 = sub_10000AFAC();
    sub_1000068F8(v57, v58);
  }

  sub_100017C18();
}

void sub_1000868AC()
{
  sub_100017C00();
  v2 = v1;
  v3 = sub_100003768(&qword_10018ABF8, &qword_100125318);
  sub_10000ED84(v3);
  sub_10000ED78();
  __chkstk_darwin(v4);
  sub_1000967F8();
  type metadata accessor for FlowStepContentOption(0);
  sub_10000AF7C();
  __chkstk_darwin(v5);
  sub_100012454();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  sub_100025A88();
  swift_storeEnumTagMultiPayload();
  sub_100096BB8();
  sub_1000FF9FC();
  v13 = v12;
  sub_1000969A0();
  if ((v13 & 1) != 0 && (v14 = sub_100077FE8(), sub_1000FE640(v14, v15), sub_100087500(), , sub_100003768(&qword_10018AC00, &qword_100125320), v16 = sub_100096BDC(), v19 = sub_10000E5F0(v16, v17, v18), sub_10000ABCC(v0, &qword_10018ABF8, &qword_100125318), v19 == 1))
  {
    v20[1] = v2;
    swift_storeEnumTagMultiPayload();

    sub_1000E082C(v11, v8);
    sub_1000969A0();
  }

  else
  {
  }

  sub_100077FE8();
  sub_100017C18();
}

uint64_t sub_100086A60()
{
  sub_100025A94();
  v1[25] = v2;
  v1[26] = v0;
  v1[24] = v3;
  v4 = sub_100003768(&qword_10018E4E0, &qword_10012A458);
  sub_10000ED84(v4);
  v1[27] = sub_100052FA4();
  v5 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v5);
  v1[28] = sub_100052FA4();
  v6 = type metadata accessor for MainActor();
  v1[29] = sub_10006F3C8(v6);
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[30] = v7;
  v1[31] = v8;
  v9 = sub_100096AEC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100086B3C()
{
  v45 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    swift_getObjectType();
    v2 = swift_task_alloc();
    v0[33] = v2;
    *v2 = v0;
    sub_100062F48(v2);
    sub_100096908();
    sub_100082C10();

    __asm { BRAA            X2, X16 }
  }

  v5 = v0[27];
  sub_10008BCE0();
  type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v6 = sub_1000967B8();
  sub_100003CE8(v6, v7, v8, v9);
  v10 = sub_100077FE8();
  v0[34] = sub_100096E28(v10, v11);
  if (v5)
  {
    v12 = v0[28];
    v13 = v0[27];

    sub_10000ABCC(v13, &qword_10018E4E0, &qword_10012A458);
    sub_10000ABCC(v12, &unk_10018A300, &unk_1001241E0);

    sub_10000875C();
    sub_100082C10();

    __asm { BRAA            X1, X16 }
  }

  v16 = v0[28];
  sub_10000ABCC(v0[27], &qword_10018E4E0, &qword_10012A458);
  sub_10000ABCC(v16, &unk_10018A300, &unk_1001241E0);
  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 primaryAuthKitAccount];

  if (v18)
  {
    v44[0] = v18;
    sub_1000911FC(v44, v0 + 22);

    v19 = v0[23];
  }

  else
  {
    v19 = 0;
    v0[22] = 0;
    v0[23] = 0;
  }

  v20 = sub_10008ADF0();
  if (!v20)
  {

    sub_100096D60();
    goto LABEL_19;
  }

  v21 = v20;
  result = sub_10005CD84(v20, &selRef_aa_primaryEmail);
  if (!v23)
  {
    __break(1u);
    goto LABEL_23;
  }

  v43 = result;
  result = sub_10005CD84(v21, &selRef_aa_firstName);
  v42 = result;
  if (!v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_10005CD84(v21, &selRef_aa_lastName);
  if (!v25)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sub_10005CD84(v21, &selRef_aa_personID);
  if (!v26)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  sub_100096A68(v27, v28, v29, v30, v31, v32, v33, v34, v19, v42, v43);
LABEL_19:
  memcpy(v0 + 2, v0 + 12, 0x50uLL);
  swift_task_alloc();
  sub_10004F4B0();
  v0[35] = v35;
  *v35 = v36;
  sub_100096890(v35);
  sub_100082C10();

  return sub_100071D20(v37, v38, v39, v40);
}

uint64_t sub_100086EE0()
{
  sub_10003DCD8();
  sub_100096CD0();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;

  swift_unknownObjectRelease();
  sub_100096D54();
  v5 = *(v4 + 248);
  v6 = *(v0 + 240);

  return _swift_task_switch(sub_100087010, v6, v5);
}

uint64_t sub_100087010(uint64_t a1)
{
  v42 = v1;
  v2 = v1[27];
  sub_10008BCE0();
  type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v3 = sub_1000967B8();
  sub_100003CE8(v3, v4, v5, v6);
  v7 = sub_100077FE8();
  v1[34] = sub_100096E28(v7, v8);
  if (v2)
  {
    v9 = v1[28];
    v10 = v1[27];

    sub_10000ABCC(v10, &qword_10018E4E0, &qword_10012A458);
    sub_10000ABCC(v9, &unk_10018A300, &unk_1001241E0);

    sub_10000875C();
    sub_100082C10();

    __asm { BRAA            X1, X16 }
  }

  v13 = v1[28];
  sub_10000ABCC(v1[27], &qword_10018E4E0, &qword_10012A458);
  sub_10000ABCC(v13, &unk_10018A300, &unk_1001241E0);
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 primaryAuthKitAccount];

  if (v15)
  {
    v41[0] = v15;
    sub_1000911FC(v41, v1 + 22);

    v16 = v1[23];
  }

  else
  {
    v16 = 0;
    v1[22] = 0;
    v1[23] = 0;
  }

  v17 = sub_10008ADF0();
  if (!v17)
  {

    sub_100096D60();
    goto LABEL_15;
  }

  v18 = v17;
  result = sub_10005CD84(v17, &selRef_aa_primaryEmail);
  if (!v20)
  {
    __break(1u);
    goto LABEL_19;
  }

  v40 = result;
  result = sub_10005CD84(v18, &selRef_aa_firstName);
  v39 = result;
  if (!v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_10005CD84(v18, &selRef_aa_lastName);
  if (!v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = sub_10005CD84(v18, &selRef_aa_personID);
  if (!v23)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  sub_100096A68(v24, v25, v26, v27, v28, v29, v30, v31, v16, v39, v40);
LABEL_15:
  memcpy(v1 + 2, v1 + 12, 0x50uLL);
  swift_task_alloc();
  sub_10004F4B0();
  v1[35] = v32;
  *v32 = v33;
  sub_100096890(v32);
  sub_100082C10();

  return sub_100071D20(v34, v35, v36, v37);
}

uint64_t sub_1000872A8()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 288) = v0;

  sub_100052FF8();
  v6 = *(v5 + 248);
  v7 = *(v1 + 240);
  if (v0)
  {
    v8 = sub_100087470;
  }

  else
  {
    v8 = sub_1000873D0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000873D0()
{
  sub_10003DCD8();
  sub_10000ABCC(v0 + 96, &qword_10018D330, &qword_10012A460);

  sub_10000875C();

  return v1();
}

uint64_t sub_100087470()
{
  sub_100025A94();

  sub_10000ABCC(v0 + 96, &qword_10018D330, &qword_10012A460);

  sub_10000875C();

  return v1();
}

void sub_100087500()
{
  sub_100017C00();
  v45 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_100003768(&qword_100189108, &unk_1001226E0);
  sub_10000ED84(v6);
  sub_10000ED78();
  __chkstk_darwin(v7);
  v44 = &v44 - v8;
  v9 = sub_100003768(&qword_10018DA28, &unk_100129768);
  sub_10000ED84(v9);
  sub_10000ED78();
  __chkstk_darwin(v10);
  sub_1000967F8();
  v11 = sub_100003768(&qword_10018DA20, &qword_100129760);
  sub_10000ED84(v11);
  sub_10000ED78();
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for SupportSolutions(0);
  sub_10000AF7C();
  __chkstk_darwin(v16);
  sub_10000C30C();
  v19 = v18 - v17;
  v20 = sub_100096D00();
  if (sub_100052220(v20, v21, v3, v45))
  {
    v22 = v5;
    sub_10008CBB8();
    sub_1000912CC(v0);
    sub_10000ABCC(v14, &qword_10018DA20, &qword_100129760);
    v23 = sub_100096BDC();
    if (sub_10000E5F0(v23, v24, v15) == 1)
    {
      sub_10000ABCC(v0, &qword_10018DA28, &unk_100129768);
    }

    else
    {
      sub_100093EC8(v0, v19);
      v29 = v44;
      sub_10000AB80(v19, v44, &qword_100189108, &unk_1001226E0);
      v30 = type metadata accessor for SupportSolutions.ChatInfo(0);
      v31 = sub_10000E5F0(v29, 1, v30);
      sub_10000DF20();
      sub_10000ABCC(v32, v33, v34);
      if (v31 != 1 || *(v19 + *(v15 + 20) + 8) != 1)
      {
        v36 = sub_100003768(&qword_10018AC00, &qword_100125320);
        v37 = (v22 + *(v36 + 48));
        sub_10000AB80(v19, v22, &qword_100189108, &unk_1001226E0);
        v38 = (v19 + *(v15 + 20));
        v39 = *v38;
        v40 = v38[1];
        v41 = sub_100052F8C();
        sub_100082674(v41, v42);
        sub_100096724();
        sub_100096670(v19, v43);
        *v37 = v39;
        v37[1] = v40;
        sub_100096B34();
        v28 = v36;
        goto LABEL_5;
      }

      sub_100096724();
      sub_100096670(v19, v35);
    }
  }

  sub_100003768(&qword_10018AC00, &qword_100125320);
  v25 = sub_1000967B8();
LABEL_5:
  sub_100003CE8(v25, v26, v27, v28);
  sub_100017C18();
}

uint64_t sub_1000877E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100096DA0();

    v5._countAndFlagsBits = 95;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);

    v6._countAndFlagsBits = sub_100096908();
    String.append(_:)(v6);
  }

  else
  {
  }

  return a1;
}

void sub_10008787C()
{
  sub_100017C00();
  v3 = v2;
  v5 = v4;
  v6 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v6);
  sub_10000ED78();
  __chkstk_darwin(v7);
  sub_1000967F8();
  v8 = type metadata accessor for SupportFlowBiomeManager();
  sub_100008780();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000C30C();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12, v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_biomeManager, v8);
  v15 = sub_10008D788(v5, v3);
  if (v15)
  {
    sub_10009515C(v15, &selRef_title);
  }

  sub_10008BCE0();
  SupportFlowBiomeManager.donateTroubleShootingUserSelection(question:answer:flowId:stepId:type:)();

  sub_10000ABCC(v1, &unk_10018A300, &unk_1001241E0);
  (*(v10 + 8))(v14, v8);
  sub_100017C18();
}

uint64_t sub_100087A1C()
{
  sub_100025A94();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for MainActor();
  v1[5] = sub_10006F3C8(v4);
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[6] = v5;
  v1[7] = v6;
  v7 = sub_100096AEC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100087AA0()
{
  sub_100025A94();
  swift_task_alloc();
  sub_10004F4B0();
  *(v0 + 64) = v1;
  *v1 = v2;
  v1[1] = sub_100087B3C;

  return sub_100051800();
}

uint64_t sub_100087B3C()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 72) = v0;

  sub_100052FF8();
  v6 = *(v5 + 56);
  v7 = *(v1 + 48);
  if (v0)
  {
    v8 = sub_100087CC0;
  }

  else
  {
    v8 = sub_100087C64;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100087C64()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_100087CC0()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_100087D1C()
{
  sub_100025A94();
  v1[2] = v0;
  v2 = sub_100003768(&qword_10018DA20, &qword_100129760);
  sub_10000ED84(v2);
  v1[3] = sub_100052FA4();
  v3 = sub_100003768(&qword_10018DA28, &unk_100129768);
  sub_10000ED84(v3);
  v1[4] = sub_100052FA4();
  v4 = type metadata accessor for SupportSolutions(0);
  v1[5] = v4;
  sub_10000ED84(v4);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for SupportSymptomInfo();
  v1[8] = v5;
  sub_100052F6C(v5);
  v1[9] = v6;
  v1[10] = sub_100052FA4();
  v7 = type metadata accessor for SupportFlowIdentifier();
  v1[11] = v7;
  sub_100052F6C(v7);
  v1[12] = v8;
  v1[13] = sub_100052FA4();
  v9 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v9);
  v1[14] = sub_100052FA4();
  v10 = type metadata accessor for Logger();
  v1[15] = v10;
  sub_100052F6C(v10);
  v1[16] = v11;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v12 = type metadata accessor for MainActor();
  v1[19] = sub_10006F3C8(v12);
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[20] = v13;
  v1[21] = v14;
  v15 = sub_100096AEC();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100087F50(uint64_t a1)
{
  v5 = *(v1[2] + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_flowListInitializationTask);
  v1[22] = v5;
  if (v5)
  {

    v6 = swift_task_alloc();
    v1[23] = v6;
    *v6 = v1;
    v6[1] = sub_10008841C;
    sub_100046280();

    return Task<>.value.getter();
  }

  else
  {
    static Logger.supportFlowApp.getter();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v3 = v1[11];
      v10 = sub_10002B114();
      v2 = sub_100018FBC();
      *v10 = 136315138;
      sub_10008BCE0();
      v11 = sub_100096BDC();
      v13 = sub_10000E5F0(v11, v12, v3);
      v14 = v1[14];
      if (v13)
      {
        v15 = sub_10000ABCC(v1[14], &unk_10018A300, &unk_1001241E0);
      }

      else
      {
        v20 = sub_100096A3C();
        v21(v20);
        sub_10000ABCC(v14, &unk_10018A300, &unk_1001241E0);
        SupportFlowIdentifier.rawValue.getter();
        v4 += 8;
        v22 = sub_100096B94();
        v15 = v23(v22);
      }

      v24 = sub_100096BF4(v15, v16);

      *(v10 + 4) = v24;
      sub_100096B70(&_mh_execute_header, v8, v9, "Fetching solutions for flow: %s", v50);
      sub_1000086BC(v2);
      sub_1000968EC();
      sub_1000968D0();

      v18 = *(v4 + 8);
      v25 = sub_100096B94();
      v18(v25);
    }

    else
    {
      v9 = v1[15];
      v17 = v1[16];

      v18 = *(v17 + 8);
      v19 = sub_100052F8C();
      v18(v19);
    }

    sub_100096E48();
    if (v9)
    {

      sub_100096EB0(v26);
      swift_errorRetain();
      Logger.logObject.getter();
      static os_log_type_t.error.getter();
      sub_100096CB8();
      if (sub_100096E98())
      {
        sub_10002B114();
        v2 = sub_100096944();
        sub_100096C88(5.7779e-34);
        v27 = _swift_stdlib_bridgeErrorToNSError();
        sub_100096A88(v27);
        sub_100096980(&_mh_execute_header, v28, v29, "Fetching solutions failed or cancelled: %@");
        sub_10000ABCC(v2, &qword_100189390, &qword_1001241D0);
        sub_1000968EC();
        sub_1000968D0();
      }

      sub_100096ACC();
      v30 = sub_100096B1C();
      v3(v30);
      *v2 = v9;
      sub_100003768(&qword_10018E458, &qword_100129E90);
      sub_100096AAC();
      v31 = sub_100096A14();
      sub_100096D30(v31, v32, v33, v18);
      swift_errorRetain();
      sub_10008A374(v2);

      sub_10009683C();

      sub_10000875C();
      sub_100046280();

      __asm { BRAA            X1, X16 }
    }

    static Task<>.checkCancellation()();
    v37 = v1[4];
    v36 = v1[5];
    sub_100050D78(v1[10], v37);
    sub_100096960(v37);
    if (v38)
    {
      v39 = v1[3];
      sub_10000ABCC(v1[4], &qword_10018DA28, &unk_100129768);
      v40 = sub_100003768(&qword_10018E458, &qword_100129E90);
      v41 = sub_100096D30(v39, 2, 2, v40);
      sub_10008A374(v41);
    }

    else
    {
      sub_100096E08();
      sub_1000967A0();
      v42 = sub_100096A5C();
      sub_100096614(v42, v43, v44);
      sub_100003768(&qword_10018E458, &qword_100129E90);
      sub_100025A88();
      swift_storeEnumTagMultiPayload();
      sub_100096EC8();
      sub_100096724();
      sub_100096670(v36, v45);
    }

    swift_task_alloc();
    sub_10004F4B0();
    v1[25] = v46;
    *v46 = v47;
    sub_100096860(v46);
    sub_100046280();

    return sub_100051090();
  }
}

uint64_t sub_10008841C()
{
  sub_100025A94();
  sub_100096CD0();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;

  sub_100096D54();
  v5 = *(v4 + 168);
  v6 = *(v0 + 160);

  return _swift_task_switch(sub_100088528, v6, v5);
}

uint64_t sub_100088528()
{

  static Logger.supportFlowApp.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v2 = v0[11];
    v6 = sub_10002B114();
    v1 = sub_100018FBC();
    *v6 = 136315138;
    sub_10008BCE0();
    v7 = sub_100096BDC();
    v9 = sub_10000E5F0(v7, v8, v2);
    v10 = v0[14];
    if (v9)
    {
      v11 = sub_10000ABCC(v0[14], &unk_10018A300, &unk_1001241E0);
    }

    else
    {
      v16 = sub_100096A3C();
      v17(v16);
      sub_10000ABCC(v10, &unk_10018A300, &unk_1001241E0);
      SupportFlowIdentifier.rawValue.getter();
      v3 += 8;
      v18 = sub_100096B94();
      v11 = v19(v18);
    }

    v20 = sub_100096BF4(v11, v12);

    *(v6 + 4) = v20;
    sub_100096B70(&_mh_execute_header, v4, v5, "Fetching solutions for flow: %s", v46);
    sub_1000086BC(v1);
    sub_1000968EC();
    sub_1000968D0();

    v14 = *(v3 + 8);
    v21 = sub_100096B94();
    v14(v21);
  }

  else
  {
    v5 = v0[15];
    v13 = v0[16];

    v14 = *(v13 + 8);
    v15 = sub_100052F8C();
    v14(v15);
  }

  sub_100096E48();
  if (v5)
  {

    sub_100096EB0(v22);
    swift_errorRetain();
    Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100096CB8();
    if (sub_100096E98())
    {
      sub_10002B114();
      v1 = sub_100096944();
      sub_100096C88(5.7779e-34);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      sub_100096A88(v23);
      sub_100096980(&_mh_execute_header, v24, v25, "Fetching solutions failed or cancelled: %@");
      sub_10000ABCC(v1, &qword_100189390, &qword_1001241D0);
      sub_1000968EC();
      sub_1000968D0();
    }

    sub_100096ACC();
    v26 = sub_100096B1C();
    v2(v26);
    *v1 = v5;
    sub_100003768(&qword_10018E458, &qword_100129E90);
    sub_100096AAC();
    v27 = sub_100096A14();
    sub_100096D30(v27, v28, v29, v14);
    swift_errorRetain();
    sub_10008A374(v1);

    sub_10009683C();

    sub_10000875C();
    sub_100046280();

    __asm { BRAA            X1, X16 }
  }

  static Task<>.checkCancellation()();
  v33 = v0[4];
  v32 = v0[5];
  sub_100050D78(v0[10], v33);
  sub_100096960(v33);
  if (v34)
  {
    v35 = v0[3];
    sub_10000ABCC(v0[4], &qword_10018DA28, &unk_100129768);
    v36 = sub_100003768(&qword_10018E458, &qword_100129E90);
    v37 = sub_100096D30(v35, 2, 2, v36);
    sub_10008A374(v37);
  }

  else
  {
    sub_100096E08();
    sub_1000967A0();
    v38 = sub_100096A5C();
    sub_100096614(v38, v39, v40);
    sub_100003768(&qword_10018E458, &qword_100129E90);
    sub_100025A88();
    swift_storeEnumTagMultiPayload();
    sub_100096EC8();
    sub_100096724();
    sub_100096670(v32, v41);
  }

  swift_task_alloc();
  sub_10004F4B0();
  v0[25] = v42;
  *v42 = v43;
  sub_100096860(v42);
  sub_100046280();

  return sub_100051090();
}

uint64_t sub_100088960()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 208) = v0;

  sub_100052FF8();
  v6 = *(v5 + 168);
  v7 = *(v1 + 160);
  if (v0)
  {
    v8 = sub_100088CC8;
  }

  else
  {
    v8 = sub_100088A88;
  }

  return _swift_task_switch(v8, v7, v6);
}

void sub_100088A88()
{
  v1 = v0[26];

  static Task<>.checkCancellation()();
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];
  if (v1)
  {
    sub_100096670(v0[6], type metadata accessor for SupportSolutions);
    v5 = (v3 + 8);
    v6 = sub_100096B1C();
    v8 = v7(v6);
    sub_100096EB0(v8);
    swift_errorRetain();
    Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100096CB8();
    if (sub_100096E98())
    {
      sub_10002B114();
      v4 = sub_100096944();
      sub_100096C88(5.7779e-34);
      v9 = _swift_stdlib_bridgeErrorToNSError();
      sub_100096A88(v9);
      sub_100096980(&_mh_execute_header, v10, v11, "Fetching solutions failed or cancelled: %@");
      sub_10000ABCC(v4, &qword_100189390, &qword_1001241D0);
      sub_1000968EC();
      sub_1000968D0();
    }

    sub_100096ACC();
    v12 = sub_100096B1C();
    v5(v12);
    *v4 = v1;
    sub_100003768(&qword_10018E458, &qword_100129E90);
    sub_100096AAC();
    v13 = sub_100096A14();
    sub_100096D30(v13, v14, v15, v2);
    swift_errorRetain();
    sub_10008A374(v4);
  }

  else
  {
    v16 = v0[3];
    sub_1000967A0();
    v17 = sub_100096DAC();
    sub_100096614(v17, v18, v19);
    v20 = sub_100003768(&qword_10018E458, &qword_100129E90);
    swift_storeEnumTagMultiPayload();
    v21 = sub_100096D30(v16, 0, 2, v20);
    sub_10008A374(v21);
    sub_100096724();
    sub_100096670(v4, v22);
    v23 = sub_100096B1C();
    v24(v23);
  }

  sub_10009683C();

  sub_10000875C();
  sub_100096DCC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100088CC8()
{
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  v5 = (*(v3 + 8))(v2, v4);
  v6 = v0[26];
  sub_100096EB0(v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    sub_10002B114();
    v9 = sub_100096944();
    *v1 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    sub_100096A88(v10);
    sub_100096B70(&_mh_execute_header, v7, v8, "Fetching solutions failed or cancelled: %@");
    sub_10000ABCC(v9, &qword_100189390, &qword_1001241D0);
    sub_1000968EC();
    sub_1000968D0();
  }

  v11 = v0[24];
  v12 = v0[3];

  v13 = sub_100096A5C();
  v11(v13);
  *v12 = v6;
  v14 = sub_100003768(&qword_10018E458, &qword_100129E90);
  sub_100096DAC();
  swift_storeEnumTagMultiPayload();
  v15 = sub_100096A14();
  sub_100003CE8(v15, v16, v17, v14);
  swift_errorRetain();
  sub_10008A374(v12);

  sub_10009683C();

  sub_10000875C();

  return v18();
}

id sub_100088EB4()
{
  result = [objc_opt_self() supportsFaceID];
  byte_1001A57A0 = result;
  return result;
}

uint64_t sub_100088EE8()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_10000ED84(v0);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = sub_10000ED84(v2);
  __chkstk_darwin(v3);
  sub_10000C30C();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10004F504();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10004F504();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = objc_allocWithZone(type metadata accessor for ContentMessageViewModel());
  sub_100096D48();
  result = ContentMessageViewModel.init(title:message:symbolName:)();
  qword_1001A57A8 = result;
  return result;
}

void sub_100089078()
{
  sub_100017C00();
  v2 = v0;
  v94 = v3;
  v4 = sub_100003768(&qword_10018E480, &qword_100129F40);
  sub_10000ED84(v4);
  sub_10000ED78();
  __chkstk_darwin(v5);
  v97 = &v91 - v6;
  v7 = sub_100003768(&qword_10018E490, &qword_100129F70);
  v8 = sub_10000ED84(v7);
  __chkstk_darwin(v8);
  sub_100012454();
  v96 = v9 - v10;
  __chkstk_darwin(v11);
  v95 = &v91 - v12;
  v13 = sub_100003768(&qword_10018A310, &unk_1001241F0);
  v14 = sub_10000ED84(v13);
  __chkstk_darwin(v14);
  sub_100012454();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v91 - v19;
  type metadata accessor for SupportFlowBiomeManager();
  sub_100008780();
  v92 = v22;
  v93 = v21;
  __chkstk_darwin(v21);
  sub_10000C30C();
  v25 = v24 - v23;
  v26 = type metadata accessor for NavigationPath();
  sub_100008780();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_10000C30C();
  sub_100096A30();
  DeviceEventCoordinator.init()();
  v30 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_serviceStatusCoordinator;
  type metadata accessor for ServiceStatusCoordinator();
  swift_allocObject();
  *(v0 + v30) = sub_10007815C();
  v31 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_supportContentCoordinator;
  v32 = type metadata accessor for SupportContentCoordinator(0);
  sub_100096E68(v32);
  sub_10005259C();
  *(v0 + v31) = v33;
  v34 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_tipsContentManager;
  *(v2 + v34) = [objc_allocWithZone(TPSFullTipContentManager) init];
  v35 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_welcomeContentProvider;
  LaunchWelcomeProvider = type metadata accessor for FlowViewDataProvider.FirstLaunchWelcomeProvider(0);
  v37 = sub_100096E68(LaunchWelcomeProvider);
  sub_1000935C4(v37, v38, v39, v40);
  *(v2 + v35) = v37;
  *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__contentMessageViewModel) = 0;
  type metadata accessor for SupportFlowSession();
  v41 = sub_100096808();
  v91 = v42;
  sub_100003CE8(v41, v43, v44, v42);
  v45 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_sessionClient;
  v46 = type metadata accessor for SupportFlowSessionAnalyticsClient();
  sub_100096E68(v46);
  *(v2 + v45) = SupportFlowSessionAnalyticsClient.init()();
  type metadata accessor for EntryPoint();
  v47 = sub_100096808();
  v49 = v48;
  sub_100003CE8(v47, v50, v51, v48);
  *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__userDidAcknowledgeWelcome) = 0;
  *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchResultsViewModel) = [objc_allocWithZone(type metadata accessor for SearchResultsViewModel()) init];
  *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for FlowViewDataProvider(0);
  v52 = sub_10008AAA4();
  v53 = (v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__language);
  *v53 = v52;
  v53[1] = v54;
  v55 = [objc_opt_self() defaultStore];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 aa_primaryAppleAccount];

    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__primaryAccount) = v57;
    type metadata accessor for URL();
    v58 = sub_100096808();
    sub_100003CE8(v58, v59, v60, v61);
    NavigationPath.init()();
    (*(v28 + 32))(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__navigationPath, v1, v26);
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__isSearching) = 0;
    v62 = (v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchText);
    *v62 = 0;
    v62[1] = 0xE000000000000000;
    type metadata accessor for SupportFlowIdentifier();
    v63 = sub_100096808();
    sub_100003CE8(v63, v64, v65, v66);
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageItem) = 0;
    v67 = (v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageDisplayedStepId);
    *v67 = 0;
    v67[1] = 0;
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__mainSection) = 0;
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__suggestedSection) = 0;
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__sections) = _swiftEmptyArrayStorage;
    sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
    sub_100052F8C();
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__flowMap) = Dictionary.init(dictionaryLiteral:)();
    sub_100025778(0, &qword_10018E478, TPSTip_ptr);
    sub_100052F8C();
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__stepMap) = Dictionary.init(dictionaryLiteral:)();
    v68 = v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__flowContentLoadingState;
    *v68 = 0;
    *(v68 + 8) = -1;
    v69 = v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceStatusLoadingState;
    *v69 = 0;
    *(v69 + 8) = -1;
    v70 = v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__articlesLoadingState;
    *v70 = 0;
    *(v70 + 8) = -1;
    v71 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__solutionsLoadingState;
    v72 = sub_100003768(&qword_10018E458, &qword_100129E90);
    sub_100003CE8(v2 + v71, 1, 2, v72);
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_flowListInitializationTask) = 0;
    ObservationRegistrar.init()();
    v73 = v94;
    v74 = sub_100096CF4();
    sub_10000AB80(v74, v75, v76, v77);
    type metadata accessor for DeepLinkContext(0);
    sub_10000ED90(v20);
    if (v78)
    {
      sub_10000ABCC(v20, &qword_10018A310, &unk_1001241F0);
    }

    else
    {

      sub_100096920();
      sub_100096670(v20, v79);
    }

    SupportFlowBiomeManager.init(sessionId:version:)();
    (*(v92 + 32))(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_biomeManager, v25, v93);
    sub_10000AB80(v73, v17, &qword_10018A310, &unk_1001241F0);
    sub_10000ED90(v17);
    if (v78)
    {
      sub_10000ABCC(v17, &qword_10018A310, &unk_1001241F0);
    }

    else
    {

      sub_100096920();
      sub_100096670(v17, v80);
    }

    v81 = v95;
    EntryPoint.init(bundleIdentifier:)();
    sub_100096B34();
    sub_100003CE8(v82, v83, v84, v49);
    v85 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_entryPoint;
    sub_100096A24();
    swift_beginAccess();
    sub_1000961A0(v81, v2 + v85, &qword_10018E490, &qword_100129F70);
    swift_endAccess();
    SupportFlowBiomeManager.sessionId.getter();
    sub_10000AB80(v2 + v85, v96, &qword_10018E490, &qword_100129F70);
    v86 = v97;
    sub_100096D88();
    SupportFlowSession.init(sessionId:entryPoint:)();
    sub_10000ABCC(v73, &qword_10018A310, &unk_1001241F0);
    sub_100096B34();
    sub_100003CE8(v87, v88, v89, v91);
    v90 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_currentSession;
    sub_100096A24();
    swift_beginAccess();
    sub_1000961A0(v86, v2 + v90, &qword_10018E480, &qword_100129F40);
    swift_endAccess();
    sub_100017C18();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100089838(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__userDidAcknowledgeWelcome) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__userDidAcknowledgeWelcome) = v2;
  }

  else
  {
    swift_getKeyPath();
    sub_100096B40();
    __chkstk_darwin(v3);
    sub_100096768();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_100093748(v5, sub_100095ED0, v6, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  }

  return result;
}

void sub_100089910(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchResultsViewModel;
  v5 = *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchResultsViewModel);
  type metadata accessor for SearchResultsViewModel();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v9);
    sub_100096768();
    *(v10 - 16) = v2;
    *(v10 - 8) = a1;
    sub_100093748(v11, sub_100095E68, v12, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);

    sub_100096B10();
  }
}

void sub_100089A64(void *a1)
{
  v3 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__primaryAccount;
  v4 = *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__primaryAccount);
  v5 = sub_100096908();
  v9 = sub_10009090C(v5, v6, v7, v8);

  if (v9)
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v10);
    sub_100096754();
    sub_100093748(v11, sub_100095DA4, v12, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);

    sub_100096B10();
  }

  else
  {
    v13 = *(v1 + v3);
    *(v1 + v3) = a1;
  }
}

void sub_100089B88()
{
  sub_100017C00();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for NavigationPath();
  sub_100008780();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000C30C();
  sub_100096A30();
  v9 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__navigationPath;
  sub_100052F98();
  swift_beginAccess();
  v10 = *(v7 + 16);
  v10(v1, v2 + v9, v5);
  sub_10009531C(&qword_10018DA38, &type metadata accessor for NavigationPath, &protocol conformance descriptor for NavigationPath);
  sub_100096BB8();
  LOBYTE(v9) = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v7 + 8);
  v11(v1, v5);
  if (v9)
  {
    v12 = sub_100096BB8();
    (v10)(v12);
    sub_10008B1A0(v1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100096768();
    *(v14 - 16) = v2;
    *(v14 - 8) = v4;
    sub_100093748(v15, sub_100095CD8, v16, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  }

  v11(v4, v5);
  sub_100017C18();
}

uint64_t sub_100089D90(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__isSearching) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__isSearching) = v2;

    return sub_10008B4D4();
  }

  else
  {
    swift_getKeyPath();
    sub_100096B40();
    __chkstk_darwin(v3);
    sub_100096768();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_100093748(v5, sub_100095C98, v6, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  }
}

void sub_100089EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100096D74();
  v7 = v5;
  v9 = v8;
  v11 = (v4 + *v10);
  v12 = *v11 == v8 && v11[1] == v5;
  if (v12 || (v13 = v6, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *v11 = v9;
    v11[1] = v7;
    sub_100053050();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10009673C();
    sub_100093748(v16, v13, v17, v18, v19, v20, &unk_100129E68);

    sub_100053050();
  }
}

void sub_10008A010(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__flowMap;

  sub_100113D60(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;

    sub_10008C73C();
  }

  else
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v7);
    sub_100096754();
    sub_100093748(v8, sub_10009596C, v9, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);

    sub_100096B10();
  }
}

void sub_10008A16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100096D74();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = *v11;

  LOBYTE(v8) = v8(v13, v10);

  if (v8)
  {
    *(v4 + v12) = v10;
    sub_100053050();
  }

  else
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v15);
    sub_100096754();
    sub_10009673C();
    sub_100093748(v16, v6, v17, v18, v19, v20, &unk_100129E68);

    sub_100053050();
  }
}

uint64_t sub_10008A2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  swift_getKeyPath();
  v14 = v4;
  v15 = a1;
  v16 = v6;
  sub_10009673C();
  sub_100093748(v8, a4, &v13, v9, v10, v11, &unk_100129E68);
  sub_1000955BC(a1, v6);
}

uint64_t sub_10008A374(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_100093748(KeyPath, sub_100095508, &v5, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);

  return sub_10000ABCC(a1, &qword_10018DA20, &qword_100129760);
}

void sub_10008A444(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10008A474(v1);
}

void sub_10008A474(void *a1)
{
  v3 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__contentMessageViewModel;
  v4 = *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__contentMessageViewModel);
  v5 = sub_100096908();
  v7 = sub_100090890(v5, v6);

  if (v7)
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v8);
    sub_100096754();
    sub_100093748(v9, sub_100095F60, v10, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);

    sub_100096B10();
  }

  else
  {
    v11 = *(v1 + v3);
    *(v1 + v3) = a1;
  }
}

void sub_10008A588(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__contentMessageViewModel);
  *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__contentMessageViewModel) = a2;
  v3 = a2;
}

uint64_t (*sub_10008A620(uint64_t a1))(uint64_t a1)
{
  sub_100096A24();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10008A680()
{
  v1 = v0;
  v2 = sub_100003768(&qword_10018E480, &qword_100129F40);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_100003768(&qword_10018E490, &qword_100129F70);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  v11 = type metadata accessor for EntryPoint();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_entryPoint;
  swift_beginAccess();
  sub_10000AB80(v1 + v15, v10, &qword_10018E490, &qword_100129F70);
  if (sub_10000E5F0(v10, 1, v11) == 1)
  {
    return sub_10000ABCC(v10, &qword_10018E490, &qword_100129F70);
  }

  (*(v12 + 32))(v14, v10, v11);
  SupportFlowBiomeManager.sessionId.getter();
  (*(v12 + 16))(v8, v14, v11);
  sub_100003CE8(v8, 0, 1, v11);
  SupportFlowSession.init(sessionId:entryPoint:)();
  (*(v12 + 8))(v14, v11);
  v17 = type metadata accessor for SupportFlowSession();
  sub_100003CE8(v4, 0, 1, v17);
  v18 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_currentSession;
  swift_beginAccess();
  sub_1000961A0(v4, v1 + v18, &qword_10018E480, &qword_100129F40);
  return swift_endAccess();
}

id sub_10008A9A0()
{
  swift_getKeyPath();
  sub_10009670C();
  v3 = sub_10009531C(v1, v2, &unk_100129E68);
  v11 = sub_100096938(v3, v4, v5, v6, v7, v8, v9, v10, v16, v0);
  sub_100096E80(v11, v12, v13);

  v14 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchResultsViewModel);

  return v14;
}

void sub_10008AA68(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchResultsViewModel);
  *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchResultsViewModel) = a2;
  v3 = a2;
}

uint64_t sub_10008AAA4()
{
  v0 = static Locale.preferredLanguages.getter();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = 28261;
  }

  return v1;
}

BOOL sub_10008AB14()
{
  v1 = sub_10008CA44();
  if (v2 < 0xFEu)
  {
    sub_1000955BC(v1, v2);
    return 0;
  }

  else
  {
    v3 = sub_10008C6FC();
    sub_100114850(v3);
    sub_10006F37C();

    return v0 == 0;
  }
}

void sub_10008AB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100017C00();
  a19 = v21;
  a20 = v22;
  v23 = sub_100003768(&qword_10018DA20, &qword_100129760);
  sub_10000ED84(v23);
  sub_10000ED78();
  __chkstk_darwin(v24);
  sub_100096A30();
  v25 = sub_100003768(&qword_10018E458, &qword_100129E90);
  sub_10000AF7C();
  __chkstk_darwin(v26);
  sub_100012454();
  v29 = v27 - v28;
  __chkstk_darwin(v30);
  v32 = &a9 - v31;
  v33 = sub_10008CA58();
  v35 = v34;
  sub_1000955BC(v33, v34);
  if (v35 > 0xFD)
  {
    goto LABEL_7;
  }

  v36 = sub_10008CA44();
  v38 = v37;
  sub_100096D18();
  if (!v40 & v39)
  {
LABEL_6:
    sub_1000955BC(v36, v38);
    goto LABEL_7;
  }

  v41 = sub_10008CA6C();
  v43 = v42;
  sub_100096D18();
  if (!v40 & v39)
  {
    sub_1000955BC(v41, v43);
    goto LABEL_6;
  }

  sub_10008CBB8();
  if (sub_10000E5F0(v20, 2, v25))
  {
    sub_1000955BC(v36, v38);
    sub_1000955BC(v41, v43);
    sub_10000ABCC(v20, &qword_10018DA20, &qword_100129760);
  }

  else
  {
    v45 = sub_100025A88();
    sub_10000AB34(v45, v46, v47, v48);
    if (v38)
    {
      sub_1000955BC(v41, v43);
      sub_10000ABCC(v32, &qword_10018E458, &qword_100129E90);
    }

    else
    {
      if ((v43 & 1) == 0)
      {
        if (static Bool.isInternal.getter())
        {
          v49 = v32;
        }

        else
        {
          v50 = sub_100096DAC();
          sub_10000AB34(v50, v51, v52, v53);
          sub_100096D48();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            goto LABEL_7;
          }

          v49 = v29;
        }

        sub_10000ABCC(v49, &qword_10018E458, &qword_100129E90);
        goto LABEL_7;
      }

      sub_10000ABCC(v32, &qword_10018E458, &qword_100129E90);
    }
  }

LABEL_7:
  sub_100017C18();
}

uint64_t sub_10008ADD4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_supportContentCoordinator);
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
}

void sub_10008AE04(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100089A64(v1);
}

void sub_10008AE34(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__primaryAccount);
  *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__primaryAccount) = a2;
  v3 = a2;
}

void sub_10008AEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100096D74();
  v5 = v4;
  v6 = sub_100096D94();
  v8 = sub_100003768(v6, v7);
  sub_10000ED84(v8);
  sub_10000ED78();
  __chkstk_darwin(v9);
  sub_100017BAC();
  sub_100052F98();
  swift_beginAccess();
  sub_100096BE8();
  sub_10000AB80(v10, v11, v12, v13);
  v14 = sub_100096908();
  v16 = sub_100090590(v14, v15);
  v17 = sub_100096D48();
  sub_10000ABCC(v17, v18, &unk_100122AE0);
  if (v16)
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v19);
    sub_100096754();
    sub_100093748(v20, sub_100095D44, v21, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  }

  else
  {
    sub_100077FE8();
    sub_100096BE8();
    sub_10000AB80(v22, v23, v24, v25);
    sub_100096A24();
    swift_beginAccess();
    sub_100096BE8();
    sub_1000961A0(v26, v27, v28, v29);
    swift_endAccess();
  }

  sub_10000ABCC(v5, &qword_100188EE0, &unk_100122AE0);
  sub_100053050();
}

uint64_t sub_10008B070()
{
  v0 = type metadata accessor for NavigationPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10008A620(v9);
  v6 = v5;
  v7 = type metadata accessor for SupportFlowSession();
  if (!sub_10000E5F0(v6, 1, v7))
  {
    sub_10008B260(v3);
    NavigationPath.count.getter();
    (*(v1 + 8))(v3, v0);
    SupportFlowSession.lastScreen.setter();
  }

  return (v4)(v9, 0);
}

uint64_t sub_10008B1A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__navigationPath;
  sub_1000969C8();
  swift_beginAccess();
  v4 = type metadata accessor for NavigationPath();
  (*(*(v4 - 8) + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_10008B070();
  v5 = sub_100077FE8();
  return v6(v5);
}

uint64_t sub_10008B260@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v10 = v1;
  sub_10009670C();
  v5 = sub_10009531C(v3, v4, &unk_100129E68);
  sub_10009681C(v5, v6);

  v7 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__navigationPath;
  sub_100052F98();
  swift_beginAccess();
  type metadata accessor for NavigationPath();
  sub_10000AF7C();
  return (*(v8 + 16))(a1, v10 + v7);
}

void sub_10008B350()
{
  type metadata accessor for NavigationPath();
  sub_100008780();
  __chkstk_darwin(v0);
  sub_10000C30C();
  sub_100096914();
  v1 = sub_100096BC4();
  v2(v1);
  sub_100089B88();
}

uint64_t sub_10008B400(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a2);
  return sub_10008B1A0(v5);
}

uint64_t sub_10008B4D4()
{
  if ((sub_10008B570() & 1) == 0)
  {
    v0 = sub_10008A9A0();
    dispatch thunk of SearchResultsViewModel.reset()();
  }

  v1 = sub_10008A620(v6);
  v3 = v2;
  v4 = type metadata accessor for SupportFlowSession();
  if (!sub_10000E5F0(v3, 1, v4))
  {
    SupportFlowSession.hasPerformedSearch.setter();
  }

  return (v1)(v6, 0);
}

uint64_t sub_10008B584(uint64_t a1)
{
  sub_100096CA0(a1);
  sub_10009670C();
  v5 = sub_10009531C(v3, v4, &unk_100129E68);
  sub_10009681C(v5, v6);

  return *(v2 + *v1);
}

uint64_t sub_10008B5FC()
{
  sub_10006F388();
  v0 = sub_10008B570();
  return sub_100096CE8(v0);
}

uint64_t sub_10008B648(uint64_t a1)
{
  sub_10008CA44();
  sub_100096D18();
  if (!(!v4 & v3) && (v2 & 1) == 0)
  {
    return 1;
  }

  sub_1000955BC(v1, v2);
  return 0;
}

uint64_t sub_10008B690(uint64_t a1)
{
  sub_100096CA0(a1);
  sub_10009670C();
  v3 = sub_10009531C(v1, v2, &unk_100129E68);
  sub_10009681C(v3, v4);

  return sub_10000AFAC();
}

uint64_t sub_10008B718()
{
  sub_10006F388();
  result = sub_10008B67C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_10008B758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = sub_100096B28();
  return a5(v6);
}

uint64_t sub_10008B79C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a1 + *a4);
  *v4 = a2;
  v4[1] = a3;
}

void sub_10008B7E0()
{
  v1 = v0;
  v2 = type metadata accessor for SupportFlowIdentifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = sub_10008A620(v44);
  v11 = v10;
  v12 = type metadata accessor for SupportFlowSession();
  if (!sub_10000E5F0(v11, 1, v12))
  {
    sub_10008BCE0();
    SupportFlowSession.currentFlowId.setter();
  }

  (v9)(v44, 0);
  v13 = sub_10008A620(v44);
  v15 = v14;
  if (sub_10000E5F0(v14, 1, v12))
  {
    (v13)(v44, 0);
    return;
  }

  v16 = sub_10008C4CC();
  if (!v16)
  {
LABEL_25:
    SupportFlowSession.featuredTopic.setter();
    (v13)(v44, 0);
    return;
  }

  v17 = v16;
  v34 = v15;
  v35 = v13;
  v41 = v1;
  v18 = [v16 collections];

  sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_100114850(v19);
  v21 = 0;
  v42 = v19 & 0xFFFFFFFFFFFFFF8;
  v43 = v19 & 0xC000000000000001;
  v37 = (v3 + 8);
  v38 = (v3 + 16);
  v36 = v20;
  v39 = v19;
  while (1)
  {
    if (v20 == v21)
    {
LABEL_23:

      goto LABEL_24;
    }

    if (v43)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *(v42 + 16))
      {
        goto LABEL_27;
      }

      v22 = *(v19 + 8 * v21 + 32);
    }

    v23 = v22;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    v24 = [v22 identifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    sub_10008BCE0();
    if (sub_10000E5F0(v8, 1, v2))
    {
      sub_10000ABCC(v8, &unk_10018A300, &unk_1001241E0);

      goto LABEL_19;
    }

    v28 = v40;
    (*v38)(v40, v8, v2);
    sub_10000ABCC(v8, &unk_10018A300, &unk_1001241E0);
    v29 = SupportFlowIdentifier.rawValue.getter();
    v31 = v30;
    (*v37)(v28, v2);
    if (v25 == v29 && v27 == v31)
    {

LABEL_24:
      v13 = v35;
      goto LABEL_25;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = v36;
    v19 = v39;
    if (v33)
    {
      goto LABEL_23;
    }

LABEL_19:
    ++v21;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_10008BC60(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v10 = *a2;
  sub_1000969C8();
  swift_beginAccess();
  sub_100095EE8(a1, v5 + v10, a3, a4);
  v11 = swift_endAccess();
  a5(v11);
  v12 = sub_100096B50();
  return sub_10000ABCC(v12, v13, v14);
}

uint64_t sub_10008BD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v11 = sub_100003768(a5, a6);
  sub_10000ED84(v11);
  sub_10000ED78();
  __chkstk_darwin(v12);
  sub_1000969F4();
  v13 = sub_100025A88();
  sub_10000AB80(v13, v14, a5, a6);
  return a7(v7);
}

uint64_t sub_10008BD9C(uint64_t a1)
{
  v3 = sub_100096D94();
  v5 = sub_100003768(v3, v4);
  sub_10000ED84(v5);
  sub_10000ED78();
  __chkstk_darwin(v6);
  sub_100017BAC();
  sub_100052F98();
  swift_beginAccess();
  sub_100096BE8();
  sub_10000AB80(v7, v8, v9, v10);
  v11 = sub_100096908();
  v13 = sub_100090234(v11, v12);
  v14 = sub_100096D48();
  sub_10000ABCC(v14, v15, &unk_1001241E0);
  if (v13)
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v16);
    sub_100096754();
    sub_100093748(v17, sub_100095BB4, v18, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  }

  else
  {
    v19 = sub_100077FE8();
    sub_10000AB80(v19, v20, v21, v22);
    sub_10008BC30(v1);
  }

  return sub_10000ABCC(a1, &unk_10018A300, &unk_1001241E0);
}

uint64_t sub_10008BF18(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - v4;
  sub_10000AB80(a2, &v7 - v4, &unk_10018A300, &unk_1001241E0);
  return sub_10008BC30(v5);
}

uint64_t sub_10008BFCC()
{
  swift_getKeyPath();
  sub_10009670C();
  v3 = sub_10009531C(v1, v2, &unk_100129E68);
  v11 = sub_100096938(v3, v4, v5, v6, v7, v8, v9, v10, v15, v0);
  sub_100096E80(v11, v12, v13);
}

void sub_10008C088(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageItem;
  v4 = sub_100096908();
  if (sub_100090534(v4, v5))
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v6);
    sub_100096754();
    sub_100093748(v7, sub_100095B38, v8, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);

    sub_100096B10();
  }

  else
  {
    *(v1 + v3) = a1;
  }
}

uint64_t sub_10008C190(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageItem) = a2;
}

uint64_t sub_10008C1D4()
{
  swift_getKeyPath();
  sub_10009670C();
  v3 = sub_10009531C(v1, v2, &unk_100129E68);
  v11 = sub_100096938(v3, v4, v5, v6, v7, v8, v9, v10, v15, v0);
  sub_100096E80(v11, v12, v13);

  return sub_10000AFAC();
}

void sub_10008C2B0()
{
  sub_100096B04();
  v3 = (v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageDisplayedStepId);
  if (sub_100080F60(*(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageDisplayedStepId), *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageDisplayedStepId + 8), v2, v0))
  {
    KeyPath = swift_getKeyPath();
    v5 = __chkstk_darwin(KeyPath);
    v6[2] = v1;
    v6[3] = v2;
    v6[4] = v0;
    sub_100093748(v5, sub_100095AEC, v6, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);

    sub_100096B10();
  }

  else
  {
    *v3 = v2;
    v3[1] = v0;
  }
}

uint64_t sub_10008C3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageDisplayedStepId);
  *v3 = a2;
  v3[1] = a3;
}

void sub_10008C438(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10008C468(v1);
}

void sub_10008C490(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__mainSection);
  *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__mainSection) = a2;
  v3 = a2;
}

void *sub_10008C4E0(uint64_t a1)
{
  sub_100096CA0(a1);
  sub_10009670C();
  v5 = sub_10009531C(v3, v4, &unk_100129E68);
  sub_10009681C(v5, v6);

  v7 = *(v2 + *v1);
  v8 = v7;
  return v7;
}

void sub_10008C560(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10008C590(v1);
}

void sub_10008C5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100096D74();
  v6 = v5;
  v8 = v7;
  v10 = *v9;
  v11 = *(v4 + *v9);
  v12 = sub_100096BB8();
  v16 = sub_10009090C(v12, v13, v14, v15);

  if (v16)
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v17);
    sub_100096754();
    sub_10009673C();
    sub_100093748(v18, v6, v19, v20, v21, v22, &unk_100129E68);

    sub_100053050();
  }

  else
  {
    *(v4 + v10) = v8;
    sub_100053050();
  }
}

void sub_10008C6C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__suggestedSection);
  *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__suggestedSection) = a2;
  v3 = a2;
}

uint64_t sub_10008C73C()
{
  v0 = sub_10008A9A0();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of SearchResultsViewModel.searchResultCollectionResolver.setter();

  v1 = sub_10008A9A0();

  dispatch thunk of SearchResultsViewModel.searchResultSelected.setter();

  v2 = sub_10008A9A0();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of SearchResultsViewModel.supportArticleURLHandler.setter();

  v3 = sub_10008A9A0();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of SearchResultsViewModel.searchResultsSeeAllHandler.setter();
}

uint64_t sub_10008C8FC(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__flowMap) = a2;

  return sub_10008C73C();
}

uint64_t sub_10008C95C(uint64_t a1)
{
  sub_100096CA0(a1);
  sub_10009670C();
  v3 = sub_10009531C(v1, v2, &unk_100129E68);
  sub_10009681C(v3, v4);
}

uint64_t sub_10008CA04(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + *a3) = a2;
}

uint64_t sub_10008CA80(uint64_t a1)
{
  sub_100096CA0(a1);
  sub_10009670C();
  v3 = sub_10009531C(v1, v2, &unk_100129E68);
  sub_10009681C(v3, v4);

  v5 = sub_10000AFAC();
  sub_1000955E0(v5, v6);
  return sub_10000AFAC();
}

uint64_t sub_10008CB0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_1000955E0(*a1, v7);
  return a5(v6, v7);
}

uint64_t sub_10008CB5C(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4)
{
  v4 = a1 + *a4;
  v5 = *v4;
  *v4 = a2;
  v6 = *(v4 + 8);
  *(v4 + 8) = a3;
  sub_1000955E0(a2, a3);
  return sub_1000955BC(v5, v6);
}

uint64_t sub_10008CBDC()
{
  sub_100096DA0();
  v4 = v3;
  v5 = v1;
  v7 = v6;
  swift_getKeyPath();
  sub_10009670C();
  v10 = sub_10009531C(v8, v9, &unk_100129E68);
  sub_100096938(v10, v11, v12, v13, v14, v15, v16, v17, v20, v1);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *v4;
  sub_100052F98();
  swift_beginAccess();
  return sub_10000AB80(v5 + v18, v7, v2, v0);
}

uint64_t sub_10008CCA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  sub_1000969C8();
  swift_beginAccess();
  sub_100095EE8(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

void sub_10008CD18()
{
  sub_100017C00();
  v3 = v0;
  v4 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  sub_10000ED84(v4);
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_100096A04();
  type metadata accessor for EntryPoint();
  sub_100008780();
  v36 = v7;
  v37 = v6;
  __chkstk_darwin(v6);
  sub_10000C30C();
  v10 = v9 - v8;
  v11 = sub_100003768(&qword_10018E490, &qword_100129F70);
  sub_10000ED84(v11);
  sub_10000ED78();
  __chkstk_darwin(v12);
  sub_100017BAC();
  v13 = type metadata accessor for Logger();
  sub_100008780();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_10000C30C();
  sub_100096A30();
  static Logger.supportFlowApp.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v35 = v13;
    v19 = sub_10002B114();
    v20 = sub_100018FBC();
    *v19 = 136315138;
    v21 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_entryPoint;
    sub_100052F98();
    swift_beginAccess();
    sub_10000AB80(v3 + v21, v1, &qword_10018E490, &qword_100129F70);
    if (sub_10000E5F0(v1, 1, v37))
    {
      sub_10000ABCC(v1, &qword_10018E490, &qword_100129F70);
      v22 = 0x6E776F6E6B6E75;
    }

    else
    {
      v23 = sub_100096DAC();
      v24(v23);
      sub_10000ABCC(v1, &qword_10018E490, &qword_100129F70);
      v22 = EntryPoint.rawValue.getter();
      (*(v36 + 8))(v10, v37);
    }

    v25 = sub_100096BC4();
    sub_10009CACC(v25, v26, v27);
    sub_100096D24();

    *(v19 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "Initializing Flow List with entry point: %s", v19, 0xCu);
    sub_1000086BC(v20);
    sub_100008744(v20);
    sub_100008744(v19);

    (*(v15 + 8))(v2, v35);
  }

  else
  {

    (*(v15 + 8))(v2, v13);
  }

  type metadata accessor for TaskPriority();
  sub_100053004();
  sub_100003CE8(v28, v29, v30, v31);
  type metadata accessor for MainActor();
  sub_10006F37C();

  v32 = static MainActor.shared.getter();
  sub_1000969E8();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = &protocol witness table for MainActor;
  v33[4] = v3;
  sub_100096B60();
  sub_100085200();
  *(v3 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_flowListInitializationTask) = v34;

  sub_100017C18();
}

uint64_t sub_10008D0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for DefaultFlowOverride(0);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for SupportFlowIdentifier();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_10008D21C;

  return sub_10008E4CC();
}

uint64_t sub_10008D21C()
{
  sub_100025A94();
  sub_10004622C();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v3 = sub_100062F00();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10008D33C()
{
  sub_10004F4F8();

  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (qword_1001A5950)
  {
    v1 = v0[3];

    sub_1000FB088(v1);
    sub_100096960(v1);
    if (v2)
    {
      v3 = v0[3];

      sub_100096670(v3, type metadata accessor for DefaultFlowOverride);
    }

    else
    {
      v4 = v0[6];
      (*(v0[5] + 32))(v4, v0[3], v0[4]);
      sub_10008D4A8(v4);

      v5 = sub_100096A5C();
      v6(v5);
    }
  }

  *(v0[2] + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_flowListInitializationTask) = 0;

  sub_10000875C();

  return v7();
}

uint64_t sub_10008D4A8(uint64_t a1)
{
  swift_getKeyPath();
  sub_10009531C(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  type metadata accessor for SupportFlowIdentifier();
  sub_10009531C(&qword_10018E498, &type metadata accessor for SupportFlowIdentifier, &protocol conformance descriptor for SupportFlowIdentifier);
  NavigationPath.append<A>(_:)();
  swift_endAccess();
  sub_10008B070();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

void sub_10008D638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_10009670C();
  sub_10009531C(v3, v4, &unk_100129E68);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  sub_1000969C8();
  swift_beginAccess();
  sub_100096B28();
  NavigationPath.append<A>(_:)();
  swift_endAccess();
  sub_10008B070();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  sub_100096B28();
  sub_1000900A8();
}

id sub_10008D788(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_100096B04();
  sub_10008C948();
  sub_100096908();
  v2 = sub_100083BC4();

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 fullContent];

  return v3;
}

uint64_t sub_10008D804(uint64_t a1, uint64_t a2)
{
  v4 = sub_10008BFCC();
  if (v4)
  {
    sub_10008C1D4();
    if (v5)
    {

      v6 = sub_10008C1D4();
      if (!v7)
      {
LABEL_9:

        return 0;
      }

      if (v6 == a1 && v7 == a2)
      {
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v9 & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    sub_100096B28();
    sub_10008C2B0();
  }

  return v4;
}

uint64_t sub_10008D8BC()
{
  sub_100025A94();
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  sub_100052F6C(v2);
  v1[7] = v3;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v4 = sub_100003768(&qword_10018E480, &qword_100129F40);
  sub_10000ED84(v4);
  v1[10] = sub_100052FA4();
  v5 = type metadata accessor for SupportFlowSession();
  v1[11] = v5;
  sub_100052F6C(v5);
  v1[12] = v6;
  v1[13] = sub_100052FA4();
  v7 = type metadata accessor for MainActor();
  v1[14] = sub_10006F3C8(v7);
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[15] = v8;
  v1[16] = v9;
  v10 = sub_100096AEC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10008DA14()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[5];
  v4 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_currentSession;
  sub_100052F98();
  swift_beginAccess();
  sub_10000AB80(v3 + v4, v2, &qword_10018E480, &qword_100129F40);
  if (sub_10000E5F0(v2, 1, v1) == 1)
  {
    v5 = v0[10];

    sub_10000ABCC(v5, &qword_10018E480, &qword_100129F40);
    static Logger.supportFlowApp.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Cannot update session: currentSession is nil", v8, 2u);
      sub_100008744(v8);
    }

    (*(v0[7] + 8))(v0[9], v0[6]);

    sub_10000875C();
    sub_100096DCC();

    __asm { BRAA            X1, X16 }
  }

  (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
  v9 = type metadata accessor for JSONEncoder();
  sub_100096E68(v9);
  JSONEncoder.init()();
  sub_10009531C(&qword_10018E488, &type metadata accessor for SupportFlowSession, &protocol conformance descriptor for SupportFlowSession);
  sub_100077FE8();
  v0[17] = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[18] = v10;
  v13 = v0[5];

  v0[19] = *(v13 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_sessionClient);

  SupportFlowBiomeManager.sessionId.getter();
  v0[20] = v14;
  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  sub_100062F48(v15);
  sub_100096DCC();

  return SupportFlowSessionAnalyticsClient.updateSessionMap(identifier:data:)(v16, v17, v18, v19);
}

uint64_t sub_10008DDE0()
{
  sub_100025A94();
  sub_10004622C();
  v3 = v2;
  sub_100052FD4();
  *v4 = v3;
  v5 = *v1;
  sub_10000870C();
  *v6 = v5;
  v3[22] = v0;

  if (v0)
  {
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_10008DF88;
  }

  else
  {

    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_10008DEEC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10008DEEC()
{
  sub_10003DCD8();
  sub_100008408(*(v0 + 136), *(v0 + 144));

  v1 = sub_100096BA0();
  v2(v1);

  sub_10000875C();

  return v3();
}

uint64_t sub_10008DF88()
{
  sub_10004F4F8();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);

  sub_100008408(v2, v1);
  static Logger.supportFlowApp.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    sub_10002B114();
    v5 = sub_100096944();
    *v2 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    sub_100096A88(v6);
    sub_100096B70(&_mh_execute_header, v3, v4, "Failed to encode currentSession with JSON encoding: %@");
    sub_10000ABCC(v5, &qword_100189390, &qword_1001241D0);
    sub_1000968EC();
    sub_1000968D0();
  }

  v7 = sub_100096A5C();
  v8(v7);
  v9 = sub_100096BA0();
  v10(v9);

  sub_10000875C();

  return v11();
}

void sub_10008E114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100096D74();
  v7 = v6;
  v8 = sub_100025A88();
  v10 = sub_100003768(v8, v9);
  sub_10000ED84(v10);
  sub_10000ED78();
  __chkstk_darwin(v11);
  sub_1000967F8();
  v12 = sub_100003768(&qword_10018DA28, &unk_100129768);
  sub_10000ED84(v12);
  sub_10000ED78();
  __chkstk_darwin(v13);
  sub_100096A04();
  v14 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v14);
  sub_10000ED78();
  __chkstk_darwin(v15);
  sub_100017BAC();
  sub_10008CBB8();
  sub_1000912CC(v5);
  sub_100096C50();
  v16 = type metadata accessor for SupportSolutions(0);
  sub_10000ED90(v5);
  if (v22)
  {
    sub_10000ABCC(v5, &qword_10018DA28, &unk_100129768);
    type metadata accessor for URL();
    v17 = sub_1000967B8();
    sub_100003CE8(v17, v18, v19, v20);
  }

  else
  {
    sub_10000AB80(v5 + *(v16 + 28), v4, &qword_100188EE0, &unk_100122AE0);
    sub_100096724();
    sub_100096670(v5, v21);
    type metadata accessor for URL();
    sub_10000ED90(v4);
    if (!v22)
    {
      sub_100012448();
      v25 = sub_100077FE8();
      v26(v25);
      goto LABEL_10;
    }
  }

  if (qword_1001880F8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for URL();
  sub_10000C2D4(v23, qword_1001A5680);
  sub_100012448();
  (*(v24 + 16))(v7);
  sub_10000ED90(v4);
  if (!v22)
  {
    sub_10000ABCC(v4, &qword_100188EE0, &unk_100122AE0);
  }

LABEL_10:
  sub_100053050();
}

void sub_10008E36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100096D74();
  v5 = sub_100025A88();
  v7 = sub_100003768(v5, v6);
  sub_10000ED84(v7);
  sub_10000ED78();
  __chkstk_darwin(v8);
  sub_1000967F8();
  v9 = sub_100003768(&qword_10018DA28, &unk_100129768);
  sub_10000ED84(v9);
  sub_10000ED78();
  __chkstk_darwin(v10);
  sub_100096A04();
  sub_10008CBB8();
  sub_1000912CC(v4);
  sub_100096C50();
  type metadata accessor for SupportSolutions(0);
  sub_10000ED90(v4);
  if (v11)
  {
    v13 = sub_10000ABCC(v4, &qword_10018DA28, &unk_100129768);
  }

  else
  {
    sub_100096724();
    v13 = sub_100096670(v4, v12);
  }

  sub_10008E114(v13, v14, v15, v16);
  type metadata accessor for SupportActionInfoType(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ActionInfoType(0);
  swift_storeEnumTagMultiPayload();
  sub_100053050();
}

uint64_t sub_10008E4CC()
{
  sub_100025A94();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_100052F6C(v2);
  v1[4] = v3;
  v1[5] = sub_100052FA4();
  v1[6] = type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[8] = v4;
  v1[9] = v5;
  v6 = sub_100096AEC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10008E5A4()
{
  sub_10004F4F8();
  static Logger.supportFlowApp.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "fetchDataForFlowList", v3, 2u);
    sub_100008744(v3);
  }

  v4 = sub_100077FE8();
  v5(v4);
  v6 = static MainActor.shared.getter();
  v0[10] = v6;
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_10008E70C;
  v8 = v0[2];

  return withDiscardingTaskGroup<A>(returning:isolation:body:)(v7, &type metadata for ()[1], v6, &protocol witness table for MainActor, &unk_100129ED8, v8, &type metadata for ()[1]);
}

uint64_t sub_10008E70C()
{
  sub_10003DCD8();
  sub_100096CD0();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;

  sub_100096D54();
  v5 = *(v4 + 72);
  v6 = *(v0 + 64);

  return _swift_task_switch(sub_10008E83C, v6, v5);
}

uint64_t sub_10008E83C()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_10008E8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v3[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008E970, v5, v4);
}

uint64_t sub_10008E970()
{
  v1 = *(v0 + 32);

  v2 = type metadata accessor for TaskPriority();
  sub_100053004();
  sub_100003CE8(v3, v4, v5, v2);
  sub_1000969E8();
  v6 = swift_allocObject();
  sub_100096C18(v6);
  sub_10008F344(v1, &unk_100129EF0, v6);
  sub_100096C6C();
  sub_100053004();
  sub_100003CE8(v7, v8, v9, v2);
  sub_1000969E8();
  v10 = swift_allocObject();
  sub_100096C18(v10);
  sub_10008F344(v1, &unk_100129F00, v10);
  sub_100096C6C();
  sub_100053004();
  sub_100003CE8(v11, v12, v13, v2);
  sub_1000969E8();
  v14 = swift_allocObject();
  sub_100096C18(v14);
  sub_10008F344(v1, &unk_100129F10, v14);
  sub_100096C6C();

  sub_10000875C();

  return v15();
}

uint64_t sub_10008EAF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100046160;

  return sub_10008EB80();
}

uint64_t sub_10008EB80()
{
  *(v1 + 152) = v0;
  *(v1 + 160) = *v0;
  return _swift_task_switch(sub_10008EBC8, 0, 0);
}

uint64_t sub_10008EBC8()
{
  sub_100025A94();
  *(v0 + 168) = type metadata accessor for MainActor();
  *(v0 + 176) = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v1 = sub_100062F00();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10008EC4C()
{
  sub_100025A94();

  sub_10008A274(0, 254);
  sub_10004F504();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_10008ECBC()
{
  sub_100025A94();
  *(v0 + 184) = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_tipsContentManager;
  *(v0 + 192) = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v1 = sub_100062F00();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10008ED40()
{
  sub_100025A94();
  v1 = v0[23];
  v2 = v0[19];

  v0[25] = *(v2 + v1);
  sub_10004F504();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10008EDAC()
{
  sub_10003DCD8();
  v1 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10008EEC4;
  v2 = swift_continuation_init();
  v0[17] = sub_100003768(&qword_10018E468, &qword_100129F38);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100091E98;
  v0[13] = &unk_10017C118;
  v0[14] = v2;
  [v1 supportFlowContentWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10008EEC4()
{
  sub_100025A94();
  sub_10004622C();
  *(v0 + 208) = *(v0 + 48);
  sub_10004F504();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10008EFC8()
{
  sub_100025A94();
  v0[27] = v0[18];
  v0[28] = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v1 = sub_100062F00();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10008F048()
{
  sub_10003DCD8();

  v0 = sub_100096BC4();
  sub_100091F28(v0, v1);
  sub_10004F504();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10008F0F0()
{
  sub_100025A94();

  sub_10000875C();

  return v1();
}

uint64_t sub_10008F148()
{
  sub_10003DCD8();
  v1 = v0[26];
  swift_willThrow();
  v0[10] = v1;
  sub_100003768(&qword_100189398, &unk_100122910);
  sub_100025778(0, &qword_1001893A0, NSError_ptr);
  sub_10000DF20();
  result = swift_dynamicCast();
  if (result)
  {
    v0[29] = v0[18];
    v0[30] = static MainActor.shared.getter();
    sub_10006F37C();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100062F98();
    v3 = sub_100062F00();

    return _swift_task_switch(v3, v4, v5);
  }

  return result;
}

uint64_t sub_10008F240()
{
  sub_10003DCD8();

  v0 = sub_10000AFAC();
  sub_100092244(v0, v1);
  sub_10004F504();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10008F2E4()
{
  sub_100025A94();

  sub_10000875C();

  return v1();
}

uint64_t sub_10008F344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  sub_10000AB80(a1, v19 - v9, &qword_1001888B0, &qword_1001228F0);
  v11 = type metadata accessor for TaskPriority();
  if (sub_10000E5F0(v10, 1, v11) == 1)
  {
    sub_10000ABCC(v10, &qword_1001888B0, &qword_1001228F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *v4;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = (v14 | v12);
  if (v14 | v12)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v12;
    v20[3] = v14;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v15;
  swift_task_create();
}

uint64_t sub_10008F538()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100046160;

  return sub_10008F5C8();
}

uint64_t sub_10008F5E8()
{
  sub_100025A94();
  *(v0 + 24) = type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v1 = sub_100062F00();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10008F66C()
{
  sub_100025A94();

  sub_10008A294(0, 254);
  sub_10004F504();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_10008F6DC()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  sub_100062F48(v1);

  return sub_100078A88();
}

uint64_t sub_10008F770()
{
  sub_100025A94();
  sub_10004622C();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;
  *(v4 + 48) = v0;

  sub_10004F504();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10008F870()
{
  sub_100025A94();
  *(v0 + 56) = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v1 = sub_100062F00();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10008F8E8()
{
  sub_100025A94();

  sub_10008A294(0, 0);
  sub_10000875C();

  return v0();
}

uint64_t sub_10008F950()
{
  sub_100025A94();
  *(v0 + 64) = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v1 = sub_100062F00();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10008F9C8()
{
  sub_10003DCD8();

  v0 = sub_10000AFAC();
  sub_10009241C(v0, v1);
  sub_10004F504();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10008FA70()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_10008FAC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100046160;

  return sub_10008FB58();
}

uint64_t sub_10008FB58()
{
  sub_100025A94();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_100052F6C(v2);
  v1[4] = v3;
  v1[5] = sub_100052FA4();
  v4 = type metadata accessor for MainActor();
  v1[6] = sub_10006F3C8(v4);
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[7] = v5;
  v1[8] = v6;
  v7 = sub_100096AEC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10008FC24()
{
  sub_100025A94();
  if (sub_100093460())
  {

    sub_10000875C();

    return v1();
  }

  else
  {
    sub_10008A354(0, 254);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    sub_100062F48(v3);

    return sub_10004FF18();
  }
}

uint64_t sub_10008FD18()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 80) = v0;

  sub_100052FF8();
  v6 = *(v5 + 64);
  v7 = *(v1 + 56);
  if (v0)
  {
    v8 = sub_10008FEB0;
  }

  else
  {
    v8 = sub_10008FE40;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10008FE40()
{
  sub_100025A94();

  sub_10008A354(0, 0);

  sub_10000875C();

  return v0();
}

uint64_t sub_10008FEB0()
{
  sub_10004F4F8();

  static Logger.supportFlowApp.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100096CB8();
  if (sub_100096E98())
  {
    sub_10002B114();
    v2 = sub_100096944();
    sub_100096C88(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100096A88(v3);
    sub_100096980(&_mh_execute_header, v4, v5, "Articles fetch failed due to error: %@");
    sub_10000ABCC(v2, &qword_100189390, &qword_1001241D0);
    sub_1000968EC();
    sub_1000968D0();
  }

  v6 = *(v0 + 80);

  v7 = sub_100096A5C();
  v8(v7);
  swift_errorRetain();
  sub_10008A354(v6, 1);

  sub_10000875C();

  return v9();
}

id sub_10008FFE8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  type metadata accessor for ContentMessageViewModel();
  v2 = a1;
  v3 = static ContentMessageViewModel.type(for:)();
  if (v3 > 3 || v3 == 2)
  {
    v7 = objc_allocWithZone(sub_100096D24());
    sub_10004F504();
    v5 = ContentMessageViewModel.init(contentMessageType:additionalContext:)();
  }

  else
  {
    if (qword_100188230 != -1)
    {
      swift_once();
    }

    v5 = qword_1001A57A8;
  }

  v6 = v5;

  return v6;
}

void sub_1000900A8()
{
  sub_100017C00();
  v2 = *(v1 - 8);
  __chkstk_darwin(v3);
  sub_10000C30C();
  sub_100096914();
  (*(v2 + 16))(v0);
  sub_100003768(&unk_100189718, &unk_100129EC0);
  if (swift_dynamicCast())
  {
    sub_10003C91C(&v16, v13);
    v4 = sub_10008A620(v12);
    v6 = v5;
    v7 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v6, 1, v7))
    {
      v8 = v14;
      v9 = v15;
      sub_100025734(v13, v14);
      (*(v9 + 24))(v8, v9);
      SupportFlowSession.currentStepId.setter();
    }

    (v4)(v12, 0);
    sub_1000086BC(v13);
  }

  v10 = sub_100096908();
  v11(v10);
  sub_100017C18();
}

uint64_t sub_100090234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportFlowIdentifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100003768(&qword_100188FA0, &qword_10012A190);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_10000AB80(a1, &v20 - v13, &unk_10018A300, &unk_1001241E0);
  sub_10000AB80(a2, &v14[v15], &unk_10018A300, &unk_1001241E0);
  if (sub_10000E5F0(v14, 1, v4) != 1)
  {
    sub_10000AB80(v14, v10, &unk_10018A300, &unk_1001241E0);
    if (sub_10000E5F0(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10009531C(&qword_100188FA8, &type metadata accessor for SupportFlowIdentifier, &protocol conformance descriptor for SupportFlowIdentifier);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_10000ABCC(v14, &unk_10018A300, &unk_1001241E0);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (sub_10000E5F0(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10000ABCC(v14, &qword_100188FA0, &qword_10012A190);
    v16 = 1;
    return v16 & 1;
  }

  sub_10000ABCC(v14, &unk_10018A300, &unk_1001241E0);
  v16 = 0;
  return v16 & 1;
}

BOOL sub_100090534(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    if (v4 == *(a2 + 16) && v5 == *(a2 + 24))
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v3 & 1) == 0;
}

uint64_t sub_100090590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100003768(&qword_10018E4B0, &qword_10012A210);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_10000AB80(a1, &v20 - v13, &qword_100188EE0, &unk_100122AE0);
  sub_10000AB80(a2, &v14[v15], &qword_100188EE0, &unk_100122AE0);
  if (sub_10000E5F0(v14, 1, v4) != 1)
  {
    sub_10000AB80(v14, v10, &qword_100188EE0, &unk_100122AE0);
    if (sub_10000E5F0(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10009531C(&qword_10018E4B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_10000ABCC(v14, &qword_100188EE0, &unk_100122AE0);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (sub_10000E5F0(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10000ABCC(v14, &qword_10018E4B0, &qword_10012A210);
    v16 = 1;
    return v16 & 1;
  }

  sub_10000ABCC(v14, &qword_100188EE0, &unk_100122AE0);
  v16 = 0;
  return v16 & 1;
}

BOOL sub_100090890(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for ContentMessageViewModel();
    v5 = a1;
    v6 = a2;
    v2 = static NSObject.== infix(_:_:)();
  }

  return (v2 & 1) == 0;
}

BOOL sub_10009090C(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v4 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_100025778(0, a3, a4);
    v7 = a1;
    v8 = a2;
    sub_100096908();
    v4 = static NSObject.== infix(_:_:)();
  }

  return (v4 & 1) == 0;
}

uint64_t sub_10009098C()
{
  v1 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_biomeManager;
  type metadata accessor for SupportFlowBiomeManager();
  sub_10000AF7C();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_deviceEventCoordinator;
  type metadata accessor for DeviceEventCoordinator();
  sub_10000AF7C();
  (*(v4 + 8))(v0 + v3);

  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_currentSession, &qword_10018E480, &qword_100129F40);

  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_entryPoint, &qword_10018E490, &qword_100129F70);

  sub_100095F7C(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_delegate);

  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__selectedURL, &qword_100188EE0, &unk_100122AE0);
  v5 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__navigationPath;
  type metadata accessor for NavigationPath();
  sub_10000AF7C();
  (*(v6 + 8))(v0 + v5);

  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__currentFlowId, &unk_10018A300, &unk_1001241E0);

  sub_100096C34(OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__flowContentLoadingState);
  sub_100096C34(OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceStatusLoadingState);
  sub_100096C34(OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__articlesLoadingState);
  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__solutionsLoadingState, &qword_10018DA20, &qword_100129760);

  v7 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_10000AF7C();
  (*(v8 + 8))(v0 + v7);
  return v0;
}

uint64_t sub_100090C8C()
{
  sub_10009098C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100090CF0(void *a1)
{
  if (!a1 || (v1 = [a1 tocAssets]) == 0 || (result = sub_10009515C(v1, &selRef_symbolId), !v3))
  {

    return 0;
  }

  return result;
}