uint64_t sub_10001BBA4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = a2;

  return _swift_task_switch(sub_10001BCA4, 0, 0);
}

uint64_t sub_10001BCA4()
{
  v1 = v0[29];
  sub_10006B8B8(v0[37]);

  sub_100001CC0(v0 + 12, v0[15]);
  sub_100038558(v1);
  DaemonPushInfoResponse.init(environment:records:subscribedChannelIDs:apsLastKnownConnectedDate:controlChannelID:)();
  sub_100001D04(&qword_1000A5130, &unk_1000842C0);
  swift_storeEnumTagMultiPayload();
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10001BDEC()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x80000001000877A0;
  v1._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[21];
  v3 = v0[22];
  v0[20] = v3;
  v4 = sub_1000061A4(v0 + 17);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 17));
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  type metadata accessor for DaemonPushInfoResponse();
  sub_10001C6C0(&qword_1000A5120, &type metadata accessor for DaemonPushInfoResponse, &protocol conformance descriptor for DaemonPushInfoResponse);
  sub_10001C6C0(&qword_1000A5128, &type metadata accessor for DaemonPushInfoResponse, &protocol conformance descriptor for DaemonPushInfoResponse);
  DaemonResponse.init(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001C0B8()
{
  sub_100001D4C(v0 + 2);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x80000001000877A0;
  v1._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[21];
  v3 = v0[22];
  v0[20] = v3;
  v4 = sub_1000061A4(v0 + 17);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 17));
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  type metadata accessor for DaemonPushInfoResponse();
  sub_10001C6C0(&qword_1000A5120, &type metadata accessor for DaemonPushInfoResponse, &protocol conformance descriptor for DaemonPushInfoResponse);
  sub_10001C6C0(&qword_1000A5128, &type metadata accessor for DaemonPushInfoResponse, &protocol conformance descriptor for DaemonPushInfoResponse);
  DaemonResponse.init(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001C38C()
{
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 2);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x80000001000877A0;
  v1._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[21];
  v3 = v0[22];
  v0[20] = v3;
  v4 = sub_1000061A4(v0 + 17);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 17));
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  type metadata accessor for DaemonPushInfoResponse();
  sub_10001C6C0(&qword_1000A5120, &type metadata accessor for DaemonPushInfoResponse, &protocol conformance descriptor for DaemonPushInfoResponse);
  sub_10001C6C0(&qword_1000A5128, &type metadata accessor for DaemonPushInfoResponse, &protocol conformance descriptor for DaemonPushInfoResponse);
  DaemonResponse.init(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001C6C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001C71C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10001C8B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for Date();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_10001CA58(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_10001CB4C(319);
      if (v3 <= 0x3F)
      {
        sub_10001FE4C(319, &unk_1000A51D0, &type metadata for Action, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10001CB4C(uint64_t a1)
{
  if (!qword_1000A51C8)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A51C8);
    }
  }
}

__n128 sub_10001CBB0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001CBC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10001CC0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

Swift::Int sub_10001CC74()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001CD1C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10001CDB0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001CE54@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001F074(*a1);
  *a2 = result;
  return result;
}

void sub_10001CE84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 99;
  v5 = 0xE100000000000000;
  v6 = 101;
  v7 = 30821;
  if (v2 != 3)
  {
    v7 = 24929;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE200000000000000;
  }

  if (*v1)
  {
    v4 = 112;
    v3 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_10001CEE8()
{
  v1 = *v0;
  v2 = 99;
  v3 = 101;
  v4 = 30821;
  if (v1 != 3)
  {
    v4 = 24929;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 112;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10001CF48@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10001F074(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001CF88(uint64_t a1)
{
  v2 = sub_10001FFB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001CFC4(uint64_t a1)
{
  v2 = sub_10001FFB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D000@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v28 - v5;
  v7 = sub_100001D04(&qword_1000A5310, &qword_100084628);
  v31 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PushMessageUserInfo(0);
  __chkstk_darwin(v11, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001CC0(a1, a1[3]);
  sub_10001FFB4();
  v15 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_100001D4C(a1);
  }

  v32 = v6;
  v29 = a1;
  v39 = 0;
  *v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v14 + 1) = v17;
  v37 = 1;
  sub_100020008();
  v18 = v10;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = v38;
  v20 = v32;
  if (v38 == 6)
  {
    v19 = 0;
  }

  v14[16] = v19;
  v36 = 2;
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v21)
  {
    v22 = 1;
  }

  else
  {
    Date.init(timeIntervalSince1970:)();
    v22 = 0;
  }

  v23 = v29;
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v20, v22, 1, v24);
  sub_10002005C(v20, &v14[v11[6]]);
  v35 = 3;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14[v11[7]] = (v25 == 1) & ~v26;
  sub_100001D04(&qword_1000A5328, &qword_100084630);
  v34 = 4;
  sub_1000200CC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v33)
  {
    v27 = v33;
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  (*(v31 + 8))(v18, v7);
  *&v14[v11[8]] = v27;
  sub_1000201A4(v14, v30, type metadata accessor for PushMessageUserInfo);
  sub_100001D4C(v23);
  return sub_10001FB3C(v14, type metadata accessor for PushMessageUserInfo);
}

unint64_t sub_10001D49C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v12 = 0;
      v4._countAndFlagsBits = 0x4268736572666572;
      v4._object = 0xEB00000000286761;
      String.append(_:)(v4);
      Double.write<A>(to:)();
      goto LABEL_18;
    }

    if (a3 == 3)
    {
      v3 = 0x6573655268737570;
LABEL_7:
      v12 = v3;
      String.append(_:)(*&a1);
LABEL_18:
      v10._countAndFlagsBits = 41;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);
      return v12;
    }

    v5 = a1;
    _StringGuts.grow(_:)(21);

    v12 = 0xD000000000000012;
    v6 = (v5 & 1) == 0;
LABEL_11:
    if (v6)
    {
      v7 = 0x65736C6166;
    }

    else
    {
      v7 = 1702195828;
    }

    if (v6)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    v9 = v8;
    String.append(_:)(*&v7);

    goto LABEL_18;
  }

  if (a3)
  {
    v12 = 0x6C62616E45676162;
    v6 = (a1 & 1) == 0;
    goto LABEL_11;
  }

  v3 = 0x6361437261656C63;
  if (a2)
  {
    goto LABEL_7;
  }

  return 0x6361437261656C63;
}

uint64_t sub_10001D658(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 118;
  }

  else
  {
    v2 = 97;
  }

  if (*a2)
  {
    v3 = 118;
  }

  else
  {
    v3 = 97;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10001D6C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001D728(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10001D76C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001D7C8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10009E1D8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10001D828(uint64_t *a1@<X8>)
{
  v2 = 97;
  if (*v1)
  {
    v2 = 118;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_10001D848()
{
  if (*v0)
  {
    return 118;
  }

  else
  {
    return 97;
  }
}

uint64_t sub_10001D864@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10009E1D8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10001D8D4(uint64_t a1)
{
  v2 = sub_10001F974();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D910(uint64_t a1)
{
  v2 = sub_10001F974();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10001D94C(uint64_t a1, Swift::UInt64 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (!a4)
    {
      Hasher._combine(_:)(0);
      if (a3)
      {
        Hasher._combine(_:)(1u);
        goto LABEL_8;
      }

      v8 = 0;
LABEL_18:
      Hasher._combine(_:)(v8);
      return;
    }

    v7 = 1;
LABEL_17:
    Hasher._combine(_:)(v7);
    v8 = a2 & 1;
    goto LABEL_18;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {
      Hasher._combine(_:)(3uLL);
LABEL_8:

      String.hash(into:)();
      return;
    }

    v7 = 4;
    goto LABEL_17;
  }

  Hasher._combine(_:)(2uLL);
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  Hasher._combine(_:)(v6);
}

Swift::Int sub_10001DA3C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_10001D94C(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_10001DAA4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  sub_10001D94C(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t sub_10001DAFC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10001F10C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_10001DB3C()
{
  result = qword_1000A5218;
  if (!qword_1000A5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5218);
  }

  return result;
}

uint64_t sub_10001DB90@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8, v7);
  v63 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PushMessageUserInfo(0);
  __chkstk_darwin(v9, v10);
  v66 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v12 - 8, v13);
  v14 = type metadata accessor for Date();
  v67 = *(v14 - 8);
  v68 = v14;
  v16 = __chkstk_darwin(v14, v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = v61 - v20;
  v22 = type metadata accessor for PushMessage(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22, v24);
  v26 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  v27 = [a1 userInfo];
  if (!v27)
  {
    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v72, v73);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C(v72);
    sub_100001D4C(a2);
    return (*(v23 + 56))(a3, 1, 1, v22);
  }

  v64 = v23;
  v69 = a2;
  v70 = v22;
  v65 = a3;
  v28 = v27;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v72[0] = 0;
  v31 = [v29 dataWithJSONObject:isa options:1 error:v72];

  v32 = v72[0];
  if (!v31)
  {
    v43 = v32;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v72, v73);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C(v72);
    sub_100001D4C(v69);
    a3 = v65;
    v22 = v70;
    v23 = v64;
    return (*(v23 + 56))(a3, 1, 1, v22);
  }

  v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  UUID.init()();
  v36 = [v71 timestamp];
  v62 = v33;
  if (v36)
  {
    v37 = v36;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = *(v67 + 32);
    v39 = v18;
    v40 = v68;
    v38(v21, v39, v68);
    v41 = v70;
    v38(&v26[v70[5]], v21, v40);
    v42 = v69;
  }

  else
  {
    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v72, v73);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    sub_100001D4C(v72);
    v42 = v69;
    sub_100001CC0(v69, v69[3]);
    v41 = v70;
    dispatch thunk of DateProvider.now.getter();
    v33 = v62;
  }

  static String.Encoding.utf8.getter();
  v44 = String.init(data:encoding:)();
  if (v45)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  if (v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0xE000000000000000;
  }

  v48 = &v26[v41[7]];
  *v48 = v46;
  *(v48 + 1) = v47;
  v61[1] = v47;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10001FA20();
  v49 = v66;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v26[v41[8]] = *(v49 + 16);
  sub_10001FACC(v49 + v9[6], &v26[v41[9]]);
  v26[v41[10]] = *(v49 + v9[7]);
  *&v26[v41[11]] = *(v49 + v9[8]);
  v52 = *(v49 + 8);
  if (!v52)
  {

    v55 = [v71 channelID];
    if (v55)
    {
      v56 = v55;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v57;

      goto LABEL_26;
    }

    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v72, v73);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_10001FA78(v33, v35);

    sub_10001FB3C(v66, type metadata accessor for PushMessageUserInfo);
    sub_100001D4C(v72);
    a3 = v65;
    sub_100001D4C(v69);
    v50 = type metadata accessor for UUID();
    (*(*(v50 - 8) + 8))(v26, v50);
    v22 = v70;
    (*(v67 + 8))(&v26[v70[5]], v68);

    v23 = v64;
    sub_10000DCA0(&v26[*(v22 + 36)], &qword_1000A56E0, &unk_100083BE0);

    return (*(v23 + 56))(a3, 1, 1, v22);
  }

  v53 = *v49;

  v54 = v52;
LABEL_26:

  sub_10001FB3C(v49, type metadata accessor for PushMessageUserInfo);
  sub_10001FA78(v33, v35);

  v58 = v70;
  v59 = &v26[v70[6]];
  *v59 = v53;
  v59[1] = v54;
  v60 = v65;
  sub_1000201A4(v26, v65, type metadata accessor for PushMessage);
  (*(v64 + 56))(v60, 0, 1, v58);
  sub_100001D4C(v42);
  return sub_10001FB3C(v26, type metadata accessor for PushMessage);
}

void *sub_10001E964(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001D04(&qword_1000A5230, &qword_100084480);
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
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001D04(&qword_1000A5238, &qword_100084488);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001EAAC(void *result, int64_t a2, char a3, void *a4)
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

  sub_100001D04(&qword_1000A5240, &qword_100084498);
  v10 = *(type metadata accessor for PushMessage(0) - 8);
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
  v15 = *(type metadata accessor for PushMessage(0) - 8);
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

char *sub_10001EC84(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001D04(&unk_1000A5650, &qword_100084490);
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

char *sub_10001ED90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001D04(&qword_1000A5348, &qword_100084640);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_10001EE94(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001D04(&qword_1000A5340, &qword_100084638);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_10001EF98(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      v8 = a6 == 1;
      goto LABEL_17;
    }

    if (a6)
    {
      return 0;
    }

    v7 = (a2 | a5) == 0;
    if (a2 && a5)
    {
      if (a1 != a4 || a2 != a5)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return v7;
  }

  if (a3 == 2)
  {
    return a6 == 2 && *&a1 == *&a4;
  }

  if (a3 == 3)
  {
    if (a6 == 3)
    {
      if (a1 != a4 || a2 != a5)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  v8 = a6 == 4;
LABEL_17:
  v9 = a4 ^ a1 ^ 1;
  if (!v8)
  {
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_10001F074(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10009E0A8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10001F0C0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10009E140, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001F10C(void *a1)
{
  v2 = type metadata accessor for DecodingError.Context();
  v56 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001D04(&qword_1000A5220, &qword_100084478);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v54 - v9;
  v11 = a1[3];
  v58 = a1;
  sub_100001CC0(a1, v11);
  v12 = COERCE_DOUBLE(sub_10001F974());
  v13 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v54 = v5;
    v55 = v12;
    v57 = v7;
    LOBYTE(v59) = 0;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;

    v63._countAndFlagsBits = v14;
    v63._object = v16;
    v17 = sub_10001F0C0(v63);
    v18 = v58;
    if (v17 == 5)
    {
      sub_100001CC0(v58, v58[3]);
      v19 = dispatch thunk of Decoder.codingPath.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10001E964(0, v19[2] + 1, 1, v19);
      }

      v20 = v2;
      v21 = v55;
      v22 = v56;
      v24 = v19[2];
      v23 = v19[3];
      if (v24 >= v23 >> 1)
      {
        v51 = sub_10001E964((v23 > 1), v24 + 1, 1, v19);
        v21 = v55;
        v19 = v51;
      }

      v60 = &type metadata for Action.CodingKeys;
      v61 = v21;
      LOBYTE(v59) = 0;
      v19[2] = v24 + 1;
      sub_10000626C(&v59, &v19[5 * v24 + 4]);
      *&v59 = 0;
      *(&v59 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      *&v59 = 0xD000000000000018;
      *(&v59 + 1) = 0x80000001000877F0;
      v25._countAndFlagsBits = v14;
      v25._object = v16;
      String.append(_:)(v25);

      v26 = v54;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v27 = type metadata accessor for DecodingError();
      swift_allocError();
      v12 = v28;
      (*(v22 + 16))(COERCE_DOUBLE(*&v28), v26, v20);
      (*(*(v27 - 8) + 104))(COERCE_DOUBLE(*&v12), enum case for DecodingError.dataCorrupted(_:), v27);
      swift_willThrow();
      (*(v22 + 8))(v26, v20);
      (*(v57 + 8))(v10, v6);
      goto LABEL_8;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        LOBYTE(v59) = 1;
        *&v31 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
        goto LABEL_16;
      }

      LOBYTE(v59) = 1;
      v42 = KeyedDecodingContainer.decode(_:forKey:)();
      v34 = v57;
      if (v42 != 1)
      {
        if (v42)
        {
          v35 = v42;
          sub_100001CC0(v18, v18[3]);
          v43 = dispatch thunk of Decoder.codingPath.getter();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_10001E964(0, v43[2] + 1, 1, v43);
          }

          v44 = v55;
          v38 = v56;
          v46 = v43[2];
          v45 = v43[3];
          if (v46 >= v45 >> 1)
          {
            v53 = sub_10001E964((v45 > 1), v46 + 1, 1, v43);
            v44 = v55;
            v43 = v53;
          }

          v60 = &type metadata for Action.CodingKeys;
          v61 = v44;
          LOBYTE(v59) = 0;
          v43[2] = v46 + 1;
          sub_10000626C(&v59, &v43[5 * v46 + 4]);
          *&v59 = 0;
          *(&v59 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(49);

          *&v59 = 0xD00000000000002FLL;
          *(&v59 + 1) = 0x8000000100087850;
          goto LABEL_35;
        }

LABEL_27:
        (*(v34 + 8))(v10, v6);
        v12 = 0.0;
        goto LABEL_29;
      }
    }

    else
    {
      if (v17 == 2)
      {
        LOBYTE(v59) = 1;
        v32 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v57 + 8))(v10, v6);
        v29 = v18;
        v12 = v32;
        goto LABEL_9;
      }

      if (v17 == 3)
      {
        LOBYTE(v59) = 1;
        *&v31 = COERCE_DOUBLE(KeyedDecodingContainer.decode(_:forKey:)());
LABEL_16:
        v12 = *&v31;
        (*(v57 + 8))(v10, v6);
LABEL_29:
        v29 = v18;
        goto LABEL_9;
      }

      LOBYTE(v59) = 1;
      v33 = KeyedDecodingContainer.decode(_:forKey:)();
      v34 = v57;
      if (v33 != 1)
      {
        if (v33)
        {
          v35 = v33;
          sub_100001CC0(v18, v18[3]);
          v36 = dispatch thunk of Decoder.codingPath.getter();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_10001E964(0, v36[2] + 1, 1, v36);
          }

          v37 = v55;
          v38 = v56;
          v40 = v36[2];
          v39 = v36[3];
          if (v40 >= v39 >> 1)
          {
            v52 = sub_10001E964((v39 > 1), v40 + 1, 1, v36);
            v37 = v55;
            v36 = v52;
          }

          v60 = &type metadata for Action.CodingKeys;
          v61 = v37;
          LOBYTE(v59) = 0;
          v36[2] = v40 + 1;
          sub_10000626C(&v59, &v36[5 * v40 + 4]);
          *&v59 = 0;
          *(&v59 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(56);
          v41._countAndFlagsBits = 0xD000000000000036;
          v41._object = 0x8000000100087810;
          String.append(_:)(v41);
LABEL_35:
          v62 = v35;
          v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v47);

          v48 = v54;
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          v49 = type metadata accessor for DecodingError();
          swift_allocError();
          v12 = v50;
          (*(v38 + 16))(COERCE_DOUBLE(*&v50), v48, v2);
          (*(*(v49 - 8) + 104))(COERCE_DOUBLE(*&v12), enum case for DecodingError.dataCorrupted(_:), v49);
          swift_willThrow();
          (*(v38 + 8))(v48, v2);
          (*(v57 + 8))(v10, v6);
          v29 = v18;
          goto LABEL_9;
        }

        goto LABEL_27;
      }
    }

    (*(v34 + 8))(v10, v6);
    *&v12 = 1;
    goto LABEL_29;
  }

LABEL_8:
  v29 = v58;
LABEL_9:
  sub_100001D4C(v29);
  return *&v12;
}

unint64_t sub_10001F974()
{
  result = qword_1000A5228;
  if (!qword_1000A5228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5228);
  }

  return result;
}

uint64_t sub_10001F9E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001FA20()
{
  result = qword_1000A5248;
  if (!qword_1000A5248)
  {
    type metadata accessor for PushMessageUserInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5248);
  }

  return result;
}

uint64_t sub_10001FA78(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10001FACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001FB3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001FBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10001FC90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_10001FD58(uint64_t a1)
{
  sub_10001FE4C(319, &unk_1000A52B8, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10001CB4C(319);
    if (v2 <= 0x3F)
    {
      sub_10001FE4C(319, &unk_1000A51D0, &type metadata for Action, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001FE4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10001FEB0()
{
  result = qword_1000A52F8;
  if (!qword_1000A52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A52F8);
  }

  return result;
}

unint64_t sub_10001FF08()
{
  result = qword_1000A5300;
  if (!qword_1000A5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5300);
  }

  return result;
}

unint64_t sub_10001FF60()
{
  result = qword_1000A5308;
  if (!qword_1000A5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5308);
  }

  return result;
}

unint64_t sub_10001FFB4()
{
  result = qword_1000A5318;
  if (!qword_1000A5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5318);
  }

  return result;
}

unint64_t sub_100020008()
{
  result = qword_1000A5320;
  if (!qword_1000A5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5320);
  }

  return result;
}

uint64_t sub_10002005C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000200CC()
{
  result = qword_1000A5330;
  if (!qword_1000A5330)
  {
    sub_100018FD0(&qword_1000A5328, &qword_100084630);
    sub_100020150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5330);
  }

  return result;
}

unint64_t sub_100020150()
{
  result = qword_1000A5338;
  if (!qword_1000A5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5338);
  }

  return result;
}

uint64_t sub_1000201A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for PushMessageUserInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PushMessageUserInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100020360()
{
  result = qword_1000A5350;
  if (!qword_1000A5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5350);
  }

  return result;
}

unint64_t sub_1000203B8()
{
  result = qword_1000A5358;
  if (!qword_1000A5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5358);
  }

  return result;
}

unint64_t sub_100020410()
{
  result = qword_1000A5360;
  if (!qword_1000A5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5360);
  }

  return result;
}

unint64_t sub_10002047C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000208C8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000204E0()
{
  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000839C0;
  *(inited + 32) = 0x6573616870;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  v1 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100020650(inited + 32);
  return v1;
}

unint64_t sub_1000205A4()
{
  result = qword_1000A5368;
  if (!qword_1000A5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5368);
  }

  return result;
}

unint64_t sub_1000205FC()
{
  result = qword_1000A5370;
  if (!qword_1000A5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5370);
  }

  return result;
}

uint64_t sub_100020650(uint64_t a1)
{
  v2 = sub_100001D04(&qword_1000A5380, &unk_100084870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SchedulingPriority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SchedulingPriority(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002080C()
{
  result = qword_1000A5388;
  if (!qword_1000A5388)
  {
    sub_100018FD0(&qword_1000A5390, "^h");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5388);
  }

  return result;
}

unint64_t sub_100020874()
{
  result = qword_1000A5398;
  if (!qword_1000A5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5398);
  }

  return result;
}

unint64_t sub_1000208C8(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

__n128 sub_1000208F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100020904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10002094C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000209A8()
{
  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084990;
  *(inited + 32) = 0x6D6F44726F727265;
  *(inited + 40) = 0xEB000000006E6961;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x4449656C646E7562;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = String._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x8000000100087A10;
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  v1 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A5380, &unk_100084870);
  swift_arrayDestroy();
  return v1;
}

Swift::Int sub_100020B04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100020B9C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  Hasher._combine(_:)(v3);
}

Swift::Int sub_100020C04(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_100020C98(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v7)
    {
      return 0;
    }

LABEL_7:
    if (v3 == v6 && v4 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v5 ^ v9 ^ 1u;
    }

    return 0;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_100020D6C()
{
  result = qword_1000A53A0;
  if (!qword_1000A53A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A53A0);
  }

  return result;
}

unint64_t sub_100020DC4()
{
  result = qword_1000A53A8;
  if (!qword_1000A53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A53A8);
  }

  return result;
}

uint64_t sub_100020E18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100020E3C()
{
  v1 = *(v0 + 40);
  if (v1 <= 4)
  {
    sub_10001D49C(*(v0 + 24), *(v0 + 32), v1);
  }

  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084990;
  *(inited + 32) = 0x6D6F44726F727265;
  *(inited + 40) = 0xEB000000006E6961;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x697463417473616CLL;
  *(inited + 88) = 0xEA00000000006E6FLL;
  *(inited + 96) = Int._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x8000000100087A70;
  v3 = String._bridgeToObjectiveC()();

  *(inited + 120) = v3;
  v4 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A5380, &unk_100084870);
  swift_arrayDestroy();
  return v4;
}

Swift::Int sub_100021028()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  if (v4 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_10001D94C(v6, v1, v3, v4);
  }

  return Hasher._finalize()();
}

void sub_1000210D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  String.hash(into:)();
  Hasher._combine(_:)(v4);
  if (v6 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    sub_10001D94C(a1, v3, v5, v6);
  }
}

Swift::Int sub_10002117C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  if (v5 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_10001D94C(v7, v2, v4, v5);
  }

  return Hasher._finalize()();
}

BOOL sub_100021228(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_100021324(&v5, &v7);
}

unint64_t sub_100021278()
{
  result = qword_1000A53B0;
  if (!qword_1000A53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A53B0);
  }

  return result;
}

unint64_t sub_1000212D0()
{
  result = qword_1000A53B8;
  if (!qword_1000A53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A53B8);
  }

  return result;
}

BOOL sub_100021324(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 2) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5 != 255)
  {
    if (v6 == 255)
    {
      return 0;
    }

    v8 = a1[3];
    v9 = *(a1 + 4);
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
    if (*(a1 + 40) <= 1u)
    {
      if (!*(a1 + 40))
      {
        if (*(a2 + 40))
        {
          return 0;
        }

        if (!v9)
        {
          return !v11;
        }

        if (!v11)
        {
          return 0;
        }

        return *&v8 == *&v10 && v9 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
      }

      if (v6 != 1)
      {
        return 0;
      }
    }

    else
    {
      if (v5 == 2)
      {
        return v6 == 2 && v8 == v10;
      }

      if (v5 == 3)
      {
        if (v6 != 3)
        {
          return 0;
        }

        return *&v8 == *&v10 && v9 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
      }

      if (v6 != 4)
      {
        return 0;
      }
    }

    return ((LODWORD(v10) ^ LODWORD(v8)) & 1) == 0;
  }

  return v6 == 255;
}

__n128 sub_100021448(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002145C(uint64_t a1, int a2)
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

uint64_t sub_1000214A4(uint64_t result, int a2, int a3)
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

unint64_t sub_100021518()
{
  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084C30;
  *(inited + 32) = 0x6D6F44726F727265;
  *(inited + 40) = 0xEB000000006E6961;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x496C656E6E616863;
  *(inited + 88) = 0xE900000000000044;
  *(inited + 96) = String._bridgeToObjectiveC()();
  v1 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A5380, &unk_100084870);
  swift_arrayDestroy();
  return v1;
}

Swift::Int sub_100021654()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000216D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(v2);

  return String.hash(into:)();
}

Swift::Int sub_10002173C(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000217B8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v6)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10002188C()
{
  result = qword_1000A53C0;
  if (!qword_1000A53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A53C0);
  }

  return result;
}

unint64_t sub_1000218E4()
{
  result = qword_1000A53C8;
  if (!qword_1000A53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A53C8);
  }

  return result;
}

Swift::Int sub_10002197C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1000219CC()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_100021A04(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void *sub_100021A50@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_100021A70(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

unint64_t sub_100021A98()
{
  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084990;
  *(inited + 32) = 0x6D6F44726F727265;
  *(inited + 40) = 0xEB000000006E6961;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  strcpy((inited + 80), "taskIdentifier");
  *(inited + 95) = -18;
  *(inited + 96) = String._bridgeToObjectiveC()();
  *(inited + 104) = 0x6567617473;
  *(inited + 112) = 0xE500000000000000;
  *(inited + 120) = Int._bridgeToObjectiveC()();
  v1 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A5380, &unk_100084870);
  swift_arrayDestroy();
  return v1;
}

Swift::Int sub_100021C04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_100021CA4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  Hasher._combine(_:)(v4);
}

Swift::Int sub_100021D14(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

unint64_t sub_100021DB4()
{
  result = qword_1000A5468;
  if (!qword_1000A5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5468);
  }

  return result;
}

unint64_t sub_100021E0C()
{
  result = qword_1000A5470;
  if (!qword_1000A5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5470);
  }

  return result;
}

unint64_t sub_100021E74()
{
  result = qword_1000A5478;
  if (!qword_1000A5478)
  {
    sub_100018FD0(&qword_1000A5480, "*c");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5478);
  }

  return result;
}

unint64_t sub_100021EDC()
{
  result = qword_1000A5488;
  if (!qword_1000A5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5488);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PingLog(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PingLog(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_100021FB0()
{
  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084F70;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000100087B80;
  *(inited + 48) = Int32._bridgeToObjectiveC()();
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x8000000100087BA0;
  *(inited + 72) = Int32._bridgeToObjectiveC()();
  v1 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A5380, &unk_100084870);
  swift_arrayDestroy();
  return v1;
}

Swift::Int sub_1000220A4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100022100()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10002213C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t sub_1000221C4()
{
  result = qword_1000A5490;
  if (!qword_1000A5490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5490);
  }

  return result;
}

unint64_t sub_10002221C()
{
  result = qword_1000A5498;
  if (!qword_1000A5498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5498);
  }

  return result;
}

__n128 sub_100022270(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100022284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000222CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100022328()
{
  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084990;
  *(inited + 32) = 0x496C656E6E616863;
  *(inited + 40) = 0xE900000000000044;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x4449656C646E7562;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = String._bridgeToObjectiveC()();
  *(inited + 80) = 0x797469726F697270;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = Int._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x8000000100087BE0;
  *(inited + 120) = Double._bridgeToObjectiveC()();
  v1 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A5380, &unk_100084870);
  swift_arrayDestroy();
  return v1;
}

Swift::Int sub_100022464()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(qword_100085148[v1]);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  Hasher._combine(_:)(*&v3);
  return Hasher._finalize()();
}

void sub_100022534(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(qword_100085148[v2]);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  Hasher._combine(_:)(*&v4);
}

Swift::Int sub_1000225B8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(qword_100085148[v2]);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  Hasher._combine(_:)(*&v4);
  return Hasher._finalize()();
}

BOOL sub_100022660(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v3 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return v5 == v9 && qword_100085148[v4] == qword_100085148[v8];
}

unint64_t sub_100022730()
{
  result = qword_1000A54A0;
  if (!qword_1000A54A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A54A0);
  }

  return result;
}

unint64_t sub_100022788()
{
  result = qword_1000A54A8;
  if (!qword_1000A54A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A54A8);
  }

  return result;
}

__n128 sub_1000227DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100022800(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_100022848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1000228B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100022928(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

void *sub_10002296C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1000229B4()
{
  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085180;
  *(inited + 32) = 0x4C52557465737361;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x4449656C646E7562;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = String._bridgeToObjectiveC()();
  *(inited + 80) = 0x44496567617375;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = String._bridgeToObjectiveC()();
  *(inited + 104) = 0x797469726F697270;
  *(inited + 112) = 0xE800000000000000;
  *(inited + 120) = Int._bridgeToObjectiveC()();
  *(inited + 128) = 0x7365636375537369;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = Bool._bridgeToObjectiveC()();
  *(inited + 152) = 0x6165526863746566;
  *(inited + 160) = 0xEB000000006E6F73;
  *(inited + 168) = Int._bridgeToObjectiveC()();
  *(inited + 176) = 0x6E6F6973726576;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = String._bridgeToObjectiveC()();
  v2 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A5380, &unk_100084870);
  swift_arrayDestroy();
  if ((*(v0 + 80) & 1) == 0)
  {
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10006A340(isa, 0xD000000000000019, 0x8000000100087C40, isUniquelyReferenced_nonNull_native);
  }

  return v2;
}

void sub_100022BB0(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(qword_100085388[*(v1 + 64)]);
  Hasher._combine(_:)(*(v1 + 65) & 1);
  Hasher._combine(_:)(*(v1 + 66) + 1);
  if (*(v1 + 80) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v1 + 72);
    Hasher._combine(_:)(1u);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    Hasher._combine(_:)(v3);
  }
}

Swift::Int sub_100022C7C()
{
  Hasher.init(_seed:)();
  sub_100022BB0(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100022CC0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100022BB0(v2);
  return Hasher._finalize()();
}

uint64_t sub_100022CFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_100022E18(v7, v9) & 1;
}

unint64_t sub_100022D6C()
{
  result = qword_1000A54B0;
  if (!qword_1000A54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A54B0);
  }

  return result;
}

unint64_t sub_100022DC4()
{
  result = qword_1000A54B8;
  if (!qword_1000A54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A54B8);
  }

  return result;
}

uint64_t sub_100022E18(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2) == *(a2 + 16) && *(a1 + 3) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 4) != *(a2 + 32) || *(a1 + 5) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 6) != *(a2 + 48) || *(a1 + 7) != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || qword_100085388[*(a1 + 64)] != qword_100085388[*(a2 + 64)] || ((*(a1 + 65) ^ *(a2 + 65)) & 1) != 0 || *(a1 + 66) != *(a2 + 66))
  {
    return 0;
  }

  v6 = *(a2 + 80);
  if (a1[10])
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a1[9] != *(a2 + 72))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_100022F4C()
{
  result = qword_1000A54C0;
  if (!qword_1000A54C0)
  {
    sub_100018FD0(&qword_1000A54C8, "z_");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A54C0);
  }

  return result;
}

unint64_t sub_100022FB4()
{
  result = qword_1000A54D0;
  if (!qword_1000A54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A54D0);
  }

  return result;
}

uint64_t sub_100023008()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  sub_100018750(v0, qword_1000A6378);
  sub_100018718(v0, qword_1000A6378);
  return OSLogger.Subsystem.init(rawValue:)();
}

uint64_t sub_10002311C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = type metadata accessor for OSLogger.Subsystem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A4D30 != -1)
  {
    swift_once();
  }

  v10 = sub_100018718(v5, qword_1000A6378);
  (*(v6 + 16))(v9, v10, v5);
  v13[3] = type metadata accessor for OSLogger();
  v13[4] = &protocol witness table for OSLogger;
  sub_1000061A4(v13);
  OSLogger.init(subsystem:category:)();
  sub_100001D04(&qword_1000A54D8, &qword_1000853B8);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  *a4 = result;
  return result;
}

uint64_t sub_100023290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_100002758(a3, v26 - v11, &qword_1000A4ED8, &qword_100084010);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000DCA0(v12, &qword_1000A4ED8, &qword_100084010);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10000DCA0(a3, &qword_1000A4ED8, &qword_100084010);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000DCA0(a3, &qword_1000A4ED8, &qword_100084010);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100023590()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100018750(v0, qword_1000A54E0);
  v1 = sub_100018718(v0, qword_1000A54E0);
  if (qword_1000A4D90 != -1)
  {
    swift_once();
  }

  v2 = sub_100018718(v0, qword_1000A6408);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100023658()
{
  v1[16] = v0;
  v2 = sub_100001D04(&unk_1000A56F0, &qword_1000854F8);
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v1[20] = swift_task_alloc();
  v3 = type metadata accessor for Bag();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000237B8, 0, 0);
}

uint64_t sub_1000237B8()
{
  sub_100001CC0((v0[16] + OBJC_IVAR____TtC13jetpackassetd11PushManager_bagManager), *(v0[16] + OBJC_IVAR____TtC13jetpackassetd11PushManager_bagManager + 24));
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_100023868;
  v2 = v0[20];

  return sub_100015738(v2);
}

uint64_t sub_100023868()
{

  return _swift_task_switch(sub_100023964, 0, 0);
}

uint64_t sub_100023964()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000DCA0(v3, &unk_1000A56A0, &unk_100083E10);
    type metadata accessor for LocalPreferences();
    Preferences.subscript.getter();
    v4 = v0[13];
    if (v4)
    {
      v5 = v0[12];
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100001CC0(v0 + 7, v0[10]);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();

      sub_100001D4C(v0 + 7);
    }

    else
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100001CC0(v0 + 2, v0[5]);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();

      sub_100001D4C(v0 + 2);
      if (qword_1000A4D18 != -1)
      {
        swift_once();
      }

      v5 = *(&xmmword_1000A6358 + 1);
      v4 = qword_1000A6368;
    }

    v9 = v0[1];

    return v9(v5, v4);
  }

  else
  {
    (*(v2 + 32))(v0[23], v3, v1);
    v6 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    v7 = swift_task_alloc();
    v0[25] = v7;
    *v7 = v0;
    v7[1] = sub_100023DF4;
    v8 = v0[17];

    return Bag.Value.currentOrNil()(v0 + 14, v8);
  }
}

uint64_t sub_100023DF4()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100023F4C, 0, 0);
}

uint64_t sub_100023F4C()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[14];
  }

  else
  {
    type metadata accessor for LocalPreferences();
    Preferences.subscript.getter();
    v1 = v0[13];
    if (v1)
    {
      v2 = v0[12];
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100001CC0(v0 + 7, v0[10]);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();

      sub_100001D4C(v0 + 7);
    }

    else
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100001CC0(v0 + 2, v0[5]);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();

      sub_100001D4C(v0 + 2);
      if (qword_1000A4D18 != -1)
      {
        swift_once();
      }

      v2 = *(&xmmword_1000A6358 + 1);
      v1 = qword_1000A6368;
    }
  }

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1000242E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v19 - v8;
  v10 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v10 - 8, v11);
  if (a2)
  {
    v20 = a1;
    v21 = v5;
    v22 = v2;
    v12 = qword_1000A4D48;

    if (v12 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v19[1] = v26;
    sub_100001CC0(v24, v25);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._object = 0x8000000100088CD0;
    v13._countAndFlagsBits = 0xD000000000000026;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v23[3] = &type metadata for String;
    v14 = v20;
    v23[0] = v20;
    v23[1] = a2;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v23, &qword_1000A5630, &unk_100083BF0);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v24);
    (*(v6 + 16))(v9, v22 + OBJC_IVAR____TtC13jetpackassetd11PushManager_subscribedControlChannelIDKey, v21);
    v24[0] = v14;
    v24[1] = a2;
    type metadata accessor for LocalPreferences();
    return Preferences.subscript.setter();
  }

  else
  {
    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v24, v25);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v24);
    v17 = OBJC_IVAR____TtC13jetpackassetd11PushManager_subscribedControlChannelIDKey;
    v25 = v5;
    v26 = sub_100040238(&qword_1000A5788, &qword_1000A4EE0, &qword_100083C00, &protocol conformance descriptor for PreferenceKey<A>);
    v18 = sub_1000061A4(v24);
    (*(v6 + 16))(v18, v2 + v17, v5);
    LocalPreferences.removeValue(forKey:)();
    return sub_100001D4C(v24);
  }
}

uint64_t sub_100024798(uint64_t a1, char a2)
{
  v18 = a1;
  v16 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  v3 = *(v16 - 8);
  __chkstk_darwin(v16, v4);
  v6 = v15 - v5;
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8, v8);
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v15[1] = v23;
  sub_100001CC0(&v20, v22);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x8000000100087E40;
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  if (a2)
  {
    v10 = 0;
    v11 = 0;
    v19[1] = 0;
    v19[2] = 0;
    v12 = v18;
  }

  else
  {
    v11 = &type metadata for Double;
    v12 = v18;
    v10 = v18;
  }

  v19[0] = v10;
  v19[3] = v11;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v19, &qword_1000A5630, &unk_100083BF0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(&v20);
  (*(v3 + 16))(v6, v17 + OBJC_IVAR____TtC13jetpackassetd11PushManager_apsLastKnownConnectedKey, v16);
  v20 = v12;
  v21 = a2 & 1;
  type metadata accessor for LocalPreferences();
  return Preferences.subscript.setter();
}

uint64_t sub_100024AB0()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0, v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8, v3);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100040154(0, &qword_1000A4F80, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_10004019C(&qword_1000A5700, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001D04(&qword_1000A5708, &unk_100085510);
  sub_100040238(&qword_1000A5710, &qword_1000A5708, &unk_100085510, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1000A54F8 = result;
  return result;
}

uint64_t sub_100024D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v5[44] = swift_getObjectType();

  return _swift_task_switch(sub_100024D9C, 0, 0);
}

uint64_t sub_100024D9C()
{
  v1 = v0[43];
  v0[45] = OBJC_IVAR____TtC13jetpackassetd11PushManager_subscribedControlChannelIDKey;
  PreferenceKey.init(_:)();
  v0[46] = OBJC_IVAR____TtC13jetpackassetd11PushManager_apsLastKnownConnectedKey;
  PreferenceKey.init(_:)();
  v2 = OBJC_IVAR____TtC13jetpackassetd11PushManager_beforeUnlockPushes;
  v0[47] = OBJC_IVAR____TtC13jetpackassetd11PushManager_beforeUnlockPushes;
  sub_100001D04(&qword_1000A5720, &qword_100085530);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = _swiftEmptyArrayStorage;
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC13jetpackassetd11PushManager_unlockListener;
  v0[48] = OBJC_IVAR____TtC13jetpackassetd11PushManager_unlockListener;
  sub_100001D04(&qword_1000A5728, &qword_100085538);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(v1 + v4) = v5;
  v6 = type metadata accessor for AssetSQLiteDatabase();
  v7 = swift_task_alloc();
  v0[49] = v7;
  *v7 = v0;
  v7[1] = sub_100024F34;

  return BaseObjectGraph.inject<A>(_:)(v0 + 36, v6, v6);
}

uint64_t sub_100024F34()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_100026128;
  }

  else
  {
    v2 = sub_100025048;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100025048()
{
  v1 = v0[43];
  v2 = v0[36];
  v3 = OBJC_IVAR____TtC13jetpackassetd11PushManager_database;
  v0[51] = OBJC_IVAR____TtC13jetpackassetd11PushManager_database;
  *(v1 + v3) = v2;
  v4 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v5 = swift_task_alloc();
  v0[52] = v5;
  *v5 = v0;
  v5[1] = sub_10002511C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v4, v4);
}

uint64_t sub_10002511C()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_100026FF4;
  }

  else
  {
    v2 = sub_100025230;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100025230()
{
  sub_10000626C((v0 + 16), *(v0 + 344) + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore);
  v1 = type metadata accessor for JetPackAssetDiskCache();
  v2 = swift_task_alloc();
  *(v0 + 432) = v2;
  *v2 = v0;
  v2[1] = sub_1000252F8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 296, v1, v1);
}

uint64_t sub_1000252F8()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_1000262A8;
  }

  else
  {
    v2 = sub_10002540C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002540C()
{
  *(v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_diskCache) = v0[37];
  v1 = sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
  v2 = swift_task_alloc();
  v0[56] = v2;
  *v2 = v0;
  v2[1] = sub_1000254DC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v1, v1);
}

uint64_t sub_1000254DC()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_100026460;
  }

  else
  {
    v2 = sub_1000255F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000255F0()
{
  sub_10000626C((v0 + 56), *(v0 + 344) + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler);
  v1 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v2 = swift_task_alloc();
  *(v0 + 464) = v2;
  *v2 = v0;
  v2[1] = sub_1000256C4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v1, v1);
}

uint64_t sub_1000256C4()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_10002661C;
  }

  else
  {
    v2 = sub_1000257D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000257D8()
{
  sub_10000626C((v0 + 96), *(v0 + 344) + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger);
  v1 = sub_100001D04(&qword_1000A4E70, &qword_100083C20);
  v2 = swift_task_alloc();
  *(v0 + 480) = v2;
  *v2 = v0;
  v2[1] = sub_1000258AC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 136, v1, v1);
}

uint64_t sub_1000258AC()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_1000267EC;
  }

  else
  {
    v2 = sub_1000259C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000259C0()
{
  sub_10000626C((v0 + 136), *(v0 + 344) + OBJC_IVAR____TtC13jetpackassetd11PushManager_bagManager);
  v1 = sub_100001D04(&unk_1000A5750, &unk_100085550);
  v2 = swift_task_alloc();
  *(v0 + 496) = v2;
  *v2 = v0;
  v2[1] = sub_100025A94;

  return BaseObjectGraph.inject<A>(_:)(v0 + 256, v1, v1);
}

uint64_t sub_100025A94()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_1000269D0;
  }

  else
  {
    v2 = sub_100025BA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100025BA8()
{
  *(*(v0 + 344) + OBJC_IVAR____TtC13jetpackassetd11PushManager_killSwitchManager) = *(v0 + 256);
  v1 = sub_100001D04(&qword_1000A4E98, &qword_100083B18);
  v2 = swift_task_alloc();
  *(v0 + 512) = v2;
  *v2 = v0;
  v2[1] = sub_100025C78;

  return BaseObjectGraph.inject<A>(_:)(v0 + 176, v1, v1);
}

uint64_t sub_100025C78()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_100026BC8;
  }

  else
  {
    v2 = sub_100025D8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100025D8C()
{
  sub_10000626C((v0 + 176), *(v0 + 344) + OBJC_IVAR____TtC13jetpackassetd11PushManager_beforeFirstUnlockChecker);
  v1 = sub_100001D04(&qword_1000A5760, &qword_100085560);
  v2 = swift_task_alloc();
  *(v0 + 528) = v2;
  *v2 = v0;
  v2[1] = sub_100025E60;

  return BaseObjectGraph.inject<A>(_:)(v0 + 216, v1, v1);
}

uint64_t sub_100025E60()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_100026DD4;
  }

  else
  {
    v2 = sub_100025F74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100025F74()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v9 = *(v0 + 344);
  sub_10000626C((v0 + 216), v9 + OBJC_IVAR____TtC13jetpackassetd11PushManager_metricsPipelineManager);
  sub_100001D04(&qword_1000A5768, &qword_100085568);
  *(v0 + 304) = v3;
  v4 = v3;
  *(v9 + OBJC_IVAR____TtC13jetpackassetd11PushManager_connectionWrapper) = SendableWrapper.__allocating_init(_:)();
  *(v9 + OBJC_IVAR____TtC13jetpackassetd11PushManager_localPreferences) = v2;
  sub_1000064B4(v1, v9 + OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider);
  *(v0 + 272) = v9;

  v5 = objc_msgSendSuper2((v0 + 272), "init");
  *(swift_task_alloc() + 16) = v5;
  v6 = v5;

  SendableWrapper.withValue<A>(_:)();

  sub_100001D4C(v1);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_100026128()
{
  v1 = v0[42];
  v2 = v0[40];

  sub_100001D4C(v1);
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[43];
  v6 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v6 - 8) + 8))(v5 + v4, v6);
  v7 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v7 - 8) + 8))(v5 + v3, v7);

  swift_deallocPartialClassInstance();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1000262A8()
{
  v1 = v0[42];
  v2 = v0[40];

  sub_100001D4C(v1);
  v3 = v0[55];
  v4 = v0[43];

  sub_100001D4C((v4 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore));
  if (!v3)
  {
  }

  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[43];
  v8 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v8 - 8) + 8))(v7 + v6, v8);
  v9 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v9 - 8) + 8))(v7 + v5, v9);

  swift_deallocPartialClassInstance();
  v10 = v0[1];

  return v10();
}

uint64_t sub_100026460()
{
  v1 = v0[42];
  v2 = v0[40];

  sub_100001D4C(v1);
  v3 = v0[55];
  v4 = v0[43];

  sub_100001D4C((v4 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore));
  if (!v3)
  {
  }

  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[43];
  v8 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v8 - 8) + 8))(v7 + v6, v8);
  v9 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v9 - 8) + 8))(v7 + v5, v9);

  swift_deallocPartialClassInstance();
  v10 = v0[1];

  return v10();
}

uint64_t sub_10002661C()
{
  v1 = v0[42];
  v2 = v0[40];

  sub_100001D4C(v1);
  v3 = v0[55];
  v4 = v0[43];

  sub_100001D4C((v4 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore));
  if (!v3)
  {
  }

  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler));
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[43];
  v8 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v8 - 8) + 8))(v7 + v6, v8);
  v9 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v9 - 8) + 8))(v7 + v5, v9);

  swift_deallocPartialClassInstance();
  v10 = v0[1];

  return v10();
}

uint64_t sub_1000267EC()
{
  v1 = v0[42];
  v2 = v0[40];

  sub_100001D4C(v1);
  v3 = v0[55];
  v4 = v0[43];

  sub_100001D4C((v4 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore));
  if (!v3)
  {
  }

  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler));
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger));
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[43];
  v8 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v8 - 8) + 8))(v7 + v6, v8);
  v9 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v9 - 8) + 8))(v7 + v5, v9);

  swift_deallocPartialClassInstance();
  v10 = v0[1];

  return v10();
}

uint64_t sub_1000269D0()
{
  v1 = v0[42];
  v2 = v0[40];

  sub_100001D4C(v1);
  v3 = v0[55];
  v4 = v0[43];

  sub_100001D4C((v4 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore));
  if (!v3)
  {
  }

  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler));
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger));
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_bagManager));
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[43];
  v8 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v8 - 8) + 8))(v7 + v6, v8);
  v9 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v9 - 8) + 8))(v7 + v5, v9);

  swift_deallocPartialClassInstance();
  v10 = v0[1];

  return v10();
}

uint64_t sub_100026BC8()
{
  v1 = v0[42];
  v2 = v0[40];

  sub_100001D4C(v1);
  v3 = v0[55];
  v4 = v0[43];

  sub_100001D4C((v4 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore));
  if (!v3)
  {
  }

  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler));
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger));
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_bagManager));
  swift_unknownObjectRelease();
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[43];
  v8 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v8 - 8) + 8))(v7 + v6, v8);
  v9 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v9 - 8) + 8))(v7 + v5, v9);

  swift_deallocPartialClassInstance();
  v10 = v0[1];

  return v10();
}

uint64_t sub_100026DD4()
{
  v1 = v0[42];
  v2 = v0[40];

  sub_100001D4C(v1);
  v3 = v0[55];
  v4 = v0[43];

  sub_100001D4C((v4 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore));
  if (!v3)
  {
  }

  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler));
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger));
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_bagManager));
  swift_unknownObjectRelease();
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_beforeFirstUnlockChecker));
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[43];
  v8 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v8 - 8) + 8))(v7 + v6, v8);
  v9 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v9 - 8) + 8))(v7 + v5, v9);

  swift_deallocPartialClassInstance();
  v10 = v0[1];

  return v10();
}

uint64_t sub_100026FF4()
{
  v1 = v0[42];
  v2 = v0[40];

  sub_100001D4C(v1);

  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[43];
  v6 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v6 - 8) + 8))(v5 + v4, v6);
  v7 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v7 - 8) + 8))(v5 + v3, v7);

  swift_deallocPartialClassInstance();
  v8 = v0[1];

  return v8();
}

uint64_t sub_100027184(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8, v7);
  v8 = *a1;
  v9 = objc_allocWithZone(PKPublicChannel);
  v28 = a2;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithChannelID:v10];

  if (v11)
  {
    v12 = qword_1000A4D18;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v15 = qword_1000A6350;
    v14 = xmmword_1000A6358;
    v16 = String._bridgeToObjectiveC()();
    [v8 subscribeToChannel:v13 forTopic:v16];

    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v26, v27);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._countAndFlagsBits = 0xD00000000000003BLL;
    v17._object = 0x8000000100087F20;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    v25 = &type metadata for String;
    v23 = v15;
    v24 = v14;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v23, &qword_1000A5630, &unk_100083BF0);
    v18._countAndFlagsBits = 0x656E6E616863202CLL;
    v18._object = 0xED0000203A44496CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    v25 = &type metadata for String;
    v23 = v28;
    v24 = a3;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v23, &qword_1000A5630, &unk_100083BF0);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    return sub_100001D4C(v26);
  }

  else
  {
    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v26, v27);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._object = 0x8000000100087EA0;
    v21._countAndFlagsBits = 0xD000000000000033;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    v25 = &type metadata for String;
    v23 = v28;
    v24 = a3;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v23, &qword_1000A5630, &unk_100083BF0);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    return sub_100001D4C(v26);
  }
}

uint64_t sub_10002765C(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8, v7);
  v8 = *a1;
  v9 = objc_allocWithZone(PKPublicChannel);
  v28 = a2;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithChannelID:v10];

  if (v11)
  {
    v12 = qword_1000A4D18;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v15 = qword_1000A6350;
    v14 = xmmword_1000A6358;
    v16 = String._bridgeToObjectiveC()();
    [v8 unsubscribeFromChannel:v13 forTopic:v16];

    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v26, v27);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._countAndFlagsBits = 0xD00000000000003FLL;
    v17._object = 0x8000000100087EE0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    v25 = &type metadata for String;
    v23 = v15;
    v24 = v14;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v23, &qword_1000A5630, &unk_100083BF0);
    v18._countAndFlagsBits = 0x656E6E616863202CLL;
    v18._object = 0xED0000203A44496CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    v25 = &type metadata for String;
    v23 = v28;
    v24 = a3;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v23, &qword_1000A5630, &unk_100083BF0);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    return sub_100001D4C(v26);
  }

  else
  {
    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v26, v27);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._object = 0x8000000100087EA0;
    v21._countAndFlagsBits = 0xD000000000000033;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    v25 = &type metadata for String;
    v23 = v28;
    v24 = a3;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v23, &qword_1000A5630, &unk_100083BF0);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    return sub_100001D4C(v26);
  }
}

uint64_t sub_100027B54()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = sub_100001D04(&qword_1000A5638, &qword_100085440);
  *v3 = v0;
  v3[1] = sub_100027C5C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000014, 0x8000000100087E60, sub_10004036C, v2, v4);
}

uint64_t sub_100027C5C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100027E80;
  }

  else
  {

    v2 = sub_100027D78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100027D78()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = swift_task_alloc();
      *(v6 + 16) = v5;
      *(v6 + 24) = v4;

      SendableWrapper.withValue<A>(_:)();

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100027E80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100027F04()
{
  v1 = v0[21];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[23] = v3;
  v4 = sub_100001D04(&qword_1000A5638, &qword_100085440);
  *v3 = v0;
  v3[1] = sub_10002800C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 20, 0, 0, 0xD000000000000014, 0x8000000100087E60, sub_10004036C, v2, v4);
}

uint64_t sub_10002800C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1000288CC;
  }

  else
  {

    v2 = sub_100028128;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100028128()
{
  v0[25] = v0[20];
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1000281C0;

  return sub_100023658();
}

uint64_t sub_1000281C0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;

  return _swift_task_switch(sub_1000282C0, 0, 0);
}

uint64_t sub_1000282C0()
{
  if (qword_1000A4D18 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = *(&xmmword_1000A6358 + 1);
  v3 = qword_1000A6368;
  v4 = v0[27] == *(&xmmword_1000A6358 + 1) && v1 == qword_1000A6368;
  v5 = v4;
  v31 = v5;
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v10 = v0[25];
    v0[12] = v2;
    v0[13] = v3;
    v11 = swift_task_alloc();
    *(v11 + 16) = v0 + 12;
    LOBYTE(v10) = sub_10003DB50(sub_100040370, v11, v10);

    if (v10)
    {
      v12 = swift_task_alloc();
      *(v12 + 16) = v2;
      *(v12 + 24) = v3;
      SendableWrapper.withValue<A>(_:)();
    }
  }

  v6 = v0[21];
  v7 = OBJC_IVAR____TtC13jetpackassetd11PushManager_subscribedControlChannelIDKey;
  type metadata accessor for LocalPreferences();
  v30 = v7;
  Preferences.subscript.getter();
  v8 = v0[15];
  if (v8)
  {
    v9 = v0[14];
    if (v0[27] == v9 && v8 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }

    else
    {
      v28 = v6;
      v13 = v0[25];
      v0[18] = v9;
      v0[19] = v8;
      v14 = swift_task_alloc();
      *(v14 + 16) = v0 + 18;
      LOBYTE(v13) = sub_10003DB50(sub_100040370, v14, v13);

      if (v13)
      {
        v15 = swift_task_alloc();
        *(v15 + 16) = v9;
        *(v15 + 24) = v8;
        SendableWrapper.withValue<A>(_:)();
      }

      else
      {
      }

      v6 = v28;
    }
  }

  v16 = v0[28];
  v17 = v0[25];
  v0[16] = v0[27];
  v0[17] = v16;
  v18 = swift_task_alloc();
  *(v18 + 16) = v0 + 16;
  v19 = sub_10003DB50(sub_100040370, v18, v17);

  v20 = v0[28];
  if (v19)
  {

    v21 = v0[1];

    return v21();
  }

  else
  {
    v29 = v6;
    v23 = v0[27];
    v24 = swift_task_alloc();
    *(v24 + 16) = v23;
    *(v24 + 24) = v20;
    SendableWrapper.withValue<A>(_:)();

    if (v31 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
    {

      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100001CC0(v0 + 2, v0[5]);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      sub_100001D4C(v0 + 2);
      v25 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
      v0[10] = v25;
      v0[11] = sub_100040238(&qword_1000A5788, &qword_1000A4EE0, &qword_100083C00, &protocol conformance descriptor for PreferenceKey<A>);
      v26 = sub_1000061A4(v0 + 7);
      (*(*(v25 - 8) + 16))(v26, v29 + v30, v25);
      LocalPreferences.removeValue(forKey:)();
      sub_100001D4C(v0 + 7);
    }

    else
    {
      sub_1000242E8(v0[27], v1);
    }

    v27 = swift_task_alloc();
    v0[29] = v27;
    *v27 = v0;
    v27[1] = sub_100028930;

    return sub_100028A34();
  }
}

uint64_t sub_1000288CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100028930(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100028A34()
{
  v1[26] = v0;
  type metadata accessor for LogMessage.StringInterpolation();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_100028AD0, 0, 0);
}

uint64_t sub_100028AD0()
{
  v1 = v0[26];
  v2 = swift_task_alloc();
  v0[29] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[30] = v3;
  v4 = sub_100001D04(&qword_1000A5638, &qword_100085440);
  v0[31] = v4;
  *v3 = v0;
  v3[1] = sub_100028BDC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 23, 0, 0, 0xD000000000000014, 0x8000000100087E60, sub_10004036C, v2, v4);
}

uint64_t sub_100028BDC()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100028F94;
  }

  else
  {

    v2 = sub_100028CF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100028CF8()
{
  v1 = v0[23];
  v0[25] = v1;
  sub_100040238(&qword_1000A56C8, &qword_1000A5638, &qword_100085440, &protocol conformance descriptor for [A]);
  v2 = BidirectionalCollection<>.joined(separator:)();
  v4 = v3;
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x8000000100088950;
  v5._countAndFlagsBits = 0xD000000000000015;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  if (!*(v1 + 16))
  {

    v4 = 0xE600000000000000;
    v2 = 0x29656E6F6E28;
  }

  v0[19] = &type metadata for String;
  v0[16] = v2;
  v0[17] = v4;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 16), &qword_1000A5630, &unk_100083BF0);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 7);

  v7 = v0[1];

  return v7(v1);
}

uint64_t sub_100028F94()
{

  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100088920;
  v1._countAndFlagsBits = 0xD00000000000002ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[20];
  v3 = v0[21];
  v0[15] = v3;
  v4 = sub_1000061A4(v0 + 12);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 12), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 2);

  v6 = v0[1];

  return v6(_swiftEmptyArrayStorage);
}

uint64_t sub_1000291FC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_100029220, 0, 0);
}

uint64_t sub_100029220()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = sub_100001D04(&qword_1000A5638, &qword_100085440);
  *v3 = v0;
  v3[1] = sub_100029328;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 4, 0, 0, 0xD000000000000014, 0x8000000100087E60, sub_10004036C, v2, v4);
}

uint64_t sub_100029328()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100029568;
  }

  else
  {

    v2 = sub_100029444;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100029444()
{
  v0[2] = v0[5];
  v1 = v0[4];
  v0[3] = v0[6];
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 2;
  v3 = sub_10003DB50(sub_100040370, v2, v1);

  if ((v3 & 1) == 0)
  {
    v4 = v0[6];
    v5 = v0[5];
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    SendableWrapper.withValue<A>(_:)();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100029568()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000295CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_100029660;

  return sub_100023658();
}

uint64_t sub_100029660(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return _swift_task_switch(sub_100029760, 0, 0);
}

uint64_t sub_100029760()
{
  if (v0[6] == v0[2] && v0[7] == v0[3])
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      sub_100001CC0((v0[4] + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore), *(v0[4] + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore + 24));
      v5 = *(dispatch thunk of AssetPushSubscriptionStore.find(channelID:)() + 16);

      if (!v5)
      {
        v6 = v0[3];
        v7 = v0[2];
        v8 = swift_task_alloc();
        *(v8 + 16) = v7;
        *(v8 + 24) = v6;
        SendableWrapper.withValue<A>(_:)();
      }
    }
  }

  v3 = v0[1];

  return v3();
}

void sub_1000298BC(void **a1, uint64_t a2)
{
  v4 = sub_100001D04(&qword_1000A5640, &qword_100085448);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = aBlock - v7;
  v9 = *a1;
  if (qword_1000A4D18 != -1)
  {
    swift_once();
  }

  v10 = String._bridgeToObjectiveC()();
  (*(v5 + 16))(v8, a2, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_100038764;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029CC0;
  aBlock[3] = &unk_10009F2D0;
  v13 = _Block_copy(aBlock);

  [v9 getRegisteredChannelsForTopic:v10 withCompletion:v13];
  _Block_release(v13);
}

char *sub_100029ACC(unint64_t a1, unint64_t *a2, unint64_t **a3)
{
  if (a2)
  {
    v21 = a2;
    swift_errorRetain();
    sub_100001D04(&qword_1000A5640, &qword_100085448);
    return CheckedContinuation.resume(throwing:)();
  }

  else if (a1)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v8 = _swiftEmptyArrayStorage;
      if (!i)
      {
LABEL_18:
        v21 = v8;
        goto LABEL_20;
      }

      v19 = a3;
      v20 = v6;
      v21 = _swiftEmptyArrayStorage;
      a3 = &v21;
      result = sub_10003DBFC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v9 = 0;
      v8 = v21;
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v20 + 16))
          {
            goto LABEL_22;
          }

          v11 = *(a1 + 8 * v9 + 32);
        }

        a3 = v11;
        v6 = i;
        result = [v11 channelID];
        if (!result)
        {
          goto LABEL_25;
        }

        v12 = result;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v21 = v8;
        v17 = v8[2];
        v16 = v8[3];
        if (v17 >= v16 >> 1)
        {
          a3 = &v21;
          sub_10003DBFC((v16 > 1), v17 + 1, 1);
          v8 = v21;
        }

        v8[2] = v17 + 1;
        v18 = &v8[2 * v17];
        v18[4] = v13;
        v18[5] = v15;
        ++v9;
        i = v6;
        if (v10 == v6)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_20:
    sub_100001D04(&qword_1000A5640, &qword_100085448);
    return CheckedContinuation.resume(returning:)();
  }

  return result;
}

uint64_t sub_100029CC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100040154(0, &qword_1000A5648, PKPublicChannel_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_100029D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = type metadata accessor for OSSignpostID();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_100029E38, 0, 0);
}

uint64_t sub_100029E38()
{
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 2);
  if (qword_1000A4D68 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  sub_100018718(v1, qword_1000A54E0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "didRetrieveAsset", "", v4, 2u);
  }

  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[14];

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[17] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v7, v8);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_10002A148;
  v11 = v0[11];
  v12 = v0[9];
  v13 = v0[10];
  v15 = v0[7];
  v14 = v0[8];

  return sub_10002A394(v15, v14, v12, v13, v11);
}

uint64_t sub_10002A148()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10002A2F8;
  }

  else
  {
    v2 = sub_10002A25C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002A25C()
{
  sub_10003E998("didRetrieveAsset", 16, 2, *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002A2F8()
{
  sub_10003E998("didRetrieveAsset", 16, 2, *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002A394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[75] = v5;
  v6[74] = a5;
  v6[73] = a4;
  v6[72] = a3;
  v6[71] = a2;
  v6[70] = a1;
  sub_100001D04(&qword_1000A5770, &unk_100083BB0);
  v6[76] = swift_task_alloc();
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();
  v7 = type metadata accessor for AssetPushSubscriptionRecord();
  v6[79] = v7;
  v6[80] = *(v7 - 8);
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v6[83] = swift_task_alloc();

  return _swift_task_switch(sub_10002A4F0, 0, 0);
}

uint64_t sub_10002A4F0(uint64_t a1)
{
  v47 = URLJetPackAssetRequest.usageIDOrDefault.getter();
  *(v1 + 672) = v47;
  v45 = v2;
  *(v1 + 680) = v2;
  v3 = URLJetPackAssetRequest._cacheKey.getter();
  v5 = v4;
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v46 = *(v1 + 600);
  v49 = *(v1 + 592);
  v6 = *(v1 + 584);
  v44 = *(v1 + 576);
  v48 = *(v1 + 568);
  *(v1 + 688) = qword_1000A63A0;
  TaskLocal.get()();
  sub_100001CC0((v1 + 16), *(v1 + 40));
  *(v1 + 696) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v7 = *(type metadata accessor for LogMessage() - 8);
  *(v1 + 704) = *(v7 + 72);
  *(v1 + 816) = *(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD00000000000002ELL;
  v8._object = 0x8000000100088AB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  *(v1 + 320) = &type metadata for String;
  *(v1 + 296) = v3;
  *(v1 + 304) = v5;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v1 + 296, &qword_1000A5630, &unk_100083BF0);
  v9._countAndFlagsBits = 0x656E6E616863202CLL;
  v9._object = 0xED0000203A44496CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  *(v1 + 352) = &type metadata for String;
  *(v1 + 328) = v6;
  *(v1 + 336) = v49;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v1 + 328, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0x656C646E7562202CLL;
  v10._object = 0xEC000000203A4449;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  *(v1 + 384) = &type metadata for String;
  *(v1 + 360) = v48;
  *(v1 + 368) = v44;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v1 + 360, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0x496567617375202CLL;
  v11._object = 0xEB00000000203A44;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v1 + 416) = &type metadata for String;
  *(v1 + 392) = v47;
  *(v1 + 400) = v45;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v1 + 392, &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v1 + 16));

  AssetPushSubscriptionRecord.init(assetURLString:channelID:bundleID:usageID:)();
  v13 = OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore;
  *(v1 + 712) = OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore;
  sub_100001CC0((v46 + v13), *(v46 + v13 + 24));
  if (dispatch thunk of AssetPushSubscriptionStore.has(matching:)())
  {
    v14 = *(v1 + 600);
    v15 = swift_task_alloc();
    *(v1 + 720) = v15;
    *(v15 + 16) = v14;
    v16 = swift_task_alloc();
    *(v1 + 728) = v16;
    v17 = sub_100001D04(&qword_1000A5638, &qword_100085440);
    *v16 = v1;
    v16[1] = sub_10002AF20;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 552, 0, 0, 0xD000000000000014, 0x8000000100087E60, sub_10004036C, v15, v17);
  }

  TaskLocal.get()();
  sub_100001CC0((v1 + 56), *(v1 + 80));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v1 + 56));
  v18 = (*(v1 + 600) + *(v1 + 712));
  sub_100001CC0(v18, v18[3]);
  dispatch thunk of AssetPushSubscriptionStore.find(bundleID:usageID:)();
  v19 = *(v1 + 640);
  v20 = *(v1 + 632);
  v21 = *(v1 + 624);
  v22 = *(v1 + 616);

  sub_100002758(v21, v22, &qword_1000A5770, &unk_100083BB0);
  v23 = *(v19 + 48);
  if (v23(v22, 1, v20) == 1)
  {
    v24 = *(v1 + 616);
LABEL_12:
    sub_10000DCA0(v24, &qword_1000A5770, &unk_100083BB0);
    goto LABEL_13;
  }

  v25 = *(v1 + 640);
  v26 = *(v1 + 632);
  v27 = *(v1 + 616);
  v28 = AssetPushSubscriptionRecord.channelID.getter();
  v30 = v29;
  *(v1 + 744) = v29;
  v31 = *(v25 + 8);
  *(v1 + 752) = v31;
  *(v1 + 760) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v27, v26);
  if (!v30)
  {
LABEL_13:
    v35 = swift_task_alloc();
    *(v1 + 784) = v35;
    *v35 = v1;
    v35[1] = sub_10002BA08;
    v36 = *(v1 + 592);
    v37 = *(v1 + 584);

    return sub_1000291FC(v37, v36);
  }

  v32 = *(v1 + 632);
  v33 = *(v1 + 608);
  sub_100002758(*(v1 + 624), v33, &qword_1000A5770, &unk_100083BB0);
  if (v23(v33, 1, v32) == 1)
  {
    v34 = *(v1 + 608);

    v24 = v34;
    goto LABEL_12;
  }

  v38 = *(v1 + 632);
  v39 = *(v1 + 608);
  v40 = AssetPushSubscriptionRecord.id.getter();
  v31(v39, v38);
  if (v40 & 0x100000000) != 0 || (v41 = (*(v1 + 600) + *(v1 + 712)), sub_100001CC0(v41, v41[3]), dispatch thunk of AssetPushSubscriptionStore.delete(id:)(), v28 == *(v1 + 584)) && v30 == *(v1 + 592) || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    goto LABEL_13;
  }

  v42 = swift_task_alloc();
  *(v1 + 768) = v42;
  *v42 = v1;
  v42[1] = sub_10002B880;

  return sub_1000295CC(v28, v30);
}

uint64_t sub_10002AF20()
{
  *(*v1 + 736) = v0;

  if (v0)
  {

    v2 = sub_10002B7B4;
  }

  else
  {

    v2 = sub_10002B068;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002B068()
{
  v1 = v0[92];
  v2 = v0[74];
  v3 = v0[69];
  v0[66] = v0[73];
  v0[67] = v2;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 66;
  v5 = sub_10003DB50(sub_100040370, v4, v3);

  if (v5)
  {
    v35 = v0[82];
    v6 = v0[80];
    v7 = v0[79];

    TaskLocal.get()();
    sub_100001CC0(v0 + 32, v0[35]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    (*(v6 + 8))(v35, v7);
    sub_100001D4C(v0 + 32);

    v8 = v0[1];
LABEL_5:

    return v8();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 27, v0[30]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.warning(_:)();

  sub_100001D4C(v0 + 27);
  v9 = (v0[75] + v0[89]);
  sub_100001CC0(v9, v9[3]);
  dispatch thunk of AssetPushSubscriptionStore.find(bundleID:usageID:)();
  if (v1)
  {
    (*(v0[80] + 8))(v0[82], v0[79]);

    v8 = v0[1];
    goto LABEL_5;
  }

  v11 = v0[80];
  v12 = v0[79];
  v13 = v0[78];
  v14 = v0[77];

  sub_100002758(v13, v14, &qword_1000A5770, &unk_100083BB0);
  v15 = *(v11 + 48);
  if (v15(v14, 1, v12) == 1)
  {
    v16 = v0[77];
LABEL_13:
    sub_10000DCA0(v16, &qword_1000A5770, &unk_100083BB0);
    goto LABEL_14;
  }

  v17 = v0[80];
  v18 = v0[79];
  v19 = v0[77];
  v20 = AssetPushSubscriptionRecord.channelID.getter();
  v22 = v21;
  v0[93] = v21;
  v23 = *(v17 + 8);
  v0[94] = v23;
  v0[95] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v19, v18);
  if (!v22)
  {
LABEL_14:
    v27 = swift_task_alloc();
    v0[98] = v27;
    *v27 = v0;
    v27[1] = sub_10002BA08;
    v28 = v0[74];
    v29 = v0[73];

    return sub_1000291FC(v29, v28);
  }

  v24 = v0[79];
  v25 = v0[76];
  sub_100002758(v0[78], v25, &qword_1000A5770, &unk_100083BB0);
  if (v15(v25, 1, v24) == 1)
  {
    v26 = v0[76];

    v16 = v26;
    goto LABEL_13;
  }

  v30 = v0[79];
  v31 = v0[76];
  v32 = AssetPushSubscriptionRecord.id.getter();
  v23(v31, v30);
  if (v32 & 0x100000000) != 0 || (v33 = (v0[75] + v0[89]), sub_100001CC0(v33, v33[3]), dispatch thunk of AssetPushSubscriptionStore.delete(id:)(), v20 == v0[73]) && v22 == v0[74] || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    goto LABEL_14;
  }

  v34 = swift_task_alloc();
  v0[96] = v34;
  *v34 = v0;
  v34[1] = sub_10002B880;

  return sub_1000295CC(v20, v22);
}

uint64_t sub_10002B7B4()
{
  (*(v0[80] + 8))(v0[82], v0[79]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10002B880()
{
  v2 = *v1;
  v2[97] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10002C060, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[98] = v3;
    *v3 = v2;
    v3[1] = sub_10002BA08;
    v4 = v2[74];
    v5 = v2[73];

    return sub_1000291FC(v5, v4);
  }
}

uint64_t sub_10002BA08()
{
  v2 = *v1;
  *(v2 + 792) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10002C144, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 800) = v3;
    *v3 = v2;
    v3[1] = sub_10002BB74;

    return sub_100028A34();
  }
}

uint64_t sub_10002BB74(uint64_t a1)
{
  *(*v1 + 808) = a1;

  return _swift_task_switch(sub_10002BC74, 0, 0);
}

uint64_t sub_10002BC74()
{
  v1 = v0[101];
  v2 = v0[99];
  v3 = v0[74];
  v0[64] = v0[73];
  v0[65] = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 64;
  v5 = sub_10003DB50(sub_10004021C, v4, v1);

  if ((v5 & 1) == 0)
  {
    v6 = v0[74];
    v7 = v0[73];
    TaskLocal.get()();
    sub_100001CC0(v0 + 12, v0[15]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v8._countAndFlagsBits = 0xD00000000000002ELL;
    v8._object = 0x8000000100088B10;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v0[56] = &type metadata for String;
    v0[53] = v7;
    v0[54] = v6;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v0 + 53), &qword_1000A5630, &unk_100083BF0);
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C(v0 + 12);
  }

  v10 = (v0[75] + v0[89]);
  TaskLocal.get()();
  sub_100001CC0(v0 + 17, v0[20]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 17);
  sub_100001CC0(v10, v10[3]);
  dispatch thunk of AssetPushSubscriptionStore.create(record:)();
  v11 = v0[82];
  if (v2)
  {
    v12 = v0[80];
    v13 = v0[79];
    sub_10000DCA0(v0[78], &qword_1000A5770, &unk_100083BB0);
    (*(v12 + 8))(v11, v13);
  }

  else
  {
    v15 = v0[79];
    v16 = v0[78];
    v17 = *(v0[80] + 8);
    v17(v0[81], v15);
    sub_10000DCA0(v16, &qword_1000A5770, &unk_100083BB0);
    v17(v11, v15);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10002C060()
{
  v1 = v0[94];
  v2 = v0[82];
  v3 = v0[79];
  sub_10000DCA0(v0[78], &qword_1000A5770, &unk_100083BB0);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002C144()
{
  v1 = v0[82];
  v2 = v0[80];
  v3 = v0[79];
  sub_10000DCA0(v0[78], &qword_1000A5770, &unk_100083BB0);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002C230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  type metadata accessor for LogMessage.StringInterpolation();
  v5[31] = swift_task_alloc();
  v6 = type metadata accessor for AssetPushSubscriptionRecord();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  sub_100001D04(&qword_1000A5770, &unk_100083BB0);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v5[37] = v7;
  v5[38] = *(v7 - 8);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();

  return _swift_task_switch(sub_10002C3D0, 0, 0);
}

uint64_t sub_10002C3D0()
{
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  *(v0 + 328) = qword_1000A63A0;
  TaskLocal.get()();
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 336) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v1 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 344) = *(v1 + 72);
  *(v0 + 400) = *(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  if (qword_1000A4D68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OSSignposter();
  sub_100018718(v2, qword_1000A54E0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v6, "cachedAssetWasUsed", "", v5, 2u);
  }

  v7 = *(v0 + 312);
  v8 = *(v0 + 320);
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);

  (*(v10 + 16))(v7, v8, v9);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v0 + 352) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v8, v9);
  v11 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v12 = swift_task_alloc();
  *(v0 + 360) = v12;
  *v12 = v0;
  v12[1] = sub_10002C714;

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v11, v11);
}

uint64_t sub_10002C714()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_10002D064;
  }

  else
  {
    v2 = sub_10002C828;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002C828()
{
  v1 = v0[46];
  sub_100001CC0(v0 + 7, v0[10]);
  URLJetPackAssetRequest.usageIDOrDefault.getter();
  dispatch thunk of AssetPushSubscriptionStore.find(bundleID:usageID:)();
  if (!v1)
  {
    v2 = v0[35];
    v3 = v0[36];
    v4 = v0[32];
    v5 = v0[33];

    sub_100002758(v3, v2, &qword_1000A5770, &unk_100083BB0);
    if ((*(v5 + 48))(v2, 1, v4) == 1)
    {
      sub_10000DCA0(v0[35], &qword_1000A5770, &unk_100083BB0);
      goto LABEL_11;
    }

    (*(v0[33] + 32))(v0[34], v0[35], v0[32]);
    v6 = AssetPushSubscriptionRecord.assetURLString.getter();
    v8 = v7;
    v9 = URLJetPackAssetRequest._cacheKey.getter();
    if (v8)
    {
      v12 = v0[33];
      v11 = v0[34];
      v13 = v0[32];
      if (v6 == v9 && v8 == v10)
      {

        (*(v12 + 8))(v11, v13);
LABEL_10:
        sub_10000DCA0(v0[36], &qword_1000A5770, &unk_100083BB0);
LABEL_24:
        sub_100001D4C(v0 + 7);
        sub_10003E998("cachedAssetWasUsed", 18, 2, v0[44]);

        v15 = v0[1];
        goto LABEL_13;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v12 + 8))(v11, v13);
      if (v14)
      {
        goto LABEL_10;
      }
    }

    else
    {
      (*(v0[33] + 8))(v0[34], v0[32]);
    }

LABEL_11:
    sub_100001CC0(v0 + 7, v0[10]);
    URLJetPackAssetRequest._cacheKey.getter();
    v17 = dispatch thunk of AssetPushSubscriptionStore.channels(for:)();

    v18 = v17[2];
    if (v18)
    {
      TaskLocal.get()();
      sub_100001CC0(v0 + 12, v0[15]);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      result = sub_100001D4C(v0 + 12);
      if (v18 != 1)
      {
        static OSLogger.jetPackAssets.getter();
        sub_100001CC0(v0 + 17, v0[20]);
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v19._object = 0x8000000100088A60;
        v19._countAndFlagsBits = 0xD000000000000040;
        LogMessage.StringInterpolation.appendLiteral(_:)(v19);
        v20 = URLJetPackAssetRequest._cacheKey.getter();
        v0[25] = &type metadata for String;
        v0[22] = v20;
        v0[23] = v21;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0((v0 + 22), &qword_1000A5630, &unk_100083BF0);
        v22._countAndFlagsBits = 46;
        v22._object = 0xE100000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v22);
        LogMessage.init(stringInterpolation:)();
        Logger.warning(_:)();

        result = sub_100001D4C(v0 + 17);
      }

      if (v17[2])
      {
        v24 = v17[4];
        v23 = v17[5];
        v0[47] = v23;

        v25 = swift_task_alloc();
        v0[48] = v25;
        *v25 = v0;
        v25[1] = sub_10002CE38;
        v26 = v0[27];
        v27 = v0[28];
        v28 = v0[26];

        return sub_10002A394(v28, v26, v27, v24, v23);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    sub_10000DCA0(v0[36], &qword_1000A5770, &unk_100083BB0);

    goto LABEL_24;
  }

  sub_100001D4C(v0 + 7);
  sub_10003E998("cachedAssetWasUsed", 18, 2, v0[44]);

  v15 = v0[1];
LABEL_13:

  return v15();
}

uint64_t sub_10002CE38()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_10002D13C;
  }

  else
  {
    v2 = sub_10002CF6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002CF6C()
{
  sub_10000DCA0(v0[36], &qword_1000A5770, &unk_100083BB0);
  sub_100001D4C(v0 + 7);
  sub_10003E998("cachedAssetWasUsed", 18, 2, v0[44]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10002D064()
{
  sub_10003E998("cachedAssetWasUsed", 18, 2, *(v0 + 352));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002D13C()
{
  sub_10000DCA0(v0[36], &qword_1000A5770, &unk_100083BB0);
  sub_100001D4C(v0 + 7);
  sub_10003E998("cachedAssetWasUsed", 18, 2, v0[44]);

  v1 = v0[1];

  return v1();
}

id sub_10002D234(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*a1 isConnected];
  if (result)
  {
    sub_100001CC0((a2 + OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider), *(a2 + OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider + 24));
    dispatch thunk of DateProvider.now.getter();
    Date.timeIntervalSince1970.getter();
    v11 = v10;
    (*(v5 + 8))(v8, v4);
    return sub_100024798(v11, 0);
  }

  return result;
}

uint64_t sub_10002D4E8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PushMessage(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003F860(a2, v8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_10001EAAC(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_10001EAAC((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  result = sub_10003F7E0(v8, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11);
  *a1 = v9;
  return result;
}

void sub_10002D634()
{
  v1 = *&v0[OBJC_IVAR____TtC13jetpackassetd11PushManager_unlockListener];
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  if (!v2)
  {
    if (qword_1000A4D70 != -1)
    {
      swift_once();
    }

    v3 = qword_1000A54F8;
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    type metadata accessor for NotificationsListener();
    swift_allocObject();
    v5 = v3;
    v6 = v0;
    sub_1000693D4(&off_10009E2A0, v5, sub_10003FFEC, v4);
    os_unfair_lock_lock((v1 + 24));
    sub_100040010((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }
}

uint64_t sub_10002D780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_10002D814;

  return sub_100023658();
}

uint64_t sub_10002D814(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v5[5] = a2;

  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v6;
  v7[1] = sub_10002D988;
  v8 = v5[3];

  return sub_10002DA98(v8, a1, a2);
}

uint64_t sub_10002D988()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002DA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_10002DABC, 0, 0);
}

uint64_t sub_10002DABC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = (v3 + *(type metadata accessor for PushMessage(0) + 24));
  v5 = *v4;
  v6 = v4[1];
  v7 = *v4 == v2 && v6 == v1;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (qword_1000A4D18 != -1)
    {
      swift_once();
    }

    v8 = v5 == *(&xmmword_1000A6358 + 1) && v6 == qword_1000A6368;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      type metadata accessor for LocalPreferences();
      Preferences.subscript.getter();
      v9 = v0[3];
      if (!v9)
      {
LABEL_19:
        v12 = swift_task_alloc();
        v0[9] = v12;
        *v12 = v0;
        v12[1] = sub_10002DDF4;
        v13 = v0[4];

        return sub_10002FC40(v13);
      }

      if (v5 == v0[2] && v9 == v6)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_10002DD00;
  v16 = v0[4];

  return sub_10002EDA4(v16);
}

uint64_t sub_10002DD00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002DDF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002DF60()
{
  v1 = v0;
  v2 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v19[-1] - v4;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8, v7);
  if (MKBDeviceUnlockedSinceBoot() < 1)
  {
    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v20, v21);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    return sub_100001D4C(v20);
  }

  else
  {
    v8 = *&v0[OBJC_IVAR____TtC13jetpackassetd11PushManager_beforeUnlockPushes];
    os_unfair_lock_lock((v8 + 24));
    v9 = *(v8 + 16);
    *(v8 + 16) = _swiftEmptyArrayStorage;
    os_unfair_lock_unlock((v8 + 24));
    v10 = *&v1[OBJC_IVAR____TtC13jetpackassetd11PushManager_unlockListener];
    os_unfair_lock_lock((v10 + 24));

    *(v10 + 16) = 0;
    os_unfair_lock_unlock((v10 + 24));
    if (*(v9 + 16))
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100001CC0(v20, v21);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v11._countAndFlagsBits = 0x676E696C646E6148;
      v11._object = 0xE900000000000020;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v12 = *(v9 + 16);
      v19[3] = &type metadata for Int;
      v19[0] = v12;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v19, &qword_1000A5630, &unk_100083BF0);
      v13._object = 0x80000001000888B0;
      v13._countAndFlagsBits = 0xD00000000000002ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v13);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C(v20);
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v1;
      v15[5] = v9;
      v16 = v1;
      sub_100023290(0, 0, v5, &unk_100085508, v15);
    }

    else
    {
    }
  }
}

uint64_t sub_10002E420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = type metadata accessor for PushMessage(0);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[9] = v7;
  *v7 = v5;
  v7[1] = sub_10002E510;

  return sub_100023658();
}

uint64_t sub_10002E510(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return _swift_task_switch(sub_10002E610, 0, 0);
}

uint64_t sub_10002E610()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  *(v0 + 96) = v2;
  if (v2)
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = OBJC_IVAR____TtC13jetpackassetd11PushManager_subscribedControlChannelIDKey;
    *(v0 + 104) = OBJC_IVAR____TtC13jetpackassetd11PushManager_localPreferences;
    *(v0 + 112) = v5;
    v6 = *(v3 + 80);
    *(v0 + 152) = v6;
    *(v0 + 120) = *(v3 + 72);
    *(v0 + 128) = 0;
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v9 = *(v0 + 64);
    sub_10003F860(v1 + ((v6 + 32) & ~v6), v9);
    v10 = (v9 + *(v4 + 24));
    v11 = *v10;
    v12 = v10[1];
    v13 = *v10 == v8 && v12 == v7;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_22;
    }

    if (qword_1000A4D18 != -1)
    {
      swift_once();
    }

    v14 = v11 == *(&xmmword_1000A6358 + 1) && v12 == qword_1000A6368;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_22;
    }

    type metadata accessor for LocalPreferences();
    Preferences.subscript.getter();
    v15 = *(v0 + 24);
    if (v15)
    {
      if (v11 == *(v0 + 16) && v15 == v12)
      {

LABEL_22:
        v19 = swift_task_alloc();
        *(v0 + 136) = v19;
        *v19 = v0;
        v19[1] = sub_10002E8DC;
        v20 = *(v0 + 64);

        return sub_10002EDA4(v20);
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_22;
      }
    }

    v21 = swift_task_alloc();
    *(v0 + 144) = v21;
    *v21 = v0;
    v21[1] = sub_10002ECA8;
    v22 = *(v0 + 64);

    return sub_10002FC40(v22);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10002E8DC()
{

  return _swift_task_switch(sub_10002E9D8, 0, 0);
}

uint64_t sub_10002E9D8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 128) + 1;
  sub_10003FC74(*(v0 + 64), type metadata accessor for PushMessage);
  if (v2 == v1)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 120);
  v6 = *(v0 + 128) + 1;
  *(v0 + 128) = v6;
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  sub_10003F860(*(v0 + 40) + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + v5 * v6, v9);
  v11 = (v9 + *(v10 + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = *v11 == v8 && v13 == v7;
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (qword_1000A4D18 != -1)
    {
      swift_once();
    }

    v15 = v12 == *(&xmmword_1000A6358 + 1) && v13 == qword_1000A6368;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      type metadata accessor for LocalPreferences();
      Preferences.subscript.getter();
      v16 = *(v0 + 24);
      if (!v16)
      {
LABEL_23:
        v19 = swift_task_alloc();
        *(v0 + 144) = v19;
        *v19 = v0;
        v19[1] = sub_10002ECA8;
        v20 = *(v0 + 64);

        return sub_10002FC40(v20);
      }

      if (v12 == *(v0 + 16) && v16 == v13)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }
  }

  v21 = swift_task_alloc();
  *(v0 + 136) = v21;
  *v21 = v0;
  v21[1] = sub_10002E8DC;
  v22 = *(v0 + 64);

  return sub_10002EDA4(v22);
}

uint64_t sub_10002ECA8()
{

  return _swift_task_switch(sub_10002E9D8, 0, 0);
}

uint64_t sub_10002EDA4(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  v2[45] = type metadata accessor for PushReceivedMetricsEvent(0);
  v2[46] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v2[47] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v2[48] = v3;
  v2[49] = *(v3 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();

  return _swift_task_switch(sub_10002EECC, 0, 0);
}

uint64_t sub_10002EECC()
{
  if (qword_1000A4D68 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  sub_100018718(v1, qword_1000A54E0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "handleControlMessage", "", v4, 2u);
  }

  v6 = *(v0 + 400);
  v7 = *(v0 + 408);
  v8 = *(v0 + 384);
  v9 = *(v0 + 392);

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v0 + 416) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v7, v8);
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 360);
  v29 = *(v0 + 368);
  v10 = *(v0 + 344);
  *(v0 + 424) = qword_1000A63A0;
  TaskLocal.get()();
  sub_100001CC0((v0 + 64), *(v0 + 88));
  *(v0 + 432) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v11 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 440) = *(v11 + 72);
  *(v0 + 60) = *(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x8000000100088180;
  v12._countAndFlagsBits = 0xD000000000000026;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v13 = type metadata accessor for PushMessage(0);
  v14 = (v10 + v13[6]);
  v15 = *v14;
  v16 = v14[1];
  *(v0 + 208) = &type metadata for String;
  *(v0 + 184) = v15;
  *(v0 + 192) = v16;
  swift_bridgeObjectRetain_n();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 184, &qword_1000A5630, &unk_100083BF0);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 64));
  v18 = v13[5];
  v19 = *(v28 + 20);
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 16))(v29 + v19, v10 + v18, v20);
  v21 = qword_1000855E8[*(v10 + v13[8])];
  v23 = *(v0 + 360);
  v22 = *(v0 + 368);
  v24 = *(v0 + 352);
  *v22 = v15;
  v22[1] = v16;
  *(v22 + *(v23 + 24)) = v21;
  sub_100001CC0((v24 + OBJC_IVAR____TtC13jetpackassetd11PushManager_metricsPipelineManager), *(v24 + OBJC_IVAR____TtC13jetpackassetd11PushManager_metricsPipelineManager + 24));
  v25 = swift_task_alloc();
  *(v0 + 448) = v25;
  *v25 = v0;
  v25[1] = sub_10002F328;
  v26 = *(v0 + 368);

  return sub_10003B3C8(v26);
}

uint64_t sub_10002F328()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_10002F708;
  }

  else
  {
    v2 = sub_10002F43C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002F43C()
{
  sub_10003FC74(v0[46], type metadata accessor for PushReceivedMetricsEvent);
  v2 = v0[43];
  v1 = v0[44];
  v3 = swift_task_alloc();
  v0[58] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[59] = v4;
  *v4 = v0;
  v4[1] = sub_10002F538;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v4, &unk_1000854C0, v3, &type metadata for () + 8);
}

uint64_t sub_10002F538()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_10002F95C;
  }

  else
  {

    v2 = sub_10002F654;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002F654()
{
  sub_10003E998("handleControlMessage", 20, 2, *(v0 + 416));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002F708()
{
  sub_10003FC74(v0[46], type metadata accessor for PushReceivedMetricsEvent);
  TaskLocal.get()();
  sub_100001CC0(v0 + 13, v0[16]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x80000001000881B0;
  v1._countAndFlagsBits = 0xD000000000000031;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[35];
  v3 = v0[36];
  v0[30] = v3;
  v4 = sub_1000061A4(v0 + 27);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 27), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 13);
  v7 = v0[43];
  v6 = v0[44];
  v8 = swift_task_alloc();
  v0[58] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_task_alloc();
  v0[59] = v9;
  *v9 = v0;
  v9[1] = sub_10002F538;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v9, &unk_1000854C0, v8, &type metadata for () + 8);
}

uint64_t sub_10002F95C()
{
  v15 = *(v0 + 352);

  TaskLocal.get()();
  sub_100001CC0((v0 + 144), *(v0 + 168));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x80000001000881F0;
  v1._countAndFlagsBits = 0xD00000000000002ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  *(v0 + 272) = v3;
  v4 = sub_1000061A4((v0 + 248));
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 144));
  sub_100001CC0((v15 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v15 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));
  swift_errorRetain();
  v6 = _convertErrorToNSError(_:)();
  v7 = [v6 domain];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = _convertErrorToNSError(_:)();
  v12 = [v11 code];

  *(v0 + 16) = v8;
  *(v0 + 24) = v10;
  *(v0 + 32) = v12;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = -1;
  sub_10003FD80();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_10003E998("handleControlMessage", 20, 2, *(v0 + 416));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10002FC40(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v2[44] = type metadata accessor for PushReceivedMetricsEvent(0);
  v2[45] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v2[46] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v2[47] = v3;
  v2[48] = *(v3 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();

  return _swift_task_switch(sub_10002FD68, 0, 0);
}

uint64_t sub_10002FD68()
{
  if (qword_1000A4D68 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  sub_100018718(v1, qword_1000A54E0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "handlePush", "", v4, 2u);
  }

  v6 = *(v0 + 392);
  v7 = *(v0 + 400);
  v8 = *(v0 + 376);
  v9 = *(v0 + 384);

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v0 + 408) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v7, v8);
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 352);
  v29 = *(v0 + 360);
  v10 = *(v0 + 336);
  *(v0 + 416) = qword_1000A63A0;
  TaskLocal.get()();
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 424) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v11 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 432) = *(v11 + 72);
  *(v0 + 496) = *(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x80000001000885D0;
  v12._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v13 = type metadata accessor for PushMessage(0);
  v14 = (v10 + v13[6]);
  v15 = *v14;
  *(v0 + 440) = *v14;
  v16 = v14[1];
  *(v0 + 448) = v16;
  *(v0 + 200) = &type metadata for String;
  *(v0 + 176) = v15;
  *(v0 + 184) = v16;
  swift_bridgeObjectRetain_n();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 176, &qword_1000A5630, &unk_100083BF0);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  v18 = v13[5];
  v19 = *(v28 + 20);
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 16))(v29 + v19, v10 + v18, v20);
  v21 = qword_1000855E8[*(v10 + v13[8])];
  v23 = *(v0 + 352);
  v22 = *(v0 + 360);
  v24 = *(v0 + 344);
  *v22 = v15;
  v22[1] = v16;
  *(v22 + *(v23 + 24)) = v21;
  sub_100001CC0((v24 + OBJC_IVAR____TtC13jetpackassetd11PushManager_metricsPipelineManager), *(v24 + OBJC_IVAR____TtC13jetpackassetd11PushManager_metricsPipelineManager + 24));
  v25 = swift_task_alloc();
  *(v0 + 456) = v25;
  *v25 = v0;
  v25[1] = sub_1000301D0;
  v26 = *(v0 + 360);

  return sub_10003B3C8(v26);
}

uint64_t sub_1000301D0()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1000305B0;
  }

  else
  {
    v2 = sub_1000302E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000302E4()
{
  sub_10003FC74(v0[45], type metadata accessor for PushReceivedMetricsEvent);
  v2 = v0[42];
  v1 = v0[43];
  v3 = swift_task_alloc();
  v0[59] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[60] = v4;
  *v4 = v0;
  v4[1] = sub_1000303E0;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v4, &unk_1000854E8, v3, &type metadata for () + 8);
}

uint64_t sub_1000303E0()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_100030804;
  }

  else
  {

    v2 = sub_1000304FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000304FC()
{
  sub_10003E998("handlePush", 10, 2, *(v0 + 408));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000305B0()
{
  sub_10003FC74(v0[45], type metadata accessor for PushReceivedMetricsEvent);
  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x80000001000881B0;
  v1._countAndFlagsBits = 0xD000000000000031;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[34];
  v3 = v0[35];
  v0[29] = v3;
  v4 = sub_1000061A4(v0 + 26);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 26), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  v7 = v0[42];
  v6 = v0[43];
  v8 = swift_task_alloc();
  v0[59] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = swift_task_alloc();
  v0[60] = v9;
  *v9 = v0;
  v9[1] = sub_1000303E0;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v9, &unk_1000854E8, v8, &type metadata for () + 8);
}

uint64_t sub_100030804()
{
  v16 = v0[56];
  v17 = v0[55];
  v15 = v0[43];

  TaskLocal.get()();
  sub_100001CC0(v0 + 12, v0[15]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100088600;
  v1._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[37];
  v3 = v0[38];
  v0[33] = v3;
  v4 = sub_1000061A4(v0 + 30);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 30), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 12);
  sub_100001CC0((v15 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v15 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));

  swift_errorRetain();
  v6 = _convertErrorToNSError(_:)();
  v7 = [v6 domain];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = _convertErrorToNSError(_:)();
  v12 = [v11 code];

  v0[17] = v8;
  v0[18] = v10;
  v0[19] = v12;
  v0[20] = v17;
  v0[21] = v16;
  sub_10003FF0C();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_10003E998("handlePush", 10, 2, v0[51]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100030B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[82] = a3;
  v3[81] = a2;
  v4 = sub_100001D04(&qword_1000A5680, &qword_100084000);
  v3[83] = v4;
  v3[84] = *(v4 - 8);
  v3[85] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();

  return _swift_task_switch(sub_100030C14, 0, 0);
}

uint64_t sub_100030C14()
{
  v1 = *(v0 + 648);
  v2 = *(v1 + *(type metadata accessor for PushMessage(0) + 44));
  *(v0 + 712) = v2;
  v3 = *(v2 + 16);
  *(v0 + 720) = v3;
  v4 = Hasher._combine(_:) + 4;
  if (v3)
  {
    v5 = 0;
    *(v0 + 728) = OBJC_IVAR____TtC13jetpackassetd11PushManager_killSwitchManager;
    *(v0 + 736) = OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore;
    *(v0 + 744) = OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler;
    *(v0 + 752) = OBJC_IVAR____TtC13jetpackassetd11PushManager_bagManager;
    *(v0 + 760) = OBJC_IVAR____TtC13jetpackassetd11PushManager_diskCache;
    while (1)
    {
      *(v0 + 768) = v5;
      v6 = *(v0 + 712);
      if (v5 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_53;
      }

      v7 = v6 + 24 * v5;
      v8 = *(v7 + 32);
      *(v0 + 776) = v8;
      v9 = *(v7 + 40);
      *(v0 + 784) = v9;
      v10 = *(v7 + 48);
      *(v0 + 58) = v10;
      if (v10 <= 1)
      {
        break;
      }

      if (v10 == 3)
      {
        sub_10003FDD4(v8, v9, 3);
        v30 = qword_1000A4D48;

        if (v30 != -1)
        {
          swift_once();
        }

        v31 = (*(v0 + 656) + *(v0 + 736));
        TaskLocal.get()();
        sub_100001CC0((v0 + 144), *(v0 + 168));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        type metadata accessor for LogMessage();
        v4 = swift_allocObject();
        *(v4 + 1) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v32._countAndFlagsBits = 0xD000000000000050;
        v32._object = 0x8000000100088280;
        LogMessage.StringInterpolation.appendLiteral(_:)(v32);
        *(v0 + 480) = &type metadata for String;
        *(v0 + 456) = v8;
        *(v0 + 464) = v9;

        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 456, &qword_1000A5630, &unk_100083BF0);
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v33);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 144));
        sub_100001CC0(v31, v31[3]);
        dispatch thunk of AssetPushSubscriptionStore.resetPending(channelID:)();
        sub_10003FDF0(v8, v9, 3);
        v22 = v8;
        v23 = v9;
        v24 = 3;
LABEL_3:
        sub_10003FDF0(v22, v23, v24);
        goto LABEL_4;
      }

      if (v10 != 4)
      {
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v51 = (*(v0 + 656) + *(v0 + 744));
        *(v0 + 816) = qword_1000A63A0;
        TaskLocal.get()();
        sub_100001CC0((v0 + 224), *(v0 + 248));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v52._countAndFlagsBits = 0xD000000000000037;
        v52._object = 0x8000000100088320;
        LogMessage.StringInterpolation.appendLiteral(_:)(v52);
        *(v0 + 544) = &type metadata for Double;
        *(v0 + 520) = v8;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 520, &qword_1000A5630, &unk_100083BF0);
        v53._countAndFlagsBits = 0;
        v53._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v53);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 224));
        sub_100001CC0(v51, v51[3]);
        v54 = swift_task_alloc();
        *(v0 + 824) = v54;
        *v54 = v0;
        v54[1] = sub_100033064;

        return sub_100048144(*&v8);
      }

      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      v57 = *(v0 + 728);
      v11 = *(v0 + 656);
      TaskLocal.get()();
      sub_100001CC0((v0 + 64), *(v0 + 88));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      v4 = swift_allocObject();
      *(v4 + 1) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v12._countAndFlagsBits = 0xD00000000000001ALL;
      v12._object = 0x8000000100088240;
      LogMessage.StringInterpolation.appendLiteral(_:)(v12);
      v13 = 0x64656C6261736964;
      if (v8)
      {
        v13 = 0x64656C62616E65;
      }

      *(v0 + 448) = &type metadata for String;
      v14 = 0xE800000000000000;
      if (v8)
      {
        v14 = 0xE700000000000000;
      }

      *(v0 + 424) = v13;
      *(v0 + 432) = v14;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 424, &qword_1000A5630, &unk_100083BF0);
      v15._object = 0x8000000100088260;
      v15._countAndFlagsBits = 0xD000000000000017;
      LogMessage.StringInterpolation.appendLiteral(_:)(v15);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 64));
      v16 = *(v11 + v57);
      if (v8)
      {
        (*(*(v0 + 672) + 16))(*(v0 + 680), v16 + OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_enabledKey, *(v0 + 664));
        *(v0 + 57) = 1;
        type metadata accessor for LocalPreferences();
        Preferences.subscript.setter();
      }

      else
      {
        v34 = *(v0 + 672);
        v35 = *(v0 + 664);
        v4 = OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_enabledKey;
        *(v0 + 128) = v35;
        *(v0 + 136) = sub_100040238(&qword_1000A5688, &qword_1000A5680, &qword_100084000, &protocol conformance descriptor for PreferenceKey<A>);
        v36 = sub_1000061A4((v0 + 104));
        (*(v34 + 16))(v36, &v4[v16], v35);
        LocalPreferences.removeValue(forKey:)();
        sub_100001D4C((v0 + 104));
      }

LABEL_4:
      v5 = *(v0 + 768) + 1;
      if (v5 == *(v0 + 720))
      {
        goto LABEL_39;
      }
    }

    if (v10)
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      v25 = (*(v0 + 656) + *(v0 + 752));
      TaskLocal.get()();
      sub_100001CC0((v0 + 264), *(v0 + 288));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v26._countAndFlagsBits = 0xD000000000000012;
      v26._object = 0x8000000100088360;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v4 = (v8 & 1);
      v27 = 0x64656C6261736964;
      if (v8)
      {
        v27 = 0x64656C62616E65;
      }

      *(v0 + 576) = &type metadata for String;
      v28 = 0xE800000000000000;
      if (v8)
      {
        v28 = 0xE700000000000000;
      }

      *(v0 + 552) = v27;
      *(v0 + 560) = v28;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 552, &qword_1000A5630, &unk_100083BF0);
      v29._object = 0x8000000100088260;
      v29._countAndFlagsBits = 0xD000000000000017;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 264));
      sub_100001CC0(v25, v25[3]);
      type metadata accessor for BagManager(0);
      sub_100017FD0(v8 & 1);
      goto LABEL_4;
    }

    if (!v9)
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      *(v0 + 792) = qword_1000A63A0;
      TaskLocal.get()();
      sub_100001CC0((v0 + 304), *(v0 + 328));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 304));
      v55 = swift_task_alloc();
      *(v0 + 800) = v55;
      *v55 = v0;
      v55[1] = sub_100031E54;

      return JetPackAssetDiskCache._empty()();
    }

    sub_10003FDD4(v8, v9, 0);
    v17 = qword_1000A4D48;

    if (v17 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0((v0 + 344), *(v0 + 368));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v4 = 0xD000000000000017;
    v18._countAndFlagsBits = 0xD000000000000016;
    v18._object = 0x80000001000883B0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    *(v0 + 608) = &type metadata for String;
    *(v0 + 584) = v8;
    *(v0 + 592) = v9;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 584, &qword_1000A5630, &unk_100083BF0);
    v19._countAndFlagsBits = 0xD000000000000018;
    v19._object = 0x80000001000883D0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 344));
    v20._countAndFlagsBits = v8;
    v20._object = v9;
    JetPackAssetDiskCache._evict(cacheKey:)(v20);
    sub_10003FDF0(v8, v9, 0);
    if (v21)
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      v59 = *(v0 + 776);
      v56 = *(v0 + 656);
      v58 = *(v0 + 58);
      TaskLocal.get()();
      sub_100001CC0((v0 + 184), *(v0 + 208));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v37._countAndFlagsBits = 0xD000000000000031;
      v37._object = 0x80000001000882E0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      swift_getErrorValue();
      v38 = *(v0 + 616);
      v39 = *(v0 + 624);
      *(v0 + 512) = v39;
      v40 = sub_1000061A4((v0 + 488));
      (*(*(v39 - 8) + 16))(v40, v38, v39);
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 488, &qword_1000A5630, &unk_100083BF0);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v0 + 184));
      sub_100001CC0((v56 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v56 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));
      swift_errorRetain();
      v42 = _convertErrorToNSError(_:)();
      v43 = [v42 domain];

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = _convertErrorToNSError(_:)();
      v48 = [v47 code];

      *(v0 + 16) = v44;
      *(v0 + 24) = v46;
      *(v0 + 32) = v48;
      *(v0 + 40) = v59;
      *(v0 + 48) = v9;
      *(v0 + 56) = v58;
      sub_10003FD80();
      dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

      sub_10003FDF0(v59, v9, v58);
      goto LABEL_39;
    }

    v22 = v8;
    v23 = v9;
    v24 = 0;
    goto LABEL_3;
  }

  if (qword_1000A4D48 != -1)
  {
LABEL_53:
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0((v0 + 384), *(v0 + 408));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = *(v4 + 156);
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 384));
LABEL_39:

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_100031E54()
{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = sub_1000345DC;
  }

  else
  {
    v2 = sub_100031F68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100031F68()
{
  sub_10003FDF0(*(v0 + 776), 0, 0);
  v1 = *(v0 + 768) + 1;
  if (v1 == *(v0 + 720))
  {
LABEL_2:

    v2 = *(v0 + 8);

    return v2();
  }

  v50 = *(v0 + 808);
  while (1)
  {
    *(v0 + 768) = v1;
    v8 = *(v0 + 712);
    if (v1 >= *(v8 + 16))
    {
      break;
    }

    v9 = v8 + 24 * v1;
    v10 = *(v9 + 32);
    *(v0 + 776) = v10;
    v11 = *(v9 + 40);
    *(v0 + 784) = v11;
    v12 = *(v9 + 48);
    *(v0 + 58) = v12;
    if (v12 <= 1)
    {
      if (v12 == 1)
      {
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v19 = (*(v0 + 656) + *(v0 + 752));
        TaskLocal.get()();
        sub_100001CC0((v0 + 264), *(v0 + 288));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v20._countAndFlagsBits = 0xD000000000000012;
        v20._object = 0x8000000100088360;
        LogMessage.StringInterpolation.appendLiteral(_:)(v20);
        v21 = v10 & 1;
        v22 = 0x64656C6261736964;
        if (v21)
        {
          v22 = 0x64656C62616E65;
        }

        *(v0 + 576) = &type metadata for String;
        v23 = 0xE800000000000000;
        if (v21)
        {
          v23 = 0xE700000000000000;
        }

        *(v0 + 552) = v22;
        *(v0 + 560) = v23;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 552, &qword_1000A5630, &unk_100083BF0);
        v24._object = 0x8000000100088260;
        v24._countAndFlagsBits = 0xD000000000000017;
        LogMessage.StringInterpolation.appendLiteral(_:)(v24);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 264));
        sub_100001CC0(v19, v19[3]);
        type metadata accessor for BagManager(0);
        sub_100017FD0(v21);
        goto LABEL_7;
      }

      if (!v11)
      {
        goto LABEL_43;
      }

      sub_10003FDD4(v10, v11, 0);
      v28 = qword_1000A4D48;

      if (v28 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100001CC0((v0 + 344), *(v0 + 368));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v29._countAndFlagsBits = 0xD000000000000016;
      v29._object = 0x80000001000883B0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      *(v0 + 608) = &type metadata for String;
      *(v0 + 584) = v10;
      *(v0 + 592) = v11;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 584, &qword_1000A5630, &unk_100083BF0);
      v30._countAndFlagsBits = 0xD000000000000018;
      v30._object = 0x80000001000883D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 344));
      v31._countAndFlagsBits = v10;
      v31._object = v11;
      JetPackAssetDiskCache._evict(cacheKey:)(v31);
      sub_10003FDF0(v10, v11, 0);
      if (v32)
      {
LABEL_48:
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v55 = *(v0 + 776);
        v51 = *(v0 + 656);
        v54 = *(v0 + 58);
        TaskLocal.get()();
        sub_100001CC0((v0 + 184), *(v0 + 208));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v38._countAndFlagsBits = 0xD000000000000031;
        v38._object = 0x80000001000882E0;
        LogMessage.StringInterpolation.appendLiteral(_:)(v38);
        swift_getErrorValue();
        v39 = *(v0 + 616);
        v40 = *(v0 + 624);
        *(v0 + 512) = v40;
        v41 = sub_1000061A4((v0 + 488));
        (*(*(v40 - 8) + 16))(v41, v39, v40);
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 488, &qword_1000A5630, &unk_100083BF0);
        v42._countAndFlagsBits = 0;
        v42._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v42);
        LogMessage.init(stringInterpolation:)();
        Logger.error(_:)();

        sub_100001D4C((v0 + 184));
        sub_100001CC0((v51 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v51 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));
        swift_errorRetain();
        v43 = _convertErrorToNSError(_:)();
        v44 = [v43 domain];

        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = _convertErrorToNSError(_:)();
        v49 = [v48 code];

        *(v0 + 16) = v45;
        *(v0 + 24) = v47;
        *(v0 + 32) = v49;
        *(v0 + 40) = v55;
        *(v0 + 48) = v11;
        *(v0 + 56) = v54;
        sub_10003FD80();
        dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

        sub_10003FDF0(v55, v11, v54);
        goto LABEL_2;
      }
    }

    else
    {
      if (v12 == 4)
      {
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v52 = *(v0 + 728);
        v13 = *(v0 + 656);
        TaskLocal.get()();
        sub_100001CC0((v0 + 64), *(v0 + 88));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v14._countAndFlagsBits = 0xD00000000000001ALL;
        v14._object = 0x8000000100088240;
        LogMessage.StringInterpolation.appendLiteral(_:)(v14);
        v15 = 0x64656C6261736964;
        if (v10)
        {
          v15 = 0x64656C62616E65;
        }

        *(v0 + 448) = &type metadata for String;
        v16 = 0xE800000000000000;
        if (v10)
        {
          v16 = 0xE700000000000000;
        }

        *(v0 + 424) = v15;
        *(v0 + 432) = v16;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 424, &qword_1000A5630, &unk_100083BF0);
        v17._object = 0x8000000100088260;
        v17._countAndFlagsBits = 0xD000000000000017;
        LogMessage.StringInterpolation.appendLiteral(_:)(v17);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 64));
        v18 = *(v13 + v52);
        if (v10)
        {
          (*(*(v0 + 672) + 16))(*(v0 + 680), v18 + OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_enabledKey, *(v0 + 664));
          *(v0 + 57) = 1;
          type metadata accessor for LocalPreferences();
          Preferences.subscript.setter();
        }

        else
        {
          v4 = *(v0 + 672);
          v5 = *(v0 + 664);
          v6 = OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_enabledKey;
          *(v0 + 128) = v5;
          *(v0 + 136) = sub_100040238(&qword_1000A5688, &qword_1000A5680, &qword_100084000, &protocol conformance descriptor for PreferenceKey<A>);
          v7 = sub_1000061A4((v0 + 104));
          (*(v4 + 16))(v7, v18 + v6, v5);
          LocalPreferences.removeValue(forKey:)();
          sub_100001D4C((v0 + 104));
        }

        goto LABEL_7;
      }

      if (v12 == 2)
      {
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v33 = (*(v0 + 656) + *(v0 + 744));
        *(v0 + 816) = qword_1000A63A0;
        TaskLocal.get()();
        sub_100001CC0((v0 + 224), *(v0 + 248));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v34._countAndFlagsBits = 0xD000000000000037;
        v34._object = 0x8000000100088320;
        LogMessage.StringInterpolation.appendLiteral(_:)(v34);
        *(v0 + 544) = &type metadata for Double;
        *(v0 + 520) = v10;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 520, &qword_1000A5630, &unk_100083BF0);
        v35._countAndFlagsBits = 0;
        v35._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v35);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 224));
        sub_100001CC0(v33, v33[3]);
        v36 = swift_task_alloc();
        *(v0 + 824) = v36;
        *v36 = v0;
        v36[1] = sub_100033064;

        return sub_100048144(*&v10);
      }

      sub_10003FDD4(v10, v11, 3);
      v25 = qword_1000A4D48;

      if (v25 != -1)
      {
        swift_once();
      }

      v53 = (*(v0 + 656) + *(v0 + 736));
      TaskLocal.get()();
      sub_100001CC0((v0 + 144), *(v0 + 168));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v26._countAndFlagsBits = 0xD000000000000050;
      v26._object = 0x8000000100088280;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      *(v0 + 480) = &type metadata for String;
      *(v0 + 456) = v10;
      *(v0 + 464) = v11;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 456, &qword_1000A5630, &unk_100083BF0);
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 144));
      sub_100001CC0(v53, v53[3]);
      dispatch thunk of AssetPushSubscriptionStore.resetPending(channelID:)();
      sub_10003FDF0(v10, v11, 3);
      if (v50)
      {
        goto LABEL_48;
      }
    }

    sub_10003FDF0(v10, v11, v12);
    v50 = 0;
LABEL_7:
    v1 = *(v0 + 768) + 1;
    if (v1 == *(v0 + 720))
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_43:
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  *(v0 + 792) = qword_1000A63A0;
  TaskLocal.get()();
  sub_100001CC0((v0 + 304), *(v0 + 328));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 304));
  v37 = swift_task_alloc();
  *(v0 + 800) = v37;
  *v37 = v0;
  v37[1] = sub_100031E54;

  return JetPackAssetDiskCache._empty()();
}

uint64_t sub_100033064()
{
  *(*v1 + 832) = v0;

  if (v0)
  {
    v2 = sub_100034264;
  }

  else
  {
    v2 = sub_100033178;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100033178()
{
  v1 = *(v0 + 768) + 1;
  if (v1 == *(v0 + 720))
  {
LABEL_2:

    v2 = *(v0 + 8);

    return v2();
  }

  v50 = *(v0 + 832);
  while (1)
  {
    *(v0 + 768) = v1;
    v8 = *(v0 + 712);
    if (v1 >= *(v8 + 16))
    {
      break;
    }

    v9 = v8 + 24 * v1;
    v10 = *(v9 + 32);
    *(v0 + 776) = v10;
    v11 = *(v9 + 40);
    *(v0 + 784) = v11;
    v12 = *(v9 + 48);
    *(v0 + 58) = v12;
    if (v12 <= 1)
    {
      if (v12 == 1)
      {
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v19 = (*(v0 + 656) + *(v0 + 752));
        TaskLocal.get()();
        sub_100001CC0((v0 + 264), *(v0 + 288));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v20._countAndFlagsBits = 0xD000000000000012;
        v20._object = 0x8000000100088360;
        LogMessage.StringInterpolation.appendLiteral(_:)(v20);
        v21 = v10 & 1;
        v22 = 0x64656C6261736964;
        if (v21)
        {
          v22 = 0x64656C62616E65;
        }

        *(v0 + 576) = &type metadata for String;
        v23 = 0xE800000000000000;
        if (v21)
        {
          v23 = 0xE700000000000000;
        }

        *(v0 + 552) = v22;
        *(v0 + 560) = v23;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 552, &qword_1000A5630, &unk_100083BF0);
        v24._object = 0x8000000100088260;
        v24._countAndFlagsBits = 0xD000000000000017;
        LogMessage.StringInterpolation.appendLiteral(_:)(v24);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 264));
        sub_100001CC0(v19, v19[3]);
        type metadata accessor for BagManager(0);
        sub_100017FD0(v21);
        goto LABEL_7;
      }

      if (!v11)
      {
        goto LABEL_43;
      }

      sub_10003FDD4(v10, v11, 0);
      v28 = qword_1000A4D48;

      if (v28 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100001CC0((v0 + 344), *(v0 + 368));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v29._countAndFlagsBits = 0xD000000000000016;
      v29._object = 0x80000001000883B0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      *(v0 + 608) = &type metadata for String;
      *(v0 + 584) = v10;
      *(v0 + 592) = v11;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 584, &qword_1000A5630, &unk_100083BF0);
      v30._countAndFlagsBits = 0xD000000000000018;
      v30._object = 0x80000001000883D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 344));
      v31._countAndFlagsBits = v10;
      v31._object = v11;
      JetPackAssetDiskCache._evict(cacheKey:)(v31);
      sub_10003FDF0(v10, v11, 0);
      if (v32)
      {
LABEL_48:
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v55 = *(v0 + 776);
        v51 = *(v0 + 656);
        v54 = *(v0 + 58);
        TaskLocal.get()();
        sub_100001CC0((v0 + 184), *(v0 + 208));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v38._countAndFlagsBits = 0xD000000000000031;
        v38._object = 0x80000001000882E0;
        LogMessage.StringInterpolation.appendLiteral(_:)(v38);
        swift_getErrorValue();
        v39 = *(v0 + 616);
        v40 = *(v0 + 624);
        *(v0 + 512) = v40;
        v41 = sub_1000061A4((v0 + 488));
        (*(*(v40 - 8) + 16))(v41, v39, v40);
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 488, &qword_1000A5630, &unk_100083BF0);
        v42._countAndFlagsBits = 0;
        v42._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v42);
        LogMessage.init(stringInterpolation:)();
        Logger.error(_:)();

        sub_100001D4C((v0 + 184));
        sub_100001CC0((v51 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v51 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));
        swift_errorRetain();
        v43 = _convertErrorToNSError(_:)();
        v44 = [v43 domain];

        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = _convertErrorToNSError(_:)();
        v49 = [v48 code];

        *(v0 + 16) = v45;
        *(v0 + 24) = v47;
        *(v0 + 32) = v49;
        *(v0 + 40) = v55;
        *(v0 + 48) = v11;
        *(v0 + 56) = v54;
        sub_10003FD80();
        dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

        sub_10003FDF0(v55, v11, v54);
        goto LABEL_2;
      }
    }

    else
    {
      if (v12 == 4)
      {
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v52 = *(v0 + 728);
        v13 = *(v0 + 656);
        TaskLocal.get()();
        sub_100001CC0((v0 + 64), *(v0 + 88));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v14._countAndFlagsBits = 0xD00000000000001ALL;
        v14._object = 0x8000000100088240;
        LogMessage.StringInterpolation.appendLiteral(_:)(v14);
        v15 = 0x64656C6261736964;
        if (v10)
        {
          v15 = 0x64656C62616E65;
        }

        *(v0 + 448) = &type metadata for String;
        v16 = 0xE800000000000000;
        if (v10)
        {
          v16 = 0xE700000000000000;
        }

        *(v0 + 424) = v15;
        *(v0 + 432) = v16;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 424, &qword_1000A5630, &unk_100083BF0);
        v17._object = 0x8000000100088260;
        v17._countAndFlagsBits = 0xD000000000000017;
        LogMessage.StringInterpolation.appendLiteral(_:)(v17);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 64));
        v18 = *(v13 + v52);
        if (v10)
        {
          (*(*(v0 + 672) + 16))(*(v0 + 680), v18 + OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_enabledKey, *(v0 + 664));
          *(v0 + 57) = 1;
          type metadata accessor for LocalPreferences();
          Preferences.subscript.setter();
        }

        else
        {
          v4 = *(v0 + 672);
          v5 = *(v0 + 664);
          v6 = OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_enabledKey;
          *(v0 + 128) = v5;
          *(v0 + 136) = sub_100040238(&qword_1000A5688, &qword_1000A5680, &qword_100084000, &protocol conformance descriptor for PreferenceKey<A>);
          v7 = sub_1000061A4((v0 + 104));
          (*(v4 + 16))(v7, v18 + v6, v5);
          LocalPreferences.removeValue(forKey:)();
          sub_100001D4C((v0 + 104));
        }

        goto LABEL_7;
      }

      if (v12 == 2)
      {
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v33 = (*(v0 + 656) + *(v0 + 744));
        *(v0 + 816) = qword_1000A63A0;
        TaskLocal.get()();
        sub_100001CC0((v0 + 224), *(v0 + 248));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v34._countAndFlagsBits = 0xD000000000000037;
        v34._object = 0x8000000100088320;
        LogMessage.StringInterpolation.appendLiteral(_:)(v34);
        *(v0 + 544) = &type metadata for Double;
        *(v0 + 520) = v10;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 520, &qword_1000A5630, &unk_100083BF0);
        v35._countAndFlagsBits = 0;
        v35._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v35);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 224));
        sub_100001CC0(v33, v33[3]);
        v36 = swift_task_alloc();
        *(v0 + 824) = v36;
        *v36 = v0;
        v36[1] = sub_100033064;

        return sub_100048144(*&v10);
      }

      sub_10003FDD4(v10, v11, 3);
      v25 = qword_1000A4D48;

      if (v25 != -1)
      {
        swift_once();
      }

      v53 = (*(v0 + 656) + *(v0 + 736));
      TaskLocal.get()();
      sub_100001CC0((v0 + 144), *(v0 + 168));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v26._countAndFlagsBits = 0xD000000000000050;
      v26._object = 0x8000000100088280;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      *(v0 + 480) = &type metadata for String;
      *(v0 + 456) = v10;
      *(v0 + 464) = v11;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 456, &qword_1000A5630, &unk_100083BF0);
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 144));
      sub_100001CC0(v53, v53[3]);
      dispatch thunk of AssetPushSubscriptionStore.resetPending(channelID:)();
      sub_10003FDF0(v10, v11, 3);
      if (v50)
      {
        goto LABEL_48;
      }
    }

    sub_10003FDF0(v10, v11, v12);
    v50 = 0;
LABEL_7:
    v1 = *(v0 + 768) + 1;
    if (v1 == *(v0 + 720))
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_43:
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  *(v0 + 792) = qword_1000A63A0;
  TaskLocal.get()();
  sub_100001CC0((v0 + 304), *(v0 + 328));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 304));
  v37 = swift_task_alloc();
  *(v0 + 800) = v37;
  *v37 = v0;
  v37[1] = sub_100031E54;

  return JetPackAssetDiskCache._empty()();
}

uint64_t sub_100034264()
{
  v18 = *(v0 + 784);
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 776);
  v15 = *(v0 + 656);
  v16 = *(v0 + 58);
  TaskLocal.get()();
  sub_100001CC0((v0 + 184), *(v0 + 208));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x80000001000882E0;
  v1._countAndFlagsBits = 0xD000000000000031;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = *(v0 + 616);
  v3 = *(v0 + 624);
  *(v0 + 512) = v3;
  v4 = sub_1000061A4((v0 + 488));
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 488, &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 184));
  sub_100001CC0((v15 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v15 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));
  swift_errorRetain();
  v6 = _convertErrorToNSError(_:)();
  v7 = [v6 domain];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = _convertErrorToNSError(_:)();
  v12 = [v11 code];

  *(v0 + 16) = v8;
  *(v0 + 24) = v10;
  *(v0 + 32) = v12;
  *(v0 + 40) = v17;
  *(v0 + 48) = v18;
  *(v0 + 56) = v16;
  sub_10003FD80();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_10003FDF0(v17, v18, v16);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000345DC()
{
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 776);
  v15 = *(v0 + 656);
  v16 = *(v0 + 58);
  TaskLocal.get()();
  sub_100001CC0((v0 + 184), *(v0 + 208));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x80000001000882E0;
  v1._countAndFlagsBits = 0xD000000000000031;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = *(v0 + 616);
  v3 = *(v0 + 624);
  *(v0 + 512) = v3;
  v4 = sub_1000061A4((v0 + 488));
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 488, &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 184));
  sub_100001CC0((v15 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v15 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));
  swift_errorRetain();
  v6 = _convertErrorToNSError(_:)();
  v7 = [v6 domain];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = _convertErrorToNSError(_:)();
  v12 = [v11 code];

  *(v0 + 16) = v8;
  *(v0 + 24) = v10;
  *(v0 + 32) = v12;
  *(v0 + 40) = v17;
  *(v0 + 48) = 0;
  *(v0 + 56) = v16;
  sub_10003FD80();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_10003FDF0(v17, 0, v16);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10003494C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[36] = a2;
  v3[37] = a3;
  type metadata accessor for LogMessage.StringInterpolation();
  v3[38] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[39] = v4;
  v3[40] = *(v4 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v5 = type metadata accessor for AssetPushSubscriptionRecord();
  v3[43] = v5;
  v3[44] = *(v5 - 8);
  v3[45] = swift_task_alloc();

  return _swift_task_switch(sub_100034AA0, 0, 0);
}

void sub_100034AA0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore;
  *(v0 + 368) = OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore;
  sub_100001CC0((v1 + v3), *(v1 + v3 + 24));
  v4 = type metadata accessor for PushMessage(0);
  v5 = (v2 + v4[6]);
  v6 = *v5;
  *(v0 + 376) = *v5;
  v7 = v5[1];
  *(v0 + 384) = v7;
  v8 = dispatch thunk of AssetPushSubscriptionStore.find(channelID:)();
  *(v0 + 392) = 0;
  v42 = v6;
  v9 = *(v8 + 16);
  if (v9)
  {
    v40 = v4;
    v41 = v7;
    v10 = *(v0 + 352);
    v12 = *(v10 + 16);
    v11 = v10 + 16;
    v13 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v43 = *(v11 + 56);
    v44 = v12;
    v14 = _swiftEmptyArrayStorage;
    do
    {
      v16 = *(v0 + 360);
      v17 = *(v0 + 344);
      v44(v16, v13, v17);
      v18 = AssetPushSubscriptionRecord.bundleID.getter();
      v20 = v19;
      (*(v11 - 8))(v16, v17);
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_10001EC84(0, *(v14 + 2) + 1, 1, v14);
        }

        v22 = *(v14 + 2);
        v21 = *(v14 + 3);
        if (v22 >= v21 >> 1)
        {
          v14 = sub_10001EC84((v21 > 1), v22 + 1, 1, v14);
        }

        *(v14 + 2) = v22 + 1;
        v15 = &v14[16 * v22];
        *(v15 + 4) = v18;
        *(v15 + 5) = v20;
      }

      v13 += v43;
      --v9;
    }

    while (v9);

    v4 = v40;
    v7 = v41;
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  v23 = *(v0 + 288);
  v24 = *(v0 + 296);
  *(v0 + 280) = v14;
  sub_100001D04(&qword_1000A5638, &qword_100085440);
  sub_100040238(&qword_1000A56C8, &qword_1000A5638, &qword_100085440, &protocol conformance descriptor for [A]);
  v25 = BidirectionalCollection<>.joined(separator:)();
  v27 = v26;

  sub_100001CC0((v23 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v23 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));
  v45 = *(v24 + v4[8]);
  *(v0 + 460) = v45;
  *(v0 + 456) = v4[5];

  Date.timeIntervalSince1970.getter();
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v39 = v27;
  v30 = *(v0 + 328);
  v29 = *(v0 + 336);
  v31 = v7;
  v33 = *(v0 + 312);
  v32 = *(v0 + 320);
  sub_1000064B4(*(v0 + 288) + OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider, v0 + 64);
  Date.init(timeIntervalSince1970:)();
  sub_100001CC0((v0 + 64), *(v0 + 88));
  dispatch thunk of DateProvider.now.getter();
  Date.timeIntervalSince(_:)();
  v35 = v34;
  v36 = *(v32 + 8);
  v36(v30, v33);
  v36(v29, v33);
  sub_100001D4C((v0 + 64));
  *(v0 + 16) = v42;
  *(v0 + 24) = v31;
  *(v0 + 32) = v25;
  *(v0 + 40) = v39;
  *(v0 + 48) = v45;
  *(v0 + 56) = v35;
  sub_10003FF60();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  v37 = swift_task_alloc();
  *(v0 + 400) = v37;
  *v37 = v0;
  v37[1] = sub_100034F60;
  v38 = *(v0 + 296);

  sub_100035A70(v38);
}

uint64_t sub_100034F60()
{

  return _swift_task_switch(sub_10003505C, 0, 0);
}

uint64_t sub_10003505C()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler;
  *(v0 + 408) = OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler;
  sub_100001CC0((v2 + v4), *(v2 + v4 + 24));
  v5 = swift_task_alloc();
  *(v0 + 416) = v5;
  *v5 = v0;
  v5[1] = sub_100035120;
  v6 = *(v0 + 460);

  return sub_100045B2C(v6, v3 + v1);
}

uint64_t sub_100035120(double a1, double a2)
{
  v3 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = a2;

  return _swift_task_switch(sub_100035220, 0, 0);
}

uint64_t sub_100035220()
{
  v1 = *(v0 + 460);
  v2 = (*(v0 + 288) + *(v0 + 368));
  sub_100001CC0(v2, v2[3]);
  v3 = v1 != 4;
  if (v1 == 3)
  {
    v3 = 0;
  }

  v4 = v1 > 2 && v3;
  v5 = *(v0 + 392);
  v6 = dispatch thunk of AssetPushSubscriptionStore.updateToPending(channelID:scheduleAfter:scheduleBefore:priority:timestamp:)();
  if (v5)
  {

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = v6;
    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 384);
    v24 = *(v0 + 376);
    TaskLocal.get()();
    sub_100001CC0((v0 + 104), *(v0 + 128));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0xD000000000000024;
    v11._object = 0x8000000100088630;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    *(v0 + 208) = &type metadata for Int;
    *(v0 + 184) = v9;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 184, &qword_1000A5630, &unk_100083BF0);
    v12._object = 0x8000000100088660;
    v12._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    *(v0 + 240) = &type metadata for String;
    *(v0 + 216) = v24;
    *(v0 + 224) = v10;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 104));
    if ((v4 & jet_debug_tooling_os_variant_has_internal_content()()) == 1)
    {
      v15 = *(v0 + 424);
      v14 = *(v0 + 432);
      v16 = (*(v0 + 288) + *(v0 + 408));
      TaskLocal.get()();
      sub_100001CC0((v0 + 144), *(v0 + 168));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v17._countAndFlagsBits = 0xD000000000000044;
      v17._object = 0x8000000100088690;
      LogMessage.StringInterpolation.appendLiteral(_:)(v17);
      *(v0 + 272) = &type metadata for ScheduleTime;
      *(v0 + 248) = v15;
      *(v0 + 256) = v14;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 144));
      sub_100001CC0(v16, v16[3]);
      v19 = swift_task_alloc();
      *(v0 + 440) = v19;
      *v19 = v0;
      v19[1] = sub_100035788;
      v20 = *(v0 + 424);
      v21 = *(v0 + 432);

      return sub_100045514(v20, v21);
    }

    else
    {
      v22 = (*(v0 + 288) + *(v0 + 408));
      sub_100001CC0(v22, v22[3]);
      v23 = swift_task_alloc();
      *(v0 + 448) = v23;
      *v23 = v0;
      v23[1] = sub_1000358FC;

      return sub_1000473EC();
    }
  }
}

uint64_t sub_100035788()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000358FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100035A70(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  v3 = type metadata accessor for JetPackAsset.Metadata();
  v2[47] = v3;
  v2[48] = *(v3 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  sub_100001D04(&qword_1000A4EE8, &qword_100083C08);
  v2[51] = swift_task_alloc();
  v4 = type metadata accessor for JetPackAsset();
  v2[52] = v4;
  v2[53] = *(v4 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v5 = type metadata accessor for AssetPushSubscriptionRecord();
  v2[56] = v5;
  v2[57] = *(v5 - 8);
  v2[58] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v2[59] = swift_task_alloc();
  sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[62] = v6;
  v2[63] = *(v6 - 8);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();

  return _swift_task_switch(sub_100035D10, 0, 0);
}

uint64_t sub_100035D10()
{
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v4 = *(v0 + 360);
  v5 = type metadata accessor for PushMessage(0);
  *(v0 + 528) = v5;
  v6 = (v4 + *(v5 + 24));
  v8 = *v6;
  v7 = v6[1];
  sub_100002758(v4 + *(v5 + 36), v3, &qword_1000A56E0, &unk_100083BE0);
  v9 = *(v1 + 48);
  *(v0 + 536) = v9;
  *(v0 + 544) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v9(v3, 1, v2) == 1)
  {
    sub_10000DCA0(*(v0 + 488), &qword_1000A56E0, &unk_100083BE0);
LABEL_6:

    v19 = *(v0 + 8);

    return v19();
  }

  v10 = *(v0 + 520);
  v11 = *(v0 + 496);
  v12 = *(v0 + 504);
  v13 = *(v0 + 488);
  v14 = *(v12 + 32);
  *(v0 + 552) = v14;
  *(v0 + 560) = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v14(v10, v13, v11);
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v44 = *(v0 + 368);
  *(v0 + 568) = qword_1000A63A0;
  TaskLocal.get()();
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 576) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v15 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 584) = *(v15 + 72);
  *(v0 + 688) = *(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x80000001000886E0;
  v16._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v0 + 160) = &type metadata for String;
  *(v0 + 136) = v8;
  *(v0 + 144) = v7;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 136, &qword_1000A5630, &unk_100083BF0);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  sub_100001CC0((v44 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore), *(v44 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore + 24));
  v18 = dispatch thunk of AssetPushSubscriptionStore.find(channelID:)();
  v21 = *(v18 + 16);
  if (v21)
  {
    v22 = *(v0 + 456);
    v24 = *(v22 + 16);
    v23 = v22 + 16;
    v25 = v18 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v43 = *(v23 + 56);
    v45 = v24;
    v26 = _swiftEmptyArrayStorage;
    do
    {
      v28 = *(v0 + 464);
      v29 = *(v0 + 448);
      v45(v28, v25, v29);
      v30 = AssetPushSubscriptionRecord.assetURLString.getter();
      v32 = v31;
      (*(v23 - 8))(v28, v29);
      if (v32)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_10001EC84(0, *(v26 + 2) + 1, 1, v26);
        }

        v34 = *(v26 + 2);
        v33 = *(v26 + 3);
        if (v34 >= v33 >> 1)
        {
          v26 = sub_10001EC84((v33 > 1), v34 + 1, 1, v26);
        }

        *(v26 + 2) = v34 + 1;
        v27 = &v26[16 * v34];
        *(v27 + 4) = v30;
        *(v27 + 5) = v32;
      }

      v25 += v43;
      --v21;
    }

    while (v21);
  }

  else
  {

    v26 = _swiftEmptyArrayStorage;
  }

  *(v0 + 592) = v26;
  v35 = *(v26 + 2);
  *(v0 + 600) = v35;
  if (!v35)
  {
    v40 = *(v0 + 520);
    v41 = *(v0 + 496);
    v42 = *(v0 + 504);

    (*(v42 + 8))(v40, v41);
    goto LABEL_6;
  }

  *(v0 + 608) = *(*(v0 + 368) + OBJC_IVAR____TtC13jetpackassetd11PushManager_diskCache);
  *(v0 + 616) = 0;
  v36 = *(v26 + 4);
  *(v0 + 624) = v36;
  v37 = *(v26 + 5);
  *(v0 + 632) = v37;

  v38 = swift_task_alloc();
  *(v0 + 640) = v38;
  *v38 = v0;
  v38[1] = sub_10003641C;
  v39 = *(v0 + 408);

  return JetPackAssetDiskCache._asset(for:)(v39, v36, v37);
}

uint64_t sub_10003641C()
{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = sub_100036F3C;
  }

  else
  {
    v2 = sub_100036530;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100036530()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 408);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000DCA0(v3, &qword_1000A4EE8, &qword_100083C08);
    goto LABEL_15;
  }

  v48 = *(v0 + 536);
  v4 = *(v0 + 496);
  v5 = *(v0 + 480);
  v6 = *(v0 + 400);
  v7 = *(v0 + 376);
  v8 = *(v0 + 384);
  (*(v2 + 32))(*(v0 + 440), v3, v1);
  JetPackAsset.metadata.getter();
  JetPackAsset.Metadata.lastModifiedDate.getter();
  v9 = *(v8 + 8);
  v9(v6, v7);
  if (v48(v5, 1, v4) == 1)
  {
    v10 = *(v0 + 536);
    v11 = *(v0 + 496);
    v12 = *(v0 + 480);
    v13 = *(v0 + 392);
    v14 = *(v0 + 376);
    JetPackAsset.metadata.getter();
    JetPackAsset.Metadata.revalidatedAt.getter();
    v9(v13, v14);
    if (v10(v12, 1, v11) != 1)
    {
      sub_10000DCA0(*(v0 + 480), &qword_1000A56E0, &unk_100083BE0);
    }
  }

  else
  {
    (*(v0 + 552))(*(v0 + 512), *(v0 + 480), *(v0 + 496));
  }

  sub_10004019C(&qword_1000A56E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*(*(v0 + 360) + *(*(v0 + 528) + 40)) != 1)
  {
    JetPackAssetDiskCache._evict(cacheKey:)(*(v0 + 624));
    if (v19)
    {
      v20 = *(v0 + 440);
      v21 = *(v0 + 416);
      v22 = *(v0 + 424);
      (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
      (*(v22 + 8))(v20, v21);
      v47 = *(v0 + 632);
      v23 = *(v0 + 624);
      TaskLocal.get()();
      sub_100001CC0((v0 + 96), *(v0 + 120));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v24._object = 0x8000000100088750;
      v24._countAndFlagsBits = 0xD000000000000035;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      *(v0 + 224) = &type metadata for String;
      *(v0 + 200) = v23;
      *(v0 + 208) = v47;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 200, &qword_1000A5630, &unk_100083BF0);
      v25._countAndFlagsBits = 0x726F727265202C27;
      v25._object = 0xEA0000000000203ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      swift_getErrorValue();
      v26 = *(v0 + 320);
      v27 = *(v0 + 328);
      *(v0 + 256) = v27;
      v28 = sub_1000061A4((v0 + 232));
      (*(*(v27 - 8) + 16))(v28, v26, v27);
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 232, &qword_1000A5630, &unk_100083BF0);
      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v0 + 96));
      goto LABEL_15;
    }

LABEL_14:
    v31 = *(v0 + 504);
    v30 = *(v0 + 512);
    v32 = *(v0 + 496);
    v33 = *(v0 + 440);
    v34 = *(v0 + 416);
    v35 = *(v0 + 424);

    (*(v31 + 8))(v30, v32);
    (*(v35 + 8))(v33, v34);
LABEL_15:
    v36 = *(v0 + 616) + 1;
    if (v36 == *(v0 + 600))
    {
      v37 = *(v0 + 520);
      v38 = *(v0 + 496);
      v39 = *(v0 + 504);

      (*(v39 + 8))(v37, v38);

      v40 = *(v0 + 8);

      return v40();
    }

    else
    {
      *(v0 + 616) = v36;
      v41 = *(v0 + 592) + 16 * v36;
      v42 = *(v41 + 32);
      *(v0 + 624) = v42;
      v43 = *(v41 + 40);
      *(v0 + 632) = v43;

      v44 = swift_task_alloc();
      *(v0 + 640) = v44;
      *v44 = v0;
      v44[1] = sub_10003641C;
      v45 = *(v0 + 408);

      return JetPackAssetDiskCache._asset(for:)(v45, v42, v43);
    }
  }

  v15 = JetPackAsset.metadata.modify();
  JetPackAsset.Metadata.serverExpired.setter();
  v15(v0 + 264, 0);
  v16 = swift_task_alloc();
  *(v0 + 656) = v16;
  *v16 = v0;
  v16[1] = sub_100036BE4;
  v17 = *(v0 + 432);
  v18 = *(v0 + 440);

  return JetPackAssetDiskCache._cache(_:)(v17, v18);
}

uint64_t sub_100036BE4()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v3 = sub_1000372BC;
  }

  else
  {
    v5 = v2[53];
    v4 = v2[54];
    v6 = v2[52];
    v7 = *(v5 + 8);
    v2[84] = v7;
    v2[85] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);

    v3 = sub_100036D2C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100036D2C()
{
  v1 = v0[84];
  v2 = v0[55];
  v3 = v0[52];
  (*(v0[63] + 8))(v0[64], v0[62]);
  v1(v2, v3);
  v4 = v0[77] + 1;
  if (v4 == v0[75])
  {
    v5 = v0[65];
    v6 = v0[62];
    v7 = v0[63];

    (*(v7 + 8))(v5, v6);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v0[77] = v4;
    v10 = v0[74] + 16 * v4;
    v11 = *(v10 + 32);
    v0[78] = v11;
    v12 = *(v10 + 40);
    v0[79] = v12;

    v13 = swift_task_alloc();
    v0[80] = v13;
    *v13 = v0;
    v13[1] = sub_10003641C;
    v14 = v0[51];

    return JetPackAssetDiskCache._asset(for:)(v14, v11, v12);
  }
}

uint64_t sub_100036F3C()
{
  v1 = v0[79];
  v2 = v0[78];
  TaskLocal.get()();
  sub_100001CC0(v0 + 12, v0[15]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x8000000100088750;
  v3._countAndFlagsBits = 0xD000000000000035;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  v0[25] = v2;
  v0[28] = &type metadata for String;
  v0[26] = v1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 25), &qword_1000A5630, &unk_100083BF0);
  v4._countAndFlagsBits = 0x726F727265202C27;
  v4._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = v0[40];
  v6 = v0[41];
  v0[32] = v6;
  v7 = sub_1000061A4(v0 + 29);
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 29), &qword_1000A5630, &unk_100083BF0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 12);
  v9 = v0[77] + 1;
  if (v9 == v0[75])
  {
    v10 = v0[65];
    v11 = v0[62];
    v12 = v0[63];

    (*(v12 + 8))(v10, v11);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v0[77] = v9;
    v15 = v0[74] + 16 * v9;
    v16 = *(v15 + 32);
    v0[78] = v16;
    v17 = *(v15 + 40);
    v0[79] = v17;

    v18 = swift_task_alloc();
    v0[80] = v18;
    *v18 = v0;
    v18[1] = sub_10003641C;
    v19 = v0[51];

    return JetPackAssetDiskCache._asset(for:)(v19, v16, v17);
  }
}

uint64_t sub_1000372BC()
{
  v1 = v0[55];
  v2 = v0[52];
  v3 = v0[53];
  (*(v0[63] + 8))(v0[64], v0[62]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[79];
  v5 = v0[78];
  TaskLocal.get()();
  sub_100001CC0(v0 + 12, v0[15]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100088750;
  v6._countAndFlagsBits = 0xD000000000000035;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v0[25] = v5;
  v0[28] = &type metadata for String;
  v0[26] = v4;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 25), &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0x726F727265202C27;
  v7._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[40];
  v9 = v0[41];
  v0[32] = v9;
  v10 = sub_1000061A4(v0 + 29);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 29), &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 12);
  v12 = v0[77] + 1;
  if (v12 == v0[75])
  {
    v13 = v0[65];
    v14 = v0[62];
    v15 = v0[63];

    (*(v15 + 8))(v13, v14);

    v16 = v0[1];

    return v16();
  }

  else
  {
    v0[77] = v12;
    v18 = v0[74] + 16 * v12;
    v19 = *(v18 + 32);
    v0[78] = v19;
    v20 = *(v18 + 40);
    v0[79] = v20;

    v21 = swift_task_alloc();
    v0[80] = v21;
    *v21 = v0;
    v21[1] = sub_10003641C;
    v22 = v0[51];

    return JetPackAssetDiskCache._asset(for:)(v22, v19, v20);
  }
}