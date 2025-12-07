void SunEvents.write(to:)()
{
  sub_10000E8AC();
  v26 = v6;
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  v23 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_100003878();
  v25 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v24 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100031DB0();
  __chkstk_darwin(v14);
  sub_1000B8A18();
  __chkstk_darwin(v15);
  sub_10002137C();
  __chkstk_darwin(v16);
  sub_10000C930();
  __chkstk_darwin(v17);
  sub_100021390();
  __chkstk_darwin(v18);
  sub_1000886FC();
  __chkstk_darwin(v19);
  sub_100030230();
  SunEvents.astronomicalDawn.getter();
  Optional<A>.write(to:)();
  if (v1)
  {
    v22 = v2;
  }

  else
  {
    sub_1006827B8(v2, &unk_100CB2CF0);
    SunEvents.nauticalDawn.getter();
    Optional<A>.write(to:)();
    sub_1006827B8(v5, &unk_100CB2CF0);
    SunEvents.civilDawn.getter();
    sub_10002C598();
    Optional<A>.write(to:)();
    v20 = sub_1002E52D0();
    sub_1006827B8(v20, v21);
    SunEvents.sunrise.getter();
    sub_10002C598();
    Optional<A>.write(to:)();
    sub_1006827B8(v3, &unk_100CB2CF0);
    sub_100787208();
    SunEvents.solarNoon.getter();
    sub_100163714();
    Optional<A>.write(to:)();
    sub_1006827B8(v26, &unk_100CB2CF0);
    sub_100787124();
    SunEvents.sunset.getter();
    sub_100163714();
    Optional<A>.write(to:)();
    sub_1006827B8(v0, &unk_100CB2CF0);
    sub_100787124();
    SunEvents.civilDusk.getter();
    sub_100163714();
    Optional<A>.write(to:)();
    sub_1006827B8(v4, &unk_100CB2CF0);
    sub_100787124();
    SunEvents.nauticalDusk.getter();
    sub_100163714();
    Optional<A>.write(to:)();
    sub_1006827B8(v24, &unk_100CB2CF0);
    SunEvents.astronomicalDusk.getter();
    sub_10003C620();
    sub_1000E17CC();
    Optional<A>.write(to:)();
    sub_1006827B8(v25, &unk_100CB2CF0);
    sub_100787124();
    SunEvents.solarMidnight.getter();
    sub_100163714();
    Optional<A>.write(to:)();
    v22 = v23;
  }

  sub_1006827B8(v22, &unk_100CB2CF0);
  sub_1000C8EF8();
  sub_10000C8F4();
}

uint64_t sub_10076E440(uint64_t a1)
{
  sub_100786AD0();
  sub_1007860A8();
  sub_1007860FC();
  return static Array<A>.read(from:)();
}

uint64_t sub_10076E490(uint64_t a1)
{
  sub_1007860A8();
  sub_1007860FC();
  sub_100031474();
  return Array<A>.write(to:)();
}

void sub_10076E4E8(uint64_t a1)
{
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v1)
  {
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
  }

  sub_1000B854C();
}

uint64_t sub_10076E5B8(uint64_t a1)
{
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v1)
  {
    sub_100786FF0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786FF0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786FF0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  return result;
}

void sub_10076E670(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10076E4E8(a1);
  if (!v2)
  {
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    sub_100786760();
    static FixedSizeTypeBinaryCodable.read(from:)();
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v11;
    a2[4] = v12;
  }
}

uint64_t sub_10076E6F4(uint64_t a1)
{
  result = sub_10076E5B8(a1);
  if (!v1)
  {
    sub_100786FF0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  return result;
}

uint64_t static UVIndex.read(from:)()
{
  sub_100786DA8();
  result = static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    v2 = sub_1000B0CA4();
    static UVIndex.ExposureCategory.read(from:)(v2);
    sub_100786E94();
    return UVIndex.init(value:category:)();
  }

  return result;
}

uint64_t UVIndex.write(to:)()
{
  sub_10002498C();
  UVIndex.value.getter();
  sub_10000CDB0();
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    UVIndex.category.getter();
    v2 = sub_10000CDB0();
    return UVIndex.ExposureCategory.write(to:)(v2);
  }

  return result;
}

uint64_t sub_10076E854(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    result = sub_100786BE4(result, v3, v4, v5, v6, v7, v8, v9, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
    if (result >= 5)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v11 = sub_10077C574(v10);
      v12 = sub_100074D7C(v11);
      sub_10002C964(v12, v13);
      sub_100006494();
      (*(v14 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

void static Wind.read(from:)(uint64_t a1)
{
  sub_1007865BC();
  sub_100786AD0();
  v2 = sub_10022C350(&qword_100CAEC90, &unk_100A5CFE0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_100003CB4();
  sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100003CF8();
  sub_10022C350(&qword_100CAC450, &unk_100A3B3B0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10001320C();
  v6 = sub_10003BB20();
  static Wind.CompassDirection.read(from:)(v6);
  if (!v1)
  {
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CCFAD0, NSUnitAngle_ptr);
    v7 = sub_10000CDB0();
    static NSUnitAngle.read(from:)(v7);
    sub_100786D54();
    Measurement.init(value:unit:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CAC428, NSUnitSpeed_ptr);
    v8 = sub_10000CDB0();
    static NSUnitSpeed.read(from:)(v8);
    sub_100786D54();
    Measurement.init(value:unit:)();
    sub_1000117E8();
    sub_10077C6AC(v9);
    sub_100018704();
    sub_10077C6AC(v10);
    sub_1000D42A0();
    sub_10078671C();
    static Optional<A>.read(from:)();
    Wind.init(compassDirection:direction:speed:gust:)();
  }

  sub_10002FE90();
  sub_10009D16C();
}

void Wind.write(to:)()
{
  sub_10000E8AC();
  sub_10022C350(&qword_100CAEC90, &unk_100A5CFE0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_1000039BC();
  v17 = v2;
  sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_100003CF8();
  v4 = sub_10022C350(&qword_100CAC450, &unk_100A3B3B0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10001320C();
  Wind.compassDirection.getter();
  v6 = sub_100043A24();
  Wind.CompassDirection.write(to:)(v6);
  if (!v0)
  {
    Wind.direction.getter();
    sub_100786C10();
    sub_100779504(v7, v8);
    v9 = sub_100786414();
    v10(v9, v4);
    Wind.speed.getter();
    sub_100028AC8();
    sub_100786FC0();
    sub_100779504(v11, v12);
    v13 = sub_1000E17A0();
    v14(v13);
    Wind.gust.getter();
    sub_1000117E8();
    sub_10077C6AC(v15);
    sub_100018704();
    sub_10077C6AC(v16);
    sub_100786FC0();
    Optional<A>.write(to:)();
    sub_1006827B8(v17, &qword_100CAEC90);
  }

  sub_1000C8EF8();
  sub_10000C8F4();
}

uint64_t static Wind.CompassDirection.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    result = sub_100786BE4(result, v3, v4, v5, v6, v7, v8, v9, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
    if (result >= 0x10u)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v11 = sub_10077C574(v10);
      v12 = sub_100074D7C(v11);
      sub_10002C964(v12, v13);
      sub_100006494();
      (*(v14 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

void static WeatherAlert.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  a19 = v26;
  a20 = v27;
  type metadata accessor for UUID();
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for WeatherMetadata();
  sub_1000037C4();
  __chkstk_darwin(v29);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for WeatherImportance();
  sub_1000037C4();
  __chkstk_darwin(v30);
  sub_1000038E4();
  sub_1000FD184(v31);
  type metadata accessor for WeatherSeverity();
  sub_1000037C4();
  __chkstk_darwin(v32);
  sub_1000038E4();
  sub_100787238(v33);
  v34 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  sub_100003810(v34);
  sub_100003828();
  __chkstk_darwin(v35);
  sub_1000039BC();
  v36 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v37 = sub_100003810(v36);
  __chkstk_darwin(v37);
  sub_100030084();
  __chkstk_darwin(v38);
  sub_10078631C();
  type metadata accessor for Date();
  sub_100017D50();
  __chkstk_darwin(v39);
  sub_100003C38();
  v42 = v40 - v41;
  __chkstk_darwin(v43);
  sub_100079578();
  __chkstk_darwin(v44);
  sub_100030230();
  v45 = type metadata accessor for URL();
  sub_1000037C4();
  v47 = v46;
  __chkstk_darwin(v48);
  sub_1000317E4();
  static URL.read(from:)();
  if (!v21)
  {
    v75 = v24;
    v76 = v42;
    v49 = static String.read(from:)();
    v51 = v50;
    static Date.read(from:)();
    static Date.read(from:)();
    static Date.read(from:)();
    sub_1007873AC();
    sub_10003C620();
    static Optional<A>.read(from:)();
    sub_1000184C0();
    static Optional<A>.read(from:)();
    v73 = static String.read(from:)();
    v74 = v52;
    v72 = static String.read(from:)();
    static Optional<A>.read(from:)();
    sub_100787410();
    static Optional<A>.read(from:)();
    v53 = sub_100787410();
    static WeatherSeverity.read(from:)(v53);
    v54 = sub_100787410();
    static WeatherImportance.read(from:)(v54);
    v55 = sub_100787410();
    static WeatherMetadata.read(from:)(v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v51, v49, v75, v20, v76, v23, v25, v22, v47, v45);
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100786E4C();
    sub_10078741C();
    WeatherAlert.init(detailsURL:source:date:expirationDate:issuedDate:onsetTime:endDate:summary:description:details:region:severity:importance:metadata:id:)();
  }

  sub_10000C8F4();
}

void WeatherAlert.write(to:)()
{
  sub_10000E8AC();
  type metadata accessor for UUID();
  sub_1000037C4();
  v34 = v3;
  __chkstk_darwin(v4);
  sub_1000038E4();
  v35 = v5;
  sub_1000038CC();
  type metadata accessor for WeatherMetadata();
  sub_1000037C4();
  __chkstk_darwin(v6);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for WeatherImportance();
  sub_1000037C4();
  v36 = v8;
  v37 = v7;
  __chkstk_darwin(v7);
  sub_1000038E4();
  v38 = v9;
  sub_1000038CC();
  type metadata accessor for WeatherSeverity();
  sub_1000037C4();
  __chkstk_darwin(v10);
  sub_1000038E4();
  sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v39 = v12;
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003848();
  v40 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_10004E424();
  type metadata accessor for Date();
  sub_1000037C4();
  v41 = v16;
  __chkstk_darwin(v17);
  sub_1000305F4();
  __chkstk_darwin(v18);
  sub_1000B8A18();
  __chkstk_darwin(v19);
  sub_10003BA64();
  type metadata accessor for URL();
  sub_1000037C4();
  __chkstk_darwin(v20);
  sub_1000106FC();
  WeatherAlert.detailsURL.getter();
  URL.write(to:)();
  if (v0)
  {
    v21 = sub_100786DF0();
    v22(v21);
  }

  else
  {
    v23 = sub_100786DF0();
    v24(v23);
    sub_100786EA0();
    WeatherAlert.source.getter();
    String.write(to:)();

    if (!v1)
    {
      WeatherAlert.date.getter();
      sub_100787244();
      Date.write(to:)();
      v25 = *(v41 + 8);
      v26 = sub_10000CA1C();
      v25(v26);
      sub_1000719F4();
      sub_100786EA0();
      WeatherAlert.expirationDate.getter();
      sub_100787244();
      Date.write(to:)();
      v27 = sub_10000CA1C();
      v25(v27);
      sub_1000719F4();
      sub_100786EA0();
      WeatherAlert.issuedDate.getter();
      sub_100787244();
      Date.write(to:)();
      v28 = sub_10000CA1C();
      v25(v28);
      sub_100786EA0();
      WeatherAlert.onsetTime.getter();
      sub_1000E6768();
      Optional<A>.write(to:)();
      sub_1006827B8(v2, &unk_100CB2CF0);
      sub_100786EA0();
      WeatherAlert.endDate.getter();
      sub_1000E6768();
      Optional<A>.write(to:)();
      sub_1006827B8(v40, &unk_100CB2CF0);
      sub_100786EA0();
      WeatherAlert.summary.getter();
      sub_1000B0EE4();
      String.write(to:)();

      WeatherAlert.description.getter();
      sub_1000B0EE4();
      String.write(to:)();

      WeatherAlert.details.getter();
      sub_1000E6768();
      Optional<A>.write(to:)();
      sub_1006827B8(v39, &qword_100CB3AB0);
      sub_100786EA0();
      WeatherAlert.region.getter();
      sub_10022C350(&qword_100CA6078, &unk_100A30870);
      sub_100786574();
      Optional<A>.write(to:)();

      sub_10078755C();
      WeatherAlert.severity.getter();
      sub_100786598();
      WeatherSeverity.write(to:)();
      v29 = sub_1007874DC();
      v30(v29);
      WeatherAlert.importance.getter();
      sub_100031268();
      WeatherImportance.write(to:)(v31);
      (*(v36 + 8))(v38, v37);
      WeatherAlert.metadata.getter();
      sub_100031268();
      WeatherMetadata.write(to:)();
      v32 = sub_100786694();
      v33(v32);
      WeatherAlert.id.getter();
      sub_100031268();
      UUID.write(to:)();
      (*(v34 + 8))(v35);
    }
  }

  sub_100036EA0();
  sub_10000C8F4();
}

void WeatherChanges.write(to:)()
{
  sub_10000E8AC();
  sub_1000926C0();
  type metadata accessor for WeatherMetadata();
  sub_10000548C();
  __chkstk_darwin(v1);
  sub_100006168();
  WeatherChanges.changes.getter();
  sub_100787498();
  type metadata accessor for WeatherChange();
  sub_10077C574(&unk_100CD6600);
  sub_100786F08(&unk_100CD6608);
  sub_100192570();
  Array<A>.write(to:)();
  sub_1007874D0();

  if (!v0)
  {
    WeatherChanges.metadata.getter();
    sub_1007867F4();
    WeatherMetadata.write(to:)();
    v2 = sub_100786540();
    v3(v2);
  }

  sub_1001333F8();
  sub_10000C8F4();
}

void static WeatherChange.read(from:)()
{
  sub_10000E8AC();
  sub_10078676C();
  type metadata accessor for Date();
  sub_10000548C();
  __chkstk_darwin(v1);
  sub_100005384();
  sub_10003E228();
  static Date.read(from:)();
  if (!v0)
  {
    v2 = sub_10003E228();
    static WeatherChange.Direction.read(from:)(v2);
    v3 = sub_10003E228();
    static WeatherChange.Direction.read(from:)(v3);
    v4 = sub_10003E228();
    static WeatherChange.Direction.read(from:)(v4);
    v5 = sub_10003E228();
    static WeatherChange.Direction.read(from:)(v5);
    sub_100786E94();
    WeatherChange.init(date:highTemperature:lowTemperature:dayPrecipitationAmount:nightPrecipitationAmount:)();
  }

  sub_100041B68();
  sub_10000C8F4();
}

void WeatherChange.write(to:)()
{
  sub_1000D3C1C();
  sub_100017580();
  type metadata accessor for Date();
  sub_100024A44();
  __chkstk_darwin(v1);
  sub_100049BF8();
  WeatherChange.date.getter();
  sub_100786E88();
  Date.write(to:)();
  if (v0)
  {
    v2 = sub_1007864D4();
    v3(v2);
  }

  else
  {
    v4 = sub_1007864D4();
    v5(v4);
    WeatherChange.highTemperature.getter();
    v6 = sub_100786574();
    WeatherChange.Direction.write(to:)(v6);
    WeatherChange.lowTemperature.getter();
    v7 = sub_100786574();
    WeatherChange.Direction.write(to:)(v7);
    WeatherChange.dayPrecipitationAmount.getter();
    v8 = sub_100786574();
    WeatherChange.Direction.write(to:)(v8);
    WeatherChange.nightPrecipitationAmount.getter();
    v9 = sub_100786574();
    WeatherChange.Direction.write(to:)(v9);
  }

  sub_100786C88();
  sub_100088758();
}

uint64_t static WeatherCondition.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_1000719BC();
    if (v3 >= 0x22)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for WeatherCondition();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

uint64_t WeatherCondition.write(to:)()
{
  sub_100071804();
  type metadata accessor for WeatherCondition();
  sub_1000037C4();
  __chkstk_darwin(v0);
  v2 = sub_100014DD8(v1, v8);
  v3(v2);
  v4 = sub_100045438();
  v6 = v5(v4);
  if (v6 == enum case for WeatherCondition.blizzard(_:) || v6 == enum case for WeatherCondition.blowingDust(_:) || v6 == enum case for WeatherCondition.blowingSnow(_:) || v6 == enum case for WeatherCondition.breezy(_:) || v6 == enum case for WeatherCondition.clear(_:) || v6 == enum case for WeatherCondition.cloudy(_:) || v6 == enum case for WeatherCondition.drizzle(_:) || v6 == enum case for WeatherCondition.flurries(_:) || v6 == enum case for WeatherCondition.foggy(_:) || v6 == enum case for WeatherCondition.freezingDrizzle(_:) || v6 == enum case for WeatherCondition.freezingRain(_:) || v6 == enum case for WeatherCondition.frigid(_:) || v6 == enum case for WeatherCondition.hail(_:) || v6 == enum case for WeatherCondition.haze(_:) || v6 == enum case for WeatherCondition.heavyRain(_:) || v6 == enum case for WeatherCondition.heavySnow(_:) || v6 == enum case for WeatherCondition.hot(_:) || v6 == enum case for WeatherCondition.hurricane(_:) || v6 == enum case for WeatherCondition.isolatedThunderstorms(_:) || v6 == enum case for WeatherCondition.mostlyClear(_:) || v6 == enum case for WeatherCondition.mostlyCloudy(_:) || v6 == enum case for WeatherCondition.partlyCloudy(_:) || v6 == enum case for WeatherCondition.rain(_:) || v6 == enum case for WeatherCondition.scatteredThunderstorms(_:) || v6 == enum case for WeatherCondition.sleet(_:) || v6 == enum case for WeatherCondition.smoky(_:) || v6 == enum case for WeatherCondition.snow(_:) || v6 == enum case for WeatherCondition.strongStorms(_:) || v6 == enum case for WeatherCondition.sunFlurries(_:) || v6 == enum case for WeatherCondition.sunShowers(_:) || v6 == enum case for WeatherCondition.thunderstorms(_:) || v6 == enum case for WeatherCondition.tropicalStorm(_:) || v6 == enum case for WeatherCondition.windy(_:) || v6 == enum case for WeatherCondition.wintryMix(_:))
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    result = sub_100786F40();
    __break(1u);
  }

  return result;
}

void static WeatherMetadata.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, double a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100786DFC();
  v31 = sub_10022C350(&qword_100CC41A8, &qword_100A5D7B0);
  sub_100003810(v31);
  sub_100003828();
  __chkstk_darwin(v32);
  sub_100037CB0();
  type metadata accessor for Date();
  sub_10000548C();
  __chkstk_darwin(v33);
  sub_1000305F4();
  __chkstk_darwin(v34);
  sub_100040F00();
  sub_100786618();
  static Date.read(from:)();
  if (!v30)
  {
    sub_1007865E4();
    static Date.read(from:)();
    sub_100786580();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100786580();
    static FixedSizeTypeBinaryCodable.read(from:)();
    type metadata accessor for WeatherAttribution();
    sub_10005337C();
    sub_10077C574(v35);
    sub_1007863C0();
    sub_10077C574(v36);
    static Optional<A>.read(from:)();
    WeatherMetadata.init(date:expirationDate:latitude:longitude:attribution:)();
  }

  sub_100786E18();
}

void WeatherMetadata.write(to:)()
{
  sub_10000E8AC();
  sub_10022C350(&qword_100CC41A8, &qword_100A5D7B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100022E2C();
  type metadata accessor for Date();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000305F4();
  __chkstk_darwin(v6);
  sub_1002E4C00();
  WeatherMetadata.date.getter();
  Date.write(to:)();
  if (v0)
  {
    v7 = sub_100787474();
    v8(v7);
  }

  else
  {
    v14 = v1;
    v9 = *(v4 + 8);
    v10 = sub_100787474();
    v9(v10);
    WeatherMetadata.expirationDate.getter();
    Date.write(to:)();
    v11 = sub_100017B70();
    v9(v11);
    WeatherMetadata.latitude.getter();
    sub_100043A24();
    FixedSizeTypeBinaryCodable.write(to:)();
    WeatherMetadata.longitude.getter();
    sub_100043A24();
    FixedSizeTypeBinaryCodable.write(to:)();
    WeatherMetadata.attribution.getter();
    sub_10005337C();
    sub_10077C574(v12);
    sub_1007863C0();
    sub_10077C574(v13);
    sub_100786FC0();
    Optional<A>.write(to:)();
    sub_1006827B8(v14, &qword_100CC41A8);
  }

  sub_1000C8EF8();
  sub_10000C8F4();
}

uint64_t static WeatherSeverity.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_1000719BC();
    if (v3 >= 5)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for WeatherSeverity();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

uint64_t WeatherSeverity.write(to:)()
{
  sub_100071804();
  type metadata accessor for WeatherSeverity();
  sub_1000037C4();
  __chkstk_darwin(v0);
  v2 = sub_100014DD8(v1, v8);
  v3(v2);
  v4 = sub_100045438();
  v6 = v5(v4);
  if (v6 == enum case for WeatherSeverity.minor(_:) || v6 == enum case for WeatherSeverity.moderate(_:) || v6 == enum case for WeatherSeverity.severe(_:) || v6 == enum case for WeatherSeverity.extreme(_:) || v6 == enum case for WeatherSeverity.unknown(_:))
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    result = sub_100786F40();
    __break(1u);
  }

  return result;
}

uint64_t static WeatherSeverityKind.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_1000719BC();
    if (v3 >= 5)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for WeatherSeverityKind();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

uint64_t WeatherSeverityKind.write(to:)()
{
  sub_100071804();
  type metadata accessor for WeatherSeverityKind();
  sub_1000037C4();
  __chkstk_darwin(v0);
  v2 = sub_100014DD8(v1, v8);
  v3(v2);
  v4 = sub_100045438();
  v6 = v5(v4);
  if (v6 == enum case for WeatherSeverityKind.minor(_:) || v6 == enum case for WeatherSeverityKind.moderate(_:) || v6 == enum case for WeatherSeverityKind.severe(_:) || v6 == enum case for WeatherSeverityKind.extreme(_:) || v6 == enum case for WeatherSeverityKind.unknown(_:))
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    result = sub_100786F40();
    __break(1u);
  }

  return result;
}

void sub_100771678(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, double))
{
  v8 = sub_10078676C();
  v10 = v9(v8);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  sub_100021D38();
  sub_100786580();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v4)
  {
    v12 = sub_100786618();
    a3(v12);
    v13 = sub_100787268();
    a4(v5, v13);
  }

  sub_100786E70();
}

void sub_1007717B0()
{
  sub_10000E8AC();
  v13 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_100786DE4();
  v8(v7);
  sub_10000548C();
  sub_100003828();
  __chkstk_darwin(v9);
  sub_100014230();
  v6();
  v10 = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    v4(v10);
    v13(v1);
    v11 = sub_10008650C();
    v12(v11);
  }

  sub_10000C8F4();
}

uint64_t static ApparentPrecipitationIntensityCategory.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_10078643C();
    if (v3)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for ApparentPrecipitationIntensityCategory();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

void static WeatherAvailability.read(from:)()
{
  sub_100032568();
  sub_1007874A4();
  type metadata accessor for WeatherAvailability.AvailabilityKind();
  sub_10000548C();
  __chkstk_darwin(v1);
  sub_100030084();
  __chkstk_darwin(v2);
  sub_10002137C();
  __chkstk_darwin(v3);
  sub_100040F00();
  v4 = sub_100786D18();
  static WeatherAvailability.AvailabilityKind.read(from:)(v4);
  if (!v0)
  {
    v5 = sub_100786D18();
    static WeatherAvailability.AvailabilityKind.read(from:)(v5);
    v6 = sub_100786D18();
    static WeatherAvailability.AvailabilityKind.read(from:)(v6);
    WeatherAvailability.init(minuteAvailability:alertAvailability:airQualityAvailability:)();
  }

  sub_100786C88();
  sub_10008835C();
}

void WeatherAvailability.write(to:)()
{
  sub_10000E8AC();
  sub_1007863D8();
  type metadata accessor for WeatherAvailability.AvailabilityKind();
  sub_10000548C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000088C0();
  __chkstk_darwin(v7);
  sub_10002137C();
  __chkstk_darwin(v8);
  sub_10003C300();
  WeatherAvailability.minuteAvailability.getter();
  WeatherAvailability.AvailabilityKind.write(to:)();
  if (v1)
  {
    v9 = sub_10007485C();
    v10(v9);
  }

  else
  {
    v11 = v3;
    v12 = *(v5 + 8);
    v12(v11, v0);
    sub_100786C1C();
    WeatherAvailability.alertAvailability.getter();
    WeatherAvailability.AvailabilityKind.write(to:)();
    v12(v2, v0);
    sub_100787008();
    WeatherAvailability.airQualityAvailability.getter();
    sub_100163724();
    WeatherAvailability.AvailabilityKind.write(to:)();
    v13 = sub_1007874D0();
    v12(v13, v0);
  }

  sub_1001333F8();
  sub_10000C8F4();
}

uint64_t static WeatherAvailability.AvailabilityKind.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_1000719BC();
    if (v3 >= 4u)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for WeatherAvailability.AvailabilityKind();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

uint64_t WeatherAvailability.AvailabilityKind.write(to:)()
{
  sub_100071804();
  type metadata accessor for WeatherAvailability.AvailabilityKind();
  sub_1000037C4();
  __chkstk_darwin(v0);
  v2 = sub_100014DD8(v1, v8);
  v3(v2);
  v4 = sub_100045438();
  v6 = v5(v4);
  if (v6 == enum case for WeatherAvailability.AvailabilityKind.available(_:) || v6 == enum case for WeatherAvailability.AvailabilityKind.temporarilyUnavailable(_:) || v6 == enum case for WeatherAvailability.AvailabilityKind.unsupported(_:) || v6 == enum case for WeatherAvailability.AvailabilityKind.unknown(_:))
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    result = sub_100786F40();
    __break(1u);
  }

  return result;
}

void sub_100771F48()
{
  sub_10000E8AC();
  sub_1007864C4();
  type metadata accessor for WeatherDescription();
  sub_10000FB48();
  __chkstk_darwin(v2);
  sub_100006168();
  sub_100786618();
  static WeatherDescription.read(from:)();
  if (!v1)
  {
    sub_100786618();
    v3 = static String.read(from:)();
    v5 = v4;
    sub_100786618();
    v6 = static String.read(from:)();
    v8 = v7;
    v9 = sub_1000E14D4();
    v10(v9);
    v11 = type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
    v12 = (v0 + *(v11 + 20));
    *v12 = v3;
    v12[1] = v5;
    v13 = (v0 + *(v11 + 24));
    *v13 = v6;
    v13[1] = v8;
  }

  sub_100036EA0();
  sub_10000C8F4();
}

uint64_t sub_10077207C(uint64_t a1)
{
  result = WeatherDescription.write(to:)();
  if (!v1)
  {
    type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
    sub_1007874FC();
    sub_100787574();
    sub_10000CDB0();
    String.write(to:)();
    sub_100787574();
    sub_10000CDB0();
    return String.write(to:)();
  }

  return result;
}

void sub_1007720E8()
{
  sub_1000D3C1C();
  v2 = v1;
  v3 = static String.read(from:)();
  if (!v0)
  {
    v5 = v3;
    v6 = v4;
    sub_100786420();
    v7 = static String.read(from:)();
    v9 = v8;
    sub_100786420();
    v10 = static String.read(from:)();
    *v2 = v5;
    v2[1] = v6;
    v2[2] = v7;
    v2[3] = v9;
    v2[4] = v10;
    v2[5] = v11;
  }

  sub_100088758();
}

uint64_t sub_100772180(uint64_t a1)
{
  result = String.write(to:)();
  if (!v1)
  {
    String.write(to:)();
    return String.write(to:)();
  }

  return result;
}

void sub_1007721C8(uint64_t a1)
{
  sub_1007865BC();
  v3 = v2;
  type metadata accessor for PressureTrend();
  sub_10000FB48();
  __chkstk_darwin(v4);
  sub_100049BF8();
  v5 = sub_100786778();
  static PressureTrend.read(from:)(v5);
  if (!v1)
  {
    sub_100786778();
    v6 = static String.read(from:)();
    v8 = v7;
    sub_100786778();
    v9 = static String.read(from:)();
    v11 = v10;
    v25 = v9;
    sub_100786778();
    v22 = static String.read(from:)();
    v23 = v12;
    v24 = v11;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100786778();
    v13 = static String.read(from:)();
    v15 = v14;
    sub_100786FB4();
    v16();
    v17 = type metadata accessor for PressureComponentPreprocessedDataModel(0);
    v18 = (v3 + v17[5]);
    *v18 = v6;
    v18[1] = v8;
    v19 = (v3 + v17[6]);
    *v19 = v25;
    v19[1] = v24;
    v20 = (v3 + v17[7]);
    *v20 = v22;
    v20[1] = v23;
    *(v3 + v17[8]) = v26;
    v21 = (v3 + v17[9]);
    *v21 = v13;
    v21[1] = v15;
  }

  sub_10002FE90();
  sub_10009D16C();
}

void sub_1007723E4()
{
  sub_1007863D8();
  PressureTrend.write(to:)(v2);
  if (!v0)
  {
    type metadata accessor for PressureComponentPreprocessedDataModel(0);
    sub_10001325C();
    sub_1000C82DC();
    sub_1000C82DC();
    sub_1000C82DC();
    sub_100786FE4(*(v1 + 32));
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1000C82DC();
  }
}

uint64_t sub_100772494()
{
  sub_100786ED8();
  result = static String.read(from:)();
  if (!v0)
  {
    v4 = result;
    v5 = v3;
    sub_1007863CC();
    v6 = static String.read(from:)();
    v8 = v7;
    sub_1007863CC();
    v9 = static String.read(from:)();
    v45 = v10;
    sub_1007863CC();
    v11 = static String.read(from:)();
    v13 = v12;
    v44 = v11;
    sub_1007863CC();
    v41 = static String.read(from:)();
    v42 = v13;
    v43 = v14;
    sub_1007863CC();
    v15 = static String.read(from:)();
    v17 = v16;
    v40 = v15;
    sub_1007863CC();
    v38 = static String.read(from:)();
    v39 = v18;
    sub_1007863CC();
    v36 = static String.read(from:)();
    v37 = v19;
    sub_1007863CC();
    v33 = static String.read(from:)();
    v35 = v20;
    sub_1007863CC();
    v32 = static String.read(from:)();
    v34 = v21;
    sub_1007863CC();
    v30 = static String.read(from:)();
    v31 = v22;
    sub_1007863CC();
    v28 = static String.read(from:)();
    v29 = v23;
    sub_1007863CC();
    v26 = static String.read(from:)();
    v27 = v24;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1007863CC();
    result = static String.read(from:)();
    *v1 = v4;
    v1[1] = v5;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v9;
    v1[5] = v45;
    v1[6] = v44;
    v1[7] = v42;
    v1[8] = v41;
    v1[9] = v43;
    v1[10] = v40;
    v1[11] = v17;
    v1[12] = v38;
    v1[13] = v39;
    v1[14] = v36;
    v1[15] = v37;
    v1[16] = v33;
    v1[17] = v35;
    v1[18] = v32;
    v1[19] = v34;
    v1[20] = v30;
    v1[21] = v31;
    v1[22] = v28;
    v1[23] = v29;
    v1[24] = v26;
    v1[25] = v27;
    v1[26] = v46;
    v1[27] = result;
    v1[28] = v25;
  }

  return result;
}

uint64_t sub_100772984()
{
  sub_100787048();
  result = String.write(to:)();
  if (!v0)
  {
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    sub_100786FF0();
    FixedSizeTypeBinaryCodable.write(to:)();
    return String.write(to:)();
  }

  return result;
}

void sub_100772B00()
{
  sub_1000E62AC();
  v1 = type metadata accessor for WeatherConditionBackgroundTimeData(0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_100005384();
  sub_1007866F0();
  sub_100772B80();
  if (!v0)
  {
    sub_10078686C();
    v3 = sub_100003B2C();
    sub_100187600(v3, v4);
  }
}

void sub_100772B80()
{
  sub_10000E8AC();
  sub_1000E62AC();
  v4 = sub_10022C350(&qword_100CACCC0, &unk_100A5D780);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000183C0();
  v6 = sub_10022C350(&qword_100CA58B8, &qword_100A2FD30);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000115E8();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v8);
  sub_1000520E4();
  sub_1007866F0();
  static Date.read(from:)();
  if (!v1)
  {
    v14 = v0;
    type metadata accessor for Elevation();
    sub_10077C574(&unk_100CD00C0);
    sub_1000D3C40();
    sub_10077C574(v9);
    sub_100786FD8();
    static Optional<A>.read(from:)();
    type metadata accessor for BackgroundMoonData();
    sub_10077C574(&unk_100CD00D0);
    sub_1000888CC();
    sub_10077C574(v10);
    sub_100786540();
    static Optional<A>.read(from:)();
    v11 = sub_100011498();
    v12(v11);
    v13 = type metadata accessor for WeatherConditionBackgroundTimeData(0);
    sub_100786150(v2, v14 + *(v13 + 20), &qword_100CA58B8, &qword_100A2FD30);
    sub_100786150(v3, v14 + *(v13 + 24), &qword_100CACCC0, &unk_100A5D780);
  }

  sub_1007865A4();
  sub_10000C8F4();
}

void sub_100772E58()
{
  sub_100032568();
  sub_1007863D8();
  Date.write(to:)();
  if (!v0)
  {
    type metadata accessor for WeatherConditionBackgroundTimeData(0);
    sub_10022C350(&qword_100CA58B8, &qword_100A2FD30);
    sub_100786854();
    sub_10077C574(v1);
    sub_1000D3C40();
    sub_10077C574(v2);
    sub_100052444();
    sub_10022C350(&qword_100CACCC0, &unk_100A5D780);
    sub_1000E1454();
    sub_10077C574(v3);
    sub_1000888CC();
    sub_10077C574(v4);
    sub_100786728();
  }

  sub_10008835C();
}

uint64_t static WeatherImportance.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_10078643C();
    if (v3)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for WeatherImportance();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

uint64_t static DayPartForecast.read(from:)(uint64_t a1)
{
  v1 = sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_100003E5C(v1, &v39);
  sub_100003828();
  __chkstk_darwin(v2);
  sub_1000039BC();
  sub_100003918(v3);
  v4 = type metadata accessor for Wind();
  v5 = sub_100003E5C(v4, &v38);
  __chkstk_darwin(v5);
  sub_1000038E4();
  sub_100003990(v6);
  v7 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v8 = sub_100003E5C(v7, &v40);
  __chkstk_darwin(v8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_10000E70C();
  sub_100003918(v10);
  v11 = type metadata accessor for UVIndex();
  v12 = sub_100003E5C(v11, &v41);
  __chkstk_darwin(v12);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_10000E70C();
  sub_100003918(v14);
  v15 = type metadata accessor for ApparentPrecipitationIntensity();
  v16 = sub_100003E5C(v15, &v42);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_10000E70C();
  sub_100003918(v18);
  v19 = type metadata accessor for PrecipitationAmountByType();
  v20 = sub_100003E5C(v19, &v43);
  __chkstk_darwin(v20);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for Precipitation();
  sub_1000037C4();
  __chkstk_darwin(v21);
  sub_1000038E4();
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  __chkstk_darwin(v22);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100040F00();
  type metadata accessor for WeatherCondition();
  sub_10000548C();
  __chkstk_darwin(v24);
  sub_100005888();
  type metadata accessor for CloudCoverByAltitude();
  sub_1000037C4();
  __chkstk_darwin(v25);
  sub_1000106FC();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v26);
  sub_100003C38();
  sub_1000886FC();
  __chkstk_darwin(v27);
  sub_10003BA64();
  result = static Date.read(from:)();
  if (!v36)
  {
    static Date.read(from:)();
    sub_100786D0C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000CC10();
    static CloudCoverByAltitude.read(from:)();
    static WeatherCondition.read(from:)(a1);
    sub_100786D0C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
    static NSUnitTemperature.read(from:)(a1);
    Measurement.init(value:unit:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    static NSUnitTemperature.read(from:)(a1);
    Measurement.init(value:unit:)();
    v29 = sub_100786E58();
    static Precipitation.read(from:)(v29);
    static PrecipitationAmountByType.read(from:)(a1);
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100786E58();
    static ApparentPrecipitationIntensity.read(from:)();
    sub_100786E58();
    static ApparentPrecipitationIntensity.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v30 = sub_100786E58();
    static UVIndex.ExposureCategory.read(from:)(v30);
    sub_100786E4C();
    UVIndex.init(value:category:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v31 = sub_100786E58();
    static UVIndex.ExposureCategory.read(from:)(v31);
    UVIndex.init(value:category:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
    sub_1007866C4();
    static NSUnitLength.read(from:)(v32);
    sub_100786D6C();
    Measurement.init(value:unit:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1007866C4();
    static NSUnitLength.read(from:)(v33);
    sub_100786DCC();
    Measurement.init(value:unit:)();
    sub_1007875AC();
    v34 = sub_100786E58();
    static Wind.read(from:)(v34);
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CAC428, NSUnitSpeed_ptr);
    v35 = sub_100786E58();
    static NSUnitSpeed.read(from:)(v35);
    sub_100787568();
    Measurement.init(value:unit:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100787568();
    sub_1007875AC();
    sub_100786DCC();
    sub_100786D6C();
    sub_100786E4C();
    sub_10078667C();
    sub_1000B854C();
    return DayPartForecast.init(forecastStart:forecastEnd:cloudCover:cloudCoverByAltitude:condition:highTemperature:lowTemperature:precipitation:precipitationAmountByType:precipitationChance:precipitationIntensityMax:perceivedPrecipitationIntensityMax:isDaylight:maximumUVIndex:minimumUVIndex:maximumHumidity:minimumHumidity:maximumVisibility:minimumVisibility:wind:highWindSpeed:humidity:)();
  }

  return result;
}

void DayPartForecast.write(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, double a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10000E8AC();
  a27 = v29;
  a28 = v30;
  v32 = v31;
  v33 = sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_100003E5C(v33, &a24);
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  sub_100003918(v35);
  v36 = type metadata accessor for Wind();
  v37 = sub_100003E5C(v36, &a21);
  __chkstk_darwin(v37);
  sub_1000038E4();
  sub_100003990(v38);
  v39 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v40 = sub_100003E5C(v39, &a18);
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  sub_100003918(v42);
  v98 = type metadata accessor for UVIndex();
  sub_1000037C4();
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_10000E70C();
  v99 = v45;
  sub_1000038CC();
  type metadata accessor for ApparentPrecipitationIntensity();
  sub_1000037C4();
  v101 = v47;
  v102 = v46;
  __chkstk_darwin(v46);
  sub_100003848();
  v100 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_10000E70C();
  v103 = v50;
  sub_1000038CC();
  type metadata accessor for PrecipitationAmountByType();
  sub_1000037C4();
  __chkstk_darwin(v51);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for Precipitation();
  sub_1000037C4();
  __chkstk_darwin(v52);
  sub_1000038E4();
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v104 = v53;
  __chkstk_darwin(v54);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_10000E70C();
  sub_1000038CC();
  type metadata accessor for WeatherCondition();
  sub_1000037C4();
  __chkstk_darwin(v56);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for CloudCoverByAltitude();
  sub_1000037C4();
  __chkstk_darwin(v57);
  sub_10001BA34();
  type metadata accessor for Date();
  sub_1000037C4();
  v59 = v58;
  __chkstk_darwin(v60);
  sub_100003C38();
  sub_100021390();
  __chkstk_darwin(v61);
  sub_1000B9E20();
  DayPartForecast.forecastStart.getter();
  sub_10078706C();
  Date.write(to:)();
  if (v28)
  {
    v62 = sub_100786DF0();
    v63(v62);
  }

  else
  {
    v64 = *(v59 + 8);
    v65 = sub_100786DF0();
    v64(v65);
    DayPartForecast.forecastEnd.getter();
    sub_1007867F4();
    Date.write(to:)();
    v66 = sub_100192210();
    v64(v66);
    DayPartForecast.cloudCover.getter();
    a18 = v67;
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1000371B0();
    DayPartForecast.cloudCoverByAltitude.getter();
    sub_10019224C();
    CloudCoverByAltitude.write(to:)();
    sub_100786414();
    sub_100786DB4();
    v70(v68, v69);
    sub_1007867E8();
    DayPartForecast.condition.getter();
    sub_10019224C();
    WeatherCondition.write(to:)();
    v71 = sub_100786414();
    v72(v71);
    sub_1007867E8();
    DayPartForecast.highTemperature.getter();
    sub_1000066E8();
    v73 = sub_10019224C();
    sub_100779504(v73, v74);
    v75 = *(v104 + 8);
    v76 = sub_10002C598();
    v75(v76);
    DayPartForecast.lowTemperature.getter();
    sub_1000066E8();
    sub_100779504(v32, v77);
    v78 = sub_1002E58CC();
    v75(v78);
    sub_1007867E8();
    DayPartForecast.precipitation.getter();
    sub_10019224C();
    Precipitation.write(to:)();
    v79 = sub_100786414();
    v80(v79);
    sub_1007867E8();
    DayPartForecast.precipitationAmountByType.getter();
    sub_10019224C();
    PrecipitationAmountByType.write(to:)();
    v81 = sub_100786414();
    v82(v81);
    sub_1007867E8();
    DayPartForecast.precipitationChance.getter();
    a18 = v83;
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1007867E8();
    DayPartForecast.precipitationIntensityMax.getter();
    sub_1007866C4();
    ApparentPrecipitationIntensity.write(to:)();
    v84 = *(v101 + 8);
    v84(v103, v102);
    sub_100787008();
    DayPartForecast.perceivedPrecipitationIntensityMax.getter();
    sub_100786EE4();
    ApparentPrecipitationIntensity.write(to:)();
    v84(v100, v102);
    LOBYTE(a18) = DayPartForecast.isDaylight.getter() & 1;
    sub_10003BCF8();
    FixedSizeTypeBinaryCodable.write(to:)();
    DayPartForecast.maximumUVIndex.getter();
    a18 = COERCE_DOUBLE(UVIndex.value.getter());
    sub_1007865F0();
    UVIndex.category.getter();
    v85 = sub_100786630();
    UVIndex.ExposureCategory.write(to:)(v85);
    sub_100787160();
    MEMORY[0](v99, v98);
    sub_100787008();
    DayPartForecast.minimumUVIndex.getter();
    a18 = COERCE_DOUBLE(UVIndex.value.getter());
    sub_10003BCF8();
    FixedSizeTypeBinaryCodable.write(to:)();
    UVIndex.category.getter();
    UVIndex.ExposureCategory.write(to:)(v32);
    v86 = sub_100786624();
    MEMORY[0](v86, v98);
    DayPartForecast.maximumHumidity.getter();
    a18 = v87;
    sub_10003BCF8();
    FixedSizeTypeBinaryCodable.write(to:)();
    DayPartForecast.minimumHumidity.getter();
    a18 = v88;
    sub_1007865F0();
    DayPartForecast.maximumVisibility.getter();
    sub_10001CC78();
    v89 = sub_10011C148();
    sub_100779504(v89, v90);
    sub_100787160();
    MEMORY[0]();
    sub_100787008();
    DayPartForecast.minimumVisibility.getter();
    sub_10001CC78();
    sub_100779504(0, v91);
    MEMORY[0]();
    sub_10000492C();
    DayPartForecast.wind.getter();
    sub_100040D14();
    Wind.write(to:)();
    sub_10000E73C();
    v92 = sub_10078743C();
    v93(v92);
    sub_10000492C();
    DayPartForecast.highWindSpeed.getter();
    sub_100028AC8();
    v94 = sub_100040D14();
    sub_100779504(v94, v95);
    sub_10000E73C();
    v96(0);
    DayPartForecast.humidity.getter();
    a18 = v97;
    sub_1007865F0();
  }

  sub_100036EA0();
  sub_10000C8F4();
}

void HistoricalComparisons.write(to:)()
{
  sub_10000E8AC();
  sub_1000926C0();
  type metadata accessor for WeatherMetadata();
  sub_10000548C();
  __chkstk_darwin(v1);
  sub_100006168();
  HistoricalComparisons.comparisons.getter();
  sub_100787498();
  type metadata accessor for HistoricalComparison();
  sub_10077C574(&unk_100CD6620);
  sub_100786F08(&unk_100CD6628);
  sub_100192570();
  Array<A>.write(to:)();
  sub_1007874D0();

  if (!v0)
  {
    HistoricalComparisons.metadata.getter();
    sub_1007867F4();
    WeatherMetadata.write(to:)();
    v2 = sub_100786540();
    v3(v2);
  }

  sub_1001333F8();
  sub_10000C8F4();
}

void static HistoricalComparison.read(from:)()
{
  sub_10000E8AC();
  v32 = v1;
  sub_10022C350(&qword_100CBC0D0, &qword_100A52908);
  sub_100017D50();
  __chkstk_darwin(v2);
  sub_1000305F4();
  __chkstk_darwin(v3);
  sub_10004E424();
  sub_10022C350(&unk_100CABCA0, qword_100A3AB60);
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_100003C38();
  sub_1000886FC();
  __chkstk_darwin(v5);
  sub_10078631C();
  sub_10019235C();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_100787154();
    switch(v6)
    {
      case 0:
        v7 = sub_100786618();
        sub_1007795A0(v7, v8);
        v9 = v32;
        v10 = sub_10007485C();
        v11(v10);
        v12 = &enum case for HistoricalComparison.highTemperature(_:);
        goto LABEL_12;
      case 1:
        v21 = sub_100786618();
        sub_1007795A0(v21, v22);
        v9 = v32;
        v23 = sub_1002E54F8();
        v24(v23);
        v12 = &enum case for HistoricalComparison.lowTemperature(_:);
        goto LABEL_12;
      case 2:
        v13 = sub_100786618();
        sub_100779850(v13, v14);
        v9 = v32;
        v15 = sub_100017B70();
        v16(v15);
        v12 = &enum case for HistoricalComparison.precipitationAmount(_:);
        goto LABEL_12;
      case 3:
        v17 = sub_100786618();
        sub_100779850(v17, v18);
        v9 = v32;
        v19 = sub_10007485C();
        v20(v19);
        v12 = &enum case for HistoricalComparison.snowfallAmount(_:);
LABEL_12:
        v25 = *v12;
        type metadata accessor for HistoricalComparison();
        sub_100003A9C();
        (*(v26 + 104))(v9, v25);
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v28 = sub_10077C574(v27);
        v29 = sub_1007863A0(v28);
        sub_100787280(v29, v30);
        sub_10004E4B8();
        (*(v31 + 104))();
        swift_willThrow();
        break;
    }
  }

  sub_100036EA0();
  sub_10000C8F4();
}

void HistoricalComparison.write(to:)()
{
  sub_10000E8AC();
  v6 = v5;
  sub_10022C350(&qword_100CBC0D0, &qword_100A52908);
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v8);
  sub_10000E70C();
  sub_10022C350(&unk_100CABCA0, qword_100A3AB60);
  sub_100024A44();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000305F4();
  __chkstk_darwin(v12);
  sub_1002E4C00();
  type metadata accessor for HistoricalComparison();
  sub_10000548C();
  __chkstk_darwin(v13);
  sub_100005888();
  v14 = sub_100031474();
  v15(v14);
  v16 = sub_1000046B4();
  v18 = v17(v16);
  if (v18 == enum case for HistoricalComparison.highTemperature(_:))
  {
    v19 = sub_1000046B4();
    v20(v19);
    sub_100787118();
    v21(v4, v1, v2);
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v0)
    {
      sub_1007789C4(v6);
    }

    (*(v10 + 8))(v4, v2);
LABEL_17:
    sub_1007865A4();
    sub_10000C8F4();
    return;
  }

  if (v18 == enum case for HistoricalComparison.lowTemperature(_:))
  {
    v22 = sub_1000046B4();
    v23(v22);
    sub_100787118();
    v24 = sub_1002E52D0();
    v25(v24);
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v0)
    {
      sub_1007789C4(v6);
    }

    (*(v10 + 8))(v3, v2);
    goto LABEL_17;
  }

  if (v18 == enum case for HistoricalComparison.precipitationAmount(_:))
  {
    v26 = sub_1000046B4();
    v27(v26);
    sub_10002CA80();
    v28();
LABEL_14:
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v0)
    {
      sub_100786EE4();
      sub_100778C8C(v33);
    }

    v34 = sub_100020B1C();
    v35(v34);
    goto LABEL_17;
  }

  if (v18 == enum case for HistoricalComparison.snowfallAmount(_:))
  {
    v29 = sub_1000046B4();
    v30(v29);
    v31 = sub_100008408();
    v32(v31);
    goto LABEL_14;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t static Deviation.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_1000719BC();
    if (v3 >= 5)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for Deviation();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

uint64_t Deviation.write(to:)()
{
  sub_100071804();
  type metadata accessor for Deviation();
  sub_1000037C4();
  __chkstk_darwin(v0);
  v2 = sub_100014DD8(v1, v8);
  v3(v2);
  v4 = sub_100045438();
  v6 = v5(v4);
  if (v6 == enum case for Deviation.muchHigher(_:) || v6 == enum case for Deviation.higher(_:) || v6 == enum case for Deviation.normal(_:) || v6 == enum case for Deviation.lower(_:) || v6 == enum case for Deviation.muchLower(_:))
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    result = sub_100786F40();
    __break(1u);
  }

  return result;
}

uint64_t static HistoricalFacts.read(from:)()
{
  sub_10000C76C();
  type metadata accessor for HistoricalFact();
  sub_10078689C();
  sub_10077C574(v1);
  sub_100786B30(&unk_100CD6638);
  sub_100025214();
  result = static Array<A>.read(from:)();
  if (!v0)
  {
    return HistoricalFacts.init(facts:)();
  }

  return result;
}

uint64_t HistoricalFacts.write(to:)()
{
  sub_1000BB558();
  HistoricalFacts.facts.getter();
  sub_1000038D8();
  type metadata accessor for HistoricalFact();
  sub_10078689C();
  sub_10077C574(v0);
  v1 = sub_100786B30(&unk_100CD6638);
  sub_1000C8B34(v1);
  sub_100786800();
}

void HistoricalFact.write(to:)()
{
  sub_10000E8AC();
  sub_100786DE4();
  type metadata accessor for WeatherMetadata();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for HistoricalFact.Period();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_10001BA34();
  type metadata accessor for HistoricalFact.Condition();
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_10002429C();
  HistoricalFact.condition.getter();
  HistoricalFact.Condition.write(to:)(v1);
  v5 = sub_100786C78();
  if (!v0)
  {
    v6(v5);
    HistoricalFact.period.getter();
    HistoricalFact.Period.write(to:)(v1);
    v7 = sub_1007866D0();
    v8(v7);
    v9 = HistoricalFact.token.getter();
    sub_1007867C0(v9, v10);

    v11 = HistoricalFact.heading.getter();
    sub_1007867C0(v11, v12);

    v13 = HistoricalFact.message.getter();
    sub_1007867C0(v13, v14);

    HistoricalFact.arguments.getter();
    sub_100017580();
    type metadata accessor for HistoricalFact.Argument();
    sub_10077C574(&unk_100CD6640);
    sub_100786884();
    sub_10077C574(v15);
    sub_100037280();
    Array<A>.write(to:)();

    HistoricalFact.metadata.getter();
    sub_100786B18();
    WeatherMetadata.write(to:)();
    v5 = sub_100037B8C();
  }

  v6(v5);
  sub_1001333F8();
  sub_10000C8F4();
}

uint64_t static HistoricalFact.Period.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_10078643C();
    if (v3)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for HistoricalFact.Period();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

void sub_100775F20()
{
  sub_10000E8AC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1000926C0();
  v7(v6);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000183C0();
  v9 = sub_100017B70();
  v10(v9);
  v11 = sub_1007874C4();
  v13 = v12(v11);
  if (v13 == *v5)
  {
    sub_10001635C();
LABEL_7:
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10000C8F4();
    return;
  }

  if (v13 == *v3)
  {
    sub_1000C8FEC();
    goto LABEL_7;
  }

  if (v13 == *v1)
  {
    sub_1000BCE14();
    goto LABEL_7;
  }

  sub_100786F40();
  __break(1u);
}

uint64_t static HistoricalFact.Condition.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_100051AC0();
    if (v4 || v3 == 2)
    {
      sub_10078658C();
      type metadata accessor for HistoricalFact.Condition();
      sub_100003A9C();
      v5 = sub_100031474();
      return v6(v5);
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v8 = sub_10077C574(v7);
      v9 = sub_100074D7C(v8);
      sub_10002C964(v9, v10);
      sub_100006494();
      (*(v11 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1007761C4()
{
  sub_100032568();
  v2 = v1;
  v4 = v3;
  v5 = sub_1000926C0();
  v7 = v6(v5);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_100014230();
  v11 = sub_100020E44();
  v12(v11);
  v13 = (*(v9 + 88))(v0, v7);
  if (v13 == *v4)
  {
    goto LABEL_4;
  }

  if (v13 == *v2)
  {
    sub_1001706C0();
LABEL_4:
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10008835C();
    return;
  }

  sub_100786F40();
  __break(1u);
}

void static HistoricalFact.Argument.read(from:)(uint64_t a1)
{
  sub_1007865BC();
  sub_1000BB558();
  v40 = v6;
  sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_100017D50();
  v39 = v7;
  __chkstk_darwin(v8);
  sub_100020E28();
  __chkstk_darwin(v9);
  sub_10003C300();
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_100024A44();
  v11 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v1)
  {
    v34 = v3;
    v35 = v5;
    v36 = v4;
    v37 = v11;
    v38 = v2;
    v15 = v40;
    switch(v42)
    {
      case 1:
        sub_1000BC6E4();
        static FixedSizeTypeBinaryCodable.read(from:)();
        *v15 = v41;
        goto LABEL_18;
      case 2:
        sub_1000BC6E4();
        static FixedSizeTypeBinaryCodable.read(from:)();
        sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
        v25 = sub_1000B0CA4();
        static NSUnitTemperature.read(from:)(v25);
        sub_100786D54();
        Measurement.init(value:unit:)();
        (*(v37 + 32))(v15, v14, v34);
        goto LABEL_18;
      case 3:
        sub_1000BC6E4();
        static FixedSizeTypeBinaryCodable.read(from:)();
        sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
        v19 = sub_1000B0CA4();
        static NSUnitLength.read(from:)(v19);
        sub_100787208();
        sub_100786D54();
        Measurement.init(value:unit:)();
        v20 = sub_100025214();
        v21(v20);
        goto LABEL_18;
      case 4:
        sub_1000BC6E4();
        static FixedSizeTypeBinaryCodable.read(from:)();
        sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
        v22 = sub_1000B0CA4();
        static NSUnitLength.read(from:)(v22);
        sub_100786D54();
        Measurement.init(value:unit:)();
        v23 = sub_100025214();
        v24(v23);
        goto LABEL_18;
      case 5:
        sub_1000BC6E4();
        static FixedSizeTypeBinaryCodable.read(from:)();
        v16 = v41;
        sub_1000B0CA4();
        v17 = static String.read(from:)();
        *v15 = v16;
        v15[1] = v17;
        v15[2] = v18;
LABEL_18:
        sub_10078658C();
        type metadata accessor for HistoricalFact.Argument();
        sub_100003A9C();
        v26 = sub_100031474();
        v27(v26);
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v29 = sub_10077C574(v28);
        v30 = sub_100074D7C(v29);
        sub_10002C964(v30, v31);
        sub_100006494();
        (*(v32 + 104))();
        swift_willThrow();
        break;
    }
  }

  sub_10002FE90();
  sub_10009D16C();
}

void HistoricalFact.Argument.write(to:)(uint64_t a1)
{
  sub_1007865BC();
  sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_1000037C4();
  v41 = v5;
  v42 = v4;
  __chkstk_darwin(v4);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v6);
  sub_100040F00();
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000183C0();
  v8 = type metadata accessor for HistoricalFact.Argument();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100005384();
  v12 = sub_100003B2C();
  v13(v12);
  v14 = (*(v10 + 88))(v1, v8);
  if (v14 == enum case for HistoricalFact.Argument.integer(_:))
  {
    v15 = sub_10078666C();
    v16(v15);
    sub_10003E228();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v2)
    {
      sub_1007865E4();
      FixedSizeTypeBinaryCodable.write(to:)();
    }

LABEL_21:
    sub_1007865A4();
    sub_10009D16C();
    return;
  }

  if (v14 == enum case for HistoricalFact.Argument.temperature(_:))
  {
    v17 = sub_10078666C();
    v18(v17);
    v19 = sub_1007874C4();
    v20(v19);
    sub_10003E228();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v2)
    {
      sub_1000066E8();
      v21 = sub_1007870D0();
      sub_100779504(v21, v22);
    }

    v23 = sub_100017B70();
    v24(v23);
    goto LABEL_21;
  }

  if (v14 == enum case for HistoricalFact.Argument.precipitationAmount(_:))
  {
    v25 = sub_10078666C();
    v26(v25);
    v27 = sub_10003C310();
    v28(v27);
    sub_10003E228();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v2)
    {
      sub_10001CC78();
      sub_100786EE4();
      sub_100779504(v29, v30);
    }

    (*(v41 + 8))(v3, v42);
    goto LABEL_21;
  }

  if (v14 == enum case for HistoricalFact.Argument.snowfallAmount(_:))
  {
    v31 = sub_10078666C();
    v32(v31);
    v33 = sub_1007874C4();
    v34(v33);
    sub_10003E228();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v2)
    {
      sub_10001CC78();
      v35 = sub_1007870D0();
      sub_100779504(v35, v36);
    }

    v37 = sub_10000CA1C();
    v38(v37);
    goto LABEL_21;
  }

  if (v14 == enum case for HistoricalFact.Argument.date(_:))
  {
    v39 = sub_10078666C();
    v40(v39);
    sub_100043A24();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v2)
    {
      sub_1007865E4();
      FixedSizeTypeBinaryCodable.write(to:)();
      sub_10000810C();
      String.write(to:)();
    }

    goto LABEL_21;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void static WeatherStatisticsModel.read(from:)()
{
  sub_10000E8AC();
  v4 = v3;
  v47 = v5;
  v6 = type metadata accessor for WeatherMetadata();
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000038E4();
  v52 = v8;
  v9 = sub_10022C350(&qword_100CAB9B8, &qword_100A3A828);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  sub_100787238(v11);
  sub_10022C350(&qword_100CB5468, &unk_100A95C40);
  sub_1000037C4();
  v48 = v13;
  v49 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_100003CB4();
  v15 = sub_10022C350(&qword_100CD6650, &qword_100A979D0);
  sub_1000037C4();
  v50 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_10001320C();
  v18 = sub_10022C350(&qword_100CAB990, &qword_100A3A810);
  sub_1000037C4();
  v51 = v19;
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  sub_10022C350(&qword_100CB10F8, &qword_100A95930);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v23);
  sub_100014230();
  sub_10077ACE0(v4);
  if (!v0)
  {
    v42 = v15;
    v43 = v18;
    v44 = v1;
    v45 = v2;
    sub_10077A5F0(v4);
    sub_10077B49C(v4);
    v41 = v22;
    sub_10077B740(v4);
    v24 = type metadata accessor for DayPrecipitationSummary();
    sub_10077C574(&unk_100CD6658);
    sub_10077C574(&unk_100CD6660);
    sub_1000BA488();
    sub_1000523E0();
    static Array<A>.read(from:)();
    static WeatherMetadata.read(from:)(v4, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v24, v41, *&v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    sub_10077C574(&unk_100CD6668);
    sub_100787314(&unk_100CD6670);
    sub_100787314(&unk_100CD6678);
    DailyWeatherSummary.init(days:metadata:)();
    WeatherStatisticsModel.init(hourlyTemperatureStatistics:dailyPrecipitationStatistics:monthlyTemperatureStatistics:monthlyPrecipitationStatistics:dailyPrecipitationSummary:)();
  }

  sub_10000C8F4();
}

void WeatherStatisticsModel.write(to:)()
{
  sub_10000E8AC();
  v3 = v2;
  sub_10022C350(&qword_100CAB9B8, &qword_100A3A828);
  sub_1000037C4();
  v23 = v5;
  v24 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v22 = v7;
  sub_10022C350(&qword_100CB5468, &unk_100A95C40);
  sub_1000037C4();
  v26 = v9;
  v27 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  sub_100787238(v11);
  sub_10022C350(&qword_100CD6650, &qword_100A979D0);
  sub_1000037C4();
  v28 = v13;
  v29 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_100014230();
  sub_10022C350(&qword_100CAB990, &qword_100A3A810);
  sub_100024A44();
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100021D38();
  sub_10022C350(&qword_100CB10F8, &qword_100A95930);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v16);
  sub_10001320C();
  WeatherStatisticsModel.hourlyTemperatureStatistics.getter();
  sub_10077AA54(v3);
  v17 = sub_10078665C();
  v18(v17);
  if (!v0)
  {
    WeatherStatisticsModel.dailyPrecipitationStatistics.getter();
    v19 = sub_100786E88();
    sub_10077A364(v19);
    v20 = sub_1000059A0();
    v21(v20);
    WeatherStatisticsModel.monthlyTemperatureStatistics.getter();
    sub_10077AF84(v3);
    (*(v28 + 8))(v1, v29);
    sub_1007873E4();
    WeatherStatisticsModel.monthlyPrecipitationStatistics.getter();
    sub_10077B210(v3);
    (*(v26 + 8))(v25, v27);
    sub_1007873E4();
    WeatherStatisticsModel.dailyPrecipitationSummary.getter();
    sub_10077A894(v3);
    (*(v23 + 8))(v22, v24);
  }

  sub_10000C8F4();
}

void static DayPrecipitationSummary.read(from:)(uint64_t a1)
{
  sub_1007865BC();
  sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_100020E28();
  __chkstk_darwin(v3);
  sub_10078631C();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v4);
  sub_10001BA34();
  sub_100787624();
  if (!v1)
  {
    sub_100786580();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
    sub_1000E17CC();
    static NSUnitLength.read(from:)(v5);
    sub_100787374();
    sub_100787268();
    Measurement.init(value:unit:)();
    sub_100786580();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000E17CC();
    v7 = static NSUnitLength.read(from:)(v6);
    sub_1007872C8(v7, v8);
    sub_1002E52D0();
    DayPrecipitationSummary.init(date:precipitationAmount:snowfallAmount:)();
  }

  sub_1000C8EF8();
  sub_10009D16C();
}

void DayPrecipitationSummary.write(to:)()
{
  sub_10000E8AC();
  sub_1007863D8();
  sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100030084();
  __chkstk_darwin(v2);
  sub_10004E424();
  type metadata accessor for Date();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000317E4();
  DayPrecipitationSummary.date.getter();
  sub_100787078();
  Date.write(to:)();
  if (v0)
  {
    v6 = sub_10078642C();
    v7(v6);
  }

  else
  {
    v8 = sub_10078642C();
    v9(v8);
    sub_100786C1C();
    DayPrecipitationSummary.precipitationAmount.getter();
    sub_10001CC78();
    sub_1000E17CC();
    sub_100779504(v10, v11);
    v12 = sub_100787014();
    v4(v12);
    sub_100786C6C();
    DayPrecipitationSummary.snowfallAmount.getter();
    sub_10001CC78();
    v13 = sub_10078706C();
    sub_100779504(v13, v14);
    v15 = sub_100024350();
    v4(v15);
  }

  sub_1000C8EF8();
  sub_10000C8F4();
}

void static DayTemperatureSummary.read(from:)(uint64_t a1)
{
  sub_1007865BC();
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_100020E28();
  __chkstk_darwin(v3);
  sub_10078631C();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v4);
  sub_10001BA34();
  sub_100787624();
  if (!v1)
  {
    sub_100786580();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
    sub_1000E17CC();
    static NSUnitTemperature.read(from:)(v5);
    sub_100787374();
    sub_100787268();
    Measurement.init(value:unit:)();
    sub_100786580();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000E17CC();
    v7 = static NSUnitTemperature.read(from:)(v6);
    sub_1007872C8(v7, v8);
    sub_1002E52D0();
    DayTemperatureSummary.init(date:lowTemperature:highTemperature:)();
  }

  sub_1000C8EF8();
  sub_10009D16C();
}

void DayTemperatureSummary.write(to:)()
{
  sub_10000E8AC();
  sub_1007863D8();
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100030084();
  __chkstk_darwin(v2);
  sub_10004E424();
  type metadata accessor for Date();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000317E4();
  DayTemperatureSummary.date.getter();
  sub_100787078();
  Date.write(to:)();
  if (v0)
  {
    v6 = sub_10078642C();
    v7(v6);
  }

  else
  {
    v8 = sub_10078642C();
    v9(v8);
    sub_100786C1C();
    DayTemperatureSummary.lowTemperature.getter();
    sub_1000066E8();
    sub_1000E17CC();
    sub_100779504(v10, v11);
    v12 = sub_100787014();
    v4(v12);
    sub_100786C6C();
    DayTemperatureSummary.highTemperature.getter();
    sub_1000066E8();
    v13 = sub_10078706C();
    sub_100779504(v13, v14);
    v15 = sub_100024350();
    v4(v15);
  }

  sub_1000C8EF8();
  sub_10000C8F4();
}

uint64_t static HourTemperatureStatistics.read(from:)()
{
  sub_100033FF8();
  v1 = sub_10022C350(&qword_100CD6680, &qword_100AA4960);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  sub_10001320C();
  sub_100786D0C();
  result = static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    v4 = sub_100786EAC();
    sub_10077BC34(v4);
    sub_10000810C();
    return HourTemperatureStatistics.init(hour:percentiles:)();
  }

  return result;
}

void HourTemperatureStatistics.write(to:)()
{
  sub_1000D3C1C();
  sub_1007863D8();
  sub_10022C350(&qword_100CD6680, &qword_100AA4960);
  sub_10000548C();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_100003CB4();
  HourTemperatureStatistics.hour.getter();
  FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    sub_100786C6C();
    HourTemperatureStatistics.percentiles.getter();
    v2 = sub_10078706C();
    sub_10077B9E4(v2);
    v3 = sub_10078670C();
    v4(v3);
  }

  sub_100088758();
}

void sub_100778034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100786DFC();
  sub_100787398();
  sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_100017D50();
  __chkstk_darwin(v23);
  sub_1000305F4();
  __chkstk_darwin(v24);
  sub_100040F00();
  sub_1007863F0();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v22)
  {
    sub_1007863F0();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1007863F0();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
    sub_100786B18();
    static NSUnitLength.read(from:)(v25);
    Measurement.init(value:unit:)();
    sub_1007863F0();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100786B18();
    static NSUnitLength.read(from:)(v26);
    Measurement.init(value:unit:)();
    sub_100787190();
    v27();
  }

  sub_100786E18();
}

void sub_100778298()
{
  sub_10000E8AC();
  v22 = v3;
  v23 = v2;
  v24 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100003C38();
  sub_100021390();
  __chkstk_darwin(v13);
  sub_1002E4C00();
  v6();
  v14 = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    v24(v14);
    v15 = FixedSizeTypeBinaryCodable.write(to:)();
    v23(v15);
    sub_10001CC78();
    v16 = sub_100787078();
    sub_100779504(v16, v17);
    v18 = *(v11 + 8);
    v19 = v18(v1, v9);
    v22(v19);
    sub_10001CC78();
    sub_100779504(v8, v20);
    v21 = sub_100037280();
    (v18)(v21);
  }

  sub_10078716C();
  sub_10000C8F4();
}

void sub_1007784A8(uint64_t a1, uint64_t a2)
{
  sub_1007865BC();
  sub_100787398();
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_100017D50();
  __chkstk_darwin(v3);
  sub_1000305F4();
  __chkstk_darwin(v4);
  sub_100040F00();
  sub_1007863F0();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v2)
  {
    sub_1007863F0();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
    sub_100786B18();
    static NSUnitTemperature.read(from:)(v5);
    Measurement.init(value:unit:)();
    sub_1007863F0();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100786B18();
    static NSUnitTemperature.read(from:)(v6);
    Measurement.init(value:unit:)();
    sub_100787190();
    v7();
  }

  sub_1001333F8();
  sub_10009D16C();
}

void sub_1007786C4()
{
  sub_10000E8AC();
  v20 = v4;
  v21 = v3;
  v6 = v5;
  v8 = v7;
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_10000548C();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000088C0();
  __chkstk_darwin(v12);
  sub_1002E4C00();
  v6();
  sub_100786D18();
  v13 = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v1)
  {
    v21(v13);
    sub_1000066E8();
    v14 = sub_100787078();
    sub_100779504(v14, v15);
    v16 = *(v10 + 8);
    v17 = v16(v2, v0);
    v20(v17);
    sub_1000066E8();
    sub_100779504(v8, v18);
    v19 = sub_100037280();
    (v16)(v19);
  }

  sub_10078716C();
  sub_10000C8F4();
}

uint64_t sub_100778854(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    if (v9 == 2)
    {
      return 4;
    }

    else if (v9 == 1)
    {
      v3 = sub_10000CDB0();
      return sub_1007824D8(v3);
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v5 = sub_10077C574(v4);
      v6 = sub_100074D7C(v5);
      sub_10002C964(v6, v7);
      sub_100006494();
      (*(v8 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100778940(uint64_t a1, char a2)
{
  if (a2 == 4)
  {
    return sub_10078732C();
  }

  result = sub_100787344();
  if (!v2)
  {
    return sub_1007822A0(a1);
  }

  return result;
}

uint64_t sub_1007789C4(uint64_t a1)
{
  v2 = type metadata accessor for Deviation();
  v15 = *(v2 - 8);
  v16 = v2;
  __chkstk_darwin(v2);
  v17 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = sub_10022C350(&qword_100CBB580, &unk_100A50E30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  sub_10022C350(&unk_100CABCA0, qword_100A3AB60);
  Trend.baseline.getter();
  v11 = v20;
  sub_10077922C(a1);
  result = (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    v13 = v17;
    Trend.currentValue.getter();
    sub_100779504(a1, &qword_100CA53F8);
    (*(v18 + 8))(v6, v19);
    Trend.deviation.getter();
    Deviation.write(to:)();
    return (*(v15 + 8))(v13, v16);
  }

  return result;
}

uint64_t sub_100778C8C(uint64_t a1)
{
  v2 = type metadata accessor for Deviation();
  v15 = *(v2 - 8);
  v16 = v2;
  __chkstk_darwin(v2);
  v17 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = sub_10022C350(&qword_100CBC0E8, &unk_100A52920);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  sub_10022C350(&qword_100CBC0D0, &qword_100A52908);
  Trend.baseline.getter();
  v11 = v20;
  sub_100778F54(a1);
  result = (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    v13 = v17;
    Trend.currentValue.getter();
    sub_100779504(a1, &qword_100CAB938);
    (*(v18 + 8))(v6, v19);
    Trend.deviation.getter();
    Deviation.write(to:)();
    return (*(v15 + 8))(v13, v16);
  }

  return result;
}

uint64_t sub_100778F54(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v15 = *(v2 - 8);
  v16 = v2;
  __chkstk_darwin(v2);
  v17 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = sub_10022C350(&qword_100CBC0C8, &unk_100A528F8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  sub_10022C350(&qword_100CBC0E8, &unk_100A52920);
  TrendBaseline.kind.getter();
  v11 = v20;
  sub_10077A0A0(a1, &qword_100CBC0C8, &unk_100A528F8);
  result = (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    v13 = v17;
    TrendBaseline.value.getter();
    sub_100779504(a1, &qword_100CAB938);
    (*(v18 + 8))(v6, v19);
    TrendBaseline.startDate.getter();
    Date.write(to:)();
    return (*(v15 + 8))(v13, v16);
  }

  return result;
}

uint64_t sub_10077922C(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v15 = *(v2 - 8);
  v16 = v2;
  __chkstk_darwin(v2);
  v17 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = sub_10022C350(&qword_100CD68D8, &qword_100A7F3B8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  sub_10022C350(&qword_100CBB580, &unk_100A50E30);
  TrendBaseline.kind.getter();
  v11 = v20;
  sub_10077A0A0(a1, &qword_100CD68D8, &qword_100A7F3B8);
  result = (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    v13 = v17;
    TrendBaseline.value.getter();
    sub_100779504(a1, &qword_100CA53F8);
    (*(v18 + 8))(v6, v19);
    TrendBaseline.startDate.getter();
    Date.write(to:)();
    return (*(v15 + 8))(v13, v16);
  }

  return result;
}

void sub_100779504(uint64_t a1, uint64_t a2)
{
  sub_1007877E4();
  v4 = v3;
  v7 = sub_100787298(v5, v6);
  sub_10022C350(v7, v8);
  Measurement.value.getter();
  sub_100786D18();
  FixedSizeTypeBinaryCodable.write(to:)();
  if (!v2)
  {
    v9 = Measurement.unit.getter();
    v10 = sub_100786D18();
    v4(v10);
  }

  sub_1007877F8();
}

uint64_t sub_1007795A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[3] = a2;
  v4 = type metadata accessor for Deviation();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v12[4] = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  v8 = sub_10022C350(&qword_100CBB580, &unk_100A50E30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  result = sub_100779DD0(a1, v12 - v10);
  if (!v2)
  {
    v12[1] = v7;
    v12[2] = v9;
    v12[0] = v5;
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
    static NSUnitTemperature.read(from:)(a1);
    Measurement.init(value:unit:)();
    static Deviation.read(from:)(a1);
    return Trend.init(baseline:currentValue:deviation:)();
  }

  return result;
}

uint64_t sub_100779850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[3] = a2;
  v4 = type metadata accessor for Deviation();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v12[4] = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  v8 = sub_10022C350(&qword_100CBC0E8, &unk_100A52920);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  result = sub_100779B00(a1, v12 - v10);
  if (!v2)
  {
    v12[1] = v7;
    v12[2] = v9;
    v12[0] = v5;
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
    static NSUnitLength.read(from:)(a1);
    Measurement.init(value:unit:)();
    static Deviation.read(from:)(a1);
    return Trend.init(baseline:currentValue:deviation:)();
  }

  return result;
}

uint64_t sub_100779B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[5] = a2;
  v3 = type metadata accessor for Date();
  __chkstk_darwin(v3 - 8);
  v13[4] = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v13[3] = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  v8 = sub_10022C350(&qword_100CBC0C8, &unk_100A528F8);
  __chkstk_darwin(v8);
  v10 = v13 - v9;
  v11 = v14;
  result = sub_10077A258(a1);
  if (!v11)
  {
    v14 = v10;
    v13[1] = v5;
    v13[2] = v7;
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
    static NSUnitLength.read(from:)(a1);
    Measurement.init(value:unit:)();
    static Date.read(from:)();
    return TrendBaseline.init(kind:value:startDate:)();
  }

  return result;
}

uint64_t sub_100779DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[5] = a2;
  v3 = type metadata accessor for Date();
  __chkstk_darwin(v3 - 8);
  v13[4] = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v13[3] = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  v8 = sub_10022C350(&qword_100CD68D8, &qword_100A7F3B8);
  __chkstk_darwin(v8);
  v10 = v13 - v9;
  v11 = v14;
  result = sub_10077A258(a1);
  if (!v11)
  {
    v14 = v10;
    v13[1] = v5;
    v13[2] = v7;
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
    static NSUnitTemperature.read(from:)(a1);
    Measurement.init(value:unit:)();
    static Date.read(from:)();
    return TrendBaseline.init(kind:value:startDate:)();
  }

  return result;
}

void sub_10077A0A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10022C350(a2, a3);
  sub_10000548C();
  v6 = v5;
  sub_100003828();
  v8 = __chkstk_darwin(v7);
  (*(v6 + 16))(&v19 - v9, v4, v3, v8);
  v10 = sub_100003B2C();
  if (v11(v10) == enum case for TrendBaseline.Kind.mean<A>(_:))
  {
    v20 = 1;
    sub_1007866F0();
    FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    v12 = type metadata accessor for BinaryDecoder.Error();
    sub_10001F6D0();
    sub_10077C574(v13);
    v14 = swift_allocError();
    v16 = sub_100787298(v14, v15);
    (*(*(v12 - 8) + 104))(v16, enum case for BinaryDecoder.Error.valueNotSupported(_:), v12);
    swift_willThrow();
    v17 = sub_100003B2C();
    v18(v17);
  }

  sub_100787148();
}

uint64_t sub_10077A258(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_100051AC0();
    if (v3)
    {
      v4 = sub_10000810C();
      sub_10022C350(v4, v5);
      sub_100003A9C();
      v6 = sub_100031474();
      return v7(v6);
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v9 = sub_10077C574(v8);
      v10 = sub_100074D7C(v9);
      sub_10002C964(v10, v11);
      sub_100006494();
      (*(v12 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10077A364(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMetadata();
  v11 = *(v2 - 8);
  v12 = v2;
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v13 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CAB990, &qword_100A3A810);
  v14 = v1;
  DailyWeatherStatistics.days.getter();
  type metadata accessor for DayPrecipitationStatistics();
  sub_10077C574(&unk_100CD6858);
  sub_10077C574(&unk_100CD6860);
  v8 = v15;
  Array<A>.write(to:)();

  if (!v8)
  {
    v10 = v13;
    DailyWeatherStatistics.baselineStartDate.getter();
    Date.write(to:)();
    (*(v10 + 8))(v7, v5);
    DailyWeatherStatistics.metadata.getter();
    WeatherMetadata.write(to:)();
    return (*(v11 + 8))(v4, v12);
  }

  return result;
}

uint64_t sub_10077A894(uint64_t a1)
{
  v1 = type metadata accessor for WeatherMetadata();
  v8 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CAB9B8, &qword_100A3A828);
  DailyWeatherSummary.days.getter();
  type metadata accessor for DayPrecipitationSummary();
  sub_10077C574(&unk_100CD6658);
  sub_10077C574(&unk_100CD6660);
  v4 = v9;
  Array<A>.write(to:)();

  if (!v4)
  {
    v6 = v8;
    DailyWeatherSummary.metadata.getter();
    WeatherMetadata.write(to:)();
    return (*(v6 + 8))(v3, v1);
  }

  return result;
}

uint64_t sub_10077AA54(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMetadata();
  v11 = *(v2 - 8);
  v12 = v2;
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v13 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CB10F8, &qword_100A95930);
  v14 = v1;
  HourlyWeatherStatistics.hours.getter();
  type metadata accessor for HourTemperatureStatistics();
  sub_10077C574(&unk_100CD6868);
  sub_10077C574(&unk_100CD6870);
  v8 = v15;
  Array<A>.write(to:)();

  if (!v8)
  {
    v10 = v13;
    HourlyWeatherStatistics.baselineStartDate.getter();
    Date.write(to:)();
    (*(v10 + 8))(v7, v5);
    HourlyWeatherStatistics.metadata.getter();
    WeatherMetadata.write(to:)();
    return (*(v11 + 8))(v4, v12);
  }

  return result;
}

uint64_t sub_10077AF84(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMetadata();
  v11 = *(v2 - 8);
  v12 = v2;
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v13 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CD6650, &qword_100A979D0);
  v14 = v1;
  MonthlyWeatherStatistics.months.getter();
  type metadata accessor for MonthTemperatureStatistics();
  sub_10077C574(&unk_100CD6848);
  sub_10077C574(&unk_100CD6850);
  v8 = v15;
  Array<A>.write(to:)();

  if (!v8)
  {
    v10 = v13;
    MonthlyWeatherStatistics.baselineStartDate.getter();
    Date.write(to:)();
    (*(v10 + 8))(v7, v5);
    MonthlyWeatherStatistics.metadata.getter();
    WeatherMetadata.write(to:)();
    return (*(v11 + 8))(v4, v12);
  }

  return result;
}

uint64_t sub_10077B210(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMetadata();
  v11 = *(v2 - 8);
  v12 = v2;
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v13 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CB5468, &unk_100A95C40);
  v14 = v1;
  MonthlyWeatherStatistics.months.getter();
  type metadata accessor for MonthPrecipitationStatistics();
  sub_10077C574(&unk_100CD6838);
  sub_10077C574(&unk_100CD6840);
  v8 = v15;
  Array<A>.write(to:)();

  if (!v8)
  {
    v10 = v13;
    MonthlyWeatherStatistics.baselineStartDate.getter();
    Date.write(to:)();
    (*(v10 + 8))(v7, v5);
    MonthlyWeatherStatistics.metadata.getter();
    WeatherMetadata.write(to:)();
    return (*(v11 + 8))(v4, v12);
  }

  return result;
}

uint64_t sub_10077B9E4(uint64_t a1)
{
  v4 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_10022C350(&qword_100CD6680, &qword_100AA4960);
  v19 = v1;
  Percentiles.p10.getter();
  v18 = a1;
  sub_100779504(a1, &qword_100CA53F8);
  v14 = *(v5 + 8);
  result = v14(v13, v4);
  if (!v2)
  {
    Percentiles.p50.getter();
    v16 = v18;
    sub_100779504(v18, &qword_100CA53F8);
    v14(v10, v4);
    Percentiles.p90.getter();
    sub_100779504(v16, &qword_100CA53F8);
    return v14(v7, v4);
  }

  return result;
}

uint64_t sub_10077BC34(uint64_t a1)
{
  v4 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  result = static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v2)
  {
    sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
    static NSUnitTemperature.read(from:)(a1);
    Measurement.init(value:unit:)();
    static FixedSizeTypeBinaryCodable.read(from:)();
    static NSUnitTemperature.read(from:)(a1);
    Measurement.init(value:unit:)();
    static FixedSizeTypeBinaryCodable.read(from:)();
    static NSUnitTemperature.read(from:)(a1);
    Measurement.init(value:unit:)();
    return Percentiles.init(p10:p50:p90:)();
  }

  return result;
}

uint64_t sub_10077BEE0(uint64_t a1)
{
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v1)
  {
    return sub_1007527F8();
  }

  return result;
}

void sub_10077BF3C()
{
  v3 = sub_100017580();
  v4 = type metadata accessor for VFXTestViewState(v3);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100006168();
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100005384();
  v7 = sub_100027E24();
  sub_1000E82F4(v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100073AF4();
    sub_100187600(v0, v2);
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      sub_1000E0F90();
      WeatherCondition.write(to:)();
    }

    sub_10078735C();
  }

  else
  {
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      sub_1000E0F90();
      sub_100752B24();
    }
  }

  sub_100787148();
}

uint64_t sub_10077C0B0(uint64_t a1)
{
  result = UIInterfaceOrientation.write(to:)(a1, *v1);
  if (!v2)
  {
    v4 = sub_10000CDB0();
    UIUserInterfaceSizeClass.write(to:)(v4, v5);
    v6 = sub_10000CDB0();
    sub_1007822A0(v6);
    v7 = sub_10000CDB0();
    sub_100783DE0(v7);
    v8 = sub_10000CDB0();
    sub_100784630(v8);
    type metadata accessor for DisplayMetrics(0);
    sub_10000CDB0();
    return DynamicTypeSize.write(to:)();
  }

  return result;
}

uint64_t sub_10077C158(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_100051AC0();
    if (v3)
    {
      type metadata accessor for ListViewState._Storage();
      v4 = sub_10000CDB0();
      return sub_1007525A8(v4);
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v6 = sub_10077C574(v5);
      v7 = sub_100074D7C(v6);
      sub_10002C964(v7, v8);
      sub_100006494();
      (*(v9 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_10077C238()
{
  sub_100032568();
  sub_1000E62AC();
  type metadata accessor for WeatherCondition();
  sub_100024A44();
  __chkstk_darwin(v2);
  sub_100049BF8();
  v3 = type metadata accessor for VFXTestViewState(0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000520E4();
  sub_100786A40();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v1)
  {
    if (v16 == 2)
    {
      v6 = sub_1007866F0();
      static WeatherCondition.read(from:)(v6);
      v7 = sub_100020E44();
      v8(v7);
      sub_100073AF4();
      v9 = sub_10008650C();
      sub_100187600(v9, v10);
      type metadata accessor for ViewState.SecondaryViewState(0);
      sub_100003E0C();
    }

    else
    {
      if (v16 != 1)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v12 = sub_10077C574(v11);
        v13 = sub_1007863A0(v12);
        sub_100787298(v13, v14);
        sub_10004E4B8();
        (*(v15 + 104))();
        swift_willThrow();
        goto LABEL_2;
      }

      type metadata accessor for LocationViewerViewState._Storage(0);
      sub_1007866F0();
      sub_1007529E8();
      *v0 = v5;
      type metadata accessor for ViewState.SecondaryViewState(0);
      sub_100003E0C();
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_2:
  sub_100786F80();
  sub_10008835C();
}

void sub_10077C42C()
{
  sub_10000E8AC();
  sub_1007864C4();
  type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_100006168();
  v3 = sub_1007865E4();
  v4 = static UIInterfaceOrientation.read(from:)(v3);
  if (!v1)
  {
    v5 = v4;
    v6 = sub_1007865E4();
    v7 = static UIUserInterfaceSizeClass.read(from:)(v6);
    v8 = sub_1007865E4();
    v9 = sub_1007824D8(v8);
    v10 = sub_1007865E4();
    v11 = sub_100783E40(v10);
    v18 = v11;
    v12 = sub_1007865E4();
    v13 = sub_1007846BC(v12);
    v17 = v13;
    v14 = sub_1007865E4();
    static DynamicTypeSize.read(from:)(v14, v15);
    *v0 = v5;
    *(v0 + 8) = v7;
    *(v0 + 16) = v9;
    *(v0 + 17) = v18 & 1;
    *(v0 + 18) = v17;
    type metadata accessor for DisplayMetrics(0);
    sub_10078660C();
    v16();
  }

  sub_1007865A4();
  sub_10000C8F4();
}

unint64_t sub_10077C574(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v3(255);
    v4 = sub_1000201F8();
    result = swift_getWitnessTable(v4);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10077C5B4(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    sub_10000C70C(255, v3, v4);
    v5 = sub_1000201F8();
    result = swift_getWitnessTable(v5);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10077C5F0(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    sub_10022E824(&qword_100CA53F8, &unk_100A3B3E0);
    sub_10002CA80();
    sub_10077C5B4(v3);
    sub_10002CA80();
    v5 = sub_10077C5B4(v4);
    result = sub_1007875E4(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10077C6AC(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    sub_10022E824(&qword_100CACCC8, &unk_100A3E7D0);
    sub_10002CA80();
    sub_10077C5B4(v3);
    sub_10002CA80();
    v5 = sub_10077C5B4(v4);
    result = sub_1007875E4(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_10077C768(uint64_t a1)
{
  result = Location.write(to:)();
  if (!v2)
  {
    HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState(0);
    sub_1000326B4(v1 + *(HourPrecipitationDetailViewState + 20));
    sub_10022C350(&qword_100CB73A0, "<2\r");
    sub_100008E34();
    sub_1007863C0();
    sub_10077C574(v5);
    sub_100010A4C();
    sub_10077C574(v6);
    return sub_1001721CC();
  }

  return result;
}

uint64_t sub_10077C820()
{
  sub_1007863D8();
  result = Location.write(to:)();
  if (!v0)
  {
    type metadata accessor for SunriseSunsetDetailViewState(0);
    sub_10001325C();
    sub_1000326B4(v1 + v3);
    sub_10022C350(&qword_100CB73A0, "<2\r");
    sub_100008E34();
    sub_10077C574(v4);
    sub_100010A4C();
    sub_10077C574(v5);
    sub_100192570();
    Optional<A>.write(to:)();
    v6 = sub_10000CDB0();
    return sub_100784630(v6);
  }

  return result;
}

uint64_t sub_10077C90C()
{
  sub_1007863D8();
  result = String.write(to:)();
  if (!v0)
  {
    sub_10000CDB0();
    String.write(to:)();
    type metadata accessor for NewsArticle(0);
    sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
    sub_1000D42A0();
    Optional<A>.write(to:)();
    sub_100013AD0();
    Date.write(to:)();
    sub_100013AD0();
    URL.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    type metadata accessor for NewsChannel(0);
    sub_1000D42A0();
    Optional<A>.write(to:)();
    sub_10000CDB0();
    Array<A>.write(to:)();
    sub_10000CDB0();
    Array<A>.write(to:)();
    type metadata accessor for UUID();
    sub_100031474();
    return Array<A>.write(to:)();
  }

  return result;
}

void sub_10077CAD4()
{
  sub_10000E8AC();
  sub_1007864C4();
  type metadata accessor for Location();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100006168();
  sub_1007865E4();
  static Location.read(from:)();
  if (!v0)
  {
    type metadata accessor for CGRect(0);
    sub_10078683C();
    sub_10077C574(v2);
    sub_100010A4C();
    sub_10077C574(v3);
    sub_100786C4C();
    sub_100787190();
    static Optional<A>.read(from:)();
    sub_100786BA8();
    sub_10078660C();
    v4();
    HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState(0);
    sub_100786CE8(*(HourPrecipitationDetailViewState + 20));
    *(v6 + 32) = v7;
  }

  sub_1007865A4();
  sub_10000C8F4();
}

void sub_10077CC2C()
{
  sub_10000E8AC();
  sub_1007864C4();
  type metadata accessor for Location();
  sub_10000FB48();
  __chkstk_darwin(v2);
  sub_100006168();
  sub_100786618();
  static Location.read(from:)();
  if (!v1)
  {
    type metadata accessor for CGRect(0);
    sub_10078683C();
    sub_10077C574(v3);
    sub_100010A4C();
    sub_10077C574(v4);
    sub_100786C4C();
    sub_100787190();
    static Optional<A>.read(from:)();
    v5 = sub_100786618();
    v6 = sub_1007846BC(v5);
    v7 = sub_1000E14D4();
    v8(v7);
    v9 = type metadata accessor for SunriseSunsetDetailViewState(0);
    sub_100786CE8(*(v9 + 20));
    *(v10 + 32) = v12;
    *(v0 + *(v11 + 24)) = v6;
  }

  sub_100036EA0();
  sub_10000C8F4();
}

void sub_10077CD9C()
{
  sub_10000E8AC();
  v8 = v7;
  v41 = v9;
  v10 = type metadata accessor for NewsChannel(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000106FC();
  v12 = type metadata accessor for URL();
  sub_1000037C4();
  __chkstk_darwin(v13);
  sub_1000317E4();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v14);
  sub_100005384();
  v15 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000305F4();
  __chkstk_darwin(v17);
  sub_100040F00();
  v42 = v8;
  v18 = static String.read(from:)();
  if (!v1)
  {
    v20 = v19;
    v38 = v5;
    v37 = v18;
    v40 = v0;
    v43 = v4;
    v21 = static String.read(from:)();
    v23 = v22;
    sub_100787054();
    static Optional<A>.read(from:)();
    static Date.read(from:)();
    static URL.read(from:)();
    v36 = v21;
    v35 = static String.read(from:)();
    v25 = v24;
    v33 = static String.read(from:)();
    v34 = v26;
    sub_10000810C();
    static Optional<A>.read(from:)();
    *v3 = v35;
    v3[1] = v25;
    v3[2] = v33;
    v3[3] = v34;
    sub_100786150(v38, v3 + *(v10 + 24), &qword_100CB3AB0, &unk_100A2FB80);
    v39 = static Array<A>.read(from:)();
    static Array<A>.read(from:)();
    sub_100786DE4();
    type metadata accessor for UUID();
    sub_1007871CC();
    v27 = static Array<A>.read(from:)();
    *v41 = v37;
    v41[1] = v20;
    v41[2] = v36;
    v41[3] = v23;
    v28 = type metadata accessor for NewsArticle(0);
    sub_100786150(v43, v41 + v28[6], &qword_100CB3AB0, &unk_100A2FB80);
    v29 = sub_1007871D8(v28[7]);
    v30(v29, v40, v2);
    v31 = sub_1007871D8(v28[8]);
    v32(v31, v6, v12);
    sub_100187600(v3, v41 + v28[9]);
    *(v41 + v28[10]) = v39;
    *(v41 + v28[11]) = v42;
    *(v41 + v28[12]) = v27;
  }

  sub_10000C8F4();
}

uint64_t sub_10077D39C(uint64_t a1)
{
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v1)
  {
    return sub_100787344();
  }

  return result;
}

void sub_10077D408()
{
  sub_10000E8AC();
  v61 = type metadata accessor for HomeAndWorkRefinementViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v67 = v6;
  sub_1000038CC();
  type metadata accessor for URL();
  sub_1000037C4();
  v64 = v8;
  v65 = v7;
  __chkstk_darwin(v7);
  sub_1000520E4();
  v62 = type metadata accessor for AveragesDetailViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000038E4();
  v68 = v10;
  v11 = sub_1000038CC();
  v63 = type metadata accessor for MoonDetailViewState(v11);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000038E4();
  v14 = sub_1000FD184(v13);
  v59 = type metadata accessor for SunriseSunsetDetailViewState(v14);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000038E4();
  v66 = v16;
  v17 = sub_1000038CC();
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState(v17);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000317E4();
  v20 = type metadata accessor for AirQualityDetailViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_10001BA34();
  v60 = type metadata accessor for ConditionDetailViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000038E4();
  v24 = v23;
  v25 = sub_1000038CC();
  type metadata accessor for ModalViewState.LocationDetailModal(v25);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000106FC();
  v27 = sub_1000167A4();
  sub_1000E82F4(v27, v1);
  sub_10000810C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v48 = sub_100786784();
      sub_100187600(v48, v3);
      sub_10003BED8();
      if (!v0)
      {
        Location.write(to:)();
        v49 = sub_100786DC0();
        sub_100783DE0(v49);
        sub_1000288F4(v3 + *(v20 + 24));
        sub_10022C350(&qword_100CB73A0, "<2\r");
        sub_100008E34();
        sub_10077C574(v50);
        sub_100010A4C();
        sub_10077C574(v51);
        sub_100044E94();
      }

      goto LABEL_22;
    case 2u:
      v38 = sub_100786784();
      sub_100187600(v38, v4);
      sub_10003BED8();
      if (!v0)
      {
        Location.write(to:)();
        sub_1000288F4(v4 + *(HourPrecipitationDetailViewState + 20));
        sub_10022C350(&qword_100CB73A0, "<2\r");
        sub_100008E34();
        sub_10077C574(v39);
        sub_100010A4C();
        sub_10077C574(v40);
        sub_100044E94();
      }

      goto LABEL_22;
    case 3u:
      v41 = sub_100786784();
      sub_100187600(v41, v66);
      sub_10003BED8();
      if (!v0)
      {
        sub_100163724();
        Location.write(to:)();
        sub_1000288F4(v66 + *(v59 + 20));
        sub_10022C350(&qword_100CB73A0, "<2\r");
        sub_100008E34();
        sub_10077C574(v42);
        sub_100010A4C();
        sub_10077C574(v43);
        sub_100044E94();
        v44 = sub_100786DC0();
        sub_100784630(v44);
      }

      goto LABEL_22;
    case 4u:
      v32 = sub_100786784();
      sub_100187600(v32, v69);
      sub_1007866A4();
      if (!v0)
      {
        sub_100163724();
        Location.write(to:)();
        sub_10022C350(qword_100CA66A0, &unk_100A314C0);
        sub_1000E6670();
        sub_10077C574(v33);
        sub_1000C8548();
        sub_10077C574(v34);
        sub_100786380();
        sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
        sub_100786DC0();
        Optional<A>.write(to:)();
        sub_1000288F4(v69 + *(v63 + 28));
        sub_10022C350(&qword_100CB73A0, "<2\r");
        sub_100008E34();
        sub_10077C574(v35);
        sub_100010A4C();
        sub_10077C574(v36);
        sub_100044E94();
        v37 = sub_100786DC0();
        sub_100784630(v37);
      }

      goto LABEL_22;
    case 5u:
      v52 = sub_100786784();
      sub_100187600(v52, v68);
      sub_1007866A4();
      if (!v0)
      {
        sub_100163724();
        Location.write(to:)();
        sub_100783DE0(v20);
        sub_10022C350(&qword_100CAB960, &unk_100A3A7E0);
        sub_1000E6478();
        sub_10077C574(v53);
        sub_100025304();
        sub_10077C574(v54);
        sub_100786380();
        sub_1000288F4(v68 + *(v62 + 28));
        sub_10022C350(&qword_100CB73A0, "<2\r");
        sub_100008E34();
        sub_10077C574(v55);
        sub_100010A4C();
        sub_10077C574(v56);
        sub_100044E94();
      }

      goto LABEL_22;
    case 6u:
      sub_100787118();
      v57 = sub_10000EB30();
      v58(v57);
      sub_1007866A4();
      if (!v0)
      {
        URL.write(to:)();
      }

      (*(v64 + 8))(v2, v65);
      goto LABEL_23;
    case 7u:
      v45 = sub_100786784();
      sub_100187600(v45, v67);
      sub_10003BED8();
      if (!v0)
      {
        sub_100163724();
        Location.write(to:)();
        sub_100786DC0();
        LocationOfInterest.write(to:)();
        sub_1000288F4(v67 + *(v61 + 24));
        sub_10022C350(&qword_100CB73A0, "<2\r");
        sub_100008E34();
        sub_10077C574(v46);
        sub_100010A4C();
        sub_10077C574(v47);
        sub_100044E94();
      }

      goto LABEL_22;
    default:
      v28 = sub_100786784();
      sub_100187600(v28, v24);
      sub_10003BED8();
      if (!v0)
      {
        sub_100163724();
        DetailCondition.write(to:)();
        sub_100786DC0();
        Location.write(to:)();
        sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
        sub_100786DC0();
        Optional<A>.write(to:)();
        sub_1000288F4(v24 + *(v60 + 28));
        sub_10022C350(&qword_100CB73A0, "<2\r");
        sub_100008E34();
        sub_10077C574(v29);
        sub_100010A4C();
        sub_10077C574(v30);
        sub_100044E94();
        sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
        sub_1000B91B0();
        sub_10077C574(v31);
        sub_100088014(&qword_100CD0088);
        sub_100786380();
        sub_100786DC0();
        FixedSizeTypeBinaryCodable.write(to:)();
      }

LABEL_22:
      sub_1000E83A0();
LABEL_23:
      sub_1001333F8();
      sub_10000C8F4();
      return;
  }
}

uint64_t sub_10077DFAC(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    if (v4)
    {
      v3 = 256;
    }

    else
    {
      v3 = 0;
    }

    return v3 | v5;
  }

  return result;
}

void sub_10077E028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  a22 = v27;
  a23 = v28;
  v30 = v29;
  v31 = type metadata accessor for LocationOfInterest();
  v32 = sub_100003E5C(v31, &a20);
  v121 = v33;
  __chkstk_darwin(v32);
  sub_1000038E4();
  v128 = v34;
  v35 = sub_1000038CC();
  v119 = type metadata accessor for HomeAndWorkRefinementViewState(v35);
  sub_1000037E8();
  __chkstk_darwin(v36);
  sub_1000038E4();
  sub_100003918(v37);
  type metadata accessor for URL();
  sub_1000037C4();
  __chkstk_darwin(v38);
  sub_1000038E4();
  sub_100786F74(v39);
  v40 = sub_10022C350(&qword_100CAB960, &unk_100A3A7E0);
  sub_100003810(v40);
  sub_100003828();
  __chkstk_darwin(v41);
  sub_1000039BC();
  v127 = v42;
  v43 = sub_1000038CC();
  v116 = type metadata accessor for AveragesDetailViewState(v43);
  sub_1000037E8();
  __chkstk_darwin(v44);
  sub_1000038E4();
  v126 = v45;
  v46 = sub_1000038CC();
  v47 = type metadata accessor for MoonDetailViewState(v46);
  v48 = sub_100003810(v47);
  __chkstk_darwin(v48);
  sub_1000038E4();
  v49 = sub_1000038CC();
  v117 = type metadata accessor for SunriseSunsetDetailViewState(v49);
  sub_1000037E8();
  __chkstk_darwin(v50);
  sub_1000038E4();
  v125 = v51;
  v52 = sub_1000038CC();
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState(v52);
  sub_1000037E8();
  __chkstk_darwin(v53);
  sub_1000038E4();
  sub_100003918(v54);
  type metadata accessor for Location();
  sub_1000037C4();
  v122 = v55;
  v123 = v56;
  __chkstk_darwin(v55);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100031DB0();
  __chkstk_darwin(v58);
  sub_1000886FC();
  __chkstk_darwin(v59);
  sub_100079578();
  __chkstk_darwin(v60);
  sub_10078631C();
  v61 = type metadata accessor for AirQualityDetailViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v62);
  sub_100005888();
  v63 = type metadata accessor for ConditionDetailViewState(0);
  v64 = sub_100003810(v63);
  __chkstk_darwin(v64);
  sub_100006168();
  sub_100786760();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v23)
  {
    v115 = v24;
    v129 = v26;
    sub_100787154();
    switch(v74)
    {
      case 0:
        sub_100757638(v30, v65, v66, v67, v68, v69, v70, v71, v114, v24, SWORD2(v24), SBYTE6(v24), SHIBYTE(v24));
        sub_1007872B0(v25);
        goto LABEL_12;
      case 1:
        static Location.read(from:)();
        v83 = sub_100783E40(v30);
        type metadata accessor for CGRect(0);
        sub_1000E1788();
        sub_10077C574(v84);
        sub_100010A4C();
        sub_10077C574(v85);
        sub_100786FCC();
        sub_100049C10();
        static Optional<A>.read(from:)();
        sub_1007875CC();
        v108 = sub_100037280();
        v109(v108);
        *(v115 + *(v61 + 20)) = v83 & 1;
        sub_100786D48(v115 + *(v61 + 24));
        *(v110 + 32) = v132;
        v111 = sub_100786790();
        sub_1007872B0(v111);
        goto LABEL_12;
      case 2:
        static Location.read(from:)();
        type metadata accessor for CGRect(0);
        sub_100786824();
        sub_10077C574(v76);
        sub_100010A4C();
        sub_10077C574(v77);
        sub_100786FCC();
        sub_1000215E0();
        static Optional<A>.read(from:)();
        sub_1007875CC();
        v95 = sub_1000D42A0();
        v96(v95);
        sub_100786D48(v120 + *(HourPrecipitationDetailViewState + 20));
        *(v97 + 32) = v132;
        sub_1007872B0(v120);
        goto LABEL_12;
      case 3:
        v78 = v73;
        static Location.read(from:)();
        type metadata accessor for CGRect(0);
        sub_100786824();
        sub_10077C574(v79);
        sub_100010A4C();
        sub_10077C574(v80);
        sub_100786FCC();
        sub_100786B24();
        static Optional<A>.read(from:)();
        v102 = sub_1007846BC(v30);
        (*(v123 + 32))(v125, v78, v122);
        sub_100786CE8(*(v117 + 20));
        *(v103 + 32) = v132;
        *(v125 + *(v104 + 24)) = v102;
        sub_1007872B0(v125);
        goto LABEL_12;
      case 4:
        v75 = v72;
        sub_1007570D8();
        sub_1007872B0(v75);
        goto LABEL_12;
      case 5:
        sub_100787208();
        v87 = v86;
        static Location.read(from:)();
        v98 = sub_100783E40(v87);
        type metadata accessor for DetailHeroChartLollipopPosition(0);
        sub_10077C574(&qword_100CD0050);
        sub_100025304();
        sub_10077C574(v99);
        sub_1002E54F8();
        static Optional<A>.read(from:)();
        type metadata accessor for CGRect(0);
        sub_100073C9C();
        sub_10077C574(v100);
        sub_100010A4C();
        sub_10077C574(v101);
        sub_100786FCC();
        sub_1002E54F8();
        static Optional<A>.read(from:)();
        sub_1007875CC();
        v112(v126, v129);
        *(v126 + v116[5]) = v98 & 1;
        sub_100786150(v127, v126 + v116[6], &qword_100CAB960, &unk_100A3A7E0);
        v113 = v126 + v116[7];
        *v113 = v130;
        *(v113 + 16) = v131;
        *(v113 + 32) = v132;
        sub_1007872B0(v126);
        goto LABEL_12;
      case 6:
        static URL.read(from:)();
        v88 = sub_1000046B4();
        v89(v88);
        goto LABEL_12;
      case 7:
        static Location.read(from:)();
        static LocationOfInterest.read(from:)();
        type metadata accessor for CGRect(0);
        sub_100073C9C();
        sub_10077C574(v81);
        sub_100010A4C();
        sub_10077C574(v82);
        sub_100786FCC();
        sub_1000046B4();
        static Optional<A>.read(from:)();
        sub_1007875CC();
        v105 = sub_100011498();
        v106(v105);
        (*(v121 + 32))(v118 + *(v119 + 20), v128);
        v107 = v118 + *(v119 + 24);
        *v107 = v130;
        *(v107 + 16) = v131;
        *(v107 + 32) = v132;
        sub_1007872B0(v118);
LABEL_12:
        type metadata accessor for ModalViewState.LocationDetailModal(0);
        sub_100017BC0();
        swift_storeEnumTagMultiPayload();
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v91 = sub_10077C574(v90);
        v92 = sub_1007863A0(v91);
        sub_100787280(v92, v93);
        sub_10004E4B8();
        (*(v94 + 104))();
        swift_willThrow();
        break;
    }
  }

  sub_10000C8F4();
}

void sub_10077EBA4()
{
  sub_100032568();
  sub_100786C5C();
  v5 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100003CF8();
  sub_1007867A8();
  static String.read(from:)();
  if (!v1)
  {
    sub_10078748C();
    sub_1007867A8();
    v7 = static String.read(from:)();
    v9 = v8;
    type metadata accessor for URL();
    sub_1007867A8();
    static Optional<A>.read(from:)();
    *v0 = v4;
    v0[1] = v3;
    v0[2] = v7;
    v0[3] = v9;
    v10 = type metadata accessor for NewsChannel(0);
    sub_100786150(v2, v0 + *(v10 + 24), &qword_100CB3AB0, &unk_100A2FB80);
  }

  sub_100786E70();
  sub_10008835C();
}

uint64_t sub_10077ECBC(uint64_t a1)
{
  result = String.write(to:)();
  if (!v1)
  {
    sub_10000CDB0();
    String.write(to:)();
    type metadata accessor for NewsChannel(0);
    sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
    sub_10000CDB0();
    return Optional<A>.write(to:)();
  }

  return result;
}

uint64_t sub_10077ED98(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    result = sub_100786BE4(result, v3, v4, v5, v6, v7, v8, v9, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
    if (result >= 7)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v11 = sub_10077C574(v10);
      v12 = sub_100074D7C(v11);
      sub_10002C964(v12, v13);
      sub_100006494();
      (*(v14 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10077EF90(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_100051AC0();
    if (v4)
    {
      return 0;
    }

    else if (v3 == 3)
    {
      return 0;
    }

    else if (v3 == 2)
    {
      sub_10000CDB0();
      return static String.read(from:)();
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v6 = sub_10077C574(v5);
      v7 = sub_100074D7C(v6);
      sub_10002C964(v7, v8);
      sub_100006494();
      (*(v9 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10077F090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    sub_100787430();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  if (a3 == 1)
  {
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  result = sub_100787344();
  if (!v3)
  {
    sub_1000E14D4();
    return String.write(to:)();
  }

  return result;
}

void sub_10077F140()
{
  sub_1000D3C1C();
  sub_100786C5C();
  v3 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100003CF8();
  v5 = sub_1007867A8();
  v6 = sub_10077ED98(v5);
  if (!v1)
  {
    v7 = v6;
    v8 = sub_1007867A8();
    v9 = sub_10077EF90(v8);
    v11 = v10;
    type metadata accessor for Date();
    sub_1007867A8();
    static Optional<A>.read(from:)();
    *v0 = v7;
    *(v0 + 8) = v9;
    *(v0 + 16) = v11;
    v12 = type metadata accessor for ContentStatusBanner(0);
    sub_100786150(v2, v0 + *(v12 + 24), &unk_100CB2CF0, &unk_100A2D7F0);
  }

  sub_100786E70();
  sub_100088758();
}

uint64_t sub_10077F248(uint64_t a1)
{
  result = sub_10077EE70(a1);
  if (!v1)
  {
    v3 = sub_10000CDB0();
    sub_10077F090(v3, v4, v5);
    type metadata accessor for ContentStatusBanner(0);
    sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    sub_10000CDB0();
    return Optional<A>.write(to:)();
  }

  return result;
}

void sub_10077F2DC(uint64_t a1)
{
  sub_100786DFC();
  v28 = v3;
  v4 = type metadata accessor for SearchLocation(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100049BF8();
  type metadata accessor for LocationOfInterest();
  sub_10000FB48();
  __chkstk_darwin(v6);
  sub_10001BA34();
  v7 = type metadata accessor for Location();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100003C38();
  sub_1000886FC();
  __chkstk_darwin(v11);
  sub_10078631C();
  sub_10019235C();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v1)
  {
    sub_100787154();
    switch(v12)
    {
      case 0:
        static Location.read(from:)();
        v13 = sub_100003B2C();
        v14(v13);
        type metadata accessor for PreviewLocation(0);
        sub_1000201F8();
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        static Location.read(from:)();
        (*(v9 + 32))(v28, v2, v7);
        type metadata accessor for PreviewLocation(0);
        sub_100003E0C();
        goto LABEL_9;
      case 2:
        static LocationOfInterest.read(from:)();
        v19 = sub_100786E7C();
        v20(v19);
        type metadata accessor for PreviewLocation(0);
        sub_100003E0C();
        goto LABEL_9;
      case 3:
        static SearchLocation.read(from:)();
        v21 = sub_100037280();
        sub_100187600(v21, v22);
        type metadata accessor for PreviewLocation(0);
        sub_100003E0C();
LABEL_9:
        swift_storeEnumTagMultiPayload();
        break;
      case 4:
        static CLLocationCoordinate2D.read(from:)();
        v16 = v15;
        v18 = v17;
        static Optional<A>.read(from:)();
        sub_100786760();
        static FixedSizeTypeBinaryCodable.read(from:)();
        *v28 = v16;
        *(v28 + 8) = v18;
        *(v28 + 16) = v29;
        *(v28 + 24) = v30;
        *(v28 + 32) = v29;
        type metadata accessor for PreviewLocation(0);
        sub_1000201F8();
        swift_storeEnumTagMultiPayload();
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v24 = sub_10077C574(v23);
        v25 = sub_1007863A0(v24);
        sub_100787280(v25, v26);
        sub_10004E4B8();
        (*(v27 + 104))();
        swift_willThrow();
        break;
    }
  }

  sub_100786E18();
}

void sub_10077F6B8(uint64_t a1)
{
  sub_100786DFC();
  type metadata accessor for SearchLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  sub_1000FD184(v6);
  type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_10001BA34();
  v8 = type metadata accessor for Location();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003C38();
  sub_1000886FC();
  __chkstk_darwin(v12);
  sub_10078631C();
  type metadata accessor for PreviewLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000106FC();
  v14 = sub_1000167A4();
  sub_1000E82F4(v14, v3);
  sub_10000810C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10007956C();
      v27 = sub_100787480();
      v28(v27);
      sub_1007866A4();
      if (!v2)
      {
        Location.write(to:)();
      }

      v17 = *(v10 + 8);
      v18 = v4;
      goto LABEL_21;
    case 2u:
      sub_10007956C();
      v19 = sub_1002E58CC();
      v20(v19);
      sub_1007866A4();
      if (!v2)
      {
        sub_100787244();
        LocationOfInterest.write(to:)();
      }

      v18 = sub_100017B70();
      goto LABEL_22;
    case 3u:
      v22 = sub_100786784();
      sub_100187600(v22, v29);
      sub_100787664();
      if (!v2)
      {
        sub_100787214();
        String.write(to:)();
        sub_100787214();
        String.write(to:)();
        sub_100787214();
        String.write(to:)();
        sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
        sub_1000C8DAC();
        sub_10077C574(v23);
        sub_100019EA4();
        sub_10077C574(v24);
        sub_100037280();
        Optional<A>.write(to:)();
        sub_10022C350(&qword_100CD6698, &qword_100A7F3B0);
        sub_100786A28();
        sub_10077C574(v25);
        sub_100171218();
        sub_10077C574(v26);
        sub_100037280();
        Optional<A>.write(to:)();
      }

      sub_1000E83A0();
      goto LABEL_23;
    case 4u:
      sub_100787664();
      if (v2)
      {
      }

      else
      {
        CLLocationCoordinate2D.write(to:)();
        sub_10022C350(&qword_100CA6078, &unk_100A30870);
        sub_100787214();
        Optional<A>.write(to:)();

        sub_100787214();
        FixedSizeTypeBinaryCodable.write(to:)();
      }

      goto LABEL_23;
    default:
      sub_10007956C();
      v15 = sub_10003C620();
      v16(v15);
      sub_10003BED8();
      if (!v2)
      {
        sub_100786B18();
        Location.write(to:)();
      }

      v17 = *(v10 + 8);
      v18 = v1;
LABEL_21:
      v21 = v8;
LABEL_22:
      v17(v18, v21);
LABEL_23:
      sub_100786E18();
      return;
  }
}

void sub_10077FC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  sub_10000C76C();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v24);
  sub_1000088C0();
  __chkstk_darwin(v25);
  sub_10002137C();
  __chkstk_darwin(v26);
  sub_1000B9E20();
  sub_100786A40();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v23)
  {
    if (a13 == 3 || a13 == 2 || a13 == 1)
    {
      sub_1007867A8();
      static Date.read(from:)();
      v27 = sub_10003C620();
      v28(v27);
      type metadata accessor for MoonDetailSelectedDate(0);
      sub_100003E0C();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v30 = sub_10077C574(v29);
      v31 = sub_1007863A0(v30);
      sub_100787280(v31, v32);
      sub_10004E4B8();
      (*(v33 + 104))();
      swift_willThrow();
    }
  }

  sub_100036EA0();
  sub_10000C8F4();
}

void sub_10077FDF8()
{
  sub_10000E8AC();
  sub_1002E5718();
  type metadata accessor for Date();
  sub_10000548C();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100030084();
  __chkstk_darwin(v9);
  sub_100079578();
  __chkstk_darwin(v10);
  sub_10004E424();
  type metadata accessor for MoonDetailSelectedDate(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_10001BA34();
  v12 = sub_1000167A4();
  sub_1000E82F4(v12, v5);
  sub_1002E54F8();
  swift_getEnumCaseMultiPayload();
  sub_10007956C();
  if (v13)
  {
    if (v13 != 1)
    {
      sub_100786FD8();
      v17();
      sub_1000BCE14();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v1)
      {
        sub_1000E6768();
        Date.write(to:)();
      }

      goto LABEL_11;
    }

    sub_100786FD8();
    v14();
    sub_1000C8FEC();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      Date.write(to:)();
      v2 = v3;
LABEL_11:
      (*(v7 + 8))(v2, v0);
      goto LABEL_12;
    }

    (*(v7 + 8))(v3, v0);
  }

  else
  {
    v15 = sub_10000CDBC();
    v16(v15);
    sub_10001635C();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      Date.write(to:)();
      v2 = v4;
      goto LABEL_11;
    }

    (*(v7 + 8))(v4, v0);
  }

LABEL_12:
  sub_100041B68();
  sub_10000C8F4();
}

void sub_100780068()
{
  sub_100032568();
  v2 = v1;
  static String.read(from:)();
  if (!v0)
  {
    type metadata accessor for LocationWeatherDataState(0);
    sub_1000E5A48();
    sub_10077C574(v3);
    sub_1000D42FC();
    sub_10077C574(v4);
    static Dictionary<>.read(from:)();
    v5 = sub_100786DE4();
    v6 = type metadata accessor for LocationAvailableDataSetState(v5);
    sub_10077C574(&unk_100CD66D0);
    sub_1000715CC();
    v8 = sub_10077C574(v7);
    sub_10078776C(v2, &type metadata for String, v6, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, v9, v8);
  }

  sub_100031474();
  sub_100786B0C();
  sub_10008835C();
}

uint64_t sub_1007801F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = String.write(to:)();
  if (!v3)
  {
    v5 = type metadata accessor for LocationWeatherDataState(0);
    sub_1000E5A48();
    sub_10077C574(v6);
    sub_1000D42FC();
    v16 = sub_10077C574(v7);
    v8 = sub_100025214();
    sub_10078773C(v8, v9, v10, v5, v11, v12, v13, v14, v16);
    type metadata accessor for LocationAvailableDataSetState(0);
    sub_10077C574(&unk_100CD66D0);
    sub_1000715CC();
    sub_10077C574(v15);
    sub_100031474();
    return Dictionary<>.write(to:)();
  }

  return result;
}

void sub_100780364()
{
  sub_100032568();
  v4 = sub_100192434();
  v5 = type metadata accessor for PreprocessedWeatherData(v4);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_100006168();
  v7 = type metadata accessor for WeatherData(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100049BF8();
  v9 = type metadata accessor for NewsDataModel(0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100020E28();
  __chkstk_darwin(v11);
  sub_10003C300();
  sub_10019235C();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_100787154();
    switch(v12)
    {
      case 0:
        type metadata accessor for LocationWeatherDataState(0);
        sub_100017BC0();
        goto LABEL_9;
      case 1:
        v26 = sub_1000236E0();
        sub_100769530(v26, v27, v28, v29, v30, v31, v32, v33, v47, v48, SWORD2(v48), SBYTE6(v48), SHIBYTE(v48));
        sub_100086604();
        v34 = sub_1002E52D0();
        sub_100187600(v34, v35);
        type metadata accessor for LocationWeatherDataState(0);
        sub_1007864F4();
        goto LABEL_9;
      case 2:
        sub_1000236E0();
        sub_100882D6C();
        sub_1000236E0();
        sub_10067F898();
        v13 = sub_1000236E0();
        sub_100769530(v13, v14, v15, v16, v17, v18, v19, v20, v47, v48, SWORD2(v48), SBYTE6(v48), SHIBYTE(v48));
        v42 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
        v43 = *(v42 + 48);
        v44 = *(v42 + 64);
        sub_1007869E0();
        v45 = sub_100008408();
        sub_100187600(v45, v46);
        sub_1000B9E6C();
        sub_100187600(v2, v1 + v43);
        sub_100086604();
        sub_100187600(v3, v1 + v44);
        type metadata accessor for LocationWeatherDataState(0);
        sub_1007864E4();
        goto LABEL_9;
      case 3:
        sub_1000236E0();
        v21 = static String.read(from:)();
        v23 = v22;
        v24 = sub_1000236E0();
        v25 = sub_100784E4C(v24);
        *v1 = v21;
        v1[1] = v23;
        v1[2] = v25;
        v1[3] = v41;
        type metadata accessor for LocationWeatherDataState(0);
        sub_100017BC0();
LABEL_9:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v37 = sub_10077C574(v36);
        v38 = sub_100074D7C(v37);
        sub_10002C964(v38, v39);
        sub_100006494();
        (*(v40 + 104))();
        swift_willThrow();
        break;
    }
  }

  sub_1002E5564();
  sub_10008835C();
}

void sub_100780648()
{
  sub_10000E8AC();
  v3 = sub_100786DE4();
  v4 = type metadata accessor for PreprocessedWeatherData(v3);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000038E4();
  v7 = v6;
  v8 = sub_1000038CC();
  type metadata accessor for WeatherData(v8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_100006168();
  v10 = type metadata accessor for NewsDataModel(0);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000088C0();
  __chkstk_darwin(v12);
  sub_10003C300();
  type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000317E4();
  v14 = sub_1000167A4();
  sub_1000E82F4(v14, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v20 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
      v21 = *(v20 + 48);
      v22 = *(v20 + 64);
      sub_1007869E0();
      v23 = sub_100049C10();
      sub_100187600(v23, v24);
      sub_1000B9E6C();
      sub_100187600(v2 + v21, v7);
      sub_100086604();
      sub_100187600(v2 + v22, v1);
      sub_1007877B4();
      if (!v0)
      {
        sub_1007865E4();
        String.write(to:)();
        v25 = sub_1007865E4();
        WeatherDataModel.write(to:)(v25);
        sub_1007865E4();
        sub_100785D30();
        sub_1007865E4();
        sub_1007857C8();
        sub_100031268();
        sub_10067F2CC();
        sub_100786EE4();
        sub_100769770();
      }

      sub_1007869C8();
      sub_1000E83A0();
      sub_100786A10();
      sub_1000E83A0();
      sub_1007869F8();
      goto LABEL_17;
    case 2u:
      v17 = *(v2 + 24);
      sub_1007877B4();
      if (v0)
      {
        v18 = sub_1000370B0();
        sub_10031EF8C(v18, v19);
      }

      else
      {
        sub_100024350();
        sub_10078738C();
        String.write(to:)();

        v26 = sub_1000215E0();
        sub_100784BF8(v26, v27, v17);
        v28 = sub_1000370B0();
        sub_10031EF8C(v28, v29);
      }

      break;
    case 3u:
      sub_1007877B4();
      break;
    default:
      sub_100086604();
      v15 = sub_1000BA488();
      sub_100187600(v15, v16);
      sub_1007877B4();
      if (!v0)
      {
        sub_1007870D0();
        sub_100769770();
      }

      sub_1007869C8();
LABEL_17:
      sub_1000E83A0();
      break;
  }

  sub_1007865A4();
  sub_10000C8F4();
}

void sub_1007809B8()
{
  sub_1000D3C1C();
  sub_100192434();
  type metadata accessor for AvailableDataSets();
  sub_100017D50();
  __chkstk_darwin(v2);
  sub_100049BF8();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_1007872A4();
    if (v4)
    {
      sub_1000236E0();
      *v1 = static String.read(from:)();
      v1[1] = v7;
      type metadata accessor for LocationAvailableDataSetState(0);
      sub_1007864E4();
    }

    else if (v3 == 2)
    {
      sub_1000BC6E4();
      static FixedSizeTypeBinaryCodable.read(from:)();
      AvailableDataSets.init(rawValue:)();
      v5 = sub_1000D42A0();
      v6(v5);
      type metadata accessor for LocationAvailableDataSetState(0);
      sub_1007864F4();
    }

    else
    {
      if (v3 != 1)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v9 = sub_10077C574(v8);
        v10 = sub_100074D7C(v9);
        sub_10002C964(v10, v11);
        sub_100006494();
        (*(v12 + 104))();
        swift_willThrow();
        goto LABEL_12;
      }

      type metadata accessor for LocationAvailableDataSetState(0);
      sub_100017BC0();
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_12:
  sub_1002E5564();
  sub_100088758();
}

void sub_100780B8C()
{
  sub_100032568();
  sub_100786514();
  type metadata accessor for AvailableDataSets();
  sub_10000FB48();
  __chkstk_darwin(v2);
  sub_1000106FC();
  type metadata accessor for LocationAvailableDataSetState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  v4 = sub_100786790();
  sub_1000E82F4(v4, v0);
  sub_100053370();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000BCE14();
      sub_100786574();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v1)
      {
        sub_10003C620();
        String.write(to:)();
      }
    }

    else
    {
      sub_100786574();
      FixedSizeTypeBinaryCodable.write(to:)();
    }
  }

  else
  {
    v6 = sub_100786504();
    v7(v6);
    sub_1000C8FEC();
    sub_100786574();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      AvailableDataSets.rawValue.getter();
      sub_100786574();
      FixedSizeTypeBinaryCodable.write(to:)();
    }

    v8 = sub_10000C8E8();
    v9(v8);
  }

  sub_100786C88();
  sub_10008835C();
}

void sub_100780D78()
{
  sub_100032568();
  v1 = sub_100786524();
  v2 = type metadata accessor for ContentStatusBanner(v1);
  v3 = sub_100072E1C();
  v4 = sub_100784394();
  v5 = sub_1007843E8();
  sub_1007869B0();
  sub_10077C574(v6);
  sub_10006A8C8();
  v8 = sub_10077C574(v7);
  sub_10078776C(v0, &type metadata for ContentStatusBanner.Placement, v2, v3, v4, v5, v9, v8);
  sub_10008835C();
}

uint64_t sub_100780E2C()
{
  v0 = sub_1000926C0();
  type metadata accessor for ContentStatusBanner(v0);
  sub_100072E1C();
  sub_100784394();
  sub_1007843E8();
  sub_10077C574(&unk_100CD6710);
  sub_10006A8C8();
  sub_10077C574(v1);
  sub_100031474();
  return Dictionary<>.write(to:)();
}

void BackgroundMoonData.write(to:)()
{
  sub_10000E8AC();
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100003C38();
  sub_100021390();
  __chkstk_darwin(v4);
  sub_10004E424();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000317E4();
  BackgroundMoonData.date.getter();
  sub_100787078();
  Date.write(to:)();
  if (v0)
  {
    v6 = sub_10078642C();
    v7(v6);
  }

  else
  {
    v8 = sub_10078642C();
    v9(v8);
    BackgroundMoonData.moonrise.getter();
    Optional<A>.write(to:)();
    sub_1006827B8(v2, &unk_100CB2CF0);
    BackgroundMoonData.moonset.getter();
    sub_100786E7C();
    Optional<A>.write(to:)();
    sub_1006827B8(v1, &unk_100CB2CF0);
    BackgroundMoonData.elevation.getter();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    BackgroundMoonData.phaseAngle.getter();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    BackgroundMoonData.rotationAngle.getter();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    BackgroundMoonData.moonImageName.getter();
    sub_1000B0EE4();
    String.write(to:)();
    sub_1000E6714();
  }

  sub_1007865A4();
  sub_10000C8F4();
}

uint64_t static BackgroundMoonData.read(from:)()
{
  v1 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000088C0();
  __chkstk_darwin(v3);
  sub_1000B9E20();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v4);
  sub_100006168();
  sub_100786778();
  result = static Date.read(from:)();
  if (!v0)
  {
    sub_1002E52D0();
    static Optional<A>.read(from:)();
    sub_1002E52D0();
    static Optional<A>.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100786778();
    static String.read(from:)();
    sub_10002C598();
    sub_1000B854C();
    return BackgroundMoonData.init(date:moonrise:moonset:elevation:phaseAngle:rotationAngle:moonImageName:)();
  }

  return result;
}

uint64_t sub_10078146C(uint64_t a1)
{
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v1)
  {
    v3 = type metadata accessor for WeatherCondition();
    sub_10077C574(&unk_100CD66E0);
    sub_10002035C();
    v12 = sub_10077C574(v4);
    v5 = sub_10002C598();
    sub_10078773C(v5, v6, v7, v3, v8, v9, v10, v11, v12);
    sub_1007842EC();
    sub_100784340();
    sub_100014268();
    return Dictionary<>.write(to:)();
  }

  return result;
}

void sub_1007815BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1007877E4();
  sub_1000526D4(v14);
  if (!v13)
  {
    type metadata accessor for WeatherCondition();
    sub_10077C574(&unk_100CD66E0);
    sub_10002035C();
    sub_10077C574(v15);
    static Dictionary<>.read(from:)();
    sub_1007842EC();
    sub_100784340();
    static Dictionary<>.read(from:)();
  }

  sub_1007877F8();
}

uint64_t sub_100781718()
{
  sub_1007863D8();
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    v2 = sub_10000CDB0();
    UVIndex.ExposureCategory.write(to:)(v2);
    v3 = sub_10000CDB0();
    UVIndex.ExposureCategory.write(to:)(v3);
    v4 = sub_10000CDB0();
    sub_100778940(v4, v5);
    type metadata accessor for EnvironmentState(0);
    sub_100013AD0();
    Locale.write(to:)();
    sub_1000C82DC();
    sub_100786D84();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786D84();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786D84();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786D84();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786D84();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786D84();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786D84();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    v6 = sub_10000CDB0();
    return sub_100784630(v6);
  }

  return result;
}

void sub_100781958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  a19 = v24;
  a20 = v25;
  sub_1000E67F4();
  type metadata accessor for Locale();
  sub_10000FB48();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_1000106FC();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v20)
  {
    v29 = sub_1007863CC();
    v30 = static UVIndex.ExposureCategory.read(from:)(v29);
    v31 = sub_1007863CC();
    v32 = static UVIndex.ExposureCategory.read(from:)(v31);
    v33 = sub_1007863CC();
    v43 = sub_100778854(v33);
    sub_1007863CC();
    static Locale.read(from:)();
    sub_1007863CC();
    v40 = static String.read(from:)();
    v41 = v32;
    v42 = v34;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10002F7A8();
    v35 = sub_1007863CC();
    v36 = sub_1007846BC(v35);
    *v22 = v52;
    v22[1] = v30;
    v22[2] = v41;
    v22[3] = v43;
    v37 = type metadata accessor for EnvironmentState(0);
    (*(v27 + 32))(&v22[v37[8]], v23, v21);
    v38 = &v22[v37[9]];
    *v38 = v40;
    v38[1] = v42;
    v22[v37[10]] = v51;
    v22[v37[11]] = v50;
    v22[v37[12]] = v49;
    v22[v37[13]] = v48;
    *&v22[v37[14]] = v47;
    v22[v37[15]] = v46;
    v22[v37[16]] = v45;
    v22[v37[17]] = v44;
    v39 = &v22[v37[18]];
    *v39 = v53;
    v39[1] = v54;
    v39[2] = v55;
    v22[v37[19]] = v36;
  }

  sub_10002FE90();
  sub_10000C8F4();
}

void sub_100781DA4()
{
  sub_100032568();
  sub_100786514();
  type metadata accessor for LocationOfInterest();
  sub_100017D50();
  __chkstk_darwin(v2);
  sub_1000106FC();
  type metadata accessor for SelectedSearchResult(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  v4 = sub_100786790();
  sub_1000E82F4(v4, v0);
  sub_100053370();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = sub_100786504();
      v7(v6);
      sub_1000C8FEC();
      sub_1007863E4();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v1)
      {
        sub_1007866E0();
        LocationOfInterest.write(to:)();
      }

      v8 = sub_10000810C();
      v9(v8);
    }

    else
    {
      sub_1000BCE14();
      sub_1007863E4();
      FixedSizeTypeBinaryCodable.write(to:)();
    }
  }

  else
  {
    sub_10001635C();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      sub_10003C620();
      String.write(to:)();
    }
  }

  sub_100786F80();
  sub_10008835C();
}

void sub_100781F6C()
{
  sub_1000D3C1C();
  sub_100192434();
  type metadata accessor for LocationOfInterest();
  sub_100017D50();
  __chkstk_darwin(v2);
  sub_100049BF8();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_1007872A4();
    if (v4)
    {
      type metadata accessor for SelectedSearchResult(0);
      sub_100017BC0();
    }

    else if (v3 == 2)
    {
      sub_1000236E0();
      static LocationOfInterest.read(from:)();
      v6 = sub_1000D42A0();
      v7(v6);
      type metadata accessor for SelectedSearchResult(0);
      sub_1007864E4();
    }

    else
    {
      if (v3 != 1)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v9 = sub_10077C574(v8);
        v10 = sub_100074D7C(v9);
        sub_10002C964(v10, v11);
        sub_100006494();
        (*(v12 + 104))();
        swift_willThrow();
        goto LABEL_12;
      }

      sub_1000236E0();
      *v1 = static String.read(from:)();
      v1[1] = v5;
      type metadata accessor for SelectedSearchResult(0);
      sub_1007864F4();
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_12:
  sub_1002E5564();
  sub_100088758();
}

void sub_10078211C()
{
  sub_1000D3C1C();
  sub_1000926C0();
  type metadata accessor for Location.Identifier();
  sub_10000548C();
  __chkstk_darwin(v3);
  sub_1000106FC();
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  v5 = sub_100003810(active);
  __chkstk_darwin(v5);
  sub_100005384();
  v6 = sub_100786790();
  sub_1000E82F4(v6, v1);
  if (sub_100024D10(v1, 1, v0) == 1)
  {
    sub_100786D18();
    FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    v7 = sub_100786504();
    v8(v7);
    sub_100786D18();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v2)
    {
      sub_1000E6768();
      Location.Identifier.write(to:)();
    }

    v9 = sub_10078670C();
    v10(v9);
  }

  sub_100786C88();
  sub_100088758();
}

void sub_100782360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13)
{
  sub_1000D3C1C();
  sub_100192434();
  type metadata accessor for Location.Identifier();
  sub_100017D50();
  __chkstk_darwin(v16);
  sub_100049BF8();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v13)
  {
    v17 = a13;
    if (a13 != 1)
    {
      if (a13 != 2)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v21 = sub_10077C574(v20);
        v22 = sub_100074D7C(v21);
        sub_10002C964(v22, v23);
        sub_100006494();
        (*(v24 + 104))();
        swift_willThrow();
        goto LABEL_8;
      }

      sub_1000236E0();
      static Location.Identifier.read(from:)();
      v18 = sub_1000D42A0();
      v19(v18);
      v17 = 0;
    }

    sub_10001B350(v14, v17, 1, v15);
  }

LABEL_8:
  sub_1002E5564();
  sub_100088758();
}

uint64_t sub_1007824D8(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    result = sub_100786BE4(result, v3, v4, v5, v6, v7, v8, v9, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
    if (result >= 4u)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v11 = sub_10077C574(v10);
      v12 = sub_100074D7C(v11);
      sub_10002C964(v12, v13);
      sub_100006494();
      (*(v14 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_10078259C()
{
  sub_10005246C();
  v2 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  sub_10077C574(&unk_100CD6768);
  sub_1000E3220();
  sub_10077C574(v3);
  sub_1000370B0();
  sub_10078738C();
  Optional<A>.write(to:)();
  if (!v1)
  {
    type metadata accessor for LocationsState(0);
    sub_1007874FC();
    type metadata accessor for SavedLocation();
    sub_10077C574(&unk_100CD6778);
    sub_100030268();
    sub_10077C574(v4);
    sub_10003C620();
    Array<A>.write(to:)();
    type metadata accessor for LocationModel();
    sub_10077C574(&unk_100CD6788);
    sub_1000BAF30();
    sub_10077C574(v5);
    sub_100786E7C();
    Array<A>.write(to:)();
    v6 = *(v0 + *(v2 + 28));
    v7 = type metadata accessor for LocationOfInterest();
    sub_100786980();
    sub_10077C574(v8);
    sub_100023154();
    sub_10077C574(v9);
    v10 = sub_1000E14AC();
    sub_1007877CC(v10, v6, v7, v11, v12);
    type metadata accessor for Location();
    sub_10077C574(&unk_100CD6688);
    sub_100019EA4();
    sub_10077C574(v13);
    sub_100786E7C();
    Array<A>.write(to:)();
    v20 = *(v0 + *(v2 + 36));
    v19 = type metadata accessor for Location.Identifier();
    sub_10077C574(&unk_100CD67A8);
    sub_1000C8C08();
    sub_10077C574(v14);
    v15 = sub_1000E14AC();
    sub_1007877CC(v15, v20, v19, v16, v17);
    Dictionary<>.write(to:)();
    Dictionary<>.write(to:)();
    sub_100787574();
    sub_1007863E4();
    sub_100782A34();
    type metadata accessor for LocationDisplayContext();
    sub_10077C574(&unk_100CD67B8);
    sub_10008878C();
    sub_10077C574(v18);
    sub_100003940();
    Dictionary<>.write(to:)();
  }

  sub_1001707D4();
}

void sub_100782A34()
{
  sub_1000D3C1C();
  switch(v1)
  {
    case 2:
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v0)
      {
        type metadata accessor for LocationOfInterest();
        sub_10077C574(&unk_100CD6798);
        sub_100023154();
        sub_10077C574(v2);
        sub_100025214();
        Array<A>.write(to:)();
        sub_1007867B4();
        goto LABEL_7;
      }

      break;
    case 3:
      FixedSizeTypeBinaryCodable.write(to:)();
      break;
    default:
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v0)
      {
        type metadata accessor for LocationOfInterest();
        sub_100786980();
        sub_10077C574(v3);
        sub_100023154();
        sub_10077C574(v4);
        sub_100025214();
LABEL_7:
        Array<A>.write(to:)();
      }

      break;
  }

  sub_100088758();
}

void sub_100782C30()
{
  sub_10000E8AC();
  v6 = v5;
  v63 = v7;
  type metadata accessor for LocationModel();
  sub_100024A44();
  v61 = v8;
  __chkstk_darwin(v9);
  sub_100006168();
  v10 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v64 = v11;
  __chkstk_darwin(v12);
  sub_1000317E4();
  v13 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_10078647C();
  type metadata accessor for CurrentLocation();
  sub_10077C574(&unk_100CD6768);
  sub_1000E3220();
  sub_10077C574(v15);
  static Optional<A>.read(from:)();
  if (!v1)
  {
    v59 = v2;
    v60 = v10;
    v66 = v0;
    type metadata accessor for SavedLocation();
    sub_10077C574(&unk_100CD6778);
    sub_100030268();
    sub_10077C574(v16);
    sub_1007871A8();
    v17 = static Array<A>.read(from:)();
    sub_10077C574(&unk_100CD6788);
    sub_1000BAF30();
    sub_10077C574(v18);
    v19 = static Array<A>.read(from:)();
    type metadata accessor for LocationOfInterest();
    sub_10077C574(&unk_100CD6798);
    sub_100023154();
    sub_10077C574(v20);
    sub_100008408();
    sub_1007871A8();
    v21 = static Array<A>.read(from:)();
    type metadata accessor for Location();
    sub_10077C574(&unk_100CD6688);
    sub_100019EA4();
    sub_10077C574(v22);
    sub_100008408();
    sub_1007871C0();
    v56 = static Array<A>.read(from:)();
    sub_10077C574(&unk_100CD67A8);
    sub_1000C8C08();
    sub_10077C574(v23);
    sub_1000523E0();
    static Array<A>.read(from:)();

    v24 = static Dictionary<>.read(from:)();
    v55 = static Dictionary<>.read(from:)();
    v25 = sub_100786420();
    sub_1007835B4(v25, v26, v27, v28, v29, v30, v31, v32, v48, v49, SWORD2(v49), SBYTE6(v49), SHIBYTE(v49));
    v51 = v33;
    v52 = v34;
    v53 = v35;
    v54 = v24;
    v36 = type metadata accessor for LocationDisplayContext();
    sub_10077C574(&unk_100CD67B8);
    sub_10008878C();
    v38 = sub_10077C574(v37);
    v50 = sub_10078776C(v6, &type metadata for String, v36, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, v39, v38);
    sub_1001A00C8(v66, v63);
    v40 = type metadata accessor for LocationsState(0);
    *(v63 + v40[5]) = v17;
    *(v63 + v40[6]) = v19;
    *(v63 + v40[7]) = v21;
    v57 = v40;
    *(v63 + v40[8]) = v56;
    if (*(v19 + 16))
    {
      v41 = *(v19 + 16);

      sub_10003DC90();
      v42 = v61 + 16;
      v65 = *(v61 + 16);
      v43 = v19 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v62 = *(v61 + 72);
      v58 = (v42 - 8);
      do
      {
        v44 = sub_100053370();
        v65(v44);
        LocationModel.identifier.getter();
        (*v58)(v59, v3);
        v45 = _swiftEmptyArrayStorage[2];
        v46 = v45 + 1;
        if (v45 >= _swiftEmptyArrayStorage[3] >> 1)
        {
          sub_10003DC90();
          v46 = v45 + 1;
        }

        _swiftEmptyArrayStorage[2] = v46;
        (*(v64 + 32))(_swiftEmptyArrayStorage + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v45, v4, v60);
        v43 += v62;
        --v41;
      }

      while (v41);

      sub_1006827B8(v66, &unk_100CE49F0);
    }

    else
    {
      sub_1006827B8(v66, &unk_100CE49F0);
    }

    *(v63 + v57[9]) = _swiftEmptyArrayStorage;
    *(v63 + v57[10]) = v54;
    *(v63 + v57[11]) = v55;
    v47 = v63 + v57[12];
    *v47 = v51;
    *(v47 + 8) = v52;
    *(v47 + 16) = v53;
    *(v63 + v57[13]) = v50;
  }

  sub_10002FE90();
  sub_10000C8F4();
}

void sub_1007835B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1007877E4();
  sub_1000526D4(v14);
  if (!v13)
  {
    switch(a13)
    {
      case 1:
        break;
      case 2:
      case 3:
        type metadata accessor for LocationOfInterest();
        sub_100786950();
        sub_10077C574(v15);
        sub_100023154();
        sub_10077C574(v16);
        sub_100031474();
        sub_100786B0C();
        static Array<A>.read(from:)();
        break;
      case 4:
        type metadata accessor for LocationOfInterest();
        sub_100786968();
        sub_10077C574(v17);
        sub_100023154();
        sub_10077C574(v18);
        sub_100040F9C();
        static Array<A>.read(from:)();
        sub_100040F9C();
        static Array<A>.read(from:)();
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v20 = sub_10077C574(v19);
        v21 = sub_100074D7C(v20);
        sub_10002C964(v21, v22);
        sub_100006494();
        (*(v23 + 104))();
        swift_willThrow();
        break;
    }
  }

  sub_10003BB20();
  sub_1007877F8();
}

void sub_100783890()
{
  sub_100032568();
  v2 = v1;
  v3 = sub_10000C76C();
  v4(v3);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10001320C();
  v6 = sub_10078728C();
  v2(v6);
  if (!v0)
  {
    v7 = sub_1000E14D4();
    v8(v7);
  }

  sub_100786E70();
  sub_10008835C();
}

void sub_100783958()
{
  sub_1000D3C1C();
  type metadata accessor for NewsArticle(0);
  sub_10077C574(&unk_100CD6828);
  sub_1007865D8();
  sub_10077C574(v1);
  sub_1000E14AC();
  sub_1000300A0();
  Array<A>.write(to:)();
  if (!v0)
  {
    type metadata accessor for NewsArticlePlacement(0);
    sub_1007863E4();
    ArticlePlacementLocation.write(to:)();
  }

  sub_100088758();
}

void sub_100783A34()
{
  sub_10000E8AC();
  v3 = v2;
  sub_10000C76C();
  type metadata accessor for ArticlePlacementLocation();
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_100006168();
  type metadata accessor for NewsArticle(0);
  sub_10077C574(&unk_100CD6828);
  sub_10077C574(&unk_100CD6830);
  sub_1000D42A0();
  v5 = static Array<A>.read(from:)();
  if (!v1)
  {
    v6 = v5;
    static ArticlePlacementLocation.read(from:)(v3);
    *v0 = v6;
    type metadata accessor for NewsArticlePlacement(0);
    sub_10078660C();
    v7();
  }

  sub_1001333F8();
  sub_10000C8F4();
}

uint64_t sub_100783BA0()
{
  sub_100787048();
  result = String.write(to:)();
  if (!v0)
  {
    String.write(to:)();
    sub_10078732C();
    sub_100787344();
    sub_10078779C();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  return result;
}

uint64_t sub_100783C68()
{
  sub_100786ED8();
  result = static String.read(from:)();
  if (!v0)
  {
    v4 = result;
    v5 = v3;
    sub_1007863CC();
    v6 = static String.read(from:)();
    v8 = v7;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    result = static FixedSizeTypeBinaryCodable.read(from:)();
    *v1 = v4;
    *(v1 + 8) = v5;
    *(v1 + 16) = v6;
    *(v1 + 24) = v8;
    *(v1 + 32) = v12;
    *(v1 + 33) = v11;
    *(v1 + 34) = v10;
    *(v1 + 35) = v9;
  }

  return result;
}

uint64_t sub_100783E40(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_100051AC0();
    if (v4)
    {
      return 0;
    }

    else if (v3 == 2)
    {
      return 1;
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v6 = sub_10077C574(v5);
      v7 = sub_100074D7C(v6);
      sub_10002C964(v7, v8);
      sub_100006494();
      (*(v9 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t SearchLocation.write(to:)()
{
  sub_1007863D8();
  result = String.write(to:)();
  if (!v0)
  {
    sub_10000CDB0();
    String.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    type metadata accessor for SearchLocation(0);
    sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
    sub_1000C8DAC();
    sub_10077C574(v2);
    sub_100019EA4();
    sub_10077C574(v3);
    sub_100052444();
    sub_10022C350(&qword_100CD6698, &qword_100A7F3B0);
    sub_100786A28();
    sub_10077C574(v4);
    sub_100171218();
    sub_10077C574(v5);
    return sub_1001721CC();
  }

  return result;
}

void static SearchLocation.read(from:)()
{
  sub_10000E8AC();
  v3 = v2;
  v4 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  sub_100003CF8();
  sub_100786420();
  v6 = static String.read(from:)();
  if (!v0)
  {
    v8 = v6;
    v9 = v7;
    sub_100786420();
    v10 = static String.read(from:)();
    v12 = v11;
    sub_100786420();
    v19 = static String.read(from:)();
    v23 = v13;
    type metadata accessor for Location();
    sub_1000B8534();
    sub_10077C574(v14);
    sub_100019EA4();
    sub_10077C574(v15);
    static Optional<A>.read(from:)();
    type metadata accessor for CLLocationCoordinate2D(0);
    sub_10077C574(&unk_100CD66A0);
    sub_100171218();
    sub_10077C574(v16);
    sub_1007871A8();
    static Optional<A>.read(from:)();
    *v3 = 0;
    v3[1] = v8;
    v3[2] = v9;
    v3[3] = v10;
    v3[4] = v12;
    v3[5] = v19;
    v3[6] = v23;
    v17 = type metadata accessor for SearchLocation(0);
    sub_100786150(v1, v3 + *(v17 + 32), &qword_100CA65D8, &unk_100A3D9D0);
    v18 = v3 + *(v17 + 36);
    *v18 = v20;
    *(v18 + 1) = v21;
    v18[16] = v22;
  }

  sub_10002FE90();
  sub_10000C8F4();
}

unint64_t sub_1007842EC()
{
  result = qword_100CD66F0;
  if (!qword_100CD66F0)
  {
    result = swift_getWitnessTable(aI_19, &type metadata for KnownLocationViewLayout, v0, v1);
    atomic_store(result, &qword_100CD66F0);
  }

  return result;
}

unint64_t sub_100784340()
{
  result = qword_100CD66F8;
  if (!qword_100CD66F8)
  {
    result = swift_getWitnessTable(byte_100A3B660, &type metadata for KnownLocationViewLayout, v0, v1);
    atomic_store(result, &qword_100CD66F8);
  }

  return result;
}

unint64_t sub_100784394()
{
  result = qword_100CD6700;
  if (!qword_100CD6700)
  {
    result = swift_getWitnessTable(aQ_25, &type metadata for ContentStatusBanner.Placement, v0, v1);
    atomic_store(result, &qword_100CD6700);
  }

  return result;
}

unint64_t sub_1007843E8()
{
  result = qword_100CD6708;
  if (!qword_100CD6708)
  {
    result = swift_getWitnessTable(byte_100A78958, &type metadata for ContentStatusBanner.Placement, v0, v1);
    atomic_store(result, &qword_100CD6708);
  }

  return result;
}

uint64_t sub_10078443C(uint64_t a1, void *a2)
{
  result = String.write(to:)();
  if (!v2)
  {
    sub_100787468();
    dispatch thunk of BinaryEncodable.write(to:)();
    sub_100787468();
    return dispatch thunk of BinaryEncodable.write(to:)();
  }

  return result;
}

void sub_1007844A4()
{
  sub_10000E8AC();
  v19 = v5;
  v20 = v4;
  v7 = v6;
  v21 = v8;
  v10 = v9;
  v12 = v11;
  sub_100786ED8();
  __chkstk_darwin(v13);
  sub_1000317E4();
  __chkstk_darwin(v14);
  sub_100049BF8();
  v15 = static String.read(from:)();
  if (!v0)
  {
    v17 = v15;
    v18 = v16;
    sub_100031268();
    dispatch thunk of static BinaryDecodable.read(from:)();
    dispatch thunk of static BinaryDecodable.read(from:)();
    sub_100888D18(v17, v18, v2, v3, v12, v10, v21, v7, v1, v20, v19);
  }

  sub_1007865A4();
  sub_10000C8F4();
}

uint64_t sub_1007846BC(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    result = sub_100786BE4(result, v3, v4, v5, v6, v7, v8, v9, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
    if (result >= 3)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v11 = sub_10077C574(v10);
      v12 = sub_100074D7C(v11);
      sub_10002C964(v12, v13);
      sub_100006494();
      (*(v14 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_10078477C()
{
  result = qword_100CD6720;
  if (!qword_100CD6720)
  {
    result = swift_getWitnessTable(byte_100A5FC68, &unk_100C5DA68, v0, v1);
    atomic_store(result, &qword_100CD6720);
  }

  return result;
}

unint64_t sub_1007847D0()
{
  result = qword_100CD6728;
  if (!qword_100CD6728)
  {
    result = swift_getWitnessTable(byte_100A5FC40, &unk_100C5DA68, v0, v1);
    atomic_store(result, &qword_100CD6728);
  }

  return result;
}

unint64_t sub_100784824()
{
  result = qword_100CD6730;
  if (!qword_100CD6730)
  {
    result = swift_getWitnessTable(aA_19, &unk_100C5D180, v0, v1);
    atomic_store(result, &qword_100CD6730);
  }

  return result;
}

unint64_t sub_100784878()
{
  result = qword_100CD6738;
  if (!qword_100CD6738)
  {
    result = swift_getWitnessTable(aY_40, &unk_100C5D180, v0, v1);
    atomic_store(result, &qword_100CD6738);
  }

  return result;
}

unint64_t sub_1007848CC()
{
  result = qword_100CD6740;
  if (!qword_100CD6740)
  {
    result = swift_getWitnessTable(byte_100A5E898, &unk_100C5D0F0, v0, v1);
    atomic_store(result, &qword_100CD6740);
  }

  return result;
}

unint64_t sub_100784920()
{
  result = qword_100CD6748;
  if (!qword_100CD6748)
  {
    result = swift_getWitnessTable(byte_100A5E460, &unk_100C5D0F0, v0, v1);
    atomic_store(result, &qword_100CD6748);
  }

  return result;
}

unint64_t sub_100784974()
{
  result = qword_100CD6750;
  if (!qword_100CD6750)
  {
    result = swift_getWitnessTable(byte_100A5E438, &unk_100C5D0F0, v0, v1);
    atomic_store(result, &qword_100CD6750);
  }

  return result;
}

unint64_t sub_1007849C8()
{
  result = qword_100CD6758;
  if (!qword_100CD6758)
  {
    result = swift_getWitnessTable(byte_100A69B40, &unk_100C62070, v0, v1);
    atomic_store(result, &qword_100CD6758);
  }

  return result;
}

unint64_t sub_100784A1C()
{
  result = qword_100CD6760;
  if (!qword_100CD6760)
  {
    result = swift_getWitnessTable(byte_100A69B18, &unk_100C62070, v0, v1);
    atomic_store(result, &qword_100CD6760);
  }

  return result;
}

uint64_t sub_100784A70(uint64_t a1)
{
  result = Date.write(to:)();
  if (!v1)
  {
    type metadata accessor for WeatherDataRelevancy(0);
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  return result;
}

uint64_t sub_100784ADC(uint64_t a1)
{
  sub_10000C76C();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v3);
  sub_1000106FC();
  result = static Date.read(from:)();
  if (!v2)
  {
    sub_100786760();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v5 = sub_10003C620();
    v6(v5);
    result = type metadata accessor for WeatherDataRelevancy(0);
    *(v1 + *(result + 20)) = v7;
  }

  return result;
}

uint64_t sub_100784BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      result = FixedSizeTypeBinaryCodable.write(to:)();
      break;
    default:
      result = sub_10078732C();
      if (!v3)
      {
        sub_1000E14D4();
        result = String.write(to:)();
      }

      break;
  }

  return result;
}

uint64_t sub_100784E4C(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    result = 0;
    switch(v8)
    {
      case 1:
        return result;
      case 2:
        result = 0;
        break;
      case 3:
        result = 0;
        break;
      case 4:
        result = 0;
        break;
      case 5:
        result = 0;
        break;
      case 6:
        result = 0;
        break;
      case 7:
        result = 0;
        break;
      case 8:
        result = 0;
        break;
      case 9:
        result = 0;
        break;
      case 10:
        result = 0;
        break;
      case 11:
        result = 0;
        break;
      case 12:
        result = 0;
        break;
      case 13:
        result = 0;
        break;
      case 14:
        result = 0;
        break;
      case 15:
        sub_10000CDB0();
        result = static String.read(from:)();
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v4 = sub_10077C574(v3);
        v5 = sub_100074D7C(v4);
        sub_10002C964(v5, v6);
        sub_100006494();
        (*(v7 + 104))();
        result = swift_willThrow();
        break;
    }
  }

  return result;
}

uint64_t sub_100784FF0()
{
  v2 = sub_1000926C0();
  type metadata accessor for LocationPreviewViewState(v2);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_10002429C();
  v4 = type metadata accessor for ModalViewState.MapViewModal(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100049BF8();
  v6 = sub_1000167A4();
  sub_1000E82F4(v6, v1);
  sub_100786920();
  v7 = sub_100037280();
  sub_100187600(v7, v8);
  FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    sub_100786B18();
    sub_10077F6B8(v9);
    sub_100787468();
    sub_1006801AC();
    sub_100787468();
    sub_100781DA4();
  }

  return sub_1000E83A0();
}

void sub_100785144()
{
  v1 = sub_100786560();
  v2 = type metadata accessor for LocationPreviewViewState(v1);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    if (v11 == 1)
    {
      sub_1000B0CA4();
      sub_100757C30();
      sub_100786920();
      v4 = sub_10000C8E8();
      sub_100187600(v4, v5);
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      swift_willThrow();
    }
  }
}

void sub_100785270()
{
  sub_10000E8AC();
  type metadata accessor for Location();
  sub_10000FB48();
  __chkstk_darwin(v4);
  sub_1000106FC();
  type metadata accessor for LocationModel();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000520E4();
  type metadata accessor for NotificationLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_10001BA34();
  v7 = sub_1000167A4();
  sub_1000E82F4(v7, v3);
  sub_1002E54F8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10022C350(&unk_100CE2F60, &unk_100A42090);
      sub_100787118();
      v9(v2, v3, v1);
      sub_1000BCE14();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v0)
      {
        sub_1000E6768();
        Location.write(to:)();
        FixedSizeTypeBinaryCodable.write(to:)();
      }

      v10 = sub_10000C8E8();
      v11(v10);
    }

    else
    {
      FixedSizeTypeBinaryCodable.write(to:)();
    }
  }

  else
  {
    v12 = sub_10000CDBC();
    v13(v12);
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v0)
    {
      LocationModel.write(to:)();
    }

    v14 = sub_100020E44();
    v15(v14);
  }

  sub_100041B68();
  sub_10000C8F4();
}

void sub_10078551C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  v39 = v25;
  v26 = type metadata accessor for Location();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_100049BF8();
  type metadata accessor for LocationModel();
  sub_1000037C4();
  __chkstk_darwin(v30);
  sub_10001BA34();
  sub_10019235C();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v23)
  {
    if (a13 != 1)
    {
      if (a13 == 3)
      {
        sub_1007865E4();
        static Location.read(from:)();
        sub_100786580();
        static FixedSizeTypeBinaryCodable.read(from:)();
        v38 = *(sub_10022C350(&unk_100CE2F60, &unk_100A42090) + 48);
        (*(v28 + 32))(v39, v24, v26);
        *(v39 + v38) = a12;
      }

      else
      {
        if (a13 != 2)
        {
          type metadata accessor for BinaryDecoder.Error();
          sub_10001F6D0();
          v34 = sub_10077C574(v33);
          v35 = sub_1007863A0(v34);
          sub_100787298(v35, v36);
          sub_10004E4B8();
          (*(v37 + 104))();
          swift_willThrow();
          goto LABEL_2;
        }

        sub_1007865E4();
        static LocationModel.read(from:)();
        v31 = sub_1000BA488();
        v32(v31);
      }
    }

    type metadata accessor for NotificationLocation(0);
    swift_storeEnumTagMultiPayload();
  }

LABEL_2:
  sub_1007865A4();
  sub_10000C8F4();
}

void sub_1007857C8()
{
  sub_10000E8AC();
  sub_10022C350(&qword_100CC8178, &qword_100A905E0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000132E8();
  type metadata accessor for Date();
  sub_10000548C();
  __chkstk_darwin(v4);
  sub_100005888();
  v5 = type metadata accessor for WeatherData.CachingState(0);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_10001BA34();
  v7 = sub_1000167A4();
  sub_1000E82F4(v7, v2);
  v8 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
  if (sub_100024D10(v2, 1, v8) == 1)
  {
    FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    v9 = *(v8 + 48);
    v10 = sub_1000E17A0();
    v11(v10);
    sub_100786150(v2 + v9, v1, &qword_100CC8178, &qword_100A905E0);
    sub_1001706C0();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v0)
    {
      Date.write(to:)();
      sub_10077C574(&unk_100CD6818);
      sub_1007863C0();
      sub_10077C574(v12);
      Optional<A>.write(to:)();
    }

    sub_1006827B8(v1, &qword_100CC8178);
    v13 = sub_1000046B4();
    v14(v13);
  }

  sub_10078716C();
  sub_10000C8F4();
}

void sub_100785A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  v16 = v15;
  v17 = sub_10022C350(&qword_100CC8178, &qword_100A905E0);
  sub_100003810(v17);
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000132E8();
  type metadata accessor for Date();
  sub_100024A44();
  __chkstk_darwin(v19);
  sub_1000520E4();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v13)
  {
    if (a13 == 2)
    {
      sub_100786420();
      static Date.read(from:)();
      type metadata accessor for WeatherDataRelevancy(0);
      sub_10077C574(&unk_100CD6818);
      sub_100786F08(&unk_100CD6820);
      sub_10078671C();
      static Optional<A>.read(from:)();
      v28 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
      v29 = *(v28 + 48);
      v30 = sub_100020B28();
      v31(v30);
      sub_100786150(v14, v16 + v29, &qword_100CC8178, &qword_100A905E0);
      v20 = v16;
      v22 = 0;
      v21 = v28;
    }

    else
    {
      if (a13 != 1)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v24 = sub_10077C574(v23);
        v25 = sub_100074D7C(v24);
        sub_10002C964(v25, v26);
        sub_100006494();
        (*(v27 + 104))();
        swift_willThrow();
        goto LABEL_2;
      }

      sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
      v20 = sub_100031400();
      v22 = 1;
    }

    sub_10001B350(v20, v22, 1, v21);
  }

LABEL_2:
  sub_10002FE90();
  sub_10000C8F4();
}

void sub_100785D30()
{
  sub_100032568();
  sub_100786514();
  type metadata accessor for WeatherStatisticsModel();
  sub_100017D50();
  __chkstk_darwin(v2);
  sub_1000106FC();
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  v4 = sub_100786790();
  sub_1000E82F4(v4, v0);
  sub_100053370();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = sub_100786504();
      v7(v6);
      sub_1000BCE14();
      sub_1007863E4();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v1)
      {
        sub_1007866E0();
        WeatherStatisticsModel.write(to:)();
      }

      v8 = sub_10000810C();
      v9(v8);
    }

    else
    {
      sub_1000C8FEC();
      sub_1007863E4();
      FixedSizeTypeBinaryCodable.write(to:)();
    }
  }

  else
  {
    sub_10001635C();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      sub_10003C620();
      String.write(to:)();
    }
  }

  sub_100786F80();
  sub_10008835C();
}

void sub_100785EF8()
{
  sub_1000D3C1C();
  sub_100786560();
  type metadata accessor for WeatherStatisticsModel();
  sub_100024A44();
  __chkstk_darwin(v2);
  sub_100049BF8();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_1007872A4();
    if (v4)
    {
      sub_1000B0CA4();
      static WeatherStatisticsModel.read(from:)();
      v6 = sub_1000D42A0();
      v7(v6);
      type metadata accessor for WeatherData.WeatherStatisticsState(0);
      sub_1007864E4();
    }

    else if (v3 == 2)
    {
      type metadata accessor for WeatherData.WeatherStatisticsState(0);
      sub_100017BC0();
    }

    else
    {
      if (v3 != 1)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v9 = sub_10077C574(v8);
        v10 = sub_100074D7C(v9);
        sub_10002C964(v10, v11);
        sub_100006494();
        (*(v12 + 104))();
        swift_willThrow();
        goto LABEL_12;
      }

      sub_1000B0CA4();
      *v1 = static String.read(from:)();
      v1[1] = v5;
      type metadata accessor for WeatherData.WeatherStatisticsState(0);
      sub_1007864F4();
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_12:
  sub_1002E5564();
  sub_100088758();
}

unint64_t sub_1007860A8()
{
  result = qword_100CD67E8;
  if (!qword_100CD67E8)
  {
    result = swift_getWitnessTable(aM_66, &unk_100C6E6C8, v0, v1);
    atomic_store(result, &qword_100CD67E8);
  }

  return result;
}

unint64_t sub_1007860FC()
{
  result = qword_100CD67F0;
  if (!qword_100CD67F0)
  {
    result = swift_getWitnessTable(byte_100A72B5C, &unk_100C6E6C8, v0, v1);
    atomic_store(result, &qword_100CD67F0);
  }

  return result;
}

uint64_t sub_100786150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10022C350(a3, a4);
  sub_100003A9C();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10078635C()
{

  return static FixedSizeTypeBinaryCodable.read(from:)();
}

uint64_t sub_100786380()
{

  return Optional<A>.write(to:)();
}

uint64_t sub_1007863A0(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_1007865F0()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_1007866A4()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_100786728()
{

  return Optional<A>.write(to:)();
}

uint64_t sub_1007867C0(uint64_t a1, uint64_t a2)
{

  return String.write(to:)();
}

unint64_t sub_100786B30(uint64_t a1)
{

  return sub_10077C574(a1);
}

unint64_t sub_100786B58(uint64_t a1)
{

  return sub_10077C574(a1);
}

unint64_t sub_100786B80(uint64_t a1)
{

  return sub_10077C574(a1);
}

__n128 sub_100786BA8()
{
  v1 = *(v0 - 120);
  result = *(v0 - 104);
  *(v0 - 160) = result;
  *(v0 - 144) = v1;
  return result;
}

uint64_t sub_100786C28(uint64_t a1)
{

  return static Array<A>.read(from:)();
}

__n128 sub_100786CE8@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v5 = *(v2 - 160);
  result = *(v2 - 144);
  *v3 = result;
  *(v3 + 16) = v5;
  return result;
}

__n128 sub_100786D48@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 160);
  result = *(v1 - 144);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100786EB8()
{
  result = v0;
  *(v2 - 72) = v1;
  return result;
}

uint64_t sub_100786EF0(uint64_t a1)
{

  return static FixedSizeTypeBinaryCodable.read(from:)();
}

unint64_t sub_100786F08(uint64_t a1)
{

  return sub_10077C574(a1);
}

uint64_t sub_100786F20(uint64_t a1, __n128 a2)
{

  return Measurement.init(value:unit:)();
}

uint64_t sub_100786F40()
{

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_100787030()
{
}

double sub_1007870A0()
{
  result = *(v0 - 232);
  *(v0 - 648) = result;
  return result;
}

uint64_t sub_1007870F0(uint64_t a1, uint64_t a2)
{

  return String.write(to:)();
}

void sub_100787130(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = v6;
  v7[7] = a1;
  v7[8] = a5;
  v7[9] = a6;
  v7[10] = a3;
  v7[11] = a4;
}

uint64_t sub_1007872B0(uint64_t a1)
{
  v3 = *(v1 - 248);

  return sub_100187600(a1, v3);
}

uint64_t sub_1007872C8(uint64_t a1, __n128 a2)
{

  return Measurement.init(value:unit:)();
}

uint64_t sub_1007872E0()
{
}

uint64_t sub_1007872F8()
{

  return static FixedSizeTypeBinaryCodable.read(from:)();
}

unint64_t sub_100787314(uint64_t a1)
{

  return sub_10077C574(a1);
}

uint64_t sub_10078732C()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_100787344()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_10078735C()
{

  return sub_1000E83A0();
}

uint64_t sub_1007875E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a9 = v12;
  a10 = a1;

  return swift_getWitnessTable(v10, v11, &a9);
}

uint64_t sub_100787604(uint64_t a1)
{

  return Set<>.write(to:)();
}

uint64_t sub_100787624()
{

  return static Date.read(from:)();
}

void sub_100787644(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1007587A8(a1, v5 | v3 | v4 | (v2 << 8) | a2);
}

uint64_t sub_100787664()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_100787684()
{
  v2 = *(v0 - 192);

  return static NSUnitTemperature.read(from:)(v2);
}

uint64_t sub_1007876A4()
{

  return String.write(to:)();
}

uint64_t sub_1007876C4(uint64_t a1, uint64_t a2)
{

  return Array<A>.write(to:)();
}

uint64_t sub_1007876E4(uint64_t a1, uint64_t a2)
{

  return Array<A>.write(to:)();
}

void *sub_100787704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = (a1 + 16);

  return memcpy(v10, &a9, 0x60uLL);
}

uint64_t sub_100787724()
{
}

uint64_t sub_10078773C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return Dictionary<>.write(to:)();
}

uint64_t sub_100787754(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return Optional<A>.write(to:)();
}

uint64_t sub_10078776C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return static Dictionary<>.read(from:)();
}

uint64_t sub_100787784()
{
}

uint64_t sub_10078779C()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_1007877B4()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_1007877CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return Array<A>.write(to:)();
}

uint64_t type metadata accessor for LocationRowContentViewLargeText(uint64_t a1)
{
  result = qword_100CD6938;
  if (!qword_100CD6938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100787880(uint64_t a1)
{
  result = type metadata accessor for ListLocationViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100787968(uint64_t a1, unsigned __int8 a2)
{
  if (sub_10069A6AC(a2, a1))
  {
    sub_10022C350(&qword_100CB7C58, &qword_100A4BC60);
    type metadata accessor for RedactionReasons();
    *(swift_allocObject() + 16) = xmmword_100A2C3F0;
    static RedactionReasons.placeholder.getter();
  }

  else
  {
    type metadata accessor for RedactionReasons();
  }

  sub_1007897B0(&qword_100CAD9E8, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  sub_10022C350(&qword_100CB7C48, &qword_100A4BC58);
  sub_100006F64(&qword_100CB7C50, &qword_100CB7C48, &qword_100A4BC58, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100787B0C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.effectiveForegroundStyle.getter();
  *a1 = result;
  return result;
}

void *sub_100787B38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CD6970, &qword_100A7F430);
  __chkstk_darwin(v3 - 8);
  v5 = __src - v4;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_10022C350(&qword_100CD6978, &qword_100A7F438);
  sub_100787C80(v1, &v5[*(v6 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10027FB54(v5, a1, &qword_100CD6970, &qword_100A7F430);
  v7 = sub_10022C350(&qword_100CD6980, &qword_100A7F440);
  return memcpy((a1 + *(v7 + 36)), __src, 0x70uLL);
}

uint64_t sub_100787C80@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v115 = a2;
  v114 = sub_10022C350(&qword_100CD6988, &qword_100A7F448);
  __chkstk_darwin(v114);
  v111 = &v106 - v3;
  v4 = sub_10022C350(&qword_100CD6990, &qword_100A7F450);
  __chkstk_darwin(v4 - 8);
  v117 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v106 - v7;
  v9 = type metadata accessor for LocationRowSubheadingView(0);
  __chkstk_darwin(v9);
  v116 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v106 - v12;
  v14 = type metadata accessor for ListLocationViewModel(0);
  v15 = v14[6];
  v118 = a1;
  v16 = (a1 + v15);
  v17 = v16[1];
  v135 = *v16;
  v136 = v17;
  v18 = sub_10002D5A4();

  v113 = v18;
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  v125 = v8;
  v24 = swift_beginAccess();
  sub_1007A3ACC(v24, v25, v26, v27, v28, v29, v30, v31, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, KeyPath, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, *(&v132 + 1), v133, *(&v133 + 1));
  swift_endAccess();
  v122 = Text.font(_:)();
  v121 = v32;
  v34 = v33;
  v123 = v35;

  sub_10010CD64(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  HIDWORD(v119) = v34 & 1;
  LOBYTE(v135) = v34 & 1;
  LOBYTE(v132) = 0;
  v36 = v118;
  sub_1007895DC(v118, v13, type metadata accessor for ListLocationViewModel);
  v37 = &v13[*(v9 + 20)];
  *v37 = swift_getKeyPath();
  v37[8] = 0;
  v38 = *(v9 + 24);
  *&v13[v38] = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  v124 = v13;
  swift_storeEnumTagMultiPayload();
  v39 = (v36 + v14[17]);
  v40 = v39[1];
  v41 = v14;
  if (v40)
  {
    v42 = *v39;
    v43 = (v36 + v14[16]);
    v44 = v43[1];
    v135 = *v43;
    v136 = v44;

    v45 = Text.init<A>(_:)();
    v110 = v14;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    swift_beginAccess();
    sub_1007A43C0();
    swift_endAccess();
    Font.init(_:)();
    v109 = Text.font(_:)();
    v108 = v51;
    HIDWORD(v107) = v52;
    v106 = v53;

    sub_10010CD64(v46, v48, v50 & 1);

    v135 = v42;
    v136 = v40;
    v54 = Text.init<A>(_:)();
    v56 = v55;
    v58 = v57;
    swift_beginAccess();
    sub_1007A44C4();
    swift_endAccess();
    Font.init(_:)();
    v59 = Text.font(_:)();
    v61 = v60;
    v63 = v62;

    sub_10010CD64(v54, v56, v58 & 1);

    swift_beginAccess();
    v64 = sub_1007A43C0();
    swift_endAccess();
    [v64 capHeight];

    swift_beginAccess();
    v65 = sub_1007A44C4();
    swift_endAccess();
    [v65 capHeight];

    v66 = Text.baselineOffset(_:)();
    v68 = v67;
    LOBYTE(v54) = v69;
    sub_10010CD64(v59, v61, v63 & 1);

    LOBYTE(v61) = BYTE4(v107);
    v70 = v109;
    v71 = v108;
    v112 = static Text.+ infix(_:_:)();
    v73 = v72;
    LODWORD(v113) = v74;
    v76 = v75;
    LOBYTE(v74) = v54 & 1;
    v36 = v118;
    sub_10010CD64(v66, v68, v74);
    v41 = v110;

    v77 = v61 & 1;
    v78 = v70;
    v79 = v71;
  }

  else
  {
    v80 = (v36 + v14[16]);
    v81 = v80[1];
    v135 = *v80;
    v136 = v81;

    v82 = Text.init<A>(_:)();
    v84 = v83;
    v86 = v85;
    swift_beginAccess();
    sub_1007A43C0();
    swift_endAccess();
    Font.init(_:)();
    v112 = Text.font(_:)();
    v73 = v87;
    LODWORD(v113) = v88;
    v76 = v89;

    v77 = v86 & 1;
    v78 = v82;
    v79 = v84;
  }

  sub_10010CD64(v78, v79, v77);

  v118 = swift_getKeyPath();
  v90 = v125;
  if (*(v36 + *(v41 + 84)))
  {
    sub_10001B350(v125, 1, 1, v114);
    v91 = v113;
    v92 = v112;
    sub_10010CD54(v112, v73, v113 & 1);
  }

  else
  {
    v91 = v113;
    v92 = v112;
    sub_10010CD54(v112, v73, v113 & 1);

    v93 = v111;
    sub_100788708(v36, v111);
    sub_10027FB54(v93, v90, &qword_100CD6988, &qword_100A7F448);
    sub_10001B350(v90, 0, 1, v114);
  }

  v94 = v76;
  v95 = v116;
  sub_1007895DC(v124, v116, type metadata accessor for LocationRowSubheadingView);
  v96 = v91 & 1;
  LOBYTE(v131) = v91 & 1;
  v97 = v117;
  sub_10018CF14(v90, v117, &qword_100CD6990, &qword_100A7F450);
  *&v132 = v122;
  *(&v132 + 1) = v121;
  LOBYTE(v133) = BYTE4(v119);
  *(&v133 + 1) = v148[0];
  DWORD1(v133) = *(v148 + 3);
  *(&v133 + 1) = v123;
  *v134 = 256;
  *&v134[2] = v146;
  *&v134[6] = v147;
  *&v134[8] = KeyPath;
  *&v134[16] = 2;
  v134[24] = 0;
  v98 = v132;
  v99 = v133;
  v100 = *v134;
  v101 = v115;
  *(v115 + 41) = *&v134[9];
  v101[1] = v99;
  v101[2] = v100;
  *v101 = v98;
  v102 = sub_10022C350(&qword_100CD6998, &unk_100A7F4F0);
  sub_1007895DC(v95, v101 + v102[12], type metadata accessor for LocationRowSubheadingView);
  v103 = v101 + v102[16];
  *v103 = v92;
  *(v103 + 1) = v73;
  v103[16] = v96;
  v104 = v118;
  *(v103 + 3) = v94;
  *(v103 + 4) = v104;
  *(v103 + 5) = 1;
  v103[48] = 0;
  sub_10018CF14(v97, v101 + v102[20], &qword_100CD6990, &qword_100A7F450);
  sub_10018CF14(&v132, &v135, &qword_100CB5830, &qword_100A49110);
  sub_10010CD54(v92, v73, v96);

  sub_10010CD64(v92, v73, v96);

  sub_100018144(v125, &qword_100CD6990, &qword_100A7F450);
  sub_100789634(v124);
  sub_100018144(v97, &qword_100CD6990, &qword_100A7F450);
  sub_10010CD64(v92, v73, v131);

  sub_100789634(v95);
  v135 = v122;
  v136 = v121;
  v137 = BYTE4(v119);
  *v138 = v148[0];
  *&v138[3] = *(v148 + 3);
  v139 = v123;
  v140 = 256;
  v141 = v146;
  v142 = v147;
  v143 = KeyPath;
  v144 = 2;
  v145 = 0;
  return sub_100018144(&v135, &qword_100CB5830, &qword_100A49110);
}

uint64_t sub_100788708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v128 = sub_10022C350(&qword_100CB7B38, &qword_100A7F500);
  __chkstk_darwin(v128);
  v112 = &v105 - v3;
  v116 = sub_10022C350(&qword_100CD69A0, &qword_100A7F508);
  __chkstk_darwin(v116);
  v120 = &v105 - v4;
  v117 = sub_10022C350(&unk_100CE1680, &unk_100A450F0);
  __chkstk_darwin(v117);
  v111 = &v105 - v5;
  v109 = type metadata accessor for TemperatureHighLowTextVertical();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10022C350(&qword_100CB7BE0, &qword_100A4BBA0);
  __chkstk_darwin(v113);
  v110 = &v105 - v7;
  v115 = sub_10022C350(&qword_100CD69A8, &qword_100A7F510);
  v106 = *(v115 - 8);
  __chkstk_darwin(v115);
  v105 = &v105 - v8;
  v9 = sub_10022C350(&qword_100CD69B0, &qword_100A7F518);
  __chkstk_darwin(v9 - 8);
  v119 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v118 = &v105 - v12;
  v122 = sub_10022C350(&qword_100CD69B8, &qword_100A7F520);
  __chkstk_darwin(v122);
  v14 = &v105 - v13;
  v124 = sub_10022C350(&qword_100CD69C0, &qword_100A7F528);
  __chkstk_darwin(v124);
  v126 = &v105 - v15;
  v123 = sub_10022C350(&qword_100CD69C8, &qword_100A7F530);
  __chkstk_darwin(v123);
  v114 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v125 = &v105 - v18;
  __chkstk_darwin(v19);
  v129 = &v105 - v20;
  v127 = a1;
  v21 = sub_100789464();
  v23 = v22;
  v25 = v24;
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  v26 = swift_beginAccess();
  sub_1007A3FE8(v26, v27, v28, v29, v30, v31, v32, v33, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
  swift_endAccess();
  v34 = Text.font(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_10010CD64(v21, v23, v25 & 1);

  v41 = &v14[*(sub_10022C350(&qword_100CB7FF0, &unk_100A4C040) + 36)];
  v42 = *(sub_10022C350(&qword_100CAF750, &qword_100A57BC0) + 28);
  v43 = enum case for Image.Scale.small(_:);
  v44 = type metadata accessor for Image.Scale();
  (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
  *v41 = swift_getKeyPath();
  *v14 = v34;
  *(v14 + 1) = v36;
  v14[16] = v38 & 1;
  *(v14 + 3) = v40;
  LODWORD(v36) = static HierarchicalShapeStyle.secondary.getter();
  *&v14[*(sub_10022C350(&qword_100CD69D0, &qword_100A7F568) + 36)] = v36;
  v45 = *(sub_10022C350(&qword_100CD69D8, &qword_100A7F570) + 36);
  v46 = enum case for BlendMode.plusLighter(_:);
  v47 = type metadata accessor for BlendMode();
  (*(*(v47 - 8) + 104))(&v14[v45], v46, v47);
  *&v14[*(v122 + 36)] = 256;
  v48 = v127;
  v49 = *(sub_1009AA9D0() + 2);

  if (v49)
  {
    v50 = 1;
  }

  else
  {
    v50 = 4;
  }

  KeyPath = swift_getKeyPath();
  v52 = v126;
  sub_10027FB54(v14, v126, &qword_100CD69B8, &qword_100A7F520);
  v53 = v52 + *(v124 + 36);
  *v53 = KeyPath;
  *(v53 + 8) = v50;
  *(v53 + 16) = 0;
  v54 = swift_getKeyPath();
  v55 = sub_1009AA9D0();
  v56 = v125;
  v57 = (v125 + *(v123 + 36));
  sub_10022C350(&qword_100CB7B88, &unk_100A4BB88);
  sub_100787968(v55, 0);

  *v57 = v54;
  sub_10027FB54(v52, v56, &qword_100CD69C0, &qword_100A7F528);
  sub_10027FB54(v56, v129, &qword_100CD69C8, &qword_100A7F530);
  v58 = type metadata accessor for ListLocationViewModel(0);
  if (*(v48 + v58[24]) != 1 || (v59 = sub_1009AA9D0(), v60 = sub_10069A6AC(2u, v59), , (v60 & 1) != 0))
  {
    v61 = (v48 + v58[18]);
    v62 = *v61;
    v63 = v61[1];
    v64 = (v48 + v58[19]);
    v65 = v64[1];
    v125 = *v64;
    v126 = v62;

    v66 = sub_1009AA9D0();
    v67 = sub_10069A6AC(2u, v66);

    v68 = (v48 + v58[20]);
    v70 = *v68;
    v69 = v68[1];
    v71 = swift_getKeyPath();

    v72 = sub_1009AA9D0();
    v73 = v112;
    v74 = (v112 + *(v128 + 36));
    sub_100787968(v72, 2u);

    *v74 = v71;
    v75 = v125;
    *v73 = v126;
    *(v73 + 8) = v63;
    *(v73 + 16) = v75;
    *(v73 + 24) = v65;
    *(v73 + 32) = v67 & 1;
    *(v73 + 40) = v70;
    *(v73 + 48) = v69;
    sub_10018CF14(v73, v120, &qword_100CB7B38, &qword_100A7F500);
    swift_storeEnumTagMultiPayload();
    v76 = sub_100420FEC();
    v77 = sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v131 = v113;
    v132 = v117;
    v133 = v76;
    v134 = v77;
    swift_getOpaqueTypeConformance2();
    sub_1004210D8();
    v78 = v118;
    v79 = v129;
    _ConditionalContent<>.init(storage:)();
    sub_100018144(v73, &qword_100CB7B38, &qword_100A7F500);
LABEL_11:
    v101 = v114;
    sub_10018CF14(v79, v114, &qword_100CD69C8, &qword_100A7F530);
    v102 = v119;
    sub_10018CF14(v78, v119, &qword_100CD69B0, &qword_100A7F518);
    v103 = v121;
    sub_10018CF14(v101, v121, &qword_100CD69C8, &qword_100A7F530);
    v104 = sub_10022C350(&qword_100CD69E0, &unk_100A7F5B0);
    sub_10018CF14(v102, v103 + *(v104 + 48), &qword_100CD69B0, &qword_100A7F518);
    sub_100018144(v78, &qword_100CD69B0, &qword_100A7F518);
    sub_100018144(v79, &qword_100CD69C8, &qword_100A7F530);
    sub_100018144(v102, &qword_100CD69B0, &qword_100A7F518);
    return sub_100018144(v101, &qword_100CD69C8, &qword_100A7F530);
  }

  v80 = v107;
  TemperatureHighLowTextVertical.init(highTemperature:lowTemperature:showNumericOnlyHighLow:scaleFactor:additionalSpacing:)();
  v81 = (v48 + v58[20]);
  v82 = v81[1];
  v131 = *v81;
  v132 = v82;
  sub_10002D5A4();

  v83 = Text.init<A>(_:)();
  v85 = v84;
  v87 = v86;
  sub_1007897B0(&qword_100CA3FE8, &type metadata accessor for TemperatureHighLowTextVertical, &protocol conformance descriptor for TemperatureHighLowTextVertical);
  v88 = v110;
  v89 = v109;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v83, v85, v87 & 1);

  (*(v108 + 8))(v80, v89);
  v90 = enum case for DynamicTypeSize.accessibility3(_:);
  v91 = type metadata accessor for DynamicTypeSize();
  v92 = v111;
  (*(*(v91 - 8) + 104))(v111, v90, v91);
  sub_1007897B0(&qword_100CA5390, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v94 = sub_100420FEC();
    v95 = sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v96 = v105;
    v97 = v113;
    v98 = v117;
    View.dynamicTypeSize<A>(_:)();
    sub_100018144(v92, &unk_100CE1680, &unk_100A450F0);
    sub_100018144(v88, &qword_100CB7BE0, &qword_100A4BBA0);
    v99 = v106;
    v100 = v115;
    (*(v106 + 16))(v120, v96, v115);
    swift_storeEnumTagMultiPayload();
    v131 = v97;
    v132 = v98;
    v133 = v94;
    v134 = v95;
    swift_getOpaqueTypeConformance2();
    sub_1004210D8();
    v78 = v118;
    _ConditionalContent<>.init(storage:)();
    (*(v99 + 8))(v96, v100);
    v79 = v129;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100789464()
{
  v1 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for ListLocationViewModel(0);
  if (*(v0 + *(v2 + 52) + 8))
  {

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
    Image.init(systemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*(v0 + *(v2 + 48)));
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
    v6 = LocalizedStringKey.init(stringInterpolation:)();
    return Text.init(_:tableName:bundle:comment:)(v6, v8, v7 & 1, v9, 0, 0, 0, 0, 0, 256);
  }

  else
  {
    sub_10002D5A4();

    return Text.init<A>(_:)();
  }
}

uint64_t sub_1007895DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100789634(uint64_t a1)
{
  v2 = type metadata accessor for LocationRowSubheadingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007896E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1007897B0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1007897F8()
{
  result = qword_100CD69E8;
  if (!qword_100CD69E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD6980, &qword_100A7F440);
    v4[0] = sub_100006F64(&qword_100CD69F0, &qword_100CD6970, &qword_100A7F430, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD69E8);
  }

  return result;
}

uint64_t sub_1007898B0(uint64_t a1)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037E8();
  (*(v9 + 16))(v6, a1);
  v10 = type metadata accessor for LocationViewerViewAction(0);
  sub_100004A14(v10);
  v11 = type metadata accessor for ViewAction(0);
  sub_100004A14(v11);
  swift_storeEnumTagMultiPayload();
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_10004F034(v6, v14, v8, v7);
  sub_1000180EC(v14, &unk_100CD81B0, &unk_100A3B000);
  sub_10001F6E8();
  return sub_10004FA98(v6, v12);
}

uint64_t sub_1007899C8(uint64_t a1, char a2)
{
  v6 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PreviewLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_100019530();
  sub_100035AD0(a1, v9, &qword_100CA65C8, &unk_100A31670);
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    return sub_1000180EC(v9, &qword_100CA65C8, &unk_100A31670);
  }

  sub_100431B6C(v9, v3);
  if (a2 != 2)
  {
    sub_1000161C0((v2 + 72), *(v2 + 96));
    sub_1005CF77C(v3, a2 & 1);
  }

  return sub_10004FA98(v3, type metadata accessor for PreviewLocation);
}

uint64_t sub_100789B28()
{
  v1 = *(v0 + 16);
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  type metadata accessor for MainAction(0);
  sub_100003DDC();
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A3BBA0;
  v7 = v6 + v5;
  type metadata accessor for ActivityAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v7 + v3) = 1;
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v7 + 2 * v3) = 1;
  type metadata accessor for ListViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_100035AD0(v12, v9, &unk_100CD81B0, &unk_100A3B000);
  v10 = v6;
  v11 = 0;
  sub_10004F1B0(v9, v1);
  sub_1000180EC(v9, &qword_100CA3510, &unk_100A2D540);
  return sub_1000180EC(v12, &unk_100CD81B0, &unk_100A3B000);
}

uint64_t sub_100789D1C(uint64_t a1)
{
  v4 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  v7 = v26 - v6;
  v8 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for Location();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  sub_100019530();
  sub_100035AD0(a1, v11, &qword_100CA65D8, &unk_100A3D9D0);
  if (sub_100024D10(v11, 1, v12) == 1)
  {
    return sub_1000180EC(v11, &qword_100CA65D8, &unk_100A3D9D0);
  }

  (*(v14 + 32))(v2, v11, v12);
  v17 = *(v1 + 16);
  v26[1] = *(v1 + 24);
  v27 = v17;
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  type metadata accessor for MainAction(0);
  sub_100003DDC();
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100A2D320;
  v21 = sub_10022C350(&qword_100CBBE20, &unk_100A5C410);
  v26[0] = v1;
  v22 = *(v21 + 48);
  sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
  (*(v14 + 16))(v20 + v19, v2, v12);
  type metadata accessor for CurrentLocation();
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for LocationOfInterest();
  sub_10001B350(v7, 1, 1, v23);
  LocationModelData.init(locationOfInterest:isPredictedLocation:)();
  v24 = enum case for LocationModel.current(_:);
  type metadata accessor for LocationModel();
  sub_1000037E8();
  (*(v25 + 104))(v20 + v19, v24);
  *(v20 + v19 + v22) = 0;
  type metadata accessor for ListViewAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SearchViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  sub_100035AD0(v31, v28, &unk_100CD81B0, &unk_100A3B000);
  v29 = v20;
  v30 = 0;
  sub_10004F1B0(v28, v27);
  sub_1000180EC(v28, &qword_100CA3510, &unk_100A2D540);
  sub_1000180EC(v31, &unk_100CD81B0, &unk_100A3B000);
  swift_getObjectType();
  dispatch thunk of WeatherMapZoomControllerType.goToCurrentLocation()();
  return (*(v14 + 8))(v2, v12);
}

uint64_t sub_10078A150(char a1)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_100019530();
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  if (a1)
  {
    *v2 = 0;
    type metadata accessor for ViewAction(0);
    sub_100031D74();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_100006154();
    sub_10004F034(v2, v7, v5, v6);
    sub_1000180EC(v12, &unk_100CD81B0, &unk_100A3B000);
    sub_10001F6E8();
    sub_10004FA98(v2, v8);
    if (qword_100CA29A0 != -1)
    {
      sub_100006700(&qword_100CA29A0);
    }

    v12[0] = 0;
  }

  else
  {
    *v2 = 1;
    type metadata accessor for ViewAction(0);
    sub_100031D74();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_100006154();
    sub_10004F034(v2, v9, v5, v6);
    sub_1000180EC(v12, &unk_100CD81B0, &unk_100A3B000);
    sub_10001F6E8();
    sub_10004FA98(v2, v10);
    if (qword_100CA29A0 != -1)
    {
      sub_100006700(&qword_100CA29A0);
    }

    v12[0] = 1;
  }

  sub_10078A9FC(&qword_100CD6AC0, byte_100A7F668);
  return Updatable.save<A>(setting:value:)();
}

uint64_t sub_10078A34C(char a1, uint64_t a2)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  if (a1)
  {
    type metadata accessor for ViewAction(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v11 = sub_10022C350(&qword_100CA6658, &unk_100A31480);
    v12 = v8 + *(v11 + 48);
    v13 = *(v11 + 64);
    type metadata accessor for WeatherMapOverlayKind();
    sub_1000037E8();
    (*(v14 + 16))(v8, a2);
    type metadata accessor for LocationComponentAction(0);
    swift_storeEnumTagMultiPayload();
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 1;
    v15 = type metadata accessor for Date();
    sub_10001B350(v8 + v13, 1, 1, v15);
    v16 = type metadata accessor for LocationViewAction(0);
    sub_100004A14(v16);
  }

  swift_storeEnumTagMultiPayload();
  sub_100006154();
  sub_10004F034(v8, v17, v10, v9);
  sub_1000180EC(v20, &unk_100CD81B0, &unk_100A3B000);
  sub_10001F6E8();
  return sub_10004FA98(v8, v18);
}

uint64_t sub_10078A4E8(uint64_t a1)
{
  type metadata accessor for ConfiguredUnit();
  sub_1000037C4();
  v37 = v3;
  v38 = v2;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v6 = v5 - v4;
  v40 = type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_100019530();
  v8 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v41 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v39 = v12 - v11;
  v13 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  v20 = objc_opt_self();
  v21 = [v20 celsius];
  sub_10000F868();
  v22 = static NSObject.== infix(_:_:)();

  if (v22)
  {
    v23 = &enum case for UnitConfiguration.Temperature.celsius(_:);
LABEL_5:
    v26 = v41;
    (*(v41 + 104))(v19, *v23, v8);
    v27 = 0;
    goto LABEL_7;
  }

  v24 = [v20 fahrenheit];
  v25 = static NSObject.== infix(_:_:)();

  if (v25)
  {
    v23 = &enum case for UnitConfiguration.Temperature.fahrenheit(_:);
    goto LABEL_5;
  }

  v27 = 1;
  v26 = v41;
LABEL_7:
  sub_10001B350(v19, v27, 1, v8);
  sub_100035AD0(v19, v16, &qword_100CB6198, &unk_100A49BC0);
  if (sub_100024D10(v16, 1, v8) == 1)
  {
    sub_1000180EC(v19, &qword_100CB6198, &unk_100A49BC0);
    v28 = v16;
  }

  else
  {
    v29 = v39;
    (*(v26 + 32))(v39, v16, v8);
    v30 = *(v36 + 16);
    v31 = *(v36 + 24);
    (*(v26 + 16))(v6, v29, v8);
    sub_10001B350(v6, 0, 1, v8);
    v33 = v37;
    v32 = v38;
    (*(v37 + 104))(v6, enum case for ConfiguredUnit.temperature(_:), v38);
    (*(v33 + 32))(v1, v6, v32);
    type metadata accessor for ConfiguredUnitsAction(0);
    sub_100031D74();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EnvironmentAction(0);
    sub_100031D74();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    sub_10004F034(v1, v42, v30, v31);
    sub_1000180EC(v42, &unk_100CD81B0, &unk_100A3B000);
    sub_10001F6E8();
    sub_10004FA98(v1, v34);
    (*(v26 + 8))(v29, v8);
    v28 = v19;
  }

  return sub_1000180EC(v28, &qword_100CB6198, &unk_100A49BC0);
}

void *sub_10078A930()
{

  sub_100006F14(v0 + 4);
  sub_100006F14(v0 + 9);
  swift_unknownObjectRelease();
  sub_100006F14(v0 + 16);
  return v0;
}

uint64_t sub_10078A970()
{
  sub_10078A930();

  return swift_deallocClassInstance();
}

uint64_t sub_10078A9FC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for WeatherMenuInteractor();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10078AA3C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for Location();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA2CD8, &unk_100A2C420);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for DebugAction(0);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CD6C48, &qword_100A7F798);
  sub_1000037C4();
  v41 = v19;
  v42 = v18;
  __chkstk_darwin(v18);
  v21 = &v41 - v20;
  sub_10078B0A0(v2, v17);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v5 + 32))(v8, v17, v3);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
      sub_10001CCA8();
      v33[4] = v34;
      v33[5] = 0xE800000000000000;
      v33[9] = v3;
      v35 = sub_100042FB0(v33 + 6);
      (*(v5 + 16))(v35, v8, v3);
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      (*(v5 + 8))(v8, v3);
      break;
    case 2u:
      v27 = *v17;
      v28 = *(v17 + 1);
      v29 = *(v17 + 2);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2D320;
      *(inited + 32) = 0x74756F79616CLL;
      *(inited + 40) = 0xE600000000000000;
      sub_10022C350(&unk_100CD6C10, &qword_100A7F738);
      *(inited + 48) = v27;
      sub_10001CCA8();
      *(inited + 72) = v31;
      *(inited + 80) = v32;
      *(inited + 120) = &type metadata for String;
      *(inited + 88) = 0xEA00000000004449;
      *(inited + 96) = v28;
      *(inited + 104) = v29;
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_6;
    case 3u:
      Dictionary.init(dictionaryLiteral:)();
LABEL_6:
      ShortDescription.init(name:_:)();
      break;
    default:
      v22 = &v17[*(sub_10022C350(&qword_100CB0A38, &qword_100A40EB8) + 48)];
      v23 = *v22;
      v24 = *(v22 + 1);
      sub_1003C7D1C(v17, v14);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_100A2D320;
      *(v25 + 32) = 0x6F697469646E6F63;
      *(v25 + 40) = 0xE90000000000006ELL;
      sub_100108724(v14, v11);
      v26 = type metadata accessor for WeatherCondition();
      if (sub_100024D10(v11, 1, v26) == 1)
      {
        sub_10078B168(v11);
        *(v25 + 72) = &type metadata for String;
        *(v25 + 48) = 0;
        *(v25 + 56) = 0xE000000000000000;
      }

      else
      {
        v45 = v26;
        v36 = sub_100042FB0(&v44);
        (*(*(v26 - 8) + 32))(v36, v11, v26);
        sub_100166170(&v44, (v25 + 48));
      }

      *(v25 + 80) = 0x6E6F697461636F6CLL;
      *(v25 + 88) = 0xE800000000000000;
      *(v25 + 120) = &type metadata for String;
      *(v25 + 96) = v23;
      *(v25 + 104) = v24;
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      sub_10078B168(v14);
      break;
  }

  v38 = v42;
  v37 = v43;
  v43[3] = v42;
  v37[4] = sub_10078B104();
  v39 = sub_100042FB0(v37);
  return (*(v41 + 32))(v39, v21, v38);
}

uint64_t sub_10078B014(uint64_t a1)
{
  sub_10078B1D0(qword_100CD6C58, byte_100A7F768);

  return ShortDescribable.description.getter();
}

uint64_t sub_10078B0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10078B104()
{
  result = qword_100CD6C50;
  if (!qword_100CD6C50)
  {
    v3 = sub_10022E824(&qword_100CD6C48, &qword_100A7F798);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CD6C50);
  }

  return result;
}

uint64_t sub_10078B168(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA2CD8, &unk_100A2C420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10078B1D0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for DebugAction(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10078B214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10078B2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, void (*)(void, void))@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
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
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_severeAlert, v39);
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
  sub_100566BE4(v357, v385);
  v355 = v129;
  v338 = v148;
  if ((v385[32] & 1) == 0)
  {
    v149 = v321;
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_nextHourPrecipitation, v321);
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
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_airQuality, v321);
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
  v182 = OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_map;
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

uint64_t sub_10078CC38()
{
  v2 = sub_100011748();
  type metadata accessor for MainAction(v2);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v9 + 16))(v6, v1);
  type metadata accessor for LocationViewAction(0);
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_10004F034(v6, v12, v8, v7);
  sub_1000180EC(v12, &unk_100CD81B0, &unk_100A3B000);
  sub_10001F718();
  return sub_10078E6E4(v6, v10);
}

uint64_t sub_10078CD48()
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  type metadata accessor for NotificationsOptInAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v4, v9, v6, v5);
  sub_1000180EC(v9, &unk_100CD81B0, &unk_100A3B000);
  sub_10001F718();
  return sub_10078E6E4(v4, v7);
}

uint64_t sub_10078CE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v9 = sub_100074F7C();
  type metadata accessor for LocationComponentAction(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for URL();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = sub_100004A48();
  sub_10078E73C(v21, v13, v22);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10078E6E4(v13, type metadata accessor for LocationComponentAction);
  }

  else
  {
    v23 = *(v13 + *(sub_10022C350(&qword_100CA6680, &qword_100A3DB20) + 48));
    (*(v16 + 32))(v20, v13, v14);
    if ((v23 & 1) == 0)
    {
      v40 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v24);
      v39 = v25;
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_10078E79C(&qword_100CA3040, 255, type metadata accessor for OpenExternalURLOptionsKey, aM_29);
      Dictionary.init(dictionaryLiteral:)();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v40 openURL:v39 options:isa completionHandler:0];
    }

    (*(v16 + 8))(v20, v14);
  }

  sub_10074C2C8();
  v27 = *(v6 + 24);
  v28 = sub_10022C350(&qword_100CA6658, &unk_100A31480);
  v29 = v4 + *(v28 + 48);
  v30 = *(v28 + 64);
  v31 = sub_100004A48();
  sub_10078E73C(v31, v4, v32);
  v33 = *(a3 + 16);
  *v29 = *a3;
  *(v29 + 16) = v33;
  *(v29 + 32) = *(a3 + 32);
  sub_100035AD0(a4, v4 + v30, &unk_100CB2CF0, &unk_100A2D7F0);
  type metadata accessor for LocationViewAction(0);
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v34 = sub_100023184();
  sub_10004F034(v34, v35, v36, v27);
  sub_1000180EC(v42, &unk_100CD81B0, &unk_100A3B000);
  sub_10001F718();
  return sub_10078E6E4(v4, v37);
}

uint64_t sub_10078D194(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = v7 - v6 + *(sub_10022C350(&qword_100CA6648, &unk_100A31470) + 48);
  sub_10078E73C(a1, v8, type metadata accessor for LocationFooterAction);
  v12 = *(a2 + 16);
  *v11 = *a2;
  *(v11 + 16) = v12;
  *(v11 + 32) = *(a2 + 32);
  type metadata accessor for LocationViewAction(0);
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_10004F034(v8, v15, v10, v9);
  sub_1000180EC(v15, &unk_100CD81B0, &unk_100A3B000);
  sub_10001F718();
  return sub_10078E6E4(v8, v13);
}

uint64_t sub_10078D2CC()
{
  v2 = v1;
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_100074F7C();
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  if (qword_100CA2158 != -1)
  {
    swift_once();
  }

  static WeatherClock.date.getter();
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  (*(v6 + 8))(v10, v4);
  v20[0] = v12;
  sub_10078E79C(&qword_100CD6DA8, v13, type metadata accessor for LocationInteractor, asc_100A7F904);
  Updatable.save<A>(setting:value:)();
  if (qword_100CA2160 != -1)
  {
    swift_once();
  }

  LOBYTE(v20[0]) = 1;
  Updatable.save<A>(setting:value:)();
  v14 = *(v2 + 24);
  type metadata accessor for LocationViewAction(0);
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v15 = sub_100023184();
  sub_10004F034(v15, v16, v17, v14);
  sub_1000180EC(v20, &unk_100CD81B0, &unk_100A3B000);
  sub_10001F718();
  return sub_10078E6E4(v0, v18);
}

uint64_t sub_10078D534(char a1)
{
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  v1 = sub_100011748();
  type metadata accessor for MainAction(v1);
  sub_100008E64();
  v2 = sub_100014E1C();
  sub_100016E9C(v2, xmmword_100A2D320);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NotificationsOptInAction(0);
  swift_storeEnumTagMultiPayload();
  v3 = swift_storeEnumTagMultiPayload();
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v5 = sub_100013C0C(v3, v4);
  sub_100049C34(v5, v6, v7, v8, v9, v10, v11, v12, v14, *v15, v16, v17, v18, v19, v20, v21);
  sub_1000180EC(v15, &qword_100CA3510, &unk_100A2D540);
  return sub_1000180EC(v22, &unk_100CD81B0, &unk_100A3B000);
}

uint64_t sub_10078D6F4()
{
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  v0 = sub_100011748();
  type metadata accessor for MainAction(v0);
  sub_100008E64();
  v1 = sub_100014E1C();
  sub_100016E9C(v1, xmmword_100A2D320);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NotificationsOptInAction(0);
  swift_storeEnumTagMultiPayload();
  v2 = swift_storeEnumTagMultiPayload();
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v4 = sub_100013C0C(v2, v3);
  sub_100049C34(v4, v5, v6, v7, v8, v9, v10, v11, v13, *v14, v15, v16, v17, v18, v19, v20);
  sub_1000180EC(v14, &qword_100CA3510, &unk_100A2D540);
  return sub_1000180EC(v21, &unk_100CD81B0, &unk_100A3B000);
}

uint64_t sub_10078D828()
{
  sub_100011748();
  v2 = type metadata accessor for Date();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Daemon.enablePushLocationViewLoadData.getter();
  SettingReader.read<A>(_:)();

  if (v10 == 1)
  {
    static WeatherClock.date.getter();
    sub_1000161C0((v0 + 32), *(v0 + 56));
    sub_100533CDC();

    sub_1007C5B30(v1, v8);

    return (*(v4 + 8))(v8, v2);
  }

  else
  {
    sub_1000161C0((v0 + 32), *(v0 + 56));
    return sub_100533B74();
  }
}

void sub_10078D97C(uint64_t a1)
{
  State = type metadata accessor for VisibleLocationWeatherLoadState(0);
  __chkstk_darwin(State - 8);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Date();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Daemon.enablePushLocationViewLoadData.getter();
  SettingReader.read<A>(_:)();

  if (HIBYTE(v22) == 1)
  {
    static WeatherClock.date.getter();

    sub_1007C6C04(v13, v6);

    sub_1000161C0((v1 + 32), *(v1 + 56));
    sub_100535DE0();
    sub_10078E6E4(v6, type metadata accessor for VisibleLocationWeatherLoadState);
    (*(v9 + 8))(v13, v7);
  }

  else
  {
    sub_1000161C0((v1 + 32), *(v1 + 56));
    sub_100534E74(a1, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, vars0, vars8);
  }
}

uint64_t sub_10078DB3C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  sub_100011748();
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Daemon.enablePushLocationViewLoadData.getter();
  SettingReader.read<A>(_:)();

  if (v5 == 1)
  {

    sub_1007C6158(v2, v3);
  }

  return result;
}

uint64_t sub_10078DBD8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v72 = a5;
  v73 = a6;
  v78 = a3;
  v79 = a4;
  v80 = a2;
  v88 = a1;
  type metadata accessor for Date();
  sub_1000037C4();
  v76 = v9;
  v77 = v8;
  __chkstk_darwin(v8);
  v87 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v10;
  __chkstk_darwin(v11);
  v86 = &v68 - v12;
  v85 = type metadata accessor for ComponentPositionData();
  sub_1000037C4();
  v75 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  v84 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v83 = &v68 - v18;
  v89 = type metadata accessor for LocationData();
  sub_1000037C4();
  v82 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  v81 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v90 = &v68 - v24;
  v25 = type metadata accessor for LocationComponentViewModel(0);
  __chkstk_darwin(v25 - 8);
  sub_1000037D8();
  v28 = v27 - v26;
  v29 = sub_10022C350(&qword_100CD5370, &unk_100A7DB40);
  __chkstk_darwin(v29 - 8);
  sub_100074F7C();
  type metadata accessor for ComponentData();
  sub_1000037C4();
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  v37 = &v68 - v36;
  v38 = *(v7 + 56);
  v39 = (v7 + 32);
  v41 = v40;
  v42 = sub_1000161C0(v39, v38);
  v43 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_10078E73C(&v88[*(v43 + 20)], v28, type metadata accessor for LocationComponentViewModel);
  sub_1005376E8();
  if (sub_100024D10(v6, 1, v41) == 1)
  {
    return sub_1000180EC(v6, &qword_100CD5370, &unk_100A7DB40);
  }

  v88 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v31;
  v46 = v78;
  v71 = v45;
  v47 = *(v45 + 32);
  v70 = v45 + 32;
  v69 = v47;
  v47(v37, v6, v41);
  sub_1000161C0(v42 + 1, v42[4]);
  if (dispatch thunk of LocationPrivacySamplerType.canRecordLocation(_:)())
  {
    Location.Identifier.coordinate.getter();
    Location.Identifier.coordinate.getter();
  }

  LocationData.init(latitudeDouble:longitudeDouble:)();
  result = v79;
  if (v79 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v46 < 0xFFFFFFFF80000000 || v79 < 0xFFFFFFFF80000000)
  {
    goto LABEL_13;
  }

  if (v46 <= 0x7FFFFFFF)
  {
    v49 = v37;
    v50 = v83;
    ComponentPositionData.init(row:column:)();
    v80 = *v42;
    v51 = v82;
    (*(v82 + 16))(v81, v90, v89);
    v68 = v15;
    v52 = v71;
    (*(v71 + 16))(v88, v37, v41);
    v53 = v75;
    (*(v75 + 16))(v84, v50, v85);
    v55 = v76;
    v54 = v77;
    v79 = v49;
    v56 = *(v76 + 16);
    v56(v86, v72, v77);
    v78 = v41;
    v56(v87, v73, v54);
    v57 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v58 = (v21 + *(v52 + 80) + v57) & ~*(v52 + 80);
    v59 = (v33 + *(v53 + 80) + v58) & ~*(v53 + 80);
    v60 = *(v55 + 80);
    v61 = (v68 + v60 + v59) & ~v60;
    v62 = (v74 + v60 + v61) & ~v60;
    v63 = swift_allocObject();
    (*(v51 + 32))(v63 + v57, v81, v89);
    v64 = v63 + v58;
    v65 = v78;
    v69(v64, v88, v78);
    v66 = v85;
    (*(v53 + 32))(v63 + v59, v84, v85);
    v67 = *(v55 + 32);
    v67(v63 + v61, v86, v54);
    v67(v63 + v62, v87, v54);
    Tracker.transaction(block:)();

    (*(v53 + 8))(v83, v66);
    (*(v82 + 8))(v90, v89);
    return (*(v71 + 8))(v79, v65);
  }

LABEL_14:
  __break(1u);
  return result;
}