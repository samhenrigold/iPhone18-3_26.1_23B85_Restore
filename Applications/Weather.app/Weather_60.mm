uint64_t sub_1006743FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x54746E6572727563 && a2 == 0xEB00000000656D69;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461)
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

uint64_t sub_100674520(char a1)
{
  if (!a1)
  {
    return 0x57746E6572727563;
  }

  if (a1 == 1)
  {
    return 0x54746E6572727563;
  }

  return 0x7469706963657270;
}

uint64_t sub_1006745A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006743FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006745C8(uint64_t a1)
{
  v2 = sub_100674888();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100674604(uint64_t a1)
{
  v2 = sub_100674888();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100674640(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CCFD10, &qword_100A73A60);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_100674888();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v31 = 0;
  type metadata accessor for CurrentWeather();
  sub_10001074C();
  v13 = sub_10067499C(v11, v12, &protocol conformance descriptor for CurrentWeather);
  sub_100005AE0(v3, &v31, v14, v15, v13);
  if (!v2)
  {
    HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent(0);
    v17 = *(HourPrecipitationComponent + 20);
    v30 = 1;
    type metadata accessor for Date();
    sub_10001C994();
    v20 = sub_10067499C(v18, v19, &protocol conformance descriptor for Date);
    sub_100005AE0(v3 + v17, &v30, v21, v22, v20);
    v23 = *(HourPrecipitationComponent + 24);
    v29 = 2;
    sub_10022C350(&qword_100CAE8F0, &qword_100A3E420);
    v24 = sub_1006749E4(&qword_100CCFD18, &protocol conformance descriptor for Forecast<A>);
    sub_100005AE0(v3 + v23, &v29, v25, v26, v24);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_100674888()
{
  result = qword_100CCFD00;
  if (!qword_100CCFD00)
  {
    result = swift_getWitnessTable(byte_100A73B2C, &type metadata for NextHourPrecipitationComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCFD00);
  }

  return result;
}

uint64_t sub_1006748DC(uint64_t a1, uint64_t a2)
{
  HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent(0);
  (*(*(HourPrecipitationComponent - 8) + 16))(a2, a1, HourPrecipitationComponent);
  return a2;
}

uint64_t sub_100674940(uint64_t a1)
{
  HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent(0);
  (*(*(HourPrecipitationComponent - 8) + 8))(a1, HourPrecipitationComponent);
  return a1;
}

uint64_t sub_10067499C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1006749E4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10022E824(&qword_100CAE8F0, &qword_100A3E420);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NextHourPrecipitationComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100674B14()
{
  result = qword_100CCFD20;
  if (!qword_100CCFD20)
  {
    result = swift_getWitnessTable(byte_100A73B04, &type metadata for NextHourPrecipitationComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCFD20);
  }

  return result;
}

unint64_t sub_100674B6C()
{
  result = qword_100CCFD28;
  if (!qword_100CCFD28)
  {
    result = swift_getWitnessTable(aM_67, &type metadata for NextHourPrecipitationComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCFD28);
  }

  return result;
}

unint64_t sub_100674BC4()
{
  result = qword_100CCFD30;
  if (!qword_100CCFD30)
  {
    result = swift_getWitnessTable(a5_30, &type metadata for NextHourPrecipitationComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCFD30);
  }

  return result;
}

uint64_t sub_100674C18()
{
  v1 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  if (*(v0 + 48))
  {
    v15 = *(v0 + 48);
  }

  else
  {
    (*(v10 + 104))(v14, enum case for Font.TextStyle.title2(_:), v8);
    static Font.Weight.medium.getter();
    static Font.system(_:weight:)();
    (*(v10 + 8))(v14, v8);
    (*(v3 + 104))(v7, enum case for Font.Leading.tight(_:), v1);
    v15 = Font.leading(_:)();

    (*(v3 + 8))(v7, v1);
    *(v0 + 48) = v15;
  }

  return v15;
}

double sub_100674DE8()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  *(v0 + 32) = 0x4000000000000000;
  *(v0 + 40) = 0;
  return 2.0;
}

uint64_t sub_100674E0C()
{
  v1 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  if (*(v0 + 56))
  {
    v8 = *(v0 + 56);
  }

  else
  {
    (*(v3 + 104))(v7, enum case for Font.TextStyle.subheadline(_:), v1);
    static Font.Weight.medium.getter();
    v8 = static Font.system(_:weight:)();
    (*(v3 + 8))(v7, v1);
    *(v0 + 56) = v8;
  }

  return v8;
}

double sub_100674F18()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  *(v0 + 16) = 0x4024000000000000;
  *(v0 + 24) = 0;
  return 10.0;
}

double sub_100674F3C()
{
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  *v0 = 0x4053800000000000;
  v0[8] = 0;
  return 78.0;
}

void sub_100674F68(uint64_t *a1)
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100309288();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_10067633C(v6);
  *a1 = v3;
}

uint64_t sub_100675010()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___preset;
  v3 = *(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___preset);
  v4 = v3;
  if (v3 == 1)
  {
    type metadata accessor for Preset();
    swift_allocObject();
    v4 = Preset.init(extends:apply:)();
    v5 = *(v1 + v2);
    *(v1 + v2) = v4;

    sub_10002CD5C(v5);
  }

  sub_10065F6B4(v3);
  return v4;
}

uint64_t sub_1006750B8(uint64_t a1)
{
  v1 = URL.lastPathComponent.getter();
  v3 = v2;
  if (v1 == URL.lastPathComponent.getter() && v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

void sub_100675150(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CCF250, &qword_100A704C8);
  __chkstk_darwin(v3 - 8);
  sub_100003C38();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v12[-v8];
  v10 = OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___locations;
  swift_beginAccess();
  sub_1000302D8(v1 + v10, v9, &qword_100CCF250, &qword_100A704C8);
  v11 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  if (sub_100024D10(v9, 1, v11) == 1)
  {
    sub_1000180EC(v9, &qword_100CCF250, &qword_100A704C8);
    sub_10067530C(a1);
    sub_1000302D8(a1, v6, &qword_100CA6630, &unk_100A32630);
    sub_10001B350(v6, 0, 1, v11);
    swift_beginAccess();
    sub_10053347C(v6, v1 + v10, &qword_100CCF250, &qword_100A704C8);
    swift_endAccess();
  }

  else
  {
    sub_10011C0F0(v9, a1, &qword_100CA6630, &unk_100A32630);
  }
}

uint64_t sub_10067530C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PresetAppState(0);
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CB1B20, &unk_100A42150);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  sub_10067549C(&v11 - v6);
  if (sub_100024D10(v7, 1, v2))
  {
    sub_1000180EC(v7, &qword_100CB1B20, &unk_100A42150);
    v8 = 1;
  }

  else
  {
    sub_100677950(v7, v4, type metadata accessor for PresetAppState);
    sub_1000180EC(v7, &qword_100CB1B20, &unk_100A42150);
    sub_100677950(&v4[*(v2 + 20)], a1, type metadata accessor for LocationsState);
    sub_1003997B0(v4);
    v8 = 0;
  }

  v9 = type metadata accessor for LocationsState(0);
  return sub_10001B350(a1, v8, 1, v9);
}

void sub_10067549C(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CCFE88, &unk_100A73BF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  v9 = OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___loadedData;
  swift_beginAccess();
  sub_1000302D8(v1 + v9, v8, &qword_100CCFE88, &unk_100A73BF0);
  v10 = sub_10022C350(&qword_100CB1B20, &unk_100A42150);
  if (sub_100024D10(v8, 1, v10) == 1)
  {
    sub_1000180EC(v8, &qword_100CCFE88, &unk_100A73BF0);
    sub_100675E90(v1, a1);
    sub_1000302D8(a1, v5, &qword_100CB1B20, &unk_100A42150);
    sub_10001B350(v5, 0, 1, v10);
    swift_beginAccess();
    sub_10053347C(v5, v1 + v9, &qword_100CCFE88, &unk_100A73BF0);
    swift_endAccess();
  }

  else
  {
    sub_10011C0F0(v8, a1, &qword_100CB1B20, &unk_100A42150);
  }
}

uint64_t sub_100675694@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v35 = type metadata accessor for PresetAppState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v34 = v5 - v4;
  v6 = sub_10022C350(&qword_100CB1B20, &unk_100A42150);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  type metadata accessor for Date();
  sub_1000037C4();
  v37 = v10;
  v38 = v9;
  __chkstk_darwin(v9);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v36 = &v34 - v15;
  v16 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  sub_1000037E8();
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v20 = sub_10022C350(&qword_100CCF248, &qword_100A704C0);
  __chkstk_darwin(v20 - 8);
  sub_100003C38();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = &v34 - v25;
  v27 = OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___timeState;
  swift_beginAccess();
  sub_1000302D8(v2 + v27, v26, &qword_100CCF248, &qword_100A704C0);
  if (sub_100024D10(v26, 1, v16) == 1)
  {
    sub_1000180EC(v26, &qword_100CCF248, &qword_100A704C0);
    sub_10067549C(v8);
    if (sub_100024D10(v8, 1, v35))
    {
      sub_1000180EC(v8, &qword_100CB1B20, &unk_100A42150);
      static WeatherClock.date.getter();
      Date.timeIntervalSince1970.getter();
      v29 = v37;
      v28 = v38;
      (*(v37 + 8))(v13, v38);
    }

    else
    {
      v30 = v34;
      sub_100677950(v8, v34, type metadata accessor for PresetAppState);
      sub_1000180EC(v8, &qword_100CB1B20, &unk_100A42150);
      sub_1003997B0(v30);
      v29 = v37;
      v28 = v38;
    }

    v31 = v36;
    Date.init(timeIntervalSinceReferenceDate:)();
    (*(v29 + 32))(v19, v31, v28);
    v32 = type metadata accessor for TimeState(0);
    sub_10001B350(v19, 0, 1, v32);
    sub_1000302D8(v19, v23, &qword_100CA6618, &unk_100A31440);
    sub_10001B350(v23, 0, 1, v16);
    swift_beginAccess();
    sub_10053347C(v23, v2 + v27, &qword_100CCF248, &qword_100A704C0);
    swift_endAccess();
  }

  else
  {
    v19 = v26;
  }

  return sub_10011C0F0(v19, v39, &qword_100CA6618, &unk_100A31440);
}

uint64_t sub_100675AA4()
{
  v1 = (v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___weatherDataState);
  v2 = *(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___weatherDataState);
  v3 = *(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___weatherDataState + 16);
  v4 = *(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___weatherDataState + 24);
  if (*(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___weatherDataState + 8) == 1)
  {
    v2 = sub_100675B78();
    v5 = v1[1];
    v12 = *v1;
    *v1 = v2;
    v1[1] = v6;
    v1[2] = v7;
    v1[3] = v8;
    sub_1000D3B68(v2, v6, v7, v8);
    sub_1000425D8(v12, v5);
  }

  v9 = sub_100003940();
  sub_10065F714(v9, v10, v3, v4);
  return v2;
}

uint64_t sub_100675B78()
{
  v0 = sub_10022C350(&qword_100CB1B20, &unk_100A42150);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  sub_10067549C(&v6 - v1);
  v3 = type metadata accessor for PresetAppState(0);
  v4 = 0;
  if (!sub_100024D10(v2, 1, v3))
  {
    v4 = *&v2[*(v3 + 24)];
  }

  sub_1000180EC(v2, &qword_100CB1B20, &unk_100A42150);
  return v4;
}

uint64_t sub_100675C80(void *a1)
{
  v2 = type metadata accessor for WeatherMapOverlayServiceSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000161C0(a1, a1[3]);
  static Settings.Maps.source.getter();
  (*(v3 + 104))(v5, enum case for WeatherMapOverlayServiceSource.staging(_:), v2);
  sub_1006762E4();
  dispatch thunk of PresetApplicatorType.set<A>(_:to:)();

  (*(v3 + 8))(v5, v2);
  sub_1000161C0(a1, a1[3]);
  static Settings.Maps.showDebugConsole.getter();
  v7[15] = 0;
  dispatch thunk of PresetApplicatorType.set<A>(_:to:)();

  static Settings.Maps.overrides.getter();
  dispatch thunk of SettingGroup.setEnabled(_:)();

  sub_1000161C0(a1, a1[3]);
  if (qword_100CA2470 != -1)
  {
    swift_once();
  }

  v7[14] = 1;
  return dispatch thunk of PresetApplicatorType.set<A>(_:to:)();
}

uint64_t sub_100675E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100044004();
  v17 = *(a1 + 24);
  v22 = *(a1 + 16);
  v23 = v17;
  (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  sub_10002D5A4();

  URL.appending<A>(path:directoryHint:)();
  (*(v4 + 8))(v6, v3);

  v18 = *(v8 + 8);
  v18(v10, v7);
  URL.appendingPathExtension(_:)();
  v18(v13, v7);
  (*(v8 + 16))(v13, v16, v7);
  sub_10051D67C(v13, v21);
  return (v18)(v16, v7);
}

uint64_t sub_100676118()
{

  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___locations, &qword_100CCF250, &qword_100A704C8);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___timeState, &qword_100CCF248, &qword_100A704C0);
  sub_1000425D8(*(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___weatherDataState), *(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___weatherDataState + 8));
  sub_10002CD5C(*(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___preset));
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___loadedData, &qword_100CCFE88, &unk_100A73BF0);
  return v0;
}

uint64_t sub_1006761C0()
{
  sub_100676118();

  return swift_deallocClassInstance();
}

uint64_t sub_100676220()
{
  v1 = *(*v0 + 16);

  return v1;
}

unint64_t sub_1006762E4()
{
  result = qword_100CCFE80;
  if (!qword_100CCFE80)
  {
    v3 = type metadata accessor for WeatherMapOverlayServiceSource();
    result = swift_getWitnessTable(&protocol conformance descriptor for WeatherMapOverlayServiceSource, v3, v0, v1);
    atomic_store(result, &qword_100CCFE80);
  }

  return result;
}

void sub_10067633C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for URL();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for URL() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10067678C(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10067646C(0, v2, 1, a1);
  }
}

void sub_10067646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for URL();
  __chkstk_darwin(v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14.n128_f64[0] = __chkstk_darwin(v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v13;
    v18 = *a4;
    v20 = *(v12 + 16);
    v19 = v12 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = (v18 + v21 * (a3 - 1));
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        (v52)(v16, v24, v8, v14);
        v26(v17, v25, v8);
        v27 = URL.lastPathComponent.getter();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == URL.lastPathComponent.getter() && v31 == v32)
        {
          break;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v35 = *v51;
        (*v51)(v29, v8);
        v35(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          v36(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      v39(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = &v45[v41];
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }
}

void sub_10067678C(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v149 = a1;
  v8 = type metadata accessor for URL();
  __chkstk_darwin(v8);
  v154 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v167 = &v145 - v11;
  __chkstk_darwin(v12);
  v14 = &v145 - v13;
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v163 = &v145 - v17;
  __chkstk_darwin(v18);
  v162 = &v145 - v19;
  __chkstk_darwin(v20);
  v26.n128_f64[0] = __chkstk_darwin(v21);
  v27 = &v145 - v22;
  v160 = v23;
  v161 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_114:
    v172 = *v149;
    if (!v172)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v168 = v24;
  v145 = a4;
  v29 = 0;
  v172 = v23 + 16;
  v170 = (v23 + 32);
  v171 = (v23 + 8);
  v30 = _swiftEmptyArrayStorage;
  v164 = v8;
  v156 = v14;
  v146 = v25;
  v148 = &v145 - v22;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v151 = v29;
    if (v29 + 1 < v28)
    {
      v166 = v28;
      v147 = v30;
      v33 = v27;
      v34 = *v161;
      v35 = *(v23 + 72);
      v36 = v25;
      v159 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v23 + 16);
      v39(v33, v38, v8, v26);
      v40 = &v34[v35 * v37];
      v41 = v148;
      v158 = v39;
      (v39)(v36, v40, v8);
      LODWORD(v165) = sub_1006750B8(v41);
      if (v5)
      {
        v144 = *v171;
        (*v171)(v36, v8);
        (v144)(v41, v8);
LABEL_124:

        return;
      }

      v150 = 0;
      v42 = *v171;
      (*v171)(v36, v8);
      v157 = v42;
      (v42)(v41, v8);
      v43 = v151 + 2;
      v44 = &v34[v35 * (v151 + 2)];
      v32 = v159;
      v45 = v35;
      v169 = v35;
      v46 = v166;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v164;
        v5 = v158;
        (v158)(v162, v44, v164);
        v5(v163, v38, v49);
        v50 = URL.lastPathComponent.getter();
        v52 = v51;
        if (v50 == URL.lastPathComponent.getter() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v56 = v164;
        v57 = v157;
        (v157)(v163, v164);
        v57(v162, v56);
        v45 = v169;
        v44 += v169;
        v38 += v169;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v166;
        if ((v165 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v165)
      {
        v31 = v151;
        if (v32 < v151)
        {
          goto LABEL_149;
        }

        v5 = v150;
        if (v151 >= v32)
        {
          v23 = v160;
          v30 = v147;
          v8 = v164;
          v14 = v156;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v58 = v47;
        }

        else
        {
          v58 = v46;
        }

        v59 = v45 * (v58 - 1);
        v60 = v45 * v58;
        v61 = v151;
        v62 = v151 * v45;
        v63 = v32;
        do
        {
          if (v61 != --v63)
          {
            v64 = *v161;
            if (!*v161)
            {
              goto LABEL_154;
            }

            v65 = v164;
            v166 = *v170;
            v166(v154, &v64[v62], v164);
            v66 = v62 < v59 || &v64[v62] >= &v64[v60];
            if (v66)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v62 != v59)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v166(&v64[v59], v154, v65);
            v5 = v150;
            v45 = v169;
          }

          ++v61;
          v59 -= v45;
          v60 -= v45;
          v62 += v45;
        }

        while (v61 < v63);
      }

      else
      {
        v5 = v150;
      }

      v23 = v160;
      v30 = v147;
      v8 = v164;
      v14 = v156;
      v31 = v151;
    }

LABEL_39:
    v67 = v161[1];
    if (v32 < v67)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v145)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10011E564();
      v30 = v134;
    }

    v90 = *(v30 + 2);
    v89 = *(v30 + 3);
    v91 = v90 + 1;
    v159 = v32;
    if (v90 >= v89 >> 1)
    {
      sub_10011E564();
      v30 = v135;
    }

    *(v30 + 2) = v91;
    v92 = v30 + 32;
    v93 = &v30[16 * v90 + 32];
    v94 = v159;
    *v93 = v151;
    *(v93 + 1) = v94;
    v169 = *v149;
    if (!v169)
    {
      goto LABEL_155;
    }

    if (v90)
    {
      while (1)
      {
        v95 = v91 - 1;
        v96 = &v92[16 * v91 - 16];
        v97 = &v30[16 * v91];
        if (v91 >= 4)
        {
          break;
        }

        if (v91 == 3)
        {
          v98 = *(v30 + 4);
          v99 = *(v30 + 5);
          v108 = __OFSUB__(v99, v98);
          v100 = v99 - v98;
          v101 = v108;
LABEL_82:
          if (v101)
          {
            goto LABEL_132;
          }

          v113 = *v97;
          v112 = *(v97 + 1);
          v114 = __OFSUB__(v112, v113);
          v115 = v112 - v113;
          v116 = v114;
          if (v114)
          {
            goto LABEL_135;
          }

          v117 = *(v96 + 1);
          v118 = v117 - *v96;
          if (__OFSUB__(v117, *v96))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v115, v118))
          {
            goto LABEL_140;
          }

          if (v115 + v118 >= v100)
          {
            if (v100 < v118)
            {
              v95 = v91 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v91 < 2)
        {
          goto LABEL_134;
        }

        v120 = *v97;
        v119 = *(v97 + 1);
        v108 = __OFSUB__(v119, v120);
        v115 = v119 - v120;
        v116 = v108;
LABEL_97:
        if (v116)
        {
          goto LABEL_137;
        }

        v122 = *v96;
        v121 = *(v96 + 1);
        v108 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v108)
        {
          goto LABEL_139;
        }

        if (v123 < v115)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v95 - 1 >= v91)
        {
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
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
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v161)
        {
          goto LABEL_152;
        }

        v127 = v30;
        v128 = &v92[16 * v95 - 16];
        v129 = *v128;
        v130 = &v92[16 * v95];
        v131 = *(v130 + 1);
        sub_100677348(&(*v161)[*(v160 + 72) * *v128], &(*v161)[*(v160 + 72) * *v130], &(*v161)[*(v160 + 72) * v131], v169);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v131 < v129)
        {
          goto LABEL_127;
        }

        v132 = *(v127 + 2);
        if (v95 > v132)
        {
          goto LABEL_128;
        }

        *v128 = v129;
        *(v128 + 1) = v131;
        if (v95 >= v132)
        {
          goto LABEL_129;
        }

        v91 = v132 - 1;
        sub_1003090FC(v130 + 16, v132 - 1 - v95, &v92[16 * v95]);
        v30 = v127;
        *(v127 + 2) = v132 - 1;
        v133 = v132 > 2;
        v14 = v156;
        if (!v133)
        {
          goto LABEL_111;
        }
      }

      v102 = &v92[16 * v91];
      v103 = *(v102 - 8);
      v104 = *(v102 - 7);
      v108 = __OFSUB__(v104, v103);
      v105 = v104 - v103;
      if (v108)
      {
        goto LABEL_130;
      }

      v107 = *(v102 - 6);
      v106 = *(v102 - 5);
      v108 = __OFSUB__(v106, v107);
      v100 = v106 - v107;
      v101 = v108;
      if (v108)
      {
        goto LABEL_131;
      }

      v109 = *(v97 + 1);
      v110 = v109 - *v97;
      if (__OFSUB__(v109, *v97))
      {
        goto LABEL_133;
      }

      v108 = __OFADD__(v100, v110);
      v111 = v100 + v110;
      if (v108)
      {
        goto LABEL_136;
      }

      if (v111 >= v105)
      {
        v125 = *v96;
        v124 = *(v96 + 1);
        v108 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v108)
        {
          goto LABEL_144;
        }

        if (v100 < v126)
        {
          v95 = v91 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v160;
    v28 = v161[1];
    v29 = v159;
    v8 = v164;
    v25 = v146;
    v27 = v148;
    if (v159 >= v28)
    {
      goto LABEL_114;
    }
  }

  v68 = (v31 + v145);
  if (__OFADD__(v31, v145))
  {
    goto LABEL_147;
  }

  if (v68 >= v67)
  {
    v68 = v161[1];
  }

  if (v68 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_100308E24();
LABEL_116:
    v136 = v30 + 16;
    v137 = *(v30 + 2);
    while (v137 >= 2)
    {
      if (!*v161)
      {
        goto LABEL_153;
      }

      v138 = v30;
      v139 = &v30[16 * v137];
      v140 = *v139;
      v141 = &v136[2 * v137];
      v142 = *(v141 + 1);
      sub_100677348(&(*v161)[*(v160 + 72) * *v139], &(*v161)[*(v160 + 72) * *v141], &(*v161)[*(v160 + 72) * v142], v172);
      if (v5)
      {
        break;
      }

      if (v142 < v140)
      {
        goto LABEL_141;
      }

      if (v137 - 2 >= *v136)
      {
        goto LABEL_142;
      }

      *v139 = v140;
      *(v139 + 1) = v142;
      v143 = *v136 - v137;
      if (*v136 < v137)
      {
        goto LABEL_143;
      }

      v137 = *v136 - 1;
      sub_1003090FC(v141 + 16, v143, v141);
      *v136 = v137;
      v30 = v138;
    }

    goto LABEL_124;
  }

  if (v32 == v68)
  {
    goto LABEL_62;
  }

  v147 = v30;
  v150 = v5;
  v69 = *v161;
  v70 = *(v23 + 72);
  v169 = *(v23 + 16);
  v71 = &v69[v70 * (v32 - 1)];
  v165 = -v70;
  v166 = v69;
  v72 = (v31 - v32);
  v152 = v70;
  v153 = v68;
  v73 = &v69[v32 * v70];
  v74 = v168;
LABEL_48:
  v158 = v71;
  v159 = v32;
  v155 = v73;
  v157 = v72;
  while (1)
  {
    v75 = v169;
    (v169)(v74, v73, v8);
    v75(v14, v71, v8);
    v76 = v14;
    v77 = URL.lastPathComponent.getter();
    v78 = v8;
    v80 = v79;
    if (v77 == URL.lastPathComponent.getter() && v80 == v81)
    {

      v88 = *v171;
      (*v171)(v76, v78);
      (v88)(v74, v78);
      v8 = v78;
      v14 = v76;
      goto LABEL_60;
    }

    v83 = v74;
    v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v85 = *v171;
    (*v171)(v76, v78);
    (v85)(v83, v78);
    v8 = v78;
    v14 = v76;
    if ((v84 & 1) == 0)
    {
      v74 = v168;
LABEL_60:
      v32 = v159 + 1;
      v71 = &v158[v152];
      v72 = v157 - 1;
      v73 = &v155[v152];
      if ((v159 + 1) == v153)
      {
        v32 = v153;
        v5 = v150;
        v30 = v147;
        v31 = v151;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v166)
    {
      break;
    }

    v86 = *v170;
    v87 = v167;
    (*v170)(v167, v73, v78);
    swift_arrayInitWithTakeFrontToBack();
    v86(v71, v87, v78);
    v71 += v165;
    v73 += v165;
    v66 = __CFADD__(v72++, 1);
    v74 = v168;
    if (v66)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void sub_100677348(char *a1, unint64_t a2, char *a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  __chkstk_darwin(v8);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = &v63 - v11;
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  __chkstk_darwin(v15);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_72;
  }

  v21 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v23 = (a2 - a1) / v19;
  v76 = a1;
  v75 = a4;
  v71 = (v16 + 8);
  v72 = (v16 + 16);
  v24 = v21 / v19;
  if (v23 < v21 / v19)
  {
    v67 = &v63 - v17;
    v69 = v14;
    sub_1006A07A4(a1, (a2 - a1) / v19, a4);
    v70 = (a4 + v23 * v19);
    v74 = v70;
    v25 = a4;
    v26 = v19;
    v66 = v8;
    v68 = a3;
    while (1)
    {
      if (v25 >= v70 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v28 = a1;
      v29 = *v72;
      v30 = v67;
      v31 = a2;
      (*v72)(v67, a2, v8);
      v73 = v25;
      v32 = v69;
      v29();
      v33 = URL.lastPathComponent.getter();
      v35 = v34;
      if (v33 == URL.lastPathComponent.getter() && v35 == v36)
      {

        v43 = *v71;
        (*v71)(v32, v8);
        v43(v30, v8);
      }

      else
      {
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v39 = *v71;
        (*v71)(v32, v8);
        v39(v30, v8);
        if (v38)
        {
          v40 = v31;
          a2 = v31 + v26;
          v41 = v28;
          if (v28 < v31 || v28 >= a2)
          {
            v8 = v66;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v68;
          }

          else
          {
            a3 = v68;
            v8 = v66;
            if (v28 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v73;
          goto LABEL_40;
        }
      }

      v25 = v73 + v26;
      v41 = v28;
      v44 = v28 < v73 || v28 >= v25;
      a2 = v31;
      if (v44)
      {
        v8 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v68;
      }

      else
      {
        a3 = v68;
        v8 = v66;
        if (v28 != v73)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v75 = v25;
LABEL_40:
      a1 = (v41 + v26);
      v76 = a1;
    }
  }

  sub_1006A07A4(a2, v21 / v19, a4);
  v73 = a4;
  v45 = a4 + v24 * v19;
  v46 = -v19;
  v47 = v45;
  v67 = -v19;
LABEL_42:
  v68 = a2;
  v66 = a2 + v46;
  v48 = a3;
  v64 = v47;
  while (1)
  {
    if (v45 <= v73)
    {
      v76 = v68;
      v74 = v47;
      goto LABEL_70;
    }

    if (v68 <= a1)
    {
      break;
    }

    v65 = v47;
    v49 = v45 + v46;
    v50 = *v72;
    (*v72)(v69, v45 + v46, v8);
    (v50)(v70, v66, v8);
    v51 = URL.lastPathComponent.getter();
    v53 = v52;
    if (v51 == URL.lastPathComponent.getter() && v53 == v54)
    {
      v56 = 0;
    }

    else
    {
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v57 = &v48[v67];
    v58 = *v71;
    (*v71)(v70, v8);
    v58(v69, v8);
    if (v56)
    {
      v60 = v48 < v68 || v57 >= v68;
      a3 = v57;
      if (v60)
      {
        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        v47 = v65;
        v46 = v67;
      }

      else
      {
        v62 = v65;
        v61 = v66;
        v47 = v65;
        v20 = v48 == v68;
        a2 = v66;
        v46 = v67;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v61;
          v47 = v62;
        }
      }

      goto LABEL_42;
    }

    if (v48 < v45 || v57 >= v45)
    {
      swift_arrayInitWithTakeFrontToBack();
      v48 = v57;
      v45 = v49;
      v47 = v49;
      v46 = v67;
    }

    else
    {
      v47 = v49;
      v20 = v45 == v48;
      v48 = v57;
      v45 = v49;
      v46 = v67;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v48 = v57;
        v45 = v49;
        v47 = v49;
      }
    }
  }

  v76 = v68;
  v74 = v64;
LABEL_70:
  sub_100308F2C(&v76, &v75, &v74);
}

uint64_t sub_100677950(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1006779AC(uint64_t a1)
{
  v3 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  sub_1006559C8(a1, v5);
  type metadata accessor for MoonDetailViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v5, v9, v7, v6);
  sub_1000E17D8(v9);
  return sub_1000547B8(v5);
}

double sub_100677ABC@<D0>(_OWORD *a1@<X8>)
{
  sub_10002F7A8();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_100677B04@<D0>(_OWORD *a1@<X8>)
{
  result = sub_100677ABC(v5);
  if (!v1)
  {
    v4 = v5[1];
    *a1 = v5[0];
    a1[1] = v4;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100677B48(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMetadata();
  v11 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  Forecast.forecast.getter();
  type metadata accessor for HourWeather();
  sub_10068280C(&qword_100CD00F8, &type metadata accessor for HourWeather, protocol conformance descriptor for HourWeather);
  sub_10068280C(&qword_100CD0100, &type metadata accessor for HourWeather, protocol conformance descriptor for HourWeather);
  Array<A>.write(to:)();

  if (!v1)
  {
    v9 = v4;
    v10 = v2;
    v12 = Forecast.minuteSummary.getter();
    v13 = v6;
    sub_10022C350(&qword_100CA6078, &unk_100A30870);
    Optional<A>.write(to:)();

    v12 = Forecast.minuteConditions.getter();
    sub_10022C350(&qword_100CCFF38, &qword_100A73C78);
    sub_100678390();
    sub_100678478();
    Optional<A>.write(to:)();

    v12 = Forecast.minuteSummaries.getter();
    sub_10022C350(&qword_100CCFF68, &qword_100A73C88);
    sub_100678560();
    sub_100678648();
    Optional<A>.write(to:)();

    v7 = v9;
    Forecast.metadata.getter();
    WeatherMetadata.write(to:)();
    return (*(v11 + 8))(v7, v10);
  }

  return result;
}

uint64_t sub_100677E40(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMetadata();
  v11 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  Forecast.forecast.getter();
  type metadata accessor for DayWeather();
  sub_10068280C(&qword_100CD00E8, &type metadata accessor for DayWeather, protocol conformance descriptor for DayWeather);
  sub_10068280C(&qword_100CD00F0, &type metadata accessor for DayWeather, protocol conformance descriptor for DayWeather);
  Array<A>.write(to:)();

  if (!v1)
  {
    v9 = v4;
    v10 = v2;
    v12 = Forecast.minuteSummary.getter();
    v13 = v6;
    sub_10022C350(&qword_100CA6078, &unk_100A30870);
    Optional<A>.write(to:)();

    v12 = Forecast.minuteConditions.getter();
    sub_10022C350(&qword_100CCFF38, &qword_100A73C78);
    sub_100678390();
    sub_100678478();
    Optional<A>.write(to:)();

    v12 = Forecast.minuteSummaries.getter();
    sub_10022C350(&qword_100CCFF68, &qword_100A73C88);
    sub_100678560();
    sub_100678648();
    Optional<A>.write(to:)();

    v7 = v9;
    Forecast.metadata.getter();
    WeatherMetadata.write(to:)();
    return (*(v11 + 8))(v7, v10);
  }

  return result;
}

void Forecast<>.write(to:)()
{
  sub_10000E8AC();
  type metadata accessor for WeatherMetadata();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  Forecast.forecast.getter();
  Array<A>.write(to:)();

  if (!v0)
  {
    Forecast.minuteSummary.getter();
    sub_10022C350(&qword_100CA6078, &unk_100A30870);
    Optional<A>.write(to:)();

    Forecast.minuteConditions.getter();
    sub_10022C350(&qword_100CCFF38, &qword_100A73C78);
    sub_100678390();
    sub_100678478();
    sub_1000046B4();
    Optional<A>.write(to:)();

    Forecast.minuteSummaries.getter();
    sub_10022C350(&qword_100CCFF68, &qword_100A73C88);
    sub_100678560();
    sub_100678648();
    sub_1000046B4();
    Optional<A>.write(to:)();

    Forecast.metadata.getter();
    WeatherMetadata.write(to:)();
    v2 = sub_100037B8C();
    v3(v2);
  }

  sub_10000C8F4();
}

unint64_t sub_100678390()
{
  result = qword_100CCFF40;
  if (!qword_100CCFF40)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CCFF48, &qword_100A73C80);
    v4[0] = sub_10068280C(&qword_100CCFF50, &type metadata accessor for MinuteCondition, protocol conformance descriptor for MinuteCondition);
    v4[1] = sub_10068280C(&qword_100CCFF58, &type metadata accessor for MinuteCondition, protocol conformance descriptor for MinuteCondition);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CCFF40);
  }

  return result;
}

unint64_t sub_100678478()
{
  result = qword_100CCFF60;
  if (!qword_100CCFF60)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CCFF48, &qword_100A73C80);
    v4[0] = sub_10068280C(&qword_100CCFF50, &type metadata accessor for MinuteCondition, protocol conformance descriptor for MinuteCondition);
    v4[1] = sub_10068280C(&qword_100CCFF58, &type metadata accessor for MinuteCondition, protocol conformance descriptor for MinuteCondition);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CCFF60);
  }

  return result;
}

unint64_t sub_100678560()
{
  result = qword_100CCFF70;
  if (!qword_100CCFF70)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CCFF78, &qword_100A73C90);
    v4[0] = sub_10068280C(&qword_100CCFF80, &type metadata accessor for MinuteSummary, protocol conformance descriptor for MinuteSummary);
    v4[1] = sub_10068280C(&qword_100CCFF88, &type metadata accessor for MinuteSummary, protocol conformance descriptor for MinuteSummary);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CCFF70);
  }

  return result;
}

unint64_t sub_100678648()
{
  result = qword_100CCFF90;
  if (!qword_100CCFF90)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CCFF78, &qword_100A73C90);
    v4[0] = sub_10068280C(&qword_100CCFF80, &type metadata accessor for MinuteSummary, protocol conformance descriptor for MinuteSummary);
    v4[1] = sub_10068280C(&qword_100CCFF88, &type metadata accessor for MinuteSummary, protocol conformance descriptor for MinuteSummary);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CCFF90);
  }

  return result;
}

uint64_t sub_100678730(uint64_t a1)
{
  v3 = type metadata accessor for WeatherMetadata();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for HourWeather();
  sub_10068280C(&qword_100CD00F8, &type metadata accessor for HourWeather, protocol conformance descriptor for HourWeather);
  sub_10068280C(&qword_100CD0100, &type metadata accessor for HourWeather, protocol conformance descriptor for HourWeather);
  result = static Array<A>.read(from:)();
  if (!v1)
  {
    static Optional<A>.read(from:)();
    sub_10022C350(&qword_100CCFF48, &qword_100A73C80);
    sub_100678390();
    sub_100678478();
    static Optional<A>.read(from:)();
    sub_10022C350(&qword_100CCFF78, &qword_100A73C90);
    sub_100678560();
    sub_100678648();
    static Optional<A>.read(from:)();
    static WeatherMetadata.read(from:)(a1, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, *&v25, v24, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    sub_10068280C(&qword_100CB0C20, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
    sub_10068280C(&qword_100CB0C28, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
    sub_10068280C(&qword_100CB0C30, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
    return Forecast.init(_:minuteSummary:minuteConditions:minuteSummaries:metadata:)();
  }

  return result;
}

uint64_t sub_100678A58(uint64_t a1)
{
  v3 = type metadata accessor for WeatherMetadata();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for DayWeather();
  sub_10068280C(&qword_100CD00E8, &type metadata accessor for DayWeather, protocol conformance descriptor for DayWeather);
  sub_10068280C(&qword_100CD00F0, &type metadata accessor for DayWeather, protocol conformance descriptor for DayWeather);
  result = static Array<A>.read(from:)();
  if (!v1)
  {
    static Optional<A>.read(from:)();
    sub_10022C350(&qword_100CCFF48, &qword_100A73C80);
    sub_100678390();
    sub_100678478();
    static Optional<A>.read(from:)();
    sub_10022C350(&qword_100CCFF78, &qword_100A73C90);
    sub_100678560();
    sub_100678648();
    static Optional<A>.read(from:)();
    static WeatherMetadata.read(from:)(a1, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, *&v25, v24, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    sub_10068280C(&qword_100CB0C50, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
    sub_10068280C(&qword_100CB0C58, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
    sub_10068280C(&qword_100CB0C60, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
    return Forecast.init(_:minuteSummary:minuteConditions:minuteSummaries:metadata:)();
  }

  return result;
}

void Trend<>.write(to:)()
{
  sub_10000E8AC();
  v3 = v2;
  v33 = v4;
  v6 = v5;
  v8 = v7;
  type metadata accessor for Deviation();
  sub_1000037C4();
  v29[1] = v9;
  v29[2] = v10;
  __chkstk_darwin(v9);
  sub_1000038E4();
  v29[0] = v11;
  type metadata accessor for Measurement();
  sub_1000037C4();
  v29[3] = v13;
  v30 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  v15 = type metadata accessor for TrendBaseline();
  sub_1000037C4();
  v17 = v16;
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = v29 - v19;
  v31 = v0;
  v32 = v6;
  Trend.baseline.getter();
  v21 = v3;
  TrendBaseline<>.write(to:)();
  (*(v17 + 8))(v20, v15);
  if (!v1)
  {
    Trend.currentValue.getter();
    v22 = v30;
    Measurement<>.write(to:)(v8, v30, v23, v21);
    v24 = sub_100037B8C();
    v25(v24, v22);
    Trend.deviation.getter();
    Deviation.write(to:)();
    v26 = sub_100037B8C();
    v28(v26, v27);
  }

  sub_1000AF600();
  sub_10000C8F4();
}

void TrendBaseline<>.write(to:)()
{
  sub_10000E8AC();
  v21 = v3;
  v5 = v4;
  type metadata accessor for Date();
  sub_1000037C4();
  v18 = v6;
  v19 = v7;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v17 = v8;
  sub_1001200F8();
  type metadata accessor for Measurement();
  sub_1000037C4();
  v20 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000871C0();
  sub_1001200F8();
  v11 = type metadata accessor for TrendBaseline.Kind();
  sub_1000037C4();
  v13 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_100021D38();
  TrendBaseline.kind.getter();
  TrendBaseline.Kind<>.write(to:)(v5, v11);
  (*(v13 + 8))(v1, v11);
  if (!v0)
  {
    TrendBaseline.value.getter();
    Measurement<>.write(to:)(v5, v20, v15, v21);
    sub_100014A24();
    v16(v2, v20);
    TrendBaseline.startDate.getter();
    Date.write(to:)();
    (*(v19 + 8))(v17, v18);
  }

  sub_1000AF600();
  sub_10000C8F4();
}

void Measurement<>.write(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Measurement.value.getter();
  FixedSizeTypeBinaryCodable.write(to:)();
  if (!v4)
  {
    v5 = Measurement.unit.getter();
    dispatch thunk of BinaryEncodable.write(to:)();
  }
}

void static Trend<>.read(from:)()
{
  sub_10000E8AC();
  v2 = v1;
  sub_100003A00();
  v3 = type metadata accessor for Deviation();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for Measurement();
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10003038C();
  sub_1001200F8();
  type metadata accessor for TrendBaseline();
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100021D38();
  static TrendBaseline<>.read(from:)();
  if (!v0)
  {
    v7 = sub_1000046B4();
    static Measurement<>.read(from:)(v7, v8, v2);
    static Deviation.read(from:)(0);
    Trend.init(baseline:currentValue:deviation:)();
  }

  sub_10000C8F4();
}

void static TrendBaseline<>.read(from:)()
{
  sub_10000E8AC();
  v10 = v1;
  v2 = type metadata accessor for Date();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_1001200F8();
  type metadata accessor for Measurement();
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000183C0();
  sub_1001200F8();
  type metadata accessor for TrendBaseline.Kind();
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10001365C();
  v6 = sub_1000046B4();
  static TrendBaseline.Kind<>.read(from:)(v6, v7);
  if (!v0)
  {
    v8 = sub_1000046B4();
    static Measurement<>.read(from:)(v8, v9, v10);
    static Date.read(from:)();
    TrendBaseline.init(kind:value:startDate:)();
  }

  sub_1000AF600();
  sub_10000C8F4();
}

uint64_t static Measurement<>.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v3)
  {
    dispatch thunk of static BinaryDecodable.read(from:)();
    return Measurement.init(value:unit:)();
  }

  return result;
}

uint64_t TrendBaseline.Kind<>.write(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a2, v4);
  if ((*(v3 + 88))(v6, a2) == enum case for TrendBaseline.Kind.mean<A>(_:))
  {
    v14 = 1;
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    v9 = type metadata accessor for BinaryDecoder.Error();
    sub_10001F4A0();
    sub_10068280C(v10, v11, &protocol conformance descriptor for BinaryDecoder.Error);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v12, enum case for BinaryDecoder.Error.valueNotSupported(_:), v9);
    swift_willThrow();
    return (*(v3 + 8))(v6, a2);
  }
}

uint64_t static TrendBaseline.Kind<>.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000526D4(a1);
  if (!v2)
  {
    sub_100051AC0();
    if (v5)
    {
      v6 = enum case for TrendBaseline.Kind.mean<A>(_:);
      type metadata accessor for TrendBaseline.Kind();
      sub_1000037E8();
      return (*(v7 + 104))(a2, v6);
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      v10 = sub_10068280C(v8, v9, &protocol conformance descriptor for BinaryDecoder.Error);
      v11 = sub_100074D7C(v10);
      sub_10002C964(v11, v12);
      sub_100006494();
      (*(v13 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

void DailyWeatherSummary<>.write(to:)()
{
  sub_10000E8AC();
  type metadata accessor for WeatherMetadata();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000106FC();
  DailyWeatherSummary.days.getter();
  Array<A>.write(to:)();

  if (!v0)
  {
    DailyWeatherSummary.metadata.getter();
    sub_1000437C8();
    WeatherMetadata.write(to:)();
    v2 = sub_1000215E0();
    v3(v2);
  }

  sub_1000C8EF8();
  sub_10000C8F4();
}

void sub_10067A230()
{
  sub_10000E8AC();
  v15 = v2;
  v17 = v3;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for WeatherMetadata();
  sub_1000037C4();
  v16 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  sub_1000871C0();
  v11 = type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v5(v7);
  Array<A>.write(to:)();

  if (!v0)
  {
    v17(v7);
    Date.write(to:)();
    v13 = sub_100037B8C();
    v14(v13, v11);
    v15(v7);
    WeatherMetadata.write(to:)();
    (*(v16 + 8))(v1, v8);
  }

  sub_1000AF600();
  sub_10000C8F4();
}

void Percentiles<>.write(to:)()
{
  sub_10000E8AC();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Measurement();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100003C38();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  sub_100020104();
  __chkstk_darwin(v12);
  Percentiles.p10.getter();
  Measurement<>.write(to:)(v5, v6, v13, v3);
  v14 = sub_1000046B4();
  if (v0)
  {
    v16(v14, v15);
  }

  else
  {
    v23 = v16;
    (v16)(v14);
    Percentiles.p50.getter();
    v17 = sub_1000215E0();
    Measurement<>.write(to:)(v17, v18, v19, v3);
    v23(v1, v6);
    Percentiles.p90.getter();
    v20 = sub_1000215E0();
    Measurement<>.write(to:)(v20, v21, v22, v3);
    v23(v10, v6);
  }

  sub_10000C8F4();
}

void static Percentiles<>.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  type metadata accessor for Measurement();
  sub_1000037C4();
  __chkstk_darwin(v21);
  sub_100003C38();
  __chkstk_darwin(v22);
  sub_100020104();
  __chkstk_darwin(v23);
  sub_100051FCC();
  static Measurement<>.read(from:)(v24, v25, v26);
  if (!v20)
  {
    sub_100051FCC();
    static Measurement<>.read(from:)(v27, v28, v29);
    sub_100051FCC();
    static Measurement<>.read(from:)(v30, v31, v32);
    Percentiles.init(p10:p50:p90:)();
  }

  sub_1000C8EF8();
  sub_10000C8F4();
}

void sub_10067A9E8(uint64_t a1)
{
  FixedSizeTypeBinaryCodable.write(to:)();
  if (!v1)
  {
    sub_1007527F8();
    type metadata accessor for ViewState(0);
    sub_100013AD0();
    sub_10077BF3C();
    v2 = sub_10000CDB0();
    ListSessionTrigger.write(to:)(v2);
    sub_1000B010C();
    v3 = sub_10000CDB0();
    ListSessionTrigger.write(to:)(v3);
    sub_10022C350(&qword_100CA6600, &unk_100A5C400);
    sub_10068280C(&qword_100CD0060, type metadata accessor for SearchViewState, byte_100A3FE28);
    sub_10003A2E8();
    sub_10068280C(v4, type metadata accessor for SearchViewState, v5);
    sub_1001721B0();
    Optional<A>.write(to:)();
    v6 = sub_100013AD0();
    sub_10077C0B0(v6);
    sub_100013AD0();
    sub_100756344();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
  }
}

void sub_10067ABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  v17 = v16;
  v62 = v18;
  v19 = type metadata accessor for WeatherMapPresentationState(0);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_100021D38();
  v21 = type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  v61 = v22;
  __chkstk_darwin(v23);
  sub_1000037D8();
  sub_10001365C();
  v24 = type metadata accessor for DisplayMetrics(0);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000037D8();
  sub_10003038C();
  v26 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  sub_100003810(v26);
  sub_100003828();
  __chkstk_darwin(v27);
  sub_1000871C0();
  v28 = type metadata accessor for ViewState.SecondaryViewState(0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_1000106FC();
  v30 = sub_1000B0CA4();
  v31 = sub_10077C158(v30);
  if (!v14)
  {
    v59 = v15;
    v58 = v21;
    v60 = v31;
    sub_10003BB20();
    sub_10077C238();
    v32 = sub_10003BB20();
    v33 = static ListSessionTrigger.read(from:)(v32);
    v34 = sub_10003BB20();
    v35 = static ListSessionTrigger.read(from:)(v34);
    type metadata accessor for SearchViewState(0);
    sub_10068280C(&qword_100CD0060, type metadata accessor for SearchViewState, byte_100A3FE28);
    sub_10003A2E8();
    sub_10068280C(v36, type metadata accessor for SearchViewState, v37);
    static Optional<A>.read(from:)();
    v38 = sub_10003BB20();
    v39 = static UIInterfaceOrientation.read(from:)(v38);
    v40 = sub_10003BB20();
    v57 = static UIUserInterfaceSizeClass.read(from:)(v40);
    v41 = sub_10003BB20();
    v63 = static NotificationAuthorizationState.read(from:)(v41);
    v42 = sub_10003BB20();
    v56 = static ListSessionTrigger.read(from:)(v42);
    v43 = sub_10003BB20();
    v55 = sub_100786250(v43);
    v44 = sub_10003BB20();
    static DynamicTypeSize.read(from:)(v44, v45);
    *v59 = v39;
    *(v59 + 8) = v57;
    *(v59 + 16) = v63;
    *(v59 + 17) = v56 & 1;
    *(v59 + 18) = v55;
    (*(v61 + 32))(v59 + *(v24 + 36), v13, v58);
    sub_100756108(v17, v46, v47, v48, v49, v50, v51, v52, v54, v55, v56, SBYTE2(v56), SHIBYTE(v56));
    static FixedSizeTypeBinaryCodable.read(from:)();
    *v62 = v60;
    v53 = type metadata accessor for ViewState(0);
    sub_10068275C();
    *(v62 + v53[6]) = v33 & 1;
    *(v62 + v53[7]) = v35 & 1;
    sub_100682654();
    sub_10068275C();
    sub_10068275C();
    *(v62 + v53[11]) = a13;
  }

  sub_10000C8F4();
}

void static WeatherAttribution.read(from:)()
{
  sub_10000E8AC();
  type metadata accessor for URL();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100003C38();
  __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  sub_100018648();
  static String.read(from:)();
  if (!v0)
  {
    sub_100018648();
    static URL.read(from:)();
    sub_100018648();
    static URL.read(from:)();
    sub_100018648();
    static URL.read(from:)();
    sub_100018648();
    static URL.read(from:)();
    WeatherAttribution.init(serviceName:legalPageURL:squareMarkURL:combinedMarkDarkURL:combinedMarkLightURL:)();
  }

  sub_10000C8F4();
}

void WeatherAttribution.write(to:)()
{
  sub_10000E8AC();
  v1 = type metadata accessor for URL();
  sub_1000037C4();
  v24 = v2;
  __chkstk_darwin(v3);
  sub_100003C38();
  v6 = (v4 - v5);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  WeatherAttribution.serviceName.getter();
  String.write(to:)();
  if (v0)
  {
  }

  else
  {
    v22 = v6;
    v23 = v9;
    v16 = v24;

    WeatherAttribution.legalPageURL.getter();
    URL.write(to:)();
    v17 = *(v16 + 8);
    v18 = v1;
    v17(v15, v1);
    WeatherAttribution.squareMarkURL.getter();
    URL.write(to:)();
    v17(v12, v1);
    v19 = v23;
    WeatherAttribution.combinedMarkDarkURL.getter();
    URL.write(to:)();
    v17(v19, v18);
    v20 = v22;
    WeatherAttribution.combinedMarkLightURL.getter();
    URL.write(to:)();
    v17(v20, v18);
  }

  sub_10000C8F4();
}

void static WeatherDataModel.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E8AC();
  v45 = v10;
  v46 = v12;
  v44[7] = v13;
  v14 = sub_10022C350(&qword_100CABD00, &qword_100A3ABA0);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v44[8] = v16;
  v17 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  sub_100003810(v17);
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v44[11] = v19;
  sub_1000038CC();
  type metadata accessor for WeatherAvailability();
  sub_1000037C4();
  v44[9] = v21;
  v44[10] = v20;
  __chkstk_darwin(v20);
  sub_1000038E4();
  v44[12] = v22;
  v23 = sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  sub_100003810(v23);
  sub_100003828();
  __chkstk_darwin(v24);
  sub_1000039BC();
  v44[13] = v25;
  v26 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  sub_100003810(v26);
  sub_100003828();
  __chkstk_darwin(v27);
  sub_1000183C0();
  v28 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_1000037C4();
  v44[14] = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  v32 = v44 - v31;
  v33 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_1000037C4();
  v44[15] = v34;
  sub_100003828();
  __chkstk_darwin(v35);
  sub_10001365C();
  v36 = sub_10022C350(&qword_100CB0BA0, &unk_100A40F70);
  sub_100003810(v36);
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000132E8();
  v38 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v40 = v39;
  __chkstk_darwin(v41);
  sub_1000037D8();
  v42 = v45;
  static CurrentWeather.read(from:)(v46);
  if (!v42)
  {
    v44[2] = v28;
    v44[3] = v11;
    v44[4] = v33;
    v44[5] = v32;
    v44[6] = v38;
    v45 = v40;
    sub_10022C350(&qword_100CAE8F0, &qword_100A3E420);
    sub_10067BDCC();
    sub_10067BEB4();
    v43 = v46;
    sub_1001721B0();
    static Optional<A>.read(from:)();
    sub_100678730(v43);
    sub_100678A58(v43);
    type metadata accessor for AirQuality();
    sub_10068280C(&qword_100CCFFC0, &type metadata accessor for AirQuality, protocol conformance descriptor for AirQuality);
    sub_1000BCEE4(&qword_100CCFFC8);
    sub_1000523E0();
    static Optional<A>.read(from:)();
    type metadata accessor for WeatherChanges();
    sub_10068280C(&qword_100CCFFD0, &type metadata accessor for WeatherChanges, protocol conformance descriptor for WeatherChanges);
    sub_1000BCEE4(&qword_100CCFFD8);
    sub_1000523E0();
    static Optional<A>.read(from:)();
    sub_10022C350(&qword_100CB4738, &qword_100A47928);
    sub_10067BF9C();
    sub_10067C084();
    sub_1001721B0();
    static Optional<A>.read(from:)();
    static WeatherAvailability.read(from:)();
    v44[1] = a10;
    v44[0] = type metadata accessor for HistoricalComparisons();
    sub_10068280C(&qword_100CD0000, &type metadata accessor for HistoricalComparisons, protocol conformance descriptor for HistoricalComparisons);
    sub_1000BCEE4(&qword_100CD0008);
    sub_1000523E0();
    static Optional<A>.read(from:)();
    v44[0] = type metadata accessor for HistoricalFacts();
    sub_10068280C(&qword_100CD0010, &type metadata accessor for HistoricalFacts, protocol conformance descriptor for HistoricalFacts);
    sub_1000BCEE4(&qword_100CD0018);
    sub_1000523E0();
    static Optional<A>.read(from:)();
    WeatherDataModel.init(currentWeather:minuteForecast:hourlyForecast:dailyForecast:airQuality:weatherChanges:weatherAlerts:availability:historicalComparisons:historicalFacts:)();
  }

  sub_10000C8F4();
}

unint64_t sub_10067BDCC()
{
  result = qword_100CCFFA0;
  if (!qword_100CCFFA0)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CAE8F0, &qword_100A3E420);
    v4[0] = sub_10068280C(&qword_100CCFFA8, &type metadata accessor for MinuteWeather, protocol conformance descriptor for MinuteWeather);
    v4[1] = sub_10068280C(&qword_100CCFFB0, &type metadata accessor for MinuteWeather, protocol conformance descriptor for MinuteWeather);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Forecast<A>, v3, v4);
    atomic_store(result, &qword_100CCFFA0);
  }

  return result;
}

unint64_t sub_10067BEB4()
{
  result = qword_100CCFFB8;
  if (!qword_100CCFFB8)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CAE8F0, &qword_100A3E420);
    v4[0] = sub_10068280C(&qword_100CCFFA8, &type metadata accessor for MinuteWeather, protocol conformance descriptor for MinuteWeather);
    v4[1] = sub_10068280C(&qword_100CCFFB0, &type metadata accessor for MinuteWeather, protocol conformance descriptor for MinuteWeather);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Forecast<A>, v3, v4);
    atomic_store(result, &qword_100CCFFB8);
  }

  return result;
}

unint64_t sub_10067BF9C()
{
  result = qword_100CCFFE0;
  if (!qword_100CCFFE0)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CB4738, &qword_100A47928);
    v4[0] = sub_10068280C(&qword_100CCFFE8, &type metadata accessor for WeatherAlert, protocol conformance descriptor for WeatherAlert);
    v4[1] = sub_10068280C(&qword_100CCFFF0, &type metadata accessor for WeatherAlert, protocol conformance descriptor for WeatherAlert);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CCFFE0);
  }

  return result;
}

unint64_t sub_10067C084()
{
  result = qword_100CCFFF8;
  if (!qword_100CCFFF8)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CB4738, &qword_100A47928);
    v4[0] = sub_10068280C(&qword_100CCFFE8, &type metadata accessor for WeatherAlert, protocol conformance descriptor for WeatherAlert);
    v4[1] = sub_10068280C(&qword_100CCFFF0, &type metadata accessor for WeatherAlert, protocol conformance descriptor for WeatherAlert);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CCFFF8);
  }

  return result;
}

void WeatherDataModel.write(to:)(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_10067C1D8(v1, a1, &v4);
  objc_autoreleasePoolPop(v3);
}

uint64_t sub_10067C1D8(uint64_t a1, uint64_t a2, void *a3)
{
  v55 = a3;
  v39 = sub_10022C350(&qword_100CABD00, &qword_100A3ABA0);
  __chkstk_darwin(v39);
  v40 = &v39 - v5;
  v41 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  __chkstk_darwin(v41);
  v42 = &v39 - v6;
  v7 = type metadata accessor for WeatherAvailability();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  __chkstk_darwin(v46);
  v47 = &v39 - v9;
  v49 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  __chkstk_darwin(v49);
  v48 = &v39 - v10;
  v11 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v12 = *(v11 - 8);
  v51 = v11;
  v52 = v12;
  __chkstk_darwin(v11);
  v50 = &v39 - v13;
  v14 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  v53 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = sub_10022C350(&qword_100CB0BA0, &unk_100A40F70);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v20 = type metadata accessor for CurrentWeather();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  WeatherDataModel.currentWeather.getter();
  v24 = v56;
  CurrentWeather.write(to:)(a2, v25, v26, v27, v28, v29, v30, v31, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  if (v24)
  {
    result = (*(v21 + 8))(v23, v20);
    *v55 = v24;
  }

  else
  {
    (*(v21 + 8))(v23, v20);
    WeatherDataModel.minuteForecast.getter();
    sub_10067BDCC();
    sub_10067BEB4();
    Optional<A>.write(to:)();
    sub_1006827B8(v19, &qword_100CB0BA0);
    WeatherDataModel.hourlyForecast.getter();
    sub_100677B48(a2);
    (*(v53 + 8))(v16, v14);
    v33 = v50;
    WeatherDataModel.dailyForecast.getter();
    sub_100677E40(a2);
    (*(v52 + 8))(v33, v51);
    v34 = v48;
    WeatherDataModel.airQuality.getter();
    sub_10068280C(&qword_100CCFFC0, &type metadata accessor for AirQuality, protocol conformance descriptor for AirQuality);
    sub_10068280C(&qword_100CCFFC8, &type metadata accessor for AirQuality, protocol conformance descriptor for AirQuality);
    Optional<A>.write(to:)();
    sub_1006827B8(v34, &qword_100CC62B8);
    v35 = v47;
    WeatherDataModel.weatherChanges.getter();
    sub_10068280C(&qword_100CCFFD0, &type metadata accessor for WeatherChanges, protocol conformance descriptor for WeatherChanges);
    sub_10068280C(&qword_100CCFFD8, &type metadata accessor for WeatherChanges, protocol conformance descriptor for WeatherChanges);
    Optional<A>.write(to:)();
    sub_1006827B8(v35, &qword_100CACDF8);
    v57 = WeatherDataModel.weatherAlerts.getter();
    sub_10022C350(&qword_100CD00E0, &unk_100A74880);
    sub_10067BF9C();
    sub_10067C084();
    Optional<A>.write(to:)();

    v36 = v43;
    WeatherDataModel.availability.getter();
    WeatherAvailability.write(to:)();
    (*(v44 + 8))(v36, v45);
    v37 = v42;
    WeatherDataModel.historicalComparisons.getter();
    sub_10068280C(&qword_100CD0000, &type metadata accessor for HistoricalComparisons, protocol conformance descriptor for HistoricalComparisons);
    sub_10068280C(&qword_100CD0008, &type metadata accessor for HistoricalComparisons, protocol conformance descriptor for HistoricalComparisons);
    Optional<A>.write(to:)();
    sub_1006827B8(v37, &qword_100CABD10);
    v38 = v40;
    WeatherDataModel.historicalFacts.getter();
    sub_10068280C(&qword_100CD0010, &type metadata accessor for HistoricalFacts, protocol conformance descriptor for HistoricalFacts);
    sub_10068280C(&qword_100CD0018, &type metadata accessor for HistoricalFacts, protocol conformance descriptor for HistoricalFacts);
    Optional<A>.write(to:)();
    return sub_1006827B8(v38, &qword_100CABD00);
  }

  return result;
}

uint64_t DynamicTypeSize.write(to:)()
{
  v1 = type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000106FC();
  sub_10006A870();
  v5();
  v6 = (*(v3 + 88))(v0, v1);
  if (v6 == enum case for DynamicTypeSize.xSmall(_:) || v6 == enum case for DynamicTypeSize.small(_:) || v6 == enum case for DynamicTypeSize.medium(_:) || v6 == enum case for DynamicTypeSize.large(_:) || v6 == enum case for DynamicTypeSize.xLarge(_:) || v6 == enum case for DynamicTypeSize.xxLarge(_:) || v6 == enum case for DynamicTypeSize.xxxLarge(_:) || v6 == enum case for DynamicTypeSize.accessibility1(_:) || v6 == enum case for DynamicTypeSize.accessibility2(_:) || v6 == enum case for DynamicTypeSize.accessibility3(_:) || v6 == enum case for DynamicTypeSize.accessibility4(_:) || v6 == enum case for DynamicTypeSize.accessibility5(_:))
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    return (*(v3 + 8))(v0, v1);
  }
}

uint64_t static DynamicTypeSize.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000526D4(a1);
  if (!v2)
  {
    sub_1000719BC();
    if (v5 >= 0xC)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      v10 = sub_10068280C(v8, v9, &protocol conformance descriptor for BinaryDecoder.Error);
      v11 = sub_100074D7C(v10);
      sub_10002C964(v11, v12);
      sub_100006494();
      (*(v13 + 104))();
      return swift_willThrow();
    }

    else
    {
      v6 = **(&off_100C65340 + v5);
      type metadata accessor for DynamicTypeSize();
      sub_1000037E8();
      return (*(v7 + 104))(a2, v6);
    }
  }

  return result;
}

void NSUnitAngle.write(to:)()
{
  sub_1000D3C1C();
  sub_10002498C();
  v0 = objc_opt_self();
  v1 = [v0 degrees];
  sub_10008845C(v1, &qword_100CCFAD0);
  v2 = sub_1000202EC();

  if (v2 & 1) != 0 || (v3 = sub_1000C87F8([v0 arcMinutes]), v1, (v3) || (v4 = sub_1000C87F8(objc_msgSend(v0, "arcSeconds")), v1, (v4) || (v5 = sub_1000C87F8(objc_msgSend(v0, "radians")), v1, (v5) || (v6 = sub_1000C87F8(objc_msgSend(v0, "gradians")), v1, (v6) || (v7 = sub_100032654(objc_msgSend(v0, "revolutions")), v0, (v7))
  {
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    type metadata accessor for BinaryDecoder.Error();
    sub_10001F4A0();
    v10 = sub_10068280C(v8, v9, &protocol conformance descriptor for BinaryDecoder.Error);
    v11 = sub_100074D7C(v10);
    sub_10002C964(v11, v12);
    sub_100006494();
    (*(v13 + 104))();
    swift_willThrow();
  }

  sub_100088758();
}

uint64_t static NSUnitAngle.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v2)
  {
    sub_1000719BC();
    if (v4 >= 6)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      v8 = sub_10068280C(v6, v7, &protocol conformance descriptor for BinaryDecoder.Error);
      v9 = sub_100074D7C(v8);
      sub_10002C964(v9, v10);
      sub_100006494();
      (*(v11 + 104))();
      return swift_willThrow();
    }

    else
    {
      v5 = [sub_1000C8608() *v1];
      return sub_100017C38(v5);
    }
  }

  return result;
}

uint64_t sub_10067D37C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSUnitAngle.read(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void NSUnitSpeed.write(to:)()
{
  sub_1000D3C1C();
  sub_10002498C();
  v1 = objc_opt_self();
  v2 = [v1 metersPerSecond];
  sub_10008845C(v2, &qword_100CAC428);
  v3 = sub_1000202EC();

  if (v3)
  {
    goto LABEL_12;
  }

  v4 = sub_1000C87F8([v1 kilometersPerHour]);

  if (v4)
  {
    goto LABEL_12;
  }

  v5 = sub_1000C87F8([v1 milesPerHour]);

  if (v5)
  {
    goto LABEL_12;
  }

  v6 = sub_100032654([v1 knots]);

  if (v6)
  {
    goto LABEL_12;
  }

  v7 = [v0 symbol];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v8 == 1747938669 && v10 == 0xE400000000000000)
  {

    goto LABEL_12;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_12:
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    goto LABEL_13;
  }

  type metadata accessor for BinaryDecoder.Error();
  sub_10001F4A0();
  v15 = sub_10068280C(v13, v14, &protocol conformance descriptor for BinaryDecoder.Error);
  v16 = sub_100074D7C(v15);
  sub_10002C964(v16, v17);
  sub_100006494();
  (*(v18 + 104))();
  swift_willThrow();
LABEL_13:
  sub_100088758();
}

uint64_t static NSUnitSpeed.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    switch(v13)
    {
      case 1:
        v3 = [swift_getObjCClassFromMetadata() metersPerSecond];
        goto LABEL_8;
      case 2:
        v3 = [swift_getObjCClassFromMetadata() kilometersPerHour];
        goto LABEL_8;
      case 3:
        v3 = [swift_getObjCClassFromMetadata() milesPerHour];
        goto LABEL_8;
      case 4:
        v3 = [swift_getObjCClassFromMetadata() knots];
LABEL_8:
        v6 = v3;
        goto LABEL_9;
      case 5:
        v4 = [objc_allocWithZone(NSUnitConverterLinear) initWithCoefficient:0.00000027777];
        v5 = objc_allocWithZone(NSUnitSpeed);
        v6 = sub_1006825F0(1747938669, 0xE400000000000000, v4);
LABEL_9:
        result = sub_100017C38(v6);
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F4A0();
        v9 = sub_10068280C(v7, v8, &protocol conformance descriptor for BinaryDecoder.Error);
        v10 = sub_100074D7C(v9);
        sub_10002C964(v10, v11);
        sub_100006494();
        (*(v12 + 104))();
        result = swift_willThrow();
        break;
    }
  }

  return result;
}

uint64_t sub_10067D808@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSUnitSpeed.read(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void NSUnitTemperature.write(to:)()
{
  sub_1000D3C1C();
  sub_10002498C();
  v0 = objc_opt_self();
  v1 = [v0 celsius];
  sub_10008845C(v1, &qword_100CA51B0);
  v2 = sub_1000202EC();

  if (v2 & 1) != 0 || (v3 = sub_1000C87F8([v0 fahrenheit]), v1, (v3) || (v4 = sub_100032654(objc_msgSend(v0, "kelvin")), v0, (v4))
  {
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    type metadata accessor for BinaryDecoder.Error();
    sub_10001F4A0();
    v7 = sub_10068280C(v5, v6, &protocol conformance descriptor for BinaryDecoder.Error);
    v8 = sub_100074D7C(v7);
    sub_10002C964(v8, v9);
    sub_100006494();
    (*(v10 + 104))();
    swift_willThrow();
  }

  sub_100088758();
}

uint64_t static NSUnitTemperature.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v2)
  {
    sub_1000719BC();
    if (v4 >= 3)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      v8 = sub_10068280C(v6, v7, &protocol conformance descriptor for BinaryDecoder.Error);
      v9 = sub_100074D7C(v8);
      sub_10002C964(v9, v10);
      sub_100006494();
      (*(v11 + 104))();
      return swift_willThrow();
    }

    else
    {
      v5 = [sub_1000C8608() *v1];
      return sub_100017C38(v5);
    }
  }

  return result;
}

uint64_t sub_10067DAEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSUnitTemperature.read(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void NSUnitLength.write(to:)()
{
  sub_1000D3C1C();
  sub_10002498C();
  v0 = objc_opt_self();
  v1 = [v0 megameters];
  sub_10008845C(v1, &qword_100CAB968);
  v2 = sub_1000202EC();

  if (v2 & 1) != 0 || (v3 = sub_1000C87F8([v0 kilometers]), v1, (v3) || (v4 = sub_1000C87F8(objc_msgSend(v0, "hectometers")), v1, (v4) || (v5 = sub_1000C87F8(objc_msgSend(v0, "decameters")), v1, (v5) || (v6 = sub_1000C87F8(objc_msgSend(v0, "meters")), v1, (v6) || (v7 = sub_1000C87F8(objc_msgSend(v0, "decimeters")), v1, (v7) || (v8 = sub_1000C87F8(objc_msgSend(v0, "centimeters")), v1, (v8) || (v9 = sub_1000C87F8(objc_msgSend(v0, "millimeters")), v1, (v9) || (v10 = sub_1000C87F8(objc_msgSend(v0, "micrometers")), v1, (v10) || (v11 = sub_1000C87F8(objc_msgSend(v0, "nanometers")), v1, (v11) || (v12 = sub_1000C87F8(objc_msgSend(v0, "picometers")), v1, (v12) || (v13 = sub_1000C87F8(objc_msgSend(v0, "inches")), v1, (v13) || (v14 = sub_1000C87F8(objc_msgSend(v0, "feet")), v1, (v14) || (v15 = sub_1000C87F8(objc_msgSend(v0, "yards")), v1, (v15) || (v16 = sub_1000C87F8(objc_msgSend(v0, "miles")), v1, (v16) || (v17 = sub_1000C87F8(objc_msgSend(v0, "scandinavianMiles")), v1, (v17) || (v18 = sub_1000C87F8(objc_msgSend(v0, "lightyears")), v1, (v18) || (v19 = sub_1000C87F8(objc_msgSend(v0, "nauticalMiles")), v1, (v19) || (v20 = sub_1000C87F8(objc_msgSend(v0, "fathoms")), v1, (v20) || (v21 = sub_1000C87F8(objc_msgSend(v0, "furlongs")), v1, (v21) || (v22 = sub_1000C87F8(objc_msgSend(v0, "astronomicalUnits")), v1, (v22) || (v23 = sub_100032654(objc_msgSend(v0, "parsecs")), v0, (v23))
  {
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    type metadata accessor for BinaryDecoder.Error();
    sub_10001F4A0();
    v26 = sub_10068280C(v24, v25, &protocol conformance descriptor for BinaryDecoder.Error);
    v27 = sub_100074D7C(v26);
    sub_10002C964(v27, v28);
    sub_100006494();
    (*(v29 + 104))();
    swift_willThrow();
  }

  sub_100088758();
}

uint64_t static NSUnitLength.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v2)
  {
    sub_1000719BC();
    if (v4 >= 0x16)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      v8 = sub_10068280C(v6, v7, &protocol conformance descriptor for BinaryDecoder.Error);
      v9 = sub_100074D7C(v8);
      sub_10002C964(v9, v10);
      sub_100006494();
      (*(v11 + 104))();
      return swift_willThrow();
    }

    else
    {
      v5 = [sub_1000C8608() *v1];
      return sub_100017C38(v5);
    }
  }

  return result;
}

uint64_t sub_10067E130@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSUnitLength.read(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t NSUnitPressure.write(to:)()
{
  sub_10002498C();
  v0 = objc_opt_self();
  v1 = [v0 newtonsPerMetersSquared];
  sub_10008845C(v1, &qword_100CAC448);
  v2 = sub_1000202EC();

  if (v2 & 1) != 0 || (v3 = sub_1000C87F8([v0 gigapascals]), v1, (v3) || (v4 = sub_1000C87F8(objc_msgSend(v0, "megapascals")), v1, (v4) || (v5 = sub_1000C87F8(objc_msgSend(v0, "kilopascals")), v1, (v5) || (v6 = sub_1000C87F8(objc_msgSend(v0, "hectopascals")), v1, (v6) || (v7 = sub_1000C87F8(objc_msgSend(v0, "inchesOfMercury")), v1, (v7) || (v8 = sub_1000C87F8(objc_msgSend(v0, "bars")), v1, (v8) || (v9 = sub_1000C87F8(objc_msgSend(v0, "millibars")), v1, (v9) || (v10 = sub_1000C87F8(objc_msgSend(v0, "millimetersOfMercury")), v1, (v10) || (v11 = sub_100032654(objc_msgSend(v0, "poundsForcePerSquareInch")), v0, (v11))
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    type metadata accessor for BinaryDecoder.Error();
    sub_10001F4A0();
    v15 = sub_10068280C(v13, v14, &protocol conformance descriptor for BinaryDecoder.Error);
    v16 = sub_100074D7C(v15);
    sub_10002C964(v16, v17);
    sub_100006494();
    (*(v18 + 104))();
    return swift_willThrow();
  }
}

uint64_t static NSUnitPressure.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v2)
  {
    sub_1000719BC();
    if (v4 >= 0xA)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      v8 = sub_10068280C(v6, v7, &protocol conformance descriptor for BinaryDecoder.Error);
      v9 = sub_100074D7C(v8);
      sub_10002C964(v9, v10);
      sub_100006494();
      (*(v11 + 104))();
      return swift_willThrow();
    }

    else
    {
      v5 = [sub_1000C8608() *v1];
      return sub_100017C38(v5);
    }
  }

  return result;
}

uint64_t sub_10067E61C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSUnitPressure.read(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t NSUnitDispersion.write(to:)()
{
  v0 = [objc_opt_self() partsPerMillion];
  sub_10000C70C(0, &qword_100CD0020, NSUnitDispersion_ptr);
  v1 = static NSObject.== infix(_:_:)();

  if (v1)
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    type metadata accessor for BinaryDecoder.Error();
    sub_10001F4A0();
    v5 = sub_10068280C(v3, v4, &protocol conformance descriptor for BinaryDecoder.Error);
    v6 = sub_100074D7C(v5);
    sub_10002C964(v6, v7);
    sub_100006494();
    (*(v8 + 104))();
    return swift_willThrow();
  }
}

uint64_t static NSUnitDispersion.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_100051AC0();
    if (v3)
    {
      v4 = [swift_getObjCClassFromMetadata() partsPerMillion];
      return sub_100017C38(v4);
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      v7 = sub_10068280C(v5, v6, &protocol conformance descriptor for BinaryDecoder.Error);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10067E880@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSUnitDispersion.read(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void NSUnitConcentrationMass.write(to:)()
{
  sub_1000D3C1C();
  sub_10002498C();
  v0 = objc_opt_self();
  v1 = [v0 gramsPerLiter];
  sub_10008845C(v1, &qword_100CD0028);
  v2 = sub_1000202EC();

  if (v2 & 1) != 0 || (v3 = sub_100032654([v0 milligramsPerDeciliter]), v0, (v3))
  {
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    type metadata accessor for BinaryDecoder.Error();
    sub_10001F4A0();
    v6 = sub_10068280C(v4, v5, &protocol conformance descriptor for BinaryDecoder.Error);
    v7 = sub_100074D7C(v6);
    sub_10002C964(v7, v8);
    sub_100006494();
    (*(v9 + 104))();
    swift_willThrow();
  }

  sub_100088758();
}

uint64_t static NSUnitConcentrationMass.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_100051AC0();
    if (v4)
    {
      v5 = &selRef_gramsPerLiter;
    }

    else
    {
      if (v3 != 2)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F4A0();
        v9 = sub_10068280C(v7, v8, &protocol conformance descriptor for BinaryDecoder.Error);
        v10 = sub_100074D7C(v9);
        sub_10002C964(v10, v11);
        sub_100006494();
        (*(v12 + 104))();
        return swift_willThrow();
      }

      v5 = &selRef_milligramsPerDeciliter;
    }

    v6 = [swift_getObjCClassFromMetadata() *v5];
    return sub_100017C38(v6);
  }

  return result;
}

uint64_t sub_10067EB30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSUnitConcentrationMass.read(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t UIInterfaceOrientation.write(to:)(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      result = FixedSizeTypeBinaryCodable.write(to:)();
      break;
    default:
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      v5 = sub_10068280C(v3, v4, &protocol conformance descriptor for BinaryDecoder.Error);
      v6 = sub_100074D7C(v5);
      sub_10002C964(v6, v7);
      sub_100006494();
      (*(v8 + 104))();
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t static UIInterfaceOrientation.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_1000719BC();
    if (v3 >= 4u)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      v6 = sub_10068280C(v4, v5, &protocol conformance descriptor for BinaryDecoder.Error);
      v7 = sub_100074D7C(v6);
      sub_10002C964(v7, v8);
      sub_100006494();
      (*(v9 + 104))();
      return swift_willThrow();
    }

    else
    {
      return qword_100A74890[v3];
    }
  }

  return result;
}

uint64_t sub_10067EDA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static UIInterfaceOrientation.read(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t UIUserInterfaceSizeClass.write(to:)(uint64_t a1, uint64_t a2)
{
  if (a2 == 1 || a2 == 2)
  {
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  type metadata accessor for BinaryDecoder.Error();
  sub_10001F4A0();
  v5 = sub_10068280C(v3, v4, &protocol conformance descriptor for BinaryDecoder.Error);
  v6 = sub_100074D7C(v5);
  sub_10002C964(v6, v7);
  sub_100006494();
  (*(v8 + 104))();
  return swift_willThrow();
}

uint64_t static UIUserInterfaceSizeClass.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_100051AC0();
    if (v4)
    {
      return 2;
    }

    else if (v3 == 2)
    {
      return 1;
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      v7 = sub_10068280C(v5, v6, &protocol conformance descriptor for BinaryDecoder.Error);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10067EFB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static UIUserInterfaceSizeClass.read(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double static CGSize.read(from:)(uint64_t a1)
{
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v1)
  {
    v2 = v4;
    sub_1000B02B8();
  }

  return v2;
}

uint64_t CGSize.write(to:)(uint64_t a1)
{
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v1)
  {
    return sub_1000888B4();
  }

  return result;
}

void sub_10067F0D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static CGSize.read(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

double static CGRect.read(from:)(uint64_t a1)
{
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v1)
  {
    v2 = v4;
    sub_1000B02B8();
    sub_1000B02B8();
    sub_1000B02B8();
  }

  return v2;
}

uint64_t CGRect.write(to:)(uint64_t a1)
{
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v1)
  {
    sub_1000888B4();
    sub_1000888B4();
    return sub_1000888B4();
  }

  return result;
}

void sub_10067F27C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static CGRect.read(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

void sub_10067F2CC()
{
  sub_10000E8AC();
  UUID.write(to:)();
  if (!v1)
  {
    v3 = type metadata accessor for PreprocessedWeatherData(0);
    type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
    sub_100037238();
    sub_10068280C(v4, v2, asc_100A73124);
    sub_1000210CC(&qword_100CD0098);
    Array<A>.write(to:)();
    sub_100013AD0();
    sub_100763C88();
    sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
    sub_10000CDB0();
    Optional<A>.write(to:)();
    type metadata accessor for HourlyForecastComponentViewModel(0);
    type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
    sub_10068280C(&qword_100CD00A0, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem, byte_100A72EF4);
    sub_10068280C(&qword_100CD00A8, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem, byte_100A72ECC);
    sub_1001721B0();
    Array<A>.write(to:)();
    type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
    sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
    sub_10068280C(&qword_100CD00B0, &type metadata accessor for WeatherDescription, &protocol conformance descriptor for WeatherDescription);
    sub_1000BCEE4(&qword_100CD00B8);
    Optional<A>.write(to:)();
    sub_100013AD0();
    sub_1007675FC();
    sub_10000CDB0();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    sub_100013AD0();
    WeatherDescription.write(to:)();
    type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
    sub_10000CDB0();
    String.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    sub_100037850();
    String.write(to:)();
    sub_1000523E0();
    String.write(to:)();
    sub_100013AD0();
    sub_1007723E4();
    memcpy(__dst, (v0 + *(v3 + 52)), sizeof(__dst));
    sub_10000CDB0();
    sub_100772984();
    Date.write(to:)();
    type metadata accessor for WeatherConditionBackgroundTimeData(0);
    sub_10022C350(&qword_100CA58B8, &qword_100A2FD30);
    sub_10068280C(&qword_100CD00C0, &type metadata accessor for Elevation, protocol conformance descriptor for Elevation);
    sub_1000A7CF4(&qword_100CD00C8);
    Optional<A>.write(to:)();
    sub_10022C350(&qword_100CACCC0, &unk_100A5D780);
    sub_10068280C(&qword_100CD00D0, &type metadata accessor for BackgroundMoonData, protocol conformance descriptor for BackgroundMoonData);
    sub_1000A7CF4(&qword_100CD00D8);
    sub_100037850();
    Optional<A>.write(to:)();
    memcpy(v5, (v0 + *(v3 + 60)), sizeof(v5));
    sub_10000CDB0();
    sub_100767344();
  }

  sub_10000C8F4();
}

void sub_10067F898()
{
  sub_10000E8AC();
  v75 = v6;
  v7 = type metadata accessor for WeatherConditionBackgroundTimeData(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000038E4();
  v9 = sub_1000038CC();
  v10 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel(v9);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000038E4();
  v12 = sub_1000038CC();
  v13 = type metadata accessor for PressureComponentPreprocessedDataModel(v12);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v78 = v16;
  v79 = v15;
  __chkstk_darwin(v15);
  sub_1000038E4();
  v80 = v17;
  v18 = sub_1000038CC();
  v77 = type metadata accessor for UVIndexComponentPreprocessedDataModel(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  v20 = sub_1000132E8();
  v21 = type metadata accessor for ListPreprocessedDataModel(v20);
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  sub_100021D38();
  v23 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_10003038C();
  v25 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_1000037D8();
  sub_1000183C0();
  v27 = type metadata accessor for UUID();
  sub_1000037C4();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_1000106FC();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    v72 = v5;
    type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
    sub_100037238();
    sub_10068280C(v31, v27, asc_100A73124);
    sub_1000210CC(&qword_100CD0098);
    v32 = static Array<A>.read(from:)();
    sub_100018648();
    sub_100763A5C();
    v33 = sub_100018648();
    sub_100764208(v33, v34, v35, v36, v37, v38, v39, v40, v61, v62, v64, v66, v69, v1, v3, v72, v4, v27, v29, v75);
    v70 = v32;
    sub_100018648();
    sub_100767444();
    sub_100018648();
    sub_10076D550();
    memcpy(v83, v84, sizeof(v83));
    sub_100018648();
    v41 = static String.read(from:)();
    v67 = v42;
    memcpy(v82, v83, 0x70uLL);
    v82[14] = v41;
    v82[15] = v67;
    sub_100018648();
    static WeatherDescription.read(from:)();
    sub_100018648();
    v43 = static String.read(from:)();
    v45 = v44;
    v68 = v43;
    sub_100018648();
    v46 = static String.read(from:)();
    v63 = v47;
    v65 = v46;
    (*(v78 + 32))(v71, v80, v79);
    v48 = (v71 + *(v77 + 20));
    *v48 = v68;
    v48[1] = v45;
    v49 = (v71 + *(v77 + 24));
    *v49 = v65;
    v49[1] = v63;
    sub_100018648();
    v50 = static String.read(from:)();
    v52 = v51;
    sub_1000422E8();
    v53 = static String.read(from:)();
    v55 = v54;
    sub_1000422E8();
    v81 = static String.read(from:)();
    v57 = v56;
    v58 = sub_1000422E8();
    sub_1007721C8(v58);
    sub_1000422E8();
    sub_100772494();
    sub_1000422E8();
    sub_100772B80();
    sub_10068275C();
    sub_1000422E8();
    sub_10076719C();
    (*(v74 + 32))(v76, v2, v73);
    v59 = type metadata accessor for PreprocessedWeatherData(0);
    *(v76 + v59[5]) = v70;
    sub_100087E08();
    sub_10068275C();
    sub_100087E08();
    sub_10068275C();
    sub_100087E08();
    sub_10068275C();
    memcpy((v76 + v59[9]), v82, 0x80uLL);
    sub_100087E08();
    sub_10068275C();
    v60 = (v76 + v59[11]);
    *v60 = v50;
    v60[1] = v52;
    v60[2] = v53;
    v60[3] = v55;
    v60[4] = v81;
    v60[5] = v57;
    sub_100087E08();
    sub_10068275C();
    memcpy((v76 + v59[13]), v85, 0xE8uLL);
    sub_100087E08();
    sub_10068275C();
    memcpy((v76 + v59[15]), v86, 0x70uLL);
  }

  sub_10000C8F4();
}

void sub_1006801AC()
{
  sub_10000E8AC();
  v71 = type metadata accessor for HomeAndWorkRefinementViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000038E4();
  v76 = v4;
  v5 = sub_1000038CC();
  v72 = type metadata accessor for AveragesDetailViewState(v5);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v78 = v7;
  v8 = sub_1000038CC();
  type metadata accessor for NewsArticle(v8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000038E4();
  v79 = v10;
  v11 = sub_1000038CC();
  v73 = type metadata accessor for MoonDetailViewState(v11);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000038E4();
  v77 = v13;
  v14 = sub_1000038CC();
  v69 = type metadata accessor for SunriseSunsetDetailViewState(v14);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000038E4();
  v75 = v16;
  v17 = sub_1000038CC();
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState(v17);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000038E4();
  v74 = v20;
  v21 = sub_1000038CC();
  v22 = type metadata accessor for AirQualityDetailViewState(v21);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000038E4();
  v25 = v24;
  v26 = sub_1000038CC();
  v70 = type metadata accessor for ConditionDetailViewState(v26);
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_1000038E4();
  v29 = v28;
  sub_1000038CC();
  v30 = type metadata accessor for URL();
  sub_1000037C4();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_1000106FC();
  type metadata accessor for LocationPreviewModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v34);
  sub_1000037D8();
  sub_10003038C();
  sub_1000BC974();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10002FFB0();
      sub_10068275C();
      sub_1000D4280();
      if (!v0)
      {
        sub_1000EFFD8();
        DetailCondition.write(to:)();
        sub_100043A24();
        Location.write(to:)();
        v54 = *(v70 + 24);
        sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
        sub_100043A24();
        Optional<A>.write(to:)();
        sub_1000288F4(v29 + *(v70 + 28));
        sub_10022C350(&qword_100CB73A0, "<2\r");
        sub_100010764();
        sub_10068280C(v55, (v29 + v54), protocol conformance descriptor for CGRect);
        sub_10001C9AC();
        sub_10068280C(v56, (v29 + v54), v57);
        sub_1000209FC();
        sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
        sub_10068280C(&qword_100CD0080, type metadata accessor for DetailChartSelection, byte_100A6FD00);
        sub_1000A7CF4(&qword_100CD0088);
        sub_1000209FC();
        sub_100043A24();
        FixedSizeTypeBinaryCodable.write(to:)();
      }

      v53 = type metadata accessor for ConditionDetailViewState;
      goto LABEL_24;
    case 2u:
      sub_10002FFB0();
      v35 = v25;
      sub_10068275C();
      sub_10003BED8();
      if (!v0)
      {
        sub_1000437C8();
        Location.write(to:)();
        ListSessionTrigger.write(to:)(v30);
        sub_1000288F4(v25 + *(v22 + 24));
        sub_10022C350(&qword_100CB73A0, "<2\r");
        sub_100010764();
        sub_10068280C(v40, v25, protocol conformance descriptor for CGRect);
        sub_10001C9AC();
        sub_10068280C(v41, v25, v42);
        sub_100069800();
      }

      v39 = type metadata accessor for AirQualityDetailViewState;
      goto LABEL_29;
    case 3u:
      sub_100031E94();
      v35 = v74;
      sub_10068275C();
      sub_10003BED8();
      if (!v0)
      {
        sub_1000437C8();
        Location.write(to:)();
        sub_1000288F4(v74 + *(HourPrecipitationDetailViewState + 20));
        sub_10022C350(&qword_100CB73A0, "<2\r");
        sub_100010764();
        sub_10068280C(v43, v25, protocol conformance descriptor for CGRect);
        sub_10001C9AC();
        sub_10068280C(v44, v25, v45);
        sub_100069800();
      }

      v39 = type metadata accessor for NextHourPrecipitationDetailViewState;
      goto LABEL_29;
    case 4u:
      sub_10002FFB0();
      v35 = v75;
      sub_10068275C();
      sub_10003BED8();
      if (!v0)
      {
        sub_1000437C8();
        Location.write(to:)();
        sub_1000288F4(v75 + *(v69 + 20));
        sub_10022C350(&qword_100CB73A0, "<2\r");
        sub_100010764();
        sub_10068280C(v36, v25, protocol conformance descriptor for CGRect);
        sub_10001C9AC();
        sub_10068280C(v37, v25, v38);
        sub_100069800();
        sub_1007861A8(v30);
      }

      v39 = type metadata accessor for SunriseSunsetDetailViewState;
      goto LABEL_29;
    case 5u:
      sub_10002FFB0();
      v29 = v77;
      sub_10068275C();
      sub_1000D4280();
      if (!v0)
      {
        sub_1000EFFD8();
        Location.write(to:)();
        sub_10022C350(qword_100CA66A0, &unk_100A314C0);
        sub_10068280C(&qword_100CD0070, type metadata accessor for MoonDetailSelectedDate, byte_100A7BF70);
        sub_1000A7CF4(&qword_100CD0078);
        sub_1000209FC();
        v58 = *(v73 + 24);
        sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
        sub_100043A24();
        Optional<A>.write(to:)();
        sub_1000288F4(v77 + *(v73 + 28));
        sub_10022C350(&qword_100CB73A0, "<2\r");
        sub_100010764();
        sub_10068280C(v59, (v77 + v58), protocol conformance descriptor for CGRect);
        sub_10001C9AC();
        sub_10068280C(v60, (v77 + v58), v61);
        sub_1000209FC();
        v62 = sub_100043A24();
        sub_1007861A8(v62);
      }

      v53 = type metadata accessor for MoonDetailViewState;
      goto LABEL_24;
    case 6u:
      sub_10002FFB0();
      sub_10068275C();
      FixedSizeTypeBinaryCodable.write(to:)();
      sub_10007953C();
      String.write(to:)();
      sub_10007953C();
      String.write(to:)();
      sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
      sub_1000046B4();
      Optional<A>.write(to:)();
      sub_10007953C();
      Date.write(to:)();
      sub_10007953C();
      URL.write(to:)();
      sub_10007953C();
      String.write(to:)();
      sub_10007953C();
      String.write(to:)();
      type metadata accessor for NewsChannel(0);
      sub_1000046B4();
      Optional<A>.write(to:)();
      Array<A>.write(to:)();
      Array<A>.write(to:)();
      type metadata accessor for UUID();
      Array<A>.write(to:)();
      sub_100041AD0();
      v64 = v79;
      goto LABEL_30;
    case 7u:
      sub_10002FFB0();
      v29 = v78;
      sub_10068275C();
      sub_1000D4280();
      if (!v0)
      {
        sub_1000EFFD8();
        Location.write(to:)();
        v46 = sub_100043A24();
        ListSessionTrigger.write(to:)(v46);
        v47 = *(v72 + 24);
        sub_10022C350(&qword_100CAB960, &unk_100A3A7E0);
        sub_10068280C(&qword_100CD0050, type metadata accessor for DetailHeroChartLollipopPosition, aE_33);
        sub_100025304();
        sub_10068280C(v48, type metadata accessor for DetailHeroChartLollipopPosition, v49);
        sub_1000209FC();
        sub_1000288F4(v78 + *(v72 + 28));
        sub_10022C350(&qword_100CB73A0, "<2\r");
        sub_100010764();
        sub_10068280C(v50, (v78 + v47), protocol conformance descriptor for CGRect);
        sub_10001C9AC();
        sub_10068280C(v51, (v78 + v47), v52);
        sub_1000209FC();
      }

      v53 = type metadata accessor for AveragesDetailViewState;
LABEL_24:
      v63 = v53;
      v64 = v29;
      goto LABEL_30;
    case 8u:
      sub_10002FFB0();
      v35 = v76;
      sub_10068275C();
      sub_10003BED8();
      if (!v0)
      {
        sub_1000437C8();
        Location.write(to:)();
        v65 = (v76 + *(v71 + 20));
        LocationOfInterest.write(to:)();
        sub_1000288F4(v76 + *(v71 + 24));
        sub_10022C350(&qword_100CB73A0, "<2\r");
        sub_100010764();
        sub_10068280C(v66, v65, protocol conformance descriptor for CGRect);
        sub_10001C9AC();
        sub_10068280C(v67, v65, v68);
        sub_100069800();
      }

      v39 = type metadata accessor for HomeAndWorkRefinementViewState;
LABEL_29:
      v63 = v39;
      v64 = v35;
LABEL_30:
      sub_100682704(v64, v63);
      break;
    case 9u:
      FixedSizeTypeBinaryCodable.write(to:)();
      break;
    default:
      (*(v32 + 32))(v1, v2, v30);
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v0)
      {
        sub_1000437C8();
        URL.write(to:)();
      }

      (*(v32 + 8))(v1, v30);
      break;
  }

  sub_1000C8EF8();
  sub_10000C8F4();
}

void sub_10068104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  *&v166 = v13;
  v16 = v15;
  v158 = v17;
  v154 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v153 = v18;
  __chkstk_darwin(v19);
  sub_1000038E4();
  v165.n128_u64[0] = v20;
  v21 = sub_1000038CC();
  v150 = type metadata accessor for HomeAndWorkRefinementViewState(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000038E4();
  v149 = v23;
  v24 = sub_10022C350(&qword_100CAB960, &unk_100A3A7E0);
  sub_100003810(v24);
  sub_100003828();
  __chkstk_darwin(v25);
  sub_1000039BC();
  v152 = v26;
  v27 = sub_1000038CC();
  v146 = type metadata accessor for AveragesDetailViewState(v27);
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_1000038E4();
  v145 = v29;
  v30 = sub_1000038CC();
  v31 = type metadata accessor for NewsArticle(v30);
  v32 = sub_100003810(v31);
  __chkstk_darwin(v32);
  sub_1000038E4();
  v164.n128_u64[0] = v33;
  v34 = sub_1000038CC();
  v35 = type metadata accessor for MoonDetailViewState(v34);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_1000038E4();
  v163 = v37;
  v38 = sub_1000038CC();
  v148 = type metadata accessor for SunriseSunsetDetailViewState(v38);
  sub_1000037E8();
  __chkstk_darwin(v39);
  sub_1000038E4();
  v147 = v40;
  v41 = sub_1000038CC();
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState(v41);
  sub_1000037E8();
  __chkstk_darwin(v42);
  sub_1000038E4();
  v162 = v43;
  sub_1000038CC();
  type metadata accessor for Location();
  sub_1000037C4();
  v156 = v44;
  v157 = v45;
  __chkstk_darwin(v44);
  sub_100003C38();
  v161 = v46 - v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  v155 = &v144 - v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  v160 = &v144 - v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  v159 = &v144 - v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  v55 = type metadata accessor for AirQualityDetailViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v56);
  sub_1000106FC();
  v57 = type metadata accessor for ConditionDetailViewState(0);
  v58 = sub_100003810(v57);
  __chkstk_darwin(v58);
  sub_1000037D8();
  sub_10003038C();
  v59 = type metadata accessor for URL();
  sub_1000037C4();
  v61 = v60;
  __chkstk_darwin(v62);
  sub_1000037D8();
  v65 = (v64 - v63);
  v66 = v16;
  v67 = v166;
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v67)
  {
    v75 = v61;
    *&v166 = v14;
    v76 = v162;
    v77 = v165.n128_u64[0];
    switch(a13)
    {
      case 1:
        goto LABEL_15;
      case 2:
        static URL.read(from:)();
        (*(v75 + 32))(v158, v65, v59);
        goto LABEL_15;
      case 3:
        sub_100757638(v66, v68, v69, v70, v71, v72, v73, v74, v144, v145, SWORD2(v145), SBYTE6(v145), SHIBYTE(v145));
        goto LABEL_12;
      case 4:
        static Location.read(from:)();
        v106 = static ListSessionTrigger.read(from:)(v66);
        type metadata accessor for CGRect(0);
        v108 = v107;
        sub_100030578();
        sub_10068280C(v109, v65, protocol conformance descriptor for CGRect);
        sub_10001C9AC();
        sub_10068280C(v110, v65, v111);
        sub_100051FCC();
        static Optional<A>.read(from:)();
        v164 = sub_100170760();
        v165 = v123;
        v124 = v166;
        v125(v166, 0);
        *(v124 + *(v55 + 20)) = v106;
        v126 = (v124 + *(v55 + 24));
        v127 = v164;
        *v126 = v165;
        v126[1] = v127;
        v126[2].n128_u8[0] = v108;
        sub_1000132F8();
        goto LABEL_15;
      case 5:
        v78 = v159;
        static Location.read(from:)();
        type metadata accessor for CGRect(0);
        v80 = v79;
        sub_100010764();
        sub_10068280C(v81, v75, protocol conformance descriptor for CGRect);
        sub_10001C9AC();
        v84 = sub_10068280C(v82, v75, v83);
        sub_100011714(v84);
        v165 = sub_100044E38();
        v166 = v96;
        v97(v76, v78);
        v98 = v76 + *(HourPrecipitationDetailViewState + 20);
        v99 = v165;
        *v98 = v166;
        *(v98 + 16) = v99;
        *(v98 + 32) = v80;
        sub_100031E94();
        sub_10068275C();
        goto LABEL_15;
      case 6:
        v87 = v160;
        static Location.read(from:)();
        type metadata accessor for CGRect(0);
        sub_100010764();
        sub_10068280C(v88, v75, protocol conformance descriptor for CGRect);
        sub_10001C9AC();
        v91 = sub_10068280C(v89, v75, v90);
        sub_100011714(v91);
        v165 = v168;
        v166 = v167;
        v112 = v169;
        v128 = sub_100786250(v66);
        v129 = v147;
        (*(v157 + 32))(v147, v87, v156);
        v130 = v148;
        v131 = v129 + *(v148 + 20);
        v132 = v165;
        *v131 = v166;
        *(v131 + 16) = v132;
        *(v131 + 32) = v112;
        *(v129 + *(v130 + 24)) = v128;
        sub_1000132F8();
        goto LABEL_15;
      case 7:
        sub_1007570D8();
        goto LABEL_12;
      case 8:
        sub_10077CD9C();
LABEL_12:
        sub_100071560();
        goto LABEL_15;
      case 9:
        static Location.read(from:)();
        v113 = static ListSessionTrigger.read(from:)(v66);
        type metadata accessor for DetailHeroChartLollipopPosition(0);
        sub_10068280C(&qword_100CD0050, type metadata accessor for DetailHeroChartLollipopPosition, aE_33);
        sub_100025304();
        sub_10068280C(v114, type metadata accessor for DetailHeroChartLollipopPosition, v115);
        sub_10006A870();
        static Optional<A>.read(from:)();
        type metadata accessor for CGRect(0);
        v134 = v133;
        sub_100030578();
        sub_10068280C(v135, type metadata accessor for DetailHeroChartLollipopPosition, protocol conformance descriptor for CGRect);
        sub_10001C9AC();
        sub_10068280C(v136, type metadata accessor for DetailHeroChartLollipopPosition, v137);
        sub_100051FCC();
        static Optional<A>.read(from:)();
        v165 = sub_100170760();
        v166 = v138;
        v139 = v145;
        v140(v145, v155);
        v141 = v146;
        *(v139 + *(v146 + 20)) = v113;
        sub_100682654();
        v142 = v139 + *(v141 + 28);
        v143 = v165;
        *v142 = v166;
        *(v142 + 16) = v143;
        *(v142 + 32) = v134;
        sub_10068275C();
        goto LABEL_15;
      case 10:
        v85 = v161;
        static Location.read(from:)();
        v86 = v77;
        static LocationOfInterest.read(from:)();
        type metadata accessor for CGRect(0);
        v101 = v100;
        sub_100010764();
        sub_10068280C(v102, v75, protocol conformance descriptor for CGRect);
        sub_10001C9AC();
        v105 = sub_10068280C(v103, v75, v104);
        sub_100011714(v105);
        v116 = sub_100044E38();
        v166 = v117;
        v164 = v116;
        v118 = v149;
        v119(v149, v85);
        v120 = v150;
        (*(v153 + 32))(v118 + *(v150 + 20), v86, v154);
        v121 = v118 + *(v120 + 24);
        v122 = v164;
        *v121 = v166;
        *(v121 + 16) = v122;
        *(v121 + 32) = v101;
        sub_1000132F8();
LABEL_15:
        type metadata accessor for LocationPreviewModalViewState(0);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        v92 = type metadata accessor for BinaryDecoder.Error();
        sub_10001F4A0();
        sub_10068280C(v93, v94, &protocol conformance descriptor for BinaryDecoder.Error);
        swift_allocError();
        (*(*(v92 - 8) + 104))(v95, enum case for BinaryDecoder.Error.valueNotSupported(_:), v92);
        swift_willThrow();
        break;
    }
  }

  sub_10000C8F4();
}

void sub_100681CEC()
{
  sub_10000E8AC();
  v6 = v5;
  v7 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000106FC();
  sub_10022C350(&qword_100CA65E0, &unk_100A31400);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v10 = sub_1000132E8();
  type metadata accessor for LocationPreviewViewState(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_100021D38();
  v12 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000037D8();
  sub_10003038C();
  sub_1000BC974();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v0)
      {
        sub_10077D39C(v6);
      }

      goto LABEL_24;
    case 2u:
      v18 = *v4;
      sub_10012CD78();
      if (!v0)
      {
        v19 = 0x1000000000000;
        if (!*(v18 + 22))
        {
          v19 = 0;
        }

        v20 = 0x10000;
        if (!*(v18 + 18))
        {
          v20 = 0;
        }

        sub_1007587A8(v12, v19 | v20 | (*(v18 + 19) << 24) | (*(v18 + 21) << 40) | (*(v18 + 17) << 8) | *(v18 + 16));
      }

      goto LABEL_16;
    case 3u:
      sub_10012CD78();
      if (!v0)
      {
        sub_10075532C();
      }

LABEL_16:

      goto LABEL_24;
    case 4u:
      sub_100682654();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v0)
      {
        sub_10068280C(&qword_100CD0030, type metadata accessor for ModalViewState.MapViewModal, "Em\x1B");
        sub_1000242B4();
        sub_10068280C(v16, type metadata accessor for ModalViewState.MapViewModal, v17);
        Optional<A>.write(to:)();
      }

      sub_1006827B8(v1, &qword_100CA65E0);
      goto LABEL_24;
    case 5u:
      sub_10002FFB0();
      sub_10068275C();
      sub_10012CD78();
      if (!v0)
      {
        sub_10077D408();
      }

      v14 = type metadata accessor for ModalViewState.LocationDetailModal;
      v15 = v2;
      goto LABEL_22;
    case 6u:
    case 7u:
      FixedSizeTypeBinaryCodable.write(to:)();
      goto LABEL_24;
    default:
      sub_10002FFB0();
      sub_10068275C();
      sub_10012CD78();
      if (!v0)
      {
        sub_10077F6B8(v12);
        sub_1006801AC();
        sub_100781DA4();
      }

      v14 = type metadata accessor for LocationPreviewViewState;
      v15 = v3;
LABEL_22:
      sub_100682704(v15, v14);
LABEL_24:
      sub_10000C8F4();
      return;
  }
}

void sub_1006821D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1000D3C1C();
  v15 = v14;
  v16 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_1000037D8();
  sub_100021D38();
  v18 = sub_10022C350(&qword_100CA65E0, &unk_100A31400);
  sub_100003810(v18);
  sub_100003828();
  __chkstk_darwin(v19);
  v20 = type metadata accessor for LocationPreviewViewState(0);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_1000037D8();
  sub_1000871C0();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v13)
  {
    switch(a13)
    {
      case 1:
      case 8:
        type metadata accessor for ModalViewState(0);
        sub_100017BC0();
        goto LABEL_10;
      case 2:
        sub_1000B0CA4();
        sub_100757C30();
        sub_10068275C();
        type metadata accessor for ModalViewState(0);
        sub_100017BC0();
        goto LABEL_10;
      case 3:
        v23 = sub_1000B0CA4();
        v24 = sub_10077DFAC(v23);
        *v15 = v24 & 1;
        v15[1] = HIBYTE(v24) & 1;
        type metadata accessor for ModalViewState(0);
        sub_100017BC0();
        goto LABEL_10;
      case 4:
        v25 = sub_1000B0CA4();
        sub_1007586B4(v25, v26, v27, v28, v29, v30, v31, v32, v54[0], v54[1], SWORD2(v54[1]), SBYTE6(v54[1]), HIBYTE(v54[1]));
        v34 = v33;
        v35 = v33 >> 24;
        v36 = v33 >> 8;
        type metadata accessor for NotificationsOptInViewState._Storage();
        v37 = swift_allocObject();
        *(v37 + 16) = v34;
        *(v37 + 17) = v36;
        *(v37 + 18) = BYTE2(v34) & 1;
        *(v37 + 21) = BYTE2(v35);
        *(v37 + 19) = v35;
        *(v37 + 22) = BYTE6(v34) & 1;
        *v15 = v37;
        type metadata accessor for ModalViewState(0);
        sub_100017BC0();
        goto LABEL_10;
      case 5:
        sub_1000B0CA4();
        sub_100756EA0();
        type metadata accessor for ReportWeatherViewState._Storage();
        v22 = swift_allocObject();
        memcpy((v22 + 16), v54, 0x60uLL);
        *v15 = v22;
        type metadata accessor for ModalViewState(0);
        sub_100017BC0();
        goto LABEL_10;
      case 6:
        type metadata accessor for ModalViewState.MapViewModal(0);
        sub_10068280C(&qword_100CD0030, type metadata accessor for ModalViewState.MapViewModal, "Em\x1B");
        sub_1000242B4();
        sub_10068280C(v38, type metadata accessor for ModalViewState.MapViewModal, v39);
        static Optional<A>.read(from:)();
        sub_100682654();
        type metadata accessor for ModalViewState(0);
        sub_100017BC0();
        goto LABEL_10;
      case 7:
        v40 = sub_1000B0CA4();
        sub_10077E028(v40, v41, v42, v43, v44, v45, v46, v47, v54[0], v54[1], SWORD2(v54[1]), SBYTE6(v54[1]), SHIBYTE(v54[1]), v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v54[9], v54[10], v54[11]);
        sub_10068275C();
        type metadata accessor for ModalViewState(0);
        sub_100017BC0();
LABEL_10:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F4A0();
        v50 = sub_10068280C(v48, v49, &protocol conformance descriptor for BinaryDecoder.Error);
        v51 = sub_100074D7C(v50);
        sub_10002C964(v51, v52);
        sub_100006494();
        (*(v53 + 104))();
        swift_willThrow();
        break;
    }
  }

  sub_100088758();
}

id sub_1006825F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithSymbol:v5 converter:a3];

  return v6;
}

uint64_t sub_100682654()
{
  sub_100003A00();
  sub_10022C350(v2, v3);
  sub_1000037E8();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_100682704(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10068275C()
{
  sub_100003A00();
  v2(0);
  sub_1000037E8();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1006827B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002C964(a1, a2);
  sub_10022C350(v3, v4);
  sub_1000037E8();
  (*(v5 + 8))(v2);
  return v2;
}

uint64_t sub_10068280C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double sub_100682854(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA24B8 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA24C8 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA24C0 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA24B0 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA24A8 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void *sub_1006829C0(char a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v80 = &v75 - v10;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v75 - v13;
  v15 = type metadata accessor for LocationComponentViewModel(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v75 - v19;
  __chkstk_darwin(v21);
  v23 = &v75 - v22;
  __chkstk_darwin(v24);
  v26 = &v75 - v25;
  v27 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  v32 = &v75 - v31;
  __chkstk_darwin(v33);
  v35 = &v75 - v34;
  sub_100682854(a1, a2);
  v37 = v36;
  v38 = OBJC_IVAR____TtCV7Weather22NoAqiSevereNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v38, v14, &qword_100CA5008, &unk_100A2F7B0);
  v39 = type metadata accessor for LocationComponentContainerViewModel(0);
  if (sub_100024D10(v14, 1, v39) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008, &unk_100A2F7B0);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v40], v23, v41);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v23, v26, v42);
    sub_100566A5C(v37, v83);
    if ((v84 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v26, v32, v44);
      v43 = 0;
      v45 = &v32[*(v6 + 20)];
      v46 = v83[1];
      *v45 = v83[0];
      *(v45 + 1) = v46;
      goto LABEL_7;
    }

    sub_1003169AC(v26, type metadata accessor for LocationComponentViewModel);
  }

  v43 = 1;
LABEL_7:
  v47 = v77;
  sub_10001B350(v32, v43, 1, v6);
  sub_1003168DC(v32, v35);
  sub_10001B350(v47, 1, 1, v6);
  sub_10001BD64();
  sub_10031694C(v48 + v49, v20, v50);
  sub_100566A94(v37, v85);
  v51 = v78;
  if (v86 & 1) != 0 || (sub_100011474(), v52 = v80, sub_1001B6FB0(v20, v80, v53), v54 = (v52 + *(v6 + 20)), v55 = v85[1], *v54 = v85[0], v54[1] = v55, sub_100035AD0(v35, v51, &qword_100CAC7F8, &qword_100A65EA0), sub_10001BD64(), v58 = v76, sub_10031694C(v56 + v57, v76, v59), sub_100566AB0(v37, v87), v60 = v81, (v88))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v58, v60, v61);
    v62 = (v60 + *(v6 + 20));
    v63 = v87[1];
    *v62 = v87[0];
    v62[1] = v63;
    sub_10001BD64();
    v66 = v79;
    sub_10031694C(v64 + v65, v79, v67);
    sub_100566AE8(v37, v89);
    if ((v90 & 1) == 0)
    {

      sub_100011474();
      v68 = v66;
      v69 = v82;
      sub_1001B6FB0(v68, v82, v70);
      v71 = (v69 + *(v6 + 20));
      v72 = v89[1];
      *v71 = v89[0];
      v71[1] = v72;
      v73 = sub_100924C14(v47, v52, v51, v60, v69);
      sub_1000180EC(v35, &qword_100CAC7F8, &qword_100A65EA0);
      return v73;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100682FD0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v116 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather22NoAqiSevereNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v121 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008, &unk_100A2F7B0);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v16 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather22NoAqiSevereNewsContent8_Storage_newsArticle, v21 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v24 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v118 = v13 + 2 * v14;
    v119 = v14;
    v30 = v14;
    v31 = swift_allocObject();
    v122 = xmmword_100A2D320;
    *(v31 + 16) = xmmword_100A2D320;
    v32 = a1;
    v33 = *(a1 + 16);
    v34 = v32;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v31 + v13 + v30, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v35;
    *(v12 + 144) = v36;
    v120 = v15;
    v37 = swift_allocObject();
    sub_1000056EC(v37);
    v39 = v38 + v13;
    v40 = *(v34 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v39 + v119, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v41;
    *(v12 + 168) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v13;
    v46 = v121;
    v47 = *(v121 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v48 = v119;
    sub_10031694C(v47 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v119, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v49;
    *(v12 + 192) = v50;
    v51 = sub_10000C998();
    sub_1000056EC(v51);
    v53 = v52 + v13;
    v54 = *(v46 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v53 + v48;
    v56 = v48;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 200) = sub_1001B38A0(v31);
    *(v12 + 208) = v57;
    *(v12 + 216) = v58;
    v59 = sub_10000C998();
    sub_100003E18(v59);
    v61 = v60 + v13;
    v62 = *(v46 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v13, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 224) = sub_1001B38A0(v59);
    *(v12 + 232) = v63;
    *(v12 + 240) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v65 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = v65;
    v70 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v70 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v71, v70 + v66, v72);
    *(v12 + 32) = sub_1001B38A0(v70);
    *(v12 + 40) = v73;
    *(v12 + 48) = v74;
    sub_100016B54();
    v75 = swift_allocObject();
    sub_1000056EC(v75);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather22NoAqiSevereNewsContent8_Storage_newsArticle, v70 + v66, v7);
    *(v12 + 56) = sub_1001B38A0(v70);
    *(v12 + 64) = v76;
    *(v12 + 72) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v70 + v66, v7);
    *(v12 + 80) = sub_1001B38A0(v70);
    *(v12 + 88) = v79;
    *(v12 + 96) = v80;
    sub_100016B54();
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v70 + v66, v7);
    *(v12 + 104) = sub_1001B38A0(v70);
    *(v12 + 112) = v82;
    *(v12 + 120) = v83;
    sub_100016B54();
    v120 = v69;
    v84 = swift_allocObject();
    sub_1000056EC(v84);
    sub_10031694C(v9, v85 + v66, v7);
    *(v12 + 128) = sub_1001B38A0(v70);
    *(v12 + 136) = v86;
    *(v12 + 144) = v87;
    v88 = v67;
    v119 = v68;
    v89 = v66 + 2 * v67;
    v90 = swift_allocObject();
    v116 = xmmword_100A2D320;
    *(v90 + 16) = xmmword_100A2D320;
    *&v122 = v9;
    v91 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v117 = v88;
    sub_10031694C(v91 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v90 + v66 + v88, v7);
    *(v12 + 152) = sub_1001B38A0(v90);
    *(v12 + 160) = v92;
    *(v12 + 168) = v93;
    v118 = v89;
    v94 = swift_allocObject();
    *(v94 + 16) = v116;
    v95 = v121;
    v96 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v94 + v66 + v88, v7);
    *(v12 + 176) = sub_1001B38A0(v94);
    *(v12 + 184) = v97;
    *(v12 + 192) = v98;
    v99 = swift_allocObject();
    *(v99 + 16) = 2;
    *(v99 + 24) = 4;
    v100 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v101 = v117;
    sub_10031694C(v100 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v99 + v66 + v117, v7);
    *(v12 + 200) = sub_1001B38A0(v99);
    *(v12 + 208) = v102;
    *(v12 + 216) = v103;
    v104 = swift_allocObject();
    v105 = sub_100017A70(v104) + v66;
    v106 = v121;
    v107 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v107 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v105 + v101, v7);
    *(v12 + 224) = sub_1001B38A0(v104);
    *(v12 + 232) = v108;
    *(v12 + 240) = v109;
    v110 = swift_allocObject();
    v111 = sub_100017A70(v110) + v66;
    v112 = *(v106 + 16);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v111, v7);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v111 + v101, v7);
    *(v12 + 248) = sub_1001B38A0(v110);
    *(v12 + 256) = v113;
    *(v12 + 264) = v114;
    sub_1003169AC(v122, v7);
  }

  return v12;
}

void sub_100683890()
{
  v34[0] = xmmword_100A2C3F0;
  v34[1] = xmmword_100A3BBF0;
  v33[0] = xmmword_100A3BB70;
  v33[1] = xmmword_100A3BBA0;
  v35 = v34;
  v36 = v33;
  v32[0] = xmmword_100A3BBB0;
  v32[1] = xmmword_100A3BC00;
  v31[0] = xmmword_100A3BB70;
  v31[1] = xmmword_100A3BBD0;
  v37 = v32;
  v38 = v31;
  v30[0] = xmmword_100A2C3F0;
  v30[1] = xmmword_100A3BC00;
  v29[0] = xmmword_100A3BB70;
  v29[1] = xmmword_100A41B80;
  v39 = v30;
  v40 = v29;
  v28[0] = xmmword_100A3BBB0;
  v28[1] = xmmword_100A3BBF0;
  v27[0] = xmmword_100A3BB70;
  v27[1] = xmmword_100A2C3F0;
  v41 = v28;
  v42 = v27;
  v26[0] = xmmword_100A2C3F0;
  v26[1] = xmmword_100A3BBC0;
  v25[0] = xmmword_100A2C3F0;
  v25[1] = xmmword_100A3BC10;
  v43 = v26;
  v44 = v25;
  v24[0] = xmmword_100A3BB70;
  v24[1] = xmmword_100A3BBB0;
  *(&v22 + 1) = 2;
  v23 = xmmword_100A3BC20;
  sub_10003C6E4(v24, v12, v13, v14, v15, v16, *(&v16 + 1), v17, *(&v17 + 1), v18, v19, v20, v21, 1);
  v16 = v0;
  v17 = v1;
  v45 = v2;
  v46 = &v16;
  sub_10004E8D4(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  qword_100D90760 = v11;
}

void sub_10068399C()
{
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BC00;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBA0;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC20;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3BBD0;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A2C3F0;
  v10[1] = xmmword_100A3BC20;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BC00;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A2C3F0;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC10;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC30;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v23 = v6;
  v24 = v5;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BB80;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BB80;
  v25 = v4;
  v26 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC10;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC30;
  v27 = v2;
  v28 = v1;
  sub_10055A878();
  qword_100D90768 = v0;
}

void sub_100683AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BB80;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBA0;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BB80;
  v19[0] = 0;
  v19[1] = 4;
  v20 = xmmword_100A3BBD0;
  v26 = v21;
  v27 = v19;
  v18[0] = xmmword_100A3BBD0;
  v18[1] = xmmword_100A3BC50;
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BB70;
  v28 = v18;
  v29 = v17;
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BC50;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v30 = v16;
  v31 = v15;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BB80;
  v13[0] = xmmword_100A3BBB0;
  v13[1] = xmmword_100A3BB80;
  v32 = v14;
  v33 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC60;
  v34 = v12;
  v35 = v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC40;
  v36 = v10;
  v37 = v9;
  sub_10004E8D4(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D90770 = v8;
}

void sub_100683BC4()
{
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BC50;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v17 = v16;
  v18 = v15;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BC50;
  v11 = 0;
  v12 = xmmword_100A3BC70;
  v13 = 2;
  v19 = v14;
  v20 = &v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v21 = v10;
  v22 = v9;
  v8[0] = xmmword_100A2D320;
  v8[1] = xmmword_100A3BBB0;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BC50;
  v23 = v8;
  v24 = v7;
  v6[0] = xmmword_100A3BBB0;
  v6[1] = xmmword_100A3BC50;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v25 = v6;
  v26 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v27 = v4;
  v28 = v3;
  v2[0] = xmmword_100A3BC40;
  v2[1] = xmmword_100A3BBD0;
  v1[0] = xmmword_100A3BBD0;
  v1[1] = xmmword_100A3BBD0;
  v29 = v2;
  v30 = v1;
  sub_10055A878();
  qword_100D90778 = v0;
}

void sub_100683CE0()
{
  v37[0] = xmmword_100A3BC50;
  v37[1] = xmmword_100A3BC60;
  v35 = 1;
  v36 = 4;
  v38 = v37;
  v39 = &v34;
  v33[0] = xmmword_100A3BC60;
  v33[1] = xmmword_100A3BC40;
  v34 = xmmword_100A3BB70;
  v32[0] = xmmword_100A41B90;
  v32[1] = xmmword_100A3BBB0;
  v40 = v33;
  v41 = v32;
  v31[0] = xmmword_100A3BBD0;
  v31[1] = xmmword_100A3BC60;
  v30[0] = xmmword_100A3BC90;
  v30[1] = xmmword_100A3BD20;
  v42 = v31;
  v43 = v30;
  v29[0] = xmmword_100A3BB70;
  v29[1] = xmmword_100A3BC60;
  v28[0] = xmmword_100A2D320;
  v28[1] = xmmword_100A2C3F0;
  v44 = v29;
  v45 = v28;
  v27[0] = xmmword_100A3BC60;
  v27[1] = xmmword_100A3BC60;
  v26[0] = xmmword_100A3BC40;
  v26[1] = xmmword_100A3BC40;
  v46 = v27;
  v47 = v26;
  v25[0] = xmmword_100A3BB70;
  v25[1] = xmmword_100A3BBB0;
  *(&v23 + 1) = 3;
  v24 = xmmword_100A3BC40;
  sub_10003C6E4(v25, v13, v14, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20, v21, v22, 2);
  v17 = v1;
  v18 = v0;
  v48 = v2;
  v49 = &v17;
  sub_10004E8D4(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  qword_100D90780 = v12;
}

uint64_t sub_100683DF8(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v35 = v6;
  __chkstk_darwin(v7);
  sub_100003878();
  v34 = v8;
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for LocationViewComponent(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v32 - v24;

  sub_1005D71C4(v26, a2);
  v33 = v27;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather36LocationNoAqiSevereNewsConfiguration8_Storage_map, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_10001B350(v25, 0, 1, v4);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather36LocationNoAqiSevereNewsConfiguration8_Storage_newsArticle, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather36LocationNoAqiSevereNewsConfiguration8_Storage_severeAlert, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v25, v22, &qword_100CA5008, &unk_100A2F7B0);
  v28 = v34;
  sub_10031694C(v14, v34, type metadata accessor for LocationComponentContainerViewModel);
  v29 = v35;
  sub_10031694C(v11, v35, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for NoAqiSevereNewsContent._Storage(0);
  swift_allocObject();
  v30 = sub_1002D4374(v33, v22, v28, v29);
  sub_1003169AC(v11, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v25, &qword_100CA5008, &unk_100A2F7B0);
  return v30;
}

uint64_t sub_100684140()
{
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100014C64();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_10022C350(&qword_100CC74A0, &qword_100A63CA0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  result = sub_100004594(32, 0x8000000100ADAD60);
  qword_100D90790 = result;
  return result;
}

uint64_t sub_1006842A4()
{
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100014C64();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_10022C350(&qword_100CC74A0, &qword_100A63CA0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  result = sub_100004594(42, 0x8000000100ADAD30);
  qword_100D907B0 = result;
  return result;
}

uint64_t sub_100684430(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4C52556F676F6CLL && a2 == 0xE700000000000000)
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

uint64_t sub_100684538(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0x4C52556F676F6CLL;
}

uint64_t sub_100684584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100684430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006845AC(uint64_t a1)
{
  v2 = sub_100684E14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006845E8(uint64_t a1)
{
  v2 = sub_100684E14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100684654(void *a1)
{
  v3 = sub_10022C350(&qword_100CD0248, &qword_100A74A38);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_100684E14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for NewsChannel(0);
    v10[13] = 2;
    type metadata accessor for URL();
    sub_10032DEB8(&qword_100CAA9C8, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_100684810@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  sub_10022C350(&qword_100CD0238, &qword_100A74A30);
  sub_1000037C4();
  v21 = v8;
  v22 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for NewsChannel(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000161C0(a1, a1[3]);
  sub_100684E14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v19 = v10;
  v25 = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v14;
  v24 = 1;
  v13[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v13[3] = v15;
  type metadata accessor for URL();
  v23 = 2;
  sub_10032DEB8(&qword_100CAAB78, &protocol conformance descriptor for URL);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = sub_10001C9C4();
  v17(v16);
  sub_10043D988(v6, v13 + *(v19 + 24));
  sub_100684E68(v13, v20);
  sub_100006F14(a1);
  return sub_100684ECC(v13);
}

BOOL sub_100684B0C(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_10022C350(qword_100CAD4D0, &unk_100A3EA40);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  v17 = *a1 == *a2 && a1[1] == a2[1];
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v18 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v19 = *(type metadata accessor for NewsChannel(0) + 24);
  v20 = *(v13 + 48);
  sub_1000E594C(a1 + v19, v16);
  sub_1000E594C(a2 + v19, &v16[v20]);
  sub_100003A40(v16);
  if (!v17)
  {
    sub_1000E594C(v16, v12);
    sub_100003A40(&v16[v20]);
    if (!v21)
    {
      (*(v6 + 32))(v9, &v16[v20], v4);
      sub_10032DEB8(qword_100CAD328, &protocol conformance descriptor for URL);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v6 + 8);
      v24(v9, v4);
      v24(v12, v4);
      sub_1000180EC(v16, &qword_100CB3AB0, &unk_100A2FB80);
      return (v23 & 1) != 0;
    }

    (*(v6 + 8))(v12, v4);
LABEL_19:
    sub_1000180EC(v16, qword_100CAD4D0, &unk_100A3EA40);
    return 0;
  }

  sub_100003A40(&v16[v20]);
  if (!v17)
  {
    goto LABEL_19;
  }

  sub_1000180EC(v16, &qword_100CB3AB0, &unk_100A2FB80);
  return 1;
}

unint64_t sub_100684E14()
{
  result = qword_100CD0240;
  if (!qword_100CD0240)
  {
    result = swift_getWitnessTable(byte_100A74B04, &type metadata for NewsChannel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD0240);
  }

  return result;
}

uint64_t sub_100684E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsChannel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100684ECC(uint64_t a1)
{
  v2 = type metadata accessor for NewsChannel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for NewsChannel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100685008()
{
  result = qword_100CD0250;
  if (!qword_100CD0250)
  {
    result = swift_getWitnessTable(aJ_5, &type metadata for NewsChannel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD0250);
  }

  return result;
}

unint64_t sub_100685060()
{
  result = qword_100CD0258;
  if (!qword_100CD0258)
  {
    result = swift_getWitnessTable(byte_100A74A4C, &type metadata for NewsChannel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD0258);
  }

  return result;
}

unint64_t sub_1006850B8()
{
  result = qword_100CD0260;
  if (!qword_100CD0260)
  {
    result = swift_getWitnessTable(aM_68, &type metadata for NewsChannel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD0260);
  }

  return result;
}

void sub_10068511C(uint64_t *a1)
{
  v2 = *(sub_10022C350(&qword_100CAC4D0, &qword_100A74C00) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100309240();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_100687DE0(v6);
  *a1 = v3;
}

uint64_t sub_1006851D0()
{
  sub_100003B08();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_10022C350(&qword_100CAC4D0, &qword_100A74C00);
  v1[7] = v5;
  sub_100003AE8(v5);
  v1[8] = v6;
  v1[9] = sub_100037C4C();
  v1[10] = swift_task_alloc();
  v7 = type metadata accessor for EdgeSunEvents(0);
  v1[11] = v7;
  sub_100003810(v7);
  v1[12] = sub_1000134B0();
  v8 = type metadata accessor for MaxDaylight(0);
  v1[13] = v8;
  sub_100003810(v8);
  v1[14] = sub_1000134B0();
  v9 = type metadata accessor for DaylightData(0);
  v1[15] = v9;
  sub_100003810(v9);
  v1[16] = sub_1000134B0();
  v10 = type metadata accessor for Date();
  v1[17] = v10;
  sub_100003AE8(v10);
  v1[18] = v11;
  v1[19] = sub_100037C4C();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v12 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v12);
  v1[27] = sub_100037C4C();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v13 = type metadata accessor for DateComponents();
  v1[32] = v13;
  sub_100003AE8(v13);
  v1[33] = v14;
  v1[34] = sub_1000134B0();
  v15 = type metadata accessor for Calendar();
  v1[35] = v15;
  sub_100003AE8(v15);
  v1[36] = v16;
  v1[37] = sub_100037C4C();
  v1[38] = swift_task_alloc();
  v17 = type metadata accessor for TimeZone();
  v1[39] = v17;
  sub_100003AE8(v17);
  v1[40] = v18;
  v1[41] = sub_1000134B0();
  v19 = sub_100013484();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_1006854E8()
{
  v1 = v0[41];
  v2 = v0[29];
  v3 = v0[17];
  type metadata accessor for SunriseSunsetProportionCalculator();
  v128 = swift_allocObject();
  v0[42] = v128;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  sub_1009FBBFC(v1);
  Calendar.date(from:)();
  sub_100095588();
  if (sub_100024D10(v2, 1, v3) == 1)
  {
    sub_1000180EC(v0[29], &unk_100CB2CF0, &unk_100A2D7F0);
    v4 = 1;
  }

  else
  {
    v5 = v0[36];
    v6 = v0[37];
    v7 = v0[35];
    v8 = v0[29];
    v9 = v0[17];
    v10 = v0[18];
    static Calendar.current.getter();
    Date.wc_addDays(_:calendar:)();
    (*(v5 + 8))(v6, v7);
    (*(v10 + 8))(v8, v9);
    v4 = 0;
  }

  v11 = v0[28];
  v12 = v0[17];
  sub_10001B350(v0[30], v4, 1, v12);
  sub_100119F7C();
  v13 = static NSDateFormatter.shortMonthNameFormatter(with:)();
  v0[43] = v13;
  v14 = static NSDateFormatter.longMonthNameFormatter(with:)();
  v0[44] = v14;
  sub_100095588();
  v127 = v13;
  if (sub_100024D10(v11, 1, v12) != 1)
  {
    v125 = v14;
    v15 = v0[27];
    v16 = v0[17];
    v17 = *(v0[18] + 32);
    v17(v0[26], v0[28], v16);
    sub_100095588();
    v18 = sub_100024D10(v15, 1, v16);
    v19 = v0[17];
    if (v18 == 1)
    {
      v20 = v0[26];
      v21 = v0[18];
      sub_1000180EC(v0[27], &unk_100CB2CF0, &unk_100A2D7F0);
      (*(v21 + 8))(v20, v19);
      v14 = v125;
      goto LABEL_8;
    }

    v33 = v0[16];
    v34 = v0[6];
    v35 = v0[4];
    v17(v0[25], v0[27], v0[17]);
    sub_1000161C0((v34 + 40), *(v34 + 64));
    sub_10082D7BC(v35, v33);
    v0[45] = 0;
    sub_100689284();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v0[26];
      v117 = v0[24];
      v37 = v0[20];
      v114 = v0[19];
      v39 = v0[17];
      v38 = v0[18];
      v40 = v0[14];
      v41 = *(sub_10022C350(&qword_100CD0268, &unk_100A74C08) + 48);
      v17(v37, v40, v39);
      v17(v114, v40 + v41, v39);
      (*(v38 + 16))(v117, v36, v39);
      Date.timeIntervalSince(_:)();
      v43 = v42;
      if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v42 > -9.22337204e18)
        {
          if (v42 < 9.22337204e18)
          {
            Date.timeIntervalSince(_:)();
            v45 = v44;
            v46 = static NSDateFormatter.timeDurationWithZeroPaddingFormatter.getter();
            v47 = [v46 stringFromTimeInterval:v45];

            if (v47)
            {
              countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
              object = v48;

              sub_10000CDBC();
              v50 = static Date.formattedShortMonthAndDayRange(date1:date2:timeZone:)();
              if (v51)
              {
                v52 = v50;
                v53 = v51;
                v54 = v43;
                v55 = v0[20];
                v56 = v0[17];
                v57 = *(v0[18] + 8);
                v57(v0[19], v56);
                v58 = v55;
                goto LABEL_23;
              }
            }

            v92 = v0[25];
            v123 = v0[24];
            v93 = v0[19];
            v85 = v0[17];
            v94 = v0[18];
            v86 = v0[16];
            sub_100687C8C();
            swift_allocError();
            swift_willThrow();
            v89 = *(v94 + 8);
            v89(v93, v85);
            v95 = sub_100017B70();
            (v89)(v95);
            v91 = v92;
            goto LABEL_29;
          }

LABEL_40:
          __break(1u);
          return withTaskGroup<A, B>(of:returning:isolation:body:)();
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else
    {
      v59 = v0[23];
      v112 = v0[22];
      v115 = v0[21];
      v60 = v0[17];
      v61 = v0[14];
      v62 = sub_10022C350(&qword_100CD0278, &qword_100A74C30);
      v63 = *(v62 + 48);
      v64 = *(v62 + 64);
      v17(v59, v61, v60);
      v17(v112, v61 + v63, v60);
      v17(v115, v61 + v64, v60);
      sub_10068922C();
      v65 = Date.secondsSinceMidnight(calendar:)();
      v66 = Date.secondsSinceMidnight(calendar:)();
      v67 = v65 - v66;
      if (!__OFSUB__(v65, v66))
      {
        (*(v0[18] + 16))(v0[24], v0[12], v0[17]);
        Date.timeIntervalSince(_:)();
        v68 = Date.formattedShortMonthAndDay(timeZone:)();
        v53 = v69;
        v70 = Double.formatTimeDuration()();
        countAndFlagsBits = v70.value._countAndFlagsBits;
        if (v70.value._object)
        {
          object = v70.value._object;
          v118 = v67;
          v71 = v68;
          v73 = v0[22];
          v72 = v0[23];
          v74 = v0[21];
          v56 = v0[17];
          v75 = v0[18];
          sub_1000064A4();
          sub_1006891D4(v76, v77);
          v57 = *(v75 + 8);
          v57(v74, v56);
          v57(v73, v56);
          v58 = v72;
          v52 = v71;
          v54 = v118;
LABEL_23:
          v57(v58, v56);
          v0[49] = v52;
          v0[50] = v53;
          v0[47] = countAndFlagsBits;
          v0[48] = object;
          v0[46] = v57;
          v78 = v0[41];
          v79 = v0[26];
          v80 = v0[24];
          v81 = v0[16];
          sub_100673874();
          v0[2] = Dictionary.init(dictionaryLiteral:)();
          sub_10022C350(&qword_100CA58D0, &qword_100A2FD80);
          v82 = swift_task_alloc();
          v0[51] = v82;
          v82[2] = v81;
          v82[3] = v128;
          v82[4] = v78;
          v82[5] = v54;
          v82[6] = v80;
          v82[7] = v125;
          v82[8] = v127;
          v82[9] = v79;
          v82[10] = v0 + 2;
          v83 = swift_task_alloc();
          v0[52] = v83;
          *v83 = v0;
          v83[1] = sub_100686224;

          return withTaskGroup<A, B>(of:returning:isolation:body:)();
        }

        v119 = v0[25];
        v123 = v0[24];
        v113 = v0[22];
        v116 = v0[23];
        v85 = v0[17];
        v84 = v0[18];
        v86 = v0[16];
        v87 = v0[12];

        sub_100687C8C();
        swift_allocError();
        swift_willThrow();
        sub_1000064A4();
        sub_1006891D4(v87, v88);
        v89 = *(v84 + 8);
        v90 = sub_100017B70();
        (v89)(v90);
        v89(v113, v85);
        v89(v116, v85);
        v91 = v119;
LABEL_29:
        v89(v91, v85);
        v89(v123, v85);
        sub_100008C2C();
        sub_1006891D4(v86, v96);
        v89(v0[26], v0[17]);
        if (qword_100CA2700 != -1)
        {
          sub_100003AB0(&qword_100CA2700);
        }

        v97 = type metadata accessor for Logger();
        sub_10000703C(v97, qword_100D90B68);
        swift_errorRetain();
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          *v100 = 138412290;
          swift_errorRetain();
          v102 = _swift_stdlib_bridgeErrorToNSError();
          *(v100 + 4) = v102;
          *v101 = v102;
          _os_log_impl(&_mh_execute_header, v98, v99, "Failed to generate SunriseSunsetMonthlyViewModel error:%@", v100, 0xCu);
          sub_1000180EC(v101, &qword_100CBE0F8, &qword_100A55780);
        }

        v103 = v0[36];
        v120 = v0[35];
        v124 = v0[38];
        v105 = v0[33];
        v104 = v0[34];
        v107 = v0[31];
        v106 = v0[32];
        v30 = v0[30];
        v108 = v0[3];

        type metadata accessor for SunriseSunsetMonthlyViewModel(0);
        WeatherDescription.init(stringLiteral:)();

        sub_1000180EC(v30, &unk_100CB2CF0, &unk_100A2D7F0);
        v29 = v108;
        sub_1000180EC(v107, &unk_100CB2CF0, &unk_100A2D7F0);
        (*(v105 + 8))(v104, v106);
        (*(v103 + 8))(v124, v120);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  sub_1000180EC(v0[28], &unk_100CB2CF0, &unk_100A2D7F0);
LABEL_8:
  if (qword_100CA2700 != -1)
  {
    sub_100003AB0(&qword_100CA2700);
  }

  v22 = type metadata accessor for Logger();
  sub_10000703C(v22, qword_100D90B68);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Failed to generate midnight", v25, 2u);
  }

  v26 = v0[36];
  v121 = v0[35];
  v126 = v0[38];
  v27 = v0[31];
  v28 = v0[30];
  v29 = v0[3];

  type metadata accessor for SunriseSunsetMonthlyViewModel(0);
  WeatherDescription.init(stringLiteral:)();

  v30 = &unk_100CB2CF0;
  sub_1000180EC(v28, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000180EC(v27, &unk_100CB2CF0, &unk_100A2D7F0);
  v31 = sub_10000CDBC();
  v32(v31);
  (*(v26 + 8))(v126, v121);
LABEL_34:
  *v29 = _swiftEmptyArrayStorage;
  sub_100019C7C();
  (*(v109 + 8))(v30);

  sub_100003B14();

  return v110();
}

uint64_t sub_100686224()
{
  sub_100003B08();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100686328()
{
  v53 = v0;
  v1 = v0[45];
  v52[0] = sub_1003072E4(v0[2]);
  sub_10068511C(v52);
  if (v1)
  {
  }

  else
  {
    v3 = v52[0];
    v4 = *(v52[0] + 16);
    if (v4)
    {
      v5 = v0[8];
      v50 = v0[7];
      sub_1006A792C(0, v4, 0);
      v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v47 = *(v5 + 72);
      for (i = v4 - 1; ; --i)
      {
        v8 = v0[46];
        v9 = v0[17];
        v10 = v0[9];
        sub_100095588();
        sub_10000CDBC();
        sub_100051BBC();
        memcpy(v52, (v10 + *(v50 + 48)), 0x50uLL);
        v8(v10, v9);
        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_1006A792C((v11 > 1), v12 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v12 + 1;
        memcpy(&_swiftEmptyArrayStorage[10 * v12 + 4], v52, 0x50uLL);
        if (!i)
        {
          break;
        }

        v6 += v47;
      }
    }

    v32 = v0[49];
    v33 = v0[50];
    v13 = v0[48];
    v30 = v0[47];
    v36 = v0[44];
    v37 = v0[43];
    v44 = v0[36];
    v46 = v0[35];
    v43 = v0[34];
    v41 = v0[33];
    v42 = v0[32];
    v39 = v0[46];
    v40 = v0[31];
    v38 = v0[30];
    v49 = v0[38];
    v51 = v0[26];
    v48 = v0[24];
    v35 = v0[25];
    v34 = v0[17];
    v45 = v0[16];
    v31 = v0[3];
    v14 = [objc_opt_self() mainBundle];
    v55._object = 0x8000000100ADAE10;
    v15._countAndFlagsBits = 0xD000000000000030;
    v15._object = 0x8000000100ADADB0;
    v16._object = 0x8000000100ADADF0;
    v55._countAndFlagsBits = 0xD000000000000102;
    v16._countAndFlagsBits = 0xD00000000000001BLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v55);

    sub_10022C350(&qword_100CA5408, &unk_100A533E0);
    v17 = type metadata accessor for WeatherDescription.Argument();
    sub_1000037C4();
    v19 = v18;
    v21 = *(v20 + 72);
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100A2D320;
    v24 = (v23 + v22);
    *v24 = v30;
    v24[1] = v13;
    v25 = *(v19 + 104);
    (v25)(v24, enum case for WeatherDescription.Argument.time(_:), v17);
    v26 = (v24 + v21);
    *v26 = v32;
    v26[1] = v33;
    v25();
    type metadata accessor for SunriseSunsetMonthlyViewModel(0);
    sub_10000CDBC();
    WeatherDescription.init(format:_:)();

    v39(v35, v34);
    sub_1000180EC(v38, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1000180EC(v40, &unk_100CB2CF0, &unk_100A2D7F0);
    (*(v41 + 8))(v43, v42);
    (*(v44 + 8))(v49, v46);

    *v31 = _swiftEmptyArrayStorage;
    v39(v48, v34);
    sub_100008C2C();
    sub_1006891D4(v45, v27);
    v39(v51, v34);
    sub_100019C7C();
    (*(v28 + 8))(&unk_100A2D7F0);

    sub_100003B14();

    return v29();
  }
}

uint64_t sub_100686940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 416) = v13;
  *(v8 + 400) = v12;
  *(v8 + 384) = a7;
  *(v8 + 392) = a8;
  *(v8 + 368) = a5;
  *(v8 + 376) = a6;
  *(v8 + 352) = a3;
  *(v8 + 360) = a4;
  *(v8 + 344) = a2;
  *(v8 + 424) = sub_10022C350(&qword_100CA58D0, &qword_100A2FD80);
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  sub_10022C350(&qword_100CD0280, &qword_100A74C38);
  *(v8 + 456) = swift_task_alloc();
  v9 = sub_10022C350(&qword_100CD0288, &qword_100A74C40);
  *(v8 + 464) = v9;
  *(v8 + 472) = *(v9 - 8);
  *(v8 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_100686AB8, 0, 0);
}

uint64_t sub_100686AB8()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);
  v3 = **(v0 + 352);
  v4 = swift_task_alloc();
  v5 = *(v0 + 360);
  v6 = *(v0 + 384);
  v7 = *(v0 + 400);
  *(v4 + 16) = v2;
  *(v4 + 24) = v5;
  *(v4 + 40) = v1;
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  sub_10051AE0C(sub_100688F1C, v4, v3);

  TaskGroup.makeAsyncIterator()();
  v8 = swift_task_alloc();
  *(v0 + 488) = v8;
  *v8 = v0;
  v9 = sub_10001077C(v8);

  return TaskGroup.Iterator.next(isolation:)(v9);
}

uint64_t sub_100686BC0()
{
  sub_100003B08();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100686CA8()
{
  v1 = v0[57];
  v2 = v0[53];
  if (sub_100024D10(v1, 1, v2) == 1)
  {
    (*(v0[59] + 8))(v0[60], v0[58]);

    sub_100003B14();
    sub_1000208FC();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[55];
  v5 = v0[56];
  v7 = v0[54];
  v8 = v0[52];
  v9 = *(v2 + 48);
  memcpy(v0 + 22, (v1 + v9), 0x50uLL);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v38 = v10;
  (*(v11 + 32))(v5, v1);
  memcpy((v5 + v9), v0 + 22, 0x50uLL);
  sub_100095588();
  memcpy(v0 + 12, (v6 + *(v2 + 48)), 0x50uLL);
  sub_100688F50((v0 + 12));
  sub_100095588();
  memcpy(v0 + 2, (v7 + *(v2 + 48)), 0x50uLL);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v8;
  v0[42] = *v8;
  *v8 = 0x8000000000000000;
  sub_100237FB4();
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_21;
  }

  v19 = v14;
  v20 = v15;
  sub_10022C350(&qword_100CD0290, &qword_100A74C48);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18))
  {
    v23 = v38;
LABEL_13:
    v26 = v0[56];
    if (v20)
    {
      v27 = v0[42];
      v28 = (v27[7] + 80 * v19);
      memcpy(v0 + 32, v28, 0x50uLL);
      memcpy(v28, v0 + 2, 0x50uLL);
      sub_100688F50((v0 + 32));
      sub_1000180EC(v26, &qword_100CA58D0, &qword_100A2FD80);
      goto LABEL_17;
    }

    v29 = v0[55];
    v27 = v0[42];
    v27[(v19 >> 6) + 8] |= 1 << v19;
    (*(v11 + 16))(v27[6] + *(v11 + 72) * v19, v29, v23);
    memcpy((v27[7] + 80 * v19), v0 + 2, 0x50uLL);
    v14 = sub_1000180EC(v26, &qword_100CA58D0, &qword_100A2FD80);
    v30 = v27[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      v27[2] = v32;
LABEL_17:
      v34 = v0[54];
      v33 = v0[55];
      *v0[52] = v27;

      v35 = *(v11 + 8);
      v35(v33, v23);
      v35(v34, v23);
      v36 = swift_task_alloc();
      v0[61] = v36;
      *v36 = v0;
      sub_10001077C(v36);
      sub_1000208FC();

      return TaskGroup.Iterator.next(isolation:)(v14);
    }

LABEL_21:
    __break(1u);
    return TaskGroup.Iterator.next(isolation:)(v14);
  }

  sub_100237FB4();
  v23 = v38;
  if ((v20 & 1) == (v22 & 1))
  {
    v19 = v21;
    goto LABEL_13;
  }

  sub_1000208FC();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1006870A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9)
{
  v60 = a2;
  v58 = a7;
  v59 = a8;
  v55 = a6;
  v56 = a3;
  v57 = a5;
  v51 = a1;
  v53 = a4;
  v54 = a9;
  v9 = type metadata accessor for Date();
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = v61[8];
  __chkstk_darwin(v9);
  v63 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v49 = &v44 - v12;
  v14 = type metadata accessor for TimeZone();
  v47 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v48 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CC3798, &unk_100A74C50);
  v50 = *(v17 - 8);
  v18 = *(v50 + 64);
  __chkstk_darwin(v17 - 8);
  v46 = &v44 - v19;
  v20 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v20 - 8);
  v22 = &v44 - v21;
  v52 = &v44 - v21;
  v23 = type metadata accessor for TaskPriority();
  sub_10001B350(v22, 1, 1, v23);
  sub_100095588();
  v45 = v15;
  (*(v15 + 16))(&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v14);
  v25 = v61;
  v24 = v62;
  v26 = v61[2];
  v26(v13, v55, v62);
  v26(v63, v54, v24);
  v27 = (v18 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v15 + 80) + v27 + 8) & ~*(v15 + 80);
  v29 = (v16 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v25 + 80);
  v31 = (v30 + 8 + v29) & ~v30;
  v32 = (v10 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v30 + 8 + v33) & ~v30;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  sub_100051BBC();
  *(v35 + v27) = v56;
  (*(v45 + 32))(v35 + v28, v48, v47);
  *(v35 + v29) = v57;
  v36 = v62;
  v37 = v61[4];
  v37(v35 + v31, v49, v62);
  v38 = v58;
  *(v35 + v32) = v58;
  v39 = v59;
  *(v35 + v33) = v59;
  v37(v35 + v34, v63, v36);

  v40 = v38;
  v41 = v39;
  v42 = v52;
  sub_10027C40C(v52, &unk_100A74C70, v35);
  return sub_1000180EC(v42, &qword_100CA3538, &qword_100A2D560);
}

uint64_t sub_1006874F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v13;
  *(v8 + 64) = v12;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  type metadata accessor for MonthSunAverage(0);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = sub_10022C350(&qword_100CC3798, &unk_100A74C50);
  *(v8 + 128) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_1006876A4, 0, 0);
}

uint64_t sub_1006876A4()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  sub_100095588();
  v7 = *(v5 + 48);
  v88 = *(v3 + 32);
  v88(v1, v4, v2);
  sub_1006891D4(v4 + v7, type metadata accessor for MonthSunAverage);
  sub_100095588();
  v86 = v5;
  sub_10068922C();
  v87 = *(v3 + 8);
  v87(v4, v2);
  sub_100003940();
  sub_100689284();
  v8 = sub_10022C350(&qword_100CD0298, &qword_100A74C68);
  v9 = sub_100024D10(v6, 2, v8);
  v10 = v0[21];
  if (v9)
  {
    if (v9 == 1)
    {
      v11.super.isa = sub_10000ECA0().super.isa;
      v12 = sub_10004E8F0(v11.super.isa);

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v14;
      v84 = v13;

      v15.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v16 = sub_10002C970(v15.super.isa);

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v18;
      v80 = v17;

      v19 = Date.formattedTime(timeZone:)();
      v76 = v20;
      v77 = v19;
      v21 = Date.formattedTime(timeZone:)();
      v72 = v22;
      v74 = v21;
      v23 = 0.0;
      v24 = 0;
    }

    else
    {
      v51.super.isa = sub_10000ECA0().super.isa;
      v52 = sub_10004E8F0(v51.super.isa);

      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v54;
      v84 = v53;

      v55.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v56 = sub_10002C970(v55.super.isa);

      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v58;
      v80 = v57;

      v59 = Date.formattedTime(timeZone:)();
      v76 = v60;
      v77 = v59;
      v61 = Date.formattedTime(timeZone:)();
      v72 = v62;
      v74 = v61;
      v24 = 0;
      v23 = 1.0;
    }
  }

  else
  {
    v26 = v0[19];
    v25 = v0[20];
    v27 = v0[17];
    v28 = v0[12];
    v29 = v0[13];
    v30 = v0[11];
    v85 = v0[8];
    v81 = v0[9];
    v83 = v0[7];
    v78 = v0[6];
    v73 = v0[18];
    v75 = v0[5];
    v31 = *(v8 + 48);
    v71 = v25;
    v88(v25, v29, v27);
    v88(v26, v29 + v31, v27);
    v32 = *(v73 + 16);
    v32(v28, v25, v27);
    sub_100016CE4(v28);
    v32(v30, v26, v27);
    sub_100016CE4(v30);
    sub_10030A098(v28, v30, v75, v78);
    v23 = v33;
    sub_1000180EC(v30, &unk_100CB2CF0, &unk_100A2D7F0);
    v34 = sub_100017B70();
    sub_1000180EC(v34, v35, &unk_100A2D7F0);
    v32(v28, v25, v27);
    sub_100016CE4(v28);
    sub_10030A93C(v28, v75, v83, v78);
    v24 = v36;
    v37 = sub_100017B70();
    sub_1000180EC(v37, v38, &unk_100A2D7F0);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v40 = [v85 stringFromDate:isa];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v42;
    v84 = v41;

    v43 = Date._bridgeToObjectiveC()().super.isa;
    v44 = [v81 stringFromDate:v43];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v46;
    v80 = v45;

    v47 = Date.formattedTime(timeZone:)();
    v76 = v48;
    v77 = v47;
    v49 = Date.formattedTime(timeZone:)();
    v72 = v50;
    v74 = v49;
    v87(v26, v27);
    v87(v71, v27);
  }

  v63 = v0[21];
  v64 = v0[16];
  v65 = v0[17];
  v66 = v0[2];
  sub_1006891D4(v0[14], type metadata accessor for MonthSunAverage);
  v87(v63, v65);
  v67 = (v66 + *(sub_10022C350(&qword_100CA58D0, &qword_100A2FD80) + 48));
  sub_100095588();
  v68 = *(v86 + 48);
  v88(v66, v64, v65);
  *v67 = v84;
  *(v67 + 1) = v82;
  *(v67 + 2) = v80;
  *(v67 + 3) = v79;
  *(v67 + 4) = v77;
  *(v67 + 5) = v76;
  *(v67 + 6) = v74;
  *(v67 + 7) = v72;
  v67[8] = v23;
  *(v67 + 9) = v24;
  sub_1006891D4(v64 + v68, type metadata accessor for MonthSunAverage);

  sub_100003B14();

  return v69();
}

unint64_t sub_100687C8C()
{
  result = qword_100CD0270;
  if (!qword_100CD0270)
  {
    result = swift_getWitnessTable(byte_100A74CF0, &type metadata for SunriseSunsetMonthlyViewModelFactory.FactoryError, v0, v1);
    atomic_store(result, &qword_100CD0270);
  }

  return result;
}

uint64_t sub_100687CE0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000FE59C;

  return sub_100686940(a1, a2, v6, v7, v8, v9, v10, v11);
}

void sub_100687DE0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10022C350(&qword_100CAC4D0, &qword_100A74C00);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10022C350(&qword_100CAC4D0, &qword_100A74C00) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100688170(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100687F28(0, v2, 1, a1);
  }
}

void sub_100687F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = sub_10022C350(&qword_100CAC4D0, &qword_100A74C00);
  __chkstk_darwin(v33);
  v32 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v26 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v31 = v16;
    v25 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v29 = v18;
      v30 = a3;
      v27 = v21;
      v28 = v20;
      do
      {
        sub_100095588();
        sub_100095588();
        v22 = static Date.< infix(_:_:)();
        sub_1000180EC(v11, &qword_100CAC4D0, &qword_100A74C00);
        sub_1000180EC(v15, &qword_100CAC4D0, &qword_100A74C00);
        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v31)
        {
          __break(1u);
          return;
        }

        sub_100051BBC();
        swift_arrayInitWithTakeFrontToBack();
        sub_100051BBC();
        v18 += v19;
        v21 += v19;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v30 + 1;
      v18 = v29 + v25;
      v20 = v28 - 1;
      v21 = v27 + v25;
      if (v30 + 1 != v26)
      {
        continue;
      }

      break;
    }
  }
}

void sub_100688170(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v111 = a1;
  v124 = sub_10022C350(&qword_100CAC4D0, &qword_100A74C00);
  v120 = *(v124 - 8);
  __chkstk_darwin(v124);
  v115 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v123 = &v108 - v10;
  __chkstk_darwin(v11);
  v126 = &v108 - v12;
  __chkstk_darwin(v13);
  v125 = &v108 - v14;
  v121 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_100:
    v126 = *v111;
    if (!v126)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v100 = v17 + 16;
      v101 = *(v17 + 2);
      while (v101 >= 2)
      {
        if (!*v121)
        {
          goto LABEL_139;
        }

        v102 = v17;
        v103 = &v17[16 * v101];
        v104 = *v103;
        v105 = &v100[2 * v101];
        v106 = *(v105 + 1);
        sub_100688A94(*v121 + *(v120 + 72) * *v103, *v121 + *(v120 + 72) * *v105, *v121 + *(v120 + 72) * v106, v126);
        if (v5)
        {
          break;
        }

        if (v106 < v104)
        {
          goto LABEL_127;
        }

        if (v101 - 2 >= *v100)
        {
          goto LABEL_128;
        }

        *v103 = v104;
        *(v103 + 1) = v106;
        v107 = *v100 - v101;
        if (*v100 < v101)
        {
          goto LABEL_129;
        }

        v101 = *v100 - 1;
        sub_1003090FC(v105 + 16, v107, v105);
        *v100 = v101;
        v17 = v102;
      }

LABEL_110:

      return;
    }

LABEL_136:
    v17 = sub_100308E24();
    goto LABEL_102;
  }

  v108 = a4;
  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v112 = v17;
    if (v16 + 1 < v15)
    {
      v110 = v5;
      v20 = *v121;
      v21 = *(v120 + 72);
      v22 = v16;
      v23 = v16 + 1;
      v24 = *v121 + v21 * v19;
      v25 = v125;
      v119 = v15;
      sub_100095588();
      v26 = v126;
      sub_100095588();
      LODWORD(v118) = static Date.< infix(_:_:)();
      sub_1000180EC(v26, &qword_100CAC4D0, &qword_100A74C00);
      sub_1000180EC(v25, &qword_100CAC4D0, &qword_100A74C00);
      v27 = v119;
      v109 = v22;
      v28 = v22 + 2;
      v122 = v21;
      v29 = v20 + v21 * (v22 + 2);
      while (1)
      {
        v30 = v28;
        if (v23 + 1 >= v27)
        {
          break;
        }

        ++v23;
        v31 = v125;
        sub_100095588();
        v32 = v126;
        sub_100095588();
        v33 = static Date.< infix(_:_:)() & 1;
        sub_1000180EC(v32, &qword_100CAC4D0, &qword_100A74C00);
        sub_1000180EC(v31, &qword_100CAC4D0, &qword_100A74C00);
        v29 += v122;
        v24 += v122;
        v28 = v30 + 1;
        v27 = v119;
        if ((v118 & 1) != v33)
        {
          goto LABEL_9;
        }
      }

      v23 = v27;
LABEL_9:
      v5 = v110;
      if (v118)
      {
        v34 = v109;
        if (v23 < v109)
        {
          goto LABEL_133;
        }

        if (v109 >= v23)
        {
          v19 = v23;
          v17 = v112;
          v18 = v109;
          goto LABEL_32;
        }

        if (v27 >= v30)
        {
          v35 = v30;
        }

        else
        {
          v35 = v27;
        }

        v36 = v122 * (v35 - 1);
        v37 = v122 * v35;
        v38 = v109 * v122;
        v39 = v23;
        v17 = v112;
        do
        {
          if (v34 != --v39)
          {
            v40 = *v121;
            if (!*v121)
            {
              goto LABEL_140;
            }

            sub_100051BBC();
            v41 = v38 < v36 || v40 + v38 >= v40 + v37;
            if (v41)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_100051BBC();
            v17 = v112;
          }

          ++v34;
          v36 -= v122;
          v37 -= v122;
          v38 += v122;
        }

        while (v34 < v39);
        v5 = v110;
        v19 = v23;
      }

      else
      {
        v19 = v23;
        v17 = v112;
      }

      v18 = v109;
    }

LABEL_32:
    v42 = v121[1];
    if (v19 < v42)
    {
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_132;
      }

      if (v19 - v18 < v108)
      {
        break;
      }
    }

LABEL_48:
    if (v19 < v18)
    {
      goto LABEL_131;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10011E564();
      v17 = v98;
    }

    v54 = *(v17 + 2);
    v55 = v54 + 1;
    if (v54 >= *(v17 + 3) >> 1)
    {
      sub_10011E564();
      v17 = v99;
    }

    *(v17 + 2) = v55;
    v56 = v17 + 32;
    v57 = &v17[16 * v54 + 32];
    v58 = v119;
    *v57 = v18;
    *(v57 + 1) = v58;
    v122 = *v111;
    if (!v122)
    {
      goto LABEL_141;
    }

    if (v54)
    {
      while (1)
      {
        v59 = v55 - 1;
        v60 = &v56[16 * v55 - 16];
        v61 = &v17[16 * v55];
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v62 = *(v17 + 4);
          v63 = *(v17 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_68:
          if (v65)
          {
            goto LABEL_118;
          }

          v77 = *v61;
          v76 = *(v61 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_121;
          }

          v81 = *(v60 + 1);
          v82 = v81 - *v60;
          if (__OFSUB__(v81, *v60))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v79, v82))
          {
            goto LABEL_126;
          }

          if (v79 + v82 >= v64)
          {
            if (v64 < v82)
            {
              v59 = v55 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v55 < 2)
        {
          goto LABEL_120;
        }

        v84 = *v61;
        v83 = *(v61 + 1);
        v72 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        v80 = v72;
LABEL_83:
        if (v80)
        {
          goto LABEL_123;
        }

        v86 = *v60;
        v85 = *(v60 + 1);
        v72 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v72)
        {
          goto LABEL_125;
        }

        if (v87 < v79)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v59 - 1 >= v55)
        {
          __break(1u);
LABEL_113:
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v121)
        {
          goto LABEL_138;
        }

        v91 = v17;
        v92 = &v56[16 * v59 - 16];
        v93 = *v92;
        v94 = v59;
        v95 = &v56[16 * v59];
        v96 = *(v95 + 1);
        sub_100688A94(*v121 + *(v120 + 72) * *v92, *v121 + *(v120 + 72) * *v95, *v121 + *(v120 + 72) * v96, v122);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v96 < v93)
        {
          goto LABEL_113;
        }

        v5 = *(v91 + 2);
        if (v94 > v5)
        {
          goto LABEL_114;
        }

        *v92 = v93;
        *(v92 + 1) = v96;
        if (v94 >= v5)
        {
          goto LABEL_115;
        }

        v55 = v5 - 1;
        sub_1003090FC(v95 + 16, v5 - 1 - v94, v95);
        v17 = v91;
        *(v91 + 2) = v5 - 1;
        v97 = v5 > 2;
        v5 = 0;
        if (!v97)
        {
          goto LABEL_97;
        }
      }

      v66 = &v56[16 * v55];
      v67 = *(v66 - 8);
      v68 = *(v66 - 7);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_116;
      }

      v71 = *(v66 - 6);
      v70 = *(v66 - 5);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_117;
      }

      v73 = *(v61 + 1);
      v74 = v73 - *v61;
      if (__OFSUB__(v73, *v61))
      {
        goto LABEL_119;
      }

      v72 = __OFADD__(v64, v74);
      v75 = v64 + v74;
      if (v72)
      {
        goto LABEL_122;
      }

      if (v75 >= v69)
      {
        v89 = *v60;
        v88 = *(v60 + 1);
        v72 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v72)
        {
          goto LABEL_130;
        }

        if (v64 < v90)
        {
          v59 = v55 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v15 = v121[1];
    v16 = v119;
    if (v119 >= v15)
    {
      goto LABEL_100;
    }
  }

  v43 = v18 + v108;
  if (__OFADD__(v18, v108))
  {
    goto LABEL_134;
  }

  if (v43 >= v42)
  {
    v43 = v121[1];
  }

  if (v43 < v18)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v19 == v43)
  {
    goto LABEL_48;
  }

  v109 = v18;
  v110 = v5;
  v44 = *(v120 + 72);
  v45 = *v121 + v44 * (v19 - 1);
  v46 = -v44;
  v47 = v18 - v19;
  v122 = *v121;
  v113 = v44;
  v114 = v43;
  v48 = v122 + v19 * v44;
LABEL_41:
  v118 = v45;
  v119 = v19;
  v116 = v48;
  v117 = v47;
  v49 = v48;
  while (1)
  {
    v50 = v125;
    sub_100095588();
    v51 = v126;
    sub_100095588();
    v52 = static Date.< infix(_:_:)();
    sub_1000180EC(v51, &qword_100CAC4D0, &qword_100A74C00);
    sub_1000180EC(v50, &qword_100CAC4D0, &qword_100A74C00);
    if ((v52 & 1) == 0)
    {
LABEL_46:
      v19 = v119 + 1;
      v45 = v118 + v113;
      v47 = v117 - 1;
      v48 = v116 + v113;
      if (v119 + 1 == v114)
      {
        v19 = v114;
        v18 = v109;
        v5 = v110;
        v17 = v112;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v122)
    {
      break;
    }

    sub_100051BBC();
    swift_arrayInitWithTakeFrontToBack();
    sub_100051BBC();
    v45 += v46;
    v49 += v46;
    v41 = __CFADD__(v47++, 1);
    if (v41)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_100688A94(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = sub_10022C350(&qword_100CAC4D0, &qword_100A74C00);
  __chkstk_darwin(v48);
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v40 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v13 = a2 - a1;
  v14 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v14)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v17 = v13 / v12;
  v53 = a1;
  v52 = a4;
  v18 = v15 / v12;
  if (v13 / v12 >= v15 / v12)
  {
    sub_1006A0718(a2, v15 / v12, a4);
    v47 = a4;
    v26 = a4 + v18 * v12;
    v27 = -v12;
    v28 = v26;
    v43 = a1;
    v44 = -v12;
LABEL_37:
    v29 = a3;
    v41 = v28;
    v30 = v28;
    v45 = a2 + v27;
    v46 = a2;
    while (1)
    {
      if (v26 <= v47)
      {
        v53 = a2;
        v51 = v30;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v42 = v30;
      v31 = v29 + v27;
      v32 = v26 + v27;
      v33 = v49;
      sub_100095588();
      v34 = v50;
      sub_100095588();
      v35 = static Date.< infix(_:_:)();
      sub_1000180EC(v34, &qword_100CAC4D0, &qword_100A74C00);
      sub_1000180EC(v33, &qword_100CAC4D0, &qword_100A74C00);
      if (v35)
      {
        v37 = v29 < v46 || v31 >= v46;
        a3 = v31;
        if (v37)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v44;
          v28 = v42;
          a1 = v43;
        }

        else
        {
          v38 = v42;
          v28 = v42;
          v27 = v44;
          v39 = v45;
          a2 = v45;
          a1 = v43;
          if (v29 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v39;
            v28 = v38;
          }
        }

        goto LABEL_37;
      }

      if (v29 < v26 || v31 >= v26)
      {
        swift_arrayInitWithTakeFrontToBack();
        v29 = v31;
        v26 = v32;
        v30 = v32;
        a1 = v43;
        v27 = v44;
        a2 = v46;
      }

      else
      {
        v30 = v32;
        v14 = v26 == v29;
        v29 = v31;
        v26 = v32;
        a1 = v43;
        v27 = v44;
        a2 = v46;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v29 = v31;
          v26 = v32;
          v30 = v32;
        }
      }
    }

    v53 = a2;
    v51 = v41;
  }

  else
  {
    sub_1006A0718(a1, v13 / v12, a4);
    v46 = a3;
    v47 = a4 + v17 * v12;
    v51 = v47;
    while (a4 < v47 && a2 < a3)
    {
      v20 = v12;
      v21 = v49;
      sub_100095588();
      v22 = v50;
      sub_100095588();
      v23 = static Date.< infix(_:_:)();
      sub_1000180EC(v22, &qword_100CAC4D0, &qword_100A74C00);
      sub_1000180EC(v21, &qword_100CAC4D0, &qword_100A74C00);
      v12 = v20;
      if (v23)
      {
        if (a1 < a2 || a1 >= a2 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v20;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v52 = a4 + v20;
        a4 += v20;
      }

      a1 += v20;
      v53 = a1;
      a3 = v46;
    }
  }

LABEL_59:
  sub_100308E50(&v53, &v52, &v51);
}

uint64_t sub_100688FA4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC3798, &unk_100A74C50);
  sub_100003AE8(v2);
  v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v4 + 64) + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for TimeZone();
  sub_100003AE8(v6);
  v8 = (v5 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v10 = (*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for Date();
  sub_100003AE8(v11);
  v13 = (*(v12 + 80) + 8 + v10) & ~*(v12 + 80);
  v14 = *(v1 + v5);
  v15 = *(v1 + v10);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = swift_task_alloc();
  *(v20 + 16) = v18;
  *v18 = v20;
  v18[1] = sub_1000FDB98;

  return sub_1006874F8(a1, v16, v17, v1 + v21, v14, v1 + v8, v15, v1 + v13);
}

uint64_t sub_1006891D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10068922C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100689284()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

_BYTE *storeEnumTagSinglePayload for SunriseSunsetMonthlyViewModelFactory.FactoryError(_BYTE *result, int a2, int a3)
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

unint64_t sub_10068938C()
{
  result = qword_100CD02A0;
  if (!qword_100CD02A0)
  {
    result = swift_getWitnessTable(a9h_0, &type metadata for SunriseSunsetMonthlyViewModelFactory.FactoryError, v0, v1);
    atomic_store(result, &qword_100CD02A0);
  }

  return result;
}

void *sub_1006893E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD0350, &qword_100A74D98);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4CA8, &qword_100AA4B50);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v22, v23);
      v7 = __chkstk_darwin(v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for NotificationsOptInInteractor();
      v21[3] = v12;
      v21[4] = &off_100C528A0;
      v21[0] = v11;
      v13 = type metadata accessor for NotificationsOptInModule();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, v12);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[5] = v12;
      v14[6] = &off_100C528A0;
      v14[2] = v20;
      v14[7] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C7B360;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10068967C()
{
  sub_10022C350(&qword_100CD0350, &qword_100A74D98);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD0358, &unk_100A74DA0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4CA8, &qword_100AA4B50);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_100689768@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v10)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0, &qword_100A41A30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD0360, &unk_100AA3E80);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v5 = type metadata accessor for NotificationsOptInInteractor();
    swift_allocObject();
    result = sub_1003AD98C(v12, v13, v14, v15, v10, v11, &v8, &v6);
    a2[3] = v5;
    a2[4] = &off_100C528A0;
    *a2 = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_100689950(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v24;
  v4 = v25;
  v6 = v23;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD0358, &unk_100A74DA0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v20, v21);
  v18 = type metadata accessor for NotificationsOptInInputFactory();
  v19 = &off_100C62768;
  v17[0] = v7;
  sub_100035B30(v17, v16);
  v8 = swift_allocObject();
  sub_100013188(v16, v8 + 16);

  sub_100006F14(v17);
  sub_100006F14(v20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100689D38;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96E8, &unk_100A67990);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v10 = *sub_1000161C0(v20, v21);
    v18 = type metadata accessor for NotificationsOptInViewModelFactory();
    v19 = &off_100C69B18;
    v17[0] = v10;
    sub_100035B30(v17, v16);
    v11 = swift_allocObject();
    sub_100013188(v16, v11 + 16);

    sub_100006F14(v17);
    sub_100006F14(v20);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100689D40;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100689D48;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10009F868;
    *(v14 + 24) = v9;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100689D78;
    *(v15 + 24) = v13;
    sub_10022C350(&qword_100CA4CA8, &qword_100AA4B50);
    swift_allocObject();
    return sub_10024B9B4(v3, v6, v5, v4, sub_100266DE8, 0, sub_10009F81C, v14, sub_100689DA8, v15);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100689DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v4 = type metadata accessor for SearchLocation(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for Location.Identifier();
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v79[1] = v12 - v11;
  sub_1000038CC();
  v81 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v79[0] = v13;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v80 = v79 - v20;
  sub_1000038CC();
  v21 = type metadata accessor for Location();
  sub_1000037C4();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_100003C38();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  v29 = sub_100008C44();
  type metadata accessor for PreviewLocation(v29);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003C38();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v36 = v79 - v35;
  sub_100014C80();
  v82 = a1;
  sub_100031274(a1, v36, v37);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v71 = sub_100051FDC();
      v72(v71);
      sub_10022C350(&qword_100CA38B8, &unk_100A66A90);
      v50 = v83;
      (*(v23 + 16))(v83, v2, v21);
      type metadata accessor for SavedLocation();
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v73, v74, v75, v76);
      LocationModelData.init(locationOfInterest:isPredictedLocation:)();
      sub_100074D9C();
      (*(v23 + 8))(v2, v21);
      goto LABEL_7;
    case 2u:
      v55 = v79[0];
      v56 = v36;
      v57 = v81;
      (*(v79[0] + 32))(v17, v56, v81);
      LocationOfInterest.location.getter();
      v58 = v80;
      (*(v55 + 16))(v80, v17, v57);
      sub_10001B350(v58, 0, 1, v57);
      LocationModel.init(location:locationOfInterest:isPredictedLocation:)();
      sub_100074D9C();
      result = (*(v55 + 8))(v17, v57);
      break;
    case 3u:
      sub_10003D6A8(v36, v8, type metadata accessor for SearchLocation);
      sub_10022C350(&qword_100CA38B8, &unk_100A66A90);
      sub_100014C80();
      v59 = v82;
      sub_100031274(v82, v33, v60);
      sub_1006E6430();
      v62 = v61;
      sub_1006E6834();
      sub_1006E6B60();
      sub_100031EB0();
      sub_100069828();
      sub_100032908(v33, v63);

      v64 = v83;
      SavedLocation.Placeholder.init(identifier:searchTitle:searchSubtitle:)();
      type metadata accessor for SavedLocation();
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v65, v66, v67, v68);
      LocationModelData.init(locationOfInterest:isPredictedLocation:)();
      sub_100032908(v59, v62);
      sub_100032908(v8, type metadata accessor for SearchLocation);
      v69 = enum case for LocationModel.saved(_:);
      type metadata accessor for LocationModel();
      sub_1000037E8();
      result = (*(v70 + 104))(v64, v69);
      break;
    case 4u:

      sub_10022C350(&qword_100CA38B8, &unk_100A66A90);
      sub_100014C80();
      v45 = v82;
      sub_100031274(v82, v33, v46);
      sub_1006E6430();
      v48 = v47;
      sub_1006E6834();
      sub_1006E6B60();
      sub_100031EB0();
      sub_100069828();
      sub_100032908(v33, v49);
      v50 = v83;
      SavedLocation.Placeholder.init(identifier:searchTitle:searchSubtitle:)();
      type metadata accessor for SavedLocation();
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v51, v52, v53, v54);
      LocationModelData.init(locationOfInterest:isPredictedLocation:)();
      sub_100032908(v45, v48);
LABEL_7:
      v77 = enum case for LocationModel.saved(_:);
      type metadata accessor for LocationModel();
      sub_1000037E8();
      result = (*(v78 + 104))(v50, v77);
      break;
    default:
      v38 = sub_100051FDC();
      v39(v38);
      (*(v23 + 16))(v27, v2, v21);
      sub_100003934();
      sub_10001B350(v40, v41, v42, v43);
      LocationModel.init(location:locationOfInterest:isPredictedLocation:)();
      sub_100074D9C();
      result = (*(v23 + 8))(v2, v21);
      break;
  }

  return result;
}

uint64_t sub_10068A470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003C38();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v21[-v12];
  v22 = a1;
  v23 = a3;
  v24 = a2;
  sub_100030C98(sub_100044248, v21, a3);
  sub_100035AD0(v13, v10, &unk_100CE2F20, &unk_100A2D7D0);
  v14 = type metadata accessor for LocationModel();
  sub_1000038B4(v10, 1, v14);
  if (v15)
  {
    sub_1000180EC(v13, &unk_100CE2F20, &unk_100A2D7D0);
    sub_1000180EC(v10, &unk_100CE2F20, &unk_100A2D7D0);
    type metadata accessor for LocationOfInterest();
    sub_100003934();
    return sub_10001B350(v16, v17, v18, v19);
  }

  else
  {
    LocationModel.locationOfInterest.getter();
    sub_1000180EC(v13, &unk_100CE2F20, &unk_100A2D7D0);
    return (*(*(v14 - 8) + 8))(v10, v14);
  }
}

uint64_t sub_10068A650(uint64_t a1, uint64_t a2)
{
  v5 = sub_10095D050(a1, a2);
  v6 = v2[5];
  v7 = v2[6];
  sub_1000161C0(v2 + 2, v6);
  v8 = (*(v7 + 16))(a1, a2, v6, v7);
  sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100A3AEB0;
  *(v9 + 32) = v5;
  *(v9 + 40) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  type metadata accessor for WireframeInterestToken();
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = sub_10068A88C;
  *(result + 24) = v10;
  return result;
}

uint64_t sub_10068A7E8(uint64_t a1)
{
  result = sub_100073CDC(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    sub_10095D7E8();
  }

  return result;
}

uint64_t sub_10068A894(void *a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_10000C8C8();
  v4 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Location();
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000037D8();
  sub_100019CA0();
  v10 = type metadata accessor for TimeZone();
  result = sub_100024D10(v7, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    [a1 coordinate];
    v13 = v12;
    v15 = v14;
    v16 = type metadata accessor for Date();
    sub_1000061CC(v16);
    sub_10001CA04();
    Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:)(v13, v15);
    v17 = sub_10022C350(&qword_100CD04C0, &unk_100A82F00);
    sub_100003B6C(v17);
    return sub_100004838();
  }

  return result;
}

uint64_t sub_10068AA1C()
{
  v1 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  sub_10000C8C8();
  v3 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100022FA4();
  v5 = type metadata accessor for Location.Identifier();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = type metadata accessor for Location();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  SavedLocation.Placeholder.identifier.getter();
  sub_100019CA0();
  v9 = type metadata accessor for TimeZone();
  result = sub_100024D10(v0, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = type metadata accessor for Date();
    sub_1000061CC(v11);
    Location.init(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:)();
    v12 = sub_10022C350(&qword_100CD04C0, &unk_100A82F00);
    sub_100003B6C(v12);
    return Promise.init(value:)();
  }

  return result;
}

uint64_t sub_10068ABC8(uint64_t a1)
{
  v2 = type metadata accessor for Location();
  __chkstk_darwin(v2);
  sub_1000037D8();
  (*(v5 + 16))(v4 - v3, a1);
  v6 = sub_10022C350(&qword_100CD04C0, &unk_100A82F00);
  sub_100003B6C(v6);
  return sub_100004838();
}

uint64_t sub_10068AC90(double a1, double a2)
{
  v5 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000C8C8();
  v7 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  sub_100022FA4();
  v9 = type metadata accessor for Location();
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  sub_100019CA0();
  v11 = type metadata accessor for TimeZone();
  result = sub_100024D10(v2, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = type metadata accessor for Date();
    sub_1000061CC(v13);
    sub_10001CA04();
    Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:)(a1, a2);
    v14 = sub_10022C350(&qword_100CD04C0, &unk_100A82F00);
    sub_100003B6C(v14);
    return sub_100004838();
  }

  return result;
}

uint64_t sub_10068AEBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for LocationViewComponentContainerDescriptor(0, a1, a2, a3);
  v6 = sub_100588E2C(v5);
  if (v6)
  {
    sub_1001B3B30(v6 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, a4);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for LocationComponentContainerViewModel(0);

  return sub_10001B350(a4, v7, 1, v8);
}

void sub_10068AF4C(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v5 = type metadata accessor for WeatherAlertEntity();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  __chkstk_darwin(v11);
  v36 = &v31 - v12;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = 0;
  v17 = *(a2 + 16);
  v39 = v6 + 16;
  v40 = v17;
  v18 = (v6 + 8);
  v38 = (v6 + 32);
  v37 = _swiftEmptyArrayStorage;
  while (v40 != v16)
  {
    if (v16 >= *(a2 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    sub_10001F4D0();
    (*(v6 + 16))(v15, v19 + v2 * v16, v5);
    WeatherAlertEntity.relevant.getter();
    dispatch thunk of Column.value.getter();

    if (v41 == 2)
    {
      goto LABEL_26;
    }

    if (v41)
    {
      v33 = *v38;
      (v33)(v36, v15, v5);
      v20 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000107C8();
        v20 = v42;
      }

      v22 = v20[2];
      v23 = (v22 + 1);
      if (v22 >= v20[3] >> 1)
      {
        v37 = (v22 + 1);
        v32 = v22;
        sub_1006A7FAC();
        v23 = v37;
        v22 = v32;
        v20 = v42;
      }

      ++v16;
      v20[2] = v23;
      v37 = v20;
      (v33)(v20 + v3 + v22 * v2, v36, v5);
    }

    else
    {
      (*v18)(v15, v5);
      ++v16;
    }
  }

  v24 = 0;
  v25 = _swiftEmptyArrayStorage;
  while (v40 != v24)
  {
    if (v24 >= *(a2 + 16))
    {
      goto LABEL_25;
    }

    sub_10001F4D0();
    (*(v6 + 16))(v10, v26 + v2 * v24, v5);
    WeatherAlertEntity.relevant.getter();
    dispatch thunk of Column.value.getter();

    if (v41 == 2)
    {
      goto LABEL_27;
    }

    if (v41)
    {
      (*v18)(v10, v5);
      ++v24;
    }

    else
    {
      v36 = *v38;
      (v36)(v35, v10, v5);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v25;
      if ((v27 & 1) == 0)
      {
        sub_1000107C8();
        v25 = v42;
      }

      v28 = v25;
      v29 = v25[2];
      v30 = (v29 + 1);
      if (v29 >= v28[3] >> 1)
      {
        v33 = (v29 + 1);
        sub_1006A7FAC();
        v30 = v33;
        v28 = v42;
      }

      ++v24;
      v28[2] = v30;
      (v36)(v28 + v3 + v29 * v2, v35, v5);
      v25 = v28;
    }
  }
}

uint64_t sub_10068B348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CD04C8, &qword_100A74F50);
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  v13 = a1;
  v14 = a2;
  v15 = a3;
  sub_10022C350(&qword_100CD04D0, &qword_100A74F58);
  sub_100006F64(&qword_100CD04D8, &qword_100CD04D0, &qword_100A74F58, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  v10 = &v8[*(v6 + 36)];
  *v10 = KeyPath;
  *(v10 + 1) = 0x4028000000000000;
  v10[16] = 0;
  sub_10068C908();
  View.navigationTitle(_:)();
  return sub_10003FDF4(v8, &qword_100CD04C8, &qword_100A74F50);
}

uint64_t sub_10068B4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v37 = a4;
  v36 = sub_10022C350(&qword_100CD04F8, &qword_100A74FA0);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v29 - v9;
  v33 = sub_10022C350(&qword_100CD0500, &qword_100A74FA8);
  v32 = *(v33 - 8);
  v10 = v32;
  __chkstk_darwin(v33);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  v45 = 0xD000000000000010;
  v46 = 0x8000000100ADAFD0;
  v47 = 0;
  v48 = _swiftEmptyArrayStorage;
  v42 = a1;
  v43 = a2;
  v44 = a3;
  sub_10022C350(&qword_100CD0508, &qword_100A74FB0);
  sub_10068C9F8();
  v31 = v15;
  Section<>.init(header:content:)();
  v45 = 0xD000000000000014;
  v46 = 0x8000000100ADAFF0;
  v47 = 0;
  v48 = _swiftEmptyArrayStorage;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  sub_10022C350(&qword_100CD0520, &qword_100A74FB8);
  sub_100006F64(&qword_100CD0528, &qword_100CD0520, &qword_100A74FB8, &protocol conformance descriptor for TupleView<A>);
  v16 = v38;
  Section<>.init(header:content:)();
  v17 = *(v10 + 16);
  v30 = v12;
  v18 = v33;
  v17(v12, v15, v33);
  v19 = v34;
  v20 = v35;
  v21 = *(v34 + 16);
  v22 = v16;
  v23 = v36;
  v21(v35, v22, v36);
  v24 = v37;
  v17(v37, v12, v18);
  v25 = sub_10022C350(&qword_100CD0530, &qword_100A74FC0);
  v21(&v24[*(v25 + 48)], v20, v23);
  v26 = *(v19 + 8);
  v26(v38, v23);
  v27 = *(v32 + 8);
  v27(v31, v18);
  v26(v20, v23);
  return (v27)(v30, v18);
}

uint64_t sub_10068B8D4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();

  sub_10022C350(&qword_100CD0560, &qword_100A75090);
  type metadata accessor for RowView(0);
  sub_100006F64(&qword_100CD0568, &qword_100CD0560, &qword_100A75090, &protocol conformance descriptor for [A]);
  sub_10068CB2C();
  sub_10068CA7C();
  return ForEach<>.init(_:id:content:)();
}

double sub_10068B9CC@<D0>(_OWORD *a1@<X8>)
{
  dispatch thunk of Column.value.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10068BA44@<X0>(char *a1@<X8>)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  PeriodicWeatherAlertEntity.alertIdentifier.getter();
  dispatch thunk of Column.value.getter();

  v6 = v11;
  if (v11)
  {
    v7 = v10;
    PeriodicWeatherAlertEntity.created.getter();
    dispatch thunk of Column.value.getter();

    v8 = type metadata accessor for Date();
    result = sub_100024D10(v4, 1, v8);
    if (result != 1)
    {
      *a1 = v7;
      *(a1 + 1) = v6;
      v9 = type metadata accessor for RowView(0);
      result = (*(*(v8 - 8) + 32))(&a1[*(v9 + 20)], v4, v8);
      a1[*(v9 + 24)] = 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10068BB98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v27 = a3;
  v5 = sub_10022C350(&qword_100CD0538, &qword_100A74FC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v25 = &v23 - v9;
  __chkstk_darwin(v10);
  v24 = &v23 - v11;
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v28 = a1;
  swift_getKeyPath();

  sub_10022C350(&qword_100CD0540, &unk_100A75020);
  type metadata accessor for RowView(0);
  sub_100006F64(&qword_100CD0548, &qword_100CD0540, &unk_100A75020, &protocol conformance descriptor for [A]);
  sub_10068CB2C();
  sub_10068CA7C();
  ForEach<>.init(_:id:content:)();
  v28 = a2;
  swift_getKeyPath();

  v15 = v24;
  ForEach<>.init(_:id:content:)();
  v16 = *(v6 + 16);
  v17 = v25;
  v16(v25, v14, v5);
  v18 = v26;
  v16(v26, v15, v5);
  v19 = v27;
  v16(v27, v17, v5);
  v20 = sub_10022C350(&qword_100CD0558, &unk_100A75030);
  v16(&v19[*(v20 + 48)], v18, v5);
  v21 = *(v6 + 8);
  v21(v15, v5);
  v21(v14, v5);
  v21(v18, v5);
  return (v21)(v17, v5);
}

uint64_t sub_10068BEDC@<X0>(char *a1@<X8>)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  WeatherAlertEntity.alertIdentifier.getter();
  dispatch thunk of Column.value.getter();

  v6 = v14;
  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v13;
  WeatherAlertEntity.created.getter();
  dispatch thunk of Column.value.getter();

  v8 = type metadata accessor for Date();
  result = sub_100024D10(v4, 1, v8);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  WeatherAlertEntity.relevant.getter();
  dispatch thunk of Column.value.getter();

  v9 = v12;
  if (v12 != 2)
  {
    *a1 = v7;
    *(a1 + 1) = v6;
    v10 = type metadata accessor for RowView(0);
    result = (*(*(v8 - 8) + 32))(&a1[*(v10 + 20)], v4, v8);
    a1[*(v10 + 24)] = v9 & 1;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10068C068@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_10022C350(&qword_100CD0608, &qword_100A750F0);
  return sub_10068C0BC(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_10068C0BC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Date.FormatStyle.DateStyle();
  v7 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Divider();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v44 = &v39 - v14;
  __chkstk_darwin(v15);
  v50 = &v39 - v16;
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v20 = *a1;
  v42 = a1[1];
  v43 = v20;

  v45 = v19;
  Divider.init()();
  v21 = type metadata accessor for RowView(0);
  static Date.FormatStyle.DateStyle.long.getter();
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v22 = Date.formatted(date:time:)();
  v40 = v23;
  v41 = v22;
  (*(v48 + 8))(v6, v49);
  (*(v7 + 8))(v9, v47);
  v24 = v50;
  Divider.init()();
  if (*(a1 + *(v21 + 24)))
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  v26 = 0xE400000000000000;
  if (!*(a1 + *(v21 + 24)))
  {
    v26 = 0xE500000000000000;
  }

  v48 = v26;
  v49 = v25;
  v27 = *(v11 + 16);
  v28 = v44;
  v27(v44, v19, v10);
  v29 = v46;
  v27(v46, v24, v10);
  *a2 = 0x7472656C41;
  *(a2 + 1) = 0xE500000000000000;
  v30 = v42;
  *(a2 + 2) = v43;
  *(a2 + 3) = v30;
  v31 = sub_10022C350(&qword_100CD0610, &qword_100A750F8);
  v32 = v28;
  v27(&a2[v31[12]], v28, v10);
  v33 = &a2[v31[16]];
  *v33 = 0x64657461657243;
  *(v33 + 1) = 0xE700000000000000;
  v34 = v40;
  *(v33 + 2) = v41;
  *(v33 + 3) = v34;
  v27(&a2[v31[20]], v29, v10);
  v35 = &a2[v31[24]];
  *v35 = 0x746E6176656C6552;
  *(v35 + 1) = 0xE800000000000000;
  v36 = v48;
  *(v35 + 2) = v49;
  *(v35 + 3) = v36;
  v37 = *(v11 + 8);

  v37(v50, v10);
  v37(v45, v10);

  v37(v29, v10);

  v37(v32, v10);
}

void *sub_10068C548@<X0>(uint64_t a5@<X8>)
{
  v6 = static VerticalAlignment.firstTextBaseline.getter();
  v12 = 0;
  sub_10068C630(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  sub_10068CC9C(__dst, &v9);
  sub_10003FDF4(v14, &qword_100CD0628, &unk_100A75190);
  memcpy(&v11[7], __dst, 0x50uLL);
  v7 = v12;
  *a5 = v6;
  *(a5 + 8) = 0;
  *(a5 + 16) = v7;
  return memcpy((a5 + 17), v11, 0x57uLL);
}

uint64_t sub_10068C630@<X0>(uint64_t a5@<X8>)
{
  sub_10002D5A4();

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Font.Weight.semibold.getter();
  v11 = Text.fontWeight(_:)();
  v28 = v12;
  v29 = v11;
  v27 = v13;
  v30 = v14;
  sub_10010CD64(v6, v8, v10 & 1);

  v15 = Text.init<A>(_:)();
  v17 = v16;
  LOBYTE(v6) = v18;
  static Color.secondary.getter();
  v19 = Text.foregroundColor(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_10010CD64(v15, v17, v6 & 1);

  *a5 = v29;
  *(a5 + 8) = v28;
  *(a5 + 16) = v27 & 1;
  *(a5 + 24) = v30;
  *(a5 + 32) = 0x4030000000000000;
  *(a5 + 40) = 0;
  *(a5 + 48) = v19;
  *(a5 + 56) = v21;
  *(a5 + 64) = v23 & 1;
  *(a5 + 72) = v25;
  sub_10010CD54(v29, v28, v27 & 1);

  sub_10010CD54(v19, v21, v23 & 1);

  sub_10010CD64(v19, v21, v23 & 1);

  sub_10010CD64(v29, v28, v27 & 1);
}

uint64_t sub_10068C830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10068C8A8()
{
  sub_10000FE4C();
  result = EnvironmentValues.listRowSpacing.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

unint64_t sub_10068C908()
{
  result = qword_100CD04E0;
  if (!qword_100CD04E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD04C8, &qword_100A74F50);
    v4[0] = sub_100006F64(&qword_100CD04E8, &qword_100CD04F0, &unk_100A74F90, &protocol conformance descriptor for List<A, B>);
    v4[1] = sub_100006F64(&qword_100CC2270, &qword_100CC2278, &qword_100A5AAF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD04E0);
  }

  return result;
}

unint64_t sub_10068C9F8()
{
  result = qword_100CD0510;
  if (!qword_100CD0510)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CD0508, &qword_100A74FB0);
    v4[0] = sub_10068CA7C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CD0510);
  }

  return result;
}

unint64_t sub_10068CA7C()
{
  result = qword_100CD0518;
  if (!qword_100CD0518)
  {
    v3 = type metadata accessor for RowView(255);
    result = swift_getWitnessTable(byte_100A750A0, v3, v0, v1);
    atomic_store(result, &qword_100CD0518);
  }

  return result;
}

uint64_t type metadata accessor for RowView(uint64_t a1)
{
  result = qword_100CD05C8;
  if (!qword_100CD05C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10068CB2C()
{
  result = qword_100CD0550;
  if (!qword_100CD0550)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_10022E824(&qword_100CA6078, &unk_100A30870);
    v4[0] = &protocol witness table for String;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CD0550);
  }

  return result;
}

uint64_t sub_10068CBD0(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10068CC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD0628, &unk_100A75190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for LearnMoreAttributorViewModel.PresentationContext(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10068CDF0()
{
  result = qword_100CD06F0;
  if (!qword_100CD06F0)
  {
    result = swift_getWitnessTable(byte_100A75214, &type metadata for LearnMoreAttributorViewModel.PresentationContext, v0, v1);
    atomic_store(result, &qword_100CD06F0);
  }

  return result;
}

id sub_10068CE44()
{
  if (!*v0)
  {
    sub_100100664();
    static Color.primary.getter();
    return UIColor.init(_:)();
  }

  if (*v0 != 1)
  {
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      v3 = [objc_opt_self() labelColor];
      goto LABEL_12;
    }

    v5 = static Solarium.isEnabled.getter();
    v2 = objc_opt_self();
    if ((v5 & 1) == 0)
    {
      v3 = [v2 tertiaryLabelColor];
      goto LABEL_12;
    }

LABEL_10:
    v3 = [v2 secondaryLabelColor];
    goto LABEL_12;
  }

  v1 = UIAccessibilityDarkerSystemColorsEnabled();
  v2 = objc_opt_self();
  if (!v1)
  {
    goto LABEL_10;
  }

  v3 = [v2 labelColor];
LABEL_12:

  return v3;
}

id sub_10068CF44()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      v1 = objc_opt_self();
      v2 = &UIFontTextStyleCaption2;
    }

    else
    {
      v3 = [objc_opt_self() currentDevice];
      v4 = [v3 userInterfaceIdiom];

      v1 = objc_opt_self();
      if (v4)
      {
        v2 = &UIFontTextStyleFootnote;
      }

      else
      {
        v2 = &UIFontTextStyleCaption2;
      }
    }
  }

  else
  {
    v1 = objc_opt_self();
    v2 = &UIFontTextStyleFootnote;
  }

  v5 = [v1 preferredFontForTextStyle:*v2];

  return v5;
}

unint64_t sub_10068D030()
{
  result = qword_100CAD328[0];
  if (!qword_100CAD328[0])
  {
    v3 = type metadata accessor for URL();
    result = swift_getWitnessTable(&protocol conformance descriptor for URL, v3, v0, v1);
    atomic_store(result, qword_100CAD328);
  }

  return result;
}

uint64_t sub_10068D0B0(uint64_t a1)
{
  result = type metadata accessor for CurrentWeather();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PressureComponentPreprocessedDataModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10068D134(uint64_t a1, uint64_t a2)
{
  if ((static CurrentWeather.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for PressureComponent(0) + 20);

  return sub_1003BE378(a1 + v4, a2 + v4);
}

uint64_t sub_10068D194@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = type metadata accessor for PressureComponentPreprocessedDataModel(0);
  __chkstk_darwin(v25);
  sub_1000037D8();
  v6 = v5 - v4;
  v27 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v24 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v26 = v10 - v9;
  sub_10022C350(&qword_100CD0790, &qword_100A75300);
  sub_1000037C4();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for PressureComponent(0);
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  sub_1000161C0(a1, a1[3]);
  sub_10068D758();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  sub_10001CA34();
  sub_10068D8D0(v16, v17, &protocol conformance descriptor for CurrentWeather);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 32))(v15, v26, v27);
  sub_10001F4E8();
  sub_10068D8D0(v18, v19, byte_100A466F8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = sub_1000064BC();
  v21(v20);
  sub_10068D7AC(v6, v15 + *(v12 + 20));
  sub_10068D810(v15, a2);
  sub_100006F14(a1);
  return sub_10068D874(v15);
}

uint64_t sub_10068D4F8(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CD07A8, &qword_100A75308);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_10068D758();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = 0;
  type metadata accessor for CurrentWeather();
  sub_10001CA34();
  v13 = sub_10068D8D0(v11, v12, &protocol conformance descriptor for CurrentWeather);
  sub_100005AE0(v3, &v25, v14, v15, v13);
  if (!v2)
  {
    v16 = *(type metadata accessor for PressureComponent(0) + 20);
    v24 = 1;
    type metadata accessor for PressureComponentPreprocessedDataModel(0);
    sub_10001F4E8();
    v19 = sub_10068D8D0(v17, v18, byte_100A466D0);
    sub_100005AE0(v3 + v16, &v24, v20, v21, v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_10068D6AC(uint64_t a1)
{
  v2 = sub_10068D758();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10068D6E8(uint64_t a1)
{
  v2 = sub_10068D758();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10068D758()
{
  result = qword_100CD0798;
  if (!qword_100CD0798)
  {
    result = swift_getWitnessTable(byte_100A753D4, &type metadata for PressureComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD0798);
  }

  return result;
}

uint64_t sub_10068D7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PressureComponentPreprocessedDataModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10068D810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PressureComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10068D874(uint64_t a1)
{
  v2 = type metadata accessor for PressureComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10068D8D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

_BYTE *storeEnumTagSinglePayload for PressureComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10068D9F8()
{
  result = qword_100CD07B8;
  if (!qword_100CD07B8)
  {
    result = swift_getWitnessTable(aUa_1, &type metadata for PressureComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD07B8);
  }

  return result;
}

unint64_t sub_10068DA50()
{
  result = qword_100CD07C0;
  if (!qword_100CD07C0)
  {
    result = swift_getWitnessTable(byte_100A7531C, &type metadata for PressureComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD07C0);
  }

  return result;
}

unint64_t sub_10068DAA8()
{
  result = qword_100CD07C8;
  if (!qword_100CD07C8)
  {
    result = swift_getWitnessTable(byte_100A75344, &type metadata for PressureComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD07C8);
  }

  return result;
}

uint64_t sub_10068DAFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079)
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

uint64_t sub_10068DC18(char a1)
{
  if (!a1)
  {
    return 0x656475746974616CLL;
  }

  if (a1 == 1)
  {
    return 0x64757469676E6F6CLL;
  }

  return 0x7469736E65746E69;
}

uint64_t sub_10068DC74(void *a1)
{
  v3 = sub_10022C350(&qword_100CD0938, &qword_100A75590);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000161C0(a1, a1[3]);
  sub_10068F0B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

double sub_10068DE18(void *a1)
{
  v2 = sub_10022C350(&qword_100CD0928, &qword_100A75588);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  sub_1000161C0(a1, a1[3]);
  sub_10068F0B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v7 = v6;
  v11 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100006F14(a1);
  return v7;
}

uint64_t sub_10068DFF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736D726F7473 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10068E07C(void *a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD0968, &qword_100A755A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_10068F10C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10022C350(&qword_100CD0950, &qword_100A755A0);
  sub_10068F1B4(&qword_100CD0970, sub_10068F22C, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void *sub_10068E208(void *a1)
{
  v3 = sub_10022C350(&qword_100CD0940, &qword_100A75598);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000161C0(a1, a1[3]);
  sub_10068F10C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100006F14(a1);
  }

  else
  {
    sub_10022C350(&qword_100CD0950, &qword_100A755A0);
    sub_10068F1B4(&qword_100CD0958, sub_10068F160, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100006F14(a1);
  }

  return v7;
}

uint64_t sub_10068E3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10068DAFC(a1, a2);
  *a3 = result;
  return result;
}