uint64_t sub_10040BAA8()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v2 - 8);
  v4 = v33 - v3;
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v5);
  v7 = v33 - v6;
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  v8._countAndFlagsBits = 0x7069726373627553;
  v8._object = 0xEC0000006E6F6974;
  String.append(_:)(v8);
  v9._object = 0x8000000101354230;
  v9._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v9);
  v10 = type metadata accessor for NotifyMeRequest.Subscription(0);
  v11._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6144747261747320;
  v12._object = 0xEC000000203A6574;
  String.append(_:)(v12);
  sub_1000D2A70(v0, v7, &unk_101696900, &unk_10138B1E0);
  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x3A64697575616220;
  v14._object = 0xE900000000000020;
  String.append(_:)(v14);
  sub_1000D2A70(v0 + v10[7], v4, &qword_1016980D0, &unk_10138F3B0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v19 = UUID.uuidString.getter();
    v18 = v20;
    (*(v16 + 8))(v4, v15);
    v17 = v19;
  }

  v21 = v18;
  String.append(_:)(*&v17);

  v22._countAndFlagsBits = 0x756F632073646920;
  v22._object = 0xEB0000000020746ELL;
  String.append(_:)(v22);
  v34._countAndFlagsBits = *(*(v1 + v10[8]) + 16);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0xD000000000000016;
  v24._object = 0x8000000101354250;
  String.append(_:)(v24);
  sub_1000D2A70(v1 + v10[9], v7, &unk_101696900, &unk_10138B1E0);
  v25._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v25);

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v34._countAndFlagsBits = 0xD000000000000014;
  v34._object = 0x8000000101354270;
  v33[1] = *(*(v1 + v10[11]) + 16);
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  String.append(_:)(v34);

  strcpy(&v34, " productId: ");
  BYTE5(v34._object) = 0;
  HIWORD(v34._object) = -5120;
  v27 = (v1 + v10[10]);
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;
  }

  else
  {
    v29 = 0;
  }

  if (v28)
  {
    v30 = v27[1];
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31._countAndFlagsBits = v29;
  v31._object = v30;
  String.append(_:)(v31);

  String.append(_:)(v34);

  return v35;
}

uint64_t sub_10040BF28(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169F550, &qword_1013A0D20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000035D0(a1, a1[3]);
  sub_10040E0E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000BC4D4(&qword_10169F560, &qword_1013A0D28);
  sub_10040E2F8(&qword_10169F568, &qword_10169F570, &unk_1013A0C14, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10040C0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6269726373627573 && a2 == 0xE900000000000065)
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

uint64_t sub_10040C168(uint64_t a1)
{
  v2 = sub_10040E0E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10040C1A4(uint64_t a1)
{
  v2 = sub_10040E0E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10040C1E0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10040E13C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10040C228(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7461447472617473;
    v6 = 0x646E756F46636F6CLL;
    if (a1 != 2)
    {
      v6 = 0x646975756162;
    }

    if (a1)
    {
      v5 = 0x7069726373627573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x49746375646F7270;
    v2 = 0x7261646E6F636573;
    if (a1 != 7)
    {
      v2 = 0x76654464656E776FLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 7562345;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10040C36C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169F5A8, &qword_1013A0D40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10040E394();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  v9 = type metadata accessor for Date();
  sub_10040E520(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v13[2] = v9;
    v14 = type metadata accessor for NotifyMeRequest.Subscription(0);
    LOBYTE(v17) = 1;
    v10 = type metadata accessor for UUID();
    sub_10040E520(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = v3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13[1] = v10;
    v11 = v14;
    LOBYTE(v17) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v17) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = *(v15 + *(v11 + 32));
    v16 = 4;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_10040E3E8(&qword_10169C9F8, sub_1000E3190, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v15 + *(v14 + 44));
    v16 = 7;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v15 + *(v14 + 48));
    v16 = 8;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10040C770@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v40 = v37 - v4;
  v5 = type metadata accessor for UUID();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = v37 - v12;
  v44 = sub_1000BC4D4(&qword_10169F590, &qword_1013A0D38);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v14 = v37 - v13;
  v15 = type metadata accessor for NotifyMeRequest.Subscription(0);
  __chkstk_darwin(v15);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v47 = a1;
  sub_1000035D0(a1, v18);
  sub_10040E394();
  v45 = v14;
  v19 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return sub_100007BAC(v47);
  }

  v38 = v11;
  v20 = v42;
  v46 = v15;
  type metadata accessor for Date();
  LOBYTE(v49) = 0;
  v21 = sub_10040E520(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v37[1] = v21;
  v22 = v43;
  v43 = v17;
  sub_1000D2AD8(v22, v17, &unk_101696900, &unk_10138B1E0);
  LOBYTE(v49) = 1;
  v23 = v7;
  v24 = v5;
  v25 = sub_10040E520(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v20;
  v37[2] = v24;
  v37[0] = v25;
  v27 = v46;
  v28 = v43;
  (*(v41 + 32))(&v43[v46[5]], v23, v24);
  LOBYTE(v49) = 2;
  v28[v27[6]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v49) = 3;
  v29 = v40;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v29, &v43[v27[7]], &qword_1016980D0, &unk_10138F3B0);
  v30 = sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
  v48 = 4;
  sub_10040E3E8(&qword_10169F5A0, sub_1000E307C, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v43;
  v40 = v30;
  *&v43[v27[8]] = v49;
  LOBYTE(v49) = 5;
  v32 = v38;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v32, v31 + v27[9], &unk_101696900, &unk_10138B1E0);
  LOBYTE(v49) = 6;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = (v31 + v27[10]);
  *v34 = v33;
  v34[1] = v35;
  v48 = 7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v31 + v27[11]) = v49;
  v48 = 8;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v45, v44);
  *(v31 + v27[12]) = v49;
  sub_10040E460(v31, v39);
  sub_100007BAC(v47);
  return sub_10040E4C4(v31);
}

uint64_t sub_10040CFE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10040E798(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10040D010(uint64_t a1)
{
  v2 = sub_10040E394();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10040D04C(uint64_t a1)
{
  v2 = sub_10040E394();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10040D0B8(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = type metadata accessor for HashAlgorithm();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10040D230, 0, 0);
}

void sub_10040D230()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[20];
  v32 = v0[18];
  v33 = v0[17];
  v34 = v0[12];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v6 + 8))(v7, v9);
  v0[9] = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  v0[10] = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v24 = v14;
  v25 = sub_100EB2DF0();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v25, v27, 0x6567412D72657355, 0xEA0000000000746ELL, v28);
  v0[23] = v24;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v0[24] = JSONEncoder.init()();
  *v8 = sub_100281AE0;
  v8[1] = 0;
  (*(v32 + 104))(v8, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v33);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v0[11] = v34;
  sub_10040DDF0();
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[25] = 0;
  v0[26] = v29;
  v0[27] = v30;

  v31 = swift_task_alloc();
  v0[28] = v31;
  *v31 = v0;
  v31[1] = sub_10040D66C;

  sub_100EA16FC();
}

uint64_t sub_10040D66C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = a2;

  return _swift_task_switch(sub_10040D76C, 0, 0);
}

uint64_t sub_10040D76C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[15];
  v6 = v0[16];
  v0[7] = v2;
  v17 = v5;
  v18 = v0[14];
  v19 = v6;
  v0[8] = v1;
  v0[5] = &type metadata for Data;
  v0[6] = &protocol witness table for Data;
  v0[2] = v3;
  v0[3] = v4;
  v7 = sub_1000035D0(v0 + 2, &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v3, v4);
  sub_100017DB0(v8, v9, (v0 + 7));
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 2);
  v10 = v0[8];
  v0[31] = v0[7];
  v0[32] = v10;
  (*(v17 + 104))(v19, enum case for HashAlgorithm.sha256(_:), v18);
  v11 = Data.hash(algorithm:)();
  v13 = v12;
  v0[33] = v11;
  v0[34] = v12;
  (*(v17 + 8))(v19, v18);
  v14 = swift_task_alloc();
  v0[35] = v14;
  *v14 = v0;
  v14[1] = sub_10040D93C;
  v15 = v0[13];

  return sub_100EA87F4(v11, v13, v15);
}

uint64_t sub_10040D93C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_10040DBA4;
  }

  else
  {
    v6 = v4[33];
    v7 = v4[34];
    v4[37] = a1;
    sub_100016590(v6, v7);
    v5 = sub_10040DA6C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10040DA6C()
{
  v14 = v0;
  v1 = v0[37];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[23];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v13);

  sub_100016590(v3, v2);

  v6 = v13;
  v8 = v0[26];
  v7 = v0[27];

  sub_100017D5C(v8, v7);

  sub_100016590(v8, v7);
  v10 = v0[26];
  v9 = v0[27];

  v11 = v0[1];

  return v11(v6, v10, v9);
}

uint64_t sub_10040DBA4()
{
  v1 = v0[31];
  v2 = v0[32];
  sub_100016590(v0[33], v0[34]);
  sub_100016590(v1, v2);
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AC78);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not sign request: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[23];
  v11 = v0[26];
  v10 = v0[27];

  sub_100017D5C(v11, v10);

  sub_100016590(v11, v10);
  v13 = v0[26];
  v12 = v0[27];

  v14 = v0[1];

  return v14(v9, v13, v12);
}

unint64_t sub_10040DDF0()
{
  result = qword_10169F490;
  if (!qword_10169F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F490);
  }

  return result;
}

uint64_t type metadata accessor for NotifyMeRequest.Subscription(uint64_t a1)
{
  result = qword_10169F4F0;
  if (!qword_10169F4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10040DED8(uint64_t a1)
{
  sub_10040E044(319, &qword_1016BA040, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      sub_10040E044(319, &qword_1016B1C20, &type metadata accessor for UUID);
      if (v3 <= 0x3F)
      {
        sub_10040E098(319, &unk_10169F500, &type metadata for Data, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_10040E098(319, &qword_1016BD350, &type metadata for String, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10040E044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10040E098(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10040E0E8()
{
  result = qword_10169F558;
  if (!qword_10169F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F558);
  }

  return result;
}

void *sub_10040E13C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169F578, &qword_1013A0D30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_10040E0E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_10169F560, &qword_1013A0D28);
    sub_10040E2F8(&qword_10169F580, &qword_10169F588, &unk_1013A0C3C, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100007BAC(a1);
  }

  return v7;
}

uint64_t sub_10040E2F8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169F560, &qword_1013A0D28);
    sub_10040E520(a2, type metadata accessor for NotifyMeRequest.Subscription, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10040E394()
{
  result = qword_10169F598;
  if (!qword_10169F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F598);
  }

  return result;
}

uint64_t sub_10040E3E8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101699EB8, &qword_101398AA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10040E460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotifyMeRequest.Subscription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040E4C4(uint64_t a1)
{
  v2 = type metadata accessor for NotifyMeRequest.Subscription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10040E520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10040E58C()
{
  result = qword_10169F5B0;
  if (!qword_10169F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5B0);
  }

  return result;
}

unint64_t sub_10040E5E4()
{
  result = qword_10169F5B8;
  if (!qword_10169F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5B8);
  }

  return result;
}

unint64_t sub_10040E63C()
{
  result = qword_10169F5C0;
  if (!qword_10169F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5C0);
  }

  return result;
}

unint64_t sub_10040E694()
{
  result = qword_10169F5C8;
  if (!qword_10169F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5C8);
  }

  return result;
}

unint64_t sub_10040E6EC()
{
  result = qword_10169F5D0;
  if (!qword_10169F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5D0);
  }

  return result;
}

unint64_t sub_10040E744()
{
  result = qword_10169F5D8;
  if (!qword_10169F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5D8);
  }

  return result;
}

uint64_t sub_10040E798(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7069726373627573 && a2 == 0xEE0064496E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E756F46636F6CLL && a2 == 0xEF64656C62616E45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646975756162 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101354290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEC00000073644979 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x76654464656E776FLL && a2 == 0xEE00736449656369)
  {

    return 8;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

__n128 sub_10040EAAC(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_10040EAF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 216))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10040EB44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
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
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 216) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 216) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10040EBD8(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v21 = *v1;
  v6 = *v1;
  sub_10015049C(v7, v8);
  sub_1001022C4(&v21, v5);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v6, *(&v6 + 1));
    v20 = v1[2];
    v6 = v1[2];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v20, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v19 = v1[4];
    v6 = v1[4];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v19, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v18 = v1[5];
    v6 = v1[5];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v18, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v17 = v1[1];
    v6 = v1[1];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v17, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v16 = v1[3];
    v6 = v1[3];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v16, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v15 = v1[6];
    v6 = v1[6];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v15, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v14 = v1[7];
    v6 = v1[7];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v14, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v13 = v1[8];
    v6 = v1[8];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v13, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v12 = v1[9];
    v6 = v1[9];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v12, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v11 = v1[10];
    v6 = v1[10];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v11, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v10 = v1[11];
    v6 = v1[11];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v10, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v5[0] = *(v1 + 192);
    sub_1000198E8();
    *&v6 = FixedWidthInteger.data.getter();
    *(&v6 + 1) = v4;
    sub_10015049C(v7, v8);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v9 = *(v1 + 200);
    v6 = *(v1 + 200);
    sub_10015049C(v7, v8);
    sub_1001022C4(&v9, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v6, *(&v6 + 1));
  return sub_100007BAC(v7);
}

double sub_10040F198@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10040F314(a2, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a1 + 160) = v11[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v11[12];
    *(a1 + 208) = v12;
    v6 = v11[7];
    *(a1 + 96) = v11[6];
    *(a1 + 112) = v6;
    v7 = v11[9];
    *(a1 + 128) = v11[8];
    *(a1 + 144) = v7;
    v8 = v11[3];
    *(a1 + 32) = v11[2];
    *(a1 + 48) = v8;
    v9 = v11[5];
    *(a1 + 64) = v11[4];
    *(a1 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v10;
  }

  return result;
}

unint64_t sub_10040F23C(uint64_t a1)
{
  *(a1 + 8) = sub_10040F26C();
  result = sub_10040F2C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10040F26C()
{
  result = qword_10169F5E0;
  if (!qword_10169F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5E0);
  }

  return result;
}

unint64_t sub_10040F2C0()
{
  result = qword_10169F5E8;
  if (!qword_10169F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5E8);
  }

  return result;
}

uint64_t sub_10040F314@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  __chkstk_darwin(v5 - 8);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(&v124, v125);
  v8 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_20;
  }

  v10 = v8;
  v11 = v9;
  sub_10015049C(&v124, v125);
  v121 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v126 = v12;
  sub_10015049C(&v124, v125);
  v119 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v120 = v13;
  sub_10015049C(&v124, v125);
  v117 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v118 = v14;
  sub_10015049C(&v124, v125);
  v115 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v116 = v15;
  sub_10015049C(&v124, v125);
  v16 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v18 = v17;
  v122 = v115;
  v123 = v116;
  v110 = sub_1000E0A3C();
  v19 = DataProtocol.intValue.getter();
  v20 = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v20 * 20) >> 64 != (20 * v20) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (20 * v20 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v111 = v16;
  v112 = v18;
  v113 = Data.subdata(in:)();
  v114 = v21;
  sub_10015049C(&v124, v125);
  v108 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v109 = v22;
  sub_10015049C(&v124, v125);
  v106 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v107 = v23;
  sub_10015049C(&v124, v125);
  v24 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v26 = v25;
  sub_100017D5C(v24, v25);
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE2(v122) == 1)
  {
    v27 = type metadata accessor for BinaryEncodingError();
    sub_1000E17C4(&qword_101696E20, &type metadata accessor for BinaryEncodingError, &protocol conformance descriptor for BinaryEncodingError);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, enum case for BinaryEncodingError.encodingError(_:), v27);
    swift_willThrow();
    v29 = v24;
    v30 = v26;
LABEL_19:
    sub_100016590(v29, v30);
    sub_100016590(v106, v107);
    sub_100016590(v108, v109);
    sub_100016590(v113, v114);
    sub_100016590(v111, v112);
    sub_100016590(v115, v116);
    sub_100016590(v117, v118);
    sub_100016590(v119, v120);
    sub_100016590(v121, v126);
    sub_100016590(v10, v11);
LABEL_20:
    sub_100007BAC(&v124);
    return sub_100007BAC(a1);
  }

  v104 = v24;
  v105 = v26;
  v31 = v122;
  v32 = v106;
  v33 = v107;
  sub_100017D5C(v106, v107);
  sub_10002EA98(v31, v32, v33, &v122);
  v102 = v122;
  v103 = v123;
  sub_10015049C(&v124, v125);
  v100 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v101 = v34;
  sub_10015049C(&v124, v125);
  v35 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v37 = v36;
  v122 = v35;
  v123 = v36;
  v38 = DataProtocol.intValue.getter();
  sub_100016590(v35, v37);
  v39 = v100;
  v40 = v101;
  sub_100017D5C(v100, v101);
  sub_10002EA98(v38, v39, v40, &v122);
  v98 = v122;
  v99 = v123;
  sub_10015049C(&v124, v125);
  v96 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v97 = v41;
  sub_10015049C(&v124, v125);
  v42 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v44 = v43;
  v122 = v42;
  v123 = v43;
  v45 = DataProtocol.intValue.getter();
  sub_100016590(v42, v44);
  v46 = v96;
  v47 = v97;
  sub_100017D5C(v96, v97);
  sub_10002EA98(v45, v46, v47, &v122);
  v94 = v122;
  v95 = v123;
  sub_10015049C(&v124, v125);
  v92 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v93 = v48;
  sub_10015049C(&v124, v125);
  v49 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v51 = v50;
  v122 = v49;
  v123 = v50;
  v52 = DataProtocol.intValue.getter();
  sub_100016590(v49, v51);
  v53 = v92;
  v54 = v93;
  sub_100017D5C(v92, v93);
  sub_10002EA98(v52, v53, v54, &v122);
  v90 = v122;
  v91 = v123;
  sub_10015049C(&v124, v125);
  v88 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v89 = v55;
  sub_10015049C(&v124, v125);
  v56 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v87 = v57;
  v7 = v56;
  v122 = v56;
  v123 = v57;
  v110 = DataProtocol.intValue.getter();
  sub_10015049C(&v124, v125);
  v86 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v16 = v58;
  if (v110 > 3)
  {
LABEL_15:
    if (qword_1016950E0 == -1)
    {
LABEL_16:
      v62 = type metadata accessor for Logger();
      sub_1000076D4(v62, qword_10177C448);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 134217984;
        *(v65 + 4) = v110;
        _os_log_impl(&_mh_execute_header, v63, v64, "Invalid beaconPartId %ld!", v65, 0xCu);
      }

      v66 = type metadata accessor for BinaryDecodingError();
      sub_1000E17C4(&qword_101696E30, &type metadata accessor for BinaryDecodingError, &protocol conformance descriptor for BinaryDecodingError);
      swift_allocError();
      (*(*(v66 - 8) + 104))(v67, enum case for BinaryDecodingError.decodingError(_:), v66);
      swift_willThrow();
      sub_100016590(v86, v16);
      sub_100016590(v7, v87);
      sub_100016590(v88, v89);
      sub_100016590(v90, v91);
      sub_100016590(v92, v93);
      sub_100016590(v94, v95);
      sub_100016590(v96, v97);
      sub_100016590(v98, v99);
      sub_100016590(v100, v101);
      sub_100016590(v102, v103);
      v29 = v104;
      v30 = v105;
      goto LABEL_19;
    }

LABEL_40:
    swift_once();
    goto LABEL_16;
  }

  sub_100016590(v111, v112);
  sub_100016590(v7, v87);
  sub_100016590(v92, v93);
  sub_100016590(v96, v97);
  sub_100016590(v100, v101);
  sub_100016590(v106, v107);
  result = sub_100016590(v104, v105);
  if (v110 < 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v60 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v60)
    {
      v61 = BYTE6(v11);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v60 != 2)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v68 = *(v10 + 16);
  v69 = *(v10 + 24);
  v70 = __OFSUB__(v69, v68);
  v61 = v69 - v68;
  if (v70)
  {
    __break(1u);
LABEL_25:
    LODWORD(v61) = HIDWORD(v10) - v10;
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v61 = v61;
  }

LABEL_27:
  if (v61 != 32)
  {
    goto LABEL_43;
  }

  v71 = v116 >> 62;
  if ((v116 >> 62) <= 1)
  {
    if (!v71)
    {
      v72 = BYTE6(v116);
      goto LABEL_37;
    }

LABEL_35:
    LODWORD(v72) = HIDWORD(v115) - v115;
    if (!__OFSUB__(HIDWORD(v115), v115))
    {
      v72 = v72;
      goto LABEL_37;
    }

    goto LABEL_42;
  }

  if (v71 != 2)
  {
    goto LABEL_44;
  }

  v74 = *(v115 + 16);
  v73 = *(v115 + 24);
  v70 = __OFSUB__(v73, v74);
  v72 = v73 - v74;
  if (v70)
  {
    __break(1u);
    goto LABEL_35;
  }

LABEL_37:
  if (v72 == 1)
  {
    sub_100007BAC(&v124);
    result = sub_100007BAC(a1);
    *a2 = v10;
    *(a2 + 8) = v11;
    v75 = v116;
    *(a2 + 16) = v115;
    *(a2 + 24) = v75;
    v76 = v126;
    *(a2 + 32) = v121;
    *(a2 + 40) = v76;
    v77 = v114;
    *(a2 + 48) = v113;
    *(a2 + 56) = v77;
    v78 = v120;
    *(a2 + 64) = v119;
    *(a2 + 72) = v78;
    v79 = v118;
    *(a2 + 80) = v117;
    *(a2 + 88) = v79;
    v80 = v109;
    *(a2 + 96) = v108;
    *(a2 + 104) = v80;
    v81 = v103;
    *(a2 + 112) = v102;
    *(a2 + 120) = v81;
    v82 = v99;
    *(a2 + 128) = v98;
    *(a2 + 136) = v82;
    v83 = v95;
    *(a2 + 144) = v94;
    *(a2 + 152) = v83;
    v84 = v91;
    *(a2 + 160) = v90;
    *(a2 + 168) = v84;
    v85 = v89;
    *(a2 + 176) = v88;
    *(a2 + 184) = v85;
    *(a2 + 192) = v110;
    *(a2 + 200) = v86;
    *(a2 + 208) = v16;
    return result;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for NotifyMeEndpoint(uint64_t a1)
{
  result = qword_10169F648;
  if (!qword_10169F648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100410010()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v0 = URLComponents.path.modify();
  v1._countAndFlagsBits = 0x697263736275732FLL;
  v1._object = 0xEA00000000006562;
  String.append(_:)(v1);
  return v0(&v3, 0);
}

uint64_t sub_10041011C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v92 = *(v5 - 8);
  v93 = v5;
  __chkstk_darwin(v5);
  v91 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F280(a1, &v96);
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (swift_dynamicCast())
  {
    v89 = v2;
    v87 = a2;
    v7 = v95[0];
    v8 = v95[1];
    v10 = v95[2];
    v9 = v95[3];
    if (qword_1016946B0 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v11 = type metadata accessor for Logger();
      v12 = sub_1000076D4(v11, qword_10177ACB0);
      sub_100017D5C(v7, v8);
      sub_100017D5C(v10, v9);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      sub_100016590(v7, v8);
      sub_100016590(v10, v9);
      v15 = os_log_type_enabled(v13, v14);
      v90 = v7;
      v94 = v12;
      if (v15)
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v95[0] = v17;
        *v16 = 136315138;
        v96 = v7;
        v97 = v8;
        v98 = v10;
        v99 = v9;
        sub_100017D5C(v7, v8);
        sub_100017D5C(v10, v9);
        v18 = String.init<A>(describing:)();
        v20 = sub_1000136BC(v18, v19, v95);

        *(v16 + 4) = v20;
        v7 = v90;
        _os_log_impl(&_mh_execute_header, v13, v14, "Received beacon group data %s", v16, 0xCu);
        sub_100007BAC(v17);
      }

      sub_100017D5C(v7, v8);
      sub_100017D5C(v10, v9);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      sub_100016590(v7, v8);
      sub_100016590(v10, v9);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v96 = v24;
        *v23 = 136315138;
        v25 = Data.hexString.getter();
        v27 = sub_1000136BC(v25, v26, &v96);

        *(v23 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "numberOfBeacons: %s", v23, 0xCu);
        sub_100007BAC(v24);
        v7 = v90;
      }

      sub_100017D5C(v7, v8);
      sub_100017D5C(v10, v9);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      sub_100016590(v7, v8);
      sub_100016590(v10, v9);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v96 = v31;
        *v30 = 136315138;
        v32 = Data.hexString.getter();
        v34 = sub_1000136BC(v32, v33, &v96);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v28, v29, "beaconGroupData: %s", v30, 0xCu);
        sub_100007BAC(v31);
        v7 = v90;
      }

      v96 = v7;
      v97 = v8;
      sub_1000E0A3C();
      *(v87 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons) = DataProtocol.intValue.getter();
      v35 = v89;
      v36 = sub_1000E0768(v7, v8, v10, v9);
      if (v35)
      {
        break;
      }

      v54 = v36;
      v81[1] = 0;

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      v57 = os_log_type_enabled(v55, v56);
      v83 = v9;
      v82 = v10;
      if (v57)
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v96 = v59;
        *v58 = 136315138;
        sub_100101BAC();
        v60 = Dictionary.description.getter();
        v62 = sub_1000136BC(v60, v61, &v96);

        *(v58 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v55, v56, "beaconGroupInfo: %s", v58, 0xCu);
        sub_100007BAC(v59);
      }

      *(v87 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) = v54;

      sub_1000BC4D4(&qword_10169F690, &unk_1013F7880);
      v63 = static _DictionaryStorage.copy(original:)();
      v9 = 0;
      v7 = (v54 + 64);
      v64 = 1 << v54[32];
      v65 = -1;
      if (v64 < 64)
      {
        v65 = ~(-1 << v64);
      }

      v66 = v65 & *(v54 + 8);
      v10 = (v64 + 63) >> 6;
      v94 = v63;
      v85 = v8;
      v86 = v63 + 64;
      v84 = v54;
      if (v66)
      {
        while (1)
        {
          v67 = __clz(__rbit64(v66));
          v88 = (v66 - 1) & v66;
LABEL_29:
          v70 = v67 | (v9 << 6);
          v71 = (*(v54 + 6) + 16 * v70);
          v73 = *v71;
          v72 = v71[1];
          v74 = v91;
          sub_1000E180C(*(v54 + 7) + *(v92 + 72) * v70, v91);
          v75 = v94;
          v89 = *(v93 + 24);
          *(v86 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
          v76 = (v75[6] + 16 * v70);
          *v76 = v73;
          v76[1] = v72;
          v8 = v75[7];
          v77 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
          sub_1000E18CC(v74 + v89, v8 + *(*(v77 - 8) + 72) * v70);
          v78 = v75[2];
          v79 = __OFADD__(v78, 1);
          v80 = v78 + 1;
          if (v79)
          {
            break;
          }

          v94[2] = v80;
          sub_100017D5C(v73, v72);
          v54 = v84;
          v8 = v85;
          v66 = v88;
          if (!v88)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
LABEL_24:
        v68 = v9;
        while (1)
        {
          v9 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            break;
          }

          if (v9 >= v10)
          {

            sub_100016590(v90, v8);
            sub_100016590(v82, v83);
            *(v87 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses) = v94;
          }

          v69 = *(v7 + 8 * v9);
          ++v68;
          if (v69)
          {
            v67 = __clz(__rbit64(v69));
            v88 = (v69 - 1) & v69;
            goto LABEL_29;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_36:
      swift_once();
    }

    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v7;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&_mh_execute_header, v37, v38, "Unable to parse beacon group info due to %@, privacy: .public)", v40, 0xCu);
      sub_10000B3A8(v41, &qword_10169BB30, &unk_10138B3C0);

      sub_100016590(v39, v8);
      return sub_100016590(v10, v9);
    }

    else
    {

      sub_100016590(v7, v8);
      sub_100016590(v10, v9);
    }
  }

  else
  {
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000076D4(v44, qword_10177ACB0);
    sub_10001F280(a1, &v96);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v100 = v48;
      *v47 = 136446210;
      sub_10001F280(&v96, v95);
      v49 = String.init<A>(describing:)();
      v51 = v50;
      sub_100007BAC(&v96);
      v52 = sub_1000136BC(v49, v51, &v100);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Invalid sendBeaconGroupData payload %{public}s", v47, 0xCu);
      sub_100007BAC(v48);
    }

    else
    {

      sub_100007BAC(&v96);
    }

    sub_100413200();
    swift_allocError();
    *v53 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100410BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a2;
  v84 = a3;
  v82 = a4;
  v6 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v78 - v7;
  v9 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(a1 + v9, v8, &qword_101697268, &qword_101394FE0);
  v10 = type metadata accessor for AccessoryProductInfo(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10))
  {
    v85 = 0;
    v86 = 0xF000000000000000;
  }

  else
  {
    v11 = &v8[*(v10 + 96)];
    v12 = v11[1];
    v85 = *v11;
    v86 = v12;
    sub_10002E98C(v85, v12);
  }

  sub_10000B3A8(v8, &qword_101697268, &qword_101394FE0);
  v13 = sub_100F4F600(v85, v86);
  if (v14 >> 60 == 15)
  {
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177ACB0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to generate E1 blob.", v18, 2u);
    }

    sub_100413200();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
    return sub_100006654(v85, v86);
  }

  v20 = v13;
  v21 = v14;
  v79 = v4;
  if (qword_1016946B0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177ACB0);
  sub_100017D5C(v20, v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  sub_100006654(v20, v21);
  v25 = os_log_type_enabled(v23, v24);
  v80 = v20;
  v81 = v21;
  if (v25)
  {
    v26 = v21;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v101 = v28;
    *v27 = 136315138;
    *&v87 = v20;
    *(&v87 + 1) = v26;
    sub_100413338();
    v29 = RawRepresentable<>.hexString.getter();
    v31 = sub_1000136BC(v29, v30, &v101);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "E1: %s", v27, 0xCu);
    sub_100007BAC(v28);
  }

  v32 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId + 8);
  if (v32 >> 60 == 15)
  {
    sub_100413200();
    swift_allocError();
    *v33 = 6;
    swift_willThrow();
    sub_100006654(v80, v81);
    return sub_100006654(v85, v86);
  }

  v35 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
  v36 = (*(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) & 1) == 0;
  v37 = *(a1 + 16);
  v38 = *(a1 + 24);
  v102 = v36;
  v39 = v80;
  v40 = v81;
  sub_10002E98C(v80, v81);
  sub_10002E98C(v35, v32);
  sub_100017D5C(v37, v38);
  sub_1000198E8();
  v41 = FixedWidthInteger.data.getter();
  v43 = v42;
  v44 = v38 >> 62;
  if ((v38 >> 62) <= 1)
  {
    result = v83;
    v45 = v84;
    if (!v44)
    {
      v46 = BYTE6(v38);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  result = v83;
  v45 = v84;
  if (v44 != 2)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v48 = *(v37 + 16);
  v47 = *(v37 + 24);
  v49 = __OFSUB__(v47, v48);
  v46 = v47 - v48;
  if (v49)
  {
    __break(1u);
LABEL_24:
    LODWORD(v46) = HIDWORD(v37) - v37;
    if (__OFSUB__(HIDWORD(v37), v37))
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v46 = v46;
  }

LABEL_26:
  if (v46 != 32)
  {
    goto LABEL_84;
  }

  v50 = v40 >> 62;
  if ((v40 >> 62) <= 1)
  {
    if (!v50)
    {
      v51 = BYTE6(v40);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (v50 != 2)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v53 = *(v39 + 16);
  v52 = *(v39 + 24);
  v49 = __OFSUB__(v52, v53);
  v51 = v52 - v53;
  if (v49)
  {
    __break(1u);
LABEL_34:
    LODWORD(v51) = HIDWORD(v39) - v39;
    if (__OFSUB__(HIDWORD(v39), v39))
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v51 = v51;
  }

LABEL_36:
  if (v51 != 113)
  {
    goto LABEL_85;
  }

  v54 = v32 >> 62;
  if ((v32 >> 62) <= 1)
  {
    if (!v54)
    {
      v55 = BYTE6(v32);
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (v54 != 2)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v57 = *(v35 + 16);
  v56 = *(v35 + 24);
  v49 = __OFSUB__(v56, v57);
  v55 = v56 - v57;
  if (v49)
  {
    __break(1u);
LABEL_44:
    LODWORD(v55) = HIDWORD(v35) - v35;
    if (__OFSUB__(HIDWORD(v35), v35))
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v55 = v55;
  }

LABEL_46:
  if (v55 != 32)
  {
    goto LABEL_86;
  }

  v58 = v43 >> 62;
  if ((v43 >> 62) <= 1)
  {
    if (!v58)
    {
      v59 = BYTE6(v43);
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (v58 != 2)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v61 = *(v41 + 16);
  v60 = *(v41 + 24);
  v49 = __OFSUB__(v60, v61);
  v59 = v60 - v61;
  if (v49)
  {
    __break(1u);
LABEL_54:
    LODWORD(v59) = HIDWORD(v41) - v41;
    if (__OFSUB__(HIDWORD(v41), v41))
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v59 = v59;
  }

LABEL_56:
  if (v59 != 1)
  {
    goto LABEL_87;
  }

  v62 = v45 >> 62;
  if ((v45 >> 62) <= 1)
  {
    if (!v62)
    {
      v63 = BYTE6(v45);
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (v62 != 2)
  {
    goto LABEL_88;
  }

  v65 = *(result + 16);
  v64 = *(result + 24);
  v49 = __OFSUB__(v64, v65);
  v63 = v64 - v65;
  if (v49)
  {
    __break(1u);
LABEL_64:
    LODWORD(v63) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v63 = v63;
  }

LABEL_66:
  if (v63 == 96)
  {
    *&v101 = result;
    *(&v101 + 1) = v45;
    v78 = v43;
    if (v62 == 2)
    {
      v68 = *(result + 16);
      v67 = *(result + 24);
      v66 = v67 - v68;
      if (__OFSUB__(v67, v68))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    else
    {
      if (v62 != 1)
      {
        v66 = BYTE6(v45);
        goto LABEL_74;
      }

      if (__OFSUB__(HIDWORD(result), result))
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v66 = HIDWORD(result) - result;
    }

    sub_100017D5C(result, v45);
LABEL_74:
    result = 96 - v66;
    if (!__OFSUB__(96, v66))
    {
      *&v87 = sub_100845C88(result);
      *(&v87 + 1) = v69;
      sub_100776394(&v87, 0);
      v83 = v32;
      v84 = v41;
      v79 = v35;
      v70 = v87;
      Data.append(_:)();
      sub_100006654(v85, v86);
      sub_100006654(v39, v40);
      sub_100016590(v70, *(&v70 + 1));
      *&v87 = v37;
      *(&v87 + 1) = v38;
      *&v88 = v39;
      *(&v88 + 1) = v40;
      *&v89 = v79;
      *(&v89 + 1) = v83;
      v90 = v101;
      *&v91 = v84;
      *(&v91 + 1) = v78;
      result = sub_1001DAAA0(&v87);
      v71 = v98;
      v72 = v82;
      *(v82 + 160) = v97;
      *(v72 + 176) = v71;
      *(v72 + 192) = v99;
      *(v72 + 208) = v100;
      v73 = v94;
      *(v72 + 96) = v93;
      *(v72 + 112) = v73;
      v74 = v96;
      *(v72 + 128) = v95;
      *(v72 + 144) = v74;
      v75 = v90;
      *(v72 + 32) = v89;
      *(v72 + 48) = v75;
      v76 = v92;
      *(v72 + 64) = v91;
      *(v72 + 80) = v76;
      v77 = v88;
      *v72 = v87;
      *(v72 + 16) = v77;
      return result;
    }

    __break(1u);
    goto LABEL_77;
  }

LABEL_88:
  __break(1u);
  return result;
}

void *sub_100411310(uint64_t a1, uint64_t a2)
{
  v192 = a2;
  v4 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v4 - 8);
  v6 = &v187 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F280(a1, v199);
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (swift_dynamicCast())
  {
    v210 = v197[10];
    v211 = v197[11];
    v212 = v197[12];
    v213 = v198;
    v206 = v197[6];
    v207 = v197[7];
    v208 = v197[8];
    v209 = v197[9];
    v202 = v197[2];
    v203 = v197[3];
    v204 = v197[4];
    v205 = v197[5];
    v200 = v197[0];
    v201 = v197[1];
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v8 = sub_1000076D4(v7, qword_10177ACB0);
    sub_1001DA8B8(&v200, v197);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    sub_1001DA914(&v200);
    v11 = os_log_type_enabled(v9, v10);
    v194 = v8;
    v189 = v2;
    v190 = v6;
    if (v11)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v197[0] = v13;
      *v12 = 136315138;
      v14 = Data.hexString.getter();
      v16 = sub_1000136BC(v14, v15, v197);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "C1: %s", v12, 0xCu);
      sub_100007BAC(v13);
    }

    sub_1001DA8B8(&v200, v197);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    sub_1001DA914(&v200);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v197[0] = v20;
      *v19 = 136315138;
      v21 = Data.hexString.getter();
      v23 = sub_1000136BC(v21, v22, v197);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "SerialNumber: %s", v19, 0xCu);
      sub_100007BAC(v20);
    }

    sub_1001DA8B8(&v200, v197);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    sub_1001DA914(&v200);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v197[0] = v27;
      *v26 = 136315138;
      v28 = Data.hexString.getter();
      v30 = sub_1000136BC(v28, v29, v197);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "ChipId: %s", v26, 0xCu);
      sub_100007BAC(v27);
    }

    sub_1001DA8B8(&v200, v197);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    sub_1001DA914(&v200);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v197[0] = v34;
      *v33 = 136315138;
      v35 = Data.hexString.getter();
      v37 = sub_1000136BC(v35, v36, v197);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "ECID: %s", v33, 0xCu);
      sub_100007BAC(v34);
    }

    sub_1001DA8B8(&v200, v197);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    sub_1001DA914(&v200);
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v197[0] = v41;
      *v40 = 136315138;
      v42 = Data.hexString.getter();
      v44 = sub_1000136BC(v42, v43, v197);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "numberOfBeacons: %s", v40, 0xCu);
      sub_100007BAC(v41);
    }

    sub_1001DA8B8(&v200, v197);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    sub_1001DA914(&v200);
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v197[0] = v48;
      *v47 = 136315138;
      v49 = Data.hexString.getter();
      v51 = sub_1000136BC(v49, v50, v197);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "otherSerialNumber: %s", v47, 0xCu);
      sub_100007BAC(v48);
    }

    sub_1001DA8B8(&v200, v197);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    sub_1001DA914(&v200);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v197[0] = v55;
      *v54 = 136315138;
      v56 = Data.hexString.getter();
      v58 = sub_1000136BC(v56, v57, v197);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "seedK1: %s", v54, 0xCu);
      sub_100007BAC(v55);
    }

    sub_1001DA8B8(&v200, v197);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v59, v60))
    {
      sub_1001DA914(&v200);
LABEL_37:

      v187 = *(&v207 + 1);
      v188 = v207;
      v191 = Data.chunked(into:)();
      v79 = *(v191 + 16);
      if (v79)
      {
        v80 = (v191 + 40);
        *&v78 = 136315138;
        v193 = v78;
        do
        {
          v88 = *(v80 - 1);
          v87 = *v80;
          sub_100017D5C(v88, *v80);
          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v89, v90))
          {
            v81 = swift_slowAlloc();
            v214 = v87;
            v82 = v81;
            v83 = swift_slowAlloc();
            *&v197[0] = v83;
            *v82 = v193;
            v84 = Data.hexString.getter();
            v195 = v88;
            v86 = sub_1000136BC(v84, v85, v197);

            *(v82 + 4) = v86;
            _os_log_impl(&_mh_execute_header, v89, v90, "%s", v82, 0xCu);
            sub_100007BAC(v83);

            sub_100016590(v195, v214);
          }

          else
          {

            sub_100016590(v88, v87);
          }

          v80 += 2;
          --v79;
        }

        while (v79);
      }

      sub_1001DA8B8(&v200, v197);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v91, v92))
      {
        sub_1001DA914(&v200);

        v97 = v192;
LABEL_56:
        sub_1001DA8B8(&v200, v197);
        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 16777472;
          v106[4] = v212;
          sub_1001DA914(&v200);
          _os_log_impl(&_mh_execute_header, v104, v105, "beaconPartId: %hhu", v106, 5u);
        }

        else
        {
          sub_1001DA914(&v200);
        }

        v107 = *(&v210 + 1);
        v108 = v210;
        sub_100017D5C(v210, *(&v210 + 1));
        sub_100017D5C(v108, v107);
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.default.getter();
        v111 = os_log_type_enabled(v109, v110);
        v195 = v108;
        v214 = v107;
        if (!v111)
        {
          sub_100016590(v108, v107);
LABEL_72:

          sub_1001DA8B8(&v200, v197);
          v121 = Logger.logObject.getter();
          v122 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v121, v122))
          {
            sub_1001DA914(&v200);

LABEL_85:
            v133 = v200;
            sub_100017D5C(v200, *(&v200 + 1));
            v134 = v189;
            sub_1004A4714(v133, *(&v133 + 1), v197);
            if (v134)
            {

              v135 = xmmword_10138BBF0;
            }

            else
            {
              v135 = v197[0];
            }

            v136 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
            v137 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
            *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1) = v135;
            sub_100006654(v136, v137);
            v138 = v204;
            v139 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
            v140 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
            *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid) = v204;
            sub_100017D5C(v138, *(&v138 + 1));
            sub_100006654(v139, v140);
            v141 = v202;
            v142 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
            v143 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
            *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber) = v202;
            sub_100017D5C(v141, *(&v141 + 1));
            sub_100006654(v142, v143);
            v144 = v205;
            v145 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
            v146 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
            *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId) = v205;
            sub_100017D5C(v144, *(&v144 + 1));
            sub_100006654(v145, v146);
            v147 = v208;
            v148 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2);
            v149 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2 + 8);
            *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2) = v208;
            sub_100017D5C(v147, *(&v147 + 1));
            sub_100006654(v148, v149);
            v150 = (v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
            v151 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
            v152 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8);
            v154 = v187;
            v153 = v188;
            *v150 = v188;
            v150[1] = v154;
            sub_100017D5C(v153, v154);
            sub_100006654(v151, v152);
            v155 = v206;
            v156 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
            v157 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1 + 8);
            *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1) = v206;
            sub_100017D5C(v155, *(&v155 + 1));
            sub_100006654(v156, v157);
            *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId) = v212;
            v197[0] = v201;
            sub_1000E0A3C();
            *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons) = DataProtocol.intValue.getter();
            v158 = (v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
            v159 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
            v160 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8);
            v161 = v214;
            *v158 = v108;
            v158[1] = v161;
            sub_100017D5C(v108, v161);
            sub_100006654(v159, v160);
            v162 = v209;
            v163 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey);
            v164 = *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey + 8);
            *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey) = v209;
            sub_100017D5C(v162, *(&v162 + 1));
            sub_100006654(v163, v164);
            v165 = Data.trimmed.getter();
            v167 = v166;
            static String.Encoding.utf8.getter();
            v168 = String.init(data:encoding:)();
            v170 = v169;
            sub_100016590(v165, v167);
            if (!v170)
            {
              v171 = Data.trimmed.getter();
              v173 = v172;
              v168 = Data.hexString.getter();
              v170 = v174;
              sub_100016590(v171, v173);
            }

            v175 = Logger.logObject.getter();
            v176 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v175, v176))
            {
              v177 = swift_slowAlloc();
              v178 = swift_slowAlloc();
              *&v197[0] = v178;
              *v177 = 136446210;
              *(v177 + 4) = sub_1000136BC(v168, v170, v197);
              _os_log_impl(&_mh_execute_header, v175, v176, "beaconDisplayName: %{public}s", v177, 0xCu);
              sub_100007BAC(v178);
            }

            v179 = v195;
            v180 = v214;
            v181 = (v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName);
            *v181 = v168;
            v181[1] = v170;

            sub_10024C7C4();
            if (v182)
            {
              v183 = Logger.logObject.getter();
              v184 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v183, v184))
              {
                v185 = swift_slowAlloc();
                *v185 = 0;
                _os_log_impl(&_mh_execute_header, v183, v184, "S1 contains session nonce. Hardcoded pairing detected!", v185, 2u);
              }

              v180 = v214;
            }

            *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers) = Data.chunked(into:)();

            v186 = sub_1001CE22C();
            sub_100016590(v179, v180);
            sub_1001DA914(&v200);
            *(v97 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses) = v186;
          }

          v123 = swift_slowAlloc();
          result = swift_slowAlloc();
          v124 = result;
          *&v197[0] = result;
          *v123 = 134218242;
          v125 = v209;
          v126 = *(&v209 + 1) >> 62;
          if ((*(&v209 + 1) >> 62) > 1)
          {
            if (v126 != 2)
            {
              v127 = 0;
              goto LABEL_84;
            }

            v129 = *(v209 + 16);
            v128 = *(v209 + 24);
            v76 = __OFSUB__(v128, v129);
            v127 = v128 - v129;
            if (!v76)
            {
              goto LABEL_84;
            }

            __break(1u);
          }

          else if (!v126)
          {
            v127 = BYTE14(v209);
LABEL_84:
            *(v123 + 4) = v127;
            sub_1001DA914(&v200);
            *(v123 + 12) = 2080;
            v130 = Data.hexString.getter();
            v132 = sub_1000136BC(v130, v131, v197);

            *(v123 + 14) = v132;
            _os_log_impl(&_mh_execute_header, v121, v122, "refKey %ld: %s", v123, 0x16u);
            sub_100007BAC(v124);

            v108 = v195;
            goto LABEL_85;
          }

          LODWORD(v127) = HIDWORD(v125) - v125;
          if (!__OFSUB__(HIDWORD(v125), v125))
          {
            v127 = v127;
            goto LABEL_84;
          }

LABEL_100:
          __break(1u);
          return result;
        }

        v112 = swift_slowAlloc();
        result = swift_slowAlloc();
        v113 = result;
        *&v197[0] = result;
        *v112 = 134218242;
        v114 = v107 >> 62;
        if ((v107 >> 62) > 1)
        {
          if (v114 != 2)
          {
            v115 = 0;
            goto LABEL_71;
          }

          v117 = *(v108 + 16);
          v116 = *(v108 + 24);
          v76 = __OFSUB__(v116, v117);
          v115 = v116 - v117;
          if (!v76)
          {
            goto LABEL_71;
          }

          __break(1u);
        }

        else if (!v114)
        {
          v115 = BYTE6(v107);
LABEL_71:
          *(v112 + 4) = v115;
          sub_100016590(v108, v107);
          *(v112 + 12) = 2080;
          v118 = Data.hexString.getter();
          v120 = sub_1000136BC(v118, v119, v197);

          *(v112 + 14) = v120;
          v108 = v195;
          _os_log_impl(&_mh_execute_header, v109, v110, "sikPub %ld: %s", v112, 0x16u);
          sub_100007BAC(v113);

          goto LABEL_72;
        }

        LODWORD(v115) = HIDWORD(v108) - v108;
        if (!__OFSUB__(HIDWORD(v108), v108))
        {
          v115 = v115;
          goto LABEL_71;
        }

LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v93 = swift_slowAlloc();
      result = swift_slowAlloc();
      v94 = result;
      *&v197[0] = result;
      *v93 = 134218242;
      v95 = v208;
      v96 = *(&v208 + 1) >> 62;
      v97 = v192;
      if ((*(&v208 + 1) >> 62) > 1)
      {
        if (v96 != 2)
        {
          v98 = 0;
          goto LABEL_55;
        }

        v100 = *(v208 + 16);
        v99 = *(v208 + 24);
        v76 = __OFSUB__(v99, v100);
        v98 = v99 - v100;
        if (!v76)
        {
          goto LABEL_55;
        }

        __break(1u);
      }

      else if (!v96)
      {
        v98 = BYTE14(v208);
LABEL_55:
        *(v93 + 4) = v98;
        sub_1001DA914(&v200);
        *(v93 + 12) = 2080;
        v101 = Data.hexString.getter();
        v103 = sub_1000136BC(v101, v102, v197);

        *(v93 + 14) = v103;
        _os_log_impl(&_mh_execute_header, v91, v92, "BAA signature (S2) count %ld: %s", v93, 0x16u);
        sub_100007BAC(v94);

        goto LABEL_56;
      }

      LODWORD(v98) = HIDWORD(v95) - v95;
      if (!__OFSUB__(HIDWORD(v95), v95))
      {
        v98 = v98;
        goto LABEL_55;
      }

LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v62 = v207;
    v63 = *(&v207 + 1) >> 62;
    if ((*(&v207 + 1) >> 62) > 1)
    {
      if (v63 != 2)
      {
        v62 = 0;
        goto LABEL_36;
      }

      v74 = *(v207 + 16);
      v75 = *(v207 + 24);
      v76 = __OFSUB__(v75, v74);
      v62 = v75 - v74;
      if (!v76)
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v63)
    {
      v62 = BYTE14(v207);
LABEL_36:
      *(result + 4) = v62;
      v77 = result;
      sub_1001DA914(&v200);
      _os_log_impl(&_mh_execute_header, v59, v60, "attestation (S1) count: %ld", v77, 0xCu);

      goto LABEL_37;
    }

    v76 = __OFSUB__(HIDWORD(v62), v62);
    LODWORD(v62) = HIDWORD(v62) - v62;
    if (v76)
    {
      __break(1u);
      goto LABEL_98;
    }

    v62 = v62;
    goto LABEL_36;
  }

  if (qword_1016946B0 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_1000076D4(v64, qword_10177ACB0);
  sub_10001F280(a1, v197);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v196 = v68;
    *v67 = 136446210;
    sub_10001F280(v197, v199);
    v69 = String.init<A>(describing:)();
    v71 = v70;
    sub_100007BAC(v197);
    v72 = sub_1000136BC(v69, v71, &v196);

    *(v67 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v65, v66, "Invalid sendPairingData payload %{public}s", v67, 0xCu);
    sub_100007BAC(v68);
  }

  else
  {

    sub_100007BAC(v197);
  }

  sub_100413200();
  swift_allocError();
  *v73 = 0;
  return swift_willThrow();
}

void *sub_1004128BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for HashAlgorithm();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
  swift_beginAccess();
  sub_1000D2A70(a1 + v9, v46, &qword_101697378, &unk_101391940);
  v10 = v47;
  if (v47)
  {
    v44[0] = a2;
    v44[1] = v2;
    v11 = v48;
    v12 = sub_1000035D0(v46, v47);
    v52 = v44;
    v13 = *(v10 - 8);
    v45 = v5;
    v14 = v13;
    __chkstk_darwin(v12);
    v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    sub_10000B3A8(v46, &qword_101697378, &unk_101391940);
    v17 = (*(*(*(v11 + 8) + 8) + 40))(v10);
    v19 = v18;
    (*(v14 + 8))(v16, v10);
    v20 = v45;
    (*(v6 + 104))(v8, enum case for HashAlgorithm.sha256(_:), v45);
    v21 = Data.hash(algorithm:)();
    v23 = v22;
    sub_100016590(v17, v19);
    (*(v6 + 8))(v8, v20);
    v24 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds);
    if (*(v24 + 16) || (*(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) & 1) != 0)
    {
      v25 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken);
      v26 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken + 8);

      sub_10002E98C(v25, v26);
      v27 = v23;
      sub_100F51B04(v21, v23, v24, v25, v26, v49);
      sub_100006654(v25, v26);

      memcpy(v50, v49, sizeof(v50));
      if (sub_100101D88(v50) != 1)
      {
        memcpy(v51, v50, sizeof(v51));
        v40 = v44[0];
        *(v44[0] + 24) = &type metadata for AirPodsLEPairingCheckData;
        v40[4] = sub_1001641BC();
        v41 = swift_allocObject();
        *v40 = v41;
        sub_100016590(v21, v27);
        return memcpy((v41 + 16), v51, 0x160uLL);
      }

      v28 = v23;
      if (qword_1016946B0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000076D4(v29, qword_10177ACB0);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_20;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Failed to generate AirPodsLEPairingCheckData";
    }

    else
    {
      v28 = v23;
      if (qword_1016946B0 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_1000076D4(v42, qword_10177ACB0);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_20;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Failed to generate AirPodsLEPairingCheckData, missing otherSerialNumbersAndPartIds";
    }

    _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

LABEL_20:

    sub_100413200();
    swift_allocError();
    *v43 = 1;
    swift_willThrow();
    return sub_100016590(v21, v28);
  }

  sub_10000B3A8(v46, &qword_101697378, &unk_101391940);
  if (qword_1016946B0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177ACB0);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Missing collaborativeKeyC2", v37, 2u);
  }

  sub_100413200();
  swift_allocError();
  *v38 = 8;
  return swift_willThrow();
}

void *sub_100412EE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken);
  v4 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken + 8);
  sub_10002E98C(v3, v4);
  sub_100F514E8(v3, v4, v12);
  sub_100006654(v3, v4);
  if (sub_1001010A8(v12) == 1)
  {
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177ACB0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to generate AirPodsLEPairingAckData", v8, 2u);
    }

    sub_100413200();
    swift_allocError();
    *v9 = 1;
    return swift_willThrow();
  }

  else
  {
    a2[3] = &type metadata for AirPodsLEPairingAckData;
    a2[4] = sub_100164118();
    v11 = swift_allocObject();
    *a2 = v11;
    return memcpy((v11 + 16), v12, 0x110uLL);
  }
}

double sub_100413094@<D0>(uint64_t a1@<X8>)
{
  sub_10041338C(v9);
  v2 = v9[11];
  *(a1 + 160) = v9[10];
  *(a1 + 176) = v2;
  *(a1 + 192) = v9[12];
  *(a1 + 208) = v10;
  v3 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v3;
  v4 = v9[9];
  *(a1 + 128) = v9[8];
  *(a1 + 144) = v4;
  v5 = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = v5;
  v6 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v6;
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  return result;
}

double sub_100413124@<D0>(uint64_t a1@<X8>)
{
  static Data.random(bytes:)();
  sub_1001DA81C();
  BinaryDecodable.init(data:)();
  if (!v1)
  {
    sub_1004132E4(v10);
    v4 = v10[11];
    *(a1 + 160) = v10[10];
    *(a1 + 176) = v4;
    *(a1 + 192) = v10[12];
    *(a1 + 208) = v11;
    v5 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v5;
    v6 = v10[9];
    *(a1 + 128) = v10[8];
    *(a1 + 144) = v6;
    v7 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v7;
    v8 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v8;
    result = *v10;
    v9 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v9;
  }

  return result;
}

unint64_t sub_100413200()
{
  result = qword_10169F680;
  if (!qword_10169F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F680);
  }

  return result;
}

double sub_100413254@<D0>(uint64_t a1@<X8>)
{
  sub_1001DACD4(v9);
  v2 = v9[11];
  *(a1 + 160) = v9[10];
  *(a1 + 176) = v2;
  *(a1 + 192) = v9[12];
  *(a1 + 208) = v10;
  v3 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v3;
  v4 = v9[9];
  *(a1 + 128) = v9[8];
  *(a1 + 144) = v4;
  v5 = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = v5;
  v6 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v6;
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  return result;
}

double sub_1004132E4(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  result = -0.0;
  *(a1 + 192) = xmmword_1013A1630;
  *(a1 + 208) = 0x2000000000000000;
  return result;
}

unint64_t sub_100413338()
{
  result = qword_10169F688;
  if (!qword_10169F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F688);
  }

  return result;
}

double sub_10041338C(uint64_t a1)
{
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = -0.0;
  *(a1 + 192) = xmmword_1013A1630;
  *(a1 + 208) = 0x2000000000000000;
  return result;
}

uint64_t sub_100413438()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ItemShareRequestReceivedUserNotification(0);
  v6 = *(v5 + 36);
  v22 = v0;
  v7 = v0 + v6;
  if (sub_1002FDEB4())
  {
    v8 = (v7 + *(type metadata accessor for BeaconProductInfoRecord(0) + 44));
    v9 = *v8;
    v10 = v8[1];
    if (*v8 != 0x676154726941 || v10 != 0xE600000000000000)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v9 == 0x676154726961 && v10 == 0xE600000000000000;
      if ((v12 & 1) == 0 && !v14)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.itemSharing(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v4, v1);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = (v22 + *(v5 + 28));
  v18 = *v16;
  v17 = v16[1];
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v18;
  *(v15 + 40) = v17;

  v19 = String.init(format:arguments:)();

  return v19;
}

uint64_t sub_1004136CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100413740(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v8 = (v1 + *(a1 + 32));
  v9 = v8[1];
  *(inited + 32) = *v8;
  *(inited + 40) = v9;
  (*(v4 + 104))(v6, enum case for LocalizationUtility.Table.itemSharing(_:), v3);

  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v6, v3);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v10 = String.init(format:arguments:)();

  return v10;
}

unint64_t sub_1004138FC()
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0x6564496572616873;
  *(inited + 40) = 0xEF7265696669746ELL;
  v1 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000C19C4(inited + 32);
  return v3;
}

uint64_t type metadata accessor for ItemShareRequestReceivedUserNotification(uint64_t a1)
{
  result = qword_10169F6F0;
  if (!qword_10169F6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100413A34(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BeaconProductInfoRecord(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100413AF0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v5 = String.utf8Data.getter();
  v6 = v3;
  sub_10015049C(v7, v7[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v5, v6);
  return sub_100007BAC(v7);
}

uint64_t sub_100413BB0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100413CD0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_100413BF8(uint64_t a1)
{
  *(a1 + 8) = sub_100413C28();
  result = sub_100413C7C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100413C28()
{
  result = qword_10169F738;
  if (!qword_10169F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F738);
  }

  return result;
}

unint64_t sub_100413C7C()
{
  result = qword_10169F740;
  if (!qword_10169F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F740);
  }

  return result;
}

uint64_t sub_100413CD0(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v3 = sub_10015049C(v12, v12[3]);
  v4 = dispatch thunk of BinaryDecodingContaining.decode()();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    sub_1000E0A3C();
    v8 = DataProtocol.nullTerminatedUTF8String.getter();
    if (v9)
    {
      v3 = v8;
      sub_100016590(v6, v7);
      sub_100007BAC(v12);
      sub_100007BAC(a1);
      return v3;
    }

    v3 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v3 - 8) + 104))(v11, enum case for BinaryEncodingError.encodingError(_:), v3);
    swift_willThrow();
    sub_100016590(v6, v7);
  }

  sub_100007BAC(v12);
  sub_100007BAC(a1);
  return v3;
}

uint64_t sub_100413E40(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169F908, &qword_1013A1D40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_10041B350();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_10041B3A4(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for AccessoryUnpairData(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004140F0()
{
  v1 = *v0;
  v2 = 0x6449616E6D66;
  v3 = 0x657261776D726966;
  if (v1 != 5)
  {
    v3 = 0x44746375646F7270;
  }

  v4 = 1684628325;
  if (v1 != 3)
  {
    v4 = 0x644970696863;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x754E6C6169726573;
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

uint64_t sub_1004141DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10041A260(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100414204(uint64_t a1)
{
  v2 = sub_10041B350();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100414240(uint64_t a1)
{
  v2 = sub_10041B350();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100414294()
{
  result = Data.init(base64Encoded:options:)();
  qword_10169F748 = result;
  qword_10169F750 = v1;
  return result;
}

id sub_1004142D4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(ACAccountStore) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_100414340(_OWORD *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v68 = a3;
  v67 = a2;
  v62 = a1;
  v61 = *v3;
  v63 = sub_1000BC4D4(&qword_10169F848, &qword_1013A17B0);
  __chkstk_darwin(v63);
  v64 = (v54 - v4);
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v60 = v54 - v6;
  v59 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v55);
  v56 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v54[1] = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v11 - 8);
  v65 = v54 - v12;
  v13 = type metadata accessor for FMNAccountType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AccessoryPairingLockCheckEndPoint(0);
  v18 = __chkstk_darwin(v17);
  v20 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v54 - v21;
  v23 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v24 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_101385D80;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_100008C00();
  *(v25 + 32) = 0xD000000000000036;
  *(v25 + 40) = 0x8000000101354690;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "%@", 2, 2, v25);

  v26 = enum case for FMNAccountType.accessory(_:);
  v27 = *(v14 + 104);
  v27(v16, enum case for FMNAccountType.accessory(_:), v13);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v22 = sub_1010B32C8(v16);
  v27(&v22[*(v17 + 20)], v26, v13);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v65, 1, 1, v28);
  v29 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v30 = swift_allocObject();
  sub_10041AE74(v22, v20, type metadata accessor for AccessoryPairingLockCheckEndPoint);
  v31 = sub_100621D9C(v20, v29, v30);
  sub_10041AE14(v22, type metadata accessor for AccessoryPairingLockCheckEndPoint);
  v32 = v66;
  v33 = sub_1004142D4();
  v34 = sub_100513CD8();

  if (v34 && (v35 = sub_100513FCC(), v37 = v36, v34, v37))
  {
    sub_1000BC488();
    v65 = v35;
    static DispatchQoS.unspecified.getter();
    v69[0] = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v58 + 104))(v57, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v59);
    v38 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v39 = type metadata accessor for TaskPriority();
    v40 = v60;
    (*(*(v39 - 8) + 56))(v60, 1, 1, v39);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    v42 = v62;
    v43 = v62[7];
    *(v41 + 128) = v62[6];
    *(v41 + 144) = v43;
    v44 = v42[9];
    *(v41 + 160) = v42[8];
    *(v41 + 176) = v44;
    v45 = v42[3];
    *(v41 + 64) = v42[2];
    *(v41 + 80) = v45;
    v46 = v42[5];
    *(v41 + 96) = v42[4];
    *(v41 + 112) = v46;
    v47 = v42[1];
    *(v41 + 32) = *v42;
    *(v41 + 48) = v47;
    *(v41 + 192) = v65;
    *(v41 + 200) = v37;
    *(v41 + 208) = v32;
    *(v41 + 216) = v38;
    v48 = v68;
    *(v41 + 224) = v67;
    *(v41 + 232) = v48;
    v49 = v61;
    *(v41 + 240) = v31;
    *(v41 + 248) = v49;
    sub_10041ACEC(v42, v69);

    sub_10025EDD4(0, 0, v40, &unk_1013A17C0, v41);
  }

  else
  {
    v51 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v53 = v51;
      swift_once();
      v51 = v53;
    }

    os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, qword_10177C3B0, "Unable to retrieve masked identifier", 36, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPPairingSessionError(0);
    v69[20] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10041B3A4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v52 = v64;
    *v64 = v69[0];
    swift_storeEnumTagMultiPayload();
    v67(v52);

    return sub_10000B3A8(v52, &qword_10169F848, &qword_1013A17B0);
  }
}

uint64_t sub_100414CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 480) = v14;
  *(v8 + 488) = v15;
  *(v8 + 464) = v13;
  *(v8 + 448) = a7;
  *(v8 + 456) = a8;
  *(v8 + 432) = a5;
  *(v8 + 440) = a6;
  *(v8 + 424) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 496) = v9;
  *(v8 + 504) = *(v9 - 8);
  *(v8 + 512) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 520) = v10;
  *(v8 + 528) = *(v10 - 8);
  *(v8 + 536) = swift_task_alloc();

  return _swift_task_switch(sub_100414DF4, 0, 0);
}

uint64_t sub_100414DF4()
{
  v1 = v0[53];
  v2 = *(v0[56] + 16);

  sub_10041ACEC(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[68] = v3;
  *v3 = v0;
  v3[1] = sub_100414ECC;
  v4 = v0[54];
  v5 = v0[55];
  v6 = v0[53];

  return sub_1011152C0(v6, v4, v5, v2);
}

uint64_t sub_100414ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[48] = v3;
  v4[49] = a1;
  v4[50] = a2;
  v4[51] = a3;
  v4[69] = a1;

  return _swift_task_switch(sub_100414FD4, 0, 0);
}

uint64_t sub_100414FD4(uint64_t a1)
{
  v2 = v1[69];
  if (v2)
  {
    v3 = v1[50];
    v4 = v1[51];
    v5 = v1[60];
    v35 = v3;
    v37 = v1[61];
    v7 = v1[58];
    v6 = v1[59];
    v8 = v1[57];
    v34 = v1[56];
    v9 = v1[53];

    sub_100017D5C(v3, v4);
    sub_1004FCFFC(v2, v3, v4, 0, v5);
    sub_100165328(v2, v3, v4);
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v7;
    v11 = v7;
    v10[4] = v6;
    v12 = v8;

    Future.addFailure(block:)();

    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    *(v13 + 32) = v6;
    *(v13 + 40) = v34;
    v14 = v9[1];
    *(v13 + 48) = *v9;
    *(v13 + 64) = v14;
    v15 = v9[2];
    v16 = v9[3];
    v17 = v9[5];
    *(v13 + 112) = v9[4];
    *(v13 + 128) = v17;
    *(v13 + 80) = v15;
    *(v13 + 96) = v16;
    v18 = v9[6];
    v19 = v9[7];
    v20 = v9[9];
    *(v13 + 176) = v9[8];
    *(v13 + 192) = v20;
    *(v13 + 144) = v18;
    *(v13 + 160) = v19;
    *(v13 + 208) = v37;
    sub_10041ACEC(v9, (v1 + 22));
    v21 = v12;

    Future.addSuccess(block:)();

    sub_100165328(v2, v35, v4);
  }

  else
  {
    v22 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v33 = v22;
      swift_once();
      v22 = v33;
    }

    v23 = v1[67];
    v36 = v1[66];
    v38 = v1[65];
    v25 = v1[63];
    v24 = v1[64];
    v26 = v1[62];
    v27 = v1[58];
    v28 = v1[59];
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C410, "Could not create pairing lock request", 37, 2, _swiftEmptyArrayStorage, v1[57]);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v28;
    v1[46] = sub_10041B540;
    v1[47] = v29;
    v1[42] = _NSConcreteStackBlock;
    v1[43] = 1107296256;
    v1[44] = sub_100006684;
    v1[45] = &unk_10161C450;
    v30 = _Block_copy(v1 + 42);

    static DispatchQoS.unspecified.getter();
    v1[52] = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);
    (*(v25 + 8))(v24, v26);
    (*(v36 + 8))(v23, v38);
  }

  v31 = v1[1];

  return v31();
}

uint64_t sub_1004153F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v25 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v8 = *(v23 - 8);
  __chkstk_darwin(v23);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Error in verify pairing request. Error - %@", 43, 2, v13);

  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21;
  *(v17 + 24) = v18;
  aBlock[4] = sub_10041B008;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161C680;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v7, v5);
  (*(v8 + 8))(v10, v23);
}

uint64_t sub_1004157A0(void (*a1)(void *), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(a3, a4);
  __chkstk_darwin(v9);
  v11 = (v13 - v10);
  type metadata accessor for SPPairingSessionError(0);
  v13[0] = a5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10041B3A4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v11 = v13[1];
  swift_storeEnumTagMultiPayload();
  a1(v11);
  return sub_10000B3A8(v11, a3, a4);
}

uint64_t sub_1004158E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v109 = a6;
  v112 = a3;
  v113 = a4;
  v114 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v117 = *(v7 - 8);
  v118 = v7;
  __chkstk_darwin(v7);
  v115 = v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v119 = *(v9 - 8);
  __chkstk_darwin(v9);
  v116 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for AccessoryPairingLockCheckResponse(0);
  v107 = *(v110 - 8);
  v11 = *(v107 + 64);
  v12 = __chkstk_darwin(v110);
  v108 = v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v111 = v103 - v13;
  v14 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v103 - v21;
  __chkstk_darwin(v20);
  v24 = v103 - v23;
  v25 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  if (v25 == 409)
  {
    v33 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v34 = qword_10177C410;
    (*(v16 + 16))(v22, a1, v15);
    if (os_log_type_enabled(v34, v33))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v35 = 136446210;
      sub_10041B3A4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v9;
      v40 = v39;
      (*(v16 + 8))(v22, v15);
      v41 = sub_1000136BC(v37, v40, &aBlock);
      v9 = v38;

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v33, "Linked to another Apple ID. %{public}s", v35, 0xCu);
      sub_100007BAC(v36);
    }

    else
    {
      (*(v16 + 8))(v22, v15);
    }

    v64 = swift_allocObject();
    v65 = v113;
    *(v64 + 16) = v112;
    *(v64 + 24) = v65;
    v125 = sub_10041AD84;
    v126 = v64;
    aBlock = _NSConcreteStackBlock;
    v122 = 1107296256;
    v66 = &unk_10161C540;
    goto LABEL_23;
  }

  if (v25 != 200)
  {
    v42 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v43 = qword_10177C410;
    (*(v16 + 16))(v19, a1, v15);
    if (os_log_type_enabled(v43, v42))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock = v45;
      *v44 = 136446210;
      sub_10041B3A4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v9;
      v49 = v48;
      (*(v16 + 8))(v19, v15);
      v50 = sub_1000136BC(v46, v49, &aBlock);
      v9 = v47;

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v43, v42, "Pairing lock failed: %{public}s", v44, 0xCu);
      sub_100007BAC(v45);
    }

    else
    {
      (*(v16 + 8))(v19, v15);
    }

    v67 = swift_allocObject();
    v68 = v113;
    *(v67 + 16) = v112;
    *(v67 + 24) = v68;
    v125 = sub_10041B540;
    v126 = v67;
    aBlock = _NSConcreteStackBlock;
    v122 = 1107296256;
    v66 = &unk_10161C4F0;
LABEL_23:
    v123 = sub_100006684;
    v124 = v66;
    v69 = _Block_copy(&aBlock);

    v70 = v116;
    static DispatchQoS.unspecified.getter();
    v120 = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v71 = v115;
    v72 = v118;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v69);
    (*(v117 + 8))(v71, v72);
    (*(v119 + 8))(v70, v9);
  }

  v106 = v9;
  v26 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v27 = qword_10177C410;
  (*(v16 + 16))(v24, a1, v15);
  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    p_isa = swift_slowAlloc();
    aBlock = p_isa;
    *v28 = 136446210;
    sub_10041B3A4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v104 = v26;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v16 + 8))(v24, v15);
    v32 = sub_1000136BC(v29, v31, &aBlock);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v27, v104, "Pairing success: %{public}s", v28, 0xCu);
    sub_100007BAC(p_isa);
  }

  else
  {
    (*(v16 + 8))(v24, v15);
  }

  v51 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v53 = v52;
  static String.Encoding.utf8.getter();
  v54 = String.init(data:encoding:)();
  v56 = v55;
  sub_100016590(v51, v53);
  if (v56)
  {
    v57 = static os_log_type_t.info.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_101385D80;
    *(v58 + 56) = &type metadata for String;
    *(v58 + 64) = sub_100008C00();
    *(v58 + 32) = v54;
    *(v58 + 40) = v56;
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v27, "response data: %@", 17, 2, v58);
  }

  p_isa = &v27->isa;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v59 = JSONDecoder.init()();
  v60 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v62 = v61;
  sub_10041B3A4(&qword_10169F850, type metadata accessor for AccessoryPairingLockCheckResponse, &unk_1013F3644);
  v63 = v111;
  v110 = v59;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v60, v62);
  if (qword_1016946E0 != -1)
  {
    swift_once();
  }

  v74 = qword_10169F750;
  if (qword_10169F750 >> 60 == 15)
  {
    v75 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v75, &_mh_execute_header, p_isa, "Missing SignatureVerificationKey!", 33, 2, _swiftEmptyArrayStorage);
    v76 = swift_allocObject();
    v77 = v113;
    *(v76 + 16) = v112;
    *(v76 + 24) = v77;
    v125 = sub_10041ADE4;
    v126 = v76;
    aBlock = _NSConcreteStackBlock;
    v122 = 1107296256;
    v123 = sub_100006684;
    v124 = &unk_10161C5E0;
    v78 = _Block_copy(&aBlock);

    v79 = v116;
    static DispatchQoS.unspecified.getter();
    v120 = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v80 = v115;
    v81 = v118;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v78);
    (*(v117 + 8))(v80, v81);
    (*(v119 + 8))(v79, v106);
  }

  else
  {
    v82 = qword_10169F748;
    sub_10002E98C(qword_10169F748, qword_10169F750);
    v83 = sub_10041A4B8(v109, v63);
    v85 = v84;
    v86 = v63[2];
    v87 = v63[3];
    sub_100017D5C(v86, v87);
    v109 = v82;
    v88 = v82;
    v89 = v85;
    v90 = v83;
    v91 = v74;
    v92 = sub_100A74FAC(v88, v74, v90, v89, v86, v87, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
    sub_100016590(v86, v87);
    v93 = static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_101385D80;
    *(v94 + 56) = &type metadata for Bool;
    *(v94 + 64) = &protocol witness table for Bool;
    *(v94 + 32) = v92 & 1;
    os_log(_:dso:log:_:_:)(v93, &_mh_execute_header, p_isa, "Signature S2 verified? %d", v103[0]);

    v95 = v108;
    sub_10041AE74(v63, v108, type metadata accessor for AccessoryPairingLockCheckResponse);
    v96 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v97 = swift_allocObject();
    v98 = v113;
    *(v97 + 16) = v112;
    *(v97 + 24) = v98;
    sub_10041AEDC(v95, v97 + v96, type metadata accessor for AccessoryPairingLockCheckResponse);
    v125 = sub_10041AF44;
    v126 = v97;
    aBlock = _NSConcreteStackBlock;
    v122 = 1107296256;
    v123 = sub_100006684;
    v124 = &unk_10161C630;
    v99 = _Block_copy(&aBlock);

    v100 = v116;
    static DispatchQoS.unspecified.getter();
    v120 = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v113 = v91;
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v101 = v115;
    v102 = v118;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v99);
    sub_100016590(v90, v89);
    sub_100006654(v109, v113);

    (*(v117 + 8))(v101, v102);
    (*(v119 + 8))(v100, v106);
  }

  sub_10041AE14(v63, type metadata accessor for AccessoryPairingLockCheckResponse);
}

uint64_t sub_100416BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v67 = a3;
  v64 = a2;
  v55 = a1;
  v4 = type metadata accessor for AccessoryUnpairData(0);
  v63 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v62 = v5;
  v65 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v6 - 8);
  v66 = &v53 - v7;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v57);
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v13 - 8);
  v54 = &v53 - v14;
  v15 = type metadata accessor for FMNAccountType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AccessoryUnpairEndpoint(0);
  v20 = __chkstk_darwin(v19);
  v53 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v53 - v22;
  v24 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v24);
  v26 = &v53 - v25;
  v27 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v28 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_101385D80;
  sub_100015794(v55, v26);
  v30 = String.init<A>(describing:)();
  v32 = v31;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_100008C00();
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v28, "Removing pairing lock for UUID - %@", 35, 2, v29);

  v33 = enum case for FMNAccountType.accessory(_:);
  v34 = *(v16 + 104);
  v34(v18, enum case for FMNAccountType.accessory(_:), v15);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v23 = sub_1010B32C8(v18);
  v34(&v23[*(v19 + 20)], v33, v15);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v35 = type metadata accessor for FMNMockingPreferences();
  (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
  v36 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v37 = swift_allocObject();
  v38 = v53;
  sub_10041AE74(v23, v53, type metadata accessor for AccessoryUnpairEndpoint);
  v39 = sub_100621984(v38, v36, v37);
  sub_10041AE14(v23, type metadata accessor for AccessoryUnpairEndpoint);
  sub_1000BC488();
  static DispatchQoS.unspecified.getter();
  v70 = _swiftEmptyArrayStorage;
  sub_10041B3A4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v60 + 104))(v59, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v61);
  v40 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v41 = type metadata accessor for TaskPriority();
  v42 = v66;
  (*(*(v41 - 8) + 56))(v66, 1, 1, v41);
  v43 = v65;
  sub_10041AE74(v64, v65, type metadata accessor for AccessoryUnpairData);
  v44 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v45 = (v62 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  sub_10041AEDC(v43, v48 + v44, type metadata accessor for AccessoryUnpairData);
  v49 = v67;
  *(v48 + v45) = v68;
  *(v48 + v46) = v40;
  v50 = (v48 + v47);
  v51 = v69;
  *v50 = v49;
  v50[1] = v51;
  *(v48 + ((v47 + 23) & 0xFFFFFFFFFFFFFFF8)) = v39;

  sub_10025EDD4(0, 0, v42, &unk_1013A17A8, v48);
}

uint64_t sub_10041740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v13;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[22] = v10;
  v8[23] = *(v10 - 8);
  v8[24] = swift_task_alloc();
  type metadata accessor for AccessoryUnpairData(0);
  v8[25] = swift_task_alloc();

  return _swift_task_switch(sub_100417564, 0, 0);
}

uint64_t sub_100417564()
{
  v1 = v0[14];
  sub_10041AE74(v0[13], v0[25], type metadata accessor for AccessoryUnpairData);
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_100417644;
  v4 = v0[25];

  return sub_100395F7C(v4, v2);
}

uint64_t sub_100417644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[8] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = a3;
  v4[27] = a1;

  return _swift_task_switch(sub_10041774C, 0, 0);
}

uint64_t sub_10041774C(uint64_t a1)
{
  v2 = v1[27];
  if (v2)
  {
    v3 = v1[10];
    v4 = v1[11];
    v6 = v1[17];
    v5 = v1[18];
    v7 = v1[15];
    v8 = v1[16];

    sub_100017D5C(v3, v4);
    sub_1004FD308(v2, v3, v4, 0, v5);
    sub_100165328(v2, v3, v4);
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = v6;
    v10 = v7;

    Future.addFailure(block:)();

    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v8;
    v11[4] = v6;
    v12 = v10;

    Future.addSuccess(block:)();

    sub_100165328(v2, v3, v4);
  }

  else
  {
    v13 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v24 = v13;
      swift_once();
      v13 = v24;
    }

    v14 = v1[24];
    v15 = v1[21];
    v25 = v1[23];
    v26 = v1[22];
    v16 = v1[19];
    v17 = v1[20];
    v18 = v1[16];
    v19 = v1[17];
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10177C410, "Could not create unpair command", 31, 2, _swiftEmptyArrayStorage, v1[15]);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v1[6] = sub_10041AB68;
    v1[7] = v20;
    v1[2] = _NSConcreteStackBlock;
    v1[3] = 1107296256;
    v1[4] = sub_100006684;
    v1[5] = &unk_10161C298;
    v21 = _Block_copy(v1 + 2);

    static DispatchQoS.unspecified.getter();
    v1[12] = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v17 + 8))(v15, v16);
    (*(v25 + 8))(v14, v26);
  }

  v22 = v1[1];

  return v22();
}

uint64_t sub_100417B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v27 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Remove pairing lock command failed. Error - %@", 46, 2, v13);

  v17 = swift_allocObject();
  v18 = v23;
  v17[2] = v22;
  v17[3] = v18;
  v17[4] = a1;
  aBlock[4] = sub_1002EF79C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161C3D8;
  v19 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v26 + 8))(v7, v5);
  (*(v24 + 8))(v10, v25);
}

uint64_t sub_100417EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v30 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v14 = static os_log_type_t.default.getter();
  if (v13 == 200)
  {
    if (qword_1016950C8 != -1)
    {
      v26 = v14;
      swift_once();
      v14 = v26;
    }

    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_10177C410, "Remove pairing lock was successful.", 35, 2, _swiftEmptyArrayStorage);
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v37 = sub_10041ABC0;
    v38 = v15;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_100006684;
    v36 = &unk_10161C388;
    v16 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);
    (*(v7 + 8))(v9, v6);
    (*(v30 + 8))(v12, v10);
  }

  else
  {
    v27 = a3;
    v28 = v10;
    v29 = v7;
    v17 = v14;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v18 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    aBlock = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100008C00();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Remove pairing lock failed. Status code - %@", 44, 2, v19);

    v23 = swift_allocObject();
    *(v23 + 16) = v27;
    *(v23 + 24) = a4;
    v37 = sub_10041ABA0;
    v38 = v23;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_100006684;
    v36 = &unk_10161C338;
    v24 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);
    (*(v29 + 8))(v9, v6);
    (*(v30 + 8))(v12, v28);
  }
}

void sub_100418454(void (*a1)(), uint64_t a2, uint64_t a3)
{
  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10041B3A4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1();
}

uint64_t sub_100418510(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v46 = v41 - v5;
  v45 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v42);
  v41[2] = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v41[1] = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v10 - 8);
  v12 = v41 - v11;
  v13 = type metadata accessor for FMNAccountType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AccessoryPairingLockAckEndpoint(0);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v41 - v22;
  v24 = enum case for FMNAccountType.accessory(_:);
  v25 = *(v14 + 104);
  v25(v16, enum case for FMNAccountType.accessory(_:), v13);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v23 = sub_1010B32C8(v16);
  v25(&v23[*(v18 + 28)], v24, v13);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v26 = type metadata accessor for FMNMockingPreferences();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  v27 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v28 = swift_allocObject();
  sub_10041AE74(v23, v21, type metadata accessor for AccessoryPairingLockAckEndpoint);
  v29 = sub_1006221B4(v21, v27, v28);
  sub_10041AE14(v23, type metadata accessor for AccessoryPairingLockAckEndpoint);
  sub_1000BC488();
  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  sub_10041B3A4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v44 + 104))(v43, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v45);
  v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v31 = type metadata accessor for TaskPriority();
  v32 = v46;
  (*(*(v31 - 8) + 56))(v46, 1, 1, v31);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v34 = a1[5];
  *(v33 + 96) = a1[4];
  *(v33 + 112) = v34;
  v35 = a1[7];
  *(v33 + 128) = a1[6];
  *(v33 + 144) = v35;
  v36 = a1[1];
  *(v33 + 32) = *a1;
  *(v33 + 48) = v36;
  v37 = a1[3];
  *(v33 + 64) = a1[2];
  *(v33 + 80) = v37;
  v38 = v48;
  *(v33 + 160) = v47;
  *(v33 + 168) = v30;
  v39 = v49;
  *(v33 + 176) = v38;
  *(v33 + 184) = v39;
  *(v33 + 192) = v29;
  sub_10041A228(a1, &v50);

  sub_10025EDD4(0, 0, v32, &unk_1013A1780, v33);
}

uint64_t sub_100418B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[33] = a8;
  v8[34] = v13;
  v8[31] = a6;
  v8[32] = a7;
  v8[29] = a4;
  v8[30] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[35] = v9;
  v8[36] = *(v9 - 8);
  v8[37] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[38] = v10;
  v8[39] = *(v10 - 8);
  v8[40] = swift_task_alloc();

  return _swift_task_switch(sub_100418C7C, 0, 0);
}

uint64_t sub_100418C7C()
{
  v1 = v0[29];
  v2 = *(v0[30] + 16);

  sub_10041A228(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_100418D48;
  v4 = v0[29];

  return sub_10125C83C(v4, v2);
}

uint64_t sub_100418D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[24] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = a3;
  v4[42] = a1;

  return _swift_task_switch(sub_100418E50, 0, 0);
}

uint64_t sub_100418E50(uint64_t a1)
{
  v2 = v1[42];
  if (v2)
  {
    v3 = v1[26];
    v4 = v1[27];
    v6 = v1[33];
    v5 = v1[34];
    v7 = v1[31];
    v8 = v1[32];

    sub_100017D5C(v3, v4);
    sub_1004FD614(v2, v3, v4, 0, v5);
    sub_100165328(v2, v3, v4);
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = v6;
    v10 = v7;

    Future.addFailure(block:)();

    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v8;
    v11[4] = v6;
    v12 = v10;

    Future.addSuccess(block:)();

    sub_100165328(v2, v3, v4);
  }

  else
  {
    v13 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v24 = v13;
      swift_once();
      v13 = v24;
    }

    v14 = v1[40];
    v15 = v1[37];
    v25 = v1[39];
    v26 = v1[38];
    v16 = v1[35];
    v17 = v1[36];
    v18 = v1[32];
    v19 = v1[33];
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10177C410, "Could not create pairing ack request", 36, 2, _swiftEmptyArrayStorage, v1[31]);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v1[22] = sub_10041A8C8;
    v1[23] = v20;
    v1[18] = _NSConcreteStackBlock;
    v1[19] = 1107296256;
    v1[20] = sub_100006684;
    v1[21] = &unk_10161C090;
    v21 = _Block_copy(v1 + 18);

    static DispatchQoS.unspecified.getter();
    v1[28] = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v17 + 8))(v15, v16);
    (*(v25 + 8))(v14, v26);
  }

  v22 = v1[1];

  return v22();
}

uint64_t sub_100419208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v25 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v8 = *(v23 - 8);
  __chkstk_darwin(v23);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Ack pairing failed. Error - %@", 30, 2, v13);

  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21;
  *(v17 + 24) = v18;
  aBlock[4] = sub_10041A97C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161C220;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v7, v5);
  (*(v8 + 8))(v10, v23);
}

uint64_t sub_1004195B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v53 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v54 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryPairingLockAckResponse(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v16 = static os_log_type_t.default.getter();
  if (v15 == 200)
  {
    v49 = v14;
    v45 = v9;
    v50 = v4;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v17 = qword_10177C410;
    v47 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    v46 = xmmword_101385D80;
    *(v18 + 16) = xmmword_101385D80;
    type metadata accessor for FMNServerInteractionController.FMNResponseFields();
    sub_10041B3A4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100008C00();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v48 = v17;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Ack pairing success: %@", 23, 2, v18);

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v22 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v24 = v23;
    sub_10041B3A4(&qword_10169F838, type metadata accessor for AccessoryPairingLockAckResponse, &unk_1013C17E0);
    v25 = v49;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v22, v24);
    sub_10041AE74(v25, v12, type metadata accessor for AccessoryPairingLockAckResponse);
    v37 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v38 = swift_allocObject();
    v39 = v52;
    *(v38 + 16) = v51;
    *(v38 + 24) = v39;
    sub_10041AEDC(v12, v38 + v37, type metadata accessor for AccessoryPairingLockAckResponse);
    v64 = sub_10041A940;
    v65 = v38;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_100006684;
    v63 = &unk_10161C1D0;
    v40 = _Block_copy(&aBlock);

    v41 = v54;
    static DispatchQoS.unspecified.getter();
    v59 = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v42 = v55;
    v43 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    (*(v58 + 8))(v42, v43);
    (*(v56 + 8))(v41, v57);
    sub_10041AE14(v25, type metadata accessor for AccessoryPairingLockAckResponse);
  }

  else
  {
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v26 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_101385D80;
    type metadata accessor for FMNServerInteractionController.FMNResponseFields();
    sub_10041B3A4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_100008C00();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v26, "Ack pairing failed. Response %@", 31, 2, v27);

    v31 = swift_allocObject();
    v32 = v52;
    *(v31 + 16) = v51;
    *(v31 + 24) = v32;
    v64 = sub_10041B53C;
    v65 = v31;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_100006684;
    v63 = &unk_10161C130;
    v33 = _Block_copy(&aBlock);

    v34 = v54;
    static DispatchQoS.unspecified.getter();
    v59 = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v35 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);
    (*(v58 + 8))(v35, v4);
    (*(v56 + 8))(v34, v57);
  }
}

uint64_t sub_10041A03C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v11 = sub_1000BC4D4(a4, a5);
  __chkstk_darwin(v11);
  v13 = &v15 - v12;
  sub_10041AE74(a3, &v15 - v12, a6);
  swift_storeEnumTagMultiPayload();
  a1(v13);
  return sub_10000B3A8(v13, a4, a5);
}

uint64_t sub_10041A13C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = v1[21];
  v8 = v1[22];
  v9 = v1[23];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014650;

  return sub_100418B50(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_10041A260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449616E6D66 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134A130 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44746375646F7270 && a2 == 0xEB00000000617461)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10041A4B8(void *a1, void *a2)
{
  v3 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  type metadata accessor for AccessoryPairingLockCheckResponse(0);
  v6 = UUID.data.getter();
  v8 = v7;
  v9 = Data.hexString.getter();
  v11 = v10;
  sub_100016590(v6, v8);
  *(v5 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v5 + 64) = v12;
  *(v5 + 32) = v9;
  *(v5 + 40) = v11;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "fmnaId: %@", 10, 2, v5);

  v13 = static os_log_type_t.debug.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v16 = a2[6];
  v15 = a2[7];
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = v12;
  *(v14 + 32) = v16;
  *(v14 + 40) = v15;

  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v4, "fmnaSerialNumber: %@", 20, 2, v14);

  v17 = static os_log_type_t.debug.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  v19 = Data.hexString.getter();
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = v12;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v4, "nonce: %@", 9, 2, v18);

  v21 = static os_log_type_t.debug.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_101385D80;
  v23 = Data.hexString.getter();
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = v12;
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v4, "Seed: %@", 8, 2, v22);

  v25 = static os_log_type_t.debug.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_101385D80;
  v27 = Data.hexString.getter();
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = v12;
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v4, "H1 (hashed C2): %@", 18, 2, v26);

  v29 = static os_log_type_t.debug.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  v31 = Data.hexString.getter();
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = v12;
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v4, "S2: %@", 6, 2, v30);

  v33 = static os_log_type_t.debug.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_101385D80;
  v35 = Data.hexString.getter();
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = v12;
  *(v34 + 32) = v35;
  *(v34 + 40) = v36;
  os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v4, "E1: %@", 6, 2, v34);

  v38 = UUID.data.getter();
  Data.append(_:)();
  Data.append(_:)();
  Data.append(_:)();
  Data.append(_:)();
  Data.append(_:)();
  return v38;
}

uint64_t type metadata accessor for AccessoryUnpairData(uint64_t a1)
{
  result = qword_10169F8B0;
  if (!qword_10169F8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10041A9F8(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryUnpairData(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_100014744;

  return sub_10041740C(a1, v8, v9, v1 + v4, v10, v11, v12, v13);
}

uint64_t sub_10041ABEC(uint64_t a1)
{
  v4 = v1[3];
  v11 = v1[2];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100414CBC(a1, v11, v4, (v1 + 4), v5, v6, v7, v8);
}

uint64_t sub_10041AD24()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10041AE14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10041AE74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10041AEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10041B038(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_10041B060(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_10041B08C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10041B0D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10041B14C(uint64_t a1, __int128 *a2)
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

uint64_t sub_10041B170(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_10041B1B8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_10041B250(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000E3404();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10041B2FC()
{
  result = qword_10169F900;
  if (!qword_10169F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F900);
  }

  return result;
}

unint64_t sub_10041B350()
{
  result = qword_10169F910;
  if (!qword_10169F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F910);
  }

  return result;
}

uint64_t sub_10041B3A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10041B400()
{
  result = qword_10169F918;
  if (!qword_10169F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F918);
  }

  return result;
}

unint64_t sub_10041B458()
{
  result = qword_10169F920;
  if (!qword_10169F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F920);
  }

  return result;
}

unint64_t sub_10041B4B0()
{
  result = qword_10169F928;
  if (!qword_10169F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F928);
  }

  return result;
}

uint64_t sub_10041B57C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  sub_10015049C(v11, v12);
  sub_100017D5C(a2, a3);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(a2, a3);
  if (!v5)
  {
    sub_10015049C(v11, v12);
    sub_100017D5C(a4, a5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(a4, a5);
  }

  return sub_100007BAC(v11);
}

uint64_t sub_10041B6A4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10041BF30(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

Swift::Int sub_10041B718()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_1013A22C6[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10041B7A0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_1013A22C6[v2]);
  return Hasher._finalize()();
}

uint64_t sub_10041B7EC@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10041C064(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10041B8E0()
{
  v1 = 0x737365636375732ELL;
  if (*v0)
  {
    v1 = 0x64696C61766E692ELL;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 0x64696C61766E692ELL;
  }
}

uint64_t sub_10041B9C8(unsigned __int8 a1)
{
  v1 = a1;
  result = 0x737365636375732ELL;
  if (v1 != 6)
  {
    v3 = 0xE800000000000000;
    v4 = 0xED00006D61726150;
    if (v1 != 4)
    {
      v4 = 0xEF646E616D6D6F43;
    }

    if (v1 == 3)
    {
      v4 = 0xEE006874676E654CLL;
    }

    v5 = 0xED00006574617453;
    v6 = 0x64696C61766E692ELL;
    if (v1 != 1)
    {
      v6 = 0x64696C61766E692ELL;
      v5 = 0xEE006769666E6F43;
    }

    if (v1)
    {
      v3 = v5;
    }

    else
    {
      v6 = 0x737365636375732ELL;
    }

    if (v1 <= 2)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x64696C61766E692ELL;
    }

    if (v1 <= 2)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;
    String.append(_:)(*&v7);

    v10._countAndFlagsBits = 41;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    return 0x28726F7272652ELL;
  }

  return result;
}

uint64_t sub_10041BB24(void *a1, uint64_t a2)
{
  v3 = BYTE2(a2);
  v5 = sub_1000BC4D4(&qword_10169F960, &qword_1013A21A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_10041C6D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = v3;
    v10[13] = 1;
    sub_10041C778();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10041BCA0()
{
  if (*v0)
  {
    return 0x7574617453776172;
  }

  else
  {
    return 0x65646F63706FLL;
  }
}

uint64_t sub_10041BCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65646F63706FLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7574617453776172 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10041BDBC(uint64_t a1)
{
  v2 = sub_10041C6D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10041BDF8(uint64_t a1)
{
  v2 = sub_10041C6D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10041BE34@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10041C510(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
  }

  return result;
}

uint64_t sub_10041BE8C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v5 = v5;
  }

LABEL_10:
  if (v5 != 2)
  {
    goto LABEL_24;
  }

  v9 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a4);
      goto LABEL_20;
    }

LABEL_18:
    LODWORD(v10) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v10 = v10;
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (v9 != 2)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  v8 = __OFSUB__(v11, v12);
  v10 = v11 - v12;
  if (v8)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  if (v10 != 2)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_10041BF30(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v3 = sub_10015049C(v11, v12);
  v4 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    sub_10015049C(v11, v12);
    v8 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v3 = sub_10041BE8C(v6, v7, v8, v10);
  }

  sub_100007BAC(v11);
  sub_100007BAC(a1);
  return v3;
}

uint64_t sub_10041C064(__int16 a1)
{
  if ((a1 + 1) >= 6u)
  {
    return 6;
  }

  else
  {
    return (0x40302010005uLL >> (8 * (a1 + 1)));
  }
}

uint64_t sub_10041C094(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Endianness();
  __chkstk_darwin(v8 - 8);
  sub_100017D5C(a1, a2);
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v14 == 1)
  {
    sub_100016590(a3, a4);
    sub_100016590(a1, a2);
    return 393216;
  }

  else
  {
    static Endianness.current.getter();
    FixedWidthInteger.init(data:ofEndianness:)();
    sub_100016590(a1, a2);
    if (v12 == 1)
    {
      return 393216;
    }

    else
    {
      v10 = sub_10041C064(v11);
      if (v10 == 6)
      {
        return 393216;
      }

      else
      {
        return v13 | (v10 << 16);
      }
    }
  }
}

uint64_t sub_10041C20C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10041C260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_10041C2C4()
{
  result = qword_10169F930;
  if (!qword_10169F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F930);
  }

  return result;
}

unint64_t sub_10041C318(uint64_t a1)
{
  *(a1 + 8) = sub_10041C348();
  result = sub_10030FDD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10041C348()
{
  result = qword_10169F938;
  if (!qword_10169F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F938);
  }

  return result;
}

unint64_t sub_10041C39C()
{
  result = qword_10169F940;
  if (!qword_10169F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F940);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AccessoryCommandResponse(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryCommandResponse(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB)
  {
    if ((a2 + 33554181) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776965;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776965;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 6;
  v6 = v4 - 6;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryCommandResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554181) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFA)
  {
    v3 = 0;
  }

  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    *(result + 2) = (a2 - 251) >> 16;
    if (v3)
    {
      v4 = ((a2 - 251) >> 24) + 1;
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
      *(result + 2) = a2 + 5;
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

uint64_t sub_10041C510(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169F948, &qword_1013A21A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_10041C6D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100007BAC(a1);
  }

  v10[15] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[13] = 1;
  sub_10041C724();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  v8 = v10[14];
  sub_100007BAC(a1);
  return v7 | (v8 << 16);
}

unint64_t sub_10041C6D0()
{
  result = qword_10169F950;
  if (!qword_10169F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F950);
  }

  return result;
}

unint64_t sub_10041C724()
{
  result = qword_10169F958;
  if (!qword_10169F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F958);
  }

  return result;
}

unint64_t sub_10041C778()
{
  result = qword_10169F968;
  if (!qword_10169F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F968);
  }

  return result;
}

unint64_t sub_10041C7E0()
{
  result = qword_10169F970;
  if (!qword_10169F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F970);
  }

  return result;
}

unint64_t sub_10041C838()
{
  result = qword_10169F978;
  if (!qword_10169F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F978);
  }

  return result;
}

unint64_t sub_10041C890()
{
  result = qword_10169F980;
  if (!qword_10169F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F980);
  }

  return result;
}

uint64_t sub_10041C8E4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177ACF0);
  v1 = sub_1000076D4(v0, qword_10177ACF0);
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AE28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10041C9C8()
{
  if (qword_1016946E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177ACF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LeaderCheckService - inside startup() function", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10041CAE0()
{
  v1[6] = v0;
  v2 = type metadata accessor for DeviceVersion();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for DeviceVersion.Platform();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v4 = type metadata accessor for LeaderDevice(0);
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[34] = v5;
  v1[35] = *(v5 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v1[41] = v6;
  v1[42] = *(v6 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[49] = v7;
  *v7 = v1;
  v7[1] = sub_10041CE84;

  return daemon.getter();
}

uint64_t sub_10041CE84(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[50] = a1;

  v3 = swift_task_alloc();
  v2[51] = v3;
  v4 = type metadata accessor for Daemon();
  v2[52] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_1004215B0(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[53] = v6;
  v7 = sub_1004215B0(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_10041D078;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10041D078(uint64_t a1)
{
  v3 = *v2;
  v3[54] = a1;
  v3[55] = v1;

  if (v1)
  {
    v4 = v3[6];

    return _swift_task_switch(sub_10041F700, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[56] = v5;
    *v5 = v3;
    v5[1] = sub_10041D1EC;

    return daemon.getter();
  }
}

uint64_t sub_10041D1EC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 456) = a1;

  v5 = swift_task_alloc();
  *(v3 + 464) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_1004215B0(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_10041D3A4;
  v8 = *(v2 + 424);
  v9 = *(v2 + 416);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10041D3A4(uint64_t a1)
{
  v4 = *v2;
  v4[59] = a1;
  v4[60] = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = sub_10041F900;
  }

  else
  {

    v6 = sub_10041D4DC;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10041D4DC()
{

  v1 = swift_task_alloc();
  v0[61] = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  v0[62] = v2;
  *v1 = v0;
  v1[1] = sub_10041D5CC;
  v3 = v0[59];

  return unsafeBlocking<A>(context:_:)(v0 + 4, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v3, v2);
}

uint64_t sub_10041D5CC()
{
  v1 = *(*v0 + 472);

  return _swift_task_switch(sub_10041D6E4, v1, 0);
}

uint64_t sub_10041D6E4()
{
  v1 = v0[6];
  v0[63] = v0[4];
  return _swift_task_switch(sub_10041D708, v1, 0);
}

unint64_t sub_10041D708()
{
  result = v0[63];
  v38 = *(result + 16);
  if (v38)
  {
    v2 = 0;
    v3 = v0[35];
    v35 = *(v0[41] + 20);
    v36 = v0[42];
    v37 = v0[48];
    v34 = result + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v39 = (v3 + 16);
    v30 = v3;
    v33 = (v3 + 8);
    v4 = _swiftEmptyDictionarySingleton;
    v32 = v0[63];
    while (1)
    {
      if (v2 >= *(result + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v6 = v0[47];
      v5 = v0[48];
      v7 = v0[40];
      v8 = v0[34];
      v9 = *(v36 + 72);
      sub_1004215F8(v34 + v9 * v2, v5, type metadata accessor for OwnedBeaconRecord);
      v10 = *v39;
      (*v39)(v7, v37 + v35, v8);
      sub_1004215F8(v5, v6, type metadata accessor for OwnedBeaconRecord);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_1000210EC(v7);
      v13 = v4[2];
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (v15)
      {
        goto LABEL_26;
      }

      v17 = v12;
      if (v4[3] >= v16)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v21 = v9;
        }

        else
        {
          v21 = v9;
          v28 = result;
          sub_101004C74();
          result = v28;
        }

        v19 = v4;
      }

      else
      {
        v18 = v0[40];
        sub_100FE5D40(v16, isUniquelyReferenced_nonNull_native);
        v19 = v4;
        result = sub_1000210EC(v18);
        if ((v17 & 1) != (v20 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v21 = v9;
      }

      v22 = v0[47];
      v40 = v0[48];
      v23 = v0[40];
      v24 = v0[34];
      if (v17)
      {
        sub_10042171C(v22, v19[7] + result * v21);

        (*v33)(v23, v24);
        sub_100421660(v40, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        v19[(result >> 6) + 8] |= 1 << result;
        v25 = result;
        v10(v19[6] + *(v30 + 72) * result, v23, v24);
        sub_10002AA3C(v22, v19[7] + v25 * v21, type metadata accessor for OwnedBeaconRecord);

        (*(v30 + 8))(v23, v24);
        result = sub_100421660(v40, type metadata accessor for OwnedBeaconRecord);
        v26 = v19[2];
        v15 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v15)
        {
          goto LABEL_27;
        }

        v19[2] = v27;
      }

      ++v2;
      v4 = v19;
      v0 = v31;
      result = v32;
      if (v38 == v2)
      {
        goto LABEL_19;
      }
    }
  }

  v19 = _swiftEmptyDictionarySingleton;
LABEL_19:
  v0[64] = v19;

  v29 = swift_task_alloc();
  v0[65] = v29;
  *v29 = v0;
  v29[1] = sub_10041DAD8;

  return sub_1010CD178(90.0);
}

uint64_t sub_10041DAD8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 528) = a1;
  *(v4 + 536) = v1;

  v5 = *(v3 + 48);
  if (v1)
  {
    v6 = sub_10041FB0C;
  }

  else
  {
    v6 = sub_10041DC10;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10041DC10()
{
  v90 = v0;
  if (qword_101694778 != -1)
  {
LABEL_35:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 544) = sub_1000076D4(v1, qword_10177AE28);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 528);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Found %ld nearby beacons", v6, 0xCu);
  }

  else
  {
  }

  v7 = *(v0 + 528);
  v88 = *(v0 + 512);
  v80 = *(v0 + 336);
  v81 = *(v0 + 328);
  v73 = *(v0 + 160);
  v74 = *(v0 + 168);
  v8 = *(v0 + 104);
  v9 = *(v0 + 64);
  v10 = v7 + 56;
  v11 = -1;
  v12 = -1 << *(v7 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v7 + 56);
  v14 = (63 - v12) >> 6;
  v85 = *(v0 + 280);
  v87 = (v85 + 8);
  v79 = enum case for DeviceVersion.Platform.iOS(_:);
  *(v0 + 584) = enum case for DeviceVersion.Platform.iOS(_:);
  v77 = (v8 + 104);
  v75 = enum case for DeviceVersion.Platform.macOS(_:);
  *(v0 + 588) = enum case for DeviceVersion.Platform.macOS(_:);
  v76 = (v8 + 16);
  v78 = (v8 + 8);
  v72 = (v9 + 32);
  v15 = *(v0 + 536);
  v86 = v7;

  v16 = 0;
  v82 = _swiftEmptyArrayStorage;
LABEL_8:
  *(v0 + 560) = v82;
  *(v0 + 552) = v15;
  while (v13)
  {
LABEL_15:
    v19 = *(v0 + 304);
    v18 = *(v0 + 312);
    v20 = *(v0 + 272);
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v83 = *(v85 + 16);
    v83(v18, *(v86 + 48) + *(v85 + 72) * (v21 | (v16 << 6)), v20);
    (*(v85 + 32))(v19, v18, v20);
    if (*(v88 + 16))
    {
      v22 = sub_1000210EC(*(v0 + 304));
      if (v23)
      {
        v25 = *(v0 + 360);
        v24 = *(v0 + 368);
        sub_1004215F8(*(v88 + 56) + *(v80 + 72) * v22, v24, type metadata accessor for OwnedBeaconRecord);
        sub_1004215F8(v24, v25, type metadata accessor for OwnedBeaconRecord);
        v26 = (v25 + *(v81 + 56));
        v27 = *v26;
        v28 = v26[1];

        v29 = sub_1008383D8(v27, v28);

        if (v15)
        {
          v35 = *(v0 + 296);
          v34 = *(v0 + 304);
          v36 = *(v0 + 272);
          sub_100421660(*(v0 + 360), type metadata accessor for OwnedBeaconRecord);
          v83(v35, v34, v36);
          swift_errorRetain();
          v37 = Logger.logObject.getter();
          LOBYTE(v34) = static os_log_type_t.error.getter();

          v69 = v34;
          v38 = os_log_type_enabled(v37, v34);
          v84 = *(v0 + 368);
          v39 = *(v0 + 296);
          v40 = *(v0 + 304);
          v41 = *(v0 + 272);
          if (v38)
          {
            v67 = *(v0 + 304);
            v42 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v89[0] = v64;
            *v42 = 141558531;
            *(v42 + 4) = 1752392040;
            *(v42 + 12) = 2081;
            sub_1004215B0(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v62 = v37;
            v43 = dispatch thunk of CustomStringConvertible.description.getter();
            v44 = v41;
            v65 = v41;
            v46 = v45;
            v47 = *v87;
            (*v87)(v39, v44);
            v48 = sub_1000136BC(v43, v46, v89);

            *(v42 + 14) = v48;
            *(v42 + 22) = 2114;
            swift_errorRetain();
            v49 = _swift_stdlib_bridgeErrorToNSError();
            *(v42 + 24) = v49;
            *v63 = v49;
            _os_log_impl(&_mh_execute_header, v62, v69, "Cannot convert to leader device %{private,mask.hash}s, %{public}@", v42, 0x20u);
            sub_100288C6C(v63);

            sub_100007BAC(v64);

            sub_100421660(v84, type metadata accessor for OwnedBeaconRecord);
            v47(v67, v65);
          }

          else
          {

            v50 = *v87;
            (*v87)(v39, v41);
            sub_100421660(v84, type metadata accessor for OwnedBeaconRecord);
            v50(v40, v41);
          }

          v15 = 0;
        }

        else
        {
          v30 = v79;
          if (v29)
          {
            v30 = v75;
            if (v29 != 1)
            {
              v30 = v79;
            }
          }

          v32 = *(v0 + 144);
          v31 = *(v0 + 152);
          v33 = *(v0 + 96);
          (*v77)(v31, v30, v33);
          (*v76)(v32, v31, v33);

          DeviceVersion.init(systemVersion:platform:)();
          v51 = *(v0 + 360);
          v66 = *(v0 + 272);
          v68 = *(v0 + 264);
          v52 = *(v0 + 256);
          v70 = *(v0 + 248);
          v53 = *(v0 + 88);
          v54 = *(v0 + 56);
          (*v78)(*(v0 + 152), *(v0 + 96));
          (*v72)(v52, v53, v54);
          v83(v52 + *(v73 + 20), v51 + *(v81 + 20), v66);
          sub_100421660(v51, type metadata accessor for OwnedBeaconRecord);
          sub_10002AA3C(v52, v68, type metadata accessor for LeaderDevice);
          sub_1004215F8(v68, v70, type metadata accessor for LeaderDevice);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_100A5B670(0, v82[2] + 1, 1, v82);
          }

          v56 = v82[2];
          v55 = v82[3];
          if (v56 >= v55 >> 1)
          {
            v82 = sub_100A5B670((v55 > 1), v56 + 1, 1, v82);
          }

          v57 = *(v0 + 368);
          v58 = *(v0 + 304);
          v59 = *(v0 + 272);
          v71 = *(v0 + 248);
          sub_100421660(*(v0 + 264), type metadata accessor for LeaderDevice);
          sub_100421660(v57, type metadata accessor for OwnedBeaconRecord);
          (*v87)(v58, v59);
          v82[2] = v56 + 1;
          sub_10002AA3C(v71, v82 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v56, type metadata accessor for LeaderDevice);
          v15 = 0;
        }

        goto LABEL_8;
      }
    }

    (*v87)(*(v0 + 304), *(v0 + 272));
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_15;
    }
  }

  v60 = *(v0 + 472);

  return _swift_task_switch(sub_10041E514, v60, 0);
}

uint64_t sub_10041E514()
{

  v1 = swift_task_alloc();
  v0[71] = v1;
  *v1 = v0;
  v1[1] = sub_10041E5EC;
  v2 = v0[62];
  v3 = v0[59];

  return unsafeBlocking<A>(context:_:)(v0 + 5, 0xD000000000000010, 0x800000010134A8C0, sub_1004216C0, v3, v2);
}

uint64_t sub_10041E5EC()
{
  v1 = *(*v0 + 472);

  return _swift_task_switch(sub_10041E704, v1, 0);
}

uint64_t sub_10041E704()
{
  v1 = v0[6];
  v0[72] = v0[5];
  return _swift_task_switch(sub_10041E724, v1, 0);
}

id sub_10041E724()
{
  v112 = v0;
  v1 = v0[72];
  v2 = *(v1 + 16);
  if (!v2)
  {

    sub_100EF9784();
    v12 = String.utf8Data.getter();
    v14 = v13;

    v0[2] = v12;
    v0[3] = v14;
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100016590(v12, v14);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v16 = result;
    v17 = MobileGestalt_copy_productType_obj();

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v28 = v0[69];
    v29 = sub_1008383D8(v18, v20);
    if (v28)
    {
      v31 = v0[35];
      v30 = v0[36];
      v32 = v0[34];

      (*(v31 + 8))(v30, v32);
      goto LABEL_11;
    }

    v35 = v29;
    v36 = v0[13];

    (*(v36 + 104))(v0[15], *(v0 + qword_1013A24C0[v35]), v0[12]);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
LABEL_40:
      __break(1u);
      return result;
    }

    v37 = result;
    v38 = MobileGestalt_copy_buildVersion_obj();

    if (v38)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    (*(v0[13] + 16))(v0[14], v0[15], v0[12]);
    DeviceVersion.init(systemVersion:platform:)();
    v49 = v0[35];
    v48 = v0[36];
    v50 = v0[34];
    v51 = v0[30];
    v52 = v0[20];
    v54 = v0[8];
    v53 = v0[9];
    v55 = v0[7];
    (*(v0[13] + 8))(v0[15], v0[12]);
    (*(v54 + 32))(v51, v53, v55);
    (*(v49 + 32))(v51 + *(v52 + 20), v48, v50);
LABEL_20:
    sub_1004215F8(v0[30], v0[29], type metadata accessor for LeaderDevice);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v0[70];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_37:
      v57 = sub_100A5B670(0, v57[2] + 1, 1, v57);
    }

    v59 = v57[2];
    v58 = v57[3];
    if (v59 >= v58 >> 1)
    {
      v57 = sub_100A5B670((v58 > 1), v59 + 1, 1, v57);
    }

    v60 = v0[29];
    v61 = v0[21];
    v57[2] = v59 + 1;
    v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v63 = *(v61 + 72);
    sub_10002AA3C(v60, v57 + v62 + v63 * v59, type metadata accessor for LeaderDevice);
    v111[0] = v57;

    sub_100420188(v111);
    v64 = v111[0];
    v109 = *(v111[0] + 16);
    if (!v109)
    {
      v100 = v0[30];

      sub_1004216C8();
      swift_allocError();
      swift_willThrow();

      sub_100421660(v100, type metadata accessor for LeaderDevice);
      goto LABEL_12;
    }

    v65 = 0;
    v57 = (v111[0] + v62);
    v105 = v111[0] + v62;
    v107 = v63;
    v108 = v111[0];
    do
    {
      if (v65 >= *(v64 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v68 = v0[28];
      v70 = v0[24];
      v69 = v0[25];
      sub_1004215F8(v57, v68, type metadata accessor for LeaderDevice);
      sub_1004215F8(v68, v69, type metadata accessor for LeaderDevice);
      sub_1004215F8(v68, v70, type metadata accessor for LeaderDevice);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = v0[25];
        v106 = v0[24];
        v74 = swift_slowAlloc();
        v111[0] = swift_slowAlloc();
        *v74 = 141558531;
        *(v74 + 4) = 1752392040;
        *(v74 + 12) = 2081;
        sub_1004215B0(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v76;
        sub_100421660(v73, type metadata accessor for LeaderDevice);
        v78 = sub_1000136BC(v75, v77, v111);

        *(v74 + 14) = v78;
        *(v74 + 22) = 2080;
        v79 = DeviceVersion.debugDescription.getter();
        v81 = v80;
        sub_100421660(v106, type metadata accessor for LeaderDevice);
        v82 = sub_1000136BC(v79, v81, v111);

        *(v74 + 24) = v82;
        _os_log_impl(&_mh_execute_header, v71, v72, "Sorted candidates: %{private,mask.hash}s, %s)", v74, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v66 = v0[24];
        v67 = v0[25];

        sub_100421660(v66, type metadata accessor for LeaderDevice);
        sub_100421660(v67, type metadata accessor for LeaderDevice);
      }

      ++v65;
      sub_100421660(v0[28], type metadata accessor for LeaderDevice);
      v57 = (v57 + v107);
      v64 = v108;
    }

    while (v109 != v65);

    if (*(v108 + 16))
    {
      v84 = v0[26];
      v83 = v0[27];
      v86 = v0[22];
      v85 = v0[23];
      sub_1004215F8(v105, v84, type metadata accessor for LeaderDevice);

      sub_10002AA3C(v84, v83, type metadata accessor for LeaderDevice);
      sub_1004215F8(v83, v85, type metadata accessor for LeaderDevice);
      sub_1004215F8(v83, v86, type metadata accessor for LeaderDevice);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = v0[22];
        v90 = v0[23];
        v91 = swift_slowAlloc();
        v111[0] = swift_slowAlloc();
        *v91 = 136315394;
        sub_1004215B0(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v92 = dispatch thunk of CustomStringConvertible.description.getter();
        v94 = v93;
        sub_100421660(v90, type metadata accessor for LeaderDevice);
        v95 = sub_1000136BC(v92, v94, v111);

        *(v91 + 4) = v95;
        *(v91 + 12) = 2080;
        v96 = DeviceVersion.debugDescription.getter();
        v98 = v97;
        sub_100421660(v89, type metadata accessor for LeaderDevice);
        v99 = sub_1000136BC(v96, v98, v111);

        *(v91 + 14) = v99;
        _os_log_impl(&_mh_execute_header, v87, v88, "Beacon identifier %s elected as the leader. Model : %s.", v91, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v102 = v0[22];
        v101 = v0[23];

        sub_100421660(v102, type metadata accessor for LeaderDevice);
        sub_100421660(v101, type metadata accessor for LeaderDevice);
      }

      v103 = v0[30];
      v104 = v0[27];
      v110 = static UUID.== infix(_:_:)();

      sub_100421660(v104, type metadata accessor for LeaderDevice);
      sub_100421660(v103, type metadata accessor for LeaderDevice);

      v33 = v0[1];
      v34 = v110 & 1;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_39;
  }

  v3 = v0[69];
  v4 = v0[43];
  v5 = v0[44];
  v6 = v0[41];
  sub_1004215F8(v1 + ((*(v0[42] + 80) + 32) & ~*(v0[42] + 80)) + *(v0[42] + 72) * (v2 - 1), v4, type metadata accessor for OwnedBeaconRecord);

  sub_10002AA3C(v4, v5, type metadata accessor for OwnedBeaconRecord);
  v7 = (v5 + *(v6 + 56));
  v8 = *v7;
  v9 = v7[1];

  v10 = sub_1008383D8(v8, v9);
  if (!v3)
  {
    v21 = v10;
    v22 = v0[13];

    v23 = *(v0 + qword_1013A24C0[v21]);
    v24 = v0[16];
    v25 = v0[17];
    v27 = v0[12];
    v26 = v0[13];
    (*(v22 + 104))(v25, v23, v27);
    (*(v26 + 16))(v24, v25, v27);

    DeviceVersion.init(systemVersion:platform:)();
    v39 = v0[44];
    v40 = v0[41];
    v41 = v0[34];
    v42 = v0[35];
    v43 = v0[30];
    v44 = v0[20];
    v45 = v0[10];
    v46 = v0[7];
    v47 = v0[8];
    (*(v0[13] + 8))(v0[17], v0[12]);
    (*(v47 + 32))(v43, v45, v46);
    (*(v42 + 16))(v43 + *(v44 + 20), v39 + *(v40 + 20), v41);
    sub_100421660(v39, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_20;
  }

  v11 = v0[44];

  sub_100421660(v11, type metadata accessor for OwnedBeaconRecord);
LABEL_11:

LABEL_12:

  v33 = v0[1];
  v34 = 0;
LABEL_13:

  return v33(v34);
}

uint64_t sub_10041F700()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10041F900()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10041FB0C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10041FD48(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LeaderCheckService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_10041FDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LeaderCheckService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_10041FEB4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LeaderCheckService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_10041FF5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_10041C9AC();
}

uint64_t sub_10041FFE8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LeaderCheckService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100420090()
{
  type metadata accessor for LeaderCheckService();
  sub_1004215B0(&unk_1016969D0, v0, type metadata accessor for LeaderCheckService, &unk_1013A2368);
  return ActorServiceProtocol.description.getter();
}

Swift::Int sub_100420188(uint64_t *a1)
{
  v2 = *(type metadata accessor for LeaderDevice(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B31FA8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100420230(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100420230(uint64_t *a1)
{
  v2 = a1[1];
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
        type metadata accessor for LeaderDevice(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for LeaderDevice(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1004205D4(v8, v9, a1, v4);
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
    return sub_10042035C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10042035C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for LeaderDevice(0);
  v8 = __chkstk_darwin(v35);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_1004215F8(v23, v17, type metadata accessor for LeaderDevice);
      sub_1004215F8(v20, v13, type metadata accessor for LeaderDevice);
      if (static DeviceVersion.== infix(_:_:)())
      {
        v24 = static UUID.< infix(_:_:)();
      }

      else
      {
        v24 = static DeviceVersion.< infix(_:_:)();
      }

      v25 = v24;
      sub_100421660(v13, type metadata accessor for LeaderDevice);
      result = sub_100421660(v17, type metadata accessor for LeaderDevice);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_10002AA3C(v23, v10, type metadata accessor for LeaderDevice);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002AA3C(v10, v20, type metadata accessor for LeaderDevice);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1004205D4(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v125 = a1;
  v136 = type metadata accessor for LeaderDevice(0);
  v129 = *(v136 - 8);
  v8 = __chkstk_darwin(v136);
  v126 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v135 = &v116 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v116 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v116 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v116 - v19;
  v21 = __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  v119 = &v116 - v23;
  result = __chkstk_darwin(v22);
  v27 = &v116 - v25;
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_102:
    v20 = *v125;
    if (!*v125)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_134:
      result = sub_100B31E68(v30);
      v30 = result;
    }

    v137 = v30;
    v111 = *(v30 + 16);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = v30;
        v30 = *(v30 + 16 * v111);
        v113 = v112;
        v114 = *&v112[16 * v111 + 24];
        sub_100421038(*a3 + *(v129 + 72) * v30, *a3 + *(v129 + 72) * *&v112[16 * v111 + 16], *a3 + *(v129 + 72) * v114, v20);
        if (v5)
        {
        }

        if (v114 < v30)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_100B31E68(v113);
        }

        if (v111 - 2 >= *(v113 + 2))
        {
          goto LABEL_128;
        }

        v115 = &v113[16 * v111];
        *v115 = v30;
        v115[1] = v114;
        v137 = v113;
        result = sub_100B31DDC(v111 - 1);
        v30 = v137;
        v111 = *(v137 + 16);
        if (v111 <= 1)
        {
        }
      }

      goto LABEL_138;
    }
  }

  v117 = a4;
  v118 = v26;
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  v130 = a3;
  v120 = &v116 - v25;
  v121 = v20;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v29 + 1 >= v28)
    {
      goto LABEL_31;
    }

    v127 = v28;
    v122 = v30;
    v30 = *a3;
    v33 = *(v129 + 72);
    v134 = v29 + 1;
    sub_1004215F8(v30 + v33 * v32, v27, type metadata accessor for LeaderDevice);
    v131 = v33;
    v34 = v119;
    sub_1004215F8(v30 + v33 * v31, v119, type metadata accessor for LeaderDevice);
    v35 = static DeviceVersion.== infix(_:_:)();
    v123 = v5;
    v36 = (v35 & 1) != 0 ? static UUID.< infix(_:_:)() : static DeviceVersion.< infix(_:_:)();
    LODWORD(v128) = v36;
    sub_100421660(v34, type metadata accessor for LeaderDevice);
    result = sub_100421660(v27, type metadata accessor for LeaderDevice);
    v124 = v31;
    v37 = v31 + 2;
    v38 = v131 * (v31 + 2);
    v39 = v30 + v38;
    v40 = v134;
    v41 = (v131 * v134);
    a3 = v30 + v131 * v134;
    v5 = v118;
    do
    {
      v44 = v37;
      v46 = v40;
      v47 = v41;
      v45 = v38;
      v134 = v37;
      if (v37 >= v127)
      {
        break;
      }

      v132 = v40;
      v133 = v38;
      sub_1004215F8(v39, v5, type metadata accessor for LeaderDevice);
      sub_1004215F8(a3, v20, type metadata accessor for LeaderDevice);
      v42 = (static DeviceVersion.== infix(_:_:)() & 1) != 0 ? static UUID.< infix(_:_:)() : static DeviceVersion.< infix(_:_:)();
      v43 = v42;
      v30 = v20;
      sub_100421660(v20, type metadata accessor for LeaderDevice);
      result = sub_100421660(v5, type metadata accessor for LeaderDevice);
      v45 = v133;
      v44 = v134;
      v37 = v134 + 1;
      v46 = v132;
      v39 += v131;
      a3 += v131;
      v40 = v132 + 1;
      v41 = &v131[v47];
      v38 = &v131[v133];
    }

    while ((v128 & 1) == (v43 & 1));
    if (v128)
    {
      v48 = v124;
      if (v44 < v124)
      {
        goto LABEL_131;
      }

      if (v124 >= v44)
      {
        v32 = v44;
        v30 = v122;
        v5 = v123;
        a3 = v130;
        v31 = v124;
        goto LABEL_31;
      }

      v49 = v124 * v131;
      do
      {
        if (v48 != v46)
        {
          v51 = *v130;
          if (!*v130)
          {
            goto LABEL_137;
          }

          v52 = v46;
          v53 = v45;
          v20 = (v51 + v49);
          sub_10002AA3C(v51 + v49, v126, type metadata accessor for LeaderDevice);
          if (v49 < v47 || v20 >= v51 + v53)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_10002AA3C(v126, &v47[v51], type metadata accessor for LeaderDevice);
          v45 = v53;
          v46 = v52;
        }

        ++v48;
        v47 -= v131;
        v45 -= v131;
        v49 += v131;
      }

      while (v48 < v46--);
      v32 = v134;
    }

    else
    {
      v32 = v44;
    }

    v30 = v122;
    v5 = v123;
    a3 = v130;
    v31 = v124;
LABEL_31:
    v54 = *(a3 + 8);
    if (v32 < v54)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_130;
      }

      if (v32 - v31 < v117)
      {
        v55 = v31 + v117;
        if (__OFADD__(v31, v117))
        {
          goto LABEL_132;
        }

        if (v55 >= v54)
        {
          v55 = *(a3 + 8);
        }

        if (v55 < v31)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (v32 != v55)
        {
          break;
        }
      }
    }

LABEL_51:
    if (v32 < v31)
    {
      goto LABEL_129;
    }

    v134 = v32;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v66 = *(v30 + 16);
    v65 = *(v30 + 24);
    v67 = v66 + 1;
    v29 = v134;
    if (v66 >= v65 >> 1)
    {
      result = sub_100A5B430((v65 > 1), v66 + 1, 1, v30);
      v29 = v134;
      v30 = result;
    }

    *(v30 + 16) = v67;
    v68 = v30 + 16 * v66;
    *(v68 + 32) = v31;
    *(v68 + 40) = v29;
    v20 = *v125;
    if (!*v125)
    {
      goto LABEL_139;
    }

    if (v66)
    {
      while (1)
      {
        a3 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v69 = *(v30 + 32);
          v70 = *(v30 + 40);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_71:
          if (v72)
          {
            goto LABEL_118;
          }

          v85 = (v30 + 16 * v67);
          v87 = *v85;
          v86 = v85[1];
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_121;
          }

          v91 = (v30 + 32 + 16 * a3);
          v93 = *v91;
          v92 = v91[1];
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_124;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_125;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              a3 = v67 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v95 = (v30 + 16 * v67);
        v97 = *v95;
        v96 = v95[1];
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_85:
        if (v90)
        {
          goto LABEL_120;
        }

        v98 = v30 + 16 * a3;
        v100 = *(v98 + 32);
        v99 = *(v98 + 40);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_123;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_92:
        v106 = a3 - 1;
        if (a3 - 1 >= v67)
        {
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
          goto LABEL_133;
        }

        if (!*v130)
        {
          goto LABEL_136;
        }

        v107 = v30;
        v108 = v30 + 32;
        v30 = *(v30 + 32 + 16 * v106);
        v109 = *(v108 + 16 * a3 + 8);
        sub_100421038(*v130 + *(v129 + 72) * v30, *v130 + *(v129 + 72) * *(v108 + 16 * a3), *v130 + *(v129 + 72) * v109, v20);
        if (v5)
        {
        }

        if (v109 < v30)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_100B31E68(v107);
        }

        if (v106 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v110 = &v107[16 * v106];
        *(v110 + 4) = v30;
        *(v110 + 5) = v109;
        v137 = v107;
        result = sub_100B31DDC(a3);
        v30 = v137;
        v67 = *(v137 + 16);
        v29 = v134;
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = v30 + 32 + 16 * v67;
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_116;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_117;
      }

      v80 = (v30 + 16 * v67);
      v82 = *v80;
      v81 = v80[1];
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_119;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_122;
      }

      if (v84 >= v76)
      {
        v102 = (v30 + 32 + 16 * a3);
        v104 = *v102;
        v103 = v102[1];
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_126;
        }

        if (v71 < v105)
        {
          a3 = v67 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    a3 = v130;
    v28 = v130[1];
    v27 = v120;
    v20 = v121;
    if (v29 >= v28)
    {
      goto LABEL_102;
    }
  }

  v122 = v30;
  v123 = v5;
  v56 = *a3;
  v57 = *(v129 + 72);
  v58 = *a3 + v57 * (v32 - 1);
  v59 = v31;
  v60 = -v57;
  v124 = v59;
  v61 = v59 - v32;
  v127 = v57;
  v128 = v55;
  v20 = (v56 + v32 * v57);
LABEL_41:
  v133 = v58;
  v134 = v32;
  v131 = v20;
  v132 = v61;
  while (1)
  {
    sub_1004215F8(v20, v17, type metadata accessor for LeaderDevice);
    sub_1004215F8(v58, v14, type metadata accessor for LeaderDevice);
    if (static DeviceVersion.== infix(_:_:)())
    {
      v62 = static UUID.< infix(_:_:)();
    }

    else
    {
      v62 = static DeviceVersion.< infix(_:_:)();
    }

    v63 = v62;
    a3 = type metadata accessor for LeaderDevice;
    sub_100421660(v14, type metadata accessor for LeaderDevice);
    result = sub_100421660(v17, type metadata accessor for LeaderDevice);
    if ((v63 & 1) == 0)
    {
LABEL_40:
      v32 = v134 + 1;
      v58 = v133 + v127;
      v61 = v132 - 1;
      v20 = &v131[v127];
      if (v134 + 1 != v128)
      {
        goto LABEL_41;
      }

      v32 = v128;
      v30 = v122;
      v5 = v123;
      v31 = v124;
      goto LABEL_51;
    }

    if (!v56)
    {
      break;
    }

    a3 = v135;
    sub_10002AA3C(v20, v135, type metadata accessor for LeaderDevice);
    swift_arrayInitWithTakeFrontToBack();
    sub_10002AA3C(a3, v58, type metadata accessor for LeaderDevice);
    v58 += v60;
    v20 += v60;
    if (__CFADD__(v61++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

uint64_t sub_100421038(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for LeaderDevice(0);
  v8 = __chkstk_darwin(v53);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v50 = &v45 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v45 - v13;
  result = __chkstk_darwin(v12);
  v17 = &v45 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_67;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_68;
  }

  v21 = (a2 - a1) / v19;
  v56 = a1;
  v55 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v23;
    if (v23 >= 1)
    {
      v31 = -v19;
      v32 = a4 + v23;
      v48 = a4;
      v52 = v31;
      while (2)
      {
        while (1)
        {
          v46 = v30;
          v33 = a2 + v31;
          v49 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v56 = a2;
              v54 = v46;
              goto LABEL_65;
            }

            v36 = a3;
            v47 = v30;
            v37 = v32 + v31;
            v38 = v50;
            sub_1004215F8(v37, v50, type metadata accessor for LeaderDevice);
            v39 = v33;
            v40 = v33;
            v41 = v51;
            sub_1004215F8(v40, v51, type metadata accessor for LeaderDevice);
            v42 = (static DeviceVersion.== infix(_:_:)() & 1) != 0 ? static UUID.< infix(_:_:)() : static DeviceVersion.< infix(_:_:)();
            v43 = v42;
            a3 += v52;
            sub_100421660(v41, type metadata accessor for LeaderDevice);
            sub_100421660(v38, type metadata accessor for LeaderDevice);
            if (v43)
            {
              break;
            }

            v30 = v37;
            v33 = v39;
            if (v36 < v32 || a3 >= v32)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v48;
            }

            else
            {
              v34 = v48;
              if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v32 = v37;
            v35 = v37 > v34;
            v31 = v52;
            a2 = v49;
            if (!v35)
            {
              goto LABEL_63;
            }
          }

          a2 = v39;
          if (v36 < v49 || a3 >= v49)
          {
            break;
          }

          v30 = v47;
          v44 = v48;
          v31 = v52;
          if (v36 != v49)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v32 <= v44)
          {
            goto LABEL_63;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v30 = v47;
        v31 = v52;
        if (v32 > v48)
        {
          continue;
        }

        break;
      }
    }

LABEL_63:
    v56 = a2;
    v54 = v30;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v22;
    v54 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v52 = v19;
      do
      {
        sub_1004215F8(a2, v17, type metadata accessor for LeaderDevice);
        sub_1004215F8(a4, v14, type metadata accessor for LeaderDevice);
        if (static DeviceVersion.== infix(_:_:)())
        {
          v26 = static UUID.< infix(_:_:)();
        }

        else
        {
          v26 = static DeviceVersion.< infix(_:_:)();
        }

        v27 = v26;
        sub_100421660(v14, type metadata accessor for LeaderDevice);
        sub_100421660(v17, type metadata accessor for LeaderDevice);
        if (v27)
        {
          v28 = v52;
          if (a1 < a2 || a1 >= a2 + v52)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v28;
        }

        else
        {
          v28 = v52;
          v29 = a4 + v52;
          if (a1 < a4 || a1 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v29;
          a4 += v28;
        }

        a1 += v28;
        v56 = a1;
      }

      while (a4 < v24 && a2 < a3);
    }
  }

LABEL_65:
  sub_10060AA6C(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_1004215B0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1004215F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100421660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1004216C8()
{
  result = qword_10169FA50;
  if (!qword_10169FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA50);
  }

  return result;
}

uint64_t sub_10042171C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100421794()
{
  result = qword_10169FA58;
  if (!qword_10169FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA58);
  }

  return result;
}

uint64_t sub_1004217E8(void *a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for Endianness();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  if (a3 == 2)
  {
    if (a2)
    {
      v11 = 19;
    }

    else
    {
      v11 = 8;
    }
  }

  else if (a3 == 1)
  {
    v11 = 40;
  }

  else
  {
    v11 = 0;
  }

  v18 = v11;
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.convert(to:)();
  (*(v8 + 8))(v10, v7);
  v18 = v15[0];
  sub_10015049C(v16, v17);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v3)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v15[0] = a2;
        sub_10015049C(v16, v17);
        sub_100422224();
      }

      else
      {
        v12 = sub_10030FF74();
        v15[3] = &type metadata for AccessoryGenericPayload;
        v15[4] = v12;
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          sub_100422128();
          swift_allocError();
          *v14 = 0;
          swift_willThrow();
          return sub_100007BAC(v16);
        }

        sub_10015049C(v16, v17);
        sub_10030FB84();
      }
    }

    else
    {
      LOBYTE(v15[0]) = a2;
      sub_10015049C(v16, v17);
      sub_100422278();
    }

    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v16);
}

char *sub_100421AB8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100421E64(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_100421B08(unsigned __int8 a1)
{
  if (a1 > 0x12u)
  {
    if (a1 != 19)
    {
      if (a1 == 40)
      {
        return 1;
      }

      return 4;
    }

    return 3;
  }

  else
  {
    if (a1)
    {
      if (a1 == 8)
      {
        return 2;
      }

      return 4;
    }

    return 0;
  }
}

uint64_t sub_100421B58(uint64_t a1)
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

uint64_t initializeBufferWithCopyOfBuffer for OwnedBeaconGroup.Version(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100421B88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100421BD0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100421C14(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100421C3C(unsigned __int8 a1, void *a2)
{
  if (a1 > 1u)
  {
    sub_10030FF74();
    v4 = &type metadata for AccessoryGenericPayload;
  }

  else if (a1)
  {
    sub_10042217C();
    v4 = &type metadata for AirTagSoundStartPayload;
  }

  else
  {
    sub_1004221D0();
    v4 = &type metadata for AirTagCommandAckPayload;
  }

  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v4 == result)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        sub_10001F280(a2, v7);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          return 0;
        }
      }

      else
      {
        sub_10001F280(a2, v7);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          return 1;
        }
      }
    }

    else if (a1)
    {
      sub_10001F280(a2, v7);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_100007BAC(a2);
        return v8;
      }
    }

    else
    {
      sub_10001F280(a2, v7);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_100007BAC(a2);
        return v8;
      }
    }

    sub_100422128();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    return sub_100007BAC(a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100421E64(void *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v7 = sub_10015049C(v17, v17[3]);
  sub_1000198E8();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v1)
  {
    goto LABEL_15;
  }

  v18 = v15[0];
  static Endianness.current.getter();
  v7 = &v18;
  FixedWidthInteger.convert(to:)();
  (*(v4 + 8))(v6, v3);
  if (LOBYTE(v16[0]) > 0x12u)
  {
    if (LOBYTE(v16[0]) == 19)
    {
      v8 = &type metadata for AccessoryGenericPayload;
      v9 = 3;
      goto LABEL_12;
    }

    if (LOBYTE(v16[0]) == 40)
    {
      v8 = &type metadata for AirTagSoundStartPayload;
      v9 = 1;
      v10 = sub_10042217C();
LABEL_13:
      v12 = v10;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (LOBYTE(v16[0]))
  {
    if (LOBYTE(v16[0]) == 8)
    {
      v8 = &type metadata for AccessoryGenericPayload;
      v9 = 2;
LABEL_12:
      v10 = sub_10030FF74();
      goto LABEL_13;
    }

LABEL_9:
    sub_100422128();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
LABEL_15:
    sub_100007BAC(v17);
    sub_100007BAC(a1);
    return v7;
  }

  v8 = &type metadata for AirTagCommandAckPayload;
  v12 = sub_1004221D0();
  v9 = 0;
LABEL_14:
  sub_10001F280(a1, v15);
  v16[3] = v8;
  v16[4] = v12;
  sub_1000280DC(v16);
  dispatch thunk of BinaryDecodable.init(from:)();
  sub_10001F280(v16, v15);
  v7 = sub_100421C3C(v9, v15);
  sub_100007BAC(v16);
  sub_100007BAC(v17);
  sub_100007BAC(a1);
  return v7;
}

unint64_t sub_100422128()
{
  result = qword_10169FA60;
  if (!qword_10169FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA60);
  }

  return result;
}

unint64_t sub_10042217C()
{
  result = qword_10169FA68;
  if (!qword_10169FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA68);
  }

  return result;
}

unint64_t sub_1004221D0()
{
  result = qword_10169FA70;
  if (!qword_10169FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA70);
  }

  return result;
}

unint64_t sub_100422224()
{
  result = qword_10169FA78;
  if (!qword_10169FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA78);
  }

  return result;
}

unint64_t sub_100422278()
{
  result = qword_10169FA80;
  if (!qword_10169FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA80);
  }

  return result;
}

unint64_t sub_1004222E0()
{
  result = qword_10169FA88;
  if (!qword_10169FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA88);
  }

  return result;
}

void *sub_100422334(uint64_t a1)
{
  v10 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_1000BC488();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_100422FB4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[4] = 0;
  sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
  swift_allocObject();
  v1[5] = PassthroughSubject.init()();
  swift_allocObject();
  v1[6] = PassthroughSubject.init()();
  v1[7] = &_swiftEmptySetSingleton;
  v1[3] = v10;
  v11 = v1[5];
  sub_1000041A4(&qword_1016B1210, &unk_1016B11B0, &unk_101391880, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v1[8] = Publisher.eraseToAnyPublisher()();
  return v1;
}

uint64_t sub_10042264C(uint64_t a1)
{
  v3 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v30 = &v29 - v4;
  v35 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v40 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_10169FBC8, &qword_1013A2748);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  __chkstk_darwin(v8);
  v33 = &v29 - v10;
  v11 = sub_1000BC4D4(&qword_10169FBD0, &unk_1013A2750);
  v12 = *(v11 - 8);
  v38 = v11;
  v39 = v12;
  __chkstk_darwin(v11);
  v34 = &v29 - v13;
  v1[4] = a1;

  v14 = v1[6];
  v32 = v1;
  v41 = v14;

  static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
  v42 = v1[2];
  v15 = v42;
  v16 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v31 = v15;
  sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
  v29 = sub_1000BC488();
  sub_1000041A4(&qword_1016B1210, &unk_1016B11B0, &unk_101391880, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_100422FB4(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v17 = v33;
  v18 = v30;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100422F3C(v18);
  v19 = *(v40 + 8);
  v40 += 8;
  v20 = v35;
  v19(v7, v35);

  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v21 = v31;
  v41 = v31;
  sub_1000041A4(&qword_10169FBD8, &qword_10169FBC8, &qword_1013A2748, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v22 = v34;
  v23 = v36;
  Publisher.throttle<A>(for:scheduler:latest:)();

  v19(v7, v20);
  (*(v37 + 8))(v17, v23);
  v24 = swift_allocObject();
  v25 = v32;
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100422FA4;
  *(v26 + 24) = v24;
  sub_1000041A4(&qword_10169FBE0, &qword_10169FBD0, &unk_1013A2750, &protocol conformance descriptor for Publishers.Throttle<A, B>);
  v27 = v38;
  Publisher<>.sink(receiveValue:)();

  (*(v39 + 8))(v22, v27);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v41 = *(v25[3] + 24);
  swift_allocObject();
  swift_weakInit();

  sub_1000BC4D4(&qword_10169FBE8, &unk_1013A2760);
  sub_1000041A4(&qword_10169FBF0, &qword_10169FBE8, &unk_1013A2760, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100422C7C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 32))
    {

      sub_10052F588();
    }
  }

  return result;
}

uint64_t sub_100422E28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_100422E94()
{

  return v0;
}

uint64_t sub_100422EE4()
{
  sub_100422E94();

  return swift_deallocClassInstance();
}

uint64_t sub_100422F3C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100422FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100422FFC(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v14 = *v1;
  v5 = *v1;
  sub_10015049C(v6, v7);
  sub_1001022C4(&v14, v4);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v5, *(&v5 + 1));
    v13 = v1[1];
    v5 = v1[1];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v13, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v12 = v1[3];
    v5 = v1[3];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v12, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v11 = v1[4];
    v5 = v1[4];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v11, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v10 = v1[2];
    v5 = v1[2];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v10, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v9 = v1[5];
    v5 = v1[5];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v9, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v8 = v1[6];
    v5 = v1[6];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v8, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v5, *(&v5 + 1));
  return sub_100007BAC(v6);
}

__n128 sub_10042330C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100423A10(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_100423378@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v81 = result;
  v89 = a5;
  v90 = a6;
  v18 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    v19 = 0;
    if (v18 != 2)
    {
      goto LABEL_10;
    }

    v21 = *(a5 + 16);
    v20 = *(a5 + 24);
    v22 = __OFSUB__(v20, v21);
    v19 = v20 - v21;
    if (!v22)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v18)
  {
    v19 = BYTE6(a6);
    goto LABEL_10;
  }

  LODWORD(v19) = HIDWORD(a5) - a5;
  if (__OFSUB__(HIDWORD(a5), a5))
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v19 = v19;
LABEL_10:
  v23 = 60 - v19;
  if (__OFSUB__(60, v19))
  {
    __break(1u);
    goto LABEL_103;
  }

  sub_100017D5C(a5, a6);
  v87 = sub_100845C88(v23);
  v88 = v24;
  sub_100776394(&v87, 0);
  v25 = v87;
  v26 = v88;
  Data.append(_:)();
  result = sub_100016590(v25, v26);
  v87 = a7;
  v88 = a8;
  v27 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(a8);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v27 != 2)
  {
    v28 = 0;
    goto LABEL_21;
  }

  v30 = *(a7 + 16);
  v29 = *(a7 + 24);
  v22 = __OFSUB__(v29, v30);
  v28 = v29 - v30;
  if (v22)
  {
    __break(1u);
LABEL_18:
    LODWORD(v28) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v28 = v28;
  }

LABEL_21:
  v31 = 100 - v28;
  if (__OFSUB__(100, v28))
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_100017D5C(a7, a8);
  v85 = sub_100845C88(v31);
  v86 = v32;
  sub_100776394(&v85, 0);
  v33 = v85;
  v34 = v86;
  Data.append(_:)();
  result = sub_100016590(v33, v34);
  v36 = v89;
  v35 = v90;
  v37 = v88;
  v84 = v87;
  if (v27 <= 1)
  {
    if (!v27)
    {
      v38 = BYTE6(a8);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v27 != 2)
  {
    v38 = 0;
    goto LABEL_32;
  }

  v40 = *(a7 + 16);
  v39 = *(a7 + 24);
  v22 = __OFSUB__(v39, v40);
  v38 = v39 - v40;
  if (v22)
  {
    __break(1u);
LABEL_29:
    LODWORD(v38) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v38 = v38;
  }

LABEL_32:
  v85 = v38;
  sub_100017D5C(v36, v35);
  v41 = v37;
  sub_100017D5C(v84, v37);
  sub_1000C3258();
  v42 = FixedWidthInteger.data.getter();
  v44 = v43;
  v80 = Data.trimmed.getter();
  v82 = v45;
  sub_100016590(a7, a8);
  sub_100016590(a5, a6);
  result = sub_100016590(v42, v44);
  v46 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v47 = a3;
    if (v46 != 2)
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v51 = *(v81 + 16);
    v50 = *(v81 + 24);
    v22 = __OFSUB__(v50, v51);
    v49 = v50 - v51;
    if (!v22)
    {
      v48 = v41;
      goto LABEL_40;
    }

LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v47 = a3;
  v48 = v41;
  if (!v46)
  {
    v49 = BYTE6(a2);
    goto LABEL_40;
  }

  LODWORD(v49) = HIDWORD(v81) - v81;
  if (__OFSUB__(HIDWORD(v81), v81))
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v49 = v49;
LABEL_40:
  if (v49 != 114)
  {
    goto LABEL_115;
  }

  v52 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v52)
    {
      v53 = BYTE6(a4);
      goto LABEL_50;
    }

LABEL_48:
    LODWORD(v53) = HIDWORD(v47) - v47;
    if (!__OFSUB__(HIDWORD(v47), v47))
    {
      v53 = v53;
      goto LABEL_50;
    }

LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v52 != 2)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v55 = *(v47 + 16);
  v54 = *(v47 + 24);
  v22 = __OFSUB__(v54, v55);
  v53 = v54 - v55;
  if (v22)
  {
    __break(1u);
    goto LABEL_48;
  }

LABEL_50:
  if (v53 != 32)
  {
    goto LABEL_116;
  }

  v56 = v48 >> 62;
  if ((v48 >> 62) <= 1)
  {
    if (!v56)
    {
      v57 = BYTE6(v48);
      goto LABEL_60;
    }

LABEL_58:
    LODWORD(v57) = HIDWORD(v84) - v84;
    if (!__OFSUB__(HIDWORD(v84), v84))
    {
      v57 = v57;
      goto LABEL_60;
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  if (v56 != 2)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v59 = *(v84 + 16);
  v58 = *(v84 + 24);
  v22 = __OFSUB__(v58, v59);
  v57 = v58 - v59;
  if (v22)
  {
    __break(1u);
    goto LABEL_58;
  }

LABEL_60:
  if (v57 != 100)
  {
    goto LABEL_117;
  }

  v60 = v82 >> 62;
  if ((v82 >> 62) <= 1)
  {
    if (!v60)
    {
      v61 = BYTE6(v82);
      goto LABEL_70;
    }

LABEL_68:
    LODWORD(v61) = HIDWORD(v80) - v80;
    if (!__OFSUB__(HIDWORD(v80), v80))
    {
      v61 = v61;
      goto LABEL_70;
    }

LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (v60 != 2)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v63 = *(v80 + 16);
  v62 = *(v80 + 24);
  v22 = __OFSUB__(v62, v63);
  v61 = v62 - v63;
  if (v22)
  {
    __break(1u);
    goto LABEL_68;
  }

LABEL_70:
  if (v61 != 1)
  {
    goto LABEL_118;
  }

  v64 = v35 >> 62;
  if ((v35 >> 62) <= 1)
  {
    if (!v64)
    {
      v65 = BYTE6(v35);
      goto LABEL_80;
    }

LABEL_78:
    LODWORD(v65) = HIDWORD(v36) - v36;
    if (!__OFSUB__(HIDWORD(v36), v36))
    {
      v65 = v65;
      goto LABEL_80;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  if (v64 != 2)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v67 = *(v36 + 16);
  v66 = *(v36 + 24);
  v22 = __OFSUB__(v66, v67);
  v65 = v66 - v67;
  if (v22)
  {
    __break(1u);
    goto LABEL_78;
  }

LABEL_80:
  if (v65 != 60)
  {
    goto LABEL_119;
  }

  v68 = a11 >> 62;
  if ((a11 >> 62) <= 1)
  {
    if (!v68)
    {
      v69 = BYTE6(a11);
      goto LABEL_90;
    }

LABEL_88:
    LODWORD(v69) = HIDWORD(a10) - a10;
    if (!__OFSUB__(HIDWORD(a10), a10))
    {
      v69 = v69;
      goto LABEL_90;
    }

LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v68 != 2)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v71 = *(a10 + 16);
  v70 = *(a10 + 24);
  v22 = __OFSUB__(v70, v71);
  v69 = v70 - v71;
  if (v22)
  {
    __break(1u);
    goto LABEL_88;
  }

LABEL_90:
  if (v69 != 8)
  {
    goto LABEL_120;
  }

  v72 = a13 >> 62;
  if ((a13 >> 62) <= 1)
  {
    if (!v72)
    {
      v73 = BYTE6(a13);
      goto LABEL_100;
    }

LABEL_98:
    LODWORD(v73) = HIDWORD(a12) - a12;
    if (!__OFSUB__(HIDWORD(a12), a12))
    {
      v73 = v73;
      goto LABEL_100;
    }

    goto LABEL_111;
  }

  if (v72 != 2)
  {
    goto LABEL_121;
  }

  v75 = *(a12 + 16);
  v74 = *(a12 + 24);
  v22 = __OFSUB__(v74, v75);
  v73 = v74 - v75;
  if (v22)
  {
    __break(1u);
    goto LABEL_98;
  }

LABEL_100:
  if (v73 == 24)
  {
    sub_100016590(v84, v41);
    result = sub_100016590(v36, v35);
    *a9 = v81;
    *(a9 + 8) = a2;
    *&v76 = v36;
    *(&v76 + 1) = v35;
    *(a9 + 16) = v47;
    *(a9 + 24) = a4;
    *&v77 = v84;
    *(&v77 + 1) = v41;
    *(a9 + 32) = v76;
    *(a9 + 48) = v77;
    *(a9 + 64) = v80;
    *(a9 + 72) = v82;
    *(a9 + 80) = a10;
    *(a9 + 88) = a11;
    *(a9 + 96) = a12;
    *(a9 + 104) = a13;
    return result;
  }

LABEL_121:
  __break(1u);
  return result;
}

uint64_t sub_1004238BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 112))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100423910(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_10042398C(uint64_t a1)
{
  *(a1 + 8) = sub_1004239BC();
  result = sub_1003929A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1004239BC()
{
  result = qword_10169FBF8;
  if (!qword_10169FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FBF8);
  }

  return result;
}

uint64_t sub_100423A10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v76, v77);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v76);
    return sub_100007BAC(a1);
  }

  v7 = v5;
  v8 = v6;
  sub_10015049C(v76, v77);
  v73 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v78 = v9;
  sub_10015049C(v76, v77);
  v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v72 = v11;
  sub_10015049C(v76, v77);
  v12 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v70 = v13;
  v71 = v12;
  sub_100017D5C(v10, v72);
  sub_1000E0A3C();
  v14 = DataProtocol.intValue.getter();
  sub_10002EA98(v14, v10, v72, v75);
  v68 = v75[0];
  v69 = v75[1];
  sub_10015049C(v76, v77);
  v66 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v67 = v15;
  sub_10015049C(v76, v77);
  v64 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v65 = v16;
  sub_10015049C(v76, v77);
  v18 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v20 = v19;
  result = sub_100016590(v10, v72);
  v21 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    v22 = v78;
    v23 = v71;
    v24 = v66;
    v25 = v67;
    v26 = v65;
    if (!v21)
    {
      v27 = BYTE6(v8);
LABEL_14:
      v29 = v73;
      v31 = v69;
      v30 = v70;
      v32 = v68;
      goto LABEL_15;
    }

LABEL_12:
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      __break(1u);
      goto LABEL_78;
    }

    v27 = HIDWORD(v7) - v7;
    goto LABEL_14;
  }

  v28 = v21 == 2;
  v22 = v78;
  v29 = v73;
  v30 = v70;
  v23 = v71;
  v24 = v66;
  v25 = v67;
  v32 = v68;
  v31 = v69;
  v26 = v65;
  if (!v28)
  {
    goto LABEL_84;
  }

  v34 = *(v7 + 16);
  v33 = *(v7 + 24);
  v35 = __OFSUB__(v33, v34);
  v27 = v33 - v34;
  if (v35)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_15:
  if (v27 != 114)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v36 = v22 >> 62;
  if ((v22 >> 62) <= 1)
  {
    if (!v36)
    {
      v37 = BYTE6(v22);
      goto LABEL_25;
    }

LABEL_23:
    LODWORD(v37) = HIDWORD(v29) - v29;
    if (!__OFSUB__(HIDWORD(v29), v29))
    {
      v37 = v37;
      goto LABEL_25;
    }

LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v36 != 2)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v39 = *(v29 + 16);
  v38 = *(v29 + 24);
  v35 = __OFSUB__(v38, v39);
  v37 = v38 - v39;
  if (v35)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_25:
  if (v37 != 32)
  {
    goto LABEL_85;
  }

  v40 = v31 >> 62;
  if ((v31 >> 62) <= 1)
  {
    if (!v40)
    {
      v41 = BYTE6(v31);
      goto LABEL_35;
    }

LABEL_33:
    LODWORD(v41) = HIDWORD(v32) - v32;
    if (!__OFSUB__(HIDWORD(v32), v32))
    {
      v41 = v41;
      goto LABEL_35;
    }

LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v40 != 2)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v43 = *(v32 + 16);
  v42 = *(v32 + 24);
  v35 = __OFSUB__(v42, v43);
  v41 = v42 - v43;
  if (v35)
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_35:
  if (v41 != 100)
  {
    goto LABEL_86;
  }

  v44 = v30 >> 62;
  if ((v30 >> 62) <= 1)
  {
    if (!v44)
    {
      v45 = BYTE6(v30);
      goto LABEL_45;
    }

LABEL_43:
    LODWORD(v45) = HIDWORD(v23) - v23;
    if (!__OFSUB__(HIDWORD(v23), v23))
    {
      v45 = v45;
      goto LABEL_45;
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v44 != 2)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v47 = *(v23 + 16);
  v46 = *(v23 + 24);
  v35 = __OFSUB__(v46, v47);
  v45 = v46 - v47;
  if (v35)
  {
    __break(1u);
    goto LABEL_43;
  }

LABEL_45:
  if (v45 != 1)
  {
    goto LABEL_87;
  }

  v48 = v25 >> 62;
  if ((v25 >> 62) <= 1)
  {
    if (!v48)
    {
      v49 = BYTE6(v25);
      goto LABEL_55;
    }

LABEL_53:
    LODWORD(v49) = HIDWORD(v24) - v24;
    if (!__OFSUB__(HIDWORD(v24), v24))
    {
      v49 = v49;
      goto LABEL_55;
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v48 != 2)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v51 = *(v24 + 16);
  v50 = *(v24 + 24);
  v35 = __OFSUB__(v50, v51);
  v49 = v50 - v51;
  if (v35)
  {
    __break(1u);
    goto LABEL_53;
  }

LABEL_55:
  if (v49 != 60)
  {
    goto LABEL_88;
  }

  v52 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (!v52)
    {
      v53 = BYTE6(v26);
      goto LABEL_65;
    }

LABEL_63:
    LODWORD(v53) = HIDWORD(v64) - v64;
    if (!__OFSUB__(HIDWORD(v64), v64))
    {
      v53 = v53;
      goto LABEL_65;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v52 != 2)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v55 = *(v64 + 16);
  v54 = *(v64 + 24);
  v35 = __OFSUB__(v54, v55);
  v53 = v54 - v55;
  if (v35)
  {
    __break(1u);
    goto LABEL_63;
  }

LABEL_65:
  if (v53 != 8)
  {
    goto LABEL_89;
  }

  v56 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    if (!v56)
    {
      v57 = BYTE6(v20);
      goto LABEL_75;
    }

LABEL_73:
    LODWORD(v57) = HIDWORD(v18) - v18;
    if (!__OFSUB__(HIDWORD(v18), v18))
    {
      v57 = v57;
      goto LABEL_75;
    }

    goto LABEL_83;
  }

  if (v56 != 2)
  {
    goto LABEL_90;
  }

  v59 = *(v18 + 16);
  v58 = *(v18 + 24);
  v35 = __OFSUB__(v58, v59);
  v57 = v58 - v59;
  if (v35)
  {
    __break(1u);
    goto LABEL_73;
  }

LABEL_75:
  if (v57 == 24)
  {
    v78 = v20;
    v60 = v29;
    v61 = v24;
    v74 = v18;
    v62 = v22;
    sub_100007BAC(v76);
    result = sub_100007BAC(a1);
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v60;
    a2[3] = v62;
    a2[4] = v61;
    a2[5] = v25;
    a2[6] = v68;
    a2[7] = v69;
    a2[8] = v71;
    a2[9] = v70;
    a2[10] = v64;
    a2[11] = v65;
    v63 = v78;
    a2[12] = v74;
    a2[13] = v63;
    return result;
  }

LABEL_90:
  __break(1u);
  return result;
}