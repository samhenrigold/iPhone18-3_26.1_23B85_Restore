uint64_t sub_100C29720()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C27184();
}

uint64_t sub_100C297AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C27924();
}

uint64_t sub_100C29838@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_state;
  swift_beginAccess();
  v4 = type metadata accessor for PairingExecutorState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100C298C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_state;
  swift_beginAccess();
  v4 = type metadata accessor for PairingExecutorState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double sub_100C299B0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100C299F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_stateHistory;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100C29AB0(uint64_t a1)
{
  type metadata accessor for AirTagPairingExecutor(0);
  sub_100C2A554(&qword_1016B7838, type metadata accessor for AirTagPairingExecutor, &unk_1013E0180);

  return PairingExecutor.setState(_:)();
}

uint64_t sub_100C29B7C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B8828);
  v1 = sub_1000076D4(v0, qword_1016B8828);
  if (qword_101694D80 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BD68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100C29C44()
{
  result = qword_1016B8AB0;
  if (!qword_1016B8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AB0);
  }

  return result;
}

unint64_t sub_100C29CEC()
{
  result = qword_1016B8AB8;
  if (!qword_1016B8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AB8);
  }

  return result;
}

uint64_t sub_100C29D40()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BD68);
  sub_1000076D4(v0, qword_10177BD68);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100C29DC0()
{
  result = qword_1016B8AC0;
  if (!qword_1016B8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AC0);
  }

  return result;
}

unint64_t sub_100C29E14()
{
  result = qword_1016B8AC8;
  if (!qword_1016B8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AC8);
  }

  return result;
}

uint64_t sub_100C29E68(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100C26C1C(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_100C29FFC()
{
  result = qword_1016B8AD8;
  if (!qword_1016B8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AD8);
  }

  return result;
}

uint64_t sub_100C2A050(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100C24A48(a1, v4, v5, v1 + 32);
}

uint64_t sub_100C2A100(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100C24B10(a1, v4, v5, v6);
}

uint64_t sub_100C2A1B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100C24E0C(a1, v4, v5, v1 + 32);
}

uint64_t sub_100C2A264()
{
  swift_unknownObjectRelease();
  v1 = v0[6];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[5], v1);
  }

  v2 = v0[8];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[7], v2);
  }

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100C2A2DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100C24ED4(a1, v4, v5, v1 + 32);
}

uint64_t sub_100C2A38C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100C24F9C(a1, v4, v5, v6);
}

uint64_t sub_100C2A440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100C252CC(a1, v4, v5, v7, v6);
}

unint64_t sub_100C2A500()
{
  result = qword_1016B8AE0;
  if (!qword_1016B8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AE0);
  }

  return result;
}

uint64_t sub_100C2A554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100C2A59C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014650;

  return sub_100C19A30(a1, v5, v4);
}

uint64_t sub_100C2A648(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100C19C6C(a1, v5, v4);
}

uint64_t sub_100C2A6F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100C19E80(a1, v5, v4);
}

uint64_t sub_100C2A7A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100C19F38(a1, v5, v4);
}

uint64_t sub_100C2A84C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100C19FF0(a1, v5, v4);
}

unint64_t sub_100C2A8F8()
{
  result = qword_1016B8AE8;
  if (!qword_1016B8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AE8);
  }

  return result;
}

unint64_t sub_100C2A94C()
{
  result = qword_1016B8AF0;
  if (!qword_1016B8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AF0);
  }

  return result;
}

unint64_t sub_100C2A9A0()
{
  result = qword_1016B8AF8;
  if (!qword_1016B8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AF8);
  }

  return result;
}

unint64_t sub_100C2A9F4()
{
  result = qword_1016B8B00;
  if (!qword_1016B8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8B00);
  }

  return result;
}

uint64_t sub_100C2AA48(uint64_t a1, unsigned int a2)
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

uint64_t sub_100C2AA98(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100C2AB10()
{
  result = qword_1016B8B08;
  if (!qword_1016B8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8B08);
  }

  return result;
}

uint64_t sub_100C2AB68()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BDD8);
  sub_1000076D4(v0, qword_10177BDD8);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100C2ABFC()
{
  result = qword_1016B8B10;
  if (!qword_1016B8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8B10);
  }

  return result;
}

uint64_t sub_100C2AC50()
{
  v24 = v0[2];
  v25 = v0[3];
  v26 = v0[4];
  v22 = *v0;
  v23 = v0[1];
  _StringGuts.grow(_:)(41);
  sub_100C2BC28();
  v1 = CustomStringConvertible.typeDescription.getter();

  v2._countAndFlagsBits = 0x3A6469636520;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  sub_100017D5C(v22, *(&v22 + 1));
  v3 = Data.hexString.getter();
  v5 = v4;
  sub_100016590(v22, *(&v22 + 1));
  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x3A44497069686320;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  sub_100017D5C(v23, *(&v23 + 1));
  v8._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v8);

  sub_100016590(v23, *(&v23 + 1));
  v9._countAndFlagsBits = 980316960;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  sub_100017D5C(v24, *(&v24 + 1));
  v10._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v10);

  sub_100016590(v24, *(&v24 + 1));
  v11._countAndFlagsBits = 976315168;
  v11._object = 0xE400000000000000;
  String.append(_:)(v11);
  sub_100017D5C(v25, *(&v25 + 1));
  v12 = Data.hexString.getter();
  v14 = v13;
  sub_100016590(v25, *(&v25 + 1));
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x3A65636E6F6E20;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  sub_100017D5C(v26, *(&v26 + 1));
  v17 = Data.hexString.getter();
  v19 = v18;
  sub_100016590(v26, *(&v26 + 1));
  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  return v1;
}

uint64_t sub_100C2AEA8()
{
  v24 = v0[2];
  v25 = v0[3];
  v26 = v0[4];
  v22 = *v0;
  v23 = v0[1];
  _StringGuts.grow(_:)(41);

  sub_100C2BBAC();
  v21 = CustomStringConvertible.typeDescription.getter();
  v1._countAndFlagsBits = 0x3A6469636520;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  sub_100017D5C(v22, *(&v22 + 1));
  v2 = Data.hexString.getter();
  v4 = v3;
  sub_100016590(v22, *(&v22 + 1));
  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x3A44497069686320;
  v6._object = 0xE800000000000000;
  String.append(_:)(v6);
  sub_100017D5C(v23, *(&v23 + 1));
  v7._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v7);

  sub_100016590(v23, *(&v23 + 1));
  v8._countAndFlagsBits = 980316960;
  v8._object = 0xE400000000000000;
  String.append(_:)(v8);
  sub_100017D5C(v24, *(&v24 + 1));
  v9._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v9);

  sub_100016590(v24, *(&v24 + 1));
  v10._countAndFlagsBits = 976315168;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  sub_100017D5C(v25, *(&v25 + 1));
  v11 = Data.hexString.getter();
  v13 = v12;
  sub_100016590(v25, *(&v25 + 1));
  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x3A65636E6F6E20;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  sub_100017D5C(v26, *(&v26 + 1));
  v16 = Data.hexString.getter();
  v18 = v17;
  sub_100016590(v26, *(&v26 + 1));
  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  return v21;
}

__n128 sub_100C2B1B4@<Q0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  sub_100C2B424(a1, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v7[4];
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

unint64_t sub_100C2B204()
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1013B62D0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  v3 = type metadata accessor for ProximityPairingInfo(0);
  v4 = *(v0 + v3[5]);
  *(inited + 72) = &type metadata for Int;
  *(inited + 48) = v4;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v5;
  v6 = UUID.uuidString.getter();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v6;
  *(inited + 104) = v7;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v8;
  v9 = *(v0 + v3[6]);
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v9;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v10;
  v11 = *(v0 + v3[7]);
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v11;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v12;
  v13 = (v0 + v3[8]);
  v14 = *v13;
  v15 = v13[1];
  *(inited + 264) = &type metadata for Data;
  if (v15 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  v17 = 0xC000000000000000;
  if (v15 >> 60 != 15)
  {
    v17 = v15;
  }

  *(inited + 240) = v16;
  *(inited + 248) = v17;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v18;
  v19 = *(v0 + v3[9]);
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = v19 & 1;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v20;
  v21 = *(v0 + v3[10]);
  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = v21;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v22;
  v23 = *(v0 + v3[11]);
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = v23;
  sub_10002E98C(v14, v15);
  v24 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  return v24;
}

uint64_t sub_100C2B424@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v23, v24);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v3)
  {
    sub_100007BAC(v23);
    return sub_100007BAC(a1);
  }

  else
  {
    v8 = v6;
    v9 = v7;
    sub_10015049C(v23, v24);
    v22 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v25 = v10;
    sub_10015049C(v23, v24);
    v11 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v21 = v12;
    sub_10015049C(v23, v24);
    v19 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v20 = v13;
    sub_10015049C(v23, v24);
    v14 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v16 = v15;
    sub_100007BAC(v23);
    result = sub_100007BAC(a1);
    *a3 = v8;
    a3[1] = v9;
    v18 = v25;
    a3[2] = v22;
    a3[3] = v18;
    a3[4] = v11;
    a3[5] = v21;
    a3[6] = v19;
    a3[7] = v20;
    a3[8] = v14;
    a3[9] = v16;
  }

  return result;
}

uint64_t sub_100C2B624@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v41 = a1[1];
  v42 = v8;
  v21 = v8;
  v43 = *(&v41 + 1);
  v22 = v41;
  sub_1001022C4(&v42, v30);
  sub_1001022C4(&v41, v30);
  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  if (v11 >> 60 == 15)
  {
    v12 = type metadata accessor for GenericError();
    sub_100A1C368();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for GenericError.notImplemented(_:), v12);
    swift_willThrow();
    sub_100C2B8AC(a1);
    sub_100016590(v21, *(&v21 + 1));
    return sub_100016590(v22, v43);
  }

  else
  {
    v15 = a1[6];
    v39 = a1[7];
    v40 = v15;
    v36 = v39;
    v37 = v15;
    v38 = a1[8];
    sub_1001022C4(&v40, v30);
    sub_1001022C4(&v39, v30);
    sub_1001022C4(&v38, v30);
    sub_100C2B8AC(a1);
    *&v16 = v22;
    *(&v16 + 1) = v43;
    v24 = v21;
    v25 = v16;
    *&v26 = v9;
    *(&v26 + 1) = v11;
    v27 = v37;
    v28 = v36;
    v29 = v38;
    v30[0] = v21;
    v30[1] = v16;
    v31 = v9;
    v32 = v11;
    v33 = v37;
    v34 = v36;
    v35 = v38;
    sub_100C2B900(&v24, &v23);
    result = sub_100C2B938(v30);
    v17 = v27;
    a2[2] = v26;
    a2[3] = v17;
    v18 = v29;
    a2[4] = v28;
    a2[5] = v18;
    v19 = v25;
    *a2 = v24;
    a2[1] = v19;
  }

  return result;
}

uint64_t type metadata accessor for ProximityPairingInfo(uint64_t a1)
{
  result = qword_1016B8B70;
  if (!qword_1016B8B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C2B9EC(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SPAccessoryType(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SPAccessoryColor(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SPCurrentDeviceState(319);
        if (v4 <= 0x3F)
        {
          sub_1002359B8(319, &qword_10169A330, &type metadata for Data);
          if (v5 <= 0x3F)
          {
            sub_1002359B8(319, &qword_10169D5F0, &type metadata for Bool);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100C2BB30()
{
  result = qword_1016B8BC0;
  if (!qword_1016B8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8BC0);
  }

  return result;
}

unint64_t sub_100C2BB84(uint64_t a1)
{
  result = sub_100C2BBAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100C2BBAC()
{
  result = qword_1016B8BC8;
  if (!qword_1016B8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8BC8);
  }

  return result;
}

unint64_t sub_100C2BC00(uint64_t a1, uint64_t a2)
{
  result = sub_100C2BC28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100C2BC28()
{
  result = qword_1016B8BD0;
  if (!qword_1016B8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8BD0);
  }

  return result;
}

id sub_100C2BCA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12searchpartyd13BubbleManager_lock;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v1[v2] = v3;
  v4 = OBJC_IVAR____TtC12searchpartyd13BubbleManager_asyncStreamProvider;
  sub_1000BC4D4(&qword_1016B8DA0, &unk_1013E0DD0);
  swift_allocObject();
  *&v1[v4] = AsyncStreamProvider.init()();
  *&v1[OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC12searchpartyd13BubbleManager_samples] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC12searchpartyd13BubbleManager_restartCount] = 0;
  v1[OBJC_IVAR____TtC12searchpartyd13BubbleManager_isRunning] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for BubbleManager();
  return objc_msgSendSuper2(&v6, "init");
}

void sub_100C2BE20(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_isRunning) = 1;
  *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_restartCount) = 0;
  sub_100C2BF28();
  if (!v1)
  {
    if (qword_101694D98 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016B8BE0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Started session.", v5, 2u);
    }
  }
}

uint64_t sub_100C2BF28()
{
  inited = v0;
  if (qword_101694D98 != -1)
  {
LABEL_25:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016B8BE0);
  v3 = inited;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v53 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0x655374726174735FLL, 0xEF29286E6F697373, &v53);
    *(v6 + 12) = 2048;
    *(v6 + 14) = *&v3[OBJC_IVAR____TtC12searchpartyd13BubbleManager_restartCount];

    _os_log_impl(&_mh_execute_header, v4, v5, "%s, attempts count = %ld", v6, 0x16u);
    sub_100007BAC(v7);
  }

  else
  {
  }

  sub_1000BC4D4(&qword_1016B8D80, &qword_1013E0DB0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_101385D80;
  inited[4] = 1;
  inited[5] = [objc_allocWithZone(NISession) init];
  v8 = sub_10090B42C(inited);
  swift_setDeallocating();
  sub_10000B3A8((inited + 4), &unk_1016B8D88, &unk_1013E0DB8);
  v48 = v3;
  *&v3[OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions] = v8;

  v9 = 0;
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = &_s19FindMyDaemonSupport13DeviceVersionV8PlatformO3iOSyA2EmFWC_ptr;
  v49 = v8 + 64;
  v50 = v8;
  v51 = v14;
  while (1)
  {
    if (!v13)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v14)
        {
        }

        v13 = *(v10 + 8 * v16);
        ++v9;
        if (v13)
        {
          v9 = v16;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_15:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v18 = (v9 << 9) | (8 * v17);
    v19 = *(*(v8 + 48) + v18);
    v20 = *(*(v8 + 56) + v18);
    v21 = objc_allocWithZone(v15[227]);
    v52 = v20;
    v22 = String._bridgeToObjectiveC()();
    inited = [v21 initWithName:v22 devicePresencePreset:5];

    if (v19 == 1)
    {
      break;
    }

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v41 = 136315394;
      *(v41 + 4) = sub_1000136BC(0x655374726174735FLL, 0xEF29286E6F697373, &v53);
      *(v41 + 12) = 2080;
      type metadata accessor for NIDevicePresencePreset(0);
      v42 = String.init<A>(describing:)();
      v44 = sub_1000136BC(v42, v43, &v53);

      *(v41 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s, unsupported case: %s", v41, 0x16u);
      swift_arrayDestroy();
      v8 = v50;

      v10 = v49;
    }

LABEL_9:
    v14 = v51;
    v15 = &_s19FindMyDaemonSupport13DeviceVersionV8PlatformO3iOSyA2EmFWC_ptr;
  }

  v23 = objc_allocWithZone(v15[227]);
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 initWithName:v24 devicePresencePreset:1];

  v26 = objc_allocWithZone(NIDevicePresenceConfiguration);
  v53 = 0;
  v27 = v25;
  v28 = inited;
  v29 = [v26 initWithInnerBoundary:v27 outerBoundary:v28 error:&v53];
  if (v29)
  {
    v30 = v29;
    v31 = v53;

    [v30 setAllowedDevices:0];
    [v52 setDelegate:v48];
    v32 = v52;
    inited = v30;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v47 = v28;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138543618;
      *(v35 + 4) = v32;
      *(v35 + 12) = 2114;
      *(v35 + 14) = inited;
      *v36 = v32;
      v36[1] = v30;
      v37 = v32;
      v38 = inited;
      _os_log_impl(&_mh_execute_header, v33, v34, "Starting nisession %{public}@, configuration: %{public}@", v35, 0x16u);
      sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
      swift_arrayDestroy();

      v28 = v47;
    }

    [v32 runWithConfiguration:inited];
    v10 = v49;
    v8 = v50;
    goto LABEL_9;
  }

  v46 = v53;

  _convertNSErrorToError(_:)();
  swift_willThrow();
}

void sub_100C2C684(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions;
  v3 = *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      [*(*(v3 + 56) + ((v9 << 9) | (8 * v10))) invalidate];
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  *(a1 + v2) = sub_10090B42C(_swiftEmptyArrayStorage);

  *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_restartCount) = 0;
  v11 = sub_10090ABB8(_swiftEmptyArrayStorage);
  v12 = OBJC_IVAR____TtC12searchpartyd13BubbleManager_samples;
  swift_beginAccess();
  *(a1 + v12) = v11;

  *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_isRunning) = 0;
  if (qword_101694D98 == -1)
  {
    goto LABEL_12;
  }

LABEL_16:
  swift_once();
LABEL_12:
  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016B8BE0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Stop session.", v16, 2u);
  }
}

id sub_100C2C8B4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BubbleManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100C2C9EC()
{

  AsyncStreamProvider.stream(initialEvents:)();
}

void sub_100C2CB38(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_restartCount);
  if (v2 >= *(*(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions) + 16))
  {
    if (qword_101694D98 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_1016B8BE0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Max restart attempts reached.", v12, 2u);
    }
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_restartCount) = v2 + 1;
    sub_100C2BF28();
    if (v1)
    {
      if (qword_101694D98 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000076D4(v3, qword_1016B8BE0);
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
        _os_log_impl(&_mh_execute_header, v4, v5, "Failure on session start: %{public}@", v6, 0xCu);
        sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100C2CD9C(uint64_t result, uint64_t a2)
{
  if (*(*(result + OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions) + 16))
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = result;
      v5 = *(type metadata accessor for Device() - 8);
      v6 = (a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
      v7 = *(v5 + 72);
      do
      {
        result = sub_100C2EA24(v6, v4);
        v6 += v7;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    sub_100C2F668();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100C2CE8C(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v27[-v4];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27[-v12];
  if (*(*(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions) + 16))
  {
    v32 = v7;
    if (qword_101694D98 != -1)
    {
      swift_once();
    }

    v33 = v5;
    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_1016B8BE0);
    (*(v11 + 16))(v13, v34, v10);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = v15;
      v18 = v17;
      v30 = swift_slowAlloc();
      v35[0] = v30;
      *v18 = 136315651;
      *(v18 + 4) = sub_1000136BC(0x293A5F2874736F6CLL, 0xE800000000000000, v35);
      *(v18 + 12) = 2160;
      *(v18 + 14) = 1752392040;
      *(v18 + 22) = 2081;
      v28 = v16;
      Identifier.id.getter();
      sub_100C2F6BC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = a1;
      v21 = v20;
      v22 = v32;
      (*(v32 + 8))(v9, v6);
      (*(v11 + 8))(v13, v10);
      v23 = sub_1000136BC(v19, v21, v35);

      *(v18 + 24) = v23;
      v24 = v29;
      _os_log_impl(&_mh_execute_header, v29, v28, "%s, deviceIdentifier: %{private,mask.hash}s", v18, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v11 + 8))(v13, v10);
      v22 = v32;
    }

    Identifier.id.getter();
    swift_beginAccess();
    v26 = v33;
    sub_1001E5884(v9, v33);
    (*(v22 + 8))(v9, v6);
    sub_10000B3A8(v26, &qword_101699860, &qword_1013A34D0);
    return swift_endAccess();
  }

  else
  {
    sub_100C2F668();
    v35[4] = swift_allocError();
    return swift_willThrow();
  }
}

void sub_100C2D3A4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v152 = a3;
  v144 = type metadata accessor for BubbleManagerDiscovery(0);
  __chkstk_darwin(v144);
  v145 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Device();
  v149 = *(v8 - 8);
  v150 = v8;
  __chkstk_darwin(v8);
  v148 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v10 - 8);
  v155 = (&v138 - v11);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v151 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v143 = &v138 - v17;
  v18 = __chkstk_darwin(v16);
  v142 = &v138 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v138 - v21;
  v23 = __chkstk_darwin(v20);
  v140 = &v138 - v24;
  __chkstk_darwin(v23);
  v26 = &v138 - v25;
  v158 = a1;
  v27 = [a1 deviceIdentifier];
  if (v27)
  {
    v28 = v27;
    v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v157 = 0;
    v30 = 0;
  }

  v141 = v22;
  v160 = a2;
  v147 = a2;
  v146 = a2;
  sub_1000BC4D4(&qword_1016B8D98, &qword_1013E0DC8);
  v153 = String.init<A>(describing:)();
  v32 = v31;
  if (qword_101694D98 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_1000076D4(v33, qword_1016B8BE0);

  v159 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v156 = v13;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v154 = v3;
    v39 = v38;
    v139 = swift_slowAlloc();
    v162 = v139;
    *v39 = 136316163;
    *(v39 + 4) = sub_1000136BC(0xD000000000000031, 0x800000010136FB00, &v162);
    *(v39 + 12) = 2160;
    *(v39 + 14) = 1752392040;
    *(v39 + 22) = 2081;
    v160 = v157;
    v161 = v30;

    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v40 = String.init<A>(describing:)();
    v42 = v26;
    v43 = v12;
    v44 = sub_1000136BC(v40, v41, &v162);

    *(v39 + 24) = v44;
    v12 = v43;
    v26 = v42;
    *(v39 + 32) = 2160;
    *(v39 + 34) = 1752392040;
    *(v39 + 42) = 2081;
    v45 = sub_1000136BC(v153, v32, &v162);

    *(v39 + 44) = v45;
    _os_log_impl(&_mh_execute_header, v35, v36, "%s, object = %{private,mask.hash}s\nregion = %{private,mask.hash}s.", v39, 0x34u);
    swift_arrayDestroy();

    v4 = v154;
  }

  else
  {
  }

  v46 = [v158 deviceIdentifier];
  if (!v46)
  {
    goto LABEL_12;
  }

  v47 = v46;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = v155;
  UUID.init(uuidString:)();

  v49 = v156;
  if ((*(v156 + 48))(v48, 1, v12) == 1)
  {
    sub_10000B3A8(v48, &qword_1016980D0, &unk_10138F3B0);
LABEL_12:

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v162 = v53;
      *v52 = 141558275;
      *(v52 + 4) = 1752392040;
      *(v52 + 12) = 2081;
      v160 = v157;
      v161 = v30;
      sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
      v54 = String.init<A>(describing:)();
      v56 = sub_1000136BC(v54, v55, &v162);

      *(v52 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Invalid device identifier %{private,mask.hash}s", v52, 0x16u);
      sub_100007BAC(v53);
    }

    else
    {
    }

    return;
  }

  (*(v49 + 32))(v26, v48, v12);
  v57 = OBJC_IVAR____TtC12searchpartyd13BubbleManager_samples;
  v58 = v152;
  swift_beginAccess();
  v59 = *(v58 + v57);
  v60 = v151;
  if (!*(v59 + 16))
  {
LABEL_23:
    v154 = v4;
    (*(v49 + 16))(v60, v26, v12);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v159 = v26;
      v81 = v80;
      v82 = swift_slowAlloc();
      v162 = v82;
      *v81 = 141558275;
      *(v81 + 4) = 1752392040;
      *(v81 + 12) = 2081;
      sub_100C2F6BC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v12;
      v86 = v85;
      v87 = *(v49 + 8);
      v88 = v60;
      v89 = v84;
      v87(v88, v84);
      v90 = sub_1000136BC(v83, v86, &v162);

      *(v81 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v78, v79, "Unidentified object for %{private,mask.hash}s", v81, 0x16u);
      sub_100007BAC(v82);

      v87(v159, v89);
    }

    else
    {

      v91 = *(v49 + 8);
      v91(v60, v12);
      v91(v26, v12);
    }

    return;
  }

  v61 = sub_1000210EC(v26);
  if ((v62 & 1) == 0)
  {

    goto LABEL_23;
  }

  v63 = *(v149 + 16);
  v63(v148, *(v59 + 56) + *(v149 + 72) * v61, v150);

  if (v147)
  {
    v64 = v146;
    if ([v64 devicePresencePreset] == 5)
    {
      v158 = v64;
      v154 = v4;
      v65 = v142;
      (*(v49 + 16))(v142, v26, v12);
      v66 = Logger.logObject.getter();
      v67 = v49;
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v68))
      {
        v69 = swift_slowAlloc();
        v159 = v26;
        v70 = v69;
        v157 = swift_slowAlloc();
        v162 = v157;
        *v70 = 141558275;
        *(v70 + 4) = 1752392040;
        *(v70 + 12) = 2081;
        sub_100C2F6BC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = v65;
        v73 = v12;
        v75 = v74;
        v76 = *(v67 + 8);
        v76(v72, v73);
        v77 = sub_1000136BC(v71, v75, &v162);
        v12 = v73;

        *(v70 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v66, v68, "Lost region for %{private,mask.hash}s", v70, 0x16u);
        sub_100007BAC(v157);

        v26 = v159;
      }

      else
      {

        v76 = *(v67 + 8);
        v76(v65, v12);
      }

      v118 = v145;
      v119 = v148;
      Device.id.getter();
      swift_storeEnumTagMultiPayload();
      AsyncStreamProvider.yield(value:transaction:)();

      sub_100C30364(v118);
      (*(v149 + 8))(v119, v150);
      v76(v26, v12);
    }

    else
    {
      v104 = [v64 devicePresencePreset];
      v105 = *(v49 + 16);
      if (v104 == 1)
      {
        v158 = v64;
        v154 = v4;
        v106 = v140;
        v105(v140, v26, v12);
        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v159 = v26;
          v110 = v109;
          v155 = swift_slowAlloc();
          v162 = v155;
          *v110 = 141558275;
          *(v110 + 4) = 1752392040;
          *(v110 + 12) = 2081;
          sub_100C2F6BC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v111 = dispatch thunk of CustomStringConvertible.description.getter();
          v112 = v106;
          v113 = v12;
          v115 = v114;
          v157 = *(v156 + 8);
          (v157)(v112, v113);
          v116 = sub_1000136BC(v111, v115, &v162);
          v12 = v113;

          *(v110 + 14) = v116;
          _os_log_impl(&_mh_execute_header, v107, v108, "Discovered .immediate region for %{private,mask.hash}s", v110, 0x16u);
          sub_100007BAC(v155);

          v26 = v159;
        }

        else
        {

          v157 = *(v156 + 8);
          (v157)(v106, v12);
        }

        v134 = v145;
        v135 = v148;
        v136 = v150;
        v63(v145, v148, v150);
        swift_storeEnumTagMultiPayload();

        AsyncStreamProvider.yield(value:transaction:)();

        sub_100C30364(v134);
        (*(v149 + 8))(v135, v136);
        (v157)(v26, v12);
      }

      else
      {
        v120 = v141;
        v105(v141, v26, v12);
        v121 = Logger.logObject.getter();
        v122 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v159 = v26;
          v124 = v123;
          v125 = swift_slowAlloc();
          v158 = v64;
          v126 = v125;
          v162 = v125;
          *v124 = 141558275;
          *(v124 + 4) = 1752392040;
          *(v124 + 12) = 2081;
          sub_100C2F6BC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v127 = dispatch thunk of CustomStringConvertible.description.getter();
          v128 = v12;
          v130 = v129;
          v154 = v4;
          v131 = v120;
          v132 = *(v156 + 8);
          v132(v131, v128);
          v133 = sub_1000136BC(v127, v130, &v162);

          *(v124 + 14) = v133;
          _os_log_impl(&_mh_execute_header, v121, v122, "Region is NOT .immediate %{private,mask.hash}s", v124, 0x16u);
          sub_100007BAC(v126);

          (*(v149 + 8))(v148, v150);
          v132(v159, v128);
        }

        else
        {

          v137 = *(v156 + 8);
          v137(v120, v12);
          (*(v149 + 8))(v148, v150);
          v137(v26, v12);
        }
      }
    }
  }

  else
  {
    v92 = v143;
    (*(v49 + 16))(v143, v26, v12);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v159 = v26;
      v96 = v95;
      v97 = swift_slowAlloc();
      v162 = v97;
      *v96 = 141558275;
      *(v96 + 4) = 1752392040;
      *(v96 + 12) = 2081;
      sub_100C2F6BC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v12;
      v138 = v12;
      v101 = v100;
      v102 = *(v49 + 8);
      v102(v92, v99);
      v103 = sub_1000136BC(v98, v101, &v162);

      *(v96 + 14) = v103;
      _os_log_impl(&_mh_execute_header, v93, v94, "Missing region for %{private,mask.hash}s", v96, 0x16u);
      sub_100007BAC(v97);

      (*(v149 + 8))(v148, v150);
      v102(v159, v138);
    }

    else
    {

      v117 = *(v49 + 8);
      v117(v92, v12);
      (*(v149 + 8))(v148, v150);
      v117(v26, v12);
    }
  }
}

uint64_t type metadata accessor for BubbleManagerDiscovery(uint64_t a1)
{
  result = qword_1016B8D20;
  if (!qword_1016B8D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C2E7EC(uint64_t a1)
{
  type metadata accessor for Device();
  if (v1 <= 0x3F)
  {
    sub_100C2E860(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100C2E860(uint64_t a1)
{
  if (!qword_1016B8D30)
  {
    type metadata accessor for Device();
    v1 = type metadata accessor for Identifier();
    if (!v2)
    {
      atomic_store(v1, &qword_1016B8D30);
    }
  }
}

uint64_t sub_100C2E8D8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BDF0);
  sub_1000076D4(v0, qword_10177BDF0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100C2E95C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B8BE0);
  v1 = sub_1000076D4(v0, qword_1016B8BE0);
  if (qword_101694D90 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BDF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100C2EA24(id a1, uint64_t a2)
{
  v108 = a2;
  v3 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  __chkstk_darwin(v3 - 8);
  v105 = &v98[-v4];
  v5 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v113 = *(v5 - 8);
  v114 = v5;
  v6 = __chkstk_darwin(v5);
  v104 = &v98[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v109 = &v98[-v8];
  v9 = type metadata accessor for UUID();
  v111 = *(v9 - 8);
  v112 = v9;
  v10 = __chkstk_darwin(v9);
  v103 = &v98[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v110 = &v98[-v12];
  v124 = type metadata accessor for Device();
  v13 = *(v124 - 8);
  v14 = __chkstk_darwin(v124);
  v119 = &v98[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v123 = &v98[-v17];
  __chkstk_darwin(v16);
  v19 = &v98[-v18];
  v20 = type metadata accessor for RSSIValue();
  v126 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = &v98[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v21);
  v122 = &v98[-v25];
  __chkstk_darwin(v24);
  v27 = &v98[-v26];
  Device.rssi.getter();
  if (qword_101694D98 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v28 = type metadata accessor for Logger();
    v29 = sub_1000076D4(v28, qword_1016B8BE0);
    v30 = *(v13 + 16);
    v31 = v19;
    v116 = v19;
    v32 = v124;
    v30(v31, a1, v124);
    (*(v126 + 16))(v122, v27, v20);
    v121 = a1;
    v117 = v30;
    v118 = v13 + 16;
    v30(v123, a1, v32);
    v106 = v29;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = os_log_type_enabled(v33, v34);
    v120 = v13;
    v102 = v23;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v125[0] = v101;
      *v36 = 136316163;
      *(v36 + 4) = sub_1000136BC(0x7265766F63736964, 0xEE00293A5F286465, v125);
      *(v36 + 12) = 2160;
      *(v36 + 14) = 1752392040;
      *(v36 + 22) = 2081;
      v100 = v33;
      v37 = v109;
      v99 = v34;
      v38 = v116;
      Device.id.getter();
      v39 = v110;
      v40 = v114;
      Identifier.id.getter();
      (*(v113 + 8))(v37, v40);
      sub_100C2F6BC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v41 = v112;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v107 = v27;
      v44 = v43;
      (*(v111 + 8))(v39, v41);
      v45 = *(v13 + 8);
      (v45)(v38, v124);
      v46 = sub_1000136BC(v42, v44, v125);

      *(v36 + 24) = v46;
      *(v36 + 32) = 2080;
      sub_100C2F6BC(&unk_1016B8D70, &type metadata accessor for RSSIValue, &protocol conformance descriptor for RSSIValue);
      v47 = v122;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v51 = *(v126 + 8);
      (v51)(v47, v20);
      v52 = sub_1000136BC(v48, v50, v125);

      *(v36 + 34) = v52;
      *(v36 + 42) = 2080;
      v27 = v107;
      v53 = v123;
      v54 = Device.model.getter();
      v56 = v55 ? v54 : 0;
      v57 = v55 ? v55 : 0xE000000000000000;
      v58 = v53;
      v59 = v124;
      v122 = v45;
      (v45)(v58, v124);
      v60 = sub_1000136BC(v56, v57, v125);

      *(v36 + 44) = v60;
      v61 = v100;
      _os_log_impl(&_mh_execute_header, v100, v99, "%s, sample:%{private,mask.hash}s RSSI:%s model:%s", v36, 0x34u);
      swift_arrayDestroy();

      v62 = v59;
    }

    else
    {

      v63 = *(v13 + 8);
      v62 = v124;
      (v63)(v123, v124);
      v51 = *(v126 + 8);
      (v51)(v122, v20);
      v122 = v63;
      (v63)(v116, v62);
    }

    v123 = v51;
    v64 = RSSIValue.rawValue.getter();
    v65 = v121;
    v66 = v119;
    v115 = v20;
    if ((v64 & 0x80) == 0)
    {
      break;
    }

    v76 = v109;
    Device.id.getter();
    v77 = v110;
    v78 = v114;
    Identifier.id.getter();
    v122 = *(v113 + 8);
    (v122)(v76, v78);
    v79 = v105;
    v117(v105, v65, v62);
    (*(v120 + 56))(v79, 0, 1, v62);
    swift_beginAccess();
    sub_1001E0D2C(v79, v77);
    swift_endAccess();
    v107 = v27;
    v80 = RSSIValue.rawValue.getter();
    v81 = v104;
    Device.id.getter();
    v82 = v103;
    Identifier.id.getter();
    (v122)(v81, v78);
    UUID.uuidString.getter();
    (*(v111 + 8))(v82, v112);
    v83 = Device.model.getter();
    if (v84)
    {
      a1 = v83;
    }

    else
    {
      a1 = 0;
    }

    v85 = v80;
    v86 = Device.channel.getter();
    v87 = mach_continuous_time();
    v88 = convertToSeconds(_:)(v87);
    v89 = objc_allocWithZone(NIBluetoothSample);
    v90 = String._bridgeToObjectiveC()();

    v19 = String._bridgeToObjectiveC()();

    v91 = [v89 initWithRSSI:v90 identifier:v19 model:v86 channel:v85 machContinuousTimeSeconds:v88];

    v92 = *(v108 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions);
    v23 = (v92 + 64);
    v93 = 1 << *(v92 + 32);
    v94 = -1;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    v13 = v94 & *(v92 + 64);
    v20 = (v93 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v27 = 0;
    while (v13)
    {
      v95 = v27;
LABEL_25:
      v96 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v19 = *(*(v92 + 56) + ((v95 << 9) | (8 * v96)));
      a1 = [v19 devicePresenceNotifier];
      [a1 notifyBluetoothSample:v91];
    }

    while (1)
    {
      v95 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v95 >= v20)
      {

        (v123)(v107, v115);
      }

      v13 = *&v23[8 * v95];
      ++v27;
      if (v13)
      {
        v27 = v95;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v117(v119, v121, v62);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = v66;
    v70 = swift_slowAlloc();
    *v70 = 16777472;
    v71 = v102;
    Device.rssi.getter();
    v72 = RSSIValue.rawValue.getter();
    v73 = v71;
    v74 = v115;
    v75 = v123;
    (v123)(v73, v115);
    (v122)(v69, v124);
    v70[4] = v72;
    _os_log_impl(&_mh_execute_header, v67, v68, "Bad rssi value: %hhd", v70, 5u);
  }

  else
  {
    (v122)(v66, v62);
    v75 = v123;
    v74 = v115;
  }

  return v75(v27, v74);
}

unint64_t sub_100C2F668()
{
  result = qword_1016B8D60;
  if (!qword_1016B8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8D60);
  }

  return result;
}

uint64_t sub_100C2F6BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100C2F9CC(void *a1)
{
  if (qword_101694D98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016B8BE0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136315651;
    *(v5 + 4) = sub_1000136BC(0xD000000000000017, 0x800000010136FB40, &v12);
    *(v5 + 12) = 2160;
    *(v5 + 14) = 1752392040;
    *(v5 + 22) = 2081;
    v6 = [v3 deviceIdentifier];
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, &v12);

    *(v5 + 24) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s, nearbyObject = %{private,mask.hash}s", v5, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100C2FBF4(uint64_t a1)
{
  swift_getObjectType();
  if (qword_101694D98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B8BE0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x800000010136FAE0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s, error: %{public}@", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  __chkstk_darwin(v8);
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_100C2FE14(uint64_t a1)
{
  swift_getObjectType();
  if (qword_101694D98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B8BE0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010136FAC0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s, error: %{public}@", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  __chkstk_darwin(v8);
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_100C3017C()
{
  swift_getObjectType();
  if (qword_101694D98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_1016B8BE0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x800000010136FA80, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  __chkstk_darwin(v5);
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_100C30364(uint64_t a1)
{
  v2 = type metadata accessor for BubbleManagerDiscovery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100C3040C()
{
  result = qword_1016B8DA8;
  if (!qword_1016B8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8DA8);
  }

  return result;
}

uint64_t sub_100C30478(uint64_t a1, uint64_t a2)
{
  v3[65] = v2;
  v3[63] = a1;
  v3[64] = a2;
  return _swift_task_switch(sub_100C3049C, v2, 0);
}

uint64_t sub_100C3049C()
{
  sub_10001F280(*(v0 + 512), v0 + 464);
  sub_1000BC4D4(&qword_101698650, &qword_10138FFB0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 352);
    *(v0 + 144) = *(v0 + 336);
    *(v0 + 160) = v1;
    v2 = *(v0 + 384);
    *(v0 + 176) = *(v0 + 368);
    *(v0 + 192) = v2;
    v3 = *(v0 + 288);
    *(v0 + 80) = *(v0 + 272);
    *(v0 + 96) = v3;
    v4 = *(v0 + 320);
    *(v0 + 112) = *(v0 + 304);
    *(v0 + 128) = v4;
    v5 = *(v0 + 224);
    *(v0 + 16) = *(v0 + 208);
    *(v0 + 32) = v5;
    v6 = *(v0 + 256);
    *(v0 + 48) = *(v0 + 240);
    *(v0 + 64) = v6;
    v7 = swift_task_alloc();
    *(v0 + 528) = v7;
    *v7 = v0;
    v7[1] = sub_100C30688;

    return sub_100C324E4(v0 + 400, v0 + 16);
  }

  else
  {
    v9 = type metadata accessor for PairingValidatorError();
    sub_100C353F4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError, &protocol conformance descriptor for PairingValidatorError);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for PairingValidatorError.invalidRequestType(_:), v9);
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100C30688()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  v3 = *(v2 + 520);
  if (v0)
  {
    v4 = sub_100C3085C;
  }

  else
  {
    v4 = sub_100C307B4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C307B4()
{
  v1 = *(v0 + 504);
  v1[3] = &type metadata for PairingLockCheckResponse;
  v1[4] = sub_100C34D04();
  v2 = swift_allocObject();
  *v1 = v2;
  sub_100C2B8AC(v0 + 16);
  v3 = *(v0 + 416);
  v2[1] = *(v0 + 400);
  v2[2] = v3;
  v4 = *(v0 + 448);
  v2[3] = *(v0 + 432);
  v2[4] = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100C3085C()
{
  sub_100C2B8AC(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C308C0(uint64_t a1, uint64_t a2)
{
  v3[46] = a2;
  v3[47] = v2;
  v3[45] = a1;
  return _swift_task_switch(sub_100C308E4, v2, 0);
}

uint64_t sub_100C308E4()
{
  sub_10001F280(*(v0 + 368), v0 + 320);
  sub_1000BC4D4(&qword_101698620, &unk_10138FF80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 280);
    *(v0 + 112) = *(v0 + 264);
    *(v0 + 128) = v1;
    *(v0 + 144) = *(v0 + 296);
    *(v0 + 160) = *(v0 + 312);
    v2 = *(v0 + 216);
    *(v0 + 48) = *(v0 + 200);
    *(v0 + 64) = v2;
    v3 = *(v0 + 248);
    *(v0 + 80) = *(v0 + 232);
    *(v0 + 96) = v3;
    v4 = *(v0 + 184);
    *(v0 + 16) = *(v0 + 168);
    *(v0 + 32) = v4;
    v5 = swift_task_alloc();
    *(v0 + 384) = v5;
    *v5 = v0;
    v5[1] = sub_100C30AD0;

    return sub_100C30CF8(v0 + 16);
  }

  else
  {
    v7 = type metadata accessor for PairingValidatorError();
    sub_100C353F4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError, &protocol conformance descriptor for PairingValidatorError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for PairingValidatorError.invalidRequestType(_:), v7);
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100C30AD0(char a1)
{
  v4 = *v2;
  *(v4 + 392) = v1;

  v5 = *(v4 + 376);
  if (v1)
  {
    v6 = sub_100C30C94;
  }

  else
  {
    *(v4 + 400) = a1;
    v6 = sub_100C30C0C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C30C0C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 360);
  *(v2 + 24) = &type metadata for PairingLockAckResponse;
  *(v2 + 32) = sub_100C34CA8();
  sub_100C29C98(v0 + 16);
  *v2 = v1 & 1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100C30C94()
{
  sub_100C29C98(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C30CF8(uint64_t a1)
{
  v2[83] = v1;
  v2[82] = a1;
  v3 = type metadata accessor for Date();
  v2[84] = v3;
  v2[85] = *(v3 - 8);
  v2[86] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v2[87] = swift_task_alloc();
  type metadata accessor for PairingLockAckEndPoint(0);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();

  return _swift_task_switch(sub_100C30E2C, v1, 0);
}

uint64_t sub_100C30E2C()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  v4 = *(v0 + 656);
  sub_10050B114(v1);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v5 = type metadata accessor for FMNMockingPreferences();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v7 = swift_allocObject();
  sub_100C3543C(v1, v2, type metadata accessor for PairingLockAckEndPoint);
  v8 = sub_1006225CC(v2, v6, v7);
  *(v0 + 720) = v8;
  v9 = Data.hexString.getter();
  v82 = v10;
  v83 = v9;
  v11 = Data.hexString.getter();
  v80 = v12;
  v81 = v11;
  v13 = v4[5];
  v76 = v4[6];
  v77 = v4[4];
  v14 = v4[9];
  v74 = v4[8];
  v75 = v4[7];
  v85 = v4[10];
  v84 = v4[11];
  v86 = v4[13];
  v87 = v4[12];
  v15 = v4[14];
  v88 = v4[15];
  v16 = v4[16];
  v17 = v4[17];
  v18 = v4[18];
  v79 = v13;

  v78 = v14;

  v19 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v21 = [objc_opt_self() currentDevice];
  if (!v21)
  {
    __break(1u);
    goto LABEL_7;
  }

  v29 = v21;
  v70 = v15;
  v71 = v17;
  v72 = v16;
  v73 = v8;
  v30 = [v21 serverFriendlyDescription];

  if (!v30)
  {
LABEL_7:
    __break(1u);
    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  v31 = *(v0 + 688);
  v32 = *(v0 + 680);
  v33 = *(v0 + 672);
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v34, v36, 0xD000000000000011, 0x800000010134EA40, v37);
  v38 = v19;
  Date.init()();
  v39 = Date.epoch.getter();
  (*(v32 + 8))(v31, v33);
  *(v0 + 624) = v39;
  v40 = dispatch thunk of CustomStringConvertible.description.getter();
  v42 = v41;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v40, v42, 0xD000000000000015, 0x800000010134EA60, v43);
  v44 = v38;
  *(v0 + 632) = 1;
  v45 = dispatch thunk of CustomStringConvertible.description.getter();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v45, v47, 0xD000000000000013, 0x800000010134EA80, v48);
  v49 = v44;
  v51 = sub_1008D9A78(v50);
  v53 = v52;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v51, v53, 0x6567412D72657355, 0xEA0000000000746ELL, v54);
  v69 = v49;
  *(v0 + 728) = v49;
  *(v0 + 16) = v83;
  *(v0 + 24) = v82;
  *(v0 + 32) = v81;
  *(v0 + 40) = v80;
  *(v0 + 48) = v77;
  *(v0 + 56) = v79;
  *(v0 + 64) = v76;
  *(v0 + 72) = v75;
  *(v0 + 80) = v74;
  *(v0 + 88) = v78;
  *(v0 + 96) = v85;
  *(v0 + 104) = v84;
  *(v0 + 112) = v87;
  *(v0 + 120) = v86;
  *(v0 + 128) = v70;
  *(v0 + 136) = v88;
  *(v0 + 144) = v72;
  *(v0 + 152) = v71;
  *(v0 + 160) = v18;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  sub_100017D5C(v85, v84);
  sub_100017D5C(v87, v86);
  sub_100017D5C(v70, v88);
  sub_100017D5C(v72, v71);
  JSONEncoder.init()();
  v55 = *(v0 + 128);
  *(v0 + 264) = *(v0 + 112);
  *(v0 + 280) = v55;
  *(v0 + 296) = *(v0 + 144);
  *(v0 + 312) = *(v0 + 160);
  v56 = *(v0 + 64);
  *(v0 + 200) = *(v0 + 48);
  *(v0 + 216) = v56;
  v57 = *(v0 + 96);
  *(v0 + 232) = *(v0 + 80);
  *(v0 + 248) = v57;
  v58 = *(v0 + 32);
  *(v0 + 168) = *(v0 + 16);
  *(v0 + 184) = v58;
  sub_10088C9BC();
  v59 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 736) = v59;
  *(v0 + 744) = v60;
  v61 = *(v0 + 664);
  v62 = v59;
  v63 = v60;

  sub_10088CA6C(v0 + 16);

  sub_100017D5C(v62, v63);

  sub_100016590(v62, v63);

  sub_100017D5C(v62, v63);
  v64 = sub_1004FD920(v69, v62, v63, 0, v73);
  *(v0 + 752) = v64;

  sub_100016590(v62, v63);
  v66 = sub_100C353F4(&qword_1016B8ED8, v65, type metadata accessor for AirTagPairingValidator, &unk_1013E0FA8);
  v67 = swift_task_alloc();
  *(v0 + 760) = v67;
  *v67 = v0;
  v67[1] = sub_100C31768;
  v28 = &type metadata for PairingLockAckResponse;
  v26 = sub_100C35504;
  v24 = 0x716572286B63615FLL;
  v25 = 0xEE00293A74736575;
  v21 = (v0 + 776);
  v22 = v61;
  v23 = v66;
  v27 = v64;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_100C31768()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  v3 = *(v2 + 664);
  if (v0)
  {
    v4 = sub_100C31990;
  }

  else
  {
    v4 = sub_100C31894;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C31894()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 712);

  sub_100016590(v2, v1);
  sub_100C354A4(v3, type metadata accessor for PairingLockAckEndPoint);
  v4 = *(v0 + 776);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100C31990()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[89];

  sub_100016590(v2, v1);
  sub_100C354A4(v3, type metadata accessor for PairingLockAckEndPoint);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C31A7C(uint64_t a1)
{
  v13 = a1;
  v2 = sub_1000BC4D4(&qword_1016B8EF8, &unk_1013E1050);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  v12 = *(v3 + 16);
  v12(&v10 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v11 = *(v3 + 32);
  v11(v7 + v6, v5, v2);
  Future.addFailure(block:)();

  v12(v5, v13, v2);
  v8 = swift_allocObject();
  v11(v8 + v6, v5, v2);
  Future.addSuccess(block:)();
}

uint64_t sub_100C31C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v47 - v10;
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    v47[2] = a2;
    if (qword_101694DD8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    v13 = sub_1000076D4(v12, qword_10177BEA8);
    (*(v6 + 16))(v11, a1, v5);
    v47[1] = v13;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v47[0] = a1;
      v17 = v16;
      v18 = swift_slowAlloc();
      v49 = v18;
      *v17 = 136446210;
      sub_100C353F4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v6 + 8))(v11, v5);
      v22 = sub_1000136BC(v19, v21, &v49);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Pairing ack success: %{public}s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    else
    {

      (*(v6 + 8))(v11, v5);
    }

    v32 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v34 = v33;
    static String.Encoding.utf8.getter();
    v35 = String.init(data:encoding:)();
    v37 = v36;
    sub_100016590(v32, v34);
    if (v37)
    {

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v49 = v41;
        *v40 = 136315138;
        v42 = sub_1000136BC(v35, v37, &v49);

        *(v40 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v38, v39, "ack response data: %s", v40, 0xCu);
        sub_100007BAC(v41);
      }

      else
      {
      }
    }

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v44 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v46 = v45;
    sub_10088CB34();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v44, v46);
    sub_1000BC4D4(&qword_1016B8EF8, &unk_1013E1050);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_101694DD8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177BEA8);
    (*(v6 + 16))(v9, a1, v5);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49 = v27;
      *v26 = 136446210;
      sub_100C353F4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v6 + 8))(v9, v5);
      v31 = sub_1000136BC(v28, v30, &v49);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Pairing ack failed: %{public}s", v26, 0xCu);
      sub_100007BAC(v27);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    type metadata accessor for SPPairingSessionError(0);
    v48 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100C353F4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v48 = v49;
    sub_1000BC4D4(&qword_1016B8EF8, &unk_1013E1050);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100C324E4(uint64_t a1, uint64_t a2)
{
  v3[244] = v2;
  v3[243] = a2;
  v3[242] = a1;
  v4 = type metadata accessor for Date();
  v3[245] = v4;
  v3[246] = *(v4 - 8);
  v3[247] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v3[248] = swift_task_alloc();
  type metadata accessor for PairingLockCheckEndPoint(0);
  v3[249] = swift_task_alloc();
  v3[250] = swift_task_alloc();

  return _swift_task_switch(sub_100C3261C, v2, 0);
}

uint64_t sub_100C3261C(uint64_t a1)
{
  v146 = v1;
  v2 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 2000);
  v4 = *(v1 + 1992);
  v5 = *(v1 + 1984);
  v6 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100008C00();
  *(v7 + 32) = 0xD000000000000013;
  *(v7 + 40) = 0x800000010136F240;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v6, "%@", 2, 2, v7);

  sub_1003CD400(v3);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v8 = type metadata accessor for FMNMockingPreferences();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v10 = swift_allocObject();
  sub_100C3543C(v3, v4, type metadata accessor for PairingLockCheckEndPoint);
  v11 = sub_100621154(v4, v9, v10);
  *(v1 + 2008) = v11;
  v12 = [objc_opt_self() defaultStore];
  if (!v12)
  {
    __break(1u);
    goto LABEL_37;
  }

  v20 = v12;
  v21 = sub_100513CD8();

  if (!v21 || (v22 = sub_100513FCC(), v24 = v23, v21, !v24))
  {
    if (qword_101694DD8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177BEA8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to retrieve masked identifier", v29, 2u);
    }

    v30 = *(v1 + 2000);

    type metadata accessor for SPPairingSessionError(0);
    *(v1 + 1880) = 27;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100C353F4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    goto LABEL_12;
  }

  v25 = *(v1 + 1944);
  sub_100C29FA0(v25, v1 + 16);
  sub_100C2B624(v25, (v1 + 1616));
  sub_100C2B900(v1 + 1616, v1 + 1712);
  v33 = sub_100C34D58((v1 + 1616));
  v35 = v34;
  *(v1 + 2016) = v33;
  *(v1 + 2024) = v34;
  sub_100C2B938(v1 + 1616);
  if (v35 >> 60 != 15)
  {
    v136 = v22;
    v40 = *(v1 + 1944);
    v41 = Data.hexString.getter();
    v129 = v42;
    v130 = v41;
    v43 = Data.hexString.getter();
    v126 = v44;
    v127 = v43;
    v139 = v40[4];
    v124 = v40[7];
    v125 = v40[6];
    v45 = v40[9];
    v123 = v40[8];
    v128 = v40[10];
    v131 = v40[11];
    v132 = v40[19];
    v135 = v40[20];
    v133 = v40[18];
    v134 = v40[21];
    v137 = v40[23];
    v138 = v40[22];
    v140 = v40[5];

    v122 = v45;

    sub_10002E98C(v33, v35);
    v46 = sub_100907E70(_swiftEmptyArrayStorage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v145[0] = v46;
    sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
    v48 = v46;
    v12 = [objc_opt_self() currentDevice];
    if (v12)
    {
      v49 = v12;
      v141 = v33;
      v142 = v35;
      v121 = v11;
      v50 = [v12 serverFriendlyDescription];

      if (v50)
      {
        v51 = *(v1 + 1976);
        v52 = *(v1 + 1968);
        v53 = *(v1 + 1960);
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57 = swift_isUniquelyReferenced_nonNull_native();
        v145[0] = v46;
        sub_100FFACA0(v54, v56, 0xD000000000000011, 0x800000010134EA40, v57);
        Date.init()();
        v58 = Date.epoch.getter();
        (*(v52 + 8))(v51, v53);
        *(v1 + 1904) = v58;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        sub_100FFACA0(v59, v61, 0xD000000000000015, 0x800000010134EA60, v62);
        *(v1 + 1912) = 1;
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        v66 = swift_isUniquelyReferenced_nonNull_native();
        sub_100FFACA0(v63, v65, 0xD000000000000013, 0x800000010134EA80, v66);
        v68 = sub_1008D9A78(v67);
        v70 = v69;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        sub_100FFACA0(v68, v70, 0x6567412D72657355, 0xEA0000000000746ELL, v71);
        sub_100017D5C(v141, v142);
        v72 = Data.base64EncodedString(options:)(0);
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v145[0] = v48;
        sub_100FFACA0(v72._countAndFlagsBits, v72._object, 0x49532D454D4D2D58, 0xEB00000000374E47, v73);
        sub_100006654(v141, v142);
        v120 = v48;
        *(v1 + 2032) = v48;
        *(v1 + 976) = v130;
        *(v1 + 984) = v129;
        *(v1 + 992) = v127;
        *(v1 + 1000) = v126;
        *(v1 + 1008) = v139;
        *(v1 + 1016) = v140;
        *(v1 + 1024) = v125;
        *(v1 + 1032) = v124;
        *(v1 + 1040) = v123;
        *&v74 = v128;
        *(&v74 + 1) = v131;
        *(v1 + 1048) = v122;
        *&v75 = v133;
        *(&v75 + 1) = v132;
        *(v1 + 1072) = v75;
        *(v1 + 1056) = v74;
        *(v1 + 1088) = v135;
        *(v1 + 1096) = v134;
        *(v1 + 1104) = v138;
        *(v1 + 1112) = v137;
        *(v1 + 1120) = v136;
        *(v1 + 1128) = v24;
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        sub_100017D5C(v128, v131);
        sub_100017D5C(v133, v132);
        sub_100017D5C(v135, v134);
        sub_100017D5C(v138, v137);
        JSONEncoder.init()();
        v76 = *(v1 + 1088);
        *(v1 + 1232) = *(v1 + 1072);
        *(v1 + 1248) = v76;
        v77 = *(v1 + 1120);
        *(v1 + 1264) = *(v1 + 1104);
        *(v1 + 1280) = v77;
        v78 = *(v1 + 1024);
        *(v1 + 1168) = *(v1 + 1008);
        *(v1 + 1184) = v78;
        v79 = *(v1 + 1056);
        *(v1 + 1200) = *(v1 + 1040);
        *(v1 + 1216) = v79;
        v80 = *(v1 + 992);
        *(v1 + 1136) = *(v1 + 976);
        *(v1 + 1152) = v80;
        sub_10088CC58();
        v81 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        *(v1 + 2040) = v81;
        *(v1 + 2048) = v82;
        v83 = v81;
        v84 = v82;

        sub_100006654(v141, v142);
        sub_10088CD08(v1 + 976);

        sub_100017D5C(v83, v84);

        v144 = v83;
        v143 = v84;
        sub_100016590(v83, v84);
        if (qword_101694DD8 != -1)
        {
          swift_once();
        }

        v85 = *(v1 + 1944);
        v86 = type metadata accessor for Logger();
        sub_1000076D4(v86, qword_10177BEA8);
        sub_100C29FA0(v85, v1 + 208);
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.debug.getter();
        sub_100C2B8AC(v85);
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v145[0] = v90;
          *v89 = 136315138;
          *(v89 + 4) = sub_1000136BC(v139, v140, v145);
          _os_log_impl(&_mh_execute_header, v87, v88, "serialNumber: %s", v89, 0xCu);
          sub_100007BAC(v90);
        }

        v91 = *(v1 + 1944);
        sub_100C29FA0(v91, v1 + 400);
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.debug.getter();
        sub_100C2B8AC(v91);
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v145[0] = v95;
          *v94 = 136315138;
          v96 = Data.hexString.getter();
          v98 = sub_1000136BC(v96, v97, v145);

          *(v94 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v92, v93, "ECID: %s", v94, 0xCu);
          sub_100007BAC(v95);
        }

        v99 = *(v1 + 1944);
        sub_100C29FA0(v99, v1 + 592);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.debug.getter();
        sub_100C2B8AC(v99);
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v145[0] = v103;
          *v102 = 136315138;
          v104 = Data.hexString.getter();
          v106 = sub_1000136BC(v104, v105, v145);

          *(v102 + 4) = v106;
          _os_log_impl(&_mh_execute_header, v100, v101, "ChipId: %s", v102, 0xCu);
          sub_100007BAC(v103);
        }

        v107 = *(v1 + 1944);
        sub_100C29FA0(v107, v1 + 784);
        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.debug.getter();
        sub_100C2B8AC(v107);
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v145[0] = v111;
          *v110 = 136315138;
          v112 = Data.hexString.getter();
          v114 = sub_1000136BC(v112, v113, v145);

          *(v110 + 4) = v114;
          _os_log_impl(&_mh_execute_header, v108, v109, "H1 (hashed C2): %s", v110, 0xCu);
          sub_100007BAC(v111);
        }

        v115 = *(v1 + 1952);

        sub_100017D5C(v144, v143);
        v116 = sub_1004FCCF0(v120, v144, v143, 0, v121);
        *(v1 + 2056) = v116;

        sub_100016590(v144, v143);
        v118 = sub_100C353F4(&qword_1016B8ED8, v117, type metadata accessor for AirTagPairingValidator, &unk_1013E0FA8);
        v119 = swift_task_alloc();
        *(v1 + 2064) = v119;
        *v119 = v1;
        v119[1] = sub_100C3381C;
        v19 = &type metadata for PairingLockCheckResponse;
        v17 = sub_100C353A8;
        v12 = (v1 + 1808);
        v13 = v115;
        v14 = v118;
        v15 = 0xD000000000000013;
        v16 = 0x800000010136F240;
        v18 = v116;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v13, v14, v15, v16, v17, v18, v19);
      }

LABEL_38:
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v13, v14, v15, v16, v17, v18, v19);
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (qword_101694DD8 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000076D4(v36, qword_10177BEA8);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Unable to generate BAA payload", v39, 2u);
  }

  v30 = *(v1 + 2000);

  type metadata accessor for SPPairingSessionError(0);
  *(v1 + 1896) = 26;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100C353F4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  sub_100C2B938(v1 + 1616);
LABEL_12:
  sub_100C354A4(v30, type metadata accessor for PairingLockCheckEndPoint);

  v31 = *(v1 + 8);

  return v31();
}

uint64_t sub_100C3381C()
{
  v2 = *v1;
  *(*v1 + 2072) = v0;

  v3 = *(v2 + 1952);
  if (v0)
  {
    v4 = sub_100C33A80;
  }

  else
  {
    v4 = sub_100C33948;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C33948()
{
  v1 = *(v0 + 2048);
  v2 = *(v0 + 2040);
  v3 = *(v0 + 2024);
  v4 = *(v0 + 2016);
  v5 = *(v0 + 2000);
  v6 = *(v0 + 1936);

  sub_100016590(v2, v1);
  sub_100006654(v4, v3);
  sub_100C2B938(v0 + 1616);
  sub_100C354A4(v5, type metadata accessor for PairingLockCheckEndPoint);
  v7 = *(v0 + 1824);
  v8 = *(v0 + 1856);
  v9 = *(v0 + 1808);
  v6[2] = *(v0 + 1840);
  v6[3] = v8;
  *v6 = v9;
  v6[1] = v7;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100C33A80()
{
  v1 = v0[256];
  v2 = v0[255];
  v3 = v0[253];
  v4 = v0[252];
  v5 = v0[250];

  sub_100016590(v2, v1);
  sub_100006654(v4, v3);
  sub_100C2B938((v0 + 202));
  sub_100C354A4(v5, type metadata accessor for PairingLockCheckEndPoint);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C33B90(uint64_t a1)
{
  v13 = a1;
  v2 = sub_1000BC4D4(&qword_1016B8EF0, &unk_1013E1040);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  v12 = *(v3 + 16);
  v12(&v10 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v11 = *(v3 + 32);
  v11(v7 + v6, v5, v2);
  Future.addFailure(block:)();

  v12(v5, v13, v2);
  v8 = swift_allocObject();
  v11(v8 + v6, v5, v2);
  Future.addSuccess(block:)();
}

uint64_t sub_100C33D70(uint64_t a1, uint64_t a2, const char *a3, uint64_t *a4, uint64_t *a5)
{
  if (qword_101694DD8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177BEA8);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 0xCu);
    sub_100288C6C(v12);
  }

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100C353F4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_1000BC4D4(a4, a5);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100C33F68(void *a1, void *a2)
{
  v60[3] = a2;
  v3 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v60 - v9;
  v11 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v60[2] = a1;
  if (v11 == 200)
  {
    if (qword_101694DD8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    v13 = sub_1000076D4(v12, qword_10177BEA8);
    (*(v5 + 16))(v10, a1, v4);
    v60[1] = v13;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *&v67[0] = v60[0];
      *v16 = 136446210;
      sub_100C353F4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v5 + 8))(v10, v4);
      v20 = sub_1000136BC(v17, v19, v67);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Pairing success: %{public}s", v16, 0xCu);
      sub_100007BAC(v60[0]);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    v30 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v32 = v31;
    static String.Encoding.utf8.getter();
    v33 = String.init(data:encoding:)();
    v35 = v34;
    sub_100016590(v30, v32);
    if (v35)
    {

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v67[0] = v39;
        *v38 = 136315138;
        v40 = sub_1000136BC(v33, v35, v67);

        *(v38 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v36, v37, "response data: %s", v38, 0xCu);
        sub_100007BAC(v39);
      }

      else
      {
      }
    }

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v46 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v48 = v47;
    sub_10088CD88();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v46, v48);
    v63 = v67[0];
    v64 = v67[1];
    v65 = v67[2];
    v66 = v67[3];
    v49 = SLOBYTE(v67[0]);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v62[0] = v53;
      *v52 = 136315394;
      *(v52 + 4) = sub_1000136BC(0xD000000000000013, 0x800000010136F240, v62);
      *(v52 + 12) = 2048;
      *(v52 + 14) = qword_1013E1060[v49];
      _os_log_impl(&_mh_execute_header, v50, v51, "%s Pairing lock status: %ld", v52, 0x16u);
      sub_100007BAC(v53);
    }

    if (v49)
    {
      if (v49 == 1)
      {
        v62[0] = v63;
        v62[1] = v64;
        v62[2] = v65;
        v62[3] = v66;
        sub_100407F70(&v63, &v61);
        sub_1000BC4D4(&qword_1016B8EF0, &unk_1013E1040);
        CheckedContinuation.resume(returning:)();
LABEL_26:

        return sub_100407FCC(&v63);
      }

      v54 = type metadata accessor for PairingValidatorError();
      sub_100C353F4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError, &protocol conformance descriptor for PairingValidatorError);
      v55 = swift_allocError();
      v57 = v59;
      v58 = &enum case for PairingValidatorError.pairedToAnotherAccount(_:);
    }

    else
    {
      v54 = type metadata accessor for PairingValidatorError();
      sub_100C353F4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError, &protocol conformance descriptor for PairingValidatorError);
      v55 = swift_allocError();
      v57 = v56;
      *v56 = 0;
      v58 = &enum case for PairingValidatorError.pairingLockFailure(_:);
    }

    (*(*(v54 - 8) + 104))(v57, *v58, v54);
    *&v62[0] = v55;
    sub_1000BC4D4(&qword_1016B8EF0, &unk_1013E1040);
    CheckedContinuation.resume(throwing:)();
    goto LABEL_26;
  }

  if (qword_101694DD8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177BEA8);
  (*(v5 + 16))(v8, a1, v4);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v67[0] = v25;
    *v24 = 136446210;
    sub_100C353F4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v5 + 8))(v8, v4);
    v29 = sub_1000136BC(v26, v28, v67);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Pairing lock failed: %{public}s", v24, 0xCu);
    sub_100007BAC(v25);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v41 = type metadata accessor for PairingValidatorError();
  sub_100C353F4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError, &protocol conformance descriptor for PairingValidatorError);
  v42 = swift_allocError();
  v44 = v43;
  *v43 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  (*(*(v41 - 8) + 104))(v44, enum case for PairingValidatorError.pairingLockFailure(_:), v41);
  *&v67[0] = v42;
  sub_1000BC4D4(&qword_1016B8EF0, &unk_1013E1040);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100C34AA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100C30478(a1, a2);
}

uint64_t sub_100C34B4C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100C308C0(a1, a2);
}

uint64_t sub_100C34BF4(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100BF4D30(v2);
}

unint64_t sub_100C34CA8()
{
  result = qword_1016B8EE0;
  if (!qword_1016B8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8EE0);
  }

  return result;
}

unint64_t sub_100C34D04()
{
  result = qword_1016B8EE8;
  if (!qword_1016B8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8EE8);
  }

  return result;
}

uint64_t sub_100C34D58(__int128 *a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v3 = Data.trimmed.getter();
  v5 = v4;
  *&v55 = v3;
  *(&v55 + 1) = v4;
  static String.Encoding.utf8.getter();
  sub_100165078();
  v6 = String.init<A>(bytes:encoding:)();
  v41 = v5;
  v40 = v3;
  if (!v7)
  {
    v6 = Data.hexString.getter();
  }

  v8 = v6;
  v9 = v7;
  v42 = a1[1];
  sub_1000E0A3C();
  v10 = DataProtocol.intValue.getter();
  v48 = *a1;
  v11 = DataProtocol.intValue.getter();
  v13 = *(a1 + 8);
  v12 = *(a1 + 9);
  *&v49 = 0;
  *(&v49 + 1) = v10;
  v14 = *(a1 + 10);
  v15 = *(a1 + 11);
  *&v50 = v11;
  *(&v50 + 1) = &off_101609050;
  *&v51 = v8;
  *(&v51 + 1) = v9;
  v52 = xmmword_10138FDA0;
  *&v53 = v13;
  *(&v53 + 1) = v12;
  *&v54 = v14;
  *(&v54 + 1) = v15;
  v55 = v49;
  v56 = v50;
  v59 = v53;
  v60 = v54;
  v57 = v51;
  v58 = xmmword_10138FDA0;
  sub_100017D5C(v13, v12);
  sub_100017D5C(v14, v15);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C418);
  sub_1001650CC(&v49, &v42);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  sub_100165128(&v49);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v48 = v20;
    *v19 = 136315138;
    sub_1001650CC(&v49, &v42);
    sub_10107D964();
    v22 = v21;
    v24 = v23;
    sub_100165128(&v49);
    v25 = sub_1000136BC(v22, v24, &v48);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "BAARKProperties %s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  v44 = v57;
  v45 = v58;
  v46 = v59;
  v47 = v60;
  v42 = v55;
  v43 = v56;
  sub_10016517C();
  v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v28 = v27;
  v29 = *(a1 + 7);
  v30 = *(a1 + 6);
  sub_100017D5C(v30, v29);
  sub_100017D5C(v30, v29);
  sub_100017D5C(v26, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  sub_100016590(v30, v29);
  sub_100016590(v26, v28);
  if (os_log_type_enabled(v31, v32))
  {
    v39 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v48 = v38;
    *v39 = 136315138;
    *&v42 = v30;
    *(&v42 + 1) = v29;
    *&v43 = v26;
    *(&v43 + 1) = v28;
    sub_100017D5C(v30, v29);
    sub_100017D5C(v26, v28);
    v33 = String.init<A>(describing:)();
    v35 = sub_1000136BC(v33, v34, &v48);

    *(v39 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "BAARequestPayload %s", v39, 0xCu);
    sub_100007BAC(v38);
  }

  *&v42 = v30;
  *(&v42 + 1) = v29;
  *&v43 = v26;
  *(&v43 + 1) = v28;
  sub_1001651D0();
  v36 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100016590(v40, v41);

  sub_100165128(&v49);
  sub_100016590(v30, v29);
  sub_100016590(v26, v28);
  return v36;
}

uint64_t sub_100C353F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100C3543C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C354A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100C355E0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_1000BC4D4(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_100C3566C(uint64_t a1)
{
  v2[1152] = v1;
  v2[1151] = a1;
  type metadata accessor for String.Encoding();
  v2[1153] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[1154] = v3;
  v2[1155] = *(v3 - 8);
  v2[1156] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[1157] = v4;
  v2[1158] = *(v4 - 8);
  v2[1159] = swift_task_alloc();
  v5 = type metadata accessor for PairingExecutorState();
  v2[1160] = v5;
  v2[1161] = *(v5 - 8);
  v2[1162] = swift_task_alloc();
  v2[1163] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v2[1164] = swift_task_alloc();
  v6 = type metadata accessor for AccessoryProductInfo(0);
  v2[1165] = v6;
  v2[1166] = *(v6 - 8);
  v2[1167] = swift_task_alloc();

  return _swift_task_switch(sub_100C358CC, v1, 0);
}

uint64_t sub_100C358CC()
{
  v1 = *(v0[1152] + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_peripheralProvider + 8);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[1168] = v3;
  v4 = sub_1000BC4D4(&qword_1016A1358, &qword_1013E0350);
  *v3 = v0;
  v3[1] = sub_100C359BC;
  v5 = v0[1151];

  return dispatch thunk of PairingPeripheralProvider.pair<A>(_:)(v0 + 1147, v5, v4, ObjectType, v1);
}

uint64_t sub_100C359BC()
{
  v2 = *v1;
  *(*v1 + 9352) = v0;

  v3 = *(v2 + 9216);
  if (v0)
  {
    v4 = sub_100C39CE0;
  }

  else
  {
    v4 = sub_100C35AE8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C35AE8()
{
  v159 = v0;
  *(v0 + 9360) = *(v0 + 9176);
  v1 = *(v0 + 9184);
  *(v0 + 9368) = v1;
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 9208);
  v3 = type metadata accessor for Logger();
  *(v0 + 9376) = sub_1000076D4(v3, qword_1016B8F00);
  sub_10001F280(v2, v0 + 8944);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v146 = v1;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v157 = v7;
    *v6 = 136315138;
    sub_10001F280(v0 + 8944, v0 + 9064);
    sub_1000BC4D4(&qword_1016A1370, &qword_1013E03B0);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    sub_100007BAC((v0 + 8944));
    v11 = sub_1000136BC(v8, v10, &v157);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connected to peripheral: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {

    sub_100007BAC((v0 + 8944));
  }

  v12 = *(v0 + 9328);
  v13 = *(v0 + 9320);
  v14 = *(v0 + 9312);
  v15 = *(v0 + 9216);
  v16 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingInfo;
  *(v0 + 9384) = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingInfo;
  v17 = *(v15 + v16);
  v18 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v17 + v18, v14, &qword_101697268, &qword_101394FE0);
  if ((*(v12 + 48))(v14, 1, v13) == 1)
  {
    sub_10000B3A8(*(v0 + 9312), &qword_101697268, &qword_101394FE0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v157 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x800000010136FC40, &v157);
      _os_log_impl(&_mh_execute_header, v19, v20, "%s Missing productInfo!", v21, 0xCu);
      sub_100007BAC(v22);
    }

    sub_100C45B4C();
    swift_allocError();
    *v23 = 7;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v24 = *(v0 + 9336);
  v25 = *(v0 + 9320);
  v26 = *(v0 + 9304);
  v154 = v16;
  v155 = v15;
  v27 = *(v0 + 9288);
  v28 = *(v0 + 9280);
  sub_10002AD14(*(v0 + 9312), v24, type metadata accessor for AccessoryProductInfo);
  v29 = (v24 + *(v25 + 96));
  v141 = v29[1];
  v143 = *v29;
  v30 = enum case for PairingExecutorState.InitiatePairing.generateE1Start(_:);
  v31 = type metadata accessor for PairingExecutorState.InitiatePairing();
  *(v0 + 9392) = v31;
  v32 = *(v31 - 8);
  v33 = *(v32 + 104);
  *(v0 + 9400) = v33;
  *(v0 + 9408) = (v32 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v145 = v33;
  v33(v26, v30, v31);
  v34 = *(v32 + 56);
  *(v0 + 9416) = v34;
  *(v0 + 9424) = (v32 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v151 = v31;
  v34(v26, 0, 1, v31);
  v35 = enum case for PairingExecutorState.initiatePairing(_:);
  *(v0 + 1972) = enum case for PairingExecutorState.initiatePairing(_:);
  v36 = *(v27 + 104);
  *(v0 + 9432) = v36;
  *(v0 + 9440) = (v27 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v140 = v35;
  v149 = v36;
  (v36)(v26);
  *(v0 + 9448) = type metadata accessor for ProximityPairingExecutor(0);
  *(v0 + 9456) = sub_100C4600C(&qword_1016B75C0, type metadata accessor for ProximityPairingExecutor, &unk_1013E1218);
  PairingExecutor.setState(_:)();
  v147 = *(v27 + 8);
  *(v0 + 9464) = v147;
  *(v0 + 9472) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v147(v26, v28);

  v37 = sub_100F4F600(v143, v141);
  v39 = v38;

  *(v0 + 9480) = v37;
  *(v0 + 9488) = v39;
  if (v39 >> 60 != 15)
  {
    v45 = *(v0 + 9304);
    v144 = v37;
    v46 = *(v0 + 9280);
    v145(v45, enum case for PairingExecutorState.InitiatePairing.generateE1Finish(_:), v151);
    v34(v45, 0, 1, v151);
    v47 = v140;
    v149(v45, v140, v46);
    PairingExecutor.setState(_:)();
    v147(v45, v46);
    sub_100017D5C(v144, v39);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    sub_100006654(v144, v39);
    v142 = v39;
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v157 = v51;
      *v50 = 136315138;
      *(v0 + 9192) = v144;
      *(v0 + 9200) = v39;
      sub_100413338();
      v52 = RawRepresentable<>.hexString.getter();
      v54 = sub_1000136BC(v52, v53, &v157);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "E1: %s", v50, 0xCu);
      sub_100007BAC(v51);

      v47 = v140;
    }

    v55 = *(v0 + 9304);
    v56 = *(v0 + 9280);
    v145(v55, enum case for PairingExecutorState.InitiatePairing.generateFMNIDStart(_:), v151);
    v34(v55, 0, 1, v151);
    v149(v55, v47, v56);
    PairingExecutor.setState(_:)();
    v147(v55, v56);
    v57 = sub_100F54748();
    *(v0 + 9496) = v57;
    *(v0 + 9504) = v58;
    if (v58 >> 60 == 15)
    {
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "Unable to generate FindMyNetworkId.", v61, 2u);
      }

      v43 = *(v0 + 9336);

      sub_100C45B4C();
      swift_allocError();
      *v62 = 7;
      swift_willThrow();
      sub_100006654(v144, v39);
      goto LABEL_20;
    }

    v66 = v57;
    v67 = v58;
    v68 = *(v0 + 9304);
    v69 = *(v0 + 9280);
    v145(v68, enum case for PairingExecutorState.InitiatePairing.generateFMNIDFinish(_:), v151);
    v34(v68, 0, 1, v151);
    v149(v68, v140, v69);
    PairingExecutor.setState(_:)();
    v147(v68, v69);
    sub_100017D5C(v66, v67);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    sub_100006654(v66, v67);
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v157 = v73;
      *v72 = 136315138;
      sub_100017D5C(v66, v67);
      v74 = Data.hexString.getter();
      v76 = v75;
      sub_100006654(v66, v67);
      v77 = sub_1000136BC(v74, v76, &v157);

      *(v72 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v70, v71, "findMyNetworkId: %s", v72, 0xCu);
      sub_100007BAC(v73);
    }

    v78 = (*(v155 + v154) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
    v79 = *v78;
    v80 = v78[1];
    *v78 = v66;
    v78[1] = v67;
    v81 = v67;
    sub_10002E98C(v66, v67);

    sub_100006654(v79, v80);

    v82 = (*(v155 + v154) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
    v83 = *v82;
    *(v0 + 9512) = *v82;
    v84 = v82[1];
    *(v0 + 9520) = v84;
    if (v84 >> 60 == 15)
    {
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&_mh_execute_header, v85, v86, "Missing FindMyNetworkId to generate init pairing.", v87, 2u);
      }

      v88 = *(v0 + 9336);

      sub_100C45B4C();
      swift_allocError();
      *v89 = 6;
      swift_willThrow();
      sub_100006654(v144, v142);
      sub_100006654(v66, v81);
      swift_unknownObjectRelease();
      v63 = v88;
      goto LABEL_21;
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    sub_100017D5C(v83, v84);
    v90 = __DataStorage.init(length:)();
    v157 = 0x6000000000;
    v158 = v90;
    sub_1007765FC(&v157, 0);
    v91 = v157;
    v152 = HIDWORD(v157);
    v92 = v158;
    *(v0 + 9528) = v158;
    v93 = [objc_opt_self() defaultStore];
    if (!v93)
    {
      goto LABEL_89;
    }

    v96 = v93;
    v97 = [v93 aa_primaryAppleAccount];

    if (v97)
    {

      v98 = 1;
    }

    else
    {
      v98 = 0;
    }

    v99 = *(v155 + v154);
    v101 = *(v99 + 16);
    v100 = *(v99 + 24);
    *(v0 + 1969) = v98;
    sub_10002E98C(v144, v142);
    sub_10002E98C(v83, v84);
    sub_100017D5C(v101, v100);
    sub_1000198E8();

    v93 = FixedWidthInteger.data.getter();
    v102 = v100 >> 62;
    if ((v100 >> 62) > 1)
    {
      v103 = v144;
      if (v102 != 2)
      {
        goto LABEL_90;
      }

      v106 = *(v101 + 16);
      v105 = *(v101 + 24);
      v107 = __OFSUB__(v105, v106);
      v104 = v105 - v106;
      if (!v107)
      {
LABEL_44:
        if (v104 == 32)
        {
          v108 = v142 >> 62;
          if ((v142 >> 62) > 1)
          {
            if (v108 != 2)
            {
              goto LABEL_91;
            }

            v111 = *(v103 + 16);
            v110 = *(v103 + 24);
            v107 = __OFSUB__(v110, v111);
            v109 = v110 - v111;
            if (!v107)
            {
LABEL_54:
              if (v109 == 113)
              {
                v112 = v84 >> 62;
                if ((v84 >> 62) > 1)
                {
                  v113 = v152;
                  if (v112 != 2)
                  {
                    goto LABEL_92;
                  }

                  v116 = *(v83 + 16);
                  v115 = *(v83 + 24);
                  v107 = __OFSUB__(v115, v116);
                  v114 = v115 - v116;
                  if (!v107)
                  {
LABEL_64:
                    if (v114 == 32)
                    {
                      v117 = v94 >> 62;
                      if ((v94 >> 62) > 1)
                      {
                        if (v117 != 2)
                        {
                          v118 = 0;
                          goto LABEL_75;
                        }

                        v120 = v93[2];
                        v119 = v93[3];
                        v107 = __OFSUB__(v119, v120);
                        v118 = v119 - v120;
                        if (!v107)
                        {
                          goto LABEL_75;
                        }

                        __break(1u);
                      }

                      else if (!v117)
                      {
                        v118 = BYTE6(v94);
LABEL_75:
                        v153 = v83;
                        if (__OFSUB__(v113, v91))
                        {
                          __break(1u);
                        }

                        else
                        {
                          v148 = v93;
                          v150 = v94;
                          if (v113 - v91 == 96 && v118 == 1)
                          {
                            v121 = v100;
                            *&v156 = v91 | (v113 << 32);
                            *(&v156 + 1) = v92 | 0x4000000000000000;

                            v157 = sub_100845C88(0);
                            v158 = v122;
                            sub_100776394(&v157, 0);
                            v123 = v157;
                            v124 = v158;
                            Data.append(_:)();

                            sub_100016590(v123, v124);
                            *(v0 + 8624) = v101;
                            *(v0 + 8632) = v121;
                            *(v0 + 8640) = v144;
                            *(v0 + 8648) = v142;
                            *(v0 + 8656) = v153;
                            *(v0 + 8664) = v84;
                            *(v0 + 8672) = v156;
                            *(v0 + 8688) = v148;
                            *(v0 + 8696) = v150;

                            v125 = Logger.logObject.getter();
                            v126 = static os_log_type_t.default.getter();

                            if (os_log_type_enabled(v125, v126))
                            {
                              v127 = swift_slowAlloc();
                              v128 = swift_slowAlloc();
                              v157 = v128;
                              *v127 = 136315138;
                              v129 = *(v155 + v154);
                              v130 = *(v129 + 16);
                              v131 = *(v129 + 24);
                              sub_100017D5C(v130, v131);
                              v132 = Data.hexString.getter();
                              v134 = v133;
                              sub_100016590(v130, v131);
                              v135 = sub_1000136BC(v132, v134, &v157);

                              *(v127 + 4) = v135;
                              _os_log_impl(&_mh_execute_header, v125, v126, "sessionNonce: %s", v127, 0xCu);
                              sub_100007BAC(v128);
                            }

                            v136 = *(v0 + 8672);
                            *(v0 + 6808) = *(v0 + 8656);
                            *(v0 + 6824) = v136;
                            *(v0 + 6840) = *(v0 + 8688);
                            v137 = *(v0 + 8640);
                            *(v0 + 6776) = *(v0 + 8624);
                            *(v0 + 6792) = v137;
                            sub_100C46178(v0 + 6776);
                            ObjectType = swift_getObjectType();
                            *(v0 + 9536) = ObjectType;
                            sub_1001DAB40(v0 + 8624, v0 + 8704);
                            type metadata accessor for Characteristic();
                            Identifier.init(stringLiteral:)();
                            v139 = swift_task_alloc();
                            *(v0 + 9544) = v139;
                            *v139 = v0;
                            v139[1] = sub_100C36D1C;
                            v93 = *(v0 + 9272);
                            v94 = ObjectType;
                            v95 = v146;

                            return dispatch thunk of ServiceProtocol.subscript.getter(v93, v94, v95);
                          }
                        }

                        __break(1u);
                        goto LABEL_85;
                      }

                      LODWORD(v118) = HIDWORD(v93) - v93;
                      if (__OFSUB__(HIDWORD(v93), v93))
                      {
LABEL_88:
                        __break(1u);
LABEL_89:
                        __break(1u);
                        goto LABEL_90;
                      }

                      v118 = v118;
                      goto LABEL_75;
                    }

LABEL_92:
                    __break(1u);
                    return dispatch thunk of ServiceProtocol.subscript.getter(v93, v94, v95);
                  }

                  __break(1u);
                }

                else
                {
                  v113 = v152;
                  if (!v112)
                  {
                    v114 = BYTE6(v84);
                    goto LABEL_64;
                  }
                }

                LODWORD(v114) = HIDWORD(v83) - v83;
                if (__OFSUB__(HIDWORD(v83), v83))
                {
LABEL_87:
                  __break(1u);
                  goto LABEL_88;
                }

                v114 = v114;
                goto LABEL_64;
              }

LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

            __break(1u);
          }

          else if (!v108)
          {
            v109 = BYTE6(v142);
            goto LABEL_54;
          }

          LODWORD(v109) = HIDWORD(v103) - v103;
          if (__OFSUB__(HIDWORD(v103), v103))
          {
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          v109 = v109;
          goto LABEL_54;
        }

LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      __break(1u);
    }

    else
    {
      v103 = v144;
      if (!v102)
      {
        v104 = BYTE6(v100);
        goto LABEL_44;
      }
    }

    LODWORD(v104) = HIDWORD(v101) - v101;
    if (__OFSUB__(HIDWORD(v101), v101))
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v104 = v104;
    goto LABEL_44;
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Unable to generate E1 blob.", v42, 2u);
  }

  v43 = *(v0 + 9336);

  sub_100C45B4C();
  swift_allocError();
  *v44 = 7;
  swift_willThrow();
LABEL_20:
  swift_unknownObjectRelease();
  v63 = v43;
LABEL_21:
  sub_100C46118(v63, type metadata accessor for AccessoryProductInfo);
LABEL_22:

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_100C36D1C(uint64_t a1)
{
  v3 = *v2;
  v3[1194] = a1;
  v3[1195] = v1;

  if (v1)
  {
    v4 = v3[1159];
    v5 = v3[1158];
    v6 = v3[1157];
    v7 = v3[1152];
    sub_1001DAB9C((v3 + 1078));
    (*(v5 + 8))(v4, v6);
    v8 = sub_100C39DA4;
    v9 = v7;
  }

  else
  {
    v10 = v3[1152];
    (*(v3[1158] + 8))(v3[1159], v3[1157]);
    v8 = sub_100C36EA0;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100C36EA0()
{
  v43 = v0;
  v1 = (v0 + 6776);
  sub_1001DAB40(v0 + 8624, v0 + 8384);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_1001DAB9C(v0 + 8624);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v42 = v5;
    *v4 = 136315138;
    v6 = *(v0 + 6952);
    *(v0 + 6536) = *(v0 + 6936);
    *(v0 + 6552) = v6;
    *(v0 + 6568) = *(v0 + 6968);
    v7 = *(v0 + 6888);
    *(v0 + 6472) = *(v0 + 6872);
    *(v0 + 6488) = v7;
    v8 = *(v0 + 6920);
    *(v0 + 6504) = *(v0 + 6904);
    *(v0 + 6520) = v8;
    v9 = *(v0 + 6824);
    *(v0 + 6408) = *(v0 + 6808);
    *(v0 + 6424) = v9;
    v10 = *(v0 + 6856);
    *(v0 + 6440) = *(v0 + 6840);
    *(v0 + 6456) = v10;
    v11 = *(v0 + 6792);
    *(v0 + 6376) = *v1;
    *(v0 + 6392) = v11;
    sub_1001DAB40(v0 + 8624, v0 + 8464);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000136BC(v12, v13, &v42);

    *(v4 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending command: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v41 = *(v0 + 9560);
  v39 = *(v0 + 9464);
  v38 = *(v0 + 9432);
  v15 = *(v0 + 1972);
  v16 = *(v0 + 9416);
  v17 = *(v0 + 9392);
  v18 = *(v0 + 9304);
  v19 = *(v0 + 9280);
  (*(v0 + 9400))(v18, enum case for PairingExecutorState.InitiatePairing.commandStart(_:), v17);
  v16(v18, 0, 1, v17);
  v38(v18, v15, v19);
  PairingExecutor.setState(_:)();
  v39(v18, v19);
  v20 = *(v0 + 6952);
  *(v0 + 2736) = *(v0 + 6936);
  *(v0 + 2752) = v20;
  *(v0 + 2768) = *(v0 + 6968);
  v21 = *(v0 + 6888);
  *(v0 + 2672) = *(v0 + 6872);
  *(v0 + 2688) = v21;
  v22 = *(v0 + 6920);
  *(v0 + 2704) = *(v0 + 6904);
  *(v0 + 2720) = v22;
  v23 = *(v0 + 6824);
  *(v0 + 2608) = *(v0 + 6808);
  *(v0 + 2624) = v23;
  v24 = *(v0 + 6856);
  *(v0 + 2640) = *(v0 + 6840);
  *(v0 + 2656) = v24;
  v25 = *(v0 + 6792);
  *(v0 + 2576) = *v1;
  *(v0 + 2592) = v25;
  sub_100C45E3C();
  *(v0 + 9568) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 9576) = v26;
  if (v41)
  {
    v27 = *(v0 + 9520);
    v28 = *(v0 + 9512);
    v29 = *(v0 + 9504);
    v30 = *(v0 + 9496);
    v31 = *(v0 + 9488);
    v32 = *(v0 + 9480);
    v40 = *(v0 + 9336);
    sub_1001DAB9C(v0 + 8624);
    sub_100006654(v32, v31);
    sub_100006654(v30, v29);

    sub_100006654(v28, v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100C46118(v40, type metadata accessor for AccessoryProductInfo);
    sub_1001DAB9C(v0 + 8624);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 9584) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 9592) = AssociatedConformanceWitness;
    v37 = swift_task_alloc();
    *(v0 + 9600) = v37;
    *v37 = v0;
    v37[1] = sub_100C37348;

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_100C37348(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 9608) = v1;

  if (v1)
  {
    v5 = *(v4 + 9216);
    sub_1001DAB9C(v4 + 8624);
    v6 = sub_100C39EEC;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 9216);
    *(v4 + 9616) = a1;
    v6 = sub_100C3748C;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100C3748C()
{
  v1 = fragment(data:mtu:)();
  v0[1203] = v1;
  v2 = swift_task_alloc();
  v0[1204] = v2;
  *v2 = v0;
  v2[1] = sub_100C3754C;
  v3 = v0[1199];
  v4 = v0[1198];
  v5 = v0[1156];

  return dispatch thunk of CharacteristicProtocol.write(data:)(v5, v1, v4, v3);
}

uint64_t sub_100C3754C()
{
  v2 = *v1;
  v2[1205] = v0;

  if (v0)
  {
    v3 = v2[1152];
    sub_1001DAB9C((v2 + 1078));

    return _swift_task_switch(sub_100C3A058, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[1206] = v4;
    v5 = sub_10048E70C();
    *v4 = v2;
    v4[1] = sub_100C376FC;
    v6 = v2[1154];

    return AsyncSequence<>.reassemble()(v6, v5);
  }
}

uint64_t sub_100C376FC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[1207] = a1;
  v4[1208] = a2;
  v4[1209] = v2;

  if (v2)
  {
    v5 = v4[1156];
    v6 = v4[1155];
    v7 = v4[1154];
    v8 = v4[1152];
    sub_1001DAB9C((v4 + 1078));
    (*(v6 + 8))(v5, v7);
    v9 = sub_100C3A1C0;
    v10 = v8;
  }

  else
  {
    v11 = v4[1152];
    (*(v4[1155] + 8))(v4[1156], v4[1154]);
    v9 = sub_100C37884;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

void *sub_100C37884()
{
  v398 = v0;
  v1 = *(v0 + 9432);
  v2 = *(v0 + 1972);
  v3 = *(v0 + 9416);
  v4 = *(v0 + 9392);
  v392 = *(v0 + 9464);
  v5 = *(v0 + 9304);
  v6 = *(v0 + 9280);
  (*(v0 + 9400))(v5, enum case for PairingExecutorState.InitiatePairing.commandFinish(_:), v4);
  v3(v5, 0, 1, v4);
  v1(v5, v2, v6);
  v7 = v0;
  PairingExecutor.setState(_:)();
  v392(v5, v6);
  sub_1001DAB40(v0 + 8624, v0 + 8784);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_1001DAB9C(v0 + 8624);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v397[0] = v11;
    *v10 = 136315138;
    v12 = *(v0 + 6952);
    *(v0 + 2936) = *(v0 + 6936);
    *(v0 + 2952) = v12;
    *(v0 + 2968) = *(v0 + 6968);
    v13 = *(v0 + 6888);
    *(v0 + 2872) = *(v0 + 6872);
    *(v0 + 2888) = v13;
    v14 = *(v0 + 6920);
    *(v0 + 2904) = *(v0 + 6904);
    *(v0 + 2920) = v14;
    v15 = *(v0 + 6824);
    *(v0 + 2808) = *(v0 + 6808);
    *(v0 + 2824) = v15;
    v16 = *(v0 + 6856);
    *(v0 + 2840) = *(v0 + 6840);
    *(v0 + 2856) = v16;
    v17 = *(v0 + 6792);
    *(v0 + 2776) = *(v0 + 6776);
    *(v0 + 2792) = v17;
    sub_1001DAB40(v0 + 8624, v0 + 8544);
    v18 = String.init<A>(describing:)();
    v20 = sub_1000136BC(v18, v19, v397);

    *(v10 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Sent command: %s", v10, 0xCu);
    sub_100007BAC(v11);
  }

  v21 = *(v0 + 9672);
  sub_100C45ED8();
  BinaryDecoder.decode<A>(_:from:)();
  v395 = v0;
  if (!v21)
  {
    v31 = v0 + 3176;
    v32 = (v0 + 3576);
    v33 = *(v0 + 3152);
    *(v0 + 3336) = *(v0 + 3136);
    *(v0 + 3352) = v33;
    *(v0 + 3368) = *(v0 + 3168);
    v34 = *(v0 + 3088);
    *(v0 + 3272) = *(v0 + 3072);
    *(v0 + 3288) = v34;
    v35 = *(v0 + 3120);
    *(v0 + 3304) = *(v0 + 3104);
    *(v0 + 3320) = v35;
    v36 = *(v0 + 3024);
    *(v0 + 3208) = *(v0 + 3008);
    *(v0 + 3224) = v36;
    v37 = *(v0 + 3056);
    *(v0 + 3240) = *(v0 + 3040);
    *(v0 + 3256) = v37;
    v38 = *(v0 + 2992);
    *(v0 + 3176) = *(v0 + 2976);
    *(v0 + 3192) = v38;
    sub_100C45F2C(v0 + 3176, v0 + 3376);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    sub_100C45F88(v0 + 3176);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v397[0] = v42;
      *v41 = 136315138;
      v43 = *(v0 + 3352);
      *(v0 + 2336) = *(v0 + 3336);
      *(v0 + 2352) = v43;
      *(v0 + 2368) = *(v0 + 3368);
      v44 = *(v0 + 3288);
      *(v0 + 2272) = *(v0 + 3272);
      *(v0 + 2288) = v44;
      v45 = *(v0 + 3320);
      *(v0 + 2304) = *(v0 + 3304);
      *(v0 + 2320) = v45;
      v46 = *(v0 + 3224);
      *(v0 + 2208) = *(v0 + 3208);
      *(v0 + 2224) = v46;
      v47 = *(v0 + 3256);
      *(v0 + 2240) = *(v0 + 3240);
      *(v0 + 2256) = v47;
      v48 = *(v0 + 3192);
      *(v0 + 2176) = *v31;
      *(v0 + 2192) = v48;
      sub_100C45F2C(v31, v0 + 2376);
      v49 = String.init<A>(describing:)();
      v51 = sub_1000136BC(v49, v50, v397);

      *(v41 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v39, v40, "Received response: %s", v41, 0xCu);
      sub_100007BAC(v42);

      v7 = v0;
    }

    v52 = *(v0 + 3352);
    *(v0 + 3736) = *(v0 + 3336);
    *(v0 + 3752) = v52;
    *(v0 + 3768) = *(v0 + 3368);
    v53 = *(v0 + 3288);
    *(v0 + 3672) = *(v0 + 3272);
    *(v0 + 3688) = v53;
    v54 = *(v0 + 3320);
    *(v0 + 3704) = *(v0 + 3304);
    *(v0 + 3720) = v54;
    v55 = *(v0 + 3224);
    *(v0 + 3608) = *(v0 + 3208);
    *(v0 + 3624) = v55;
    v56 = *(v0 + 3256);
    *(v0 + 3640) = *(v0 + 3240);
    *(v0 + 3656) = v56;
    v57 = *(v0 + 3192);
    *v32 = *v31;
    *(v0 + 3592) = v57;
    if (sub_100C45FDC(v32) != 2)
    {
      sub_1001DAB9C(v7 + 8624);
      sub_100C45F2C(v31, v7 + 3776);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();
      sub_100C45F88(v31);
      if (os_log_type_enabled(v91, v92))
      {
        v93 = v7 + 3976;
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *&v397[0] = v95;
        *v94 = 136446210;
        v96 = *(v0 + 3352);
        *(v93 + 160) = *(v0 + 3336);
        *(v93 + 176) = v96;
        *(v93 + 192) = *(v0 + 3368);
        v97 = *(v0 + 3288);
        *(v93 + 96) = *(v0 + 3272);
        *(v93 + 112) = v97;
        v98 = *(v0 + 3320);
        *(v93 + 128) = *(v0 + 3304);
        *(v93 + 144) = v98;
        v99 = *(v0 + 3224);
        *(v93 + 32) = *(v0 + 3208);
        *(v93 + 48) = v99;
        v100 = *(v0 + 3256);
        *(v93 + 64) = *(v0 + 3240);
        *(v93 + 80) = v100;
        v101 = *(v0 + 3192);
        *v93 = *v31;
        *(v93 + 16) = v101;
        sub_100C45F2C(v31, v0 + 4176);
        v102 = String.init<A>(describing:)();
        v104 = sub_1000136BC(v102, v103, v397);

        *(v94 + 4) = v104;
        _os_log_impl(&_mh_execute_header, v91, v92, "Invalid sendPairingData payload %{public}s", v94, 0xCu);
        sub_100007BAC(v95);

        v7 = v0;
      }

      v377 = *(v7 + 9664);
      v105 = *(v7 + 9656);
      v385 = *(v7 + 9576);
      v379 = *(v7 + 9568);
      v387 = *(v7 + 9520);
      v381 = *(v7 + 9512);
      v106 = *(v7 + 9504);
      v107 = *(v7 + 9496);
      v108 = *(v0 + 9488);
      v109 = *(v0 + 9480);
      v110 = *(v0 + 9336);
      sub_100C45B4C();
      swift_allocError();
      *v111 = 8;
      swift_willThrow();
      sub_100006654(v109, v108);
      sub_100006654(v107, v106);

      sub_1001DAB9C(v0 + 8624);
      sub_100C45F88(v31);
      sub_100016590(v105, v377);
      sub_100016590(v379, v385);
      sub_100006654(v381, v387);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_100C46118(v110, type metadata accessor for AccessoryProductInfo);
      goto LABEL_90;
    }

    v58 = (v0 + 4976);
    v59 = (v0 + 5376);
    v394 = v0 + 3176;
    v60 = sub_10001F270(v32);
    v61 = *(v31 + 176);
    *(v7 + 4536) = *(v31 + 160);
    *(v7 + 4552) = v61;
    *(v7 + 4568) = *(v31 + 192);
    v62 = *(v31 + 112);
    *(v7 + 4472) = *(v31 + 96);
    *(v7 + 4488) = v62;
    v63 = *(v31 + 144);
    *(v7 + 4504) = *(v31 + 128);
    *(v7 + 4520) = v63;
    v64 = *(v31 + 48);
    *(v7 + 4408) = *(v31 + 32);
    *(v7 + 4424) = v64;
    v65 = *(v31 + 80);
    *(v7 + 4440) = *(v31 + 64);
    *(v7 + 4456) = v65;
    v66 = *(v31 + 16);
    *(v7 + 4376) = *v31;
    *(v7 + 4392) = v66;
    v67 = sub_10001F270(v7 + 4376);
    v68 = v395;
    sub_100C45F2C(v31, v395 + 4576);
    sub_1000D2A70(v67, v395 + 8032, &qword_1016B91D0, &unk_1013E1340);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    sub_100C45F88(v31);
    v390 = v60;
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v397[0] = v72;
      *v71 = 136315138;
      v73 = Data.hexString.getter();
      v75 = sub_1000136BC(v73, v74, v397);

      *(v71 + 4) = v75;
      v68 = v395;
      _os_log_impl(&_mh_execute_header, v69, v70, "C1: %s", v71, 0xCu);
      sub_100007BAC(v72);
    }

    v76 = v68 + 5776;
    v77 = *(v31 + 176);
    *(v395 + 5136) = *(v31 + 160);
    *(v395 + 5152) = v77;
    *(v395 + 5168) = *(v31 + 192);
    v78 = *(v31 + 112);
    *(v395 + 5072) = *(v31 + 96);
    *(v395 + 5088) = v78;
    v79 = *(v31 + 144);
    *(v395 + 5104) = *(v31 + 128);
    *(v395 + 5120) = v79;
    v80 = *(v31 + 48);
    *(v395 + 5008) = *(v31 + 32);
    *(v395 + 5024) = v80;
    v81 = *(v31 + 80);
    *(v395 + 5040) = *(v31 + 64);
    *(v395 + 5056) = v81;
    v82 = *(v31 + 16);
    *v58 = *v31;
    *(v395 + 4992) = v82;
    v83 = sub_10001F270(v58);
    sub_1000D2A70(v83, v68 + 7856, &qword_1016B91D0, &unk_1013E1340);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    sub_100C45F88(v31);
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *&v397[0] = v87;
      *v86 = 136315138;
      v88 = Data.hexString.getter();
      v90 = sub_1000136BC(v88, v89, v397);

      *(v86 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v84, v85, "SerialNumber: %s", v86, 0xCu);
      sub_100007BAC(v87);
      v68 = v395;
    }

    v112 = v68 + 6176;
    v113 = *(v31 + 176);
    *(v395 + 5536) = *(v31 + 160);
    *(v395 + 5552) = v113;
    *(v395 + 5568) = *(v31 + 192);
    v114 = *(v31 + 112);
    *(v395 + 5472) = *(v31 + 96);
    *(v395 + 5488) = v114;
    v115 = *(v31 + 144);
    *(v395 + 5504) = *(v31 + 128);
    *(v395 + 5520) = v115;
    v116 = *(v31 + 48);
    *(v395 + 5408) = *(v31 + 32);
    *(v395 + 5424) = v116;
    v117 = *(v31 + 80);
    *(v395 + 5440) = *(v31 + 64);
    *(v395 + 5456) = v117;
    v118 = *(v31 + 16);
    *v59 = *v31;
    *(v395 + 5392) = v118;
    v119 = sub_10001F270(v59);
    sub_1000D2A70(v119, v68 + 7680, &qword_1016B91D0, &unk_1013E1340);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.default.getter();
    sub_100C45F88(v31);
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *&v397[0] = v123;
      *v122 = 136315138;
      v124 = Data.hexString.getter();
      v126 = sub_1000136BC(v124, v125, v397);

      *(v122 + 4) = v126;
      _os_log_impl(&_mh_execute_header, v120, v121, "ChipId: %s", v122, 0xCu);
      sub_100007BAC(v123);
      v68 = v395;
    }

    v127 = v68 + 6576;
    v128 = *(v31 + 176);
    *(v76 + 160) = *(v31 + 160);
    *(v76 + 176) = v128;
    *(v76 + 192) = *(v31 + 192);
    v129 = *(v31 + 112);
    *(v76 + 96) = *(v31 + 96);
    *(v76 + 112) = v129;
    v130 = *(v31 + 144);
    *(v76 + 128) = *(v31 + 128);
    *(v76 + 144) = v130;
    v131 = *(v31 + 48);
    *(v76 + 32) = *(v31 + 32);
    *(v76 + 48) = v131;
    v132 = *(v31 + 80);
    *(v76 + 64) = *(v31 + 64);
    *(v76 + 80) = v132;
    v133 = *(v31 + 16);
    *v76 = *v31;
    *(v76 + 16) = v133;
    v134 = sub_10001F270(v76);
    sub_1000D2A70(v134, v68 + 7504, &qword_1016B91D0, &unk_1013E1340);
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.default.getter();
    sub_100C45F88(v31);
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *&v397[0] = v138;
      *v137 = 136315138;
      v139 = Data.hexString.getter();
      v141 = sub_1000136BC(v139, v140, v397);

      *(v137 + 4) = v141;
      _os_log_impl(&_mh_execute_header, v135, v136, "ECID: %s", v137, 0xCu);
      sub_100007BAC(v138);
      v68 = v395;
    }

    v142 = *(v31 + 176);
    *(v112 + 160) = *(v31 + 160);
    *(v112 + 176) = v142;
    *(v112 + 192) = *(v31 + 192);
    v143 = *(v31 + 112);
    *(v112 + 96) = *(v31 + 96);
    *(v112 + 112) = v143;
    v144 = *(v31 + 144);
    *(v112 + 128) = *(v31 + 128);
    *(v112 + 144) = v144;
    v145 = *(v31 + 48);
    *(v112 + 32) = *(v31 + 32);
    *(v112 + 48) = v145;
    v146 = *(v31 + 80);
    *(v112 + 64) = *(v31 + 64);
    *(v112 + 80) = v146;
    v147 = *(v31 + 16);
    *v112 = *v31;
    *(v112 + 16) = v147;
    v148 = sub_10001F270(v112);
    sub_1000D2A70(v148, v68 + 6976, &qword_1016B91D0, &unk_1013E1340);
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.default.getter();
    sub_100C45F88(v31);
    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      *&v397[0] = v152;
      *v151 = 136315138;
      v153 = Data.hexString.getter();
      v155 = sub_1000136BC(v153, v154, v397);

      *(v151 + 4) = v155;
      _os_log_impl(&_mh_execute_header, v149, v150, "numberOfBeacons: %s", v151, 0xCu);
      sub_100007BAC(v152);
      v68 = v395;
    }

    v156 = v68 + 1776;
    v157 = *(v31 + 176);
    *(v127 + 160) = *(v31 + 160);
    *(v127 + 176) = v157;
    *(v127 + 192) = *(v31 + 192);
    v158 = *(v31 + 112);
    *(v127 + 96) = *(v31 + 96);
    *(v127 + 112) = v158;
    v159 = *(v31 + 144);
    *(v127 + 128) = *(v31 + 128);
    *(v127 + 144) = v159;
    v160 = *(v31 + 48);
    *(v127 + 32) = *(v31 + 32);
    *(v127 + 48) = v160;
    v161 = *(v31 + 80);
    *(v127 + 64) = *(v31 + 64);
    *(v127 + 80) = v161;
    v162 = *(v31 + 16);
    *v127 = *v31;
    *(v127 + 16) = v162;
    v163 = sub_10001F270(v127);
    sub_1000D2A70(v163, v68 + 7152, &qword_1016B91D0, &unk_1013E1340);
    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.default.getter();
    sub_100C45F88(v31);
    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      *&v397[0] = v167;
      *v166 = 136315138;
      v168 = Data.hexString.getter();
      v170 = sub_1000136BC(v168, v169, v397);

      *(v166 + 4) = v170;
      _os_log_impl(&_mh_execute_header, v164, v165, "otherSerialNumber: %s", v166, 0xCu);
      sub_100007BAC(v167);
      v68 = v395;
    }

    v171 = v68 + 1976;
    v172 = *(v31 + 176);
    *(v156 + 160) = *(v31 + 160);
    *(v156 + 176) = v172;
    *(v156 + 192) = *(v31 + 192);
    v173 = *(v31 + 112);
    *(v156 + 96) = *(v31 + 96);
    *(v156 + 112) = v173;
    v174 = *(v31 + 144);
    *(v156 + 128) = *(v31 + 128);
    *(v156 + 144) = v174;
    v175 = *(v31 + 48);
    *(v156 + 32) = *(v31 + 32);
    *(v156 + 48) = v175;
    v176 = *(v31 + 80);
    *(v156 + 64) = *(v31 + 64);
    *(v156 + 80) = v176;
    v177 = *(v31 + 16);
    *v156 = *v31;
    *(v156 + 16) = v177;
    v178 = sub_10001F270(v156);
    sub_1000D2A70(v178, v68 + 8208, &qword_1016B91D0, &unk_1013E1340);
    v179 = Logger.logObject.getter();
    v180 = static os_log_type_t.default.getter();
    sub_100C45F88(v31);
    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      *&v397[0] = v182;
      *v181 = 136315138;
      v183 = Data.hexString.getter();
      v185 = sub_1000136BC(v183, v184, v397);

      *(v181 + 4) = v185;
      _os_log_impl(&_mh_execute_header, v179, v180, "seedK1: %s", v181, 0xCu);
      sub_100007BAC(v182);
      v68 = v395;
    }

    v186 = *(v31 + 176);
    *(v171 + 160) = *(v31 + 160);
    *(v171 + 176) = v186;
    *(v171 + 192) = *(v31 + 192);
    v187 = *(v31 + 112);
    *(v171 + 96) = *(v31 + 96);
    *(v171 + 112) = v187;
    v188 = *(v31 + 144);
    *(v171 + 128) = *(v31 + 128);
    *(v171 + 144) = v188;
    v189 = *(v31 + 48);
    *(v171 + 32) = *(v31 + 32);
    *(v171 + 48) = v189;
    v190 = *(v31 + 80);
    *(v171 + 64) = *(v31 + 64);
    *(v171 + 80) = v190;
    v191 = *(v31 + 16);
    *v171 = *v31;
    *(v171 + 16) = v191;
    v192 = sub_10001F270(v171);
    sub_1000D2A70(v192, v68 + 7328, &qword_1016B91D0, &unk_1013E1340);
    v193 = Logger.logObject.getter();
    v194 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v193, v194))
    {
      sub_100C45F88(v31);
LABEL_38:

      v380 = *(v60 + 120);
      v382 = *(v60 + 112);
      v388 = Data.chunked(into:)();
      v204 = *(v388 + 16);
      if (v204)
      {
        v205 = (v388 + 40);
        do
        {
          v211 = *(v205 - 1);
          v212 = *v205;
          sub_100017D5C(v211, *v205);
          v213 = Logger.logObject.getter();
          v214 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v213, v214))
          {
            v206 = swift_slowAlloc();
            v207 = swift_slowAlloc();
            *&v397[0] = v207;
            *v206 = 136315138;
            v208 = Data.hexString.getter();
            v210 = sub_1000136BC(v208, v209, v397);

            *(v206 + 4) = v210;
            _os_log_impl(&_mh_execute_header, v213, v214, "%s", v206, 0xCu);
            sub_100007BAC(v207);

            v68 = v395;

            sub_100016590(v211, v212);
          }

          else
          {

            sub_100016590(v211, v212);
          }

          v205 += 2;
          --v204;
        }

        while (v204);
      }

      v215 = v390;
      v216 = v390[20];
      v217 = v390[21];
      v218 = v394;
      sub_100C45F2C(v394, v68 + 5976);
      sub_100C45F2C(v394, v68 + 5576);
      sub_100C45F2C(v394, v68 + 5176);
      sub_100017D5C(v216, v217);
      v219 = Logger.logObject.getter();
      v220 = static os_log_type_t.default.getter();
      sub_100C45F88(v394);
      v389 = v216;
      if (!os_log_type_enabled(v219, v220))
      {
        sub_100C45F88(v394);
        sub_100C45F88(v394);

LABEL_57:
        sub_100017D5C(v216, v217);
        v232 = Logger.logObject.getter();
        v233 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v232, v233))
        {
          sub_100016590(v216, v217);

LABEL_70:
          sub_100C45F2C(v218, v68 + 4776);
          v243 = Logger.logObject.getter();
          v244 = static os_log_type_t.default.getter();
          v386 = v217;
          if (!os_log_type_enabled(v243, v244))
          {
            sub_100C45F88(v218);

LABEL_83:
            v256 = *(*(v68 + 9216) + *(v68 + 9384));
            v257 = *v215;
            v258 = v215[1];

            sub_100017D5C(v257, v258);
            sub_1004A4714(v257, v258, v397);
            v378 = *(v68 + 9464);
            v371 = *(v68 + 9432);
            v370 = *(v68 + 1972);
            v366 = *(v68 + 9416);
            v362 = *(v68 + 9400);
            v360 = *(v68 + 9392);
            v259 = *(v68 + 9384);
            v260 = *(v68 + 9304);
            v364 = *(v68 + 9280);
            v261 = *(v68 + 9216);
            v262 = *(v256 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
            v263 = *(v256 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
            *(v256 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1) = v397[0];
            sub_100006654(v262, v263);

            v264 = v68;
            v266 = v390[8];
            v265 = v390[9];
            v267 = (*(v261 + v259) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
            v268 = *v267;
            v269 = v267[1];
            *v267 = v266;
            v267[1] = v265;

            sub_100017D5C(v266, v265);
            sub_100006654(v268, v269);

            v270 = *(v261 + v259);

            v271 = Data.trimmed.getter();
            v272 = (v270 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
            v273 = *(v270 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
            v274 = *(v270 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
            *v272 = v271;
            v272[1] = v275;
            sub_100006654(v273, v274);

            v276 = v390[10];
            v277 = v390[11];
            v278 = (*(v261 + v259) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
            v279 = *v278;
            v280 = v278[1];
            *v278 = v276;
            v278[1] = v277;

            sub_100017D5C(v276, v277);
            sub_100006654(v279, v280);

            v281 = v390[16];
            v282 = v390[17];
            v283 = (*(v261 + v259) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2);
            v284 = *v283;
            v285 = v283[1];
            *v283 = v281;
            v283[1] = v282;

            sub_100017D5C(v281, v282);
            sub_100006654(v284, v285);

            v286 = (*(v261 + v259) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
            v287 = *v286;
            v288 = v286[1];
            *v286 = v382;
            v286[1] = v380;

            sub_100017D5C(v382, v380);
            sub_100006654(v287, v288);

            v289 = v390[12];
            v290 = v390[13];
            v291 = (*(v261 + v259) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
            v292 = *v291;
            v293 = v291[1];
            *v291 = v289;
            v291[1] = v290;

            sub_100017D5C(v289, v290);
            sub_100006654(v292, v293);

            v294 = *(v261 + v259);
            *(v294 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId) = 1;
            *(v294 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons) = 1;
            v295 = (v294 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
            v296 = *(v294 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
            v297 = *(v294 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8);
            *v295 = v389;
            v295[1] = v386;
            sub_100017D5C(v389, v386);

            sub_100006654(v296, v297);

            v298 = v390[18];
            v299 = v390[19];
            v300 = (*(v261 + v259) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey);
            v301 = *v300;
            v302 = v300[1];
            *v300 = v298;
            v300[1] = v299;

            sub_100017D5C(v298, v299);
            sub_100006654(v301, v302);

            v362(v260, enum case for PairingExecutorState.InitiatePairing.generateCollaborativeKeyStart(_:), v360);
            v366(v260, 0, 1, v360);
            v371(v260, v370, v364);
            PairingExecutor.setState(_:)();
            v378(v260, v364);
            v303 = (*(v261 + v259) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
            v304 = *v303;
            v305 = v303[1];
            if (v305 >> 60 == 15)
            {
              v306 = 0;
            }

            else
            {
              v306 = *v303;
            }

            if (v305 >> 60 == 15)
            {
              v307 = 0xF000000000000000;
            }

            else
            {
              v307 = v303[1];
            }

            sub_10002E98C(v304, v305);
            v308 = sub_100C3A328((v264 + 8984), v306, v307);
            v383 = v310;
            v391 = v308;
            v376 = *(v264 + 9464);
            v369 = *(v264 + 9432);
            v367 = *(v264 + 1972);
            v311 = *(v264 + 9416);
            v312 = *(v264 + 9400);
            v313 = *(v264 + 9392);
            v373 = *(v264 + 9384);
            v314 = *(v264 + 9304);
            v315 = *(v264 + 9280);
            v316 = *(v264 + 9216);
            sub_100006654(v304, v305);
            sub_10000A748((v264 + 8984), v264 + 9024);
            v312(v314, enum case for PairingExecutorState.InitiatePairing.generateCollaborativeKeyFinish(_:), v313);
            v311(v314, 0, 1, v313);
            v369(v314, v367, v315);
            PairingExecutor.setState(_:)();
            v376(v314, v315);
            v317 = *(v316 + v373);
            sub_10001F280(v264 + 9024, v264 + 8904);
            v318 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
            swift_beginAccess();

            sub_10002311C(v264 + 8904, v317 + v318, &qword_101697378, &unk_101391940);
            swift_endAccess();

            v319 = Logger.logObject.getter();
            v320 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v319, v320))
            {
              v322 = swift_slowAlloc();
              *v322 = 0;
              _os_log_impl(&_mh_execute_header, v319, v320, "Generated collaborative share", v322, 2u);
              v264 = v395;
            }

            v323 = v264;
            v324 = *(v264 + 9216);

            v325 = sub_10090B55C(_swiftEmptyArrayStorage);
            sub_100F518CC(v391, v383, 0, 0xF000000000000000, v325, (v264 + 368));

            v326 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingCheckData;
            memcpy((v264 + 720), (v324 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingCheckData), 0x160uLL);
            memcpy((v324 + v326), (v264 + 368), 0x160uLL);
            sub_10000B3A8(v264 + 720, &qword_1016993B0, &unk_1013E1330);

            v327 = Logger.logObject.getter();
            v328 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v327, v328))
            {
              v329 = swift_slowAlloc();
              v330 = swift_slowAlloc();
              *&v397[0] = v330;
              *v329 = 136315138;
              memcpy((v264 + 1072), (v324 + v326), 0x160uLL);
              memcpy((v264 + 1424), (v324 + v326), 0x160uLL);
              sub_1000D2A70(v264 + 1072, v264 + 16, &qword_1016993B0, &unk_1013E1330);
              sub_1000BC4D4(&qword_1016993B0, &unk_1013E1330);
              v331 = String.init<A>(describing:)();
              v333 = sub_1000136BC(v331, v332, v397);

              *(v329 + 4) = v333;
              _os_log_impl(&_mh_execute_header, v327, v328, "Created pairing check data %s", v329, 0xCu);
              sub_100007BAC(v330);
            }

            v334 = *(v264 + 9384);
            v335 = *(v264 + 9216);
            v336 = *(v323 + 9208);
            v337 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_crypto;

            v396 = *(v323 + 9360);
            *(v335 + v337) = v338;

            *(v335 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_service) = v396;
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            sub_10001F280(v336, v323 + 8864);
            v339 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_peripheral;
            swift_beginAccess();
            sub_10002311C(v323 + 8864, v335 + v339, &qword_1016A12E8, &qword_1013A51D8);
            swift_endAccess();
            static String.Encoding.utf8.getter();
            v340 = String.init(data:encoding:)();
            v342 = *(v335 + v334);
            v343 = *(v342 + 96);
            v344 = 0xE000000000000000;
            if (v343)
            {
              v345 = *(v342 + 88);
              v346 = v343;
            }

            else
            {
              v345 = 0;
              v346 = 0xE000000000000000;
            }

            v356 = *(v323 + 9664);
            v355 = *(v323 + 9656);
            v358 = *(v323 + 9576);
            v357 = *(v323 + 9568);
            v361 = *(v323 + 9520);
            v359 = *(v323 + 9512);
            v365 = *(v323 + 9504);
            v363 = *(v323 + 9496);
            v372 = *(v323 + 9488);
            v368 = *(v323 + 9480);
            v375 = *(v323 + 9464);
            v347 = *(v323 + 9432);
            v348 = *(v323 + 1972);
            v349 = *(v323 + 9416);
            v350 = *(v323 + 9400);
            v351 = *(v323 + 9392);
            v374 = *(v323 + 9336);
            if (v341)
            {
              v344 = v341;
              v352 = v340;
            }

            else
            {
              v352 = 0;
            }

            v353 = *(v323 + 9296);
            v354 = *(v323 + 9280);
            *v353 = v352;
            v353[1] = v344;
            v353[2] = v345;
            v353[3] = v346;
            v350(v353, enum case for PairingExecutorState.InitiatePairing.result(_:), v351);
            v349(v353, 0, 1, v351);
            v347(v353, v348, v354);

            PairingExecutor.setState(_:)();
            sub_100016590(v391, v383);
            sub_100016590(v355, v356);
            sub_100016590(v357, v358);
            swift_unknownObjectRelease();
            sub_100006654(v359, v361);
            swift_unknownObjectRelease();

            sub_100016590(v389, v386);
            sub_100C45F88(v394);
            sub_100C45F88(v394);
            sub_1001DAB9C(v323 + 8624);
            sub_1001DAB9C(v323 + 8624);

            sub_100006654(v363, v365);
            sub_100006654(v368, v372);
            v375(v353, v354);
            sub_100007BAC((v323 + 9024));
            sub_100C46118(v374, type metadata accessor for AccessoryProductInfo);

            v309 = *(v323 + 8);
            goto LABEL_91;
          }

          v245 = swift_slowAlloc();
          result = swift_slowAlloc();
          v246 = result;
          *&v397[0] = result;
          *v245 = 134218242;
          v247 = v215[18];
          v248 = v215[19];
          v249 = v248 >> 62;
          if ((v248 >> 62) > 1)
          {
            if (v249 != 2)
            {
              v250 = 0;
              goto LABEL_82;
            }

            v252 = *(v247 + 16);
            v251 = *(v247 + 24);
            v202 = __OFSUB__(v251, v252);
            v250 = v251 - v252;
            if (!v202)
            {
              goto LABEL_82;
            }

            __break(1u);
          }

          else if (!v249)
          {
            v250 = BYTE6(v248);
LABEL_82:
            *(v245 + 4) = v250;
            sub_100C45F88(v218);
            *(v245 + 12) = 2080;
            v253 = Data.hexString.getter();
            v255 = sub_1000136BC(v253, v254, v397);

            *(v245 + 14) = v255;
            _os_log_impl(&_mh_execute_header, v243, v244, "refKey %ld: %s", v245, 0x16u);
            sub_100007BAC(v246);

            v68 = v395;
            goto LABEL_83;
          }

          LODWORD(v250) = HIDWORD(v247) - v247;
          if (!__OFSUB__(HIDWORD(v247), v247))
          {
            v250 = v250;
            goto LABEL_82;
          }

LABEL_109:
          __break(1u);
          return result;
        }

        v234 = swift_slowAlloc();
        result = swift_slowAlloc();
        v235 = result;
        *&v397[0] = result;
        *v234 = 134218242;
        v236 = v217 >> 62;
        if ((v217 >> 62) > 1)
        {
          if (v236 != 2)
          {
            v237 = 0;
            goto LABEL_69;
          }

          v239 = *(v216 + 16);
          v238 = *(v216 + 24);
          v202 = __OFSUB__(v238, v239);
          v237 = v238 - v239;
          if (!v202)
          {
            goto LABEL_69;
          }

          __break(1u);
        }

        else if (!v236)
        {
          v237 = BYTE6(v217);
LABEL_69:
          *(v234 + 4) = v237;
          sub_100016590(v216, v217);
          *(v234 + 12) = 2080;
          v240 = Data.hexString.getter();
          v242 = sub_1000136BC(v240, v241, v397);

          *(v234 + 14) = v242;
          _os_log_impl(&_mh_execute_header, v232, v233, "sikPub %ld: %s", v234, 0x16u);
          sub_100007BAC(v235);

          v68 = v395;
          goto LABEL_70;
        }

        LODWORD(v237) = HIDWORD(v216) - v216;
        if (!__OFSUB__(HIDWORD(v216), v216))
        {
          v237 = v237;
          goto LABEL_69;
        }

LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v221 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      *&v397[0] = v222;
      *v221 = 134218242;
      v223 = v390[16];
      v224 = v390[17];
      v225 = v224 >> 62;
      if ((v224 >> 62) <= 1)
      {
        if (!v225)
        {
          sub_100C45F88(v394);
          v226 = BYTE6(v224);
LABEL_56:
          *(v221 + 4) = v226;
          sub_100C45F88(v218);
          *(v221 + 12) = 2080;
          v229 = Data.hexString.getter();
          v231 = sub_1000136BC(v229, v230, v397);

          *(v221 + 14) = v231;
          _os_log_impl(&_mh_execute_header, v219, v220, "BAA signature (S2) count %ld: %s", v221, 0x16u);
          sub_100007BAC(v222);

          v68 = v395;
          v216 = v389;
          goto LABEL_57;
        }

        result = sub_100C45F88(v394);
        LODWORD(v226) = HIDWORD(v223) - v223;
        if (!__OFSUB__(HIDWORD(v223), v223))
        {
          v226 = v226;
          goto LABEL_54;
        }

LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (v225 != 2)
      {
        sub_100C45F88(v394);
        v226 = 0;
        goto LABEL_56;
      }

      v227 = *(v223 + 16);
      v228 = *(v223 + 24);
      result = sub_100C45F88(v394);
      v226 = v228 - v227;
      if (!__OFSUB__(v228, v227))
      {
        v218 = v394;
LABEL_54:
        v215 = v390;
        goto LABEL_56;
      }

LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v196 = *(v60 + 112);
    v197 = *(v60 + 120);
    v198 = v197 >> 62;
    if ((v197 >> 62) > 1)
    {
      if (v198 != 2)
      {
        v196 = 0;
        goto LABEL_37;
      }

      v201 = v196 + 16;
      v199 = *(v196 + 16);
      v200 = *(v201 + 8);
      v202 = __OFSUB__(v200, v199);
      v196 = v200 - v199;
      if (!v202)
      {
        goto LABEL_37;
      }

      __break(1u);
    }

    else if (!v198)
    {
      v196 = BYTE6(v197);
LABEL_37:
      *(result + 4) = v196;
      v203 = result;
      sub_100C45F88(v31);
      _os_log_impl(&_mh_execute_header, v193, v194, "attestation (S1) count: %ld", v203, 0xCu);

      v68 = v395;
      goto LABEL_38;
    }

    v202 = __OFSUB__(HIDWORD(v196), v196);
    LODWORD(v196) = HIDWORD(v196) - v196;
    if (v202)
    {
      __break(1u);
      goto LABEL_106;
    }

    v196 = v196;
    goto LABEL_37;
  }

  v22 = *(v0 + 9664);
  v23 = *(v0 + 9656);
  v24 = *(v0 + 9576);
  v25 = *(v0 + 9568);
  v384 = *(v0 + 9520);
  v26 = *(v0 + 9512);
  v27 = *(v0 + 9504);
  v28 = *(v0 + 9496);
  v29 = *(v0 + 9488);
  v30 = *(v0 + 9480);
  v393 = *(v395 + 9336);
  sub_1001DAB9C(v395 + 8624);
  sub_100006654(v30, v29);
  sub_100006654(v28, v27);

  sub_1001DAB9C(v395 + 8624);
  sub_100016590(v23, v22);
  v0 = v395;
  sub_100016590(v25, v24);
  sub_100006654(v26, v384);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100C46118(v393, type metadata accessor for AccessoryProductInfo);
LABEL_90:

  v309 = *(v0 + 8);
LABEL_91:

  return v309();
}

uint64_t sub_100C39CE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C39DA4()
{
  v1 = v0[1190];
  v2 = v0[1189];
  v3 = v0[1188];
  v4 = v0[1187];
  v5 = v0[1186];
  v6 = v0[1185];
  v7 = v0[1167];
  swift_unknownObjectRelease();
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);

  sub_1001DAB9C((v0 + 1078));
  sub_100006654(v2, v1);
  sub_100C46118(v7, type metadata accessor for AccessoryProductInfo);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C39EEC()
{
  v1 = v0[1196];
  v2 = v0[1190];
  v3 = v0[1189];
  v4 = v0[1188];
  v5 = v0[1187];
  v6 = v0[1186];
  v7 = v0[1185];
  v10 = v0[1197];
  v11 = v0[1167];
  swift_unknownObjectRelease();
  sub_100006654(v7, v6);
  sub_100006654(v5, v4);

  sub_1001DAB9C((v0 + 1078));
  sub_100016590(v1, v10);
  sub_100006654(v3, v2);
  swift_unknownObjectRelease();
  sub_100C46118(v11, type metadata accessor for AccessoryProductInfo);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C3A058()
{
  v1 = v0[1197];
  v2 = v0[1196];
  v3 = v0[1190];
  v4 = v0[1189];
  v5 = v0[1188];
  v6 = v0[1187];
  v9 = v0[1167];
  sub_100006654(v0[1185], v0[1186]);
  sub_100006654(v6, v5);

  sub_1001DAB9C((v0 + 1078));
  sub_100016590(v2, v1);
  sub_100006654(v4, v3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100C46118(v9, type metadata accessor for AccessoryProductInfo);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C3A1C0()
{
  v1 = v0[1197];
  v2 = v0[1196];
  v3 = v0[1190];
  v4 = v0[1189];
  v5 = v0[1188];
  v6 = v0[1187];
  v9 = v0[1167];
  sub_100006654(v0[1185], v0[1186]);
  sub_100006654(v6, v5);

  sub_1001DAB9C((v0 + 1078));
  sub_100016590(v2, v1);
  sub_100006654(v4, v3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100C46118(v9, type metadata accessor for AccessoryProductInfo);

  v7 = v0[1];

  return v7();
}

uint64_t *sub_100C3A328(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for HashAlgorithm();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 60 == 15)
  {
    sub_100C45B4C();
    swift_allocError();
    *v12 = 15;
    swift_willThrow();
  }

  else
  {
    v26 = v9;
    sub_100017D5C(a2, a3);
    v13 = sub_100A743A8(a2, a3);
    if (v3)
    {

      sub_100C45B4C();
      swift_allocError();
      *v15 = 12;
      swift_willThrow();
      sub_100006654(a2, a3);
    }

    else
    {
      v16 = v13;
      v17 = v14;
      sub_100017D5C(v13, v14);
      v24 = v17;
      sub_100496024(v16, v17, v25);
      v19 = v25[0];
      v22 = v25[1];
      v23 = v25[0];
      a1[3] = &type metadata for CollaborativeKeyGen.v2.C2;
      a1[4] = sub_1001023F4();
      *a1 = v19;
      v20 = v22;
      a1[1] = v22;
      (*(v8 + 104))(v11, enum case for HashAlgorithm.sha256(_:), v26);
      sub_100017D5C(v23, v20);
      a1 = Data.hash(algorithm:)();
      sub_100006654(a2, a3);
      sub_100016590(v23, v22);
      sub_100016590(v16, v24);
      (*(v8 + 8))(v11, v26);
    }
  }

  return a1;
}

uint64_t sub_100C3A5DC()
{
  v1[1033] = v0;
  v2 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v1[1034] = v2;
  v1[1035] = *(v2 - 8);
  v1[1036] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v1[1037] = v3;
  v1[1038] = *(v3 - 8);
  v1[1039] = swift_task_alloc();
  v4 = type metadata accessor for String.Encoding();
  v1[1040] = v4;
  v1[1041] = *(v4 - 8);
  v1[1042] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v1[1043] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v1[1044] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B0728, &qword_1013CDFE0);
  v1[1045] = swift_task_alloc();
  v5 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  v1[1046] = v5;
  v1[1047] = *(v5 - 8);
  v1[1048] = swift_task_alloc();
  v6 = type metadata accessor for PairingExecutorState();
  v1[1049] = v6;
  v1[1050] = *(v6 - 8);
  v1[1051] = swift_task_alloc();

  return _swift_task_switch(sub_100C3A8F8, v0, 0);
}

uint64_t sub_100C3A8F8()
{
  v1 = *(v0 + 8264);
  v2 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingCheckData;
  memcpy((v0 + 368), (v1 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingCheckData), 0x160uLL);
  memcpy((v0 + 1072), (v1 + v2), 0x160uLL);
  if (sub_100101D88(v0 + 1072) == 1)
  {
    sub_100C45B4C();
    swift_allocError();
    *v3 = 17;
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 8408);
    v7 = *(v0 + 8400);
    v8 = *(v0 + 8392);
    v9 = *(v0 + 8264);
    memcpy((v0 + 720), (v0 + 1072), 0x160uLL);
    v10 = enum case for PairingExecutorState.PairingLockCheck.requestStart(_:);
    v11 = type metadata accessor for PairingExecutorState.PairingLockCheck();
    *(v0 + 8416) = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 104);
    *(v0 + 8424) = v13;
    *(v0 + 8432) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v13(v6, v10, v11);
    v14 = *(v12 + 56);
    *(v0 + 8440) = v14;
    *(v0 + 8448) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v14(v6, 0, 1, v11);
    *(v0 + 3380) = enum case for PairingExecutorState.pairingLockCheck(_:);
    v15 = *(v7 + 104);
    *(v0 + 8456) = v15;
    *(v0 + 8464) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v15(v6);
    memcpy((v0 + 1776), (v0 + 368), 0x160uLL);
    sub_100165278(v0 + 1776, v0 + 2128);
    *(v0 + 8472) = type metadata accessor for ProximityPairingExecutor(0);
    *(v0 + 8480) = sub_100C4600C(&qword_1016B75C0, type metadata accessor for ProximityPairingExecutor, &unk_1013E1218);
    PairingExecutor.setState(_:)();
    v16 = *(v7 + 8);
    *(v0 + 8488) = v16;
    *(v0 + 8496) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v6, v8);
    v17 = *(v9 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_validator + 8);
    ObjectType = swift_getObjectType();
    *(v0 + 8112) = &type metadata for AirPodsLEPairingCheckData;
    *(v0 + 8120) = sub_1001641BC();
    v19 = swift_allocObject();
    *(v0 + 8088) = v19;
    memcpy((v19 + 16), (v0 + 720), 0x160uLL);
    memcpy((v0 + 1424), (v0 + 368), 0x160uLL);
    sub_100165278(v0 + 1424, v0 + 16);
    v20 = swift_task_alloc();
    *(v0 + 8504) = v20;
    *v20 = v0;
    v20[1] = sub_100C3AD20;

    return dispatch thunk of PairingValidator.validateRequest(_:)(v0 + 8048, v0 + 8088, ObjectType, v17);
  }
}

uint64_t sub_100C3AD20()
{
  v2 = *v1;
  *(*v1 + 8512) = v0;

  if (v0)
  {
    v3 = *(v2 + 8264);
    v4 = sub_100C3EB6C;
  }

  else
  {
    v5 = *(v2 + 8264);
    sub_100007BAC((v2 + 8088));
    v4 = sub_100C3AE98;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C3AE98()
{
  v221 = v0;
  v1 = v0;
  v2 = *(v0 + 8376);
  sub_1000BC4D4(&qword_1016B0730, &unk_1013DE2E0);
  v3 = swift_dynamicCast();
  v4 = *(v2 + 56);
  if (!v3)
  {
    v42 = *(v0 + 8360);
    v4(v42, 1, 1, *(v0 + 8368));
    sub_10000B3A8(v42, &qword_1016B0728, &qword_1013CDFE0);
    sub_100C45B4C();
    swift_allocError();
    *v43 = 2;
    swift_willThrow();
    sub_10000B3A8(v0 + 368, &qword_1016993B0, &unk_1013E1330);
LABEL_13:

    v50 = *(v1 + 8);

    return v50();
  }

  v215 = *(v0 + 8488);
  v205 = *(v0 + 8456);
  v201 = *(v0 + 3380);
  v198 = *(v0 + 8440);
  v5 = *(v0 + 8424);
  v6 = *(v0 + 8416);
  v218 = v0;
  v7 = *(v0 + 8408);
  v8 = *(v0 + 8392);
  v9 = *(v0 + 8384);
  v10 = *(v0 + 8368);
  v11 = *(v0 + 8360);
  v214 = *(v0 + 8352);
  v12 = *(v0 + 8264);
  v4(v11, 0, 1, v10);
  sub_10002AD14(v11, v9, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v5(v7, enum case for PairingExecutorState.PairingLockCheck.requestFinish(_:), v6);
  v198(v7, 0, 1, v6);
  v205(v7, v201, v8);
  PairingExecutor.setState(_:)();
  v215(v7, v8);
  v216 = *(v9 + 72);
  v217 = *(v9 + 64);
  v13 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingInfo;
  *(v218 + 8520) = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingInfo;
  v14 = (v9 + *(v10 + 52));
  v15 = *v14;
  v16 = v14[1];
  v17 = (*(v12 + v13) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken);
  v18 = *v17;
  v19 = v17[1];
  *v17 = v15;
  v17[1] = v16;

  sub_10002E98C(v15, v16);
  v20 = v19;
  v1 = v218;
  sub_100006654(v18, v20);

  v21 = *(v12 + v13);
  v22 = *(v10 + 36);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v214, v9 + v22, v23);
  (*(v24 + 56))(v214, 0, 1, v23);
  v25 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  swift_beginAccess();

  sub_10002311C(v214, v21 + v25, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();

  v26 = *(v12 + v13);
  v27 = *(v26 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
  *(v26 + 120) = *(v26 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
  *(v26 + 128) = v27;

  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  *(v218 + 8528) = sub_1000076D4(v28, qword_1016B8F00);
  sub_100017D5C(v217, v216);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  sub_100016590(v217, v216);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v219 = v32;
    *v31 = 136315138;
    v33 = Data.hexString.getter();
    v35 = sub_1000136BC(v33, v34, &v219);

    *(v31 + 4) = v35;
    v1 = v218;
    _os_log_impl(&_mh_execute_header, v29, v30, "S3: %s", v31, 0xCu);
    sub_100007BAC(v32);
  }

  v36 = *(v1 + 8344);
  v37 = *(v12 + v13);
  v38 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v37 + v38, v36, &qword_101697268, &qword_101394FE0);
  v39 = type metadata accessor for AccessoryProductInfo(0);
  v40 = (*(*(v39 - 8) + 48))(v36, 1, v39);
  v41 = *(v1 + 8344);
  if (v40)
  {
    sub_10000B3A8(v41, &qword_101697268, &qword_101394FE0);
LABEL_10:
    v48 = *(v1 + 8384);
    sub_100C45B4C();
    swift_allocError();
    *v49 = 10;
    swift_willThrow();
LABEL_11:
    sub_10000B3A8(v1 + 368, &qword_1016993B0, &unk_1013E1330);
LABEL_12:
    sub_100C46118(v48, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    goto LABEL_13;
  }

  v210 = v13;
  v212 = v12;
  v44 = (v41 + *(v39 + 100));
  v45 = *v44;
  *(v1 + 8536) = *v44;
  v46 = v44[1];
  *(v1 + 8544) = v46;
  v47 = v41;
  sub_10002E98C(v45, v46);
  sub_10000B3A8(v47, &qword_101697268, &qword_101394FE0);
  if (v46 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_100017D5C(v45, v46);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  sub_100006654(v45, v46);
  v208 = v46;
  v206 = v45;
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v219 = v55;
    *v54 = 136315138;
    v56 = Data.hexString.getter();
    v58 = sub_1000136BC(v56, v57, &v219);
    v1 = v218;

    *(v54 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v52, v53, "publicKeyData: %s", v54, 0xCu);
    sub_100007BAC(v55);
  }

  v202 = *(v1 + 8488);
  v59 = *(v1 + 8456);
  v60 = *(v1 + 3380);
  v61 = *(v1 + 8440);
  v62 = *(v1 + 8424);
  v63 = *(v1 + 8416);
  v64 = *(v1 + 8408);
  v65 = *(v1 + 8392);
  v62(v64, enum case for PairingExecutorState.PairingLockCheck.signatureVerificationStart(_:), v63);
  v61(v64, 0, 1, v63);
  v59(v64, v60, v65);
  PairingExecutor.setState(_:)();
  v202(v64, v65);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v219 = v69;
    *v68 = 141558275;
    *(v68 + 4) = 1752392040;
    *(v68 + 12) = 2081;
    *(v68 + 14) = sub_1000136BC(0xD000000000000011, 0x800000010134C6F0, &v219);
    _os_log_impl(&_mh_execute_header, v66, v67, "authSuffix: %{private,mask.hash}s", v68, 0x16u);
    sub_100007BAC(v69);
  }

  v70 = *(v218 + 8512);
  v71 = *(v218 + 8384);
  memcpy((v218 + 2832), (v218 + 368), 0x160uLL);
  sub_100165278(v218 + 2832, v218 + 2480);
  v72 = sub_100939A24((v218 + 720), v71);
  v74 = v73;
  sub_10000B3A8(v218 + 368, &qword_1016993B0, &unk_1013E1330);
  v75 = String.utf8Data.getter();
  v77 = v76;
  v219 = v72;
  v220 = v74;
  *(v218 + 8032) = &type metadata for Data;
  *(v218 + 8040) = &protocol witness table for Data;
  *(v218 + 8008) = v75;
  *(v218 + 8016) = v76;
  v78 = sub_1000035D0((v218 + 8008), &type metadata for Data);
  v79 = *v78;
  v80 = v78[1];
  sub_100017D5C(v72, v74);
  sub_100017D5C(v75, v77);
  sub_100017DB0(v79, v80, &v219);
  sub_100016590(v75, v77);
  sub_100016590(v72, v74);
  sub_100007BAC((v218 + 8008));
  v81 = v219;
  v82 = v220;
  *(v218 + 8552) = v219;
  *(v218 + 8560) = v82;
  sub_100017D5C(v81, v82);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  sub_100016590(v81, v82);
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v219 = v86;
    *v85 = 136315138;
    v87 = Data.hexString.getter();
    v89 = v82;
    v90 = sub_1000136BC(v87, v88, &v219);

    *(v85 + 4) = v90;
    v82 = v89;
    _os_log_impl(&_mh_execute_header, v83, v84, "dataForSignatureVerification: %s", v85, 0xCu);
    sub_100007BAC(v86);
  }

  sub_100A74FAC(v206, v208, v81, v82, v217, v216, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
  v1 = v218;
  if (v70)
  {
    v48 = *(v218 + 8384);
    sub_100016590(v81, v82);
    sub_100006654(v206, v208);
    goto LABEL_11;
  }

  v194 = v82;
  v196 = v81;
  v203 = *(v218 + 8488);
  v91 = *(v218 + 8456);
  v92 = *(v218 + 3380);
  v93 = *(v218 + 8440);
  v94 = *(v218 + 8416);
  v95 = *(v218 + 8408);
  v96 = *(v218 + 8392);
  (*(v218 + 8424))(v95, enum case for PairingExecutorState.PairingLockCheck.signatureVerificationFinish(_:), v94);
  v93(v95, 0, 1, v94);
  v91(v95, v92, v96);
  PairingExecutor.setState(_:)();
  v203(v95, v96);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&_mh_execute_header, v97, v98, "Signature S3 verified!", v99, 2u);
  }

  v100 = *(v218 + 8384);
  v101 = *(v218 + 8368);

  v102 = *(v101 + 48);
  v103 = (v100 + *(v101 + 44));
  v104 = *v103;
  v105 = v103[1];
  v107 = *(v100 + v102);
  v106 = *(v100 + v102 + 8);
  *(v218 + 8248) = *v103;
  *(v218 + 8256) = v105;
  sub_100017D5C(v104, v105);
  Data.append(_:)();
  sub_100017D5C(v104, v105);
  sub_100017D5C(v107, v106);
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v108, v109))
  {
    sub_100016590(v107, v106);
    sub_100016590(v104, v105);
    v113 = v212;
    goto LABEL_49;
  }

  v110 = swift_slowAlloc();
  v111 = v110;
  *v110 = 134218240;
  v112 = v105 >> 62;
  v113 = v212;
  if ((v105 >> 62) <= 1)
  {
    if (!v112)
    {
      v114 = BYTE6(v105);
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v112 != 2)
  {
    v114 = 0;
    goto LABEL_38;
  }

  v116 = *(v104 + 16);
  v115 = *(v104 + 24);
  v117 = __OFSUB__(v115, v116);
  v114 = v115 - v116;
  if (v117)
  {
    __break(1u);
LABEL_35:
    LODWORD(v114) = HIDWORD(v104) - v104;
    if (__OFSUB__(HIDWORD(v104), v104))
    {
      __break(1u);
      goto LABEL_66;
    }

    v114 = v114;
  }

LABEL_38:
  *(v110 + 4) = v114;
  sub_100016590(v104, v105);
  *(v111 + 12) = 2048;
  v118 = v106 >> 62;
  if ((v106 >> 62) > 1)
  {
    if (v118 != 2)
    {
      v119 = 0;
      goto LABEL_48;
    }

    v121 = *(v107 + 16);
    v120 = *(v107 + 24);
    v117 = __OFSUB__(v120, v121);
    v119 = v120 - v121;
    if (!v117)
    {
      goto LABEL_48;
    }

    __break(1u);
LABEL_45:
    LODWORD(v119) = HIDWORD(v107) - v107;
    if (!__OFSUB__(HIDWORD(v107), v107))
    {
      v119 = v119;
      goto LABEL_48;
    }

LABEL_66:
    __break(1u);
  }

  if (v118)
  {
    goto LABEL_45;
  }

  v119 = BYTE6(v106);
LABEL_48:
  *(v111 + 14) = v119;
  sub_100016590(v107, v106);
  _os_log_impl(&_mh_execute_header, v108, v109, "baaLeafCert count = %ld, baaIntermediateCert count = %ld", v111, 0x16u);

LABEL_49:
  v204 = *(v218 + 8264);

  v122 = (*(v113 + v210) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
  v123 = v113;
  v124 = *v122;
  v125 = v122[1];
  *v122 = v104;
  v122[1] = v105;
  v199 = v105;
  v200 = v104;
  sub_100017D5C(v104, v105);

  sub_100006654(v124, v125);

  v126 = (*(v123 + v210) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1);
  v127 = *v126;
  v128 = v126[1];
  *v126 = v107;
  v126[1] = v106;
  v192 = v106;
  v193 = v107;
  sub_100017D5C(v107, v106);

  sub_100006654(v127, v128);

  v129 = *(v218 + 8248);
  v130 = *(v218 + 8256);
  v131 = (*(v123 + v210) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts);
  v132 = *v131;
  v133 = v131[1];
  *v131 = v129;
  v131[1] = v130;

  sub_100017D5C(v129, v130);
  sub_100006654(v132, v133);

  v134 = v204 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_service;
  v135 = *(v204 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_service);
  *(v218 + 8568) = v135;
  v136 = *(v218 + 8384);
  if (!v135)
  {
    sub_100C45B4C();
    swift_allocError();
    *v180 = 3;
    swift_willThrow();
    sub_100016590(v196, v194);
    sub_100006654(v206, v208);
    sub_10000B3A8(v218 + 368, &qword_1016993B0, &unk_1013E1330);
    sub_100016590(*(v218 + 8248), *(v218 + 8256));
    sub_100C46118(v136, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v1 = v218;
    goto LABEL_13;
  }

  v137 = *(v218 + 8368);
  v138 = *(v134 + 8);
  *(v218 + 8576) = v138;
  if (!*(v136 + *(v137 + 40) + 8))
  {
    swift_unknownObjectRetain();
    v1 = v218;
    goto LABEL_60;
  }

  v191 = v138;
  v139 = *(v218 + 8336);
  v140 = *(v218 + 8328);
  v141 = *(v218 + 8320);
  swift_unknownObjectRetain();
  static String.Encoding.utf8.getter();
  v142 = String.data(using:allowLossyConversion:)();
  v144 = v143;
  *(v218 + 8584) = v142;
  *(v218 + 8592) = v143;
  (*(v140 + 8))(v139, v141);
  v1 = v218;
  if (v144 >> 60 == 15)
  {
LABEL_60:
    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      *v183 = 0;
      _os_log_impl(&_mh_execute_header, v181, v182, "Unable to decode masked apple ID", v183, 2u);
    }

    v48 = *(v1 + 8384);

    sub_100C45B4C();
    swift_allocError();
    *v184 = 8;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_100016590(v196, v194);
    v185 = v206;
    v186 = v208;
    goto LABEL_63;
  }

  v190 = v142;
  v145 = *(v218 + 8384);
  v146 = *(v145 + 48);
  v147 = *(v145 + 56);
  v148 = *(v212 + v210);
  v149 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
  swift_beginAccess();
  sub_1000D2A70(v148 + v149, v218 + 7928, &qword_101697378, &unk_101391940);
  v150 = *(v218 + 7952);
  if (!v150)
  {
    v48 = *(v218 + 8384);
    sub_10000B3A8(v218 + 7928, &qword_101697378, &unk_101391940);
    sub_100C45B4C();
    swift_allocError();
    *v187 = 8;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_100006654(v190, v144);
    sub_100016590(v196, v194);
    v185 = v206;
    v186 = v208;
LABEL_63:
    sub_100006654(v185, v186);
    sub_10000B3A8(v1 + 368, &qword_1016993B0, &unk_1013E1330);
    sub_100016590(*(v1 + 8248), *(v1 + 8256));
    goto LABEL_12;
  }

  v207 = v147;
  v209 = (v218 + 6776);
  v211 = v144;
  v151 = *(v218 + 7960);
  v152 = sub_1000035D0((v218 + 7928), v150);
  v153 = *(v150 - 8);
  v154 = swift_task_alloc();
  (*(v153 + 16))(v154, v152, v150);
  sub_10000B3A8(v218 + 7928, &qword_101697378, &unk_101391940);
  v155 = (*(*(*(v151 + 8) + 8) + 40))(v150);
  v195 = v156;
  v197 = v155;
  *(v218 + 8600) = v155;
  *(v218 + 8608) = v156;
  (*(v153 + 8))(v154, v150);

  v219 = sub_100268BBC(8uLL);
  LODWORD(v220) = v157;
  BYTE6(v220) = v158;
  WORD2(v220) = v159;
  bzero(&v219, v158);
  v189 = v219;
  v160 = v220 | ((WORD2(v220) | (BYTE6(v220) << 16)) << 32);
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v161 = __DataStorage.init(length:)();
  v219 = 0x1800000000;
  v220 = v161;
  sub_1007765FC(&v219, 0);
  v188 = v219;
  v213 = v220;
  *(v218 + 8616) = v220;
  sub_100017D5C(v217, v216);
  v162 = Logger.logObject.getter();
  v163 = static os_log_type_t.default.getter();
  sub_100016590(v217, v216);
  v164 = v146;
  if (os_log_type_enabled(v162, v163))
  {
    v165 = swift_slowAlloc();
    v166 = v160;
    v167 = swift_slowAlloc();
    v219 = v167;
    *v165 = 136315138;
    v168 = Data.hexString.getter();
    v170 = sub_1000136BC(v168, v169, &v219);

    *(v165 + 4) = v170;
    _os_log_impl(&_mh_execute_header, v162, v163, "S3: %s", v165, 0xCu);
    sub_100007BAC(v167);
    v160 = v166;
  }

  sub_100017D5C(v217, v216);
  sub_100017D5C(v200, v199);
  sub_100017D5C(v193, v192);
  sub_100017D5C(v197, v195);
  sub_100017D5C(v164, v207);
  sub_10002E98C(v190, v211);

  sub_100BB1530(v197, v195, v164, v207, v190, v211, v217, v216, v209, v200, v199, v193, v192, v189, v160 & 0xFFFFFFFFFFFFFFLL, v188, v213 | 0x4000000000000000);
  v171 = *(v218 + 6920);
  *(v218 + 5112) = *(v218 + 6904);
  *(v218 + 5128) = v171;
  v172 = *(v218 + 6952);
  *(v218 + 5144) = *(v218 + 6936);
  *(v218 + 5160) = v172;
  v173 = *(v218 + 6856);
  *(v218 + 5048) = *(v218 + 6840);
  *(v218 + 5064) = v173;
  v174 = *(v218 + 6888);
  *(v218 + 5080) = *(v218 + 6872);
  *(v218 + 5096) = v174;
  v175 = *(v218 + 6792);
  *(v218 + 4984) = *v209;
  *(v218 + 5000) = v175;
  v176 = *(v218 + 6824);
  *(v218 + 5016) = *(v218 + 6808);
  *(v218 + 5032) = v176;
  sub_100C46054(v218 + 4984);
  ObjectType = swift_getObjectType();
  *(v218 + 8624) = ObjectType;
  sub_100C46068(v209, v218 + 7352);
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v178 = swift_task_alloc();
  *(v218 + 8632) = v178;
  *v178 = v218;
  v178[1] = sub_100C3C5AC;
  v179 = *(v218 + 8312);

  return dispatch thunk of ServiceProtocol.subscript.getter(v179, ObjectType, v191);
}

uint64_t sub_100C3C5AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[1080] = a1;
  v4[1081] = v1;

  v5 = v3[1039];
  v6 = v3[1038];
  v7 = v3[1037];
  v8 = v3[1033];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_100C3EC94;
  }

  else
  {
    v9 = sub_100C3C760;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100C3C760()
{
  v45 = v0;
  v1 = (v0 + 4984);
  v42 = *(v0 + 8488);
  v41 = *(v0 + 8456);
  v2 = *(v0 + 3380);
  v3 = *(v0 + 8440);
  v4 = *(v0 + 8416);
  v5 = *(v0 + 8408);
  v6 = *(v0 + 8392);
  (*(v0 + 8424))(v5, enum case for PairingExecutorState.PairingLockCheck.finalizeCommandStart(_:), v4);
  v3(v5, 0, 1, v4);
  v41(v5, v2, v6);
  PairingExecutor.setState(_:)();
  v42(v5, v6);
  sub_100C46068(v0 + 6776, v0 + 7160);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_100C460C4(v0 + 6776);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136315138;
    v11 = *(v0 + 5112);
    *(v0 + 3728) = *(v0 + 5128);
    v12 = *(v0 + 5160);
    *(v0 + 3744) = *(v0 + 5144);
    *(v0 + 3760) = v12;
    v13 = *(v0 + 5048);
    *(v0 + 3664) = *(v0 + 5064);
    v14 = *(v0 + 5096);
    *(v0 + 3680) = *(v0 + 5080);
    *(v0 + 3696) = v14;
    *(v0 + 3712) = v11;
    v15 = *v1;
    *(v0 + 3600) = *(v0 + 5000);
    v16 = *(v0 + 5032);
    *(v0 + 3616) = *(v0 + 5016);
    *(v0 + 3632) = v16;
    *(v0 + 3648) = v13;
    v44 = v10;
    *(v0 + 3776) = *(v0 + 5176);
    *(v0 + 3584) = v15;
    sub_100C46068(v0 + 6776, v0 + 6584);
    v17 = String.init<A>(describing:)();
    v19 = sub_1000136BC(v17, v18, &v44);

    *(v9 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending command: %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v20 = *(v0 + 8648);
  v21 = *(v0 + 5160);
  *(v0 + 5744) = *(v0 + 5144);
  *(v0 + 5760) = v21;
  *(v0 + 5776) = *(v0 + 5176);
  v22 = *(v0 + 5096);
  *(v0 + 5680) = *(v0 + 5080);
  *(v0 + 5696) = v22;
  v23 = *(v0 + 5128);
  *(v0 + 5712) = *(v0 + 5112);
  *(v0 + 5728) = v23;
  v24 = *(v0 + 5032);
  *(v0 + 5616) = *(v0 + 5016);
  *(v0 + 5632) = v24;
  v25 = *(v0 + 5064);
  *(v0 + 5648) = *(v0 + 5048);
  *(v0 + 5664) = v25;
  v26 = *(v0 + 5000);
  *(v0 + 5584) = *v1;
  *(v0 + 5600) = v26;
  sub_100C45E3C();
  *(v0 + 8656) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 8664) = v27;
  if (v20)
  {
    v28 = *(v0 + 8608);
    v29 = *(v0 + 8600);
    v30 = *(v0 + 8592);
    v31 = *(v0 + 8584);
    v32 = *(v0 + 8560);
    v33 = *(v0 + 8552);
    v34 = *(v0 + 8544);
    v35 = *(v0 + 8536);
    v43 = *(v0 + 8384);
    sub_100C460C4(v0 + 6776);
    sub_10000B3A8(v0 + 368, &qword_1016993B0, &unk_1013E1330);
    sub_100006654(v35, v34);
    sub_100016590(v33, v32);
    sub_100016590(v29, v28);
    sub_100006654(v31, v30);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100016590(*(v0 + 8248), *(v0 + 8256));
    sub_100C46118(v43, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    sub_100C460C4(v0 + 6776);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 8672) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 8680) = AssociatedConformanceWitness;
    v40 = swift_task_alloc();
    *(v0 + 8688) = v40;
    *v40 = v0;
    v40[1] = sub_100C3CCAC;

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_100C3CCAC(uint64_t a1)
{
  v4 = *v2;
  v4[1087] = v1;

  v5 = v4[1033];
  if (v1)
  {
    v6 = sub_100C3EE5C;
  }

  else
  {
    v4[1088] = a1;
    v6 = sub_100C3CE14;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C3CE14()
{
  v1 = v0;
  v2 = fragment(data:mtu:)();
  v0[1089] = v2;
  v3 = swift_task_alloc();
  v1[1090] = v3;
  *v3 = v1;
  v3[1] = sub_100C3CF08;
  v4 = v1[1085];
  v5 = v1[1084];
  v6 = v1[1036];

  return dispatch thunk of CharacteristicProtocol.write(data:)(v6, v2, v5, v4);
}

uint64_t sub_100C3CF08()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 8728) = v0;

  if (v0)
  {
    v4 = v2[1033];

    return _swift_task_switch(sub_100C3F040, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v2[1092] = v5;
    v6 = sub_10048E70C();
    *v5 = v3;
    v5[1] = sub_100C3D104;
    v7 = v2[1034];

    return AsyncSequence<>.reassemble()(v7, v6);
  }
}

uint64_t sub_100C3D104(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[1093] = a1;
  v5[1094] = a2;
  v5[1095] = v2;

  v6 = v4[1036];
  v7 = v4[1035];
  v8 = v4[1034];
  v9 = v4[1033];
  (*(v7 + 8))(v6, v8);
  if (v2)
  {
    v10 = sub_100C3F224;
  }

  else
  {
    v10 = sub_100C3D2BC;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100C3D2BC()
{
  v258 = v0;
  sub_100C46068(v0 + 6776, v0 + 6968);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  sub_100C460C4(v0 + 6776);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v256[0] = v4;
    *v3 = 136315138;
    v5 = *(v0 + 5160);
    *(v0 + 3944) = *(v0 + 5144);
    *(v0 + 3960) = v5;
    *(v0 + 3976) = *(v0 + 5176);
    v6 = *(v0 + 5096);
    *(v0 + 3880) = *(v0 + 5080);
    *(v0 + 3896) = v6;
    v7 = *(v0 + 5128);
    *(v0 + 3912) = *(v0 + 5112);
    *(v0 + 3928) = v7;
    v8 = *(v0 + 5032);
    *(v0 + 3816) = *(v0 + 5016);
    *(v0 + 3832) = v8;
    v9 = *(v0 + 5064);
    *(v0 + 3848) = *(v0 + 5048);
    *(v0 + 3864) = v9;
    v10 = *(v0 + 5000);
    *(v0 + 3784) = *(v0 + 4984);
    *(v0 + 3800) = v10;
    sub_100C46068(v0 + 6776, v0 + 7544);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, v256);

    *(v3 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Sent command: %s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  v251 = *(v0 + 8760);
  v234 = *(v0 + 8488);
  v14 = *(v0 + 8456);
  v15 = *(v0 + 3380);
  v16 = *(v0 + 8440);
  v17 = *(v0 + 8416);
  v18 = *(v0 + 8408);
  v19 = *(v0 + 8392);
  (*(v0 + 8424))(v18, enum case for PairingExecutorState.PairingLockCheck.finalizeCommandFinish(_:), v17);
  v16(v18, 0, 1, v17);
  v14(v18, v15, v19);
  PairingExecutor.setState(_:)();
  v234(v18, v19);
  sub_100C45ED8();
  BinaryDecoder.decode<A>(_:from:)();
  if (v251)
  {
    v225 = *(v0 + 8744);
    v230 = *(v0 + 8752);
    v243 = *(v0 + 8664);
    v20 = *(v0 + 8608);
    v21 = *(v0 + 8600);
    v22 = *(v0 + 8592);
    v23 = *(v0 + 8584);
    v235 = *(v0 + 8656);
    v24 = *(v0 + 8560);
    v25 = *(v0 + 8552);
    v26 = *(v0 + 8544);
    v27 = *(v0 + 8536);
    v252 = *(v0 + 8384);
    sub_10000B3A8(v0 + 368, &qword_1016993B0, &unk_1013E1330);
    sub_100006654(v27, v26);
    sub_100016590(v25, v24);
    sub_100016590(v21, v20);
    sub_100006654(v23, v22);

    sub_100C460C4(v0 + 6776);
    sub_100016590(v225, v230);
    sub_100016590(v235, v243);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100C460C4(v0 + 6776);
LABEL_17:
    sub_100016590(*(v0 + 8248), *(v0 + 8256));
    v100 = v252;
LABEL_18:
    sub_100C46118(v100, type metadata accessor for AirPodsLEPairingLockCheckResponse);

    v101 = *(v0 + 8);
    goto LABEL_19;
  }

  v28 = (v0 + 6184);
  v29 = (v0 + 3384);
  v30 = *(v0 + 3360);
  *(v0 + 6344) = *(v0 + 3344);
  *(v0 + 6360) = v30;
  *(v0 + 6376) = *(v0 + 3376);
  v31 = *(v0 + 3296);
  *(v0 + 6280) = *(v0 + 3280);
  *(v0 + 6296) = v31;
  v32 = *(v0 + 3328);
  *(v0 + 6312) = *(v0 + 3312);
  *(v0 + 6328) = v32;
  v33 = *(v0 + 3232);
  *(v0 + 6216) = *(v0 + 3216);
  *(v0 + 6232) = v33;
  v34 = *(v0 + 3264);
  *(v0 + 6248) = *(v0 + 3248);
  *(v0 + 6264) = v34;
  v35 = *(v0 + 3200);
  *(v0 + 6184) = *(v0 + 3184);
  *(v0 + 6200) = v35;
  sub_100C45F2C(v0 + 6184, v0 + 6384);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  sub_100C45F88(v0 + 6184);
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v256[0] = v39;
    *v38 = 136315138;
    v40 = *(v0 + 6360);
    *(v0 + 4344) = *(v0 + 6344);
    *(v0 + 4360) = v40;
    *(v0 + 4376) = *(v0 + 6376);
    v41 = *(v0 + 6296);
    *(v0 + 4280) = *(v0 + 6280);
    *(v0 + 4296) = v41;
    v42 = *(v0 + 6328);
    *(v0 + 4312) = *(v0 + 6312);
    *(v0 + 4328) = v42;
    v43 = *(v0 + 6232);
    *(v0 + 4216) = *(v0 + 6216);
    *(v0 + 4232) = v43;
    v44 = *(v0 + 6264);
    *(v0 + 4248) = *(v0 + 6248);
    *(v0 + 4264) = v44;
    v45 = *(v0 + 6200);
    *(v0 + 4184) = *v28;
    *(v0 + 4200) = v45;
    sub_100C45F2C(v0 + 6184, v0 + 3984);
    v46 = String.init<A>(describing:)();
    v48 = sub_1000136BC(v46, v47, v256);

    *(v38 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v36, v37, "Received response: %s", v38, 0xCu);
    sub_100007BAC(v39);
  }

  v49 = *(v0 + 6360);
  *(v0 + 3544) = *(v0 + 6344);
  *(v0 + 3560) = v49;
  *(v0 + 3576) = *(v0 + 6376);
  v50 = *(v0 + 6296);
  *(v0 + 3480) = *(v0 + 6280);
  *(v0 + 3496) = v50;
  v51 = *(v0 + 6328);
  *(v0 + 3512) = *(v0 + 6312);
  *(v0 + 3528) = v51;
  v52 = *(v0 + 6232);
  *(v0 + 3416) = *(v0 + 6216);
  *(v0 + 3432) = v52;
  v53 = *(v0 + 6264);
  *(v0 + 3448) = *(v0 + 6248);
  *(v0 + 3464) = v53;
  v54 = *(v0 + 6200);
  *v29 = *v28;
  *(v0 + 3400) = v54;
  if (sub_100C45FDC(v0 + 3384) != 4)
  {
    sub_100C45F2C(v0 + 6184, v0 + 5984);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    sub_100C45F88(v0 + 6184);
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v256[0] = v83;
      *v82 = 136446210;
      v84 = *(v0 + 6360);
      *(v0 + 5944) = *(v0 + 6344);
      *(v0 + 5960) = v84;
      *(v0 + 5976) = *(v0 + 6376);
      v85 = *(v0 + 6296);
      *(v0 + 5880) = *(v0 + 6280);
      *(v0 + 5896) = v85;
      v86 = *(v0 + 6328);
      *(v0 + 5912) = *(v0 + 6312);
      *(v0 + 5928) = v86;
      v87 = *(v0 + 6232);
      *(v0 + 5816) = *(v0 + 6216);
      *(v0 + 5832) = v87;
      v88 = *(v0 + 6264);
      *(v0 + 5848) = *(v0 + 6248);
      *(v0 + 5864) = v88;
      v89 = *(v0 + 6200);
      *(v0 + 5784) = *v28;
      *(v0 + 5800) = v89;
      sub_100C45F2C(v0 + 6184, v0 + 5384);
      v90 = String.init<A>(describing:)();
      v92 = sub_1000136BC(v90, v91, v256);

      *(v82 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v80, v81, "Invalid sendPairingStatus payload %{public}s", v82, 0xCu);
      sub_100007BAC(v83);
    }

    v93 = *(v0 + 8752);
    v94 = *(v0 + 8744);
    v95 = *(v0 + 8664);
    v96 = *(v0 + 8656);
    v239 = *(v0 + 8608);
    v231 = *(v0 + 8600);
    v221 = *(v0 + 8592);
    v214 = *(v0 + 8584);
    v236 = *(v0 + 8560);
    v226 = *(v0 + 8552);
    v244 = *(v0 + 8536);
    v248 = *(v0 + 8544);
    v252 = *(v0 + 8384);
    sub_100C45B4C();
    swift_allocError();
    *v97 = 8;
    swift_willThrow();
    sub_100016590(v94, v93);
    sub_100016590(v96, v95);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100C45F88(v0 + 6184);
    sub_100C460C4(v0 + 6776);
    sub_100C460C4(v0 + 6776);

    sub_100006654(v214, v221);
    sub_100016590(v231, v239);
    sub_100016590(v226, v236);
    v98 = v244;
    v99 = v248;
    goto LABEL_16;
  }

  v253 = v0;
  v55 = sub_10001F270(v29);
  v57 = *v55;
  v56 = v55[1];
  v58 = v55[2];
  v59 = v55[3];
  v60 = v55[4];
  v254 = v55[5];
  v61 = *(v0 + 6360);
  *(v0 + 5344) = *(v0 + 6344);
  *(v0 + 5360) = v61;
  *(v0 + 5376) = *(v0 + 6376);
  v62 = *(v0 + 6296);
  *(v0 + 5280) = *(v0 + 6280);
  *(v0 + 5296) = v62;
  v63 = *(v0 + 6328);
  *(v0 + 5312) = *(v0 + 6312);
  *(v0 + 5328) = v63;
  v64 = *(v0 + 6232);
  *(v0 + 5216) = *(v0 + 6216);
  *(v0 + 5232) = v64;
  v65 = *(v0 + 6264);
  *(v0 + 5248) = *(v0 + 6248);
  *(v0 + 5264) = v65;
  v66 = *(v0 + 6200);
  *(v0 + 5184) = *v28;
  *(v0 + 5200) = v66;
  v67 = sub_10001F270(v0 + 5184);
  sub_1000D2A70(v67, v0 + 7824, &qword_1016B91C8, &qword_1013E2490);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "Received pairing status.", v70, 2u);
  }

  sub_100017D5C(v58, v59);
  v71 = sub_1008CDF88(v58, v59);
  if (v71)
  {
    v72 = v71;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v256[0] = v76;
      *v75 = 136446210;
      v77 = sub_1008CDD10(v72);
      v79 = sub_1000136BC(v77, v78, v256);

      *(v75 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v73, v74, "Pairing failed with status %{public}s", v75, 0xCu);
      sub_100007BAC(v76);
    }

    v103 = *(v0 + 8752);
    v104 = *(v0 + 8744);
    v105 = *(v0 + 8664);
    v106 = *(v0 + 8656);
    v237 = *(v0 + 8608);
    v211 = *(v0 + 8584);
    v227 = *(v0 + 8600);
    v232 = *(v0 + 8560);
    v218 = *(v0 + 8592);
    v222 = *(v0 + 8552);
    v240 = *(v0 + 8536);
    v245 = *(v0 + 8544);
    v249 = *(v0 + 8384);
    sub_100C45B4C();
    swift_allocError();
    *v107 = 9;
    swift_willThrow();
    sub_100016590(v104, v103);
    sub_100016590(v106, v105);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100C45F88(v28);
    sub_100C45F88(v28);
    sub_100C460C4(v0 + 6776);
    sub_100C460C4(v0 + 6776);

    sub_100006654(v211, v218);
    sub_100016590(v227, v237);
    v108 = v222;
    v109 = v232;
    goto LABEL_24;
  }

  sub_100017D5C(v57, v56);
  sub_10049636C(v57, v56, v256);
  v246 = v60;
  v110 = *(v0 + 8520);
  v111 = *(v0 + 8264);
  v113 = v256[0];
  v112 = v256[1];
  v114 = *(v111 + v110);
  *(v0 + 7912) = &type metadata for CollaborativeKeyGen.v2.C3;
  *(v0 + 7920) = sub_10010194C();
  *(v0 + 7888) = v113;
  *(v0 + 7896) = v112;
  v115 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
  swift_beginAccess();

  v233 = v113;
  v238 = v112;
  sub_100017D5C(v113, v112);
  sub_10002311C(v0 + 7888, v114 + v115, &qword_101697320, &qword_10138BE90);
  swift_endAccess();

  v116 = (*(v111 + v110) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
  v117 = *v116;
  v118 = v116[1];
  *v116 = v58;
  v116[1] = v59;
  sub_100017D5C(v58, v59);

  sub_100006654(v117, v118);

  v119 = (*(v111 + v110) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
  v120 = *v119;
  v121 = v119[1];
  v122 = v254;
  *v119 = v246;
  v119[1] = v254;

  sub_100017D5C(v246, v254);
  sub_100006654(v120, v121);

  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v123, v124))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v256[0] = v127;
    *v126 = 136446210;
    v128 = sub_1008CDD10(0);
    v130 = sub_1000136BC(v128, v129, v256);
    v122 = v254;

    *(v126 + 4) = v130;
    _os_log_impl(&_mh_execute_header, v123, v124, "status: %{public}s", v126, 0xCu);
    sub_100007BAC(v127);
  }

  sub_100C45F2C(v28, v0 + 4584);
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v131, v132))
  {
    sub_100C45F88(v28);
    goto LABEL_40;
  }

  v133 = swift_slowAlloc();
  v134 = swift_slowAlloc();
  v256[0] = v134;
  *v133 = 134218242;
  v135 = v122 >> 62;
  if ((v122 >> 62) > 1)
  {
    if (v135 != 2)
    {
      v136 = 0;
      goto LABEL_39;
    }

    v138 = *(v246 + 16);
    v137 = *(v246 + 24);
    v139 = __OFSUB__(v137, v138);
    v136 = v137 - v138;
    if (!v139)
    {
      goto LABEL_39;
    }

    __break(1u);
LABEL_36:
    LODWORD(v136) = HIDWORD(v246) - v246;
    if (__OFSUB__(HIDWORD(v246), v246))
    {
      __break(1u);
    }

    v136 = v136;
    goto LABEL_39;
  }

  if (v135)
  {
    goto LABEL_36;
  }

  v136 = BYTE6(v122);
LABEL_39:
  *(v133 + 4) = v136;
  sub_100C45F88(v28);
  *(v133 + 12) = 2080;
  v140 = Data.hexString.getter();
  v142 = sub_1000136BC(v140, v141, v256);

  *(v133 + 14) = v142;
  _os_log_impl(&_mh_execute_header, v131, v132, "S4 count %ld: %s", v133, 0x16u);
  sub_100007BAC(v134);

LABEL_40:

  sub_100C45F2C(v28, v0 + 4384);
  v143 = Logger.logObject.getter();
  v144 = static os_log_type_t.default.getter();
  sub_100C45F88(v28);
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v256[0] = v146;
    *v145 = 136315138;
    v147 = Data.hexString.getter();
    v149 = sub_1000136BC(v147, v148, v256);

    *(v145 + 4) = v149;
    _os_log_impl(&_mh_execute_header, v143, v144, "C3: %s", v145, 0xCu);
    sub_100007BAC(v146);
  }

  v150 = *(v0 + 8264);
  if (!*(v150 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_crypto))
  {
    v169 = *(v0 + 8752);
    v170 = *(v0 + 8744);
    v171 = *(v0 + 8664);
    v172 = *(v0 + 8656);
    v212 = *(v0 + 8592);
    v209 = *(v0 + 8584);
    v223 = *(v0 + 8560);
    v228 = *(v0 + 8608);
    v215 = *(v0 + 8552);
    v219 = *(v0 + 8600);
    v240 = *(v0 + 8536);
    v245 = *(v0 + 8544);
    v249 = *(v0 + 8384);
    sub_100C45B4C();
    swift_allocError();
    *v173 = 4;
    swift_willThrow();
    sub_100016590(v170, v169);
    sub_100016590(v172, v171);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100016590(v233, v238);
    sub_100C45F88(v28);
    sub_100C45F88(v28);
    sub_100C460C4(v0 + 6776);
    sub_100C460C4(v0 + 6776);

    sub_100006654(v209, v212);
    sub_100016590(v219, v228);
    v108 = v215;
    v109 = v223;
LABEL_24:
    sub_100016590(v108, v109);
    sub_100006654(v240, v245);
    sub_10000B3A8(v0 + 368, &qword_1016993B0, &unk_1013E1330);
    sub_100016590(*(v0 + 8248), *(v0 + 8256));
    v100 = v249;
    goto LABEL_18;
  }

  v255 = *(v0 + 8520);
  v241 = *(v0 + 8488);
  v151 = *(v0 + 8456);
  v152 = *(v253 + 3380);
  v153 = *(v253 + 8440);
  v250 = *(v150 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_crypto);
  v154 = *(v253 + 8416);
  v155 = *(v253 + 8408);
  v156 = *(v253 + 8392);
  (*(v253 + 8424))(v155, enum case for PairingExecutorState.PairingLockCheck.generatePairingDataStart(_:), v154);
  v153(v155, 0, 1, v154);
  v151(v155, v152, v156);

  PairingExecutor.setState(_:)();
  v241(v155, v156);
  v157 = *(v150 + v255);
  v158 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
  swift_beginAccess();
  v159 = v157 + v158;
  v0 = v253;
  sub_1000D2A70(v159, v253 + 7968, &qword_101697320, &qword_10138BE90);
  v160 = *(v253 + 7992);
  if (!v160)
  {
    sub_10000B3A8(v253 + 7968, &qword_101697320, &qword_10138BE90);
    sub_100C45B4C();
    swift_allocError();
    *v174 = 14;
    swift_willThrow();
    v175 = *(v253 + 8752);
    v176 = *(v253 + 8744);
    v177 = *(v253 + 8664);
    v178 = *(v253 + 8656);
    v213 = *(v253 + 8592);
    v179 = *(v253 + 8584);
    v224 = *(v253 + 8560);
    v229 = *(v253 + 8608);
    v216 = *(v253 + 8552);
    v220 = *(v253 + 8600);
    v242 = *(v253 + 8536);
    v247 = *(v253 + 8544);
    v252 = *(v253 + 8384);

    sub_100016590(v176, v175);
    sub_100016590(v178, v177);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100016590(v233, v238);
    sub_100C45F88(v28);
    sub_100C45F88(v28);
    sub_100C460C4(v0 + 6776);
    sub_100C460C4(v0 + 6776);

    sub_100006654(v179, v213);
    sub_100016590(v220, v229);
    sub_100016590(v216, v224);
    v98 = v242;
    v99 = v247;
LABEL_16:
    sub_100006654(v98, v99);
    sub_10000B3A8(v0 + 368, &qword_1016993B0, &unk_1013E1330);
    goto LABEL_17;
  }

  v161 = *(v253 + 8000);
  v162 = sub_1000035D0((v253 + 7968), *(v253 + 7992));
  v163 = *(v160 - 8);
  v164 = swift_task_alloc();
  (*(v163 + 16))(v164, v162, v160);
  sub_10000B3A8(v253 + 7968, &qword_101697320, &qword_10138BE90);
  v165 = (*(*(*(v161 + 8) + 8) + 40))(v160);
  v167 = v166;
  (*(v163 + 8))(v164, v160);

  sub_100017D5C(v165, v167);
  CCCKG2ParamsP224Sha256Version2();
  OpeningSize = CCCKG2GetOpeningSize();

  sub_1001003F4(v165, v167, v250, OpeningSize, v257);
  v196 = *(v253 + 8744);
  v197 = *(v253 + 8656);
  v198 = *(v253 + 8752);
  v199 = *(v253 + 8664);
  v201 = *(v253 + 8592);
  v200 = *(v253 + 8584);
  v204 = *(v253 + 8560);
  v205 = *(v253 + 8608);
  v202 = *(v253 + 8552);
  v203 = *(v253 + 8600);
  v206 = *(v253 + 8536);
  v207 = *(v253 + 8544);
  v210 = *(v253 + 8520);
  v208 = *(v253 + 8488);
  v195 = *(v253 + 8456);
  v194 = *(v253 + 3380);
  v193 = *(v253 + 8440);
  v180 = *(v253 + 8424);
  v181 = *(v253 + 8416);
  v182 = *(v253 + 8408);
  v183 = *(v253 + 8392);
  v217 = *(v253 + 8384);
  v184 = *(v253 + 8264);
  sub_100016590(v165, v167);
  sub_100016590(v165, v167);
  v180(v182, enum case for PairingExecutorState.PairingLockCheck.generatePairingDataFinish(_:), v181);
  v193(v182, 0, 1, v181);
  v195(v182, v194, v183);
  PairingExecutor.setState(_:)();

  sub_100016590(v196, v198);
  sub_100016590(v197, v199);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100016590(v233, v238);
  sub_100C45F88(v28);
  sub_100C45F88(v28);
  sub_100C460C4(v253 + 6776);
  sub_100C460C4(v253 + 6776);

  sub_100006654(v200, v201);
  sub_100016590(v203, v205);
  sub_100016590(v202, v204);
  sub_100006654(v206, v207);
  sub_10000B3A8(v253 + 368, &qword_1016993B0, &unk_1013E1330);
  v208(v182, v183);
  sub_100016590(*(v253 + 8248), *(v253 + 8256));
  v185 = *(v184 + v210);
  v186 = v184 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo;
  v187 = *(v184 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 16);
  *(v253 + 7736) = *(v184 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo);
  *(v253 + 7752) = v187;
  v189 = *(v186 + 48);
  v188 = *(v186 + 64);
  v190 = *(v186 + 32);
  *(v253 + 7816) = *(v186 + 80);
  *(v253 + 7784) = v189;
  *(v253 + 7800) = v188;
  *(v253 + 7768) = v190;
  v191 = v257[3];
  *(v186 + 32) = v257[2];
  *(v186 + 48) = v191;
  *(v186 + 64) = v257[4];
  v192 = v257[1];
  *v186 = v257[0];
  *(v186 + 16) = v192;
  *(v186 + 80) = v185;

  sub_10000B3A8(v253 + 7736, &qword_1016A1320, &unk_1013E02C0);
  sub_100C46118(v217, type metadata accessor for AirPodsLEPairingLockCheckResponse);

  v101 = *(v253 + 8);
LABEL_19:

  return v101();
}

uint64_t sub_100C3EB6C()
{
  sub_10000B3A8(v0 + 368, &qword_1016993B0, &unk_1013E1330);
  sub_100007BAC((v0 + 8088));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C3EC94()
{
  v1 = v0[1076];
  v2 = v0[1075];
  v3 = v0[1074];
  v4 = v0[1073];
  v5 = v0[1070];
  v6 = v0[1069];
  v7 = v0[1067];
  v10 = v0[1068];
  v11 = v0[1048];
  swift_unknownObjectRelease();
  sub_100C460C4((v0 + 847));
  sub_100C460C4((v0 + 847));

  sub_100006654(v4, v3);
  sub_100016590(v2, v1);
  sub_100016590(v6, v5);
  sub_100006654(v7, v10);
  sub_10000B3A8((v0 + 46), &qword_1016993B0, &unk_1013E1330);
  sub_100016590(v0[1031], v0[1032]);
  sub_100C46118(v11, type metadata accessor for AirPodsLEPairingLockCheckResponse);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C3EE5C()
{
  v1 = v0[1076];
  v2 = v0[1075];
  v3 = v0[1074];
  v4 = v0[1073];
  v5 = v0[1070];
  v6 = v0[1069];
  v9 = v0[1067];
  v10 = v0[1068];
  v11 = v0[1048];
  sub_100016590(v0[1082], v0[1083]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100C460C4((v0 + 847));
  sub_100C460C4((v0 + 847));

  sub_100006654(v4, v3);
  sub_100016590(v2, v1);
  sub_100016590(v6, v5);
  sub_100006654(v9, v10);
  sub_10000B3A8((v0 + 46), &qword_1016993B0, &unk_1013E1330);
  sub_100016590(v0[1031], v0[1032]);
  sub_100C46118(v11, type metadata accessor for AirPodsLEPairingLockCheckResponse);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C3F040()
{
  v1 = v0[1076];
  v2 = v0[1075];
  v3 = v0[1074];
  v4 = v0[1073];
  v5 = v0[1070];
  v6 = v0[1069];
  v9 = v0[1067];
  v10 = v0[1068];
  v11 = v0[1048];
  sub_100016590(v0[1082], v0[1083]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100C460C4((v0 + 847));
  sub_100C460C4((v0 + 847));

  sub_100006654(v4, v3);
  sub_100016590(v2, v1);
  sub_100016590(v6, v5);
  sub_100006654(v9, v10);
  sub_10000B3A8((v0 + 46), &qword_1016993B0, &unk_1013E1330);
  sub_100016590(v0[1031], v0[1032]);
  sub_100C46118(v11, type metadata accessor for AirPodsLEPairingLockCheckResponse);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C3F224()
{
  v1 = v0[1076];
  v2 = v0[1075];
  v3 = v0[1074];
  v4 = v0[1073];
  v5 = v0[1070];
  v6 = v0[1069];
  v9 = v0[1067];
  v10 = v0[1068];
  v11 = v0[1048];
  sub_100016590(v0[1082], v0[1083]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100C460C4((v0 + 847));
  sub_100C460C4((v0 + 847));

  sub_100006654(v4, v3);
  sub_100016590(v2, v1);
  sub_100016590(v6, v5);
  sub_100006654(v9, v10);
  sub_10000B3A8((v0 + 46), &qword_1016993B0, &unk_1013E1330);
  sub_100016590(v0[1031], v0[1032]);
  sub_100C46118(v11, type metadata accessor for AirPodsLEPairingLockCheckResponse);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C3F408(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v3 = type metadata accessor for UUID();
  v2[95] = v3;
  v2[96] = *(v3 - 8);
  v2[97] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[98] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v2[99] = v4;
  v2[100] = *(v4 - 8);
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();

  return _swift_task_switch(sub_100C3F56C, v1, 0);
}

uint64_t sub_100C3F56C(uint64_t a1)
{
  v2 = *(v1 + 752);
  v3 = v2 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo;
  v4 = *(v2 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 16);
  *(v1 + 104) = *(v2 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo);
  *(v1 + 120) = v4;
  v6 = *(v3 + 48);
  v5 = *(v3 + 64);
  v7 = *(v3 + 80);
  *(v1 + 136) = *(v3 + 32);
  *(v1 + 184) = v7;
  *(v1 + 168) = v5;
  *(v1 + 152) = v6;
  v8 = *(v3 + 16);
  *(v1 + 16) = *v3;
  *(v1 + 32) = v8;
  v10 = *(v3 + 48);
  v9 = *(v3 + 64);
  v11 = *(v3 + 80);
  v12 = *(v3 + 32);
  *(v1 + 96) = v11;
  *(v1 + 64) = v10;
  *(v1 + 80) = v9;
  *(v1 + 48) = v12;
  v13 = v11;
  if (v11)
  {
    v14 = (v2 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconStore);
    *(v1 + 824) = *v14;
    v15 = v14[1];
    *(v1 + 832) = v15;
    ObjectType = swift_getObjectType();
    *(v1 + 840) = ObjectType;
    *(v1 + 424) = &type metadata for InitialPairingInfo;
    *(v1 + 432) = sub_10048E614();
    v17 = swift_allocObject();
    *(v1 + 400) = v17;
    v17[1] = *v3;
    v18 = *(v3 + 64);
    v20 = *(v3 + 16);
    v19 = *(v3 + 32);
    v17[4] = *(v3 + 48);
    v17[5] = v18;
    v17[2] = v20;
    v17[3] = v19;
    *(v1 + 464) = type metadata accessor for AccessoryPairingInfo(0);
    *(v1 + 472) = sub_100C4600C(&qword_1016A1318, type metadata accessor for AccessoryPairingInfo, &unk_1013E0270);
    *(v1 + 440) = v13;
    sub_1000D2A70(v1 + 104, v1 + 192, &qword_1016A1320, &unk_1013E02C0);
    sub_100102538(v1 + 16, v1 + 280);

    v21 = swift_task_alloc();
    *(v1 + 848) = v21;
    *v21 = v1;
    v21[1] = sub_100C3F804;

    return dispatch thunk of PairingBeaconStore.generateBeaconRecord(pairingKeys:accessory:)(v1 + 360, v1 + 400, v1 + 440, ObjectType, v15);
  }

  else
  {
    sub_100C45B4C();
    swift_allocError();
    *v22 = 5;
    swift_willThrow();

    v23 = *(v1 + 8);

    return v23();
  }
}

uint64_t sub_100C3F804()
{
  v2 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v3 = v2[94];
    v4 = sub_100C403D0;
  }

  else
  {
    v5 = v2[94];
    sub_100007BAC(v2 + 55);
    sub_100007BAC(v2 + 50);
    v4 = sub_100C3F934;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C3F934()
{
  v41 = v0;
  v1 = *(v0 + 800);
  sub_1000D2A70(v0 + 360, v0 + 480, &qword_1016B8AD0, &unk_1013E1320);
  v2 = (v1 + 56);
  if (!*(v0 + 504))
  {
    v20 = *(v0 + 792);
    v21 = *(v0 + 784);
    sub_10000B3A8(v0 + 480, &qword_1016B8AD0, &unk_1013E1320);
    (*v2)(v21, 1, 1, v20);
    goto LABEL_8;
  }

  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  sub_1000BC4D4(&qword_1016B7F70, &qword_1013E02D0);
  v6 = swift_dynamicCast();
  (*v2)(v5, v6 ^ 1u, 1, v4);
  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
LABEL_8:
    sub_10000B3A8(*(v0 + 784), &unk_1016A9A20, &qword_10138B280);
    if (qword_101694DA0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_1016B8F00);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to generate new beacon", v25, 2u);
    }

    v26 = type metadata accessor for PairingInfoStoreError();
    sub_100C4600C(&qword_1016A1330, &type metadata accessor for PairingInfoStoreError, &protocol conformance descriptor for PairingInfoStoreError);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, enum case for PairingInfoStoreError.missingOwnerRecord(_:), v26);
    swift_willThrow();
    sub_10000B3A8(v0 + 104, &qword_1016A1320, &unk_1013E02C0);
    goto LABEL_13;
  }

  sub_10002AD14(*(v0 + 784), *(v0 + 816), type metadata accessor for OwnedBeaconRecord);
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 816);
  v8 = *(v0 + 808);
  v9 = type metadata accessor for Logger();
  *(v0 + 864) = sub_1000076D4(v9, qword_1016B8F00);
  sub_100A51D68(v7, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 808);
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40 = v15;
    *v14 = 136315138;
    sub_100C4600C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_100C46118(v13, type metadata accessor for OwnedBeaconRecord);
    v19 = sub_1000136BC(v16, v18, &v40);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Generated new beacon %s", v14, 0xCu);
    sub_100007BAC(v15);
  }

  else
  {

    sub_100C46118(v13, type metadata accessor for OwnedBeaconRecord);
  }

  v30 = *(v0 + 752);
  v31 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingConfiguration;
  swift_beginAccess();
  sub_1000D2A70(v30 + v31, v0 + 560, &qword_1016A12E0, &qword_1013A51D0);
  if (*(v0 + 584))
  {
    v32 = *(v0 + 816);
    v33 = *(v0 + 792);
    sub_10000A748((v0 + 560), v0 + 520);
    *(v0 + 664) = v33;
    *(v0 + 672) = sub_100C4600C(&qword_1016B7F60, type metadata accessor for OwnedBeaconRecord, &unk_1013DDF44);
    v34 = sub_1000280DC((v0 + 640));
    sub_100A51D68(v32, v34);
    v35 = swift_task_alloc();
    *(v0 + 872) = v35;
    *v35 = v0;
    v35[1] = sub_100C3FFEC;
    v36 = *(v0 + 840);
    v37 = *(v0 + 832);

    return dispatch thunk of PairingBeaconStore.saveBeaconRecord(_:pairingConfiguration:)(v0 + 600, v0 + 640, v0 + 520, v36, v37);
  }

  v38 = *(v0 + 816);
  sub_10000B3A8(v0 + 560, &qword_1016A12E0, &qword_1013A51D0);
  sub_100C45B4C();
  swift_allocError();
  *v39 = 6;
  swift_willThrow();
  sub_10000B3A8(v0 + 104, &qword_1016A1320, &unk_1013E02C0);
  sub_100C46118(v38, type metadata accessor for OwnedBeaconRecord);
LABEL_13:
  sub_10000B3A8(v0 + 360, &qword_1016B8AD0, &unk_1013E1320);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100C3FFEC()
{
  v2 = *v1;
  *(*v1 + 880) = v0;

  if (v0)
  {
    v3 = *(v2 + 752);
    v4 = sub_100C40488;
  }

  else
  {
    v5 = *(v2 + 752);
    sub_100007BAC((v2 + 640));
    v4 = sub_100C40114;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C40114()
{
  v16 = v0;
  sub_10001F280((v0 + 75), (v0 + 85));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[97];
    v4 = v0[96];
    v14 = v0[95];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    sub_1000035D0(v0 + 85, v0[88]);
    dispatch thunk of BeaconRecordType.identifier.getter();
    sub_100C4600C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    (*(v4 + 8))(v3, v14);
    sub_100007BAC(v0 + 85);
    v10 = sub_1000136BC(v7, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Saved new record %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  else
  {

    sub_100007BAC(v0 + 85);
  }

  v11 = v0[102];
  sub_1000035D0(v0 + 75, v0[78]);
  dispatch thunk of BeaconRecordType.identifier.getter();
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  sub_100007BAC(v0 + 65);
  sub_100C46118(v11, type metadata accessor for OwnedBeaconRecord);
  sub_10000B3A8((v0 + 45), &qword_1016B8AD0, &unk_1013E1320);
  sub_100007BAC(v0 + 75);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100C403D0()
{
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  sub_100007BAC(v0 + 55);
  sub_100007BAC(v0 + 50);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C40488()
{
  v1 = v0[102];
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  sub_100007BAC(v0 + 65);
  sub_100C46118(v1, type metadata accessor for OwnedBeaconRecord);
  sub_10000B3A8((v0 + 45), &qword_1016B8AD0, &unk_1013E1320);
  sub_100007BAC(v0 + 80);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100C40578()
{
  v1[374] = v0;
  v2 = type metadata accessor for PairingExecutorState();
  v1[375] = v2;
  v1[376] = *(v2 - 8);
  v1[377] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v1[378] = v3;
  v1[379] = *(v3 - 8);
  v1[380] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v1[381] = v4;
  v1[382] = *(v4 - 8);
  v1[383] = swift_task_alloc();
  v1[384] = swift_task_alloc();

  return _swift_task_switch(sub_100C40714, v0, 0);
}

uint64_t sub_100C40714(uint64_t a1)
{
  v2 = (*(v1 + 2992) + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_service);
  v3 = *v2;
  *(v1 + 3080) = *v2;
  if (v3)
  {
    v4 = v2[1];
    *(v1 + 3088) = v4;
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 standardUserDefaults];
    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 isInternalBuild];

    if (v8)
    {
      v9 = String._bridgeToObjectiveC()();
      v10 = [v6 BOOLForKey:v9];

      if (v10)
      {
        sub_100C45E90(v1 + 880);
        ObjectType = swift_getObjectType();
        *(v1 + 3096) = ObjectType;
        type metadata accessor for Characteristic();
        Identifier.init(stringLiteral:)();
        v12 = swift_task_alloc();
        *(v1 + 3104) = v12;
        *v12 = v1;
        v12[1] = sub_100C40B9C;
        v13 = *(v1 + 3072);
LABEL_15:

        return dispatch thunk of ServiceProtocol.subscript.getter(v13, ObjectType, v4);
      }
    }

    else
    {
    }

    v15 = sub_100C45C3C(sub_100011134);
    if (qword_101694DA0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    *(v1 + 3256) = sub_1000076D4(v16, qword_1016B8F00);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v17, v18, "nextKeyRollInterval = %u", v19, 8u);
    }

    *(v1 + 276) = v15;
    sub_100101824();
    FixedWidthInteger.data.getter();
    sub_1003CD9CC();
    BinaryDecodable.init(data:)();
    v4 = *(v1 + 3088);
    v22 = *(v1 + 2976);
    *(v1 + 3264) = v22;
    v23 = *(v1 + 2984);
    *(v1 + 3272) = v23;
    *(v1 + 16) = v22;
    *(v1 + 24) = v23;
    sub_100C45E20(v1 + 16);
    ObjectType = swift_getObjectType();
    *(v1 + 3280) = ObjectType;
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v24 = swift_task_alloc();
    *(v1 + 3288) = v24;
    *v24 = v1;
    v24[1] = sub_100C4238C;
    v13 = *(v1 + 3064);
    goto LABEL_15;
  }

  sub_100C45B4C();
  swift_allocError();
  *v14 = 3;
  swift_willThrow();

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_100C40B9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[389] = a1;
  v4[390] = v1;

  v5 = v3[384];
  v6 = v3[382];
  v7 = v3[381];
  v8 = v3[374];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_100C43038;
  }

  else
  {
    v9 = sub_100C40D24;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100C40D24()
{
  v45 = v0;
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v1 = (v0 + 880);
  v2 = type metadata accessor for Logger();
  *(v0 + 3128) = v2;
  *(v0 + 3136) = sub_1000076D4(v2, qword_1016B8F00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v44 = v6;
    *v5 = 136315138;
    v7 = *(v0 + 1056);
    *(v0 + 2840) = *(v0 + 1040);
    *(v0 + 2856) = v7;
    *(v0 + 2872) = *(v0 + 1072);
    v8 = *(v0 + 992);
    *(v0 + 2776) = *(v0 + 976);
    *(v0 + 2792) = v8;
    v9 = *(v0 + 1024);
    *(v0 + 2808) = *(v0 + 1008);
    *(v0 + 2824) = v9;
    v10 = *(v0 + 928);
    *(v0 + 2712) = *(v0 + 912);
    *(v0 + 2728) = v10;
    v11 = *(v0 + 960);
    *(v0 + 2744) = *(v0 + 944);
    *(v0 + 2760) = v11;
    v12 = *(v0 + 896);
    *(v0 + 2680) = *v1;
    *(v0 + 2696) = v12;
    v13 = String.init<A>(describing:)();
    v15 = v2;
    v16 = sub_1000136BC(v13, v14, &v44);

    *(v5 + 4) = v16;
    v2 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sending command: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v17 = *(v0 + 3120);
  v18 = *(v0 + 1056);
  *(v0 + 1240) = *(v0 + 1040);
  *(v0 + 1256) = v18;
  *(v0 + 1272) = *(v0 + 1072);
  v19 = *(v0 + 992);
  *(v0 + 1176) = *(v0 + 976);
  *(v0 + 1192) = v19;
  v20 = *(v0 + 1024);
  *(v0 + 1208) = *(v0 + 1008);
  *(v0 + 1224) = v20;
  v21 = *(v0 + 928);
  *(v0 + 1112) = *(v0 + 912);
  *(v0 + 1128) = v21;
  v22 = *(v0 + 960);
  *(v0 + 1144) = *(v0 + 944);
  *(v0 + 1160) = v22;
  v23 = *(v0 + 896);
  *(v0 + 1080) = *v1;
  *(v0 + 1096) = v23;
  sub_100C45E3C();
  *(v0 + 3144) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 3152) = v24;
  if (v17)
  {
    swift_unknownObjectRelease();
    if (qword_101694DA0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v2, qword_1016B8F00);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failure on pairing stats gathering: %{public}@", v27, 0xCu);
      sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v33 = sub_100C45C3C(sub_100011134);
    if (qword_101694DA0 != -1)
    {
      swift_once();
    }

    *(v0 + 3256) = sub_1000076D4(v2, qword_1016B8F00);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67109120;
      *(v36 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "nextKeyRollInterval = %u", v36, 8u);
    }

    *(v0 + 276) = v33;
    sub_100101824();
    FixedWidthInteger.data.getter();
    sub_1003CD9CC();
    BinaryDecodable.init(data:)();
    v37 = *(v0 + 3088);
    v38 = *(v0 + 2976);
    *(v0 + 3264) = v38;
    v39 = *(v0 + 2984);
    *(v0 + 3272) = v39;
    *(v0 + 16) = v38;
    *(v0 + 24) = v39;
    sub_100C45E20(v0 + 16);
    ObjectType = swift_getObjectType();
    *(v0 + 3280) = ObjectType;
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v41 = swift_task_alloc();
    *(v0 + 3288) = v41;
    *v41 = v0;
    v41[1] = sub_100C4238C;
    v42 = *(v0 + 3064);

    return dispatch thunk of ServiceProtocol.subscript.getter(v42, ObjectType, v37);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 3160) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 3168) = AssociatedConformanceWitness;
    v32 = swift_task_alloc();
    *(v0 + 3176) = v32;
    *v32 = v0;
    v32[1] = sub_100C41414;

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_100C41414(uint64_t a1)
{
  v4 = *v2;
  v4[398] = v1;

  v5 = v4[374];
  if (v1)
  {
    v6 = sub_100C43468;
  }

  else
  {
    v4[399] = a1;
    v6 = sub_100C41550;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C41550()
{
  v1 = fragment(data:mtu:)();
  v0[400] = v1;
  v2 = swift_task_alloc();
  v0[401] = v2;
  *v2 = v0;
  v2[1] = sub_100C41610;
  v3 = v0[396];
  v4 = v0[395];
  v5 = v0[380];

  return dispatch thunk of CharacteristicProtocol.write(data:)(v5, v1, v4, v3);
}

uint64_t sub_100C41610()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 3216) = v0;

  if (v0)
  {
    v4 = v2[374];

    return _swift_task_switch(sub_100C438B0, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v2[403] = v5;
    v6 = sub_10048E70C();
    *v5 = v3;
    v5[1] = sub_100C417B8;
    v7 = v2[378];

    return AsyncSequence<>.reassemble()(v7, v6);
  }
}

uint64_t sub_100C417B8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[404] = a1;
  v5[405] = a2;
  v5[406] = v2;

  v6 = v4[380];
  v7 = v4[379];
  v8 = v4[378];
  v9 = v4[374];
  (*(v7 + 8))(v6, v8);
  if (v2)
  {
    v10 = sub_100C43CF8;
  }

  else
  {
    v10 = sub_100C41944;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100C41944(uint64_t a1)
{
  v95 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v6 = *(v1 + 1008);
    *(v1 + 2624) = *(v1 + 1024);
    v7 = *(v1 + 1056);
    *(v1 + 2640) = *(v1 + 1040);
    *(v1 + 2656) = v7;
    v8 = *(v1 + 944);
    *(v1 + 2560) = *(v1 + 960);
    v9 = *(v1 + 992);
    *(v1 + 2576) = *(v1 + 976);
    *(v1 + 2592) = v9;
    *(v1 + 2608) = v6;
    v10 = *(v1 + 880);
    *(v1 + 2496) = *(v1 + 896);
    v11 = *(v1 + 928);
    *(v1 + 2512) = *(v1 + 912);
    *(v1 + 2528) = v11;
    *(v1 + 2544) = v8;
    v94[0] = v5;
    *(v1 + 2672) = *(v1 + 1072);
    *(v1 + 2480) = v10;
    v12 = String.init<A>(describing:)();
    v14 = sub_1000136BC(v12, v13, v94);

    *(v4 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sent command: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v15 = *(v1 + 3248);
  sub_100C45ED8();
  BinaryDecoder.decode<A>(_:from:)();
  if (v15)
  {
    v16 = *(v1 + 3152);
    v17 = *(v1 + 3144);
    sub_100016590(*(v1 + 3232), *(v1 + 3240));
    sub_100016590(v17, v16);
    swift_unknownObjectRelease();
    if (qword_101694DA0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_1016B8F00);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failure on pairing stats gathering: %{public}@", v21, 0xCu);
      sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }
  }

  else
  {
    v24 = (v1 + 1480);
    v25 = *(v1 + 1456);
    *(v1 + 1640) = *(v1 + 1440);
    *(v1 + 1656) = v25;
    *(v1 + 1672) = *(v1 + 1472);
    v26 = *(v1 + 1392);
    *(v1 + 1576) = *(v1 + 1376);
    *(v1 + 1592) = v26;
    v27 = *(v1 + 1424);
    *(v1 + 1608) = *(v1 + 1408);
    *(v1 + 1624) = v27;
    v28 = *(v1 + 1328);
    *(v1 + 1512) = *(v1 + 1312);
    *(v1 + 1528) = v28;
    v29 = *(v1 + 1360);
    *(v1 + 1544) = *(v1 + 1344);
    *(v1 + 1560) = v29;
    v30 = *(v1 + 1296);
    *(v1 + 1480) = *(v1 + 1280);
    *(v1 + 1496) = v30;
    sub_100C45F2C(v1 + 1480, v1 + 1680);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    sub_100C45F88(v1 + 1480);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v94[0] = v34;
      *v33 = 136315138;
      v35 = *(v1 + 1656);
      *(v1 + 2240) = *(v1 + 1640);
      *(v1 + 2256) = v35;
      *(v1 + 2272) = *(v1 + 1672);
      v36 = *(v1 + 1592);
      *(v1 + 2176) = *(v1 + 1576);
      *(v1 + 2192) = v36;
      v37 = *(v1 + 1624);
      *(v1 + 2208) = *(v1 + 1608);
      *(v1 + 2224) = v37;
      v38 = *(v1 + 1528);
      *(v1 + 2112) = *(v1 + 1512);
      *(v1 + 2128) = v38;
      v39 = *(v1 + 1560);
      *(v1 + 2144) = *(v1 + 1544);
      *(v1 + 2160) = v39;
      v40 = *(v1 + 1496);
      *(v1 + 2080) = *v24;
      *(v1 + 2096) = v40;
      sub_100C45F2C(v1 + 1480, v1 + 2280);
      v41 = String.init<A>(describing:)();
      v43 = sub_1000136BC(v41, v42, v94);

      *(v33 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v31, v32, "Received response: %s", v33, 0xCu);
      sub_100007BAC(v34);
    }

    v44 = *(v1 + 1656);
    *(v1 + 2040) = *(v1 + 1640);
    *(v1 + 2056) = v44;
    *(v1 + 2072) = *(v1 + 1672);
    v45 = *(v1 + 1592);
    *(v1 + 1976) = *(v1 + 1576);
    *(v1 + 1992) = v45;
    v46 = *(v1 + 1624);
    *(v1 + 2008) = *(v1 + 1608);
    *(v1 + 2024) = v46;
    v47 = *(v1 + 1528);
    *(v1 + 1912) = *(v1 + 1512);
    *(v1 + 1928) = v47;
    v48 = *(v1 + 1560);
    *(v1 + 1944) = *(v1 + 1544);
    *(v1 + 1960) = v48;
    v49 = *(v1 + 1496);
    *(v1 + 1880) = *v24;
    *(v1 + 1896) = v49;
    if (sub_100C45FDC(v1 + 1880) == 6)
    {
      v50 = sub_10001F270(v1 + 1880);
      if (qword_101694D48 != -1)
      {
        swift_once();
      }

      sub_1000076D4(*(v1 + 3128), qword_10177BCE8);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v94[0] = v54;
        *v53 = 136446210;
        v55 = *(v50 + 24);
        *(v1 + 2880) = *(v50 + 8);
        *(v1 + 2896) = v55;
        v56 = *(v50 + 56);
        v57 = *(v50 + 88);
        v58 = *(v50 + 40);
        *(v1 + 2944) = *(v50 + 72);
        *(v1 + 2960) = v57;
        *(v1 + 2912) = v58;
        *(v1 + 2928) = v56;
        v59 = ProximityPairingStatsCommandPayload.Durations.description.getter();
        v61 = sub_1000136BC(v59, v60, v94);

        *(v53 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v51, v52, "FW Pairing Statistics: %{public}s", v53, 0xCu);
        sub_100007BAC(v54);
      }

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v1 + 3240);
      v66 = *(v1 + 3232);
      v67 = *(v1 + 3152);
      v68 = *(v1 + 3144);
      if (v64)
      {
        v93 = *(v1 + 3152);
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v94[0] = v70;
        *v69 = 136446210;
        v71 = *(v50 + 120);
        v72 = *(v50 + 152);
        v73 = *(v50 + 104);
        *(v1 + 244) = *(v50 + 136);
        *(v1 + 260) = v72;
        *(v1 + 212) = v73;
        *(v1 + 228) = v71;
        v74 = ProximityPairingStatsCommandPayload.Timestamps.description.getter();
        v76 = sub_1000136BC(v74, v75, v94);

        *(v69 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v62, v63, "FW Pairing Timestamps: %{public}s", v69, 0xCu);
        sub_100007BAC(v70);

        sub_100016590(v66, v65);
        sub_100016590(v68, v93);
      }

      else
      {
        sub_100016590(*(v1 + 3232), *(v1 + 3240));
        sub_100016590(v68, v67);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v77 = *(v1 + 3240);
      v78 = *(v1 + 3232);
      v79 = *(v1 + 3152);
      v80 = *(v1 + 3144);
      sub_100C45F88(v1 + 1480);
      sub_100016590(v78, v77);
      sub_100016590(v80, v79);
      swift_unknownObjectRelease();
    }
  }

  v81 = sub_100C45C3C(sub_100011134);
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  *(v1 + 3256) = sub_1000076D4(v82, qword_1016B8F00);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 67109120;
    *(v85 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v83, v84, "nextKeyRollInterval = %u", v85, 8u);
  }

  *(v1 + 276) = v81;
  sub_100101824();
  FixedWidthInteger.data.getter();
  sub_1003CD9CC();
  BinaryDecodable.init(data:)();
  v86 = *(v1 + 3088);
  v87 = *(v1 + 2976);
  *(v1 + 3264) = v87;
  v88 = *(v1 + 2984);
  *(v1 + 3272) = v88;
  *(v1 + 16) = v87;
  *(v1 + 24) = v88;
  sub_100C45E20(v1 + 16);
  ObjectType = swift_getObjectType();
  *(v1 + 3280) = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v90 = swift_task_alloc();
  *(v1 + 3288) = v90;
  *v90 = v1;
  v90[1] = sub_100C4238C;
  v91 = *(v1 + 3064);

  return dispatch thunk of ServiceProtocol.subscript.getter(v91, ObjectType, v86);
}

uint64_t sub_100C4238C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[412] = a1;
  v4[413] = v1;

  v5 = v3[383];
  v6 = v3[382];
  v7 = v3[381];
  v8 = v3[374];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_100C44140;
  }

  else
  {
    v9 = sub_100C42514;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100C42514()
{
  v44 = v0;
  v1 = *(v0 + 3272);
  v2 = *(v0 + 3264);
  sub_100017D5C(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_100016590(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3272);
    v6 = *(v0 + 3264);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v43 = v8;
    *v7 = 136315138;
    v9 = *(v0 + 192);
    *(v0 + 840) = *(v0 + 176);
    *(v0 + 856) = v9;
    *(v0 + 872) = *(v0 + 208);
    v10 = *(v0 + 128);
    *(v0 + 776) = *(v0 + 112);
    *(v0 + 792) = v10;
    v11 = *(v0 + 160);
    *(v0 + 808) = *(v0 + 144);
    *(v0 + 824) = v11;
    v12 = *(v0 + 64);
    *(v0 + 712) = *(v0 + 48);
    *(v0 + 728) = v12;
    v13 = *(v0 + 96);
    *(v0 + 744) = *(v0 + 80);
    *(v0 + 760) = v13;
    v14 = *(v0 + 32);
    *(v0 + 680) = *(v0 + 16);
    *(v0 + 696) = v14;
    sub_100017D5C(v6, v5);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000136BC(v15, v16, &v43);

    *(v7 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sending command: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v18 = *(v0 + 3304);
  v19 = *(v0 + 3016);
  v20 = *(v0 + 3008);
  v21 = *(v0 + 3000);
  v22 = enum case for PairingExecutorState.PairingComplete.commandStart(_:);
  v23 = type metadata accessor for PairingExecutorState.PairingComplete();
  *(v0 + 3312) = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 104);
  *(v0 + 3320) = v25;
  *(v0 + 3328) = (v24 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v25(v19, v22, v23);
  v26 = *(v24 + 56);
  *(v0 + 3336) = v26;
  *(v0 + 3344) = (v24 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v26(v19, 0, 1, v23);
  *(v0 + 476) = enum case for PairingExecutorState.pairingComplete(_:);
  v27 = *(v20 + 104);
  *(v0 + 3352) = v27;
  *(v0 + 3360) = (v20 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v27(v19);
  *(v0 + 3368) = type metadata accessor for ProximityPairingExecutor(0);
  *(v0 + 3376) = sub_100C4600C(&qword_1016B75C0, type metadata accessor for ProximityPairingExecutor, &unk_1013E1218);
  PairingExecutor.setState(_:)();
  v28 = *(v20 + 8);
  *(v0 + 3384) = v28;
  *(v0 + 3392) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v19, v21);
  v29 = *(v0 + 192);
  *(v0 + 440) = *(v0 + 176);
  *(v0 + 456) = v29;
  *(v0 + 472) = *(v0 + 208);
  v30 = *(v0 + 128);
  *(v0 + 376) = *(v0 + 112);
  *(v0 + 392) = v30;
  v31 = *(v0 + 160);
  *(v0 + 408) = *(v0 + 144);
  *(v0 + 424) = v31;
  v32 = *(v0 + 64);
  *(v0 + 312) = *(v0 + 48);
  *(v0 + 328) = v32;
  v33 = *(v0 + 96);
  *(v0 + 344) = *(v0 + 80);
  *(v0 + 360) = v33;
  v34 = *(v0 + 32);
  *(v0 + 280) = *(v0 + 16);
  *(v0 + 296) = v34;
  sub_100C45E3C();
  *(v0 + 3400) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 3408) = v35;
  if (v18)
  {
    v36 = *(v0 + 3272);
    v37 = *(v0 + 3264);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100016590(v37, v36);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 3416) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 3424) = AssociatedConformanceWitness;
    v42 = swift_task_alloc();
    *(v0 + 3432) = v42;
    *v42 = v0;
    v42[1] = sub_100C429E0;

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_100C429E0(uint64_t a1)
{
  v4 = *v2;
  v4[430] = v1;

  v5 = v4[374];
  if (v1)
  {
    v6 = sub_100C441EC;
  }

  else
  {
    v4[431] = a1;
    v6 = sub_100C42B1C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C42B1C()
{
  v1 = fragment(data:mtu:)();
  v0[432] = v1;
  v2 = swift_task_alloc();
  v0[433] = v2;
  *v2 = v0;
  v2[1] = sub_100C42BD4;
  v3 = v0[428];
  v4 = v0[427];

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v1, v4, v3);
}

uint64_t sub_100C42BD4()
{
  v2 = *v1;
  *(*v1 + 3472) = v0;

  if (v0)
  {
    v3 = *(v2 + 2992);
    v4 = sub_100C442B4;
  }

  else
  {
    v5 = *(v2 + 2992);

    v4 = sub_100C42CFC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C42CFC()
{
  v33 = v0;
  v31 = *(v0 + 3384);
  v30 = *(v0 + 3352);
  v1 = *(v0 + 476);
  v2 = *(v0 + 3336);
  v3 = *(v0 + 3312);
  v4 = *(v0 + 3272);
  v5 = *(v0 + 3264);
  v6 = *(v0 + 3016);
  v7 = *(v0 + 3000);
  (*(v0 + 3320))(v6, enum case for PairingExecutorState.PairingComplete.commandFinish(_:), v3);
  v2(v6, 0, 1, v3);
  v30(v6, v1, v7);
  PairingExecutor.setState(_:)();
  v31(v6, v7);
  sub_100017D5C(v5, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_100016590(v5, v4);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 3272);
    v11 = *(v0 + 3264);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 136315138;
    v14 = *(v0 + 192);
    *(v0 + 640) = *(v0 + 176);
    *(v0 + 656) = v14;
    *(v0 + 672) = *(v0 + 208);
    v15 = *(v0 + 128);
    *(v0 + 576) = *(v0 + 112);
    *(v0 + 592) = v15;
    v16 = *(v0 + 160);
    *(v0 + 608) = *(v0 + 144);
    *(v0 + 624) = v16;
    v17 = *(v0 + 64);
    *(v0 + 512) = *(v0 + 48);
    *(v0 + 528) = v17;
    v18 = *(v0 + 96);
    *(v0 + 544) = *(v0 + 80);
    *(v0 + 560) = v18;
    v19 = *(v0 + 32);
    *(v0 + 480) = *(v0 + 16);
    *(v0 + 496) = v19;
    sub_100017D5C(v11, v10);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000136BC(v20, v21, &v32);

    *(v12 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "Sent command: %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Wrote Pairing Complete", v25, 2u);
  }

  v26 = *(v0 + 3408);
  v27 = *(v0 + 3400);
  sub_100016590(*(v0 + 3264), *(v0 + 3272));
  sub_100016590(v27, v26);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100C43038()
{
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B8F00);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on pairing stats gathering: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = sub_100C45C3C(sub_100011134);
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  *(v0 + 3256) = sub_1000076D4(v1, qword_1016B8F00);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "nextKeyRollInterval = %u", v10, 8u);
  }

  *(v0 + 276) = v7;
  sub_100101824();
  FixedWidthInteger.data.getter();
  sub_1003CD9CC();
  BinaryDecodable.init(data:)();
  v11 = *(v0 + 3088);
  v12 = *(v0 + 2976);
  *(v0 + 3264) = v12;
  v13 = *(v0 + 2984);
  *(v0 + 3272) = v13;
  *(v0 + 16) = v12;
  *(v0 + 24) = v13;
  sub_100C45E20(v0 + 16);
  ObjectType = swift_getObjectType();
  *(v0 + 3280) = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v15 = swift_task_alloc();
  *(v0 + 3288) = v15;
  *v15 = v0;
  v15[1] = sub_100C4238C;
  v16 = *(v0 + 3064);

  return dispatch thunk of ServiceProtocol.subscript.getter(v16, ObjectType, v11);
}

uint64_t sub_100C43468()
{
  sub_100016590(*(v0 + 3144), *(v0 + 3152));
  swift_unknownObjectRelease();
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B8F00);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on pairing stats gathering: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = sub_100C45C3C(sub_100011134);
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  *(v0 + 3256) = sub_1000076D4(v1, qword_1016B8F00);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "nextKeyRollInterval = %u", v10, 8u);
  }

  *(v0 + 276) = v7;
  sub_100101824();
  FixedWidthInteger.data.getter();
  sub_1003CD9CC();
  BinaryDecodable.init(data:)();
  v11 = *(v0 + 3088);
  v12 = *(v0 + 2976);
  *(v0 + 3264) = v12;
  v13 = *(v0 + 2984);
  *(v0 + 3272) = v13;
  *(v0 + 16) = v12;
  *(v0 + 24) = v13;
  sub_100C45E20(v0 + 16);
  ObjectType = swift_getObjectType();
  *(v0 + 3280) = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v15 = swift_task_alloc();
  *(v0 + 3288) = v15;
  *v15 = v0;
  v15[1] = sub_100C4238C;
  v16 = *(v0 + 3064);

  return dispatch thunk of ServiceProtocol.subscript.getter(v16, ObjectType, v11);
}

uint64_t sub_100C438B0()
{
  sub_100016590(*(v0 + 3144), *(v0 + 3152));
  swift_unknownObjectRelease();
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B8F00);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on pairing stats gathering: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = sub_100C45C3C(sub_100011134);
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  *(v0 + 3256) = sub_1000076D4(v1, qword_1016B8F00);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "nextKeyRollInterval = %u", v10, 8u);
  }

  *(v0 + 276) = v7;
  sub_100101824();
  FixedWidthInteger.data.getter();
  sub_1003CD9CC();
  BinaryDecodable.init(data:)();
  v11 = *(v0 + 3088);
  v12 = *(v0 + 2976);
  *(v0 + 3264) = v12;
  v13 = *(v0 + 2984);
  *(v0 + 3272) = v13;
  *(v0 + 16) = v12;
  *(v0 + 24) = v13;
  sub_100C45E20(v0 + 16);
  ObjectType = swift_getObjectType();
  *(v0 + 3280) = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v15 = swift_task_alloc();
  *(v0 + 3288) = v15;
  *v15 = v0;
  v15[1] = sub_100C4238C;
  v16 = *(v0 + 3064);

  return dispatch thunk of ServiceProtocol.subscript.getter(v16, ObjectType, v11);
}

uint64_t sub_100C43CF8()
{
  sub_100016590(*(v0 + 3144), *(v0 + 3152));
  swift_unknownObjectRelease();
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B8F00);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on pairing stats gathering: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = sub_100C45C3C(sub_100011134);
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  *(v0 + 3256) = sub_1000076D4(v1, qword_1016B8F00);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "nextKeyRollInterval = %u", v10, 8u);
  }

  *(v0 + 276) = v7;
  sub_100101824();
  FixedWidthInteger.data.getter();
  sub_1003CD9CC();
  BinaryDecodable.init(data:)();
  v11 = *(v0 + 3088);
  v12 = *(v0 + 2976);
  *(v0 + 3264) = v12;
  v13 = *(v0 + 2984);
  *(v0 + 3272) = v13;
  *(v0 + 16) = v12;
  *(v0 + 24) = v13;
  sub_100C45E20(v0 + 16);
  ObjectType = swift_getObjectType();
  *(v0 + 3280) = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v15 = swift_task_alloc();
  *(v0 + 3288) = v15;
  *v15 = v0;
  v15[1] = sub_100C4238C;
  v16 = *(v0 + 3064);

  return dispatch thunk of ServiceProtocol.subscript.getter(v16, ObjectType, v11);
}

uint64_t sub_100C44140()
{
  v1 = v0[409];
  v2 = v0[408];
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C441EC()
{
  v1 = v0[409];
  v2 = v0[408];
  sub_100016590(v0[425], v0[426]);
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C442B4()
{
  v1 = v0[426];
  v2 = v0[425];
  v3 = v0[409];
  v4 = v0[408];

  sub_100016590(v2, v1);
  swift_unknownObjectRelease();
  sub_100016590(v4, v3);
  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C44394()
{
  *(v1 + 1456) = v0;
  sub_1000BC4D4(&qword_1016B91A8, &unk_1013E1310);
  *(v1 + 1464) = swift_task_alloc();

  return _swift_task_switch(sub_100C44430, v0, 0);
}

uint64_t sub_100C44430()
{
  v17 = v0;
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[184] = sub_1000076D4(v1, qword_1016B8F00);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0x41676E6972696170, 0xEC00000029286B63, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0[182] + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingInfo);
  v7 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken);
  v8 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken + 8);

  sub_10002E98C(v7, v8);
  sub_100F514E8(v7, v8, v0 + 36);
  memcpy(v0 + 70, v0 + 36, 0x110uLL);
  sub_100006654(v7, v8);

  memcpy(v0 + 2, v0 + 36, 0x110uLL);
  if (sub_1001010A8((v0 + 2)) == 1)
  {
    sub_100C45B4C();
    swift_allocError();
    *v9 = 11;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = *(v0[182] + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_validator + 8);
    ObjectType = swift_getObjectType();
    v0[180] = &type metadata for AirPodsLEPairingAckData;
    v0[181] = sub_100164118();
    v14 = swift_allocObject();
    v0[177] = v14;
    memcpy((v14 + 16), v0 + 2, 0x110uLL);
    memcpy(v0 + 104, v0 + 70, 0x110uLL);
    sub_100164F7C((v0 + 104), (v0 + 138));
    v15 = swift_task_alloc();
    v0[185] = v15;
    *v15 = v0;
    v15[1] = sub_100C4476C;

    return dispatch thunk of PairingValidator.ack(_:)(v0 + 172, v0 + 177, ObjectType, v12);
  }
}

uint64_t sub_100C4476C()
{
  v2 = *v1;
  *(*v1 + 1488) = v0;

  if (v0)
  {
    v3 = *(v2 + 1456);
    v4 = sub_100C44AC0;
  }

  else
  {
    v5 = *(v2 + 1456);
    sub_100007BAC((v2 + 1416));
    v4 = sub_100C44894;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C44894()
{
  sub_1000BC4D4(&qword_1016A12F8, &unk_1013A51E0);
  v1 = type metadata accessor for AirPodsLEPairingLockAckResponse(0);
  v2 = swift_dynamicCast();
  v3 = *(*(v1 - 8) + 56);
  if (v2)
  {
    v4 = *(v0 + 1464);
    v3(v4, 0, 1, v1);
    sub_10000B3A8(v4, &qword_1016B91A8, &unk_1013E1310);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Pairing ack completed successfully!", v7, 2u);
    }

    sub_10000B3A8(v0 + 288, &qword_1016993B8, &unk_101391960);

    v8 = *(v0 + 8);
  }

  else
  {
    v9 = *(v0 + 1464);
    v3(v9, 1, 1, v1);
    sub_10000B3A8(v9, &qword_1016B91A8, &unk_1013E1310);
    sub_100C45B4C();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    sub_10000B3A8(v0 + 288, &qword_1016993B8, &unk_101391960);

    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t sub_100C44AC0()
{
  sub_10000B3A8(v0 + 288, &qword_1016993B8, &unk_101391960);
  sub_100007BAC((v0 + 1416));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C44B44()
{
  v1 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_state;
  v4 = type metadata accessor for PairingExecutorState();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  memcpy(__dst, (v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingCheckData), 0x160uLL);
  sub_10000B3A8(__dst, &qword_1016993B0, &unk_1013E1330);

  swift_unknownObjectRelease();
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_peripheral, &qword_1016A12E8, &qword_1013A51D8);
  sub_10048EAA4(*(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 8), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 16), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 24), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 32), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 40), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 48), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 56), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 64), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 72), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 80));
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingConfiguration, &qword_1016A12E0, &qword_1013A51D0);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconRecordIdentifier, &qword_1016980D0, &unk_10138F3B0);
  v5 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_encoder;
  v6 = type metadata accessor for BinaryEncoder();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_decoder;
  v8 = type metadata accessor for BinaryDecoder();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100C44DB4()
{
  sub_100C44B44();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ProximityPairingExecutor(uint64_t a1)
{
  result = qword_1016B8F70;
  if (!qword_1016B8F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C44E34(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PairingExecutorState();
    if (v2 <= 0x3F)
    {
      sub_100395648(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for BinaryEncoder();
        if (v4 <= 0x3F)
        {
          type metadata accessor for BinaryDecoder();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_100C450AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_identifier;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100C451E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingConfiguration;
  swift_beginAccess();
  sub_10002311C(a1, v1 + v3, &qword_1016A12E0, &qword_1013A51D0);
  return swift_endAccess();
}

uint64_t sub_100C452EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconRecordIdentifier;
  swift_beginAccess();
  return sub_1000D2A70(v1 + v3, a1, &qword_1016980D0, &unk_10138F3B0);
}

uint64_t sub_100C45354(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconRecordIdentifier;
  swift_beginAccess();
  sub_10002311C(a1, v1 + v3, &qword_1016980D0, &unk_10138F3B0);
  return swift_endAccess();
}

uint64_t sub_100C45424(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ProximityPairingExecutor(0);

  return PairingExecutor.stream()(v3, a2);
}

uint64_t sub_100C45470(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100C3566C(a1);
}

uint64_t sub_100C45504()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C3A5DC();
}

uint64_t sub_100C45590(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100C3F408(a1);
}

uint64_t sub_100C45628()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C40578();
}

uint64_t sub_100C456B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C44394();
}

uint64_t sub_100C45740@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_state;
  swift_beginAccess();
  v4 = type metadata accessor for PairingExecutorState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100C457C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_state;
  swift_beginAccess();
  v4 = type metadata accessor for PairingExecutorState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double sub_100C458B8()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100C45900(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_stateHistory;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100C459B8(uint64_t a1)
{
  type metadata accessor for ProximityPairingExecutor(0);
  sub_100C4600C(&qword_1016B75C0, type metadata accessor for ProximityPairingExecutor, &unk_1013E1218);

  return PairingExecutor.setState(_:)();
}