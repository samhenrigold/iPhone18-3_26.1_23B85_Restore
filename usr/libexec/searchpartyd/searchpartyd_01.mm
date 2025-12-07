uint64_t sub_100018B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100018C40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100018CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100018D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100018D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100018DE0(unsigned int a1)
{
  _StringGuts.grow(_:)(53);
  v2._countAndFlagsBits = 0x203A657079747BLL;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3 = (a1 >> 4) & 3;
  v4 = 0x6579656B776168;
  v5 = 0xE400000000000000;
  if (v3 == 2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v4 = 1701602664;
  }

  v6 = 0x656C707061;
  v7 = 0xE600000000000000;
  if (v3)
  {
    v6 = 0x6E6169727564;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (((a1 >> 4) & 3) <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (((a1 >> 4) & 3) <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11._countAndFlagsBits = 0x726574746162202CLL;
  v11._object = 0xEB00000000203A79;
  String.append(_:)(v11);
  v12 = 1751607656;
  v13 = 0xE300000000000000;
  v14 = 7827308;
  if (a1 >> 6 != 2)
  {
    v14 = 0x6C61636974697263;
    v13 = 0xE800000000000000;
  }

  v15 = 0xE600000000000000;
  if (a1 >> 6)
  {
    v12 = 0x6D756964656DLL;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  if ((a1 >> 6) <= 1u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  if ((a1 >> 6) <= 1u)
  {
    v17 = v15;
  }

  else
  {
    v17 = v13;
  }

  v18 = v17;
  String.append(_:)(*&v16);

  v19._countAndFlagsBits = 0x61746E69616D202CLL;
  v19._object = 0xEE00203A64656E69;
  String.append(_:)(v19);
  sub_1000198E8();
  v20 = FixedWidthInteger.BOOLValue.getter();
  v21 = (v20 & 1) == 0;
  if (v20)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  v24 = v23;
  String.append(_:)(*&v22);

  v25._countAndFlagsBits = 0x617069746C756D20;
  v25._object = 0xEC000000203A7472;
  String.append(_:)(v25);
  v26 = sub_10001993C(a1 & 0xB);
  v27._countAndFlagsBits = sub_100019E48(v26 & 0x10101FF);
  String.append(_:)(v27);

  v28._countAndFlagsBits = 125;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  return 0;
}

uint64_t sub_10001904C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MACAddress();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) == 0)
  {
    strcpy(v18, ".wild(advt: ");
    BYTE5(v18[1]) = 0;
    HIWORD(v18[1]) = -5120;
    v16 = a1;
    v17 = a2;
    sub_10002EE9C();
LABEL_5:
    v14._countAndFlagsBits = RawRepresentable<>.hexString.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    return v18[0];
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v18[0] = 0xD000000000000014;
  v18[1] = 0x800000010134FD60;
  sub_100017D5C(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  MACAddress.init(addressToSanitize:type:)();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_100019D0C(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    (*(v8 + 8))(v10, v7);
    v13._countAndFlagsBits = 0x203A74766461202CLL;
    v13._object = 0xE800000000000000;
    String.append(_:)(v13);
    v16 = a1;
    v17 = a2 & 0xDFFFFFFFFFFFFFFFLL;
    sub_100019D9C();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100019300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019348(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100019390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000193D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000194B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000194F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019588(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000195D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000196A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000196F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019738(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000197C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000198A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000198E8()
{
  result = qword_101697350;
  if (!qword_101697350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697350);
  }

  return result;
}

uint64_t sub_10001993C(int a1)
{
  v2 = type metadata accessor for Bit();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v31 = a1;
  sub_1000198E8();
  result = FixedWidthInteger.bits()();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = result;
  v19 = a1;
  v11 = *(v3 + 16);
  v20 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v23 = v11;
  (v11)(v8);
  v12 = *(v3 + 104);
  v22 = enum case for Bit.one(_:);
  v21 = v12;
  v12(v6);
  sub_100019DF0();
  v24 = v10;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v3 + 8);
  v13(v6, v2);
  result = (v13)(v8, v2);
  if (*(v24 + 16) < 2uLL)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = v29;
  v18 = v30;
  v14 = *(v3 + 72);
  v23(v8, v20 + v14, v2);
  v21(v6, v22, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = v24;
  v13(v6, v2);
  result = (v13)(v8, v2);
  if (*(v15 + 16) >= 4uLL)
  {
    v16 = v28 == v27;
    v18 = v18 == v17;
    v23(v8, v20 + 3 * v14, v2);

    v21(v6, v22, v2);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v13(v6, v2);
    v13(v8, v2);
    return v19 & 0xB | (v18 << 8) | (v16 << 16) | ((v26 == v25) << 24);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100019CF0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100019D0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019D54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100019D9C()
{
  result = qword_10169CAD8;
  if (!qword_10169CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CAD8);
  }

  return result;
}

unint64_t sub_100019DF0()
{
  result = qword_101698660;
  if (!qword_101698660)
  {
    type metadata accessor for Bit();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698660);
  }

  return result;
}

uint64_t sub_100019E48(unsigned int a1)
{
  Bool.intValue.getter();
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  Bool.intValue.getter();
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  Bool.intValue.getter();
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return v4;
}

uint64_t sub_100019F1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100019FF0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for ObservedAdvertisement(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v2[23] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[24] = v5;
  *v5 = v2;
  v5[1] = sub_10001A62C;

  return sub_10001A268(a1);
}

uint64_t sub_10001A268(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for BeaconStatus(0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v2[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for MACAddress();
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v2[15] = *(v6 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10001A43C, v1, 0);
}

uint64_t sub_10001A43C()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v0[18] = v2;
  v3 = *(v1 + 24);
  v0[19] = v3;
  if ((v3 & 0x2000000000000000) != 0)
  {
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B5D8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Not a wild advertisement - ignoring wild mode association record update.", v8, 2u);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_100017D5C(v2, v3);
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_10002EEF0;

    return daemon.getter();
  }
}

uint64_t sub_10001A61C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_100017D5C(v2, v3);
}

uint64_t sub_10001A62C()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_10001A73C, v1, 0);
}

uint64_t sub_10001A73C()
{
  v1 = v0[3];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_10002AF84;
  v5 = v0[22];

  return sub_10001A7EC(v5, v3, v2);
}

uint64_t sub_10001A7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[14] = v6;
  *v6 = v4;
  v6[1] = sub_10001A934;

  return daemon.getter();
}

uint64_t sub_10001A934(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[15] = a1;

  v3 = swift_task_alloc();
  v2[16] = v3;
  v4 = type metadata accessor for Daemon();
  v2[17] = v4;
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[18] = v6;
  v7 = sub_100019588(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_10001AB38;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10001AB38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 152) = a1;

  if (v1)
  {
    v5 = *(v3 + 48);

    return _swift_task_switch(sub_1000208B0, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    *(v3 + 160) = v6;
    *v6 = v4;
    v6[1] = sub_10001ACE8;

    return daemon.getter();
  }
}

uint64_t sub_10001ACE8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 168) = a1;

  v5 = swift_task_alloc();
  *(v3 + 176) = v5;
  v6 = type metadata accessor for LegacyServiceContainer();
  v7 = sub_100019588(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v5 = v4;
  v5[1] = sub_10001AE9C;
  v8 = *(v2 + 144);
  v9 = *(v2 + 136);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10001AE9C(uint64_t a1)
{
  v4 = *v2;
  v4[23] = a1;
  v4[24] = v1;

  if (v1)
  {

    v5 = v4[6];
    v6 = sub_1008E2734;
  }

  else
  {
    v6 = sub_10001AFE0;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10001AFE0()
{
  v1 = *(v0 + 192);
  sub_10001B108();
  *(v0 + 200) = v2;
  if (v1)
  {

    sub_100019588(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_1008E26C0;
  }

  else
  {
    sub_100019588(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_10001F3B8;
  }

  return _swift_task_switch(v6, v3, v5);
}

void sub_10001B108()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      sub_10001F280(v4, v6);
      sub_1000BC4D4(&qword_10169EF08, &qword_10139FBE8);
      type metadata accessor for BeaconManagerService(0);
      if (swift_dynamicCast())
      {
        return;
      }

      ++v3;
      v4 += 40;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    sub_1003BE54C();
    swift_allocError();
    *v5 = 0xD000000000000014;
    v5[1] = 0x800000010134D3C0;
    swift_willThrow();
  }
}

uint64_t sub_10001B21C()
{
  v62 = v0;
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  sub_1000D2A70(v0[11] + *(v0[15] + 52), v3, &qword_101699DB0, &unk_101393100);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[26], &qword_101699DB0, &unk_101393100);

    v4 = v0[1];

    return v4();
  }

  v6 = v0[31];
  v7 = v0[25];
  v8 = v0[23];
  v9 = v0[12];
  sub_100018118(v0[26], v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v10 = getuid();
  sub_1000294F0(v10);
  v11 = *(v8 + 20);
  v12 = type metadata accessor for UUID();
  v0[32] = v12;
  (*(*(v12 - 8) + 16))(v7 + v11, v6, v12);
  v13 = OBJC_IVAR____TtC12searchpartyd25AdvertisementCacheService_lastAdvertisementCache;
  swift_beginAccess();
  v14 = *(v9 + v13);
  if (*(v14 + 16))
  {
    v15 = v0[25];

    v16 = sub_100038994(v15);
    if (v17)
    {
      v19 = v0[21];
      v18 = v0[22];
      sub_10002963C(*(v14 + 56) + *(v0[16] + 72) * v16, v19, type metadata accessor for ObservedAdvertisement);

      sub_100018118(v19, v18, type metadata accessor for ObservedAdvertisement);
      goto LABEL_10;
    }
  }

  v20 = v0[24];
  v21 = v0[22];
  v22 = v0[15];
  v23 = v0[16];
  v24 = v0[14];
  v25 = v0[11];
  sub_10002963C(v0[25], v20, type metadata accessor for BeaconIdentifier);
  sub_10002963C(v25, v24, type metadata accessor for ObservedAdvertisement);
  (*(v23 + 56))(v24, 0, 1, v22);
  swift_beginAccess();
  sub_100038C24(v24, v20);
  swift_endAccess();
  sub_10002963C(v25, v21, type metadata accessor for ObservedAdvertisement);
LABEL_10:
  type metadata accessor for Date();
  sub_100019588(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v26 = v0[22];
    v28 = v0[19];
    v27 = v0[20];
    v30 = v0[17];
    v29 = v0[18];
    v31 = v0[11];
    v32 = type metadata accessor for Logger();
    sub_1000076D4(v32, qword_10177B5D8);
    sub_10002963C(v31, v27, type metadata accessor for ObservedAdvertisement);
    sub_10002963C(v26, v28, type metadata accessor for ObservedAdvertisement);
    sub_10002963C(v31, v29, type metadata accessor for ObservedAdvertisement);
    sub_10002963C(v26, v30, type metadata accessor for ObservedAdvertisement);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v35 = os_log_type_enabled(v33, v34);
    v37 = v0[19];
    v36 = v0[20];
    v38 = v0[17];
    v39 = v0[18];
    if (v35)
    {
      v40 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v40 = 136315906;
      v41 = sub_100018680();
      v60 = v34;
      v43 = v42;
      sub_10001F210(v36, type metadata accessor for ObservedAdvertisement);
      v44 = sub_1000136BC(v41, v43, &v61);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v45 = sub_100018680();
      v47 = v46;
      sub_10001F210(v37, type metadata accessor for ObservedAdvertisement);
      v48 = sub_1000136BC(v45, v47, &v61);

      *(v40 + 14) = v48;
      *(v40 + 22) = 2048;
      v49 = Date.epoch.getter();
      sub_10001F210(v39, type metadata accessor for ObservedAdvertisement);
      *(v40 + 24) = v49;
      *(v40 + 32) = 2048;
      v50 = Date.epoch.getter();
      sub_10001F210(v38, type metadata accessor for ObservedAdvertisement);
      *(v40 + 34) = v50;
      _os_log_impl(&_mh_execute_header, v33, v60, "Not caching because observation with equal or newer scanDate already cached.\nobserved: %s\nexisting: %s\nepochs: [observed: %lld, existing: %lld]", v40, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      sub_10001F210(v0[17], type metadata accessor for ObservedAdvertisement);
      sub_10001F210(v39, type metadata accessor for ObservedAdvertisement);

      sub_10001F210(v37, type metadata accessor for ObservedAdvertisement);
      sub_10001F210(v36, type metadata accessor for ObservedAdvertisement);
    }

    v58 = swift_task_alloc();
    v0[34] = v58;
    *v58 = v0;
    v58[1] = sub_100039558;
    v59 = v0[31];

    return sub_100036DE8(v59);
  }

  else
  {
    v51 = v0[24];
    v52 = v0[15];
    v53 = v0[16];
    v54 = v0[14];
    v55 = v0[11];
    sub_10002963C(v0[25], v51, type metadata accessor for BeaconIdentifier);
    sub_10002963C(v55, v54, type metadata accessor for ObservedAdvertisement);
    (*(v53 + 56))(v54, 0, 1, v52);
    swift_beginAccess();
    sub_100038C24(v54, v51);
    swift_endAccess();
    v56 = swift_task_alloc();
    v0[33] = v56;
    *v56 = v0;
    v56[1] = sub_10003676C;
    v57 = v0[11];

    return sub_1000391C0(v57);
  }
}

uint64_t sub_10001BA08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001BA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001BAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001BB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001BBA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001BC08()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    v3 = v2[3];

    return _swift_task_switch(sub_1008E3178, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[23] = v4;
    *v4 = v2;
    v4[1] = sub_10001BFA0;
    v5 = v2[2];

    return sub_10001BD78(v5);
  }
}

uint64_t sub_10001BD78(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v3 = type metadata accessor for ObservedAdvertisement(0);
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = type metadata accessor for BeaconIdentifier(0);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10001B21C, v1, 0);
}

uint64_t sub_10001BFA0()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10001C0B0, v1, 0);
}

uint64_t sub_10001C0B0()
{
  v31 = v0;
  ContinuousClock.now.getter();
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B5D8);
  v8 = *(v6 + 16);
  v8(v3, v2, v5);
  v8(v4, v1, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[9];
  v12 = v0[10];
  v15 = v0[7];
  v14 = v0[8];
  if (v11)
  {
    v17 = v0[5];
    v16 = v0[6];
    v27 = v0[4];
    v29 = v10;
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v18 = 136446210;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100019588(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    v26 = static Duration.description<A>(_:_:units:)();
    v20 = v19;
    (*(v17 + 8))(v16, v27);
    v21 = *(v14 + 8);
    v21(v13, v15);
    v21(v12, v15);
    v22 = sub_1000136BC(v26, v20, &v30);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v9, v29, "insert(observedAdvertisement:): %{public}s", v18, 0xCu);
    sub_100007BAC(v28);
  }

  else
  {

    v21 = *(v14 + 8);
    v21(v13, v15);
    v21(v12, v15);
  }

  v0[24] = v21;
  v23 = swift_task_alloc();
  v0[25] = v23;
  *v23 = v0;
  v23[1] = sub_10001C7FC;
  v24 = v0[2];

  return sub_10001C3B4(v24);
}

uint64_t sub_10001C3B4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v2[19] = swift_task_alloc();
  v7 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_10001C634, v1, 0);
}

uint64_t sub_10001C634()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[4];
  v5 = type metadata accessor for ObservedAdvertisement(0);
  sub_1000D2A70(v4 + *(v5 + 52), v3, &qword_101699DB0, &unk_101393100);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[19], &qword_101699DB0, &unk_101393100);

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_100018118(v0[19], v0[23], type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_10004444C;

    return daemon.getter();
  }
}

uint64_t sub_10001C7FC()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {
    v3 = v2[3];

    return _swift_task_switch(sub_1008E3278, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[27] = v4;
    *v4 = v2;
    v4[1] = sub_10001D8F4;

    return sub_10001C968();
  }
}

uint64_t sub_10001C968()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001C9FC;

  return daemon.getter();
}

uint64_t sub_10001C9FC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[4] = a1;

  v3 = swift_task_alloc();
  v2[5] = v3;
  v4 = type metadata accessor for Daemon();
  v2[6] = v4;
  MyNetworkPublishActivityService = type metadata accessor for FindMyNetworkPublishActivityService();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[7] = v6;
  v7 = sub_100019588(&qword_101696C78, type metadata accessor for FindMyNetworkPublishActivityService, &unk_10138B4E8);
  *v3 = v9;
  v3[1] = sub_10001CC94;

  return ActorServiceDaemon.getService<A>()(v4, MyNetworkPublishActivityService, v6, v7);
}

uint64_t sub_10001CC00(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001CC94(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = swift_task_alloc();
    v4[10] = v6;
    *v6 = v5;
    v6[1] = sub_10001D5B0;

    return daemon.getter();
  }

  else
  {

    v4[8] = a1;
    v7 = swift_task_alloc();
    v4[9] = v7;
    *v7 = v5;
    v7[1] = sub_10001D408;

    return sub_10001CE74();
  }
}

uint64_t sub_10001CE74()
{
  v1[6] = v0;
  v2 = type metadata accessor for XPCActivity.State();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001CF34, v0, 0);
}

uint64_t sub_10001CF34()
{
  v1 = *(v0 + 48);
  if (*(v1 + 176) == 1)
  {
    *(v1 + 176) = 0;
    swift_beginAccess();
    v2 = *(v1 + 168);
    *(v0 + 80) = v2;
    v3 = *(v2 + 32);
    *(v0 + 120) = v3;
    v4 = -1;
    v5 = -1 << v3;
    if (-(-1 << v3) < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v2 + 64);

    if (v6)
    {
      v8 = 0;
LABEL_17:
      *(v0 + 88) = v6;
      *(v0 + 96) = v8;
      v16 = __clz(__rbit64(v6)) | (v8 << 6);
      v17 = *(*(v7 + 48) + v16);
      *(v0 + 104) = *(*(v7 + 56) + 8 * v16);
      v18 = qword_101694428;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000076D4(v19, qword_10177A488);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_42;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *(v0 + 40) = v23;
      *v22 = 136446210;
      if (v17 > 3)
      {
        if (v17 > 5)
        {
          if (v17 != 6)
          {
            if (v17 == 7)
            {
              v24 = 0xEF79627261654E6ELL;
              v25 = 0x6F696E61706D6F63;
            }

            else
            {
              v24 = 0xEF646E756F466E65;
              v25 = 0x6857796669746F6ELL;
            }

            goto LABEL_41;
          }

          v24 = 0xEF6C6C65436E4F79;
          goto LABEL_39;
        }

        if (v17 != 4)
        {
          v24 = 0xEF694669576E4F79;
LABEL_39:
          v26 = 0x747461426E6FLL;
          goto LABEL_40;
        }

        v27 = 0x6C6C65436ELL;
        goto LABEL_36;
      }

      if (v17 > 1)
      {
        if (v17 != 2)
        {
          v27 = 0x694669576ELL;
LABEL_36:
          v24 = v27 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          v25 = 0x4F7265776F506E6FLL;
          goto LABEL_41;
        }

        v24 = 0xE900000000000072;
        v25 = 0x65776F5068676968;
      }

      else
      {
        if (!v17)
        {
          v24 = 0xE800000000000000;
          v26 = 0x776F50776F6CLL;
LABEL_40:
          v25 = v26 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          goto LABEL_41;
        }

        v24 = 0xEB00000000726577;
        v25 = 0x6F506D756964656DLL;
      }

LABEL_41:
      v28 = sub_1000136BC(v25, v24, (v0 + 40));

      *(v22 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "FindMyNetworkPublishActivityService updateCriteria %{public}s.", v22, 0xCu);
      sub_100007BAC(v23);

LABEL_42:

      v31 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
      v29 = swift_task_alloc();
      *(v0 + 112) = v29;
      *v29 = v0;
      v29[1] = sub_1000D67F8;
      v30 = *(v0 + 72);

      return v31(v30);
    }

    v15 = 0;
    while (((63 - v5) >> 6) - 1 != v15)
    {
      v8 = v15 + 1;
      v6 = *(v7 + 8 * v15++ + 72);
      if (v6)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (qword_101694428 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177A488);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "FindMyNetworkPublishActivityService maintaining existing criteria.", v12, 2u);
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10001D408()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10001D518, v1, 0);
}

uint64_t sub_10001D518()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_10001D5B0;

  return daemon.getter();
}

uint64_t sub_10001D5B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 88) = a1;

  v5 = swift_task_alloc();
  *(v3 + 96) = v5;
  v6 = type metadata accessor for CompanionPublishActivity();
  v7 = sub_100019588(&qword_1016A00B0, type metadata accessor for CompanionPublishActivity, a9);
  *v5 = v4;
  v5[1] = sub_10001D788;
  v8 = *(v2 + 56);
  v9 = *(v2 + 48);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10001D788(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 16);

    *(v4 + 104) = a1;

    return _swift_task_switch(sub_10001BA08, v8, 0);
  }
}

uint64_t sub_10001D8F4()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10001DA04, v1, 0);
}

uint64_t sub_10001DA04()
{
  v1 = v0[24];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[7];

  v1(v6, v7);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10001DB18()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1008EAD80;
  }

  else
  {
    v4 = sub_10001DC44;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10001DC44()
{
  v1 = v0[22];
  v2 = v0[23];
  sub_10001F210(v0[8], type metadata accessor for ObservedAdvertisement);
  sub_10000B3A8(v1, &unk_1016C1120, &qword_1013C49D0);
  sub_10000B3A8(v2, &qword_101699DB0, &unk_101393100);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001DDBC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100260D78;
  }

  else
  {
    v2 = sub_10001DED0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001DED0()
{
  v31 = v1;
  v2 = *(v1 + 80);

  sub_100018CA0(v2, type metadata accessor for ObservedAdvertisement);
  v3 = *(v1 + 104);
  if (v3 == *(v1 + 88))
  {
LABEL_2:
    (*(v1 + 24))(0);

    v4 = *(v1 + 8);

    return v4();
  }

  else
  {
    while (1)
    {
      v6 = *(v1 + 16);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v7 = *(v6 + 8 * v3 + 32);
      }

      *(v1 + 96) = v7;
      *(v1 + 104) = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v8 = *(v1 + 56);
      v9 = *(v1 + 64);
      v10 = *(v1 + 48);
      v0 = v7;
      sub_1000166F0(v0, 1, v10);
      if ((*(v9 + 48))(v10, 1, v8) != 1)
      {
        break;
      }

      sub_10000B3A8(*(v1 + 48), &unk_10169BB50, &unk_101395760);
      if (qword_1016944F0 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_10177A7D8);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Error inserting observedAdvertisement: could not convert to ObservedAdvertisement.", v14, 2u);
      }

      v3 = *(v1 + 104);
      if (v3 == *(v1 + 88))
      {
        goto LABEL_2;
      }
    }

    sub_10001854C(*(v1 + 48), *(v1 + 80), type metadata accessor for ObservedAdvertisement);
    if (qword_1016944F0 == -1)
    {
      goto LABEL_18;
    }

LABEL_26:
    swift_once();
LABEL_18:
    v16 = *(v1 + 72);
    v15 = *(v1 + 80);
    v17 = type metadata accessor for Logger();
    *(v1 + 112) = sub_1000076D4(v17, qword_10177A7D8);
    sub_10001861C(v15, v16);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v1 + 72);
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      v24 = sub_100018680();
      v26 = v25;
      sub_100018CA0(v21, type metadata accessor for ObservedAdvertisement);
      v27 = sub_1000136BC(v24, v26, &v30);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "observedAdvertisement: %s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    else
    {

      sub_100018CA0(v21, type metadata accessor for ObservedAdvertisement);
    }

    [v0 refreshGeotag];
    [v0 observationValue];
    v28 = swift_task_alloc();
    *(v1 + 120) = v28;
    *v28 = v1;
    v28[1] = sub_10001DDBC;
    v29 = *(v1 + 80);

    return sub_100019FF0(v29);
  }
}

void sub_10001E378(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_10001E3DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for KeyGenerationBeaconInfo(uint64_t a1)
{
  result = qword_1016B0E98;
  if (!qword_1016B0E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E52C(uint64_t a1, uint64_t a2)
{
  v72 = type metadata accessor for Table();
  v58 = *(v72 - 8);
  v4 = __chkstk_darwin(v72);
  v69 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = v56 - v6;
  v7 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v71 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v74 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v56 - v10;
  v12 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v56 - v16;
  v18 = type metadata accessor for Row();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v68 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v61 = v56 - v23;
  __chkstk_darwin(v22);
  v62 = v56 - v24;
  v73 = a2;
  v25 = sub_100028E90();
  if (!v25)
  {
    sub_10020223C();
    swift_allocError();
    *v29 = 2;
    *(v29 + 4) = 1;
    return swift_willThrow();
  }

  v26 = v25;
  v27 = Connection.prepare(_:)();
  if (v2)
  {
  }

  v57 = v19;
  v59 = v11;
  v60 = v17;
  v30 = v27;

  v31 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v75 = _swiftEmptyArrayStorage;
  sub_10003301C(0, v31 & ~(v31 >> 63), 0);
  v32 = v75;
  v56[2] = v30;
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v70 = result;
  if (v31 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v56[1] = v26;
  if (v31)
  {
    v66 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
    v67 = (v57 + 48);
    v33 = (v57 + 16);
    v64 = (v57 + 8);
    v65 = (v58 + 16);
    do
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v67)(v15, 1, v18);
      if (result == 1)
      {
        goto LABEL_21;
      }

      v34 = v69;
      (*v65)(v69, &v66[v73], v72);
      v35 = v68;
      (*v33)(v68, v15, v18);
      sub_10003323C(v34, v35, v74);
      (*v64)(v15, v18);
      v75 = v32;
      v37 = v32[2];
      v36 = v32[3];
      if (v37 >= v36 >> 1)
      {
        sub_10003301C((v36 > 1), v37 + 1, 1);
        v32 = v75;
      }

      v32[2] = v37 + 1;
      sub_100033DFC(v74, v32 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v37);
    }

    while (--v31);
  }

  v74 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v38 = v60;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v39 = v57;
  v40 = v38;
  v68 = *(v57 + 48);
  v69 = (v57 + 48);
  if ((v68)(v38, 1, v18) == 1)
  {
    v41 = v38;
  }

  else
  {
    v44 = *(v39 + 32);
    v43 = v39 + 32;
    v45 = v59;
    v65 = (v58 + 16);
    v66 = v44;
    v46 = (v43 - 16);
    v67 = (v43 - 24);
    v41 = v40;
    do
    {
      v47 = v62;
      (v66)(v62, v41, v18);
      v48 = v63;
      (*v65)(v63, (v73 + v74), v72);
      v49 = v61;
      (*v46)(v61, v47, v18);
      sub_10003323C(v48, v49, v45);
      v50 = v43;
      (*v67)(v47, v18);
      v75 = v32;
      v51 = v18;
      v53 = v32[2];
      v52 = v32[3];
      if (v53 >= v52 >> 1)
      {
        sub_10003301C((v52 > 1), v53 + 1, 1);
        v32 = v75;
      }

      v32[2] = v53 + 1;
      v45 = v59;
      sub_100033DFC(v59, v32 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v53);
      v54 = v60;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v55 = (v68)(v54, 1, v51);
      v18 = v51;
      v41 = v54;
      v43 = v50;
    }

    while (v55 != 1);
  }

  v42 = v41;

  sub_10000B3A8(v42, &qword_101699D68, &unk_1013B6450);
  sub_1000BC4D4(&qword_1016B13E0, &qword_1013D09F0);
  result = swift_allocObject();
  *(result + 16) = v32;
  return result;
}

uint64_t sub_10001ECA8()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t sub_10001ECD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Connection.TransactionMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100027FA4();
  if (v8)
  {
    v9 = __chkstk_darwin(v8);
    v12[-4] = a1;
    v12[-3] = a2;
    v12[-2] = v9;
    (*(v5 + 104))(v7, enum case for Connection.TransactionMode.deferred(_:), v4);
    Connection.transaction(_:block:)();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t type metadata accessor for BeaconIdentifier(uint64_t a1)
{
  result = qword_1016AB018;
  if (!qword_1016AB018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001EED8()
{
  if (isUserAgent.getter())
  {
    goto LABEL_2;
  }

  v13 = *(v0[3] + 128);
  if (v13)
  {
    v14 = v0[2];

    sub_10001ECD8(v14, v13);

LABEL_2:
    v1 = *(v0[3] + 136);
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[9];
      v22 = *(v3 + 16);
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v20 = (v0[6] + 8);
      v21 = *(v3 + 72);
      v5 = (v3 + 8);

      do
      {
        v6 = v0[10];
        v8 = v0[7];
        v7 = v0[8];
        v10 = v0[4];
        v9 = v0[5];
        v11 = v0[2];
        v22(v6, v4, v7);
        sub_10001BBA0(v11, v10, type metadata accessor for ObservedAdvertisement);
        AsyncStream.Continuation.yield(_:)();
        (*v20)(v8, v9);
        (*v5)(v6, v7);
        v4 += v21;
        --v2;
      }

      while (v2);
    }

    v12 = v0[1];
    goto LABEL_14;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_1016C75C0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "No observation store on this platform!", v18, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();

  v12 = v0[1];
LABEL_14:

  return v12();
}

uint64_t sub_10001F1B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001F210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001F280(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001F2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001F3B8()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_10001F430, v1, 0);
}

uint64_t sub_10001F430()
{
  v1 = v0[25];
  v0[26] = v0[6];
  v0[27] = v1;
  v2 = swift_allocObject();
  v0[28] = v2;
  *(v2 + 16) = v1;

  v3 = swift_task_alloc();
  v0[29] = v3;
  v4 = sub_1000BC4D4(&qword_101699B80, &unk_101392660);
  *v3 = v0;
  v3[1] = sub_10001F754;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000012, 0x80000001013C4900, sub_10001F63C, v2, v4);
}

uint64_t sub_10001F550()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10001F5A8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    type metadata accessor for BeaconKeyManager(0);
    result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void *sub_10001F644()
{
  v1 = OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage____beaconKeyManager;
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage____beaconKeyManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage____beaconKeyManager);
  }

  else
  {
    type metadata accessor for BeaconKeyManager(0);
    swift_allocObject();

    v2 = sub_1012C9910(v3);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_10001F6CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001F644();
  *a1 = result;
  return result;
}

uint64_t sub_10001F724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001F644();
  *a1 = result;
  return result;
}

uint64_t sub_10001F754()
{
  v1 = *v0;

  v2 = *(v1 + 208);

  return _swift_task_switch(sub_10001F888, v2, 0);
}

uint64_t sub_10001F888()
{
  v0[30] = v0[2];
  v1 = qword_101694A58;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for Logger();
  v6 = sub_1000076D4(v5, qword_10177B5D8);
  v0[31] = v6;
  v7 = swift_task_alloc();
  v0[32] = v7;
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v3;
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_1008E2844;
  v9 = v0[13];

  return time<A>(label:logger:threshold:_:)(v9, 0xD00000000000001CLL, 0x80000001013644E0, v6, 0, 0, &unk_1013C4A58, v7);
}

uint64_t sub_10001F9F0()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  sub_1000D2A70(v0[13], v1, &unk_1016C1120, &qword_1013C49D0);
  v4 = *(v3 + 48);
  v0[34] = v4;
  v0[35] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v0[12], &unk_1016C1120, &qword_1013C49D0);
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_100020484;
    v6 = v0[30];
    v7 = v0[11];
    v8 = v0[4];
    v9 = v0[5];

    return sub_1008EA2F0(v7, v8, v9, v6);
  }

  else
  {
    sub_10000B3A8(v0[13], &unk_1016C1120, &qword_1013C49D0);

    v11 = v0[12];
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];
    v15 = v0[3];

    sub_100018118(v11, v12, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100018118(v12, v15, type metadata accessor for BeaconKeyManager.IndexInformation);
    (*(v13 + 56))(v15, 0, 1, v14);

    v16 = v0[1];

    return v16();
  }
}

void *sub_10001FC08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000BC4D4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t *sub_10001FE0C(uint64_t a1)
{
  v16 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_101125334(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_10002FDC4(v11, v4, type metadata accessor for BeaconKeyManager.IndexInformation);
      swift_dynamicCast();
      v17 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_101125334((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      v10[2] = v14 + 1;
      sub_1000D2AD8(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, &unk_1016C1120, &qword_1013C49D0);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_100020040()
{
  TaskGroup.makeAsyncIterator()();
  v0[35] = v0[34];
  v1 = sub_1000041A4(&qword_1016ABF28, &qword_1016ABF20, &qword_1013BFDE0, &protocol conformance descriptor for TaskGroup<A>.Iterator);
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_100029EE8;
  v3 = v0[29];
  v4 = v0[22];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v3, v1);
}

uint64_t sub_100020144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100020200()
{
  v1 = v0[22];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) == 1)
  {
    v2 = v0[14];
    (*(v0[30] + 8))(v0[31], v0[29]);
    sub_10000B3A8(v1, &qword_1016ABF18, &unk_1013BFDD0);

    return _swift_task_switch(sub_10002A03C, v2, 0);
  }

  else
  {
    v4 = v0[27];
    v3 = v0[28];
    sub_1000D2AD8(v1, v3, &unk_1016C1120, &qword_1013C49D0);
    sub_1000D2A70(v3, v4, &unk_1016C1120, &qword_1013C49D0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[35];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_100A5E100(0, v6[2] + 1, 1, v0[35]);
    }

    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = sub_100A5E100((v7 > 1), v8 + 1, 1, v6);
    }

    v9 = v0[27];
    v10 = v0[24];
    sub_10000B3A8(v0[28], &unk_1016C1120, &qword_1013C49D0);
    v6[2] = v8 + 1;
    sub_1000D2AD8(v9, v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, &unk_1016C1120, &qword_1013C49D0);
    v0[35] = v6;
    v11 = sub_1000041A4(&qword_1016ABF28, &qword_1016ABF20, &qword_1013BFDE0, &protocol conformance descriptor for TaskGroup<A>.Iterator);
    v12 = swift_task_alloc();
    v0[36] = v12;
    *v12 = v0;
    v12[1] = sub_100029EE8;
    v13 = v0[29];
    v14 = v0[22];

    return dispatch thunk of AsyncIteratorProtocol.next()(v14, v13, v11);
  }
}

uint64_t sub_100020484()
{
  v1 = *v0;

  v2 = *(v1 + 208);

  return _swift_task_switch(sub_1000205B8, v2, 0);
}

uint64_t sub_1000205B8()
{
  v25 = v0;
  v1 = *(v0 + 88);
  if ((*(v0 + 272))(v1, 1, *(v0 + 56)) == 1)
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);
    sub_10000B3A8(v1, &unk_1016C1120, &qword_1013C49D0);
    sub_100029784(v3, v2);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    sub_10001E524(v3, v2);
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 104);
    if (v6)
    {
      v9 = *(v0 + 32);
      v8 = *(v0 + 40);
      v10 = swift_slowAlloc();
      v23 = v7;
      v24 = swift_slowAlloc();
      v11 = v24;
      *v10 = 136446210;
      v12 = sub_10001904C(v9, v8);
      v14 = sub_1000136BC(v12, v13, &v24);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "AdvertisementCacheService did not reconcile advertisement %{public}s!", v10, 0xCu);
      sub_100007BAC(v11);

      v15 = v23;
    }

    else
    {

      v15 = v7;
    }

    sub_10000B3A8(v15, &unk_1016C1120, &qword_1013C49D0);
    (*(*(v0 + 64) + 56))(*(v0 + 24), 1, 1, *(v0 + 56));
  }

  else
  {
    sub_10000B3A8(*(v0 + 104), &unk_1016C1120, &qword_1013C49D0);
    v16 = *(v0 + 88);
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v19 = *(v0 + 56);
    v20 = *(v0 + 24);

    sub_100018118(v16, v17, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100018118(v17, v20, type metadata accessor for BeaconKeyManager.IndexInformation);
    (*(v18 + 56))(v20, 0, 1, v19);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000208B0()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cannot reconcile: missing BeaconKeyService.", v4, 2u);
  }

  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[3];

  (*(v6 + 56))(v7, 1, 1, v5);

  v8 = v0[1];

  return v8();
}

void (*sub_100020A14(uint64_t a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v4 = v3;
  v33 = a1;
  v34 = a2;
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v30 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = v30 - v15;
  __chkstk_darwin(v14);
  v18 = v30 - v17;
  v39 = type metadata accessor for Table();
  v19 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a3;
  if (sub_100028E90())
  {
    v31 = v3;
    v32 = v19;
    v30[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
    if (qword_1016952A0 != -1)
    {
      swift_once();
    }

    v21 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v21, qword_10177C788);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    if (qword_1016952D0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v21, qword_10177C818);
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v4 = *(v7 + 8);
    v4(v10, v6);
    v4(v13, v6);
    if (qword_1016952F0 != -1)
    {
      swift_once();
    }

    v22 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v22, qword_10177C878);
    v38[0] = 3;
    sub_100029580();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v4(v13, v6);
    v4(v16, v6);
    v23 = v37;
    v24 = v39;
    QueryType.filter(_:)();
    v4(v18, v6);
    v38[3] = v24;
    v38[4] = &protocol witness table for Table;
    v25 = sub_1000280DC(v38);
    v26 = v32;
    (*(v32 + 16))(v25, v23, v24);
    v27 = v31;
    Connection.prepare(_:)();
    if (v27)
    {
      (*(v26 + 8))(v23, v24);

      sub_100007BAC(v38);
    }

    else
    {
      sub_100007BAC(v38);
      type metadata accessor for KeyGenerationBeaconInfo(0);
      v4 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      (*(v26 + 8))(v23, v24);
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v28 = 2;
    *(v28 + 4) = 1;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_100020F88()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for BeaconStatus(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = (v9 + 9) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);
  v12 = (v0 + v9);
  v13 = *(v0 + v10);
  v14 = v12[1];
  v15 = *v12;

  return sub_1000213A8(v11, v0 + v2, v0 + v5, v0 + v8, v15, v14, v13);
}

unint64_t sub_1000210EC(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1000211C0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100021208(a1, v2, &type metadata accessor for UUID, &qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

uint64_t sub_1000211C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100021208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1000211C0(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_1000213A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, void *a7)
{
  v154 = a6;
  LODWORD(v161) = a5;
  v171 = a4;
  v173 = a3;
  v153 = a7;
  v152 = *a7;
  v9 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v9 - 8);
  v157 = &v142[-v10];
  v156 = type metadata accessor for SharedBeaconRecord(0);
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v148 = &v142[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v12 - 8);
  v166 = &v142[-v13];
  v14 = type metadata accessor for BeaconStatus(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v151 = &v142[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v146 = &v142[-v19];
  v20 = __chkstk_darwin(v18);
  v165 = &v142[-v21];
  v150 = v22;
  __chkstk_darwin(v20);
  v169 = &v142[-v23];
  v164 = type metadata accessor for UUID();
  v24 = *(v164 - 8);
  v25 = __chkstk_darwin(v164);
  v162 = &v142[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v160 = &v142[-v27];
  v28 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v28 - 8);
  v168 = &v142[-v29];
  v176 = type metadata accessor for Date();
  v174 = *(v176 - 8);
  v30 = __chkstk_darwin(v176);
  v163 = &v142[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v177 = &v142[-v32];
  v33 = sub_1000BC4D4(&qword_101699848, &unk_1013D6610);
  v34 = __chkstk_darwin(v33 - 8);
  v159 = &v142[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v37 = &v142[-v36];
  v38 = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  v39 = __chkstk_darwin(v38 - 8);
  v147 = &v142[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = __chkstk_darwin(v39);
  v43 = &v142[-v42];
  __chkstk_darwin(v41);
  v175 = &v142[-v44];
  v45 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_statusForBeacon;
  swift_beginAccess();
  v170 = a1;
  v158 = v45;
  v46 = *(a1 + v45);
  v47 = *(v46 + 16);
  v172 = a2;
  if (v47)
  {

    v48 = sub_1000210EC(a2);
    if (v49)
    {
      v50 = v48;
      v167 = v14;
      v51 = *(v46 + 56);
      v52 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
      v53 = *(v52 - 8);
      v14 = v167;
      sub_1000D2A70(v51 + *(v53 + 72) * v50, v37, &qword_101699850, &unk_1013D6620);

      (*(v53 + 56))(v37, 0, 1, v52);
      goto LABEL_6;
    }
  }

  v54 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
  (*(*(v54 - 8) + 56))(v37, 1, 1, v54);
LABEL_6:
  v55 = v168;
  v56 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
  v168 = *(v56 - 8);
  v57 = 1;
  if (!(*(v168 + 6))(v37, 1, v56))
  {
    sub_100022A54(v37, v175, type metadata accessor for BeaconStatus);
    v57 = 0;
  }

  sub_10000B3A8(v37, &qword_101699848, &unk_1013D6610);
  v58 = v175;
  (*(v15 + 56))(v175, v57, 1, v14);
  sub_1000D2A70(v58, v43, &qword_10169DBD8, &qword_1013BF910);
  v149 = v15;
  v61 = *(v15 + 48);
  v60 = v15 + 48;
  v59 = v61;
  if (v61(v43, 1, v14) == 1)
  {
    sub_10000B3A8(v43, &qword_10169DBD8, &qword_1013BF910);
    v62 = v174;
    v63 = v176;
    (*(v174 + 56))(v55, 1, 1, v176);
    static Date.distantPast.getter();
    if ((*(v62 + 48))(v55, 1, v63) != 1)
    {
      sub_10000B3A8(v55, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v62 = v174;
    v63 = v176;
    (*(v174 + 16))(v55, &v43[*(v14 + 24)], v176);
    sub_100022C40(v43, type metadata accessor for BeaconStatus);
    (*(v62 + 56))(v55, 0, 1, v63);
    (*(v62 + 32))(v177, v55, v63);
  }

  if (static Date.> infix(_:_:)())
  {
    v144 = v60;
    v145 = v59;
    v167 = v14;
    v64 = v161;
    v161 = v24;
    v65 = *(v24 + 16);
    v66 = v160;
    v67 = v172;
    v68 = v164;
    v65(v160, v172, v164);
    v69 = *(v56 + 48);
    v70 = v171;
    v71 = v159;
    sub_100022A54(v171, v159, type metadata accessor for BeaconStatus);
    v143 = v64;
    v71[v69] = v64;
    (*(v168 + 7))(v71, 0, 1, v56);
    swift_beginAccess();
    sub_100022CA0(v71, v66);
    swift_endAccess();

    AnyCurrentValuePublisher.value.getter();

    LODWORD(v168) = v180;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    v73 = sub_1000076D4(v72, qword_10177BA08);
    v74 = v162;
    v65(v162, v67, v68);
    v75 = v174;
    v76 = v163;
    v77 = v176;
    (*(v174 + 16))(v163, v173, v176);
    sub_100022A54(v70, v169, type metadata accessor for BeaconStatus);
    v78 = v165;
    sub_100022A54(v70, v165, type metadata accessor for BeaconStatus);
    v160 = v73;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v180 = v159;
      *v81 = 141559555;
      *(v81 + 4) = 1752392040;
      *(v81 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v158) = v80;
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      (*(v161 + 8))(v74, v68);
      v85 = sub_1000136BC(v82, v84, &v180);

      *(v81 + 14) = v85;
      v86 = v78;
      *(v81 + 22) = 2082;
      v87 = sub_100018DE0(v154);
      v89 = sub_1000136BC(v87, v88, &v180);

      *(v81 + 24) = v89;
      *(v81 + 32) = 2082;
      sub_10000768C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      v93 = *(v75 + 8);
      v93(v76, v176);
      v94 = sub_1000136BC(v90, v92, &v180);

      *(v81 + 34) = v94;
      *(v81 + 42) = 2082;
      v95 = v167;
      v96 = *&v169[*(v167 + 28)];
      v97 = 0x7972616D6972702ELL;
      if (*&v169[*(v167 + 28)])
      {
        v97 = 0x61646E6F6365732ELL;
      }

      v98 = 0xE800000000000000;
      if (*&v169[*(v167 + 28)])
      {
        v98 = 0xEA00000000007972;
      }

      if (v96 == 2)
      {
        v99 = 1701736302;
      }

      else
      {
        v99 = v97;
      }

      if (v96 == 2)
      {
        v100 = 0xE400000000000000;
      }

      else
      {
        v100 = v98;
      }

      sub_100022C40(v169, type metadata accessor for BeaconStatus);
      v101 = sub_1000136BC(v99, v100, &v180);
      v102 = v172;

      *(v81 + 44) = v101;
      *(v81 + 52) = 2048;
      v103 = (v86 + *(v95 + 28));
      v104 = *v103;
      v105 = *(v103 + 1);
      if (v104 == 2)
      {
        v106 = 0;
      }

      else
      {
        v106 = v105;
      }

      sub_100022C40(v86, type metadata accessor for BeaconStatus);
      *(v81 + 54) = v106;
      *(v81 + 62) = 1024;
      *(v81 + 64) = v168;
      _os_log_impl(&_mh_execute_header, v79, v158, "Latest type18 for %{private,mask.hash}s: %{public}s,scanDate: %{public}s,sequence: %{public}s,index: %llu, appActive: %{BOOL}d.", v81, 0x44u);
      swift_arrayDestroy();
      v77 = v176;
    }

    else
    {
      v102 = v67;
      sub_100022C40(v78, type metadata accessor for BeaconStatus);

      sub_100022C40(v169, type metadata accessor for BeaconStatus);
      v110 = *(v75 + 8);
      v110(v76, v77);
      v111 = v68;
      v93 = v110;
      (*(v161 + 8))(v74, v111);
    }

    v112 = v145;
    v113 = v166;
    sub_100023184(v102, v166);
    v114 = type metadata accessor for WildModeAssociationRecord(0);
    v115 = (*(*(v114 - 8) + 48))(v113, 1, v114);
    sub_10000B3A8(v113, &unk_1016C7C90, &qword_1013BB4B0);
    v116 = v171;
    v117 = v167;
    if (v115 != 1)
    {
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 67109120;
        _os_log_impl(&_mh_execute_header, v118, v119, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v120, 8u);
      }

      ThrottledDarwinPoster.post(bypassRateLimit:)(0);
      if (v121)
      {
      }
    }

    v122 = v172;
    sub_100025020(v172, &v178);
    if (v179)
    {
      sub_10000A748(&v178, &v180);
      if ((v143 - 1) <= 1)
      {
        sub_100B2067C(v122, v173);
      }

      sub_10001F280(&v180, &v178);
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v123 = v157;
      v124 = v156;
      v125 = swift_dynamicCast();
      v126 = *(v155 + 56);
      if (v125)
      {
        v126(v123, 0, 1, v124);
        v127 = v148;
        sub_10002911C(v123, v148, type metadata accessor for SharedBeaconRecord);
        v128 = v127[*(v124 + 64)];
        sub_100022C40(v127, type metadata accessor for SharedBeaconRecord);
        if (v128 == 4 || v128 == 1)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v126(v123, 1, 1, v124);
        sub_10000B3A8(v123, &unk_101698C30, &unk_101392630);
      }

      v129 = v175;
      if (v112(v175, 1, v117) == 1)
      {
        v130 = v149;
        if (!v168)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v131 = v129;
        v132 = v147;
        sub_1000D2A70(v131, v147, &qword_10169DBD8, &qword_1013BF910);
        if (v112(v132, 1, v117) == 1)
        {
          sub_10000B3A8(v132, &qword_10169DBD8, &qword_1013BF910);
          v133 = 0;
          v130 = v149;
LABEL_55:
          sub_10001F280(&v180, &v178);
          v137 = v116;
          v138 = v151;
          sub_100022A54(v137, v151, type metadata accessor for BeaconStatus);
          v139 = (*(v130 + 80) + 64) & ~*(v130 + 80);
          v140 = swift_allocObject();
          *(v140 + 16) = v133;
          sub_10000A748(&v178, v140 + 24);
          sub_10002911C(v138, v140 + v139, type metadata accessor for BeaconStatus);
          static Transaction.asyncTask(name:block:)();

          Transaction.capture()();
LABEL_56:
          sub_100007BAC(&v180);
          v93(v177, v77);
          v107 = &qword_10169DBD8;
          v108 = &qword_1013BF910;
          v109 = v175;
          return sub_10000B3A8(v109, v107, v108);
        }

        v134 = v146;
        sub_10002911C(v132, v146, type metadata accessor for BeaconStatus);
        v135 = v134[*(v117 + 20)];
        sub_100022C40(v134, type metadata accessor for BeaconStatus);
        v136 = *(v116 + *(v117 + 20));
        v133 = v135 != v136;
        v130 = v149;
        if (v135 == v136 || (v168 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      sub_100A8306C(0x16u);
LABEL_54:
      v133 = 1;
      goto LABEL_55;
    }

    v93(v177, v77);
    sub_10000B3A8(v175, &qword_10169DBD8, &qword_1013BF910);
    v107 = &qword_101696920;
    v108 = &unk_10138B200;
    v109 = &v178;
  }

  else
  {
    (*(v62 + 8))(v177, v63);
    v107 = &qword_10169DBD8;
    v108 = &qword_1013BF910;
    v109 = v58;
  }

  return sub_10000B3A8(v109, v107, v108);
}

uint64_t sub_1000227F4()
{
  v1 = (type metadata accessor for BeaconStatus(0) - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  sub_100007BAC((v0 + 24));
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v1[8];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10002293C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100022A54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100022ABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100022B38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100022C40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100022CA0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699848, &unk_1013D6610);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_101699848, &unk_1013D6610);
    sub_1001E56C0(a2, &qword_101699850, &unk_1013D6620, sub_100AF9CB8, sub_10100CB44, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &qword_101699848, &unk_1013D6610);
  }

  else
  {
    sub_1000D2AD8(a1, v10, &qword_101699850, &unk_1013D6620);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1000230F8(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_100022EFC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v32 = a6;
  v33 = a7;
  v10 = v7;
  v34 = a1;
  v31 = type metadata accessor for UUID();
  v13 = *(v31 - 8);
  __chkstk_darwin(v31);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_1000210EC(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 >= v21 && (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v23 >= v21 && (a3 & 1) == 0)
  {
    sub_10100C824(a4, a5, v32, v33);
    goto LABEL_9;
  }

  sub_100FF506C(v21, a3 & 1, a4, a5, v32, v33);
  v24 = sub_1000210EC(a2);
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v24;
LABEL_9:
  v26 = v34;
  v27 = *v10;
  if (v22)
  {
    v28 = v27[7];
    v29 = sub_1000BC4D4(a4, a5);
    return sub_10002311C(v26, v28 + *(*(v29 - 8) + 72) * v18, a4, a5);
  }

  else
  {
    (*(v13 + 16))(v15, a2, v31);
    return sub_101004274(v18, v15, v26, v27, a4, a5);
  }
}

uint64_t sub_10002311C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000BC4D4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100023184@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v13 = UUID.uuidString.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "wildModeAssociationRecord(for uuid: %@)", 39, 2, v12);

  static SystemInfo.lockState.getter();
  (*(v4 + 104))(v7, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v15) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v4 + 8);
  v16(v7, v3);
  v16(v9, v3);
  if (v15)
  {
    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v11, "wildModeAssociationRecord call failed because in device is in beforeFirstUnlock state", 85, 2, _swiftEmptyArrayStorage);
    v18 = type metadata accessor for WildModeAssociationRecord(0);
    return (*(*(v18 - 8) + 56))(v29, 1, 1, v18);
  }

  else
  {
    v20 = *(v28 + 168);
    if (qword_101694550 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for URL();
    v22 = sub_1000076D4(v21, qword_10177A8D0);
    v23._object = 0x800000010135B5A0;
    v23._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v23);
    v30 = type metadata accessor for WildModeAssociationRecord(0);
    sub_1000BC4D4(&qword_1016A5B00, &unk_1013B3640);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v27 = objc_autoreleasePoolPush();
    __chkstk_darwin(v27);
    *(&v28 - 6) = v20;
    *(&v28 - 5) = a1;
    *(&v28 - 4) = v22;
    *(&v28 - 3) = v24;
    *(&v28 - 2) = v26;
    sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
    OS_dispatch_queue.sync<A>(execute:)();
    objc_autoreleasePoolPop(v27);
  }
}

uint64_t sub_100023590(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = type metadata accessor for MACAddress();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
    return result;
  }

  v17 = type metadata accessor for Date();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_7;
  }

  v18 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[11];
    goto LABEL_7;
  }

  v19 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[14];
    goto LABEL_7;
  }

  v20 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[15];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1000238E4@<X0>(void *a1@<X0>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(void *, uint64_t, unint64_t))
{
  v97 = a6;
  v98 = a7;
  v105 = a5;
  v106 = a8;
  v100 = a3;
  v101 = a4;
  v102 = a2;
  v99 = a1;
  v94 = type metadata accessor for CryptoError();
  v96 = *(v94 - 8);
  v12 = __chkstk_darwin(v94);
  v92 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v95 = &v87 - v15;
  __chkstk_darwin(v14);
  v93 = &v87 - v16;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v103 = v17;
  v104 = v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v87 - v22;
  v24 = type metadata accessor for SystemInfo.DeviceLockState();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v87 - v29;
  static SystemInfo.lockState.getter();
  (*(v25 + 104))(v28, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v24);
  sub_100024A10(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v31 = *(v25 + 8);
  v31(v28, v24);
  v31(v30, v24);
  if (aBlock != v114)
  {
    v35 = objc_autoreleasePoolPush();
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    URL.appendingPathExtension(_:)();
    v36 = v103;
    v37 = v104 + 8;
    v38 = *(v104 + 8);
    v38(v21, v103);
    objc_autoreleasePoolPop(v35);
    v39 = v107;
    v40 = Data.init(contentsOf:options:)();
    if (v39)
    {

      v38(v23, v36);
      v42 = v105(0);
      return (*(*(v42 - 8) + 56))(v106, 1, 1, v42);
    }

    v90 = v40;
    v91 = v41;
    v102 = v23;
    v43 = static os_log_type_t.debug.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v44 = qword_10177C380;
    v88 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v45 = swift_allocObject();
    v87 = xmmword_101385D80;
    *(v45 + 16) = xmmword_101385D80;
    sub_100024A10(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    *(v45 + 56) = &type metadata for String;
    v89 = sub_100008C00();
    *(v45 + 64) = v89;
    *(v45 + 32) = v46;
    *(v45 + 40) = v48;
    os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v44, "Reading from LocalStorageBacked file: %@", 40, 2, v45);

    v49 = v99;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = v49[9];
    v51 = v114;
    v49[9] = 0x8000000000000000;
    v52 = sub_100771D58(v100, v101);
    v54 = v51[2];
    v55 = (v53 & 1) == 0;
    v56 = __OFADD__(v54, v55);
    v57 = v54 + v55;
    if (v56)
    {
      __break(1u);
      goto LABEL_34;
    }

    LOBYTE(v43) = v53;
    if (v51[3] < v57)
    {
      sub_100FE8BB4(v57, isUniquelyReferenced_nonNull_native);
      v51 = v114;
      v52 = sub_100771D58(v100, v101);
      if ((v43 & 1) == (v58 & 1))
      {
LABEL_14:
        v49[9] = v51;
        if (v43)
        {
          goto LABEL_16;
        }

LABEL_15:
        v43 = v52;
        sub_1010036DC(v52, v100, v101, 0, v51);

        v52 = v43;
LABEL_16:
        while (1)
        {
          v59 = v51[7];
          v60 = v59[v52];
          v56 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v56)
          {
            break;
          }

          v101 = v44;
          v104 = v37;
          v59[v52] = v61;
          v52 = swift_endAccess();
          v62 = v49[8];
          v56 = __OFADD__(v62, 1);
          v63 = v62 + 1;
          if (v56)
          {
            goto LABEL_35;
          }

          v64 = a10;
          v49[8] = v63;
          if (__ROR8__(0x1CAC083126E978D5 * v63 + 0x10624DD2F1A9FB8, 3) < 0x4189374BC6A7EFuLL)
          {
            v107 = a10;
            v65 = sub_100B2D828(v49);
            v37 = v66;

            v68 = sub_1012BB02C(v67);
            v70 = v69;

            if ((v70 & 1) != 0 || v68 < 10001)
            {
              if (qword_101694BE8 != -1)
              {
                swift_once();
              }

              v74 = type metadata accessor for Logger();
              sub_1000076D4(v74, qword_10177BA08);

              v72 = Logger.logObject.getter();
              v73 = static os_log_type_t.info.getter();
            }

            else
            {
              if (qword_101694BE8 != -1)
              {
                swift_once();
              }

              v71 = type metadata accessor for Logger();
              sub_1000076D4(v71, qword_10177BA08);

              v72 = Logger.logObject.getter();
              v73 = static os_log_type_t.error.getter();
            }

            v75 = v73;

            if (os_log_type_enabled(v72, v75))
            {
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              aBlock = v77;
              *v76 = 136446210;
              v78 = sub_1000136BC(v65, v37, &aBlock);

              *(v76 + 4) = v78;
              _os_log_impl(&_mh_execute_header, v72, v75, "readStatistics:\n%{public}s", v76, 0xCu);
              sub_100007BAC(v77);
              v49 = v99;
            }

            else
            {
            }

            v64 = v107;
          }

          v44 = v49[3];
          v79 = *(v44 + 72);
          v80 = swift_allocObject();
          LOBYTE(v43) = v80;
          *(v80 + 16) = v98;
          *(v80 + 24) = v44;
          v112 = a9;
          v113 = v80;
          aBlock = _NSConcreteStackBlock;
          v109 = 1107296256;
          v110 = sub_10013FE14;
          v111 = v64;
          v49 = _Block_copy(&aBlock);

          dispatch_sync(v79, v49);
          _Block_release(v49);
          LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

          if ((v79 & 1) == 0)
          {
            __chkstk_darwin(a11);
            v81 = v90;
            *(&v87 - 4) = v44;
            *(&v87 - 3) = v81;
            *(&v87 - 2) = v91;
            OS_dispatch_queue.sync<A>(execute:)();
            v82 = aBlock;
            v83 = v109;
            v84 = objc_autoreleasePoolPush();
            a12(v99, v82, v83);
            objc_autoreleasePoolPop(v84);
            sub_100016590(v90, v91);
            sub_100016590(v82, v83);
            return (v38)(v102, v103);
          }

LABEL_36:
          __break(1u);
LABEL_37:
          v86 = v52;
          sub_101006344();
          v52 = v86;
          v51 = v114;
          v49[9] = v114;
          if ((v43 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v52 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_14;
  }

  v32 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    v85 = v32;
    swift_once();
    v32 = v85;
  }

  os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, qword_10177C380, "record(for uuid:) call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
  v33 = v105(0);
  return (*(*(v33 - 8) + 56))(v106, 1, 1, v33);
}

uint64_t sub_1000248A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000248F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100024938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100024980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000249C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100024A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100024A6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for MACAddress();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[8]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = type metadata accessor for Date();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[10];
      goto LABEL_7;
    }

    v18 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[11];
      goto LABEL_7;
    }

    v19 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v8 = v19;
      v12 = *(v19 - 8);
      v13 = a3[14];
      goto LABEL_7;
    }

    v20 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
    v21 = *(*(v20 - 8) + 48);
    v22 = a1 + a3[15];

    return v21(v22, a2, v20);
  }
}

uint64_t sub_100024D30@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void *)@<X3>, void *a5@<X8>)
{
  v25 = a4;
  v26 = a2;
  v27 = a3;
  v28 = a5;
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = static os_log_type_t.info.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = UUID.uuidString.getter();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, v26, v27, 2, v15);

  static SystemInfo.lockState.getter();
  (*(v7 + 104))(v10, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v6);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v18) = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v7 + 8);
  v19(v10, v6);
  v19(v12, v6);
  if (v18)
  {
    v20 = static os_log_type_t.default.getter();
    result = os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v14, "beaconRecord call failed because in device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
    v22 = v28;
    v28[4] = 0;
    *v22 = 0u;
    v22[1] = 0u;
  }

  else
  {
    v23 = sub_100007F54();
    __chkstk_darwin(v23);
    *(&v24 - 2) = a1;
    sub_1000314D0(v25, v23, v28);
  }

  return result;
}

void *sub_100025044()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v2 - 8);
  v59 = &v48 - v3;
  v62 = sub_1000BC4D4(&qword_1016B5578, &unk_1013D6A70);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v58 = &v48 - v4;
  v5 = type metadata accessor for URL();
  v57 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v48 - v9;
  __chkstk_darwin(v8);
  v61 = &v48 - v11;
  v12 = sub_1000BC4D4(&qword_1016B5580, &unk_1013D7450);
  __chkstk_darwin(v12 - 8);
  v14 = (&v48 - v13);
  v15 = type metadata accessor for SystemInfo.DeviceLockState();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v48 - v20;
  v22._object = 0x800000010136CC40;
  v22._countAndFlagsBits = 0xD000000000000012;
  prohibitAsyncContext(functionName:)(v22);
  static SystemInfo.lockState.getter();
  (*(v16 + 104))(v19, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v15);
  sub_10000768C(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v23 = *(v16 + 8);
  v23(v19, v15);
  v23(v21, v15);
  if (v64 == v63)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177BA08);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "ownedBeaconRecords call failed because in device is in beforeFirstUnlock state", v27, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v29 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    sub_1000BC4D4(&qword_1016B5588, &qword_1013D6A80);
    QueueSynchronizer.conditionalSync<A>(_:)();
    result = v64;
    if (!v64)
    {
      v51 = v14;
      v54 = 0;
      v55 = v29;
      v30 = *(v1 + 168);
      v53 = v1;
      if (qword_101694E78 != -1)
      {
        swift_once();
      }

      v31 = sub_1000076D4(v5, qword_10177C070);
      v32 = v57;
      v33 = *(v57 + 16);
      v34 = v61;
      v33(v61, v31, v5);
      v33(v10, v34, v5);
      v35 = *(v62 + 40);
      v52 = v35;
      v36 = v62;
      v49 = type metadata accessor for DirectorySequence();
      v37 = *(v49 - 8);
      v38 = *(v37 + 56);
      v39 = v10;
      v50 = v37 + 56;
      v40 = v58;
      v38(&v58[v35], 1, 1, v49);
      v33(v40, v39, v5);
      *(v40 + *(v36 + 36)) = v30;
      v33(v56, v39, v5);

      v41 = v59;
      DirectorySequence.init(at:includingPropertiesForKeys:options:)();
      v42 = *(v32 + 8);
      v42(v39, v5);
      v42(v61, v5);
      v38(v41, 0, 1, v49);
      sub_10002311C(v41, v40 + v52, &qword_1016A5970, &unk_1013B3470);
      v43 = *(v60 + 56);
      v44 = v51;
      v45 = v62;
      v43(v51, 1, 1, v62);
      sub_10000B3A8(v44, &qword_1016B5590, &qword_1013D6A88);
      sub_1000D2AD8(v40, v44, &qword_1016B5578, &unk_1013D6A70);
      v43(v44, 0, 1, v45);
      v46 = sub_100B322A0(v44);
      v47 = sub_10000B3A8(v44, &qword_1016B5580, &unk_1013D7450);
      __chkstk_darwin(v47);
      *(&v48 - 2) = v53;
      *(&v48 - 1) = v46;
      QueueSynchronizer.conditionalSync<A>(_:)();
      return v46;
    }
  }

  return result;
}

unint64_t *sub_1000257D0(uint64_t a1)
{
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100025B1C(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v8, v5, type metadata accessor for OwnedBeaconRecord);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_100025B1C((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_100019420(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
      v12 = sub_1000280DC(&v14);
      sub_10002FDC4(v5, v12, type metadata accessor for OwnedBeaconRecord);
      v7[2] = v11 + 1;
      sub_10000A748(&v14, &v7[5 * v11 + 4]);
      sub_10002FE88(v5, type metadata accessor for OwnedBeaconRecord);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_1000259D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000BC4D4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100025B1C(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016975D8, &unk_1013AAF10, &unk_1016AA470, &qword_10139FD30);
  *v3 = result;
  return result;
}

uint64_t sub_100025B5C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v211 = a3;
  v208 = a2;
  v4 = sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  __chkstk_darwin(v4 - 8);
  v194 = &v156 - v5;
  v176 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v166 = *(v176 - 8);
  __chkstk_darwin(v176);
  v181 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for OnConflict();
  v184 = *(v185 - 8);
  __chkstk_darwin(v185);
  v183 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  __chkstk_darwin(v8 - 8);
  v180 = &v156 - v9;
  v192 = type metadata accessor for ObservedAdvertisement.Location(0);
  v179 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = (&v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v212 = type metadata accessor for ObservedAdvertisement(0);
  v11 = __chkstk_darwin(v212);
  v182 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v173 = &v156 - v13;
  v175 = type metadata accessor for Setter();
  v197 = *(v175 - 8);
  __chkstk_darwin(v175);
  v189 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for Insert();
  v186 = *(v187 - 8);
  v15 = __chkstk_darwin(v187);
  v161 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v165 = &v156 - v18;
  __chkstk_darwin(v17);
  v174 = &v156 - v19;
  v20 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  __chkstk_darwin(v20 - 8);
  v191 = &v156 - v21;
  v195 = type metadata accessor for Row();
  v196 = *(v195 - 8);
  __chkstk_darwin(v195);
  v188 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v214 = *(v204 - 8);
  v23 = __chkstk_darwin(v204);
  v25 = &v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v156 - v27;
  v29 = __chkstk_darwin(v26);
  v200 = &v156 - v30;
  __chkstk_darwin(v29);
  v203 = &v156 - v31;
  v32 = type metadata accessor for Table();
  v33 = *(v32 - 8);
  v209 = v32;
  v210 = v33;
  v34 = __chkstk_darwin(v32);
  v163 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v202 = &v156 - v37;
  __chkstk_darwin(v36);
  v207 = &v156 - v38;
  v39 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v40 = __chkstk_darwin(v39 - 8);
  v42 = &v156 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v44 = &v156 - v43;
  v45 = type metadata accessor for MACAddress();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v48 = &v156 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = a1;
  v49 = *(a1 + 2);
  v50 = *(a1 + 3);
  v213 = v49;
  if ((v50 & 0x2000000000000000) != 0)
  {
    sub_100029784(v49, v50);
    sub_100029784(v49, v50);
    sub_100017D5C(v49, v50 & 0xDFFFFFFFFFFFFFFFLL);
    v205 = v50 & 0xDFFFFFFFFFFFFFFFLL;
    MACAddress.init(addressToSanitize:type:)();
    result = (*(v46 + 48))(v42, 1, v45);
    v44 = v42;
    if (result != 1)
    {
      goto LABEL_5;
    }

LABEL_75:
    __break(1u);
    return result;
  }

  sub_100029784(v49, v50);
  sub_100029784(v49, v50);
  sub_100017D5C(v49, v50);
  sub_10002EA98(6, v49, v50, &v216);
  v51 = v50;
  v52 = v216;
  v53 = v217;
  sub_100017D5C(v216, v217);
  MACAddress.init(addressToSanitize:type:)();
  result = (*(v46 + 48))(v44, 1, v45);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_75;
  }

  sub_100016590(v52, v53);
  v205 = v51;
  v50 = v51;
  v49 = v213;
LABEL_5:
  sub_10001E524(v49, v50);
  v55 = *(v46 + 32);
  v206 = v48;
  v55(v48, v44, v45);
  v56 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  if (qword_1016952C8 != -1)
  {
    swift_once();
  }

  v215 = v50;
  v199 = v45;
  v177 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v57 = sub_1000076D4(v177, qword_10177C800);
  v167 = v220[9];
  LOBYTE(v216) = v167;
  v58 = sub_100028088();
  v168 = v57;
  v178 = v58;
  == infix<A>(_:_:)();
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v198 = v46;
  v169 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v59 = sub_1000076D4(v169, qword_10177C8A8);
  v216 = v49;
  v217 = v205;
  sub_100029784(v49, v215);
  sub_1000291EC(&qword_101699DC8, &type metadata accessor for Blob, &protocol conformance descriptor for Blob);
  v170 = v59;
  == infix<A>(_:_:)();
  sub_100016590(v216, v217);
  v60 = v200;
  && infix(_:_:)();
  v62 = v214 + 8;
  v61 = *(v214 + 8);
  v63 = v25;
  v64 = v204;
  v61(v63, v204);
  v61(v28, v64);
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v164 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v65 = sub_1000076D4(v164, qword_10177C938);
  v66 = v212[11];
  v67 = type metadata accessor for Date();
  v171 = v66;
  v172 = v65;
  v193 = v67;
  == infix<A>(_:_:)();
  v68 = v203;
  && infix(_:_:)();
  v61(v28, v64);
  v61(v60, v64);
  v69 = v209;
  v200 = v56;
  v70 = v202;
  QueryType.filter(_:)();
  v214 = v62;
  v162 = v61;
  v61(v68, v64);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v71 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v72 = sub_1000076D4(v71, qword_10177C770);
  v218 = v71;
  v219 = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850, &protocol conformance descriptor for Expression<A>);
  v73 = sub_1000280DC(&v216);
  (*(*(v71 - 8) + 16))(v73, v72, v71);
  v74 = v207;
  SchemaType.select(_:_:)();
  v75 = v210;
  v76 = *(v210 + 8);
  v77 = v70;
  v78 = v210 + 8;
  v76(v77, v69);
  sub_100007BAC(&v216);
  v218 = v69;
  v219 = &protocol witness table for Table;
  v79 = sub_1000280DC(&v216);
  v82 = *(v75 + 16);
  v81 = v75 + 16;
  v80 = v82;
  v82(v79, v74, v69);
  v83 = v201;
  Connection.prepare(_:)();
  if (v83)
  {
    sub_10001E524(v213, v215);
    v76(v74, v69);
    (*(v198 + 8))(v206, v199);
    return sub_100007BAC(&v216);
  }

  v157 = v80;
  v158 = v72;
  v159 = v76;
  v210 = v81;
  sub_100007BAC(&v216);
  dispatch thunk of _AnySequenceBox._makeIterator()();

  v84 = v191;
  dispatch thunk of _AnyIteratorBoxBase.next()();

  v85 = v196;
  v86 = v195;
  v87 = (*(v196 + 48))(v84, 1, v195);
  v160 = v78;
  v201 = 0;
  if (v87 == 1)
  {
    sub_10000B3A8(v84, &qword_101699D68, &unk_1013B6450);
    LOBYTE(v216) = v167;
    <- infix<A>(_:_:)();
    sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    *(swift_allocObject() + 16) = xmmword_101393060;
    if (qword_1016952F8 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v169, qword_10177C890);
    v216 = MACAddress.data.getter();
    v217 = v88;
    <- infix<A>(_:_:)();
    sub_100016590(v216, v217);
    v216 = v213;
    v217 = v205;
    sub_100029784(v213, v215);
    <- infix<A>(_:_:)();
    sub_100016590(v216, v217);
    v89 = v177;
    if (qword_101695308 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v89, qword_10177C8C0);
    v90 = v220[32];
    LOBYTE(v216) = v90;
    <- infix<A>(_:_:)();
    if (qword_101695310 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v89, qword_10177C8D8);
    LOBYTE(v216) = sub_10001993C(v90 & 0xB);
    <- infix<A>(_:_:)();
    v69 = v209;
    if (qword_101695318 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v89, qword_10177C8F0);
    v91 = v220;
    LOBYTE(v216) = v220[33];
    <- infix<A>(_:_:)();
    if (qword_101695320 != -1)
    {
      swift_once();
    }

    v92 = sub_1000BC4D4(&qword_101699DD0, &qword_101393110);
    sub_1000076D4(v92, qword_10177C908);
    v93 = v91[35];
    LOBYTE(v216) = v91[34];
    BYTE1(v216) = v93;
    <- infix<A>(_:_:)();
    v94 = v91;
    if (qword_101695328 != -1)
    {
      swift_once();
    }

    v95 = sub_1000BC4D4(&qword_101699DD8, &qword_101393118);
    sub_1000076D4(v95, qword_10177C920);
    LODWORD(v216) = *(v91 + 9);
    sub_100027F50();
    <- infix<A>(_:_:)();
    <- infix<A>(_:_:)();
    if (qword_101695340 != -1)
    {
      swift_once();
    }

    v96 = v204;
    sub_1000076D4(v204, qword_10177C968);
    LOBYTE(v216) = v94[v212[14]];
    <- infix<A>(_:_:)();
    if (qword_101695338 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v96, qword_10177C950);
    LOBYTE(v216) = 0;
    <- infix<A>(_:_:)();
    v97 = v174;
    v98 = v189;
    QueryType.insert(_:_:)();

    (*(v197 + 8))(v98, v175);
    v99 = v201;
    v100 = Connection.run(_:)();
    v101 = v206;
    v102 = v194;
    v103 = v190;
    v201 = v99;
    if (v99)
    {
      sub_10001E524(v213, v215);
      (*(v186 + 8))(v97, v187);
      v159(v207, v69);
      return (*(v198 + 8))(v101, v199);
    }

    v119 = v100;
    (*(v186 + 8))(v97, v187);
    v118 = v212;
  }

  else
  {
    (*(v85 + 32))(v188, v84, v86);
    Row.subscript.getter();
    v200 = v216;
    v104 = v190;
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    sub_1000076D4(v105, qword_10177B810);
    v106 = v220;
    v107 = v173;
    sub_10001BA68(v220, v173, type metadata accessor for ObservedAdvertisement);
    v108 = v182;
    sub_10001BA68(v106, v182, type metadata accessor for ObservedAdvertisement);
    v109 = v213;
    v110 = v215;
    sub_100029784(v213, v215);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.info.getter();
    sub_10001E524(v109, v110);
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v216 = v189;
      *v113 = 136315906;
      v114 = *(v107 + 9);
      v115 = v107;
      LODWORD(v191) = v112;
      if (v114 > 1)
      {
        v103 = v104;
        if (v114 == 2)
        {
          v116 = 0xED000072656E6E61;
          v117 = 0x6353686365656C2ELL;
        }

        else
        {
          v116 = 0xE500000000000000;
          v117 = 0x6E7363612ELL;
        }
      }

      else
      {
        v103 = v104;
        if (v114)
        {
          v116 = 0xEA00000000007265;
          v117 = 0x747365767261682ELL;
        }

        else
        {
          v116 = 0xE800000000000000;
          v117 = 0x6E776F6E6B6E752ELL;
        }
      }

      sub_100034434(v115, type metadata accessor for ObservedAdvertisement);
      v120 = sub_1000136BC(v117, v116, &v216);

      *(v113 + 4) = v120;
      *(v113 + 12) = 2080;
      v121 = Data.hexString.getter();
      v123 = sub_1000136BC(v121, v122, &v216);

      *(v113 + 14) = v123;
      *(v113 + 22) = 2080;
      v118 = v212;
      sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v124 = v182;
      v125 = dispatch thunk of CustomStringConvertible.description.getter();
      v127 = v126;
      sub_100034434(v124, type metadata accessor for ObservedAdvertisement);
      v128 = sub_1000136BC(v125, v127, &v216);

      *(v113 + 24) = v128;
      *(v113 + 32) = 2048;
      v119 = v200;
      *(v113 + 34) = v200;
      _os_log_impl(&_mh_execute_header, v111, v191, "ObservedAdvertisement for %s/%s/%salready exists (advId=%lld).", v113, 0x2Au);
      swift_arrayDestroy();

      (*(v196 + 8))(v188, v195);
      v69 = v209;
      v101 = v206;
      v102 = v194;
    }

    else
    {

      sub_100034434(v108, type metadata accessor for ObservedAdvertisement);
      sub_100034434(v107, type metadata accessor for ObservedAdvertisement);
      (*(v196 + 8))(v188, v86);
      v101 = v206;
      v102 = v194;
      v118 = v212;
      v119 = v200;
      v103 = v104;
    }
  }

  v129 = v180;
  sub_1000D2A70(&v220[v118[12]], v180, &qword_1016AA430, &unk_101392650);
  if ((*(v179 + 48))(v129, 1, v192) == 1)
  {
    sub_10000B3A8(v129, &qword_1016AA430, &unk_101392650);
    v130 = v181;
    v131 = v176;
  }

  else
  {
    sub_1000345B4(v129, v103, type metadata accessor for ObservedAdvertisement.Location);
    (*(v184 + 104))(v183, enum case for OnConflict.ignore(_:), v185);
    sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    *(swift_allocObject() + 16) = xmmword_10138C0D0;
    v216 = v119;
    <- infix<A>(_:_:)();
    if (qword_101695348 != -1)
    {
      swift_once();
    }

    v132 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
    sub_1000076D4(v132, qword_10177C980);
    v216 = *v103;
    <- infix<A>(_:_:)();
    if (qword_101695350 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v132, qword_10177C998);
    v216 = v103[1];
    <- infix<A>(_:_:)();
    if (qword_101695358 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v132, qword_10177C9B0);
    v216 = v103[2];
    <- infix<A>(_:_:)();
    if (qword_101695360 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v164, qword_10177C9C8);
    <- infix<A>(_:_:)();
    v69 = v209;
    v133 = v165;
    v134 = v183;
    QueryType.insert(or:_:)();

    (*(v184 + 8))(v134, v185);
    v135 = v201;
    Connection.run(_:)();
    v136 = v207;
    v201 = v135;
    if (v135)
    {
      sub_10001E524(v213, v215);
      (*(v186 + 8))(v133, v187);
      sub_100034434(v103, type metadata accessor for ObservedAdvertisement.Location);
      v159(v136, v69);
      return (*(v198 + 8))(v206, v199);
    }

    (*(v186 + 8))(v133, v187);
    sub_100034434(v103, type metadata accessor for ObservedAdvertisement.Location);
    v130 = v181;
    v131 = v176;
    v101 = v206;
    v102 = v194;
  }

  sub_1000D2A70(&v220[v212[13]], v102, &qword_101699DB0, &unk_101393100);
  if ((*(v166 + 48))(v102, 1, v131) == 1)
  {
    sub_10001E524(v213, v215);
    v159(v207, v69);
    (*(v198 + 8))(v101, v199);
    return sub_10000B3A8(v102, &qword_101699DB0, &unk_101393100);
  }

  else
  {
    v200 = v119;
    sub_1000345B4(v102, v130, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    if (qword_1016952A0 != -1)
    {
      swift_once();
    }

    v137 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    v138 = sub_1000076D4(v137, qword_10177C788);
    type metadata accessor for UUID();
    v139 = v203;
    v220 = v138;
    == infix<A>(_:_:)();
    v140 = v202;
    QueryType.filter(_:)();
    v162(v139, v204);
    v141 = v163;
    QueryType.limit(_:)();
    v142 = v159;
    v159(v140, v69);
    v218 = v69;
    v219 = &protocol witness table for Table;
    v143 = sub_1000280DC(&v216);
    v157(v143, v141, v69);
    v144 = v201;
    Connection.prepare(_:)();
    if (v144)
    {
      sub_10001E524(v213, v215);
      v142(v141, v69);
      sub_100034434(v181, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v142(v207, v69);
      (*(v198 + 8))(v206, v199);
      return sub_100007BAC(&v216);
    }

    sub_100007BAC(&v216);
    v145 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v146 = *(v145 + 16);

    if (v146)
    {
      (*(v184 + 104))(v183, enum case for OnConflict.ignore(_:), v185);
      sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
      *(swift_allocObject() + 16) = xmmword_101391790;
      v216 = v200;
      <- infix<A>(_:_:)();
      v147 = v181;
      <- infix<A>(_:_:)();
      if (qword_1016952B0 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v177, qword_10177C7B8);
      v148 = v176;
      LOBYTE(v216) = *(v147 + *(v176 + 20));
      <- infix<A>(_:_:)();
      v149 = v159;
      if (qword_1016952A8 != -1)
      {
        swift_once();
      }

      v150 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
      sub_1000076D4(v150, qword_10177C7A0);
      v216 = *(v147 + *(v148 + 24));
      sub_100029580();
      <- infix<A>(_:_:)();
      v151 = v209;
      v152 = v161;
      v153 = v183;
      QueryType.insert(or:_:)();

      (*(v184 + 8))(v153, v185);
      Connection.run(_:)();
      v154 = v163;
      sub_10001E524(v213, v215);
      (*(v186 + 8))(v152, v187);
      v149(v154, v151);
      sub_100034434(v147, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v149(v207, v151);
      return (*(v198 + 8))(v206, v199);
    }

    else
    {
      sub_10022A42C();
      swift_allocError();
      swift_willThrow();
      sub_10001E524(v213, v215);
      v155 = v159;
      v159(v163, v69);
      sub_100034434(v181, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v155(v207, v69);
      return (*(v198 + 8))(v206, v199);
    }
  }
}

unint64_t sub_100027F50()
{
  result = qword_101699DE0;
  if (!qword_101699DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699DE0);
  }

  return result;
}

uint64_t sub_100027FA4()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1)
  {
    return 0;
  }

  v3 = sub_1000291EC(&qword_101699D28, type metadata accessor for ObservationDatabase, &unk_10140B820);
  v4 = *(v3 + 16);
  v5 = type metadata accessor for ObservationDatabase(0);
  result = v4(v5, v3);
  if (result)
  {
    v7 = *(result + 24);

    return v7;
  }

  return result;
}

unint64_t sub_100028088()
{
  result = qword_101699DB8;
  if (!qword_101699DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699DB8);
  }

  return result;
}

uint64_t *sub_1000280DC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100028164()
{
  sub_1000BC4D4(&qword_10169DD98, &unk_1013BF4A0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  return v1;
}

uint64_t sub_100028228()
{
  v107 = v0;
  if (*(v0 + 241) == 1)
  {
    v1 = *(v0 + 184);
    v2 = *(v0 + 160);
    v3 = *(v0 + 120);
    v99 = type metadata accessor for UUID();
    (*(*(v99 - 8) + 16))(v1, v2);
    v98 = v3;
    v4 = (v2 + *(v3 + 20));
    v5 = v4[3];
    v6 = v4[4];
    sub_1000035D0(v4, v5);
    LOBYTE(v5) = sub_10002BD40(v5, v6);
    sub_1000035D0(v4, v4[3]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v7 = *(v0 + 16);
    v8 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
    *(v1 + *(v8 + 20)) = v5 & 1;
    *(v1 + *(v8 + 24)) = v7;
    (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v12 = *(v0 + 104);
    v11 = *(v0 + 112);
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v101 = *(v0 + 144);
    v103 = *(v0 + 80);
    v15 = *(v0 + 24);
    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177B5D8);
    sub_10002963C(v15, v11, type metadata accessor for ObservedAdvertisement);
    sub_10002963C(v15, v12, type metadata accessor for ObservedAdvertisement);
    sub_10002963C(v15, v13, type metadata accessor for ObservedAdvertisement);
    sub_10002963C(v15, v14, type metadata accessor for ObservedAdvertisement);
    sub_10002963C(v9, v10, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_10002963C(v9, v101, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_10002963C(v15, v103, type metadata accessor for ObservedAdvertisement);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v104 = v18;
      v20 = *(v0 + 104);
      v19 = *(v0 + 112);
      v21 = *(v0 + 96);
      v22 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v22 = 141560067;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v23 = sub_10001904C(*(v19 + 16), *(v19 + 24));
      v25 = v24;
      sub_10001F210(v19, type metadata accessor for ObservedAdvertisement);
      v26 = sub_1000136BC(v23, v25, &v106);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2082;
      v27 = sub_10001993C(*(v20 + 32) & 0xB);
      v28 = sub_100019E48(v27 & 0x10101FF);
      v30 = v29;
      sub_10001F210(v20, type metadata accessor for ObservedAdvertisement);
      v31 = sub_1000136BC(v28, v30, &v106);

      *(v22 + 24) = v31;
      *(v22 + 32) = 2082;
      if (*(v21 + 35))
      {
        v32 = 0xE400000000000000;
        v33 = 1701736302;
      }

      else
      {
        *(v0 + 240) = *(*(v0 + 96) + 34);
        sub_1000198E8();
        v62 = FixedWidthInteger.data.getter();
        v64 = v63;
        v33 = Data.hexString.getter();
        v32 = v65;
        sub_100016590(v62, v64);
      }

      v67 = *(v0 + 144);
      v66 = *(v0 + 152);
      v68 = *(v0 + 88);
      v97 = *(v0 + 80);
      v69 = *(v0 + 48);
      v96 = *(v0 + 56);
      sub_10001F210(*(v0 + 96), type metadata accessor for ObservedAdvertisement);
      v70 = sub_1000136BC(v33, v32, &v106);

      *(v22 + 34) = v70;
      *(v22 + 42) = 2082;
      v71 = sub_100018DE0(*(v68 + 32));
      v73 = v72;
      sub_10001F210(v68, type metadata accessor for ObservedAdvertisement);
      v74 = sub_1000136BC(v71, v73, &v106);

      *(v22 + 44) = v74;
      *(v22 + 52) = 2082;
      sub_1000035D0((v66 + *(v98 + 20)), *(v66 + *(v98 + 20) + 24));
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      sub_10001F210(v66, type metadata accessor for BeaconKeyManager.IndexInformation);
      v78 = sub_1000136BC(v75, v77, &v106);

      *(v22 + 54) = v78;
      *(v22 + 62) = 2160;
      *(v22 + 64) = 1752392040;
      *(v22 + 72) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      sub_10001F210(v67, type metadata accessor for BeaconKeyManager.IndexInformation);
      v82 = sub_1000136BC(v79, v81, &v106);

      *(v22 + 74) = v82;
      *(v22 + 82) = 1024;
      sub_1000D2A70(v97 + *(v96 + 48), v69, &qword_1016AA430, &unk_101392650);
      v83 = type metadata accessor for ObservedAdvertisement.Location(0);
      LODWORD(v66) = (*(*(v83 - 8) + 48))(v69, 1, v83) != 1;
      sub_10000B3A8(v69, &qword_1016AA430, &unk_101392650);
      sub_10001F210(v97, type metadata accessor for ObservedAdvertisement);
      *(v22 + 84) = v66;
      _os_log_impl(&_mh_execute_header, v17, v104, "Reconciled advertisement %{private,mask.hash}s, multiPart: %{public}s, hint: %{public}s, Type18: %{public}s,\nindex: %{public}s, beacon: %{private,mask.hash}s,\nhasLocation: %{BOOL}d.", v22, 0x58u);
      swift_arrayDestroy();
    }

    else
    {
      v54 = *(v0 + 144);
      v55 = *(v0 + 152);
      v57 = *(v0 + 104);
      v56 = *(v0 + 112);
      v59 = *(v0 + 88);
      v58 = *(v0 + 96);
      sub_10001F210(*(v0 + 80), type metadata accessor for ObservedAdvertisement);

      sub_10001F210(v54, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_10001F210(v59, type metadata accessor for ObservedAdvertisement);
      sub_10001F210(v58, type metadata accessor for ObservedAdvertisement);
      sub_10001F210(v57, type metadata accessor for ObservedAdvertisement);
      sub_10001F210(v56, type metadata accessor for ObservedAdvertisement);
      sub_10001F210(v55, type metadata accessor for BeaconKeyManager.IndexInformation);
    }

    sub_10001F210(*(v0 + 160), type metadata accessor for BeaconKeyManager.IndexInformation);
    v84 = *(v0 + 184);
    v86 = *(v0 + 56);
    v85 = *(v0 + 64);
    v87 = *(v0 + 24);
    v105 = *(v87 + 9);
    v89 = *(v87 + 16);
    v88 = *(v87 + 24);
    v90 = *(v87 + 32);
    v91 = *(v87 + 34);
    v102 = *(v87 + 35);
    v100 = *(v87 + 36);
    v92 = v86[11];
    v93 = type metadata accessor for Date();
    (*(*(v93 - 8) + 16))(v85 + v92, v87 + v92, v93);
    LOBYTE(v92) = *(v87 + v86[14]);
    sub_1000D2A70(v87 + v86[12], v85 + v86[12], &qword_1016AA430, &unk_101392650);
    sub_1000D2A70(v84, v85 + v86[13], &qword_101699DB0, &unk_101393100);
    *v85 = 0;
    *(v85 + 8) = 1;
    *(v85 + 9) = v105;
    *(v85 + 16) = v89;
    *(v85 + 24) = v88;
    *(v85 + 32) = v90;
    *(v85 + 34) = v91;
    *(v85 + 35) = v102;
    *(v85 + 36) = v100;
    *(v85 + v86[14]) = v92;
    sub_100029784(v89, v88);
    v94 = swift_task_alloc();
    *(v0 + 216) = v94;
    *v94 = v0;
    v94[1] = sub_10002DAD4;
    v95 = *(v0 + 64);

    return sub_10002D6CC(v95);
  }

  else
  {
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 160);
    v35 = *(v0 + 136);
    v36 = *(v0 + 72);
    v37 = *(v0 + 24);
    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177B5D8);
    sub_10002963C(v34, v35, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_10002963C(v37, v36, type metadata accessor for ObservedAdvertisement);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 176);
    v43 = *(v0 + 136);
    v44 = *(v0 + 72);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v45 = 141558787;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      sub_10001F210(v43, type metadata accessor for BeaconKeyManager.IndexInformation);
      v49 = sub_1000136BC(v46, v48, &v106);

      *(v45 + 14) = v49;
      *(v45 + 22) = 2160;
      *(v45 + 24) = 1752392040;
      *(v45 + 32) = 2081;
      v50 = sub_10001904C(*(v44 + 16), *(v44 + 24));
      v52 = v51;
      sub_10001F210(v44, type metadata accessor for ObservedAdvertisement);
      v53 = sub_1000136BC(v50, v52, &v106);

      *(v45 + 34) = v53;
      _os_log_impl(&_mh_execute_header, v39, v40, "Ignoring unsupported beacon %{private,mask.hash}s,\nadvertisement %{private,mask.hash}s!", v45, 0x2Au);
      swift_arrayDestroy();

      sub_10000B3A8(v42, &unk_1016C1120, &qword_1013C49D0);
    }

    else
    {

      sub_10001F210(v43, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_10000B3A8(v42, &unk_1016C1120, &qword_1013C49D0);
      sub_10001F210(v44, type metadata accessor for ObservedAdvertisement);
    }

    sub_10001F210(*(v0 + 160), type metadata accessor for BeaconKeyManager.IndexInformation);

    v60 = *(v0 + 8);

    return v60();
  }
}

uint64_t sub_100028E90()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1)
  {
    return 0;
  }

  v3 = sub_1000291EC(&qword_101699D28, type metadata accessor for ObservationDatabase, &unk_10140B820);
  v4 = *(v3 + 16);
  v5 = type metadata accessor for ObservationDatabase(0);
  result = v4(v5, v3);
  if (result)
  {
    v7 = *(result + 16);

    return v7;
  }

  return result;
}

uint64_t sub_100028F54(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100028F74, v1, 0);
}

uint64_t sub_100028F74()
{
  result = isUserAgent.getter();
  if (result)
  {
    if (qword_101694AE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016AFD38);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    sub_100991400();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }

  else
  {
    v7 = *(v0[3] + 128);
    if (v7)
    {
      v8 = sub_1000329C8(v0[2], v7);
      v10 = v0[1];

      return v10(v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10002911C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100029184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000291EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ObservationDatabase(uint64_t a1)
{
  result = qword_1016CA890;
  if (!qword_1016CA890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100029280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000292E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100029350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000293B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100029420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100029488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000294F0(uid_t a1)
{
  memset(uu, 0, sizeof(uu));
  mbr_uid_to_uuid(a1, uu);
  return UUID.init(uuid:)();
}

unint64_t sub_100029580()
{
  result = qword_101699DF0;
  if (!qword_101699DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699DF0);
  }

  return result;
}

uint64_t sub_1000295D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002963C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000296A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100029704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002978C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014650;

  return sub_100029850(a1, a2, v6, v7, v8);
}

uint64_t sub_100029850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v7 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016ABF18, &unk_1013BFDD0);
  v5[22] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016ABF20, &qword_1013BFDE0);
  v5[29] = v9;
  v5[30] = *(v9 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_100029A8C, a3, 0);
}

uint64_t sub_100029A8C()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  v2 = *(v1 + 160);
  v3 = v2 + 64;
  v31 = *(v2 + 16);
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v34 = v2;

  v11 = 0;
  v32 = v7;
  v33 = v3;
  while (v6)
  {
LABEL_11:
    v15 = *(v0 + 168);
    v36 = *(v0 + 160);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    v35 = v16;
    v18 = *(*(v34 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v6)))));
    v19 = type metadata accessor for TaskPriority();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v15, 1, 1, v19);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v16;
    v21[5] = v17;
    v21[6] = v18;
    sub_1000D2A70(v15, v36, &qword_101698C00, &qword_10138B570);
    LODWORD(v16) = (*(v20 + 48))(v36, 1, v19);
    swift_retain_n();
    sub_100029784(v35, v17);
    v22 = *(v0 + 160);
    if (v16 == 1)
    {
      sub_10000B3A8(*(v0 + 160), &qword_101698C00, &qword_10138B570);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v20 + 8))(v22, v19);
    }

    if (v21[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = dispatch thunk of Actor.unownedExecutor.getter();
      v25 = v24;
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v26 = **(v0 + 104);
    v27 = swift_allocObject();
    *(v27 + 16) = &unk_1013BFDF0;
    *(v27 + 24) = v21;

    if (v25 | v23)
    {
      v12 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v23;
      *(v0 + 40) = v25;
    }

    else
    {
      v12 = 0;
    }

    v6 &= v6 - 1;
    v13 = *(v0 + 168);
    *(v0 + 72) = 1;
    *(v0 + 80) = v12;
    *(v0 + 88) = v26;
    swift_task_create();

    v8 = sub_10000B3A8(v13, &qword_101698C00, &qword_10138B570);
    v7 = v32;
    v3 = v33;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return _swift_task_switch(v8, v9, v10);
    }

    if (v14 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v14);
    ++v11;
    if (v6)
    {
      v11 = v14;
      goto LABEL_11;
    }
  }

  v28 = *(v0 + 104);

  v29 = sub_10001FDE4(0, v31, 0, _swiftEmptyArrayStorage);
  *(v0 + 256) = v29;
  *(v0 + 264) = *v28;
  *(v0 + 272) = sub_10001FE0C(v29);
  v8 = sub_100020040;
  v9 = 0;
  v10 = 0;

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100029E68()
{
  swift_unknownObjectRelease();
  sub_10001E524(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100029EB0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100029EE8()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[30];
    v3 = v2[31];
    v5 = v2[29];

    (*(v4 + 8))(v3, v5);

    v6 = SharingCircleWildAdvertisementKey.init(key:);
  }

  else
  {
    v6 = sub_100020200;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10002A03C()
{
  v1 = *(v0 + 280);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 192);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v0 + 144);
    v17 = *(v3 + 72);
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v7 = *(v0 + 200);
      v6 = *(v0 + 208);
      v8 = *(v0 + 136);
      sub_1000D2A70(v4, v6, &unk_1016C1120, &qword_1013C49D0);
      sub_1000D2AD8(v6, v7, &unk_1016C1120, &qword_1013C49D0);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = *(v0 + 200);
      if (v9 == 1)
      {
        sub_10000B3A8(v10, &unk_1016C1120, &qword_1013C49D0);
      }

      else
      {
        sub_10087EE70(v10, *(v0 + 152), type metadata accessor for BeaconKeyManager.IndexInformation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10001FDE4(0, v5[2] + 1, 1, v5);
        }

        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          v5 = sub_10001FDE4((v11 > 1), v12 + 1, 1, v5);
        }

        v13 = *(v0 + 152);
        v5[2] = v12 + 1;
        sub_10087EE70(v13, v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for BeaconKeyManager.IndexInformation);
      }

      v4 += v17;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  **(v0 + 96) = v5;

  v14 = *(v0 + 8);

  return v14();
}

unint64_t sub_10002A2B8()
{
  result = qword_101699E38;
  if (!qword_101699E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699E38);
  }

  return result;
}

uint64_t sub_10002A30C()
{
  v1 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10002A3DC()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v6 = (v4 + v3 + *(v5 + 80) + 1) & ~*(v5 + 80);
  v7 = *(v5 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = v0 + v6;
  v9 = type metadata accessor for SharedBeaconRecord(0);
  if (!(*(*(v9 - 1) + 48))(v0 + v6, 1, v9))
  {
    v23 = v6;
    v24 = v7;
    sub_100016590(*v8, *(v8 + 8));
    v10 = v9[5];
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    v13 = *(v12 + 8);
    v13(v8 + v10, v11);
    v22 = v13;
    v13(v8 + v9[6], v11);

    v14 = v9[18];
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 8))(v8 + v14, v15);
    v16 = v9[19];
    v21 = *(v12 + 48);
    if (!v21(v8 + v16, 1, v11))
    {
      v13(v8 + v16, v11);
    }

    v17 = v8 + v9[20];
    v18 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    v6 = v23;
    v7 = v24;
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      v19 = *(v18 + 20);
      if (!v21(v17 + v19, 1, v11))
      {
        v22(v17 + v19, v11);
      }
    }
  }

  return _swift_deallocObject(v0, v7 + v6 + 1);
}

uint64_t sub_10002A730()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 184), *(v0 + 192));

  return _swift_deallocObject(v0, 200);
}

uint64_t sub_10002A7B8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10002A884()
{

  if (v0[6])
  {
  }

  v1 = v0[10];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[9], v1);
  }

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_10002A8EC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 80);
}

uint64_t sub_10002A96C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002A9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AB0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AB74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002ABDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AC44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002ACAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AD14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AD7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002ADE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AE4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AEB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AF1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AF84()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_10002B094, v1, 0);
}

uint64_t sub_10002B094()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[16];
  sub_1000D2A70(v0[22], v1, &unk_1016C1120, &qword_1013C49D0);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[21];
  if (v4 == 1)
  {
    v6 = v0[3];
    sub_10000B3A8(v5, &unk_1016C1120, &qword_1013C49D0);
    if ((*(v6 + 31) & 0x20) != 0)
    {
      v12 = v0[22];
      v10 = &unk_1016C1120;
      v11 = &qword_1013C49D0;
      goto LABEL_9;
    }

    v7 = v0[5];
    sub_1000D2A70(v0[3] + *(v0[7] + 48), v7, &qword_1016AA430, &unk_101392650);
    v8 = type metadata accessor for ObservedAdvertisement.Location(0);
    if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
    {
      v9 = v0[5];
      sub_10000B3A8(v0[22], &unk_1016C1120, &qword_1013C49D0);
      v10 = &qword_1016AA430;
      v11 = &unk_101392650;
      v12 = v9;
LABEL_9:
      sub_10000B3A8(v12, v10, v11);

      v16 = v0[1];

      return v16();
    }

    v17 = v0[23];
    sub_10000B3A8(v0[5], &qword_1016AA430, &unk_101392650);
    v18 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = v0[23];
    v21 = v0[7];
    v20 = v0[8];
    v22 = v0[3];
    v23 = *(v22 + 9);
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);
    v33 = *(v22 + 32);
    v26 = *(v22 + 34);
    v32 = *(v22 + 35);
    v31 = *(v22 + 36);
    v27 = v21[11];
    v28 = type metadata accessor for Date();
    (*(*(v28 - 8) + 16))(v20 + v27, v22 + v27, v28);
    LOBYTE(v27) = *(v22 + v21[14]);
    sub_1000D2A70(v22 + v21[12], v20 + v21[12], &qword_1016AA430, &unk_101392650);
    sub_1000D2A70(v19, v20 + v21[13], &qword_101699DB0, &unk_101393100);
    *v20 = 0;
    *(v20 + 8) = 1;
    *(v20 + 9) = v23;
    *(v20 + 16) = v24;
    *(v20 + 24) = v25;
    *(v20 + 32) = v33;
    *(v20 + 34) = v26;
    *(v20 + 35) = v32;
    *(v20 + 36) = v31;
    *(v20 + v21[14]) = v27;
    sub_100029784(v24, v25);
    v29 = swift_task_alloc();
    v0[27] = v29;
    *v29 = v0;
    v29[1] = sub_10002DAD4;
    v30 = v0[8];

    return sub_10002D6CC(v30);
  }

  else
  {
    sub_100018118(v5, v0[20], type metadata accessor for BeaconKeyManager.IndexInformation);
    v13 = swift_task_alloc();
    v0[26] = v13;
    *v13 = v0;
    v13[1] = sub_10002BC28;
    v14 = v0[20];

    return sub_10002B558(v14);
  }
}

uint64_t sub_10002B558(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[7] = v4;
  *v4 = v2;
  v4[1] = sub_10002B648;

  return daemon.getter();
}

uint64_t sub_10002B648(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 64) = a1;

  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019588(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_10002B824;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10002B824(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  if (v1)
  {
    v3 = v4[3];

    v5 = sub_1008E298C;
  }

  else
  {

    v5 = sub_10002D640;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_10002B97C()
{
  v1 = *(v0[12] + 16);

  if (v1)
  {

    v2 = v0[1];

    return v2(1);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_10002BA68;
    v5 = v0[2];

    return sub_100028F54(v5);
  }
}

uint64_t sub_10002BA68(uint64_t a1)
{
  v4 = *v2;
  v4[15] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_1008E2D9C;
  }

  else
  {
    v4[16] = a1;
    v6 = sub_10002BBA4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10002BBA4()
{
  v1 = *(v0 + 128);

  v2 = *(v1 + 16);

  v3 = *(v0 + 8);

  return v3(v2 != 0);
}

uint64_t sub_10002BC28(char a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 241) = a1;

  return _swift_task_switch(sub_100028228, v2, 0);
}

uint64_t sub_10002BD78()
{
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0x7972616D6972702ELL;
}

uint64_t sub_10002BE00(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = isUserAgent.getter();
  if (result)
  {
    if (qword_101694AE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_1016AFD38);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unexpected isUserAgent is true on non-macOS platform!", v3, 2u);
    }

    sub_100991400();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();
    return v3;
  }

  v14 = *(v1 + 128);
  if (v14)
  {
    v15 = getuid();
    sub_1000294F0(v15);
    v16 = sub_100020A14(a1, v8, v14);
    if (!v2)
    {
      v3 = v16;
    }

    (*(v6 + 8))(v8, v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C014(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 144) = a1;

  v3 = swift_task_alloc();
  *(v2 + 152) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019588(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10002C930;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10002C1F0()
{
  v1 = *(v0 + 186);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_10002963C(*(v0 + 64), v4, type metadata accessor for BeaconStatus);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = v7 + v5;
  v9 = swift_allocObject();
  *(v0 + 168) = v9;
  *(v9 + 16) = v3;
  sub_100018118(v4, v9 + v7, type metadata accessor for BeaconStatus);
  v10 = v9 + v8;
  *v10 = v2;
  *(v10 + 2) = v1;

  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  *v11 = v0;
  v11[1] = sub_1008E5A64;

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_10002C434, v9, &type metadata for () + 1);
}

uint64_t sub_10002C388()
{
  v1 = *(type metadata accessor for BeaconStatus(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return sub_10002C438(v2, v3, v4);
}

uint64_t sub_10002C438(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + 128);
  (*(v11 + 16))(v13, a2, v10);
  v15 = type metadata accessor for BeaconStatus(0);
  v16 = *(a2 + *(v15 + 20));
  (*(v7 + 16))(v9, a2 + *(v15 + 24), v6);
  type metadata accessor for Transaction();
  v19 = v14;
  v20 = v13;
  v21 = v9;
  v22 = a2;
  v23 = a3;
  v24 = v16;
  static Transaction.named<A>(_:with:)();
  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10002C69C()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v3, *(v3 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v0, ((v16 + ((v2 + 24) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10002C930(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 24);
  if (v1)
  {

    v7 = sub_10002D4DC;
  }

  else
  {

    *(v5 + 160) = a1;
    v7 = sub_10002CA98;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10002CA98()
{
  v17 = *(v0 + 160);
  v1 = *(v0 + 120);
  v15 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = *(*(v0 + 80) + 16);
  v8(v3, v1, v4);
  v16 = *(v1 + *(v2 + 24));
  v9 = *(v1 + *(v2 + 20));
  LOBYTE(v2) = (*(v7 + 24) & 0x2000000000000000) == 0;
  v8(v5, v3, v4);
  LOBYTE(v3) = *(v7 + 32);
  v10 = *(v15 + 44);
  v11 = v6[6];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 16))(v5 + v11, v7 + v10, v12);
  *(v5 + v6[5]) = v3;
  v13 = (v5 + v6[7]);
  *v13 = v9;
  v13[1] = v16;
  *(v5 + v6[8]) = v2;
  *(v5 + v6[9]) = 0;
  *(v0 + 184) = *(v7 + 9);
  *(v0 + 185) = *(v7 + 34);
  *(v0 + 186) = *(v7 + 35);

  return _swift_task_switch(sub_10002C1F0, v17, 0);
}

uint64_t sub_10002CC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v45 = a6;
  v46 = a7;
  v40 = a4;
  v41 = a5;
  v37 = a3;
  v52 = a2;
  v44 = a1;
  v49 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v43 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BeaconStatus(0);
  v39 = *(v10 - 8);
  v38 = *(v39 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v12;
  v13 = type metadata accessor for Date();
  v34 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v35 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UUID();
  v16 = *(v33 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v33);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue);
  (*(v16 + 16))(v18, v37);
  (*(v14 + 16))(&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v13);
  sub_100022A54(v41, v12, type metadata accessor for BeaconStatus);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + *(v14 + 80) + v19) & ~*(v14 + 80);
  v21 = (v15 + *(v39 + 80) + v20) & ~*(v39 + 80);
  v22 = v21 + v38;
  v23 = (v21 + v38 + 9) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v52;
  (*(v16 + 32))(v24 + v19, v18, v33);
  (*(v14 + 32))(v24 + v20, v35, v34);
  sub_10002911C(v36, v24 + v21, type metadata accessor for BeaconStatus);
  v25 = (v24 + v22);
  v26 = v46;
  *v25 = v45;
  v25[1] = v26;
  *(v24 + v23) = v44;
  aBlock[4] = sub_100020F88;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101646380;
  v27 = _Block_copy(aBlock);

  v28 = v43;
  static DispatchQoS.unspecified.getter();
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v29 = v47;
  v30 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v51 + 8))(v29, v30);
  (*(v48 + 8))(v28, v50);
}

uint64_t sub_10002D1E4()
{
  v14 = type metadata accessor for UUID();
  v1 = *(v14 - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v13 = type metadata accessor for Date();
  v4 = *(v13 - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = (type metadata accessor for BeaconStatus(0) - 8);
  v8 = (v5 + v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v12 = (*(*v7 + 64) + v8 + 9) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v1 + 8);
  v9(v0 + v2, v14);
  v10 = *(v4 + 8);
  v10(v0 + v5, v13);
  v9(v0 + v8, v14);
  v10(v0 + v8 + v7[8], v13);

  return _swift_deallocObject(v0, v12 + 8);
}

uint64_t sub_10002D404()
{
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  (*(v3 + 8))(v2, v4);
  sub_10001F210(v1, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10002D4DC()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 120);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconStoreActor available!", v6, 2u);
  }

  sub_10001F210(v5, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10002D640()
{
  v1 = v0[11];
  v0[12] = sub_10002BE00(v0[2]);
  v0[13] = v1;
  v2 = v0[3];
  if (v1)
  {
    v3 = sub_1008E2AAC;
  }

  else
  {
    v3 = sub_10002B97C;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10002D6CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for BeaconStatus(0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10002D890, v1, 0);
}

uint64_t sub_10002D890()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = type metadata accessor for ObservedAdvertisement(0);
  v0[16] = v5;
  sub_1000D2A70(v4 + *(v5 + 52), v3, &qword_101699DB0, &unk_101393100);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[12], &qword_101699DB0, &unk_101393100);
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B5D8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Ignoring status update for advertisement without beaconInformation.", v9, 2u);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    sub_100018118(v0[12], v0[15], type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v12 = swift_task_alloc();
    v0[17] = v12;
    *v12 = v0;
    v12[1] = sub_10002C014;

    return daemon.getter();
  }
}

uint64_t sub_10002DAD4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 224) = v3;
  *v3 = v2;
  v3[1] = sub_10001DB18;
  v4 = *(v1 + 64);

  return sub_10002DC2C(v4);
}

uint64_t sub_10002DC2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock.Instant();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10002DDC8, v1, 0);
}

uint64_t sub_10002DDC8()
{
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_10002DE70;

  return daemon.getter();
}

uint64_t sub_10002DE70(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 136) = a1;

  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019588(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_10002E04C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10002E04C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = v3[3];

    return _swift_task_switch(sub_1008E308C, v5, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[21] = v6;
    *v6 = v4;
    v6[1] = sub_10001BC08;
    v7 = v3[2];

    return sub_10002E1FC(v7);
  }
}

uint64_t sub_10002E1FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for ObservedAdvertisement(0);
  v2[4] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_1016C7748, &qword_101404C28);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016B3DF8, &qword_101404C30);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10001EED8, v1, 0);
}

BOOL sub_10002E35C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v47[-v9];
  v11 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  __chkstk_darwin(v11);
  v13 = &v47[-v12];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v50 = v5;
  v51 = v7;
  v49 = v4;
  v20 = v14[6];
  v22 = *(a1 + v20);
  v21 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *v23;
  v25 = v23[1];
  if (v21 >> 60 == 15)
  {
    if (v25 >> 60 != 15)
    {
      goto LABEL_16;
    }

    sub_10002E98C(v22, v21);
    sub_10002E98C(v24, v25);
    sub_100006654(v22, v21);
  }

  else
  {
    if (v25 >> 60 == 15)
    {
      goto LABEL_16;
    }

    sub_10002E98C(v22, v21);
    sub_10002E98C(v24, v25);
    sub_10002E98C(v22, v21);
    sub_10002E98C(v24, v25);
    v48 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v22, v21, v24, v25);
    sub_100006654(v24, v25);
    sub_100006654(v22, v21);
    sub_100006654(v24, v25);
    sub_100006654(v22, v21);
    if (!v48)
    {
      return 0;
    }
  }

  v26 = v14[7];
  v22 = *(a1 + v26);
  v21 = *(a1 + v26 + 8);
  v27 = (a2 + v26);
  v24 = *v27;
  v25 = v27[1];
  if (v21 >> 60 == 15)
  {
    if (v25 >> 60 == 15)
    {
      sub_10002E98C(v22, v21);
      sub_10002E98C(v24, v25);
      sub_100006654(v22, v21);
      goto LABEL_19;
    }

LABEL_16:
    sub_10002E98C(v22, v21);
    sub_10002E98C(v24, v25);
    sub_100006654(v22, v21);
    sub_100006654(v24, v25);
    return 0;
  }

  if (v25 >> 60 == 15)
  {
    goto LABEL_16;
  }

  sub_10002E98C(v22, v21);
  sub_10002E98C(v24, v25);
  sub_10002E98C(v22, v21);
  sub_10002E98C(v24, v25);
  v48 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v22, v21, v24, v25);
  sub_100006654(v24, v25);
  sub_100006654(v22, v21);
  sub_100006654(v24, v25);
  sub_100006654(v22, v21);
  if (!v48)
  {
    return 0;
  }

LABEL_19:
  v29 = v14[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 16);
  v32 = (a2 + v29);
  v33 = v32[2];
  if (v31)
  {
    v34 = v51;
    if (!v33 || *v32 != *v30 || (v30[1] != v32[1] || v31 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v34 = v51;
    if (v33)
    {
      return 0;
    }
  }

  v35 = v14[9];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39 || (*v36 != *v38 || v37 != v39) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v40 = v14[10];
  v41 = *(v11 + 48);
  sub_1000D2A70(a1 + v40, v13, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(a2 + v40, &v13[v41], &unk_101696900, &unk_10138B1E0);
  v42 = v49;
  v43 = *(v50 + 48);
  if (v43(v13, 1, v49) != 1)
  {
    sub_1000D2A70(v13, v10, &unk_101696900, &unk_10138B1E0);
    if (v43(&v13[v41], 1, v42) == 1)
    {
      (*(v50 + 8))(v10, v42);
      goto LABEL_39;
    }

    v44 = v50;
    (*(v50 + 32))(v34, &v13[v41], v42);
    sub_100003FAC(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    v46 = *(v44 + 8);
    v46(v34, v42);
    v46(v10, v42);
    sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
    return (v45 & 1) != 0;
  }

  if (v43(&v13[v41], 1, v42) != 1)
  {
LABEL_39:
    sub_10000B3A8(v13, &unk_1016B1660, &unk_10138CE10);
    return 0;
  }

  sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
  return 1;
}

uint64_t sub_10002E98C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100017D5C(result, a2);
  }

  return result;
}

void *sub_10002E9A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_10002E9B8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_10002EA2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10002EA98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_10002F330(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_10002EA2C(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_100016590(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

void *sub_10002EC50(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v25 = a7;
  v30 = a6;
  v32 = a1;
  v33 = a2;
  v10 = a4(0);
  v31 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v28 = *(a3 + 16);
  if (v28)
  {
    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    v26 = a5;
    v27 = a3;
    while (v16 < *(a3 + 16))
    {
      v18 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v19 = *(v31 + 72);
      sub_100150B0C(a3 + v18 + v19 * v16, v15, a5);
      v20 = v32(v15);
      if (v7)
      {
        sub_100150BA4(v15, a5);

        goto LABEL_15;
      }

      if (v20)
      {
        sub_100150504(v15, v29, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25(0, v17[2] + 1, 1);
          v17 = v34;
        }

        v23 = v17[2];
        v22 = v17[3];
        if (v23 >= v22 >> 1)
        {
          v25(v22 > 1, v23 + 1, 1);
          v17 = v34;
        }

        v17[2] = v23 + 1;
        result = sub_100150504(v29, v17 + v18 + v23 * v19, v30);
        a5 = v26;
        a3 = v27;
      }

      else
      {
        result = sub_100150BA4(v15, a5);
      }

      if (v28 == ++v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_15:

    return v17;
  }

  return result;
}

unint64_t sub_10002EE9C()
{
  result = qword_10169C998;
  if (!qword_10169C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C998);
  }

  return result;
}

uint64_t sub_10002EEF0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 168) = a1;

  v3 = swift_task_alloc();
  *(v2 + 176) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019588(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10002F0CC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10002F0CC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 184) = a1;

  v4 = *(v3 + 32);
  if (v1)
  {

    v5 = sub_1008E5900;
  }

  else
  {

    v5 = sub_10002F230;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10002F230()
{
  v18 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  sub_100017D5C(v1, v2);
  v6 = static MACAddress.length.getter();
  sub_10002EA98(v6, v1, v2, &v17);
  MACAddress.init(data:type:)();
  v7 = (*(v4 + 48))(v5, 1, v3);
  if (v7 == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[23];
    v11 = v0[17];
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[12];
    v15 = *(v13 + 32);
    v0[24] = v15;
    v0[25] = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v11, v14, v12);
    v7 = sub_1008E4E20;
    v8 = v10;
    v9 = 0;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10002F330(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

void *sub_10002F3E4@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E723E4(v4, a1);
}

void *sub_10002F458(uint64_t a1)
{
  v2 = type metadata accessor for SystemInfo.DeviceLockState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v20 - v7;
  v9 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v10 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = MACAddress.description.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "wildModeAssociationRecords(advertisement: %@)", 45, 2, v11);

  static SystemInfo.lockState.getter();
  (*(v3 + 104))(v6, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v2);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v12) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v3 + 8);
  v15(v6, v2);
  v15(v8, v2);
  if (v12)
  {
    v16 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v10, "wildModeAssociationRecord call failed because in device is in beforeFirstUnlock state", 85, 2, _swiftEmptyArrayStorage);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v18 = sub_10002F740();
    __chkstk_darwin(v18);
    v20[-2] = a1;
    return sub_10002EBE8(sub_100B25494, &v20[-4], v19);
  }
}

void *sub_10002F740()
{
  v0 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v0 - 8);
  v2 = &v42 - v1;
  v3 = type metadata accessor for DirectorySequence();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for URL();
  v6 = *(v47 - 8);
  v7 = __chkstk_darwin(v47);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v42 - v10;
  v11 = type metadata accessor for SystemInfo.DeviceLockState();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v42 - v16;
  static SystemInfo.lockState.getter();
  (*(v12 + 104))(v15, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v11);
  sub_10000768C(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18 = *(v12 + 8);
  v18(v15, v11);
  v18(v17, v11);
  if (v49 == v48)
  {
    v19 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v41 = v19;
      swift_once();
      v19 = v41;
    }

    v20 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, qword_10177C380, "wildModeAssociationRecords call failed because in device is in beforeFirstUnlock state", 86, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v21 = *(v46 + 21);
    if (qword_101694550 != -1)
    {
      swift_once();
    }

    v22 = v47;
    v23 = sub_1000076D4(v47, qword_10177A8D0);
    (*(v6 + 16))(v45, v23, v22);
    v48 = _swiftEmptyArrayStorage;
    v49 = _swiftEmptyArrayStorage;
    v24 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v46 = v5;
    DirectorySequence.next()();
    v25 = v22;
    v42 = v6;
    v26 = *(v6 + 48);
    if (v26(v2, 1, v22) != 1)
    {
      v27 = v21;
      v28 = *(v42 + 32);
      v29 = (v42 + 8);
      do
      {
        v28(v9, v2, v25);
        v30 = objc_autoreleasePoolPush();
        sub_100601DCC(v9, v27, &v49, &v48);
        objc_autoreleasePoolPop(v30);
        (*v29)(v9, v47);
        DirectorySequence.next()();
        v25 = v47;
      }

      while (v26(v2, 1, v47) != 1);
    }

    (*(v43 + 8))(v46, v44);
    v31 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v32 = v25;
    v33 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10138BBE0;
    v20 = v49;
    v35 = v49[2];
    *(v34 + 56) = &type metadata for Int;
    *(v34 + 64) = &protocol witness table for Int;
    *(v34 + 32) = v35;
    sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v36 = v45;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    *(v34 + 96) = &type metadata for String;
    *(v34 + 104) = sub_100008C00();
    *(v34 + 72) = v37;
    *(v34 + 80) = v39;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v33, "Found %i records at %@", 22, 2, v34);

    (*(v42 + 8))(v36, v32);
  }

  return v20;
}

uint64_t sub_10002FDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002FE3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10002FE88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002FEE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002FF48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002FFA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100030008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_100030068()
{
  v0 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v0 - 8);
  v70 = v59 - v1;
  v2 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v2 - 8);
  v68 = v59 - v3;
  v71 = sub_1000BC4D4(&qword_1016B54E0, &qword_1013D6938);
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v67 = v59 - v4;
  v5 = type metadata accessor for URL();
  v66 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v65 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v59 - v9;
  __chkstk_darwin(v8);
  v12 = v59 - v11;
  v13 = sub_1000BC4D4(&qword_1016B54E8, &unk_1013D6940);
  __chkstk_darwin(v13 - 8);
  v15 = (v59 - v14);
  v16 = type metadata accessor for SystemInfo.DeviceLockState();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v59 - v21;
  v23._object = 0x800000010136CC00;
  v23._countAndFlagsBits = 0xD000000000000013;
  prohibitAsyncContext(functionName:)(v23);
  static SystemInfo.lockState.getter();
  (*(v17 + 104))(v20, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v16);
  sub_10000768C(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v17 + 8);
  v24(v20, v16);
  v24(v22, v16);
  if (v74 == v73)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177BA08);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "sharedBeaconRecords call failed because in device is in beforeFirstUnlock state", v28, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v30 = v72;
    v31 = *(v72 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    sub_1000BC4D4(&qword_1016B5570, &unk_1013D6A50);
    QueueSynchronizer.conditionalSync<A>(_:)();
    v29 = v74;
    if (!v74)
    {
      v60 = v15;
      v32 = v12;
      v63 = 0;
      v64 = v31;
      v33 = *(v30 + 168);
      if (qword_101695470 != -1)
      {
        swift_once();
      }

      v34 = sub_1000076D4(v5, qword_10177CD50);
      v35 = v66;
      v36 = *(v66 + 16);
      v62 = v32;
      v36(v32, v34, v5);
      v36(v10, v32, v5);
      v37 = *(v71 + 40);
      v61 = v37;
      v38 = v71;
      v59[0] = type metadata accessor for DirectorySequence();
      v39 = *(v59[0] - 8);
      v40 = *(v39 + 56);
      v41 = v10;
      v59[1] = v39 + 56;
      v42 = v67;
      v40(&v67[v37], 1, 1, v59[0]);
      v36(v42, v41, v5);
      *(v42 + *(v38 + 36)) = v33;
      v36(v65, v41, v5);

      v43 = v68;
      DirectorySequence.init(at:includingPropertiesForKeys:options:)();
      v44 = *(v35 + 8);
      v44(v41, v5);
      v44(v62, v5);
      v40(v43, 0, 1, v59[0]);
      sub_10002311C(v43, v42 + v61, &qword_1016A5970, &unk_1013B3470);
      v45 = *(v69 + 56);
      v46 = v60;
      v47 = v71;
      v45(v60, 1, 1, v71);
      sub_10000B3A8(v46, &qword_1016B54F0, &qword_1013D7430);
      sub_1000D2AD8(v42, v46, &qword_1016B54E0, &qword_1013D6938);
      v45(v46, 0, 1, v47);
      v48 = sub_100B33054(v46);
      v49 = sub_10000B3A8(v46, &qword_1016B54E8, &unk_1013D6940);
      __chkstk_darwin(v49);
      v50 = v72;
      v59[-2] = v72;
      v59[-1] = v48;
      sub_1000BC4D4(&qword_101697720, &unk_101392640);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v29 = v74;
      v51 = sub_101129AF4(v48);

      v53 = sub_101129AF4(v52);

      if (*(v53 + 16) <= *(v51 + 16) >> 3)
      {
        v74 = v51;
        sub_10087D034(v53);

        v54 = v74;
      }

      else
      {
        v54 = sub_10060DAA8(v53, v51);
      }

      v55 = type metadata accessor for TaskPriority();
      v56 = v70;
      (*(*(v55 - 8) + 56))(v70, 1, 1, v55);
      v57 = swift_allocObject();
      v57[2] = 0;
      v57[3] = 0;
      v57[4] = v50;
      v57[5] = v54;

      sub_10025EDD4(0, 0, v56, &unk_1013D6A68, v57);
    }
  }

  return v29;
}

uint64_t sub_100030944()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

void *sub_1000309B4(uint64_t a1)
{
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100025B1C(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v8, v5, type metadata accessor for SharedBeaconRecord);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_100025B1C((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_100019420(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
      v12 = sub_1000280DC(&v14);
      sub_10002FDC4(v5, v12, type metadata accessor for SharedBeaconRecord);
      v7[2] = v11 + 1;
      sub_10000A748(&v14, &v7[5 * v11 + 4]);
      sub_10002FE88(v5, type metadata accessor for SharedBeaconRecord);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_100030BB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
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

uint64_t sub_100030C0C(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_100030E34;

  return daemon.getter();
}

uint64_t sub_100030CC4()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100007DC0;

  return sub_100031364();
}

uint64_t type metadata accessor for CloudStorageDatabase(uint64_t a1)
{
  result = qword_1016A8EF0;
  if (!qword_1016A8EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100030DA4()
{
  *(v0 + 96) = Database.readConnection.getter();

  return _swift_task_switch(sub_100007BF8, 0, 0);
}

uint64_t sub_100030E34(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 64) = a1;

  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100031010;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100031010(uint64_t a1)
{
  *(*v2 + 80) = a1;

  if (v1)
  {

    v4 = sub_100AA7ED8;
    v5 = 0;
  }

  else
  {

    v4 = sub_100030CC4;
    v5 = a1;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100031168()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_100031384, v1, 0);
}

uint64_t sub_10003118C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000311D4(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = type metadata accessor for DatabaseState();
  (*(*(v6 - 8) + 16))(a1, v3 + v4, v6);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t (*sub_10003129C@<X0>(uint64_t (*result)(void *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void *, uint64_t)@<X3>, uint64_t a4@<X8>))(void *)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v8 = result;
    v9 = a2 + 32;
    while (1)
    {
      sub_10001F280(v9, v11);
      v10 = v8(v11);
      if (v4)
      {
        return sub_100007BAC(v11);
      }

      if (v10)
      {
        return a3(v11, a4);
      }

      result = sub_100007BAC(v11);
      v9 += 40;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100031384()
{
  v0[9] = type metadata accessor for CloudStorageDatabase(0);
  v0[10] = sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase, &unk_1013BA760);
  Database.startup()();
  v0[11] = v1;
  if (v1)
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[8];

    return _swift_task_switch(sub_100030DA4, v4, 0);
  }
}

uint64_t sub_1000314FC(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  sub_1000035D0(a1, v7);
  (*(*(*(v8 + 8) + 8) + 32))(v7);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return a1 & 1;
}

uint64_t sub_100031620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000316AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 16) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for Date();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[18];
    goto LABEL_3;
  }

  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[19];
    goto LABEL_3;
  }

  v15 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[20];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_100031894(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for Date();
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[18];
      goto LABEL_3;
    }

    v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[19];
      goto LABEL_3;
    }

    v15 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[20];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100031A6C()
{
  v2 = *(type metadata accessor for BeaconStatus(0) - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100031B48(v4, v0 + 24, v0 + v3);
}

uint64_t sub_100031B48(char a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = swift_task_alloc();
  if (a1)
  {
    v3[4] = v5;
    *v5 = v3;
    v6 = sub_100AC8094;
  }

  else
  {
    v3[10] = v5;
    *v5 = v3;
    v6 = sub_100031C04;
  }

  v5[1] = v6;

  return daemon.getter();
}

uint64_t sub_100031C04(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 88) = a1;

  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BatteryLevelService();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&qword_1016A24B8, type metadata accessor for BatteryLevelService, &unk_1013F9320);
  *v3 = v9;
  v3[1] = sub_100031E04;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100031E04(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100031F7C, 0, 0);
  }
}

uint64_t sub_100031F7C()
{
  v1 = v0[3];
  v2 = 0x5040201u >> ((*(v1 + *(type metadata accessor for BeaconStatus(0) + 20)) >> 3) & 0x18);

  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100036624;
  v4 = v0[2];

  return sub_100032054(v4, v2);
}

uint64_t sub_100032054(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  return _swift_task_switch(sub_100032078, v2, 0);
}

uint64_t sub_100032078()
{
  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  if ((*(v3 + 112))(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 80);
    v7 = sub_101041A14(v4, v6);
    *(v0 + 48) = v7;
    v9 = sub_1000394F4(&qword_1016C3EC8, v8, type metadata accessor for BatteryLevelService, &unk_1013F9380);
    v10 = swift_task_alloc();
    *(v0 + 56) = v10;
    *(v10 + 16) = v7;
    *(v10 + 24) = v6;
    *(v10 + 32) = v5;
    *(v10 + 40) = v4;
    v11 = swift_task_alloc();
    *(v0 + 64) = v11;
    *v11 = v0;
    v11[1] = sub_10103E7E4;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v5, v9, 0xD000000000000036, 0x8000000101378690, sub_101042218, v10, &type metadata for () + 1);
  }

  else
  {
    type metadata accessor for UpdateBatteryLevelError(0);
    *(v0 + 24) = 3;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1000394F4(&qword_101696288, 255, type metadata accessor for UpdateBatteryLevelError, &unk_10138A100);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1000322C8()
{
  v1 = type metadata accessor for StableIdentifier(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  v7 = *(type metadata accessor for OwnedBeaconRecord(0) + 24);
  sub_10003263C(v0 + v7, v6, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100032704(v6, type metadata accessor for StableIdentifier);
  if (EnumCaseMultiPayload == 1)
  {
    return 1;
  }

  sub_10003263C(v0 + v7, v4, type metadata accessor for StableIdentifier);
  v10 = swift_getEnumCaseMultiPayload();
  if (v10 == 2)
  {
    sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

    goto LABEL_7;
  }

  if (v10 == 3)
  {
    sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

LABEL_7:

    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v4, v11);
    return 1;
  }

  sub_100032704(v4, type metadata accessor for StableIdentifier);
  return 0;
}

uint64_t sub_100032504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003256C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000325D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003263C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000326A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100032704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100032764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000327C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100032824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100032898(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&unk_1016B1490, &unk_1013C5310);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2A70(v4, &v13, &unk_101695C20, &unk_101386D90);
      v5 = v13;
      v6 = v14;
      result = sub_100A02D40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1001E6224(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1000329C8(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v45 = type metadata accessor for JoinType();
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Table();
  v53 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v46 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = v35 - v7;
  v8 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v40 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v35 - v12;
  v44 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v57 = *(v44 - 8);
  v14 = __chkstk_darwin(v44);
  v42 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v35 - v16;
  v18 = a2 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v49 = a2;
  v51 = (a2 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconKeys);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v38 = sub_1000076D4(v8, qword_10177C788);
  v35[0] = type metadata accessor for UUID();
  v35[1] = v18;
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v52 = v17;
  v19 = *(v40 + 8);
  v36 = v19;
  v37 = v8;
  v19(v11, v8);
  v19(v13, v8);
  v20 = v41;
  v21 = v43;
  v22 = v45;
  (*(v41 + 104))(v43, enum case for JoinType.leftOuter(_:), v45);
  v55 = v4;
  v56 = &protocol witness table for Table;
  v23 = sub_1000280DC(v54);
  v24 = v53;
  v39 = *(v53 + 16);
  v40 = v53 + 16;
  v39(v23, v51, v4);
  v25 = v46;
  QueryType.join(_:_:on:)();
  (*(v20 + 8))(v21, v22);
  sub_100007BAC(v54);
  QueryType.subscript.getter();
  v26 = v42;
  == infix<A>(_:_:)();
  v36(v13, v37);
  v27 = v48;
  v28 = v25;
  QueryType.filter(_:)();
  v29 = *(v57 + 8);
  v30 = v44;
  v57 += 8;
  v51 = v29;
  v29(v26, v44);
  v31 = *(v24 + 8);
  v53 = v24 + 8;
  v31(v25, v4);
  v55 = v4;
  v56 = &protocol witness table for Table;
  v32 = sub_1000280DC(v54);
  v39(v32, v27, v4);
  v33 = v50;
  sub_10001E52C(v54, v49);
  if (v33)
  {
    v31(v27, v4);
    v51(v52, v30);
    sub_100007BAC(v54);
  }

  else
  {
    sub_100007BAC(v54);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    v28 = sub_100033E60();

    v31(v27, v4);
    v51(v52, v30);
  }

  return v28;
}

void *sub_10003301C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016AFEB8, &qword_1013CC5A0, type metadata accessor for KeyGenerationBeaconInfo);
  *v3 = result;
  return result;
}

void *sub_100033060(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000BC4D4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_10003323C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  Error = type metadata accessor for QueryError();
  v63 = *(Error - 8);
  v64 = Error;
  __chkstk_darwin(Error);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v56 - v11;
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = __chkstk_darwin(v13 - 8);
  v61 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v56 - v16;
  v18 = type metadata accessor for UUID();
  v74 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v69 = &v56 - v22;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v65 = v21;
  sub_1000076D4(v7, qword_10177C818);
  v67 = type metadata accessor for Table();
  v68 = a1;
  QueryType.subscript.getter();
  v23 = v66;
  Row.get<A>(_:)();
  v66 = v18;
  v60 = v8;
  if (v23)
  {

    v24 = *(v8 + 8);
    v24(v12, v7);
    v25 = v74;
    v58 = v74[7];
    v58(v17, 1, 1, v18);
    v26 = a2;
    Row.subscript.getter();
    if ((v25[6])(v17, 1, v18) != 1)
    {
      sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v26 = a2;
    v24 = *(v8 + 8);
    v24(v12, v7);
    v27 = v74;
    v58 = v74[7];
    v58(v17, 0, 1, v18);
    (v27[4])(v69, v17, v18);
  }

  v28 = v61;
  v29 = v59;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v7, qword_10177C788);
  v30 = v66;
  QueryType.subscript.getter();
  Row.get<A>(_:)();
  v24(v29, v7);
  v31 = v74;
  v58(v28, 0, 1, v30);
  (v31[4])(v65, v28, v30);
  v32 = v26;
  if (qword_1016952E0 != -1)
  {
    swift_once();
  }

  v33 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v33, qword_10177C848);
  Row.get<A>(_:)();
  v34 = sub_10049BD68(v72, v73);
  v36 = v35;
  v63 = v34;
  if (qword_1016952C0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177C7E8);
  Row.get<A>(_:)();
  sub_1004A4714(v70, v71, &v72);
  v51 = v73;
  v62 = v72;
  if (qword_1016952E8 != -1)
  {
    swift_once();
  }

  v52 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v52, qword_10177C860);
  Row.get<A>(_:)();
  if (v73 >> 60 == 15)
  {
    v53 = v36;
    v54 = v51;
    v64 = 0;
    v55 = 0xF000000000000000;
  }

  else
  {
    sub_1004A4714(v72, v73, &v72);
    v53 = v36;
    v54 = v51;
    v55 = v73;
    v64 = v72;
  }

  v37 = v74[2];
  v38 = v57;
  v39 = v66;
  v37(v57, v69, v66);
  v40 = type metadata accessor for BeaconIdentifier(0);
  v37(v38 + *(v40 + 20), v65, v39);
  if (qword_1016952D8 != -1)
  {
    swift_once();
  }

  v41 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v41, qword_10177C830);
  v42 = type metadata accessor for KeyGenerationBeaconInfo(0);
  type metadata accessor for Date();
  Row.subscript.getter();
  v43 = (v38 + *(v42 + 24));
  v44 = v62;
  *v43 = v63;
  v43[1] = v53;
  v43[2] = v44;
  v43[3] = v54;
  v43[4] = v64;
  v43[5] = v55;
  if (qword_1016952F0 != -1)
  {
    swift_once();
  }

  v45 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v45, qword_10177C878);
  sub_100029580();
  Row.subscript.getter();
  v46 = type metadata accessor for Row();
  (*(*(v46 - 8) + 8))(v32, v46);
  (*(*(v67 - 8) + 8))(v68);
  v47 = v74[1];
  v48 = v66;
  v47(v65, v66);
  v47(v69, v48);
  result = sub_100033DEC(v72);
  if (result == 4)
  {
    v50 = 0;
  }

  else
  {
    v50 = result;
  }

  *(v38 + *(v42 + 28)) = v50;
  return result;
}

unint64_t sub_100033DEC(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_100033DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyGenerationBeaconInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100033E60()
{
  v0 = sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v3 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 80);
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v8 = *(v4 + 48);
  v35 = v4 + 48;
  v37 = v8;
  v9 = _swiftEmptyArrayStorage;
  if (v8(v2, 1, v3) != 1)
  {
    v10 = 0;
    v33 = v4;
    v34 = v7;
    v36 = (v7 + 32) & ~v7;
    v16 = _swiftEmptyArrayStorage + v36;
    v17 = _swiftEmptyArrayStorage;
    while (1)
    {
      result = sub_100029420(v2, v6, type metadata accessor for KeyGenerationBeaconInfo);
      if (v10)
      {
        v9 = v17;
        v14 = __OFSUB__(v10--, 1);
        if (v14)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v18 = v17[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        sub_1000BC4D4(&qword_1016AFEB8, &qword_1013CC5A0);
        v21 = *(v4 + 72);
        v22 = v36;
        v9 = swift_allocObject();
        result = j__malloc_size(v9);
        if (!v21)
        {
          goto LABEL_34;
        }

        v23 = result - v22;
        if ((result - v22) == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_35;
        }

        v25 = v3;
        v26 = v23 / v21;
        v9[2] = v20;
        v9[3] = 2 * (v23 / v21);
        v27 = v9 + v22;
        v28 = v17[3] >> 1;
        v29 = v28 * v21;
        if (v17[2])
        {
          if (v9 < v17 || v27 >= v17 + v36 + v29)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v9 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v16 = &v27[v29];
        v31 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;

        v3 = v25;
        v4 = v33;
        v14 = __OFSUB__(v31, 1);
        v10 = v31 - 1;
        if (v14)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }
      }

      sub_100029420(v6, v16, type metadata accessor for KeyGenerationBeaconInfo);
      v16 += *(v4 + 72);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v17 = v9;
      if (v37(v2, 1, v3) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v10 = 0;
LABEL_3:
  result = sub_10000B3A8(v2, &qword_10169E368, &qword_1013D6690);
  v12 = v9[3];
  if (v12 >= 2)
  {
    v13 = v12 >> 1;
    v14 = __OFSUB__(v13, v10);
    v15 = v13 - v10;
    if (v14)
    {
      goto LABEL_36;
    }

    v9[2] = v15;
  }

  return v9;
}

uint64_t sub_1000341A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
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

uint64_t sub_100034210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BeaconIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 3;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10003432C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BeaconIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 4)
      {
        return v14 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100034434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100034494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000344F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100034554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000345B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003461C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100034684(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap))
  {
    v9 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap);
LABEL_6:
    *a2 = v9;

    return;
  }

  v10 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  *v8 = v10;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v10)
  {
    v5 = objc_autoreleasePoolPush();
    sub_1007AA89C(a1, &v13);
    if (!v2)
    {
      objc_autoreleasePoolPop(v5);
      v9 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  objc_autoreleasePoolPop(v5);
  __break(1u);
}

void *sub_100034838(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = v45 - v6;
  v7 = type metadata accessor for BeaconObservation(0);
  result = __chkstk_darwin(v7);
  v51 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = 0;
  v53 = 0;
  v10 = 0;
  v45[0] = *(v11 + 80);
  v54 = _swiftEmptyArrayStorage;
  v47 = (v45[0] + 32) & ~v45[0];
  v48 = _swiftEmptyArrayStorage + v47;
  v12 = (v11 + 56);
  v45[1] = v11 + 48;
  v46 = v11;
  v52 = result;
LABEL_4:
  v15 = *(a1 + 16);
  if (v10 != v15)
  {
    if (v10 < v15)
    {
      while (1)
      {
        v16 = *(a1 + 32 + 8 * v10);

        if (v16)
        {
          break;
        }

LABEL_9:
        ++v10;
        v17 = *(a1 + 16);
        if (v10 == v17)
        {
          goto LABEL_38;
        }

        if (v10 >= v17)
        {
          goto LABEL_43;
        }
      }

      v13 = *(v16 + 16);
      if (!v13)
      {
        (*v12)(v5, 1, 1, v7);
        result = sub_10000B3A8(v5, &qword_1016A42E0, &qword_1013B0010);
        goto LABEL_9;
      }

      v14 = 0;
      ++v10;
      while (1)
      {
        if (v14 >= v13)
        {
          goto LABEL_44;
        }

        v18 = v46;
        v19 = *(v46 + 72);
        v55 = v14;
        v50 = v19;
        sub_100034F3C(v16 + v47 + v19 * v14, v5, type metadata accessor for BeaconObservation);
        (*(v18 + 56))(v5, 0, 1, v52);
        v20 = v49;
        sub_1000D2AD8(v5, v49, &qword_1016A42E0, &qword_1013B0010);
        v21 = *(v18 + 48);
        v7 = v52;
        if (v21(v20, 1, v52) == 1)
        {
          goto LABEL_39;
        }

        result = sub_100029420(v20, v51, type metadata accessor for BeaconObservation);
        v22 = v54;
        if (!v53)
        {
          break;
        }

        v23 = v48;
        v24 = v53 - 1;
        if (__OFSUB__(v53, 1))
        {
          goto LABEL_45;
        }

LABEL_37:
        v53 = v24;
        ++v55;
        result = sub_100029420(v51, v23, type metadata accessor for BeaconObservation);
        v48 = (v23 + v50);
        v54 = v22;
        v13 = *(v16 + 16);
        v14 = v55;
        if (v55 == v13)
        {
          (*v12)(v5, 1, 1, v7);
          result = sub_10000B3A8(v5, &qword_1016A42E0, &qword_1013B0010);
          goto LABEL_4;
        }
      }

      v25 = v54[3];
      if (((v25 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
      v28 = v47;
      v22 = swift_allocObject();
      result = j__malloc_size(v22);
      v29 = v50;
      if (!v50)
      {
        goto LABEL_48;
      }

      v30 = result - v28;
      if ((result - v28) == 0x8000000000000000 && v50 == -1)
      {
        goto LABEL_49;
      }

      v32 = v28;
      v33 = v30 / v50;
      v22[2] = v27;
      v22[3] = 2 * (v30 / v29);
      v34 = v22 + v32;
      v35 = v54;
      v36 = v54[3] >> 1;
      v37 = v36 * v29;
      if (!v54[2])
      {
LABEL_36:
        v23 = &v34[v37];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v36;

        v39 = __OFSUB__(v38, 1);
        v24 = v38 - 1;
        if (v39)
        {
          goto LABEL_45;
        }

        goto LABEL_37;
      }

      if (v22 < v54 || v34 >= v54 + v32 + v37)
      {
        v53 = v54[3] >> 1;
        v48 = v37;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v22 == v54)
        {
LABEL_35:
          v35[2] = 0;
          goto LABEL_36;
        }

        v53 = v54[3] >> 1;
        v48 = v37;
        swift_arrayInitWithTakeBackToFront();
      }

      v37 = v48;
      v36 = v53;
      v35 = v54;
      goto LABEL_35;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_38:
  v20 = v49;
  (*v12)(v49, 1, 1, v7);
LABEL_39:
  v41 = v53;
  v40 = v54;

  result = sub_10000B3A8(v20, &qword_1016A42E0, &qword_1013B0010);
  v42 = v40[3];
  if (v42 < 2)
  {
    return v40;
  }

  v43 = v42 >> 1;
  v39 = __OFSUB__(v43, v41);
  v44 = v43 - v41;
  if (!v39)
  {
    v40[2] = v44;
    return v40;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for BeaconObservation(uint64_t a1)
{
  result = qword_1016AE958;
  if (!qword_1016AE958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100034D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100034E04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100034E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100034ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100034F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100034FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003500C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for DefaultConfigurationLayer(uint64_t a1)
{
  result = qword_1016ADEE8;
  if (!qword_1016ADEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000350CC()
{
  v1 = type metadata accessor for ShareRecord(0);
  v12 = *(*(v1 - 1) + 64);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[8];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  return _swift_deallocObject(v0, ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000352C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100035310@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_10002F330(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_10002EA2C(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = Data._Representation.subscript.getter();
    v14 = v13;
    result = sub_100016590(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}