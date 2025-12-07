uint64_t storeEnumTagSinglePayload for PrecipitationOutlook.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrecipitationOutlook.State.PrecipitatingCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PrecipitationOutlook.State.PrecipitatingCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrecipitationOutlook.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrecipitationOutlook.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25B77CF74()
{
  result = qword_27FBA1E80;
  if (!qword_27FBA1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1E80);
  }

  return result;
}

unint64_t sub_25B77CFCC()
{
  result = qword_27FBA1E88;
  if (!qword_27FBA1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1E88);
  }

  return result;
}

unint64_t sub_25B77D024()
{
  result = qword_27FBA1E90;
  if (!qword_27FBA1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1E90);
  }

  return result;
}

unint64_t sub_25B77D07C()
{
  result = qword_27FBA1E98;
  if (!qword_27FBA1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1E98);
  }

  return result;
}

unint64_t sub_25B77D0D4()
{
  result = qword_27FBA1EA0;
  if (!qword_27FBA1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EA0);
  }

  return result;
}

unint64_t sub_25B77D12C()
{
  result = qword_27FBA1EA8;
  if (!qword_27FBA1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EA8);
  }

  return result;
}

unint64_t sub_25B77D184()
{
  result = qword_27FBA1EB0;
  if (!qword_27FBA1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EB0);
  }

  return result;
}

unint64_t sub_25B77D1DC()
{
  result = qword_27FBA1EB8;
  if (!qword_27FBA1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EB8);
  }

  return result;
}

unint64_t sub_25B77D234()
{
  result = qword_27FBA1EC0;
  if (!qword_27FBA1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EC0);
  }

  return result;
}

unint64_t sub_25B77D28C()
{
  result = qword_27FBA1EC8;
  if (!qword_27FBA1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EC8);
  }

  return result;
}

unint64_t sub_25B77D2E4()
{
  result = qword_27FBA1ED0;
  if (!qword_27FBA1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1ED0);
  }

  return result;
}

unint64_t sub_25B77D33C()
{
  result = qword_27FBA1ED8;
  if (!qword_27FBA1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1ED8);
  }

  return result;
}

unint64_t sub_25B77D394()
{
  result = qword_27FBA1EE0;
  if (!qword_27FBA1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EE0);
  }

  return result;
}

unint64_t sub_25B77D3EC()
{
  result = qword_27FBA1EE8;
  if (!qword_27FBA1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EE8);
  }

  return result;
}

unint64_t sub_25B77D444()
{
  result = qword_27FBA1EF0;
  if (!qword_27FBA1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EF0);
  }

  return result;
}

unint64_t sub_25B77D49C()
{
  result = qword_27FBA1EF8;
  if (!qword_27FBA1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EF8);
  }

  return result;
}

unint64_t sub_25B77D4F4()
{
  result = qword_27FBA1F00;
  if (!qword_27FBA1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1F00);
  }

  return result;
}

unint64_t sub_25B77D54C()
{
  result = qword_27FBA1F08;
  if (!qword_27FBA1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1F08);
  }

  return result;
}

unint64_t sub_25B77D5A4()
{
  result = qword_27FBA1F10;
  if (!qword_27FBA1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1F10);
  }

  return result;
}

uint64_t sub_25B77D5F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_25B790BE8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_25B790BE8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x67696C7961447369 && a2 == 0xEA00000000007468 || (sub_25B790BE8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469 || (sub_25B790BE8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_25B790BE8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_25B790BE8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_25B77D7FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_25B790BE8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261656C63 && a2 == 0xE500000000000000 || (sub_25B790BE8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469706963657270 && a2 == 0xED0000676E697461 || (sub_25B790BE8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696765426C6C6977 && a2 == 0xE90000000000006ELL || (sub_25B790BE8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61656C436C6C6977 && a2 == 0xE900000000000072)
  {

    return 4;
  }

  else
  {
    v6 = sub_25B790BE8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25B77DAA0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_25B77DB4C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t sub_25B77DC40()
{
  v1 = sub_25B78FDD8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v42 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v41 = &v32 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = sub_25B78FDF8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v38 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  v18 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_locale;
  swift_beginAccess();
  v19 = *(v13 + 16);
  v40 = v0;
  v36 = v19;
  v37 = v18;
  v19(v17, v0 + v18, v12);
  sub_25B78FDE8();
  v20 = *(v13 + 8);
  v39 = v12;
  v34 = v20;
  v20(v17, v12);
  v21 = *MEMORY[0x277CC9770];
  v33 = *(v2 + 104);
  v33(v9, v21, v1);
  v22 = sub_25B77ED44();
  sub_25B790708();
  v35 = v22;
  sub_25B790708();
  if (v45 == v43 && v46 == v44)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_25B790BE8();
  }

  v24 = v9;
  v25 = *(v2 + 8);
  v25(v24, v1);
  v25(v11, v1);

  if (v23)
  {
    v26 = 1;
  }

  else
  {
    v27 = v39;
    v28 = v38;
    v36(v38, v40 + v37, v39);
    v29 = v41;
    sub_25B78FDE8();
    v34(v28, v27);
    v30 = v42;
    v33(v42, *MEMORY[0x277CC9768], v1);
    sub_25B790708();
    sub_25B790708();
    if (v45 == v43 && v46 == v44)
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_25B790BE8();
    }

    v25(v30, v1);
    v25(v29, v1);
  }

  return v26 & 1;
}

uint64_t NHPWidgetDateFormatter.__allocating_init(timeZone:locale:)(char *a1, char *a2)
{
  v4 = swift_allocObject();
  NHPWidgetDateFormatter.init(timeZone:locale:)(a1, a2);
  return v4;
}

uint64_t NHPWidgetDateFormatter.init(timeZone:locale:)(char *a1, char *a2)
{
  v3 = v2;
  v35 = a2;
  v36 = a1;
  v6 = sub_25B78FF28();
  v32 = v6;
  v34 = *(v6 - 8);
  v7 = v34;
  MEMORY[0x28223BE20](v6);
  v37 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_25B78FDF8();
  v9 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateFormatter;
  *(v3 + v12) = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v13 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateComponentsFormatter;
  *(v3 + v13) = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v31 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_timeZone;
  v33 = *(v7 + 16);
  v33(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_timeZone, a1, v6);
  v14 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_locale;
  v15 = v9;
  v16 = *(v9 + 16);
  v17 = v38;
  v16(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_locale, a2, v38);
  v30 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateFormatter;
  v18 = *(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateFormatter);
  swift_beginAccess();
  v16(v11, (v3 + v14), v17);
  v19 = v18;
  v20 = sub_25B78FDB8();
  v21 = *(v15 + 8);
  v21(v11, v17);
  [v19 setLocale_];

  v22 = v31;
  v23 = *(v3 + v30);
  swift_beginAccess();
  v24 = v37;
  v25 = v32;
  v33(v37, (v3 + v22), v32);
  v26 = sub_25B78FEE8();
  v27 = *(v34 + 8);
  v27(v24, v25);
  [v23 setTimeZone_];

  v21(v35, v38);
  v27(v36, v25);
  return v3;
}

Swift::String __swiftcall NHPWidgetDateFormatter.relativeTimeString(for:style:)(Swift::Double a1, NSDateComponentsFormatterUnitsStyle style)
{
  v5 = 86400.0;
  v6 = 16;
  if (a1 < 86400.0)
  {
    v6 = 32;
    v5 = 3600.0;
  }

  if (a1 >= 3600.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 64;
  }

  v8 = *(v2 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateComponentsFormatter);
  if (a1 >= 3600.0)
  {
    v9 = v5;
  }

  else
  {
    v9 = 60.0;
  }

  [v8 setAllowedUnits_];
  [v8 setUnitsStyle_];
  v10 = [v8 stringFromTimeInterval_];
  if (v10)
  {
    v11 = v10;
    v12 = sub_25B790638();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = v12;
  v16 = v14;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t NHPWidgetDateFormatter.absoluteTimeString(date:interval:useAproximateSymbol:)(double a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_25B78FDF8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 3600.0)
  {
    sub_25B77DC40();
    v12 = *(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateFormatter);
    v13 = sub_25B790618();
    [v12 setDateFormat_];

    v14 = sub_25B78FD08();
    v15 = [v12 stringFromDate_];
LABEL_3:
    v16 = v15;

    v17 = sub_25B790638();
    return v17;
  }

  if (a1 >= 86400.0)
  {
    sub_25B77DC40();
    v23 = *(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateFormatter);
    if (a1 >= 604800.0)
    {
      v33 = sub_25B790618();
      [v23 setLocalizedDateFormatFromTemplate_];

      v14 = sub_25B78FD08();
      v15 = [v23 stringFromDate_];
      goto LABEL_3;
    }

    v24 = sub_25B790618();
    [v23 setDateFormat_];

    v25 = sub_25B78FD08();
    v26 = [v23 stringFromDate_];

    v27 = sub_25B790638();
    v29 = v28;

    v48 = v27;
    v49 = v29;
    sub_25B765148();
    v30 = sub_25B7909F8();
  }

  else
  {
    v19 = v9;
    v20 = sub_25B77DC40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F48, &unk_25B793070);
    v21 = swift_allocObject();
    v47 = xmmword_25B791A40;
    *(v21 + 16) = xmmword_25B791A40;
    *(v21 + 56) = MEMORY[0x277D839B0];
    *(v21 + 32) = v20 & 1;
    sub_25B790C08();

    if ((v20 & 1) == 0)
    {
      v31 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_locale;
      swift_beginAccess();
      (*(v8 + 16))(v11, v4 + v31, v19);
      v32 = sub_25B78FDB8();
      (*(v8 + 8))(v11, v19);
      [v32 positionOfDayPeriodInFormattedTime];
    }

    v22 = *(v4 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateFormatter);
    v34 = sub_25B790618();
    [v22 setDateFormat_];

    if (a3)
    {
      if (qword_27FBA19B8 != -1)
      {
        swift_once();
      }

      v35 = qword_27FBA1C18;
      v36 = sub_25B790618();
      v37 = sub_25B790618();
      v38 = sub_25B790618();
      v39 = [v35 localizedStringForKey:v36 value:v37 table:v38];

      sub_25B790638();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
    v40 = swift_allocObject();
    *(v40 + 16) = v47;
    v41 = sub_25B78FD08();
    v42 = [v22 stringFromDate_];

    v43 = sub_25B790638();
    v45 = v44;

    *(v40 + 56) = MEMORY[0x277D837D0];
    *(v40 + 64) = sub_25B777A70();
    *(v40 + 32) = v43;
    *(v40 + 40) = v45;
    v30 = sub_25B790648();
  }

  v46 = v30;

  return v46;
}

uint64_t NHPWidgetDateFormatter.deinit()
{
  v1 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_timeZone;
  v2 = sub_25B78FF28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_locale;
  v4 = sub_25B78FDF8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t NHPWidgetDateFormatter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_timeZone;
  v2 = sub_25B78FF28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_locale;
  v4 = sub_25B78FDF8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NHPWidgetDateFormatter(uint64_t a1)
{
  result = qword_27FBA1F50;
  if (!qword_27FBA1F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B77EC68(uint64_t a1)
{
  result = sub_25B78FF28();
  if (v2 <= 0x3F)
  {
    result = sub_25B78FDF8();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_25B77ED44()
{
  result = qword_27FBA1F60;
  if (!qword_27FBA1F60)
  {
    sub_25B78FDD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1F60);
  }

  return result;
}

char *static TemperatureColor.colorForTemperature(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = [objc_opt_self() celsius];
  sub_25B78FAB8();

  sub_25B78FA78();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v12 = (*(a3 + 8))(a2, a3);
  v13 = _s25NanoWeatherKitUICompanion13ColorSpectrumV13colorForValueySo7UIColorCSdF_0(v12, v11);

  return v13;
}

uint64_t static TemperatureColor.colorSpectrumBetween(low:high:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = objc_opt_self();
  v13 = [v12 celsius];
  sub_25B78FAB8();

  sub_25B78FA78();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v11, v5);
  v17 = [v12 celsius];
  sub_25B78FAB8();

  sub_25B78FA78();
  v19 = v18;
  v16(v9, v5);
  return static TemperatureColor.colorSpectrumBetween(low:high:)(a3, v21, v15, v19);
}

uint64_t static TemperatureColor.colorSpectrumBetween(low:high:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F68, &qword_25B7930C8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25B791A40;
  *(v8 + 32) = 0;
  v9 = *(a2 + 8);
  v10 = v9(a1, a2);
  v11 = _s25NanoWeatherKitUICompanion13ColorSpectrumV13colorForValueySo7UIColorCSdF_0(v10, a3);

  *(v8 + 40) = v11;
  if (a3 != a4)
  {
    v31 = a1;
    v12 = v9(a1, a2);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 40);
      do
      {
        v16 = *(v14 - 1);
        if (v16 >= a3 && v16 <= a4)
        {
          v18 = fmin((v16 - a3) / (a4 - a3), 1.0);
          if (v18 < 0.0)
          {
            v19 = 0.0;
          }

          else
          {
            v19 = v18;
          }

          v21 = *(v8 + 16);
          v20 = *(v8 + 24);
          v22 = *v14;
          if (v21 >= v20 >> 1)
          {
            v23 = v20 > 1;
            v24 = v22;
            v8 = sub_25B77F804(v23, v21 + 1, 1, v8);
            v22 = v24;
          }

          *(v8 + 16) = v21 + 1;
          v15 = v8 + 16 * v21;
          *(v15 + 32) = v19;
          *(v15 + 40) = v22;
        }

        v14 += 2;
        --v13;
      }

      while (v13);
    }

    a1 = v31;
  }

  v25 = v9(a1, a2);
  v26 = _s25NanoWeatherKitUICompanion13ColorSpectrumV13colorForValueySo7UIColorCSdF_0(v25, a4);

  v28 = *(v8 + 16);
  v27 = *(v8 + 24);
  if (v28 >= v27 >> 1)
  {
    v8 = sub_25B77F804((v27 > 1), v28 + 1, 1, v8);
  }

  *(v8 + 16) = v28 + 1;
  v29 = v8 + 16 * v28;
  *(v29 + 32) = 0x3FF0000000000000;
  *(v29 + 40) = v26;

  return sub_25B77FB50(v8);
}

double static TemperatureColor.percentageBetween(low:high:current:)(double a1, double a2, double a3)
{
  result = fmin((a3 - a1) / (a2 - a1), 1.0);
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

id sub_25B77F32C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CC0, &qword_25B7931B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25B791A50;
  v1 = objc_opt_self();
  v2 = [v1 systemCyanColor];
  *(v0 + 32) = 0;
  *(v0 + 40) = v2;
  v3 = [v1 systemGreenColor];
  *(v0 + 48) = 0x4024000000000000;
  *(v0 + 56) = v3;
  v4 = [v1 systemYellowColor];
  *(v0 + 64) = 0x4034000000000000;
  *(v0 + 72) = v4;
  result = [v1 systemRedColor];
  *(v0 + 80) = 0x403E000000000000;
  *(v0 + 88) = result;
  static ComplicationTemperatureColor.temperatureColorSpectrum = v0;
  return result;
}

uint64_t *ComplicationTemperatureColor.temperatureColorSpectrum.unsafeMutableAddressor()
{
  if (qword_27FBA19E0 != -1)
  {
    swift_once();
  }

  return &static ComplicationTemperatureColor.temperatureColorSpectrum;
}

uint64_t sub_25B77F4A0()
{
  result = sub_25B77F4C0();
  static AppTemperatureColor.temperatureColorSpectrum = result;
  return result;
}

uint64_t sub_25B77F4C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CC0, &qword_25B7931B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25B7930B0;
  sub_25B7737CC();
  sub_25B7904B8();
  v1 = sub_25B790978();
  *(v0 + 32) = 0xC0551C28F5C28F5CLL;
  *(v0 + 40) = v1;
  sub_25B7904B8();
  v2 = sub_25B790978();
  *(v0 + 48) = 0xC0498D70A3D70A3DLL;
  *(v0 + 56) = v2;
  sub_25B7904B8();
  v3 = sub_25B790978();
  *(v0 + 64) = 0xC031C51EB851EB84;
  *(v0 + 72) = v3;
  sub_25B7904B8();
  v4 = sub_25B790978();
  *(v0 + 80) = 0xBFF1A3D70A3D7080;
  *(v0 + 88) = v4;
  sub_25B7904B8();
  v5 = sub_25B790978();
  *(v0 + 96) = 0x402404B17E4B17E8;
  *(v0 + 104) = v5;
  sub_25B7904B8();
  v6 = sub_25B790978();
  *(v0 + 112) = 0x40351EEEEEEEEEF0;
  *(v0 + 120) = v6;
  sub_25B7904B8();
  v7 = sub_25B790978();
  *(v0 + 128) = 0x403AAD3A06D3A070;
  *(v0 + 136) = v7;
  sub_25B7904B8();
  v8 = sub_25B790978();
  *(v0 + 144) = 0x4042E4E81B4E81B4;
  *(v0 + 152) = v8;
  sub_25B7904B8();
  v9 = sub_25B790978();
  *(v0 + 160) = 0x4048733333333334;
  *(v0 + 168) = v9;
  return v0;
}

uint64_t *AppTemperatureColor.temperatureColorSpectrum.unsafeMutableAddressor()
{
  if (qword_27FBA19E8 != -1)
  {
    swift_once();
  }

  return &static AppTemperatureColor.temperatureColorSpectrum;
}

uint64_t sub_25B77F71C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_25B77F7A0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

void *sub_25B77F804(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F68, &qword_25B7930C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F78, &qword_25B7931B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B77F938(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CC0, &qword_25B7931B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_25B77FA44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F70, &qword_25B7931A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_25B77FB50(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    sub_25B790AC8();
    v4 = (a1 + 32);
    v5 = (a1 + 40);
    v6 = v2;
    do
    {
      v7 = *v5;
      v5 += 2;
      v8 = v7;
      sub_25B790AA8();
      sub_25B790AD8();
      sub_25B790AE8();
      sub_25B790AB8();
      --v6;
    }

    while (v6);
    sub_25B76940C(0, v2, 0);
    v9 = *(v3 + 16);
    do
    {
      v10 = *v4;
      v11 = *(v3 + 24);
      if (v9 >= v11 >> 1)
      {
        sub_25B76940C((v11 > 1), v9 + 1, 1);
      }

      *(v3 + 16) = v9 + 1;
      *(v3 + 8 * v9 + 32) = v10;
      v4 += 2;
      ++v9;
      --v2;
    }

    while (v2);
  }

  return v3;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25B77FCB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B77FCFC(uint64_t result, int a2, int a3)
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

uint64_t sub_25B77FD6C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_25B78FD88();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_25B790388();
  v11 = *(v5 + 48);
  if (v11(v3, 1, v4) == 1)
  {
    sub_25B78FCD8();
    if (v11(v3, 1, v4) != 1)
    {
      sub_25B76966C(v3, &qword_27FBA1B38, &qword_25B791E70);
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
  }

  if (sub_25B78FD28())
  {
    sub_25B7903A8();
    v12 = sub_25B78FD28();
    v13 = *(v5 + 8);
    v13(v8, v4);
    v13(v10, v4);
  }

  else
  {
    (*(v5 + 8))(v10, v4);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_25B77FFA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B7903C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277CE3388])
  {
    v9 = MEMORY[0x277CE3290];
  }

  else if (v8 == *MEMORY[0x277CE3398])
  {
    v9 = MEMORY[0x277CE32A0];
  }

  else if (v8 == *MEMORY[0x277CE33B0])
  {
    v9 = MEMORY[0x277CE32C0];
  }

  else
  {
    if (v8 != *MEMORY[0x277CE33A0])
    {
      v14 = sub_25B790348();
      (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
      return (*(v5 + 8))(v7, v4);
    }

    v9 = MEMORY[0x277CE32A8];
  }

  v10 = *v9;
  v11 = sub_25B790348();
  v12 = *(v11 - 8);
  (*(v12 + 104))(a1, v10, v11);
  return (*(v12 + 56))(a1, 0, 1, v11);
}

uint64_t sub_25B7801F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v41 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v40 - v5;
  v7 = sub_25B78FD88();
  v44 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v43 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B60, &unk_25B7922B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C00, &qword_25B793230);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v40 - v15;
  v17 = sub_25B790448();
  v45 = *(v17 - 8);
  v46 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v40 - v21;
  sub_25B7900F8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v13, 1, v23) == 1)
  {
    sub_25B76966C(v13, &qword_27FBA1B60, &unk_25B7922B0);
    v25 = sub_25B78FFC8();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
LABEL_7:
    sub_25B76966C(v16, &qword_27FBA1C00, &qword_25B793230);
    v30 = 1;
    return v30 & 1;
  }

  sub_25B771764(a1);
  v40[0] = v7;
  v40[1] = a1;
  if (v26)
  {
    v27 = 1;
  }

  else
  {
    sub_25B790418();
    v27 = 0;
  }

  v28 = sub_25B78FFC8();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v16, v27, 1, v28);
  (*(v24 + 8))(v13, v23);
  if ((*(v29 + 48))(v16, 1, v28) == 1)
  {
    goto LABEL_7;
  }

  sub_25B78FF68();
  (*(v29 + 8))(v16, v28);
  (*(v45 + 32))(v22, v20, v46);
  sub_25B790438();
  v31 = v44;
  v32 = *(v44 + 48);
  v33 = v40[0];
  if (v32(v6, 1, v40[0]) == 1)
  {
    v34 = v42;
    sub_25B78FCC8();
    v35 = v32(v6, 1, v33);
    v36 = v43;
    if (v35 != 1)
    {
      sub_25B76966C(v6, &qword_27FBA1B38, &qword_25B791E70);
    }
  }

  else
  {
    v34 = v42;
    (*(v31 + 32))(v42, v6, v33);
    v36 = v43;
  }

  v37 = v41;
  sub_25B790428();
  if (v32(v37, 1, v33) == 1)
  {
    sub_25B78FCD8();
    if (v32(v37, 1, v33) != 1)
    {
      sub_25B76966C(v37, &qword_27FBA1B38, &qword_25B791E70);
    }
  }

  else
  {
    (*(v31 + 32))(v36, v37, v33);
  }

  if (sub_25B78FD18())
  {
    v30 = sub_25B78FD28();
  }

  else
  {
    v30 = 0;
  }

  v38 = *(v31 + 8);
  v38(v36, v33);
  v38(v34, v33);
  (*(v45 + 8))(v22, v46);
  return v30 & 1;
}

uint64_t sub_25B780844@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_25B790348();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F18, &qword_25B793060);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v29 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  WeatherCondition.simplePrecipitationCondtion()(&v24 - v14);
  v16 = *MEMORY[0x277CE3320];
  v27 = *(v2 + 104);
  v27(v13, v16, v1);
  v26 = *(v2 + 56);
  v26(v13, 0, 1, v1);
  v17 = *(v5 + 56);
  sub_25B7794F0(v15, v7);
  sub_25B7794F0(v13, &v7[v17]);
  v18 = *(v2 + 48);
  if (v18(v7, 1, v1) != 1)
  {
    sub_25B7794F0(v7, v29);
    if (v18(&v7[v17], 1, v1) != 1)
    {
      v20 = v25;
      (*(v2 + 32))(v25, &v7[v17], v1);
      sub_25B780C64();
      v21 = sub_25B790608();
      v22 = *(v2 + 8);
      v22(v20, v1);
      sub_25B76966C(v13, &qword_27FBA1AF8, &unk_25B791E40);
      v22(v29, v1);
      sub_25B76966C(v7, &qword_27FBA1AF8, &unk_25B791E40);
      if (v21)
      {
        goto LABEL_9;
      }

      return sub_25B76D804(v15, v28);
    }

    sub_25B76966C(v13, &qword_27FBA1AF8, &unk_25B791E40);
    (*(v2 + 8))(v29, v1);
LABEL_6:
    sub_25B76966C(v7, &qword_27FBA1F18, &qword_25B793060);
    return sub_25B76D804(v15, v28);
  }

  sub_25B76966C(v13, &qword_27FBA1AF8, &unk_25B791E40);
  if (v18(&v7[v17], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_25B76966C(v7, &qword_27FBA1AF8, &unk_25B791E40);
LABEL_9:
  sub_25B76966C(v15, &qword_27FBA1AF8, &unk_25B791E40);
  v23 = v28;
  v27(v28, *MEMORY[0x277CE32A8], v1);
  return (v26)(v23, 0, 1, v1);
}

unint64_t sub_25B780C64()
{
  result = qword_27FBA1F30;
  if (!qword_27FBA1F30)
  {
    sub_25B790348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1F30);
  }

  return result;
}

uint64_t sub_25B780CBC()
{
  type metadata accessor for PrecipitationChanceFormatter(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_overrideLocale;
  v2 = sub_25B78FDF8();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_maximumPercentage) = 0x3FF0000000000000;
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter;
  if (qword_27FBA1A00 != -1)
  {
    swift_once();
  }

  *(v0 + v3) = static PercentFormatter.shared;
  static PrecipitationChanceFormatter.shared = v0;
}

uint64_t *PrecipitationChanceFormatter.shared.unsafeMutableAddressor()
{
  if (qword_27FBA19F0 != -1)
  {
    swift_once();
  }

  return &static PrecipitationChanceFormatter.shared;
}

uint64_t static PrecipitationChanceFormatter.shared.getter()
{
  if (qword_27FBA19F0 != -1)
  {
    swift_once();
  }
}

void sub_25B780E54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_25B78FDF8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_overrideLocale;
  swift_beginAccess();
  sub_25B769604(v0 + v11, v3, &qword_27FBA1C20, &qword_25B792300);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_25B76966C(v3, &qword_27FBA1C20, &qword_25B792300);
    v12 = *(*(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
    sub_25B78FDC8();
    v13 = sub_25B78FDB8();
    (*(v5 + 8))(v8, v4);
    [v12 setLocale_];
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v14 = *(*(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
    v15 = sub_25B78FDB8();
    [v14 setLocale_];

    (*(v5 + 8))(v10, v4);
  }
}

uint64_t PrecipitationChanceFormatter.overrideLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_overrideLocale;
  swift_beginAccess();
  return sub_25B769604(v1 + v3, a1, &qword_27FBA1C20, &qword_25B792300);
}

uint64_t PrecipitationChanceFormatter.overrideLocale.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_overrideLocale;
  swift_beginAccess();
  sub_25B7811B4(a1, v1 + v3);
  swift_endAccess();
  sub_25B780E54();
  return sub_25B76966C(a1, &qword_27FBA1C20, &qword_25B792300);
}

uint64_t sub_25B7811B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*PrecipitationChanceFormatter.overrideLocale.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_25B781288;
}

void sub_25B781288(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_25B780E54();
  }
}

Swift::String __swiftcall PrecipitationChanceFormatter.demoPercent(chance:isSignificant:)(Swift::Double_optional chance, Swift::Bool_optional isSignificant)
{
  if (isSignificant.value)
  {
    if (qword_27FBA19B8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  v3 = *(*(v2 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
  v4 = sub_25B790618();
  [v3 setPercentSymbol_];

  v5 = sub_25B790738();
  v6 = [v3 stringForObjectValue_];

  if (!v6)
  {
    if (qword_27FBA19B8 == -1)
    {
LABEL_6:
      v7 = qword_27FBA1C18;
      v8 = sub_25B790618();
      v9 = sub_25B790618();
      v10 = sub_25B790618();
      v6 = [v7 localizedStringForKey:v8 value:v9 table:v10];

      goto LABEL_7;
    }

LABEL_8:
    swift_once();
    goto LABEL_6;
  }

LABEL_7:
  v11 = sub_25B790638();
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t PrecipitationChanceFormatter.percent(for:)(uint64_t a1)
{
  v25[0] = sub_25B790348();
  v2 = *(v25[0] - 8);
  MEMORY[0x28223BE20](v25[0]);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C68, "x%");
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - v9;
  sub_25B769604(a1, v25 - v9, &qword_27FBA1C68, "x%");
  v11 = sub_25B7900C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v10, 1, v11);
  if (v14 == 1)
  {
    sub_25B76966C(v10, &qword_27FBA1C68, "x%");
  }

  else
  {
    sub_25B790048();
    (*(v12 + 8))(v10, v11);
  }

  sub_25B769604(a1, v8, &qword_27FBA1C68, "x%");
  if (v13(v8, 1, v11) != 1)
  {
    sub_25B7900B8();
    (*(v12 + 8))(v8, v11);
    _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
    (*(v2 + 8))(v4, v25[0]);
    if (v14 != 1)
    {
      goto LABEL_10;
    }

LABEL_8:
    if (qword_27FBA19B8 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  sub_25B76966C(v8, &qword_27FBA1C68, "x%");
  if (v14 == 1)
  {
    goto LABEL_8;
  }

LABEL_10:
  v15 = *(*(v25[1] + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
  v16 = sub_25B790618();
  [v15 setPercentSymbol_];

  v17 = sub_25B790738();
  v18 = [v15 stringForObjectValue_];

  if (!v18)
  {
    if (qword_27FBA19B8 == -1)
    {
LABEL_12:
      v19 = qword_27FBA1C18;
      v20 = sub_25B790618();
      v21 = sub_25B790618();
      v22 = sub_25B790618();
      v18 = [v19 localizedStringForKey:v20 value:v21 table:v22];

      goto LABEL_13;
    }

LABEL_14:
    swift_once();
    goto LABEL_12;
  }

LABEL_13:
  v23 = sub_25B790638();

  return v23;
}

uint64_t PrecipitationChanceFormatter.string(for:percentStyle:noValueStyle:applyFloor:)(uint64_t a1, int a2, int a3, int a4)
{
  v24[1] = a4;
  v27 = a2;
  v28 = a3;
  v25 = sub_25B790348();
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C68, "x%");
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  sub_25B769604(a1, v24 - v12, &qword_27FBA1C68, "x%");
  v14 = sub_25B7900C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v13, 1, v14);
  if (v17 == 1)
  {
    sub_25B76966C(v13, &qword_27FBA1C68, "x%");
  }

  else
  {
    sub_25B790048();
    (*(v15 + 8))(v13, v14);
  }

  sub_25B769604(a1, v11, &qword_27FBA1C68, "x%");
  if (v16(v11, 1, v14) == 1)
  {
    sub_25B76966C(v11, &qword_27FBA1C68, "x%");
    if (v17 == 1)
    {
      return FormatterNoValueStyle.rawValue.getter(v28);
    }
  }

  else
  {
    sub_25B7900B8();
    (*(v15 + 8))(v11, v14);
    _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
    (*(v5 + 8))(v7, v25);
    if (v17 == 1)
    {
      return FormatterNoValueStyle.rawValue.getter(v28);
    }
  }

  v18 = *(*(v26 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
  v19 = sub_25B790618();

  [v18 setPercentSymbol_];

  v20 = sub_25B790738();
  v21 = [v18 stringForObjectValue_];

  if (v21)
  {
    v22 = sub_25B790638();

    return v22;
  }

  return FormatterNoValueStyle.rawValue.getter(v28);
}

{
  v24[1] = a4;
  v27 = a2;
  v28 = a3;
  v25 = sub_25B790348();
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C00, &qword_25B793230);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  sub_25B769604(a1, v24 - v12, &qword_27FBA1C00, &qword_25B793230);
  v14 = sub_25B78FFC8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v13, 1, v14);
  if (v17 == 1)
  {
    sub_25B76966C(v13, &qword_27FBA1C00, &qword_25B793230);
  }

  else
  {
    sub_25B78FF58();
    (*(v15 + 8))(v13, v14);
  }

  sub_25B769604(a1, v11, &qword_27FBA1C00, &qword_25B793230);
  if (v16(v11, 1, v14) == 1)
  {
    sub_25B76966C(v11, &qword_27FBA1C00, &qword_25B793230);
    if (v17 == 1)
    {
      return FormatterNoValueStyle.rawValue.getter(v28);
    }
  }

  else
  {
    sub_25B78FFB8();
    (*(v15 + 8))(v11, v14);
    _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
    (*(v5 + 8))(v7, v25);
    if (v17 == 1)
    {
      return FormatterNoValueStyle.rawValue.getter(v28);
    }
  }

  v18 = *(*(v26 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
  v19 = sub_25B790618();

  [v18 setPercentSymbol_];

  v20 = sub_25B790738();
  v21 = [v18 stringForObjectValue_];

  if (v21)
  {
    v22 = sub_25B790638();

    return v22;
  }

  return FormatterNoValueStyle.rawValue.getter(v28);
}

Swift::String __swiftcall PrecipitationChanceFormatter.string(for:percentStyle:noValueStyle:)(Swift::Double_optional a1, NanoWeatherKitUICompanion::PercentStyle percentStyle, NanoWeatherKitUICompanion::FormatterNoValueStyle noValueStyle)
{
  if (percentStyle)
  {
    v5 = FormatterNoValueStyle.rawValue.getter(v3);
  }

  else
  {
    v7 = *(*(v4 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
    v8 = sub_25B790618();

    [v7 setPercentSymbol_];

    v9 = sub_25B790738();
    v10 = [v7 stringForObjectValue_];

    if (v10)
    {
      v11 = sub_25B790638();
      v13 = v12;

      v5 = v11;
      v6 = v13;
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall PrecipitationChanceFormatter.string(for:isSignificant:percentStyle:noValueStyle:applyFloor:)(Swift::Double_optional a1, Swift::Bool_optional isSignificant, NanoWeatherKitUICompanion::PercentStyle percentStyle, NanoWeatherKitUICompanion::FormatterNoValueStyle noValueStyle, Swift::Bool applyFloor)
{
  if (isSignificant.value)
  {
    v6 = applyFloor;
  }

  else
  {
    v8 = *(*(v5 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
    v9 = sub_25B790618();

    [v8 setPercentSymbol_];

    v10 = sub_25B790738();
    v11 = [v8 stringForObjectValue_];

    if (v11)
    {
      v12 = sub_25B790638();
      v14 = v13;

      v15 = v12;
      v16 = v14;
      goto LABEL_9;
    }

    v6 = applyFloor;
  }

  v15 = FormatterNoValueStyle.rawValue.getter(v6);
LABEL_9:
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

Swift::Double __swiftcall PrecipitationChanceFormatter.roundedChance(_:isSignificant:applyFloor:)(Swift::Double_optional _, Swift::Bool isSignificant, Swift::Bool applyFloor)
{
  v4 = 0.0;
  if (!isSignificant)
  {
    v4 = 10.0;
    if (*&_.is_nil <= 1.0)
    {
      v4 = 0.0;
      if (v3)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = *&_.is_nil;
      }

      if (applyFloor)
      {
        v5 = *&_.is_nil;
      }

      v6 = v5 * 10.0;
      if (*&_.is_nil >= 0.0)
      {
        v4 = v6;
      }
    }
  }

  return round(v4) / 10.0;
}

uint64_t PrecipitationChanceFormatter.deinit()
{
  sub_25B76966C(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_overrideLocale, &qword_27FBA1C20, &qword_25B792300);

  return v0;
}

uint64_t PrecipitationChanceFormatter.__deallocating_deinit()
{
  sub_25B76966C(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_overrideLocale, &qword_27FBA1C20, &qword_25B792300);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrecipitationChanceFormatter(uint64_t a1)
{
  result = qword_27FBA1F90;
  if (!qword_27FBA1F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B782674(uint64_t a1)
{
  sub_25B76F644(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t UIExpirationDate.relevant(for:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25B78FD88();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(a2, a3);
  LOBYTE(a3) = sub_25B78FD28();
  (*(v9 + 8))(v11, v8);
  v12 = *(a2 - 8);
  if (a3)
  {
    (*(*(a2 - 8) + 16))(a4, v4, a2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v12 + 56))(a4, v13, 1, a2);
}

uint64_t UIExpirationDate.uiExpirationDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_25B78FD88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B790328();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  sub_25B790318();
  (*(v10 + 8))(v12, v9);
  (*(a2 + 24))(a1, a2);
  sub_25B78FCF8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25B782AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_25B78FD88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B790328();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v10);
  sub_25B790318();
  (*(v9 + 8))(v12, v8);
  sub_25B78FCF8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25B782C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B78FD88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B790328();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  sub_25B790318();
  (*(v9 + 8))(v11, v8);
  sub_25B78FCF8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t static ColorIndex.== infix(_:_:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a3 != a4)
  {
    return 0;
  }

  sub_25B7835A4();
  return sub_25B790988() & 1;
}

uint64_t sub_25B782EAC(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_25B7835A4();
  return sub_25B790988() & 1;
}

NanoWeatherKitUICompanion::ColorSpectrum __swiftcall ColorSpectrum.init(colors:)(NanoWeatherKitUICompanion::ColorSpectrum colors)
{
  rawValue = colors.allIndices._rawValue;
  if (!(colors.allIndices._rawValue >> 62))
  {
    v2 = *((colors.allIndices._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_20:

    return MEMORY[0x277D84F90];
  }

  v3 = sub_25B790AF8();
  colors.allIndices._rawValue = sub_25B790AF8();
  v2 = colors.allIndices._rawValue;
  if (!colors.allIndices._rawValue)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v4 = 1.0 / v3;
    if ((rawValue & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      v7 = v4;
      do
      {
        v8 = MEMORY[0x25F86D1F0](v5, rawValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_25B77F938(0, *(v6 + 2) + 1, 1, v6);
        }

        v10 = *(v6 + 2);
        v9 = *(v6 + 3);
        if (v10 >= v9 >> 1)
        {
          v6 = sub_25B77F938((v9 > 1), v10 + 1, 1, v6);
        }

        ++v5;
        *(v6 + 2) = v10 + 1;
        v11 = &v6[16 * v10];
        *(v11 + 4) = v7;
        *(v11 + 5) = v8;
        v7 = v4 + v7;
      }

      while (v2 != v5);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
      v12 = 32;
      v13 = v4;
      do
      {
        v14 = *(rawValue + v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_25B77F938(0, *(v6 + 2) + 1, 1, v6);
        }

        v16 = *(v6 + 2);
        v15 = *(v6 + 3);
        if (v16 >= v15 >> 1)
        {
          v6 = sub_25B77F938((v15 > 1), v16 + 1, 1, v6);
        }

        *(v6 + 2) = v16 + 1;
        v17 = &v6[16 * v16];
        *(v17 + 4) = v13;
        *(v17 + 5) = v14;
        v13 = v4 + v13;
        v12 += 8;
        --v2;
      }

      while (v2);
    }

    return v6;
  }

  __break(1u);
  return colors;
}

uint64_t sub_25B783110(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  for (i = (a2 + 40); ; i += 2)
  {
    if (*(i - 1) == a3)
    {
      v7 = *i;
      sub_25B7835A4();
      v8 = v7;
      v9 = sub_25B790988();

      if (v9)
      {
        break;
      }
    }

    if (v3 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t _s25NanoWeatherKitUICompanion13ColorSpectrumV18colorIndexForValue_9inIndicesAA0eH0VSgSd_SayAGGtF_0(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3 > a2)
    {
      v4 = (a1 + 40);
LABEL_9:
      v8 = v3;
      v9 = *v4;
      return *&v8;
    }

    v5 = a1 + 32 + 16 * v2;
    v3 = *(v5 - 16);
    if (v3 < a2)
    {
      v4 = (v5 - 8);
      goto LABEL_9;
    }
  }

  v6 = a1 + 24;
  v7 = v2 + 1;
  while (--v7)
  {
    v4 = (v6 + 16);
    v3 = *(v6 + 8);
    v6 += 16;
    if (v3 >= a2)
    {
      goto LABEL_9;
    }
  }

  v8 = 0.0;
  return *&v8;
}

void _s25NanoWeatherKitUICompanion13ColorSpectrumV18interpolateBetween6color16color28fractionSo7UIColorCAI_AI12CoreGraphics7CGFloatVtF_0(void *a1, void *a2, double a3)
{
  v5 = [a1 CGColor];
  v6 = sub_25B7908B8();

  if (!v6)
  {
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v7 == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v7 < 3)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v7 == 3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = *(v6 + 32);
  v9 = *(v6 + 40);
  v11 = *(v6 + 48);
  v10 = *(v6 + 56);

LABEL_8:
  v12 = [a2 CGColor];
  v13 = sub_25B7908B8();

  v26 = v10;
  if (!v13)
  {
    v17 = 0.0;
    v19 = 1.0;
    if (a3 <= 1.0)
    {
      v19 = a3;
    }

    if (a3 <= 0.0)
    {
      v19 = 0.0;
    }

    v18 = 0.0;
    v16 = 0.0;
    v15 = 0.0;
    goto LABEL_22;
  }

  v14 = *(v13 + 16);
  if (!v14)
  {
    goto LABEL_32;
  }

  if (v14 == 1)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v14 < 3)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v14 == 3)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v15 = *(v13 + 32);
  v16 = *(v13 + 40);
  v18 = *(v13 + 48);
  v17 = *(v13 + 56);

  v19 = 0.0;
  if (a3 > 0.0)
  {
    v19 = 1.0;
    if (a3 <= 1.0)
    {
      v19 = a3;
    }
  }

LABEL_22:
  v20 = v8 + v19 * (v15 - v8);
  v21 = 1.0;
  if (a3 <= 1.0)
  {
    v21 = a3;
  }

  if (a3 <= 0.0)
  {
    v21 = 0.0;
  }

  v22 = v9 + v21 * (v16 - v9);
  v23 = v11 + v21 * (v18 - v11);
  v24 = v26 + v21 * (v17 - v26);
  v25 = objc_allocWithZone(MEMORY[0x277D75348]);

  [v25 initWithRed:v20 green:v22 blue:v23 alpha:v24];
}

char *_s25NanoWeatherKitUICompanion13ColorSpectrumV13colorForValueySo7UIColorCSdF_0(uint64_t a1, double a2)
{
  v4 = COERCE_DOUBLE(_s25NanoWeatherKitUICompanion13ColorSpectrumV18colorIndexForValue_9inIndicesAA0eH0VSgSd_SayAGGtF_0(a1, a2));
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = *(a1 + 16);
    if (v8)
    {
      if (*(a1 + 32) == v4)
      {
        v9 = *(a1 + 40);
        sub_25B7835A4();
        v10 = v6;
        v11 = v9;
        v12 = sub_25B790988();

        if (v12)
        {
          return v10;
        }
      }
    }

    result = sub_25B783110(v6, a1, v7);
    if ((v14 & 1) == 0)
    {
      v15 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
        return result;
      }

      if (v15 < v8)
      {
        v16 = a1 + 16 * v15;
        v17 = *(v16 + 40);
        v18 = (a2 - *(v16 + 32)) / (v7 - *(v16 + 32));
        v19 = v6;
        v20 = v17;
        _s25NanoWeatherKitUICompanion13ColorSpectrumV18interpolateBetween6color16color28fractionSo7UIColorCAI_AI12CoreGraphics7CGFloatVtF_0(v20, v19, v18);
        v22 = v21;

        return v22;
      }
    }
  }

  v23 = [objc_opt_self() whiteColor];

  return v23;
}

unint64_t sub_25B7835A4()
{
  result = qword_27FBA1FA0;
  if (!qword_27FBA1FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBA1FA0);
  }

  return result;
}

uint64_t sub_25B7835F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25B783638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Date.endOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  MEMORY[0x28223BE20](v1 - 8);
  v52 = &v40 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v50 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v56 = sub_25B78FF28();
  v8 = *(v56 - 8);
  v9 = MEMORY[0x28223BE20](v56);
  v49 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v40 - v11;
  v12 = sub_25B78FE08();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25B78FEB8();
  v17 = *(v16 - 8);
  v54 = v16;
  v55 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v46 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - v20;
  v22 = sub_25B78FC88();
  v47 = *(v22 - 8);
  v48 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.Component.all.getter();
  v25 = *(v13 + 104);
  v44 = *MEMORY[0x277CC9810];
  v43 = v25;
  v25(v15);
  sub_25B78FE18();
  v26 = *(v13 + 8);
  v45 = v12;
  v42 = v26;
  v26(v15, v12);
  sub_25B78FED8();
  v27 = *(v8 + 48);
  v28 = v27(v7, 1, v56);
  v41 = v8;
  if (v28 == 1)
  {
    sub_25B78FF18();
    if (v27(v7, 1, v56) != 1)
    {
      sub_25B76966C(v7, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v8 + 32))(v53, v7, v56);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  v29 = *(v55 + 8);
  v55 += 8;
  v29(v21, v54);
  sub_25B78FBD8();
  sub_25B78FC38();
  sub_25B78FC48();
  sub_25B78FBA8();
  v30 = v45;
  v43(v15, v44, v45);
  v31 = v46;
  sub_25B78FE18();
  v42(v15, v30);
  v32 = v50;
  sub_25B78FED8();
  v33 = v56;
  if (v27(v32, 1, v56) == 1)
  {
    sub_25B78FF18();
    v34 = v27(v32, 1, v33);
    v35 = v52;
    if (v34 != 1)
    {
      sub_25B76966C(v32, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v41 + 32))(v49, v32, v33);
    v35 = v52;
  }

  sub_25B78FE98();
  sub_25B78FE68();
  v29(v31, v54);
  v36 = sub_25B78FD88();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  if (v38(v35, 1, v36) == 1)
  {
    sub_25B78FCD8();
    (*(v47 + 8))(v24, v48);
    result = v38(v35, 1, v36);
    if (result != 1)
    {
      return sub_25B76966C(v35, &qword_27FBA1B38, &qword_25B791E70);
    }
  }

  else
  {
    (*(v47 + 8))(v24, v48);
    return (*(v37 + 32))(v51, v35, v36);
  }

  return result;
}

uint64_t Date.dateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_25B78FF28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B78FE08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25B78FEB8();
  v12 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.Component.all.getter();
  (*(v9 + 104))(v11, *MEMORY[0x277CC9810], v8);
  sub_25B78FE18();
  (*(v9 + 8))(v11, v8);
  sub_25B78FED8();
  v15 = *(v5 + 48);
  if (v15(v3, 1, v4) == 1)
  {
    sub_25B78FF18();
    if (v15(v3, 1, v4) != 1)
    {
      sub_25B76966C(v3, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  return (*(v12 + 8))(v14, v18);
}

uint64_t static Date.calendar.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_25B78FF28();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B78FE08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277CC9810], v7);
  sub_25B78FE18();
  (*(v8 + 8))(v10, v7);
  sub_25B78FED8();
  v11 = *(v4 + 48);
  if (v11(v2, 1, v3) == 1)
  {
    sub_25B78FF18();
    if (v11(v2, 1, v3) != 1)
    {
      sub_25B76966C(v2, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
  }

  return sub_25B78FE98();
}

uint64_t Date.dateEnumerationToEndDate(_:maxCount:componentToIterate:componentsToRound:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v71 = a1;
  v65 = a5;
  v66 = a6;
  v74 = a4;
  v67 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v57 - v8;
  v10 = sub_25B78FD88();
  v68 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v69 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v57 - v15;
  v61 = sub_25B78FF28();
  v17 = *(v61 - 1);
  MEMORY[0x28223BE20](v61);
  v64 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25B78FE08();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25B78FC88();
  v58 = *(v23 - 8);
  v59 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25B78FEB8();
  v27 = *(v26 - 8);
  v62 = v26;
  v63 = v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v73 = &v57 - v31;
  sub_25B78FE88();
  v60 = static Calendar.Component.all.getter();
  (*(v20 + 104))(v22, *MEMORY[0x277CC9810], v19);
  sub_25B78FE18();
  v32 = v19;
  v33 = v16;
  (*(v20 + 8))(v22, v32);
  sub_25B78FED8();
  v34 = v17;
  v35 = *(v17 + 48);
  v36 = v61;
  if (v35(v33, 1) == 1)
  {
    sub_25B78FF18();
    if ((v35)(v33, 1, v36) != 1)
    {
      sub_25B76966C(v33, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v34 + 32))(v64, v33, v36);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  v37 = *(v63 + 8);
  v63 += 8;
  v61 = v37;
  (v37)(v30, v62);
  v38 = v70;
  sub_25B78FCC8();
  v39 = sub_25B78FD68();
  v40 = v69;
  if (v39 == 1 || v67 <= 0)
  {
    v56 = (v68 + 8);
    v68 = *(v68 + 8);
    v72 = v56;
  }

  else
  {
    v41 = 0;
    v42 = (v68 + 48);
    v72 = (v68 + 8);
    v43 = (v68 + 32);
    v64 = (v68 + 32);
    do
    {
      sub_25B78FE68();
      v44 = *v42;
      if ((*v42)(v9, 1, v10) == 1)
      {
        sub_25B78FCC8();
        v68 = *v72;
        (v68)(v38, v10);
        if (v44(v9, 1, v10) != 1)
        {
          sub_25B76966C(v9, &qword_27FBA1B38, &qword_25B791E70);
        }
      }

      else
      {
        v68 = *v72;
        (v68)(v38, v10);
        (*v43)(v40, v9, v10);
      }

      (*v43)(v38, v40, v10);
      v65(v38);
      v45 = sub_25B78FC28();
      if (v46)
      {
        break;
      }

      v47 = __OFADD__(v45, 1);
      result = v45 + 1;
      if (v47)
      {
        __break(1u);
        return result;
      }

      v49 = v42;
      v50 = v10;
      v51 = a3;
      sub_25B78FC68();
      v52 = *(v74 + 16);
      if (v52)
      {
        v53 = *(sub_25B78FEA8() - 8);
        v54 = v74 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v55 = *(v53 + 72);
        do
        {
          sub_25B78FC68();
          v54 += v55;
          --v52;
        }

        while (v52);
      }

      v38 = v70;
      if (sub_25B78FD68() == 1)
      {
        v10 = v50;
        break;
      }

      ++v41;
      a3 = v51;
      v10 = v50;
      v40 = v69;
      v42 = v49;
      v43 = v64;
    }

    while (v41 < v67);
  }

  (v68)(v38, v10);
  (*(v58 + 8))(v25, v59);
  return (v61)(v73, v62);
}

uint64_t Date.hourlyDateEnumerationToEndDate(_:maxCount:block:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v78 = a3;
  v79 = a4;
  v61[0] = a2;
  v84 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  MEMORY[0x28223BE20](v4 - 8);
  v87 = v61 - v5;
  v6 = sub_25B78FD88();
  v68 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v82 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = v61 - v11;
  v72 = sub_25B78FF28();
  v66 = *(v72 - 1);
  MEMORY[0x28223BE20](v72);
  v74 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_25B78FE08();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_25B78FC88();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v88 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25B78FEB8();
  v17 = *(v16 - 8);
  v69 = v16;
  v70 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v61 - v21;
  v23 = sub_25B78FEA8();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v75 = v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = *(v24 + 104);
  v81 = v61 - v28;
  v27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CD0, &qword_25B792560);
  v29 = *(v24 + 72);
  v67 = v24;
  v30 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_25B7925B0;
  v61[1] = v31;
  v32 = v31 + v30;
  (v27)(v32, *MEMORY[0x277CC99A8], v23);
  v33 = *MEMORY[0x277CC99A0];
  v76 = v32;
  v77 = v29;
  v80 = v23;
  (v27)(v32 + v29, v33, v23);
  v34 = v66;
  v85 = v22;
  v35 = v72;
  v36 = v73;
  sub_25B78FE88();
  static Calendar.Component.all.getter();
  v37 = v64;
  v38 = v65;
  (*(v64 + 104))(v14, *MEMORY[0x277CC9810], v65);
  sub_25B78FE18();
  (*(v37 + 8))(v14, v38);
  sub_25B78FED8();
  v39 = v34[6];
  if (v39(v36, 1, v35) == 1)
  {
    sub_25B78FF18();
    if (v39(v36, 1, v35) != 1)
    {
      sub_25B76966C(v36, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (v34[4])(v74, v36, v35);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  v40 = *(v70 + 8);
  v70 += 8;
  v66 = v40;
  (v40)(v20, v69);
  v41 = v83;
  sub_25B78FCC8();
  v42 = sub_25B78FD68();
  v43 = v81;
  v44 = v82;
  if (v42 != 1)
  {
    v45 = (v68 + 48);
    v74 = (v68 + 8);
    v86 = (v68 + 32);
    v72 = (v67 + 8);
    v73 = (v67 + 16);
    v46 = (v61[0] & ~(v61[0] >> 63)) + 1;
    v71 = v6;
    do
    {
      if (!--v46)
      {
        break;
      }

      v47 = v87;
      sub_25B78FE68();
      v48 = *v45;
      if ((*v45)(v47, 1, v6) == 1)
      {
        sub_25B78FCC8();
        (*v74)(v41, v6);
        if (v48(v87, 1, v6) != 1)
        {
          sub_25B76966C(v87, &qword_27FBA1B38, &qword_25B791E70);
        }
      }

      else
      {
        (*v74)(v41, v6);
        (*v86)(v44, v87, v6);
      }

      (*v86)(v41, v44, v6);
      v78(v41);
      v49 = sub_25B78FC28();
      if (v50)
      {
        break;
      }

      v51 = __OFADD__(v49, 1);
      result = v49 + 1;
      if (v51)
      {
        __break(1u);
        return result;
      }

      sub_25B78FC68();
      v53 = *v73;
      v54 = v75;
      v55 = v45;
      v56 = v76;
      v57 = v80;
      (*v73)(v75, v76, v80);
      sub_25B78FC68();
      v58 = *v72;
      (*v72)(v54, v57);
      v59 = v56 + v77;
      v45 = v55;
      v53(v54, v59, v57);
      v41 = v83;
      sub_25B78FC68();
      v60 = v57;
      v43 = v81;
      v58(v54, v60);
      v6 = v71;
      v44 = v82;
    }

    while (sub_25B78FD68() != 1);
  }

  (*(v68 + 8))(v41, v6);
  (*(v62 + 8))(v88, v63);
  (v66)(v85, v69);
  return (*(v67 + 8))(v43, v80);
}

uint64_t sub_25B7853DC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, char *a5)
{
  v72 = a5;
  v66 = a3;
  v67 = a4;
  v68 = a2;
  v69 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v54 - v6;
  v8 = sub_25B78FD88();
  v63 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v71 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  MEMORY[0x28223BE20](v13 - 8);
  v59 = &v54 - v14;
  v15 = sub_25B78FF28();
  v60 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v61 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25B78FE08();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25B78FC88();
  v56 = *(v21 - 8);
  v57 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25B78FEB8();
  v25 = *(v24 - 8);
  v64 = v24;
  v65 = v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v54 - v29;
  v31 = sub_25B78FEA8();
  MEMORY[0x28223BE20](v31);
  v54 = v34;
  v55 = v33;
  v35 = *(v34 + 104);
  v72 = &v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35();
  v70 = v30;
  sub_25B78FE88();
  v58 = static Calendar.Component.all.getter();
  (*(v18 + 104))(v20, *MEMORY[0x277CC9810], v17);
  sub_25B78FE18();
  v36 = v20;
  v37 = v59;
  (*(v18 + 8))(v36, v17);
  v38 = v15;
  sub_25B78FED8();
  v39 = v60;
  v40 = *(v60 + 48);
  if (v40(v37, 1, v38) == 1)
  {
    sub_25B78FF18();
    if (v40(v37, 1, v38) != 1)
    {
      sub_25B76966C(v37, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v39 + 32))(v61, v37, v38);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  v41 = *(v65 + 8);
  v65 += 8;
  v62 = v41;
  v41(v28, v64);
  sub_25B78FCC8();
  if (sub_25B78FD68() == 1 || v68 <= 0)
  {
    v47 = *(v63 + 8);
  }

  else
  {
    v42 = (v63 + 48);
    v43 = (v63 + 8);
    v44 = (v63 + 32);
    v45 = 1;
    while (1)
    {
      sub_25B78FE68();
      v46 = *v42;
      if ((*v42)(v7, 1, v8) == 1)
      {
        sub_25B78FCC8();
        v47 = *v43;
        (*v43)(v12, v8);
        if (v46(v7, 1, v8) != 1)
        {
          sub_25B76966C(v7, &qword_27FBA1B38, &qword_25B791E70);
        }

        v48 = v71;
      }

      else
      {
        v47 = *v43;
        (*v43)(v12, v8);
        v48 = v71;
        (*v44)(v71, v7, v8);
      }

      (*v44)(v12, v48, v8);
      v66(v12);
      v49 = sub_25B78FC28();
      if (v50)
      {
        break;
      }

      v51 = __OFADD__(v49, 1);
      result = v49 + 1;
      if (v51)
      {
        __break(1u);
        return result;
      }

      sub_25B78FC68();
      if (sub_25B78FD68() != 1 && v45++ < v68)
      {
        continue;
      }

      break;
    }
  }

  v47(v12, v8);
  (*(v56 + 8))(v23, v57);
  v62(v70, v64);
  return (*(v54 + 8))(v72, v55);
}

uint64_t Date.isEqualTo(_:components:)(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v71 = a1;
  v76 = sub_25B78FEA8();
  v78 = *(v76 - 8);
  v2 = MEMORY[0x28223BE20](v76);
  v77 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v75 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v70 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - v8;
  v66 = sub_25B78FF28();
  v10 = *(v66 - 8);
  v11 = MEMORY[0x28223BE20](v66);
  v69 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v72 = &v60 - v13;
  v14 = sub_25B78FE08();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_25B78FEB8();
  v68 = *(v74 - 8);
  v18 = MEMORY[0x28223BE20](v74);
  v73 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v60 - v20;
  v62 = sub_25B78FC88();
  v61 = *(v62 - 8);
  v22 = MEMORY[0x28223BE20](v62);
  v79 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v80 = &v60 - v24;
  static Calendar.Component.all.getter();
  v25 = *(v15 + 104);
  v65 = *MEMORY[0x277CC9810];
  v64 = v25;
  v25(v17);
  sub_25B78FE18();
  v26 = *(v15 + 8);
  v67 = v14;
  v63 = v26;
  v26(v17, v14);
  sub_25B78FED8();
  v27 = *(v10 + 48);
  v28 = v9;
  v29 = v9;
  v30 = v66;
  v31 = v27(v29, 1, v66);
  v60 = v10;
  if (v31 == 1)
  {
    sub_25B78FF18();
    if (v27(v28, 1, v30) != 1)
    {
      sub_25B76966C(v28, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v10 + 32))(v72, v28, v30);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  v32 = *(v68 + 8);
  v32(v21, v74);
  static Calendar.Component.all.getter();
  v33 = v67;
  v64(v17, v65, v67);
  sub_25B78FE18();
  v63(v17, v33);
  v34 = v70;
  sub_25B78FED8();
  if (v27(v34, 1, v30) == 1)
  {
    sub_25B78FF18();
    v35 = v27(v34, 1, v30);
    v36 = v77;
    if (v35 != 1)
    {
      sub_25B76966C(v34, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v60 + 32))(v69, v34, v30);
    v36 = v77;
  }

  v37 = v73;
  sub_25B78FE98();
  sub_25B78FE48();

  v32(v37, v74);
  v38 = v81 + 56;
  v39 = 1 << *(v81 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v81 + 56);
  v42 = (v39 + 63) >> 6;
  v74 = v78 + 16;
  v43 = (v78 + 8);

  v45 = 0;
  v46 = v76;
  while (v41)
  {
LABEL_17:
    v48 = v78;
    v49 = v75;
    (*(v78 + 16))(v75, *(v81 + 48) + *(v78 + 72) * (__clz(__rbit64(v41)) | (v45 << 6)), v46);
    (*(v48 + 32))(v36, v49, v46);
    v50 = sub_25B78FC28();
    if (v51)
    {
      (*v43)(v36, v46);
LABEL_23:

      v57 = 0;
LABEL_24:
      v58 = *(v61 + 8);
      v59 = v62;
      v58(v79, v62);
      v58(v80, v59);
      return v57;
    }

    v52 = v50;
    v53 = sub_25B78FC28();
    v54 = v36;
    v56 = v55;
    result = (*v43)(v54, v46);
    if ((v56 & 1) == 0)
    {
      v41 &= v41 - 1;
      v36 = v77;
      if (v52 == v53)
      {
        continue;
      }
    }

    goto LABEL_23;
  }

  while (1)
  {
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v47 >= v42)
    {

      v57 = 1;
      goto LABEL_24;
    }

    v41 = *(v38 + 8 * v47);
    ++v45;
    if (v41)
    {
      v45 = v47;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t Date.roundDownToHour()@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  v4 = sub_25B78FF28();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B78FE08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_25B78FEB8();
  v10 = *(v31 - 8);
  v11 = MEMORY[0x28223BE20](v31);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = sub_25B78FC88();
  v29 = *(v16 - 8);
  v30 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.Component.all.getter();
  (*(v7 + 104))(v9, *MEMORY[0x277CC9810], v6);
  sub_25B78FE18();
  v19 = v9;
  v20 = v4;
  (*(v7 + 8))(v19, v6);
  sub_25B78FED8();
  v21 = v27;
  v22 = *(v27 + 48);
  if (v22(v3, 1, v20) == 1)
  {
    sub_25B78FF18();
    if (v22(v3, 1, v20) != 1)
    {
      sub_25B76966C(v3, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v21 + 32))(v28, v3, v20);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  v23 = *(v10 + 8);
  v24 = v31;
  v23(v15, v31);
  sub_25B78FBA8();
  sub_25B78FC48();
  sub_25B78FC38();
  sub_25B78FE88();
  sub_25B78FE68();
  v23(v13, v24);
  return (*(v29 + 8))(v18, v30);
}

uint64_t Date.roundDownToDay()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_25B78FF28();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B78FE08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_25B78FEB8();
  v10 = *(v30 - 8);
  v11 = MEMORY[0x28223BE20](v30);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = sub_25B78FC88();
  v28 = *(v16 - 8);
  v29 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.Component.all.getter();
  (*(v7 + 104))(v9, *MEMORY[0x277CC9810], v6);
  sub_25B78FE18();
  (*(v7 + 8))(v9, v6);
  v19 = v4;
  sub_25B78FED8();
  v20 = v26;
  v21 = *(v26 + 48);
  if (v21(v3, 1, v19) == 1)
  {
    sub_25B78FF18();
    if (v21(v3, 1, v19) != 1)
    {
      sub_25B76966C(v3, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v20 + 32))(v27, v3, v19);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  v22 = *(v10 + 8);
  v23 = v30;
  v22(v15, v30);
  sub_25B78FBA8();
  sub_25B78FC48();
  sub_25B78FC38();
  sub_25B78FBD8();
  sub_25B78FE88();
  sub_25B78FE68();
  v22(v13, v23);
  return (*(v28 + 8))(v18, v29);
}

uint64_t Date.noonOfDay(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FB0, &qword_25B793378);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v40 - v8;
  v9 = sub_25B78FC88();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = sub_25B78FF28();
  v40 = *(v15 - 8);
  v16 = v40;
  v41 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_25B78FEB8();
  v53 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B78FE88();
  v21 = *(v16 + 16);
  v45 = v16 + 16;
  v47 = v21;
  v21(v18, a1, v15);
  sub_25B78FE98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CD0, &qword_25B792560);
  v22 = sub_25B78FEA8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25B793360;
  v27 = v26 + v25;
  v28 = *(v23 + 104);
  v28(v27, *MEMORY[0x277CC9988], v22);
  v28(v27 + v24, *MEMORY[0x277CC9998], v22);
  v28(v27 + 2 * v24, *MEMORY[0x277CC9968], v22);
  sub_25B7741DC(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_25B78FE48();

  v29 = v42;
  (*(v53 + 56))(v44, 1, 1, v42);
  v30 = v41;
  v31 = *(v40 + 56);
  v32 = v48;
  v31(v48, 1, 1, v41);
  sub_25B78FC58();
  sub_25B78FBE8();
  sub_25B78FBF8();
  sub_25B78FC08();
  sub_25B78FC18();
  sub_25B78FBB8();
  sub_25B78FBC8();
  sub_25B78FBD8();
  sub_25B78FC38();
  sub_25B78FC48();
  v47(v32, v46, v30);
  v31(v32, 0, 1, v30);
  sub_25B78FC78();
  v33 = v43;
  sub_25B78FE68();
  v34 = v50;
  v35 = *(v49 + 8);
  v35(v12, v50);
  v35(v14, v34);
  (*(v53 + 8))(v20, v29);
  v36 = sub_25B78FD88();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  if (v38(v33, 1, v36) != 1)
  {
    return (*(v37 + 32))(v51, v33, v36);
  }

  (*(v37 + 16))(v51, v52, v36);
  result = (v38)(v33, 1, v36);
  if (result != 1)
  {
    return sub_25B76966C(v33, &qword_27FBA1B38, &qword_25B791E70);
  }

  return result;
}

uint64_t Date.startOfNextDay()@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_25B78FD88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25B78FEA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = sub_25B78FEB8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B78FE88();
  (*(v5 + 104))(v7, *MEMORY[0x277CC9968], v4);
  sub_25B78FE78();
  (*(v5 + 8))(v7, v4);
  sub_25B787AD4(v13, v11);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    sub_25B76966C(v13, &qword_27FBA1B38, &qword_25B791E70);
    (*(v15 + 8))(v17, v14);
    sub_25B76966C(v11, &qword_27FBA1B38, &qword_25B791E70);
    v18 = 1;
    v19 = v25;
  }

  else
  {
    v20 = v24;
    (*(v2 + 32))(v24, v11, v1);
    v21 = v25;
    sub_25B78FE28();
    (*(v2 + 8))(v20, v1);
    sub_25B76966C(v13, &qword_27FBA1B38, &qword_25B791E70);
    (*(v15 + 8))(v17, v14);
    v18 = 0;
    v19 = v21;
  }

  return (*(v2 + 56))(v19, v18, 1, v1);
}

uint64_t Date.createTimeAt(hour:minute:second:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v41 = a6;
  v42 = a5;
  v43 = a7;
  v39 = a4;
  v40 = a3;
  v37 = a2;
  v38 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v35 = &v31 - v10;
  v36 = sub_25B78FC88();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_25B78FEB8();
  v13 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B78FE88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CD0, &qword_25B792560);
  v16 = sub_25B78FEA8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25B793360;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, *MEMORY[0x277CC9988], v16);
  v22(v21 + v18, *MEMORY[0x277CC9998], v16);
  v22(v21 + 2 * v18, *MEMORY[0x277CC9968], v16);
  v23 = v32;
  sub_25B7741DC(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_25B78FE48();

  sub_25B78FBD8();
  sub_25B78FC38();
  sub_25B78FC48();
  v24 = v35;
  sub_25B78FE68();
  (*(v34 + 8))(v12, v36);
  (*(v13 + 8))(v15, v33);
  sub_25B787B44(v24, v23);
  v25 = sub_25B78FD88();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v23, 1, v25) == 1)
  {
    sub_25B76966C(v23, &qword_27FBA1B38, &qword_25B791E70);
    v27 = 1;
    v28 = v43;
  }

  else
  {
    v29 = v43;
    (*(v26 + 32))(v43, v23, v25);
    v27 = 0;
    v28 = v29;
  }

  return (*(v26 + 56))(v28, v27, 1, v25);
}

uint64_t sub_25B787AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B787B44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DayWeather.isTimeDayTime(_:)(uint64_t a1)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = sub_25B790448();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = sub_25B78FD88();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v29 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v32 = v1;
  v33 = &v28 - v19;
  sub_25B78FF68();
  sub_25B790438();
  v20 = v16;
  v21 = *(v9 + 8);
  v31 = v8;
  v21(v14, v8);
  v22 = *(v16 + 48);
  if (v22(v7, 1, v15) != 1)
  {
    v28 = *(v20 + 32);
    v28(v33, v7, v15);
    v7 = v5;
    sub_25B78FF68();
    sub_25B790428();
    v21(v12, v31);
    if (v22(v5, 1, v15) != 1)
    {
      v24 = v29;
      v28(v29, v5, v15);
      if (sub_25B78FD28())
      {
        v25 = *(v20 + 8);
        v25(v24, v15);
        v25(v33, v15);
      }

      else
      {
        sub_25B771E60();
        v26 = sub_25B7905F8();
        v27 = *(v20 + 8);
        v27(v24, v15);
        v27(v33, v15);
        if (v26)
        {
          return 1;
        }
      }

      return 0;
    }

    (*(v20 + 8))(v33, v15);
  }

  sub_25B787F80(v7);
  return 1;
}

uint64_t sub_25B787F80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_25B788014(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = sub_25B790348();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1(v6);
  a2(v9);
  v10 = 0.0;
  if (_s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0())
  {
    sub_25B790758();
    v10 = v11;
  }

  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t Forecast<>.value(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X2>)
{
  sub_25B7883A0(a3, a1, a4);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    sub_25B790418();
    v7 = 0;
  }

  v8 = *(*(*(a1 + 16) - 8) + 56);

  return v8(a2, v7, 1);
}

uint64_t Forecast<>.values(startingAt:size:sizeMustMatch:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getWitnessTable();
  v10 = sub_25B790BF8();
  MEMORY[0x28223BE20](v10);
  sub_25B7883A0(a1, a4, a5);
  if (v12)
  {
    goto LABEL_12;
  }

  v13 = v11;
  result = sub_25B790878();
  if (result < 0)
  {
    goto LABEL_12;
  }

  if (a2 <= 0)
  {
    result = sub_25B790878();
    a2 = result - v13;
    if (__OFSUB__(result, v13))
    {
LABEL_18:
      __break(1u);
      return result;
    }
  }

  v15 = v13 + a2;
  if (__OFADD__(v13, a2))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (sub_25B790878() < v15)
  {
    v15 = sub_25B790878();
  }

  if (v13 < v15)
  {
    sub_25B790898();
    swift_getWitnessTable();
    result = sub_25B790728();
    if (a3)
    {
      v16 = result;
      if (sub_25B790718() == a2)
      {
        return v16;
      }

      else
      {

        return sub_25B7905C8();
      }
    }

    return result;
  }

LABEL_12:

  return sub_25B7905C8();
}

void sub_25B7883A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v24 = a3;
  v4 = *(a2 + 16);
  v5 = sub_25B7909B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  v9 = sub_25B78FD88();
  v22 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v20[1] = swift_getWitnessTable();
  v21 = v3;
  sub_25B790888();
  v15 = *(v4 - 8);
  if ((*(v15 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    return;
  }

  v16 = v24;
  (*(v24 + 32))(v4, v24);
  (*(v15 + 8))(v8, v4);
  v17 = v22;
  (*(v22 + 32))(v14, v12, v9);
  sub_25B771E60();
  if (sub_25B7905F8())
  {
LABEL_9:
    (*(v17 + 8))(v14, v9);
    return;
  }

  sub_25B78FCE8();
  v19 = v18 / (*(v16 + 40))(v4, v16);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v19 < 9.22337204e18)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      sub_25B790878();
      (*(v17 + 8))(v14, v9);
      return;
    }

    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

uint64_t Forecast<>.forecast(startingAt:size:sizeMustMatch:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v10 = sub_25B790328();
  MEMORY[0x28223BE20](v10 - 8);
  Forecast<>.values(startingAt:size:sizeMustMatch:)(a1, a2, a3, a4, a5);
  sub_25B7903E8();
  return sub_25B790408();
}

uint64_t sub_25B7887E4()
{
  type metadata accessor for UltraVioletFormatter();
  result = swift_initStaticObject();
  static UltraVioletFormatter.shared = result;
  return result;
}

uint64_t *UltraVioletFormatter.shared.unsafeMutableAddressor()
{
  if (qword_27FBA19F8 != -1)
  {
    swift_once();
  }

  return &static UltraVioletFormatter.shared;
}

uint64_t static UltraVioletFormatter.shared.getter()
{
  type metadata accessor for UltraVioletFormatter();

  return swift_initStaticObject();
}

Swift::String __swiftcall UltraVioletFormatter.stringForIndex(_:noValueStyle:)(Swift::Int_optional _, NanoWeatherKitUICompanion::FormatterNoValueStyle noValueStyle)
{
  if (_.is_nil)
  {

    v3 = FormatterNoValueStyle.rawValue.getter(noValueStyle);
  }

  else
  {
    sub_25B78890C();
    v3 = sub_25B790A28();
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t sub_25B78890C()
{
  result = qword_27FBA1FB8;
  if (!qword_27FBA1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1FB8);
  }

  return result;
}

uint64_t sub_25B788998(void *a1)
{
  a1[1] = sub_25B788A24(&qword_27FBA1FC0, MEMORY[0x277CE3170]);
  a1[2] = sub_25B788A24(&qword_27FBA1FC8, MEMORY[0x277CE3160]);
  result = sub_25B788A24(&qword_27FBA1FD0, MEMORY[0x277CE3168]);
  a1[3] = result;
  return result;
}

uint64_t sub_25B788A24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25B78FFC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Measurement<>.formattedWindSpeedComponents(locale:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a1;
  v52 = a2;
  v48 = sub_25B7905B8();
  v2 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_25B7908E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_25B7908D8();
  v71 = *(v47 - 8);
  v11 = MEMORY[0x28223BE20](v47);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  sub_25B790788();
  v67 = *MEMORY[0x277D7B490];
  v15 = *(v8 + 104);
  v68 = v8 + 104;
  v69 = v15;
  v53 = v7;
  v15(v10);
  v16 = sub_25B78FDF8();
  v17 = *(v16 - 8);
  v45 = *(v17 + 16);
  v54 = v16;
  v45(v6, v70, v16);
  v18 = *(v17 + 56);
  v55 = v17 + 56;
  v56 = v18;
  v18(v6, 0, 1, v16);
  sub_25B790578();

  sub_25B789160(v6);
  v19 = *(v8 + 8);
  v61 = v8 + 8;
  v62 = v19;
  v19(v10, v7);
  v64 = *MEMORY[0x277D7B408];
  v20 = *(v2 + 104);
  v65 = v2 + 104;
  v66 = v20;
  v21 = v46;
  v22 = v48;
  v20(v46);
  v63 = sub_25B790468();
  sub_25B790458();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FD8, &qword_25B7933F8);
  v59 = sub_25B7891C8();
  v23 = v47;
  v50 = sub_25B78FA88();
  v49 = v24;

  v25 = *(v2 + 8);
  v57 = v2 + 8;
  v58 = v25;
  v26 = v22;
  v25(v21, v22);
  v27 = *(v71 + 8);
  v71 += 8;
  v44 = v27;
  v27(v14, v23);
  sub_25B790778();
  v28 = v53;
  v69(v10, v67, v53);
  v29 = v54;
  v45(v6, v70, v54);
  v56(v6, 0, 1, v29);
  sub_25B790578();

  sub_25B789160(v6);
  v62(v10, v28);
  v30 = v21;
  v31 = v21;
  v32 = v26;
  v66(v31, v64, v26);
  sub_25B790458();
  v70 = sub_25B78FA88();
  v45 = v33;

  v58(v30, v26);
  v34 = v44;
  v44(v14, v23);
  sub_25B790778();
  v35 = v53;
  v69(v10, v67, v53);
  v56(v6, 1, 1, v54);
  sub_25B790578();

  sub_25B789160(v6);
  v62(v10, v35);
  v36 = v51;
  sub_25B7908C8();
  v34(v14, v23);
  v66(v30, v64, v32);
  sub_25B790458();
  v37 = sub_25B78FA88();
  v39 = v38;

  v58(v30, v32);
  result = (v34)(v36, v23);
  v41 = v52;
  v42 = v49;
  *v52 = v50;
  v41[1] = v42;
  v43 = v45;
  v41[2] = v70;
  v41[3] = v43;
  v41[4] = v37;
  v41[5] = v39;
  return result;
}

uint64_t sub_25B789160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B7891C8()
{
  result = qword_27FBA1FE0[0];
  if (!qword_27FBA1FE0[0])
  {
    sub_25B7908D8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBA1FE0);
  }

  return result;
}

uint64_t Measurement<>.formattedWindSpeed(locale:)(uint64_t a1)
{
  v21 = a1;
  v1 = sub_25B7905B8();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_25B7908E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25B7908D8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277D7B490], v7);
  v15 = sub_25B78FDF8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6, v21, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  sub_25B790768();
  sub_25B790578();

  sub_25B789160(v6);
  (*(v8 + 8))(v10, v7);
  v18 = v22;
  v17 = v23;
  (*(v22 + 104))(v3, *MEMORY[0x277D7B408], v23);
  sub_25B790468();
  sub_25B790458();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FD8, &qword_25B7933F8);
  sub_25B7891C8();
  v19 = sub_25B78FA88();

  (*(v18 + 8))(v3, v17);
  (*(v12 + 8))(v14, v11);
  return v19;
}

uint64_t Measurement<>.WindSpeedComponents.speed.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Measurement<>.WindSpeedComponents.unit.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Measurement<>.WindSpeedComponents.accessibleUnit.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_25B789658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25B7896B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25B7896FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static WeatherLaunchType.componentsFromURL(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AC8, &qword_25B791BB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_25B78FB98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B78FB18();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_25B7662B4(v3);
    return 0;
  }

  else
  {
    v9 = (*(v5 + 32))(v7, v3, v4);
    v10 = MEMORY[0x25F86C2F0](v9);
    if (!v11)
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    _s25NanoWeatherKitUICompanion0B10LaunchTypeO8rawValueACSgSS_tcfC_0(v10, v11);
    v12 = sub_25B78FB58();
    (*(v5 + 8))(v7, v4);
    return v12;
  }
}

uint64_t WeatherLaunchType.rawValue.getter(char a1)
{
  result = 6910305;
  switch(a1)
  {
    case 1:
      result = 6911605;
      break;
    case 2:
      result = 0x776F72726F6D6F74;
      break;
    case 3:
      result = 1684957559;
      break;
    case 4:
      result = 0x65636E616863;
      break;
    case 5:
      result = 0x74617265706D6574;
      break;
    case 6:
      result = 0x6F697469646E6F63;
      break;
    case 7:
      result = 0x6572757373657270;
      break;
    case 8:
      result = 0x79746964696D7568;
      break;
    case 9:
      result = 0x696C696269736976;
      break;
    case 10:
      result = 0x7961447473616CLL;
      break;
    case 11:
      result = 0x44746E6572727563;
      break;
    case 12:
      result = 0x657265766573;
      break;
    case 13:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25B789AF8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = WeatherLaunchType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == WeatherLaunchType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25B790BE8();
  }

  return v8 & 1;
}

uint64_t sub_25B789B80()
{
  v1 = *v0;
  sub_25B790C18();
  WeatherLaunchType.rawValue.getter(v1);
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B789BE4(uint64_t a1)
{
  WeatherLaunchType.rawValue.getter(*v1);
  sub_25B790678();
}

uint64_t sub_25B789C38(uint64_t a1)
{
  v2 = *v1;
  sub_25B790C18();
  WeatherLaunchType.rawValue.getter(v2);
  sub_25B790678();

  return sub_25B790C38();
}

unint64_t sub_25B789C98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s25NanoWeatherKitUICompanion0B10LaunchTypeO8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25B789CC8@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherLaunchType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t WeatherLaunchDestination.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F4E6C6961746564;
  }

  if (a1 == 1)
  {
    return 0x6F486C6961746564;
  }

  return 0x61446C6961746564;
}

uint64_t sub_25B789D74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F486C6961746564;
  v4 = 0xEC000000796C7275;
  if (v2 != 1)
  {
    v3 = 0x61446C6961746564;
    v4 = 0xEB00000000796C69;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6F4E6C6961746564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000077;
  }

  v7 = 0x6F486C6961746564;
  v8 = 0xEC000000796C7275;
  if (*a2 != 1)
  {
    v7 = 0x61446C6961746564;
    v8 = 0xEB00000000796C69;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6F4E6C6961746564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000077;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25B790BE8();
  }

  return v11 & 1;
}

uint64_t sub_25B789E98()
{
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B789F50(uint64_t a1)
{
  sub_25B790678();
}

uint64_t sub_25B789FF4(uint64_t a1)
{
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

unint64_t sub_25B78A0A8@<X0>(Swift::String *a1@<X0>, NanoWeatherKitUICompanion::WeatherLaunchDestination_optional *a2@<X8>)
{
  result = _s25NanoWeatherKitUICompanion0B17LaunchDestinationO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_25B78A0D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000077;
  v4 = 0xEC000000796C7275;
  v5 = 0x6F486C6961746564;
  if (v2 != 1)
  {
    v5 = 0x61446C6961746564;
    v4 = 0xEB00000000796C69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F4E6C6961746564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t _s25NanoWeatherKitUICompanion0B10LaunchTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_25B790B08();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t _s25NanoWeatherKitUICompanion0B17LaunchDestinationO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_25B790B08();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25B78A1E8()
{
  result = qword_27FBA2068;
  if (!qword_27FBA2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA2068);
  }

  return result;
}

unint64_t sub_25B78A240()
{
  result = qword_27FBA2070;
  if (!qword_27FBA2070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBA2078, &qword_25B793528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA2070);
  }

  return result;
}

unint64_t sub_25B78A2A8()
{
  result = qword_27FBA2080;
  if (!qword_27FBA2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA2080);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherLaunchType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WeatherLaunchType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t CLLocationCoordinate2D.isDaylight(for:)()
{
  if (qword_27FBA19A0 != -1)
  {
    swift_once();
  }

  GEOLocationCoordinate2DMake();
  sub_25B78FCB8();
  return geo_isDayLightForLocation();
}

UIColor __swiftcall UIColor.init(hex:)(Swift::String hex)
{
  sub_25B7904B8();

  return sub_25B790978();
}

uint64_t Color.blend(with:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_25B7904C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B7904A8();
  sub_25B7904A8();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
  return sub_25B790538();
}

uint64_t static Color.blend(color1:intensity1:color2:intensity2:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_25B7904C8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 / (a3 + a4) <= 0.0)
  {

    return a2;
  }

  else if (a4 / (a3 + a4) <= 0.0)
  {
  }

  else
  {
    v13 = v10;
    sub_25B7904A8();
    sub_25B7904A8();
    (*(v9 + 104))(v12, *MEMORY[0x277CE0EE0], v13);
    return sub_25B790538();
  }

  return a1;
}

uint64_t *PercentFormatter.shared.unsafeMutableAddressor()
{
  if (qword_27FBA1A00 != -1)
  {
    swift_once();
  }

  return &static PercentFormatter.shared;
}

uint64_t sub_25B78A870()
{
  type metadata accessor for PercentFormatter();
  swift_allocObject();
  result = sub_25B78A908();
  static PercentFormatter.shared = result;
  return result;
}

uint64_t static PercentFormatter.shared.getter()
{
  if (qword_27FBA1A00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25B78A908()
{
  v1 = v0;
  v2 = sub_25B78FDF8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_25B78FDC8();
  v7 = sub_25B78FDB8();
  (*(v3 + 8))(v5, v2);
  [v6 setLocale_];

  [v6 setNumberStyle_];
  *(v1 + 16) = v6;
  *(v1 + 24) = 0x3FF0000000000000;
  return v1;
}

Swift::String __swiftcall PercentFormatter.string(for:percentStyle:noValueStyle:)(Swift::Double_optional a1, NanoWeatherKitUICompanion::PercentStyle percentStyle, NanoWeatherKitUICompanion::FormatterNoValueStyle noValueStyle)
{
  if (percentStyle)
  {
    v5 = v3;
  }

  else
  {
    v6 = v3;
    v7 = *(v4 + 16);
    v8 = sub_25B790618();

    [v7 setPercentSymbol_];

    v9 = sub_25B790738();
    v10 = [v7 stringForObjectValue_];

    if (v10)
    {
      v11 = sub_25B790638();
      v13 = v12;

      v14 = v11;
      v15 = v13;
      goto LABEL_9;
    }

    v5 = v6;
  }

  v14 = FormatterNoValueStyle.rawValue.getter(v5);
LABEL_9:
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t PercentFormatter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25B78ABD0()
{
  v0 = sub_25B78FDF8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = sub_25B78FF28();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_25B78FEF8();
  sub_25B78FDC8();
  (*(v8 + 16))(v11, v13, v7);
  (*(v1 + 16))(v4, v6, v0);
  type metadata accessor for NHPWidgetDateFormatter(0);
  swift_allocObject();
  v14 = NHPWidgetDateFormatter.init(timeZone:locale:)(v11, v4);
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  static PrecipitationOutlook.viewFormatter = v14;
  return result;
}

uint64_t *PrecipitationOutlook.viewFormatter.unsafeMutableAddressor()
{
  if (qword_27FBA1A08 != -1)
  {
    swift_once();
  }

  return &static PrecipitationOutlook.viewFormatter;
}

uint64_t static PrecipitationOutlook.viewFormatter.getter()
{
  if (qword_27FBA1A08 != -1)
  {
    swift_once();
  }
}

uint64_t PrecipitationOutlook.appViewModel(for:)(char a1)
{
  if (qword_27FBA1A08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  if (a1)
  {
    return sub_25B78C940(v1, static PrecipitationOutlook.viewFormatter);
  }

  else
  {
    return sub_25B78BEC0(v1, static PrecipitationOutlook.viewFormatter);
  }
}

uint64_t PrecipitationOutlook.ViewFormatter.appViewModel(for:type:)(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return sub_25B78C940(a1, a3);
  }

  else
  {
    return sub_25B78BEC0(a1, a3);
  }
}

__n128 PrecipitationOutlook.widgetViewModel(for:)@<Q0>(char a1@<W0>, __n128 *a2@<X8>)
{
  if (qword_27FBA1A08 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  if (a1)
  {
    sub_25B78E658(v2, static PrecipitationOutlook.viewFormatter, v7);
  }

  else
  {
    sub_25B78D7D0(v2, static PrecipitationOutlook.viewFormatter, v7);
  }

  v4 = v8;
  result = v7[1];
  *a2 = v7[0];
  a2[1] = result;
  a2[2].n128_u64[0] = v4;
  return result;
}

__n128 PrecipitationOutlook.ViewFormatter.widgetViewModel(for:type:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  if (a2)
  {
    sub_25B78E658(a1, a3, v7);
  }

  else
  {
    sub_25B78D7D0(a1, a3, v7);
  }

  v5 = v8;
  result = v7[1];
  *a4 = v7[0];
  a4[1] = result;
  a4[2].n128_u64[0] = v5;
  return result;
}

double PrecipitationOutlook.compactViewModel()@<D0>(uint64_t a1@<X8>)
{
  if (qword_27FBA1A08 != -1)
  {
    swift_once();
  }

  PrecipitationOutlook.ViewFormatter.compactViewModel(for:)(v1, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

char *PrecipitationOutlook.ViewFormatter.compactViewModel(for:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v102 = a2;
  v3 = sub_25B790348();
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v98 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v96 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v101 = &v96 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v96 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v96 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v96 - v20;
  v22 = type metadata accessor for PrecipitationOutlook.State(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PrecipitationOutlook(0);
  sub_25B78F2AC(a1 + *(v25 + 32), v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780);
      sub_25B76D804(&v24[*(v72 + 48)], v19);
      v73 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(*(a1 + *(v25 + 20)), NSDateComponentsFormatterUnitsStyleBrief);
      if (qword_27FBA19B8 != -1)
      {
        swift_once();
      }

      v74 = qword_27FBA1C18;
      v75 = sub_25B790618();
      v76 = sub_25B790618();
      v77 = [v74 localizedStringForKey:v75 value:0 table:v76];

      sub_25B790638();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_25B791A40;
      *(v78 + 56) = MEMORY[0x277D837D0];
      *(v78 + 64) = sub_25B777A70();
      *(v78 + 32) = v73;
      v79 = sub_25B790648();
      v81 = v80;

      v27 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
      v83 = *(v27 + 2);
      v82 = *(v27 + 3);
      if (v83 >= v82 >> 1)
      {
        v27 = sub_25B77FA44((v82 > 1), v83 + 1, 1, v27);
      }

      v30 = v102;
      *(v27 + 2) = v83 + 1;
      v84 = &v27[16 * v83];
      *(v84 + 4) = v79;
      *(v84 + 5) = v81;
      sub_25B7794F0(v19, v16);
      v85 = v99;
      v86 = v100;
      v87 = *(v99 + 48);
      if (v87(v16, 1, v100) == 1)
      {
        (*(v85 + 104))(v7, *MEMORY[0x277CE32A0], v86);
        if (v87(v16, 1, v86) != 1)
        {
          sub_25B78F310(v16);
        }
      }

      else
      {
        (*(v85 + 32))(v7, v16, v86);
      }

      v92 = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v7, 1);
      if (v93)
      {
        v31 = v92;
      }

      else
      {
        v31 = 0;
      }

      if (v93)
      {
        v33 = v93;
      }

      else
      {
        v33 = 0xE000000000000000;
      }

      v94 = *(v85 + 8);
      v94(v7, v86);
      sub_25B78F310(v19);
      v94(v24, v86);
    }

    else
    {
      sub_25B76D804(v24, v21);
      sub_25B78CF68();
      v34 = sub_25B790658();
      v36 = v35;

      v103 = v34;
      v104 = v36;
      sub_25B765148();
      v37 = sub_25B7909D8();
      v39 = v38;

      v27 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
      v41 = *(v27 + 2);
      v40 = *(v27 + 3);
      if (v41 >= v40 >> 1)
      {
        v27 = sub_25B77FA44((v40 > 1), v41 + 1, 1, v27);
      }

      sub_25B78F310(v21);
      v31 = 0;
      *(v27 + 2) = v41 + 1;
      v42 = &v27[16 * v41];
      *(v42 + 4) = v37;
      *(v42 + 5) = v39;
      v33 = 0xE000000000000000;
      v30 = v102;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_25B76D804(v24, v101);
    v43 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(*(a1 + *(v25 + 20)), NSDateComponentsFormatterUnitsStyleBrief);
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v44 = qword_27FBA1C18;
    v45 = sub_25B790618();
    v46 = sub_25B790618();
    v47 = [v44 localizedStringForKey:v45 value:0 table:v46];

    sub_25B790638();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
    v48 = swift_allocObject();
    v96 = xmmword_25B791A40;
    *(v48 + 16) = xmmword_25B791A40;
    *(v48 + 56) = MEMORY[0x277D837D0];
    v49 = sub_25B777A70();
    *(v48 + 64) = v49;
    countAndFlagsBits = v43._countAndFlagsBits;
    *(v48 + 32) = v43;

    v50 = sub_25B790648();
    v52 = v51;

    v27 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
    v54 = *(v27 + 2);
    v53 = *(v27 + 3);
    if (v54 >= v53 >> 1)
    {
      v27 = sub_25B77FA44((v53 > 1), v54 + 1, 1, v27);
    }

    *(v27 + 2) = v54 + 1;
    v55 = &v27[16 * v54];
    *(v55 + 4) = v50;
    *(v55 + 5) = v52;
    v56 = qword_27FBA1C18;
    v57 = sub_25B790618();
    v58 = sub_25B790618();
    v59 = [v56 localizedStringForKey:v57 value:0 table:v58];

    sub_25B790638();
    v60 = swift_allocObject();
    *(v60 + 16) = v96;
    *(v60 + 56) = MEMORY[0x277D837D0];
    *(v60 + 64) = v49;
    *(v60 + 32) = countAndFlagsBits;
    *(v60 + 40) = v43._object;
    v61 = sub_25B790648();
    v63 = v62;

    v65 = *(v27 + 2);
    v64 = *(v27 + 3);
    if (v65 >= v64 >> 1)
    {
      v27 = sub_25B77FA44((v64 > 1), v65 + 1, 1, v27);
    }

    v66 = v98;
    *(v27 + 2) = v65 + 1;
    v67 = &v27[16 * v65];
    *(v67 + 4) = v61;
    *(v67 + 5) = v63;
    sub_25B7794F0(v101, v11);
    v68 = v99;
    v69 = v100;
    v70 = *(v99 + 48);
    if (v70(v11, 1, v100) == 1)
    {
      (*(v68 + 104))(v66, *MEMORY[0x277CE32A0], v69);
      v71 = v68;
      if (v70(v11, 1, v69) != 1)
      {
        sub_25B78F310(v11);
      }
    }

    else
    {
      (*(v68 + 32))(v66, v11, v69);
      v71 = v68;
    }

    v88 = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v66, 1);
    if (v89)
    {
      v31 = v88;
    }

    else
    {
      v31 = 0;
    }

    if (v89)
    {
      v33 = v89;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    v91 = *(v71 + 8);
    v91(v66, v69);
    sub_25B78F310(v101);
    v91(&v24[v90], v69);
    v30 = v102;
  }

  else
  {
    v27 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    v30 = v102;
    if (v29 >= v28 >> 1)
    {
      v27 = sub_25B77FA44((v28 > 1), v29 + 1, 1, v27);
    }

    v31 = 0;
    *(v27 + 2) = v29 + 1;
    v32 = &v27[16 * v29];
    v33 = 0xE000000000000000;
    *(v32 + 4) = 0;
    *(v32 + 5) = 0xE000000000000000;
  }

  result = sub_25B7904F8();
  *v30 = v27;
  v30[1] = result;
  v30[2] = v31;
  v30[3] = v33;
  v30[4] = 0;
  return result;
}

uint64_t PrecipitationOutlook.WidgetViewModel.image.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrecipitationOutlook.WidgetViewModel.text.getter()
{
  if (!*(*v0 + 16))
  {
    return 0;
  }

  v1 = *(*v0 + 32);

  return v1;
}

uint64_t PrecipitationOutlook.ViewFormatter.AppType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x74726F6873;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_25B78BC6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74726F6873;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x74726F6873;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25B790BE8();
  }

  return v8 & 1;
}

uint64_t sub_25B78BD10()
{
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B78BD90(uint64_t a1)
{
  sub_25B790678();
}

uint64_t sub_25B78BDFC(uint64_t a1)
{
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

void sub_25B78BE84(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x74726F6873;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25B78BEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B78FDF8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA2098, &qword_25B793898);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - v7;
  v9 = type metadata accessor for PrecipitationOutlook.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v39 - v13;
  v15 = type metadata accessor for PrecipitationOutlook(0);
  sub_25B78F2AC(a1 + *(v15 + 32), v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        return 0;
      }

      if (qword_27FBA19B8 != -1)
      {
        swift_once();
      }

      v20 = qword_27FBA1C18;
      v21 = sub_25B790618();
      v22 = sub_25B790618();
      v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

      sub_25B790638();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_25B791A40;
      v25 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(*(a1 + *(v15 + 20)), NSDateComponentsFormatterUnitsStyleFull);
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_25B777A70();
      *(v24 + 32) = v25;
      v17 = sub_25B790648();

      return v17;
    }

    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    sub_25B76D804(v11, v14);
    v19 = sub_25B790348();
    (*(*(v19 - 8) + 8))(&v11[v18], v19);
LABEL_8:
    v17 = sub_25B78C4E8();
    sub_25B78F310(v14);
    return v17;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_25B76D804(v11, v14);
    goto LABEL_8;
  }

  v41 = v6;
  v42 = a2;
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
  sub_25B790758();
  v27 = v26;
  if (qword_27FBA19B8 != -1)
  {
    swift_once();
  }

  v28 = qword_27FBA1C18;
  v29 = sub_25B790618();
  v30 = sub_25B790618();
  v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

  v32 = sub_25B790638();
  v39[0] = v33;
  v39[1] = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_25B7925B0;
  v43 = v27;
  sub_25B78FDC8();
  sub_25B78F97C();
  sub_25B78FC98();
  *(v34 + 56) = MEMORY[0x277D837D0];
  v35 = sub_25B777A70();
  *(v34 + 64) = v35;
  sub_25B78F9D0();
  sub_25B7905D8();
  (*(v41 + 8))(v8, v5);
  v36 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(*(a1 + *(v15 + 20)), NSDateComponentsFormatterUnitsStyleFull);
  *(v34 + 96) = MEMORY[0x277D837D0];
  *(v34 + 104) = v35;
  *(v34 + 72) = v36;
  v17 = sub_25B790648();

  sub_25B78F310(&v11[v40]);
  v37 = sub_25B790348();
  (*(*(v37 - 8) + 8))(v11, v37);
  return v17;
}

uint64_t sub_25B78C4E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  sub_25B7794F0(v1, &v28 - v9);
  v11 = sub_25B790348();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, v11) == 1)
  {
    v14 = 0;
    v15 = v10;
LABEL_12:
    sub_25B78F310(v15);
    return v14;
  }

  v29 = v8;
  isPrecipitationSbvg_0 = _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
  v17 = *(v12 + 8);
  v17(v10, v11);
  if (isPrecipitationSbvg_0)
  {
    v18 = v1;
    v19 = v29;
    sub_25B7794F0(v18, v29);
    if (v13(v19, 1, v11) == 1)
    {
      goto LABEL_5;
    }

    sub_25B7794F0(v19, v5);
    v20 = (*(v12 + 88))(v5, v11);
    if (v20 == *MEMORY[0x277CE3290] || v20 == *MEMORY[0x277CE32A0])
    {
      goto LABEL_10;
    }

    if (v20 == *MEMORY[0x277CE32C0])
    {
      if (qword_27FBA19B8 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

    if (v20 == *MEMORY[0x277CE32A8])
    {
LABEL_10:
      if (qword_27FBA19B8 == -1)
      {
LABEL_11:
        v21 = qword_27FBA1C18;
        v22 = sub_25B790618();
        v23 = sub_25B790618();
        v24 = [v21 localizedStringForKey:v22 value:0 table:v23];
        v25 = v29;
        v26 = v24;

        v14 = sub_25B790638();
        v15 = v25;
        goto LABEL_12;
      }
    }

    else
    {
      if (v20 != *MEMORY[0x277CE3320])
      {
        v17(v5, v11);
LABEL_5:
        if (qword_27FBA19B8 == -1)
        {
          goto LABEL_11;
        }

        goto LABEL_22;
      }

      if (qword_27FBA19B8 == -1)
      {
        goto LABEL_11;
      }
    }

LABEL_22:
    swift_once();
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_25B78C940(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B78FDF8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA2098, &qword_25B793898);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - v7;
  v9 = type metadata accessor for PrecipitationOutlook.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v39 - v13;
  v15 = type metadata accessor for PrecipitationOutlook(0);
  sub_25B78F2AC(a1 + *(v15 + 32), v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        return 0;
      }

      if (qword_27FBA19B8 != -1)
      {
        swift_once();
      }

      v20 = qword_27FBA1C18;
      v21 = sub_25B790618();
      v22 = sub_25B790618();
      v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

      sub_25B790638();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_25B791A40;
      v25 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(*(a1 + *(v15 + 20)), NSDateComponentsFormatterUnitsStyleShort);
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_25B777A70();
      *(v24 + 32) = v25;
      v17 = sub_25B790648();

      return v17;
    }

    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    sub_25B76D804(v11, v14);
    v19 = sub_25B790348();
    (*(*(v19 - 8) + 8))(&v11[v18], v19);
LABEL_8:
    v17 = sub_25B78C4E8();
    sub_25B78F310(v14);
    return v17;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_25B76D804(v11, v14);
    goto LABEL_8;
  }

  v41 = v6;
  v42 = a2;
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
  sub_25B790758();
  v27 = v26;
  if (qword_27FBA19B8 != -1)
  {
    swift_once();
  }

  v28 = qword_27FBA1C18;
  v29 = sub_25B790618();
  v30 = sub_25B790618();
  v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

  v32 = sub_25B790638();
  v39[0] = v33;
  v39[1] = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_25B7925B0;
  v43 = v27;
  sub_25B78FDC8();
  sub_25B78F97C();
  sub_25B78FC98();
  *(v34 + 56) = MEMORY[0x277D837D0];
  v35 = sub_25B777A70();
  *(v34 + 64) = v35;
  sub_25B78F9D0();
  sub_25B7905D8();
  (*(v41 + 8))(v8, v5);
  v36 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(*(a1 + *(v15 + 20)), NSDateComponentsFormatterUnitsStyleFull);
  *(v34 + 96) = MEMORY[0x277D837D0];
  *(v34 + 104) = v35;
  *(v34 + 72) = v36;
  v17 = sub_25B790648();

  sub_25B78F310(&v11[v40]);
  v37 = sub_25B790348();
  (*(*(v37 - 8) + 8))(v11, v37);
  return v17;
}

uint64_t sub_25B78CF68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v24 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  sub_25B7794F0(v0, &v24 - v9);
  v11 = sub_25B790348();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, v11) == 1)
  {
    v14 = 0;
    v8 = v10;
LABEL_19:
    sub_25B78F310(v8);
    return v14;
  }

  isPrecipitationSbvg_0 = _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
  v16 = v10;
  v17 = *(v12 + 8);
  v17(v16, v11);
  if (isPrecipitationSbvg_0)
  {
    sub_25B7794F0(v1, v8);
    if (v13(v8, 1, v11) == 1)
    {
LABEL_5:
      v14 = 0;
      goto LABEL_19;
    }

    sub_25B7794F0(v8, v5);
    v18 = (*(v12 + 88))(v5, v11);
    if (v18 == *MEMORY[0x277CE3290])
    {
      if (qword_27FBA19B8 == -1)
      {
        goto LABEL_18;
      }
    }

    else if (v18 == *MEMORY[0x277CE32A0])
    {
      if (qword_27FBA19B8 == -1)
      {
        goto LABEL_18;
      }
    }

    else if (v18 == *MEMORY[0x277CE32C0])
    {
      if (qword_27FBA19B8 == -1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v18 != *MEMORY[0x277CE32A8])
      {
        v17(v5, v11);
        goto LABEL_5;
      }

      if (qword_27FBA19B8 == -1)
      {
LABEL_18:
        v19 = qword_27FBA1C18;
        v20 = sub_25B790618();
        v21 = sub_25B790618();
        v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

        v14 = sub_25B790638();
        goto LABEL_19;
      }
    }

    swift_once();
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_25B78D49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_25B790B08();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t PrecipitationOutlook.ViewFormatter.WidgetType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x72656E726F63;
  }

  else
  {
    return 0x72616C7563726963;
  }
}

uint64_t sub_25B78D520(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72656E726F63;
  }

  else
  {
    v3 = 0x72616C7563726963;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x72656E726F63;
  }

  else
  {
    v5 = 0x72616C7563726963;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25B790BE8();
  }

  return v8 & 1;
}

uint64_t sub_25B78D5C4()
{
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B78D644(uint64_t a1)
{
  sub_25B790678();
}

uint64_t sub_25B78D6B0(uint64_t a1)
{
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B78D738@<X0>(char *a3@<X8>)
{
  v4 = sub_25B790B08();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_25B78D794(uint64_t *a1@<X8>)
{
  v2 = 0x72616C7563726963;
  if (*v1)
  {
    v2 = 0x72656E726F63;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25B78D7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v134 = a2;
  v139 = a3;
  v4 = sub_25B78FDF8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA2098, &qword_25B793898);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v132[-v7];
  v9 = sub_25B78FD88();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v136 = &v132[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for PrecipitationOutlook.State(0);
  v13 = MEMORY[0x28223BE20](v12);
  v138 = &v132[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v132[-v15];
  v17 = type metadata accessor for PrecipitationOutlook(0);
  v140 = *(v17 + 32);
  v141 = a1;
  sub_25B78F2AC(a1 + v140, v16);
  v135 = v16;
  v137 = v12;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v46 = *(v141 + *(v17 + 20));
      if (v46 >= 3600.0)
      {
        v47 = v9;
        v49 = v10;
        v133 = v46 < 86400.0;
        v48 = v135;
      }

      else
      {
        v133 = 0;
        v47 = v9;
        v48 = v135;
        v49 = v10;
      }

      if (qword_27FBA19B8 != -1)
      {
        swift_once();
      }

      v58 = qword_27FBA1C18;
      v59 = sub_25B790618();
      v60 = sub_25B790618();
      v61 = [v58 localizedStringForKey:v59 value:0 table:v60];

      sub_25B790638();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_25B791A40;
      v63 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v46, NSDateComponentsFormatterUnitsStyleAbbreviated);
      *(v62 + 56) = MEMORY[0x277D837D0];
      *(v62 + 64) = sub_25B777A70();
      *(v62 + 32) = v63;
      v64 = sub_25B790648();
      v66 = v65;

      v29 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
      v68 = *(v29 + 2);
      v67 = *(v29 + 3);
      if (v68 >= v67 >> 1)
      {
        v29 = sub_25B77FA44((v67 > 1), v68 + 1, 1, v29);
      }

      *(v29 + 2) = v68 + 1;
      v69 = &v29[16 * v68];
      *(v69 + 4) = v64;
      *(v69 + 5) = v66;
      v70 = v136;
      sub_25B78FD38();
      v71 = NHPWidgetDateFormatter.absoluteTimeString(date:interval:useAproximateSymbol:)(v46, v70, 1);
      v73 = v72;
      v74 = *(v49 + 8);
      v74(v70, v47);
      v76 = *(v29 + 2);
      v75 = *(v29 + 3);
      if (v76 >= v75 >> 1)
      {
        v29 = sub_25B77FA44((v75 > 1), v76 + 1, 1, v29);
      }

      *(v29 + 2) = v76 + 1;
      v77 = &v29[16 * v76];
      *(v77 + 4) = v71;
      *(v77 + 5) = v73;
      if (v133)
      {
        v78 = v136;
        sub_25B78FD38();
        v79 = NHPWidgetDateFormatter.absoluteTimeString(date:interval:useAproximateSymbol:)(v46, v78, 0);
        v81 = v80;
        v74(v78, v47);
        v83 = *(v29 + 2);
        v82 = *(v29 + 3);
        v32 = v138;
        v19 = v139;
        if (v83 >= v82 >> 1)
        {
          v29 = sub_25B77FA44((v82 > 1), v83 + 1, 1, v29);
        }

        *(v29 + 2) = v83 + 1;
        v84 = &v29[16 * v83];
        *(v84 + 4) = v79;
        *(v84 + 5) = v81;
        v20 = v141;
      }

      else
      {
        v20 = v141;
        v32 = v138;
        v19 = v139;
      }

      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
      v86 = sub_25B790348();
      (*(*(v86 - 8) + 8))(v48 + v85, v86);
      sub_25B78F310(v48);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v19 = v139;
        v20 = v141;
        if (qword_27FBA19B8 != -1)
        {
          swift_once();
        }

        v21 = qword_27FBA1C18;
        v22 = sub_25B790618();
        v23 = sub_25B790618();
        v24 = sub_25B790618();
        v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

        v26 = sub_25B790638();
        v28 = v27;

        v29 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
        v31 = *(v29 + 2);
        v30 = *(v29 + 3);
        v32 = v138;
        if (v31 >= v30 >> 1)
        {
          v29 = sub_25B77FA44((v30 > 1), v31 + 1, 1, v29);
        }

        *(v29 + 2) = v31 + 1;
        v33 = &v29[16 * v31];
        *(v33 + 4) = v26;
      }

      else
      {
        v20 = v141;
        sub_25B790758();
        v142 = v50;
        sub_25B78FDC8();
        sub_25B78F97C();
        sub_25B78FC98();
        sub_25B78F9D0();
        sub_25B7905D8();
        (*(v6 + 8))(v8, v5);
        v51 = v143;
        v28 = v144;
        v29 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
        v53 = *(v29 + 2);
        v52 = *(v29 + 3);
        v19 = v139;
        if (v53 >= v52 >> 1)
        {
          v29 = sub_25B77FA44((v52 > 1), v53 + 1, 1, v29);
        }

        v32 = v138;
        *(v29 + 2) = v53 + 1;
        v33 = &v29[16 * v53];
        *(v33 + 4) = v51;
      }

      *(v33 + 5) = v28;
    }

    goto LABEL_55;
  }

  if (!EnumCaseMultiPayload)
  {
    v34 = v141;
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v35 = qword_27FBA1C18;
    v36 = sub_25B790618();
    v37 = sub_25B790618();
    v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

    v39 = sub_25B790638();
    v41 = v40;

    v29 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
    v43 = *(v29 + 2);
    v42 = *(v29 + 3);
    v19 = v139;
    v44 = v135;
    if (v43 >= v42 >> 1)
    {
      v131 = v135;
      v29 = sub_25B77FA44((v42 > 1), v43 + 1, 1, v29);
      v44 = v131;
    }

    *(v29 + 2) = v43 + 1;
    v45 = &v29[16 * v43];
    *(v45 + 4) = v39;
    *(v45 + 5) = v41;
    sub_25B78F920(v44);
    v20 = v34;
    v32 = v138;
    goto LABEL_55;
  }

  v54 = *(v141 + *(v17 + 20));
  if (v54 >= 3600.0)
  {
    v55 = v9;
    v57 = v10;
    if (v54 >= 86400.0)
    {
      v56 = v135;
      if (v54 < 604800.0)
      {
        v87 = v136;
        sub_25B78FD38();
        v88 = NHPWidgetDateFormatter.absoluteTimeString(date:interval:useAproximateSymbol:)(v54, v87, 1);
        v90 = v89;
        (*(v10 + 8))(v87, v55);
        v29 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
        v133 = 0;
        v92 = *(v29 + 2);
        v91 = *(v29 + 3);
        v93 = v92 + 1;
        if (v92 >= v91 >> 1)
        {
          v29 = sub_25B77FA44((v91 > 1), v92 + 1, 1, v29);
          v133 = 0;
        }

        goto LABEL_47;
      }

      v133 = 0;
    }

    else
    {
      v133 = 1;
      v56 = v135;
    }
  }

  else
  {
    v133 = 0;
    v55 = v9;
    v56 = v135;
    v57 = v10;
  }

  if (qword_27FBA19B8 != -1)
  {
    swift_once();
  }

  v94 = qword_27FBA1C18;
  v95 = sub_25B790618();
  v96 = sub_25B790618();
  v97 = [v94 localizedStringForKey:v95 value:0 table:v96];

  sub_25B790638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_25B791A40;
  v99 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v54, NSDateComponentsFormatterUnitsStyleAbbreviated);
  *(v98 + 56) = MEMORY[0x277D837D0];
  *(v98 + 64) = sub_25B777A70();
  *(v98 + 32) = v99;
  v88 = sub_25B790648();
  v90 = v100;

  v29 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
  v92 = *(v29 + 2);
  v101 = *(v29 + 3);
  v93 = v92 + 1;
  if (v92 >= v101 >> 1)
  {
    v29 = sub_25B77FA44((v101 > 1), v92 + 1, 1, v29);
  }

LABEL_47:
  *(v29 + 2) = v93;
  v102 = &v29[16 * v92];
  *(v102 + 4) = v88;
  *(v102 + 5) = v90;
  v103 = v136;
  sub_25B78FD38();
  v104 = NHPWidgetDateFormatter.absoluteTimeString(date:interval:useAproximateSymbol:)(v54, v103, 1);
  v106 = v105;
  v107 = *(v57 + 8);
  v107(v103, v55);
  v109 = *(v29 + 2);
  v108 = *(v29 + 3);
  if (v109 >= v108 >> 1)
  {
    v29 = sub_25B77FA44((v108 > 1), v109 + 1, 1, v29);
  }

  *(v29 + 2) = v109 + 1;
  v110 = &v29[16 * v109];
  *(v110 + 4) = v104;
  *(v110 + 5) = v106;
  if (v133)
  {
    v111 = v136;
    sub_25B78FD38();
    v112 = NHPWidgetDateFormatter.absoluteTimeString(date:interval:useAproximateSymbol:)(v54, v111, 0);
    v114 = v113;
    v107(v111, v55);
    v116 = *(v29 + 2);
    v115 = *(v29 + 3);
    v32 = v138;
    v19 = v139;
    if (v116 >= v115 >> 1)
    {
      v29 = sub_25B77FA44((v115 > 1), v116 + 1, 1, v29);
    }

    *(v29 + 2) = v116 + 1;
    v117 = &v29[16 * v116];
    *(v117 + 4) = v112;
    *(v117 + 5) = v114;
    v20 = v141;
  }

  else
  {
    v20 = v141;
    v32 = v138;
    v19 = v139;
  }

  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780);
  sub_25B78F310(&v56[*(v118 + 48)]);
  v119 = sub_25B790348();
  (*(*(v119 - 8) + 8))(v56, v119);
LABEL_55:
  v120 = v140;
  v121 = sub_25B78F5B0(v20);
  v123 = v122;
  v125 = v124;
  sub_25B78F2AC(v20 + v120, v32);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v126 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    v127 = sub_25B790528();
    v128 = sub_25B790348();
    (*(*(v128 - 8) + 8))(v32 + v126, v128);
    result = sub_25B78F310(v32);
  }

  else
  {
    v130 = [objc_opt_self() systemCyanColor];
    v127 = sub_25B790548();
    result = sub_25B78F920(v32);
  }

  *v19 = v29;
  v19[1] = v127;
  v19[2] = v121;
  v19[3] = v123;
  v19[4] = v125;
  return result;
}

char *sub_25B78E658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v103 = a2;
  v106 = a3;
  v4 = sub_25B78FDF8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA2098, &qword_25B793898);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v97 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v97 - v10;
  v12 = type metadata accessor for PrecipitationOutlook.State(0);
  v13 = MEMORY[0x28223BE20](v12);
  v108 = v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v97 - v15;
  v17 = type metadata accessor for PrecipitationOutlook(0);
  v18 = *(v17 + 32);
  v107 = a1;
  sub_25B78F2AC(a1 + v18, v16);
  *&v102 = v16;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v105 = v18;
  if (EnumCaseMultiPayload <= 1)
  {
    v99 = v5;
    *&v100 = v8;
    v104 = v6;
    if (!EnumCaseMultiPayload)
    {
      sub_25B76D804(v102, v11);
      v104 = sub_25B78CF68();
      v26 = v30;
      sub_25B78F310(v11);
      v27 = 0;
      v20 = v107;
      v29 = v108;
      v28 = 0;
      goto LABEL_19;
    }

    v101 = v12;
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
    v20 = v107;
    sub_25B790758();
    v63 = v62;
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v64 = qword_27FBA1C18;
    v65 = sub_25B790618();
    v66 = sub_25B790618();
    v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

    v97[0] = sub_25B790638();
    v97[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_25B7925B0;
    v109 = v63;
    sub_25B78FDC8();
    sub_25B78F97C();
    v69 = v100;
    sub_25B78FC98();
    v70 = MEMORY[0x277D837D0];
    *(v68 + 56) = MEMORY[0x277D837D0];
    v71 = sub_25B777A70();
    *(v68 + 64) = v71;
    sub_25B78F9D0();
    v72 = v99;
    sub_25B7905D8();
    (*(v104 + 8))(v69, v72);
    v73 = *(v20 + *(v17 + 20));
    v74 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v73, NSDateComponentsFormatterUnitsStyleShort);
    *(v68 + 96) = v70;
    *(v68 + 104) = v71;
    *(v68 + 72) = v74;
    v104 = sub_25B790648();
    v26 = v75;

    v76 = qword_27FBA1C18;
    v77 = sub_25B790618();
    v78 = sub_25B790618();
    v79 = [v76 localizedStringForKey:v77 value:0 table:v78];

    sub_25B790638();
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_25B791A40;
    v81 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v73, NSDateComponentsFormatterUnitsStyleAbbreviated);
    *(v80 + 56) = v70;
    *(v80 + 64) = v71;
    *(v80 + 32) = v81;
    v27 = sub_25B790648();
    v28 = v82;

    v83 = v102;
    sub_25B78F310(v102 + v98);
    v84 = sub_25B790348();
    (*(*(v84 - 8) + 8))(v83, v84);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v101 = v12;
    v20 = v107;
    v99 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v31 = qword_27FBA1C18;
    v32 = sub_25B790618();
    v33 = sub_25B790618();
    v34 = [v31 localizedStringForKey:v32 value:0 table:v33];

    sub_25B790638();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
    v35 = swift_allocObject();
    v100 = xmmword_25B791A40;
    *(v35 + 16) = xmmword_25B791A40;
    v36 = *(v20 + *(v17 + 20));
    v37 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v36, NSDateComponentsFormatterUnitsStyleShort);
    v38 = MEMORY[0x277D837D0];
    *(v35 + 56) = MEMORY[0x277D837D0];
    v39 = sub_25B777A70();
    *(v35 + 64) = v39;
    *(v35 + 32) = v37;
    v104 = sub_25B790648();
    v26 = v40;
    v41 = swift_allocObject();
    *(v41 + 16) = v100;
    v42 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v36, NSDateComponentsFormatterUnitsStyleAbbreviated);
    *(v41 + 56) = v38;
    *(v41 + 64) = v39;
    *(v41 + 32) = v42;
    v27 = sub_25B790648();
    v28 = v43;

    v44 = sub_25B790348();
    v45 = v102;
    (*(*(v44 - 8) + 8))(v102 + v99, v44);
    sub_25B78F310(v45);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v101 = v12;
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v46 = qword_27FBA1C18;
    v47 = sub_25B790618();
    v48 = sub_25B790618();
    v49 = [v46 localizedStringForKey:v47 value:0 table:v48];

    sub_25B790638();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
    v50 = swift_allocObject();
    v102 = xmmword_25B791A40;
    *(v50 + 16) = xmmword_25B791A40;
    v20 = v107;
    v51 = *(v107 + *(v17 + 20));
    v52 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v51, NSDateComponentsFormatterUnitsStyleShort);
    *(v50 + 56) = MEMORY[0x277D837D0];
    v53 = sub_25B777A70();
    *(v50 + 64) = v53;
    *(v50 + 32) = v52;
    v104 = sub_25B790648();
    v26 = v54;

    v55 = qword_27FBA1C18;
    v56 = sub_25B790618();
    v57 = sub_25B790618();
    v58 = [v55 localizedStringForKey:v56 value:0 table:v57];

    sub_25B790638();
    v59 = swift_allocObject();
    *(v59 + 16) = v102;
    v60 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v51, NSDateComponentsFormatterUnitsStyleAbbreviated);
    *(v59 + 56) = MEMORY[0x277D837D0];
    *(v59 + 64) = v53;
    *(v59 + 32) = v60;
    v27 = sub_25B790648();
    v28 = v61;

LABEL_18:
    v29 = v108;
    goto LABEL_19;
  }

  v20 = v107;
  if (qword_27FBA19B8 != -1)
  {
    swift_once();
  }

  v21 = qword_27FBA1C18;
  v22 = sub_25B790618();
  v23 = sub_25B790618();
  v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

  v104 = sub_25B790638();
  v26 = v25;

  v27 = 0;
  v28 = 0;
  v29 = v108;
LABEL_19:
  v85 = sub_25B78F5B0(v20);
  v87 = v86;
  v89 = v88;
  sub_25B78F2AC(v20 + v105, v29);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    v91 = sub_25B790528();
    v92 = sub_25B790348();
    (*(*(v92 - 8) + 8))(v29 + v90, v92);
    sub_25B78F310(v29);
  }

  else
  {
    v93 = [objc_opt_self() systemCyanColor];
    v91 = sub_25B790548();
    sub_25B78F920(v29);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F70, &qword_25B7931A8);
  result = swift_allocObject();
  v95 = result;
  *(result + 1) = xmmword_25B791A40;
  *(result + 4) = v104;
  *(result + 5) = v26;
  if (v28)
  {
    result = sub_25B77FA44(1, 2, 1, result);
    v95 = result;
    *(result + 2) = 2;
    *(result + 6) = v27;
    *(result + 7) = v28;
  }

  v96 = v106;
  *v106 = v95;
  v96[1] = v91;
  v96[2] = v85;
  v96[3] = v87;
  v96[4] = v89;
  return result;
}

uint64_t sub_25B78F2AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationOutlook.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B78F310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B78F37C()
{
  result = qword_27FBA2088;
  if (!qword_27FBA2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA2088);
  }

  return result;
}

unint64_t sub_25B78F3D4()
{
  result = qword_27FBA2090;
  if (!qword_27FBA2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA2090);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25B78F434(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25B78F47C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25B78F4E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B78F528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B78F5B0(uint64_t a1)
{
  v2 = sub_25B790348();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrecipitationOutlook.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  sub_25B7904F8();
  v15 = type metadata accessor for PrecipitationOutlook(0);
  sub_25B78F2AC(a1 + *(v15 + 32), v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60);
    (*(v3 + 32))(v5, &v8[*(v22 + 48)], v2);
    v19 = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v5, *(a1 + *(v15 + 24)));
    v24 = v23;
    (*(v3 + 8))(v5, v2);
    if (v24)
    {
    }

    else
    {
      v19 = 0x616C6C6572626D75;
    }

    sub_25B78F310(v8);
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780);
      sub_25B76D804(&v8[*(v17 + 48)], v14);
      (*(v3 + 8))(v8, v2);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_25B78F920(v8);
        return 0x616C6C6572626D75;
      }

      sub_25B76D804(v8, v14);
    }

    v18 = *(a1 + *(v15 + 24));
    sub_25B76D804(v14, v12);
    if ((*(v3 + 48))(v12, 1, v2) == 1)
    {
      sub_25B78F310(v12);
      return 0x616C6C6572626D75;
    }

    v19 = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v12, v18);
    v21 = v20;
    (*(v3 + 8))(v12, v2);
    if (!v21)
    {
      return 0x616C6C6572626D75;
    }
  }

  return v19;
}

uint64_t sub_25B78F920(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationOutlook.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B78F97C()
{
  result = qword_27FBA20A0;
  if (!qword_27FBA20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA20A0);
  }

  return result;
}

unint64_t sub_25B78F9D0()
{
  result = qword_27FBA20A8;
  if (!qword_27FBA20A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBA2098, &qword_25B793898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA20A8);
  }

  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}