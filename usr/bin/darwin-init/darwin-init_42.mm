unint64_t sub_10034E2C4()
{
  result = qword_1004B1300;
  if (!qword_1004B1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1300);
  }

  return result;
}

unint64_t sub_10034E318()
{
  result = qword_1004B1308;
  if (!qword_1004B1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1308);
  }

  return result;
}

uint64_t static DInitDeviceIdentity.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(*static RealComputer.shared + 208);

  v4 = v2(v3);
  v6 = v5;

  v7 = *(*static RealComputer.shared + 216);

  v9 = v7(v8);
  v11 = v10;

  v12 = *(*static RealComputer.shared + 312);

  v14 = v12(v13);
  v16 = v15;

  *a1 = v4;
  *(a1 + 8) = v6 & 1;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  return result;
}

uint64_t sub_10034E4E0()
{
  v1 = 0x754E6C6169726573;
  if (*v0 != 1)
  {
    v1 = 0x726556646C697562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684628325;
  }
}

uint64_t sub_10034E544@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10034EE7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10034E56C(uint64_t a1)
{
  v2 = sub_10034E94C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10034E5A8(uint64_t a1)
{
  v2 = sub_10034E94C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void __swiftcall DInitDeviceIdentity.init()(DarwinInit::DInitDeviceIdentity *__return_ptr retstr)
{
  retstr->ecid.value = 0;
  retstr->ecid.is_nil = 1;
  retstr->serialNumber = 0u;
  retstr->buildVersion = 0u;
}

void __swiftcall DInitDeviceIdentity.init(ecid:serialNumber:buildVersion:)(DarwinInit::DInitDeviceIdentity *__return_ptr retstr, Swift::Int_optional ecid, Swift::String_optional serialNumber, Swift::String_optional buildVersion)
{
  retstr->ecid.value = ecid.value;
  retstr->ecid.is_nil = ecid.is_nil;
  retstr->serialNumber = serialNumber;
  retstr->buildVersion = buildVersion;
}

uint64_t DInitDeviceIdentity.description.getter()
{
  _StringGuts.grow(_:)(65);
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v1._object = 0x80000001004461D0;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x80000001004461F0;
  v3._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v3);
  if (v0[3])
  {
    v4 = v0[2];
    v5 = v0[3];
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  v7._object = 0x8000000100446210;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  if (v0[5])
  {
    v8 = v0[4];
    v9 = v0[5];
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE700000000000000;
  }

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0;
}

uint64_t DInitDeviceIdentity.encode(to:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004B1310, &qword_1004099E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_10034E94C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10034E94C()
{
  result = qword_1004B1318;
  if (!qword_1004B1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1318);
  }

  return result;
}

BOOL sub_10034E9BC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s10DarwinInit19DInitDeviceIdentityV2eeoiySbAC_ACtFZ_0(v7, v8);
}

void DInitDeviceIdentity.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }

LABEL_8:
    Hasher._combine(_:)(0);
    if (*(v1 + 40))
    {
      goto LABEL_4;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    return;
  }

  v2 = *v1;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v2);
  if (!*(v1 + 24))
  {
    goto LABEL_8;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v1 + 40))
  {
    goto LABEL_9;
  }

LABEL_4:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int DInitDeviceIdentity.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitDeviceIdentity.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10034EB20()
{
  Hasher.init(_seed:)();
  DInitDeviceIdentity.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL _s10DarwinInit19DInitDeviceIdentityV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v3 != v4)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  if (v9)
  {
    return v10 && (*(a1 + 32) == *(a2 + 32) && v9 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v10;
}

unint64_t sub_10034EC44()
{
  result = qword_1004B1320;
  if (!qword_1004B1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1320);
  }

  return result;
}

uint64_t sub_10034EC98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10034ECF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_10034ED78()
{
  result = qword_1004B1328;
  if (!qword_1004B1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1328);
  }

  return result;
}

unint64_t sub_10034EDD0()
{
  result = qword_1004B1330;
  if (!qword_1004B1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1330);
  }

  return result;
}

unint64_t sub_10034EE28()
{
  result = qword_1004B1338;
  if (!qword_1004B1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1338);
  }

  return result;
}

uint64_t sub_10034EE7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726556646C697562 && a2 == 0xEC0000006E6F6973)
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

uint64_t DInitPackageConfig.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_10034F008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10034F090(uint64_t a1)
{
  v2 = sub_10034F280();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10034F0CC(uint64_t a1)
{
  v2 = sub_10034F280();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitPackageConfig.encode(to:)(void *a1)
{
  v2 = sub_1000039E8(&qword_1004B1340, &qword_100409C20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000E2A8(a1, a1[3]);
  sub_10034F280();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for URL();
  sub_10034F800(&qword_1004A9058, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_10034F280()
{
  result = qword_1004B1348;
  if (!qword_1004B1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1348);
  }

  return result;
}

uint64_t DInitPackageConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for URL();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004B1350, &qword_100409C28);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DInitPackageConfig(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E2A8(a1, a1[3]);
  sub_10034F280();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_10034F800(&qword_1004A90E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_10034F5A8(v11, v13);
  }

  return sub_100003C3C(a1);
}

uint64_t type metadata accessor for DInitPackageConfig(uint64_t a1)
{
  result = qword_1004B13B8;
  if (!qword_1004B13B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10034F5A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DInitPackageConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DInitPackageConfig.hash(into:)(uint64_t a1)
{
  type metadata accessor for URL();
  sub_10034F800(&qword_1004AB370, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int DInitPackageConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_10034F800(&qword_1004AB370, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10034F734()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_10034F800(&qword_1004AB370, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10034F800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10034F85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10034F8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10034F94C(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10034F9CC()
{
  result = qword_1004B13F0;
  if (!qword_1004B13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B13F0);
  }

  return result;
}

unint64_t sub_10034FA24()
{
  result = qword_1004B13F8;
  if (!qword_1004B13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B13F8);
  }

  return result;
}

unint64_t sub_10034FA7C()
{
  result = qword_1004B1400;
  if (!qword_1004B1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1400);
  }

  return result;
}

uint64_t OS_dispatch_queue.async<A>(group:qos:flags:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return _swift_task_switch(sub_10034FAFC, 0, 0);
}

uint64_t sub_10034FAFC()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 64);
  *(v2 + 32) = v1;
  *(v2 + 40) = v4;
  *(v2 + 56) = v3;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_10028EE04;
  v6 = *(v0 + 64);
  v7 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD00000000000001FLL, 0x800000010043DC10, sub_10034FDF8, v2, v6);
}

uint64_t sub_10034FC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[2] = a2;
  v20[3] = a5;
  v20[1] = a4;
  sub_100003A94(&qword_1004AB0A0, &unk_100377120);
  v12 = type metadata accessor for CheckedContinuation();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v20 - v14;
  (*(v13 + 16))(v20 - v14, a1, v12);
  v16 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a8;
  *(v17 + 3) = a6;
  *(v17 + 4) = a7;
  (*(v13 + 32))(&v17[v16], v15, v12);
  aBlock[4] = sub_100350058;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100053364;
  aBlock[3] = &unk_100495710;
  v18 = _Block_copy(aBlock);

  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
}

uint64_t sub_10034FE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003A94(&qword_1004AB0A0, &unk_100377120);
  v7 = type metadata accessor for Result();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-v9];
  v14 = a4;
  v15 = a1;
  v16 = a2;
  sub_1003500F0(sub_1003504F8, &v13[-v9]);
  v11 = type metadata accessor for CheckedContinuation();
  sub_1003502A4(v10, v11);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10034FF6C()
{
  sub_100003A94(&qword_1004AB0A0, &unk_100377120);
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100350058()
{
  v1 = v0[2];
  sub_100003A94(&qword_1004AB0A0, &unk_100377120);
  v2 = *(type metadata accessor for CheckedContinuation() - 8);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_10034FE0C(v3, v4, v5, v1);
}

uint64_t sub_1003500F0@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  __chkstk_darwin(a1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Result();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  a1(v5);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t sub_1003502A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  __chkstk_darwin(v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Result();
  __chkstk_darwin(v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1003504E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
}

uint64_t sub_1003504F8(void *a1)
{
  result = (*(v1 + 24))();
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_100350530()
{
  v0 = sub_1000039E8(&qword_1004AAD78, &unk_1003F52C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, qword_1004B1408);
  sub_1000270B4(v3, qword_1004B1408);
  sub_1000039E8(&qword_1004B1428, &qword_100409F50);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100409E30;
  v5 = type metadata accessor for Apply(0);
  v6 = sub_100350D48(&qword_1004AEA68, type metadata accessor for Apply, &protocol conformance descriptor for Apply);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  v7 = type metadata accessor for Generate(0);
  v8 = sub_100350D48(&qword_1004B1430, type metadata accessor for Generate, &protocol conformance descriptor for Generate);
  *(v4 + 48) = v7;
  *(v4 + 56) = v8;
  v9 = type metadata accessor for Log(0);
  v10 = sub_100350D48(&qword_1004B1438, type metadata accessor for Log, &protocol conformance descriptor for Log);
  *(v4 + 64) = v9;
  *(v4 + 72) = v10;
  v11 = type metadata accessor for Print(0);
  v12 = sub_100350D48(&qword_1004B09A0, type metadata accessor for Print, &protocol conformance descriptor for Print);
  *(v4 + 80) = v11;
  *(v4 + 88) = v12;
  v13 = type metadata accessor for MementoKeys(0);
  v14 = sub_100350D48(&qword_1004AAC80, type metadata accessor for MementoKeys, &protocol conformance descriptor for MementoKeys);
  *(v4 + 96) = v13;
  *(v4 + 104) = v14;
  v15 = type metadata accessor for Prepare(0);
  v16 = sub_100350D48(&qword_1004AB568, type metadata accessor for Prepare, &protocol conformance descriptor for Prepare);
  *(v4 + 112) = v15;
  *(v4 + 120) = v16;
  v17 = type metadata accessor for Status(0);
  v18 = sub_100350D48(&qword_1004ACB18, type metadata accessor for Status, &protocol conformance descriptor for Status);
  *(v4 + 128) = v17;
  *(v4 + 136) = v18;
  v19 = type metadata accessor for Validate(0);
  v20 = sub_100350D48(&qword_1004AF328, type metadata accessor for Validate, &protocol conformance descriptor for Validate);
  *(v4 + 144) = v19;
  *(v4 + 152) = v20;
  v21 = type metadata accessor for NameSpecification();
  (*(*(v21 - 8) + 56))(v2, 1, 1, v21);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t static DarwinInitCommand.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9FD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, qword_1004B1408);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DarwinInitCommand.validate()()
{
  if ((shim_allows_internal_security_policies() & 1) == 0)
  {
    if (qword_1004A9DF0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v0 = *(*static RealComputer.shared + 272);

    LOBYTE(v0) = v0(v1);

    if ((v0 & 1) == 0)
    {
      v2 = *(*static RealComputer.shared + 264);

      v4 = v2(v3);

      if ((v4 & 1) == 0)
      {
        v5 = *(*static RealComputer.shared + 288);

        v7 = v5(v6);

        if ((v7 & 1) == 0)
        {
          type metadata accessor for ValidationError();
          sub_100350D48(&qword_1004AB958, &type metadata accessor for ValidationError, &protocol conformance descriptor for ValidationError);
          swift_allocError();
          ValidationError.init(_:)();
          swift_willThrow();
        }
      }
    }
  }
}

unint64_t sub_100350B94()
{
  result = qword_1004A6120;
  if (!qword_1004A6120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6120);
  }

  return result;
}

uint64_t sub_100350BE8()
{
  sub_100350B94();
  ParsableCommand.run()();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100350C74()
{
  result = qword_1004A6128;
  if (!qword_1004A6128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6128);
  }

  return result;
}

unint64_t sub_100350CCC()
{
  result = qword_1004B1420;
  if (!qword_1004B1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1420);
  }

  return result;
}

uint64_t sub_100350D48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static JSEnumDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;

  v5 = sub_100187218(_swiftEmptyArrayStorage);
  type metadata accessor for JSEnumDecoder();
  v6 = swift_allocObject();
  v6[3] = v5;
  v6[4] = v4;
  v6[2] = _swiftEmptyArrayStorage;
  sub_1001FA940();
  return dispatch thunk of Decodable.init(from:)();
}

uint64_t JSEnumDecoder.SingleValueContainer.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v43[1] = a4;
  v43[0] = a1;
  v5 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v5 - 8);
  v7 = v43 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v43 - v13;
  v15 = *v4;
  v48 = v4[1];
  if (!swift_dynamicCastMetatype())
  {
    if (!swift_dynamicCastMetatype())
    {

      v37 = v48;

      v38 = sub_100187218(_swiftEmptyArrayStorage);
      v39 = type metadata accessor for JSEnumDecoder();
      v40 = swift_allocObject();
      v40[3] = v38;
      v40[4] = v15;
      v40[2] = v37;
      v46 = v39;
      v47 = sub_1001FA940();
      v44 = v40;
      return dispatch thunk of Decodable.init(from:)();
    }

    if (v15 >> 61 == 3)
    {
      v26 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      swift_bridgeObjectRetain_n();
      v27 = sub_100292FFC(v26, v25);
      if (v29)
      {
        v19 = type metadata accessor for DecodingError();
        swift_allocError();
        v21 = v30;
        sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        *v21 = v43[0];
        v44 = 0;
        v45 = 0xE000000000000000;

        _StringGuts.grow(_:)(34);

        v44 = 0xD000000000000012;
        v45 = 0x8000000100440080;
        v31._countAndFlagsBits = v26;
        v31._object = v25;
        String.append(_:)(v31);

        v23 = 0x7275442073612027;
        v24 = 0xEE002E6E6F697461;
        goto LABEL_9;
      }

      v41 = v27;
      v42 = v28;

      v44 = v41;
      v45 = v42;
      return swift_dynamicCast();
    }

LABEL_10:
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v34 = &type metadata for String;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, enum case for DecodingError.typeMismatch(_:), v32);
    return swift_willThrow();
  }

  if (v15 >> 61 != 3)
  {
    goto LABEL_10;
  }

  v16 = v15 & 0x1FFFFFFFFFFFFFFFLL;
  v18 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v17 = *(v16 + 24);

  URL.init(string:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10004B034(v7);
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v21 = v43[0];
    v44 = 0;
    v45 = 0xE000000000000000;

    _StringGuts.grow(_:)(29);

    v44 = 0xD000000000000012;
    v45 = 0x8000000100440080;
    v22._countAndFlagsBits = v18;
    v22._object = v17;
    String.append(_:)(v22);

    v23 = 0x4C52552073612027;
    v24 = 0xE90000000000002ELL;
LABEL_9:
    String.append(_:)(*&v23);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    return swift_willThrow();
  }

  v36 = *(v9 + 32);
  v36(v14, v7, v8);
  v36(v12, v14, v8);
  return swift_dynamicCast();
}

void JSEnumDecoder.SingleValueContainer.decodeArray()()
{
  if (*v0 >> 61 == 4)
  {
  }

  else
  {
    v1 = sub_1000039E8(&qword_1004ACCF8, &unk_1003FA100);
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v4 = v1;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, enum case for DecodingError.typeMismatch(_:), v2);
    swift_willThrow();
  }
}

void JSEnumDecoder.SingleValueContainer.decodeDict()()
{
  if (*v0 >> 61 == 5)
  {
  }

  else
  {
    v1 = sub_1000039E8(&qword_1004ACCF0, &qword_1003FC360);
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v4 = v1;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, enum case for DecodingError.typeMismatch(_:), v2);
    swift_willThrow();
  }
}

void JSEnumDecoder.SingleValueContainer.decode(_:)()
{
  v1 = *v0;
  if (*v0 >> 61 != 1)
  {
    goto LABEL_5;
  }

  if ((*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  if (*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) > 0xFFuLL)
  {
    __break(1u);
LABEL_5:
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v4 = &type metadata for UInt8;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, enum case for DecodingError.typeMismatch(_:), v2);
    swift_willThrow();
  }
}

{
  if (*v0 >> 61 != 1)
  {
    goto LABEL_5;
  }

  v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  if (v1 < 0)
  {
    __break(1u);
    return;
  }

  if (v1 | (*((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 16))
  {
    __break(1u);
LABEL_5:
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v4 = &type metadata for UInt16;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, enum case for DecodingError.typeMismatch(_:), v2);
    swift_willThrow();
  }
}

{
  if (*v0 >> 61 != 1)
  {
    goto LABEL_5;
  }

  v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  if (v1 < 0)
  {
    __break(1u);
    return;
  }

  if (v1 | HIDWORD(*((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10)))
  {
    __break(1u);
LABEL_5:
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v4 = &type metadata for UInt32;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, enum case for DecodingError.typeMismatch(_:), v2);
    swift_willThrow();
  }
}

uint64_t sub_10035177C(uint64_t result)
{
  if (*v1 >> 61 == 1)
  {
    v2 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (v2 < 0)
    {
      __break(1u);
    }

    else if (!v2)
    {
      return *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    }

    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = type metadata accessor for DecodingError();
    swift_allocError();
    v6 = v5;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v6 = v3;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v4 - 8) + 104))(v6, enum case for DecodingError.typeMismatch(_:), v4);
    return swift_willThrow();
  }

  return result;
}

DarwinInit::JSEnumDecoder::IndexKey __swiftcall JSEnumDecoder.IndexKey.init(intValue:)(Swift::Int intValue)
{
  v1 = 0;
  result.intValue.value = intValue;
  result.intValue.is_nil = v1;
  return result;
}

double sub_1003518A8()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1003518E0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

void *JSEnumDecoder.__allocating_init(from:codingPath:userInfo:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = *a1;
  result[3] = a3;
  result[4] = v7;
  result[2] = a2;
  return result;
}

void *JSEnumDecoder.init(from:codingPath:userInfo:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v3[3] = a3;
  v3[4] = v4;
  v3[2] = a2;
  return v3;
}

uint64_t sub_1003519D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[4];
  v7 = *(*v3 + 104);

  v7(v8);
  if (v6 >> 61 == 5)
  {
    type metadata accessor for JSEnumDecoder.KeyedValueContainer(0, a2, a3, v9);

    swift_getWitnessTable();
    KeyedDecodingContainer.init<A>(_:)();
  }

  else
  {
    v10 = sub_1000039E8(&qword_1004ACCF0, &qword_1003FC360);
    v11 = type metadata accessor for DecodingError();
    swift_allocError();
    v13 = v12;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v13 = v10;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v11 - 8) + 104))(v13, enum case for DecodingError.typeMismatch(_:), v11);
    swift_willThrow();
  }
}

uint64_t sub_100351BC4@<X0>(uint64_t *a3@<X8>)
{
  v5 = v3[4];
  v6 = *(*v3 + 104);

  v8 = v6(v7);
  if (v5 >> 61 == 4)
  {
    v9 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    a3[3] = &type metadata for JSEnumDecoder.UnkeyedContainer;
    a3[4] = sub_100356180();

    *a3 = v8;
    a3[1] = 0;
    a3[2] = v9;
  }

  else
  {
    v11 = sub_1000039E8(&qword_1004ACCF8, &unk_1003FA100);
    v12 = type metadata accessor for DecodingError();
    swift_allocError();
    v14 = v13;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v14 = v11;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v12 - 8) + 104))(v14, enum case for DecodingError.typeMismatch(_:), v12);
    swift_willThrow();
  }

  return result;
}

DarwinInit::JSEnumDecoder::UnkeyedContainer __swiftcall JSEnumDecoder.UnkeyedContainer.init(codingPath:arr:)(Swift::OpaquePointer codingPath, Swift::OpaquePointer arr)
{
  v3 = 0;
  result.arr = arr;
  result.currentIndex = v3;
  result.codingPath = codingPath;
  return result;
}

unint64_t sub_100351D74@<X0>(void *a3@<X8>)
{
  v5 = v3[4];
  v6 = *(*v3 + 104);

  v8 = v6(v7);
  a3[3] = &type metadata for JSEnumDecoder.SingleValueContainer;
  result = sub_1003561D4();
  a3[4] = result;
  *a3 = v5;
  a3[1] = v8;
  return result;
}

uint64_t JSEnumDecoder.IndexKey.stringValue.getter(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

DarwinInit::JSEnumDecoder::IndexKey_optional __swiftcall JSEnumDecoder.IndexKey.init(stringValue:)(Swift::String stringValue)
{

  v1 = 0;
  v2 = 256;
  result.value.intValue.value = v1;
  *&result.value.intValue.is_nil = v2;
  return result;
}

uint64_t sub_100351EAC()
{
  if ((*(v0 + 8) & 1) == 0)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100351F34@<X0>(uint64_t a1@<X8>)
{

  *a1 = 0;
  *(a1 + 8) = 256;
  return result;
}

uint64_t sub_100351F68@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100351F74(uint64_t a1)
{
  v2 = sub_10020115C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100351FB0(uint64_t a1)
{
  v2 = sub_10020115C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void JSEnumDecoder.UnkeyedContainer._nextValue()(void *a1@<X8>)
{
  v4 = v1[1];
  v3 = v1[2];
  if (v4 == *(v3 + 16))
  {
    v5 = type metadata accessor for DecodingError();
    swift_allocError();
    v7 = v6;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v7 = &type metadata for Any + 8;

    _StringGuts.grow(_:)(20);

    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v5 - 8) + 104))(v7, enum case for DecodingError.valueNotFound(_:), v5);
    swift_willThrow();
    return;
  }

  v9 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v1[1] = v9;
  v10 = *v1;
  sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for JSEnumDecoder.IndexKey;
  *(inited + 64) = sub_10020115C();
  *(inited + 32) = v9;
  *(inited + 40) = 0;

  sub_10034A3A8(inited);
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < *(v3 + 16))
  {
    *a1 = *(v3 + 8 * v4 + 32);
    a1[1] = v10;

    return;
  }

LABEL_9:
  __break(1u);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSEnumDecoder.UnkeyedContainer.decodeNil()()
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(&v4);
  if (!v1)
  {
    v2 = v4;

    v0 = v2 == 0xC000000000000000;
  }

  return v0;
}

uint64_t JSEnumDecoder.UnkeyedContainer.decode(_:)()
{
  return sub_100356228() & 1;
}

{
  return sub_100356370();
}

{
  JSEnumDecoder.UnkeyedContainer._nextValue()(v3);
  if (!v1)
  {
    v0 = sub_10021894C(v3[0], v3[1]);
  }

  return v0;
}

double JSEnumDecoder.UnkeyedContainer.decode(_:)()
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(&v4);
  if (!v0)
  {
    sub_1003564CC();
    v1 = v2;
  }

  return v1;
}

float JSEnumDecoder.UnkeyedContainer.decode(_:)()
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(&v4);
  if (!v0)
  {
    sub_100356644();
    v1 = v2;
  }

  return v1;
}

uint64_t (*JSEnumDecoder.UnkeyedContainer.decode(_:)())(void, void)
{
  return sub_100352ED8(sub_100218430);
}

{
  return sub_100352AB8(sub_100218450);
}

{
  return sub_100352B58(sub_100218584);
}

{
  return sub_100352D18(sub_1002186B8);
}

{
  return sub_100352ED8(sub_1002187F0);
}

{
  return sub_100352ED8(sub_1002181A0);
}

{
  return sub_100352AB8(sub_1002181C0);
}

{
  return sub_100352B58(sub_100218A58);
}

{
  return sub_100352D18(sub_100218B7C);
}

{
  return sub_100352ED8(sub_1002182EC);
}

unint64_t JSEnumDecoder.SingleValueContainer.decode(_:)()
{
  return sub_100352890(&type metadata for Int);
}

{
  v1 = *v0;
  if (*v0 >> 61 != 1)
  {
    goto LABEL_5;
  }

  result = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (__PAIR128__(*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), result) < __PAIR128__(-1, -128))
  {
    __break(1u);
    return result;
  }

  if (result > 0x7F)
  {
    __break(1u);
LABEL_5:
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v5 = &type metadata for Int8;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, enum case for DecodingError.typeMismatch(_:), v3);
    return swift_willThrow();
  }

  return result;
}

{
  v1 = *v0;
  if (*v0 >> 61 != 1)
  {
    goto LABEL_5;
  }

  result = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (__PAIR128__(*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), result) < __PAIR128__(-1, -32768))
  {
    __break(1u);
    return result;
  }

  if (result > 0x7FFF)
  {
    __break(1u);
LABEL_5:
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v5 = &type metadata for Int16;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, enum case for DecodingError.typeMismatch(_:), v3);
    return swift_willThrow();
  }

  return result;
}

{
  v1 = *v0;
  if (*v0 >> 61 != 1)
  {
    goto LABEL_5;
  }

  result = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (__PAIR128__(*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), result) < __PAIR128__(-1, 0xFFFFFFFF80000000))
  {
    __break(1u);
    return result;
  }

  if (result > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_5:
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v5 = &type metadata for Int32;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, enum case for DecodingError.typeMismatch(_:), v3);
    return swift_willThrow();
  }

  return result;
}

{
  return sub_100352890(&type metadata for Int64);
}

unint64_t sub_100352890(unint64_t result)
{
  v2 = *v1;
  if (*v1 >> 61 != 1)
  {
    goto LABEL_5;
  }

  result = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (__PAIR128__(*((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), result) < __PAIR128__(-1, 0x8000000000000000))
  {
    __break(1u);
    return result;
  }

  if (result > 0x7FFFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_5:
    v3 = result;
    v4 = type metadata accessor for DecodingError();
    swift_allocError();
    v6 = v5;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v6 = v3;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v4 - 8) + 104))(v6, enum case for DecodingError.typeMismatch(_:), v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t (*sub_100352AB8(uint64_t (*a1)(void, void)))(void, void)
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(v4);
  if (!v1)
  {
    a1 = a1(v4[0], v4[1]);
  }

  return a1;
}

uint64_t (*sub_100352B58(uint64_t (*a1)(void, void)))(void, void)
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(v4);
  if (!v1)
  {
    a1 = a1(v4[0], v4[1]);
  }

  return a1;
}

uint64_t (*sub_100352D18(uint64_t (*a1)(void, void)))(void, void)
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(v4);
  if (!v1)
  {
    a1 = a1(v4[0], v4[1]);
  }

  return a1;
}

uint64_t (*sub_100352ED8(uint64_t (*a1)(void, void)))(void, void)
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(v4);
  if (!v1)
  {
    a1 = a1(v4[0], v4[1]);
  }

  return a1;
}

void JSEnumDecoder.UnkeyedContainer.decode<A>(_:)(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(&v7);
  if (!v4)
  {
    JSEnumDecoder.SingleValueContainer.decode<A>(_:)(a1, a4);
  }
}

void JSEnumDecoder.UnkeyedContainer.nestedContainer<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(&v12);
  if (!v3)
  {
    if (v12 >> 61 == 5)
    {
      v7 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = v13;
      v13 = v7;
      type metadata accessor for JSEnumDecoder.KeyedValueContainer(0, a2, a3, v6);

      swift_getWitnessTable();
      KeyedDecodingContainer.init<A>(_:)();
    }

    else
    {
      v8 = sub_1000039E8(&qword_1004ACCF0, &qword_1003FC360);
      v9 = type metadata accessor for DecodingError();
      swift_allocError();
      v11 = v10;
      sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      *v11 = v8;

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v9);
      swift_willThrow();
    }
  }
}

void JSEnumDecoder.UnkeyedContainer.nestedUnkeyedContainer()(void *a1@<X8>)
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(v9);
  if (!v1)
  {
    v3 = v9[1];
    if (v9[0] >> 61 == 4)
    {
      v4 = *((v9[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      a1[3] = &type metadata for JSEnumDecoder.UnkeyedContainer;
      a1[4] = sub_100356180();

      *a1 = v3;
      a1[1] = 0;
      a1[2] = v4;
    }

    else
    {
      v5 = sub_1000039E8(&qword_1004ACCF8, &unk_1003FA100);
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      *v8 = v5;

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.typeMismatch(_:), v6);
      swift_willThrow();
    }
  }
}

uint64_t (*sub_100353620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void)))(void, void)
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(v6);
  if (!v3)
  {
    a3 = a3(v6[0], v6[1]);
  }

  return a3;
}

uint64_t (*sub_1003536C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void)))(void, void)
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(v6);
  if (!v3)
  {
    a3 = a3(v6[0], v6[1]);
  }

  return a3;
}

uint64_t (*sub_100353760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void)))(void, void)
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(v6);
  if (!v3)
  {
    a3 = a3(v6[0], v6[1]);
  }

  return a3;
}

uint64_t (*sub_100353800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void)))(void, void)
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(v6);
  if (!v3)
  {
    a3 = a3(v6[0], v6[1]);
  }

  return a3;
}

uint64_t sub_1003538BC()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10035390C()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1003539B4()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100353A04()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100353B44()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100353B94(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t JSEnumDecoder.SingleValueContainer.value.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t JSEnumDecoder.SingleValueContainer._decodeFloat<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3 >> 61;
  if (v5 == 1)
  {
    sub_1002F6DF0();
    return dispatch thunk of FloatingPoint.init<A>(_:)();
  }

  else if (v5 == 2)
  {
    return dispatch thunk of BinaryFloatingPoint.init(_:)();
  }

  else
  {
    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v9 = a2;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.typeMismatch(_:), v7);
    return swift_willThrow();
  }
}

uint64_t JSEnumDecoder.SingleValueContainer._decodeInt<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 >> 61 == 1)
  {
    sub_1002F6DF0();
    return dispatch thunk of BinaryInteger.init<A>(_:)();
  }

  else
  {
    v6 = type metadata accessor for DecodingError();
    swift_allocError();
    v8 = v7;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v8 = a2;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.typeMismatch(_:), v6);
    return swift_willThrow();
  }
}

uint64_t JSEnumDecoder.KeyedValueContainer.allKeys.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1000039E8(&qword_1004B1450, &unk_100409F58);
  sub_100356984();
  v4 = Sequence.compactMap<A>(_:)();

  return v4;
}

uint64_t JSEnumDecoder.KeyedValueContainer._getValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a3 + 16))
  {
    v26 = a6;
    v14 = sub_100013364(v12, v13);
    v16 = v15;

    if (v16)
    {
      v17 = *(*(a3 + 56) + 8 * v14);
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = a4;
      *(inited + 64) = a5;
      v19 = sub_100064BF8((inited + 32));
      (*(*(a4 - 8) + 16))(v19, a1, a4);

      result = sub_10034A3A8(inited);
      *v26 = v17;
      v26[1] = a2;
      return result;
    }
  }

  else
  {
  }

  v21 = type metadata accessor for DecodingError();
  swift_allocError();
  v23 = v22;
  sub_1000039E8(&qword_1004A7170, &qword_100376CC0);
  v23[3] = a4;
  v23[4] = a5;
  v24 = sub_100064BF8(v23);
  (*(*(a4 - 8) + 16))(v24, a1, a4);

  dispatch thunk of CodingKey.stringValue.getter();
  v25._countAndFlagsBits = 0x756F6620746F6E20;
  v25._object = 0xEA0000000000646ELL;
  String.append(_:)(v25);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.keyNotFound(_:), v21);
  return swift_willThrow();
}

uint64_t JSEnumDecoder.KeyedValueContainer.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a3 + 16))
  {
    sub_100013364(v6, v7);
    v9 = v8;
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

BOOL JSEnumDecoder.KeyedValueContainer.decodeNil(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  JSEnumDecoder.KeyedValueContainer._getValue(forKey:)(a1, a2, a3, a4, a5, &v9);
  if (!v6)
  {
    v7 = v9;

    v5 = v7 == 0xC000000000000000;
  }

  return v5;
}

uint64_t JSEnumDecoder.KeyedValueContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  JSEnumDecoder.KeyedValueContainer._getValue(forKey:)(a1, a2, a3, a4, a5, &v10);
  if (!v5)
  {
    if (v10 >> 61)
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      *v8 = &type metadata for Bool;

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.typeMismatch(_:), v6);
      swift_willThrow();
    }

    else
    {
      LOBYTE(v6) = *(v10 + 16);
    }
  }

  return v6 & 1;
}

{
  JSEnumDecoder.KeyedValueContainer._getValue(forKey:)(a1, a2, a3, a4, a5, &v10);
  if (!v6)
  {
    if (v10 >> 61 == 3)
    {
      v5 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    }

    else
    {
      v5 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      *v8 = &type metadata for String;

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v5 - 8) + 104))(v8, enum case for DecodingError.typeMismatch(_:), v5);
      swift_willThrow();
    }
  }

  return v5;
}

{
  JSEnumDecoder.KeyedValueContainer._getValue(forKey:)(a1, a2, a3, a4, a5, v8);
  if (!v6)
  {
    v5 = sub_10021894C(v8[0], v8[1]);
  }

  return v5;
}

{
  result = JSEnumDecoder.KeyedValueContainer._getValue(forKey:)(a1, a2, a3, a4, a5, &v11);
  if (!v5)
  {
    if (v11 >> 61 == 1)
    {
      v7 = sub_1003560E0(*((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10), *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18));

      return v7;
    }

    else
    {
      v8 = type metadata accessor for DecodingError();
      swift_allocError();
      v10 = v9;
      sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      *v10 = &type metadata for UInt128;

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.typeMismatch(_:), v8);
      swift_willThrow();
    }
  }

  return result;
}

double JSEnumDecoder.KeyedValueContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  JSEnumDecoder.KeyedValueContainer._getValue(forKey:)(a1, a2, a3, a4, a5, &v9);
  if (!v5)
  {
    sub_1003564CC();
    v6 = v7;
  }

  return v6;
}

float JSEnumDecoder.KeyedValueContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  JSEnumDecoder.KeyedValueContainer._getValue(forKey:)(a1, a2, a3, a4, a5, &v9);
  if (!v5)
  {
    sub_100356644();
    v6 = v7;
  }

  return v6;
}

uint64_t (*JSEnumDecoder.KeyedValueContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void, void)
{
  return sub_100354B14(a1, a2, a3, a4, a5, sub_100218430);
}

{
  return sub_100354934(a1, a2, a3, a4, a5, sub_100218450);
}

{
  return sub_1003549D4(a1, a2, a3, a4, a5, sub_100218584);
}

{
  return sub_100354A74(a1, a2, a3, a4, a5, sub_1002186B8);
}

{
  return sub_100354B14(a1, a2, a3, a4, a5, sub_1002187F0);
}

{
  return sub_100354B14(a1, a2, a3, a4, a5, sub_1002181A0);
}

{
  return sub_100354934(a1, a2, a3, a4, a5, sub_1002181C0);
}

{
  return sub_1003549D4(a1, a2, a3, a4, a5, sub_100218A58);
}

{
  return sub_100354A74(a1, a2, a3, a4, a5, sub_100218B7C);
}

{
  return sub_100354B14(a1, a2, a3, a4, a5, sub_1002182EC);
}

uint64_t (*sub_100354934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void)))(void, void)
{
  JSEnumDecoder.KeyedValueContainer._getValue(forKey:)(a1, a2, a3, a4, a5, v9);
  if (!v6)
  {
    a6 = a6(v9[0], v9[1]);
  }

  return a6;
}

uint64_t (*sub_1003549D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void)))(void, void)
{
  JSEnumDecoder.KeyedValueContainer._getValue(forKey:)(a1, a2, a3, a4, a5, v9);
  if (!v6)
  {
    a6 = a6(v9[0], v9[1]);
  }

  return a6;
}

uint64_t (*sub_100354A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void)))(void, void)
{
  JSEnumDecoder.KeyedValueContainer._getValue(forKey:)(a1, a2, a3, a4, a5, v9);
  if (!v6)
  {
    a6 = a6(v9[0], v9[1]);
  }

  return a6;
}

uint64_t (*sub_100354B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void)))(void, void)
{
  JSEnumDecoder.KeyedValueContainer._getValue(forKey:)(a1, a2, a3, a4, a5, v9);
  if (!v6)
  {
    a6 = a6(v9[0], v9[1]);
  }

  return a6;
}

uint64_t JSEnumDecoder.KeyedValueContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v59 = a8;
  v60 = a9;
  v62 = a6;
  v63 = a7;
  v61 = a1;
  v13 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v13 - 8);
  v15 = &v57 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v57 - v21;
  v23 = v68;
  result = JSEnumDecoder.KeyedValueContainer._getValue(forKey:)(a2, a3, a4, a5, v63, &v64);
  if (!v23)
  {
    v58 = v22;
    v63 = v20;
    v25 = v17;
    v26 = v61;
    v68 = 0;
    v28 = v64;
    v27 = v65;
    if (swift_dynamicCastMetatype())
    {
      if (v28 >> 61 == 3)
      {
        v59 = v27;
        v29 = *((v28 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v30 = *((v28 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

        v57 = v29;
        URL.init(string:)();
        if ((*(v25 + 48))(v15, 1, v16) == 1)
        {
          sub_10004B034(v15);
          v31 = type metadata accessor for DecodingError();
          swift_allocError();
          v33 = v32;
          sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
          *v33 = v26;
          v64 = 0;
          v65 = 0xE000000000000000;

          _StringGuts.grow(_:)(29);

          v64 = 0xD000000000000012;
          v65 = 0x8000000100440080;
          v34._countAndFlagsBits = v57;
          v34._object = v30;
          String.append(_:)(v34);

          v35._countAndFlagsBits = 0x4C52552073612027;
          v35._object = 0xE90000000000002ELL;
          String.append(_:)(v35);
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v31 - 8) + 104))(v33, enum case for DecodingError.typeMismatch(_:), v31);
          swift_willThrow();
        }

        v47 = *(v25 + 32);
        v48 = v58;
        v47(v58, v15, v16);
        v47(v63, v48, v16);
        return swift_dynamicCast();
      }
    }

    else
    {
      if (!swift_dynamicCastMetatype())
      {

        v49 = sub_100187218(_swiftEmptyArrayStorage);
        v50 = type metadata accessor for JSEnumDecoder();
        v51 = swift_allocObject();
        v51[3] = v49;
        v51[4] = v28;
        v51[2] = v27;
        v66 = v50;
        v67 = sub_1001FA940();
        v64 = v51;
        dispatch thunk of Decodable.init(from:)();
      }

      if (v28 >> 61 == 3)
      {
        v36 = v28 & 0x1FFFFFFFFFFFFFFFLL;
        v38 = *((v28 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v37 = *(v36 + 24);
        swift_bridgeObjectRetain_n();
        v39 = sub_100292FFC(v38, v37);
        if (v41)
        {
          v42 = type metadata accessor for DecodingError();
          v68 = swift_allocError();
          v44 = v43;
          sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
          *v44 = v26;
          v64 = 0;
          v65 = 0xE000000000000000;

          _StringGuts.grow(_:)(34);

          v64 = 0xD000000000000012;
          v65 = 0x8000000100440080;
          v45._countAndFlagsBits = v38;
          v45._object = v37;
          String.append(_:)(v45);

          v46._countAndFlagsBits = 0x7275442073612027;
          v46._object = 0xEE002E6E6F697461;
          String.append(_:)(v46);
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v42 - 8) + 104))(v44, enum case for DecodingError.typeMismatch(_:), v42);
          swift_willThrow();
        }

        v55 = v39;
        v56 = v40;

        v64 = v55;
        v65 = v56;
        return swift_dynamicCast();
      }
    }

    v52 = type metadata accessor for DecodingError();
    swift_allocError();
    v54 = v53;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v54 = &type metadata for String;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v52 - 8) + 104))(v54, enum case for DecodingError.typeMismatch(_:), v52);
    swift_willThrow();
  }

  return result;
}

uint64_t JSEnumDecoder.KeyedValueContainer.nestedContainer<A>(keyedBy:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = JSEnumDecoder.KeyedValueContainer._getValue(forKey:)(a2, a3, a4, a5, a7, &v18);
  if (!v8)
  {
    if (v18 >> 61 == 5)
    {
      v13 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = v19;
      v19 = v13;
      type metadata accessor for JSEnumDecoder.KeyedValueContainer(0, a6, a8, v12);

      swift_getWitnessTable();
      KeyedDecodingContainer.init<A>(_:)();
    }

    else
    {
      v14 = sub_1000039E8(&qword_1004ACCF0, &qword_1003FC360);
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      *v17 = v14;

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, enum case for DecodingError.typeMismatch(_:), v15);
      swift_willThrow();
    }
  }

  return result;
}

uint64_t JSEnumDecoder.KeyedValueContainer.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = JSEnumDecoder.KeyedValueContainer._getValue(forKey:)(a1, a2, a3, a4, a5, v15);
  if (!v6)
  {
    v9 = v15[1];
    if (v15[0] >> 61 == 4)
    {
      v10 = *((v15[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      a6[3] = &type metadata for JSEnumDecoder.UnkeyedContainer;
      a6[4] = sub_100356180();

      *a6 = v9;
      a6[1] = 0;
      a6[2] = v10;
    }

    else
    {
      v11 = sub_1000039E8(&qword_1004ACCF8, &unk_1003FA100);
      v12 = type metadata accessor for DecodingError();
      swift_allocError();
      v14 = v13;
      sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      *v14 = v11;

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v12 - 8) + 104))(v14, enum case for DecodingError.typeMismatch(_:), v12);
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100355B6C()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100355BBC()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100355C64()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100355CB4()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100355DF4()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100355E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t JSEnumDecoder.deinit()
{

  return v0;
}

uint64_t JSEnumDecoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003560E0(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_100356180()
{
  result = qword_1004B1440;
  if (!qword_1004B1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1440);
  }

  return result;
}

unint64_t sub_1003561D4()
{
  result = qword_1004B1448;
  if (!qword_1004B1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1448);
  }

  return result;
}

uint64_t sub_100356228()
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(&v5);
  if (!v0)
  {
    if (v5 >> 61)
    {
      v1 = type metadata accessor for DecodingError();
      swift_allocError();
      v3 = v2;
      sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      *v3 = &type metadata for Bool;

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v1 - 8) + 104))(v3, enum case for DecodingError.typeMismatch(_:), v1);
      swift_willThrow();
    }

    else
    {
      LOBYTE(v1) = *(v5 + 16);
    }
  }

  return v1 & 1;
}

uint64_t sub_100356370()
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(&v5);
  if (!v1)
  {
    if (v5 >> 61 == 3)
    {
      v0 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    }

    else
    {
      v0 = type metadata accessor for DecodingError();
      swift_allocError();
      v3 = v2;
      sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      *v3 = &type metadata for String;

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v0 - 8) + 104))(v3, enum case for DecodingError.typeMismatch(_:), v0);
      swift_willThrow();
    }
  }

  return v0;
}

void sub_1003564CC()
{
  v1 = *v0 >> 61;
  if (v1 == 1)
  {
    sub_100356EEC();
    sub_1002F6DF0();
    sub_100356F40();
    static BinaryFloatingPoint<>._convert<A>(from:)();
  }

  else if (v1 != 2)
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v4 = &type metadata for Double;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, enum case for DecodingError.typeMismatch(_:), v2);
    swift_willThrow();
  }
}

void sub_100356644()
{
  v1 = *v0 >> 61;
  if (v1 == 1)
  {
    sub_100356E44();
    sub_1002F6DF0();
    sub_100356E98();
    static BinaryFloatingPoint<>._convert<A>(from:)();
  }

  else if (v1 != 2)
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v4 = &type metadata for Float;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, enum case for DecodingError.typeMismatch(_:), v2);
    swift_willThrow();
  }
}

void sub_1003567C0()
{
  JSEnumDecoder.UnkeyedContainer._nextValue()(&v4);
  if (!v0)
  {
    if (v4 >> 61 == 1)
    {
      sub_1003560E0(*((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10), *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18));
    }

    else
    {
      v1 = type metadata accessor for DecodingError();
      swift_allocError();
      v3 = v2;
      sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      *v3 = &type metadata for UInt128;

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v1 - 8) + 104))(v3, enum case for DecodingError.typeMismatch(_:), v1);
      swift_willThrow();
    }
  }
}

unint64_t sub_100356984()
{
  result = qword_1004B1458;
  if (!qword_1004B1458)
  {
    sub_100003A94(&qword_1004B1450, &unk_100409F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1458);
  }

  return result;
}

unint64_t sub_1003569EC()
{
  result = qword_1004B1460;
  if (!qword_1004B1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1460);
  }

  return result;
}

unint64_t sub_100356A44()
{
  result = qword_1004B1468;
  if (!qword_1004B1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1468);
  }

  return result;
}

uint64_t sub_100356AA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_100356AEC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 112);

  return v2(v3);
}

uint64_t sub_100356B40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_100356B8C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 136);

  return v2(v3);
}

uint64_t getEnumTagSinglePayload for JSEnumDecoder.IndexKey(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for JSEnumDecoder.IndexKey(uint64_t result, int a2, int a3)
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

uint64_t sub_100356E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_100356E44()
{
  result = qword_1004B1600;
  if (!qword_1004B1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1600);
  }

  return result;
}

unint64_t sub_100356E98()
{
  result = qword_1004B1608;
  if (!qword_1004B1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1608);
  }

  return result;
}

unint64_t sub_100356EEC()
{
  result = qword_1004B1610;
  if (!qword_1004B1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1610);
  }

  return result;
}

unint64_t sub_100356F40()
{
  result = qword_1004B1618;
  if (!qword_1004B1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1618);
  }

  return result;
}

uint64_t static EC2MetadataService.fetchUserData(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100358A00;

  return sub_10035823C(a1, a2);
}

uint64_t sub_100357048()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  result = JSONDecoder.init()();
  qword_1004B1620 = result;
  return result;
}

uint64_t static EC2MetadataService.fetchImdsV2Token(ttlSeconds:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100358A00;

  return sub_1003571E4(a1);
}

uint64_t static EC2MetadataService.fetchUserData(sessionToken:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100307C0C;

  return sub_100357B14(a1, a2);
}

uint64_t sub_1003571E4(uint64_t a1)
{
  v1[17] = a1;
  type metadata accessor for String.Encoding();
  v1[18] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = type metadata accessor for URLRequest();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_10035732C, 0, 0);
}

uint64_t sub_10035732C()
{
  v1 = *(v0 + 136);
  if ((v1 - 21601) >= 0xFFFFFFFFFFFFABA0)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    *(v0 + 200) = sub_1000270B4(v6, qword_1004B00F8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Fetching IDMSv2 session token to load configuration from instance user data...", v9, 2u);
    }

    v10 = *(v0 + 136);

    sub_1000039E8(&qword_1004B05E0, &qword_1004069C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 32) = 0xD000000000000024;
    *(inited + 40) = 0x8000000100443B40;
    *(v0 + 120) = v10;
    *(inited + 48) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 56) = v12;
    v13 = sub_1001862DC(inited);
    swift_setDeallocating();
    sub_10035891C(inited + 32);
    if (qword_1004A9EE0 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 160);
    v14 = *(v0 + 168);
    v16 = *(v0 + 152);
    v17 = sub_1000270B4(v16, kDInitImdsTokenURL);
    (*(v15 + 16))(v14, v17, v16);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    URLRequest.addHeaders(additionalHTTPHeaders:)(v13);

    *(v0 + 80) = xmmword_1003F2EE0;
    *(v0 + 96) = xmmword_1003F2EF0;
    *(v0 + 112) = 1;
    v18 = swift_task_alloc();
    *(v0 + 208) = v18;
    *v18 = v0;
    v18[1] = sub_100357710;
    v19 = *(v0 + 192);

    return sub_1001AA578(v19, 3, 0x8AC7230489E80000, 0, 0, v0 + 80, 1, 0);
  }

  else
  {
    _StringGuts.grow(_:)(36);

    *(v0 + 128) = v1;
    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v2);

    sub_1003588C8();
    swift_allocError();
    *v3 = 0xD000000000000022;
    *(v3 + 8) = 0x80000001004464C0;
    *(v3 + 16) = 1;
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100357710(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[27] = a1;
  v6[28] = a2;
  v6[29] = v3;

  if (v3)
  {
    v7 = sub_100357A78;
  }

  else
  {

    v7 = sub_100357830;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100357830()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  static String.Encoding.utf8.getter();
  v1 = String.init(data:encoding:)();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    sub_100031928(v0[27], v0[28]);

    v5 = v0[1];

    return v5(v3, v4);
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Token response unexpected.", v9, 2u);
    }

    v11 = v0[27];
    v10 = v0[28];

    _StringGuts.grow(_:)(31);

    v12._countAndFlagsBits = Data.description.getter();
    String.append(_:)(v12);

    sub_1003588C8();
    swift_allocError();
    *v13 = 0xD00000000000001DLL;
    *(v13 + 8) = 0x80000001004464A0;
    *(v13 + 16) = 0;
    swift_willThrow();
    sub_100031928(v11, v10);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100357A78()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100357B14(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for URL();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100357C30, 0, 0);
}

uint64_t sub_100357C30()
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Loading configuration from EC2 instance user data...", v4, 2u);
  }

  v5 = *(v0 + 72);

  *(v0 + 56) = sub_1001862DC(_swiftEmptyArrayStorage);
  if (v5)
  {
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);

    sub_1001C9EE4(v7, v6, 0xD000000000000018, 0x8000000100443B70);
  }

  if (qword_1004A9ED8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v10 = *(v0 + 80);
  v11 = sub_1000270B4(v10, kDInitEC2UserDataURL);
  v12._rawValue = *(v0 + 56);
  *(v0 + 16) = xmmword_1003F2EE0;
  *(v0 + 32) = xmmword_1003F2EF0;
  *(v0 + 48) = 1;
  (*(v9 + 16))(v8, v11, v10);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  URLRequest.addHeaders(additionalHTTPHeaders:)(v12);

  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *v13 = v0;
  v13[1] = sub_100357ED4;
  v14 = *(v0 + 120);

  return sub_1001AA578(v14, 3, 0x8AC7230489E80000, 0, 0, v0 + 16, 1, 0);
}

uint64_t sub_100357ED4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[17] = a1;
  v6[18] = a2;
  v6[19] = v3;

  if (v3)
  {
    v7 = sub_1003581B4;
  }

  else
  {

    v7 = sub_100357FF4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100357FF4()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = Data.init(base64Encoded:options:)();
  v4 = v0[17];
  v3 = v0[18];
  if (v2 >> 60 == 15)
  {
    _StringGuts.grow(_:)(23);

    v5._countAndFlagsBits = Data.description.getter();
    String.append(_:)(v5);

    sub_1003588C8();
    swift_allocError();
    *v6 = 0xD000000000000015;
    *(v6 + 8) = 0x8000000100446480;
    *(v6 + 16) = 0;
    swift_willThrow();
    sub_100031928(v4, v3);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v1;
    v10 = v2;
    sub_100031928(v0[17], v0[18]);

    v11 = v0[1];

    return v11(v9, v10);
  }
}

uint64_t sub_1003581B4()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10035823C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_1003582E4;

  return sub_1003571E4(5);
}

uint64_t sub_1003582E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 48) = a2;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v6 + 56) = v10;
    *v10 = v7;
    v10[1] = sub_100358484;

    return sub_100357B14(a1, a2);
  }
}

uint64_t sub_100358484(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = v2;

  if (v2)
  {
    v5 = sub_100358838;
  }

  else
  {

    v5 = sub_1003585A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003585A4()
{
  if (qword_1004A9FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  sub_1000039E8(&qword_1004A8AA8, &qword_100379430);
  sub_100358984();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v2 = v0[8];
    v3 = v0[9];
LABEL_11:
    sub_100031928(v2, v3);
    v19 = v0[1];

    return v19();
  }

  v4 = v0[2];
  if (!*(v4 + 16) || (v5 = sub_100013364(v0[3], v0[4]), (v6 & 1) == 0))
  {
    v13 = v0[8];
    v12 = v0[9];
    v16 = v0[3];
    v15 = v0[4];

    _StringGuts.grow(_:)(22);

    v24 = 0xD000000000000014;
    v25 = 0x80000001004464F0;
    v17._countAndFlagsBits = v16;
    v17._object = v15;
    String.append(_:)(v17);
    goto LABEL_10;
  }

  v7 = (*(v4 + 56) + 16 * v5);
  v9 = *v7;
  v8 = v7[1];

  v10 = Data.init(base64Encoded:options:)();
  v13 = v0[8];
  v12 = v0[9];
  if (v11 >> 60 == 15)
  {
    _StringGuts.grow(_:)(29);

    v24 = 0xD00000000000001BLL;
    v25 = 0x8000000100446510;
    v14._countAndFlagsBits = v9;
    v14._object = v8;
    String.append(_:)(v14);

LABEL_10:
    sub_1003588C8();
    swift_allocError();
    *v18 = v24;
    *(v18 + 8) = v25;
    *(v18 + 16) = 0;
    swift_willThrow();
    v2 = v13;
    v3 = v12;
    goto LABEL_11;
  }

  v21 = v10;
  v22 = v11;

  sub_100031928(v13, v12);
  v23 = v0[1];

  return v23(v21, v22);
}

uint64_t sub_100358838()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1003588C8()
{
  result = qword_1004B1628;
  if (!qword_1004B1628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1628);
  }

  return result;
}

uint64_t sub_10035891C(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004B05E8, qword_1004069D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100358984()
{
  result = qword_1004A8AB0;
  if (!qword_1004A8AB0)
  {
    sub_100003A94(&qword_1004A8AA8, &qword_100379430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8AB0);
  }

  return result;
}

double sub_100358A04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 160);
  v2 = *(a1 + 168);
  v4 = *(a1 + 176);
  v5 = *(a1 + 184);
  v6 = *(a1 + 192);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = *(a1 + 200);
  return sub_1002592E0(v3, v2, v4, v5);
}

uint64_t sub_100358A2C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v10 = *(a2 + 160);
  v8 = *(a1 + 40);
  sub_1002592E0(*a1, v4, v5, v6);
  result = sub_1001FA5D8(v10);
  *(a2 + 160) = v3;
  *(a2 + 168) = v4;
  *(a2 + 176) = v5;
  *(a2 + 184) = v6;
  *(a2 + 192) = v7;
  *(a2 + 200) = v8;
  return result;
}

uint64_t sub_100358AE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (a1 + 216), 0x101uLL);
  memcpy(a2, (a1 + 216), 0x101uLL);
  return sub_100013E54(__dst, &v5, &qword_1004ACE90, &unk_1003FA3F0);
}

void *sub_100358B50(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x101uLL);
  memcpy(v6, (a2 + 216), 0x101uLL);
  sub_100013E54(__dst, v4, &qword_1004ACE90, &unk_1003FA3F0);
  sub_100013F2C(v6, &qword_1004ACE90, &unk_1003FA3F0);
  return memcpy((a2 + 216), __dst, 0x101uLL);
}

uint64_t sub_100358BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 44);
  v4 = *(v3 + 40);
  v6 = *(v3 + 72);
  v13 = *(v3 + 56);
  v5 = v13;
  v14 = v6;
  v15 = *(v3 + 88);
  v7 = v15;
  v9 = *(v3 + 24);
  v12[0] = *(v3 + 8);
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *a2 = v8;
  *(a2 + 16) = v9;
  return sub_100013E54(v12, v11, &qword_1004AD1E8, &unk_1003FC320);
}

double sub_100358C80(__int128 *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[4];
  v15 = a1[3];
  v16 = v3;
  v17 = *(a1 + 80);
  v4 = a1[1];
  v12 = *a1;
  v13 = v4;
  v14 = v2;
  v5 = a2 + *(type metadata accessor for Config(0) + 44);
  v6 = *(v5 + 56);
  v18[2] = *(v5 + 40);
  v18[3] = v6;
  v18[4] = *(v5 + 72);
  v19 = *(v5 + 88);
  v7 = *(v5 + 24);
  v18[0] = *(v5 + 8);
  v18[1] = v7;
  sub_100013E54(&v12, v11, &qword_1004AD1E8, &unk_1003FC320);
  sub_100013F2C(v18, &qword_1004AD1E8, &unk_1003FC320);
  *(v5 + 40) = v14;
  v8 = v16;
  *(v5 + 56) = v15;
  *(v5 + 72) = v8;
  *(v5 + 88) = v17;
  result = *&v12;
  v10 = v13;
  *(v5 + 8) = v12;
  *(v5 + 24) = v10;
  return result;
}

uint64_t sub_100358D70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Config(0) + 80) + 8);
  *a2 = v3;

  return sub_1001C8518(v3, v4, v5, v6);
}

uint64_t sub_100358DBC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for Config(0) + 80);
  v4 = *(v3 + 8);
  sub_1001C8518(v2, v5, v6, v7);
  result = sub_1001C855C(v4);
  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_100358E10@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 200);
  v9 = *(a1 + 184);
  v10 = v3;
  v11 = *(a1 + 216);
  v4 = v11;
  v8[0] = *(a1 + 152);
  v5 = v8[0];
  v8[1] = v2;
  a2[2] = v9;
  a2[3] = v3;
  a2[4] = v4;
  *a2 = v5;
  a2[1] = v2;
  return sub_100013E54(v8, &v7, &qword_1004ACEA0, &unk_1003FA400);
}

double sub_100358E74(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v13 = a1[2];
  v14 = v3;
  v15 = a1[4];
  v4 = a1[1];
  v11 = *a1;
  v12 = v4;
  v5 = *(a2 + 168);
  v6 = *(a2 + 200);
  v16[2] = *(a2 + 184);
  v16[3] = v6;
  v16[4] = *(a2 + 216);
  v16[0] = *(a2 + 152);
  v16[1] = v5;
  sub_100013E54(&v11, &v10, &qword_1004ACEA0, &unk_1003FA400);
  sub_100013F2C(v16, &qword_1004ACEA0, &unk_1003FA400);
  v7 = v11;
  *(a2 + 168) = v12;
  v8 = v14;
  *(a2 + 184) = v13;
  *(a2 + 200) = v8;
  result = *&v15;
  *(a2 + 216) = v15;
  *(a2 + 152) = v7;
  return result;
}

double sub_100358F60@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  *a2 = v2;
  a2[1] = v3;

  return result;
}

uint64_t sub_100358F6C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 64) = v4;
  *(a2 + 72) = v3;
  return result;
}

uint64_t Globals.init()@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  *a1 = -1;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = 512;
  *(a1 + 18) = 1;
  v3 = swift_getKeyPath();
  *(a1 + 24) = -1;
  *(a1 + 32) = v3;
  *(a1 + 40) = 512;
  *(a1 + 42) = 1;
  v4 = swift_getKeyPath();
  *(a1 + 48) = -1;
  *(a1 + 56) = v4;
  *(a1 + 64) = 512;
  *(a1 + 66) = 1;
  v5 = swift_getKeyPath();
  *(a1 + 72) = -1;
  *(a1 + 80) = v5;
  *(a1 + 88) = 1282;
  *(a1 + 90) = 1;
  v6 = swift_getKeyPath();
  *(a1 + 96) = -1;
  *(a1 + 104) = v6;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 1;
  v7 = swift_getKeyPath();
  *(a1 + 152) = -1;
  *(a1 + 160) = v7;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  *(a1 + 200) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100186EE8(_swiftEmptyArrayStorage);
  result = swift_getKeyPath();
  *(a1 + 208) = -1;
  *(a1 + 216) = result;
  *(a1 + 224) = v8 | 0xA000000000000000;
  *(a1 + 232) = 0xF000000000000007;
  *(a1 + 240) = 1;
  return result;
}

uint64_t sub_1003590FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 44);
  v4 = *(v3 + 40);
  v6 = *(v3 + 72);
  v13 = *(v3 + 56);
  v5 = v13;
  v14 = v6;
  v15 = *(v3 + 88);
  v7 = v15;
  v9 = *(v3 + 24);
  v12[0] = *(v3 + 8);
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *a2 = v8;
  *(a2 + 16) = v9;
  return sub_100013E54(v12, v11, &qword_1004AD1E8, &unk_1003FC320);
}

uint64_t sub_1003591B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (a1 + 216), 0x101uLL);
  memcpy(a2, (a1 + 216), 0x101uLL);
  return sub_100013E54(__dst, &v5, &qword_1004ACE90, &unk_1003FA3F0);
}

void *sub_100359224(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x101uLL);
  memcpy(v6, (a2 + 216), 0x101uLL);
  sub_100013E54(__dst, v4, &qword_1004ACE90, &unk_1003FA3F0);
  sub_100013F2C(v6, &qword_1004ACE90, &unk_1003FA3F0);
  return memcpy((a2 + 216), __dst, 0x101uLL);
}

uint64_t sub_1003592B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 200);
  v9 = *(a1 + 184);
  v10 = v3;
  v11 = *(a1 + 216);
  v4 = v11;
  v8[0] = *(a1 + 152);
  v5 = v8[0];
  v8[1] = v2;
  a2[2] = v9;
  a2[3] = v3;
  a2[4] = v4;
  *a2 = v5;
  a2[1] = v2;
  return sub_100013E54(v8, &v7, &qword_1004ACEA0, &unk_1003FA400);
}

double sub_10035931C(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v13 = a1[2];
  v14 = v3;
  v15 = a1[4];
  v4 = a1[1];
  v11 = *a1;
  v12 = v4;
  v5 = *(a2 + 168);
  v6 = *(a2 + 200);
  v16[2] = *(a2 + 184);
  v16[3] = v6;
  v16[4] = *(a2 + 216);
  v16[0] = *(a2 + 152);
  v16[1] = v5;
  sub_100013E54(&v11, &v10, &qword_1004ACEA0, &unk_1003FA400);
  sub_100013F2C(v16, &qword_1004ACEA0, &unk_1003FA400);
  v7 = v11;
  *(a2 + 168) = v12;
  v8 = v14;
  *(a2 + 184) = v13;
  *(a2 + 200) = v8;
  result = *&v15;
  *(a2 + 216) = v15;
  *(a2 + 152) = v7;
  return result;
}

double sub_100359420@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  *a2 = v2;
  a2[1] = v3;

  return result;
}

uint64_t sub_10035942C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 64) = v4;
  *(a2 + 72) = v3;
  return result;
}

double sub_100359470@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 160);
  v2 = *(a1 + 168);
  v4 = *(a1 + 176);
  v5 = *(a1 + 184);
  v6 = *(a1 + 192);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = *(a1 + 200);
  return sub_1002592E0(v3, v2, v4, v5);
}

double sub_10035949C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;

  return result;
}

uint64_t sub_1003594A8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1003594EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t Globals.$USRAfterSetup.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 72);

  return v4;
}

uint64_t Globals.$USRAfterSetup.setter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = a3 >> 8;

  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3;
  *(v3 + 89) = v7;
  *(v3 + 90) = BYTE2(a3) & 1;
  return result;
}

uint64_t Globals.$retainCachedCryptexes.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);

  return v4;
}

uint64_t Global.lock(to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(v5 - 8);
  __chkstk_darwin(v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    result = (*(v7 + 8))(v10, v6);
  }

  else
  {
    v15 = *(v11 + 32);
    v15(v13, v10, v5);
    v16 = *(a2 + 52);
    (*(v7 + 8))(v2 + v16, v6);
    v15((v2 + v16), v13, v5);
    result = (*(v11 + 56))(v2 + v16, 0, 1, v5);
  }

  *(v2 + *(a2 + 56)) = 0;
  return result;
}

uint64_t Globals.$retainCachedCryptexes.setter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = a3 >> 8;

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  *(v3 + 41) = v7;
  *(v3 + 42) = BYTE2(a3) & 1;
  return result;
}

uint64_t Global.set(from:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v4 = *(a3 + 24);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v17 - v11;
  v13 = *(v4 - 8);
  __chkstk_darwin(v10);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v3;
  swift_getAtKeyPath();
  if ((*(v13 + 48))(v12, 1, v4) == 1)
  {
    return (*(v6 + 8))(v12, v5);
  }

  (*(v13 + 32))(v15, v12, v4);
  (*(v13 + 16))(v9, v15, v4);
  (*(v13 + 56))(v9, 0, 1, v4);
  Global.set(_:index:)(v9, v18, v19);
  (*(v6 + 8))(v9, v5);
  return (*(v13 + 8))(v15, v4);
}

uint64_t Globals.$rebootAfterSetup.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;

  return v4;
}

uint64_t Globals.$rebootAfterSetup.setter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = a3 >> 8;

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  *(v3 + 17) = v7;
  *(v3 + 18) = BYTE2(a3) & 1;
  return result;
}

uint64_t Globals.$lockCryptexes.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);

  return v4;
}

uint64_t Globals.$lockCryptexes.setter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = a3 >> 8;

  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3 & 1;
  *(v3 + 65) = v7;
  *(v3 + 66) = BYTE2(a3) & 1;
  return result;
}

uint64_t Globals.$secureConfigParameters.getter@<X0>(uint64_t a3@<X8>)
{
  v4 = *(v3 + 216);
  v5 = *(v3 + 224);
  v6 = *(v3 + 232);
  v7 = *(v3 + 240);
  *a3 = *(v3 + 208);
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;

  return sub_1001C8518(v6, v8, v9, v10);
}

__n128 Globals.$secureConfigParameters.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u8[0];
  v5 = v1[14].n128_i64[1];

  sub_1001C855C(v5);
  result = v7;
  v1[13] = v7;
  v1[14].n128_u64[0] = v2;
  v1[14].n128_u64[1] = v3;
  v1[15].n128_u8[0] = v4;
  return result;
}

uint64_t Globals.USRAfterSetup.getter()
{
  if (*(v0 + 89) == 5)
  {
    return *(v0 + 88);
  }

  else
  {
    return *(v0 + 89);
  }
}

uint64_t Global.set(_:index:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v49 = a2;
  v4 = *(a3 + 24);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v51 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = __chkstk_darwin(v9);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v47 = &v43 - v15;
  v16 = __chkstk_darwin(v14);
  v48 = &v43 - v17;
  __chkstk_darwin(v16);
  v19 = &v43 - v18;
  v20 = a1;
  v22 = v21;
  v50 = *(v6 + 16);
  v50(v11, v20, v5);
  v23 = *(v22 + 48);
  v55 = v4;
  if (v23(v11, 1, v4) == 1)
  {
    return (*(v6 + 8))(v11, v5);
  }

  v45 = *(v22 + 32);
  v45(v19, v11, v55);
  v25 = v52;
  if (*(v52 + *(v53 + 56)) != 1)
  {
    return (*(v22 + 8))(v19, v55);
  }

  v43 = v22;
  v44 = v19;
  v26 = *(v53 + 52);
  v27 = v51;
  v50(v51, v52 + v26, v5);
  if (v23(v27, 1, v55) == 1)
  {
    v28 = *(v6 + 8);
    v28(v27, v5);
    *v25 = v49;
    v28(v25 + v26, v5);
    v29 = v55;
    v45(v25 + v26, v44, v55);
    return (*(v43 + 56))(v25 + v26, 0, 1, v29);
  }

  else
  {
    v30 = v48;
    v45(v48, v27, v55);
    v31 = *(v53 + 32);
    v32 = v44;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v33 = *(v43 + 8);
      v34 = v55;
      v33(v30, v55);
      return (v33)(v32, v34);
    }

    else
    {
      v54 = *v25;
      v35 = v43;
      v36 = *(v43 + 16);
      v37 = v55;
      v36(v47, v30, v55);
      v38 = v46;
      v36(v46, v32, v37);
      v39 = v25[1];
      v40 = *(v53 + 16);
      type metadata accessor for Global.Conflict(0, v40, v37, v31);
      swift_getWitnessTable();
      swift_allocError();
      Global.Conflict.init(firstIndex:firstValue:currentIndex:conflict:keyPath:)(v54, v47, v49, v38, v39, v40, v37, v31, v41);
      swift_willThrow();
      v42 = *(v35 + 8);

      v42(v48, v37);
      return (v42)(v32, v37);
    }
  }
}

uint64_t Globals.cryptexCacheInvalidationId.getter()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v1;
  if (v2 == 1)
  {
    v3 = v0[14];
  }

  sub_10028ECC0(v1, v2);
  return v3;
}

uint64_t Globals.retainCachedCryptexes.getter()
{
  v1 = *(v0 + 40);
  if (*(v0 + 41) != 2)
  {
    v1 = *(v0 + 41);
  }

  return v1 & 1;
}

uint64_t Globals.secureConfigParameters.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(v4 + 232);
  v7 = v6;
  if ((~v6 & 0xF000000000000007) == 0)
  {
    v7 = *(v4 + 224);
  }

  *a4 = v7;

  return sub_1001C8518(v6, a1, a2, a3);
}

uint64_t Globals.configSecurityPolicy.getter()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v1;
  if (v2 == 1)
  {
    v3 = v0[21];
  }

  sub_10028ECC0(v1, v2);
  return v3;
}

uint64_t Globals.willLockCryptexes.getter()
{
  v1 = v0[88];
  if (v0[89] != 5)
  {
    v1 = v0[89];
  }

  if (v1 < 2)
  {
    return 1;
  }

  v3 = v0[65];
  if (v3 == 2)
  {
    LOBYTE(v3) = v0[64];
  }

  return v3 & 1;
}

uint64_t Globals.rebootAfterSetup.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 17) != 2)
  {
    v1 = *(v0 + 17);
  }

  return v1 & 1;
}

BOOL Global.isSet.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, v1 + *(a1 + 52), v4);
  v8 = (*(*(v3 - 8) + 48))(v7, 1, v3) != 1;
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t Globals.willUserspaceReboot.getter()
{
  v1 = *(v0 + 88);
  if (*(v0 + 89) != 5)
  {
    v1 = *(v0 + 89);
  }

  return (v1 < 5u) & (0x13u >> v1);
}

uint64_t Globals.lockCryptexes.getter()
{
  v1 = *(v0 + 64);
  if (*(v0 + 65) != 2)
  {
    v1 = *(v0 + 65);
  }

  return v1 & 1;
}

BOOL Globals.bootingIntoREM.getter()
{
  v1 = *(v0 + 88);
  if (*(v0 + 89) != 5)
  {
    v1 = *(v0 + 89);
  }

  return v1 < 2;
}

uint64_t Global.Conflict.keyPath.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);

  *(v2 + v4) = a1;
  return result;
}

uint64_t Global.Conflict.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(29);
  v1._countAndFlagsBits = 0x7463696C666E6F43;
  v1._object = 0xED00002720746120;
  String.append(_:)(v1);
  v2._countAndFlagsBits = AnyKeyPath.debugDescription.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 656423463;
  v3._object = 0xE400000000000000;
  String.append(_:)(v3);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4._countAndFlagsBits = 0x203D212027;
  v4._object = 0xE500000000000000;
  String.append(_:)(v4);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v5._countAndFlagsBits = 46;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0;
}

uint64_t Global.Conflict.init(firstIndex:firstValue:currentIndex:conflict:keyPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  v15 = type metadata accessor for Global.Conflict(0, a6, a7, a8);
  v16 = *(*(a7 - 8) + 32);
  v16(&a9[v15[11]], a2, a7);
  *&a9[v15[12]] = a3;
  result = (v16)(&a9[v15[13]], a4, a7);
  *&a9[v15[14]] = a5;
  return result;
}

uint64_t Global.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Global.value.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10035AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Global(0, *(a3 + a4 - 24), *(a3 + a4 - 16), *(a3 + a4 - 8));
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return PathCoded.projectedValue.setter(v7, v5);
}

void (*Global.projectedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v3;
  v8 = *(a2 - 8);
  v9 = v8;
  v6[2] = v8;
  v6[3] = v8;
  v10 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  (*(v9 + 16))();
  return sub_1001BED7C;
}

uint64_t Global.init(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = -1;
  v10 = type metadata accessor for Global(0, a3, a4, a5);
  v14 = *(a4 - 8);
  (*(v14 + 56))(&a6[v10[13]], 1, 1, a4);
  a6[v10[14]] = 1;
  *(a6 + 1) = a2;
  v11 = *(v14 + 32);
  v12 = &a6[v10[12]];

  return v11(v12, a1, a4);
}

uint64_t Global.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, v2 + *(a1 + 52), v6);
  v10 = *(v5 - 8);
  v11 = *(v10 + 48);
  if (v11(v9, 1, v5) != 1)
  {
    return (*(v10 + 32))(a2, v9, v5);
  }

  (*(v10 + 16))(a2, v2 + *(a1 + 48), v5);
  result = (v11)(v9, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_10035AF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  __chkstk_darwin(a1);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7);
  v10 = type metadata accessor for Global(0, v4, v5, v6);
  return Global.wrappedValue.setter(v8, v10);
}

uint64_t Global.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + *(a2 + 56)) == 1)
  {
    v3 = *(a2 + 52);
    v4 = *(a2 + 24);
    v6 = type metadata accessor for Optional();
    (*(*(v6 - 8) + 8))(v2 + v3, v6);
    v10 = *(v4 - 8);
    (*(v10 + 32))(v2 + v3, a1, v4);
    v7 = *(v10 + 56);

    return v7(v2 + v3, 0, 1, v4);
  }

  else
  {
    v9 = *(*(*(a2 + 24) - 8) + 8);

    return v9(a1);
  }
}

void (*Global.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 24);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[5] = v10;
  Global.wrappedValue.getter(a2, v10);
  return sub_10035B2A4;
}

void sub_10035B2A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    Global.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Global.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Globals.rebootAfterSetup.setter(uint64_t result)
{
  if (*(v1 + 18) == 1)
  {
    *(v1 + 17) = result & 1;
  }

  return result;
}

uint64_t (*Globals.rebootAfterSetup.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if (*(v1 + 17) != 2)
  {
    v2 = *(v1 + 17);
  }

  *(a1 + 8) = v2 & 1;
  return sub_10035B3B8;
}

_BYTE *sub_10035B3B8(void *a1)
{
  v3 = *a1;
  result = a1 + 1;
  v2 = v3;
  if (*(v3 + 18) == 1)
  {
    *(v2 + 17) = *result;
  }

  return result;
}

uint64_t sub_10035B3D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(a1 + 18);

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 17) = v7;
  *(a2 + 18) = v8;
  return result;
}

void (*Globals.$rebootAfterSetup.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2, uint64_t a3)
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
  *(v3 + 24) = v1;
  v6 = *v1;
  v5 = v1[1];
  *(v4 + 32) = v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 17);
  v9 = *(v1 + 18);
  *v4 = v6;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 17) = v8;
  *(v4 + 18) = v9;

  return sub_10035B4DC;
}

void sub_10035B4DC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = *(*a1 + 16);
  v7 = *(*a1 + 17);
  v8 = *(*a1 + 18);
  v9 = (*a1)[3];
  if (a2)
  {

    *v9 = v5;
    *(v9 + 8) = v4;
    *(v9 + 16) = v6;
    *(v9 + 17) = v7;
    *(v9 + 18) = v8;
  }

  else
  {

    *v9 = v5;
    *(v9 + 8) = v4;
    *(v9 + 16) = v6;
    *(v9 + 17) = v7;
    *(v9 + 18) = v8;
  }

  free(v3);
}

uint64_t Globals.retainCachedCryptexes.setter(uint64_t result)
{
  if (*(v1 + 42) == 1)
  {
    *(v1 + 41) = result & 1;
  }

  return result;
}

uint64_t (*Globals.retainCachedCryptexes.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 40);
  if (*(v1 + 41) != 2)
  {
    v2 = *(v1 + 41);
  }

  *(a1 + 8) = v2 & 1;
  return sub_10035B5D8;
}

_BYTE *sub_10035B5D8(void *a1)
{
  v3 = *a1;
  result = a1 + 1;
  v2 = v3;
  if (*(v3 + 42) == 1)
  {
    *(v2 + 41) = *result;
  }

  return result;
}

uint64_t sub_10035B5F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(a1 + 18);

  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
  *(a2 + 40) = v6;
  *(a2 + 41) = v7;
  *(a2 + 42) = v8;
  return result;
}

void (*Globals.$retainCachedCryptexes.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2, uint64_t a3)
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
  *(v3 + 24) = v1;
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  *(v4 + 32) = v5;
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = *(v1 + 42);
  *v4 = v6;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 17) = v8;
  *(v4 + 18) = v9;

  return sub_10035B6FC;
}

void sub_10035B6FC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = *(*a1 + 16);
  v7 = *(*a1 + 17);
  v8 = *(*a1 + 18);
  v9 = (*a1)[3];
  if (a2)
  {

    *(v9 + 24) = v5;
    *(v9 + 32) = v4;
    *(v9 + 40) = v6;
    *(v9 + 41) = v7;
    *(v9 + 42) = v8;
  }

  else
  {

    *(v9 + 24) = v5;
    *(v9 + 32) = v4;
    *(v9 + 40) = v6;
    *(v9 + 41) = v7;
    *(v9 + 42) = v8;
  }

  free(v3);
}

uint64_t Globals.lockCryptexes.setter(uint64_t result)
{
  if (*(v1 + 66) == 1)
  {
    *(v1 + 65) = result & 1;
  }

  return result;
}

uint64_t (*Globals.lockCryptexes.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 64);
  if (*(v1 + 65) != 2)
  {
    v2 = *(v1 + 65);
  }

  *(a1 + 8) = v2 & 1;
  return sub_10035B7F8;
}

_BYTE *sub_10035B7F8(void *a1)
{
  v3 = *a1;
  result = a1 + 1;
  v2 = v3;
  if (*(v3 + 66) == 1)
  {
    *(v2 + 65) = *result;
  }

  return result;
}

uint64_t sub_10035B814(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(a1 + 18);

  *(a2 + 48) = v5;
  *(a2 + 56) = v4;
  *(a2 + 64) = v6;
  *(a2 + 65) = v7;
  *(a2 + 66) = v8;
  return result;
}

void (*Globals.$lockCryptexes.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2, uint64_t a3)
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
  *(v3 + 24) = v1;
  v6 = *(v1 + 48);
  v5 = *(v1 + 56);
  *(v4 + 32) = v5;
  v7 = *(v1 + 64);
  v8 = *(v1 + 65);
  v9 = *(v1 + 66);
  *v4 = v6;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 17) = v8;
  *(v4 + 18) = v9;

  return sub_10035B91C;
}

void sub_10035B91C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = *(*a1 + 16);
  v7 = *(*a1 + 17);
  v8 = *(*a1 + 18);
  v9 = (*a1)[3];
  if (a2)
  {

    *(v9 + 48) = v5;
    *(v9 + 56) = v4;
    *(v9 + 64) = v6;
    *(v9 + 65) = v7;
    *(v9 + 66) = v8;
  }

  else
  {

    *(v9 + 48) = v5;
    *(v9 + 56) = v4;
    *(v9 + 64) = v6;
    *(v9 + 65) = v7;
    *(v9 + 66) = v8;
  }

  free(v3);
}

uint64_t Globals.USRAfterSetup.setter(uint64_t result)
{
  if (*(v1 + 90) == 1)
  {
    *(v1 + 89) = result;
  }

  return result;
}

uint64_t (*Globals.USRAfterSetup.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 88);
  if (*(v1 + 89) != 5)
  {
    v2 = *(v1 + 89);
  }

  *(a1 + 8) = v2;
  return sub_10035BA10;
}

_BYTE *sub_10035BA10(void *a1)
{
  v3 = *a1;
  result = a1 + 1;
  v2 = v3;
  if (*(v3 + 90) == 1)
  {
    *(v2 + 89) = *result;
  }

  return result;
}

uint64_t sub_10035BA2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 8);
  v7 = *(a1 + 18);

  *(a2 + 72) = v5;
  *(a2 + 80) = v4;
  *(a2 + 88) = v6;
  *(a2 + 90) = v7;
  return result;
}

void (*Globals.$USRAfterSetup.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2, uint64_t a3)
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
  *(v3 + 24) = v1;
  v6 = *(v1 + 72);
  v5 = *(v1 + 80);
  *(v4 + 32) = v5;
  v7 = *(v1 + 88);
  v8 = *(v1 + 90);
  *v4 = v6;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 18) = v8;

  return sub_10035BB1C;
}

void sub_10035BB1C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = *(*a1 + 16);
  v7 = *(*a1 + 17);
  v8 = *(*a1 + 18);
  v9 = (*a1)[3];
  if (a2)
  {

    *(v9 + 72) = v5;
    *(v9 + 80) = v4;
    *(v9 + 88) = v6;
    *(v9 + 89) = v7;
    *(v9 + 90) = v8;
  }

  else
  {

    *(v9 + 72) = v5;
    *(v9 + 80) = v4;
    *(v9 + 88) = v6;
    *(v9 + 89) = v7;
    *(v9 + 90) = v8;
  }

  free(v3);
}

double sub_10035BBC4@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[16];
  v5 = a1[17];
  v6 = v4;
  v7 = v5;
  if (v5 == 1)
  {
    v6 = a1[14];
  }

  *a2 = v6;
  a2[1] = v7;

  return sub_10028ECC0(v4, v5);
}

uint64_t *sub_10035BC28(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 144) == 1)
  {
    v3 = *result;
    v2 = result[1];
    v4 = *(a2 + 128);
    v5 = *(a2 + 136);

    result = sub_10028ECC4(v4, v5);
    *(a2 + 128) = v3;
    *(a2 + 136) = v2;
  }

  return result;
}

uint64_t Globals.cryptexCacheInvalidationId.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 144) == 1)
  {
    result = sub_10028ECC4(*(v2 + 128), *(v2 + 136));
    *(v2 + 128) = a1;
    *(v2 + 136) = a2;
  }

  else
  {
  }

  return result;
}

void (*Globals.cryptexCacheInvalidationId.modify(uint64_t **a1))(uint64_t **a1, char a2)
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
  v3[2] = v1;
  v5 = v1[16];
  v3[3] = v5;
  v6 = v1[17];
  v3[4] = v6;
  v7 = v5;
  v8 = v6;
  if (v6 == 1)
  {
    v7 = v1[14];
  }

  *v4 = v7;
  v4[1] = v8;
  sub_10028ECC0(v5, v6);
  return sub_10035BDA0;
}

void sub_10035BDA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[2];
  if (a2)
  {
    if (*(v3 + 144) == 1)
    {
      v5 = v2[3];
      v4 = v2[4];
      v7 = *v2;
      v6 = v2[1];

      sub_10028ECC4(v5, v4);
      *(v3 + 128) = v7;
      *(v3 + 136) = v6;
    }
  }

  else
  {
    v8 = v2[1];
    if (*(v3 + 144) == 1)
    {
      v9 = *v2;
      sub_10028ECC4(v2[3], v2[4]);
      *(v3 + 128) = v9;
      *(v3 + 136) = v8;
      goto LABEL_8;
    }
  }

LABEL_8:

  free(v2);
}

double sub_10035BE4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 104);
  v4 = *(a1 + 112);
  v3 = *(a1 + 120);
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  v7 = *(a1 + 144);
  *a2 = *(a1 + 96);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;

  return sub_10028ECC0(v5, v6);
}

uint64_t sub_10035BEB8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v12 = a1[2];
  v6 = a1[4];
  v7 = a1[5];
  v11 = *(a1 + 48);
  v8 = *(a2 + 128);
  v9 = *(a2 + 136);

  sub_10028ECC0(v6, v7);

  result = sub_10028ECC4(v8, v9);
  *(a2 + 96) = v4;
  *(a2 + 104) = v3;
  *(a2 + 112) = v12;
  *(a2 + 120) = v5;
  *(a2 + 128) = v6;
  *(a2 + 136) = v7;
  *(a2 + 144) = v11;
  return result;
}

void (*Globals.$cryptexCacheInvalidationId.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + 104);
  v7 = *(v1 + 112);
  v6 = *(v1 + 120);
  v8 = *(v1 + 128);
  v9 = *(v1 + 136);
  v10 = *(v1 + 144);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  *(v4 + 48) = v10;

  sub_10028ECC0(v8, v9);
  return sub_10035C024;
}

void sub_10035C024(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[1];
  v5 = (*a1)[3];
  v12 = **a1;
  v13 = (*a1)[2];
  v7 = (*a1)[4];
  v6 = (*a1)[5];
  v14 = *(*a1 + 48);
  v8 = *(v3 + 128);
  v9 = *(v3 + 136);
  if (a2)
  {

    sub_10028ECC0(v7, v6);

    sub_10028ECC4(v8, v9);
    *(v3 + 96) = v12;
    *(v3 + 104) = v4;
    *(v3 + 112) = v13;
    *(v3 + 120) = v5;
    *(v3 + 128) = v7;
    *(v3 + 136) = v6;
    *(v3 + 144) = v14;
    v10 = v2[4];
    v11 = v2[5];

    sub_10028ECC4(v10, v11);
  }

  else
  {

    sub_10028ECC4(v8, v9);
    *(v3 + 96) = v12;
    *(v3 + 104) = v4;
    *(v3 + 112) = v13;
    *(v3 + 120) = v5;
    *(v3 + 128) = v7;
    *(v3 + 136) = v6;
    *(v3 + 144) = v14;
  }

  free(v2);
}

double sub_10035C158@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[23];
  v5 = a1[24];
  v6 = v4;
  v7 = v5;
  if (v5 == 1)
  {
    v6 = a1[21];
  }

  *a2 = v6;
  a2[1] = v7;

  return sub_10028ECC0(v4, v5);
}

uint64_t *sub_10035C1BC(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 200) == 1)
  {
    v3 = *result;
    v2 = result[1];
    v4 = *(a2 + 184);
    v5 = *(a2 + 192);

    result = sub_10028ECC4(v4, v5);
    *(a2 + 184) = v3;
    *(a2 + 192) = v2;
  }

  return result;
}

uint64_t Globals.configSecurityPolicy.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 200) == 1)
  {
    result = sub_10028ECC4(*(v2 + 184), *(v2 + 192));
    *(v2 + 184) = a1;
    *(v2 + 192) = a2;
  }

  else
  {
  }

  return result;
}

void (*Globals.configSecurityPolicy.modify(uint64_t **a1))(uint64_t **a1, char a2)
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
  v3[2] = v1;
  v5 = v1[23];
  v3[3] = v5;
  v6 = v1[24];
  v3[4] = v6;
  v7 = v5;
  v8 = v6;
  if (v6 == 1)
  {
    v7 = v1[21];
  }

  *v4 = v7;
  v4[1] = v8;
  sub_10028ECC0(v5, v6);
  return sub_10035C334;
}

void sub_10035C334(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[2];
  if (a2)
  {
    if (*(v3 + 200) == 1)
    {
      v5 = v2[3];
      v4 = v2[4];
      v7 = *v2;
      v6 = v2[1];

      sub_10028ECC4(v5, v4);
      *(v3 + 184) = v7;
      *(v3 + 192) = v6;
    }
  }

  else
  {
    v8 = v2[1];
    if (*(v3 + 200) == 1)
    {
      v9 = *v2;
      sub_10028ECC4(v2[3], v2[4]);
      *(v3 + 184) = v9;
      *(v3 + 192) = v8;
      goto LABEL_8;
    }
  }

LABEL_8:

  free(v2);
}

double sub_10035C3E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 160);
  v4 = *(a1 + 168);
  v3 = *(a1 + 176);
  v5 = *(a1 + 184);
  v6 = *(a1 + 192);
  v7 = *(a1 + 200);
  *a2 = *(a1 + 152);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;

  return sub_10028ECC0(v5, v6);
}

uint64_t sub_10035C44C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v12 = a1[2];
  v6 = a1[4];
  v7 = a1[5];
  v11 = *(a1 + 48);
  v8 = *(a2 + 184);
  v9 = *(a2 + 192);

  sub_10028ECC0(v6, v7);

  result = sub_10028ECC4(v8, v9);
  *(a2 + 152) = v4;
  *(a2 + 160) = v3;
  *(a2 + 168) = v12;
  *(a2 + 176) = v5;
  *(a2 + 184) = v6;
  *(a2 + 192) = v7;
  *(a2 + 200) = v11;
  return result;
}

void (*Globals.$configSecurityPolicy.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + 160);
  v7 = *(v1 + 168);
  v6 = *(v1 + 176);
  v8 = *(v1 + 184);
  v9 = *(v1 + 192);
  v10 = *(v1 + 200);
  *v4 = *(v1 + 152);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  *(v4 + 48) = v10;

  sub_10028ECC0(v8, v9);
  return sub_10035C5B8;
}

void sub_10035C5B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[1];
  v5 = (*a1)[3];
  v12 = **a1;
  v13 = (*a1)[2];
  v7 = (*a1)[4];
  v6 = (*a1)[5];
  v14 = *(*a1 + 48);
  v8 = *(v3 + 184);
  v9 = *(v3 + 192);
  if (a2)
  {

    sub_10028ECC0(v7, v6);

    sub_10028ECC4(v8, v9);
    *(v3 + 152) = v12;
    *(v3 + 160) = v4;
    *(v3 + 168) = v13;
    *(v3 + 176) = v5;
    *(v3 + 184) = v7;
    *(v3 + 192) = v6;
    *(v3 + 200) = v14;
    v10 = v2[4];
    v11 = v2[5];

    sub_10028ECC4(v10, v11);
  }

  else
  {

    sub_10028ECC4(v8, v9);
    *(v3 + 152) = v12;
    *(v3 + 160) = v4;
    *(v3 + 168) = v13;
    *(v3 + 176) = v5;
    *(v3 + 184) = v7;
    *(v3 + 192) = v6;
    *(v3 + 200) = v14;
  }

  free(v2);
}

uint64_t sub_10035C6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *(a1 + 232);
  v7 = v6;
  if ((~v6 & 0xF000000000000007) == 0)
  {
    v7 = *(a1 + 224);
  }

  *a5 = v7;

  return sub_1001C8518(v6, a2, a3, a4);
}

uint64_t *sub_10035C74C(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 240) == 1)
  {
    v3 = *result;
    v4 = *(a2 + 232);

    result = sub_1001C855C(v4);
    *(a2 + 232) = v3;
  }

  return result;
}

uint64_t Globals.secureConfigParameters.setter(uint64_t *a1)
{
  v2 = *a1;
  if (*(v1 + 240) == 1)
  {
    result = sub_1001C855C(*(v1 + 232));
    *(v1 + 232) = v2;
  }

  else
  {
  }

  return result;
}

uint64_t (*Globals.secureConfigParameters.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = v4;
  v6 = *(v4 + 232);
  v7 = v6;
  if ((~v6 & 0xF000000000000007) == 0)
  {
    v7 = *(v4 + 224);
  }

  *a1 = v7;
  sub_1001C8518(v6, a2, a3, a4);
  return sub_10035C86C;
}

uint64_t sub_10035C86C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;
    if (*(v3 + 240))
    {
      v5 = *(v3 + 232);

      sub_1001C855C(v5);
      *(v3 + 232) = v4;
    }
  }

  else
  {
    v6 = *a1;
    if (*(v3 + 240) == 1)
    {
      result = sub_1001C855C(*(v3 + 232));
      *(v3 + 232) = v6;
      return result;
    }
  }
}

uint64_t sub_10035C910@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 216);
  v5 = *(a1 + 224);
  v6 = *(a1 + 232);
  v7 = *(a1 + 240);
  *a4 = *(a1 + 208);
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 24) = v6;
  *(a4 + 32) = v7;

  return sub_1001C8518(v6, v8, v9, v10);
}

uint64_t sub_10035C968(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *(a1 + 32);
  v9 = *(a2 + 232);

  sub_1001C8518(v6, v10, v11, v12);

  result = sub_1001C855C(v9);
  *(a2 + 208) = v5;
  *(a2 + 216) = v4;
  *(a2 + 224) = v7;
  *(a2 + 232) = v6;
  *(a2 + 240) = v8;
  return result;
}

void (*Globals.$secureConfigParameters.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  v4 = *(v1 + 216);
  v5 = *(v1 + 224);
  v6 = *(v1 + 232);
  v7 = *(v1 + 240);
  *v3 = *(v1 + 208);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  *(v3 + 32) = v7;

  sub_1001C8518(v6, v8, v9, v10);
  return sub_10035CAA0;
}

void sub_10035CAA0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v6 = **a1;
  v5 = (*a1)[1];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = *(*a1 + 32);
  v10 = *(v4 + 232);
  if (a2)
  {

    sub_1001C8518(v7, v11, v12, v13);

    sub_1001C855C(v10);
    *(v4 + 208) = v6;
    *(v4 + 216) = v5;
    *(v4 + 224) = v8;
    *(v4 + 232) = v7;
    *(v4 + 240) = v9;
    v14 = v3[3];

    sub_1001C855C(v14);
  }

  else
  {

    sub_1001C855C(v10);
    *(v4 + 208) = v6;
    *(v4 + 216) = v5;
    *(v4 + 224) = v8;
    *(v4 + 232) = v7;
    *(v4 + 240) = v9;
  }

  free(v3);
}

unint64_t default argument 6 of Globals.init(rebootAfterSetup:retainCachedCryptexes:lockCryptexes:USRAfterSetup:cryptexCacheInvalidationId:configSecurityPolicy:secureConfigParameters:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_100186EE8(_swiftEmptyArrayStorage);
  *(v2 + 16) = result;
  *a1 = v2 | 0xA000000000000000;
  return result;
}

uint64_t Globals.init(rebootAfterSetup:retainCachedCryptexes:lockCryptexes:USRAfterSetup:cryptexCacheInvalidationId:configSecurityPolicy:secureConfigParameters:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v26 = *a10;
  KeyPath = swift_getKeyPath();
  *a9 = -1;
  *(a9 + 8) = KeyPath;
  *(a9 + 16) = a1;
  *(a9 + 17) = 258;
  v20 = swift_getKeyPath();
  *(a9 + 24) = -1;
  *(a9 + 32) = v20;
  *(a9 + 40) = a2;
  *(a9 + 41) = 258;
  v21 = swift_getKeyPath();
  *(a9 + 48) = -1;
  *(a9 + 56) = v21;
  *(a9 + 64) = a3;
  *(a9 + 65) = 258;
  v22 = swift_getKeyPath();
  *(a9 + 72) = -1;
  *(a9 + 80) = v22;
  *(a9 + 88) = a4;
  *(a9 + 89) = 261;
  v23 = swift_getKeyPath();
  *(a9 + 96) = -1;
  *(a9 + 104) = v23;
  *(a9 + 112) = a5;
  *(a9 + 120) = a6;
  *(a9 + 128) = xmmword_1003772E0;
  *(a9 + 144) = 1;
  v24 = swift_getKeyPath();
  *(a9 + 152) = -1;
  *(a9 + 160) = v24;
  *(a9 + 168) = a7;
  *(a9 + 176) = a8;
  *(a9 + 184) = xmmword_1003772E0;
  *(a9 + 200) = 1;
  result = swift_getKeyPath();
  *(a9 + 208) = -1;
  *(a9 + 216) = result;
  *(a9 + 224) = v26;
  *(a9 + 232) = 0xF000000000000007;
  *(a9 + 240) = 1;
  return result;
}

uint64_t Globals.description.getter()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 41);
  v3 = *(v0 + 65);
  v4 = *(v0 + 89);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 192);
  v31 = *(v0 + 232);
  if (v1 == 2)
  {
    if (v2 == 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _StringGuts.grow(_:)(23);

    if (v1)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v1)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = v15;
    String.append(_:)(*&v14);

    v17._countAndFlagsBits = 0xD000000000000015;
    v17._object = 0x8000000100446610;
    String.append(_:)(v17);

    if (v2 == 2)
    {
LABEL_3:
      if (v3 == 2)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  _StringGuts.grow(_:)(28);

  if (v2)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v2)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v20 = v19;
  String.append(_:)(*&v18);

  v21._countAndFlagsBits = 0xD00000000000001ALL;
  v21._object = 0x80000001004465F0;
  String.append(_:)(v21);

  if (v3 == 2)
  {
LABEL_4:
    if (v4 == 5)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_25:
  _StringGuts.grow(_:)(20);

  if (v3)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v3)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  v24 = v23;
  String.append(_:)(*&v22);

  v25._countAndFlagsBits = 0xD000000000000012;
  v25._object = 0x80000001004465D0;
  String.append(_:)(v25);

  if (v4 == 5)
  {
LABEL_5:
    if (v6 == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  _StringGuts.grow(_:)(20);
  v26._object = 0x80000001004465B0;
  v26._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v26);
  _print_unlocked<A, B>(_:_:)();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  String.append(_:)(v27);

  if (v6 == 1)
  {
LABEL_6:
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_33:
  _StringGuts.grow(_:)(33);

  if (v6)
  {
    v28 = v6;
  }

  else
  {
    sub_10028ECC4(v5, 0);
    v28 = 0xE700000000000000;
    v5 = 0x74655320746F4ELL;
  }

  v29._countAndFlagsBits = v5;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0xD00000000000001FLL;
  v30._object = 0x8000000100446590;
  String.append(_:)(v30);

  if (v7 == 1)
  {
    goto LABEL_8;
  }

LABEL_7:
  _StringGuts.grow(_:)(34);

  sub_1000039E8(&qword_1004A7330, &qword_1003762A0);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0xD000000000000020;
  v9._object = 0x8000000100446560;
  String.append(_:)(v9);

LABEL_8:
  if ((~v31 & 0xF000000000000007) != 0)
  {
    _StringGuts.grow(_:)(49);

    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0xD00000000000002FLL;
    v11._object = 0x8000000100446530;
    String.append(_:)(v11);
  }

  v12._countAndFlagsBits = 32010;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  return 123;
}

uint64_t sub_10035D1EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Config(0) + 80) + 8);
  *a2 = v3;

  return sub_1001C8518(v3, v4, v5, v6);
}

uint64_t sub_10035D23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(qword_1004B1630, &qword_10040A970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 sub_10035D304(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10035D390@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 16);
  if (*(result + 17) != 2)
  {
    v2 = *(result + 17);
  }

  *a2 = v2 & 1;
  return result;
}

_BYTE *sub_10035D3AC(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 18) == 1)
  {
    *(a2 + 17) = *result;
  }

  return result;
}

uint64_t sub_10035D3C4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(a1 + 18);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 17) = v6;
  *(a4 + 18) = v7;
}

uint64_t sub_10035D3F0@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 40);
  if (*(result + 41) != 2)
  {
    v2 = *(result + 41);
  }

  *a2 = v2 & 1;
  return result;
}

_BYTE *sub_10035D40C(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 42) == 1)
  {
    *(a2 + 41) = *result;
  }

  return result;
}

uint64_t sub_10035D424@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 42);
  *a4 = *(a1 + 24);
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 17) = v6;
  *(a4 + 18) = v7;
}

uint64_t sub_10035D450@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 64);
  if (*(result + 65) != 2)
  {
    v2 = *(result + 65);
  }

  *a2 = v2 & 1;
  return result;
}

_BYTE *sub_10035D46C(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 66) == 1)
  {
    *(a2 + 65) = *result;
  }

  return result;
}

uint64_t sub_10035D484@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 65);
  v7 = *(a1 + 66);
  *a4 = *(a1 + 48);
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 17) = v6;
  *(a4 + 18) = v7;
}

uint64_t sub_10035D4B0@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 88);
  if (*(result + 89) != 5)
  {
    v2 = *(result + 89);
  }

  *a2 = v2;
  return result;
}

_BYTE *sub_10035D4C8(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 90) == 1)
  {
    *(a2 + 89) = *result;
  }

  return result;
}

uint64_t sub_10035D4E0@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 90);
  *a4 = *(a1 + 72);
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 18) = v6;
}

uint64_t sub_10035D534(uint64_t a1)
{
  v1 = type metadata accessor for Optional();
  v3 = v2;
  result = type metadata accessor for KeyPath();
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      if (v3 > 0x3F)
      {
        return v1;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10035D620(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_29;
  }

  v8 = *(*(*(a3 + 24) - 8) + 64);
  v11 = v9 + v8 + ((v8 + v7 + ((v7 + 16) & ~v7)) & ~v7);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 < 2)
    {
LABEL_29:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v17 + v7 + 8) & ~v7);
      }

      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_29;
  }

LABEL_18:
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

  return v6 + (v11 | v16) + 1;
}

void sub_10035D7C8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v11 = 1;
  if (!v7)
  {
    v11 = 2;
  }

  v10 = *(*(*(a4 + 24) - 8) + 64);
  v12 = v11 + v10 + ((v10 + v9 + ((v9 + 16) & ~v9)) & ~v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v12 <= 3)
    {
      v18 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
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

  if (v8 < a2)
  {
    v16 = ~v8 + a2;
    if (v12 < 4)
    {
      v17 = (v16 >> (8 * v12)) + 1;
      if (v12)
      {
        v20 = v16 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_49:
              if (v15 == 2)
              {
                *&a1[v12] = v17;
              }

              else
              {
                *&a1[v12] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v15)
    {
      a1[v12] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v12] = 0;
  }

  else if (v15)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v23 = *(v6 + 56);

    v23((v21 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *v21 = v22;
  }
}

uint64_t sub_10035DA44(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Optional();
    result = type metadata accessor for KeyPath();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10035DAFC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 + 8;
  v9 = *(*(*(a3 + 24) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + ((v8 + ((v9 + (v8 & ~v6)) & 0xFFFFFFFFFFFFFFF8)) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_28:
    v19 = (a1 + v6 + 8) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v19);
    }

    v20 = *((v9 + ((v8 + ((v9 + v19) & 0xFFFFFFFFFFFFFFF8)) & ~v6)) & 0xFFFFFFFFFFFFFFF8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

_BYTE *sub_10035DC74(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 24) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 8 + ((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 8 + ((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8)) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 8] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = ((v9 + ((v8 + 8 + (&result[v9] & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 8 + ((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8)) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 8 + ((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8)) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 8 + ((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t sub_10035DE70(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_10035DE94(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_10035DEE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
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

uint64_t sub_10035DF28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_10035DFC8(unsigned int a1, _DWORD *a2)
{
  v2 = a1 + 15;
  v3 = v2 << 31 >> 31;
  v4 = v3 == v2;
  v5 = v3 != v2;
  if (v4)
  {
    *a2 = v2 & 0xFFFFFFF8;
  }

  return !v5;
}

BOOL sub_10035DFF0(unint64_t a1, unint64_t *a2)
{
  v2 = (((a1 >= 0xFFFFFFFFFFFFFFF1) << 63) >> 63) ^ (a1 >= 0xFFFFFFFFFFFFFFF1);
  if (!v2)
  {
    *a2 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  }

  return v2 == 0;
}

void sub_10035E034()
{
  sub_100005428();
  sub_100005514();
  __chkstk_darwin(v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v0 - 96) = __stack_chk_guard;
  bzero(v68, 0x1000uLL);
  v66[0] = v68;
  v66[1] = &v69;
  v66[2] = 4096;
  if (v7 && v5)
  {
    v8 = sub_100004530();
    if (v8)
    {
      v16 = v8;
      sub_100005474(v8, v9, v10, v11, v12, v13, v14, v15, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v65, v66[0]);
      if (ccder_blob_encode_body_tl())
      {
        if (sub_10036B284(v66))
        {
          if (sub_10036B284(v66))
          {
            if (sub_10036B2E0(v66))
            {
              sub_1000053E8();
              if (ccder_blob_encode_tl())
              {
                sub_1000054A0();
                if (!sub_1000053C8(v16, 0x4Au, v67, 2u, v17, v18, v19, v20, v68, v21))
                {
                  sub_1000053E8();
                  if (ccder_blob_decode_range())
                  {
                    sub_1000054E0();
                    v25 = sub_100009638(v22, v23, v24);
                    if (v25)
                    {
                      if (v3)
                      {
                        v33 = sub_100005484(v25, v26, v27, v28, v29, v30, v31, v32, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v68);
                        sub_10036B128(v33, v34, v35);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_1000053B4();
      fprintf(v36, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v37, v42, v44, v46, v48, v50, v52, ":", 180, "", "");
    }
  }

  sub_1000053F4(v68);
  sub_1000054C0();
  sub_100005410();
}

unint64_t sub_10035E234(char *a1, const void *a2, size_t a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = open_dprotected_np(a1, 1793, 4, 0, 384);
    if (v6 == -1)
    {
      v10 = __error();
      v11 = strerror(*v10);
      syslog(3, "could not create file: %s (%s)\n", v3, v11);
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = write(v6, a2, a3);
      v3 = v8 != -1;
      if (v8 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "failed to write restore bag to disk %s\n", v13);
      }

      close(v7);
    }
  }

  return v3;
}

BOOL sub_10035E308(_BOOL8 a1, void *a2, size_t *a3)
{
  bzero(&v14, 0x90uLL);
  if (a1)
  {
    if (!stat(a1, &v14))
    {
      st_size = v14.st_size;
      v7 = open(a1, 0);
      if (v7 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "could not open file: %s (%s)\n", a1, v13);
      }

      else
      {
        v8 = v7;
        v9 = calloc(st_size, 1uLL);
        a1 = v9 != 0;
        if (!v9)
        {
LABEL_7:
          close(v8);
          return a1;
        }

        v10 = v9;
        if (read(v8, v9, st_size) == st_size)
        {
          *a2 = v10;
          *a3 = st_size;
          goto LABEL_7;
        }

        close(v8);
        free(v10);
      }
    }

    return 0;
  }

  return a1;
}

uint64_t sub_10035E408(const char *a1)
{
  v1 = open_dprotected_np(a1, 0, 0, 1);
  if (v1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  v3 = fcntl(v1, 63);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return v3;
}

uint64_t sub_10035E464(uint64_t a1, uint64_t a2)
{
  result = sub_10035E408(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || result == v5)
  {
    return printf("file: %s %i\n", *(a2 + 48), result);
  }

  return result;
}

uint64_t sub_10035E4BC(const char *a1)
{
  bzero(v4, 0x400uLL);
  bzero(__str, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v4))
  {
    snprintf(__str, 0x400uLL, "%s/mobile", v4);
    sub_100004988(v4, &off_100478DE8, 36);
    if ((sub_100004804() & 1) == 0)
    {
      sub_100004988(__str, &off_1004794A8, 72);
    }
  }

  return 0;
}

uint64_t sub_10035E590(const char *a1)
{
  bzero(v3, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v3))
  {
    sub_100004988(v3, &off_1004794A8, 72);
  }

  return 0;
}

void sub_10035E618()
{
  sub_100005428();
  sub_100005514();
  __chkstk_darwin(v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_100005500(__stack_chk_guard);
  bzero(v66, 0x1000uLL);
  v62 = v66;
  v63 = &v67;
  v64 = v0;
  if (v5 && v3)
  {
    v8 = sub_100004530();
    if (v8)
    {
      v16 = v8;
      sub_100005474(v8, v9, v10, v11, v12, v13, v14, v15, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61, v62);
      if (ccder_blob_encode_body_tl())
      {
        if (sub_10036B284(&v62))
        {
          if (sub_10036B2E0(&v62))
          {
            sub_1000053E8();
            if (ccder_blob_encode_tl())
            {
              v65[0] = v7;
              v65[1] = v63;
              v65[2] = &v67 - v63;
              if (!sub_1000053C8(v16, 0x4Cu, v65, 3u, v17, v18, v19, v20, v66, &v64))
              {
                sub_1000053E8();
                v21 = ccder_blob_decode_range();
                if (v21)
                {
                  v29 = sub_100005484(v21, v22, v23, v24, v25, v26, v27, v28, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v66);
                  sub_100009638(v29, v30, v31);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_1000053B4();
      fprintf(v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v33, v38, v40, v42, v44, v46, v48, ":", 509, "", "");
    }
  }

  sub_1000053F4(v66);
  sub_1000054C0();
  sub_100005410();
}

void sub_10035E7F8()
{
  sub_100005428();
  __chkstk_darwin(v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_100005500(__stack_chk_guard);
  bzero(v30, 0x1000uLL);
  v26 = v30;
  v27 = &v31;
  v28 = v0;
  if (v7 && v5)
  {
    v8 = sub_100004530();
    if (v8)
    {
      v9 = v8;
      if (ccder_blob_encode_body_tl())
      {
        if (sub_10036B284(&v26))
        {
          if (sub_10036B2E0(&v26))
          {
            sub_1000053E8();
            if (ccder_blob_encode_tl())
            {
              v29[0] = v27;
              v29[1] = &v31 - v27;
              if (!sub_1000053C8(v9, 0x63u, v29, 2u, v10, v11, v12, v13, v30, &v28))
              {
                *&v25 = v30;
                *(&v25 + 1) = &v30[v28];
                sub_1000053E8();
                if (ccder_blob_decode_range())
                {
                  sub_1000054E0();
                  if (sub_100009638(v14, v15, v16))
                  {
                    if (v3)
                    {
                      sub_10036B128(&v25, 0, v3);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_1000053B4();
      fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 544, "", "");
    }
  }

  sub_1000053F4(v30);
  sub_100005410();
}

void sub_10035E9FC()
{
  sub_100005428();
  sub_100005514();
  __chkstk_darwin(v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  *(v0 - 96) = __stack_chk_guard;
  bzero(v68, 0x1000uLL);
  v66[0] = v68;
  v66[1] = &v69;
  v66[2] = 4096;
  if (v9 && v7 && v5 && v3)
  {
    v10 = sub_100004530();
    if (v10)
    {
      v11 = v10;
      v12 = sub_10036B284(v66);
      if (v12)
      {
        sub_100005474(v12, v13, v14, v15, v16, v17, v18, v19, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v65, v66[0]);
        if (ccder_blob_encode_body_tl())
        {
          if (sub_10036B284(v66))
          {
            if (sub_10036B284(v66))
            {
              if (sub_10036B2E0(v66))
              {
                sub_1000053E8();
                if (ccder_blob_encode_tl())
                {
                  sub_1000054A0();
                  if (!sub_1000053C8(v11, 0x4Du, v67, 2u, v20, v21, v22, v23, v68, v24))
                  {
                    sub_1000053E8();
                    v25 = ccder_blob_decode_range();
                    if (v25)
                    {
                      v33 = sub_100005484(v25, v26, v27, v28, v29, v30, v31, v32, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v68);
                      sub_100009638(v33, v34, v35);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_1000053B4();
      fprintf(v36, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v37, v42, v44, v46, v48, v50, v52, ":", 583, "", "");
    }
  }

  sub_1000053F4(v68);
  sub_1000054C0();
  sub_100005410();
}

void sub_10035EC00()
{
  sub_100005428();
  __chkstk_darwin(v1);
  sub_1000054EC();
  v3 = v2;
  v5 = v4;
  bzero(v27, 0x1000uLL);
  v23 = v27;
  v24 = v28;
  v25 = 4096;
  v6 = sub_100004530();
  if (v6)
  {
    v7 = v6;
    if (!sub_10036B284(&v23) || !sub_10036B284(&v23) || !sub_10036B284(&v23) || !sub_10036B2E0(&v23) || (sub_1000053E8(), !ccder_blob_encode_tl()) || (v26[0] = v5, v26[1] = v3, v26[2] = v24, v26[3] = &v28[-v24], !sub_1000053C8(v7, 0x54u, v26, 4u, v8, v9, v10, v11, v27, &v25)) && v25 && ((sub_1000053E8(), !ccder_blob_decode_range()) || v0 && (sub_1000054E0(), (sub_100009638(v12, v13, v14) & 1) == 0)))
    {
      sub_100005494();
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 617, "", "");
    sub_100005494();
  }

  sub_1000053F4(v27);
  sub_100005410();
}

void sub_10035EDF8()
{
  sub_100005428();
  sub_100005514();
  __chkstk_darwin(v3);
  sub_1000054EC();
  v5 = v4;
  *(v2 - 96) = __stack_chk_guard;
  bzero(v27, 0x1000uLL);
  v23 = v27;
  v24 = v28;
  v25 = 4096;
  if (v1)
  {
    v6 = sub_100004530();
    if (v6)
    {
      v7 = v6;
      if (!sub_10036B284(&v23) || !sub_10036B284(&v23) || !sub_10036B284(&v23) || !sub_10036B284(&v23) || !sub_10036B2E0(&v23) || (sub_1000053E8(), !ccder_blob_encode_tl()) || (v26[0] = v24, v26[1] = &v28[-v24], v26[2] = v5, !sub_1000053C8(v7, 0x4Bu, v26, 3u, v8, v9, v10, v11, v27, &v25)) && ((sub_1000053E8(), !ccder_blob_decode_range()) || v0 && (sub_1000054E0(), (sub_10036B128(v12, v13, v14) & 1) == 0)))
      {
        sub_100005494();
      }
    }

    else
    {
      sub_1000053B4();
      fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 654, "", "");
      sub_100005494();
    }
  }

  else
  {
    sub_100005494();
  }

  sub_1000053F4(v27);
  sub_1000054C0();
  sub_100005410();
}

uint64_t sub_10035F010(uint64_t a1, uint64_t a2)
{
  result = sub_10035E408(*(a2 + 48));
  if ((result - 7) >= 0xFFFFFFFA)
  {
    v5 = *(a2 + 96);
    v6 = *(v5 + 96);
    v7 = *(a1 + 32);
    ++*(v7 + 296 * result);
    if (*(v5 + 6) >= 2u)
    {
      ++*(v7 + 296 * result + 8);
    }

    if ((*(v5 + 116) & 0x20) != 0)
    {
      ++*(v7 + 296 * result + 4);
    }

    v8 = v7 + 296 * result;
    v10 = *(v8 + 32);
    v9 = (v8 + 32);
    *(v9 - 2) += v6;
    if (v6 > v10)
    {
      *v9 = v6;
    }

    v11 = v7 + 296 * result;
    v14 = *(v11 + 24);
    v12 = (v11 + 24);
    v13 = v14;
    if (v14)
    {
      v15 = v6 < v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      *v12 = v6;
    }

    if (v6)
    {
      v16 = v7 + 296 * result + 4 * (63 - __clz(v6));
    }

    else
    {
      v16 = v7 + 296 * result;
    }

    ++*(v16 + 40);
  }

  return result;
}

uint64_t sub_10035F11C()
{
  sub_1000054B4();
  if (!v2)
  {
    return (v0 + 6);
  }

  v3 = v2;
  input[0] = 0;
  input[1] = v1;
  input[2] = 0;
  output = 0;
  outputCnt = 1;
  v4 = sub_100004530();
  if (v4)
  {
    v0 = IOConnectCallMethod(v4, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
    if (!v0)
    {
      *v3 = output;
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v6, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v7, v8, v9, v10, v11, v12, v13, ":", 842, "", "");
  }

  return v0;
}

void sub_10035F228()
{
  sub_100005428();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v1;
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  v17 = sub_100004530();
  if (v17)
  {
    v30[0] = v16;
    v30[1] = v15;
    v30[2] = v13;
    v30[3] = v11;
    if ((!v15 || v5 && v3) && !sub_10000545C(v17, 0x36u, v30, 4u, v9, v7, v18, v19, __src, &__count))
    {
      if (v15)
      {
        v20 = calloc(__count, 1uLL);
        *v5 = v20;
        if (v20)
        {
          memcpy(v20, __src, __count);
          *v3 = __count;
        }
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v23, v24, v25, v26, v27, v28, ":", 891, "", "");
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  sub_100005410();
}

void sub_10035F3E8()
{
  sub_100005428();
  sub_100005440();
  v15[0] = v5;
  v15[1] = v4;
  v14 = 0;
  outputCnt = 1;
  bzero(outputStruct, 0x400uLL);
  v11 = 1024;
  if (!IOConnectCallMethod(v3, 0xFu, v15, 2u, v2, 0x10uLL, &v14, &outputCnt, outputStruct, &v11) && outputCnt == 1)
  {
    *v1 = v14;
    sub_10036CE14(outputStruct, v11, 3u, v6, v7, v8, v9, v10, v0);
  }

  sub_100005410();
}

void sub_10035F4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  sub_100005428();
  sub_100005440();
  v43[0] = v30;
  v43[1] = v29;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  outputCnt = 3;
  bzero(outputStruct, 0x400uLL);
  v37 = 1024;
  if (!IOConnectCallMethod(v28, 0x13u, v43, 2u, v27, 0x10uLL, &v40, &outputCnt, outputStruct, &v37) && outputCnt == 3)
  {
    v36 = v41;
    *v26 = v40;
    *a22 = v36;
    *a25 = v42;
    sub_10036CE14(outputStruct, v37, 5u, v31, v32, v33, v34, v35, v25);
  }

  sub_100005410();
}

uint64_t sub_10035F634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, unsigned int a12, void *outputStruct, size_t *a14, _DWORD *a15)
{
  input[0] = a3;
  input[1] = a6;
  input[2] = a9;
  input[3] = a12;
  output = 0;
  outputCnt = 1;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_10000ABA8(&inputStructCnt[1], inputStructCnt, 4, a4, a5, a6, a7, a8, a2);
  v16 = IOConnectCallMethod(a1, 0x15u, input, 4u, *&inputStructCnt[1], inputStructCnt[0], &output, &outputCnt, outputStruct, a14);
  if (v16)
  {
    a1 = v16;
  }

  else if (outputCnt == 1)
  {
    a1 = 0;
    *a15 = output;
  }

  else
  {
    sub_1000054B4();
  }

  free(*&inputStructCnt[1]);
  return a1;
}

void sub_10035F744()
{
  sub_100005428();
  v3 = v2;
  sub_1000054CC();
  v22[0] = v4;
  v22[1] = v5;
  v20 = 0;
  v19 = 0;
  bzero(v21, 0x400uLL);
  v18 = 1024;
  sub_10000ABA8(&v20, &v19, 2, v6, v7, v8, v9, v10, v0);
  if (!sub_10000545C(v1, 0x10u, v22, 2u, v20, v19, v11, v12, v21, &v18))
  {
    sub_10036CE14(v21, v18, 2u, v13, v14, v15, v16, v17, v3);
  }

  free(v20);
  sub_100005410();
}

void sub_10035F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  sub_100005428();
  sub_1000054CC();
  v42[0] = v24;
  v42[1] = v25;
  v42[2] = a21;
  v40 = 0;
  v39 = 0;
  bzero(v41, 0x400uLL);
  v38 = 1024;
  sub_10000ABA8(&v40, &v39, 3, v26, v27, v28, v29, v30, v22);
  if (!sub_10000545C(v23, 0x17u, v42, 3u, v40, v39, v31, v32, v41, &v38))
  {
    sub_10036CE14(v41, v38, 2u, v33, v34, v35, v36, v37, a22);
  }

  free(v40);
  sub_100005410();
}

uint64_t sub_10035F984(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v26 = v1;
  bzero(__src, 0x8000uLL);
  __n = 0x8000;
  v8 = sub_100004530();
  if (v8)
  {
    if (v7)
    {
      v11 = 18;
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_10000545C(v8, 0x5Du, &v26, 1u, v7, v11, v9, v10, __src, &__n);
    v13 = __n;
    if (v12)
    {
      v7 = v12;
    }

    else
    {
      sub_1000054B4();
      if (v13 - 32769 < 0xFFFFFFFFFFFF8000)
      {
        v7 = (v7 + 6);
      }

      else
      {
        v14 = calloc(v13, 1uLL);
        *v5 = v14;
        v13 = __n;
        if (v14)
        {
          *v3 = __n;
          memcpy(v14, __src, v13);
          v7 = 0;
          v13 = __n;
        }

        else
        {
          v7 = (v7 + 1);
        }
      }
    }
  }

  else
  {
    sub_1000054B4();
    sub_1000053B4();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 1246, "", "");
    v13 = 0x8000;
  }

  memset_s(__src, v13, 0, v13);
  return v7;
}

uint64_t sub_10035FBAC(FTS *a1, uint64_t a2, uint64_t a3)
{
  v6 = fts_read(a1);
  if (v6)
  {
    v7 = v6;
    do
    {
      fts_info = v7->fts_info;
      if (fts_info == 1)
      {
        if (a2 && ((*(a2 + 16))(a2, v7) & 1) == 0)
        {
          fts_set(a1, v7, 4);
        }
      }

      else if (fts_info != 6 && a3 != 0 && fts_info == 8)
      {
        (*(a3 + 16))(a3, v7);
      }

      v7 = fts_read(a1);
    }

    while (v7);
  }

  return fts_close(a1);
}

uint64_t sub_10035FDA0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 + a3;
  if (!ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_raw_octet_string() || !ccder_blob_encode_implicit_raw_octet_string() || !ccder_blob_encode_implicit_raw_octet_string() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  v3 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v3)
  {
    if (a2 == v6)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t sub_10035FE84(unint64_t a1, uint64_t a2, void *a3)
{
  v20.n128_u64[0] = a1;
  v20.n128_u64[1] = a1 + a2;
  if (!ccder_blob_decode_range() || !sub_10036C9C4(&v20, 0x8000000000000000, a3, v4, v5, v6, v7, v8, v9, v10) || !sub_10036A4B8(&v20, 0x8000000000000001, a3 + 1, 16) || !sub_10036A4B8(&v20, 0x8000000000000002, a3 + 3, 40) || !sub_10036A4B8(&v20, 0x8000000000000003, a3 + 8, 16))
  {
    return 4294967277;
  }

  v18 = sub_10036C9C4(&v20, 0x8000000000000004, a3 + 10, v11, v12, v13, v14, v15, v16, v17);
  result = 4294967277;
  if (v18)
  {
    if (v20.n128_u64[0] == v20.n128_u64[1])
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}

uint64_t sub_10035FF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *__s = 0u;
  v19 = 0u;
  HIDWORD(v17) = 40;
  *a4 = 0;
  uuid_copy((a4 + 8), (a1 + 32));
  *(a4 + 80) = 1;
  sub_100009C84(a4 + 64, 0x10u);
  ccsha256_di();
  LODWORD(v6) = j__ccpbkdf2_hmac();
  if (v6)
  {
    v14 = 4294967286;
  }

  else
  {
    v6 = sub_1000040CC(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, a1, 0x20u, (a4 + 24), &v17 + 1);
    if (v6)
    {
      v14 = v6;
    }

    else if (HIDWORD(v17) == 40)
    {
      v14 = 0;
    }

    else
    {
      v14 = 4294967286;
    }
  }

  sub_1000055A4(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17);
  return v14;
}

uint64_t sub_100360080(const unsigned __int8 *a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  *__s = 0u;
  v16 = 0u;
  HIDWORD(v14) = 32;
  if (*a1)
  {
    v11 = 4294967284;
  }

  else
  {
    v9 = a1;
    ccsha256_di();
    LODWORD(a1) = j__ccpbkdf2_hmac();
    if (a1)
    {
      goto LABEL_9;
    }

    a1 = sub_100004480(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, v9 + 3, 0x28u, a4, &v14 + 1);
    if (a1)
    {
      v11 = a1;
      goto LABEL_8;
    }

    if (HIDWORD(v14) != 32)
    {
LABEL_9:
      v11 = 4294967286;
    }

    else
    {
      v10 = cccurve25519_make_pub() == 0;
      sub_100008C14(v10, 118, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/backup_serialize.c");
      LODWORD(a1) = uuid_compare(v9 + 8, (a4 + 32));
      if (a1)
      {
        v11 = 4294967272;
      }

      else
      {
        v11 = 0;
      }
    }
  }

LABEL_8:
  sub_1000055A4(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14);
  return v11;
}

void sub_1003601C0()
{
  sub_100005428();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  bzero(v28, 0x1000uLL);
  v25 = v28;
  v26 = &v29;
  v11 = sub_100004530();
  if (v11)
  {
    v12 = v11;
    if (sub_10036B284(&v25))
    {
      sub_1000053E8();
      if (ccder_blob_encode_tl())
      {
        v27[0] = v10;
        v27[1] = v9;
        v27[2] = v5;
        v27[3] = v3;
        v27[4] = v7;
        v27[5] = v26;
        v27[6] = &v29 - v26;
        sub_1000053C8(v12, 0x21u, v27, 7u, v13, v14, v15, v16, 0, 0);
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 53, "", "");
  }

  sub_100005410();
}

uint64_t sub_100360378(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (sub_100004530())
  {
    sub_100007E5C();
    result = IOConnectCallMethod(v4, v5, v6, v7, v8, v9, v10, v11, 0, 0);
    if (!result)
    {
      result = 0;
      if (a3)
      {
        *a3 = 0;
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 80, "", "");
    return sub_100007E50();
  }

  return result;
}

uint64_t sub_10036048C(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  sub_100008044();
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  free(a1[1]);
  free(a1);
  return 0;
}

uint64_t sub_1003604E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v14 = 0;
  if (!a2 && a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_1003605E4(a4, &v14) || (v9 = calloc(0x20uLL, 1uLL)) == 0)
  {
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
    v11 = sub_1003606CC(v14);
    v12 = 0xFFFFFFFFLL;
    if (a3 <= 0x7FFFFFFE && !v11 && !sub_10036076C(v8, a2, a3, v10, v14))
    {
      v12 = 0;
      if (a5)
      {
        *a5 = v14;
        v14 = 0;
      }
    }

    sub_100007F8C(v10);
    free(v10);
  }

  if (v14)
  {
    sub_10036048C(v14);
  }

  return v12;
}

uint64_t sub_1003605E4(int a1, void *a2)
{
  if ((a1 - 1) > 2 || a2 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = calloc(0x20uLL, 1uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *(v6 + 2) = 20;
  v8 = calloc(0x14uLL, 1uLL);
  *(v7 + 1) = v8;
  if (!v8)
  {
LABEL_19:
    free(v7);
    return 0xFFFFFFFFLL;
  }

  *v7 = 1634431856;
  v7[6] = a1;
  result = CCRandomCopyBytes();
  if (result)
  {
    v10 = *(v7 + 1);
    if (v10)
    {
      free(v10);
    }

    goto LABEL_19;
  }

  if (a1 == 3)
  {
    v9 = 2000;
  }

  else
  {
    v9 = 10000000;
  }

  if (a1 == 2)
  {
    v9 = 1000;
  }

  v7[1] = v9;
  *a2 = v7;
  return result;
}

uint64_t sub_1003606CC(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  sub_100008044();
  if (!v5 || !v2 && v3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (v4 && (*(a1 + 24) - 4) >= 0xFFFFFFFD)
  {
    ccsha256_di();
    if (ccpbkdf2_hmac())
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10036076C(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v38 = 0;
  sub_100007F60();
  v36 = 0;
  __n = 0;
  if ((v10 || !a3) && a4 && a5)
  {
    v11 = sub_100004530();
    if (v11)
    {
      v12 = v11;
      if (!sub_10036A93C() && !sub_10036A93C() && !sub_10036AC00(&v36, off_1004A6520, *(a5 + 4)) && !sub_10036AC00(&v36, off_1004A6528, *(a5 + 24)) && (a3 < 1 || !sub_10036A93C()) && !sub_1000095C8(&v36) && !sub_10036A668(&v36, &v38, &__n))
      {
        sub_100007FD8(a1, v21, v23, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, __n);
        v5 = sub_1000053C8(v12, 0x1Eu, v13, 3u, v14, v15, v16, v17, v22, v24);
      }
    }

    else
    {
      sub_1000053B4();
      fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v25, v26, v27, v28, v29, v30, ":", 221, "", "");
      v5 = (v5 - 6);
    }
  }

  sub_100009190(&v36);
  if (v38)
  {
    sub_100007FB4(v38, __n);
    free(v38);
  }

  return v5;
}

void sub_100360960()
{
  sub_100005428();
  __chkstk_darwin(v2);
  if (v3)
  {
    sub_100007F2C();
    v4 = calloc(0x20uLL, 1uLL);
    if (v4)
    {
      v5 = v4;
      *v4 = 1634431856;
      v6 = sub_100004530();
      if (!v6)
      {
        sub_1000053B4();
        fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 387, "", "");
        goto LABEL_16;
      }

      v7 = v6;
      bzero(v36, 0x8000uLL);
      v26[0] = 0x8000;
      v35 = v1;
      if (sub_100007DA4(v7, 0x1Fu, &v35, v8, v9, v10, v11, v12, v36, v26) || v26[0] > 0x8000)
      {
        goto LABEL_16;
      }

      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v28 = 0u;
      v30 = 0u;
      v31 = 0;
      v27 = 0u;
      v33 = 0u;
      v34 = 0u;
      v26[1] = off_1004A6518;
      v29 = off_1004A6520;
      v32 = off_1004A6528;
      sub_100007D84();
      sub_10036A038();
      v14 = ccder_decode_tl();
      if (v14)
      {
        v15 = v14;
        v16 = calloc(*(v5 + 2), 1uLL);
        *(v5 + 1) = v16;
        if (!v16)
        {
          v17 = 0;
          if (!Mutable)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        memcpy(v16, v15, *(v5 + 2));
        v5[1] = sub_10036A1EC();
        v5[6] = sub_10036A1EC();
      }

      v17 = 1;
      if (!Mutable)
      {
LABEL_11:
        if (v17 && *(v5 + 2))
        {
          *v0 = v5;
          goto LABEL_14;
        }

LABEL_16:
        sub_10036048C(v5);
        goto LABEL_14;
      }

LABEL_10:
      CFRelease(Mutable);
      goto LABEL_11;
    }
  }

LABEL_14:
  sub_100005410();
}

uint64_t sub_100360BEC(int a1, uint64_t a2, int a3, _DWORD *a4)
{
  memset(v9, 0, sizeof(v9));
  if (a3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 || a4 == 0;
  if (v5 || *a4 != 1634431856 || sub_1003606CC(a4))
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = sub_100005CBC(a1, v9, 32, 0);
  }

  sub_100007F8C(v9);
  return v7;
}

uint64_t sub_100360CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  if (!a6)
  {
    goto LABEL_18;
  }

  v7 = *a6;
  if (!*a6)
  {
    goto LABEL_18;
  }

  sub_100008044();
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v8;
  if (!v9)
  {
    if (v10)
    {
      goto LABEL_18;
    }
  }

  if (!v11 && v12 || sub_1003606CC(v7))
  {
    goto LABEL_18;
  }

  v15 = sub_1003605E4(*(v7 + 24), &v20);
  v16 = v20;
  if (v15 || (v17 = sub_1003606CC(v20), v16 = v20, v17))
  {
LABEL_16:
    if (v16)
    {
      sub_10036048C(v16);
    }

LABEL_18:
    v18 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  if (sub_10036076C(v14, v22, 32, v21, v20))
  {
    v16 = v20;
    goto LABEL_16;
  }

  sub_10036048C(v7);
  v18 = 0;
  *a6 = v20;
LABEL_14:
  sub_100007F8C(v22);
  sub_100007F8C(v21);
  return v18;
}

uint64_t sub_100360DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v9 = 3758097084;
  if (sub_100004530())
  {
    if (a8)
    {
      sub_100007E5C();
      v9 = IOConnectCallMethod(v10, v11, v12, v13, v14, v15, v16, v17, 0, 0);
      if (!v9)
      {
        *a8 = 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 190, "", "");
  }

  return v9;
}

uint64_t sub_10036112C(const void *a1, int a2, _DWORD *a3)
{
  sub_100007E18(__stack_chk_guard);
  v7 = sub_100004530();
  if (v7)
  {
    v3 = (v3 + 6);
    if (a1)
    {
      if (a3)
      {
        output = 0;
        outputCnt = 1;
        v3 = IOConnectCallMethod(v7, 6u, 0, 0, a1, a2, &output, &outputCnt, 0, 0);
        if (!v3)
        {
          *a3 = output;
        }
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v9, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v10, v11, v12, v13, v14, v15, v16, ":", 607, "", "");
  }

  return v3;
}

uint64_t sub_100361238(const void *a1, int a2)
{
  sub_1000054B4();
  v5 = sub_100004530();
  if (v5)
  {
    if (a1)
    {
      return sub_10000545C(v5, 0x57u, 0, 0, a1, a2, v6, v7, 0, 0);
    }

    return (v2 + 6);
  }

  else
  {
    sub_1000053B4();
    fprintf(v9, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v10, v11, v12, v13, v14, v15, v16, ":", 629, "", "");
  }

  return v2;
}

void sub_1003612F4()
{
  sub_100008244();
  sub_10000810C();
  __chkstk_darwin(v6);
  sub_100007FA8();
  v8 = v7;
  *(v5 - 72) = __stack_chk_guard;
  sub_1000080AC();
  v9 = sub_100004530();
  if (v9)
  {
    v17 = v9;
    if (v1)
    {
      if (v0)
      {
        sub_100007F6C((v2 + 6), v10, v11, v12, v13, v14, v15, v16, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, __count, v40);
        __count = v3;
        v40 = v8;
        if (!sub_100007DA4(v17, 3u, &v40, v18, v19, v20, v21, v22, v4, &__count))
        {
          v23 = calloc(__count, 1uLL);
          *v1 = v23;
          if (v23)
          {
            memcpy(v23, __src, __count);
            *v0 = __count;
          }
        }
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v25, v28, v29, v30, v31, v32, v33, ":", 679, "", "");
    sub_100007E50();
  }

  sub_100008144();
  sub_100008230();
}

uint64_t sub_10036143C()
{
  sub_100007F2C();
  sub_100007E18(__stack_chk_guard);
  v18 = 16;
  v3 = sub_100004530();
  if (v3)
  {
    if (v1)
    {
      v20 = 0uLL;
      v19 = v2;
      v0 = sub_100007DA4(v3, 0x17u, &v19, v4, v5, v6, v7, v8, &v20, &v18);
      if (!v0)
      {
        *v1 = v20;
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 782, "", "");
  }

  return v0;
}

uint64_t sub_10036153C(int a1, uint64_t a2, void **a3, size_t *a4)
{
  sub_100008150();
  v51 = 0;
  memset(__src, 0, sizeof(__src));
  v47 = 0;
  __count = 34;
  HIDWORD(v45) = 0;
  v9 = sub_100004530();
  if (v9)
  {
    v17 = (v4 + 5);
    if (a3 && a4)
    {
      v18 = v9;
      v49 = a1;
      v19 = sub_100008174(v9, v10, v11, v12, v13, v14, v15, v16, a2, 16, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, 0);
      sub_10000ABA8(v19, v20, 1, v21, v22, v23, v24, v25, v34);
      if (v47)
      {
        v29 = sub_100007F10(v18, 0x44u, &v49, v26, v47, v46, v27, v28, __src, &__count);
        if (v29)
        {
          v17 = v29;
        }

        else
        {
          *a3 = calloc(__count, 1uLL);
          sub_100008150();
          if (v30)
          {
            memcpy(v30, __src, __count);
            v17 = 0;
            *a4 = __count;
          }
        }
      }

      else
      {
        sub_100008150();
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v33, v35, v36, v37, v38, v39, v40, ":", 813, "", "");
    v17 = (v4 - 1);
  }

  free(v47);
  return v17;
}

uint64_t sub_1003616C8()
{
  sub_100007F2C();
  sub_100007E18(__stack_chk_guard);
  if (sub_100004530())
  {
    if (v1)
    {
      sub_100007DF4();
      sub_100007DC8();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
      if (!v0)
      {
        sub_1000080F4();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v15, v16, v17, v18, v19, v20, ":", 889, "", "");
  }

  return v0;
}

uint64_t sub_1003618EC(const void *a1, int a2, int a3, int a4, void *a5, int *a6)
{
  sub_100007DD8(__stack_chk_guard);
  v13 = sub_100004530();
  if (v13)
  {
    v6 = (v6 + 6);
    if (a1)
    {
      if (a5)
      {
        if (a6)
        {
          v26[0] = a4;
          v26[1] = a3;
          v25 = *a6;
          v6 = sub_10000545C(v13, 0xBu, v26, 2u, a1, a2, v14, v15, a5, &v25);
          if (!v6)
          {
            *a6 = v25;
          }
        }
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 942, "", "");
  }

  return v6;
}

uint64_t sub_100361B38()
{
  sub_100007F2C();
  sub_100007E18(__stack_chk_guard);
  if (sub_100004530())
  {
    if (v1)
    {
      sub_100007E5C();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0);
      if (!v0)
      {
        sub_1000080F4();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 987, "", "");
  }

  return v0;
}

void sub_100361D7C()
{
  sub_100005428();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v33 = 0;
  v32 = 0;
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  v13 = sub_100004530();
  if (v13)
  {
    v19 = v13;
    v34[0] = v11;
    v34[1] = v9;
    v34[2] = v7;
    sub_10000ABA8(&v33, &v32, 1, v14, v15, v16, v17, v18, v12);
    if (v33)
    {
      if (!sub_10000545C(v19, 0x6Eu, v34, 3u, v33, v32, v20, v21, __src, &__count))
      {
        v22 = calloc(__count, 1uLL);
        *v5 = v22;
        if (v22)
        {
          memcpy(v22, __src, __count);
          *v3 = __count;
        }
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v25, v26, v27, v28, v29, v30, ":", 1101, "", "");
  }

  free(v33);
  sub_100008168();
  sub_100005410();
}

uint64_t sub_100361F34()
{
  sub_1000054B4();
  v24 = 0;
  v23 = 0;
  v1 = sub_100004530();
  if (v1)
  {
    v2 = v1;
    sub_10000815C();
    sub_10000ABA8(&v24, &v23, 1, v3, v4, v5, v6, v7, v16);
    if (v24)
    {
      v0 = sub_100007E68(v2, 0x6Fu, v8, v9, v24, v23, v10, v11, 0, 0);
      v12 = v24;
    }

    else
    {
      v12 = sub_100007F48();
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v17, v18, v19, v20, v21, v22, ":", 1143, "", "");
    v12 = 0;
  }

  free(v12);
  return v0;
}

uint64_t sub_100362018(uint64_t a1, void *a2)
{
  sub_1000054B4();
  v28 = 0;
  v27 = 0;
  v26 = 16;
  v5 = sub_100004530();
  if (v5)
  {
    v11 = v5;
    sub_10000ABA8(&v28, &v27, 1, v6, v7, v8, v9, v10, a1);
    if (v28)
    {
      v2 = sub_100007E68(v11, 0x70u, v12, v13, v28, v27, v14, v15, a2, &v26);
      v16 = v28;
    }

    else
    {
      v16 = sub_100007F48();
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 1165, "", "");
    v16 = 0;
  }

  free(v16);
  return v2;
}

uint64_t sub_1003623D4(unint64_t a1, uint64_t a2, int a3, int a4, _OWORD *a5)
{
  v24 = 0u;
  v25 = 0u;
  __s = 0u;
  v23 = 0u;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v8 = sub_10035FE84(a1, a2, v20);
  if (v8)
  {
    v16 = v8;
  }

  else
  {
    v8 = sub_100360080(v20, a3, a4, &__s, v12, v13, v14, v15);
    v16 = v8;
    if (!v8)
    {
      v17 = v23;
      *a5 = __s;
      a5[1] = v17;
      v18 = v25;
      a5[2] = v24;
      a5[3] = v18;
    }
  }

  sub_1000081B8(v8, v9, v10, v11, v12, v13, v14, v15, *&v20[0]);
  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  return sub_100008BF8(v16);
}

uint64_t sub_1003624B4(unint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v4 = sub_10035FE84(a1, a2, v14);
  v12 = v4;
  if (!v4)
  {
    uuid_copy(a3, v14 + 8);
  }

  sub_1000081B8(v4, v5, v6, v7, v8, v9, v10, v11, *&v14[0]);
  return sub_100008BF8(v12);
}

uint64_t sub_100362550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  sub_100008024();
  v10 = v9;
  sub_1000054B4();
  v11 = sub_100004530();
  if (v11)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v25[0] = v10;
      v25[1] = 64;
      return sub_100007EB4(v11, 0x82u, v25, 2u, v12, v13, v14, v15, v7, a5);
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 1292, "", "");
  }

  return v5;
}

uint64_t sub_100362648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  sub_100008024();
  v10 = v9;
  sub_1000054B4();
  v11 = sub_100004530();
  if (v11)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v25 = v10;
      return sub_100007EB4(v11, 0x81u, &v25, 1u, v12, v13, v14, v15, v7, a5);
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 1311, "", "");
  }

  return v5;
}

uint64_t sub_100362740()
{
  sub_100007F2C();
  sub_100007E18(__stack_chk_guard);
  if (sub_100004530())
  {
    if (v1)
    {
      sub_100007DF4();
      sub_100007DC8();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
      if (!v0)
      {
        sub_1000080F4();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v15, v16, v17, v18, v19, v20, ":", 1330, "", "");
  }

  return v0;
}

uint64_t sub_100362820()
{
  sub_100007F2C();
  sub_100007E18(__stack_chk_guard);
  v3 = sub_100004530();
  if (v3)
  {
    if (v1)
    {
      v21 = 0;
      v22 = v2;
      v19 = 16;
      *src = 0;
      v9 = sub_100007DA4(v3, 0x84u, &v22, v4, v5, v6, v7, v8, src, &v19);
      if (v9)
      {
        return v9;
      }

      else if (v19 == 16)
      {
        uuid_copy(v1, src);
        return 0;
      }

      else
      {
        return 3758604298;
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 1352, "", "");
  }

  return v0;
}

uint64_t sub_100362940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a5)
  {
    sub_100008074();
    v10 = v9;
    *a5 = -1;
    v15 = sub_1003623D4(v9, v11, v12, v13, v14);
    if (!v15)
    {
      sub_1000053B4();
      fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Unwrapped DER backup bag%s\n", "aks", v17, v32, v33, v35, v37, v39, v41, ":", 1401, "", "");
      v18 = 0;
      goto LABEL_9;
    }

    v45 = v15;
    sub_100007E30();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unwrap backup bag as DER: 0x%08x%s\n", "aks", "", v20, v33, v35, v37, v39, v41, v43, 1389, "", v45, "");
    v21 = sub_10036112C(v10, v7, a5);
    if (v21)
    {
      v18 = v21;
      v46 = v21;
      sub_100007E30();
      fprintf(v28, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to load in-kernel backup bag: 0x%08x%s\n", "aks", "", v29, v34, v36, v38, v40, v42, v44, 1391, "", v46, "");
    }

    else
    {
      sub_100360960();
      v23 = v22;
      v24 = *a5;
      if (v23)
      {
        v18 = sub_100360BEC(v24, v6, v5, 0);
        if (!v18)
        {
          goto LABEL_9;
        }

        sub_100007E30();
        fprintf(v30, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag with prederived secret: 0x%08x%s\n", "aks", "", v31);
      }

      else
      {
        v18 = sub_100005CBC(v24, v6, v5, 0);
        if (!v18)
        {
          goto LABEL_9;
        }

        sub_100007E30();
        fprintf(v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag: 0x%08x%s\n", "aks", "", v26);
      }
    }
  }

  else
  {
    v18 = 3758097090;
  }

  if (*a5 != -1)
  {
    sub_1000058D4(*a5);
    *a5 = -1;
  }

LABEL_9:
  sub_10036048C(0);
  return v18;
}

uint64_t sub_100362B54(int a1, uint64_t a2, uint64_t a3)
{
  sub_1000054B4();
  v28 = 0;
  v27 = 0;
  v7 = sub_100004530();
  if (v7)
  {
    v8 = v7;
    v29[0] = a1;
    v29[1] = a2;
    v29[2] = a3;
    sub_10000815C();
    sub_10000ABA8(&v28, &v27, 1, v9, v10, v11, v12, v13, v20);
    if (v28)
    {
      v3 = sub_10000545C(v8, 0x60u, v29, 3u, v28, v27, v14, v15, 0, 0);
      v16 = v28;
    }

    else
    {
      v16 = sub_100007F48();
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v21, v22, v23, v24, v25, v26, ":", 1423, "", "");
    v16 = 0;
  }

  free(v16);
  return v3;
}

uint64_t sub_100362C8C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  sub_100007DD8(__stack_chk_guard);
  v31 = 0;
  v30 = 0;
  v10 = sub_100004530();
  if (v10)
  {
    v11 = v10;
    v32[0] = a1;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a5;
    sub_10000815C();
    sub_10000ABA8(&v31, &v30, 1, v12, v13, v14, v15, v16, v23);
    if (v31)
    {
      v5 = sub_10000545C(v11, 0x75u, v32, 4u, v31, v30, v17, v18, 0, 0);
      v19 = v31;
    }

    else
    {
      v19 = sub_100007F48();
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v24, v25, v26, v27, v28, v29, ":", 1445, "", "");
    v19 = 0;
  }

  free(v19);
  return v5;
}

uint64_t sub_100362DD0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v5 = v4;
  sub_100007F2C();
  sub_100008034(__stack_chk_guard);
  bzero(__src, 0x2000uLL);
  __count = 0x2000;
  v26 = v2;
  v6 = (v3 + 6);
  if (v1 && v5)
  {
    v7 = sub_100004530();
    if (v7)
    {
      v13 = sub_100007DA4(v7, 0x61u, &v26, v8, v9, v10, v11, v12, __src, &__count);
      if (v13)
      {
        v6 = v13;
      }

      else
      {
        if (__count)
        {
          v14 = calloc(__count, 1uLL);
          *v1 = v14;
          if (!v14)
          {
            v6 = (v3 + 1);
            goto LABEL_10;
          }

          memcpy(v14, __src, __count);
          v15 = __count;
        }

        else
        {
          v15 = 0;
          *v1 = 0;
        }

        sub_1000080E8(v15);
      }
    }

    else
    {
      sub_1000053B4();
      fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 1471, "", "");
      sub_100007F54();
    }
  }

LABEL_10:
  memset_s(__src, 0x2000uLL, 0, 0x2000uLL);
  return v6;
}

uint64_t sub_100362F50(int a1)
{
  sub_100007E18(__stack_chk_guard);
  v25 = 0;
  v24 = 0;
  v3 = sub_100004530();
  if (v3)
  {
    v4 = v3;
    v26 = a1;
    sub_10000815C();
    sub_10000ABA8(&v25, &v24, 1, v5, v6, v7, v8, v9, v17);
    if (v25)
    {
      v1 = sub_100007F10(v4, 0x62u, &v26, v10, v25, v24, v11, v12, 0, 0);
      v13 = v25;
    }

    else
    {
      v13 = sub_100007F48();
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v18, v19, v20, v21, v22, v23, ":", 1493, "", "");
    v13 = 0;
  }

  free(v13);
  return v1;
}

uint64_t sub_100363170(int a1, uint64_t a2, int a3, int a4)
{
  v59 = 0;
  sub_100007F60();
  v57 = 0;
  __n = 0;
  v7 = sub_100004530();
  if (v7)
  {
    v8 = v7;
    CFNumberGetTypeID();
    v9 = sub_100007F04();
    if (!sub_100367DF8(v9, v10, v11))
    {
      CFNumberGetTypeID();
      v12 = sub_100007F04();
      if (!sub_100367DF8(v12, v13, v14))
      {
        CFNumberGetTypeID();
        v15 = sub_100007F04();
        if (!sub_100367DF8(v15, v16, v17))
        {
          CFNumberGetTypeID();
          v18 = sub_100007F04();
          if (!sub_100367DF8(v18, @"EscrowPasscodePeriod", v19))
          {
            CFNumberGetTypeID();
            v20 = sub_100007F04();
            if (!sub_100367DF8(v20, @"EscrowTokenPeriod", v21))
            {
              CFDataGetTypeID();
              v22 = sub_100007F04();
              if (!sub_100367DF8(v22, v23, v24))
              {
                CFDataGetTypeID();
                v25 = sub_100007F04();
                if (!sub_100367DF8(v25, v26, v27))
                {
                  CFBooleanGetTypeID();
                  v28 = sub_100007F04();
                  if (!sub_100367DF8(v28, v29, v30))
                  {
                    CFBooleanGetTypeID();
                    v31 = sub_100007F04();
                    if (!sub_100367DF8(v31, v32, v33) && !sub_1000095C8(&v57) && (!a2 || !sub_10036A93C()) && !sub_10036A668(&v57, &v59, &__n))
                    {
                      sub_100007FD8(a1, v42, v44, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, __n);
                      v4 = sub_1000053C8(v8, 0x1Eu, v34, 3u, v35, v36, v37, v38, v43, v45);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v40, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v41, v46, v47, v48, v49, v50, v51, ":", 1587, "", "");
    v4 = (v4 - 6);
  }

  sub_100009190(&v57);
  if (v59)
  {
    sub_100007FB4(v59, __n);
    free(v59);
  }

  return v4;
}

void sub_100363488()
{
  sub_100005428();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v4 = v1;
  sub_1000054B4();
  v5 = sub_100004530();
  if (v5)
  {
    if (v3)
    {
      v6 = v5;
      bzero(v101, 0x8000uLL);
      v98[0] = 0x8000;
      v100 = v4;
      if (!sub_100007DA4(v6, 0x1Fu, &v100, v7, v8, v9, v10, v11, v101, v98) && v98[0] <= 0x8000)
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        bzero(v99, 0x250uLL);
        v98[1] = off_1004A6338;
        v99[4] = off_1004A6340;
        v99[9] = off_1004A6348;
        v99[14] = off_1004A6350;
        v99[19] = off_1004A6358;
        v99[24] = off_1004A6360;
        v99[29] = off_1004A6540;
        v99[34] = off_1004A6578;
        v99[39] = off_1004A6588;
        v99[44] = off_1004A6590;
        v99[49] = off_1004A6598;
        v99[54] = off_1004A6728;
        v99[59] = off_1004A6730;
        v99[64] = off_1004A6760;
        v99[69] = off_1004A6758;
        sub_100007D84();
        sub_10036A038();
        v13 = v99[0];
        v14 = v99[5];
        v15 = v99[10];
        v16 = v99[15];
        v97 = v3;
        v17 = v99[20];
        v18 = v99[25];
        v19 = v99[30];
        v89 = v99[35];
        v90 = v99[40];
        v91 = v99[45];
        v92 = v99[50];
        v93 = v99[55];
        v94 = v99[60];
        v95 = v99[65];
        v96 = v99[70];
        CFNumberGetTypeID();
        v20 = sub_100007E44();
        sub_100005FA8(v20, v21, v22, v13, v23);
        CFNumberGetTypeID();
        v24 = sub_100007E44();
        sub_100005FA8(v24, v25, v26, v14, v27);
        CFNumberGetTypeID();
        v28 = sub_100007E44();
        sub_100005FA8(v28, v29, v30, v15, v31);
        CFNumberGetTypeID();
        v32 = sub_100007E44();
        sub_100005FA8(v32, @"EscrowPasscodePeriod", v33, v16, v34);
        CFNumberGetTypeID();
        v35 = sub_100007E44();
        sub_100005FA8(v35, @"EscrowTokenPeriod", v36, v17, v37);
        CFNumberGetTypeID();
        v38 = sub_100007E44();
        sub_100005FA8(v38, v39, v40, v18, v41);
        CFDataGetTypeID();
        v42 = sub_100007E44();
        sub_100005FA8(v42, v43, v44, v19, v45);
        CFDataGetTypeID();
        v46 = sub_100007E44();
        sub_100005FA8(v46, v47, v48, v89, v49);
        CFNumberGetTypeID();
        v50 = sub_100007E44();
        sub_100005FA8(v50, v51, v52, v90, v53);
        CFNumberGetTypeID();
        v54 = sub_100007E44();
        sub_100005FA8(v54, v55, v56, v91, v57);
        CFNumberGetTypeID();
        v58 = sub_100007E44();
        sub_100005FA8(v58, v59, v60, v92, v61);
        CFBooleanGetTypeID();
        v62 = sub_100007E44();
        sub_100005FA8(v62, v63, v64, v93, v65);
        CFBooleanGetTypeID();
        v66 = sub_100007E44();
        sub_100005FA8(v66, v67, v68, v94, v69);
        CFNumberGetTypeID();
        v70 = sub_100007E44();
        sub_100005FA8(v70, v71, v72, v95, v73);
        CFNumberGetTypeID();
        v74 = sub_100007E44();
        sub_100005FA8(v74, v75, v76, v96, v77);
        v78 = sub_10036A1EC();
        if ((v78 & 2) != 0)
        {
          v79 = kCFBooleanTrue;
        }

        else
        {
          v79 = kCFBooleanFalse;
        }

        CFDictionarySetValue(Mutable, @"InactivityRebootEnabled", v79);
        if ((v78 & 8) != 0)
        {
          v80 = kCFBooleanTrue;
        }

        else
        {
          v80 = kCFBooleanFalse;
        }

        CFDictionarySetValue(Mutable, @"OnenessAutomaticMode", v80);
        *v97 = Mutable;
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v81, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v82, v83, v84, v85, v86, v87, v88, ":", 1677, "", "");
  }

  sub_100008168();
  sub_100005410();
}

void sub_100363990()
{
  sub_1000081EC();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  sub_100007F60();
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  v9 = sub_100004530();
  if (v9)
  {
    if (v8)
    {
      if (v5)
      {
        if (v3)
        {
          if (!sub_10000545C(v9, 0x29u, 0, 0, v8, v7, v10, v11, __src, &__count))
          {
            v12 = calloc(__count, 1uLL);
            *v5 = v12;
            if (v12)
            {
              memcpy(v12, __src, __count);
              *v3 = __count;
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 1889, "", "");
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  sub_100008168();
  sub_1000081D8();
}

uint64_t sub_100363C98()
{
  sub_100008034(__stack_chk_guard);
  sub_100008124();
  result = (v0 + 6);
  if (v1)
  {
    v4 = v2;
    if (v2)
    {
      v5 = v1;
      v6 = sub_100004530();
      if (v6)
      {
        v7 = v6;
        bzero(v37, 0x100uLL);
        result = sub_1000053C8(v7, 0x31u, v36, 2u, v8, v9, v10, v11, v37, &__count);
        if (!result)
        {
          if (__count > 0x100)
          {
            return sub_100008118();
          }

          else
          {
            v12 = calloc(__count, 1uLL);
            *v5 = v12;
            if (v12)
            {
              sub_100008200(v12, v13, v14, v15, v16, v17, v18, v19, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, __count, v36[0], v36[1]);
              result = sub_100008138();
              *v4 = v20;
            }

            else
            {
              return (v0 + 1);
            }
          }
        }
      }

      else
      {
        sub_1000053B4();
        fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v25, v26, v27, v28, v29, v30, ":", 2020, "", "");
        return sub_100007E50();
      }
    }
  }

  return result;
}

void sub_100363DDC()
{
  sub_100008244();
  sub_10000810C();
  __chkstk_darwin(v1);
  *(v0 - 72) = __stack_chk_guard;
  sub_100008124();
  if (v2)
  {
    v4 = v3;
    if (v3)
    {
      v5 = v2;
      v6 = sub_100004530();
      if (v6)
      {
        v7 = v6;
        bzero(v41, 0x8000uLL);
        sub_100008054();
        if (!sub_100007E94(v7, 0x31u, v8, 2u, v9, v10, v11, v12, v24, v26))
        {
          if (__count > 0x8000)
          {
            sub_100008118();
          }

          else
          {
            v13 = calloc(__count, 1uLL);
            *v5 = v13;
            if (v13)
            {
              sub_100008200(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, __count, v39, v40);
              sub_100008138();
              *v4 = v21;
            }
          }
        }
      }

      else
      {
        sub_1000053B4();
        fprintf(v22, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v23, v28, v29, v30, v31, v32, v33, ":", 2042, "", "");
        sub_100007E50();
      }
    }
  }

  sub_100008144();
  sub_100008230();
}

uint64_t sub_100363F3C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __count = 15360;
  v30[0] = v1;
  v30[1] = v8;
  v30[2] = v9;
  v10 = sub_100004530();
  if (v10)
  {
    v11 = v10;
    bzero(__src, 0x3C00uLL);
    v16 = sub_1000053C8(v11, v7, v30, 3u, v12, v13, v14, v15, __src, &__count);
    if (v16)
    {
      return v16;
    }

    else if (__count > 0x3C00)
    {
      sub_100008100();
    }

    else
    {
      v7 = 0;
      if (v5 && v3)
      {
        if (__count)
        {
          v17 = calloc(__count, 1uLL);
          *v5 = v17;
          if (!v17)
          {
            sub_100007E88();
            return v22 | 1u;
          }

          memcpy(v17, __src, __count);
          v18 = __count;
        }

        else
        {
          v18 = 0;
        }

        sub_1000080E8(v18);
      }
    }
  }

  else
  {
    sub_100007F54();
    sub_1000053B4();
    fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v23, v24, v25, v26, v27, v28, ":", 2178, "", "");
  }

  return v7;
}

void sub_1003640D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t *a21)
{
  sub_100005428();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  bzero(__src, 0x100uLL);
  v70 = 0;
  __count = 256;
  HIDWORD(v68) = 0;
  v72[0] = v34;
  v72[1] = v32;
  v72[2] = v28;
  if (v22 && a21)
  {
    v35 = sub_100004530();
    if (v35)
    {
      v43 = v35;
      v44 = sub_100008174(v35, v36, v37, v38, v39, v40, v41, v42, v56, v57, v26, v24, v60, v61, v62, v63, v64, v65, v66, v67, v68, 0);
      sub_10000ABA8(v44, v45, 2, v46, v47, v48, v49, v50, v30);
      if (v70)
      {
        if (!sub_10000545C(v43, 0x32u, v72, 3u, v70, v69, v51, v52, __src, &__count) && __count <= 0x100)
        {
          v53 = calloc(__count, 1uLL);
          *v22 = v53;
          if (v53)
          {
            memcpy(v53, __src, __count);
            *a21 = __count;
          }
        }
      }
    }

    else
    {
      sub_1000053B4();
      fprintf(v54, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v55, v58, v59, v60, v61, v62, v63, ":", 2072, "", "");
    }
  }

  free(v70);
  sub_100005410();
}

uint64_t sub_1003643FC()
{
  v18 = 0;
  v19 = 0;
  sub_1000054B4();
  __n = 0;
  v17 = 0;
  v3 = (v0 + 6);
  v15 = 0;
  if (v1 && v2)
  {
    v20.n128_u64[0] = v1;
    v20.n128_u64[1] = v1 + v2;
    v17 = 0;
    sub_1000053E8();
    if (ccder_blob_decode_range())
    {
      sub_10036C9C4(&v20, 0x8000000000000001, &v17, v4, v5, v6, v7, v8, v9, v10);
      if (v17)
      {
        sub_100007E5C();
        v3 = sub_100363F3C(v13);
        if (v3)
        {
          syslog(3, "error: validating v1 local signing key failed: %d");
        }
      }

      else
      {
        v11 = sub_100363C98();
        if (!v11)
        {
          v12 = v19;
          goto LABEL_10;
        }

        v3 = v11;
        syslog(3, "error: validating (create) v0 local signing key failed: %d", v11);
      }
    }

    else
    {
      syslog(3, "error parsing signing key: %d", v0 + 14);
      v3 = 3758097084;
    }
  }

  v12 = v19;
  v0 = v3;
LABEL_10:
  if (v12)
  {
    sub_100007FB4(v12, __n);
    free(v19);
  }

  if (v18)
  {
    sub_100007FB4(v18, v15);
    free(v18);
  }

  return v0;
}

void sub_100364618()
{
  sub_100008244();
  sub_10000810C();
  __chkstk_darwin(v5);
  sub_100007FA8();
  v7 = v6;
  *(v4 - 72) = __stack_chk_guard;
  sub_1000080AC();
  v8 = sub_100004530();
  if (v8)
  {
    v16 = v8;
    if (v1)
    {
      if (v0)
      {
        sub_100007F6C((v2 + 6), v9, v10, v11, v12, v13, v14, v15, v33, v36, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, __count, v60, v61);
        sub_100008054();
        if (!sub_1000053C8(v16, 0x14u, v17, 2u, v18, v19, v20, v21, v34, v37))
        {
          if (v3)
          {
            v22 = calloc(v3, 1uLL);
            *v1 = v22;
            if (v22)
            {
              sub_100008200(v22, v23, v24, v25, v26, v27, v28, v29, v35, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v3, v7, 0);
              sub_100008138();
              *v0 = v30;
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v31, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v32, v39, v41, v43, v45, v47, v49, ":", 2233, "", "");
    sub_100007E50();
  }

  sub_100008144();
  sub_100008230();
}

void sub_100364760()
{
  sub_100008244();
  sub_10000810C();
  __chkstk_darwin(v5);
  sub_100007FA8();
  v7 = v6;
  *(v4 - 72) = __stack_chk_guard;
  sub_1000080AC();
  v8 = sub_100004530();
  if (v8)
  {
    v16 = v8;
    if (v1)
    {
      if (v0)
      {
        sub_100007F6C((v2 + 6), v9, v10, v11, v12, v13, v14, v15, v33, v36, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, __count, v60, v61);
        sub_100008054();
        if (!sub_1000053C8(v16, 0x14u, v17, 2u, v18, v19, v20, v21, v34, v37))
        {
          if (v3)
          {
            if (v3 % 0x7C)
            {
              sub_100008118();
            }

            else
            {
              v22 = calloc(v3, 1uLL);
              *v1 = v22;
              if (v22)
              {
                sub_100008200(v22, v23, v24, v25, v26, v27, v28, v29, v35, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v3, v7, 1);
                sub_100008138();
                *v0 = v30 / 0x7C;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v31, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v32, v39, v41, v43, v45, v47, v49, ":", 2261, "", "");
    sub_100007E50();
  }

  sub_100008144();
  sub_100008230();
}

void sub_1003648CC()
{
  sub_100005428();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v13 = sub_100004530();
  if (v13)
  {
    v14 = v13;
    if (v5)
    {
      if (!v3)
      {
        goto LABEL_10;
      }

      v15 = __src;
      p_count = &__count;
      v17 = 1;
    }

    else
    {
      p_count = 0;
      v15 = 0;
      v17 = 0;
    }

    bzero(__src, 0x8000uLL);
    __count = 0x8000;
    v33[0] = v12;
    v33[1] = v11;
    v33[2] = v17;
    v33[3] = v9;
    v33[4] = v7;
    v22 = sub_1000053C8(v14, 0x15u, v33, 5u, v18, v19, v20, v21, v15, p_count);
    if (v5 && !v22)
    {
      v23 = calloc(__count, 1uLL);
      *v5 = v23;
      if (v23)
      {
        memcpy(v23, __src, __count);
        *v3 = __count;
      }

      else
      {
        sub_100007E88();
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v25, v26, v27, v28, v29, v30, v31, ":", 2307, "", "");
    sub_100007E50();
  }

LABEL_10:
  sub_100005410();
}

uint64_t sub_100364A78()
{
  sub_100007F2C();
  sub_100007E18(__stack_chk_guard);
  if (sub_100004530())
  {
    if (v1)
    {
      sub_100007DF4();
      sub_100007DC8();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
      if (!v0)
      {
        sub_1000080F4();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v15, v16, v17, v18, v19, v20, ":", 2339, "", "");
  }

  return v0;
}

uint64_t sub_100364B8C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v28 = v1;
  v24 = 4096;
  v6 = 3758097084;
  v26 = 0;
  memset(__src, 0, sizeof(__src));
  v7 = sub_100004530();
  if (v7)
  {
    if (v3)
    {
      v8 = v7;
      bzero(v27, 0x1000uLL);
      v14 = sub_100007DA4(v8, v5, &v28, v9, v10, v11, v12, v13, v27, &v24);
      if (v14)
      {
        return v14;
      }

      else
      {
        if (!sub_10036B598(v27))
        {
          memcpy(v3, __src, 0x42uLL);
        }

        return 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 2409, "", "");
  }

  return v6;
}

void sub_100364D10()
{
  sub_1000081EC();
  __chkstk_darwin(v1);
  sub_100008074();
  sub_100007DD8(__stack_chk_guard);
  v33 = 4096;
  v34 = v2;
  v3 = sub_100004530();
  if (v3)
  {
    if (v0)
    {
      v11 = v3;
      v12 = sub_1000080A0(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35[0]);
      bzero(v12, v13);
      memset_s(v0, 0x68uLL, 0, 0x68uLL);
      if (!sub_100007E94(v11, 0x39u, &v34, 1u, v14, v15, v16, v17, v35, &v33))
      {
        sub_10036C3EC(v35, v33, v0);
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v22, v23, v24, v25, v26, v27, ":", 2440, "", "");
  }

  sub_100007FCC();
  sub_1000081D8();
}

void sub_100364E6C()
{
  sub_1000081EC();
  v1 = v0;
  v3 = v2;
  v26[0] = v4;
  v26[1] = v5;
  v26[2] = v6;
  v26[3] = v7;
  __count = 2048;
  v8 = sub_100004530();
  if (v8)
  {
    v9 = v8;
    bzero(__src, 0x800uLL);
    if (sub_100007E94(v9, 0x3Bu, v26, 4u, v10, v11, v12, v13, __src, &__count))
    {
      goto LABEL_11;
    }

    if (__count > 0x800)
    {
      sub_100008100();
    }

    else if (v3 && v1)
    {
      if (__count)
      {
        v14 = calloc(__count, 1uLL);
        *v3 = v14;
        if (!v14)
        {
          sub_100007E88();
          goto LABEL_11;
        }

        memcpy(v14, __src, __count);
        v15 = __count;
      }

      else
      {
        v15 = 0;
      }

      sub_1000080E8(v15);
    }
  }

  else
  {
    sub_100007F54();
    sub_1000053B4();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 2580, "", "");
  }

LABEL_11:
  sub_1000081D8();
}

void sub_100364FEC()
{
  sub_1000081EC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v25[0] = v8;
  __count = 2048;
  v9 = sub_100004530();
  if (v9)
  {
    v10 = v9;
    bzero(__src, 0x800uLL);
    if (!sub_10000545C(v10, 0x3Du, v25, 1u, v7, v5, v11, v12, __src, &__count) && __count <= 0x800 && v3 && v1)
    {
      if (__count)
      {
        v13 = calloc(__count, 1uLL);
        *v3 = v13;
        if (!v13)
        {
          sub_100007E88();
          goto LABEL_11;
        }

        memcpy(v13, __src, __count);
        v14 = __count;
      }

      else
      {
        v14 = 0;
      }

      *v1 = v14;
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 2621, "", "");
  }

LABEL_11:
  sub_1000081D8();
}

void sub_100365178()
{
  sub_100005428();
  v4 = v3;
  v6 = v5;
  sub_1000080D4();
  v29[0] = v7;
  v27 = 0;
  v26 = 0;
  bzero(__src, 0x800uLL);
  __count = 2048;
  sub_10000ABA8(&v27, &v26, 2, v8, v9, v10, v11, v12, v2);
  if (v27)
  {
    v13 = sub_100004530();
    if (!v13)
    {
      sub_1000053B4();
      fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v1, v0, v21, v22, v23, v24, ":", 2652, "", "");
      goto LABEL_12;
    }

    if (sub_100007F10(v13, 0x3Eu, v29, v14, v27, v26, v15, v16, __src, &__count))
    {
      goto LABEL_12;
    }

    if (__count > 0x800)
    {
      sub_100008100();
      goto LABEL_12;
    }

    if (v6 && v4)
    {
      if (!__count)
      {
        v18 = 0;
        goto LABEL_11;
      }

      v17 = calloc(__count, 1uLL);
      *v6 = v17;
      if (v17)
      {
        memcpy(v17, __src, __count);
        v18 = __count;
LABEL_11:
        sub_1000080E8(v18);
      }
    }
  }

LABEL_12:
  free(v27);
  sub_100005410();
}

uint64_t sub_100365328(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (sub_100365378(off_1004A64A8, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100365378(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4 && a5 && a6 && a4 >= 1)
  {
    sub_100007D84();
    sub_10036A038();
    if (a2)
    {
      if (*a6 == 8)
      {
        v10 = sub_10036A1EC();
        result = 0;
        *a5 = v10;
        return result;
      }

      return 0xFFFFFFFFLL;
    }

    v11 = ccder_decode_tl();
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    v12 = v11;
    result = 0;
    *a5 = v12;
    *a6 = 0;
  }

  return result;
}

uint64_t sub_1003654A8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (sub_100365378(off_1004A64D8, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003654F8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = sub_100365378(off_1004A64C0, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_100365568(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = sub_100365378(off_1004A64B8, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

void sub_1003655D8()
{
  sub_1000081EC();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v28[0] = v1;
  v28[1] = v4;
  v28[2] = v5;
  v28[3] = v6;
  bzero(v27, 0x1000uLL);
  __n[0] = 4096;
  v7 = sub_100004530();
  if (v7)
  {
    if (!sub_1000053C8(v7, 0x48u, v28, 4u, v8, v9, v10, v11, v27, __n))
    {
      if (__n[0] - 4097 < 0xFFFFFFFFFFFFF000)
      {
        sub_100008100();
      }

      else
      {
        v25 = 0u;
        v26 = 0;
        v22 = 0u;
        v23 = 0u;
        __n[1] = off_1004A6530;
        v24 = off_1004A6538;
        sub_100007D84();
        sub_10036A038();
        if (v22)
        {
          ccder_decode_tl();
        }

        else if (*(&v24 + 1))
        {
          v12 = sub_10036A1EC();
          if (v12 <= 0xFF)
          {
            *v3 = v12;
          }
        }
      }
    }
  }

  else
  {
    sub_100007F54();
    sub_1000053B4();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 2923, "", "");
  }

  sub_100007FB4(v27, __n[0]);
  sub_1000081D8();
}

void sub_100365854()
{
  sub_1000081EC();
  __chkstk_darwin(v2);
  v4 = v3;
  v6 = v5;
  sub_100007FA8();
  *&v50[4091] = v7;
  sub_100008218(v7, v8, v9, v10, v11, v12, v13, v14, v26, v28, v30, v32, v34, v36, v38, v40, v42, v43, v44, v45, v46, __n);
  if (v1 && v0 && v6 && v4)
  {
    if (sub_100004530())
    {
      sub_100008084();
      if (!sub_100007DA4(v15, 0x5Au, &v50[4091], v16, v17, v18, v19, v20, v27, v29))
      {
        v21 = calloc(5uLL, 1uLL);
        *v6 = v21;
        if (v21)
        {
          *v4 = 5;
          v22 = v48;
          v21[4] = v49;
          *v21 = v22;
          v23 = calloc(0xFFBuLL, 1uLL);
          *v1 = v23;
          if (v23)
          {
            *v0 = 4091;
            memcpy(v23, v50, 0x1000uLL);
          }
        }
      }
    }

    else
    {
      sub_1000053B4();
      fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v25, v31, v33, v35, v37, v39, v41, ":", 3021, "", "");
    }
  }

  sub_100007FB4(&v48, 0x1000uLL);
  sub_100007FCC();
  sub_1000081D8();
}

void sub_100365A28(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  sub_1000080AC();
  v45 = v5;
  sub_100008218(v5, v6, v7, v8, v9, v10, v11, v12, v22, v24, v26, v28, v30, v32, v34, v36, v38, v39, v40, v41, v42, __count);
  if (v4 && v2)
  {
    if (sub_100004530())
    {
      sub_100008084();
      if (!sub_100007DA4(v13, 0x59u, &v45, v14, v15, v16, v17, v18, v23, v25))
      {
        v19 = calloc(0x1000uLL, 1uLL);
        *v4 = v19;
        if (v19)
        {
          *v2 = 4096;
          memcpy(v19, __src, 0x1000uLL);
        }
      }
    }

    else
    {
      sub_1000053B4();
      fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v27, v29, v31, v33, v35, v37, ":", 3053, "", "");
    }
  }

  memset_s(__src, 0x1000uLL, 0, 0x1000uLL);
  sub_100007FCC();
}

void sub_100365BBC()
{
  sub_100005428();
  v39 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  memset(v42, 0, 128);
  v40 = 128;
  v15 = sub_10000976C(v9, v7, v5, v3);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v18 = sub_100008094();
  bzero(v18, v19);
  if (!sub_10036CA40(v12, v10, v8, v6, v4, v17, v15))
  {
    v41[0] = v14;
    v41[1] = v17;
    v41[2] = v15;
    if (v2)
    {
      v20 = v39;
      if (v39)
      {
        v21 = sub_100004530();
        if (v21)
        {
          if (!sub_1000053C8(v21, 0x9Bu, v41, 3u, v22, v23, v24, v25, v42, &v40))
          {
            v26 = calloc(v40, 1uLL);
            *v2 = v26;
            if (v26)
            {
              v27 = v40;
              *v20 = v40;
              memcpy(v26, v42, v27);
            }
          }
        }

        else
        {
          sub_1000053B4();
          fprintf(v30, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v31, v32, v33, v34, v35, v36, v37, ":", 3152, "", "");
          sub_1000080AC();
        }
      }
    }
  }

  v28 = sub_100008094();
  memset_s(v28, v29, 0, v15);
  sub_100007FB4(v42, v40);
  sub_100005410();
}

void sub_100365DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, void *a24, size_t *a25)
{
  sub_100005428();
  v26 = __chkstk_darwin(v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v64 = 0;
  v65 = 0;
  v63 = v26;
  bzero(__src, 0x4000uLL);
  v60 = a23;
  __count = 0x4000;
  v57[0] = v40;
  memset(__n, 0, sizeof(__n));
  v57[1] = v38;
  v57[2] = v36;
  v57[3] = v34;
  v57[4] = v32;
  v57[5] = v30;
  v57[6] = v28;
  v58 = a21;
  v59 = a22;
  if (sub_10036BE84(v57, &__n[1], __n) || (v64 = *&__n[1], v65 = __n[0], !a24))
  {
    sub_100007F60();
  }

  else
  {
    sub_100007F60();
    if (a25)
    {
      v41 = sub_100004530();
      if (v41)
      {
        if (!sub_1000053C8(v41, 0x9Fu, &v63, 3u, v42, v43, v44, v45, __src, &__count))
        {
          v46 = calloc(__count, 1uLL);
          *a24 = v46;
          if (v46)
          {
            v47 = __count;
            *a25 = __count;
            memcpy(v46, __src, v47);
          }
        }
      }

      else
      {
        sub_1000053B4();
        fprintf(v48, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v49, v50, v51, v52, v53, v54, v55, ":", 3201, "", "");
      }
    }
  }

  sub_100007FB4(*&__n[1], __n[0]);
  free(*&__n[1]);
  sub_100007FB4(__src, __count);
  sub_100005410();
}

void sub_100365FF0()
{
  sub_100008244();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v11 = sub_1000080A0(v1, v4, v2, v6, v7, v8, v9, v10, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v52, v53, v54[0]);
  bzero(v11, v12);
  v51 = v54;
  v52 = &v55;
  v53 = 4096;
  if (v5 && v3)
  {
    v21 = sub_100004530();
    if (v21)
    {
      v22 = v21;
      v13 = sub_10036B284(&v51);
      if (v13)
      {
        v13 = sub_10036B2E0(&v51);
        if (v13)
        {
          sub_1000053E8();
          v13 = ccder_blob_encode_tl();
          if (v13)
          {
            v13 = sub_100007E68(v22, 0x55u, v15, v16, v52, &v55 - v52, v19, v20, v54, &v53);
            if (!v13)
            {
              v13 = sub_10036BA78(v54);
            }
          }
        }
      }
    }

    else
    {
      sub_1000053B4();
      v13 = fprintf(v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v26, v32, v34, v36, v38, v40, v42, ":", 3262, "", "");
    }
  }

  v23 = sub_1000080A0(v13, v14, v15, v16, v17, v18, v19, v20, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v51, v52, v53, v54[0]);
  memset_s(v23, v24, 0, 0x1000uLL);
  sub_100007FCC();
  sub_100008230();
}

uint64_t sub_100366208(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = 3758097098;
  output = 0;
  input = v5;
  HIDWORD(v54) = 1;
  v11 = sub_1000080A0(v1, v5, v2, v6, v7, v8, v9, v10, outputStruct, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, inputStruct, v54, v55);
  bzero(v11, v12);
  v52 = &v55;
  inputStruct = &output;
  if (v3)
  {
    v21 = sub_100004530();
    if (v21)
    {
      v22 = v21;
      v13 = sub_10036B2E0(&v52);
      if (v13)
      {
        sub_1000053E8();
        v13 = ccder_blob_encode_tl();
        if (v13)
        {
          v13 = IOConnectCallMethod(v22, 0x4Eu, &input, 1u, inputStruct, &output - inputStruct, &output, &v54 + 1, 0, 0);
          v4 = v13;
          if (!v13)
          {
            *v3 = output;
          }
        }
      }
    }

    else
    {
      sub_1000053B4();
      v13 = fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v27, v33, v35, v37, v39, v41, v43, ":", 3305, "", "");
      v4 = 3758097084;
    }
  }

  else
  {
    v4 = 3758097090;
  }

  v23 = sub_1000080A0(v13, v14, v15, v16, v17, v18, v19, v20, outputStructa, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v52, inputStruct, v54, v55);
  memset_s(v23, v24, 0, 0x1000uLL);
  return v4;
}

void sub_100366398()
{
  sub_100005428();
  __chkstk_darwin(v0);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v26[0] = v7;
  bzero(__s, 0x1000uLL);
  v22 = __s;
  v23 = v26;
  v24 = 4096;
  if (v6 && v4)
  {
    v8 = sub_100004530();
    if (v8)
    {
      v9 = v8;
      if (ccder_blob_encode_body_tl())
      {
        if (sub_10036B284(&v22))
        {
          if (sub_10036B2E0(&v22))
          {
            sub_1000053E8();
            if (ccder_blob_encode_tl())
            {
              if (!sub_100007F10(v9, 0x4Fu, v26, v10, v23, v26 - v23, v11, v12, __s, &v24))
              {
                *&v21 = __s;
                *(&v21 + 1) = &__s[v24];
                sub_1000053E8();
                if (ccder_blob_decode_range())
                {
                  if (v2)
                  {
                    sub_100009638(&v21, 0, v2);
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_1000053B4();
      fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 3333, "", "");
    }
  }

  memset_s(__s, 0x1000uLL, 0, 0x1000uLL);
  sub_100005410();
}

void sub_1003665C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100365FF0();
  }
}

void sub_10036667C()
{
  sub_100005428();
  __chkstk_darwin(v0);
  sub_1000080D4();
  bzero(v4, 0x1000uLL);
  bzero(v3, 0x1000uLL);
  v2[0] = v4;
  v2[1] = &v5;
  v1[0] = v3;
  v1[1] = v4;
  if (sub_10036B284(v2))
  {
    if (sub_10036B284(v2))
    {
      sub_1000053E8();
      if (ccder_blob_encode_tl())
      {
        if (sub_10036B284(v1))
        {
          if (sub_10036B284(v1))
          {
            sub_1000053E8();
            if (ccder_blob_encode_tl())
            {
              sub_10035EC00();
            }
          }
        }
      }
    }
  }

  sub_100005410();
}

void sub_1003667F0(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_100007FA8();
  bzero(v4, 0x4000uLL);
  sub_100007E5C();
  sub_10035EC00();
  if (!v3)
  {
    if (ccder_decode_sequence_tl() && ccder_decode_tl())
    {
      __memcpy_chk();
      if (v2)
      {
        *v2 = 0;
      }

      if (v1)
      {
        *v1 = 0;
      }
    }

    else
    {
      sub_100007E50();
    }
  }
}

void sub_100366944()
{
  sub_100005428();
  __chkstk_darwin(v2);
  sub_100008064();
  v4 = v3;
  sub_1000054B4();
  *v6 = v5;
  bzero(__src, 0x8000uLL);
  v28 = 0;
  __count = 0x8000;
  v27 = 0;
  if (v1)
  {
    v7 = sub_100004530();
    if (v7)
    {
      v13 = v7;
      if (v4)
      {
        v14 = v4;
      }

      else
      {
        v14 = "";
      }

      sub_10000ABA8(&v28, &v27, 2, v8, v9, v10, v11, v12, v14);
      if (!sub_100007F10(v13, 0x50u, v31, v15, v28, v27, v16, v17, __src, &__count))
      {
        v18 = calloc(__count, 1uLL);
        *v1 = v18;
        if (v18)
        {
          memcpy(v18, __src, __count);
          *v0 = __count;
        }
      }
    }

    else
    {
      sub_1000053B4();
      fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 3582, "", "");
    }
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  free(v28);
  sub_100008168();
  sub_100005410();
}

uint64_t sub_100366C78()
{
  sub_1000054B4();
  if (v2 && v1 && !sub_10035F984(0xFFFFFFFFLL))
  {
    sub_10036A24C(off_1004A66C8);
  }

  free(0);
  return v0;
}

uint64_t sub_100366D3C(uint64_t a1, void *a2)
{
  sub_1000054B4();
  v9 = 0;
  v10 = 0;
  v8 = 0;
  if (!sub_10035F984(v4) && sub_10036A174(off_1004A6748, v10, v10 + v9, &v8))
  {
    if (a2)
    {
      v5 = time(0);
      v2 = 0;
      v6 = v5 - v8;
      if (v5 <= v8)
      {
        v6 = 0;
      }

      *a2 = v6;
    }

    else
    {
      v2 = 0;
    }
  }

  free(v10);
  return v2;
}

void sub_100366DE0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  sub_100007F60();
  v42 = v3;
  sub_100008218(v3, v4, v5, v6, v7, v8, v9, v10, v19, v21, v23, v25, v27, v29, v31, v33, v35, v36, v37, v38, v39, __n);
  if (sub_100004530())
  {
    if (v2)
    {
      sub_100008084();
      if (!sub_100007DA4(v11, 0x8Eu, &v42, v12, v13, v14, v15, v16, v20, v22))
      {
        sub_10036B598(v41);
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v24, v26, v28, v30, v32, v34, ":", 3797, "", "");
  }

  sub_100007FB4(v41, 0x1000uLL);
  sub_100007FCC();
}

uint64_t sub_100366F24()
{
  sub_100007E88();
  v20 = 266;
  result = (v2 + 6);
  if (v0)
  {
    v4 = v1;
    if (v1)
    {
      v5 = v0;
      v6 = sub_100004530();
      if (v6)
      {
        v19 = *v4;
        result = sub_100007EB4(v6, 0x68u, &v20, 1u, v7, v8, v9, v10, v5, &v19);
        if (!result)
        {
          *v4 = v19;
        }
      }

      else
      {
        sub_1000053B4();
        fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 3823, "", "");
        return sub_100007E50();
      }
    }
  }

  return result;
}

uint64_t sub_10036702C()
{
  sub_100007E88();
  v21 = (v2 << 8) | 1;
  result = (v3 + 6);
  if (v5)
  {
    v6 = v1;
    if (v1)
    {
      sub_100008024();
      v7 = sub_100004530();
      if (v7)
      {
        v20 = *v6;
        result = sub_100007EB4(v7, 0x68u, &v21, 1u, v8, v9, v10, v11, v0, &v20);
        if (!result)
        {
          *v6 = v20;
        }
      }

      else
      {
        sub_1000053B4();
        fprintf(v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v13, v14, v15, v16, v17, v18, v19, ":", 3847, "", "");
        return sub_100007E50();
      }
    }
  }

  return result;
}

void sub_100367164()
{
  sub_100008244();
  __chkstk_darwin(v1);
  v3 = v2;
  sub_100008074();
  v5 = v4;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  bzero(v22, 0x4000uLL);
  v20 = 0x4000;
  v21[0] = 1;
  v21[1] = v5;
  v6 = sub_100004530();
  if (v6)
  {
    if (!sub_100007E94(v6, 0x87u, v21, 2u, v7, v8, v9, v10, v22, &v20))
    {
      __memcpy_chk();
      *v3 = 44;
      v11 = calloc(0x2CuLL, 1uLL);
      *v0 = v11;
      if (v11)
      {
        __memcpy_chk();
      }

      else
      {
        sub_100007E88();
      }
    }
  }

  else
  {
    sub_100007F54();
    sub_1000053B4();
    fprintf(v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v13, v14, v15, v16, v17, v18, v19, ":", 3883, "", "");
  }

  sub_1000080B8(v22);
  sub_100008230();
}

uint64_t sub_100367300()
{
  sub_100008064();
  sub_100367164();
  if (v0)
  {
    return v0;
  }

  else
  {
    return 3758604312;
  }
}

void sub_100367430()
{
  sub_1000081EC();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v33[0] = 2;
  v33[1] = v1;
  bzero(v29, 0xC4uLL);
  bzero(v28, 0x4000uLL);
  v27 = 0x4000;
  v10 = sub_100004530();
  if (v10)
  {
    if (!sub_1000053C8(v10, 0x87u, v33, 2u, v11, v12, v13, v14, v28, &v27))
    {
      __memcpy_chk();
      v15 = calloc(0x28uLL, 1uLL);
      *v9 = v15;
      if (v15)
      {
        *v7 = 40;
        v16 = *&v29[8];
        v17 = v30;
        v15[4] = v31;
        *v15 = v16;
        *(v15 + 1) = v17;
        v18 = calloc(0x91uLL, 1uLL);
        *v5 = v18;
        if (v18)
        {
          *v3 = 145;
          memcpy(v18, v32, 0x91uLL);
        }
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 3943, "", "");
  }

  sub_1000080B8(v28);
  memset_s(v29, 0xC4uLL, 0, 0xC4uLL);
  sub_1000081D8();
}

uint64_t sub_100367648(uint64_t a1)
{
  v2 = sub_100004FE8();
  if (v2)
  {
    return sub_100007E68(v2, 0xCu, v3, v4, *a1, *(a1 + 8), v5, v6, 0, 0);
  }

  else
  {
    return sub_100007E50();
  }
}

uint64_t sub_100367690(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = v2;
  sub_100008034(__stack_chk_guard);
  v6 = 0x4000;
  bzero(__src, 0x4000uLL);
  __count = 0x4000;
  v7 = sub_100004530();
  if (v7)
  {
    v6 = (v1 + 6);
    if (v5 && v4)
    {
      v12 = sub_1000053C8(v7, 0x96u, 0, 0, v8, v9, v10, v11, __src, &__count);
      if (v12)
      {
        v6 = v12;
      }

      else
      {
        v13 = calloc(__count, 1uLL);
        *v5 = v13;
        if (v13)
        {
          v14 = __count;
          *v4 = __count;
          memcpy(v13, __src, v14);
          v6 = 0;
        }

        else
        {
          v6 = (v1 + 1);
        }
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 3992, "", "");
    sub_100007F54();
  }

  sub_1000080B8(__src);
  return v6;
}

void sub_1003677F4()
{
  sub_100005428();
  if (v1 && v0 <= 0x30)
  {
    v2 = sub_100004530();
    if (v2)
    {
      v3 = v2;
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_uint64();
      ccder_sizeof_raw_octet_string();
      v4 = ccder_sizeof();
      v5 = v4;
      __chkstk_darwin(v4);
      v7 = &v18[-v6];
      bzero(&v18[-v6], v5);
      ccder_encode_raw_octet_string();
      ccder_encode_uint64();
      ccder_encode_raw_octet_string();
      if (ccder_encode_constructed_tl() == v7)
      {
        sub_10000545C(v3, 0x72u, 0, 0, v7, v5, v8, v9, 0, 0);
      }

      else
      {
        sub_100007E88();
      }
    }

    else
    {
      sub_1000054B4();
      sub_1000053B4();
      fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 4036, "", "");
    }
  }

  sub_100005410();
}

void sub_1003679EC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v40 = v1;
  sub_100008218(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v23, v25, v27, v29, v31, v33, v34, v35, v36, v37, __n);
  __n = 4096;
  v9 = sub_100004530();
  if (v9)
  {
    v15 = sub_100007DA4(v9, 0x8Bu, &v40, v10, v11, v12, v13, v14, v39, &__n);
    v16 = __n;
    if (!v15)
    {
      sub_100007F60();
      if (v16 - 4097 >= 0xFFFFFFFFFFFFF000)
      {
        sub_10036B7EC(v39);
        v16 = __n;
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v22, v24, v26, v28, v30, v32, ":", 4130, "", "");
    v16 = 4096;
  }

  sub_100007FB4(v39, v16);
  sub_100007FCC();
}

uint64_t sub_100367B3C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v18 = 4096;
  if (!v1)
  {
    return 4294967285;
  }

  v2 = v1;
  v3 = sub_100004530();
  if (v3)
  {
    v4 = v3;
    bzero(v19, 0x1000uLL);
    result = sub_1000053C8(v4, 0x98u, 0, 0, v5, v6, v7, v8, v19, &v18);
    if (!result)
    {
      if (v18 == 8)
      {
        result = 0;
        *v2 = v19[0];
      }

      else
      {
        return sub_100008118();
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 4183, "", "");
    return sub_100007E50();
  }

  return result;
}

void sub_100367C78()
{
  sub_1000081EC();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v26 = 4096;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v9 = sub_100004530();
  if (v9)
  {
    v10 = v9;
    bzero(v27, 0x1000uLL);
    if (!sub_1000053C8(v10, 0x9Eu, 0, 0, v11, v12, v13, v14, v27, &v26) && !sub_10036CEE0(v27, v26, &v23))
    {
      if (v8)
      {
        *v8 = *(&v25 + 1);
      }

      if (v7)
      {
        *v7 = v25;
      }

      if (v5)
      {
        *v5 = *(&v24 + 1);
      }

      if (v3)
      {
        *v3 = v24;
      }
    }
  }

  else
  {
    sub_1000053B4();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 4204, "", "");
  }

  sub_1000081D8();
}

uint64_t sub_100367DF8(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, &value);
  if (result)
  {
    if (CFGetTypeID(value) == a3)
    {
      if (CFNumberGetTypeID() == a3)
      {
        v8 = 0;
        if (!CFNumberGetValue(value, kCFNumberSInt64Type, &v8))
        {
          return 0xFFFFFFFFLL;
        }

        v5 = sub_100008094();
        if (sub_10036AC00(v5, v6, v7))
        {
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      if (CFBooleanGetTypeID() == a3)
      {
        CFBooleanGetValue(value);
        sub_100008094();
        if (sub_10036AAD8())
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (CFDataGetTypeID() != a3)
        {
          return 0xFFFFFFFFLL;
        }

        CFDataGetBytePtr(value);
        CFDataGetLength(value);
        sub_100008094();
        if (sub_10036A93C())
        {
          return 0xFFFFFFFFLL;
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1003694E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(__s, 0, sizeof(__s));
  if (a4 == 3)
  {
    ccsha256_di();
    cchmac();
    v5 = 0;
    *a3 = __s[0];
    *(a3 + 2) = BYTE2(__s[0]);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  return v5;
}

uint64_t sub_1003695B0(const char *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  v5 = 0;
  sub_1003694E4(a2, a3, &v5, 3);
  return sub_100008944(a1, &v5, 3uLL);
}

uint64_t sub_100369608(unsigned __int8 *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v5 = 0xFFFFFFFFLL;
  if ((a2 & 1) == 0)
  {
    v6 = a1;
    if (a1)
    {
      if (a3 && a4)
      {
        v9 = a2 >> 1;
        v10 = calloc(a2 >> 1, 1uLL);
        if (v10)
        {
          if (a2 >= 2)
          {
            v11 = a2 >> 1;
            v12 = v10;
            do
            {
              v13 = *v6;
              v14 = v13 - 48;
              v15 = v13 - 97;
              if ((v13 - 65) >= 6)
              {
                v16 = -1;
              }

              else
              {
                v16 = v13 - 55;
              }

              v17 = v13 - 87;
              if (v15 > 5)
              {
                v17 = v16;
              }

              if (v14 < 0xA)
              {
                v17 = v14;
              }

              v18 = 16 * v17;
              v19 = v6[1];
              v20 = v19 - 48;
              v21 = v19 - 97;
              if ((v19 - 65) >= 6)
              {
                v22 = -1;
              }

              else
              {
                v22 = v19 - 55;
              }

              v23 = v19 - 87;
              if (v21 > 5)
              {
                v23 = v22;
              }

              if (v20 < 0xA)
              {
                v23 = v20;
              }

              *v12++ = v23 | v18;
              v6 += 2;
              --v11;
            }

            while (v11);
          }

          v5 = 0;
          *a3 = v10;
          *a4 = v9;
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_10036970C(void *a1, uint64_t a2, char a3)
{
  memset_s(a1, 0x10uLL, 0, 0x10uLL);
  if (a2 && *a2 && (v6 = *(a2 + 8)) != 0)
  {
    if (a3)
    {
      return 4294967285;
    }

    else
    {
      v8 = calloc(v6, 1uLL);
      if (v8)
      {
        *a1 = v8;
        v9 = *a2;
        v10 = *(a2 + 8);
        a1[1] = v10;
        memcpy(v8, v9, v10);
        return 0;
      }

      else
      {
        return 4294967279;
      }
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_1003697A0(void **a1, _DWORD *a2, uint64_t a3, unsigned int a4, char a5)
{
  __s = 0;
  __n = 0;
  v10[0] = a3;
  v10[1] = a4;
  v7 = sub_10036970C(&__s, v10, a5);
  if (v7)
  {
    v8 = v7;
LABEL_7:
    memset_s(__s, __n, 0, __n);
    free(__s);
    return v8;
  }

  if (HIDWORD(__n))
  {
    v8 = 4294967286;
    goto LABEL_7;
  }

  v8 = 0;
  *a2 = __n;
  *a1 = __s;
  return v8;
}

uint64_t sub_1003698B0(int *a1, uint64_t (*a2)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), char a3, uint64_t *a4, unsigned int a5, uint64_t a6, unsigned int *a7, int a8)
{
  HIDWORD(v52) = 0;
  v57 = 0u;
  v58 = 0u;
  __s = 0u;
  v56 = 0u;
  *v53 = 0u;
  v54 = 0u;
  v9 = 0xFFFFFFFFLL;
  if (a6 && a7)
  {
    v14 = a1;
    if (a1)
    {
      v15 = *a1;
      if ((*a1 - 1) < 2)
      {
        if ((a3 & 4) != 0)
        {
          v16 = 64;
        }

        else
        {
          v16 = 72;
        }

        HIDWORD(v52) = v16;
        v9 = 0xFFFFFFFFLL;
        if (a2)
        {
          goto LABEL_45;
        }

        v17 = a5 == 32 && *a7 >= v16;
        if (!v17)
        {
          goto LABEL_45;
        }

        v18 = v16;
        if (v15 == 1)
        {
          LODWORD(a1) = sub_100008C8C((a1 + 10), &__s);
        }

        else
        {
          v30 = *(a1 + 6);
          __s = *(a1 + 2);
          v56 = v30;
          v31 = *(a1 + 14);
          v57 = *(a1 + 10);
          v58 = v31;
        }

        if ((a3 & 0x80) == 0)
        {
          v32 = v56;
          *a6 = __s;
          *(a6 + 16) = v32;
          if ((a3 & 4) != 0)
          {
            v33 = ccaes_cbc_encrypt_mode();
            v34 = sub_100008F68(v33, 32, &v57, &unk_1004E28B0, 0x20uLL);
            v35 = sub_100008E98(v34);
            LODWORD(a1) = sub_100008C14(v35, 166, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_39:
            v47 = v18;
            v9 = 0;
LABEL_44:
            *a7 = v47;
            goto LABEL_45;
          }

          LODWORD(v52) = 40;
          if ((a3 & 8) != 0)
          {
            v39 = ccsha256_di();
            v51 = v53;
            sub_100008E50(v39, v40, &v57);
          }

          sub_100008E88();
          LODWORD(a1) = sub_1000040CC(v41, v42, v43, v44, a4, 0x20u, v45, v46);
          if (!a1)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_48;
      }

      if (v15)
      {
        goto LABEL_48;
      }
    }

    if (a2)
    {
      v21 = sub_100008EA4();
      LODWORD(a1) = sub_10035DFC8(v21, v22);
      if (a1)
      {
        sub_100008E78();
        if (!v17)
        {
          goto LABEL_48;
        }

        v23 = 0;
        v24 = 0;
        v25 = a2;
        v26 = a4;
LABEL_42:
        LODWORD(a1) = sub_1000040CC(v23, v24, 0xA6A6A6A6A6A6A6A6, v25, v26, a5, a6, &v52 + 1);
        if (!a1)
        {
          goto LABEL_43;
        }

LABEL_48:
        v9 = 0xFFFFFFFFLL;
        goto LABEL_45;
      }
    }

    else
    {
      if ((a3 & 4) != 0)
      {
        if ((a5 & 0xF) != 0 || *a7 < a5)
        {
          goto LABEL_48;
        }

        HIDWORD(v52) = a5;
        v36 = ccaes_cbc_encrypt_mode();
        v37 = sub_100008F68(v36, 32, v14 + 12, &unk_1004E28B0, a5);
        v38 = sub_100008E98(v37);
        LODWORD(a1) = sub_100008C14(v38, 121, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_43:
        v9 = 0;
        v47 = HIDWORD(v52);
        goto LABEL_44;
      }

      v28 = sub_100008EA4();
      LODWORD(a1) = sub_10035DFC8(v28, v29);
      if (a1)
      {
        sub_100008E78();
        if (!v17)
        {
          goto LABEL_48;
        }

        if ((a3 & 8) != 0)
        {
          v48 = ccsha256_di();
          v51 = v53;
          sub_100008E50(v48, v49, v14 + 12);
          v23 = v53;
        }

        else
        {
          v23 = (v14 + 12);
        }

        v24 = 32;
        v25 = 0;
        v26 = a4;
        goto LABEL_42;
      }
    }

    v9 = 4294967285;
  }

LABEL_45:
  if ((a3 & 8) != 0)
  {
    sub_1000055A4(a1, a2, a3, a4, a5, a6, a7, a8, v51, v52);
  }

  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  return v9;
}

uint64_t sub_100369BE4(_DWORD *a1, uint64_t (*a2)(void, void *, unint64_t *, unint64_t *, uint64_t), uint64_t a3, void *a4, unsigned int a5, void *a6, unsigned int *a7)
{
  v7 = a3;
  HIDWORD(v51) = 0;
  __s = 0u;
  v55 = 0u;
  v8 = 0xFFFFFFFFLL;
  if (a4 && a5)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    if (*a1 != 1)
    {
      if (!*a1)
      {
LABEL_6:
        if (a5 <= 0x28)
        {
          if (a2)
          {
            v15 = sub_100008EA4();
            if (!sub_1000044EC(v15, v16))
            {
              goto LABEL_40;
            }

            sub_100008E78();
            if (!v17)
            {
              goto LABEL_40;
            }

            v18 = &v51 + 1;
            v19 = 0;
            v20 = 0;
            v21 = 0xA6A6A6A6A6A6A6A6;
            v22 = a2;
          }

          else
          {
            if ((a3 & 4) != 0)
            {
              if ((a5 & 0xF) != 0 || *a7 < a5)
              {
                goto LABEL_40;
              }

              HIDWORD(v51) = a5;
              v25 = ccaes_cbc_decrypt_mode();
              v26 = sub_100008F68(v25, 32, (a1 + 3), &unk_1004E28B0, a5);
              v27 = sub_100008E98(v26);
              sub_100008C14(v27, 273, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_33:
              v8 = 0;
              *a7 = HIDWORD(v51);
              goto LABEL_37;
            }

            v23 = sub_100008EA4();
            if (!sub_1000044EC(v23, v24))
            {
              goto LABEL_40;
            }

            sub_100008E78();
            if (!v17)
            {
              goto LABEL_40;
            }

            if ((v7 & 8) != 0)
            {
              v39 = ccsha256_di();
              sub_100008E50(v39, v40, (a1 + 3));
            }

            sub_100008E88();
          }

          if (!sub_100004480(v19, v20, v21, v22, a4, a5, a6, v18))
          {
            goto LABEL_33;
          }
        }

        goto LABEL_42;
      }

LABEL_24:
      v8 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    HIDWORD(v51) = 32;
    if (*a7 >= 0x20)
    {
      *v52 = 0uLL;
      v53 = 0uLL;
      if ((a3 & 4) != 0)
      {
        if (a5 == 64)
        {
          sub_100008EB0(a1, a2, a3, a4);
          v28 = ccaes_cbc_decrypt_mode();
          v29 = sub_100008F68(v28, 32, v52, &unk_1004E28B0, 0x20uLL);
          v30 = sub_100008E98(v29);
          v31 = sub_100008C14(v30, 296, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
          goto LABEL_36;
        }
      }

      else if (a5 == 72)
      {
        sub_100008EB0(a1, a2, a3, a4);
        if (v7 < 0)
        {
          goto LABEL_24;
        }

        LODWORD(v51) = 32;
        if ((v7 & 8) != 0)
        {
          v41 = ccsha256_di();
          p_s = &__s;
          sub_100008E50(v41, v42, v52);
        }

        sub_100008E88();
        v31 = sub_100004480(v43, v44, v45, v46, v47, 0x28u, a6, v48);
        if (v31)
        {
          sub_1000055A4(v31, v32, v33, v34, v35, v36, v37, v38, p_s, v51);
LABEL_42:
          v8 = 4294967277;
          goto LABEL_37;
        }

LABEL_36:
        sub_1000055A4(v31, v32, v33, v34, v35, v36, v37, v38, p_s, v51, *v52, *&v52[8], v53, __s, v55);
        v8 = 0;
        *a7 = 32;
        goto LABEL_37;
      }
    }

LABEL_40:
    v8 = 4294967285;
  }

LABEL_37:
  if ((v7 & 8) != 0)
  {
    memset_s(&__s, 0x20uLL, 0, 0x20uLL);
  }

  return v8;
}

uint64_t sub_100369EC4(void *a1, void *a2, unint64_t *a3)
{
  v5 = cczp_bitlen();
  v6 = calloc(((v5 + 7) >> 2) | 1, 1uLL);
  if (!v6)
  {
    return 4294967279;
  }

  v7 = v6;
  v8 = ((cczp_bitlen() + 7) >> 2) | 1;
  ccec_export_pub();
  result = 0;
  *a2 = v7;
  *a3 = v8;
  return result;
}

uint64_t sub_100369FD0(uint64_t a1, uint64_t a2)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10036A038()
{
  sub_1000099E4();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        sub_100009A5C(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10036A108(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_1000098D8();
    sub_10036A038();
    if (a2)
    {
      if (a3)
      {
        *a2 = 0;
        *a3 = 0;
      }
    }
  }

  return 0;
}

uint64_t sub_10036A174(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (result)
  {
    sub_1000098EC();
    sub_10036A038();
    return 0;
  }

  return result;
}

uint64_t sub_10036A1EC()
{
  sub_100009A3C();
  if (!ccder_blob_decode_tl())
  {
    return 0;
  }

  v0 = v5;
  if ((v5 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v1 = v4;
  result = *v4 >> 7;
  do
  {
    v3 = *v1++;
    result = v3 | (result << 8);
    --v0;
  }

  while (v0);
  return result;
}

uint64_t sub_10036A24C(uint64_t result)
{
  if (result)
  {
    sub_1000098EC();
    sub_10036A038();
    return 0;
  }

  return result;
}

__n128 sub_10036A2E4(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v7 = sub_100009974(a1);
  if (sub_100009A74(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v18, v20))
  {
    *a4 = v19;
    *a3 = v21 - v19;
    result = v22;
    *v4 = v22;
  }

  return result;
}

uint64_t sub_10036A340()
{
  sub_1000099E4();
  *&v10 = v2;
  *(&v10 + 1) = v3;
  sub_1000053E8();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v9 = 0;
    v5 = v10;
    if (sub_10036A3EC(&v10, &v8, &v9))
    {
      do
      {
        v6 = v10 + v9;
        if (!v1(v5, v10 + v9 - v5, v0))
        {
          break;
        }

        *&v10 = v6;
        v5 = v6;
      }

      while ((sub_10036A3EC(&v10, &v8, &v9) & 1) != 0);
    }
  }

  return v4;
}

uint64_t sub_10036A3EC(__int128 *a1, void *a2, void *a3)
{
  v7 = *a1;
  result = ccder_blob_decode_tag();
  if (result)
  {
    result = ccder_blob_decode_len();
    if (result)
    {
      *a1 = v7;
      *a2 = 0;
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

BOOL sub_10036A468()
{
  sub_100009A3C();
  v0 = ccder_blob_decode_tl();
  result = 0;
  if (v0)
  {
    if (v3 == 1)
    {
      return *v2 != 0;
    }
  }

  return result;
}

uint64_t sub_10036A4B8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  sub_100009974(a1);
  sub_100009858();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_1000099BC(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return sub_10000987C(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return sub_10000987C(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_10036A52C()
{
  sub_1000099E4();
  v3 = v2;
  v5 = strlen(v4);
  v10 = 0;
  v11 = 0;
  v9[0] = 12;
  v9[1] = v5;
  result = 0xFFFFFFFFLL;
  if (v1 && v5 <= 0x10)
  {
    __memcpy_chk();
    __src = 0;
    v8 = 0;
    if (sub_100009338(v3, v9, 0, &__src, &v8))
    {
      if (v8 == v0)
      {
        memcpy(v1, __src, v0);
        return 0;
      }

      else
      {
        return 4294967277;
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t sub_10036A620(uint64_t a1)
{
  if (a1)
  {
    return sub_10036A038() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t sub_10036A668(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15++ = *(v14 + 1);
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, sub_10036CC18);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v25 = v17;
              v26 = &v17[v16];
              v19 = v8 - 1;
              v20 = v13 - v9 - 8;
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v23 = ccder_blob_encode_body();
                v20 = v22;
                if ((v23 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v25 != v26)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_10036A838()
{
  result = sub_100009A68();
  if (v0 && v3 && v4 && v5)
  {
    if (sub_100369FD0(v4, v5) <= (v5 - v4))
    {
      v6 = ccder_sizeof();
      if (!sub_100009A24(v6))
      {
        return 4294967279;
      }

      sub_100009944();
      v7 = ccder_blob_encode_body();
      if (v7)
      {
        sub_10000988C(v7, v8, v9, v10, v11, v12, v13, v14, v25, v27, v29, v31);
        sub_10000986C();
        sub_100009920(v15, v16, v17, v18, v19, v20, v21, v22, v26, v28, v30, v32);
        sub_10000986C();
        if (v23 == v1)
        {
          v24 = sub_100009A0C();
          if (v24)
          {
            return sub_10000983C(v24);
          }
        }
      }

      sub_100009900();
      free(v1);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10036A93C()
{
  result = sub_100009A68();
  if (v0 && v3 && v4)
  {
    ccder_sizeof();
    v5 = sub_1000099F0();
    if (sub_100009A24(v5))
    {
      sub_100009944();
      v6 = ccder_blob_encode_body();
      if (v6 && (sub_1000099D8(v6, v7, v8, v9, v10, v11, v12, v13, v32), v14 = ccder_blob_encode_tl(), v14) && (sub_10000988C(v14, v15, v16, v17, v18, v19, v20, v21, v33, v35, v37, v39), sub_10000986C(), sub_100009920(v22, v23, v24, v25, v26, v27, v28, v29, v34, v36, v38, v40), sub_10000986C(), v30 == v1) && (v31 = sub_100009A0C()) != 0)
      {
        return sub_10000983C(v31);
      }

      else
      {
        sub_100009900();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_10036AA20()
{
  sub_1000099E4();
  v2 = strlen(v1);
  result = 4294967285;
  if (v0)
  {
    if (v2 <= 0x10)
    {
      __memcpy_chk();
      return sub_10036A93C();
    }
  }

  return result;
}

uint64_t sub_10036AAD8()
{
  result = sub_100009A68();
  if (v0 && v2)
  {
    ccder_sizeof();
    v3 = sub_1000099F0();
    v4 = sub_100009A24(v3);
    if (v4)
    {
      v5 = v4;
      if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (ccder_blob_encode_body(), sub_1000098B8(), sub_1000053E8(), ccder_blob_encode_tl(), sub_1000098B8(), v6 == v5) && (v7 = sub_100009A0C()) != 0)
      {
        return sub_10000983C(v7);
      }

      else
      {
        sub_100009900();
        free(v5);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_10036AC00(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v10 = 8;
  }

  else
  {
    v6 = 9;
    v7 = 48;
    v8 = 1;
    while ((v6 - 2) >= 2)
    {
      v9 = a3 >> v7;
      --v6;
      v7 -= 8;
      if (v5 != v9)
      {
        v8 = v6 - 1;
        goto LABEL_8;
      }
    }

    v6 = 2;
LABEL_8:
    if ((((a3 >> (8 * v8 - 8)) ^ v5) & 0x80) != 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }
  }

  v18 = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    ccder_sizeof();
    v12 = ccder_sizeof();
    v13 = calloc(v12, 1uLL);
    if (v13)
    {
      v14 = v13;
      v15 = v10;
      do
      {
        *(&v18 + v15 - 1) = v3;
        v3 >>= 8;
        --v15;
      }

      while (v15);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (ccder_blob_encode_body(), sub_10000986C(), sub_1000053E8(), ccder_blob_encode_tl(), sub_10000986C(), v16 == v14) && sub_100009A0C())
      {
        result = sub_100009968();
        v17[1] = v14;
        v17[2] = v12;
        *v17 = *a1;
        *a1 = v17;
      }

      else
      {
        memset_s(v14, v12, 0, v12);
        free(v14);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_10036AE04()
{
  result = sub_100009A68();
  if (v0 && v3 && v4)
  {
    strlen(v4);
    ccder_sizeof();
    v5 = sub_1000099F0();
    if (sub_100009A24(v5))
    {
      sub_100009944();
      if (ccder_blob_encode_body() && (v6 = ccder_blob_encode_tl(), v6) && (sub_10000988C(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26, v28, v30), sub_10000986C(), sub_100009920(v14, v15, v16, v17, v18, v19, v20, v21, v25, v27, v29, v31), sub_10000986C(), v22 == v1) && (v23 = sub_100009A0C()) != 0)
      {
        return sub_10000983C(v23);
      }

      else
      {
        sub_100009900();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_10036AEF4(void *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  __s = 0;
  __n = 0;
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    if (sub_10036A668(a3, &__s, &__n))
    {
      v3 = 0;
    }

    else
    {
      v6 = ccder_sizeof();
      v7 = sub_100009A24(v6);
      v3 = v7;
      if (v7)
      {
        v12 = v7;
        if (ccder_blob_encode_body() && (v15 = v3, v16 = v12, ccder_blob_encode_body(), sub_1000098B8(), v15 = v3, v16 = v8, sub_1000053E8(), ccder_blob_encode_tl(), sub_1000098B8(), v9 == v3) && (v10 = sub_100009A0C()) != 0)
        {
          v4 = 0;
          v10[1] = v3;
          v10[2] = 0;
          *v10 = *a1;
          *a1 = v10;
          v3 = 0;
        }

        else
        {
          v4 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v4 = 4294967279;
      }
    }
  }

  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  if (v3)
  {
    memset_s(v3, 0, 0, 0);
    free(v3);
  }

  return v4;
}

uint64_t sub_10036B080(uint64_t a1)
{
  v4 = sub_100009974(a1);
  if (v2)
  {
    result = ccder_blob_encode_body_tl();
    if (!result)
    {
      return result;
    }

    if ((ccder_blob_encode_body_tl() & 1) == 0)
    {
      return 0;
    }
  }

  else if (!ccder_blob_encode_body_tl() || (ccder_blob_encode_tl() & 1) == 0)
  {
    return 0;
  }

  *v1 = v4;
  return 1;
}

uint64_t sub_10036B128(__int128 *a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 20);
  v36 = *a1;
  if (a2)
  {
    sub_100009858();
    v7 = ccder_blob_decode_range();
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    v5 = v37;
    v15 = (v38 - v37);
    sub_1000099BC(v7, v8, v9, v10, v11, v12, v13, v14, v36, *(&v36 + 1), v37, v38, v39);
LABEL_4:
    sub_100009858();
    v16 = ccder_blob_decode_range();
    if (v16)
    {
      sub_1000099BC(v16, v17, v18, v19, v20, v21, v22, v23, v36, *(&v36 + 1), v37, v38, v39);
      if (v33 <= 4)
      {
        v34 = *v32;
        *a3 = v5;
        *(a3 + 8) = v15;
        *(a3 + 16) = v34;
        *(a3 + 20) = v6;
        return sub_10000987C(v24, v25, v26, v27, v28, v29, v30, v31, v36);
      }
    }

    return 0;
  }

  LODWORD(v39) = v4;
  result = sub_10036B204(&v36, 4, v5, &v39);
  if (result)
  {
    v15 = v39;
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_10036B204(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  sub_100009974(a1);
  sub_100009858();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_1000099BC(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3 || !a4)
    {
      return sub_10000987C(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (*a4 >= v21 - v14)
    {
      v13 = memcpy(a3, v14, v22);
      *a4 = v22;
      return sub_10000987C(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_10036B284(uint64_t a1)
{
  v17 = sub_100009974(a1);
  if (v2)
  {
    sub_1000099D8(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_1000099D8(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return sub_10000987C(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t sub_10036B2E0(uint64_t a1)
{
  v17 = sub_100009974(a1);
  if (v2)
  {
    sub_1000099D8(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_1000099D8(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return sub_10000987C(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t sub_10036B340(uint64_t a1, void *a2)
{
  sub_100009974(a1);
  sub_100009858();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1000099BC(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return sub_10000987C(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t sub_10036B3A8()
{
  sub_1000099E4();
  v1 = v0;
  v3 = v2;
  v19 = 0;
  if (sub_10036AC00(&v19, off_1004A6428, *v2) || sub_10036AC00(&v19, off_1004A6430, v3[1]) || sub_10036AC00(&v19, off_1004A6438, *(v3 + 1)) || sub_10036AC00(&v19, off_1004A6448, v3[4]) || sub_10036AC00(&v19, off_1004A6458, v3[5]) || sub_10036AC00(&v19, off_1004A6470, *(v3 + 26)) || sub_10036AC00(&v19, off_1004A6478, *(v3 + 34)) || sub_10036AC00(&v19, off_1004A6180, *(v3 + 42)) || sub_10036AC00(&v19, off_1004A6348, *(v3 + 46)) || (v4 = sub_10036A93C(), v4) || v1 && (sub_10036AC00(&v19, off_1004A6460, *(v3 + 66)) || sub_10036AC00(&v19, off_1004A6468, *(v3 + 67)) || sub_10036AC00(&v19, off_1004A6750, *(v3 + 17)) || (v4 = sub_10036AC00(&v19, off_1004A67A0, *(v3 + 19)), v4)) || (v6 = sub_100009980(v4, v5), v6))
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = 0;
    sub_100009958(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18);
  }

  sub_100009190(&v19);
  return v14;
}

uint64_t sub_10036B598(uint64_t a1)
{
  result = sub_100009A50(__stack_chk_guard);
  if (v4 && a1)
  {
    v5 = v3;
    if (v3)
    {
      memset_s(v3, 0x54uLL, 0, 0x54uLL);
      bzero(v15, 0x228uLL);
      v15[4] = off_1004A6430;
      v15[9] = off_1004A6438;
      v15[14] = off_1004A6448;
      v15[19] = off_1004A6458;
      v15[24] = off_1004A6460;
      v15[29] = off_1004A6468;
      v15[34] = off_1004A6470;
      v15[39] = off_1004A6478;
      v15[44] = off_1004A6180;
      v15[49] = off_1004A6348;
      v15[54] = off_1004A6540;
      v16[2] = off_1004A6750;
      v16[7] = off_1004A67A0;
      sub_1000097FC();
      sub_100009A94(v6, v7, v8, v9, v10, v11, v12, v13, 14);
      *v5 = sub_10036A1EC();
      *(v5 + 1) = sub_10036A1EC();
      *(v5 + 1) = sub_10036A1EC();
      *(v5 + 4) = sub_10036A1EC();
      *(v5 + 5) = sub_10036A1EC();
      *(v5 + 26) = sub_10036A1EC();
      *(v5 + 34) = sub_10036A1EC();
      *(v5 + 42) = sub_10036A1EC();
      *(v5 + 46) = sub_10036A1EC();
      sub_10036A4B8(v16, 4, v5 + 50, 16);
      v5[66] = sub_10036A1EC();
      v5[67] = sub_10036A1EC();
      *(v5 + 68) = sub_10036A1EC();
      sub_10036A1EC();
      result = sub_100009968();
      *(v5 + 76) = v14;
    }
  }

  return result;
}

uint64_t sub_10036B7EC(uint64_t a1)
{
  result = sub_100009A50(__stack_chk_guard);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        sub_1000099A0(v3);
        bzero(v15, 0x98uLL);
        v15[4] = off_1004A6448;
        v15[9] = off_1004A6348;
        v15[14] = off_1004A6428;
        sub_1000097FC();
        if (sub_100009A94(v6, v7, v8, v9, v10, v11, v12, v13, 4))
        {
          *v5 = sub_10036A1EC();
          v5[1] = sub_10036A1EC();
          v5[2] = sub_10036A1EC();
          sub_10036A1EC();
          result = sub_100009968();
          v5[3] = v14;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10036B918(uint64_t a1)
{
  result = sub_100009A50(__stack_chk_guard);
  if (v6)
  {
    if (a1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v4;
        if (v4)
        {
          v9 = v5;
          sub_1000099A0(v3);
          sub_1000099A0(v8);
          v12 = 0;
          v10[0] = 0u;
          v11 = 0u;
          v14 = 0u;
          v15 = 0u;
          v10[1] = off_1004A66F8;
          v13 = off_1004A6220;
          sub_1000097FC();
          sub_10036A038();
          if (sub_10036A4B8(v10, 4, v7, 16) && sub_10036A4B8(&v11 + 8, 4, v8, 16))
          {
            return sub_10036A4B8(&v15, 4, v9, 16) - 1;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10036BA78(uint64_t a1)
{
  result = sub_100009A50(__stack_chk_guard);
  if (v3)
  {
    if (a1)
    {
      v5 = v4;
      if (v4)
      {
        v6 = v3;
        memset_s(v4, 0x58uLL, 0, 0x58uLL);
        bzero(v16, 0x200uLL);
        v16[4] = off_1004A6220;
        v17[2] = off_1004A6200;
        v18[2] = off_1004A61F8;
        v18[7] = off_1004A6218;
        v18[12] = off_1004A64A0;
        v20 = off_1004A6448;
        v21 = off_1004A6450;
        v22 = off_1004A6348;
        v23 = off_1004A6438;
        v24 = off_1004A6440;
        v25 = off_1004A6600;
        v26 = off_1004A6670;
        sub_1000097FC();
        sub_100009A94(v7, a1 + v6, v8, v9, v10, v11, v12, v13, 13);
        *v5 = sub_10036A1EC();
        if (!sub_10036A4B8(v17, 4, v5 + 1, 16))
        {
          return 0xFFFFFFFFLL;
        }

        if (!sub_10036A4B8(v18, 4, v5 + 5, 16))
        {
          return 0xFFFFFFFFLL;
        }

        v5[9] = sub_10036A1EC();
        v5[10] = sub_10036A1EC();
        v5[11] = sub_10036A1EC();
        v5[12] = sub_10036A1EC();
        v5[15] = sub_10036A1EC();
        v5[13] = sub_10036A1EC();
        v5[14] = sub_10036A1EC();
        if (!sub_1000096E4(&v19, 4, v5 + 16, 8u))
        {
          return 0xFFFFFFFFLL;
        }

        v14 = v5[9];
        if ((v14 & 0x400) != 0)
        {
          *(v5 + 9) = sub_10036A1EC();
          if ((v5[9] & 0x800) == 0)
          {
            return 0;
          }
        }

        else if ((v14 & 0x800) == 0)
        {
          return 0;
        }

        sub_10036A1EC();
        result = sub_100009968();
        v5[20] = v15;
      }
    }
  }

  return result;
}

uint64_t sub_10036BCF0(int *a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    v4 = a1;
    if (a1 && (v5 = *a1) != 0)
    {
      if (v5)
      {
        a1 = sub_10036AA20();
        v5 = *v4;
      }

      if ((v5 & 2) != 0)
      {
        a1 = sub_10036AA20();
      }

      v7 = sub_100009980(a1, a2);
      if (!v7)
      {
        v3 = 0;
        sub_100009958(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  sub_100009190(&v18);
  return v3;
}

uint64_t sub_10036BDAC(uint64_t a1, uint64_t a2, _DWORD *__s)
{
  v6 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (__s)
      {
        memset_s(__s, 0x24uLL, 0, 0x24uLL);
        sub_1000098C4();
        if (sub_10036A038())
        {
          if (!sub_10036A52C())
          {
            *__s |= 2u;
          }

          v3 = 0;
          if (!sub_10036A52C())
          {
            *__s |= 1u;
          }
        }
      }
    }
  }

  sub_100009190(&v6);
  return v3;
}

uint64_t sub_10036BE84(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v3 = 4294967285;
  v17 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && sub_10036A93C() || a1[2] && sub_10036A93C() || a1[4] && sub_10036A93C() || a1[6] && sub_10036A93C() || a1[8] && sub_10036A93C() || a1[10] && sub_10036A93C())
    {
      v3 = 4294967273;
    }

    else
    {
      v5 = sub_10036A668(&v17, &v15, &v16);
      if (v5)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        sub_100009958(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16);
      }
    }
  }

  sub_100009190(&v17);
  return v3;
}

uint64_t sub_10036BFE4(uint64_t a1, uint64_t a2, void *__s)
{
  if (!__s)
  {
    return 4294967285;
  }

  memset_s(__s, 0x60uLL, 0, 0x60uLL);
  bzero(v82, 0xE8uLL);
  v81 = off_1004A61D0;
  v82[4] = off_1004A67C0;
  v82[9] = off_1004A67B8;
  v82[14] = off_1004A6190;
  v82[19] = off_1004A67B0;
  v82[24] = off_1004A6208;
  v75 = 0;
  v76 = 0;
  v77 = &v81;
  sub_1000097FC();
  sub_100009A94(v6, a1 + a2, v7, v8, v9, v10, v11, v12, 6);
  sub_100009810();
  v13 = ccder_blob_decode_range();
  if (v13)
  {
    v21 = sub_100009824(v13, v14, v15, v16, v17, v18, v19, v20, v74, 0, 0, &v81, v78, v79, v80);
    *(v22 + 24) = v21;
    *__s = v23;
    __s[1] = v24;
  }

  sub_100009810();
  v25 = ccder_blob_decode_range();
  if (v25)
  {
    v33 = sub_100009824(v25, v26, v27, v28, v29, v30, v31, v32, v74, v75, v76, v77, v78, v79, v80);
    v34[4] = v33;
    __s[2] = v35;
    __s[3] = v36;
  }

  sub_100009810();
  v37 = ccder_blob_decode_range();
  if (v37)
  {
    v45 = sub_100009824(v37, v38, v39, v40, v41, v42, v43, v44, v74, v75, v76, v77, v78, v79, v80);
    *(v46 + 104) = v45;
    __s[4] = v47;
    __s[5] = v48;
  }

  sub_100009810();
  v49 = ccder_blob_decode_range();
  if (v49)
  {
    v57 = sub_100009824(v49, v50, v51, v52, v53, v54, v55, v56, v74, v75, v76, v77, v78, v79, v80);
    v58[9] = v57;
    __s[6] = v59;
    __s[7] = v60;
  }

  sub_100009810();
  v61 = ccder_blob_decode_range();
  if (v61)
  {
    v69 = sub_100009824(v61, v62, v63, v64, v65, v66, v67, v68, v74, v75, v76, v77, v78, v79, v80);
    *(v70 + 184) = v69;
    __s[8] = v71;
    __s[9] = v72;
  }

  sub_100009810();
  if ((ccder_blob_decode_range() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  __s[10] = v78;
  __s[11] = (v79 - v78);
  return result;
}

uint64_t sub_10036C1DC(uint64_t a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    if (a1)
    {
      if (!sub_10036AA20())
      {
        v5 = sub_10036AA20();
        if (!v5)
        {
          v7 = sub_100009980(v5, v6);
          if (!v7)
          {
            v3 = 0;
            sub_100009958(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
          }
        }
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  sub_100009190(&v18);
  return v3;
}

uint64_t sub_10036C28C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        sub_1000099A0(a3);
        sub_1000098C4();
        if (sub_10036A038())
        {
          sub_10036A52C();
          sub_10036A52C();
          v3 = 0;
        }
      }
    }
  }

  sub_100009190(&v5);
  return v3;
}

uint64_t sub_10036C338(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    sub_1000097FC();
    sub_10036A038();
    return sub_10036A1EC() & 0x1F;
  }

  return v2;
}

uint64_t sub_10036C3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(v10, 0xE8uLL);
  v9 = off_1004A6480;
  v10[4] = off_1004A6488;
  v10[9] = off_1004A6490;
  v10[14] = off_1004A6498;
  v10[19] = off_1004A6208;
  v11[2] = off_1004A67A8;
  v6 = xmmword_100376210;
  v7 = 0;
  v8 = &v9;
  sub_1000097FC();
  sub_10036A038();
  *a3 = sub_10036A1EC();
  *(a3 + 4) = sub_10036A1EC();
  *(a3 + 8) = sub_10036A1EC();
  *(a3 + 12) = sub_10036A1EC();
  v5 = 65;
  if (!sub_10036B204(v11, 4, (a3 + 16), &v5))
  {
    return 0xFFFFFFFFLL;
  }

  *(a3 + 88) = v5;
  return sub_10036A4B8(&v12, 4, (a3 + 96), 3) - 1;
}

void *sub_10036C564(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = off_1004A6178;
      if (off_1004A6178)
      {
        sub_1000098D8();
        sub_10036A038();
        return 0;
      }
    }
  }

  return v2;
}

void *sub_10036C924(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  sub_100009974(a1);
  sub_100009858();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  sub_1000099BC(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
  if (a3 && a4)
  {
    v24 = v23 - v14;
    v25 = (v23 - v14);
    result = calloc(v25, 1uLL);
    if (!result)
    {
      return result;
    }

    v27 = result;
    v15 = memcpy(result, v14, v25);
    *a3 = v27;
    *a4 = v24;
  }

  return sub_10000987C(v15, v16, v17, v18, v19, v20, v21, v22, v29);
}

uint64_t sub_10036C9C4(__n128 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __n128 a10)
{
  if (a3)
  {
    *a3 = 0;
  }

  result = sub_100009A74(*a1, a1, a2, a3, a4, a5, a6, a7, a8, a10, v13, v14);
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v15;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_10036CA40(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v10 = a6 + a7;
  if (!ccder_blob_encode_implicit_raw_octet_string() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  sub_1000053E8();
  v7 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v7)
  {
    if (a6 == v10)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t sub_10036CB0C(void *a1, void *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v72) = a6;
  *(&v72 + 1) = a6 + a7;
  sub_1000053E8();
  v12 = ccder_blob_decode_range();
  if (!v12)
  {
    return 4294967277;
  }

  v20 = sub_100009A5C(v12, v13, v14, v15, v16, v17, v18, v19, v67, 0, v72);
  v29 = sub_10036C9C4(v20, 0x8000000000000003, v21, v22, v23, v24, v25, v26, v27, v28);
  if (!v29)
  {
    return 4294967277;
  }

  if (a5)
  {
    sub_1000099C8();
    *a5 = v37;
  }

  v38 = sub_100009A5C(v29, v30, v31, v32, v33, v34, v35, v36, v68, v70, v73);
  v47 = sub_10036C9C4(v38, 0x8000000000000002, v39, v40, v41, v42, v43, v44, v45, v46);
  if (!v47)
  {
    return 4294967277;
  }

  if (a4)
  {
    sub_1000099C8();
    *a4 = v55;
  }

  v56 = sub_100009A5C(v47, v48, v49, v50, v51, v52, v53, v54, v69, v71, v74);
  if (!sub_10036C9C4(v56, 0x8000000000000001, v57, v58, v59, v60, v61, v62, v63, v64))
  {
    return 4294967277;
  }

  if (a3)
  {
    sub_1000099C8();
    *a3 = v65;
  }

  sub_100009810();
  if (ccder_blob_decode_range())
  {
    v72 = v77;
    if (a1)
    {
      if (a2)
      {
        *a1 = v75;
        *a2 = (v76 - v75);
      }
    }
  }

  if (v72 == *(&v72 + 1))
  {
    return 0;
  }

  else
  {
    return 4294967277;
  }
}

uint64_t sub_10036CC18(const void **a1, void **a2)
{
  v5 = *a1;
  __s2 = *a2;
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v5 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v5, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

uint64_t sub_10036CE14(unsigned int *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3;
  if (*a1 >= a3)
  {
    v19 = &a9;
    if (!a3)
    {
      return 0;
    }

    v11 = a1 + 1;
    while (1)
    {
      v12 = v19;
      v13 = *v19;
      v19 += 2;
      v16 = *v11;
      v14 = (v11 + 1);
      v15 = v16;
      if (v16 > a2)
      {
        break;
      }

      if (v13)
      {
        v17 = v12[1];
        if (*v17 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(v13, v14, v15);
        *v17 = v15;
      }

      v11 = &v14[v15];
      if (!--v9)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10036CEE0(unint64_t a1, uint64_t a2, void *a3)
{
  v48.n128_u64[0] = a1;
  v48.n128_u64[1] = a1 + a2;
  if (!ccder_blob_decode_range() || !sub_10036C9C4(&v48, 0x8000000000000005, a3 + 3, v4, v5, v6, v7, v8, v9, v10) || !sub_10036C9C4(&v48, 0x8000000000000004, a3 + 5, v11, v12, v13, v14, v15, v16, v17) || !sub_10036C9C4(&v48, 0x8000000000000003, a3 + 2, v18, v19, v20, v21, v22, v23, v24) || !sub_10036C9C4(&v48, 0x8000000000000002, a3 + 4, v25, v26, v27, v28, v29, v30, v31) || !sub_10036C9C4(&v48, 0x8000000000000001, a3 + 1, v32, v33, v34, v35, v36, v37, v38))
  {
    return 4294967277;
  }

  v46 = sub_10036C9C4(&v48, 0x8000000000000000, a3, v39, v40, v41, v42, v43, v44, v45);
  result = 4294967277;
  if (v46)
  {
    if (v48.n128_u64[0] == v48.n128_u64[1])
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}

uint64_t sub_10036CFC8(char **a1, unint64_t a2, char *a3, unsigned __int8 **a4, unint64_t a5)
{
  v7 = *a1;
  v8 = *a4;
  if (*a1 < a3 && v8 < a5)
  {
    while (1)
    {
      *a4 = v8;
      *a1 = v7;
      v15 = *v8++;
      v14 = v15;
      v16 = v15 >> 4;
      if (v15 >> 4 == 15)
      {
        while (v8 < a5)
        {
          v26 = *v8++;
          v16 += v26;
          if (v26 != 255)
          {
            goto LABEL_8;
          }
        }

        return 1;
      }

LABEL_8:
      if (a5 - v8 < v16)
      {
        return 1;
      }

      v17 = v16;
      if (a3 - v7 < v16)
      {
        memcpy(v7, v8, a3 - v7);
        v7 = a3;
        goto LABEL_6;
      }

      memcpy(v7, v8, v16);
      v8 += v17;
      v18 = &v7[v17];
      if (v8 >= a5)
      {
        v7 += v17;
        goto LABEL_6;
      }

      if (a5 - v8 < 2)
      {
        return 1;
      }

      v20 = *v8;
      v8 += 2;
      v19 = v20;
      if (!v20 || &v18[-v19] < a2)
      {
        return 1;
      }

      v21 = (v14 & 0xF) + 4;
      if ((v14 & 0xF) == 0xF)
      {
        while (v8 < a5)
        {
          v27 = *v8++;
          v21 += v27;
          if (v27 != 255)
          {
            goto LABEL_15;
          }
        }

        return 1;
      }

LABEL_15:
      v22 = a3 - v18;
      if (a3 - v18 < v21)
      {
        break;
      }

      if (v21)
      {
        v23 = -v19;
        v24 = &v7[v17];
        v25 = v21;
        do
        {
          *v24 = v24[v23];
          ++v24;
          --v25;
        }

        while (v25);
      }

      v7 = &v18[v21];
      if (v8 >= a5)
      {
        goto LABEL_6;
      }
    }

    if (v18 != a3)
    {
      if (v22 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v22;
      }

      v29 = -v19;
      v30 = &v7[v17];
      do
      {
        *v30 = v30[v29];
        ++v30;
        --v28;
      }

      while (v28);
    }

    v7 = &v18[v22];
  }

LABEL_6:
  result = 0;
  *a1 = v7;
  *a4 = v8;
  return result;
}

unsigned __int16 *sub_10036D184(unsigned int *a1, unint64_t a2, _BYTE *a3, _BYTE *a4, unint64_t a5, unsigned __int8 *a6, uint64_t a7)
{
  v7 = *(a1 + 2);
  if (!v7)
  {
    return v7;
  }

  if (!a7)
  {
    return 0;
  }

  v8 = *(a1 + 29);
  if (a7 < 1)
  {
    v10 = 0;
    v9 = a6;
  }

  else
  {
    v9 = a6 + 1;
    v10 = *a6 != 0;
  }

  v11 = 0;
  v604 = *(a1 + 28);
  v601 = *(a1 + 27);
  v12 = &a6[a7];
  v13 = 4;
  v602 = *(a1 + 26);
  do
  {
    if (v9 >= v12)
    {
      v14 = 0;
    }

    else
    {
      v15 = *v9++;
      v14 = v15;
    }

    v11 = v14 | (v11 << 8);
    --v13;
  }

  while (v13);
  if (v11 == -1)
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0;
  }

  v594 = a3;
  if (a3 >= a4)
  {
    v206 = a3;
    goto LABEL_837;
  }

  v600 = v7 + 1956;
  v599 = 8 - v602;
  v598 = v7 + 204;
  v595 = v7 + 420;
  v596 = v7 + 1220;
  v597 = v7 + 690;
  v17 = v7 + 1940;
  v18 = -1;
  while (1)
  {
    if (!HIBYTE(v18))
    {
      if (v9 >= v12)
      {
        v19 = 0;
      }

      else
      {
        v20 = *v9++;
        v19 = v20;
      }

      v18 <<= 8;
      v11 = v19 | (v11 << 8);
    }

    v21 = a3 - a2;
    v22 = v604 & (a3 - a2);
    v23 = &v7[16 * v8 + v22];
    v24 = *v23;
    v25 = (v18 >> 11) * v24;
    v26 = v11 - v25;
    if (v11 < v25)
    {
      break;
    }

    v53 = v18 - v25;
    v54 = v7 + 192;
LABEL_212:
    *v23 = v24 - (v24 >> 5);
    if (!HIBYTE(v53))
    {
      if (v9 >= v12)
      {
        v157 = 0;
      }

      else
      {
        v158 = *v9++;
        v157 = v158;
      }

      v53 <<= 8;
      v26 = v157 | (v26 << 8);
    }

    v159 = v54[v8];
    v160 = (v53 >> 11) * v159;
    v11 = v26 - v160;
    if (v26 >= v160)
    {
      v54[v8] -= v54[v8] >> 5;
      if (a3 == a2)
      {
        return 0;
      }

      v195 = v53 - v160;
      if (!((v53 - v160) >> 24))
      {
        if (v9 >= v12)
        {
          v196 = 0;
        }

        else
        {
          v197 = *v9++;
          v196 = v197;
        }

        v195 <<= 8;
        v11 = v196 | (v11 << 8);
      }

      v198 = v598[v8];
      v199 = (v195 >> 11) * v198;
      v200 = v11 - v199;
      if (v11 >= v199)
      {
        v239 = v195 - v199;
        v598[v8] -= v598[v8] >> 5;
        if (HIBYTE(v239))
        {
          v240 = v7 + 408;
        }

        else
        {
          v240 = v7 + 408;
          if (v9 >= v12)
          {
            v241 = 0;
          }

          else
          {
            v242 = *v9++;
            v241 = v242;
          }

          v239 <<= 8;
          v200 = v241 | (v200 << 8);
        }

        v284 = v240[v8];
        v283 = (v239 >> 11) * v284;
        v285 = v200 - v283;
        if (v200 >= v283)
        {
          v286 = v239 - v283;
          v240[v8] -= v240[v8] >> 5;
          if (HIBYTE(v286))
          {
            v200 -= v283;
          }

          else
          {
            if (v9 >= v12)
            {
              v287 = 0;
            }

            else
            {
              v288 = *v9++;
              v287 = v288;
            }

            v286 <<= 8;
            v200 = v287 | (v285 << 8);
          }

          v433 = v595[v8];
          v283 = (v286 >> 11) * v433;
          v434 = v200 - v283;
          if (v200 >= v283)
          {
            v283 = v286 - v283;
            v435 = v433 - (v433 >> 5);
            LODWORD(v203) = a1[3];
            a1[3] = a1[2];
            v200 = v434;
          }

          else
          {
            v435 = v433 + ((2048 - v433) >> 5);
            LODWORD(v203) = a1[2];
          }

          v595[v8] = v435;
          a1[2] = a1[1];
        }

        else
        {
          v240[v8] = v284 + ((2048 - v284) >> 5);
          LODWORD(v203) = a1[1];
        }

        v436 = *a1;
        *a1 = v203;
        a1[1] = v436;
      }

      else
      {
        v598[v8] = v198 + ((2048 - v198) >> 5);
        if (!HIBYTE(v199))
        {
          if (v9 >= v12)
          {
            v201 = 0;
          }

          else
          {
            v202 = *v9++;
            v201 = v202;
          }

          v199 <<= 8;
          v11 = v201 | (v11 << 8);
        }

        v203 = *a1;
        v204 = &v7[16 * v8 + 216];
        v205 = *(v204 + 2 * v22);
        v18 = (v199 >> 11) * v205;
        v200 = v11 - v18;
        if (v11 < v18)
        {
          *(v204 + 2 * v22) = v205 + ((2048 - v205) >> 5);
          *a3 = a3[-v203];
          v206 = a3 + 1;
          v8 = byte_1003E2D70[v8 + 48];
          goto LABEL_779;
        }

        v283 = v199 - v18;
        *(v204 + 2 * v22) = v205 - (v205 >> 5);
      }

      v437 = v7[962];
      if (!HIBYTE(v283))
      {
        if (v9 >= v12)
        {
          v438 = 0;
        }

        else
        {
          v439 = *v9++;
          v438 = v439;
        }

        v283 <<= 8;
        v200 = v438 | (v200 << 8);
      }

      v440 = (v283 >> 11) * v437;
      v441 = v200 - v440;
      if (v200 >= v440)
      {
        v473 = v283 - v440;
        v7[962] -= v7[962] >> 5;
        if (!((v283 - v440) >> 24))
        {
          if (v9 >= v12)
          {
            v474 = 0;
          }

          else
          {
            v475 = *v9++;
            v474 = v475;
          }

          v473 <<= 8;
          v441 = v474 | (v441 << 8);
        }

        v476 = v7[963];
        v477 = (v473 >> 11) * v476;
        v478 = v441 - v477;
        if (v441 >= v477)
        {
          v508 = v473 - v477;
          v7[963] -= v7[963] >> 5;
          if (!((v473 - v477) >> 24))
          {
            if (v9 >= v12)
            {
              v509 = 0;
            }

            else
            {
              v510 = *v9++;
              v509 = v510;
            }

            v508 <<= 8;
            v478 = v509 | (v478 << 8);
          }

          v511 = v7[1221];
          v512 = (v508 >> 11) * v511;
          v513 = v511 + ((2048 - v511) >> 5);
          v514 = v508 - v512;
          v515 = v511 - (v511 >> 5);
          v516 = v478 >= v512;
          if (v478 >= v512)
          {
            v517 = 3;
          }

          else
          {
            v517 = 2;
          }

          if (v478 >= v512)
          {
            v518 = v478 - v512;
          }

          else
          {
            v514 = v512;
            v518 = v478;
          }

          if (!v516)
          {
            LOWORD(v515) = v513;
          }

          v7[1221] = v515;
          if (!HIBYTE(v514))
          {
            if (v9 >= v12)
            {
              v519 = 0;
            }

            else
            {
              v520 = *v9++;
              v519 = v520;
            }

            v514 <<= 8;
            v518 = v519 | (v518 << 8);
          }

          v521 = v596[v517];
          v522 = (v514 >> 11) * v521;
          v523 = v521 + ((2048 - v521) >> 5);
          LODWORD(v524) = (2 * v517) | 1;
          v525 = v514 - v522;
          v526 = v518 - v522;
          v527 = v521 - (v521 >> 5);
          v528 = v518 >= v522;
          if (v518 >= v522)
          {
            v524 = v524;
          }

          else
          {
            v524 = (2 * v517);
          }

          if (v518 >= v522)
          {
            v522 = v525;
          }

          if (v528)
          {
            v518 = v526;
          }

          if (!v528)
          {
            LOWORD(v527) = v523;
          }

          v596[v517] = v527;
          v529 = v596[v524];
          if (!HIBYTE(v522))
          {
            if (v9 >= v12)
            {
              v530 = 0;
            }

            else
            {
              v531 = *v9++;
              v530 = v531;
            }

            v522 <<= 8;
            v518 = v530 | (v518 << 8);
          }

          v532 = (v522 >> 11) * v529;
          LODWORD(v533) = 2 * v524;
          v534 = v529 + ((2048 - v529) >> 5);
          v535 = v522 - v532;
          v536 = v529 - (v529 >> 5);
          if (v518 >= v532)
          {
            v533 = (2 * v524) | 1u;
          }

          else
          {
            v533 = v533;
          }

          if (v518 >= v532)
          {
            v537 = v535;
          }

          else
          {
            v537 = v532;
          }

          if (v518 >= v532)
          {
            v538 = v518 - v532;
          }

          else
          {
            v538 = v518;
          }

          if (v518 >= v532)
          {
            v539 = v536;
          }

          else
          {
            v539 = v534;
          }

          v596[v524] = v539;
          v540 = v596[v533];
          if (!HIBYTE(v537))
          {
            if (v9 >= v12)
            {
              v541 = 0;
            }

            else
            {
              v542 = *v9++;
              v541 = v542;
            }

            v537 <<= 8;
            v538 = v541 | (v538 << 8);
          }

          v543 = (v537 >> 11) * v540;
          v544 = 2 * v533;
          v545 = v538 - v543;
          if (v538 >= v543)
          {
            v544 |= 1u;
            v543 = v537 - v543;
            v538 = v545;
            v546 = v540 - (v540 >> 5);
          }

          else
          {
            v546 = v540 + ((2048 - v540) >> 5);
          }

          v596[v533] = v546;
          v547 = v544 ^ 0x10u;
          v548 = &v7[16 * v547 + 1236];
          v549 = *(v548 + 2);
          if (!HIBYTE(v543))
          {
            if (v9 >= v12)
            {
              v550 = 0;
            }

            else
            {
              v551 = *v9++;
              v550 = v551;
            }

            v543 <<= 8;
            v538 = v550 | (v538 << 8);
          }

          v552 = (v543 >> 11) * v549;
          v553 = v549 + ((2048 - v549) >> 5);
          v554 = v543 - v552;
          v555 = v549 - (v549 >> 5);
          if (v538 >= v552)
          {
            v556 = 3;
          }

          else
          {
            v556 = 2;
          }

          if (v538 >= v552)
          {
            v557 = v538 - v552;
          }

          else
          {
            v554 = v552;
            v557 = v538;
          }

          if (v538 >= v552)
          {
            v558 = v555;
          }

          else
          {
            v558 = v553;
          }

          *(v548 + 2) = v558;
          v559 = *(v548 + 2 * v556);
          if (!HIBYTE(v554))
          {
            if (v9 >= v12)
            {
              v560 = 0;
            }

            else
            {
              v561 = *v9++;
              v560 = v561;
            }

            v554 <<= 8;
            v557 = v560 | (v557 << 8);
          }

          v562 = (v554 >> 11) * v559;
          v563 = v559 + ((2048 - v559) >> 5);
          v564 = v554 - v562;
          v565 = v559 - (v559 >> 5);
          v566 = v557 >= v562;
          if (v557 >= v562)
          {
            v567 = (2 * v556) | 1u;
          }

          else
          {
            v567 = (2 * v556);
          }

          if (v557 >= v562)
          {
            v557 -= v562;
          }

          else
          {
            v564 = v562;
          }

          if (v566)
          {
            v568 = v565;
          }

          else
          {
            v568 = v563;
          }

          *(v548 + 2 * v556) = v568;
          v569 = *(v548 + 2 * v567);
          if (!HIBYTE(v564))
          {
            if (v9 >= v12)
            {
              v570 = 0;
            }

            else
            {
              v571 = *v9++;
              v570 = v571;
            }

            v564 <<= 8;
            v557 = v570 | (v557 << 8);
          }

          v572 = (v564 >> 11) * v569;
          v573 = v569 + ((2048 - v569) >> 5);
          v574 = v564 - v572;
          v575 = v569 - (v569 >> 5);
          if (v557 >= v572)
          {
            v576 = (2 * v567) | 1u;
          }

          else
          {
            v576 = (2 * v567);
          }

          if (v557 >= v572)
          {
            v11 = v557 - v572;
          }

          else
          {
            v574 = v572;
            v11 = v557;
          }

          if (v557 >= v572)
          {
            v577 = v575;
          }

          else
          {
            v577 = v573;
          }

          *(v548 + 2 * v567) = v577;
          v578 = *(v548 + 2 * v576);
          if (!HIBYTE(v574))
          {
            if (v9 >= v12)
            {
              v579 = 0;
            }

            else
            {
              v580 = *v9++;
              v579 = v580;
            }

            v574 <<= 8;
            v11 = v579 | (v11 << 8);
          }

          v18 = (v574 >> 11) * v578;
          v581 = 2 * v576;
          v582 = v11 - v18;
          if (v11 >= v18)
          {
            v581 |= 1u;
            v18 = v574 - v18;
            v11 = v582;
            v583 = v578 - (v578 >> 5);
          }

          else
          {
            v583 = v578 + ((2048 - v578) >> 5);
          }

          *(v548 + 2 * v576) = v583;
          v243 = (v581 ^ 0x10) + 16 * v547 + 18;
        }

        else
        {
          v7[963] = v476 + ((2048 - v476) >> 5);
          if (!HIBYTE(v477))
          {
            if (v9 >= v12)
            {
              v479 = 0;
            }

            else
            {
              v480 = *v9++;
              v479 = v480;
            }

            v477 <<= 8;
            v441 = v479 | (v441 << 8);
          }

          v481 = &v7[8 * v22 + 1092];
          v482 = *(v481 + 2);
          v483 = (v477 >> 11) * v482;
          v484 = v482 + ((2048 - v482) >> 5);
          v485 = v477 - v483;
          v486 = v482 - (v482 >> 5);
          if (v441 >= v483)
          {
            v487 = 3;
          }

          else
          {
            v487 = 2;
          }

          if (v441 >= v483)
          {
            v488 = v485;
          }

          else
          {
            v488 = v483;
          }

          if (v441 >= v483)
          {
            v489 = v441 - v483;
          }

          else
          {
            v489 = v441;
          }

          if (v441 < v483)
          {
            LOWORD(v486) = v484;
          }

          *(v481 + 2) = v486;
          if (!HIBYTE(v488))
          {
            if (v9 >= v12)
            {
              v490 = 0;
            }

            else
            {
              v491 = *v9++;
              v490 = v491;
            }

            v488 <<= 8;
            v489 = v490 | (v489 << 8);
          }

          v492 = *(v481 + 2 * v487);
          v493 = (v488 >> 11) * v492;
          LODWORD(v494) = 2 * v487;
          v495 = v492 + ((2048 - v492) >> 5);
          v496 = v488 - v493;
          v497 = v492 - (v492 >> 5);
          v498 = v489 >= v493;
          if (v489 >= v493)
          {
            v494 = (2 * v487) | 1u;
          }

          else
          {
            v494 = v494;
          }

          if (v489 >= v493)
          {
            v489 -= v493;
          }

          else
          {
            v496 = v493;
          }

          if (!v498)
          {
            LOWORD(v497) = v495;
          }

          *(v481 + 2 * v487) = v497;
          v499 = *(v481 + 2 * v494);
          if (!HIBYTE(v496))
          {
            if (v9 >= v12)
            {
              v500 = 0;
            }

            else
            {
              v501 = *v9++;
              v500 = v501;
            }

            v496 <<= 8;
            v489 = v500 | (v489 << 8);
          }

          v502 = (v496 >> 11) * v499;
          v503 = 2 * v494;
          v504 = v499 + ((2048 - v499) >> 5);
          v505 = v496 - v502;
          v506 = v499 - (v499 >> 5);
          if (v489 < v502)
          {
            v18 = v502;
          }

          else
          {
            v503 = (2 * v494) | 1;
            v18 = v505;
          }

          if (v489 >= v502)
          {
            v11 = v489 - v502;
          }

          else
          {
            v11 = v489;
          }

          if (v489 >= v502)
          {
            v507 = v506;
          }

          else
          {
            v507 = v504;
          }

          *(v481 + 2 * v494) = v507;
          v243 = (v503 ^ 8) + 10;
        }
      }

      else
      {
        v7[962] = v437 + ((2048 - v437) >> 5);
        if (!HIBYTE(v440))
        {
          if (v9 >= v12)
          {
            v442 = 0;
          }

          else
          {
            v443 = *v9++;
            v442 = v443;
          }

          v440 <<= 8;
          v200 = v442 | (v200 << 8);
        }

        v444 = &v7[8 * v22 + 964];
        v445 = *(v444 + 2);
        v446 = (v440 >> 11) * v445;
        v447 = v445 + ((2048 - v445) >> 5);
        v448 = v440 - v446;
        v449 = v200 - v446;
        v450 = v445 - (v445 >> 5);
        v451 = v200 >= v446;
        if (v200 >= v446)
        {
          v452 = 3;
        }

        else
        {
          v452 = 2;
        }

        if (v200 >= v446)
        {
          v446 = v448;
        }

        if (v451)
        {
          v453 = v449;
        }

        else
        {
          v453 = v200;
        }

        if (!v451)
        {
          LOWORD(v450) = v447;
        }

        *(v444 + 2) = v450;
        if (!HIBYTE(v446))
        {
          if (v9 >= v12)
          {
            v454 = 0;
          }

          else
          {
            v455 = *v9++;
            v454 = v455;
          }

          v446 <<= 8;
          v453 = v454 | (v453 << 8);
        }

        v456 = *(v444 + 2 * v452);
        v457 = (v446 >> 11) * v456;
        v458 = v456 + ((2048 - v456) >> 5);
        v459 = v446 - v457;
        v460 = v456 - (v456 >> 5);
        v461 = v453 >= v457;
        if (v453 >= v457)
        {
          v462 = (2 * v452) | 1u;
        }

        else
        {
          v462 = (2 * v452);
        }

        if (v453 >= v457)
        {
          v463 = v459;
        }

        else
        {
          v463 = v457;
        }

        if (v453 >= v457)
        {
          v453 -= v457;
        }

        if (!v461)
        {
          LOWORD(v460) = v458;
        }

        *(v444 + 2 * v452) = v460;
        v464 = *(v444 + 2 * v462);
        if (!HIBYTE(v463))
        {
          if (v9 >= v12)
          {
            v465 = 0;
          }

          else
          {
            v466 = *v9++;
            v465 = v466;
          }

          v463 <<= 8;
          v453 = v465 | (v453 << 8);
        }

        v467 = (v463 >> 11) * v464;
        v468 = 2 * v462;
        v469 = v464 + ((2048 - v464) >> 5);
        v470 = v463 - v467;
        v471 = v464 - (v464 >> 5);
        if (v453 < v467)
        {
          v18 = v467;
        }

        else
        {
          v468 = (2 * v462) | 1;
          v18 = v470;
        }

        if (v453 >= v467)
        {
          v11 = v453 - v467;
        }

        else
        {
          v11 = v453;
        }

        if (v453 >= v467)
        {
          v472 = v471;
        }

        else
        {
          v472 = v469;
        }

        *(v444 + 2 * v462) = v472;
        v243 = (v468 ^ 8) + 2;
      }

      v8 = byte_1003E2D70[v8 + 36];
    }

    else
    {
      v54[v8] = v159 + ((2048 - v159) >> 5);
      if (!HIBYTE(v160))
      {
        if (v9 >= v12)
        {
          v161 = 0;
        }

        else
        {
          v162 = *v9++;
          v161 = v162;
        }

        v160 <<= 8;
        v26 = v161 | (v26 << 8);
      }

      v163 = v7[432];
      v164 = (v160 >> 11) * v163;
      v165 = v26 - v164;
      if (v26 >= v164)
      {
        v207 = v160 - v164;
        v7[432] -= v7[432] >> 5;
        if (!((v160 - v164) >> 24))
        {
          if (v9 >= v12)
          {
            v208 = 0;
          }

          else
          {
            v209 = *v9++;
            v208 = v209;
          }

          v207 <<= 8;
          v165 = v208 | (v165 << 8);
        }

        v210 = v7[433];
        v211 = (v207 >> 11) * v210;
        v212 = v165 - v211;
        if (v165 >= v211)
        {
          v244 = v207 - v211;
          v7[433] -= v7[433] >> 5;
          if (!((v207 - v211) >> 24))
          {
            if (v9 >= v12)
            {
              v245 = 0;
            }

            else
            {
              v246 = *v9++;
              v245 = v246;
            }

            v244 <<= 8;
            v212 = v245 | (v212 << 8);
          }

          v247 = v7[691];
          v248 = (v244 >> 11) * v247;
          v249 = v247 + ((2048 - v247) >> 5);
          v250 = v244 - v248;
          v251 = v247 - (v247 >> 5);
          v252 = v212 >= v248;
          if (v212 >= v248)
          {
            v253 = 3;
          }

          else
          {
            v253 = 2;
          }

          if (v212 >= v248)
          {
            v254 = v212 - v248;
          }

          else
          {
            v250 = v248;
            v254 = v212;
          }

          if (!v252)
          {
            LOWORD(v251) = v249;
          }

          v7[691] = v251;
          if (!HIBYTE(v250))
          {
            if (v9 >= v12)
            {
              v255 = 0;
            }

            else
            {
              v256 = *v9++;
              v255 = v256;
            }

            v250 <<= 8;
            v254 = v255 | (v254 << 8);
          }

          v257 = v597[v253];
          v258 = (v250 >> 11) * v257;
          v259 = v257 + ((2048 - v257) >> 5);
          LODWORD(v260) = (2 * v253) | 1;
          v261 = v250 - v258;
          v262 = v254 - v258;
          v263 = v257 - (v257 >> 5);
          v264 = v254 >= v258;
          if (v254 >= v258)
          {
            v260 = v260;
          }

          else
          {
            v260 = (2 * v253);
          }

          if (v254 >= v258)
          {
            v258 = v261;
          }

          if (v264)
          {
            v254 = v262;
          }

          if (!v264)
          {
            LOWORD(v263) = v259;
          }

          v597[v253] = v263;
          v265 = v597[v260];
          if (!HIBYTE(v258))
          {
            if (v9 >= v12)
            {
              v266 = 0;
            }

            else
            {
              v267 = *v9++;
              v266 = v267;
            }

            v258 <<= 8;
            v254 = v266 | (v254 << 8);
          }

          v268 = (v258 >> 11) * v265;
          LODWORD(v269) = 2 * v260;
          v270 = v265 + ((2048 - v265) >> 5);
          v271 = v258 - v268;
          v272 = v265 - (v265 >> 5);
          if (v254 >= v268)
          {
            v269 = (2 * v260) | 1u;
          }

          else
          {
            v269 = v269;
          }

          if (v254 >= v268)
          {
            v273 = v271;
          }

          else
          {
            v273 = v268;
          }

          if (v254 >= v268)
          {
            v274 = v254 - v268;
          }

          else
          {
            v274 = v254;
          }

          if (v254 >= v268)
          {
            v275 = v272;
          }

          else
          {
            v275 = v270;
          }

          v597[v260] = v275;
          v276 = v597[v269];
          if (!HIBYTE(v273))
          {
            if (v9 >= v12)
            {
              v277 = 0;
            }

            else
            {
              v278 = *v9++;
              v277 = v278;
            }

            v273 <<= 8;
            v274 = v277 | (v274 << 8);
          }

          v279 = (v273 >> 11) * v276;
          v280 = 2 * v269;
          v281 = v274 - v279;
          if (v274 >= v279)
          {
            v280 |= 1u;
            v279 = v273 - v279;
            v274 = v281;
            v282 = v276 - (v276 >> 5);
          }

          else
          {
            v282 = v276 + ((2048 - v276) >> 5);
          }

          v597[v269] = v282;
          v289 = v280 ^ 0x10u;
          v290 = &v7[16 * v289 + 706];
          v291 = *(v290 + 2);
          if (!HIBYTE(v279))
          {
            if (v9 >= v12)
            {
              v292 = 0;
            }

            else
            {
              v293 = *v9++;
              v292 = v293;
            }

            v279 <<= 8;
            v274 = v292 | (v274 << 8);
          }

          v294 = (v279 >> 11) * v291;
          v295 = v291 + ((2048 - v291) >> 5);
          v296 = v279 - v294;
          v297 = v291 - (v291 >> 5);
          if (v274 >= v294)
          {
            v298 = 3;
          }

          else
          {
            v298 = 2;
          }

          if (v274 >= v294)
          {
            v299 = v274 - v294;
          }

          else
          {
            v296 = v294;
            v299 = v274;
          }

          if (v274 >= v294)
          {
            v300 = v297;
          }

          else
          {
            v300 = v295;
          }

          *(v290 + 2) = v300;
          v301 = *(v290 + 2 * v298);
          if (!HIBYTE(v296))
          {
            if (v9 >= v12)
            {
              v302 = 0;
            }

            else
            {
              v303 = *v9++;
              v302 = v303;
            }

            v296 <<= 8;
            v299 = v302 | (v299 << 8);
          }

          v304 = (v296 >> 11) * v301;
          v305 = v301 + ((2048 - v301) >> 5);
          v306 = v296 - v304;
          v307 = v301 - (v301 >> 5);
          v308 = v299 >= v304;
          if (v299 >= v304)
          {
            v309 = (2 * v298) | 1u;
          }

          else
          {
            v309 = (2 * v298);
          }

          if (v299 >= v304)
          {
            v299 -= v304;
          }

          else
          {
            v306 = v304;
          }

          if (v308)
          {
            v310 = v307;
          }

          else
          {
            v310 = v305;
          }

          *(v290 + 2 * v298) = v310;
          v311 = *(v290 + 2 * v309);
          if (!HIBYTE(v306))
          {
            if (v9 >= v12)
            {
              v312 = 0;
            }

            else
            {
              v313 = *v9++;
              v312 = v313;
            }

            v306 <<= 8;
            v299 = v312 | (v299 << 8);
          }

          v314 = (v306 >> 11) * v311;
          v315 = v311 + ((2048 - v311) >> 5);
          v316 = v306 - v314;
          v187 = v299 - v314;
          v317 = v311 - (v311 >> 5);
          if (v299 >= v314)
          {
            v318 = (2 * v309) | 1u;
          }

          else
          {
            v318 = (2 * v309);
          }

          if (v299 >= v314)
          {
            v319 = v316;
          }

          else
          {
            v319 = v314;
          }

          if (v299 >= v314)
          {
            v320 = v317;
          }

          else
          {
            v187 = v299;
            v320 = v315;
          }

          *(v290 + 2 * v309) = v320;
          v321 = *(v290 + 2 * v318);
          if (!HIBYTE(v319))
          {
            if (v9 >= v12)
            {
              v322 = 0;
            }

            else
            {
              v323 = *v9++;
              v322 = v323;
            }

            v319 <<= 8;
            v187 = v322 | (v187 << 8);
          }

          v191 = (v319 >> 11) * v321;
          v324 = 2 * v318;
          v325 = v187 - v191;
          if (v187 >= v191)
          {
            v324 |= 1u;
            v191 = v319 - v191;
            v187 = v325;
            v326 = v321 - (v321 >> 5);
          }

          else
          {
            v326 = v321 + ((2048 - v321) >> 5);
          }

          *(v290 + 2 * v318) = v326;
          v243 = (v324 ^ 0x10) + 16 * v289 + 18;
        }

        else
        {
          v7[433] = v210 + ((2048 - v210) >> 5);
          if (!HIBYTE(v211))
          {
            if (v9 >= v12)
            {
              v213 = 0;
            }

            else
            {
              v214 = *v9++;
              v213 = v214;
            }

            v211 <<= 8;
            v165 = v213 | (v165 << 8);
          }

          v215 = &v7[8 * v22 + 562];
          v216 = *(v215 + 2);
          v217 = (v211 >> 11) * v216;
          v218 = v216 + ((2048 - v216) >> 5);
          v219 = v211 - v217;
          v220 = v216 - (v216 >> 5);
          if (v165 >= v217)
          {
            v221 = 3;
          }

          else
          {
            v221 = 2;
          }

          if (v165 >= v217)
          {
            v222 = v219;
          }

          else
          {
            v222 = v217;
          }

          if (v165 >= v217)
          {
            v223 = v165 - v217;
          }

          else
          {
            v223 = v165;
          }

          if (v165 < v217)
          {
            LOWORD(v220) = v218;
          }

          *(v215 + 2) = v220;
          if (!HIBYTE(v222))
          {
            if (v9 >= v12)
            {
              v224 = 0;
            }

            else
            {
              v225 = *v9++;
              v224 = v225;
            }

            v222 <<= 8;
            v223 = v224 | (v223 << 8);
          }

          v226 = *(v215 + 2 * v221);
          v227 = (v222 >> 11) * v226;
          LODWORD(v228) = 2 * v221;
          v229 = v226 + ((2048 - v226) >> 5);
          v230 = v222 - v227;
          v187 = v223 - v227;
          v231 = v226 - (v226 >> 5);
          if (v223 >= v227)
          {
            v228 = (2 * v221) | 1u;
          }

          else
          {
            v228 = v228;
          }

          if (v223 >= v227)
          {
            v232 = v230;
          }

          else
          {
            v232 = v227;
          }

          if (v223 < v227)
          {
            v187 = v223;
            LOWORD(v231) = v229;
          }

          *(v215 + 2 * v221) = v231;
          v233 = *(v215 + 2 * v228);
          if (!HIBYTE(v232))
          {
            if (v9 >= v12)
            {
              v234 = 0;
            }

            else
            {
              v235 = *v9++;
              v234 = v235;
            }

            v232 <<= 8;
            v187 = v234 | (v187 << 8);
          }

          v191 = (v232 >> 11) * v233;
          v236 = 2 * v228;
          v237 = v187 - v191;
          if (v187 >= v191)
          {
            v236 |= 1u;
            v191 = v232 - v191;
            v187 = v237;
            v238 = v233 - (v233 >> 5);
          }

          else
          {
            v238 = v233 + ((2048 - v233) >> 5);
          }

          *(v215 + 2 * v228) = v238;
          v243 = (v236 ^ 8) + 10;
        }
      }

      else
      {
        v7[432] = v163 + ((2048 - v163) >> 5);
        if (!HIBYTE(v164))
        {
          if (v9 >= v12)
          {
            v166 = 0;
          }

          else
          {
            v167 = *v9++;
            v166 = v167;
          }

          v164 <<= 8;
          v26 = v166 | (v26 << 8);
        }

        v168 = &v7[8 * v22 + 434];
        v169 = *(v168 + 2);
        v170 = (v164 >> 11) * v169;
        v171 = v169 + ((2048 - v169) >> 5);
        v172 = v164 - v170;
        v173 = v26 - v170;
        v174 = v169 - (v169 >> 5);
        v175 = v26 >= v170;
        if (v26 >= v170)
        {
          v176 = 3;
        }

        else
        {
          v176 = 2;
        }

        if (v26 >= v170)
        {
          v170 = v172;
        }

        if (v175)
        {
          v177 = v173;
        }

        else
        {
          v177 = v26;
        }

        if (!v175)
        {
          LOWORD(v174) = v171;
        }

        *(v168 + 2) = v174;
        if (!HIBYTE(v170))
        {
          if (v9 >= v12)
          {
            v178 = 0;
          }

          else
          {
            v179 = *v9++;
            v178 = v179;
          }

          v170 <<= 8;
          v177 = v178 | (v177 << 8);
        }

        v180 = *(v168 + 2 * v176);
        v181 = (v170 >> 11) * v180;
        v182 = v180 + ((2048 - v180) >> 5);
        v183 = v170 - v181;
        v184 = v180 - (v180 >> 5);
        if (v177 >= v181)
        {
          v185 = (2 * v176) | 1u;
        }

        else
        {
          v185 = (2 * v176);
        }

        if (v177 >= v181)
        {
          v186 = v183;
        }

        else
        {
          v186 = v181;
        }

        if (v177 >= v181)
        {
          v187 = v177 - v181;
        }

        else
        {
          v187 = v177;
        }

        if (v177 < v181)
        {
          LOWORD(v184) = v182;
        }

        *(v168 + 2 * v176) = v184;
        v188 = *(v168 + 2 * v185);
        if (!HIBYTE(v186))
        {
          if (v9 >= v12)
          {
            v189 = 0;
          }

          else
          {
            v190 = *v9++;
            v189 = v190;
          }

          v186 <<= 8;
          v187 = v189 | (v187 << 8);
        }

        v191 = (v186 >> 11) * v188;
        v192 = 2 * v185;
        v193 = v187 - v191;
        if (v187 >= v191)
        {
          v192 |= 1u;
          v191 = v186 - v191;
          v187 = v193;
          v194 = v188 - (v188 >> 5);
        }

        else
        {
          v194 = v188 + ((2048 - v188) >> 5);
        }

        *(v168 + 2 * v185) = v194;
        v243 = (v192 ^ 8) + 2;
      }

      v327 = v243 - 2;
      if (v243 >= 6)
      {
        v327 = 3;
      }

      v328 = &v7[80 * v327 + 1492];
      v329 = *(v328 + 130);
      if (!HIBYTE(v191))
      {
        if (v9 >= v12)
        {
          v330 = 0;
        }

        else
        {
          v331 = *v9++;
          v330 = v331;
        }

        v191 <<= 8;
        v187 = v330 | (v187 << 8);
      }

      v332 = v328 + 128;
      v333 = (v191 >> 11) * v329;
      v334 = v329 + ((2048 - v329) >> 5);
      v335 = v329 - (v329 >> 5);
      if (v187 >= v333)
      {
        v336 = 3;
      }

      else
      {
        v336 = 2;
      }

      if (v187 >= v333)
      {
        v337 = v191 - v333;
      }

      else
      {
        v337 = v333;
      }

      if (v187 >= v333)
      {
        v338 = v187 - v333;
      }

      else
      {
        v338 = v187;
      }

      if (v187 >= v333)
      {
        v339 = v335;
      }

      else
      {
        v339 = v334;
      }

      *(v328 + 130) = v339;
      v340 = *(v332 + 2 * v336);
      if (!HIBYTE(v337))
      {
        if (v9 >= v12)
        {
          v341 = 0;
        }

        else
        {
          v342 = *v9++;
          v341 = v342;
        }

        v337 <<= 8;
        v338 = v341 | (v338 << 8);
      }

      v343 = (v337 >> 11) * v340;
      v344 = v340 + ((2048 - v340) >> 5);
      v345 = v337 - v343;
      v346 = v340 - (v340 >> 5);
      v347 = v338 >= v343;
      if (v338 >= v343)
      {
        v348 = (2 * v336) | 1u;
      }

      else
      {
        v348 = (2 * v336);
      }

      if (v338 >= v343)
      {
        v349 = v345;
      }

      else
      {
        v349 = v343;
      }

      if (v338 >= v343)
      {
        v338 -= v343;
      }

      if (v347)
      {
        v350 = v346;
      }

      else
      {
        v350 = v344;
      }

      *(v332 + 2 * v336) = v350;
      v351 = *(v332 + 2 * v348);
      if (!HIBYTE(v349))
      {
        if (v9 >= v12)
        {
          v352 = 0;
        }

        else
        {
          v353 = *v9++;
          v352 = v353;
        }

        v349 <<= 8;
        v338 = v352 | (v338 << 8);
      }

      v354 = (v349 >> 11) * v351;
      v355 = v351 + ((2048 - v351) >> 5);
      v356 = v349 - v354;
      v357 = v351 - (v351 >> 5);
      if (v338 >= v354)
      {
        v358 = (2 * v348) | 1u;
      }

      else
      {
        v358 = (2 * v348);
      }

      if (v338 >= v354)
      {
        v359 = v356;
      }

      else
      {
        v359 = v354;
      }

      if (v338 >= v354)
      {
        v360 = v338 - v354;
      }

      else
      {
        v360 = v338;
      }

      if (v338 >= v354)
      {
        v361 = v357;
      }

      else
      {
        v361 = v355;
      }

      *(v332 + 2 * v348) = v361;
      v362 = *(v332 + 2 * v358);
      if (!HIBYTE(v359))
      {
        if (v9 >= v12)
        {
          v363 = 0;
        }

        else
        {
          v364 = *v9++;
          v363 = v364;
        }

        v359 <<= 8;
        v360 = v363 | (v360 << 8);
      }

      v365 = (v359 >> 11) * v362;
      v366 = 2 * v358;
      v367 = v362 + ((2048 - v362) >> 5);
      v368 = v359 - v365;
      v369 = v360 - v365;
      v370 = v362 - (v362 >> 5);
      v371 = v360 >= v365;
      if (v360 < v365)
      {
        v368 = v365;
      }

      else
      {
        v366 = (2 * v358) | 1;
      }

      if (v360 >= v365)
      {
        v372 = v370;
      }

      else
      {
        v372 = v367;
      }

      *(v332 + 2 * v358) = v372;
      if (v371)
      {
        v373 = v369;
      }

      else
      {
        v373 = v360;
      }

      v374 = (4 * v366) ^ 0x40;
      v375 = v328 + 2 * v374;
      v376 = *(v375 + 2);
      if (!HIBYTE(v368))
      {
        if (v9 >= v12)
        {
          v377 = 0;
        }

        else
        {
          v378 = *v9++;
          v377 = v378;
        }

        v368 <<= 8;
        v373 = v377 | (v373 << 8);
      }

      v379 = (v368 >> 11) * v376;
      v380 = v376 + ((2048 - v376) >> 5);
      v381 = v368 - v379;
      v382 = v376 - (v376 >> 5);
      v383 = v373 >= v379;
      if (v373 >= v379)
      {
        v384 = 3;
      }

      else
      {
        v384 = 2;
      }

      if (v373 >= v379)
      {
        v385 = v381;
      }

      else
      {
        v385 = v379;
      }

      if (v373 >= v379)
      {
        v373 -= v379;
      }

      if (v383)
      {
        v386 = v382;
      }

      else
      {
        v386 = v380;
      }

      *(v375 + 2) = v386;
      v387 = *(v375 + 2 * v384);
      if (!HIBYTE(v385))
      {
        if (v9 >= v12)
        {
          v388 = 0;
        }

        else
        {
          v389 = *v9++;
          v388 = v389;
        }

        v385 <<= 8;
        v373 = v388 | (v373 << 8);
      }

      v390 = (v385 >> 11) * v387;
      v391 = v387 + ((2048 - v387) >> 5);
      v392 = v385 - v390;
      v393 = v387 - (v387 >> 5);
      if (v373 >= v390)
      {
        v394 = (2 * v384) | 1;
      }

      else
      {
        v394 = 2 * v384;
      }

      if (v373 >= v390)
      {
        v18 = v392;
      }

      else
      {
        v18 = v390;
      }

      if (v373 >= v390)
      {
        v11 = v373 - v390;
      }

      else
      {
        v11 = v373;
      }

      if (v373 >= v390)
      {
        v395 = v393;
      }

      else
      {
        v395 = v391;
      }

      *(v375 + 2 * v384) = v395;
      v396 = (v394 ^ 4) + v374;
      if (v366 != 16)
      {
        v397 = v396 >> 1;
        v398 = (v396 >> 1) - 1;
        v399 = (v394 & 1 | 2) << ((v396 >> 1) - 1);
        if (v396 > 0xD)
        {
          v414 = v397 - 5;
          if (v397 != 5)
          {
            v415 = 0;
            do
            {
              if (!HIBYTE(v18))
              {
                if (v9 >= v12)
                {
                  v416 = 0;
                }

                else
                {
                  v417 = *v9++;
                  v416 = v417;
                }

                v18 <<= 8;
                v11 = v416 | (v11 << 8);
              }

              v418 = v11 >= v18 >> 1;
              v18 >>= 1;
              v419 = v418;
              if (v418)
              {
                v420 = v18;
              }

              else
              {
                v420 = 0;
              }

              v11 -= v420;
              v415 = v419 | (2 * v415);
              --v414;
            }

            while (v414);
            v414 = 16 * v415;
          }

          v421 = 0;
          v422 = 0;
          v423 = 1;
          do
          {
            if (!HIBYTE(v18))
            {
              if (v9 >= v12)
              {
                v424 = 0;
              }

              else
              {
                v425 = *v9++;
                v424 = v425;
              }

              v18 <<= 8;
              v11 = v424 | (v11 << 8);
            }

            v426 = v423;
            v427 = v17[v423];
            v428 = v427 + ((2048 - v427) >> 5);
            v429 = (v18 >> 11) * v427;
            v423 *= 2;
            v430 = v427 - (v427 >> 5);
            v431 = v11 >= v429;
            if (v11 < v429)
            {
              v18 = v429;
            }

            else
            {
              v423 |= 1u;
              v18 -= v429;
            }

            if (v11 >= v429)
            {
              v11 -= v429;
            }

            if (v431)
            {
              v432 = 1;
            }

            else
            {
              LOWORD(v430) = v428;
              v432 = 0;
            }

            v17[v426] = v430;
            v422 += v432 << v421++;
          }

          while (v421 != 4);
          v401 = v422 + v414;
        }

        else if (v396 < 4)
        {
          v401 = 0;
        }

        else
        {
          v400 = 0;
          v401 = 0;
          v402 = &v7[v399 + 1812];
          if (v398 <= 1)
          {
            v403 = 1;
          }

          else
          {
            v403 = v398;
          }

          v404 = 1;
          do
          {
            if (!HIBYTE(v18))
            {
              if (v9 >= v12)
              {
                v405 = 0;
              }

              else
              {
                v406 = *v9++;
                v405 = v406;
              }

              v18 <<= 8;
              v11 = v405 | (v11 << 8);
            }

            v407 = v404;
            v408 = *(v402 + 2 * v404);
            v409 = v408 + ((2048 - v408) >> 5);
            v410 = (v18 >> 11) * v408;
            v404 *= 2;
            v411 = v408 - (v408 >> 5);
            v412 = v11 >= v410;
            if (v11 < v410)
            {
              v18 = v410;
            }

            else
            {
              v404 |= 1u;
              v18 -= v410;
            }

            if (v11 >= v410)
            {
              v11 -= v410;
            }

            if (v412)
            {
              v413 = 1;
            }

            else
            {
              LOWORD(v411) = v409;
              v413 = 0;
            }

            *(v402 + 2 * v407) = v411;
            v401 += v413 << v400++;
          }

          while (v403 != v400);
        }

        v396 = v401 + v399;
      }

      if (&a3[-a2] <= v396)
      {
        return 0;
      }

      v8 = byte_1003E2D70[v8 + 24];
      a1[3] = a1[2];
      *(a1 + 1) = *a1;
      LODWORD(v203) = v396 + 1;
      *a1 = v396 + 1;
    }

    v206 = &a3[v243];
    if ((v206 + 47) > a5)
    {
      if (v206 > a4)
      {
        return 0;
      }

      do
      {
        *a3 = a3[-v203];
        ++a3;
      }

      while (a3 < v206);
    }

    else if (v203 > 0xF)
    {
      v590 = &a3[-v203];
      if (v203 >= v243 + 47)
      {
        v592 = v590[1];
        *a3 = *v590;
        *(a3 + 1) = v592;
        *(a3 + 2) = v590[2];
        if (v243 >= 0x31)
        {
          for (i = 48; i < v243; i += 16)
          {
            *&a3[i] = v590[i / 0x10];
          }
        }
      }

      else
      {
        *a3 = *v590;
        *(a3 + 1) = v590[1];
        *(a3 + 2) = v590[2];
        if (v243 >= 0x31)
        {
          for (j = 48; j < v243; j += 16)
          {
            *&a3[j] = v590[j / 0x10];
          }
        }
      }
    }

    else
    {
      v584 = &a3[-v203];
      v585 = vqtbl1q_s8(*v584, xmmword_1003E2DB0[(v203 - 1)]);
      v586 = byte_1003E2EA0[(v203 - 1)];
      v587 = &v584->i8[v586];
      *a3 = v585;
      *(a3 + 1) = *v587;
      *(a3 + 2) = *(v587 + 1);
      if (v243 >= 0x31)
      {
        v588 = v586 - v203 + 32;
        for (k = 48; k < v243; k += 16)
        {
          *&a3[k] = *&a3[v588];
          v588 += 16;
        }
      }
    }

LABEL_779:
    a3 = v206;
    if (v206 >= a4)
    {
      goto LABEL_837;
    }
  }

  *v23 = v24 + ((2048 - v24) >> 5);
  if (a3 <= a2)
  {
    v27 = 0;
  }

  else
  {
    v27 = *(a3 - 1);
  }

  v28 = &v600[816 * ((v27 >> v599) | ((v21 & v601) << v602))];
  if (!byte_1003E2D70[v8])
  {
    v29 = 0;
    v30 = a3[-*a1];
    v31 = v28 + 768;
    v32 = v30 & 0xF0;
    v33 = 1;
    do
    {
      if (v29 > 3)
      {
        break;
      }

      v34 = 2 * v33;
      v35 = ((2 * v33) | (v32 >> 7) & 1) + 16;
      if (!HIBYTE(v25))
      {
        if (v9 >= v12)
        {
          v36 = 0;
        }

        else
        {
          v37 = *v9++;
          v36 = v37;
        }

        v25 <<= 8;
        v11 = v36 | (v11 << 8);
      }

      v38 = v31[v35];
      v39 = (v32 >> 7) & 1;
      v40 = (v25 >> 11) * v38;
      v41 = v38 + ((2048 - v38) >> 5);
      v25 -= v40;
      v42 = v38 - (v38 >> 5);
      v43 = v11 >= v40;
      v33 = v11 >= v40 ? v34 | 1 : v34;
      if (v11 >= v40)
      {
        v11 -= v40;
      }

      else
      {
        v25 = v40;
      }

      if (v43)
      {
        v44 = 1;
      }

      else
      {
        LOWORD(v42) = v41;
        v44 = 0;
      }

      v31[v35] = v42;
      if (v44 == v39)
      {
        ++v29;
      }

      else
      {
        if (v29 == 3)
        {
          break;
        }

        do
        {
          if (!HIBYTE(v25))
          {
            if (v9 >= v12)
            {
              v45 = 0;
            }

            else
            {
              v46 = *v9++;
              v45 = v46;
            }

            v25 <<= 8;
            v11 = v45 | (v11 << 8);
          }

          v47 = v33;
          v48 = v31[v33];
          v49 = (v25 >> 11) * v48;
          v33 *= 2;
          v50 = v48 + ((2048 - v48) >> 5);
          v25 -= v49;
          v51 = v48 - (v48 >> 5);
          v52 = v11 >= v49;
          if (v11 < v49)
          {
            v25 = v49;
          }

          else
          {
            v33 |= 1u;
          }

          if (v11 >= v49)
          {
            v11 -= v49;
          }

          if (!v52)
          {
            LOWORD(v51) = v50;
          }

          v31[v47] = v51;
          ++v29;
        }

        while (v29 < 3);
        v29 = 4;
      }

      v32 *= 2;
    }

    while (v44 == v39);
    v55 = 16 * (v33 ^ 0x10);
    if ((v30 ^ v55) <= 0xF)
    {
      v56 = 0;
      v57 = &v28[48 * (v33 ^ 0x10)];
      v58 = 16 * v30;
      v59 = 1;
      do
      {
        if (v56 > 3)
        {
          break;
        }

        v60 = 2 * v59;
        v61 = ((2 * v59) | (v58 >> 7) & 1) + 16;
        if (!HIBYTE(v25))
        {
          if (v9 >= v12)
          {
            v62 = 0;
          }

          else
          {
            v63 = *v9++;
            v62 = v63;
          }

          v25 <<= 8;
          v11 = v62 | (v11 << 8);
        }

        v64 = v57[v61];
        v65 = (v58 >> 7) & 1;
        v66 = (v25 >> 11) * v64;
        v67 = v64 + ((2048 - v64) >> 5);
        v59 = v60 | 1;
        v25 -= v66;
        v68 = v64 - (v64 >> 5);
        v69 = v11 >= v66;
        if (v11 >= v66)
        {
          v11 -= v66;
        }

        else
        {
          v59 = v60;
          v25 = v66;
        }

        if (v69)
        {
          v70 = 1;
        }

        else
        {
          LOWORD(v68) = v67;
          v70 = 0;
        }

        v57[v61] = v68;
        if (v70 == v65)
        {
          ++v56;
        }

        else
        {
          if (v56 == 3)
          {
            break;
          }

          do
          {
            if (!HIBYTE(v25))
            {
              if (v9 >= v12)
              {
                v71 = 0;
              }

              else
              {
                v72 = *v9++;
                v71 = v72;
              }

              v25 <<= 8;
              v11 = v71 | (v11 << 8);
            }

            v73 = v59;
            v74 = v57[v59];
            v75 = (v25 >> 11) * v74;
            v59 *= 2;
            v76 = v74 + ((2048 - v74) >> 5);
            v25 -= v75;
            v77 = v74 - (v74 >> 5);
            v78 = v11 >= v75;
            if (v11 < v75)
            {
              v25 = v75;
            }

            else
            {
              v59 |= 1u;
            }

            if (v11 >= v75)
            {
              v11 -= v75;
            }

            if (!v78)
            {
              LOWORD(v77) = v76;
            }

            v57[v73] = v77;
            ++v56;
          }

          while (v56 < 3);
          v56 = 4;
        }

        v58 *= 2;
      }

      while (v70 == v65);
      v79 = v59 ^ 0x10;
      goto LABEL_152;
    }

    goto LABEL_100;
  }

  while (1)
  {
    v120 = v28 + 768;
    v121 = v28[769];
    if (!HIBYTE(v25))
    {
      if (v9 >= v12)
      {
        v122 = 0;
      }

      else
      {
        v123 = *v9++;
        v122 = v123;
      }

      v25 <<= 8;
      v11 = v122 | (v11 << 8);
    }

    v124 = (v25 >> 11) * v121;
    v125 = v121 + ((2048 - v121) >> 5);
    v126 = v121 - (v121 >> 5);
    if (v11 >= v124)
    {
      v127 = 3;
    }

    else
    {
      v127 = 2;
    }

    if (v11 >= v124)
    {
      v128 = v25 - v124;
    }

    else
    {
      v128 = v124;
    }

    if (v11 >= v124)
    {
      v129 = v11 - v124;
    }

    else
    {
      v129 = v11;
    }

    if (v11 >= v124)
    {
      v130 = v126;
    }

    else
    {
      v130 = v125;
    }

    v28[769] = v130;
    v131 = v120[v127];
    if (!HIBYTE(v128))
    {
      if (v9 >= v12)
      {
        v132 = 0;
      }

      else
      {
        v133 = *v9++;
        v132 = v133;
      }

      v128 <<= 8;
      v129 = v132 | (v129 << 8);
    }

    v134 = (v128 >> 11) * v131;
    v135 = v131 + ((2048 - v131) >> 5);
    v136 = v128 - v134;
    v137 = v131 - (v131 >> 5);
    v138 = v129 >= v134;
    if (v129 >= v134)
    {
      v139 = (2 * v127) | 1u;
    }

    else
    {
      v139 = (2 * v127);
    }

    if (v129 >= v134)
    {
      v140 = v136;
    }

    else
    {
      v140 = v134;
    }

    if (v129 >= v134)
    {
      v129 -= v134;
    }

    if (v138)
    {
      v141 = v137;
    }

    else
    {
      v141 = v135;
    }

    v120[v127] = v141;
    v142 = v120[v139];
    if (!HIBYTE(v140))
    {
      if (v9 >= v12)
      {
        v143 = 0;
      }

      else
      {
        v144 = *v9++;
        v143 = v144;
      }

      v140 <<= 8;
      v129 = v143 | (v129 << 8);
    }

    v145 = (v140 >> 11) * v142;
    v146 = v142 + ((2048 - v142) >> 5);
    v147 = v140 - v145;
    v148 = v142 - (v142 >> 5);
    if (v129 >= v145)
    {
      v149 = (2 * v139) | 1u;
    }

    else
    {
      v149 = (2 * v139);
    }

    if (v129 >= v145)
    {
      v11 = v129 - v145;
    }

    else
    {
      v147 = v145;
      v11 = v129;
    }

    if (v129 >= v145)
    {
      v150 = v148;
    }

    else
    {
      v150 = v146;
    }

    v120[v139] = v150;
    v151 = v120[v149];
    if (!HIBYTE(v147))
    {
      if (v9 >= v12)
      {
        v152 = 0;
      }

      else
      {
        v153 = *v9++;
        v152 = v153;
      }

      v147 <<= 8;
      v11 = v152 | (v11 << 8);
    }

    v25 = (v147 >> 11) * v151;
    v154 = 2 * v149;
    v155 = v11 - v25;
    if (v11 >= v25)
    {
      v154 |= 1u;
      v25 = v147 - v25;
      v11 = v155;
      v156 = v151 - (v151 >> 5);
    }

    else
    {
      v156 = v151 + ((2048 - v151) >> 5);
    }

    v120[v149] = v156;
    v55 = (16 * v154) ^ 0x100;
LABEL_100:
    v80 = &v28[3 * v55];
    v81 = v80[1];
    if (!HIBYTE(v25))
    {
      if (v9 >= v12)
      {
        v82 = 0;
      }

      else
      {
        v83 = *v9++;
        v82 = v83;
      }

      v25 <<= 8;
      v11 = v82 | (v11 << 8);
    }

    v84 = (v25 >> 11) * v81;
    v85 = v81 + ((2048 - v81) >> 5);
    v86 = v81 - (v81 >> 5);
    if (v11 >= v84)
    {
      v87 = 3;
    }

    else
    {
      v87 = 2;
    }

    if (v11 >= v84)
    {
      v88 = v25 - v84;
    }

    else
    {
      v88 = v84;
    }

    if (v11 >= v84)
    {
      v89 = v11 - v84;
    }

    else
    {
      v89 = v11;
    }

    if (v11 >= v84)
    {
      v90 = v86;
    }

    else
    {
      v90 = v85;
    }

    v80[1] = v90;
    v91 = v80[v87];
    if (!HIBYTE(v88))
    {
      if (v9 >= v12)
      {
        v92 = 0;
      }

      else
      {
        v93 = *v9++;
        v92 = v93;
      }

      v88 <<= 8;
      v89 = v92 | (v89 << 8);
    }

    v94 = (v88 >> 11) * v91;
    v95 = v91 + ((2048 - v91) >> 5);
    v96 = v88 - v94;
    v97 = v91 - (v91 >> 5);
    v98 = v89 >= v94;
    if (v89 >= v94)
    {
      v99 = (2 * v87) | 1u;
    }

    else
    {
      v99 = (2 * v87);
    }

    if (v89 >= v94)
    {
      v100 = v96;
    }

    else
    {
      v100 = v94;
    }

    if (v89 >= v94)
    {
      v89 -= v94;
    }

    if (v98)
    {
      v101 = v97;
    }

    else
    {
      v101 = v95;
    }

    v80[v87] = v101;
    v102 = v80[v99];
    if (!HIBYTE(v100))
    {
      if (v9 >= v12)
      {
        v103 = 0;
      }

      else
      {
        v104 = *v9++;
        v103 = v104;
      }

      v100 <<= 8;
      v89 = v103 | (v89 << 8);
    }

    v105 = (v100 >> 11) * v102;
    v106 = v102 + ((2048 - v102) >> 5);
    v107 = v100 - v105;
    v108 = v102 - (v102 >> 5);
    if (v89 >= v105)
    {
      v109 = (2 * v99) | 1u;
    }

    else
    {
      v109 = (2 * v99);
    }

    if (v89 >= v105)
    {
      v11 = v89 - v105;
    }

    else
    {
      v107 = v105;
      v11 = v89;
    }

    if (v89 >= v105)
    {
      v110 = v108;
    }

    else
    {
      v110 = v106;
    }

    v80[v99] = v110;
    v111 = v80[v109];
    if (!HIBYTE(v107))
    {
      if (v9 >= v12)
      {
        v112 = 0;
      }

      else
      {
        v113 = *v9++;
        v112 = v113;
      }

      v107 <<= 8;
      v11 = v112 | (v11 << 8);
    }

    v25 = (v107 >> 11) * v111;
    v114 = 2 * v109;
    v115 = v11 - v25;
    if (v11 >= v25)
    {
      v114 |= 1u;
      v25 = v107 - v25;
      v11 = v115;
      v116 = v111 - (v111 >> 5);
    }

    else
    {
      v116 = v111 + ((2048 - v111) >> 5);
    }

    v80[v109] = v116;
    v79 = v114 ^ 0x10;
LABEL_152:
    v54 = v7 + 192;
    v8 = byte_1003E2D70[v8 + 12];
    *a3++ = v79 + v55;
    if (a3 == a4)
    {
      break;
    }

    v22 = ++v21 & v604;
    v23 = &v7[16 * v8 + (v21 & v604)];
    v24 = *v23;
    if (!HIBYTE(v25))
    {
      if (v9 >= v12)
      {
        v117 = 0;
      }

      else
      {
        v118 = *v9++;
        v117 = v118;
      }

      v25 <<= 8;
      v11 = v117 | (v11 << 8);
    }

    v119 = (v25 >> 11) * v24;
    v26 = v11 - v119;
    if (v11 >= v119)
    {
      v53 = v25 - v119;
      goto LABEL_212;
    }

    *v23 = v24 + ((2048 - v24) >> 5);
    v28 = &v600[816 * (((v21 & v601) << v602) | ((v79 + v55) >> v599))];
    v25 = (v25 >> 11) * v24;
  }

  v206 = a4;
LABEL_837:
  v7 = 0;
  if (!v11 && v206 == a4)
  {
    *(a1 + 29) = v8;
    return (a4 - v594);
  }

  return v7;
}

void sub_10036EEB0(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed time sync with error %@", &v1, 0xCu);
}

void sub_10036EF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  sub_100172784(&_mh_execute_header, &_os_log_default, a3, "Failed to register_config_from_buffer with error %d", a5, a6, a7, a8, v8);
}

void sub_10036EFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  sub_100172784(&_mh_execute_header, &_os_log_default, a3, "register_config_parameters() failed with error %d", a5, a6, a7, a8, v8);
}

void sub_10036F018()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  sub_10036F03C(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_10036F03C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = *a1;
  sub_100172784(&_mh_execute_header, &_os_log_default, a3, "image4_trust_evaluate returned nonzero exit code %d", a5, a6, a7, a8, v8);
}

void sub_10036F0B4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = *a1;
  sub_100172784(&_mh_execute_header, &_os_log_default, a3, "image4_environment_copy_nonce_digest returned nonzero exit code %d", a5, a6, a7, a8, v8);
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String_optional __swiftcall URL.host(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.host(percentEncoded:)(percentEncoded);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t Data.init(base64Encoded:options:)()
{
  return Data.init(base64Encoded:options:)();
}

{
  return Data.init(base64Encoded:options:)();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall formatSupportedNarrativeIdentities(separator:)(Swift::String separator)
{
  v1 = formatSupportedNarrativeIdentities(separator:)(separator._countAndFlagsBits, separator._object);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t FilePath.init(_:)()
{
  return FilePath.init(_:)();
}

{
  return FilePath.init(_:)();
}

uint64_t FilePath.appending(_:)()
{
  return FilePath.appending(_:)();
}

{
  return FilePath.appending(_:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = String.init(_:)(a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
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

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
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

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t UnkeyedDecodingContainer.decodeIfPresent(_:)()
{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

uint64_t dispatch thunk of SingleValueDecodingContainer.decode(_:)()
{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

uint64_t dispatch thunk of SingleValueEncodingContainer.encode(_:)()
{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

uint64_t KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}