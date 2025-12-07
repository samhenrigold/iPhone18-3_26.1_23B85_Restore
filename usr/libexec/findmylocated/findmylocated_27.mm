uint64_t sub_1002E7000()
{
  v1 = v0;
  v28 = type metadata accessor for Fence.TriggerPosition();
  v2 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004B564(&qword_1005B1120, &qword_1004D3D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C2300;
  *(inited + 32) = 0xD000000000000015;
  v27[1] = inited + 32;
  *(inited + 40) = 0x80000001004DDC10;
  strcpy((inited + 48), "fenceTrigger");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 118;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 49;
  *(inited + 104) = 0xE100000000000000;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 1684632949;
  v6 = 0xE400000000000000;
  *(inited + 136) = 0xE400000000000000;
  v7 = type metadata accessor for FenceTriggerEnvelopeV1(0);
  *(inited + 144) = Fence.TriggerID.uuidString.getter();
  *(inited + 152) = v8;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x444965636E6566;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = Fence.ID.uuidString.getter();
  *(inited + 200) = v9;
  *(inited + 216) = &type metadata for String;
  strcpy((inited + 224), "triggerStatus");
  *(inited + 238) = -4864;
  v10 = *(v0 + *(v7 + 32));
  if (v10 <= 1)
  {
    if (*(v0 + *(v7 + 32)))
    {
      v6 = 0xE300000000000000;
      v11 = 7632239;
    }

    else
    {
      v6 = 0xE200000000000000;
      v11 = 28265;
    }
  }

  else if (v10 == 2)
  {
    v6 = 0xE500000000000000;
    v11 = 0x7265746E65;
  }

  else if (v10 == 3)
  {
    v11 = 1953069157;
  }

  else
  {
    v6 = 0xEC00000064656E69;
    v11 = 0x6D72657465646E75;
  }

  *(inited + 240) = v11;
  *(inited + 248) = v6;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 1702125924;
  *(inited + 280) = 0xE400000000000000;
  Date.timeIntervalSince1970.getter();
  v13 = [objc_allocWithZone(NSNumber) initWithDouble:v12];
  *(inited + 312) = sub_1000545A4(0, &qword_1005A8C80, NSNumber_ptr);
  *(inited + 288) = v13;
  v14 = sub_100207CD4(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A9E58, &qword_1004C33C0);
  swift_arrayDestroy();
  v15 = v28;
  (*(v2 + 16))(v4, v1 + *(v7 + 24), v28);
  v16 = (*(v2 + 88))(v4, v15);
  if (v16 == enum case for Fence.TriggerPosition.inside(_:) || v16 == enum case for Fence.TriggerPosition.outside(_:))
  {
    (*(v2 + 96))(v4, v15);
    v17 = *v4;
    v18 = objc_opt_self();
    *&v31 = 0;
    v19 = [v18 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v31];
    v20 = v31;
    if (v19)
    {
      v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v32 = &type metadata for Data;
      *&v31 = v21;
      *(&v31 + 1) = v23;
      sub_10004B064(&v31, v30);
      sub_100005F6C(v21, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v14;
      sub_1004528F8(v30, 0x6E6F697461636F6CLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      sub_1000049D0(v21, v23);

      return v29;
    }

    else
    {
      v26 = v20;

      v14 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    return v14;
  }

  if (v16 == enum case for Fence.TriggerPosition.undetermined(_:))
  {
    (*(v2 + 8))(v4, v15);
    return v14;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for FenceTriggerEnvelopeV1(uint64_t a1)
{
  result = qword_1005B1198;
  if (!qword_1005B1198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_1002E7590()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1002E765C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1002E7714()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002E77DC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002E804C(*a1);
  *a2 = result;
  return result;
}

void sub_1002E780C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 28265;
  v5 = 0xE500000000000000;
  v6 = 0x7265746E65;
  v7 = 0xE400000000000000;
  v8 = 1953069157;
  if (v2 != 3)
  {
    v8 = 0x6D72657465646E75;
    v7 = 0xEC00000064656E69;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7632239;
    v3 = 0xE300000000000000;
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

unint64_t sub_1002E78A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002E7D7C(*a1);
  *a2 = result;
  return result;
}

void sub_1002E78D0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684632949;
  v5 = 0xE400000000000000;
  v6 = 1702125924;
  if (v2 != 5)
  {
    v6 = 0x6E6F697461636F6CLL;
    v5 = 0xE800000000000000;
  }

  v7 = 0xED00007375746174;
  v8 = 0x5372656767697274;
  if (v2 != 3)
  {
    v8 = 118;
    v7 = 0xE100000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x444965636E6566;
    v3 = 0xE700000000000000;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001004DDC10;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

double sub_1002E79B0(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

uint64_t sub_1002E7ABC()
{
  BYTE8(v12) = 0;
  _StringGuts.grow(_:)(52);
  v1._countAndFlagsBits = 0x3A444965636E6566;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  type metadata accessor for Fence.ID();
  sub_1002E8098(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x726567676972740ALL;
  v3._object = 0xEC000000203A4449;
  String.append(_:)(v3);
  v4 = type metadata accessor for FenceTriggerEnvelopeV1(0);
  type metadata accessor for Fence.TriggerID();
  sub_1002E8098(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x6F697469736F700ALL;
  v6._object = 0xEB00000000203A6ELL;
  String.append(_:)(v6);
  type metadata accessor for Fence.TriggerPosition();
  sub_1002E8098(&qword_1005AE810, &type metadata accessor for Fence.TriggerPosition, &protocol conformance descriptor for Fence.TriggerPosition);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 10272;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  *&v12 = *(v0 + *(v4 + 32));
  _print_unlocked<A, B>(_:_:)();
  v9._countAndFlagsBits = 0x203A657461640A29;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  type metadata accessor for Date();
  sub_1002E8098(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  return *(&v12 + 1);
}

unint64_t sub_1002E7D7C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058A818, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002E7DC8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_1002E80E0(result + 32, v32);
  v7 = v32[0];
  sub_10004B064(v33, v31);
  v8 = *a3;
  result = sub_1001FDA10(v7);
  v10 = v8[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = v9;
  if (v8[3] < v13)
  {
    sub_10022CD60(v13, v5 & 1);
    result = sub_1001FDA10(v7);
    if ((v14 & 1) == (v15 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v16 = *a3;
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_11:
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + result) = v7;
    result = sub_10004B064(v31, (v16[7] + 32 * result));
    v19 = v16[2];
    v12 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v12)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v16[2] = v20;
    v5 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v18 = result;
  sub_100202EA8();
  result = v18;
  v16 = *a3;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = (v16[7] + 32 * result);
  sub_100004984(v17);
  result = sub_10004B064(v31, v17);
  v5 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v6 += 72;
    v3 = 1;
    while (1)
    {
      sub_1002E80E0(v6, v32);
      v7 = v32[0];
      sub_10004B064(v33, v31);
      v22 = *a3;
      result = sub_1001FDA10(v7);
      v24 = v22[2];
      v25 = (v23 & 1) == 0;
      v12 = __OFADD__(v24, v25);
      v26 = v24 + v25;
      if (v12)
      {
        goto LABEL_23;
      }

      v14 = v23;
      if (v22[3] < v26)
      {
        sub_10022CD60(v26, 1);
        result = sub_1001FDA10(v7);
        if ((v14 & 1) != (v27 & 1))
        {
          goto LABEL_5;
        }
      }

      v28 = *a3;
      if (v14)
      {
        v21 = (v28[7] + 32 * result);
        sub_100004984(v21);
        result = sub_10004B064(v31, v21);
      }

      else
      {
        v28[(result >> 6) + 8] |= 1 << result;
        *(v28[6] + result) = v7;
        result = sub_10004B064(v31, (v28[7] + 32 * result));
        v29 = v28[2];
        v12 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v12)
        {
          goto LABEL_24;
        }

        v28[2] = v30;
      }

      v6 += 40;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_1002E804C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058A8E0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002E8098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002E80E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B0108, &qword_1004D1698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E8198(uint64_t a1)
{
  result = type metadata accessor for Fence.ID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Fence.TriggerID();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Fence.TriggerPosition();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Date();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1002E8258()
{
  result = qword_1005B11E0;
  if (!qword_1005B11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B11E0);
  }

  return result;
}

unint64_t sub_1002E82B0()
{
  result = qword_1005B11E8;
  if (!qword_1005B11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B11E8);
  }

  return result;
}

unint64_t sub_1002E8304()
{
  v1 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  __chkstk_darwin(v1);
  v3 = &v11 - v2;
  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v11 = 0xD000000000000024;
  v12 = 0x80000001004E72B0;
  v4._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6B6F54726565700ALL;
  v5._object = 0xEC000000203A6E65;
  String.append(_:)(v5);
  v6._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x6148796C7065720ALL;
  v7._object = 0xEE00203A656C646ELL;
  String.append(_:)(v7);
  v8 = type metadata accessor for FindingConfigEnvelopeV1(0);
  sub_1002E8494(v0 + *(v8 + 24), v3);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  return v11;
}

uint64_t sub_1002E8494(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E8504(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B1328, &qword_1004D4080);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_1002E9564();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  v13 = 0;
  sub_100005F6C(v14, v9);
  sub_10010670C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000049D0(v14, v15);
  if (!v2)
  {
    v10 = v3[3];
    v14 = v3[2];
    v15 = v10;
    v13 = 1;
    sub_100005F6C(v14, v10);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000049D0(v14, v15);
    type metadata accessor for FindingConfigEnvelopeV1(0);
    LOBYTE(v14) = 2;
    type metadata accessor for Handle();
    sub_1002E9628(&qword_1005AE858, &protocol conformance descriptor for Handle);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002E8718@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v21 = sub_10004B564(&qword_1005B1318, &qword_1004D4078);
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v19 - v8;
  v10 = type metadata accessor for FindingConfigEnvelopeV1(0);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v22 = a1;
  sub_100011AEC(a1, v13);
  sub_1002E9564();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(v22);
  }

  v14 = v12;
  v19 = v6;
  v24 = 0;
  sub_1000F4D64();
  v15 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v14;
  *v14 = v23;
  v24 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14[1] = v23;
  type metadata accessor for Handle();
  LOBYTE(v23) = 2;
  sub_1002E9628(&qword_1005AE888, &protocol conformance descriptor for Handle);
  v17 = v19;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v7 + 8))(v9, v15);
  sub_1002E95B8(v17, v16 + *(v10 + 24));
  sub_1002E96C0(v16, v20, type metadata accessor for FindingConfigEnvelopeV1);
  sub_100004984(v22);
  return sub_1002E9728(v16, type metadata accessor for FindingConfigEnvelopeV1);
}

uint64_t sub_1002E8A88()
{
  v1 = 0x656B6F5472656570;
  if (*v0 != 1)
  {
    v1 = 0x6E6148796C706572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61446769666E6F63;
  }
}

uint64_t sub_1002E8AF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002E99B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002E8B1C(uint64_t a1)
{
  v2 = sub_1002E9564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E8B58(uint64_t a1)
{
  v2 = sub_1002E9564();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1002E8BC8()
{
  _StringGuts.grow(_:)(31);

  v0._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6E6148726565700ALL;
  v1._object = 0xED0000203A656C64;
  String.append(_:)(v1);
  type metadata accessor for FindingConfigSessionStopEnvelopeV1(0);
  type metadata accessor for Handle();
  sub_1002E9628(&qword_1005B02C8, &protocol conformance descriptor for Handle);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0xD00000000000002ELL;
}

uint64_t sub_1002E8CF4(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B1340, &qword_1004D4090);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_1002E966C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_100005F6C(v12, v9);
  sub_10010670C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000049D0(v12, v13);
  if (!v2)
  {
    type metadata accessor for FindingConfigSessionStopEnvelopeV1(0);
    LOBYTE(v12) = 1;
    type metadata accessor for Handle();
    sub_1002E9628(&qword_1005AE858, &protocol conformance descriptor for Handle);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002E8EBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = type metadata accessor for Handle();
  v17 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10004B564(&qword_1005B1330, &qword_1004D4088);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for FindingConfigSessionStopEnvelopeV1(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AEC(a1, a1[3]);
  sub_1002E966C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v16 = v8;
  v12 = v19;
  v11 = v20;
  v13 = v10;
  v23 = 0;
  sub_1000F4D64();
  v14 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v13 = v22;
  LOBYTE(v22) = 1;
  sub_1002E9628(&qword_1005AE888, &protocol conformance descriptor for Handle);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v7, v14);
  (*(v17 + 32))(&v13[*(v16 + 20)], v5, v11);
  sub_1002E96C0(v13, v18, type metadata accessor for FindingConfigSessionStopEnvelopeV1);
  sub_100004984(a1);
  return sub_1002E9728(v13, type metadata accessor for FindingConfigSessionStopEnvelopeV1);
}

uint64_t sub_1002E91E8()
{
  if (*v0)
  {
    return 0x646E614872656570;
  }

  else
  {
    return 0x656B6F5472656570;
  }
}

void sub_1002E922C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656B6F5472656570 && a2 == 0xE90000000000006ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x646E614872656570 && a2 == 0xEA0000000000656CLL)
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

uint64_t sub_1002E9318(uint64_t a1)
{
  v2 = sub_1002E966C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E9354(uint64_t a1)
{
  v2 = sub_1002E966C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E93EC(uint64_t a1)
{
  result = type metadata accessor for Handle();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1002E9490(uint64_t a1)
{
  sub_1002E950C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1002E950C(uint64_t a1)
{
  if (!qword_1005AE910)
  {
    type metadata accessor for Handle();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005AE910);
    }
  }
}

unint64_t sub_1002E9564()
{
  result = qword_1005B1320;
  if (!qword_1005B1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1320);
  }

  return result;
}

uint64_t sub_1002E95B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E9628(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Handle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002E966C()
{
  result = qword_1005B1338;
  if (!qword_1005B1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1338);
  }

  return result;
}

uint64_t sub_1002E96C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E9728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002E97AC()
{
  result = qword_1005B1348;
  if (!qword_1005B1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1348);
  }

  return result;
}

unint64_t sub_1002E9804()
{
  result = qword_1005B1350;
  if (!qword_1005B1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1350);
  }

  return result;
}

unint64_t sub_1002E985C()
{
  result = qword_1005B1358;
  if (!qword_1005B1358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1358);
  }

  return result;
}

unint64_t sub_1002E98B4()
{
  result = qword_1005B1360;
  if (!qword_1005B1360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1360);
  }

  return result;
}

unint64_t sub_1002E990C()
{
  result = qword_1005B1368;
  if (!qword_1005B1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1368);
  }

  return result;
}

unint64_t sub_1002E9964()
{
  result = qword_1005B1370;
  if (!qword_1005B1370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1370);
  }

  return result;
}

uint64_t sub_1002E99B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61446769666E6F63 && a2 == 0xEA00000000006174;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656B6F5472656570 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6148796C706572 && a2 == 0xEB00000000656C64)
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

uint64_t sub_1002E9AE4()
{
  v1 = type metadata accessor for HashAlgorithm();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v5 = type metadata accessor for FindingTokenEnvelopeV1(0);
  sub_1002EAF38(&qword_1005B1378, type metadata accessor for FindingTokenEnvelopeV1, &unk_1004D4390);
  v6._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v6);

  v7._object = 0x80000001004E7310;
  v7._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v7);
  String.append(_:)(*v0);
  v8._countAndFlagsBits = 0x7461446573616220;
  v8._object = 0xEB00000000203A65;
  String.append(_:)(v8);
  type metadata accessor for Date();
  sub_1002EAF38(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x5364657261687320;
  v10._object = 0xEF203A7465726365;
  String.append(_:)(v10);
  v11 = (&v0->_countAndFlagsBits + *(v5 + 24));
  v13 = v11[1];
  v22 = *v11;
  v12 = v22;
  v23 = v13;
  (*(v2 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v1);
  sub_100005F6C(v12, v13);
  sub_1000CA210();
  v14 = DataProtocol.hash(algorithm:)();
  v16 = v15;
  (*(v2 + 8))(v4, v1);
  sub_1000049D0(v22, v23);
  v17 = Data.hexString.getter();
  v19 = v18;
  sub_1000049D0(v14, v16);
  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  return v24;
}

uint64_t type metadata accessor for FindingTokenEnvelopeV1(uint64_t a1)
{
  result = qword_1005B13E8;
  if (!qword_1005B13E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E9DFC(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B1468, &qword_1004D44D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_1002EAE24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for FindingTokenEnvelopeV1(0);
    LOBYTE(v14) = 1;
    type metadata accessor for Date();
    sub_1002EAF38(&qword_1005A9848, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    sub_100005F6C(v14, v11);
    sub_10010670C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000049D0(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1002EA00C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v22 = type metadata accessor for Date();
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10004B564(&qword_1005B1458, &qword_1004D44C8);
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = v16 - v6;
  v8 = type metadata accessor for FindingTokenEnvelopeV1(0);
  __chkstk_darwin(v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100011AEC(a1, a1[3]);
  sub_1002EAE24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(a1);
  }

  else
  {
    v17 = v8;
    v18 = a1;
    v12 = v21;
    v11 = v22;
    LOBYTE(v24) = 0;
    v13 = v23;
    *v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[1] = v14;
    v16[2] = v14;
    LOBYTE(v24) = 1;
    sub_1002EAF38(&qword_1005A9820, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 32))(v10 + *(v17 + 20), v5, v11);
    v25 = 2;
    sub_1000F4D64();
    v16[1] = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v18;
    (*(v12 + 8))(v7, v13);
    *(v10 + *(v17 + 24)) = v24;
    sub_1002EAE78(v10, v19);
    sub_100004984(v15);
    sub_1002EAEDC(v10);
  }
}

uint64_t sub_1002EA3F0()
{
  v1 = 0x6574614465736162;
  if (*v0 != 1)
  {
    v1 = 0x6553646572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449726576726573;
  }
}

uint64_t sub_1002EA454@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002EB2C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002EA47C(uint64_t a1)
{
  v2 = sub_1002EAE24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002EA4B8(uint64_t a1)
{
  v2 = sub_1002EAE24();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1002EA548()
{
  result = qword_1005B1380;
  if (!qword_1005B1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1380);
  }

  return result;
}

uint64_t sub_1002EA5B4(uint64_t a1)
{
  v2 = sub_1002EAD7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002EA5F0(uint64_t a1)
{
  v2 = sub_1002EAD7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002EA70C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  _StringGuts.grow(_:)(22);
  a3(v7, v8, v9, v10);
  v11 = CustomStringConvertible.typeDescription.getter();

  v12._object = 0x80000001004E7310;
  v12._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.append(_:)(v13);
  return v11;
}

unint64_t sub_1002EA7CC()
{
  result = qword_1005B1388;
  if (!qword_1005B1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1388);
  }

  return result;
}

void sub_1002EA820(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6449726576726573 && a2 == 0xE800000000000000)
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

uint64_t sub_1002EA8A8(uint64_t a1)
{
  v2 = sub_1002EADD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002EA8E4(uint64_t a1)
{
  v2 = sub_1002EADD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002EA964@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = sub_10004B564(a2, a3);
  v19 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_100011AEC(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v6)
  {
    return sub_100004984(a1);
  }

  v12 = v19;
  v13 = v20;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  (*(v12 + 8))(v11, v9);
  result = sub_100004984(a1);
  *v13 = v14;
  v13[1] = v16;
  return result;
}

uint64_t sub_1002EAB30(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = sub_10004B564(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  v14 = *v7;
  sub_100011AEC(a1, a1[3]);
  v15();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1002EACE8(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1002EAD7C()
{
  result = qword_1005B1430;
  if (!qword_1005B1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1430);
  }

  return result;
}

unint64_t sub_1002EADD0()
{
  result = qword_1005B1448;
  if (!qword_1005B1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1448);
  }

  return result;
}

unint64_t sub_1002EAE24()
{
  result = qword_1005B1460;
  if (!qword_1005B1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1460);
  }

  return result;
}

uint64_t sub_1002EAE78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FindingTokenEnvelopeV1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EAEDC(uint64_t a1)
{
  v2 = type metadata accessor for FindingTokenEnvelopeV1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002EAF38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002EAFB4()
{
  result = qword_1005B1470;
  if (!qword_1005B1470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1470);
  }

  return result;
}

unint64_t sub_1002EB00C()
{
  result = qword_1005B1478;
  if (!qword_1005B1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1478);
  }

  return result;
}

unint64_t sub_1002EB064()
{
  result = qword_1005B1480;
  if (!qword_1005B1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1480);
  }

  return result;
}

unint64_t sub_1002EB0BC()
{
  result = qword_1005B1488;
  if (!qword_1005B1488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1488);
  }

  return result;
}

unint64_t sub_1002EB114()
{
  result = qword_1005B1490;
  if (!qword_1005B1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1490);
  }

  return result;
}

unint64_t sub_1002EB16C()
{
  result = qword_1005B1498;
  if (!qword_1005B1498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1498);
  }

  return result;
}

unint64_t sub_1002EB1C4()
{
  result = qword_1005B14A0;
  if (!qword_1005B14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B14A0);
  }

  return result;
}

unint64_t sub_1002EB21C()
{
  result = qword_1005B14A8;
  if (!qword_1005B14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B14A8);
  }

  return result;
}

unint64_t sub_1002EB274()
{
  result = qword_1005B14B0;
  if (!qword_1005B14B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B14B0);
  }

  return result;
}

uint64_t sub_1002EB2C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449726576726573 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574614465736162 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263)
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

unint64_t sub_1002EB3FC()
{
  sub_10004B564(&qword_1005B0BC0, &qword_1004D2868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BD0;
  *(inited + 32) = 112;
  v2 = v0[1];
  v8 = *v0;
  *(inited + 48) = v8;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x80000001004DDC10;
  *(inited + 96) = v2;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 118;
  *(inited + 136) = 0xE100000000000000;
  v6 = v0[2];
  v7 = v2;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v0[2];
  sub_10007C30C(&v8, v5);
  sub_10007C30C(&v7, v5);
  sub_10007C30C(&v6, v5);
  v3 = sub_100207B7C(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005B0088, &qword_1004D38F0);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_1002EB520()
{
  _StringGuts.grow(_:)(37);

  String.append(_:)(*v0);
  v1._object = 0x80000001004E7290;
  v1._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v1);
  String.append(_:)(v0[1]);
  v2._countAndFlagsBits = 540702218;
  v2._object = 0xE400000000000000;
  String.append(_:)(v2);
  String.append(_:)(v0[2]);
  return 2112112;
}

uint64_t sub_1002EB5D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1000110D8(112, 0xE100000000000000), (v5 & 1) != 0) && (sub_10000709C(*(a1 + 56) + 32 * v4, v15), sub_10004B564(&qword_1005A9268, &unk_1004D38E0), (swift_dynamicCast() & 1) != 0))
  {
    if (*(a1 + 16) && (v6 = sub_1000110D8(0xD000000000000015, 0x80000001004DDC10), (v7 & 1) != 0) && (sub_10000709C(*(a1 + 56) + 32 * v6, v15), (swift_dynamicCast() & 1) != 0))
    {
      if (*(a1 + 16) && (v8 = sub_1000110D8(118, 0xE100000000000000), (v9 & 1) != 0))
      {
        sub_10000709C(*(a1 + 56) + 32 * v8, v15);

        result = swift_dynamicCast();
        if (result)
        {
          *a2 = v13;
          a2[1] = v14;
          a2[2] = v13;
          a2[3] = v14;
          a2[4] = v13;
          a2[5] = v14;
          return result;
        }
      }

      else
      {
      }

      v11 = 4;
    }

    else
    {

      v11 = 3;
    }
  }

  else
  {

    v11 = 2;
  }

  sub_10005A48C();
  swift_allocError();
  *v12 = v11;
  return swift_willThrow();
}

unint64_t sub_1002EB7B8()
{
  v1 = type metadata accessor for HashAlgorithm();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v23 = 0xD00000000000001FLL;
  v24 = 0x80000001004E7330;
  v5 = type metadata accessor for OwnerTokenEnvelopeV1(0);
  type metadata accessor for Date();
  sub_1002EC774(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x7954657261687320;
  v7._object = 0xEC000000203A6570;
  String.append(_:)(v7);
  LOBYTE(v21) = *(v0 + *(v5 + 20));
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x5364657261687320;
  v9._object = 0xEF203A7465726365;
  String.append(_:)(v9);
  v10 = (v0 + *(v5 + 28));
  v12 = v10[1];
  v21 = *v10;
  v11 = v21;
  v22 = v12;
  (*(v2 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v1);
  sub_100005F6C(v11, v12);
  sub_1000CA210();
  v13 = DataProtocol.hash(algorithm:)();
  v15 = v14;
  (*(v2 + 8))(v4, v1);
  sub_1000049D0(v21, v22);
  v16 = Data.hexString.getter();
  v18 = v17;
  sub_1000049D0(v13, v15);
  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  return v23;
}

uint64_t sub_1002EBA5C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B1560, &qword_1004D4930);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_1002EC60C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for UUID();
  sub_1002EC774(&qword_1005AAB60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for OwnerTokenEnvelopeV1(0);
    LOBYTE(v14) = *(v3 + *(v9 + 20));
    v16 = 1;
    sub_1001B3AD0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 2;
    type metadata accessor for Date();
    sub_1002EC774(&qword_1005A9848, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v16 = 3;
    sub_100005F6C(v14, v11);
    sub_10010670C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000049D0(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002EBCF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v24 = type metadata accessor for Date();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v25 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10004B564(&qword_1005B1550, &qword_1004D4928);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v20 - v7;
  v9 = type metadata accessor for OwnerTokenEnvelopeV1(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AEC(a1, a1[3]);
  sub_1002EC60C();
  v27 = v8;
  v12 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return sub_100004984(a1);
  }

  v13 = v4;
  v29 = v9;
  v14 = v23;
  v15 = v24;
  LOBYTE(v30) = 0;
  sub_1002EC774(&qword_1005AAB30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v16 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v25 = v5;
  v17(v11, v16);
  v31 = 1;
  sub_1001B39BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v29;
  v11[*(v29 + 20)] = v30;
  LOBYTE(v30) = 2;
  sub_1002EC774(&qword_1005A9820, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v22 + 32))(&v11[*(v18 + 24)], v13, v15);
  v31 = 3;
  sub_1000F4D64();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v27, v28);
  *&v11[*(v18 + 28)] = v30;
  sub_1002EC660(v11, v21);
  sub_100004984(a1);
  return sub_1002EC6C4(v11);
}

uint64_t sub_1002EC1EC()
{
  v1 = 0x696669746E656469;
  v2 = 0x6574614465736162;
  if (*v0 != 2)
  {
    v2 = 0x6553646572616873;
  }

  if (*v0)
  {
    v1 = 0x7079546572616873;
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

uint64_t sub_1002EC278@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002EC994(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002EC2A0(uint64_t a1)
{
  v2 = sub_1002EC60C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002EC2DC(uint64_t a1)
{
  v2 = sub_1002EC60C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002EC34C(uint64_t a1)
{
  v2 = sub_1002EC720();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002EC388(uint64_t a1)
{
  v2 = sub_1002EC720();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002EC3C4(void *a1)
{
  v2 = sub_10004B564(&qword_1005B1568, &qword_1004D4938);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100011AEC(a1, a1[3]);
  sub_1002EC720();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t type metadata accessor for OwnerTokenEnvelopeV1(uint64_t a1)
{
  result = qword_1005B1510;
  if (!qword_1005B1510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002EC578(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1002EC60C()
{
  result = qword_1005B1558;
  if (!qword_1005B1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1558);
  }

  return result;
}

uint64_t sub_1002EC660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerTokenEnvelopeV1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EC6C4(uint64_t a1)
{
  v2 = type metadata accessor for OwnerTokenEnvelopeV1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002EC720()
{
  result = qword_1005B1570;
  if (!qword_1005B1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1570);
  }

  return result;
}

uint64_t sub_1002EC774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002EC7E0()
{
  result = qword_1005B1578;
  if (!qword_1005B1578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1578);
  }

  return result;
}

unint64_t sub_1002EC838()
{
  result = qword_1005B1580;
  if (!qword_1005B1580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1580);
  }

  return result;
}

unint64_t sub_1002EC890()
{
  result = qword_1005B1588;
  if (!qword_1005B1588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1588);
  }

  return result;
}

unint64_t sub_1002EC8E8()
{
  result = qword_1005B1590;
  if (!qword_1005B1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1590);
  }

  return result;
}

unint64_t sub_1002EC940()
{
  result = qword_1005B1598;
  if (!qword_1005B1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1598);
  }

  return result;
}

uint64_t sub_1002EC994(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079546572616873 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574614465736162 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263)
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

unint64_t sub_1002ECB10()
{
  result = qword_1005B15A0;
  if (!qword_1005B15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B15A0);
  }

  return result;
}

unint64_t sub_1002ECB68()
{
  result = qword_1005B15A8;
  if (!qword_1005B15A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B15A8);
  }

  return result;
}

unint64_t sub_1002ECBC0()
{
  result = qword_1005B15B0;
  if (!qword_1005B15B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B15B0);
  }

  return result;
}

unint64_t sub_1002ECCD8()
{
  result = qword_1005B15B8;
  if (!qword_1005B15B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B15B8);
  }

  return result;
}

unint64_t sub_1002ECD30()
{
  result = qword_1005B15C0;
  if (!qword_1005B15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B15C0);
  }

  return result;
}

unint64_t sub_1002ECD88()
{
  result = qword_1005B15C8;
  if (!qword_1005B15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B15C8);
  }

  return result;
}

Swift::Int sub_1002ECDDC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002ECE50()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1002ECE94@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002ECF8C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002ECF8C(uint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1002ECFB0()
{
  result = qword_1005B15D0;
  if (!qword_1005B15D0)
  {
    sub_10004B610(&qword_1005B15D8, qword_1004D4CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B15D0);
  }

  return result;
}

unint64_t sub_1002ED018()
{
  result = qword_1005B15E0;
  if (!qword_1005B15E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B15E0);
  }

  return result;
}

unint64_t sub_1002ED080()
{
  result = qword_1005B15E8;
  if (!qword_1005B15E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B15E8);
  }

  return result;
}

uint64_t sub_1002ED140()
{
  sub_100134068(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1002ED178()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_1002ED1C0, v0, 0);
}

uint64_t sub_1002ED1C0()
{
  v1 = v0[2];
  v0[4] = *(v1 + 128);
  v0[5] = &unk_1004D5158;
  v0[6] = v1;
  type metadata accessor for InternetMessaging();

  swift_getWitnessTable();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[7] = v3;
  v0[8] = v2;

  return _swift_task_switch(sub_1002ED290, v3, v2);
}

uint64_t sub_1002ED290()
{
  v1 = *(v0 + 16);
  dispatch thunk of InternetMessaging.set(didDeliverCallback:)();

  return _swift_task_switch(sub_1002ED314, v1, 0);
}

uint64_t sub_1002ED314()
{
  v1 = v0[2];
  v0[9] = &unk_1004D5130;
  v0[10] = v1;
  v2 = v0[7];
  v3 = v0[8];

  return _swift_task_switch(sub_1002ED3A0, v2, v3);
}

uint64_t sub_1002ED3A0()
{
  v1 = *(v0 + 16);
  dispatch thunk of InternetMessaging.set(messageReceivedCallback:)();

  return _swift_task_switch(sub_1002ED424, v1, 0);
}

uint64_t sub_1002ED424()
{
  v1 = v0[2];
  v0[11] = &unk_1004D5108;
  v0[12] = v1;
  v2 = v0[7];
  v3 = v0[8];

  return _swift_task_switch(sub_1002ED4B0, v2, v3);
}

uint64_t sub_1002ED4B0()
{
  v1 = *(v0 + 16);
  dispatch thunk of InternetMessaging.set(dictionaryReceivedCallback:)();

  return _swift_task_switch(sub_1002ED534, v1, 0);
}

uint64_t sub_1002ED534()
{
  v1 = v0[2];
  v0[13] = &unk_1004D50E0;
  v0[14] = v1;
  v2 = v0[7];
  v3 = v0[8];

  return _swift_task_switch(sub_1002ED5C0, v2, v3);
}

uint64_t sub_1002ED5C0()
{
  v1 = *(v0 + 16);
  dispatch thunk of InternetMessaging.set(accountChangedCallback:)();

  return _swift_task_switch(sub_1002ED644, v1, 0);
}

uint64_t sub_1002ED644()
{
  v1 = v0[2];
  v0[15] = &unk_1004D50B8;
  v0[16] = v1;
  v2 = v0[7];
  v3 = v0[8];

  return _swift_task_switch(sub_1002ED6D0, v2, v3);
}

uint64_t sub_1002ED6D0()
{
  v1 = *(v0 + 16);
  dispatch thunk of InternetMessaging.set(devicesChangedCallback:)();

  return _swift_task_switch(sub_1002ED754, v1, 0);
}

uint64_t sub_1002ED754()
{
  v1 = v0[2];
  v0[17] = &unk_1004D5050;
  v0[18] = v1;
  v2 = v0[7];
  v3 = v0[8];

  return _swift_task_switch(sub_1002ED7E0, v2, v3);
}

uint64_t sub_1002ED7E0()
{
  dispatch thunk of InternetMessaging.set(sessionInviteCallback:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002ED854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_1002ED904(a1, a2, a3);
}

uint64_t sub_1002ED904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = type metadata accessor for Destination();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v4[13] = *(v8 + 64);
  v4[14] = swift_task_alloc();
  v9 = type metadata accessor for Account();
  v4[15] = v9;
  v10 = *(v9 - 8);
  v4[16] = v10;
  v4[17] = *(v10 + 64);
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_1002EDAC0, v3, 0);
}

uint64_t sub_1002EDAC0()
{
  v1 = v0[16];
  v2 = v0[14];
  v16 = v0[17];
  v17 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v21 = v0[18];
  v22 = v5;
  v6 = v0[7];
  v7 = v0[8];
  v19 = v0[15];
  v20 = v6;
  v18 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  (*(v1 + 16))();
  (*(v3 + 16))(v2, v9, v4);
  (*(v7 + 16))(v5, v8, v6);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = (v16 + *(v3 + 80) + v10) & ~*(v3 + 80);
  v12 = (v17 + *(v7 + 80) + v11) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v0[19] = v13;
  *(v13 + 16) = *(v18 + 80);
  *(v13 + 24) = *(v18 + 88);
  (*(v1 + 32))(v13 + v10, v21, v19);
  (*(v3 + 32))(v13 + v11, v2, v4);
  (*(v7 + 32))(v13 + v12, v22, v20);
  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = sub_1002EDCCC;

  return sub_1002EFDF0(&unk_1004D5170, v13);
}

uint64_t sub_1002EDCCC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002EDE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10000368C;

  return sub_1002EDF00(a1, a2, a3, a4, a5);
}

uint64_t sub_1002EDF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v8 = type metadata accessor for MessageContext();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v6[10] = *(v9 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = *(v7 + 80);
  v6[13] = *(v7 + 88);
  v10 = type metadata accessor for Message();
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v6[16] = *(v11 + 64);
  v6[17] = swift_task_alloc();
  v12 = type metadata accessor for Destination();
  v6[18] = v12;
  v13 = *(v12 - 8);
  v6[19] = v13;
  v6[20] = *(v13 + 64);
  v6[21] = swift_task_alloc();
  v14 = type metadata accessor for Account();
  v6[22] = v14;
  v15 = *(v14 - 8);
  v6[23] = v15;
  v6[24] = *(v15 + 64);
  v6[25] = swift_task_alloc();

  return _swift_task_switch(sub_1002EE130, v5, 0);
}

uint64_t sub_1002EE130()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v27 = *(v0 + 200);
  v28 = v2;
  v22 = *(v0 + 192);
  v23 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v25 = *(v0 + 176);
  v5 = *(v0 + 136);
  v29 = v5;
  v21 = *(v0 + 128);
  v6 = *(v0 + 112);
  v19 = *(v0 + 120);
  v26 = v6;
  v7 = *(v0 + 88);
  v31 = v7;
  v8 = *(v0 + 64);
  v33 = *(v0 + 72);
  v30 = v8;
  v20 = *(v0 + 48);
  v32 = *(v0 + 40);
  v9 = *(v0 + 24);
  v18 = *(v0 + 32);
  v24 = *(v0 + 96);
  (*(v1 + 16))();
  (*(v4 + 16))(v2, v9, v3);
  (*(v19 + 16))(v5, v18, v6);
  (*(v33 + 16))(v7, v20, v8);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = (v22 + *(v4 + 80) + v10) & ~*(v4 + 80);
  v12 = (v23 + *(v19 + 80) + v11) & ~*(v19 + 80);
  v13 = (v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v33 + 80) + v13 + 8) & ~*(v33 + 80);
  v15 = swift_allocObject();
  *(v0 + 208) = v15;
  *(v15 + 16) = v24;
  (*(v1 + 32))(v15 + v10, v27, v25);
  (*(v4 + 32))(v15 + v11, v28, v3);
  (*(v19 + 32))(v15 + v12, v29, v26);
  *(v15 + v13) = v32;
  (*(v33 + 32))(v15 + v14, v31, v30);

  v16 = swift_task_alloc();
  *(v0 + 216) = v16;
  *v16 = v0;
  v16[1] = sub_1002EE3E8;

  return sub_1002EFDF0(&unk_1004D5148, v15);
}

uint64_t sub_1002EE3E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002EE578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000368C;

  return sub_1002EE638(a1, a2, a3, a4);
}

uint64_t sub_1002EE638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  v6 = type metadata accessor for MessageContext();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v5[10] = *(v7 + 64);
  v5[11] = swift_task_alloc();
  v8 = type metadata accessor for Destination();
  v5[12] = v8;
  v9 = *(v8 - 8);
  v5[13] = v9;
  v5[14] = *(v9 + 64);
  v5[15] = swift_task_alloc();
  v10 = type metadata accessor for Account();
  v5[16] = v10;
  v11 = *(v10 - 8);
  v5[17] = v11;
  v5[18] = *(v11 + 64);
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002EE7F8, v4, 0);
}

uint64_t sub_1002EE7F8()
{
  v1 = v0[17];
  v2 = v0[15];
  v21 = v0[19];
  v22 = v2;
  v17 = v0[14];
  v18 = v0[18];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v19 = v0[16];
  v7 = v0[8];
  v6 = v0[9];
  v23 = v7;
  v24 = v5;
  v20 = v0[7];
  v8 = v0[5];
  v25 = v0[4];
  v9 = v0[3];
  (*(v1 + 16))();
  (*(v3 + 16))(v2, v9, v4);
  (*(v6 + 16))(v5, v8, v7);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = (v18 + *(v3 + 80) + v10) & ~*(v3 + 80);
  v12 = (v17 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (*(v6 + 80) + v12 + 8) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v0[20] = v14;
  *(v14 + 16) = *(v20 + 80);
  *(v14 + 24) = *(v20 + 88);
  (*(v1 + 32))(v14 + v10, v21, v19);
  (*(v3 + 32))(v14 + v11, v22, v4);
  *(v14 + v12) = v25;
  (*(v6 + 32))(v14 + v13, v24, v23);

  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  v15[1] = sub_1002EEA2C;

  return sub_1002EFDF0(&unk_1004D5120, v14);
}

uint64_t sub_1002EEA2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002EEB98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002EEC30(a1);
}

uint64_t sub_1002EEC30(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_1002EEC78, v1, 0);
}

uint64_t sub_1002EEC78()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = *(v1 + 80);
  v3[3] = *(v1 + 88);
  v3[4] = v2;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1002EED68;

  return sub_1002EFDF0(&unk_1004D50F8, v3);
}

uint64_t sub_1002EED68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002EEE78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002EEF10(a1);
}

uint64_t sub_1002EEF10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_1002EEF58, v1, 0);
}

uint64_t sub_1002EEF58()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = *(v1 + 80);
  v3[3] = *(v1 + 88);
  v3[4] = v2;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1002F27B4;

  return sub_1002EFDF0(&unk_1004D50D0, v3);
}

uint64_t sub_1002EF048(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002EF0E0(a1);
}

uint64_t sub_1002EF0E0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for SessionMessagingInvite();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1002EF1D0, v1, 0);
}

uint64_t sub_1002EF1D0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[2], v2);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = *(v4 + 80);
  *(v6 + 24) = *(v4 + 88);
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1002EF308;

  return sub_1002EFDF0(&unk_1004D5068, v6);
}

uint64_t sub_1002EF308()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002EF434()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_1002EF47C, v0, 0);
}

uint64_t sub_1002EF47C()
{
  *(v0 + 32) = *(*(v0 + 16) + 128);
  type metadata accessor for InternetMessaging();
  swift_getWitnessTable();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002EF528, v2, v1);
}

uint64_t sub_1002EF528()
{
  dispatch thunk of InternetMessaging.start()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002EF58C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for SystemVersionNumber();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002EF658, v2, 0);
}

uint64_t sub_1002EF658()
{
  v31 = v0;
  if (qword_1005A8110 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005B15F0);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);
  v8(v1, v5, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[6];
  v12 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  if (v11)
  {
    v29 = v10;
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 136315394;
    sub_1002F1ADC(&qword_1005B02E0, &type metadata accessor for SystemVersionNumber, &protocol conformance descriptor for SystemVersionNumber);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_10000D01C(v17, v19, &v30);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_10000D01C(v22, v24, &v30);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v9, v29, "STUB: migrate from %s to %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = v0[1];

  return v27();
}

void *sub_1002EF940()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1002EF980()
{
  sub_1002EF940();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002EFA3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v7 = type metadata accessor for IDSTransportService(0, *(a1 + 80), *(a1 + 88), v6);
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v7, a2);
}

uint64_t sub_1002EFAF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1002EF58C(a1, a2);
}

uint64_t sub_1002EFB94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v7 = type metadata accessor for IDSTransportService(0, *(a1 + 80), *(a1 + 88), v6);
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v7, a2);
}

uint64_t sub_1002EFC48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002ED178();
}

uint64_t sub_1002EFCD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1002EF434();
}

uint64_t sub_1002EFD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IDSTransportService(0, *(a1 + 80), *(a1 + 88), a4);
  swift_getWitnessTable();
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1002EFDF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_1002EFE3C, v2, 0);
}

uint64_t sub_1002EFE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  type metadata accessor for IDSTransportService(255, *(*(v4 + 40) + 80), *(*(v4 + 40) + 88), a4);
  swift_getWitnessTable();
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  v7 = *(v4 + 16);
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v8 = swift_task_alloc();
  *(v4 + 56) = v8;
  *v8 = v4;
  v8[1] = sub_1002EFF50;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1002EFF50()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1000161BC, v1, 0);
}

uint64_t sub_1002F007C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v7 = *a3;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v9 = *(v7 + 80);
  v5[24] = v9;
  v10 = *(v7 + 88);
  v5[25] = v10;
  v5[26] = type metadata accessor for IDSTransportService.WeakClient(255, v9, v10, v11);
  v5[27] = swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for Optional();
  v5[28] = v12;
  v5[29] = *(v12 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_1002F027C, a3, 0);
}

void sub_1002F027C()
{
  v84 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 160);
  v4 = *(v0 + 112);
  swift_beginAccess();
  v63 = v4;
  v5 = *(v4 + 144);
  v6 = v5 + 64;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v64 = (63 - v8) >> 6;
  v71 = (v2 - 8);
  v72 = (v3 + 16);
  v81 = (v3 + 32);
  v82 = v5;
  v70 = (v1 + 32);
  v66 = v3;
  v67 = v5;
  v68 = (v3 + 8);
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = v2;
  v65 = v2;
  v69 = v6;
  while (v9)
  {
    v16 = v11;
    v17 = v10;
LABEL_16:
    v20 = *(v0 + 240);
    v79 = *(v0 + 216);
    v21 = *(v0 + 184);
    v22 = *(v0 + 152);
    v23 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v24 = v23 | (v17 << 6);
    (*(v66 + 16))(v21, *(v67 + 48) + *(v66 + 72) * v24, v22);
    v25 = *(*(v67 + 56) + 8 * v24);
    v26 = *(v16 + 48);
    (*(v66 + 32))(v20, v21, v22);
    *(v20 + v26) = v25;
    v11 = v16;
    v27 = *(v16 - 8);
    (*(v27 + 56))(v20, 0, 1, v79);

LABEL_17:
    v28 = *(v0 + 248);
    v29 = *(v0 + 216);
    (*v70)(v28, *(v0 + 240), *(v0 + 224));
    if ((*(v27 + 48))(v28, 1, v29) == 1)
    {

      sub_1002F1ADC(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v60 = Dictionary.count.getter();

      v61 = Dictionary.count.getter();

      if (v60 < v61)
      {
        *(v63 + 144) = v82;
      }

      v62 = *(v0 + 8);

      v62();
      return;
    }

    v30 = *(*(v0 + 248) + *(v11 + 48));
    (*v81)(*(v0 + 176));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = *(v0 + 136);
      v32 = *(v0 + 144);
      v34 = *(v0 + 128);
      v75 = *(v0 + 120);
      v77 = *(v30 + 24);
      v35 = Strong;
      v36 = type metadata accessor for TaskPriority();
      v37 = *(v36 - 8);
      buf = *(v0 + 192);
      (*(v37 + 56))(v32, 1, 1, v36);
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      *(v38 + 24) = 0;
      *(v38 + 32) = buf;
      *(v38 + 48) = v75;
      *(v38 + 56) = v34;
      *(v38 + 64) = v35;
      *(v38 + 72) = v77;
      sub_10007CE68(v32, v33);
      LODWORD(v33) = (*(v37 + 48))(v33, 1, v36);

      swift_unknownObjectRetain();
      v39 = *(v0 + 136);
      if (v33 == 1)
      {
        sub_1002F1BF8(*(v0 + 136));
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v37 + 8))(v39, v36);
      }

      if (*(v38 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v54 = dispatch thunk of Actor.unownedExecutor.getter();
        v56 = v55;
        swift_unknownObjectRelease();
      }

      else
      {
        v54 = 0;
        v56 = 0;
      }

      v57 = **(v0 + 104);
      v58 = swift_allocObject();
      *(v58 + 16) = &unk_1004D5098;
      *(v58 + 24) = v38;

      if (v56 | v54)
      {
        v12 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v54;
        *(v0 + 40) = v56;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(v0 + 176);
      v14 = *(v0 + 144);
      v15 = *(v0 + 152);
      *(v0 + 72) = 1;
      *(v0 + 80) = v12;
      *(v0 + 88) = v57;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_1002F1BF8(v14);
      (*v68)(v13, v15);
      v11 = v65;
      v6 = v69;
    }

    else
    {
      sub_1002F1ADC(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      type metadata accessor for Dictionary();
      Dictionary.removeValue(forKey:)();

      if (qword_1005A8110 != -1)
      {
        swift_once();
      }

      v41 = *(v0 + 168);
      v40 = *(v0 + 176);
      v42 = *(v0 + 152);
      v43 = type metadata accessor for Logger();
      sub_10000A6F0(v43, qword_1005B15F0);
      (*v72)(v41, v40, v42);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 168);
      v48 = *(v0 + 176);
      v49 = *(v0 + 152);
      if (v46)
      {
        bufa = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v83 = v78;
        *bufa = 136446210;
        sub_1002F1ADC(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v80 = v48;
        v52 = v51;
        v76 = *v68;
        (*v68)(v47, v49);
        v53 = sub_10000D01C(v50, v52, &v83);

        *(bufa + 4) = v53;
        _os_log_impl(&_mh_execute_header, v44, v45, "Removing zeroed out weak client id: %{public}s", bufa, 0xCu);
        sub_100004984(v78);

        v11 = v65;

        v76(v80, v49);
      }

      else
      {

        v59 = *v68;
        (*v68)(v47, v49);
        v59(v48, v49);
      }

      v6 = v69;
    }
  }

  if (v64 <= v10 + 1)
  {
    v18 = v10 + 1;
  }

  else
  {
    v18 = v64;
  }

  v19 = v18 - 1;
  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v17 >= v64)
    {
      v27 = *v71;
      (*(*v71 + 56))(*(v0 + 240), 1, 1, *(v0 + 216));
      v9 = 0;
      v10 = v19;
      goto LABEL_17;
    }

    v9 = *(v6 + 8 * v17);
    ++v10;
    if (v9)
    {
      v16 = v11;
      v10 = v17;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1002F0BC4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (a3 + *a3);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10000368C;

  return v11(a5, a6);
}

uint64_t sub_1002F0CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v13 = (*(a2 + 24) + **(a2 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10000368C;

  return v13(a3, a4, a5, ObjectType, a2);
}

uint64_t sub_1002F0E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v17 = (*(a2 + 32) + **(a2 + 32));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_10000368C;

  return v17(a3, a4, a5, a6, a7, ObjectType, a2);
}

uint64_t sub_1002F0F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v15 = (*(a2 + 40) + **(a2 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10000368C;

  return v15(a3, a4, a5, a6, ObjectType, a2);
}

uint64_t sub_1002F10D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a2 + 48) + **(a2 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100003690;

  return v9(a3, ObjectType, a2);
}

uint64_t sub_1002F1204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1002F1228, 0, 0);
}

uint64_t sub_1002F1228()
{
  v8 = v0[3];
  ObjectType = swift_getObjectType();

  v3 = sub_10023F494(v2);
  v0[5] = v3;

  v7 = (*(v8 + 56) + **(v8 + 56));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1002F136C;
  v5 = v0[3];

  return v7(v3, ObjectType, v5);
}

uint64_t sub_1002F136C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002F147C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_1002F14A0, 0, 0);
}

uint64_t sub_1002F14A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = *(v2 + 56);
  v3 = *(v2 + 80);
  swift_unknownObjectRetain();
  *(v2 + 48) = v3;
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_10004B564(&qword_1005B1708, &qword_1004D50A8);
  if (swift_dynamicCast())
  {
    *(v2 + 88) = *(v2 + 32);
    v4 = swift_task_alloc();
    *(v2 + 96) = v4;
    *v4 = v2;
    v4[1] = sub_1002F15E8;
    v5 = *(v2 + 72);

    return sub_10045E474(v5);
  }

  else
  {
    v7 = *(v2 + 8);

    return v7();
  }
}

uint64_t sub_1002F15E8()
{

  return _swift_task_switch(sub_1002F16E4, 0, 0);
}

uint64_t sub_1002F16E4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F1744()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0018);
  sub_10000A6F0(v0, qword_1005E0018);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002F17C4()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005B15F0);
  v1 = sub_10000A6F0(v0, qword_1005B15F0);
  if (qword_1005A8108 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0018);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002F188C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002EF048(a1);
}

uint64_t sub_1002F1924(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(type metadata accessor for SessionMessagingInvite() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000368C;

  return sub_1002F147C(a1, a2, v2 + v8, v6);
}

uint64_t sub_1002F1A18(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000368C;

  return sub_1002F007C(a1, a2, v6, v7, v8);
}

uint64_t sub_1002F1ADC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002F1B24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_1002F0BC4(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_1002F1BF8(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002F1C60()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003690;

  return sub_100273EE0(v2);
}

uint64_t sub_1002F1D0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002EEE78(a1);
}

uint64_t sub_1002F1DA4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_1002F1204(a1, a2, v6);
}

uint64_t sub_1002F1E64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002EEB98(a1);
}

uint64_t sub_1002F1EFC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100003690;

  return sub_1002F10D0(a1, a2, v6);
}

uint64_t sub_1002F1FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000368C;

  return sub_1002EE578(a1, a2, a3, a4);
}

uint64_t sub_1002F207C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Account() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Destination() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for MessageContext() - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = *(v2 + v11);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10000368C;

  return sub_1002F0F7C(a1, a2, v2 + v7, v2 + v10, v14, v2 + v13);
}

uint64_t sub_1002F224C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10000368C;

  return sub_1002EDE38(a1, a2, a3, a4, a5);
}

uint64_t sub_1002F2314(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Account() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Destination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = *(type metadata accessor for Message() - 8);
  v12 = (v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(type metadata accessor for MessageContext() - 8);
  v15 = (v13 + *(v14 + 80) + 8) & ~*(v14 + 80);
  v16 = *(v2 + v13);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10000368C;

  return sub_1002F0E14(a1, a2, v2 + v6, v2 + v9, v2 + v12, v16, v2 + v15);
}

uint64_t sub_1002F2550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_1002ED854(a1, a2, a3);
}

uint64_t sub_1002F2600(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Account() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for Destination() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000368C;

  return sub_1002F0CC8(a1, a2, v2 + v7, v2 + v10, v2 + v13);
}

uint64_t sub_1002F27CC@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002F2A80(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1002F28BC()
{
  result = qword_1005B1710;
  if (!qword_1005B1710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1710);
  }

  return result;
}

unint64_t sub_1002F2914()
{
  result = qword_1005B1718;
  if (!qword_1005B1718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1718);
  }

  return result;
}

unint64_t sub_1002F296C()
{
  result = qword_1005B1720;
  if (!qword_1005B1720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1720);
  }

  return result;
}

unint64_t sub_1002F29C4()
{
  result = qword_1005B1728;
  if (!qword_1005B1728)
  {
    sub_10004B610(&qword_1005B1730, qword_1004D5290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1728);
  }

  return result;
}

unint64_t sub_1002F2A2C()
{
  result = qword_1005B1738;
  if (!qword_1005B1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1738);
  }

  return result;
}

uint64_t sub_1002F2A80(uint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1002F2A90()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0030);
  v1 = sub_10000A6F0(v0, qword_1005E0030);
  if (qword_1005A8120 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0048);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002F2B78()
{
  v0[3] = *(v0[2] + 128);

  sub_10004B564(&qword_1005AD518, &qword_1004D54F0);
  sub_1002F46D8();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[4] = v2;
  v0[5] = v1;

  return _swift_task_switch(sub_1002F2C18, v2, v1);
}

uint64_t sub_1002F2C18()
{
  v1 = *(v0 + 16);
  dispatch thunk of LocalMessaging.set(didDeliverCallback:)();

  return _swift_task_switch(sub_1002F2CA0, v1, 0);
}

uint64_t sub_1002F2CA0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1002F2D18, v1, v2);
}

uint64_t sub_1002F2D18()
{
  v1 = *(v0 + 16);
  dispatch thunk of LocalMessaging.set(messageReceivedCallback:)();

  return _swift_task_switch(sub_1002F2DA0, v1, 0);
}

uint64_t sub_1002F2DA0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1002F2E18, v1, v2);
}

uint64_t sub_1002F2E18()
{
  v1 = *(v0 + 16);
  dispatch thunk of LocalMessaging.set(accountChangedCallback:)();

  return _swift_task_switch(sub_1002F2EA0, v1, 0);
}

uint64_t sub_1002F2EA0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1002F2F18, v1, v2);
}

uint64_t sub_1002F2F18()
{
  v1 = *(v0 + 16);
  dispatch thunk of LocalMessaging.set(devicesChangedCallback:)();

  return _swift_task_switch(sub_1002F2FA0, v1, 0);
}

uint64_t sub_1002F2FA0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1002F3018, v1, v2);
}

uint64_t sub_1002F3018()
{
  dispatch thunk of LocalMessaging.set(connectedDevicesChangedCallback:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F309C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1002F30C0, a4, 0);
}

uint64_t sub_1002F30C0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  v5 = sub_1002F6E28(&qword_1005B1878, a2, type metadata accessor for LocalMessagingService, &unk_1004D54C8);
  v6 = swift_task_alloc();
  *(v2 + 48) = v6;
  v7 = *(v2 + 16);
  *(v6 + 16) = v3;
  *(v6 + 24) = v7;
  *(v6 + 40) = v4;
  v8 = swift_task_alloc();
  *(v2 + 56) = v8;
  *v8 = v2;
  v8[1] = sub_1002F31F0;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v8, &type metadata for () + 1, &type metadata for () + 1, v3, v5, &unk_1004D5600, v6, &type metadata for () + 1);
}

uint64_t sub_1002F31F0()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1000161BC, v1, 0);
}

uint64_t sub_1002F331C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_1002F3344, a6, 0);
}

uint64_t sub_1002F3344(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v3 = *(v2 + 56);
  v5 = sub_1002F6E28(&qword_1005B1878, a2, type metadata accessor for LocalMessagingService, &unk_1004D54C8);
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  v7 = *(v2 + 16);
  v8 = *(v2 + 32);
  *(v6 + 16) = v3;
  *(v6 + 24) = v7;
  *(v6 + 40) = v8;
  *(v6 + 56) = v4;
  v9 = swift_task_alloc();
  *(v2 + 72) = v9;
  *v9 = v2;
  v9[1] = sub_1002F3478;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v9, &type metadata for () + 1, &type metadata for () + 1, v3, v5, &unk_1004D55D0, v6, &type metadata for () + 1);
}

uint64_t sub_1002F3478()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_1000161B8, v1, 0);
}

uint64_t sub_1002F35A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1002F35C0, a2, 0);
}

uint64_t sub_1002F35C0(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = sub_1002F6E28(&qword_1005B1878, a2, type metadata accessor for LocalMessagingService, &unk_1004D54C8);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_1002F36E4;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v7, &type metadata for () + 1, &type metadata for () + 1, v3, v5, &unk_1004D55A8, v6, &type metadata for () + 1);
}

uint64_t sub_1002F36E4()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1000161B8, v1, 0);
}

uint64_t sub_1002F3810(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1002F382C, a2, 0);
}

uint64_t sub_1002F382C(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = sub_1002F6E28(&qword_1005B1878, a2, type metadata accessor for LocalMessagingService, &unk_1004D54C8);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_1002F36E4;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v7, &type metadata for () + 1, &type metadata for () + 1, v3, v5, &unk_1004D5580, v6, &type metadata for () + 1);
}

uint64_t sub_1002F3950(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1002F396C, a2, 0);
}

uint64_t sub_1002F396C(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = sub_1002F6E28(&qword_1005B1878, a2, type metadata accessor for LocalMessagingService, &unk_1004D54C8);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_1002F36E4;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v7, &type metadata for () + 1, &type metadata for () + 1, v3, v5, &unk_1004D5550, v6, &type metadata for () + 1);
}

uint64_t sub_1002F3A90(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for SystemVersionNumber();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002F3B5C, v2, 0);
}

uint64_t sub_1002F3B5C()
{
  v31 = v0;
  if (qword_1005A8118 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0030);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);
  v8(v1, v5, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[6];
  v12 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  if (v11)
  {
    v29 = v10;
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 136315394;
    sub_1002F6E28(&qword_1005B02E0, 255, &type metadata accessor for SystemVersionNumber, &protocol conformance descriptor for SystemVersionNumber);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_10000D01C(v17, v19, &v30);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_10000D01C(v22, v24, &v30);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v9, v29, "STUB: migrate from %s to %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_1002F3E48(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for UUID();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_1002F3F18, v2, 0);
}

uint64_t sub_1002F3F18(uint64_t a1)
{
  v27 = v1;
  v2 = v1[16];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[11];
  v6 = v1[10];
  UUID.init()();
  v7 = *(v4 + 16);
  v7(v2, v6, v3);
  sub_100011004(v5, (v1 + 2));
  swift_beginAccess();
  sub_1001463BC((v1 + 2), v2);
  swift_endAccess();
  if (qword_1005A8118 != -1)
  {
    swift_once();
  }

  v8 = v1[15];
  v9 = v1[13];
  v10 = v1[10];
  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005E0030);
  v7(v8, v10, v9);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v1[14];
  v15 = v1[15];
  v17 = v1[13];
  if (v14)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136446210;
    sub_1002F6E28(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v16 + 8))(v15, v17);
    v23 = sub_10000D01C(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "Added client: %{public}s", v18, 0xCu);
    sub_100004984(v19);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v24 = v1[1];

  return v24();
}

uint64_t sub_1002F41CC()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002F4240(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalMessagingService();
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_1002F42E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1002F3A90(a1, a2);
}

uint64_t sub_1002F438C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalMessagingService();
  *v4 = v2;
  v4[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_1002F4434()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1002F2B58();
}

uint64_t sub_1002F44E0()
{
  *(v0 + 24) = *(*(v0 + 16) + 128);
  sub_10004B564(&qword_1005AD518, &qword_1004D54F0);
  sub_1002F46D8();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F457C, v2, v1);
}

uint64_t sub_1002F457C()
{
  dispatch thunk of LocalMessaging.start()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F45E0()
{
  type metadata accessor for LocalMessagingService();
  sub_1002F6E28(&qword_1005AD520, v0, type metadata accessor for LocalMessagingService, &unk_1004D5468);
  return ActorServiceProtocol.description.getter();
}

unint64_t sub_1002F46D8()
{
  result = qword_1005B1880;
  if (!qword_1005B1880)
  {
    sub_10004B610(&qword_1005AD518, &qword_1004D54F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1880);
  }

  return result;
}

uint64_t sub_1002F473C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[23] = a3;
  v6[24] = a4;
  v6[22] = a2;
  v8 = type metadata accessor for Destination();
  v6[27] = v8;
  v9 = *(v8 - 8);
  v6[28] = v9;
  v6[29] = *(v9 + 64);
  v6[30] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v6[31] = v10;
  v11 = *(v10 - 8);
  v6[32] = v11;
  v6[33] = *(v11 + 64);
  v6[34] = swift_task_alloc();
  v12 = type metadata accessor for Account();
  v6[35] = v12;
  v13 = *(v12 - 8);
  v6[36] = v13;
  v6[37] = *(v13 + 64);
  v6[38] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();

  return _swift_task_switch(sub_1002F491C, a3, 0);
}

void sub_1002F491C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 224);
  v4 = *(v0 + 184);
  swift_beginAccess();
  v5 = *(v4 + 136);
  v6 = v5 + 64;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v10 = (63 - v8) >> 6;
  v36 = v2;
  v37 = v1;
  v35 = v3;
  v38 = v5;

  v11 = 0;
  v33 = v10;
  v34 = v6;
  while (v9)
  {
LABEL_11:
    v15 = *(v0 + 320);
    v49 = v15;
    v50 = *(v0 + 312);
    v16 = *(v0 + 304);
    v47 = *(v0 + 296);
    v18 = *(v0 + 272);
    v17 = *(v0 + 280);
    v41 = v17;
    v43 = v18;
    v48 = *(v0 + 264);
    v19 = *(v0 + 248);
    v51 = *(v0 + 240);
    v20 = *(v0 + 216);
    v42 = v20;
    v44 = *(v0 + 208);
    v39 = *(v0 + 192);
    v40 = *(v0 + 200);
    sub_100011004(*(v38 + 56) + 40 * (__clz(__rbit64(v9)) | (v11 << 6)), v0 + 16);
    v45 = type metadata accessor for TaskPriority();
    v46 = *(v45 - 8);
    (*(v46 + 56))(v15, 1, 1, v45);
    sub_100010BD4((v0 + 16), v0 + 56);
    (*(v37 + 16))(v16, v39, v17);
    (*(v36 + 16))(v18, v40, v19);
    (*(v35 + 16))(v51, v44, v20);
    v21 = (*(v37 + 80) + 72) & ~*(v37 + 80);
    v22 = (v47 + *(v36 + 80) + v21) & ~*(v36 + 80);
    v23 = (v48 + *(v35 + 80) + v22) & ~*(v35 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    sub_100010BD4((v0 + 56), v24 + 32);
    (*(v37 + 32))(v24 + v21, v16, v41);
    (*(v36 + 32))(v24 + v22, v43, v19);
    (*(v35 + 32))(v24 + v23, v51, v42);
    sub_10007CE68(v49, v50);
    v25 = (*(v46 + 48))(v50, 1, v45);
    v26 = *(v0 + 312);
    if (v25 == 1)
    {
      sub_1002F1BF8(*(v0 + 312));
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v46 + 8))(v26, v45);
    }

    if (*(v24 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v27 = dispatch thunk of Actor.unownedExecutor.getter();
      v29 = v28;
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = **(v0 + 176);
    v31 = swift_allocObject();
    *(v31 + 16) = &unk_1004D5610;
    *(v31 + 24) = v24;

    if (v29 | v27)
    {
      v12 = v0 + 96;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v27;
      *(v0 + 120) = v29;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v0 + 320);
    v9 &= v9 - 1;
    *(v0 + 152) = 1;
    *(v0 + 160) = v12;
    *(v0 + 168) = v30;
    swift_task_create();

    sub_1002F1BF8(v13);
    v10 = v33;
    v6 = v34;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v14);
    ++v11;
    if (v9)
    {
      v11 = v14;
      goto LABEL_11;
    }
  }

  v32 = *(v0 + 8);

  v32();
}

uint64_t sub_1002F4E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1002F4E58, 0, 0);
}

uint64_t sub_1002F4E58()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_100011AEC(v1, v2);
  v9 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1002F4F88;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_1002F4F88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002F507C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[22] = a2;
  v10 = type metadata accessor for MessageContext();
  v8[29] = v10;
  v11 = *(v10 - 8);
  v8[30] = v11;
  v8[31] = *(v11 + 64);
  v8[32] = swift_task_alloc();
  v12 = sub_10004B564(&qword_1005B1888, &unk_1004D8870);
  v8[33] = v12;
  v13 = *(v12 - 8);
  v8[34] = v13;
  v8[35] = *(v13 + 64);
  v8[36] = swift_task_alloc();
  v14 = type metadata accessor for Destination();
  v8[37] = v14;
  v15 = *(v14 - 8);
  v8[38] = v15;
  v8[39] = *(v15 + 64);
  v8[40] = swift_task_alloc();
  v16 = type metadata accessor for Account();
  v8[41] = v16;
  v17 = *(v16 - 8);
  v8[42] = v17;
  v8[43] = *(v17 + 64);
  v8[44] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();

  return _swift_task_switch(sub_1002F52D0, a3, 0);
}

void sub_1002F52D0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 240);
  v6 = *(v0 + 184);
  swift_beginAccess();
  v7 = *(v6 + 136);
  v8 = v7 + 64;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 64);
  v12 = (63 - v10) >> 6;
  v39 = v2;
  v40 = v1;
  v36 = v3 + 7;
  v59 = v4;
  v58 = v5;
  v41 = v7;

  v13 = 0;
  v37 = v12;
  v38 = v8;
  while (v11)
  {
LABEL_11:
    v17 = *(v0 + 368);
    v57 = *(v0 + 360);
    v18 = *(v0 + 352);
    v53 = *(v0 + 344);
    v20 = *(v0 + 320);
    v19 = *(v0 + 328);
    v45 = v19;
    v48 = v20;
    v54 = *(v0 + 312);
    v21 = *(v0 + 288);
    v22 = *(v0 + 296);
    v49 = v21;
    v23 = *(v0 + 264);
    v46 = v22;
    v47 = v23;
    v60 = *(v0 + 232);
    v61 = *(v0 + 256);
    v50 = *(v0 + 224);
    v56 = *(v0 + 216);
    v43 = *(v0 + 200);
    v44 = *(v0 + 208);
    v42 = *(v0 + 192);
    sub_100011004(*(v41 + 56) + 40 * (__clz(__rbit64(v11)) | (v13 << 6)), v0 + 16);
    v51 = type metadata accessor for TaskPriority();
    v52 = *(v51 - 8);
    (*(v52 + 56))(v17, 1, 1, v51);
    sub_100010BD4((v0 + 16), v0 + 56);
    (*(v40 + 16))(v18, v42, v19);
    (*(v39 + 16))(v20, v43, v22);
    (*(v59 + 16))(v21, v44, v23);
    (*(v58 + 16))(v61, v50, v60);
    v24 = (*(v40 + 80) + 72) & ~*(v40 + 80);
    v25 = (v53 + *(v39 + 80) + v24) & ~*(v39 + 80);
    v26 = (v54 + *(v59 + 80) + v25) & ~*(v59 + 80);
    v55 = (v36 + v26) & 0xFFFFFFFFFFFFFFF8;
    v27 = (*(v58 + 80) + v55 + 8) & ~*(v58 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    sub_100010BD4((v0 + 56), v28 + 32);
    (*(v40 + 32))(v28 + v24, v18, v45);
    (*(v39 + 32))(v28 + v25, v48, v46);
    (*(v59 + 32))(v28 + v26, v49, v47);
    *(v28 + v55) = v56;
    (*(v58 + 32))(v28 + v27, v61, v60);
    sub_10007CE68(v17, v57);
    LODWORD(v24) = (*(v52 + 48))(v57, 1, v51);

    v29 = *(v0 + 360);
    if (v24 == 1)
    {
      sub_1002F1BF8(*(v0 + 360));
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v52 + 8))(v29, v51);
    }

    if (*(v28 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      v32 = v31;
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = **(v0 + 176);
    v34 = swift_allocObject();
    *(v34 + 16) = &unk_1004D55E8;
    *(v34 + 24) = v28;

    if (v32 | v30)
    {
      v14 = v0 + 96;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v30;
      *(v0 + 120) = v32;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v0 + 368);
    v11 &= v11 - 1;
    *(v0 + 152) = 1;
    *(v0 + 160) = v14;
    *(v0 + 168) = v33;
    swift_task_create();

    sub_1002F1BF8(v15);
    v12 = v37;
    v8 = v38;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v16 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v16);
    ++v13;
    if (v11)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  v35 = *(v0 + 8);

  v35();
}

uint64_t sub_1002F58B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return _swift_task_switch(sub_1002F58E4, 0, 0);
}

uint64_t sub_1002F58E4()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_100011AEC(v1, v2);
  v11 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1002F5A18;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return v11(v9, v7, v8, v5, v6, v2, v3);
}

uint64_t sub_1002F5A18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002F5B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_1002F5BBC, a3, 0);
}

void sub_1002F5BBC()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  v2 = *(v1 + 136);
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v28 = v2;

  v8 = 0;
  v26 = v7;
  v27 = v3;
  while (v6)
  {
LABEL_11:
    v12 = *(v0 + 200);
    v13 = *(v0 + 208);
    v14 = *(v0 + 192);
    sub_100011004(*(v28 + 56) + 40 * (__clz(__rbit64(v6)) | (v8 << 6)), v0 + 16);
    v15 = type metadata accessor for TaskPriority();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v13, 1, 1, v15);
    sub_100010BD4((v0 + 16), v0 + 56);
    v17 = swift_allocObject();
    v17[2] = 0;
    v18 = v17 + 2;
    v17[3] = 0;
    sub_100010BD4((v0 + 56), (v17 + 4));
    v17[9] = v14;
    sub_10007CE68(v13, v12);
    LODWORD(v12) = (*(v16 + 48))(v12, 1, v15);

    v19 = *(v0 + 200);
    if (v12 == 1)
    {
      sub_1002F1BF8(*(v0 + 200));
      if (*v18)
      {
        goto LABEL_13;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v16 + 8))(v19, v15);
      if (*v18)
      {
LABEL_13:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = dispatch thunk of Actor.unownedExecutor.getter();
        v22 = v21;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v20 = 0;
    v22 = 0;
LABEL_16:
    v23 = **(v0 + 176);
    v24 = swift_allocObject();
    *(v24 + 16) = &unk_1004D55B8;
    *(v24 + 24) = v17;

    if (v22 | v20)
    {
      v9 = v0 + 96;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v20;
      *(v0 + 120) = v22;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v0 + 208);
    v6 &= v6 - 1;
    *(v0 + 152) = 1;
    *(v0 + 160) = v9;
    *(v0 + 168) = v23;
    swift_task_create();

    sub_1002F1BF8(v10);
    v7 = v26;
    v3 = v27;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  v25 = *(v0 + 8);

  v25();
}

uint64_t sub_1002F5F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1002F5F50, 0, 0);
}

uint64_t sub_1002F5F50()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_100011AEC(v1, v2);
  v7 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1002F607C;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_1002F607C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002F6170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_1002F6220, a3, 0);
}

void sub_1002F6220()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  v2 = *(v1 + 136);
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v28 = v2;

  v8 = 0;
  v26 = v7;
  v27 = v3;
  while (v6)
  {
LABEL_11:
    v12 = *(v0 + 200);
    v13 = *(v0 + 208);
    v14 = *(v0 + 192);
    sub_100011004(*(v28 + 56) + 40 * (__clz(__rbit64(v6)) | (v8 << 6)), v0 + 16);
    v15 = type metadata accessor for TaskPriority();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v13, 1, 1, v15);
    sub_100010BD4((v0 + 16), v0 + 56);
    v17 = swift_allocObject();
    v17[2] = 0;
    v18 = v17 + 2;
    v17[3] = 0;
    sub_100010BD4((v0 + 56), (v17 + 4));
    v17[9] = v14;
    sub_10007CE68(v13, v12);
    LODWORD(v12) = (*(v16 + 48))(v12, 1, v15);

    v19 = *(v0 + 200);
    if (v12 == 1)
    {
      sub_1002F1BF8(*(v0 + 200));
      if (*v18)
      {
        goto LABEL_13;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v16 + 8))(v19, v15);
      if (*v18)
      {
LABEL_13:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = dispatch thunk of Actor.unownedExecutor.getter();
        v22 = v21;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v20 = 0;
    v22 = 0;
LABEL_16:
    v23 = **(v0 + 176);
    v24 = swift_allocObject();
    *(v24 + 16) = &unk_1004D5590;
    *(v24 + 24) = v17;

    if (v22 | v20)
    {
      v9 = v0 + 96;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v20;
      *(v0 + 120) = v22;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v0 + 208);
    v6 &= v6 - 1;
    *(v0 + 152) = 1;
    *(v0 + 160) = v9;
    *(v0 + 168) = v23;
    swift_task_create();

    sub_1002F1BF8(v10);
    v7 = v26;
    v3 = v27;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  v25 = *(v0 + 8);

  v25();
}

uint64_t sub_1002F6594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1002F65B4, 0, 0);
}

uint64_t sub_1002F65B4()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_100011AEC(v1, v2);

  v5 = sub_10023F494(v4);
  v0[4] = v5;

  v8 = (*(v3 + 48) + **(v3 + 48));
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1002F6704;

  return v8(v5, v2, v3);
}

uint64_t sub_1002F6704()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002F6814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_1002F68C4, a3, 0);
}

void sub_1002F68C4()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  v2 = *(v1 + 136);
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v28 = v2;

  v8 = 0;
  v26 = v7;
  v27 = v3;
  while (v6)
  {
LABEL_11:
    v12 = *(v0 + 200);
    v13 = *(v0 + 208);
    v14 = *(v0 + 192);
    sub_100011004(*(v28 + 56) + 40 * (__clz(__rbit64(v6)) | (v8 << 6)), v0 + 16);
    v15 = type metadata accessor for TaskPriority();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v13, 1, 1, v15);
    sub_100010BD4((v0 + 16), v0 + 56);
    v17 = swift_allocObject();
    v17[2] = 0;
    v18 = v17 + 2;
    v17[3] = 0;
    sub_100010BD4((v0 + 56), (v17 + 4));
    v17[9] = v14;
    sub_10007CE68(v13, v12);
    LODWORD(v12) = (*(v16 + 48))(v12, 1, v15);

    v19 = *(v0 + 200);
    if (v12 == 1)
    {
      sub_1002F1BF8(*(v0 + 200));
      if (*v18)
      {
        goto LABEL_13;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v16 + 8))(v19, v15);
      if (*v18)
      {
LABEL_13:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = dispatch thunk of Actor.unownedExecutor.getter();
        v22 = v21;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v20 = 0;
    v22 = 0;
LABEL_16:
    v23 = **(v0 + 176);
    v24 = swift_allocObject();
    *(v24 + 16) = &unk_1004D5568;
    *(v24 + 24) = v17;

    if (v22 | v20)
    {
      v9 = v0 + 96;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v20;
      *(v0 + 120) = v22;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v0 + 208);
    v6 &= v6 - 1;
    *(v0 + 152) = 1;
    *(v0 + 160) = v9;
    *(v0 + 168) = v23;
    swift_task_create();

    sub_1002F1BF8(v10);
    v7 = v26;
    v3 = v27;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  v25 = *(v0 + 8);

  v25();
}

uint64_t sub_1002F6C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1002F6C58, 0, 0);
}

uint64_t sub_1002F6C58()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_100011AEC(v1, v2);

  v5 = sub_10023F494(v4);
  v0[4] = v5;

  v8 = (*(v3 + 56) + **(v3 + 56));
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1002F7CAC;

  return v8(v5, v2, v3);
}

uint64_t sub_1002F6DA8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0048);
  sub_10000A6F0(v0, qword_1005E0048);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002F6E28(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1002F6E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_10000368C;

  return sub_1002F309C(a1, a2, a3, v3);
}

uint64_t sub_1002F6F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_10000368C;

  return sub_1002F331C(a1, a2, a3, a4, a5, v5);
}

uint64_t sub_1002F6FE8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1002F35A4(a1, v1);
}

uint64_t sub_1002F7080(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1002F3810(a1, v1);
}

uint64_t sub_1002F7118(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1002F3950(a1, v1);
}

uint64_t sub_1002F71B0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000368C;

  return sub_1002F6814(a1, a2, v7, v6);
}

uint64_t sub_1002F7264(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1002F6C38(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1002F7324(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000368C;

  return sub_1002F6170(a1, a2, v7, v6);
}

uint64_t sub_1002F73D8()
{
  swift_unknownObjectRelease();
  sub_100004984((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1002F7420(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1002F6594(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1002F74E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_10007B690(a1, v4);
}

uint64_t sub_1002F7598(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100003690;

  return sub_1002F5B0C(a1, a2, v7, v6);
}

uint64_t sub_1002F764C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1002F5F30(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1002F770C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000368C;

  return sub_1002F507C(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_1002F77E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Account() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Destination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_10004B564(&qword_1005B1888, &unk_1004D8870) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for MessageContext();
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = *(v1 + v13);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10000368C;

  return sub_1002F58B4(a1, v14, v15, v1 + 32, v1 + v6, v1 + v9, v1 + v12, v16);
}

uint64_t sub_1002F7A2C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_1002F473C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1002F7AF4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Account() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for Destination() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10000368C;

  return sub_1002F4E34(a1, v13, v14, v1 + 32, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1002F7CB0()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005B1890);
  v1 = sub_10000A6F0(v0, qword_1005B1890);
  if (qword_1005A84A8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0AE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002F7D78()
{
  v0 = type metadata accessor for Table();
  sub_10004F154(v0, qword_1005E0060);
  sub_10000A6F0(v0, qword_1005E0060);
  return Table.init(_:database:)();
}

uint64_t sub_1002F7E50()
{
  v0 = type metadata accessor for Table();
  sub_10004F154(v0, qword_1005E00C0);
  sub_10000A6F0(v0, qword_1005E00C0);
  return Table.init(_:database:)();
}

uint64_t sub_1002F7F54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Table();
  sub_10004F154(v5, a2);
  sub_10000A6F0(v5, a2);
  return Table.init(_:database:)();
}

uint64_t sub_1002F7FBC()
{
  v0 = type metadata accessor for Table();
  sub_10004F154(v0, qword_1005E0138);
  sub_10000A6F0(v0, qword_1005E0138);
  return Table.init(_:database:)();
}

uint64_t sub_1002F8028(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DatabaseState();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1002F80EC, 0, 0);
}

uint64_t sub_1002F80EC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 72);
  v6 = *(v0 + 16);
  swift_defaultActor_initialize();
  (*(v2 + 104))(v1, enum case for DatabaseState.unavailable(_:), v4);
  sub_10004B564(&qword_1005AF108, &qword_1004D5890);
  v7 = swift_allocObject();
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v2 + 16))(v7 + *(*v7 + class metadata base offset for ManagedBuffer + 16), v1, v4);
  (*(v2 + 8))(v1, v4);
  *(v3 + 112) = v7;
  sub_10004B564(&qword_1005AF110, &unk_1004D02E0);
  swift_allocObject();
  *(v3 + 120) = AsyncStreamProvider.init()();
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + OBJC_IVAR____TtC13findmylocated20LocalStorageDatabase_currentVersion) = 7;
  v8 = OBJC_IVAR____TtC13findmylocated20LocalStorageDatabase_baseContainerURL;
  v9 = type metadata accessor for URL();
  *(v0 + 56) = v9;
  v10 = *(v9 - 8);
  *(v0 + 64) = v10;
  (*(v10 + 16))(v3 + v8, v6, v9);
  *(v3 + OBJC_IVAR____TtC13findmylocated20LocalStorageDatabase_temporary) = v5;

  return _swift_task_switch(sub_1001B5DB8, v3, 0);
}

uint64_t sub_1002F8328()
{

  v1 = OBJC_IVAR____TtC13findmylocated20LocalStorageDatabase_baseContainerURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002F83C0(uint64_t a1)
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

uint64_t sub_1002F84D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13findmylocated20LocalStorageDatabase_baseContainerURL;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002F8550(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

uint64_t sub_1002F8618()
{
  URL.appendingPathComponent(_:isDirectory:)();
  URL.appendingPathComponent(_:isDirectory:)();
  return URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_1002F8700()
{
  v1 = type metadata accessor for DatabaseState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 112);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v12 = *(v2 + 8);
  v12((v5 + v6), v1);
  v8 = enum case for DatabaseState.available(_:);
  v9 = *(v2 + 104);
  v9((v5 + v6), enum case for DatabaseState.available(_:), v1);
  os_unfair_lock_unlock((v5 + v7));
  v9(v4, v8, v1);
  AsyncStreamProvider.yield(value:transaction:)();
  return v12(v4, v1);
}

void sub_1002F88B4(int a1, int a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v3;
  v37 = v4;
  v38 = v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A8128 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005B1890);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109376;
    *(v17 + 4) = a1;
    *(v17 + 8) = 1024;
    *(v17 + 10) = a2;
    _os_log_impl(&_mh_execute_header, v15, v16, "Migrate schema %d -> %d", v17, 0xEu);
  }

  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      __chkstk_darwin(v18);
      *(&v35 - 4) = a3;
      *(&v35 - 3) = v5;
      v33 = v25;
      UUID.init()();
      UUID.uuidString.getter();
      (*(v11 + 8))(v13, v10);
      goto LABEL_18;
    }

    if (a2 == 6)
    {
LABEL_17:
      __chkstk_darwin(v18);
      v33 = a3;
      v34 = v24;
      UUID.init()();
      UUID.uuidString.getter();
      (*(v11 + 8))(v13, v10);
      goto LABEL_18;
    }

    if (a2 == 7)
    {
      __chkstk_darwin(v18);
      v33 = a3;
      v34 = v26;
      UUID.init()();
      UUID.uuidString.getter();
      v27 = *(v11 + 8);
      v27(v13, v10);
      v28 = v37;
      Connection.savepoint(_:block:)();
      if (v28)
      {
        goto LABEL_19;
      }

      __chkstk_darwin(v29);
      v37 = a3;
      UUID.init()();
      UUID.uuidString.getter();
      v36 = v27;
      v27(v13, v10);
      v30 = v37;
      Connection.savepoint(_:block:)();

      __chkstk_darwin(v31);
      v33 = v30;
      v34 = v38;
      UUID.init()();
      UUID.uuidString.getter();
      v36(v13, v10);
LABEL_18:
      Connection.savepoint(_:block:)();
LABEL_19:

      return;
    }

LABEL_24:
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v39 = 0xD000000000000013;
    v40 = 0x80000001004E4BE0;
    v41 = a2;
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (a2 != 1)
  {
    if (a2 == 2 || a2 == 3)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v19._countAndFlagsBits = 0xD00000000000001FLL;
  v19._object = 0x80000001004E4C00;
  Connection.execute(_:)(v19);
  if (!v20)
  {
    v21._countAndFlagsBits = 0xD000000000000018;
    v21._object = 0x80000001004E4C20;
    Connection.execute(_:)(v21);
    if (!v23)
    {
      __chkstk_darwin(v22);
      v33 = a3;
      v34 = v38;
      UUID.init()();
      UUID.uuidString.getter();
      (*(v11 + 8))(v13, v10);
      goto LABEL_18;
    }
  }
}

uint64_t sub_1002F9114()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_100006D44(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  return Database.description.getter();
}

uint64_t sub_1002F9180()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for LocalStorageDatabase(0);
  v3 = sub_100006D44(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *v1 = v0;
  v1[1] = sub_1001B6B7C;

  return Database.isolatedDescription.getter(v2, v3);
}

void sub_1002F92F4()
{
  if (qword_1005A8130 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  sub_10000A6F0(v1, qword_1005E0060);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  else
  {

    if (qword_1005A8138 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v1, qword_1005E0078);
    Table.create(temporary:ifNotExists:withoutRowid:block:)();
    Connection.run(_:_:)();
  }
}

double sub_1002F9480()
{
  v0 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  __chkstk_darwin(v0 - 8);
  v36 = &v31 - v1;
  v2 = sub_10004B564(&qword_1005AF098, &qword_1004D0278);
  __chkstk_darwin(v2 - 8);
  v33 = &v31 - v3;
  v4 = sub_10004B564(&qword_1005AF088, &unk_1004D5840);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_10004B564(&qword_1005AF0F0, &unk_1004D02C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_10004B564(&qword_1005AF0A0, &unk_1004D0280);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  if (qword_1005A8180 != -1)
  {
    swift_once();
  }

  v16 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  v17 = sub_10000A6F0(v16, qword_1005E0168);
  v18 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v19 = *(*(v18 - 8) + 56);
  v19(v15, 1, 1, v18);
  v32 = *(v16 - 8);
  v20 = *(v32 + 56);
  v35 = v16;
  v20(v12, 1, 1, v16);
  type metadata accessor for UUID();
  v34 = v17;
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v12, &qword_1005AF0A0, &unk_1004D0280);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8188 != -1)
  {
    swift_once();
  }

  v21 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
  sub_10000A6F0(v21, qword_1005E0180);
  v19(v15, 1, 1, v18);
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v9, &qword_1005AF0F0, &unk_1004D02C0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A81A0 != -1)
  {
    swift_once();
  }

  v22 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
  sub_10000A6F0(v22, qword_1005E01C8);
  v19(v15, 1, 1, v18);
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v6, &qword_1005AF088, &unk_1004D5840);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8190 != -1)
  {
    swift_once();
  }

  v23 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
  sub_10000A6F0(v23, qword_1005E0198);
  v19(v15, 1, 1, v18);
  v24 = v33;
  (*(*(v23 - 8) + 56))(v33, 1, 1, v23);
  sub_1001B921C();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v24, &qword_1005AF098, &qword_1004D0278);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8198 != -1)
  {
    swift_once();
  }

  v25 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v25, qword_1005E01B0);
  v19(v15, 1, 1, v18);
  v26 = v36;
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v26, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  sub_10004B564(&qword_1005AF0D0, &unk_1004D5830);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1004C1900;
  v28 = v35;
  *(v27 + 56) = v35;
  *(v27 + 64) = sub_100300CBC(&qword_1005AF0D8, &qword_1005AF078, &unk_1004D0260);
  v29 = sub_10000331C((v27 + 32));
  (*(v32 + 16))(v29, v34, v28);
  TableBuilder.unique(_:)();

  return result;
}

double sub_1002F9C84()
{
  v0 = sub_10004B564(&qword_1005B19F8, &unk_1004D57D8);
  __chkstk_darwin(v0 - 8);
  v80 = &v68 - v1;
  v2 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  __chkstk_darwin(v2 - 8);
  v89 = &v68 - v3;
  v4 = sub_10004B564(&qword_1005B1A00, &qword_1004D57E8);
  __chkstk_darwin(v4 - 8);
  v83 = &v68 - v5;
  v6 = sub_10004B564(&qword_1005AF0F0, &unk_1004D02C0);
  __chkstk_darwin(v6 - 8);
  v82 = &v68 - v7;
  v8 = sub_10004B564(&qword_1005AF0E8, &unk_1004D02B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v68 - v9;
  v11 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  v12 = __chkstk_darwin(v11 - 8);
  v87 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v68 - v14;
  if (qword_1005A81A8 != -1)
  {
    swift_once();
  }

  v16 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  v17 = sub_10000A6F0(v16, qword_1005E01E0);
  v18 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v19 = *(*(v18 - 8) + 56);
  v19(v15, 1, 1, v18);
  v78 = *(v16 - 8);
  v20 = v78 + 56;
  v21 = *(v78 + 56);
  v21(v10, 1, 1, v16);
  v79 = v17;
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A81B0 != -1)
  {
    swift_once();
  }

  v90 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10000A6F0(v90, qword_1005E01F8);
  v19(v15, 1, 1, v18);
  v92 = v16;
  v21(v10, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A81B8 != -1)
  {
    swift_once();
  }

  v73 = sub_10004B564(&qword_1005B1A10, &unk_1004D5800);
  sub_10000A6F0(v73, qword_1005E0210);
  v19(v15, 1, 1, v18);
  v22 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v25 = v82;
  v72 = v22;
  v71 = v24;
  v70 = v23 + 56;
  (v24)(v82, 1, 1);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v25, &qword_1005AF0F0, &unk_1004D02C0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A81C0 != -1)
  {
    swift_once();
  }

  v26 = v90;
  sub_10000A6F0(v90, qword_1005E0228);
  v19(v15, 1, 1, v18);
  v91 = v21;
  v21(v10, 1, 1, v92);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A81C8 != -1)
  {
    swift_once();
  }

  v88 = v20;
  v27 = sub_10004B564(&qword_1005B1A18, &qword_1004D5810);
  sub_10000A6F0(v27, qword_1005E0240);
  v19(v15, 1, 1, v18);
  v28 = *(v27 - 8);
  v29 = v83;
  v76 = *(v28 + 56);
  v77 = v27;
  v75 = v28 + 56;
  v76(v83, 1, 1, v27);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v29, &qword_1005B1A00, &qword_1004D57E8);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A81D0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v26, qword_1005E0258);
  v19(v15, 1, 1, v18);
  v30 = v26;
  v31 = v92;
  v69 = v18;
  v32 = v19;
  v33 = v91;
  v91(v10, 1, 1, v92);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A81D8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v30, qword_1005E0270);
  v34 = v69;
  v19(v15, 1, 1, v69);
  v33(v10, 1, 1, v31);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A81E0 != -1)
  {
    swift_once();
  }

  v74 = sub_10004B564(&qword_1005B1A20, &qword_1004D5818);
  sub_10000A6F0(v74, qword_1005E0288);
  v19(v15, 1, 1, v34);
  v35 = v87;
  v19(v87, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v35, &qword_1005AF0A8, &unk_1004D57F0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A81E8 != -1)
  {
    swift_once();
  }

  v81 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v81, qword_1005E02A0);
  v19(v15, 1, 1, v34);
  v36 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  v37 = *(v36 - 8);
  v38 = v89;
  v85 = *(v37 + 56);
  v86 = v36;
  v84 = v37 + 56;
  v85(v89, 1, 1);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v38, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  v39 = v34;
  if (qword_1005A81F0 != -1)
  {
    swift_once();
  }

  v40 = v90;
  sub_10000A6F0(v90, qword_1005E02B8);
  v19(v15, 1, 1, v34);
  v41 = v92;
  v91(v10, 1, 1, v92);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A81F8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v40, qword_1005E02D0);
  v19(v15, 1, 1, v39);
  v91(v10, 1, 1, v41);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8208 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v40, qword_1005E0300);
  v19(v15, 1, 1, v39);
  v42 = v91;
  v91(v10, 1, 1, v41);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8200 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v41, qword_1005E02E8);
  v19(v15, 1, 1, v39);
  v42(v10, 1, 1, v41);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  v43 = v41;
  if (qword_1005A8210 != -1)
  {
    swift_once();
  }

  v44 = v90;
  sub_10000A6F0(v90, qword_1005E0318);
  v19(v15, 1, 1, v39);
  v91(v10, 1, 1, v43);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8218 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v44, qword_1005E0330);
  v19(v15, 1, 1, v39);
  v91(v10, 1, 1, v43);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8220 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v73, qword_1005E0348);
  v19(v15, 1, 1, v39);
  v45 = v82;
  v71(v82, 1, 1, v72);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v45, &qword_1005AF0F0, &unk_1004D02C0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8228 != -1)
  {
    swift_once();
  }

  v46 = v90;
  sub_10000A6F0(v90, qword_1005E0360);
  v19(v15, 1, 1, v39);
  v91(v10, 1, 1, v92);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8230 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v81, qword_1005E0378);
  v19(v15, 1, 1, v39);
  v47 = v89;
  (v85)(v89, 1, 1, v86);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v47, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  v48 = v39;
  if (qword_1005A8238 != -1)
  {
    swift_once();
  }

  v49 = sub_10004B564(&qword_1005B1A28, &unk_1004D5820);
  sub_10000A6F0(v49, qword_1005E0390);
  v32(v15, 1, 1, v39);
  v50 = v83;
  v76(v83, 1, 1, v77);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v50, &qword_1005B1A00, &qword_1004D57E8);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  v51 = v92;
  if (qword_1005A8240 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v46, qword_1005E03A8);
  v32(v15, 1, 1, v39);
  v52 = v46;
  v53 = v91;
  v91(v10, 1, 1, v51);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8248 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v52, qword_1005E03C0);
  v32(v15, 1, 1, v48);
  v53(v10, 1, 1, v92);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8250 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v74, qword_1005E03D8);
  v32(v15, 1, 1, v48);
  v54 = v87;
  v32(v87, 1, 1, v48);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v54, &qword_1005AF0A8, &unk_1004D57F0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8258 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v81, qword_1005E03F0);
  v32(v15, 1, 1, v48);
  v55 = v89;
  (v85)(v89, 1, 1, v86);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v55, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  v56 = v92;
  v57 = v90;
  if (qword_1005A8260 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v57, qword_1005E0408);
  v32(v15, 1, 1, v48);
  v58 = v91;
  v91(v10, 1, 1, v56);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8268 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v57, qword_1005E0420);
  v32(v15, 1, 1, v48);
  v58(v10, 1, 1, v92);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8270 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v57, qword_1005E0438);
  v32(v15, 1, 1, v48);
  v58(v10, 1, 1, v92);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8278 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v48, qword_1005E0450);
  v32(v15, 1, 1, v48);
  v59 = v87;
  v32(v87, 1, 1, v48);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v59, &qword_1005AF0A8, &unk_1004D57F0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8280 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v48, qword_1005E0468);
  v32(v15, 1, 1, v48);
  v32(v59, 1, 1, v48);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v59, &qword_1005AF0A8, &unk_1004D57F0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8288 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v48, qword_1005E0480);
  v32(v15, 1, 1, v48);
  v32(v59, 1, 1, v48);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v59, &qword_1005AF0A8, &unk_1004D57F0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8290 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v48, qword_1005E0498);
  v32(v15, 1, 1, v48);
  v32(v59, 1, 1, v48);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v59, &qword_1005AF0A8, &unk_1004D57F0);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8298 != -1)
  {
    swift_once();
  }

  v60 = v86;
  sub_10000A6F0(v86, qword_1005E04B0);
  v32(v15, 1, 1, v48);
  v61 = v89;
  (v85)(v89, 1, 1, v60);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v61, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A82A0 != -1)
  {
    swift_once();
  }

  v62 = sub_10004B564(&qword_1005B1A30, &qword_1004D6050);
  sub_10000A6F0(v62, qword_1005E04C8);
  v32(v15, 1, 1, v48);
  v63 = v80;
  (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
  sub_10001D2D8();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v63, &qword_1005B19F8, &unk_1004D57D8);
  sub_100002CE0(v15, &qword_1005AF0A8, &unk_1004D57F0);
  sub_10004B564(&qword_1005AF0D0, &unk_1004D5830);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1004C1900;
  v65 = v92;
  *(v64 + 56) = v92;
  *(v64 + 64) = sub_100300CBC(&qword_1005B1A40, &qword_1005AF068, &unk_1004D06E0);
  v66 = sub_10000331C((v64 + 32));
  (*(v78 + 16))(v66, v79, v65);
  TableBuilder.unique(_:)();

  return result;
}

uint64_t sub_1002FBBF0()
{
  v0 = sub_10004B564(&qword_1005AF0E8, &unk_1004D02B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  if (qword_1005A82A8 != -1)
  {
    swift_once();
  }

  v9 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v9, qword_1005E04E0);
  v10 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 1, 1, v10);
  v14 = *(*(v9 - 8) + 56);
  v14(v2, 1, 1, v9);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v2, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A82B0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v9, qword_1005E04F8);
  v11(v8, 1, 1, v10);
  v14(v2, 1, 1, v9);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v2, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A82B8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v9, qword_1005E0510);
  v11(v8, 1, 1, v10);
  v14(v2, 1, 1, v9);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v2, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A82C0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v10, qword_1005E0528);
  v11(v8, 1, 1, v10);
  v11(v6, 1, 1, v10);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v6, &qword_1005AF0A8, &unk_1004D57F0);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A82C8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v10, qword_1005E0540);
  v11(v8, 1, 1, v10);
  v11(v6, 1, 1, v10);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v6, &qword_1005AF0A8, &unk_1004D57F0);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A82D0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v10, qword_1005E0558);
  v11(v8, 1, 1, v10);
  v11(v6, 1, 1, v10);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v6, &qword_1005AF0A8, &unk_1004D57F0);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A82D8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v10, qword_1005E0570);
  v11(v8, 1, 1, v10);
  v11(v6, 1, 1, v10);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v6, &qword_1005AF0A8, &unk_1004D57F0);
  return sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
}

void sub_1002FC304()
{
  if (qword_1005A8148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  sub_10000A6F0(v1, qword_1005E00A8);
  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();
  if (v0)
  {

    if (qword_1005A8128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005B1890);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000D01C(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "serverSettings drop error %{public}s", v5, 0xCu);
      sub_100004984(v6);
    }

    else
    {
    }
  }

  else
  {
  }

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
}

uint64_t sub_1002FC5C0()
{
  v0 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_10004B564(&qword_1005AF0F0, &unk_1004D02C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  if (qword_1005A82E0 != -1)
  {
    swift_once();
  }

  v9 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
  sub_10000A6F0(v9, qword_1005E0588);
  v10 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 1, 1, v10);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v5, &qword_1005AF0F0, &unk_1004D02C0);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A82F0 != -1)
  {
    swift_once();
  }

  v12 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v12, qword_1005E05B8);
  v11(v8, 1, 1, v10);
  v13 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  v14 = *(*(v13 - 8) + 56);
  v17 = v11;
  v14(v2, 1, 1, v13);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v2, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A82F8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v12, qword_1005E05D0);
  v17(v8, 1, 1, v10);
  v14(v2, 1, 1, v13);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v2, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8300 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v12, qword_1005E05E8);
  v17(v8, 1, 1, v10);
  v14(v2, 1, 1, v13);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v2, &qword_1005AF090, &qword_1004D0270);
  return sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
}

void sub_1002FCAE4(uint64_t a1, uint64_t a2)
{
  if (qword_1005A8148 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Table();
  sub_10000A6F0(v4, qword_1005E00A8);
  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();
  if (v2)
  {

    if (qword_1005A8128 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005B1890);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "serverSettings drop error %{public}@", v8, 0xCu);
      sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);
    }

    else
    {
    }
  }

  else
  {
  }

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  *(a2 + 136) = 1;
}

uint64_t sub_1002FCD78()
{
  v0 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_10004B564(&qword_1005AF0F0, &unk_1004D02C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  if (qword_1005A82E0 != -1)
  {
    swift_once();
  }

  v9 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
  sub_10000A6F0(v9, qword_1005E0588);
  v10 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 1, 1, v10);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v5, &qword_1005AF0F0, &unk_1004D02C0);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A82E8 != -1)
  {
    swift_once();
  }

  v12 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v12, qword_1005E05A0);
  v11(v8, 1, 1, v10);
  v13 = *(*(v12 - 8) + 56);
  v17 = v11;
  v13(v2, 1, 1, v12);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v2, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A82F0 != -1)
  {
    swift_once();
  }

  v14 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v14, qword_1005E05B8);
  v17(v8, 1, 1, v10);
  v13(v2, 1, 1, v12);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v2, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A82F8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v14, qword_1005E05D0);
  v17(v8, 1, 1, v10);
  v13(v2, 1, 1, v12);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v2, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8300 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v14, qword_1005E05E8);
  v17(v8, 1, 1, v10);
  v13(v2, 1, 1, v12);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v2, &qword_1005AF090, &qword_1004D0270);
  return sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
}

void sub_1002FD36C(uint64_t a1, uint64_t a2)
{
  if (qword_1005A8150 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Table();
  sub_10000A6F0(v4, qword_1005E00C0);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v2)
  {
  }

  else
  {

    if (qword_1005A8158 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v4, qword_1005E00D8);
    Table.create(temporary:ifNotExists:withoutRowid:block:)();
    Connection.run(_:_:)();

    *(a2 + 136) = 1;
  }
}

uint64_t sub_1002FD504()
{
  v0 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_10004B564(&qword_1005AF0E8, &unk_1004D02B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  if (qword_1005A8308 != -1)
  {
    swift_once();
  }

  v9 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v9, qword_1005E0600);
  v10 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 1, 1, v10);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v5, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8310 != -1)
  {
    swift_once();
  }

  v12 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v12, qword_1005E0618);
  v11(v8, 1, 1, v10);
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v2, &qword_1005AF090, &qword_1004D0270);
  return sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
}

uint64_t sub_1002FD860()
{
  v0 = sub_10004B564(&qword_1005B1A48, &qword_1004D5858);
  __chkstk_darwin(v0 - 8);
  v71 = &v65 - v1;
  v2 = sub_10004B564(&qword_1005B1A00, &qword_1004D57E8);
  __chkstk_darwin(v2 - 8);
  v74 = &v65 - v3;
  v4 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  __chkstk_darwin(v4 - 8);
  v80 = &v65 - v5;
  v6 = sub_10004B564(&qword_1005AF0E8, &unk_1004D02B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v65 - v7;
  v9 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  v10 = __chkstk_darwin(v9 - 8);
  v73 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v65 - v12;
  if (qword_1005A8360 != -1)
  {
    swift_once();
  }

  v14 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v14, qword_1005E0708);
  v15 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v16 = (*(v15 - 8) + 56);
  v85 = *v16;
  v85(v13, 1, 1, v15);
  v17 = *(v14 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v18(v8, 1, 1, v14);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v8, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8318 != -1)
  {
    swift_once();
  }

  v20 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10000A6F0(v20, qword_1005E0630);
  v85(v13, 1, 1, v15);
  v18(v8, 1, 1, v14);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v8, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8320 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v20, qword_1005E0648);
  v85(v13, 1, 1, v15);
  v18(v8, 1, 1, v14);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v8, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8328 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v20, qword_1005E0660);
  v85(v13, 1, 1, v15);
  v18(v8, 1, 1, v14);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v8, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8330 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v20, qword_1005E0678);
  v85(v13, 1, 1, v15);
  v18(v8, 1, 1, v14);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v8, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8338 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v20, qword_1005E0690);
  v85(v13, 1, 1, v15);
  v82 = v19;
  v83 = v14;
  v18(v8, 1, 1, v14);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v8, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8340 != -1)
  {
    swift_once();
  }

  v78 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v78, qword_1005E06A8);
  v21 = v85;
  v85(v13, 1, 1, v15);
  v22 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  v23 = *(v22 - 8);
  v24 = v80;
  v76 = *(v23 + 56);
  v77 = v22;
  v75 = v23 + 56;
  v76(v80, 1, 1);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v24, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8348 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v20, qword_1005E06C0);
  v21(v13, 1, 1, v15);
  v18(v8, 1, 1, v83);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v8, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8350 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v78, qword_1005E06D8);
  v21(v13, 1, 1, v15);
  v25 = v80;
  (v76)(v80, 1, 1, v77);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v25, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8358 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v20, qword_1005E06F0);
  v21(v13, 1, 1, v15);
  v81 = v18;
  v18(v8, 1, 1, v83);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v8, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8368 != -1)
  {
    swift_once();
  }

  v70 = sub_10004B564(&qword_1005B1A20, &qword_1004D5818);
  sub_10000A6F0(v70, qword_1005E0720);
  v21(v13, 1, 1, v15);
  v26 = v73;
  v21(v73, 1, 1, v15);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v27 = v21;
  sub_100002CE0(v26, &qword_1005AF0A8, &unk_1004D57F0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8370 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v20, qword_1005E0738);
  v21(v13, 1, 1, v15);
  v84 = v16;
  v28 = v83;
  v29 = v81;
  v81(v8, 1, 1, v83);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v8, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8378 != -1)
  {
    swift_once();
  }

  v79 = v20;
  sub_10000A6F0(v20, qword_1005E0750);
  v27(v13, 1, 1, v15);
  v29(v8, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v8, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8380 != -1)
  {
    swift_once();
  }

  v66 = v8;
  v72 = sub_10004B564(&qword_1005B1A28, &unk_1004D5820);
  sub_10000A6F0(v72, qword_1005E0768);
  v27(v13, 1, 1, v15);
  v30 = sub_10004B564(&qword_1005B1A18, &qword_1004D5810);
  v67 = v15;
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = *(v32 + 56);
  v34 = v32 + 56;
  v35 = v74;
  v33(v74, 1, 1, v30);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v35, &qword_1005B1A00, &qword_1004D57E8);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8388 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v72, qword_1005E0780);
  v36 = v67;
  v37 = v85;
  v85(v13, 1, 1, v67);
  v68 = v31;
  v69 = v33;
  v33(v35, 1, 1, v31);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v35, &qword_1005B1A00, &qword_1004D57E8);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  v38 = v79;
  v39 = v36;
  if (qword_1005A8390 != -1)
  {
    v64 = v79;
    swift_once();
    v38 = v64;
    v39 = v36;
  }

  v67 = v34;
  sub_10000A6F0(v38, qword_1005E0798);
  v37(v13, 1, 1, v39);
  v40 = v66;
  v81(v66, 1, 1, v83);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  v41 = v37;
  if (qword_1005A8398 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v70, qword_1005E07B0);
  v37(v13, 1, 1, v39);
  v42 = v73;
  v41(v73, 1, 1, v39);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v42, &qword_1005AF0A8, &unk_1004D57F0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  v43 = v68;
  if (qword_1005A83A0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v78, qword_1005E07C8);
  v41(v13, 1, 1, v39);
  v44 = v80;
  (v76)(v80, 1, 1, v77);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v44, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  v45 = v41;
  v46 = v79;
  if (qword_1005A83A8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v46, qword_1005E07E0);
  v41(v13, 1, 1, v39);
  v81(v40, 1, 1, v83);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A83B0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v72, qword_1005E07F8);
  v41(v13, 1, 1, v39);
  v47 = v74;
  v69(v74, 1, 1, v43);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v47, &qword_1005B1A00, &qword_1004D57E8);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A83B8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v46, qword_1005E0810);
  v45(v13, 1, 1, v39);
  v48 = v83;
  v49 = v81;
  v81(v40, 1, 1, v83);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A83C0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v46, qword_1005E0828);
  v45(v13, 1, 1, v39);
  v49(v40, 1, 1, v48);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A83C8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v46, qword_1005E0840);
  v45(v13, 1, 1, v39);
  v49(v40, 1, 1, v48);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A83D0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v46, qword_1005E0858);
  v45(v13, 1, 1, v39);
  v49(v40, 1, 1, v48);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  v50 = v45;
  if (qword_1005A83D8 != -1)
  {
    swift_once();
  }

  v51 = sub_10004B564(&qword_1005B1A50, &qword_1004D5860);
  sub_10000A6F0(v51, qword_1005E0870);
  v45(v13, 1, 1, v39);
  v52 = sub_10004B564(&qword_1005B1A58, &qword_1004D5868);
  v53 = v71;
  (*(*(v52 - 8) + 56))(v71, 1, 1, v52);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v53, &qword_1005B1A48, &qword_1004D5858);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  v54 = v39;
  if (qword_1005A83E0 != -1)
  {
    swift_once();
  }

  v55 = v79;
  sub_10000A6F0(v79, qword_1005E0888);
  v45(v13, 1, 1, v54);
  v56 = v54;
  v57 = v83;
  v58 = v81;
  v81(v40, 1, 1, v83);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A83E8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v55, qword_1005E08A0);
  v50(v13, 1, 1, v56);
  v58(v40, 1, 1, v57);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A83F0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v55, qword_1005E08B8);
  v50(v13, 1, 1, v56);
  v58(v40, 1, 1, v57);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A83F8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v78, qword_1005E08D0);
  v50(v13, 1, 1, v56);
  v59 = v80;
  (v76)(v80, 1, 1, v77);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v59, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8400 != -1)
  {
    swift_once();
  }

  v60 = v79;
  sub_10000A6F0(v79, qword_1005E08E8);
  v50(v13, 1, 1, v56);
  v61 = v83;
  v62 = v81;
  v81(v40, 1, 1, v83);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8408 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v60, qword_1005E0900);
  v50(v13, 1, 1, v56);
  v62(v40, 1, 1, v61);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8410 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v60, qword_1005E0918);
  v85(v13, 1, 1, v56);
  v62(v40, 1, 1, v61);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8418 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v60, qword_1005E0930);
  v85(v13, 1, 1, v56);
  v62(v40, 1, 1, v61);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8420 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v60, qword_1005E0948);
  v85(v13, 1, 1, v56);
  v62(v40, 1, 1, v61);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8428 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v60, qword_1005E0960);
  v85(v13, 1, 1, v56);
  v62(v40, 1, 1, v61);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8430 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v60, qword_1005E0978);
  v85(v13, 1, 1, v56);
  v62(v40, 1, 1, v61);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8438 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v60, qword_1005E0990);
  v85(v13, 1, 1, v56);
  v62(v40, 1, 1, v61);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8440 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v60, qword_1005E09A8);
  v85(v13, 1, 1, v56);
  v62(v40, 1, 1, v61);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8448 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v60, qword_1005E09C0);
  v85(v13, 1, 1, v56);
  v62(v40, 1, 1, v61);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8450 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v60, qword_1005E09D8);
  v85(v13, 1, 1, v56);
  v62(v40, 1, 1, v61);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v40, &qword_1005AF0E8, &unk_1004D02B0);
  return sub_100002CE0(v13, &qword_1005AF0A8, &unk_1004D57F0);
}

uint64_t sub_1002FFD94()
{
  v0 = sub_10004B564(&qword_1005AF088, &unk_1004D5840);
  __chkstk_darwin(v0 - 8);
  v22 = &v20 - v1;
  v2 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  __chkstk_darwin(v2 - 8);
  v21 = &v20 - v3;
  v4 = sub_10004B564(&qword_1005AF0A0, &unk_1004D0280);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  if (qword_1005A8458 != -1)
  {
    swift_once();
  }

  v10 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  sub_10000A6F0(v10, qword_1005E09F0);
  v11 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v13(v9, 1, 1, v11);
  v14 = *(*(v10 - 8) + 56);
  v14(v6, 1, 1, v10);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v6, &qword_1005AF0A0, &unk_1004D0280);
  sub_100002CE0(v9, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8460 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v10, qword_1005E0A08);
  v13(v9, 1, 1, v11);
  v14(v6, 1, 1, v10);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v6, &qword_1005AF0A0, &unk_1004D0280);
  sub_100002CE0(v9, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8468 != -1)
  {
    swift_once();
  }

  v15 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v15, qword_1005E0A20);
  v13(v9, 1, 1, v11);
  v16 = v21;
  (*(*(v15 - 8) + 56))(v21, 1, 1, v15);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v16, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v9, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8470 != -1)
  {
    swift_once();
  }

  v17 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
  sub_10000A6F0(v17, qword_1005E0A38);
  v13(v9, 1, 1, v11);
  v18 = v22;
  (*(*(v17 - 8) + 56))(v22, 1, 1, v17);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v18, &qword_1005AF088, &unk_1004D5840);
  return sub_100002CE0(v9, &qword_1005AF0A8, &unk_1004D57F0);
}

uint64_t sub_100300338()
{
  v0 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_10004B564(&qword_1005AF0E8, &unk_1004D02B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  if (qword_1005A8478 != -1)
  {
    swift_once();
  }

  v9 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v9, qword_1005E0A50);
  v10 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 1, 1, v10);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v5, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8480 != -1)
  {
    swift_once();
  }

  v12 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v12, qword_1005E0A68);
  v11(v8, 1, 1, v10);
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v2, &qword_1005AF090, &qword_1004D0270);
  return sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
}

void sub_100300694(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Table();
  sub_10000A6F0(v8, a4);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  if (!v6)
  {
  }
}

uint64_t sub_100300758()
{
  v0 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_10004B564(&qword_1005B1A60, &qword_1004D5870);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  if (qword_1005A8488 != -1)
  {
    swift_once();
  }

  v9 = sub_10004B564(&qword_1005B1A68, &qword_1004D5878);
  sub_10000A6F0(v9, qword_1005E0A80);
  v10 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 1, 1, v10);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100300D10();
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v5, &qword_1005B1A60, &qword_1004D5870);
  sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8480 != -1)
  {
    swift_once();
  }

  v12 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v12, qword_1005E0A68);
  v11(v8, 1, 1, v10);
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v2, &qword_1005AF090, &qword_1004D0270);
  return sub_100002CE0(v8, &qword_1005AF0A8, &unk_1004D57F0);
}

uint64_t sub_100300CBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100300D10()
{
  result = qword_1005B1A70;
  if (!qword_1005B1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1A70);
  }

  return result;
}

uint64_t sub_100300D64()
{
  v1 = type metadata accessor for Keychain.DataProtectionClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Keychain.data(account:service:)();
  if (!v0 && v6 >> 60 == 15)
  {
    v16 = 0;
    v17 = static Data.random(bytes:)();
    v19 = v7;
    sub_100005F6C(v17, v7);
    if (qword_1005A8128 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005B1890);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18[0] = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10000D01C(0x6974707972636E65, 0xEF292879654B6E6FLL, v18);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Generating a new key...", v11, 0xCu);
      sub_100004984(v12);
    }

    v18[0] = v17;
    v18[1] = v19;
    (*(v2 + 104))(v4, enum case for Keychain.DataProtectionClass.c(_:), v1);
    sub_1000CA210();
    v13 = v16;
    static Keychain.set<A>(data:account:service:dataProtectionClass:)();
    (*(v2 + 8))(v4, v1);
    v14 = v17;
    if (v13)
    {
      v15 = v19;
      sub_1000049D0(v17, v19);
      return sub_1000049D0(v14, v15);
    }

    else
    {
      sub_1000049D0(v17, v19);
      return v14;
    }
  }

  return result;
}

uint64_t sub_1003010B4()
{
  v0 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  sub_10004F154(v0, qword_1005E0168);
  sub_10000A6F0(v0, qword_1005E0168);
  sub_1003051A0(&qword_1005AF080, &qword_1005AF078, &unk_1004D0260);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301148()
{
  v0 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
  sub_10004F154(v0, qword_1005E0180);
  sub_10000A6F0(v0, qword_1005E0180);
  sub_1003051A0(&qword_1005AF060, &qword_1005AF058, &unk_1004D0250);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003011E8()
{
  v0 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
  sub_10004F154(v0, qword_1005E0198);
  sub_10000A6F0(v0, qword_1005E0198);
  sub_1003051A0(&qword_1005AF0E0, &qword_1005AF0B8, &qword_1004D5850);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301294()
{
  v0 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10004F154(v0, qword_1005E01B0);
  sub_10000A6F0(v0, qword_1005E01B0);
  sub_1003051A0(&qword_1005AF030, &qword_1005AF028, &qword_1004D0238);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301340()
{
  v0 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
  sub_10004F154(v0, qword_1005E01C8);
  sub_10000A6F0(v0, qword_1005E01C8);
  sub_1003051A0(&qword_1005B1A88, &qword_1005AF0C8, &unk_1004D02A0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003013E0()
{
  v0 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10004F154(v0, qword_1005E01E0);
  sub_10000A6F0(v0, qword_1005E01E0);
  sub_1003051A0(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10030148C()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E01F8);
  sub_10000A6F0(v0, qword_1005E01F8);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301538()
{
  v0 = sub_10004B564(&qword_1005B1A10, &unk_1004D5800);
  sub_10004F154(v0, qword_1005E0210);
  sub_10000A6F0(v0, qword_1005E0210);
  sub_1003051A0(&qword_1005B1AB8, &qword_1005B1A10, &unk_1004D5800);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003015E4()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0228);
  sub_10000A6F0(v0, qword_1005E0228);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301688()
{
  v0 = sub_10004B564(&qword_1005B1A18, &qword_1004D5810);
  sub_10004F154(v0, qword_1005E0240);
  sub_10000A6F0(v0, qword_1005E0240);
  sub_1003051A0(&qword_1005B1AC0, &qword_1005B1A18, &qword_1004D5810);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301734()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0258);
  sub_10000A6F0(v0, qword_1005E0258);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003017E0()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0270);
  sub_10000A6F0(v0, qword_1005E0270);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10030188C()
{
  v0 = sub_10004B564(&qword_1005B1A20, &qword_1004D5818);
  sub_10004F154(v0, qword_1005E0288);
  sub_10000A6F0(v0, qword_1005E0288);
  sub_1003051A0(&qword_1005B1AA8, &qword_1005B1A20, &qword_1004D5818);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301938()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005E02A0);
  sub_10000A6F0(v0, qword_1005E02A0);
  sub_1003051A0(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003019E4()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E02B8);
  sub_10000A6F0(v0, qword_1005E02B8);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301A90()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E02D0);
  sub_10000A6F0(v0, qword_1005E02D0);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301B3C()
{
  v0 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10004F154(v0, qword_1005E02E8);
  sub_10000A6F0(v0, qword_1005E02E8);
  sub_1003051A0(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301BE8()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0300);
  sub_10000A6F0(v0, qword_1005E0300);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301C94()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0318);
  sub_10000A6F0(v0, qword_1005E0318);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301D40()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0330);
  sub_10000A6F0(v0, qword_1005E0330);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301DEC()
{
  v0 = sub_10004B564(&qword_1005B1A10, &unk_1004D5800);
  sub_10004F154(v0, qword_1005E0348);
  sub_10000A6F0(v0, qword_1005E0348);
  sub_1003051A0(&qword_1005B1AB8, &qword_1005B1A10, &unk_1004D5800);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301E98()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0360);
  sub_10000A6F0(v0, qword_1005E0360);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301F44()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005E0378);
  sub_10000A6F0(v0, qword_1005E0378);
  sub_1003051A0(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240);
  return ExpressionType.init(_:)();
}

uint64_t sub_100301FF0()
{
  v0 = sub_10004B564(&qword_1005B1A28, &unk_1004D5820);
  sub_10004F154(v0, qword_1005E0390);
  sub_10000A6F0(v0, qword_1005E0390);
  sub_1003051A0(&qword_1005B1AA0, &qword_1005B1A28, &unk_1004D5820);
  return ExpressionType.init(_:)();
}

uint64_t sub_10030209C()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E03A8);
  sub_10000A6F0(v0, qword_1005E03A8);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100302148()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E03C0);
  sub_10000A6F0(v0, qword_1005E03C0);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003021F4()
{
  v0 = sub_10004B564(&qword_1005B1A20, &qword_1004D5818);
  sub_10004F154(v0, qword_1005E03D8);
  sub_10000A6F0(v0, qword_1005E03D8);
  sub_1003051A0(&qword_1005B1AA8, &qword_1005B1A20, &qword_1004D5818);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003022A0()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005E03F0);
  sub_10000A6F0(v0, qword_1005E03F0);
  sub_1003051A0(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240);
  return ExpressionType.init(_:)();
}

uint64_t sub_10030234C()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0408);
  sub_10000A6F0(v0, qword_1005E0408);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003023F8()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0420);
  sub_10000A6F0(v0, qword_1005E0420);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003024A4()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0438);
  sub_10000A6F0(v0, qword_1005E0438);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100302550()
{
  v0 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  sub_10004F154(v0, qword_1005E0450);
  sub_10000A6F0(v0, qword_1005E0450);
  sub_1003051A0(&qword_1005B1A80, &qword_1005AF0B0, &unk_1004D0290);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003025FC()
{
  v0 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  sub_10004F154(v0, qword_1005E0468);
  sub_10000A6F0(v0, qword_1005E0468);
  sub_1003051A0(&qword_1005B1A80, &qword_1005AF0B0, &unk_1004D0290);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003026A8()
{
  v0 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  sub_10004F154(v0, qword_1005E0480);
  sub_10000A6F0(v0, qword_1005E0480);
  sub_1003051A0(&qword_1005B1A80, &qword_1005AF0B0, &unk_1004D0290);
  return ExpressionType.init(_:)();
}

uint64_t sub_100302754()
{
  v0 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  sub_10004F154(v0, qword_1005E0498);
  sub_10000A6F0(v0, qword_1005E0498);
  sub_1003051A0(&qword_1005B1A80, &qword_1005AF0B0, &unk_1004D0290);
  return ExpressionType.init(_:)();
}

uint64_t sub_100302800()
{
  v0 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10004F154(v0, qword_1005E04B0);
  sub_10000A6F0(v0, qword_1005E04B0);
  sub_1003051A0(&qword_1005AF030, &qword_1005AF028, &qword_1004D0238);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003028A4()
{
  v0 = sub_10004B564(&qword_1005B1A30, &qword_1004D6050);
  sub_10004F154(v0, qword_1005E04C8);
  sub_10000A6F0(v0, qword_1005E04C8);
  sub_1003051A0(&qword_1005B1AB0, &qword_1005B1A30, &qword_1004D6050);
  return ExpressionType.init(_:)();
}

uint64_t sub_100302940()
{
  v0 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10004F154(v0, qword_1005E04E0);
  sub_10000A6F0(v0, qword_1005E04E0);
  sub_1003051A0(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003029EC()
{
  v0 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10004F154(v0, qword_1005E04F8);
  sub_10000A6F0(v0, qword_1005E04F8);
  sub_1003051A0(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100302A90()
{
  v0 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10004F154(v0, qword_1005E0510);
  sub_10000A6F0(v0, qword_1005E0510);
  sub_1003051A0(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100302B38()
{
  v0 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  sub_10004F154(v0, qword_1005E0528);
  sub_10000A6F0(v0, qword_1005E0528);
  sub_1003051A0(&qword_1005B1A80, &qword_1005AF0B0, &unk_1004D0290);
  return ExpressionType.init(_:)();
}

uint64_t sub_100302BE4()
{
  v0 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  sub_10004F154(v0, qword_1005E0540);
  sub_10000A6F0(v0, qword_1005E0540);
  sub_1003051A0(&qword_1005B1A80, &qword_1005AF0B0, &unk_1004D0290);
  return ExpressionType.init(_:)();
}

uint64_t sub_100302C8C()
{
  v0 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  sub_10004F154(v0, qword_1005E0558);
  sub_10000A6F0(v0, qword_1005E0558);
  sub_1003051A0(&qword_1005B1A80, &qword_1005AF0B0, &unk_1004D0290);
  return ExpressionType.init(_:)();
}

uint64_t sub_100302D38()
{
  v0 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  sub_10004F154(v0, qword_1005E0570);
  sub_10000A6F0(v0, qword_1005E0570);
  sub_1003051A0(&qword_1005B1A80, &qword_1005AF0B0, &unk_1004D0290);
  return ExpressionType.init(_:)();
}

uint64_t sub_100302DE4()
{
  v0 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
  sub_10004F154(v0, qword_1005E0588);
  sub_10000A6F0(v0, qword_1005E0588);
  sub_1003051A0(&qword_1005AF060, &qword_1005AF058, &unk_1004D0250);
  return ExpressionType.init(_:)();
}

uint64_t sub_100302E8C()
{
  v0 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10004F154(v0, qword_1005E05A0);
  sub_10000A6F0(v0, qword_1005E05A0);
  sub_1003051A0(&qword_1005AF030, &qword_1005AF028, &qword_1004D0238);
  return ExpressionType.init(_:)();
}

uint64_t sub_100302F28()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005E05B8);
  sub_10000A6F0(v0, qword_1005E05B8);
  sub_1003051A0(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240);
  return ExpressionType.init(_:)();
}

uint64_t sub_100302FD4()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005E05D0);
  sub_10000A6F0(v0, qword_1005E05D0);
  sub_1003051A0(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240);
  return ExpressionType.init(_:)();
}

uint64_t sub_10030307C()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005E05E8);
  sub_10000A6F0(v0, qword_1005E05E8);
  sub_1003051A0(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303128()
{
  v0 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10004F154(v0, qword_1005E0600);
  sub_10000A6F0(v0, qword_1005E0600);
  sub_1003051A0(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003031D4()
{
  v0 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10004F154(v0, qword_1005E0618);
  sub_10000A6F0(v0, qword_1005E0618);
  sub_1003051A0(&qword_1005AF030, &qword_1005AF028, &qword_1004D0238);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303280()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0630);
  sub_10000A6F0(v0, qword_1005E0630);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10030332C()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0648);
  sub_10000A6F0(v0, qword_1005E0648);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003033CC()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0660);
  sub_10000A6F0(v0, qword_1005E0660);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303474()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0678);
  sub_10000A6F0(v0, qword_1005E0678);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303520()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0690);
  sub_10000A6F0(v0, qword_1005E0690);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003035C8()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005E06A8);
  sub_10000A6F0(v0, qword_1005E06A8);
  sub_1003051A0(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303664()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E06C0);
  sub_10000A6F0(v0, qword_1005E06C0);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303704()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005E06D8);
  sub_10000A6F0(v0, qword_1005E06D8);
  sub_1003051A0(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003037AC()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E06F0);
  sub_10000A6F0(v0, qword_1005E06F0);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10030384C()
{
  v0 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10004F154(v0, qword_1005E0708);
  sub_10000A6F0(v0, qword_1005E0708);
  sub_1003051A0(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003038E0()
{
  v0 = sub_10004B564(&qword_1005B1A20, &qword_1004D5818);
  sub_10004F154(v0, qword_1005E0720);
  sub_10000A6F0(v0, qword_1005E0720);
  sub_1003051A0(&qword_1005B1AA8, &qword_1005B1A20, &qword_1004D5818);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303978()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0738);
  sub_10000A6F0(v0, qword_1005E0738);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303A14()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0750);
  sub_10000A6F0(v0, qword_1005E0750);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303AC0()
{
  v0 = sub_10004B564(&qword_1005B1A28, &unk_1004D5820);
  sub_10004F154(v0, qword_1005E0768);
  sub_10000A6F0(v0, qword_1005E0768);
  sub_1003051A0(&qword_1005B1AA0, &qword_1005B1A28, &unk_1004D5820);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303B60()
{
  v0 = sub_10004B564(&qword_1005B1A28, &unk_1004D5820);
  sub_10004F154(v0, qword_1005E0780);
  sub_10000A6F0(v0, qword_1005E0780);
  sub_1003051A0(&qword_1005B1AA0, &qword_1005B1A28, &unk_1004D5820);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303C04()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0798);
  sub_10000A6F0(v0, qword_1005E0798);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303CAC()
{
  v0 = sub_10004B564(&qword_1005B1A20, &qword_1004D5818);
  sub_10004F154(v0, qword_1005E07B0);
  sub_10000A6F0(v0, qword_1005E07B0);
  sub_1003051A0(&qword_1005B1AA8, &qword_1005B1A20, &qword_1004D5818);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303D54()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005E07C8);
  sub_10000A6F0(v0, qword_1005E07C8);
  sub_1003051A0(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303DFC()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E07E0);
  sub_10000A6F0(v0, qword_1005E07E0);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303EA8()
{
  v0 = sub_10004B564(&qword_1005B1A28, &unk_1004D5820);
  sub_10004F154(v0, qword_1005E07F8);
  sub_10000A6F0(v0, qword_1005E07F8);
  sub_1003051A0(&qword_1005B1AA0, &qword_1005B1A28, &unk_1004D5820);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303F44()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0810);
  sub_10000A6F0(v0, qword_1005E0810);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100303FE0()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0828);
  sub_10000A6F0(v0, qword_1005E0828);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304084()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0840);
  sub_10000A6F0(v0, qword_1005E0840);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304124()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0858);
  sub_10000A6F0(v0, qword_1005E0858);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003041BC()
{
  v0 = sub_10004B564(&qword_1005B1A50, &qword_1004D5860);
  sub_10004F154(v0, qword_1005E0870);
  sub_10000A6F0(v0, qword_1005E0870);
  sub_1003051A0(&qword_1005B1A98, &qword_1005B1A50, &qword_1004D5860);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304268()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0888);
  sub_10000A6F0(v0, qword_1005E0888);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304314()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E08A0);
  sub_10000A6F0(v0, qword_1005E08A0);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003043C0()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E08B8);
  sub_10000A6F0(v0, qword_1005E08B8);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10030446C()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005E08D0);
  sub_10000A6F0(v0, qword_1005E08D0);
  sub_1003051A0(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304518()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E08E8);
  sub_10000A6F0(v0, qword_1005E08E8);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003045C4()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0900);
  sub_10000A6F0(v0, qword_1005E0900);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304670()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0918);
  sub_10000A6F0(v0, qword_1005E0918);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10030471C()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0930);
  sub_10000A6F0(v0, qword_1005E0930);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003047C8()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0948);
  sub_10000A6F0(v0, qword_1005E0948);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304874()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0960);
  sub_10000A6F0(v0, qword_1005E0960);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304920()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0978);
  sub_10000A6F0(v0, qword_1005E0978);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1003049CC()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E0990);
  sub_10000A6F0(v0, qword_1005E0990);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304A78()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E09A8);
  sub_10000A6F0(v0, qword_1005E09A8);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304B24()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E09C0);
  sub_10000A6F0(v0, qword_1005E09C0);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304BD0()
{
  v0 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10004F154(v0, qword_1005E09D8);
  sub_10000A6F0(v0, qword_1005E09D8);
  sub_1003051A0(&qword_1005B1A90, &qword_1005B1A08, &qword_1004D5FF0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304C7C()
{
  v0 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  sub_10004F154(v0, qword_1005E09F0);
  sub_10000A6F0(v0, qword_1005E09F0);
  sub_1003051A0(&qword_1005AF080, &qword_1005AF078, &unk_1004D0260);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304D1C()
{
  v0 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  sub_10004F154(v0, qword_1005E0A08);
  sub_10000A6F0(v0, qword_1005E0A08);
  sub_1003051A0(&qword_1005AF080, &qword_1005AF078, &unk_1004D0260);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304DC0()
{
  v0 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10004F154(v0, qword_1005E0A20);
  sub_10000A6F0(v0, qword_1005E0A20);
  sub_1003051A0(&qword_1005AF030, &qword_1005AF028, &qword_1004D0238);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304E6C()
{
  v0 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
  sub_10004F154(v0, qword_1005E0A38);
  sub_10000A6F0(v0, qword_1005E0A38);
  sub_1003051A0(&qword_1005B1A88, &qword_1005AF0C8, &unk_1004D02A0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304F04()
{
  v0 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10004F154(v0, qword_1005E0A50);
  sub_10000A6F0(v0, qword_1005E0A50);
  sub_1003051A0(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100304F9C()
{
  v0 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10004F154(v0, qword_1005E0A68);
  sub_10000A6F0(v0, qword_1005E0A68);
  sub_1003051A0(&qword_1005AF030, &qword_1005AF028, &qword_1004D0238);
  return ExpressionType.init(_:)();
}

uint64_t sub_100305038()
{
  v0 = sub_10004B564(&qword_1005B1A68, &qword_1004D5878);
  sub_10004F154(v0, qword_1005E0A80);
  sub_10000A6F0(v0, qword_1005E0A80);
  sub_1003051A0(&qword_1005B1AC8, &qword_1005B1A68, &qword_1004D5878);
  return ExpressionType.init(_:)();
}

double sub_1003050E4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

uint64_t sub_1003050F0(uint64_t a1)
{
  v2 = sub_100300D10();

  return Value.expression.getter(a1, v2);
}

unint64_t sub_100305140()
{
  result = qword_1005B1A78;
  if (!qword_1005B1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1A78);
  }

  return result;
}

uint64_t sub_1003051A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003051F4()
{
  v1[3] = v0;
  v2 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003052C0, v0, 0);
}

uint64_t sub_1003052C0(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = *(v3 + 208);
  v5 = sub_10000D108(&qword_1005AAB90, a2, type metadata accessor for LocalStorageService, &unk_1004D5A90);

  v6 = swift_task_alloc();
  v2[8] = v6;
  v6[2] = &unk_1004D5D98;
  v6[3] = v3;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v2[9] = v7;
  v8 = sub_10004B564(&qword_1005B1C50, &qword_1004D5D60);
  *v7 = v2;
  v7[1] = sub_100305428;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2 + 2, v3, v5, 0xD00000000000001DLL, 0x80000001004E0910, sub_100318F8C, v6, v8);
}

uint64_t sub_100305428()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = v2[3];
    v4 = sub_100318F70;
  }

  else
  {
    v5 = v2[3];

    v2[11] = v2[2];
    v4 = sub_10030556C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10030556C()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v16 = v0[5];
    result = sub_1002394A4(0, v2, 0);
    v4 = 0;
    v5 = v0[10];
    v6 = (v1 + 56);
    v17 = v2;
    v18 = v1;
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = *(v6 - 1);
      v8 = *v6;
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();

      sub_100005F6C(v7, v8);
      PropertyListDecoder.init()();
      sub_10000D108(&qword_1005B1C68, 255, type metadata accessor for SecureLocationsCachedSharedKey, &unk_1004C4558);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (v5)
      {
        break;
      }

      v10 = v0[6];
      v9 = v0[7];

      sub_1000049D0(v7, v8);

      sub_100318718(v10, v9, type metadata accessor for SecureLocationsCachedSharedKey);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_1002394A4((v11 > 1), v12 + 1, 1);
      }

      ++v4;
      v13 = v0[7];
      _swiftEmptyArrayStorage[2] = v12 + 1;
      result = sub_100318718(v13, _swiftEmptyArrayStorage + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for SecureLocationsCachedSharedKey);
      v5 = 0;
      v6 += 4;
      v1 = v18;
      if (v17 == v4)
      {
        goto LABEL_8;
      }
    }

    sub_1000049D0(v7, v8);

    v14 = v0[1];

    return v14();
  }

  else
  {
LABEL_8:

    v15 = v0[1];

    return v15(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10030585C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for SecureLocationsCachedSharedKey(0) - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100305920, v1, 0);
}

uint64_t sub_100305920()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 208);
  sub_100318DB4(v0[2], v1, type metadata accessor for SecureLocationsCachedSharedKey);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[7] = v6;
  *(v6 + 16) = v2;
  sub_100318718(v1, v6 + v5, type metadata accessor for SecureLocationsCachedSharedKey);
  v8 = sub_10000D108(&qword_1005AAB90, v7, type metadata accessor for LocalStorageService, &unk_1004D5A90);

  v9 = swift_task_alloc();
  v0[8] = v9;
  v9[2] = &unk_1004C45B8;
  v9[3] = v6;
  v9[4] = v4;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100305AE4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v2, v8, 0xD00000000000001DLL, 0x80000001004E0910, sub_100318170, v9, &type metadata for () + 1);
}

uint64_t sub_100305AE4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_100318FA4;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100318F88;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100305C14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_100305C5C, v1, 0);
}

uint64_t sub_100305C5C(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[2];
  v6 = sub_10000D108(&qword_1005AAB90, a2, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v7 = swift_task_alloc();
  v2[5] = v7;
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v4;
  v8 = swift_task_alloc();
  v2[6] = v8;
  *v8 = v2;
  v8[1] = sub_100305DA0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v3, v6, 0x7266286574697277, 0xEF293A73646E6569, sub_1003170AC, v7, &type metadata for () + 1);
}

uint64_t sub_100305DA0()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_100318F64;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1002BCFE4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100305EC8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_100305F10, v1, 0);
}

uint64_t sub_100305F10(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[2];
  v6 = sub_10000D108(&qword_1005AAB90, a2, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v7 = swift_task_alloc();
  v2[5] = v7;
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v4;
  v8 = swift_task_alloc();
  v2[6] = v8;
  *v8 = v2;
  v8[1] = sub_100305DA0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v3, v6, 0x7728657461647075, 0xED0000293A687469, sub_10031721C, v7, &type metadata for () + 1);
}

uint64_t sub_100306054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_1003060A0, 0, 0);
}

uint64_t sub_1003060A0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  *v5 = v0;
  v5[1] = sub_1003061B4;
  v7 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000012, 0x80000001004E7B30, sub_100318BD4, v3, v6);
}

uint64_t sub_1003061B4()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003062F0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1003062F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100306354()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003063B8()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return _swift_task_switch(sub_100306400, v0, 0);
}

uint64_t sub_100306400(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = sub_10000D108(&qword_1005AAB90, a2, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v6 = swift_task_alloc();
  v2[5] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v2[6] = v7;
  v8 = sub_10004B564(&qword_1005B1C10, &qword_1004D5AC0);
  *v7 = v2;
  v7[1] = sub_100306548;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2 + 2, v3, v5, 0xD000000000000010, 0x80000001004E7A40, sub_10030D9AC, v6, v8);
}

uint64_t sub_100306548()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_100318F64;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100318FAC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100306670(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_1003066B8, v1, 0);
}

uint64_t sub_1003066B8(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[2];
  v6 = sub_10000D108(&qword_1005AAB90, a2, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v7 = swift_task_alloc();
  v2[5] = v7;
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v4;
  v8 = swift_task_alloc();
  v2[6] = v8;
  *v8 = v2;
  v8[1] = sub_100305DA0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v3, v6, 0x6564286574697277, 0xEF293A7365636976, sub_10031738C, v7, &type metadata for () + 1);
}

uint64_t sub_1003067FC(uint64_t a1)
{
  v2[62] = a1;
  v2[63] = v1;
  v2[64] = *v1;
  return _swift_task_switch(sub_100306844, v1, 0);
}

uint64_t sub_100306844(uint64_t a1, uint64_t a2)
{
  v3 = v2[63];
  v4 = v2[64];
  v5 = sub_10000D108(&qword_1005AAB90, a2, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v6 = swift_task_alloc();
  v2[65] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v2[66] = v7;
  v8 = sub_10004B564(&qword_1005A90D8, &unk_1004C6AB0);
  *v7 = v2;
  v7[1] = sub_100034D30;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2 + 2, v3, v5, 0xD000000000000014, 0x80000001004E7A80, sub_100316F90, v6, v8);
}

uint64_t sub_10030698C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003069F0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_100306A38, v1, 0);
}

uint64_t sub_100306A38(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[2];
  v6 = sub_10000D108(&qword_1005AAB90, a2, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v7 = swift_task_alloc();
  v2[5] = v7;
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v4;
  v8 = swift_task_alloc();
  v2[6] = v8;
  *v8 = v2;
  v8[1] = sub_100306B74;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v3, v6, 0xD000000000000016, 0x80000001004E7A60, sub_100316E6C, v7, &type metadata for () + 1);
}

uint64_t sub_100306B74()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_100318F64;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_10004B074;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100306C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Date();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_10004B564(&qword_1005B0B98, &qword_1004D27F0);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for FenceTriggerRecord(0);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100306DF8, v3, 0);
}

uint64_t sub_100306DF8(uint64_t a1, uint64_t a2)
{
  v3 = v2[5];
  v4 = v2[3];
  v5 = sub_10000D108(&qword_1005AAB90, a2, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v6 = swift_task_alloc();
  v2[14] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v2[15] = v7;
  *v7 = v2;
  v7[1] = sub_100306F2C;
  v9 = v2[9];
  v8 = v2[10];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v3, v5, 0xD000000000000011, 0x80000001004E6620, sub_100293188, v6, v9);
}

uint64_t sub_100306F2C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1003071EC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_100307054;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100307054()
{
  v1 = v0[10];
  if ((*(v0[12] + 48))(v1, 1, v0[11]) == 1)
  {
    sub_100002CE0(v1, &qword_1005B0B98, &qword_1004D27F0);
  }

  else
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    sub_100318718(v1, v0[13], type metadata accessor for FenceTriggerRecord);
    sub_1001A6DD8(v2);
    v5 = DateInterval.contains(_:)();
    (*(v3 + 8))(v2, v4);
    v6 = v0[13];
    if (v5)
    {
      sub_100318718(v6, v0[2], type metadata accessor for FenceTriggerRecord);
      v7 = 0;
      goto LABEL_7;
    }

    sub_100318F00(v6, type metadata accessor for FenceTriggerRecord);
  }

  v7 = 1;
LABEL_7:
  (*(v0[12] + 56))(v0[2], v7, 1, v0[11]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003071EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100307278()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0A98);
  v1 = sub_10000A6F0(v0, qword_1005E0A98);
  if (qword_1005A8498 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100307340()
{
  v1[2] = v0;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10030742C, 0, 0);
}

uint64_t sub_10030742C()
{
  v1 = v0[2];
  swift_defaultActor_initialize();
  v1[14] = 0xD000000000000013;
  v1[15] = 0x80000001004D5980;
  type metadata accessor for WorkItemQueue();
  UUID.init()();
  v1[17] = WorkItemQueue.__allocating_init(identifier:)();
  UUID.init()();
  v1[18] = WorkItemQueue.__allocating_init(identifier:)();
  UUID.init()();
  v1[19] = WorkItemQueue.__allocating_init(identifier:)();
  UUID.init()();
  v1[20] = WorkItemQueue.__allocating_init(identifier:)();
  UUID.init()();
  v1[21] = WorkItemQueue.__allocating_init(identifier:)();
  UUID.init()();
  v1[22] = WorkItemQueue.__allocating_init(identifier:)();
  UUID.init()();
  v1[23] = WorkItemQueue.__allocating_init(identifier:)();
  UUID.init()();
  v1[24] = WorkItemQueue.__allocating_init(identifier:)();
  UUID.init()();
  v1[25] = WorkItemQueue.__allocating_init(identifier:)();
  UUID.init()();
  v1[26] = WorkItemQueue.__allocating_init(identifier:)();
  UUID.init()();
  v1[27] = WorkItemQueue.__allocating_init(identifier:)();
  if (qword_1005A85D0 != -1)
  {
    swift_once();
  }

  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = sub_10000A6F0(v4, qword_1005E0D68);
  (*(v3 + 16))(v2, v5, v4);
  type metadata accessor for LocalStorageDatabase(0);
  swift_allocObject();
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_10030765C;
  v7 = v0[5];

  return sub_1002F8028(v7, 0);
}

uint64_t sub_10030765C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_100307938;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_100307784;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100307784()
{
  type metadata accessor for LocalStorageStore();
  *(v0 + 80) = swift_allocObject();

  return _swift_task_switch(sub_10030780C, 0, 0);
}

uint64_t sub_10030780C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  swift_defaultActor_initialize();
  v2[15] = 0xD000000000000011;
  v2[16] = 0x80000001004E7B50;
  v2[14] = v1;

  return _swift_task_switch(sub_100307898, 0, 0);
}

uint64_t sub_100307898()
{
  v1 = *(v0 + 16);
  *(v1 + 128) = *(v0 + 80);
  return _swift_task_switch(sub_1003078BC, v1, 0);
}

uint64_t sub_1003078BC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1(v2);
}

uint64_t sub_100307938()
{

  type metadata accessor for LocalStorageService();
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100307A38()
{
  *(v1 + 24) = v0;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_100307ACC;

  return daemon.getter();
}

uint64_t sub_100307ACC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[5] = a1;

  v3 = swift_task_alloc();
  v2[6] = v3;
  v4 = type metadata accessor for Daemon();
  v2[7] = v4;
  UnlockService = type metadata accessor for FirstUnlockService();
  v6 = sub_10000D108(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[8] = v6;
  v7 = sub_10000D108(&qword_1005AD510, 255, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *v3 = v9;
  v3[1] = sub_100307CC0;

  return ActorServiceDaemon.getService<A>()(v4, UnlockService, v6, v7);
}

uint64_t sub_100307CC0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v5 = v3[3];

    return _swift_task_switch(sub_100308EA4, v5, 0);
  }

  else
  {

    v8 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
    v6 = swift_task_alloc();
    v3[11] = v6;
    *v6 = v4;
    v6[1] = sub_100307E64;

    return v8();
  }
}

uint64_t sub_100307E64()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100307F74, v1, 0);
}

uint64_t sub_100307F74()
{
  v1 = *(*(v0 + 24) + 128);
  *(v0 + 96) = v1;
  return _swift_task_switch(sub_100307F98, v1, 0);
}

uint64_t sub_100307F98()
{
  v1 = *(*(v0 + 96) + 112);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_100307FBC, v1, 0);
}

uint64_t sub_100307FBC()
{
  v1 = v0[10];
  sub_10000A0A4();
  if (v1)
  {
    v0[16] = v1;
    v2 = v0[3];

    return _swift_task_switch(sub_100308460, v2, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_1003080A4;

    return sub_1003308AC();
  }
}

uint64_t sub_1003080A4()
{
  v2 = *v1;

  if (v0)
  {
    v2[16] = v0;
    v3 = v2[3];
    v4 = sub_100308460;
  }

  else
  {
    v3 = v2[12];
    v4 = sub_1003081C8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003081C8()
{
  v1 = *(*(v0 + 96) + 112);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_1003081EC, v1, 0);
}

uint64_t sub_1003081EC()
{
  v1 = *(v0 + 24);
  *(v0 + 232) = *(*(v0 + 120) + 136);
  return _swift_task_switch(sub_100308214, v1, 0);
}

uint64_t sub_100308214()
{
  if (*(v0 + 232) == 1)
  {
    if (qword_1005A8490 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 136) = sub_10000A6F0(v1, qword_1005E0A98);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "There's localDB migration performed, forceRefreshClientIfNeeded", v4, 2u);
    }

    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = sub_1003084C4;

    return sub_100309298();
  }

  else
  {
    if (qword_1005A8490 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0A98);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "There's no localDB migration performed, not force refreshClient", v10, 2u);
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100308460()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003084C4()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {
    v3 = v2[3];

    return _swift_task_switch(sub_100308F08, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[20] = v4;
    *v4 = v2;
    v4[1] = sub_100308630;

    return daemon.getter();
  }
}

uint64_t sub_100308630(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 168) = a1;

  v5 = swift_task_alloc();
  *(v3 + 176) = v5;
  v6 = type metadata accessor for DataManager(0);
  v7 = sub_10000D108(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v5 = v4;
  v5[1] = sub_1003087E8;
  v8 = *(v2 + 64);
  v9 = *(v2 + 56);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003087E8(uint64_t a1)
{
  v3 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_100308F6C;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_100308910;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100308910(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = sub_10000D108(&qword_1005AAB90, a2, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v5 = swift_task_alloc();
  *(v2 + 200) = v5;
  v6 = sub_10004B564(&qword_1005AD8F0, &qword_1004CAE58);
  *v5 = v2;
  v5[1] = sub_100308A40;
  v7 = *(v2 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2 + 16, v3, v4, 0x65636E65466C6C61, 0xEB00000000292873, sub_10000840C, v7, v6);
}

uint64_t sub_100308A40()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100308DA8;
  }

  else
  {
    v4 = sub_100308B6C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100308B6C()
{
  v1 = v0[2];
  v0[27] = v1;
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_100308C0C;

  return sub_1002176C4(v1, v1);
}

uint64_t sub_100308C0C()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100308D38, v1, 0);
}

uint64_t sub_100308D38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100308DA8()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to repairCKFences after database migration.", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100308EA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100308F08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100308F6C()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to repairCKFences after database migration.", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100309088()
{
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0A98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reset Local DB", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 128);
  *(v0 + 24) = v6;

  return _swift_task_switch(sub_1003091AC, v6, 0);
}

uint64_t sub_1003091AC()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_1003091D0, v1, 0);
}

uint64_t sub_1003091D0()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000D108(&qword_1005B19F0, 255, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  Database.reset()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100309298()
{
  *(v1 + 3520) = v0;
  *(v1 + 3528) = *v0;
  return _swift_task_switch(sub_1003092E0, v0, 0);
}

uint64_t sub_1003092E0(uint64_t a1, uint64_t a2)
{
  v3 = v2[441];
  v4 = v2[440];
  v5 = sub_10000D108(&qword_1005AAB90, a2, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v6 = swift_task_alloc();
  v2[442] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v7 = swift_task_alloc();
  v2[443] = v7;
  v8 = sub_10004B564(&qword_1005A90D8, &unk_1004C6AB0);
  v2[444] = v8;
  *v7 = v2;
  v7[1] = sub_100309430;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2 + 102, v4, v5, 0xD000000000000014, 0x80000001004E7A80, sub_100318FA8, v6, v8);
}

uint64_t sub_100309430()
{
  v2 = *v1;
  *(*v1 + 3560) = v0;

  v3 = *(v2 + 3520);
  if (v0)
  {
    v4 = sub_100309928;
  }

  else
  {
    v4 = sub_100309548;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100309548()
{
  v28 = v0;
  memcpy((v0 + 1776), (v0 + 816), 0x1E0uLL);
  memcpy((v0 + 1296), (v0 + 816), 0x1E0uLL);
  if (sub_100033B90(v0 + 1296) == 1)
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 1632);
    v3 = *(v0 + 1664);
    *(v0 + 3472) = *(v0 + 1648);
    *(v0 + 3488) = v3;
    *(v0 + 3504) = *(v0 + 1680);
    v4 = *(v0 + 1568);
    v5 = *(v0 + 1600);
    *(v0 + 3408) = *(v0 + 1584);
    *(v0 + 3424) = v5;
    *(v0 + 3440) = *(v0 + 1616);
    *(v0 + 3456) = v2;
    *(v0 + 3376) = *(v0 + 1552);
    *(v0 + 3392) = v4;
    if (sub_10005A3B0(v0 + 3376) == 1)
    {
      v6 = *(v0 + 2216);
      v7 = *(v0 + 1984);
      *(v0 + 3312) = *(v0 + 1968);
      *(v0 + 3328) = v7;
      v8 = *(v0 + 2016);
      *(v0 + 3344) = *(v0 + 2000);
      *(v0 + 3360) = v8;
      v9 = *(v0 + 1920);
      *(v0 + 3248) = *(v0 + 1904);
      *(v0 + 3264) = v9;
      v10 = *(v0 + 1952);
      *(v0 + 3280) = *(v0 + 1936);
      *(v0 + 3296) = v10;
      v11 = *(v0 + 1888);
      *(v0 + 3216) = *(v0 + 1872);
      *(v0 + 3232) = v11;
      v1 = sub_10002D650(v0 + 3216) == 1 && v6 == 0;
    }

    else
    {
      v1 = 0;
    }
  }

  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005E0A98);
  sub_100005F04(v0 + 1776, v0 + 2256, &qword_1005A90D8, &unk_1004C6AB0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  sub_100002CE0(v0 + 1776, &qword_1005A90D8, &unk_1004C6AB0);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 67240707;
    *(v16 + 4) = v1;
    *(v16 + 8) = 2160;
    *(v16 + 10) = 1752392040;
    *(v16 + 18) = 2081;
    memcpy((v0 + 2736), (v0 + 1776), 0x1E0uLL);
    v18 = String.init<A>(describing:)();
    v20 = sub_10000D01C(v18, v19, &v27);

    *(v16 + 20) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "LocalStorageService shouldForceRefreshClient: %{BOOL,public}dsettings %{private,mask.hash}s", v16, 0x1Cu);
    sub_100004984(v17);

    if (!v1)
    {
LABEL_15:
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "serverSettings is not nil after migrating local DB version, not force refreshClient", v23, 2u);
      }

      v24 = *(v0 + 8);

      return v24();
    }
  }

  else
  {

    sub_100002CE0(v0 + 1776, &qword_1005A90D8, &unk_1004C6AB0);
    if (!v1)
    {
      goto LABEL_15;
    }
  }

  v26 = swift_task_alloc();
  *(v0 + 3568) = v26;
  *v26 = v0;
  v26[1] = sub_10030998C;

  return daemon.getter();
}

uint64_t sub_100309928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030998C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 3576) = a1;

  v3 = swift_task_alloc();
  *(v2 + 3584) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_10000D108(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000D108(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100309B70;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100309B70(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 3592) = v1;

  if (v1)
  {
    v6 = v4[440];

    return _swift_task_switch(sub_100309E94, v6, 0);
  }

  else
  {

    v4[450] = a1;
    v7 = swift_task_alloc();
    v4[451] = v7;
    *v7 = v5;
    v7[1] = sub_100309D00;

    return sub_1001E17C0((v4 + 2));
  }
}