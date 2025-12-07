unint64_t sub_100D52A94()
{
  result = qword_1016BA888;
  if (!qword_1016BA888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA888);
  }

  return result;
}

uint64_t sub_100D52AE8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016BA870, &qword_1013E5300);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100D52B60()
{
  result = qword_1016BA8A0;
  if (!qword_1016BA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA8A0);
  }

  return result;
}

uint64_t sub_100D52BB4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016BA8A8, &qword_1013E5318);
    sub_100D52D94(a2, type metadata accessor for OwnSubmitLocationInfo, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100D52C80()
{
  result = qword_1016BA8D0;
  if (!qword_1016BA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA8D0);
  }

  return result;
}

uint64_t sub_100D52CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnSubmitLocationInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D52D38(uint64_t a1)
{
  v2 = type metadata accessor for OwnSubmitLocationInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D52D94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100D52E20()
{
  result = qword_1016BA8E0;
  if (!qword_1016BA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA8E0);
  }

  return result;
}

unint64_t sub_100D52E78()
{
  result = qword_1016BA8E8;
  if (!qword_1016BA8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA8E8);
  }

  return result;
}

unint64_t sub_100D52ED0()
{
  result = qword_1016BA8F0;
  if (!qword_1016BA8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA8F0);
  }

  return result;
}

unint64_t sub_100D52F28()
{
  result = qword_1016BA8F8;
  if (!qword_1016BA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA8F8);
  }

  return result;
}

unint64_t sub_100D52F80()
{
  result = qword_1016BA900;
  if (!qword_1016BA900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA900);
  }

  return result;
}

unint64_t sub_100D52FD8()
{
  result = qword_1016BA908;
  if (!qword_1016BA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA908);
  }

  return result;
}

unint64_t sub_100D53030()
{
  result = qword_1016BA910;
  if (!qword_1016BA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA910);
  }

  return result;
}

unint64_t sub_100D53088()
{
  result = qword_1016BA918;
  if (!qword_1016BA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA918);
  }

  return result;
}

unint64_t sub_100D530E0()
{
  result = qword_1016BA920;
  if (!qword_1016BA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA920);
  }

  return result;
}

unint64_t sub_100D53134()
{
  result = qword_1016BA930;
  if (!qword_1016BA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA930);
  }

  return result;
}

uint64_t sub_100D53188(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x41747865746E6F63 && a2 == 0xEA00000000007070;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x526873696C627570 && a2 == 0xED00006E6F736165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000)
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

uint64_t sub_100D532B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016BA938, &qword_1013E5708);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100D53134();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v12;
  v23 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_100007BAC(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_100D53510()
{
  result = qword_1016BA940;
  if (!qword_1016BA940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA940);
  }

  return result;
}

unint64_t sub_100D53568()
{
  result = qword_1016BA948;
  if (!qword_1016BA948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA948);
  }

  return result;
}

unint64_t sub_100D535C0()
{
  result = qword_1016BA950;
  if (!qword_1016BA950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA950);
  }

  return result;
}

id sub_100D538B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContainerAPSBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100D53918(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      v13 = v2;
      swift_once();
      v2 = v13;
    }

    v3 = qword_10177C388;

    return os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Invalid Public Token", 20, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10002E98C(a1, a2);
      swift_unknownObjectRelease();
      v7 = static os_log_type_t.default.getter();
      if (qword_101695040 != -1)
      {
        swift_once();
      }

      v8 = qword_10177C388;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_101385D80;
      v10 = Data.hexString.getter();
      v12 = v11;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_100008C00();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "APS public token: <%@>", 22, 2, v9);

      return sub_100006654(a1, a2);
    }
  }

  return result;
}

uint64_t sub_100D53B18(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15 || a4 == 0 || a6 == 0)
  {
    v8 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      v22 = v8;
      swift_once();
      v8 = v22;
    }

    v9 = qword_10177C388;

    return os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Invalid APS data arguments", 26, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10002E98C(a1, a2);
      swift_unknownObjectRelease();
      v23 = static os_log_type_t.default.getter();
      if (qword_101695040 != -1)
      {
        swift_once();
      }

      v16 = qword_10177C388;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_10138B360;
      v18 = Data.hexString.getter();
      v20 = v19;
      *(v17 + 56) = &type metadata for String;
      v21 = sub_100008C00();
      *(v17 + 32) = v18;
      *(v17 + 40) = v20;
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v21;
      *(v17 + 64) = v21;
      *(v17 + 72) = a3;
      *(v17 + 80) = a4;
      *(v17 + 136) = &type metadata for String;
      *(v17 + 144) = v21;
      *(v17 + 112) = a5;
      *(v17 + 120) = a6;

      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v16, "APS token: <%@> forTopic: [%{public}@] identifier: [%{public}@]", 63, 2, v17);

      return sub_100006654(a1, a2);
    }
  }

  return result;
}

uint64_t sub_100D53D74(void *a1)
{
  if (a1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = a1;
      sub_100291298(v3);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v4 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      v6 = v4;
      swift_once();
      v4 = v6;
    }

    v5 = qword_10177C388;

    return os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Invalid message Token", 21, 2, _swiftEmptyArrayStorage);
  }

  return result;
}

unint64_t sub_100D53E74(uint64_t a1)
{
  *(a1 + 8) = sub_100D53EA4();
  result = sub_10027FC0C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D53EA4()
{
  result = qword_1016BA9F0;
  if (!qword_1016BA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA9F0);
  }

  return result;
}

uint64_t type metadata accessor for AccessoryIdentityPairingLockAckEndPoint(uint64_t a1)
{
  result = qword_1016BAA50;
  if (!qword_1016BAA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D53F6C()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v0 = URLComponents.path.modify();
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x8000000101370560;
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

uint64_t sub_100D5415C(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v10 = *v1;
  v5 = *v1;
  sub_10015049C(v6, v7);
  sub_1001022C4(&v10, v4);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v5, *(&v5 + 1));
  if (!v2)
  {
    v9 = v1[2];
    v5 = v1[2];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v9, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v8 = v1[1];
    v5 = v1[1];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v8, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
  }

  return sub_100007BAC(v6);
}

double sub_100D542E8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100D54444(a2, v6);
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

uint64_t sub_100D54344@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v8 = v9 - v10;
  if (v11)
  {
    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_33;
    }

    v8 = v8;
  }

LABEL_10:
  if (v8 != 32)
  {
    goto LABEL_35;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a4);
      goto LABEL_20;
    }

LABEL_18:
    LODWORD(v13) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v13 = v13;
      goto LABEL_20;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v12 != 2)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v11 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v11)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  if (v13 != 1)
  {
    goto LABEL_36;
  }

  v16 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a6);
      goto LABEL_30;
    }

LABEL_28:
    LODWORD(v17) = HIDWORD(a5) - a5;
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      v17 = v17;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  if (v16 != 2)
  {
    goto LABEL_37;
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  v11 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v11)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_30:
  if (v17 == 100)
  {
    *a7 = result;
    a7[1] = a2;
    a7[2] = a5;
    a7[3] = a6;
    a7[4] = a3;
    a7[5] = a4;
    return result;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_100D54444@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v18, v19);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v18);
    return sub_100007BAC(a1);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    sub_10015049C(v18, v19);
    v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v21 = v10;
    sub_10015049C(v18, v19);
    v11 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v13 = v12;
    sub_100017D5C(v11, v12);
    sub_1000E0A3C();
    v14 = DataProtocol.intValue.getter();
    sub_10002EA98(v14, v11, v13, v17);
    sub_100016590(v17[0], v17[1]);
    sub_100D54344(v7, v8, v9, v21, v11, v13, v20);
    sub_100007BAC(v18);
    result = sub_100007BAC(a1);
    v16 = v20[1];
    *a2 = v20[0];
    a2[1] = v16;
    a2[2] = v20[2];
  }

  return result;
}

uint64_t sub_100D54608@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = result;
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v10 != 2)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v13 = *(result + 16);
  v12 = *(result + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (v14)
  {
    __break(1u);
LABEL_8:
    LODWORD(v11) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v11 = v11;
  }

LABEL_10:
  if (v11 != 32)
  {
    goto LABEL_52;
  }

  v15 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (v15)
    {
      goto LABEL_20;
    }

    v16 = BYTE6(a4);
    if (BYTE6(a4))
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  if (v15 == 2)
  {
    v17 = *(a3 + 16);
    v18 = *(a3 + 24);
    if (v17 == v18)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v14 = __OFSUB__(v18, v17);
    v16 = v18 - v17;
    if (!v14)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    if (!((a3 ^ (a3 << 32)) >> 32))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    LODWORD(v16) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v16 = v16;
LABEL_23:
    if (v16 > 100)
    {
      goto LABEL_43;
    }

    if (v15 == 2)
    {
      v21 = *(a3 + 16);
      v20 = *(a3 + 24);
      v14 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v14)
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    else if (v15 == 1)
    {
      LODWORD(v19) = HIDWORD(a3) - a3;
      if (__OFSUB__(HIDWORD(a3), a3))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v19 = v19;
      goto LABEL_32;
    }

    v19 = BYTE6(a4);
LABEL_32:
    v22 = 100 - v19;
    if (__OFSUB__(100, v19))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    sub_100017D5C(a3, a4);
    *&v34[0] = sub_100845C88(v22);
    *(&v34[0] + 1) = v23;
    sub_100776394(v34, 0);
    v24 = v34[0];
    Data.append(_:)();
    result = sub_100016590(v24, *(&v24 + 1));
    if (v15 == 2)
    {
      v27 = *(a3 + 16);
      v26 = *(a3 + 24);
      v14 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (v14)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    else
    {
      if (v15 != 1)
      {
LABEL_41:
        sub_1000198E8();
        v28 = FixedWidthInteger.data.getter();
        v30 = v29;
        sub_100016590(a3, a4);
        sub_100D54344(v8, a2, v28, v30, a3, a4, v34);
        sub_100017D5C(a3, a4);
        result = sub_100016590(a3, a4);
        v31 = v34[1];
        *a5 = v34[0];
        a5[1] = v31;
        a5[2] = v34[2];
        return result;
      }

      LODWORD(v25) = HIDWORD(a3) - a3;
      if (__OFSUB__(HIDWORD(a3), a3))
      {
        goto LABEL_50;
      }

      v25 = v25;
    }

    if ((v25 & 0x8000000000000000) == 0)
    {
      if (v25 > 0xFF)
      {
        __break(1u);
      }

      goto LABEL_41;
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_53:
  __break(1u);
  return result;
}

unint64_t sub_100D54898(uint64_t a1)
{
  *(a1 + 8) = sub_100D548C8();
  result = sub_10027FCB4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D548C8()
{
  result = qword_1016BAA88;
  if (!qword_1016BAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAA88);
  }

  return result;
}

uint64_t type metadata accessor for AccessoryPairingLockAckEndpoint(uint64_t a1)
{
  result = qword_1016BAAE8;
  if (!qword_1016BAAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D54990()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  URLComponents.path.setter();
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v0 = qword_10177C218;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v0 stringForKey:v3];

    if (v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

uint64_t sub_100D54B58@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for FMNAccountType.pairingLock(_:);
  v3 = type metadata accessor for FMNAccountType();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  type metadata accessor for PairingLockUpdateEndPoint(0);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.path.setter();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074618(v5);

  return URLComponents.host.setter();
}

uint64_t type metadata accessor for PairingLockUpdateEndPoint(uint64_t a1)
{
  result = qword_1016BAB78;
  if (!qword_1016BAB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D54D28()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BFF8);
  sub_1000076D4(v0, qword_10177BFF8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100D54DAC()
{
  type metadata accessor for SecureLocationsInfo();
  swift_allocObject();
  result = sub_100D54DE8();
  qword_10177C010 = result;
  return result;
}

uint64_t sub_100D54DE8()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v8[1] = _swiftEmptyArrayStorage;
  sub_100237258();
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0;
  return v0;
}

uint64_t sub_100D55010()
{
  sub_100D552C8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_100D55098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 72);
  v13[2] = *(a1 + 56);
  v13[3] = v3;
  v13[4] = *(a1 + 88);
  v14 = *(a1 + 104);
  v4 = *(a1 + 40);
  v13[0] = *(a1 + 24);
  v13[1] = v4;
  v5 = v3;
  if (v3)
  {
    v6 = *(a1 + 40);
    *a2 = *(a1 + 24);
    *(a2 + 16) = v6;
    *(a2 + 32) = *(a1 + 56);
    v7 = *(a1 + 96);
    *(a2 + 56) = *(a1 + 80);
    *(a2 + 72) = v7;
  }

  else
  {
    v8 = *(a1 + 72);
    v11[2] = *(a1 + 56);
    v11[3] = v8;
    v11[4] = *(a1 + 88);
    v12 = *(a1 + 104);
    v9 = *(a1 + 40);
    v11[0] = *(a1 + 24);
    v11[1] = v9;
    *(a1 + 24) = 16843009;
    *(a1 + 32) = 5;
    *(a1 + 40) = xmmword_1013E5BF0;
    *(a1 + 56) = 1;
    v5 = 0xE400000000000000;
    *(a1 + 64) = 808334897;
    *(a1 + 72) = 0xE400000000000000;
    *(a1 + 80) = 808334129;
    *(a1 + 88) = 0xE400000000000000;
    *(a1 + 96) = 3157561;
    *(a1 + 104) = 0xE300000000000000;
    sub_100D551F0(v11);
    *a2 = 16843009;
    *(a2 + 8) = 5;
    *(a2 + 16) = xmmword_1013E5BF0;
    *(a2 + 32) = 1;
    *(a2 + 40) = 808334897;
    *(a2 + 56) = 808334129;
    *(a2 + 64) = 0xE400000000000000;
    *(a2 + 72) = 3157561;
    *(a2 + 80) = 0xE300000000000000;
  }

  *(a2 + 48) = v5;
  return sub_100D55258(v13, v11);
}

uint64_t sub_100D551F0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016BAC58, &qword_1013E5C28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D55258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016BAC58, &qword_1013E5C28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D552C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
  }

  return result;
}

uint64_t sub_100D55318()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C018);
  v1 = sub_1000076D4(v0, qword_10177C018);
  if (qword_101694E60 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C030);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100D553E0()
{
  v1[8] = v0;
  v1[9] = *v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100D554A4, v0, 0);
}

uint64_t sub_100D554A4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = *(v3 + 128);
  v5 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_100D57208;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100997768;
  v0[5] = &unk_10164FF68;
  v6 = _Block_copy(v0 + 2);

  xpc_set_event_stream_handler("com.apple.distnoted.matching", v4, v6);
  _Block_release(v6);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v9 = sub_100D57398(&qword_1016BAD90, v8, type metadata accessor for DistributedNotificationService, &unk_1013E5DA0);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v9;
  v10[4] = v3;
  v10[5] = v2;
  swift_retain_n();
  sub_10025EDD4(0, 0, v1, &unk_1013E5E00, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100D556A0(void *a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
    {
      v8 = String.init(cString:)();
      v10 = v9;
      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v7;
      v12[5] = v8;
      v12[6] = v10;
      sub_10025EDD4(0, 0, v5, &unk_1013E5E10, v12);
    }
  }

  return result;
}

uint64_t sub_100D557FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100D55820, a4, 0);
}

uint64_t sub_100D55820()
{
  sub_100D55B98(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D55884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100D55928;

  return static Task<>.sleep(nanoseconds:)(30000000000);
}

uint64_t sub_100D55928()
{
  v2 = *v1;

  v3 = *(v2 + 16);
  if (v0)
  {

    v4 = sub_100D573E0;
  }

  else
  {
    v4 = sub_100D55A60;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D55A60()
{
  v1 = *(v0 + 16);
  if (*(v1 + 144) == 1)
  {
    if (qword_101694E58 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177C018);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = 30;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stop special launch event processing -- %llu seconds have passed since launch", v5, 0xCu);
    }

    *(v1 + 144) = 0;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100D55B98(uint64_t a1, void *a2)
{
  v5 = *(*(v2 + 136) + 16);
  if (*(v2 + 144) == 1 && !*(v2 + 160))
  {
    if (qword_101694E58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C018);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v9 = 136315138;
      v24[0] = v23;
      _StringGuts.grow(_:)(29);

      v10._countAndFlagsBits = a1;
      v10._object = a2;
      String.append(_:)(v10);
      v11._countAndFlagsBits = 93;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      v12 = sub_1000136BC(0xD00000000000001ALL, 0x80000001013706E0, v24);

      *(v9 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "Storing launchEvent: %s", v9, 0xCu);
      sub_100007BAC(v23);
    }

    *(v2 + 144) = 0;
    *(v2 + 152) = a1;
    *(v2 + 160) = a2;
  }

  if (qword_101694E58 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C018);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 136315394;
    v24[0] = v17;
    _StringGuts.grow(_:)(29);

    v18._countAndFlagsBits = a1;
    v18._object = a2;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 93;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20 = sub_1000136BC(0xD00000000000001ALL, 0x80000001013706E0, v24);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v14, v15, "Publishing %s to %ld clients.", v16, 0x16u);
    sub_100007BAC(v17);
  }

  v21 = type metadata accessor for Transaction();
  __chkstk_darwin(v21);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100D55F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v8 = sub_1000BC4D4(&qword_1016BAD98, &qword_1013E5DF0);
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v24 - v9;
  v11 = sub_1000BC4D4(&qword_1016B3D00, &unk_1013E5DD0);
  __chkstk_darwin(v11);
  v14 = v24 - v13;
  result = *(a2 + 136);
  v16 = *(result + 16);
  if (v16)
  {
    v24[0] = *(a2 + 136);
    v24[1] = v4;
    v18 = *(v12 + 16);
    v17 = v12 + 16;
    v19 = result + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v28 = *(v17 + 56);
    v29 = v18;
    v33 = v17;
    v20 = (v17 - 8);
    v27 = a3;
    v21 = (v26 + 8);

    v26 = v8;
    v22 = a1;
    v23 = v25;
    do
    {
      v29(v14, v19, v11);
      v30 = v22;
      v31 = v27;
      v32 = v23;

      AsyncStream.Continuation.yield(_:)();
      (*v20)(v14, v11);
      (*v21)(v10, v26);
      v19 += v28;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_100D561A8(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016BAD98, &qword_1013E5DF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v25 - v5;
  v7 = sub_1000BC4D4(&qword_1016B3D00, &unk_1013E5DD0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v25 - v9;
  v11 = *(v8 + 16);
  v25[0] = a1;
  v11(v25 - v9, a1, v7);
  v12 = v1[17];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[17] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_100A5EB84(0, v12[2] + 1, 1, v12);
    v1[17] = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_100A5EB84((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  result = (*(v8 + 32))(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v10, v7);
  v1[17] = v12;
  v17 = v1[20];
  if (v17)
  {
    v18 = v1[19];
    v19 = qword_101694E58;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177C018);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Publishing LaunchEvent to new client", v23, 2u);
    }

    v24 = type metadata accessor for Transaction();
    __chkstk_darwin(v24);
    v25[-4] = v25[0];
    v25[-3] = v18;
    v25[-2] = v17;
    static Transaction.named<A>(_:with:)();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_100D56510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1000BC4D4(&qword_1016B3D00, &unk_1013E5DD0);
  return AsyncStream.Continuation.yield(_:)();
}

uint64_t sub_100D56584()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100D56608()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v0 + 112) = 0xD00000000000001ELL;
  *(v0 + 120) = 0x80000001013E5C40;
  sub_1000BC488();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v8[1] = _swiftEmptyArrayStorage;
  sub_100D57398(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 128) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 136) = _swiftEmptyArrayStorage;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  return v0;
}

uint64_t sub_100D5687C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DistributedNotificationService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100D56924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DistributedNotificationService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100D569E8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DistributedNotificationService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100D56A90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D553E0();
}

uint64_t sub_100D56B1C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DistributedNotificationService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100D56BC4()
{
  type metadata accessor for DistributedNotificationService();
  sub_100D57398(&qword_1016A51C8, v0, type metadata accessor for DistributedNotificationService, &unk_1013E5D40);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100D56C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B3D00, &unk_1013E5DD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_10025EDD4(0, 0, v10, &unk_1013E5DE8, v13);
}

uint64_t sub_100D56E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100D56E38, a4, 0);
}

uint64_t sub_100D56E38()
{
  sub_100D561A8(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D56E98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v2[2] = a2;
  v2[3] = v3;
  v2[4] = v4;
  return _swift_task_switch(sub_100D56EC0, 0, 0);
}

uint64_t sub_100D56EC0()
{
  v1 = sub_10111EACC(v0[3], v0[4], v0[2]);
  v2 = v0[1];
  v3 = v1 & 1;

  return v2(v3);
}

unint64_t sub_100D56F28()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(29);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 93;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD00000000000001ALL;
}

uint64_t sub_100D57044(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016B3D00, &unk_1013E5DD0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100D56E18(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100D57148()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C030);
  sub_1000076D4(v0, qword_10177C030);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100D57210(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100D55884(a1, v4, v5, v6);
}

uint64_t sub_100D572D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100D557FC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100D57398(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_100D573E4(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a1;
  type metadata accessor for SPPairingSessionError(0);
  sub_100D58E48(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.code.getter();
  if ((v15 - 2) > 0x12)
  {
    *(a4 + 16) = 0;
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *(a4 + 16) = byte_1013E629E[v15 - 2];
    if (!a3)
    {
LABEL_5:
      v8 = _BridgedStoredNSError.userInfo.getter();
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v8 + 16))
      {
        v11 = sub_100771D58(v9, v10);
        v13 = v12;

        if (v13)
        {
          sub_100013894(*(v8 + 56) + 32 * v11, &v17);

          if (swift_dynamicCast())
          {
            a2 = v15;
            a3 = v16;
            goto LABEL_12;
          }

LABEL_11:
          a2 = 0;
          a3 = 0xE000000000000000;
          goto LABEL_12;
        }
      }

      else
      {
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  *a4 = a2;
  *(a4 + 8) = a3;
  v14 = type metadata accessor for PairingError(0);
  static Date.trustedNow.getter(a4 + *(v14 + 24));
}

unint64_t sub_100D57594()
{
  sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  v9 = sub_100D578DC(*(v0 + 16));
  v10 = v3;
  v4._countAndFlagsBits = 2108704;
  v4._object = 0xE300000000000000;
  String.append(_:)(v4);
  String.append(_:)(*v0);
  v5._countAndFlagsBits = 2108704;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  type metadata accessor for PairingError(0);
  type metadata accessor for Date();
  sub_100D58E48(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v7 = sub_100907E70(inited);
  swift_setDeallocating();
  sub_100D58E90(inited + 32);
  type metadata accessor for SPPairingSessionError(0);
  sub_1006953B0(v7);

  sub_100D58E48(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v9;
}

unint64_t sub_100D578DC(char a1)
{
  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 1:
      result = 0x64616552746F6E2ELL;
      break;
    case 2:
      result = 0x656E654779656B2ELL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6B726F7774656E2ELL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x64696C61766E692ELL;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x746E65687475612ELL;
      break;
    case 9:
      result = 0x746E756F6363612ELL;
      break;
    case 10:
      result = 0x636552657661732ELL;
      break;
    case 11:
      result = 0x696E756D6D6F632ELL;
      break;
    case 12:
      result = 0x754F64656D69742ELL;
      break;
    case 13:
      result = 0x70707553746F6E2ELL;
      break;
    case 14:
      result = 0x797265747461622ELL;
      break;
    case 15:
      result = 0x67696C45746F6E2ELL;
      break;
    case 16:
      result = 0x655274696D696C2ELL;
      break;
    case 17:
      result = 0x64656B636F6C2ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100D57B30@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D592F0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D57C0C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BAF18, &qword_1013E6078);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100D591F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + 16);
    v10[13] = 1;
    sub_100D5929C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for PairingError(0);
    v10[12] = 2;
    type metadata accessor for Date();
    sub_100D58E48(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100D57E04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for Date();
  v20 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_1016BAF00, &qword_1013E6070);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for PairingError(0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100D591F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v18 = v8;
  v19 = v5;
  v12 = v22;
  v11 = v23;
  v28 = 0;
  *v10 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v10 + 1) = v13;
  v17 = v13;
  v26 = 1;
  sub_100D59248();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v12;
  v10[16] = v27;
  v25 = 2;
  sub_100D58E48(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v15 = v19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 8))(v7, v24);
  (*(v20 + 32))(&v10[*(v18 + 24)], v15, v11);
  sub_10024534C(v10, v21, type metadata accessor for PairingError);
  sub_100007BAC(a1);
  return sub_1002453BC(v10, type metadata accessor for PairingError);
}

uint64_t sub_100D58190(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016BAEF0, &qword_1013E6068);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100D5913C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_100D58E48(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for PairingErrorRecord(0);
    v8[14] = 1;
    type metadata accessor for PairingError(0);
    sub_100D58E48(&qword_1016BAEF8, type metadata accessor for PairingError, &unk_1013E5FA0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100D58390@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for PairingError(0);
  __chkstk_darwin(v22);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for UUID();
  v21 = *(v25 - 8);
  __chkstk_darwin(v25);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000BC4D4(&qword_1016BAED8, &qword_1013E6060);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v17 - v7;
  v9 = type metadata accessor for PairingErrorRecord(0);
  __chkstk_darwin(v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100D5913C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v18 = v9;
  v19 = v11;
  v12 = v21;
  v28 = 0;
  sub_100D58E48(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = v23;
  v14 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 32))(v19, v13, v14);
  v27 = 1;
  sub_100D58E48(&qword_1016BAEE8, type metadata accessor for PairingError, &unk_1013E5FC8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 8))(v8, v26);
  v15 = v19;
  sub_100D59190(v5, &v19[*(v18 + 20)]);
  sub_10024534C(v15, v20, type metadata accessor for PairingErrorRecord);
  sub_100007BAC(a1);
  return sub_1002453BC(v15, type metadata accessor for PairingErrorRecord);
}

uint64_t sub_100D58784()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 1702125924;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F666E4972657375;
  }
}

uint64_t sub_100D587D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100D59584(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100D587F8(uint64_t a1)
{
  v2 = sub_100D591F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D58834(uint64_t a1)
{
  v2 = sub_100D591F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100D588A0()
{
  v1._countAndFlagsBits = sub_100D578DC(*(v0 + 16));
  String.append(_:)(v1);

  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  String.append(_:)(*v0);
  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 60;
}

uint64_t sub_100D58928()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177C048);
  sub_1000076D4(v0, qword_10177C048);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100D58A84()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_100D58AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t sub_100D58BA0(uint64_t a1)
{
  v2 = sub_100D5913C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D58BDC(uint64_t a1)
{
  v2 = sub_100D5913C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100D58C48()
{
  type metadata accessor for UUID();
  sub_100D58E48(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = v0 + *(type metadata accessor for PairingErrorRecord(0) + 20);
  v4._countAndFlagsBits = sub_100D578DC(*(v3 + 16));
  String.append(_:)(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  String.append(_:)(*v3);
  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 60;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  type metadata accessor for PairingError(0);
  type metadata accessor for Date();
  sub_100D58E48(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 60;
}

uint64_t sub_100D58E48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100D58E90(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D58F20(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100D58FDC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PairingError(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100D59064()
{
  result = qword_1016BAEC8;
  if (!qword_1016BAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAEC8);
  }

  return result;
}

uint64_t sub_100D590B8(uint64_t a1)
{
  *(a1 + 8) = sub_100D58E48(&qword_1016BAED0, type metadata accessor for PairingErrorRecord, &unk_1013E6034);
  result = sub_100D58E48(&unk_1016B1850, type metadata accessor for PairingErrorRecord, &unk_1013E5FF0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D5913C()
{
  result = qword_1016BAEE0;
  if (!qword_1016BAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAEE0);
  }

  return result;
}

uint64_t sub_100D59190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100D591F4()
{
  result = qword_1016BAF08;
  if (!qword_1016BAF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF08);
  }

  return result;
}

unint64_t sub_100D59248()
{
  result = qword_1016BAF10;
  if (!qword_1016BAF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF10);
  }

  return result;
}

unint64_t sub_100D5929C()
{
  result = qword_1016BAF20;
  if (!qword_1016BAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF20);
  }

  return result;
}

unint64_t sub_100D592F0(unint64_t result)
{
  if (result >= 0x12)
  {
    return 18;
  }

  return result;
}

unint64_t sub_100D59300()
{
  result = qword_1016BAF28;
  if (!qword_1016BAF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF28);
  }

  return result;
}

unint64_t sub_100D59378()
{
  result = qword_1016BAF30;
  if (!qword_1016BAF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF30);
  }

  return result;
}

unint64_t sub_100D593D0()
{
  result = qword_1016BAF38;
  if (!qword_1016BAF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF38);
  }

  return result;
}

unint64_t sub_100D59428()
{
  result = qword_1016BAF40;
  if (!qword_1016BAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF40);
  }

  return result;
}

unint64_t sub_100D59480()
{
  result = qword_1016BAF48;
  if (!qword_1016BAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF48);
  }

  return result;
}

unint64_t sub_100D594D8()
{
  result = qword_1016BAF50;
  if (!qword_1016BAF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF50);
  }

  return result;
}

unint64_t sub_100D59530()
{
  result = qword_1016BAF58;
  if (!qword_1016BAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF58);
  }

  return result;
}

uint64_t sub_100D59584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
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

uint64_t sub_100D5969C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100D59848(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_100D596CC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
  if (v5 != 32)
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
  if (v10 != 113)
  {
    goto LABEL_25;
  }

  return result;
}

unint64_t sub_100D59770(uint64_t a1)
{
  *(a1 + 8) = sub_100D597A0();
  result = sub_100D597F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D597A0()
{
  result = qword_1016BAF60;
  if (!qword_1016BAF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF60);
  }

  return result;
}

unint64_t sub_100D597F4()
{
  result = qword_1016BAF68;
  if (!qword_1016BAF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF68);
  }

  return result;
}

uint64_t sub_100D59848(void *a1)
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
    v3 = sub_100D596CC(v6, v7, v8, v10);
  }

  sub_100007BAC(v11);
  sub_100007BAC(a1);
  return v3;
}

uint64_t sub_100D5998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 392) = v14;
  *(v8 + 376) = v13;
  *(v8 + 360) = a6;
  *(v8 + 368) = a8;
  *(v8 + 520) = a7;
  *(v8 + 344) = a4;
  *(v8 + 352) = a5;
  *(v8 + 328) = a2;
  *(v8 + 336) = a3;
  *(v8 + 320) = a1;
  v9 = type metadata accessor for BinaryDecoder();
  *(v8 + 400) = v9;
  *(v8 + 408) = *(v9 - 8);
  *(v8 + 416) = swift_task_alloc();
  v10 = type metadata accessor for BinaryEncoder();
  *(v8 + 424) = v10;
  *(v8 + 432) = *(v10 - 8);
  *(v8 + 440) = swift_task_alloc();

  return _swift_task_switch(sub_100D59AD0, 0, 0);
}

uint64_t sub_100D59AD0(uint64_t a1)
{
  v26 = v1;
  BinaryEncoder.init()();
  BinaryDecoder.init()();
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 336);
  v3 = type metadata accessor for Logger();
  *(v1 + 448) = sub_1000076D4(v3, qword_10177B048);
  sub_1001011C0(v2, v1 + 16);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x800000010136F580, v25);
    *(v6 + 12) = 2082;
    sub_1001011C0(v1 + 16, v1 + 256);
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_100007BAC((v1 + 16));
    v10 = sub_1000136BC(v7, v9, v25);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Sending command: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC((v1 + 16));
  }

  sub_1000035D0(*(v1 + 336), *(*(v1 + 336) + 24));
  v11 = BinaryEncoder.encode<A>(_:)();
  *(v1 + 456) = v11;
  *(v1 + 464) = v12;
  if (*(v1 + 520) == 1)
  {
    v13 = swift_task_alloc();
    *(v1 + 472) = v13;
    *v13 = v1;
    v13[1] = sub_100D59F44;
    v14 = *(v1 + 392);
    v15 = *(v1 + 376);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v15, v14);
  }

  else
  {
    v16 = v11;
    v17 = v12;
    sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
    sub_100017D5C(v16, v17);
    v19 = *(v1 + 520);
    v20 = *(v1 + 328);
    v21 = swift_allocObject();
    *(v1 + 496) = v21;
    v22 = *(v1 + 384);
    *(v21 + 16) = *(v1 + 368);
    *(v21 + 32) = v22;
    *(v21 + 48) = v19;
    *(v21 + 56) = v20;
    *(v21 + 64) = v18;
    swift_unknownObjectRetain();
    v23 = swift_task_alloc();
    *(v1 + 504) = v23;
    *v23 = v1;
    v23[1] = sub_100D5A18C;

    return withTimeout<A>(_:block:)(v1 + 304, 0x8AC7230489E80000, 0, &unk_1013E6480, v21, &type metadata for Data);
  }
}

uint64_t sub_100D59F44(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 480) = v1;

  if (v1)
  {
    v5 = sub_100D5A8C0;
  }

  else
  {
    *(v4 + 488) = a1;
    v5 = sub_100D5A06C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D5A06C()
{
  v1 = fragment(data:mtu:)();
  v2 = *(v0 + 520);
  v3 = *(v0 + 328);
  v4 = swift_allocObject();
  *(v0 + 496) = v4;
  v5 = *(v0 + 384);
  *(v4 + 16) = *(v0 + 368);
  *(v4 + 32) = v5;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  *(v4 + 64) = v1;
  swift_unknownObjectRetain();
  v6 = swift_task_alloc();
  *(v0 + 504) = v6;
  *v6 = v0;
  v6[1] = sub_100D5A18C;

  return withTimeout<A>(_:block:)(v0 + 304, 0x8AC7230489E80000, 0, &unk_1013E6480, v4, &type metadata for Data);
}

uint64_t sub_100D5A18C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_100D5A984;
  }

  else
  {
    v2 = sub_100D5A2C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_100D5A2C0()
{
  v59 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  sub_1001011C0(*(v0 + 336), v0 + 64);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x800000010136F580, v58);
    *(v5 + 12) = 2082;
    sub_1001011C0(v0 + 64, v0 + 208);
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    sub_100007BAC((v0 + 64));
    v9 = sub_1000136BC(v6, v8, v58);

    *(v5 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Sent command: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC((v0 + 64));
  }

  sub_100017D5C(v2, v1);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    result = swift_slowAlloc();
    v14 = result;
    v58[0] = result;
    *v12 = 134218242;
    v15 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v15 != 2)
      {
        v16 = 0;
        goto LABEL_16;
      }

      v18 = *(v2 + 16);
      v17 = *(v2 + 24);
      v19 = __OFSUB__(v17, v18);
      v16 = v17 - v18;
      if (!v19)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v15)
    {
      v16 = BYTE6(v1);
LABEL_16:
      *(v12 + 4) = v16;
      sub_100016590(v2, v1);
      *(v12 + 12) = 2082;
      v20 = Data.hexString.getter();
      v22 = sub_1000136BC(v20, v21, v58);

      *(v12 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "Length: %ld received raw response: %{public}s", v12, 0x16u);
      sub_100007BAC(v14);

      goto LABEL_17;
    }

    LODWORD(v16) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
      return result;
    }

    v16 = v16;
    goto LABEL_16;
  }

  sub_100016590(v2, v1);
LABEL_17:

  v23 = *(v0 + 512);
  v24 = *(v0 + 320);
  v25 = *(v0 + 352);
  *(v24 + 24) = *(v0 + 344);
  *(v24 + 32) = v25;
  sub_1000280DC(v24);
  BinaryDecoder.decode<A>(_:from:)();
  v26 = v2;
  if (v23)
  {
    v28 = *(v0 + 456);
    v27 = *(v0 + 464);
    v56 = *(v0 + 440);
    v29 = v1;
    v31 = *(v0 + 424);
    v30 = *(v0 + 432);
    v32 = *(v0 + 408);
    v33 = *(v0 + 416);
    v34 = *(v0 + 400);
    v35 = *(v0 + 320);
    sub_100016590(v26, v29);
    sub_100016590(v28, v27);
    (*(v32 + 8))(v33, v34);
    (*(v30 + 8))(v56, v31);
    sub_100101758(v35);

    v36 = *(v0 + 8);
  }

  else
  {
    v57 = v2;
    sub_1001011C0(*(v0 + 320), v0 + 112);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v54 = *(v0 + 456);
    v55 = *(v0 + 464);
    v41 = *(v0 + 432);
    v40 = *(v0 + 440);
    v43 = *(v0 + 416);
    v42 = *(v0 + 424);
    v44 = *(v0 + 400);
    v45 = *(v0 + 408);
    if (v39)
    {
      v53 = *(v0 + 440);
      v46 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v46 = 136315394;
      *(v46 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x800000010136F580, v58);
      *(v46 + 12) = 2082;
      sub_1001011C0(v0 + 112, v0 + 160);
      sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
      v51 = v44;
      v52 = v43;
      v47 = String.init<A>(describing:)();
      v49 = v48;
      sub_100007BAC((v0 + 112));
      v50 = sub_1000136BC(v47, v49, v58);

      *(v46 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s Received response: %{public}s", v46, 0x16u);
      swift_arrayDestroy();

      sub_100016590(v57, v1);
      sub_100016590(v54, v55);
      (*(v45 + 8))(v52, v51);
      (*(v41 + 8))(v53, v42);
    }

    else
    {

      sub_100016590(v57, v1);
      sub_100016590(v54, v55);
      sub_100007BAC((v0 + 112));
      (*(v45 + 8))(v43, v44);
      (*(v41 + 8))(v40, v42);
    }

    v36 = *(v0 + 8);
  }

  return v36();
}

uint64_t sub_100D5A8C0()
{
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[50];
  v6 = v0[51];
  sub_100016590(v0[57], v0[58]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100D5A984()
{
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[50];
  v6 = v0[51];
  sub_100016590(v0[57], v0[58]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100D5AA48(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a1;
  v13 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v8[5] = v13;
  v8[6] = *(v13 - 8);
  v14 = swift_task_alloc();
  v8[7] = v14;
  v15 = swift_task_alloc();
  v8[8] = v15;
  if (a2)
  {
    v14 = v15;
    v16 = swift_task_alloc();
    v8[9] = v16;
    *v16 = v8;
    v17 = sub_100D5ABE0;
  }

  else
  {
    v16 = swift_task_alloc();
    v8[15] = v16;
    *v16 = v8;
    v17 = sub_100D5AF74;
  }

  v16[1] = v17;

  return dispatch thunk of CharacteristicProtocol.write(data:)(v14, a4, a6, a8);
}

uint64_t sub_100D5ABE0()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C10EA4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[11] = v3;
    v4 = sub_10048E70C();
    *v3 = v2;
    v3[1] = sub_100D5AD6C;
    v5 = v2[5];

    return AsyncSequence<>.reassemble()(v5, v4);
  }
}

uint64_t sub_100D5AD6C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[12] = v2;

  v7 = v6[8];
  v8 = v6[6];
  v9 = v6[5];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_100C11160;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_100D5AEF8;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100D5AEF8()
{
  **(v0 + 32) = vextq_s8(*(v0 + 104), *(v0 + 104), 8uLL);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D5AF74()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100D5B470, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[17] = v3;
    v4 = sub_10048E70C();
    *v3 = v2;
    v3[1] = sub_100D5B104;
    v5 = v2[5];

    return AsyncSequence.first()(v2 + 2, v5, v4);
  }
}

uint64_t sub_100D5B104()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v3 = sub_100C113B4;
  }

  else
  {
    v3 = sub_100D5B26C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100D5B26C()
{
  v11 = v0;
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177B048);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x800000010136F580, &v10);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Invalid response!", v5, 0xCu);
      sub_100007BAC(v6);
    }

    type metadata accessor for OwnerCommandService.Error(0);
    sub_100D5B5B8();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v7 = v0[1];
  }

  else
  {
    v8 = v0[4];
    *v8 = v0[2];
    v8[1] = v1;

    v7 = v0[1];
  }

  return v7();
}

uint64_t sub_100D5B470()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D5B4DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_100D5AA48(a1, v8, v10, v9, v4, v5, v6, v7);
}

unint64_t sub_100D5B5B8()
{
  result = qword_1016A7818;
  if (!qword_1016A7818)
  {
    type metadata accessor for OwnerCommandService.Error(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A7818);
  }

  return result;
}

uint64_t sub_100D5B610(uint64_t a1)
{
  v1 = (*(a1 + 208) >> 59) & 6;
  if (v1 == 6)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 | (*(a1 + 192) >> 63);
  }
}

unint64_t sub_100D5B64C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  v84[10] = v1[10];
  v84[11] = v3;
  v84[12] = v1[12];
  v85 = *(v1 + 26);
  v4 = v1[7];
  v84[6] = v1[6];
  v84[7] = v4;
  v5 = v1[9];
  v84[8] = v1[8];
  v84[9] = v5;
  v6 = v1[3];
  v84[2] = v1[2];
  v84[3] = v6;
  v7 = v1[5];
  v84[4] = v1[4];
  v84[5] = v7;
  v8 = v1[1];
  v84[0] = *v1;
  v84[1] = v8;
  v9 = sub_1001DA684(v84);
  if (v9 <= 3)
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v23 = sub_10004CA28(v84);
        a1[3] = &type metadata for AirPodsLESendPairingDataCommandPayload;
        a1[4] = sub_1009A00A4();
        v24 = swift_allocObject();
        *a1 = v24;
        memmove((v24 + 16), v23, 0xD8uLL);
        v25 = v1[11];
        v80 = v1[10];
        v81 = v25;
        v82 = v1[12];
        v83 = *(v1 + 26);
        v26 = v1[7];
        v76 = v1[6];
        v77 = v26;
        v27 = v1[9];
        v78 = v1[8];
        v79 = v27;
        v28 = v1[3];
        v72 = v1[2];
        v73 = v28;
        v29 = v1[5];
        v74 = v1[4];
        v75 = v29;
        v30 = v1[1];
        v70 = *v1;
        v71 = v30;
        v31 = sub_10004CA28(&v70);
        v32 = &unk_1016B0720;
        v33 = &unk_1013CDFD0;
      }

      else
      {
        v50 = sub_10004CA28(v84);
        a1[3] = &type metadata for AirPodsLEFinalizePairingCommandPayload;
        a1[4] = sub_10099FFE8();
        v51 = swift_allocObject();
        *a1 = v51;
        memmove((v51 + 16), v50, 0xC0uLL);
        v52 = v1[11];
        v80 = v1[10];
        v81 = v52;
        v82 = v1[12];
        v83 = *(v1 + 26);
        v53 = v1[7];
        v76 = v1[6];
        v77 = v53;
        v54 = v1[9];
        v78 = v1[8];
        v79 = v54;
        v55 = v1[3];
        v72 = v1[2];
        v73 = v55;
        v56 = v1[5];
        v74 = v1[4];
        v75 = v56;
        v57 = v1[1];
        v70 = *v1;
        v71 = v57;
        v31 = sub_10004CA28(&v70);
        v32 = &unk_1016B0718;
        v33 = &unk_1013CDFC8;
      }
    }

    else
    {
      if (!v9)
      {
        v11 = sub_10004CA28(v84);
        a1[3] = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
        a1[4] = sub_100391B94();
        v12 = swift_allocObject();
        *a1 = v12;
        v13 = v11[1];
        *(v12 + 16) = *v11;
        *(v12 + 32) = v13;
        v14 = v1[1];
        v70 = *v1;
        v71 = v14;
        v15 = v1[5];
        v74 = v1[4];
        v75 = v15;
        v16 = v1[3];
        v72 = v1[2];
        v73 = v16;
        v17 = v1[9];
        v78 = v1[8];
        v79 = v17;
        v18 = v1[7];
        v76 = v1[6];
        v77 = v18;
        v83 = *(v1 + 26);
        v19 = v1[12];
        v81 = v1[11];
        v82 = v19;
        v80 = v1[10];
        v20 = sub_10004CA28(&v70);
        v21 = v20[2];
        v22 = v20[3];
        sub_100017D5C(*v20, v20[1]);
        return sub_100017D5C(v21, v22);
      }

      v42 = sub_10004CA28(v84);
      a1[3] = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      a1[4] = sub_100391B40();
      v43 = swift_allocObject();
      *a1 = v43;
      memmove((v43 + 16), v42, 0x50uLL);
      v44 = v1[11];
      v80 = v1[10];
      v81 = v44;
      v82 = v1[12];
      v83 = *(v1 + 26);
      v45 = v1[7];
      v76 = v1[6];
      v77 = v45;
      v46 = v1[9];
      v78 = v1[8];
      v79 = v46;
      v47 = v1[3];
      v72 = v1[2];
      v73 = v47;
      v48 = v1[5];
      v74 = v1[4];
      v75 = v48;
      v49 = v1[1];
      v70 = *v1;
      v71 = v49;
      v31 = sub_10004CA28(&v70);
      v32 = &unk_10169EAC0;
      v33 = &unk_10139E338;
    }

    return sub_1000D2A70(v31, v69, v32, v33);
  }

  if (v9 <= 5)
  {
    if (v9 == 4)
    {
      v34 = sub_10004CA28(v84);
      a1[3] = &type metadata for AirPodsMCFinalizePairingCommandPayload;
      a1[4] = sub_1009A1FAC();
      v35 = swift_allocObject();
      *a1 = v35;
      memmove((v35 + 16), v34, 0xC0uLL);
      v36 = v1[11];
      v80 = v1[10];
      v81 = v36;
      v82 = v1[12];
      v83 = *(v1 + 26);
      v37 = v1[7];
      v76 = v1[6];
      v77 = v37;
      v38 = v1[9];
      v78 = v1[8];
      v79 = v38;
      v39 = v1[3];
      v72 = v1[2];
      v73 = v39;
      v40 = v1[5];
      v74 = v1[4];
      v75 = v40;
      v41 = v1[1];
      v70 = *v1;
      v71 = v41;
      v31 = sub_10004CA28(&v70);
      v32 = &unk_1016B82A8;
      v33 = &unk_1013E7AE0;
    }

    else
    {
      v58 = sub_10004CA28(v84);
      a1[3] = &type metadata for AirPodsLESendPairingStatusCommandPayload;
      a1[4] = sub_1009A00FC();
      v59 = swift_allocObject();
      *a1 = v59;
      v60 = v58[3];
      v62 = *v58;
      v61 = v58[1];
      v59[3] = v58[2];
      v59[4] = v60;
      v59[1] = v62;
      v59[2] = v61;
      v63 = v1[11];
      v80 = v1[10];
      v81 = v63;
      v82 = v1[12];
      v83 = *(v1 + 26);
      v64 = v1[7];
      v76 = v1[6];
      v77 = v64;
      v65 = v1[9];
      v78 = v1[8];
      v79 = v65;
      v66 = v1[3];
      v72 = v1[2];
      v73 = v66;
      v67 = v1[5];
      v74 = v1[4];
      v75 = v67;
      v68 = v1[1];
      v70 = *v1;
      v71 = v68;
      v31 = sub_10004CA28(&v70);
      v32 = &unk_1016B0710;
      v33 = &unk_1013CDFC0;
    }

    return sub_1000D2A70(v31, v69, v32, v33);
  }

  if (v9 == 6)
  {
    a1[3] = &type metadata for AccessoryGenericPayload;
    result = sub_10030FF74();
  }

  else if (v9 == 7)
  {
    a1[3] = &type metadata for AirPodsPairingCompleteCommandPayload;
    result = sub_1009A0048();
  }

  else
  {
    a1[3] = &type metadata for UnpairCommandPayload;
    result = sub_10027EE90();
  }

  a1[4] = result;
  return result;
}

uint64_t sub_100D5BB2C(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Endianness();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v9 = *(v3 + 176);
  v75[10] = *(v3 + 160);
  v75[11] = v9;
  v75[12] = *(v3 + 192);
  v76 = *(v3 + 208);
  v10 = *(v3 + 112);
  v75[6] = *(v3 + 96);
  v75[7] = v10;
  v11 = *(v3 + 144);
  v75[8] = *(v3 + 128);
  v75[9] = v11;
  v12 = *(v3 + 48);
  v75[2] = *(v3 + 32);
  v75[3] = v12;
  v13 = *(v3 + 80);
  v75[4] = *(v3 + 64);
  v75[5] = v13;
  v14 = *(v3 + 16);
  v75[0] = *v3;
  v75[1] = v14;
  v15 = sub_1001DA684(v75);
  if (v15 > 3)
  {
    if (v15 > 5)
    {
      if (v15 == 8)
      {
        v16 = 516;
      }

      else if (v15 == 7)
      {
        v16 = 260;
      }

      else
      {
        v16 = 267;
      }

      goto LABEL_17;
    }

    if (v15 != 4)
    {
      sub_10004CA28(v75);
      v16 = 259;
      goto LABEL_17;
    }

LABEL_12:
    sub_10004CA28(v75);
    v16 = 258;
    goto LABEL_17;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      sub_10004CA28(v75);
      v16 = 257;
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (v15)
  {
    sub_10004CA28(v75);
    v16 = 256;
  }

  else
  {
    sub_10004CA28(v75);
    v16 = 268;
  }

LABEL_17:
  LOWORD(v42) = v16;
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v6 + 8))(v8, v5);
  LOWORD(v42) = v56;
  sub_10015049C(v71, v72);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v2)
  {
    v17 = *(v3 + 176);
    v73[10] = *(v3 + 160);
    v73[11] = v17;
    v73[12] = *(v3 + 192);
    v74 = *(v3 + 208);
    v18 = *(v3 + 112);
    v73[6] = *(v3 + 96);
    v73[7] = v18;
    v19 = *(v3 + 144);
    v73[8] = *(v3 + 128);
    v73[9] = v19;
    v20 = *(v3 + 48);
    v73[2] = *(v3 + 32);
    v73[3] = v20;
    v21 = *(v3 + 80);
    v73[4] = *(v3 + 64);
    v73[5] = v21;
    v22 = *(v3 + 16);
    v73[0] = *v3;
    v73[1] = v22;
    v23 = sub_1001DA684(v73);
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
        sub_10004CA28(v73);
        sub_100D5B64C(v70);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v50 = v64;
          v51 = v65;
          v52 = v66;
          v53 = v67;
          v46 = v60;
          v47 = v61;
          v48 = v62;
          v49 = v63;
          v42 = v56;
          v43 = v57;
          v44 = v58;
          v45 = v59;
          v36 = v64;
          v37 = v65;
          v38 = v66;
          v39 = v67;
          v32 = v60;
          v33 = v61;
          v34 = v62;
          v35 = v63;
          v28 = v56;
          v29 = v57;
          v30 = v58;
          v31 = v59;
          sub_10015049C(v71, v72);
          sub_1008BC3E0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_1008BC2B4(&v42);
          return sub_100007BAC(v71);
        }

        sub_100D5B64C(v70);
        if (swift_dynamicCast())
        {
          v50 = v64;
          v51 = v65;
          v52 = v66;
          v53 = v67;
          v46 = v60;
          v47 = v61;
          v48 = v62;
          v49 = v63;
          v42 = v56;
          v43 = v57;
          v44 = v58;
          v45 = v59;
          v36 = v64;
          v37 = v65;
          v38 = v66;
          v39 = v67;
          v32 = v60;
          v33 = v61;
          v34 = v62;
          v35 = v63;
          v28 = v56;
          v29 = v57;
          v30 = v58;
          v31 = v59;
          sub_10015049C(v71, v72);
          sub_1001BF4A0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_1009A0384(&v42);
          return sub_100007BAC(v71);
        }
      }

      else if (v23)
      {
        if (v23 == 1)
        {
          sub_10004CA28(v73);
          sub_100D5B64C(v70);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v44 = v58;
            v45 = v59;
            v46 = v60;
            v42 = v56;
            v43 = v57;
            v30 = v58;
            v31 = v59;
            v32 = v60;
            v28 = v56;
            v29 = v57;
            sub_10015049C(v71, v72);
            sub_100392A9C();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_1001DAB9C(&v42);
            return sub_100007BAC(v71);
          }
        }

        else
        {
          sub_10004CA28(v73);
          sub_100D5B64C(v70);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v52 = v66;
            v53 = v67;
            v54 = v68;
            v48 = v62;
            v49 = v63;
            v50 = v64;
            v51 = v65;
            v44 = v58;
            v45 = v59;
            v46 = v60;
            v47 = v61;
            v42 = v56;
            v43 = v57;
            v38 = v66;
            v39 = v67;
            v40 = v68;
            v34 = v62;
            v35 = v63;
            v36 = v64;
            v37 = v65;
            v30 = v58;
            v31 = v59;
            v32 = v60;
            v33 = v61;
            v55 = v69;
            v41 = v69;
            v28 = v56;
            v29 = v57;
            sub_10015049C(v71, v72);
            sub_10040F2C0();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_1001DA914(&v42);
            return sub_100007BAC(v71);
          }
        }
      }

      else
      {
        sub_10004CA28(v73);
        sub_100D5B64C(&v56);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v24 = v42;
          v25 = v43;
          v56 = v42;
          v57 = v43;
          sub_10015049C(v71, v72);
          sub_100392AF0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_100016590(v24, *(&v24 + 1));
          sub_100016590(v25, *(&v25 + 1));
          return sub_100007BAC(v71);
        }
      }

LABEL_44:
      sub_100D5CF00();
      swift_allocError();
      *v26 = 0;
      swift_willThrow();
      return sub_100007BAC(v71);
    }

    if (v23 > 6)
    {
      if (v23 == 7)
      {
        sub_100D5B64C(&v56);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_44;
        }

        sub_10015049C(v71, v72);
        sub_1009A0330();
      }

      else
      {
        sub_100D5B64C(&v56);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_44;
        }

        sub_10015049C(v71, v72);
        sub_10027FBB8();
      }
    }

    else
    {
      if (v23 == 5)
      {
        sub_10004CA28(v73);
        sub_100D5B64C(v70);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v42 = v56;
          v43 = v57;
          v44 = v58;
          v45 = v59;
          v28 = v56;
          v29 = v57;
          v30 = v58;
          v31 = v59;
          sub_10015049C(v71, v72);
          sub_1008894E4();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_1001DA6B0(&v42);
          return sub_100007BAC(v71);
        }

        goto LABEL_44;
      }

      sub_100D5B64C(&v56);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_44;
      }

      sub_10015049C(v71, v72);
      sub_10030FB84();
    }

    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v71);
}

double sub_100D5C49C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100D5CB48(a2, v11);
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

void sub_100D5C540(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10099BD44(a1);
  sub_1000035D0(a2, a2[3]);
  if (v6 == swift_getDynamicType())
  {
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          sub_10001F280(a2, &v32);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            sub_1001DA870(&v47);
            goto LABEL_29;
          }
        }

        else
        {
          sub_10001F280(a2, &v32);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            sub_100D5CF54(&v47);
            goto LABEL_29;
          }
        }

        goto LABEL_30;
      }

      if (a1 != 4)
      {
        sub_10001F280(a2, v46);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v32 = v18;
          v33 = v19;
          v34 = v20;
          v35 = v21;
          sub_1009A1D78(&v32);
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      sub_10001F280(a2, v46);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_10001F280(a2, v46);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v40 = v26;
          v41 = v27;
          v42 = v28;
          v43 = v29;
          v36 = v22;
          v37 = v23;
          v38 = v24;
          v39 = v25;
          v32 = v18;
          v33 = v19;
          v34 = v20;
          v35 = v21;
          sub_1001DA318(&v32);
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      sub_100007BAC(a2);
      v40 = v26;
      v41 = v27;
      v42 = v28;
      v43 = v29;
      v36 = v22;
      v37 = v23;
      v38 = v24;
      v39 = v25;
      v32 = v18;
      v33 = v19;
      v34 = v20;
      v35 = v21;
      sub_1001DA3BC(&v32);
    }

    else
    {
      if (a1 <= 1u)
      {
        if (!a1)
        {
          sub_10001F280(a2, &v32);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            sub_1001DACD4(&v47);
LABEL_29:
            v9 = v58;
            *(a3 + 160) = v57;
            *(a3 + 176) = v9;
            *(a3 + 192) = v59;
            *(a3 + 208) = v60;
            v10 = v54;
            *(a3 + 96) = v53;
            *(a3 + 112) = v10;
            v11 = v56;
            *(a3 + 128) = v55;
            *(a3 + 144) = v11;
            v12 = v50;
            *(a3 + 32) = v49;
            *(a3 + 48) = v12;
            v13 = v52;
            *(a3 + 64) = v51;
            *(a3 + 80) = v13;
            v14 = v48;
            *a3 = v47;
            *(a3 + 16) = v14;
            return;
          }

          goto LABEL_30;
        }

        sub_10001F280(a2, &v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v32 = v16;
          v33 = v17;
          sub_1009A1EBC(&v32);
          goto LABEL_27;
        }

LABEL_30:
        sub_100D5CF00();
        swift_allocError();
        *v15 = 0;
        swift_willThrow();
        sub_100007BAC(a2);
        return;
      }

      if (a1 != 2)
      {
        sub_10001F280(a2, v46);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v28 = v42;
          v29 = v43;
          v30 = v44;
          v31 = v45;
          v24 = v38;
          v25 = v39;
          v26 = v40;
          v27 = v41;
          v20 = v34;
          v21 = v35;
          v22 = v36;
          v23 = v37;
          v18 = v32;
          v19 = v33;
          sub_1009A1E1C(&v18);
          v57 = v28;
          v58 = v29;
          v59 = v30;
          v60 = v31;
          v53 = v24;
          v54 = v25;
          v55 = v26;
          v56 = v27;
          v49 = v20;
          v50 = v21;
          v51 = v22;
          v52 = v23;
          v7 = v18;
          v8 = v19;
LABEL_28:
          v47 = v7;
          v48 = v8;
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      sub_10001F280(a2, v46);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_30;
      }

      sub_100007BAC(a2);
      v34 = v20;
      v35 = v21;
      v36 = v22;
      v32 = v18;
      v33 = v19;
      sub_1001DAAA0(&v32);
    }

LABEL_27:
    v57 = v42;
    v58 = v43;
    v59 = v44;
    v60 = v45;
    v53 = v38;
    v54 = v39;
    v55 = v40;
    v56 = v41;
    v49 = v34;
    v50 = v35;
    v51 = v36;
    v52 = v37;
    v7 = v32;
    v8 = v33;
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t sub_100D5CB48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v37 = a1;
  sub_1000035D0(a1, v8);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v40, v40[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v2)
  {
    v9 = v37;
  }

  else
  {
    v10 = v36;
    v43 = v38[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v5 + 8))(v7, v4);
    v11 = v39[0];
    v12 = sub_100391628(v39[0]);
    if (v12 != 8)
    {
      v23 = v12;
      v24 = sub_10099BD44(v12);
      v26 = v25;
      v27 = v37;
      sub_10001F280(v37, v38);
      v39[3] = v24;
      v39[4] = v26;
      sub_1000280DC(v39);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v39, v38);
      sub_100D5C540(v23, v38, v41);
      sub_100007BAC(v39);
      sub_100007BAC(v40);
      result = sub_100007BAC(v27);
      v29 = v41[11];
      *(v10 + 160) = v41[10];
      *(v10 + 176) = v29;
      *(v10 + 192) = v41[12];
      *(v10 + 208) = v42;
      v30 = v41[7];
      *(v10 + 96) = v41[6];
      *(v10 + 112) = v30;
      v31 = v41[9];
      *(v10 + 128) = v41[8];
      *(v10 + 144) = v31;
      v32 = v41[3];
      *(v10 + 32) = v41[2];
      *(v10 + 48) = v32;
      v33 = v41[5];
      *(v10 + 64) = v41[4];
      *(v10 + 80) = v33;
      v34 = v41[1];
      *v10 = v41[0];
      *(v10 + 16) = v34;
      return result;
    }

    v13 = static os_log_type_t.error.getter();
    v9 = v37;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v14 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    LOWORD(v39[0]) = v11;
    v16 = FixedWidthInteger.data.getter();
    v18 = v17;
    v19 = Data.hexString.getter();
    v21 = v20;
    sub_100016590(v16, v18);
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v19;
    *(v15 + 40) = v21;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Invalid opcode: %@", 18, 2, v15);

    sub_100D5CF00();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  sub_100007BAC(v40);
  return sub_100007BAC(v9);
}

unint64_t sub_100D5CF00()
{
  result = qword_1016BAF70;
  if (!qword_1016BAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF70);
  }

  return result;
}

double sub_100D5CF54(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
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
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0x3000000000000000;
  return result;
}

uint64_t sub_100D5CF9C()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  sub_100016590(v0[8], v0[9]);
  sub_100016590(v0[10], v0[11]);
  sub_100016590(v0[12], v0[13]);
  sub_100016590(v0[14], v0[15]);
  sub_100016590(v0[16], v0[17]);
  sub_100016590(v0[18], v0[19]);
  sub_100016590(v0[20], v0[21]);
  sub_100016590(v0[22], v0[23]);
  v1 = v0[25];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[24], v1);
  }

  return _swift_deallocObject(v0, 208);
}

unint64_t sub_100D5D050()
{
  result = qword_1016BAF78;
  if (!qword_1016BAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF78);
  }

  return result;
}

uint64_t sub_100D5D0A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v118 = a4;
  v119 = a3;
  v116 = a2;
  v5 = type metadata accessor for UUID();
  v113 = *(v5 - 8);
  v114 = v5;
  __chkstk_darwin(v5);
  v112 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v110 - v8;
  v115 = type metadata accessor for AirTagVersionNumber();
  v10 = *(v115 - 8);
  v11 = __chkstk_darwin(v115);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v110 - v14;
  v16 = type metadata accessor for AccessoryMetadata(0);
  v117 = *(v16 - 1);
  __chkstk_darwin(v16);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v19 = a1[4];
  sub_1000035D0(a1, v20);
  v21 = (*(v19 + 176))(v20, v19);
  if (v22 >> 60 == 15)
  {
    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177C578);
    sub_10001F280(a1, v124);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v121[0] = v27;
      *v26 = 141558275;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      v29 = v125;
      v28 = v126;
      sub_1000035D0(v124, v125);
      v30 = v112;
      (*(*(*(v28 + 8) + 8) + 32))(v29);
      sub_1002FFBAC();
      v31 = v114;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v113 + 8))(v30, v31);
      sub_100007BAC(v124);
      v35 = sub_1000136BC(v32, v34, v121);

      *(v26 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "No productData for %{private,mask.hash}s", v26, 0x16u);
      sub_100007BAC(v27);

LABEL_6:
      sub_100006654(v116, v119);

LABEL_11:
      sub_100007BAC(a1);
      return (*(v117 + 56))(v118, 1, 1, v16);
    }

    sub_100006654(v116, v119);

    v49 = v124;
    goto LABEL_10;
  }

  v110 = v21;
  v111 = v22;
  v36 = a1[3];
  v37 = a1[4];
  sub_1000035D0(a1, v36);
  v38 = (*(v37 + 24))(v36, v37);
  v40 = sub_10098E9DC(v38, v39);
  if ((v40 & 0x100000000) != 0)
  {
    v51 = a1[3];
    v52 = a1[4];
    sub_1000035D0(a1, v51);
    (*(v52 + 24))(v51, v52);
    AirTagVersionNumber.init(string:)();
    v53 = v10;
    v54 = *(v10 + 48);
    v55 = v115;
    if (v54(v9, 1, v115) == 1)
    {
      sub_100D5DCA0(v9);
      v56 = a1[3];
      v57 = a1[4];
      sub_1000035D0(a1, v56);
      v58 = (*(v57 + 24))(v56, v57);
      v60 = sub_100B68688(v58, v59);
      if (v62)
      {
        v63 = a1[3];
        v64 = a1[4];
        sub_1000035D0(a1, v63);
        if (((*(v64 + 144))(v63, v64) & 1) == 0 || v119 >> 60 == 15)
        {
          if (qword_1016951D8 != -1)
          {
            swift_once();
          }

          v93 = type metadata accessor for Logger();
          sub_1000076D4(v93, qword_10177C578);
          sub_10001F280(a1, v124);
          sub_10001F280(a1, v121);
          v24 = Logger.logObject.getter();
          v94 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v24, v94))
          {
            v95 = swift_slowAlloc();
            v120 = swift_slowAlloc();
            *v95 = 141558531;
            *(v95 + 4) = 1752392040;
            *(v95 + 12) = 2081;
            v97 = v125;
            v96 = v126;
            sub_1000035D0(v124, v125);
            v98 = v112;
            (*(*(*(v96 + 8) + 8) + 32))(v97);
            sub_1002FFBAC();
            v99 = v114;
            v100 = dispatch thunk of CustomStringConvertible.description.getter();
            v102 = v101;
            (*(v113 + 8))(v98, v99);
            sub_100007BAC(v124);
            v103 = sub_1000136BC(v100, v102, &v120);

            *(v95 + 14) = v103;
            *(v95 + 22) = 2082;
            v104 = v122;
            v105 = v123;
            sub_1000035D0(v121, v122);
            v106 = (*(v105 + 24))(v104, v105);
            v108 = v107;
            sub_100007BAC(v121);
            v109 = sub_1000136BC(v106, v108, &v120);

            *(v95 + 24) = v109;
            _os_log_impl(&_mh_execute_header, v24, v94, "Invalid FW version for %{private,mask.hash}s %{public}s", v95, 0x20u);
            swift_arrayDestroy();

            sub_100006654(v110, v111);
            goto LABEL_6;
          }

          sub_100006654(v110, v111);
          sub_100006654(v116, v119);

          sub_100007BAC(v124);
          v49 = v121;
LABEL_10:
          sub_100007BAC(v49);
          goto LABEL_11;
        }

        v66 = a1[3];
        v65 = a1[4];
        sub_1000035D0(a1, v66);
        (*(*(*(v65 + 8) + 8) + 32))(v66);
        (*(v53 + 56))(&v18[v16[9]], 1, 1, v55);
        v67 = &v18[v16[11]];
        *v67 = 0;
        *(v67 + 1) = 0;
        v67[16] = 1;
        v68 = &v18[v16[16]];
        sub_100006654(v110, v111);
        v41 = 0;
        LOBYTE(v42) = 0;
        LOBYTE(v15) = 0;
        *v68 = 0;
        *(v68 + 1) = 0xE000000000000000;
        v69 = &v18[v16[5]];
        v70 = v119;
        *v69 = v116;
        *(v69 + 1) = v70;
      }

      else
      {
        v78 = v60;
        v79 = v61;
        v42 = a1[3];
        v80 = a1[4];
        sub_1000035D0(a1, v42);
        (*(*(*(v80 + 8) + 8) + 32))(v42);
        (*(v53 + 56))(&v18[v16[9]], 1, 1, v55);
        v81 = &v18[v16[11]];
        v82 = &v18[v16[16]];
        sub_100006654(v116, v119);
        v41 = 0;
        LOBYTE(v42) = 0;
        LOBYTE(v15) = 0;
        *v82 = 0;
        *(v82 + 1) = 0xE000000000000000;
        v83 = &v18[v16[5]];
        v84 = v111;
        *v83 = v110;
        *(v83 + 1) = v84;
        *v81 = v78;
        *(v81 + 1) = v79;
        v81[16] = 0;
      }
    }

    else
    {
      v71 = *(v53 + 32);
      v113 = v53 + 32;
      v114 = v71;
      v71(v15, v9, v55);
      v73 = a1[3];
      v72 = a1[4];
      sub_1000035D0(a1, v73);
      (*(*(*(v72 + 8) + 8) + 32))(v73);
      (*(v53 + 16))(v13, v15, v55);
      v42 = v16[9];
      v112 = *(v53 + 56);
      (v112)(&v18[v42], 1, 1, v55);
      v74 = &v18[v16[11]];
      *v74 = 0;
      *(v74 + 1) = 0;
      v74[16] = 1;
      v75 = &v18[v16[16]];
      sub_100006654(v116, v119);
      (*(v53 + 8))(v15, v55);
      *v75 = 0;
      *(v75 + 1) = 0xE000000000000000;
      v76 = &v18[v16[5]];
      v77 = v111;
      *v76 = v110;
      *(v76 + 1) = v77;
      sub_100D5DCA0(&v18[v42]);
      v114(&v18[v42], v13, v55);
      (v112)(&v18[v42], 0, 1, v55);
      v41 = 0;
      LOBYTE(v42) = 0;
      LOBYTE(v15) = 0;
    }
  }

  else
  {
    v41 = v40;
    v42 = v40 >> 16;
    v15 = (v40 >> 24);
    v44 = a1[3];
    v43 = a1[4];
    sub_1000035D0(a1, v44);
    (*(*(*(v43 + 8) + 8) + 32))(v44);
    (*(v10 + 56))(&v18[v16[9]], 1, 1, v115);
    v45 = &v18[v16[11]];
    *v45 = 0;
    *(v45 + 1) = 0;
    v45[16] = 1;
    v46 = &v18[v16[16]];
    sub_100006654(v116, v119);
    *v46 = 0;
    *(v46 + 1) = 0xE000000000000000;
    v47 = &v18[v16[5]];
    v48 = v111;
    *v47 = v110;
    *(v47 + 1) = v48;
  }

  v85 = &v18[v16[8]];
  *v85 = v41;
  v85[2] = v42;
  v85[3] = v15;
  v86 = &v18[v16[7]];
  *v86 = 0;
  *(v86 + 1) = 0;
  v87 = &v18[v16[6]];
  *v87 = 0;
  *(v87 + 1) = 0;
  v88 = &v18[v16[10]];
  *v88 = 0;
  v88[4] = 1;
  v89 = &v18[v16[12]];
  *v89 = 0;
  v89[8] = 1;
  v90 = &v18[v16[13]];
  *v90 = 0;
  v90[4] = 1;
  v18[v16[14]] = 4;
  v18[v16[15]] = 5;
  v91 = &v18[v16[17]];
  *v91 = 0;
  v91[4] = 1;
  v92 = v118;
  sub_100D5DD08(v18, v118);
  (*(v117 + 56))(v92, 0, 1, v16);
  return sub_100007BAC(a1);
}

uint64_t sub_100D5DCA0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D5DD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D5DD7C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100D5DE2C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100D5DDA8(uint64_t a1)
{
  *(a1 + 8) = sub_100D5DDD8();
  result = sub_10059BEF8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D5DDD8()
{
  result = qword_1016BAF80;
  if (!qword_1016BAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF80);
  }

  return result;
}

uint64_t sub_100D5DE2C(void *a1)
{
  v3 = type metadata accessor for Endianness();
  __chkstk_darwin(v3 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v13, v13[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_100017D5C(v5, v6);
    static Endianness.current.getter();
    sub_1000198E8();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v12 != 1)
    {
      v4 = v11;
      sub_100016590(v7, v8);
      sub_100007BAC(v13);
      sub_100007BAC(a1);
      return v4;
    }

    v4 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v9, enum case for BinaryEncodingError.encodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v7, v8);
  }

  sub_100007BAC(v13);
  sub_100007BAC(a1);
  return v4;
}

void sub_100D5E024(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for StableIdentifier(319);
    if (v2 <= 0x3F)
    {
      sub_100395648(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          sub_1002359B8(319, &qword_1016BAFF8, &type metadata for SharedSecretKey);
          if (v5 <= 0x3F)
          {
            sub_1002359B8(319, &qword_1016BB000, &type metadata for LostModeStatus);
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

void sub_100D5E184(void *a1@<X0>, void *a2@<X8>)
{
  v126 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v109 - v4;
  v6 = type metadata accessor for Date();
  v128 = *(v6 - 8);
  v129 = v6;
  __chkstk_darwin(v6);
  v127 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016BB090, &unk_1013D6A90);
  __chkstk_darwin(v8 - 8);
  v10 = (&v109 - v9);
  v11 = type metadata accessor for StableIdentifier(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v130 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v109 - v15;
  v133 = type metadata accessor for UUID();
  v17 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = CKRecord.recordType.getter();
  v21 = v20;
  if (qword_101694E70 != -1)
  {
    swift_once();
  }

  if (v19 == qword_10177C060 && v21 == *algn_10177C068)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      sub_100D64CF8();
      swift_allocError();
      *v35 = 0;
      goto LABEL_16;
    }
  }

  v23 = [a1 recordID];
  v24 = [v23 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v134 = v17;

  UUID.init(uuidString:)();
  v25 = v134;

  v26 = v133;
  if ((*(v25 + 48))(v16, 1, v133) == 1)
  {
    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
    sub_100D64CF8();
    swift_allocError();
    *v27 = 2;
LABEL_16:
    swift_willThrow();

    return;
  }

  (*(v25 + 32))(v132, v16, v26);
  v28 = [a1 encryptedValues];
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 objectForKeyedSubscript:v29];

  if (!v30)
  {
    goto LABEL_28;
  }

  v136 = v30;
  v31 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v124 = v31;
  v125 = v28;
  v32 = v135;
  v33 = objc_autoreleasePoolPush();
  v34 = v131;
  sub_1010DB40C(v32, *(&v32 + 1), v10);
  if (v34)
  {
    objc_autoreleasePoolPop(v33);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v33);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &qword_1016BB090, &unk_1013D6A90);
LABEL_14:
    v26 = v133;
LABEL_28:
    v46 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_101385D80;
    *(v47 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v47 + 64) = sub_10013A2D8();
    *(v47 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v48 = a1;
    v49 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v49, "Invalid Beacon Record - %@", 26, 2, v47);

    sub_100D64CF8();
    swift_allocError();
    *v50 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v134 + 8))(v132, v26);
    return;
  }

  v36 = v130;
  sub_100D658B4(v10, v130, type metadata accessor for StableIdentifier);
  v37 = String._bridgeToObjectiveC()();
  v38 = [v125 objectForKeyedSubscript:v37];

  if (!v38)
  {
    sub_100032704(v36, type metadata accessor for StableIdentifier);
    (*(v128 + 56))(v5, 1, 1, v129);
    goto LABEL_21;
  }

  *&v135 = v38;
  v39 = v129;
  v40 = swift_dynamicCast();
  v41 = v128;
  (*(v128 + 56))(v5, v40 ^ 1u, 1, v39);
  if ((*(v41 + 48))(v5, 1, v39) == 1)
  {
    sub_100032704(v36, type metadata accessor for StableIdentifier);
LABEL_21:
    v26 = v133;
    sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
    goto LABEL_28;
  }

  v42 = v127;
  (*(v41 + 32))(v127, v5, v39);
  v43 = String._bridgeToObjectiveC()();
  v44 = [v125 objectForKeyedSubscript:v43];

  v26 = v133;
  if (!v44)
  {
    (*(v41 + 8))(v42, v39);
LABEL_27:
    sub_100032704(v130, type metadata accessor for StableIdentifier);
    goto LABEL_28;
  }

  v136 = v44;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v41 + 8))(v127, v39);
    goto LABEL_27;
  }

  v45 = v135;
  sub_100017D5C(v135, *(&v135 + 1));
  sub_1004A4714(v45, *(&v45 + 1), &v135);
  v131 = v45;
  v123 = 0;
  v51 = v135;
  v52 = String._bridgeToObjectiveC()();
  v53 = v125;
  v54 = [v125 objectForKeyedSubscript:v52];

  if (!v54)
  {
    v62 = *(&v51 + 1);
    v61 = v51;
LABEL_39:
    sub_100016590(v61, v62);
    v60 = v131;
    goto LABEL_40;
  }

  *v122 = v51;
  v136 = v54;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v61 = *v122;
    v62 = *&v122[8];
    goto LABEL_39;
  }

  v55 = v135;
  sub_100017D5C(v135, *(&v135 + 1));
  v56 = v123;
  v57 = sub_10049BD68(v55, *(&v55 + 1));
  v59 = v131;
  if (v56)
  {

    sub_100016590(*v122, *&v122[8]);
    sub_100016590(v55, *(&v55 + 1));
    v60 = v59;
LABEL_40:
    sub_100016590(v60, *(&v45 + 1));
    (*(v41 + 8))(v127, v129);
    sub_100032704(v130, type metadata accessor for StableIdentifier);
    goto LABEL_28;
  }

  v119 = v57;
  v120 = v58;
  v123 = *(&v55 + 1);
  v121 = v55;
  v63 = String._bridgeToObjectiveC()();
  v64 = [v53 objectForKeyedSubscript:v63];

  if (!v64 || (v136 = v64, (swift_dynamicCast() & 1) == 0))
  {
    sub_100016590(*v122, *&v122[8]);
    sub_100016590(v119, v120);
    v61 = v121;
    v62 = v123;
    goto LABEL_39;
  }

  v65 = v135;
  sub_100017D5C(v135, *(&v135 + 1));
  v118 = v65;
  v116 = sub_10049C0AC(v65, *(&v65 + 1));
  v117 = v66;
  v67 = String._bridgeToObjectiveC()();
  v68 = [v53 objectForKeyedSubscript:v67];

  if (!v68 || (v136 = v68, (swift_dynamicCast() & 1) == 0))
  {
    sub_100016590(*v122, *&v122[8]);
    sub_100016590(v119, v120);
    sub_100016590(v116, v117);
LABEL_56:
    sub_100016590(v118, *(&v118 + 1));
    sub_100016590(v121, v123);
    sub_100016590(v131, *(&v45 + 1));
    (*(v128 + 8))(v127, v129);
    sub_100032704(v130, type metadata accessor for StableIdentifier);
    goto LABEL_14;
  }

  v115 = *(&v135 + 1);
  v69 = v135;
  v70 = String._bridgeToObjectiveC()();
  v71 = [v125 objectForKeyedSubscript:v70];

  if (!v71 || (v136 = v71, (swift_dynamicCast() & 1) == 0))
  {
    sub_100016590(*v122, *&v122[8]);
    sub_100016590(v119, v120);
    sub_100016590(v116, v117);
LABEL_55:

    goto LABEL_56;
  }

  v114 = v135;
  v72 = String._bridgeToObjectiveC()();
  v73 = [v125 objectForKeyedSubscript:v72];

  if (!v73 || (*&v135 = v73, (swift_dynamicCast() & 1) == 0) || (v112 = v136, v74 = String._bridgeToObjectiveC()(), v75 = [v125 objectForKeyedSubscript:v74], v74, !v75) || (*&v135 = v75, (swift_dynamicCast() & 1) == 0))
  {
    sub_100016590(*v122, *&v122[8]);
    sub_100016590(v119, v120);
    sub_100016590(v116, v117);

    goto LABEL_55;
  }

  v111 = v136;
  v76 = String._bridgeToObjectiveC()();
  v77 = [v125 objectForKeyedSubscript:v76];

  if (v77 && (*&v135 = v77, swift_dynamicCast()))
  {
    v78 = v136;
  }

  else
  {
    v78 = 0;
  }

  v79 = sub_1012C7DEC(v78);
  v113 = type metadata accessor for OwnedBeaconRecord(0);
  *(v126 + v113[19]) = v79;
  v80 = String._bridgeToObjectiveC()();
  v81 = [v125 objectForKeyedSubscript:v80];

  if (v81 && (*&v135 = v81, swift_dynamicCast()))
  {
    v82 = v136;
  }

  else
  {
    v82 = 0;
  }

  v83 = v126;
  *(v126 + v113[20]) = v82;
  v110 = objc_autoreleasePoolPush();
  v84 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v84];
  [v84 finishEncoding];
  v85 = [v84 encodedData];
  v86 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v87;

  objc_autoreleasePoolPop(v110);
  *v83 = v86;
  v83[1] = v88;
  v89 = v113;
  (*(v134 + 16))(v83 + v113[5], v132, v133);
  sub_10003263C(v130, v83 + v89[6], type metadata accessor for StableIdentifier);
  (*(v128 + 16))(v83 + v89[8], v127, v129);
  v90 = (v83 + v89[9]);
  v91 = *&v122[8];
  *v90 = *v122;
  v90[1] = v91;
  v92 = String._bridgeToObjectiveC()();
  v93 = [v125 objectForKeyedSubscript:v92];

  *&v122[8] = xmmword_10138BBF0;
  if (v93 && (v136 = v93, (swift_dynamicCast() & 1) != 0))
  {
    sub_1004A4714(v135, *(&v135 + 1), &v135);
    v96 = v135;
  }

  else
  {
    v96 = *&v122[8];
  }

  *(v126 + v113[10]) = v96;
  v94 = String._bridgeToObjectiveC()();
  v95 = [v125 objectForKeyedSubscript:v94];

  if (v95)
  {
    v136 = v95;
    if (swift_dynamicCast())
    {
      sub_1004A4714(v135, *(&v135 + 1), &v135);
      *&v122[8] = v135;
    }
  }

  v97 = v113;
  v98 = v126;
  *(v126 + v113[11]) = *&v122[8];
  v99 = v97[18];
  v100 = (v98 + v97[12]);
  *v100 = v119;
  v100[1] = v120;
  v101 = (v98 + v97[13]);
  *v101 = v116;
  v101[1] = v117;
  v102 = (v98 + v97[14]);
  v103 = v115;
  *v102 = v69;
  v102[1] = v103;
  *(v98 + v97[15]) = v114;
  *(v98 + v97[16]) = v112;
  *(v98 + v97[17]) = v111;
  v104 = String._bridgeToObjectiveC()();
  v105 = [v125 objectForKeyedSubscript:v104];

  if (v105 && (*&v135 = v105, (swift_dynamicCast() & 1) != 0))
  {
    v106 = v136;
    if (v136 >= 3)
    {
      v106 = 3;
    }
  }

  else
  {
    v106 = 3;
  }

  *(v126 + v99) = v106;
  v107 = String._bridgeToObjectiveC()();
  v108 = [v125 objectForKeyedSubscript:v107];

  if (v108 && (v136 = v108, (swift_dynamicCast() & 1) != 0))
  {
    UUID.init(uuidString:)();
    swift_unknownObjectRelease();

    sub_100016590(v118, *(&v118 + 1));
    sub_100016590(v121, v123);
    sub_100016590(v131, *(&v45 + 1));

    (*(v128 + 8))(v127, v129);
    sub_100032704(v130, type metadata accessor for StableIdentifier);
    (*(v134 + 8))(v132, v133);
  }

  else
  {
    swift_unknownObjectRelease();
    sub_100016590(v118, *(&v118 + 1));
    sub_100016590(v121, v123);
    sub_100016590(v131, *(&v45 + 1));

    (*(v128 + 8))(v127, v129);
    sub_100032704(v130, type metadata accessor for StableIdentifier);
    (*(v134 + 8))(v132, v133);
    (*(v134 + 56))(v126 + v113[7], 1, 1, v133);
  }
}

uint64_t sub_100D5F668()
{
  v1 = type metadata accessor for StableIdentifier(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  v7 = type metadata accessor for OwnedBeaconRecord(0);
  v8 = v7[6];
  sub_10003263C(v0 + v8, v6, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100032704(v6, type metadata accessor for StableIdentifier);
  if (EnumCaseMultiPayload != 1)
  {
    sub_10003263C(v0 + v8, v4, type metadata accessor for StableIdentifier);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 == 3)
    {
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    }

    else
    {
      if (v10 != 2)
      {
        sub_100032704(v4, type metadata accessor for StableIdentifier);
        return 0;
      }

      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    }

    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v4, v11);
  }

  return sub_100314604(*(v0 + v7[16]), *(v0 + v7[17]));
}

uint64_t sub_100D5F8B4()
{
  v1[14] = v0;
  v2 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v1[15] = v2;
  v1[16] = *(v2 + 64);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100D5F978, 0, 0);
}

uint64_t sub_100D5F978()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 96) = 0x7365547265646E75;
  *(v0 + 104) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 232))
  {
    v1 = 1;
LABEL_16:

    v16 = *(v0 + 8);

    return v16(v1 & 1);
  }

  My = type metadata accessor for Feature.FindMy();
  *(v0 + 40) = My;
  v3 = sub_100D64C00(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  *(v0 + 48) = v3;
  v4 = sub_1000280DC((v0 + 16));
  v5 = *(*(My - 8) + 104);
  v5(v4, enum case for Feature.FindMy.managedCBPeripheral(_:), My);
  v6 = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 16));
  if ((v6 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C218;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 isInternalBuild];

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = [v7 BOOLForKey:v10];

    if (v11)
    {
      v12 = sub_1000322C8();
LABEL_13:
      v1 = v12;
      goto LABEL_16;
    }
  }

  *(v0 + 80) = My;
  *(v0 + 88) = v3;
  v13 = sub_1000280DC((v0 + 56));
  v5(v13, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  v14 = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 56));
  if (v14)
  {
    v12 = sub_100D60B1C();
    goto LABEL_13;
  }

  *(v0 + 144) = sub_100D5F668();
  *(v0 + 152) = v15;
  if (v15 >> 60 == 15)
  {
LABEL_15:
    v1 = 0;
    goto LABEL_16;
  }

  v18 = swift_task_alloc();
  *(v0 + 160) = v18;
  *v18 = v0;
  v18[1] = sub_100D5FCC4;

  return daemon.getter();
}

uint64_t sub_100D5FCC4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[21] = a1;

  v3 = swift_task_alloc();
  v2[22] = v3;
  v4 = type metadata accessor for Daemon();
  v2[23] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100D64C00(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D64C00(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_100D5FEA4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D5FEA4(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  if (v1)
  {

    v5 = sub_100D60538;
    v6 = 0;
  }

  else
  {
    v5 = sub_100D5FFE0;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100D5FFE0()
{
  v1 = *(v0 + 200);
  *(v0 + 208) = sub_100045EDC();
  if (v1)
  {

    sub_100D64C00(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_100D604C4;
  }

  else
  {
    sub_100D64C00(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = sub_100D60108;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_100D60108()
{

  return _swift_task_switch(sub_100D6017C, 0, 0);
}

uint64_t sub_100D6017C()
{
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[15];
  sub_10003263C(v0[14], v2, type metadata accessor for OwnedBeaconRecord);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[27] = v5;
  *(v5 + 16) = v1;
  sub_100D658B4(v2, v5 + v4, type metadata accessor for OwnedBeaconRecord);

  v6 = swift_task_alloc();
  v0[28] = v6;
  v7 = sub_1000BC4D4(&unk_1016BB0A0, &qword_10139A220);
  *v6 = v0;
  v6[1] = sub_100D602E0;

  return unsafeBlocking<A>(context:_:)(v0 + 233, 0xD00000000000001BLL, 0x8000000101370840, sub_100D6591C, v5, v7);
}

uint64_t sub_100D602E0()
{

  return _swift_task_switch(sub_100D603F8, 0, 0);
}

uint64_t sub_100D603F8()
{
  v1 = *(v0 + 233);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v4 = sub_100DE6748(v6, v5);

    sub_100006654(v6, v5);
  }

  else
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);

    sub_100006654(v2, v3);
    v4 = 1;
  }

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_100D604C4()
{

  return _swift_task_switch(sub_100D60538, 0, 0);
}

uint64_t sub_100D60538()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = sub_100DE6748(v1, v2);
  sub_100006654(v1, v2);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100D605C4()
{
  v1 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  sub_10003263C(v0 + *(v4 + 24), v3, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v20 = *(v3 + 4);
      v21 = *(v3 + 5);

      v29 = v20;
      v30 = v21;
      sub_1000DF96C();
      v22 = Data.init<A>(hexString:)();
      if (v23 >> 60 == 15)
      {
        return 0;
      }

      v24 = v22;
      v25 = v23;
      v29 = v22;
      v30 = v23;
      sub_1000E0A3C();
      if (DataProtocol.isNull.getter())
      {
        sub_100006654(v24, v25);
        return 0;
      }

      v28 = Data.trimmed.getter();
      sub_100006654(v24, v25);
      return v28;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v10 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

    v11 = &v3[*(v10 + 80)];
    v12 = *v11;
    v13 = *(v11 + 1);

    v29 = v12;
    v30 = v13;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 3)
  {
LABEL_6:
    sub_100032704(v3, type metadata accessor for StableIdentifier);
    return 0;
  }

  v6 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

  v7 = &v3[*(v6 + 80)];
  v9 = *v7;
  v8 = *(v7 + 1);
  v29 = v9;
  v30 = v8;
LABEL_8:
  sub_1000DF96C();
  v14 = Data.init<A>(hexString:)();
  if (v15 >> 60 == 15)
  {
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v3, v16);
    return 0;
  }

  v17 = v14;
  v18 = v15;
  v29 = v14;
  v30 = v15;
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    v19 = 0;
  }

  else
  {
    v19 = Data.trimmed.getter();
  }

  sub_100006654(v17, v18);
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 8))(v3, v27);
  return v19;
}

uint64_t sub_100D608FC()
{
  v1 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  sub_10003263C(v0 + *(v4 + 24), v3, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v11 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      v8 = v3[*(v11 + 96)];
      v12 = type metadata accessor for UUID();
      (*(*(v12 - 8) + 8))(v3, v12);
      v9 = 0;
      return v8 | (v9 << 8);
    }

LABEL_6:
    sub_100032704(v3, type metadata accessor for StableIdentifier);
    v8 = 0;
    v9 = 1;
    return v8 | (v9 << 8);
  }

  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_6;
  }

  v6 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

  v7 = &v3[*(v6 + 96)];
  v8 = *v7;
  v9 = v7[1];

  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v3, v10);
  return v8 | (v9 << 8);
}

uint64_t sub_100D60B1C()
{
  v1 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  sub_10003263C(v0 + *(v4 + 24), v3, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_5:

    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v3, v6);
    return 1;
  }

  sub_100032704(v3, type metadata accessor for StableIdentifier);
  return 0;
}

id sub_100D60CD0()
{
  v1 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  sub_10003263C(v0 + *(v4 + 24), v3, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100032704(v3, type metadata accessor for StableIdentifier);
      v7 = &SPBeaconTypeDurian;
    }

    else
    {
      sub_100032704(v3, type metadata accessor for StableIdentifier);
      v7 = &SPBeaconTypeSelfBeaconing;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

      v6 = &SPBeaconTypeAccessory;
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      v6 = &SPBeaconTypeHele;
LABEL_8:
      v8 = *v6;
      v9 = type metadata accessor for UUID();
      v10 = *(*(v9 - 8) + 8);
      v11 = v8;
      v10(v3, v9);
      return v11;
    }

    sub_100032704(v3, type metadata accessor for StableIdentifier);
    v7 = &SPBeaconTypeVirtualMeDevice;
  }

  v13 = *v7;

  return v13;
}

uint64_t sub_100D60F40()
{
  result = String.init<A>(_:)();
  qword_10177C060 = result;
  *algn_10177C068 = v1;
  return result;
}

uint64_t sub_100D60FA4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177C070);
  sub_1000076D4(v0, qword_10177C070);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

void sub_100D61104()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() handleWithEmailAddress:v0];

  qword_10177C088 = v1;
}

uint64_t sub_100D61180(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&unk_1016BB0F0, &qword_1013E7DF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100D65990();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v25 = *v3;
  v26 = v9;
  v27 = 0;
  sub_100017D5C(v25, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v25, v26);
  if (!v2)
  {
    v10 = type metadata accessor for OwnedBeaconRecord(0);
    LOBYTE(v25) = 1;
    type metadata accessor for UUID();
    sub_100D64C00(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = v10;
    LOBYTE(v25) = 2;
    type metadata accessor for StableIdentifier(0);
    sub_100D64C00(&qword_1016AE778, type metadata accessor for StableIdentifier, &unk_1014055F0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v25) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v25) = 4;
    type metadata accessor for Date();
    sub_100D64C00(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v24;
    v13 = (v3 + v24[9]);
    v14 = v13[1];
    v25 = *v13;
    v26 = v14;
    v27 = 5;
    sub_100017D5C(v25, v14);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v25, v26);
    v15 = (v3 + v12[10]);
    v16 = v15[1];
    v25 = *v15;
    v26 = v16;
    v27 = 6;
    sub_10002E98C(v25, v16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v25, v26);
    v17 = (v3 + v12[11]);
    v18 = v17[1];
    v25 = *v17;
    v26 = v18;
    v27 = 7;
    sub_10002E98C(v25, v18);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v25, v26);
    v19 = (v3 + v12[12]);
    v20 = v19[1];
    v25 = *v19;
    v26 = v20;
    v27 = 8;
    sub_100017D5C(v25, v20);
    sub_10049DF20();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v25, v26);
    v21 = (v3 + v12[13]);
    v22 = v21[1];
    v25 = *v21;
    v26 = v22;
    v27 = 9;
    sub_100017D5C(v25, v22);
    sub_10049E410();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v25, v26);
    LOBYTE(v25) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v25) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v25) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v25) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v25) = *(v3 + v24[19]);
    v27 = 14;
    sub_100D65A38();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v25) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100D6178C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  Data.hash(into:)();
  v11 = type metadata accessor for OwnedBeaconRecord(0);
  sub_100D64C00(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_1010DC2EC(a1);
  sub_1000D2A70(v1 + v11[7], v10, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for Date();
  sub_100D64C00(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v12 = (v1 + v11[9]);
  v13 = *v12;
  v14 = v12[1];
  sub_100017D5C(*v12, v14);
  Data.hash(into:)();
  sub_100016590(v13, v14);
  v15 = (v2 + v11[10]);
  v16 = v15[1];
  if (v16 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v17 = *v15;
    Hasher._combine(_:)(1u);
    sub_100017D5C(v17, v16);
    Data.hash(into:)();
    sub_100006654(v17, v16);
  }

  v18 = (v2 + v11[11]);
  v19 = v18[1];
  if (v19 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v20 = *v18;
    Hasher._combine(_:)(1u);
    sub_100017D5C(v20, v19);
    Data.hash(into:)();
    sub_100006654(v20, v19);
  }

  v21 = (v2 + v11[12]);
  v22 = *v21;
  v23 = v21[1];
  sub_100017D5C(*v21, v23);
  Data.hash(into:)();
  sub_100016590(v22, v23);
  v24 = (v2 + v11[13]);
  v25 = *v24;
  v26 = v24[1];
  sub_100017D5C(*v24, v26);
  Data.hash(into:)();
  sub_100016590(v25, v26);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + v11[16]));
  Hasher._combine(_:)(*(v2 + v11[17]));
  v27 = *(v2 + v11[18]);
  if (v27 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v27);
  }

  Hasher._combine(_:)(*(v2 + v11[19]));
  Hasher._combine(_:)(*(v2 + v11[20]));
}

uint64_t sub_100D61C08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for Date();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v56 = &v50 - v6;
  v57 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v57);
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016BB0B0, &qword_1013E7DE8);
  v62 = *(v11 - 8);
  v63 = v11;
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  v14 = type metadata accessor for OwnedBeaconRecord(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[*(v15 + 72)] = 3;
  sub_1000035D0(a1, a1[3]);
  sub_100D65990();
  v64 = v13;
  v18 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_100007BAC(a1);
  }

  v19 = v61;
  v51 = v8;
  v52 = v14;
  v53 = a1;
  v65 = v17;
  v67 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v65;
  *v65 = v66;
  LOBYTE(v66) = 1;
  sub_100D64C00(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v22 = v51;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v52;
  (*(v60 + 32))(&v21[v52[5]], v10, v22);
  LOBYTE(v66) = 2;
  sub_100D64C00(&unk_1016BB0C0, type metadata accessor for StableIdentifier, &unk_101405618);
  v57 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100D658B4(v19, &v21[v23[6]], type metadata accessor for StableIdentifier);
  LOBYTE(v66) = 3;
  v24 = v56;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10012C154(v24, &v21[v23[7]]);
  LOBYTE(v66) = 4;
  sub_100D64C00(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v25 = v55;
  v26 = v59;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v58 + 32))(&v21[v23[8]], v25, v26);
  v67 = 5;
  sub_100313070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v21[v23[9]] = v66;
  v67 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v21[v23[10]] = v66;
  v67 = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v65[v52[11]] = v66;
  v67 = 8;
  sub_10049DECC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v61 = 0;
  *&v65[v52[12]] = v66;
  v67 = 9;
  sub_10049E3BC();
  v27 = v61;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v61 = v27;
  if (v27)
  {
    (*(v62 + 8))(v64, v63);
    LODWORD(v63) = 0;
    LODWORD(v64) = 0;
    LODWORD(v62) = 1;
  }

  else
  {
    *&v65[v52[13]] = v66;
    LOBYTE(v66) = 10;
    v28 = v61;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v61 = v28;
    if (v28)
    {
      (*(v62 + 8))(v64, v63);
      LODWORD(v64) = 0;
      LODWORD(v62) = 1;
      LODWORD(v63) = 1;
    }

    else
    {
      v31 = &v65[v52[14]];
      *v31 = v29;
      v31[1] = v30;
      LOBYTE(v66) = 11;
      v32 = v61;
      v33 = KeyedDecodingContainer.decode(_:forKey:)();
      v61 = v32;
      if (!v32)
      {
        v39 = &v65[v52[15]];
        *v39 = v33;
        v39[1] = v34;
        LOBYTE(v66) = 12;
        v40 = v61;
        v41 = KeyedDecodingContainer.decode(_:forKey:)();
        v61 = v40;
        if (!v40)
        {
          *&v65[v52[16]] = v41;
          LOBYTE(v66) = 13;
          v42 = v61;
          v43 = KeyedDecodingContainer.decode(_:forKey:)();
          v61 = v42;
          if (!v42)
          {
            *&v65[v52[17]] = v43;
            v67 = 14;
            sub_100D659E4();
            v44 = v61;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            v61 = v44;
            if (!v44)
            {
              v65[v52[19]] = v66;
              LOBYTE(v66) = 15;
              v45 = v61;
              v46 = KeyedDecodingContainer.decode(_:forKey:)();
              v61 = v45;
              if (!v45)
              {
                v47 = v46;
                (*(v62 + 8))(v64, v63);
                v48 = v47 & 1;
                v49 = v65;
                v65[v52[20]] = v48;
                sub_10003263C(v49, v54, type metadata accessor for OwnedBeaconRecord);
                sub_100007BAC(v53);
                return sub_100032704(v49, type metadata accessor for OwnedBeaconRecord);
              }
            }
          }
        }

        (*(v62 + 8))(v64, v63);
        sub_100007BAC(v53);
        sub_100016590(*v65, *(v65 + 1));
        v36 = 1;
        LODWORD(v64) = 1;
        LODWORD(v63) = 1;
        LODWORD(v62) = 1;
        goto LABEL_22;
      }

      (*(v62 + 8))(v64, v63);
      LODWORD(v62) = 1;
      LODWORD(v63) = 1;
      LODWORD(v64) = 1;
    }
  }

  v35 = v57;
  sub_100007BAC(v53);
  sub_100016590(*v65, *(v65 + 1));
  v36 = 0;
  if (!v35)
  {
LABEL_22:
    (*(v60 + 8))(&v65[v52[5]], v51);
  }

  v37 = v52;
  v38 = v65;
  sub_100032704(&v65[v52[6]], type metadata accessor for StableIdentifier);
  sub_10000B3A8(&v38[v37[7]], &qword_1016980D0, &unk_10138F3B0);
  (*(v58 + 8))(&v38[v37[8]], v59);
  sub_100016590(*&v38[v37[9]], *&v38[v37[9] + 8]);
  sub_100006654(*&v38[v37[10]], *&v38[v37[10] + 8]);
  result = sub_100006654(*&v38[v37[11]], *&v38[v37[11] + 8]);
  if (v62)
  {
    result = sub_100016590(*&v38[v37[12]], *&v38[v37[12] + 8]);
    if (v63)
    {
      goto LABEL_25;
    }

LABEL_14:
    if (!v64)
    {
      goto LABEL_26;
    }

LABEL_15:

    if (v36)
    {
    }

    return result;
  }

  if (!v63)
  {
    goto LABEL_14;
  }

LABEL_25:
  result = sub_100016590(*&v38[v37[13]], *&v38[v37[13] + 8]);
  if (v64)
  {
    goto LABEL_15;
  }

LABEL_26:
  if (v36)
  {
  }

  return result;
}

uint64_t sub_100D62988(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t sub_100D629C0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

BOOL sub_100D62A10(uint64_t a1)
{
  v3 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003263C(v1 + *(a1 + 24), v5, type metadata accessor for StableIdentifier);
  v6 = swift_getEnumCaseMultiPayload() == 0;
  sub_100032704(v5, type metadata accessor for StableIdentifier);
  return v6;
}

BOOL sub_100D62AE0(uint64_t a1)
{
  v3 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003263C(v1 + *(a1 + 24), v5, type metadata accessor for StableIdentifier);
  v6 = swift_getEnumCaseMultiPayload() == 1;
  sub_100032704(v5, type metadata accessor for StableIdentifier);
  return v6;
}

uint64_t sub_100D62BB8()
{
  v1 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v1);
  v3 = &v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  sub_10003263C(v0 + v4[6], v3, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100032704(v3, type metadata accessor for StableIdentifier);
      My = type metadata accessor for Feature.FindMy();
      v16 = My;
      v17 = sub_100D64C00(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
      v11 = sub_1000280DC(v15);
      (*(*(My - 8) + 104))(v11, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
      v7 = isFeatureEnabled(_:)();
      sub_100007BAC(v15);
      return v7 & 1;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      v6 = type metadata accessor for UUID();
      (*(*(v6 - 8) + 8))(v3, v6);
      v7 = 1;
      return v7 & 1;
    }

LABEL_6:
    sub_100032704(v3, type metadata accessor for StableIdentifier);
    v7 = 0;
    return v7 & 1;
  }

  sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

  v8 = type metadata accessor for Feature.FindMy();
  v16 = v8;
  v17 = sub_100D64C00(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v9 = sub_1000280DC(v15);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.FindMy.spPlaySoundAll(_:), v8);
  LOBYTE(v8) = isFeatureEnabled(_:)();
  sub_100007BAC(v15);
  v7 = (v8 & 1) != 0 || sub_100E0EA64(*(v0 + v4[16]), *(v0 + v4[17]));
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 8))(v3, v12);
  return v7 & 1;
}

BOOL sub_100D62F40(uint64_t a1)
{
  v3 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003263C(v1 + *(a1 + 24), v5, type metadata accessor for StableIdentifier);
  v6 = swift_getEnumCaseMultiPayload() == 4;
  sub_100032704(v5, type metadata accessor for StableIdentifier);
  return v6;
}

Swift::Int sub_100D6304C()
{
  Hasher.init(_seed:)();
  sub_100D6178C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100D63090(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100D6178C(v2);
  return Hasher._finalize()();
}

uint64_t sub_100D6314C(id *a1)
{
  v2 = type metadata accessor for Date();
  v130 = *(v2 - 8);
  v131 = v2;
  __chkstk_darwin(v2);
  v122 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  __chkstk_darwin(v126);
  v127 = &v121 - v4;
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = __chkstk_darwin(v5 - 8);
  v123 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v128 = &v121 - v9;
  __chkstk_darwin(v8);
  v129 = &v121 - v10;
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v12 = __chkstk_darwin(v11 - 8);
  v124 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v121 - v14;
  v16 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  v18 = *a1;
  v19 = [v18 description];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100008C00();
  *(v17 + 32) = v20;
  *(v17 + 40) = v22;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v23 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v23, "Updating owned beacon record: %@", 32, 2, v17);

  v24 = [v18 encryptedValues];
  ObjectType = swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v25 = v135;
  v134 = type metadata accessor for OwnedBeaconRecord(0);
  v26 = sub_1010DA578();
  v125 = v15;
  if (!*(&v25 + 1))
  {

    v28 = v132;
LABEL_6:
    v30 = sub_1010DA578();
    *(&v136 + 1) = &type metadata for String;
    v137 = &protocol witness table for String;
    *&v135 = v30;
    *(&v135 + 1) = v31;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_7;
  }

  if (v25 == __PAIR128__(v27, v26))
  {

    v28 = v132;
    goto LABEL_7;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v28 = v132;
  if ((v29 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  CKRecordKeyValueSetting.subscript.getter();
  v32 = v135;
  v33 = v134[7];
  v34 = v125;
  sub_1000D2A70(v28 + v33, v125, &qword_1016980D0, &unk_10138F3B0);
  v35 = type metadata accessor for UUID();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v34, 1, v35) == 1)
  {
    sub_10000B3A8(v34, &qword_1016980D0, &unk_10138F3B0);
    if (!*(&v32 + 1))
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v121 = v32;
  v38 = UUID.uuidString.getter();
  v40 = v39;
  (*(v36 + 8))(v34, v35);
  if (*(&v32 + 1))
  {
    if (v40)
    {
      if (v121 != v38 || *(&v32 + 1) != v32)
      {
        v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v41 = v129;
        if (v120)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }

LABEL_20:
      v41 = v129;
      goto LABEL_23;
    }
  }

  else if (!v40)
  {
    goto LABEL_20;
  }

LABEL_17:

  v41 = v129;
LABEL_18:
  v42 = v124;
  sub_1000D2A70(v132 + v33, v124, &qword_1016980D0, &unk_10138F3B0);
  if (v37(v42, 1, v35) == 1)
  {
    sub_10000B3A8(v42, &qword_1016980D0, &unk_10138F3B0);
    v135 = 0u;
    v136 = 0u;
    v137 = 0;
  }

  else
  {
    v43 = UUID.uuidString.getter();
    *(&v136 + 1) = &type metadata for String;
    v137 = &protocol witness table for String;
    *&v135 = v43;
    *(&v135 + 1) = v44;
    (*(v36 + 8))(v42, v35);
  }

  CKRecordKeyValueSetting.subscript.setter();
LABEL_23:
  v45 = v41;
  v46 = v131;
  CKRecordKeyValueSetting.subscript.getter();
  v47 = v130;
  v48 = *(v130 + 16);
  v124 = v134[8];
  v125 = v48;
  v49 = v128;
  v48(v128, v132 + v124, v46);
  (*(v47 + 56))(v49, 0, 1, v46);
  v50 = v127;
  v51 = *(v126 + 48);
  sub_1000D2A70(v45, v127, &unk_101696900, &unk_10138B1E0);
  v52 = v46;
  sub_1000D2A70(v49, v50 + v51, &unk_101696900, &unk_10138B1E0);
  v53 = *(v47 + 48);
  if (v53(v50, 1, v46) == 1)
  {
    sub_10000B3A8(v49, &unk_101696900, &unk_10138B1E0);
    v54 = v131;
    sub_10000B3A8(v45, &unk_101696900, &unk_10138B1E0);
    if (v53(v50 + v51, 1, v54) == 1)
    {
      sub_10000B3A8(v50, &unk_101696900, &unk_10138B1E0);
      v55 = v132;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v56 = v123;
  sub_1000D2A70(v50, v123, &unk_101696900, &unk_10138B1E0);
  if (v53(v50 + v51, 1, v46) == 1)
  {
    v57 = v56;
    sub_10000B3A8(v128, &unk_101696900, &unk_10138B1E0);
    v54 = v131;
    sub_10000B3A8(v129, &unk_101696900, &unk_10138B1E0);
    (*(v130 + 8))(v57, v54);
LABEL_28:
    sub_10000B3A8(v50, &unk_1016B1660, &unk_10138CE10);
    v55 = v132;
LABEL_29:
    *(&v136 + 1) = v54;
    v137 = &protocol witness table for Date;
    v58 = sub_1000280DC(&v135);
    v125(v58, v55 + v124, v54);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_30;
  }

  v69 = v130;
  v70 = v122;
  (*(v130 + 32))(v122, v50 + v51, v52);
  sub_100D64C00(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v71 = dispatch thunk of static Equatable.== infix(_:_:)();
  v72 = *(v69 + 8);
  v72(v70, v131);
  sub_10000B3A8(v128, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v129, &unk_101696900, &unk_10138B1E0);
  v72(v56, v131);
  v54 = v131;
  sub_10000B3A8(v50, &unk_101696900, &unk_10138B1E0);
  v55 = v132;
  if ((v71 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  CKRecordKeyValueSetting.subscript.getter();
  v59 = v135;
  v60 = v55 + v134[9];
  v62 = *v60;
  v61 = *(v60 + 8);
  if (*(&v135 + 1) >> 60 == 15)
  {
    if (v61 >> 60 == 15)
    {
      sub_100017D5C(*v60, *(v60 + 8));
      sub_100006654(v59, *(&v59 + 1));
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (v61 >> 60 == 15)
  {
LABEL_34:
    sub_100017D5C(*v60, *(v60 + 8));
    sub_100006654(v59, *(&v59 + 1));
    sub_100006654(v62, v61);
LABEL_35:
    v63 = *v60;
    v64 = *(v60 + 8);
    *(&v136 + 1) = &type metadata for Data;
    v137 = &protocol witness table for Data;
    *&v135 = v63;
    *(&v135 + 1) = v64;
    sub_100017D5C(v63, v64);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_36;
  }

  sub_100017D5C(*v60, *(v60 + 8));
  sub_100017D5C(v62, v61);
  sub_10002E98C(v59, *(&v59 + 1));
  v73 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v59, *(&v59 + 1), v62, v61);
  sub_100016590(v62, v61);
  sub_100006654(v59, *(&v59 + 1));
  sub_100006654(v62, v61);
  sub_100006654(v59, *(&v59 + 1));
  if (!v73)
  {
    goto LABEL_35;
  }

LABEL_36:
  v65 = v132;
  v131 = v132 + v134[10];
  v66 = *(v131 + 8);
  if (v66 >> 60 == 15)
  {
    goto LABEL_46;
  }

  v67 = *v131;
  sub_100017D5C(*v131, v66);
  CKRecordKeyValueSetting.subscript.getter();
  v68 = v135;
  sub_10002E98C(v67, v66);
  if (*(&v68 + 1) >> 60 == 15)
  {
    sub_100006654(v68, *(&v68 + 1));
    sub_100006654(v67, v66);
LABEL_44:
    *(&v136 + 1) = &type metadata for Data;
    v137 = &protocol witness table for Data;
    *&v135 = v67;
    *(&v135 + 1) = v66;
    sub_10002E98C(v67, v66);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_45;
  }

  sub_10002E98C(v67, v66);
  sub_10002E98C(v68, *(&v68 + 1));
  v74 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v68, *(&v68 + 1), v67, v66);
  sub_100006654(v67, v66);
  sub_100006654(v68, *(&v68 + 1));
  sub_100006654(v67, v66);
  sub_100006654(v68, *(&v68 + 1));
  if (!v74)
  {
    goto LABEL_44;
  }

LABEL_45:
  sub_100006654(v67, v66);
LABEL_46:
  CKRecordKeyValueSetting.subscript.getter();
  v75 = v135;
  v76 = v65 + v134[12];
  v77 = *v76;
  v78 = *(v76 + 8);
  if (*(&v135 + 1) >> 60 == 15)
  {
    if (v78 >> 60 == 15)
    {
      sub_100017D5C(*v76, *(v76 + 8));
      sub_100006654(v75, *(&v75 + 1));
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (v78 >> 60 == 15)
  {
LABEL_50:
    sub_100017D5C(*v76, *(v76 + 8));
    sub_100006654(v75, *(&v75 + 1));
    sub_100006654(v77, v78);
LABEL_51:
    v79 = *v76;
    v80 = *(v76 + 8);
    *(&v136 + 1) = &type metadata for Data;
    v137 = &protocol witness table for Data;
    *&v135 = v79;
    *(&v135 + 1) = v80;
    sub_100017D5C(v79, v80);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_52;
  }

  sub_100017D5C(*v76, *(v76 + 8));
  sub_100017D5C(v77, v78);
  sub_10002E98C(v75, *(&v75 + 1));
  v101 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v75, *(&v75 + 1), v77, v78);
  sub_100016590(v77, v78);
  sub_100006654(v75, *(&v75 + 1));
  sub_100006654(v77, v78);
  sub_100006654(v75, *(&v75 + 1));
  if (!v101)
  {
    goto LABEL_51;
  }

LABEL_52:
  CKRecordKeyValueSetting.subscript.getter();
  v81 = v135;
  v82 = v132 + v134[13];
  v83 = *v82;
  v84 = *(v82 + 8);
  if (*(&v135 + 1) >> 60 != 15)
  {
    if (v84 >> 60 != 15)
    {
      sub_100017D5C(*v82, *(v82 + 8));
      sub_100017D5C(v83, v84);
      sub_10002E98C(v81, *(&v81 + 1));
      LODWORD(v130) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v81, *(&v81 + 1), v83, v84);
      sub_100016590(v83, v84);
      sub_100006654(v81, *(&v81 + 1));
      sub_100006654(v83, v84);
      sub_100006654(v81, *(&v81 + 1));
      if (v130)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

LABEL_56:
    sub_100017D5C(*v82, *(v82 + 8));
    sub_100006654(v81, *(&v81 + 1));
    sub_100006654(v83, v84);
LABEL_57:
    v85 = *v82;
    v86 = *(v82 + 8);
    *(&v136 + 1) = &type metadata for Data;
    v137 = &protocol witness table for Data;
    *&v135 = v85;
    *(&v135 + 1) = v86;
    sub_100017D5C(v85, v86);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_58;
  }

  if (v84 >> 60 != 15)
  {
    goto LABEL_56;
  }

  sub_100017D5C(*v82, *(v82 + 8));
  sub_100006654(v81, *(&v81 + 1));
LABEL_58:
  CKRecordKeyValueSetting.subscript.getter();
  v87 = v132;
  v88 = (v132 + v134[14]);
  v90 = *v88;
  v89 = v88[1];
  if (!*(&v135 + 1))
  {
    goto LABEL_62;
  }

  if (v135 == __PAIR128__(v89, v90))
  {

    goto LABEL_63;
  }

  v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v91 & 1) == 0)
  {
LABEL_62:
    *(&v136 + 1) = &type metadata for String;
    v137 = &protocol witness table for String;
    *&v135 = v90;
    *(&v135 + 1) = v89;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_63:
  CKRecordKeyValueSetting.subscript.getter();
  v92 = (v87 + v134[15]);
  v94 = *v92;
  v93 = v92[1];
  if (!*(&v135 + 1))
  {
    goto LABEL_68;
  }

  if (v135 != __PAIR128__(v93, v94))
  {
    v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v95)
    {
      goto LABEL_69;
    }

LABEL_68:
    *(&v136 + 1) = &type metadata for String;
    v137 = &protocol witness table for String;
    *&v135 = v94;
    *(&v135 + 1) = v93;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_69;
  }

LABEL_69:
  CKRecordKeyValueSetting.subscript.getter();
  v96 = *(v87 + v134[16]);
  if ((BYTE8(v135) & 1) != 0 || v135 != v96)
  {
    *(&v136 + 1) = &type metadata for Int;
    v137 = &protocol witness table for Int;
    *&v135 = v96;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v97 = *(v87 + v134[17]);
  if ((BYTE8(v135) & 1) != 0 || v135 != v97)
  {
    *(&v136 + 1) = &type metadata for Int;
    v137 = &protocol witness table for Int;
    *&v135 = v97;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v98 = *(v87 + v134[18]);
  if (BYTE8(v135))
  {
    if (v98 == 3)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  if (v98 == 3)
  {
    v98 = 0;
    v99 = 0;
    v100 = 0;
    *(&v135 + 1) = 0;
    *&v136 = 0;
LABEL_86:
    *&v135 = v98;
    *(&v136 + 1) = v99;
    v137 = v100;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_87;
  }

  if (v135 != v98)
  {
LABEL_85:
    v100 = &protocol witness table for Int;
    v99 = &type metadata for Int;
    goto LABEL_86;
  }

LABEL_87:
  CKRecordKeyValueSetting.subscript.getter();
  v102 = *(v87 + v134[19]);
  if ((BYTE8(v135) & 1) != 0 || v135 != v102)
  {
    *(&v136 + 1) = &type metadata for Int;
    v137 = &protocol witness table for Int;
    *&v135 = v102;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v103 = *(v131 + 8);
  if (v103 >> 60 != 15)
  {
    v107 = *v131;
    sub_100017D5C(*v131, *(v131 + 8));
    CKRecordKeyValueSetting.subscript.getter();
    v108 = v135;
    sub_10002E98C(v107, v103);
    if (*(&v108 + 1) >> 60 == 15)
    {
      sub_100006654(v108, *(&v108 + 1));
      sub_100006654(v107, v103);
    }

    else
    {
      sub_10002E98C(v107, v103);
      sub_10002E98C(v108, *(&v108 + 1));
      v109 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v108, *(&v108 + 1), v107, v103);
      sub_100006654(v107, v103);
      sub_100006654(v108, *(&v108 + 1));
      sub_100006654(v107, v103);
      sub_100006654(v108, *(&v108 + 1));
      if (v109)
      {
LABEL_97:
        sub_100006654(v107, v103);
        goto LABEL_98;
      }
    }

    *(&v136 + 1) = &type metadata for Data;
    v137 = &protocol witness table for Data;
    *&v135 = v107;
    *(&v135 + 1) = v103;
    sub_10002E98C(v107, v103);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_97;
  }

  v104 = String._bridgeToObjectiveC()();
  v105 = [v24 objectForKeyedSubscript:v104];

  if (v105)
  {
    swift_unknownObjectRelease();
    v106 = String._bridgeToObjectiveC()();
    [v24 setObject:0 forKeyedSubscript:v106];
  }

LABEL_98:
  v110 = v87 + v134[11];
  v111 = *(v110 + 8);
  if (v111 >> 60 != 15)
  {
    v115 = *v110;
    sub_100017D5C(*v110, *(v110 + 8));
    CKRecordKeyValueSetting.subscript.getter();
    v116 = v135;
    sub_10002E98C(v115, v111);
    if (*(&v116 + 1) >> 60 == 15)
    {
      sub_100006654(v116, *(&v116 + 1));
      sub_100006654(v115, v111);
    }

    else
    {
      sub_10002E98C(v115, v111);
      sub_10002E98C(v116, *(&v116 + 1));
      v117 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v116, *(&v116 + 1), v115, v111);
      sub_100006654(v115, v111);
      sub_100006654(v116, *(&v116 + 1));
      sub_100006654(v115, v111);
      sub_100006654(v116, *(&v116 + 1));
      if (v117)
      {
LABEL_105:
        sub_100006654(v115, v111);
        goto LABEL_106;
      }
    }

    *(&v136 + 1) = &type metadata for Data;
    v137 = &protocol witness table for Data;
    *&v135 = v115;
    *(&v135 + 1) = v111;
    sub_100017D5C(v115, v111);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_105;
  }

  v112 = String._bridgeToObjectiveC()();
  v113 = [v24 objectForKeyedSubscript:v112];

  if (v113)
  {
    swift_unknownObjectRelease();
    v114 = String._bridgeToObjectiveC()();
    [v24 setObject:0 forKeyedSubscript:v114];
  }

LABEL_106:
  CKRecordKeyValueSetting.subscript.getter();
  v118 = *(v87 + v134[20]);
  if (v135 == 2 || ((v118 ^ v135) & 1) != 0)
  {
    *(&v136 + 1) = &type metadata for Bool;
    v137 = &protocol witness table for Bool;
    LOBYTE(v135) = v118;
    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_100D64960(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x65644970756F7267;
      break;
    case 4:
      result = 0x44676E6972696170;
      break;
    case 5:
      result = 0x6553646572616873;
      break;
    case 6:
      v3 = 5;
      goto LABEL_16;
    case 7:
      v3 = 11;
LABEL_16:
      result = v3 | 0xD000000000000010;
      break;
    case 8:
      result = 0x4B65746176697270;
      break;
    case 9:
      result = 0x654B63696C627570;
      break;
    case 10:
      result = 0x6C65646F6DLL;
      break;
    case 11:
      result = 0x65566D6574737973;
      break;
    case 12:
      result = 0x6449726F646E6576;
      break;
    case 13:
      result = 0x49746375646F7270;
      break;
    case 14:
      result = 0x4C79726574746162;
      break;
    case 15:
      result = 0x7375655A7369;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_100D64B7C(uint64_t a1)
{
  *(a1 + 8) = sub_100D64C00(&qword_1016BB070, type metadata accessor for OwnedBeaconRecord, &unk_1013E7CAC);
  result = sub_100D64C00(&qword_1016B1538, type metadata accessor for OwnedBeaconRecord, &unk_1013E7C84);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100D64C00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100D64C48(uint64_t a1)
{
  result = sub_100D64C00(&qword_1016B1530, type metadata accessor for OwnedBeaconRecord, &unk_1013E7CD4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100D64CA0(uint64_t a1)
{
  result = sub_100D64C00(&unk_1016BB080, type metadata accessor for OwnedBeaconRecord, &unk_1013E7D18);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100D64CF8()
{
  result = qword_1016BB098;
  if (!qword_1016BB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB098);
  }

  return result;
}

uint64_t sub_100D64D4C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100D64960(*a1);
  v5 = v4;
  if (v3 == sub_100D64960(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100D64DD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100D64960(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D64E38(uint64_t a1)
{
  sub_100D64960(*v1);
  String.hash(into:)();
}

Swift::Int sub_100D64E8C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100D64960(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D64EEC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D65C0C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100D64F1C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100D64960(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100D64F64@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100D65C0C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D64F8C(uint64_t a1)
{
  v2 = sub_100D65990();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D64FC8(uint64_t a1)
{
  v2 = sub_100D65990();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100D65004@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for OwnedBeaconRecord(0);
  sub_100AC1584(a1 + *(v7 + 20), v6);
  v8 = type metadata accessor for BeaconProductInfoRecord(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    result = sub_10000B3A8(v6, &unk_1016AF8C0, &unk_1013A07A0);
    v10 = 2;
  }

  else
  {
    v10 = v6[*(v8 + 20)];
    result = sub_100032704(v6, type metadata accessor for BeaconProductInfoRecord);
  }

  *a2 = v10;
  return result;
}

uint64_t sub_100D65130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v65 - v9;
  v11 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v11);
  v13 = &v65 - v12;
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_23;
  }

  v14 = type metadata accessor for OwnedBeaconRecord(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || !sub_1010DF484(a1 + *(v14 + 24), a2 + *(v14 + 24)))
  {
    goto LABEL_23;
  }

  v66 = v14;
  v15 = *(v14 + 28);
  v16 = *(v11 + 48);
  sub_1000D2A70(a1 + v15, v13, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(a2 + v15, &v13[v16], &qword_1016980D0, &unk_10138F3B0);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_11;
    }

LABEL_9:
    sub_10000B3A8(v13, &qword_1016AF880, &unk_10138CE20);
    goto LABEL_23;
  }

  sub_1000D2A70(v13, v10, &qword_1016980D0, &unk_10138F3B0);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  (*(v5 + 32))(v7, &v13[v16], v4);
  sub_100D64C00(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  v20 = v66;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_23;
  }

  v21 = v20[9];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *v24;
  v26 = v24[1];
  sub_100017D5C(v22, v23);
  sub_100017D5C(v25, v26);
  v27 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v22, v23, v25, v26);
  sub_100016590(v25, v26);
  sub_100016590(v22, v23);
  if (!v27)
  {
    goto LABEL_23;
  }

  v28 = v20[10];
  v30 = *(a1 + v28);
  v29 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v33 = *v31;
  v32 = v31[1];
  if (v29 >> 60 == 15)
  {
    if (v32 >> 60 != 15)
    {
      goto LABEL_22;
    }

    sub_10002E98C(v30, v29);
    sub_10002E98C(v33, v32);
    sub_100006654(v30, v29);
  }

  else
  {
    if (v32 >> 60 == 15)
    {
      goto LABEL_22;
    }

    sub_10002E98C(v30, v29);
    sub_10002E98C(v33, v32);
    sub_10002E98C(v30, v29);
    sub_10002E98C(v33, v32);
    v34 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v30, v29, v33, v32);
    sub_100006654(v33, v32);
    sub_100006654(v30, v29);
    sub_100006654(v33, v32);
    sub_100006654(v30, v29);
    if (!v34)
    {
      goto LABEL_23;
    }
  }

  v35 = v20[11];
  v30 = *(a1 + v35);
  v29 = *(a1 + v35 + 8);
  v36 = (a2 + v35);
  v33 = *v36;
  v32 = v36[1];
  if (v29 >> 60 != 15)
  {
    if (v32 >> 60 != 15)
    {
      sub_10002E98C(v30, v29);
      sub_10002E98C(v33, v32);
      sub_10002E98C(v30, v29);
      sub_10002E98C(v33, v32);
      v39 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v30, v29, v33, v32);
      sub_100006654(v33, v32);
      sub_100006654(v30, v29);
      sub_100006654(v33, v32);
      sub_100006654(v30, v29);
      if (!v39)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

LABEL_22:
    sub_10002E98C(v30, v29);
    sub_10002E98C(v33, v32);
    sub_100006654(v30, v29);
    sub_100006654(v33, v32);
    goto LABEL_23;
  }

  if (v32 >> 60 != 15)
  {
    goto LABEL_22;
  }

  sub_10002E98C(v30, v29);
  sub_10002E98C(v33, v32);
  sub_100006654(v30, v29);
LABEL_26:
  v40 = v20[12];
  v41 = *(a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = *v43;
  v45 = v43[1];
  sub_100017D5C(v41, v42);
  sub_100017D5C(v44, v45);
  v46 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v41, v42, v44, v45);
  sub_100016590(v44, v45);
  sub_100016590(v41, v42);
  if (!v46)
  {
    goto LABEL_23;
  }

  v47 = v20[13];
  v48 = *(a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  v51 = *v50;
  v52 = v50[1];
  sub_100017D5C(v48, v49);
  sub_100017D5C(v51, v52);
  v53 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v48, v49, v51, v52);
  sub_100016590(v51, v52);
  sub_100016590(v48, v49);
  if (!v53)
  {
    goto LABEL_23;
  }

  v54 = v20[14];
  v55 = *(a1 + v54);
  v56 = *(a1 + v54 + 8);
  v57 = (a2 + v54);
  if ((v55 != *v57 || v56 != v57[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_23;
  }

  v58 = v20[15];
  v59 = *(a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  if ((v59 != *v61 || v60 != v61[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (*(a1 + v20[16]) != *(a2 + v20[16]) || *(a1 + v20[17]) != *(a2 + v20[17]))
  {
    goto LABEL_23;
  }

  v62 = v20[18];
  v63 = *(a1 + v62);
  v64 = *(a2 + v62);
  if (v63 == 3)
  {
    if (v64 != 3)
    {
      goto LABEL_23;
    }
  }

  else if (v63 != v64)
  {
    goto LABEL_23;
  }

  if (*(a1 + v66[19]) == *(a2 + v66[19]))
  {
    v37 = *(a1 + v66[20]) ^ *(a2 + v66[20]) ^ 1;
    return v37 & 1;
  }

LABEL_23:
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_100D658B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D6591C@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100D65004(v4, a1);
}

unint64_t sub_100D65990()
{
  result = qword_1016BB0B8;
  if (!qword_1016BB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB0B8);
  }

  return result;
}

unint64_t sub_100D659E4()
{
  result = qword_1016BB0E8;
  if (!qword_1016BB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB0E8);
  }

  return result;
}

unint64_t sub_100D65A38()
{
  result = qword_1016BB110;
  if (!qword_1016BB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB110);
  }

  return result;
}

unint64_t sub_100D65AB0()
{
  result = qword_1016BB118;
  if (!qword_1016BB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB118);
  }

  return result;
}

unint64_t sub_100D65B08()
{
  result = qword_1016BB120;
  if (!qword_1016BB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB120);
  }

  return result;
}

unint64_t sub_100D65B60()
{
  result = qword_1016BB128;
  if (!qword_1016BB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB128);
  }

  return result;
}

unint64_t sub_100D65BB8()
{
  result = qword_1016BB130;
  if (!qword_1016BB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB130);
  }

  return result;
}

unint64_t sub_100D65C0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160AB98, v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100D65C5C()
{
  result = Data.init(base64Encoded:options:)();
  qword_1016BB140 = result;
  qword_1016BB148 = v1;
  return result;
}

uint64_t sub_100D65C9C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for HashAlgorithm();
  v83 = *(v4 - 1);
  __chkstk_darwin(v4);
  v82 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.Encoding();
  v86 = *(v6 - 8);
  v87 = v6;
  __chkstk_darwin(v6);
  v85 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C418);
  sub_10002E98C(a1, a2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  sub_100006654(a1, a2);
  if (os_log_type_enabled(v9, v10))
  {
    v88 = v4;
    v11 = v8;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v90 = v13;
    *v12 = 136315138;
    if (a2 >> 60 == 15)
    {
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      v14 = Data.hexString.getter();
      v15 = v16;
    }

    v17 = sub_1000136BC(v14, v15, &v90);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, " E1 encryption key from server: %s", v12, 0xCu);
    sub_100007BAC(v13);

    v8 = v11;
    v4 = v88;
  }

  else
  {
  }

  v88 = [objc_opt_self() defaultStore];
  if (v88)
  {
    v18 = a1;
    v19 = a2;
    if (a2 >> 60 == 15)
    {
      if (qword_101694E88 != -1)
      {
        swift_once();
      }

      v19 = qword_1016BB148;
      if (qword_1016BB148 >> 60 == 15)
      {
        if (qword_101694E98 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v8, qword_10177C0A8);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v20, v21, " Invalid server public key.", v22, 2u);
        }

        goto LABEL_44;
      }

      v18 = qword_1016BB140;
      sub_100017D5C(qword_1016BB140, qword_1016BB148);
    }

    sub_10002E98C(a1, a2);
    v23 = [v88 aa_primaryAppleAccount];
    v81 = v8;
    if (v23)
    {
      v24 = v23;
      v25 = [v23 aa_personID];
      if (v25)
      {
        v26 = v25;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        if (qword_101694E98 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v8, qword_10177C0A8);

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();

        v32 = os_log_type_enabled(v30, v31);
        v80 = v27;
        if (v32)
        {
          v33 = swift_slowAlloc();
          v79 = v18;
          v34 = v33;
          v35 = swift_slowAlloc();
          v90 = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_1000136BC(v80, v29, &v90);
          _os_log_impl(&_mh_execute_header, v30, v31, "DSID: %s", v34, 0xCu);
          sub_100007BAC(v35);

          v18 = v79;
        }

        v36 = v85;
        static String.Encoding.utf8.getter();
        v37 = String.data(using:allowLossyConversion:)();
        v39 = v38;
        (*(v86 + 8))(v36, v87);
        if (v39 >> 60 == 15)
        {

          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = v18;
            v44 = swift_slowAlloc();
            v90 = v44;
            *v42 = 141558275;
            *(v42 + 4) = 1752392040;
            *(v42 + 12) = 2081;
            v45 = sub_1000136BC(v80, v29, &v90);

            *(v42 + 14) = v45;
            _os_log_impl(&_mh_execute_header, v40, v41, "Invalid DSID %{private,mask.hash}s", v42, 0x16u);
            sub_100007BAC(v44);

            v46 = v43;
LABEL_37:
            sub_100016590(v46, v19);
LABEL_43:

LABEL_44:
            return 0;
          }

          goto LABEL_42;
        }

        v61 = v82;
        v62 = v83;
        (*(v83 + 104))(v82, enum case for HashAlgorithm.sha256(_:), v4);
        v63 = Data.hash(algorithm:)();
        v65 = v68;

        v66 = v37;
        v67 = v39;
        goto LABEL_40;
      }
    }

    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v8, qword_10177C0A8);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to obtain DSID from account. Using device serial number instead to support account signed out.", v49, 2u);
    }

    v50 = v85;
    v51 = *(v84 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
    v52 = *(v84 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
    static String.Encoding.utf8.getter();
    v53 = String.data(using:allowLossyConversion:)();
    v55 = v54;
    (*(v86 + 8))(v50, v87);
    if (v55 >> 60 == 15)
    {

      v40 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v56))
      {
        v57 = swift_slowAlloc();
        v58 = v18;
        v59 = swift_slowAlloc();
        v90 = v59;
        *v57 = 141558275;
        *(v57 + 4) = 1752392040;
        *(v57 + 12) = 2081;
        v60 = sub_1000136BC(v51, v52, &v90);

        *(v57 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v40, v56, "Invalid serial number %{private,mask.hash}s", v57, 0x16u);
        sub_100007BAC(v59);

        v46 = v58;
        goto LABEL_37;
      }

LABEL_42:
      sub_100016590(v18, v19);

      goto LABEL_43;
    }

    v61 = v82;
    v62 = v83;
    (*(v83 + 104))(v82, enum case for HashAlgorithm.sha256(_:), v4);
    v63 = Data.hash(algorithm:)();
    v65 = v64;
    v66 = v53;
    v67 = v55;
LABEL_40:
    sub_100006654(v66, v67);
    (*(v62 + 8))(v61, v4);
    sub_100017D5C(v18, v19);
    v69 = sub_10049C290(v18, v19);
    v71 = v70;
    v72 = objc_autoreleasePoolPush();
    sub_100A79398(&v89, &v90);
    objc_autoreleasePoolPop(v72);
    sub_100495F0C(v90, v91, &v90);
    sub_100016590(v63, v65);
    sub_100016590(v18, v19);

    sub_100016590(v69, v71);
    v73 = v90;
    v74 = v91;
    v75 = v84;
    v76 = *(v84 + 40);
    v77 = *(v84 + 48);
    *(v84 + 40) = v90;
    *(v75 + 48) = v74;
    sub_100017D5C(v73, v74);
    sub_100006654(v76, v77);
    return v73;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100D66838@<X0>(void *a1@<X8>)
{
  v3 = v1[6];
  if (v3 >> 60 == 15 || (v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce + 8), v4 >> 60 == 15) || (v5 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber), v6 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8), v6 >> 60 == 15) || (v7 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber), v8 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8), v8 >> 60 == 15) || (v9 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts), v10 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts + 8), v10 >> 60 == 15) || (v11 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr), v12 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr + 8), v12 >> 60 == 15) || (v13 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1), v14 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1 + 8), v14 >> 60 == 15) || (v15 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation), v16 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation + 8), v16 >> 60 == 15) || (v17 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature), v18 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature + 8), v18 >> 60 == 15))
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177C0A8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing pairing info to generate PencilPairingCheckData.", v22, 2u);
    }

    sub_100D67380(__src);
  }

  else
  {
    v65 = v1;
    v24 = v1[5];
    v25 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce);
    v26 = *v5;
    v70 = v14;
    v71 = v24;
    v75 = *v11;
    v76 = *v9;
    v73 = *v13;
    v74 = *v15;
    v68 = *v7;
    *&v69 = *v17;
    *(&v69 + 1) = v18;
    sub_10002E98C(v24, v3);
    v64 = v25;
    sub_10002E98C(v25, v4);
    v63 = v26;
    sub_10002E98C(v26, v6);
    sub_10002E98C(v68, v8);
    sub_10002E98C(v76, v10);
    sub_10002E98C(v75, v12);
    sub_10002E98C(v73, v70);
    sub_10002E98C(v74, v16);
    sub_10002E98C(v69, *(&v69 + 1));
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177C0A8);
    sub_10002E98C(v71, v3);
    sub_10002E98C(v76, v10);
    sub_10002E98C(v75, v12);
    sub_10002E98C(v73, v70);
    sub_10002E98C(v74, v16);
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    sub_100006654(v71, v3);
    sub_100006654(v76, v10);
    sub_100006654(v75, v12);
    sub_100006654(v73, v70);
    sub_100006654(v74, v16);
    v62 = v28;
    v66 = v16;
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      *&v77[0] = swift_slowAlloc();
      *v29 = 136316162;
      v30 = v29;
      *&__src[0] = v71;
      *(&__src[0] + 1) = v3;
      sub_100017D5C(v71, v3);
      v31 = String.init<A>(describing:)();
      v33 = sub_1000136BC(v31, v32, v77);

      *(v30 + 1) = v33;
      *(v30 + 6) = 2080;
      sub_100017D5C(v76, v10);
      v34 = Data.description.getter();
      v36 = v35;
      sub_100006654(v76, v10);
      v37 = sub_1000136BC(v34, v36, v77);

      *(v30 + 14) = v37;
      *(v30 + 11) = 2080;
      sub_100017D5C(v75, v12);
      v38 = Data.description.getter();
      v40 = v39;
      sub_100006654(v75, v12);
      v41 = sub_1000136BC(v38, v40, v77);

      *(v30 + 3) = v41;
      *(v30 + 16) = 2080;
      sub_100017D5C(v73, v70);
      v60 = Data.description.getter();
      v43 = v42;
      sub_100006654(v73, v70);
      v44 = sub_1000136BC(v60, v43, v77);

      *(v30 + 34) = v44;
      *(v30 + 21) = 2080;
      sub_100017D5C(v74, v66);
      v61 = Data.description.getter();
      v46 = v45;
      sub_100006654(v74, v66);
      v47 = sub_1000136BC(v61, v46, v77);

      *(v30 + 11) = v47;
      _os_log_impl(&_mh_execute_header, oslog, v62, "encryptedBlobE1: %s, accessoryCerts: %s, csr: %s seedK1: %s, accessoryAttestation: %s", v30, 0x34u);
      swift_arrayDestroy();

      v48 = v71;
      v49 = v65;
    }

    else
    {

      v49 = v65;
      v48 = v71;
    }

    v72 = *(v49 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
    v50 = *(v49 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
    v51 = *(v49 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
    v53 = v49[2];
    v52 = v49[3];
    v54 = v49[11];
    v55 = v49[12];
    v57 = v49[13];
    v56 = v49[14];
    v77[1] = *(v49 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
    v77[2] = v72;
    v77[0] = xmmword_10138BBF0;
    *&v77[3] = v50;
    *(&v77[3] + 1) = v51;
    *&v77[4] = v64;
    *(&v77[4] + 1) = v4;
    *&v77[5] = v63;
    *(&v77[5] + 1) = v6;
    *&v77[6] = v68;
    *(&v77[6] + 1) = v8;
    *&v77[7] = 1;
    BYTE8(v77[7]) = 0;
    *&v77[8] = _swiftEmptyArrayStorage;
    *(&v77[8] + 1) = 0;
    *&v77[9] = v73;
    *(&v77[9] + 1) = v70;
    *&v77[10] = v76;
    *(&v77[10] + 1) = v10;
    *&v77[11] = v75;
    *(&v77[11] + 1) = v12;
    *&v77[12] = v74;
    *(&v77[12] + 1) = v66;
    v77[13] = v69;
    v77[14] = xmmword_10138BBF0;
    *&v77[15] = v53;
    *(&v77[15] + 1) = v52;
    v58 = v52;
    *&v77[16] = v48;
    *(&v77[16] + 1) = v3;
    *&v77[17] = v54;
    *(&v77[17] + 1) = v55;
    *&v77[18] = v57;
    *(&v77[18] + 1) = v56;
    v59 = v56;
    SharingCircleWildAdvertisementKey.init(key:)();

    sub_100017D5C(v53, v58);

    sub_10002E98C(v57, v59);
    memcpy(__src, v77, sizeof(__src));
  }

  return memcpy(a1, __src, 0x130uLL);
}

__n128 sub_100D66FA0@<Q0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation + 8);
  if (v4 >> 60 == 15 || (v5 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce + 8), v5 >> 60 == 15) || (v6 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8), v6 >> 60 == 15) || (v7 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8), v7 >> 60 == 15) || (v8 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8), v8 >> 60 == 15) || (v9 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts + 8), v9 >> 60 == 15) || (v10 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr + 8), v10 >> 60 == 15) || (v11 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8), v11 >> 60 == 15))
  {
    v12 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v20 = v12;
      swift_once();
      v12 = v20;
    }

    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10177C410, "Missing info to generate AirPodsPairingAckData!", 47, 2, _swiftEmptyArrayStorage);
    sub_100D67350(&v41);
  }

  else
  {
    v21 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce);
    v22 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v23 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
    v24 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber);
    v25 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts);
    v26 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr);
    v27 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
    v28 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
    v29 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
    v30.n128_u64[0] = v21;
    v30.n128_u64[1] = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce + 8);
    *&v31 = v22;
    *(&v31 + 1) = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
    *&v32 = v24;
    *(&v32 + 1) = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8);
    *&v33 = v25;
    *(&v33 + 1) = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts + 8);
    *&v34 = v26;
    *(&v34 + 1) = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr + 8);
    *&v35 = v23;
    *(&v35 + 1) = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
    v36 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation);
    v37 = v2[1];
    v38 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
    v39 = *(v2 + 88);
    v40 = *(v2 + 104);
    SharingCircleWildAdvertisementKey.init(key:)();
    sub_10002E98C(v36, v4);
    sub_10002E98C(v21, v5);
    sub_10002E98C(v22, v6);
    sub_10002E98C(v24, v7);
    sub_10002E98C(v23, v8);
    sub_10002E98C(v25, v9);
    sub_10002E98C(v26, v10);
    sub_10002E98C(v38, v11);

    sub_100017D5C(v37, *(&v37 + 1));

    sub_10002E98C(v40, *(&v40 + 1));
    v53 = v38;
    v54 = v39;
    v55 = v40;
    v49 = v35;
    v50 = v36;
    v51 = xmmword_10138BBF0;
    v52 = v37;
    v45 = v31;
    v46 = v32;
    v47 = v33;
    v48 = v34;
    v41 = v27;
    v42 = v28;
    v43 = v29;
    v44 = v30;
  }

  v13 = v54;
  *(a2 + 192) = v53;
  *(a2 + 208) = v13;
  *(a2 + 224) = v55;
  v14 = v50;
  *(a2 + 128) = v49;
  *(a2 + 144) = v14;
  v15 = v52;
  *(a2 + 160) = v51;
  *(a2 + 176) = v15;
  v16 = v46;
  *(a2 + 64) = v45;
  *(a2 + 80) = v16;
  v17 = v48;
  *(a2 + 96) = v47;
  *(a2 + 112) = v17;
  v18 = v42;
  *a2 = v41;
  *(a2 + 16) = v18;
  result = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = result;
  return result;
}

double sub_100D67350(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_10139AE20;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  return result;
}

double sub_100D67380(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *sub_100D673B0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = 0xD000000000000025;
  v2[3] = 0x80000001013E8030;
  v12 = sub_1000BC488();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100D69E94(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v2[7] = 0;
  v2[8] = 0;
  v10 = v14;
  v2[4] = v13;
  v2[5] = v10;
  v2[6] = v9;
  return v2;
}

uint64_t sub_100D67648(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016B16B8, &qword_1013D0A98);
  v42 = *(v2 - 1);
  v43 = v2;
  __chkstk_darwin(v2);
  v4 = v40 - v3;
  v50 = sub_1000BC4D4(&qword_1016BB2E0, &qword_1013E80E0);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = v40 - v5;
  v51 = sub_1000BC4D4(&qword_1016BB2E8, &qword_1013E80E8);
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v47 = v40 - v6;
  v7 = type metadata accessor for OwnedBeaconRecord(0);
  v41 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v44 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v9;
  __chkstk_darwin(v8);
  v11 = v40 - v10;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177B780);
  sub_100D69D20(a1, v11, type metadata accessor for OwnedBeaconRecord);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v53 = v16;
    *v15 = 136315138;
    type metadata accessor for UUID();
    sub_100D69E94(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100A51DCC(v11, type metadata accessor for OwnedBeaconRecord);
    v20 = sub_1000136BC(v17, v19, &v53);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Handling freshly paired beacon: %s", v15, 0xCu);
    sub_100007BAC(v16);
  }

  else
  {

    sub_100A51DCC(v11, type metadata accessor for OwnedBeaconRecord);
  }

  v21 = v45;
  v22 = *(v45 + 32);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_101385D80;
  v40[2] = v7;
  (*(v24 + 16))(v26 + v25, a1 + *(v7 + 20), v23);
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  *(v27 + 24) = v26;

  sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
  sub_1000041A4(&qword_1016B16D0, &unk_1016B16A0, &unk_1013EE850, &protocol conformance descriptor for Future<A, B>);
  Deferred.init(createPublisher:)();
  sub_1000041A4(&qword_1016B16D8, &qword_1016B16B8, &qword_1013D0A98, &protocol conformance descriptor for Deferred<A>);
  v28 = v43;
  v29 = Publisher.eraseToAnyPublisher()();
  v40[1] = v29;
  (*(v42 + 8))(v4, v28);
  v53 = v29;
  v43 = type metadata accessor for OwnedBeaconRecord;
  v30 = v44;
  sub_100D69D20(a1, v44, type metadata accessor for OwnedBeaconRecord);
  v31 = *(v41 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v21;
  sub_100132D2C(v30, v32 + ((v31 + 24) & ~v31));

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016BB2F0, &unk_1013E80F0);
  sub_1000BC4D4(&qword_1016B16E0, &qword_1013D0AB0);
  v45 = a1;
  sub_1000041A4(&qword_1016BB2F8, &qword_1016BB2F0, &unk_1013E80F0, &unk_1013C4AC8);
  sub_1000041A4(&qword_1016B16E8, &qword_1016B16E0, &qword_1013D0AB0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v33 = v46;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  sub_100D69D20(v45, v30, v43);
  v34 = swift_allocObject();
  sub_100132D2C(v30, v34 + ((v31 + 16) & ~v31));
  sub_1000041A4(&qword_1016BB300, &qword_1016BB2E0, &qword_1013E80E0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v35 = v47;
  v36 = v50;
  Publisher.map<A>(_:)();

  (*(v48 + 8))(v33, v36);
  sub_1000041A4(&qword_1016BB308, &qword_1016BB2E8, &qword_1013E80E8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v37 = v51;
  v38 = Publisher.eraseToAnyPublisher()();
  (*(v49 + 8))(v35, v37);
  return v38;
}

uint64_t sub_100D67EC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_1016B16B8, &qword_1013D0A98);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v10 = *(a1 + 32);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v15 = type metadata accessor for OwnedBeaconRecord(0);
  (*(v12 + 16))(v14 + v13, a2 + *(v15 + 20), v11);
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  *(v16 + 24) = v14;

  sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
  sub_1000041A4(&qword_1016B16D0, &unk_1016B16A0, &unk_1013EE850, &protocol conformance descriptor for Future<A, B>);
  Deferred.init(createPublisher:)();
  sub_1000041A4(&qword_1016B16D8, &qword_1016B16B8, &qword_1013D0A98, &protocol conformance descriptor for Deferred<A>);
  v17 = Publisher.eraseToAnyPublisher()();
  result = (*(v7 + 8))(v9, v6);
  *a3 = v17;
  return result;
}

uint64_t sub_100D68148()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v2 - 8);
  v26 = &v24 - v3;
  v25 = sub_1000BC4D4(&qword_1016BB290, &qword_1013E80A8);
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v24 - v5;
  v7 = sub_1000BC4D4(&qword_1016BB298, &qword_1013E80B0);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_1000BC4D4(&qword_1016BB2A0, &unk_1013E80B8);
  v12 = *(v11 - 8);
  v29 = v11;
  v30 = v12;
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v31 = *(*(v0 + 40) + 24);

  sub_1000BC4D4(&qword_10169FBE8, &unk_1013A2760);
  type metadata accessor for OwnedBeaconRecord(0);
  sub_1000041A4(&qword_10169FBF0, &qword_10169FBE8, &unk_1013A2760, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.compactMap<A>(_:)();

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016BB2A8, &qword_1013E80C8);
  sub_1000041A4(&qword_1016BB2B0, &qword_1016BB290, &qword_1013E80A8, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_1000041A4(&qword_1016BB2B8, &qword_1016BB2A8, &qword_1013E80C8, &unk_1013C4AC8);
  v15 = v25;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v4 + 8))(v6, v15);
  v31 = *(v0 + 48);
  v16 = v31;
  v17 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v18 = v26;
  (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  sub_1000BC488();
  sub_1000041A4(&qword_1016BB2C0, &qword_1016BB298, &qword_1013E80B0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_100D69E94(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v19 = v16;
  v20 = v27;
  Publisher.subscribe<A>(on:options:)();
  sub_10000B3A8(v18, &unk_1016B0FE0, &unk_101391980);

  (*(v28 + 8))(v10, v20);
  sub_1000041A4(&qword_1016BB2C8, &qword_1016BB2A0, &unk_1013E80B8, &protocol conformance descriptor for Publishers.SubscribeOn<A, B>);
  v21 = v29;
  v22 = Publisher<>.sink(receiveValue:)();
  (*(v30 + 8))(v14, v21);
  *(v1 + 56) = v22;
}

uint64_t sub_100D68694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PairingEvent(0);
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D69D20(a1, v6, type metadata accessor for PairingEvent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for OwnedBeaconRecord(0);
    (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
    return sub_100A51DCC(v6, type metadata accessor for PairingEvent);
  }

  else
  {
    sub_100132D2C(v6, a2);
    v9 = type metadata accessor for OwnedBeaconRecord(0);
    return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
  }
}

uint64_t sub_100D687F0()
{
  type metadata accessor for Transaction();
  sub_1000BC4D4(&qword_1016BB2A8, &qword_1013E80C8);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100D68888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100D67648(a3);

  sub_1000BC4D4(&qword_1016BB2D0, &unk_1013E80D0);
  sub_1000041A4(&qword_1016BB2D8, &qword_1016BB2D0, &unk_1013E80D0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
}

void sub_100D6898C(uint64_t a1)
{
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v31 - v6;
  v8 = sub_1000BC4D4(&qword_1016BB288, &unk_1013E8098);
  __chkstk_darwin(v8);
  v10 = (&v31 - v9);
  sub_100D69C88(a1, &v31 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177B780);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v13;
      v32 = v17;
      *v16 = 136315138;
      type metadata accessor for SPSeparationMonitoringError(0);
      v18 = v13;
      v19 = String.init<A>(describing:)();
      v21 = sub_1000136BC(v19, v20, &v32);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to automatically enroll beacon due to: %s", v16, 0xCu);
      sub_100007BAC(v17);
    }

    else
    {
    }
  }

  else
  {
    sub_100132D2C(v10, v7);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177B780);
    sub_100D69D20(v7, v5, type metadata accessor for OwnedBeaconRecord);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      type metadata accessor for UUID();
      sub_100D69E94(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_100A51DCC(v5, type metadata accessor for OwnedBeaconRecord);
      v30 = sub_1000136BC(v27, v29, &v32);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Successfully enrolled beacon %s", v25, 0xCu);
      sub_100007BAC(v26);
    }

    else
    {

      sub_100A51DCC(v5, type metadata accessor for OwnedBeaconRecord);
    }

    sub_100A51DCC(v7, type metadata accessor for OwnedBeaconRecord);
  }
}

void sub_100D68DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = __chkstk_darwin(v4);
  v76 = &v63[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v67 = &v63[-v8];
  v9 = __chkstk_darwin(v7);
  v72 = &v63[-v10];
  v68 = v11;
  __chkstk_darwin(v9);
  v13 = &v63[-v12];
  v14 = type metadata accessor for SystemVersionNumber();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v69 = &v63[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v20 = &v63[-v19];
  __chkstk_darwin(v18);
  v22 = &v63[-v21];
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_1000076D4(v23, qword_10177B780);
  v25 = *(v15 + 16);
  v25(v22, a1, v14);
  v25(v20, a2, v14);
  v75 = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v70 = v15;
  v71 = a1;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v78[0] = v65;
    *v29 = 136315394;
    sub_100D69E94(&qword_1016A4928, &type metadata accessor for SystemVersionNumber, &protocol conformance descriptor for SystemVersionNumber);
    v66 = v13;
    v64 = v27;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v33 = *(v15 + 8);
    v33(v22, v14);
    v34 = sub_1000136BC(v30, v32, v78);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v13 = v66;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v33(v20, v14);
    v38 = v33;
    v39 = sub_1000136BC(v35, v37, v78);

    *(v29 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v26, v64, "Handling local beacon migration from: %s to: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v38 = *(v15 + 8);
    v38(v20, v14);
    v38(v22, v14);
  }

  v40 = v77;
  v41 = *(v77 + 32);
  v42 = sub_100AA5C88();
  if (v42[2])
  {
    v43 = v72;
    v44 = *(v73 + 80);
    sub_100D69D20(v42 + ((v44 + 32) & ~v44), v72, type metadata accessor for OwnedBeaconRecord);

    sub_100132D2C(v43, v13);
    v45 = sub_1006FD6D0(v13, v41);
    v46 = sub_10111F67C(8, v45);

    v47 = &v13[*(v74 + 56)];
    v48 = *v47;
    v49 = v47[1];

    LOBYTE(v48) = sub_10013B9D8(v48, v49);

    if (v48 > 4u)
    {
      if (v46)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v53 = v69;
      SystemVersionNumber.init(stringLiteral:)();
      sub_100D69E94(&qword_101697BD0, &type metadata accessor for SystemVersionNumber, &protocol conformance descriptor for SystemVersionNumber);
      v54 = dispatch thunk of static Comparable.< infix(_:_:)();
      v38(v53, v14);
      if (v46 & v54)
      {
LABEL_13:
        v55 = v67;
        sub_100D69D20(v13, v67, type metadata accessor for OwnedBeaconRecord);
        sub_100D69D20(v55, v76, type metadata accessor for OwnedBeaconRecord);
        v56 = swift_allocObject();
        *(v56 + 16) = v40;
        sub_100132D2C(v55, v56 + ((v44 + 24) & ~v44));
        swift_retain_n();
        sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
        type metadata accessor for CloudKitCoordinator();
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v57 = v78[0];
        if (qword_101694FA8 != -1)
        {
          swift_once();
        }

        v78[0] = 0x7365547265646E75;
        v78[1] = 0xE900000000000074;
        SynchronousCache.cachedValue<A>(key:computeBlock:)();
        if (v79 == 1)
        {
          sub_100D69704(v40, v76);
        }

        else
        {
          v58 = type metadata accessor for Transaction();
          __chkstk_darwin(v58);
          *&v63[-32] = v57;
          *&v63[-24] = sub_100D69C24;
          *&v63[-16] = v56;
          static Transaction.named<A>(_:with:)();
        }

        sub_100A51DCC(v76, type metadata accessor for OwnedBeaconRecord);
        v59 = v13;
LABEL_23:
        sub_100A51DCC(v59, type metadata accessor for OwnedBeaconRecord);
        return;
      }
    }

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Separation Monitoring migration not needed or not possible.", v62, 2u);
    }

    v59 = v13;
    goto LABEL_23;
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Local beacon not found, can't migrate", v52, 2u);
  }
}

uint64_t sub_100D69704(uint64_t a1, uint64_t a2)
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B780);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Will attempt to automatically enroll local beacon after migration", v7, 2u);
  }

  sub_100D67648(a2);
  sub_1000BC4D4(&qword_1016BB278, &qword_1013E8090);
  sub_1000041A4(&qword_1016BB280, &qword_1016BB278, &qword_1013E8090, &unk_1013C4AC8);
  v8 = Publisher<>.sink(receiveValue:)();

  *(a1 + 64) = v8;
}

void sub_100D69890(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016BB288, &unk_1013E8098);
  __chkstk_darwin(v2);
  v4 = (&v20 - v3);
  sub_100D69C88(a1, &v20 - v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B780);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v7;
      v21 = v11;
      *v10 = 136315138;
      type metadata accessor for SPSeparationMonitoringError(0);
      v12 = v7;
      v13 = String.init<A>(describing:)();
      v15 = sub_1000136BC(v13, v14, &v21);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to automatically enroll beacon due to: %s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {
    }
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177B780);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Separation Monitoring auto-enrollment completed succesfully for local beacon.", v19, 2u);
    }

    sub_10000B3A8(v4, &qword_1016BB288, &unk_1013E8098);
  }
}

uint64_t sub_100D69B58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100D69C24()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100D69704(v2, v3);
}

uint64_t sub_100D69C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016BB288, &unk_1013E8098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D69D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D69D90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100D67EC8(v4, v5, a1);
}

uint64_t sub_100D69E94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100D69EDC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v49 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v58 = &v49 - v15;
  if (CKRecord.recordType.getter() == 0xD000000000000013 && 0x80000001013E8170 == v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      sub_100D6C4B0();
      swift_allocError();
      *v26 = 0;
      goto LABEL_13;
    }
  }

  v55 = v2;
  v56 = v14;
  v18 = [a1 recordID];
  v19 = [v18 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    sub_1002EA198(v9);
    sub_100D6C4B0();
    swift_allocError();
    *v21 = 1;
LABEL_13:
    swift_willThrow();

    return;
  }

  v53 = *(v11 + 32);
  v54 = v11 + 32;
  v53(v58, v9, v10);
  v22 = [a1 encryptedValues];
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 objectForKeyedSubscript:v23];

  if (!v24 || (v61 = v24, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    sub_100D6C4B0();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    (*(v11 + 8))(v58, v10);
    return;
  }

  UUID.init(uuidString:)();

  if (v20(v7, 1, v10) == 1)
  {
    sub_1002EA198(v7);
    goto LABEL_11;
  }

  v53(v56, v7, v10);
  v27 = String._bridgeToObjectiveC()();
  v28 = [v22 objectForKeyedSubscript:v27];

  if (v28 && (v61 = v28, (swift_dynamicCast() & 1) != 0))
  {
    v29 = v60;
    v52 = v59;
    v30 = String._bridgeToObjectiveC()();
    v31 = [v22 objectForKeyedSubscript:v30];

    v32 = v56;
    if (v31)
    {
      v61 = v31;
      if (swift_dynamicCast())
      {
        v50 = v60;
        v51 = v59;
        v49 = objc_autoreleasePoolPush();
        v33 = v32;
        v34 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
        [a1 encodeSystemFieldsWithCoder:v34];
        [v34 finishEncoding];
        v35 = [v34 encodedData];
        v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        objc_autoreleasePoolPop(v49);
        swift_unknownObjectRelease();

        v39 = v57;
        *v57 = v36;
        v39[1] = v38;
        v40 = type metadata accessor for SharingCircleSecret(0);
        v41 = v53;
        v53(v39 + v40[5], v58, v10);
        v41(v39 + v40[6], v33, v10);
        v42 = (v39 + v40[8]);
        v43 = v51;
        *v42 = v52;
        v42[1] = v29;
        v44 = (v39 + v40[7]);
        v45 = v50;
        *v44 = v43;
        v44[1] = v45;
        return;
      }
    }

    sub_100D6C4B0();
    swift_allocError();
    *v48 = 5;
    swift_willThrow();
    sub_100016590(v52, v29);
    swift_unknownObjectRelease();

    v47 = *(v11 + 8);
    v47(v32, v10);
  }

  else
  {
    sub_100D6C4B0();
    swift_allocError();
    *v46 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();

    v47 = *(v11 + 8);
    v47(v56, v10);
  }

  v47(v58, v10);
}

uint64_t sub_100D6A5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v53 = a3;
  v52 = a2;
  v4 = type metadata accessor for UUID();
  v50 = *(v4 - 8);
  v5 = v50;
  v6 = __chkstk_darwin(v4);
  v55 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = &v44 - v8;
  v45 = type metadata accessor for SharingCircleSecretValue(0);
  v9 = __chkstk_darwin(v45);
  v49 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v13 = type metadata accessor for P256.Signing.PrivateKey();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v51 = &v44 - v18;
  P256.Signing.PrivateKey.init(compactRepresentable:)();
  v20 = *(v5 + 16);
  v20(v12, a1, v4);
  v21 = *(v14 + 16);
  v47 = v13;
  v21(v17, v19, v13);
  v22 = P256.Signing.PrivateKey.rawRepresentation.getter();
  v24 = v23;
  v25 = *(v14 + 8);
  v46 = v14 + 8;
  v48 = v25;
  v25(v17, v13);
  v26 = &v12[*(type metadata accessor for KeyDropJoinToken(0) + 20)];
  *v26 = v22;
  v26[1] = v24;
  v44 = v12;
  swift_storeEnumTagMultiPayload();
  v27 = v54;
  UUID.init()();
  v28 = v55;
  v20(v55, v52, v4);
  v29 = v12;
  v30 = v49;
  sub_100D6C630(v29, v49, type metadata accessor for SharingCircleSecretValue);
  v31 = v53;
  *v53 = xmmword_10138C660;
  v32 = type metadata accessor for SharingCircleSecret(0);
  v20(&v31[v32[5]], v27, v4);
  v33 = v31;
  v20(&v31[v32[6]], v28, v4);
  v34 = sub_101315BA4();
  v35 = &v31[v32[8]];
  *v35 = v34;
  v35[1] = v36;
  v37 = v30;
  v38 = sub_101315964();
  v40 = v39;
  sub_100D6C698(v37, type metadata accessor for SharingCircleSecretValue);
  v41 = *(v50 + 8);
  v41(v55, v4);
  v41(v54, v4);
  sub_100D6C698(v44, type metadata accessor for SharingCircleSecretValue);
  result = v48(v51, v47);
  v43 = &v33[v32[7]];
  *v43 = v38;
  v43[1] = v40;
  return result;
}

uint64_t sub_100D6A9DC@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, unsigned int a2@<W1>, char *a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v43 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = type metadata accessor for SharingCircleSecretValue(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v34 - v14);
  sub_1005CAD68(v44);
  v16 = v44[0];
  v17 = v44[1];
  *v15 = v44[0];
  v15[1] = v17;
  v37 = v17;
  v38 = v16;
  swift_storeEnumTagMultiPayload();
  sub_100017D5C(v16, v17);
  v36 = v9;
  UUID.init()();
  v18 = *(v4 + 16);
  v35 = v7;
  v19 = v39;
  v18(v7, v43, v39);
  v43 = type metadata accessor for SharingCircleSecretValue;
  sub_100D6C630(v15, v13, type metadata accessor for SharingCircleSecretValue);
  v20 = v42;
  *v42 = xmmword_10138C660;
  v21 = type metadata accessor for SharingCircleSecret(0);
  v18(&v20[v21[5]], v9, v19);
  v22 = v7;
  v23 = v19;
  v18(&v20[v21[6]], v22, v19);
  v24 = sub_101315BA4();
  v25 = &v20[v21[8]];
  *v25 = v24;
  v25[1] = v26;
  v27 = sub_101315964();
  v29 = v28;
  sub_100016590(v38, v37);
  v30 = v43;
  sub_100D6C698(v13, v43);
  v31 = *(v40 + 8);
  v31(v35, v23);
  v31(v36, v23);
  result = sub_100D6C698(v15, v30);
  v33 = &v20[v21[7]];
  *v33 = v27;
  v33[1] = v29;
  return result;
}

uint64_t sub_100D6ACB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v37 = type metadata accessor for UUID();
  v31 = *(v37 - 8);
  v2 = v31;
  v3 = __chkstk_darwin(v37);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v7 = type metadata accessor for SharingCircleSecretValue(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for SymmetricKey256();
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v16;
  static SymmetricKey256.random()();
  (*(v14 + 16))(v12, v16, v13);
  v32 = v12;
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  v17 = *(v2 + 16);
  v18 = v33;
  v19 = v37;
  v17(v33, v38, v37);
  sub_100D6C630(v12, v10, type metadata accessor for SharingCircleSecretValue);
  v20 = v39;
  *v39 = xmmword_10138C660;
  v21 = type metadata accessor for SharingCircleSecret(0);
  v17(&v20[v21[5]], v6, v19);
  v17(&v20[v21[6]], v18, v19);
  v22 = sub_101315BA4();
  v23 = &v20[v21[8]];
  *v23 = v22;
  v23[1] = v24;
  v38 = sub_101315964();
  v26 = v25;
  sub_100D6C698(v10, type metadata accessor for SharingCircleSecretValue);
  v27 = *(v31 + 8);
  v27(v18, v19);
  v27(v6, v19);
  sub_100D6C698(v32, type metadata accessor for SharingCircleSecretValue);
  result = (*(v36 + 8))(v34, v35);
  v29 = &v20[v21[7]];
  *v29 = v38;
  v29[1] = v26;
  return result;
}

uint64_t sub_100D6B014@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, char *a3@<X8>)
{
  v33 = a1;
  v38 = a3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (v31 - v9);
  v11 = type metadata accessor for SharingCircleSecretValue(0);
  v12 = __chkstk_darwin(v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (v31 - v15);
  result = sub_100A7F75C(v35);
  if (!v3)
  {
    v37 = v36;
    *v16 = v36;
    v31[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_10012C038(&v37, v34);
    UUID.init()();
    v18 = v38;
    v19 = *(v5 + 16);
    v32 = v8;
    v19(v8, v33, v4);
    v33 = type metadata accessor for SharingCircleSecretValue;
    sub_100D6C630(v16, v14, type metadata accessor for SharingCircleSecretValue);
    *v18 = xmmword_10138C660;
    v20 = type metadata accessor for SharingCircleSecret(0);
    v19(&v18[v20[5]], v10, v4);
    v19(&v18[v20[6]], v32, v4);
    v21 = sub_101315BA4();
    v22 = &v18[v20[8]];
    *v22 = v21;
    v22[1] = v23;
    v24 = sub_101315964();
    v31[0] = v25;
    sub_100A80F28(v35);
    v26 = v14;
    v27 = v33;
    sub_100D6C698(v26, v33);
    v28 = *(v5 + 8);
    v28(v32, v4);
    v28(v10, v4);
    result = sub_100D6C698(v16, v27);
    v29 = v31[0];
    v30 = &v18[v20[7]];
    *v30 = v24;
    v30[1] = v29;
  }

  return result;
}

unint64_t sub_100D6B2CC()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000017;
  v4 = 0x7954746572636573;
  if (v1 != 3)
  {
    v4 = 0x6144746572636573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_100D6B384@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100D6C970(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100D6B3AC(uint64_t a1)
{
  v2 = sub_100D6C504();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D6B3E8(uint64_t a1)
{
  v2 = sub_100D6C504();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100D6B428(uint64_t a1)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_100D6CB3C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100D6B520(uint64_t a1, uint64_t a2)
{
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_100D6CB3C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int sub_100D6B608(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_100D6CB3C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100D6B6FC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177C090);
  sub_1000076D4(v0, qword_10177C090);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100D6B858(id *a1)
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
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Updating SharingCircleSecret record: %@", 39, 2, v6);

  v12 = type metadata accessor for SharingCircleSecret(0);
  UUID.uuidString.getter();
  CKRecordKeyValueSetting.subscript.setter();
  sub_100017D5C(*(v2 + *(v12 + 32)), *(v2 + *(v12 + 32) + 8));
  CKRecordKeyValueSetting.subscript.setter();

  CKRecordKeyValueSetting.subscript.setter();

  return swift_unknownObjectRelease();
}

uint64_t sub_100D6BAA4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BB340, &qword_1013E81B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100D6C504();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v15 = *v3;
  v16 = v9;
  v17 = 0;
  sub_100017D5C(v15, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_100016590(v15, v16);
    v14 = type metadata accessor for SharingCircleSecret(0);
    LOBYTE(v15) = 1;
    type metadata accessor for UUID();
    sub_100D6CB3C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = (v3 + *(v14 + 32));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v17 = 4;
    sub_100017D5C(v15, v12);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  sub_100016590(v15, v16);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100D6BD5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  v5 = __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = sub_1000BC4D4(&qword_1016BB330, &qword_1013E81B0);
  v37 = *(v10 - 8);
  v38 = v10;
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for SharingCircleSecret(0);
  __chkstk_darwin(v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100D6C504();
  v39 = v12;
  v16 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100007BAC(a1);
  }

  v17 = v9;
  v40 = v7;
  v42 = 0;
  v18 = sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33 = v18;
  *v15 = v41;
  LOBYTE(v41) = 1;
  sub_100D6CB3C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v19 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v13;
  v20 = v19;
  v21 = &v15[*(v13 + 20)];
  v30 = *(v36 + 32);
  v30(v21, v17, v19);
  LOBYTE(v41) = 2;
  v22 = v40;
  v31 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v32;
  v30(&v15[*(v32 + 24)], v22, v20);
  LOBYTE(v41) = 3;
  v24 = v38;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = &v15[*(v23 + 28)];
  *v26 = v25;
  v26[1] = v27;
  v42 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v37 + 8))(v39, v24);
  *&v15[*(v23 + 32)] = v41;
  sub_100D6C630(v15, v34, type metadata accessor for SharingCircleSecret);
  sub_100007BAC(a1);
  return sub_100D6C698(v15, type metadata accessor for SharingCircleSecret);
}

uint64_t sub_100D6C2B4()
{
  if (qword_101694E90 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  sub_1000076D4(v0, qword_10177C090);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_100D6C388(uint64_t a1)
{
  *(a1 + 8) = sub_100D6CB3C(&unk_1016BB310, type metadata accessor for SharingCircleSecret, &unk_1013E8128);
  result = sub_100D6CB3C(&qword_1016B1648, type metadata accessor for SharingCircleSecret, &unk_1013E8100);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for SharingCircleSecret(uint64_t a1)
{
  result = qword_1016BB3A0;
  if (!qword_1016BB3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D6C458(uint64_t a1)
{
  result = sub_100D6CB3C(&qword_1016B1640, type metadata accessor for SharingCircleSecret, &unk_1013E8150);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100D6C4B0()
{
  result = qword_1016BB320;
  if (!qword_1016BB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB320);
  }

  return result;
}

unint64_t sub_100D6C504()
{
  result = qword_1016BB338;
  if (!qword_1016BB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB338);
  }

  return result;
}

BOOL sub_100D6C558(uint64_t a1, uint64_t a2)
{
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = type metadata accessor for SharingCircleSecret(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 32);
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *v13;
  v15 = v13[1];

  return _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v12, v14, v15);
}

uint64_t sub_100D6C630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D6C698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100D6C740(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100D6C814()
{
  result = qword_1016BB3F0;
  if (!qword_1016BB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB3F0);
  }

  return result;
}

unint64_t sub_100D6C86C()
{
  result = qword_1016BB3F8;
  if (!qword_1016BB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB3F8);
  }

  return result;
}

unint64_t sub_100D6C8C4()
{
  result = qword_1016BB400;
  if (!qword_1016BB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB400);
  }

  return result;
}

unint64_t sub_100D6C91C()
{
  result = qword_1016BB408[0];
  if (!qword_1016BB408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016BB408);
  }

  return result;
}

uint64_t sub_100D6C970(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001013512F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954746572636573 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6144746572636573 && a2 == 0xEA00000000006174)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100D6CB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100D6CBE8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);

    v1(v3);
    sub_1000BB27C(v1, v2);
  }

  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B368);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "All location fetch subscriptions terminated.", v6, 2u);
  }
}

void sub_100D6CD54(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  XPCSession.identifier.getter();
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  swift_beginAccess();
  swift_getTupleTypeMetadata2();
  sub_1000096E8(&qword_1016967B0, &protocol conformance descriptor for UUID);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B368);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v16[0] = v15;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    XPCSession.identifier.getter();
    sub_1000096E8(&qword_101696930, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v2;
    v13 = v12;

    (*(v4 + 8))(v6, v3);
    v14 = sub_1000136BC(v11, v13, v16);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Removed location fetch subscription %{private,mask.hash}s.", v10, 0x16u);
    sub_100007BAC(v15);
  }

  else
  {
  }
}

uint64_t sub_100D6D090()
{
  sub_1000BB27C(*(v0 + 40), *(v0 + 48));
}

uint64_t sub_100D6D0D8()
{
  v0 = sub_1010D71A8();
  sub_1000BB27C(*(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t sub_100D6D12C()
{
  sub_100D6D0D8();

  return swift_deallocClassInstance();
}

uint64_t sub_100D6D190(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697250, &unk_10138BDB0);
  v2[24] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0);
  v2[25] = swift_task_alloc();
  v7 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697260, &unk_10138BDC0);
  v2[29] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  v2[30] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock.Instant();
  v2[31] = v8;
  v2[32] = *(v8 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[37] = v9;
  v2[38] = *(v9 - 8);
  v2[39] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v2[40] = v10;
  v2[41] = *(v10 - 8);
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_100D6D62C, 0, 0);
}