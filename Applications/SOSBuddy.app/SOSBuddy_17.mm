void *sub_100180424@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10018A674(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10018046C(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1001804AC()
{
  swift_allocObject();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_100180508()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_10018053C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 88))();
  *a1 = result;
  return result;
}

uint64_t sub_100180580@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  *a1 = result;
  return result;
}

uint64_t sub_1001805B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_10018060C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100180660()
{
  v0 = sub_1000040A8(&qword_100362950, &qword_10028AB98);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  sub_1000885F4(v3, qword_100381F20);
  v4 = sub_10000F53C(v3, qword_100381F20);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100180790()
{
  v0 = sub_1000040A8(&qword_100362950, &qword_10028AB98);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  sub_1000885F4(v3, qword_100381F38);
  v4 = sub_10000F53C(v3, qword_100381F38);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001808C0()
{
  v0 = sub_1000040A8(&qword_100362950, &qword_10028AB98);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  sub_1000885F4(v3, qword_100381F50);
  v4 = sub_10000F53C(v3, qword_100381F50);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001809F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000088DC(a1, a1[3]);
  v4 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_100353AF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = sub_10000F53C(v5, qword_100381F38);
  if (*(v4 + 16) && (v7 = sub_100186BBC(v6), (v8 & 1) != 0))
  {
    sub_100048F80(*(v4 + 56) + 32 * v7, &v13);

    sub_1000040A8(&qword_100362948, &qword_10028AB90);
    if (swift_dynamicCast())
    {
      if (*(&v15 + 1))
      {
        return sub_100008A18(&v14, a2);
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {

    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_100008FA0(&v14, &qword_100362940, &qword_10028AB88);
  v10 = type metadata accessor for DecodingError();
  swift_allocError();
  v12 = v11;
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v10 - 8) + 104))(v12, enum case for DecodingError.dataCorrupted(_:), v10);
  return swift_willThrow();
}

uint64_t sub_100180C04(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = HIBYTE(a2) & 0xF;
  v31 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = *(v2 + 24);
    v30 = *(v5 + 16);
    if (v30)
    {

      v6 = 0;
      v7 = v5 + 40;
      v29 = v5;
      while (1)
      {

        if (v6 >= *(v5 + 16))
        {
          break;
        }

        v11 = *(v2 + 16);

        v12 = v2;
        v13 = v3;
        v14 = String._bridgeToObjectiveC()();
        v15 = String._bridgeToObjectiveC()();
        v16 = String._bridgeToObjectiveC()();

        v17 = [v11 localizedStringForKey:v14 value:v15 table:v16];

        v3 = v13;
        v2 = v12;
        v5 = v29;

        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v9 = 0xD000000000000024;
        if (v10 == 0xD000000000000024 && 0x80000001002A1690 == v19 || (v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), v9 = v10, (v8 & 1) != 0))
        {
          ++v6;
          v7 += 16;
          v10 = v9;
          if (v30 != v6)
          {
            continue;
          }
        }

        if ((v10 != 0xD000000000000024 || 0x80000001002A1690 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return v10;
        }

        if (qword_100353AA8 == -1)
        {
LABEL_16:
          v20 = type metadata accessor for Logger();
          sub_10000F53C(v20, qword_100381E48);

          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v21, v22))
          {
            goto LABEL_23;
          }

          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v32 = v24;
          *v23 = 136315138;
          *(v23 + 4) = sub_10017C9E8(v31, v3, &v32);
          _os_log_impl(&_mh_execute_header, v21, v22, "No translation for '%s'", v23, 0xCu);
          sub_100008964(v24);

LABEL_22:

          goto LABEL_23;
        }

LABEL_28:
        swift_once();
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_28;
    }

    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000F53C(v25, qword_100381E48);
    v21 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v21, v26, "No tableNames provided", v27, 2u);
      goto LABEL_22;
    }

LABEL_23:
  }

  return v31;
}

uint64_t sub_100180FCC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100181030(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 == 0x636E656772656D65 && a2 == 0xE900000000000079)
  {
    goto LABEL_12;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return v3;
  }

  v3 = 1;
  if (a1 == 0x6564697364616F72 && a2 == 0xE800000000000000)
  {
LABEL_12:

    return v3;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    return 2;
  }

  return v3;
}

uint64_t sub_100181138(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 == 1852138867 && a2 == 0xE400000000000000)
  {
    goto LABEL_3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return v3;
  }

  v3 = 1;
  if (a1 == 0x6465726577736E61 && a2 == 0xE800000000000000)
  {
    goto LABEL_3;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return v3;
  }

  v3 = 2;
  if (a1 == 0x64657070696B73 && a2 == 0xE700000000000000)
  {
LABEL_3:
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

  return v3;
}

uint64_t sub_100181310(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = *(&off_1003220F0 + v4 + 32);
    if (*(&off_1003220F0 + v4 + 32) <= 4u)
    {
      v6 = 0xD000000000000025;
      if (v5 != 3)
      {
        v6 = 0xD000000000000026;
      }

      v7 = "asInvokedFromEmergency";
      if (v5 != 3)
      {
        v7 = "WasInvokedFromRoadside";
      }

      if (v5 == 2)
      {
        v6 = 0xD000000000000018;
        v7 = "emporarilyUnavailable";
      }

      v11 = "ContactsAvailable";
      v8 = 0xD000000000000019;
      if (*(&off_1003220F0 + v4 + 32))
      {
        v8 = 0xD000000000000021;
        v11 = "builtinRoadsideAvailable";
      }

      v12 = *(&off_1003220F0 + v4 + 32) <= 1u;
    }

    else
    {
      if (v5 == 9)
      {
        v6 = 0xD000000000000022;
      }

      else
      {
        v6 = 0xD000000000000021;
      }

      v7 = "artedFromExplorer";
      if (v5 != 9)
      {
        v7 = "ot have revison set.";
      }

      if (v5 == 8)
      {
        v6 = 0xD00000000000001BLL;
        v7 = "honeNumberSelected";
      }

      v8 = 0xD000000000000026;
      v9 = 0xD000000000000029;
      if (v5 == 6)
      {
        v9 = 0xD000000000000021;
        v10 = "roviderSelectionAvailable";
      }

      else
      {
        v10 = "builtinPhoneNumberAvailable";
      }

      if (v5 == 5)
      {
        v11 = "onversationActive";
      }

      else
      {
        v8 = v9;
        v11 = v10;
      }

      v12 = *(&off_1003220F0 + v4 + 32) <= 7u;
    }

    v13 = v12 ? v8 : v6;
    v14 = v12 ? v11 : v7;
    if (v13 == a1 && (v14 | 0x8000000000000000) == a2)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      return v5;
    }

    if (++v4 == 11)
    {
      return 11;
    }
  }

  return v5;
}

uint64_t sub_100181510(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 == 6581857 && a2 == 0xE300000000000000)
  {
    goto LABEL_3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return v3;
  }

  v3 = 1;
  if (a1 == 29295 && a2 == 0xE200000000000000)
  {
    goto LABEL_3;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return v3;
  }

  v3 = 2;
  if (a1 == 7630702 && a2 == 0xE300000000000000)
  {
LABEL_3:
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

  return v3;
}

uint64_t sub_1001816C0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 == 0x6843656C676E6953 && a2 == 0xEC0000006563696FLL)
  {
    goto LABEL_3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return v3;
  }

  v3 = 1;
  if (a1 == 0x656C7069746C754DLL && a2 == 0xEE006563696F6843)
  {
    goto LABEL_3;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return v3;
  }

  v3 = 2;
  if (a1 == 0x6D726F4665657246 && a2 == 0xE800000000000000)
  {
    goto LABEL_3;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    return v3;
  }

  v3 = 3;
  if (a1 == 0x6E49746C697542 && a2 == 0xE700000000000000)
  {
LABEL_3:
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  return v3;
}

uint64_t sub_100181A08(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = *(&off_100321FD8 + v4++ + 32);
    v6 = 0xD000000000000017;
    v7 = 0xD000000000000018;
    if (v5 != 6)
    {
      v7 = 0xD000000000000010;
    }

    v8 = "SummaryCountdown";
    if (v5 != 6)
    {
      v8 = "n: string expected: ";
    }

    v9 = 0xD000000000000016;
    v10 = 0xD000000000000019;
    if (v5 == 4)
    {
      v10 = 0xD000000000000016;
    }

    v11 = "SelectRoadsidePhoneNumber";
    if (v5 != 4)
    {
      v11 = "EnterRoadsidePhoneNumber";
    }

    if (v5 <= 5)
    {
      v7 = v10;
      v8 = v11;
    }

    if (v5 == 2)
    {
      v12 = "SwitchToEmergency";
    }

    else
    {
      v9 = 0xD000000000000011;
      v12 = "SelectRoadsideProvider";
    }

    if (v5)
    {
      v6 = 0xD000000000000010;
    }

    v13 = "NotifyAndSendTranscript";
    if (v5)
    {
      v13 = "SwitchToRoadsideFailed";
    }

    if (v5 <= 1)
    {
      v14 = v13;
    }

    else
    {
      v6 = v9;
      v14 = v12;
    }

    v15 = v5 <= 3 ? v6 : v7;
    v16 = v5 <= 3 ? v14 : v8;
    if (v15 == a1 && (v16 | 0x8000000000000000) == a2)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      return v5;
    }

    if (v4 == 8)
    {
      return 8;
    }
  }

  return v5;
}

uint64_t sub_100181BA4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 == 0x636E656772656D45 && a2 == 0xED00006570795479)
  {
    goto LABEL_12;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return v3;
  }

  v3 = 1;
  if (a1 == 0xD000000000000016 && 0x80000001002A15B0 == a2)
  {
LABEL_12:

    return v3;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    return 2;
  }

  return v3;
}

uint64_t sub_100181CBC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 == 0x6F697463656C6553 && a2 == 0xE90000000000006ELL)
  {
    goto LABEL_12;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return v3;
  }

  v3 = 1;
  if (a1 == 1954047316 && a2 == 0xE400000000000000)
  {
LABEL_12:

    return v3;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    return 2;
  }

  return v3;
}

uint64_t sub_100181DBC(uint64_t a1, void *a2)
{
  result = sub_100181510(a1, a2);
  if (result == 3)
  {
    v5 = result;
    v6 = type metadata accessor for DecodingError();
    swift_allocError();
    v8 = v7;
    _StringGuts.grow(_:)(24);

    v9._countAndFlagsBits = a1;
    v9._object = a2;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 11815;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.dataCorrupted(_:), v6);
    swift_willThrow();
    return v5;
  }

  return result;
}

uint64_t sub_100181EFC(uint64_t a1, void *a2)
{
  result = sub_1001816C0(a1, a2);
  if (result == 4)
  {
    v5 = result;
    v6 = type metadata accessor for DecodingError();
    swift_allocError();
    v8 = v7;
    _StringGuts.grow(_:)(24);

    v9._countAndFlagsBits = a1;
    v9._object = a2;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 11815;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.dataCorrupted(_:), v6);
    swift_willThrow();
    return v5;
  }

  return result;
}

uint64_t sub_10018203C(uint64_t a1, void *a2)
{
  result = 0x726F7461646E614DLL;
  if (a1 != 0x726F7461646E614DLL || a2 != 0xE900000000000079)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      _StringGuts.grow(_:)(24);

      v9._countAndFlagsBits = a1;
      v9._object = a2;
      String.append(_:)(v9);
      v10._countAndFlagsBits = 11815;
      v10._object = 0xE200000000000000;
      String.append(_:)(v10);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.dataCorrupted(_:), v6);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10018219C(uint64_t a1, void *a2)
{
  result = sub_100181A08(a1, a2);
  if (result == 8)
  {
    v5 = result;
    v6 = type metadata accessor for DecodingError();
    swift_allocError();
    v8 = v7;
    _StringGuts.grow(_:)(24);

    v9._countAndFlagsBits = a1;
    v9._object = a2;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 11815;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.dataCorrupted(_:), v6);
    swift_willThrow();
    return v5;
  }

  return result;
}

uint64_t sub_1001822DC(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v5 = a3();
  if (v5 != 2)
  {
    return v5 & 1;
  }

  v6 = type metadata accessor for DecodingError();
  swift_allocError();
  v8 = v7;
  _StringGuts.grow(_:)(24);

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 11815;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.dataCorrupted(_:), v6);
  return swift_willThrow();
}

uint64_t sub_100182418@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10018AF94(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_10018246C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v11[1] = a3;
  v6 = sub_1000040A8(&qword_1003628A8, &qword_10028AB48);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnairePresentationBuddyAutoSendPolicy.Key();
  sub_1001910F4(&qword_1003628A0, type metadata accessor for QuestionnairePresentationBuddyAutoSendPolicy.Key, &unk_10028AAA0);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  inited = swift_initStaticObject();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    inited = swift_initStaticObject();
    KeyedEncodingContainer.encode(_:forKey:)();
    inited = swift_initStaticObject();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100182668@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10018B230(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

void sub_1001826B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    if (*(*(*(v5 + 56) + 72 * (v12 | (v10 << 6)) + 64) + 16))
    {

      sub_100186A08(a1, a2);
      if (v13)
      {

        return;
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100182810(void *a1)
{
  v3 = v1;
  v5 = sub_1000040A8(&qword_1003628E0, &qword_10028AB60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnairePresentationBuddy.Key();
  sub_1001910F4(&qword_1003628B8, type metadata accessor for QuestionnairePresentationBuddy.Key, &unk_10028AAA0);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v12 = swift_initStaticObject();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    *&v12 = *(v3 + 8);
    inited = swift_initStaticObject();
    sub_1000040A8(&qword_1003628C0, &qword_10028AB58);
    sub_10018B860(&qword_1003628E8, sub_10018B8E4, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if ((*(v3 + 40) & 1) == 0)
    {
      v12 = *(v3 + 16);
      v13 = *(v3 + 32);
      inited = swift_initStaticObject();
      sub_10018B938(inited, v9, v10);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_100182A94@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10018B464(a2, &v6);
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

uint64_t sub_100182B14(void *a1)
{
  v3 = v1;
  v5 = sub_1000040A8(&qword_100362958, &qword_10028ABA0);
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionPresentationBuddy.Key();
  sub_1001910F4(&qword_100362908, type metadata accessor for QuestionPresentationBuddy.Key, &unk_10028AAA0);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = *v3;
  v9 = v3[1];
  v11 = v3[2];
  v10 = v3[3];
  v12 = v3[4];
  v19 = v3[5];
  v20 = v12;
  v13 = v3[7];
  v17 = v3[6];
  v18 = v13;
  v14 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v14 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (v23 = swift_initStaticObject(), KeyedEncodingContainer.encode(_:forKey:)(), !v2))
  {
    v15 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v15 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 || (v23 = swift_initStaticObject(), KeyedEncodingContainer.encode(_:forKey:)(), !v2))
    {
      if (!*(v20 + 16) || (v23 = v20, inited = swift_initStaticObject(), sub_1000040A8(&qword_10035AB90, &qword_10028AB80), sub_10018C2B0(), KeyedEncodingContainer.encode<A>(_:forKey:)(), !v2))
      {
        v23 = v3[8];
        inited = swift_initStaticObject();
        sub_1000040A8(&qword_100362910, &unk_10028AB70);
        sub_10018C388();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        if (!v2)
        {
          if (v19)
          {
            v23 = v19;
            inited = swift_initStaticObject();
            sub_1000040A8(&qword_100355E30, &unk_10027A120);
            sub_10018C468(&qword_100362980, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
            KeyedEncodingContainer.encode<A>(_:forKey:)();
          }

          if (v18)
          {
            v23 = swift_initStaticObject();
            KeyedEncodingContainer.encode(_:forKey:)();
          }
        }
      }
    }
  }

  return (*(v21 + 8))(v7, v5);
}

__n128 sub_100182EB4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10018B98C(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_100182F44(void *a1, void *a2)
{
  v4 = sub_1000040A8(&qword_100362998, &qword_10028ABB0);
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v34 = &v33 - v7;
  __chkstk_darwin(v8);
  v35 = &v33 - v9;
  __chkstk_darwin(v10);
  v36 = &v33 - v11;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for OptionPresentationBuddy.Key();
  sub_1001910F4(&qword_100362990, type metadata accessor for OptionPresentationBuddy.Key, &unk_10028AAA0);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2[3];
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = a2[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    inited = swift_initStaticObject();
    v20 = v38;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v20;
    if (v20)
    {
      return (*(v37 + 8))(v17, v4);
    }
  }

  else
  {
    v21 = v38;
  }

  if (a2[5])
  {
    v38 = v21;
    inited = swift_initStaticObject();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    inited = swift_initStaticObject();
    v23 = v36;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    inited = swift_initStaticObject();
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v37 + 8);
    v24(v23, v4);
    v24(v14, v4);
    return (v24)(v17, v4);
  }

  else
  {
    if (!a2[7])
    {
      return (*(v37 + 8))(v17, v4);
    }

    v38 = v21;
    v36 = a2[6];
    inited = swift_initStaticObject();
    v25 = v4;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    inited = swift_initStaticObject();
    v26 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    inited = swift_initStaticObject();
    v27 = v38;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v27)
    {
      v28 = v25;
      v29 = *(v37 + 8);
      v29(v26, v28);
      v29(v35, v28);
      return (v29)(v17, v28);
    }

    else
    {
      v38 = v17;
      inited = swift_initStaticObject();
      v30 = v33;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      Color.description.getter();
      v31 = v25;
      inited = swift_initStaticObject();
      KeyedEncodingContainer.encode(_:forKey:)();

      v32 = *(v37 + 8);
      v32(v30, v31);
      v32(v26, v31);
      v32(v35, v31);
      return (v32)(v38, v31);
    }
  }
}

void (*sub_100183488@<X0>(void (**a1)(char *, uint64_t)@<X8>, void *a2@<X0>))(char *, uint64_t)
{
  result = sub_10018C4D4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001834D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018F7C0(a1, sub_100181030);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100183514(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100008964(v2);
}

uint64_t sub_100183614(void *a1)
{
  v3 = v1;
  v5 = sub_1000040A8(&qword_1003629D0, &qword_10028ABC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000088DC(a1, a1[3]);
  _s3KeyCMa();
  sub_1001910F4(&qword_1003629A8, _s3KeyCMa, &unk_10028AAA0);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  inited = swift_initStaticObject();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = *(v3 + 32);
    inited = swift_initStaticObject();
    sub_10018D378(inited, v9, v10);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    inited = swift_initStaticObject();
    KeyedEncodingContainer.encode(_:forKey:)();
    inited = *(v3 + 96);
    v13 = swift_initStaticObject();
    sub_1000040A8(&qword_1003629B8, &qword_10028ABC0);
    sub_10018D3CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10018388C(uint64_t a1@<X8>)
{
  v2 = v1[12];
  if (v2 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v42 = v2 & 0xFFFFFFFFFFFFFF8;
    v43 = v2 & 0xC000000000000001;
    v41 = v2 + 32;
    v5 = _swiftEmptyDictionarySingleton;
    v38 = i;
    while (1)
    {
      v45 = v5;
      if (!v43)
      {
        break;
      }

      v33 = v4;
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = __OFADD__(v33, 1);
      v13 = v33 + 1;
      if (v12)
      {
        goto LABEL_40;
      }

LABEL_9:
      v44 = v13;
      v14 = *(v46 + 40);
      if (!(v14 >> 62))
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_11;
        }

        goto LABEL_4;
      }

      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (v15)
      {
LABEL_11:
        v16 = 0;
        v48 = v14 & 0xFFFFFFFFFFFFFF8;
        v49 = v14 & 0xC000000000000001;
        v1 = _swiftEmptyDictionarySingleton;
        v47 = v14;
        while (1)
        {
          if (v49)
          {
            v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (v16 >= *(v48 + 16))
            {
              goto LABEL_37;
            }

            v2 = *(v14 + 8 * v16 + 32);

            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          v50 = v17;
          v19 = *(v2 + 16);
          v18 = *(v2 + 24);
          v20 = *(v2 + 32);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v52[0] = v1;
          v23 = sub_100186A08(v19, v18);
          v24 = v1[2];
          v25 = (v22 & 1) == 0;
          v26 = v24 + v25;
          if (__OFADD__(v24, v25))
          {
            goto LABEL_38;
          }

          v27 = v22;
          if (v1[3] >= v26)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v22)
              {
                goto LABEL_12;
              }
            }

            else
            {
              sub_1000920DC();
              if (v27)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
            sub_10008FFCC(v26, isUniquelyReferenced_nonNull_native);
            v28 = sub_100186A08(v19, v18);
            if ((v27 & 1) != (v29 & 1))
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v23 = v28;
            if (v27)
            {
LABEL_12:

              v1 = *&v52[0];
              *(*(*&v52[0] + 56) + 8 * v23) = v20;

              goto LABEL_13;
            }
          }

          v1 = *&v52[0];
          *(*&v52[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
          v30 = (v1[6] + 16 * v23);
          *v30 = v19;
          v30[1] = v18;
          *(v1[7] + 8 * v23) = v20;

          v31 = v1[2];
          v12 = __OFADD__(v31, 1);
          v32 = v31 + 1;
          if (v12)
          {
            goto LABEL_39;
          }

          v1[2] = v32;
LABEL_13:
          ++v16;
          v14 = v47;
          if (v50 == v15)
          {
            goto LABEL_5;
          }
        }
      }

LABEL_4:
      v1 = _swiftEmptyDictionarySingleton;
LABEL_5:
      v6 = *(v46 + 16);
      v7 = *(v46 + 24);
      v8 = *(v46 + 88);
      v52[0] = *(v46 + 72);
      v52[1] = v8;
      v9 = *(v46 + 120);
      v53 = *(v46 + 104);
      v54 = v9;
      v55[2] = v53;
      v55[3] = v9;
      v55[0] = v52[0];
      v55[1] = v8;
      v56 = v1;

      sub_1000B4E30(v52, &v51);
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v51 = v45;
      sub_100189770(v55, v6, v7, v10);

      v5 = v51;
      v2 = v39;
      v4 = v44;
      v1 = v40;
      if (v44 == v38)
      {
        goto LABEL_44;
      }
    }

    if (v4 >= *(v42 + 16))
    {
      goto LABEL_41;
    }

    v11 = v4;
    v46 = *(v41 + 8 * v4);

    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v5 = _swiftEmptyDictionarySingleton;
LABEL_44:
  v34 = *(v1 + 80);
  if (v34)
  {
    v35 = 0;
    v36 = 0uLL;
  }

  else
  {
    v35 = v1[9];
    v36 = *(v1 + 7);
  }

  *a1 = v1[11];
  *(a1 + 8) = v5;
  *(a1 + 16) = v36;
  *(a1 + 32) = v35;
  *(a1 + 40) = v34;
}

uint64_t sub_100183C64@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10018CD44(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100183CD8(void *a1)
{
  v3 = v1;
  v5 = sub_1000040A8(&qword_100362A48, &qword_10028ABF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000088DC(a1, a1[3]);
  _s3KeyCMa_0();
  sub_1001910F4(&qword_1003629F8, _s3KeyCMa_0, &unk_10028AAA0);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  inited = swift_initStaticObject();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = *(v3 + 32);
    inited = swift_initStaticObject();
    sub_10018F358(inited, v9, v10);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (*(*(v3 + 56) + 16))
    {
      inited = *(v3 + 56);
      v14 = swift_initStaticObject();
      sub_1000040A8(&qword_10035AA88, qword_10027EB60);
      sub_10018F3AC();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    inited = *(v3 + 40);
    v14 = swift_initStaticObject();
    sub_1000040A8(&qword_100362A08, &unk_10028ABD8);
    sub_10018F484();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 48);
    type metadata accessor for NoPrerequisites();
    if (!swift_dynamicCastClass())
    {
      inited = v12;
      v14 = swift_initStaticObject();
      type metadata accessor for Condition();
      sub_1001910F4(&qword_100362A78, type metadata accessor for Condition, &unk_10028A558);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    if (*(v3 + 64) != 8)
    {
      LOBYTE(v14) = *(v3 + 64);
      inited = swift_initStaticObject();
      sub_1000040A8(&qword_100362A80, &qword_10028ABF8);
      sub_10018F538();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10018408C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10018E644(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001840DC(void *a1, unsigned __int8 a2)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100008964(v3);
}

void *sub_10018420C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018F6D0(a1, sub_100181EFC);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100184280(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100008964(v2);
}

uint64_t sub_10018431C(void *a1, unsigned __int8 a2)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100008964(v3);
}

void *sub_100184490@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018F6D0(a1, sub_10018219C);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001844EC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018F7C0(a1, sub_100181BA4);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100184530(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100008964(v2);
}

uint64_t sub_10018463C(void *a1, char a2)
{
  v4 = sub_1000040A8(&qword_100362AB0, &qword_10028AC08);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_1000088DC(a1, a1[3]);
  _s3KeyCMa_1();
  sub_1001910F4(&qword_100362AA0, _s3KeyCMa_1, &unk_10028AAA0);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  inited = swift_initStaticObject();
  sub_10018FACC(inited, v8, v9);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1001847DC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10018F8B0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100184848(void *a1)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_100362AD8, &qword_10028AC18);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v17 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  sub_1000088DC(a1, a1[3]);
  _s3KeyCMa_2();
  sub_1001910F4(&qword_100362AC8, _s3KeyCMa_2, &unk_10028AAA0);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  inited = swift_initStaticObject();
  v10 = v18;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v10)
  {
    return (*(v5 + 8))(v9, v4);
  }

  v11 = v17;
  if ((*(v2 + 40) & 1) == 0)
  {
    return (*(v5 + 8))(v9, v4);
  }

  inited = swift_initStaticObject();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v19 = 1;
  inited = swift_initStaticObject();
  sub_1001901B4(inited, v12, v13);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  inited = swift_initStaticObject();
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = *(v5 + 8);
  v14(v11, v4);
  return (v14)(v9, v4);
}

uint64_t sub_100184B00@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10018FB20(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100184B50@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018F7C0(a1, sub_100181CBC);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100184B94(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100008964(v2);
}

char *sub_100184C8C()
{
  result = sub_100187254(0, 3, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    result = sub_100187254((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = &_swiftEmptyArrayStorage[2 * v2];
  v4[4] = 6581857;
  v4[5] = 0xE300000000000000;
  v5 = _swiftEmptyArrayStorage[3];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    result = sub_100187254((v5 > 1), v6, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  v7 = &_swiftEmptyArrayStorage[2 * v3];
  v7[4] = 29295;
  v7[5] = 0xE200000000000000;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  if (v9 >= v8 >> 1)
  {
    result = sub_100187254((v8 > 1), v9 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v9 + 1;
  v10 = &_swiftEmptyArrayStorage[2 * v9];
  v10[4] = 7630702;
  v10[5] = 0xE300000000000000;
  qword_100361D38 = _swiftEmptyArrayStorage;
  return result;
}

char *sub_100184E5C()
{
  result = sub_100187254(0, 3, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    result = sub_100187254((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = &_swiftEmptyArrayStorage[2 * v2];
  v4[4] = 1852138867;
  v4[5] = 0xE400000000000000;
  v5 = _swiftEmptyArrayStorage[3];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    result = sub_100187254((v5 > 1), v6, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  v7 = &_swiftEmptyArrayStorage[2 * v3];
  v7[4] = 0x6465726577736E61;
  v7[5] = 0xE800000000000000;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  if (v9 >= v8 >> 1)
  {
    result = sub_100187254((v8 > 1), v9 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v9 + 1;
  v10 = &_swiftEmptyArrayStorage[2 * v9];
  v10[4] = 0x64657070696B73;
  v10[5] = 0xE700000000000000;
  qword_100361D40 = _swiftEmptyArrayStorage;
  return result;
}

char *sub_100185068()
{
  result = sub_100187254(0, 1, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  if (v2 >= v1 >> 1)
  {
    result = sub_100187254((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 1;
  v3 = &_swiftEmptyArrayStorage[2 * v2];
  v3[4] = 0x64657463656C6573;
  v3[5] = 0xE800000000000000;
  qword_100361D48 = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_100185110()
{
  sub_100187254(0, 11, 0);
  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  v2 = 0xD000000000000019;
  v3 = "ContactsAvailable";
  v4 = "emporarilyUnavailable";
  result = 0xD000000000000018;
  v6 = "asInvokedFromEmergency";
  v7 = "WasInvokedFromRoadside";
  v8 = "builtinRoadsideAvailable";
  v9 = "honeNumberSelected";
  v10 = 0xD00000000000001BLL;
  v11 = "artedFromExplorer";
  v12 = "ot have revison set.";
  do
  {
    v13 = *(&off_1003220F0 + v0 + 32);
    if (v13 <= 4)
    {
      v14 = 0xD000000000000025;
      if (v13 == 3)
      {
        v15 = v6;
      }

      else
      {
        v14 = 0xD000000000000026;
        v15 = v7;
      }

      if (v13 == 2)
      {
        v14 = result;
        v15 = v4;
      }

      if (*(&off_1003220F0 + v0 + 32))
      {
        v16 = 0xD000000000000021;
      }

      else
      {
        v16 = v2;
      }

      if (*(&off_1003220F0 + v0 + 32))
      {
        v19 = v8;
      }

      else
      {
        v19 = v3;
      }

      v20 = *(&off_1003220F0 + v0 + 32) <= 1u;
    }

    else
    {
      if (v13 == 9)
      {
        v14 = 0xD000000000000022;
      }

      else
      {
        v14 = 0xD000000000000021;
      }

      if (v13 == 9)
      {
        v15 = v11;
      }

      else
      {
        v15 = v12;
      }

      if (v13 == 8)
      {
        v14 = v10;
        v15 = v9;
      }

      v16 = 0xD000000000000026;
      v17 = 0xD000000000000029;
      if (v13 == 6)
      {
        v17 = 0xD000000000000021;
        v18 = "roviderSelectionAvailable";
      }

      else
      {
        v18 = "builtinPhoneNumberAvailable";
      }

      if (v13 == 5)
      {
        v19 = "onversationActive";
      }

      else
      {
        v16 = v17;
        v19 = v18;
      }

      v20 = *(&off_1003220F0 + v0 + 32) <= 7u;
    }

    if (v20)
    {
      v21 = v16;
    }

    else
    {
      v21 = v14;
    }

    if (v20)
    {
      v22 = v19;
    }

    else
    {
      v22 = v15;
    }

    v37 = v1;
    v24 = v1[2];
    v23 = v1[3];
    if (v24 >= v23 >> 1)
    {
      v32 = v6;
      v33 = result;
      v30 = v8;
      v31 = v7;
      v35 = v3;
      v36 = v2;
      v34 = v4;
      v28 = v10;
      v29 = v9;
      v26 = v12;
      v27 = v11;
      sub_100187254((v23 > 1), v24 + 1, 1);
      v12 = v26;
      v11 = v27;
      v10 = v28;
      v9 = v29;
      v8 = v30;
      v7 = v31;
      v6 = v32;
      result = v33;
      v4 = v34;
      v3 = v35;
      v2 = v36;
      v1 = v37;
    }

    ++v0;
    v1[2] = v24 + 1;
    v25 = &v1[2 * v24];
    v25[4] = v21;
    v25[5] = v22 | 0x8000000000000000;
  }

  while (v0 != 11);
  qword_100361D50 = v1;
  return result;
}

uint64_t sub_100185334(void *a1)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_100362AE8, &qword_10028AC20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - v6;
  v28 = v2;
  v8 = type metadata accessor for Condition();

  sub_1000040A8(&qword_100362AF0, &qword_10028AC28);
  if (swift_dynamicCast())
  {
    sub_100008A18(v23, v25);
    sub_1000088DC(a1, a1[3]);
    _s3KeyCMa_3();
    sub_1001910F4(&qword_100362B08, _s3KeyCMa_3, &unk_10028AAA0);
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v9 = v26;
    v10 = v27;
    sub_1000088DC(v25, v26);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = v26;
    v16 = v27;
    sub_1000088DC(v25, v26);
    v28 = v14;
    KeyedEncodingContainer.superEncoder(forKey:)();
    (*(v16 + 16))(v23, v15, v16);

    sub_100008964(v23);
    (*(v5 + 8))(v7, v4);
    return sub_100008964(v25);
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_100008FA0(v23, &qword_100362AF8, &qword_10028AC30);
    v18 = type metadata accessor for EncodingError();
    swift_allocError();
    v20 = v19;
    sub_1000040A8(&qword_100362B00, &qword_10028AC38);
    v20[3] = v8;
    *v20 = v2;
    sub_1000088DC(a1, a1[3]);

    dispatch thunk of Encoder.codingPath.getter();
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v21._object = 0x80000001002A1600;
    v21._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v21);
    *&v23[0] = v2;
    _print_unlocked<A, B>(_:_:)();
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v18 - 8) + 104))(v20, enum case for EncodingError.invalidValue(_:), v18);
    return swift_willThrow();
  }
}

uint64_t sub_100185724(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    v8 = a1;
    v9 = type metadata accessor for EncodingError();
    swift_allocError();
    v11 = v10;
    sub_1000040A8(&qword_100362B00, &qword_10028AC38);
    v11[3] = type metadata accessor for LogicalCondition();
    *v11 = v2;
    sub_1000088DC(v8, v8[3]);

    dispatch thunk of Encoder.codingPath.getter();
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    v12._object = 0x80000001002A1620;
    v12._countAndFlagsBits = 0xD000000000000022;
    String.append(_:)(v12);
    v16 = v2;
    _print_unlocked<A, B>(_:_:)();
    v13._countAndFlagsBits = 46;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v9 - 8) + 104))(v11, enum case for EncodingError.invalidValue(_:), v9);
    return swift_willThrow();
  }

  v6 = a1;
  v7 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v6;
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_3:
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  if (*(v2 + 16) != 2)
  {
    v16 = v3;
    sub_100022834(v14, v15);
    sub_1000040A8(&qword_100362B10, &qword_10028AC40);
    sub_100190208();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    return sub_100008964(v14);
  }

  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

LABEL_12:
    v16 = v5;
    sub_100022834(v14, v15);
    type metadata accessor for Condition();
    sub_1001910F4(&qword_100362A78, type metadata accessor for Condition, &unk_10028A558);
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();

    return sub_100008964(v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_100185A64()
{
  if (!*(*v0 + 16))
  {
    return 6581857;
  }

  if (*(*v0 + 16) == 1)
  {
    return 29295;
  }

  return 7630702;
}

uint64_t sub_100185AC8()
{
  if (!*(*v0 + 16))
  {
    return 1852138867;
  }

  if (*(*v0 + 16) == 1)
  {
    return 0x6465726577736E61;
  }

  return 0x64657070696B73;
}

uint64_t sub_100185B1C(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100008964(v2);
}

uint64_t sub_100185BD4(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100008964(v2);
}

uint64_t sub_100185CCC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100185D4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a2;
  v8 = sub_1000040A8(&qword_100362B30, &qword_10028AC50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnaireStringsBundle.Key();
  sub_1001910F4(&qword_100362B28, type metadata accessor for QuestionnaireStringsBundle.Key, &unk_10028AAA0);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!a3 || (inited = swift_initStaticObject(), KeyedEncodingContainer.encode(_:forKey:)(), !v5))
  {
    inited = swift_initStaticObject();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100185F1C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001902BC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void sub_100185F90(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = sub_1000040A8(&qword_100362B78, &qword_10028AC68);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (a4)
  {
    v24 = v4;
    v25 = v10;
    sub_1000088DC(a1, a1[3]);
    type metadata accessor for QuestionnaireRepresentation.Key();
    sub_1001910F4(&qword_100362B40, type metadata accessor for QuestionnaireRepresentation.Key, &unk_10028AAA0);

    dispatch thunk of Encoder.container<A>(keyedBy:)();
    sub_1000040A8(&qword_100362B80, &qword_10028AC70);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100279160;
    v14 = a4[5];
    v15 = a4[6];
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = v14;
    *(v13 + 56) = v15;
    *&v26 = a2;
    *(&v26 + 1) = a3;
    inited = swift_initStaticObject();
    sub_100190C18(inited, v16, v17);

    v18 = v24;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v18)
    {

      (*(v25 + 8))(v12, v9);
    }

    else
    {
      *&v26 = swift_initStaticObject();
      KeyedEncodingContainer.encode(_:forKey:)();
      *&v26 = a4;
      inited = swift_initStaticObject();
      type metadata accessor for Questionnaire();
      sub_1001910F4(&qword_100362B90, type metadata accessor for Questionnaire, &unk_10028A850);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_10018388C(&v28);
      v26 = v28;
      v27[0] = v29[0];
      *(v27 + 9) = *(v29 + 9);
      inited = swift_initStaticObject();
      sub_100190C6C(inited, v22, v23);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100190CC0(&v28);
      *&v26 = v13;
      inited = swift_initStaticObject();
      sub_1000040A8(&qword_100362B48, &qword_10028AC60);
      sub_100190CF0();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      (*(v25 + 8))(v12, v9);
    }
  }

  else
  {
    v19 = type metadata accessor for EncodingError();
    swift_allocError();
    v21 = v20;
    sub_1000040A8(&qword_100362B00, &qword_10028AC38);
    *v21 = a2;
    v21[1] = a3;
    v21[2] = 0;
    v21[3] = &type metadata for QuestionnaireRepresentation;
    EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for EncodingError.invalidValue(_:), v19);
    swift_willThrow();
  }
}

uint64_t sub_100186468@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100190514(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1001864B8()
{
  swift_allocObject();
  type metadata accessor for StringCodingKey();
  swift_deallocPartialClassInstance();
  return 0;
}

__n128 sub_10018652C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100186540(uint64_t a1, int a2)
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

uint64_t sub_100186588(uint64_t result, int a2, int a3)
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

uint64_t sub_1001865F4(void *a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100362BE0, &qword_10028AC90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnaireRegion.Key();
  sub_1001910F4(&qword_100362BB8, type metadata accessor for QuestionnaireRegion.Key, &unk_10028AAA0);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[3] = a2;
  v9[1] = swift_initStaticObject();
  sub_1000040A8(&qword_100362BC0, &qword_10028AC80);
  sub_100191214();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001867A8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100190E00(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100186880(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100186C20(a1, v4);
}

unint64_t sub_1001868C8(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_100186CE4(a1, v2);
}

unint64_t sub_100186934(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();
  return sub_100186F28(v1, v2);
}

unint64_t sub_10018699C(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();

  return sub_100186D50(a1 & 1, v2);
}

unint64_t sub_100186A08(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100186DC0(a1, a2, v4);
}

unint64_t sub_100186A84(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();
  return sub_100186E78(a1, v2);
}

unint64_t sub_100186AF0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100186F98(a1, v2);
}

unint64_t sub_100186BBC(uint64_t a1)
{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10018709C(a1, v2);
}

unint64_t sub_100186C20(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1001912EC();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100186CE4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100186D50(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100186DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100186E78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (*(v7 + 16) == *(a1 + 16) && *(v7 + 24) == *(a1 + 24))
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100186F28(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100186F98(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10018709C(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_100187234(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187254(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187478(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187274(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187584(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187294(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187690(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001872B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10018779C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001872D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001878C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001872F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187AB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187314(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187BD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187334(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187CF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187354(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187E14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187374(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100362C08, &qword_10028ACC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100187478(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100359B28, &qword_100287830);
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

char *sub_100187584(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100362C40, &qword_10028ADA8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187690(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100362A40, &qword_10028ABE8);
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

char *sub_10018779C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100361BD0, &unk_10028ACB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001878C4(void *result, int64_t a2, char a3, void *a4)
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

  sub_1000040A8(&qword_10035E428, &qword_100284668);
  v10 = *(sub_1000040A8(&qword_100356188, &unk_100283E60) - 8);
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
  v15 = *(sub_1000040A8(&qword_100356188, &unk_100283E60) - 8);
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

char *sub_100187AB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100362C48, &qword_10028ADB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187BD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100362C38, &qword_10028ADA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187CF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100362BD8, &qword_10028AC88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187E14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100362C50, &qword_10028ADB8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_100187F24@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10018699C(a1 & 1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100090CC8();
      v9 = v14;
    }

    v10 = *(v9 + 56) + 72 * v7;
    v11 = *(v10 + 48);
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v11;
    *(a2 + 64) = *(v10 + 64);
    v12 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v12;
    sub_100188248(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_100187FD8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_100186BBC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10009224C();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for CodingUserInfoKey();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_1000456C8((*(v9 + 56) + 32 * v7), a2);
    sub_100188588(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

Swift::Int sub_1001880B4(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100188248(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 72 * v3;
        v15 = (v14 + 72 * v6);
        if (72 * v3 < (72 * v6) || result >= v15 + 72 || v3 != v6)
        {
          result = memmove(result, v15, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1001883F4(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100188588(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v38 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = *(v14 + 56);
    v36 = (v14 - 8);
    v37 = v15;
    do
    {
      v16 = v8;
      v17 = v39 * v10;
      v18 = v13;
      v19 = v14;
      v37(v7, *(a2 + 48) + v39 * v10, v4);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v36)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v38)
      {
        if (v21 >= v38 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v39 * a1;
          v26 = v24 + v17 + v39;
          v27 = v39 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v39 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v10);
          if (a1 != v10 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v38 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_10018883C(uint64_t a1, uint64_t a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1001868C8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10008D44C(v16, a4 & 1);
      v11 = sub_1001868C8(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        type metadata accessor for CTSubscriptionSlot(0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1000908BC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + 8 * v11) = a3;
    v23 = (v21[7] + 16 * v11);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_10018899C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100186934(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10008D95C(v14, a3 & 1);
      result = sub_100186934(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100090B6C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_100188AE8(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_10018699C(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10008DBEC(v14, a3 & 1);
      result = sub_10018699C(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100090CC8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    v21 = v19[7] + 72 * result;
    *v21 = *a1;
    v22 = *(a1 + 16);
    v23 = *(a1 + 32);
    v24 = *(a1 + 48);
    *(v21 + 64) = *(a1 + 64);
    *(v21 + 32) = v23;
    *(v21 + 48) = v24;
    *(v21 + 16) = v22;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 72 * result;

  return sub_100191EC0(a1, v20);
}

void sub_100188C58(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100186A84(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10008E1DC(v16, a4 & 1);
      v11 = sub_100186A84(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        type metadata accessor for Question();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100090FFC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * v11;
    *v22 = a1;
    *(v22 + 8) = a2;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  *(v21[6] + 8 * v11) = a3;
  v23 = v21[7] + 16 * v11;
  *v23 = a1;
  *(v23 + 8) = a2;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_100188DD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100186A84(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10008E48C(v16, a4 & 1);
      v11 = sub_100186A84(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        type metadata accessor for Option();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100091174();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  *(v21[6] + 8 * v11) = a3;
  v23 = (v21[7] + 16 * v11);
  *v23 = a1;
  v23[1] = a2;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_100188F48(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100186A08(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000912E4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10008E734(v16, a4 & 1);
    v11 = sub_100186A08(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100008964(v22);

    return sub_1000456C8(a1, v22);
  }

  else
  {
    sub_100189AE8(v11, a2, a3, a1, v21);
  }
}

void sub_100189098(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100186A84(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10008E9EC(v14, a3 & 1);
      v9 = sub_100186A84(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for Question();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_100091488();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v21;
}

_OWORD *sub_1001891F8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100186934(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1000915EC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_10008EC84(v14, a3 & 1);
    v9 = sub_100186934(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    sub_100008964(v20);

    return sub_1000456C8(a1, v20);
  }

  else
  {

    return sub_100189B54(v9, a2, a1, v19);
  }
}

uint64_t sub_100189324(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_100186A08(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_10008F1E0(v22, a7 & 1);
      v17 = sub_100186A08(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1000918FC();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * v17;
    v29 = *v28;
    v30 = *(v28 + 8);
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3;
    *(v28 + 24) = a4 & 1;

    return sub_10000F4E8(v29, v30);
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v27[6] + 16 * v17);
  *v32 = a5;
  v32[1] = a6;
  v33 = v27[7] + 32 * v17;
  *v33 = a1;
  *(v33 + 8) = a2;
  *(v33 + 16) = a3;
  *(v33 + 24) = a4 & 1;
  v34 = v27[2];
  v21 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v35;
}

uint64_t sub_1001894D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100186A08(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10008F760(v16, a4 & 1);
      v11 = sub_100186A08(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100091C60();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_10018964C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100186B80(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100091DCC();
    result = v17;
    goto LABEL_8;
  }

  sub_10008FA04(v14, a3 & 1);
  result = sub_100186B80(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100189770(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100186A08(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10008FC68(v16, a4 & 1);
      v11 = sub_100186A08(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100091F18();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 72 * v11;

    return sub_100190DC8(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 72 * v11;
  *v25 = *a1;
  v26 = *(a1 + 16);
  v27 = *(a1 + 32);
  v28 = *(a1 + 48);
  *(v25 + 64) = *(a1 + 64);
  *(v25 + 32) = v27;
  *(v25 + 48) = v28;
  *(v25 + 16) = v26;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

_OWORD *sub_100189910(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100186BBC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10009224C();
      goto LABEL_7;
    }

    sub_100090274(v17, a3 & 1);
    v23 = sub_100186BBC(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100189BBC(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  sub_100008964(v21);

  return sub_1000456C8(a1, v21);
}

_OWORD *sub_100189AE8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000456C8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_100189B54(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_1000456C8(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_100189BBC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CodingUserInfoKey();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1000456C8(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_100189C7C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v72 = a1;
  v73 = a2;

  v4 = String.init<A>(_:)();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10018A200(v4, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter();
      v8 = v71;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v7)
          {
            v25 = 0;
            v26 = v7 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (is_mul_ok(v25, a3))
              {
                v29 = v25 * a3;
                v30 = v27 + v28;
                v20 = __CFADD__(v29, v30);
                v25 = v29 + v30;
                if (!v20)
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (v7)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v7;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (is_mul_ok(v34, a3))
            {
              v37 = v34 * a3;
              v38 = v35 + v36;
              v20 = __CFADD__(v37, v38);
              v34 = v37 + v38;
              if (!v20)
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (is_mul_ok(v14, a3))
            {
              v18 = v14 * a3;
              v19 = v16 + v17;
              v20 = v18 >= v19;
              v14 = v18 - v19;
              if (v20)
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v72 = v6;
  v73 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v62 = 0;
        v63 = a3 + 48;
        v64 = a3 + 55;
        v65 = a3 + 87;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (is_mul_ok(v62, a3))
          {
            v69 = v62 * a3;
            v70 = v67 + v68;
            v20 = __CFADD__(v69, v70);
            v62 = v69 + v70;
            if (!v20)
            {
              v66 = (v66 + 1);
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v72 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (is_mul_ok(v43, a3))
          {
            v50 = v43 * a3;
            v51 = v48 + v49;
            v20 = v50 >= v51;
            v43 = v50 - v51;
            if (v20)
            {
              ++v47;
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v53 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v72 + 1;
      while (1)
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        if (is_mul_ok(v53, a3))
        {
          v60 = v53 * a3;
          v61 = v58 + v59;
          v20 = __CFADD__(v60, v61);
          v53 = v60 + v61;
          if (!v20)
          {
            ++v57;
            if (--v52)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

uint64_t sub_10018A200(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10018A280(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10018A280(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10017CE28(v9, 0), v12 = sub_10018A3D8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10018A3D8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10018A5F8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10018A5F8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10018A5F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_10018A674(void *a1)
{
  v3 = sub_1000088DC(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    goto LABEL_74;
  }

  sub_1000088DC(v44, v44[3]);
  v42 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v43 = v4;
  sub_100031770(v42, v4, v5);
  v6 = StringProtocol.components<A>(separatedBy:)();

  result = v6;
  if (v6[2] <= 1uLL)
  {

    v8 = type metadata accessor for DecodingError();
    swift_allocError();
    v10 = v9;
    v3 = sub_1000088DC(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
LABEL_73:
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.dataCorrupted(_:), v8);
    swift_willThrow();
    sub_100008964(v44);
LABEL_74:
    sub_100008964(a1);
    return v3;
  }

  v11 = v6[4];
  v12 = v6[5];
  v13 = HIBYTE(v12) & 0xF;
  v14 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v15 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
LABEL_68:

    v8 = type metadata accessor for DecodingError();
    swift_allocError();
    v10 = v32;
    v3 = sub_1000088DC(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    goto LABEL_73;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {
    v33 = v6;

    sub_100189C7C(v11, v12, 10);
    v3 = v34;
    v36 = v35;

    result = v33;
    if ((v36 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  if ((v12 & 0x2000000000000000) != 0)
  {
    v42 = v6[4];
    v43 = v12 & 0xFFFFFFFFFFFFFFLL;
    if (v11 == 43)
    {
      if (v13)
      {
        v16 = v13 - 1;
        if (v13 != 1)
        {
          v3 = 0;
          v27 = &v42 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            if (!is_mul_ok(v3, 0xAuLL))
            {
              break;
            }

            v21 = __CFADD__(10 * v3, v28);
            v3 = 10 * v3 + v28;
            if (v21)
            {
              break;
            }

            ++v27;
            if (!--v16)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }
    }

    else
    {
      if (v11 != 45)
      {
        if (v13)
        {
          v3 = 0;
          v30 = &v42;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            if (!is_mul_ok(v3, 0xAuLL))
            {
              break;
            }

            v21 = __CFADD__(10 * v3, v31);
            v3 = 10 * v3 + v31;
            if (v21)
            {
              break;
            }

            v30 = (v30 + 1);
            if (!--v13)
            {
LABEL_65:
              LOBYTE(v16) = 0;
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

      if (v13)
      {
        v16 = v13 - 1;
        if (v13 != 1)
        {
          v3 = 0;
          v22 = &v42 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            if (!is_mul_ok(v3, 0xAuLL))
            {
              break;
            }

            v21 = 10 * v3 >= v23;
            v3 = 10 * v3 - v23;
            if (!v21)
            {
              break;
            }

            ++v22;
            if (!--v16)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if ((v11 & 0x1000000000000000) == 0)
  {
    goto LABEL_78;
  }

  v16 = (v12 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    v17 = *v16;
    if (v17 == 43)
    {
      if (v14 < 1)
      {
        goto LABEL_81;
      }

      v24 = v14 - 1;
      if (v14 != 1)
      {
        v3 = 0;
        if (!v16)
        {
          goto LABEL_67;
        }

        v25 = (v16 + 1);
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          if (!is_mul_ok(v3, 0xAuLL))
          {
            break;
          }

          v21 = __CFADD__(10 * v3, v26);
          v3 = 10 * v3 + v26;
          if (v21)
          {
            break;
          }

          ++v25;
          if (!--v24)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else if (v17 == 45)
    {
      if (v14 < 1)
      {
        __break(1u);
        goto LABEL_80;
      }

      v18 = v14 - 1;
      if (v14 != 1)
      {
        v3 = 0;
        if (!v16)
        {
          goto LABEL_67;
        }

        v19 = (v16 + 1);
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (!is_mul_ok(v3, 0xAuLL))
          {
            break;
          }

          v21 = 10 * v3 >= v20;
          v3 = 10 * v3 - v20;
          if (!v21)
          {
            break;
          }

          ++v19;
          if (!--v18)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else if (v14)
    {
      v3 = 0;
      if (!v16)
      {
        goto LABEL_67;
      }

      while (1)
      {
        v29 = *v16 - 48;
        if (v29 > 9)
        {
          break;
        }

        if (!is_mul_ok(v3, 0xAuLL))
        {
          break;
        }

        v21 = __CFADD__(10 * v3, v29);
        v3 = 10 * v3 + v29;
        if (v21)
        {
          break;
        }

        ++v16;
        if (!--v14)
        {
          goto LABEL_65;
        }
      }
    }

LABEL_66:
    v3 = 0;
    LOBYTE(v16) = 1;
LABEL_67:
    if (v16)
    {
      goto LABEL_68;
    }

LABEL_70:
    if (result[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_78:
    v41 = result;
    v16 = _StringObject.sharedUTF8.getter();
    result = v41;
  }

  v37 = result[6];
  v38 = result[7];

  sub_100180018(v37, v38);
  if (v39)
  {
    v8 = type metadata accessor for DecodingError();
    swift_allocError();
    v10 = v40;
    v3 = sub_1000088DC(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    goto LABEL_73;
  }

  sub_100008964(v44);
  sub_100008964(a1);
  return v3;
}

uint64_t sub_10018AC1C(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  v2 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_100353AF0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = sub_10000F53C(v3, qword_100381F20);
  if (*(v2 + 16) && (v5 = sub_100186BBC(v4), (v6 & 1) != 0))
  {
    sub_100048F80(*(v2 + 56) + 32 * v5, v11);

    type metadata accessor for QuestionnaireRevisionContainer();
    if (swift_dynamicCast())
    {
      return v11[5];
    }
  }

  else
  {
  }

  v8 = type metadata accessor for DecodingError();
  swift_allocError();
  v10 = v9;
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.dataCorrupted(_:), v8);
  return swift_willThrow();
}

uint64_t sub_10018ADD8(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  v2 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_100353B00 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = sub_10000F53C(v3, qword_100381F50);
  if (*(v2 + 16) && (v5 = sub_100186BBC(v4), (v6 & 1) != 0))
  {
    sub_100048F80(*(v2 + 56) + 32 * v5, v11);

    type metadata accessor for QuestionnairePresentationBuddyContainer();
    if (swift_dynamicCast())
    {
      return v11[5];
    }
  }

  else
  {
  }

  v8 = type metadata accessor for DecodingError();
  swift_allocError();
  v10 = v9;
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.dataCorrupted(_:), v8);
  return swift_willThrow();
}

uint64_t sub_10018AF94(void *a1)
{
  v3 = a1[3];
  sub_1000088DC(a1, v3);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    sub_100008964(a1);
  }

  else
  {
    sub_1000088DC(v6, v6[3]);
    sub_1000040A8(&qword_100362C10, &qword_10028AD88);
    sub_1001920B4();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v3 = v5;
    sub_100008964(v6);
    sub_100008964(a1);
  }

  return v3;
}

uint64_t sub_10018B230(void *a1)
{
  v2 = sub_1000040A8(&qword_100362898, &qword_10028AB40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnairePresentationBuddyAutoSendPolicy.Key();
  sub_1001910F4(&qword_1003628A0, type metadata accessor for QuestionnairePresentationBuddyAutoSendPolicy.Key, &unk_10028AAA0);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  inited = swift_initStaticObject();
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  inited = swift_initStaticObject();
  KeyedDecodingContainer.decode(_:forKey:)();
  inited = swift_initStaticObject();
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100008964(a1);
  return v6;
}

void sub_10018B464(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = sub_1000040A8(&qword_1003628B0, &qword_10028AB50);
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v19 - v6;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnairePresentationBuddy.Key();
  sub_1001910F4(&qword_1003628B8, type metadata accessor for QuestionnairePresentationBuddy.Key, &unk_10028AAA0);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100008964(a1);
  }

  else
  {
    v8 = v5;
    inited = swift_initStaticObject();
    v9 = v21;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000040A8(&qword_1003628C0, &qword_10028AB58);
    v25 = swift_initStaticObject();
    sub_10018B860(&qword_1003628C8, sub_10018B7B8, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = inited;
    v10 = swift_initStaticObject();
    inited = v10;
    v11 = KeyedDecodingContainer.contains(_:)();
    v14 = v11;
    if (v11)
    {
      v25 = v10;
      sub_10018B80C(v11, v12, v13);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v8 + 8))(v7, v9);
      v15 = inited;
      v16 = v23;
      v17 = v24;
    }

    else
    {
      (*(v8 + 8))(v7, v9);
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    sub_100008964(a1);
    v18 = v19;
    *a2 = v20;
    *(a2 + 8) = v18;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
    *(a2 + 40) = (v14 & 1) == 0;
  }
}

unint64_t sub_10018B7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003628D0;
  if (!qword_1003628D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003628D0);
  }

  return result;
}

unint64_t sub_10018B80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003628D8;
  if (!qword_1003628D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003628D8);
  }

  return result;
}

uint64_t sub_10018B860(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(&qword_1003628C0, &qword_10028AB58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018B8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003628F0;
  if (!qword_1003628F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003628F0);
  }

  return result;
}

unint64_t sub_10018B938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003628F8;
  if (!qword_1003628F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003628F8);
  }

  return result;
}

uint64_t sub_10018B98C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = sub_1000040A8(&qword_100362900, &qword_10028AB68);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = a1;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionPresentationBuddy.Key();
  sub_1001910F4(&qword_100362908, type metadata accessor for QuestionPresentationBuddy.Key, &unk_10028AAA0);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100008964(a1);
  }

  v44 = v5;
  v9 = v45;
  inited = swift_initStaticObject();
  v51[0] = inited;
  if (KeyedDecodingContainer.contains(_:)())
  {
    v51[0] = inited;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    v42 = v11;
  }

  else
  {
    v42 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = swift_initStaticObject();
  v51[0] = v14;
  if (KeyedDecodingContainer.contains(_:)())
  {
    v51[0] = v14;
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v15;
  }

  else
  {
    v40 = 0;
    v43 = 0xE000000000000000;
  }

  v16 = swift_initStaticObject();
  v51[0] = v16;
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_1000040A8(&qword_10035AB90, &qword_10028AB80);
    *&v46 = v16;
    sub_10018C1D8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v51[0];
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v41 = v17;
  v18 = swift_initStaticObject();
  v51[0] = v18;
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_1000040A8(&qword_100355E30, &unk_10027A120);
    *&v46 = v18;
    sub_10018C468(&qword_100362928, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = v51[0];
  }

  else
  {
    v39 = 0;
  }

  v20 = swift_initStaticObject();
  v51[0] = v20;
  if (KeyedDecodingContainer.contains(_:)())
  {
    v51[0] = v20;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = v22;
    v38 = v21;
  }

  else
  {
    v38 = 0;
    v23 = 0;
  }

  v24 = v44;
  sub_1001809F0(v8, v52);
  v37 = v23;
  sub_1000088DC(v52, v53);
  v44 = sub_100180C04(v42, v13);
  v36 = v25;

  sub_1000088DC(v52, v53);
  v40 = sub_100180C04(v40, v43);
  v42 = v26;

  sub_1000040A8(&qword_100362910, &unk_10028AB70);
  v51[9] = swift_initStaticObject();
  sub_10018C0C8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 8))(v7, v4);
  v27 = v54;
  sub_100008964(v52);
  *&v46 = v44;
  v28 = v36;
  *(&v46 + 1) = v36;
  *&v47 = v40;
  v29 = v41;
  *(&v47 + 1) = v42;
  *&v48 = v41;
  v30 = v39;
  v31 = v38;
  *(&v48 + 1) = v39;
  *&v49 = v38;
  v32 = v37;
  *(&v49 + 1) = v37;
  v50 = v27;
  sub_100092850(&v46, v51);
  sub_100008964(v8);
  v51[0] = v44;
  v51[1] = v28;
  v51[2] = v40;
  v51[3] = v42;
  v51[4] = v29;
  v51[5] = v30;
  v51[6] = v31;
  v51[7] = v32;
  v51[8] = v27;
  result = sub_10018C1A8(v51);
  v33 = v49;
  *(v9 + 32) = v48;
  *(v9 + 48) = v33;
  *(v9 + 64) = v50;
  v34 = v47;
  *v9 = v46;
  *(v9 + 16) = v34;
  return result;
}

unint64_t sub_10018C0C8()
{
  result = qword_100362918;
  if (!qword_100362918)
  {
    v1 = sub_100008CF0(&qword_100362910, &unk_10028AB70);
    sub_10018C154(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362918);
  }

  return result;
}

unint64_t sub_10018C154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362920;
  if (!qword_100362920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362920);
  }

  return result;
}

unint64_t sub_10018C1D8()
{
  result = qword_100362930;
  if (!qword_100362930)
  {
    v1 = sub_100008CF0(&qword_10035AB90, &qword_10028AB80);
    sub_10018C25C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362930);
  }

  return result;
}

unint64_t sub_10018C25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362938;
  if (!qword_100362938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362938);
  }

  return result;
}

unint64_t sub_10018C2B0()
{
  result = qword_100362960;
  if (!qword_100362960)
  {
    v1 = sub_100008CF0(&qword_10035AB90, &qword_10028AB80);
    sub_10018C334(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362960);
  }

  return result;
}

unint64_t sub_10018C334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362968;
  if (!qword_100362968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362968);
  }

  return result;
}

unint64_t sub_10018C388()
{
  result = qword_100362970;
  if (!qword_100362970)
  {
    v1 = sub_100008CF0(&qword_100362910, &unk_10028AB70);
    sub_10018C414(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362970);
  }

  return result;
}

unint64_t sub_10018C414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362978;
  if (!qword_100362978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362978);
  }

  return result;
}

uint64_t sub_10018C468(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(&qword_100355E30, &unk_10027A120);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*sub_10018C4D4(void *a1))(char *, uint64_t)
{
  v2 = sub_1000040A8(&qword_100362988, &qword_10028ABA8);
  v66 = *(v2 - 8);
  v67 = v2;
  __chkstk_darwin(v2);
  v65 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v60 - v5;
  __chkstk_darwin(v7);
  v9 = &v60 - v8;
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  v16 = a1[3];
  v70 = a1;
  v17 = sub_1000088DC(a1, v16);
  type metadata accessor for OptionPresentationBuddy.Key();
  sub_1001910F4(&qword_100362990, type metadata accessor for OptionPresentationBuddy.Key, &unk_10028AAA0);
  v18 = v68;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    v19 = v70;
    goto LABEL_3;
  }

  v61 = v6;
  v62 = v9;
  v68 = 0;
  v63 = v12;
  v21 = v66;
  inited = swift_initStaticObject();
  v69[0] = inited;
  v23 = v67;
  if (KeyedDecodingContainer.contains(_:)())
  {
    v69[0] = inited;
    v17 = v15;
    v24 = v68;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v70;
    if (v24)
    {
      (*(v21 + 8))(v15, v23);
      goto LABEL_3;
    }

    v27 = v25;
    v68 = 0;
    v64 = v26;
  }

  else
  {
    v27 = 0;
    v64 = 0xE000000000000000;
    v19 = v70;
  }

  v70 = static Color.clear.getter();
  v28 = swift_initStaticObject();
  v69[0] = v28;
  if (KeyedDecodingContainer.contains(_:)())
  {
    v69[0] = v28;
    v29 = v63;
    v17 = v15;
    v30 = v68;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v68 = v30;
    if (v30)
    {

      (*(v21 + 8))(v15, v23);
      goto LABEL_3;
    }

    v40 = v29;
    v41 = swift_initStaticObject();
    v69[0] = v41;
    if (KeyedDecodingContainer.contains(_:)())
    {
      v69[0] = v41;
      v42 = v68;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v40;
      if (v42)
      {

        v17 = *(v21 + 8);
        (v17)(v43, v23);
        v44 = v15;
LABEL_20:
        (v17)(v44, v23);
        goto LABEL_3;
      }

      v69[0] = swift_initStaticObject();
      v49 = v62;
      KeyedDecodingContainer.decode(_:forKey:)();
      v68 = 0;
      v53 = v49;
      v31 = v27;
      v60 = v15;

      v33 = v21;
      v54 = *(v21 + 8);
      v54(v53, v23);
      v54(v40, v23);
      goto LABEL_29;
    }

    v60 = v15;
    v45 = swift_initStaticObject();
    v69[0] = v45;
    v46 = v40;
    if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
    {
      v31 = v27;
      v33 = v21;
      (*(v21 + 8))(v40, v23);
LABEL_29:
      v17 = 0;
      v32 = 0;
      goto LABEL_14;
    }

    v69[0] = v45;
    v47 = v61;
    v48 = v68;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v68 = v48;
    if (v48)
    {

      v17 = *(v21 + 8);
      (v17)(v46, v23);
LABEL_28:
      v44 = v60;
      goto LABEL_20;
    }

    v69[0] = swift_initStaticObject();
    v50 = v68;
    v51 = KeyedDecodingContainer.decode(_:forKey:)();
    v68 = v50;
    if (v50)
    {

      v17 = *(v21 + 8);
      (v17)(v47, v23);
      (v17)(v46, v23);
      goto LABEL_28;
    }

    v32 = v52;
    v62 = v51;
    v69[0] = swift_initStaticObject();
    v55 = v68;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v55)
    {

      v17 = *(v21 + 8);
      (v17)(v61, v23);
      (v17)(v46, v23);
      v44 = v60;
      goto LABEL_20;
    }

    v69[0] = swift_initStaticObject();
    v56 = KeyedDecodingContainer.decode(_:forKey:)();
    v68 = 0;
    v31 = v27;
    v58 = sub_10009AE94(v56, v57);

    v33 = v21;
    if (!v58)
    {
      v58 = static Color.clear.getter();
    }

    v70 = v58;
    v59 = *(v21 + 8);
    v59(v65, v23);
    v59(v61, v23);
    v59(v63, v23);
    v17 = v62;
  }

  else
  {
    v31 = v27;
    v60 = v15;
    v17 = 0;
    v32 = 0;
    v33 = v21;
  }

LABEL_14:
  v34 = v68;
  sub_1001809F0(v19, v69);
  if (!v34)
  {
    sub_1000088DC(v69, v69[3]);
    v68 = v32;
    v35 = v17;
    v36 = sub_100180C04(v31, v64);
    v38 = v37;

    (*(v33 + 8))(v60, v23);
    type metadata accessor for OptionPresentation();
    v17 = swift_allocObject();
    *(v17 + 16) = v36;
    *(v17 + 24) = v38;
    v39 = v68;
    *(v17 + 48) = v35;
    *(v17 + 56) = v39;
    *(v17 + 64) = v70;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0;
    sub_100008964(v69);
    sub_100008964(v19);
    return v17;
  }

  (*(v33 + 8))(v60, v23);

LABEL_3:
  sub_100008964(v19);
  return v17;
}

uint64_t sub_10018CD44(void *a1)
{
  v3 = sub_1000040A8(&qword_1003629A0, &qword_10028ABB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - v5;
  v7 = sub_1000088DC(a1, a1[3]);
  _s3KeyCMa();
  sub_1001910F4(&qword_1003629A8, _s3KeyCMa, &unk_10028AAA0);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    inited = swift_initStaticObject();
    sub_10018D270(inited, v8, v9);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v33;
    inited = swift_initStaticObject();
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    v14 = v11;
    v15 = sub_10018ADD8(a1);
    if (*(v15 + 24))
    {
      v17 = *(v15 + 48);
      v31 = *(v15 + 40);
      v32 = v17;
      v30 = *(v15 + 32);
      HIDWORD(v29) = *(v15 + 56);

      v34[0] = v10;
      v18 = v30;
      v19 = v31;
      if ((v29 & 0x100000000) != 0)
      {
        v18 = 0;
        v19 = 0;
      }

      v20 = v32;
      if ((v29 & 0x100000000) != 0)
      {
        v20 = 0;
      }

      v35 = v14;
      v36 = v13;
      v37 = v18;
      v38 = v19;
      v39 = v20;
      v40 = BYTE4(v29) & 1;
      v21 = sub_10018AC1C(a1);
      if ((*(v21 + 32) & 1) == 0)
      {
        v25 = *(v21 + 16);
        v31 = *(v21 + 24);
        v32 = v25;

        inited = swift_initStaticObject();
        v26 = KeyedDecodingContainer.decode(_:forKey:)();
        v27 = v32;
        v30 = v26;
        sub_1000040A8(&qword_1003629B8, &qword_10028ABC0);
        v33 = swift_initStaticObject();
        sub_10018D2C4();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v28 = inited;
        type metadata accessor for Questionnaire();
        swift_allocObject();
        v7 = sub_10008B90C(v27, v31, v34, v30, v28);
        (*(v4 + 8))(v6, v3);
        sub_100008964(a1);
        return v7;
      }

      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v31 = v22;
      sub_1000088DC(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      v7 = v31;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v7, enum case for DecodingError.dataCorrupted(_:));
      swift_willThrow();
    }

    else
    {
      v32 = v15;

      v23 = type metadata accessor for DecodingError();
      swift_allocError();
      v31 = v24;
      sub_1000088DC(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      v7 = v31;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v23 - 8) + 104))(v7, enum case for DecodingError.dataCorrupted(_:), v23);
      swift_willThrow();
    }

    (*(v4 + 8))(v6, v3);
  }

  sub_100008964(a1);
  return v7;
}

unint64_t sub_10018D270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003629B0;
  if (!qword_1003629B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003629B0);
  }

  return result;
}

unint64_t sub_10018D2C4()
{
  result = qword_1003629C0;
  if (!qword_1003629C0)
  {
    sub_100008CF0(&qword_1003629B8, &qword_10028ABC0);
    sub_1001910F4(&qword_1003629C8, type metadata accessor for Question, &unk_10028A828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003629C0);
  }

  return result;
}

unint64_t sub_10018D378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003629D8;
  if (!qword_1003629D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003629D8);
  }

  return result;
}

unint64_t sub_10018D3CC()
{
  result = qword_1003629E0;
  if (!qword_1003629E0)
  {
    sub_100008CF0(&qword_1003629B8, &qword_10028ABC0);
    sub_1001910F4(&qword_1003629E8, type metadata accessor for Question, &unk_10028A800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003629E0);
  }

  return result;
}

uint64_t sub_10018D480(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = sub_100181138(a1, a2);
  if (v10 == 3)
  {
    v11 = type metadata accessor for DecodingError();
    v12 = swift_allocError();
    v14 = v13;
    _StringGuts.grow(_:)(24);

    v15._countAndFlagsBits = a1;
    v15._object = a2;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 11815;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v11 - 8) + 104))(v14, enum case for DecodingError.dataCorrupted(_:), v11);
LABEL_6:
    v18 = v12;
    swift_willThrow();
    return v18;
  }

  if (v5 != 2)
  {
    v19 = type metadata accessor for DecodingError();
    v12 = swift_allocError();
    v21 = v20;
    _StringGuts.grow(_:)(39);

    sub_10018F33C(a3, a4, v5);
    v22._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 46;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.dataCorrupted(_:), v19);
    goto LABEL_6;
  }

  v17 = v10;
  type metadata accessor for QuestionCondition();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;

  return v18;
}

uint64_t sub_10018D6FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v9 = a1 == 0x64657463656C6573 && a2 == 0xE800000000000000;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v18 = type metadata accessor for DecodingError();
    v13 = swift_allocError();
    v20 = v19;
    _StringGuts.grow(_:)(24);

    v21._countAndFlagsBits = a1;
    v21._object = a2;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 11815;
    v22._object = 0xE200000000000000;
    String.append(_:)(v22);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v18 - 8) + 104))(v20, enum case for DecodingError.dataCorrupted(_:), v18);
    goto LABEL_10;
  }

  if (v5 != 2)
  {
    v12 = type metadata accessor for DecodingError();
    v13 = swift_allocError();
    v15 = v14;
    _StringGuts.grow(_:)(39);

    sub_10018F33C(a3, a4, v5);
    v16._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 46;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v12 - 8) + 104))(v15, enum case for DecodingError.dataCorrupted(_:), v12);
LABEL_10:
    v11 = v13;
    swift_willThrow();
    return v11;
  }

  type metadata accessor for OptionCondition();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  return v11;
}

uint64_t sub_10018D99C(uint64_t a1, void *a2)
{
  v4 = sub_100181310(a1, a2);
  if (v4 == 11)
  {
    v5 = type metadata accessor for DecodingError();
    swift_allocError();
    v7 = v6;
    _StringGuts.grow(_:)(24);

    v8._countAndFlagsBits = a1;
    v8._object = a2;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 11815;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v5 - 8) + 104))(v7, enum case for DecodingError.dataCorrupted(_:), v5);
    return swift_willThrow();
  }

  else
  {
    v11 = v4;
    type metadata accessor for BuiltInCondition();
    result = swift_allocObject();
    *(result + 16) = v11;
  }

  return result;
}

uint64_t sub_10018DAEC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a5;
  result = sub_100181DBC(a1, a2);
  if (v5)
  {
    return v6;
  }

  if (v7 == 1)
  {
    v6 = result;
    sub_1000040A8(&qword_1003681A0, qword_100281690);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100281610;
    type metadata accessor for Condition();
    *(v12 + 32) = sub_10018DF68(a3, a4, 1);
    result = v6;
    v16 = v6;
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_16:
    type metadata accessor for AndCondition();
    v6 = swift_allocObject();
    v6[16] = 0;
    *(v6 + 3) = v12;
    return v6;
  }

  if (v7)
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    _StringGuts.grow(_:)(48);

LABEL_14:
    sub_10018F33C(a3, a4, v7);
    v20._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 46;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.dataCorrupted(_:), v17);
    swift_willThrow();
    return v6;
  }

  v11 = *(a3 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v26 = a4;
    v27 = result;
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for Condition();
    v6 = (a3 + 48);
    do
    {
      v13 = *(v6 - 2);
      v14 = *(v6 - 1);
      v15 = *v6;
      sub_10018F33C(v13, v14, *v6);
      sub_10018DF68(v13, v14, v15);
      v6 += 24;
      sub_10018F248(v13, v14, v15);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v11;
    }

    while (v11);
    a4 = v26;
    v12 = _swiftEmptyArrayStorage;
    result = v27;
  }

  v16 = result;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v16 == 1)
  {
    type metadata accessor for OrCondition();
    v6 = swift_allocObject();
    v6[16] = 1;
    *(v6 + 3) = v12;
    return v6;
  }

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  if (_CocoaArrayWrapper.endIndex.getter() != 1)
  {
LABEL_26:

    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v24;
    _StringGuts.grow(_:)(58);
    v25._countAndFlagsBits = 0xD000000000000037;
    v25._object = 0x80000001002A1460;
    String.append(_:)(v25);
    goto LABEL_14;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

LABEL_19:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_22;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v12 + 32);

LABEL_22:

    type metadata accessor for NotCondition();
    v6 = swift_allocObject();
    sub_1000040A8(&qword_1003681A0, qword_100281690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100281610;
    *(v23 + 32) = v22;
    v6[16] = 2;
    *(v6 + 3) = v23;
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10018DF68(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    v18 = a3;
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    _StringGuts.grow(_:)(39);

    v48 = 0xD000000000000024;
    v49 = 0x80000001002A13B0;
    v45 = a1;
    v46 = a2;
    v47 = v18;
    sub_10018F33C(a1, a2, v18);
LABEL_12:
    v23._countAndFlagsBits = String.init<A>(describing:)();
    v24 = &v48;
    String.append(_:)(v23);

    v25._countAndFlagsBits = 46;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.dataCorrupted(_:), v19);
    goto LABEL_13;
  }

  if (*(a1 + 16) != 1)
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v22;
    _StringGuts.grow(_:)(48);

    v48 = 0xD00000000000002DLL;
    v49 = 0x80000001002A13E0;
    v45 = a1;
    v46 = a2;
    v47 = 1;

    goto LABEL_12;
  }

  result = sub_1000FA5AC(a1);
  if (v6)
  {
    v7 = result;
    v8 = v6;
    if (qword_100353B08 != -1)
    {
      result = swift_once();
    }

    v45 = v7;
    v46 = v8;
    __chkstk_darwin(result);
    v44 = &v45;
    v10 = sub_1000FA628(sub_10001D8F0, v43, v9);
    if (v10)
    {
      if (*(a1 + 16))
      {
        v11 = sub_100186A08(v7, v8);
        if (v12)
        {
          v13 = *(a1 + 56) + 24 * v11;
          v14 = *v13;
          v15 = *(v13 + 8);
          v16 = *(v13 + 16);
          sub_10018F33C(*v13, v15, *(v13 + 16));
          v17 = sub_10018DAEC(v7, v8, v14, v15, v16);
LABEL_30:
          v24 = v17;

          sub_10018F248(v14, v15, v16);
          return v24;
        }

        __break(1u);
        goto LABEL_35;
      }

      __break(1u);
    }

    else if (qword_100353B10 == -1)
    {
LABEL_16:
      v45 = v7;
      v46 = v8;
      __chkstk_darwin(v10);
      v44 = &v45;
      v27 = sub_1000FA628(sub_1001921CC, v43, v26);
      if ((v27 & 1) == 0)
      {
        if (qword_100353B18 == -1)
        {
LABEL_21:
          v45 = v7;
          v46 = v8;
          __chkstk_darwin(v27);
          v44 = &v45;
          v32 = sub_1000FA628(sub_1001921CC, v43, v31);
          if ((v32 & 1) == 0)
          {
            if (qword_100353B20 == -1)
            {
LABEL_26:
              v45 = v7;
              v46 = v8;
              __chkstk_darwin(v32);
              v44 = &v45;
              result = sub_1000FA628(sub_1001921CC, v43, v35);
              if (result)
              {
                if (*(a1 + 16))
                {
                  result = sub_100186A08(v7, v8);
                  if (v36)
                  {
                    v37 = *(a1 + 56) + 24 * result;
                    v14 = *v37;
                    v15 = *(v37 + 8);
                    LOBYTE(v16) = *(v37 + 16);
                    sub_10018F33C(*v37, v15, v16);
                    v17 = sub_10018D99C(v7, v8);
                    goto LABEL_30;
                  }

                  goto LABEL_42;
                }

LABEL_41:
                __break(1u);
LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

              v38 = type metadata accessor for DecodingError();
              swift_allocError();
              v40 = v39;
              v45 = 0;
              v46 = 0xE000000000000000;
              v24 = &v45;
              _StringGuts.grow(_:)(27);

              v45 = 0xD000000000000018;
              v46 = 0x80000001002A1410;
              v41._countAndFlagsBits = v7;
              v41._object = v8;
              String.append(_:)(v41);

              v42._countAndFlagsBits = 46;
              v42._object = 0xE100000000000000;
              String.append(_:)(v42);
              DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
              (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.dataCorrupted(_:), v38);
LABEL_13:
              swift_willThrow();
              return v24;
            }

LABEL_39:
            v32 = swift_once();
            goto LABEL_26;
          }

          if (*(a1 + 16))
          {
            result = sub_100186A08(v7, v8);
            if (v33)
            {
              v34 = *(a1 + 56) + 24 * result;
              v14 = *v34;
              v15 = *(v34 + 8);
              v16 = *(v34 + 16);
              sub_10018F33C(*v34, v15, *(v34 + 16));
              v17 = sub_10018D6FC(v7, v8, v14, v15, v16);
              goto LABEL_30;
            }

            __break(1u);
            goto LABEL_41;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_36:
        v27 = swift_once();
        goto LABEL_21;
      }

      if (*(a1 + 16))
      {
        v28 = sub_100186A08(v7, v8);
        if (v29)
        {
          v30 = *(a1 + 56) + 24 * v28;
          v14 = *v30;
          v15 = *(v30 + 8);
          v16 = *(v30 + 16);
          sub_10018F33C(*v30, v15, *(v30 + 16));
          v17 = sub_10018D480(v7, v8, v14, v15, v16);
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_38;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v10 = swift_once();
    goto LABEL_16;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_10018E644(void *a1)
{
  v3 = sub_1000040A8(&qword_1003629F0, &qword_10028ABD0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v63 - v5;
  sub_1000088DC(a1, a1[3]);
  v7 = _s3KeyCMa_0();
  sub_1001910F4(&qword_1003629F8, _s3KeyCMa_0, &unk_10028AAA0);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    inited = swift_initStaticObject();
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v68 = v8;
    v12 = swift_initStaticObject();
    inited = v12;
    v13 = KeyedDecodingContainer.contains(_:)();
    v14 = _swiftEmptyArrayStorage;
    if (v13)
    {
      sub_1000040A8(&qword_10035AA88, qword_10027EB60);
      v70 = v12;
      sub_10018F264();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v14 = inited;
    }

    v69 = v14;
    v15 = swift_initStaticObject();
    inited = v15;
    v16 = KeyedDecodingContainer.contains(_:)();
    if (v16)
    {
      v70 = v15;
      sub_10018F1F4(v16, v17, v18);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v67 = v11;
      v23 = inited;
      v24 = v72;
      v25 = v73;
      v66 = sub_10018DF68(inited, v72, v73);
      sub_10018F248(v23, v24, v25);
      v37 = v66;
    }

    else
    {
      v67 = v11;
      type metadata accessor for NoPrerequisites();
      v37 = swift_allocObject();
    }

    v19 = swift_initStaticObject();
    inited = v19;
    v20 = KeyedDecodingContainer.contains(_:)();
    if (v20)
    {
      inited = v19;
      sub_10018F1A0(v20, v21, v22);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v66 = v37;
      v26 = v70;
    }

    else
    {
      v66 = v37;
      v26 = 8;
    }

    v27 = *(sub_10018ADD8(a1) + 24);
    if (v27)
    {

      if (*(v27 + 16))
      {
        v28 = sub_100186A08(v68, v67);
        if (v29)
        {
          v30 = (*(v27 + 56) + 72 * v28);
          v32 = v30[2];
          v31 = v30[3];
          v33 = v30[1];
          v74 = *v30;
          v75 = v33;
          v76 = v32;
          v77 = v31;
          sub_1000B4E30(&v74, &inited);

          inited = swift_initStaticObject();
          sub_10018F098(inited, v34, v35);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v36 = v78;
          sub_1000040A8(&qword_100362A08, &unk_10028ABD8);
          inited = swift_initStaticObject();
          sub_10018F0EC();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v44 = v70;
          type metadata accessor for Question();
          v7 = swift_allocObject();
          v45 = v75;
          *(v7 + 72) = v74;
          *(v7 + 88) = v45;
          v46 = v77;
          *(v7 + 104) = v76;
          v47 = v67;
          *(v7 + 16) = v68;
          *(v7 + 24) = v47;
          *(v7 + 32) = v36;
          v48 = v44;
          *(v7 + 40) = v44;
          v49 = v66;
          v50 = v69;
          *(v7 + 48) = v66;
          *(v7 + 56) = v50;
          *(v7 + 64) = v26;
          *(v7 + 120) = v46;
          sub_1000B4E30(&v74, &inited);

          v66 = v49;

          v51 = sub_1000924D0(v48, &v74);
          *(v7 + 136) = v51;
          v65 = v48;
          if (*(&v76 + 1))
          {
            v52 = v51;
            v53 = _swiftEmptyArrayStorage;
            inited = _swiftEmptyArrayStorage;
            v54 = *(v51 + 2);
            v48 = 0;
            v55 =  + 40;
LABEL_22:
            v56 = (v55 + 16 * v48);
            while (1)
            {
              if (v54 == v48)
              {

                v48 = v65;
                goto LABEL_31;
              }

              if (v48 >= *(v52 + 2))
              {
                break;
              }

              v57 = v56 + 16;
              ++v48;
              v58 = *v56;
              v56 += 16;
              if (v58 == 1)
              {
                v68 = v55;
                v69 = v54;
                v67 = *(v57 - 3);

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v64 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v53 = inited;
                v55 = v68;
                v54 = v69;
                goto LABEL_22;
              }
            }

            __break(1u);
LABEL_51:
            __break(1u);
          }

          else
          {

            v53 = v48;
LABEL_31:
            *(v7 + 144) = v53;
            v69 = *(&v77 + 1);
            if (!*(&v77 + 1))
            {
LABEL_48:

              sub_1000B4E8C(&v74);
LABEL_54:
              v61 = 0;
LABEL_55:
              *(v7 + 152) = v61;
              (*(v4 + 8))(v6, v3);
              sub_100008964(a1);
              return v7;
            }

            v53 = v77;
            if (!(v48 >> 62))
            {
              v59 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v68 = v77;
              if (!v59)
              {
LABEL_53:
                sub_1000B4E8C(&v74);

                goto LABEL_54;
              }

LABEL_34:
              v60 = 0;
              v67 = (v48 & 0xC000000000000001);
              v64 = v48 & 0xFFFFFFFFFFFFFF8;
              v63 = v59;
              while (1)
              {
                if (v67)
                {
                  v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v53 = (v60 + 1);
                  if (__OFADD__(v60, 1))
                  {
                    goto LABEL_47;
                  }
                }

                else
                {
                  if (v60 >= *(v64 + 16))
                  {
                    goto LABEL_51;
                  }

                  v61 = *(v48 + 8 * v60 + 32);

                  v53 = (v60 + 1);
                  if (__OFADD__(v60, 1))
                  {
LABEL_47:
                    __break(1u);
                    goto LABEL_48;
                  }
                }

                v62 = *(v61 + 16) == v68 && v69 == *(v61 + 24);
                if (v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                ++v60;
                v48 = v65;
                if (v53 == v63)
                {
                  goto LABEL_53;
                }
              }

              sub_1000B4E8C(&v74);
              goto LABEL_55;
            }
          }

          v59 = _CocoaArrayWrapper.endIndex.getter();
          v68 = v53;
          if (!v59)
          {
            goto LABEL_53;
          }

          goto LABEL_34;
        }
      }

      v7 = type metadata accessor for DecodingError();
      swift_allocError();
      v69 = v38;
      sub_1000088DC(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      inited = 0;
      v72 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      inited = 0xD000000000000023;
      v72 = 0x80000001002A1380;
      v39._countAndFlagsBits = v68;
      v39._object = v67;
      String.append(_:)(v39);

      v40._countAndFlagsBits = 11815;
      v40._object = 0xE200000000000000;
      String.append(_:)(v40);
      v41 = v69;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v41, enum case for DecodingError.dataCorrupted(_:), v7);
      swift_willThrow();
    }

    else
    {

      v69 = type metadata accessor for DecodingError();
      swift_allocError();
      v68 = v42;
      v7 = a1[3];
      sub_1000088DC(a1, v7);
      dispatch thunk of Decoder.codingPath.getter();
      v43 = v68;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v69 - 8) + 104))(v43, enum case for DecodingError.dataCorrupted(_:));
      swift_willThrow();
    }

    (*(v4 + 8))(v6, v3);
  }

  sub_100008964(a1);
  return v7;
}

unint64_t sub_10018F098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362A00;
  if (!qword_100362A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A00);
  }

  return result;
}

unint64_t sub_10018F0EC()
{
  result = qword_100362A10;
  if (!qword_100362A10)
  {
    sub_100008CF0(&qword_100362A08, &unk_10028ABD8);
    sub_1001910F4(&qword_100362A18, type metadata accessor for Option, &unk_10028A608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A10);
  }

  return result;
}

unint64_t sub_10018F1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362A20;
  if (!qword_100362A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A20);
  }

  return result;
}

unint64_t sub_10018F1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362A28;
  if (!qword_100362A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A28);
  }

  return result;
}

double sub_10018F248(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_10018F264()
{
  result = qword_100362A30;
  if (!qword_100362A30)
  {
    v1 = sub_100008CF0(&qword_10035AA88, qword_10027EB60);
    sub_10018F2E8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A30);
  }

  return result;
}

unint64_t sub_10018F2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362A38;
  if (!qword_100362A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A38);
  }

  return result;
}

uint64_t sub_10018F33C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return v3;
}

unint64_t sub_10018F358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362A50;
  if (!qword_100362A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A50);
  }

  return result;
}

unint64_t sub_10018F3AC()
{
  result = qword_100362A58;
  if (!qword_100362A58)
  {
    v1 = sub_100008CF0(&qword_10035AA88, qword_10027EB60);
    sub_10018F430(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A58);
  }

  return result;
}

unint64_t sub_10018F430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362A60;
  if (!qword_100362A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A60);
  }

  return result;
}

unint64_t sub_10018F484()
{
  result = qword_100362A68;
  if (!qword_100362A68)
  {
    sub_100008CF0(&qword_100362A08, &unk_10028ABD8);
    sub_1001910F4(&qword_100362A70, type metadata accessor for Option, &unk_10028A5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A68);
  }

  return result;
}

unint64_t sub_10018F538()
{
  result = qword_100362A88;
  if (!qword_100362A88)
  {
    v1 = sub_100008CF0(&qword_100362A80, &qword_10028ABF8);
    sub_10018F5BC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A88);
  }

  return result;
}

unint64_t sub_10018F5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362A90;
  if (!qword_100362A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A90);
  }

  return result;
}

uint64_t sub_10018F610(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_1000088DC(v6, v6[3]);
    v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_10018203C(v3, v4);

    sub_100008964(v6);
  }

  return sub_100008964(a1);
}

void *sub_10018F6D0(void *a1, uint64_t (*a2)(uint64_t))
{
  v5 = sub_1000088DC(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    sub_1000088DC(v8, v8[3]);
    v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v5 = a2(v6);

    sub_100008964(v8);
  }

  sub_100008964(a1);
  return v5;
}

uint64_t sub_10018F7C0(void *a1, uint64_t (*a2)(void))
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_100008964(a1);
  }

  sub_1000088DC(v9, v9[3]);
  v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v7 = sub_1001822DC(v5, v6, a2);

  sub_100008964(v9);
  sub_100008964(a1);
  return v7 & 1;
}

unint64_t sub_10018F8B0(void *a1)
{
  v3 = sub_1000040A8(&qword_100362A98, &qword_10028AC00);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = sub_1000088DC(a1, a1[3]);
  _s3KeyCMa_1();
  sub_1001910F4(&qword_100362AA0, _s3KeyCMa_1, &unk_10028AAA0);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100008964(a1);
  }

  else
  {
    inited = swift_initStaticObject();
    sub_10018FA78(inited, v8, v9);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v13;
    sub_100008964(a1);
  }

  return v7;
}

unint64_t sub_10018FA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362AA8;
  if (!qword_100362AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362AA8);
  }

  return result;
}

unint64_t sub_10018FACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362AB8;
  if (!qword_100362AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362AB8);
  }

  return result;
}

uint64_t sub_10018FB20(void *a1)
{
  v3 = sub_1000040A8(&qword_100362AC0, &qword_10028AC10);
  v39 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v10 = a1[3];
  v9 = a1[4];
  v40 = a1;
  sub_1000088DC(a1, v10);
  _s3KeyCMa_2();
  sub_1001910F4(&qword_100362AC8, _s3KeyCMa_2, &unk_10028AAA0);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v13 = v40;
  }

  else
  {
    inited = swift_initStaticObject();
    v11 = v8;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    v37 = v12;
    v17 = swift_initStaticObject();
    inited = v17;
    if (KeyedDecodingContainer.contains(_:)())
    {
      inited = v17;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v11;
      inited = swift_initStaticObject();
      sub_100190160(inited, v25, v26);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v30 = v48;
      inited = swift_initStaticObject();
      v36 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v39 + 8))(v5, v3);
    }

    else
    {
      v38 = v11;
      v30 = 0;
      v36 = 40;
    }

    v18 = v40;
    v19 = sub_10018ADD8(v40);
    v20 = *(v19 + 24);
    if (v20)
    {
      v21 = *(v19 + 56);
      v22 = *(v19 + 48);
      v43 = *(v19 + 16);
      v44 = v20;
      v45 = *(v19 + 32);
      v46 = v22;
      v47 = v21 & 1;

      sub_1001826B8(v37, v16);
      v24 = v23;

      if (v24)
      {
        (*(v39 + 8))(v38, v3);
        type metadata accessor for Option();
        v9 = swift_allocObject();
        *(v9 + 16) = v37;
        *(v9 + 24) = v16;
        *(v9 + 32) = v24;
        *(v9 + 40) = v30;
        *(v9 + 48) = v36;
        sub_100008964(v18);
        return v9;
      }

      v31 = type metadata accessor for DecodingError();
      swift_allocError();
      v33 = v32;
      sub_1000088DC(v18, v18[3]);
      dispatch thunk of Decoder.codingPath.getter();
      inited = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      inited = 0xD000000000000021;
      v42 = 0x80000001002A15D0;
      v34._countAndFlagsBits = v37;
      v34._object = v16;
      String.append(_:)(v34);

      v35._countAndFlagsBits = 11815;
      v35._object = 0xE200000000000000;
      String.append(_:)(v35);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v31 - 8) + 104))(v33, enum case for DecodingError.dataCorrupted(_:), v31);
      swift_willThrow();
    }

    else
    {

      v27 = type metadata accessor for DecodingError();
      swift_allocError();
      v29 = v28;
      sub_1000088DC(v18, v18[3]);
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v27 - 8) + 104))(v29, enum case for DecodingError.dataCorrupted(_:), v27);
      swift_willThrow();
    }

    v9 = v39 + 8;
    (*(v39 + 8))(v38, v3);
    v13 = v18;
  }

  sub_100008964(v13);
  return v9;
}

unint64_t sub_100190160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362AD0;
  if (!qword_100362AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362AD0);
  }

  return result;
}

unint64_t sub_1001901B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362AE0;
  if (!qword_100362AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362AE0);
  }

  return result;
}

unint64_t sub_100190208()
{
  result = qword_100362B18;
  if (!qword_100362B18)
  {
    sub_100008CF0(&qword_100362B10, &qword_10028AC40);
    sub_1001910F4(&qword_100362A78, type metadata accessor for Condition, &unk_10028A558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362B18);
  }

  return result;
}

uint64_t sub_1001902BC(void *a1)
{
  v3 = sub_1000040A8(&qword_100362B20, &qword_10028AC48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnaireStringsBundle.Key();
  sub_1001910F4(&qword_100362B28, type metadata accessor for QuestionnaireStringsBundle.Key, &unk_10028AAA0);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100008964(a1);
  }

  else
  {
    inited = swift_initStaticObject();
    v11 = inited;
    if (KeyedDecodingContainer.contains(_:)())
    {
      v11 = inited;
      v7 = KeyedDecodingContainer.decode(_:forKey:)();
    }

    else
    {
      v7 = 0;
    }

    v11 = swift_initStaticObject();
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    sub_100008964(a1);
  }

  return v7;
}

uint64_t sub_100190514(void *a1)
{
  v3 = sub_1000040A8(&qword_100362B38, &qword_10028AC58);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - v5;
  v7 = a1[3];
  sub_1000088DC(a1, v7);
  type metadata accessor for QuestionnaireRepresentation.Key();
  sub_1001910F4(&qword_100362B40, type metadata accessor for QuestionnaireRepresentation.Key, &unk_10028AAA0);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    inited = swift_initStaticObject();
    v46 = inited;
    v9 = KeyedDecodingContainer.contains(_:)();
    if (v9)
    {
      v52[0] = inited;
      sub_100190BC4(v9, v10, v11);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v7 = v46;
      v12 = v47;
    }

    else
    {
      v7 = 0;
      v12 = 0;
    }

    v13 = sub_10018AC1C(a1);
    *(v13 + 16) = v7;
    *(v13 + 24) = v12;
    *(v13 + 32) = 0;

    if (v7 == 2)
    {
      sub_1001809F0(a1, v52);
      sub_1000040A8(&qword_100362B48, &qword_10028AC60);
      v53 = swift_initStaticObject();
      sub_100190A98();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v38 = 2;
      v43 = v3;
      v15 = v46;
      v16 = sub_1000088DC(v52, v52[3]);
      v17 = v16;
      v18 = v15[2];
      if (v18)
      {
        v40 = v16;
        v41 = v12;
        v42 = v4;
        v46 = _swiftEmptyArrayStorage;
        v19 = v15;
        sub_100187254(0, v18, 0);
        v20 = v46;
        v39 = v19;
        v21 = v19 + 7;
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;
          v46 = v20;
          v25 = v20[2];
          v24 = v20[3];
          v44 = v22;
          v45 = v25 + 1;

          if (v25 >= v24 >> 1)
          {
            sub_100187254((v24 > 1), v45, 1);
            v20 = v46;
          }

          v26 = v44;
          v20[2] = v45;
          v27 = &v20[2 * v25];
          v27[4] = v26;
          v27[5] = v23;
          v21 += 4;
          --v18;
        }

        while (v18);

        v12 = v41;
        v4 = v42;
        v17 = v40;
      }

      else
      {

        v20 = _swiftEmptyArrayStorage;
      }

      *(*v17 + 24) = v20;

      v46 = swift_initStaticObject();
      KeyedDecodingContainer.decode(_:forKey:)();
      v53 = swift_initStaticObject();
      sub_100190B70(v53, v28, v29);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v41 = v12;
      v42 = v4;
      v31 = v46;
      v30 = v47;
      v32 = v48;
      v33 = v49;
      v34 = v50;
      LODWORD(v45) = v51;
      v35 = sub_10018ADD8(a1);
      v44 = *(v35 + 24);
      *(v35 + 16) = v31;
      *(v35 + 24) = v30;
      *(v35 + 32) = v32;
      *(v35 + 40) = v33;
      *(v35 + 48) = v34;
      *(v35 + 56) = v45;

      type metadata accessor for Questionnaire();
      v53 = swift_initStaticObject();
      sub_1001910F4(&qword_100362B68, type metadata accessor for Questionnaire, &unk_10028A878);
      v36 = v43;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v42 + 8))(v6, v36);
      sub_100008964(v52);
      v7 = v38;
    }

    else
    {
      (*(v4 + 8))(v6, v3);
    }
  }

  sub_100008964(a1);
  return v7;
}

unint64_t sub_100190A98()
{
  result = qword_100362B50;
  if (!qword_100362B50)
  {
    v1 = sub_100008CF0(&qword_100362B48, &qword_10028AC60);
    sub_100190B1C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362B50);
  }

  return result;
}

unint64_t sub_100190B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362B58;
  if (!qword_100362B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362B58);
  }

  return result;
}

unint64_t sub_100190B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362B60;
  if (!qword_100362B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362B60);
  }

  return result;
}

unint64_t sub_100190BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362B70;
  if (!qword_100362B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362B70);
  }

  return result;
}

unint64_t sub_100190C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362B88;
  if (!qword_100362B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362B88);
  }

  return result;
}

unint64_t sub_100190C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362B98;
  if (!qword_100362B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362B98);
  }

  return result;
}

unint64_t sub_100190CF0()
{
  result = qword_100362BA0;
  if (!qword_100362BA0)
  {
    v1 = sub_100008CF0(&qword_100362B48, &qword_10028AC60);
    sub_100190D74(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362BA0);
  }

  return result;
}

unint64_t sub_100190D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362BA8;
  if (!qword_100362BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362BA8);
  }

  return result;
}

uint64_t sub_100190E00(void *a1)
{
  v3 = sub_1000040A8(&qword_100362BB0, &qword_10028AC78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnaireRegion.Key();
  sub_1001910F4(&qword_100362BB8, type metadata accessor for QuestionnaireRegion.Key, &unk_10028AAA0);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100008964(a1);
    return v7;
  }

  else
  {
    sub_1000040A8(&qword_100362BC0, &qword_10028AC80);
    inited = swift_initStaticObject();
    sub_10019113C();
    result = KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v4;
    v9 = 0;
    v10 = v29;
    v11 = v29[2];
    v7 = _swiftEmptyArrayStorage;
    v12 = 48;
LABEL_5:
    v13 = v12 + 24 * v9;
    while (1)
    {
      if (v11 == v9)
      {

        (*(v27 + 8))(v6, v3);
        sub_100008964(a1);
        return v7;
      }

      if (v9 >= v10[2])
      {
        break;
      }

      ++v9;
      v14 = v13 + 24;
      v15 = *(v10 + v13);
      v13 += 24;
      if (v15)
      {
        v16 = *(v10 + v14 - 32);
        v25 = *(v10 + v14 - 40);
        v26 = v12;
        v24 = v16;

        result = swift_isUniquelyReferenced_nonNull_native();
        v29 = v7;
        if ((result & 1) == 0)
        {
          result = sub_100187334(0, v7[2] + 1, 1);
          v7 = v29;
        }

        v18 = v7[2];
        v17 = v7[3];
        v19 = v18 + 1;
        v12 = v26;
        if (v18 >= v17 >> 1)
        {
          v22 = v7[2];
          v23 = v18 + 1;
          result = sub_100187334((v17 > 1), v18 + 1, 1);
          v18 = v22;
          v19 = v23;
          v12 = v26;
          v7 = v29;
        }

        v7[2] = v19;
        v20 = &v7[3 * v18];
        v20[4] = v25;
        v20[5] = v24;
        v20[6] = v15;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001910F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10019113C()
{
  result = qword_100362BC8;
  if (!qword_100362BC8)
  {
    v1 = sub_100008CF0(&qword_100362BC0, &qword_10028AC80);
    sub_1001911C0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362BC8);
  }

  return result;
}

unint64_t sub_1001911C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362BD0;
  if (!qword_100362BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362BD0);
  }

  return result;
}

unint64_t sub_100191214()
{
  result = qword_100362BE8;
  if (!qword_100362BE8)
  {
    v1 = sub_100008CF0(&qword_100362BC0, &qword_10028AC80);
    sub_100191298(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362BE8);
  }

  return result;
}

unint64_t sub_100191298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362BF0;
  if (!qword_100362BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362BF0);
  }

  return result;
}

unint64_t sub_1001912EC()
{
  result = qword_10035CF30;
  if (!qword_10035CF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10035CF30);
  }

  return result;
}

uint64_t sub_100191338(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v53 = a3;
  v56 = a1;
  v57 = a2;
  v61 = type metadata accessor for String.Encoding();
  v55 = *(v61 - 8);
  __chkstk_darwin(v61);
  v54 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CodingUserInfoKey();
  v52 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSONDecoder.KeyDecodingStrategy();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for JSONDecoder.DataDecodingStrategy();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v16 = JSONDecoder.init()();
  (*(v13 + 104))(v15, enum case for JSONDecoder.DataDecodingStrategy.base64(_:), v12);
  v17 = v16;
  dispatch thunk of JSONDecoder.dataDecodingStrategy.setter();
  (*(v9 + 104))(v11, enum case for JSONDecoder.KeyDecodingStrategy.useDefaultKeys(_:), v8);
  dispatch thunk of JSONDecoder.keyDecodingStrategy.setter();
  if (qword_100353AF0 != -1)
  {
    swift_once();
  }

  v18 = sub_10000F53C(v5, qword_100381F20);
  v19 = *(v52 + 16);
  v19(v7, v18, v5);
  v20 = type metadata accessor for QuestionnaireRevisionContainer();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 1;
  v60 = v20;
  v59[0] = v21;
  v22 = dispatch thunk of JSONDecoder.userInfo.modify();
  sub_10017FDC8(v59, v7);
  v22(v58, 0);
  if (qword_100353B00 != -1)
  {
    swift_once();
  }

  v23 = sub_10000F53C(v5, qword_100381F50);
  v19(v7, v23, v5);
  v24 = type metadata accessor for QuestionnairePresentationBuddyContainer();
  v25 = swift_allocObject();
  v25[1] = 0u;
  v25[2] = 0u;
  *(v25 + 41) = 0u;
  v60 = v24;
  v59[0] = v25;
  v26 = dispatch thunk of JSONDecoder.userInfo.modify();
  sub_10017FDC8(v59, v7);
  v26(v58, 0);
  if (qword_100353AF8 != -1)
  {
    swift_once();
  }

  v27 = sub_10000F53C(v5, qword_100381F38);
  v19(v7, v27, v5);
  v28 = v53[3];
  v29 = sub_1000088DC(v53, v28);
  v60 = v28;
  v30 = sub_10007E56C(v59);
  (*(*(v28 - 8) + 16))(v30, v29, v28);
  v31 = dispatch thunk of JSONDecoder.userInfo.modify();
  sub_10017FDC8(v59, v7);
  v31(v58, 0);
  v32 = v54;
  static String.Encoding.utf8.getter();
  v33 = String.data(using:allowLossyConversion:)();
  v35 = v34;
  v36 = (*(v55 + 8))(v32, v61);
  if (v35 >> 60 == 15)
  {
    v39 = type metadata accessor for DecodingError();
    swift_allocError();
    v41 = v40;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v39 - 8) + 104))(v41, enum case for DecodingError.dataCorrupted(_:), v39);
    swift_willThrow();
LABEL_20:

    return v39;
  }

  sub_100191E6C(v36, v37, v38);
  v39 = v17;
  v42 = v51[1];
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v42)
  {
LABEL_19:
    sub_10000F4D4(v33, v35);
    goto LABEL_20;
  }

  v43 = v59[0];
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_10000F53C(v44, qword_100381E48);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Successfully created questionnaire region instance from JSON", v47, 2u);
  }

  if (!*(v43 + 16))
  {

    goto LABEL_18;
  }

  v39 = *(v43 + 48);

  if (!v39)
  {
LABEL_18:
    v39 = type metadata accessor for DecodingError();
    swift_allocError();
    v49 = v48;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v39 - 8) + 104))(v49, enum case for DecodingError.dataCorrupted(_:), v39);
    swift_willThrow();
    goto LABEL_19;
  }

  sub_10000F4D4(v33, v35);

  return v39;
}

id sub_100191B10(id a1, uint64_t a2, unint64_t a3, __n128 a4)
{
  v8 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v8 - 8);
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 pathForResource:v9 ofType:v10];

  if (v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.Encoding.utf8.getter();
    v12 = String.init(contentsOfFile:encoding:)();
    if (v4)
    {
    }

    else
    {
      v25 = v13;
      v26 = v12;

      v27 = type metadata accessor for BundleTranslationProvider();
      v28 = swift_allocObject();
      *(v28 + 16) = a1;
      *(v28 + 24) = _swiftEmptyArrayStorage;
      v32[3] = v27;
      v32[4] = &off_100334598;
      v32[0] = v28;
      v29 = a1;
      a1 = sub_100191338(v26, v25, v32, v30);

      sub_100008964(v32);
    }
  }

  else
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000F53C(v14, qword_100381E48);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v17 = 136446466;
      *(v17 + 4) = sub_10017C9E8(a2, a3, v32);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_10017C9E8(1852797802, 0xE400000000000000, v32);
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to retrieve resource file name for %{public}s.%{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    a1 = [a1 bundlePath];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    sub_100091C0C(v21, v22, v23);
    swift_allocError();
    *v24 = v18;
    *(v24 + 8) = v20;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = 16;
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_100191E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100362BF8;
  if (!qword_100362BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362BF8);
  }

  return result;
}

uint64_t sub_100191F28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100191F70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100191FCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100192014(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1001920B4()
{
  result = qword_100362C18;
  if (!qword_100362C18)
  {
    v1 = sub_100008CF0(&qword_100362C10, &qword_10028AD88);
    sub_10018F1F4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362C18);
  }

  return result;
}

unint64_t sub_100192138()
{
  result = qword_100362C28;
  if (!qword_100362C28)
  {
    v1 = sub_100008CF0(&qword_100362C20, &qword_10028AD90);
    sub_10018F1F4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362C28);
  }

  return result;
}

uint64_t sub_1001921F8(uint64_t result, unint64_t a2)
{
  v4 = v2[7];
  if (v4)
  {
    v5 = v2;
    v6 = result;
    v7 = v2[6] == result && v4 == a2;
    if (v7 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      if (qword_100353A10 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000F53C(v8, qword_100381C80);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v26 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_10017C9E8(v6, a2, &v26);
        _os_log_impl(&_mh_execute_header, v9, v10, "Canceling alert with id == %s", v11, 0xCu);
        sub_100008964(v12);
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v13 = *(v5 + 4);
      v24[0] = *(v5 + 3);
      v24[1] = v13;
      v24[2] = *(v5 + 5);
      v25 = v5[12];
      sub_100006C20(v24, v23, &qword_1003618C8, &unk_100289D80);
      sub_100192AEC(&v26);
      v14 = v5[6];
      v15 = v5[7];
      v16 = v5[8];
      v17 = v5[9];
      v18 = v27;
      v19 = v28;
      *(v5 + 3) = v26;
      *(v5 + 4) = v18;
      v20 = v5[10];
      v21 = v5[11];
      v22 = v5[12];
      *(v5 + 5) = v19;
      v5[12] = v29;
      sub_10017E0BC(v14, v15, v16, v17, v20, v21, v22);
      sub_100192D88(v24);
      return sub_100193518(v24);
    }
  }

  return result;
}

double sub_100192410()
{
  v1 = v0;
  if (qword_100353A18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "cancelAllAlerts", v5, 2u);
  }

  v7 = *(v1 + 56);
  if (v7)
  {
    v8 = *(v1 + 48);

    sub_1001921F8(v8, v7);
  }

  return result;
}

uint64_t sub_100192534(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100192564@<X0>(void *a1@<X0>, Swift::String *a2@<X8>)
{
  _StringGuts.grow(_:)(22);

  v30 = 0xD000000000000014;
  v31 = 0x80000001002A17D0;
  v4 = a1[2];
  if (v4)
  {
    v5 = *a1;
  }

  else
  {
    v5 = 0;
  }

  v32 = v5;
  v33 = v4 == 0;
  sub_1000040A8(&qword_100358098, &qword_10028AE60);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7 = v31;
  v29 = v30;
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v34._object = 0x80000001002A1810;
  v10._object = 0x80000001002A17F0;
  v11.value._object = 0x80000001002962C0;
  v34._countAndFlagsBits = 0xD000000000000067;
  v10._countAndFlagsBits = 0xD000000000000012;
  v11.value._countAndFlagsBits = 0xD000000000000012;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v34);

  v14 = [v8 mainBundle];
  v35._object = 0x80000001002A18C0;
  v15._countAndFlagsBits = 0xD000000000000038;
  v15._object = 0x80000001002A1880;
  v16.value._object = 0x80000001002962C0;
  v35._countAndFlagsBits = 0xD00000000000006ALL;
  v16.value._countAndFlagsBits = 0xD000000000000012;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v35);

  v19 = [v8 mainBundle];
  v20._countAndFlagsBits = 0xD000000000000011;
  v36._object = 0x80000001002A1930;
  v20._object = 0x80000001002988E0;
  v21.value._object = 0x80000001002962C0;
  v36._countAndFlagsBits = 0xD000000000000030;
  v21.value._countAndFlagsBits = 0xD000000000000012;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v36);

  sub_1000040A8(&qword_100362D18, &qword_10028AE68);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100279160;
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v27 = *(a1 + 1);
  *(v26 + 24) = *a1;
  *(v26 + 16) = v25;
  *(v26 + 40) = v27;
  *(v26 + 56) = a1[4];
  *(v26 + 64) = v29;
  *(v26 + 72) = v7;
  *(v24 + 32) = v23;
  *(v24 + 48) = sub_100193508;
  *(v24 + 56) = v26;
  sub_100006C20(a1, &v30, &qword_1003580C0, &qword_10028AE70);
  a2->_countAndFlagsBits = v29;
  a2->_object = v7;
  a2[1] = v13;
  a2[2] = v18;
  a2[3]._countAndFlagsBits = v24;
}

void *sub_100192888@<X0>(Swift::String *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v21._object = 0x80000001002A1990;
  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = 0x80000001002A1970;
  v5.value._object = 0x80000001002962C0;
  v21._countAndFlagsBits = 0xD000000000000067;
  v5.value._countAndFlagsBits = 0xD000000000000012;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v21);

  v8 = [v2 mainBundle];
  v22._object = 0x80000001002A1A40;
  v9._countAndFlagsBits = 0xD000000000000038;
  v9._object = 0x80000001002A1A00;
  v10.value._object = 0x80000001002962C0;
  v22._countAndFlagsBits = 0xD00000000000006ALL;
  v10.value._countAndFlagsBits = 0xD000000000000012;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v22);

  v13 = [v2 mainBundle];
  v23._object = 0x80000001002A1AD0;
  v14._countAndFlagsBits = 0xD000000000000017;
  v14._object = 0x80000001002A1AB0;
  v15.value._object = 0x80000001002962C0;
  v23._countAndFlagsBits = 0xD00000000000002FLL;
  v15.value._countAndFlagsBits = 0xD000000000000012;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v23);

  sub_1000040A8(&qword_100362D18, &qword_10028AE68);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100279160;
  v19 = swift_allocObject();
  swift_weakInit();
  result = swift_allocObject();
  result[2] = v19;
  result[3] = 0xD000000000000013;
  result[4] = 0x80000001002945E0;
  *(v18 + 32) = v17;
  *(v18 + 48) = sub_100193624;
  *(v18 + 56) = result;
  a1->_countAndFlagsBits = 0xD000000000000013;
  a1->_object = 0x80000001002945E0;
  a1[1] = v7;
  a1[2] = v12;
  a1[3]._countAndFlagsBits = v18;
  return result;
}

double sub_100192AEC(uint64_t *a1)
{
  v3 = v1[6];
  v4 = v1[7];
  v6 = v1[8];
  v5 = v1[9];
  v8 = v1[10];
  v7 = v1[11];
  v9 = v1[12];
  v10 = a1[1];
  if (!v4)
  {
    if (!v10)
    {
      sub_100193580(v1[6], 0, v1[8], v1[9], v1[10], v1[11], v1[12]);
      sub_100006C20(a1, v28, &qword_1003618C8, &unk_100289D80);
      v11 = v3;
      v12 = 0;
      v13 = v6;
      return sub_10017E0BC(v11, v12, v13, v5, v8, v7, v9);
    }

    goto LABEL_7;
  }

  if (!v10)
  {
LABEL_7:
    v16 = *a1;
    v19 = a1[2];
    v21 = a1[3];
    v23 = a1[4];
    v25 = a1[5];
    v27 = a1[6];
    sub_100193580(v1[6], v1[7], v6, v5, v8, v7, v9);
    sub_100006C20(a1, v28, &qword_1003618C8, &unk_100289D80);
    sub_10017E0BC(v3, v4, v6, v5, v8, v7, v9);
    sub_10017E0BC(v16, v10, v19, v21, v23, v25, v27);
    goto LABEL_8;
  }

  v18 = a1[2];
  v20 = a1[3];
  v22 = a1[4];
  v24 = a1[5];
  v26 = a1[6];
  if (v3 == *a1 && v4 == v10)
  {
    sub_100193580(v3, v4, v6, v5, v8, v7, v9);
    sub_100006C20(a1, v28, &qword_1003618C8, &unk_100289D80);
    sub_10017E0BC(v3, v4, v18, v20, v22, v24, v26);
    v11 = v3;
    v12 = v4;
    v13 = v6;
    return sub_10017E0BC(v11, v12, v13, v5, v8, v7, v9);
  }

  v17 = *a1;
  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_100193580(v3, v4, v6, v5, v8, v7, v9);
  sub_100006C20(a1, v28, &qword_1003618C8, &unk_100289D80);
  sub_10017E0BC(v17, v10, v18, v20, v22, v24, v26);
  result = sub_10017E0BC(v3, v4, v6, v5, v8, v7, v9);
  if ((v15 & 1) == 0)
  {
LABEL_8:
    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100018C74();
    Subject<>.send()();
  }

  return result;
}

double sub_100192D88(uint64_t *a1)
{
  v2 = v1;
  v4 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v6 = v1[9];
  v9 = v1[10];
  v8 = v1[11];
  v10 = v1[12];
  v11 = a1[1];
  if (!v5)
  {
    if (!v11)
    {
      sub_100193580(v4, 0, v7, v6, v9, v8, v10);
      sub_100006C20(a1, &v48, &qword_1003618C8, &unk_100289D80);
      v12 = v4;
      v13 = 0;
      v14 = v7;
      return sub_10017E0BC(v12, v13, v14, v6, v9, v8, v10);
    }

    goto LABEL_7;
  }

  if (!v11)
  {
LABEL_7:
    v34 = *a1;
    v37 = a1[2];
    v39 = a1[3];
    v41 = a1[4];
    v43 = a1[5];
    v45 = a1[6];
    sub_100193580(v4, v5, v7, v6, v9, v8, v10);
    sub_100006C20(a1, &v48, &qword_1003618C8, &unk_100289D80);
    sub_10017E0BC(v4, v5, v7, v6, v9, v8, v10);
    sub_10017E0BC(v34, v11, v37, v39, v41, v43, v45);
LABEL_8:
    if (qword_100353A18 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000F53C(v15, qword_100381C98);
    sub_100006C20(a1, &v48, &qword_1003618C8, &unk_100289D80);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    sub_100193518(a1);

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v18 = 136446466;
      v19 = *(a1 + 1);
      v48 = *a1;
      v49 = v19;
      v50 = *(a1 + 2);
      v51 = a1[6];
      sub_100006C20(a1, v46, &qword_1003618C8, &unk_100289D80);
      sub_1000040A8(&qword_1003618C8, &unk_100289D80);
      v20 = String.init<A>(describing:)();
      v22 = sub_10017C9E8(v20, v21, &v47);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      v23 = v2[7];
      v24 = v2[8];
      v25 = v2[9];
      v26 = v2[10];
      v27 = v2[11];
      v28 = v2[12];
      *&v48 = v2[6];
      *(&v48 + 1) = v23;
      *&v49 = v24;
      *(&v49 + 1) = v25;
      *&v50 = v26;
      *(&v50 + 1) = v27;
      v51 = v28;
      sub_100193580(v48, v23, v24, v25, v26, v27, v28);
      v29 = String.init<A>(describing:)();
      v31 = sub_10017C9E8(v29, v30, &v47);

      *(v18 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v16, v17, "activeAlert changed from: %{public}s to: %{public}s", v18, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100018C74();
    Subject<>.send()();
    return result;
  }

  v36 = a1[2];
  v38 = a1[3];
  v40 = a1[4];
  v42 = a1[5];
  v44 = a1[6];
  if (v4 == *a1 && v5 == v11)
  {
    sub_100193580(v4, v5, v7, v6, v9, v8, v10);
    sub_100006C20(a1, &v48, &qword_1003618C8, &unk_100289D80);
    sub_10017E0BC(v4, v5, v36, v38, v40, v42, v44);
    v12 = v4;
    v13 = v5;
    v14 = v7;
    return sub_10017E0BC(v12, v13, v14, v6, v9, v8, v10);
  }

  v35 = *a1;
  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_100193580(v4, v5, v7, v6, v9, v8, v10);
  sub_100006C20(a1, &v48, &qword_1003618C8, &unk_100289D80);
  sub_10017E0BC(v35, v11, v36, v38, v40, v42, v44);
  result = sub_10017E0BC(v4, v5, v7, v6, v9, v8, v10);
  if ((v33 & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10019321C(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PassthroughSubject.send(_:)();
    sub_1001921F8(a3, a4);
  }

  return result;
}

uint64_t sub_1001932CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100018C74();
    Subject<>.send()();

    sub_1001921F8(a2, a3);
  }

  return result;
}

double sub_100193384()
{

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[12];

  return sub_10017E0BC(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1001933C8()
{

  sub_10017E0BC(v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12]);

  return swift_deallocClassInstance();
}

uint64_t sub_10019347C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001934B4()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100193518(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_1003618C8, &unk_100289D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100193580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t sub_1001935E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100193690(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10019D0A4(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_10019D0B8(v4);
  *a1 = v2;
}

BOOL sub_100193700(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10019E10C(v7, v9);
}

BOOL static CMQuaternion.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

uint64_t sub_1001937BC()
{
  if (*(v0 + 16) != 1)
  {
    v8 = *(v0 + 8);

    return v8;
  }

  v1 = [*v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v2 + 16))
  {

    goto LABEL_9;
  }

  v5 = sub_100186A08(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

  sub_100048F80(*(v2 + 56) + 32 * v5, v11);

  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}