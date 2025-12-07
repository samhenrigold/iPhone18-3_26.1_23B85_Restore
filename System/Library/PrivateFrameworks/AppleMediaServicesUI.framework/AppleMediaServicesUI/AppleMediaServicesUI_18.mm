uint64_t sub_1001B03B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1001B042C(uint64_t result, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = result >> 32;
      if (result >> 32 < result)
      {
        goto LABEL_11;
      }

      result = result;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(result + 24);
      result = *(result + 16);
      v6 = v5;
LABEL_9:
      result = sub_1001B0744(result, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return result;
    case 3uLL:
      result = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1001B0670(result, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return result;
  }
}

uint64_t sub_1001B04C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B0510(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001B0558(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1001B05BC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1001B0670(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SHA256();
  sub_1001B04C8(&qword_100270B90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1001B0744(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1001B04C8(&qword_100270B90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B0824(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_100271768, &qword_1001F0A08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1001B088C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1001AFF9C(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1001B08E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001B0510(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1001B094C()
{
  sub_10000E740();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100245450, v2);
  sub_100005F2C();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001B0990(char a1)
{
  result = 0x6C62616568636163;
  switch(a1)
  {
    case 1:
      result = 0x656D697265707865;
      break;
    case 2:
      result = sub_100003E84();
      break;
    case 3:
      result = 1953259891;
      break;
    case 4:
      result = 1684366707;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001B0A14()
{
  sub_10000E740();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002454E8, v2);
  sub_100005F2C();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001B0A58(char a1)
{
  result = 0x656D6954646E65;
  switch(a1)
  {
    case 1:
      result = sub_100003E84();
      break;
    case 2:
      result = 0x6D69547472617473;
      break;
    case 3:
      result = 0x6F726665726F7473;
      break;
    case 4:
      result = 0x6E656D7461657274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001B0AF0(char a1)
{
  if (a1)
  {
    return 25705;
  }

  else
  {
    return 0x7374656B637562;
  }
}

unint64_t sub_1001B0B40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B094C();
  *a1 = result;
  return result;
}

uint64_t sub_1001B0B70()
{
  v1 = sub_10003AF60();
  result = sub_1001B0990(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1001B0BA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B094C();
  *a1 = result;
  return result;
}

uint64_t sub_1001B0BC8(uint64_t a1)
{
  v2 = sub_1001B4E5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0C04(uint64_t a1)
{
  v2 = sub_1001B4E5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001B0C64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B0A14();
  *a1 = result;
  return result;
}

uint64_t sub_1001B0C94()
{
  v1 = sub_10003AF60();
  result = sub_1001B0A58(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1001B0CC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B0A14();
  *a1 = result;
  return result;
}

uint64_t sub_1001B0CEC(uint64_t a1)
{
  v2 = sub_1001B4564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0D28(uint64_t a1)
{
  v2 = sub_1001B4564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B0D88@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1001B2760();
  *a2 = result;
  return result;
}

uint64_t sub_1001B0DC0()
{
  v1 = sub_10003AF60();
  result = sub_1001B0AF0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001B0DF0@<X0>(_BYTE *a3@<X8>)
{
  result = sub_1001B2760();
  *a3 = result;
  return result;
}

uint64_t sub_1001B0E20(uint64_t a1)
{
  v2 = sub_1001B488C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0E5C(uint64_t a1)
{
  v2 = sub_1001B488C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001B0E98()
{
  sub_100007E34();
  sub_10000A8D8(v2, v3, v4, v5);
  v6 = sub_10007B9A4(&qword_100271A30, &qword_1001F0D28);
  sub_100002CC4();
  v8 = v7;
  sub_100004E78();
  __chkstk_darwin(v9);
  sub_100006264();
  sub_100004DF8();
  v10 = sub_1001B488C();
  sub_10000A664(&type metadata for TreatmentsConfiguration.Area.Experiment.Treatment.CodingKeys, v11, v10);
  sub_10007B9A4(&qword_100271A10, &unk_1001F0D18);
  sub_1001B4944(&unk_100271A38);
  sub_100005654();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    sub_100011B44();
  }

  (*(v8 + 8))(v0, v6);
  sub_100005B78();
}

uint64_t sub_1001B0FE0(void *a1)
{
  sub_10007B9A4(&qword_100271A00, &qword_1001F0D10);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v3);
  sub_100006264();
  sub_10000A264(a1);
  v4 = sub_1001B488C();
  sub_10000AF00(&type metadata for TreatmentsConfiguration.Area.Experiment.Treatment.CodingKeys, v5, v4);
  if (v1)
  {
    sub_100002C00(a1);
  }

  else
  {
    sub_10007B9A4(&qword_100271A10, &unk_1001F0D18);
    v10 = 0;
    v6 = sub_1001B4944(&unk_100271A18);
    sub_10000C4A8(v6, &v10);
    sub_1000072F8();
    v8 = sub_1000035C8();
    v9(v8);
    sub_100002C00(a1);
  }

  return sub_100017E1C();
}

void sub_1001B11D0()
{
  sub_100007E34();
  v2 = v1;
  sub_10007B9A4(&qword_1002719D8, &qword_1001F0D08);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v3);
  sub_10000710C();
  sub_10000A264(v2);
  sub_1001B4564();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Date();
  sub_10000AD8C();
  sub_1001B50A8(v4);
  sub_100006274();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for TreatmentsConfiguration.Area.Experiment(0);
    sub_100005AF8();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_10000C20C(&qword_10026A740, &protocol witness table for String);
    sub_100005654();
    sub_100006274();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10007B9A4(&qword_1002719C0, &qword_1001F0D00);
    sub_1001B47B4();
    sub_100005654();
    sub_100006274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v5 = sub_10000A298();
  v6(v5);
  sub_100012FB0();
  sub_100005B78();
}

void sub_1001B140C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100007E34();
  v64 = v20;
  v22 = v21;
  v58 = v23;
  v62 = type metadata accessor for Date();
  sub_100002CC4();
  v59 = v24;
  v26 = __chkstk_darwin(v25);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v54 - v29;
  v63 = sub_10007B9A4(&qword_1002719A0, &qword_1001F0CF8);
  sub_100002CC4();
  v60 = v31;
  sub_100004E78();
  __chkstk_darwin(v32);
  v34 = &v54 - v33;
  v35 = type metadata accessor for TreatmentsConfiguration.Area.Experiment(0);
  __chkstk_darwin(v35);
  v37 = &v54 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003CA8(v22, v22[3]);
  sub_1001B4564();
  v61 = v34;
  v38 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
    sub_100002C00(v22);
  }

  else
  {
    v57 = v28;
    v64 = v22;
    v39 = v37;
    sub_10000AD8C();
    sub_1001B50A8(v40);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v41 = *(v59 + 32);
    v42 = v30;
    v43 = v62;
    v41(v39, v42, v62);
    v44 = KeyedDecodingContainer.decode(_:forKey:)();
    v54 = v41;
    v55 = v35;
    v45 = *(v35 + 20);
    v56 = v39;
    v46 = &v39[v45];
    *v46 = v44;
    v46[1] = v47;
    LOBYTE(a10) = 2;
    v48 = v57;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v54(v56 + *(v55 + 24), v48, v43);
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    v65 = 3;
    sub_100007D6C(&qword_10026A718, &protocol witness table for String);
    sub_10000616C();
    sub_10003D368();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v49 = v64;
    v50 = v55;
    v51 = v56;
    *(v56 + *(v55 + 28)) = a10;
    sub_10007B9A4(&qword_1002719C0, &qword_1001F0D00);
    v65 = 4;
    sub_1001B45B8();
    sub_10000616C();
    sub_10003D368();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v52 = sub_100012DF4();
    v53(v52);
    *(v51 + *(v50 + 32)) = a10;
    sub_1001B4690(v51, v58);
    sub_100002C00(v49);
    sub_1001B46F4(v51);
  }

  sub_100005B78();
}

uint64_t sub_1001B191C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656D614E676162 && a2 == 0xEC00000065636170;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_1001B1A2C(char a1)
{
  if (!a1)
  {
    return 0x73656D614E676162;
  }

  if (a1 == 1)
  {
    return 0x6E69616D6F64;
  }

  return 1701869940;
}

uint64_t sub_1001B1A80(void *a1)
{
  sub_10007B9A4(&qword_100271B20, &qword_1001F1290);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v3);
  sub_10000710C();
  sub_10000A264(a1);
  sub_1001B5140();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100005AF8();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    sub_100005AF8();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100005AF8();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v4 = sub_10000A298();
  return v5(v4);
}

void sub_1001B1BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100007E34();
  v26 = v25;
  v28 = v27;
  v29 = sub_10007B9A4(&qword_100271B10, &qword_1001F1288);
  sub_100002CC4();
  v31 = v30;
  sub_100004E78();
  __chkstk_darwin(v32);
  v34 = &v44 - v33;
  sub_100003CA8(v26, v26[3]);
  sub_1001B5140();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100002C00(v26);
  }

  else
  {
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = v36;
    v45 = KeyedDecodingContainer.decode(_:forKey:)();
    v46 = v37;
    v38 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v34;
    v41 = v40;
    (*(v31 + 8))(v39, v29);
    sub_100002C00(v26);
    v42 = v47;
    *v28 = v35;
    v28[1] = v42;
    v43 = v46;
    v28[2] = v45;
    v28[3] = v43;
    v28[4] = v38;
    v28[5] = v41;
  }

  sub_100012FB0();
  sub_100005B78();
}

uint64_t sub_1001B1DDC(void *a1)
{
  sub_10007B9A4(&qword_100271AE0, &qword_1001F1270);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v3);
  sub_10000710C();
  sub_10000A264(a1);
  sub_1001B4E5C();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    sub_10007B9A4(&qword_100271AA0, &qword_1001F1258);
    sub_1001B4EB0(&unk_100271AE8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000182C4(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000182C4(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1001B50EC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v4 = sub_10000A298();
  return v5(v4);
}

void sub_1001B1FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100007E34();
  v25 = v24;
  v27 = v26;
  sub_10007B9A4(&qword_100271A90, &qword_1001F1250);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v28);
  sub_10000A264(v25);
  sub_1001B4E5C();
  sub_100008238();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100002C00(v25);
  }

  else
  {
    LOBYTE(v47[0]) = 0;
    sub_1000049E0();
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10007B9A4(&qword_100271AA0, &qword_1001F1258);
    LOBYTE(v46[0]) = 1;
    sub_1001B4EB0(&unk_100271AA8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44 = v47[0];
    sub_1000049E0();
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v45 = v31;
    LOBYTE(v47[0]) = 3;
    sub_1000049E0();
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v30;
    v33 = v32;
    sub_1001B4F44();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = sub_1000066DC();
    v35(v34);
    v41 = v48;
    v40 = v49;
    v36 = v51;
    v39 = v50;
    v38 = v52;
    v37 = v53;
    LOBYTE(v46[0]) = v29 & 1;
    v46[1] = v44;
    v46[2] = v43;
    v46[3] = v45;
    v46[4] = v42;
    v46[5] = v33;
    v46[6] = v48;
    v46[7] = v49;
    v46[8] = v50;
    v46[9] = v51;
    v46[10] = v52;
    v46[11] = v53;
    sub_1001B4F98(v46, v47);
    sub_100002C00(v25);
    LOBYTE(v47[0]) = v29 & 1;
    v47[1] = v44;
    v47[2] = v43;
    v47[3] = v45;
    v47[4] = v42;
    v47[5] = v33;
    v47[6] = v41;
    v47[7] = v40;
    v47[8] = v39;
    v47[9] = v36;
    v47[10] = v38;
    v47[11] = v37;
    sub_1001B4FD0(v47);
    memcpy(v27, v46, 0x60uLL);
  }

  sub_100005B78();
}

uint64_t sub_1001B2420(char a1)
{
  if (a1)
  {
    return 0x73644961657261;
  }

  else
  {
    return 25705;
  }
}

void sub_1001B244C()
{
  sub_100007E34();
  sub_10007B9A4(&qword_100271B00, &qword_1001F1278);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v1);
  sub_10000710C();
  sub_100004DF8();
  v2 = sub_1001B5000();
  sub_10000A664(&type metadata for TreatmentsConfiguration.Namespace.CodingKeys, v3, v2);
  sub_100005AF8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_10000C20C(&qword_10026A740, &protocol witness table for String);
    sub_100006274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v4 = sub_10000A298();
  v5(v4);
  sub_100012FB0();
  sub_100005B78();
}

uint64_t sub_1001B25A8(void *a1)
{
  sub_10007B9A4(&qword_100271AC0, &qword_1001F1260);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v3);
  sub_100006264();
  sub_10000A264(a1);
  v4 = sub_1001B5000();
  sub_10000AF00(&type metadata for TreatmentsConfiguration.Namespace.CodingKeys, v5, v4);
  if (v1)
  {
    v10 = 0;
    sub_100002C00(a1);
  }

  else
  {
    v13 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    v11 = 1;
    v7 = sub_100007D6C(&qword_10026A718, &protocol witness table for String);
    sub_10000C4A8(v7, &v11);
    v8 = sub_1000035C8();
    v9(v8);
    v10 = v12;
    sub_100002C00(a1);
  }

  return v10;
}

uint64_t sub_1001B2760()
{
  sub_10000E740();
  v3._rawValue = v2;
  v4._object = v0;
  _findStringSwitchCase(cases:string:)(v3, v4);
  sub_100005F2C();

  if (v1 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B27A8(char a1)
{
  if (a1)
  {
    return 25705;
  }

  else
  {
    return 0x73644961657261;
  }
}

void sub_1001B27D4()
{
  sub_100007E34();
  sub_10000A8D8(v2, v3, v4, v5);
  v6 = sub_10007B9A4(&qword_100271B08, &qword_1001F1280);
  sub_100002CC4();
  v8 = v7;
  sub_100004E78();
  __chkstk_darwin(v9);
  sub_100006264();
  sub_100004DF8();
  v10 = sub_1001B5054();
  sub_10000A664(&type metadata for TreatmentsConfiguration.Topic.CodingKeys, v11, v10);
  sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  sub_10000C20C(&qword_10026A740, &protocol witness table for String);
  sub_100005654();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    sub_100011B44();
  }

  (*(v8 + 8))(v0, v6);
  sub_100005B78();
}

uint64_t sub_1001B2900(void *a1)
{
  sub_10007B9A4(&qword_100271AD0, &qword_1001F1268);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v3);
  sub_100006264();
  sub_10000A264(a1);
  v4 = sub_1001B5054();
  sub_10000AF00(&type metadata for TreatmentsConfiguration.Topic.CodingKeys, v5, v4);
  if (v1)
  {
    sub_100002C00(a1);
  }

  else
  {
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    v10 = 0;
    v6 = sub_100007D6C(&qword_10026A718, &protocol witness table for String);
    sub_10000C4A8(v6, &v10);
    sub_1000072F8();
    v8 = sub_1000035C8();
    v9(v8);
    sub_100002C00(a1);
  }

  return sub_100017E1C();
}

uint64_t sub_1001B2A88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7361657261 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63617073656D616ELL && a2 == 0xEA00000000007365;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736369706F74 && a2 == 0xE600000000000000)
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

uint64_t sub_1001B2B98(char a1)
{
  if (!a1)
  {
    return 0x7361657261;
  }

  if (a1 == 1)
  {
    return 0x63617073656D616ELL;
  }

  return 0x736369706F74;
}

void sub_1001B2BEC()
{
  sub_100007E34();
  sub_10007B9A4(&qword_100271968, &qword_1001F0CF0);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v1);
  sub_10000710C();
  sub_100004DF8();
  v2 = sub_1001B4000();
  sub_10000A664(&type metadata for TreatmentsConfiguration.CodingKeys, v3, v2);
  sub_10007B9A4(&qword_100271920, &qword_1001F0CD8);
  sub_1001B42DC();
  sub_100005654();
  sub_100006274();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    sub_10007B9A4(&qword_100271938, &qword_1001F0CE0);
    sub_1001B43B4();
    sub_100005654();
    sub_100006274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10007B9A4(&qword_100271950, &qword_1001F0CE8);
    sub_1001B448C();
    sub_100005654();
    sub_100006274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v4 = sub_10000A298();
  v5(v4);
  sub_100012FB0();
  sub_100005B78();
}

void sub_1001B2D7C()
{
  sub_100007E34();
  v1 = v0;
  sub_10007B9A4(&qword_100271910, &qword_1001F0CD0);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v2);
  sub_100006264();
  sub_10000A264(v1);
  sub_1001B4000();
  sub_100008238();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_10007B9A4(&qword_100271920, &qword_1001F0CD8);
  sub_1001B4054();
  sub_10000616C();
  sub_10001CDEC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10007B9A4(&qword_100271938, &qword_1001F0CE0);
  sub_1001B412C();
  sub_10000616C();
  sub_10001CDEC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10007B9A4(&qword_100271950, &qword_1001F0CE8);
  sub_1001B4204();
  sub_10000616C();
  sub_10001CDEC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v3 = sub_10000B434();
  v4(v3);
  sub_100002C00(v1);
  sub_100005B78();
}

uint64_t sub_1001B2F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B191C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B2FC0(uint64_t a1)
{
  v2 = sub_1001B5140();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B2FFC(uint64_t a1)
{
  v2 = sub_1001B5140();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001B3094(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1001B1FF4(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], SWORD2(v11[1]), SBYTE6(v11[1]), SHIBYTE(v11[1]), v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11]);
  if (!v9)
  {
    memcpy(a9, v11, 0x60uLL);
  }
}

uint64_t sub_1001B311C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B2760();
  *a1 = result;
  return result;
}

uint64_t sub_1001B3154()
{
  v1 = sub_10003AF60();
  result = sub_1001B2420(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001B3184@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B2760();
  *a1 = result;
  return result;
}

uint64_t sub_1001B31B4(uint64_t a1)
{
  v2 = sub_1001B5000();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B31F0(uint64_t a1)
{
  v2 = sub_1001B5000();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B3258@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1001B32D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B2760();
  *a1 = result;
  return result;
}

uint64_t sub_1001B3308()
{
  v1 = sub_10003AF60();
  result = sub_1001B27A8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001B3338@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B2760();
  *a1 = result;
  return result;
}

uint64_t sub_1001B3368(uint64_t a1)
{
  v2 = sub_1001B5054();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B33A4(uint64_t a1)
{
  v2 = sub_1001B5054();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B3434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B2A88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B345C(uint64_t a1)
{
  v2 = sub_1001B4000();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B3498(uint64_t a1)
{
  v2 = sub_1001B4000();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001B34D4(void *a1@<X8>)
{
  sub_1001B2D7C();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

uint64_t sub_1001B3524()
{
  sub_10007B9A4(&qword_10026D348, qword_1001EC858);
  v1 = [*(v0 + 16) URLForKey:*(v0 + 24)];
  v2 = [v1 valuePromise];

  Promise<A>.init(_:)();
  v3 = type metadata accessor for SyncTaskScheduler();
  v7 = v3;
  v8 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v6);
  sub_100005F2C();

  SyncTaskScheduler.init()();
  sub_10007B9A4(&unk_100271830, &unk_1001F0A50);
  sub_1001B3BDC();
  Promise.flatMap<A>(on:_:)();
  sub_100005F2C();

  sub_100002C00(v6);
  v7 = v3;
  v8 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v6);
  SyncTaskScheduler.init()();
  v4 = Promise.map<A>(on:_:)();

  sub_100002C00(v6);
  return v4;
}

uint64_t sub_1001B369C(void *a1, uint64_t a2)
{
  v3 = sub_10007B9A4(&unk_10026FB30, &qword_1001EEF50);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for URL();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for URLRequest();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  (*(v8 + 16))(v5, v10, v7);
  sub_10000A7C0(v5, 0, 1, v7);
  v11 = *(a2 + 16);
  objc_allocWithZone(AMSURLRequest);
  swift_unknownObjectRetain();
  v12 = sub_1001B3D38(v5, v11);
  if (v12)
  {
    v13 = v12;
    v14 = [*(a2 + 32) dataTaskPromiseWithRequest:v12];
    sub_10007B9A4(&unk_100271830, &unk_1001F0A50);
    v15 = Promise<A>.init(_:)();
  }

  else
  {
    sub_10007B9A4(&unk_100271830, &unk_1001F0A50);
    sub_1001B3C40();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 1;
    v15 = Promise.__allocating_init(error:)();
  }

  (*(v8 + 8))(v10, v7);
  return v15;
}

void sub_1001B3924(id *a1)
{
  v3 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = [*a1 response];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

LABEL_6:
    sub_1001B3C40();
    swift_allocError();
    *v14 = 1;
    *(v14 + 8) = 1;
    swift_willThrow();
    return;
  }

  v11 = [v10 statusCode];
  if ((v11 - 300) >= 0xFFFFFFFFFFFFFF9CLL)
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    (*(v4 + 104))(v6, enum case for JSONDecoder.DateDecodingStrategy.secondsSince1970(_:), v3);
    dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
    v15 = [v7 data];
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    sub_1001B3C94();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1000253FC(v16, v18);
  }

  else
  {
    v12 = v11;
    sub_1001B3C40();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1001B3B70()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1001B3BA0()
{
  sub_1001B3B70();

  return swift_deallocClassInstance();
}

unint64_t sub_1001B3BDC()
{
  result = qword_100270B60;
  if (!qword_100270B60)
  {
    sub_10007BC70(&unk_100271830, &unk_1001F0A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270B60);
  }

  return result;
}

unint64_t sub_1001B3C40()
{
  result = qword_100271840;
  if (!qword_100271840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271840);
  }

  return result;
}

unint64_t sub_1001B3C94()
{
  result = qword_100271848;
  if (!qword_100271848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271848);
  }

  return result;
}

uint64_t sub_1001B3CE8(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v4 = a4 & (a3 != 0);
  if (!a1)
  {
    v4 = a4 & (a3 == 0);
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return (a1 == a3) & ~a4;
  }
}

id sub_1001B3D38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URLRequest();
  isa = 0;
  if (sub_100009F34(a1, 1, v6) != 1)
  {
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  v8 = [v3 initWithRequest:isa bag:a2];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t type metadata accessor for TreatmentsConfiguration.Area.Experiment(uint64_t a1)
{
  result = qword_1002718B0;
  if (!qword_1002718B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B3E90(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1001B3F3C(319);
    if (v2 <= 0x3F)
    {
      sub_1001B3FA0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001B3F3C(uint64_t a1)
{
  if (!qword_1002718C0)
  {
    sub_10007BC70(&qword_1002704A0, &unk_1001ECCF0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002718C0);
    }
  }
}

void sub_1001B3FA0()
{
  if (!qword_1002718D0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1002718D0);
    }
  }
}

unint64_t sub_1001B4000()
{
  result = qword_100271918;
  if (!qword_100271918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271918);
  }

  return result;
}

unint64_t sub_1001B4054()
{
  result = qword_100271928;
  if (!qword_100271928)
  {
    sub_10007BC70(&qword_100271920, &qword_1001F0CD8);
    sub_1001B40D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271928);
  }

  return result;
}

unint64_t sub_1001B40D8()
{
  result = qword_100271930;
  if (!qword_100271930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271930);
  }

  return result;
}

unint64_t sub_1001B412C()
{
  result = qword_100271940;
  if (!qword_100271940)
  {
    sub_10007BC70(&qword_100271938, &qword_1001F0CE0);
    sub_1001B41B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271940);
  }

  return result;
}

unint64_t sub_1001B41B0()
{
  result = qword_100271948;
  if (!qword_100271948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271948);
  }

  return result;
}

unint64_t sub_1001B4204()
{
  result = qword_100271958;
  if (!qword_100271958)
  {
    sub_10007BC70(&qword_100271950, &qword_1001F0CE8);
    sub_1001B4288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271958);
  }

  return result;
}

unint64_t sub_1001B4288()
{
  result = qword_100271960;
  if (!qword_100271960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271960);
  }

  return result;
}

unint64_t sub_1001B42DC()
{
  result = qword_100271970;
  if (!qword_100271970)
  {
    sub_10007BC70(&qword_100271920, &qword_1001F0CD8);
    sub_1001B4360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271970);
  }

  return result;
}

unint64_t sub_1001B4360()
{
  result = qword_100271978;
  if (!qword_100271978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271978);
  }

  return result;
}

unint64_t sub_1001B43B4()
{
  result = qword_100271980;
  if (!qword_100271980)
  {
    sub_10007BC70(&qword_100271938, &qword_1001F0CE0);
    sub_1001B4438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271980);
  }

  return result;
}

unint64_t sub_1001B4438()
{
  result = qword_100271988;
  if (!qword_100271988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271988);
  }

  return result;
}

unint64_t sub_1001B448C()
{
  result = qword_100271990;
  if (!qword_100271990)
  {
    sub_10007BC70(&qword_100271950, &qword_1001F0CE8);
    sub_1001B4510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271990);
  }

  return result;
}

unint64_t sub_1001B4510()
{
  result = qword_100271998;
  if (!qword_100271998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271998);
  }

  return result;
}

unint64_t sub_1001B4564()
{
  result = qword_1002719A8;
  if (!qword_1002719A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719A8);
  }

  return result;
}

unint64_t sub_1001B45B8()
{
  result = qword_1002719C8;
  if (!qword_1002719C8)
  {
    sub_10007BC70(&qword_1002719C0, &qword_1001F0D00);
    sub_1001B463C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719C8);
  }

  return result;
}

unint64_t sub_1001B463C()
{
  result = qword_1002719D0;
  if (!qword_1002719D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719D0);
  }

  return result;
}

uint64_t sub_1001B4690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TreatmentsConfiguration.Area.Experiment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B46F4(uint64_t a1)
{
  v2 = type metadata accessor for TreatmentsConfiguration.Area.Experiment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001B4750(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    sub_10007BC70(&qword_1002704A0, &unk_1001ECCF0);
    sub_1000087E4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001B47B4()
{
  result = qword_1002719F0;
  if (!qword_1002719F0)
  {
    sub_10007BC70(&qword_1002719C0, &qword_1001F0D00);
    sub_1001B4838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719F0);
  }

  return result;
}

unint64_t sub_1001B4838()
{
  result = qword_1002719F8;
  if (!qword_1002719F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719F8);
  }

  return result;
}

unint64_t sub_1001B488C()
{
  result = qword_100271A08;
  if (!qword_100271A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A08);
  }

  return result;
}

unint64_t sub_1001B48E0(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    sub_10007BC70(&qword_10026BC50, &unk_1001E9720);
    sub_1000087E4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001B4944(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    v4 = v3;
    sub_10007BC70(&qword_100271A10, &unk_1001F0D18);
    sub_1001B48E0(v4);
    sub_1000087E4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1001B4A08(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001B4A48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B4A98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1001B4AD8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1001B4B48()
{
  result = qword_100271A48;
  if (!qword_100271A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A48);
  }

  return result;
}

unint64_t sub_1001B4BA0()
{
  result = qword_100271A50;
  if (!qword_100271A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A50);
  }

  return result;
}

unint64_t sub_1001B4BF8()
{
  result = qword_100271A58;
  if (!qword_100271A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A58);
  }

  return result;
}

unint64_t sub_1001B4C50()
{
  result = qword_100271A60;
  if (!qword_100271A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A60);
  }

  return result;
}

unint64_t sub_1001B4CA8()
{
  result = qword_100271A68;
  if (!qword_100271A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A68);
  }

  return result;
}

unint64_t sub_1001B4D00()
{
  result = qword_100271A70;
  if (!qword_100271A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A70);
  }

  return result;
}

unint64_t sub_1001B4D58()
{
  result = qword_100271A78;
  if (!qword_100271A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A78);
  }

  return result;
}

unint64_t sub_1001B4DB0()
{
  result = qword_100271A80;
  if (!qword_100271A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A80);
  }

  return result;
}

unint64_t sub_1001B4E08()
{
  result = qword_100271A88;
  if (!qword_100271A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A88);
  }

  return result;
}

unint64_t sub_1001B4E5C()
{
  result = qword_100271A98;
  if (!qword_100271A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A98);
  }

  return result;
}

unint64_t sub_1001B4EB0(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    v4 = v3;
    sub_10007BC70(&qword_100271AA0, &qword_1001F1258);
    sub_1001B50A8(v4);
    sub_1000087E4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001B4F44()
{
  result = qword_100271AB8;
  if (!qword_100271AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271AB8);
  }

  return result;
}

unint64_t sub_1001B5000()
{
  result = qword_100271AC8;
  if (!qword_100271AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271AC8);
  }

  return result;
}

unint64_t sub_1001B5054()
{
  result = qword_100271AD8;
  if (!qword_100271AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271AD8);
  }

  return result;
}

unint64_t sub_1001B50A8(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001B50EC()
{
  result = qword_100271AF8;
  if (!qword_100271AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271AF8);
  }

  return result;
}

unint64_t sub_1001B5140()
{
  result = qword_100271B18;
  if (!qword_100271B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B18);
  }

  return result;
}

uint64_t sub_1001B5194(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10000A7A8(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_10000A7A8((*a1 | (v4 << 8)) - 3);
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

      return sub_10000A7A8((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10000A7A8((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10000A7A8(v8);
}

_BYTE *sub_1001B5218(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1000240B4(result, v6);
        break;
      case 2:
        result = sub_100015C68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100018130(result, v6);
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
          result = sub_1000068E0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001B52F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10000A7A8(-1);
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
      return sub_10000A7A8((*a1 | (v4 << 8)) - 2);
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

      return sub_10000A7A8((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10000A7A8((*a1 | (v4 << 8)) - 2);
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

  return sub_10000A7A8(v8);
}

_BYTE *sub_1001B5378(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1000240B4(result, v6);
        break;
      case 2:
        result = sub_100015C68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100018130(result, v6);
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
          result = sub_1000068E0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001B5444(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10000A7A8(-1);
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
      return sub_10000A7A8((*a1 | (v4 << 8)) - 5);
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

      return sub_10000A7A8((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10000A7A8((*a1 | (v4 << 8)) - 5);
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

  return sub_10000A7A8(v8);
}

_BYTE *sub_1001B54C8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1000240B4(result, v6);
        break;
      case 2:
        result = sub_100015C68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100018130(result, v6);
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
          result = sub_1000068E0(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001B5598()
{
  result = qword_100271B28;
  if (!qword_100271B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B28);
  }

  return result;
}

unint64_t sub_1001B55F0()
{
  result = qword_100271B30;
  if (!qword_100271B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B30);
  }

  return result;
}

unint64_t sub_1001B5648()
{
  result = qword_100271B38;
  if (!qword_100271B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B38);
  }

  return result;
}

unint64_t sub_1001B56A0()
{
  result = qword_100271B40;
  if (!qword_100271B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B40);
  }

  return result;
}

unint64_t sub_1001B56F8()
{
  result = qword_100271B48;
  if (!qword_100271B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B48);
  }

  return result;
}

unint64_t sub_1001B5750()
{
  result = qword_100271B50;
  if (!qword_100271B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B50);
  }

  return result;
}

unint64_t sub_1001B57A8()
{
  result = qword_100271B58;
  if (!qword_100271B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B58);
  }

  return result;
}

unint64_t sub_1001B5800()
{
  result = qword_100271B60;
  if (!qword_100271B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B60);
  }

  return result;
}

unint64_t sub_1001B5858()
{
  result = qword_100271B68;
  if (!qword_100271B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B68);
  }

  return result;
}

unint64_t sub_1001B58B0()
{
  result = qword_100271B70;
  if (!qword_100271B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B70);
  }

  return result;
}

unint64_t sub_1001B5908()
{
  result = qword_100271B78;
  if (!qword_100271B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B78);
  }

  return result;
}

unint64_t sub_1001B5960()
{
  result = qword_100271B80;
  if (!qword_100271B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B80);
  }

  return result;
}

uint64_t sub_1001B59E8(uint64_t a1)
{
  *(v1 + 16) = xmmword_1001F1760;
  *(v1 + 32) = 0xFFFFFFFFFFFFLL;
  *(v1 + 40) = a1 & 0xFFFFFFFFFFFFLL ^ 0x5DEECE66DLL;
  return v1;
}

unint64_t sub_1001B5A18(uint64_t a1)
{
  v2 = 0x5DEECE66DLL;
  v3 = 0x5DEECE66DLL * *(v1 + 40);
  v4 = __OFADD__(v3, 11);
  v5 = v3 + 11;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 &= 0xFFFFFFFFFFFFuLL;
  *(v1 + 40) = v5;
  v2 = 48 - a1;
  if (__OFSUB__(48, a1))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((-17 - a1) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = v5 >> v2;
    if (v2 == 64)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

LABEL_11:
  if (v2 == -64)
  {
    return 0;
  }

  return v5 << -v2;
}

uint64_t sub_1001B5A8C(uint64_t a1)
{
  result = sub_1001B5A18(31);
  v3 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = result;
  if ((v3 & a1) != 0)
  {
    if (!a1)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (result == 0x8000000000000000 && a1 == -1)
    {
      goto LABEL_30;
    }

    result %= a1;
    v6 = __OFSUB__(v4, v4 % a1);
    v7 = v4 - v4 % a1;
    if (v6)
    {
      goto LABEL_27;
    }

    v6 = __OFADD__(v7, v3);
    v8 = v7 + v3;
    if (v6)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v8 < 0)
    {
      while (1)
      {
        result = sub_1001B5A18(31);
        if (result == 0x8000000000000000 && a1 == -1)
        {
          break;
        }

        v10 = result;
        result %= a1;
        v6 = __OFSUB__(v10, result);
        v11 = v10 - result;
        if (v6)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          break;
        }

        v6 = __OFADD__(v11, v3);
        v12 = v11 + v3;
        if (v6)
        {
          goto LABEL_23;
        }

        if ((v12 & 0x8000000000000000) == 0)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  else
  {
    if ((a1 * result) >> 64 != (a1 * result) >> 63)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    return (a1 * result) >> 31;
  }

  return result;
}

uint64_t sub_1001B5BA8()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100002DEC();
  v6 = v5 - v4;
  sub_100004AA0();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  sub_100004AA0();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v26 = (v9 + 16);
  v10 = dispatch_semaphore_create(0);
  sub_100007A3C();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v7;
  v11[4] = v10;
  v12 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v2 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v0);

  v29[6] = v7;

  v27 = v10;
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v6, v0);
  v29[3] = v12;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v13;
  sub_100002FB8();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1001B826C;
  *(v14 + 24) = v11;
  v15 = objc_allocWithZone(NSLock);
  v16 = v13;

  v17 = [v15 init];
  sub_100002FB8();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v14;
  sub_100002FB8();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v14;
  v20 = v17;
  swift_retain_n();
  v21 = v20;
  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v29);
  OS_dispatch_semaphore.wait()();
  sub_10000602C(v8, v29);
  v22 = *v8;
  if (*v8)
  {
  }

  else
  {
    sub_10000602C(v26, v28);
    v22 = *v26;
    if (!*v26)
    {
      v23 = sub_100007D90();
      sub_100004810();
      v24 = String._bridgeToObjectiveC()();
      sub_10000ADA4(v24);

      v22 = 0;
    }

    swift_willThrow();
    swift_errorRetain();
  }

  return v22;
}

void sub_1001B5F34(_OWORD *a1@<X8>)
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002DEC();
  v7 = v6 - v5;
  v8 = swift_allocObject();
  *(v8 + 32) = 0u;
  *(v8 + 16) = 0u;
  sub_100004AA0();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v25 = (v9 + 16);
  v10 = dispatch_semaphore_create(0);
  sub_100007A3C();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v8;
  v11[4] = v10;
  v12 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v7, enum case for DispatchQoS.QoSClass.default(_:), v1);
  v32 = v9;

  v27 = v10;
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v7, v1);
  *(&v30 + 1) = v12;
  v31 = &protocol witness table for OS_dispatch_queue;
  *&v29 = v13;
  sub_100002FB8();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1001B8280;
  *(v14 + 24) = v11;
  v15 = objc_allocWithZone(NSLock);
  v16 = v13;

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
  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(&v29);
  OS_dispatch_semaphore.wait()();
  sub_10000602C(v8 + 16, v28);
  sub_1000E0BFC(v8 + 16, &v29, &qword_10026C928, &unk_1001EBE08);
  if (*(&v30 + 1))
  {

    v22 = v30;
    *a1 = v29;
    a1[1] = v22;
  }

  else
  {
    sub_10000A00C(&v29, &qword_10026C928, &unk_1001EBE08);
    sub_10000602C(v25, &v29);
    if (!*v25)
    {
      v23 = sub_100007D90();
      sub_100004810();
      v24 = String._bridgeToObjectiveC()();
      sub_10000ADA4(v24);
    }

    swift_willThrow();
    swift_errorRetain();
  }
}

void sub_1001B6300()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  *(v4 + 16) = 1;
  v5 = (v4 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v23 = (v6 + 16);
  v7 = dispatch_semaphore_create(0);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v4;
  v8[4] = v7;
  v9 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v1 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v0);

  v25[6] = v4;

  v24 = v7;
  v10 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v3, v0);
  v25[3] = v9;
  v25[4] = &protocol witness table for OS_dispatch_queue;
  v25[0] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1001B8250;
  *(v11 + 24) = v8;
  v12 = objc_allocWithZone(NSLock);
  v13 = v10;

  v14 = [v12 init];
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v11;
  v17 = v14;
  swift_retain_n();
  v18 = v17;
  Promise.then(perform:orCatchError:on:)();

  v19 = v24;

  sub_100002C00(v25);
  OS_dispatch_semaphore.wait()();
  swift_beginAccess();
  if (*v5)
  {
    v20 = v23;
    swift_beginAccess();
    if (!*v20)
    {
      v21 = String._bridgeToObjectiveC()();
      v22 = String._bridgeToObjectiveC()();
      AMSError();
    }

    swift_willThrow();
    swift_errorRetain();
  }

  else
  {
  }
}

Swift::Int sub_1001B66F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  *(a3 + 16) = a2;
  swift_errorRetain();

  swift_beginAccess();
  *(a4 + 16) = a1;

  return OS_dispatch_semaphore.signal()();
}

Swift::Int sub_1001B679C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  *(a3 + 16) = a2;
  swift_errorRetain();

  swift_beginAccess();
  sub_1001B82C8(a1, a4 + 16);
  return OS_dispatch_semaphore.signal()();
}

Swift::Int sub_1001B6834(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  *(a3 + 16) = a2;
  swift_errorRetain();

  swift_beginAccess();
  *(a4 + 16) = a1 & 1;
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_1001B68C8()
{
  type metadata accessor for Treatment(0);
  sub_10001ECE0();
  return StringProtocol.hash.getter();
}

uint64_t sub_1001B691C(uint64_t a1)
{
  type metadata accessor for Treatment(0);

  return String.hash(into:)();
}

uint64_t sub_1001B6964(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Treatment(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v5 == *v7 && v6 == v7[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

Swift::Int sub_1001B6A08(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001B6A58(uint64_t a1, uint64_t a2)
{
  v4 = URL.path.getter();
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  type metadata accessor for SQLDatabase();
  swift_allocObject();

  return SQLDatabase.init(path:readonly:fileProtection:schemaBlock:corruptionBlock:)(v4, v6, 0, 0, sub_10001B2A0, v7, sub_1001B821C, a1);
}

uint64_t sub_1001B6B28()
{
  sub_1001B6B6C();
  sub_1001B6300();
}

uint64_t sub_1001B6B6C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v20 = v1;
  __chkstk_darwin(v2);
  sub_100002DEC();
  v5 = v4 - v3;
  v19 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100002DEC();
  v11 = v10 - v9;
  sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
  v12 = Promise.__allocating_init()();
  v13 = URL.path.getter();
  v15 = v14;
  sub_100007A3C();
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v15;
  v16[4] = v12;
  aBlock[4] = sub_1001B8210;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100253280;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10003B11C(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v20 + 8))(v5, v0);
  (*(v7 + 8))(v11, v19);

  return v12;
}

uint64_t sub_1001B6E40()
{
  type metadata accessor for SQLDatabase();
  static SQLDatabase.removeDatabase(path:)();
  return Promise.resolve(_:)();
}

uint64_t sub_1001B6F6C()
{
  sub_100019DE0();
  sub_100017C14();
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F70;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  v5 = sub_10000827C(inited);
  *(v5 + 56) = v1;
  *(v5 + 64) = v0;
  *(v5 + 72) = v6;

  sub_10000C4CC(61, 0x8000000100203A10);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_1001B706C(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v4;
  v9 = *(result + 16);
  v10 = (result + 40);
  if (v9)
  {
    while (1)
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      a4(v11, v12, a2, a3);
      if (v6)
      {
        break;
      }

      v10 += 2;
      if (!--v9)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1001B710C()
{
  sub_100019DE0();
  sub_100017C14();
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F70;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  v5 = sub_10000827C(inited);
  *(v5 + 56) = v1;
  *(v5 + 64) = v0;
  *(v5 + 72) = v6;

  sub_10000C4CC(53, 0x80000001002039D0);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_1001B71E0(uint64_t a1)
{
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  sub_100007784();
  v2._countAndFlagsBits = 0x7361657261;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 10272;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x6C62616568636163;
  v4._object = 0xE900000000000065;
  String.append(_:)(v4);
  sub_1000062F0();
  v5._countAndFlagsBits = sub_100004B94();
  v5._object = (v6 + 1020);
  String.append(_:)(v5);
  sub_1000062F0();
  v7._countAndFlagsBits = 1953259891;
  v7._object = 0xE400000000000000;
  String.append(_:)(v7);
  sub_1000062F0();
  v8._object = 0x8000000100203990;
  v8._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v8);
  sub_1000062F0();
  v9._countAndFlagsBits = 0x616D6F4464656573;
  v9._object = 0xEA00000000006E69;
  String.append(_:)(v9);
  sub_1000062F0();
  v10._countAndFlagsBits = 0x6570795464656573;
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000016;
  v11._object = 0x80000001002039B0;
  String.append(_:)(v11);
  sub_100017C14();
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ED060;
  *(inited + 32) = *a1 & 1;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  v13 = *(a1 + 16);
  *(inited + 56) = *(a1 + 8);
  *(inited + 64) = v13;
  *(inited + 72) = 3;
  v28 = *(a1 + 24);
  v15 = *(&v28 + 1);
  v14 = v28;
  if (*(&v28 + 1))
  {
    v16 = 3;
  }

  else
  {
    v14 = 0;
    v16 = 4;
  }

  *(inited + 80) = v14;
  *(inited + 88) = v15;
  *(inited + 96) = v16;
  v27 = *(a1 + 40);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v22 = *(&v27 + 1);
  v21 = v27;
  if (*(&v27 + 1))
  {
    v23 = 3;
  }

  else
  {
    v21 = 0;
    v23 = 4;
  }

  *(inited + 104) = v21;
  *(inited + 112) = v22;
  *(inited + 120) = v23;
  *(inited + 128) = v17;
  *(inited + 136) = v18;
  *(inited + 144) = 3;
  *(inited + 152) = v19;
  *(inited + 160) = v20;
  *(inited + 168) = 3;

  sub_1000E0BFC(&v28, v26, &unk_10026CD20, &unk_1001E7CC0);
  sub_1000E0BFC(&v27, v26, &unk_10026CD20, &unk_1001E7CC0);

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  SQLDatabase.execute(sql:parameters:)(v24, inited);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_1001B7478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  _StringGuts.grow(_:)(67);
  sub_100007784();
  v11._countAndFlagsBits = 0x6E656D7461657274;
  v11._object = 0xEA00000000007374;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 10272;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = sub_100012E04();
  String.append(_:)(v13);
  sub_1000062F0();
  v14._countAndFlagsBits = 0x614D74656B637562;
  v14._object = 0xE900000000000078;
  String.append(_:)(v14);
  sub_1000062F0();
  v15._countAndFlagsBits = 0x694D74656B637562;
  v15._object = 0xE90000000000006ELL;
  String.append(_:)(v15);
  sub_1000062F0();
  v16._countAndFlagsBits = 0x65746144646E65;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  sub_1000062F0();
  v17._countAndFlagsBits = sub_100004B94();
  v17._object = 0xEA00000000007265;
  String.append(_:)(v17);
  sub_1000062F0();
  v18._countAndFlagsBits = 0x7461447472617473;
  v18._object = 0xE900000000000065;
  String.append(_:)(v18);
  sub_1000062F0();
  v19._countAndFlagsBits = 0x6F726665726F7473;
  v19._object = 0xEA0000000000746ELL;
  String.append(_:)(v19);
  sub_100004810();
  v20._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v20);
  sub_100017C14();
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001EF2A0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = 3;
  *(inited + 56) = a4;
  *(inited + 64) = 0;
  *(inited + 72) = 1;
  *(inited + 80) = a5;
  *(inited + 88) = 0;
  *(inited + 96) = 1;

  Date.timeIntervalSinceReferenceDate.getter();
  *(inited + 104) = v22;
  *(inited + 112) = 0;
  *(inited + 120) = 2;
  v23 = (a1 + *(type metadata accessor for Treatment(0) + 20));
  v25 = *v23;
  v24 = v23[1];
  *(inited + 128) = v25;
  *(inited + 136) = v24;
  *(inited + 144) = 3;

  Date.timeIntervalSinceReferenceDate.getter();
  *(inited + 152) = v26;
  *(inited + 160) = 0;
  *(inited + 168) = 2;
  v27 = a6;
  if (a7)
  {
    v28 = 3;
  }

  else
  {
    v27 = 0;
    v28 = 4;
  }

  *(inited + 176) = v27;
  *(inited + 184) = a7;
  *(inited + 192) = v28;

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  SQLDatabase.execute(sql:parameters:)(v29, inited);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_1001B7710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a7;
  v53 = a6;
  v60 = a5;
  v55 = a2;
  v54 = a1;
  v9 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v53 - v13;
  v15 = type metadata accessor for Date();
  sub_100002CC4();
  v17 = v16;
  v19 = __chkstk_darwin(v18);
  v57 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v53 - v21;
  v62._countAndFlagsBits = 0xD000000000000036;
  v62._object = 0x8000000100203860;
  sub_100005B08(a4);
  if (!v23)
  {
    sub_100004810();
    v24._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v24);
  }

  sub_100005B08(v60);
  if (!v23)
  {
    v25._countAndFlagsBits = 0xD000000000000015;
    v25._object = 0x8000000100203930;
    String.append(_:)(v25);
  }

  v26 = "tDate FROM treatments WHERE (";
  if (v61)
  {
    v27 = 0xD00000000000002FLL;
  }

  else
  {
    v26 = ") AND (bucketMin <= ?)";
    v27 = 0xD000000000000019;
  }

  v28 = v26 | 0x8000000000000000;
  String.append(_:)(*&v27);
  v63 = 0;
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v63 = 0xD00000000000003DLL;
  v64 = 0x80000001002038C0;
  String.append(_:)(v62);

  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v56 = v63;
  v58 = v64;
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F60;
  v31 = v55;
  *(inited + 32) = v54;
  *(inited + 40) = v31;
  v32 = sub_10000827C(inited);
  *(v32 + 56) = a3;
  *(v32 + 64) = 0;
  *(v32 + 72) = 1;
  *(v32 + 80) = a3;
  *(v32 + 88) = 0;
  *(v32 + 96) = 1;
  sub_1000E0BFC(a4, v14, &unk_100271EA0, &qword_1001E77F0);
  sub_100005B08(v14);
  if (v23)
  {

    sub_10000A00C(v14, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    (*(v17 + 32))(v22, v14, v15);

    Date.timeIntervalSinceReferenceDate.getter();
    v34 = v33;
    sub_1000D5584();
    inited = v35;
    (*(v17 + 8))(v22, v15);
    *(inited + 16) = 4;
    *(inited + 104) = v34;
    *(inited + 112) = 0;
    *(inited + 120) = 2;
  }

  sub_1000E0BFC(v60, v12, &unk_100271EA0, &qword_1001E77F0);
  sub_100005B08(v12);
  if (v23)
  {
    sub_10000A00C(v12, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    (*(v17 + 32))(v57, v12, v15);
    Date.timeIntervalSinceReferenceDate.getter();
    v37 = v36;
    v38 = *(inited + 16);
    if (v38 >= *(inited + 24) >> 1)
    {
      sub_1000049F4();
      inited = v52;
    }

    (*(v17 + 8))(v57, v15);
    *(inited + 16) = v38 + 1;
    v39 = inited + 24 * v38;
    *(v39 + 32) = v37;
    *(v39 + 40) = 0;
    *(v39 + 48) = 2;
  }

  v40 = v61;
  v41 = v58;
  if (v61)
  {
    v43 = *(inited + 16);
    v42 = *(inited + 24);

    if (v43 >= v42 >> 1)
    {
      sub_1000049F4();
      inited = v51;
    }

    *(inited + 16) = v43 + 1;
    v44 = inited + 24 * v43;
    *(v44 + 32) = v53;
    *(v44 + 40) = v40;
    *(v44 + 48) = 3;
  }

  sub_100004AA0();
  v45 = swift_allocObject();
  *(v45 + 16) = &_swiftEmptySetSingleton;
  v46 = sub_100017C14();
  v47 = __chkstk_darwin(v46);
  v48 = v56;
  *(&v53 - 6) = v47;
  *(&v53 - 5) = v48;
  *(&v53 - 4) = v41;
  *(&v53 - 3) = inited;
  *(&v53 - 2) = sub_1001B80DC;
  *(&v53 - 1) = v45;
  v49 = v59;
  sub_100014A20(sub_100014F50, (&v53 - 8));

  if (v49)
  {
  }

  else
  {

    sub_10000602C(v45 + 16, &v63);
    inited = *(v45 + 16);
  }

  return inited;
}

uint64_t sub_1001B7D34(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Treatment(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  sub_100041D2C(0x65746144646E65, 0xE700000000000000);
  if (!v2)
  {
    if (v12)
    {
      sub_1001B80FC();
      swift_allocError();
      v14 = xmmword_1001F17D0;
    }

    else
    {
      v15 = sub_10001ADD4(0x696669746E656469, 0xEA00000000007265);
      v18 = v16;
      if (v16)
      {
        v21 = v15;
        sub_100041D2C(0x7461447472617473, 0xE900000000000065);
        if ((v19 & 1) == 0)
        {
          Date.init(timeIntervalSinceReferenceDate:)();
          Date.init(timeIntervalSinceReferenceDate:)();
          v20 = &v11[*(v3 + 20)];
          *v20 = v21;
          *(v20 + 1) = v18;
          sub_1001B8150(v11, v6);
          swift_beginAccess();
          sub_1001C5E58();
          swift_endAccess();
          sub_1001B81B4(v9);
          sub_1001B81B4(v11);
          return 1;
        }

        sub_1001B80FC();
        swift_allocError();
        v14 = xmmword_1001F17B0;
      }

      else
      {
        sub_1001B80FC();
        swift_allocError();
        v14 = xmmword_1001F17C0;
      }
    }

    *v13 = v14;
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_1001B7FCC()
{

  v1 = OBJC_IVAR____TtC14amsengagementd17TreatmentsStorage_storageURL;
  type metadata accessor for URL();
  sub_100002DDC();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1001B8034()
{
  sub_1001B7FCC();

  return swift_deallocClassInstance();
}

unint64_t sub_1001B80FC()
{
  result = qword_100271DC8;
  if (!qword_100271DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271DC8);
  }

  return result;
}

uint64_t sub_1001B8150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Treatment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B81B4(uint64_t a1)
{
  v2 = type metadata accessor for Treatment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B828C()
{
  if (*(v0 + 16))
  {
  }

  sub_100002FB8();

  return _swift_deallocObject(v1);
}

uint64_t sub_1001B82C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026C928, &unk_1001EBE08);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B8338(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B8388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1001B83DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1001B83F4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001B8464(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001B8710()
{
  sub_100004768();
  v1[20] = v2;
  v1[21] = v0;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v3);
  v1[22] = sub_100023C0C();
  v4 = sub_1000047B0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001B8788(__n128 a1)
{
  v2 = AMSSetLogKeyIfNeeded();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v1 + 184) = v3;
  *(v1 + 192) = v5;
  if (qword_100268738 != -1)
  {
    sub_100004E84(&qword_100268738);
  }

  v6 = *(v1 + 168);
  v17 = *(v1 + 160);
  *(v1 + 200) = qword_100287898;
  *(v1 + 208) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v7);
  *(v1 + 216) = *(v8 + 72);
  *(v1 + 256) = *(v9 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001E5F70;
  v11 = type metadata accessor for TreatmentStoreService();
  *(v1 + 224) = v11;
  *(v1 + 40) = v11;
  *(v1 + 16) = v6;

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00((v1 + 16));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v12._countAndFlagsBits = 0xD000000000000027;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  *(v1 + 72) = &type metadata for Int;
  *(v1 + 48) = v17;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(v1 + 48, &qword_10026D350, &qword_1001E6050);
  sub_100012FBC();
  LogInterpolation.init(stringInterpolation:)();
  v13 = static os_log_type_t.info.getter();
  sub_1000036B0(v13, v10);

  *(v1 + 232) = sub_100015E2C();
  sub_1000058A4(&dword_1001EBD70);
  v18 = v14;
  v15 = swift_task_alloc();
  *(v1 + 240) = v15;
  *v15 = v1;
  sub_10001CC4C(v15);

  return v18();
}

uint64_t sub_1001B8A04()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
    v7 = *(v3 + 168);
    v8 = sub_1001B8B84;
  }

  else
  {
    v9 = *(v3 + 168);

    v8 = sub_1001B8B20;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1001B8B20()
{
  sub_100004768();

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_1001B8D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v20 = *(v12 - 8);
  v21 = v12;
  __chkstk_darwin(v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
  v15 = Promise.__allocating_init()();
  v19[1] = *(v4 + 16);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  aBlock[4] = sub_1001BF158;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100253DF8;
  v17 = _Block_copy(aBlock);

  sub_100017E54(a3, a4);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100005E08(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_100006070(&qword_10026CD50, &unk_100270490, &unk_1001E74F0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v20 + 8))(v14, v21);

  return v15;
}

uint64_t sub_1001B90A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v20 = *(v12 - 8);
  v21 = v12;
  __chkstk_darwin(v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_100271F08, &qword_1001F1B08);
  v15 = Promise.__allocating_init()();
  v19[1] = *(v4 + 16);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  aBlock[4] = sub_100017CB4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100253B00;
  v17 = _Block_copy(aBlock);

  sub_100017E54(a3, a4);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100005E08(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_100006070(&qword_10026CD50, &unk_100270490, &unk_1001E74F0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v20 + 8))(v14, v21);

  return v15;
}

uint64_t sub_1001B93CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v20 = *(v12 - 8);
  v21 = v12;
  __chkstk_darwin(v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_100271EF0, &qword_1001F1AE0);
  v15 = Promise.__allocating_init()();
  v19[1] = *(v4 + 16);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  aBlock[4] = sub_1001BEDC4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_1002539C0;
  v17 = _Block_copy(aBlock);

  sub_100017E54(a3, a4);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100005E08(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_100006070(&qword_10026CD50, &unk_100270490, &unk_1001E74F0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v20 + 8))(v14, v21);

  return v15;
}

uint64_t sub_1001B96F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v20 = *(v12 - 8);
  v21 = v12;
  __chkstk_darwin(v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_100271EB8, &qword_1001F1AA8);
  v15 = Promise.__allocating_init()();
  v19[1] = *(v4 + 16);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  aBlock[4] = sub_100040170;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100253858;
  v17 = _Block_copy(aBlock);

  sub_100017E54(a3, a4);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100005E08(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_100006070(&qword_10026CD50, &unk_100270490, &unk_1001E74F0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v20 + 8))(v14, v21);

  return v15;
}

uint64_t sub_1001B9A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_100017C14();

  sub_1000179B4(v5, v5);
  sub_1000170D4();

  a3(a1);
  Promise.resolve(_:)();
  swift_retain_n();
  sub_10001C50C();
}

uint64_t sub_1001B9D5C(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  sub_100017C14();

  sub_1000179B4(v5, v5);
  sub_1000170D4();

  a3(v7, a1);
  Promise.resolve(_:)();

  swift_retain_n();
  sub_10001C50C();
}

NSString sub_1001BA154()
{
  result = String._bridgeToObjectiveC()();
  qword_100287938 = result;
  return result;
}

NSString sub_1001BA18C()
{
  result = String._bridgeToObjectiveC()();
  qword_100287940 = result;
  return result;
}

id sub_1001BA1CC@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v65 = a4;
  v60 = a2;
  v61 = a3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v45 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v45 - v16;
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  v20 = *a1;
  if (qword_100268688 != -1)
  {
    swift_once();
  }

  v21 = qword_1002877E0;
  result = [qword_1002877E0 dateFromString:v20];
  if (result)
  {
    v23 = result;
    v53 = v14;
    v54 = v21;
    v58 = a5;
    v59 = v5;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = v9;
    v51 = *(v9 + 32);
    v51(v19, v17, v8);
    v24 = v19;
    if (qword_100268738 != -1)
    {
      swift_once();
    }

    v25 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v26 = *(type metadata accessor for LogInterpolation() - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v50 = v25;
    v48 = v28 + 2 * v27;
    v29 = swift_allocObject();
    v47 = xmmword_1001E5F70;
    *(v29 + 16) = xmmword_1001E5F70;
    v49 = v28;
    v46 = type metadata accessor for TreatmentStoreService();
    v64 = v46;
    v62 = v60;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v62);
    v62 = 0;
    v63 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v62 = 0xD000000000000017;
    v63 = 0x8000000100204000;
    v30 = sub_100005E08(&unk_100271F70, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v56 = v24;
    v45 = v30;
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v64 = &type metadata for String;
    v52 = v27;
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v62, &qword_10026D350, &qword_1001E6050);
    v32 = static os_log_type_t.debug.getter();
    sub_1000036B0(v32, v29);

    v33 = [objc_opt_self() standardUserDefaults];
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 stringForKey:v34];

    if (v35 && (v36 = [v54 dateFromString:v35], v35, v36))
    {
      v37 = v55;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = v53;
      v51(v53, v37, v8);
      v39 = swift_allocObject();
      *(v39 + 16) = v47;
      v64 = v46;
      v62 = v60;

      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(&v62);
      v62 = 0;
      v63 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v62 = 0xD00000000000001BLL;
      v63 = 0x8000000100204020;
      v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v40);

      v64 = &type metadata for String;
      static LogInterpolation.safe(_:)();
      sub_10000A00C(&v62, &qword_10026D350, &qword_1001E6050);
      v41 = static os_log_type_t.debug.getter();
      sub_1000036B0(v41, v39);

      v42 = v56;
      LOBYTE(v39) = static Date.> infix(_:_:)();
      v43 = *(v57 + 8);
      v43(v38, v8);
      result = (v43)(v42, v8);
      v44 = v39 & 1;
    }

    else
    {
      result = (*(v57 + 8))(v56, v8);
      v44 = 1;
    }

    a5 = v58;
  }

  else
  {
    v44 = 0;
  }

  *a5 = v44;
  return result;
}

uint64_t sub_1001BA7F4()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  v121 = v2;
  __chkstk_darwin(v3);
  sub_100002DEC();
  v6 = v5 - v4;
  v7 = type metadata accessor for OSSignpostID();
  sub_100002CC4();
  v122 = v8;
  v10 = __chkstk_darwin(v9);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v106 - v13;
  v15 = type metadata accessor for OSSignposter();
  sub_100002CC4();
  v124 = v16;
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v19);
  v21 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v123 = &v106 - v22;
  type metadata accessor for Date();
  sub_100002CC4();
  v24 = __chkstk_darwin(v23);
  v26 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v125 = v0;
  v30 = *(v0 + 208);
  if (v30)
  {
  }

  else
  {
    v112 = &v106 - v28;
    v118 = v12;
    v119 = v14;
    v114 = v18;
    v115 = v6;
    v116 = v1;
    v120 = v15;
    if (qword_100268688 != -1)
    {
      v104 = v27;
      v105 = v29;
      swift_once();
      v29 = v105;
      v27 = v104;
    }

    v31 = v29;
    v32 = v27;
    v117 = qword_1002877E0;
    v33 = *(v125 + 160);
    v113 = v7;
    v34 = v122;
    v36 = v118;
    v35 = v119;
    v37 = v21;
    if ((v33 & 1) == 0)
    {
      v38 = *(v125 + 152);
      v39 = [objc_opt_self() standardUserDefaults];
      v40 = String._bridgeToObjectiveC()();
      v41 = [v39 stringForKey:v40];

      v36 = v118;
      v35 = v119;
      if (v41)
      {
        v42 = [v117 dateFromString:v41];

        if (v42)
        {
          v43 = v112;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          Date.timeIntervalSinceNow.getter();
          if (fabs(v44) < v38)
          {
            sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
            v45 = String._bridgeToObjectiveC()();
            v46 = String._bridgeToObjectiveC()();
            v47 = AMSError();

            v30 = Promise.__allocating_init(error:)();
            (*(v31 + 8))(v43, v32);
            return v30;
          }

          (*(v31 + 8))(v43, v32);
        }
      }
    }

    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v31 + 8))(v26, v32);
    v49 = [v117 stringFromDate:isa];

    if (!v49)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = String._bridgeToObjectiveC()();
    }

    v50 = [objc_opt_self() standardUserDefaults];
    v51 = String._bridgeToObjectiveC()();
    [v50 setObject:v49 forKey:v51];

    if (qword_100268738 != -1)
    {
      sub_100004E84(&qword_100268738);
    }

    v52 = v37;
    v53 = *(qword_100287898 + 16);
    OSSignposter.init(logHandle:)();
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v54 = OSSignposter.logHandle.getter();
    v55 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      v57 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, v55, v57, "TreatmentStoreService", "Synchronizing treatments", v56, 2u);
      v34 = v122;
    }

    v58 = v113;
    (*(v34 + 16))(v36, v35, v113);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v122 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v34 + 8))(v35, v58);
    v59 = AMSSetLogKeyIfNeeded();
    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v62 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v62);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1001E5F70;
    v127 = type metadata accessor for TreatmentStoreService();
    v64 = v125;
    v126[0] = v125;

    v118 = v61;

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v126);
    LogInterpolation.init(stringLiteral:)();
    v65 = static os_log_type_t.default.getter();
    sub_1000036B0(v65, v63);

    sub_1001B3524();
    sub_100003EFC();
    v127 = type metadata accessor for SyncTaskScheduler();
    v128 = &protocol witness table for SyncTaskScheduler;
    sub_100017E64(v126);
    sub_100011624();

    SyncTaskScheduler.init()();
    sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
    sub_1000070D4();
    sub_100006070(v66, &qword_100271F20, &qword_1001EBE90, v67);
    v106 = Promise.flatMap<A>(on:_:)();

    sub_100002C00(v126);
    v68 = v124;
    v69 = *(v124 + 16);
    v113 = v124 + 16;
    v117 = v69;
    v70 = v37;
    v107 = v37;
    v71 = v123;
    v72 = v120;
    (v69)(v70, v123, v120);
    v73 = *(v68 + 80);
    v74 = v68;
    v112 = v73;
    v75 = (v73 + 16) & ~v73;
    v109 = v75;
    v76 = (v114 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v111 = v76;
    v110 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
    v77 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    v108 = *(v74 + 32);
    v114 = v74 + 32;
    v108(v78 + v75, v52, v72);
    *(v78 + v76) = v122;
    *(v78 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8)) = v64;
    v79 = (v78 + v77);
    v80 = v118;
    *v79 = v119;
    v79[1] = v80;

    v81 = v106;
    sub_1000ED260(sub_1001BEE38, v78);

    v82 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v83 = v121;
    v85 = v115;
    v84 = v116;
    (*(v121 + 104))(v115, enum case for DispatchQoS.QoSClass.default(_:), v116);

    v86 = static OS_dispatch_queue.global(qos:)();
    (*(v83 + 8))(v85, v84);
    v127 = v82;
    v128 = &protocol witness table for OS_dispatch_queue;
    v126[0] = v86;
    sub_100002FB8();
    v87 = swift_allocObject();
    *(v87 + 16) = sub_1001BEED4;
    *(v87 + 24) = v64;
    v88 = objc_allocWithZone(NSLock);
    v89 = v86;
    sub_100029448();

    v90 = [v88 init];
    sub_100002FB8();
    v91 = swift_allocObject();
    *(v91 + 16) = v90;
    *(v91 + 24) = v87;
    sub_100002FB8();
    v92 = swift_allocObject();
    *(v92 + 16) = v90;
    *(v92 + 24) = v87;
    v93 = v90;
    swift_retain_n();
    v94 = v93;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(v126);
    v95 = v107;
    v96 = v120;
    (v117)(v107, v71, v120);
    v97 = swift_allocObject();
    v98 = v95;
    v99 = v96;
    v108(v97 + v109, v98, v96);
    *(v97 + v111) = v122;
    *(v97 + v110) = v64;
    v100 = (v97 + v77);
    v101 = v118;
    *v100 = v119;
    v100[1] = v101;
    sub_100002FB8();
    v102 = swift_allocObject();
    *(v102 + 16) = sub_1001BEFA4;
    *(v102 + 24) = v97;

    v30 = v81;
    sub_1000ED428(sub_10001278C, v102);

    (*(v124 + 8))(v71, v99);
    *(v64 + 208) = v81;
  }

  return v30;
}

uint64_t sub_1001BB47C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  sub_1001B6B6C();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001BF0D4;
  *(v7 + 24) = v6;
  v10[3] = type metadata accessor for SyncTaskScheduler();
  v10[4] = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v10);

  SyncTaskScheduler.init()();
  sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
  sub_100006070(&qword_100271F28, &qword_100271F20, &qword_1001EBE90, &protocol conformance descriptor for Promise<A>);
  v8 = Promise.flatMap<A>(on:_:)();

  sub_100002C00(v10);
  return v8;
}

uint64_t sub_1001BB5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;

  v8 = sub_1001B8D7C(sub_1001BF0E0, v7, 0, 0);

  return v8;
}

uint64_t sub_1001BB6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *&v140 = a2;
  v135 = type metadata accessor for Treatment(0);
  __chkstk_darwin(v135);
  v139 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for Date();
  v10 = *(v138 - 8);
  v11 = __chkstk_darwin(v138);
  v137 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v136 = &v102 - v13;
  v119 = type metadata accessor for TreatmentsConfiguration.Area.Experiment(0);
  v121 = *(v119 - 8);
  result = __chkstk_darwin(v119);
  v122 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 16);
  v17 = (a3 + 48);
  if (v16)
  {
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v20 = *(v17 - 2);

      sub_1001B6F40(v20, v18, v19);
      if (v5)
      {
        goto LABEL_57;
      }

      v17 += 3;
    }

    while (--v16);
  }

  v21 = *(a4 + 16);
  v22 = (a4 + 48);
  v23 = v122;
  if (v21)
  {
    while (1)
    {
      v24 = *(v22 - 1);
      v25 = *v22;
      v26 = *(v22 - 2);

      sub_1001B7040(v26, v24, v25);
      if (v5)
      {
        break;
      }

      v22 += 3;
      if (!--v21)
      {
        goto LABEL_7;
      }
    }

LABEL_57:
  }

LABEL_7:
  v27 = 0;
  v28 = *(v140 + 16);
  v29 = v140 + 32;
  v131 = (v10 + 16);
  v114 = (v10 + 8);
  v30 = v139;
  v105 = v28;
  v104 = v140 + 32;
  while (v27 != v28)
  {
    v111 = v27;
    v31 = v29 + 96 * v27;
    v33 = *(v31 + 8);
    v32 = *(v31 + 16);
    v34 = *(v31 + 80);
    v35 = *(v31 + 88);
    v36 = *(v31 + 72);
    v38 = *(v31 + 24);
    v37 = *(v31 + 32);
    __src[0] = *v31;
    v128 = v32;
    *&__src[8] = v32;
    *&__src[16] = v38;
    *&__src[24] = v37;
    v140 = *(v31 + 40);
    v134 = *(v31 + 56);
    *&__src[32] = v140;
    *&__src[48] = v134;
    *&__src[64] = v36;
    *&__src[72] = v34;
    *&__src[80] = v35;
    memcpy(__dst, __src, sizeof(__dst));
    v39 = v140;
    v117 = v134;
    swift_bridgeObjectRetain_n();
    v118 = v36;
    swift_bridgeObjectRetain_n();
    v116 = v35;
    swift_bridgeObjectRetain_n();
    *&v134 = v38;
    swift_bridgeObjectRetain_n();
    v115 = v39;
    swift_bridgeObjectRetain_n();

    sub_1001B71E0(__dst);
    sub_1001BF17C(__src);
    if (v5)
    {
    }

    v109 = *(v33 + 16);
    if (v109)
    {
      v40 = v33 + ((*(v121 + 80) + 32) & ~*(v121 + 80));

      v41 = 0;
      v127 = a1;
      v112 = v33;
      v103 = v40;
      while (1)
      {
        if (v41 >= *(v33 + 16))
        {
LABEL_66:
          __break(1u);
          return result;
        }

        v42 = *(v121 + 72);
        v110 = v41;
        sub_1001BF1D0(v40 + v42 * v41, v23);
        v43 = *v131;
        v44 = v138;
        (*v131)(v136, v23, v138);
        v45 = v119;
        v46 = v23 + *(v119 + 24);
        v126 = v43;
        result = (v43)(v137, v46, v44);
        v47 = *(v23 + *(v45 + 32));
        v113 = *(v47 + 16);
        if (v113)
        {
          break;
        }

LABEL_53:
        v96 = v110 + 1;
        sub_1001BF22C(v23, type metadata accessor for TreatmentsConfiguration.Area.Experiment);
        v97 = *v114;
        v98 = v138;
        (*v114)(v137, v138);
        result = (v97)(v136, v98);
        v41 = v96;
        a1 = v127;
        v33 = v112;
        v40 = v103;
        if (v96 == v109)
        {

          v118 = v115;
          v117 = v134;
          *&v134 = v33;
          goto LABEL_56;
        }
      }

      v48 = 0;
      v49 = *(v23 + *(v45 + 28));
      v50 = v47 + 32;
      v124 = (v49 + 40);
      v108 = v47;
      v107 = v49;
      v106 = v47 + 32;
      while (2)
      {
        if (v48 >= *(v47 + 16))
        {
          goto LABEL_65;
        }

        v120 = v48;
        v51 = (v50 + 24 * v48);
        v52 = *v51;
        v130 = v51[1];
        v53 = v51[2];
        v125 = v52;
        v133 = v53;
        if (v49 && (*&v132 = *(v49 + 16), v132))
        {
          v129 = *(v52 + 16);
          if (v129)
          {
            v123 = v52 + 32;

            v54 = 0;
            v55 = _swiftEmptyArrayStorage;
            while (v54 < *(v52 + 16))
            {
              *&v140 = v5;
              v56 = *(v123 + 8 * v54);

              v57 = v124;
              v58 = v132;
              do
              {
                v59 = *(v57 - 1);
                v60 = *v57;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1000D6318();
                  v55 = v63;
                }

                v61 = v55[2];
                if (v61 >= v55[3] >> 1)
                {
                  sub_1000D6318();
                  v55 = v64;
                }

                v55[2] = v61 + 1;
                v62 = &v55[3 * v61];
                v62[4] = v56;
                v62[5] = v59;
                v62[6] = v60;
                v57 += 2;
                --v58;
              }

              while (v58);

              ++v54;
              v5 = v140;
              v30 = v139;
              v52 = v125;
              if (v54 == v129)
              {
                goto LABEL_37;
              }
            }

LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v55 = _swiftEmptyArrayStorage;
LABEL_37:
          *&v140 = v5;
          v72 = v55[2];
          if (v72)
          {
            v148 = _swiftEmptyArrayStorage;
            sub_10009BB64(0, v72, 0);
            v67 = v148;
            v73 = v55 + 6;
            do
            {
              v74 = *(v73 - 1);
              v75 = *v73;
              v141 = *(v73 - 2);
              v142 = v74;
              v143 = v75;

              sub_10007B9A4(&qword_10026BF00, &unk_1001EA1F0);
              sub_10007B9A4(&qword_100271F60, &qword_1001E7510);
              swift_dynamicCast();
              v76 = v144;
              v77 = v145;
              v148 = v67;
              v79 = v67[2];
              v78 = v67[3];
              if (v79 >= v78 >> 1)
              {
                v132 = v145;
                sub_10009BB64((v78 > 1), v79 + 1, 1);
                v77 = v132;
                v67 = v148;
              }

              v67[2] = v79 + 1;
              v80 = &v67[3 * v79];
              v80[4] = v76;
              *(v80 + 5) = v77;
              v73 += 3;
              --v72;
            }

            while (v72);

            goto LABEL_43;
          }

LABEL_45:
          v67 = _swiftEmptyArrayStorage;
        }

        else
        {
          v65 = *(v52 + 16);
          if (!v65)
          {
            *&v140 = v5;

            goto LABEL_45;
          }

          v144 = _swiftEmptyArrayStorage;

          sub_10009BB64(0, v65, 0);
          v66 = (v52 + 32);
          v67 = v144;
          do
          {
            v68 = *v66;
            v144 = v67;
            v70 = v67[2];
            v69 = v67[3];

            if (v70 >= v69 >> 1)
            {
              result = sub_10009BB64((v69 > 1), v70 + 1, 1);
              v67 = v144;
            }

            v67[2] = v70 + 1;
            v71 = &v67[3 * v70];
            v71[5] = 0;
            v71[6] = 0;
            v71[4] = v68;
            ++v66;
            --v65;
          }

          while (v65);
          *&v140 = v5;
LABEL_43:
          v30 = v139;
        }

        v81 = 0;
        ++v120;
        *&v132 = v67[2];
        v82 = v67 + 6;
        v129 = v67;
        while (v132 != v81)
        {
          if (v81 >= v67[2])
          {
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v84 = *(v82 - 2);
          v83 = *(v82 - 1);
          v85 = *v82;
          v86 = v138;
          v87 = v126;
          v126(v30, v136, v138);
          v88 = v135;
          result = (v87)(&v139[*(v135 + 24)], v137, v86);
          v89 = v133;
          v90 = *(v88 + 20);
          v30 = v139;
          v91 = &v139[v90];
          *v91 = v130;
          *(v91 + 1) = v89;
          if (v84[2] < 2uLL)
          {
            goto LABEL_63;
          }

          v93 = v84[4];
          v92 = v84[5];

          v94 = v92;
          v95 = v140;
          sub_1001B7478(v30, v128, v134, v94, v93, v83, v85);
          *&v140 = v95;
          if (v95)
          {
            sub_1001BF22C(v30, type metadata accessor for Treatment);

            swift_bridgeObjectRelease_n();
            sub_1001BF22C(v122, type metadata accessor for TreatmentsConfiguration.Area.Experiment);
            v100 = *v114;
            v101 = v138;
            (*v114)(v137, v138);
            return (v100)(v136, v101);
          }

          sub_1001BF22C(v30, type metadata accessor for Treatment);

          v82 += 3;
          ++v81;
          v67 = v129;
        }

        v48 = v120;
        v5 = v140;
        v23 = v122;
        v47 = v108;
        v49 = v107;
        v50 = v106;
        if (v120 != v113)
        {
          continue;
        }

        goto LABEL_53;
      }
    }

LABEL_56:
    v99 = v111 + 1;

    v27 = v99;
    v28 = v105;
    v29 = v104;
  }

  return result;
}

uint64_t sub_1001BC45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for OSSignpostError();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = type metadata accessor for OSSignpostID();
  v12 = *(v33 - 8);
  __chkstk_darwin(v33);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_errorRetain();
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v32 = static os_signpost_type_t.end.getter();
  v37 = a1;

  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v9 + 88))(v11, v8) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v16 = 0;
      v17 = 0;
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v9 + 8))(v11, v8);
      v18 = "Failed to synchronize treatments (error: %@)";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v21;
    *v20 = v21;
    v22 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v32, v22, "TreatmentStoreService", v18, v19, 0xCu);
    sub_10000A00C(v20, &unk_100271F50, &qword_1001F1B48);
  }

  (*(v12 + 8))(v14, v33);
  if (qword_100268738 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1001E5F70;
  v41 = type metadata accessor for TreatmentStoreService();
  v40[0] = v34;

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v40);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._object = 0x8000000100203E50;
  v24._countAndFlagsBits = 0xD000000000000029;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
  swift_getErrorValue();
  v25 = v38;
  v26 = v39;
  v41 = v39;
  v27 = sub_100017E64(v40);
  (*(*(v26 - 8) + 16))(v27, v25, v26);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(v40, &qword_10026D350, &qword_1001E6050);
  v28._countAndFlagsBits = 41;
  v28._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
  LogInterpolation.init(stringInterpolation:)();
  v29 = static os_log_type_t.error.getter();
  sub_1000036B0(v29, v23);
}

uint64_t sub_1001BC948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a3;

  sub_1000E349C();
}

uint64_t sub_1001BCA30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100009BE8;

  return sub_1001BCE40(0);
}

uint64_t sub_1001BCAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v22 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v14 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v15 = "Synchronized treatments successfully";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v17, "TreatmentStoreService", v15, v16, 2u);
  }

  (*(v10 + 8))(v12, v9);
  if (qword_100268738 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001E5F70;
  v25[3] = type metadata accessor for TreatmentStoreService();
  v25[0] = v22;

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v25);
  LogInterpolation.init(stringLiteral:)();
  v19 = static os_log_type_t.default.getter();
  sub_1000036B0(v19, v18);
}

uint64_t sub_1001BCE40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001BCE60, v1, 0);
}

uint64_t sub_1001BCE60()
{
  sub_100004768();
  *(*(v0 + 24) + 208) = *(v0 + 16);

  sub_100002D8C();

  return v1();
}

void sub_1001BCEC8()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void *sub_1001BCF18()
{
  sub_100002C00((v0 + 112));
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001BCF60()
{
  sub_1001BCF18();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001BD160()
{
  sub_100004768();
  v3 = sub_1000167E4(v1, v2);
  sub_100003D10(v3);
  *(v0 + 224) = sub_100023C0C();
  v4 = sub_1000047B0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001BD484@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v34 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v12 = *v11;
    v13 = v11[1];

    sub_10003CB20(v12, v13, v37);
    if (v2)
    {
    }

    v7 &= v7 - 1;
    if (v38)
    {
      v39 = v37[0];
      sub_100002BC0(0, &qword_100271EE8, AMSTreatmentArea_ptr);

      v14 = sub_100092378();
      [v14 setCacheable:v39];
      sub_10000A00C(v37, &qword_100271DD0, &qword_1001F1888);
      v32 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v34;
      v15 = sub_100012A94();
      v16 = v34[2];
      v35 = v17;
      v18 = (v17 & 1) == 0;
      v30 = v15;
      capacity = v16 + v18;
      if (__OFADD__(v16, v18))
      {
        goto LABEL_24;
      }

      sub_10007B9A4(&qword_100271F00, &qword_1001F1AE8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, capacity))
      {
        v19 = sub_100012A94();
        v21 = v35;
        if ((v35 & 1) != (v20 & 1))
        {
          goto LABEL_26;
        }

        v22 = v32;
      }

      else
      {
        v22 = v32;
        v19 = v30;
        v21 = v35;
      }

      v34 = v36;
      if (v21)
      {
        v23 = v36[7];
        v24 = *(v23 + 8 * v19);
        *(v23 + 8 * v19) = v22;

        v22 = v24;
      }

      else
      {
        v36[(v19 >> 6) + 8] |= 1 << v19;
        v25 = (v36[6] + 16 * v19);
        *v25 = v12;
        v25[1] = v13;
        *(v36[7] + 8 * v19) = v22;
        v26 = v36[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_25;
        }

        v36[2] = v28;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      *a2 = v34;
      return result;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001BD798(uint64_t a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v4[4] = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1001BD87C;

  return sub_1001BD160();
}

uint64_t sub_1001BD87C(uint64_t a1)
{
  sub_1001BF340();
  sub_100003D28();
  v3 = v1;
  sub_1000056A8();
  v5 = v4;
  sub_100004EEC();
  *v6 = v5;
  v7 = *v2;
  sub_100002D20();
  *v8 = v7;

  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = v9;
  }

  else
  {
    sub_100002BC0(0, &qword_100271EE8, AMSTreatmentArea_ptr);
    Dictionary._bridgeToObjectiveC()();
    sub_100029448();

    v10 = 0;
  }

  v11 = sub_10000A214();
  v12(v11);

  _Block_release(v5);
  sub_100002D8C();
  sub_1001BF32C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1001BDAA0(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_1001BDB5C;

  return sub_1001B8710();
}

uint64_t sub_1001BDB5C()
{
  sub_100003D28();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_100002D20();
  *v7 = v6;
  v8 = *v1;
  *v7 = *v1;

  v9 = *(v5 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, v4 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1001BDCE4(uint64_t a1)
{
  sub_1001BF340();
  sub_100003D28();
  sub_1000056A8();
  v4 = v3;
  sub_100004EEC();
  *v5 = v4;
  v6 = *v2;
  sub_100002D20();
  *v7 = v6;
  *(v4 + 448) = v1;

  if (v1)
  {
    sub_1001BF32C();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {

    sub_100019DF8();
    sub_1001BF32C();

    return v14(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

uint64_t sub_1001BE274()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;

  v7 = *(v3 + 40);
  v8 = &unk_100271EA0;
  sub_10000A00C(*(v3 + 32), &unk_100271EA0, &qword_1001E77F0);
  sub_10000A00C(v7, &unk_100271EA0, &qword_1001E77F0);
  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_100011624();

    v9 = &unk_100271EA0;
  }

  else
  {
    sub_10007B9A4(&qword_10026E448, &qword_1001F1AA0);
    Dictionary._bridgeToObjectiveC()();
    sub_100029448();

    v8 = 0;
    v9 = 0;
  }

  v10 = *(v4 + 48);
  (v10)[2](v10, 0, v8);

  _Block_release(v10);

  v11 = *(v6 + 8);

  return v11();
}

id sub_1001BE4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v9 = String._bridgeToObjectiveC()();

  v10 = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v5 initWithEndDate:isa identifier:v9 startDate:v10];

  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 8);
  v13(a4, v12);
  v13(a1, v12);
  return v11;
}

uint64_t sub_1001BE5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v10 = sub_100003D10(v9);
  __chkstk_darwin(v10);
  v12 = v23 - v11;
  sub_1000E0BFC(a3, v23 - v11, &unk_10026FEC0, &qword_1001E6280);
  v13 = type metadata accessor for TaskPriority();
  if (sub_100009F34(v12, 1, v13) == 1)
  {
    sub_10000A00C(v12, &unk_10026FEC0, &qword_1001E6280);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;
      sub_100002FB8();
      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;

      if (v16 | v14)
      {
        v24[0] = 0;
        v24[1] = 0;
        v19 = v24;
        v24[2] = v14;
        v24[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v23[1] = 7;
      v23[2] = v19;
      v23[3] = v17;
      v21 = swift_task_create();

      sub_10000A00C(a3, &unk_10026FEC0, &qword_1001E6280);

      return v21;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A00C(a3, &unk_10026FEC0, &qword_1001E6280);
  sub_100002FB8();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1001BE878()
{
  sub_1000061B4();
  v0 = swift_task_alloc();
  v1 = sub_100009F04(v0);
  *v1 = v2;
  v1[1] = sub_100009BE8;
  v3 = sub_100005F88();

  return v4(v3);
}

unint64_t sub_1001BE930(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = _swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_10007B9A4(&qword_10026C910, &qword_1001EBDF0);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1000E0BFC(v6, &v15, &unk_100271F40, &unk_1001EA290);
    v7 = v15;
    v8 = v16;
    result = sub_1001BEA84(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_100002C4C(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1001BEA84(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100012E40(a1, a2, v4);
}

uint64_t sub_1001BEB08(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

unint64_t sub_1001BEBAC()
{
  result = qword_100271EE0;
  if (!qword_100271EE0)
  {
    sub_100002BC0(255, &qword_10026E458, AMSTreatment_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271EE0);
  }

  return result;
}

uint64_t sub_1001BEC14()
{
  sub_1000061B4();
  v0 = swift_task_alloc();
  v1 = sub_100009F04(v0);
  *v1 = v2;
  v1[1] = sub_100009CC8;
  v3 = sub_1000077B0();

  return v4(v3);
}

uint64_t sub_1001BECB8()
{
  sub_1001BF340();
  sub_100003D28();
  sub_100048FC0();
  v0 = swift_task_alloc();
  v1 = sub_100009F04(v0);
  *v1 = v2;
  sub_1000035D8(v1);
  sub_1001BF32C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001BEDF4()
{

  sub_100002FB8();

  return _swift_deallocObject(v0);
}

uint64_t sub_1001BEE38(uint64_t a1)
{
  v3 = type metadata accessor for OSSignposter();
  sub_100002CFC(v3);
  sub_100003C0C();
  v6 = *(v1 + v5);
  v9 = *(v1 + v8);
  v10 = (v1 + (v7 & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_1001BC45C(a1, v1 + v4, v6, v9, v11, v12);
}

uint64_t sub_1001BEEE4()
{
  type metadata accessor for OSSignposter();
  sub_100002DDC();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_1001BEFA4()
{
  v1 = type metadata accessor for OSSignposter();
  sub_100002CFC(v1);
  sub_100003C0C();
  v5 = *(v0 + v4);
  v7 = *(v0 + v6);
  v8 = (v0 + (v3 & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1001BCAC4(v0 + v2, v5, v7, v9, v10);
}

uint64_t sub_1001BF030()
{
  sub_1000061B4();
  v0 = swift_task_alloc();
  v1 = sub_100009F04(v0);
  *v1 = v2;
  v1[1] = sub_100009CC8;
  sub_100005F88();

  return sub_1001BCA30();
}

uint64_t sub_1001BF100()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_1001BF1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003EFC();
  v5(v4);
  sub_100002DDC();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1001BF22C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002DDC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001BF2A4(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2);
}

uint64_t sub_1001BF370()
{
  sub_1001C0188();

  return swift_deallocClassInstance();
}

uint64_t sub_1001BF3AC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL), uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v34 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LogInterpolation.StringInterpolation();
  result = __chkstk_darwin(v16 - 8);
  if (a1)
  {
    v29 = v13;
    v30 = v10;
    v31 = v9;
    v32 = a5;
    v33 = a4;
    LOBYTE(v35) = [a1 integerValue] & 3;
    v35 = v35;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1001E5F70;
    v38 = type metadata accessor for UbiquitousKeyValueStoreController();
    aBlock[0] = a3;

    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v21 = v35 == 3;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(aBlock);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22._object = 0x8000000100204370;
    v22._countAndFlagsBits = 0xD00000000000001CLL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    v38 = &type metadata for Bool;
    LOBYTE(aBlock[0]) = v21;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(aBlock);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v24 = static os_log_type_t.debug.getter();
    sub_1000036B0(v24, v18);

    v25 = v31;
    v26 = v29;
    if (qword_1002687F8 != -1)
    {
      swift_once();
    }

    v27 = swift_allocObject();
    *(v27 + 16) = a3;
    *(v27 + 24) = v21;
    v39 = sub_1001C1AAC;
    v40 = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100005E50;
    v38 = &unk_100254028;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v36 = _swiftEmptyArrayStorage;
    sub_10004DE28();
    sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
    sub_10004DDC4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);
    (*(v30 + 8))(v12, v25);
    (*(v34 + 8))(v15, v26);

    if (v33)
    {
      return v33(v35 == 3);
    }
  }

  return result;
}

uint64_t sub_1001BF8AC()
{
  for (i = 0; i != 4; i = v2)
  {
    v2 = i + 1;
    v10[0] = *(&off_100244588 + i + 32);
    sub_1001BFB1C(v10, v0);
  }

  sub_1001BFEE4();
  v3 = sub_100073798();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  sub_1000056F8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F70;
  if (v3)
  {
    v11 = type metadata accessor for UbiquitousKeyValueStoreController();
    *v10 = v0;

    v6 = AMSLogKey();
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = type metadata accessor for UbiquitousKeyValueStoreController();
    *v10 = v0;

    v6 = AMSLogKey();
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v7 = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_9:
  sub_100019E0C(v6);

  sub_100002C00(v10);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v8 = static os_log_type_t.info.getter();
  sub_1000036B0(v8, v5);
}

uint64_t sub_1001BFB1C(unsigned __int8 *a1, unint64_t a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = 0xE900000000000073;
  v6 = 0x636974796C616E61;
  v25 = *a1;
  switch(*a1)
  {
    case 1u:
      v5 = 0xE800000000000000;
      v6 = 0x6C616E7265746E69;
      break;
    case 2u:
      v5 = 0xE800000000000000;
      v6 = 0x7379656E72756F6ALL;
      break;
    case 3u:
      v5 = 0xEF736E6F69746164;
      v6 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v27 = 0x80000001001FFCB0;
  v7 = v5;
  String.append(_:)(*&v6);

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E5F70;
  v28 = type metadata accessor for UbiquitousKeyValueStoreController();
  v26 = a2;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v26);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000021;
  v11._object = 0x8000000100204340;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  v28 = &type metadata for String;
  v26 = 0xD000000000000019;
  v27 = 0x80000001001FFCB0;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(&v26);
  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v13 = static os_log_type_t.info.getter();
  sub_1000036B0(v13, v8);

  v14 = objc_opt_self();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 ams_encryptedAllPlatformsStoreWithIdentifier:v15];

  swift_beginAccess();
  if (v16)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(a2 + 16);
    sub_1000AD0A4(v16, v25, isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v22, v24, 0xD000000000000019);
    *(a2 + 16) = v29;
  }

  else
  {
  }

  return swift_endAccess();
}

uint64_t sub_1001BFEE4()
{
  v1 = v0;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  sub_1000056F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F70;
  v16[3] = type metadata accessor for UbiquitousKeyValueStoreController();
  v16[0] = v0;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v16);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
LABEL_16:
    sub_100002D44(&qword_1002686B0);
  }

  v6 = static os_log_type_t.info.getter();
  sub_1000036B0(v6, v3);

  v7 = [objc_opt_self() defaultCenter];
  swift_beginAccess();
  v3 = *(v1 + 16);
  v8 = 1 << *(v3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v3 + 64);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_12:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      [v7 addObserver:v1 selector:"storeDidChangeExternallyWithNotification:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:*(*(v3 + 56) + ((v13 << 9) | (8 * v14)))];
      if (!v10)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v3 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_12;
    }
  }
}

void sub_1001C0188()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];
}

void sub_1001C01EC()
{
  v2 = v0;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  sub_100002DEC();
  v6 = v5 - v4;
  v7 = type metadata accessor for DispatchPredicate();
  sub_100002CC4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100002DEC();
  v13 = (v12 - v11);
  if (qword_1002687F8 != -1)
  {
    sub_10000BCA0(&qword_1002687F8);
  }

  v14 = qword_1002878F0;
  *v13 = qword_1002878F0;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v7);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  Notification.object.getter();
  if (!v65)
  {
    sub_100002C5C(v64);
    goto LABEL_20;
  }

  sub_100002BC0(0, &qword_10026AEB8, NSUbiquitousKeyValueStore_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v16 = v66;
  swift_beginAccess();
  v17 = 0;
  v18 = *(v2 + 16);
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v22 = (v19 + 63) >> 6;
LABEL_9:
  if (v21)
  {
    v23 = v17;
    goto LABEL_15;
  }

  while (1)
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

LABEL_20:
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v30 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v30);
      sub_1000056F8();
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1001E5F70;
      v65 = type metadata accessor for UbiquitousKeyValueStoreController();
      v64[0] = v2;

      v31 = AMSLogKey();
      if (v31)
      {
        v32 = v31;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v64);
      LogInterpolation.init(stringLiteral:)();
      if (qword_1002686B0 == -1)
      {
LABEL_23:
        v33 = static os_log_type_t.debug.getter();
        sub_1000036B0(v33, v6);
LABEL_24:

        return;
      }

LABEL_62:
      sub_100002D44(&qword_1002686B0);
      goto LABEL_23;
    }

    v21 = *(v18 + 64 + 8 * v23);
    ++v17;
    if (v21)
    {
      v17 = v23;
LABEL_15:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v25 = v24 | (v23 << 6);
      if (*(*(v18 + 56) + 8 * v25) == v66)
      {
        v63 = *(*(v18 + 48) + v25);
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v26 = type metadata accessor for LogInterpolation();
        sub_100002CFC(v26);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1001E5F70;
        v65 = type metadata accessor for UbiquitousKeyValueStoreController();
        v64[0] = v2;

        v28 = AMSLogKey();
        if (v28)
        {
          v29 = v28;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(v64);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v34._countAndFlagsBits = 0xD000000000000027;
        v34._object = 0x80000001002041A0;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
        v65 = &unk_1002471C0;
        LOBYTE(v64[0]) = v63;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_100002C5C(v64);
        v35._countAndFlagsBits = 1886413088;
        v35._object = 0xE400000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
        LogInterpolation.init(stringInterpolation:)();
        if (qword_1002686B0 != -1)
        {
          sub_100002D44(&qword_1002686B0);
        }

        v36 = static os_log_type_t.default.getter();
        sub_1000036B0(v36, v27);

        v37 = Notification.userInfo.getter();
        if (v37)
        {
          v38 = v37;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          AnyHashable.init<A>(_:)();
          sub_10000E0C8(v64, v38, &v66);

          sub_10000E1E8(v64);
          if (*(&v67 + 1))
          {
            if (swift_dynamicCast())
            {
              v39 = v64[0];
              v1 = swift_allocObject();
              sub_10000A560(v1);
              switch(v39)
              {
                case 0:
                  sub_10000C230();
                  v40 = AMSLogKey();
                  if (v40)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_50;
                case 1:
                  sub_10000C230();
                  v40 = AMSLogKey();
                  if (v40)
                  {
LABEL_45:
                    v49 = v40;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                  }

LABEL_50:
                  sub_1000077C0();

                  sub_100002C00(v64);
                  sub_100005B28();
                  LogInterpolation.init(stringLiteral:)();
                  v56 = static os_log_type_t.debug.getter();
                  sub_1000036B0(v56, v1);

                  v57 = Notification.userInfo.getter();
                  if (v57)
                  {
                    v58 = v57;
                    *&v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    *(&v66 + 1) = v59;
                    AnyHashable.init<A>(_:)();
                    sub_10000E0C8(v64, v58, &v66);

                    sub_10000E1E8(v64);
                    if (*(&v67 + 1))
                    {
                      sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
                      if (swift_dynamicCast())
                      {
                        v60 = v64[0];
                      }

                      else
                      {
                        v60 = 0;
                      }

LABEL_57:
                      sub_1001C0D20(v63, v60);
LABEL_38:

                      goto LABEL_24;
                    }
                  }

                  else
                  {
                    v66 = 0u;
                    v67 = 0u;
                  }

                  sub_100002C5C(&v66);
                  v60 = 0;
                  goto LABEL_57;
                case 2:
                  goto LABEL_40;
                case 3:
                  sub_10000C230();
                  v47 = AMSLogKey();
                  if (v47)
                  {
                    v48 = v47;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                  }

                  sub_1000077C0();

                  sub_100002C00(v64);
                  sub_100005B28();
                  LogInterpolation.init(stringLiteral:)();
                  v55 = static os_log_type_t.debug.getter();
                  sub_1000036B0(v55, v1);

                  *(v2 + 24) = 0;
                  sub_10004B274(0, 0);
                  goto LABEL_60;
                default:
                  sub_10000C230();
                  v50 = AMSLogKey();
                  if (v50)
                  {
                    v51 = v50;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                  }

                  sub_1000081F4();

                  sub_100002C00(v64);
                  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
                  v61._countAndFlagsBits = 0xD00000000000001ALL;
                  v61._object = 0x8000000100204210;
                  LogInterpolation.StringInterpolation.appendLiteral(_:)(v61);
                  v65 = &type metadata for Int;
                  v64[0] = v39;
                  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
                  sub_100002C5C(v64);
                  v62._countAndFlagsBits = 0xD000000000000013;
                  v62._object = 0x8000000100204230;
                  LogInterpolation.StringInterpolation.appendLiteral(_:)(v62);
                  sub_100005B28();
                  LogInterpolation.init(stringInterpolation:)();
                  v54 = static os_log_type_t.debug.getter();
                  goto LABEL_59;
              }
            }

LABEL_35:
            v41 = swift_allocObject();
            sub_10000A560(v41);
            sub_10000C230();
            v42 = AMSLogKey();
            if (v42)
            {
              v43 = v42;
              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }

            static LogInterpolation.prefix(_:_:)();

            sub_100002C00(v64);
            LogInterpolation.init(stringLiteral:)();
            v44 = static os_log_type_t.debug.getter();
            sub_1000036B0(v44, v41);
            goto LABEL_38;
          }
        }

        else
        {
          v66 = 0u;
          v67 = 0u;
        }

        sub_100002C5C(&v66);
        goto LABEL_35;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_40:
  sub_10000C230();
  v45 = AMSLogKey();
  if (v45)
  {
    v46 = v45;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000081F4();

  sub_100002C00(v64);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v52._object = 0x8000000100204250;
  v52._countAndFlagsBits = 0xD00000000000001BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v52);
  v65 = &unk_1002471C0;
  LOBYTE(v64[0]) = v63;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v64);
  v53._countAndFlagsBits = 0x65726F747320;
  v53._object = 0xE600000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v53);
  sub_100005B28();
  LogInterpolation.init(stringInterpolation:)();
  v54 = static os_log_type_t.error.getter();
LABEL_59:
  sub_1000036B0(v54, v1);

LABEL_60:
}

uint64_t sub_1001C0D20(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v47 = v5;
  __chkstk_darwin(v6);
  sub_100002DEC();
  v9 = v8 - v7;
  v46 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v45 = v10;
  __chkstk_darwin(v11);
  sub_100002DEC();
  v14 = v13 - v12;
  v15 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  sub_100002DEC();
  v16 = type metadata accessor for DispatchPredicate();
  sub_100002CC4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100002DEC();
  v22 = (v21 - v20);
  if (qword_1002687F8 != -1)
  {
    sub_10000BCA0(&qword_1002687F8);
  }

  v23 = qword_1002878F0;
  *v22 = qword_1002878F0;
  (*(v18 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v16);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v22, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    sub_100002D44(&qword_1002686B0);
    goto LABEL_7;
  }

  v44 = v4;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v25 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v25);
  sub_1000056F8();
  v16 = swift_allocObject();
  v43 = xmmword_1001E5F70;
  *(v16 + 16) = xmmword_1001E5F70;
  v52 = type metadata accessor for UbiquitousKeyValueStoreController();
  *&aBlock = v2;

  v26 = AMSLogKey();
  if (v26)
  {
    v27 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4 = 0xD000000000000014;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&aBlock);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0xD00000000000001BLL;
  v28._object = 0x8000000100204100;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
  v52 = &unk_1002471C0;
  LOBYTE(aBlock) = a1;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(&aBlock);
  v29._object = 0x8000000100204120;
  v29._countAndFlagsBits = 0xD000000000000014;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    goto LABEL_13;
  }

LABEL_7:
  v30 = static os_log_type_t.default.getter();
  sub_1000036B0(v30, v16);

  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = v43;
  *(inited + 32) = 0x656372756F73;
  *(inited + 40) = 0xE600000000000000;
  strcpy((inited + 48), "amsengagementd");
  *(inited + 63) = -18;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x707954746E657665;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = v4 + 2;
  *(inited + 104) = 0x8000000100204140;
  Dictionary.init(dictionaryLiteral:)();
  if (a2)
  {
    v52 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    *&aBlock = a2;
    sub_100002C4C(&aBlock, &v49);

    swift_isUniquelyReferenced_nonNull_native();
    sub_10000DFC4();
  }

  v32 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  sub_100007A3C();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1001E8AB0;
  v34 = v33;
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  *(v34 + 32) = sub_100092378();
  sub_1000F43B4(v34, v32);
  sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
  sub_100007A3C();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1001E61B0;
  sub_10005DFA4();
  v37 = v36;

  *(v35 + 32) = v37;
  sub_1000F4334(v35, v32);
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v38 = swift_allocObject();
  *(v38 + 16) = v32;
  v53 = sub_1001C1A98;
  v54 = v38;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  sub_100007A28();
  v51 = v39;
  v52 = &unk_100253F88;
  v40 = _Block_copy(&aBlock);
  v41 = v32;
  static DispatchQoS.unspecified.getter();
  *&v49 = _swiftEmptyArrayStorage;
  sub_10004DE28();
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);

  (*(v47 + 8))(v9, v44);
  (*(v45 + 8))(v14, v46);
}

void sub_1001C1554(uint64_t a1)
{
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v2 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  v3 = [objc_allocWithZone(AMSEngagement) initWithBag:v2];
}

uint64_t sub_1001C1620(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v27 = v3;
  __chkstk_darwin(v4);
  sub_100002DEC();
  v7 = v6 - v5;
  v26 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100002DEC();
  v13 = v12 - v11;
  v14 = type metadata accessor for Notification();
  sub_100002CC4();
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  if (qword_1002687F8 != -1)
  {
    sub_10000BCA0(&qword_1002687F8);
  }

  v25[1] = qword_1002878F0;
  (*(v16 + 16))(v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v20 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v25[2];
  (*(v16 + 32))(v21 + v20, v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  aBlock[4] = sub_1001C1A34;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_100007A28();
  aBlock[2] = v22;
  aBlock[3] = &unk_100253F38;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10004DE28();
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v27 + 8))(v7, v2);
  (*(v9 + 8))(v13, v26);
}

_BYTE *storeEnumTagSinglePayload for UbiquitousKeyValueStoreError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001C1B9C()
{
  result = qword_1002720D0;
  if (!qword_1002720D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002720D0);
  }

  return result;
}

uint64_t sub_1001C1C04(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v15 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(v2 + 48) + 40 * (v11 | (v10 << 6));
      LOBYTE(v11) = *(v12 + 32);
      v13 = *(v12 + 16);
      v16[0] = *v12;
      v16[1] = v13;
      v17 = v11;
      sub_1001CAE60(v16, &v14);
      sub_1001C56AC(&v14, v16);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v15;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C1DD4(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1001C62E8(a1, sub_1001CAE1C, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void *sub_1001C1E58(uint64_t a1)
{
  v3 = Dictionary.init(dictionaryLiteral:)();
  sub_100005680();
  sub_10001B294();
  v5 = v4 >> 6;
  v26 = a1;

  v7 = 0;
  if (v1)
  {
LABEL_5:
    sub_100019E2C();
    v11 = (*(v26 + 48) + 24 * (v9 | (v10 << 6)));
    v12 = v11[2];
    v27 = *v11;
    sub_100005680();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    v28 = v18;

    v19 = 0;
    v20 = v3;
    if (!v15)
    {
      goto LABEL_7;
    }

    do
    {
      v21 = v19;
LABEL_11:
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23 = (*(v12 + 48) + 48 * (v22 | (v21 << 6)));
      v24 = v23[1];
      v29 = *v23;
      v30[0] = v24;
      *(v30 + 9) = *(v23 + 25);
      v31 = v29;
      v32 = v24;
      sub_10015BD34();
      sub_10015BD34();
      sub_10015BD34();
      sub_1001C215C(v27, v28, &v29);
      sub_10000A00C(&v31, &qword_100269EE8, &unk_1001E70D0);
      sub_10000A00C(&v31 + 8, &qword_100272110, &qword_1001F1D68);
      sub_10000A00C(&v32, &qword_100272118, &qword_1001F1D70);
      sub_10004EF2C();
      sub_1001C2278();
      v20 = v25;
    }

    while (v15);
LABEL_7:
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v17)
      {
        v3 = v20;

        goto LABEL_5;
      }

      v15 = *(v12 + 56 + 8 * v21);
      ++v19;
      if (v15)
      {
        v19 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v5)
      {

        return &_swiftEmptySetSingleton;
      }

      ++v7;
      if (*(a1 + 56 + 8 * v8))
      {
        goto LABEL_5;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C215C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  sub_10007B9A4(&qword_100272140, &qword_1001F1DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v8 = sub_1001CAAD8(inited);
  v9 = a3[1];
  v10 = *(a3 + 12);
  v11 = a3[4];
  v12 = *(a3 + 40);
  sub_10007B9A4(&qword_100272148, &qword_1001F1DA8);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1001E61B0;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  *(v13 + 48) = 3;
  *(v13 + 50) = v10;
  *(v13 + 56) = v11;
  *(v13 + 64) = v12;

  sub_1001CA15C(v13);

  return v6;
}

void sub_1001C26E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, __int16 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_100003FE8();
  v33 = v32;
  v34 = Dictionary.init(dictionaryLiteral:)();
  v35 = v33 + 8;
  sub_100004E5C();
  v38 = v37 & v36;
  v40 = (v39 + 63) >> 6;

  v41 = 0;
  v77 = v33 + 8;
  v78 = v33;
  v76 = v40;
  if (v38)
  {
    while (1)
    {
LABEL_6:
      v43 = (v33[6] + ((v41 << 10) | (16 * __clz(__rbit64(v38)))));
      v45 = *v43;
      v44 = v43[1];
      type metadata accessor for JSONEncoder();
      swift_allocObject();

      JSONEncoder.init()();
      v79 = v44;
      v80 = v45;
      if (v33[2] && (v46 = sub_100012A94(), (v47 & 1) != 0))
      {
        v48 = *(v33[7] + 24 * v46);
      }

      else
      {
        v48 = 0;
      }

      sub_10007B9A4(&qword_1002720E8, &qword_1001F1D50);
      sub_1001C5540();
      v49 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v51 = v50;
      sub_1001C5618(v48);
      v52 = sub_10000B1A8();
      sub_10003A5E0(v52, v53);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v34;
      v55 = sub_100012A94();
      v57 = *(v34 + 16);
      v58 = (v56 & 1) == 0;
      v59 = v57 + v58;
      if (__OFADD__(v57, v58))
      {
        break;
      }

      v60 = v55;
      v61 = v56;
      sub_10007B9A4(&qword_100272108, &unk_1001F1D58);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v59))
      {
        v62 = sub_100012A94();
        if ((v61 & 1) != (v63 & 1))
        {
          goto LABEL_24;
        }

        v60 = v62;
      }

      if (v61)
      {

        v34 = v81;
        v64 = (v81[7] + 16 * v60);
        v65 = *v64;
        v66 = v64[1];
        *v64 = v49;
        v64[1] = v51;
        sub_1000253FC(v65, v66);

        v67 = sub_10000B1A8();
        sub_1000253FC(v67, v68);
      }

      else
      {
        v34 = v81;
        v81[(v60 >> 6) + 8] |= 1 << v60;
        v69 = (v81[6] + 16 * v60);
        *v69 = v80;
        v69[1] = v79;
        v70 = (v81[7] + 16 * v60);
        *v70 = v49;
        v70[1] = v51;

        v71 = sub_10000B1A8();
        sub_1000253FC(v71, v72);
        v73 = v81[2];
        v74 = __OFADD__(v73, 1);
        v75 = v73 + 1;
        if (v74)
        {
          goto LABEL_23;
        }

        v81[2] = v75;
      }

      v38 &= v38 - 1;
      v33 = v78;
      v40 = v76;
      v35 = v77;
      if (!v38)
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
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v42 >= v40)
      {

        sub_100006150();
        return;
      }

      v38 = v35[v42];
      ++v41;
      if (v38)
      {
        v41 = v42;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1001C2AB4(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v2 = a2;
  sub_100007DC0();
  if (!v40)
  {
    return;
  }

  sub_10000C4EC();
  sub_10001CC58();
  v6 = v2 + 56;
  if (v7)
  {
LABEL_5:
    sub_100018158();
LABEL_11:
    sub_1001CB10C();
    v14 = (v13 + 48 * v12);
    v15 = v14[1];
    v67 = *v14;
    *v68 = v15;
    *&v68[9] = *(v14 + 25);
    v16 = *(&v67 + 1);
    v17 = v67;
    v69[0] = v67;
    v18 = v15;
    Hasher.init(_seed:)();
    sub_10015BD34();
    v58 = v18;

    sub_100097AAC(v66);
    Hasher._finalize()();
    sub_100004E1C();
    v62 = ~v20;
    v56 = v68[9];
    v57 = v68[8];
    v55 = v68[24];
    v54 = *&v68[16];
    v60 = v6;
    v61 = v2;
    v59 = v16;
    while (1)
    {
      v21 = v19 & v62;
      if (((*(v6 + (((v19 & v62) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v62)) & 1) == 0)
      {
        sub_10000A00C(v69, &qword_100269EE8, &unk_1001E70D0);

        return;
      }

      v22 = (*(v2 + 48) + 48 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      if (*v22 == v17)
      {
        sub_1001CB0F8();
        v65 = v25;

        v64 = v24;

LABEL_32:
        if (v64)
        {
          if (!v16 || (, v41 = sub_1001C3B70(v64, v16), , (v41 & 1) == 0))
          {
LABEL_43:

LABEL_44:

LABEL_45:
            v21 = v63;
            goto LABEL_46;
          }
        }

        else if (v16)
        {
          goto LABEL_44;
        }

        if (v65)
        {
          if (!v58)
          {
            goto LABEL_43;
          }

          sub_1001C49D8();
          v43 = v42;

          sub_100015B28();
          if ((v43 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {

          sub_100015B28();
          if (v48)
          {
            goto LABEL_46;
          }
        }

        if (v47 == 2)
        {
          if (v57 != 2)
          {
            goto LABEL_46;
          }
        }

        else if (v57 == 2 || ((v57 ^ v47) & 1) != 0)
        {
          goto LABEL_46;
        }

        if (v46 == 2)
        {
          if (v56 != 2)
          {
            goto LABEL_46;
          }
        }

        else if (v56 == 2 || ((v56 ^ v46) & 1) != 0)
        {
          goto LABEL_46;
        }

        if (v45)
        {
          if (v55)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v49 = v55;
          if (v44 != v54)
          {
            v49 = 1;
          }

          if ((v49 & 1) == 0)
          {
LABEL_64:
            sub_10000A00C(v69, &qword_100269EE8, &unk_1001E70D0);

            v4 = v53;
            v3 = v51;
            v5 = v52;
            if (v50)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      else if (*(v23 + 16) == *(v17 + 16))
      {
        sub_1001CB0F8();
        sub_100005680();
        v28 = v27 & v26;
        v30 = (v29 + 63) >> 6;

        v64 = v24;

        v65 = v25;

        v31 = 0;
        if (v28)
        {
          while (2)
          {
            v32 = __clz(__rbit64(v28));
            v28 &= v28 - 1;
LABEL_22:
            v36 = *(*(v23 + 48) + 16 * (v32 | (v31 << 6)) + 8);
            Hasher.init(_seed:)();

            String.hash(into:)();
            Hasher._finalize()();
            sub_100004E1C();
            do
            {
              sub_10000A7B0();
              if (((*(v17 + 56 + v37) >> v2) & 1) == 0)
              {

                v6 = v60;
                v2 = v61;
                v16 = v59;
                goto LABEL_45;
              }

              v38 = sub_100003C28(*(v17 + 48));
              v40 = v40 && v39 == v36;
            }

            while (!v40 && (sub_1000240DC(v38, v39) & 1) == 0);

            if (v28)
            {
              continue;
            }

            break;
          }
        }

        v33 = v31;
        v6 = v60;
        v2 = v61;
        v16 = v59;
        while (1)
        {
          v31 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v31 >= v30)
          {
            goto LABEL_32;
          }

          ++v33;
          if (*(v23 + 56 + 8 * v31))
          {
            sub_1000035FC();
            v28 = v35 & v34;
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_69;
      }

LABEL_46:
      v19 = v21 + 1;
    }
  }

  v8 = v5;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v3)
    {
      return;
    }

    ++v8;
    if (*(v4 + 8 * v9))
    {
      v51 = v3;
      v53 = v4;
      sub_1000035FC();
      v50 = v11 & v10;
      goto LABEL_11;
    }
  }

LABEL_69:
  __break(1u);
}

void sub_1001C2FC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t __src, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_10000DDB0();
  a33 = v34;
  a34 = v36;
  if (v37 == v35 || (v38 = v35, sub_100007DC0(), !v60))
  {
LABEL_28:
    sub_10000E74C();
    return;
  }

  v39 = 0;
  sub_10000C4EC();
  if (v42 < 64)
  {
    v44 = ~(-1 << v42);
  }

  else
  {
    v44 = -1;
  }

  v45 = v44 & v41;
  v46 = (v42 + 63) >> 6;
  v68 = v38 + 56;
  v65 = v43;
  v66 = v40;
  v64 = v46;
  if (v45)
  {
    while (1)
    {
      v47 = __clz(__rbit64(v45));
      v67 = (v45 - 1) & v45;
LABEL_14:
      v51 = (*(v40 + 48) + 24 * (v47 | (v39 << 6)));
      v53 = *v51;
      v52 = v51[1];
      v54 = v51[2];
      Hasher.init(_seed:)();

      String.hash(into:)();
      sub_100079558(&__src, v54);
      v55 = Hasher._finalize()();
      v56 = -1 << *(v38 + 32);
      v57 = v55 & ~v56;
      if (((*(v68 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
      {
        break;
      }

      v58 = ~v56;
      while (1)
      {
        v59 = (*(v38 + 48) + 24 * v57);
        v60 = *v59 == v53 && v59[1] == v52;
        if (v60 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          sub_1001C2AB4(v61, v54);
          v63 = v62;

          if (v63)
          {
            break;
          }
        }

        v57 = (v57 + 1) & v58;
        if (((*(v68 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v43 = v65;
      v40 = v66;
      v46 = v64;
      v45 = v67;
      if (!v67)
      {
        goto LABEL_9;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_9:
  v48 = v39;
  while (1)
  {
    v39 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v39 >= v46)
    {
      goto LABEL_28;
    }

    ++v48;
    if (*(v43 + 8 * v39))
    {
      sub_1000035FC();
      v67 = v50 & v49;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1001C31D0()
{
  sub_100011690();
  if (v6 != v5 && (v7 = v5, sub_100007DC0(), v18))
  {
    v9 = 0;
    v10 = v8 + 56;
    sub_100005680();
    sub_10001BDFC();
    if (v2)
    {
      while (2)
      {
        sub_10000BAEC();
LABEL_11:
        sub_100008818();

        sub_10005AE68(v14);
        Hasher._finalize()();
        sub_100004E1C();
        do
        {
          sub_10000A7B0();
          if (((*(v4 + v15) >> v0) & 1) == 0)
          {

            goto LABEL_22;
          }

          v16 = sub_100003C28(*(v7 + 48));
          v18 = v18 && v17 == v1;
        }

        while (!v18 && (sub_1000240DC(v16, v17) & 1) == 0);

        if (v2)
        {
          continue;
        }

        break;
      }
    }

    v11 = v9;
    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v9 >= v3)
      {
        goto LABEL_22;
      }

      ++v11;
      if (*(v10 + 8 * v9))
      {
        sub_1000035FC();
        v2 = v13 & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_100029454();
  }
}

void sub_1001C32DC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v2 = a2;
  sub_100007DC0();
  if (!v44)
  {
    return;
  }

  sub_10000C4EC();
  sub_10001CC58();
  v6 = v2 + 56;
  v93 = v2 + 56;
  v94 = v2;
  if (!v7)
  {
LABEL_6:
    v8 = v5;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_153;
      }

      if (v9 >= v3)
      {
        return;
      }

      ++v8;
      if (*(v4 + 8 * v9))
      {
        v83 = v3;
        v85 = v4;
        sub_1000035FC();
        v82 = v11 & v10;
        goto LABEL_11;
      }
    }
  }

LABEL_5:
  sub_100018158();
LABEL_11:
  sub_1001CB10C();
  v14 = (v13 + 40 * v12);
  LOBYTE(v13) = *(v14 + 32);
  v15 = v14[1];
  v112 = *v14;
  v113 = v15;
  v114 = v13;
  Hasher.init(_seed:)();
  sub_1001CAE60(&v112, &v108);
  sub_100074AD8(&v110);
  Hasher._finalize()();
  sub_100004E1C();
  v18 = v17 & ~v16;
  if (((*(v6 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
LABEL_150:
    sub_1001CAEBC(&v112);
    return;
  }

  v105 = ~v16;
  v19 = v112;
  v106 = v112 + 56;
  while (1)
  {
    v20 = *(v2 + 48) + 40 * v18;
    v22 = *v20;
    v21 = *(v20 + 8);
    v23 = *(v20 + 24);
    if (*v20 != v19)
    {
      if (*(v22 + 16) == *(v19 + 16))
      {
        v97 = *(v20 + 16);
        v98 = *(v20 + 18);
        v99 = *(v20 + 19);
        v100 = *(v20 + 32);
        v24 = v22 + 56;
        sub_100005680();
        v27 = v26 & v25;
        v29 = (v28 + 63) >> 6;

        v30 = 0;
        v95 = v23;
        v101 = v18;
        v103 = v21;
        if (v27)
        {
LABEL_16:
          sub_100008698();
        }

        else
        {
LABEL_17:
          v32 = v30;
          v6 = v93;
          v2 = v94;
          do
          {
            v30 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              __break(1u);
              goto LABEL_152;
            }

            if (v30 >= v29)
            {
              goto LABEL_32;
            }

            ++v32;
          }

          while (!*(v24 + 8 * v30));
          sub_1000035FC();
          v27 = v34 & v33;
        }

        v35 = v22;
        v36 = (*(v22 + 48) + 16 * (v31 | (v30 << 6)));
        v38 = *v36;
        v37 = v36[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        sub_100004E1C();
        v41 = ~v40;
        while (1)
        {
          v42 = v39 & v41;
          if (((*(v106 + (((v39 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v39 & v41)) & 1) == 0)
          {
            break;
          }

          v43 = (*(v19 + 48) + 16 * v42);
          v44 = *v43 == v38 && v43[1] == v37;
          if (!v44)
          {
            v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v39 = v42 + 1;
            if ((v45 & 1) == 0)
            {
              continue;
            }
          }

          v23 = v95;
          v22 = v35;
          v18 = v101;
          v21 = v103;
          if (v27)
          {
            goto LABEL_16;
          }

          goto LABEL_17;
        }

        v6 = v93;
        v2 = v94;
        v18 = v101;
      }

      goto LABEL_145;
    }

    v97 = *(v20 + 16);
    v98 = *(v20 + 18);
    v99 = *(v20 + 19);
    v100 = *(v20 + 32);

LABEL_32:
    v46 = *(&v112 + 1);
    if (!v21)
    {

      v49 = v99;
      v48 = v100;
      v51 = v97;
      v50 = v98;
      if (v46)
      {
        goto LABEL_145;
      }

      goto LABEL_40;
    }

    if (!*(&v112 + 1) || (v47 = *(v21 + 16), v47 != *(*(&v112 + 1) + 16)))
    {

LABEL_144:

      goto LABEL_145;
    }

    if (v47 && v21 != *(&v112 + 1))
    {
      break;
    }

LABEL_38:

    v49 = v99;
    v48 = v100;
    v51 = v97;
    v50 = v98;
LABEL_40:
    if (v51 == 3)
    {
      if (v113 != 3)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (v113 == 3)
      {
        goto LABEL_145;
      }

      if (v51 == 2)
      {
        if (v113 != 2)
        {
          goto LABEL_145;
        }
      }

      else if (v113 == 2 || ((v113 ^ v51) & 1) != 0)
      {
        goto LABEL_145;
      }

      v80 = BYTE1(v113);
      if (v51 >> 8 == 2)
      {
        if (v80 != 2)
        {
          goto LABEL_145;
        }
      }

      else if (v80 == 2 || ((v80 ^ (v51 >> 8)) & 1) != 0)
      {
        goto LABEL_145;
      }
    }

    if (v50 == 2)
    {
      if (BYTE2(v113) != 2)
      {
        goto LABEL_145;
      }
    }

    else if (BYTE2(v113) == 2 || ((BYTE2(v113) ^ v50) & 1) != 0)
    {
      goto LABEL_145;
    }

    if (v49 == 2)
    {
      if (BYTE3(v113) != 2)
      {
        goto LABEL_145;
      }
    }

    else if (BYTE3(v113) == 2 || ((BYTE3(v113) ^ v49) & 1) != 0)
    {
      goto LABEL_145;
    }

    v81 = v114;
    if (v48)
    {
      if (v114)
      {
        goto LABEL_147;
      }
    }

    else
    {
      if (v23 != *(&v113 + 1))
      {
        v81 = 1;
      }

      if ((v81 & 1) == 0)
      {
LABEL_147:
        sub_1001CAEBC(&v112);
        v4 = v85;
        v3 = v83;
        v5 = v84;
        if (!v82)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

LABEL_145:
    v18 = (v18 + 1) & v105;
    if (((*(v6 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_150;
    }
  }

  v89 = *(&v112 + 1) + 32;
  v90 = v21 + 32;

  v52 = 0;
  for (i = v21; ; v21 = i)
  {
    if (v52 >= *(v21 + 16))
    {
      goto LABEL_154;
    }

    v53 = (v90 + 48 * v52);
    v55 = *v53;
    v54 = v53[1];
    *&v109[11] = *(v53 + 27);
    v108 = v55;
    *v109 = v54;
    if (v52 >= *(v46 + 16))
    {
      goto LABEL_155;
    }

    v91 = v52;
    v56 = (v89 + 48 * v52);
    v58 = *v56;
    v57 = v56[1];
    *&v111[11] = *(v56 + 27);
    v110 = v58;
    *v111 = v57;
    if (*(&v108 + 1))
    {
      if (!*(&v58 + 1))
      {
        goto LABEL_143;
      }

      v59 = v108 == v110 && *(&v108 + 1) == *(&v58 + 1);
      if (!v59 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_143;
      }
    }

    else if (*(&v58 + 1))
    {
      goto LABEL_143;
    }

    v60 = *v109;
    v61 = *v111;
    if (*v109)
    {
      break;
    }

    if (*v111)
    {
      goto LABEL_143;
    }

LABEL_88:
    sub_10007C18C(&v108, v107);
    sub_10007C18C(&v110, v107);
LABEL_90:
    v77 = *&v111[16];
    if (*&v109[16])
    {
      if (!*&v111[16])
      {
LABEL_142:
        sub_10007C1C4(&v110);
        sub_10007C1C4(&v108);
        goto LABEL_143;
      }

      if (*&v109[8] == *&v111[8] && *&v109[16] == *&v111[16])
      {
        sub_10007C1C4(&v110);
        sub_10007C1C4(&v108);
      }

      else
      {
        v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10007C1C4(&v110);
        sub_10007C1C4(&v108);
        if ((v79 & 1) == 0)
        {
          goto LABEL_143;
        }
      }
    }

    else
    {
      sub_10007C1C4(&v110);
      sub_10007C1C4(&v108);
      if (v77)
      {
        goto LABEL_143;
      }
    }

    if (v109[24] == 2)
    {
      if (v111[24] != 2)
      {
        goto LABEL_143;
      }
    }

    else if (v111[24] == 2 || ((v111[24] ^ v109[24]) & 1) != 0)
    {
      goto LABEL_143;
    }

    if (v109[25] == 2)
    {
      if (v111[25] != 2)
      {
        goto LABEL_143;
      }
    }

    else if (v111[25] == 2 || ((v111[25] ^ v109[25]) & 1) != 0)
    {
      goto LABEL_143;
    }

    if (v109[26] == 2)
    {
      if (v111[26] != 2)
      {
        goto LABEL_143;
      }
    }

    else if (v111[26] == 2 || ((v111[26] ^ v109[26]) & 1) != 0)
    {
      goto LABEL_143;
    }

    v52 = v91 + 1;
    if (v91 + 1 == v47)
    {

      goto LABEL_38;
    }
  }

  if (!*v111)
  {
    goto LABEL_143;
  }

  if (*v109 == *v111)
  {
    goto LABEL_88;
  }

  if (*(*v109 + 16) != *(*v111 + 16))
  {
LABEL_143:

    goto LABEL_144;
  }

  v96 = v23;
  v87 = *v109 + 64;
  v88 = v46;
  v62 = 1 << *(*v109 + 32);
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  else
  {
    v63 = -1;
  }

  v92 = v63 & *(*v109 + 64);
  sub_10007C18C(&v108, v107);
  sub_10007C18C(&v110, v107);
  v86 = (v62 + 63) >> 6;

  v64 = 0;
  v65 = v47;
  v102 = v18;
  while (v92)
  {
    v18 = v22;
    v66 = __clz(__rbit64(v92));
    v92 &= v92 - 1;
LABEL_79:
    v6 = v60;
    v70 = (*(v60 + 56) + 16 * (v66 | (v64 << 6)));
    v71 = *v70;
    v22 = v70[1];

    v60 = sub_100012A94();
    v73 = v72;

    if ((v73 & 1) == 0)
    {

      v6 = v93;
      v2 = v94;
      v18 = v102;
      goto LABEL_142;
    }

    v74 = (*(v61 + 56) + 16 * v60);
    v75 = *v74 == v71 && v74[1] == v22;
    v2 = v93;
    if (v75)
    {

      sub_100017FC8();
    }

    else
    {
      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100017FC8();
      if ((v76 & 1) == 0)
      {

        goto LABEL_142;
      }
    }
  }

  v67 = v64;
  v46 = v88;
  while (1)
  {
    v64 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v64 >= v86)
    {
      v47 = v65;

      v23 = v96;
      goto LABEL_90;
    }

    ++v67;
    if (*(v87 + 8 * v64))
    {
      v18 = v22;
      sub_1000035FC();
      v92 = v69 & v68;
      goto LABEL_79;
    }
  }

LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_1001C3B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (1)
    {
      v5 = v3[1];
      v15 = *v3;
      *v16 = v5;
      *&v16[11] = *(v3 + 27);
      v6 = v4[1];
      v17 = *v4;
      *v18 = v6;
      *&v18[11] = *(v4 + 27);
      if (*(&v15 + 1))
      {
        if (!*(&v17 + 1))
        {
          return 0;
        }

        v7 = v15 == v17 && *(&v15 + 1) == *(&v17 + 1);
        if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (*(&v17 + 1))
      {
        return 0;
      }

      if (*v16)
      {
        if (!*v18)
        {
          return 0;
        }

        sub_10007C18C(&v15, v14);
        sub_10007C18C(&v17, v14);

        sub_1001C4B20();
        v9 = v8;

        if ((v9 & 1) == 0)
        {
LABEL_49:
          sub_10007C1C4(&v17);
          sub_10007C1C4(&v15);
          return 0;
        }
      }

      else
      {
        if (*v18)
        {
          return 0;
        }

        sub_10007C18C(&v15, v14);
        sub_10007C18C(&v17, v14);
      }

      v10 = *&v18[16];
      if (*&v16[16])
      {
        if (!*&v18[16])
        {
          goto LABEL_49;
        }

        if (*&v16[8] == *&v18[8] && *&v16[16] == *&v18[16])
        {
          sub_10007C1C4(&v17);
          sub_10007C1C4(&v15);
        }

        else
        {
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10007C1C4(&v17);
          sub_10007C1C4(&v15);
          if ((v12 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        sub_10007C1C4(&v17);
        sub_10007C1C4(&v15);
        if (v10)
        {
          return 0;
        }
      }

      if (v16[24] == 2)
      {
        if (v18[24] != 2)
        {
          return 0;
        }
      }

      else if (v18[24] == 2 || ((v18[24] ^ v16[24]) & 1) != 0)
      {
        return 0;
      }

      if (v16[25] == 2)
      {
        if (v18[25] != 2)
        {
          return 0;
        }
      }

      else if (v18[25] == 2 || ((v18[25] ^ v16[25]) & 1) != 0)
      {
        return 0;
      }

      if (v16[26] == 2)
      {
        if (v18[26] != 2)
        {
          return 0;
        }
      }

      else if (v18[26] == 2 || ((v18[26] ^ v16[26]) & 1) != 0)
      {
        return 0;
      }

      v4 += 3;
      v3 += 3;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_1001C3DB8(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (a2 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_100002BC0(0, &qword_100269880, ACAccount_ptr);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C3F8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1001C4018()
{
  sub_100007DC0();
  if (v8 && v2 && v0 != v1)
  {
    v3 = (v0 + 32);
    v4 = (v1 + 32);
    while (v2)
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4++;
      v8 = v5 != v7 || v2-- == 1;
      if (v8)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1001C407C()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for RetryConfiguration(0);
  sub_100002DDC();
  __chkstk_darwin(v5);
  sub_1000052A4();
  v54 = v6;
  v7 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  __chkstk_darwin(v7 - 8);
  v55 = &v50 - v8;
  v9 = sub_10007B9A4(&qword_10026EA98, &qword_1001F1EC0);
  sub_100002DDC();
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  v13 = type metadata accessor for MercuryCacheMetadata(0);
  sub_10000605C();
  v15 = __chkstk_darwin(v14);
  v17 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v20 = (&v50 - v19);
  v21 = *(v3 + 16);
  if (v21 == *(v1 + 16) && v21 && v3 != v1)
  {
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = v3 + v22;
    v24 = v1 + v22;
    v51 = *(v18 + 72);
    v52 = v12;
    v53 = v4;
    v50 = v13;
    while (1)
    {
      sub_10000B1A8();
      sub_1001CAFE0();
      sub_1001CAFE0();
      v25 = *v20 == *v17 && v20[1] == v17[1];
      if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v56 = v24;
      v57 = v23;
      v26 = *(v9 + 48);
      v27 = v52;
      sub_10015BD34();
      sub_10015BD34();
      sub_100012B68(v27);
      if (v25)
      {
        sub_100012B68(v27 + v26);
        if (!v25)
        {
          goto LABEL_26;
        }

        sub_10000A00C(v27, &qword_10026E7C8, &unk_1001EE2A0);
        sub_10000BCC0();
        sub_1001CB03C(v17, v28);
        v29 = sub_100015C90();
        sub_1001CB03C(v29, v30);
      }

      else
      {
        v31 = v9;
        v32 = v55;
        sub_10015BD34();
        sub_100012B68(v27 + v26);
        if (v33)
        {
          sub_1001CB03C(v32, type metadata accessor for RetryConfiguration);
LABEL_26:
          v45 = &qword_10026EA98;
          v46 = &qword_1001F1EC0;
LABEL_27:
          sub_10000A00C(v27, v45, v46);
          break;
        }

        v34 = v54;
        sub_1001CB094();
        if (*v32 != *v34 || *(v32 + 8) != *(v34 + 8) || *(v32 + 16) != *(v34 + 16))
        {
          v42 = sub_100004A3C();
          v44 = v43;
          sub_1001CB03C(v42, v43);
          sub_1001CB03C(v32, v44);
          v45 = &qword_10026E7C8;
          v46 = &unk_1001EE2A0;
          goto LABEL_27;
        }

        v35 = static Date.== infix(_:_:)();
        v36 = sub_100004A3C();
        v38 = v37;
        sub_1001CB03C(v36, v37);
        sub_1001CB03C(v32, v38);
        sub_10000A00C(v27, &qword_10026E7C8, &unk_1001EE2A0);
        sub_10000BCC0();
        sub_1001CB03C(v17, v39);
        v40 = sub_100015C90();
        sub_1001CB03C(v40, v41);
        v9 = v31;
        if ((v35 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v24 = v56 + v51;
      v23 = v57 + v51;
      if (!--v21)
      {
        goto LABEL_29;
      }
    }

    sub_10000BCC0();
    sub_1001CB03C(v17, v47);
    v48 = sub_100015C90();
    sub_1001CB03C(v48, v49);
  }

LABEL_29:
  sub_100005F14();
}

void sub_1001C450C()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v38 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  sub_10000605C();
  v5 = __chkstk_darwin(v4);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v10 = *(v3 + 16);
  if (v10 == *(v1 + 16) && v10 && v3 != v1)
  {
    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = v3 + v11;
    v13 = v1 + v11;
    v36 = *(v7 + 72);
    v37 = &v36 - v8;
    while (1)
    {
      sub_1001CAFE0();
      sub_1001CAFE0();
      sub_100015C90();
      if ((static URL.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v14 = *(v38 + 20);
      v15 = &v9[v14];
      if (v9[v14])
      {
        if (v9[v14] == 1)
        {
          v16 = 0xE400000000000000;
          v17 = 1936748641;
        }

        else
        {
          v16 = 0xE700000000000000;
          v17 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v16 = 0xE700000000000000;
        v17 = 0x7373656E746966;
      }

      v18 = (v39 + v14);
      v19 = *v18;
      if (*v18)
      {
        if (v19 == 1)
        {
          v20 = 1936748641;
        }

        else
        {
          v20 = 0x6E776F6E6B6E75;
        }

        if (v19 == 1)
        {
          v21 = 0xE400000000000000;
        }

        else
        {
          v21 = 0xE700000000000000;
        }
      }

      else
      {
        v21 = 0xE700000000000000;
        v20 = 0x7373656E746966;
      }

      v22 = *(v15 + 1);
      v23 = *(v15 + 2);
      v24 = *(v18 + 1);
      v25 = *(v18 + 2);
      if (v17 == v20 && v16 == v21)
      {

        v9 = v37;
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v9 = v37;
        if ((v27 & 1) == 0)
        {
          break;
        }
      }

      if (v22 == v24 && v23 == v25)
      {
        sub_10000AA9C();
        sub_1001CB03C(v39, v30);
        v31 = sub_100015C90();
        sub_1001CB03C(v31, v32);
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1001CB03C(v39, type metadata accessor for MediaCatalogSyncPageMetadata);
        sub_1001CB03C(v9, type metadata accessor for MediaCatalogSyncPageMetadata);
        if ((v29 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v13 += v36;
      v12 += v36;
      if (!--v10)
      {
        goto LABEL_36;
      }
    }

    sub_10000AA9C();
    sub_1001CB03C(v39, v33);
    v34 = sub_100015C90();
    sub_1001CB03C(v34, v35);
  }

LABEL_36:
  sub_100005F14();
}

uint64_t sub_1001C4818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_1001C48BC()
{
  sub_100003D74();
  v3 = *(v2 + 16);
  if (v3 == *(v4 + 16) && v3 && (sub_100004E28(), v5 != v6) && *(v1 + 32) == *(v0 + 32))
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(v0 + v8 + 48);
      if (*(v1 + v8 + 48))
      {
        if (!*(v0 + v8 + 48))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (*(v1 + v8 + 40) != *(v0 + v8 + 40))
        {
          v9 = 1;
        }

        if (v9)
        {
          goto LABEL_17;
        }
      }

      sub_1001C4B20();
      v11 = v10;

      if ((v11 & 1) == 0 || v3 - 1 == v7)
      {
        goto LABEL_17;
      }

      if (++v7 >= v3)
      {
        break;
      }

      v12 = v1 + v8;
      v13 = v0 + v8;
      v8 += 32;
      if (*(v12 + 64) != *(v13 + 64))
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_100005F14();
  }
}

void sub_1001C49D8()
{
  sub_100003D74();
  if (v3 != v4 && (v5 = v4, v6 = v3, sub_100007DC0(), v16))
  {
    v7 = 0;
    sub_100004E5C();
    sub_100011B74();
    if (v2)
    {
      while (1)
      {
        sub_100008698();
LABEL_11:
        sub_10003D37C();

        v11 = sub_100012A94();
        v13 = v12;

        if ((v13 & 1) == 0 || (v14 = *(*(v5 + 56) + 8 * v11), v15 = *(v14 + 16), v15 != *(v0 + 16)))
        {
LABEL_28:

          goto LABEL_29;
        }

        v16 = !v15 || v14 == v0;
        if (!v16)
        {
          break;
        }

LABEL_25:

        if (!v2)
        {
          goto LABEL_6;
        }
      }

      v17 = (v14 + 40);
      v18 = (v0 + 40);
      while (v15)
      {
        v19 = *(v17 - 1) == *(v18 - 1) && *v17 == *v18;
        if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_28;
        }

        v17 += 2;
        v18 += 2;
        if (!--v15)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
      v8 = v7;
      while (1)
      {
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v7 >= v1)
        {
          goto LABEL_29;
        }

        ++v8;
        if (*(v6 + 64 + 8 * v7))
        {
          sub_1000035FC();
          v2 = v10 & v9;
          goto LABEL_11;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    sub_100005F14();
  }
}

void sub_1001C4B20()
{
  sub_10001CB6C();
  if (v3 != v4 && (sub_100007DC0(), v11))
  {
    v5 = 0;
    sub_100004E5C();
    sub_10000A230();
    while (v6)
    {
      sub_100012E18();
LABEL_12:
      sub_10000A8F0();

      sub_100012A94();
      sub_100058368();
      if ((v1 & 1) == 0)
      {

        goto LABEL_22;
      }

      v9 = sub_1000068E8();
      v11 = v11 && v10 == v0;
      if (v11)
      {

        sub_100003E90();
      }

      else
      {
        v12 = sub_10001646C(v9, v10);

        sub_100003E90();
        if ((v12 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v5 >= v2)
      {
        goto LABEL_22;
      }

      sub_100048FCC();
      if (v8)
      {
        sub_1000035FC();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_100006778();
  }
}

void sub_1001C4C1C()
{
  sub_100003D74();
  if (v3 != v4 && (v5 = v3, sub_100007DC0(), v6))
  {
    v7 = 0;
    sub_100004E5C();
    sub_100011B74();
    while (v2)
    {
      sub_100008698();
LABEL_12:
      sub_10003D37C();

      sub_100012A94();
      v12 = v11;

      if ((v12 & 1) == 0)
      {

        goto LABEL_17;
      }

      v14 = sub_1001C4FB8(v13, v0);

      if ((v14 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v8 = v7;
    while (1)
    {
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v7 >= v1)
      {
        goto LABEL_17;
      }

      ++v8;
      if (*(v5 + 64 + 8 * v7))
      {
        sub_1000035FC();
        v2 = v10 & v9;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_100005F14();
  }
}

void sub_1001C4D24(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a2;
    sub_100007DC0();
    if (v25)
    {
      v4 = 0;
      sub_100004E5C();
      v8 = v7 & v6;
      v10 = (v9 + 63) >> 6;
      v32 = v5;
      v33 = v3;
      while (v8)
      {
        v11 = __clz(__rbit64(v8));
        v12 = (v8 - 1) & v8;
LABEL_12:
        v17 = v11 | (v4 << 6);
        v18 = *(*(v5 + 48) + 16 * v17);
        v19 = *(v5 + 56) + 32 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v38 = *(v19 + 16);
        v37 = *(v19 + 24);

        sub_100012A94();
        sub_100058368();
        if ((v2 & 1) == 0)
        {
          goto LABEL_48;
        }

        v22 = *(v3 + 56) + 32 * v18;
        v23 = *v22;
        v24 = *(v22 + 8);
        v34 = *(v22 + 24);
        v35 = v12;
        v36 = *(v22 + 16);
        if (*v22)
        {
          if (!v20)
          {
            goto LABEL_50;
          }

          v2 = *(v23 + 16);
          if (v2 != *(v20 + 16))
          {
LABEL_48:

            goto LABEL_50;
          }

          if (v2)
          {
            v25 = v23 == v20;
          }

          else
          {
            v25 = 1;
          }

          if (!v25)
          {
            v26 = (v23 + 40);
            v27 = (v20 + 40);
            while (v2)
            {
              v28 = *(v26 - 1) == *(v27 - 1) && *v26 == *v27;
              if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_48;
              }

              v26 += 2;
              v27 += 2;
              if (!--v2)
              {
                goto LABEL_28;
              }
            }

            goto LABEL_54;
          }

LABEL_28:
        }

        else if (v20)
        {
          goto LABEL_48;
        }

        if (v24)
        {
          if (!v21)
          {
            goto LABEL_49;
          }

          v2 = *(v24 + 16);
          if (v2 != *(v21 + 16))
          {
            goto LABEL_49;
          }

          if (v2 && v24 != v21)
          {
            v29 = (v24 + 40);
            v30 = (v21 + 40);
            while (1)
            {
              v31 = *(v29 - 1) == *(v30 - 1) && *v29 == *v30;
              if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                break;
              }

              v29 += 2;
              v30 += 2;
              if (!--v2)
              {
                goto LABEL_44;
              }
            }

LABEL_49:

LABEL_50:

            return;
          }
        }

        else if (v21)
        {
          goto LABEL_49;
        }

LABEL_44:

        if (v36 == v38)
        {
          v5 = v32;
          v3 = v33;
          v8 = v35;
          if (((v37 ^ v34) & 1) == 0)
          {
            continue;
          }
        }

        return;
      }

      v13 = v4;
      while (1)
      {
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v4 >= v10)
        {
          return;
        }

        sub_100048FCC();
        if (v14)
        {
          sub_1000035FC();
          v12 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
      __break(1u);
    }
  }
}

uint64_t sub_1001C4FB8(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 16 * v12 + 8);
    memcpy(__dst, (*(v3 + 56) + 96 * v12), sizeof(__dst));
    v30 = __dst[3];
    v31 = __dst[1];
    v27 = __dst[2];
    v28 = __dst[0];
    v29 = __dst[5];
    v26 = __dst[4];

    sub_10007BA94(__dst, v33);
    if (!v13)
    {
      return 1;
    }

    __dst[0] = v28;
    __dst[1] = v31;
    __dst[2] = v27;
    __dst[3] = v30;
    __dst[4] = v26;
    __dst[5] = v29;
    v14 = sub_100012A94();
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      goto LABEL_51;
    }

    memcpy(v33, (*(a2 + 56) + 96 * v14), sizeof(v33));
    v17 = v33[0] == *&__dst[0] && v33[1] == *(&__dst[0] + 1);
    if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_51;
    }

    v18 = v33[2] == *&__dst[1] && v33[3] == *(&__dst[1] + 1);
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_51;
    }

    v19 = v33[4] == *&__dst[2] && v33[5] == *(&__dst[2] + 1);
    if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_51;
    }

    v20 = *(v33[6] + 16);
    if (v20 != *(*&__dst[3] + 16))
    {
      goto LABEL_51;
    }

    if (v20 && v33[6] != *&__dst[3])
    {
      v21 = (v33[6] + 32);
      v22 = (*&__dst[3] + 32);
      while (*v21 == *v22)
      {
        ++v21;
        ++v22;
        if (!--v20)
        {
          goto LABEL_36;
        }
      }

LABEL_51:
      sub_10007BAF0(__dst);
      return 0;
    }

LABEL_36:
    if (v33[7] != *(&__dst[3] + 1))
    {
      goto LABEL_51;
    }

    if (v33[9])
    {
      if ((BYTE8(__dst[4]) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if ((BYTE8(__dst[4]) & 1) != 0 || *&v33[8] != *&__dst[4])
    {
      goto LABEL_51;
    }

    if (BYTE1(v33[9]) != BYTE9(__dst[4]) || *&v33[10] != *&__dst[5])
    {
      goto LABEL_51;
    }

    v23 = *(&__dst[5] + 1);
    if (v33[11])
    {
      if (!*(&__dst[5] + 1))
      {
        goto LABEL_51;
      }

      sub_10007BA94(v33, v32);

      sub_1001C4B20();
      v25 = v24;

      sub_10007BAF0(v33);
      result = sub_10007BAF0(__dst);
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = sub_10007BAF0(__dst);
      if (v23)
      {
        return 0;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

void sub_1001C52E8()
{
  sub_100003D74();
  if (v1 != v2 && (v3 = v2, v4 = v1, sub_100007DC0(), v5))
  {
    v6 = 0;
    sub_100004E5C();
    sub_10001B294();
    v8 = v7 >> 6;
    while (v0)
    {
      sub_100019E2C();
LABEL_12:
      v13 = *(*(v4 + 56) + 8 * (v9 | (v6 << 6)));

      v14 = v13;
      v15 = sub_100012A94();
      v17 = v16;

      if ((v17 & 1) == 0)
      {

        goto LABEL_17;
      }

      sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
      v18 = *(*(v3 + 56) + 8 * v15);
      v19 = static NSObject.== infix(_:_:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v10 = v6;
    while (1)
    {
      v6 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v6 >= v8)
      {
        goto LABEL_17;
      }

      ++v10;
      if (*(v4 + 64 + 8 * v6))
      {
        sub_1000035FC();
        v0 = v12 & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_100005F14();
  }
}

void sub_1001C5424()
{
  sub_10001CB6C();
  if (v1 != v2 && (sub_100007DC0(), v16))
  {
    v3 = 0;
    sub_100004E5C();
    sub_10000A230();
    while (v4)
    {
      sub_100012E18();
LABEL_12:
      v9 = v6 | (v3 << 6);
      v10 = *(*(v5 + 56) + 16 * v9 + 8);
      v11 = *(*(v5 + 48) + 8 * v9);

      sub_100049FA8(v11);
      v13 = v12;

      if ((v13 & 1) == 0)
      {

        goto LABEL_22;
      }

      v14 = sub_1000068E8();
      v16 = v16 && v15 == v10;
      if (v16)
      {

        sub_100003E90();
      }

      else
      {
        v17 = sub_10001646C(v14, v15);

        sub_100003E90();
        if ((v17 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v7 = v3;
    while (1)
    {
      v3 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v3 >= v0)
      {
        goto LABEL_22;
      }

      sub_100048FCC();
      if (v8)
      {
        sub_1000035FC();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_100006778();
  }
}

unint64_t sub_1001C5540()
{
  result = qword_1002720F0;
  if (!qword_1002720F0)
  {
    sub_10007BC70(&qword_1002720E8, &qword_1001F1D50);
    sub_1001C55C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002720F0);
  }

  return result;
}

unint64_t sub_1001C55C4()
{
  result = qword_1002720F8;
  if (!qword_1002720F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002720F8);
  }

  return result;
}

uint64_t sub_1001C5618(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1001C5658()
{
  result = qword_100272100;
  if (!qword_100272100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272100);
  }

  return result;
}

uint64_t sub_1001C56AC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  sub_100074AD8(&v58);
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v54 = v4 + 56;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_100:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v56 = *v44;
    sub_1001CAE60(a2, &v58);
    sub_1001C7E9C(a2, v7, isUniquelyReferenced_nonNull_native);
    *v44 = v56;
    v38 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v38;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }

  v53 = ~v6;
  v50 = v4;
  while (1)
  {
    v8 = *(v4 + 48) + 40 * v7;
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    v11 = *(v8 + 18);
    v12 = *(v8 + 19);
    v13 = *(v8 + 24);
    v52 = *(v8 + 32);

    sub_1001C31D0();
    if ((v14 & 1) == 0)
    {
LABEL_10:

LABEL_11:

      goto LABEL_12;
    }

    v51 = v13;
    v15 = *(a2 + 8);
    if (v9)
    {
      if (!v15)
      {
        goto LABEL_10;
      }

      v16 = *(v9 + 16);
      if (v16 != *(v15 + 16))
      {

LABEL_21:

LABEL_22:
        v4 = v50;
        goto LABEL_12;
      }

      if (v16 && v9 != v15)
      {

        v21 = 0;
        v46 = v16 - 1;
        v47 = a2;
        v22 = 32;
        while (1)
        {
          if (v21 >= *(v9 + 16))
          {
            __break(1u);
LABEL_103:
            __break(1u);
            return result;
          }

          v24 = *(v9 + v22);
          v23 = *(v9 + v22 + 16);
          *&v57[11] = *(v9 + v22 + 27);
          v56 = v24;
          *v57 = v23;
          if (v21 >= *(v15 + 16))
          {
            goto LABEL_103;
          }

          v49 = v21;
          v26 = *(v15 + v22);
          v25 = *(v15 + v22 + 16);
          *&v59[11] = *(v15 + v22 + 27);
          v58 = v26;
          *v59 = v25;
          if (*(&v56 + 1))
          {
            if (!*(&v26 + 1))
            {
              goto LABEL_97;
            }

            v27 = v56 == v58 && *(&v56 + 1) == *(&v26 + 1);
            if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_97;
            }
          }

          else if (*(&v26 + 1))
          {
            goto LABEL_97;
          }

          v48 = v22;
          if (*v57)
          {
            if (!*v59)
            {
              goto LABEL_97;
            }

            sub_10007C18C(&v56, v55);
            sub_10007C18C(&v58, v55);

            sub_1001C4B20();
            v29 = v28;

            if ((v29 & 1) == 0)
            {
              sub_10007C1C4(&v58);
              sub_10007C1C4(&v56);
LABEL_97:

              a2 = v47;
              goto LABEL_22;
            }
          }

          else
          {
            if (*v59)
            {
              goto LABEL_97;
            }

            sub_10007C18C(&v56, v55);
            sub_10007C18C(&v58, v55);
          }

          v30 = *&v59[16];
          if (*&v57[16])
          {
            a2 = v47;
            if (!*&v59[16])
            {
              sub_10007C1C4(&v58);
              sub_10007C1C4(&v56);
LABEL_99:

              goto LABEL_21;
            }

            if (*&v57[8] == *&v59[8] && *&v57[16] == *&v59[16])
            {
              sub_10007C1C4(&v58);
              result = sub_10007C1C4(&v56);
            }

            else
            {
              v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_10007C1C4(&v58);
              result = sub_10007C1C4(&v56);
              if ((v32 & 1) == 0)
              {
                goto LABEL_99;
              }
            }
          }

          else
          {
            sub_10007C1C4(&v58);
            result = sub_10007C1C4(&v56);
            a2 = v47;
            if (v30)
            {
              goto LABEL_99;
            }
          }

          if (v57[24] == 2)
          {
            v33 = v49;
            v4 = v50;
            if (v59[24] != 2)
            {
              goto LABEL_83;
            }
          }

          else
          {
            v33 = v49;
            v4 = v50;
            if (v59[24] == 2 || ((v59[24] ^ v57[24]) & 1) != 0)
            {
LABEL_83:

              goto LABEL_11;
            }
          }

          if (v57[25] == 2)
          {
            if (v59[25] != 2)
            {
              goto LABEL_83;
            }
          }

          else if (v59[25] == 2 || ((v59[25] ^ v57[25]) & 1) != 0)
          {
            goto LABEL_83;
          }

          if (v57[26] == 2)
          {
            if (v59[26] != 2)
            {
              goto LABEL_83;
            }
          }

          else if (v59[26] == 2 || ((v59[26] ^ v57[26]) & 1) != 0)
          {
            goto LABEL_83;
          }

          if (v46 == v33)
          {

            goto LABEL_15;
          }

          v22 = v48 + 48;
          v21 = v33 + 1;
        }
      }

      v4 = v50;
    }

    else
    {

      if (v15)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v17 = *(a2 + 16);
    v18 = *(a2 + 16);
    if (v10 == 3)
    {
      if (v18 != 3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v18 == 3)
      {
        goto LABEL_12;
      }

      if (v10 == 2)
      {
        if (*(a2 + 16) != 2)
        {
          goto LABEL_12;
        }
      }

      else if (*(a2 + 16) == 2 || ((v17 ^ v10) & 1) != 0)
      {
        goto LABEL_12;
      }

      v35 = v17 >> 8;
      if (v10 >> 8 == 2)
      {
        if (v35 != 2)
        {
          goto LABEL_12;
        }
      }

      else if (v35 == 2 || ((v35 ^ (v10 >> 8)) & 1) != 0)
      {
        goto LABEL_12;
      }
    }

    v19 = *(a2 + 18);
    if (v11 == 2)
    {
      if (v19 != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v19 == 2 || ((v19 ^ v11) & 1) != 0)
    {
      goto LABEL_12;
    }

    v34 = *(a2 + 19);
    if (v12 == 2)
    {
      if (v34 != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v34 == 2 || ((v34 ^ v12) & 1) != 0)
    {
      goto LABEL_12;
    }

    v36 = *(a2 + 32);
    if ((v52 & 1) == 0)
    {
      break;
    }

    if (*(a2 + 32))
    {
      goto LABEL_101;
    }

LABEL_12:
    v7 = (v7 + 1) & v53;
    if (((*(v54 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_100;
    }
  }

  if (v51 != *(a2 + 24))
  {
    v36 = 1;
  }

  if (v36)
  {
    goto LABEL_12;
  }

LABEL_101:
  sub_1001CAEBC(a2);
  v39 = *(v4 + 48) + 40 * v7;
  v41 = *v39;
  v40 = *(v39 + 8);
  v42 = *(v39 + 16);
  v43 = *(v39 + 24);
  LOBYTE(v39) = *(v39 + 32);
  *a1 = v41;
  *(a1 + 8) = v40;
  *(a1 + 16) = v42;
  *(a1 + 24) = v43;
  *(a1 + 32) = v39;

  return 0;
}

void sub_1001C5CA4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t __src, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_100003FE8();
  a31 = v33;
  a32 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v59 = v41;
  v42 = *v32;
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_100079558(&__src, v36);
  Hasher._finalize()();
  sub_100004E1C();
  v45 = v44 & ~v43;
  if ((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
  {
    v46 = ~v43;
    while (1)
    {
      v47 = (*(v42 + 48) + 24 * v45);
      v48 = *v47 == v40 && v47[1] == v38;
      if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_1001C2AB4(v49, v36);
        v51 = v50;

        if (v51)
        {
          break;
        }
      }

      v45 = (v45 + 1) & v46;
      if (((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v56 = (*(v42 + 48) + 24 * v45);
    v57 = v56[1];
    v58 = v56[2];
    *v59 = *v56;
    v59[1] = v57;
    v59[2] = v58;
  }

  else
  {
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __src = *v32;

    sub_10004EF2C();
    sub_1001C8494(v53, v54, v55, v45, isUniquelyReferenced_nonNull_native);
    *v32 = __src;
    *v59 = v40;
    v59[1] = v38;
    v59[2] = v36;
  }

  sub_100006150();
}

void sub_1001C5E58()
{
  sub_100003D74();
  v2 = v1;
  v25 = v3;
  v4 = type metadata accessor for Treatment(0);
  sub_100002CC4();
  v6 = __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v23 = &v22 - v9;
  v24 = v0;
  v10 = *v0;
  Hasher.init(_seed:)();
  v11 = (v2 + *(v4 + 20));
  v12 = v11[1];
  v26 = *v11;
  String.hash(into:)();
  Hasher._finalize()();
  sub_100004E1C();
  v15 = v14 & ~v13;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v13;
    while (1)
    {
      sub_10000C254();
      sub_1001CAFE0();
      if (static Date.== infix(_:_:)())
      {
        v17 = &v8[*(v4 + 20)];
        v18 = *v17 == v26 && *(v17 + 1) == v12;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static Date.== infix(_:_:)())
        {
          break;
        }
      }

      sub_1001CB03C(v8, type metadata accessor for Treatment);
      v15 = (v15 + 1) & v16;
      if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_1001CB03C(v8, type metadata accessor for Treatment);
    sub_1001CB03C(v2, type metadata accessor for Treatment);
    sub_10000C254();
    sub_1001CAFE0();
  }

  else
  {
LABEL_11:
    v19 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000C254();
    v21 = v23;
    sub_1001CAFE0();
    v27 = *v19;
    sub_1001C8668(v21, v15, isUniquelyReferenced_nonNull_native);
    *v19 = v27;
    sub_1001CB094();
  }

  sub_100005F14();
}

void sub_1001C60E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10001CB6C();
  v24 = v22;
  v25 = v23;
  v27 = v26;
  v28 = *v22;
  if ((*v22 & 0xC000000000000001) == 0)
  {
    sub_100002BC0(0, &qword_10026E458, AMSTreatment_ptr);
    NSObject._rawHashValue(seed:)(*(v28 + 40));
    sub_100004E1C();
    v34 = ~v33;
    while (1)
    {
      v35 = v32 & v34;
      if (((*(v28 + 56 + (((v32 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v34)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *v24;
        v41 = v25;
        sub_1001C8910(v41, v35, isUniquelyReferenced_nonNull_native);
        *v24 = v45;
        goto LABEL_16;
      }

      v36 = *(*(v28 + 48) + 8 * v35);
      v37 = static NSObject.== infix(_:_:)();

      if (v37)
      {
        break;
      }

      v32 = v35 + 1;
    }

    v43 = *(*(v28 + 48) + 8 * v35);
    *v27 = v43;
    v44 = v43;
    goto LABEL_18;
  }

  if (v28 < 0)
  {
    v29 = *v22;
  }

  else
  {
    v29 = v28 & 0xFFFFFFFFFFFFFF8;
  }

  v30 = v23;

  v31 = __CocoaSet.member(for:)();

  if (v31)
  {

    sub_100002BC0(0, &qword_10026E458, AMSTreatment_ptr);
    swift_dynamicCast();
    *v27 = a10;
LABEL_18:
    sub_100006778();
    return;
  }

  v38 = __CocoaSet.count.getter();
  if (!__OFADD__(v38, 1))
  {
    v39 = sub_1001C7008(v29, v38 + 1);
    v40 = v39[2];
    if (v39[3] <= v40)
    {
      sub_1001C7BF4(v40 + 1);
    }

    v41 = v30;
    sub_1001C7E18(v41, v39);

    *v24 = v39;
LABEL_16:
    *v27 = v41;
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_1001C62E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v65 = a5;
  v7 = a1;
  sub_1001CAF14(a1, a2, a3, &v57);
  v8 = v58;
  v9 = v60;
  v10 = v61;
  v48 = v62;
  v49 = v57;
  v50 = v63;
  v42 = v59;
  v11 = (v59 + 64) >> 6;
  v44 = v7;

  v43 = a3;

  v46 = v11;
  v47 = v8;
  if (v10)
  {
    while (1)
    {
      v12 = v9;
LABEL_7:
      v14 = __clz(__rbit64(v10)) | (v12 << 6);
      v15 = (*(v49 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(v49 + 56) + 8 * v14);
      v54 = *v15;
      v55 = v16;
      v56 = v17;

      v48(&v51, &v54);

      v19 = v51;
      v18 = v52;
      v20 = v53;
      v21 = *v65;
      v27 = sub_100012A94();
      v28 = v21[2];
      v29 = (v22 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v22;
      if (v21[3] >= v30)
      {
        if ((a4 & 1) == 0)
        {
          sub_10007B9A4(&qword_100272128, &qword_1001F1D80);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        sub_1001C678C(v30, a4 & 1, &unk_100272130, &unk_1001F1D88, v23, v24, v25, v26, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
        v32 = sub_100012A94();
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_23;
        }

        v27 = v32;
      }

      v10 &= v10 - 1;
      v34 = *v65;
      if (v31)
      {
        v35 = *(v34[7] + 8 * v27);

        *(v34[7] + 8 * v27) = v35;
      }

      else
      {
        v34[(v27 >> 6) + 8] |= 1 << v27;
        v36 = (v34[6] + 16 * v27);
        *v36 = v19;
        v36[1] = v18;
        *(v34[7] + 8 * v27) = v20;
        v37 = v34[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_22;
        }

        v34[2] = v39;
      }

      a4 = 1;
      v9 = v12;
      v11 = v46;
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
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1001C65AC()
{
  sub_10001CB6C();
  v4 = v0;
  v6 = v5;
  sub_100007344();
  sub_10007B9A4(&qword_10026A290, &qword_1001F1E00);
  sub_100005DB0();
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!v1[2])
  {
LABEL_29:

LABEL_30:
    *v4 = v7;
    sub_100006778();
    return;
  }

  v30 = v4;
  v8 = 0;
  v9 = v1 + 8;
  sub_100005680();
  sub_100011B74();
  v10 = v7 + 8;
  if (!v3)
  {
LABEL_4:
    v12 = v8;
    while (1)
    {
      v8 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v2)
      {
        break;
      }

      ++v12;
      if (v9[v8])
      {
        sub_1000035FC();
        v3 = v14 & v13;
        goto LABEL_9;
      }
    }

    if ((v6 & 1) == 0)
    {

      v4 = v30;
      goto LABEL_30;
    }

    sub_10000ADF4();
    v4 = v30;
    if (v25 != v26)
    {
      sub_100004E1C();
      *v9 = v27;
    }

    else
    {
      v28 = sub_10000B110();
      sub_1000575CC(v28, v29, (v1 + 8));
    }

    v1[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    sub_100008698();
LABEL_9:
    v15 = v11 | (v8 << 6);
    v16 = *(v1[6] + 4 * v15);
    v17 = *(v1[7] + 8 * v15);
    if ((v6 & 1) == 0)
    {
      swift_unknownObjectRetain();
    }

    static Hasher._hash(seed:bytes:count:)();
    sub_10000A574();
    sub_100016800();
    if (v18)
    {
      break;
    }

    sub_1000074F4();
LABEL_21:
    sub_100005890();
    *(v10 + v22) |= v23;
    *(v7[6] + 4 * v24) = v16;
    *(v7[7] + 8 * v24) = v17;
    ++v7[2];
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_100022250();
  while (1)
  {
    sub_1000222D4();
    if (v18)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    if (v10[v19] != -1)
    {
      sub_100003F60();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1001C678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_100003FE8();
  v33 = v32;
  v34 = *v32;
  v68 = v37;
  sub_10007B9A4(v35, v36);
  v38 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v34 + 16))
  {
LABEL_29:

LABEL_30:
    *v33 = v38;
    sub_100006150();
    return;
  }

  v67 = v34;
  v39 = 0;
  v40 = (v34 + 64);
  sub_100005680();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;
  v46 = v38 + 64;
  if ((v42 & v41) == 0)
  {
LABEL_4:
    v48 = v39;
    while (1)
    {
      v39 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v39 >= v45)
      {
        break;
      }

      ++v48;
      if (v40[v39])
      {
        sub_1000035FC();
        v43 = v50 & v49;
        goto LABEL_9;
      }
    }

    if ((v68 & 1) == 0)
    {

      v33 = v32;
      goto LABEL_30;
    }

    v33 = v32;
    if (1 << *(v34 + 32) >= 64)
    {
      v65 = sub_10000B110();
      sub_1000575CC(v65, v66, v40);
    }

    else
    {
      sub_100004E1C();
      *v40 = v64;
    }

    *(v34 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v47 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
LABEL_9:
    v51 = v47 | (v39 << 6);
    v52 = (*(v34 + 48) + 16 * v51);
    v53 = *v52;
    v54 = v52[1];
    v55 = *(*(v34 + 56) + 8 * v51);
    if ((v68 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    sub_10000A574();
    sub_100016800();
    if (v56)
    {
      break;
    }

    sub_1000074F4();
LABEL_21:
    sub_100005890();
    *(v46 + v60) |= v61;
    v63 = (*(v38 + 48) + 16 * v62);
    *v63 = v53;
    v63[1] = v54;
    *(*(v38 + 56) + 8 * v62) = v55;
    sub_100012FD4();
    v34 = v67;
    if (!v43)
    {
      goto LABEL_4;
    }
  }

  sub_100022250();
  while (1)
  {
    sub_1000222D4();
    if (v56)
    {
      if (v58)
      {
        break;
      }
    }

    if (v57 == v59)
    {
      v57 = 0;
    }

    if (*(v46 + 8 * v57) != -1)
    {
      sub_100003F60();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1001C699C(uint64_t a1, char a2)
{
  v5 = v2;
  sub_100007344();
  sub_10007B9A4(&qword_10026C910, &qword_1001EBDF0);
  sub_100005DB0();
  v35 = a2;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!v3[2])
  {
LABEL_30:

LABEL_31:
    *v5 = v7;
    return;
  }

  v8 = 0;
  v9 = v3 + 8;
  sub_100005680();
  sub_10001B294();
  v11 = v10 >> 6;
  v12 = v7 + 64;
  if (!v4)
  {
LABEL_4:
    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v11)
      {
        break;
      }

      ++v14;
      if (v9[v8])
      {
        sub_1000035FC();
        v4 = v16 & v15;
        goto LABEL_9;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v2;
      goto LABEL_31;
    }

    sub_10000ADF4();
    v5 = v2;
    if (v30 != v31)
    {
      sub_100004E1C();
      *v9 = v32;
    }

    else
    {
      v33 = sub_10000B110();
      sub_1000575CC(v33, v34, (v3 + 8));
    }

    v3[2] = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_100019E2C();
LABEL_9:
    v17 = v13 | (v8 << 6);
    v18 = (v3[6] + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v3[7] + 32 * v17);
    if (v35)
    {
      sub_100002C4C(v21, v36);
    }

    else
    {
      sub_100011BAC(v21, v36);
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    sub_10000A574();
    sub_100016800();
    if (v22)
    {
      break;
    }

    sub_1000074F4();
LABEL_22:
    sub_100005890();
    *(v12 + v26) |= v27;
    v29 = (*(v7 + 48) + 16 * v28);
    *v29 = v19;
    v29[1] = v20;
    sub_100002C4C(v36, (*(v7 + 56) + 32 * v28));
    sub_100012FD4();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  sub_100022250();
  while (1)
  {
    sub_1000222D4();
    if (v22)
    {
      if (v24)
      {
        break;
      }
    }

    if (v23 == v25)
    {
      v23 = 0;
    }

    if (*(v12 + 8 * v23) != -1)
    {
      sub_100003F60();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1001C6BAC()
{
  sub_100003D74();
  v2 = v0;
  v4 = v3;
  v42 = type metadata accessor for URL();
  sub_100002CC4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000052A4();
  v41 = v8;
  v9 = *v0;
  sub_10007B9A4(&qword_100272190, &unk_1001F1EB0);
  sub_100005DB0();
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!v9[2])
  {
LABEL_30:

LABEL_31:
    *v2 = v10;
    sub_100005F14();
    return;
  }

  v37 = v2;
  v11 = 0;
  v12 = v9 + 8;
  sub_100005680();
  sub_10001B294();
  v14 = v13 >> 6;
  v38 = (v6 + 16);
  v39 = v6;
  v15 = (v6 + 32);
  v16 = v10 + 8;
  if (!v1)
  {
LABEL_4:
    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v11 >= v14)
      {
        break;
      }

      ++v18;
      if (v12[v11])
      {
        sub_1000035FC();
        v1 = v20 & v19;
        goto LABEL_9;
      }
    }

    if ((v40 & 1) == 0)
    {

      v2 = v37;
      goto LABEL_31;
    }

    sub_10000ADF4();
    v2 = v37;
    if (v32 != v33)
    {
      sub_100004E1C();
      *v12 = v34;
    }

    else
    {
      v35 = sub_10000B110();
      sub_1000575CC(v35, v36, (v9 + 8));
    }

    v9[2] = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_100019E2C();
LABEL_9:
    v21 = v17 | (v11 << 6);
    v22 = *(v9[6] + 8 * v21);
    v23 = *(v6 + 72);
    v24 = v9[7] + v23 * v21;
    if (v40)
    {
      (*v15)(v41, v24, v42);
    }

    else
    {
      (*v38)(v41, v24, v42);
    }

    static Hasher._hash(seed:_:)();
    sub_10000A574();
    sub_100016800();
    if (v25)
    {
      break;
    }

    sub_1000074F4();
LABEL_22:
    sub_100005890();
    *(v16 + v29) |= v30;
    *(v10[6] + 8 * v31) = v22;
    (*v15)(v10[7] + v23 * v31, v41, v42);
    ++v10[2];
    v6 = v39;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  sub_100022250();
  while (1)
  {
    sub_1000222D4();
    if (v25)
    {
      if (v27)
      {
        break;
      }
    }

    if (v26 == v28)
    {
      v26 = 0;
    }

    if (v16[v26] != -1)
    {
      sub_100003F60();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1001C6E64()
{
  sub_10001CB6C();
  v4 = v0;
  v6 = v5;
  sub_100007344();
  sub_10007B9A4(v7, v8);
  sub_100005DB0();
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!v1[2])
  {
LABEL_29:

LABEL_30:
    *v4 = v9;
    sub_100006778();
    return;
  }

  v33 = v0;
  v10 = 0;
  v11 = v1 + 8;
  sub_100005680();
  sub_100011B74();
  v12 = v9 + 8;
  if (!v3)
  {
LABEL_4:
    v14 = v10;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v2)
      {
        break;
      }

      ++v14;
      if (v11[v10])
      {
        sub_1000035FC();
        v3 = v16 & v15;
        goto LABEL_9;
      }
    }

    if ((v6 & 1) == 0)
    {

      v4 = v33;
      goto LABEL_30;
    }

    sub_10000ADF4();
    v4 = v33;
    if (v28 != v29)
    {
      sub_100004E1C();
      *v11 = v30;
    }

    else
    {
      v31 = sub_10000B110();
      sub_1000575CC(v31, v32, (v1 + 8));
    }

    v1[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    sub_100008698();
LABEL_9:
    v17 = v13 | (v10 << 6);
    v18 = *(v1[6] + 8 * v17);
    v19 = *(v1[7] + 8 * v17);
    if ((v6 & 1) == 0)
    {
      v20 = v18;
    }

    NSObject._rawHashValue(seed:)(v9[5]);
    sub_10000A574();
    sub_100016800();
    if (v21)
    {
      break;
    }

    sub_1000074F4();
LABEL_21:
    sub_100005890();
    *(v12 + v25) |= v26;
    *(v9[6] + 8 * v27) = v18;
    *(v9[7] + 8 * v27) = v19;
    sub_100012FD4();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_100022250();
  while (1)
  {
    sub_1000222D4();
    if (v21)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    if (v12[v22] != -1)
    {
      sub_100003F60();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

Swift::Int sub_1001C7008(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10007B9A4(&qword_100272160, &qword_1001F1DC0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      sub_100002BC0(0, &qword_10026E458, AMSTreatment_ptr);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1001C7BF4(v3 + 1);
      }

      v2 = v15;
      result = NSObject._rawHashValue(seed:)(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_1001C71E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007B9A4(&qword_100272138, &unk_1001F1D90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1000575CC(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v17 = *(v16 + 16);
    v30 = *v16;
    v31 = v17;
    v32 = *(v16 + 32);
    Hasher.init(_seed:)();
    sub_100074AD8(v29);
    result = Hasher._finalize()();
    v18 = -1 << *(v5 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v5 + 48) + 40 * v21;
    v27 = v31;
    *v26 = v30;
    *(v26 + 16) = v27;
    *(v26 + 32) = v32;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001C7454(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007B9A4(&qword_100272188, &qword_1001F1E08);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v27 = v1;
  v28 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1000575CC(0, (v26 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v17 = Hasher._finalize()();

    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    v3 = v28;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1001C76CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007B9A4(&qword_100272198, qword_1001F1EC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    for (i = result + 56; v10; ++*(v5 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = (*(v3 + 48) + 24 * (v12 | (v6 << 6)));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      Hasher.init(_seed:)();
      String.hash(into:)();
      sub_100079558(__src, v18);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v19 = (*(v5 + 48) + 24 * result);
      *v19 = v16;
      v19[1] = v17;
      v19[2] = v18;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v20 = 1 << *(v3 + 32);
    if (v20 >= 64)
    {
      sub_1000575CC(0, (v20 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v20;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1001C78E0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Treatment(0);
  __chkstk_darwin(v3);
  v4 = *v1;
  sub_10007B9A4(&qword_100272168, &qword_1001F1DC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v4 + 32);
    if (v24 >= 64)
    {
      sub_1000575CC(0, (v24 + 63) >> 6, v4 + 56);
    }

    else
    {
      *v8 = -1 << v24;
    }

    v2 = v1;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v11 &= v11 - 1;
LABEL_12:
    sub_1001CB094();
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v13 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = sub_1001CB094();
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v13 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_1001C7BF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007B9A4(&qword_100272160, &qword_1001F1DC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1000575CC(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = NSObject._rawHashValue(seed:)(*(v5 + 40));
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1001C7E18(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

Swift::Int sub_1001C7E9C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001C71E4(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1001C8A74();
        goto LABEL_107;
      }

      sub_1001C9348(v6 + 1);
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    sub_100074AD8(&v57);
    result = Hasher._finalize()();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    v53 = v8 + 56;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v52 = ~v9;
      v50 = v8;
      do
      {
        v10 = *(v8 + 48) + 40 * a2;
        v11 = *(v10 + 8);
        v12 = *(v10 + 16);
        v13 = *(v10 + 18);
        v14 = *(v10 + 19);
        v15 = *(v10 + 24);
        v16 = *(v10 + 32);

        sub_1001C31D0();
        if ((v17 & 1) == 0)
        {
LABEL_17:

LABEL_18:

          goto LABEL_19;
        }

        v51 = v15;
        v18 = *(v5 + 8);
        if (v11)
        {
          if (!v18)
          {
            goto LABEL_17;
          }

          v19 = *(v11 + 16);
          if (v19 != *(v18 + 16))
          {

LABEL_28:

LABEL_29:
            v8 = v50;
            goto LABEL_19;
          }

          if (v19 && v11 != v18)
          {

            v23 = 0;
            v45 = v19 - 1;
            v46 = v5;
            v24 = 32;
            while (v23 < *(v11 + 16))
            {
              v26 = *(v11 + v24);
              v25 = *(v11 + v24 + 16);
              *&v56[11] = *(v11 + v24 + 27);
              v55 = v26;
              *v56 = v25;
              if (v23 >= *(v18 + 16))
              {
                goto LABEL_111;
              }

              v48 = v23;
              v28 = *(v18 + v24);
              v27 = *(v18 + v24 + 16);
              *&v58[11] = *(v18 + v24 + 27);
              v57 = v28;
              *v58 = v27;
              if (*(&v55 + 1))
              {
                if (!*(&v28 + 1))
                {
                  goto LABEL_104;
                }

                v29 = v55 == v57 && *(&v55 + 1) == *(&v28 + 1);
                if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_104;
                }
              }

              else if (*(&v28 + 1))
              {
                goto LABEL_104;
              }

              v47 = v24;
              if (*v56)
              {
                if (!*v58)
                {
                  goto LABEL_104;
                }

                sub_10007C18C(&v55, v54);
                sub_10007C18C(&v57, v54);

                sub_1001C4B20();
                v31 = v30;

                if ((v31 & 1) == 0)
                {
                  sub_10007C1C4(&v57);
                  sub_10007C1C4(&v55);
LABEL_104:

                  v5 = v46;
                  goto LABEL_29;
                }
              }

              else
              {
                if (*v58)
                {
                  goto LABEL_104;
                }

                sub_10007C18C(&v55, v54);
                sub_10007C18C(&v57, v54);
              }

              v32 = *&v58[16];
              if (*&v56[16])
              {
                v5 = v46;
                if (!*&v58[16])
                {
                  sub_10007C1C4(&v57);
                  sub_10007C1C4(&v55);
LABEL_106:

                  goto LABEL_28;
                }

                if (*&v56[8] == *&v58[8] && *&v56[16] == *&v58[16])
                {
                  sub_10007C1C4(&v57);
                  sub_10007C1C4(&v55);
                }

                else
                {
                  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  sub_10007C1C4(&v57);
                  sub_10007C1C4(&v55);
                  if ((v34 & 1) == 0)
                  {
                    goto LABEL_106;
                  }
                }
              }

              else
              {
                sub_10007C1C4(&v57);
                sub_10007C1C4(&v55);
                v5 = v46;
                if (v32)
                {
                  goto LABEL_106;
                }
              }

              if (v56[24] == 2)
              {
                v8 = v50;
                v35 = v48;
                if (v58[24] != 2)
                {
                  goto LABEL_90;
                }
              }

              else
              {
                v8 = v50;
                v35 = v48;
                if (v58[24] == 2 || ((v58[24] ^ v56[24]) & 1) != 0)
                {
LABEL_90:

                  goto LABEL_18;
                }
              }

              if (v56[25] == 2)
              {
                if (v58[25] != 2)
                {
                  goto LABEL_90;
                }
              }

              else if (v58[25] == 2 || ((v58[25] ^ v56[25]) & 1) != 0)
              {
                goto LABEL_90;
              }

              if (v56[26] == 2)
              {
                if (v58[26] != 2)
                {
                  goto LABEL_90;
                }
              }

              else if (v58[26] == 2 || ((v58[26] ^ v56[26]) & 1) != 0)
              {
                goto LABEL_90;
              }

              if (v45 == v35)
              {

                goto LABEL_22;
              }

              v24 = v47 + 48;
              v23 = v35 + 1;
            }

            goto LABEL_110;
          }

          v8 = v50;
        }

        else
        {

          if (v18)
          {
            goto LABEL_19;
          }
        }

LABEL_22:
        v20 = *(v5 + 16);
        v21 = *(v5 + 16);
        if (v12 == 3)
        {
          if (v21 != 3)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (v21 == 3)
          {
            goto LABEL_19;
          }

          if (v12 == 2)
          {
            if (*(v5 + 16) != 2)
            {
              goto LABEL_19;
            }
          }

          else if (*(v5 + 16) == 2 || ((v20 ^ v12) & 1) != 0)
          {
            goto LABEL_19;
          }

          v37 = v20 >> 8;
          if (v12 >> 8 == 2)
          {
            if (v37 != 2)
            {
              goto LABEL_19;
            }
          }

          else if (v37 == 2 || ((v37 ^ (v12 >> 8)) & 1) != 0)
          {
            goto LABEL_19;
          }
        }

        v22 = *(v5 + 18);
        if (v13 == 2)
        {
          if (v22 != 2)
          {
            goto LABEL_19;
          }
        }

        else if (v22 == 2 || ((v22 ^ v13) & 1) != 0)
        {
          goto LABEL_19;
        }

        v36 = *(v5 + 19);
        if (v14 == 2)
        {
          if (v36 != 2)
          {
            goto LABEL_19;
          }
        }

        else if (v36 == 2 || ((v36 ^ v14) & 1) != 0)
        {
          goto LABEL_19;
        }

        v38 = *(v5 + 32);
        if (v16)
        {
          if (*(v5 + 32))
          {
            goto LABEL_112;
          }
        }

        else
        {
          if (v51 != *(v5 + 24))
          {
            v38 = 1;
          }

          if ((v38 & 1) == 0)
          {
            goto LABEL_112;
          }
        }

LABEL_19:
        a2 = (a2 + 1) & v52;
      }

      while (((*(v53 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_107:
  v39 = *v49;
  *(*v49 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v40 = *(v39 + 48) + 40 * a2;
  v41 = *(v5 + 16);
  *v40 = *v5;
  *(v40 + 16) = v41;
  *(v40 + 32) = *(v5 + 32);
  v42 = *(v39 + 16);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v39 + 16) = v44;
  }

  return result;
}

Swift::Int sub_1001C8494(Swift::Int result, Swift::Int a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    sub_1001C76CC(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1001C8D40();
      goto LABEL_17;
    }

    sub_1001C97E4(v9 + 1);
  }

  v11 = *v5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_100079558(__src, a3);
  result = Hasher._finalize()();
  v12 = -1 << *(v11 + 32);
  a4 = result & ~v12;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v11 + 48) + 24 * a4);
      v15 = *v14 == v8 && v14[1] == a2;
      if (v15 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {

        sub_1001C2AB4(v16, a3);
        v18 = v17;

        if (v18)
        {
          goto LABEL_20;
        }
      }

      a4 = (a4 + 1) & v13;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_17:
  v19 = *v24;
  *(*v24 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v20 = (*(v19 + 48) + 24 * a4);
  *v20 = v8;
  v20[1] = a2;
  v20[2] = a3;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001C8668(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for Treatment(0);
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v27 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_1001C78E0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1001C8FF0();
      goto LABEL_18;
    }

    sub_1001C99C8(v10 + 1);
  }

  v12 = *v3;
  Hasher.init(_seed:)();
  v13 = (a1 + *(v7 + 20));
  v14 = *v13;
  v15 = v13[1];
  String.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v12 + 32);
  a2 = v16 & ~v17;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    do
    {
      sub_1001CAFE0();
      if (static Date.== infix(_:_:)())
      {
        v19 = &v9[*(v7 + 20)];
        v20 = *v19 == v14 && *(v19 + 1) == v15;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static Date.== infix(_:_:)())
        {
          goto LABEL_21;
        }
      }

      sub_1001CB03C(v9, type metadata accessor for Treatment);
      a2 = (a2 + 1) & v18;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v21 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1001CB094();
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_21:
  sub_1001CB03C(v9, type metadata accessor for Treatment);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1001C8910(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001C7BF4(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1001C9CAC(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_100002BC0(0, &qword_10026E458, AMSTreatment_ptr);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1001C91F8();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

void *sub_1001C8A74()
{
  v1 = v0;
  sub_10007B9A4(&qword_100272138, &unk_1001F1D90);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + 8 * v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1001C8BF0()
{
  v1 = v0;
  sub_10007B9A4(&qword_100272188, &qword_1001F1E08);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1001C8D40()
{
  v1 = v0;
  sub_10007B9A4(&qword_100272198, qword_1001F1EC8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + 8 * v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1001C8EAC()
{
  v1 = v0;
  sub_10007B9A4(&qword_10026F288, &qword_1001EEB98);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        sub_1001CB120();
LABEL_17:
        v18 = v14 | (v8 << 6);
        v19 = (*(v2 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = (*(v4 + 48) + 16 * v18);
        *v21 = *v19;
        v21[1] = v20;
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

      ++v15;
      if (*(v2 + 56 + 8 * v8))
      {
        sub_1000035FC();
        v12 = v17 & v16;
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

void *sub_1001C8FF0()
{
  v1 = v0;
  v2 = type metadata accessor for Treatment(0);
  __chkstk_darwin(v2 - 8);
  sub_10007B9A4(&qword_100272168, &qword_1001F1DC8);
  v3 = *v0;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v13 &= v13 - 1;
LABEL_17:
        sub_1001CAFE0();
        result = sub_1001CB094();
      }

      while (v13);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
  }

  return result;
}

id sub_1001C91F8()
{
  v1 = v0;
  sub_10007B9A4(&qword_100272160, &qword_1001F1DC0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

Swift::Int sub_1001C9348(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007B9A4(&qword_100272138, &unk_1001F1D90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v3 + 48) + 40 * (v12 | (v6 << 6));
        v16 = *(v15 + 32);
        v17 = *(v15 + 16);
        v31 = *v15;
        v32 = v17;
        v33 = v16;
        Hasher.init(_seed:)();
        sub_1001CAE60(&v31, v29);
        sub_100074AD8(v30);
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = *(v5 + 48) + 40 * v21;
        v27 = v31;
        v28 = v32;
        *(v26 + 32) = v33;
        *v26 = v27;
        *(v26 + 16) = v28;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1001C9594(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007B9A4(&qword_100272188, &qword_1001F1E08);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Hasher.init(_seed:)();
        v17 = v16;
        String.hash(into:)();
        v18 = Hasher._finalize()();

        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v5 + 48) + 8 * v22) = v17;
        ++*(v5 + 16);
        v3 = v28;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

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
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v27;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1001C97E4(uint64_t a1)
{
  v2 = *v1;
  sub_10007B9A4(&qword_100272198, qword_1001F1EC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  v20 = v2;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = (*(v20 + 48) + 24 * (v11 | (v5 << 6)));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      Hasher.init(_seed:)();

      String.hash(into:)();
      sub_100079558(__src, v17);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(v4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v18 = (*(v4 + 48) + 24 * result);
      *v18 = v15;
      v18[1] = v16;
      v18[2] = v17;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_14;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v19 = v4;
  }

  return result;
}

Swift::Int sub_1001C99C8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Treatment(0);
  __chkstk_darwin(v3);
  v4 = *v1;
  sub_10007B9A4(&qword_100272168, &qword_1001F1DC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v10 &= v10 - 1;
LABEL_12:
        sub_1001CAFE0();
        Hasher.init(_seed:)();
        String.hash(into:)();
        result = Hasher._finalize()();
        v15 = -1 << *(v6 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = sub_1001CB094();
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v12 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v4 + 56 + 8 * v7);
        ++v13;
        if (v14)
        {
          v10 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v6;
  }

  return result;
}

Swift::Int sub_1001C9CAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007B9A4(&qword_100272160, &qword_1001F1DC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v5 + 40);
        v16 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = NSObject._rawHashValue(seed:)(v15);
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v25;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1001CA15C(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_149;
  }

  sub_10007B9A4(&qword_100272138, &unk_1001F1D90);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v84 = *(v1 + 16);
  if (!v84)
  {
LABEL_149:

    return v3;
  }

  v4 = 0;
  v5 = result + 56;
  v85 = v1 + 32;
  v97 = result + 56;
  v98 = result;
  v80 = v1;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      goto LABEL_154;
    }

    v6 = v85 + 40 * v4;
    v7 = *(v6 + 16);
    v116 = *v6;
    v117 = v7;
    v118 = *(v6 + 32);
    Hasher.init(_seed:)();
    sub_1001CAE60(&v116, &v112);
    sub_100074AD8(&v114);
    result = Hasher._finalize()();
    v8 = -1 << v3[32];
    v9 = result & ~v8;
    v10 = v9 >> 6;
    v11 = *(v5 + 8 * (v9 >> 6));
    v12 = 1 << v9;
    if (((1 << v9) & v11) != 0)
    {
      break;
    }

LABEL_143:
    *(v5 + 8 * v10) = v11 | v12;
    v74 = *(v3 + 6) + 40 * v9;
    v75 = v116;
    v76 = v117;
    *(v74 + 32) = v118;
    *v74 = v75;
    *(v74 + 16) = v76;
    v77 = *(v3 + 2);
    v78 = __OFADD__(v77, 1);
    v79 = v77 + 1;
    if (v78)
    {
      goto LABEL_155;
    }

    *(v3 + 2) = v79;
LABEL_145:
    if (++v4 == v84)
    {
      goto LABEL_149;
    }
  }

  v87 = v4;
  v107 = ~v8;
  v81 = *(&v117 + 1);
  v86 = BYTE3(v117);
  v14 = *(&v116 + 1);
  v13 = v116;
  v110 = v116 + 56;
  v94 = *(&v116 + 1) + 32;
  v95 = v117;
  v90 = v117;
  v91 = BYTE2(v117);
  v82 = v118;
  v83 = BYTE1(v117);
  v99 = *(&v116 + 1);
  while (1)
  {
    v15 = *(v3 + 6) + 40 * v9;
    v16 = *v15;
    v17 = *(v15 + 8);
    if (*v15 != v13)
    {
      break;
    }

    v102 = *(v15 + 16);
    v103 = *(v15 + 18);
    v104 = *(v15 + 19);
    v105 = *(v15 + 32);
    v106 = *(v15 + 24);
    v108 = *(v15 + 8);

LABEL_29:
    v37 = v108;
    if (v108)
    {
      if (!v14 || (v38 = *(v108 + 16), v38 != *(v14 + 16)))
      {

LABEL_140:

        goto LABEL_141;
      }

      if (v38 && v108 != v14)
      {
        v93 = v108 + 32;

        v44 = 0;
        v92 = v38;
        while (1)
        {
          if (v44 >= *(v37 + 16))
          {
            goto LABEL_152;
          }

          v45 = (v93 + 48 * v44);
          v47 = *v45;
          v46 = v45[1];
          *&v113[11] = *(v45 + 27);
          v112 = v47;
          *v113 = v46;
          if (v44 >= *(v14 + 16))
          {
            goto LABEL_153;
          }

          v96 = v44;
          v48 = (v94 + 48 * v44);
          v50 = *v48;
          v49 = v48[1];
          *&v115[11] = *(v48 + 27);
          v114 = v50;
          *v115 = v49;
          if (*(&v112 + 1))
          {
            if (!*(&v50 + 1))
            {
              goto LABEL_139;
            }

            v51 = v112 == v114 && *(&v112 + 1) == *(&v50 + 1);
            if (!v51 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_139;
            }
          }

          else if (*(&v50 + 1))
          {
            goto LABEL_139;
          }

          v52 = *v113;
          v53 = *v115;
          if (*v113)
          {
            if (!*v115)
            {
              goto LABEL_139;
            }

            if (*v113 != *v115)
            {
              if (*(*v113 + 16) == *(*v115 + 16))
              {
                v89 = *v113 + 64;
                v54 = 1 << *(*v113 + 32);
                if (v54 < 64)
                {
                  v55 = ~(-1 << v54);
                }

                else
                {
                  v55 = -1;
                }

                v56 = v55 & *(*v113 + 64);
                sub_10007C18C(&v112, v111);
                sub_10007C18C(&v114, v111);
                v88 = (v54 + 63) >> 6;

                v57 = 0;
                v109 = v37;
                while (v56)
                {
                  v58 = __clz(__rbit64(v56));
                  v101 = (v56 - 1) & v56;
LABEL_76:
                  v61 = (*(v52 + 56) + 16 * (v58 | (v57 << 6)));
                  v63 = *v61;
                  v62 = v61[1];

                  v64 = sub_100012A94();
                  v66 = v65;

                  if ((v66 & 1) == 0)
                  {

                    v5 = v97;
                    v3 = v98;
                    v14 = v99;
                    goto LABEL_138;
                  }

                  v67 = (*(v53 + 56) + 16 * v64);
                  v68 = *v67 == v63 && v67[1] == v62;
                  v37 = v109;
                  if (v68)
                  {

                    v14 = v99;
                    v56 = v101;
                  }

                  else
                  {
                    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    v14 = v99;
                    v56 = v101;
                    if ((v69 & 1) == 0)
                    {

                      v5 = v97;
                      v3 = v98;
                      goto LABEL_138;
                    }
                  }
                }

                v59 = v57;
                while (1)
                {
                  v57 = v59 + 1;
                  if (__OFADD__(v59, 1))
                  {
                    goto LABEL_151;
                  }

                  if (v57 >= v88)
                  {

                    v5 = v97;
                    v3 = v98;
                    goto LABEL_87;
                  }

                  v60 = *(v89 + 8 * v57);
                  ++v59;
                  if (v60)
                  {
                    v58 = __clz(__rbit64(v60));
                    v101 = (v60 - 1) & v60;
                    goto LABEL_76;
                  }
                }
              }

LABEL_139:

              goto LABEL_140;
            }
          }

          else if (*v115)
          {
            goto LABEL_139;
          }

          sub_10007C18C(&v112, v111);
          sub_10007C18C(&v114, v111);
LABEL_87:
          v70 = *&v115[16];
          if (*&v113[16])
          {
            if (!*&v115[16])
            {
LABEL_138:
              sub_10007C1C4(&v114);
              sub_10007C1C4(&v112);
              goto LABEL_139;
            }

            if (*&v113[8] == *&v115[8] && *&v113[16] == *&v115[16])
            {
              sub_10007C1C4(&v114);
              result = sub_10007C1C4(&v112);
            }

            else
            {
              v72 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_10007C1C4(&v114);
              result = sub_10007C1C4(&v112);
              if ((v72 & 1) == 0)
              {
                goto LABEL_139;
              }
            }
          }

          else
          {
            sub_10007C1C4(&v114);
            result = sub_10007C1C4(&v112);
            if (v70)
            {
              goto LABEL_139;
            }
          }

          if (v113[24] == 2)
          {
            if (v115[24] != 2)
            {
              goto LABEL_139;
            }
          }

          else if (v115[24] == 2 || ((v115[24] ^ v113[24]) & 1) != 0)
          {
            goto LABEL_139;
          }

          if (v113[25] == 2)
          {
            if (v115[25] != 2)
            {
              goto LABEL_139;
            }
          }

          else if (v115[25] == 2 || ((v115[25] ^ v113[25]) & 1) != 0)
          {
            goto LABEL_139;
          }

          if (v113[26] == 2)
          {
            if (v115[26] != 2)
            {
              goto LABEL_139;
            }
          }

          else if (v115[26] == 2 || ((v115[26] ^ v113[26]) & 1) != 0)
          {
            goto LABEL_139;
          }

          v44 = v96 + 1;
          if (v96 + 1 == v92)
          {

            goto LABEL_35;
          }
        }
      }

LABEL_35:

      v39 = v106;
      v41 = v104;
      v40 = v105;
      v42 = v102;
      v43 = v103;
    }

    else
    {

      v39 = v106;
      v41 = v104;
      v40 = v105;
      v42 = v102;
      v43 = v103;
      if (v14)
      {
        goto LABEL_141;
      }
    }

    if (v42 == 3)
    {
      if (v95 != 3)
      {
        goto LABEL_141;
      }
    }

    else
    {
      if (v95 == 3)
      {
        goto LABEL_141;
      }

      if (v42 == 2)
      {
        if (v90 != 2)
        {
          goto LABEL_141;
        }
      }

      else if (v90 == 2 || ((v42 ^ v90) & 1) != 0)
      {
        goto LABEL_141;
      }

      if (v42 >> 8 == 2)
      {
        if (v83 != 2)
        {
          goto LABEL_141;
        }
      }

      else if (v83 == 2 || (((v42 >> 8) ^ v83) & 1) != 0)
      {
        goto LABEL_141;
      }
    }

    if (v43 == 2)
    {
      if (v91 != 2)
      {
        goto LABEL_141;
      }
    }

    else if (v91 == 2 || ((v43 ^ v91) & 1) != 0)
    {
      goto LABEL_141;
    }

    if (v41 == 2)
    {
      if (v86 != 2)
      {
        goto LABEL_141;
      }
    }

    else if (v86 == 2 || ((v41 ^ v86) & 1) != 0)
    {
      goto LABEL_141;
    }

    if (v40)
    {
      if (v82)
      {
        goto LABEL_147;
      }
    }

    else
    {
      v73 = v82;
      if (v39 != v81)
      {
        v73 = 1;
      }

      if ((v73 & 1) == 0)
      {
LABEL_147:
        result = sub_1001CAEBC(&v116);
        v1 = v80;
        v4 = v87;
        goto LABEL_145;
      }
    }

LABEL_141:
    v9 = (v9 + 1) & v107;
    v10 = v9 >> 6;
    v11 = *(v5 + 8 * (v9 >> 6));
    v12 = 1 << v9;
    if ((v11 & (1 << v9)) == 0)
    {
      v1 = v80;
      v4 = v87;
      goto LABEL_143;
    }
  }

  if (*(v16 + 16) != *(v13 + 16))
  {
    goto LABEL_141;
  }

  v102 = *(v15 + 16);
  v103 = *(v15 + 18);
  v104 = *(v15 + 19);
  v105 = *(v15 + 32);
  v106 = *(v15 + 24);
  v18 = v16 + 56;
  v19 = 1 << *(v16 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v16 + 56);
  v22 = (v19 + 63) >> 6;

  v108 = v17;

  v23 = 0;
  v100 = v9;
  if (v21)
  {
    while (2)
    {
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_19:
      v27 = v16;
      v28 = (*(v16 + 48) + 16 * (v24 | (v23 << 6)));
      v30 = *v28;
      v29 = v28[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v31 = Hasher._finalize()();
      v32 = ~(-1 << *(v13 + 32));
      do
      {
        v33 = v31 & v32;
        if (((*(v110 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
        {

          v5 = v97;
          v3 = v98;
          v14 = v99;
          v9 = v100;
          goto LABEL_141;
        }

        v34 = (*(v13 + 48) + 16 * v33);
        if (*v34 == v30 && v34[1] == v29)
        {
          break;
        }

        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v31 = v33 + 1;
      }

      while ((v36 & 1) == 0);

      v16 = v27;
      v14 = v99;
      v9 = v100;
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v25 = v23;
  v5 = v97;
  v3 = v98;
  while (1)
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v23 >= v22)
    {
      goto LABEL_29;
    }

    v26 = *(v18 + 8 * v23);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v21 = (v26 - 1) & v26;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

Swift::Int sub_1001CAAD8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_10007B9A4(&qword_100272150, &qword_1001F1DB0);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = ~(-1 << v3[32]);
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 6) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 6) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 2);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 2) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1001CAC68(uint64_t a1)
{
  if (sub_10004369C(a1))
  {
    sub_10007B9A4(&qword_100272158, &qword_1001F1DB8);
    v2 = sub_10003AF6C();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v21 = sub_100049574(a1);
  if (v21)
  {
    v3 = 0;
    v4 = v2 + 7;
    v20 = a1 & 0xC000000000000001;
    v19 = a1 + 32;
    while (1)
    {
      sub_1000F1168();
      v5 = v20 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v19 + 8 * v3);
      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      NSObject._rawHashValue(seed:)(v2[5]);
      sub_100004E1C();
      v10 = ~v9;
      while (1)
      {
        v11 = v8 & v10;
        v12 = (v8 & v10) >> 6;
        v13 = v4[v12];
        v14 = 1 << (v8 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        sub_100002BC0(0, &qword_1002723D0, UNNotificationCategory_ptr);
        v15 = *(v2[6] + 8 * v11);
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {

          goto LABEL_17;
        }

        v8 = v11 + 1;
      }

      v4[v12] = v14 | v13;
      *(v2[6] + 8 * v11) = v6;
      v17 = v2[2];
      v7 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v18;
LABEL_17:
      if (v3 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_1001CAE1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100070354(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1001CAF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1001CAF50(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1001CAF90(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1001CAFE0()
{
  sub_100004E28();
  v2(0);
  sub_100002DDC();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1001CB03C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002DDC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001CB094()
{
  sub_100004E28();
  v2(0);
  sub_100002DDC();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1001CB134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return String.hash(into:)();
}

id sub_1001CB154()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniversalLinksService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001CB188(uint64_t a1, const void *a2)
{
  v3 = type metadata accessor for UniversalLinksUpdater();

  sub_1001CBD38(v3, a2);
}

void sub_1001CB1C4(char a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    a3(0, a2);
  }

  else
  {
    v6 = [objc_allocWithZone(AMSUniversalLinksUpdateResult) init];
    [v6 setSuccess:a1 & 1];
    v7 = v6;
    a3(v6, 0);
  }
}

id sub_1001CB308(uint64_t a1)
{
  v9 = 0;
  v2 = [objc_opt_self() dataWithJSONObject:a1 options:0 error:&v9];
  v3 = v9;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1001CC970();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1000253FC(v4, v6);

    if (!v1)
    {
      return v9;
    }
  }

  else
  {
    v8 = v3;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

id sub_1001CB448(uint64_t a1)
{
  v9 = 0;
  v2 = [objc_opt_self() dataWithJSONObject:a1 options:0 error:&v9];
  v3 = v9;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1001CC90C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1000253FC(v4, v6);

    if (!v1)
    {
      return v9;
    }
  }

  else
  {
    v8 = v3;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

void sub_1001CB584(uint64_t a1)
{

  sub_1001CB6A4(a1, &unk_100254270, nullsub_1, sub_1001CC9C8, &unk_100254288);
}

void sub_1001CB614(uint64_t a1)
{

  sub_1001CB6A4(a1, &unk_100254180, nullsub_1, sub_1001CC8F4, &unk_100254198);
}

void sub_1001CB6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100007DD0(__stack_chk_guard);
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v10 = sub_100003534();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 dictionaryForKey:v11];

  aBlock = 0;
  v13 = [v12 valueWithError:&aBlock];

  v14 = aBlock;
  if (!v13)
  {
    v32 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v33 = sub_100003DE8();
    sub_100002CFC(v33);
    v34 = sub_10000C26C();
    *(v34 + 16) = xmmword_1001E5F60;
    v35 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UniversalLinksUpdater();
    sub_1000077E0();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v71 = v64;
    sub_100017E64(&aBlock);
    sub_1000047A4();
    (*(v36 + 16))();
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&aBlock);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v37 = static os_log_type_t.error.getter();
    sub_1000036B0(v37, v34);

    v38 = _convertErrorToNSError(_:)();

    goto LABEL_12;
  }

  v56 = a5;
  sub_10007B9A4(&qword_100272260, &qword_1001F1F18);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001E61B0;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = 0x6173726576696E75;
  *(v15 + 40) = v5;
  *(v15 + 88) = sub_100002BC0(0, &qword_10026FF00, NSDictionary_ptr);
  *(v15 + 64) = v13;
  v16 = v14;
  v58 = v13;
  v17 = NSDictionary.init(dictionaryLiteral:)();
  v18 = sub_1001CB448(v17);
  v19 = sub_1001C1E58(v18);
  v21 = v20;
  v23 = v22;

  if (v23)
  {
    v31 = v19;
LABEL_9:
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v41 = sub_100003DE8();
    sub_100002CFC(v41);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1001E5F60;
    swift_errorRetain();
    v43 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UniversalLinksUpdater();
    sub_1000077E0();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v71 = v60;
    sub_100017E64(&aBlock);
    sub_1000047A4();
    (*(v44 + 16))();
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&aBlock);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v45 = static os_log_type_t.error.getter();
    sub_1000036B0(v45, v42);

    swift_errorRetain();

    sub_1001CC8A8(v31, 0, 1);

LABEL_12:

    return;
  }

  sub_1001C26E4(v21, v24, v25, v26, v27, v28, v29, v30, v51, v52, v54, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, aBlock, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  v31 = v39;
  if (v40)
  {
    sub_1001CC8A8(v19, v21, 0);
    goto LABEL_9;
  }

  sub_1001CC8A8(v46, v21, 0);
  v55 = objc_opt_self();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v47 = Dictionary._bridgeToObjectiveC()().super.isa;
  v48 = swift_allocObject();
  v48[2] = a1;
  v48[3] = a3;
  v48[4] = 0;
  v72 = a4;
  v73 = v48;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  sub_10000566C();
  v70 = v49;
  v71 = v57;
  v50 = _Block_copy(&aBlock);

  [v55 setAdditionalServiceDetailsForApplicationIdentifiers:isa usingContentsOfDictionary:v47 completionHandler:v50];

  sub_1001CC900(v31, 0);
  _Block_release(v50);
}

void sub_1001CBD38(uint64_t a1, const void *a2)
{
  sub_100007DD0(__stack_chk_guard);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1001CC960;
  *(v6 + 24) = v5;
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  _Block_copy(a2);
  _Block_copy(a2);

  v7 = sub_100003534();
  v8 = String._bridgeToObjectiveC()();
  v63 = v7;
  v9 = [v7 dictionaryForKey:v8];

  aBlock = 0;
  v10 = [v9 valueWithError:&aBlock];

  v11 = aBlock;
  if (v10)
  {
    sub_10007B9A4(&qword_100272260, &qword_1001F1F18);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001E61B0;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = 0x6173726576696E75;
    *(v12 + 40) = v2;
    *(v12 + 88) = sub_100002BC0(0, &qword_10026FF00, NSDictionary_ptr);
    *(v12 + 64) = v10;
    v13 = v11;
    v14 = v10;
    v62 = NSDictionary.init(dictionaryLiteral:)();
    v15 = sub_1001CB448(v62);
    v61 = v14;
    v28 = sub_1001C1E58(v15);
    v30 = v29;
    v32 = v31;

    if (v32)
    {
      v40 = v28;
    }

    else
    {
      sub_1001C26E4(v30, v33, v34, v35, v36, v37, v38, v39, v56, v57, v59, v14, v62, v6, v7, v64, v65, v66, v67, v68, v69, v70, v71, v72, aBlock, v74, v75, v76, v77, v78, v79, v80);
      v40 = v41;
      if ((v42 & 1) == 0)
      {

        sub_1001CC8A8(v51, v30, 0);
        v60 = objc_opt_self();
        isa = Set._bridgeToObjectiveC()().super.isa;
        v52 = Dictionary._bridgeToObjectiveC()().super.isa;
        v53 = swift_allocObject();
        v53[2] = a1;
        v53[3] = sub_1001CC968;
        v53[4] = v6;
        v77 = sub_1001CC9C8;
        v78 = v53;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        sub_10000566C();
        v75 = v54;
        v76 = &unk_100254238;
        v55 = _Block_copy(&aBlock);

        [v60 setAdditionalServiceDetailsForApplicationIdentifiers:isa usingContentsOfDictionary:v52 completionHandler:v55];

        sub_1001CC900(v40, 0);
        _Block_release(v55);

        goto LABEL_14;
      }

      sub_1001CC8A8(v28, v30, 0);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v43 = sub_100003DE8();
    sub_100002CFC(v43);
    v44 = sub_10000C26C();
    *(v44 + 16) = xmmword_1001E5F60;
    swift_errorRetain();
    v45 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UniversalLinksUpdater();
    sub_1000077E0();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v76 = v65;
    sub_100017E64(&aBlock);
    sub_1000047A4();
    (*(v46 + 16))();
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&aBlock);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v47 = static os_log_type_t.error.getter();
    sub_1000036B0(v47, v44);

    swift_errorRetain();
    _Block_copy(a2);
    swift_errorRetain();
    v48 = _convertErrorToNSError(_:)();
    v49 = sub_100005B34();
    v50(v49);

    _Block_release(a2);

    sub_1001CC8A8(v40, 0, 1);
  }

  else
  {
    v16 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v17 = sub_100003DE8();
    sub_100002CFC(v17);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1001E5F60;
    v19 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UniversalLinksUpdater();
    sub_1000077E0();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v76 = v69;
    sub_100017E64(&aBlock);
    sub_1000047A4();
    (*(v20 + 16))();
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&aBlock);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v21 = static os_log_type_t.error.getter();
    sub_1000036B0(v21, v18);

    v22 = _convertErrorToNSError(_:)();
    v23 = [v22 ams_sanitizedForSecureCoding];

    _Block_copy(a2);
    v24 = v23;
    v25 = _convertErrorToNSError(_:)();
    v26 = sub_100005B34();
    v27(v26);

    _Block_release(a2);
  }

LABEL_14:
  _Block_release(a2);
  _Block_release(a2);
}

void sub_1001CC524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1001CC594(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1001E5F70;
    v7 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UniversalLinksUpdater();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v8 = static os_log_type_t.default.getter();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1001E5F60;
    v9 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UniversalLinksUpdater();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (a2)
    {
      swift_getErrorValue();
      *(&v15 + 1) = v13;
      v10 = sub_100017E64(&v14);
      (*(*(v13 - 8) + 16))(v10);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    static LogInterpolation.safe(_:)();
    sub_100002C5C(&v14);
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v8 = static os_log_type_t.error.getter();
  }

  sub_1000036B0(v8, v6);

  return a4(a1 & 1, a2);
}

uint64_t sub_1001CC8A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1001CC900(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1001CC90C()
{
  result = qword_100272268;
  if (!qword_100272268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272268);
  }

  return result;
}

unint64_t sub_1001CC970()
{
  result = qword_100272270;
  if (!qword_100272270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272270);
  }

  return result;
}

id sub_1001CC9D0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 fileExistsAtPath:v1];

  return v2;
}

unint64_t sub_1001CCA14()
{
  result = qword_100269E28;
  if (!qword_100269E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100269E28);
  }

  return result;
}

void sub_1001CCA58()
{
  sub_100003D74();
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v2);
  sub_100004E78();
  __chkstk_darwin(v3);
  sub_100023F60();
  sub_100002CC4();
  __chkstk_darwin(v4);
  sub_1000056E8();
  sub_10000C34C();
  __chkstk_darwin(v5);
  sub_100005B48();
  v6 = [objc_opt_self() ams_cachesDirectory];
  if (v6)
  {
    v7 = v6;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_1000086AC();
    MEMORY[0xD000000000000012](v8);
    v9._countAndFlagsBits = 0x7363697274654DLL;
    v9._object = 0xE700000000000000;
    URL.appendPathComponent(_:)(v9);
    v10._object = 0x80000001002045B0;
    v10._countAndFlagsBits = 0xD000000000000013;
    URL.appendPathComponent(_:)(v10);
    v11 = [objc_opt_self() defaultManager];
    sub_1000066EC();

    sub_10000360C();
    if (v12)
    {
      v13 = sub_10000AE08();
      MEMORY[0xD000000000000012](v13);
      sub_10000360C();
      if (!v12)
      {
        sub_100009FB0(v0, &unk_10026FEE0, &unk_1001E67C0);
      }
    }

    else
    {
      v20 = sub_100012E30();
      v21(v20);
      v22 = sub_100019E40();
      MEMORY[0xD000000000000012](v22);
    }

    sub_100005F14();
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v14 = sub_100003DE8();
    sub_100002CFC(v14);
    v15 = swift_allocObject();
    sub_100007358(v15, xmmword_1001E5F70);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000068FC();
    sub_100007DE8();

    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v16 = static os_log_type_t.fault.getter();
    sub_1000036B0(v16, v15);

    v17 = [objc_opt_self() defaultManager];
    [v17 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100005F14();
  }
}

void sub_1001CCDAC()
{
  v3 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v3);
  sub_100004E78();
  __chkstk_darwin(v4);
  sub_100023F60();
  sub_100002CC4();
  __chkstk_darwin(v5);
  sub_1000056E8();
  sub_10000C34C();
  __chkstk_darwin(v6);
  sub_100005B48();
  v7 = [objc_opt_self() ams_engagementDirectory];
  if (v7)
  {
    v8 = v7;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = sub_1000086AC();
    v2(v9);
    v10._countAndFlagsBits = 0x6144726576726553;
    v10._object = 0xEF65686361436174;
    URL.appendPathComponent(_:)(v10);
    v11 = [objc_opt_self() defaultManager];
    sub_1000066EC();

    sub_10000360C();
    if (v12)
    {
      v13 = sub_10000AE08();
      v2(v13);
      sub_10000360C();
      if (!v12)
      {
        sub_100009FB0(v0, &unk_10026FEE0, &unk_1001E67C0);
      }
    }

    else
    {
      v19 = sub_100012E30();
      v20(v19);
      v21 = sub_100019E40();
      v2(v21);
    }
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v14 = sub_100003DE8();
    sub_100002CFC(v14);
    v15 = sub_1000077EC();
    v16 = sub_100007358(v15, xmmword_1001E5F70);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000068FC();
    sub_100007DE8();

    sub_100004D04();
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v17 = static os_log_type_t.fault.getter();
    sub_1000036B0(v17, v15);

    v18 = [objc_opt_self() defaultManager];
    v22 = [v18 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

void sub_1001CD0D8()
{
  sub_100003D74();
  v2 = v1;
  v31 = v3;
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v4);
  sub_100004E78();
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for URL.DirectoryHint();
  sub_100002CC4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100002DEC();
  v14 = v13 - v12;
  v15 = type metadata accessor for URL();
  sub_100002CC4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000056E8();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  sub_100005B48();
  sub_1001CCDAC();
  v32 = v2;
  v32 = dispatch thunk of CustomStringConvertible.description.getter();
  v33 = v23;
  (*(v10 + 104))(v14, enum case for URL.DirectoryHint.inferFromPath(_:), v8);
  sub_10001ECE0();
  URL.appending<A>(path:directoryHint:)();
  (*(v10 + 8))(v14, v8);

  v24 = *(v17 + 8);
  v24(v21, v15);
  v25 = [objc_opt_self() defaultManager];
  sub_10001E148();

  v26 = sub_100011B84();
  if (sub_100009F34(v26, v27, v15) == 1)
  {
    (*(v17 + 32))(v31, v0, v15);
    v28 = sub_100011B84();
    if (sub_100009F34(v28, v29, v15) != 1)
    {
      sub_100009FB0(v7, &unk_10026FEE0, &unk_1001E67C0);
    }
  }

  else
  {
    v24(v0, v15);
    (*(v17 + 32))(v31, v7, v15);
  }

  sub_100005F14();
}

void sub_1001CD3B8(uint64_t a1)
{
  v2 = AMSLogKey();
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v27, a1, &v29);
  sub_10000E1E8(&v27);
  if (v30)
  {
    if (swift_dynamicCast())
    {
      AnyHashable.init<A>(_:)();
      sub_10000E0C8(&v27, a1, &v29);
      sub_10000E1E8(&v27);
      if (v30)
      {
        v4 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
        if (swift_dynamicCast())
        {
          sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
          v5 = type metadata accessor for LogInterpolation();
          sub_100002CFC(v5);
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_1001E5F70;
          v7 = type metadata accessor for UserNotificationAction();
          sub_10000BCD8(v7, v8, v9, v7);

          LogInterpolation.init(stringLiteral:)();
          if (qword_1002686B0 != -1)
          {
            sub_100002D44(&qword_1002686B0);
          }

          v10 = static os_log_type_t.default.getter();
          sub_1000036B0(v10, v6);

          sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1001E5F60;
          v27 = 49;
          v28 = 0xE100000000000000;
          sub_10000C298();
          *(inited + 96) = &type metadata for Int;
          *(inited + 72) = 22;
          v27 = 50;
          v28 = 0xE100000000000000;
          sub_10000C298();
          *(inited + 168) = &type metadata for String;
          *(inited + 144) = 0x4449656C646E7562;
          *(inited + 152) = 0xE800000000000000;
          v27 = 7565409;
          v28 = 0xE300000000000000;

          sub_10000C298();
          *(inited + 240) = v4;
          *(inited + 216) = 1635017060;
          Dictionary.init(dictionaryLiteral:)();
          if (qword_1002685F8 != -1)
          {
            swift_once();
          }

          v12 = qword_10026A070;
          sub_100002BC0(0, &qword_10026AE58, AMSPushPayload_ptr);
          v13 = sub_1000AAAF0();
          v14 = [objc_allocWithZone(AMSPushConfiguration) init];
          sub_100002BC0(0, &unk_100272310, AMSUserNotification_ptr);
          v15 = v13;
          v16 = v14;
          v17 = sub_1001CD9D0(v15, v14);
          v18 = objc_opt_self();
          v19 = String._bridgeToObjectiveC()();

          v20 = [v18 postNotification:v17 bag:v12 centerBundleId:v19];

          return;
        }
      }

      else
      {

        sub_100002C5C(&v29);
      }
    }
  }

  else
  {
    sub_100002C5C(&v29);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v21 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v21);
  v22 = sub_100003630();
  *(v22 + 16) = xmmword_1001E5F70;
  v23 = type metadata accessor for UserNotificationAction();
  sub_10000BCD8(v23, v24, v25, v23);

  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v26 = static os_log_type_t.error.getter();
  sub_1000036B0(v26, v22);
}

id sub_1001CD9D0(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPayload:a1 andConfig:a2];

  return v4;
}

id sub_1001CDA54()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_centerBundleIdentifiers;
  *&v0[v2] = Dictionary.init(dictionaryLiteral:)();
  *&v0[OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_pushSubscription] = 0;
  sub_100002BC0(0, &qword_1002723D0, UNNotificationCategory_ptr);
  v3 = sub_1001CDD94(0xD00000000000001BLL, 0x80000001002049C0, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 1);
  sub_100002BC0(0, &qword_10026E4A0, UNUserNotificationCenter_ptr);
  v4 = sub_1001AF38C();
  [v4 setWantsNotificationResponsesDelivered];
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E8AB0;
  *(inited + 32) = v3;
  if (sub_100049574(inited))
  {
    v6 = v3;
    sub_1001CAC68(inited);
  }

  else
  {
    swift_setDeallocating();
    v7 = v3;
    sub_1001A6674();
  }

  sub_1001CF318();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v4 setNotificationCategories:isa];

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *&v1[v2];
  sub_1000AD190(0xD000000000000037, 0x80000001002049E0, v4, isUniquelyReferenced_nonNull_native);
  *&v1[v2] = v19;
  swift_endAccess();
  v10 = objc_allocWithZone(AMSPushConfiguration);
  v11 = sub_1001CF238(0);
  v12 = String._bridgeToObjectiveC()();
  [v11 setUserNotificationExtensionId:v12];

  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v13 = v11;
  v14 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  v15 = [objc_allocWithZone(AMSPushHandler) initWithConfiguration:v13 bag:v14];

  *&v1[OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_pushHandler] = v15;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for UserNotificationsService();
  v16 = objc_msgSendSuper2(&v18, "init");
  [v4 setDelegate:v16];
  [v4 setPrivateDelegate:v16];

  return v16;
}

id sub_1001CDD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = String._bridgeToObjectiveC()();

  sub_100002BC0(0, &unk_1002723E0, UNNotificationAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [swift_getObjCClassFromMetadata() categoryWithIdentifier:v6 actions:isa intentIdentifiers:v8 options:a5];

  return v9;
}

id sub_1001CDE94(uint64_t a1)
{
  if (*&v1[OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_pushSubscription])
  {

    AnyCancellable.cancel()();
  }

  v3.receiver = v1;
  v3.super_class = type metadata accessor for UserNotificationsService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001CDFA0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_pushSubscription;
  v3 = *&v0[OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_pushSubscription];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F70;
  if (v3)
  {
    v18 = type metadata accessor for UserNotificationsService();
    v17[0] = v0;
    v6 = v0;
    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v17);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v12 = static os_log_type_t.error.getter();
    sub_1000036B0(v12, v5);
  }

  else
  {
    v18 = type metadata accessor for UserNotificationsService();
    v17[0] = v0;
    v9 = v0;
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v17);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v14 = static os_log_type_t.info.getter();
    sub_1000036B0(v14, v5);

    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v16 = sub_10018BF68(0xD000000000000026, 0x80000001002015E0, sub_1001CF230, v15);

    *&v1[v2] = v16;
  }
}

void sub_1001CE290(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (sub_1001CF2AC(a1))
    {
      v5 = OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_pushHandler;
      v6 = *&v4[OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_pushHandler];
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v8 = [v6 shouldHandleNotification:isa];

      if (v8)
      {
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        type metadata accessor for LogInterpolation();
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1001E5F70;
        v22 = type metadata accessor for UserNotificationsService();
        v21[0] = v4;
        v10 = v4;
        v11 = AMSLogKey();
        if (v11)
        {
          v12 = v11;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(v21);
        LogInterpolation.init(stringLiteral:)();
        if (qword_1002686B0 != -1)
        {
          swift_once();
        }

        v17 = static os_log_type_t.default.getter();
        sub_1000036B0(v17, v9);

        v18 = *&v4[v5];
        v19 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v18 handleNotification:v19];
      }

      else
      {

        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        type metadata accessor for LogInterpolation();
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1001E5F70;
        v22 = type metadata accessor for UserNotificationsService();
        v21[0] = v4;
        v14 = v4;
        v15 = AMSLogKey();
        if (v15)
        {
          v16 = v15;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(v21);
        LogInterpolation.init(stringLiteral:)();
        if (qword_1002686B0 != -1)
        {
          swift_once();
        }

        v20 = static os_log_type_t.default.getter();
        sub_1000036B0(v20, v13);
      }
    }

    else
    {
    }
  }
}

void sub_1001CE6B0(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_centerBundleIdentifiers;
  swift_beginAccess();
  v7 = sub_1000AAA44(a1, *&v2[v6]);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v11 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v11);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001E5F70;
    v31 = type metadata accessor for UserNotificationsService();
    v30[0] = v2;
    v13 = v2;
    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v30);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._countAndFlagsBits = 0xD00000000000004ALL;
    v21._object = 0x80000001002048C0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    v31 = &type metadata for String;
    v30[0] = v9;
    v30[1] = v10;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v30);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v23 = static os_log_type_t.default.getter();
    sub_1000036B0(v23, v12);

    sub_100002BC0(0, &qword_1002723C8, AMSUserNotificationMetricsEvent_ptr);
    v24 = objc_opt_self();
    v25 = a2;
    v26 = [v24 ams_sharedAccountStore];
    v27 = [v26 ams_activeiTunesAccount];

    v28 = sub_1001CEB2C(v25, v9, v10, v27);
    if (qword_1002685E8 != -1)
    {
      swift_once();
    }

    [qword_100287778 enqueueEvent:v28];
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v16 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v16);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1001E5F70;
    v31 = type metadata accessor for UserNotificationsService();
    v30[0] = v2;
    v18 = v2;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v30);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v29 = static os_log_type_t.error.getter();
    sub_1000036B0(v29, v17);
  }
}

id sub_1001CEB2C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [swift_getObjCClassFromMetadata() eventForSettingsChangedWithSettings:a1 bundleID:v6 account:a4];

  return v7;
}

void sub_1001CEC34(uint64_t a1, uint64_t a2, char *a3, void (**a4)(void))
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_centerBundleIdentifiers;
  swift_beginAccess();
  v9 = sub_1000AAA44(a1, *&a3[v8]);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v33 = a4;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001E5F70;
    v32 = type metadata accessor for UserNotificationsService();
    v36 = v32;
    v35[0] = a3;
    v31 = a3;
    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v35);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 0xD000000000000039;
    v20._object = 0x8000000100204820;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    v36 = &type metadata for String;
    v35[0] = v11;
    v35[1] = v12;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v35);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v22 = static os_log_type_t.default.getter();
    sub_1000036B0(v22, v13);

    v23 = objc_opt_self();
    if ([v23 shouldHandleNotificationResponse:a2])
    {
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1001E5F70;
      v36 = v32;
      v35[0] = v31;
      v25 = v31;
      v26 = AMSLogKey();
      if (v26)
      {
        v27 = v26;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v35);
      LogInterpolation.init(stringLiteral:)();
      v29 = static os_log_type_t.default.getter();
      sub_1000036B0(v29, v24);

      sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
      v30 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
    }

    a4 = v33;
    v33[2](v33);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001E5F70;
    v36 = type metadata accessor for UserNotificationsService();
    v35[0] = a3;
    v17 = a3;
    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v35);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v28 = static os_log_type_t.error.getter();
    sub_1000036B0(v28, v16);
  }

  _Block_release(a4);
}

id sub_1001CF238(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [v1 initWithEnabledActionTypes:v2.super.isa];

  return v3;
}

uint64_t sub_1001CF2AC(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1001CF318()
{
  result = qword_1002723D8;
  if (!qword_1002723D8)
  {
    sub_100002BC0(255, &qword_1002723D0, UNNotificationCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002723D8);
  }

  return result;
}

void sub_1001CF380()
{
  sub_100003D74();
  v0 = sub_100007E0C();
  v1 = sub_100003D10(v0);
  __chkstk_darwin(v1);
  sub_100005478();
  if (qword_100268740 != -1)
  {
    sub_1000070EC(&qword_100268740);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F70;
  v4 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v5);
  sub_1000086C4(&type metadata for String);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(&v9);
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v6);
  LogInterpolation.init(stringInterpolation:)();
  v7 = static os_log_type_t.default.getter();
  sub_1000036B0(v7, v3);

  v8 = String.utf8CString.getter();
  xpc_activity_unregister((v8 + 32));

  sub_100005F14();
}

void sub_1001CF568()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = sub_100003D10(v6);
  __chkstk_darwin(v7);
  if (qword_100268740 != -1)
  {
    sub_1000070EC(&qword_100268740);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E5F70;
  v21 = v5;
  v22 = v3;
  v23 = v1;
  v24 = &unk_100254510;
  swift_unknownObjectRetain();

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v21);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  v24 = &type metadata for String;
  v21 = v3;
  v22 = v1;
  swift_bridgeObjectRetain_n();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(&v21);
  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  LogInterpolation.init(stringInterpolation:)();
  v14 = static os_log_type_t.default.getter();
  sub_1000036B0(v14, v9);

  if (!xpc_activity_set_state(v5, 5))
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1001E5F70;
    v21 = v5;
    v22 = v3;
    v23 = v1;
    v24 = &unk_100254510;
    swift_unknownObjectRetain();

    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v21);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._countAndFlagsBits = 0xD00000000000002ELL;
    v18._object = 0x8000000100204B00;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    v24 = &type metadata for String;
    v21 = v3;
    v22 = v1;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(&v21);
    v19._countAndFlagsBits = 41;
    v19._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
    LogInterpolation.init(stringInterpolation:)();
    v20 = static os_log_type_t.error.getter();
    sub_1000036B0(v20, v15);
  }

  sub_100005F14();
}

uint64_t sub_1001CF8F0(_xpc_activity_s *a1)
{
  state = xpc_activity_get_state(a1);
  if (state >= 6)
  {
    return 0;
  }

  else
  {
    return (0x40203050601uLL >> (8 * state));
  }
}

void sub_1001CF924()
{
  sub_100003D74();
  v3 = v2;
  v18 = v4;
  v5 = sub_100007E0C();
  v6 = sub_100003D10(v5);
  __chkstk_darwin(v6);
  sub_100005478();
  if (qword_100268740 != -1)
  {
    sub_1000070EC(&qword_100268740);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E5F70;
  v9 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v10._countAndFlagsBits = 0xD000000000000016;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  sub_1000086C4(&type metadata for String);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(&v19);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  LogInterpolation.init(stringInterpolation:)();
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12, v8);

  sub_1001D0A98();
  v13 = swift_allocObject();
  v13[2] = v1;
  v13[3] = v0;
  v13[4] = v18;
  v13[5] = v3;

  v14 = sub_100006710();
  sub_100066DC8(v14, v15, v16, v17, v13);
  swift_unknownObjectRelease();

  sub_100005F14();
}

uint64_t sub_1001CFB64(_xpc_activity_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_xpc_activity_s *, uint64_t, uint64_t, _BOOL8), uint64_t a7)
{
  v52 = a7;
  v53 = a6;
  v57 = a4;
  v58 = a5;
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  v19 = type metadata accessor for OSSignpostID();
  v20 = *(v19 - 8);
  v60 = v19;
  v61 = v20;
  v21 = __chkstk_darwin(v19);
  v54 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v49 - v23;
  if (qword_100268740 != -1)
  {
    swift_once();
  }

  v25 = qword_1002878A0;
  v26 = *(qword_1002878A0 + 16);
  OSSignposter.init(logHandle:)();
  String._bridgeToObjectiveC()();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:object:)();
  v27 = *(v13 + 8);
  v27(v18, v12);
  v56 = v25;
  v28 = *(v25 + 16);
  OSSignposter.init(logHandle:)();
  swift_unknownObjectRetain();

  v29 = OSSignposter.logHandle.getter();
  LODWORD(v59) = static os_signpost_type_t.begin.getter();

  swift_unknownObjectRelease();
  v30 = OS_os_log.signpostsEnabled.getter();
  v31 = a1;
  v50 = a2;
  v51 = a3;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v49 = v12;
    v63[0] = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_1000127B4();
    *(v32 + 12) = 2080;
    v62 = sub_1001CF8F0(v31);
    String.init<A>(describing:)();
    v34 = v31;
    v35 = sub_1000127B4();

    *(v32 + 14) = v35;
    v36 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v59, v36, "Activity", "%s beginning with %s state", v32, 0x16u);
    swift_arrayDestroy();
    v12 = v49;
  }

  else
  {

    v34 = a1;
  }

  v37 = v60;
  v38 = *(v61 + 16);
  v59 = v24;
  v38(v54, v24, v60);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v39 = OSSignpostIntervalState.init(id:isOpen:)();
  v27(v16, v12);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1001E5F70;
  v41 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v42._object = 0x8000000100204AA0;
  v42._countAndFlagsBits = 0xD000000000000010;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v42);
  v64 = &type metadata for String;
  v63[0] = v57;
  v63[1] = v58;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v63);
  v43._countAndFlagsBits = 0x203A657461747320;
  v43._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v43);
  v44 = sub_1001CF8F0(v34);
  v64 = &unk_100254408;
  LOBYTE(v63[0]) = v44;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v63);
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v45);
  LogInterpolation.init(stringInterpolation:)();
  v46 = static os_log_type_t.default.getter();
  sub_1000036B0(v46, v40);

  if (sub_1001CF8F0(v34) == 5 || sub_1001CF8F0(v34) == 4)
  {
    v47 = sub_1001CF8F0(v34) == 5;
    v53(v34, v50, v51, v47);
  }

  sub_1001D01A8(v39);

  return (*(v61 + 8))(v59, v37);
}

uint64_t sub_1001D01A8(uint64_t a1)
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
  if (qword_100268740 != -1)
  {
    swift_once();
  }

  v10 = *(qword_1002878A0 + 16);
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
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v16, "Activity", v14, v15, 2u);
  }

  (*(v4 + 8))(v6, v21);
  return (*(v7 + 8))(v9, v20);
}

void sub_1001D04D0(_xpc_activity_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_xpc_activity_s *, uint64_t, uint64_t, _BOOL8), uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  if (xpc_activity_copy_criteria(a1))
  {
    swift_unknownObjectRelease();

    sub_1001CFB64(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (qword_100268740 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001E5F70;
    v17 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._object = 0x8000000100204A60;
    v18._countAndFlagsBits = 0xD000000000000032;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    v21[3] = &type metadata for String;
    v21[0] = a4;
    v21[1] = a5;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v21);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
    LogInterpolation.init(stringInterpolation:)();
    v20 = static os_log_type_t.debug.getter();
    sub_1000036B0(v20, v16);

    sub_1001CF924();
  }
}

_BYTE *sub_1001D07CC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001D08A4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001D098C()
{
  result = qword_100272450;
  if (!qword_100272450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272450);
  }

  return result;
}

unint64_t sub_1001D09E4()
{
  result = qword_100272458;
  if (!qword_100272458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272458);
  }

  return result;
}

uint64_t sub_1001D0A38(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 65;
      break;
    case 2:
      result = 66;
      break;
    case 3:
      result = 67;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1001D0A98()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  v2 = v1;
  if (*(v0 + 58))
  {
    v3 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  }

  else
  {
    v3 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  }

  xpc_dictionary_set_string(v1, XPC_ACTIVITY_PRIORITY, *v3);
  if (!*(v0 + 57))
  {
    if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v6 = 1;
    sub_10000BCFC(v4, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
    v5 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
    if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
    {
      goto LABEL_59;
    }

    goto LABEL_11;
  }

  if (*(v0 + 57) != 1)
  {
LABEL_12:
    switch(*(v0 + 1))
    {
      case 1:
        v7 = XPC_ACTIVITY_REQUIRES_CLASS_A;
        if (XPC_ACTIVITY_REQUIRES_CLASS_A)
        {
          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_15;
      case 2:
LABEL_15:
        v7 = XPC_ACTIVITY_REQUIRES_CLASS_B;
        if (XPC_ACTIVITY_REQUIRES_CLASS_B)
        {
          goto LABEL_18;
        }

        __break(1u);
LABEL_17:
        v7 = XPC_ACTIVITY_REQUIRES_CLASS_C;
        if (!XPC_ACTIVITY_REQUIRES_CLASS_C)
        {
          goto LABEL_60;
        }

LABEL_18:
        sub_10000BCFC(v4, v7);
LABEL_19:
        sub_10000BCFC(v4, XPC_ACTIVITY_PREVENT_DEVICE_SLEEP);
        xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, *(v0 + 59));
        if (!XPC_ACTIVITY_EXPECTED_DURATION)
        {
          goto LABEL_55;
        }

        if ((*(v0 + 24) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (*(v0 + 24) > -9.22337204e18)
        {
          sub_100006980();
          if (!v11)
          {
            goto LABEL_45;
          }

          sub_100003658(v10, v8, v9);
          xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, *v0);
          if ((*(v0 + 16) & 1) == 0)
          {
            v12 = *(v0 + 8);
            if ((~*&v12 & 0x7FF0000000000000) == 0)
            {
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            if (v12 <= -9.22337204e18)
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            sub_100006980();
            if (!v11)
            {
              goto LABEL_49;
            }

            sub_100003658(v14, v13, XPC_ACTIVITY_DELAY);
          }

          if ((*(v0 + 56) & 1) == 0)
          {
            v15 = *(v0 + 48);
            if ((~*&v15 & 0x7FF0000000000000) == 0)
            {
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            if (v15 <= -9.22337204e18)
            {
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

            sub_100006980();
            if (!v11)
            {
              goto LABEL_52;
            }

            sub_100003658(v17, v16, XPC_ACTIVITY_INTERVAL);
          }

          if (*(v0 + 40))
          {
            return;
          }

          v18 = *(v0 + 32);
          if ((~*&v18 & 0x7FF0000000000000) == 0)
          {
            goto LABEL_51;
          }

          if (v18 <= -9.22337204e18)
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          sub_100006980();
          if (v11)
          {
            sub_100003658(v20, v19, XPC_ACTIVITY_GRACE_PERIOD);
            return;
          }

LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      case 3:
        goto LABEL_17;
      default:
        goto LABEL_19;
    }
  }

  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_10000BCFC(v4, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
  v5 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
  if (XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
    v6 = 0;
LABEL_11:
    xpc_dictionary_set_BOOL(v2, v5, v6);
    goto LABEL_12;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

unint64_t sub_1001D0D70@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001FC50(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001D0DA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001D0A38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *sub_1001D0DCC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001D0EA8()
{
  result = qword_100272460;
  if (!qword_100272460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272460);
  }

  return result;
}

_BYTE *sub_1001D0EFC(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 sub_1001D0FD4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001D0FF0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[60])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1001D103C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 60) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 60) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1001D109C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001D1178()
{
  result = qword_100272468;
  if (!qword_100272468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272468);
  }

  return result;
}

unint64_t sub_1001D11D0()
{
  result = qword_100272470;
  if (!qword_100272470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272470);
  }

  return result;
}

void sub_1001D1224(uint64_t a1, uint64_t a2)
{
  v3 = sub_100049574(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_100002BC0(0, &qword_100272540, NSXPCConnection_ptr);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

id sub_1001D1320()
{
  [*&v0[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_listener] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCServiceProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001D1460(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connections;
  swift_beginAccess();
  v5 = *(a1 + v4);

  sub_1001D1224(a2, v5);
  v7 = v6;
  LOBYTE(a2) = v8;

  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    v9 = sub_1001D1514(v7);
    swift_endAccess();
  }
}

unint64_t sub_1001D1514(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1001D1A40(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    sub_1000D6AC0((v8 + 40), v7, (v8 + 32));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

void *sub_1001D15A0(uint64_t a1, int a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1001E5F60;
    v11 = type metadata accessor for XPCServiceProvider();
    v10[0] = v4;
    v6 = v4;
    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v10);
    LogInterpolation.init(stringLiteral:)();
    v11 = &type metadata for Int32;
    LODWORD(v10[0]) = a2;
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v10);
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v9 = static os_log_type_t.error.getter();
    sub_1000036B0(v9, v5);
  }

  return result;
}

void sub_1001D1798(uint64_t a1, uint64_t a2, int a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1001E5F60;
      v17 = type metadata accessor for XPCServiceProvider();
      v16[0] = v5;
      v9 = v5;
      v10 = AMSLogKey();
      if (v10)
      {
        v11 = v10;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v16);
      LogInterpolation.init(stringLiteral:)();
      v17 = &type metadata for Int32;
      LODWORD(v16[0]) = a3;
      static LogInterpolation.safe(_:)();
      sub_100002C5C(v16);
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v12 = static os_log_type_t.default.getter();
      sub_1000036B0(v12, v8);

      v13 = *&v9[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connectionsLock];
      v14 = v9;
      v15 = v7;
      [v13 lock];
      sub_1001D1460(v14, v15);
      [v13 unlock];
    }
  }
}

uint64_t sub_1001D1A40(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

id AMSDTranslateCloudKitError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (([v1 amsd_isCKChangeTokenExpiredError] & 1) == 0 && (objc_msgSend(v2, "amsd_isCKManateeUnavailable") & 1) == 0 && (objc_msgSend(v2, "amsd_isCKMissingManateeIdentity") & 1) == 0 && (objc_msgSend(v2, "amsd_isCKPartialFailureError") & 1) == 0 && (objc_msgSend(v2, "amsd_isCKServerRecordChangedError") & 1) == 0 && (objc_msgSend(v2, "amsd_isCKThrottledError") & 1) == 0)
    {
      [v2 amsd_isCKUnknownItemError];
    }

    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = [v2 userInfo];
    v6 = [v5 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = [v7 ams_mapWithTransform:&stru_100254888];
      [v4 setObject:v8 forKeyedSubscript:@"AMSCloudDataPartialFailureErrorsKey"];
    }

    v9 = [v2 userInfo];
    v10 = [v9 objectForKeyedSubscript:CKErrorRetryAfterKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      [v4 setObject:v11 forKeyedSubscript:@"AMSCloudDataRetryAfterKey"];
    }

    v12 = [v2 ams_title];
    v13 = [v2 ams_message];
    v3 = AMSCustomError();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

AMSPair *__cdecl sub_1001D221C(id a1, id a2, NSError *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = AMSDTranslateCloudKitError(v4);

  v8 = [v6 initWithFirst:v5 second:v7];

  return v8;
}

void sub_1001D3B38(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 deviceToDeviceEncryptionAvailability]);
  [v4 finishWithResult:v6 error:v5];
}

id sub_1001D3D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 finishWithResult:{a3, a4}];
  }

  else
  {
    return [v4 finishWithError:a4];
  }
}

id sub_1001D3F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 finishWithResult:{a3, a4}];
  }

  else
  {
    return [v4 finishWithError:a4];
  }
}

void sub_1001D4230(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = AMSDTranslateCloudKitError(a4);
  v9 = v8;
  if (v8 && ![v8 ams_hasDomain:@"AMSCloudDataErrorDomain" code:4])
  {
    [*(a1 + 32) finishWithError:v9];
  }

  else
  {
    v10 = [[AMSCloudDataSavedRecordsResult alloc] initWithSavedRecords:v11 deletedRecords:v7 error:v9];
    [*(a1 + 32) finishWithResult:v10];
  }
}

AMSPromise *__cdecl sub_1001D4304(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1001D4680(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

AMSPromise *__cdecl sub_1001D4754(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1001D4900(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    [v8 finishWithResult:v10];
  }

  else if (v6)
  {
    [v8 finishWithError:v6];
  }

  else
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
  }
}

AMSPromise *__cdecl sub_1001D49C4(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

id sub_1001D4AFC(id a1, AMSCloudDataRecordZoneIdentifier *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1001D4B6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) scope];
  v6 = [v3 zoneName];

  v7 = [v4 _fetchChangeTokenWithDatabaseScope:v5 recordZoneName:v6];

  return v7;
}

id sub_1001D4CF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 amsd_isCKChangeTokenExpiredError])
  {
    [*(a1 + 32) persistChangedRecordZonesChangeToken:0];
    [*(a1 + 32) _fetchChangedRecordZonesWithServerChangeToken:0];
  }

  else
  {
    [AMSPromise promiseWithError:v3];
  }
  v4 = ;

  return v4;
}

AMSPromise *__cdecl sub_1001D4D74(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1001D5054(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v5)
  {
    [*(a1 + 40) finishWithResult:v5];
  }

  else
  {
    v6 = v14;
    if ([v6 amsd_isCKPartialFailureError])
    {
      v7 = [v6 userInfo];
      v8 = [v7 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = [v9 objectForKeyedSubscript:*(a1 + 32)];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v6 = v11;
    }

    v12 = *(a1 + 40);
    if (v6)
    {
      [v12 finishWithError:v6];
    }

    else
    {
      v13 = AMSError();
      [v12 finishWithError:v13];
    }
  }
}

AMSPromise *__cdecl sub_1001D51E8(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1001D5374(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = AMSDTranslateCloudKitError(a3);
  v6 = v5;
  if (v5 && ![v5 ams_hasDomain:@"AMSCloudDataErrorDomain" code:4])
  {
    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    v7 = [v6 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"AMSCloudDataPartialFailureErrorsKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [AMSCloudDataFetchResult alloc];
    if (v13)
    {
      v11 = v13;
    }

    else
    {
      v11 = &__NSDictionary0__struct;
    }

    v12 = [(AMSCloudDataFetchResult *)v10 initWithResults:v11 failures:v9];
    [*(a1 + 32) finishWithResult:v12];
  }
}

void sub_1001D54A4(uint64_t a1, void *a2)
{
  v3 = [a2 failures];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D5534;
  v4[3] = &unk_100254B58;
  v4[4] = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void sub_1001D5810(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      v7 = AMSHashIfNeeded();
      v8 = AMSHashIfNeeded();
      v9 = 138544130;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to save a database change token. database = %{public}@ | error = %{public}@", &v9, 0x2Au);
    }
  }
}

void sub_1001D5D54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      v8 = [*(a1 + 32) scope];
      v9 = AMSHashIfNeeded();
      v10 = AMSHashIfNeeded();
      v11 = 138544386;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to save a record zone change token. databaseScope = %ld | zoneName = %{public}@ | error = %{public}@", &v11, 0x34u);
    }
  }
}

void sub_1001D606C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

AMSPromise *__cdecl sub_1001D6140(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1001D6344(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

AMSPromise *__cdecl sub_1001D6418(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1001D6878(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

id sub_1001D694C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      *buf = 138543618;
      v43 = v9;
      v44 = 2114;
      v45 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully setup the database subscription.", buf, 0x16u);
    }

    v11 = [NSNumber numberWithUnsignedInteger:*(a1 + 56) + 1];
    v12 = [AMSPromise promiseWithResult:v11];
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v7 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = AMSLogableError();
      *buf = 138543874;
      v43 = v14;
      v44 = 2114;
      v45 = v15;
      v46 = 2114;
      v47 = *&v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to setup the database subscription. error = %{public}@", buf, 0x20u);
    }

    v17 = *(a1 + 56);
    if (v17 > 9)
    {
      v31 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v31)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      v32 = [v31 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = AMSLogKey();
        *buf = 138543618;
        v43 = v33;
        v44 = 2114;
        v45 = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attempted to setup the database subscription too many times. Refusing to try again.", buf, 0x16u);
      }

      v12 = [AMSPromise promiseWithError:v5];
    }

    else
    {
      v18 = v17 + 1;
      v19 = exp2((v17 + 1));
      v20 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v20)
      {
        v20 = +[AMSLogConfig sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        v23 = AMSLogKey();
        *buf = 138543874;
        v43 = v22;
        v44 = 2114;
        v45 = v23;
        v46 = 2048;
        v47 = v19;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Scheduling another attempt to setup the database subscription. timeInterval = %f", buf, 0x20u);
      }

      v24 = objc_alloc_init(AMSPromise);
      v25 = dispatch_time(0, (v19 * 1000000000.0));
      v26 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001D6DEC;
      block[3] = &unk_100254C38;
      v27 = v24;
      v28 = *(a1 + 32);
      v29 = *(a1 + 40);
      v37 = v27;
      v38 = v28;
      v39 = v29;
      v40 = *(a1 + 48);
      v41 = v18;
      dispatch_after(v25, v26, block);

      v30 = v40;
      v12 = v27;
    }
  }

  return v12;
}

void sub_1001D6DEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _subscribeWithIdentifier:*(a1 + 48) recordZoneIdentifier:*(a1 + 56) attempt:*(a1 + 64)];
  [v1 finishWithPromise:v2];
}

void sub_1001D70E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (a4)
  {
    [*(a1 + 32) finishWithError:a4];
  }

  else
  {
    v6 = [[AMSCloudDataChangedRecordZonesResult alloc] initWithChangedRecordZones:*(a1 + 40) deletedRecordZones:*(a1 + 48) changeToken:v7];
    [*(a1 + 32) finishWithResult:v6];
  }
}

void sub_1001D7550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1001D7570(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];

  [v4 setPreviousServerChangeToken:v5];

  return v4;
}

void sub_1001D75F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = v3;
  v5 = [v3 recordID];
  v6 = [v5 zoneID];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = *(a1 + 32);
    v9 = [v11 recordID];
    v10 = [v9 zoneID];
    [v8 setObject:v7 forKeyedSubscript:v10];
  }

  [v7 addObject:v11];
}

void sub_1001D76D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 zoneID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = *(a1 + 32);
    v8 = [v9 zoneID];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  [v6 addObject:v9];
}

void sub_1001D7790(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v15 = a6;
  if (v15)
  {
    v9 = *(a1 + 40);
    v10 = a2;
    [v9 setObject:0 forKeyedSubscript:v10];
    [*(a1 + 48) setObject:0 forKeyedSubscript:v10];
    v11 = *(a1 + 56);
    v12 = v15;
    v13 = v10;
  }

  else
  {
    v14 = *(a1 + 32);
    v13 = a2;
    v11 = v14;
    v12 = a3;
  }

  [v11 setObject:v12 forKeyedSubscript:v13];
}

void sub_1001D7840(id *a1, void *a2)
{
  v3 = a2;
  v4 = AMSSetLogKey();
  if ([a1[5] count] || objc_msgSend(a1[6], "count") || objc_msgSend(a1[7], "count") || (v14 = objc_msgSend(a1[8], "count"), !v3) || v14)
  {
    if (v3)
    {
      v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v5)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        WeakRetained = objc_loadWeakRetained(a1 + 10);
        v8 = objc_opt_class();
        v9 = AMSLogKey();
        v10 = AMSHashIfNeeded();
        v15 = 138543874;
        v16 = v8;
        v17 = 2114;
        v18 = v9;
        v19 = 2114;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Received both valid data and an error when fetching record zone changes. error = %{public}@", &v15, 0x20u);
      }

      v11 = objc_loadWeakRetained(a1 + 10);
      [v11 _handleError:v3 andErrors:a1[7]];
    }

    v12 = [a1[7] ams_mapWithTransform:&stru_100254D68];
    v13 = [[AMSCloudDataChangedRecordsResult alloc] initWithChangedRecords:a1[5] deletedRecords:a1[6] errors:v12 changeTokens:a1[8]];
    [a1[9] finishWithResult:v13];
  }

  else
  {
    [a1[9] finishWithError:v3];
  }
}

AMSPair *__cdecl sub_1001D7A48(id a1, CKRecordZoneID *a2, NSError *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = AMSDTranslateCloudKitError(v4);

  v8 = [v6 initWithFirst:v5 second:v7];

  return v8;
}

AMSPromise *__cdecl sub_1001D7AD8(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

BOOL sub_1001D8114(id a1, id a2, id a3)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1001D8828(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = AMSHashIfNeeded();
  v5 = [*(a1 + 40) encryptedValuesByKey];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = AMSHashIfNeeded();
  [v3 appendFormat:@"\n  %@ = %@, ", v8, v7];
}

uint64_t sub_1001D8EA0()
{
  sub_100004768();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v4 = type metadata accessor for URL();
  v0[6] = v4;
  v0[7] = *(v4 - 8);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001D8F98, 0, 0);
}

uint64_t sub_1001D8F98()
{
  v1 = *(v0 + 24);
  v2 = objc_opt_self();
  *(v0 + 16) = 0;
  v3 = [v2 dataWithPropertyList:v1 format:100 options:0 error:v0 + 16];
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    sub_1001D91A0(v5);
    URL.appendingPathComponent(_:)();
    v11 = *(v7 + 8);
    v11(v5, v6);
    Data.write(to:options:)();
    v11(*(v0 + 72), *(v0 + 48));
    sub_1000253FC(v8, v10);
  }

  else
  {
    v12 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_100002D8C();

  return v13();
}

void sub_1001D91A0(uint64_t a1@<X8>)
{
  v2 = sub_10007B9A4(&qword_100272AB8, &qword_1001F23B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for URL();
  sub_100002CC4();
  v7 = v6;
  v9 = __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = [objc_opt_self() ams_cachesDirectory];
  if (v12)
  {
    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v7 + 32);
    v15 = sub_100023F80();
    v14(v15);
    v16._countAndFlagsBits = 0x7363697274654DLL;
    v16._object = 0xE700000000000000;
    URL.appendPathComponent(_:)(v16);
    v17._object = 0x8000000100205370;
    v17._countAndFlagsBits = 0xD000000000000015;
    URL.appendPathComponent(_:)(v17);
    v18 = [objc_opt_self() defaultManager];
    sub_1001D9B98(v11, 1, 0, v4);

    if (sub_100009F34(v4, 1, v5) == 1)
    {
      (v14)(a1, v11, v5);
      if (sub_100009F34(v4, 1, v5) != 1)
      {
        sub_10000A00C(v4, &qword_100272AB8, &qword_1001F23B8);
      }
    }

    else
    {
      (*(v7 + 8))(v11, v5);
      (v14)(a1, v4, v5);
    }
  }

  else
  {
    v19 = [objc_opt_self() defaultManager];
    v22 = [v19 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v22;
  }
}

uint64_t sub_1001D9524(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v7;
  v8 = a1;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1001D960C;

  return sub_1001D8EA0();
}

uint64_t sub_1001D960C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[4];
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v3[4], 0);
  }

  _Block_release(v4[4]);
  v11 = v8[1];

  return v11();
}

uint64_t sub_1001D97C4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL();
  sub_100002CC4();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  sub_1001D91A0(v8);
  URL.appendingPathComponent(_:)();
  v11 = *(v4 + 8);
  v11(v8, v2);
  Data.init(contentsOf:options:)();
  v12 = objc_opt_self();
  sub_100023F80();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v23[0] = 0;
  v14 = [v12 propertyListWithData:isa options:0 format:0 error:v23];

  v15 = *&v23[0];
  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    v16 = sub_100023F80();
    sub_1000253FC(v16, v17);
    swift_unknownObjectRelease();
    v11(v10, v2);
    sub_100002C4C(&v24, v23);
    sub_1001D9FD0();
    if (swift_dynamicCast())
    {
      return v22[1];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v19 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = sub_100023F80();
    sub_1000253FC(v20, v21);
    v11(v10, v2);

    return 0;
  }
}

id TokenStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TokenStorage.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TokenStorage();
  return objc_msgSendSuper2(&v2, "init");
}

id TokenStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TokenStorage();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001D9B98@<X0>(uint64_t a1@<X0>, char a2@<W1>, Class isa@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  URL.path.getter();
  v10 = String._bridgeToObjectiveC()();

  LODWORD(v5) = [v5 fileExistsAtPath:v10];

  if (v5)
  {
    v11 = type metadata accessor for URL();
    sub_100002DDC();
    (*(v12 + 16))(a4, a1, v11);
    v13 = sub_100005B58();

    return sub_10000A7C0(v13, v14, v15, v16);
  }

  else
  {
    v18 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    if (isa)
    {
      _s3__C16FileAttributeKeyVMa_0();
      sub_1001DA65C(&qword_100272AC0, &unk_1001F2588);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    v32 = 0;
    v22 = [v18 createDirectoryAtURL:v21 withIntermediateDirectories:a2 & 1 attributes:isa error:&v32];

    v31 = v32;
    if (v22)
    {
      v23 = type metadata accessor for URL();
      sub_100002DDC();
      (*(v24 + 16))(a4, a1, v23);
      v25 = sub_100005B58();
      sub_10000A7C0(v25, v26, v27, v28);

      return v31;
    }

    else
    {
      v29 = v32;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v30 = type metadata accessor for URL();
      return sub_10000A7C0(a4, 1, 1, v30);
    }
  }
}

uint64_t sub_1001D9E68(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1001D9EE4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1001D9F74(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

unint64_t sub_1001D9FD0()
{
  result = qword_100272AB0;
  if (!qword_100272AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100272AB0);
  }

  return result;
}

void _s3__C16FileAttributeKeyVMa_0()
{
  if (!qword_100272AD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100272AD0);
    }
  }
}

uint64_t sub_1001DA064()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1000035D8(v1);

  return v3(v2);
}

uint64_t sub_1001DA114(uint64_t a1)
{
  v2 = sub_1001DA65C(&qword_100272AC0, &unk_1001F2588);
  v3 = sub_1001DA65C(&unk_100272AF0, &unk_1001F24DC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001DA1AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_1001DA1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10007B9A4(&qword_100272AC8, &qword_1001F23D0);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_1001DA4B8(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (sub_100009F34(v11, 1, v12) == 1)
  {
    sub_10000A00C(v11, &qword_100272AC8, &qword_1001F23D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_10000A00C(a3, &qword_100272AC8, &qword_1001F23D0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A00C(a3, &qword_100272AC8, &qword_1001F23D0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1001DA4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100272AC8, &qword_1001F23D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DA528()
{
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v3 = sub_100003690(v1);

  return v4(v3);
}

uint64_t sub_1001DA65C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s3__C16FileAttributeKeyVMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t PipelinePhase.init(mapOutput:)()
{
  return PipelinePhase.init(mapOutput:)();
}

{
  return PipelinePhase.init(mapOutput:)();
}

uint64_t AsyncObjectGraphBuilder.satisfying<A>(_:with:)()
{
  return AsyncObjectGraphBuilder.satisfying<A>(_:with:)();
}

{
  return AsyncObjectGraphBuilder.satisfying<A>(_:with:)();
}

uint64_t Bag.subscript.getter()
{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
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

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
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

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}