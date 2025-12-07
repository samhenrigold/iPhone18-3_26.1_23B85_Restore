uint64_t sub_100302074(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AccountService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_10030211C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AccountService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_1003021C4()
{
  type metadata accessor for AccountService();
  sub_1003024E4(&qword_101697890, v0, type metadata accessor for AccountService, &unk_10139AEB0);
  return ActorServiceProtocol.description.getter();
}

unint64_t sub_1003022BC(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return 0xD000000000000016;
    }

    if (a2 == 1)
    {
      return 0xD000000000000013;
    }

    goto LABEL_13;
  }

  if (a2 == 2)
  {
    return 0xD00000000000001BLL;
  }

  if (a2 != 3)
  {
    if (a2 == 4)
    {
      return 0xD000000000000013;
    }

LABEL_13:
    _StringGuts.grow(_:)(29);

    v5._countAndFlagsBits = a1;
    v5._object = a2;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 41;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    return 0xD00000000000001ALL;
  }

  return 0xD000000000000013;
}

uint64_t sub_10030240C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A8B8);
  sub_1000076D4(v0, qword_10177A8B8);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100302490()
{
  result = qword_10169D468;
  if (!qword_10169D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D468);
  }

  return result;
}

uint64_t sub_1003024E4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_10030252C(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X8>)
{
  v6 = [a1 aa_personID];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [a1 username];
  if (!v11)
  {

LABEL_7:
    sub_100302490();
    swift_allocError();
    v20 = 1;
LABEL_24:
    *v19 = 0;
    v19[1] = v20;
    swift_willThrow();

    return;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [a1 dataclassProperties];
  if (!v16)
  {

    v44 = 0u;
    v45 = 0u;
LABEL_21:
    sub_10000B3A8(&v44, &unk_1016A0B10, &qword_10139BF40);
LABEL_23:
    sub_100302490();
    swift_allocError();
    v20 = 2;
    goto LABEL_24;
  }

  v17 = v16;
  v41 = v13;
  v46 = v8;
  *&v42 = 0xD000000000000021;
  *(&v42 + 1) = 0x8000000101350B60;
  v18 = [v16 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {

    goto LABEL_21;
  }

  sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_23;
  }

  if (!*(v42 + 16) || (v21 = sub_100771D58(0x6E74736F48707061, 0xEB00000000656D61), (v22 & 1) == 0))
  {

    goto LABEL_26;
  }

  sub_100013894(*(v42 + 56) + 32 * v21, &v44);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:

    sub_100302490();
    swift_allocError();
    v20 = 3;
    goto LABEL_24;
  }

  v23 = [a1 aa_fmipAccount];
  if (!v23)
  {
LABEL_29:

    sub_100302490();
    swift_allocError();
    v20 = 4;
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [a2 credentialForAccount:v23];
  if (!v25)
  {
LABEL_28:

    goto LABEL_29;
  }

  v26 = v25;
  v27 = [v25 credentialItemForKey:ACFindMyiPhoneAppTokenKey];
  if (!v27)
  {

    v24 = v26;
    goto LABEL_28;
  }

  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v30;
  v40 = v29;

  v31 = [a1 aa_authToken];
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v34;
    v38 = v33;

    v36 = v37;
    v35 = v38;
  }

  else
  {

    v35 = 0;
    v36 = 0;
  }

  *a3 = v41;
  *(a3 + 8) = v15;
  *(a3 + 16) = v46;
  *(a3 + 24) = v10;
  *(a3 + 32) = v35;
  *(a3 + 40) = v36;
  *(a3 + 48) = v40;
  *(a3 + 56) = v39;
  *(a3 + 64) = v42;
}

uint64_t sub_100302990(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003029A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100302A00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_100302A50(void *result, int a2)
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

__n128 sub_100302A88(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100302AA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100302AEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_100302B50()
{
  v1 = type metadata accessor for Endianness();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  v5 = type metadata accessor for WildModeAssociationRecord(0);
  sub_1000D2A70(v0 + *(v5 + 56), v4, &qword_1016A62A0, &unk_101396E10);
  v6 = type metadata accessor for AccessoryMetadata(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_10000B3A8(v4, &qword_1016A62A0, &unk_101396E10);
    return 0;
  }

  else
  {
    v8 = &v4[*(v6 + 20)];
    v9 = *v8;
    v10 = v8[1];
    sub_100017D5C(*v8, v10);
    sub_100309338(v4, type metadata accessor for AccessoryMetadata);
    v11 = sub_100313A28(v9, v10);
    sub_100313B54(v9, v10);
    static Endianness.current.getter();
    sub_10012BF24();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v15)
    {
      v12 = 0;
    }

    else
    {
      v12 = v14[2];
    }

    v7 = sub_100E0EA64(v11, v12);
    sub_100016590(v9, v10);
  }

  return v7;
}

unint64_t sub_100302D58@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100309E04(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100302E5C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100309E14(*a1);
  *a2 = result;
  return result;
}

void sub_100302E8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x6465726F6E6769;
  if (v2 != 6)
  {
    v6 = 0x7265766F63736964;
    v5 = 0xEA00000000006465;
  }

  v7 = 0x6465676174736E75;
  if (v2 != 4)
  {
    v7 = 0x7761726468746977;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  v8 = 0x796669746F6ELL;
  if (v2 != 2)
  {
    v8 = 0x657461647075;
  }

  if (*v1)
  {
    v4 = 0x646567617473;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100303030(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169D770, &qword_10139B810);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100309F08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for WildModeTrackingLocation(0);
    v8[12] = 3;
    type metadata accessor for Date();
    sub_100306A50(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10030326C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = v1[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  type metadata accessor for WildModeTrackingLocation(0);
  type metadata accessor for Date();
  sub_100306A50(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100303344()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  type metadata accessor for WildModeTrackingLocation(0);
  type metadata accessor for Date();
  sub_100306A50(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10030343C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for Date();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_10169D750, &qword_10139B808);
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for WildModeTrackingLocation(0);
  __chkstk_darwin(v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v29 = a1;
  sub_1000035D0(a1, v13);
  sub_100309F08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v6;
    v33 = 0;
    v15 = v27;
    KeyedDecodingContainer.decode(_:forKey:)();
    *v12 = v16;
    v32 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v15;
    v12[1] = v18;
    v31 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v12;
    v12[2] = v21;
    v30 = 3;
    sub_100306A50(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v22 = v14;
    v23 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v9, v23);
    (*(v25 + 32))(v20 + *(v10 + 28), v22, v4);
    sub_100309398(v20, v26, type metadata accessor for WildModeTrackingLocation);
  }

  return sub_100007BAC(v29);
}

uint64_t sub_1003037AC(uint64_t a1)
{
  v2 = sub_100309F08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003037E8(uint64_t a1)
{
  v2 = sub_100309F08();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10030385C(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = v1[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  type metadata accessor for Date();
  sub_100306A50(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100303950@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

Swift::Int sub_100303A20()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 >> 60 == 11)
  {
    Hasher._combine(_:)(1uLL);
  }

  else if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(2uLL);
    sub_100017D5C(v1, v2);
    Data.hash(into:)();
    sub_100308D64(v1, v2);
  }

  return Hasher._finalize()();
}

void sub_100303AC4(uint64_t a1)
{
  v2 = v1[1];
  if (v2 >> 60 == 11)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (v2 >> 60 == 15)
  {
    v3 = 0;
LABEL_5:
    Hasher._combine(_:)(v3);
    return;
  }

  v4 = *v1;
  Hasher._combine(_:)(2uLL);
  sub_100017D5C(v4, v2);
  Data.hash(into:)();

  sub_100308D64(v4, v2);
}

Swift::Int sub_100303B6C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  if (v3 >> 60 == 11)
  {
    Hasher._combine(_:)(1uLL);
  }

  else if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(2uLL);
    sub_100017D5C(v2, v3);
    Data.hash(into:)();
    sub_100308D64(v2, v3);
  }

  return Hasher._finalize()();
}

BOOL sub_100303C0C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 >> 60 == 11)
  {
    return v3 >> 60 == 11;
  }

  if (v2 >> 60 == 15)
  {
    return v3 >> 60 == 15;
  }

  if (((v3 >> 60) | 4) == 0xF)
  {
    return 0;
  }

  v5 = *a1;
  v6 = *a2;
  sub_100309400(*a1, v2);
  sub_100309400(v6, v3);
  v7 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v2, v6, v3);
  sub_100308D64(v6, v3);
  sub_100308D64(v5, v2);
  return v7;
}

uint64_t sub_100303CE4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177A8D0);
  sub_1000076D4(v0, qword_10177A8D0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

void sub_100303E40(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryProductInfo(0);
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v55 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v6 - 8);
  v61 = &v53 - v7;
  v8 = type metadata accessor for AccessoryMetadata(0);
  v59 = *(v8 - 8);
  v60 = v8;
  __chkstk_darwin(v8);
  v54 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v10 - 8);
  v57 = &v53 - v11;
  v66 = type metadata accessor for Date();
  v68 = *(v66 - 8);
  __chkstk_darwin(v66);
  v67 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v14 = __chkstk_darwin(v13 - 8);
  v65 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v64 = &v53 - v17;
  __chkstk_darwin(v16);
  v56 = &v53 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v23 - 8);
  v25 = &v53 - v24;
  sub_100306A50(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v26 = type metadata accessor for WildModeAssociationRecord(0);
  sub_1000D2A70(v1 + v26[5], v25, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v20 + 48))(v25, 1, v19) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v20 + 32))(v22, v25, v19);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v20 + 8))(v22, v19);
  }

  Hasher._combine(_:)(*(v1 + v26[6]));
  type metadata accessor for MACAddress();
  sub_100306A50(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  dispatch thunk of Hashable.hash(into:)();
  sub_10083C550(a1, *(v1 + v26[8]));
  Hasher._combine(_:)(*(v1 + v26[9]));
  sub_100306A50(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v27 = v66;
  dispatch thunk of Hashable.hash(into:)();
  v28 = v56;
  sub_1000D2A70(v2 + v26[11], v56, &unk_101696900, &unk_10138B1E0);
  v29 = v68;
  v30 = *(v68 + 48);
  v58 = v68 + 48;
  if (v30(v28, 1, v27) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v31 = v67;
    (*(v29 + 32))(v67, v28, v27);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v29 + 8))(v31, v27);
  }

  v32 = (v2 + v26[12]);
  if (*(v32 + 2))
  {
    v33 = *v32;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v33);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v34 = *(v2 + v26[13]);
  if (v34 == 4)
  {
    LOBYTE(v34) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v34);
  v35 = v57;
  sub_1000D2A70(v2 + v26[14], v57, &qword_1016A62A0, &unk_101396E10);
  if ((*(v59 + 48))(v35, 1, v60) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v36 = v54;
    sub_100309398(v35, v54, type metadata accessor for AccessoryMetadata);
    Hasher._combine(_:)(1u);
    sub_10022FDD4(a1);
    sub_100309338(v36, type metadata accessor for AccessoryMetadata);
  }

  v37 = v61;
  sub_1000D2A70(v2 + v26[15], v61, &qword_101697268, &qword_101394FE0);
  if ((*(v62 + 48))(v37, 1, v63) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v38 = v55;
    sub_100309398(v37, v55, type metadata accessor for AccessoryProductInfo);
    Hasher._combine(_:)(1u);
    sub_10119D1BC(a1);
    sub_100309338(v38, type metadata accessor for AccessoryProductInfo);
  }

  v39 = *(v2 + v26[16]);
  if (v39 == 8)
  {
    Hasher._combine(_:)(0);
    v40 = v68;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v40 = v68;
    String.hash(into:)();
  }

  sub_100E11110(a1, *(v2 + v26[17]));
  v41 = v64;
  sub_1000D2A70(v2 + v26[18], v64, &unk_101696900, &unk_10138B1E0);
  if (v30(v41, 1, v27) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v42 = v67;
    (*(v40 + 32))(v67, v41, v27);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v40 + 8))(v42, v27);
  }

  v43 = v65;
  sub_1000D2A70(v2 + v26[19], v65, &unk_101696900, &unk_10138B1E0);
  if (v30(v43, 1, v27) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v44 = v67;
    (*(v40 + 32))(v67, v43, v27);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v40 + 8))(v44, v27);
  }

  v45 = (v2 + v26[20]);
  v46 = v45[1];
  if (v46 >> 60 == 11)
  {
    v47 = 1;
    goto LABEL_32;
  }

  if (v46 >> 60 == 15)
  {
    v47 = 0;
LABEL_32:
    Hasher._combine(_:)(v47);
    goto LABEL_34;
  }

  v48 = *v45;
  Hasher._combine(_:)(2uLL);
  sub_100017D5C(v48, v46);
  Data.hash(into:)();
  sub_100308D64(v48, v46);
LABEL_34:
  v49 = *(v2 + v26[21]);
  if (v49 == 2)
  {
    v50 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v50 = v49 & 1;
  }

  Hasher._combine(_:)(v50);
  v51 = (v2 + v26[22]);
  if (v51[1])
  {
    v52 = 0;
  }

  else
  {
    v52 = *v51;
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v52);
}

unint64_t sub_1003049F4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x746176726573626FLL;
      break;
    case 3:
      result = 0x7369747265766461;
      break;
    case 4:
      result = 0x73736572646461;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0x6574617473;
      break;
    case 7:
      result = 0x4472656767697274;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x656C646E6168;
      break;
    case 10:
      result = 0x7954656369766564;
      break;
    case 11:
      result = 0x617461646174656DLL;
      break;
    case 12:
      result = 0x49746375646F7270;
      break;
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 14:
      result = 0x6C62755065746164;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x68736F507369;
      break;
    case 18:
      result = 0x496B726F7774656ELL;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100304C30()
{
  Hasher.init(_seed:)();
  sub_100303E40(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100304C74(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100303E40(v2);
  return Hasher._finalize()();
}

uint64_t sub_100304CB4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1003049F4(*a1);
  v5 = v4;
  if (v3 == sub_1003049F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100304D3C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1003049F4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100304DA0(uint64_t a1)
{
  sub_1003049F4(*v1);
  String.hash(into:)();
}

Swift::Int sub_100304DF4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1003049F4(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100304E54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100309E60(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100304E84@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1003049F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100304ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100309E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100304F00(uint64_t a1)
{
  v2 = sub_100308D10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100304F3C(uint64_t a1)
{
  v2 = sub_100308D10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100304F78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a1;
  v90 = a2;
  v2 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v2 - 8);
  v93 = v89 - v3;
  v4 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v4 - 8);
  v94 = v89 - v5;
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = __chkstk_darwin(v6 - 8);
  v91 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v92 = v89 - v10;
  __chkstk_darwin(v9);
  v98 = v89 - v11;
  v12 = type metadata accessor for Date();
  v115 = v12;
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v95 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v15 - 8);
  v97 = v89 - v16;
  v102 = type metadata accessor for MACAddress();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v96 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v18 - 8);
  v101 = v89 - v19;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v104 = v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&qword_10169D480, &qword_10139B0D8);
  v105 = *(v23 - 8);
  v106 = v23;
  __chkstk_darwin(v23);
  v117 = v89 - v24;
  v25 = type metadata accessor for WildModeAssociationRecord(0);
  v26 = __chkstk_darwin(v25);
  v28 = v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v26 + 20);
  v103 = v21;
  v30 = *(v21 + 56);
  v114 = v29;
  v107 = v20;
  v30(&v28[v29], 1, 1, v20);
  v31 = v25[11];
  v99 = v13;
  v32 = *(v13 + 56);
  v113 = v31;
  v32(&v28[v31], 1, 1, v12);
  v33 = v25[14];
  v34 = type metadata accessor for AccessoryMetadata(0);
  v35 = *(*(v34 - 8) + 56);
  v112 = v33;
  v35(&v28[v33], 1, 1, v34);
  v36 = v25[15];
  v37 = type metadata accessor for AccessoryProductInfo(0);
  (*(*(v37 - 8) + 56))(&v28[v36], 1, 1, v37);
  v111 = sub_100908B38(_swiftEmptyArrayStorage);
  v38 = v25[18];
  static Date.trustedNow.getter(&v28[v38]);
  v110 = v38;
  v39 = v115;
  v32(&v28[v38], 0, 1, v115);
  v108 = v25;
  v40 = v25[19];
  v116 = v28;
  v32(&v28[v40], 1, 1, v39);
  sub_1000035D0(v118, v118[3]);
  sub_100308D10();
  v41 = v109;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v41)
  {
    sub_100007BAC(v118);
    v44 = v116;
    sub_10000B3A8(&v116[v114], &qword_1016980D0, &unk_10138F3B0);
    v45 = 0;
    goto LABEL_4;
  }

  v89[2] = v34;
  v89[1] = v37;
  v109 = v36;
  LOBYTE(v119) = 0;
  sub_100306A50(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v42 = v104;
  v43 = v107;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = v116;
  (*(v103 + 32))(v116, v42, v43);
  LOBYTE(v119) = 1;
  v48 = v101;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10002311C(v48, &v47[v114], &qword_1016980D0, &unk_10138F3B0);
  v121 = 2;
  sub_100308D7C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = v102;
  v50 = v108;
  v47[v108[6]] = v119 & 1;
  v121 = 3;
  sub_1002E6E38();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v104 = 0;
  v53 = *(&v119 + 1);
  v54 = &v47[v50[20]];
  if (*(&v119 + 1) >> 60 == 15)
  {
    *v54 = xmmword_10138BBF0;
    LOBYTE(v119) = 4;
    sub_100306A50(&qword_1016A41D0, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v55 = v96;
    v56 = v106;
    v57 = v117;
    v58 = v104;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v104 = v58;
    v59 = v98;
    if (v58)
    {
      (*(v105 + 8))(v57, v56);
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v45 = 1;
      goto LABEL_7;
    }

    v66 = v115;
    v65 = v100;
  }

  else
  {
    v63 = v119;
    *v54 = v119;
    *(v54 + 1) = v53;
    sub_10002E98C(v63, v53);
    sub_100017D5C(v63, v53);
    v64 = static MACAddress.length.getter();
    sub_10002EA98(v64, v63, v53, &v119);
    v55 = v97;
    MACAddress.init(data:type:)();
    v65 = v100;
    result = (*(v100 + 48))(v55, 1, v49);
    v66 = v115;
    v57 = v117;
    v59 = v98;
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    sub_100006654(v63, v53);
    v50 = v108;
  }

  v67 = v116;
  (*(v65 + 32))(&v116[v50[7]], v55, v49);
  sub_1000BC4D4(&qword_10169D498, &qword_10139B0E0);
  v121 = 5;
  sub_1003090E4(&qword_10169D4A0, &qword_10169D4A8, &unk_10139B764, &protocol conformance descriptor for <A> [A]);
  v68 = v106;
  v69 = v104;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v69)
  {
    v104 = v69;
    (*(v105 + 8))(v57, v68);
    v61 = 0;
    v62 = 0;
    v60 = 1;
    v45 = 1;
  }

  else
  {
    *&v67[v50[8]] = v119;
    v121 = 6;
    sub_100308DF0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v67[v50[9]] = v119;
    LOBYTE(v119) = 7;
    sub_100306A50(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v70 = v66;
    v71 = v95;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v99 + 32))(&v116[v108[10]], v71, v70);
    LOBYTE(v119) = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10002311C(v59, &v116[v113], &unk_101696900, &unk_10138B1E0);
    v121 = 9;
    sub_100157E1C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v104 = 0;
    v72 = &v116[v108[12]];
    v73 = v120;
    *v72 = v119;
    *(v72 + 2) = v73;
    v121 = 10;
    sub_100308E44();
    v74 = v104;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v104 = v74;
    if (!v74)
    {
      v116[v108[13]] = v119;
      LOBYTE(v119) = 11;
      sub_100306A50(&qword_10169D4C0, type metadata accessor for AccessoryMetadata, &unk_101393690);
      v75 = v104;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v104 = v75;
      if (!v75)
      {
        sub_10002311C(v94, &v116[v112], &qword_1016A62A0, &unk_101396E10);
        LOBYTE(v119) = 12;
        sub_100306A50(&qword_10169D4C8, type metadata accessor for AccessoryProductInfo, &unk_10140A390);
        v76 = v104;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v104 = v76;
        if (!v76)
        {
          sub_10002311C(v93, &v116[v109], &qword_101697268, &qword_101394FE0);
          LOBYTE(v119) = 14;
          v77 = v104;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v104 = v77;
          if (!v77)
          {
            sub_10002311C(v92, &v116[v40], &unk_101696900, &unk_10138B1E0);
            v121 = 15;
            sub_100308E98();
            v78 = v104;
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v104 = v78;
            if (!v78)
            {
              v116[v108[16]] = v119;
              sub_1000BC4D4(&qword_10169D4D8, &qword_10139B0E8);
              v121 = 16;
              sub_100308EEC();
              v79 = v104;
              KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
              v104 = v79;
              if (!v79)
              {
                v80 = v119;
                if (!v119)
                {
                  v80 = sub_100908B38(_swiftEmptyArrayStorage);
                }

                v111 = v80;
                *&v116[v108[17]] = v80;
                LOBYTE(v119) = 13;
                v81 = v104;
                KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                v104 = v81;
                if (!v81)
                {
                  sub_10002311C(v91, &v116[v110], &unk_101696900, &unk_10138B1E0);
                  LOBYTE(v119) = 17;
                  v82 = v104;
                  v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                  v104 = v82;
                  if (!v82)
                  {
                    v116[v108[21]] = v83;
                    LOBYTE(v119) = 18;
                    v84 = v104;
                    v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                    v104 = v84;
                    if (!v84)
                    {
                      v86 = v85;
                      v87 = v116;
                      v88 = &v116[v108[22]];
                      (*(v105 + 8))(v117, v106);
                      *v88 = v86;
                      v88[1] = HIBYTE(v86) & 1;
                      sub_100308FA8(v87, v90);
                      sub_100007BAC(v118);
                      return sub_100309338(v87, type metadata accessor for WildModeAssociationRecord);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    (*(v105 + 8))(v117, v106);
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v45 = 1;
    v49 = v102;
  }

LABEL_7:
  sub_100007BAC(v118);
  v51 = v116;
  (*(v103 + 8))(v116, v107);
  v44 = v51;
  sub_10000B3A8(&v51[v114], &qword_1016980D0, &unk_10138F3B0);
  if (v60)
  {
    v52 = v108;
    (*(v100 + 8))(&v51[v108[7]], v49);
    if ((v61 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:

    if ((v62 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v52 = v108;
  if (v61)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v62)
  {
LABEL_10:
    (*(v99 + 8))(&v51[v52[10]], v115);
  }

LABEL_11:
  v36 = v109;
LABEL_4:
  sub_10000B3A8(&v44[v113], &unk_101696900, &unk_10138B1E0);

  sub_10000B3A8(&v44[v112], &qword_1016A62A0, &unk_101396E10);
  sub_10000B3A8(&v44[v36], &qword_101697268, &qword_101394FE0);

  sub_10000B3A8(&v44[v110], &unk_101696900, &unk_10138B1E0);
  result = sub_10000B3A8(&v44[v40], &unk_101696900, &unk_10138B1E0);
  if (v45)
  {
    return sub_100308D64(*&v44[v108[20]], *&v44[v108[20] + 8]);
  }

  return result;
}

uint64_t sub_100306204(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169D4E8, &qword_10139B0F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100308D10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  type metadata accessor for UUID();
  sub_100306A50(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for WildModeAssociationRecord(0);
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = *(v3 + v9[6]);
    v20 = 2;
    sub_10030900C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 4;
    type metadata accessor for MACAddress();
    sub_100306A50(&qword_10169B550, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = v3 + v9[20];
    v11 = *(v10 + 8);
    if (((v11 >> 60) | 4) == 0xF)
    {
      v12 = 0;
      v11 = 0xF000000000000000;
    }

    else
    {
      v12 = *v10;
      sub_100017D5C(*v10, *(v10 + 8));
    }

    *&v18 = v12;
    *(&v18 + 1) = v11;
    v20 = 3;
    sub_1000BC4D4(&qword_10169D4F8, &unk_10139B0F8);
    sub_100309060();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100006654(v18, *(&v18 + 1));
    *&v18 = *(v3 + v9[8]);
    v20 = 5;
    sub_1000BC4D4(&qword_10169D498, &qword_10139B0E0);
    sub_1003090E4(&qword_10169D508, &qword_10169D510, &unk_10139B6C4, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = *(v3 + v9[9]);
    v20 = 6;
    sub_100309180();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = 7;
    type metadata accessor for Date();
    sub_100306A50(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = (v3 + v9[12]);
    v14 = *(v13 + 2);
    v18 = *v13;
    v19 = v14;
    v20 = 9;
    sub_100157F84();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = *(v3 + v9[13]);
    v20 = 10;
    sub_1003091D4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = v9[14];
    LOBYTE(v18) = 11;
    type metadata accessor for AccessoryMetadata(0);
    sub_100306A50(&qword_10169D528, type metadata accessor for AccessoryMetadata, &unk_101393668);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = v9[15];
    LOBYTE(v18) = 12;
    type metadata accessor for AccessoryProductInfo(0);
    sub_100306A50(&qword_10169D530, type metadata accessor for AccessoryProductInfo, &unk_10140A368);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 14;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = *(v3 + v9[16]);
    v20 = 15;
    sub_100309228();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v18 = *(v3 + v9[17]);
    v20 = 16;
    sub_1000BC4D4(&qword_10169D4D8, &qword_10139B0E8);
    sub_10030927C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 13;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v18) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003069CC(uint64_t a1)
{
  *(a1 + 8) = sub_100306A50(&qword_10169D470, type metadata accessor for WildModeAssociationRecord, &unk_10139B068);
  result = sub_100306A50(&qword_10169D478, type metadata accessor for WildModeAssociationRecord, &unk_10139B040);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100306A50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100306A98()
{
  v1 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v1 - 8);
  v3 = v77 - v2;
  v4 = type metadata accessor for AccessoryMetadata(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v8 - 8);
  v10 = v77 - v9;
  v11 = type metadata accessor for LocalizationUtility.Table();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WildModeAssociationRecord(0);
  v16 = v15;
  if (*(v0 + v15[13]) - 2 >= 3)
  {
    v22 = v0 + v15[12];
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = *(v22 + 8);
      v25 = *v22;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_101385D80;
      v27 = sub_100EB3708(v25, v24, v23);
      v28 = [v27 description];

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = sub_1010E09D0(v29, v31, 0);
      v34 = v33;

      *(v26 + 56) = &type metadata for String;
      *(v26 + 64) = sub_100008C00();
      *(v26 + 32) = v32;
      *(v26 + 40) = v34;
    }

    goto LABEL_20;
  }

  v81 = v11;
  sub_1000D2A70(v0 + v15[15], v10, &qword_101697268, &qword_101394FE0);
  v17 = type metadata accessor for AccessoryProductInfo(0);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) != 1)
  {
    v35 = &v10[*(v17 + 52)];
    v37 = *v35;
    v36 = v35[1];

    v38 = type metadata accessor for AccessoryProductInfo;
    v39 = v10;
    goto LABEL_9;
  }

  sub_10000B3A8(v10, &qword_101697268, &qword_101394FE0);
  sub_1000D2A70(v0 + v16[14], v3, &qword_1016A62A0, &unk_101396E10);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    sub_100309398(v3, v7, type metadata accessor for AccessoryMetadata);
    v61 = sub_100302B50();
    v62 = &v7[*(v4 + 28)];
    v11 = v81;
    if (!v61)
    {
      v37 = *v62;
      v36 = v62[1];

      sub_100309338(v7, type metadata accessor for AccessoryMetadata);
      goto LABEL_10;
    }

    v63 = v62[1];
    if (v63)
    {
      v64 = *v62;
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v82 = 0xD00000000000001DLL;
      v83 = 0x800000010134F730;
      v65._countAndFlagsBits = v64;
      v65._object = v63;
      String.append(_:)(v65);
      v66 = v82;
      v67 = v83;
    }

    else
    {
      v67 = 0x800000010134F6E0;
      v66 = 0xD00000000000001CLL;
    }

    v70 = *(v12 + 104);
    v80 = enum case for LocalizationUtility.Table.default(_:);
    v79 = v70;
    v77[1] = v12 + 104;
    v70(v14);
    v71 = static LocalizationUtility.localizedString(key:table:)();
    v36 = v72;

    v78 = *(v12 + 8);
    v78(v14, v11);
    v73 = v71 == v66;
    v37 = v71;
    if (v73 && v36 == v67)
    {

LABEL_28:

      v75 = v81;
      v79(v14, v80, v81);
      v37 = static LocalizationUtility.localizedString(key:table:)();
      v36 = v76;
      v78(v14, v75);
      v11 = v75;
      sub_100309338(v7, type metadata accessor for AccessoryMetadata);
LABEL_10:
      v40 = v0 + v16[12];
      v19 = *(v40 + 16);
      if (v19)
      {
        v20 = *(v40 + 8);
        v21 = *v40;
        if (!v36)
        {
          goto LABEL_14;
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_10138BBE0;
        v42 = sub_100EB3708(v21, v20, v19);
        v43 = [v42 description];

        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = sub_1010E09D0(v44, v46, 0);
        v49 = v48;

        *(v41 + 56) = &type metadata for String;
        v50 = sub_100008C00();
        *(v41 + 32) = v47;
        *(v41 + 40) = v49;
        *(v41 + 96) = &type metadata for String;
        *(v41 + 104) = v50;
        *(v41 + 64) = v50;
        *(v41 + 72) = v37;
        *(v41 + 80) = v36;
      }

      else if (v36)
      {
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_101385D80;
        *(v60 + 56) = &type metadata for String;
        *(v60 + 64) = sub_100008C00();
        *(v60 + 32) = v37;
        *(v60 + 40) = v36;
      }

      goto LABEL_20;
    }

    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v74)
    {
      goto LABEL_28;
    }

    v38 = type metadata accessor for AccessoryMetadata;
    v39 = v7;
LABEL_9:
    sub_100309338(v39, v38);
    v11 = v81;
    goto LABEL_10;
  }

  sub_10000B3A8(v3, &qword_1016A62A0, &unk_101396E10);
  v18 = v0 + v16[12];
  v19 = *(v18 + 16);
  v11 = v81;
  if (v19)
  {
    v20 = *(v18 + 8);
    v21 = *v18;
LABEL_14:
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_101385D80;
    v52 = sub_100EB3708(v21, v20, v19);
    v53 = [v52 description];

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = sub_1010E09D0(v54, v56, 0);
    v59 = v58;

    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = sub_100008C00();
    *(v51 + 32) = v57;
    *(v51 + 40) = v59;
  }

LABEL_20:
  (*(v12 + 104))(v14, enum case for LocalizationUtility.Table.default(_:), v11);
  static LocalizationUtility.localizedString(key:table:)();

  (*(v12 + 8))(v14, v11);
  v68 = String.init(format:arguments:)();

  return v68;
}

uint64_t sub_1003073D8()
{
  v1 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for AccessoryProductInfo(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WildModeAssociationRecord(0);
  sub_1000D2A70(v0 + *(v11 + 60), v6, &qword_101697268, &qword_101394FE0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000B3A8(v6, &qword_101697268, &qword_101394FE0);
    sub_1000D2A70(v0 + *(v11 + 56), v3, &qword_1016A62A0, &unk_101396E10);
    v12 = type metadata accessor for AccessoryMetadata(0);
    if ((*(*(v12 - 8) + 48))(v3, 1, v12) == 1)
    {
      sub_10000B3A8(v3, &qword_1016A62A0, &unk_101396E10);
      return 0;
    }

    else
    {
      v15 = &v3[*(v12 + 52)];
      v16 = *v15;
      v17 = v15[4];
      sub_100309338(v3, type metadata accessor for AccessoryMetadata);
      if (v17)
      {
        return 0;
      }

      else
      {
        return (v16 >> 8) & 1;
      }
    }
  }

  else
  {
    sub_100309398(v6, v10, type metadata accessor for AccessoryProductInfo);
    v14 = *&v10[*(v7 + 88)];
    sub_100309338(v10, type metadata accessor for AccessoryProductInfo);
    return (v14 >> 8) & 1;
  }
}

uint64_t sub_10030769C()
{
  v1 = type metadata accessor for WildModeAssociationRecord(0);
  v2 = (v0 + v1[22]);
  if (v2[1] != 1)
  {
    if (*(v0 + v1[21]))
    {
      if (*v2 == 1)
      {
        return 5;
      }

      return 6;
    }

    return *(v0 + v1[13]);
  }

  if ((*(v0 + v1[21]) & 1) == 0)
  {
    return *(v0 + v1[13]);
  }

  return 6;
}

uint64_t sub_100307708@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WildModeAssociationRecord(0);
  v4 = (v1 + v3[22]);
  if ((v4[1] & 1) == 0)
  {
    if ((*(v1 + v3[21]) & 1) == 0)
    {
      goto LABEL_7;
    }

    if (*v4 == 1)
    {
      goto LABEL_12;
    }

LABEL_6:
    v5 = v3[7];
    v6 = type metadata accessor for MACAddress();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a1, v1 + v5, v6);
    v7 = *(v13 + 56);
    v8 = a1;
    v9 = 0;
    v10 = v6;
LABEL_9:

    return v7(v8, v9, 1, v10);
  }

  if (*(v1 + v3[21]))
  {
    goto LABEL_6;
  }

LABEL_7:
  if (*(v1 + v3[13]) == 4)
  {
    v11 = type metadata accessor for MACAddress();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a1;
    v9 = 1;
    goto LABEL_9;
  }

LABEL_12:
  MACAddress.data.getter();

  return MACAddress.init(addressToSanitize:type:)();
}

uint64_t sub_10030788C(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for WildModeTrackingLocation(0);

  return static Date.== infix(_:_:)();
}

BOOL sub_10030790C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryProductInfo(0);
  v147 = *(v4 - 8);
  v148 = v4;
  __chkstk_darwin(v4);
  v143 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v6 - 8);
  v145 = &v133 - v7;
  v146 = sub_1000BC4D4(&qword_10169D548, &qword_10139B108);
  __chkstk_darwin(v146);
  v150 = &v133 - v8;
  v9 = type metadata accessor for AccessoryMetadata(0);
  v152 = *(v9 - 8);
  v153 = v9;
  __chkstk_darwin(v9);
  v144 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v11 - 8);
  v149 = &v133 - v12;
  v151 = sub_1000BC4D4(&qword_10169D550, &qword_10139B110);
  __chkstk_darwin(v151);
  v154 = &v133 - v13;
  v14 = type metadata accessor for Date();
  v157 = *(v14 - 8);
  __chkstk_darwin(v14);
  v155 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v17 = __chkstk_darwin(v16 - 8);
  v139 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v140 = &v133 - v20;
  __chkstk_darwin(v19);
  v156 = &v133 - v21;
  v158 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v22 = __chkstk_darwin(v158);
  v141 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v142 = &v133 - v25;
  __chkstk_darwin(v24);
  v27 = &v133 - v26;
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v32 - 8);
  v34 = &v133 - v33;
  v35 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v35);
  v37 = &v133 - v36;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v136 = v14;
  v38 = type metadata accessor for WildModeAssociationRecord(0);
  v159 = a2;
  v138 = v38;
  v39 = *(v38 + 20);
  v40 = *(v35 + 48);
  v137 = a1;
  sub_1000D2A70(a1 + v39, v37, &qword_1016980D0, &unk_10138F3B0);
  v41 = v159 + v39;
  v42 = v159;
  sub_1000D2A70(v41, &v37[v40], &qword_1016980D0, &unk_10138F3B0);
  v43 = *(v29 + 48);
  if (v43(v37, 1, v28) == 1)
  {
    if (v43(&v37[v40], 1, v28) == 1)
    {
      sub_10000B3A8(v37, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_10;
    }

LABEL_7:
    v44 = &qword_1016AF880;
    v45 = &unk_10138CE20;
    v46 = v37;
LABEL_8:
    sub_10000B3A8(v46, v44, v45);
    return 0;
  }

  sub_1000D2A70(v37, v34, &qword_1016980D0, &unk_10138F3B0);
  if (v43(&v37[v40], 1, v28) == 1)
  {
    (*(v29 + 8))(v34, v28);
    goto LABEL_7;
  }

  (*(v29 + 32))(v31, &v37[v40], v28);
  sub_100306A50(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v29 + 8);
  v48(v31, v28);
  v48(v34, v28);
  sub_10000B3A8(v37, &qword_1016980D0, &unk_10138F3B0);
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v49 = v138;
  v50 = v137;
  if (*(v137 + v138[6]) != *(v42 + v138[6]) || (static MACAddress.== infix(_:_:)() & 1) == 0 || (sub_10038F40C(*(v50 + v49[8]), *(v42 + v49[8])) & 1) == 0 || *(v50 + v49[9]) != *(v42 + v49[9]) || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v51 = v49[11];
  v52 = *(v158 + 48);
  sub_1000D2A70(v50 + v51, v27, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v42 + v51, &v27[v52], &unk_101696900, &unk_10138B1E0);
  v53 = v157;
  v55 = v157 + 48;
  v54 = *(v157 + 48);
  v56 = v136;
  if (v54(v27, 1, v136) == 1)
  {
    if (v54(&v27[v52], 1, v56) == 1)
    {
      v134 = v55;
      v135 = v54;
      sub_10000B3A8(v27, &unk_101696900, &unk_10138B1E0);
      goto LABEL_23;
    }

LABEL_20:
    v44 = &unk_1016B1660;
    v45 = &unk_10138CE10;
LABEL_21:
    v46 = v27;
    goto LABEL_8;
  }

  v57 = v156;
  sub_1000D2A70(v27, v156, &unk_101696900, &unk_10138B1E0);
  if (v54(&v27[v52], 1, v56) == 1)
  {
    (*(v53 + 8))(v57, v56);
    goto LABEL_20;
  }

  v134 = v55;
  v135 = v54;
  v58 = v155;
  (*(v53 + 32))(v155, &v27[v52], v56);
  sub_100306A50(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();
  v60 = *(v53 + 8);
  v61 = v58;
  v49 = v138;
  v60(v61, v56);
  v60(v57, v56);
  sub_10000B3A8(v27, &unk_101696900, &unk_10138B1E0);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v62 = v49[12];
  v63 = (v50 + v62);
  v64 = *(v50 + v62 + 16);
  v65 = (v42 + v62);
  v66 = v65[2];
  if (v64)
  {
    if (!v66 || *v65 != *v63 || (v63[1] != v65[1] || v64 != v66) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v66)
  {
    return 0;
  }

  v67 = v49[13];
  v68 = *(v50 + v67);
  v69 = *(v42 + v67);
  if (v68 == 4)
  {
    if (v69 != 4)
    {
      return 0;
    }
  }

  else if (v68 != v69)
  {
    return 0;
  }

  v70 = v49[14];
  v71 = *(v151 + 48);
  v72 = v154;
  sub_1000D2A70(v50 + v70, v154, &qword_1016A62A0, &unk_101396E10);
  v73 = v159 + v70;
  v74 = v72;
  sub_1000D2A70(v73, v72 + v71, &qword_1016A62A0, &unk_101396E10);
  v75 = v153;
  v76 = *(v152 + 48);
  if (v76(v72, 1, v153) == 1)
  {
    if (v76(v72 + v71, 1, v75) == 1)
    {
      sub_10000B3A8(v72, &qword_1016A62A0, &unk_101396E10);
      goto LABEL_42;
    }

LABEL_40:
    v44 = &qword_10169D550;
    v45 = &qword_10139B110;
    v46 = v74;
    goto LABEL_8;
  }

  v77 = v149;
  sub_1000D2A70(v74, v149, &qword_1016A62A0, &unk_101396E10);
  if (v76(v74 + v71, 1, v75) == 1)
  {
    sub_100309338(v77, type metadata accessor for AccessoryMetadata);
    goto LABEL_40;
  }

  v78 = v74 + v71;
  v79 = v144;
  sub_100309398(v78, v144, type metadata accessor for AccessoryMetadata);
  v80 = sub_10022F898();
  sub_100309338(v79, type metadata accessor for AccessoryMetadata);
  sub_100309338(v77, type metadata accessor for AccessoryMetadata);
  sub_10000B3A8(v74, &qword_1016A62A0, &unk_101396E10);
  if ((v80 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v81 = v49[15];
  v82 = *(v146 + 48);
  v27 = v150;
  sub_1000D2A70(v50 + v81, v150, &qword_101697268, &qword_101394FE0);
  sub_1000D2A70(v159 + v81, &v27[v82], &qword_101697268, &qword_101394FE0);
  v83 = v148;
  v84 = *(v147 + 48);
  if (v84(v27, 1, v148) == 1)
  {
    if (v84(&v27[v82], 1, v83) == 1)
    {
      sub_10000B3A8(v27, &qword_101697268, &qword_101394FE0);
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  sub_1000D2A70(v27, v145, &qword_101697268, &qword_101394FE0);
  if (v84(&v27[v82], 1, v83) == 1)
  {
    sub_100309338(v145, type metadata accessor for AccessoryProductInfo);
    v27 = v150;
LABEL_47:
    v44 = &qword_10169D548;
    v45 = &qword_10139B108;
    goto LABEL_21;
  }

  v85 = v150;
  v86 = &v150[v82];
  v87 = v143;
  sub_100309398(v86, v143, type metadata accessor for AccessoryProductInfo);
  v88 = v145;
  v89 = sub_10119C5C8(v145, v87);
  sub_100309338(v87, type metadata accessor for AccessoryProductInfo);
  sub_100309338(v88, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v85, &qword_101697268, &qword_101394FE0);
  if ((v89 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  v90 = v138[16];
  v91 = *(v137 + v90);
  v92 = *(v159 + v90);
  if (v91 == 8)
  {
    if (v92 != 8)
    {
      return 0;
    }
  }

  else if (v92 == 8 || (sub_10076C2AC(v91, v92) & 1) == 0)
  {
    return 0;
  }

  if ((sub_100DE6A68(*(v137 + v138[17]), *(v159 + v138[17])) & 1) == 0)
  {
    return 0;
  }

  v93 = v138[18];
  v94 = *(v158 + 48);
  v95 = v142;
  sub_1000D2A70(v137 + v93, v142, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v159 + v93, v95 + v94, &unk_101696900, &unk_10138B1E0);
  if (v135(v95, 1, v136) == 1)
  {
    if (v135(v142 + v94, 1, v136) == 1)
    {
      sub_10000B3A8(v142, &unk_101696900, &unk_10138B1E0);
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v96 = v142;
  sub_1000D2A70(v142, v140, &unk_101696900, &unk_10138B1E0);
  if (v135(v96 + v94, 1, v136) == 1)
  {
    (*(v157 + 8))(v140, v136);
LABEL_60:
    v44 = &unk_1016B1660;
    v45 = &unk_10138CE10;
    v46 = v142;
    goto LABEL_8;
  }

  v97 = v157;
  v98 = v142;
  v99 = v155;
  v100 = v136;
  (*(v157 + 32))(v155, v142 + v94, v136);
  sub_100306A50(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v101 = v140;
  v102 = dispatch thunk of static Equatable.== infix(_:_:)();
  v103 = *(v97 + 8);
  v103(v99, v100);
  v103(v101, v100);
  sub_10000B3A8(v98, &unk_101696900, &unk_10138B1E0);
  if ((v102 & 1) == 0)
  {
    return 0;
  }

LABEL_62:
  v104 = v138[19];
  v105 = *(v158 + 48);
  v106 = v141;
  sub_1000D2A70(v137 + v104, v141, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v159 + v104, v106 + v105, &unk_101696900, &unk_10138B1E0);
  if (v135(v106, 1, v136) == 1)
  {
    if (v135(v141 + v105, 1, v136) == 1)
    {
      sub_10000B3A8(v141, &unk_101696900, &unk_10138B1E0);
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  v107 = v141;
  sub_1000D2A70(v141, v139, &unk_101696900, &unk_10138B1E0);
  if (v135(v107 + v105, 1, v136) == 1)
  {
    (*(v157 + 8))(v139, v136);
LABEL_67:
    v44 = &unk_1016B1660;
    v45 = &unk_10138CE10;
    v46 = v141;
    goto LABEL_8;
  }

  v108 = v157;
  v109 = v141;
  v110 = v141 + v105;
  v111 = v155;
  v112 = v136;
  (*(v157 + 32))(v155, v110, v136);
  sub_100306A50(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v113 = v139;
  v114 = dispatch thunk of static Equatable.== infix(_:_:)();
  v115 = *(v108 + 8);
  v115(v111, v112);
  v115(v113, v112);
  sub_10000B3A8(v109, &unk_101696900, &unk_10138B1E0);
  if ((v114 & 1) == 0)
  {
    return 0;
  }

LABEL_69:
  v116 = v138[20];
  v117 = v137 + v116;
  v118 = *(v137 + v116 + 8);
  v119 = (v159 + v116);
  v120 = v119[1];
  if (v118 >> 60 == 11)
  {
    if (v120 >> 60 != 11)
    {
      return 0;
    }
  }

  else if (v118 >> 60 == 15)
  {
    if (v120 >> 60 != 15)
    {
      return 0;
    }
  }

  else
  {
    if (((v120 >> 60) | 4) == 0xF)
    {
      return 0;
    }

    v121 = *v117;
    v122 = *v119;
    sub_100309400(*v117, *(v117 + 8));
    sub_100309400(v122, v120);
    v123 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v121, v118, v122, v120);
    sub_100308D64(v122, v120);
    sub_100308D64(v121, v118);
    if (!v123)
    {
      return 0;
    }
  }

  v124 = v138[21];
  v125 = *(v137 + v124);
  v126 = *(v159 + v124);
  if (v125 == 2)
  {
    if (v126 != 2)
    {
      return 0;
    }

    goto LABEL_82;
  }

  result = 0;
  if (v126 != 2 && ((v126 ^ v125) & 1) == 0)
  {
LABEL_82:
    v128 = v138[22];
    v129 = (v137 + v128);
    v130 = *(v137 + v128 + 1);
    v131 = (v159 + v128);
    v132 = *(v159 + v128 + 1);
    if ((v130 & 1) == 0)
    {
      if (*v129 != *v131)
      {
        v132 = 1;
      }

      return (v132 & 1) == 0;
    }

    return (v132 & 1) != 0;
  }

  return result;
}

unint64_t sub_100308D10()
{
  result = qword_10169D488;
  if (!qword_10169D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D488);
  }

  return result;
}

uint64_t sub_100308D64(uint64_t result, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_100016590(result, a2);
  }

  return result;
}

unint64_t sub_100308D7C()
{
  result = qword_10169D490;
  if (!qword_10169D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D490);
  }

  return result;
}

unint64_t sub_100308DF0()
{
  result = qword_10169D4B0;
  if (!qword_10169D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D4B0);
  }

  return result;
}

unint64_t sub_100308E44()
{
  result = qword_10169D4B8;
  if (!qword_10169D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D4B8);
  }

  return result;
}

unint64_t sub_100308E98()
{
  result = qword_10169D4D0;
  if (!qword_10169D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D4D0);
  }

  return result;
}

unint64_t sub_100308EEC()
{
  result = qword_10169D4E0;
  if (!qword_10169D4E0)
  {
    sub_1000BC580(&qword_10169D4D8, &qword_10139B0E8);
    sub_100308E98();
    sub_100306A50(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D4E0);
  }

  return result;
}

uint64_t sub_100308FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WildModeAssociationRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10030900C()
{
  result = qword_10169D4F0;
  if (!qword_10169D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D4F0);
  }

  return result;
}

unint64_t sub_100309060()
{
  result = qword_10169D500;
  if (!qword_10169D500)
  {
    sub_1000BC580(&qword_10169D4F8, &unk_10139B0F8);
    sub_1002E6EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D500);
  }

  return result;
}

uint64_t sub_1003090E4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169D498, &qword_10139B0E0);
    sub_100306A50(a2, type metadata accessor for WildModeTrackingLocation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100309180()
{
  result = qword_10169D518;
  if (!qword_10169D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D518);
  }

  return result;
}

unint64_t sub_1003091D4()
{
  result = qword_10169D520;
  if (!qword_10169D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D520);
  }

  return result;
}

unint64_t sub_100309228()
{
  result = qword_10169D538;
  if (!qword_10169D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D538);
  }

  return result;
}

unint64_t sub_10030927C()
{
  result = qword_10169D540;
  if (!qword_10169D540)
  {
    sub_1000BC580(&qword_10169D4D8, &qword_10139B0E8);
    sub_100309228();
    sub_100306A50(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D540);
  }

  return result;
}

uint64_t sub_100309338(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100309398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100309400(uint64_t result, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_100017D5C(result, a2);
  }

  return result;
}

uint64_t sub_100309418(uint64_t a1)
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

uint64_t sub_100309440(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 16))
  {
    return (*a1 + 11);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030949C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((14 - a2) >> 2) | (4 * (14 - a2))) << 60;
    }
  }

  return result;
}

void *sub_1003094F0(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WildModeAssociationRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WildModeAssociationRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1003096B0(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1003099C0(319, &qword_1016B1C20, &type metadata accessor for UUID, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MACAddress();
      if (v3 <= 0x3F)
      {
        sub_1003099C0(319, &qword_10169D5C0, type metadata accessor for WildModeTrackingLocation, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Date();
          if (v5 <= 0x3F)
          {
            sub_1003099C0(319, &qword_1016BA040, &type metadata accessor for Date, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1002359B8(319, &qword_10169D5C8, &type metadata for MessagingDestination);
              if (v7 <= 0x3F)
              {
                sub_1002359B8(319, &qword_10169D5D0, &type metadata for Type18Status.DeviceType);
                if (v8 <= 0x3F)
                {
                  sub_1003099C0(319, &unk_1016C10F0, type metadata accessor for AccessoryMetadata, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    sub_1003099C0(319, &qword_10169AC10, type metadata accessor for AccessoryProductInfo, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
                    {
                      sub_1002359B8(319, &qword_10169D5D8, &type metadata for WildModeObservationState);
                      if (v11 <= 0x3F)
                      {
                        sub_100309A24(319);
                        if (v12 <= 0x3F)
                        {
                          sub_1002359B8(319, &qword_10169D5F0, &type metadata for Bool);
                          if (v13 <= 0x3F)
                          {
                            sub_1002359B8(319, &qword_10169C548, &type metadata for UInt8);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
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
        }
      }
    }
  }
}

void sub_1003099C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100309A24(uint64_t a1)
{
  if (!qword_10169D5E0)
  {
    type metadata accessor for Date();
    sub_100309A90();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_10169D5E0);
    }
  }
}

unint64_t sub_100309A90()
{
  result = qword_10169D5E8;
  if (!qword_10169D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D5E8);
  }

  return result;
}

unint64_t sub_100309B58()
{
  result = qword_10169D708;
  if (!qword_10169D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D708);
  }

  return result;
}

unint64_t sub_100309BB0()
{
  result = qword_10169D710;
  if (!qword_10169D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D710);
  }

  return result;
}

unint64_t sub_100309C08()
{
  result = qword_10169D718;
  if (!qword_10169D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D718);
  }

  return result;
}

unint64_t sub_100309C60()
{
  result = qword_10169D720;
  if (!qword_10169D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D720);
  }

  return result;
}

unint64_t sub_100309CB8()
{
  result = qword_10169D728;
  if (!qword_10169D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D728);
  }

  return result;
}

unint64_t sub_100309D58()
{
  result = qword_10169D738;
  if (!qword_10169D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D738);
  }

  return result;
}

unint64_t sub_100309DB0()
{
  result = qword_10169D740;
  if (!qword_10169D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D740);
  }

  return result;
}

unint64_t sub_100309E04(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_100309E14(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101608750, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100309E60(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100309EB4()
{
  result = qword_10169D748;
  if (!qword_10169D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D748);
  }

  return result;
}

unint64_t sub_100309F08()
{
  result = qword_10169D758;
  if (!qword_10169D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D758);
  }

  return result;
}

unint64_t sub_100309F5C()
{
  result = qword_10169D760;
  if (!qword_10169D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D760);
  }

  return result;
}

unint64_t sub_100309FB0()
{
  result = qword_10169D768;
  if (!qword_10169D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D768);
  }

  return result;
}

unint64_t sub_10030A018()
{
  result = qword_10169D778;
  if (!qword_10169D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D778);
  }

  return result;
}

unint64_t sub_10030A070()
{
  result = qword_10169D780;
  if (!qword_10169D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D780);
  }

  return result;
}

unint64_t sub_10030A0C8()
{
  result = qword_10169D788;
  if (!qword_10169D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D788);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AdvInfo(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AdvInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[5])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AdvInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_10030A1F8()
{
  result = qword_10169D790;
  if (!qword_10169D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D790);
  }

  return result;
}

unint64_t sub_10030A24C(void *a1, uint64_t a2)
{
  v3 = a2;
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  if (v3 == 2 || (v3 & 0x10000) != 0)
  {
    sub_10015049C(v5, v6);
    sub_1000198E8();
LABEL_8:
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    if (!v2)
    {
      sub_10015049C(v5, v6);
      sub_1000198E8();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      sub_10015049C(v5, v6);
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    }

    return sub_100007BAC(v5);
  }

  sub_10015049C(v5, v6);
  sub_1000198E8();
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (v2)
  {
    return sub_100007BAC(v5);
  }

  result = Bool.intValue.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    sub_10015049C(v5, v6);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10030A440(void *a1, unint64_t a2)
{
  v3 = BYTE3(a2);
  v5 = sub_1000BC4D4(&qword_10169D7B0, &qword_10139BAC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_10030B354();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[12] = v3;
    v10[11] = 2;
    sub_10028E9F4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[10] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10030A648()
{
  v1 = 0x656E774F7261656ELL;
  v2 = 0x79654B6172747865;
  if (*v0 != 2)
  {
    v2 = 1953393000;
  }

  if (*v0)
  {
    v1 = 0x6465767265736572;
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

uint64_t sub_10030A6C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10030AFB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10030A6F0(uint64_t a1)
{
  v2 = sub_10030B354();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030A72C(uint64_t a1)
{
  v2 = sub_10030B354();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030A7EC@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result) & 1;
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = BYTE4(result);
  }

  return result;
}

BOOL sub_10030A904(uint64_t a1, uint64_t a2)
{
  if (a1 == 2)
  {
    if (a2 != 2)
    {
      return 0;
    }
  }

  else if (a2 == 2 || ((a2 ^ a1) & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 0x10000) != 0)
  {
    if ((a2 & 0x10000) == 0)
    {
      return 0;
    }
  }

  else if ((a2 & 0x10000) != 0 || BYTE1(a1) != BYTE1(a2))
  {
    return 0;
  }

  if (BYTE3(a1) != BYTE3(a2))
  {
    return 0;
  }

  return BYTE4(a1) == BYTE4(a2);
}

int64_t sub_10030A98C(int64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(result + 16) == *(result + 24))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!v2)
    {
      if ((a2 & 0xFF000000000000) == 0 || BYTE6(a2) > 4uLL)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (result == result >> 32)
    {
      goto LABEL_25;
    }
  }

  if (v2 == 2)
  {
    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 > 4)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_30;
  }

  if (HIDWORD(result) - result > 4)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      v7 = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v8 = v7;
        if (v7 == 2)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }

      goto LABEL_31;
    }

    v8 = BYTE6(a2);
    if (BYTE6(a2) == 2)
    {
LABEL_27:
      v13 = 0;
      v12 = 1;
      goto LABEL_28;
    }

LABEL_23:
    if (v8 == 3)
    {
      v11 = Data._Representation.subscript.getter();
      v12 = 0;
      v13 = (Data._Representation.subscript.getter() & 0xFE) << 8;
      v8 = v11 & 1;
LABEL_28:
      v14 = Data._Representation.subscript.getter();
      return v8 | v13 | (v14 << 24) | (Data._Representation.subscript.getter() << 32) | (v12 << 16);
    }

LABEL_25:
    sub_10030AF5C();
    swift_allocError();
    return swift_willThrow();
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v8 = v9 - v10;
  if (!__OFSUB__(v9, v10))
  {
    if (v8 == 2)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_10030AB94(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v44, v45);
  v3 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v5 = v3;
    v6 = v4;
    sub_1000E0A3C();
    DataProtocol.intValue.getter();
    sub_10015049C(v44, v45);
    *&v43 = v5;
    *(&v43 + 1) = v6;
    v41 = &type metadata for Data;
    v42 = &protocol witness table for Data;
    *&v40 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    *(&v40 + 1) = v7;
    v8 = v40;
    v9 = v7;
    v10 = sub_1000035D0(&v40, &type metadata for Data);
    v11 = *v10;
    v12 = v10[1];
    sub_100017D5C(v5, v6);
    v37 = v9;
    sub_100017D5C(v8, v9);
    sub_100017DB0(v11, v12, &v43);
    sub_100007BAC(&v40);
    v41 = &type metadata for Data;
    v42 = &protocol witness table for Data;
    v40 = v43;
    v13 = sub_1000035D0(&v40, &type metadata for Data);
    v14 = *v13;
    v15 = v13[1];
    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v16 != 2)
      {
        memset(v38, 0, 14);
        v18 = v38;
        v17 = v38;
        goto LABEL_25;
      }

      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      v21 = __DataStorage._bytes.getter();
      if (v21)
      {
        v22 = __DataStorage._offset.getter();
        if (__OFSUB__(v20, v22))
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v21 += v20 - v22;
      }

      v23 = __OFSUB__(v19, v20);
      v24 = v19 - v20;
      if (!v23)
      {
        v25 = __DataStorage._length.getter();
        if (v25 >= v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = v25;
        }

LABEL_20:
        v32 = (v26 + v21);
        if (v21)
        {
          v17 = v32;
        }

        else
        {
          v17 = 0;
        }

        v18 = v21;
        goto LABEL_25;
      }
    }

    else
    {
      if (!v16)
      {
        v38[0] = *v13;
        LOWORD(v38[1]) = v15;
        BYTE2(v38[1]) = BYTE2(v15);
        BYTE3(v38[1]) = BYTE3(v15);
        BYTE4(v38[1]) = BYTE4(v15);
        BYTE5(v38[1]) = BYTE5(v15);
        v17 = v38 + BYTE6(v15);
        v18 = v38;
LABEL_25:
        sub_100267F80(v18, v17, v39);
        v33 = v39[0];
        v34 = v39[1];
        sub_100007BAC(&v40);
        v35 = sub_10030A98C(v33, v34);
        sub_100016590(v33, v34);
        sub_100016590(v8, v37);
        sub_100016590(v5, v6);
        sub_100007BAC(v44);
        sub_100007BAC(a1);
        LOBYTE(v44[0]) = BYTE2(v35) & 1;
        return v35 & 0xFFFF00FFFFLL | ((BYTE2(v35) & 1) << 16);
      }

      v27 = v14;
      v28 = v14 >> 32;
      v29 = v28 - v27;
      if (v28 >= v27)
      {
        v21 = __DataStorage._bytes.getter();
        if (!v21)
        {
          goto LABEL_17;
        }

        v30 = __DataStorage._offset.getter();
        if (!__OFSUB__(v27, v30))
        {
          v21 += v27 - v30;
LABEL_17:
          v31 = __DataStorage._length.getter();
          if (v31 >= v29)
          {
            v26 = v29;
          }

          else
          {
            v26 = v31;
          }

          goto LABEL_20;
        }

LABEL_30:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_100007BAC(v44);
  return sub_100007BAC(a1);
}

unint64_t sub_10030AF5C()
{
  result = qword_10169D798;
  if (!qword_10169D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D798);
  }

  return result;
}

uint64_t sub_10030AFB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E774F7261656ELL && a2 == 0xE900000000000072;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465767265736572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B6172747865 && a2 == 0xEC00000073746942 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953393000 && a2 == 0xE400000000000000)
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

unint64_t sub_10030B120(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169D7A0, &qword_10139BAC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  sub_1000035D0(a1, a1[3]);
  sub_10030B354();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100007BAC(a1);
  }

  v17 = 0;
  v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = 1;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = 2;
  sub_10028E8A4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v15;
  v13 = 3;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100007BAC(a1);
  return (v12 << 24) | (v9 << 32) | ((HIBYTE(v8) & 1) << 16) | (v8 << 8) | v7;
}

unint64_t sub_10030B354()
{
  result = qword_10169D7A8;
  if (!qword_10169D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7A8);
  }

  return result;
}

unint64_t sub_10030B3BC()
{
  result = qword_10169D7B8;
  if (!qword_10169D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7B8);
  }

  return result;
}

unint64_t sub_10030B414()
{
  result = qword_10169D7C0;
  if (!qword_10169D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7C0);
  }

  return result;
}

unint64_t sub_10030B46C()
{
  result = qword_10169D7C8;
  if (!qword_10169D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7C8);
  }

  return result;
}

uint64_t sub_10030B570@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10030B64C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10030B64C(uint64_t result)
{
  if (result >= 5u)
  {
    return 5;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10030B660(double a1)
{
  if (a1 >= 0.0 && a1 < 65.0)
  {
    return 3;
  }

  if (a1 >= 65.0 && a1 < 400.0)
  {
    return 2;
  }

  if (a1 <= 9.22337204e18)
  {
    return a1 >= 400.0;
  }

  return 0;
}

unint64_t sub_10030B6E4()
{
  result = qword_10169D7D0;
  if (!qword_10169D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7D0);
  }

  return result;
}

unint64_t sub_10030B73C()
{
  result = qword_10169D7D8;
  if (!qword_10169D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7D8);
  }

  return result;
}

unint64_t sub_10030B790()
{
  result = qword_10169D7E0;
  if (!qword_10169D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7E0);
  }

  return result;
}

unint64_t sub_10030B7E4()
{
  result = qword_10169D7E8;
  if (!qword_10169D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7E8);
  }

  return result;
}

uint64_t type metadata accessor for PencilUnpairEndPoint(uint64_t a1)
{
  result = qword_10169D848;
  if (!qword_10169D848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10030B8BC()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v0 = URLComponents.path.modify();
  v1._countAndFlagsBits = 0xD000000000000015;
  v1._object = 0x8000000101350D70;
  String.append(_:)(v1);
  v0(&v7, 0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C218;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [v2 stringForKey:v5];

    if (v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

unint64_t sub_10030BAAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_u64(v5, v6[-1]), v6[-1], v5);
        v8 = vbslq_s8(vcgtq_u64(v8, *v6), *v6, v8);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_u64(v8, v5), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_u64(v10, v9.u64[0]), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < v2)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_10030BB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = __chkstk_darwin(*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_100249260(&qword_1016C9070, &protocol conformance descriptor for Date);
        v20 = dispatch thunk of static Comparable.< infix(_:_:)();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_10030BDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_101697DE0, &qword_101393190);
  v5 = __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v39 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v40 = a2;
    v43 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v44 = v8;
    result = sub_10030E62C(v43, &v39 - v9);
    if (v11 == 1)
    {
LABEL_3:
      v13 = v40;
      sub_10030E69C(v10, v40);
      return (*(v44 + 56))(v13, 0, 1, v4);
    }

    v15 = 1;
    v41 = v11;
    v42 = v10;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      sub_10030E62C(v43 + *(v44 + 72) * v15, v7);
      v17 = &v7[*(v4 + 40)];
      v19 = *(v17 + 3);
      v18 = *(v17 + 4);
      sub_1000035D0(v17, v19);
      v20 = (*(v18 + 16))(v19, v18);
      v21 = v10;
      v22 = v4;
      v23 = &v21[*(v4 + 40)];
      v24 = *(v23 + 3);
      v25 = *(v23 + 4);
      sub_1000035D0(v23, v24);
      if (v20 == (*(v25 + 16))(v24, v25) || (v26 = *(v17 + 3), v27 = *(v17 + 4), sub_1000035D0(v17, v26), v28 = (*(v27 + 8))(v26, v27), v29 = *(v23 + 3), v30 = *(v23 + 4), sub_1000035D0(v23, v29), v28 == (*(v30 + 8))(v29, v30)))
      {
        v4 = v22;
        v10 = v42;
        v31 = static Date.> infix(_:_:)();
        v32 = v41;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v33 = *(v17 + 3);
        v34 = *(v17 + 4);
        sub_1000035D0(v17, v33);
        v35 = (*(v34 + 8))(v33, v34);
        v36 = *(v23 + 3);
        v37 = *(v23 + 4);
        sub_1000035D0(v23, v36);
        v38 = (*(v37 + 8))(v36, v37);
        v4 = v22;
        v32 = v41;
        v10 = v42;
        if (v35 < v38)
        {
LABEL_16:
          sub_10000B3A8(v10, &qword_101697DE0, &qword_101393190);
          result = sub_10030E69C(v7, v10);
          goto LABEL_9;
        }
      }

      result = sub_10000B3A8(v7, &qword_101697DE0, &qword_101393190);
LABEL_9:
      ++v15;
      if (v16 == v32)
      {
        goto LABEL_3;
      }
    }
  }

  v14 = *(v8 + 56);

  return v14(a2, 1, 1, v4);
}

uint64_t sub_10030C19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BeaconEstimatedLocation(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v18 = v8;
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    result = sub_100034D9C(v12, &v17 - v9, type metadata accessor for BeaconEstimatedLocation);
    if (v11 == 1)
    {
LABEL_3:
      sub_1000292E8(v10, a2, type metadata accessor for BeaconEstimatedLocation);
      return (*(v18 + 56))(a2, 0, 1, v4);
    }

    else
    {
      v15 = 1;
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        sub_100034D9C(v12 + *(v18 + 72) * v15, v7, type metadata accessor for BeaconEstimatedLocation);
        if (static Date.< infix(_:_:)())
        {
          sub_10030E70C(v10, type metadata accessor for BeaconEstimatedLocation);
          result = sub_1000292E8(v7, v10, type metadata accessor for BeaconEstimatedLocation);
        }

        else
        {
          result = sub_10030E70C(v7, type metadata accessor for BeaconEstimatedLocation);
        }

        ++v15;
        if (v16 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v14 = *(v8 + 56);

    return v14(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_10030C400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BeaconObservation(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v18 = v8;
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    result = sub_100034D9C(v12, &v17 - v9, type metadata accessor for BeaconObservation);
    if (v11 == 1)
    {
LABEL_3:
      sub_1000292E8(v10, a2, type metadata accessor for BeaconObservation);
      return (*(v18 + 56))(a2, 0, 1, v4);
    }

    else
    {
      v15 = 1;
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        sub_100034D9C(v12 + *(v18 + 72) * v15, v7, type metadata accessor for BeaconObservation);
        if (static Date.< infix(_:_:)())
        {
          sub_10030E70C(v10, type metadata accessor for BeaconObservation);
          result = sub_1000292E8(v7, v10, type metadata accessor for BeaconObservation);
        }

        else
        {
          result = sub_10030E70C(v7, type metadata accessor for BeaconObservation);
        }

        ++v15;
        if (v16 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v14 = *(v8 + 56);

    return v14(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_10030C694(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_10030E450(sub_10030E76C);
  a3();
}

uint64_t sub_10030C704@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v85 = a2;
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v76 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v83 = v76 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = v76 - v16;
  v18 = __chkstk_darwin(v15);
  v82 = v76 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = v76 - v21;
  v23 = __chkstk_darwin(v20);
  v81 = v76 - v24;
  __chkstk_darwin(v23);
  v26 = v76 - v25;
  sub_10030E450(sub_10030E76C);
  sub_10030BB60(v27, v7);

  v28 = *(v9 + 48);
  if (v28(v7, 1, v8) == 1)
  {
    v5 = v7;
LABEL_5:
    sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
    v31 = v83;
    Date.init()();
    if (qword_101694420 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000076D4(v32, qword_10177A470);
    (*(v9 + 16))(v12, v31, v8);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v12;
      v36 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v36 = 136446466;
      v37 = 0x5779726574746162;
      v38 = 0xEB00000000694669;
      if (v84 != 2)
      {
        v37 = 0x4379726574746162;
        v38 = 0xEB000000006C6C65;
      }

      v39 = 0x6C65437265776F70;
      v40 = 0xE90000000000006CLL;
      if (!v84)
      {
        v39 = 0x4669577265776F70;
        v40 = 0xE900000000000069;
      }

      if (v84 <= 1u)
      {
        v41 = v39;
      }

      else
      {
        v41 = v37;
      }

      if (v84 <= 1u)
      {
        v42 = v40;
      }

      else
      {
        v42 = v38;
      }

      v43 = sub_1000136BC(v41, v42, &v86);

      *(v36 + 4) = v43;
      *(v36 + 12) = 2082;
      sub_100249260(&qword_1016969A0, &protocol conformance descriptor for Date);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v9 + 8))(v35, v8);
      v47 = sub_1000136BC(v44, v46, &v86);

      *(v36 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v33, v34, "nextFinderPublishDate: powerMode: %{public}s, now: %{public}s (first publish).", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    return (*(v9 + 32))(v85, v31, v8);
  }

  v79 = v12;
  v80 = v17;
  v29 = *(v9 + 32);
  v29(v26, v7, v8);
  sub_10030E450(sub_10030E76C);
  sub_1012BAD7C(v30, v5);

  if (v28(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v26, v8);
    v12 = v79;
    goto LABEL_5;
  }

  v49 = v81;
  v83 = v29;
  v29(v81, v5, v8);
  sub_10030DFC4(v84);
  if (v50 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = v50;
  }

  Date.addingTimeInterval(_:)();
  Date.timeIntervalSince(_:)();
  v53 = v52;
  v79 = *(v9 + 8);
  (v79)(v22, v8);
  v77 = v51;
  v54 = v53 / v51;
  v55 = v82;
  Date.addingTimeInterval(_:)();
  v78 = v26;
  if (qword_101694420 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_1000076D4(v56, qword_10177A470);
  v57 = v80;
  (*(v9 + 16))(v80, v55, v8);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v76[1] = v9 + 32;
    v60 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v60 = 136447234;
    v61 = 0x5779726574746162;
    v62 = 0xEB00000000694669;
    if (v84 != 2)
    {
      v61 = 0x4379726574746162;
      v62 = 0xEB000000006C6C65;
    }

    v63 = 0x6C65437265776F70;
    v64 = 0xE90000000000006CLL;
    if (!v84)
    {
      v63 = 0x4669577265776F70;
      v64 = 0xE900000000000069;
    }

    if (v84 <= 1u)
    {
      v65 = v63;
    }

    else
    {
      v65 = v61;
    }

    if (v84 <= 1u)
    {
      v66 = v64;
    }

    else
    {
      v66 = v62;
    }

    v67 = sub_1000136BC(v65, v66, &v86);

    *(v60 + 4) = v67;
    *(v60 + 12) = 2082;
    sub_100249260(&qword_1016969A0, &protocol conformance descriptor for Date);
    v68 = v80;
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    v72 = v68;
    v73 = v79;
    (v79)(v72, v8);
    v74 = sub_1000136BC(v69, v71, &v86);

    *(v60 + 14) = v74;
    *(v60 + 22) = 2048;
    *(v60 + 24) = v53;
    *(v60 + 32) = 2048;
    *(v60 + 34) = v77;
    *(v60 + 42) = 2048;
    *(v60 + 44) = v54;
    _os_log_impl(&_mh_execute_header, v58, v59, "nextFinderPublishDate: powerMode, %{public}s, next publish date: %{public}s, remaining time: %f, available publish count: %ld, interval: %f.", v60, 0x34u);
    swift_arrayDestroy();

    (v73)(v49, v8);
    (v73)(v78, v8);
    v55 = v82;
  }

  else
  {

    v75 = v79;
    (v79)(v57, v8);
    (v75)(v49, v8);
    (v75)(v78, v8);
  }

  return (v83)(v85, v55, v8);
}

uint64_t sub_10030D038@<X0>(unsigned int a1@<W0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a1;
  v91 = a4;
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v82 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v92 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v89 = &v82 - v17;
  v18 = __chkstk_darwin(v16);
  v85 = &v82 - v19;
  v20 = __chkstk_darwin(v18);
  v86 = &v82 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v82 - v23;
  v25 = __chkstk_darwin(v22);
  v87 = &v82 - v26;
  __chkstk_darwin(v25);
  v28 = &v82 - v27;
  v29 = *(a3 + 24);
  v88 = a2;
  v29(a2, a3);
  v30 = *(v13 + 48);
  if (v30(v11, 1, v12) == 1)
  {
    v9 = v11;
LABEL_5:
    v33 = v12;
    sub_10000B3A8(v9, &unk_101696900, &unk_10138B1E0);
    v34 = v89;
    Date.init()();
    v35 = v92;
    if (qword_101694420 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177A470);
    (*(v13 + 16))(v35, v34, v33);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v39 = 136446466;
      v40 = 0x5779726574746162;
      v41 = 0xEB00000000694669;
      if (v90 != 2)
      {
        v40 = 0x4379726574746162;
        v41 = 0xEB000000006C6C65;
      }

      v42 = 0x6C65437265776F70;
      v43 = 0xE90000000000006CLL;
      if (!v90)
      {
        v42 = 0x4669577265776F70;
        v43 = 0xE900000000000069;
      }

      if (v90 <= 1u)
      {
        v44 = v42;
      }

      else
      {
        v44 = v40;
      }

      if (v90 <= 1u)
      {
        v45 = v43;
      }

      else
      {
        v45 = v41;
      }

      v46 = sub_1000136BC(v44, v45, &v93);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      sub_100249260(&qword_1016969A0, &protocol conformance descriptor for Date);
      v47 = v92;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v13 + 8))(v47, v33);
      v51 = sub_1000136BC(v48, v50, &v93);

      *(v39 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v37, v38, "nextFinderPublishDate: powerMode: %{public}s, now: %{public}s (first publish).", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v35, v33);
    }

    return (*(v13 + 32))(v91, v34, v33);
  }

  v84 = v13;
  v32 = *(v13 + 32);
  v31 = (v13 + 32);
  v83 = v32;
  v32(v28, v11, v12);
  (*(a3 + 8))(v88, a3);
  if (v30(v9, 1, v12) == 1)
  {
    v13 = v84;
    (*(v84 + 8))(v28, v12);
    goto LABEL_5;
  }

  v89 = v31;
  v53 = v83;
  v83(v87, v9, v12);
  v54 = (*(a3 + 72))(v90, v88, a3);
  if (v54 <= 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = v54;
  }

  v92 = v28;
  Date.addingTimeInterval(_:)();
  Date.timeIntervalSince(_:)();
  v57 = v56;
  v58 = v84;
  v88 = *(v84 + 8);
  v88(v24, v12);
  v82 = v55;
  v59 = v57 / v55;
  v60 = v86;
  Date.addingTimeInterval(_:)();
  v61 = v12;
  if (qword_101694420 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_1000076D4(v62, qword_10177A470);
  v63 = *(v58 + 16);
  v64 = v85;
  v63(v85, v60, v12);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v67 = 136447234;
    v68 = 0x5779726574746162;
    v69 = 0xEB00000000694669;
    if (v90 != 2)
    {
      v68 = 0x4379726574746162;
      v69 = 0xEB000000006C6C65;
    }

    v70 = 0x6C65437265776F70;
    v71 = 0xE90000000000006CLL;
    if (!v90)
    {
      v70 = 0x4669577265776F70;
      v71 = 0xE900000000000069;
    }

    if (v90 <= 1u)
    {
      v72 = v70;
    }

    else
    {
      v72 = v68;
    }

    if (v90 <= 1u)
    {
      v73 = v71;
    }

    else
    {
      v73 = v69;
    }

    v74 = sub_1000136BC(v72, v73, &v93);

    *(v67 + 4) = v74;
    *(v67 + 12) = 2082;
    sub_100249260(&qword_1016969A0, &protocol conformance descriptor for Date);
    v75 = v85;
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = v77;
    v79 = v88;
    v88(v75, v61);
    v80 = sub_1000136BC(v76, v78, &v93);

    *(v67 + 14) = v80;
    *(v67 + 22) = 2048;
    *(v67 + 24) = v57;
    *(v67 + 32) = 2048;
    *(v67 + 34) = v82;
    *(v67 + 42) = 2048;
    *(v67 + 44) = v59;
    _os_log_impl(&_mh_execute_header, v65, v66, "nextFinderPublishDate: powerMode, %{public}s, next publish date: %{public}s, remaining time: %f, available publish count: %ld, interval: %f.", v67, 0x34u);
    swift_arrayDestroy();

    v79(v87, v61);
    v79(v92, v61);
    return v83(v91, v86, v61);
  }

  else
  {

    v81 = v88;
    v88(v64, v12);
    v81(v87, v12);
    v81(v92, v12);
    return v53(v91, v60, v12);
  }
}

uint64_t sub_10030D994@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

double sub_10030DB90(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      sub_1010743A0(v4);
    }

    else
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      sub_1010743AC(v4);
    }
  }

  else if (a1)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074394(v4);
  }

  else
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074388(v4);
  }

  v2 = v1;

  return v2;
}

void sub_10030DD9C(unsigned __int8 a1)
{
  v2 = sub_100052278();
  v3 = 0.0;
  v4 = 0.0;
  if (*(v2 + 16))
  {
    v5 = sub_100771D58(0x4669577265776F70, 0xE900000000000069);
    if (v6)
    {
      v4 = *(*(*(v2 + 56) + 8 * v5) + 16);
    }
  }

  v7 = v4 / sub_10030DB90(0);
  if (*(v2 + 16))
  {
    v8 = sub_100771D58(0x6C65437265776F70, 0xE90000000000006CLL);
    if (v9)
    {
      v3 = *(*(*(v2 + 56) + 8 * v8) + 16);
    }
  }

  v10 = v7 + v3 / sub_10030DB90(1u);
  v11 = 0.0;
  if (*(v2 + 16))
  {
    v12 = sub_100771D58(0x5779726574746162, 0xEB00000000694669);
    if (v13)
    {
      v11 = *(*(*(v2 + 56) + 8 * v12) + 16);
    }
  }

  v14 = v10 + v11 / sub_10030DB90(2u);
  if (*(v2 + 16) && (v15 = sub_100771D58(0x4379726574746162, 0xEB000000006C6C65), (v16 & 1) != 0))
  {
    v17 = *(*(v2 + 56) + 8 * v15);

    v18 = *(v17 + 16);

    v19 = v18;
  }

  else
  {

    v19 = 0.0;
  }

  v20 = 24.0 - (v14 + v19 / sub_10030DB90(3u));
  v21 = sub_10030DB90(a1) * v20;
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
  }
}

void sub_10030DFC4(unsigned __int8 a1)
{
  v2 = sub_100052278();
  v3 = 0.0;
  if (*(v2 + 16))
  {
    v4 = sub_100771D58(0x4669577265776F70, 0xE900000000000069);
    if (v5)
    {
      v3 = *(*(*(v2 + 56) + 8 * v4) + 16);
    }
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074388(v29);
  v7 = v6;

  v8 = 0.0;
  v9 = 0.0;
  v10 = v3 / v7;
  if (*(v2 + 16))
  {
    v11 = sub_100771D58(0x6C65437265776F70, 0xE90000000000006CLL);
    if (v12)
    {
      v9 = *(*(*(v2 + 56) + 8 * v11) + 16);
    }
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074394(v29);
  v14 = v13;

  v15 = v10 + v9 / v14;
  if (*(v2 + 16))
  {
    v16 = sub_100771D58(0x5779726574746162, 0xEB00000000694669);
    if (v17)
    {
      v8 = *(*(*(v2 + 56) + 8 * v16) + 16);
    }
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_1010743A0(v29);
  v19 = v18;

  v20 = v15 + v8 / v19;
  if (*(v2 + 16) && (v21 = sub_100771D58(0x4379726574746162, 0xEB000000006C6C65), (v22 & 1) != 0))
  {
    v23 = *(*(v2 + 56) + 8 * v21);

    v24 = *(v23 + 16);

    v25 = v24;
  }

  else
  {

    v25 = 0.0;
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_1010743AC(v29);
  v27 = v26;

  v28 = sub_10030DB90(a1) * (24.0 - (v20 + v25 / v27));
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
  }
}

unint64_t sub_10030E308()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
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
  if (*(&v6 + 1))
  {
    sub_1000BC4D4(&qword_10169D880, qword_10139BF48);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10000B3A8(v7, &unk_1016A0B10, &qword_10139BF40);
  }

  return sub_100907BD8(_swiftEmptyArrayStorage);
}

void sub_10030E450(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = v1;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v6)
  {
LABEL_10:
    v11 = *(*(v2 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
    v12 = *(v11 + 16);
    v13 = v9[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_24;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v14 > v9[3] >> 1)
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v9 = sub_100A5B6F8(isUniquelyReferenced_nonNull_native, v16, 1, v9);
    }

    v6 &= v6 - 1;
    if (*(v11 + 16))
    {
      v17 = (v9[3] >> 1) - v9[2];
      type metadata accessor for Date();
      if (v17 < v12)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v18 = v9[2];
        v19 = __OFADD__(v18, v12);
        v20 = v18 + v12;
        if (v19)
        {
          goto LABEL_27;
        }

        v9[2] = v20;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_10030E62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697DE0, &qword_101393190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030E69C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697DE0, &qword_101393190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030E70C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

ValueMetadata *sub_10030E774(char a1)
{
  switch(a1)
  {
    case 7:
      v1 = &type metadata for AccessorySetMaxConnectionsPayload;
      sub_100310214();
      break;
    case 9:
      v1 = &type metadata for AccessoryKeyrollIndicationPayload;
      sub_10030FF20();
      break;
    case 10:
      v1 = &type metadata for AccessoryCommandResponsePayload;
      sub_1003101C0();
      break;
    case 11:
      v1 = &type metadata for AccessoryMultistatusResponsePayload;
      sub_10030FECC();
      break;
    case 13:
      v1 = &type metadata for AccessoryLatchSeparatedKeyResponsePayload;
      sub_10030FFC8();
      break;
    case 14:
      v1 = &type metadata for AccessoryStartAggressiveAdvertisingPayload;
      sub_10031016C();
      break;
    case 17:
      v1 = &type metadata for AccessoryTXPowerResponsePayload;
      sub_100310118();
      break;
    case 20:
      v1 = &type metadata for AccessoryFirmwareVersionResponsePayload;
      sub_1003100C4();
      break;
    case 21:
      v1 = &type metadata for AccessoryKeyAlignmentConfigPayload;
      sub_100310070();
      break;
    case 22:
      v1 = &type metadata for AccessoryKeyAlignmentConfigResponsePayload;
      sub_10031001C();
      break;
    default:
      v1 = &type metadata for AccessoryGenericPayload;
      sub_10030FF74();
      break;
  }

  return v1;
}

unint64_t sub_10030E868(char a1)
{
  result = 0x7453646E756F732ELL;
  switch(a1)
  {
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x726961706E752ELL;
      break;
    case 5:
    case 20:
      result = 0xD000000000000018;
      break;
    case 6:
    case 11:
      result = 0xD000000000000014;
      break;
    case 7:
    case 9:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x4354557465732ELL;
      break;
    case 10:
    case 18:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6F43646E756F732ELL;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = 0xD00000000000001ALL;
      break;
    case 16:
      result = 0x585468637465662ELL;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 19:
    case 21:
      result = 0xD000000000000013;
      break;
    case 22:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10030EAD0()
{
  v1 = v0[1];
  v2 = v0[4];
  v3 = (v2 >> 58) & 0xC | (v1 >> 60) & 3;
  if (v3 <= 4)
  {
    if (v3 == 3)
    {
      v6 = 17;
    }

    else
    {
      v6 = 20;
    }

    if (v3 == 2)
    {
      v7 = 14;
    }

    else
    {
      v7 = v6;
    }

    if (v3)
    {
      v8 = 10;
    }

    else
    {
      v8 = 7;
    }

    if (v3 <= 1)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else if (v3 > 7)
  {
    if (v3 == 8)
    {
      return 11;
    }

    else if (v3 == 9)
    {
      return 13;
    }

    else
    {
      v9 = *v0;
      v10 = v0[5];
      if (v10 || v2 != 0x2000000000000000 || v1 != 0x2000000000000000 || v0[2] | v0[3] | v9)
      {
        if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 1 && *(v0 + 1) == 0)
        {
          return 1;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 2 && *(v0 + 1) == 0)
        {
          return 4;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 3 && *(v0 + 1) == 0)
        {
          return 12;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 4 && *(v0 + 1) == 0)
        {
          return 15;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 5 && *(v0 + 1) == 0)
        {
          return 16;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 6 && *(v0 + 1) == 0)
        {
          return 18;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 7 && *(v0 + 1) == 0)
        {
          return 19;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 8 && *(v0 + 1) == 0)
        {
          return 2;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 9 && *(v0 + 1) == 0)
        {
          return 3;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 10 && *(v0 + 1) == 0)
        {
          return 5;
        }

        else if (*(v0 + 1) == 0 && v9 == 11 && v1 == 0x2000000000000000 && v2 == 0x2000000000000000 && v10 == 0)
        {
          return 6;
        }

        else
        {
          return 8;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    if (v3 == 6)
    {
      v4 = 22;
    }

    else
    {
      v4 = 9;
    }

    if (v3 == 5)
    {
      return 21;
    }

    else
    {
      return v4;
    }
  }
}

unint64_t sub_10030ED88@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = (v7 >> 58) & 0xC | (v3 >> 60) & 3;
  if (v8 <= 4)
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        v18 = v3 & 0xCFFFFFFFFFFFFFFFLL;
        *(a1 + 24) = &type metadata for AccessoryCommandResponsePayload;
        *(a1 + 32) = sub_1003101C0();
        v19 = swift_allocObject();
        *a1 = v19;
        v19[2] = v4;
        v19[3] = v18;
        v19[4] = v6;
        v19[5] = v5;
        sub_100017D5C(v4, v18);
        v16 = v6;
        v17 = v5;
        goto LABEL_24;
      }

      *(a1 + 24) = &type metadata for AccessorySetMaxConnectionsPayload;
      result = sub_100310214();
    }

    else
    {
      if (v8 == 2)
      {
        *(a1 + 24) = &type metadata for AccessoryStartAggressiveAdvertisingPayload;
        result = sub_10031016C();
        *(a1 + 32) = result;
        *a1 = v4;
        return result;
      }

      if (v8 != 3)
      {
        *(a1 + 24) = &type metadata for AccessoryFirmwareVersionResponsePayload;
        result = sub_1003100C4();
        *(a1 + 32) = result;
        *a1 = v4;
        *(a1 + 2) = BYTE2(v4);
        *(a1 + 3) = BYTE3(v4);
        return result;
      }

      *(a1 + 24) = &type metadata for AccessoryTXPowerResponsePayload;
      result = sub_100310118();
    }

LABEL_18:
    *(a1 + 32) = result;
    *a1 = v4;
    return result;
  }

  v9 = v1[5];
  if (v8 > 7)
  {
    if (v8 != 8)
    {
      if (v8 != 9)
      {
        *(a1 + 24) = &type metadata for AccessoryGenericPayload;
        result = sub_10030FF74();
        *(a1 + 32) = result;
        return result;
      }

      v10 = v3 & 0xCFFFFFFFFFFFFFFFLL;
      *(a1 + 24) = &type metadata for AccessoryLatchSeparatedKeyResponsePayload;
      v13 = sub_10030FFC8();
      goto LABEL_22;
    }

    *(a1 + 24) = &type metadata for AccessoryMultistatusResponsePayload;
    result = sub_10030FECC();
    goto LABEL_18;
  }

  v10 = v3 & 0xCFFFFFFFFFFFFFFFLL;
  if (v8 != 5)
  {
    if (v8 == 6)
    {
      *(a1 + 24) = &type metadata for AccessoryKeyAlignmentConfigResponsePayload;
      *(a1 + 32) = sub_10031001C();
      v11 = swift_allocObject();
      *a1 = v11;
      *(v11 + 16) = v4;
      *(v11 + 24) = v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v5;
LABEL_23:
      v16 = v4;
      v17 = v10;
      goto LABEL_24;
    }

    *(a1 + 24) = &type metadata for AccessoryKeyrollIndicationPayload;
    v13 = sub_10030FF20();
LABEL_22:
    *(a1 + 32) = v13;
    *a1 = v4;
    *(a1 + 8) = v10;
    goto LABEL_23;
  }

  v14 = v7 & 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 24) = &type metadata for AccessoryKeyAlignmentConfigPayload;
  *(a1 + 32) = sub_100310070();
  v15 = swift_allocObject();
  *a1 = v15;
  v15[2] = v4;
  v15[3] = v10;
  v15[4] = v6;
  v15[5] = v5;
  v15[6] = v14;
  v15[7] = v9;
  sub_100017D5C(v4, v10);
  v16 = v5;
  v17 = v14;
LABEL_24:

  return sub_100017D5C(v16, v17);
}

uint64_t sub_10030F1C0(void *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v7 = sub_10030EAD0();
  LOWORD(v20) = word_10139C4A6[v7];
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v4 + 8))(v6, v3);
  LOWORD(v20) = v16;
  sub_10015049C(v23, v24);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v1)
  {
    switch(v7)
    {
      case 7u:
        sub_10030ED88(&v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        LOBYTE(v16) = v20;
        sub_10015049C(v23, v24);
        sub_10030FE78();
        goto LABEL_27;
      case 9u:
        sub_10030ED88(&v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        v9 = v20;
        v10 = v21;
        v16 = v20;
        *&v17 = v21;
        sub_10015049C(v23, v24);
        sub_10030FE24();
        goto LABEL_21;
      case 0xAu:
        sub_10030ED88(&v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        v8 = v20;
        v9 = *(&v21 + 1);
        v11 = v21;
        v10 = v22;
        v16 = v20;
        v17 = v21;
        v18 = v22;
        sub_10015049C(v23, v24);
        sub_10030FDD0();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        sub_100016590(v8, v11);
        goto LABEL_22;
      case 0xBu:
        sub_10030ED88(&v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        LOBYTE(v16) = v20;
        sub_10015049C(v23, v24);
        sub_10030FD7C();
        goto LABEL_27;
      case 0xDu:
        sub_10030ED88(&v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        v9 = v20;
        v10 = v21;
        v16 = v20;
        *&v17 = v21;
        sub_10015049C(v23, v24);
        sub_10030FD28();
        goto LABEL_21;
      case 0xEu:
        sub_10030ED88(&v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        LODWORD(v16) = v20;
        sub_10015049C(v23, v24);
        sub_10030FCD4();
        goto LABEL_27;
      case 0x11u:
        sub_10030ED88(&v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        LOBYTE(v16) = v20;
        sub_10015049C(v23, v24);
        sub_10030FC80();
        goto LABEL_27;
      case 0x14u:
        sub_10030ED88(&v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        LODWORD(v16) = v20;
        sub_10015049C(v23, v24);
        sub_10030FC2C();
        goto LABEL_27;
      case 0x15u:
        sub_10030ED88(&v20);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        v12 = v16;
        v9 = v18;
        v10 = v19;
        v15 = v17;
        sub_10015049C(v23, v24);
        sub_10030FBD8();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        sub_100016590(v12, v15);
        goto LABEL_22;
      case 0x16u:
        sub_10030ED88(&v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        v9 = v20;
        v10 = v21;
        v16 = v20;
        *&v17 = v21;
        BYTE8(v17) = BYTE8(v21);
        v18 = v22;
        sub_10015049C(v23, v24);
        sub_1002470E0();
LABEL_21:
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
LABEL_22:
        sub_100016590(v9, v10);
        break;
      default:
        sub_10030ED88(&v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_10015049C(v23, v24);
          sub_10030FB84();
LABEL_27:
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        }

        else
        {
LABEL_28:
          sub_10030FB30();
          swift_allocError();
          *v13 = 0;
          swift_willThrow();
        }

        break;
    }
  }

  return sub_100007BAC(v23);
}

double sub_10030F948@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100310BDC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_10030F9A4(__int16 a1)
{
  if ((a1 - 512) > 0x2Cu)
  {
    return 23;
  }

  else
  {
    return byte_10139C4D4[(a1 - 512)];
  }
}

uint64_t sub_10030F9D0(uint64_t a1)
{
  v1 = (*(a1 + 32) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3;
  if (v1 <= 9)
  {
    return v1;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_10030F9FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 6 && *(a1 + 48))
  {
    return (*a1 + 6);
  }

  v3 = ((*(a1 + 32) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3) ^ 0xF;
  if (v3 >= 5)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10030FA58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 5)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 6;
    if (a3 >= 6)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 6)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = (-a2 << 58) & 0x3000000000000000;
      *(result + 40) = 0;
    }
  }

  return result;
}

uint64_t sub_10030FABC(uint64_t result)
{
  v1 = *(result + 32) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 32) = v1;
  return result;
}

void *sub_10030FAD8(void *result, unsigned int a2)
{
  if (a2 < 0xA)
  {
    v2 = result[4] & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 2) & 3) << 60);
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    result[4] = v2;
  }

  else
  {
    *result = a2 - 10;
    result[1] = 0x2000000000000000;
    result[2] = 0;
    result[3] = 0;
    *(result + 2) = xmmword_10139BF70;
  }

  return result;
}

unint64_t sub_10030FB30()
{
  result = qword_10169D888;
  if (!qword_10169D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D888);
  }

  return result;
}

unint64_t sub_10030FB84()
{
  result = qword_10169D890;
  if (!qword_10169D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D890);
  }

  return result;
}

unint64_t sub_10030FBD8()
{
  result = qword_10169D898;
  if (!qword_10169D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D898);
  }

  return result;
}

unint64_t sub_10030FC2C()
{
  result = qword_10169D8A0;
  if (!qword_10169D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8A0);
  }

  return result;
}

unint64_t sub_10030FC80()
{
  result = qword_10169D8A8;
  if (!qword_10169D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8A8);
  }

  return result;
}

unint64_t sub_10030FCD4()
{
  result = qword_10169D8B0;
  if (!qword_10169D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8B0);
  }

  return result;
}

unint64_t sub_10030FD28()
{
  result = qword_10169D8B8;
  if (!qword_10169D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8B8);
  }

  return result;
}

unint64_t sub_10030FD7C()
{
  result = qword_10169D8C0;
  if (!qword_10169D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8C0);
  }

  return result;
}

unint64_t sub_10030FDD0()
{
  result = qword_10169D8C8;
  if (!qword_10169D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8C8);
  }

  return result;
}

unint64_t sub_10030FE24()
{
  result = qword_10169D8D0;
  if (!qword_10169D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8D0);
  }

  return result;
}

unint64_t sub_10030FE78()
{
  result = qword_10169D8D8;
  if (!qword_10169D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8D8);
  }

  return result;
}

unint64_t sub_10030FECC()
{
  result = qword_10169D8E0;
  if (!qword_10169D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8E0);
  }

  return result;
}

unint64_t sub_10030FF20()
{
  result = qword_10169D8E8;
  if (!qword_10169D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8E8);
  }

  return result;
}

unint64_t sub_10030FF74()
{
  result = qword_10169D8F0;
  if (!qword_10169D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8F0);
  }

  return result;
}

unint64_t sub_10030FFC8()
{
  result = qword_10169D8F8;
  if (!qword_10169D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8F8);
  }

  return result;
}

unint64_t sub_10031001C()
{
  result = qword_10169D900;
  if (!qword_10169D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D900);
  }

  return result;
}

unint64_t sub_100310070()
{
  result = qword_10169D908;
  if (!qword_10169D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D908);
  }

  return result;
}

unint64_t sub_1003100C4()
{
  result = qword_10169D910;
  if (!qword_10169D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D910);
  }

  return result;
}

unint64_t sub_100310118()
{
  result = qword_10169D918;
  if (!qword_10169D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D918);
  }

  return result;
}

unint64_t sub_10031016C()
{
  result = qword_10169D920;
  if (!qword_10169D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D920);
  }

  return result;
}

unint64_t sub_1003101C0()
{
  result = qword_10169D928;
  if (!qword_10169D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D928);
  }

  return result;
}

unint64_t sub_100310214()
{
  result = qword_10169D930;
  if (!qword_10169D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D930);
  }

  return result;
}

ValueMetadata *sub_100310268@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10030E774(a1);
  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v6 == result)
  {
    switch(a1)
    {
      case 1:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 1;
        goto LABEL_49;
      case 2:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 8;
        goto LABEL_49;
      case 3:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 9;
        goto LABEL_49;
      case 4:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 2;
        goto LABEL_49;
      case 5:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 10;
        goto LABEL_49;
      case 6:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 11;
        goto LABEL_49;
      case 7:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        result = sub_100007BAC(a2);
        v12 = 0;
        v9 = 0;
        v10 = 0;
        v13 = 0;
        v11 = 0;
        goto LABEL_50;
      case 8:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 12;
        goto LABEL_49;
      case 9:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        v14 = v21;
        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = v14 | 0x3000000000000000;
        v13 = 0x1000000000000000;
        goto LABEL_50;
      case 10:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        v16 = v21;
        v9 = v22;
        v10 = v23;
        result = sub_100007BAC(a2);
        v13 = 0;
        v11 = 0;
        v12 = v16 | 0x1000000000000000;
        goto LABEL_50;
      case 11:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        result = sub_100007BAC(a2);
        v12 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        goto LABEL_49;
      case 12:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 3;
        goto LABEL_49;
      case 13:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        v15 = v21;
        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = v15 | 0x1000000000000000;
        goto LABEL_49;
      case 14:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v13 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        goto LABEL_50;
      case 15:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 4;
        goto LABEL_49;
      case 16:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 5;
        goto LABEL_49;
      case 17:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v13 = 0;
        v11 = 0;
        v12 = 0x3000000000000000;
        goto LABEL_50;
      case 18:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 6;
        goto LABEL_49;
      case 19:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 7;
        goto LABEL_49;
      case 20:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        result = sub_100007BAC(a2);
        v12 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v13 = 0x1000000000000000;
        goto LABEL_50;
      case 21:
        sub_10001F280(a2, &v20);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v19[0];
        v9 = v19[2];
        v10 = v19[3];
        v11 = v19[5];
        result = sub_100007BAC(a2);
        v12 = v19[1] | 0x1000000000000000;
        v13 = v19[4] | 0x1000000000000000;
        goto LABEL_50;
      case 22:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        v17 = v21;
        v9 = v22;
        v10 = v23;
        result = sub_100007BAC(a2);
        v11 = 0;
        v12 = v17 | 0x2000000000000000;
        v13 = 0x1000000000000000;
        goto LABEL_50;
      default:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0x2000000000000000;
LABEL_49:
          v13 = 0x2000000000000000;
LABEL_50:
          *a3 = v8;
          a3[1] = v12;
          a3[2] = v9;
          a3[3] = v10;
          a3[4] = v13;
          a3[5] = v11;
        }

        else
        {
LABEL_51:
          sub_10030FB30();
          swift_allocError();
          *v18 = 0;
          swift_willThrow();
          result = sub_100007BAC(a2);
        }

        break;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100310BDC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v21, v21[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (!v2)
  {
    v8 = v18;
    v23 = v19[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v5 + 8))(v7, v4);
    v9 = sub_10030F9A4(v20[0]);
    if (v9 != 23)
    {
      v11 = v9;
      v12 = sub_10030E774(v9);
      v14 = v13;
      sub_10001F280(a1, v19);
      v20[3] = v12;
      v20[4] = v14;
      sub_1000280DC(v20);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v20, v19);
      sub_100310268(v11, v19, v22);
      sub_100007BAC(v20);
      sub_100007BAC(v21);
      result = sub_100007BAC(a1);
      v16 = v22[1];
      *v8 = v22[0];
      v8[1] = v16;
      v8[2] = v22[2];
      return result;
    }

    sub_10030FB30();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  sub_100007BAC(v21);
  return sub_100007BAC(a1);
}

unint64_t sub_100310E78()
{
  result = qword_10169D938;
  if (!qword_10169D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D938);
  }

  return result;
}

void sub_100310ECC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v71 = a2;
  v3 = type metadata accessor for PeerCommunicationIdentifier(0);
  __chkstk_darwin(v3);
  v73 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v58 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0x65655072656E774FLL && v12 == 0xEE00747375725472)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      sub_100312F10();
      swift_allocError();
      *v23 = 0;
      goto LABEL_16;
    }
  }

  v14 = [a1 recordID];
  v15 = [v14 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v70 = *(v9 + 32);
    v70(v11, v7, v8);
    v17 = [a1 encryptedValues];
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 objectForKeyedSubscript:v18];

    if (v19)
    {
      v74 = v19;
      v20 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80);
      if (swift_dynamicCast())
      {
        if (!v76)
        {
          v69 = v20;
          v68 = 0;
LABEL_20:
          v24 = String._bridgeToObjectiveC()();
          v25 = [v17 objectForKeyedSubscript:v24];

          if (v25)
          {
            v76 = v25;
            if (swift_dynamicCast())
            {
              v26 = v75;
              v67 = v74;
              type metadata accessor for PropertyListDecoder();
              swift_allocObject();
              PropertyListDecoder.init()();
              sub_1003139D0(&qword_10169D970, type metadata accessor for PeerCommunicationIdentifier, &unk_1013CB35C);
              v27 = v72;
              v66 = v26;
              dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
              if (v27)
              {
                (*(v9 + 8))(v11, v8);

                sub_100016590(v67, v66);
                swift_unknownObjectRelease();
                goto LABEL_17;
              }

              v28 = String._bridgeToObjectiveC()();
              v29 = [v17 objectForKeyedSubscript:v28];

              v30 = v66;
              if (!v29 || (v76 = v29, (swift_dynamicCast() & 1) == 0))
              {
                sub_100312F10();
                swift_allocError();
                *v38 = 4;
                swift_willThrow();
                sub_100016590(v67, v30);
                swift_unknownObjectRelease();

                v39 = v73;
LABEL_36:
                sub_10031317C(v39, type metadata accessor for PeerCommunicationIdentifier);
                goto LABEL_14;
              }

              v65 = v74;
              v72 = v75;
              v31 = String._bridgeToObjectiveC()();
              v32 = [v17 objectForKeyedSubscript:v31];

              if (v32)
              {
                v76 = v32;
                v33 = swift_dynamicCast();
                v34 = v66;
                if ((v33 & 1) == 0)
                {

                  v37 = v73;
                  goto LABEL_34;
                }

                v36 = v74;
                v35 = v75;
                sub_100017D5C(v74, v75);
                sub_1004A4740();
                if (v75 >> 60 != 15)
                {
                  v61 = v36;
                  v62 = v35;
                  v63 = v74;
                  v64 = v75;
                  v41 = String._bridgeToObjectiveC()();
                  v42 = [v17 objectForKeyedSubscript:v41];

                  if (v42)
                  {
                    v74 = v42;
                    v43 = swift_dynamicCast();
                    v44 = v66;
                    if (v43)
                    {
                      v69 = v76;
                      if (v76 < 3)
                      {
                        v60 = objc_autoreleasePoolPush();
                        v45 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
                        [a1 encodeSystemFieldsWithCoder:v45];
                        [v45 finishEncoding];
                        v46 = v44;
                        v47 = [v45 encodedData];
                        v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                        v58 = v49;
                        v59 = v48;

                        objc_autoreleasePoolPop(v60);
                        sub_100016590(v67, v46);
                        sub_100016590(v61, v62);
                        swift_unknownObjectRelease();

                        v50 = v71;
                        v51 = v58;
                        *v71 = v59;
                        v50[1] = v51;
                        v52 = type metadata accessor for OwnerPeerTrust(0);
                        v70(v50 + v52[5], v11, v8);
                        *(v50 + v52[6]) = v68;
                        sub_100312F64(v73, v50 + v52[7]);
                        v53 = (v50 + v52[8]);
                        v54 = v72;
                        *v53 = v65;
                        v53[1] = v54;
                        v55 = (v50 + v52[9]);
                        v56 = v64;
                        *v55 = v63;
                        v55[1] = v56;
                        *(v50 + v52[10]) = v69;
                        return;
                      }
                    }

                    v37 = v73;
                  }

                  else
                  {

                    v37 = v73;
                    v44 = v66;
                  }

                  sub_100312F10();
                  swift_allocError();
                  *v57 = 6;
                  swift_willThrow();
                  sub_100016590(v67, v44);
                  sub_100006654(v63, v64);
                  swift_unknownObjectRelease();

                  sub_100016590(v61, v62);
                  goto LABEL_35;
                }

                sub_100016590(v36, v35);
              }

              v37 = v73;
              v34 = v66;
LABEL_34:
              sub_100312F10();
              swift_allocError();
              *v40 = 5;
              swift_willThrow();
              sub_100016590(v67, v34);
              swift_unknownObjectRelease();

LABEL_35:
              v39 = v37;
              goto LABEL_36;
            }
          }

          sub_100312F10();
          swift_allocError();
          v22 = 3;
LABEL_13:
          *v21 = v22;
          swift_willThrow();
          swift_unknownObjectRelease();

LABEL_14:
          (*(v9 + 8))(v11, v8);
          return;
        }

        if (v76 == 1)
        {
          v69 = v20;
          v68 = 1;
          goto LABEL_20;
        }
      }
    }

    sub_100312F10();
    swift_allocError();
    v22 = 2;
    goto LABEL_13;
  }

  sub_1002EA198(v7);
  sub_100312F10();
  swift_allocError();
  *v16 = 1;
LABEL_16:
  swift_willThrow();
LABEL_17:
}

void sub_100311870()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = IDSCopyIDForEmailAddress();

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    byte_10177A8E8 = 0;
    qword_10177A8F0 = v2;
    qword_10177A8F8 = v4;
  }

  else
  {
    __break(1u);
  }
}

Swift::Int sub_1003118F4()
{
  v1 = v0;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v2 = type metadata accessor for OwnerPeerTrust(0);
  type metadata accessor for UUID();
  sub_1003139D0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v0 + v2[6]));
  sub_10098A0BC(v7);
  String.hash(into:)();
  v3 = (v0 + v2[9]);
  v4 = *v3;
  v5 = v3[1];
  sub_100017D5C(*v3, v5);
  Data.hash(into:)();
  sub_100016590(v4, v5);
  Hasher._combine(_:)(*(v1 + v2[10]));
  return Hasher._finalize()();
}

uint64_t sub_100311A20()
{
  v0 = type metadata accessor for UUID();
  sub_100044B3C(v0, qword_10177A900);
  sub_1000076D4(v0, qword_10177A900);
  return UUID.init(uuid:)();
}

uint64_t sub_100311A98()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x696669746E656469;
    if (v1 != 1)
    {
      v5 = 1701869940;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 != 5)
    {
      v2 = 0x6574617473;
    }

    v3 = 0xD000000000000011;
    if (v1 == 3)
    {
      v3 = 0xD000000000000018;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100311B7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100313728(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100311BB0(uint64_t a1)
{
  v2 = sub_100312FC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100311BEC(uint64_t a1)
{
  v2 = sub_100312FC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100311C2C(uint64_t a1, int *a2)
{
  v4 = v2;
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_1003139D0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[6]));
  sub_10098A0BC(a1);
  String.hash(into:)();
  v6 = (v2 + a2[9]);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(*v6, v8);
  Data.hash(into:)();
  sub_100016590(v7, v8);
  Hasher._combine(_:)(*(v4 + a2[10]));
}

Swift::Int sub_100311D3C(uint64_t a1, int *a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_1003139D0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[6]));
  sub_10098A0BC(v9);
  String.hash(into:)();
  v5 = (v2 + a2[9]);
  v6 = *v5;
  v7 = v5[1];
  sub_100017D5C(*v5, v7);
  Data.hash(into:)();
  sub_100016590(v6, v7);
  Hasher._combine(_:)(*(v4 + a2[10]));
  return Hasher._finalize()();
}

unint64_t *sub_100311E60@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100311F28()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177A918);
  sub_1000076D4(v0, qword_10177A918);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10031208C(id *a1)
{
  v2 = v1;
  v3 = *a1;
  [*a1 encryptedValues];
  swift_getObjectType();
  v4 = static os_log_type_t.debug.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = v3;
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Updating OwnerPeerTrust record: %@", 34, 2, v6);

  v12 = type metadata accessor for OwnerPeerTrust(0);
  CKRecordKeyValueSetting.subscript.setter();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for PeerCommunicationIdentifier(0);
  sub_1003139D0(&qword_10169D978, type metadata accessor for PeerCommunicationIdentifier, &unk_1013CB334);
  dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  CKRecordKeyValueSetting.subscript.setter();

  CKRecordKeyValueSetting.subscript.setter();
  sub_100017D5C(*(v2 + *(v12 + 36)), *(v2 + *(v12 + 36) + 8));
  CKRecordKeyValueSetting.subscript.setter();
  CKRecordKeyValueSetting.subscript.setter();

  return swift_unknownObjectRelease();
}

uint64_t sub_100312404(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169D9A8, &qword_10139C598);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100312FC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v16 = *v3;
  v17 = v9;
  v15 = 0;
  sub_100017D5C(v16, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v16, v17);
  }

  else
  {
    sub_100016590(v16, v17);
    v10 = type metadata accessor for OwnerPeerTrust(0);
    LOBYTE(v16) = 1;
    type metadata accessor for UUID();
    sub_1003139D0(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + v10[6]);
    v15 = 2;
    sub_1003131DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 3;
    type metadata accessor for PeerCommunicationIdentifier(0);
    sub_1003139D0(&qword_10169D978, type metadata accessor for PeerCommunicationIdentifier, &unk_1013CB334);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = (v3 + v10[9]);
    v12 = v11[1];
    v16 = *v11;
    v17 = v12;
    v15 = 5;
    sub_100017D5C(v16, v12);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v16, v17);
    LOBYTE(v16) = *(v3 + v10[10]);
    v15 = 6;
    sub_100313284();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100312770@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for PeerCommunicationIdentifier(0);
  __chkstk_darwin(v25);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_10169D980, &qword_10139C590);
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v10 = v23 - v9;
  v11 = type metadata accessor for OwnerPeerTrust(0);
  __chkstk_darwin(v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v31 = a1;
  sub_1000035D0(a1, v14);
  sub_100312FC8();
  v29 = v10;
  v15 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_100007BAC(v31);
  }

  v30 = v4;
  v16 = v26;
  v33 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v13 = v32;
  LOBYTE(v32) = 1;
  sub_1003139D0(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23[1] = v5;
  (*(v16 + 32))(&v13[v11[5]], v7, v5);
  v33 = 2;
  sub_10031301C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13[v11[6]] = v32;
  LOBYTE(v32) = 3;
  sub_1003139D0(&qword_10169D970, type metadata accessor for PeerCommunicationIdentifier, &unk_1013CB35C);
  v17 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v27;
  sub_100312F64(v17, v11[7]);
  LOBYTE(v32) = 4;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v11[8];
  *v20 = v19;
  v20[1] = v21;
  v33 = 5;
  sub_100313070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v11[9] = v32;
  v33 = 6;
  sub_1003130C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v29, v28);
  *v11[10] = v32;
  sub_100313118(0, v24);
  sub_100007BAC(v31);
  return sub_10031317C(0, type metadata accessor for OwnerPeerTrust);
}

uint64_t sub_100312DE8(uint64_t a1)
{
  *(a1 + 8) = sub_1003139D0(&qword_10169D940, type metadata accessor for OwnerPeerTrust, &unk_10139C530);
  result = sub_1003139D0(&qword_10169D948, type metadata accessor for OwnerPeerTrust, &unk_10139C508);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for OwnerPeerTrust(uint64_t a1)
{
  result = qword_10169DA20;
  if (!qword_10169DA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100312EB8(uint64_t a1)
{
  result = sub_1003139D0(&unk_10169D950, type metadata accessor for OwnerPeerTrust, &unk_10139C558);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100312F10()
{
  result = qword_10169D960;
  if (!qword_10169D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D960);
  }

  return result;
}

uint64_t sub_100312F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCommunicationIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100312FC8()
{
  result = qword_10169D988;
  if (!qword_10169D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D988);
  }

  return result;
}

unint64_t sub_10031301C()
{
  result = qword_10169D990;
  if (!qword_10169D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D990);
  }

  return result;
}

unint64_t sub_100313070()
{
  result = qword_1016BB0D0;
  if (!qword_1016BB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB0D0);
  }

  return result;
}

unint64_t sub_1003130C4()
{
  result = qword_10169D9A0;
  if (!qword_10169D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D9A0);
  }

  return result;
}

uint64_t sub_100313118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerPeerTrust(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031317C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1003131DC()
{
  result = qword_10169D9B0;
  if (!qword_10169D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D9B0);
  }

  return result;
}

unint64_t sub_100313230()
{
  result = qword_1016BDAE0;
  if (!qword_1016BDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDAE0);
  }

  return result;
}

unint64_t sub_100313284()
{
  result = qword_10169D9C0;
  if (!qword_10169D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D9C0);
  }

  return result;
}

BOOL sub_1003132D8(_BOOL8 *a1, uint64_t *a2)
{
  if (_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, a1[1], *a2, a2[1]) && (v4 = type metadata accessor for OwnerPeerTrust(0), (static UUID.== infix(_:_:)() & 1) != 0) && *(a1 + v4[6]) == *(a2 + v4[6]) && (sub_10098BFC0(a1 + v4[7], a2 + v4[7]) & 1) != 0 && ((v5 = v4[8], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (v10 = v4[9], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v14 = *v13, v15 = v13[1], sub_100017D5C(v11, v12), sub_100017D5C(v14, v15), v16 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v12, v14, v15), sub_100016590(v14, v15), sub_100016590(v11, v12), v16)))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100313470(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PeerCommunicationIdentifier(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100313574()
{
  result = qword_10169DA78;
  if (!qword_10169DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DA78);
  }

  return result;
}

unint64_t sub_1003135CC()
{
  result = qword_10169DA80;
  if (!qword_10169DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DA80);
  }

  return result;
}

unint64_t sub_100313624()
{
  result = qword_10169DA88;
  if (!qword_10169DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DA88);
  }

  return result;
}

unint64_t sub_10031367C()
{
  result = qword_10169DA90;
  if (!qword_10169DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DA90);
  }

  return result;
}

unint64_t sub_1003136D4()
{
  result = qword_10169DA98;
  if (!qword_10169DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DA98);
  }

  return result;
}

uint64_t sub_100313728(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101351010 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101351030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101351050 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_10031397C()
{
  result = qword_10169DAA0;
  if (!qword_10169DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DAA0);
  }

  return result;
}

uint64_t sub_1003139D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100313A28(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  result = __chkstk_darwin(v4 - 8);
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_11;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v10) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_15;
    }

    v10 = v10;
LABEL_10:
    if (v10 >= -1)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_11:
  Data.subdata(in:)();
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v12)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_100313B54(uint64_t result, unint64_t a2)
{
  v2 = BYTE6(a2);
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return Data.subdata(in:)();
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v4 = v5 - v6;
    if (__OFSUB__(v5, v6))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    result = v4 / 2;
LABEL_9:
    if (v4 >= result)
    {
      return Data.subdata(in:)();
    }

    __break(1u);
    goto LABEL_13;
  }

  if (!v3)
  {
    v4 = BYTE6(a2);
    result = v2 >> 1;
    goto LABEL_9;
  }

  v7 = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v4 = v7;
    result = (v7 + (v7 >> 31)) >> 1;
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100313BD8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  __chkstk_darwin(v4 - 8);
  sub_100313B54(a1, a2);
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v9 & 1) == 0 && v8 < 0)
  {
    return 0;
  }

  sub_100313B54(a1, a2);
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  sub_100313B54(a1, a2);
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v7)
  {
    result = 0;
  }

  else
  {
    result = v6;
  }

  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100313D58(uint64_t a1, unint64_t a2)
{
  v22 = type metadata accessor for UUID();
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Endianness();
  __chkstk_darwin(v7 - 8);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v8._countAndFlagsBits = 0x49726F646E65763CLL;
  v8._object = 0xEB00000000203A64;
  String.append(_:)(v8);
  *&v24 = sub_100313A28(a1, a2);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._object = 0xEC000000203A6449;
  v10._countAndFlagsBits = 0x746375646F727020;
  String.append(_:)(v10);
  sub_100313B54(a1, a2);
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  v11 = v24;
  if (BYTE4(v24))
  {
    v11 = 0;
  }

  *&v24 = v11;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x756C615677617220;
  v13._object = 0xEB00000000203A65;
  String.append(_:)(v13);
  v14._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v14);

  v15._object = 0xEE00203A44495555;
  v15._countAndFlagsBits = 0x746375646F727020;
  String.append(_:)(v15);
  if (qword_101694570 != -1)
  {
    swift_once();
  }

  v24 = xmmword_10169DAA8;
  sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
  Data.append(_:)();
  v16 = v24;
  v23 = v24;
  sub_100017D5C(v24, *(&v24 + 1));
  sub_1000E0A3C();
  DataProtocol.stableUUID.getter();
  sub_100016590(v16, *(&v16 + 1));
  sub_100016590(v16, *(&v16 + 1));
  sub_1002FFBAC();
  v17 = v22;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  (*(v4 + 8))(v6, v17);
  v19._countAndFlagsBits = 62;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return v25;
}

uint64_t sub_1003140C8(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_10169DAE8, &qword_10139CAA8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_1000035D0(a1, a1[3]);
  sub_100314A74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v12 = a3;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100314230(uint64_t a1)
{
  v2 = sub_100314A74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10031426C(uint64_t a1)
{
  v2 = sub_100314A74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003142A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100314594(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *sub_1003142D8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100314900(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_10031432C()
{
  result = qword_10169DAD0;
  if (!qword_10169DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DAD0);
  }

  return result;
}

uint64_t sub_100314380()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuid:)();
  v4 = UUID.data.getter();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  *&xmmword_10169DAA8 = v4;
  *(&xmmword_10169DAA8 + 1) = v6;
  return result;
}

uint64_t sub_100314498()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10169DAB8);
  sub_1000076D4(v0, qword_10169DAB8);
  return Logger.init(subsystem:category:)();
}

void *sub_10031451C(_BYTE **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_100314564@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100314594(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v3 = v3;
LABEL_10:
    if (v3 == 8)
    {
      return result;
    }
  }

  sub_100016590(result, a2);
  return 0;
}

uint64_t sub_100314604(uint64_t a1, uint64_t a2)
{
  if (a1 != a1)
  {
    if (qword_101694FA8 == -1)
    {
LABEL_6:
      SynchronousCache.cachedValue<A>(key:computeBlock:)();
      if ((v18 & 1) == 0)
      {
        if (qword_101694578 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        sub_1000076D4(v4, qword_10169DAB8);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 134218240;
          *(v7 + 4) = a1;
          *(v7 + 12) = 2048;
          *(v7 + 14) = a2;
          _os_log_impl(&_mh_execute_header, v5, v6, "Invalid vendorId: %ld productId: %ld", v7, 0x16u);
        }
      }

      return 0;
    }

LABEL_24:
    swift_once();
    goto LABEL_6;
  }

  if (a2 != a2)
  {
    if (qword_101694FA8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  sub_10012BF24();
  v19 = FixedWidthInteger.data.getter();
  v20 = v8;
  v9 = FixedWidthInteger.data.getter();
  v11 = v10;
  Data.append(_:)();
  sub_100016590(v9, v11);
  result = v19;
  v13 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_22;
    }

    v15 = *(v19 + 16);
    v14 = *(v19 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (!v16)
    {
      if (v17 == 8)
      {
        goto LABEL_19;
      }

LABEL_22:
      sub_100016590(v19, v20);
      return 0;
    }

    __break(1u);
  }

  else
  {
    if (!v13)
    {
      if (BYTE6(v20) != 8)
      {
        goto LABEL_22;
      }

LABEL_19:
      sub_100017D5C(v19, v20);
      sub_100016590(v19, v20);
      return v19;
    }

    if (!__OFSUB__(HIDWORD(v19), v19))
    {
      if (HIDWORD(v19) - v19 == 8)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

void *sub_100314900(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169DAD8, &qword_10139CAA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_100314A74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_100314A74()
{
  result = qword_10169DAE0;
  if (!qword_10169DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DAE0);
  }

  return result;
}

unint64_t sub_100314ADC()
{
  result = qword_10169DAF0;
  if (!qword_10169DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DAF0);
  }

  return result;
}

unint64_t sub_100314B34()
{
  result = qword_10169DAF8;
  if (!qword_10169DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DAF8);
  }

  return result;
}

unint64_t sub_100314B8C()
{
  result = qword_10169DB00;
  if (!qword_10169DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DB00);
  }

  return result;
}

void sub_100314BE4(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a2[2];
  if (v12)
  {
    v13 = a1[2];
    if (v13)
    {
      if (v12 >= v13)
      {
        v14 = a1;
      }

      else
      {
        v14 = a2;
      }

      if (v12 < v13)
      {
        a2 = a1;
      }

      v15 = v14 + 7;
      v16 = 1 << *(v14 + 32);
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & v14[7];
      v19 = (v16 + 63) >> 6;
      v42 = v5 + 16;
      v37 = v5 + 32;
      v38 = v14;
      v40 = a2 + 7;
      v20 = (v5 + 8);

      v43 = a2;

      v21 = 0;
      v34 = v19;
      v35 = v15;
      v36 = v5;
      while (v18)
      {
LABEL_18:
        v23 = v39;
        v24 = v38[6];
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v39, v24 + v41 * (__clz(__rbit64(v18)) | (v21 << 6)), v4);
        (*(v5 + 32))(v44, v23, v4);
        if (v43[2])
        {
          v26 = v43;
          sub_100315A3C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v28 = -1 << *(v26 + 32);
          v29 = v27 & ~v28;
          if ((*(v40 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
          {
            v30 = ~v28;
            while (1)
            {
              v25(v8, v43[6] + v29 * v41, v4);
              sub_100315A3C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v31 = dispatch thunk of static Equatable.== infix(_:_:)();
              v32 = *v20;
              (*v20)(v8, v4);
              if (v31)
              {
                break;
              }

              v29 = (v29 + 1) & v30;
              if (((*(v40 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
              {
                goto LABEL_12;
              }
            }

            v32(v44, v4);
            return;
          }
        }

LABEL_12:
        v18 &= v18 - 1;
        (*v20)(v44, v4);
        v15 = v35;
        v5 = v36;
        v19 = v34;
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v19)
        {

          return;
        }

        v18 = v15[v22];
        ++v21;
        if (v18)
        {
          v21 = v22;
          goto LABEL_18;
        }
      }

      __break(1u);
    }
  }
}

void sub_100314FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OwnerSharingCircle(0);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177A560);
  sub_1003158CC(a1, v12);
  (*(v7 + 16))(v9, a3, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v3;
    v17 = v16;
    v27 = swift_slowAlloc();
    v30 = v27;
    *v17 = 134350083;
    *(v17 + 4) = v29;
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    LODWORD(v29) = v15;
    sub_100315A3C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_100315930(v12);
    v21 = sub_1000136BC(v18, v20, &v30);

    *(v17 + 24) = v21;
    *(v17 + 32) = 2160;
    *(v17 + 34) = 1752392040;
    *(v17 + 42) = 2081;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v7 + 8))(v9, v6);
    v25 = sub_1000136BC(v22, v24, &v30);

    *(v17 + 44) = v25;
    _os_log_impl(&_mh_execute_header, v14, v29, "Deleting circle of type: %{public}ld\ncircle: %{private,mask.hash}s,\nfor beacon:%{private,mask.hash}s.", v17, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    sub_100315930(v12);
  }
}

unint64_t *sub_100315334(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_100315A84(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1003153D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0) + 48);
  v5 = *(sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510) + 48);
  LOBYTE(v4) = *(a1 + v4);
  v6 = type metadata accessor for UUID();
  result = (*(*(v6 - 8) + 16))(a2, a1, v6);
  *(a2 + v5) = v4;
  return result;
}

BOOL sub_100315470(uint64_t a1)
{
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v36 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v32[-v9];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v11 = v37;
  v12 = sub_101074A20(v37);

  v13 = v12 != 0;
  v14 = v12 - 1;
  if (v13)
  {
    v15 = 0;
    v2 = *(a1 + 16);
    while (1)
    {
      v3 = v15;
      if (v2 == v15)
      {
        break;
      }

      ++v15;
      v11 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3;
      v1 = *(*(v11 + *(v5 + 32)) + 16);
      if (v1 && v14 < v1)
      {
        if (qword_101694480 != -1)
        {
          goto LABEL_14;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
    __break(1u);
LABEL_14:
    swift_once();
LABEL_10:
    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177A560);
    sub_1003158CC(v11, v10);
    v17 = v36;
    sub_1003158CC(v11, v36);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v20 = 134219267;
      *(v20 + 4) = v1;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v14;
      *(v20 + 22) = 2160;
      *(v20 + 24) = 1752392040;
      *(v20 + 32) = 2081;
      v34 = v18;
      type metadata accessor for UUID();
      sub_100315A3C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = v19;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_100315930(v10);
      v24 = sub_1000136BC(v21, v23, &v37);

      *(v20 + 34) = v24;
      *(v20 + 42) = 2160;
      *(v20 + 44) = 1752392040;
      *(v20 + 52) = 2081;
      v25 = v36;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_100315930(v25);
      v29 = sub_1000136BC(v26, v28, &v37);

      *(v20 + 54) = v29;
      v30 = v34;
      _os_log_impl(&_mh_execute_header, v34, v33, "BeaconSharingService: cannot create new circle. memberCount: %ld > maxCircleMembers: %lu.\nBeaconIdentifier: %{private,mask.hash}s,\nShareId: %{private,mask.hash}s.", v20, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {

      sub_100315930(v17);
      sub_100315930(v10);
    }
  }

  return v2 == v3;
}

uint64_t sub_1003158CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharingCircle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100315930(uint64_t a1)
{
  v2 = type metadata accessor for OwnerSharingCircle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10031598C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharingCircle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for BeaconSharingCircleTransformer.Error(uint64_t a1)
{
  result = qword_10169DBA0;
  if (!qword_10169DBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100315A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100315A84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v45 = a4;
  v38 = a1;
  v44 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
  v5 = __chkstk_darwin(v44);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = &v36 - v7;
  v50 = type metadata accessor for UUID();
  result = __chkstk_darwin(v50);
  v49 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v47 = a3;
  v12 = *(a3 + 64);
  v39 = 0;
  v40 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v41 = v9 + 16;
  v42 = v9;
  v46 = (v9 + 8);
  v17 = v49;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v48 = (v15 - 1) & v15;
LABEL_11:
    v21 = v18 | (v11 << 6);
    v22 = v47;
    v23 = *(v42 + 16);
    v24 = v50;
    v23(v17, v47[6] + *(v42 + 72) * v21, v50);
    v25 = v21;
    LOBYTE(v22) = *(v22[7] + v21);
    v26 = v51;
    v23(v51, v17, v24);
    *(v26 + *(v44 + 48)) = v22;
    v27 = v43;
    sub_1000D2A70(v26, v43, &qword_1016BBEE0, &unk_10139CBF0);
    if (*(v45 + 16) && (sub_1000210EC(v27), (v28 & 1) != 0))
    {
      sub_10000B3A8(v51, &qword_1016BBEE0, &unk_10139CBF0);
      v29 = v27;
      v30 = *v46;
      v31 = v50;
      (*v46)(v29, v50);
      result = (v30)(v49, v31);
      v15 = v48;
    }

    else
    {
      sub_10000B3A8(v51, &qword_1016BBEE0, &unk_10139CBF0);
      v32 = v27;
      v33 = *v46;
      v34 = v50;
      (*v46)(v32, v50);
      result = (v33)(v49, v34);
      *(v38 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v35 = __OFADD__(v39++, 1);
      v15 = v48;
      if (v35)
      {
        __break(1u);
        return sub_10061C234(v38, v37, v39, v47);
      }
    }
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      return sub_10061C234(v38, v37, v39, v47);
    }

    v20 = *(v40 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v48 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100315DFC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_100315334(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_100315A84((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_100315FE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t (*a8)(char *))
{
  v274 = a8;
  v257 = a7;
  v265 = a6;
  v268 = a5;
  v271 = a4;
  LODWORD(v284) = a3;
  v270 = a1;
  v9 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v251 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v282 = &v251 - v14;
  v15 = __chkstk_darwin(v13);
  v296 = (&v251 - v16);
  __chkstk_darwin(v15);
  v286 = &v251 - v17;
  v18 = sub_1000BC4D4(&qword_10169DB08, &qword_10139CBE8);
  v19 = __chkstk_darwin(v18 - 8);
  v280 = &v251 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v289 = &v251 - v21;
  v22 = type metadata accessor for OwnerSharingCircle(0);
  v276 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = &v251 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v251 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v251 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v251 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v251 - v36;
  v38 = __chkstk_darwin(v35);
  v256 = &v251 - v39;
  v40 = __chkstk_darwin(v38);
  v264 = &v251 - v41;
  v42 = __chkstk_darwin(v40);
  v273 = &v251 - v43;
  v44 = __chkstk_darwin(v42);
  v258 = &v251 - v45;
  v46 = __chkstk_darwin(v44);
  v259 = (&v251 - v47);
  v48 = __chkstk_darwin(v46);
  v272 = (&v251 - v49);
  v50 = __chkstk_darwin(v48);
  v294 = (&v251 - v51);
  v52 = __chkstk_darwin(v50);
  *&v267 = &v251 - v53;
  __chkstk_darwin(v52);
  v293 = &v251 - v54;
  v55 = a2;
  v56 = type metadata accessor for UUID();
  v57 = *(v56 - 8);
  v58 = __chkstk_darwin(v56);
  v59 = __chkstk_darwin(v58);
  v287 = &v251 - v60;
  v61 = __chkstk_darwin(v59);
  v62 = __chkstk_darwin(v61);
  v295 = &v251 - v63;
  v64 = __chkstk_darwin(v62);
  v288 = &v251 - v65;
  v66 = __chkstk_darwin(v64);
  v290 = &v251 - v67;
  __chkstk_darwin(v66);
  v285 = &v251 - v70;
  if (!*(v55 + 16))
  {
    type metadata accessor for BeaconSharingCircleTransformer.Error(0);
    sub_100315A3C(&qword_101697608, type metadata accessor for BeaconSharingCircleTransformer.Error, &unk_10139CC50);
    swift_allocError();
    (*(v57 + 56))(v105, 1, 1, v56);
    swift_willThrow();
    return v22;
  }

  v255 = v69;
  v261 = v37;
  v253 = v68;
  v281 = v12;
  v297 = v56;
  v275 = v22;
  v251 = v31;
  v254 = v34;
  v252 = v28;
  v260 = v25;
  v71 = v55 + 56;
  v72 = 1 << *(v55 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v55 + 56);
  v75 = (v72 + 63) >> 6;
  v291 = v57;
  v292 = (v57 + 16);
  v283 = (v57 + 8);

  v76 = 0;
  v269 = _swiftEmptyDictionarySingleton;
  v278 = v55 + 56;
  v279 = v55;
  while (1)
  {
    v78 = v265;
    v79 = v273;
    if (!v74)
    {
      while (1)
      {
        v80 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (v80 >= v75)
        {
          break;
        }

        v74 = *(v71 + 8 * v80);
        ++v76;
        if (v74)
        {
          goto LABEL_12;
        }
      }

      v71 = &v251;
      __chkstk_darwin(v93);
      *(&v251 - 2) = v270;
      v94 = v271;

      v95 = v277;
      v96 = sub_10013CF58(v274, (&v251 - 4), v94);
      v263 = v95;
      v97 = v96[2];
      v271 = v96;
      v274 = v97;
      if (v97)
      {
        v25 = v96;
        v71 = 0;
        v277 = _swiftEmptyArrayStorage;
        v22 = v297;
        v75 = v289;
        while (1)
        {
          v76 = *(v25 + 16);
          if (v71 >= v76)
          {
            break;
          }

          v98 = (*(v276 + 80) + 32) & ~*(v276 + 80);
          v31 = *(v276 + 72);
          v99 = v293;
          sub_1003158CC(v25 + v98 + v31 * v71, v293);
          if (*(v99 + v275[7]) == v78)
          {
            sub_10031598C(v99, v294);
            v100 = v277;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v299 = v100;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_101123FE4(0, *(v100 + 2) + 1, 1);
              v25 = v271;
              v100 = v299;
            }

            v103 = *(v100 + 2);
            v102 = *(v100 + 3);
            v104 = v100;
            if (v103 >= v102 >> 1)
            {
              sub_101123FE4((v102 > 1), v103 + 1, 1);
              v25 = v271;
              v104 = v299;
            }

            *(v104 + 2) = v103 + 1;
            v277 = v104;
            sub_10031598C(v294, &v104[v98 + v103 * v31]);
            v79 = v273;
            v22 = v297;
          }

          else
          {
            sub_100315930(v99);
          }

          if (v274 == ++v71)
          {
            goto LABEL_35;
          }
        }

LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      v277 = _swiftEmptyArrayStorage;
      v22 = v297;
      v75 = v289;
LABEL_35:
      v107 = *(v277 + 2);
      v25 = v269;

      v262 = v107;
      if (!v107)
      {
LABEL_70:
        v293 = v25;
        if (!v274)
        {
          goto LABEL_87;
        }

        v78 = 0;
        v31 = _swiftEmptyArrayStorage;
        v71 = v268;
        v156 = v275;
        while (1)
        {
          v76 = *(v271 + 16);
          if (v78 >= v76)
          {
            goto LABEL_157;
          }

          v75 = (*(v276 + 80) + 32) & ~*(v276 + 80);
          v157 = *(v276 + 72);
          v158 = v272;
          sub_1003158CC(v271 + v75 + v157 * v78, v272);
          v159 = v158;
          if (*(v158 + v156[7]) != v71)
          {
            goto LABEL_72;
          }

          v296 = v157;
          v79 = *(v158 + v156[8]);
          v25 = *(v79 + 16);
          if (v25)
          {
            v71 = sub_1003A85FC(*(v79 + 16), 0);
            v160 = sub_1003CC2CC();
            v161 = v299;
            v22 = v300;
            v294 = v301;
            v295 = v160;

            sub_1000128F8(v161);
            v76 = v295;
            if (v295 != v25)
            {
              goto LABEL_161;
            }

            v156 = v275;
            v22 = v297;
          }

          else
          {
            v71 = _swiftEmptyArrayStorage;
          }

          v162 = sub_10000954C(v71);

          v163 = v293;

          v165 = sub_10111E628(v164);
          sub_100314BE4(v165, v162);
          v167 = v166;
          v25 = v163;

          v71 = v268;
          v159 = v272;
          v168 = v296;
          if (v167)
          {
LABEL_72:
            sub_100315930(v159);
          }

          else
          {
            sub_10031598C(v272, v264);
            v169 = swift_isUniquelyReferenced_nonNull_native();
            v302 = v31;
            if ((v169 & 1) == 0)
            {
              sub_101123FE4(0, *(v31 + 16) + 1, 1);
              v25 = v293;
              v31 = v302;
            }

            v171 = *(v31 + 16);
            v170 = *(v31 + 24);
            if (v171 >= v170 >> 1)
            {
              sub_101123FE4((v170 > 1), v171 + 1, 1);
              v25 = v293;
              v31 = v302;
            }

            *(v31 + 16) = v171 + 1;
            sub_10031598C(v264, v31 + v75 + v171 * v168);
            v71 = v268;
          }

          ++v78;
          v79 = v273;
          if (v274 == v78)
          {
            goto LABEL_88;
          }
        }
      }

      v108 = 0;
      v294 = (v291 + 32);
      v25 = v269;
LABEL_38:
      v76 = *(v277 + 2);
      if (v108 >= v76)
      {
        goto LABEL_159;
      }

      v109 = v267;
      sub_1003158CC(&v277[((*(v276 + 80) + 32) & ~*(v276 + 80)) + *(v276 + 72) * v108], v267);
      v266 = v108 + 1;
      v110 = *(v109 + v275[8]);

      v111 = swift_isUniquelyReferenced_nonNull_native();
      v299 = v25;
      v112 = *(v110 + 64);
      v279 = v110 + 64;
      v113 = 1 << *(v110 + 32);
      if (v113 < 64)
      {
        v114 = ~(-1 << v113);
      }

      else
      {
        v114 = -1;
      }

      v74 = v114 & v112;
      v278 = (v113 + 63) >> 6;
      v284 = v110;

      v115 = 0;
      v116 = &unk_10139CBF0;
      while (1)
      {
        while (1)
        {
          v293 = v25;
          LODWORD(v290) = v111;
          if (!v74)
          {
            if (v278 <= (v115 + 1))
            {
              v120 = v115 + 1;
            }

            else
            {
              v120 = v278;
            }

            v78 = v120 - 1;
            while (1)
            {
              v79 = v115 + 1;
              if (__OFADD__(v115, 1))
              {
                break;
              }

              if (v79 >= v278)
              {
                v31 = &qword_1016BBEE0;
                v155 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
                v134 = v286;
                (*(*(v155 - 8) + 56))(v286, 1, 1, v155);
                v74 = 0;
                goto LABEL_54;
              }

              v74 = *(v279 + 8 * v79);
              ++v115;
              if (v74)
              {
                goto LABEL_53;
              }
            }

            __break(1u);
LABEL_87:
            v31 = _swiftEmptyArrayStorage;
            v156 = v275;
LABEL_88:
            v172 = v259;
            UUID.init()();
            v173 = v172 + v156[6];
            v75 = v22;
            v294 = *v292;
            (v294)(v173, v270, v22);
            v267 = xmmword_10138C660;
            *v172 = xmmword_10138C660;
            v78 = v265;
            *(v172 + v156[7]) = v265;
            *(v172 + v156[8]) = v25;
            *(v172 + v156[9]) = v257;
            sub_1003158CC(v172, v258);

            v22 = sub_100A5BC94(0, 1, 1, _swiftEmptyArrayStorage);
            v25 = *(v22 + 16);
            v76 = *(v22 + 24);
            v71 = v25 + 1;
            if (v25 < v76 >> 1)
            {
              goto LABEL_89;
            }

            goto LABEL_165;
          }

          v79 = v115;
LABEL_53:
          v121 = __clz(__rbit64(v74));
          v74 &= v74 - 1;
          v122 = v121 | (v79 << 6);
          v123 = v284;
          v124 = v291;
          v125 = v288;
          (*(v291 + 16))(v288, *(v284 + 48) + *(v291 + 72) * v122, v22);
          v126 = *(*(v123 + 56) + v122);
          v116 = &unk_10139CBF0;
          v127 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
          v128 = v22;
          v129 = *(v127 + 48);
          v130 = *(v124 + 32);
          v131 = v286;
          v130(v286, v125, v128);
          v131[v129] = v126;
          v31 = &qword_1016BBEE0;
          v132 = *(*(v127 - 8) + 56);
          v133 = v127;
          v134 = v131;
          v132(v131, 0, 1, v133);
          v78 = v79;
          v75 = v289;
LABEL_54:
          v135 = v296;
          sub_1000D2AD8(v134, v296, &unk_1016BC360, &qword_10139CBE0);
          v136 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
          if ((*(*(v136 - 8) + 48))(v135, 1, v136) == 1)
          {
            v137 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
            (*(*(v137 - 8) + 56))(v75, 1, 1, v137);
            v22 = v297;
          }

          else
          {
            v138 = *(v136 + 48);
            v285 = v78;
            v139 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
            v140 = *(v139 + 48);
            v22 = v297;
            LOBYTE(v138) = *(v296 + v138);
            (*v292)(v75, v296, v297);
            *(v75 + v140) = v138;
            v116 = &unk_10139CBF0;
            sub_10000B3A8(v296, &qword_1016BBEE0, &unk_10139CBF0);
            v78 = v285;
            (*(*(v139 - 8) + 56))(v75, 0, 1, v139);
          }

          v141 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
          if ((*(*(v141 - 8) + 48))(v75, 1, v141) == 1)
          {
            v71 = v284;

            sub_100315930(v267);
            v108 = v266;
            v25 = v293;
            v79 = v273;
            if (v266 == v262)
            {
              goto LABEL_70;
            }

            goto LABEL_38;
          }

          v142 = *(v141 + 48);
          v31 = v295;
          v143 = *v294;
          (*v294)(v295, v75, v22);
          v75 = *(v75 + v142);
          v144 = v293;
          v146 = sub_1000210EC(v31);
          v147 = *(v144 + 16);
          v148 = (v145 & 1) == 0;
          v149 = v147 + v148;
          if (__OFADD__(v147, v148))
          {
            __break(1u);
LABEL_136:
            v228 = v293;

            v229 = sub_100315DFC(v296, v228);

            swift_bridgeObjectRelease_n();
            if (*(v229 + 16))
            {
              v263 = v116;
              v78 = v275;
              v230 = v254;
              UUID.init()();
              v231 = v270;
              v232 = v294;
              (v294)(v230 + *(v78 + 24), v270, v31);
              *v230 = v267;
              v233 = v268;
              *(v230 + *(v78 + 28)) = v268;
              *(v230 + *(v78 + 32)) = v229;
              *(v230 + *(v78 + 36)) = v257;
              v234 = v251;
              sub_1003158CC(v230, v251);
              v235 = v253;
              v232(v253, v231, v31);
              v236 = Logger.logObject.getter();
              v75 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v236, v75))
              {
                v237 = swift_slowAlloc();
                v296 = swift_slowAlloc();
                v302 = v296;
                *v237 = 134350083;
                *(v237 + 4) = v233;
                *(v237 + 12) = 2160;
                *(v237 + 14) = 1752392040;
                *(v237 + 22) = 2081;
                sub_100315A3C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v238 = dispatch thunk of CustomStringConvertible.description.getter();
                v240 = v239;
                sub_100315930(v234);
                v241 = sub_1000136BC(v238, v240, &v302);
                v74 = v260;

                *(v237 + 24) = v241;
                *(v237 + 32) = 2160;
                *(v237 + 34) = 1752392040;
                *(v237 + 42) = 2081;
                v242 = v253;
                v243 = dispatch thunk of CustomStringConvertible.description.getter();
                v245 = v244;
                (v286)(v242, v31);
                v246 = sub_1000136BC(v243, v245, &v302);

                *(v237 + 44) = v246;
                _os_log_impl(&_mh_execute_header, v236, v75, "Create a new type: %{public}ld\ncircle: %{private,mask.hash}s,\nfor beacon:%{private,mask.hash}s.", v237, 0x34u);
                swift_arrayDestroy();
              }

              else
              {

                (v286)(v235, v31);
                sub_100315930(v234);
              }

              v247 = v252;
              sub_1003158CC(v254, v252);
              v22 = v272;
              v249 = v272[2];
              v248 = v272[3];
              v116 = v263;
              v31 = v274;
              if (v249 >= v248 >> 1)
              {
                v22 = sub_100A5BC94((v248 > 1), v249 + 1, 1, v272);
              }

              sub_100315930(v254);
              *(v22 + 16) = v249 + 1;
              sub_10031598C(v247, &v273[v22 + v249 * v279]);
            }

            else
            {
LABEL_141:

              v31 = v274;
              v22 = v272;
            }

            sub_100397FA8(v250);
            v71 = 0;
            v25 = v276;
            v79 = v277;
            while (1)
            {
              v76 = *(v31 + 16);
              if (v71 >= v76)
              {
                goto LABEL_164;
              }

              sub_1003158CC(v79, v74);
              sub_100314FA4(v74, v268, v270);
              if (v116)
              {
                goto LABEL_167;
              }

              ++v71;
              sub_100315930(v74);
              v79 += v279;
              if (v25 == v71)
              {

                goto LABEL_151;
              }
            }
          }

          v150 = v145;
          if (*(v144 + 24) < v149)
          {
            break;
          }

          if (v290)
          {
            v25 = v299;
            if ((v145 & 1) == 0)
            {
              goto LABEL_65;
            }
          }

          else
          {
            sub_1010062B8();
            v25 = v299;
            if ((v150 & 1) == 0)
            {
              goto LABEL_65;
            }
          }

LABEL_43:
          v117 = v25;
          v118 = *(*(v25 + 56) + v146);
          v119 = v297;
          (*v283)(v295, v297);
          *(*(v117 + 56) + v146) = v118;
          v22 = v119;
          v25 = v117;
          v111 = 1;
          v115 = v78;
          v75 = v289;
        }

        sub_100FE88DC(v149, v290 & 1);
        v151 = sub_1000210EC(v295);
        if ((v150 & 1) != (v152 & 1))
        {
          goto LABEL_166;
        }

        v146 = v151;
        v25 = v299;
        if (v150)
        {
          goto LABEL_43;
        }

LABEL_65:
        *(v25 + 8 * (v146 >> 6) + 64) |= 1 << v146;
        v143(*(v25 + 48) + *(v291 + 72) * v146, v295, v297);
        *(*(v25 + 56) + v146) = v75;
        v153 = *(v25 + 16);
        v86 = __OFADD__(v153, 1);
        v154 = v153 + 1;
        if (v86)
        {
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        *(v25 + 16) = v154;
        v111 = 1;
        v115 = v78;
        v22 = v297;
        v75 = v289;
      }
    }

    v80 = v76;
LABEL_12:
    v78 = *(v291 + 72);
    v79 = *(v291 + 16);
    v71 = v285;
    v81 = v297;
    (v79)(v285, *(v55 + 48) + v78 * (__clz(__rbit64(v74)) | (v80 << 6)), v297);
    v22 = v290;
    (v79)(v290, v71, v81);
    v25 = v269;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v299 = v25;
    v82 = sub_1000210EC(v22);
    v84 = *(v25 + 16);
    v85 = (v83 & 1) == 0;
    v86 = __OFADD__(v84, v85);
    v76 = v84 + v85;
    if (v86)
    {
      goto LABEL_160;
    }

    v22 = v83;
    if (*(v25 + 24) >= v76)
    {
      if ((v31 & 1) == 0)
      {
        v92 = v82;
        sub_1010062B8();
        v82 = v92;
      }
    }

    else
    {
      sub_100FE88DC(v76, v31);
      v82 = sub_1000210EC(v290);
      if ((v22 & 1) != (v87 & 1))
      {
LABEL_166:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_167:

        result = sub_100315930(v74);
        __break(1u);
        return result;
      }
    }

    v74 &= v74 - 1;
    v88 = v299;
    v269 = v299;
    if (v22)
    {
      *(*(v299 + 7) + v82) = v284;
      v31 = v283;
      v25 = *v283;
      v77 = v297;
      (*v283)(v290, v297);
      (v25)(v285, v77);
      goto LABEL_6;
    }

    v22 = v299;
    *&v299[8 * (v82 >> 6) + 64] |= 1 << v82;
    v89 = v82;
    v90 = *(v88 + 6) + v82 * v78;
    v78 = v290;
    v31 = v297;
    (v79)(v90, v290, v297);
    *(*(v22 + 56) + v89) = v284;
    v79 = v283;
    v25 = *v283;
    (*v283)(v78, v31);
    (v25)(v285, v31);
    v91 = *(v22 + 16);
    v86 = __OFADD__(v91, 1);
    v76 = v91 + 1;
    if (v86)
    {
      break;
    }

    *(v22 + 16) = v76;
LABEL_6:
    v76 = v80;
    v55 = v279;
    v71 = v278;
  }

  while (1)
  {
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    v22 = sub_100A5BC94((v76 > 1), v71, 1, v22);
LABEL_89:
    *(v22 + 16) = v71;
    v273 = ((*(v276 + 80) + 32) & ~*(v276 + 80));
    v279 = *(v276 + 72);
    sub_10031598C(v258, &v273[v22 + v279 * v25]);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v174 = type metadata accessor for Logger();
    v175 = sub_1000076D4(v174, qword_10177A560);
    sub_1003158CC(v259, v79);
    v176 = v255;
    (v294)(v255, v270, v75);
    v266 = v175;
    v71 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v177 = os_log_type_enabled(v71, v25);
    v274 = v31;
    v272 = v22;
    if (v177)
    {
      v178 = v79;
      v179 = swift_slowAlloc();
      v302 = swift_slowAlloc();
      *v179 = 134350083;
      *(v179 + 4) = v78;
      *(v179 + 12) = 2160;
      *(v179 + 14) = 1752392040;
      *(v179 + 22) = 2081;
      LODWORD(v296) = v25;
      sub_100315A3C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v180 = dispatch thunk of CustomStringConvertible.description.getter();
      v182 = v181;
      sub_100315930(v178);
      v183 = sub_1000136BC(v180, v182, &v302);

      *(v179 + 24) = v183;
      *(v179 + 32) = 2160;
      *(v179 + 34) = 1752392040;
      v184 = v297;
      *(v179 + 42) = 2081;
      v78 = v265;
      v185 = dispatch thunk of CustomStringConvertible.description.getter();
      v187 = v186;
      v286 = *v283;
      (v286)(v176, v184);
      v25 = sub_1000136BC(v185, v187, &v302);

      *(v179 + 44) = v25;
      _os_log_impl(&_mh_execute_header, v71, v296, "Create a new type: %{public}ld\ncircle: %{private,mask.hash}s,\nfor beacon:%{private,mask.hash}s.", v179, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      v286 = *v283;
      (v286)(v176, v75);
      sub_100315930(v79);
    }

    v79 = v280;
    v31 = v291;
    v74 = v256;
    v75 = v262;
    v299 = v277;

    v116 = v263;
    v22 = v261;
    if (!v75)
    {
      break;
    }

    v25 = 0;
    v71 = &v273[v188];
    while (1)
    {
      v76 = *(v277 + 2);
      if (v25 >= v76)
      {
        break;
      }

      sub_1003158CC(v71, v74);
      sub_100314FA4(v74, v78, v270);
      if (v116)
      {
        goto LABEL_167;
      }

      ++v25;
      sub_100315930(v74);
      v71 += v279;
      if (v75 == v25)
      {
        goto LABEL_99;
      }
    }

LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
  }

LABEL_99:

  if (*(v274 + 16))
  {
    v276 = *(v274 + 16);
    v189 = 0;
    v277 = &v273[v274];
    v75 = v31 + 32;
    v296 = _swiftEmptyDictionarySingleton;
    v290 = v31 + 32;
    while (1)
    {
      v76 = *(v274 + 16);
      if (v189 >= v76)
      {
        goto LABEL_162;
      }

      v263 = v116;
      v190 = v189;
      sub_1003158CC(&v277[v189 * v279], v22);
      v278 = v190 + 1;
      v25 = *(v22 + v275[8]);

      v191 = v296;
      v192 = swift_isUniquelyReferenced_nonNull_native();
      v302 = v191;
      v193 = *(v25 + 64);
      v285 = (v25 + 64);
      v194 = 1 << *(v25 + 32);
      if (v194 < 64)
      {
        v195 = ~(-1 << v194);
      }

      else
      {
        v195 = -1;
      }

      v74 = v195 & v193;
      v284 = (v194 + 63) >> 6;
      v289 = v25;

      for (i = 0; ; i = v116)
      {
        LODWORD(v295) = v192;
        if (!v74)
        {
          if (v284 <= (i + 1))
          {
            v198 = (i + 1);
          }

          else
          {
            v198 = v284;
          }

          v116 = (v198 - 1);
          while (1)
          {
            v197 = (i + 1);
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v197 >= v284)
            {
              v226 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
              v227 = v282;
              (*(*(v226 - 8) + 56))(v282, 1, 1, v226);
              v209 = v227;
              v74 = 0;
              goto LABEL_119;
            }

            v74 = *&v285[8 * v197];
            ++i;
            if (v74)
            {
              goto LABEL_118;
            }
          }

          __break(1u);
          goto LABEL_134;
        }

        v197 = i;
LABEL_118:
        v199 = __clz(__rbit64(v74));
        v74 &= v74 - 1;
        v200 = v199 | (v197 << 6);
        v201 = v288;
        v25 = v289;
        v202 = v291;
        v203 = v297;
        (v294)(v288, *(v289 + 6) + *(v291 + 72) * v200, v297);
        LOBYTE(v200) = *(*(v25 + 56) + v200);
        v204 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        v205 = *(v204 + 48);
        v206 = *(v202 + 32);
        v207 = v282;
        v208 = v201;
        v75 = v290;
        v206(v282, v208, v203);
        v207[v205] = v200;
        (*(*(v204 - 8) + 56))(v207, 0, 1, v204);
        v116 = v197;
        v209 = v207;
        v79 = v280;
LABEL_119:
        v78 = v281;
        sub_1000D2AD8(v209, v281, &unk_1016BC360, &qword_10139CBE0);
        v210 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        if ((*(*(v210 - 8) + 48))(v78, 1, v210) == 1)
        {
          v211 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
          (*(*(v211 - 8) + 56))(v79, 1, 1, v211);
        }

        else
        {
          v212 = *(v210 + 48);
          v25 = v116;
          v213 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
          v214 = *(v213 + 48);
          LOBYTE(v212) = *(v78 + v212);
          (v294)(v79, v78, v297);
          *(v79 + v214) = v212;
          v75 = v290;
          sub_10000B3A8(v78, &qword_1016BBEE0, &unk_10139CBF0);
          (*(*(v213 - 8) + 56))(v79, 0, 1, v213);
        }

        v215 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
        if ((*(*(v215 - 8) + 48))(v79, 1, v215) == 1)
        {
          break;
        }

        v216 = *(v215 + 48);
        v71 = *v75;
        v217 = v287;
        (*v75)(v287, v79, v297);
        v78 = *(v79 + v216);
        v25 = v296;
        v22 = sub_1000210EC(v217);
        v219 = *(v25 + 16);
        v220 = (v218 & 1) == 0;
        v221 = v219 + v220;
        if (__OFADD__(v219, v220))
        {
          goto LABEL_140;
        }

        v31 = v218;
        if (v296[3] >= v221)
        {
          if ((v295 & 1) == 0)
          {
            v25 = &v302;
            sub_1010062B8();
          }
        }

        else
        {
          sub_100FE88DC(v221, v295 & 1);
          v25 = v302;
          v222 = sub_1000210EC(v287);
          if ((v31 & 1) != (v223 & 1))
          {
            goto LABEL_166;
          }

          v22 = v222;
        }

        v296 = v302;
        if (v31)
        {
          (v286)(v287, v297);
          *(v296[7] + v22) = v78;
        }

        else
        {
          v25 = v296;
          v224 = v297;
          v296[(v22 >> 6) + 8] |= 1 << v22;
          (v71)(*(v25 + 48) + *(v291 + 72) * v22, v287, v224);
          *(*(v25 + 56) + v22) = v78;
          v225 = *(v25 + 16);
          v86 = __OFADD__(v225, 1);
          v76 = v225 + 1;
          if (v86)
          {
            goto LABEL_155;
          }

          v296[2] = v76;
        }

        v192 = 1;
      }

      v71 = v289;

      v22 = v261;
      sub_100315930(v261);
      v189 = v278;
      v74 = v260;
      v31 = v297;
      v116 = v263;
      if (v278 == v276)
      {
        goto LABEL_136;
      }
    }
  }

LABEL_134:

  v22 = v272;
LABEL_151:
  if (!sub_100315470(v22))
  {

    type metadata accessor for SPBeaconSharingError(0);
    v298 = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100315A3C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  sub_100315930(v259);
  return v22;
}