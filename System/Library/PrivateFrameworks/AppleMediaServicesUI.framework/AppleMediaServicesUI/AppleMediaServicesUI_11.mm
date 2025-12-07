uint64_t sub_1000FD3B0@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(describing:)();
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t sub_1000FD480(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1000FD4C4(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = (2 * result) | 1;
  v16 = sub_1000FC3C0(result);
  if (v15 >= ContiguousArray.count.getter())
  {
    goto LABEL_7;
  }

  result = sub_1000FD4C4(v15, a2 & 1, a3, a4, a5, a6, a7, a8);
  v18 = result + v17;
  if (__OFADD__(result, v17))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18 + a6;
  if (!__OFADD__(v18, a6))
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v19 = 0;
LABEL_8:
  if (v16 >= ContiguousArray.count.getter())
  {
    return v19;
  }

  result = sub_1000FD4C4(v16, a2 & 1, a3, a4, a5, a6, a7, a8);
  if (!__OFADD__(result, v20))
  {
    if (__OFADD__(result + v20, a6))
    {
      __break(1u);
    }

    return v19;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000FD608@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v6 = type metadata accessor for Heap(0, *(a1 + 16), *(a1 + 24), a4);

  return sub_1000FC94C(v6, x8_0);
}

uint64_t sub_1000FD658(char a1)
{

  return a1 & 1;
}

uint64_t sub_1000FD6AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000FD658(*v1);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3 & 1;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  return result;
}

unint64_t sub_1000FD784(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000FD7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000FD7DC(uint64_t a1, int a2)
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

uint64_t sub_1000FD81C(uint64_t result, int a2, int a3)
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

id sub_1000FD87C()
{
  result = [objc_allocWithZone(NSISO8601DateFormatter) init];
  qword_1002877E0 = result;
  return result;
}

uint64_t sub_1000FD8B0()
{

  v1 = OBJC_IVAR____TtC14amsengagementd12JetpackIndex_scriptURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1000FD928()
{
  sub_1000FD8B0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JetpackIndex(uint64_t a1)
{
  result = qword_10026D1C0;
  if (!qword_10026D1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FD9D4(uint64_t a1)
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

uint64_t sub_1000FDA8C()
{
  v2 = type metadata accessor for URL.DirectoryHint();
  sub_100002CC4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL();
  sub_100002CC4();
  v29 = v9;
  v30 = v8;
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for JetpackOutputWriter(0);
  v13 = *(v12 + 28);
  v31 = v0;
  if (*(v0 + v13) == 1)
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      v15 = 1;
      goto LABEL_7;
    }

    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

LABEL_7:
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  *v34 = v15;
  sub_1000FE220();
  v16 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    if (qword_1002686C8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1001E5F60;
    v35 = v12;
    v21 = sub_100017E64(v34);
    sub_1000FE274(v31, v21);
    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v34);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v24 = v32;
    v25 = v33;
    v35 = v33;
    v26 = sub_100017E64(v34);
    (*(*(v25 - 8) + 16))(v26, v24, v25);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v34);
    v27 = static os_log_type_t.error.getter();
    sub_1000036B0(v27, v20);

    return swift_willThrow();
  }

  else
  {
    v18 = v16;
    v19 = v17;

    strcpy(v34, "metadata.plist");
    v34[15] = -18;
    (*(v4 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
    sub_10001ECE0();
    URL.appending<A>(path:directoryHint:)();
    (*(v4 + 8))(v7, v2);
    Data.write(to:options:)();
    (*(v29 + 8))(v11, v30);
    return sub_1000253FC(v18, v19);
  }
}

uint64_t sub_1000FDF78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
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

uint64_t sub_1000FDFF0(void *a1, uint64_t a2)
{
  v3 = sub_10007B9A4(&qword_10026D310, &qword_1001EC718);
  sub_100002CC4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_100003CA8(a1, a1[3]);
  sub_1000337F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1000FE114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000FDF78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000FE140(uint64_t a1)
{
  v2 = sub_1000337F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FE17C(uint64_t a1)
{
  v2 = sub_1000337F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for JetpackOutputWriter(uint64_t a1)
{
  result = qword_10026D2B8;
  if (!qword_10026D2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000FE220()
{
  result = qword_10026D258;
  if (!qword_10026D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D258);
  }

  return result;
}

uint64_t sub_1000FE274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetpackOutputWriter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000FE300(uint64_t a1)
{
  sub_1000FE394();
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000FE394()
{
  if (!qword_10026D2C8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10026D2C8);
    }
  }
}

unint64_t sub_1000FE408()
{
  result = qword_10026D318;
  if (!qword_10026D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D318);
  }

  return result;
}

unint64_t sub_1000FE460()
{
  result = qword_10026D320;
  if (!qword_10026D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D320);
  }

  return result;
}

unint64_t sub_1000FE4B8()
{
  result = qword_10026D328;
  if (!qword_10026D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D328);
  }

  return result;
}

uint64_t sub_1000FE50C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007B9A4(&qword_10026D330, &unk_1001EC840);
  __chkstk_darwin(v6 - 8);
  v8 = v32 - v7;
  v9 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
  sub_100002DDC();
  v11 = __chkstk_darwin(v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v32 - v15;
  __chkstk_darwin(v14);
  v18 = v32 - v17;
  sub_1000FE964(*(a1 + 1), v8);
  if (sub_100009F34(v8, 1, v9) == 1)
  {
    sub_10000A00C(v8, &qword_10026D330, &unk_1001EC840);
    if (qword_1002685F8 != -1)
    {
      swift_once();
    }

    v19 = qword_10026A070;
    sub_10007B9A4(&qword_10026D340, &qword_1001EC850);
    v20 = Promise.__allocating_init()();
    sub_10007B9A4(&qword_10026D348, qword_1001EC858);
    v21 = sub_10009D750();
    v22 = [v19 URLForKey:v21];

    v23 = [v22 valuePromise];
    Promise<A>.init(_:)();
    v24 = swift_allocObject();
    v25 = *(a1 + 16);
    *(v24 + 16) = *a1;
    *(v24 + 32) = v25;
    v26 = *(a1 + 48);
    *(v24 + 48) = *(a1 + 32);
    *(v24 + 64) = v26;
    *(v24 + 80) = v19;
    *(v24 + 88) = v20;
    v27 = sub_100017A08();
    (*(v3 + 104))(v5, enum case for DispatchQoS.QoSClass.userInitiated(_:), v2);
    swift_retain_n();
    sub_10000F4A4(a1, v32);
    swift_unknownObjectRetain();
    v28 = static OS_dispatch_queue.global(qos:)();
    (*(v3 + 8))(v5, v2);
    v32[3] = v27;
    v32[4] = &protocol witness table for OS_dispatch_queue;
    v32[0] = v28;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(v32);
  }

  else
  {
    sub_1000FF4B8(v8, v18);
    sub_10007B9A4(&qword_10026D340, &qword_1001EC850);
    sub_1000FF528(v18, v16);
    v29 = *(v9 + 48);
    *v13 = *v16;
    type metadata accessor for URL();
    sub_100002DDC();
    (*(v30 + 32))(&v13[v29], &v16[v29]);
    v20 = Promise.__allocating_init(value:)();
    sub_10000A00C(v18, &qword_10026D338, &qword_1001EDA20);
  }

  return v20;
}

uint64_t sub_1000FE964@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = type metadata accessor for URL();
  v39 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  type metadata accessor for Defaults();
  if (sub_1000571D4(11))
  {
    v38 = v10;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = 0xE900000000000073;
      v18 = 0x636974796C616E61;
      switch(a1)
      {
        case 1:
          v17 = 0xE800000000000000;
          v18 = 0x6C616E7265746E69;
          break;
        case 2:
          v17 = 0xE800000000000000;
          v18 = 0x7379656E72756F6ALL;
          break;
        case 3:
          v18 = 0x6E656D6D6F636572;
          v17 = 0xEF736E6F69746164;
          break;
        default:
          break;
      }

      *&v40 = v18;
      *(&v40 + 1) = v17;
      v24 = [v16 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v24)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
      }

      v42 = v40;
      v43 = v41;
      if (*(&v41 + 1))
      {
        if (swift_dynamicCast())
        {
          URL.init(string:)();

          swift_unknownObjectRelease();
          v25 = v38;
          if (sub_100009F34(v9, 1, v38) == 1)
          {
            v26 = &unk_10026FEE0;
            v27 = &unk_1001E67C0;
            v28 = v9;
LABEL_36:
            sub_10000A00C(v28, v26, v27);
LABEL_38:
            v34 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
            v32 = a2;
            v35 = 1;
            return sub_10000A7C0(v32, v35, 1, v34);
          }

          v29 = *(v39 + 32);
          v29(v15, v9, v25);
          v30 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
          v31 = *(v30 + 48);
          *a2 = 1;
          v29(&a2[v31], v15, v25);
          v32 = a2;
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      goto LABEL_35;
    }

    swift_unknownObjectRelease();
    v10 = v38;
  }

  if (sub_1000571D4(12))
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = 0xE900000000000073;
      v21 = 0x636974796C616E61;
      switch(a1)
      {
        case 1:
          v20 = 0xE800000000000000;
          v21 = 0x6C616E7265746E69;
          break;
        case 2:
          v20 = 0xE800000000000000;
          v21 = 0x7379656E72756F6ALL;
          break;
        case 3:
          v21 = 0x6E656D6D6F636572;
          v20 = 0xEF736E6F69746164;
          break;
        default:
          break;
      }

      *&v40 = v21;
      *(&v40 + 1) = v20;
      v33 = [v19 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v33)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
      }

      v42 = v40;
      v43 = v41;
      if (*(&v41 + 1))
      {
        if (swift_dynamicCast())
        {
          URL.init(string:)();

          swift_unknownObjectRelease();
          if (sub_100009F34(v7, 1, v10) == 1)
          {
            v26 = &unk_10026FEE0;
            v27 = &unk_1001E67C0;
            v28 = v7;
            goto LABEL_36;
          }

          v36 = *(v39 + 32);
          v36(v13, v7, v10);
          v30 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
          v37 = *(v30 + 48);
          *a2 = 0;
          v36(&a2[v37], v13, v10);
          v32 = a2;
LABEL_41:
          v35 = 0;
          v34 = v30;
          return sub_10000A7C0(v32, v35, 1, v34);
        }

LABEL_37:
        swift_unknownObjectRelease();
        goto LABEL_38;
      }

LABEL_35:
      swift_unknownObjectRelease();
      v26 = &qword_10026D350;
      v27 = &qword_1001E6050;
      v28 = &v42;
      goto LABEL_36;
    }

    swift_unknownObjectRelease();
  }

  v22 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);

  return sub_10000A7C0(a2, 1, 1, v22);
}

uint64_t sub_1000FEFF8(void *a1)
{
  v1 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v11 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(v2 + 56);
  *v4 = 1;
  (*(v6 + 32))(&v4[v9], v8, v5);
  Promise.resolve(_:)();
  return sub_10000A00C(v4, &qword_10026D338, &qword_1001EDA20);
}

uint64_t sub_1000FF164(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F70;
  v20 = &type metadata for JetPackResourceResolver;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v19);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x80000001001F7F70;
  v10._countAndFlagsBits = 0xD000000000000047;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  v11 = *(a2 + 1);
  v20 = &unk_1002471C0;
  LOBYTE(v19[0]) = v11;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(v19, &qword_10026D350, &qword_1001E6050);
  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  LogInterpolation.init(stringInterpolation:)();
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13, v7);

  sub_10007B9A4(&qword_10026D348, qword_1001EC858);
  v14 = sub_10009D6AC();
  v15 = [a3 URLForKey:{v14, a4}];

  v16 = [v15 valuePromise];
  Promise<A>.init(_:)();
  v20 = type metadata accessor for SyncTaskScheduler();
  v21 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v19);
  SyncTaskScheduler.init()();
  sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
  Promise.map<A>(on:_:)();

  sub_100002C00(v19);
  sub_1000EA43C();
}

uint64_t sub_1000FF4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FF528(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FF598@<X0>(_BYTE *a2@<X8>)
{
  sub_10007B9A4(&qword_10026D338, &qword_1001EDA20);
  *a2 = 0;
  return static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_1000FF664()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14amsengagementd9JSAccount_account) ams_accountFlags];
  if (v1)
  {
    type metadata accessor for AMSAccountFlag(0);
    sub_1000AF20C();
    sub_1000FF9EC();
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v1 = sub_1000C5120(v2);
  }

  return v1;
}

id sub_1000FF780(void *a1)
{
  if ([*(v1 + OBJC_IVAR____TtC14amsengagementd9JSAccount_account) ams_accountFlagValueForAccountFlag:*a1])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_100002C5C(v7);
    return 0;
  }

  sub_1000AF20C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = [v4 BOOLValue];

  return v2;
}

Class sub_1000FF874(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    sub_1000AF20C();
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

uint64_t sub_1000FF8FC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14amsengagementd9JSAccount_account) ams_privacyAcknowledgement];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1000AF20C();
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_1000FF9B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAccount();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000FF9EC()
{
  result = qword_100269058;
  if (!qword_100269058)
  {
    type metadata accessor for AMSAccountFlag(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269058);
  }

  return result;
}

id sub_1000FFA84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAccountStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100100010(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

id sub_100100190()
{
  v1 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  sub_100002DEC();
  if (qword_1002686C0 != -1)
  {
    sub_1000031E0(&qword_1002686C0);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001E5F70;
  v3 = type metadata accessor for JSAMS(0);
  v15 = v3;
  v14[0] = v0;
  v4 = v0;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v14);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x20636F6C6C616544;
  v7._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v7);
  v8 = OBJC_IVAR____TtC14amsengagementd5JSAMS_uuid;
  v15 = sub_10007B9A4(&qword_10026D4C8, &qword_1001EC8C0);
  v9 = sub_100017E64(v14);
  sub_100037A94(v4 + v8, v9);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v14, &qword_10026D350, &qword_1001E6050);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  LogInterpolation.init(stringInterpolation:)();
  v11 = static os_log_type_t.debug.getter();
  sub_1000036B0(v11, v2);

  v13.receiver = v4;
  v13.super_class = v3;
  return objc_msgSendSuper2(&v13, "dealloc");
}

void sub_10010064C(uint64_t a1)
{
  sub_100100724(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100100724(uint64_t a1)
{
  if (!qword_10026D4C0)
  {
    v2 = type metadata accessor for UUID();
    v5 = type metadata accessor for AppReference(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_10026D4C0);
    }
  }
}

uint64_t sub_1001007C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd5JSApp_name);

  return v1;
}

id sub_100100844()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSApp();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_10010088C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244ED8, v2);

  return v3 != 0;
}

BOOL sub_1001008FC@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10010088C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100100930@<X0>(void *a1@<X8>)
{
  result = sub_1001008D4();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

id sub_1001009A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSRuntime(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100100A50(uint64_t a1)
{
  sub_100023724(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100100AF4()
{
  if (qword_1002686C0 != -1)
  {
    sub_1000031E0(&qword_1002686C0);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_10000A610();
  v1 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v1);
  sub_1000056F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001E5F70;
  v5[3] = type metadata accessor for JSAppEngine();
  v5[0] = v0;
  if (*(*(v0 + 24) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v5);
  LogInterpolation.init(stringLiteral:)();
  v3 = static os_log_type_t.info.getter();
  sub_1000036B0(v3, v2);

  return v0;
}

uint64_t sub_100100C88()
{
  sub_100100AF4();
  sub_1000074E4();

  return swift_deallocClassInstance();
}

uint64_t sub_100100CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[31] = a4;
  v5[32] = a5;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  type metadata accessor for LogInterpolation.StringInterpolation();
  v5[33] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_100100DA4, 0, 0);
}

uint64_t sub_100100DA4()
{
  v1 = *(v0 + 240) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config;
  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E61;
  switch(*(v1 + 1))
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
      v2 = 0xEF736E6F69746164;
      v3 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  sub_100002C4C((v0 + 16), (v0 + 48));

  swift_isUniquelyReferenced_nonNull_native();
  sub_10000DFC4();
  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      v4 = 0xEF636E7953746867;
      v5 = 0x696577746867696CLL;
    }

    else
    {
      v4 = 0xE400000000000000;
      v5 = 1668184435;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x65756575716E65;
  }

  *(v0 + 104) = &type metadata for String;
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  sub_100002C4C((v0 + 80), (v0 + 112));
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000DFC4();
  v6 = objc_opt_self();
  *(v0 + 280) = v6;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 208) = 0;
  v8 = [v6 dataWithJSONObject:isa options:0 error:v0 + 208];

  v9 = *(v0 + 208);
  if (v8)
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    *(v0 + 288) = v10;
    *(v0 + 296) = v12;
    v13 = swift_task_alloc();
    *(v0 + 304) = v13;
    *v13 = v0;
    v13[1] = sub_100101114;

    return sub_1000C12E8(v10, v12);
  }

  else
  {
    v15 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100002D8C();

    return v16();
  }
}

uint64_t sub_100101114()
{
  sub_100004768();
  v2 = *v1;
  *(v2 + 312) = v3;
  *(v2 + 320) = v0;

  if (v0)
  {
    v4 = sub_1001015D0;
  }

  else
  {
    v4 = sub_100101250;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100101250()
{
  v1 = *(v0 + 280);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 216) = 0;
  v3 = [v1 dataWithJSONObject:isa options:2 error:v0 + 216];

  v4 = *(v0 + 216);
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    static String.Encoding.utf8.getter();
    v28 = v7;
    v29 = v5;
    v27 = String.init(data:encoding:)();
    v9 = v8;
    if (qword_1002686C0 != -1)
    {
      sub_1000031E0(&qword_1002686C0);
    }

    v10 = *(v0 + 256);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_10000A610();
    v11 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v11);
    sub_1000056F8();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001E5F70;
    *(v0 + 168) = type metadata accessor for JSAppEngine();
    *(v0 + 144) = v10;

    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v0 + 144));
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._object = 0x80000001001F9B80;
    v18._countAndFlagsBits = 0xD000000000000013;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    if (v9)
    {
      v19 = &type metadata for String;
      v20 = v27;
    }

    else
    {
      v20 = 0;
      v19 = 0;
      *(v0 + 192) = 0;
    }

    *(v0 + 176) = v20;
    *(v0 + 184) = v9;
    *(v0 + 200) = v19;
    LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
    sub_10000A064(v0 + 176, &qword_10026D350, &qword_1001E6050);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    LogInterpolation.init(stringInterpolation:)();
    v22 = static os_log_type_t.default.getter();
    sub_1000036B0(v22, v12);
    v23 = sub_100003B80();
    sub_1000253FC(v23, v24);

    sub_1000253FC(v29, v28);
  }

  else
  {
    v15 = v4;
    v17 = *(v0 + 288);
    v16 = *(v0 + 296);
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000253FC(v17, v16);
  }

  **(v0 + 224) = *(v0 + 312);

  sub_100002D8C();

  return v25();
}

uint64_t sub_1001015D0()
{
  sub_1000253FC(*(v0 + 288), *(v0 + 296));

  sub_100002D8C();

  return v1();
}

uint64_t sub_100101674(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_10007B9A4(&qword_10026D668, &qword_1001EC9C0);
  v7 = Promise.__allocating_init()();
  v8 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = v7;

  sub_1001BE5A8(0, 0, v6, &unk_1001EC9D0, v9);

  return v7;
}

uint64_t sub_1001017A8(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_10026D670, &qword_1001EC9D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for JSError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = a1;
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  if (swift_dynamicCast())
  {
    sub_10000A7C0(v4, 0, 1, v5);
    (*(v6 + 32))(v8, v4, v5);
    v26 = _convertErrorToNSError(_:)();
    sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E6580;
    *&v24 = 0x6E6D756C6F63;
    *(&v24 + 1) = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    v10 = JSError.column.getter();
    if (v11)
    {
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = 0x6E776F6E6B6E75;
      *(inited + 80) = 0xE700000000000000;
    }

    else
    {
      v25 = &type metadata for Int;
      *&v24 = v10;
      sub_100002C4C(&v24, (inited + 72));
    }

    *&v24 = 1701734764;
    *(&v24 + 1) = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    v13 = JSError.line.getter();
    if (v14)
    {
      *(inited + 168) = &type metadata for String;
      *(inited + 144) = 0x6E776F6E6B6E75;
      *(inited + 152) = 0xE700000000000000;
    }

    else
    {
      v25 = &type metadata for Int;
      *&v24 = v13;
      sub_100002C4C(&v24, (inited + 144));
    }

    *&v24 = 0x6567617373656DLL;
    *(&v24 + 1) = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    v15 = JSError.message.getter();
    *(inited + 240) = &type metadata for String;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *&v24 = 0x5255656372756F73;
    *(&v24 + 1) = 0xE90000000000004CLL;
    AnyHashable.init<A>(_:)();
    v17 = JSError.sourceURL.getter();
    *(inited + 312) = &type metadata for String;
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0x6E776F6E6B6E75;
    }

    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0xE700000000000000;
    }

    *(inited + 288) = v19;
    *(inited + 296) = v20;
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v22 = v26;
    [v26 ams_errorByAddingUserInfo:isa];

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_10000A7C0(v4, 1, 1, v5);
    sub_10000A064(v4, &qword_10026D670, &qword_1001EC9D8);
    swift_willThrow();
    return swift_errorRetain();
  }
}

uint64_t sub_100101B90(uint64_t a1, uint64_t (*a2)(void))
{
  a2();
  sub_1000EAA68();
}

uint64_t sub_100101BE4()
{
  if (qword_1002686C0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001E5F70;
  type metadata accessor for JSAppEngine();
  v1 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v2 = static os_log_type_t.fault.getter();
  sub_1000036B0(v2, v0);

  return 1;
}

uint64_t sub_100101D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026D638, &qword_1001EC980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100101DFC(uint64_t a1, void (*a2)(uint64_t *, void))
{
  v4[0] = a1;
  v4[1] = a1;

  a2(v4, 0);

  return Promise.resolve(_:)();
}

uint64_t sub_100101E64(uint64_t a1, void (*a2)(uint64_t *, void))
{
  v4[0] = a1;
  v4[1] = a1;

  a2(v4, 0);

  return Promise.resolve(_:)();
}

uint64_t sub_100101ECC(uint64_t a1, void (*a2)(char *, void))
{
  v4 = sub_10007B9A4(&qword_10026D688, &qword_1001EC9E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for JSResponse();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  sub_10000A7C0(v6, 0, 1, v7);
  a2(v6, 0);
  sub_10000A064(v6, &qword_10026D688, &qword_1001EC9E8);
  return Promise.resolve(_:)();
}

uint64_t sub_100101FE8(uint64_t a1, void (*a2)(uint64_t *, uint64_t))
{
  v3 = 0;
  a2(&v3, a1);
  return Promise.reject(_:)();
}

uint64_t sub_100102044(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v4 = sub_10007B9A4(&qword_10026D688, &qword_1001EC9E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for JSResponse();
  sub_10000A7C0(v6, 1, 1, v7);
  a2(v6, a1);
  sub_10000A064(v6, &qword_10026D688, &qword_1001EC9E8);
  return Promise.reject(_:)();
}

uint64_t sub_100102128(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_10010221C;

  return v9(v6 + 16);
}

uint64_t sub_10010221C()
{
  sub_100004768();
  v2 = *v1;
  sub_100002D20();
  *v3 = v2;
  *(v4 + 40) = v0;

  if (v0)
  {
    v5 = sub_100102388;
  }

  else
  {
    v5 = sub_100102324;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100102324()
{
  sub_100004768();
  Promise.resolve(_:)();

  sub_100002D8C();

  return v0();
}

uint64_t sub_100102388()
{
  sub_100004768();
  Promise.reject(_:)();

  sub_100002D8C();

  return v0();
}

uint64_t sub_10010242C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v16[4] = &protocol witness table for OS_dispatch_queue;
  v16[0] = a3;
  v11 = a3;
  v12 = Promise.__allocating_init()();
  sub_100007A3C();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v12;
  sub_100007A3C();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v12;
  swift_retain_n();
  swift_retain_n();
  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v16);
  return v12;
}

uint64_t sub_100102570()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C08D0;
  v4 = sub_100007FD0();

  return sub_100100CB4(v4, v5, v6, v7, v2);
}

uint64_t sub_100102620()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C08D0;
  v2 = sub_100007FD0();

  return v3(v2);
}

unint64_t sub_1001026F8()
{
  result = qword_10026D680;
  if (!qword_10026D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D680);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JSAppEngineError(_BYTE *result, int a2, int a3)
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

unint64_t sub_100102820()
{
  result = qword_10026D690;
  if (!qword_10026D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D690);
  }

  return result;
}

uint64_t sub_100102878(void *a1, void *a2, void *a3, void *a4)
{
  v7 = (*&v4[OBJC_IVAR____TtC14amsengagementd9JSBacklog_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
  }

  else
  {
    v9 = 0;
  }

  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001E5F70;
  v22[3] = type metadata accessor for JSBacklog();
  v22[0] = v4;
  v4;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v22);
  LogInterpolation.init(stringLiteral:)();
  v11 = static os_log_type_t.default.getter();
  sub_1000036B0(v11, v10);

  sub_100004AA0();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v9;
  v13[4] = v8;
  v13[5] = a1;
  v13[6] = a4;
  v13[7] = a3;
  v13[8] = a2;

  v14 = a1;
  v15 = a4;
  v16 = a3;
  v17 = a2;
  v18 = sub_10011F39C("lookup(_:_:_:_:)", 0x10uLL, 2, sub_100104654, v13);

  return v18;
}

uint64_t sub_100102ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  v87 = a6;
  v86 = a5;
  v85 = a3;
  v82 = a2;
  v12 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for JSCallable();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v83 = v15;
  v16 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v80 = v13;
    type metadata accessor for AppDatabase();
    v19 = sub_10001D804(*(*&v18[OBJC_IVAR____TtC14amsengagementd9JSBacklog_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1), 0);
    v84 = v10;
    v81 = v14;
    v79 = v16;
    if (v10)
    {
LABEL_13:
      v82 = 0;
      if (qword_1002686E8 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1001E5F70;
      v89 = type metadata accessor for JSBacklog();
      v88[0] = v18;
      v44 = v18;
      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(v88);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v45._countAndFlagsBits = 0xD00000000000002DLL;
      v45._object = 0x80000001001F9D20;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v45);
      v46 = v84;
      swift_getErrorValue();
      v47 = v91;
      v48 = v92;
      v89 = v92;
      v49 = sub_100017E64(v88);
      (*(*(v48 - 8) + 16))(v49, v47, v48);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009F5C(v88, &qword_10026D350, &qword_1001E6050);
      v50._countAndFlagsBits = 41;
      v50._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v50);
      LogInterpolation.init(stringInterpolation:)();
      v51 = static os_log_type_t.error.getter();
      sub_1000036B0(v51, v43);

      v87 = v44;
      sub_10011F068("lookup(_:_:_:_:)", 16, 2, v88);
      if (v89)
      {
        v86 = v90;
        sub_100003CA8(v88, v89);
        v52 = v81;
        v53 = v46;
        v54 = v79;
        v55 = v80;
        (*(v81 + 16))(v79, v85, v80);
        v56 = (*(v52 + 80) + 16) & ~*(v52 + 80);
        v57 = (v83 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
        v58 = swift_allocObject();
        (*(v52 + 32))(v58 + v56, v54, v55);
        *(v58 + v57) = v53;
        swift_errorRetain();
        dispatch thunk of TaskScheduler.schedule(task:)();

        return sub_100002C00(v88);
      }

      else
      {

        return sub_100009F5C(v88, &qword_10026D6C8, &unk_1001ECB60);
      }
    }

    v20 = v19;
    v21 = sub_100137414(a7);
    if (v21 && (v22 = sub_10005CC34(v21), , v22))
    {
      v23 = v84;
      sub_100103774(v22, v93);
      v84 = v23;
      if (v23)
      {

        goto LABEL_13;
      }

      v78 = v20;
      v30 = v93[0];
      v31 = v93[1];
      v32 = v93[2];
      v33 = v93[3];
      v34 = v94;
    }

    else
    {
      v78 = v20;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 255;
    }

    v74 = v33;
    v76 = v31;
    v75 = v32;
    v73 = v34;
    v77 = v30;
    *&v95 = v30;
    *(&v95 + 1) = v31;
    v96 = v32;
    v97 = v33;
    v98 = v34;
    v35 = swift_allocObject();
    *(v35 + 16) = _swiftEmptyArrayStorage;
    v70[1] = v35 + 16;
    v72 = JSValue.int.getter();
    v71 = v36;
    v37 = swift_allocObject();
    v37[2] = v35;
    v37[3] = a9;
    v37[4] = a10;
    v37[5] = v18;
    v38 = v87;
    v37[6] = v86;
    v37[7] = v38;
    sub_1000A0D24();
    v39 = a9;
    v40 = a10;
    v41 = v18;

    v42 = v84;
    sub_1000A66D8(&v95, v72, v71 & 1, sub_100104714, v37);
    if (v42)
    {

      sub_10010473C(v77, v76, v75, v74, v73);

      v84 = v42;
      goto LABEL_13;
    }

    swift_beginAccess();
    v59 = *(v35 + 16);
    if (*(v59 + 16))
    {
      sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1001E61B0;
      *(v60 + 56) = sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
      *(v60 + 32) = v59;
    }

    v61 = v81;
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1001E5F70;
    v89 = type metadata accessor for JSBacklog();
    v88[0] = v41;
    v63 = v41;
    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(v88);
    LogInterpolation.init(stringLiteral:)();
    v64 = static os_log_type_t.default.getter();
    sub_1000036B0(v64, v62);

    sub_10011F068("lookup(_:_:_:_:)", 16, 2, v88);
    if (v89)
    {
      v87 = v90;
      v86 = sub_100003CA8(v88, v89);
      v65 = v79;
      v66 = v80;
      (*(v61 + 16))(v79, v82, v80);
      v67 = v61;
      v68 = (*(v61 + 80) + 16) & ~*(v61 + 80);
      v69 = swift_allocObject();
      (*(v67 + 32))(v69 + v68, v65, v66);
      dispatch thunk of TaskScheduler.schedule(task:)();

      sub_10010473C(v77, v76, v75, v74, v73);
      sub_100002C00(v88);
    }

    else
    {

      sub_10010473C(v77, v76, v75, v74, v73);
      sub_100009F5C(v88, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1001E5F70;
    type metadata accessor for JSBacklog();
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v25 = static os_log_type_t.error.getter();
    sub_1000036B0(v25, v24);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v27 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
    v28 = sub_100051018();

    *(v26 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v26 + 32) = v28;
    sub_10005C768(v26);
  }
}

void sub_100103774(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100052D94(a1, &v209);
  if (!v210)
  {

    sub_100009F5C(&v209, &qword_10026D350, &qword_1001E6050);
LABEL_20:
    v40 = sub_1001048B4();
    sub_100007544(&type metadata for AppEventPredicateError, v40);
    *v41 = 0;
    *(v41 + 8) = 0;
    v42 = 2;
    goto LABEL_21;
  }

  if ((sub_100006D00(v5, v6, v7, &type metadata for String, v8, v9, v10, v11, v178, v195, v209) & 1) == 0)
  {

    goto LABEL_20;
  }

  v13 = v179;
  v12 = v196;
  v14 = v179 == 6581857 && v196 == 0xE300000000000000;
  if (!v14 && (sub_100003200(6581857, 0xE300000000000000) & 1) == 0)
  {
    v43 = v179 == 7368801 && v196 == 0xE300000000000000;
    if (v43 || (sub_100003200(7368801, 0xE300000000000000) & 1) != 0)
    {

      sub_100052D94(a1, &v209);

      if (v210)
      {
        if (sub_100006D00(v44, v45, v46, &type metadata for String, v47, v48, v49, v50, v179, v196, v209))
        {
          v51 = 0;
          v52 = 0;
          v13 = v181;
          v12 = v198;
          v53 = 1;
          goto LABEL_32;
        }
      }

      else
      {
        sub_100009F5C(&v209, &qword_10026D350, &qword_1001E6050);
      }

      v55 = sub_1001048B4();
      sub_100007544(&type metadata for AppEventPredicateError, v55);
      v57 = xmmword_1001ECB30;
LABEL_89:
      *v56 = v57;
      *(v56 + 16) = 0;
      goto LABEL_90;
    }

    v58 = v179 == 0x5472657461657267 && v196 == 0xEB000000006E6168;
    if (v58 || (sub_100003200(0x5472657461657267, 0xEB000000006E6168) & 1) != 0)
    {

      sub_1000052F8(v59, v60, v61, v62, v63, v64, v65, v66, v179, v196, v209);
      if (v210)
      {
        v74 = sub_100006D00(v67, v68, v69, &type metadata for String, v70, v71, v72, v73, v182, v199, v209);
        if (v74)
        {
          sub_100007A90(v74, v75, v76, v77, v78, v79, v80, v81, v183, v200, v209);

          if (v210)
          {
            if (sub_100006D00(v82, v83, v84, &type metadata for Double, v85, v86, v87, v88, v184, v201, v209))
            {
              v52 = 0;
              v51 = v185;
              v53 = 2;
              goto LABEL_32;
            }

            goto LABEL_56;
          }

          goto LABEL_55;
        }

        goto LABEL_69;
      }

      goto LABEL_68;
    }

    v89 = v179 == 0x6E6168547373656CLL && v196 == 0xE800000000000000;
    if (v89 || (sub_100003200(0x6E6168547373656CLL, 0xE800000000000000) & 1) != 0)
    {

      sub_1000052F8(v90, v91, v92, v93, v94, v95, v96, v97, v179, v196, v209);
      if (v210)
      {
        v105 = sub_100006D00(v98, v99, v100, &type metadata for String, v101, v102, v103, v104, v186, v202, v209);
        if (v105)
        {
          sub_100007A90(v105, v106, v107, v108, v109, v110, v111, v112, v187, v203, v209);

          if (v210)
          {
            if (sub_100006D00(v113, v114, v115, &type metadata for Double, v116, v117, v118, v119, v188, v204, v209))
            {
              v52 = 0;
              v51 = v189;
              v53 = 3;
              goto LABEL_32;
            }

LABEL_56:

            goto LABEL_57;
          }

LABEL_55:

          sub_100009F5C(&v209, &qword_10026D350, &qword_1001E6050);
LABEL_57:
          v120 = sub_1001048B4();
          sub_100007544(&type metadata for AppEventPredicateError, v120);
          v57 = xmmword_1001ECB20;
          goto LABEL_89;
        }

        goto LABEL_69;
      }

      goto LABEL_68;
    }

    v121 = v179 == 1701538156 && v196 == 0xE400000000000000;
    if (v121 || (sub_100003200(1701538156, 0xE400000000000000) & 1) != 0)
    {

      sub_1000052F8(v122, v123, v124, v125, v126, v127, v128, v129, v179, v196, v209);
      if (v210)
      {
        if (sub_100006D00(v130, v131, v132, &type metadata for String, v133, v134, v135, v136, v190, v205, v209))
        {
          v13 = v191;
          v12 = v206;
          sub_100052D94(a1, &v209);

          if (v210)
          {
            if (sub_100006D00(v137, v138, v139, &type metadata for String, v140, v141, v142, v143, v191, v206, v209))
            {
              v51 = v192;
              v52 = v207;
              v53 = 4;
              goto LABEL_32;
            }
          }

          else
          {

            sub_100009F5C(&v209, &qword_10026D350, &qword_1001E6050);
          }

          v175 = sub_1001048B4();
          sub_100007544(&type metadata for AppEventPredicateError, v175);
          v57 = xmmword_1001ECB00;
          goto LABEL_89;
        }

LABEL_69:

        goto LABEL_70;
      }

LABEL_68:

      sub_100009F5C(&v209, &qword_10026D350, &qword_1001E6050);
LABEL_70:
      v144 = sub_1001048B4();
      sub_100007544(&type metadata for AppEventPredicateError, v144);
      v57 = xmmword_1001ECB10;
      goto LABEL_89;
    }

LABEL_72:
    v145 = v13 == 29295 && v12 == 0xE200000000000000;
    if (v145 || (sub_100003200(29295, 0xE200000000000000) & 1) != 0)
    {

      sub_10000BFDC(v146, v147, v148, v149, v150, v151, v152, v153, v179, v196, v209);

      if (!v210)
      {
        goto LABEL_87;
      }

      v154 = sub_10007B9A4(&qword_10026D6D8, &qword_1001ECB70);
      if ((sub_100006D00(v154, v155, v156, v154, v157, v158, v159, v160, v193, v208, v209) & 1) == 0)
      {
        goto LABEL_88;
      }

      v12 = v194;
      v13 = *(v194 + 16);
      if (v13)
      {
        sub_100005900();
        v161 = 0;
        v162 = v209;
        while (v161 < *(v194 + 16))
        {

          sub_100103774(v163, v213);
          if (v2)
          {
            goto LABEL_91;
          }

          *&v209 = v162;
          v164 = v162[2];
          v165 = v164 + 1;
          if (v164 >= v162[3] >> 1)
          {
            v169 = sub_100006454();
            v171 = v170;
            sub_10009BA18(v169, v172, v173);
            v164 = v171;
            v162 = v209;
          }

          ++v161;
          v162[2] = v165;
          v166 = &v162[5 * v164];
          v167 = v213[0];
          v168 = v213[1];
          *(v166 + 64) = v214;
          *(v166 + 2) = v167;
          *(v166 + 3) = v168;
          if (v13 == v161)
          {

            goto LABEL_97;
          }
        }

        __break(1u);
        return;
      }

      v162 = _swiftEmptyArrayStorage;
LABEL_97:
      sub_100004AA0();
      swift_allocObject();
      sub_100023DA0();
      *(v177 + 16) = v162;
      v53 = 5;
LABEL_32:
      *a2 = v13;
      *(a2 + 8) = v12;
      *(a2 + 16) = v51;
      *(a2 + 24) = v52;
      *(a2 + 32) = v53;
      return;
    }

    v176 = sub_1001048B4();
    sub_100007544(&type metadata for AppEventPredicateError, v176);
    *v41 = v13;
    *(v41 + 8) = v12;
    v42 = 1;
LABEL_21:
    *(v41 + 16) = v42;
LABEL_90:
    swift_willThrow();
    return;
  }

  sub_10000BFDC(v15, v16, v17, v18, v19, v20, v21, v22, v179, v196, v209);

  if (!v210)
  {
LABEL_87:
    sub_100009F5C(&v209, &qword_10026D350, &qword_1001E6050);
    goto LABEL_88;
  }

  v23 = sub_10007B9A4(&qword_10026D6D8, &qword_1001ECB70);
  if ((sub_100006D00(v23, v24, v25, v23, v26, v27, v28, v29, v180, v197, v209) & 1) == 0)
  {
LABEL_88:
    v174 = sub_1001048B4();
    sub_100007544(&type metadata for AppEventPredicateError, v174);
    v57 = xmmword_1001ECAF0;
    goto LABEL_89;
  }

  v12 = v179;
  v13 = *(v179 + 16);
  if (!v13)
  {

    v31 = _swiftEmptyArrayStorage;
LABEL_31:
    sub_100004AA0();
    swift_allocObject();
    sub_100023DA0();
    v53 = 0;
    *(v54 + 16) = v31;
    goto LABEL_32;
  }

  sub_100005900();
  v30 = 0;
  v31 = v209;
  while (1)
  {
    if (v30 >= *(v179 + 16))
    {
      __break(1u);
      goto LABEL_72;
    }

    sub_100103774(v32, v211);
    if (v2)
    {
      break;
    }

    *&v209 = v31;
    v33 = v31[2];
    if (v33 >= v31[3] >> 1)
    {
      v37 = sub_100006454();
      sub_10009BA18(v37, v38, v39);
      v31 = v209;
    }

    ++v30;
    v31[2] = v33 + 1;
    v34 = &v31[5 * v33];
    v35 = v211[0];
    v36 = v211[1];
    *(v34 + 64) = v212;
    *(v34 + 2) = v35;
    *(v34 + 3) = v36;
    if (v13 == v30)
    {

      goto LABEL_31;
    }
  }

LABEL_91:
}

id sub_100103ED8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  v10 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v35[0] = 0;
  v12 = [v10 JSONObjectWithData:isa options:0 error:v35];

  if (!v12)
  {
    v24 = v35[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    v25 = qword_100287848;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1001E5F70;
    v36 = type metadata accessor for JSBacklog();
    v35[0] = a5;
    v27 = a5;
    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(v35);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v28._object = 0x80000001001F9D70;
    v28._countAndFlagsBits = 0xD000000000000034;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    swift_getErrorValue();
    v36 = v33;
    v29 = sub_100017E64(v35);
    (*(*(v33 - 8) + 16))(v29);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009F5C(v35, &qword_10026D350, &qword_1001E6050);
    v30._countAndFlagsBits = 41;
    v30._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
    LogInterpolation.init(stringInterpolation:)();
    v31 = static os_log_type_t.error.getter();
    v23 = v25;
    sub_1000036B0(v31, v26);

    swift_willThrow();
    return (v23 & 1);
  }

  v13 = v35[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    return (v23 & 1);
  }

  swift_beginAccess();

  sub_1000EF558();
  v14 = *(*(a2 + 16) + 16);
  sub_1000EF644(v14);
  v15 = *(a2 + 16);
  *(v15 + 16) = v14 + 1;
  *(v15 + 8 * v14 + 32) = v34;
  *(a2 + 16) = v15;
  swift_endAccess();
  v16 = JSValue.int.getter();
  if ((v17 & 1) != 0 || (v18 = v16, swift_beginAccess(), v19 = *(a2 + 16), *(v19 + 16) != v18))
  {

    v23 = 1;
    return (v23 & 1);
  }

  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1001E61B0;
  *(v20 + 56) = sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
  *(v20 + 32) = v19;

  result = sub_1001047E4(v20, a4);
  if (result)
  {
    v22 = result;

    v23 = JSValue.BOOL.getter();

    swift_beginAccess();
    *(a2 + 16) = _swiftEmptyArrayStorage;

    return (v23 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_100104398()
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001E61B0;
  v1 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 56) = sub_10007B9A4(&qword_10026D6E0, &unk_1001ECB78);
  *(v0 + 32) = v1;
  sub_10005C768(v0);
}

uint64_t sub_100104450(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  v4 = objc_allocWithZone(type metadata accessor for JSError());
  swift_errorRetain();
  v5 = sub_1000505C8(a2);
  v6 = sub_100051018();

  *(v3 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v3 + 32) = v6;
  sub_10005C768(v3);
}

id sub_100104610()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBacklog();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100104688()
{
  v1 = *(type metadata accessor for JSCallable() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100104450(v0 + v2, v3);
}

uint64_t sub_10010473C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_100104750(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_100104750(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 5:

      break;
    case 1:
    case 2:
    case 3:

      goto LABEL_4;
    case 4:

LABEL_4:

      break;
    default:
      return v6;
  }

  return v6;
}

id sub_1001047E4(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [a2 callWithArguments:isa];

  return v4;
}

uint64_t sub_100104854()
{
  type metadata accessor for JSCallable();

  return sub_100104398();
}

unint64_t sub_1001048B4()
{
  result = qword_10026D6D0;
  if (!qword_10026D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D6D0);
  }

  return result;
}

uint64_t sub_100104908(uint64_t a1)
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

uint64_t sub_100104924(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_100104964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1001049A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id sub_1001049D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007B9A4(&qword_10026D760, &qword_1001ECC90);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - v12;
  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v6);
  result = sub_100050BA8(a3);
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();

    Bag.subscript.getter();

    (*(v7 + 8))(v9, v6);
    Bag.Value.currentOrNil()();
    if (v19)
    {
      result = [objc_opt_self() valueWithUndefinedInContext:a1];
      if (result)
      {
LABEL_6:
        v17 = result;
        (*(v11 + 8))(v13, v10);
        return v17;
      }

      __break(1u);
    }

    result = [objc_opt_self() valueWithDouble:a1 inContext:v18[2]];
    if (result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100104CA8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007B9A4(&qword_10026D758, &qword_1001ECC88);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - v12;
  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v6);
  result = sub_100050BA8(a3);
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();

    Bag.subscript.getter();

    (*(v7 + 8))(v9, v6);
    Bag.Value.currentOrNil()();
    if (v19 == 1)
    {
      result = [objc_opt_self() valueWithUndefinedInContext:a1];
      if (result)
      {
LABEL_6:
        v17 = result;
        (*(v11 + 8))(v13, v10);
        return v17;
      }

      __break(1u);
    }

    result = [objc_opt_self() valueWithDouble:a1 inContext:v18[2]];
    if (result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100104F88(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007B9A4(&qword_10026D750, &qword_1001ECC80);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v6);
  result = sub_100050BA8(a3);
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();

    Bag.subscript.getter();

    (*(v7 + 8))(v9, v6);
    Bag.Value.currentOrNil()();
    v17 = v20;
    if (v20 == 2)
    {
      result = [objc_opt_self() valueWithUndefinedInContext:a1];
      if (result)
      {
LABEL_6:
        v18 = result;
        (*(v11 + 8))(v13, v10);
        return v18;
      }

      __break(1u);
    }

    result = [objc_opt_self() valueWithBool:v17 & 1 inContext:a1];
    if (result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100105254(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007B9A4(&qword_10026D748, &qword_1001ECC78);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v6);
  result = sub_100050BA8(a3);
  if (!v15)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = String._bridgeToObjectiveC()();

  Bag.subscript.getter();

  (*(v7 + 8))(v9, v6);
  Bag.Value.currentOrNil()();
  v17 = v20[0];
  if (v20[0])
  {
    sub_100002BC0(0, &qword_10026D738, JSValue_ptr);
    v20[3] = sub_10007B9A4(&qword_10026A520, &qword_1001E83B0);
    v20[0] = v17;
    v18 = a1;

    result = sub_100055480(v20, a1);
    if (result)
    {
      v19 = result;
      (*(v11 + 8))(v13, v10);

      return v19;
    }

    goto LABEL_9;
  }

  result = [objc_opt_self() valueWithUndefinedInContext:a1];
  if (result)
  {
    v19 = result;
    (*(v11 + 8))(v13, v10);
    return v19;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_100105570(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007B9A4(&qword_10026D740, &qword_1001ECC70);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v6);
  result = sub_100050BA8(a3);
  if (!v15)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = String._bridgeToObjectiveC()();

  Bag.subscript.getter();

  (*(v7 + 8))(v9, v6);
  Bag.Value.currentOrNil()();
  v17 = v20[0];
  if (v20[0])
  {
    sub_100002BC0(0, &qword_10026D738, JSValue_ptr);
    v20[3] = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    v20[0] = v17;
    v18 = a1;

    result = sub_100055480(v20, a1);
    if (result)
    {
      v19 = result;
      (*(v11 + 8))(v13, v10);

      return v19;
    }

    goto LABEL_9;
  }

  result = [objc_opt_self() valueWithUndefinedInContext:a1];
  if (result)
  {
    v19 = result;
    (*(v11 + 8))(v13, v10);
    return v19;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_100105818(void *a1, uint64_t a2, void *a3)
{
  v32 = a1;
  v5 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v30 = type metadata accessor for URL();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Bag();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007B9A4(&qword_10026D730, &qword_1001ECC68);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  (*(v10 + 16))(v12, a2 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v9);
  result = sub_100050BA8(a3);
  if (v18)
  {
    v19 = String._bridgeToObjectiveC()();

    Bag.subscript.getter();

    (*(v10 + 8))(v12, v9);
    Bag.Value.currentOrNil()();
    v20 = v30;
    if (sub_100009F34(v7, 1, v30) == 1)
    {
      sub_10008E750(v7);
      v21 = [objc_opt_self() valueWithUndefinedInContext:v32];
      if (v21)
      {
LABEL_7:
        (*(v14 + 8))(v16, v13);
        return v21;
      }

      __break(1u);
    }

    v23 = v28;
    v22 = v29;
    (*(v29 + 32))(v28, v7, v20);
    sub_100002BC0(0, &qword_10026D738, JSValue_ptr);
    v24 = URL.absoluteString.getter();
    v31[3] = &type metadata for String;
    v31[0] = v24;
    v31[1] = v25;
    v26 = v32;
    v27 = v32;
    result = sub_100055480(v31, v26);
    if (result)
    {
      v21 = result;
      (*(v22 + 8))(v23, v20);
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100105C6C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100105D18(uint64_t a1)
{
  result = type metadata accessor for Bag();
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

uint64_t sub_100105F50(SEL *a1)
{
  result = sub_100106334(*(v1 + OBJC_IVAR____TtC14amsengagementd8JSClient_clientInfo), a1);
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100106000()
{
  if ([objc_opt_self() deviceIsAudioAccessory])
  {
    v0 = String._bridgeToObjectiveC()();
    v1 = kCFPreferencesAnyApplication;
    v2 = kCFPreferencesCurrentUser;
    v3 = kCFPreferencesAnyHost;
    v4 = CFPreferencesCopyValue(v0, kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

    if (v4)
    {
      if (sub_100006D20(v5, v6, v7, &type metadata for String, v8))
      {
        v9 = v20;
        if (v20)
        {
          v10 = v19;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v1 = kCFPreferencesAnyApplication;
    v2 = kCFPreferencesCurrentUser;
    v3 = kCFPreferencesAnyHost;
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = CFPreferencesCopyValue(v11, v1, v2, v3);

  if (v12)
  {
    v17 = sub_100006D20(v13, v14, v15, &type metadata for String, v16);
    v10 = v19;
    v9 = v20;
    if (!v17)
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

LABEL_11:
  if (v9)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

id sub_100106194(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_100106204()
{
  v1 = [objc_opt_self() userAgentForProcessInfo:*(v0 + OBJC_IVAR____TtC14amsengagementd8JSClient_clientInfo)];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_1001062B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSClient();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100106334(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

unint64_t sub_1001063D4()
{
  v7 = 0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v3 = [v1 typeOfDemoDevice:&v6];

    v7 = v6;
    v4 = v6;
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v2 = v4;
  }

  else
  {
    v3 = 0;
  }

  sub_1001064AC(&v7, v0);

  return v3;
}

uint64_t sub_1001064AC(void **a1, void *a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  result = __chkstk_darwin(v4 - 8);
  v6 = *a1;
  if (*a1)
  {
    v7 = qword_1002686E8;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001E5F70;
    v18 = type metadata accessor for JSClientDemo();
    v17[0] = a2;
    v10 = a2;
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v17);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._object = 0x80000001001FA190;
    v13._countAndFlagsBits = 0xD000000000000025;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
    v18 = sub_100106F74();
    v17[0] = v8;
    v14 = v8;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v17);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    LogInterpolation.init(stringInterpolation:)();
    v16 = static os_log_type_t.error.getter();
    sub_1000036B0(v16, v9);
  }

  return result;
}

uint64_t sub_1001067D4()
{
  v8 = 0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = v1;
  if (!v1)
  {
    goto LABEL_5;
  }

  v7 = 0;
  v3 = [v1 getDeviceOptions:&v7];

  v4 = v7;
  v8 = v7;
  if (!v3)
  {
    v2 = v7;
LABEL_5:
    v5 = Dictionary.init(dictionaryLiteral:)();
    goto LABEL_6;
  }

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v4;

LABEL_6:
  sub_10010690C(&v8, v0);

  return v5;
}

uint64_t sub_10010690C(void **a1, void *a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  result = __chkstk_darwin(v4 - 8);
  v6 = *a1;
  if (*a1)
  {
    v7 = qword_1002686E8;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001E5F70;
    v18 = type metadata accessor for JSClientDemo();
    v17[0] = a2;
    v10 = a2;
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v17);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._object = 0x80000001001FA160;
    v13._countAndFlagsBits = 0xD000000000000029;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
    v18 = sub_100106F74();
    v17[0] = v8;
    v14 = v8;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v17);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    LogInterpolation.init(stringInterpolation:)();
    v16 = static os_log_type_t.error.getter();
    sub_1000036B0(v16, v9);
  }

  return result;
}

void *sub_100106BD8()
{
  v8 = 0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = v1;
  if (v1)
  {
    v7 = 0;
    v3 = [v1 getStoreID:&v7];

    v4 = v7;
    v8 = v7;
    if (v3)
    {
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
    }

    else
    {
      v5 = v7;
      v2 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  sub_100106CEC(&v8, v0);

  return v2;
}

uint64_t sub_100106CEC(void **a1, void *a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  result = __chkstk_darwin(v4 - 8);
  v6 = *a1;
  if (*a1)
  {
    v7 = qword_1002686E8;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001E5F70;
    v18 = type metadata accessor for JSClientDemo();
    v17[0] = a2;
    v10 = a2;
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v17);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._object = 0x80000001001FA130;
    v13._countAndFlagsBits = 0xD000000000000022;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
    v18 = sub_100106F74();
    v17[0] = v8;
    v14 = v8;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v17);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    LogInterpolation.init(stringInterpolation:)();
    v16 = static os_log_type_t.error.getter();
    sub_1000036B0(v16, v9);
  }

  return result;
}

id sub_100106F40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSClientDemo();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100106F74()
{
  result = qword_100271EB0;
  if (!qword_100271EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100271EB0);
  }

  return result;
}

uint64_t sub_100106FB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for JSContent.Request(0);
  v6 = sub_100003D10(v5);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v9 = v8 - v7;
  sub_10001CD7C();
  v34[0] = v10;
  v34[1] = 0xE800000000000000;
  sub_100004900();
  v11 = sub_100005924();
  sub_10000E0C8(v11, a1, v12);
  sub_10000E1E8(v35);
  if (!v37)
  {

    sub_10000A00C(v36, &qword_10026D350, &qword_1001E6050);
LABEL_11:
    v23 = sub_10010B854();
    sub_100007544(&type metadata for JSContent.CacheRequest.CacheRequestError, v23);
    *v24 = 0;
    return swift_willThrow();
  }

  sub_100007ABC();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  v14 = v34[0];
  v13 = v34[1];
  sub_1000071E8();
  v34[0] = v15;
  v34[1] = 0xE700000000000000;
  sub_100004900();
  v16 = sub_100005924();
  sub_10000E0C8(v16, a1, v17);
  sub_10000E1E8(v35);
  if (!v37)
  {

    sub_10000A00C(v36, &qword_10026D350, &qword_1001E6050);
LABEL_14:
    v25 = sub_10010B854();
    sub_100007544(&type metadata for JSContent.CacheRequest.CacheRequestError, v25);
    v27 = 1;
LABEL_18:
    *v26 = v27;
    return swift_willThrow();
  }

  sub_100007ABC();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  v19 = v34[0];
  v18 = v34[1];
  strcpy(v34, "contentRequest");
  HIBYTE(v34[1]) = -18;
  sub_100004900();
  v20 = sub_100005924();
  sub_10000E0C8(v20, a1, v21);
  sub_10000E1E8(v35);
  if (!v37)
  {

    sub_10000A00C(v36, &qword_10026D350, &qword_1001E6050);
LABEL_17:
    v28 = sub_10010B854();
    sub_100007544(&type metadata for JSContent.CacheRequest.CacheRequestError, v28);
    v27 = 2;
    goto LABEL_18;
  }

  v38 = v19;
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  sub_100007ABC();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  sub_1001073E0(v34[0], v9);
  if (v2)
  {
  }

  strcpy(v34, "options");
  v34[1] = 0xE700000000000000;
  sub_100004900();
  v29 = sub_100005924();
  sub_10000E0C8(v29, a1, v30);

  sub_10000E1E8(v35);
  if (v37)
  {
    sub_100007ABC();
    if (swift_dynamicCast())
    {
      goto LABEL_25;
    }
  }

  else
  {
    sub_10000A00C(v36, &qword_10026D350, &qword_1001E6050);
  }

  Dictionary.init(dictionaryLiteral:)();
LABEL_25:
  v31 = sub_100107984();
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v38;
  a2[3] = v18;
  v32 = type metadata accessor for JSContent.CacheRequest(0);
  result = sub_10010B7F8(v9, a2 + *(v32 + 24));
  v33 = a2 + *(v32 + 28);
  *v33 = v31 & 1;
  v33[1] = BYTE1(v31) & 1;
  v33[2] = (v31 & 0xFFFF0000) != 0;
  return result;
}

uint64_t sub_1001073E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  v7 = v47 - v6;
  v8 = type metadata accessor for URL();
  sub_100002CC4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100002DEC();
  v14 = v13 - v12;
  v49._countAndFlagsBits = 7107189;
  v49._object = 0xE300000000000000;
  sub_100004900();
  v15 = sub_100005924();
  sub_10000E0C8(v15, a1, v16);
  sub_10000E1E8(&v50);
  if (!v53)
  {

    v17 = &qword_10026D350;
    v18 = &qword_1001E6050;
    v19 = &v52;
    goto LABEL_6;
  }

  sub_100023DB4();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_8;
  }

  URL.init(string:)();

  if (sub_100009F34(v7, 1, v8) == 1)
  {

    v17 = &unk_10026FEE0;
    v18 = &unk_1001E67C0;
    v19 = v7;
LABEL_6:
    sub_10000A00C(v19, v17, v18);
LABEL_8:
    v20 = sub_10010B784();
    sub_100007544(&type metadata for JSContent.Request.RequestError, v20);
    *v21 = 0;
    return swift_willThrow();
  }

  (*(v10 + 32))(v14, v7, v8);
  v49._countAndFlagsBits = 0x646F6874656DLL;
  v49._object = 0xE600000000000000;
  sub_100004900();
  v23 = sub_100005924();
  sub_10000E0C8(v23, a1, v24);
  sub_10000E1E8(&v50);
  if (v53)
  {
    sub_100023DB4();
    if (swift_dynamicCast())
    {
      v25 = v49;
      goto LABEL_14;
    }
  }

  else
  {
    sub_10000A00C(&v52, &qword_10026D350, &qword_1001E6050);
  }

  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
LABEL_14:
  v26 = sub_100107CEC(v25);
  if (v26 == 8)
  {

    v27 = sub_10010B784();
    sub_100007544(&type metadata for JSContent.Request.RequestError, v27);
    *v28 = 1;
    swift_willThrow();
    return (*(v10 + 8))(v14, v8);
  }

  v54 = v26;
  v49._countAndFlagsBits = 0x73726564616568;
  v49._object = 0xE700000000000000;
  sub_100004900();
  v29 = sub_100005924();
  sub_10000E0C8(v29, a1, v30);
  sub_10000E1E8(&v50);
  if (!v53)
  {
    sub_10000A00C(&v52, &qword_10026D350, &qword_1001E6050);
    goto LABEL_20;
  }

  sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  sub_100023DB4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    countAndFlagsBits = Dictionary.init(dictionaryLiteral:)();
    goto LABEL_21;
  }

  countAndFlagsBits = v49._countAndFlagsBits;
LABEL_21:
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47[0] = v32;
  v47[1] = v31;
  v33 = objc_opt_self();
  v34 = [objc_opt_self() currentProcess];
  v35 = [v33 userAgentForProcessInfo:v34];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v51 = &type metadata for String;
  *&v50 = v36;
  *(&v50 + 1) = v38;
  sub_100002C4C(&v50, &v52);
  v39 = countAndFlagsBits;
  swift_isUniquelyReferenced_nonNull_native();
  v49._countAndFlagsBits = v39;
  sub_10000DFC4();

  v40 = v49._countAndFlagsBits;
  (*(v10 + 16))(a2, v14, v8);
  v41 = type metadata accessor for JSContent.Request(0);
  *(a2 + v41[6]) = v54;
  *(a2 + v41[5]) = v40;
  *&v52 = 2036625250;
  *(&v52 + 1) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  v42 = sub_100005924();
  sub_10000E0C8(v42, a1, v43);

  sub_10000E1E8(&v50);
  (*(v10 + 8))(v14, v8);
  if (v53)
  {
    sub_100023DB4();
    result = swift_dynamicCast();
    v44 = v49._countAndFlagsBits;
    object = v49._object;
    if (!result)
    {
      v44 = 0;
      object = 0;
    }
  }

  else
  {
    result = sub_10000A00C(&v52, &qword_10026D350, &qword_1001E6050);
    v44 = 0;
    object = 0;
  }

  v46 = (a2 + v41[7]);
  *v46 = v44;
  v46[1] = object;
  return result;
}

uint64_t sub_100107984()
{
  *&v59 = 0x756F656D69546E6FLL;
  *(&v59 + 1) = 0xE900000000000074;
  v0 = AnyHashable.init<A>(_:)();
  sub_100011A40(v0, v1, v2, v3, v4, v5, v6, v7, v49, v54, v55, v56, v57, v58, v59);
  v8 = sub_10000E1E8(&v54);
  if (v60)
  {
    if (sub_10000A3FC(v8, v9, v10, &type metadata for Bool, v11, v12, v13, v14, v50, SWORD2(v50), SBYTE6(v50), SHIBYTE(v50), v54, v55, v56, v57, v58, v59))
    {
      v15 = HIBYTE(v50);
      goto LABEL_6;
    }
  }

  else
  {
    sub_10000A00C(&v59, &qword_10026D350, &qword_1001E6050);
  }

  v15 = 0;
LABEL_6:
  *&v59 = 0xD000000000000011;
  *(&v59 + 1) = 0x80000001001FA3D0;
  v16 = AnyHashable.init<A>(_:)();
  sub_100011A40(v16, v17, v18, v19, v20, v21, v22, v23, v50, v54, v55, v56, v57, v58, v59);
  v24 = sub_10000E1E8(&v54);
  if (!v60)
  {
    sub_10000A00C(&v59, &qword_10026D350, &qword_1001E6050);
    goto LABEL_12;
  }

  if (!sub_10000A3FC(v24, v25, v26, &type metadata for Bool, v27, v28, v29, v30, v51, SWORD2(v51), SBYTE6(v51), SHIBYTE(v51), v54, v55, v56, v57, v58, v59))
  {
LABEL_12:
    v31 = 0;
    goto LABEL_13;
  }

  if (HIBYTE(v51))
  {
    v31 = 256;
  }

  else
  {
    v31 = 0;
  }

LABEL_13:
  *&v59 = 0xD00000000000001ALL;
  *(&v59 + 1) = 0x80000001001FA3F0;
  v32 = AnyHashable.init<A>(_:)();
  sub_100011A40(v32, v33, v34, v35, v36, v37, v38, v39, v51, v54, v55, v56, v57, v58, v59);

  v40 = sub_10000E1E8(&v54);
  if (!v60)
  {
    sub_10000A00C(&v59, &qword_10026D350, &qword_1001E6050);
    goto LABEL_19;
  }

  if (!sub_10000A3FC(v40, v41, v42, &type metadata for Bool, v43, v44, v45, v46, v52, SWORD2(v52), SBYTE6(v52), SHIBYTE(v52), v54, v55, v56, v57, v58, v59))
  {
LABEL_19:
    v47 = 0;
    return v31 | v15 | v47;
  }

  if (v53)
  {
    v47 = 0x10000;
  }

  else
  {
    v47 = 0;
  }

  return v31 | v15 | v47;
}

unint64_t sub_100107B68(uint64_t a1)
{
  strcpy(&v13, "requestingApp");
  HIWORD(v13._object) = -4864;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v14, a1, v15);
  v2 = sub_10000E1E8(v14);
  if (v16)
  {
    if (sub_10000A87C(v2, v3, v4, &type metadata for String, v5))
    {
      v6 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10000A00C(v15, &qword_10026D350, &qword_1001E6050);
  }

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
LABEL_6:
  v7 = sub_1000116D0(v6);
  strcpy(v15, "notificationId");
  v15[15] = -18;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v14, a1, v15);

  v8 = sub_10000E1E8(v14);
  if (v16)
  {
    sub_10000A87C(v8, v9, v10, &type metadata for String, v11);
  }

  else
  {
    sub_10000A00C(v15, &qword_10026D350, &qword_1001E6050);
  }

  return v7;
}

unint64_t sub_100107CEC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244F48, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100107D38(char a1)
{
  result = 0x5443454E4E4F43;
  switch(a1)
  {
    case 1:
      result = 0x4554454C4544;
      break;
    case 2:
      v3 = 17735;
      goto LABEL_9;
    case 3:
      result = 1145128264;
      break;
    case 4:
      result = 0x4843544150;
      break;
    case 5:
      result = 1414745936;
      break;
    case 6:
      v3 = 21840;
LABEL_9:
      result = v3 | 0x540000u;
      break;
    case 7:
      result = 0x455441445055;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100107E10@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100107CEC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100107E40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100107D38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100107E6C(unint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for JSContent.CacheRequest(0);
  v8 = sub_100002CFC(v7);
  v33 = v9;
  __chkstk_darwin(v8);
  sub_100002DEC();
  v12 = (v11 - v10);
  if (*(*(v3 + OBJC_IVAR____TtC14amsengagementd9JSContent_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  if (qword_1002686E8 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v13);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1001E5F60;
    v37 = type metadata accessor for JSContent();
    *&v36 = v3;
    v3;
    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v36);
    LogInterpolation.init(stringLiteral:)();
    v37 = &type metadata for String;
    *&v36 = a1;
    *(&v36 + 1) = a2;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v36, &qword_10026D350, &qword_1001E6050);
    v15 = static os_log_type_t.default.getter();
    sub_1000036B0(v15, v14);

    result = sub_100146C24(a3);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v17 = *(result + 16);
    v18 = _swiftEmptyArrayStorage;
    if (v17)
    {
      v19 = result + 32;
      do
      {
        sub_100011BAC(v19, &v36);
        sub_100002C4C(&v36, &v34);
        sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
        if (swift_dynamicCast())
        {
          v20 = v35;
          if (v35)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000D4DDC(0, v18[2] + 1, 1, v18);
              v18 = v23;
            }

            v22 = v18[2];
            v21 = v18[3];
            if (v22 >= v21 >> 1)
            {
              sub_1000D4DDC(v21 > 1, v22 + 1, 1, v18);
              v18 = v24;
            }

            v18[2] = v22 + 1;
            v18[v22 + 4] = v20;
          }
        }

        v19 += 32;
        --v17;
      }

      while (v17);
    }

    a2 = v18[2];
    if (!a2)
    {
      break;
    }

    *&v36 = _swiftEmptyArrayStorage;
    sub_10009BA38(0, a2, 0);
    a1 = 0;
    a3 = v36;
    v3 = v33;
    while (a1 < v18[2])
    {

      sub_100106FB8(v25, v12);
      *&v36 = a3;
      v27 = a3[2];
      v26 = a3[3];
      if (v27 >= v26 >> 1)
      {
        sub_10009BA38(v26 > 1, v27 + 1, 1);
        v3 = v33;
        a3 = v36;
      }

      ++a1;
      a3[2] = v27 + 1;
      sub_100004864();
      sub_10010B7F8(v12, a3 + v28 + v3[9] * v27);
      if (a2 == a1)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    sub_100006D40();
    swift_once();
  }

  a3 = _swiftEmptyArrayStorage;
LABEL_23:
  v29 = sub_10000AF50();
  sub_10000755C(v29);
  sub_10001CBE4();

  sub_100002C00(&v36);
  LogInterpolation.init(stringLiteral:)();
  v37 = sub_10007B9A4(&qword_10026D808, &qword_1001ECD00);
  *&v36 = a3;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v36, &qword_10026D350, &qword_1001E6050);
  v30 = static os_log_type_t.default.getter();
  sub_1000036B0(v30, v29);

  v31 = sub_1000181EC();
  *(sub_100004BC8(v31) + 16) = v29;
  sub_10005DFA4();
  sub_100107B68(v32);
  sub_1000B3264();
}

uint64_t sub_1001085E4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC14amsengagementd9JSContent_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  v2 = type metadata accessor for ContentManager();
  *(sub_100004BC8(v2) + 16) = v1;
  v3 = sub_100003B80();
  v5 = sub_1000B7FA8(v3, v4);
  v6 = sub_1000B253C(v5);

  return v6;
}

uint64_t sub_10010871C()
{
  v1 = type metadata accessor for ContentInfo(0);
  v2 = sub_100002CFC(v1);
  v4 = v3;
  __chkstk_darwin(v2);
  sub_100002DEC();
  v7 = v6 - v5;
  v8 = *(*(v0 + OBJC_IVAR____TtC14amsengagementd9JSContent_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  v9 = type metadata accessor for ContentManager();
  *(sub_100004BC8(v9) + 16) = v8;
  v10 = sub_100003B80();
  v12 = sub_1000B7FA8(v10, v11);
  v13 = *(v12 + 16);
  if (v13)
  {
    sub_100004864();
    v15 = v12 + v14;
    v16 = *(v4 + 72);
    do
    {
      sub_1000B2AD0(v15, v7);
      sub_100003B80();
      sub_1000B84AC();
      sub_100005320();
      sub_10010B72C(v7, v17);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  else
  {
  }
}

uint64_t sub_1001088A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = type metadata accessor for JSContent.Request(0);
  v13 = sub_100003D10(v12);
  __chkstk_darwin(v13);
  sub_100002DEC();
  v32 = v15 - v14;
  v30 = *&v7[OBJC_IVAR____TtC14amsengagementd9JSContent_runtime];
  if (*(v30 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
    v16 = *(v30 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  }

  else
  {
    v16 = 0;
  }

  v34 = a1;
  v33 = a4;
  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v17 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v17);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001E61C0;
  v29 = type metadata accessor for JSContent();
  v37 = v29;
  v35 = v7;
  v28 = v7;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v35);
  LogInterpolation.init(stringLiteral:)();
  v37 = &type metadata for String;
  v35 = v34;
  v36 = a2;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v35, &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v37 = &type metadata for String;
  v35 = a3;
  v36 = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v35, &qword_10026D350, &qword_1001E6050);
  v19 = static os_log_type_t.default.getter();
  sub_1000036B0(v19, v18);

  v20 = *(v30 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  v21 = type metadata accessor for ContentManager();
  *(sub_100004BC8(v21) + 16) = v20;
  sub_10005DFA4();
  v22 = v32;
  sub_1001073E0(v23, v32);

  sub_10005DFA4();
  v24 = sub_100107984();
  sub_1000B48D0(0, 0, v34, a2, a3, v33, v32, v24 & 0x101 | (((v24 & 0xFFFF0000) != 0) << 16), 0, 0, 1, v26, a2, a6, v28, v16, v29, a3, v30, a5, v32, v33, v34);

  return sub_10010B72C(v22, type metadata accessor for JSContent.Request);
}

uint64_t sub_100108E64(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  type metadata accessor for ContentInfo(0);
  sub_100002CC4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100002DEC();
  v12 = v11 - v10;
  v13 = *&v4[OBJC_IVAR____TtC14amsengagementd9JSContent_runtime];
  if (*(v13 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  v14 = *(v13 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  v15 = type metadata accessor for ContentManager();
  *(sub_100004BC8(v15) + 16) = v14;
  v16 = *(sub_1000B7DD0(a1, a2, a3, a4, 2) + 16);
  if (v16)
  {
    sub_100004864();
    v19 = v17 + v18;
    v20 = *(v8 + 72);
    do
    {
      sub_1000B2AD0(v19, v12);
      if (qword_1002686E8 != -1)
      {
        sub_100006D40();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v21 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v21);
      sub_1000056F8();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1001E5F60;
      v39 = type metadata accessor for JSContent();
      v36 = v4;
      v23 = v4;
      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(&v36);
      LogInterpolation.init(stringLiteral:)();
      v39 = &type metadata for String;
      v36 = a1;
      v37 = a2;

      static LogInterpolation.safe(_:)();
      sub_10000A00C(&v36, &qword_10026D350, &qword_1001E6050);
      v24 = static os_log_type_t.default.getter();
      sub_1000036B0(v24, v22);

      Date.addTimeInterval(_:)(2592000.0);
      sub_1000B8A2C(v12);
      sub_100005320();
      sub_10010B72C(v12, v25);
      v19 += v20;
      --v16;
    }

    while (v16);
  }

  else
  {

    if (qword_1002686E8 != -1)
    {
      sub_100006D40();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v26 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v26);
    sub_1000056F8();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1001E6580;
    v39 = type metadata accessor for JSContent();
    v36 = v4;
    v28 = v4;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v36);
    LogInterpolation.init(stringLiteral:)();
    v39 = &type metadata for String;
    v36 = a1;
    v37 = a2;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v36, &qword_10026D350, &qword_1001E6050);
    if (a4)
    {
      v29 = &type metadata for String;
      v30 = a4;
      v31 = a3;
    }

    else
    {
      v31 = 0;
      v30 = 0;
      v29 = 0;
      v38 = 0;
    }

    v36 = v31;
    v37 = v30;
    v39 = v29;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v36, &qword_10026D350, &qword_1001E6050);
    v32 = static os_log_type_t.default.getter();
    sub_1000036B0(v32, v27);
  }
}

uint64_t sub_1001093EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = sub_100003D10(v7);
  __chkstk_darwin(v8);
  sub_100002DEC();
  v79 = type metadata accessor for Date();
  sub_100002CC4();
  v82 = v9;
  __chkstk_darwin(v10);
  sub_100002DEC();
  v78 = v12 - v11;
  v77 = type metadata accessor for ContentInfo(0);
  sub_100002CC4();
  __chkstk_darwin(v13);
  sub_100002DEC();
  v80 = (v15 - v14);
  v75 = v3;
  v16 = *(v3 + OBJC_IVAR____TtC14amsengagementd9JSContent_runtime);
  if (*(v16 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  sub_100006750();
  sub_100052D94(a3, &v86);
  if (v88)
  {
    v17 = swift_dynamicCast();
    if (v17)
    {
      v18 = v84;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v85;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    sub_10000A00C(&v86, &qword_10026D350, &qword_1001E6050);
    v18 = 0;
    v19 = 0;
  }

  v20 = &type metadata for String;
  v21 = *(v16 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  v22 = type metadata accessor for ContentManager();
  *(sub_100004BC8(v22) + 16) = v21;
  v23 = sub_1000B7DD0(a1, a2, v18, v19, 4);
  v24 = *(v23 + 16);
  if (v24)
  {

    sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    v25 = Dictionary.init(dictionaryLiteral:)();
    v26 = v80;
    sub_100004864();
    v28 = v23 + v27;
    v74 = *(v29 + 72);
    v76 = (v82 + 8);
    while (1)
    {
      v81 = v28;
      v83 = v24;
      sub_1000B2AD0(v28, v26);
      sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001E7880;
      sub_10001CD7C();
      *(v31 + 32) = v32;
      *(v31 + 40) = 0xE800000000000000;
      v33 = v26[3];
      *(inited + 48) = v26[2];
      *(inited + 56) = v33;
      *(inited + 72) = v20;
      *(inited + 80) = 0x64657461657263;
      *(inited + 88) = 0xE700000000000000;

      Date.timeIntervalSince1970.getter();
      *(inited + 96) = v34 * 1000.0;
      *(inited + 120) = &type metadata for Double;
      *(inited + 128) = 0x73657269707865;
      *(inited + 136) = 0xE700000000000000;
      Date.timeIntervalSince1970.getter();
      *(inited + 144) = v35 * 1000.0;
      *(inited + 168) = &type metadata for Double;
      *(inited + 176) = 0x64657269707865;
      *(inited + 184) = 0xE700000000000000;
      Date.init()();
      v36 = static Date.< infix(_:_:)();
      (*v76)(v78, v79);
      *(inited + 192) = v36 & 1;
      *(inited + 216) = &type metadata for Bool;
      *(inited + 224) = 0x6574617473;
      *(inited + 232) = 0xE500000000000000;
      *(inited + 240) = *(v26 + v77[10]);
      *(inited + 264) = &type metadata for Int;
      *(inited + 272) = 1752457584;
      *(inited + 280) = 0xE400000000000000;
      v37 = (v26 + v77[9]);
      v39 = *v37;
      v38 = v37[1];
      sub_10007B9A4(&unk_10026CD20, &unk_1001E7CC0);
      *(inited + 288) = v39;
      *(inited + 296) = v38;
      sub_1000071E8();
      *(inited + 312) = v40;
      *(inited + 320) = v41;
      *(inited + 328) = 0xE700000000000000;
      v42 = (v26 + v77[12]);
      v43 = *v42;
      v19 = v42[1];
      *(inited + 336) = *v42;
      *(inited + 344) = v19;
      *(inited + 360) = v20;
      *(inited + 368) = 0x79654B6863746162;
      *(inited + 376) = 0xE900000000000073;
      v44 = *v26;
      *(inited + 408) = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
      *(inited + 384) = v44;

      v45 = v20;
      v46 = Dictionary.init(dictionaryLiteral:)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86 = v25;
      v48 = sub_100012A94();
      v50 = v25[2];
      v51 = (v49 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v53 = v48;
      v54 = v49;
      sub_10007B9A4(&qword_10026B2D8, &unk_1001EEA60);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v52))
      {
        v55 = sub_100012A94();
        v26 = v80;
        if ((v54 & 1) != (v56 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v53 = v55;
      }

      else
      {
        v26 = v80;
      }

      v25 = v86;
      if (v54)
      {
        *(*(v86 + 56) + 8 * v53) = v46;
      }

      else
      {
        *(v86 + 8 * (v53 >> 6) + 64) |= 1 << v53;
        v57 = (v25[6] + 16 * v53);
        *v57 = v43;
        v57[1] = v19;
        *(v25[7] + 8 * v53) = v46;
        v58 = v25[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_31;
        }

        v25[2] = v60;
      }

      sub_100005320();
      sub_10010B72C(v26, v61);
      v28 = v81 + v74;
      v24 = v83 - 1;
      v20 = v45;
      if (v83 == 1)
      {

        sub_1000E375C();
        v63 = v62;

        return v63;
      }
    }
  }

  v80 = v18;
  v45 = v75;
  v43 = a1;
  v83 = a2;

  if (qword_1002686E8 != -1)
  {
LABEL_32:
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v64 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v64);
  sub_1000056F8();
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1001E5F70;
  v88 = type metadata accessor for JSContent();
  *&v86 = v45;
  v66 = v45;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v86);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v67._object = 0x80000001001FA310;
  v67._countAndFlagsBits = 0xD000000000000025;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v67);
  v88 = &type metadata for String;
  *&v86 = v43;
  *(&v86 + 1) = v83;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(&v86, &qword_10026D350, &qword_1001E6050);
  v68._countAndFlagsBits = 0x6F6973726576202CLL;
  v68._object = 0xEB00000000203A6ELL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v68);
  if (v19)
  {
    v69 = &type metadata for String;
    v70 = v80;
  }

  else
  {
    v70 = 0;
    v69 = 0;
    v87 = 0;
  }

  *&v86 = v70;
  *(&v86 + 1) = v19;
  v88 = v69;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(&v86, &qword_10026D350, &qword_1001E6050);
  v71._countAndFlagsBits = 41;
  v71._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v71);
  LogInterpolation.init(stringInterpolation:)();
  v72 = static os_log_type_t.default.getter();
  sub_1000036B0(v72, v65);

  return 0;
}

uint64_t sub_100109D54(uint64_t a1)
{
  v3 = sub_1000181EC();
  *(sub_100004BC8(v3) + 16) = v1;
  v4 = sub_1000B822C(a1);
  v5 = sub_1000B253C(v4);

  return v5;
}

uint64_t sub_100109E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(&v100 + 1) = a2;
  v101 = a3;
  *&v100 = a1;
  v98 = a4;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v78[1] = v8 - v7;
  v78[4] = type metadata accessor for URL();
  sub_100002CC4();
  v78[3] = v9;
  __chkstk_darwin(v10);
  sub_100002DEC();
  v13 = v12 - v11;
  v81 = type metadata accessor for Date();
  sub_100002CC4();
  v80 = v14;
  __chkstk_darwin(v15);
  sub_100002DEC();
  v79 = v17 - v16;
  v18 = sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  v19 = sub_100003D10(v18);
  __chkstk_darwin(v19);
  v95 = v78 - v20;
  v96 = type metadata accessor for ContentInfo(0);
  sub_100002DDC();
  __chkstk_darwin(v21);
  sub_100002DEC();
  v82 = v23 - v22;
  v24 = *&v4[OBJC_IVAR____TtC14amsengagementd9JSContent_runtime];
  v25 = *(v24 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
  if (v25)
  {
    v26 = *(v24 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_1000181EC();
  v28 = sub_100004BC8(v27);
  *(v28 + 16) = v24;
  sub_100006750();
  sub_100052D94(v101, &v105);
  if (v106)
  {
    v29 = swift_dynamicCast();
    v30 = v102;
    if (!v29)
    {
      v30 = 0;
    }

    v94 = v30;
    if (v29)
    {
      v31 = v103;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    sub_10000A00C(&v105, &qword_10026D350, &qword_1001E6050);
    v94 = 0;
    v31 = 0;
  }

  v99 = v28;
  v78[2] = v13;
  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  v32 = qword_100287848;
  v33 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v34 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v34);
  v36 = *(v35 + 72);
  v38 = *(v37 + 80);
  v39 = (v38 + 32) & ~v38;
  v85 = 5 * v36;
  v89 = v38;
  v91 = v33;
  v40 = swift_allocObject();
  v84 = xmmword_1001E61C0;
  *(v40 + 16) = xmmword_1001E61C0;
  v90 = v39;
  v88 = type metadata accessor for JSContent();
  v106 = v88;
  *&v105 = v4;
  v87 = v4;
  v92 = v26;
  v97 = v25;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v105);
  LogInterpolation.init(stringLiteral:)();
  v86 = 2 * v36;
  v106 = &type metadata for String;
  v41 = v100;
  v105 = v100;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v105, &qword_10026D350, &qword_1001E6050);
  v83 = 3 * v36;
  sub_100005C94();
  v42 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  v106 = v42;
  *&v105 = v101;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v105, &qword_10026D350, &qword_1001E6050);
  v43 = static os_log_type_t.default.getter();
  v93 = v32;
  sub_1000036B0(v43, v40);

  v44 = sub_1000B7DD0(v41, *(&v41 + 1), v94, v31, 2);

  v45 = v95;
  sub_10018A29C(v44, v95);

  v46 = v96;
  if (sub_100009F34(v45, 1, v96) == 1)
  {
    sub_10000A00C(v45, &qword_10026A050, &unk_1001EA2B0);
LABEL_19:
    v63 = sub_100019C3C();
    *(v63 + 16) = v84;
    sub_100012C9C();
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v105);
    LogInterpolation.init(stringLiteral:)();
    v106 = &type metadata for String;
    v105 = v100;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v105, &qword_10026D350, &qword_1001E6050);
    sub_100005C94();
    v106 = v42;
    *&v105 = v101;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v105, &qword_10026D350, &qword_1001E6050);
    v64 = static os_log_type_t.default.getter();
    sub_1000036B0(v64, v63);

LABEL_20:
    v66 = v98;
    *v98 = 0u;
    v66[1] = 0u;
    return result;
  }

  v47 = v82;
  sub_10010B7F8(v45, v82);
  v48 = v79;
  Date.init()();
  v49 = static Date.< infix(_:_:)();
  (*(v80 + 8))(v48, v81);
  if ((v49 & 1) != 0 || (v50 = (v47 + *(v46 + 36)), (v51 = v50[1]) == 0))
  {
    sub_100005320();
    sub_10010B72C(v47, v62);
    goto LABEL_19;
  }

  v52 = *v50;

  URL.init(fileURLWithPath:)();
  v67 = Data.init(contentsOf:options:)();
  v69 = v68;
  v70 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v105 = 0;
  v72 = [v70 JSONObjectWithData:isa options:0 error:&v105];

  v73 = v105;
  if (!v72)
  {
    v77 = v73;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000253FC(v67, v69);
    v53 = sub_100019C3C();
    *(v53 + 16) = xmmword_1001E5F70;
    sub_100012C9C();
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v105);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v54._object = 0x80000001001FA2F0;
    v54._countAndFlagsBits = 0xD000000000000016;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v54);
    v106 = &type metadata for String;
    *&v105 = v52;
    *(&v105 + 1) = v51;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v105, &qword_10026D350, &qword_1001E6050);
    v55._countAndFlagsBits = 8236;
    v55._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
    swift_getErrorValue();
    v106 = v104;
    sub_100017E64(&v105);
    sub_1000047A4();
    (*(v56 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v105, &qword_10026D350, &qword_1001E6050);
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v57);
    LogInterpolation.init(stringInterpolation:)();
    v58 = static os_log_type_t.error.getter();
    sub_1000036B0(v58, v53);

    v59 = sub_100007FE8();
    v60(v59);
    sub_100005320();
    result = sub_10010B72C(v82, v61);
    goto LABEL_20;
  }

  _bridgeAnyObjectToAny(_:)();
  sub_1000253FC(v67, v69);

  swift_unknownObjectRelease();
  v74 = sub_100007FE8();
  v75(v74);
  sub_100005320();
  return sub_10010B72C(v82, v76);
}

uint64_t sub_10010AA38(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC14amsengagementd9JSContent_runtime];
  if (*(v5 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v6);
  sub_1000056F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F60;
  v16 = type metadata accessor for JSContent();
  v15[0] = v2;
  v8 = v2;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v15);
  LogInterpolation.init(stringLiteral:)();
  v16 = &type metadata for String;
  v15[0] = a1;
  v15[1] = a2;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(v15, &qword_10026D350, &qword_1001E6050);
  v9 = static os_log_type_t.default.getter();
  sub_1000036B0(v9, v7);

  v10 = *(v5 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  v11 = type metadata accessor for ContentManager();
  *(sub_100004BC8(v11) + 16) = v10;
  v12 = sub_100003B80();
  sub_1000B8874(v12, v13, 0, 0);
}

uint64_t sub_10010AC74(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_10010ACE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v33 = a4;
  *(&v33 + 1) = a5;
  v8 = *&v6[OBJC_IVAR____TtC14amsengagementd9JSContent_runtime];
  if (*(v8 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001E61C0;
  v29 = type metadata accessor for JSContent();
  v37 = v29;
  *&v36 = v6;
  v28 = v6;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v36);
  LogInterpolation.init(stringLiteral:)();
  v37 = &type metadata for String;
  *&v36 = a2;
  *(&v36 + 1) = a3;

  static LogInterpolation.safe(_:)();
  sub_10000A9BC();
  v37 = &type metadata for String;
  v36 = v33;

  static LogInterpolation.safe(_:)();
  sub_10000A9BC();
  v37 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *&v36 = a6;

  static LogInterpolation.safe(_:)();
  sub_10000A9BC();
  v11 = static os_log_type_t.default.getter();
  sub_1000036B0(v11, v10);

  v12 = *(v8 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1);
  sub_100052D94(a6, &v36);
  if (v37)
  {
    if (swift_dynamicCast())
    {
      v13 = sub_1000116D0(v34);
      if (v13 != 4)
      {
        v12 = v13;
      }
    }
  }

  else
  {
    sub_10000A00C(&v36, &qword_10026D350, &qword_1001E6050);
  }

  v14 = type metadata accessor for ContentManager();
  *(sub_100004BC8(v14) + 16) = v12;
  if (sub_100137414(a1))
  {
    v15 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v36 = 0;
    v17 = [v15 dataWithJSONObject:isa options:0 error:&v36];

    v18 = v36;
    if (v17)
    {

      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      sub_10005DFA4();
      sub_1000B8BD8();

      return sub_1000253FC(v19, v21);
    }

    else
    {
      v23 = v18;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1001E5F60;
      v37 = v29;
      *&v36 = v28;
      v25 = v28;
      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v36);
      LogInterpolation.init(stringLiteral:)();
      swift_getErrorValue();
      v37 = v35;
      sub_100017E64(&v36);
      sub_1000047A4();
      (*(v26 + 16))();
      static LogInterpolation.safe(_:)();
      sub_10000A00C(&v36, &qword_10026D350, &qword_1001E6050);
      v27 = static os_log_type_t.error.getter();
      sub_1000036B0(v27, v24);
    }
  }

  else
  {
  }
}

uint64_t sub_10010B34C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v7 = v6;
  if (*(*&v7[OBJC_IVAR____TtC14amsengagementd9JSContent_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v11 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v11);
  v13 = *(v12 + 72);
  sub_1000056F8();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001E6580;
  v22 = type metadata accessor for JSContent();
  v20 = v7;
  v15 = v7;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v20);
  LogInterpolation.init(stringLiteral:)();
  v22 = &type metadata for String;
  v20 = a3;
  v21 = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v20, &qword_10026D350, &qword_1001E6050);
  v22 = &type metadata for String;
  v20 = a5;
  v21 = a6;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v20, &qword_10026D350, &qword_1001E6050);
  v16 = static os_log_type_t.default.getter();
  sub_1000036B0(v16, v14);

  v17 = sub_1000181EC();
  *(sub_100004BC8(v17) + 16) = 3 * v13;
  sub_1000B97BC();
}

id sub_10010B6C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSContent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10010B72C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002DDC();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_10010B784()
{
  result = qword_10026D800;
  if (!qword_10026D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D800);
  }

  return result;
}

uint64_t sub_10010B7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003EFC();
  v5(v4);
  sub_100002DDC();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_10010B854()
{
  result = qword_10026D810;
  if (!qword_10026D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D810);
  }

  return result;
}

uint64_t sub_10010B8A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_10010B8FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JSContent.CacheRequest.CacheRequestError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10010BA64(uint64_t a1)
{
  result = type metadata accessor for JSContent.Request(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for JSContent.Options(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for JSContent.Options(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for JSContent.Options(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JSContent.Request.RequestError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_10010BD14(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10010BDB8();
    if (v2 <= 0x3F)
    {
      sub_10010BE1C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10010BDB8()
{
  if (!qword_10026D918)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10026D918);
    }
  }
}

void sub_10010BE1C()
{
  if (!qword_10026B378)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10026B378);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for JSContent.Request.Method(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10010BF4C()
{
  result = qword_10026D950;
  if (!qword_10026D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D950);
  }

  return result;
}

unint64_t sub_10010BFA4()
{
  result = qword_10026D958;
  if (!qword_10026D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D958);
  }

  return result;
}

unint64_t sub_10010BFFC()
{
  result = qword_10026D960;
  if (!qword_10026D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D960);
  }

  return result;
}

unint64_t sub_10010C05C()
{
  result = qword_10026D728;
  if (!qword_10026D728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026D728);
  }

  return result;
}

uint64_t sub_10010C0A0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JSPromise();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;

  JSPromise.init(in:executor:)();
  if (!v3)
  {
    a3 = JSPromise.value.getter();
    (*(v7 + 8))(v9, v6);
  }

  return a3;
}

void sub_10010C1D8(uint64_t a1, void *a2, void *a3)
{
  v3 = a2;
  v4 = *(a1 + 16);
  v5 = (a1 + 40);
  if (!v4)
  {
LABEL_17:

    return;
  }

  while (1)
  {
    v7 = *(v5 - 1);
    v6 = *v5;

    sub_10010CA1C(&v34);
    if (!v35)
    {
      sub_100009FB0(&v34, &qword_10026D350, &qword_1001E6050);
      v21 = sub_100012A94();
      if (v22)
      {
        v23 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *a2;
        v25 = v36[3];
        sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25);
        v26 = v36;

        sub_100002C4C((v26[7] + 32 * v23), v33);
        _NativeDictionary._delete(at:)();
        *a2 = v26;
        v3 = a2;
      }

      else
      {
        memset(v33, 0, sizeof(v33));
      }

      sub_100009FB0(v33, &qword_10026D350, &qword_1001E6050);
      goto LABEL_16;
    }

    sub_100002C4C(&v34, v33);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v3;
    v9 = v36;
    v10 = sub_100012A94();
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    v16 = v11;
    sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v14))
    {
      v17 = sub_100012A94();
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_20;
      }

      v15 = v17;
    }

    v19 = v36;
    if (v16)
    {
      v20 = (v36[7] + 32 * v15);
      sub_100002C00(v20);
      sub_100002C4C(v33, v20);
    }

    else
    {
      v36[(v15 >> 6) + 8] |= 1 << v15;
      v27 = (v19[6] + 16 * v15);
      *v27 = v7;
      v27[1] = v6;
      sub_100002C4C(v33, (v19[7] + 32 * v15));
      v28 = v19[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_19;
      }

      v19[2] = v30;
    }

    v3 = a2;
    *a2 = v19;
LABEL_16:

    v5 += 2;
    if (!--v4)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10010C4A0()
{
  sub_100003D74();
  v1 = v0;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  __chkstk_darwin(v3);
  sub_100005338();
  sub_100051540();
  sub_100051670(v1);

  sub_100005F14();
}

void sub_10010C744()
{
  sub_100003D74();
  v1 = v0;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  __chkstk_darwin(v3);
  sub_100005338();
  sub_100051540();
  sub_100053070(v1);

  sub_100005F14();
}

double sub_10010CA1C@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC14amsengagementd20JSUbiquitousDatabase_keyValueStore);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_10010CAD0(uint64_t a1)
{
  v4 = Dictionary.init(dictionaryLiteral:)();
  sub_10010C1D8(a1, &v4, v1);
  return v4;
}

Class sub_10010CB60(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  a4(v6);

  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

void sub_10010CC08(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC14amsengagementd20JSUbiquitousDatabase_keyValueStore) dictionaryRepresentation];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100002BC0(0, &qword_10026D9C8, NSPredicate_ptr);
  sub_10007B9A4(&unk_100270BA0, &unk_1001EC990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E61B0;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100003E9C();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v40 = NSPredicate.init(format:_:)();
  sub_100004E5C();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;

  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  while (1)
  {
    v15 = v13;
    if (!v10)
    {
      break;
    }

LABEL_6:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = (v6[6] + ((v13 << 10) | (16 * v16)));
    v19 = *v17;
    v18 = v17[1];

    v20 = String._bridgeToObjectiveC()();
    v21 = [v40 evaluateWithObject:v20];

    if (v21)
    {
      *&v44 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100027C2C(0, v14[2] + 1, 1);
        v14 = v44;
      }

      v23 = v14[2];
      v22 = v14[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_100027C2C((v22 > 1), v23 + 1, 1);
        v24 = v23 + 1;
        v14 = v44;
      }

      v14[2] = v24;
      v25 = &v14[2 * v23];
      v25[4] = v19;
      v25[5] = v18;
    }

    else
    {
    }
  }

  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      v26 = 0;
      v27 = v14[2];
      v28 = v14 + 5;
      v29 = _swiftEmptyArrayStorage;
      while (v27 != v26)
      {
        if (v26 >= v14[2])
        {
          goto LABEL_27;
        }

        if (v6[2])
        {
          v31 = *(v28 - 1);
          v30 = *v28;

          v32 = sub_100012A94();
          if (v33)
          {
            sub_100011BAC(v6[7] + 32 * v32, v41);
            sub_100002C4C(v41, &v44);
            *&v42 = v31;
            *(&v42 + 1) = v30;
            sub_100002C4C(&v44, v43);
            v44 = v42;
            v45 = v43[0];
            v46 = v43[1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000D5E38();
              v29 = v38;
            }

            v34 = v29[2];
            if (v34 >= v29[3] >> 1)
            {
              sub_1000D5E38();
              v29 = v39;
            }

            v29[2] = v34 + 1;
            v35 = &v29[6 * v34];
            v36 = v44;
            v37 = v46;
            v35[3] = v45;
            v35[4] = v37;
            v35[2] = v36;
          }

          else
          {
          }
        }

        v28 += 2;
        ++v26;
      }

      sub_10010CFC4(v29);

      return;
    }

    v10 = v6[v13 + 8];
    ++v15;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void *sub_10010CFC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10007B9A4(&qword_10026C910, &qword_1001EBDF0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_10010D62C(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_10010D074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 24))
  {
    goto LABEL_5;
  }

  sub_10004EDFC(a3, v16, &qword_10026D350);
  if (v17)
  {
    sub_100002BC0(0, qword_10026A530, NSNull_ptr);
    if (swift_dynamicCast())
    {

LABEL_5:
      v5 = *(v3 + OBJC_IVAR____TtC14amsengagementd20JSUbiquitousDatabase_keyValueStore);
      v6 = String._bridgeToObjectiveC()();
      [v5 removeObjectForKey:v6];
      goto LABEL_11;
    }
  }

  else
  {
    sub_100009FB0(v16, &qword_10026D350, &qword_1001E6050);
  }

  v7 = *(v3 + OBJC_IVAR____TtC14amsengagementd20JSUbiquitousDatabase_keyValueStore);
  sub_10004EDFC(a3, v16, &qword_10026D350);
  v8 = v17;
  if (v17)
  {
    v9 = sub_100003CA8(v16, v17);
    v10 = *(v8 - 8);
    __chkstk_darwin(v9);
    sub_100002DEC();
    v13 = v12 - v11;
    (*(v10 + 16))(v12 - v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    sub_100002C00(v16);
  }

  else
  {
    v14 = 0;
  }

  v6 = String._bridgeToObjectiveC()();
  [v7 setObject:v14 forKey:v6];
  swift_unknownObjectRelease();
LABEL_11:
}

uint64_t sub_10010D2C4(uint64_t a1)
{
  v1 = a1 + 64;
  sub_100004E5C();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  v16 = v7;

  for (i = 0; v4; result = sub_100009FB0(v20, qword_10026A9D8, &unk_1001E8390))
  {
    v10 = i;
LABEL_7:
    v11 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(v16 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_100011BAC(*(v16 + 56) + 32 * v12, &v21);
    v20[0] = v14;
    v20[1] = v15;
    sub_10004EDFC(v20, v17, qword_10026A9D8);

    sub_100002C4C(&v18, v19);
    sub_10010D074(v14, v15, v19);
    sub_100009FB0(v19, &qword_10026D350, &qword_1001E6050);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
    }

    v4 = *(v1 + 8 * v10);
    ++i;
    if (v4)
    {
      i = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10010D440(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  v7 = sub_100007594();
  a4(v7);
}

uint64_t sub_10010D4C0(uint64_t result)
{
  v3 = *(result + 16);
  for (i = result + 40; v3; --v3)
  {
    sub_10000A9D8();
    sub_10010D074(v2, v1, v5);

    result = sub_100009FB0(v5, &qword_10026D350, &qword_1001E6050);
    i += 16;
  }

  return result;
}

id sub_10010D5C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10010D62C(uint64_t a1, char a2, void *a3)
{
  v31 = a3;
  v26 = *(a1 + 16);
  if (!v26)
  {
  }

  v5 = 0;
  v6 = a1 + 32;
  while (v5 < *(a1 + 16))
  {
    sub_10004EDFC(v6, v29, &unk_100271F40);
    v8 = v29[0];
    v7 = v29[1];
    sub_100002C4C(&v30, v28);
    v9 = *v31;
    v11 = sub_100012A94();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        _NativeDictionary.copy()();
        if (v15)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_1001C699C(v14, a2 & 1);
      v16 = sub_100012A94();
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_22;
      }

      v11 = v16;
      if (v15)
      {
LABEL_11:
        v18 = *v31;
        sub_100011BAC(v28, v27);
        sub_100002C00(v28);

        v19 = (v18[7] + 32 * v11);
        sub_100002C00(v19);
        sub_100002C4C(v27, v19);
        goto LABEL_15;
      }
    }

    v20 = *v31;
    v20[(v11 >> 6) + 8] |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_100002C4C(v28, (v20[7] + 32 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v20[2] = v24;
LABEL_15:
    ++v5;
    v6 += 48;
    a2 = 1;
    if (v26 == v5)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10010D854()
{
  v4 = v0;
  sub_100005930();
  v6 = v5;
  type metadata accessor for JSAccount();
  if ([v6 toObjectOfClass:swift_getObjCClassFromMetadata()])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (*(&v38 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = [*&v36[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] ams_DSID];
      if (v7)
      {
        v8 = v7;

        v9 = [v8 description];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v13 = type metadata accessor for JSOnDeviceStorageDatabase();
        v14 = objc_allocWithZone(v13);
        v15 = sub_1001304F4(v3, v2, v1, v0, v10, v12);
        sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
        inited = swift_initStackObject();
        v17 = sub_100006D54(inited, xmmword_1001E61B0);
        v17[4].n128_u64[1] = v13;
        v17[3].n128_u64[0] = v15;
        v18 = v15;
        v19 = Dictionary.init(dictionaryLiteral:)();

        return v19;
      }
    }
  }

  else
  {
    sub_100002C5C(&v39);
  }

  v20 = String._bridgeToObjectiveC()();
  v21 = AMSError();

  v22 = objc_allocWithZone(type metadata accessor for JSError());
  v23 = sub_100007594();
  v24 = sub_1000505C8(v23);
  v25 = sub_100051018();

  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v26 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v26);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1001E5F60;
  v28 = type metadata accessor for JSDatabaseStore();
  v29 = *&v4[OBJC_IVAR____TtC14amsengagementd15JSDatabaseStore_runtime];
  *(&v40 + 1) = v28;
  *&v39 = v4;
  if (*(v29 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  v30 = v4;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v39);
  LogInterpolation.init(stringLiteral:)();
  v31 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(&v40 + 1) = v31;
  *&v39 = v25;

  static LogInterpolation.safe(_:)();
  sub_100002C5C(&v39);
  v32 = static os_log_type_t.error.getter();
  sub_1000036B0(v32, v27);

  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  v33 = swift_initStackObject();
  v34 = sub_100003250(v33, xmmword_1001E61B0);
  v34[4].n128_u64[1] = v31;
  v34[3].n128_u64[0] = v25;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10010DD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100005930();
  v12 = v11;
  v13 = type metadata accessor for JSOnDeviceStorageDatabase();
  objc_allocWithZone(v13);

  v14 = sub_1001304F4(v8, v7, v6, a6, v12, v9);
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  v16 = sub_100006D54(inited, xmmword_1001E61B0);
  v16[4].n128_u64[1] = v13;
  v16[3].n128_u64[0] = v14;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10010DF64()
{
  type metadata accessor for AppDatabase();
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd15JSDatabaseStore_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config;
  v2 = sub_10001D804(*(v1 + 1), 0);
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  sub_100006D54(inited, xmmword_1001E61B0);
  v4 = *(v1 + 48);
  v6 = *v1;
  v5 = *(v1 + 16);
  v13[2] = *(v1 + 32);
  v13[3] = v4;
  v13[0] = v6;
  v13[1] = v5;
  v7 = type metadata accessor for JSScheduleDatabase();
  v8 = objc_allocWithZone(v7);
  sub_10000F4A4(v13, v12);

  v9 = sub_100137840(v13, v2);
  inited[4].n128_u64[1] = v7;
  inited[3].n128_u64[0] = v9;
  v10 = Dictionary.init(dictionaryLiteral:)();

  return v10;
}

id sub_10010E2D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSDatabaseStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10010E418@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v17 - v6;
  if (static DeviceDetails.deviceIsRunningInternalBuild()())
  {
    type metadata accessor for Defaults();
    v8 = sub_1000571D4(0);
    if (v8)
    {
      v17[1] = v8;
      v9 = type metadata accessor for Date();
      v10 = swift_dynamicCast();
      sub_10000A7C0(v7, v10 ^ 1u, 1, v9);
      if (sub_100009F34(v7, 1, v9) != 1)
      {
        (*(*(v9 - 8) + 32))(a1, v7, v9);
        return sub_10000A7C0(a1, 0, 1, v9);
      }
    }

    else
    {
      v12 = type metadata accessor for Date();
      sub_10000A7C0(v7, 1, 1, v12);
    }

    sub_10000A00C(v7, &unk_100271EA0, &qword_1001E77F0);
  }

  v13 = [objc_opt_self() current];
  v14 = [v13 date];

  if (v14)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = type metadata accessor for Date();
  sub_10000A7C0(v5, v15, 1, v16);
  return sub_100042090(v5, a1, &unk_100271EA0, &qword_1001E77F0);
}

uint64_t sub_10010E740(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for URLResourceValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007B9A4(&qword_10026DA50, &qword_1001ECFF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  sub_10010E978(&v14 - v7);
  if (sub_100009F34(v8, 1, v2))
  {
    sub_10000A00C(v8, &qword_10026DA50, &qword_1001ECFF0);
    return 0;
  }

  (*(v3 + 16))(v5, v8, v2);
  v9 = sub_10000A00C(v8, &qword_10026DA50, &qword_1001ECFF0);
  v10 = a1(v9);
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  if (v12)
  {
    return 0;
  }

  return v10;
}

uint64_t sub_10010E978@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007B9A4(&qword_10026DA58, &qword_1001ECFF8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC14amsengagementd8JSDevice____lazy_storage___fileSystemSizeResults;
  swift_beginAccess();
  sub_10003AF98(v1 + v9, v8, &qword_10026DA58, &qword_1001ECFF8);
  v10 = sub_10007B9A4(&qword_10026DA50, &qword_1001ECFF0);
  if (sub_100009F34(v8, 1, v10) != 1)
  {
    return sub_100042090(v8, a1, &qword_10026DA50, &qword_1001ECFF0);
  }

  sub_10000A00C(v8, &qword_10026DA58, &qword_1001ECFF8);
  sub_10010EB28(a1);
  sub_10003AF98(a1, v6, &qword_10026DA50, &qword_1001ECFF0);
  sub_10000A7C0(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10010F070(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_10010EB28@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  sub_10007B9A4(&qword_10026DA60, &unk_1001ED000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E6580;
  *(inited + 32) = NSURLVolumeAvailableCapacityKey;
  *(inited + 40) = NSURLVolumeAvailableCapacityForImportantUsageKey;
  *(inited + 48) = NSURLVolumeAvailableCapacityForOpportunisticUsageKey;
  *(inited + 56) = NSURLVolumeTotalCapacityKey;
  v7 = NSURLVolumeAvailableCapacityKey;
  v8 = NSURLVolumeAvailableCapacityForImportantUsageKey;
  v9 = NSURLVolumeAvailableCapacityForOpportunisticUsageKey;
  v10 = NSURLVolumeTotalCapacityKey;
  sub_1001CA00C(inited);
  URL.resourceValues(forKeys:)();
  (*(v3 + 8))(v5, v2);

  v11 = type metadata accessor for URLResourceValues();
  return sub_10000A7C0(a1, 0, 1, v11);
}

uint64_t sub_10010ED50()
{
  v0 = [objc_opt_self() languages];
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t sub_10010EEB4(SEL *a1)
{
  v2 = objc_opt_self();
  result = sub_100026484(v2, a1);
  if (!v4)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

id sub_10010EF08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSDevice(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10010EF7C(uint64_t a1)
{
  sub_10010F00C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10010F00C(uint64_t a1)
{
  if (!qword_10026DA48)
  {
    sub_10007BC70(&qword_10026DA50, &qword_1001ECFF0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10026DA48);
    }
  }
}

uint64_t sub_10010F070(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026DA58, &qword_1001ECFF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10010F0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = AMSError();

  v9 = objc_allocWithZone(type metadata accessor for JSError());
  return sub_1000505C8(v8);
}

id sub_10010F1D8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10010F3B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSError();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10010F3E4(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_10026DA90, &qword_1001ED048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10010F44C(uint64_t a1)
{
  v4 = sub_10000B958(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100015308(v4, 1, sub_1000D4ECC);
  sub_10000AF78();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  type metadata accessor for URLQueryItem();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_10000ABF8();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_10010F548(uint64_t a1)
{
  v4 = sub_10000B958(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100015308(v4, 1, sub_1000D5584);
  sub_10000AF78();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100005944();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_10000ABF8();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10010F5FC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100015308(result, 1, sub_1000D5F20);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10007B9A4(&qword_10026BF68, &unk_1001EA280);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10010F6E8()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100287808 = result;
  return result;
}

uint64_t sub_10010F948()
{
  v1 = OBJC_IVAR____TtC14amsengagementd11JSExtension____lazy_storage___extensionLoader;
  if (*(v0 + OBJC_IVAR____TtC14amsengagementd11JSExtension____lazy_storage___extensionLoader))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14amsengagementd11JSExtension____lazy_storage___extensionLoader);
  }

  else
  {
    v3 = v0;
    type metadata accessor for ExtensionLoader();
    sub_100002FB8();
    swift_allocObject();
    v2 = sub_1000F4FE0();
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_10010F9D4()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v34 = v7;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for JSExtension.RequestOptions(0);
  v9 = sub_100002CFC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v9);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v19 = *(v16 + 28);
  v20 = enum case for DispatchQoS.QoSClass.unspecified(_:);
  type metadata accessor for DispatchQoS.QoSClass();
  sub_100002DDC();
  (*(v21 + 104))(&v18[v19], v20);

  sub_100052D94(v2, &v37);

  if (v38)
  {
    v22 = swift_dynamicCast();
    if (v22)
    {
      v23 = v36;
    }

    else
    {
      v23 = 0;
    }

    v24 = v22 ^ 1;
  }

  else
  {
    sub_10000A00C(&v37, &qword_10026D350, &qword_1001E6050);
    v23 = 0;
    v24 = 1;
  }

  *v18 = v23;
  v25 = *(v0 + OBJC_IVAR____TtC14amsengagementd11JSExtension_runtime);
  v18[8] = v24;
  v26 = *(v25 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
  if (v26)
  {
    v27 = *(v25 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  }

  else
  {
    v27 = 0;
  }

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100011BAC(v4, &v37);
  sub_100113438(v18, v15);
  v29 = (*(v11 + 80) + 88) & ~*(v11 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v30 + 24) = v27;
  v31 = v34;
  *(v30 + 32) = v26;
  *(v30 + 40) = v31;
  *(v30 + 48) = v6;
  sub_100002C4C(&v37, (v30 + 56));
  sub_10011349C(v15, v30 + v29);
  *(v30 + ((v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

  sub_10011F39C("request(_:_:_:)", 0xFuLL, 2, sub_100113500, v30);

  sub_1000075BC();
  sub_100112E80(v18, v32);

  sub_100005F14();
}

uint64_t sub_10010FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v49 = a5;
  v47 = a2;
  v48 = type metadata accessor for JSCallable();
  v15 = *(v48 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v48);
  v17 = sub_10007B9A4(&qword_10026DAE0, &qword_1001ED088);
  __chkstk_darwin(v17 - 8);
  v19 = &v42 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v44 = a3;
    v45 = a6;
    sub_100113438(a10, v19);
    v22 = type metadata accessor for JSExtension.RequestOptions(0);
    sub_10000A7C0(v19, 0, 1, v22);
    v46 = sub_100111F48(a7, a8, a9, v19);
    sub_10000A00C(v19, &qword_10026DAE0, &qword_1001ED088);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = v15;
    v43 = *(v15 + 16);
    v25 = v48;
    v43(&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v48);
    v26 = v21;
    v27 = *(v24 + 80);
    v28 = swift_allocObject();
    v47 = v28;
    *(v28 + 16) = v23;
    v29 = *(v24 + 32);
    v29(v28 + ((v27 + 24) & ~v27), &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43(&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v25);
    v31 = (v27 + 40) & ~v27;
    v32 = swift_allocObject();
    v33 = v45;
    v32[2] = v49;
    v32[3] = v33;
    v32[4] = v30;
    v29(v32 + v31, &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
    v34 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);

    v35 = static OS_dispatch_queue.main.getter();
    v50[3] = v34;
    v50[4] = &protocol witness table for OS_dispatch_queue;
    v50[0] = v35;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(v50);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1001E5F70;
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v38 = static os_log_type_t.error.getter();
    sub_1000036B0(v38, v37);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v40 = sub_10010F0F0(0, 0xD000000000000018, 0x80000001001FAFC0, 0x6E617620666C6553, 0xED00006465687369);
    v41 = sub_100051018();

    *(v39 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v39 + 32) = v41;
    sub_10005C768(v39);
  }
}

void *sub_10011020C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for JSCallable();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_10011F068("request(_:_:_:)", 15, 2, v15);

    if (v16)
    {
      sub_100003CA8(v15, v16);
      (*(v6 + 16))(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
      sub_1000F0DD0(a1, v14);
      v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v11 = swift_allocObject();
      (*(v6 + 32))(v11 + v10, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      v12 = (v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
      v13 = v14[1];
      *v12 = v14[0];
      v12[1] = v13;
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v15);
    }

    else
    {
      return sub_10000A00C(v15, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_100110404(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  sub_100011BAC(a2, v3 + 32);
  sub_10005C768(v3);
}

void *sub_100110488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = type metadata accessor for JSCallable();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v22);
  v20 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E5F60;
  type metadata accessor for JSExtension();
  static LogInterpolation.prefix<A>(_:_:)();
  LogInterpolation.init(stringLiteral:)();
  v23[0] = a1;
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  v9 = String.init<A>(describing:)();
  v24 = &type metadata for String;
  v23[0] = v9;
  v23[1] = v10;
  static LogInterpolation.safe(_:)();
  sub_10000A00C(v23, &qword_10026D350, &qword_1001E6050);
  v11 = static os_log_type_t.error.getter();
  sub_1000036B0(v11, v8);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_10011F068("request(_:_:_:)", 15, 2, v23);

    if (v24)
    {
      sub_100003CA8(v23, v24);
      v14 = v20;
      v15 = v22;
      (*(v6 + 16))(v20, v21, v22);
      v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      (*(v6 + 32))(v18 + v16, v14, v15);
      *(v18 + v17) = a1;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v23);
    }

    else
    {
      return sub_10000A00C(v23, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

void sub_1001108F4()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10007B9A4(&qword_10026DAE0, &qword_1001ED088);
  v9 = sub_100003D10(v8);
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  v12 = type metadata accessor for JSExtension.RequestOptions(0);
  sub_100002DDC();
  __chkstk_darwin(v13);
  sub_100002DEC();
  v16 = v15 - v14;
  v18 = *(v17 + 20);
  v19 = enum case for DispatchQoS.QoSClass.unspecified(_:);
  type metadata accessor for DispatchQoS.QoSClass();
  sub_100002DDC();
  (*(v20 + 104))(v16 + v18, v19);

  sub_100052D94(v1, &v26);

  if (v27)
  {
    v21 = swift_dynamicCast();
    v22 = v25[1];
    if (!v21)
    {
      v22 = 0;
    }

    v23 = v21 ^ 1;
  }

  else
  {
    sub_10000A00C(&v26, &qword_10026D350, &qword_1001E6050);
    v22 = 0;
    v23 = 1;
  }

  *v16 = v22;
  *(v16 + 8) = v23;
  sub_100113438(v16, v11);
  sub_10000A7C0(v11, 0, 1, v12);
  sub_100111F48(v7, v5, v3, v11);
  sub_10000A00C(v11, &qword_10026DAE0, &qword_1001ED088);
  sub_1001B5F34(&v26);

  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  sub_100011BAC(&v26, inited + 48);
  Dictionary.init(dictionaryLiteral:)();
  sub_100112ED8(&v26);
  sub_100112E80(v16, type metadata accessor for JSExtension.RequestOptions);
  sub_100005F14();
}

void sub_100110F70()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v40 = v5;
  v41 = v6;
  v8 = v7;
  v39 = v9;
  ObjectType = swift_getObjectType();
  type metadata accessor for Date();
  sub_100002EF0();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v14);
  v16 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v35 - v17;
  Date.init()();
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v22;
    v38 = v21;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v36 = *&v2[OBJC_IVAR____TtC14amsengagementd11JSExtension_runtime];
  sub_100011BAC(v4, v43);
  (*(v11 + 16))(v16, v18, v0);
  v23 = (*(v11 + 80) + 88) & ~*(v11 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v39;
  *(v25 + 16) = v2;
  *(v25 + 24) = v26;
  *(v25 + 32) = v8;
  sub_100002C4C(v43, (v25 + 40));
  v27 = v40;
  v40 = v18;
  v28 = v0;
  v29 = v41;
  *(v25 + 72) = v27;
  *(v25 + 80) = v29;
  (*(v11 + 32))(v25 + v23, v16, v28);
  v30 = v36;
  *(v25 + v24) = v36;
  v31 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v37;
  *v31 = v38;
  v31[1] = v32;
  v33 = v2;

  v34 = v30;
  sub_100111BE0();

  (*(v11 + 8))(v40, v28);
  sub_100005F14();
}

void (*sub_1001111A8(void (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10))(void, void)
{
  v58 = a8;
  v59 = a1;
  v52 = a7;
  v54 = a5;
  v55 = a6;
  v49 = a2;
  v50 = a3;
  v56 = a9;
  v57 = a10;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v47 = v11;
  v51 = *(v11 - 8);
  v12 = v51;
  __chkstk_darwin(v11);
  v53 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10007B9A4(&qword_10026DAE0, &qword_1001ED088);
  __chkstk_darwin(v18 - 8);
  v20 = &v47 - v19;
  v21 = type metadata accessor for JSExtension.RequestOptions(0);
  v22 = *(v21 + 20);
  v48 = *(v12 + 104);
  v48(&v20[v22], enum case for DispatchQoS.QoSClass.unspecified(_:), v11);
  *v20 = 0x403E000000000000;
  v20[8] = 0;
  sub_10000A7C0(v20, 0, 1, v21);
  v24 = v49;
  v23 = v50;
  v59 = sub_100111F48(v49, v50, a4, v20);
  sub_10000A00C(v20, &qword_10026DAE0, &qword_1001ED088);
  sub_100011BAC(a4, &v60);
  (*(v15 + 16))(v17, v52, v14);
  v25 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v26 = (v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = v23;
  v28 = v55;
  *(v27 + 32) = v54;
  *(v27 + 40) = v28;
  sub_100002C4C(&v60, (v27 + 48));
  (*(v15 + 32))(v27 + v25, v17, v14);
  v29 = v58;
  *(v27 + v26) = v58;
  v30 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
  v31 = v57;
  *v30 = v56;
  v30[1] = v31;
  v32 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v33 = v53;
  v34 = v47;
  v48(v53, enum case for DispatchQoS.QoSClass.default(_:), v47);

  v35 = v29;
  v36 = static OS_dispatch_queue.global(qos:)();
  (*(v51 + 8))(v33, v34);
  v61 = v32;
  v62 = &protocol witness table for OS_dispatch_queue;
  *&v60 = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_100113340;
  *(v37 + 24) = v27;
  v38 = objc_allocWithZone(NSLock);
  v39 = v36;

  v40 = [v38 init];
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  *(v41 + 24) = v37;
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v42 + 24) = v37;
  v43 = v40;
  swift_retain_n();
  v44 = v43;
  v45 = v59;
  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(&v60);
  return v45;
}

void sub_10011164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ED060;
  *(inited + 32) = 0x6E696769726FLL;
  *(inited + 40) = 0xE600000000000000;
  strcpy((inited + 48), "amsengagementd");
  *(inited + 63) = -18;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x707954746E657665;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = 0x657645636E797341;
  *(inited + 104) = 0xEA0000000000746ELL;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x64496E6967756C70;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = a3;
  *(inited + 152) = a4;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x4974736575716572;
  *(inited + 184) = 0xE900000000000064;
  *(inited + 192) = a5;
  *(inited + 200) = a6;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x4474736575716572;
  *(inited + 232) = 0xEB00000000617461;
  sub_100011BAC(a7, inited + 240);
  *(inited + 272) = 0x64657461657263;
  *(inited + 280) = 0xE700000000000000;

  Date.timeIntervalSince1970.getter();
  *(inited + 312) = &type metadata for Double;
  *(inited + 288) = v18;
  v19 = Dictionary.init(dictionaryLiteral:)();
  sub_1000E0BFC(a1, &v36, &qword_10026C928, &unk_1001EBE08);
  if (*(&v37 + 1))
  {
    v38 = v36;
    v39 = v37;
    sub_100011BAC(&v38, &v36);
    swift_isUniquelyReferenced_nonNull_native();
    v35 = v19;
    sub_10000DFC4();
    sub_100112ED8(&v38);
  }

  else
  {
    sub_10000A00C(&v36, &qword_10026C928, &unk_1001EBE08);
  }

  if (a2)
  {
    v20 = objc_allocWithZone(type metadata accessor for JSError());
    swift_errorRetain();
    swift_errorRetain();
    v21 = sub_1000505C8(a2);
    v22 = sub_100051018();

    *(&v39 + 1) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *&v38 = v22;
    sub_100002C4C(&v38, &v36);
    swift_isUniquelyReferenced_nonNull_native();
    v35 = v19;
    sub_10000DFC4();
  }

  v23 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
  sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1001E61B0;
  sub_10005DFA4();
  v26 = v25;

  *(v24 + 32) = v26;
  sub_1000F4334(v24, v23);
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1001E8AB0;
  v28 = v27;
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  *(v28 + 32) = sub_100092378();
  sub_1000F43B4(v28, v23);
  v29 = [objc_opt_self() currentProcess];
  [v23 setClientInfo:v29];

  if (a11)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  [v23 setLogKey:{v30, a1, v35}];

  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v31 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  v32 = [objc_allocWithZone(AMSEngagement) initWithBag:v31];

  v33 = [v32 _enqueue:v23];
}

void sub_100111BE0()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100002EF0();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100002DEC();
  v11 = v10 - v9;
  v20 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100002DEC();
  v17 = v16 - v15;
  if (qword_100268690 != -1)
  {
    sub_1000064B0(&qword_100268690);
  }

  v18 = swift_allocObject();
  v18[2] = v1;
  v18[3] = v5;
  v18[4] = v3;
  v21[4] = sub_100112FA4;
  v21[5] = v18;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_100005E50;
  v21[3] = &unk_10024C560;
  v19 = _Block_copy(v21);

  static DispatchQoS.unspecified.getter();
  sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v7 + 8))(v11, v0);
  (*(v13 + 8))(v17, v20);

  sub_100005F14();
}

void (*sub_100111F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(void, void)
{
  v5 = v4;
  v34 = a3;
  v35 = a1;
  v36 = a2;
  v7 = type metadata accessor for ExtensionLoader.RequestOptions(0);
  sub_100002DDC();
  __chkstk_darwin(v8);
  sub_100002DEC();
  v11 = v10 - v9;
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100002DEC();
  v18 = v17 - v16;
  v19 = sub_10007B9A4(&qword_10026DAE0, &qword_1001ED088);
  v20 = sub_100003D10(v19);
  __chkstk_darwin(v20);
  v22 = (&v33 - v21);
  sub_1000E0BFC(a4, &v33 - v21, &qword_10026DAE0, &qword_1001ED088);
  v23 = type metadata accessor for JSExtension.RequestOptions(0);
  if (sub_100009F34(v22, 1, v23) == 1)
  {
    sub_10000A00C(v22, &qword_10026DAE0, &qword_1001ED088);
  }

  else
  {
    v24 = *v22;
    v25 = *(v22 + 8);
    sub_1000075BC();
    sub_100112E80(v22, v26);
    if (v25 != 1)
    {
      goto LABEL_5;
    }
  }

  v24 = sub_10002F8B8(*(*(v5 + OBJC_IVAR____TtC14amsengagementd11JSExtension_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48));
LABEL_5:
  sub_10007B9A4(&qword_10026DAE8, &qword_1001ED090);
  Promise.__allocating_init()();
  v27 = sub_1000E9CD8(0xD000000000000011, 0x80000001001FAF20, v24);

  if (*(*(v5 + OBJC_IVAR____TtC14amsengagementd11JSExtension_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config))
  {
    v28 = &enum case for DispatchQoS.QoSClass.userInteractive(_:);
  }

  else
  {
    v28 = &enum case for DispatchQoS.QoSClass.userInitiated(_:);
  }

  v29 = v12;
  (*(v14 + 104))(v18, *v28, v12);
  (*(v14 + 16))(v11, v18, v12);
  *(v11 + *(v7 + 20)) = v24;
  v30 = qword_100268830;

  if (v30 != -1)
  {
    swift_once();
  }

  sub_100011C54(0x6F69736E65747865, 0xEF726564616F4C6ELL);
  sub_10010F948();
  v31 = sub_1000F52E4(v35, v36);

  sub_1000F57B0(v34, v31, v11, 0, sub_100112E78, v27);

  sub_100112E80(v11, type metadata accessor for ExtensionLoader.RequestOptions);
  (*(v14 + 8))(v18, v29);
  return v27;
}

uint64_t sub_100112364(uint64_t a1, uint64_t a2)
{
  sub_1000E0BFC(a1, &v6, &qword_10026D350, &qword_1001E6050);
  if (v7)
  {
    sub_100002C4C(&v6, v8);
    sub_100011BAC(v8, &v6);
    Promise.resolve(_:)();
    sub_100112ED8(&v6);
    sub_100002C00(v8);
  }

  else
  {
    sub_10000A00C(&v6, &qword_10026D350, &qword_1001E6050);
    v3 = objc_allocWithZone(type metadata accessor for JSError());
    swift_errorRetain();
    v4 = sub_1000505C8(a2);
    Promise.reject(_:)();
  }

  if (qword_100268830 != -1)
  {
    swift_once();
  }

  return sub_1001AE448(0x6F69736E65747865, 0xEF726564616F4C6ELL);
}

uint64_t sub_100112498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100268698 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&qword_10026BF60, &qword_1001EA278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(inited + 32) = sub_100112FB0;
  *(inited + 40) = v6;
  swift_beginAccess();

  sub_10010F5FC(inited);
  result = swift_endAccess();
  if (*(off_10026DAA0 + 2) == 1)
  {
    return sub_1001125A8();
  }

  return result;
}

uint64_t sub_1001125A8()
{
  v2 = v1;
  type metadata accessor for DispatchQoS.QoSClass();
  sub_100002EF0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002DEC();
  v8 = v7 - v6;
  v9 = type metadata accessor for DispatchPredicate();
  sub_100002CC4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100002DEC();
  v15 = (v14 - v13);
  if (qword_100268690 != -1)
  {
    sub_1000064B0(&qword_100268690);
  }

  v16 = qword_100287808;
  *v15 = qword_100287808;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v9);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v9);
  if (v16)
  {
    if (qword_100268698 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  result = swift_beginAccess();
  if (*(off_10026DAA0 + 2))
  {
    v19 = *(off_10026DAA0 + 4);

    v19(v32, v20);

    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    v22 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    (*(v4 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v0);
    v23 = static OS_dispatch_queue.global(qos:)();
    (*(v4 + 8))(v8, v0);
    v32[3] = v22;
    v32[4] = &protocol witness table for OS_dispatch_queue;
    v32[0] = v23;
    sub_100002FB8();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_100112FE0;
    *(v24 + 24) = v21;
    v25 = objc_allocWithZone(NSLock);
    v26 = v23;

    v27 = [v25 init];
    sub_100002FB8();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = v24;
    sub_100002FB8();
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v24;
    v30 = v27;
    swift_retain_n();
    v31 = v30;
    Promise.then(perform:orCatchError:on:)();

    return sub_100002C00(v32);
  }

  return result;
}

uint64_t sub_10011295C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100268690 != -1)
  {
    swift_once();
  }

  v14[1] = qword_100287808;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  aBlock[4] = sub_100112FF8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_10024C678;
  v12 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_100112C44()
{
  if (qword_100268698 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100112CD8();
  swift_endAccess();

  return sub_1001125A8();
}

uint64_t sub_100112CD8()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);

    sub_100113240(0, 1);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100112D6C()
{
}

id sub_100112DAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSExtension.RequestOptions(uint64_t a1)
{
  result = qword_10026DB50;
  if (!qword_10026DB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100112E80(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002DDC();
  (*(v3 + 8))(a1);
  return a1;
}

void (*sub_100112F08())(void, void)
{
  v1 = type metadata accessor for Date();
  sub_100002CFC(v1);
  sub_10000326C();
  return sub_1001111A8(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + 40, *(v0 + 72), *(v0 + 80), v0 + v3, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_100112FB0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_100113000(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_1001130A0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100015308(result, 1, sub_10000DE9C);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_10004F7A8((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100113190(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *v3;
  if (sub_1000116AC(*v3) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = 1 - v7;
  if (__OFSUB__(1, v7))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = sub_10004369C(v6);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_100113000(v11, 1);

  sub_10018B91C();
}

uint64_t sub_100113240(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100015308(result, 1, sub_1000D5F20);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = v9 + 16 * v5;
  sub_10007B9A4(&qword_10026BF68, &unk_1001EA280);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_10004F7A4(v9 + 16 * a2, v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100113340(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  sub_100002CFC(v5);
  sub_10000326C();
  sub_10011164C(a1, a2, v2[2], v2[3], v2[4], v2[5], (v2 + 6), v2 + v7, *(v2 + v6), *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1001133FC()
{

  sub_100002FB8();

  return _swift_deallocObject(v1);
}

uint64_t sub_100113438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSExtension.RequestOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011349C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSExtension.RequestOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100113500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for JSExtension.RequestOptions(0);
  sub_100002CFC(v7);
  sub_10000326C();
  return sub_10010FCC0(a1, a2, a3, v3[2], v3[3], v3[4], v3[5], v3[6], (v3 + 7), v3 + v9, *(v3 + v8));
}

void *sub_1001135C0(uint64_t a1)
{
  v3 = type metadata accessor for JSCallable();
  sub_100003D10(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_10011020C(a1, v5, v6);
}

void *sub_100113630(uint64_t a1)
{
  v3 = type metadata accessor for JSCallable();
  sub_100003D10(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return sub_100110488(a1, v5, v6, v7, v8);
}

uint64_t sub_1001136A4()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  sub_10000326C();
  v4 = *(v0 + v3);

  return sub_100104450(v0 + v2, v4);
}

uint64_t sub_100113720()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  sub_10000326C();

  return sub_100110404(v0 + v2, v0 + v3);
}

void sub_1001137D4(uint64_t a1)
{
  sub_100113858();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DispatchQoS.QoSClass();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100113858()
{
  if (!qword_10026DB60)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10026DB60);
    }
  }
}

uint64_t sub_1001138B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return sub_100006CA4();
}

uint64_t sub_1001138D0()
{
  sub_1000061B4();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = sub_10007B9A4(&unk_10026CD20, &unk_1001E7CC0);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1001139DC;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, &type metadata for String, v4, 0, 0, &unk_1001ED308, v3, &type metadata for String);
}

uint64_t sub_1001139DC()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = v3[2];
    v11 = v3[3];
    v12 = *(v5 + 8);

    return v12(v10, v11);
  }
}

uint64_t sub_100113B00()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

uint64_t sub_100113B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100113B80, 0, 0);
}

uint64_t sub_100113B80()
{
  sub_1000061B4();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_100002BC0(0, &qword_10026DBE0, FAFamilyCircle_ptr);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = sub_10007B9A4(&qword_10026DBE8, &qword_1001ED120);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_100113CA4;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v3, v5, 0, 0, &unk_1001ED118, v4, v3);
}

uint64_t sub_100113CA4()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_10000B214();

    return v10();
  }
}

uint64_t sub_100113DC4()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

uint64_t sub_100113E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100113EC4, 0, 0);
}

uint64_t sub_100113EC4()
{
  sub_100005B90();
  v2 = v0[8];
  v3 = v0[7];
  type metadata accessor for TaskPriority();
  sub_100004CC8();
  sub_1000083D8();
  v4 = swift_allocObject();
  sub_1000180D0(v4);
  v5 = sub_10003AEDC();
  sub_1001146FC(v5, v6, v1);
  v7 = sub_100004CBC();
  sub_100009F5C(v7, v8, &qword_1001E6280);
  sub_100004CC8();
  sub_1000083D8();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v2;
  v10 = sub_10003AEDC();
  sub_1001146FC(v10, v11, v12);
  v13 = sub_100004CBC();
  sub_100009F5C(v13, v14, &qword_1001E6280);
  v15 = swift_task_alloc();
  v0[10] = v15;
  sub_10007B9A4(&qword_10026DC20, &qword_1001ED338);
  *v15 = v0;
  v15[1] = sub_10011403C;
  sub_1000060D0();

  return ThrowingTaskGroup.next(isolation:)();
}

uint64_t sub_10011403C()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_1000060D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100114134()
{
  sub_1000061B4();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  ThrowingTaskGroup.cancelAll()();

  v0 = sub_100004CBC();

  return v1(v0);
}

uint64_t sub_1001141E0()
{
  sub_100004768();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  ThrowingTaskGroup.cancelAll()();

  sub_100002D8C();

  return v0();
}

uint64_t sub_100114278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_10011431C, 0, 0);
}

uint64_t sub_10011431C()
{
  sub_100005B90();
  v2 = v0[7];
  v3 = v0[6];
  type metadata accessor for TaskPriority();
  sub_100004CC8();
  sub_1000083D8();
  v4 = swift_allocObject();
  sub_1000180D0(v4);
  v5 = sub_10003AEDC();
  sub_1001148B4(v5, v6, v1);
  v7 = sub_100004CBC();
  sub_100009F5C(v7, v8, &qword_1001E6280);
  sub_100004CC8();
  sub_1000083D8();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v2;
  v10 = sub_10003AEDC();
  sub_1001148B4(v10, v11, v12);
  v13 = sub_100004CBC();
  sub_100009F5C(v13, v14, &qword_1001E6280);
  v15 = swift_task_alloc();
  v0[9] = v15;
  sub_10007B9A4(&qword_10026DBF0, &qword_1001ED150);
  *v15 = v0;
  v15[1] = sub_100114494;
  sub_1000060D0();

  return ThrowingTaskGroup.next(isolation:)();
}

uint64_t sub_100114494()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_1000060D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10011458C()
{
  sub_1000061B4();
  sub_100002BC0(0, &qword_10026DBE0, FAFamilyCircle_ptr);
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  sub_100004CBC();
  ThrowingTaskGroup.cancelAll()();
  v1 = *(v0 + 16);

  sub_10000B214();

  return v2(v1);
}

uint64_t sub_100114648()
{
  sub_1000061B4();
  sub_100002BC0(0, &qword_10026DBE0, FAFamilyCircle_ptr);
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  sub_100004CBC();
  ThrowingTaskGroup.cancelAll()();

  sub_100002D8C();

  return v0();
}

uint64_t sub_1001146FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v7 - 8);
  v9 = v17 - v8;
  sub_100119228(a1, v17 - v8);
  v10 = type metadata accessor for TaskPriority();
  if (sub_100009F34(v9, 1, v10) == 1)
  {
    sub_100009F5C(v9, &unk_10026FEC0, &qword_1001E6280);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}

uint64_t sub_1001148B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v7 - 8);
  v9 = v17 - v8;
  sub_100119228(a1, v17 - v8);
  v10 = type metadata accessor for TaskPriority();
  if (sub_100009F34(v9, 1, v10) == 1)
  {
    sub_100009F5C(v9, &unk_10026FEC0, &qword_1001E6280);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  sub_100002BC0(0, &qword_10026DBE0, FAFamilyCircle_ptr);
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}

uint64_t sub_100114A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100114B40, 0, 0);
}

uint64_t sub_100114B40()
{
  sub_100004768();
  static Clock<>.continuous.getter();
  v1 = sub_100003E00();
  *(v0 + 56) = v1;
  *v1 = v0;
  v2 = sub_100012CDC(v1);

  return v3(v2);
}

uint64_t sub_100114BCC()
{
  sub_1000061B4();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  *(v6 + 64) = v0;

  v7 = sub_100004CBC();
  v8(v7);
  sub_1000060D0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100114D1C()
{
  sub_1000061B4();
  v0 = sub_1001191D4();
  sub_100007544(&type metadata for TimeoutError, v0);
  swift_willThrow();

  sub_100002D8C();

  return v1();
}

uint64_t sub_100114D9C()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

uint64_t sub_100114E2C(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100114E64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100114E2C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100114E90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100114E44(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100114EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100119A04();
  v5 = sub_100050EF8();

  return CustomNSError<>.errorCode.getter(a1, a2, v4, v5);
}

uint64_t sub_100114F1C(uint64_t a1)
{
  v2 = sub_1001199B0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100114F58(uint64_t a1)
{
  v2 = sub_1001199B0();
  v3 = sub_100119A04();
  v4 = sub_100050EF8();

  return Error<>._code.getter(a1, v2, v3, v4);
}

uint64_t sub_100114FB4(uint64_t a1)
{
  v3 = (*&v1[OBJC_IVAR____TtC14amsengagementd8JSFamily_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
  }

  else
  {
    v5 = 0;
  }

  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F60;
  v15 = type metadata accessor for JSFamily();
  v14[0] = v1;
  v8 = v1;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v14);
  LogInterpolation.init(stringLiteral:)();
  v15 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  v14[0] = a1;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(v14, &qword_10026D350, &qword_1001E6050);
  v9 = static os_log_type_t.default.getter();
  sub_1000036B0(v9, v7);

  sub_1000083D8();
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = a1;
  v10[5] = v8;
  v11 = v8;

  v12 = sub_10011F39C("lookup(_:)", 0xAuLL, 2, sub_100119404, v10);

  return v12;
}

void sub_1001151FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5, uint64_t a6, uint64_t a7)
{
  v37 = a7;
  v38 = a2;
  v39 = type metadata accessor for JSCallable();
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v39);
  v41 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v17 - 8);
  v19 = &v34 - v18;
  v40 = a5;
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  sub_100052D94(a6, &v42);
  if (v43)
  {
    type metadata accessor for JSAccount();
    if (swift_dynamicCast())
    {
      v35 = v44;
      v20 = type metadata accessor for TaskPriority();
      v36 = v19;
      sub_10000A7C0(v19, 1, 1, v20);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = a4;
      v22 = v12;
      v23 = *(v12 + 16);
      v24 = v39;
      v23(v16, a3, v39);
      v23(v41, v38, v24);
      v25 = *(v22 + 80);
      v26 = (v25 + 56) & ~v25;
      v38 = v7;
      v27 = (v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = (v25 + v27 + 8) & ~v25;
      v29 = swift_allocObject();
      *(v29 + 2) = 0;
      *(v29 + 3) = 0;
      v30 = v37;
      *(v29 + 4) = v21;
      *(v29 + 5) = v30;
      *(v29 + 6) = v40;
      v31 = *(v22 + 32);
      v31(&v29[v26], v16, v24);
      *&v29[v27] = v35;
      v31(&v29[v28], v41, v24);

      sub_1000E349C();

      return;
    }
  }

  else
  {
    sub_100009F5C(&v42, &qword_10026D350, &qword_1001E6050);
  }

  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1001E61B0;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 32) = 0x2064696C61766E49;
  *(v32 + 40) = 0xEF746E756F636361;
  v33 = JSCallable.call(_:)();

  if (!v7)
  {
  }
}

uint64_t sub_1001155C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v13;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v9 = type metadata accessor for JSCallable();
  v8[29] = v9;
  v10 = *(v9 - 8);
  v8[30] = v10;
  v8[31] = *(v10 + 64);
  v8[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001156A0, 0, 0);
}

uint64_t sub_1001156A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v10 + 264) = Strong;
  if (Strong)
  {
    v12 = swift_task_alloc();
    *(v10 + 272) = v12;
    *v12 = v10;
    v12[1] = sub_10011597C;
    sub_10000A598();

    return sub_100117230(v13);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      sub_100003230(&qword_1002686E8);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v16 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v16);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1001E5F70;
    type metadata accessor for JSFamily();
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v18 = static os_log_type_t.error.getter();
    sub_1000036B0(v18, v17);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v20 = sub_10010F0F0(0, 0x207055206B6F6F4CLL, 0xEE0064656C696146, 0x73696420666C6573, 0xEF64657265657061);
    v21 = sub_100051018();

    *(v19 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v19 + 32) = v21;
    sub_10005C768(v19);

    sub_100002D8C();
    sub_10000A598();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_10011597C()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 280) = v4;
  *(v2 + 288) = v0;

  sub_1000060D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100115A7C()
{
  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  v1 = v0[33];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  v4 = *(v3 + 72);
  v5 = sub_100007218();
  *(v5 + 16) = xmmword_1001E5F70;
  v0[19] = type metadata accessor for JSFamily();
  v0[16] = v1;
  v1;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v0 + 16);
  LogInterpolation.init(stringLiteral:)();
  v6 = static os_log_type_t.default.getter();
  sub_1000036B0(v6, v5);

  sub_10011F068("lookup(_:)", 10, 2, (v0 + 7));
  v7 = v0[10];
  v8 = v0[35];
  v9 = v0[33];
  if (v7)
  {
    v11 = v0[31];
    v10 = v0[32];
    v12 = v0[29];
    v13 = v0[30];
    v14 = v0[28];
    sub_100003CA8(v0 + 7, v7);
    (*(v13 + 16))(v10, v14, v12);
    sub_100009E58();
    v15 = swift_allocObject();
    (*(v13 + 32))(v15 + v4, v10, v12);
    *(v15 + v11) = v8;
    dispatch thunk of TaskScheduler.schedule(task:)();

    sub_100002C00(v0 + 7);
  }

  else
  {

    sub_100009F5C((v0 + 7), &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_100002D8C();

  return v16();
}

uint64_t sub_100115D08()
{
  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  v1 = v0[33];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  v4 = *(v3 + 72);
  v5 = sub_100007218();
  *(v5 + 16) = xmmword_1001E5F70;
  v0[15] = type metadata accessor for JSFamily();
  v0[12] = v1;
  v1;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v0 + 12);
  LogInterpolation.init(stringLiteral:)();
  v6 = static os_log_type_t.error.getter();
  sub_1000036B0(v6, v5);

  sub_10011F068("lookup(_:)", 10, 2, (v0 + 2));
  v7 = v0[5];
  v8 = v0[36];
  v9 = v0[33];
  if (v7)
  {
    v11 = v0[31];
    v10 = v0[32];
    v12 = v0[29];
    v13 = v0[30];
    v14 = v0[26];
    sub_100003CA8(v0 + 2, v7);
    (*(v13 + 16))(v10, v14, v12);
    sub_100009E58();
    v15 = swift_allocObject();
    (*(v13 + 32))(v15 + v4, v10, v12);
    *(v15 + v11) = v8;
    swift_errorRetain();
    dispatch thunk of TaskScheduler.schedule(task:)();

    sub_100002C00(v0 + 2);
  }

  else
  {

    sub_100009F5C((v0 + 2), &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_100002D8C();

  return v16();
}

uint64_t sub_100115FA4(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  *(v3 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v3 + 32) = a2;

  sub_10005C768(v3);
}

uint64_t sub_100116058(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = (*(v1 + OBJC_IVAR____TtC14amsengagementd8JSFamily_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
  }

  else
  {
    v6 = 0;
  }

  sub_100004AA0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v7;
  v8[4] = v6;
  v8[5] = v5;
  v8[6] = ObjectType;

  v9 = sub_10011F39C("lookUpEligibility(_:)", 0x15uLL, 2, sub_100119298, v8);

  return v9;
}

void sub_10011616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a6;
  v48 = a5;
  v49 = a2;
  v12 = type metadata accessor for JSCallable();
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  __chkstk_darwin(v12);
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  sub_100052D94(a4, &aBlock);
  if (!MetatypeMetadata)
  {
    sub_100009F5C(&aBlock, &qword_10026D350, &qword_1001E6050);
    goto LABEL_10;
  }

  v46 = a8;
  v47 = a7;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1001E61B0;
    v22 = 0x80000001001FB1F0;
    *(v21 + 56) = &type metadata for String;
    v23 = 0xD000000000000014;
    goto LABEL_14;
  }

  v44 = v12;
  v15 = *(&v56 + 1);
  v45 = v56;
  sub_100052D94(a4, &aBlock);
  if (!MetatypeMetadata)
  {

    sub_100009F5C(&aBlock, &qword_10026D350, &qword_1001E6050);
LABEL_13:
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1001E61B0;
    *(v21 + 56) = &type metadata for String;
    v22 = 0x80000001001FB210;
    v23 = 0xD000000000000010;
LABEL_14:
    *(v21 + 32) = v23;
    *(v21 + 40) = v22;
    v24 = JSCallable.call(_:)();

    if (v8)
    {
      return;
    }

    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v16 = v56;
  v17 = objc_allocWithZone(FAEligiblityEvaluationRequest);

  v38 = v15;
  v41 = *(&v16 + 1);
  v43 = sub_1001184D4();
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  v42 = qword_100287848;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v39 = *(*(type metadata accessor for LogInterpolation() - 8) + 72);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001E5F70;
  v40 = v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v57 = type metadata accessor for JSFamily();
    *&v56 = v20;
    sub_100002C4C(&v56, &aBlock);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&aBlock = v46;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&aBlock);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0xD000000000000034;
  v25._object = 0x80000001001FB230;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
  MetatypeMetadata = &type metadata for String;
  *&aBlock = v16;
  *(&aBlock + 1) = v41;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&aBlock, &qword_10026D350, &qword_1001E6050);
  v26._object = 0x80000001001FB270;
  v26._countAndFlagsBits = 0xD000000000000010;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
  MetatypeMetadata = &type metadata for String;
  *&aBlock = v45;
  *(&aBlock + 1) = v38;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&aBlock, &qword_10026D350, &qword_1001E6050);
  v27._countAndFlagsBits = 41;
  v27._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
  LogInterpolation.init(stringInterpolation:)();
  v28 = static os_log_type_t.default.getter();
  sub_1000036B0(v28, v40);

  v29 = swift_allocObject();
  swift_beginAccess();
  v30 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v31 = v50;
  v32 = v44;
  (*(v50 + 16))(&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v44);
  v33 = (*(v31 + 80) + 40) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v35 = v58;
  *(v34 + 2) = v29;
  *(v34 + 3) = v35;
  *(v34 + 4) = v47;
  (*(v31 + 32))(&v34[v33], &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
  *&v34[(v13 + v33 + 7) & 0xFFFFFFFFFFFFFFF8] = v46;
  v54 = sub_1001192BC;
  v55 = v34;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v52 = sub_100117110;
  MetatypeMetadata = &unk_10024C9C8;
  v36 = _Block_copy(&aBlock);

  v24 = v43;
  [v43 startRequestWithCompletion:v36];
  _Block_release(v36);
LABEL_18:
}

uint64_t sub_100116864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v46 = a5;
  v45 = a4;
  v42 = type metadata accessor for JSCallable();
  v40 = *(v42 - 8);
  v11 = *(v40 + 64);
  __chkstk_darwin(v42);
  v41 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = 0x6C69626967696C65;
  *(inited + 40) = 0xEB00000000797469;
  *(inited + 72) = &type metadata for UInt;
  v43 = a1;
  *(inited + 48) = a1;
  v13 = Dictionary.init(dictionaryLiteral:)();
  if (a2)
  {
    v14 = a6;
    v15 = a3;
    swift_errorRetain();
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001E5F60;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v51 = type metadata accessor for JSFamily();
      *&v50 = v18;
      sub_100002C4C(&v50, &v52);
    }

    else
    {
      v19 = v44;
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v52 = v19;
    }

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v52);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v20 = v48;
    v21 = v49;
    MetatypeMetadata = v49;
    v22 = sub_100017E64(&v52);
    (*(*(v21 - 8) + 16))(v22, v20, v21);
    static LogInterpolation.safe(_:)();
    sub_100009F5C(&v52, &qword_10026D350, &qword_1001E6050);
    v23 = static os_log_type_t.error.getter();
    sub_1000036B0(v23, v16);

    v24 = objc_allocWithZone(type metadata accessor for JSError());
    swift_errorRetain();
    v25 = sub_1000505C8(a2);
    v26 = sub_100051018();

    MetatypeMetadata = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *&v52 = v26;
    sub_100002C4C(&v52, &v50);
    swift_isUniquelyReferenced_nonNull_native();
    v47 = v13;
    sub_10000DFC4();

    v13 = v47;
    a3 = v15;
    a6 = v14;
  }

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {
  }

  v28 = v27;
  sub_10011F068("lookUpEligibility(_:)", 21, 2, &v52);

  if (MetatypeMetadata)
  {
    v39[2] = v54;
    v39[1] = sub_100003CA8(&v52, MetatypeMetadata);
    v29 = v40;
    v30 = v41;
    v31 = v42;
    (*(v40 + 16))(v41, a6, v42);
    v32 = *(v29 + 80);
    v39[0] = v13;
    v33 = (v32 + 48) & ~v32;
    v34 = (v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v36 = v45;
    *(v35 + 2) = a3;
    *(v35 + 3) = v36;
    v37 = v43;
    *(v35 + 4) = v46;
    *(v35 + 5) = v37;
    (*(v29 + 32))(&v35[v33], v30, v31);
    *&v35[v34] = v39[0];
    *&v35[(v34 + 15) & 0xFFFFFFFFFFFFFFF8] = v44;

    dispatch thunk of TaskScheduler.schedule(task:)();

    return sub_100002C00(&v52);
  }

  else
  {

    return sub_100009F5C(&v52, &qword_10026D6C8, &unk_1001ECB60);
  }
}

uint64_t sub_100116E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v20 = type metadata accessor for JSFamily();
    *&v19 = v12;
    sub_100002C4C(&v19, &v21);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v21 = a7;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v21);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001001FB2E0;
  v13._countAndFlagsBits = 0xD000000000000030;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  MetatypeMetadata = &type metadata for UInt;
  *&v21 = a4;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&v21, &qword_10026D350, &qword_1001E6050);
  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  LogInterpolation.init(stringInterpolation:)();
  v15 = static os_log_type_t.default.getter();
  sub_1000036B0(v15, v10);

  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001E61B0;
  *(v16 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v16 + 32) = a6;

  sub_100105E34(v16);
}

void sub_100117110(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_1001171A0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  v8 = a4(v6);

  return v8;
}

uint64_t sub_100117230(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  return sub_100006CA4();
}

uint64_t sub_100117244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017F0C();
  sub_100003D48();
  if (([*(v12 + 256) ams_isiCloudAccount] & 1) != 0 || (v13 = objc_msgSend(*(*(v12 + 264) + OBJC_IVAR____TtC14amsengagementd8JSFamily_accountStore), "ams_iCloudAccountForAccount:", *(v12 + 256))) != 0 && (v14 = v13, v15 = objc_msgSend(v13, "isActive"), v14, v15))
  {
    if (qword_1002686E8 != -1)
    {
      sub_100003230(&qword_1002686E8);
    }

    v16 = *(v12 + 264);
    *(v12 + 272) = qword_100287848;
    *(v12 + 280) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v17 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v17);
    *(v12 + 288) = *(v18 + 72);
    *(v12 + 368) = *(v19 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1001E5F70;
    v21 = type metadata accessor for JSFamily();
    *(v12 + 296) = v21;
    *(v12 + 200) = v21;
    *(v12 + 176) = v16;
    v22 = *&v16[OBJC_IVAR____TtC14amsengagementd8JSFamily_runtime];
    if (*(v22 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
    {
    }

    v27 = v16;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v12 + 176));
    LogInterpolation.init(stringLiteral:)();
    v28 = static os_log_type_t.info.getter();
    sub_1000036B0(v28, v20);

    v29 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    *(v12 + 304) = v29;
    v30 = v22 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config;
    [v29 setCachePolicy:*(v22 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48) != 0];
    if (*(v30 + 48))
    {
      v31 = 30;
    }

    else
    {
      v31 = 1;
    }

    sub_1000E4CE0(v31);
    sub_100004AA0();
    v32 = swift_allocObject();
    *(v12 + 312) = v32;
    *(v32 + 16) = v29;
    v33 = v29;
    v34 = swift_task_alloc();
    *(v12 + 320) = v34;
    *v34 = v12;
    v34[1] = sub_100117860;
    sub_100004CBC();
    sub_10000481C();

    return v39(v35, v36, v37, v38, v39, v40, v41, v42, sub_100113B5C, a10, a11, a12);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      sub_100003230(&qword_1002686E8);
    }

    v23 = *(v12 + 264);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v24 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v24);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1001E5F70;
    *(v12 + 168) = type metadata accessor for JSFamily();
    *(v12 + 144) = v23;
    v26 = *&v23[OBJC_IVAR____TtC14amsengagementd8JSFamily_runtime];
    if (*(v26 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
    {
    }

    v56 = *(v12 + 256);
    v44 = v23;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v12 + 144));
    LogInterpolation.init(stringLiteral:)();
    v45 = static os_log_type_t.info.getter();
    sub_1000036B0(v45, v25);

    v46 = *(v26 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48);
    sub_100002BC0(0, &qword_10026DBC8, AMSFamilyInfoLookupTask_ptr);
    v47 = qword_1002685F8;
    v48 = v56;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = *(v12 + 256);
    v50 = qword_10026A070;
    swift_unknownObjectRetain();
    v51 = sub_1001181DC(v49, v50);
    *(v12 + 344) = v51;
    v52 = [v51 performFamilyInfoLookupWithCachePolicy:2 * (v46 == 0)];
    *(v12 + 352) = v52;
    *(v12 + 16) = v12;
    *(v12 + 56) = v12 + 240;
    *(v12 + 24) = sub_100117B6C;
    v53 = swift_continuation_init();
    *(v12 + 136) = sub_10007B9A4(&qword_10026DBD0, &qword_1001ED0F0);
    *(v12 + 80) = _NSConcreteStackBlock;
    *(v12 + 88) = 1107296256;
    *(v12 + 96) = sub_1001181B0;
    *(v12 + 104) = &unk_10024C888;
    *(v12 + 112) = v53;
    [v52 resultWithCompletion:v12 + 80];
    sub_10000481C();

    return _swift_continuation_await(v54);
  }
}

uint64_t sub_100117860()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 328) = v5;
  *(v3 + 336) = v0;

  if (!v0)
  {
  }

  sub_1000060D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100117968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017F0C();
  sub_100003D48();
  v14 = *(v12 + 328);
  if (v14)
  {
    sub_100119A6C(v14);

    sub_10000B214();
    sub_10000481C();

    return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    v24 = sub_100118480();
    v25 = sub_100007544(&type metadata for JSFamilyError, v24);
    *v26 = 0;
    swift_willThrow();
    *(v12 + 248) = v25;
    swift_errorRetain();
    sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
    if (swift_dynamicCast())
    {
      sub_100005F98();
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1001E5F70;
      *(v12 + 232) = v12 + 248;
      *(v12 + 208) = v13;
      v28 = v13;
      v29 = AMSLogKey();
      if (v29)
      {
        v30 = v29;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v31 = *(v12 + 304);
      static LogInterpolation.prefix(_:_:)();

      sub_100002C00((v12 + 208));
      sub_100018204();
      LogInterpolation.init(stringLiteral:)();
      v32 = static os_log_type_t.debug.getter();
      sub_1000036B0(v32, v27);

      v33 = sub_100007544(&type metadata for JSFamilyError, v24);
      sub_100015BBC(v33, v34, v35);
    }

    else
    {
      v31 = *(v12 + 304);
      swift_willThrow();
    }

    sub_100002D8C();
    sub_10000481C();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
  }
}

uint64_t sub_100117B6C()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 360) = *(v3 + 48);
  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}