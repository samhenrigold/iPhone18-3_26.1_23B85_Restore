void sub_10058CB34()
{
  sub_10000C778();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003C38();
  sub_10002FF34();
  __chkstk_darwin(v11);
  sub_100031DB0();
  __chkstk_darwin(v12);
  sub_10004E424();
  v13 = sub_10022C350(&qword_100CC6BC0, &qword_100A62888);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000114FC();
  type metadata accessor for DeliveryScheduleEntity();
  sub_1000037C4();
  v55 = v16;
  v56 = v15;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  __chkstk_darwin(v21);
  sub_1000037D8();
  sub_10000CC9C();
  static UIListContentConfiguration.subtitleCell()();
  if (v6 == 1)
  {
    v22 = sub_1000696E4();
    sub_100021524(v22, "setAccessoryType:");
    [v8 setSelectionStyle:3];
    goto LABEL_12;
  }

  if (v6)
  {
LABEL_12:
    v57[3] = v20;
    v57[4] = &protocol witness table for UIListContentConfiguration;
    sub_100042FB0(v57);
    sub_100025258();
    v48();
    UITableViewCell.contentConfiguration.setter();
    v49 = sub_100003984();
    v50(v49);
    sub_10000536C();
    return;
  }

  sub_10058A8A8(v3);
  sub_1000038B4(v3, 1, v56);
  if (v26)
  {
    sub_1000180EC(v3, &qword_100CC6BC0, &qword_100A62888);
    sub_1000371D0();
    [v8 setSelectionStyle:0];
    goto LABEL_12;
  }

  v51 = v8;
  (*(v55 + 32))(v19, v3, v56);
  v57[0] = 91;
  v57[1] = 0xE100000000000000;
  DeliveryScheduleEntity.state.getter();
  sub_10022C350(&qword_100CC6BC8, &qword_100A628B0);
  sub_10058D440();
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 8285;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25 = sub_10058ACC0();
  DeliveryScheduleEntity.date.getter();
  dispatch thunk of Column.value.getter();
  v53 = type metadata accessor for Date();
  sub_1000038B4(v1, 1, v53);
  if (v26)
  {
    __break(1u);
    goto LABEL_14;
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  sub_100003B20();
  v52 = *(v28 + 8);
  v52(v1, v53);
  v29 = [v25 stringFromDate:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32._countAndFlagsBits = sub_100049994();
  v32._object = v31;
  String.append(_:)(v32);

  sub_10003A264();
  UIListContentConfiguration.text.setter();
  sub_100018530();
  _StringGuts.grow(_:)(25);

  sub_100014968();
  sub_100051ED4(v33);
  v34 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter;
  v35 = *(v4 + OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter);
  DeliveryScheduleEntity.created.getter();
  dispatch thunk of Column.value.getter();
  sub_1000038B4(v2, 1, v53);
  if (v26)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v36 = Date._bridgeToObjectiveC()().super.isa;
  v52(v2, v53);
  v37 = [v35 stringFromDate:v36];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40._countAndFlagsBits = sub_100049994();
  v40._object = v39;
  String.append(_:)(v40);

  sub_100016B74();
  v41 = *(v4 + v34);
  DeliveryScheduleEntity.modified.getter();
  dispatch thunk of Column.value.getter();
  sub_1000038B4(v54, 1, v53);
  if (!v26)
  {

    v42 = Date._bridgeToObjectiveC()().super.isa;
    v52(v54, v53);
    v43 = [v41 stringFromDate:v42];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46._countAndFlagsBits = sub_100049994();
    v46._object = v45;
    String.append(_:)(v46);

    sub_10003A264();
    v47 = UIListContentConfiguration.secondaryText.setter();
    sub_100021524(v47, "setAccessoryType:");
    [v51 setSelectionStyle:3];
    (*(v55 + 8))(v19, v56);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

id sub_10058D1A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugNotificationSubscriptionViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DebugNotificationSubscriptionViewController(uint64_t a1)
{
  result = qword_100CC6BA0;
  if (!qword_100CC6BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10058D2F4(uint64_t a1, double a2)
{
  type metadata accessor for SubscriptionEntity();
  if (v2 <= 0x3F)
  {
    sub_10002C0CC(319, &qword_100CC6BB0, &qword_100CBD080, &qword_100A53EB0);
    if (v3 <= 0x3F)
    {
      sub_10002C0CC(319, &qword_100CC6BB8, &qword_100CC6BC0, &qword_100A62888);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_10058D440()
{
  result = qword_100CC6BD0;
  if (!qword_100CC6BD0)
  {
    v3 = sub_10022E824(&qword_100CC6BC8, &qword_100A628B0);
    result = swift_getWitnessTable(&protocol conformance descriptor for Column<A>, v3, v0, v1);
    atomic_store(result, &qword_100CC6BD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OptInUserStatus(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = (a2 + 16776963) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776963) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }
    }
  }

  v6 = *a1;
  if (*a1 >= 2u && (v7 = (v6 & 0xFE) + 2147483646, (v7 & 0x7FFFFFFE) != 0))
  {
    return (v7 & 0x7FFFFFFE | v6 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OptInUserStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776963) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776963) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v4)
    {
      v5 = ((a2 - 253) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *result = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_10058D5D4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10058D5F0(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_10058D62C(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v20[-v6];
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  v22 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  sub_1001A00C8(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, &v20[-v9]);
  v11 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
  v23 = *(v11 + *(type metadata accessor for NotificationsOptInState(0) + 64));
  sub_1001A00C8(v10, v7);
  v12 = type metadata accessor for CurrentLocation();
  v13 = sub_100024D10(v7, 1, v12);

  if (v13 == 1)
  {
    sub_10048E678(v7);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_100169C48(v7);
  }

  sub_100019A80();
  sub_100141E5C();
  v21 = v14;

  sub_1001A00C8(v10, v4);
  if (sub_100024D10(v4, 1, v12) == 1)
  {
    sub_10048E678(v4);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_100169C48(v4);
  }

  sub_100019A80();
  sub_100141E74();
  v16 = v15;

  v17 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v18 = sub_100141E8C(v23, v21 & 1, v16 & 1, *(v17 + 1), *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications), *(v17 + 2));

  sub_10048E678(v10);
  return v18;
}

uint64_t sub_10058D8DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265735577656ELL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E49646574706FLL && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64656E696C636564 && a2 == 0xE800000000000000)
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

uint64_t sub_10058D9F4(char a1)
{
  if (!a1)
  {
    return 0x7265735577656ELL;
  }

  if (a1 == 1)
  {
    return 0x6E49646574706FLL;
  }

  return 0x64656E696C636564;
}

uint64_t sub_10058DA4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265766F4377656ELL && a2 == 0xEB00000000656761;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x8000000100AD5990 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001FLL && 0x8000000100AD59B0 == a2)
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

uint64_t sub_10058DB6C(char a1)
{
  if (!a1)
  {
    return 0x7265766F4377656ELL;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0xD00000000000001FLL;
}

uint64_t sub_10058DBD4(void *a1, unsigned int a2)
{
  v33 = a2;
  sub_10022C350(&qword_100CC6C30, &qword_100A62988);
  sub_1000037C4();
  v29 = v4;
  v30 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = sub_10022C350(&qword_100CC6C38, &qword_100A62990);
  sub_1000037C4();
  v28 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  sub_10022C350(&qword_100CC6C40, &qword_100A62998);
  sub_1000037C4();
  v31 = v14;
  v32 = v13;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  sub_10022C350(&qword_100CC6C48, &unk_100A629A0);
  sub_1000037C4();
  v34 = v18;
  sub_100003828();
  __chkstk_darwin(v19);
  sub_1000161C0(a1, a1[3]);
  sub_10058E8E0();
  v20 = v33;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v20 == 2)
  {
    v41 = 1;
    sub_10058E988();
    sub_100008958(&type metadata for OptInUserStatus.OptedInCodingKeys, &v41);
    (*(v28 + 8))(v12, v8);
    goto LABEL_5;
  }

  if (v20 == 3)
  {
    v42 = 2;
    sub_10058E934();
    sub_100008958(&type metadata for OptInUserStatus.DeclinedCodingKeys, &v42);
    (*(v29 + 8))(v7, v30);
LABEL_5:
    v21 = sub_100004540();
    return v22(v21);
  }

  v40 = 0;
  sub_10058E9DC();
  sub_100008958(&type metadata for OptInUserStatus.NewUserCodingKeys, &v40);
  v39 = 0;
  v24 = v32;
  v25 = v35;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v25)
  {
    v38 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v37 = BYTE2(v20);
    v36 = 2;
    sub_10058EA84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v31 + 8))(v17, v24);
  v26 = sub_100004540();
  return v27(v26);
}

uint64_t sub_10058DF94(void *a1)
{
  v60 = sub_10022C350(&qword_100CC6BE8, &qword_100A62960);
  sub_1000037C4();
  v57 = v2;
  sub_100003828();
  __chkstk_darwin(v3);
  v58 = &v51 - v4;
  sub_10022C350(&qword_100CC6BF0, &qword_100A62968);
  sub_1000037C4();
  v55 = v6;
  v56 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  sub_10022C350(&qword_100CC6BF8, &qword_100A62970);
  sub_1000037C4();
  v59 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v14 = sub_10022C350(&qword_100CC6C00, &unk_100A62978);
  sub_1000037C4();
  v16 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  v20 = a1[3];
  v61 = a1;
  v21 = sub_1000161C0(a1, v20);
  sub_10058E8E0();
  v22 = v62;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    goto LABEL_10;
  }

  v53 = v9;
  v54 = v13;
  v23 = v60;
  v62 = v16;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  if (v26 == v27 >> 1)
  {
LABEL_9:
    v36 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v38 = &type metadata for OptInUserStatus;
    v21 = v19;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v36 - 8) + 104))(v38, enum case for DecodingError.typeMismatch(_:), v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v19, v14);
LABEL_10:
    v39 = v61;
LABEL_11:
    sub_100006F14(v39);
    return v21;
  }

  v52 = v19;
  if (v26 < (v27 >> 1))
  {
    v28 = *(v25 + v26);
    sub_100618E7C();
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    if (v30 == v32 >> 1)
    {
      if (v28)
      {
        if (v28 == 1)
        {
          v67[1] = 1;
          sub_10058E988();
          v33 = v53;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v55 + 8))(v33, v56);
          v34 = sub_10001C65C();
          v35(v34);
          v21 = 2;
        }

        else
        {
          v68 = 2;
          sub_10058E934();
          v40 = v58;
          sub_100022DF4(&type metadata for OptInUserStatus.DeclinedCodingKeys, &v68);
          swift_unknownObjectRelease();
          (*(v57 + 8))(v40, v23);
          v43 = sub_10001C65C();
          v44(v43);
          v21 = 3;
        }

        v39 = v61;
      }

      else
      {
        v67[0] = 0;
        sub_10058E9DC();
        sub_100022DF4(&type metadata for OptInUserStatus.NewUserCodingKeys, v67);
        v66 = 0;
        v41 = KeyedDecodingContainer.decode(_:forKey:)();
        v42 = v62;
        v45 = v41;
        v65 = 1;
        v46 = KeyedDecodingContainer.decode(_:forKey:)();
        v63 = 2;
        sub_10058EA30();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v47 = v52;
        swift_unknownObjectRelease();
        v48 = sub_100010434();
        v49(v48);
        (*(v42 + 8))(v47, v14);
        if (v46)
        {
          v50 = 256;
        }

        else
        {
          v50 = 0;
        }

        v21 = v50 & 0xFFFFFFFE | v45 & 1 | (v64 << 16);
        v39 = v61;
      }

      goto LABEL_11;
    }

    v19 = v52;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10058E634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10058D8DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10058E65C(uint64_t a1)
{
  v2 = sub_10058E8E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10058E698(uint64_t a1)
{
  v2 = sub_10058E8E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10058E6D4(uint64_t a1)
{
  v2 = sub_10058E934();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10058E710(uint64_t a1)
{
  v2 = sub_10058E934();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10058E754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10058DA4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10058E77C(uint64_t a1)
{
  v2 = sub_10058E9DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10058E7B8(uint64_t a1)
{
  v2 = sub_10058E9DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10058E7F4(uint64_t a1)
{
  v2 = sub_10058E988();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10058E830(uint64_t a1)
{
  v2 = sub_10058E988();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10058E888@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10058DF94(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
  }

  return result;
}

unint64_t sub_10058E8E0()
{
  result = qword_100CC6C08;
  if (!qword_100CC6C08)
  {
    result = swift_getWitnessTable(asc_100A62D14, &type metadata for OptInUserStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6C08);
  }

  return result;
}

unint64_t sub_10058E934()
{
  result = qword_100CC6C10;
  if (!qword_100CC6C10)
  {
    result = swift_getWitnessTable(asc_100A62CC4, &type metadata for OptInUserStatus.DeclinedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6C10);
  }

  return result;
}

unint64_t sub_10058E988()
{
  result = qword_100CC6C18;
  if (!qword_100CC6C18)
  {
    result = swift_getWitnessTable(asc_100A62C74, &type metadata for OptInUserStatus.OptedInCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6C18);
  }

  return result;
}

unint64_t sub_10058E9DC()
{
  result = qword_100CC6C20;
  if (!qword_100CC6C20)
  {
    result = swift_getWitnessTable(asc_100A62C24, &type metadata for OptInUserStatus.NewUserCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6C20);
  }

  return result;
}

unint64_t sub_10058EA30()
{
  result = qword_100CC6C28;
  if (!qword_100CC6C28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PredictedLocationsAuthorizationState, &type metadata for PredictedLocationsAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CC6C28);
  }

  return result;
}

unint64_t sub_10058EA84()
{
  result = qword_100CC6C50;
  if (!qword_100CC6C50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PredictedLocationsAuthorizationState, &type metadata for PredictedLocationsAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CC6C50);
  }

  return result;
}

_BYTE *sub_10058EAE8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10058EBE8()
{
  result = qword_100CC6C58;
  if (!qword_100CC6C58)
  {
    result = swift_getWitnessTable(byte_100A62B44, &type metadata for OptInUserStatus.NewUserCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6C58);
  }

  return result;
}

unint64_t sub_10058EC40()
{
  result = qword_100CC6C60;
  if (!qword_100CC6C60)
  {
    result = swift_getWitnessTable(byte_100A62BFC, &type metadata for OptInUserStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6C60);
  }

  return result;
}

unint64_t sub_10058EC98()
{
  result = qword_100CC6C68;
  if (!qword_100CC6C68)
  {
    result = swift_getWitnessTable(asc_100A62AB4, &type metadata for OptInUserStatus.NewUserCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6C68);
  }

  return result;
}

unint64_t sub_10058ECF0()
{
  result = qword_100CC6C70;
  if (!qword_100CC6C70)
  {
    result = swift_getWitnessTable(byte_100A62ADC, &type metadata for OptInUserStatus.NewUserCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6C70);
  }

  return result;
}

unint64_t sub_10058ED48()
{
  result = qword_100CC6C78;
  if (!qword_100CC6C78)
  {
    result = swift_getWitnessTable(asc_100A62A64, &type metadata for OptInUserStatus.OptedInCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6C78);
  }

  return result;
}

unint64_t sub_10058EDA0()
{
  result = qword_100CC6C80;
  if (!qword_100CC6C80)
  {
    result = swift_getWitnessTable(aE_55, &type metadata for OptInUserStatus.OptedInCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6C80);
  }

  return result;
}

unint64_t sub_10058EDF8()
{
  result = qword_100CC6C88;
  if (!qword_100CC6C88)
  {
    result = swift_getWitnessTable(asc_100A62A14, &type metadata for OptInUserStatus.DeclinedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6C88);
  }

  return result;
}

unint64_t sub_10058EE50()
{
  result = qword_100CC6C90;
  if (!qword_100CC6C90)
  {
    result = swift_getWitnessTable(byte_100A62A3C, &type metadata for OptInUserStatus.DeclinedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6C90);
  }

  return result;
}

unint64_t sub_10058EEA8()
{
  result = qword_100CC6C98;
  if (!qword_100CC6C98)
  {
    result = swift_getWitnessTable(aU_54, &type metadata for OptInUserStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6C98);
  }

  return result;
}

unint64_t sub_10058EF00()
{
  result = qword_100CC6CA0[0];
  if (!qword_100CC6CA0[0])
  {
    result = swift_getWitnessTable(asc_100A62B94, &type metadata for OptInUserStatus.CodingKeys, v0, v1);
    atomic_store(result, qword_100CC6CA0);
  }

  return result;
}

void sub_10058EF68(uint64_t a1)
{
  type metadata accessor for LocationDynamicContentConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_10013DB50();
    if (v2 <= 0x3F)
    {
      sub_100137C80();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10058F088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v637 = a2;
  v5 = *(a1 - 8);
  __chkstk_darwin(a1);
  v7 = &v588 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationDynamicContentConfiguration(0);
  v9 = *(v2 + *(v8 + 28));
  if (qword_100CA26B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000703C(v10, qword_100D90A90);
  (*(v5 + 16))(v7, v2, v4);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v638 = v4;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v636 = v8;
    v16 = v15;
    *&v726 = v15;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v17 = Location.Identifier.name.getter();
    *&v635 = v3;
    v18 = v9;
    v20 = v19;
    (*(v5 + 8))(v7, v638);
    v21 = sub_100078694(v17, v20, &v726);

    *(v14 + 14) = v21;
    *(v14 + 22) = 1026;
    *(v14 + 24) = v18;
    v3 = v635;
    _os_log_impl(&_mh_execute_header, v11, v12, "LocationGridView: location=%{private,mask.hash}s wantsMapCell=%{BOOL,public}d", v14, 0x1Cu);
    sub_100006F14(v16);
    v8 = v636;

    v4 = v638;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v22 = *(v3 + *(v8 + 32));
  if (v22)
  {
    sub_1005909EC(&v722, v22, v4);
    *&v635 = *(&v722 + 1);
    v636 = v722;
    v633 = *(&v723 + 1);
    *&v634 = v723;
    LODWORD(v632) = v724;
    LODWORD(v631) = v725;
    v667 = v722;
    v668 = v723;
    v669 = v724;
    v670 = v725;
    v23 = sub_100011670();
    v27 = type metadata accessor for DefaultContentView(v23, v24, v25, v26);
    v28 = type metadata accessor for _ConditionalContent();
    v29 = sub_100011670();
    v33 = type metadata accessor for NoAqiNewsContentView(v29, v30, v31, v32);
    v34 = sub_100011670();
    v591 = type metadata accessor for SevereContentView(v34, v35, v36, v37);
    sub_100030500();
    v592 = type metadata accessor for _ConditionalContent();
    v589 = sub_1000163D4();
    v38 = sub_100011670();
    v593 = type metadata accessor for NhpContentView(v38, v39, v40, v41);
    v42 = sub_100011670();
    v595 = type metadata accessor for ElevatedAqiSevereContentView(v42, v43, v44, v45);
    v590 = sub_10002153C();
    v46 = sub_100011670();
    v596 = type metadata accessor for DefaultNewsContentView(v46, v47, v48, v49);
    v50 = sub_100011670();
    v597 = type metadata accessor for DefaultTrendNewsContentView(v50, v51, v52, v53);
    v599 = sub_10002153C();
    sub_1000371F0();
    v600 = type metadata accessor for _ConditionalContent();
    sub_10002FF48();
    v588 = type metadata accessor for _ConditionalContent();
    v54 = sub_100011670();
    v601 = type metadata accessor for ElevatedAqiNewsContentView(v54, v55, v56, v57);
    v58 = sub_100011670();
    v602 = type metadata accessor for NoAqiSevereNewsContentView(v58, v59, v60, v61);
    v598 = sub_10002153C();
    v62 = sub_100011670();
    v603 = type metadata accessor for NoAqiSevereNhpContentView(v62, v63, v64, v65);
    v66 = sub_100011670();
    v605 = type metadata accessor for NoAqiNhpNewsContentView(v66, v67, v68, v69);
    v606 = sub_10002153C();
    sub_1000371F0();
    v594 = type metadata accessor for _ConditionalContent();
    v70 = sub_100011670();
    v607 = type metadata accessor for SevereNhpContentView(v70, v71, v72, v73);
    v74 = sub_100011670();
    v608 = type metadata accessor for SevereNhpAqiContentView(v74, v75, v76, v77);
    v604 = sub_10002153C();
    v78 = sub_100011670();
    v609 = type metadata accessor for SevereNewsContentView(v78, v79, v80, v81);
    v82 = sub_100011670();
    v611 = type metadata accessor for NhpNewsContentView(v82, v83, v84, v85);
    v612 = sub_10002153C();
    sub_1000371F0();
    v614 = type metadata accessor for _ConditionalContent();
    sub_10002FF48();
    v615 = type metadata accessor for _ConditionalContent();
    sub_100024238();
    v86 = type metadata accessor for _ConditionalContent();
    v87 = sub_100011670();
    v616 = type metadata accessor for ElevatedAqiSevereNewsContentView(v87, v88, v89, v90);
    v91 = sub_100011670();
    v617 = type metadata accessor for NoAqiSevereNhpNewsContentView(v91, v92, v93, v94);
    sub_1000371F0();
    v613 = type metadata accessor for _ConditionalContent();
    v95 = sub_100011670();
    v618 = type metadata accessor for ElevatedAqiContentView(v95, v96, v97, v98);
    v99 = sub_100011670();
    v620 = type metadata accessor for NoAqiSevereContentView(v99, v100, v101, v102);
    sub_1000371F0();
    v621 = type metadata accessor for _ConditionalContent();
    sub_10002FF48();
    v610 = type metadata accessor for _ConditionalContent();
    v103 = sub_100011670();
    v622 = type metadata accessor for NoAqiNhpContentView(v103, v104, v105, v106);
    v107 = sub_100011670();
    v623 = type metadata accessor for NoAqiContentView(v107, v108, v109, v110);
    sub_1000371F0();
    v619 = type metadata accessor for _ConditionalContent();
    v111 = sub_100011670();
    v624 = type metadata accessor for SevereNhpNewsContentView(v111, v112, v113, v114);
    v115 = sub_100011670();
    v625 = type metadata accessor for MinorAlertContentView(v115, v116, v117, v118);
    sub_1000371F0();
    v626 = type metadata accessor for _ConditionalContent();
    sub_10002FF48();
    v627 = type metadata accessor for _ConditionalContent();
    sub_100024238();
    v119 = type metadata accessor for _ConditionalContent();
    v120 = sub_100011670();
    v628 = type metadata accessor for NhpMinorAlertContentView(v120, v121, v122, v123);
    v124 = sub_100011670();
    v629 = type metadata accessor for ElevatedAqiMinorAlertContentView(v124, v125, v126, v127);
    sub_1000371F0();
    v630 = type metadata accessor for _ConditionalContent();
    sub_10002FF48();
    v128 = type metadata accessor for _ConditionalContent();
    v129 = v86;
    v130 = type metadata accessor for _ConditionalContent();
    v131 = sub_1000208A8();
    WitnessTable = swift_getWitnessTable(v131, v27);
    v666[0] = &protocol witness table for EmptyView;
    v666[1] = WitnessTable;
    v133 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v28, v666);
    v134 = sub_100017AE4();
    v135 = swift_getWitnessTable(v134, v33);
    v136 = sub_10006970C();
    v137 = swift_getWitnessTable(v136, v591);
    v665[0] = v135;
    v665[1] = v137;
    v138 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v592, v665);
    v664[0] = v133;
    v664[1] = v138;
    v139 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v589, v664);
    v140 = sub_100074C34();
    v141 = swift_getWitnessTable(v140, v593);
    v142 = sub_10002876C();
    v143 = swift_getWitnessTable(v142, v595);
    v663[0] = v141;
    v663[1] = v143;
    v144 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v590, v663);
    v145 = sub_100004554();
    v146 = swift_getWitnessTable(v145, v596);
    v147 = sub_100014994();
    v148 = swift_getWitnessTable(v147, v597);
    v662[0] = v146;
    v662[1] = v148;
    v149 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v599, v662);
    v661[0] = v144;
    v661[1] = v149;
    v150 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v600, v661);
    v660[0] = v139;
    v660[1] = v150;
    v151 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v588, v660);
    v152 = sub_10001C670();
    v153 = swift_getWitnessTable(v152, v601);
    v154 = sub_100051EE8();
    v155 = swift_getWitnessTable(v154, v602);
    v659[0] = v153;
    v659[1] = v155;
    v156 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v598, v659);
    v157 = sub_100037BBC();
    v158 = swift_getWitnessTable(v157, v603);
    v159 = sub_10000EB60();
    v160 = swift_getWitnessTable(v159, v605);
    v658[0] = v158;
    v658[1] = v160;
    v161 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v606, v658);
    v657[0] = v156;
    v657[1] = v161;
    v162 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v594, v657);
    v163 = sub_10003C608();
    v164 = swift_getWitnessTable(v163, v607);
    v165 = sub_10004E720();
    v166 = swift_getWitnessTable(v165, v608);
    v656[0] = v164;
    v656[1] = v166;
    v167 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v604, v656);
    v168 = sub_100016BA0();
    v169 = swift_getWitnessTable(v168, v609);
    v170 = sub_1000499A0();
    v171 = swift_getWitnessTable(v170, v611);
    v655[0] = v169;
    v655[1] = v171;
    v172 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v612, v655);
    v654[0] = v167;
    v654[1] = v172;
    v173 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v614, v654);
    v653[0] = v162;
    v653[1] = v173;
    v174 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v615, v653);
    v652[0] = v151;
    v652[1] = v174;
    v175 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v129, v652);
    v176 = sub_100008974();
    v177 = swift_getWitnessTable(v176, v616);
    v178 = sub_1000061EC();
    v179 = swift_getWitnessTable(v178, v617);
    v651[0] = v177;
    v651[1] = v179;
    v180 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v613, v651);
    v181 = sub_100010448();
    v182 = swift_getWitnessTable(v181, v618);
    v183 = sub_10001F170();
    v184 = swift_getWitnessTable(v183, v620);
    v650[0] = v182;
    v650[1] = v184;
    v185 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v621, v650);
    v649[0] = v180;
    v649[1] = v185;
    v186 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v610, v649);
    v187 = sub_10002C864();
    v188 = swift_getWitnessTable(v187, v622);
    v189 = sub_10000CCA8();
    v190 = swift_getWitnessTable(v189, v623);
    v648[0] = v188;
    v648[1] = v190;
    v191 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v619, v648);
    v192 = sub_100024868();
    v193 = swift_getWitnessTable(v192, v624);
    v194 = sub_1000139D4();
    v195 = swift_getWitnessTable(v194, v625);
    v647[0] = v193;
    v647[1] = v195;
    v196 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v626, v647);
    v646[0] = v191;
    v646[1] = v196;
    v197 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v627, v646);
    v645[0] = v186;
    v645[1] = v197;
    v198 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v119, v645);
    v199 = sub_100022E14();
    v200 = swift_getWitnessTable(v199, v628);
    v201 = sub_100019A94();
    v202 = swift_getWitnessTable(v201, v629);
    v644[0] = v200;
    v644[1] = v202;
    v203 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v630, v644);
    v643[0] = v198;
    v643[1] = v203;
    v204 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v128, v643);
    v642[0] = v175;
    v642[1] = v204;
    v205 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v130, v642);
    sub_1000833D8(&v667, v130, v205);
    sub_1005A6B08(v636, v635, v634, v633, v632, v631);
    v206 = v728;
    LOBYTE(v119) = v729;
    v667 = v726;
    v668 = v727;
    v669 = v728;
    v670 = v729;
    sub_1000833D8(&v667, v130, v205);
    v207 = sub_10001EAB0();
    sub_1005A6B08(v207, v208, v209, v210, v206, v119);
    v211 = v724;
    v212 = v725;
    v213 = &_mh_execute_header;
    if (!v725)
    {
      BYTE4(v213) = 0;
    }

    v639[0] = v722;
    v639[1] = v723;
    v640 = v724;
    v641 = BYTE4(v213);
    sub_1003E7FD4(v639, &v667);
    v214 = sub_10001EAB0();
    sub_1005A6B08(v214, v215, v216, v217, v211, v212);
    v218 = v667;
    v219 = v668;
    v220 = v670;
    v221 = v669;
  }

  else
  {
    v722 = 0u;
    v723 = 0u;
    v724 = 0;
    v725 = -1;
    v222 = sub_10003168C();
    v226 = type metadata accessor for DefaultContentView(v222, v223, v224, v225);
    v227 = type metadata accessor for _ConditionalContent();
    v228 = sub_10003168C();
    v232 = type metadata accessor for NoAqiNewsContentView(v228, v229, v230, v231);
    v233 = sub_10003168C();
    v596 = type metadata accessor for SevereContentView(v233, v234, v235, v236);
    v597 = sub_1000163D4();
    sub_100011680();
    v594 = type metadata accessor for _ConditionalContent();
    v237 = sub_10003168C();
    v598 = type metadata accessor for NhpContentView(v237, v238, v239, v240);
    v241 = sub_10003168C();
    v600 = type metadata accessor for ElevatedAqiSevereContentView(v241, v242, v243, v244);
    sub_100030500();
    v595 = type metadata accessor for _ConditionalContent();
    v245 = sub_10003168C();
    v601 = type metadata accessor for DefaultNewsContentView(v245, v246, v247, v248);
    v249 = sub_10003168C();
    v602 = type metadata accessor for DefaultTrendNewsContentView(v249, v250, v251, v252);
    sub_100030500();
    v604 = type metadata accessor for _ConditionalContent();
    v605 = sub_10002153C();
    sub_1000371F0();
    v593 = type metadata accessor for _ConditionalContent();
    v253 = sub_10003168C();
    v606 = type metadata accessor for ElevatedAqiNewsContentView(v253, v254, v255, v256);
    v257 = sub_10003168C();
    v607 = type metadata accessor for NoAqiSevereNewsContentView(v257, v258, v259, v260);
    sub_100030500();
    v603 = type metadata accessor for _ConditionalContent();
    v261 = sub_10003168C();
    v608 = type metadata accessor for NoAqiSevereNhpContentView(v261, v262, v263, v264);
    v265 = sub_10003168C();
    v610 = type metadata accessor for NoAqiNhpNewsContentView(v265, v266, v267, v268);
    sub_100030500();
    v611 = type metadata accessor for _ConditionalContent();
    v599 = sub_10002153C();
    v269 = sub_10003168C();
    v612 = type metadata accessor for SevereNhpContentView(v269, v270, v271, v272);
    v273 = sub_10003168C();
    v613 = type metadata accessor for SevereNhpAqiContentView(v273, v274, v275, v276);
    sub_100030500();
    v609 = type metadata accessor for _ConditionalContent();
    v277 = sub_10003168C();
    v614 = type metadata accessor for SevereNewsContentView(v277, v278, v279, v280);
    v281 = sub_10003168C();
    v616 = type metadata accessor for NhpNewsContentView(v281, v282, v283, v284);
    sub_100030500();
    v617 = type metadata accessor for _ConditionalContent();
    v619 = sub_10002153C();
    sub_1000371F0();
    v620 = type metadata accessor for _ConditionalContent();
    sub_10002526C();
    v285 = type metadata accessor for _ConditionalContent();
    v286 = sub_10003168C();
    v621 = type metadata accessor for ElevatedAqiSevereNewsContentView(v286, v287, v288, v289);
    v290 = sub_10003168C();
    v622 = type metadata accessor for NoAqiSevereNhpNewsContentView(v290, v291, v292, v293);
    sub_100030500();
    v618 = type metadata accessor for _ConditionalContent();
    v294 = sub_10003168C();
    v624 = type metadata accessor for ElevatedAqiContentView(v294, v295, v296, v297);
    v298 = sub_10003168C();
    v626 = type metadata accessor for NoAqiSevereContentView(v298, v299, v300, v301);
    sub_100030500();
    v627 = type metadata accessor for _ConditionalContent();
    sub_1000371F0();
    v615 = type metadata accessor for _ConditionalContent();
    v302 = sub_10003168C();
    v628 = type metadata accessor for NoAqiNhpContentView(v302, v303, v304, v305);
    v306 = sub_10003168C();
    v629 = type metadata accessor for NoAqiContentView(v306, v307, v308, v309);
    sub_100030500();
    v625 = type metadata accessor for _ConditionalContent();
    v310 = sub_10003168C();
    v630 = type metadata accessor for SevereNhpNewsContentView(v310, v311, v312, v313);
    v314 = sub_10003168C();
    v631 = type metadata accessor for MinorAlertContentView(v314, v315, v316, v317);
    sub_100030500();
    v632 = type metadata accessor for _ConditionalContent();
    sub_10002526C();
    v633 = type metadata accessor for _ConditionalContent();
    sub_1000371F0();
    v623 = type metadata accessor for _ConditionalContent();
    v318 = sub_10003168C();
    *&v634 = type metadata accessor for NhpMinorAlertContentView(v318, v319, v320, v321);
    v322 = sub_10003168C();
    *&v635 = type metadata accessor for ElevatedAqiMinorAlertContentView(v322, v323, v324, v325);
    sub_10002526C();
    v636 = type metadata accessor for _ConditionalContent();
    sub_100030500();
    v326 = type metadata accessor for _ConditionalContent();
    v327 = v285;
    v328 = type metadata accessor for _ConditionalContent();
    v329 = sub_1000208A8();
    v330 = swift_getWitnessTable(v329, v226);
    v721[0] = &protocol witness table for EmptyView;
    v721[1] = v330;
    v331 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v227, v721);
    v332 = sub_100017AE4();
    v333 = swift_getWitnessTable(v332, v232);
    v334 = sub_10006970C();
    v335 = swift_getWitnessTable(v334, v596);
    v720[0] = v333;
    v720[1] = v335;
    v336 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v597, v720);
    v719[0] = v331;
    v719[1] = v336;
    v337 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v594, v719);
    v338 = sub_100074C34();
    v339 = swift_getWitnessTable(v338, v598);
    v340 = sub_10002876C();
    v341 = swift_getWitnessTable(v340, v600);
    v718[0] = v339;
    v718[1] = v341;
    v342 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v595, v718);
    v343 = sub_100004554();
    v344 = swift_getWitnessTable(v343, v601);
    v345 = sub_100014994();
    v346 = swift_getWitnessTable(v345, v602);
    v717[0] = v344;
    v717[1] = v346;
    v347 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v604, v717);
    v716[0] = v342;
    v716[1] = v347;
    v348 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v605, v716);
    v715[0] = v337;
    v715[1] = v348;
    v349 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v593, v715);
    v350 = sub_10001C670();
    v351 = swift_getWitnessTable(v350, v606);
    v352 = sub_100051EE8();
    v353 = swift_getWitnessTable(v352, v607);
    v714[0] = v351;
    v714[1] = v353;
    v354 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v603, v714);
    v355 = sub_100037BBC();
    v356 = swift_getWitnessTable(v355, v608);
    v357 = sub_10000EB60();
    v358 = swift_getWitnessTable(v357, v610);
    v713[0] = v356;
    v713[1] = v358;
    v359 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v611, v713);
    v712[0] = v354;
    v712[1] = v359;
    v360 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v599, v712);
    v361 = sub_10003C608();
    v362 = swift_getWitnessTable(v361, v612);
    v363 = sub_10004E720();
    v364 = swift_getWitnessTable(v363, v613);
    v711[0] = v362;
    v711[1] = v364;
    v365 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v609, v711);
    v366 = sub_100016BA0();
    v367 = swift_getWitnessTable(v366, v614);
    v368 = sub_1000499A0();
    v369 = swift_getWitnessTable(v368, v616);
    v710[0] = v367;
    v710[1] = v369;
    v370 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v617, v710);
    v709[0] = v365;
    v709[1] = v370;
    v371 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v619, v709);
    v708[0] = v360;
    v708[1] = v371;
    v372 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v620, v708);
    v707[0] = v349;
    v707[1] = v372;
    v373 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v327, v707);
    v374 = sub_100008974();
    v375 = swift_getWitnessTable(v374, v621);
    v376 = sub_1000061EC();
    v377 = swift_getWitnessTable(v376, v622);
    v706[0] = v375;
    v706[1] = v377;
    v378 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v618, v706);
    v379 = sub_100010448();
    v380 = swift_getWitnessTable(v379, v624);
    v381 = sub_10001F170();
    v382 = swift_getWitnessTable(v381, v626);
    v705[0] = v380;
    v705[1] = v382;
    v383 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v627, v705);
    v704[0] = v378;
    v704[1] = v383;
    v384 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v615, v704);
    v385 = sub_10002C864();
    v386 = swift_getWitnessTable(v385, v628);
    v387 = sub_10000CCA8();
    v388 = swift_getWitnessTable(v387, v629);
    v703[0] = v386;
    v703[1] = v388;
    v389 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v625, v703);
    v390 = sub_100024868();
    v391 = swift_getWitnessTable(v390, v630);
    v392 = sub_1000139D4();
    v393 = swift_getWitnessTable(v392, v631);
    v702[0] = v391;
    v702[1] = v393;
    v394 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v632, v702);
    v701[0] = v389;
    v701[1] = v394;
    v395 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v633, v701);
    v700[0] = v384;
    v700[1] = v395;
    v396 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v623, v700);
    v397 = sub_100022E14();
    v398 = swift_getWitnessTable(v397, v634);
    v399 = sub_100019A94();
    v400 = swift_getWitnessTable(v399, v635);
    v699[0] = v398;
    v699[1] = v400;
    v401 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v636, v699);
    v698[0] = v396;
    v698[1] = v401;
    v402 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v326, v698);
    v697[0] = v373;
    v697[1] = v402;
    swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v328, v697);
    sub_1003E7FD4(&v722, &v726);
    v218 = v726;
    v219 = v727;
    v220 = v729;
    v221 = v728;
  }

  v634 = v218;
  v635 = v219;
  v636 = v221 | (v220 << 32);
  v726 = v218;
  v727 = v219;
  v728 = v221;
  v729 = BYTE4(v636);
  v403 = sub_100031DC4();
  v407 = type metadata accessor for DefaultContentView(v403, v404, v405, v406);
  v408 = type metadata accessor for _ConditionalContent();
  v409 = sub_100031DC4();
  v413 = type metadata accessor for NoAqiNewsContentView(v409, v410, v411, v412);
  v414 = sub_100031DC4();
  v594 = type metadata accessor for SevereContentView(v414, v415, v416, v417);
  sub_1000371F0();
  v595 = type metadata accessor for _ConditionalContent();
  v592 = sub_1000163D4();
  v418 = sub_100031DC4();
  v596 = type metadata accessor for NhpContentView(v418, v419, v420, v421);
  v422 = sub_100031DC4();
  v598 = type metadata accessor for ElevatedAqiSevereContentView(v422, v423, v424, v425);
  sub_100030500();
  v593 = type metadata accessor for _ConditionalContent();
  v426 = sub_100031DC4();
  v599 = type metadata accessor for DefaultNewsContentView(v426, v427, v428, v429);
  v430 = sub_100031DC4();
  v600 = type metadata accessor for DefaultTrendNewsContentView(v430, v431, v432, v433);
  sub_100030500();
  v602 = type metadata accessor for _ConditionalContent();
  v603 = sub_10002153C();
  sub_10002FF48();
  v591 = type metadata accessor for _ConditionalContent();
  v434 = sub_100031DC4();
  v604 = type metadata accessor for ElevatedAqiNewsContentView(v434, v435, v436, v437);
  v438 = sub_100031DC4();
  v605 = type metadata accessor for NoAqiSevereNewsContentView(v438, v439, v440, v441);
  sub_100030500();
  v601 = type metadata accessor for _ConditionalContent();
  v442 = sub_100031DC4();
  v606 = type metadata accessor for NoAqiSevereNhpContentView(v442, v443, v444, v445);
  v446 = sub_100031DC4();
  v608 = type metadata accessor for NoAqiNhpNewsContentView(v446, v447, v448, v449);
  sub_100030500();
  v609 = type metadata accessor for _ConditionalContent();
  v597 = sub_10002153C();
  v450 = sub_100031DC4();
  v610 = type metadata accessor for SevereNhpContentView(v450, v451, v452, v453);
  v454 = sub_100031DC4();
  v611 = type metadata accessor for SevereNhpAqiContentView(v454, v455, v456, v457);
  sub_100030500();
  v607 = type metadata accessor for _ConditionalContent();
  v458 = sub_100031DC4();
  v612 = type metadata accessor for SevereNewsContentView(v458, v459, v460, v461);
  v462 = sub_100031DC4();
  v614 = type metadata accessor for NhpNewsContentView(v462, v463, v464, v465);
  sub_100030500();
  v615 = type metadata accessor for _ConditionalContent();
  v617 = sub_10002153C();
  sub_10002FF48();
  v618 = type metadata accessor for _ConditionalContent();
  sub_100024238();
  v466 = type metadata accessor for _ConditionalContent();
  v467 = sub_100031DC4();
  v619 = type metadata accessor for ElevatedAqiSevereNewsContentView(v467, v468, v469, v470);
  v471 = sub_100031DC4();
  v620 = type metadata accessor for NoAqiSevereNhpNewsContentView(v471, v472, v473, v474);
  v616 = sub_10002153C();
  v475 = sub_100031DC4();
  v621 = type metadata accessor for ElevatedAqiContentView(v475, v476, v477, v478);
  v479 = sub_100031DC4();
  v623 = type metadata accessor for NoAqiSevereContentView(v479, v480, v481, v482);
  v624 = sub_10002153C();
  sub_10002FF48();
  v613 = type metadata accessor for _ConditionalContent();
  v483 = sub_100031DC4();
  v625 = type metadata accessor for NoAqiNhpContentView(v483, v484, v485, v486);
  v487 = sub_100031DC4();
  v626 = type metadata accessor for NoAqiContentView(v487, v488, v489, v490);
  v622 = sub_10002153C();
  v491 = sub_100031DC4();
  v627 = type metadata accessor for SevereNhpNewsContentView(v491, v492, v493, v494);
  v495 = sub_100031DC4();
  v628 = type metadata accessor for MinorAlertContentView(v495, v496, v497, v498);
  v629 = sub_10002153C();
  sub_10002FF48();
  v630 = type metadata accessor for _ConditionalContent();
  sub_100024238();
  v499 = type metadata accessor for _ConditionalContent();
  v500 = sub_100031DC4();
  v631 = type metadata accessor for NhpMinorAlertContentView(v500, v501, v502, v503);
  v504 = sub_100031DC4();
  v632 = type metadata accessor for ElevatedAqiMinorAlertContentView(v504, v505, v506, v507);
  v633 = sub_10002153C();
  sub_10002FF48();
  v638 = type metadata accessor for _ConditionalContent();
  sub_100030500();
  v508 = v466;
  v509 = type metadata accessor for _ConditionalContent();
  v510 = type metadata accessor for Optional();
  v511 = sub_1000208A8();
  v512 = swift_getWitnessTable(v511, v407);
  v696[0] = &protocol witness table for EmptyView;
  v696[1] = v512;
  v513 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v408, v696);
  v514 = sub_100017AE4();
  v515 = swift_getWitnessTable(v514, v413);
  v516 = sub_10006970C();
  v517 = swift_getWitnessTable(v516, v594);
  v695[0] = v515;
  v695[1] = v517;
  v518 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v595, v695);
  v694[0] = v513;
  v694[1] = v518;
  v519 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v592, v694);
  v520 = sub_100074C34();
  v521 = swift_getWitnessTable(v520, v596);
  v522 = sub_10002876C();
  v523 = swift_getWitnessTable(v522, v598);
  v693[0] = v521;
  v693[1] = v523;
  v524 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v593, v693);
  v525 = sub_100004554();
  v526 = swift_getWitnessTable(v525, v599);
  v527 = sub_100014994();
  v528 = swift_getWitnessTable(v527, v600);
  v692[0] = v526;
  v692[1] = v528;
  v529 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v602, v692);
  v691[0] = v524;
  v691[1] = v529;
  v530 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v603, v691);
  v690[0] = v519;
  v690[1] = v530;
  v531 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v591, v690);
  v532 = sub_10001C670();
  v533 = swift_getWitnessTable(v532, v604);
  v534 = sub_100051EE8();
  v535 = swift_getWitnessTable(v534, v605);
  v689[0] = v533;
  v689[1] = v535;
  v536 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v601, v689);
  v537 = sub_100037BBC();
  v538 = swift_getWitnessTable(v537, v606);
  v539 = sub_10000EB60();
  v540 = swift_getWitnessTable(v539, v608);
  v688[0] = v538;
  v688[1] = v540;
  v541 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v609, v688);
  v687[0] = v536;
  v687[1] = v541;
  v542 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v597, v687);
  v543 = sub_10003C608();
  v544 = swift_getWitnessTable(v543, v610);
  v545 = sub_10004E720();
  v546 = swift_getWitnessTable(v545, v611);
  v686[0] = v544;
  v686[1] = v546;
  v547 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v607, v686);
  v548 = sub_100016BA0();
  v549 = swift_getWitnessTable(v548, v612);
  v550 = sub_1000499A0();
  v551 = swift_getWitnessTable(v550, v614);
  v685[0] = v549;
  v685[1] = v551;
  v552 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v615, v685);
  v684[0] = v547;
  v684[1] = v552;
  v553 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v617, v684);
  v683[0] = v542;
  v683[1] = v553;
  v554 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v618, v683);
  v682[0] = v531;
  v682[1] = v554;
  v555 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v508, v682);
  v556 = sub_100008974();
  v557 = swift_getWitnessTable(v556, v619);
  v558 = sub_1000061EC();
  v559 = swift_getWitnessTable(v558, v620);
  v681[0] = v557;
  v681[1] = v559;
  v560 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v616, v681);
  v561 = sub_100010448();
  v562 = swift_getWitnessTable(v561, v621);
  v563 = sub_10001F170();
  v564 = swift_getWitnessTable(v563, v623);
  v680[0] = v562;
  v680[1] = v564;
  v565 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v624, v680);
  v679[0] = v560;
  v679[1] = v565;
  v566 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v613, v679);
  v567 = sub_10002C864();
  v568 = swift_getWitnessTable(v567, v625);
  v569 = sub_10000CCA8();
  v570 = swift_getWitnessTable(v569, v626);
  v678[0] = v568;
  v678[1] = v570;
  v571 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v622, v678);
  v572 = sub_100024868();
  v573 = swift_getWitnessTable(v572, v627);
  v574 = sub_1000139D4();
  v575 = swift_getWitnessTable(v574, v628);
  v677[0] = v573;
  v677[1] = v575;
  v576 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v629, v677);
  v676[0] = v571;
  v676[1] = v576;
  v577 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v630, v676);
  v675[0] = v566;
  v675[1] = v577;
  v578 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v499, v675);
  v579 = sub_100022E14();
  v580 = swift_getWitnessTable(v579, v631);
  v581 = sub_100019A94();
  v582 = swift_getWitnessTable(v581, v632);
  v674[0] = v580;
  v674[1] = v582;
  v583 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v633, v674);
  v673[0] = v578;
  v673[1] = v583;
  v584 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v638, v673);
  v672[0] = v555;
  v672[1] = v584;
  v671 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v509, v672);
  v585 = sub_10000898C();
  v586 = swift_getWitnessTable(v585, v510, &v671);
  sub_1000833D8(&v726, v510, v586);
  return sub_1005A6AF0(v634, *(&v634 + 1), v635, *(&v635 + 1), v636);
}

uint64_t sub_1005A6AF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE4(a5) != 255)
  {
    return sub_1005A6B08(result, a2, a3, a4, a5, BYTE4(a5) & 1);
  }

  return result;
}

uint64_t sub_1005A6B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1005A6C20(a1, a2, a3, a4, a5, BYTE3(a5) & 1);
  }

  else
  {
    return sub_1005A6B1C(a1, a2, a3, a4, a5, BYTE3(a5) & 1);
  }
}

uint64_t sub_1005A6B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1005A6C4C(a1, a2, a3, a4, a5);
  }

  return sub_1005A6B50(a1, a2, a3, a4, a5, BYTE2(a5) & 1);
}

uint64_t sub_1005A6B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1005A6C04(a1, a2, a3, a4, a5);
  }

  return sub_1005A6B84(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
}

uint64_t sub_1005A6B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    return sub_1005A6C68();
  }

  v8 = a5 & 1;

  return sub_1005A6BB8(a1, a2, a3, a4, v8);
}

uint64_t sub_1005A6BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1005A6C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1005A6C68();
  }

  else
  {
    return sub_1005A6C4C(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1005A6C68()
{
}

BOOL static MKCoordinateRegion.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a4 != a8)
  {
    v8 = 0;
  }

  return a3 == a7 && v8;
}

uint64_t sub_1005A6D0C(uint64_t a1)
{
  result = type metadata accessor for ArticleModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1005A6D80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100AD59D0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1005A6E50(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x656C6369747261;
  }
}

uint64_t sub_1005A6E8C(void *a1)
{
  v3 = sub_10022C350(&qword_100CC6DD0, &qword_100A62F38);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1005A7414();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for ArticleModel(0);
  sub_1005A7588(&qword_100CC6DD8, byte_100A631D8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for NewsArticleComponent(0);
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1005A7024@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  type metadata accessor for ArticleModel(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CC6DB8, &qword_100A62F30);
  sub_1000037C4();
  v23 = v6;
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for NewsArticleComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1005A7414();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v14 = v13;
  v15 = v23;
  v27 = 0;
  sub_1005A7588(&qword_100CC6DC8, byte_100A63200);
  v16 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v16;
  v18 = v14;
  sub_1005A7468(v17, v14);
  v26 = 1;
  v19 = v25;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v15 + 8))(v9, v19);
  *(v18 + *(v10 + 20)) = v20 & 1;
  sub_1005A74CC(v18, v22);
  sub_100006F14(a1);
  return sub_1005A7530(v18, type metadata accessor for NewsArticleComponent);
}

uint64_t sub_1005A72E4(uint64_t a1, uint64_t a2)
{
  if (sub_1005A80A4(a1, a2))
  {
    v4 = type metadata accessor for NewsArticleComponent(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1005A7340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005A6D80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005A7368(uint64_t a1)
{
  v2 = sub_1005A7414();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A73A4(uint64_t a1)
{
  v2 = sub_1005A7414();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1005A7414()
{
  result = qword_100CC6DC0;
  if (!qword_100CC6DC0)
  {
    result = swift_getWitnessTable(byte_100A63004, &type metadata for NewsArticleComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6DC0);
  }

  return result;
}

uint64_t sub_1005A7468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A74CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticleComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A7530(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1005A7588(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for ArticleModel(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NewsArticleComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005A76AC()
{
  result = qword_100CC6DE0;
  if (!qword_100CC6DE0)
  {
    result = swift_getWitnessTable(asc_100A62FDC, &type metadata for NewsArticleComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6DE0);
  }

  return result;
}

unint64_t sub_1005A7704()
{
  result = qword_100CC6DE8;
  if (!qword_100CC6DE8)
  {
    result = swift_getWitnessTable(byte_100A62F4C, &type metadata for NewsArticleComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6DE8);
  }

  return result;
}

unint64_t sub_1005A775C()
{
  result = qword_100CC6DF0;
  if (!qword_100CC6DF0)
  {
    result = swift_getWitnessTable(asc_100A62F74, &type metadata for NewsArticleComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6DF0);
  }

  return result;
}

uint64_t type metadata accessor for LocationComponentBackgroundHeaderDynamicTypeSizeRangeConfigurationValue(uint64_t a1)
{
  result = qword_100CC6E50;
  if (!qword_100CC6E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005A7834(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_100024D10(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_100024D10(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1005A7970(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_10001B350(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata accessor for ArticleModel(uint64_t a1)
{
  result = qword_100CC6F88;
  if (!qword_100CC6F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005A7BD8(uint64_t a1)
{
  result = type metadata accessor for Article();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NewsArticle(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005A7C4C()
{
  v2 = type metadata accessor for NewsArticle(0);
  __chkstk_darwin(v2 - 8);
  sub_1000037D8();
  v5 = (v4 - v3);
  v6 = type metadata accessor for Article();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v10 = sub_100022E2C();
  type metadata accessor for ArticleModel(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  sub_1005A9030(v0, v13 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100006204();
    sub_1005A91FC(v14, v5, v15);
    v16 = *v5;

    sub_1005A90FC(v5, v6);
  }

  else
  {
    (*(v8 + 32))(v1, v14, v6);
    v16 = Article.id.getter();
    (*(v8 + 8))(v1, v6);
  }

  return v16;
}

uint64_t sub_1005A7DF8()
{
  v1 = v0;
  v2 = type metadata accessor for NewsArticle(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Article();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  type metadata accessor for ArticleModel(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  sub_1005A9030(v1, v16 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100006204();
    sub_1005A91FC(v17, v6, v18);
    v19 = *(v6 + *(v2 + 48));

    sub_1005A90FC(v6, v7);
  }

  else
  {
    (*(v9 + 32))(v13, v17, v7);
    v19 = Article.alertIds.getter();
    (*(v9 + 8))(v13, v7);
  }

  return v19;
}

uint64_t sub_1005A7FAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1005A8070(char a1)
{
  if (a1)
  {
    return 0x646564616F6CLL;
  }

  else
  {
    return 0x676E6964616F6CLL;
  }
}

uint64_t sub_1005A80A4(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v4 = type metadata accessor for NewsArticle(0);
  __chkstk_darwin(v4 - 8);
  sub_1000037D8();
  v7 = (v6 - v5);
  v8 = type metadata accessor for Article();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v12 = sub_100022E2C();
  type metadata accessor for ArticleModel(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  sub_10022C350(&qword_100CC6FC0, &qword_100A63250);
  sub_100003828();
  __chkstk_darwin(v19);
  v21 = &v27 - v20;
  v23 = *(v22 + 56);
  sub_1005A9030(a1, &v27 - v20);
  sub_1005A9030(v28, &v21[v23]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1005A9030(v21, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1005A91FC(&v21[v23], v7, type metadata accessor for NewsArticle);
      v24 = sub_1008BE2A4(v15, v7);
      sub_1005A90FC(v7, type metadata accessor for NewsArticle);
      sub_1005A90FC(v15, type metadata accessor for NewsArticle);
LABEL_9:
      sub_1005A90FC(v21, type metadata accessor for ArticleModel);
      return v24 & 1;
    }

    sub_1005A90FC(v15, type metadata accessor for NewsArticle);
  }

  else
  {
    sub_1005A9030(v21, v18);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v10 + 32))(v2, &v21[v23], v8);
      v24 = static Article.== infix(_:_:)();
      v25 = *(v10 + 8);
      v25(v2, v8);
      v25(v18, v8);
      goto LABEL_9;
    }

    (*(v10 + 8))(v18, v8);
  }

  sub_1005A9094(v21);
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1005A83B8(void *a1)
{
  sub_10022C350(&qword_100CC7000, &qword_100A63278);
  sub_1000037C4();
  v44 = v4;
  v45 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v43 = &v38 - v6;
  v41 = type metadata accessor for NewsArticle(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v42 = v9 - v8;
  sub_10022C350(&qword_100CC7008, &qword_100A63280);
  sub_1000037C4();
  v39 = v11;
  v40 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v38 = type metadata accessor for Article();
  sub_1000037C4();
  v47 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v17 = sub_100022E2C();
  type metadata accessor for ArticleModel(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v48 = sub_10022C350(&qword_100CC7010, &qword_100A63288);
  sub_1000037C4();
  v23 = v22;
  sub_100003828();
  __chkstk_darwin(v24);
  v26 = &v38 - v25;
  v27 = a1[4];
  sub_1000161C0(a1, a1[3]);
  sub_1005A9154();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1005A9030(v46, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v42;
    sub_1005A91FC(v21, v42, type metadata accessor for NewsArticle);
    v50 = 1;
    sub_1005A91A8();
    v29 = v43;
    sub_100016BB8(&type metadata for ArticleModel.LoadedCodingKeys, &v50);
    sub_1000089A4();
    sub_1005A92B0(v30, v31, byte_100A9627C);
    v32 = v45;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v44 + 8))(v29, v32);
    sub_1005A90FC(v28, type metadata accessor for NewsArticle);
  }

  else
  {
    v34 = v38;
    (*(v47 + 32))(v1, v21, v38);
    v49 = 0;
    sub_1005A925C();
    sub_100016BB8(&type metadata for ArticleModel.LoadingCodingKeys, &v49);
    sub_1000149AC();
    sub_1005A92B0(v35, v36, &protocol conformance descriptor for Article);
    v37 = v40;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v39 + 8))(v14, v37);
    (*(v47 + 8))(v1, v34);
  }

  return (*(v23 + 8))(v26, v27);
}

uint64_t sub_1005A8844@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v72 = sub_10022C350(&qword_100CC6FC8, &qword_100A63258);
  sub_1000037C4();
  v67 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  v69 = &v60 - v5;
  sub_10022C350(&qword_100CC6FD0, &qword_100A63260);
  sub_1000037C4();
  v65 = v7;
  v66 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v68 = &v60 - v9;
  sub_10022C350(&qword_100CC6FD8, &unk_100A63268);
  sub_1000037C4();
  v70 = v11;
  v71 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  v15 = type metadata accessor for ArticleModel(0);
  sub_1000037E8();
  __chkstk_darwin(v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  __chkstk_darwin(v22);
  v24 = &v60 - v23;
  sub_1000161C0(a1, a1[3]);
  sub_1005A9154();
  v25 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    goto LABEL_8;
  }

  v60 = v18;
  v61 = v21;
  v26 = v71;
  v62 = v24;
  v63 = v15;
  v73 = a1;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  if (v29 == v30 >> 1)
  {
LABEL_7:
    v43 = v63;
    v44 = type metadata accessor for DecodingError();
    swift_allocError();
    v46 = v45;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v46 = v43;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v44 - 8) + 104))(v46, enum case for DecodingError.typeMismatch(_:), v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    v47 = sub_10000456C();
    v48(v47, v26);
    a1 = v73;
LABEL_8:
    v49 = a1;
    return sub_100006F14(v49);
  }

  if (v29 < (v30 >> 1))
  {
    v74 = *(v28 + v29);
    sub_100618E7C();
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();
    if (v32 == v34 >> 1)
    {
      v35 = v26;
      if (v74)
      {
        v76 = 1;
        sub_1005A91A8();
        sub_100074C4C(&type metadata for ArticleModel.LoadedCodingKeys, &v76);
        v36 = v62;
        v37 = type metadata accessor for NewsArticle(0);
        sub_1000089A4();
        sub_1005A92B0(v38, v39, byte_100A962A4);
        v40 = v60;
        sub_1000499B8(v37, v41);
        v42 = v70;
        swift_unknownObjectRelease();
        v54 = sub_100019AAC();
        v55(v54);
        (*(v42 + 8))(v14, v35);
      }

      else
      {
        v75 = 0;
        sub_1005A925C();
        sub_100074C4C(&type metadata for ArticleModel.LoadingCodingKeys, &v75);
        v36 = v62;
        v50 = type metadata accessor for Article();
        sub_1000149AC();
        sub_1005A92B0(v51, v52, &protocol conformance descriptor for Article);
        v40 = v61;
        sub_1000499B8(v50, v53);
        swift_unknownObjectRelease();
        v56 = sub_100019AAC();
        v57(v56);
        v58 = sub_10000456C();
        v59(v58, v35);
      }

      swift_storeEnumTagMultiPayload();
      sub_1005A91FC(v40, v36, type metadata accessor for ArticleModel);
      sub_1005A91FC(v36, v64, type metadata accessor for ArticleModel);
      v49 = v73;
      return sub_100006F14(v49);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005A8E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005A7FAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005A8E94(uint64_t a1)
{
  v2 = sub_1005A9154();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A8ED0(uint64_t a1)
{
  v2 = sub_1005A9154();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005A8F0C(uint64_t a1)
{
  v2 = sub_1005A91A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A8F48(uint64_t a1)
{
  v2 = sub_1005A91A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005A8F84(uint64_t a1)
{
  v2 = sub_1005A925C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A8FC0(uint64_t a1)
{
  v2 = sub_1005A925C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005A9030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A9094(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC6FC0, &qword_100A63250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005A90FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1005A9154()
{
  result = qword_100CC6FE0;
  if (!qword_100CC6FE0)
  {
    result = swift_getWitnessTable(aU_55, &type metadata for ArticleModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6FE0);
  }

  return result;
}

unint64_t sub_1005A91A8()
{
  result = qword_100CC6FE8;
  if (!qword_100CC6FE8)
  {
    result = swift_getWitnessTable(byte_100A6354C, &type metadata for ArticleModel.LoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6FE8);
  }

  return result;
}

uint64_t sub_1005A91FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1005A925C()
{
  result = qword_100CC6FF0;
  if (!qword_100CC6FF0)
  {
    result = swift_getWitnessTable(byte_100A634FC, &type metadata for ArticleModel.LoadingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6FF0);
  }

  return result;
}

uint64_t sub_1005A92B0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ArticleModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1005A93E4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1005A9494()
{
  result = qword_100CC7020;
  if (!qword_100CC7020)
  {
    result = swift_getWitnessTable(byte_100A63364, &type metadata for ArticleModel.LoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC7020);
  }

  return result;
}

unint64_t sub_1005A94EC()
{
  result = qword_100CC7028;
  if (!qword_100CC7028)
  {
    result = swift_getWitnessTable(byte_100A6341C, &type metadata for ArticleModel.LoadingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC7028);
  }

  return result;
}

unint64_t sub_1005A9544()
{
  result = qword_100CC7030;
  if (!qword_100CC7030)
  {
    result = swift_getWitnessTable(asc_100A634D4, &type metadata for ArticleModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC7030);
  }

  return result;
}

unint64_t sub_1005A959C()
{
  result = qword_100CC7038;
  if (!qword_100CC7038)
  {
    result = swift_getWitnessTable(aU_56, &type metadata for ArticleModel.LoadingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC7038);
  }

  return result;
}

unint64_t sub_1005A95F4()
{
  result = qword_100CC7040;
  if (!qword_100CC7040)
  {
    result = swift_getWitnessTable(byte_100A633B4, &type metadata for ArticleModel.LoadingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC7040);
  }

  return result;
}

unint64_t sub_1005A964C()
{
  result = qword_100CC7048;
  if (!qword_100CC7048)
  {
    result = swift_getWitnessTable(asc_100A632D4, &type metadata for ArticleModel.LoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC7048);
  }

  return result;
}

unint64_t sub_1005A96A4()
{
  result = qword_100CC7050;
  if (!qword_100CC7050)
  {
    result = swift_getWitnessTable(aM_55, &type metadata for ArticleModel.LoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC7050);
  }

  return result;
}

unint64_t sub_1005A96FC()
{
  result = qword_100CC7058;
  if (!qword_100CC7058)
  {
    result = swift_getWitnessTable(byte_100A63444, &type metadata for ArticleModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC7058);
  }

  return result;
}

unint64_t sub_1005A9754()
{
  result = qword_100CC7060;
  if (!qword_100CC7060)
  {
    result = swift_getWitnessTable(aE_56, &type metadata for ArticleModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC7060);
  }

  return result;
}

uint64_t sub_1005A97B8(uint64_t a1)
{
  sub_100172120(&qword_100CC7118, aM_56);

  return ShortDescribable.description.getter();
}

uint64_t sub_1005A9810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1005A986C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1005A98D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x8000000100AC4E30 == a2)
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

uint64_t sub_1005A99EC(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 0x7470697263736564;
  }

  return 0xD000000000000018;
}

uint64_t sub_1005A9A4C(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CC7130, &qword_100A63780);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1005A9ED4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  sub_10000845C(v11, v12, &v21);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v20 = 1;
    sub_10000845C(v13, v14, &v20);
    v15 = v3[4];
    v16 = v3[5];
    v19 = 2;
    sub_10000845C(v15, v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1005A9BA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CC7120, &qword_100A63778);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1005A9ED4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v12;
  v26 = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v13;
  v25 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = sub_100006F14(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v14;
  a2[5] = v17;
  return result;
}

uint64_t sub_1005A9DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005A98D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005A9E00(uint64_t a1)
{
  v2 = sub_1005A9ED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A9E3C(uint64_t a1)
{
  v2 = sub_1005A9ED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1005A9E78@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1005A9BA8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_1005A9ED4()
{
  result = qword_100CC7128;
  if (!qword_100CC7128)
  {
    result = swift_getWitnessTable(byte_100A6384C, &type metadata for VisibilityComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC7128);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VisibilityComponentPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005AA008()
{
  result = qword_100CC7138;
  if (!qword_100CC7138)
  {
    result = swift_getWitnessTable(byte_100A63824, &type metadata for VisibilityComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC7138);
  }

  return result;
}

unint64_t sub_1005AA060()
{
  result = qword_100CC7140;
  if (!qword_100CC7140)
  {
    result = swift_getWitnessTable(aM_57, &type metadata for VisibilityComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC7140);
  }

  return result;
}

unint64_t sub_1005AA0B8()
{
  result = qword_100CC7148[0];
  if (!qword_100CC7148[0])
  {
    result = swift_getWitnessTable(byte_100A637BC, &type metadata for VisibilityComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, qword_100CC7148);
  }

  return result;
}

uint64_t sub_1005AA10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1005AA1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, void (*)(void, void))@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v363 = a6;
  v358 = a4;
  v362 = a3;
  v357 = a2;
  v339 = a1;
  v320 = a7;
  v8 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v8 - 8);
  v299 = v296 - v9;
  v297 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v297);
  sub_100003848();
  v318 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  v13 = v296 - v12;
  __chkstk_darwin(v14);
  v16 = v296 - v15;
  __chkstk_darwin(v17);
  sub_100003878();
  v315 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v314 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v312 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v310 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v308 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v306 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v304 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v302 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v300 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v296[0] = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  v39 = v296 - v38;
  v40 = *(a5 - 8);
  __chkstk_darwin(v41);
  sub_100003848();
  v319 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v337 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v336 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v335 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v334 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v333 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v332 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v331 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v330 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v329 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v316 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v328 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v313 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  v69 = v296 - v68;
  __chkstk_darwin(v70);
  sub_100003878();
  v311 = v71;
  sub_10000386C();
  __chkstk_darwin(v72);
  sub_100003878();
  v353 = v73;
  sub_10000386C();
  __chkstk_darwin(v74);
  sub_100003878();
  v309 = v75;
  sub_10000386C();
  __chkstk_darwin(v76);
  sub_100003878();
  v352 = v77;
  sub_10000386C();
  __chkstk_darwin(v78);
  sub_100003878();
  v307 = v79;
  sub_10000386C();
  __chkstk_darwin(v80);
  sub_100003878();
  v351 = v81;
  sub_10000386C();
  __chkstk_darwin(v82);
  sub_100003878();
  v305 = v83;
  sub_10000386C();
  __chkstk_darwin(v84);
  sub_100003878();
  v350 = v85;
  sub_10000386C();
  __chkstk_darwin(v86);
  sub_100003878();
  v303 = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  sub_100003878();
  v349 = v89;
  sub_10000386C();
  __chkstk_darwin(v90);
  sub_100003878();
  v301 = v91;
  sub_10000386C();
  __chkstk_darwin(v92);
  sub_100003878();
  v348 = v93;
  sub_10000386C();
  __chkstk_darwin(v94);
  sub_100003878();
  v298 = v95;
  sub_10000386C();
  __chkstk_darwin(v96);
  sub_100003878();
  v347 = v97;
  sub_10000386C();
  __chkstk_darwin(v98);
  sub_100003878();
  v296[3] = v99;
  sub_10000386C();
  __chkstk_darwin(v100);
  sub_100003878();
  v346 = v101;
  sub_10000386C();
  __chkstk_darwin(v102);
  sub_100003878();
  v296[2] = v103;
  sub_10000386C();
  __chkstk_darwin(v104);
  sub_100003878();
  v345 = v105;
  sub_10000386C();
  __chkstk_darwin(v106);
  sub_100003878();
  v296[1] = v107;
  sub_10000386C();
  __chkstk_darwin(v108);
  sub_100003878();
  v344 = v109;
  sub_10000386C();
  __chkstk_darwin(v110);
  v112 = v296 - v111;
  __chkstk_darwin(v113);
  v115 = v296 - v114;
  v361 = type metadata accessor for Optional();
  v322 = *(v361 - 8);
  __chkstk_darwin(v361);
  sub_100003848();
  v326 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v325 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v324 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v343 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  sub_100003878();
  v342 = v124;
  sub_10000386C();
  __chkstk_darwin(v125);
  sub_100003878();
  v341 = v126;
  sub_10000386C();
  __chkstk_darwin(v127);
  v129 = v296 - v128;
  __chkstk_darwin(v130);
  v340 = v296 - v131;
  sub_100566A24(v357, v383);
  v327 = v40;
  v356 = v112;
  v360 = v115;
  v323 = v13;
  v321 = v39;
  v354 = v69;
  v317 = v16;
  if (v384)
  {
    v132 = 1;
  }

  else
  {
    v359 = v383[3];
    v133 = v383[2];
    v134 = v383[1];
    v135 = v383[0];
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_severeAlert, v39);
    v362(v39, v135, v134, v133, v359);
    sub_1001B4354(v39);
    v136 = sub_100007EE8();
    v137 = v363;
    sub_1000833D8(v136, v138, v363);
    v139 = *(v40 + 8);
    v140 = sub_100007EE8();
    v139(v140);
    v141 = sub_100005474();
    sub_1000833D8(v141, v142, v137);
    v143 = sub_100005474();
    v139(v143);
    (*(v40 + 32))(v129, v112, a5);
    v132 = 0;
  }

  v144 = v129;
  v145 = 1;
  sub_100017568(v129, v132);
  sub_100007F30();
  sub_1003E7FD4(v146, v147);
  v148 = v322 + 8;
  v359 = *(v322 + 8);
  v359(v129, v361);
  sub_100566BC8(v357, v385);
  v355 = v129;
  v338 = v148;
  if ((v385[32] & 1) == 0)
  {
    v149 = v321;
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_newsArticle, v321);
    v150 = v356;
    sub_10004E364();
    v151();
    sub_1001B4354(v149);
    v152 = sub_100007EE8();
    v153 = v363;
    sub_1000833D8(v152, v154, v363);
    v155 = v327;
    v156 = *(v327 + 8);
    v157 = sub_100007EE8();
    v156(v157);
    v158 = sub_100005480();
    sub_1000833D8(v158, v159, v153);
    v160 = sub_100005480();
    v156(v160);
    v144 = v355;
    (*(v155 + 32))(v355, v150, a5);
    v145 = 0;
  }

  v161 = 1;
  sub_100017568(v144, v145);
  sub_100007F30();
  sub_1003E7FD4(v162, v163);
  v164 = sub_100049604();
  v165(v164);
  v166 = v357;
  sub_100566A40(v357, v386);
  v167 = v321;
  if ((v386[32] & 1) == 0)
  {
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_airQuality, v321);
    v166 = v357;
    sub_10004E364();
    v168();
    sub_1001B4354(v167);
    v169 = sub_100003A80();
    v170 = v363;
    sub_1000833D8(v169, v171, v363);
    v144 = *(v327 + 8);
    v172 = sub_100003A80();
    (v144)(v172);
    v173 = sub_100005474();
    sub_1000833D8(v173, v174, v170);
    v175 = sub_100005474();
    (v144)(v175);
    v176 = sub_1000280F8();
    v177(v176);
    v161 = 0;
  }

  sub_100017568(v144, v161);
  sub_100007F30();
  sub_1003E7FD4(v178, v179);
  v180 = sub_100049604();
  v181(v180);
  v182 = OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_map;
  v183 = v339;
  swift_beginAccess();
  v184 = v183 + v182;
  v185 = v299;
  sub_10026E174(v184, v299);
  if (sub_100024D10(v185, 1, v297) == 1)
  {
    sub_10026E1E4(v185);
    v186 = 1;
    v187 = v327;
  }

  else
  {
    v188 = v185;
    v189 = v296[0];
    sub_10026E24C(v188, v296[0]);
    sub_100566A5C(v166, v387);
    v187 = v327;
    if (v388)
    {
      sub_1001B4354(v189);
      v186 = 1;
    }

    else
    {
      v362(v189, v387[0], v387[1], v387[2], v387[3]);
      sub_1001B4354(v189);
      v190 = sub_100003A80();
      v191 = v363;
      sub_1000833D8(v190, v192, v363);
      v144 = *(v187 + 8);
      v193 = sub_100003A80();
      (v144)(v193);
      sub_1000833D8(v360, a5, v191);
      (v144)(v360, a5);
      v194 = sub_1000280F8();
      v195(v194);
      v186 = 0;
    }
  }

  v196 = v300;
  sub_100017568(v144, v186);
  sub_100007F30();
  sub_1003E7FD4(v197, v198);
  v199 = sub_100049604();
  v200(v199);
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v196);
  sub_100566A78(v166, v389);
  if (v390)
  {
    goto LABEL_31;
  }

  v362(v196, v389[0], v389[1], v389[2], v389[3]);
  sub_1001B4354(v196);
  sub_100007F30();
  sub_1000833D8(v201, v202, v203);
  v204 = *(v187 + 8);
  v205 = sub_100003A80();
  v204(v205);
  v206 = v302;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v302);
  sub_100566A94(v166, v391);
  if (v391[32])
  {
    goto LABEL_31;
  }

  v207 = sub_100014130();
  v208(v207);
  sub_1001B4354(v206);
  v209 = sub_100005474();
  sub_1000833D8(v209, v210, v363);
  v211 = sub_100005474();
  v204(v211);
  v212 = v304;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v304);
  sub_100566AB0(v166, v392);
  if (v392[32])
  {
    goto LABEL_34;
  }

  v213 = sub_100014130();
  v214(v213);
  sub_1001B4354(v212);
  v215 = sub_100005474();
  sub_1000833D8(v215, v216, v363);
  v217 = sub_100005474();
  v204(v217);
  v218 = v306;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v306);
  sub_100566ACC(v166, v393);
  if (v393[32])
  {
    goto LABEL_31;
  }

  v219 = sub_10002279C();
  v220(v219);
  sub_1001B4354(v218);
  sub_100007F30();
  sub_1000833D8(v221, v222, v223);
  v224 = sub_100003A80();
  v204(v224);
  v225 = v308;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v308);
  sub_100566AE8(v166, v394);
  if (v394[32])
  {
    goto LABEL_34;
  }

  v226 = sub_10002279C();
  v227(v226);
  sub_1001B4354(v225);
  sub_100007F30();
  sub_1000833D8(v228, v229, v230);
  v231 = sub_100003A80();
  v204(v231);
  v232 = v310;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v310);
  sub_100566B04(v166, v395);
  if (v395[32])
  {
    goto LABEL_31;
  }

  v233 = sub_10002279C();
  v234(v233);
  sub_1001B4354(v232);
  sub_100007F30();
  sub_1000833D8(v235, v236, v237);
  v238 = sub_100003A80();
  v204(v238);
  v239 = v312;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v312);
  sub_100566B20(v166, v396);
  if (v396[32])
  {
    goto LABEL_31;
  }

  v240 = sub_100014130();
  v241(v240);
  sub_1001B4354(v239);
  v242 = sub_100005474();
  sub_1000833D8(v242, v243, v363);
  v244 = sub_100005474();
  v204(v244);
  v245 = v314;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v314);
  sub_100566B3C(v166, v397);
  if (v397[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v246 = sub_100014130();
  v247(v246);
  sub_1001B4354(v245);
  v248 = sub_100005474();
  sub_1000833D8(v248, v249, v363);
  v250 = sub_100005474();
  v204(v250);
  v251 = v315;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v315);
  sub_100566B58(v166, &v398);
  if ((v399 & 1) == 0)
  {
    v252 = sub_10002279C();
    v253(v252);
    sub_1001B4354(v251);
    sub_100007F30();
    sub_1000833D8(v254, v255, v256);
    v257 = sub_100003A80();
    v204(v257);
    v258 = v317;
    sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v317);
    sub_100566B74(v166, &v400);
    if ((v401 & 1) == 0)
    {
      v259 = sub_100014130();
      v260(v259);
      sub_1001B4354(v258);
      v261 = sub_100005474();
      sub_1000833D8(v261, v262, v363);
      v263 = sub_100005474();
      v204(v263);
      sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v323);
      sub_100566B90(v166, v402);
      if ((v403 & 1) == 0)
      {
        v264 = v323;
        v362(v323, v402[0], v402[1], v402[2], v402[3]);
        sub_1001B4354(v264);
        v265 = sub_100005474();
        sub_1000833D8(v265, v266, v363);
        v267 = sub_100005474();
        v204(v267);
        v268 = v318;
        sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v318);
        sub_100566BAC(v166, v404);
        if ((v405 & 1) == 0)
        {
          v362(v268, v404[0], v404[1], v404[2], v404[3]);
          sub_1001B4354(v268);
          v269 = sub_100005480();
          v270 = v363;
          sub_1000833D8(v269, v271, v363);
          v272 = sub_100005480();
          v204(v272);
          v273 = *(v322 + 16);
          v274 = v355;
          v275 = v361;
          v273(v355, v340, v361);
          v382[0] = v274;
          v276 = v324;
          v273(v324, v341, v275);
          v382[1] = v276;
          v277 = v325;
          v273(v325, v342, v275);
          v382[2] = v277;
          v278 = v326;
          v273(v326, v343, v275);
          v382[3] = v278;
          v279 = *(v187 + 16);
          v280 = v360;
          v279(v360, v344, a5);
          v382[4] = v280;
          v281 = v356;
          v279(v356, v345, a5);
          v382[5] = v281;
          v282 = v329;
          v279(v329, v346, a5);
          v382[6] = v282;
          v283 = v330;
          v279(v330, v347, a5);
          v382[7] = v283;
          v284 = v331;
          v279(v331, v348, a5);
          v382[8] = v284;
          v285 = v332;
          v279(v332, v349, a5);
          v382[9] = v285;
          v286 = v333;
          v279(v333, v350, a5);
          v382[10] = v286;
          v287 = v334;
          v279(v334, v351, a5);
          v382[11] = v287;
          v288 = v335;
          v279(v335, v352, a5);
          v382[12] = v288;
          v289 = v336;
          v279(v336, v353, a5);
          v382[13] = v289;
          v290 = v337;
          v279(v337, v354, a5);
          v382[14] = v290;
          v291 = v319;
          v279(v319, v328, a5);
          v382[15] = v291;
          v381[0] = v275;
          v381[1] = v275;
          v381[2] = v275;
          v381[3] = v275;
          v381[4] = a5;
          v381[5] = a5;
          v381[6] = a5;
          v381[7] = a5;
          v381[8] = a5;
          v381[9] = a5;
          v381[10] = a5;
          v381[11] = a5;
          v381[12] = a5;
          v381[13] = a5;
          v381[14] = a5;
          v381[15] = a5;
          v364 = v270;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v275, &v364);
          v366 = WitnessTable;
          v367 = WitnessTable;
          v368 = WitnessTable;
          v369 = v270;
          v370 = v270;
          v371 = v270;
          v372 = v270;
          v373 = v270;
          v374 = v270;
          v375 = v270;
          v376 = v270;
          v377 = v270;
          v378 = v270;
          v379 = v270;
          v380 = v270;
          sub_10012E24C(v382, 16, v381);
          v292 = sub_100005480();
          v204(v292);
          (v204)(v354, a5);
          (v204)(v353, a5);
          (v204)(v352, a5);
          (v204)(v351, a5);
          (v204)(v350, a5);
          (v204)(v349, a5);
          (v204)(v348, a5);
          (v204)(v347, a5);
          (v204)(v346, a5);
          (v204)(v345, a5);
          (v204)(v344, a5);
          v293 = v359;
          v359(v343, v275);
          v293(v342, v275);
          v293(v341, v275);
          v293(v340, v275);
          v294 = sub_100007EE8();
          v204(v294);
          (v204)(v337, a5);
          (v204)(v336, a5);
          (v204)(v335, a5);
          (v204)(v334, a5);
          (v204)(v333, a5);
          (v204)(v332, a5);
          (v204)(v331, a5);
          (v204)(v330, a5);
          (v204)(v329, a5);
          (v204)(v356, a5);
          (v204)(v360, a5);
          v293(v326, v275);
          v293(v325, v275);
          v293(v324, v275);
          return (v293)(v355, v275);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005ABB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v52 = type metadata accessor for ViewState(0) - 8;
  __chkstk_darwin(v52);
  sub_1000038E4();
  v50 = v5;
  v48 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v47 = v7;
  v8 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v8 - 8);
  sub_1000038E4();
  v55 = v9;
  type metadata accessor for Location();
  sub_1000037C4();
  v44 = v11;
  v45 = v10;
  __chkstk_darwin(v10);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v49 = v14;
  __chkstk_darwin(v15);
  sub_1000038E4();
  v54 = v16;
  v17 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v17 - 8);
  v19 = &v41[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v20);
  v23 = &v41[-v22];
  (*(v2 + 16))(v57, v21);
  v24 = v57[0];
  v25 = v57[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v26 = type metadata accessor for LocationsState(0);
  v56 = a1;

  v46 = v23;
  sub_1008DC1EC();

  (*(v44 + 16))(v13, a1, v45);
  sub_1005AC2E8(v23, v19);
  LocationModel.init(location:locationOfInterest:isPredictedLocation:)();
  v45 = sub_1000161C0((v3 + 48), *(v3 + 72));
  v27 = *(v25 + *(v26 + 36));
  sub_100086340(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v55, type metadata accessor for TimeState);
  LODWORD(v44) = *(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v28 = *(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v43 = *(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v29 = *(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v30 = *(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v31 = v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v42 = *(v31 + *(type metadata accessor for EnvironmentState(0) + 40));
  v32 = v47;
  sub_100086340(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v47, type metadata accessor for ModalViewState);
  LODWORD(v48) = swift_getEnumCaseMultiPayload() == 0;

  sub_1000DFF90(v32, type metadata accessor for ModalViewState);
  LOBYTE(v25) = *(v31 + 3) == 4;
  v33 = v50;
  sub_100086340(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v50, type metadata accessor for ViewState);
  v34 = *(v33 + *(v52 + 44) + 8);
  sub_1000DFF90(v33, type metadata accessor for ViewState);
  v40 = v34;
  v39 = v25;
  v35 = v54;
  v36 = v55;
  sub_10052CECC(v54, v27, v55, v28, v53, v29, v30, v42, 0, 0, 1u, v48, v39, v40);

  (*(v49 + 8))(v35, v51);
  sub_1005AC358(v46);
  type metadata accessor for Date();
  sub_1000037E8();
  return (*(v37 + 8))(v36);
}

uint64_t sub_1005AC0CC()
{
  v0 = type metadata accessor for Location.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Location();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationOfInterest.location.getter();
  Location.identifier.getter();
  (*(v8 + 8))(v10, v7);
  Location.identifier.getter();
  v11 = static Location.Identifier.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  return v11 & 1;
}

uint64_t sub_1005AC2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005AC358(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005AC3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v85 = a2;
  v84 = type metadata accessor for EnvironmentValues();
  v86 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CC7278, &qword_100A63AB8);
  __chkstk_darwin(v4);
  v6 = &v76 - v5;
  v7 = sub_10022C350(&qword_100CC7280, &qword_100A63AC0);
  __chkstk_darwin(v7);
  v9 = &v76 - v8;
  v10 = sub_10022C350(&qword_100CC7288, &qword_100A63AC8);
  __chkstk_darwin(v10);
  v12 = &v76 - v11;
  v13 = static Edge.Set.top.getter();
  v14 = *v2;
  v15 = static Edge.Set.top.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v15 && (v2[40] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v80 = v2;
    v78 = v14;
    v77 = v10;
    v16 = static Log.runtimeIssuesLog.getter();
    v79 = v12;
    v17 = v16;
    v18 = v86;
    v81 = v7;
    v20 = v83;
    v19 = v84;
    v2 = v80;
    os_log(_:dso:log:_:_:)();

    v12 = v79;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005ACB10(v2);
    v21 = v20;
    v7 = v81;
    v22 = v19;
    v10 = v77;
    (*(v18 + 8))(v21, v22);
  }

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_10022C350(&qword_100CC7290, &qword_100A63AD0);
  (*(*(v31 - 8) + 16))(v6, v82, v31);
  v32 = &v6[*(v4 + 36)];
  *v32 = v13;
  *(v32 + 1) = v24;
  *(v32 + 2) = v26;
  *(v32 + 3) = v28;
  *(v32 + 4) = v30;
  v32[40] = 0;
  v33 = static Edge.Set.bottom.getter();
  v34 = static Edge.Set.bottom.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v34 && (v2[40] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v81 = v7;
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v36 = v83;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005ACB10(v2);
    v37 = v36;
    v7 = v81;
    (*(v86 + 8))(v37, v84);
  }

  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_1005AD458(v6, v9, &qword_100CC7278, &qword_100A63AB8);
  v46 = &v9[*(v7 + 36)];
  *v46 = v33;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = static Edge.Set.leading.getter();
  v48 = static Edge.Set.leading.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v48 && (v2[40] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v50 = v83;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005ACB10(v2);
    (*(v86 + 8))(v50, v84);
  }

  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_1005AD458(v9, v12, &qword_100CC7280, &qword_100A63AC0);
  v59 = &v12[*(v10 + 36)];
  *v59 = v47;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  v60 = static Edge.Set.trailing.getter();
  v61 = static Edge.Set.trailing.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v61 && (v2[40] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v62 = static Log.runtimeIssuesLog.getter();
    v63 = v83;
    v64 = v62;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005ACB10(v2);
    (*(v86 + 8))(v63, v84);
  }

  EdgeInsets.init(_all:)();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v85;
  sub_1005AD458(v12, v85, &qword_100CC7288, &qword_100A63AC8);
  result = sub_10022C350(&qword_100CC7298, &qword_100A63AD8);
  v75 = v73 + *(result + 36);
  *v75 = v60;
  *(v75 + 8) = v66;
  *(v75 + 16) = v68;
  *(v75 + 24) = v70;
  *(v75 + 32) = v72;
  *(v75 + 40) = 0;
  return result;
}

uint64_t sub_1005ACB40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005ACB80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_1005ACC44()
{
  result = qword_100CC72B8;
  if (!qword_100CC72B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC7278, &qword_100A63AB8);
    v4[0] = sub_1005AD678(&qword_100CC72C0, &qword_100CC7290, &qword_100A63AD0);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC72B8);
  }

  return result;
}

uint64_t sub_1005ACD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v82 = type metadata accessor for EnvironmentValues();
  v84 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CC72C8, &qword_100A63BD8);
  __chkstk_darwin(v5);
  v7 = &v76 - v6;
  v8 = sub_10022C350(&qword_100CC72D0, &qword_100A63BE0);
  __chkstk_darwin(v8);
  v10 = &v76 - v9;
  v11 = sub_10022C350(&qword_100CC72D8, &qword_100A63BE8);
  __chkstk_darwin(v11);
  v13 = &v76 - v12;
  LODWORD(v80) = static Edge.Set.top.getter();
  v14 = *v2;
  v15 = static Edge.Set.top.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v15 && (v2[48] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v78 = v14;
    v77 = v11;
    v16 = static Log.runtimeIssuesLog.getter();
    v79 = v13;
    v17 = v16;
    v18 = v84;
    v76 = a1;
    v19 = v81;
    v20 = v82;
    os_log(_:dso:log:_:_:)();

    v13 = v79;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005AD4C0(v2);
    v21 = v19;
    v22 = v20;
    a1 = v76;
    v11 = v77;
    (*(v18 + 8))(v21, v22);
  }

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_10022C350(&qword_100CC72E0, &qword_100A63BF0);
  (*(*(v31 - 8) + 16))(v7, a1, v31);
  v32 = &v7[*(v5 + 36)];
  *v32 = v80;
  *(v32 + 1) = v24;
  *(v32 + 2) = v26;
  *(v32 + 3) = v28;
  *(v32 + 4) = v30;
  v32[40] = 0;
  v33 = static Edge.Set.bottom.getter();
  v34 = static Edge.Set.bottom.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v34 && (v2[48] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v80 = v8;
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v36 = v81;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005AD4C0(v2);
    v37 = v36;
    v8 = v80;
    (*(v84 + 8))(v37, v82);
  }

  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_1005AD458(v7, v10, &qword_100CC72C8, &qword_100A63BD8);
  v46 = &v10[*(v8 + 36)];
  *v46 = v33;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = static Edge.Set.leading.getter();
  v48 = static Edge.Set.leading.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v48 && (v2[48] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v50 = v81;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005AD4C0(v2);
    (*(v84 + 8))(v50, v82);
  }

  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_1005AD458(v10, v13, &qword_100CC72D0, &qword_100A63BE0);
  v59 = &v13[*(v11 + 36)];
  *v59 = v47;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  v60 = static Edge.Set.trailing.getter();
  v61 = static Edge.Set.trailing.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v61 && (v2[48] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v62 = static Log.runtimeIssuesLog.getter();
    v63 = v81;
    v64 = v62;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005AD4C0(v2);
    (*(v84 + 8))(v63, v82);
  }

  EdgeInsets.init(_all:)();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v83;
  sub_1005AD458(v13, v83, &qword_100CC72D8, &qword_100A63BE8);
  result = sub_10022C350(&qword_100CC72E8, &qword_100A63BF8);
  v75 = v73 + *(result + 36);
  *v75 = v60;
  *(v75 + 8) = v66;
  *(v75 + 16) = v68;
  *(v75 + 24) = v70;
  *(v75 + 32) = v72;
  *(v75 + 40) = 0;
  return result;
}

uint64_t sub_1005AD458(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10022C350(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1005AD550(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10022E824(a2, a3);
    v8[0] = a4();
    v8[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005AD5D4()
{
  result = qword_100CC7308;
  if (!qword_100CC7308)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC72C8, &qword_100A63BD8);
    v4[0] = sub_1005AD678(&qword_100CC7310, &qword_100CC72E0, &qword_100A63BF0);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC7308);
  }

  return result;
}

uint64_t sub_1005AD678(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10022E824(a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for _ViewModifier_Content<A>, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005AD6CC@<X0>(uint64_t *a1@<X8>)
{
  sub_100035B30(v1 + 16, (a1 + 2));

  sub_10022C350(&qword_100CA4DF0, &qword_100A2F040);
  sub_1005AD760();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1005AD760()
{
  result = qword_100CA4DF8;
  if (!qword_100CA4DF8)
  {
    v3 = sub_10022E824(&qword_100CA4DF0, &qword_100A2F040);
    result = swift_getWitnessTable(asc_100AA1480, v3, v0, v1);
    atomic_store(result, &qword_100CA4DF8);
  }

  return result;
}

uint64_t sub_1005AD7C4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1005AD824(a2);
  }

  return result;
}

void sub_1005AD824(void *a1)
{
  v2 = [a1 rootViewController];
  if (v2)
  {
    v9 = v2;
    v3 = sub_1005ADA48(v2);
    if (v3)
    {
      v4 = v3;
      sub_1000161C0((v1 + 16), *(v1 + 40));
      type metadata accessor for DebugNavigationController();
      v5 = dispatch thunk of ResolverType.resolve<A>(_:)();
      if (v5)
      {
        v6 = v5;
        [v5 setModalPresentationStyle:2];
        [v6 setModalInPresentation:1];
        [v4 presentViewController:v6 animated:1 completion:0];

        v7 = v4;
        v4 = v6;
      }

      else
      {
        v7 = v9;
      }

      v8 = v4;
    }

    else
    {
      v8 = v9;
    }
  }
}

void sub_1005AD938()
{
  v0 = [objc_opt_self() sharedApplication];
  oslog = UIApplication.maybeWindow.getter();

  if (oslog)
  {
    sub_1005AD824(oslog);
  }

  else
  {
    if (qword_100CA2778 != -1)
    {
      sub_100014454(&qword_100CA2778);
    }

    v1 = type metadata accessor for Logger();
    sub_10000703C(v1, qword_100D90CC0);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      *swift_slowAlloc() = 0;
      sub_10001C688(&_mh_execute_header, v3, v4, "unable to present debug menu because we have no window", v5, v6, v7, v8, v9, oslog);
    }
  }
}

void *sub_1005ADA48(void *a1)
{
  type metadata accessor for DebugNavigationController();
  v2 = [a1 isKindOfClass:swift_getObjCClassFromMetadata()];
  result = 0;
  if ((v2 & 1) == 0)
  {
    v4 = [a1 presentedViewController];
    if (v4)
    {
      v5 = v4;
      a1 = sub_1005ADA48(v4);
    }

    else
    {
      v6 = a1;
    }

    return a1;
  }

  return result;
}

unint64_t sub_1005ADAD4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C446E0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005ADB20(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x7261656C63;
      break;
    case 2:
      result = 0x7964756F6C63;
      break;
    case 3:
      result = 0x6C43796C74736F6DLL;
      break;
    case 4:
      result = 1852399986;
      break;
    case 5:
      result = 0x537265646E756874;
      break;
    case 6:
      result = 0x7453657265766573;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1005ADC18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005ADAD4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005ADC48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005ADB20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1005ADC74(uint64_t a1)
{
  v2 = sub_1004B5414();

  return static RawRepresentable<>.dataType.getter(a1, v2, &protocol witness table for String);
}

uint64_t sub_1005ADCC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B5414();

  return static RawRepresentable<>.convert(from:)(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_1005ADD24(uint64_t a1)
{
  v2 = sub_1004B5414();

  return RawRepresentable<>.toData()(a1, v2, &protocol witness table for String);
}

uint64_t sub_1005ADD78()
{
  v1 = type metadata accessor for Domain();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10001F198();
  v5 = type metadata accessor for Access();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  sub_10022C350(&qword_100CC74A8, &qword_100A63CA8);
  v19[1] = 1;
  (*(v7 + 104))(v11, enum case for Access.protected(_:), v5);
  sub_10022C350(&qword_100CC74B0, &qword_100A63CB0);
  sub_10022C350(&qword_100CC74B8, &qword_100A63CB8);
  *(swift_allocObject() + 16) = xmmword_100A3F990;
  v19[0] = 0;
  sub_100019ABC(0x746C7561666544, 0xE700000000000000, v19);
  v18 = 1;
  sub_100019ABC(0x7261656C43, 0xE500000000000000, &v18);
  v17 = 2;
  sub_100019ABC(0x7964756F6C43, 0xE600000000000000, &v17);
  v16 = 3;
  sub_100019ABC(0x4320796C74736F4DLL, 0xED00007964756F6CLL, &v16);
  v15 = 4;
  sub_100019ABC(1852399954, 0xE400000000000000, &v15);
  v14 = 5;
  sub_100019ABC(0x737265646E756854, 0xEC0000006D726F74, &v14);
  v13 = 6;
  sub_100019ABC(0x5320657265766553, 0xEC0000006D726F74, &v13);
  (*(v3 + 104))(v0, enum case for Domain.standard(_:), v1);
  sub_1005AE528();
  result = Setting<>.init(_:defaultValue:domain:access:options:)();
  qword_100D90458 = result;
  return result;
}

uint64_t sub_1005AE0E8()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for Domain();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  (*(v10 + 104))(v9 - v8, enum case for Domain.standard(_:));
  (*(v2 + 104))(v6, enum case for Access.public(_:), v0);
  sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  swift_allocObject();
  result = Setting.init(_:defaultValue:domain:access:)();
  qword_100D90460 = result;
  return result;
}

void sub_1005AE280()
{
  sub_100020DF0();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001F198();
  type metadata accessor for FeatureState();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100005888();
  sub_10022C350(&qword_100CC74A0, &qword_100A63CA0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  qword_100D90468 = sub_100004594(45, 0x8000000100AD5DA0);
  sub_1000212EC();
}

void sub_1005AE3D4()
{
  sub_100020DF0();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001F198();
  type metadata accessor for FeatureState();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100005888();
  sub_10022C350(&qword_100CC74A0, &qword_100A63CA0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  qword_100D90470 = sub_100004594(48, 0x8000000100AD5D60);
  sub_1000212EC();
}

unint64_t sub_1005AE528()
{
  result = qword_100CC74C0;
  if (!qword_100CC74C0)
  {
    result = swift_getWitnessTable(aT_2, &_s15PerformanceTestV24StubWeatherDataConditionON, v0, v1);
    atomic_store(result, &qword_100CC74C0);
  }

  return result;
}

void sub_1005AE57C()
{
  sub_100020DF0();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001F198();
  type metadata accessor for FeatureState();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100005888();
  sub_10022C350(&qword_100CC74A0, &qword_100A63CA0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  qword_100D90498 = sub_100004594(45, 0x8000000100AD5D00);
  sub_1000212EC();
}

_BYTE *_s15PerformanceTestV24StubWeatherDataConditionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005AE7BC()
{
  result = qword_100CC74C8;
  if (!qword_100CC74C8)
  {
    result = swift_getWitnessTable(byte_100A63D7C, &_s15PerformanceTestV24StubWeatherDataConditionON, v0, v1);
    atomic_store(result, &qword_100CC74C8);
  }

  return result;
}

double sub_1005AE814(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2290 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA22A0 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2298 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2288 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2280 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void *sub_1005AE980(char a1, char a2, uint64_t a3)
{
  v81 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v7);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v8);
  v78 = &v74 - v9;
  v10 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  v13 = &v74 - v12;
  v14 = type metadata accessor for LocationComponentViewModel(0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v17);
  v19 = &v74 - v18;
  __chkstk_darwin(v20);
  v22 = &v74 - v21;
  __chkstk_darwin(v23);
  v25 = &v74 - v24;
  __chkstk_darwin(v26);
  v28 = &v74 - v27;
  v29 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v32);
  v34 = &v74 - v33;
  __chkstk_darwin(v35);
  v37 = &v74 - v36;
  sub_1005AE814(a1, a2);
  v39 = v38;
  v40 = OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v40, v13, &qword_100CA5008, &unk_100A2F7B0);
  v41 = type metadata accessor for LocationComponentContainerViewModel(0);
  if (sub_100024D10(v13, 1, v41) == 1)
  {
    sub_1000180EC(v13, &qword_100CA5008, &unk_100A2F7B0);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v13[v42], v25, v43);
    sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v25, v28, v44);
    sub_100566A5C(v39, v83);
    if ((v84 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v28, v34, v47);
      v45 = 0;
      v46 = v81;
      v48 = &v34[*(v81 + 20)];
      v49 = v83[1];
      *v48 = v83[0];
      *(v48 + 1) = v49;
      goto LABEL_7;
    }

    sub_1003169AC(v28, type metadata accessor for LocationComponentViewModel);
  }

  v45 = 1;
  v46 = v81;
LABEL_7:
  sub_10001B350(v34, v45, 1, v46);
  sub_1003168DC(v34, v37);
  sub_10031694C(a3 + *(v41 + 20) + OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_airQuality, v22, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v39, v85);
  sub_100924AFC(v22, v85, v82);
  sub_10031694C(*(a3 + 16) + *(v41 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v19, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v39, v86);
  v50 = v76;
  if (v87 & 1) != 0 || (sub_100011474(), v51 = v78, sub_1001B6FB0(v19, v78, v52), v53 = (v51 + *(v46 + 20)), v54 = v86[1], *v53 = v86[0], v53[1] = v54, sub_100035AD0(v37, v50, &qword_100CAC7F8, &qword_100A65EA0), sub_10001BD64(), v57 = v75, sub_10031694C(v55 + v56, v75, v58), sub_100566AB0(v39, v88), v59 = v79, (v89))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v57, v59, v60);
    v61 = (v59 + *(v46 + 20));
    v62 = v88[1];
    *v61 = v88[0];
    v61[1] = v62;
    sub_10001BD64();
    v65 = v77;
    sub_10031694C(v63 + v64, v77, v66);
    sub_100566AE8(v39, v90);
    if ((v91 & 1) == 0)
    {

      sub_100011474();
      v67 = v65;
      v68 = v80;
      sub_1001B6FB0(v67, v80, v69);
      v70 = (v68 + *(v46 + 20));
      v71 = v90[1];
      *v70 = v90[0];
      v70[1] = v71;
      v72 = sub_100924C14(v82, v51, v50, v59, v68);
      sub_1000180EC(v37, &qword_100CAC7F8, &qword_100A65EA0);
      return v72;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005AF010(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v134 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v139 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008, &unk_100A2F7B0);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3BCA0;
    v13 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v14 = *(v7 + 72);
    v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = *(v7 + 80);
    v17 = v13;
    v18 = swift_allocObject();
    sub_10001361C(v18, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v19, v18 + v15, v20);
    *(v12 + 32) = sub_1001B38A0(v18);
    *(v12 + 40) = v21;
    *(v12 + 48) = v22;
    v23 = sub_100017AFC();
    sub_1000045B4(v23);
    sub_10000CCC0(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_nextHourPrecipitation);
    *(v12 + 56) = sub_1001B38A0(v18);
    *(v12 + 64) = v24;
    *(v12 + 72) = v25;
    v26 = sub_100017AFC();
    sub_1000045B4(v26);
    sub_10000CCC0(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_newsArticle);
    *(v12 + 80) = sub_1001B38A0(v18);
    *(v12 + 88) = v27;
    *(v12 + 96) = v28;
    v29 = sub_100017AFC();
    sub_1000045B4(v29);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v18 + v15, v7);
    *(v12 + 104) = sub_1001B38A0(v18);
    *(v12 + 112) = v30;
    *(v12 + 120) = v31;
    v32 = sub_100017AFC();
    sub_1000045B4(v32);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v18 + v15, v7);
    *(v12 + 128) = sub_1001B38A0(v18);
    *(v12 + 136) = v33;
    *(v12 + 144) = v34;
    v138 = v16;
    v35 = swift_allocObject();
    sub_1000045B4(v35);
    sub_10000CCC0(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_airQuality);
    *(v12 + 152) = sub_1001B38A0(v18);
    *(v12 + 160) = v36;
    *(v12 + 168) = v37;
    v38 = swift_allocObject();
    v39 = sub_10001361C(v38, xmmword_100A2D320) + v15;
    v40 = *(a1 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v135 = v14;
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v39[v14], v7);
    *(v12 + 176) = sub_1001B38A0(v38);
    *(v12 + 184) = v41;
    *(v12 + 192) = v42;
    v136 = v15 + 2 * v14;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v15;
    v46 = v139;
    v47 = *(v139 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v47 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v45 + v14, v7);
    *(v12 + 200) = sub_1001B38A0(v38);
    *(v12 + 208) = v48;
    *(v12 + 216) = v49;
    v137 = v17;
    v50 = swift_allocObject();
    sub_1000056EC(v50);
    v52 = v51 + v15;
    v53 = *(v46 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v54 = v135;
    sub_10031694C(v53 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v52 + v135, v7);
    *(v12 + 224) = sub_1001B38A0(v38);
    *(v12 + 232) = v55;
    *(v12 + 240) = v56;
    v57 = swift_allocObject();
    sub_1000056EC(v57);
    v59 = v58 + v15;
    v60 = *(v46 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v60 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v59 + v54, v7);
    *(v12 + 248) = sub_1001B38A0(v38);
    *(v12 + 256) = v61;
    *(v12 + 264) = v62;
    v63 = swift_allocObject();
    sub_100003E18(v63);
    v65 = v64 + v15;
    v66 = *(v139 + 16);
    sub_10031694C(v66 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v64 + v15, v7);
    sub_10031694C(v66 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v65 + v54, v7);
    *(v12 + 272) = sub_1001B38A0(v63);
    *(v12 + 280) = v67;
    *(v12 + 288) = v68;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A55560;
    v69 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v70 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v71 = *(v7 + 72);
    v72 = *(v7 + 80);
    v73 = v69;
    v74 = swift_allocObject();
    sub_10001361C(v74, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v75, v74 + v70, v76);
    *(v12 + 32) = sub_1001B38A0(v74);
    *(v12 + 40) = v77;
    *(v12 + 48) = v78;
    sub_1000167B0();
    v79 = swift_allocObject();
    sub_1000056EC(v79);
    sub_1000208C0(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_nextHourPrecipitation);
    *(v12 + 56) = sub_1001B38A0(v74);
    *(v12 + 64) = v80;
    *(v12 + 72) = v81;
    sub_1000167B0();
    v82 = swift_allocObject();
    sub_1000056EC(v82);
    sub_1000208C0(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_newsArticle);
    *(v12 + 80) = sub_1001B38A0(v74);
    *(v12 + 88) = v83;
    *(v12 + 96) = v84;
    sub_1000167B0();
    v85 = swift_allocObject();
    sub_1000056EC(v85);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v74 + v70, v7);
    *(v12 + 104) = sub_1001B38A0(v74);
    *(v12 + 112) = v86;
    *(v12 + 120) = v87;
    sub_1000167B0();
    v88 = swift_allocObject();
    sub_1000056EC(v88);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v74 + v70, v7);
    *(v12 + 128) = sub_1001B38A0(v74);
    *(v12 + 136) = v89;
    *(v12 + 144) = v90;
    sub_1000167B0();
    v91 = swift_allocObject();
    sub_1000056EC(v91);
    sub_1000208C0(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_airQuality);
    *(v12 + 152) = sub_1001B38A0(v74);
    *(v12 + 160) = v92;
    *(v12 + 168) = v93;
    v138 = v72;
    v94 = swift_allocObject();
    sub_1000056EC(v94);
    sub_10031694C(v9, v95 + v70, v7);
    *(v12 + 176) = sub_1001B38A0(v74);
    *(v12 + 184) = v96;
    *(v12 + 192) = v97;
    v98 = v70 + 2 * v71;
    v99 = v71;
    sub_1000167B0();
    v100 = swift_allocObject();
    v101 = sub_10001361C(v100, xmmword_100A2D320);
    v137 = v9;
    v102 = v101 + v70;
    v103 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v134 = v99;
    sub_10031694C(v103 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v102[v99], v7);
    *(v12 + 200) = sub_1001B38A0(v100);
    *(v12 + 208) = v104;
    *(v12 + 216) = v105;
    v135 = v98;
    v106 = swift_allocObject();
    sub_100003E18(v106);
    v108 = v107 + v70;
    v109 = v139;
    v110 = *(v139 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v110 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v108 + v99, v7);
    *(v12 + 224) = sub_1001B38A0(v106);
    *(v12 + 232) = v111;
    *(v12 + 240) = v112;
    sub_1000167B0();
    v136 = v73;
    v113 = swift_allocObject();
    sub_100003E18(v113);
    v115 = v114 + v70;
    v116 = *(v109 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v117 = v134;
    sub_10031694C(v116 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v115 + v134, v7);
    *(v12 + 248) = sub_1001B38A0(v113);
    *(v12 + 256) = v118;
    *(v12 + 264) = v119;
    sub_1000167B0();
    v120 = v135;
    v121 = swift_allocObject();
    sub_100003E18(v121);
    v123 = v122 + v70;
    v124 = *(v109 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v124 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v123 + v117, v7);
    *(v12 + 272) = sub_1001B38A0(v121);
    *(v12 + 280) = v125;
    *(v12 + 288) = v126;
    v127 = swift_allocObject();
    sub_1000045B4(v127);
    v129 = v128 + v70;
    v130 = *(v139 + 16);
    sub_10031694C(v130 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v128 + v70, v7);
    sub_10031694C(v130 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v129 + v117, v7);
    *(v12 + 296) = sub_1001B38A0(v120);
    *(v12 + 304) = v131;
    *(v12 + 312) = v132;
    sub_1003169AC(v137, v7);
  }

  return v12;
}

void sub_1005AF958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BC30;
  v22[0] = xmmword_100A2C3F0;
  v22[1] = xmmword_100A63E00;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A63E10;
  v20[0] = xmmword_100A3BBB0;
  v20[1] = xmmword_100A3BBF0;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BB70;
  v19[1] = xmmword_100A3BC40;
  v18[0] = xmmword_100A2C3F0;
  v18[1] = xmmword_100A3BBF0;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A63E20;
  v16[0] = xmmword_100A3BBB0;
  v16[1] = xmmword_100A63E00;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BBD0;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A2C3F0;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BB90;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BBC0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3BBB0;
  v10[0] = xmmword_100A2C3F0;
  v10[1] = xmmword_100A3BC00;
  v36 = v11;
  v37 = v10;
  v38 = &v9;
  v39 = &v8;
  sub_100024880(a1, a2, a3, a4, a5, a6, a7, a8, 0, 1, 11, 12, 0, 1, 13, 14, 0, 1, 10, 11);
}

void sub_1005AFA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = xmmword_100A3BB70;
  v24[1] = xmmword_100A3BC30;
  v23[0] = xmmword_100A2C3F0;
  v23[1] = xmmword_100A3BBF0;
  v25[0] = v24;
  v25[1] = v23;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A63E10;
  v21[0] = xmmword_100A3BBB0;
  v21[1] = xmmword_100A3BC00;
  v25[2] = v22;
  v25[3] = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3BC40;
  v19[0] = xmmword_100A2C3F0;
  v19[1] = xmmword_100A3BC00;
  v25[4] = v20;
  v25[5] = v19;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = xmmword_100A3BBF0;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A3BBD0;
  v25[6] = v18;
  v25[7] = v17;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A2C3F0;
  v15[0] = xmmword_100A2C3F0;
  v15[1] = xmmword_100A3BBC0;
  v25[8] = v16;
  v25[9] = v15;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BC10;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBB0;
  v25[10] = v14;
  v25[11] = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BC20;
  v25[12] = v12;
  v25[13] = &v11;
  v25[14] = &v10;
  v25[15] = &v9;
  sub_1005592E4(v25, a2, a3, a4, a5, a6, a7, a8, 0, 1, 9, 10, 0, 1, 11, 12, 0, 1, 8, 9);
  qword_100D904A8 = v8;
}

void sub_1005AFBC8()
{
  v48 = vdupq_n_s64(4uLL);
  v47 = 2;
  v49 = 5;
  v46[0] = xmmword_100A3BC40;
  v46[1] = xmmword_100A3BC30;
  v50 = &v47;
  v51 = v46;
  v45[0] = xmmword_100A3BB70;
  v45[1] = xmmword_100A3BBA0;
  v44[0] = xmmword_100A2C3F0;
  v44[1] = xmmword_100A3BB80;
  v52 = v45;
  v53 = v44;
  v42[0] = 0;
  v42[1] = 4;
  v43 = xmmword_100A3BBD0;
  v41[0] = xmmword_100A3BBB0;
  v41[1] = xmmword_100A3BC30;
  v54 = v42;
  v55 = v41;
  v39 = xmmword_100A3F980;
  v38 = 2;
  v40 = 2;
  v37[0] = xmmword_100A3BBB0;
  v37[1] = xmmword_100A3BB80;
  v56 = &v38;
  v57 = v37;
  v35[0] = 2;
  v35[1] = 4;
  v36 = xmmword_100A3BC40;
  v33[0] = 0;
  v33[1] = 2;
  v34 = xmmword_100A2C3F0;
  v58 = v35;
  v59 = v33;
  v32[0] = xmmword_100A3BBD0;
  v32[1] = xmmword_100A3BC30;
  *(&v30 + 1) = 4;
  v31 = xmmword_100A3BB80;
  sub_10000EB78(v32, v18, v19, v20, v21, v22[0], v22[1], v22[2], v22[3], v23[0], v23[1], v23[2], v23[3], v24, *(&v24 + 1), v25, *(&v25 + 1), v26, v27, v28, v29, 3);
  v24 = v0;
  v25 = xmmword_100A3BC50;
  v60 = v1;
  v61 = &v24;
  v62 = v23;
  v63 = v22;
  sub_100024880(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v12, v13, v14, v15, v10, v11, v16, v17, 5, 6);
}

void sub_1005AFD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26[0] = xmmword_100A2D320;
  v26[1] = xmmword_100A3BC40;
  v25[0] = xmmword_100A3BC40;
  v25[1] = xmmword_100A3BB80;
  v27[0] = v26;
  v27[1] = v25;
  v24[0] = xmmword_100A3BB70;
  v24[1] = xmmword_100A3AEB0;
  v23[0] = xmmword_100A2C3F0;
  v23[1] = xmmword_100A3BC50;
  v27[2] = v24;
  v27[3] = v23;
  v20 = 0;
  v21 = xmmword_100A3BC70;
  v22 = 2;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BB80;
  v27[4] = &v20;
  v27[5] = v19;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = xmmword_100A3BC50;
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BBD0;
  v27[6] = v18;
  v27[7] = v17;
  v16[0] = xmmword_100A2D320;
  v16[1] = xmmword_100A3BBB0;
  v15[0] = xmmword_100A3BBD0;
  v15[1] = xmmword_100A3BB80;
  v27[8] = v16;
  v27[9] = v15;
  v14[0] = xmmword_100A3BC40;
  v14[1] = xmmword_100A3BC50;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBB0;
  v27[10] = v14;
  v27[11] = v13;
  v12[0] = xmmword_100A3BC40;
  v12[1] = xmmword_100A3BC60;
  v27[12] = v12;
  v27[13] = &v11;
  v27[14] = &v10;
  v27[15] = &v9;
  sub_1005592E4(v27, a2, a3, a4, a5, a6, a7, a8, 2, 3, 5, 6, 1, 2, 6, 7, 2, 3, 4, 5);
  qword_100D904B8 = v8;
}

void sub_1005AFE48()
{
  v38[0] = xmmword_100A2D320;
  v38[1] = xmmword_100A2C3F0;
  v37[0] = xmmword_100A3BC50;
  v37[1] = xmmword_100A3BC60;
  v39 = v38;
  v40 = v37;
  v36[0] = xmmword_100A3BB70;
  v36[1] = xmmword_100A3AEB0;
  v35[0] = xmmword_100A3BC40;
  v35[1] = xmmword_100A3BC60;
  v41 = v36;
  v42 = v35;
  v34[0] = xmmword_100A3BB70;
  v34[1] = xmmword_100A2C3F0;
  v33[0] = xmmword_100A3BC50;
  v33[1] = xmmword_100A3BC40;
  v43 = v34;
  v44 = v33;
  v32[0] = xmmword_100A3BC90;
  v32[1] = xmmword_100A3BB70;
  v31[0] = xmmword_100A3BBD0;
  v31[1] = xmmword_100A3BC60;
  v45 = v32;
  v46 = v31;
  v30[0] = xmmword_100A2D320;
  v30[1] = xmmword_100A3BBD0;
  v29[0] = xmmword_100A2D320;
  v29[1] = xmmword_100A3BBB0;
  v47 = v30;
  v48 = v29;
  v28[0] = xmmword_100A3BC60;
  v28[1] = xmmword_100A3BC60;
  *(&v26 + 1) = 6;
  v27 = xmmword_100A3BBD0;
  sub_10000EB78(v28, v14, v15, v16, v17, v18[0], v18[1], v18[2], v18[3], v19[0], v19[1], v19[2], v19[3], v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, v24, v25, 5);
  v20 = v0;
  v21 = v0;
  v49 = v1;
  v50 = &v20;
  v51 = v19;
  v52 = v18;
  sub_100024880(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v10, v11, v0, *(&v0 + 1), v12, v13, v0, *(&v0 + 1));
}

uint64_t sub_1005AFF60(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v5 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  v50 = v7;
  sub_10000386C();
  __chkstk_darwin(v8);
  sub_100003878();
  v49 = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  sub_100003878();
  v48 = v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  sub_100003878();
  v47 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v46 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  sub_100003878();
  v44 = v17;
  sub_10000386C();
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  __chkstk_darwin(v21);
  v23 = &v41 - v22;
  v24 = type metadata accessor for LocationViewComponent(0);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  v43 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  v33 = &v41 - v32;

  sub_1005D71C4(v34, a2);
  v45 = v35;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather34LocationSevereNhpNewsConfiguration8_Storage_map, v27, type metadata accessor for LocationViewComponent);
  a2(v27);
  sub_10002C87C();
  v42 = v33;
  sub_10001B350(v33, 0, 1, v5);
  sub_10004E738(OBJC_IVAR____TtCV7Weather34LocationSevereNhpNewsConfiguration8_Storage_airQuality);
  v41 = v23;
  a2(v27);
  sub_10002C87C();
  sub_10004E738(OBJC_IVAR____TtCV7Weather34LocationSevereNhpNewsConfiguration8_Storage_newsArticle);
  v36 = v20;
  a2(v27);
  sub_10002C87C();
  sub_10004E738(OBJC_IVAR____TtCV7Weather34LocationSevereNhpNewsConfiguration8_Storage_nextHourPrecipitation);
  v37 = v44;
  a2(v27);
  sub_10002C87C();
  sub_10004E738(OBJC_IVAR____TtCV7Weather34LocationSevereNhpNewsConfiguration8_Storage_severeAlert);
  v38 = v46;
  a2(v27);
  sub_10002C87C();
  sub_100035AD0(v33, v43, &qword_100CA5008, &unk_100A2F7B0);
  sub_10031694C(v23, v47, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v36, v48, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v37, v49, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v38, v50, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for SevereNhpNewsContent._Storage(0);
  swift_allocObject();
  v39 = sub_1002D9B78();
  sub_1003169AC(v38, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v37, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v36, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v41, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v42, &qword_100CA5008, &unk_100A2F7B0);
  return v39;
}

uint64_t sub_1005B037C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = v22 - v10;
  sub_100386B2C(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100024D10(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10003FDF4(v11, &qword_100CA3538, &qword_100A2D560);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = sub_10002FF54();

      sub_10003FDF4(a3, &qword_100CA3538, &qword_100A2D560);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10003FDF4(a3, &qword_100CA3538, &qword_100A2D560);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return sub_10002FF54();
}

uint64_t sub_1005B05D4()
{
  v14 = v0;
  if (qword_100CA26C0 != -1)
  {
    sub_10001F1B4(&qword_100CA26C0);
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90AA8);
  sub_100037034();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 32);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_10022C350(&qword_100CD8220, &qword_100A4A330);
    v8 = String.init<A>(describing:)();
    v10 = sub_100078694(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Can't get home and work location due to error:%{public}s", v6, 0xCu);
    sub_100006F14(v7);

    sub_10000FC14();
  }

  else
  {
  }

  sub_100003B14();

  return v11();
}

uint64_t sub_1005B0780()
{
  sub_100008188();
  sub_100006248();
  *(*(v0 + 88) + 208) = 0;

  sub_100003B14();

  return v1();
}

uint64_t sub_1005B0824()
{
  v2 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v4 = sub_100031DD4();
  sub_1000061CC(v4);
  sub_100018450();
  v5 = swift_allocObject();
  sub_10001854C(v5);
  v6 = sub_10000EB8C();
  sub_1005B037C(v6, v7, v0, v8, v1);
}

uint64_t sub_1005B08C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006D0B0;

  return sub_1000E34AC();
}

void *sub_1005B0954()
{

  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 21);

  sub_100006F14(v0 + 28);
  sub_100006F14(v0 + 33);
  sub_100006F14(v0 + 38);
  sub_100006F14(v0 + 43);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1005B09B4()
{
  sub_1005B0954();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1005B0A10()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v13 - v4;
  if (qword_100CA26C0 != -1)
  {
    sub_10001F1B4(&qword_100CA26C0);
  }

  v6 = type metadata accessor for Logger();
  sub_10000703C(v6, qword_100D90AA8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetch weather data for locations of interest due to savedLocations did update.", v9, 2u);
    sub_10000FC14();
  }

  v10 = type metadata accessor for TaskPriority();
  sub_10001B350(v5, 1, 1, v10);
  sub_100018450();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_10000EB8C();
  sub_1006C0138();
}

uint64_t sub_1005B0BA4()
{
  sub_100003B08();
  sub_1000E426C();
  sub_100003B14();

  return v0();
}

uint64_t sub_1005B0C00()
{
  sub_100013494();
  sub_100028784();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  sub_10000622C(v1);

  return sub_1005B08C4();
}

uint64_t sub_1005B0C8C()
{
  sub_100013494();
  sub_100028784();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_10000622C(v1);

  return sub_1005B0B84(v3, v4, v5, v6);
}

uint64_t sub_1005B0D1C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  type metadata accessor for UnitConfiguration.Temperature();
  sub_10000548C();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  sub_1005B3C14(a1, v13);
  sub_10000554C(v13);
  if (v20)
  {
    sub_10003FDF4(v13, &qword_100CB6198, &unk_100A49BC0);
    sub_100003934();
    sub_10001B350(v21, v22, v23, v2);
    v24 = sub_1005B0FF4();
    sub_1005B3BB8(v9);
  }

  else
  {
    (*(v15 + 32))(v19, v13, v2);
    v25 = [objc_opt_self() mainBundle];
    v36._object = 0x8000000100AD6070;
    v26._countAndFlagsBits = 0xD000000000000036;
    v26._object = 0x8000000100AD6010;
    v27._object = 0x8000000100AD6050;
    v27._countAndFlagsBits = 0xD000000000000017;
    v36._countAndFlagsBits = 0x10000000000000A0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v36);

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v28 = swift_allocObject();
    v29 = v28;
    *(v28 + 16) = xmmword_100A2C3F0;
    if (a2)
    {
      v30 = UnitConfiguration.Temperature.description.getter();
    }

    else
    {
      v30 = UnitConfiguration.Temperature.symbol.getter();
    }

    v32 = v30;
    v33 = v31;
    v29[7] = &type metadata for String;
    v29[8] = sub_100035744();
    v29[4] = v32;
    v29[5] = v33;
    v24 = String.init(format:_:)();

    (*(v15 + 8))(v19, v2);
  }

  return v24;
}

uint64_t sub_1005B0FF4()
{
  v2 = v1;
  type metadata accessor for UnitConfiguration.Temperature();
  sub_10000548C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  sub_1005B3B54(v2, v12 - v11);
  sub_10000554C(v13);
  if (v14)
  {
    v15 = [objc_opt_self() mainBundle];
    v25._object = 0x8000000100AD5F20;
    v16._countAndFlagsBits = 0xD00000000000002CLL;
    v16._object = 0x8000000100AD5ED0;
    v17._object = 0x8000000100AD5F00;
    v25._countAndFlagsBits = 0xD000000000000052;
    v17._countAndFlagsBits = 0xD000000000000012;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v25)._countAndFlagsBits;
  }

  else
  {
    (*(v4 + 32))(v8, v13, v0);
    v18 = UnitConfiguration.Temperature.description.getter();
    v20 = v19;
    v21 = UnitConfiguration.Temperature.symbol.getter();
    countAndFlagsBits = sub_1005B3500(v18, v20, v21, v22);

    (*(v4 + 8))(v8, v0);
  }

  return countAndFlagsBits;
}

uint64_t sub_1005B11F8()
{
  v2 = v1;
  type metadata accessor for UnitConfiguration.Temperature();
  sub_10000548C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  sub_1005B3B54(v2, &v23 - v15);
  sub_10000554C(v16);
  if (v17)
  {
    sub_100003934();
    sub_10001B350(v18, v19, v20, v0);
    v21 = sub_1005B0FF4();
    sub_1005B3BB8(v13);
  }

  else
  {
    (*(v4 + 32))(v8, v16, v0);
    v21 = UnitConfiguration.Temperature.description.getter();
    (*(v4 + 8))(v8, v0);
  }

  return v21;
}

void sub_1005B1374(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB63F0, &unk_100A64110);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100003C38();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = &v116 - v10;
  v12 = sub_10022C350(&qword_100CB6418, &unk_100A7B4A0);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_100003C38();
  v127 = (v14 - v15);
  __chkstk_darwin(v16);
  v18 = &v116 - v17;
  v19 = sub_10022C350(&qword_100CB63D0, &unk_100A64120);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_100003C38();
  v129 = (v21 - v22);
  __chkstk_darwin(v23);
  v130 = &v116 - v24;
  v25 = sub_10022C350(&qword_100CB63E0, &unk_100A7B490);
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_100003C38();
  v29 = (v27 - v28);
  __chkstk_darwin(v30);
  v131 = &v116 - v31;
  v32 = sub_10022C350(&qword_100CB63C0, &unk_100A64130);
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_100003C38();
  v128 = (v34 - v35);
  __chkstk_darwin(v36);
  v38 = &v116 - v37;
  v132 = *(a1 + 48);
  if (!*(a1 + 56))
  {
    switch(v132)
    {
      case 1:
        sub_100019AD8();
        sub_1005B211C(v115);
        type metadata accessor for UnitsConfigurationViewModel.Representation(0);
        sub_100003E0C();
        break;
      case 2:
        sub_100019AD8();
        sub_1005B2620(v113);
        type metadata accessor for UnitsConfigurationViewModel.Representation(0);
        sub_100003E0C();
        break;
      case 3:
        sub_100019AD8();
        sub_1005B2B24(v114);
        type metadata accessor for UnitManager();
        static UnitManager.standard.getter();
        type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
        UnitManager.systemWideTemperatureUnit.getter();

        type metadata accessor for UnitsConfigurationViewModel.Representation(0);
        sub_100003E0C();
        break;
      case 4:
        sub_100019AD8();
        sub_1005B2FFC(v112);
        type metadata accessor for UnitsConfigurationViewModel.Representation(0);
        sub_100003E0C();
        break;
      default:
        sub_100019AD8();
        sub_1005B1C18(v99);
        type metadata accessor for UnitsConfigurationViewModel.Representation(0);
        sub_100003E0C();
        break;
    }

    goto LABEL_23;
  }

  if (*(a1 + 56) != 1)
  {
    sub_1005B1C18(a2);
    v100 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0);
    sub_1005B211C((a2 + v100[5]));
    sub_1005B2620((a2 + v100[6]));
    sub_1005B2B24((a2 + v100[7]));
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
    UnitManager.systemWideTemperatureUnit.getter();

    sub_1005B2FFC((a2 + v100[8]));
    static UnitManager.standard.getter();
    v101 = UnitManager.hasPreferredUnits.getter();

    v102 = *(a1 + 57);
    *(a2 + v100[9]) = (v101 & 1) == 0;
    *(a2 + v100[10]) = v102;
    type metadata accessor for UnitsConfigurationViewModel.Representation(0);
    sub_100003E0C();
LABEL_23:
    swift_storeEnumTagMultiPayload();
    type metadata accessor for UnitsConfigurationViewModel(0);
    sub_10000E7B0();

    sub_10001B350(v103, v104, v105, v106);
    return;
  }

  v122 = v29;
  v123 = v8;
  sub_10022C350(&qword_100CB6058, &unk_100A7B460);
  v124 = v38;
  sub_100003934();
  v121 = v39;
  sub_10001B350(v40, v41, v42, v39);
  sub_10022C350(&qword_100CB6038, &qword_100A64140);
  sub_100003934();
  v120 = v43;
  sub_10001B350(v44, v45, v46, v43);
  sub_10022C350(&qword_100CB6028, &unk_100A7B470);
  sub_100003934();
  v119 = v47;
  sub_10001B350(v48, v49, v50, v47);
  type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  v125 = v18;
  sub_100003934();
  v118 = v51;
  sub_10001B350(v52, v53, v54, v51);
  sub_10022C350(&qword_100CB5FF0, &qword_100A49AB0);
  v126 = v11;
  sub_100003934();
  v117 = v55;
  sub_10001B350(v56, v57, v58, v55);
  v59 = v132 + 56;
  v60 = 1 << *(v132 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v132 + 56);
  v63 = (v60 + 63) >> 6;

  for (i = 0; v62; i = v65)
  {
    v65 = i;
LABEL_10:
    v66 = __clz(__rbit64(v62));
    v62 &= v62 - 1;
    switch(*(*(v132 + 48) + (v66 | (v65 << 6))))
    {
      case 1:
        v94 = v122;
        sub_1005B211C(v122);
        v95 = v131;
        v69 = &unk_100A7B490;
        sub_10003FDF4(v131, &qword_100CB63E0, &unk_100A7B490);
        sub_10000E7B0();
        sub_10001B350(v96, v97, v98, v120);
        v73 = v94;
        v74 = v95;
        v75 = &qword_100CB63E0;
        goto LABEL_17;
      case 2:
        v82 = v129;
        sub_1005B2620(v129);
        v83 = v130;
        v78 = &unk_100A64120;
        sub_10003FDF4(v130, &qword_100CB63D0, &unk_100A64120);
        sub_10000E7B0();
        sub_10001B350(v84, v85, v86, v119);
        v73 = v82;
        v74 = v83;
        v75 = &qword_100CB63D0;
        goto LABEL_14;
      case 3:
        v88 = v127;
        sub_1005B2B24(v127);
        type metadata accessor for UnitManager();
        static UnitManager.standard.getter();
        v89 = v118;
        UnitManager.systemWideTemperatureUnit.getter();

        v90 = v125;
        sub_10003FDF4(v125, &qword_100CB6418, &unk_100A7B4A0);
        sub_10000E7B0();
        sub_10001B350(v91, v92, v93, v89);
        v73 = v88;
        v74 = v90;
        v75 = &qword_100CB6418;
        v87 = &unk_100A7B4A0;
        break;
      case 4:
        v76 = v123;
        sub_1005B2FFC(v123);
        v77 = v126;
        v78 = &unk_100A64110;
        sub_10003FDF4(v126, &qword_100CB63F0, &unk_100A64110);
        sub_10000E7B0();
        sub_10001B350(v79, v80, v81, v117);
        v73 = v76;
        v74 = v77;
        v75 = &qword_100CB63F0;
LABEL_14:
        v87 = v78;
        break;
      default:
        v67 = v128;
        sub_1005B1C18(v128);
        v68 = v124;
        v69 = &unk_100A64130;
        sub_10003FDF4(v124, &qword_100CB63C0, &unk_100A64130);
        sub_10000E7B0();
        sub_10001B350(v70, v71, v72, v121);
        v73 = v67;
        v74 = v68;
        v75 = &qword_100CB63C0;
LABEL_17:
        v87 = v69;
        break;
    }

    sub_1005AD458(v73, v74, v75, v87);
  }

  while (1)
  {
    v65 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v65 >= v63)
    {

      sub_1005AD458(v124, a2, &qword_100CB63C0, &unk_100A64130);
      v107 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
      sub_1005AD458(v131, a2 + v107[5], &qword_100CB63E0, &unk_100A7B490);
      sub_1005AD458(v130, a2 + v107[6], &qword_100CB63D0, &unk_100A64120);
      sub_1005AD458(v125, a2 + v107[7], &qword_100CB6418, &unk_100A7B4A0);
      sub_1005AD458(v126, a2 + v107[8], &qword_100CB63F0, &unk_100A64110);
      type metadata accessor for UnitsConfigurationViewModel.Representation(0);
      sub_100003E0C();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for UnitsConfigurationViewModel(0);
      sub_10000E7B0();
      sub_10001B350(v108, v109, v110, v111);
      return;
    }

    v62 = *(v59 + 8 * v65);
    ++i;
    if (v62)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1005B1C18@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for Logger();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB6180, &unk_100A8B0A0);
  __chkstk_darwin(v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for UnitConfiguration.Distance();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v19 = UnitManager.availableDistanceUnits.getter();

  static UnitManager.standard.getter();
  UnitManager.preferredDistanceUnit.getter();

  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_10003FDF4(v11, &qword_100CB6180, &unk_100A8B0A0);
    static UnitManager.standard.getter();
    UnitManager.visibility.getter();

    UnitConfiguration.Distance.init(_:)();
    if (sub_100024D10(v8, 1, v12) == 1)
    {
      sub_10003FDF4(v8, &qword_100CB6180, &unk_100A8B0A0);
      static Logger.locale.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v35 = v22;
        v37 = swift_slowAlloc();
        v42 = v37;
        *v22 = 136315138;
        v36 = v21;
        static UnitManager.standard.getter();
        v23 = UnitManager.visibility.getter();

        v24 = [v23 symbol];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_100078694(v25, v27, &v42);

        v29 = v35;
        *(v35 + 1) = v28;
        _os_log_impl(&_mh_execute_header, v20, v36, "Encountered unsupported selectable unit for distance. unit=%s", v29, 0xCu);
        sub_100006F14(v37);
      }

      (*(v39 + 8))(v3, v40);
      v30 = v38;
      sub_1003DF9EC(v19, v38);
      if (sub_100024D10(v30, 1, v12) == 1)
      {
        (*(v13 + 104))(v15, enum case for UnitConfiguration.Distance.miles(_:), v12);
        if (sub_100024D10(v30, 1, v12) != 1)
        {
          sub_10003FDF4(v30, &qword_100CB6180, &unk_100A8B0A0);
        }
      }

      else
      {
        (*(v13 + 32))(v15, v30, v12);
      }
    }

    else
    {
      v15 = v8;
    }
  }

  else
  {
    v15 = v11;
  }

  v31 = *(v13 + 32);
  v31(v18, v15, v12);
  v32 = v41;
  *v41 = v19;
  v33 = sub_10022C350(&qword_100CB6058, &unk_100A7B460);
  return (v31)(v32 + *(v33 + 36), v18, v12);
}

uint64_t sub_1005B211C@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for Logger();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB6188, &unk_100A49BB0);
  __chkstk_darwin(v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for UnitConfiguration.Precipitation();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v19 = UnitManager.availablePrecipitationUnits.getter();

  static UnitManager.standard.getter();
  UnitManager.preferredPrecipitationUnit.getter();

  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_10003FDF4(v11, &qword_100CB6188, &unk_100A49BB0);
    static UnitManager.standard.getter();
    UnitManager.precipitationRainfall.getter();

    UnitConfiguration.Precipitation.init(_:)();
    if (sub_100024D10(v8, 1, v12) == 1)
    {
      sub_10003FDF4(v8, &qword_100CB6188, &unk_100A49BB0);
      static Logger.locale.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v35 = v22;
        v37 = swift_slowAlloc();
        v42 = v37;
        *v22 = 136315138;
        v36 = v21;
        static UnitManager.standard.getter();
        v23 = UnitManager.precipitationRainfall.getter();

        v24 = [v23 symbol];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_100078694(v25, v27, &v42);

        v29 = v35;
        *(v35 + 1) = v28;
        _os_log_impl(&_mh_execute_header, v20, v36, "Encountered unsupported selectable unit for precipitation. unit=%s", v29, 0xCu);
        sub_100006F14(v37);
      }

      (*(v39 + 8))(v3, v40);
      v30 = v38;
      sub_1003DFA04(v19, v38);
      if (sub_100024D10(v30, 1, v12) == 1)
      {
        (*(v13 + 104))(v15, enum case for UnitConfiguration.Precipitation.inches(_:), v12);
        if (sub_100024D10(v30, 1, v12) != 1)
        {
          sub_10003FDF4(v30, &qword_100CB6188, &unk_100A49BB0);
        }
      }

      else
      {
        (*(v13 + 32))(v15, v30, v12);
      }
    }

    else
    {
      v15 = v8;
    }
  }

  else
  {
    v15 = v11;
  }

  v31 = *(v13 + 32);
  v31(v18, v15, v12);
  v32 = v41;
  *v41 = v19;
  v33 = sub_10022C350(&qword_100CB6038, &qword_100A64140);
  return (v31)(v32 + *(v33 + 36), v18, v12);
}

uint64_t sub_1005B2620@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for Logger();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB6190, &unk_100A8B0B0);
  __chkstk_darwin(v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for UnitConfiguration.Pressure();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v19 = UnitManager.availablePressureUnits.getter();

  static UnitManager.standard.getter();
  UnitManager.preferredPressureUnit.getter();

  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_10003FDF4(v11, &qword_100CB6190, &unk_100A8B0B0);
    static UnitManager.standard.getter();
    UnitManager.pressure.getter();

    UnitConfiguration.Pressure.init(_:)();
    if (sub_100024D10(v8, 1, v12) == 1)
    {
      sub_10003FDF4(v8, &qword_100CB6190, &unk_100A8B0B0);
      static Logger.locale.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v35 = v22;
        v37 = swift_slowAlloc();
        v42 = v37;
        *v22 = 136315138;
        v36 = v21;
        static UnitManager.standard.getter();
        v23 = UnitManager.pressure.getter();

        v24 = [v23 symbol];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_100078694(v25, v27, &v42);

        v29 = v35;
        *(v35 + 1) = v28;
        _os_log_impl(&_mh_execute_header, v20, v36, "Encountered unsupported selectable unit for pressure. unit=%s", v29, 0xCu);
        sub_100006F14(v37);
      }

      (*(v39 + 8))(v3, v40);
      v30 = v38;
      sub_1003DFA1C(v19, v38);
      if (sub_100024D10(v30, 1, v12) == 1)
      {
        (*(v13 + 104))(v15, enum case for UnitConfiguration.Pressure.millibars(_:), v12);
        if (sub_100024D10(v30, 1, v12) != 1)
        {
          sub_10003FDF4(v30, &qword_100CB6190, &unk_100A8B0B0);
        }
      }

      else
      {
        (*(v13 + 32))(v15, v30, v12);
      }
    }

    else
    {
      v15 = v8;
    }
  }

  else
  {
    v15 = v11;
  }

  v31 = *(v13 + 32);
  v31(v18, v15, v12);
  v32 = v41;
  *v41 = v19;
  v33 = sub_10022C350(&qword_100CB6028, &unk_100A7B470);
  return (v31)(v32 + *(v33 + 36), v18, v12);
}

uint64_t sub_1005B2B24@<X0>(void *a1@<X8>)
{
  v42 = a1;
  v1 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  __chkstk_darwin(v1 - 8);
  v39 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v38 = &v35 - v4;
  v5 = sub_10022C350(&qword_100CC7688, &qword_100A64148);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v40 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v8 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v37 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v13 = UnitManager.availableTemperatureUnits.getter();

  v14 = *(v13 + 16);
  if (v14)
  {
    v36 = v7;
    v46 = _swiftEmptyArrayStorage;
    sub_1006A7D6C();
    v15 = v46;
    v16 = type metadata accessor for UnitConfiguration.Temperature();
    v17 = *(v16 - 8);
    v18 = *(v17 + 16);
    v44 = v17 + 16;
    v45 = v18;
    v19 = *(v17 + 80);
    v35 = v13;
    v20 = v13 + ((v19 + 32) & ~v19);
    v43 = *(v17 + 72);
    do
    {
      v45(v12, v20, v16);
      sub_10001B350(v12, 0, 1, v16);
      v46 = v15;
      v21 = v15[2];
      if (v21 >= v15[3] >> 1)
      {
        sub_1006A7D6C();
        v15 = v46;
      }

      v15[2] = v21 + 1;
      v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      sub_1005B3AF0(v12, v15 + v22 + *(v8 + 72) * v21);
      v20 += v43;
      --v14;
    }

    while (v14);

    v7 = v36;
  }

  else
  {

    v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = _swiftEmptyArrayStorage;
  }

  sub_10022C350(&qword_100CC7690, &unk_100A64150);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100A2C3F0;
  v24 = type metadata accessor for UnitConfiguration.Temperature();
  v25 = 1;
  sub_10001B350(v23 + v22, 1, 1, v24);
  v46 = v15;
  sub_10035DA80(v23);
  v26 = v46;
  static UnitManager.standard.getter();
  v27 = v38;
  UnitManager.preferredTemperatureUnit.getter();

  v28 = v39;
  sub_1005AD458(v27, v39, &qword_100CB6198, &unk_100A49BC0);
  if (sub_100024D10(v28, 1, v24) != 1)
  {
    (*(*(v24 - 8) + 32))(v7, v28, v24);
    sub_10001B350(v7, 0, 1, v24);
    v25 = 0;
  }

  v29 = v40;
  sub_10001B350(v7, v25, 1, v40);
  if (sub_100024D10(v7, 1, v29) == 1)
  {
    v30 = v41;
    sub_10001B350(v41, 1, 1, v24);
    v31 = sub_100024D10(v7, 1, v29);
    v32 = v42;
    if (v31 != 1)
    {
      sub_10003FDF4(v7, &qword_100CC7688, &qword_100A64148);
    }
  }

  else
  {
    v30 = v41;
    sub_1005B3AF0(v7, v41);
    v32 = v42;
  }

  *v32 = v26;
  v33 = sub_10022C350(&qword_100CB6170, &unk_100A7B4C0);
  return sub_1005B3AF0(v30, v32 + *(v33 + 36));
}

uint64_t sub_1005B2FFC@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for Logger();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(qword_100CB61A0, &qword_100A64160);
  __chkstk_darwin(v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for UnitConfiguration.WindSpeed();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v19 = UnitManager.availableWindSpeedUnits.getter();

  static UnitManager.standard.getter();
  UnitManager.preferredWindUnit.getter();

  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_10003FDF4(v11, qword_100CB61A0, &qword_100A64160);
    static UnitManager.standard.getter();
    UnitManager.windSpeed.getter();

    UnitConfiguration.WindSpeed.init(_:)();
    if (sub_100024D10(v8, 1, v12) == 1)
    {
      sub_10003FDF4(v8, qword_100CB61A0, &qword_100A64160);
      static Logger.locale.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v35 = v22;
        v37 = swift_slowAlloc();
        v42 = v37;
        *v22 = 136315138;
        v36 = v21;
        static UnitManager.standard.getter();
        v23 = UnitManager.windSpeed.getter();

        v24 = [v23 symbol];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_100078694(v25, v27, &v42);

        v29 = v35;
        *(v35 + 1) = v28;
        _os_log_impl(&_mh_execute_header, v20, v36, "Encountered unsupported selectable unit for wind. unit=%s", v29, 0xCu);
        sub_100006F14(v37);
      }

      (*(v39 + 8))(v3, v40);
      v30 = v38;
      sub_1003DFA34(v19, v38);
      if (sub_100024D10(v30, 1, v12) == 1)
      {
        (*(v13 + 104))(v15, enum case for UnitConfiguration.WindSpeed.milesPerHour(_:), v12);
        if (sub_100024D10(v30, 1, v12) != 1)
        {
          sub_10003FDF4(v30, qword_100CB61A0, &qword_100A64160);
        }
      }

      else
      {
        (*(v13 + 32))(v15, v30, v12);
      }
    }

    else
    {
      v15 = v8;
    }
  }

  else
  {
    v15 = v11;
  }

  v31 = *(v13 + 32);
  v31(v18, v15, v12);
  v32 = v41;
  *v41 = v19;
  v33 = sub_10022C350(&qword_100CB5FF0, &qword_100A49AB0);
  return (v31)(v32 + *(v33 + 36), v18, v12);
}

uint64_t sub_1005B3500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() mainBundle];
  v15._object = 0x8000000100AD5FA0;
  v9._countAndFlagsBits = 0x29402528204025;
  v10._object = 0x8000000100AD5F80;
  v15._countAndFlagsBits = 0xD000000000000065;
  v10._countAndFlagsBits = 0xD00000000000001CLL;
  v9._object = 0xE700000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v8, v9, v15);

  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100A2D320;
  *(v11 + 56) = &type metadata for String;
  v12 = sub_100035744();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v12;
  *(v11 + 64) = v12;
  *(v11 + 72) = a3;
  *(v11 + 80) = a4;

  v13 = static String.localizedStringWithFormat(_:_:)();

  return v13;
}

uint64_t sub_1005B36B8(uint64_t a1)
{
  result = sub_1005B3AA8(&qword_100CC75C8, &type metadata accessor for UnitConfiguration.Distance, &protocol conformance descriptor for UnitConfiguration.Distance);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005B3760(uint64_t a1)
{
  result = sub_1005B3AA8(&qword_100CC75D0, &type metadata accessor for UnitConfiguration.Precipitation, &protocol conformance descriptor for UnitConfiguration.Precipitation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005B3808(uint64_t a1)
{
  result = sub_1005B3AA8(&qword_100CC75D8, &type metadata accessor for UnitConfiguration.Pressure, &protocol conformance descriptor for UnitConfiguration.Pressure);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005B38AC(uint64_t a1)
{
  result = sub_1005B3AA8(&qword_100CC75E0, &type metadata accessor for UnitConfiguration.Temperature, &protocol conformance descriptor for UnitConfiguration.Temperature);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005B3908(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1();
  v5 = v4;
  v6 = a2();
  v8 = sub_1005B3500(v3, v5, v6, v7);

  return v8;
}

uint64_t sub_1005B39CC(uint64_t a1)
{
  result = sub_1005B3AA8(&qword_100CC75E8, &type metadata accessor for UnitConfiguration.WindSpeed, &protocol conformance descriptor for UnitConfiguration.WindSpeed);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005B3A50(uint64_t a1)
{
  result = sub_1005B3AA8(&qword_100CB67B8, type metadata accessor for UnitsConfigurationViewModel.Temperature, byte_100A7B558);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005B3AA8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005B3AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005B3B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005B3BB8(uint64_t a1)
{
  v2 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005B3C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005B3C84(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C447A8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005B3CD0(unsigned __int8 a1)
{
  if (a1)
  {
    return sub_1000316BC(a1);
  }

  else
  {
    return 0x72656874616577;
  }
}

unint64_t sub_1005B3D38@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005B3C84(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005B3D68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005B3CD0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1005B3D94(uint64_t a1, unint64_t a2)
{

  Atomic.wrappedValue.getter();

  if (v23 == 1)
  {
    sub_1000A7CB4();
    v5 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100071538();
    if (sub_1000867CC())
    {
      v6 = sub_100018264();
      sub_1000205BC();
      sub_100040C04();
      *v6 = 136446210;
      *(v6 + 4) = sub_1000C87A8(v7, v8);
      sub_10004E754();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      sub_100006F14(v2);
      sub_10000EBB0();
      sub_100016BD8();
    }
  }

  sub_1000D3ED4();
  Atomic.wrappedValue.setter();

  sub_1000A7CB4();

  v14 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100071538();

  if (sub_1000867CC())
  {
    v15 = sub_100011450();
    sub_10003A270();
    sub_100040C04();
    *v15 = 136380931;
    v16 = sub_100078694(a1, a2, &v23);
    *(v15 + 4) = v16;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1000C87A8(v16, v17);
    sub_10004E754();
    _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    swift_arrayDestroy();
    sub_10000EBB0();
    sub_100016BD8();
  }
}

_BYTE *storeEnumTagSinglePayload for WeatherDataUpdateRequestLog.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005B4038()
{
  result = qword_100CC7798;
  if (!qword_100CC7798)
  {
    result = swift_getWitnessTable(aYr_0, &type metadata for WeatherDataUpdateRequestLog.Kind, v0, v1);
    atomic_store(result, &qword_100CC7798);
  }

  return result;
}

uint64_t sub_1005B408C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = *(a1 + 24);
  v12 = *(a1 + 64);
  v18 = *(a1 + 56);
  v13 = *(a1 + 16);
  sub_1002EE904(*a1, v8, v13);

  v14 = DeviceIsSlow() ^ 1;
  v15 = static Color.primary.getter();
  v16 = *(type metadata accessor for TipView(0) + 32);
  *(a7 + v16) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  swift_storeEnumTagMultiPayload();
  *(a7 + 32) = v9;
  *(a7 + 40) = v8;
  *(a7 + 48) = v13;
  *(a7 + 56) = v20;
  *(a7 + 64) = v10;
  *(a7 + 72) = v19;
  *(a7 + 80) = v11;
  *(a7 + 88) = v18;
  *(a7 + 96) = v12;
  *a7 = v14;
  *(a7 + 8) = 0x4040800000000000;
  *(a7 + 16) = v15;
  *(a7 + 24) = a2;
  *(a7 + 25) = 1;
  *(a7 + 104) = a3;
  *(a7 + 112) = a4;
  *(a7 + 120) = a5;
  *(a7 + 128) = a6;
}

void sub_1005B421C(uint64_t a1)
{
  sub_1005B42A4();
  if (v1 <= 0x3F)
  {
    sub_10000DA84();
    if (v2 <= 0x3F)
    {
      sub_10000DAAC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1005B42A4()
{
  if (!qword_100CC7A88)
  {
    v0 = type metadata accessor for DetailCondition();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC7A88);
    }
  }
}

uint64_t sub_1005B4334(uint64_t a1)
{
  result = type metadata accessor for Navigate.Destination(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1005B43A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for Navigate.Destination(0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for Navigate(0);
  v2[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[8] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005B44A0, v4, v3);
}

uint64_t sub_1005B44A0()
{
  v21 = v0;

  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_10000703C(v3, qword_100D90CF0);
  sub_1005B4CAC(v2, v1, type metadata accessor for Navigate);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    sub_1005B4CAC(v7, v8, type metadata accessor for Navigate.Destination);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_10001F1D4();
    v14 = sub_100078694(v11, v13, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Performing Navigate instruction: %{public}s", v9, 0xCu);
    sub_100006F14(v10);
  }

  else
  {

    sub_10001F1D4();
  }

  v15 = v0[2];
  v16 = v0[3];
  if (*(v16 + *(v0[6] + 20)) == 1)
  {
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  else
  {
    sub_1005B4754(v0[2]);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1005B4754(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WeatherMapOverlayKind();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DetailCondition();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Navigate.Destination(0);
  __chkstk_darwin(v13);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1005B4CAC(v2, v15, type metadata accessor for Navigate.Destination);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v30 = *v15;
      v28 = *(a1 + 16);
      v29 = *(a1 + 24);
      *v12 = v30;
      type metadata accessor for PerformanceTestAction(0);
      goto LABEL_6;
    case 2u:
      v32 = *v15;
      v20 = sub_10022C350(&unk_100CD8210, &unk_100A9E5D0);
      v21 = *(v15 + *(v20 + 64));
      v22 = v33;
      v23 = v34;
      (*(v33 + 32))(v6, v15 + *(v20 + 48), v34);
      v24 = *(a1 + 16);
      v25 = *(a1 + 24);
      v26 = *(v20 + 48);
      v27 = *(v20 + 64);
      *v12 = v32;
      (*(v22 + 16))(&v12[v26], v6, v23);
      v12[v27] = v21;
      type metadata accessor for PerformanceTestAction(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      sub_10004F034(v12, &v35, v24, v25);
      sub_1000E17D8(&v35);
      sub_1005B4D14(v12, type metadata accessor for MainAction);
      result = (*(v22 + 8))(v6, v23);
      break;
    case 3u:
      v28 = *(a1 + 16);
      v29 = *(a1 + 24);
      type metadata accessor for PerformanceTestAction(0);
LABEL_6:
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      sub_10004F034(v12, &v35, v28, v29);
      sub_1000E17D8(&v35);
      result = sub_1005B4D14(v12, type metadata accessor for MainAction);
      break;
    default:
      v16 = v32;
      (*(v32 + 32))(v9, v15, v7);
      v17 = *(a1 + 16);
      v18 = *(a1 + 24);
      (*(v16 + 16))(v12, v9, v7);
      type metadata accessor for PerformanceTestAction(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      sub_10004F034(v12, &v35, v17, v18);
      sub_1000E17D8(&v35);
      sub_1005B4D14(v12, type metadata accessor for MainAction);
      result = (*(v16 + 8))(v9, v7);
      break;
  }

  return result;
}

uint64_t sub_1005B4BF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000926F8;

  return sub_1005B43A8(a1);
}

uint64_t sub_1005B4CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005B4D14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005B4DB8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for Font.Leading();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContentSizeCategory();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v15 = type metadata accessor for UVIndexComponentView(0);
  sub_10009ECC8();
  (*(v9 + 104))(v11, enum case for ContentSizeCategory.extraExtraLarge(_:), v8);
  v16 = sub_1005B51FC(v14, v11);
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v14, v8);
  v18 = v1 + *(v15 + 28);
  v19 = *v18;
  v20 = *(v18 + 8);
  if (!v16)
  {
    if (v20)
    {
      if (v19)
      {
        goto LABEL_11;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v22 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v19, 0);
      (*(v26 + 8))(v7, v27);
      if (v32 == 1)
      {
        goto LABEL_11;
      }
    }

    static Font.subheadline.getter();
    goto LABEL_13;
  }

  if (!v20)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v19, 0);
    (*(v26 + 8))(v7, v27);
    if (v31 != 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    static Font.footnote.getter();
    goto LABEL_13;
  }

  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  static Font.caption2.getter();
LABEL_13:
  type metadata accessor for UVIndexComponentViewModel(0);
  v24 = v28;
  v23 = v29;
  (*(v28 + 104))(v4, enum case for Font.Leading.tight(_:), v29);

  Font.leading(_:)();

  (*(v24 + 8))(v4, v23);
  WeatherDescription.formatted(font:color:)();
}

BOOL sub_1005B51FC(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = type metadata accessor for ContentSizeCategory();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = *(v5 + 16);
  v13(&v21 - v11, a2, v3, v10);
  v14 = *(v5 + 88);
  v15 = v14(v12, v3);
  v16 = 0;
  v17 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v15 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v15 == enum case for ContentSizeCategory.small(_:))
    {
      v16 = 1;
      goto LABEL_24;
    }

    if (v15 == enum case for ContentSizeCategory.medium(_:))
    {
      v16 = 2;
      goto LABEL_24;
    }

    if (v15 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v16 = 4;
    }

    else if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v16 = 5;
    }

    else if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v16 = 6;
    }

    else if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v16 = 7;
    }

    else if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v16 = 8;
    }

    else if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v16 = 9;
    }

    else if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v16 = 10;
    }

    else
    {
      if (v15 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v5 + 8))(v12, v3);
LABEL_7:
        v16 = 3;
        goto LABEL_24;
      }

      v16 = 11;
    }
  }

LABEL_24:
  (v13)(v8, v22, v3);
  v18 = v14(v8, v3);
  if (v18 == v17)
  {
    v19 = 0;
  }

  else if (v18 == enum case for ContentSizeCategory.small(_:))
  {
    v19 = 1;
  }

  else if (v18 == enum case for ContentSizeCategory.medium(_:))
  {
    v19 = 2;
  }

  else
  {
    if (v18 != enum case for ContentSizeCategory.large(_:))
    {
      if (v18 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v19 = 4;
        return v16 < v19;
      }

      if (v18 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v19 = 5;
        return v16 < v19;
      }

      if (v18 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v19 = 6;
        return v16 < v19;
      }

      if (v18 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v19 = 7;
        return v16 < v19;
      }

      if (v18 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v19 = 8;
        return v16 < v19;
      }

      if (v18 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v19 = 9;
        return v16 < v19;
      }

      if (v18 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v19 = 10;
        return v16 < v19;
      }

      if (v18 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v19 = 11;
        return v16 < v19;
      }

      (*(v5 + 8))(v8, v3);
    }

    v19 = 3;
  }

  return v16 < v19;
}

uint64_t sub_1005B5608@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v60 = v9;
  v61 = v8;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v12 = v11 - v10;
  v57 = sub_10022C350(&qword_100CC7BF8, &qword_100A64418);
  sub_1000037E8();
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v58 = sub_10022C350(&qword_100CC7C00, &qword_100A64420);
  sub_1000037C4();
  v56 = v16;
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v59 = sub_10022C350(&qword_100CC7C08, &qword_100A64428);
  sub_1000037E8();
  __chkstk_darwin(v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v62 = &v53 - v24;
  v25 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = v30 - v29;
  if ([objc_opt_self() wu_systemUsesExuberatedLineHeight])
  {
    v32 = *(type metadata accessor for UVIndexComponentView(0) + 20);
    v55 = v2;
    v33 = v2 + v32;
    v34 = *v33;
    if (v33[8] != 1)
    {

      static os_log_type_t.fault.getter();
      v53 = v7;
      v37 = static Log.runtimeIssuesLog.getter();
      v54 = a1;
      v38 = v37;
      v7 = v53;
      os_log(_:dso:log:_:_:)();

      a1 = v54;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v34, 0);
      (*(v27 + 8))(v31, v25);
      LOBYTE(v34) = v64;
    }

    v36 = dbl_100A644F0[v34];
    v35 = dbl_100A64508[v34];
    v2 = v55;
  }

  else
  {
    v35 = -4.0;
    v36 = 2.0;
  }

  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v39 = sub_10022C350(&qword_100CC7C10, &qword_100A64430);
  sub_1005B5BA8(v2, &v15[*(v39 + 44)], v35, v36);
  static AccessibilityChildBehavior.ignore.getter();
  v40 = sub_1005B6DEC();
  v41 = v57;
  View.accessibilityElement(children:)();
  (*(v60 + 8))(v12, v61);
  sub_1000180EC(v15, &qword_100CC7BF8, &qword_100A64418);
  v64 = v41;
  v65 = v40;
  swift_getOpaqueTypeConformance2();
  v42 = v58;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v56 + 8))(v19, v42);
  v64 = sub_1009A0F10();
  v65 = v43;
  sub_10002D5A4();
  v44 = Text.init<A>(_:)();
  v46 = v45;
  v48 = v47;
  v49 = v62;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10010CD64(v44, v46, v48 & 1);

  sub_1000180EC(v22, &qword_100CC7C08, &qword_100A64428);
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v50 = a1 + *(sub_10022C350(&qword_100CC7C20, &qword_100A64438) + 36);
  v51 = type metadata accessor for AutomationInfoProperty(0);
  sub_1003AFC6C(v7, v50 + *(v51 + 24));
  *v50 = 0;
  *(v50 + 8) = 0xE000000000000000;
  *(v50 + 16) = swift_getKeyPath();
  *(v50 + 24) = 0;
  sub_1001FBCB4(v49, a1);
  sub_1001C9E84(v7);
  return sub_1000180EC(v49, &qword_100CC7C08, &qword_100A64428);
}

uint64_t sub_1005B5BA8@<X0>(double *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v156 = a2;
  v7 = type metadata accessor for AttributedString();
  __chkstk_darwin(v7 - 8);
  v125 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContentSizeCategory();
  v150 = *(v9 - 8);
  v151 = v9;
  __chkstk_darwin(v9);
  v149 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v148 = &v121 - v12;
  v147 = sub_10022C350(&qword_100CB5E30, &unk_100A49660);
  __chkstk_darwin(v147);
  v155 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v161 = &v121 - v15;
  v16 = type metadata accessor for Font.TextStyle();
  v142 = *(v16 - 8);
  v143 = v16;
  __chkstk_darwin(v16);
  v141 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_10022C350(&qword_100CC7C28, &unk_100A64470);
  __chkstk_darwin(v145);
  v146 = &v121 - v18;
  v19 = sub_10022C350(&qword_100CB5E28, &qword_100A49658);
  v153 = *(v19 - 8);
  v154 = v19;
  __chkstk_darwin(v19);
  v152 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v159 = &v121 - v22;
  v158 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v162 = *(v158 - 8);
  __chkstk_darwin(v158);
  KeyPath = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v24 - 8);
  v140 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v121 - v27;
  v29 = type metadata accessor for EnvironmentValues();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v33 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v34);
  *__dst = *a1;
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v35);
  v36 = LocalizedStringKey.init(stringInterpolation:)();
  v40 = Text.init(_:tableName:bundle:comment:)(v36, v38, v37 & 1, v39, 0, 0, 0, 0, 0, 256);
  v137 = v41;
  v138 = v40;
  v43 = v42;
  v139 = v44;
  v45 = static Font.largeTitle.getter();
  v131 = static Font.title2.getter();
  v144 = type metadata accessor for UVIndexComponentView(0);
  v46 = *(v144 + 28);
  v160 = a1;
  v47 = a1 + v46;
  v48 = *v47;
  v132 = v47[8];
  v122 = v32;
  v123 = v30;
  v124 = v29;
  v136 = v48;
  if (v132 != 1)
  {

    static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v48, 0);
    (*(v30 + 8))(v32, v29);
    LOBYTE(v48) = __dst[0];
  }

  v50 = enum case for Font.Leading.tight(_:);
  v51 = type metadata accessor for Font.Leading();
  v52 = *(v51 - 8);
  v53 = *(v52 + 104);
  v135 = v50;
  v133 = v52 + 104;
  v134 = v53;
  v53(v28, v50, v51);
  v130 = v51;
  sub_10001B350(v28, 0, 1, v51);
  v54 = v140;
  sub_100035AD0(v28, v140, &qword_100CACFF0, &unk_100A48000);

  v55 = v131;

  sub_1001C987C(v45, v55, v48 & 1, v54);
  v56 = v138;
  LOBYTE(v51) = v43;
  v57 = v137;
  v140 = v28;
  v58 = Text.font(_:)();
  v128 = v59;
  v129 = v58;
  v61 = v60;
  v63 = v62;

  sub_10010CD64(v56, v57, v51 & 1);

  sub_1000180EC(v140, &qword_100CACFF0, &unk_100A48000);
  v64 = KeyPath;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  v65 = v129;
  v66 = Text.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  v138 = v67;
  v139 = v66;
  LODWORD(v137) = v68;
  v140 = v69;
  sub_10010CD64(v65, v61, v63 & 1);

  v70 = *(v162 + 8);
  v162 += 8;
  v131 = v70;
  v70(v64, v158);
  v71 = *(v160 + 3);
  *__dst = v160[2];
  __dst[1] = v71;
  sub_10002D5A4();

  v72 = Text.init<A>(_:)();
  v127 = v73;
  v128 = v72;
  v126 = v74;
  v129 = v75;
  v77 = v141;
  v76 = v142;
  v78 = v143;
  (*(v142 + 104))(v141, enum case for Font.TextStyle.title3(_:), v143);
  static Font.Weight.semibold.getter();
  v79 = static Font.system(_:weight:)();
  (*(v76 + 8))(v77, v78);
  v80 = static Font.headline.getter();
  if (v132)
  {
    v81 = v136;
    v179 = v136 & 1;
  }

  else
  {
    v82 = v136;

    static os_log_type_t.fault.getter();
    v83 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v84 = v122;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v82, 0);
    (*(v123 + 8))(v84, v124);
    v81 = v179;
  }

  v85 = v146;
  v86 = &v146[*(v145 + 36)];
  v87 = type metadata accessor for FontWithSmallVariantModifier(0);
  v88 = *(v87 + 24);
  v89 = v130;
  v134(v86 + v88, v135, v130);
  sub_10001B350(v86 + v88, 0, 1, v89);
  *v86 = v79;
  v86[1] = v80;
  *(v86 + *(v87 + 28)) = v81 & 1;
  v90 = v127;
  *v85 = v128;
  *(v85 + 8) = v90;
  *(v85 + 16) = v126 & 1;
  *(v85 + 24) = v129;
  *(v85 + 32) = 0;
  *(v85 + 40) = a3;
  v91 = KeyPath;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  sub_1005B6E50();
  View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  v131(v91, v158);
  sub_1000180EC(v85, &qword_100CC7C28, &unk_100A64470);
  v92 = v160;
  if (qword_100CA2908 != -1)
  {
    swift_once();
  }

  static Color.white.getter();
  v93 = v161;
  HorizontalBarPointView.init(point:pointColor:gradient:)();
  v94 = v144;
  sub_10022C350(&qword_100CBB750, &unk_100A51050);
  ScaledValue.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v95 = v148;
  v96 = (v93 + *(v147 + 36));
  v97 = v181;
  *v96 = v180;
  v96[1] = v97;
  v96[2] = v182;
  sub_10009ECC8();
  v99 = v149;
  v98 = v150;
  v100 = v151;
  (*(v150 + 104))(v149, enum case for ContentSizeCategory.extraExtraLarge(_:), v151);
  v101 = sub_1005B69D0(v95, v99);
  v102 = *(v98 + 8);
  v102(v99, v100);
  v102(v95, v100);
  if (v101)
  {
    goto LABEL_9;
  }

  v109 = v92 + *(v94 + 24);
  v110 = *v109;
  if (v109[8] == 1)
  {
    if (v110)
    {
      goto LABEL_14;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v111 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v112 = v122;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v110, 0);
    (*(v123 + 8))(v112, v124);
    if (__dst[0])
    {
LABEL_14:
      v162 = 0;
      v160 = 0;
      KeyPath = 0;
      v158 = 0;
      v148 = 0;
      v149 = 0;
      v150 = 0;
      v151 = 0;
      v108 = 0;
      goto LABEL_15;
    }
  }

LABEL_9:
  sub_1005B4DB8(v125);
  v162 = Text.init(_:)();
  v160 = v103;
  v105 = v104;
  v158 = v106;
  KeyPath = swift_getKeyPath();
  v107 = swift_getKeyPath();
  LOBYTE(__dst[0]) = v105 & 1;
  LOBYTE(v163[0]) = 0;
  v108 = v105 & 1;
  v150 = 0;
  v151 = v107;
  v149 = 0x3FE4CCCCCCCCCCCDLL;
  v148 = 3;
LABEL_15:
  v168 = v139;
  v169 = v138;
  v170 = v137 & 1;
  v171 = v140;
  v172 = &v168;
  v114 = v152;
  v113 = v153;
  v115 = v159;
  v116 = v154;
  (*(v153 + 16))(v152, v159, v154);
  v166 = a4;
  v167 = 0;
  v173 = v114;
  v174 = &v166;
  v117 = v161;
  v118 = v155;
  sub_100035AD0(v161, v155, &qword_100CB5E30, &unk_100A49660);
  v164 = a4;
  v165 = 0;
  v175 = v118;
  v176 = &v164;
  v163[0] = v162;
  v163[1] = v160;
  v163[2] = v108;
  v163[3] = v158;
  v163[4] = KeyPath;
  v163[5] = v148;
  v163[6] = v150;
  v163[7] = v151;
  v163[8] = v149;
  v177 = v163;
  sub_1003E8F10();
  sub_1000180EC(v117, &qword_100CB5E30, &unk_100A49660);
  v119 = *(v113 + 8);
  v119(v115, v116);
  memcpy(__dst, v163, sizeof(__dst));
  sub_1000180EC(__dst, &qword_100CB5E38, &qword_100A64480);
  sub_1000180EC(v118, &qword_100CB5E30, &unk_100A49660);
  v119(v114, v116);
  sub_10010CD64(v168, v169, v170);
}

BOOL sub_1005B69D0(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

unint64_t sub_1005B6DEC()
{
  result = qword_100CC7C18;
  if (!qword_100CC7C18)
  {
    v3 = sub_10022E824(&qword_100CC7BF8, &qword_100A64418);
    result = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v3, v0, v1);
    atomic_store(result, &qword_100CC7C18);
  }

  return result;
}

unint64_t sub_1005B6E50()
{
  result = qword_100CC7C30;
  if (!qword_100CC7C30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC7C28, &unk_100A64470);
    v4[0] = sub_100322A14();
    v4[1] = sub_1005B70C0(&qword_100CBB8D0, type metadata accessor for FontWithSmallVariantModifier, a9x);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC7C30);
  }

  return result;
}

unint64_t sub_1005B6F0C()
{
  result = qword_100CC7C38;
  if (!qword_100CC7C38)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC7C20, &qword_100A64438);
    v4[0] = sub_1005B6FC8();
    v4[1] = sub_1005B70C0(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC7C38);
  }

  return result;
}

unint64_t sub_1005B6FC8()
{
  result = qword_100CC7C40;
  if (!qword_100CC7C40)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CC7C08, &qword_100A64428);
    v4[2] = sub_10022E824(&qword_100CC7BF8, &qword_100A64418);
    v4[3] = sub_1005B6DEC();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1005B70C0(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC7C40);
  }

  return result;
}

uint64_t sub_1005B70C0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1005B7108(uint64_t a1)
{
  if (!qword_100CC7CC8)
  {
    type metadata accessor for Location();
    type metadata accessor for SelectedSearchResult(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CC7CC8);
    }
  }
}

uint64_t sub_1005B717C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5164657261656C63 && a2 == 0xEC00000079726575;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766965636572 && a2 == 0xED0000726F727245;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465766965636572 && a2 == 0xEF73746C75736552;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465686372616573 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6944646570706174 && a2 == 0xED0000776569566DLL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F4C646570706174 && a2 == 0xEE006E6F69746163;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000018 && 0x8000000100AD6350 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x8000000100AD6370 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x65536C65636E6163 && a2 == 0xEC00000068637261;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x8000000100ABA8F0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x8000000100AD6330 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x8000000100AD6310 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001DLL && 0x8000000100AD62F0 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000011 && 0x8000000100AD62D0 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000015 && 0x8000000100AD62B0 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000016 && 0x8000000100AD6290 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0xD000000000000010 && 0x8000000100AD6270 == a2)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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
    }
  }
}

unint64_t sub_1005B769C(char a1)
{
  result = 0x5164657261656C63;
  switch(a1)
  {
    case 1:
    case 2:
      v4 = 0x766965636572;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    case 3:
      v4 = 0x686372616573;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    case 4:
      return 0x6944646570706174;
    case 5:
      return 0x6F4C646570706174;
    case 6:
      return 0xD000000000000018;
    case 7:
      return 0xD000000000000014;
    case 8:
      return 0x65536C65636E6163;
    case 9:
    case 13:
      return 0xD000000000000011;
    case 10:
      return 0xD000000000000010;
    case 11:
      return 0xD000000000000012;
    case 12:
      v3 = 13;
      goto LABEL_7;
    case 14:
      v3 = 5;
LABEL_7:
      result = v3 | 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005B78AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100AC7B60 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1005B7974(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1005B79A4(uint64_t a1)
{
  v2 = sub_1005BBD30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B79E0(uint64_t a1)
{
  v2 = sub_1005BBD30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7A1C(uint64_t a1)
{
  v2 = sub_1005BBB8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7A58(uint64_t a1)
{
  v2 = sub_1005BBB8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7A94(uint64_t a1)
{
  v2 = sub_1005BBAE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7AD0(uint64_t a1)
{
  v2 = sub_1005BBAE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7B0C(uint64_t a1)
{
  v2 = sub_1005BBFD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7B48(uint64_t a1)
{
  v2 = sub_1005BBFD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005B717C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005B7BB4(uint64_t a1)
{
  v2 = sub_1005BBA3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7BF0(uint64_t a1)
{
  v2 = sub_1005BBA3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7C2C(uint64_t a1)
{
  v2 = sub_1005BBA90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7C68(uint64_t a1)
{
  v2 = sub_1005BBA90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7CA4(uint64_t a1)
{
  v2 = sub_1005BBC88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7CE0(uint64_t a1)
{
  v2 = sub_1005BBC88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7D1C(uint64_t a1)
{
  v2 = sub_1005BBCDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7D58(uint64_t a1)
{
  v2 = sub_1005BBCDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7D94(uint64_t a1)
{
  v2 = sub_1005BBF7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7DD0(uint64_t a1)
{
  v2 = sub_1005BBF7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7E0C(uint64_t a1)
{
  v2 = sub_1005BBF28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7E48(uint64_t a1)
{
  v2 = sub_1005BBF28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7E84(uint64_t a1)
{
  v2 = sub_1005BBBE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7EC0(uint64_t a1)
{
  v2 = sub_1005BBBE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7EFC(uint64_t a1)
{
  v2 = sub_1005BBB38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7F38(uint64_t a1)
{
  v2 = sub_1005BBB38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7F74(uint64_t a1)
{
  v2 = sub_1005BBED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7FB0(uint64_t a1)
{
  v2 = sub_1005BBED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7FEC(uint64_t a1)
{
  v2 = sub_1005BBE80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B8028(uint64_t a1)
{
  v2 = sub_1005BBE80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B806C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005B78AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005B8094(uint64_t a1)
{
  v2 = sub_1005BBE2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B80D0(uint64_t a1)
{
  v2 = sub_1005BBE2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B810C(uint64_t a1)
{
  v2 = sub_1005BBDD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B8148(uint64_t a1)
{
  v2 = sub_1005BBDD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B8184(uint64_t a1)
{
  v2 = sub_1005BBD84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B81C0(uint64_t a1)
{
  v2 = sub_1005BBD84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B81FC(uint64_t a1)
{
  v2 = sub_1005BBC34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B8238(uint64_t a1)
{
  v2 = sub_1005BBC34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B8274@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Location();
  sub_1000037C4();
  v50 = v2;
  v51 = v1;
  __chkstk_darwin(v1);
  sub_1000037D8();
  v49 = v4 - v3;
  type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v47 = v5;
  v48 = v6;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for SearchLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for CodableError();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  type metadata accessor for SearchViewAction(0);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = (v24 - v23);
  sub_10022C350(&qword_100CC7D00, &unk_100A645E0);
  sub_1000037C4();
  v52 = v27;
  v53 = v26;
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  sub_100051F2C();
  v29 = sub_1000059A0();
  sub_1005BB984(v29, v30, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = *v25;
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2C3F0;
      *(inited + 32) = 0x73746C75736572;
      *(inited + 40) = 0xE700000000000000;
      *(inited + 72) = sub_10022C350(&qword_100CA64C8, &qword_100A3FEF0);
      *(inited + 48) = v38;
      sub_10006A820();
      sub_100041A80();
      sub_10003A288();
      goto LABEL_15;
    case 2u:
      sub_1005BB9E4(v25, type metadata accessor for SearchViewAction);
      Dictionary.init(dictionaryLiteral:)();
      sub_10003A288();
      goto LABEL_15;
    case 3u:
      v36 = *(sub_10022C350(&qword_100CC7D10, &unk_100A645F0) + 48);
      Dictionary.init(dictionaryLiteral:)();
      sub_10000417C();
      sub_10003A288();
      ShortDescription.init(name:_:)();
      sub_100022E48();
      sub_1005BB9E4(v25 + v36, v37);
      (*(v50 + 8))(v25, v51);
      break;
    case 4u:
      (*(v48 + 32))(v9, v25, v47);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_100A2C3F0;
      v10 = 0xD000000000000010;
      *(v34 + 32) = 0xD000000000000012;
      *(v34 + 40) = 0x8000000100ABB010;
      *(v34 + 72) = v47;
      v35 = sub_100042FB0((v34 + 48));
      (*(v48 + 16))(v35, v9, v47);
      sub_10006A820();
      sub_10003A288();
      ShortDescription.init(name:_:)();
      (*(v48 + 8))(v9, v47);
      break;
    case 5u:
      sub_1005BC024(v25, v14, type metadata accessor for SearchLocation);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_100A2C3F0;
      strcpy((v40 + 32), "searchLocation");
      *(v40 + 47) = -18;
      *(v40 + 72) = v10;
      v41 = sub_100042FB0((v40 + 48));
      sub_1005BB984(v14, v41, type metadata accessor for SearchLocation);
      sub_10006A820();
      sub_100025204();
      sub_10003A288();
      ShortDescription.init(name:_:)();
      sub_100011698();
      sub_1005BB9E4(v14, v42);
      break;
    case 6u:
      (*(v50 + 32))(v49, v25, v51);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_100A2C3F0;
      *(v43 + 32) = 0x6E6F697461636F6CLL;
      *(v43 + 40) = 0xE800000000000000;
      *(v43 + 72) = v51;
      v44 = sub_100042FB0((v43 + 48));
      (*(v50 + 16))(v44, v49, v51);
      sub_10006A820();
      sub_10003A288();
      ShortDescription.init(name:_:)();
      (*(v50 + 8))(v49, v51);
      break;
    case 7u:
    case 9u:
    case 0xDu:
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_14;
    case 8u:
      Dictionary.init(dictionaryLiteral:)();
      sub_10000417C();
      goto LABEL_14;
    case 0xAu:
    case 0xCu:
    case 0xEu:
    case 0xFu:
      Dictionary.init(dictionaryLiteral:)();
      sub_100025204();
LABEL_14:
      sub_10003A288();
      goto LABEL_15;
    case 0xBu:
    case 0x10u:
      Dictionary.init(dictionaryLiteral:)();
      sub_10003A288();
LABEL_15:
      ShortDescription.init(name:_:)();
      break;
    default:
      (*(v17 + 32))(v21, v25, v15);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_100A2C3F0;
      *(v32 + 32) = 0x726F727265;
      *(v32 + 40) = 0xE500000000000000;
      *(v32 + 72) = v15;
      v33 = sub_100042FB0((v32 + 48));
      (*(v17 + 16))(v33, v21, v15);
      Dictionary.init(dictionaryLiteral:)();
      sub_100041A80();
      sub_10003A288();
      ShortDescription.init(name:_:)();
      (*(v17 + 8))(v21, v15);
      break;
  }

  a1[3] = v53;
  a1[4] = sub_1005BB920();
  v45 = sub_100042FB0(a1);
  return (*(v52 + 32))(v45, v10, v53);
}

uint64_t sub_1005B8CF0(void *a1)
{
  sub_10022C350(&qword_100CC7E48, &qword_100A64698);
  sub_1000037C4();
  v209 = v3;
  v210 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v207 = v5;
  v205 = sub_10022C350(&qword_100CC7E50, &qword_100A646A0);
  sub_1000037C4();
  v203 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v202 = v8;
  v208 = sub_10022C350(&qword_100CC7E58, &qword_100A646A8);
  sub_1000037C4();
  v206 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v204 = v11;
  sub_10022C350(&qword_100CC7E60, &qword_100A646B0);
  sub_1000037C4();
  v200 = v13;
  v201 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v199 = v15;
  v16 = sub_10022C350(&qword_100CC7E68, &qword_100A646B8);
  sub_100003E5C(v16, &v224);
  v197 = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  sub_100003990(v19);
  v20 = sub_10022C350(&qword_100CC7E70, &qword_100A646C0);
  sub_100003E5C(v20, &v223);
  v195[3] = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_100003990(v23);
  v24 = sub_10022C350(&qword_100CC7E78, &qword_100A646C8);
  sub_100003E5C(v24, &v222);
  v195[0] = v25;
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  sub_100003990(v27);
  v28 = sub_10022C350(&qword_100CC7E80, &qword_100A646D0);
  sub_100003E5C(v28, &v220);
  v193 = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  sub_100003990(v31);
  v32 = sub_10022C350(&qword_100CC7E88, &qword_100A646D8);
  sub_100003E5C(v32, &v216);
  v191 = v33;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  sub_100003990(v35);
  v36 = sub_10022C350(&qword_100CC7E90, &qword_100A646E0);
  sub_100003E5C(v36, &v219);
  v192 = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  sub_100003990(v39);
  v187 = type metadata accessor for SearchLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v40);
  sub_1000037D8();
  sub_100003990(v42 - v41);
  v43 = sub_10022C350(&qword_100CC7E98, &qword_100A646E8);
  sub_100003E5C(v43, &v208);
  v185 = v44;
  sub_100003828();
  __chkstk_darwin(v45);
  sub_1000039BC();
  sub_100003990(v46);
  v47 = type metadata accessor for LocationOfInterest();
  v48 = sub_100003E5C(v47, &v206);
  v182 = v49;
  __chkstk_darwin(v48);
  sub_1000037D8();
  sub_100003990(v51 - v50);
  v52 = sub_10022C350(&qword_100CC7EA0, &qword_100A646F0);
  sub_100003E5C(v52, &v211);
  v188 = v53;
  sub_100003828();
  __chkstk_darwin(v54);
  sub_1000039BC();
  sub_100003990(v55);
  v169[0] = type metadata accessor for SelectedSearchResult(0);
  sub_1000037E8();
  __chkstk_darwin(v56);
  sub_1000037D8();
  v212 = v58 - v57;
  type metadata accessor for Location();
  sub_1000037C4();
  v213 = v60;
  v214 = v59;
  __chkstk_darwin(v59);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v61);
  v211 = v169 - v62;
  v63 = sub_10022C350(&qword_100CC7EA8, &qword_100A646F8);
  sub_100003E5C(v63, &v200);
  v178 = v64;
  sub_100003828();
  __chkstk_darwin(v65);
  sub_1000039BC();
  sub_100003990(v66);
  v67 = sub_10022C350(&qword_100CC7EB0, &qword_100A64700);
  sub_100003E5C(v67, v198);
  v176 = v68;
  sub_100003828();
  __chkstk_darwin(v69);
  sub_1000039BC();
  sub_100003990(v70);
  v71 = sub_10022C350(&qword_100CC7EB8, &qword_100A64708);
  sub_100003E5C(v71, v196);
  v174 = v72;
  sub_100003828();
  __chkstk_darwin(v73);
  sub_1000039BC();
  sub_100003990(v74);
  v75 = sub_10022C350(&qword_100CC7EC0, &qword_100A64710);
  sub_100003E5C(v75, v195);
  v172 = v76;
  sub_100003828();
  __chkstk_darwin(v77);
  sub_1000039BC();
  sub_100003990(v78);
  v79 = type metadata accessor for CodableError();
  v80 = sub_100003E5C(v79, v194);
  v170 = v81;
  __chkstk_darwin(v80);
  sub_1000037D8();
  v84 = v83 - v82;
  v85 = sub_10022C350(&qword_100CC7EC8, &qword_100A64718);
  sub_1000037C4();
  v169[1] = v86;
  sub_100003828();
  __chkstk_darwin(v87);
  v88 = type metadata accessor for SearchViewAction(0);
  sub_1000037E8();
  __chkstk_darwin(v89);
  sub_1000037D8();
  v92 = (v91 - v90);
  sub_10022C350(&qword_100CC7ED0, &qword_100A64720);
  sub_1000037C4();
  v217 = v93;
  v218 = v94;
  sub_100003828();
  __chkstk_darwin(v95);
  v97 = v169 - v96;
  v98 = a1[3];
  v99 = sub_1000161C0(a1, v98);
  sub_1005BBA3C();
  v216 = v97;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100051F2C();
  sub_1005BB984(v215, v92, v100);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v143 = *v92;
      LOBYTE(v221) = 2;
      sub_1005BBF28();
      sub_10000CC10();
      sub_10003BA94(v144, v145);
      v221 = v143;
      sub_10022C350(&qword_100CA64C8, &qword_100A3FEF0);
      sub_1005BC084(&qword_100CB01C0, &qword_100CB01C8, protocol conformance descriptor for SearchLocation, &protocol conformance descriptor for <A> [A]);
      v146 = v175;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_10000E73C();
      v147(v88, v146);
      sub_100014A24();
      v148(v98, v85);

    case 2u:
      LOBYTE(v221) = 3;
      sub_1005BBED4();
      sub_10000CC10();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100021048();
      v126 = v177;
      KeyedEncodingContainer.encode(_:forKey:)();

      sub_10000E73C();
      v127(v88, v126);
      sub_100014A24();
      v109 = sub_1000059A0();
      goto LABEL_28;
    case 3u:
      v130 = *(sub_10022C350(&qword_100CC7D10, &unk_100A645F0) + 48);
      v131 = v213;
      v132 = v214;
      v133 = v211;
      (*(v213 + 32))(v211, v92, v214);
      sub_1005BC024(v92 + v130, v212, type metadata accessor for SelectedSearchResult);
      LOBYTE(v221) = 5;
      sub_1005BBE2C();
      v134 = v183;
      v135 = v216;
      v85 = v217;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v221) = 0;
      sub_10000625C();
      sub_1005BC110(v136, v137, &protocol conformance descriptor for Location);
      v138 = v189;
      v139 = v219;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v139)
      {
        sub_10000E73C();
        v140(v134, v138);
        sub_100022E48();
        sub_1005BB9E4(v212, v141);
        (*(v131 + 8))(v133, v132);
      }

      else
      {
        sub_100071D4C();
        sub_100031E00();
        sub_1005BC110(v164, v165, byte_100A9C078);
        v166 = v212;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        sub_10000E73C();
        v167(v134, v138);
        sub_100022E48();
        sub_1005BB9E4(v166, v168);
        (*(v131 + 8))(v211, v132);
      }

      sub_100014A24();
      v109 = v135;
      goto LABEL_27;
    case 4u:
      sub_10000CC10();
      v117 = v180;
      v118 = v184;
      (*(v116 + 32))(v180, v92, v184);
      LOBYTE(v221) = 6;
      sub_1005BBDD8();
      v119 = v181;
      v121 = v216;
      v120 = v217;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10001856C();
      sub_1005BC110(v122, v123, &protocol conformance descriptor for LocationOfInterest);
      v124 = v186;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_10000E73C();
      v125(v119, v124);
      (*(v88 + 8))(v117, v118);
      goto LABEL_19;
    case 5u:
      v150 = v190;
      sub_1005BC024(v92, v190, type metadata accessor for SearchLocation);
      LOBYTE(v221) = 7;
      sub_1005BBD84();
      v121 = v216;
      v120 = v217;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100019AE4();
      sub_1005BC110(v151, v152, protocol conformance descriptor for SearchLocation);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_10000E73C();
      v153 = sub_1000059A0();
      v154(v153);
      sub_100011698();
      sub_1005BB9E4(v150, v155);
      goto LABEL_19;
    case 6u:
      v157 = v213;
      v156 = v214;
      v158 = v179;
      (*(v213 + 32))(v179);
      LOBYTE(v221) = 14;
      sub_1005BBB38();
      v121 = v216;
      v120 = v217;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10000625C();
      sub_1005BC110(v159, v160, &protocol conformance descriptor for Location);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v161 = sub_1000059A0();
      v162(v161);
      (*(v157 + 8))(v158, v156);
LABEL_19:
      sub_100014A24();
      v109 = v121;
      v128 = v120;
      goto LABEL_28;
    case 7u:
      LOBYTE(v221) = 0;
      sub_1005BBFD0();
      v99 = v216;
      v84 = v217;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10000E73C();
      v114 = sub_100014268();
      goto LABEL_23;
    case 8u:
      LOBYTE(v221) = 4;
      sub_1005BBE80();
      sub_10000425C(&type metadata for SearchViewAction.TappedDimViewCodingKeys, &v221);
      sub_10000E73C();
      v114 = v85;
      v115 = &v200;
      goto LABEL_22;
    case 9u:
      LOBYTE(v221) = 8;
      sub_1005BBD30();
      sub_10000425C(&type metadata for SearchViewAction.CancelSearchCodingKeys, &v221);
      sub_10000E73C();
      v114 = v85;
      v115 = &v216;
      goto LABEL_22;
    case 0xAu:
      LOBYTE(v221) = 9;
      sub_1005BBCDC();
      sub_10000425C(&type metadata for SearchViewAction.HideSearchResultsCodingKeys, &v221);
      sub_10000E73C();
      v114 = v85;
      v115 = &v220;
      goto LABEL_22;
    case 0xBu:
      LOBYTE(v221) = 10;
      sub_1005BBC88();
      sub_10000425C(&type metadata for SearchViewAction.FocusSearchFieldCodingKeys, &v221);
      sub_10000E73C();
      v114 = v85;
      v115 = &v222;
      goto LABEL_22;
    case 0xCu:
      LOBYTE(v221) = 11;
      sub_1005BBC34();
      sub_10000425C(&type metadata for SearchViewAction.UnfocusSearchFieldCodingKeys, &v221);
      sub_10000E73C();
      v114 = v85;
      v115 = &v223;
      goto LABEL_22;
    case 0xDu:
      LOBYTE(v221) = 12;
      sub_1005BBBE0();
      sub_10000425C(&type metadata for SearchViewAction.RemoveSearchFieldFocusRequestCodingKeys, &v221);
      sub_10000E73C();
      v114 = v85;
      v115 = &v224;
LABEL_22:
      v142 = *(v115 - 32);
LABEL_23:
      v113(v114, v142);
      goto LABEL_24;
    case 0xEu:
      LOBYTE(v221) = 13;
      sub_1005BBB8C();
      v110 = v199;
      sub_1000284F8(&type metadata for SearchViewAction.CannotAddLocationCodingKeys, &v221);
      v112 = v200;
      v111 = v201;
      goto LABEL_5;
    case 0xFu:
      LOBYTE(v221) = 15;
      sub_1005BBAE4();
      v129 = v202;
      sub_1000284F8(&type metadata for SearchViewAction.ClearLastAddedLocationCodingKeys, &v221);
      (*(v203 + 8))(v129, v205);
      goto LABEL_24;
    case 0x10u:
      LOBYTE(v221) = 16;
      sub_1005BBA90();
      v110 = v207;
      sub_1000284F8(&type metadata for SearchViewAction.EnterZeroKeywordCodingKeys, &v221);
      v112 = v209;
      v111 = v210;
LABEL_5:
      (*(v112 + 8))(v110, v111);
LABEL_24:
      sub_100014A24();
      result = v163(v99, v84);
      break;
    default:
      v101 = v170;
      v102 = v171;
      (*(v170 + 32))(v84, v92, v171);
      sub_100071D4C();
      sub_1005BBF7C();
      v103 = v169[2];
      sub_10003BA94(&type metadata for SearchViewAction.ReceivedErrorCodingKeys, &v221);
      sub_1000316F0();
      sub_1005BC110(v104, v105, &protocol conformance descriptor for CodableError);
      v106 = v173;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_10000E73C();
      v107(v103, v106);
      (*(v101 + 8))(v84, v102);
      sub_100014A24();
      v109 = v98;
LABEL_27:
      v128 = v85;
LABEL_28:
      result = v108(v109, v128);
      break;
  }

  return result;
}