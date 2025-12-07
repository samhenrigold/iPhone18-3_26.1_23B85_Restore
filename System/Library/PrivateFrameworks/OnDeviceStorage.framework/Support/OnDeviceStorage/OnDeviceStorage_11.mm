BOOL sub_1000F96A8(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v4 = *(a1 + 3);
  v3 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = a1[7];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v8 || v4 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v10 && v5 == v11)
  {
    if (v6 != v12)
    {
      return 0;
    }

    return v7 == v13;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v15 & 1) != 0 && v6 == v12)
  {
    return v7 == v13;
  }

  return result;
}

unint64_t sub_1000F97BC()
{
  result = qword_10016D348;
  if (!qword_10016D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D348);
  }

  return result;
}

uint64_t sub_1000F9810(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73657A6973 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6673736563637573 && a2 == 0xEF73646165526C75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010013DFA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010013D0F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010013DFC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010013D110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010013D130 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73726F727265 && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1000F9AAC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100026F94(&qword_10016D380, &qword_100133828);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100026F50(a1, a1[3]);
  sub_1000FA6D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100026FDC(a1);
  }

  sub_100026F94(&qword_10016D390, &unk_100133830);
  LOBYTE(v24) = 0;
  sub_1000FA790(&qword_10016D398, &protocol witness table for UInt64, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v28[0];
  LOBYTE(v28[0]) = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v28[0]) = 2;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v28[0]) = 3;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v28[0]) = 4;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v28[0]) = 5;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v28[0]) = 6;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100026F94(&qword_10016C050, &unk_100132200);
  v29[0] = 7;
  sub_1000FA7FC(&qword_10016D3A0, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v18 = v30;
  *&v24 = v9;
  *(&v24 + 1) = v10;
  v12 = v22;
  v11 = v23;
  *&v25 = v23;
  *(&v25 + 1) = v22;
  v13 = v20;
  v14 = v21;
  *&v26 = v21;
  *(&v26 + 1) = v20;
  *&v27 = v19;
  *(&v27 + 1) = v30;
  sub_1000FA728(&v24, v28);
  sub_100026FDC(a1);
  v28[0] = v9;
  v28[1] = v10;
  v28[2] = v11;
  v28[3] = v12;
  v28[4] = v14;
  v28[5] = v13;
  v28[6] = v19;
  v28[7] = v18;
  result = sub_1000FA760(v28);
  v16 = v25;
  *a2 = v24;
  a2[1] = v16;
  v17 = v27;
  a2[2] = v26;
  a2[3] = v17;
  return result;
}

uint64_t sub_1000F9E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C626174 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617265706F5FLL && a2 == 0xEE00657079546E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000FA03C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100026F94(&qword_10016D350, &qword_100133660);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_100026F50(a1, a1[3]);
  sub_1000FA370();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100026FDC(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v10;
  LOBYTE(v34[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v12;
  v26 = v11;
  LOBYTE(v34[0]) = 2;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v13;
  LOBYTE(v34[0]) = 3;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v35[0] = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  v17 = v28;
  v16 = v29;
  *&v30 = v9;
  *(&v30 + 1) = v29;
  v19 = v26;
  v18 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  v20 = v25;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v24;
  *(&v33 + 1) = v15;
  sub_10007048C(&v30, v34);
  sub_100026FDC(a1);
  v34[0] = v9;
  v34[1] = v16;
  v34[2] = v19;
  v34[3] = v17;
  v34[4] = v20;
  v34[5] = v18;
  v34[6] = v24;
  v34[7] = v15;
  result = sub_1000704E8(v34);
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  v23 = v33;
  a2[2] = v32;
  a2[3] = v23;
  return result;
}

unint64_t sub_1000FA370()
{
  result = qword_10016D358;
  if (!qword_10016D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D358);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScheduledNotification.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScheduledNotification.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000FA524(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000FA56C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1000FA5D0()
{
  result = qword_10016D368;
  if (!qword_10016D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D368);
  }

  return result;
}

unint64_t sub_1000FA628()
{
  result = qword_10016D370;
  if (!qword_10016D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D370);
  }

  return result;
}

unint64_t sub_1000FA680()
{
  result = qword_10016D378;
  if (!qword_10016D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D378);
  }

  return result;
}

unint64_t sub_1000FA6D4()
{
  result = qword_10016D388;
  if (!qword_10016D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D388);
  }

  return result;
}

uint64_t sub_1000FA790(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(&qword_10016D390, &unk_100133830);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000FA7FC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(&qword_10016C050, &unk_100132200);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseStatisticsResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseStatisticsResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000FA9BC()
{
  result = qword_10016D3C0;
  if (!qword_10016D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D3C0);
  }

  return result;
}

unint64_t sub_1000FAA14()
{
  result = qword_10016D3C8;
  if (!qword_10016D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D3C8);
  }

  return result;
}

unint64_t sub_1000FAA6C()
{
  result = qword_10016D3D0;
  if (!qword_10016D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D3D0);
  }

  return result;
}

uint64_t sub_1000FAAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A660 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_100173850, qword_10016D3D8);
}

id sub_1000FAB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (LintedMetricsEvent.isEmpty.getter())
  {
    return 0;
  }

  if (!a3)
  {
  }

  v6 = objc_allocWithZone(AMSMetricsEvent);

  v7 = String._bridgeToObjectiveC()();

  v5 = [v6 initWithTopic:v7];

  v8 = *(v3 + OBJC_IVAR____TtC19amsondevicestoraged26DaemonMetricsEventRecorder_anonymousTopics);
  v9 = [v5 topic];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  LOBYTE(v8) = sub_10009CCA8(v10, v12, v8);

  if (v8)
  {
    [v5 setAnonymous:1];
  }

  LintedMetricsEvent.fields.getter();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 addPropertiesWithDictionary:isa];

  return v5;
}

uint64_t sub_1000FACC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC19amsondevicestoraged26DaemonMetricsEventRecorder_metrics);
  if (v4)
  {
    v8 = *v3;
    v9 = v4;
    v10 = sub_1000FAB3C(a1, a2, a3);
    if (v10)
    {
      v11 = v10;
      sub_100026F94(&qword_10016D4F0, &qword_100133A10);
      v12 = Promise.__allocating_init()();
      sub_100026F94(&qword_10016D4F8, &qword_100133A18);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100133970;
      *(v13 + 32) = v11;
      sub_100096B74(0, &qword_10016D500, AMSMetricsEvent_ptr);
      v14 = v11;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v16 = [v9 promiseForEnqueueingEvents:isa];

      v17 = swift_allocObject();
      *(v17 + 16) = v12;
      *(v17 + 24) = v8;
      v26 = sub_1000FBD70;
      v27 = v17;
      v22 = _NSConcreteStackBlock;
      v23 = 1107296256;
      v24 = sub_10008287C;
      v25 = &unk_1001672C8;
      v18 = _Block_copy(&v22);

      [v16 addSuccessBlock:v18];
      _Block_release(v18);
      v19 = swift_allocObject();
      *(v19 + 16) = v12;
      *(v19 + 24) = v8;
      v26 = sub_1000FBD78;
      v27 = v19;
      v22 = _NSConcreteStackBlock;
      v23 = 1107296256;
      v24 = sub_1000740BC;
      v25 = &unk_100167318;
      v20 = _Block_copy(&v22);

      [v16 addErrorBlock:v20];
      _Block_release(v20);

      return v12;
    }
  }

  sub_100026F94(&qword_10016D4F0, &qword_100133A10);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_1000FAFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A688 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D3D8, qword_10016D3F0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  return Promise.resolve(_:)();
}

uint64_t sub_1000FB0F8(uint64_t a1)
{
  v1 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  if (qword_10016A688 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D3D8, qword_10016D3F0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010013E090;
  v2._countAndFlagsBits = 0xD00000000000002ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v7[3] = v6;
  v3 = sub_100042BAC(v7);
  (*(*(v6 - 8) + 16))(v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v7);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  return Promise.reject(_:)();
}

uint64_t sub_1000FB328()
{
  v1 = *(v0 + OBJC_IVAR____TtC19amsondevicestoraged26DaemonMetricsEventRecorder_metrics);
  if (v1)
  {
    v2 = *v0;
    sub_100026F94(&qword_10016D4E8, &qword_100133A08);
    v3 = v1;
    v4 = Promise.__allocating_init()();
    v5 = [v3 flush];
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v2;
    v15 = sub_1000FBD48;
    v16 = v6;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_1000FB7A0;
    v14 = &unk_100167228;
    v7 = _Block_copy(&v11);

    [v5 addSuccessBlock:v7];
    _Block_release(v7);
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v2;
    v15 = sub_1000FBD68;
    v16 = v8;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_1000740BC;
    v14 = &unk_100167278;
    v9 = _Block_copy(&v11);

    [v5 addErrorBlock:v9];
    _Block_release(v9);
  }

  else
  {
    sub_100026F94(&qword_10016D4E8, &qword_100133A08);
    v11 = 0;
    return Promise.__allocating_init(value:)();
  }

  return v4;
}

uint64_t sub_1000FB574(void *a1)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  if (qword_10016A688 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D3D8, qword_10016D3F0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0x2064656873756C46;
  v3._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  v7[3] = sub_100096B74(0, &qword_10016B568, NSNumber_ptr);
  v7[0] = a1;
  v4 = a1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v7);
  v5._countAndFlagsBits = 0x7363697274656D20;
  v5._object = 0xEF73746E65766520;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  v7[0] = [v4 integerValue];
  return Promise.resolve(_:)();
}

void sub_1000FB7A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000FB808(uint64_t a1)
{
  v1 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  if (qword_10016A688 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D3D8, qword_10016D3F0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010013E060;
  v2._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v7[3] = v6;
  v3 = sub_100042BAC(v7);
  (*(*(v6 - 8) + 16))(v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v7);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  return Promise.reject(_:)();
}

uint64_t sub_1000FBA38()
{
  v1 = OBJC_IVAR____TtC19amsondevicestoraged26DaemonMetricsEventRecorder_bag;
  v2 = type metadata accessor for Bag();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonMetricsEventRecorder(uint64_t a1)
{
  result = qword_10016D448;
  if (!qword_10016D448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FBB5C(uint64_t a1)
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

void sub_1000FBC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + OBJC_IVAR____TtC19amsondevicestoraged26DaemonMetricsEventRecorder_metrics);
  if (v4)
  {
    v11 = v4;
    v8 = sub_1000FAB3C(a1, a2, a3);
    if (v8)
    {
      v9 = v8;
      [v11 enqueueEvent:v8];

      v10 = v9;
    }

    else
    {
      v10 = v11;
    }
  }
}

uint64_t sub_1000FBD10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000FBD50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FBDB0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000FBDC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000FBE0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1000FBE68(uint64_t a1, char a2)
{
  v3 = type metadata accessor for ErrorCode.Daemon();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, **(&off_1001673D0 + a2), v3);
  v7 = ErrorCode.Daemon.errorCode.getter();
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1000FBF60(uint64_t a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      _StringGuts.grow(_:)(94);
      v7 = "d in this access credential: ";
      v8 = 0xD00000000000005CLL;
    }

    else
    {
      if (a2 == 3)
      {
        _StringGuts.grow(_:)(95);
        v3 = "The query is attempting to access columns which are not permitted in this access credential: ";
LABEL_11:
        v9 = (v3 - 32) | 0x8000000000000000;
        v8 = 0xD00000000000005DLL;
        goto LABEL_12;
      }

      _StringGuts.grow(_:)(67);
      v7 = "Enqueued metrics event";
      v8 = 0xD000000000000041;
    }

    v9 = v7 | 0x8000000000000000;
LABEL_12:
    String.append(_:)(*&v8);
    v10._countAndFlagsBits = Set.description.getter();
    String.append(_:)(v10);

    return 0;
  }

  if (a2)
  {
    _StringGuts.grow(_:)(95);
    v3 = "The query is attempting to access schemas which are not permitted in this access credential: ";
    goto LABEL_11;
  }

  _StringGuts.grow(_:)(56);
  v4._countAndFlagsBits = 0xD000000000000035;
  v4._object = 0x800000010013E250;
  String.append(_:)(v4);
  v5._countAndFlagsBits = hsql.StatementType.description.getter(v2);
  String.append(_:)(v5);

  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_1000FC150(uint64_t a1)
{
  v2 = sub_1000FC508();

  return RichError.description.getter(a1, v2);
}

uint64_t sub_1000FC18C(uint64_t a1)
{
  v2 = sub_1000FC508();

  return RichError.debugDescription.getter(a1, v2);
}

unint64_t sub_1000FC1D0()
{
  result = qword_10016D508;
  if (!qword_10016D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D508);
  }

  return result;
}

unint64_t sub_1000FC228()
{
  result = qword_10016D510;
  if (!qword_10016D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D510);
  }

  return result;
}

unint64_t sub_1000FC280()
{
  result = qword_10016D518;
  if (!qword_10016D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D518);
  }

  return result;
}

uint64_t sub_1000FC2D4(uint64_t result, uint64_t a2)
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
  v22 = result;
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
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
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

uint64_t sub_1000FC48C(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a4 != 2)
      {
        return 0;
      }
    }

    else if (a2 == 3)
    {
      if (a4 != 3)
      {
        return 0;
      }
    }

    else if (a4 != 4)
    {
      return 0;
    }

    return sub_1000FC2D4(a1, a3);
  }

  if (a2)
  {
    if (a4 != 1)
    {
      return 0;
    }

    return sub_1000FC2D4(a1, a3);
  }

  return !a4 && a1 == a3;
}

unint64_t sub_1000FC508()
{
  result = qword_10016D520;
  if (!qword_10016D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D520);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RateLimitError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000FC608()
{
  v1 = type metadata accessor for ErrorCode.Daemon();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &enum case for ErrorCode.Daemon.exceededCapacity(_:);
  if (!*v0)
  {
    v5 = &enum case for ErrorCode.Daemon.delayIsActive(_:);
  }

  (*(v2 + 104))(v4, *v5, v1);
  v6 = ErrorCode.Daemon.errorCode.getter();
  (*(v2 + 8))(v4, v1);
  return v6;
}

unint64_t sub_1000FC724()
{
  if (*v0)
  {
    return 0xD000000000000063;
  }

  else
  {
    return 0xD000000000000033;
  }
}

uint64_t sub_1000FC760(uint64_t a1)
{
  v2 = sub_1000FC93C();

  return RichError.description.getter(a1, v2);
}

uint64_t sub_1000FC79C(uint64_t a1)
{
  v2 = sub_1000FC93C();

  return RichError.debugDescription.getter(a1, v2);
}

unint64_t sub_1000FC7E0()
{
  result = qword_10016D528;
  if (!qword_10016D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D528);
  }

  return result;
}

unint64_t sub_1000FC838()
{
  result = qword_10016D530;
  if (!qword_10016D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D530);
  }

  return result;
}

unint64_t sub_1000FC890()
{
  result = qword_10016D538;
  if (!qword_10016D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D538);
  }

  return result;
}

unint64_t sub_1000FC8E8()
{
  result = qword_10016D540;
  if (!qword_10016D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D540);
  }

  return result;
}

unint64_t sub_1000FC93C()
{
  result = qword_10016D548;
  if (!qword_10016D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D548);
  }

  return result;
}

uint64_t sub_1000FCA10@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocalPreferences();
  v2 = static LocalPreferences.currentApplication.getter();
  v3 = type metadata accessor for ConfigurationStoreImplementation();
  v4 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v4 + 112) = v2;
  a1[3] = v3;
  a1[4] = &off_100164E30;
  *a1 = v4;
  return result;
}

uint64_t sub_1000FCA80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  sub_100026F94(&qword_10016D558, &qword_100133E88);
  BaseObjectGraph.inject<A>(_:)();

  v2 = sub_10004F464(v21, v21[3]);
  __chkstk_darwin(v2);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4);
  v6 = *v4;
  v7 = type metadata accessor for ConfigurationStoreImplementation();
  v20[3] = v7;
  v20[4] = &off_100164E30;
  v20[0] = v6;
  v8 = type metadata accessor for SecretsManagerImplementation();
  v9 = swift_allocObject();
  v10 = sub_10004F464(v20, v7);
  __chkstk_darwin(v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v18 = v7;
  v19 = &off_100164E30;
  *&v17 = v14;
  swift_defaultActor_initialize();
  sub_10002C604(&v17, v9 + 112);
  sub_100026FDC(v20);
  result = sub_100026FDC(v21);
  a1[3] = v8;
  a1[4] = &off_100165218;
  *a1 = v9;
  return result;
}

uint64_t sub_1000FCCBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  sub_100026F94(&qword_10016D558, &qword_100133E88);
  BaseObjectGraph.inject<A>(_:)();

  static BaseObjectGraph.current.getter();
  sub_100026F94(&qword_10016AD88, &qword_100130CB0);
  BaseObjectGraph.inject<A>(_:)();

  v2 = [objc_opt_self() defaultManager];
  type metadata accessor for FileManagerWrapper();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = sub_10004F464(v15, v15[3]);
  __chkstk_darwin(v4);
  v6 = (v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = sub_10004F464(v14, v14[3]);
  __chkstk_darwin(v8);
  v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_1000FEDF4(v3, *v6, *v10);

  sub_100026FDC(v14);
  sub_100026FDC(v15);
  result = type metadata accessor for DatabaseConnectionManagerImplementation();
  a1[3] = result;
  a1[4] = &off_100164E98;
  *a1 = v12;
  return result;
}

uint64_t sub_1000FCF38@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  sub_100026F94(&qword_10016AFE8, &qword_100130F00);
  BaseObjectGraph.inject<A>(_:)();

  static BaseObjectGraph.current.getter();
  sub_100026F94(&qword_10016CF08, &qword_100132F58);
  BaseObjectGraph.inject<A>(_:)();

  v2 = sub_10004F464(v9, v9[3]);
  __chkstk_darwin(v2);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4);
  sub_10004F464(v8, v8[3]);
  v6 = sub_1000FDC78(*v4);
  sub_100026FDC(v8);
  sub_100026FDC(v9);
  result = type metadata accessor for DataRegistryImplementation();
  a1[3] = result;
  a1[4] = &off_100164F18;
  *a1 = v6;
  return result;
}

uint64_t sub_1000FD0D4@<X0>(uint64_t *a1@<X8>)
{
  v49 = a1;
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  sub_100026F94(&qword_10016D558, &qword_100133E88);
  BaseObjectGraph.inject<A>(_:)();

  static BaseObjectGraph.current.getter();
  sub_100026F94(&qword_10016AFE8, &qword_100130F00);
  BaseObjectGraph.inject<A>(_:)();

  static BaseObjectGraph.current.getter();
  sub_100026F94(&qword_10016B008, &unk_100130F30);
  BaseObjectGraph.inject<A>(_:)();

  static BaseObjectGraph.current.getter();
  sub_100026F94(&qword_10016D560, &qword_100133E90);
  BaseObjectGraph.inject<A>(_:)();

  static BaseObjectGraph.current.getter();
  sub_100026F94(&qword_10016D550, &qword_100133E80);
  BaseObjectGraph.inject<A>(_:)();

  static BaseObjectGraph.current.getter();
  sub_100026F94(&qword_10016CF08, &qword_100132F58);
  BaseObjectGraph.inject<A>(_:)();

  v1 = sub_10004F464(v89, v89[3]);
  __chkstk_darwin(v1);
  v3 = (&v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v3);
  v5 = sub_10004F464(v88, v88[3]);
  __chkstk_darwin(v5);
  v7 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_10004F464(v87, v87[3]);
  __chkstk_darwin(v9);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10004F464(v86, v86[3]);
  __chkstk_darwin(v13);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  sub_10004F464(v85, v85[3]);
  sub_10004F464(v84, v84[3]);
  v17 = *v3;
  v18 = *v7;
  v19 = *v11;
  v20 = *v15;
  v21 = type metadata accessor for ConfigurationStoreImplementation();
  v83[3] = v21;
  v83[4] = &off_100164E30;
  v83[0] = v17;
  v47 = type metadata accessor for DatabaseConnectionManagerImplementation();
  v81 = v47;
  v82 = &off_100164E98;
  v80[0] = v18;
  v22 = type metadata accessor for DataRegistryImplementation();
  v78 = v22;
  v79 = &off_100164F18;
  v77[0] = v19;
  v23 = type metadata accessor for AccessCredentialFetcherImplementation();
  v75 = v23;
  v76 = &off_100164CC8;
  v74[0] = v20;
  v72 = &type metadata for SystemMonotonicTimeProvider;
  v73 = &off_100165388;
  v69 = &type metadata for SystemDateProvider;
  v70 = &off_100165258;
  v48 = type metadata accessor for AccessCredentialStoreImplementation();
  v24 = swift_allocObject();
  v25 = sub_10004F464(v83, v21);
  __chkstk_darwin(v25);
  v27 = (&v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = sub_10004F464(v80, v81);
  __chkstk_darwin(v29);
  v31 = (&v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = sub_10004F464(v77, v78);
  __chkstk_darwin(v33);
  v35 = (&v47 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = sub_10004F464(v74, v75);
  __chkstk_darwin(v37);
  v39 = (&v47 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  sub_10004F464(v71, v72);
  sub_10004F464(v68, v69);
  v41 = *v27;
  v42 = *v31;
  v43 = *v35;
  v44 = *v39;
  v66 = v21;
  v67 = &off_100164E30;
  *&v65 = v41;
  v64 = &off_100164E98;
  v63 = v47;
  *&v62 = v42;
  v60 = v22;
  v61 = &off_100164F18;
  *&v59 = v43;
  v57 = v23;
  v58 = &off_100164CC8;
  *&v56 = v44;
  v54 = &type metadata for SystemMonotonicTimeProvider;
  v55 = &off_100165388;
  v51 = &type metadata for SystemDateProvider;
  v52 = &off_100165258;
  swift_defaultActor_initialize();
  sub_10002C604(&v65, v24 + 112);
  sub_10002C604(&v62, v24 + 152);
  sub_10002C604(&v59, v24 + 192);
  sub_10002C604(&v56, v24 + 232);
  sub_10002C604(&v53, v24 + 272);
  sub_10002C604(&v50, v24 + 312);
  sub_100026FDC(v68);
  sub_100026FDC(v71);
  sub_100026FDC(v74);
  sub_100026FDC(v77);
  sub_100026FDC(v80);
  sub_100026FDC(v83);
  sub_100026FDC(v84);
  sub_100026FDC(v85);
  sub_100026FDC(v86);
  sub_100026FDC(v87);
  sub_100026FDC(v88);
  result = sub_100026FDC(v89);
  v46 = v49;
  v49[3] = v48;
  v46[4] = &off_100164CE0;
  *v46 = v24;
  return result;
}

uint64_t sub_1000FD9B4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  v6 = swift_allocObject();
  result = swift_defaultActor_initialize();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = v6;
  return result;
}

uint64_t sub_1000FDA44@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  sub_100026F94(&qword_10016C458, &qword_1001324C8);
  BaseObjectGraph.inject<A>(_:)();

  static BaseObjectGraph.current.getter();
  sub_100026F94(&qword_10016D550, &qword_100133E80);
  BaseObjectGraph.inject<A>(_:)();

  v8 = sub_10004F464(v15, v15[3]);
  __chkstk_darwin(v8);
  v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  sub_10004F464(v14, v14[3]);
  v12 = a1(*v10);
  sub_100026FDC(v14);
  sub_100026FDC(v15);
  result = a2(0);
  a4[3] = result;
  a4[4] = a3;
  *a4 = v12;
  return result;
}

uint64_t sub_1000FDBD4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  sub_100026F94(&qword_10016D558, &qword_100133E88);
  a1[3] = &type metadata for SystemStatusProvider;
  a1[4] = &off_100165580;
  v2 = swift_allocObject();
  *a1 = v2;
  BaseObjectGraph.inject<A>(_:)();

  *(v2 + 56) = 6291456;
  return result;
}

uint64_t sub_1000FDC78(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseConnectionManagerImplementation();
  v19[3] = v2;
  v19[4] = &off_100164E98;
  v19[0] = a1;
  v17 = &type metadata for SystemDateProvider;
  v18 = &off_100165258;
  type metadata accessor for DataRegistryImplementation();
  v3 = swift_allocObject();
  v4 = sub_10004F464(v19, v2);
  __chkstk_darwin(v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  sub_10004F464(v16, v17);
  v8 = *v6;
  v14 = v2;
  v15 = &off_100164E98;
  v12 = &off_100165258;
  *&v13 = v8;
  v11 = &type metadata for SystemDateProvider;
  swift_defaultActor_initialize();
  sub_10002C604(&v13, v3 + 112);
  sub_10002C604(&v10, v3 + 152);
  sub_100026FDC(v16);
  sub_100026FDC(v19);
  return v3;
}

uint64_t sub_1000FDDDC(uint64_t a1)
{
  v2 = type metadata accessor for AccessCredentialStoreImplementation();
  v19[3] = v2;
  v19[4] = &off_100164CE0;
  v19[0] = a1;
  v17 = &type metadata for SystemMonotonicTimeProvider;
  v18 = &off_100165388;
  type metadata accessor for RateLimitCheckerImplementation();
  v3 = swift_allocObject();
  v4 = sub_10004F464(v19, v2);
  __chkstk_darwin(v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  sub_10004F464(v16, v17);
  v8 = *v6;
  v14 = v2;
  v15 = &off_100164CE0;
  v12 = &off_100165388;
  *&v13 = v8;
  v11 = &type metadata for SystemMonotonicTimeProvider;
  swift_defaultActor_initialize();
  sub_10002C604(&v13, v3 + 112);
  sub_10002C604(&v10, v3 + 152);
  sub_100026FDC(v16);
  sub_100026FDC(v19);
  return v3;
}

uint64_t sub_1000FDF40(uint64_t a1)
{
  v2 = type metadata accessor for AccessCredentialStoreImplementation();
  v16[3] = v2;
  v16[4] = &off_100164CE0;
  v16[0] = a1;
  v14 = &type metadata for SystemMonotonicTimeProvider;
  v15 = &off_100165388;
  type metadata accessor for ClientSessionManagerImplementation();
  v3 = swift_allocObject();
  v4 = sub_10004F464(v16, v2);
  __chkstk_darwin(v4);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  sub_10004F464(v13, v14);
  v8 = *v6;
  v12[3] = v2;
  v12[4] = &off_100164CE0;
  v11[4] = &off_100165388;
  v12[0] = v8;
  v11[3] = &type metadata for SystemMonotonicTimeProvider;
  swift_defaultActor_initialize();
  sub_100026EEC(v12, v3 + 112);
  sub_100026EEC(v11, v3 + 152);
  v9 = sub_10008858C(_swiftEmptyArrayStorage);
  sub_100026FDC(v11);
  sub_100026FDC(v12);
  *(v3 + 192) = v9;
  sub_100026FDC(v13);
  sub_100026FDC(v16);
  return v3;
}

char *sub_1000FE0C8()
{
  v0 = type metadata accessor for Dependency();
  v56 = *(v0 - 8);
  v57 = v0;
  v1 = __chkstk_darwin(v0);
  v55 = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v72 = v54 - v4;
  v5 = __chkstk_darwin(v3);
  v69 = v54 - v6;
  v7 = __chkstk_darwin(v5);
  v70 = v54 - v8;
  v9 = __chkstk_darwin(v7);
  v58 = v54 - v10;
  v11 = __chkstk_darwin(v9);
  v71 = v54 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v54 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v54 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v54 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = v54 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = v54 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = v54 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = v54 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = v54 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = v54 - v38;
  __chkstk_darwin(v37);
  v41 = v54 - v40;
  sub_100026F94(&qword_10016CF08, &qword_100132F58);
  v59 = v41;
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016D550, &qword_100133E80);
  v60 = v39;
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016C570, &qword_1001326A8);
  v61 = v36;
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016D200, &qword_1001332A0);
  v62 = v33;
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016B128, &qword_100130F90);
  v63 = v30;
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016D558, &qword_100133E88);
  v65 = v27;
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016AD88, &qword_100130CB0);
  v66 = v24;
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v64 = v21;
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016AFE8, &qword_100130F00);
  v67 = v18;
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016B008, &unk_100130F30);
  v68 = v15;
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016D560, &qword_100133E90);
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016C458, &qword_1001324C8);
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016B158, &unk_100130FB0);
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016D210, &unk_1001332B8);
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016D568, &qword_100134180);
  Dependency.init<A>(satisfying:with:)();
  if (static Utils.isInternalBuild.getter())
  {
    sub_100026F94(&qword_10016AFF0, &qword_100130F08);
    v42 = v55;
    Dependency.init<A>(satisfying:with:)();
    type metadata accessor for BaseObjectGraph();
    sub_100026F94(&qword_10016D570, &qword_100133E98);
    v43 = v56;
    v44 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_10012FA10;
    v46 = v57;
    (*(v43 + 16))(v45 + v44, v42, v57);
    BaseObjectGraph.__allocating_init(name:_:)();
    v47 = *(v43 + 8);

    v47(v42, v46);
  }

  else
  {
    type metadata accessor for BaseObjectGraph();
    BaseObjectGraph.__allocating_init(name:_:)();
  }

  type metadata accessor for BaseObjectGraph();
  sub_100026F94(&qword_10016D570, &qword_100133E98);
  v48 = v56;
  v49 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10012FA10;
  v51 = v57;
  (*(v48 + 16))(v50 + v49, v59, v57);
  v54[8] = BaseObjectGraph.__allocating_init(name:_:)();
  v54[7] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v54[6] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v54[5] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v54[4] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v54[3] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v54[2] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v54[1] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v55 = dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  v52 = *(v48 + 8);
  v52(v72, v51);
  v52(v69, v51);
  v52(v70, v51);
  v52(v58, v51);
  v52(v71, v51);
  v52(v68, v51);
  v52(v67, v51);
  v52(v64, v51);
  v52(v66, v51);
  v52(v65, v51);
  v52(v63, v51);
  v52(v62, v51);
  v52(v61, v51);
  v52(v60, v51);
  v52(v59, v51);
  return v55;
}

uint64_t sub_1000FEB58()
{
  sub_100026FDC((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000FEB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for ConfigurationStoreImplementation();
  v20 = v11;
  v21 = &off_100164E30;
  v19[0] = a2;
  v18[3] = type metadata accessor for SecretsManagerImplementation();
  v18[4] = &off_100165218;
  v18[0] = a3;
  swift_defaultActor_initialize();
  *(a4 + 216) = 0;
  *(a4 + 224) = sub_1000887C4(_swiftEmptyArrayStorage);
  *(a4 + 232) = sub_100088994(_swiftEmptyArrayStorage);
  *(a4 + 240) = sub_100088B64(_swiftEmptyArrayStorage);
  sub_100026F94(&qword_10016D578, &qword_100133EA0);
  v12 = swift_allocObject();
  v17 = 0;

  nullsub_1();
  *(v12 + 24) = v17;
  *(v12 + 16) = a1;
  *(a4 + 112) = v12;
  sub_100026EEC(v19, a4 + 136);
  sub_100026EEC(v18, a4 + 176);
  v17 = 0;
  nullsub_1();
  *(a4 + 120) = v17;
  *(a4 + 128) = 0;
  type metadata accessor for Connection();
  sub_100026F50(v19, v20);
  sub_10004FE24(v11);
  static Connection.softHeapLimit(_:)();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a4;

  sub_10009C9B8(0, 0, v10, &unk_1001332E0, v14);

  sub_100026FDC(v18);
  sub_100026FDC(v19);
  return a4;
}

uint64_t sub_1000FEDF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v22 = type metadata accessor for ConfigurationStoreImplementation();
  v23 = &off_100164E30;
  v21[0] = a2;
  v19 = v6;
  v20 = &off_100165218;
  v18[0] = a3;
  type metadata accessor for DatabaseConnectionManagerImplementation();
  v7 = swift_allocObject();
  v8 = sub_10004F464(v21, v22);
  __chkstk_darwin(v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004F464(v18, v19);
  __chkstk_darwin(v12);
  v14 = (v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = sub_1000FEB90(a1, *v10, *v14, v7);
  sub_100026FDC(v18);
  sub_100026FDC(v21);
  return v16;
}

uint64_t sub_1000FEFF8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000FF038(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for Bag.Profile();
  v1[3] = swift_task_alloc();
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  v1[4] = Configuration;
  v1[5] = *(Configuration - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000FF124, 0, 0);
}

uint64_t sub_1000FF124()
{
  Bag.Profile.init(name:version:)();
  Bag.FetchConfiguration.init(profile:)();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000FF1FC;
  v2 = v0[6];
  v3 = v0[2];

  return static Bag.fetchBag(using:)(v3, v2);
}

uint64_t sub_1000FF1FC()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(v5 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000FF3B4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000FF3B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FF424(uint64_t a1)
{
  v1[22] = a1;
  v2 = type metadata accessor for Bag();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000FF4E4, 0, 0);
}

uint64_t sub_1000FF4E4()
{
  v0[26] = type metadata accessor for BaseObjectGraph();
  v0[27] = static BaseObjectGraph.current.getter();
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_1000FF5A0;
  v2 = v0[25];
  v3 = v0[23];

  return BaseObjectGraph.inject<A>(_:)(v2, v3, v3);
}

uint64_t sub_1000FF5A0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1000FFD3C;
  }

  else
  {

    v2 = sub_1000FF6BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FF6BC(uint64_t a1)
{
  *(v1 + 240) = static BaseObjectGraph.current.getter();
  v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v3 = swift_task_alloc();
  *(v1 + 248) = v3;
  *v3 = v1;
  v3[1] = sub_1000FF784;

  return BaseObjectGraph.inject<A>(_:)(v1 + 16, v2, v2);
}

uint64_t sub_1000FF784()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    (*(v2[24] + 8))(v2[25], v2[23]);

    v3 = sub_1000FFDA8;
  }

  else
  {

    v3 = sub_1000FF8DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000FF8DC(uint64_t a1)
{
  *(v1 + 264) = static BaseObjectGraph.current.getter();
  v2 = sub_100026F94(&qword_10016CF08, &qword_100132F58);
  v3 = swift_task_alloc();
  *(v1 + 272) = v3;
  *v3 = v1;
  v3[1] = sub_1000FF9A4;

  return BaseObjectGraph.inject<A>(_:)(v1 + 56, v2, v2);
}

uint64_t sub_1000FF9A4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    (*(v2[24] + 8))(v2[25], v2[23]);

    sub_100026FDC(v2 + 2);
    v3 = sub_1000FFE0C;
  }

  else
  {

    v3 = sub_1000FFAEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000FFAEC()
{
  v16 = v0[25];
  v1 = v0[22];
  v2 = v0[5];
  v3 = sub_10004F464((v0 + 2), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  sub_10004F464((v0 + 7), v0[10]);
  v6 = *v5;
  v7 = type metadata accessor for DataRegistryImplementation();
  v0[15] = v7;
  v0[16] = &off_100164F18;
  v0[12] = v6;
  v0[20] = &type metadata for SystemDateProvider;
  v0[21] = &off_100165258;
  v8 = type metadata accessor for NotificationCenterImplementation(0);
  v9 = swift_allocObject();
  v10 = sub_10004F464((v0 + 12), v7);
  v11 = *(v7 - 8);
  v12 = swift_task_alloc();
  (*(v11 + 16))(v12, v10, v7);
  sub_10004F464((v0 + 17), v0[20]);
  v13 = sub_1000FFE70(v16, *v12, v9);
  sub_100026FDC(v0 + 17);
  sub_100026FDC(v0 + 12);

  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 2);

  v1[3] = v8;
  v1[4] = &off_100164FE8;
  *v1 = v13;

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000FFD3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FFDA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FFE0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FFE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = type metadata accessor for DataRegistryImplementation();
  v17 = &off_100164F18;
  *&v15 = a2;
  v13 = &type metadata for SystemDateProvider;
  v14 = &off_100165258;
  swift_defaultActor_initialize();
  v6 = a3 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_cachedPrefixes;
  nullsub_1();
  *v6 = 0;
  *(v6 + 8) = 0;
  v7 = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_bag;
  v8 = type metadata accessor for Bag();
  (*(*(v8 - 8) + 32))(a3 + v7, a1, v8);
  sub_10002C604(&v15, a3 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry);
  v9 = (a3 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_engagementFactory);
  *v9 = sub_100070654;
  v9[1] = 0;
  sub_10002C604(&v12, a3 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dateProvider);
  v10 = (a3 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_scheduler);
  *v10 = 0;
  v10[1] = 0;
  return a3;
}

uint64_t sub_1000FFFA0()
{
  v0 = type metadata accessor for Dependency();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  type metadata accessor for Bag();
  Dependency.init<A>(satisfying:with:)();
  sub_100026F94(&qword_10016CB50, &qword_100133370);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_100026F94(&qword_10016D570, &qword_100133E98);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10012FA10;
  (*(v1 + 16))(v8 + v7, v6, v0);
  BaseObjectGraph.__allocating_init(name:_:)();
  v9 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v6, v0);
  return v9;
}

uint64_t sub_1001001AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A620 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_100173730, qword_10016D580);
}

uint64_t sub_100100210()
{
  *(v1 + 112) = v0;
  type metadata accessor for LogMessage.StringInterpolation();
  *(v1 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1001002A0, v0, 0);
}

uint64_t sub_1001002A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[14];
  v5 = *(v4 + 112);
  if (v5 >> 62 == 2 || (v5 >> 62 == 3 ? (v6 = v5 == 0xC000000000000000) : (v6 = 0), v6))
  {
    v12 = swift_task_alloc();
    v3[16] = v12;
    *v12 = v3;
    v12[1] = sub_10010051C;

    return sub_10010089C();
  }

  else
  {
    if (qword_10016A690 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016D580, qword_10016D598);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v7._object = 0x800000010013E3F0;
    v7._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    v8 = *(v4 + 112);
    v3[5] = &type metadata for BootstrapSession.State;
    v3[2] = v8;
    sub_100101388(v8);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504((v3 + 2));
    v9._countAndFlagsBits = 0x657461747320;
    v9._object = 0xE600000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_10010051C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = *(v3 + 112);

    return _swift_task_switch(sub_100100678, v5, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_100100678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A690 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D580, qword_10016D598);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010013E410;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = v3[10];
  v6 = v3[11];
  v3[9] = v6;
  v7 = sub_100042BAC(v3 + 6);
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v3 + 6));
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v9 = v3[1];

  return v9();
}

uint64_t sub_10010089C()
{
  v1[3] = v0;
  v1[4] = *v0;
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100100960, v0, 0);
}

uint64_t sub_100100960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A690 != -1)
  {
    swift_once();
  }

  v5 = v3[4];
  v4 = v3[5];
  v6 = v3[3];
  sub_100026F50(qword_10016D580, qword_10016D598);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = sub_100101234();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = v6;
  v9[5] = v5;
  swift_retain_n();
  v10 = sub_100053FA4(0, 0, v4, &unk_100133FC0, v9);
  v3[6] = v10;
  v11 = *(v6 + 112);
  *(v6 + 112) = v10;

  sub_100101204(v11);
  v12 = swift_task_alloc();
  v3[7] = v12;
  v13 = type metadata accessor for BaseObjectGraph();
  v14 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  *v12 = v3;
  v12[1] = sub_100100C14;

  return Task.value.getter(v3 + 2, v10, v13, v14, &protocol self-conformance witness table for Error);
}

uint64_t sub_100100C14()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100100DB4;
  }

  else
  {
    v4 = sub_100100D40;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100100D40()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100100DB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100100E40, 0, 0);
}

uint64_t sub_100100E40()
{
  v1 = *(v0 + 24);
  sub_1000FE0C8();

  sub_1000FFFA0();

  *(v0 + 32) = dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  return _swift_task_switch(sub_100100EE8, v1, 0);
}

uint64_t sub_100100EE8()
{
  v1 = v0[3];
  v2 = *(v1 + 112);
  *(v1 + 112) = v0[4] | 0x4000000000000000;

  sub_100101204(v2);
  if (qword_10016A690 != -1)
  {
    swift_once();
  }

  v3 = v0[4];
  v4 = v0[2];
  sub_100026F50(qword_10016D580, qword_10016D598);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  *v4 = v3;
  v5 = v0[1];

  return v5();
}

uint64_t sub_100101094()
{
  sub_100101204(*(v0 + 112));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001010F0(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10010110C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100101168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1001011C8(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_100101204(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  if (result >> 62 == 2)
  {
  }

  return result;
}

unint64_t sub_100101234()
{
  result = qword_10016D650;
  if (!qword_10016D650)
  {
    type metadata accessor for BootstrapSession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D650);
  }

  return result;
}

uint64_t sub_100101288()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001012C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042680;

  return sub_100100E20(a1, v4, v5, v6);
}

unint64_t sub_100101388(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  if (result >> 62 == 2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1001013B8()
{
  v97 = *v0;
  v73 = type metadata accessor for OSSignpostError();
  v1 = *(v73 - 8);
  __chkstk_darwin(v73);
  v3 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  __chkstk_darwin(v4 - 8);
  v86 = &v71 - v5;
  v81 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchWorkItemFlags();
  v82 = *(v85 - 8);
  __chkstk_darwin(v85);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  v96 = type metadata accessor for OSSignpostID();
  v98 = *(v96 - 8);
  v12 = __chkstk_darwin(v96);
  v90 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v71 - v15;
  __chkstk_darwin(v14);
  v18 = &v71 - v17;
  if (qword_10016A6A8 != -1)
  {
    swift_once();
  }

  v71 = v3;
  v72 = v1;
  v19 = type metadata accessor for OSSignposter();
  v20 = sub_10002FD14(v19, qword_10016D680);
  static OSSignpostID.exclusive.getter();
  v74 = v20;
  v21 = OSSignposter.logHandle.getter();
  v22 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v22, v24, "Daemon.run", "", v23, 2u);
  }

  v25 = v98;
  v26 = v96;
  (*(v98 + 16))(v16, v18, v96);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v87 = OSSignpostIntervalState.init(id:isOpen:)();
  v27 = *(v25 + 8);
  v98 = v25 + 8;
  v75 = v27;
  v27(v18, v26);
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  v28 = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v29 = *(type metadata accessor for LogMessage() - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v92 = *(v29 + 80);
  v93 = v30;
  v95 = v28;
  v32 = swift_allocObject();
  v91 = xmmword_10012FA10;
  *(v32 + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._countAndFlagsBits = 0x676E697472617453;
  v33._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  v34 = static Utils.daemonProcessName.getter();
  v102 = &type metadata for String;
  aBlock = v34;
  v100 = v35;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v36._object = 0x800000010013E4E0;
  v36._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v36);
  v94 = v31;
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v77 = sub_100096B74(0, &qword_10016D818, OS_dispatch_source_ptr);
  sub_100096B74(0, &qword_10016C288, OS_dispatch_queue_ptr);
  v37 = static OS_dispatch_queue.main.getter();
  v38 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v103 = sub_10010D454;
  v104 = 0;
  aBlock = _NSConcreteStackBlock;
  v100 = 1107296256;
  v78 = &v101;
  v101 = sub_10008287C;
  v102 = &unk_1001675A0;
  v39 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  sub_10010329C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v39);
  v82 = *(v82 + 8);
  v40 = v85;
  (v82)(v8, v85);
  v83 = *(v83 + 8);
  v41 = v84;
  (v83)(v10, v84);

  v76 = v38;
  OS_dispatch_source.resume()();
  v42 = v79;
  static OS_dispatch_source.MemoryPressureEvent.warning.getter();
  static OS_dispatch_source.makeMemoryPressureSource(eventMask:queue:)();
  (*(v80 + 8))(v42, v81);
  swift_getObjectType();
  v43 = swift_allocObject();
  *(v43 + 16) = v97;
  v103 = sub_10010D5B4;
  v104 = v43;
  aBlock = _NSConcreteStackBlock;
  v100 = 1107296256;
  v101 = sub_10008287C;
  v102 = &unk_1001675F0;
  v44 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  sub_10010329C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v44);
  (v82)(v8, v40);
  (v83)(v10, v41);

  OS_dispatch_source.resume()();
  v45 = type metadata accessor for TaskPriority();
  v46 = v86;
  (*(*(v45 - 8) + 56))(v86, 1, 1, v45);
  v47 = qword_10016A6C8;
  v48 = v89;

  if (v47 != -1)
  {
    swift_once();
  }

  v50 = qword_1001738A8;
  v51 = sub_10010E090(&qword_10016ADA0, v49, type metadata accessor for DaemonActor, &unk_100134054);
  v52 = swift_allocObject();
  v52[2] = v50;
  v52[3] = v51;
  v52[4] = v48;

  sub_10009C9B8(0, 0, v46, &unk_100134088, v52);

  sub_100026F50(qword_10016D658, qword_10016D670);
  *(swift_allocObject() + 16) = v91;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v53 = v88;
  dispatch thunk of XPCListener.activate()();
  v54 = v90;
  if (v53)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10016A6B0 != -1)
    {
      swift_once();
    }

    v55 = qword_10016D698;
    v56 = swift_allocObject();
    swift_weakInit();
    v57 = swift_allocObject();
    v58 = v97;
    *(v57 + 16) = v56;
    *(v57 + 24) = v58;
    v103 = sub_10010D6E8;
    v104 = v57;
    aBlock = _NSConcreteStackBlock;
    v100 = 1107296256;
    v101 = sub_100106928;
    v102 = &unk_100167690;
    v59 = _Block_copy(&aBlock);

    xpc_set_event_stream_handler("com.apple.distnoted.matching", v55, v59);
    _Block_release(v59);
    v60 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v61 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v62 = v71;
      checkForErrorAndConsumeState(state:)();

      v63 = v72;
      v64 = v73;
      if ((*(v72 + 88))(v62, v73) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v65 = "[Error] Interval already ended";
      }

      else
      {
        (*(v63 + 8))(v62, v64);
        v65 = "";
      }

      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, v61, v67, "Daemon.run", v65, v66, 2u);
    }

    v75(v54, v96);
    sub_100026F50(qword_10016D658, qword_10016D670);
    *(swift_allocObject() + 16) = v91;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    _CFRunLoopSetPerCalloutAutoreleasepoolEnabled();
    do
    {
      v68 = objc_autoreleasePoolPush();
      v69 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 15.0, 1u);
      objc_autoreleasePoolPop(v68);
    }

    while ((v69 - 1) >= 2);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100102214()
{
  type metadata accessor for Daemon();
  swift_allocObject();
  result = sub_1001026CC();
  qword_100173898 = result;
  return result;
}

uint64_t sub_100102334()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016D680);
  v1 = sub_10002FD14(v0, qword_10016D680);
  if (qword_10016A528 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_100173670);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001023FC()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_100096B74(0, &qword_10016C288, OS_dispatch_queue_ptr);
  v10 = static Utils.daemonProcessName.getter();
  v11 = v6;
  v7._countAndFlagsBits = 0x6575516B726F772ELL;
  v7._object = 0xEA00000000006575;
  String.append(_:)(v7);
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  static DispatchQoS.unspecified.getter();
  v10 = _swiftEmptyArrayStorage;
  sub_10010E090(&qword_10016C290, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100026F94(&qword_10016C298, &unk_1001323C0);
  sub_10002B95C(&qword_10016C2A0, &qword_10016C298, &unk_1001323C0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10016D698 = result;
  return result;
}

NSString sub_100102694()
{
  result = String._bridgeToObjectiveC()();
  qword_1001738A0 = result;
  return result;
}

uint64_t sub_1001026CC()
{
  v2 = *v0;
  v33 = v1;
  v34 = v2;
  v3 = type metadata accessor for XPCListener.InitializationOptions();
  __chkstk_darwin(v3 - 8);
  v32[1] = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v32 - v11;
  if (qword_10016A6A8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016D680);
  static OSSignpostID.exclusive.getter();
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v17, "Daemon.init", "", v16, 2u);
  }

  (*(v7 + 16))(v10, v12, v6);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v18 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v7 + 8))(v12, v6);
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0x696C616974696E49;
  v19._object = 0xED000020676E697ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  v20 = static Utils.daemonProcessName.getter();
  v35[3] = &type metadata for String;
  v35[0] = v20;
  v35[1] = v21;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v35);
  v22._countAndFlagsBits = 0x6E6F6D65616420;
  v22._object = 0xE700000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_10010ED78(0x70757472617453, 0xE700000000000000);
  type metadata accessor for BootstrapSession();
  v23 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v23 + 112) = 0xC000000000000000;
  v24 = v36;
  *(v36 + 16) = v23;
  static Utils.xpcServiceName.getter();
  if (qword_10016A6B0 != -1)
  {
    swift_once();
  }

  v25 = qword_10016D698;
  static XPCListener.InitializationOptions.inactive.getter();
  v26 = *(v24 + 16);
  v27 = swift_allocObject();
  v28 = v34;
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  type metadata accessor for XPCListener();
  swift_allocObject();

  v29 = v33;
  v30 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  if (v29)
  {
    sub_10010D91C("Daemon.init", 11, 2, v18);

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v24 + 24) = v30;
    sub_10010D91C("Daemon.init", 11, 2, v18);
  }

  return v24;
}

void sub_100102C80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_autoreleasePoolPush();
  sub_100102CF8(a1, a2, a3, a4);

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_100102CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v26 = a2;
  v27 = a3;
  v29 = a1;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v28 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100026F94(&qword_10016D840, &qword_1001340D8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  v10 = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v24 = *(*(type metadata accessor for LogMessage() - 8) + 72);
  v25 = v10;
  v11 = swift_allocObject();
  v23 = xmmword_10012FA10;
  *(v11 + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v12 = v29;
  v31 = v29;
  type metadata accessor for XPCListener.IncomingSessionRequest();

  ClientEntitlementChecker.init(_:)();
  v13._countAndFlagsBits = static Utils.xpcConnectionEntitlement.getter();
  v14 = ClientEntitlementChecker.hasEntitlement(_:)(v13);

  v15 = (*(v7 + 8))(v9, v6);
  if (v14)
  {
    __chkstk_darwin(v15);
    v16 = v27;
    *(&v23 - 2) = v26;
    *(&v23 - 1) = v16;
    sub_10010DCDC();
    return dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
  }

  else
  {
    sub_100026F50(qword_10016D658, qword_10016D670);
    *(swift_allocObject() + 16) = v23;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._object = 0x800000010013E9D0;
    v18._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    v19 = static Utils.xpcConnectionEntitlement.getter();
    v33 = &type metadata for String;
    v31 = v19;
    v32 = v20;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(&v31);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v22._countAndFlagsBits = 0xD00000000000003BLL;
    v22._object = 0x800000010013E9F0;
    String.append(_:)(v22);
    v34 = v12;
    _print_unlocked<A, B>(_:_:)();
    dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  }
}

uint64_t sub_100103144@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A6B0 != -1)
  {
    swift_once();
  }

  v9 = qword_10016D698;
  swift_weakInit();
  v10 = v9;
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  *a3 = v11;
  a3[1] = v13;
  swift_weakAssign();
  a3[3] = a2;
  a3[4] = v10;
}

uint64_t sub_10010329C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10010E090(&qword_10016BCC0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100026F94(&qword_10016BCC8, &unk_100131A20);
  sub_10002B95C(&qword_10016BCD0, &qword_10016BCC8, &unk_100131A20, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10010338C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v0 - 8);
  v19 = v0;
  __chkstk_darwin(v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.warning(_:)();

  static os_signpost_type_t.event.getter();
  sub_100096B74(0, &qword_10016D838, OS_os_log_ptr);
  v10 = static OS_os_log.default.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v7 + 8))(v9, v6);
  sub_100096B74(0, &qword_10016C288, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10010D804;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008287C;
  aBlock[3] = &unk_100167848;
  v12 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10010E090(&qword_10016BCC0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100026F94(&qword_10016BCC8, &unk_100131A20);
  sub_10002B95C(&qword_10016BCD0, &qword_10016BCC8, &unk_100131A20, &protocol conformance descriptor for [A]);
  v13 = v19;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v18 + 8))(v2, v13);
  (*(v16 + 8))(v5, v17);
}

uint64_t sub_10010385C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_10010E090(&qword_10016ADA0, v5, type metadata accessor for DaemonActor, &unk_100134054);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100103948, v7, v6);
}

uint64_t sub_100103948()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1001039DC;

  return sub_100100210();
}

uint64_t sub_1001039DC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100103B1C;

  return sub_100103D50();
}

uint64_t sub_100103B1C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_100103C5C;

  return sub_100104EC8();
}

uint64_t sub_100103C5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100103D50()
{
  v1[16] = v0;
  type metadata accessor for LogMessage.StringInterpolation();
  v1[17] = swift_task_alloc();
  v2 = type metadata accessor for OSSignpostID();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_10010E090(&qword_10016ADA0, v3, type metadata accessor for DaemonActor, &unk_100134054);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[22] = v5;
  v1[23] = v4;

  return _swift_task_switch(sub_100103ED0, v5, v4);
}

uint64_t sub_100103ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A6A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016D680);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "Daemon.scheduleBackgroundTasks", "", v7, 2u);
  }

  v9 = v3[20];
  v10 = v3[21];
  v11 = v3[18];
  v12 = v3[19];
  v13 = v3[16];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[24] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v14 = *(v13 + 16);
  v3[25] = v14;

  return _swift_task_switch(sub_100104088, v14, 0);
}

uint64_t sub_100104088()
{
  v1 = *(v0[25] + 112);
  v0[26] = v1;
  if ((v1 >> 62) - 2 >= 2)
  {
    if (v1 >> 62)
    {
      v0[32] = v1 & 0x3FFFFFFFFFFFFFFFLL;

      v7 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
      v8 = swift_task_alloc();
      v0[33] = v8;
      *v8 = v0;
      v8[1] = sub_1001045E0;

      return BaseObjectGraph.inject<A>(_:)(v0 + 2, v7, v7);
    }

    else
    {

      v4 = swift_task_alloc();
      v0[27] = v4;
      v5 = type metadata accessor for BaseObjectGraph();
      v6 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
      *v4 = v0;
      v4[1] = sub_100104298;

      return Task.value.getter(v0 + 14, v1, v5, v6, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_1001043C4;

    return sub_10010089C();
  }
}

uint64_t sub_100104298()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = sub_100104A44;
  }

  else
  {
    v4 = sub_10010497C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001043C4(uint64_t a1)
{
  v4 = *v2;
  v4[30] = v1;

  v5 = v4[25];
  if (v1)
  {
    v6 = sub_1001045C0;
  }

  else
  {
    v4[31] = a1;
    v6 = sub_100104500;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100104500()
{
  v0[32] = v0[31];
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_1001045E0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1001045E0()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_100104C60;
  }

  else
  {
    v5 = sub_100104AB0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10010471C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010013E760;
  v4._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = v3[11];
  v6 = v3[12];
  v3[10] = v6;
  v7 = sub_100042BAC(v3 + 7);
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v3 + 7));
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10010D91C("Daemon.scheduleBackgroundTasks", 30, 2, v3[24]);

  v9 = v3[1];

  return v9();
}

uint64_t sub_10010497C()
{
  sub_100101204(v0[26]);
  v0[32] = v0[14];
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_1001045E0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_100104A44()
{
  sub_100101204(v0[26]);
  v0[35] = v0[28];
  v1 = v0[22];
  v2 = v0[23];

  return _swift_task_switch(sub_10010471C, v1, v2);
}

uint64_t sub_100104AB0()
{
  v1 = v0[32];
  v2 = *sub_100026F50(v0 + 2, v0[5]);
  type metadata accessor for MaintenanceTask();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10010C80C(v3, 0xD000000000000029, 0x800000010013E790, v1, v2);

  type metadata accessor for OnlineMaintenanceTask();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10010CC24(v4, 0xD000000000000030, 0x800000010013E7C0, v1, v2);

  type metadata accessor for WeeklyMetricsTask();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10010D03C(v5, 0xD000000000000030, 0x800000010013E800, v1, v2);

  sub_100026FDC(v0 + 2);
  sub_10010D91C("Daemon.scheduleBackgroundTasks", 30, 2, v0[24]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100104C60()
{

  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010013E760;
  v1._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[11];
  v3 = v0[12];
  v0[10] = v3;
  v4 = sub_100042BAC(v0 + 7);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 7));
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10010D91C("Daemon.scheduleBackgroundTasks", 30, 2, v0[24]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100104EC8()
{
  v1[36] = v0;
  type metadata accessor for LogMessage.StringInterpolation();
  v1[37] = swift_task_alloc();
  sub_100026F94(&qword_10016CB48, &qword_100132C60);
  v1[38] = swift_task_alloc();
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v1[39] = swift_task_alloc();
  v2 = type metadata accessor for OSSignpostID();
  v1[40] = v2;
  v1[41] = *(v2 - 8);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v1[44] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v1[45] = sub_10010E090(&qword_10016ADA0, v3, type metadata accessor for DaemonActor, &unk_100134054);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[46] = v5;
  v1[47] = v4;

  return _swift_task_switch(sub_1001050C0, v5, v4);
}

uint64_t sub_1001050C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A6A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016D680);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "Daemon.scheduleInitialTasks", "", v7, 2u);
  }

  v9 = v3[42];
  v10 = v3[43];
  v11 = v3[40];
  v12 = v3[41];
  v13 = v3[36];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[48] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v14 = *(v13 + 16);
  v3[49] = v14;

  return _swift_task_switch(sub_100105278, v14, 0);
}

uint64_t sub_100105278()
{
  v1 = *(v0[49] + 112);
  v0[50] = v1;
  if ((v1 >> 62) - 2 >= 2)
  {
    if (v1 >> 62)
    {
      v0[56] = v1 & 0x3FFFFFFFFFFFFFFFLL;

      v7 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
      v8 = swift_task_alloc();
      v0[57] = v8;
      *v8 = v0;
      v8[1] = sub_1001057D0;

      return BaseObjectGraph.inject<A>(_:)(v0 + 2, v7, v7);
    }

    else
    {

      v4 = swift_task_alloc();
      v0[51] = v4;
      v5 = type metadata accessor for BaseObjectGraph();
      v6 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
      *v4 = v0;
      v4[1] = sub_100105488;

      return Task.value.getter(v0 + 34, v1, v5, v6, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v2 = swift_task_alloc();
    v0[53] = v2;
    *v2 = v0;
    v2[1] = sub_1001055B4;

    return sub_10010089C();
  }
}

uint64_t sub_100105488()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 392);
  if (v0)
  {
    v4 = sub_100105C48;
  }

  else
  {
    v4 = sub_100105B80;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001055B4(uint64_t a1)
{
  v4 = *v2;
  v4[54] = v1;

  v5 = v4[49];
  if (v1)
  {
    v6 = sub_1001057B0;
  }

  else
  {
    v4[55] = a1;
    v6 = sub_1001056F0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001056F0()
{
  v0[56] = v0[55];
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_1001057D0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1001057D0()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 376);
  v4 = *(v2 + 368);
  if (v0)
  {
    v5 = sub_10010602C;
  }

  else
  {
    v5 = sub_100105CB4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10010590C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010013E710;
  v4._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = v3[31];
  v6 = v3[32];
  v3[30] = v6;
  v7 = sub_100042BAC(v3 + 27);
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v3 + 27));
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10010D91C("Daemon.scheduleInitialTasks", 27, 2, v3[48]);

  v9 = v3[1];

  return v9();
}

uint64_t sub_100105B80()
{
  sub_100101204(v0[50]);
  v0[56] = v0[34];
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_1001057D0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_100105C48()
{
  sub_100101204(v0[50]);
  v0[59] = v0[52];
  v1 = v0[46];
  v2 = v0[47];

  return _swift_task_switch(sub_10010590C, v1, v2);
}

uint64_t sub_100105CB4()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);
  v4 = *(v0 + 312);
  v16 = *(v0 + 304);
  RevokedAccessCredentialsTask = type metadata accessor for FetchRevokedAccessCredentialsTask();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 1;
  *(v0 + 80) = RevokedAccessCredentialsTask;
  *(v0 + 88) = sub_10010E090(&qword_10016CA58, 255, type metadata accessor for FetchRevokedAccessCredentialsTask, &unk_1001329D8);
  *(v0 + 56) = v6;
  v7 = type metadata accessor for TaskPriority();
  v8 = *(*(v7 - 8) + 56);
  v8(v4, 1, 1, v7);
  sub_100026EEC(v0 + 56, v0 + 96);
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v3;
  sub_10002C604((v0 + 96), (v9 + 4));
  v9[9] = v1;
  swift_retain_n();

  sub_100053D08(0, 0, v4, &unk_1001340C0, v9);

  sub_100026FDC((v0 + 56));
  v10 = type metadata accessor for AccessCredential();
  (*(*(v10 - 8) + 56))(v16, 1, 1, v10);
  v11 = type metadata accessor for PostScheduledNotificationsTask(0);
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10010DBFC(v16, v12 + OBJC_IVAR____TtC19amsondevicestoraged30PostScheduledNotificationsTask_credential);
  *(v0 + 160) = v11;
  *(v0 + 168) = sub_10010E090(&qword_10016D270, 255, type metadata accessor for PostScheduledNotificationsTask, &unk_100132C08);
  *(v0 + 136) = v12;
  v8(v4, 1, 1, v7);
  sub_100026EEC(v0 + 136, v0 + 176);
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = v3;
  sub_10002C604((v0 + 176), (v13 + 4));
  v13[9] = v1;

  sub_100053D08(0, 0, v4, &unk_1001340C8, v13);

  sub_100026FDC((v0 + 16));
  sub_100026FDC((v0 + 136));
  sub_10010D91C("Daemon.scheduleInitialTasks", 27, 2, *(v0 + 384));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10010602C()
{

  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010013E710;
  v1._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[31];
  v3 = v0[32];
  v0[30] = v3;
  v4 = sub_100042BAC(v0 + 27);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 27));
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10010D91C("Daemon.scheduleInitialTasks", 27, 2, v0[48]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001062A8(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = XPC_EVENT_KEY_NAME.getter();
    if (xpc_dictionary_get_string(a1, v5))
    {
      v6 = String.init(cString:)();
      v8 = v7;
      if (qword_10016A6A0 != -1)
      {
        swift_once();
      }

      sub_100026F50(qword_10016D658, qword_10016D670);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v9._countAndFlagsBits = 0xD000000000000038;
      v9._object = 0x800000010013E5E0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v9);
      v12[3] = &type metadata for String;
      v12[0] = v6;
      v12[1] = v8;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002D504(v12);
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v10);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      if (v6 == 0xD000000000000030 && 0x800000010013E620 == v8)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
        }
      }

      sub_10010665C();
    }

    if (qword_10016A6A0 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016D658, qword_10016D670);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }

  return result;
}

uint64_t sub_10010665C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = qword_10016A6C8;

  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_1001738A8;
  v10 = sub_10010E090(&qword_10016ADA0, v8, type metadata accessor for DaemonActor, &unk_100134054);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = v1;
  v11[5] = v2;

  sub_10009C9B8(0, 0, v5, &unk_100134098, v11);
}

uint64_t sub_100106928(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100106988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  type metadata accessor for LogMessage.StringInterpolation();
  v4[27] = swift_task_alloc();
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v4[28] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v4[33] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v4[34] = sub_10010E090(&qword_10016ADA0, v6, type metadata accessor for DaemonActor, &unk_100134054);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[35] = v8;
  v4[36] = v7;

  return _swift_task_switch(sub_100106B48, v8, v7);
}

uint64_t sub_100106B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A6A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016D680);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "Daemon.scheduleCheckInstalledAppsTask", "", v7, 2u);
  }

  v9 = v3[31];
  v10 = v3[32];
  v11 = v3[29];
  v12 = v3[30];
  v13 = v3[26];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[37] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v14 = *(v13 + 16);
  v3[38] = v14;

  return _swift_task_switch(sub_100106D00, v14, 0);
}

uint64_t sub_100106D00()
{
  v1 = *(v0[38] + 112);
  v0[39] = v1;
  if ((v1 >> 62) - 2 >= 2)
  {
    if (v1 >> 62)
    {
      v0[45] = v1 & 0x3FFFFFFFFFFFFFFFLL;

      v7 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
      v8 = swift_task_alloc();
      v0[46] = v8;
      *v8 = v0;
      v8[1] = sub_100107258;

      return BaseObjectGraph.inject<A>(_:)(v0 + 2, v7, v7);
    }

    else
    {

      v4 = swift_task_alloc();
      v0[40] = v4;
      v5 = type metadata accessor for BaseObjectGraph();
      v6 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
      *v4 = v0;
      v4[1] = sub_100106F10;

      return Task.value.getter(v0 + 24, v1, v5, v6, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v2 = swift_task_alloc();
    v0[42] = v2;
    *v2 = v0;
    v2[1] = sub_10010703C;

    return sub_10010089C();
  }
}

uint64_t sub_100106F10()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 304);
  if (v0)
  {
    v4 = sub_1001076C4;
  }

  else
  {
    v4 = sub_1001075FC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10010703C(uint64_t a1)
{
  v4 = *v2;
  v4[43] = v1;

  v5 = v4[38];
  if (v1)
  {
    v6 = sub_100107238;
  }

  else
  {
    v4[44] = a1;
    v6 = sub_100107178;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100107178()
{
  v0[45] = v0[44];
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_100107258;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_100107258()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_100107924;
  }

  else
  {
    v5 = sub_100107730;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100107394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010013E6C0;
  v4._countAndFlagsBits = 0xD000000000000026;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = v3[21];
  v6 = v3[22];
  v3[20] = v6;
  v7 = sub_100042BAC(v3 + 17);
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v3 + 17));
  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10010D91C("Daemon.scheduleCheckInstalledAppsTask", 37, 2, v3[37]);

  v9 = v3[1];

  return v9();
}

uint64_t sub_1001075FC()
{
  sub_100101204(v0[39]);
  v0[45] = v0[24];
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_100107258;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1001076C4()
{
  sub_100101204(v0[39]);
  v0[48] = v0[41];
  v1 = v0[35];
  v2 = v0[36];

  return _swift_task_switch(sub_100107394, v1, v2);
}

uint64_t sub_100107730()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 224);
  v5 = type metadata accessor for CheckInstalledAppsTask();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 80) = v5;
  *(v0 + 88) = sub_10010E090(&qword_10016C978, 255, type metadata accessor for CheckInstalledAppsTask, &unk_100132778);
  *(v0 + 56) = v6;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100026EEC(v0 + 56, v0 + 96);
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v3;
  sub_10002C604((v0 + 96), (v8 + 4));
  v8[9] = v1;

  sub_100053D08(0, 0, v4, &unk_100130CC0, v8);

  sub_100026FDC((v0 + 16));
  sub_100026FDC((v0 + 56));
  sub_10010D91C("Daemon.scheduleCheckInstalledAppsTask", 37, 2, *(v0 + 296));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100107924()
{

  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010013E6C0;
  v1._countAndFlagsBits = 0xD000000000000026;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[21];
  v3 = v0[22];
  v0[20] = v3;
  v4 = sub_100042BAC(v0 + 17);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 17));
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10010D91C("Daemon.scheduleCheckInstalledAppsTask", 37, 2, v0[37]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100107BC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  if (*a2 != -1)
  {
    swift_once();
    v6 = a3;
  }

  return sub_100026EEC(v6, a4);
}

uint64_t sub_100107C10@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  v31 = a1;
  *a5 = a1;
  *(a5 + 8) = a2;
  v30 = a3;
  *(a5 + 16) = a3;
  v17 = *(type metadata accessor for Daemon.RequestHandler.Signpost(0) + 24);
  v18 = type metadata accessor for OSSignposter();
  v19 = *(v18 - 8);
  (*(v19 + 16))(a5 + v17, a4, v18);
  static OSSignpostID.exclusive.getter();
  v20 = OSSignposter.logHandle.getter();
  v29 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = v11;
  v28 = v10;
  if ((v30 & 1) == 0)
  {
    v22 = v31;
    if (v31)
    {
LABEL_9:
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v29, v24, v22, "", v23, 2u);

      v11 = v27;
      v10 = v28;
LABEL_10:

      (*(v11 + 16))(v14, v16, v10);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v25 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v19 + 8))(a4, v18);
      result = (*(v11 + 8))(v16, v10);
      *(a5 + 24) = v25;
      return result;
    }

    __break(1u);
  }

  if (v31 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v31 & 0xFFFFF800) != 0xD800)
  {
    if (v31 >> 16 <= 0x10)
    {
      v22 = &v32;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100107ECC()
{
  v1 = type metadata accessor for OSSignpostError();
  v18 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Daemon.RequestHandler.Signpost(0);
  v8 = *v0;
  v9 = *(v0 + 16);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v17 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v5 + 8))(v7, v4);
  }

  if ((v9 & 1) == 0)
  {
    if (v8)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      v12 = v18;
      if ((*(v18 + 88))(v3, v1) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v13 = "[Error] Interval already ended";
      }

      else
      {
        (*(v12 + 8))(v3, v1);
        v13 = "";
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v17, v15, v8, v13, v14, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v8 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v8 & 0xFFFFF800) != 0xD800)
  {
    if (v8 >> 16 <= 0x10)
    {
      v8 = &v19;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100108170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v64 = a1;
  v62 = type metadata accessor for RichFailure();
  __chkstk_darwin(v62);
  v61 = (&v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v60 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for XPCReceivedMessage();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v49 = v5;
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ClientMessage();
  v54 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v55 = v8;
  v56 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = &v46 - v9;
  v10 = type metadata accessor for OSSignposter();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Daemon.RequestHandler.Signpost(0);
  v47 = *(v14 - 8);
  v15 = __chkstk_darwin(v14 - 8);
  v52 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v16;
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  if (qword_10016A530 != -1)
  {
    swift_once();
  }

  v19 = sub_10002FD14(v10, qword_100173688);
  (*(v11 + 16))(v13, v19, v10);
  v66 = v18;
  sub_100107C10("RequestHandler.handleIncomingRequest", 36, 2, v13, v18);
  if (qword_10016A6C0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  v20 = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  v59 = v20;
  v21 = swift_allocObject();
  v58 = xmmword_10012FA10;
  *(v21 + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  sub_10010E090(&qword_10016D850, 255, &type metadata accessor for ClientMessage, &protocol conformance descriptor for ClientMessage);
  v22 = v64;
  XPCReceivedMessage.decode<A>(as:)();
  v61 = sub_1000837B8();
  v62 = v24;
  v60 = ClientMessage.userId.getter();
  v26 = v25;
  v27 = v50;
  v28 = v51;
  v29 = *(v51 + 16);
  v30 = v53;
  v29(v50, v22, v53);
  v71[3] = sub_100026F94(&qword_10016D880, &qword_100134190);
  v71[4] = sub_10002B95C(&qword_10016D888, &qword_10016D880, &qword_100134190, &protocol conformance descriptor for ClientEntitlementChecker<A>);
  sub_100042BAC(v71);
  ClientEntitlementChecker.init(_:)();
  v70[0] = v61;
  v70[1] = v62;
  v70[2] = v60;
  v70[3] = v26;
  v71[5] = sub_10008AF60;
  v71[6] = 0;
  v29(v27, v22, v30);
  v31 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v32 = swift_allocObject();
  (*(v28 + 32))(v32 + v31, v27, v30);
  v62 = *(v57 + 32);
  sub_10010DE1C(v57, v69);
  v61 = &type metadata accessor for ClientMessage;
  v33 = v56;
  sub_10010E248(v65, v56, &type metadata accessor for ClientMessage);
  sub_10004F224(v70, v67);
  v34 = v52;
  sub_10010E248(v66, v52, type metadata accessor for Daemon.RequestHandler.Signpost);
  v35 = (*(v54 + 80) + 56) & ~*(v54 + 80);
  v36 = (v55 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 95) & 0xFFFFFFFFFFFFFFF8;
  v38 = (*(v47 + 80) + v37 + 16) & ~*(v47 + 80);
  v39 = swift_allocObject();
  sub_10010DF64(v69, v39 + 16);
  v40 = v39 + v35;
  v41 = v61;
  sub_10010E57C(v33, v40, v61);
  v42 = v39 + v36;
  v43 = v67[3];
  *(v42 + 32) = v67[2];
  *(v42 + 48) = v43;
  *(v42 + 64) = v67[4];
  *(v42 + 80) = v68;
  v44 = v67[1];
  *v42 = v67[0];
  *(v42 + 16) = v44;
  v45 = (v39 + v37);
  *v45 = sub_10010E1C0;
  v45[1] = v32;
  sub_10010E57C(v34, v39 + v38, type metadata accessor for Daemon.RequestHandler.Signpost);

  XPCReceivedMessage.handoffReply(to:_:)();

  sub_100042AFC(v70);
  sub_10010E0D8(v65, v41);
  return sub_10010E0D8(v66, type metadata accessor for Daemon.RequestHandler.Signpost);
}

uint64_t sub_100108BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v35 = a4;
  v10 = type metadata accessor for Daemon.RequestHandler.Signpost(0);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ClientMessage();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v33 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_10010DE1C(a1, v38);
  sub_10010E248(a2, v16, &type metadata accessor for ClientMessage);
  sub_10004F224(a3, v36);
  sub_10010E248(v33, v12, type metadata accessor for Daemon.RequestHandler.Signpost);
  v21 = qword_10016A6C8;

  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_1001738A8;
  v24 = sub_10010E090(&qword_10016ADA0, v22, type metadata accessor for DaemonActor, &unk_100134054);
  v25 = (*(v14 + 80) + 88) & ~*(v14 + 80);
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v34 + 80) + v26 + 88) & ~*(v34 + 80);
  v28 = swift_allocObject();
  v28[2] = v23;
  v28[3] = v24;
  v28[4] = v35;
  v28[5] = a5;
  sub_10010DF64(v38, (v28 + 6));
  sub_10010E57C(v16, v28 + v25, &type metadata accessor for ClientMessage);
  v29 = v28 + v26;
  v30 = v36[3];
  *(v29 + 2) = v36[2];
  *(v29 + 3) = v30;
  *(v29 + 4) = v36[4];
  *(v29 + 10) = v37;
  v31 = v36[1];
  *v29 = v36[0];
  *(v29 + 1) = v31;
  sub_10010E57C(v12, v28 + v27, type metadata accessor for Daemon.RequestHandler.Signpost);

  sub_10009C9B8(0, 0, v19, &unk_1001341A0, v28);
}

uint64_t sub_100108F48(uint64_t a1)
{
  v28 = a1;
  v1 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  __chkstk_darwin(v1 - 8);
  v31 = &v27 - v2;
  v3 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OSSignposter();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Daemon.RequestHandler.Signpost(0);
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v11 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  if (qword_10016A530 != -1)
  {
    swift_once();
  }

  v14 = sub_10002FD14(v4, qword_100173688);
  (*(v5 + 16))(v7, v14, v4);
  sub_100107C10("RequestHandler.handleCancellation", 33, 2, v7, v13);
  if (qword_10016A6C0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x800000010013EA60;
  v15._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  v16 = type metadata accessor for XPCRichError();
  v32[3] = v16;
  v17 = sub_100042BAC(v32);
  (*(*(v16 - 8) + 16))(v17, v28, v16);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v32);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v19 = type metadata accessor for TaskPriority();
  v20 = v31;
  (*(*(v19 - 8) + 56))(v31, 1, 1, v19);
  sub_10010DE1C(v30, v32);
  sub_10010E248(v13, v11, type metadata accessor for Daemon.RequestHandler.Signpost);
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v22 = qword_1001738A8;
  v23 = sub_10010E090(&qword_10016ADA0, v21, type metadata accessor for DaemonActor, &unk_100134054);
  v24 = (*(v29 + 80) + 72) & ~*(v29 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v23;
  sub_10010DF64(v32, v25 + 32);
  sub_10010E57C(v11, v25 + v24, type metadata accessor for Daemon.RequestHandler.Signpost);

  sub_10009C9B8(0, 0, v20, &unk_100134170, v25);

  return sub_10010E0D8(v13, type metadata accessor for Daemon.RequestHandler.Signpost);
}

uint64_t sub_1001094B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100042680;

  return sub_100109578(a5);
}

uint64_t sub_100109578(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  type metadata accessor for LogMessage.StringInterpolation();
  v2[22] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_10010E090(&qword_10016ADA0, v3, type metadata accessor for DaemonActor, &unk_100134054);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[23] = v5;
  v2[24] = v4;

  return _swift_task_switch(sub_100109690, v5, v4);
}

uint64_t sub_100109690()
{
  v1 = *(*(v0 + 168) + 24);
  *(v0 + 200) = v1;
  return _swift_task_switch(sub_1001096B4, v1, 0);
}

uint64_t sub_1001096B4()
{
  v1 = *(v0[25] + 112);
  v0[26] = v1;
  if ((v1 >> 62) - 2 >= 2)
  {
    if (v1 >> 62)
    {
      v0[32] = v1 & 0x3FFFFFFFFFFFFFFFLL;

      v7 = sub_100026F94(&qword_10016D568, &qword_100134180);
      v8 = swift_task_alloc();
      v0[33] = v8;
      *v8 = v0;
      v8[1] = sub_100109C0C;

      return BaseObjectGraph.inject<A>(_:)(v0 + 2, v7, v7);
    }

    else
    {

      v4 = swift_task_alloc();
      v0[27] = v4;
      v5 = type metadata accessor for BaseObjectGraph();
      v6 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
      *v4 = v0;
      v4[1] = sub_1001098C4;

      return Task.value.getter(v0 + 18, v1, v5, v6, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_1001099F0;

    return sub_10010089C();
  }
}

uint64_t sub_1001098C4()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = sub_10010A040;
  }

  else
  {
    v4 = sub_100109F78;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001099F0(uint64_t a1)
{
  v4 = *v2;
  v4[30] = v1;

  v5 = v4[25];
  if (v1)
  {
    v6 = sub_100109BEC;
  }

  else
  {
    v4[31] = a1;
    v6 = sub_100109B2C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100109B2C()
{
  v0[32] = v0[31];
  v1 = sub_100026F94(&qword_10016D568, &qword_100134180);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_100109C0C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_100109C0C()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_10010A4A0;
  }

  else
  {
    v5 = sub_10010A0AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100109D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A6C0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010013EA90;
  v4._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = v3[15];
  v6 = v3[16];
  v3[10] = v6;
  v7 = sub_100042BAC(v3 + 7);
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v3 + 7));
  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100107ECC();

  v9 = v3[1];

  return v9();
}

uint64_t sub_100109F78()
{
  sub_100101204(v0[26]);
  v0[32] = v0[18];
  v1 = sub_100026F94(&qword_10016D568, &qword_100134180);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_100109C0C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_10010A040()
{
  sub_100101204(v0[26]);
  v0[35] = v0[28];
  v1 = v0[23];
  v2 = v0[24];

  return _swift_task_switch(sub_100109D48, v1, v2);
}

uint64_t sub_10010A0AC()
{
  v1 = v0[21];
  sub_100026F50(v0 + 2, v0[5]);
  v2 = *v1;
  v0[36] = *v1;
  v3 = v1[1];
  v0[37] = v3;
  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v4[1] = sub_10010A170;
  v5 = v0[32];

  return sub_10004DB70(v2, v3, v5);
}

uint64_t sub_10010A170()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_10010A290, v3, v2);
}

uint64_t sub_10010A290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A6C0 != -1)
  {
    swift_once();
  }

  v5 = v3[36];
  v4 = v3[37];
  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010013EAC0;
  v6._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v3[14] = &type metadata for String;
  v3[11] = v5;
  v3[12] = v4;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v3 + 11));
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026FDC(v3 + 2);
  sub_100107ECC();

  v8 = v3[1];

  return v8();
}

uint64_t sub_10010A4A0()
{

  if (qword_10016A6C0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010013EA90;
  v1._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[15];
  v3 = v0[16];
  v0[10] = v3;
  v4 = sub_100042BAC(v0 + 7);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 7));
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100107ECC();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10010A6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v14;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  type metadata accessor for ClientMessage();
  v8[18] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_10010E090(&qword_10016ADA0, v9, type metadata accessor for DaemonActor, &unk_100134054);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[19] = v11;
  v8[20] = v10;

  return _swift_task_switch(sub_10010A800, v11, v10);
}

uint64_t sub_10010A800()
{
  sub_10010E248(v0[15], v0[18], &type metadata accessor for ClientMessage);
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_10010A8C0;
  v2 = v0[18];
  v3 = v0[16];

  return sub_10010AAE0((v0 + 2), v2, v3);
}

uint64_t sub_10010A8C0()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_10010A9E0, v3, v2);
}

uint64_t sub_10010A9E0()
{
  v1 = *(v0 + 96);
  v7 = *(v0 + 40);
  v2 = *(v0 + 40);
  v3 = sub_100026F50((v0 + 16), v2);
  *(v0 + 80) = v7;
  v4 = sub_100042BAC((v0 + 56));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v1(v0 + 56);
  sub_100026FDC((v0 + 56));
  sub_100026FDC((v0 + 16));
  sub_100107ECC();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10010AAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  v4[32] = type metadata accessor for RichFailure();
  v4[33] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v4[34] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_10010E090(&qword_10016ADA0, v5, type metadata accessor for DaemonActor, &unk_100134054);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[35] = v7;
  v4[36] = v6;

  return _swift_task_switch(sub_10010AC2C, v7, v6);
}

uint64_t sub_10010AC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A6C0 != -1)
  {
    swift_once();
  }

  v4 = *(v3 + 240);
  v17 = *(v3 + 248);
  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  *(v3 + 296) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v5 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 304) = *(v5 + 72);
  *(v3 + 416) = *(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD000000000000017;
  v6._object = 0x800000010013EB60;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v7 = ClientMessage.description.getter();
  *(v3 + 80) = &type metadata for String;
  *(v3 + 56) = v7;
  *(v3 + 64) = v8;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v3 + 56);
  v9._countAndFlagsBits = 0x203A6D6F7266202CLL;
  v9._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v11 = *v4;
  v10 = v4[1];
  *(v3 + 112) = &type metadata for String;
  *(v3 + 88) = v11;
  *(v3 + 96) = v10;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v3 + 88);
  v12._object = 0x800000010013EB80;
  v12._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v13 = ClientMessage.estimatedSize.getter();
  *(v3 + 144) = &type metadata for Int;
  *(v3 + 120) = v13;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v3 + 120);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  v15 = *(v17 + 24);
  *(v3 + 312) = v15;

  return _swift_task_switch(sub_10010AECC, v15, 0);
}

uint64_t sub_10010AECC()
{
  v1 = *(v0[39] + 112);
  v0[40] = v1;
  if ((v1 >> 62) - 2 >= 2)
  {
    if (v1 >> 62)
    {
      v0[46] = v1 & 0x3FFFFFFFFFFFFFFFLL;

      v7 = sub_100026F94(&qword_10016D568, &qword_100134180);
      v8 = swift_task_alloc();
      v0[47] = v8;
      *v8 = v0;
      v8[1] = sub_10010B424;

      return BaseObjectGraph.inject<A>(_:)(v0 + 2, v7, v7);
    }

    else
    {

      v4 = swift_task_alloc();
      v0[41] = v4;
      v5 = type metadata accessor for BaseObjectGraph();
      v6 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
      *v4 = v0;
      v4[1] = sub_10010B0DC;

      return Task.value.getter(v0 + 26, v1, v5, v6, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v2 = swift_task_alloc();
    v0[43] = v2;
    *v2 = v0;
    v2[1] = sub_10010B208;

    return sub_10010089C();
  }
}

uint64_t sub_10010B0DC()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 312);
  if (v0)
  {
    v4 = sub_10010B918;
  }

  else
  {
    v4 = sub_10010B850;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10010B208(uint64_t a1)
{
  v4 = *v2;
  v4[44] = v1;

  v5 = v4[39];
  if (v1)
  {
    v6 = sub_10010B404;
  }

  else
  {
    v4[45] = a1;
    v6 = sub_10010B344;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10010B344()
{
  v0[46] = v0[45];
  v1 = sub_100026F94(&qword_10016D568, &qword_100134180);
  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  v2[1] = sub_10010B424;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_10010B424()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_10010BF1C;
  }

  else
  {
    v5 = sub_10010B984;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10010B560()
{
  v1 = v0[28];
  v9 = v0[29];
  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010013EBA0;
  v2._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v4 = v0[23];
  v3 = v0[24];
  v0[22] = v3;
  v5 = sub_100042BAC(v0 + 19);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 19));
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  swift_errorRetain();
  RichFailure.init(_:)();
  v1[3] = sub_100026F94(&qword_10016D858, &qword_100134188);
  v1[4] = sub_10002B95C(&qword_10016D860, &qword_10016D858, &qword_100134188, &protocol conformance descriptor for DaemonResponse<A, B>);
  sub_100042BAC(v1);
  sub_10010E090(&qword_10016D868, 255, &type metadata accessor for RichFailure, &protocol conformance descriptor for RichFailure);
  sub_10010E090(&qword_10016D870, 255, &type metadata accessor for RichFailure, &protocol conformance descriptor for RichFailure);
  sub_10010E090(&qword_10016D878, 255, &type metadata accessor for RichFailure, &protocol conformance descriptor for RichFailure);
  DaemonResponse.init<>(_:)();

  sub_10010E0D8(v9, &type metadata accessor for ClientMessage);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10010B850()
{
  sub_100101204(v0[40]);
  v0[46] = v0[26];
  v1 = sub_100026F94(&qword_10016D568, &qword_100134180);
  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  v2[1] = sub_10010B424;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_10010B918()
{
  sub_100101204(v0[40]);
  v0[49] = v0[42];
  v1 = v0[35];
  v2 = v0[36];

  return _swift_task_switch(sub_10010B560, v1, v2);
}

uint64_t sub_10010B984()
{
  v1 = v0[31];
  sub_100026F50(v0 + 2, v0[5]);
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[50] = v4;
  *v4 = v0;
  v4[1] = sub_10010BA48;
  v5 = v0[46];
  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[28];

  return sub_100042F90(v8, v6, v7, v3, v2, v5);
}

uint64_t sub_10010BA48()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_10010BC1C;
  }

  else
  {
    v5 = sub_10010BB84;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10010BB84()
{
  v1 = v0[29];

  sub_10010E0D8(v1, &type metadata accessor for ClientMessage);
  sub_100026FDC(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10010BC1C()
{

  sub_100026FDC(v0 + 2);
  v1 = v0[28];
  v9 = v0[29];
  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010013EBA0;
  v2._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v4 = v0[23];
  v3 = v0[24];
  v0[22] = v3;
  v5 = sub_100042BAC(v0 + 19);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 19));
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  swift_errorRetain();
  RichFailure.init(_:)();
  v1[3] = sub_100026F94(&qword_10016D858, &qword_100134188);
  v1[4] = sub_10002B95C(&qword_10016D860, &qword_10016D858, &qword_100134188, &protocol conformance descriptor for DaemonResponse<A, B>);
  sub_100042BAC(v1);
  sub_10010E090(&qword_10016D868, 255, &type metadata accessor for RichFailure, &protocol conformance descriptor for RichFailure);
  sub_10010E090(&qword_10016D870, 255, &type metadata accessor for RichFailure, &protocol conformance descriptor for RichFailure);
  sub_10010E090(&qword_10016D878, 255, &type metadata accessor for RichFailure, &protocol conformance descriptor for RichFailure);
  DaemonResponse.init<>(_:)();

  sub_10010E0D8(v9, &type metadata accessor for ClientMessage);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10010BF1C()
{

  v1 = v0[28];
  v9 = v0[29];
  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010013EBA0;
  v2._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v4 = v0[23];
  v3 = v0[24];
  v0[22] = v3;
  v5 = sub_100042BAC(v0 + 19);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 19));
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  swift_errorRetain();
  RichFailure.init(_:)();
  v1[3] = sub_100026F94(&qword_10016D858, &qword_100134188);
  v1[4] = sub_10002B95C(&qword_10016D860, &qword_10016D858, &qword_100134188, &protocol conformance descriptor for DaemonResponse<A, B>);
  sub_100042BAC(v1);
  sub_10010E090(&qword_10016D868, 255, &type metadata accessor for RichFailure, &protocol conformance descriptor for RichFailure);
  sub_10010E090(&qword_10016D870, 255, &type metadata accessor for RichFailure, &protocol conformance descriptor for RichFailure);
  sub_10010E090(&qword_10016D878, 255, &type metadata accessor for RichFailure, &protocol conformance descriptor for RichFailure);
  DaemonResponse.init<>(_:)();

  sub_10010E0D8(v9, &type metadata accessor for ClientMessage);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10010C21C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10010C280(uint64_t a1)
{
  type metadata accessor for DaemonActor();
  v1 = swift_allocObject();
  result = sub_10010C360();
  qword_1001738A8 = v1;
  return result;
}

uint64_t sub_10010C2BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10010C360()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v21 = v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v19);
  v20 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v10 = static Utils.daemonProcessName.getter();
  v12 = v11;

  v25 = v10;
  v26 = v12;
  v13._object = 0x800000010013E4B0;
  v13._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v13);
  v18[2] = v26;
  v18[3] = v25;
  if (qword_10016A6B0 != -1)
  {
    swift_once();
  }

  v14 = qword_10016D698;
  static DispatchQoS.unspecified.getter();
  type metadata accessor for DispatchQueueExecutor();
  v15 = swift_allocObject();
  v18[1] = sub_100096B74(0, &qword_10016C288, OS_dispatch_queue_ptr);
  (*(v4 + 16))(v7, v9, v3);
  v25 = _swiftEmptyArrayStorage;
  sub_10010E090(&qword_10016C290, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100026F94(&qword_10016C298, &unk_1001323C0);
  sub_10002B95C(&qword_10016C2A0, &qword_10016C298, &unk_1001323C0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v22 + 104))(v21, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v23);
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (*(v4 + 8))(v9, v3);
  *(v15 + 16) = v16;
  result = v24;
  *(v24 + 16) = v15;
  return result;
}

uint64_t sub_10010C718()
{
  v1 = *(v0 + 16);
  sub_10010E090(&qword_10016BCB8, 255, type metadata accessor for DispatchQueueExecutor, &unk_1001319C0);
  return v1;
}

uint64_t sub_10010C778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10010C7D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DaemonActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_10010C80C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  v10 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v29[3] = type metadata accessor for MaintenanceTask();
  v29[4] = sub_10010E090(&qword_10016D830, 255, type metadata accessor for MaintenanceTask, &unk_100132A78);
  v29[0] = a1;
  v11 = objc_opt_self();

  v12 = [v11 sharedScheduler];
  v13 = String._bridgeToObjectiveC()();
  if (qword_10016A570 != -1)
  {
    swift_once();
  }

  v14 = qword_10016C1D8;
  sub_100026EEC(v29, v28);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  sub_10002C604(v28, (v15 + 4));
  v15[9] = a4;
  v15[10] = v9;
  v26 = sub_10010ED74;
  v27 = v15;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000FB7A0;
  v25 = &unk_100167820;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 registerForTaskWithIdentifier:v13 usingQueue:v14 launchHandler:v16];
  _Block_release(v16);

  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016C198, qword_10016C1B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x800000010013E860;
  v18._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v25 = &type metadata for String;
  aBlock = a2;
  v23 = a3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v19._countAndFlagsBits = 0x746C75736572202CLL;
  v19._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  v25 = &type metadata for Bool;
  LOBYTE(aBlock) = v17;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return sub_100026FDC(v29);
}

uint64_t sub_10010CC24(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  v10 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v29[3] = type metadata accessor for OnlineMaintenanceTask();
  v29[4] = sub_10010E090(&qword_10016D828, 255, type metadata accessor for OnlineMaintenanceTask, &unk_100132B38);
  v29[0] = a1;
  v11 = objc_opt_self();

  v12 = [v11 sharedScheduler];
  v13 = String._bridgeToObjectiveC()();
  if (qword_10016A570 != -1)
  {
    swift_once();
  }

  v14 = qword_10016C1D8;
  sub_100026EEC(v29, v28);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  sub_10002C604(v28, (v15 + 4));
  v15[9] = a4;
  v15[10] = v9;
  v26 = sub_10010ED74;
  v27 = v15;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000FB7A0;
  v25 = &unk_1001677D0;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 registerForTaskWithIdentifier:v13 usingQueue:v14 launchHandler:v16];
  _Block_release(v16);

  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016C198, qword_10016C1B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x800000010013E860;
  v18._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v25 = &type metadata for String;
  aBlock = a2;
  v23 = a3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v19._countAndFlagsBits = 0x746C75736572202CLL;
  v19._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  v25 = &type metadata for Bool;
  LOBYTE(aBlock) = v17;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return sub_100026FDC(v29);
}

uint64_t sub_10010D03C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  v10 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v29[3] = type metadata accessor for WeeklyMetricsTask();
  v29[4] = sub_10010E090(&qword_10016D820, 255, type metadata accessor for WeeklyMetricsTask, &unk_100132FD8);
  v29[0] = a1;
  v11 = objc_opt_self();

  v12 = [v11 sharedScheduler];
  v13 = String._bridgeToObjectiveC()();
  if (qword_10016A570 != -1)
  {
    swift_once();
  }

  v14 = qword_10016C1D8;
  sub_100026EEC(v29, v28);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  sub_10002C604(v28, (v15 + 4));
  v15[9] = a4;
  v15[10] = v9;
  v26 = sub_10010DC70;
  v27 = v15;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000FB7A0;
  v25 = &unk_100167780;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 registerForTaskWithIdentifier:v13 usingQueue:v14 launchHandler:v16];
  _Block_release(v16);

  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016C198, qword_10016C1B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x800000010013E860;
  v18._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v25 = &type metadata for String;
  aBlock = a2;
  v23 = a3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v19._countAndFlagsBits = 0x746C75736572202CLL;
  v19._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  v25 = &type metadata for Bool;
  LOBYTE(aBlock) = v17;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return sub_100026FDC(v29);
}

void sub_10010D454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.warning(_:)();

  exit(0);
}

uint64_t sub_10010D58C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10010D5C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A444C;

  return sub_10010385C(a1, v4, v5, v6);
}

uint64_t sub_10010D678(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10010D6B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10010D6F8(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10010D744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A444C;

  return sub_100106988(a1, v4, v5, v6);
}

void sub_10010D804()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_10016A6B8 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_1001738A0 object:0];
}

uint64_t sub_10010D91C(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A6A8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016D680);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10010DBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026F94(&qword_10016CB48, &qword_100132C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010DC74()
{

  sub_100026FDC((v0 + 32));

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_10010DCDC()
{
  result = qword_10016D848;
  if (!qword_10016D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D848);
  }

  return result;
}

uint64_t sub_10010DD30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010DD78(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for Daemon.RequestHandler.Signpost(uint64_t a1)
{
  result = qword_10016D8E8;
  if (!qword_10016D8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10010DE54()
{
  v1 = (type metadata accessor for Daemon.RequestHandler.Signpost(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  swift_weakDestroy();

  v5 = v1[8];
  v6 = type metadata accessor for OSSignposter();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10010DF9C(uint64_t a1)
{
  v4 = *(type metadata accessor for Daemon.RequestHandler.Signpost(0) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100042680;

  return sub_1001094B0(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_10010E090(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10010E0D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10010E138()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10010E1C0(void *a1)
{
  type metadata accessor for XPCReceivedMessage();
  sub_100026F50(a1, a1[3]);
  return XPCReceivedMessage.reply<A>(_:)();
}

uint64_t sub_10010E248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010E2B0()
{
  v1 = *(type metadata accessor for ClientMessage() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Daemon.RequestHandler.Signpost(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);

  swift_weakDestroy();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        inserted = type metadata accessor for InsertRequest();
      }

      else
      {
        inserted = type metadata accessor for UpdateRequest();
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 7:
          inserted = type metadata accessor for DeleteRequest();
          break;
        case 8:
          inserted = type metadata accessor for DataDeletionTriggerRequest();
          break;
        case 9:
          inserted = type metadata accessor for StatusRequest();
          break;
        default:
          goto LABEL_23;
      }
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_23;
      }

      inserted = type metadata accessor for DisconnectionRequest();
    }

    else
    {
      inserted = type metadata accessor for ConnectionRequest();
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    inserted = type metadata accessor for SelectRequest();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    inserted = type metadata accessor for PluckRequest();
  }

  else
  {
    inserted = type metadata accessor for ScalarValueRequest();
  }

  (*(*(inserted - 8) + 8))(v0 + v3, inserted);
LABEL_23:
  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (((v10 + 95) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6;
  v12 = v0 + v10;

  sub_100026FDC((v12 + 32));

  v13 = *(v5 + 24);
  v14 = type metadata accessor for OSSignposter();
  (*(*(v14 - 8) + 8))(v0 + v11 + v13, v14);

  return _swift_deallocObject(v0, v11 + v7, v2 | v6 | 7);
}

uint64_t sub_10010E57C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010E5E4()
{
  v1 = *(type metadata accessor for ClientMessage() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 95) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for Daemon.RequestHandler.Signpost(0) - 8);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = v0 + ((v4 + *(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100108BB0(v0 + 16, v0 + v2, v0 + v3, v6, v7, v8);
}

uint64_t sub_10010E6D4()
{
  v1 = *(type metadata accessor for ClientMessage() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Daemon.RequestHandler.Signpost(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  swift_unknownObjectRelease();

  swift_weakDestroy();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        inserted = type metadata accessor for InsertRequest();
      }

      else
      {
        inserted = type metadata accessor for UpdateRequest();
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 7:
          inserted = type metadata accessor for DeleteRequest();
          break;
        case 8:
          inserted = type metadata accessor for DataDeletionTriggerRequest();
          break;
        case 9:
          inserted = type metadata accessor for StatusRequest();
          break;
        default:
          goto LABEL_23;
      }
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_23;
      }

      inserted = type metadata accessor for DisconnectionRequest();
    }

    else
    {
      inserted = type metadata accessor for ConnectionRequest();
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    inserted = type metadata accessor for SelectRequest();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    inserted = type metadata accessor for PluckRequest();
  }

  else
  {
    inserted = type metadata accessor for ScalarValueRequest();
  }

  (*(*(inserted - 8) + 8))(v0 + v3, inserted);
LABEL_23:
  v10 = v2 | v6;
  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + v6 + 88) & ~v6;
  v13 = v0 + v11;

  sub_100026FDC((v13 + 32));

  v14 = *(v5 + 24);
  v15 = type metadata accessor for OSSignposter();
  (*(*(v15 - 8) + 8))(v0 + v12 + v14, v15);

  return _swift_deallocObject(v0, v12 + v7, v10 | 7);
}

uint64_t sub_10010E99C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ClientMessage() - 8);
  v6 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for Daemon.RequestHandler.Signpost(0);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000A444C;

  return sub_10010A6D8(a1, v8, v9, v10, v11, (v1 + 6), v1 + v6, v1 + v7);
}

uint64_t sub_10010EB38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for OSSignposter();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10010EBF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OSSignposter();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10010EC9C(uint64_t a1)
{
  result = type metadata accessor for OSSignpostIntervalState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OSSignposter();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10010ED78(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  static Utils.daemonBundleId.getter();
  String.utf8CString.getter();

  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    if (qword_10016A6D0 != -1)
    {
      swift_once();
    }

    sub_100026EEC(qword_10016D928, v12);
    sub_100026F50(v12, v12[3]);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v6._object = 0x800000010013EBD0;
    v6._countAndFlagsBits = 0xD000000000000016;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    v11[3] = &type metadata for String;
    v7 = 0x296C6C756E28;
    if (a2)
    {
      v7 = a1;
    }

    v8 = 0xE600000000000000;
    if (a2)
    {
      v8 = a2;
    }

    v11[0] = v7;
    v11[1] = v8;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(v11);
    v9._countAndFlagsBits = 58;
    v9._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_100026FDC(v12);
    v10 = objc_autoreleasePoolPush();
    sub_10010F060();
    objc_autoreleasePoolPop(v10);
  }
}

uint64_t sub_10010EFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A628 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_100173758, qword_10016D928);
}

uint64_t sub_10010F03C(uint64_t a1)
{
  result = static Utils.daemonBundleId.getter();
  qword_10016D950 = result;
  unk_10016D958 = v2;
  return result;
}

uint64_t sub_10010F060()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() processInfo];
  v32 = v2;
  v4 = v3;
  v5 = [v4 environment];

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = 0;
  v9 = v6 + 64;
  v8 = *(v6 + 64);
  v30 = v6;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v31 = xmmword_10012FA10;
  if ((v11 & v8) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v14 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v14);
    ++v7;
    if (v12)
    {
      v7 = v14;
      do
      {
LABEL_8:
        v15 = (v7 << 10) | (16 * __clz(__rbit64(v12)));
        v16 = *(v30 + 56);
        v17 = (*(v30 + 48) + v15);
        v18 = v17[1];
        v33 = *v17;
        v19 = (v16 + v15);
        v20 = v19[1];
        v41 = *v19;
        v21 = qword_10016A6D0;

        v37 = v20;

        if (v21 != -1)
        {
          swift_once();
        }

        v12 &= v12 - 1;
        v35 = qword_10016D940;
        v36 = unk_10016D948;
        v34 = sub_100026F50(qword_10016D928, qword_10016D940);
        sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = v31;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v22._countAndFlagsBits = 0;
        v22._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v22);
        v40 = &type metadata for String;
        v38 = v33;
        v39 = v18;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002D504(&v38);
        v23._countAndFlagsBits = 61;
        v23._object = 0xE100000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v23);
        v40 = &type metadata for String;
        v38 = v41;
        v39 = v37;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002D504(&v38);
        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v24);
        LogMessage.init(stringInterpolation:)();
        Logger.debug(_:)();
      }

      while (v12);
    }
  }

  if (qword_10016A6D0 == -1)
  {
    goto LABEL_13;
  }

LABEL_15:
  swift_once();
LABEL_13:
  sub_100026F50(qword_10016D928, qword_10016D940);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = v31;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._object = 0x800000010013EBF0;
  v25._countAndFlagsBits = 0xD000000000000014;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  v26 = malloc_engaged_nano();
  v40 = &type metadata for Int32;
  LODWORD(v38) = v26;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&v38);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();
}

void sub_10010F4F8(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v3 = type metadata accessor for LogMessage.StringInterpolation();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  if (qword_10016A6D0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D928, qword_10016D940);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v14[3] = &type metadata for String;
  v14[0] = v13;
  v14[1] = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v14);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  (*(v4 + 16))(v7, v9, v3);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  exit(1);
}

void sub_10010F738(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(18);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 2629678;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  errno.getter();
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  sub_10010F4F8(0x6F6E20646C756F43, 0xEA00000000002074);
}

uint64_t sub_10010F814()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  if (qword_10016A6D0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D928, qword_10016D940);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010013EC10;
  v1._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  if (qword_10016A6D8 != -1)
  {
    swift_once();
  }

  v5[3] = &type metadata for String;
  v5[0] = qword_10016D950;
  v5[1] = unk_10016D958;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v5);
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  String.utf8CString.getter();
  v3 = _set_user_dir_suffix();

  if (!v3)
  {
    sub_10010F738(0xD00000000000001ELL, 0x800000010013EC30);
  }

  return result;
}

uint64_t CxxConvertibleToCollection.forEach(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v22 = &v21 - ((*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v32 = &v21 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v32;
  v10 = v32;
  (*(a4 + 32))(a3, a4);
  (*(a4 + 40))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 8);
  v36 = v9;
  v31 = v12;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v13 = *(v8 + 8);
    v13(v36, v7);
    return (v13)(v10, v7);
  }

  else
  {
    v14 = *(AssociatedConformanceWitness + 24);
    v26 = (v30 + 16);
    v27 = v14;
    v28 = AssociatedConformanceWitness + 24;
    v29 = (v30 + 8);
    v30 = v8 + 8;
    v24 = (v8 + 32);
    v25 = AssociatedConformanceWitness + 32;
    v16 = v22;
    v15 = AssociatedTypeWitness;
    while (1)
    {
      v17 = v27(v35, v7, AssociatedConformanceWitness);
      (*v26)(v16);
      v17(v35, 0);
      v33(v16);
      if (v4)
      {
        break;
      }

      (*v29)(v16, v15);
      v18 = v32;
      (*(AssociatedConformanceWitness + 32))(v7, AssociatedConformanceWitness);
      v13 = *v30;
      (*v30)(v10, v7);
      (*v24)(v10, v18, v7);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v13(v36, v7);
        return (v13)(v10, v7);
      }
    }

    (*v29)(v16, v15);
    v20 = *v30;
    (*v30)(v36, v7);
    return (v20)(v10, v7);
  }
}

uint64_t CxxConvertibleToCollection<>.forEach(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25 = a2;
  v26 = a5;
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v8 = &v19 - ((*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v19 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v11 = &v19 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_getAssociatedTypeWitness();
  v21 = *(v12 - 8);
  v13 = &v19 - ((*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v11, v27, a3);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v13;
  v15 = v20;
  v27 = v12;
  v23 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v22 = *(v15 + 48);
  if (v22(v9, 1, AssociatedTypeWitness) != 1)
  {
    v16 = *(v15 + 32);
    v17 = (v15 + 8);
    while (1)
    {
      v16(v8, v9, AssociatedTypeWitness);
      v24(v8);
      if (v5)
      {
        break;
      }

      (*v17)(v8, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      if (v22(v9, 1, AssociatedTypeWitness) == 1)
      {
        return (*(v21 + 8))(v26, v27);
      }
    }

    (*v17)(v8, AssociatedTypeWitness);
  }

  return (*(v21 + 8))(v26, v27);
}

uint64_t sub_1001101D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(&v8 - ((*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0), a1, AssociatedTypeWitness);
  return dispatch thunk of RangeReplaceableCollection.append(_:)();
}

uint64_t sub_10011031C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t, uint64_t)@<X5>, void (*a6)(char *)@<X6>, uint64_t a7@<X8>)
{
  a5(a1, a3);
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a7;
  return CxxConvertibleToCollection.forEach(_:)(a6, v14, a2, a4);
}

uint64_t sub_1001103AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v10 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, AssociatedTypeWitness);
  dispatch thunk of SetAlgebra.insert(_:)();
  return (*(v7 + 8))(v8, AssociatedTypeWitness);
}

uint64_t CxxDictionary.init<>(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = &v45 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(AssociatedTypeWitness - 8);
  v52 = &v45 - ((*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v49 = *(v9 - 8);
  v66 = &v45 - ((*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v9;
  v51 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = type metadata accessor for Optional();
  v69 = *(v64 - 8);
  v11 = &v45 - ((*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v11;
  v12 = *(a3 + 88);
  v56 = a4;
  v57 = a2;
  v58 = a3;
  result = v12(a2, a3);
  v14 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaDictionary.makeIterator()();
    v46 = 0;
    v15 = 0;
    v16 = 0;
    v14 = result | 0x8000000000000000;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v18 = *(a1 + 64);
    v46 = a1 + 64;
    v15 = ~v17;
    v19 = -v17;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v16 = v20 & v18;
  }

  v21 = 0;
  v68 = (v49 + 32);
  v22 = (v50 + 32);
  v61 = TupleTypeMetadata2 - 8;
  v45 = v15;
  v23 = (v15 + 64) >> 6;
  v48 = v49 + 16;
  v47 = v50 + 16;
  v60 = (v69 + 32);
  v53 = v11;
  v54 = (v50 + 56);
  v65 = v14;
  v24 = v51;
  v25 = v66;
  v26 = v67;
  while (1)
  {
    v62 = v16;
    v59 = v21;
    if ((v14 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (__CocoaDictionary.Iterator.next()())
    {
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v36 = v21;
      v35 = v52;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v28 = v36;
      v69 = v16;
      goto LABEL_20;
    }

    v38 = 1;
    v44 = v16;
    v30 = v21;
    v69 = v44;
    v11 = v53;
LABEL_21:
    v39 = *(TupleTypeMetadata2 - 8);
    (*(v39 + 56))(v11, v38, 1, TupleTypeMetadata2);
    v40 = v63;
    (*v60)(v63, v11, v64);
    if ((*(v39 + 48))(v40, 1, TupleTypeMetadata2) == 1)
    {
      return sub_100042570(v65);
    }

    v41 = *(TupleTypeMetadata2 + 48);
    v26 = v67;
    v25 = v66;
    (*v68)(v66, v40, v67);
    v42 = &v40[v41];
    v43 = v55;
    (*v22)(v55, v42, v24);
    (*v54)(v43, 0, 1, v24);
    result = CxxDictionary.subscript.setter(v43, v25, v57, v58);
    v21 = v30;
    v16 = v69;
    v14 = v65;
  }

  v27 = v16;
  v28 = v21;
  if (v16)
  {
LABEL_17:
    v69 = (v27 - 1) & v27;
    v32 = __clz(__rbit64(v27)) | (v28 << 6);
    v33 = v14;
    (*(v49 + 16))(v25, *(v14 + 48) + *(v49 + 72) * v32, v26);
    v34 = *(v33 + 56);
    v24 = v51;
    v35 = v52;
    (*(v50 + 16))(v52, v34 + *(v50 + 72) * v32, v51);
LABEL_20:
    v37 = *(TupleTypeMetadata2 + 48);
    v11 = v53;
    (*v68)(v53);
    (*v22)(&v11[v37], v35, v24);
    v38 = 0;
    v30 = v28;
    goto LABEL_21;
  }

  if (v23 <= v21 + 1)
  {
    v29 = v21 + 1;
  }

  else
  {
    v29 = v23;
  }

  v30 = v29 - 1;
  v31 = v21;
  while (1)
  {
    v28 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v69 = 0;
      v38 = 1;
      goto LABEL_21;
    }

    v27 = *(v46 + 8 * v28);
    ++v31;
    if (v27)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t CxxDictionary.subscript.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 1);
  v38 = &v31 - ((*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_getAssociatedTypeWitness();
  v35 = *(v7 - 8);
  v36 = v7;
  v34 = &v31 - ((*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = swift_getAssociatedTypeWitness();
  v33 = *(v41 - 8);
  v32 = &v31 - ((*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v40 = *(v8 - 8);
  v9 = &v31 - ((*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 + 8);
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v42 = &v31 - ((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v42;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    v14 = type metadata accessor for Optional();
    (*(*(v14 - 8) + 8))(a1, v14);
    v15 = v38;
    v16 = v43;
    (*(a4 + 120))(v43, a3, a4);
    v17 = swift_getAssociatedTypeWitness();
    (*(*(v17 - 8) + 8))(v16, v17);
    return (*(v37 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v19 = *(v12 + 32);
    v38 = v10;
    AssociatedTypeWitness = v19;
    v19(v13, a1, v11);
    (*(a4 + 104))(v43, a3, a4);
    (*(a4 + 152))(a3, a4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v40 = *(v40 + 8);
    (v40)(v9, v8);
    if (v21)
    {
      (v40)(v9, v8);
      v22 = v42;
      AssociatedTypeWitness(v42, v13, v11);
      v23 = v41;
      v24 = swift_getAssociatedConformanceWitness();
      v25 = v32;
      (*(v24 + 24))(v43, v22, v23, v24);
      v26 = v34;
      (*(a4 + 112))(v25, a3, a4);
      (*(v35 + 8))(v26, v36);
      return (*(v33 + 8))(v25, v23);
    }

    else
    {
      v27 = swift_getAssociatedTypeWitness();
      (*(*(v27 - 8) + 8))(v43, v27);
      AssociatedTypeWitness(v42, v13, v11);
      v28 = (*(AssociatedConformanceWitness + 24))(v44, v8, AssociatedConformanceWitness);
      v29 = v41;
      v30 = swift_getAssociatedConformanceWitness();
      (*(v30 + 64))(v42, v29, v30);
      v28(v44, 0);
      return (v40)(v9, v8);
    }
  }
}

uint64_t CxxDictionary.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = &v24 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v32 = &v24 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v25 = *(v12 + 64);
  v13 = &v24 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 88);
  v34 = a4;
  v35 = a2;
  v36 = a3;
  v14(a2, a3);
  if (Array.endIndex.getter())
  {
    v15 = 0;
    v16 = *(TupleTypeMetadata2 + 48);
    v29 = AssociatedTypeWitness;
    v30 = (v12 + 16);
    v27 = (v10 + 32);
    v28 = v16;
    v26 = AssociatedTypeWitness - 8;
    v17 = v31;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v12 + 16))(v13, a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v15, TupleTypeMetadata2);
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v25 != 8)
        {
          __break(1u);
          return result;
        }

        v37 = result;
        (*v30)(v13, &v37, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_10:
          __break(1u);
        }
      }

      v20 = v32;
      (*v27)(v32, v13, v33);
      v21 = v29;
      v22 = *(v29 - 8);
      (*(v22 + 32))(v17, &v13[v28], v29);
      (*(v22 + 56))(v17, 0, 1, v21);
      CxxDictionary.subscript.setter(v17, v20, v35, v36);
      ++v15;
      if (v19 == Array.endIndex.getter())
      {
      }
    }
  }
}

uint64_t CxxDictionary.init<A>(grouping:by:)@<X0>(void (**a1)(char *, void *)@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v83 = a9;
  v76 = a2;
  v77 = a8;
  v75 = a3;
  v82 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = &v50 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = AssociatedTypeWitness;
  v66 = *(AssociatedTypeWitness - 8);
  v59 = &v50 - ((*(v66 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = swift_getAssociatedTypeWitness();
  v67 = *(v61 - 1);
  v73 = &v50 - ((*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v73;
  v86 = a4;
  v13 = a6;
  v72 = swift_getAssociatedTypeWitness();
  v55 = *(v72 - 8);
  v58 = &v50 - ((*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v58;
  v15 = swift_getAssociatedTypeWitness();
  v81 = *(v15 - 8);
  v85 = &v50 - ((*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = &v50 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v51 = *(v16 - 8);
  v17 = &v50 - ((*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 88))(v86, v13);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v78 = v17;
  v79 = v16;
  v19 = v80;
  v71 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v20 = v81;
  v21 = *(v81 + 48);
  v70 = v81 + 48;
  v69 = v21;
  if (v21(v19, 1, v15) == 1)
  {
    return (*(v51 + 8))(v78, v79);
  }

  v68 = *(v20 + 32);
  v64 = v13 + 104;
  v63 = v13 + 152;
  v82 = (v67 + 8);
  v57 = (v55 + 8);
  v62 = v77 + 64;
  v81 = v20 + 32;
  v67 = v20 + 8;
  v56 = v77 + 56;
  v55 += 32;
  v54 = (v66 + 32);
  v53 = (v66 + 56);
  v23 = v61;
  v66 = v14;
  v65 = v15;
  v52 = v12;
  while (1)
  {
    v33 = v85;
    v68(v85, v19, v15);
    v34 = v89;
    v76(v33);
    v89 = v34;
    if (v34)
    {
      break;
    }

    v35 = v86;
    (*(v13 + 104))(v14, v86, v13);
    v36 = v12;
    v37 = v73;
    (*(v13 + 152))(v35, v13);
    v38 = v14;
    v39 = swift_getAssociatedConformanceWitness();
    v40 = v36;
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    v84 = *v82;
    v84(v37, v23);
    if (v41)
    {
      v84(v36, v23);
      v24 = v77;
      v25 = v59;
      v26 = v74;
      (*(v77 + 56))(v74, v77);
      v27 = v85;
      (*(v24 + 64))(v85, v26, v24);
      v28 = v65;
      (*v67)(v27, v65);
      v29 = v58;
      v30 = v38;
      v15 = v28;
      (*v55)(v58, v30, v72);
      v31 = v60;
      (*v54)(v60, v25, v26);
      (*v53)(v31, 0, 1, v26);
      CxxDictionary.subscript.setter(v31, v29, v86, v13);
      v12 = v40;
    }

    else
    {
      (*v57)(v38, v72);
      v61 = (*(v39 + 24))(v88, v23, v39);
      swift_getAssociatedTypeWitness();
      v42 = swift_getAssociatedConformanceWitness();
      v43 = v13;
      v44 = *(v42 + 72);
      v45 = swift_checkMetadataState();
      v46 = v77;
      v47 = v44(v87, v45, v42);
      v13 = v43;
      v48 = v47;
      v49 = v85;
      (*(v46 + 64))(v85, v74, v46);
      v15 = v65;
      (*v67)(v49, v65);
      v48(v87, 0);
      (v61)(v88, 0);
      v12 = v52;
      v84(v52, v23);
    }

    v19 = v80;
    dispatch thunk of IteratorProtocol.next()();
    v32 = v69(v19, 1, v15);
    v14 = v66;
    if (v32 == 1)
    {
      return (*(v51 + 8))(v78, v79);
    }
  }

  (*v67)(v85, v15);
  (*(v51 + 8))(v78, v79);
  return (*(*(v86 - 8) + 8))(v83, v86);
}

uint64_t CxxDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v23 = &v22 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = &v22 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 96))(a1, a2, a3);
  (*(a3 + 144))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v9 + 8);
  v13(v10, v8);
  if (v12)
  {
    v13(v10, v8);
    v14 = 1;
    v15 = v25;
  }

  else
  {
    v16 = (*(AssociatedConformanceWitness + 24))(v26, v8, AssociatedConformanceWitness);
    v17 = v23;
    v18 = AssociatedTypeWitness;
    (*(v7 + 16))(v23);
    v16(v26, 0);
    v13(v10, v8);
    v19 = swift_getAssociatedConformanceWitness();
    v15 = v25;
    (*(v19 + 56))(v18, v19);
    (*(v7 + 8))(v17, v18);
    v14 = 0;
  }

  v20 = swift_getAssociatedTypeWitness();
  return (*(*(v20 - 8) + 56))(v15, v14, 1, v20);
}

uint64_t sub_1001122C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = &v14 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = &v14 - ((*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(AssociatedTypeWitness - 8) + 16))(v12, a3, AssociatedTypeWitness);
  (*(v9 + 16))(v10, a1, v8);
  return CxxDictionary.subscript.setter(v10, v12, v6, v7);
}

void (*CxxDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x58uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v10[6] = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[7] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = v17;
  v10[8] = v17;
  v19 = *(v17 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[9] = swift_coroFrameAlloc();
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v10[9] = malloc(*(v17 + 64));
    v20 = malloc(v19);
  }

  v10[10] = v20;
  (*(v18 + 16))();
  CxxDictionary.subscript.getter(a2, a3, a4, v15);
  return sub_100112698;
}

uint64_t CxxDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[1] = a3;
  v23 = a2;
  v26 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v24 = v22 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = v22 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 96))(a1, a4, a5);
  (*(a5 + 144))(a4, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v11 + 8);
  v15(v12, v10);
  if (v14)
  {
    v16 = (v15)(v12, v10);
    return v23(v16);
  }

  else
  {
    v18 = (*(AssociatedConformanceWitness + 24))(v27, v10, AssociatedConformanceWitness);
    v19 = v24;
    v20 = AssociatedTypeWitness;
    (*(v9 + 16))(v24);
    v18(v27, 0);
    v15(v12, v10);
    v21 = swift_getAssociatedConformanceWitness();
    (*(v21 + 56))(v20, v21);
    return (*(v9 + 8))(v19, v20);
  }
}

void (*CxxDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x58uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[1] = a6;
  v11[2] = v6;
  *v11 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12[3] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v12[4] = v14;
  v15 = *(v14 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v12[5] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v12[5] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v17 = v16;
  v12[6] = v16;
  v18 = swift_getAssociatedTypeWitness();
  v12[7] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v12[8] = v19;
  v21 = *(v19 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v12[9] = swift_coroFrameAlloc();
    v22 = swift_coroFrameAlloc();
  }

  else
  {
    v12[9] = malloc(*(v19 + 64));
    v22 = malloc(v21);
  }

  v12[10] = v22;
  (*(v20 + 16))();
  CxxDictionary.subscript.getter(a2, a3, a4, a5, a6, v17);
  return sub_100112BC8;
}

void sub_100112BE0(uint64_t **a1, char a2, void (*a3)(void *, void *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[9];
  v6 = (*a1)[10];
  if (a2)
  {
    v7 = v4[8];
    v9 = v4[5];
    v8 = v4[6];
    v10 = v4[3];
    v11 = v4[4];
    v14 = v4[7];
    v13 = v4[1];
    v12 = *v4;
    (*(v11 + 16))(v9, v8, v10);
    (*(v7 + 32))(v5, v6, v14);
    a3(v9, v5, v12, v13);
    (*(v11 + 8))(v8, v10);
  }

  else
  {
    v9 = v4[5];
    v8 = v4[6];
    a3(v8, v6, *v4, v4[1]);
  }

  free(v6);
  free(v5);
  free(v8);
  free(v9);

  free(v4);
}

uint64_t CxxDictionary.filter(_:)@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v54 = a1;
  v55 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v36 = &v33 - ((*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = swift_getAssociatedTypeWitness();
  v57 = *(v53 - 8);
  v52 = &v33 - ((*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = swift_getAssociatedTypeWitness();
  v46 = *(v51 - 8);
  v50 = &v33 - ((*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v43 = *(v8 - 8);
  v9 = &v33 - ((*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v39 = *(v10 - 8);
  v49 = &v33 - ((*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v49;
  v12 = v49;
  v13 = a4[11];
  v38 = a5;
  v14 = a4;
  v13(a3, a4);
  a4[17](a3, a4);
  a4[18](a3, a4);
  v59 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 8);
  v56 = v11;
  v48 = v16;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v17 = *(v39 + 8);
    v17(v56, v10);
  }

  else
  {
    v18 = v14;
    v19 = v33;
    v42 = *(AssociatedConformanceWitness + 24);
    v41 = (v43 + 16);
    v44 = (v57 + 8);
    v45 = (v46 + 8);
    v46 = v43 + 8;
    v57 = v18;
    v35 = v18 + 112;
    v34 = (v47 + 8);
    v43 = AssociatedConformanceWitness + 24;
    v40 = AssociatedConformanceWitness + 32;
    v47 = v39 + 8;
    v39 += 32;
    for (i = v42(v58, v10, AssociatedConformanceWitness); ; i = v42(v58, v10, AssociatedConformanceWitness))
    {
      v22 = i;
      (*v41)(v9);
      v22(v58, 0);
      v23 = swift_getAssociatedConformanceWitness();
      v24 = v50;
      (*(v23 + 32))(v8, v23);
      v25 = *(v23 + 56);
      v26 = v23;
      v27 = v52;
      v25(v8, v26);
      v28 = v54(v24, v27);
      if (v19)
      {
        (*v44)(v27, v53);
        (*v45)(v24, v51);
        (*v46)(v9, v8);
        v31 = *v47;
        (*v47)(v56, v10);
        v31(v12, v10);
        return (*(*(v59 - 8) + 8))(v38);
      }

      v29 = v28;
      (*v44)(v27, v53);
      (*v45)(v24, v51);
      if (v29)
      {
        v30 = v36;
        (*(v57 + 112))(v9, v59);
        (*v34)(v30, AssociatedTypeWitness);
      }

      (*v46)(v9, v8);
      v21 = v49;
      (*(AssociatedConformanceWitness + 32))(v10, AssociatedConformanceWitness);
      v17 = *v47;
      (*v47)(v12, v10);
      (*v39)(v12, v21, v10);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }
    }

    v17(v56, v10);
  }

  return (v17)(v12, v10);
}

uint64_t CxxDictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  v9 = &v27 - ((*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = &v27 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12;
  (*(a3 + 104))(a1, a2, a3);
  v14 = *(a3 + 152);
  v31 = v4;
  v14(a2, a3);
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v11 + 8);
  v17(v12, v10);
  if (v16)
  {
    v18 = 1;
  }

  else
  {
    v28 = (*(v15 + 24))(v33, v10, v15);
    v19 = v29;
    v20 = v9;
    v21 = v9;
    v22 = v30;
    (*(v29 + 16))(v21);
    v28(v33, 0);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(v22, AssociatedConformanceWitness);
    (*(v19 + 8))(v20, v22);
    (*(a3 + 128))(v12, a2, a3);
    v17(v12, v10);
    v18 = 0;
  }

  v24 = v32;
  v17(v13, v10);
  v25 = swift_getAssociatedTypeWitness();
  return (*(*(v25 - 8) + 56))(v24, v18, 1, v25);
}

uint64_t CxxDictionary.merge<A>(_:uniquingKeysWith:)(void (**a1)(char *, uint64_t), void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a3;
  v67 = a2;
  v88 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v65 = &v55 - ((*(v87 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = swift_getAssociatedTypeWitness();
  v86 = *(v81 - 8);
  v64 = &v55 - ((*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = swift_getAssociatedTypeWitness();
  v70 = *(v79 - 8);
  v80 = &v55 - ((*(v70 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v80;
  v94 = a6;
  v10 = swift_getAssociatedTypeWitness();
  v69 = *(v10 - 8);
  v63 = &v55 - ((*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v63;
  v78 = v63;
  v93 = v63;
  v91 = a4;
  v11 = swift_getAssociatedTypeWitness();
  v89 = *(v11 - 8);
  v61 = &v55 - ((*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v61;
  v92 = v11;
  v90 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = &v55 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v55 = *(v14 - 8);
  v15 = &v55 - ((*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = v15;
  v85 = v14;
  v17 = v13;
  v77 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v18 = TupleTypeMetadata2;
  v19 = *(TupleTypeMetadata2 - 8);
  v76 = *(v19 + 48);
  v75 = v19 + 48;
  if (v76(v13, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v55 + 8))(v84, v85);
  }

  v21 = *(v89 + 32);
  v22 = (v69 + 32);
  v74 = v94 + 104;
  v73 = v94 + 152;
  v88 = (v70 + 8);
  v89 += 32;
  v59 = (v89 - 24);
  v60 = (v69 + 8);
  v58 = v94 + 112;
  v57 = (v87 + 8);
  v56 = (v86 + 8);
  v96 = v9;
  v23 = v92;
  v24 = v93;
  v25 = v82;
  v70 = v21;
  v69 += 32;
  v72 = TupleTypeMetadata2;
  v71 = v17;
  while (1)
  {
    v35 = *(v18 + 48);
    (v21)(v25, v17, v23);
    v87 = *v22;
    (v87)(v24, &v17[v35], v90);
    v36 = v94;
    v37 = v91;
    (*(v94 + 104))(v25, v91, v94);
    v38 = v80;
    (*(v36 + 152))(v37, v36);
    v39 = v79;
    v40 = v25;
    v86 = swift_getAssociatedConformanceWitness();
    v41 = *(v86 + 8);
    LOBYTE(v35) = dispatch thunk of static Equatable.== infix(_:_:)();
    v42 = v39;
    v43 = *v88;
    (*v88)(v38, v42);
    if ((v35 & 1) == 0)
    {
      break;
    }

    v43(v96, v42);
    v26 = v61;
    (v21)(v61, v40, v92);
    v27 = v63;
    (v87)(v63, v93, v90);
    v28 = v94;
    v29 = v91;
    v30 = v81;
    v31 = swift_getAssociatedConformanceWitness();
    v32 = v64;
    (*(v31 + 24))(v26, v27, v30, v31);
    v33 = v65;
    (*(v28 + 112))(v32, v29, v28);
    (*v57)(v33, AssociatedTypeWitness);
    (*v56)(v32, v30);
LABEL_5:
    v17 = v71;
    dispatch thunk of IteratorProtocol.next()();
    v18 = v72;
    v34 = v76(v17, 1, v72);
    v23 = v92;
    v24 = v93;
    v25 = v82;
    v21 = v70;
    v22 = v69;
    if (v34 == 1)
    {
      return (*(v55 + 8))(v84, v85);
    }
  }

  v87 = v43;
  v44 = v90;
  (*v59)(v40, v92);
  v45 = (*(v41 + 24))(v95, v42, v41);
  v46 = v81;
  v47 = swift_getAssociatedConformanceWitness();
  v48 = v62;
  (*(v47 + 56))(v46, v47);
  v45(v95, 0);
  v49 = v93;
  v50 = v83;
  v67(v48, v93);
  if (!v50)
  {
    v83 = 0;
    v51 = *v60;
    (*v60)(v48, v44);
    v51(v49, v44);
    v52 = v96;
    v53 = (*(v86 + 24))(v95, v42);
    (*(v47 + 64))(v78, v46, v47);
    v53(v95, 0);
    v87(v52, v42);
    goto LABEL_5;
  }

  v54 = *v60;
  (*v60)(v48, v44);
  v87(v96, v42);
  v54(v49, v44);
  return (*(v55 + 8))(v84, v85);
}

uint64_t CxxDictionary.merge<>(_:uniquingKeysWith:)(unint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a3;
  v88 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v86 = &v76 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = swift_getAssociatedTypeWitness();
  v9 = *(v103 - 8);
  v85 = &v76 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v120 = *(v10 - 8);
  v102 = &v76 - ((*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v102;
  v11 = swift_getAssociatedTypeWitness();
  v93 = *(v11 - 8);
  v84 = &v76 - ((*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v84;
  v121 = v84;
  v117 = v84;
  v100 = a4;
  v127 = swift_getAssociatedTypeWitness();
  v92 = *(v127 - 8);
  v101 = &v76 - ((*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v101;
  v123 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = type metadata accessor for Optional();
  v108 = result;
  v15 = *(result - 8);
  v107 = &v76 - ((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v107;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaDictionary.makeIterator()();
    v77 = 0;
    v16 = 0;
    v17 = 0;
    a1 = result | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v19 = *(a1 + 64);
    v77 = a1 + 64;
    v16 = ~v18;
    v20 = -v18;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v17 = v21 & v19;
  }

  v22 = 0;
  v124 = (v92 + 32);
  v116 = (v93 + 32);
  v109 = TupleTypeMetadata2;
  v105 = TupleTypeMetadata2 - 8;
  v76 = v16;
  v23 = (v16 + 64) >> 6;
  v91 = v92 + 16;
  v90 = v93 + 16;
  v104 = (v15 + 32);
  v97 = a5 + 104;
  v96 = a5 + 152;
  v98 = (v120 + 8);
  v81 = (v92 + 8);
  v82 = (v93 + 8);
  v80 = a5 + 112;
  v79 = (v8 + 8);
  v78 = (v9 + 8);
  v94 = v23;
  v118 = a1;
  v122 = a5;
  v95 = v12;
  v99 = v10;
  while (1)
  {
    v111 = v22;
    v112 = v17;
    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    v34 = __CocoaDictionary.Iterator.next()();
    v30 = v123;
    v31 = v117;
    if (v34)
    {
      v35 = v12;
      v36 = v127;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v33 = v111;
      v120 = v112;
LABEL_23:
      v42 = v109;
      v43 = *(v109 + 48);
      v44 = v107;
      (*v124)(v107, v35, v36);
      v45 = v31;
      v46 = v116;
      (*v116)(&v44[v43], v45, v30);
      v47 = 0;
      v119 = v33;
      a1 = v118;
      goto LABEL_27;
    }

    v47 = 1;
    v119 = v111;
    v120 = v112;
LABEL_26:
    v42 = v109;
    v44 = v107;
    v46 = v116;
LABEL_27:
    v48 = *(v42 - 8);
    (*(v48 + 56))(v44, v47, 1, v42);
    v49 = v106;
    (*v104)(v106, v44, v108);
    if ((*(v48 + 48))(v49, 1, v42) == 1)
    {
      return sub_100042570(a1);
    }

    v50 = *(v42 + 48);
    v51 = v101;
    v115 = *v124;
    v115(v101, v49, v127);
    v114 = *v46;
    v114(v121, &v49[v50], v30);
    v52 = v122;
    v53 = v100;
    (*(v122 + 104))(v51, v100, v122);
    v54 = v102;
    (*(v52 + 152))(v53, v52);
    v55 = v99;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v56 = *(AssociatedConformanceWitness + 8);
    v57 = dispatch thunk of static Equatable.== infix(_:_:)();
    v58 = v55;
    v59 = v55;
    v60 = *v98;
    (*v98)(v54, v59);
    if (v57)
    {
      v60(v125, v58);
      v12 = v95;
      v115(v95, v51, v127);
      v24 = v117;
      v114(v117, v121, v123);
      v25 = v122;
      v26 = v103;
      v27 = swift_getAssociatedConformanceWitness();
      v28 = v85;
      (*(v27 + 24))(v12, v24, v26, v27);
      v29 = v86;
      (*(v25 + 112))(v28, v53, v25);
      (*v79)(v29, AssociatedTypeWitness);
      result = (*v78)(v28, v26);
      v22 = v119;
      v17 = v120;
      a1 = v118;
    }

    else
    {
      v115 = v60;
      (*v81)(v51, v127);
      v61 = (*(v56 + 24))(v126, v58, v56);
      v62 = v103;
      v63 = swift_getAssociatedConformanceWitness();
      v64 = v84;
      (*(v63 + 56))(v62, v63);
      v61(v126, 0);
      v65 = v83;
      v66 = v121;
      v67 = v110;
      v88(v64, v121);
      v110 = v67;
      if (v67)
      {
        sub_100042570(v118);
        v74 = *v82;
        v75 = v123;
        (*v82)(v64, v123);
        (v115)(v125, v58);
        return (v74)(v66, v75);
      }

      v68 = *v82;
      v69 = v64;
      v70 = v66;
      v71 = v123;
      (*v82)(v69, v123);
      v68(v70, v71);
      v72 = v125;
      v73 = (*(AssociatedConformanceWitness + 24))(v126, v58);
      (*(v63 + 64))(v65, v62, v63);
      v73(v126, 0);
      result = (v115)(v72, v58);
      v22 = v119;
      v17 = v120;
      a1 = v118;
      v12 = v95;
    }

    v23 = v94;
  }

  v30 = v123;
  v31 = v117;
  if (v17)
  {
    v32 = v17;
    v33 = v22;
LABEL_22:
    v120 = (v32 - 1) & v32;
    v40 = __clz(__rbit64(v32)) | (v33 << 6);
    v41 = a1;
    v36 = v127;
    (*(v92 + 16))(v12, *(a1 + 48) + *(v92 + 72) * v40, v127);
    v35 = v12;
    (*(v93 + 16))(v31, *(v41 + 56) + *(v93 + 72) * v40, v30);
    goto LABEL_23;
  }

  if (v23 <= v22 + 1)
  {
    v37 = v22 + 1;
  }

  else
  {
    v37 = v23;
  }

  v38 = v37 - 1;
  v39 = v22;
  while (1)
  {
    v33 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v33 >= v23)
    {
      v119 = v38;
      v120 = 0;
      v47 = 1;
      goto LABEL_26;
    }

    v32 = *(v77 + 8 * v33);
    ++v39;
    if (v32)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t CxxDictionary.merging<A>(_:uniquingKeysWith:)@<X0>(void (**a1)(char *, uint64_t)@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  CxxDictionary.merge<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6, a7);
  v12 = *(a4 - 8);
  if (v9)
  {
    return (*(v12 + 8))(v8, a4);
  }

  else
  {
    return (*(v12 + 32))(a8, v8, a4);
  }
}

uint64_t CxxDictionary.merging<>(_:uniquingKeysWith:)@<X0>(unint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  CxxDictionary.merge<>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5);
  v10 = *(a4 - 8);
  if (v7)
  {
    return (*(v10 + 8))(v6, a4);
  }

  else
  {
    return (*(v10 + 32))(a6, v6, a4);
  }
}

uint64_t CxxDictionary.merging(_:uniquingKeysWith:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>, void (*a4)(char *, char *)@<X1>, uint64_t a5@<X2>, uint64_t a6@<X4>)
{
  sub_10011A1D0(a1, a4, a5, a2, a6);
  v11 = *(a2 - 8);
  v12 = *(v11 + 8);
  v12(a1, a2);
  if (v7)
  {
    return (v12)(v6, a2);
  }

  else
  {
    return (*(v11 + 32))(a3, v6, a2);
  }
}

uint64_t CxxOptional.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a2 + 32))())
  {
    (*(a2 + 40))(a1, a2);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 56);

  return v8(a3, v6, 1, AssociatedTypeWitness);
}

uint64_t Optional.init<A>(fromCxx:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((*(a4 + 32))(a3, a4))
  {
    (*(a4 + 40))(a3, a4);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  (*(*(a3 - 8) + 8))(a1, a3);
  v11 = *(*(a2 - 8) + 56);

  return v11(a5, v10, 1, a2);
}

uint64_t CxxSet.init<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a1;
  v32 = a5;
  v38 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v33 = &v28 - ((*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v39 = *(v9 - 8);
  v10 = &v28 - ((*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v28 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = &v28 - ((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v29 = *(v14 - 8);
  v15 = &v28 - ((*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 + 48);
  v35 = a6;
  v36 = a4;
  v16(v38, a4);
  (*(v12 + 16))(v13, v37, a3);
  dispatch thunk of Sequence.makeIterator()();
  v17 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = v15;
  v32 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v19 = v39;
  v20 = *(v39 + 48);
  if (v20(v11, 1, v9) != 1)
  {
    v21 = *(v19 + 32);
    v30 = v36 + 56;
    v31 = v21;
    v22 = (v28 + 8);
    v39 = v19 + 32;
    v23 = (v19 + 8);
    do
    {
      v31(v10, v11, v9);
      v24 = v17;
      v25 = v33;
      (*(v36 + 56))(v10, v38);
      v26 = v25;
      v17 = v24;
      (*v22)(v26, AssociatedTypeWitness);
      (*v23)(v10, v9);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v20(v11, 1, v9) != 1);
  }

  return (*(v29 + 8))(v37, v17);
}

uint64_t CxxSet.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v14 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 64))(a1, a2, a3);
  swift_getAssociatedConformanceWitness();
  LOBYTE(a3) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v9 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((a3 & 1) == 0)
  {
    if (v9 > 63)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v7 + 8))(v8, AssociatedTypeWitness);
    v10 = v12 > 0;
    return v10 & 1;
  }

  if (v9 < 65)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[1] = 0;
  sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v10 = dispatch thunk of static Comparable.< infix(_:_:)();
  v11 = *(v7 + 8);
  v11(v8, AssociatedTypeWitness);
  v11(v8, AssociatedTypeWitness);
  return v10 & 1;
}

uint64_t CxxUniqueSet.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v8 = &v21 - ((*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a4 + 8);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = &v21 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 56))(a2, a3, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v10, AssociatedConformanceWitness);
  (*(AssociatedConformanceWitness + 56))(v23, v10, AssociatedConformanceWitness);
  (*(v11 + 8))(v12, v10);
  v14 = LOBYTE(v23[0]);
  v15 = swift_getAssociatedConformanceWitness();
  v16 = (*(v15 + 24))(v23, AssociatedTypeWitness, v15);
  v18 = v17;
  v19 = swift_getAssociatedTypeWitness();
  (*(*(v19 - 8) + 16))(v22, v18, v19);
  v16(v23, 0);
  (*(v21 + 8))(v8, AssociatedTypeWitness);
  return v14;
}

uint64_t CxxUniqueSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = AssociatedTypeWitness;
  v22 = &v20 - ((*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = &v20 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 56))(a1, a2, a3);
  (*(a3 + 72))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v9 + 8);
  v12(v10, v8);
  if (a1)
  {
    v12(v10, v8);
    v13 = swift_getAssociatedTypeWitness();
    return (*(*(v13 - 8) + 56))(v25, 1, 1, v13);
  }

  else
  {
    v15 = (*(AssociatedConformanceWitness + 24))(v26, v8, AssociatedConformanceWitness);
    v20 = v16;
    v21 = v15;
    v17 = swift_getAssociatedTypeWitness();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v25, v20, v17);
    v21(v26, 0);
    v19 = v22;
    (*(a3 + 64))(v10, a2, a3);
    (*(v23 + 8))(v19, v24);
    v12(v10, v8);
    return (*(v18 + 56))(v25, 0, 1, v17);
  }
}

uint64_t CxxRandomAccessCollection.count.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 8) + 8);
  v30 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v27 = *(*(v31 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = &v25 - ((*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_checkMetadataState();
  v5 = *(v4 - 8);
  v6 = &v25 - ((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_checkMetadataState();
  v29 = *(v7 - 8);
  v28 = &v25 - ((*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v28;
  v9 = v30;
  (*(v2 + 40))(v30, v2);
  (*(v2 + 32))(v9, v2);
  (*(AssociatedConformanceWitness + 32))(v6, v6, v4, AssociatedConformanceWitness);
  v10 = *(v5 + 8);
  v10(v6, v4);
  v11 = v4;
  v12 = v29;
  v10(v6, v11);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v32 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v13 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v13)
    {
      if (v14 > 64)
      {
LABEL_8:
        sub_10002B31C();
        v15 = v28;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v16 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v12 + 8))(v15, v7);
        if ((v16 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v18 = v28;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v19 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v12 + 8))(v18, v7);
      if (v19)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v14 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v20 & 1) == 0)
    {
      break;
    }

    if (v21 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_10002B31C();
    v22 = v28;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v23 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v12 + 8))(v22, v7);
    if (v23)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v21 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v24 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v12 + 8))(v8, v7);
  return v24;
}

uint64_t CxxRandomAccessCollection._getRawIterator(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a1;
  v6 = *(*(a3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v21 = &v18 - ((*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v20 = &v18 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v20;
  (*(v6 + 32))(a2, v6);
  v25 = v24;
  swift_getAssociatedConformanceWitness();
  v18 = sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(AssociatedConformanceWitness + 40))(a4, v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  v23 = *(v10 + 8);
  v24 = v10 + 8;
  v23(v11, v9);
  v12 = v21;
  v13 = v20;
  (*(v6 + 40))(v19, v6);
  (*(AssociatedConformanceWitness + 32))(v12, a4, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v22 + 8))(v12, AssociatedTypeWitness);
  LOBYTE(AssociatedConformanceWitness) = dispatch thunk of static BinaryInteger.isSigned.getter();
  result = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((AssociatedConformanceWitness & 1) == 0)
  {
    goto LABEL_5;
  }

  if (result <= 64)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v25 = 0;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v15 = dispatch thunk of static Comparable.< infix(_:_:)();
    v16 = v23;
    v23(v11, v9);
    result = v16(v13, v9);
    if (v15)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (result > 63)
      {
        break;
      }

LABEL_6:
      v17 = dispatch thunk of BinaryInteger._lowWord.getter();
      result = (v23)(v13, v9);
      if (v17 > 0)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t (*CxxRandomAccessCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x80uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(*(a4 + 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v12 = *(v34 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v31 = swift_coroFrameAlloc();
    v9[7] = v31;
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v31 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
    v9[7] = v31;
    v13 = malloc(v12);
  }

  v32 = v13;
  v9[8] = v13;
  v14 = swift_checkMetadataState();
  v9[9] = v14;
  v15 = *(*(v14 - 8) + 64);
  v30 = *(v14 - 8);
  if (&_swift_coroFrameAlloc)
  {
    v28 = swift_coroFrameAlloc();
    v9[10] = v28;
    v16 = swift_coroFrameAlloc();
    v9[11] = v16;
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v28 = malloc(*(*(v14 - 8) + 64));
    v9[10] = v28;
    v16 = malloc(v15);
    v9[11] = v16;
    v17 = malloc(v15);
  }

  v25 = v17;
  v9[12] = v17;
  (*(v10 + 32))(a3, v10);
  v9[4] = a2;
  v26 = a3;
  v18 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v18 + 40))(v16, v32, v14, v18);
  v29 = *(v34 + 8);
  v29(v32, AssociatedTypeWitness);
  (*(v10 + 40))(v26, v10);
  v27 = v16;
  (*(v18 + 32))(v28, v16, v14, v18);
  v19 = *(v30 + 8);
  v9[13] = v19;
  v9[14] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v28, v14);
  v20 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v20)
  {
    if (v21 > 64)
    {
      v9[6] = 0;
      goto LABEL_17;
    }
  }

  else if (v21 >= 64)
  {
    v9[5] = 0;
LABEL_17:
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v24 = dispatch thunk of static Comparable.< infix(_:_:)();
    v29(v32, AssociatedTypeWitness);
    result = (v29)(v31, AssociatedTypeWitness);
    if ((v24 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    (*(v30 + 32))(v25, v27, v14);
    v9[15] = (*(*(AssociatedConformanceWitness + 8) + 24))(v9, v14);
    return sub_100116E3C;
  }

  v22 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v29)(v31, AssociatedTypeWitness);
  if (v22 > 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t CxxRandomAccessCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v39 = a4;
  v5 = *(*(a3 + 8) + 8);
  swift_getAssociatedTypeWitness();
  v44 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v41 = &v34 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v41;
  v10 = swift_checkMetadataState();
  v40 = *(v10 - 8);
  v38 = &v34 - ((*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v38;
  v12 = v38;
  (*(v5 + 32))(&v34, a2, v5);
  v46[0] = v43;
  swift_getAssociatedConformanceWitness();
  v34 = sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(AssociatedConformanceWitness + 40))(v12, v9, v10, AssociatedConformanceWitness);
  v13 = *(v8 + 8);
  v35 = v9;
  v42 = v13;
  v43 = v8 + 8;
  v13(v9, AssociatedTypeWitness);
  v14 = *(v5 + 40);
  v45 = v5;
  v15 = v5;
  v16 = v40;
  v14(v44, v15);
  v17 = *(AssociatedConformanceWitness + 32);
  v37 = v12;
  v18 = v12;
  v19 = AssociatedConformanceWitness;
  v20 = v41;
  v17(v11, v18, v10, v19);
  v36 = *(v16 + 8);
  v36(v11, v10);
  LOBYTE(v11) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v23 = __OFSUB__(v21, 64);
  v22 = v21 - 64 < 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v21 <= 64)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v46[0] = 0;
    v24 = v35;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v25 = dispatch thunk of static Comparable.< infix(_:_:)();
    v26 = v42;
    v42(v24, AssociatedTypeWitness);
    v26(v20, AssociatedTypeWitness);
    if (v25)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v22 == v23)
      {
        break;
      }

LABEL_7:
      v27 = dispatch thunk of BinaryInteger._lowWord.getter();
      v42(v20, AssociatedTypeWitness);
      v23 = 0;
      v22 = v27 < 0;
      if (v27 > 0)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v28 = v38;
  (*(v16 + 32))(v38, v37, v10);
  v29 = (*(*(v19 + 8) + 24))(v46, v10);
  v31 = v30;
  v32 = swift_getAssociatedTypeWitness();
  (*(*(v32 - 8) + 16))(v39, v31, v32);
  v29(v46, 0);
  return (v36)(v28, v10);
}

uint64_t CxxMutableRandomAccessCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v39 = a4;
  v5 = *(*(*(a3 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v44 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v41 = &v34 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v41;
  v10 = swift_checkMetadataState();
  v40 = *(v10 - 8);
  v38 = &v34 - ((*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v38;
  v12 = v38;
  (*(v5 + 32))(&v34, a2, v5);
  v46[0] = v43;
  swift_getAssociatedConformanceWitness();
  v34 = sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(AssociatedConformanceWitness + 40))(v12, v9, v10, AssociatedConformanceWitness);
  v13 = *(v8 + 8);
  v35 = v9;
  v42 = v13;
  v43 = v8 + 8;
  v13(v9, AssociatedTypeWitness);
  v14 = *(v5 + 40);
  v45 = v5;
  v15 = v5;
  v16 = v40;
  v14(v44, v15);
  v17 = *(AssociatedConformanceWitness + 32);
  v37 = v12;
  v18 = v12;
  v19 = AssociatedConformanceWitness;
  v20 = v41;
  v17(v11, v18, v10, v19);
  v36 = *(v16 + 8);
  v36(v11, v10);
  LOBYTE(v11) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v23 = __OFSUB__(v21, 64);
  v22 = v21 - 64 < 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v21 <= 64)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v46[0] = 0;
    v24 = v35;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v25 = dispatch thunk of static Comparable.< infix(_:_:)();
    v26 = v42;
    v42(v24, AssociatedTypeWitness);
    v26(v20, AssociatedTypeWitness);
    if (v25)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v22 == v23)
      {
        break;
      }

LABEL_7:
      v27 = dispatch thunk of BinaryInteger._lowWord.getter();
      v42(v20, AssociatedTypeWitness);
      v23 = 0;
      v22 = v27 < 0;
      if (v27 > 0)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v28 = v38;
  (*(v16 + 32))(v38, v37, v10);
  v29 = (*(*(v19 + 8) + 24))(v46, v10);
  v31 = v30;
  v32 = swift_getAssociatedTypeWitness();
  (*(*(v32 - 8) + 16))(v39, v31, v32);
  v29(v46, 0);
  return (v36)(v28, v10);
}

uint64_t sub_100117768@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = CxxMutableRandomAccessCollection.subscript.read(v9, *a1, *(a1 + a2 - 16), *(a1 + a2 - 8));
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v6, AssociatedTypeWitness);
  return (v4)(v9, 0);
}

uint64_t (*CxxMutableRandomAccessCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x80uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(*(*(a4 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v12 = *(v34 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v31 = swift_coroFrameAlloc();
    v9[7] = v31;
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v31 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
    v9[7] = v31;
    v13 = malloc(v12);
  }

  v32 = v13;
  v9[8] = v13;
  v14 = swift_checkMetadataState();
  v9[9] = v14;
  v15 = *(*(v14 - 8) + 64);
  v30 = *(v14 - 8);
  if (&_swift_coroFrameAlloc)
  {
    v28 = swift_coroFrameAlloc();
    v9[10] = v28;
    v16 = swift_coroFrameAlloc();
    v9[11] = v16;
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v28 = malloc(*(*(v14 - 8) + 64));
    v9[10] = v28;
    v16 = malloc(v15);
    v9[11] = v16;
    v17 = malloc(v15);
  }

  v25 = v17;
  v9[12] = v17;
  (*(v10 + 32))(a3, v10);
  v9[4] = a2;
  v26 = a3;
  v18 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v18 + 40))(v16, v32, v14, v18);
  v29 = *(v34 + 8);
  v29(v32, AssociatedTypeWitness);
  (*(v10 + 40))(v26, v10);
  v27 = v16;
  (*(v18 + 32))(v28, v16, v14, v18);
  v19 = *(v30 + 8);
  v9[13] = v19;
  v9[14] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v28, v14);
  v20 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v20)
  {
    if (v21 > 64)
    {
      v9[6] = 0;
      goto LABEL_17;
    }
  }

  else if (v21 >= 64)
  {
    v9[5] = 0;
LABEL_17:
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v24 = dispatch thunk of static Comparable.< infix(_:_:)();
    v29(v32, AssociatedTypeWitness);
    result = (v29)(v31, AssociatedTypeWitness);
    if ((v24 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    (*(v30 + 32))(v25, v27, v14);
    v9[15] = (*(*(AssociatedConformanceWitness + 8) + 24))(v9, v14);
    return sub_10011C044;
  }

  v22 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v29)(v31, AssociatedTypeWitness);
  if (v22 > 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_100117D2C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 96);
  v3 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v7 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v8 = *(*a1 + 56);
  (*(*a1 + 120))(*a1, 0);
  v3(v2, v6);
  free(v2);
  free(v4);
  free(v5);
  free(v7);
  free(v8);

  free(v1);
}

uint64_t sub_100117DDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = CxxMutableRandomAccessCollection.subscript.modify(v10, *a3, *(a3 + a4 - 16), *(a3 + a4 - 8));
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(v7, a1, AssociatedTypeWitness);
  return (v5)(v10, 0);
}

uint64_t (*CxxMutableRandomAccessCollection.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x80uLL);
  }

  v8 = v7;
  *a1 = v7;
  swift_getAssociatedTypeWitness();
  v28 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v10 = *(v33 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v29 = swift_coroFrameAlloc();
    v8[7] = v29;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v29 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
    v8[7] = v29;
    v11 = malloc(v10);
  }

  v30 = v11;
  v8[8] = v11;
  v12 = swift_checkMetadataState();
  v8[9] = v12;
  v31 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v25 = swift_coroFrameAlloc();
    v8[10] = v25;
    v24 = swift_coroFrameAlloc();
    v8[11] = v24;
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v25 = malloc(*(v13 + 64));
    v8[10] = v25;
    v24 = malloc(v14);
    v8[11] = v24;
    v15 = malloc(v14);
  }

  v16 = v15;
  v8[12] = v15;
  (*(v28 + 40))(a3, v28);
  v8[4] = a2;
  swift_getAssociatedConformanceWitness();
  sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v9 + 40))(v16, v30, v31, v9);
  v27 = *(v33 + 8);
  v27(v30, AssociatedTypeWitness);
  (*(v28 + 48))(a3, v28);
  (*(v13 + 16))(v25, v16, v31);
  (*(v9 + 32))(v24, v25, v31, v9);
  v17 = *(v13 + 8);
  v8[13] = v17;
  v8[14] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v25, v31);
  v17(v24, v31);
  v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v19 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v18)
  {
    if (v19 > 64)
    {
      v8[6] = 0;
      goto LABEL_17;
    }
  }

  else if (v19 > 63)
  {
    v8[5] = 0;
LABEL_17:
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v22 = dispatch thunk of static Comparable.< infix(_:_:)();
    v27(v30, AssociatedTypeWitness);
    result = (v27)(v29, AssociatedTypeWitness);
    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_15:
    v8[15] = (*(*(AssociatedConformanceWitness + 8) + 24))(v8, v31);
    return sub_1001183CC;
  }

  v20 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v27)(v29, AssociatedTypeWitness);
  if (v20 > 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1001183CC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 96);
  v3 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v7 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v8 = *(*a1 + 56);
  (*(*a1 + 120))(*a1, 0);
  v3(v2, v6);
  free(v2);
  free(v4);
  free(v5);
  free(v7);
  free(v8);

  free(v1);
}

uint64_t CxxMutableRandomAccessCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v34 = a2;
  v31 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v33 = v28 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v33;
  v9 = swift_checkMetadataState();
  v32 = *(v9 - 8);
  v10 = v28 - ((*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 40))(v36, a4);
  v37[0] = v34;
  swift_getAssociatedConformanceWitness();
  v28[1] = sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v5 + 40))(v10, v8, v9, v5);
  v11 = *(v7 + 8);
  v29 = v8;
  v34 = v7 + 8;
  v11(v8, AssociatedTypeWitness);
  v12 = v32;
  (*(a4 + 48))(v36, a4);
  v13 = *(v5 + 32);
  v35 = v10;
  v14 = v33;
  v13(v10, v10, v9, v5);
  v15 = *(v12 + 8);
  v15(v10, v9);
  LOBYTE(v10) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v16 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v18 = __OFSUB__(v16, 64);
  v17 = v16 - 64 < 0;
  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v16 <= 64)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v37[0] = 0;
    v19 = v29;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v20 = dispatch thunk of static Comparable.< infix(_:_:)();
    v11(v19, AssociatedTypeWitness);
    v11(v14, AssociatedTypeWitness);
    if (v20)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v17 == v18)
      {
        break;
      }

LABEL_7:
      v21 = dispatch thunk of BinaryInteger._lowWord.getter();
      v11(v14, AssociatedTypeWitness);
      v18 = 0;
      v17 = v21 < 0;
      if (v21 > 0)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v22 = v35;
  v23 = (*(*(AssociatedConformanceWitness + 8) + 24))(v37, v9);
  v25 = v24;
  v26 = swift_getAssociatedTypeWitness();
  (*(*(v26 - 8) + 40))(v25, v31, v26);
  v23(v37, 0);
  return (v15)(v22, v9);
}

uint64_t CxxSequenceBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 16))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t CxxSequenceBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t CxxIterator.rawIterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t CxxIterator.rawIterator.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 40);

  return v6(v2 + v4, a1, AssociatedTypeWitness);
}

uint64_t CxxIterator.endIterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t CxxIterator.init(sequence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  type metadata accessor for CxxSequenceBox(0, a2, a3, a5);
  *a4 = CxxSequenceBox.__allocating_init(_:)(a1);
  v9 = *(a3 + 24);
  type metadata accessor for CxxIterator(0, a2, a3, v10);

  v9(a2, a3);
  (*(a3 + 32))(a2, a3);
}

uint64_t CxxIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v7 = &v17 - ((*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 36);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v10 = swift_getAssociatedTypeWitness();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }

  else
  {
    v17 = (*(AssociatedConformanceWitness + 24))(v19, AssociatedTypeWitness, AssociatedConformanceWitness);
    v14 = v13;
    v15 = swift_getAssociatedTypeWitness();
    v16 = *(v15 - 8);
    (*(v16 + 16))(a2, v14, v15);
    v17(v19, 0);
    (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v18 + 40))(v3 + v8, v7, AssociatedTypeWitness);
    return (*(v16 + 56))(a2, 0, 1, v15);
  }
}

uint64_t CxxVector.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a1;
  v25 = a5;
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v10 = &v23 - ((*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v23 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = &v23 - ((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v24 = *(v14 - 8);
  v15 = &v23 - ((*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 + 56);
  v26 = a6;
  v27 = a4;
  v16(v30, a4);
  (*(v12 + 16))(v13, v29, a3);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = v15;
  v29 = v14;
  v25 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v18 = v23;
  v19 = *(v23 + 48);
  if (v19(v11, 1, AssociatedTypeWitness) != 1)
  {
    v20 = *(v18 + 32);
    v21 = (v18 + 8);
    do
    {
      v20(v10, v11, AssociatedTypeWitness);
      (*(v27 + 64))(v10, v30);
      (*v21)(v10, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v19(v11, 1, AssociatedTypeWitness) != 1);
  }

  return (*(v24 + 8))(v28, v29);
}

uint64_t sub_1001193F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = a1;
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  a6(&v12, a2, v9, a3, WitnessTable);
}

uint64_t _s3Cxx13unsafeBitCast_2toq_xn_q_mtRi_zRi0_zr0_lF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 16))(a4, a1, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t Optional<A>.pointee.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = &v18[-((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v12 = &v18[-((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v9, v4, a1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v8 + 8))(v9, a1);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v12, v9, v10);
    v13 = (*(a2 + 24))(v18, v10, a2);
    v15 = v14;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 16))(a3, v15, AssociatedTypeWitness);
    v13(v18, 0);
    return (*(v11 + 8))(v12, v10);
  }

  return result;
}

uint64_t Optional<A>.successor()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = &v14 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v12 = &v14 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v9, v4, a1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v8 + 8))(v9, a1);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v12, v9, v10);
    (*(a2 + 32))(v10, a2);
    (*(v11 + 8))(v12, v10);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  return result;
}

uint64_t (*sub_100119A3C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100119B0C(v6, a2, *(a3 - 8));
  return sub_100119AC4;
}

void sub_100119AC4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_100119B0C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  Optional<A>.pointee.getter(a2, a3, v8);
  return sub_100119BF8;
}

void sub_100119BF8(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_100119C4C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v8 = *(v5 - 8);
  (*(v8 + 8))(v4, v5);
  v6 = *(v8 + 32);

  return v6(v4, a1, v5);
}

void *sub_100119D34@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *(*(*(a3 + 16) - 8) + 72);
  if (v4)
  {
    v5 = *result - *a2;
    if (v5 != 0x8000000000000000 || v4 != -1)
    {
      *a4 = v5 / v4;
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

uint64_t sub_100119DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v29 = AssociatedTypeWitness;
  v27 = &v25 - ((*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v26 = *(v9 - 8);
  v25 = &v25 - ((*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = &v25 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 + 104);
  v31 = a2;
  v13(a2, a3, a4);
  v14 = *(a4 + 152);
  v30 = v4;
  v14(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v11 + 8);
  v17(v12, v10);
  if (v16)
  {
    v17(v12, v10);
    v18 = swift_getAssociatedConformanceWitness();
    v19 = v25;
    (*(v18 + 24))(v31, v32, v9, v18);
    v20 = v27;
    (*(a4 + 112))(v19, a3, a4);
    (*(v28 + 8))(v20, v29);
    return (*(v26 + 8))(v19, v9);
  }

  else
  {
    v22 = swift_getAssociatedTypeWitness();
    (*(*(v22 - 8) + 8))(v31, v22);
    v23 = (*(AssociatedConformanceWitness + 24))(v33, v10, AssociatedConformanceWitness);
    v24 = swift_getAssociatedConformanceWitness();
    (*(v24 + 64))(v32, v9, v24);
    v23(v33, 0);
    return (v17)(v12, v10);
  }
}

uint64_t sub_10011A1D0(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a3;
  v83 = a2;
  v98 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v118 = *(AssociatedTypeWitness - 8);
  v81 = &v69 - ((*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = swift_getAssociatedTypeWitness();
  v114 = *(v80 - 8);
  v79 = &v69 - ((*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v79;
  v77 = v79;
  v76 = v79;
  v94 = swift_getAssociatedTypeWitness();
  v113 = *(v94 - 8);
  v112 = &v69 - ((*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = swift_getAssociatedTypeWitness();
  v7 = *(v93 - 8);
  v75 = &v69 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v75;
  v73 = v75;
  v8 = v75;
  v105 = swift_getAssociatedTypeWitness();
  v109 = *(v105 - 8);
  v92 = &v69 - ((*(v109 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v92;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = &v69 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11;
  (*(a5 + 136))(a4, a5);
  v96 = *(a5 + 144);
  v110 = (v7 + 16);
  v115 = (v7 + 8);
  v13 = (v10 + 8);
  v90 = a5 + 104;
  v89 = (v113 + 8);
  v88 = a5 + 152;
  v102 = (v109 + 8);
  v72 = (v114 + 8);
  v97 = a5 + 144;
  v71 = a5 + 112;
  v70 = (v118 + 8);
  v85 = (v10 + 32);
  v14 = a5;
  v116 = a4;
  v101 = v8;
  v87 = a5;
  v111 = v9;
  v103 = v11;
  v91 = v13;
  v86 = v11;
  v96(a4, a5);
  while (1)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = v11;
    v31 = v29;
    v32 = *v13;
    (*v13)(v30, v9);
    if (v31)
    {
      return v32(v12, v9);
    }

    v109 = v32;
    v33 = *(AssociatedConformanceWitness + 24);
    v113 = AssociatedConformanceWitness + 24;
    v106 = v33;
    v34 = v33(v117, v9, AssociatedConformanceWitness);
    v35 = v8;
    v36 = v8;
    v37 = v93;
    v107 = *v110;
    v107(v35);
    v34(v117, 0);
    v38 = v116;
    v39 = swift_getAssociatedConformanceWitness();
    v40 = *(v39 + 32);
    v41 = v112;
    v108 = v39;
    v100 = (v39 + 32);
    v99 = v40;
    (v40)(v37);
    v114 = *v115;
    (v114)(v36, v37);
    v42 = v104;
    (*(v14 + 104))(v41, v38, v14);
    (*v89)(v41, v94);
    v43 = *(v14 + 152);
    v118 = AssociatedConformanceWitness;
    v44 = v92;
    v43(v38, v14);
    v45 = v105;
    v46 = v42;
    v47 = swift_getAssociatedConformanceWitness();
    v48 = *(v47 + 8);
    LOBYTE(v36) = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = *v102;
    (*v102)(v44, v45);
    if (v36)
    {
      v49(v46, v45);
      v12 = v103;
      v15 = v111;
      v16 = v106;
      v17 = v106(v117, v111, v118);
      v18 = v74;
      v19 = v107;
      v107(v74);
      v17(v117, 0);
      v20 = v108;
      v99(v37, v108);
      (v114)(v18, v37);
      v21 = v16(v117, v15, v118);
      v22 = v75;
      v19(v75);
      v21(v117, 0);
      v23 = v79;
      (*(v20 + 56))(v37, v20);
      v24 = v114;
      (v114)(v22, v37);
      v25 = v101;
      (*(v20 + 24))(v112, v23, v37, v20);
      v26 = v81;
      v27 = v87;
      (*(v87 + 112))(v25, v116);
      (*v70)(v26, AssociatedTypeWitness);
      v24(v25, v37);
      v14 = v27;
      v9 = v111;
      goto LABEL_3;
    }

    v100 = v49;
    v50 = (*(v48 + 24))(v117, v45, v48);
    v51 = v108;
    v52 = *(v108 + 56);
    v53 = v77;
    v52(v37, v108);
    v50(v117, 0);
    v54 = v106(v117, v111, v118);
    v55 = v73;
    v107(v73);
    v54(v117, 0);
    v56 = v78;
    v52(v37, v51);
    (v114)(v55, v37);
    v57 = v76;
    v58 = v95;
    v83(v53, v56);
    if (v58)
    {
      break;
    }

    v95 = 0;
    v59 = *v72;
    v60 = v80;
    (*v72)(v56, v80);
    v59(v53, v60);
    v61 = v47;
    v62 = *(v47 + 24);
    v63 = v104;
    v64 = v105;
    v65 = v62(v117, v105, v61);
    (*(v51 + 64))(v57, v37, v51);
    v65(v117, 0);
    v100(v63, v64);
    v14 = v87;
    v9 = v111;
    v12 = v103;
LABEL_3:
    v11 = v86;
    (*(v118 + 32))(v9);
    v13 = v91;
    v109(v12, v9);
    (*v85)(v12, v11, v9);
    v8 = v101;
    v96(v116, v14);
  }

  v67 = *v72;
  v68 = v80;
  (*v72)(v56, v80);
  v67(v53, v68);
  v100(v104, v105);
  return v109(v103, v111);
}

uint64_t sub_10011AEE0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10011AF1C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10011AF58(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10011AFAC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10011AFE8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10011B024(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

__n128 sub_10011B090(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10011B304(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10011B3CC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_10011B480(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v8 + v7;
  v10 = ((((-9 - v7) | v7) - (v8 + v7)) | v7) - v8;
  if (v7 <= 7 && (*(v6 + 80) & 0x100000) == 0 && v10 >= 0xFFFFFFFFFFFFFFE7)
  {
    v14 = AssociatedTypeWitness;
    *a1 = *a2;
    v15 = (a2 + v7 + 8) & ~v7;
    v16 = *(v6 + 16);

    v16((a1 + v7 + 8) & ~v7, v15, v14);
    v16((v9 + ((a1 + v7 + 8) & ~v7)) & ~v7, (v9 + v15) & ~v7, v14);
  }

  else
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  return a1;
}

uint64_t sub_10011B5E4(void *a1, uint64_t a2)
{

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v9 = v4 + 8;
  v10 = *(v4 + 8);
  v5 = *(v4 + 80);
  v6 = (a1 + v5 + 8) & ~v5;
  v10(v6, AssociatedTypeWitness);
  v7 = (*(v9 + 56) + v5 + v6) & ~v5;

  return (v10)(v7, AssociatedTypeWitness);
}

uint64_t *sub_10011B6BC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v9 = *(v6 + 80);
  v10 = (a1 + v9 + 8) & ~v9;
  v11 = (a2 + v9 + 8) & ~v9;

  v7(v10, v11, AssociatedTypeWitness);
  v7((*(v8 + 48) + v9 + v10) & ~v9, (*(v8 + 48) + v9 + v11) & ~v9, AssociatedTypeWitness);
  return a1;
}

uint64_t *sub_10011B7A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 24);
  v8 = v6 + 24;
  v9 = *(v6 + 80);
  v10 = (a2 + v9 + 8) & ~v9;
  v7((a1 + v9 + 8) & ~v9, v10, AssociatedTypeWitness);
  v7((*(v8 + 40) + v9 + ((a1 + v9 + 8) & ~v9)) & ~v9, (*(v8 + 40) + v9 + v10) & ~v9, AssociatedTypeWitness);
  return a1;
}

void *sub_10011B898(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v9 = *(v6 + 80);
  v10 = (a2 + v9 + 8) & ~v9;
  v7((a1 + v9 + 8) & ~v9, v10, AssociatedTypeWitness);
  v7((*(v8 + 32) + v9 + ((a1 + v9 + 8) & ~v9)) & ~v9, (*(v8 + 32) + v9 + v10) & ~v9, AssociatedTypeWitness);
  return a1;
}

uint64_t *sub_10011B978(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 40);
  v8 = v6 + 40;
  v9 = *(v6 + 80);
  v10 = (a2 + v9 + 8) & ~v9;
  v7((a1 + v9 + 8) & ~v9, v10, AssociatedTypeWitness);
  v7((*(v8 + 24) + v9 + ((a1 + v9 + 8) & ~v9)) & ~v9, (*(v8 + 24) + v9 + v10) & ~v9, AssociatedTypeWitness);
  return a1;
}

uint64_t sub_10011BA64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v11 = ((v10 + v9 + ((v9 + 8) & ~v9)) & ~v9) + v10;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 < 2)
    {
LABEL_26:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 48);

        return v18((a1 + v9 + 8) & ~v9);
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_26;
  }

LABEL_15:
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

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void sub_10011BC48(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((*(v7 + 64) + v9 + ((v9 + 8) & ~v9)) & ~v9) + *(v7 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_47:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = *(v7 + 56);

    v19(&a1[v9 + 8] & ~v9, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v18 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v18 = (a2 - 1);
    }

    *a1 = v18;
  }
}

void sub_10011C04C()
{
  if (__cxa_guard_acquire(byte_10016DB90))
  {
    qword_10016DBB0 = 0;
    qword_10016DBB8 = 0;
    qword_10016DBC0 = 0;
    __cxa_atexit(sub_1000052DC, &xmmword_10016DB98, &_mh_execute_header);

    __cxa_guard_release(byte_10016DB90);
  }
}

uint64_t sub_10011C0C4(unsigned __int8 **a1)
{
  v1 = *a1;
  switch(__clz(**a1 ^ 0xFF))
  {
    case 0x18u:
      *a1 = v1 + 1;
      v2 = *v1;
      break;
    case 0x1Au:
      if (a1[1] - v1 < 2)
      {
        goto LABEL_31;
      }

      v9 = v1 + 1;
      if ((v1[1] & 0xC0) != 0x80)
      {
        goto LABEL_31;
      }

      *a1 = v9;
      v10 = *v1 & 0x1F;
      *a1 = v1 + 2;
      if (v10 < 2)
      {
        v2 = 2147549181;
      }

      else
      {
        v2 = *v9 & 0x3F | (v10 << 6);
      }

      break;
    case 0x1Bu:
      if (a1[1] - v1 < 3)
      {
        goto LABEL_31;
      }

      v3 = 1;
      do
      {
        v4 = v1[v3] & 0xC0;
      }

      while (v4 == 128 && v3++ != 2);
      if (v4 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v6 = *v1 & 0xF;
      *a1 = v1 + 2;
      v7 = (v6 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      if (v7 >= 0x800)
      {
        v8 = v7 | v1[2] & 0x3F;
        if ((v7 & 0xF800) == 0xD800)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v8;
        }
      }

      break;
    case 0x1Cu:
      if (a1[1] - v1 < 4)
      {
        goto LABEL_31;
      }

      v11 = 1;
      do
      {
        v12 = v1[v11] & 0xC0;
      }

      while (v12 == 128 && v11++ != 3);
      if (v12 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v14 = *v1 & 7;
      *a1 = v1 + 2;
      v15 = (v14 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      v16 = v1[2];
      *a1 = v1 + 4;
      if (v15 >= 0x400)
      {
        v17 = v1[3] & 0x3F | ((v15 | v16 & 0x3F) << 6);
        if (v15 >> 10 >= 0x11)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v17;
        }
      }

      break;
    default:
LABEL_31:
      v2 = 2147549181;
      *a1 = v1 + 1;
      break;
  }

  return v2;
}

uint64_t sub_10011C2B4(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v17[0] = a1;
  v17[1] = a2;
  v8 = sub_10011C0C4(v17);
  sub_100014D54(&v18, v8 & 0x7FFFFFFF);
  if (a1 == a2)
  {
    return 0;
  }

  v9 = 0;
  do
  {
    v10 = sub_100014C70(v17);
    v12 = v11;
    v13 = sub_100014CC8(v10);
    v14 = v9 + v13;
    if (!a4 && v14 > a3)
    {
      break;
    }

    v15 = v12 == a2 || v14 > a3;
    v9 += v13;
  }

  while (!v15);
  return v9;
}

uint64_t sub_10011C36C(unsigned __int8 **a1, _DWORD *a2, _BYTE *a3)
{
  v5 = sub_10011C0C4(a1);
  v6 = v5 & 0x7FFFFFFF;
  v7 = sub_100014DC8(v5 & 0x7FFFFFFF);
  v8 = v7;
  result = sub_100014EA0(a2, v6, v7);
  *a2 = v6;
  *a3 = v8;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Connection.run(_:)()
{
  return Connection.run(_:)();
}

{
  return Connection.run(_:)();
}

{
  return Connection.run(_:)();
}

uint64_t Connection.scalar<A>(_:)()
{
  return Connection.scalar<A>(_:)();
}

{
  return Connection.scalar<A>(_:)();
}

{
  return Connection.scalar<A>(_:)();
}

uint64_t Connection.scalar(_:_:)()
{
  return Connection.scalar(_:_:)();
}

{
  return Connection.scalar(_:_:)();
}

uint64_t static Expression<A>.+ infix<A>(_:_:)()
{
  return static Expression<A>.+ infix<A>(_:_:)();
}

{
  return static Expression<A>.+ infix<A>(_:_:)();
}

uint64_t static Expression<A>.< infix<A>(_:_:)()
{
  return static Expression<A>.< infix<A>(_:_:)();
}

{
  return static Expression<A>.< infix<A>(_:_:)();
}

Swift::String __swiftcall SchemaType.drop(ifExists:)(Swift::Bool ifExists)
{
  v1 = SchemaType.drop(ifExists:)(ifExists);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t TableBuilder.column<A>(_:unique:check:defaultValue:)()
{
  return TableBuilder.column<A>(_:unique:check:defaultValue:)();
}

{
  return TableBuilder.column<A>(_:unique:check:defaultValue:)();
}

uint64_t default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)()
{
  return default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
}

{
  return default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
}

uint64_t <- infix<A>(_:_:)()
{
  return <- infix<A>(_:_:)();
}

{
  return <- infix<A>(_:_:)();
}

{
  return <- infix<A>(_:_:)();
}

uint64_t Row.get<A>(_:)()
{
  return Row.get<A>(_:)();
}

{
  return Row.get<A>(_:)();
}

uint64_t QueryType.insert(or:_:)()
{
  return QueryType.insert(or:_:)();
}

{
  return QueryType.insert(or:_:)();
}

uint64_t Dependency.init<A>(satisfying:with:)()
{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}

uint64_t Bag.subscript.getter()
{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t std::to_chars()
{
  return std::to_chars();
}

{
  return std::to_chars();
}

{
  return std::to_chars();
}

{
  return std::to_chars();
}

{
  return std::to_chars();
}

{
  return std::to_chars();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}