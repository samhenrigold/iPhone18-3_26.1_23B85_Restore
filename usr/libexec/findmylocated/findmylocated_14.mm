unint64_t sub_100181EB4()
{
  result = qword_1005ADB60;
  if (!qword_1005ADB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB60);
  }

  return result;
}

unint64_t sub_100181F08()
{
  result = qword_1005ADB68;
  if (!qword_1005ADB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB68);
  }

  return result;
}

__n128 sub_100181F5C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100181F80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100181FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10018203C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x797469726F697270;
    v5 = 0xD00000000000001ALL;
    if (a1 != 8)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0xD000000000000010;
    if (a1 != 5)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x4164657269736564;
    if (a1 != 3)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD000000000000015;
    if (a1)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1001821A8(void *a1)
{
  v3 = sub_10004B564(&qword_1005ADB88, &qword_1004CC040);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100011AEC(a1, a1[3]);
  sub_100182F54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[8] = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[7] = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[6] = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void *sub_100182428@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001824E4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100182514(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t sub_10018255C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t sub_1001825B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1001825D4()
{
  v1 = *v0;

  return v1;
}

Swift::Int sub_100182604()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100182658()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1001826A0()
{
  result = qword_1005ADB70;
  if (!qword_1005ADB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB70);
  }

  return result;
}

uint64_t sub_1001826FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100182810(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100182724(uint64_t a1)
{
  v2 = sub_100182F54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100182760(uint64_t a1)
{
  v2 = sub_100182F54();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10018279C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100182B4C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_100182810(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001004E3BF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E3C10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004E3C30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4164657269736564 && a2 == 0xEF79636172756363 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004E3C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E3C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001004E3C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001004E3CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004E3CD0 == a2)
  {

    return 9;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_100182B4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005ADB78, &qword_1004CC038);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_100182F54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  LOBYTE(v40[0]) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  LOBYTE(v40[0]) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v40[0]) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v40[0]) = 3;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  v18 = v15;
  LOBYTE(v40[0]) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v19;
  LOBYTE(v40[0]) = 5;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40[0]) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v21;
  LOBYTE(v40[0]) = 7;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40[0]) = 8;
  KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v23;
  v46[0] = 9;
  KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v25;
  v27 = v33 & 1;
  (*(v6 + 8))(v8, v5);
  *&v34 = v10;
  *(&v34 + 1) = v12;
  *&v35 = v14;
  *(&v35 + 1) = v18;
  *&v36 = v17;
  *(&v36 + 1) = v20;
  LOBYTE(v37) = v27;
  *(&v37 + 1) = v22;
  v28 = v32;
  *&v38 = v32;
  *(&v38 + 1) = v24;
  v39 = v26;
  sub_100182FA8(&v34, v40);
  sub_100004984(a1);
  v40[0] = v10;
  v40[1] = v12;
  v40[2] = v14;
  v40[3] = v18;
  v40[4] = v17;
  v40[5] = v20;
  v41 = v27;
  v42 = v22;
  v43 = v28;
  v44 = v24;
  v45 = v26;
  result = sub_1000C76B4(v40);
  v30 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v30;
  *(a2 + 64) = v38;
  *(a2 + 80) = v39;
  v31 = v35;
  *a2 = v34;
  *(a2 + 16) = v31;
  return result;
}

unint64_t sub_100182F54()
{
  result = qword_1005ADB80;
  if (!qword_1005ADB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB80);
  }

  return result;
}

unint64_t sub_100182FE0()
{
  result = qword_1005ADB90;
  if (!qword_1005ADB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB90);
  }

  return result;
}

unint64_t sub_100183048()
{
  result = qword_1005ADB98;
  if (!qword_1005ADB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB98);
  }

  return result;
}

unint64_t sub_1001830A0()
{
  result = qword_1005ADBA0;
  if (!qword_1005ADBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADBA0);
  }

  return result;
}

unint64_t sub_1001830F8()
{
  result = qword_1005ADBA8;
  if (!qword_1005ADBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADBA8);
  }

  return result;
}

void sub_100183178(uint64_t a1)
{
  sub_100183260();
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      sub_1001832B8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100183260()
{
  if (!qword_1005ADC18)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1005ADC18);
    }
  }
}

void sub_1001832B8(uint64_t a1)
{
  if (!qword_1005ADC20)
  {
    sub_10018331C();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1005ADC20);
    }
  }
}

unint64_t sub_10018331C()
{
  result = qword_1005ADC28;
  if (!qword_1005ADC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADC28);
  }

  return result;
}

uint64_t sub_100183370()
{
  _StringGuts.grow(_:)(465);
  v1._countAndFlagsBits = 0xD000000000000024;
  v1._object = 0x80000001004E3DD0;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x80000001004E3E00;
  String.append(_:)(v3);
  if (v0[8])
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v0[8])
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 0xD000000000000020;
  v7._object = 0x80000001004E3E20;
  String.append(_:)(v7);
  Double.write<A>(to:)();
  v8._countAndFlagsBits = 0xD000000000000020;
  v8._object = 0x80000001004E3E50;
  String.append(_:)(v8);
  Double.write<A>(to:)();
  v9._countAndFlagsBits = 0xD00000000000001CLL;
  v9._object = 0x80000001004E3E80;
  String.append(_:)(v9);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD000000000000018;
  v11._object = 0x80000001004E3EA0;
  String.append(_:)(v11);
  Double.write<A>(to:)();
  v12._object = 0x80000001004E3EC0;
  v12._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v12);
  Double.write<A>(to:)();
  v13._countAndFlagsBits = 0xD000000000000021;
  v13._object = 0x80000001004E3EE0;
  String.append(_:)(v13);
  if (v0[56])
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v0[56])
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17._countAndFlagsBits = 0xD00000000000001FLL;
  v17._object = 0x80000001004E3F10;
  String.append(_:)(v17);
  v18._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0xD000000000000019;
  v19._object = 0x80000001004E3F30;
  String.append(_:)(v19);
  Double.write<A>(to:)();
  v20._object = 0x80000001004E3F50;
  v20._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v20);
  if (v0[80])
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v0[80])
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  v23 = v22;
  String.append(_:)(*&v21);

  v24._countAndFlagsBits = 0xD000000000000024;
  v24._object = 0x80000001004E3F70;
  String.append(_:)(v24);
  Double.write<A>(to:)();
  v25._countAndFlagsBits = 0xD00000000000001DLL;
  v25._object = 0x80000001004E3FA0;
  String.append(_:)(v25);
  Double.write<A>(to:)();
  v26._countAndFlagsBits = 0xD00000000000001FLL;
  v26._object = 0x80000001004E3FC0;
  String.append(_:)(v26);
  Double.write<A>(to:)();
  v27._object = 0x80000001004E3FE0;
  v27._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v27);
  type metadata accessor for SecureLocationsConfig(0);
  type metadata accessor for URL();
  sub_10018696C(&qword_1005ADD18, &protocol conformance descriptor for URL);
  v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v28);

  return 0;
}

uint64_t sub_1001837C0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10004B564(&qword_1005A9178, &qword_1004CCD60);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-v4];
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Credentials(0);
  type metadata accessor for Credentials.SecureLocationsProperties(0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002CE0(v5, &qword_1005A9178, &qword_1004CCD60);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFB98);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No url found in account bag", v13, 2u);
    }

    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.path.setter();
    return URLComponents.host.setter();
  }

  else
  {
    v15 = *(v7 + 32);
    v15(v9, v5, v6);
    v16 = URLComponents.path.modify();
    v17._countAndFlagsBits = 0x6769666E6F63;
    v17._object = 0xE600000000000000;
    String.append(_:)(v17);
    v16(v18, 0);
    return v15(a2, v9, v6);
  }
}

uint64_t sub_100183ABC(uint64_t a1)
{
  v2 = sub_100186F40();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100183AF8()
{
  v0 = type metadata accessor for UUID();
  sub_10004F154(v0, qword_1005DFC58);
  sub_10000A6F0(v0, qword_1005DFC58);
  v1 = String.utf8Data.getter();
  v3 = v2;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  return sub_1000049D0(v1, v3);
}

unint64_t sub_100183BA0(char a1)
{
  result = 0x6556747065636361;
  switch(a1)
  {
    case 1:
      result = 0x4565727574616566;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
    case 15:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000025;
      break;
    case 13:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      result = 0xD00000000000002ELL;
      break;
    case 16:
      result = 0x506873696C627570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100183DAC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100183BA0(*a1);
  v5 = v4;
  if (v3 == sub_100183BA0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100183E34()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100183BA0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100183E98(uint64_t a1)
{
  sub_100183BA0(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_100183EEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100183BA0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100183F4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100186C88(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100183F7C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100183BA0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100183FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100186C88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100183FEC(uint64_t a1)
{
  v2 = sub_10018665C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100184028(uint64_t a1)
{
  v2 = sub_10018665C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10018407C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v64 = type metadata accessor for URL();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v57 - v8;
  v10 = sub_10004B564(&qword_1005ADCA0, &unk_1004CC1E0);
  v65 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v67 = a1;
  sub_100011AEC(a1, v16);
  sub_10018665C();
  v17 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    sub_100004984(v67);
  }

  else
  {
    v58 = v7;
    v59 = v13;
    v60 = v9;
    v66 = v15;
    v18 = v65;
    LOBYTE(v69) = 0;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19;
    }

    v22 = v66;
    *v66 = v21;
    LOBYTE(v69) = 1;
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v22 + 8) = (v23 == 2) | v23 & 1;
    LOBYTE(v69) = 2;
    v24 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v25)
    {
      v24 = 100.0;
    }

    v22[2] = v24;
    LOBYTE(v69) = 3;
    v26 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v27)
    {
      v26 = 604800.0;
    }

    v22[3] = v26;
    LOBYTE(v69) = 4;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v29)
    {
      v30 = 5;
    }

    else
    {
      v30 = v28;
    }

    *(v22 + 4) = v30;
    LOBYTE(v69) = 5;
    v31 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v32)
    {
      v31 = 3600.0;
    }

    v22[5] = v31;
    LOBYTE(v69) = 6;
    v33 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v34)
    {
      v33 = 120.0;
    }

    v22[6] = v33;
    LOBYTE(v69) = 7;
    *(v22 + 56) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1;
    LOBYTE(v69) = 9;
    v35 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v36)
    {
      v35 = 120.0;
    }

    v22[9] = v35;
    sub_10004B564(&qword_1005ADCB0, &qword_1004CF4F0);
    v68 = 8;
    sub_1001867C8(&qword_1005ADCB8, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    v37 = v12;
    v38 = v10;
    v39 = v37;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v40 = v69;
    if (!v69)
    {
      if (qword_1005A7FA0 != -1)
      {
        swift_once();
      }
    }

    *(v66 + 8) = v40;
    LOBYTE(v69) = 10;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66[80] = (v41 == 2) | v41 & 1;
    LOBYTE(v69) = 11;
    v42 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v43)
    {
      v42 = 1800.0;
    }

    *(v66 + 11) = v42;
    LOBYTE(v69) = 12;
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = 5;
    if ((v45 & 1) == 0)
    {
      v46 = v44;
    }

    *(v66 + 12) = v46;
    LOBYTE(v69) = 13;
    v47 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v48)
    {
      v47 = 900.0;
    }

    *(v66 + 13) = v47;
    LOBYTE(v69) = 14;
    v49 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v50)
    {
      v49 = 1000.0;
    }

    *(v66 + 14) = v49;
    LOBYTE(v69) = 15;
    sub_10018696C(&qword_1005ADCC0, &protocol conformance descriptor for URL);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v51 = v58;
    sub_1001866B0(v60, v58);
    v52 = *(v62 + 48);
    if (v52(v51, 1, v64) == 1)
    {
      if (qword_1005A7FA8 != -1)
      {
        swift_once();
      }

      v53 = v64;
      v54 = sub_10000A6F0(v64, qword_1005DFC78);
      (*(v62 + 16))(v61, v54, v53);
      if (v52(v58, 1, v53) != 1)
      {
        sub_100002CE0(v58, &qword_1005A9DB8, &unk_1004CC1D0);
      }
    }

    else
    {
      (*(v62 + 32))(v61, v58, v64);
    }

    (*(v62 + 32))(&v66[*(v59 + 76)], v61, v64);
    sub_10004B564(&qword_1005ADCC8, &qword_1004CC1F0);
    v68 = 16;
    sub_100186834(&qword_1005ADCD0, sub_100186720, sub_100186774, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v55 = v69;
    if (!v69)
    {
      if (qword_1005A7FB0 != -1)
      {
        swift_once();
      }

      v55 = qword_1005DFC90;
    }

    sub_100002CE0(v60, &qword_1005A9DB8, &unk_1004CC1D0);
    (*(v18 + 8))(v39, v38);
    v56 = v66;
    *&v66[*(v59 + 80)] = v55;
    sub_10012BB3C(v56, v63);
    sub_100004984(v67);
    sub_10012BBA0(v56);
  }
}

uint64_t sub_100184A68(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADCE8, &qword_1004CC1F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_10018665C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 64);
    HIBYTE(v11) = 8;
    sub_10004B564(&qword_1005ADCB0, &qword_1004CF4F0);
    sub_1001867C8(&qword_1005ADCF0, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = type metadata accessor for SecureLocationsConfig(0);
    LOBYTE(v12) = 15;
    type metadata accessor for URL();
    sub_10018696C(&qword_1005ADCF8, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 80));
    HIBYTE(v11) = 16;
    sub_10004B564(&qword_1005ADCC8, &qword_1004CC1F0);
    sub_100186834(&qword_1005ADD00, sub_1001868C4, sub_100186918, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100184F10(void *a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005ADD90, &qword_1004CC628);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100011AEC(a1, a1[3]);
  sub_100186E98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10004B564(&qword_1005ADD58, &qword_1004CC610);
  sub_100187634(&qword_1005ADD98, sub_1001876B8, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001850A4(void *a1)
{
  v3 = sub_10004B564(&qword_1005ADD88, &qword_1004CC620);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100011AEC(a1, a1[3]);
  sub_1001875E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[8] = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[7] = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[6] = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100185338()
{
  v0 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_10004F154(v3, qword_1005DFC78);
  v4 = sub_10000A6F0(v3, qword_1005DFC78);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100185468()
{
  v0 = sub_100208B28(&off_10058A570);
  sub_10004B564(&qword_1005ADC98, &qword_1004CC1C8);
  result = swift_arrayDestroy();
  qword_1005DFC90 = v0;
  return result;
}

void sub_1001854E8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x506873696C627570 && a2 == 0xEF73656963696C6FLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_100185578(uint64_t a1)
{
  v2 = sub_100186E98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001855B4(uint64_t a1)
{
  v2 = sub_100186E98();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001855F0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100186CDC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100185638(uint64_t a1)
{
  v2 = sub_1001875E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100185674(uint64_t a1)
{
  v2 = sub_1001875E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001856B0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100186F94(a2, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v10;
    v6 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v6;
    v7 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
  }

  return result;
}

id sub_10018573C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100208D38(_swiftEmptyArrayStorage);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v5 = result;
    v6 = [result serverFriendlyDescription];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    sub_10014571C(v7, v9, 0xD000000000000011, 0x80000001004E2990);
    v10 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v10;
    sub_1004525D4(49, 0xE100000000000000, 0x562D747065636341, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v12 = v20;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v20 = v12;
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x2D746E65746E6F43, 0xEC00000065707954, v13);
    v21 = v20;
    Date.init()();
    v14 = Date.epoch.getter();
    (*(v1 + 8))(v3, v0);
    v20 = v14;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = v21;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = v18;
    sub_1004525D4(v15, v17, 0xD000000000000015, 0x80000001004E3D70, v19);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001859CC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v76[0] = 0;
  if (!sub_1000B9F08(v5, v4, v76))
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000A6F0(v28, qword_1005DFB98);
    sub_1001865F4(a1, v76);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10018662C(a1);
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_104;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v76[0] = v32;
    *v31 = 136315138;

    sub_10018662C(a1);
    v33 = sub_10000D01C(v5, v4, v76);

    *(v31 + 4) = v33;
    v34 = "Bad value for minTimeBetweenPublish: %s";
    goto LABEL_103;
  }

  v6 = v76[0];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v76[0] = 0;
  if (!sub_1000B9F08(v8, v7, v76))
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000A6F0(v35, qword_1005DFB98);
    sub_1001865F4(a1, v76);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10018662C(a1);
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_104;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v76[0] = v32;
    *v31 = 136315138;

    sub_10018662C(a1);
    v36 = sub_10000D01C(v8, v7, v76);

    *(v31 + 4) = v36;
    v34 = "Bad value for heartbeatPublish: %s";
    goto LABEL_103;
  }

  v75 = v76[0];
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v76[0] = 0;
  if (!sub_1000B9F08(v10, v9, v76))
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000A6F0(v37, qword_1005DFB98);
    sub_1001865F4(a1, v76);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10018662C(a1);
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_104;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v76[0] = v32;
    *v31 = 136315138;

    sub_10018662C(a1);
    v38 = sub_10000D01C(v10, v9, v76);

    *(v31 + 4) = v38;
    v34 = "Bad value for accuracyThreshold: %s";
    goto LABEL_103;
  }

  v74 = v76[0];
  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  v76[0] = 0;
  if (!sub_1000B9F08(v12, v11, v76))
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000A6F0(v39, qword_1005DFB98);
    sub_1001865F4(a1, v76);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10018662C(a1);
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_104;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v76[0] = v32;
    *v31 = 136315138;

    sub_10018662C(a1);
    v40 = sub_10000D01C(v12, v11, v76);

    *(v31 + 4) = v40;
    v34 = "Bad value for expirationInterval: %s";
    goto LABEL_103;
  }

  v13 = v76[0];
  v15 = *(a1 + 88);
  v14 = *(a1 + 96);
  v76[0] = 0;
  if (!sub_1000B9F08(v15, v14, v76))
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000A6F0(v41, qword_1005DFB98);
    sub_1001865F4(a1, v76);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10018662C(a1);
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_104;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v76[0] = v32;
    *v31 = 136315138;

    sub_10018662C(a1);
    v42 = sub_10000D01C(v15, v14, v76);

    *(v31 + 4) = v42;
    v34 = "Bad value for minDistanceBetweenPublish: %s";
LABEL_103:
    _os_log_impl(&_mh_execute_header, v29, v30, v34, v31, 0xCu);
    sub_100004984(v32);

LABEL_105:
    v6 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v65 = 0;
    v13 = 0;
    v21 = 0;
    v24 = 0;
    v63 = 0;
    v64 = 0;
    v67 = 0;
    goto LABEL_106;
  }

  v17 = *(a1 + 104);
  v16 = *(a1 + 112);
  v18 = HIBYTE(v16) & 0xF;
  v19 = v17 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_88;
  }

  v21 = v76[0];
  if ((v16 & 0x1000000000000000) == 0)
  {
    if ((v16 & 0x2000000000000000) != 0)
    {
      v76[0] = *(a1 + 104);
      v76[1] = v16 & 0xFFFFFFFFFFFFFFLL;
      if (v17 == 43)
      {
        if (v18)
        {
          if (--v18)
          {
            v24 = 0;
            v49 = v76 + 1;
            while (1)
            {
              v50 = *v49 - 48;
              if (v50 > 9)
              {
                break;
              }

              v51 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = v51 + v50;
              if (__OFADD__(v51, v50))
              {
                break;
              }

              ++v49;
              if (!--v18)
              {
                goto LABEL_87;
              }
            }
          }

          goto LABEL_86;
        }

LABEL_111:
        __break(1u);
LABEL_112:
        swift_once();
LABEL_101:
        v72 = type metadata accessor for Logger();
        sub_10000A6F0(v72, qword_1005DFB98);
        sub_1001865F4(a1, v76);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        sub_10018662C(a1);
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v76[0] = v32;
          *v31 = 136315138;

          sub_10018662C(a1);
          v73 = sub_10000D01C(v17, v16, v76);

          *(v31 + 4) = v73;
          v34 = "Bad value for onDemandThreshold: %s";
          goto LABEL_103;
        }

        goto LABEL_104;
      }

      if (v17 != 45)
      {
        if (v18)
        {
          v24 = 0;
          v54 = v76;
          while (1)
          {
            v55 = *v54 - 48;
            if (v55 > 9)
            {
              break;
            }

            v56 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v56 + v55;
            if (__OFADD__(v56, v55))
            {
              break;
            }

            v54 = (v54 + 1);
            if (!--v18)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_86;
      }

      if (v18)
      {
        if (--v18)
        {
          v24 = 0;
          v43 = v76 + 1;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            v45 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v45 - v44;
            if (__OFSUB__(v45, v44))
            {
              break;
            }

            ++v43;
            if (!--v18)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_86;
      }
    }

    else
    {
      if ((v17 & 0x1000000000000000) != 0)
      {
        v22 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v22 = _StringObject.sharedUTF8.getter();
      }

      v23 = *v22;
      if (v23 == 43)
      {
        if (v19 >= 1)
        {
          v18 = v19 - 1;
          if (v19 != 1)
          {
            v24 = 0;
            if (v22)
            {
              v46 = v22 + 1;
              while (1)
              {
                v47 = *v46 - 48;
                if (v47 > 9)
                {
                  goto LABEL_86;
                }

                v48 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  goto LABEL_86;
                }

                v24 = v48 + v47;
                if (__OFADD__(v48, v47))
                {
                  goto LABEL_86;
                }

                ++v46;
                if (!--v18)
                {
                  goto LABEL_87;
                }
              }
            }

            goto LABEL_78;
          }

          goto LABEL_86;
        }

        goto LABEL_110;
      }

      if (v23 != 45)
      {
        if (v19)
        {
          v24 = 0;
          if (v22)
          {
            while (1)
            {
              v52 = *v22 - 48;
              if (v52 > 9)
              {
                goto LABEL_86;
              }

              v53 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                goto LABEL_86;
              }

              v24 = v53 + v52;
              if (__OFADD__(v53, v52))
              {
                goto LABEL_86;
              }

              ++v22;
              if (!--v19)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_78;
        }

LABEL_86:
        v24 = 0;
        LOBYTE(v18) = 1;
LABEL_87:
        if (v18)
        {
          goto LABEL_88;
        }

        goto LABEL_93;
      }

      if (v19 >= 1)
      {
        v18 = v19 - 1;
        if (v19 != 1)
        {
          v24 = 0;
          if (v22)
          {
            v25 = v22 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_86;
              }

              v27 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                goto LABEL_86;
              }

              v24 = v27 - v26;
              if (__OFSUB__(v27, v26))
              {
                goto LABEL_86;
              }

              ++v25;
              if (!--v18)
              {
                goto LABEL_87;
              }
            }
          }

LABEL_78:
          LOBYTE(v18) = 0;
          goto LABEL_87;
        }

        goto LABEL_86;
      }

      __break(1u);
    }

    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v24 = sub_1004BA5C8();
  v60 = v59;

  if (v60)
  {
LABEL_88:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_10000A6F0(v57, qword_1005DFB98);
    sub_1001865F4(a1, v76);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10018662C(a1);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v76[0] = v32;
      *v31 = 136315138;

      sub_10018662C(a1);
      v58 = sub_10000D01C(v17, v16, v76);

      *(v31 + 4) = v58;
      v34 = "Bad value for priority: %s";
      goto LABEL_103;
    }

LABEL_104:

    sub_10018662C(a1);
    goto LABEL_105;
  }

LABEL_93:
  v62 = *(a1 + 120);
  v61 = *(a1 + 128);
  v76[0] = 0;
  if (!sub_1000B9F08(v62, v61, v76))
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_10000A6F0(v70, qword_1005DFB98);
    sub_1001865F4(a1, v76);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10018662C(a1);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v76[0] = v32;
      *v31 = 136315138;

      sub_10018662C(a1);
      v71 = sub_10000D01C(v62, v61, v76);

      *(v31 + 4) = v71;
      v34 = "Bad value for minTimeBetweenVisitPublish: %s";
      goto LABEL_103;
    }

    goto LABEL_104;
  }

  v63 = v76[0];
  v17 = *(a1 + 136);
  v16 = *(a1 + 144);
  v76[0] = 0;
  if (!sub_1000B9F08(v17, v16, v76))
  {
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_101;
    }

    goto LABEL_112;
  }

  v64 = v76[0];
  v66 = *(a1 + 48);
  v65 = *(a1 + 56);

  sub_10018662C(a1);
  v67 = *(a1 + 80);
  v69 = v74;
  v68 = v75;
LABEL_106:
  *a2 = v6;
  a2[1] = v68;
  a2[2] = v69;
  a2[3] = v66;
  a2[4] = v65;
  a2[5] = v13;
  a2[6] = v67;
  a2[7] = v21;
  a2[8] = v24;
  a2[9] = v63;
  a2[10] = v64;
}

unint64_t sub_10018665C()
{
  result = qword_1005ADCA8;
  if (!qword_1005ADCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADCA8);
  }

  return result;
}

uint64_t sub_1001866B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100186720()
{
  result = qword_1005ADCD8;
  if (!qword_1005ADCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADCD8);
  }

  return result;
}

unint64_t sub_100186774()
{
  result = qword_1005ADCE0;
  if (!qword_1005ADCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADCE0);
  }

  return result;
}

uint64_t sub_1001867C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005ADCB0, &qword_1004CF4F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100186834(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005ADCC8, &qword_1004CC1F0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001868C4()
{
  result = qword_1005ADD08;
  if (!qword_1005ADD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD08);
  }

  return result;
}

unint64_t sub_100186918()
{
  result = qword_1005ADD10;
  if (!qword_1005ADD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD10);
  }

  return result;
}

uint64_t sub_10018696C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1001869D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100186A04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_100186A4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100186AD4()
{
  result = qword_1005ADD20;
  if (!qword_1005ADD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD20);
  }

  return result;
}

unint64_t sub_100186B2C()
{
  result = qword_1005ADD28;
  if (!qword_1005ADD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD28);
  }

  return result;
}

unint64_t sub_100186B84()
{
  result = qword_1005ADD30;
  if (!qword_1005ADD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD30);
  }

  return result;
}

unint64_t sub_100186BDC()
{
  result = qword_1005ADD38;
  if (!qword_1005ADD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD38);
  }

  return result;
}

unint64_t sub_100186C34()
{
  result = qword_1005ADD40;
  if (!qword_1005ADD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD40);
  }

  return result;
}

unint64_t sub_100186C88(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

void *sub_100186CDC(void *a1)
{
  v3 = sub_10004B564(&qword_1005ADD48, &qword_1004CC608);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100011AEC(a1, a1[3]);
  sub_100186E98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
  }

  else
  {
    sub_10004B564(&qword_1005ADD58, &qword_1004CC610);
    sub_100187634(&qword_1005ADD60, sub_100186EEC, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100004984(a1);
  }

  return v7;
}

unint64_t sub_100186E98()
{
  result = qword_1005ADD50;
  if (!qword_1005ADD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD50);
  }

  return result;
}

unint64_t sub_100186EEC()
{
  result = qword_1005ADD68;
  if (!qword_1005ADD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD68);
  }

  return result;
}

unint64_t sub_100186F40()
{
  result = qword_1005ADD70;
  if (!qword_1005ADD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD70);
  }

  return result;
}

uint64_t sub_100186F94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = sub_10004B564(&qword_1005ADD78, &qword_1004CC618);
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = &v32 - v6;
  sub_100011AEC(a1, a1[3]);
  sub_1001875E0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v8 = v5;
  v47 = a2;
  LOBYTE(v59[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = v10;
  LOBYTE(v59[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v12;
  v41 = v11;
  LOBYTE(v59[0]) = 2;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v13;
  LOBYTE(v59[0]) = 3;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v14;
  LOBYTE(v59[0]) = 4;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = v15;
  LOBYTE(v59[0]) = 5;
  v69 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v59[0]) = 6;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v17;
  v35 = v16;
  LOBYTE(v59[0]) = 7;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v18;
  LOBYTE(v59[0]) = 8;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v19;
  v70 = 9;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v21;
  v23 = v69 & 1;
  (*(v8 + 8))(v7, v48);
  v24 = v46;
  *&v49 = v9;
  *(&v49 + 1) = v46;
  *&v50 = v41;
  *(&v50 + 1) = v45;
  *&v51 = v40;
  *(&v51 + 1) = v44;
  *&v52 = v39;
  *(&v52 + 1) = v43;
  v25 = v37;
  *&v53 = v38;
  *(&v53 + 1) = v42;
  LOBYTE(v54) = v23;
  *(&v54 + 1) = v35;
  *&v55 = v37;
  *(&v55 + 1) = v33;
  *&v56 = v36;
  *(&v56 + 1) = v32;
  *&v57 = v34;
  *(&v57 + 1) = v20;
  v58 = v22;
  sub_1001865F4(&v49, v59);
  sub_100004984(a1);
  v59[0] = v9;
  v59[1] = v24;
  v59[2] = v41;
  v59[3] = v45;
  v59[4] = v40;
  v59[5] = v44;
  v59[6] = v39;
  v59[7] = v43;
  v59[8] = v38;
  v59[9] = v42;
  v60 = v23;
  v61 = v35;
  v62 = v25;
  v63 = v33;
  v64 = v36;
  v65 = v32;
  v66 = v34;
  v67 = v20;
  v68 = v22;
  result = sub_10018662C(v59);
  v27 = v56;
  v28 = v47;
  *(v47 + 96) = v55;
  *(v28 + 112) = v27;
  *(v28 + 128) = v57;
  *(v28 + 144) = v58;
  v29 = v52;
  *(v28 + 32) = v51;
  *(v28 + 48) = v29;
  v30 = v54;
  *(v28 + 64) = v53;
  *(v28 + 80) = v30;
  v31 = v50;
  *v28 = v49;
  *(v28 + 16) = v31;
  return result;
}

unint64_t sub_1001875E0()
{
  result = qword_1005ADD80;
  if (!qword_1005ADD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD80);
  }

  return result;
}

uint64_t sub_100187634(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005ADD58, &qword_1004CC610);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001876B8()
{
  result = qword_1005ADDA0;
  if (!qword_1005ADDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDA0);
  }

  return result;
}

unint64_t sub_100187730()
{
  result = qword_1005ADDA8;
  if (!qword_1005ADDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDA8);
  }

  return result;
}

unint64_t sub_100187788()
{
  result = qword_1005ADDB0;
  if (!qword_1005ADDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDB0);
  }

  return result;
}

unint64_t sub_1001877E0()
{
  result = qword_1005ADDB8;
  if (!qword_1005ADDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDB8);
  }

  return result;
}

unint64_t sub_100187838()
{
  result = qword_1005ADDC0;
  if (!qword_1005ADDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDC0);
  }

  return result;
}

unint64_t sub_100187890()
{
  result = qword_1005ADDC8;
  if (!qword_1005ADDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDC8);
  }

  return result;
}

unint64_t sub_1001878E8()
{
  result = qword_1005ADDD0;
  if (!qword_1005ADDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDD0);
  }

  return result;
}

uint64_t sub_10018793C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100187984(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001879E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentDevice];
  if (v10 && (v11 = v10, v12 = [v10 uniqueDeviceIdentifier], v11, v12))
  {
    v51 = a2;
    v55 = v7;
    v56 = v6;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.path.setter();
    v16 = *a1;
    v15 = a1[1];
    v17 = URLComponents.path.modify();
    v52 = v16;
    v53 = v15;
    v18._countAndFlagsBits = v16;
    v18._object = v15;
    String.append(_:)(v18);
    v17(&v57, 0);
    v19 = URLComponents.path.modify();
    v20._countAndFlagsBits = 47;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v19(&v57, 0);
    v21 = URLComponents.path.modify();
    v22._countAndFlagsBits = v54;
    v22._object = v14;
    String.append(_:)(v22);

    v21(&v57, 0);
    v23 = URLComponents.path.modify();
    v24._countAndFlagsBits = 0xD000000000000016;
    v24._object = 0x80000001004E4020;
    String.append(_:)(v24);
    v23(&v57, 0);
    if (*(a1 + *(type metadata accessor for Credentials(0) + 36) + 8))
    {

      URLComponents.host.setter();
      a3[3] = type metadata accessor for AnyEndpoint(0);
      a3[4] = sub_1001886EC();
      v25 = sub_10000331C(a3);
      v27 = v55;
      v26 = v56;
      (*(v55 + 16))(v25, v9, v56);
      v28 = sub_100188744();
      v30 = v29;
      v32 = v31;
      a3[8] = &type metadata for SecureLocationsLabelledLocationsRequest;
      a3[9] = sub_1001889A8();
      a3[5] = v28;
      a3[6] = v30;
      a3[7] = v32;
      v34 = a1[4];
      v33 = a1[5];
      a3[13] = &type metadata for AnyRequestCredential;
      a3[14] = sub_1001889FC();
      v35 = swift_allocObject();
      a3[10] = v35;
      v36 = v53;
      v35[2] = v52;
      v35[3] = v36;
      v35[4] = v34;
      v35[5] = v33;
      v37 = *(v27 + 8);

      return v37(v9, v26);
    }

    v45 = v55;
    v44 = v56;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000A6F0(v46, qword_1005DFB98);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    a2 = v51;
    if (v49)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Unable to get appHostName to create request for LabelledLocations", v50, 2u);
    }

    v57 = xmmword_1004C52D0;
    v43 = 2;
    v58 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();
    result = (*(v45 + 8))(v9, v44);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000A6F0(v39, qword_1005DFB98);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Unable to get device identifier to create request for LabelledLocations", v42, 2u);
    }

    v57 = xmmword_1004CC840;
    v58 = 2;
    sub_1000C7488();
    result = swift_willThrowTypedImpl();
    v43 = 1;
  }

  *a2 = v43;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t sub_100187F48(uint64_t a1)
{
  v2 = sub_1001889A8();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100187F84(void *a1)
{
  v3 = sub_10004B564(&qword_1005ADE00, &qword_1004CC900);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100011AEC(a1, a1[3]);
  sub_100188EAC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

double sub_1001881BC(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_1001882C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100188A50(*a1);
  *a2 = result;
  return result;
}

void sub_1001882F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE800000000000000;
  v6 = 0x7354657461647075;
  if (v2 != 5)
  {
    v6 = 0x644972657375;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656475746974616CLL;
  if (v2 != 3)
  {
    v8 = 0x64757469676E6F6CLL;
    v7 = 0xE900000000000065;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v10 = 0x7079546C6562616CLL;
    v9 = 0xE900000000000065;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1001883BC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7354657461647075;
  if (v1 != 5)
  {
    v3 = 0x644972657375;
  }

  v4 = 0x656475746974616CLL;
  if (v1 != 3)
  {
    v4 = 0x64757469676E6F6CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C6562616CLL;
  if (v1 != 1)
  {
    v5 = 0x7079546C6562616CLL;
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

unint64_t sub_100188484@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100188A50(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001884AC(uint64_t a1)
{
  v2 = sub_100188EAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001884E8(uint64_t a1)
{
  v2 = sub_100188EAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100188524@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100188A9C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

void sub_1001885B4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001004E40A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_100188648(uint64_t a1)
{
  v2 = sub_100189324();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100188684(uint64_t a1)
{
  v2 = sub_100189324();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001886C0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001891A0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1001886EC()
{
  result = qword_1005ADDD8;
  if (!qword_1005ADDD8)
  {
    type metadata accessor for AnyEndpoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDD8);
  }

  return result;
}

id sub_100188744()
{
  v12 = sub_100208D38(_swiftEmptyArrayStorage);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v1 = result;
    v2 = [result serverFriendlyDescription];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    sub_10014571C(v3, v5, 0xD000000000000011, 0x80000001004E2990);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(49, 0xE100000000000000, 0x562D747065636341, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x2D746E65746E6F43, 0xEC00000065707954, v7);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x747065636341, 0xE600000000000000, v8);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(3157554, 0xE300000000000000, 0xD000000000000014, 0x80000001004E4040, v9);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(49, 0xE100000000000000, 0xD000000000000013, 0x80000001004E4060, v10);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(0x72657665726F46, 0xE700000000000000, 0xD000000000000012, 0x80000001004E4080, v11);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001889A8()
{
  result = qword_1005ADDE0;
  if (!qword_1005ADDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDE0);
  }

  return result;
}

unint64_t sub_1001889FC()
{
  result = qword_1005ADDE8;
  if (!qword_1005ADDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDE8);
  }

  return result;
}

unint64_t sub_100188A50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B840, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void sub_100188A9C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005ADDF0, &qword_1004CC8F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_100188EAC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(a1);
  }

  else
  {
    LOBYTE(v42[0]) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v35 = a2;
    v12 = v9;
    LOBYTE(v42[0]) = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    *(&v34 + 1) = v14;
    *&v34 = v13;
    LOBYTE(v42[0]) = 2;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    LOBYTE(v42[0]) = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    LOBYTE(v42[0]) = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v19;
    LOBYTE(v42[0]) = 5;
    KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v21;
    v51[0] = 6;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v24 = v23;
    (*(v6 + 8))(v8, v5);
    *&v36 = v12;
    *(&v36 + 1) = v11;
    v25 = v34;
    v37 = v34;
    v26 = v33;
    *&v38 = v33;
    *(&v38 + 1) = v16;
    *&v39 = v18;
    *(&v39 + 1) = v20;
    *&v40 = v22;
    v27 = v32;
    *(&v40 + 1) = v32;
    v41 = v24;
    sub_1000C81D0(&v36, v42);
    sub_100004984(a1);
    v42[0] = v12;
    v42[1] = v11;
    v43 = __PAIR128__(*(&v34 + 1), v25);
    v44 = v26;
    v45 = v16;
    v46 = v18;
    v47 = v20;
    v48 = v22;
    v49 = v27;
    v50 = v24;
    sub_1000C822C(v42);
    v28 = v39;
    v29 = v35;
    *(v35 + 32) = v38;
    *(v29 + 48) = v28;
    *(v29 + 64) = v40;
    *(v29 + 80) = v41;
    v30 = v37;
    *v29 = v36;
    *(v29 + 16) = v30;
  }
}

unint64_t sub_100188EAC()
{
  result = qword_1005ADDF8;
  if (!qword_1005ADDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDF8);
  }

  return result;
}

uint64_t sub_100188F1C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100188F78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100188FEC()
{
  result = qword_1005ADE08;
  if (!qword_1005ADE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE08);
  }

  return result;
}

unint64_t sub_100189044()
{
  result = qword_1005ADE10;
  if (!qword_1005ADE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE10);
  }

  return result;
}

unint64_t sub_10018909C()
{
  result = qword_1005ADE18;
  if (!qword_1005ADE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE18);
  }

  return result;
}

unint64_t sub_1001890F4()
{
  result = qword_1005ADE20;
  if (!qword_1005ADE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE20);
  }

  return result;
}

unint64_t sub_10018914C()
{
  result = qword_1005ADE28;
  if (!qword_1005ADE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE28);
  }

  return result;
}

void *sub_1001891A0(void *a1)
{
  v3 = sub_10004B564(&qword_1005ADE30, &unk_1004CCC40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100011AEC(a1, a1[3]);
  sub_100189324();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
  }

  else
  {
    sub_10004B564(&qword_1005AABB8, &qword_1004C4610);
    sub_1000F78FC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100004984(a1);
  }

  return v7;
}

unint64_t sub_100189324()
{
  result = qword_1005ADE38;
  if (!qword_1005ADE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE38);
  }

  return result;
}

unint64_t sub_10018938C()
{
  result = qword_1005ADE40;
  if (!qword_1005ADE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE40);
  }

  return result;
}

unint64_t sub_1001893E4()
{
  result = qword_1005ADE48;
  if (!qword_1005ADE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE48);
  }

  return result;
}

unint64_t sub_10018943C()
{
  result = qword_1005ADE50;
  if (!qword_1005ADE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE50);
  }

  return result;
}

uint64_t sub_100189490@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10004B564(&qword_1005A9178, &qword_1004CCD60);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-v4];
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Credentials(0);
  type metadata accessor for Credentials.SecureLocationsProperties(0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10018977C(v5);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFB98);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No url found in account bag", v13, 2u);
    }

    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.path.setter();
    return URLComponents.host.setter();
  }

  else
  {
    v15 = *(v7 + 32);
    v15(v9, v5, v6);
    v16 = URLComponents.path.modify();
    v17._countAndFlagsBits = 0x6863746566;
    v17._object = 0xE500000000000000;
    String.append(_:)(v17);
    v16(v18, 0);
    return v15(a2, v9, v6);
  }
}

uint64_t sub_10018977C(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9178, &qword_1004CCD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_1001897F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1001898BC(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100189974()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100189A3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018AF70(*a1);
  *a2 = result;
  return result;
}

void sub_100189A6C(unint64_t *a1@<X8>)
{
  v2 = 0xEE007379654B6574;
  v3 = 0x7562697274736964;
  v4 = 0xD000000000000014;
  v5 = 0x80000001004DE390;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000015;
    v5 = 0x80000001004DE3B0;
  }

  if (*v1)
  {
    v3 = 1818322280;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100189BA4(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADEB8, &unk_1004CD0B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_10018B724();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 16);
    HIBYTE(v10) = 1;
    sub_10004B564(&qword_1005ADEC8, &qword_1004CE150);
    sub_10018B778();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 24);
    HIBYTE(v10) = 2;
    type metadata accessor for SPSecureLocationSubscriptionMode(0);
    sub_10018B7FC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = *(v3 + 32);
    HIBYTE(v10) = 3;
    sub_10018B854();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100189DBC()
{
  v1 = 1682533734;
  v2 = 1701080941;
  if (*v0 != 2)
  {
    v2 = 0x746E65746E69;
  }

  if (*v0)
  {
    v1 = 7562345;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100189E1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10018AFBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100189E44(uint64_t a1)
{
  v2 = sub_10018B724();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189E80(uint64_t a1)
{
  v2 = sub_10018B724();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100189ED4(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADE70, &qword_1004CD090);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_10018ADF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v18 = *v3;
  LOBYTE(v16[0]) = 0;
  sub_10004B564(&qword_1005ADE80, &qword_1004CD098);
  sub_10018AE44();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = *(v3 + 88);
    v26[4] = *(v3 + 72);
    v26[5] = v10;
    v26[6] = *(v3 + 104);
    v27 = *(v3 + 120);
    v11 = *(v3 + 24);
    v26[0] = *(v3 + 8);
    v26[1] = v11;
    v12 = *(v3 + 56);
    v26[2] = *(v3 + 40);
    v26[3] = v12;
    v13 = *(v3 + 88);
    v22 = *(v3 + 72);
    v23 = v13;
    v24 = *(v3 + 104);
    v25 = *(v3 + 120);
    v14 = *(v3 + 24);
    v18 = *(v3 + 8);
    v19 = v14;
    v15 = *(v3 + 56);
    v20 = *(v3 + 40);
    v21 = v15;
    v28 = 1;
    sub_1000C8BA0(v26, v16);
    sub_10018AF1C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[4] = v22;
    v16[5] = v23;
    v16[6] = v24;
    v17 = v25;
    v16[0] = v18;
    v16[1] = v19;
    v16[2] = v20;
    v16[3] = v21;
    sub_1000C8BFC(v16);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10018A144(uint64_t a1)
{
  v2 = sub_10018B8A8();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_10018A180()
{
  if (*v0)
  {
    return 0x6F43746E65696C63;
  }

  else
  {
    return 0x6863746566;
  }
}

void sub_10018A1C4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6863746566 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_10018A2A4(uint64_t a1)
{
  v2 = sub_10018ADF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018A2E0(uint64_t a1)
{
  v2 = sub_10018ADF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018A368(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADEB0, &qword_1004CD0A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_10018B5C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_10004B564(&qword_1005AB0F0, &qword_1004CDC90);
  sub_10018B6A0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v3[3];
    HIBYTE(v10) = 2;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10018A5D0()
{
  v1 = 0x6E6F697461636F6CLL;
  v2 = 0x6D4664656C696166;
  if (*v0 != 2)
  {
    v2 = 0x65566769666E6F63;
  }

  if (*v0)
  {
    v1 = 0x6F43737574617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10018A670@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10018B11C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10018A698(uint64_t a1)
{
  v2 = sub_10018B5C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018A6D4(uint64_t a1)
{
  v2 = sub_10018B5C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10018A710@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10018B29C(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

id sub_10018A76C(uint64_t a1, __int128 *a2)
{
  v4 = a2[5];
  v34 = a2[4];
  v35 = v4;
  v36 = a2[6];
  v37 = *(a2 + 14);
  v5 = a2[1];
  v30 = *a2;
  v31 = v5;
  v6 = a2[3];
  v32 = a2[2];
  v33 = v6;
  if (!*(a1 + 16))
  {
    sub_1000C8BFC(a2);

    return 0;
  }

  v29 = sub_100208D38(_swiftEmptyArrayStorage);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v8 = result;
    v9 = [result serverFriendlyDescription];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    sub_10014571C(v10, v12, 0xD000000000000011, 0x80000001004E2990);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(49, 0xE100000000000000, 0x562D747065636341, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x2D746E65746E6F43, 0xEC00000065707954, v15);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x747065636341, 0xE600000000000000, v16);
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v13 = v29;
    v20 = a1;
    v28 = v37;
    v24 = v33;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_10018AA7C();
    v17 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v19 = v18;

    sub_10018AAD0(&v20);
    if (v2)
    {
    }

    else
    {

      sub_10002CF44(v17, v19);

      sub_10001A794(v17, v19);
    }

    return v13;
  }

  __break(1u);
  return result;
}

unint64_t sub_10018AA7C()
{
  result = qword_1005ADE58;
  if (!qword_1005ADE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE58);
  }

  return result;
}

uint64_t sub_10018AB00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10018AB48(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_10018ABA4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_10018ABC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_10018AC10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10018AC80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10018AC94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018ACDC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_10018AD44()
{
  result = qword_1005ADE60;
  if (!qword_1005ADE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE60);
  }

  return result;
}

unint64_t sub_10018AD9C()
{
  result = qword_1005ADE68;
  if (!qword_1005ADE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE68);
  }

  return result;
}

unint64_t sub_10018ADF0()
{
  result = qword_1005ADE78;
  if (!qword_1005ADE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE78);
  }

  return result;
}

unint64_t sub_10018AE44()
{
  result = qword_1005ADE88;
  if (!qword_1005ADE88)
  {
    sub_10004B610(&qword_1005ADE80, &qword_1004CD098);
    sub_10018AEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE88);
  }

  return result;
}

unint64_t sub_10018AEC8()
{
  result = qword_1005ADE90;
  if (!qword_1005ADE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE90);
  }

  return result;
}

unint64_t sub_10018AF1C()
{
  result = qword_1005ADE98;
  if (!qword_1005ADE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE98);
  }

  return result;
}

unint64_t sub_10018AF70(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B908, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10018AFBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1682533734 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E65746E69 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10018B11C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEF64616F6C796150;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D4664656C696166 && a2 == 0xEB00000000736449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65566769666E6F63 && a2 == 0xED00006E6F697372)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_10018B29C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005ADEA0, &qword_1004CD0A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_10018B5C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(a1);
  }

  else
  {
    sub_10004B564(&qword_1005AB0F0, &qword_1004CDC90);
    v21 = 0;
    sub_10018B61C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v22;
    LOBYTE(v22) = 1;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v10;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    v21 = 2;
    sub_10001CCC4(&qword_1005A9E80, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v18 = v9;
    v11 = v22;
    LOBYTE(v22) = 3;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v8;
    v15 = v14;
    (*(v6 + 8))(v13, v5);
    sub_100004984(a1);
    v17 = v18;
    v16 = v19;
    *a2 = v20;
    *(a2 + 8) = v17;
    *(a2 + 16) = v16;
    *(a2 + 24) = v11;
    *(a2 + 32) = v12;
    *(a2 + 40) = v15 & 1;
  }
}

unint64_t sub_10018B5C8()
{
  result = qword_1005ADEA8;
  if (!qword_1005ADEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADEA8);
  }

  return result;
}

unint64_t sub_10018B61C()
{
  result = qword_1005AB0F8;
  if (!qword_1005AB0F8)
  {
    sub_10004B610(&qword_1005AB0F0, &qword_1004CDC90);
    sub_1000F7CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB0F8);
  }

  return result;
}

unint64_t sub_10018B6A0()
{
  result = qword_1005AB130;
  if (!qword_1005AB130)
  {
    sub_10004B610(&qword_1005AB0F0, &qword_1004CDC90);
    sub_1000F7D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB130);
  }

  return result;
}

unint64_t sub_10018B724()
{
  result = qword_1005ADEC0;
  if (!qword_1005ADEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADEC0);
  }

  return result;
}

unint64_t sub_10018B778()
{
  result = qword_1005ADED0;
  if (!qword_1005ADED0)
  {
    sub_10004B610(&qword_1005ADEC8, &qword_1004CE150);
    sub_10010670C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADED0);
  }

  return result;
}

unint64_t sub_10018B7FC()
{
  result = qword_1005ADED8;
  if (!qword_1005ADED8)
  {
    type metadata accessor for SPSecureLocationSubscriptionMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADED8);
  }

  return result;
}

unint64_t sub_10018B854()
{
  result = qword_1005ADEE0;
  if (!qword_1005ADEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADEE0);
  }

  return result;
}

unint64_t sub_10018B8A8()
{
  result = qword_1005ADEE8;
  if (!qword_1005ADEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADEE8);
  }

  return result;
}

unint64_t sub_10018B940()
{
  result = qword_1005ADEF0;
  if (!qword_1005ADEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADEF0);
  }

  return result;
}

unint64_t sub_10018B998()
{
  result = qword_1005ADEF8;
  if (!qword_1005ADEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADEF8);
  }

  return result;
}

unint64_t sub_10018B9F0()
{
  result = qword_1005ADF00;
  if (!qword_1005ADF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF00);
  }

  return result;
}

unint64_t sub_10018BA48()
{
  result = qword_1005ADF08;
  if (!qword_1005ADF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF08);
  }

  return result;
}

unint64_t sub_10018BAA0()
{
  result = qword_1005ADF10;
  if (!qword_1005ADF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF10);
  }

  return result;
}

unint64_t sub_10018BAF8()
{
  result = qword_1005ADF18;
  if (!qword_1005ADF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF18);
  }

  return result;
}

unint64_t sub_10018BB50()
{
  result = qword_1005ADF20;
  if (!qword_1005ADF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF20);
  }

  return result;
}

unint64_t sub_10018BBA8()
{
  result = qword_1005ADF28;
  if (!qword_1005ADF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF28);
  }

  return result;
}

unint64_t sub_10018BC00()
{
  result = qword_1005ADF30;
  if (!qword_1005ADF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF30);
  }

  return result;
}

unint64_t sub_10018BC58()
{
  result = qword_1005ADF38;
  if (!qword_1005ADF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF38);
  }

  return result;
}

unint64_t sub_10018BCAC()
{
  result = qword_1005ADF40;
  if (!qword_1005ADF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF40);
  }

  return result;
}

uint64_t sub_10018BD14@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10004B564(&qword_1005A9178, &qword_1004CCD60);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-v4];
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Credentials(0);
  type metadata accessor for Credentials.SecureLocationsProperties(0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10018977C(v5);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFB98);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No url found in account bag", v13, 2u);
    }

    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.path.setter();
    return URLComponents.host.setter();
  }

  else
  {
    v15 = *(v7 + 32);
    v15(v9, v5, v6);
    v16 = URLComponents.path.modify();
    v17._countAndFlagsBits = 7037793;
    v17._object = 0xE300000000000000;
    String.append(_:)(v17);
    v16(v18, 0);
    return v15(a2, v9, v6);
  }
}

uint64_t sub_10018BFF8(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADF88, &unk_1004CD8C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_10018D220();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v18 = *(v3 + 32);
    LOBYTE(v16[0]) = 3;
    sub_10004B564(&qword_1005A9E18, &qword_1004C3338);
    sub_10018D274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = *(v3 + 120);
    v26[4] = *(v3 + 104);
    v26[5] = v9;
    v26[6] = *(v3 + 136);
    v27 = *(v3 + 152);
    v10 = *(v3 + 56);
    v26[0] = *(v3 + 40);
    v26[1] = v10;
    v11 = *(v3 + 88);
    v26[2] = *(v3 + 72);
    v26[3] = v11;
    v12 = *(v3 + 120);
    v22 = *(v3 + 104);
    v23 = v12;
    v24 = *(v3 + 136);
    v25 = *(v3 + 152);
    v13 = *(v3 + 56);
    v18 = *(v3 + 40);
    v19 = v13;
    v14 = *(v3 + 88);
    v20 = *(v3 + 72);
    v21 = v14;
    v28 = 4;
    sub_1000C8BA0(v26, v16);
    sub_10018AF1C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[4] = v22;
    v16[5] = v23;
    v16[6] = v24;
    v17 = v25;
    v16[0] = v18;
    v16[1] = v19;
    v16[2] = v20;
    v16[3] = v21;
    sub_1000C8BFC(v16);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10018C2D4(uint64_t a1)
{
  v2 = sub_10018D34C();

  return RequestContentRepresentable.description.getter(a1, v2);
}

Swift::Int sub_10018C31C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10018C3FC(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10018C4C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10018C5A4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018D4B8(*a1);
  *a2 = result;
  return result;
}

void sub_10018C5D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000053;
  v4 = 0x54646E6553706174;
  v5 = 0xE500000000000000;
  v6 = 0x6449646D63;
  v7 = 0xE600000000000000;
  v8 = 0x737574617473;
  if (v2 != 3)
  {
    v8 = 0x6F43746E65696C63;
    v7 = 0xED0000747865746ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 29556;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10018C670()
{
  v1 = *v0;
  v2 = 0x54646E6553706174;
  v3 = 0x6449646D63;
  v4 = 0x737574617473;
  if (v1 != 3)
  {
    v4 = 0x6F43746E65696C63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 29556;
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

unint64_t sub_10018C708@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10018D4B8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10018C730(uint64_t a1)
{
  v2 = sub_10018D220();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018C76C(uint64_t a1)
{
  v2 = sub_10018D220();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018C7C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_10004B564(&qword_1005ADF50, &unk_1004CD580);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_100011AEC(a1, a1[3]);
  sub_10018CEB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_10004B564(&qword_1005ADCB0, &qword_1004CF4F0);
    sub_10018CF08();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10018C964()
{
  if (*v0)
  {
    return 0x73726F727265;
  }

  else
  {
    return 1682533734;
  }
}

void sub_10018C994(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1682533734 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73726F727265 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_10018CA6C(uint64_t a1)
{
  v2 = sub_10018CEB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018CAA8(uint64_t a1)
{
  v2 = sub_10018CEB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_10018CB04(_OWORD *a1)
{
  v13 = sub_100208D38(_swiftEmptyArrayStorage);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v3 = result;
    v4 = [result serverFriendlyDescription];

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    sub_10014571C(v5, v7, 0xD000000000000011, 0x80000001004E2990);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(49, 0xE100000000000000, 0x562D747065636341, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x2D746E65746E6F43, 0xEC00000065707954, v9);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_10018CE30();
    v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v12 = v11;

    sub_10018CE84(a1);

    sub_10002CF44(v10, v12);

    sub_10001A794(v10, v12);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10018CE30()
{
  result = qword_1005ADF48;
  if (!qword_1005ADF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF48);
  }

  return result;
}

unint64_t sub_10018CEB4()
{
  result = qword_1005ADF58;
  if (!qword_1005ADF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF58);
  }

  return result;
}

unint64_t sub_10018CF08()
{
  result = qword_1005ADCF0;
  if (!qword_1005ADCF0)
  {
    sub_10004B610(&qword_1005ADCB0, &qword_1004CF4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADCF0);
  }

  return result;
}

uint64_t sub_10018CF94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018CFDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10018D06C()
{
  result = qword_1005ADF60;
  if (!qword_1005ADF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF60);
  }

  return result;
}

unint64_t sub_10018D0C4()
{
  result = qword_1005ADF68;
  if (!qword_1005ADF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF68);
  }

  return result;
}

unint64_t sub_10018D11C()
{
  result = qword_1005ADF70;
  if (!qword_1005ADF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF70);
  }

  return result;
}

unint64_t sub_10018D174()
{
  result = qword_1005ADF78;
  if (!qword_1005ADF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF78);
  }

  return result;
}

unint64_t sub_10018D1CC()
{
  result = qword_1005ADF80;
  if (!qword_1005ADF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF80);
  }

  return result;
}

unint64_t sub_10018D220()
{
  result = qword_1005ADF90;
  if (!qword_1005ADF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF90);
  }

  return result;
}

unint64_t sub_10018D274()
{
  result = qword_1005ADF98;
  if (!qword_1005ADF98)
  {
    sub_10004B610(&qword_1005A9E18, &qword_1004C3338);
    sub_10018D2F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF98);
  }

  return result;
}

unint64_t sub_10018D2F8()
{
  result = qword_1005ADFA0;
  if (!qword_1005ADFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFA0);
  }

  return result;
}

unint64_t sub_10018D34C()
{
  result = qword_1005ADFA8;
  if (!qword_1005ADFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFA8);
  }

  return result;
}

unint64_t sub_10018D3B4()
{
  result = qword_1005ADFB0;
  if (!qword_1005ADFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFB0);
  }

  return result;
}

unint64_t sub_10018D40C()
{
  result = qword_1005ADFB8;
  if (!qword_1005ADFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFB8);
  }

  return result;
}

unint64_t sub_10018D464()
{
  result = qword_1005ADFC0;
  if (!qword_1005ADFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFC0);
  }

  return result;
}

unint64_t sub_10018D4B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B988, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10018D504@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10004B564(&qword_1005A9178, &qword_1004CCD60);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-v4];
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Credentials(0);
  type metadata accessor for Credentials.SecureLocationsProperties(0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10018977C(v5);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFB98);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No url found in account bag", v13, 2u);
    }

    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.path.setter();
    return URLComponents.host.setter();
  }

  else
  {
    v15 = *(v7 + 32);
    v15(v9, v5, v6);
    v16 = URLComponents.path.modify();
    v17._countAndFlagsBits = 0x74696D627573;
    v17._object = 0xE600000000000000;
    String.append(_:)(v17);
    v16(v18, 0);
    return v15(a2, v9, v6);
  }
}

uint64_t sub_10018D7F0(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADFF0, &qword_1004CDC88);
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v14[-v6];
  sub_100011AEC(a1, a1[3]);
  sub_10018E5D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v3[2];
  v9 = *v3;
  v24 = v3[1];
  v25 = v8;
  v10 = v3[2];
  v11 = v3[4];
  v26 = v3[3];
  v27 = v11;
  v12 = *v3;
  v20 = v10;
  v21 = v26;
  v22 = v3[4];
  v23 = v12;
  v18 = v9;
  v19 = v24;
  v17 = 0;
  sub_10018E628(&v23, v16);
  sub_10018E684();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v16[2] = v20;
  v16[3] = v21;
  v16[4] = v22;
  v16[0] = v18;
  v16[1] = v19;
  sub_10018E400(v16);
  if (!v2)
  {
    v15 = *(v3 + 10);
    v14[7] = 1;
    sub_10004B564(&qword_1005AB0F0, &qword_1004CDC90);
    sub_10018B6A0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v28 + 8))(v7, v5);
}

uint64_t sub_10018DA20(uint64_t a1)
{
  v2 = sub_10018E6D8();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_10018DA5C()
{
  if (*v0)
  {
    return 0x74696D627573;
  }

  else
  {
    return 0x6F43746E65696C63;
  }
}

void sub_10018DAA0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74696D627573 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_10018DB80(uint64_t a1)
{
  v2 = sub_10018E5D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018DBBC(uint64_t a1)
{
  v2 = sub_10018E5D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10018DC34(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65566769666E6F63 && a2 == 0xED00006E6F697372)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_10018DCC4(uint64_t a1)
{
  v2 = sub_10018E580();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018DD00(uint64_t a1)
{
  v2 = sub_10018E580();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018DD3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005ADFE0, &qword_1004CDC80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_10018E580();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100004984(a1);
  *a2 = v9;
  *(a2 + 8) = v11 & 1;
  return result;
}

id sub_10018DEC0(uint64_t a1, __int128 *a2)
{
  v4 = a2[3];
  v48 = a2[2];
  v49 = v4;
  v50 = a2[4];
  v5 = a2[1];
  v46 = *a2;
  v47 = v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    sub_10018E400(a2);

    return 0;
  }

  v45 = sub_100208D38(_swiftEmptyArrayStorage);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v11 = result;
    v12 = [result serverFriendlyDescription];

    if (v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    sub_10014571C(v13, v15, 0xD000000000000011, 0x80000001004E2990);
    v16 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33 = v16;
    sub_1004525D4(49, 0xE100000000000000, 0x562D747065636341, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v18 = v33;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *&v33 = v18;
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x2D746E65746E6F43, 0xEC00000065707954, v19);
    v45 = v33;
    Date.init()();
    v20 = Date.epoch.getter();
    (*(v7 + 8))(v9, v6);
    *&v33 = v20;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v24 = v45;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v33 = v24;
    sub_1004525D4(v21, v23, 0xD000000000000015, 0x80000001004E3D70, v25);
    v26 = v33;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v33 = v26;
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x747065636341, 0xE600000000000000, v27);
    v28 = v33;
    v44 = a1;
    v45 = v33;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v39 = v46;
    v40 = v47;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v38 = v44;
    v33 = v39;
    v34 = v40;
    sub_10018E37C();
    v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v31 = v30;

    sub_10018E3D0(&v39);

    sub_10002CF44(v29, v31);

    sub_10001A794(v29, v31);
    return v28;
  }

  __break(1u);
  return result;
}

unint64_t sub_10018E37C()
{
  result = qword_1005ADFC8;
  if (!qword_1005ADFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureLocationsSubmitResponseBody(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SecureLocationsSubmitResponseBody(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_10018E4D4()
{
  result = qword_1005ADFD0;
  if (!qword_1005ADFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFD0);
  }

  return result;
}

unint64_t sub_10018E52C()
{
  result = qword_1005ADFD8;
  if (!qword_1005ADFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFD8);
  }

  return result;
}

unint64_t sub_10018E580()
{
  result = qword_1005ADFE8;
  if (!qword_1005ADFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFE8);
  }

  return result;
}

unint64_t sub_10018E5D4()
{
  result = qword_1005ADFF8;
  if (!qword_1005ADFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFF8);
  }

  return result;
}

unint64_t sub_10018E684()
{
  result = qword_1005AE000;
  if (!qword_1005AE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE000);
  }

  return result;
}

unint64_t sub_10018E6D8()
{
  result = qword_1005AE008;
  if (!qword_1005AE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE008);
  }

  return result;
}

unint64_t sub_10018E750()
{
  result = qword_1005AE010;
  if (!qword_1005AE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE010);
  }

  return result;
}

unint64_t sub_10018E7A8()
{
  result = qword_1005AE018;
  if (!qword_1005AE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE018);
  }

  return result;
}

unint64_t sub_10018E800()
{
  result = qword_1005AE020;
  if (!qword_1005AE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE020);
  }

  return result;
}

unint64_t sub_10018E858()
{
  result = qword_1005AE028;
  if (!qword_1005AE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE028);
  }

  return result;
}

unint64_t sub_10018E8B0()
{
  result = qword_1005AE030;
  if (!qword_1005AE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE030);
  }

  return result;
}

unint64_t sub_10018E908()
{
  result = qword_1005AE038;
  if (!qword_1005AE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE038);
  }

  return result;
}

uint64_t sub_10018E95C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10004B564(&qword_1005A9178, &qword_1004CCD60);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-v4];
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Credentials(0);
  type metadata accessor for Credentials.SecureLocationsProperties(0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10018977C(v5);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFB98);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No url found in account bag", v13, 2u);
    }

    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.path.setter();
    return URLComponents.host.setter();
  }

  else
  {
    v15 = *(v7 + 32);
    v15(v9, v5, v6);
    v16 = URLComponents.path.modify();
    v17._countAndFlagsBits = 0x7263736275736E75;
    v17._object = 0xEB00000000656269;
    String.append(_:)(v17);
    v16(v18, 0);
    return v15(a2, v9, v6);
  }
}

uint64_t sub_10018EC54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a5;
  v15 = a4;
  v7 = sub_10004B564(&qword_1005AE080, &qword_1004CE148);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  sub_100011AEC(a1, a1[3]);
  sub_10018FA90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v11 = v14;
    v17 = v15;
    v16 = 1;
    sub_10004B564(&qword_1005ADEC8, &qword_1004CE150);
    sub_10018FAE4(&qword_1005ADED0, &qword_1005ADEC8, &qword_1004CE150, sub_10010670C);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v11;
    v16 = 2;
    type metadata accessor for SPSecureLocationSubscriptionMode(0);
    sub_10018B7FC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10018EE68()
{
  v1 = 7562345;
  if (*v0 != 1)
  {
    v1 = 1701080941;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1682533734;
  }
}

uint64_t sub_10018EEAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10018FDE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10018EED4(uint64_t a1)
{
  v2 = sub_10018FA90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018EF10(uint64_t a1)
{
  v2 = sub_10018FA90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018EF6C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AE058, &qword_1004CE138);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_10018F9E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v18 = *v3;
  LOBYTE(v16[0]) = 0;
  sub_10004B564(&qword_1005AE068, &qword_1004CE140);
  sub_10018FAE4(&qword_1005AE070, &qword_1005AE068, &qword_1004CE140, sub_10018FA3C);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = *(v3 + 88);
    v26[4] = *(v3 + 72);
    v26[5] = v10;
    v26[6] = *(v3 + 104);
    v27 = *(v3 + 120);
    v11 = *(v3 + 24);
    v26[0] = *(v3 + 8);
    v26[1] = v11;
    v12 = *(v3 + 56);
    v26[2] = *(v3 + 40);
    v26[3] = v12;
    v13 = *(v3 + 88);
    v22 = *(v3 + 72);
    v23 = v13;
    v24 = *(v3 + 104);
    v25 = *(v3 + 120);
    v14 = *(v3 + 24);
    v18 = *(v3 + 8);
    v19 = v14;
    v15 = *(v3 + 56);
    v20 = *(v3 + 40);
    v21 = v15;
    v28 = 1;
    sub_1000C8BA0(v26, v16);
    sub_10018AF1C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[4] = v22;
    v16[5] = v23;
    v16[6] = v24;
    v17 = v25;
    v16[0] = v18;
    v16[1] = v19;
    v16[2] = v20;
    v16[3] = v21;
    sub_1000C8BFC(v16);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10018F208(uint64_t a1)
{
  v2 = sub_10018FB60();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_10018F244()
{
  if (*v0)
  {
    return 0x6F43746E65696C63;
  }

  else
  {
    return 0x7263736275736E75;
  }
}

void sub_10018F294(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7263736275736E75 && a2 == 0xEB00000000656269;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_10018F37C(uint64_t a1)
{
  v2 = sub_10018F9E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018F3B8(uint64_t a1)
{
  v2 = sub_10018F9E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_10018F440(uint64_t a1, __int128 *a2)
{
  v3 = a2[5];
  v31 = a2[4];
  v32 = v3;
  v33 = a2[6];
  v4 = a2[1];
  v27 = *a2;
  v28 = v4;
  v5 = a2[3];
  v29 = a2[2];
  v34 = *(a2 + 14);
  v30 = v5;
  if (!*(a1 + 16))
  {
    sub_1000C8BFC(a2);

    return 0;
  }

  v26 = sub_100208D38(_swiftEmptyArrayStorage);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v7 = result;
    v8 = [result serverFriendlyDescription];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    sub_10014571C(v9, v11, 0xD000000000000011, 0x80000001004E2990);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(49, 0xE100000000000000, 0x562D747065636341, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x2D746E65746E6F43, 0xEC00000065707954, v13);
    v14 = v26;
    v23 = v31;
    v24[0] = v32;
    v24[1] = v33;
    v18 = a1;
    v25 = v34;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_10018F7FC();
    v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v17 = v16;

    sub_10018F850(&v18);

    sub_10002CF44(v15, v17);

    sub_10001A794(v15, v17);
    return v14;
  }

  __break(1u);
  return result;
}

unint64_t sub_10018F7FC()
{
  result = qword_1005AE040;
  if (!qword_1005AE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE040);
  }

  return result;
}

uint64_t sub_10018F890(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018F8D8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_10018F93C()
{
  result = qword_1005AE048;
  if (!qword_1005AE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE048);
  }

  return result;
}

unint64_t sub_10018F994()
{
  result = qword_1005AE050;
  if (!qword_1005AE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE050);
  }

  return result;
}

unint64_t sub_10018F9E8()
{
  result = qword_1005AE060;
  if (!qword_1005AE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE060);
  }

  return result;
}

unint64_t sub_10018FA3C()
{
  result = qword_1005AE078;
  if (!qword_1005AE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE078);
  }

  return result;
}

unint64_t sub_10018FA90()
{
  result = qword_1005AE088;
  if (!qword_1005AE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE088);
  }

  return result;
}

uint64_t sub_10018FAE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018FB60()
{
  result = qword_1005AE090;
  if (!qword_1005AE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE090);
  }

  return result;
}

unint64_t sub_10018FBD8()
{
  result = qword_1005AE098;
  if (!qword_1005AE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE098);
  }

  return result;
}

unint64_t sub_10018FC30()
{
  result = qword_1005AE0A0;
  if (!qword_1005AE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE0A0);
  }

  return result;
}

unint64_t sub_10018FC88()
{
  result = qword_1005AE0A8;
  if (!qword_1005AE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE0A8);
  }

  return result;
}

unint64_t sub_10018FCE0()
{
  result = qword_1005AE0B0;
  if (!qword_1005AE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE0B0);
  }

  return result;
}

unint64_t sub_10018FD38()
{
  result = qword_1005AE0B8;
  if (!qword_1005AE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE0B8);
  }

  return result;
}

unint64_t sub_10018FD90()
{
  result = qword_1005AE0C0;
  if (!qword_1005AE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE0C0);
  }

  return result;
}

uint64_t sub_10018FDE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1682533734 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10018FEFC()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005AE0C8);
  v1 = sub_10000A6F0(v0, qword_1005AE0C8);
  if (qword_1005A7FC0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFC98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10018FFC4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 stringForKey:v5];

  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!a2)
  {
    if (v9)
    {
    }

    goto LABEL_11;
  }

  if (!v9)
  {
LABEL_11:
    v12 = 1;
    return v12 & 1;
  }

  if (v7 == a1 && v9 == a2)
  {

    v12 = 0;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v12 = v11 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_1001900E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  return _swift_task_switch(sub_100190104, 0, 0);
}

uint64_t sub_100190104()
{
  v33 = v0;
  if (qword_1005A7FB8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005AE0C8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0x72656C41656B616DLL, 0xEB00000000292874, v32);
    *(v7 + 12) = 2082;
    if (v5)
    {
      v8 = v1;
    }

    else
    {
      v6 = 7104878;
      v8 = 0xE300000000000000;
    }

    v9 = sub_10000D01C(v6, v8, v32);

    *(v7 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s. Alert ID: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v10 = sub_10018FFC4(v0[16], v0[17]);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  if (v10)
  {
    if (v13)
    {
      v15 = v0[16];
      v14 = v0[17];
      v16 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v16 = 136446466;
      *(v16 + 4) = sub_10000D01C(0x72656C41656B616DLL, 0xEB00000000292874, v32);
      *(v16 + 12) = 2082;
      v17 = v14 == 0;
      if (v14)
      {
        v18 = v15;
      }

      else
      {
        v18 = 7104878;
      }

      if (v17)
      {
        v19 = 0xE300000000000000;
      }

      else
      {
        v19 = v1;
      }

      v20 = sub_10000D01C(v18, v19, v32);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s. Will make SaveMeAlert with ID: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
    }

    v21 = swift_task_alloc();
    v0[18] = v21;
    *v21 = v0;
    v21[1] = sub_1001905F8;

    return sub_100191890((v0 + 2));
  }

  else
  {
    if (v13)
    {
      v24 = v0[16];
      v23 = v0[17];
      v25 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_10000D01C(0x72656C41656B616DLL, 0xEB00000000292874, v32);
      *(v25 + 12) = 2082;
      v26 = v23 == 0;
      if (v23)
      {
        v27 = v24;
      }

      else
      {
        v27 = 7104878;
      }

      if (v26)
      {
        v28 = 0xE300000000000000;
      }

      else
      {
        v28 = v1;
      }

      v29 = sub_10000D01C(v27, v28, v32);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s. Alert ID: %{public}s should not show. Skipping", v25, 0x16u);
      swift_arrayDestroy();
    }

    sub_100191294();
    swift_allocError();
    *v30 = 3;
    swift_willThrow();
    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1001905F8()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 120);
    v5 = *(v2 + 16);
    v6 = *(v2 + 48);
    *(v4 + 16) = *(v2 + 32);
    *(v4 + 32) = v6;
    *v4 = v5;
    v7 = *(v2 + 64);
    v8 = *(v2 + 80);
    v9 = *(v2 + 96);
    *(v4 + 96) = *(v2 + 112);
    *(v4 + 64) = v8;
    *(v4 + 80) = v9;
    *(v4 + 48) = v7;
  }

  v10 = *(v3 + 8);

  return v10();
}

uint64_t sub_100190728(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_1001D7F30(0, 0, v6, &unk_1004CE3A8, v8);
}

uint64_t sub_100190838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = swift_task_alloc();
  v5[5] = v6;
  *v6 = v5;
  v6[1] = sub_1001908CC;

  return daemon.getter();
}

uint64_t sub_1001908CC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for SettingsService(0);
  v6 = sub_100009098(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009098(&qword_1005AA6E8, type metadata accessor for SettingsService, &unk_1004DC468);
  *v3 = v9;
  v3[1] = sub_100190AA8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100190AA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100190E6C, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[10] = v5;
    *v5 = v4;
    v5[1] = sub_100190C38;
    v6 = v3[4];
    v7 = v3[3];

    return sub_100485D1C(v7, v6);
  }
}

uint64_t sub_100190C38()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100191040;
  }

  else
  {
    v2 = sub_100190D4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100190D4C()
{
  if (qword_1005A7FB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005AE0C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully set this device as me device, through SAVEME alert", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100190E6C()
{
  v13 = v0;
  v1 = v0[9];

  if (qword_1005A7FB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005AE0C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed while trying to set this device as me device, error: %s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100191040()
{
  v13 = v0;
  v1 = v0[11];

  if (qword_1005A7FB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005AE0C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed while trying to set this device as me device, error: %s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100191214()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFC98);
  sub_10000A6F0(v0, qword_1005DFC98);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100191294()
{
  result = qword_1005AE0E0;
  if (!qword_1005AE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE0E0);
  }

  return result;
}

uint8_t *sub_1001912E8(uint8_t *a1, uint64_t a2)
{
  if (([objc_opt_self() locationServicesEnabled] & 1) == 0)
  {

    if (qword_1005A7FB8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005AE0C8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      a1 = swift_slowAlloc();
      *a1 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Location services is disabled. Not showing Save Me alert or acking it.", a1, 2u);
    }

    sub_100191294();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
  }

  return a1;
}

id sub_100191428(uint64_t a1, uint64_t a2)
{
  v27[0] = a1;
  v27[1] = a2;

  v3._countAndFlagsBits = 0x544C55414645445FLL;
  v3._object = 0xE800000000000000;
  String.append(_:)(v3);
  v4 = v27[0];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    v7 = MobileGestalt_copy_productType_obj();

    if (v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        v12 = 4 * v11;
        do
        {
          String.subscript.getter();
          v13 = Character.isNumber.getter();
        }

        while ((v13 & 1) == 0 && v12 != String.index(after:)() >> 14);
      }

      String.subscript.getter();

      v19 = Substring.uppercased()();

      v20 = sub_10025EF38(&off_10058BA20);
      swift_arrayDestroy();
      v21 = sub_10021B304(v19._countAndFlagsBits, v19._object, v20);

      if (v21)
      {

        v22._countAndFlagsBits = 95;
        v22._object = 0xE100000000000000;
        String.append(_:)(v22);
        String.append(_:)(v19);

        return a1;
      }

      if (qword_1005A7FB8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000A6F0(v23, qword_1005AE0C8);

      v15 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v15, v24))
      {

        goto LABEL_22;
      }

      v25 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004E41F0, v27);
      *(v25 + 12) = 2082;
      v26 = sub_10000D01C(v19._countAndFlagsBits, v19._object, v27);

      *(v25 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v15, v24, "%{public}s. Unexpected device type: %{public}s.", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      if (qword_1005A7FB8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000A6F0(v14, qword_1005AE0C8);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_22;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004E41F0, v27);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s. Failed to get productType.", v17, 0xCu);
      sub_100004984(v18);
    }

LABEL_22:

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_100191890(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for LocalizationUtility.Table();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for DeviceWithCompanion();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[16] = v4;
  *v4 = v1;
  v4[1] = sub_100191A44;

  return daemon.getter();
}

uint64_t sub_100191A44(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 136) = a1;

  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for SettingsService(0);
  v6 = sub_100009098(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009098(&qword_1005AA6E8, type metadata accessor for SettingsService, &unk_1004DC468);
  *v3 = v9;
  v3[1] = sub_100191C20;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100191C20(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100192728, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[21] = v5;
    *v5 = v4;
    v5[1] = sub_100191DB0;
    v6 = v3[14];

    return sub_100484570(v6, 0);
  }
}

uint64_t sub_100191DB0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1001927E8;
  }

  else
  {
    v2 = sub_100191EC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100191EC4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = type metadata accessor for Device();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_100192DA0(v2, v1);
  v5 = v0[13];
  sub_100192CC0(v0[15], v5);
  v0[23] = v3;
  v0[24] = v4;
  v6 = *(v4 + 48);
  v0[25] = v6;
  v0[26] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v5, 1, v3);
  v8 = v0[13];
  if (v7 == 1)
  {
    sub_100192D30(v0[13]);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = Device.deviceName.getter();
    v10 = v11;
    (*(v4 + 8))(v8, v3);
  }

  v0[27] = v9;
  v0[28] = v10;
  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_100192074;
  v13 = v0[10];

  return sub_1004856D4(v13);
}

uint64_t sub_100192074()
{
  *(*v1 + 240) = v0;

  if (v0)
  {

    v2 = sub_100192BF4;
  }

  else
  {
    v2 = sub_100192190;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100192190()
{
  v1 = v0[25];
  v2 = v0[23];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  DeviceWithCompanion.thisDevice.getter();
  (*(v6 + 8))(v5, v7);
  sub_100192CC0(v3, v4);
  v8 = v1(v4, 1, v2);
  v9 = v0[28];
  if (v8 == 1)
  {
    v10 = v0[11];

    sub_100192D30(v10);
    if (qword_1005A7FB8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005AE0C8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Could not get this device identifier.", v14, 2u);
    }

    v15 = v0[15];
    v16 = v0[12];

    sub_100191294();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();

    sub_100192D30(v16);
    sub_100192D30(v15);

    v18 = v0[1];
  }

  else
  {
    v19 = v0[23];
    v20 = v0[24];
    v21 = v0[11];
    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[5];
    v58 = Device.identifier.getter();
    v57 = v25;
    (*(v20 + 8))(v21, v19);
    sub_100191428(0xD000000000000017, 0x80000001004E4140);
    v26 = enum case for LocalizationUtility.Table.default(_:);
    v59 = *(v23 + 104);
    v59(v22, enum case for LocalizationUtility.Table.default(_:), v24);
    v27 = static LocalizationUtility.localizedString(key:table:)();
    v55 = v28;
    v56 = v27;

    v29 = *(v23 + 8);
    v29(v22, v24);
    if (v9)
    {
      v31 = v0[27];
      v30 = v0[28];
      v32 = v0[7];
      v33 = v0[5];
      sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1004C1900;
      *(v34 + 32) = v31;
      *(v34 + 40) = v30;
      v59(v32, v26, v33);
      v35 = static LocalizationUtility.localizedString(key:table:_:)();
      v53 = v36;
      v54 = v35;
    }

    else
    {
      v59(v0[7], v26, v0[5]);
      v37 = static LocalizationUtility.localizedString(key:table:)();
      v53 = v38;
      v54 = v37;
    }

    v52 = v0[15];
    v49 = v0[12];
    v39 = v0[7];
    v41 = v0[4];
    v40 = v0[5];
    v29(v39, v40);
    v59(v39, v26, v40);
    v42 = static LocalizationUtility.localizedString(key:table:)();
    v50 = v43;
    v51 = v42;
    v29(v39, v40);
    v59(v39, v26, v40);
    v44 = static LocalizationUtility.localizedString(key:table:)();
    v46 = v45;

    v29(v39, v40);
    sub_100192D30(v49);
    sub_100192D30(v52);
    v47 = swift_allocObject();
    *(v47 + 16) = v58;
    *(v47 + 24) = v57;
    *v41 = v56;
    v41[1] = v55;
    v41[2] = v54;
    v41[3] = v53;
    v41[4] = v51;
    v41[5] = v50;
    v41[6] = sub_100192D98;
    v41[7] = v47;
    v41[8] = v44;
    v41[9] = v46;
    v41[10] = DarwinNotification.init(name:value:);
    v41[11] = 0;
    v41[12] = 0;

    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_100192728()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001927E8()
{
  v25 = v0;
  *(v0 + 16) = *(v0 + 176);
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 248) == 8;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v12 = *(v0 + 120);

    v13 = type metadata accessor for Device();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v12, 1, 1, v13);

    v15 = *(v0 + 104);
    sub_100192CC0(*(v0 + 120), v15);
    *(v0 + 184) = v13;
    *(v0 + 192) = v14;
    v16 = *(v14 + 48);
    *(v0 + 200) = v16;
    *(v0 + 208) = (v14 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v17 = v16(v15, 1, v13);
    v18 = *(v0 + 104);
    if (v17 == 1)
    {
      sub_100192D30(*(v0 + 104));
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v19 = Device.deviceName.getter();
      v20 = v21;
      (*(v14 + 8))(v18, v13);
    }

    *(v0 + 216) = v19;
    *(v0 + 224) = v20;
    v22 = swift_task_alloc();
    *(v0 + 232) = v22;
    *v22 = v0;
    v22[1] = sub_100192074;
    v23 = *(v0 + 80);

    return sub_1004856D4(v23);
  }

  else
  {

    if (qword_1005A7FB8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005AE0C8);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 176);
      v6 = swift_slowAlloc();
      v24[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_10000D01C(0x656C41656B616D5FLL, 0xEC00000029287472, v24);
      *(v6 + 12) = 2080;
      *(v0 + 24) = v5;
      swift_errorRetain();
      v7 = String.init<A>(describing:)();
      v9 = sub_10000D01C(v7, v8, v24);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s. Failed to get active location sharing device: %s", v6, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100192BF4()
{
  v1 = *(v0 + 120);

  sub_100192D30(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100192CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100192D30(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100192DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100192E10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003690;

  return sub_100190838(a1, v4, v5, v7, v6);
}

unint64_t sub_100192EE4()
{
  result = qword_1005AE0E8;
  if (!qword_1005AE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE0E8);
  }

  return result;
}

uint64_t sub_100192F38()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005AE0F0);
  v1 = sub_10000A6F0(v0, qword_1005AE0F0);
  if (qword_1005A7FD0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFCB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100193000@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001932D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10019302C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100193BD0();
  v5 = sub_10004E724();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_100193084()
{
  if (qword_1005A7FC8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005AE0F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E4280, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_100004984(v4);
  }

  v5 = type metadata accessor for Transaction();
  __chkstk_darwin(v5);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100193250()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFCB0);
  sub_10000A6F0(v0, qword_1005DFCB0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1001932D0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_1001932E0(double *a1)
{
  error = 0;
  sub_10004B564(&qword_1005AE108, &unk_1004CE490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_48;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *a1;
  v3 = *(a1 + 1);
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  *(inited + 56) = v3;

  v6 = sub_100208D38(inited);
  swift_setDeallocating();
  sub_1001939E4(inited + 32);
  responseFlags[1] = v6;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = *(a1 + 2);
  v11 = *(a1 + 3);

  sub_10014571C(v10, v11, v7, v9);
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = *(a1 + 5);
  v54 = *(a1 + 6);
  if (v15)
  {
    v16 = *(a1 + 4);
  }

  else
  {
    v16 = 0;
  }

  sub_10014571C(v16, v15, v12, v14);
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
LABEL_50:
    __break(1u);
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v21 = *(a1 + 9);
  v20 = *(a1 + 10);
  if (v21)
  {
    v22 = *(a1 + 8);
  }

  else
  {
    v22 = 0;
  }

  sub_10014571C(v22, v21, v17, v19);
  v23 = a1[12];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = CFUserNotificationCreate(kCFAllocatorDefault, v23, 0, &error, isa);

  if (v25)
  {
    responseFlags[0] = 0;
    if (CFUserNotificationReceiveResponse(v25, 0.0, responseFlags))
    {
      sub_100193A4C();
      swift_allocError();
      v27 = 1;
LABEL_14:
      *v26 = v27;
      swift_willThrow();
LABEL_46:

      return;
    }

    switch(responseFlags[0])
    {
      case 3uLL:
        if (qword_1005A7FC8 != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        sub_10000A6F0(v47, qword_1005AE0F0);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v48, v49, "Cancelled.", v50, 2u);
        }

        sub_100193A4C();
        swift_allocError();
        v27 = 3;
        goto LABEL_14;
      case 1uLL:
        if (v21)
        {
          v20();
        }

        if (qword_1005A7FC8 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_10000A6F0(v38, qword_1005AE0F0);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v39, v40))
        {
          goto LABEL_45;
        }

        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = "Alternate button response.";
        v43 = v40;
        v44 = v39;
        v45 = v41;
        v46 = 2;
        break;
      case 0uLL:
        if (qword_1005A7FC8 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_10000A6F0(v34, qword_1005AE0F0);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "Default button response.", v37, 2u);
        }

        if (v15)
        {
          v54();
        }

        goto LABEL_46;
      default:
        if (qword_1005A7FC8 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_10000A6F0(v51, qword_1005AE0F0);
        v39 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v39, v52))
        {
          goto LABEL_45;
        }

        v53 = swift_slowAlloc();
        *v53 = 134217984;
        swift_beginAccess();
        *(v53 + 4) = responseFlags[0];
        v42 = "Unexpected result from user notification: %lu";
        v43 = v52;
        v44 = v39;
        v45 = v53;
        v46 = 12;
        break;
    }

    _os_log_impl(&_mh_execute_header, v44, v43, v42, v45, v46);

LABEL_45:

    goto LABEL_46;
  }

  v28 = error;
  if (qword_1005A7FC8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000A6F0(v29, qword_1005AE0F0);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109632;
    *(v32 + 4) = v28 >> 26;
    *(v32 + 8) = 1024;
    *(v32 + 10) = (v28 >> 14) & 0xFFF;
    *(v32 + 14) = 1024;
    *(v32 + 16) = v28 & 0x3FFF;
    _os_log_impl(&_mh_execute_header, v30, v31, "    Failed to create user notification. Error system: %d, subsystem: %d, code: %d", v32, 0x14u);
  }

  sub_100193A4C();
  swift_allocError();
  *v33 = 0;
  swift_willThrow();
}

uint64_t sub_1001939E4(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AE110, &qword_1004CE7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100193A4C()
{
  result = qword_1005AE118;
  if (!qword_1005AE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE118);
  }

  return result;
}

uint64_t sub_100193AB0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100193AC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_100193B10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100193B7C()
{
  result = qword_1005AE120;
  if (!qword_1005AE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE120);
  }

  return result;
}

unint64_t sub_100193BD0()
{
  result = qword_1005AE128;
  if (!qword_1005AE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE128);
  }

  return result;
}

uint64_t sub_100193C34()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005AE130);
  v1 = sub_10000A6F0(v0, qword_1005AE130);
  if (qword_1005A7FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFCC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100193CFC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_100193D94;

  return sub_100194F68(a1);
}

uint64_t sub_100193D94()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100193EC4, 0, 0);
  }
}

uint64_t sub_100193EC4()
{
  sub_100193F28(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100193F28(uint64_t a1)
{
  v3 = *v1;
  if (qword_1005A7FD8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005AE130);
  sub_10017E60C(a1, v22);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_10017E644(a1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v7 = 136446467;
    if (*(a1 + 168))
    {
      v8 = *(a1 + 160);
      v9 = *(a1 + 168);
    }

    else
    {
      v8 = 7104878;
      v9 = 0xE300000000000000;
    }

    v10 = sub_10000D01C(v8, v9, v22);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2081;
    if (*(a1 + 40))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
    }

    else
    {
      v11 = 7104878;
      v12 = 0xE300000000000000;
    }

    v13 = sub_10000D01C(v11, v12, v22);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Enqueuing server alert presentation. Alert ID: %{public}s Description: %{private}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = *(a1 + 96);
  *(v15 + 136) = *(a1 + 112);
  v17 = *(a1 + 144);
  *(v15 + 152) = *(a1 + 128);
  *(v15 + 168) = v17;
  *(v15 + 184) = *(a1 + 160);
  v18 = *(a1 + 32);
  *(v15 + 72) = *(a1 + 48);
  v19 = *(a1 + 80);
  *(v15 + 88) = *(a1 + 64);
  *(v15 + 104) = v19;
  *(v15 + 120) = v16;
  v20 = *(a1 + 16);
  *(v15 + 24) = *a1;
  *(v15 + 40) = v20;
  *(v15 + 16) = v14;
  *(v15 + 56) = v18;
  *(v15 + 200) = v3;
  sub_10017E60C(a1, v22);

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100194208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[54] = a2;
  v3[55] = a3;
  v3[53] = a1;
  v4 = type metadata accessor for UUID();
  v3[56] = v4;
  v3[57] = *(v4 - 8);
  v3[58] = swift_task_alloc();

  return _swift_task_switch(sub_1001942CC, 0, 0);
}

uint64_t sub_1001942CC()
{
  v19 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[59] = Strong;
  if (Strong)
  {
    if (qword_1005A7FD8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    v0[60] = sub_10000A6F0(v2, qword_1005AE130);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[57];
      v5 = v0[58];
      v7 = v0[56];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136446210;
      WorkItemQueue.WorkItem.id.getter();
      sub_10019753C(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      (*(v6 + 8))(v5, v7);
      v13 = sub_10000D01C(v10, v12, &v18);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v3, v4, "Started work on enqueued alert presentation, workItem ID:%{public}s", v8, 0xCu);
      sub_100004984(v9);
    }

    v14 = swift_task_alloc();
    v0[61] = v14;
    *v14 = v0;
    v14[1] = sub_10019458C;
    v15 = v0[55];

    return sub_1001965FC(v15);
  }

  else
  {

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_10019458C()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_100194908;
  }

  else
  {
    v2 = sub_1001946A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001946A0()
{
  v19 = v0;
  v1 = v0[55];

  sub_10017E60C(v1, (v0 + 24));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  sub_10017E644(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[57];
    v4 = v0[58];
    v6 = v0[56];
    v17 = v0[55];
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136446466;
    WorkItemQueue.WorkItem.id.getter();
    sub_10019753C(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    (*(v5 + 8))(v4, v6);
    v11 = sub_10000D01C(v8, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    if (*(v17 + 168))
    {
      v12 = *(v0[55] + 160);
      v13 = *(v17 + 168);
    }

    else
    {
      v13 = 0xE300000000000000;
      v12 = 7104878;
    }

    v14 = sub_10000D01C(v12, v13, &v18);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Presented alert successfully WorkItem ID:%{public}s Alert ID: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_100197274(v0[53]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100194908()
{
  v22 = v0;
  v1 = v0[55];

  sub_10017E60C(v1, (v0 + 2));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  sub_10017E644(v1);

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[57];
    v4 = v0[58];
    v6 = v0[56];
    v20 = v0[55];
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v7 = 136446723;
    WorkItemQueue.WorkItem.id.getter();
    sub_10019753C(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    (*(v5 + 8))(v4, v6);
    v11 = sub_10000D01C(v8, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    if (*(v20 + 168))
    {
      v12 = *(v0[55] + 160);
      v13 = *(v20 + 168);
    }

    else
    {
      v13 = 0xE300000000000000;
      v12 = 7104878;
    }

    v14 = sub_10000D01C(v12, v13, &v21);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2081;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = sub_10000D01C(v15, v16, &v21);

    *(v7 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to present alert WorkItem ID:%{public}s Alert ID: %{public}s Error: %{private}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100197274(v0[53]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100194BE4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100194C40(uint64_t a1)
{
  v3 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v16[-v4];
  v6 = *v1;
  if (*(a1 + 152))
  {
    return sub_100193F28(a1);
  }

  v8 = *(a1 + 144);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v6;
  *(v10 + 40) = v8;
  v11 = *(a1 + 144);
  *(v10 + 176) = *(a1 + 128);
  *(v10 + 192) = v11;
  *(v10 + 208) = *(a1 + 160);
  v12 = *(a1 + 80);
  *(v10 + 112) = *(a1 + 64);
  *(v10 + 128) = v12;
  v13 = *(a1 + 112);
  *(v10 + 144) = *(a1 + 96);
  *(v10 + 160) = v13;
  v14 = *(a1 + 16);
  *(v10 + 48) = *a1;
  *(v10 + 64) = v14;
  v15 = *(a1 + 48);
  *(v10 + 80) = *(a1 + 32);
  *(v10 + 96) = v15;

  sub_10017E60C(a1, v16);
  sub_10020D620(0, 0, v5, &unk_1004CE6D8, v10);
}

uint64_t sub_100194DB8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_100193CFC(v7, a1, v4, v5, v6, (v1 + 6));
}

void sub_100194E80()
{
  if (qword_1005A7FD8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005AE130);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Delaying alert presentation finished.", v2, 2u);
  }
}

uint64_t sub_100194F88()
{
  if (v0[2] > 0.0)
  {
    if (qword_1005A7FD8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005AE130);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 2);
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v2, v3, "Delaying alert presentation by seconds: %f", v5, 0xCu);
    }

    v6 = v0[2];

    v8 = v6 * 1000000000.0;
    if (v6 * 1000000000.0 > 1.84467441e19)
    {
      v8 = 1.84467441e19;
    }

    if (*&v8 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v8 > -1.0)
    {
      if (v8 < 1.84467441e19)
      {
        v9 = v8;
        v10 = swift_task_alloc();
        *(v0 + 3) = v10;
        *v10 = v0;
        v10[1] = sub_10019518C;
        v7 = v9;

        return static Task<>.sleep(nanoseconds:)(v7);
      }

LABEL_19:
      __break(1u);
      return static Task<>.sleep(nanoseconds:)(v7);
    }

    __break(1u);
    goto LABEL_19;
  }

  v11 = *(v0 + 1);

  return v11();
}

uint64_t sub_10019518C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_100195300;
  }

  else
  {
    v2 = sub_1001952A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001952A0()
{
  sub_100194E80();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100195300()
{
  sub_100194E80();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100195360(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_100194208(a1, v4, v1 + 24);
}

uint64_t sub_100195410(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = swift_task_alloc();
  v2[8] = v3;
  *v3 = v2;
  v3[1] = sub_1001954A4;

  return daemon.getter();
}

uint64_t sub_1001954A4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 72) = a1;

  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_10019753C(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10019753C(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100195680;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100195680(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100195AB4, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[13] = v5;
    *v5 = v4;
    v5[1] = sub_100195810;
    v6 = v3[7];
    v7 = v3[6];

    return sub_10020C1B4(v7, v6);
  }
}

uint64_t sub_100195810()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100195CBC;
  }

  else
  {
    v2 = sub_100195924;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100195924()
{
  v11 = v0;
  if (qword_1005A7FD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005AE130);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_10000D01C(v5, v4, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully acked Alert ID: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100195AB4()
{
  v13 = v0;

  if (qword_1005A7FD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005AE130);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136446467;
    *(v6 + 4) = sub_10000D01C(v5, v4, &v12);
    *(v6 + 12) = 2081;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to ack Alert ID: %{public}s, error: %{private}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100195CBC()
{
  v13 = v0;

  if (qword_1005A7FD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005AE130);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136446467;
    *(v6 + 4) = sub_10000D01C(v5, v4, &v12);
    *(v6 + 12) = 2081;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to ack Alert ID: %{public}s, error: %{private}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

void sub_100195EC4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10004B564(&qword_1005AE1F0, &qword_1004CE718);
  v5 = __chkstk_darwin(v4 - 8);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v66 - v7;
  v9 = type metadata accessor for ServerAlertURLAction(0);
  v10 = *(v9 - 8);
  v74 = v9;
  v75 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v68 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v66 - v14;
  __chkstk_darwin(v13);
  v17 = &v66 - v16;
  v18 = type metadata accessor for LocalizationUtility.Table();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[1];
  if (v22)
  {
    v67 = v15;
    v70 = *a1;
    v23 = a1[7];
    v73 = v22;
    if (v23)
    {
      v72 = a1[6];

      v76 = v23;
    }

    else
    {
      (*(v19 + 104))(v21, enum case for LocalizationUtility.Table.default(_:), v18);

      v72 = static LocalizationUtility.localizedString(key:table:)();
      v76 = v26;
      (*(v19 + 8))(v21, v18);
    }

    v28 = a1[8];
    v27 = a1[9];
    v30 = sub_100198164(a1[10], a1[11], v28, v27);
    v31 = v29;
    if (v27)
    {
      if (v29 == 3)
      {

        v30 = v28;
        v31 = v27;
      }
    }

    else if (v29 == 3)
    {
      (*(v75 + 56))(v8, 1, 1, v74);

      v22 = v73;
      goto LABEL_14;
    }

    v32 = v76;

    sub_100197E5C(v30, v31, v8);
    v33 = sub_100197584(v30, v31);
    v34 = v75;
    if ((*(v75 + 48))(v8, 1, v74, v33) != 1)
    {
      sub_1001975A8(v8, v17);
      v37 = v67;
      sub_1001975A8(v17, v67);
      v38 = (*(v34 + 80) + 16) & ~*(v34 + 80);
      v36 = swift_allocObject();
      sub_1001975A8(v37, v36 + v38);

      v35 = sub_10019773C;
      v22 = v73;
LABEL_16:
      v69 = v35;
      v39 = a1[13];
      if (!v39)
      {
        v42 = 0;
        v46 = 0;
        v47 = 0;
LABEL_28:
        v54 = a1[4];

        v57 = v69;
        v56 = v70;
        v58 = v72;
        goto LABEL_36;
      }

      v76 = v32;
      v41 = a1[14];
      v40 = a1[15];
      v42 = a1[12];
      v44 = sub_100198164(a1[16], a1[17], v41, v40);
      v45 = v43;
      if (v40)
      {
        if (v43 == 3)
        {

          v44 = v41;
          v45 = v40;
        }
      }

      else if (v43 == 3)
      {
        v48 = v71;
        (*(v75 + 56))(v71, 1, 1, v74);
        goto LABEL_25;
      }

      v48 = v71;
      sub_100197E5C(v44, v45, v71);
      v49 = sub_100197584(v44, v45);
      v50 = v75;
      if ((*(v75 + 48))(v48, 1, v74, v49) != 1)
      {
        v51 = v68;
        sub_1001975A8(v48, v68);
        v52 = v67;
        sub_1001975A8(v51, v67);
        v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
        v47 = swift_allocObject();
        sub_1001975A8(v52, v47 + v53);
        v46 = sub_10019760C;
        v22 = v73;
        goto LABEL_27;
      }

LABEL_25:
      v22 = v73;
      sub_100002CE0(v48, &qword_1005AE1F0, &qword_1004CE718);
      v42 = 0;
      v39 = 0;
      v46 = 0;
      v47 = 0;
LABEL_27:
      v32 = v76;
      goto LABEL_28;
    }

    v22 = v73;
LABEL_14:
    sub_100002CE0(v8, &qword_1005AE1F0, &qword_1004CE718);

    v72 = 0;
    v32 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_16;
  }

  if (a1[21])
  {
    v24 = a1[20];
    v25 = a1[21];
  }

  else
  {
    v25 = 0xE300000000000000;
    v24 = 7104878;
  }

  v59 = qword_1005A7FD8;

  if (v59 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_10000A6F0(v60, qword_1005AE130);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v77 = v64;
    *v63 = 136446210;
    v65 = sub_10000D01C(v24, v25, &v77);

    *(v63 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v61, v62, "Could not create generic alert: missing title. Alert ID:%{public}s", v63, 0xCu);
    sub_100004984(v64);
  }

  else
  {
  }

  v56 = 0;
  v54 = 0;
  v55 = 0;
  v58 = 0;
  v32 = 0;
  v57 = 0;
  v36 = 0;
  v42 = 0;
  v39 = 0;
  v46 = 0;
  v47 = 0;
LABEL_36:
  *a2 = v56;
  a2[1] = v22;
  a2[2] = v54;
  a2[3] = v55;
  a2[4] = v58;
  a2[5] = v32;
  a2[6] = v57;
  a2[7] = v36;
  a2[8] = v42;
  a2[9] = v39;
  a2[10] = v46;
  a2[11] = v47;
  a2[12] = 0;
}

uint64_t sub_10019661C()
{
  v1 = *(v0 + 544);
  v2 = v1[3];
  if (v2 && (*(v0 + 504) = v1[2], *(v0 + 512) = v2, *(v0 + 520) = 0x454D45564153, *(v0 + 528) = 0xE600000000000000, sub_1000246F4(), v3 = StringProtocol.caseInsensitiveCompare<A>(_:)(), v1 = *(v0 + 544), !v3))
  {
    v7 = v1[20];
    *(v0 + 552) = v7;
    v8 = v1[21];
    *(v0 + 560) = v8;
    swift_bridgeObjectRetain_n();
    v9 = sub_1001912E8(v7, v8);
    *(v0 + 568) = v10;
    v11 = v9;
    v12 = v10;
    v13 = swift_task_alloc();
    *(v0 + 576) = v13;
    *v13 = v0;
    v13[1] = sub_100196A24;

    return sub_1001900E0(v0 + 400, v11, v12);
  }

  else
  {
    sub_100195EC4(v1, (v0 + 296));
    v4 = *(v0 + 304);
    if (v4)
    {
      *(v0 + 192) = *(v0 + 296);
      *(v0 + 200) = v4;
      *(v0 + 288) = *(v0 + 392);
      v5 = *(v0 + 360);
      *(v0 + 240) = *(v0 + 344);
      *(v0 + 256) = v5;
      *(v0 + 272) = *(v0 + 376);
      v6 = *(v0 + 328);
      *(v0 + 208) = *(v0 + 312);
      *(v0 + 224) = v6;
      sub_100193084();
      sub_100002CE0(v0 + 296, &qword_1005AE1E8, &unk_1004CE700);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100196A24()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_100196EF4;
  }

  else
  {

    v2 = sub_100196B40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100196B40()
{
  v23 = v0;
  v1 = *(v0 + 584);
  sub_100193084();
  if (v1)
  {
    sub_1001974E8(v0 + 400);
    *(v0 + 536) = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 600) == 3;
    }

    else
    {
      v2 = 0;
    }

    if (!v2)
    {

      swift_willThrow();
      v3 = *(v0 + 8);
LABEL_23:

      return v3();
    }

    if (qword_1005A7FD8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 544);
    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005AE130);
    sub_10017E60C(v12, v0 + 16);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    sub_10017E644(v12);
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 560);
    if (v16)
    {
      v18 = *(v0 + 552);
      v19 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      *v19 = 136446466;
      *(v19 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E42E0, v22);
      *(v19 + 12) = 2080;
      if (v17)
      {
        v20 = v18;
      }

      else
      {
        v20 = 7104878;
      }

      if (!v17)
      {
        v17 = 0xE300000000000000;
      }

      v21 = sub_10000D01C(v20, v17, v22);

      *(v19 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s - SaveMe alert with ID: %s was already shown.", v19, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

LABEL_22:
    v3 = *(v0 + 8);
    goto LABEL_23;
  }

  v4 = *(v0 + 560);

  sub_1001974E8(v0 + 400);
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = *(v0 + 560);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  [v6 setObject:v7 forKey:v8];

  v9 = swift_task_alloc();
  *(v0 + 592) = v9;
  *v9 = v0;
  v9[1] = sub_10019717C;
  v10 = *(v0 + 552);

  return sub_100195410(v10, v5);
}

uint64_t sub_100196EF4()
{
  v15 = v0;

  *(v0 + 536) = *(v0 + 584);
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 600) == 3;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {

    if (qword_1005A7FD8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 544);
    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005AE130);
    sub_10017E60C(v3, v0 + 16);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    sub_10017E644(v3);
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 560);
    if (v7)
    {
      v9 = *(v0 + 552);
      v10 = swift_slowAlloc();
      v14[0] = swift_slowAlloc();
      *v10 = 136446466;
      *(v10 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E42E0, v14);
      *(v10 + 12) = 2080;
      if (v8)
      {
        v11 = v9;
      }

      else
      {
        v11 = 7104878;
      }

      if (!v8)
      {
        v8 = 0xE300000000000000;
      }

      v12 = sub_10000D01C(v11, v8, v14);

      *(v10 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s - SaveMe alert with ID: %s was already shown.", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v2 = *(v0 + 8);
  }

  else
  {

    swift_willThrow();
    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_10019717C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100197274(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7FD8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005AE130);

  v14 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    WorkItemQueue.WorkItem.id.getter();
    sub_10019753C(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v2 + 8))(v4, v1);
    v12 = sub_10000D01C(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v14, v6, "Finished work on enqueued alert presentation, workItem ID:%{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {
    v13 = v14;
  }
}

uint64_t sub_10019753C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100197584(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_100197594(a1, a2);
  }

  return result;
}

double sub_100197594(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1001975A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerAlertURLAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100197610()
{
  v1 = *(type metadata accessor for ServerAlertURLAction(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1001976DC()
{
  v1 = *(type metadata accessor for ServerAlertURLAction(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_100197844(v2);
}

uint64_t sub_100197740()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFCC8);
  sub_10000A6F0(v0, qword_1005DFCC8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001977C4()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFCE0);
  sub_10000A6F0(v0, qword_1005DFCE0);
  return Logger.init(subsystem:category:)();
}

void sub_100197844(uint64_t a1)
{
  v2 = type metadata accessor for ServerAlertURLAction(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(v3 + 28));
  v7 = [objc_opt_self() defaultWorkspace];
  v9 = v7;
  if (v6 == 1)
  {
    if (v7)
    {
      URL._bridgeToObjectiveC()(v8);
      v11 = v10;
      sub_100207CD4(_swiftEmptyArrayStorage);
      v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v32 = 0;
      v13 = [v9 openSensitiveURL:v11 withOptions:v12.super.isa error:&v32];
      goto LABEL_6;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  URL._bridgeToObjectiveC()(v8);
  v11 = v14;
  sub_100207CD4(_swiftEmptyArrayStorage);
  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = 0;
  v13 = [v9 openURL:v11 withOptions:v12.super.isa error:&v32];
LABEL_6:
  v15 = v13;

  v16 = v32;
  if (v15)
  {

    v17 = v16;
  }

  else
  {
    v31[1] = v32;
    v18 = v32;
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005A7FE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005DFCE0);
    sub_100197CA8(a1, v5);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v23 = 141558531;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      type metadata accessor for URL();
      sub_100197D68();
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      sub_100197D0C(v5);
      v27 = sub_10000D01C(v24, v26, &v32);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2080;
      v31[2] = v19;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v28 = String.init<A>(describing:)();
      v30 = sub_10000D01C(v28, v29, &v32);

      *(v23 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to open URL %{private,mask.hash}s, error: %s", v23, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100197D0C(v5);
    }
  }
}

uint64_t type metadata accessor for ServerAlertURLAction(uint64_t a1)
{
  result = qword_1005AE250;
  if (!qword_1005AE250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100197CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerAlertURLAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100197D0C(uint64_t a1)
{
  v2 = type metadata accessor for ServerAlertURLAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100197D68()
{
  result = qword_1005ADD18;
  if (!qword_1005ADD18)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD18);
  }

  return result;
}

uint64_t sub_100197DE8(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100197E5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001980E8(a1, a2);
  URL.init(string:)();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1001980FC(v8);
    v13 = type metadata accessor for ServerAlertURLAction(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    v15 = *(v10 + 32);
    v15(v12, v8, v9);
    v15(a3, v12, v9);
    v16 = type metadata accessor for ServerAlertURLAction(0);
    a3[*(v16 + 20)] = a2 < 3;
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

double sub_1001980E8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1001980FC(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100198164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0x73676E6974746573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x747465732D666D66 && a2 == 0xEC00000073676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x7465732D70696D66 && a2 == 0xED000073676E6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x6C72752D6E65706FLL && a2 == 0xE800000000000000)
  {
    if (!a4)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v9 & 1) != 0 && a4)
  {
LABEL_22:

    return a3;
  }

  return result;
}

uint64_t type metadata accessor for SavePreferencesEndpoint(uint64_t a1)
{
  result = qword_1005AE2E0;
  if (!qword_1005AE2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019837C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 1520) = a3;
  *(v3 + 1464) = a2;
  *(v3 + 1456) = a1;
  v4 = swift_task_alloc();
  *(v3 + 1472) = v4;
  *v4 = v3;
  v4[1] = sub_100198418;

  return daemon.getter();
}

uint64_t sub_100198418(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1480) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1488) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009320(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009320(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1001985F4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001985F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[187] = a1;
  v3[188] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1001989D0, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[189] = v5;
    *v5 = v4;
    v5[1] = sub_100198784;

    return sub_100245BB8((v3 + 62));
  }
}

uint64_t sub_100198784()
{
  v1 = *(*v0 + 1496);

  return _swift_task_switch(sub_100198894, v1, 0);
}

uint64_t sub_100198894()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_100198A54, 0, 0);
}

uint64_t sub_1001989D0()
{
  v1 = *(v0 + 1464);

  sub_10019B7B0(v1, type metadata accessor for ClientContext);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100198A54()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1456);

  v4 = *(v0 + 992);
  *v3 = *(v0 + 976);
  v3[1] = v4;
  v5 = *(v0 + 1008);
  v6 = *(v0 + 1024);
  v7 = *(v0 + 1056);
  v3[4] = *(v0 + 1040);
  v3[5] = v7;
  v3[2] = v5;
  v3[3] = v6;
  v8 = *(v0 + 1072);
  v9 = *(v0 + 1088);
  v10 = *(v0 + 1120);
  v3[8] = *(v0 + 1104);
  v3[9] = v10;
  v3[6] = v8;
  v3[7] = v9;
  v11 = type metadata accessor for SavePreferencesRequestContent(0);
  sub_10019B748(v2, v3 + *(v11 + 20), type metadata accessor for ClientContext);
  sub_10004B564(&qword_1005AE108, &unk_1004CE490);
  v12 = swift_allocObject();
  *(v12 + 32) = 0x61636F4C65646968;
  v13 = v12 + 32;
  *(v12 + 16) = xmmword_1004C1900;
  v14 = 28494;
  if (v1)
  {
    v14 = 7562585;
  }

  v15 = 0xE200000000000000;
  if (v1)
  {
    v15 = 0xE300000000000000;
  }

  *(v12 + 40) = 0xEC0000006E6F6974;
  *(v12 + 48) = v14;
  *(v12 + 56) = v15;
  v16 = sub_100208D38(v12);
  swift_setDeallocating();
  sub_100002CE0(v13, &qword_1005AE110, &qword_1004CE7D0);
  swift_deallocClassInstance();
  sub_10019B7B0(v2, type metadata accessor for ClientContext);
  *(v3 + *(v11 + 24)) = v16;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100198C0C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 1520) = a3;
  *(v3 + 1464) = a2;
  *(v3 + 1456) = a1;
  v4 = swift_task_alloc();
  *(v3 + 1472) = v4;
  *v4 = v3;
  v4[1] = sub_100198CA8;

  return daemon.getter();
}

uint64_t sub_100198CA8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1480) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1488) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009320(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009320(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100198E84;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100198E84(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[187] = a1;
  v3[188] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10019DB84, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[189] = v5;
    *v5 = v4;
    v5[1] = sub_100199014;

    return sub_100245BB8((v3 + 62));
  }
}

uint64_t sub_100199014()
{
  v1 = *(*v0 + 1496);

  return _swift_task_switch(sub_100199124, v1, 0);
}

uint64_t sub_100199124()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_100199260, 0, 0);
}

uint64_t sub_100199260()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1456);

  v4 = *(v0 + 992);
  *v3 = *(v0 + 976);
  v3[1] = v4;
  v5 = *(v0 + 1008);
  v6 = *(v0 + 1024);
  v7 = *(v0 + 1056);
  v3[4] = *(v0 + 1040);
  v3[5] = v7;
  v3[2] = v5;
  v3[3] = v6;
  v8 = *(v0 + 1072);
  v9 = *(v0 + 1088);
  v10 = *(v0 + 1120);
  v3[8] = *(v0 + 1104);
  v3[9] = v10;
  v3[6] = v8;
  v3[7] = v9;
  v11 = type metadata accessor for SavePreferencesRequestContent(0);
  sub_10019B748(v2, v3 + *(v11 + 20), type metadata accessor for ClientContext);
  sub_10004B564(&qword_1005AE108, &unk_1004CE490);
  v12 = swift_allocObject();
  *(v12 + 32) = 0xD000000000000013;
  v13 = v12 + 32;
  v14 = 28494;
  if (v1)
  {
    v14 = 7562585;
  }

  v15 = 0xE200000000000000;
  if (v1)
  {
    v15 = 0xE300000000000000;
  }

  *(v12 + 16) = xmmword_1004C1900;
  *(v12 + 40) = 0x80000001004DDFA0;
  *(v12 + 48) = v14;
  *(v12 + 56) = v15;
  v16 = sub_100208D38(v12);
  swift_setDeallocating();
  sub_100002CE0(v13, &qword_1005AE110, &qword_1004CE7D0);
  swift_deallocClassInstance();
  sub_10019B7B0(v2, type metadata accessor for ClientContext);
  *(v3 + *(v11 + 24)) = v16;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100199414(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005AE488, &qword_1004CEA80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  sub_100011AEC(a1, a1[3]);
  sub_10019D5F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[7];
  v9 = v2[5];
  v48 = v2[6];
  v49 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v50 = v2[8];
  v51 = v11;
  v12 = v2[3];
  v13 = v2[1];
  v44 = v2[2];
  v45 = v12;
  v14 = v2[3];
  v15 = v2[5];
  v46 = v2[4];
  v47 = v15;
  v16 = v2[1];
  v43[0] = *v2;
  v43[1] = v16;
  v39 = v48;
  v40 = v10;
  v17 = v2[9];
  v41 = v50;
  v42 = v17;
  v35 = v44;
  v36 = v14;
  v37 = v46;
  v38 = v9;
  v33 = v43[0];
  v34 = v13;
  v32 = 0;
  sub_100005F04(v43, &v22, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v18 = v52;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v18)
  {
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v22 = v33;
    v23 = v34;
    sub_100002CE0(&v22, &qword_1005A9328, &unk_1004C7F20);
  }

  else
  {
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v22 = v33;
    v23 = v34;
    sub_100002CE0(&v22, &qword_1005A9328, &unk_1004C7F20);
    type metadata accessor for SaveMeDevicePreferencesRequestContent(0);
    v21 = 1;
    type metadata accessor for ClientContext(0);
    sub_100009320(&qword_1005AC568, type metadata accessor for ClientContext, &unk_1004C9A18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}