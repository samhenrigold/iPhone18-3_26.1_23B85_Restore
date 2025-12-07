id NWKUIBundle(uint64_t a1)
{
  if (NWKUIBundle_onceToken[0] != -1)
  {
    NWKUIBundle_cold_1();
  }

  v2 = NWKUIBundle_Bundle;

  return v2;
}

uint64_t __NWKUIBundle_block_invoke()
{
  NWKUIBundle_Bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id NWKUILocalizedString(void *a1)
{
  v1 = a1;
  v2 = NWKUIBundle(v1);
  v3 = [v2 localizedStringForKey:v1 value:&stru_286D045D8 table:0];

  return v3;
}

void sub_25B761824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NWMInterpolateBetweenColors(void *a1, void *a2, double a3)
{
  v16 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v9 = 0.0;
  v5 = a2;
  [a1 getRed:&v16 green:&v15 blue:&v14 alpha:&v13];
  [v5 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];

  v6 = fmin(fmax(a3, 0.0), 1.0);
  v7 = [MEMORY[0x277D75348] colorWithRed:v16 + (v12 - v16) * v6 green:v15 + (v11 - v15) * v6 blue:v14 + (v10 - v14) * v6 alpha:v13 + (v9 - v13) * v6];

  return v7;
}

id NWMColorIndexForValueInIndices(void *a1, double a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 firstObject];
  [v4 value];
  v6 = v5;

  if (v6 > a2)
  {
    v7 = [v3 firstObject];
LABEL_5:
    v11 = v7;
    goto LABEL_17;
  }

  v8 = [v3 lastObject];
  [v8 value];
  v10 = v9;

  if (v10 < a2)
  {
    v7 = [v3 lastObject];
    goto LABEL_5;
  }

  v11 = [v3 firstObject];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v3;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        [v17 value];
        if (v18 >= a2)
        {
          v19 = v17;

          v11 = v19;
          goto LABEL_16;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

LABEL_17:

  return v11;
}

id NWMColorForValueInIndices(void *a1, double a2)
{
  v3 = a1;
  v4 = NWMColorIndexForValueInIndices(v3, a2);
  if (v4)
  {
    v5 = [v3 firstObject];

    if (v4 != v5)
    {
      v6 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "indexOfObject:", v4) - 1}];
      [v6 value];
      v8 = a2 - v7;
      [v4 value];
      v10 = v9;
      [v6 value];
      v12 = v8 / (v10 - v11);
      v13 = [v6 color];
      v14 = [v4 color];
      v15 = NWMInterpolateBetweenColors(v13, v14, v12);

      goto LABEL_7;
    }

    v16 = [v4 color];
  }

  else
  {
    v16 = [MEMORY[0x277D75348] whiteColor];
  }

  v15 = v16;
LABEL_7:

  return v15;
}

uint64_t sub_25B7634A4(void *a1, SEL *a2, unint64_t *a3, double a4)
{
  v6 = [objc_opt_self() *a2];
  sub_25B7637A0(0, a3, a1);

  return sub_25B78FA68();
}

uint64_t DayWeather.pressureTrend.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CE33E8];
  v3 = sub_25B7903D8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t DayWeather.temperature.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_25B78FF48();
  sub_25B78FF38();
  sub_25B7637A0(0, &qword_27FBA1A58, 0x277CCAE48);
  sub_25B78FAA8();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v7, v0);
  sub_25B78FA48();
  return (v10)(v9, v0);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25B7637A0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25B76384C(double a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, unint64_t *a6)
{
  v8 = [objc_opt_self() *a5];
  sub_25B7637A0(0, a6, a4);

  return sub_25B78FA68();
}

uint64_t sub_25B7638D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CE33E8];
  v3 = sub_25B7903D8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25B76394C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_25B78FF48();
  sub_25B78FF38();
  sub_25B7637A0(0, &qword_27FBA1A58, 0x277CCAE48);
  sub_25B78FAA8();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v7, v0);
  sub_25B78FA48();
  return (v10)(v9, v0);
}

double variable initialization expression of AppPrecipitationOutlookFormatter.outlookConditions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A78, &qword_25B792430);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_25B791A40;
  *(v0 + 56) = &type metadata for MinutelyOutlookCondition;
  *(v0 + 64) = &off_286D037D8;
  return result;
}

double variable initialization expression of WidgetPrecipitationOutlookFormatter.outlookConditions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A78, &qword_25B792430);
  v0 = swift_allocObject();
  *&result = 4;
  *(v0 + 56) = &type metadata for MinutelyOutlookCondition;
  *(v0 + 64) = &off_286D037D8;
  *(v0 + 96) = &type metadata for CurrentOutlookCondition;
  *(v0 + 104) = &off_286D03AF0;
  *(v0 + 136) = &type metadata for HourlyOutlookCondition;
  *(v0 + 144) = &off_286D03B28;
  *(v0 + 16) = xmmword_25B791A50;
  *(v0 + 176) = &type metadata for DailyOutlookCondition;
  *(v0 + 184) = &off_286D03968;
  *(v0 + 152) = 10;
  return result;
}

id variable initialization expression of NHPWidgetDateFormatter.dateFormatter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA968]);

  return [v0 init];
}

id variable initialization expression of NHPWidgetDateFormatter.dateComponentsFormatter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA958]);

  return [v0 init];
}

uint64_t _s25NanoWeatherKitUICompanion19VisibilityFormatterC14overrideLocale10Foundation0H0VSgvpfi_0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25B78FDF8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of PrecipitationChanceFormatter.percentFormatter()
{
  if (qword_27FBA1A00 != -1)
  {
    swift_once();
  }
}

id variable initialization expression of PercentFormatter.percentageFormatter()
{
  v0 = sub_25B78FDF8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_25B78FDC8();
  v5 = sub_25B78FDB8();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setNumberStyle_];
  return v4;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25B763E8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25B763EAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CLLocationCoordinate2D()
{
  if (!qword_27FBA1A80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FBA1A80);
    }
  }
}

uint64_t WeatherCondition.conditionIconName(coordinates:date:)()
{
  if (qword_27FBA19A0 != -1)
  {
    swift_once();
  }

  GEOLocationCoordinate2DMake();
  sub_25B78FCB8();
  isDayLightForLocation = geo_isDayLightForLocation();
  return _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v0, isDayLightForLocation);
}

Swift::String_optional __swiftcall WeatherCondition.conditionIconName(isDaytime:)(Swift::Bool isDaytime)
{
  v2 = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v1, isDaytime);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t WeatherCondition.simplePrecipitationCondtion()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B790348();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277CE32F0])
  {
    goto LABEL_2;
  }

  v10 = v8;
  if (v8 == *MEMORY[0x277CE3300])
  {
    goto LABEL_4;
  }

  if (v8 == *MEMORY[0x277CE3270] || v8 == *MEMORY[0x277CE3240])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277CE3290])
  {
    goto LABEL_6;
  }

  if (v8 == *MEMORY[0x277CE3308])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277CE3310])
  {
    goto LABEL_4;
  }

  if (v8 == *MEMORY[0x277CE3318] || v8 == *MEMORY[0x277CE3278] || v8 == *MEMORY[0x277CE32A0] || v8 == *MEMORY[0x277CE3280])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277CE32C0])
  {
    goto LABEL_6;
  }

  if (v8 == *MEMORY[0x277CE32A8])
  {
LABEL_4:
    v9 = MEMORY[0x277CE32A8];
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x277CE3260] || v8 == *MEMORY[0x277CE3268])
  {
LABEL_2:
    v9 = MEMORY[0x277CE32A0];
LABEL_5:
    v10 = *v9;
LABEL_6:
    (*(v5 + 104))(a1, v10, v4);
    return (*(v5 + 56))(a1, 0, 1, v4);
  }

  if (v8 == *MEMORY[0x277CE3320])
  {
    (*(v5 + 104))(a1, v8, v4);
    return (*(v5 + 56))(a1, 0, 1, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    return (*(v5 + 56))(a1, 1, 1, v4);
  }
}

uint64_t WeatherCondition.iconHasRain.getter()
{
  v1 = v0;
  v2 = sub_25B790348();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v13 = v6 == *MEMORY[0x277CE32F0] || v6 == *MEMORY[0x277CE3270] || v6 == *MEMORY[0x277CE3240] || v6 == *MEMORY[0x277CE3308] || v6 == *MEMORY[0x277CE32A0] || v6 == *MEMORY[0x277CE32C0] || v6 == *MEMORY[0x277CE3258] || v6 == *MEMORY[0x277CE3260];
  v14 = v13;
  if (!v13)
  {
    (*(v3 + 8))(v5, v2);
  }

  return v14;
}

uint64_t WeatherCondition.fallbackCondition.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B790348();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7, v2, v4);
  v9 = (*(v5 + 88))(v7, v4);
  if (v9 == *MEMORY[0x277CE3270])
  {
    v10 = MEMORY[0x277CE3240];
  }

  else
  {
    if (v9 != *MEMORY[0x277CE3278] && v9 != *MEMORY[0x277CE3280] && v9 != *MEMORY[0x277CE3258])
    {
      v8(a1, v2, v4);
      return (*(v5 + 8))(v7, v4);
    }

    v10 = MEMORY[0x277CE3260];
  }

  return (*(v5 + 104))(a1, *v10, v4);
}

id sub_25B76460C()
{
  v1 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter____lazy_storage___accessibilityFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter____lazy_storage___accessibilityFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter____lazy_storage___accessibilityFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v5 = sub_25B790618();
    [v4 setDateFormat_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_25B7646B0()
{
  type metadata accessor for LocationDateFormatter(0);
  v0 = swift_allocObject();
  _s25NanoWeatherKitUICompanion21LocationDateFormatterC8calendar33_F11D3163793300FBD0749B496D3764F410Foundation8CalendarVvpfi_0();
  *(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter____lazy_storage___accessibilityFormatter) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter_formatter) = v1;
  v2 = v1;
  v3 = sub_25B790618();
  [v2 setDateFormat_];

  static LocationDateFormatter.shared = v0;
}

uint64_t *LocationDateFormatter.shared.unsafeMutableAddressor()
{
  if (qword_27FBA1988 != -1)
  {
    swift_once();
  }

  return &static LocationDateFormatter.shared;
}

uint64_t static LocationDateFormatter.shared.getter()
{
  if (qword_27FBA1988 != -1)
  {
    swift_once();
  }
}

uint64_t LocationDateFormatter.dayOfWeekForDate(_:timeZone:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34[1] = a1;
  v35 = sub_25B78FEB8();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B78FF28();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v12(v11, a2, v8);
  v13 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter_calendar;
  swift_beginAccess();
  sub_25B78FE98();
  v34[0] = a2;
  v12(v11, a2, v8);
  sub_25B78FE98();
  swift_endAccess();
  v14 = v2 + v13;
  v15 = v35;
  (*(v5 + 16))(v7, v14, v35);
  v16 = sub_25B78FE38();
  (*(v5 + 8))(v7, v15);
  if (v16)
  {
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v17 = qword_27FBA1C18;
    v18 = sub_25B790618();
    v19 = sub_25B790618();
    v20 = sub_25B790618();
    v21 = [v17 localizedStringForKey:v18 value:v19 table:v20];

    v22 = sub_25B790638();
  }

  else
  {
    v23 = *(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter_formatter);
    v24 = sub_25B78FEE8();
    [v23 setTimeZone_];

    v25 = sub_25B78FD08();
    v26 = [v23 stringFromDate_];

    v27 = sub_25B790638();
    v29 = v28;

    v38 = v27;
    v39 = v29;
    sub_25B765148();
    v30 = sub_25B7909E8();
    v32 = v31;

    v36 = v30;
    v37 = v32;
    v22 = sub_25B790A08();
  }

  return v22;
}

uint64_t LocationDateFormatter.accessibilityDayOfWeekForDate(_:timeZone:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_25B78FEB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B78FF28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  v31 = a1;
  v13 = *(v10 + 16);
  v13(v12, a2, v9);
  v30 = v5;
  v14 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter_calendar;
  swift_beginAccess();
  sub_25B78FE98();
  v29 = a2;
  v15 = a2;
  v16 = v2;
  v13(v12, v15, v9);
  sub_25B78FE98();
  swift_endAccess();
  v17 = v2 + v14;
  v18 = v30;
  (*(v6 + 16))(v8, v17, v30);
  v19 = sub_25B78FE38();
  (*(v6 + 8))(v8, v18);
  if (v19)
  {
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v20 = qword_27FBA1C18;
    v21 = sub_25B790618();
    v22 = sub_25B790618();
    v23 = sub_25B790618();
    v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];
  }

  else
  {
    v26 = sub_25B76460C();
    v27 = sub_25B78FEE8();
    [v26 setTimeZone_];

    v22 = *(v16 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter____lazy_storage___accessibilityFormatter);
    v23 = sub_25B78FD08();
    v24 = [v22 stringFromDate_];
  }

  v28 = sub_25B790638();
  return v28;
}

uint64_t LocationDateFormatter.isDateToday(_:timeZone:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_25B78FEB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B78FF28();
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v12 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter_calendar;
  swift_beginAccess();
  sub_25B78FE98();
  swift_endAccess();
  (*(v6 + 16))(v8, v3 + v12, v5);
  LOBYTE(a2) = sub_25B78FE38();
  (*(v6 + 8))(v8, v5);
  return a2 & 1;
}

unint64_t sub_25B765148()
{
  result = qword_27FBA1A98;
  if (!qword_27FBA1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1A98);
  }

  return result;
}

uint64_t LocationDateFormatter.deinit()
{
  v1 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter_calendar;
  v2 = sub_25B78FEB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t LocationDateFormatter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter_calendar;
  v2 = sub_25B78FEB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocationDateFormatter(uint64_t a1)
{
  result = qword_27FBA1AA8;
  if (!qword_27FBA1AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B76532C(uint64_t a1)
{
  result = sub_25B78FEB8();
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

uint64_t sub_25B7653D4()
{
  v0 = sub_25B790498();
  __swift_allocate_value_buffer(v0, qword_27FBA4948);
  __swift_project_value_buffer(v0, qword_27FBA4948);
  return sub_25B790488();
}

uint64_t static Logger.stringForDate(_:)()
{
  if (qword_27FBA1998 != -1)
  {
    swift_once();
  }

  v0 = static Logger.dateFormatter;
  v1 = sub_25B78FD08();
  v2 = [v0 stringFromDate_];

  v3 = sub_25B790638();
  return v3;
}

uint64_t *Logger.dateFormatter.unsafeMutableAddressor()
{
  if (qword_27FBA1998 != -1)
  {
    swift_once();
  }

  return &static Logger.dateFormatter;
}

id sub_25B76554C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setTimeStyle_];
  result = [v0 setDateStyle_];
  static Logger.dateFormatter = v0;
  return result;
}

id static Logger.dateFormatter.getter()
{
  if (qword_27FBA1998 != -1)
  {
    swift_once();
  }

  v1 = static Logger.dateFormatter;

  return v1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t PromptLaunchQuery.createURL()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AB8, &qword_25B791BA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  v7 = sub_25B78FB98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B78FB88();
  sub_25B78FB78();
  MEMORY[0x25F86C2D0](0x74706D6F7270, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AC0, &qword_25B791BA8);
  sub_25B78FAE8();
  *(swift_allocObject() + 16) = xmmword_25B791A40;
  v14[1] = a1;
  sub_25B790BD8();
  sub_25B78FAC8();

  sub_25B78FB08();
  sub_25B78FB28();
  v11 = sub_25B78FCA8();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v6, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 8))(v10, v7);

    return (*(v12 + 32))(a2, v6, v11);
  }

  return result;
}

unint64_t static PromptLaunchQuery.query(for:)(uint64_t a1)
{
  v1 = sub_25B78FAE8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v52[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B78FB98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AC8, &qword_25B791BB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v52[-1] - v13;
  sub_25B78FB18();
  sub_25B766244(v14, v12);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    sub_25B7662B4(v14);
    v15 = v12;
LABEL_13:
    sub_25B7662B4(v15);
    return 0;
  }

  (*(v6 + 32))(v8, v12, v5);
  v16 = sub_25B78FAF8();
  if (!v16)
  {
LABEL_12:
    (*(v6 + 8))(v8, v5);
    v15 = v14;
    goto LABEL_13;
  }

  if (*(v16 + 16) != 1 || (v17 = v16, v18 = sub_25B78FB38(), !v19))
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v18 == 0x74706D6F7270 && v19 == 0xE600000000000000)
  {
  }

  else
  {
    v21 = sub_25B790BE8();

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!*(v17 + 16))
  {
    __break(1u);
LABEL_88:
    (*(v6 + 8))(v8, v5);
    sub_25B7662B4(v14);

    return 0;
  }

  (*(v2 + 16))(v4, v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  v23 = sub_25B78FAD8();
  v25 = v24;
  (*(v2 + 8))(v4, v1);
  if (v25)
  {
    result = v23;
  }

  else
  {
    result = 48;
  }

  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0xE100000000000000;
  }

  v27 = HIBYTE(v26) & 0xF;
  v28 = result & 0xFFFFFFFFFFFFLL;
  if ((v26 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v26) & 0xF;
  }

  else
  {
    v29 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    goto LABEL_88;
  }

  if ((v26 & 0x1000000000000000) != 0)
  {
    v53 = 0;
    v31 = sub_25B76631C(result, v26, 10);
    v49 = v50;
    goto LABEL_85;
  }

  if ((v26 & 0x2000000000000000) != 0)
  {
    v52[0] = result;
    v52[1] = v26 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v27)
      {
        if (--v27)
        {
          v31 = 0;
          v41 = v52 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v31;
            if ((v31 * 10) >> 64 != (10 * v31) >> 63)
            {
              break;
            }

            v31 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v27)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_83;
      }

LABEL_94:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v27)
      {
        v31 = 0;
        v46 = v52;
        while (1)
        {
          v47 = *v46 - 48;
          if (v47 > 9)
          {
            break;
          }

          v48 = 10 * v31;
          if ((v31 * 10) >> 64 != (10 * v31) >> 63)
          {
            break;
          }

          v31 = v48 + v47;
          if (__OFADD__(v48, v47))
          {
            break;
          }

          ++v46;
          if (!--v27)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    if (v27)
    {
      if (--v27)
      {
        v31 = 0;
        v35 = v52 + 1;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v31;
          if ((v31 * 10) >> 64 != (10 * v31) >> 63)
          {
            break;
          }

          v31 = v37 - v36;
          if (__OFSUB__(v37, v36))
          {
            break;
          }

          ++v35;
          if (!--v27)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    goto LABEL_92;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v26 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_25B790A98();
  }

  v30 = *result;
  if (v30 == 43)
  {
    if (v28 < 1)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v27 = v28 - 1;
    if (v28 != 1)
    {
      v31 = 0;
      if (result)
      {
        v38 = (result + 1);
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            goto LABEL_83;
          }

          v40 = 10 * v31;
          if ((v31 * 10) >> 64 != (10 * v31) >> 63)
          {
            goto LABEL_83;
          }

          v31 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            goto LABEL_83;
          }

          ++v38;
          if (!--v27)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_75;
    }

LABEL_83:
    v31 = 0;
    LOBYTE(v27) = 1;
    goto LABEL_84;
  }

  if (v30 != 45)
  {
    if (v28)
    {
      v31 = 0;
      if (result)
      {
        while (1)
        {
          v44 = *result - 48;
          if (v44 > 9)
          {
            goto LABEL_83;
          }

          v45 = 10 * v31;
          if ((v31 * 10) >> 64 != (10 * v31) >> 63)
          {
            goto LABEL_83;
          }

          v31 = v45 + v44;
          if (__OFADD__(v45, v44))
          {
            goto LABEL_83;
          }

          ++result;
          if (!--v28)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_83;
  }

  if (v28 < 1)
  {
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = v28 - 1;
  if (v28 == 1)
  {
    goto LABEL_83;
  }

  v31 = 0;
  if (result)
  {
    v32 = (result + 1);
    while (1)
    {
      v33 = *v32 - 48;
      if (v33 > 9)
      {
        goto LABEL_83;
      }

      v34 = 10 * v31;
      if ((v31 * 10) >> 64 != (10 * v31) >> 63)
      {
        goto LABEL_83;
      }

      v31 = v34 - v33;
      if (__OFSUB__(v34, v33))
      {
        goto LABEL_83;
      }

      ++v32;
      if (!--v27)
      {
        goto LABEL_84;
      }
    }
  }

LABEL_75:
  LOBYTE(v27) = 0;
LABEL_84:
  v53 = v27;
  v49 = v27;
LABEL_85:
  (*(v6 + 8))(v8, v5);
  sub_25B7662B4(v14);

  if (v49)
  {
    return 0;
  }

  return v31;
}

BOOL sub_25B76608C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_25B7660BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25B7660E8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_25B7661D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25B766204@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25B766F10(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_25B766244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AC8, &qword_25B791BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B7662B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AC8, &qword_25B791BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unsigned __int8 *sub_25B76631C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25B7906D8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25B766A28(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25B790A98();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
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

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
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

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_25B7668AC()
{
  result = qword_27FBA1AD0;
  if (!qword_27FBA1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1AD0);
  }

  return result;
}

unint64_t sub_25B766904()
{
  result = qword_27FBA1AD8;
  if (!qword_27FBA1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1AD8);
  }

  return result;
}

unint64_t sub_25B76695C()
{
  result = qword_27FBA1AE0;
  if (!qword_27FBA1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1AE0);
  }

  return result;
}

unint64_t sub_25B7669B4()
{
  result = qword_27FBA1AE8;
  if (!qword_27FBA1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1AE8);
  }

  return result;
}

uint64_t sub_25B766A28(uint64_t a1, unint64_t a2)
{
  v2 = sub_25B7906E8();
  v6 = sub_25B766AA8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_25B766AA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_25B7909C8();
    if (!v9 || (v10 = v9, v11 = sub_25B766C00(v9, 0), v12 = sub_25B766C74(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_25B790668();

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
      return sub_25B790668();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_25B790A98();
LABEL_4:

  return sub_25B790668();
}

void *sub_25B766C00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF0, ",)");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_25B766C74(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_25B766E94(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25B7906B8();
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
          result = sub_25B790A98();
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

    result = sub_25B766E94(v12, a6, a7);
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

    result = sub_25B790698();
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

unint64_t sub_25B766E94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25B7906C8();
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
    v5 = MEMORY[0x25F86CE30](15, a1 >> 16);
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

uint64_t sub_25B766F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_25B766F54()
{
  type metadata accessor for GeoServicesUtility();
  result = swift_initStaticObject();
  static GeoServicesUtility.shared = result;
  return result;
}

uint64_t *GeoServicesUtility.shared.unsafeMutableAddressor()
{
  if (qword_27FBA19A0 != -1)
  {
    swift_once();
  }

  return &static GeoServicesUtility.shared;
}

uint64_t static GeoServicesUtility.shared.getter()
{
  type metadata accessor for GeoServicesUtility();

  return swift_initStaticObject();
}

uint64_t GeoServicesUtility.isDaylight(coordinate:date:)()
{
  GEOLocationCoordinate2DMake();
  sub_25B78FCB8();
  return geo_isDayLightForLocation();
}

uint64_t sub_25B7670C0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v190 = a3;
  v206 = a4;
  v186 = sub_25B78FD88();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v184 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v183 = (&v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v180 = &v173 - v11;
  MEMORY[0x28223BE20](v10);
  v188 = &v173 - v12;
  v197 = sub_25B790348();
  v194 = *(v197 - 8);
  v13 = MEMORY[0x28223BE20](v197);
  v177 = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v181 = &v173 - v16;
  MEMORY[0x28223BE20](v15);
  v189 = &v173 - v17;
  v201 = sub_25B7903C8();
  v205 = *(v201 - 8);
  v18 = MEMORY[0x28223BE20](v201);
  v182 = &v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v179 = &v173 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v193 = &v173 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v196 = &v173 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v187 = &v173 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v191 = &v173 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v195 = &v173 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v199 = &v173 - v33;
  MEMORY[0x28223BE20](v32);
  v198 = &v173 - v34;
  v35 = sub_25B7903B8();
  v36 = *(v35 - 8);
  v202 = v35;
  v203 = v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v173 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37);
  v192 = &v173 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v204 = &v173 - v43;
  MEMORY[0x28223BE20](v42);
  v200 = &v173 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B00, &unk_25B791EF0);
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v48 = &v173 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B08, &unk_25B791E50);
  v50 = MEMORY[0x28223BE20](v49 - 8);
  v52 = &v173 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v54 = &v173 - v53;
  v178 = a1;
  sub_25B7689C8(&v173 - v53);
  sub_25B769604(v54, v52, &qword_27FBA1B08, &unk_25B791E50);
  if ((*(v46 + 48))(v52, 1, v45) == 1)
  {
    sub_25B76966C(v54, &qword_27FBA1B08, &unk_25B791E50);
    sub_25B76966C(v52, &qword_27FBA1B08, &unk_25B791E50);
    v55 = type metadata accessor for PrecipitationOutlook(0);
    v56 = *(*(v55 - 8) + 56);
    v57 = v206;
LABEL_35:
    v120 = 1;
    return v56(v57, v120, 1, v55);
  }

  v176 = v54;
  (*(v46 + 32))(v48, v52, v45);
  v58 = sub_25B7903F8();
  MEMORY[0x28223BE20](v58);
  *(&v173 - 2) = a2;
  v60 = sub_25B7690F8(sub_25B7693CC, (&v173 - 4), v59);
  v61 = *(v60 + 16);
  v62 = v48;
  if (v61 < 2)
  {
    v79 = v203;
    v80 = v201;
    if (v61)
    {
      v81 = v202;
      (*(v203 + 16))(v39, v60 + ((*(v203 + 80) + 32) & ~*(v203 + 80)), v202);

      v82 = v192;
      (*(v79 + 32))(v192, v39, v81);
      if (sub_25B77FD6C(a2))
      {
        v83 = v46;
        v175 = v45;
        v84 = v182;
        sub_25B790378();
        v85 = v82;
        v86 = v183;
        sub_25B77FFA0(v183);
        (*(v205 + 8))(v84, v80);
        v87 = v194;
        v88 = v197;
        if ((*(v194 + 48))(v86, 1, v197) != 1)
        {
          v143 = v177;
          (*(v87 + 32))(v177, v86, v88);
          if (qword_27FBA1990 != -1)
          {
            swift_once();
          }

          v144 = v62;
          v145 = sub_25B790498();
          __swift_project_value_buffer(v145, qword_27FBA4948);
          v146 = sub_25B790478();
          v147 = sub_25B790918();
          if (os_log_type_enabled(v146, v147))
          {
            v148 = swift_slowAlloc();
            *v148 = 0;
            _os_log_impl(&dword_25B75E000, v146, v147, "NHP indicates precipitation.", v148, 2u);
            MEMORY[0x25F86DA50](v148, -1, -1);
          }

          v149 = type metadata accessor for PrecipitationOutlook(0);
          v150 = v149[8];
          v151 = v206;
          (*(v87 + 16))(v206 + v150, v143, v88);
          (*(v87 + 56))(v151 + v150, 0, 1, v88);
          type metadata accessor for PrecipitationOutlook.State(0);
          swift_storeEnumTagMultiPayload();
          v152 = v149[9];
          v153 = sub_25B78FF28();
          (*(*(v153 - 8) + 16))(v151 + v152, v190, v153);
          sub_25B78FD58();
          (*(v87 + 8))(v143, v88);
          (*(v203 + 8))(v192, v202);
          (*(v83 + 8))(v144, v175);
          sub_25B76966C(v176, &qword_27FBA1B08, &unk_25B791E50);
          *(v151 + v149[5]) = 0;
          *(v151 + v149[6]) = 1;
          *(v151 + v149[7]) = 0;
          v56 = *(*(v149 - 1) + 56);
          v57 = v151;
          goto LABEL_52;
        }

        (*(v79 + 8))(v85, v81);
        sub_25B76966C(v86, &qword_27FBA1AF8, &unk_25B791E40);
        v45 = v175;
        v46 = v83;
      }

      else
      {
        (*(v79 + 8))(v82, v81);
      }
    }

    else
    {
    }

    v89 = v206;
    if (qword_27FBA1990 != -1)
    {
      swift_once();
    }

    v90 = sub_25B790498();
    __swift_project_value_buffer(v90, qword_27FBA4948);
    v91 = sub_25B790478();
    v92 = sub_25B790948();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_25B75E000, v91, v92, "No valid summaries in the minute forecast.", v93, 2u);
      MEMORY[0x25F86DA50](v93, -1, -1);
    }

    (*(v46 + 8))(v62, v45);
    v94 = v176;
    goto LABEL_34;
  }

  v174 = v46;
  v177 = a2;
  v175 = v45;
  v63 = v202;
  v64 = v203 + 16;
  v65 = *(v203 + 16);
  v66 = v60 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
  v67 = v200;
  v65(v200, v66, v202);
  v65(v204, v66 + *(v64 + 56), v63);

  v68 = v198;
  sub_25B790378();
  v69 = v205;
  v70 = *(v205 + 104);
  v71 = v62;
  v72 = v199;
  LODWORD(v192) = *MEMORY[0x277CE3390];
  v73 = v201;
  v70(v199);
  v182 = sub_25B7696CC(&qword_27FBA1B10, MEMORY[0x277CE33B8], MEMORY[0x277CE33C8]);
  LOBYTE(v66) = sub_25B790608();
  v74 = v72;
  v75 = v71;
  v76 = *(v69 + 8);
  v76(v74, v73);
  v205 = v69 + 8;
  v76(v68, v73);
  v77 = v196;
  v183 = v70;
  v173 = v75;
  if (v66)
  {
    goto LABEL_22;
  }

  sub_25B790378();
  v78 = v191;
  (v70)(v191, v192, v73);
  sub_25B7696CC(&qword_27FBA1B18, MEMORY[0x277CE33B8], MEMORY[0x277CE33D0]);
  sub_25B790708();
  sub_25B790708();
  if (v209 == v207 && v210 == v208)
  {
    v76(v78, v73);
    v76(v195, v73);

    v67 = v200;
    goto LABEL_20;
  }

  v95 = sub_25B790BE8();
  v76(v78, v73);
  v76(v195, v73);

  v67 = v200;
  v70 = v183;
  if ((v95 & 1) == 0)
  {
LABEL_22:
    sub_25B790378();
    v101 = v193;
    (v70)(v193, v192, v73);
    sub_25B7696CC(&qword_27FBA1B18, MEMORY[0x277CE33B8], MEMORY[0x277CE33D0]);
    sub_25B790708();
    sub_25B790708();
    if (v209 == v207 && v210 == v208)
    {
      v76(v101, v73);
      v76(v77, v73);

      v102 = v174;
    }

    else
    {
      v103 = sub_25B790BE8();
      v76(v101, v73);
      v76(v77, v73);

      v102 = v174;
      if ((v103 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v104 = v198;
    sub_25B790378();
    v105 = v199;
    (v183)(v199, v192, v73);
    v106 = sub_25B790608();
    v76(v105, v73);
    v76(v104, v73);
    if ((v106 & 1) == 0)
    {
      v107 = v179;
      sub_25B790378();
      v108 = v180;
      sub_25B77FFA0(v180);
      v76(v107, v73);
      v109 = v194;
      v110 = v197;
      if ((*(v194 + 48))(v108, 1, v197) == 1)
      {
        sub_25B76966C(v108, &qword_27FBA1AF8, &unk_25B791E40);
        v102 = v174;
        v67 = v200;
        goto LABEL_29;
      }

      v205 = *(v109 + 32);
      (v205)(v181, v108, v110);
      if (qword_27FBA1990 != -1)
      {
        swift_once();
      }

      v154 = sub_25B790498();
      __swift_project_value_buffer(v154, qword_27FBA4948);
      v155 = sub_25B790478();
      v156 = sub_25B790918();
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        *v157 = 0;
        _os_log_impl(&dword_25B75E000, v155, v156, "NHP indicates no precipitation currently, but will soon.", v157, 2u);
        MEMORY[0x25F86DA50](v157, -1, -1);
      }

      v158 = v185;
      v159 = v206;
      v160 = v186;
      (*(v185 + 16))(v206, v177, v186);
      v161 = v184;
      v162 = v204;
      sub_25B7903A8();
      sub_25B78FCE8();
      v164 = v163;
      (*(v158 + 8))(v161, v160);
      sub_25B790398();
      v166 = v165;
      v167 = v202;
      v168 = *(v203 + 8);
      v168(v162, v202);
      v168(v200, v167);
      (*(v174 + 8))(v173, v175);
      sub_25B76966C(v176, &qword_27FBA1B08, &unk_25B791E50);
      v149 = type metadata accessor for PrecipitationOutlook(0);
      v169 = v159 + v149[8];
      v170 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
      (*(v109 + 104))(v169, *MEMORY[0x277CE3250], v110);
      (v205)(v169 + v170, v181, v110);
      (*(v109 + 56))(v169 + v170, 0, 1, v110);
      type metadata accessor for PrecipitationOutlook.State(0);
      swift_storeEnumTagMultiPayload();
      v171 = v149[9];
      v172 = sub_25B78FF28();
      (*(*(v172 - 8) + 16))(v159 + v171, v190, v172);
      *(v159 + v149[5]) = v164;
      *(v159 + v149[6]) = 1;
      *(v159 + v149[7]) = v166;
      v56 = *(*(v149 - 1) + 56);
      v57 = v159;
LABEL_52:
      v120 = 0;
      v55 = v149;
      return v56(v57, v120, 1, v55);
    }

LABEL_29:
    if (qword_27FBA1990 != -1)
    {
      swift_once();
    }

    v111 = sub_25B790498();
    __swift_project_value_buffer(v111, qword_27FBA4948);
    v112 = sub_25B790478();
    v113 = sub_25B790938();
    v114 = os_log_type_enabled(v112, v113);
    v89 = v206;
    v115 = v175;
    v116 = v176;
    if (v114)
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_25B75E000, v112, v113, "NHP found summaries, but we can't use any of them.", v117, 2u);
      MEMORY[0x25F86DA50](v117, -1, -1);
    }

    v118 = *(v203 + 8);
    v119 = v202;
    v118(v204, v202);
    v118(v67, v119);
    (*(v102 + 8))(v173, v115);
    v94 = v116;
LABEL_34:
    sub_25B76966C(v94, &qword_27FBA1B08, &unk_25B791E50);
    v55 = type metadata accessor for PrecipitationOutlook(0);
    v56 = *(*(v55 - 8) + 56);
    v57 = v89;
    goto LABEL_35;
  }

LABEL_20:
  v96 = v174;
  v97 = v187;
  sub_25B790378();
  v98 = v188;
  sub_25B77FFA0(v188);
  v76(v97, v73);
  v99 = v194;
  v100 = v197;
  if ((*(v194 + 48))(v98, 1, v197) == 1)
  {
    sub_25B76966C(v98, &qword_27FBA1AF8, &unk_25B791E40);
    v70 = v183;
    goto LABEL_22;
  }

  v205 = *(v99 + 32);
  (v205)(v189, v98, v100);
  v122 = v99;
  if (qword_27FBA1990 != -1)
  {
    swift_once();
  }

  v123 = sub_25B790498();
  __swift_project_value_buffer(v123, qword_27FBA4948);
  v124 = sub_25B790478();
  v125 = sub_25B790918();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    *v126 = 0;
    _os_log_impl(&dword_25B75E000, v124, v125, "NHP indicates precipitation and a stop later.", v126, 2u);
    MEMORY[0x25F86DA50](v126, -1, -1);
  }

  v127 = v185;
  v128 = v206;
  v129 = v177;
  v130 = v186;
  (*(v185 + 16))(v206, v177, v186);
  v131 = v184;
  v132 = v204;
  sub_25B7903A8();
  sub_25B78FCE8();
  v134 = v133;
  (*(v127 + 8))(v131, v130);
  LOBYTE(v129) = sub_25B7801F4(v129);
  v135 = v202;
  v136 = *(v203 + 8);
  v136(v132, v202);
  v136(v200, v135);
  (*(v96 + 8))(v173, v175);
  sub_25B76966C(v176, &qword_27FBA1B08, &unk_25B791E50);
  v137 = type metadata accessor for PrecipitationOutlook(0);
  v138 = v128 + v137[8];
  v139 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
  v140 = v197;
  (v205)(v138, v189, v197);
  (*(v122 + 56))(v138, 0, 1, v140);
  (*(v122 + 104))(v138 + v139, *MEMORY[0x277CE3250], v140);
  type metadata accessor for PrecipitationOutlook.State(0);
  swift_storeEnumTagMultiPayload();
  v141 = v137[9];
  v142 = sub_25B78FF28();
  (*(*(v142 - 8) + 16))(v128 + v141, v190, v142);
  *(v128 + v137[5]) = v134;
  *(v128 + v137[6]) = v129 & 1;
  *(v128 + v137[7]) = 0;
  return (*(*(v137 - 1) + 56))(v128, 0, 1, v137);
}

uint64_t sub_25B7689C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25B7903C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v43 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = v29 - v6;
  v41 = sub_25B7903B8();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B08, &unk_25B791E50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B00, &unk_25B791EF0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - v14;
  sub_25B790118();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25B76966C(v11, &qword_27FBA1B08, &unk_25B791E50);
    return (*(v13 + 56))(a1, 1, 1, v12);
  }

  else
  {
    v32 = v12;
    v33 = a1;
    v31 = v13;
    v29[0] = *(v13 + 32);
    v29[1] = v13 + 32;
    (v29[0])(v15, v11, v12);
    v30 = v15;
    result = sub_25B7903F8();
    v17 = 0;
    v38 = *(result + 16);
    v39 = result;
    v37 = v7 + 16;
    v36 = *MEMORY[0x277CE3390];
    v18 = (v3 + 8);
    v34 = v7 + 8;
    v35 = (v3 + 104);
    v19 = v40;
    v20 = v42;
    while (1)
    {
      if (v38 == v17)
      {

        v27 = v31;
        v28 = v32;
        (*(v31 + 8))(v30, v32);
        return (*(v27 + 56))(v33, 1, 1, v28);
      }

      if (v17 >= *(v39 + 16))
      {
        break;
      }

      v21 = v41;
      (*(v7 + 16))(v19, v39 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17++, v41);
      sub_25B790378();
      v22 = v43;
      (*v35)(v43, v36, v2);
      sub_25B7696CC(&qword_27FBA1B10, MEMORY[0x277CE33B8], MEMORY[0x277CE33C8]);
      v23 = sub_25B790608();
      v24 = *v18;
      (*v18)(v22, v2);
      v24(v20, v2);
      result = (*(v7 + 8))(v19, v21);
      if ((v23 & 1) == 0)
      {

        v26 = v32;
        v25 = v33;
        (v29[0])(v33, v30, v32);
        return (*(v31 + 56))(v25, 0, 1, v26);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25B768E94(uint64_t a1, uint64_t a2)
{
  v2 = sub_25B78FD88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  sub_25B790388();
  sub_25B769604(v11, v9, &qword_27FBA1B38, &qword_25B791E70);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_25B76966C(v11, &qword_27FBA1B38, &qword_25B791E70);
    sub_25B76966C(v9, &qword_27FBA1B38, &qword_25B791E70);
    v12 = 1;
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    sub_25B7696CC(&qword_27FBA1B40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v13 = sub_25B7905F8();
    (*(v3 + 8))(v5, v2);
    sub_25B76966C(v11, &qword_27FBA1B38, &qword_25B791E70);
    v12 = v13 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_25B7690F8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_25B7903B8();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25B7693EC(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_25B7693EC((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

void *sub_25B7693EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B76942C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25B76940C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B769714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25B76942C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B30, &qword_25B791E68);
  v10 = *(sub_25B7903B8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_25B7903B8() - 8);
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

uint64_t sub_25B769604(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25B76966C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25B7696CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_25B769714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B48, &qword_25B791E78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t UVIndex.ExposureCategory.activeColor.getter(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      return sub_25B790528();
    }

    else
    {
      return MEMORY[0x282133478]();
    }
  }

  else if (a1 == 2)
  {
    return MEMORY[0x282133498]();
  }

  else if (a1 == 3)
  {
    return MEMORY[0x2821333E8]();
  }

  else
  {
    return MEMORY[0x2821334A8]();
  }
}

uint64_t sub_25B76984C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B50, &qword_25B791E90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = *(a4 + 16);

  if (v12)
  {
    v13 = (a4 + 32);
    while (1)
    {
      v14 = v13[3];
      v15 = v13[4];
      __swift_project_boxed_opaque_existential_1(v13, v14);
      (*(v15 + 16))(a1, a2, a3, v14, v15);
      v16 = type metadata accessor for PrecipitationOutlook(0);
      if ((*(*(v16 - 8) + 48))(v11, 1, v16) != 1)
      {
        break;
      }

      sub_25B769FD8(v11);
      v13 += 5;
      if (!--v12)
      {
        goto LABEL_5;
      }
    }

    return sub_25B76A040(v11, v28);
  }

  else
  {
LABEL_5:

    if (qword_27FBA1990 != -1)
    {
      swift_once();
    }

    v17 = sub_25B790498();
    __swift_project_value_buffer(v17, qword_27FBA4948);
    v18 = sub_25B790478();
    v19 = sub_25B790928();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25B75E000, v18, v19, "No preciptiation in daily forecast, therefore it will not rain.", v20, 2u);
      MEMORY[0x25F86DA50](v20, -1, -1);
    }

    v21 = sub_25B78FD88();
    v22 = v28;
    (*(*(v21 - 8) + 16))(v28, a2, v21);
    v23 = type metadata accessor for PrecipitationOutlook(0);
    type metadata accessor for PrecipitationOutlook.State(0);
    swift_storeEnumTagMultiPayload();
    v24 = v23[9];
    v25 = sub_25B78FF28();
    result = (*(*(v25 - 8) + 16))(v22 + v24, a3, v25);
    *(v22 + v23[5]) = 0x412A5E0000000000;
    *(v22 + v23[6]) = 1;
    *(v22 + v23[7]) = 0;
  }

  return result;
}

uint64_t PrecipitationOutlookFormatter.outlook(for:at:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v42 = a3;
  v11 = sub_25B790498();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B50, &qword_25B791E90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = *(a5 + 24);
  v35 = a4;
  v36 = v6;
  v37 = a5;
  result = v16(a4, a5);
  v18 = result;
  v19 = *(result + 16);
  if (v19)
  {
    v20 = 0;
    v21 = result + 32;
    while (v20 < *(v18 + 16))
    {
      sub_25B769EE4(v21, v43);
      v22 = v44;
      v23 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      (*(v23 + 16))(a1, a2, v42, v22, v23);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v24 = type metadata accessor for PrecipitationOutlook(0);
      if ((*(*(v24 - 8) + 48))(v15, 1, v24) != 1)
      {

        return sub_25B76A040(v15, v41);
      }

      ++v20;
      result = sub_25B769FD8(v15);
      v21 += 40;
      if (v19 == v20)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v25 = v38;
    (*(v37 + 16))(v35);
    v26 = sub_25B790478();
    v27 = sub_25B790928();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_25B75E000, v26, v27, "No preciptiation in daily forecast, therefore it will not rain.", v28, 2u);
      MEMORY[0x25F86DA50](v28, -1, -1);
    }

    (*(v39 + 8))(v25, v40);
    v29 = sub_25B78FD88();
    v30 = v41;
    (*(*(v29 - 8) + 16))(v41, a2, v29);
    v31 = type metadata accessor for PrecipitationOutlook(0);
    type metadata accessor for PrecipitationOutlook.State(0);
    swift_storeEnumTagMultiPayload();
    v32 = v31[9];
    v33 = sub_25B78FF28();
    result = (*(*(v33 - 8) + 16))(v30 + v32, v42, v33);
    *(v30 + v31[5]) = 0x412A5E0000000000;
    *(v30 + v31[6]) = 1;
    *(v30 + v31[7]) = 0;
  }

  return result;
}

uint64_t sub_25B769EE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_25B769FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B50, &qword_25B791E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B76A040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationOutlook(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PrecipitationOutlookFormatter.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FBA1990 != -1)
  {
    swift_once();
  }

  v2 = sub_25B790498();
  v3 = __swift_project_value_buffer(v2, qword_27FBA4948);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25B76A16C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FBA1990 != -1)
  {
    swift_once();
  }

  v2 = sub_25B790498();
  v3 = __swift_project_value_buffer(v2, qword_27FBA4948);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t LocationSummary.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LocationSummary.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LocationSummary.init(name:isLocal:timeZone:id:coordinates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a5;
  *(a7 + 3) = a6;
  v14 = type metadata accessor for LocationSummary(0);
  v15 = v14[6];
  v16 = sub_25B78FF28();
  result = (*(*(v16 - 8) + 32))(&a7[v15], a4, v16);
  a7[v14[7]] = a3;
  v18 = &a7[v14[8]];
  *v18 = a8;
  v18[1] = a9;
  return result;
}

uint64_t sub_25B76A3C4()
{
  v0 = sub_25B78FF28();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LocationSummary(0);
  __swift_allocate_value_buffer(v4, static LocationSummary.invalid);
  v5 = __swift_project_value_buffer(v4, static LocationSummary.invalid);
  sub_25B78FF18();
  v6 = *MEMORY[0x277CE4278];
  v7 = *(MEMORY[0x277CE4278] + 8);
  *v5 = 0;
  *(v5 + 8) = 0xE000000000000000;
  strcpy((v5 + 16), "nil-location");
  *(v5 + 29) = 0;
  *(v5 + 30) = -5120;
  result = (*(v1 + 32))(v5 + v4[6], v3, v0);
  *(v5 + v4[7]) = 0;
  v9 = (v5 + v4[8]);
  *v9 = v6;
  v9[1] = v7;
  return result;
}

uint64_t LocationSummary.invalid.unsafeMutableAddressor()
{
  if (qword_27FBA19A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocationSummary(0);

  return __swift_project_value_buffer(v0, static LocationSummary.invalid);
}

uint64_t static LocationSummary.invalid.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FBA19A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocationSummary(0);
  v3 = __swift_project_value_buffer(v2, static LocationSummary.invalid);

  return sub_25B76A5EC(v3, a1);
}

uint64_t sub_25B76A5EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t LocationSummary.description.getter()
{
  MEMORY[0x25F86CE10](*(v0 + 16), *(v0 + 24));
  MEMORY[0x25F86CE10](62, 0xE100000000000000);
  return 0xD000000000000012;
}

unint64_t sub_25B76A6B8()
{
  MEMORY[0x25F86CE10](*(v0 + 16), *(v0 + 24));
  MEMORY[0x25F86CE10](62, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t sub_25B76A718@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t LocationForecastSummary.forecast.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationForecastSummary(0) + 20);
  v4 = sub_25B790128();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_25B76A7D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t LocationForecastSummary.init(location:forecast:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B58, &unk_25B791EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B60, &unk_25B7922B0);
  MEMORY[0x28223BE20](v7 - 8);
  v35 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B68, &unk_25B791ED0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B08, &unk_25B791E50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B70, &qword_25B791EE0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B78, &qword_25B791EE8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v35 - v19;
  v21 = sub_25B790128();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for LocationForecastSummary(0);
  _s25NanoWeatherKitUICompanion23LocationForecastSummaryV2id10Foundation4UUIDVvpfi_0();
  v38 = a1;
  v26 = a1;
  v27 = v37;
  sub_25B76A5EC(v26, a3);
  sub_25B76B01C(v27, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_25B76966C(v20, &qword_27FBA1B78, &qword_25B791EE8);
    v28 = sub_25B790228();
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B00, &unk_25B791EF0);
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
    (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
    (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
    v32 = sub_25B790368();
    (*(*(v32 - 8) + 56))(v36, 1, 1, v32);
    sub_25B7900D8();
    sub_25B76966C(v27, &qword_27FBA1B78, &qword_25B791EE8);
    return sub_25B76B08C(v38);
  }

  else
  {
    sub_25B76966C(v27, &qword_27FBA1B78, &qword_25B791EE8);
    sub_25B76B08C(v38);
    v34 = *(v22 + 32);
    v34(v24, v20, v21);
    return (v34)(a3 + *(v25 + 20), v24, v21);
  }
}

BOOL LocationForecastSummary.hasNHP.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B08, &unk_25B791E50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  type metadata accessor for LocationForecastSummary(0);
  sub_25B790118();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B00, &unk_25B791EF0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  sub_25B76966C(v2, &qword_27FBA1B08, &unk_25B791E50);
  return v4;
}

uint64_t sub_25B76AE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_25B78FDA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL _s25NanoWeatherKitUICompanion15LocationSummaryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_25B790BE8()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (sub_25B790BE8()) && (v6 = type metadata accessor for LocationSummary(0), (MEMORY[0x25F86C690](a1 + v6[6], a2 + v6[6])) && *(a1 + v6[7]) == *(a2 + v6[7]) && (v7 = v6[8], v8 = (a1 + v7), v9 = *(a1 + v7), v10 = (a2 + v7), v9 == *v10)))
  {
    return v8[1] == v10[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25B76AFE4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B76B01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B78, &qword_25B791EE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B76B08C(uint64_t a1)
{
  v2 = type metadata accessor for LocationSummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B76B0F8()
{
  result = qword_27FBA1B90;
  if (!qword_27FBA1B90)
  {
    sub_25B78FDA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1B90);
  }

  return result;
}

uint64_t sub_25B76B164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25B78FF28();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25B76B224(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25B78FF28();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25B76B2C8(uint64_t a1)
{
  sub_25B78FF28();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLLocationCoordinate2D();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25B76B378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationSummary(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_25B790128();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_25B78FDA8();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_25B76B4CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LocationSummary(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_25B790128();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_25B78FDA8();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_25B76B618(uint64_t a1)
{
  result = type metadata accessor for LocationSummary(319);
  if (v2 <= 0x3F)
  {
    result = sub_25B790128();
    if (v3 <= 0x3F)
    {
      result = sub_25B78FDA8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

id sub_25B76B6B4()
{
  v0 = sub_25B78FDF8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntegerFormatter();
  v4 = swift_allocObject();
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  *(v4 + 16) = v5;
  v6 = v5;
  sub_25B78FDC8();
  v7 = sub_25B78FDB8();
  (*(v1 + 8))(v3, v0);
  [v6 setLocale_];

  result = [*(v4 + 16) setMaximumFractionDigits_];
  static IntegerFormatter.shared = v4;
  return result;
}

uint64_t *IntegerFormatter.shared.unsafeMutableAddressor()
{
  if (qword_27FBA19B0 != -1)
  {
    swift_once();
  }

  return &static IntegerFormatter.shared;
}

uint64_t static IntegerFormatter.shared.getter()
{
  if (qword_27FBA19B0 != -1)
  {
    swift_once();
  }
}

Swift::String __swiftcall IntegerFormatter.formatValue(_:noValueStyle:)(Swift::Int_optional _, NanoWeatherKitUICompanion::FormatterNoValueStyle noValueStyle)
{
  if (_.is_nil || (v4 = *(v2 + 16), v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_], v6 = objc_msgSend(v4, sel_stringFromNumber_, v5), v5, !v6))
  {

    v10 = FormatterNoValueStyle.rawValue.getter(noValueStyle);
  }

  else
  {
    v7 = sub_25B790638();
    v9 = v8;

    v10 = v7;
    v11 = v9;
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t IntegerFormatter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::String_optional __swiftcall HourWeather.conditionIconName(isDaytime:)(Swift::Bool isDaytime)
{
  v2 = sub_25B790348();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B7900B8();
  v6 = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v5, isDaytime);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v9 = v6;
  v10 = v8;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t HourWeather.conditionIconName(coordinate:date:)()
{
  v9[3] = *MEMORY[0x277D85DE8];
  v0 = sub_25B790348();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B7900B8();
  if (qword_27FBA19A0 != -1)
  {
    swift_once();
  }

  GEOLocationCoordinate2DMake();
  v9[1] = v4;
  v9[2] = v5;
  sub_25B78FCB8();
  isDayLightForLocation = geo_isDayLightForLocation();
  v7 = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v3, isDayLightForLocation);
  (*(v1 + 8))(v3, v0);
  return v7;
}

uint64_t HourWeather.displayPrecipitationChance.getter()
{
  v0 = sub_25B790348();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B7900B8();
  isPrecipitationSbvg_0 = _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
  result = (*(v1 + 8))(v3, v0);
  if (isPrecipitationSbvg_0)
  {
    sub_25B790048();
    return sub_25B790758();
  }

  return result;
}

uint64_t sub_25B76BD50(void *a1)
{
  a1[1] = sub_25B76BDDC(&qword_27FBA1BB8, MEMORY[0x277CE31B8]);
  a1[2] = sub_25B76BDDC(&qword_27FBA1BC0, MEMORY[0x277CE31A8]);
  result = sub_25B76BDDC(&qword_27FBA1BC8, MEMORY[0x277CE31B0]);
  a1[3] = result;
  return result;
}

uint64_t sub_25B76BDDC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25B7900C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FormatterNoValueStyle.rawValue.getter(unsigned __int8 a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_27FBA19B8 == -1)
      {
        goto LABEL_7;
      }
    }

    else if (qword_27FBA19B8 == -1)
    {
LABEL_7:
      v2 = qword_27FBA1C18;
      v3 = sub_25B790618();
      v4 = sub_25B790618();
      v5 = sub_25B790618();
      v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

      v1 = sub_25B790638();
      return v1;
    }

    swift_once();
    goto LABEL_7;
  }

  return a1;
}

uint64_t sub_25B76BFD4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = FormatterNoValueStyle.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == FormatterNoValueStyle.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25B790BE8();
  }

  return v8 & 1;
}

uint64_t sub_25B76C05C()
{
  v1 = *v0;
  sub_25B790C18();
  FormatterNoValueStyle.rawValue.getter(v1);
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B76C0C0(uint64_t a1)
{
  FormatterNoValueStyle.rawValue.getter(*v1);
  sub_25B790678();
}

uint64_t sub_25B76C114(uint64_t a1)
{
  v2 = *v1;
  sub_25B790C18();
  FormatterNoValueStyle.rawValue.getter(v2);
  sub_25B790678();

  return sub_25B790C38();
}

unint64_t sub_25B76C174@<X0>(Swift::String *a1@<X0>, NanoWeatherKitUICompanion::FormatterNoValueStyle_optional *a2@<X8>)
{
  result = _s25NanoWeatherKitUICompanion21FormatterNoValueStyleO03rawG0ACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_25B76C1A4@<X0>(uint64_t *a1@<X8>)
{
  result = FormatterNoValueStyle.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

NanoWeatherKitUICompanion::PercentStyle_optional __swiftcall PercentStyle.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_25B790B08();

  if (v1 == 1)
  {
    v2.value = NanoWeatherKitUICompanion_PercentStyle_noPercent;
  }

  else
  {
    v2.value = NanoWeatherKitUICompanion_PercentStyle_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t PercentStyle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 37;
  }
}

uint64_t sub_25B76C25C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 37;
  }

  if (v2)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 37;
  }

  if (*a2)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
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

uint64_t sub_25B76C2E8()
{
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B76C350(uint64_t a1)
{
  sub_25B790678();
}

uint64_t sub_25B76C3A4(uint64_t a1)
{
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B76C408@<X0>(char *a2@<X8>)
{
  v3 = sub_25B790B08();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25B76C468(uint64_t *a1@<X8>)
{
  v2 = 37;
  if (*v1)
  {
    v2 = 0;
  }

  v3 = 0xE100000000000000;
  if (*v1)
  {
    v3 = 0xE000000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t _s25NanoWeatherKitUICompanion21FormatterNoValueStyleO03rawG0ACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
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

unint64_t sub_25B76C4EC()
{
  result = qword_27FBA1BD0;
  if (!qword_27FBA1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1BD0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25B76C5BC()
{
  result = qword_27FBA1BE8;
  if (!qword_27FBA1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1BE8);
  }

  return result;
}

uint64_t sub_25B76C640(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatterNoValueStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatterNoValueStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PercentStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PercentStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25B76C9CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_25B76D874(a3, a1, a2);
  sub_25B790808();
  sub_25B790858();
  if (v17[4] == v17[0])
  {
    v10 = a4(0);
    return (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }

  else
  {
    v12 = sub_25B7908A8();
    v14 = v13;
    v15 = a4(0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a5, v14, v15);
    v12(v17, 0);
    return (*(v16 + 56))(a5, 0, 1, v15);
  }
}

uint64_t sub_25B76CB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B70, &qword_25B791EE0);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v59 - v13;
  v14 = sub_25B78FD88();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x28223BE20](v14);
  v61 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_25B790348();
  v70 = *(v74 - 8);
  v16 = MEMORY[0x28223BE20](v74);
  v60 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v64 = &v59 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  v22 = sub_25B78FFC8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v69 = a2;
  v66 = a3;
  v26 = sub_25B76D2B8(a1, a2, a3, a4);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = 0;
    v72 = (v23 + 8);
    v73 = (v70 + 8);
    while (1)
    {
      if (v28 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      (*(v23 + 16))(v25, v26 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v28, v22);
      sub_25B78FFB8();
      isPrecipitationSbvg_0 = _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
      v5 = *v73;
      (*v73)(v21, v74);
      if (isPrecipitationSbvg_0)
      {
        break;
      }

      ++v28;
      (*v72)(v25, v22);
      if (v27 == v28)
      {
        goto LABEL_6;
      }
    }

    v59 = v22;

    if (qword_27FBA1990 == -1)
    {
      goto LABEL_8;
    }

LABEL_15:
    swift_once();
LABEL_8:
    v32 = sub_25B790498();
    __swift_project_value_buffer(v32, qword_27FBA4948);
    v33 = sub_25B790478();
    v34 = sub_25B790918();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v74;
    v37 = v70;
    v38 = v64;
    if (v35)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_25B75E000, v33, v34, "Daily forecast indicates precipitation.", v39, 2u);
      MEMORY[0x25F86DA50](v39, -1, -1);
    }

    v40 = v61;
    sub_25B78FF78();
    sub_25B78FCE8();
    v42 = v41;
    (*(v67 + 8))(v40, v68);
    v43 = fmax(v42, 86400.0);
    v44 = v63;
    sub_25B7900E8();
    v45 = sub_25B790228();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v44, 1, v45) == 1)
    {
      sub_25B76966C(v44, &qword_27FBA1B70, &qword_25B791EE0);
      (*(v37 + 104))(v38, *MEMORY[0x277CE3250], v36);
    }

    else
    {
      v47 = v60;
      sub_25B790218();
      (*(v46 + 8))(v44, v45);
      v48 = v47;
      v36 = v74;
      (*(v37 + 32))(v38, v48, v74);
    }

    v49 = v38;
    sub_25B78FFB8();
    v50 = v65;
    sub_25B780844(v65);
    v5(v21, v36);
    v51 = v71;
    (*(v67 + 16))(v71, v69, v68);
    sub_25B78FF58();
    v53 = v52;
    (*v72)(v25, v59);
    v54 = type metadata accessor for PrecipitationOutlook(0);
    v55 = v51 + v54[8];
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
    (*(v37 + 32))(v55, v49, v36);
    sub_25B76D804(v50, v55 + v56);
    type metadata accessor for PrecipitationOutlook.State(0);
    swift_storeEnumTagMultiPayload();
    v57 = v54[9];
    v58 = sub_25B78FF28();
    (*(*(v58 - 8) + 16))(v51 + v57, v66, v58);
    *(v51 + v54[5]) = v43;
    *(v51 + v54[6]) = 1;
    *(v51 + v54[7]) = v53;
    return (*(*(v54 - 1) + 56))(v51, 0, 1, v54);
  }

  else
  {
LABEL_6:

    v30 = type metadata accessor for PrecipitationOutlook(0);
    return (*(*(v30 - 8) + 56))(v71, 1, 1, v30);
  }
}

uint64_t sub_25B76D2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B60, &unk_25B7922B0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C00, &qword_25B793230);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  v17 = sub_25B78FD88();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v37 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v34 - v21;
  v40 = a1;
  sub_25B7900F8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  v24 = *(v23 - 8);
  v35 = *(v24 + 48);
  v36 = v24;
  if (v35(v10, 1, v23) == 1)
  {
    sub_25B76966C(v10, &qword_27FBA1B60, &unk_25B7922B0);
  }

  else
  {
    v34 = a4;
    sub_25B76C9CC(&qword_27FBA1B88, &qword_25B791F00, &qword_27FBA1C08, MEMORY[0x277CE3158], v13);
    (*(v36 + 8))(v10, v23);
    v25 = sub_25B78FFC8();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v13, 1, v25) != 1)
    {
      sub_25B78FF78();
      (*(v26 + 8))(v13, v25);
      (*(v18 + 56))(v16, 0, 1, v17);
      (*(v18 + 32))(v22, v16, v17);
      a4 = v34;
      v28 = v41;
      v29 = v37;
      goto LABEL_8;
    }

    sub_25B76966C(v13, &qword_27FBA1C00, &qword_25B793230);
    a4 = v34;
  }

  (*(v18 + 56))(v16, 1, 1, v17);
  sub_25B78FCC8();
  v27 = (*(v18 + 48))(v16, 1, v17);
  v28 = v41;
  v29 = v37;
  if (v27 != 1)
  {
    sub_25B76966C(v16, &qword_27FBA1B38, &qword_25B791E70);
  }

LABEL_8:
  v30 = v39;
  if (sub_25B78FD78())
  {
    sub_25B78FCF8();
  }

  else
  {
    (*(v18 + 16))(v29, v30, v17);
  }

  sub_25B7900F8();
  if (v35(v28, 1, v23) == 1)
  {
    sub_25B76966C(v28, &qword_27FBA1B60, &unk_25B7922B0);
    v31 = MEMORY[0x277D84F90];
  }

  else
  {
    v31 = sub_25B7703B4(v29, a4, 0);
    (*(v36 + 8))(v28, v23);
  }

  v32 = *(v18 + 8);
  v32(v29, v17);
  v32(v22, v17);
  return v31;
}

uint64_t sub_25B76D804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B76D874(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_25B76D8C8()
{
  type metadata accessor for NWKUIBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27FBA1C18 = result;
  return result;
}

uint64_t sub_25B76D9E0()
{
  type metadata accessor for VisibilityFormatter(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale;
  v2 = sub_25B78FDF8();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  static VisibilityFormatter.shared = v0;
  return result;
}

uint64_t *VisibilityFormatter.shared.unsafeMutableAddressor()
{
  if (qword_27FBA19C0 != -1)
  {
    swift_once();
  }

  return &static VisibilityFormatter.shared;
}

uint64_t static VisibilityFormatter.shared.getter()
{
  if (qword_27FBA19C0 != -1)
  {
    swift_once();
  }
}

uint64_t VisibilityFormatter.overrideLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale;
  swift_beginAccess();
  return sub_25B769604(v1 + v3, a1, &qword_27FBA1C20, &qword_25B792300);
}

uint64_t VisibilityFormatter.overrideLocale.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale;
  swift_beginAccess();
  sub_25B76DBD8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_25B76DBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t VisibilityFormatter.UnitStyle.hashValue.getter(unsigned __int8 a1)
{
  sub_25B790C18();
  MEMORY[0x25F86D3B0](a1);
  return sub_25B790C38();
}

uint64_t sub_25B76DD40()
{
  v1 = *v0;
  sub_25B790C18();
  MEMORY[0x25F86D3B0](v1);
  return sub_25B790C38();
}

uint64_t sub_25B76DDB4(uint64_t a1)
{
  v2 = *v1;
  sub_25B790C18();
  MEMORY[0x25F86D3B0](v2);
  return sub_25B790C38();
}

uint64_t VisibilityFormatter.string(for:unitStyle:noValueStyle:)(uint64_t a1, int a2, uint64_t a3)
{
  v100 = a3;
  LODWORD(v99) = a2;
  v106 = a1;
  v3 = sub_25B7905B8();
  v97 = *(v3 - 8);
  v98 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v94 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v93 = &v87 - v7;
  MEMORY[0x28223BE20](v6);
  v95 = &v87 - v8;
  v9 = sub_25B7905A8();
  v103 = *(v9 - 8);
  v104 = v9;
  MEMORY[0x28223BE20](v9);
  v102 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v91 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = &v87 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v87 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v88 = &v87 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v90 = &v87 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v87 - v23;
  v25 = sub_25B790908();
  v107 = *(v25 - 8);
  v108 = v25;
  v26 = MEMORY[0x28223BE20](v25);
  v92 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v87 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v87 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C28, &qword_25B792308);
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v87 - v35;
  v96 = sub_25B7908F8();
  v105 = *(v96 - 8);
  v37 = MEMORY[0x28223BE20](v96);
  v39 = &v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v87 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v87 - v43;
  if (v99)
  {
    if (v99 == 1)
    {
      (*(v107 + 104))(v30, *MEMORY[0x277D7B4B0], v108);
      v45 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale;
      v46 = v101;
      swift_beginAccess();
      sub_25B769604(v46 + v45, v18, &qword_27FBA1C20, &qword_25B792300);
      v47 = sub_25B78FDF8();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v18, 1, v47) == 1)
      {
        sub_25B76966C(v18, &qword_27FBA1C20, &qword_25B792300);
        v49 = v88;
        sub_25B78FDC8();
      }

      else
      {
        v49 = v88;
        (*(v48 + 32))(v88, v18, v47);
      }

      v67 = v97;
      v66 = v98;
      (*(v48 + 56))(v49, 0, 1, v47);
      sub_25B7907A8();
      v69 = v102;
      v68 = v103;
      v70 = v104;
      (*(v103 + 104))(v102, *MEMORY[0x277D7B3F8], v104);
      sub_25B790588();

      (*(v68 + 8))(v69, v70);
      sub_25B76966C(v49, &qword_27FBA1C20, &qword_25B792300);
      (*(v107 + 8))(v30, v108);
      v71 = v93;
      (*(v67 + 104))(v93, **(&unk_2799634F0 + v100), v66);
      sub_25B76E9D8();
      v72 = v96;
      v73 = sub_25B790998();
      v74 = v71;
      v44 = v42;
      v75 = v105;
    }

    else
    {
      v58 = v100;
      sub_25B7907C8();
      v59 = v92;
      (*(v107 + 104))(v92, *MEMORY[0x277D7B4B0], v108);
      v60 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale;
      v61 = v101;
      swift_beginAccess();
      v62 = v91;
      sub_25B769604(v61 + v60, v91, &qword_27FBA1C20, &qword_25B792300);
      v63 = sub_25B78FDF8();
      v64 = *(v63 - 8);
      if ((*(v64 + 48))(v62, 1, v63) == 1)
      {
        sub_25B76966C(v62, &qword_27FBA1C20, &qword_25B792300);
        v65 = v89;
        sub_25B78FDC8();
      }

      else
      {
        v65 = v89;
        (*(v64 + 32))(v89, v62, v63);
      }

      v72 = v96;
      v75 = v105;
      (*(v64 + 56))(v65, 0, 1, v63);
      v82 = v102;
      v81 = v103;
      v83 = v104;
      (*(v103 + 104))(v102, *MEMORY[0x277D7B3F8], v104);
      sub_25B790588();

      (*(v81 + 8))(v82, v83);
      sub_25B76966C(v65, &qword_27FBA1C20, &qword_25B792300);
      (*(v107 + 8))(v59, v108);
      v67 = v97;
      v84 = **(&unk_2799634F0 + v58);
      v85 = v94;
      v66 = v98;
      (*(v97 + 104))(v94, v84, v98);
      sub_25B76E9D8();
      v73 = sub_25B790998();
      v74 = v85;
      v44 = v39;
    }
  }

  else
  {
    v50 = v24;
    sub_25B76EA30();
    sub_25B78FA98();
    v99 = sub_25B790798();
    (*(v34 + 8))(v36, v33);
    (*(v107 + 104))(v32, *MEMORY[0x277D7B4B0], v108);
    v51 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale;
    v52 = v101;
    swift_beginAccess();
    v53 = v52 + v51;
    v54 = v90;
    sub_25B769604(v53, v90, &qword_27FBA1C20, &qword_25B792300);
    v55 = sub_25B78FDF8();
    v56 = *(v55 - 8);
    v57 = v32;
    if ((*(v56 + 48))(v54, 1, v55) == 1)
    {
      sub_25B76966C(v54, &qword_27FBA1C20, &qword_25B792300);
      sub_25B78FDC8();
    }

    else
    {
      (*(v56 + 32))(v50, v54, v55);
    }

    v67 = v97;
    v76 = v98;
    v72 = v96;
    (*(v56 + 56))(v50, 0, 1, v55);
    v78 = v102;
    v77 = v103;
    v79 = v104;
    (*(v103 + 104))(v102, *MEMORY[0x277D7B3F8], v104);
    sub_25B790588();

    (*(v77 + 8))(v78, v79);
    sub_25B76966C(v50, &qword_27FBA1C20, &qword_25B792300);
    (*(v107 + 8))(v57, v108);
    v80 = v95;
    v66 = v76;
    (*(v67 + 104))(v95, **(&unk_2799634F0 + v100), v76);
    sub_25B76E9D8();
    v73 = sub_25B790998();
    v74 = v80;
    v75 = v105;
  }

  (*(v67 + 8))(v74, v66);
  (*(v75 + 8))(v44, v72);
  return v73;
}

unint64_t sub_25B76E9D8()
{
  result = qword_27FBA1C30;
  if (!qword_27FBA1C30)
  {
    sub_25B7908F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1C30);
  }

  return result;
}

unint64_t sub_25B76EA30()
{
  result = qword_27FBA1A70;
  if (!qword_27FBA1A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBA1A70);
  }

  return result;
}

uint64_t VisibilityFormatter.localizedUnitString(for:unitStyle:)(uint64_t a1)
{
  v42 = a1;
  v43 = sub_25B7905B8();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_25B7905A8();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v34 - v8;
  v10 = sub_25B790908();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C28, &qword_25B792308);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v34 - v16;
  v18 = sub_25B7908F8();
  v35 = *(v18 - 8);
  v36 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B76EA30();
  sub_25B78FA98();
  sub_25B7907B8();
  (*(v15 + 8))(v17, v14);
  (*(v11 + 104))(v13, *MEMORY[0x277D7B4B0], v10);
  v21 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale;
  v22 = v34[1];
  swift_beginAccess();
  sub_25B769604(v22 + v21, v7, &qword_27FBA1C20, &qword_25B792300);
  v23 = sub_25B78FDF8();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v7, 1, v23) == 1)
  {
    sub_25B76966C(v7, &qword_27FBA1C20, &qword_25B792300);
    sub_25B78FDC8();
  }

  else
  {
    (*(v24 + 32))(v9, v7, v23);
  }

  (*(v24 + 56))(v9, 0, 1, v23);
  v26 = v37;
  v25 = v38;
  v27 = v39;
  (*(v38 + 104))(v37, *MEMORY[0x277D7B3F8], v39);
  sub_25B790588();

  (*(v25 + 8))(v26, v27);
  sub_25B76966C(v9, &qword_27FBA1C20, &qword_25B792300);
  (*(v11 + 8))(v13, v10);
  v29 = v40;
  v28 = v41;
  v30 = v43;
  (*(v41 + 104))(v40, *MEMORY[0x277D7B408], v43);
  sub_25B76E9D8();
  v31 = v36;
  v32 = sub_25B790998();
  (*(v28 + 8))(v29, v30);
  (*(v35 + 8))(v20, v31);
  return v32;
}

uint64_t VisibilityFormatter.description(for:noValueStyle:)(uint64_t a1, unsigned __int8 a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C38, &qword_25B792310);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C40, &qword_25B792318);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  sub_25B769604(a1, v6, &qword_27FBA1C38, &qword_25B792310);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25B76966C(v6, &qword_27FBA1C38, &qword_25B792310);
    return FormatterNoValueStyle.rawValue.getter(a2);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v15 = objc_opt_self();
    v16 = [v15 meters];
    sub_25B78FAB8();

    sub_25B78FA78();
    v17 = *(v8 + 8);
    v17(v11, v7);
    v18 = [v15 miles];
    sub_25B78FAB8();

    sub_25B78FA78();
    v17(v11, v7);
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v19 = qword_27FBA1C18;
    v20 = sub_25B790618();

    v21 = sub_25B790618();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    v23 = sub_25B790638();
    v17(v13, v7);
    return v23;
  }
}

uint64_t VisibilityFormatter.__deallocating_deinit()
{
  sub_25B76966C(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale, &qword_27FBA1C20, &qword_25B792300);

  return swift_deallocClassInstance();
}

unint64_t sub_25B76F50C()
{
  result = qword_27FBA1C48;
  if (!qword_27FBA1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1C48);
  }

  return result;
}

uint64_t type metadata accessor for VisibilityFormatter(uint64_t a1)
{
  result = qword_27FBA1C50;
  if (!qword_27FBA1C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B76F5B4(uint64_t a1)
{
  sub_25B76F644(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25B76F644(uint64_t a1)
{
  if (!qword_27FBA1C60)
  {
    sub_25B78FDF8();
    v1 = sub_25B7909B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FBA1C60);
    }
  }
}

uint64_t *WeatherConditionSymbolMapper.shared.unsafeMutableAddressor()
{
  if (qword_27FBA19C8 != -1)
  {
    swift_once();
  }

  return &static WeatherConditionSymbolMapper.shared;
}

uint64_t sub_25B76F6FC()
{
  type metadata accessor for WeatherConditionSymbolMapper();
  result = swift_initStaticObject();
  static WeatherConditionSymbolMapper.shared = result;
  return result;
}

uint64_t static WeatherConditionSymbolMapper.shared.getter()
{
  type metadata accessor for WeatherConditionSymbolMapper();

  return swift_initStaticObject();
}

uint64_t WeatherConditionSymbolMapper.conditionIconName(condition:coordinates:date:)(uint64_t a1)
{
  if (qword_27FBA19A0 != -1)
  {
    swift_once();
  }

  GEOLocationCoordinate2DMake();
  sub_25B78FCB8();
  isDayLightForLocation = geo_isDayLightForLocation();
  return _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(a1, isDayLightForLocation);
}

uint64_t _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(uint64_t a1, char a2)
{
  v4 = sub_25B790348();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277CE32F8])
  {
    return 0x6E732E64756F6C63;
  }

  if (v8 == *MEMORY[0x277CE3220])
  {
    return 0x747375642E6E7573;
  }

  if (v8 == *MEMORY[0x277CE3228])
  {
    return 0x6F6E732E646E6977;
  }

  if (v8 == *MEMORY[0x277CE32D8])
  {
    return 1684957559;
  }

  if (v8 == *MEMORY[0x277CE32B0])
  {
    goto LABEL_10;
  }

  v10 = v8;
  result = 0x69662E64756F6C63;
  if (v10 == *MEMORY[0x277CE32E0])
  {
    return result;
  }

  if (v10 != *MEMORY[0x277CE32F0])
  {
    if (v10 == *MEMORY[0x277CE3300])
    {
      return 2003791475;
    }

    if (v10 == *MEMORY[0x277CE32B8])
    {
      return 0x6F662E64756F6C63;
    }

    if (v10 == *MEMORY[0x277CE3270])
    {
      return 0xD000000000000012;
    }

    if (v10 != *MEMORY[0x277CE3240])
    {
      if (v10 == *MEMORY[0x277CE32E8])
      {
        return 0xD000000000000015;
      }

      if (v10 == *MEMORY[0x277CE3290])
      {
        return 0x61682E64756F6C63;
      }

      if (v10 == *MEMORY[0x277CE3298])
      {
        goto LABEL_31;
      }

      if (v10 == *MEMORY[0x277CE3308])
      {
        return 0xD000000000000014;
      }

      if (v10 == *MEMORY[0x277CE3310])
      {
        return 0x6E732E64756F6C63;
      }

      if (v10 == *MEMORY[0x277CE3288])
      {
        goto LABEL_10;
      }

      if (v10 == *MEMORY[0x277CE3318])
      {
        return 0x6E61636972727568;
      }

      if (v10 == *MEMORY[0x277CE3278])
      {
        goto LABEL_42;
      }

      if (v10 == *MEMORY[0x277CE3230])
      {
LABEL_10:
        if (a2)
        {
          return 0x2E78616D2E6E7573;
        }

        else
        {
          return 0x6174732E6E6F6F6DLL;
        }
      }

      if (v10 == *MEMORY[0x277CE3248])
      {
        return result;
      }

      if (v10 == *MEMORY[0x277CE3250])
      {
        if (a2)
        {
          return 0x75732E64756F6C63;
        }

        else
        {
          return 0x6F6D2E64756F6C63;
        }
      }

      if (v10 == *MEMORY[0x277CE32A0])
      {
        return 0x61722E64756F6C63;
      }

      if (v10 == *MEMORY[0x277CE3280])
      {
LABEL_42:
        if (a2)
        {
          return 0x6F622E64756F6C63;
        }

        else
        {
          return 0xD000000000000014;
        }
      }

      if (v10 == *MEMORY[0x277CE32C0])
      {
        return 0xD000000000000010;
      }

      if (v10 == *MEMORY[0x277CE32C8])
      {
LABEL_31:
        if (a2)
        {
          return 0x657A61682E6E7573;
        }

        else
        {
          return 0x7A61682E6E6F6F6DLL;
        }
      }

      if (v10 == *MEMORY[0x277CE32A8])
      {
        return 2003791475;
      }

      if (v10 == *MEMORY[0x277CE3258])
      {
        return 0xD000000000000014;
      }

      if (v10 == *MEMORY[0x277CE3238])
      {
        return 2003791475;
      }

      if (v10 == *MEMORY[0x277CE3218])
      {
        return 0xD000000000000013;
      }

      if (v10 == *MEMORY[0x277CE3260])
      {
        return 0xD000000000000014;
      }

      if (v10 == *MEMORY[0x277CE3268])
      {
        return 0x6C616369706F7274;
      }

      if (v10 == *MEMORY[0x277CE32D0])
      {
        return 1684957559;
      }

      if (v10 != *MEMORY[0x277CE3320])
      {
        (*(v5 + 8))(v7, v4);
        return 0;
      }
    }

    return 0xD000000000000010;
  }

  result = 0xD000000000000014;
  if (a2)
  {
    return 0xD000000000000012;
  }

  return result;
}

uint64_t WatchWeather.days(startingAt:size:sizeMustMatch:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B60, &unk_25B7922B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_25B7900F8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_25B76966C(v8, &qword_27FBA1B60, &unk_25B7922B0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v12 = sub_25B7703B4(a1, a2, a3 & 1);
    (*(v10 + 8))(v8, v9);
    return v12;
  }
}

uint64_t WatchWeather.hour(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B68, &unk_25B791ED0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_25B790108();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25B76966C(v6, &qword_27FBA1B68, &unk_25B791ED0);
    v9 = sub_25B7900C8();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  else
  {
    sub_25B771AB0(a1);
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      sub_25B790418();
      v12 = 0;
    }

    v13 = sub_25B7900C8();
    (*(*(v13 - 8) + 56))(a2, v12, 1, v13);
    return (*(v8 + 8))(v6, v7);
  }
}

uint64_t WatchWeather.hours(startingAt:size:sizeMustMatch:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B68, &unk_25B791ED0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_25B790108();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_25B76966C(v8, &qword_27FBA1B68, &unk_25B791ED0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v12 = sub_25B770690(a1, a2, a3 & 1);
    (*(v10 + 8))(v8, v9);
    return v12;
  }
}

uint64_t sub_25B7703B4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C98, &qword_25B792408);
  MEMORY[0x28223BE20](v7);
  v9 = (&v17 - v8);
  sub_25B771764(a1);
  if (v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  sub_25B773228(&qword_27FBA1C08, &qword_27FBA1B88, &qword_25B791F00, MEMORY[0x277CE37B8]);
  sub_25B790808();
  sub_25B790858();
  result = sub_25B790848();
  if (result < 0)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 <= 0)
  {
    sub_25B790808();
    sub_25B790858();
    result = sub_25B790848();
    a2 = result - v12;
    if (__OFSUB__(result, v12))
    {
LABEL_18:
      __break(1u);
      return result;
    }
  }

  v15 = v12 + a2;
  if (__OFADD__(v12, a2))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_25B790808();
  sub_25B790858();
  if (sub_25B790848() < v15)
  {
    sub_25B790808();
    sub_25B790858();
    v15 = sub_25B790848();
  }

  if (v12 >= v15)
  {
    return MEMORY[0x277D84F90];
  }

  v21 = v12;
  v22 = v15;
  sub_25B790808();
  result = sub_25B790858();
  if (v17 < v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  v20 = v17;
  sub_25B790828();
  (*(*(v13 - 8) + 16))(v9 + *(v7 + 40), v3, v13);
  *v9 = v12;
  v9[1] = v15;
  v16 = sub_25B771FB4(v9);
  sub_25B76966C(v9, &qword_27FBA1C98, &qword_25B792408);
  if ((a3 & 1) == 0)
  {
    return v16;
  }

  result = v16;
  if (v16[2] != a2)
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_25B770690(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C70, "x%");
  MEMORY[0x28223BE20](v7);
  v9 = (&v17 - v8);
  sub_25B771AB0(a1);
  if (v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  sub_25B773228(&qword_27FBA1C10, &qword_27FBA1B80, &qword_25B7922C0, MEMORY[0x277CE37B8]);
  sub_25B790808();
  sub_25B790858();
  result = sub_25B790848();
  if (result < 0)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 <= 0)
  {
    sub_25B790808();
    sub_25B790858();
    result = sub_25B790848();
    a2 = result - v12;
    if (__OFSUB__(result, v12))
    {
LABEL_18:
      __break(1u);
      return result;
    }
  }

  v15 = v12 + a2;
  if (__OFADD__(v12, a2))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_25B790808();
  sub_25B790858();
  if (sub_25B790848() < v15)
  {
    sub_25B790808();
    sub_25B790858();
    v15 = sub_25B790848();
  }

  if (v12 >= v15)
  {
    return MEMORY[0x277D84F90];
  }

  v21 = v12;
  v22 = v15;
  sub_25B790808();
  result = sub_25B790858();
  if (v17 < v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  v20 = v17;
  sub_25B790828();
  (*(*(v13 - 8) + 16))(v9 + *(v7 + 40), v3, v13);
  *v9 = v12;
  v9[1] = v15;
  v16 = sub_25B7721D0(v9);
  sub_25B76966C(v9, &qword_27FBA1C70, "x%");
  if ((a3 & 1) == 0)
  {
    return v16;
  }

  result = v16;
  if (v16[2] != a2)
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t WatchWeather.day(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B60, &unk_25B7922B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_25B7900F8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25B76966C(v6, &qword_27FBA1B60, &unk_25B7922B0);
    v9 = sub_25B78FFC8();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  else
  {
    sub_25B771764(a1);
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      sub_25B790418();
      v12 = 0;
    }

    v13 = sub_25B78FFC8();
    (*(*(v13 - 8) + 56))(a2, v12, 1, v13);
    return (*(v8 + 8))(v6, v7);
  }
}

uint64_t WatchWeather.weather(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B68, &unk_25B791ED0);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C68, "x%");
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v44 - v7;
  v50 = sub_25B790328();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_25B78FD88();
  v49 = *(v51 - 8);
  v10 = MEMORY[0x28223BE20](v51);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B70, &qword_25B791EE0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  v21 = sub_25B790228();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v2;
  sub_25B7900E8();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v18 = v20;
    v25 = v55;
  }

  else
  {
    v26 = *(v22 + 32);
    v46 = v22 + 32;
    v47 = a2;
    v45 = v26;
    v26(v24, v20, v21);
    sub_25B7901F8();
    sub_25B790318();
    (*(v48 + 8))(v9, v50);
    sub_25B78FCF8();
    v27 = *(v49 + 8);
    v28 = v51;
    v27(v12, v51);
    v25 = v55;
    v29 = sub_25B78FD28();
    v27(v14, v28);
    if (v29)
    {
      (*(v22 + 16))(v18, v24, v21);
      (*(v22 + 56))(v18, 0, 1, v21);
      sub_25B76966C(v18, &qword_27FBA1B70, &qword_25B791EE0);
      v30 = v47;
      *(v47 + 24) = v21;
      v30[4] = &protocol witness table for CurrentWeather;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
      return v45(boxed_opaque_existential_1, v24, v21);
    }

    (*(v22 + 56))(v18, 1, 1, v21);
    (*(v22 + 8))(v24, v21);
    a2 = v47;
  }

  sub_25B76966C(v18, &qword_27FBA1B70, &qword_25B791EE0);
  v33 = v53;
  sub_25B790108();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  v35 = *(v34 - 8);
  v36 = (*(v35 + 48))(v33, 1, v34);
  v37 = v54;
  if (v36 == 1)
  {
    sub_25B76966C(v33, &qword_27FBA1B68, &unk_25B791ED0);
    v38 = sub_25B7900C8();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
LABEL_12:
    result = sub_25B76966C(v37, &qword_27FBA1C68, "x%");
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
    return result;
  }

  sub_25B771AB0(v25);
  if (v39)
  {
    v40 = 1;
  }

  else
  {
    sub_25B790418();
    v40 = 0;
  }

  v41 = sub_25B7900C8();
  v42 = *(v41 - 8);
  (*(v42 + 56))(v37, v40, 1, v41);
  (*(v35 + 8))(v33, v34);
  if ((*(v42 + 48))(v37, 1, v41) == 1)
  {
    goto LABEL_12;
  }

  *(a2 + 24) = v41;
  *(a2 + 32) = &protocol witness table for HourWeather;
  v43 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(v42 + 32))(v43, v37, v41);
}

uint64_t sub_25B77125C@<X0>(uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v29 = a4;
  v6 = sub_25B790328();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B78FD88();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  v27 = v4;
  a2(v15);
  sub_25B790318();
  (*(v7 + 8))(v9, v6);
  sub_25B78FCF8();
  v18 = *(v11 + 8);
  v18(v14, v10);
  v19 = sub_25B78FD28();
  v18(v17, v10);
  v20 = v28(0);
  v21 = *(v20 - 8);
  if (v19)
  {
    v22 = v29;
    (*(*(v20 - 8) + 16))(v29, v27, v20);
    v23 = 0;
    v24 = v22;
  }

  else
  {
    v23 = 1;
    v24 = v29;
  }

  return (*(v21 + 56))(v24, v23, 1, v20);
}

uint64_t sub_25B7714D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v23 = sub_25B790328();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B78FD88();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = off_286D04100[0];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B00, &unk_25B791EF0);
  v22 = v2;
  v13(v14, &protocol witness table for <> Forecast<A>);
  sub_25B790318();
  (*(v3 + 8))(v5, v23);
  sub_25B78FCF8();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v16 = sub_25B78FD28();
  v15(v12, v6);
  v17 = *(v14 - 8);
  if (v16)
  {
    v18 = v25;
    (*(*(v14 - 8) + 16))(v25, v22, v14);
    v19 = 0;
    v20 = v18;
  }

  else
  {
    v19 = 1;
    v20 = v25;
  }

  return (*(v17 + 56))(v20, v19, 1, v14);
}

void sub_25B771764(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C00, &qword_25B793230);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_25B78FD88();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_25B76C96C(v3);
  v11 = sub_25B78FFC8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v3, 1, v11) == 1)
  {
    sub_25B76966C(v3, &qword_27FBA1C00, &qword_25B793230);
    return;
  }

  sub_25B78FF78();
  (*(v12 + 8))(v3, v11);
  (*(v5 + 32))(v10, v8, v4);
  sub_25B771E60();
  if (sub_25B7905F8())
  {
LABEL_9:
    (*(v5 + 8))(v10, v4);
    return;
  }

  sub_25B78FCE8();
  v14 = v13 / 86400.0;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v14 < 9.22337204e18)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
      sub_25B773228(&qword_27FBA1C08, &qword_27FBA1B88, &qword_25B791F00, MEMORY[0x277CE37B8]);
      sub_25B790808();
      sub_25B790858();
      sub_25B790848();
      (*(v5 + 8))(v10, v4);
      return;
    }

    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

void sub_25B771AB0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C68, "x%");
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_25B78FD88();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_25B76C99C(v3);
  v11 = sub_25B7900C8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v3, 1, v11) == 1)
  {
    sub_25B76966C(v3, &qword_27FBA1C68, "x%");
    return;
  }

  sub_25B790058();
  (*(v12 + 8))(v3, v11);
  (*(v5 + 32))(v10, v8, v4);
  sub_25B771E60();
  if (sub_25B7905F8())
  {
LABEL_9:
    (*(v5 + 8))(v10, v4);
    return;
  }

  sub_25B78FCE8();
  v14 = v13 / 3600.0;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v14 < 9.22337204e18)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
      sub_25B773228(&qword_27FBA1C10, &qword_27FBA1B80, &qword_25B7922C0, MEMORY[0x277CE37B8]);
      sub_25B790808();
      sub_25B790858();
      sub_25B790848();
      (*(v5 + 8))(v10, v4);
      return;
    }

    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_25B771E60()
{
  result = qword_27FBA1B40;
  if (!qword_27FBA1B40)
  {
    sub_25B78FD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1B40);
  }

  return result;
}

void *sub_25B771EB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_25B771FB4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C98, &qword_25B792408);
  MEMORY[0x28223BE20](v2);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CA0, &qword_25B792410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  v8 = *a1;
  v16[0] = a1[1];
  v16[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  sub_25B773228(&qword_27FBA1C08, &qword_27FBA1B88, &qword_25B791F00, MEMORY[0x277CE37B8]);
  v9 = sub_25B790848();
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = v9;
  v11 = sub_25B771EB8(v9, 0, &qword_27FBA1CB8, &unk_25B792420, MEMORY[0x277CE3158]);
  v12 = *(sub_25B78FFC8() - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  sub_25B769604(a1, v4, &qword_27FBA1C98, &qword_25B792408);
  v14 = sub_25B7723EC(v7, (v11 + v13), v10);
  sub_25B76966C(v7, &qword_27FBA1CA0, &qword_25B792410);
  if (v14 != v10)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v11;
}

void *sub_25B7721D0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C70, "x%");
  MEMORY[0x28223BE20](v2);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C78, &qword_25B7923F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  v8 = *a1;
  v16[0] = a1[1];
  v16[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  sub_25B773228(&qword_27FBA1C10, &qword_27FBA1B80, &qword_25B7922C0, MEMORY[0x277CE37B8]);
  v9 = sub_25B790848();
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = v9;
  v11 = sub_25B771EB8(v9, 0, &qword_27FBA1C90, &qword_25B792400, MEMORY[0x277CE31A0]);
  v12 = *(sub_25B7900C8() - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  sub_25B769604(a1, v4, &qword_27FBA1C70, "x%");
  v14 = sub_25B7728A4(v7, (v11 + v13), v10);
  sub_25B76966C(v7, &qword_27FBA1C78, &qword_25B7923F0);
  if (v14 != v10)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v11;
}

uint64_t sub_25B7723EC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v29 = a1;
  v7 = sub_25B78FFC8();
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  MEMORY[0x28223BE20](v7);
  v36 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CA0, &qword_25B792410);
  MEMORY[0x28223BE20](v10);
  v12 = (&v29 - v11);
  v43 = a2;
  v44 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C98, &qword_25B792408);
  v39 = v3;
  v40 = sub_25B773158;
  v41 = &v42;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  sub_25B773228(&qword_27FBA1CA8, &qword_27FBA1B88, &qword_25B791F00, MEMORY[0x277CE37A8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CB0, &qword_25B792418);
  sub_25B7906F8();
  if ((v46 & 1) == 0)
  {
LABEL_11:
    a3 = v45[2];
    v45[0] = *v4;
    sub_25B773228(&qword_27FBA1C08, &qword_27FBA1B88, &qword_25B791F00, MEMORY[0x277CE37B8]);
    v24 = v29;
    sub_25B790838();
    v25 = &qword_27FBA1C98;
    v26 = &qword_25B792408;
    v27 = v4;
    v28 = v24;
LABEL_13:
    sub_25B773270(v27, v28, v25, v26);
    return a3;
  }

  v14 = v29;
  v34 = v13;
  sub_25B769604(v3, v12, &qword_27FBA1C98, &qword_25B792408);
  v15 = *(v10 + 36);
  v16 = *v3;
  result = sub_25B76966C(v3, &qword_27FBA1C98, &qword_25B792408);
  *(v12 + v15) = v16;
  if (!a2)
  {
    sub_25B773270(v12, v14, &qword_27FBA1CA0, &qword_25B792410);
    return 0;
  }

  if (!a3)
  {
LABEL_12:
    v25 = &qword_27FBA1CA0;
    v26 = &qword_25B792410;
    v27 = v12;
    v28 = v29;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = (v38 + 16);
    v31 = (v38 + 32);
    v18 = v12[1];
    v19 = 1;
    v33 = a3;
    v30 = v18;
    v20 = v36;
    while (*(v12 + v15) != v18)
    {
      v45[0] = *v12;
      v45[1] = v18;
      sub_25B773228(&qword_27FBA1C08, &qword_27FBA1B88, &qword_25B791F00, MEMORY[0x277CE37B8]);
      sub_25B790818();
      v21 = sub_25B7908A8();
      v4 = a2;
      v22 = v37;
      (*v32)(v20);
      v21(v45, 0);
      a3 = v33;
      sub_25B790868();
      (*v31)(a2, v20, v22);
      if (a3 == v19)
      {
        goto LABEL_12;
      }

      a2 = (a2 + *(v38 + 72));
      v23 = __OFADD__(v19++, 1);
      v18 = v30;
      if (v23)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    sub_25B773270(v12, v29, &qword_27FBA1CA0, &qword_25B792410);
    return v19 - 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25B7728A4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v29 = a1;
  v7 = sub_25B7900C8();
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  MEMORY[0x28223BE20](v7);
  v36 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C78, &qword_25B7923F0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v29 - v11);
  v43 = a2;
  v44 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C70, "x%");
  v39 = v3;
  v40 = sub_25B772E30;
  v41 = &v42;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  sub_25B773228(&qword_27FBA1C80, &qword_27FBA1B80, &qword_25B7922C0, MEMORY[0x277CE37A8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C88, &qword_25B7923F8);
  sub_25B7906F8();
  if ((v46 & 1) == 0)
  {
LABEL_11:
    a3 = v45[2];
    v45[0] = *v4;
    sub_25B773228(&qword_27FBA1C10, &qword_27FBA1B80, &qword_25B7922C0, MEMORY[0x277CE37B8]);
    v24 = v29;
    sub_25B790838();
    v25 = &qword_27FBA1C70;
    v26 = "x%";
    v27 = v4;
    v28 = v24;
LABEL_13:
    sub_25B773270(v27, v28, v25, v26);
    return a3;
  }

  v14 = v29;
  v34 = v13;
  sub_25B769604(v3, v12, &qword_27FBA1C70, "x%");
  v15 = *(v10 + 36);
  v16 = *v3;
  result = sub_25B76966C(v3, &qword_27FBA1C70, "x%");
  *(v12 + v15) = v16;
  if (!a2)
  {
    sub_25B773270(v12, v14, &qword_27FBA1C78, &qword_25B7923F0);
    return 0;
  }

  if (!a3)
  {
LABEL_12:
    v25 = &qword_27FBA1C78;
    v26 = &qword_25B7923F0;
    v27 = v12;
    v28 = v29;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = (v38 + 16);
    v31 = (v38 + 32);
    v18 = v12[1];
    v19 = 1;
    v33 = a3;
    v30 = v18;
    v20 = v36;
    while (*(v12 + v15) != v18)
    {
      v45[0] = *v12;
      v45[1] = v18;
      sub_25B773228(&qword_27FBA1C10, &qword_27FBA1B80, &qword_25B7922C0, MEMORY[0x277CE37B8]);
      sub_25B790818();
      v21 = sub_25B7908A8();
      v4 = a2;
      v22 = v37;
      (*v32)(v20);
      v21(v45, 0);
      a3 = v33;
      sub_25B790868();
      (*v31)(a2, v20, v22);
      if (a3 == v19)
      {
        goto LABEL_12;
      }

      a2 = (a2 + *(v38 + 72));
      v23 = __OFADD__(v19++, 1);
      v18 = v30;
      if (v23)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    sub_25B773270(v12, v29, &qword_27FBA1C78, &qword_25B7923F0);
    return v19 - 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25B772D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a1;
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a2;
    }

    v7 = a5(0);
    swift_arrayInitWithCopy();
    v5 += *(*(v7 - 8) + 72) * v6;
  }

  else if (a1)
  {
    a5(0);
  }

  return v5;
}

void *sub_25B772E88(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C98, &qword_25B792408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  sub_25B773228(&qword_27FBA1C08, &qword_27FBA1B88, &qword_25B791F00, MEMORY[0x277CE37B8]);
  sub_25B790808();
  v5 = sub_25B790848();
  result = sub_25B790848();
  if (__OFADD__(v5, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  if (result + v5 < v5)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = 0;
  if (a1)
  {
    v8 = a1 + *(*(sub_25B78FFC8() - 8) + 72) * v5;
  }

  result = a3(&v10, v8, v7);
  if (!v9)
  {
    return v10;
  }

  return result;
}

void *sub_25B772FF0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C70, "x%");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  sub_25B773228(&qword_27FBA1C10, &qword_27FBA1B80, &qword_25B7922C0, MEMORY[0x277CE37B8]);
  sub_25B790808();
  v5 = sub_25B790848();
  result = sub_25B790848();
  if (__OFADD__(v5, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  if (result + v5 < v5)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = 0;
  if (a1)
  {
    v8 = a1 + *(*(sub_25B7900C8() - 8) + 72) * v5;
  }

  result = a3(&v10, v8, v7);
  if (!v9)
  {
    return v10;
  }

  return result;
}

uint64_t sub_25B773184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_25B772D5C(a1, a2, *(v4 + 16), *(v4 + 24), a3);
  if (!v5)
  {
    *a4 = result;
    a4[1] = v8;
    a4[2] = v9;
  }

  return result;
}

uint64_t sub_25B7731E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(a1, v3[2], v3[3], v3[4]);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_25B773228(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B773270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

double AppPrecipitationOutlookFormatter.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A78, &qword_25B792430);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_25B791A40;
  *(v0 + 56) = &type metadata for MinutelyOutlookCondition;
  *(v0 + 64) = &off_286D037D8;
  return result;
}

double sub_25B773330@<D0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A78, &qword_25B792430);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_25B791A40;
  *(v2 + 56) = &type metadata for MinutelyOutlookCondition;
  *(v2 + 64) = &off_286D037D8;
  *a1 = v2;
  return result;
}

double WidgetPrecipitationOutlookFormatter.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A78, &qword_25B792430);
  v0 = swift_allocObject();
  *&result = 4;
  *(v0 + 56) = &type metadata for MinutelyOutlookCondition;
  *(v0 + 64) = &off_286D037D8;
  *(v0 + 96) = &type metadata for CurrentOutlookCondition;
  *(v0 + 104) = &off_286D03AF0;
  *(v0 + 136) = &type metadata for HourlyOutlookCondition;
  *(v0 + 144) = &off_286D03B28;
  *(v0 + 16) = xmmword_25B791A50;
  *(v0 + 176) = &type metadata for DailyOutlookCondition;
  *(v0 + 184) = &off_286D03968;
  *(v0 + 152) = 10;
  return result;
}

double sub_25B773448@<D0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A78, &qword_25B792430);
  v2 = swift_allocObject();
  *&result = 4;
  *(v2 + 56) = &type metadata for MinutelyOutlookCondition;
  *(v2 + 64) = &off_286D037D8;
  *(v2 + 96) = &type metadata for CurrentOutlookCondition;
  *(v2 + 104) = &off_286D03AF0;
  *(v2 + 136) = &type metadata for HourlyOutlookCondition;
  *(v2 + 144) = &off_286D03B28;
  *(v2 + 16) = xmmword_25B791A50;
  *(v2 + 176) = &type metadata for DailyOutlookCondition;
  *(v2 + 184) = &off_286D03968;
  *(v2 + 152) = 10;
  *a1 = v2;
  return result;
}

uint64_t sub_25B773500()
{
  result = sub_25B773520();
  static UVIndex.spectrum = result;
  return result;
}

uint64_t sub_25B773520()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CC0, &qword_25B7931B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25B792500;
  v1 = objc_opt_self();
  v2 = [v1 greenColor];
  *(v0 + 32) = 0x3FF0000000000000;
  *(v0 + 40) = v2;
  sub_25B7737CC();
  sub_25B7904B8();
  v3 = sub_25B790978();
  *(v0 + 48) = 0x4000000000000000;
  *(v0 + 56) = v3;
  v4 = [v1 yellowColor];
  *(v0 + 64) = 0x4008000000000000;
  *(v0 + 72) = v4;
  sub_25B7904B8();
  v5 = sub_25B790978();
  *(v0 + 80) = 0x4010000000000000;
  *(v0 + 88) = v5;
  sub_25B7904B8();
  v6 = sub_25B790978();
  *(v0 + 96) = 0x4014000000000000;
  *(v0 + 104) = v6;
  v7 = [v1 orangeColor];
  *(v0 + 112) = 0x4018000000000000;
  *(v0 + 120) = v7;
  sub_25B7904B8();
  v8 = sub_25B790978();
  *(v0 + 128) = 0x401C000000000000;
  *(v0 + 136) = v8;
  v9 = [v1 systemPinkColor];
  *(v0 + 144) = 0x4020000000000000;
  *(v0 + 152) = v9;
  sub_25B7904B8();
  v10 = sub_25B790978();
  *(v0 + 160) = 0x4022000000000000;
  *(v0 + 168) = v10;
  sub_25B7904B8();
  v11 = sub_25B790978();
  *(v0 + 176) = 0x4024000000000000;
  *(v0 + 184) = v11;
  sub_25B7904B8();
  v12 = sub_25B790978();
  *(v0 + 192) = 0x4026000000000000;
  *(v0 + 200) = v12;
  return v0;
}

uint64_t *UVIndex.spectrum.unsafeMutableAddressor()
{
  if (qword_27FBA19D0 != -1)
  {
    swift_once();
  }

  return &static UVIndex.spectrum;
}

uint64_t static UVIndex.spectrum.getter()
{
  if (qword_27FBA19D0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_25B7737CC()
{
  result = qword_27FBA1CC8;
  if (!qword_27FBA1CC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBA1CC8);
  }

  return result;
}

uint64_t sub_25B773828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v55 = a2;
  v56 = a4;
  v5 = sub_25B790328();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B78FD88();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  v13 = sub_25B790348();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B70, &qword_25B791EE0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v45 - v18;
  v20 = sub_25B790228();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  sub_25B7900E8();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_25B773E30(v19);
LABEL_11:
    v44 = type metadata accessor for PrecipitationOutlook(0);
    return (*(*(v44 - 8) + 56))(v56, 1, 1, v44);
  }

  (*(v21 + 32))(v23, v19, v20);
  sub_25B790218();
  isPrecipitationSbvg_0 = _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
  v25 = *(v14 + 8);
  v46 = v16;
  v47 = v14 + 8;
  v25(v16, v13);
  if ((isPrecipitationSbvg_0 & 1) == 0 || (v26 = v50, sub_25B7901F8(), sub_25B790318(), (*(v51 + 8))(v26, v52), sub_25B78FCF8(), v27 = v54, v52 = v13, v28 = *(v53 + 8), v28(v10, v54), v29 = sub_25B78FD18(), v28(v12, v27), (v29 & 1) == 0))
  {
    (*(v21 + 8))(v23, v20);
    goto LABEL_11;
  }

  if (qword_27FBA1990 != -1)
  {
    swift_once();
  }

  v30 = sub_25B790498();
  __swift_project_value_buffer(v30, qword_27FBA4948);
  v31 = sub_25B790478();
  v32 = sub_25B790918();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v56;
  v35 = v46;
  if (v33)
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_25B75E000, v31, v32, "CurrentWeather indicates precipitation.", v36, 2u);
    MEMORY[0x25F86DA50](v36, -1, -1);
  }

  v37 = v55;
  (*(v53 + 16))(v34, v55, v54);
  v38 = sub_25B7801F4(v37);
  v39 = type metadata accessor for PrecipitationOutlook(0);
  v40 = v39[8];
  sub_25B790218();
  sub_25B780844((v34 + v40));
  v25(v35, v52);
  (*(v21 + 8))(v23, v20);
  type metadata accessor for PrecipitationOutlook.State(0);
  swift_storeEnumTagMultiPayload();
  v41 = v39[9];
  v42 = sub_25B78FF28();
  (*(*(v42 - 8) + 16))(v34 + v41, v49, v42);
  *(v34 + v39[5]) = 0;
  *(v34 + v39[6]) = v38 & 1;
  *(v34 + v39[7]) = 0;
  return (*(*(v39 - 1) + 56))(v34, 0, 1, v39);
}

uint64_t sub_25B773E30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B70, &qword_25B791EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Calendar.Component.all.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CD0, &qword_25B792560);
  v0 = sub_25B78FEA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B792550;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277CC9978], v0);
  v6(v5 + v2, *MEMORY[0x277CC9988], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277CC9998], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277CC9968], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277CC9980], v0);
  v6(v5 + 5 * v2, *MEMORY[0x277CC99A0], v0);
  v6(v5 + 6 * v2, *MEMORY[0x277CC99A8], v0);
  v6(v5 + 7 * v2, *MEMORY[0x277CC99B8], v0);
  v6(v5 + 8 * v2, *MEMORY[0x277CC9958], v0);
  v6(v5 + 9 * v2, *MEMORY[0x277CC99B0], v0);
  v6(v5 + 10 * v2, *MEMORY[0x277CC9950], v0);
  v6(v5 + 11 * v2, *MEMORY[0x277CC9940], v0);
  v6(v5 + 12 * v2, *MEMORY[0x277CC9960], v0);
  v6(v5 + 13 * v2, *MEMORY[0x277CC9930], v0);
  v6(v5 + 14 * v2, *MEMORY[0x277CC99C0], v0);
  v6(v5 + 15 * v2, *MEMORY[0x277CC99C8], v0);
  v7 = sub_25B7741DC(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_25B7741DC(uint64_t a1)
{
  v2 = sub_25B78FEA8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CD8, &unk_25B792570);
    v9 = sub_25B790A48();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_25B7744D4(&qword_27FBA1CE0, MEMORY[0x277CC99D8]);
      v16 = sub_25B7905E8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_25B7744D4(&qword_27FBA1CE8, MEMORY[0x277CC99E0]);
          v23 = sub_25B790608();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25B7744D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25B78FEA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B774528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a3;
  v83 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B70, &qword_25B791EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v74 - v9;
  v94 = sub_25B78FD88();
  v81 = *(v94 - 8);
  v10 = MEMORY[0x28223BE20](v94);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = &v74 - v13;
  v14 = sub_25B790348();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v75 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v79 = &v74 - v19;
  MEMORY[0x28223BE20](v18);
  v91 = &v74 - v20;
  v96 = sub_25B7900C8();
  v92 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B68, &unk_25B791ED0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v74 - v24;
  v80 = a1;
  sub_25B790108();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v25, 1, v26);
  v95 = a2;
  v82 = v15;
  if (v28 == 1)
  {
    sub_25B76966C(v25, &qword_27FBA1B68, &unk_25B791ED0);
    v29 = MEMORY[0x277D84F90];
  }

  else
  {
    v29 = sub_25B770690(a2, 24, 0);
    (*(v27 + 8))(v25, v26);
  }

  v89 = *(v29 + 16);
  if (v89)
  {
    v30 = 0;
    v86 = v29 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
    v85 = v92 + 16;
    v90 = (v82 + 8);
    v31 = (v81 + 8);
    v87 = (v92 + 8);
    v88 = v14;
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      (*(v92 + 16))(v22, v86 + *(v92 + 72) * v30, v96);
      v32 = v91;
      sub_25B7900B8();
      isPrecipitationSbvg_0 = _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
      v84 = *v90;
      v84(v32, v14);
      sub_25B790058();
      v34 = v93;
      sub_25B78FCF8();
      v35 = *v31;
      v36 = v94;
      (*v31)(v12, v94);
      v37 = sub_25B78FD18();
      v35(v34, v36);
      if (isPrecipitationSbvg_0 & 1) != 0 && (v37)
      {
        break;
      }

      ++v30;
      (*v87)(v22, v96);
      v14 = v88;
      if (v89 == v30)
      {
        goto LABEL_16;
      }
    }

    if (qword_27FBA1990 != -1)
    {
      swift_once();
    }

    v38 = sub_25B790498();
    __swift_project_value_buffer(v38, qword_27FBA4948);
    v39 = sub_25B790478();
    v40 = sub_25B790918();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v76;
    if (v41)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_25B75E000, v39, v40, "Hourly forecast indicates precipitation.", v43, 2u);
      MEMORY[0x25F86DA50](v43, -1, -1);
    }

    v44 = v93;
    sub_25B790058();
    sub_25B78FCE8();
    v46 = v45;
    v35(v44, v94);
    v47 = fmax(v46, 3600.0);
    sub_25B7900E8();
    v48 = sub_25B790228();
    v49 = *(v48 - 8);
    v50 = (*(v49 + 48))(v42, 1, v48);
    v51 = v82;
    v52 = v79;
    if (v50 == 1)
    {
      sub_25B76966C(v42, &qword_27FBA1B70, &qword_25B791EE0);
      v53 = v88;
      (*(v51 + 104))(v52, *MEMORY[0x277CE3250], v88);
    }

    else
    {
      v60 = v75;
      sub_25B790218();
      (*(v49 + 8))(v42, v48);
      v61 = v60;
      v53 = v88;
      (*(v51 + 32))(v52, v61, v88);
    }

    v62 = v91;
    sub_25B7900B8();
    v63 = v77;
    sub_25B780844(v77);
    v84(v62, v53);
    v64 = v83;
    v65 = v94;
    (*(v81 + 16))(v83, v95, v94);
    v66 = v93;
    sub_25B790058();
    LODWORD(v95) = sub_25B7801F4(v66);
    v35(v66, v65);
    sub_25B790048();
    v68 = v67;
    (*v87)(v22, v96);
    v69 = type metadata accessor for PrecipitationOutlook(0);
    v70 = v64 + v69[8];
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
    (*(v51 + 32))(v70, v79, v53);
    sub_25B76D804(v63, v70 + v71);
    type metadata accessor for PrecipitationOutlook.State(0);
    swift_storeEnumTagMultiPayload();
    v72 = v69[9];
    v73 = sub_25B78FF28();
    (*(*(v73 - 8) + 16))(v64 + v72, v78, v73);
    *(v64 + v69[5]) = v47;
    *(v64 + v69[6]) = v95 & 1;
    *(v64 + v69[7]) = v68;
    return (*(*(v69 - 1) + 56))(v64, 0, 1, v69);
  }

  else
  {
LABEL_16:

    if (qword_27FBA1990 != -1)
    {
LABEL_23:
      swift_once();
    }

    v54 = sub_25B790498();
    __swift_project_value_buffer(v54, qword_27FBA4948);
    v55 = sub_25B790478();
    v56 = sub_25B790928();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_25B75E000, v55, v56, "No preciptiation in hourly forecast.", v57, 2u);
      MEMORY[0x25F86DA50](v57, -1, -1);
    }

    v58 = type metadata accessor for PrecipitationOutlook(0);
    return (*(*(v58 - 8) + 56))(v83, 1, 1, v58);
  }
}

uint64_t sub_25B774F58()
{
  type metadata accessor for TemperatureFormatter(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
  v2 = sub_25B78FDF8();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  static TemperatureFormatter.shared = v0;
  return result;
}

uint64_t *TemperatureFormatter.shared.unsafeMutableAddressor()
{
  if (qword_27FBA19D8 != -1)
  {
    swift_once();
  }

  return &static TemperatureFormatter.shared;
}

uint64_t static TemperatureFormatter.shared.getter()
{
  if (qword_27FBA19D8 != -1)
  {
    swift_once();
  }
}

uint64_t TemperatureFormatter.overrideLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
  swift_beginAccess();
  return sub_25B769604(v1 + v3, a1, &qword_27FBA1C20, &qword_25B792300);
}

uint64_t TemperatureFormatter.overrideLocale.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
  swift_beginAccess();
  sub_25B76DBD8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t TemperatureFormatter.unitString.getter()
{
  v1 = sub_25B7905B8();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v29 = sub_25B790958();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CF0, &unk_25B7925C8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v16, 1, 1, v17);
  v34 = v16;
  sub_25B769604(v16, v14, &qword_27FBA1CF0, &unk_25B7925C8);
  v28 = v18;
  if ((*(v18 + 48))(v14, 1, v17) == 1)
  {
    sub_25B76966C(v14, &qword_27FBA1CF0, &unk_25B7925C8);
    v19 = 0;
  }

  else
  {
    sub_25B7907E8();
    v20 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
    swift_beginAccess();
    sub_25B769604(v0 + v20, v6, &qword_27FBA1C20, &qword_25B792300);
    v21 = sub_25B78FDF8();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v6, 1, v21) == 1)
    {
      sub_25B76966C(v6, &qword_27FBA1C20, &qword_25B792300);
      sub_25B78FDC8();
    }

    else
    {
      (*(v22 + 32))(v8, v6, v21);
    }

    (*(v22 + 56))(v8, 0, 1, v21);
    sub_25B790598();

    sub_25B76966C(v8, &qword_27FBA1C20, &qword_25B792300);
    v24 = v32;
    v23 = v33;
    v25 = v30;
    (*(v32 + 104))(v30, *MEMORY[0x277D7B408], v33);
    sub_25B790468();
    sub_25B790458();
    sub_25B7756BC();
    v26 = v29;
    v19 = sub_25B78FA88();

    (*(v24 + 8))(v25, v23);
    (*(v31 + 8))(v10, v26);
    (*(v28 + 8))(v14, v17);
  }

  sub_25B76966C(v34, &qword_27FBA1CF0, &unk_25B7925C8);
  return v19;
}

unint64_t sub_25B7756BC()
{
  result = qword_27FBA1CF8;
  if (!qword_27FBA1CF8)
  {
    sub_25B790958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1CF8);
  }

  return result;
}

uint64_t TemperatureFormatter.degreesStringForTemperature(_:)(uint64_t a1)
{
  v2 = sub_25B7905B8();
  v73 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v72 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v67 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v65 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v65 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v65 - v13;
  v15 = sub_25B790958();
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v68 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - v18;
  v20 = sub_25B790558();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25B7637A0(0, &qword_27FBA1D00, 0x277D85C78);
  *v23 = sub_25B790968();
  (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
  v24 = sub_25B790568();
  (*(v21 + 8))(v23, v20);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_4;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  if ((*(*(v25 - 8) + 48))(a1, 1, v25) != 1)
  {
    goto LABEL_10;
  }

  v66 = v2;
  if (qword_27FBA19B8 != -1)
  {
    goto LABEL_18;
  }

LABEL_4:
  v26 = qword_27FBA1C18;
  v27 = sub_25B790618();
  v28 = sub_25B790618();
  v29 = sub_25B790618();
  v30 = [v26 localizedStringForKey:v27 value:v28 table:v29];

  v31 = sub_25B790638();
  v33 = v32;

  if (!v31 && v33 == 0xE000000000000000)
  {

    v2 = v66;
LABEL_8:
    sub_25B7907D8();
    v35 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
    v36 = v69;
    swift_beginAccess();
    v37 = v36 + v35;
    v38 = v67;
    sub_25B769604(v37, v67, &qword_27FBA1C20, &qword_25B792300);
    v39 = sub_25B78FDF8();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v38, 1, v39) == 1)
    {
      sub_25B76966C(v38, &qword_27FBA1C20, &qword_25B792300);
      sub_25B78FDC8();
    }

    else
    {
      (*(v40 + 32))(v9, v38, v39);
    }

    v49 = v73;
    (*(v40 + 56))(v9, 0, 1, v39);
    v50 = v68;
    sub_25B790598();

    sub_25B76966C(v9, &qword_27FBA1C20, &qword_25B792300);
    v51 = v72;
    (*(v49 + 104))(v72, *MEMORY[0x277D7B400], v2);
    sub_25B7756BC();
    v52 = v71;
    v53 = sub_25B7909A8();
    v55 = v54;
    (*(v49 + 8))(v51, v2);
    (*(v70 + 8))(v50, v52);
    v78 = v53;
    v79 = v55;
    v56 = qword_27FBA1C18;
    v57 = sub_25B790618();
    v58 = sub_25B790618();
    v59 = sub_25B790618();
    v60 = [v56 localizedStringForKey:v57 value:v58 table:v59];

    v61 = sub_25B790638();
    v63 = v62;

    v76 = v61;
    v77 = v63;
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_25B765148();
    v48 = sub_25B790A18();

    return v48;
  }

  v34 = sub_25B790BE8();

  v2 = v66;
  if (v34)
  {
    goto LABEL_8;
  }

LABEL_10:
  sub_25B7907D8();
  v41 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
  v42 = v69;
  swift_beginAccess();
  sub_25B769604(v42 + v41, v12, &qword_27FBA1C20, &qword_25B792300);
  v43 = sub_25B78FDF8();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v12, 1, v43) == 1)
  {
    sub_25B76966C(v12, &qword_27FBA1C20, &qword_25B792300);
    sub_25B78FDC8();
  }

  else
  {
    (*(v44 + 32))(v14, v12, v43);
  }

  v46 = v72;
  v45 = v73;
  (*(v44 + 56))(v14, 0, 1, v43);
  sub_25B790598();

  sub_25B76966C(v14, &qword_27FBA1C20, &qword_25B792300);
  (*(v45 + 104))(v46, *MEMORY[0x277D7B400], v2);
  sub_25B7756BC();
  v47 = v71;
  v48 = sub_25B7909A8();
  (*(v45 + 8))(v46, v2);
  (*(v70 + 8))(v19, v47);
  return v48;
}

uint64_t TemperatureFormatter.valueStringForTemperature(_:)(uint64_t a1)
{
  v2 = sub_25B7905B8();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v61 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  v16 = sub_25B790958();
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v57 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - v19;
  v21 = sub_25B790558();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = (&v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25B7637A0(0, &qword_27FBA1D00, 0x277D85C78);
  *v24 = sub_25B790968();
  (*(v22 + 104))(v24, *MEMORY[0x277D85200], v21);
  v25 = sub_25B790568();
  (*(v22 + 8))(v24, v21);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
LABEL_9:
    v43 = qword_27FBA1C18;
    v44 = sub_25B790618();
    v45 = sub_25B790618();
    v46 = sub_25B790618();
    v47 = [v43 localizedStringForKey:v44 value:v45 table:v46];

    v48 = sub_25B790638();
    v50 = v49;

    v66 = v48;
    v67 = v50;
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_25B765148();
    v51 = sub_25B790A18();

    return v51;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v27 = (*(*(v26 - 8) + 48))(a1, 1, v26);
  sub_25B7907F8();
  v28 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
  if (v27 == 1)
  {
    v29 = v58;
    swift_beginAccess();
    sub_25B769604(v29 + v28, v7, &qword_27FBA1C20, &qword_25B792300);
    v30 = sub_25B78FDF8();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v7, 1, v30) == 1)
    {
      sub_25B76966C(v7, &qword_27FBA1C20, &qword_25B792300);
      sub_25B78FDC8();
    }

    else
    {
      (*(v31 + 32))(v10, v7, v30);
    }

    (*(v31 + 56))(v10, 0, 1, v30);
    v35 = v57;
    sub_25B790598();

    sub_25B76966C(v10, &qword_27FBA1C20, &qword_25B792300);
    v37 = v61;
    v36 = v62;
    v38 = v63;
    (*(v62 + 104))(v61, *MEMORY[0x277D7B400], v63);
    sub_25B7756BC();
    v39 = v60;
    v40 = sub_25B7909A8();
    v42 = v41;
    (*(v36 + 8))(v37, v38);
    (*(v59 + 8))(v35, v39);
    v68 = v40;
    v69 = v42;
    if (qword_27FBA19B8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v32 = v58;
  swift_beginAccess();
  sub_25B769604(v32 + v28, v13, &qword_27FBA1C20, &qword_25B792300);
  v33 = sub_25B78FDF8();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v13, 1, v33) == 1)
  {
    sub_25B76966C(v13, &qword_27FBA1C20, &qword_25B792300);
    sub_25B78FDC8();
  }

  else
  {
    (*(v34 + 32))(v15, v13, v33);
  }

  (*(v34 + 56))(v15, 0, 1, v33);
  sub_25B790598();

  sub_25B76966C(v15, &qword_27FBA1C20, &qword_25B792300);
  v53 = v61;
  v52 = v62;
  v54 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x277D7B408], v63);
  sub_25B7756BC();
  v55 = v60;
  v51 = sub_25B7909A8();
  (*(v52 + 8))(v53, v54);
  (*(v59 + 8))(v20, v55);
  return v51;
}

uint64_t TemperatureFormatter.string(for:formattingStyle:noValueStyle:)(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v44 = a3;
  v45 = a2;
  v47 = sub_25B7905B8();
  v4 = *(v47 - 8);
  v5 = MEMORY[0x28223BE20](v47);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v46 = sub_25B790958();
  v9 = *(v46 - 8);
  v10 = MEMORY[0x28223BE20](v46);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = sub_25B790558();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25B7637A0(0, &qword_27FBA1D00, 0x277D85C78);
  *v18 = sub_25B790968();
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v19 = sub_25B790568();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v21 = (*(*(v20 - 8) + 48))(a1, 1, v20);
  v22 = v44;
  if (v21 != 1)
  {
    goto LABEL_9;
  }

  if (!FormatterNoValueStyle.rawValue.getter(v44) && v23 == 0xE000000000000000)
  {

    goto LABEL_7;
  }

  v24 = sub_25B790BE8();

  if ((v24 & 1) == 0)
  {
LABEL_9:
    sub_25B7775BC(v45);
    v40 = v47;
    (*(v4 + 104))(v8, **(&unk_279963508 + v22), v47);
    sub_25B7756BC();
    v41 = v46;
    v39 = sub_25B7909A8();
    (*(v4 + 8))(v8, v40);
    (*(v9 + 8))(v14, v41);
    return v39;
  }

LABEL_7:
  sub_25B7775BC(v45);
  v25 = v43;
  v26 = v47;
  (*(v4 + 104))(v43, *MEMORY[0x277D7B400], v47);
  sub_25B7756BC();
  v27 = v46;
  v28 = sub_25B7909A8();
  v30 = v29;
  (*(v4 + 8))(v25, v26);
  (*(v9 + 8))(v12, v27);
  v52 = v28;
  v53 = v30;
  if (qword_27FBA19B8 != -1)
  {
LABEL_12:
    swift_once();
  }

  v31 = qword_27FBA1C18;
  v32 = sub_25B790618();
  v33 = sub_25B790618();
  v34 = sub_25B790618();
  v35 = [v31 localizedStringForKey:v32 value:v33 table:v34];

  v36 = sub_25B790638();
  v38 = v37;

  v50 = v36;
  v51 = v38;
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_25B765148();
  v39 = sub_25B790A18();

  return v39;
}

Swift::String __swiftcall TemperatureFormatter.noDataString(formattingStyle:noValueStyle:)(NanoWeatherKitUICompanion::TemperatureFormatter::FormattingStyle formattingStyle, NanoWeatherKitUICompanion::FormatterNoValueStyle noValueStyle)
{
  v2 = noValueStyle;
  v3 = formattingStyle;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CF0, &unk_25B7925C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_25B790558();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25B7637A0(0, &qword_27FBA1D00, 0x277D85C78);
  *v10 = sub_25B790968();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v11 = sub_25B790568();
  v12 = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = TemperatureFormatter.string(for:formattingStyle:noValueStyle:)(v6, v3, v2);
    v17 = v16;
    sub_25B76966C(v6, &qword_27FBA1CF0, &unk_25B7925C8);
    v12 = v15;
    v13 = v17;
  }

  else
  {
    __break(1u);
  }

  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t TemperatureFormatter.highLow(high:low:style:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = TemperatureFormatter.degreesStringForTemperature(_:)(a1);
  v7 = v6;
  v8 = TemperatureFormatter.degreesStringForTemperature(_:)(a2);
  v10 = v9;
  if (!a3)
  {
    if (qword_27FBA19B8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a3 == 1)
  {
    if (qword_27FBA19B8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_27FBA19B8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v11 = qword_27FBA1C18;
  v12 = sub_25B790618();
  v13 = sub_25B790618();
  v14 = sub_25B790618();
  v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

  sub_25B790638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25B7925B0;
  v17 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v18 = sub_25B777A70();
  *(v16 + 32) = v5;
  *(v16 + 40) = v7;
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  *(v16 + 64) = v18;
  *(v16 + 72) = v8;
  *(v16 + 80) = v10;
  v19 = sub_25B790628();

  return v19;
}

uint64_t TemperatureFormatter.rounded(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CF0, &unk_25B7925C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  sub_25B769604(a1, v6, &qword_27FBA1CF0, &unk_25B7925C8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25B76966C(v6, &qword_27FBA1CF0, &unk_25B7925C8);
    v11 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_25B78FA78();
    sub_25B78FA58();
    sub_25B7637A0(0, &qword_27FBA1A58, 0x277CCAE48);
    sub_25B78FA68();
    (*(v8 + 8))(v10, v7);
    v11 = 0;
  }

  return (*(v8 + 56))(a2, v11, 1, v7);
}

uint64_t TemperatureFormatter.rounded(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  sub_25B78FA78();
  sub_25B78FA58();
  sub_25B7637A0(0, &qword_27FBA1A58, 0x277CCAE48);

  return sub_25B78FA68();
}

uint64_t sub_25B7775BC(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  if (a1)
  {
    if (a1 == 1)
    {
      sub_25B7907D8();
      v21 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
      swift_beginAccess();
      sub_25B769604(v1 + v21, v12, &qword_27FBA1C20, &qword_25B792300);
      v22 = sub_25B78FDF8();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v12, 1, v22) == 1)
      {
        sub_25B76966C(v12, &qword_27FBA1C20, &qword_25B792300);
        sub_25B78FDC8();
      }

      else
      {
        (*(v23 + 32))(v15, v12, v22);
      }

      (*(v23 + 56))(v15, 0, 1, v22);
      sub_25B790598();
      v20 = v15;
    }

    else
    {
      sub_25B7907D8();
      v27 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
      swift_beginAccess();
      sub_25B769604(v1 + v27, v6, &qword_27FBA1C20, &qword_25B792300);
      v28 = sub_25B78FDF8();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v6, 1, v28) == 1)
      {
        sub_25B76966C(v6, &qword_27FBA1C20, &qword_25B792300);
        sub_25B78FDC8();
      }

      else
      {
        (*(v29 + 32))(v9, v6, v28);
      }

      (*(v29 + 56))(v9, 0, 1, v28);
      sub_25B790598();
      v20 = v9;
    }
  }

  else
  {
    sub_25B7907F8();
    v24 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
    swift_beginAccess();
    sub_25B769604(v1 + v24, v18, &qword_27FBA1C20, &qword_25B792300);
    v25 = sub_25B78FDF8();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v18, 1, v25) == 1)
    {
      sub_25B76966C(v18, &qword_27FBA1C20, &qword_25B792300);
      sub_25B78FDC8();
    }

    else
    {
      (*(v26 + 32))(v20, v18, v25);
    }

    (*(v26 + 56))(v20, 0, 1, v25);
    sub_25B790598();
  }

  return sub_25B76966C(v20, &qword_27FBA1C20, &qword_25B792300);
}

unint64_t sub_25B777A70()
{
  result = qword_27FBA1D10;
  if (!qword_27FBA1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1D10);
  }

  return result;
}

uint64_t TemperatureFormatter.__deallocating_deinit()
{
  sub_25B76966C(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale, &qword_27FBA1C20, &qword_25B792300);

  return swift_deallocClassInstance();
}

NanoWeatherKitUICompanion::TemperatureFormatter::FormattingStyle_optional __swiftcall TemperatureFormatter.FormattingStyle.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t *sub_25B777B94@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t TemperatureFormatter.HighLowStyle.hashValue.getter(unsigned __int8 a1)
{
  sub_25B790C18();
  MEMORY[0x25F86D3B0](a1);
  return sub_25B790C38();
}

unint64_t sub_25B777C54()
{
  result = qword_27FBA1D18;
  if (!qword_27FBA1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1D18);
  }

  return result;
}

unint64_t sub_25B777CAC()
{
  result = qword_27FBA1D20;
  if (!qword_27FBA1D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBA1D28, &qword_25B792680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1D20);
  }

  return result;
}

unint64_t sub_25B777D14()
{
  result = qword_27FBA1D30;
  if (!qword_27FBA1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1D30);
  }

  return result;
}

uint64_t type metadata accessor for TemperatureFormatter(uint64_t a1)
{
  result = qword_27FBA1D38;
  if (!qword_27FBA1D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrecipitationOutlook.init(date:interval:isDaylight:probability:state:timeZone:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = sub_25B78FD88();
  (*(*(v14 - 8) + 32))(a5, a1, v14);
  v15 = type metadata accessor for PrecipitationOutlook(0);
  *(a5 + v15[5]) = a6;
  *(a5 + v15[6]) = a2;
  *(a5 + v15[7]) = a7;
  sub_25B777F30(a3, a5 + v15[8]);
  v16 = v15[9];
  v17 = sub_25B78FF28();
  v18 = *(*(v17 - 8) + 32);

  return v18(a5 + v16, a4, v17);
}

uint64_t sub_25B777F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationOutlook.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PrecipitationOutlook.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B78FD88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PrecipitationOutlook.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrecipitationOutlook(0) + 36);
  v4 = sub_25B78FF28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrecipitationOutlook.changeDate.getter()
{
  type metadata accessor for PrecipitationOutlook(0);

  return sub_25B78FD38();
}

uint64_t PrecipitationOutlook.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D48, "B#");
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B778494();
  sub_25B790C58();
  v8[15] = 0;
  sub_25B78FD88();
  sub_25B7784E8(&qword_27FBA1D58, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_25B790BC8();
  if (!v1)
  {
    type metadata accessor for PrecipitationOutlook(0);
    v8[14] = 1;
    sub_25B790BB8();
    v8[13] = 2;
    sub_25B790BA8();
    v8[12] = 3;
    sub_25B790BB8();
    v8[11] = 4;
    type metadata accessor for PrecipitationOutlook.State(0);
    sub_25B7784E8(&qword_27FBA1D60, type metadata accessor for PrecipitationOutlook.State, &protocol conformance descriptor for PrecipitationOutlook.State);
    sub_25B790BC8();
    v8[10] = 5;
    sub_25B78FF28();
    sub_25B7784E8(&qword_27FBA1D68, MEMORY[0x277CC9A70], MEMORY[0x277CC9A78]);
    sub_25B790BC8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_25B778494()
{
  result = qword_27FBA1D50;
  if (!qword_27FBA1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1D50);
  }

  return result;
}

uint64_t sub_25B7784E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PrecipitationOutlook.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = sub_25B78FF28();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v27 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PrecipitationOutlook.State(0);
  MEMORY[0x28223BE20](v28);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B78FD88();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v30 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D70, &qword_25B792778);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v9 = &v23 - v8;
  v10 = type metadata accessor for PrecipitationOutlook(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B778494();
  v32 = v9;
  v13 = v34;
  sub_25B790C48();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v5;
  v15 = v29;
  v40 = 0;
  sub_25B7784E8(&qword_27FBA1D78, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v16 = v30;
  sub_25B790B68();
  (*(v15 + 32))(v12, v16, v6);
  v39 = 1;
  sub_25B790B58();
  v17 = v10;
  *&v12[v10[5]] = v18;
  v38 = 2;
  v12[v10[6]] = sub_25B790B48() & 1;
  v37 = 3;
  sub_25B790B58();
  *&v12[v10[7]] = v19;
  v36 = 4;
  sub_25B7784E8(&qword_27FBA1D80, type metadata accessor for PrecipitationOutlook.State, &protocol conformance descriptor for PrecipitationOutlook.State);
  sub_25B790B68();
  sub_25B777F30(v14, &v12[v10[8]]);
  v35 = 5;
  sub_25B7784E8(&qword_27FBA1D88, MEMORY[0x277CC9A70], MEMORY[0x277CC9A90]);
  v21 = v26;
  v22 = v27;
  sub_25B790B68();
  (*(v31 + 8))(v32, v33);
  (*(v24 + 32))(&v12[v17[9]], v22, v21);
  sub_25B778B1C(v12, v25, type metadata accessor for PrecipitationOutlook);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25B778B84(v12, type metadata accessor for PrecipitationOutlook);
}

uint64_t sub_25B778B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B778B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25B778BE4()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x6C696261626F7270;
  v4 = 0x6574617473;
  if (v1 != 4)
  {
    v4 = 0x656E6F5A656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C61767265746E69;
  if (v1 != 1)
  {
    v5 = 0x67696C7961447369;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25B778CA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25B77D5F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25B778CE0(uint64_t a1)
{
  v2 = sub_25B778494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B778D1C(uint64_t a1)
{
  v2 = sub_25B778494();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t PrecipitationOutlook.State.description.getter()
{
  v1 = sub_25B790348();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v47 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v48 = &v47 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v47 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v47 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v47 - v24;
  v26 = type metadata accessor for PrecipitationOutlook.State(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B778B1C(v0, v28, type metadata accessor for PrecipitationOutlook.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780);
      sub_25B76D804(&v28[*(v37 + 48)], v20);
      sub_25B7794F0(v20, v17);
      v39 = v49;
      v38 = v50;
      if ((*(v49 + 48))(v17, 1, v50) == 1)
      {
        sub_25B76966C(v17, &qword_27FBA1AF8, &unk_25B791E40);
        sub_25B76966C(v20, &qword_27FBA1AF8, &unk_25B791E40);
        (*(v39 + 8))(v28, v38);
        return 0xD000000000000018;
      }

      else
      {
        (*(v39 + 32))(v6, v17, v38);
        v51 = 0x676562206C6C6957;
        v52 = 0xEB00000000206E69;
        sub_25B7784E8(&qword_27FBA1D90, MEMORY[0x277CE3328], MEMORY[0x277CE3358]);
        v44 = sub_25B790BD8();
        MEMORY[0x25F86CE10](v44);

        v30 = v51;
        v45 = *(v39 + 8);
        v45(v6, v38);
        sub_25B76966C(v20, &qword_27FBA1AF8, &unk_25B791E40);
        v45(v28, v38);
      }
    }

    else
    {
      sub_25B76D804(v28, v25);
      sub_25B7794F0(v25, v23);
      v32 = v49;
      v31 = v50;
      if ((*(v49 + 48))(v23, 1, v50) == 1)
      {
        v30 = 0xD000000000000017;
        sub_25B76966C(v23, &qword_27FBA1AF8, &unk_25B791E40);
      }

      else
      {
        (*(v32 + 32))(v8, v23, v31);
        v51 = 0x6C746E6572727543;
        v52 = 0xEA00000000002079;
        sub_25B7784E8(&qword_27FBA1D90, MEMORY[0x277CE3328], MEMORY[0x277CE3358]);
        v43 = sub_25B790BD8();
        MEMORY[0x25F86CE10](v43);

        v30 = v51;
        (*(v32 + 8))(v8, v31);
      }

      sub_25B76966C(v25, &qword_27FBA1AF8, &unk_25B791E40);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    v34 = v48;
    sub_25B76D804(v28, v48);
    sub_25B7794F0(v34, v12);
    v36 = v49;
    v35 = v50;
    if ((*(v49 + 48))(v12, 1, v50) == 1)
    {
      v30 = 0xD000000000000017;
      sub_25B76966C(v12, &qword_27FBA1AF8, &unk_25B791E40);
      sub_25B76966C(v34, &qword_27FBA1AF8, &unk_25B791E40);
      (*(v36 + 8))(&v28[v33], v35);
    }

    else
    {
      v40 = v47;
      (*(v36 + 32))(v47, v12, v35);
      v51 = 0x6F7473206C6C6957;
      v52 = 0xEA00000000002070;
      sub_25B7784E8(&qword_27FBA1D90, MEMORY[0x277CE3328], MEMORY[0x277CE3358]);
      v41 = sub_25B790BD8();
      MEMORY[0x25F86CE10](v41);

      v30 = v51;
      v42 = *(v36 + 8);
      v42(v40, v35);
      sub_25B76966C(v34, &qword_27FBA1AF8, &unk_25B791E40);
      v42(&v28[v33], v35);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x6E776F6E6B6E55;
  }

  else
  {
    return 0x7261656C43;
  }

  return v30;
}

uint64_t sub_25B7794F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B77956C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_25B7795A8(uint64_t a1)
{
  v2 = sub_25B77C508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B7795E4(uint64_t a1)
{
  v2 = sub_25B77C508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B779620()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7469706963657270;
  v4 = 0x696765426C6C6977;
  if (v1 != 3)
  {
    v4 = 0x61656C436C6C6977;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7261656C63;
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

uint64_t sub_25B7796C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25B77D7FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25B7796FC(uint64_t a1)
{
  v2 = sub_25B77C3B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B779738(uint64_t a1)
{
  v2 = sub_25B77C3B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B77977C()
{
  sub_25B790C18();
  MEMORY[0x25F86D3B0](0);
  return sub_25B790C38();
}

uint64_t sub_25B7797E8(uint64_t a1)
{
  sub_25B790C18();
  MEMORY[0x25F86D3B0](0);
  return sub_25B790C38();
}

uint64_t sub_25B779834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25B790BE8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25B7798B4(uint64_t a1)
{
  v2 = sub_25B77C4B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B7798F0(uint64_t a1)
{
  v2 = sub_25B77C4B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B77992C(uint64_t a1)
{
  v2 = sub_25B77C55C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B779968(uint64_t a1)
{
  v2 = sub_25B77C55C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B7799BC()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_25B7799E8(uint64_t a1)
{
  v2 = sub_25B77C460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B779A24(uint64_t a1)
{
  v2 = sub_25B77C460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B779A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_25B790BE8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25B790BE8();

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

uint64_t sub_25B779B2C(uint64_t a1)
{
  v2 = sub_25B77C40C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B779B68(uint64_t a1)
{
  v2 = sub_25B77C40C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrecipitationOutlook.State.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D98, &qword_25B792788);
  v69 = *(v2 - 8);
  v70 = v2;
  MEMORY[0x28223BE20](v2);
  v68 = &v62 - v3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1DA0, &qword_25B792790);
  v67 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v62 - v4;
  v80 = sub_25B790348();
  v78 = *(v80 - 8);
  v5 = MEMORY[0x28223BE20](v80);
  v77 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v79 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1DA8, &qword_25B792798);
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  v72 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v62 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1DB0, &qword_25B7927A0);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v62 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1DB8, &qword_25B7927A8);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v20 = &v62 - v19;
  v21 = type metadata accessor for PrecipitationOutlook.State(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1DC0, &qword_25B7927B0);
  v82 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v25 = &v62 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B77C3B8();
  v84 = v25;
  sub_25B790C58();
  sub_25B778B1C(v81, v23, type metadata accessor for PrecipitationOutlook.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v30 = v17;
    v31 = v72;
    v32 = v73;
    v33 = v74;
    v34 = v75;
    v35 = v15;
    v36 = v79;
    v37 = v76;
    if (EnumCaseMultiPayload)
    {
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
      v56 = v78;
      (*(v78 + 32))(v36, v23, v80);
      v81 = v35;
      sub_25B76D804(&v23[v55], v35);
      v91 = 3;
      sub_25B77C460();
      v57 = v84;
      sub_25B790B88();
      v90 = 0;
      sub_25B7784E8(&qword_27FBA1DD8, MEMORY[0x277CE3328], MEMORY[0x277CE3330]);
      v58 = v83;
      sub_25B790BC8();
      if (v58)
      {
        (*(v67 + 8))(v34, v37);
        sub_25B76966C(v81, &qword_27FBA1AF8, &unk_25B791E40);
        (*(v56 + 8))(v36, v80);
        return (*(v82 + 8))(v57, v85);
      }

      else
      {
        v89 = 1;
        v60 = v80;
        v61 = v81;
        sub_25B790B98();
        (*(v67 + 8))(v34, v37);
        sub_25B76966C(v61, &qword_27FBA1AF8, &unk_25B791E40);
        (*(v56 + 8))(v79, v60);
        return (*(v82 + 8))(v84, v85);
      }
    }

    else
    {
      v38 = v30;
      sub_25B76D804(v23, v30);
      v88 = 2;
      sub_25B77C4B4();
      v39 = v31;
      v41 = v84;
      v40 = v85;
      sub_25B790B88();
      sub_25B7784E8(&qword_27FBA1DD8, MEMORY[0x277CE3328], MEMORY[0x277CE3330]);
      sub_25B790B98();
      (*(v32 + 8))(v39, v33);
      sub_25B76966C(v38, &qword_27FBA1AF8, &unk_25B791E40);
      return (*(v82 + 8))(v41, v40);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    v43 = v71;
    sub_25B76D804(v23, v71);
    v44 = v78;
    v45 = v80;
    (*(v78 + 32))(v77, &v23[v42], v80);
    v94 = 4;
    sub_25B77C40C();
    v46 = v68;
    v47 = v84;
    v48 = v85;
    sub_25B790B88();
    v93 = 0;
    sub_25B7784E8(&qword_27FBA1DD8, MEMORY[0x277CE3328], MEMORY[0x277CE3330]);
    v49 = v70;
    v50 = v83;
    sub_25B790B98();
    if (v50)
    {
      (*(v69 + 8))(v46, v49);
      (*(v44 + 8))(v77, v45);
      v51 = v43;
    }

    else
    {
      v92 = 1;
      v59 = v77;
      sub_25B790BC8();
      (*(v69 + 8))(v46, v49);
      (*(v44 + 8))(v59, v45);
      v51 = v71;
    }

    sub_25B76966C(v51, &qword_27FBA1AF8, &unk_25B791E40);
    return (*(v82 + 8))(v47, v48);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v86[0] = 0;
    sub_25B77C55C();
    v28 = v84;
    v27 = v85;
    sub_25B790B88();
    (*(v62 + 8))(v20, v63);
    return (*(v82 + 8))(v28, v27);
  }

  else
  {
    v87 = 1;
    sub_25B77C508();
    v52 = v64;
    v53 = v84;
    v54 = v85;
    sub_25B790B88();
    (*(v65 + 8))(v52, v66);
    return (*(v82 + 8))(v53, v54);
  }
}

uint64_t PrecipitationOutlook.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1E00, &qword_25B7927B8);
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  MEMORY[0x28223BE20](v3);
  v72 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1E08, &qword_25B7927C0);
  v7 = *(v6 - 8);
  v63 = v6;
  v64 = v7;
  MEMORY[0x28223BE20](v6);
  v68 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1E10, &qword_25B7927C8);
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9);
  v71 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1E18, &qword_25B7927D0);
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x28223BE20](v11);
  v70 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1E20, &qword_25B7927D8);
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x28223BE20](v13);
  v67 = &v53 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1E28, &qword_25B7927E0);
  v74 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v16 = &v53 - v15;
  v17 = type metadata accessor for PrecipitationOutlook.State(0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v53 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v53 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v53 - v27;
  v29 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_25B77C3B8();
  v30 = v75;
  sub_25B790C48();
  if (!v30)
  {
    v54 = v26;
    v31 = v70;
    v53 = v23;
    v55 = v20;
    v32 = v71;
    v33 = v72;
    v56 = v28;
    v75 = v17;
    v34 = v73;
    v35 = v69;
    v36 = sub_25B790B78();
    if (*(v36 + 16) != 1 || (v37 = *(v36 + 32), v37 == 5))
    {
      v42 = sub_25B790A88();
      swift_allocError();
      v44 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1E30, &qword_25B7927E8);
      *v44 = v75;
      sub_25B790B28();
      sub_25B790A78();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
      swift_willThrow();
      (*(v74 + 8))(v16, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v36 + 32) <= 1u)
      {
        if (*(v36 + 32))
        {
          v78 = 1;
          sub_25B77C508();
          sub_25B790B18();
          (*(v59 + 8))(v31, v60);
        }

        else
        {
          v77[0] = 0;
          sub_25B77C55C();
          v46 = v67;
          sub_25B790B18();
          (*(v57 + 8))(v46, v58);
        }

        (*(v74 + 8))(v16, v35);
        swift_unknownObjectRelease();
        v47 = v56;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        if (v37 == 2)
        {
          v79 = 2;
          sub_25B77C4B4();
          sub_25B790B18();
          sub_25B790348();
          sub_25B7784E8(&qword_27FBA1E38, MEMORY[0x277CE3328], MEMORY[0x277CE3350]);
          v49 = v62;
          sub_25B790B38();
          (*(v61 + 8))(v32, v49);
          (*(v74 + 8))(v16, v35);
          swift_unknownObjectRelease();
          v40 = v54;
        }

        else
        {
          v71 = v36;
          if (v37 == 3)
          {
            v82 = 3;
            sub_25B77C460();
            v38 = v68;
            sub_25B790B18();
            sub_25B790348();
            v81 = 0;
            v39 = sub_25B7784E8(&qword_27FBA1E38, MEMORY[0x277CE3328], MEMORY[0x277CE3350]);
            v40 = v53;
            v41 = v63;
            v72 = v39;
            sub_25B790B68();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780);
            v80 = 1;
            sub_25B790B38();
            (*(v64 + 8))(v38, v41);
            (*(v74 + 8))(v16, v35);
            swift_unknownObjectRelease();
          }

          else
          {
            v85 = 4;
            sub_25B77C40C();
            v48 = v33;
            sub_25B790B18();
            sub_25B790348();
            v84 = 0;
            sub_25B7784E8(&qword_27FBA1E38, MEMORY[0x277CE3328], MEMORY[0x277CE3350]);
            v50 = v65;
            v51 = v48;
            sub_25B790B38();
            v52 = v74;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60);
            v83 = 1;
            sub_25B790B68();
            (*(v66 + 8))(v51, v50);
            (*(v52 + 8))(v16, v35);
            swift_unknownObjectRelease();
            v40 = v55;
          }
        }

        swift_storeEnumTagMultiPayload();
        v47 = v56;
        sub_25B777F30(v40, v56);
      }

      sub_25B777F30(v47, v34);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t PrecipitationOutlook.description.getter()
{
  sub_25B790A58();
  MEMORY[0x25F86CE10](0xD000000000000016, 0x800000025B793F10);
  type metadata accessor for PrecipitationOutlook(0);
  v0 = PrecipitationOutlook.State.description.getter();
  MEMORY[0x25F86CE10](v0);

  MEMORY[0x25F86CE10](544497952, 0xE400000000000000);
  sub_25B78FD88();
  sub_25B7784E8(&qword_27FBA1E40, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v1 = sub_25B790BD8();
  MEMORY[0x25F86CE10](v1);

  MEMORY[0x25F86CE10](0xD000000000000012, 0x800000025B793F30);
  sub_25B790748();
  return 0;
}

uint64_t _s25NanoWeatherKitUICompanion20PrecipitationOutlookV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_25B78FD48() & 1) != 0 && (v4 = type metadata accessor for PrecipitationOutlook(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[7]) == *(a2 + v4[7]) && (_s25NanoWeatherKitUICompanion20PrecipitationOutlookV5StateO21__derived_enum_equalsySbAE_AEtFZ_0(a1 + v4[8], (a2 + v4[8])))
  {
    v5 = sub_25B78FEC8();
    v7 = v6;
    if (v5 == sub_25B78FEC8() && v7 == v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_25B790BE8();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t _s25NanoWeatherKitUICompanion20PrecipitationOutlookV5StateO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, char *a2)
{
  v97 = a2;
  v3 = sub_25B790348();
  v95 = *(v3 - 8);
  v96 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v93 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v89 = (&v84 - v7);
  v8 = MEMORY[0x28223BE20](v6);
  v90 = &v84 - v9;
  MEMORY[0x28223BE20](v8);
  v87 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v86 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v85 = &v84 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v92 = &v84 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v94 = &v84 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v84 - v20;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F18, &qword_25B793060);
  v22 = MEMORY[0x28223BE20](v91);
  v88 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v84 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v84 - v27;
  v29 = type metadata accessor for PrecipitationOutlook.State(0);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v84 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v84 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F20, &qword_25B793068);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v41 = &v84 + *(v39 + 56) - v40;
  v42 = a1;
  v43 = &v84 - v40;
  sub_25B778B1C(v42, &v84 - v40, type metadata accessor for PrecipitationOutlook.State);
  sub_25B778B1C(v97, v41, type metadata accessor for PrecipitationOutlook.State);
  v97 = v43;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v45 = v21;
    v46 = v94;
    if (!EnumCaseMultiPayload)
    {
      sub_25B778B1C(v97, v37, type metadata accessor for PrecipitationOutlook.State);
      if (swift_getEnumCaseMultiPayload())
      {
        v47 = v37;
        goto LABEL_20;
      }

      v61 = *(v91 + 48);
      sub_25B76D804(v37, v28);
      sub_25B76D804(v41, &v28[v61]);
      v62 = v96;
      v63 = *(v95 + 48);
      if (v63(v28, 1, v96) == 1)
      {
        if (v63(&v28[v61], 1, v62) == 1)
        {
          sub_25B76966C(v28, &qword_27FBA1AF8, &unk_25B791E40);
          goto LABEL_14;
        }

        goto LABEL_38;
      }

      sub_25B7794F0(v28, v45);
      if (v63(&v28[v61], 1, v62) == 1)
      {
        (*(v95 + 8))(v45, v62);
LABEL_38:
        sub_25B76966C(v28, &qword_27FBA1F18, &qword_25B793060);
        goto LABEL_52;
      }

      v77 = v95;
      v78 = v87;
      (*(v95 + 32))(v87, &v28[v61], v62);
      sub_25B7784E8(&qword_27FBA1F30, MEMORY[0x277CE3328], MEMORY[0x277CE3340]);
      v79 = sub_25B790608();
      v80 = *(v77 + 8);
      v80(v78, v62);
      v80(v45, v62);
      v81 = v28;
LABEL_51:
      sub_25B76966C(v81, &qword_27FBA1AF8, &unk_25B791E40);
      if (v79)
      {
        goto LABEL_14;
      }

      goto LABEL_52;
    }

    sub_25B778B1C(v97, v35, type metadata accessor for PrecipitationOutlook.State);
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25B76966C(&v35[v57], &qword_27FBA1AF8, &unk_25B791E40);
      (*(v95 + 8))(v35, v96);
      goto LABEL_22;
    }

    v58 = v95;
    v59 = (v95 + 32);
    v89 = *(v95 + 32);
    v89(v90, v41, v96);
    sub_25B76D804(&v35[v57], v46);
    sub_25B76D804(&v41[v57], v92);
    sub_25B7784E8(&qword_27FBA1F28, MEMORY[0x277CE3328], MEMORY[0x277CE3348]);
    sub_25B790708();
    sub_25B790708();
    v93 = v59;
    if (v100 == v98 && v101 == v99)
    {
      v60 = 1;
    }

    else
    {
      v60 = sub_25B790BE8();
    }

    v66 = *(v58 + 8);
    v67 = v96;
    v66(v35, v96);
    if ((v60 & 1) == 0)
    {
      sub_25B76966C(v92, &qword_27FBA1AF8, &unk_25B791E40);
      sub_25B76966C(v46, &qword_27FBA1AF8, &unk_25B791E40);
      v66(v90, v67);
      goto LABEL_52;
    }

    v68 = *(v91 + 48);
    sub_25B7794F0(v46, v26);
    v69 = v92;
    sub_25B7794F0(v92, &v26[v68]);
    v70 = *(v58 + 48);
    if (v70(v26, 1, v67) == 1)
    {
      sub_25B76966C(v69, &qword_27FBA1AF8, &unk_25B791E40);
      sub_25B76966C(v46, &qword_27FBA1AF8, &unk_25B791E40);
      v66(v90, v67);
      if (v70(&v26[v68], 1, v67) == 1)
      {
        sub_25B76966C(v26, &qword_27FBA1AF8, &unk_25B791E40);
        goto LABEL_14;
      }
    }

    else
    {
      v74 = v85;
      sub_25B7794F0(v26, v85);
      if (v70(&v26[v68], 1, v67) != 1)
      {
        v82 = &v26[v68];
        v83 = v87;
        v89(v87, v82, v67);
        sub_25B7784E8(&qword_27FBA1F30, MEMORY[0x277CE3328], MEMORY[0x277CE3340]);
        v79 = sub_25B790608();
        v66(v83, v67);
        sub_25B76966C(v92, &qword_27FBA1AF8, &unk_25B791E40);
        sub_25B76966C(v46, &qword_27FBA1AF8, &unk_25B791E40);
        v66(v90, v67);
        v66(v74, v67);
        v81 = v26;
        goto LABEL_51;
      }

      sub_25B76966C(v92, &qword_27FBA1AF8, &unk_25B791E40);
      sub_25B76966C(v46, &qword_27FBA1AF8, &unk_25B791E40);
      v66(v90, v67);
      v66(v74, v67);
    }

    sub_25B76966C(v26, &qword_27FBA1F18, &qword_25B793060);
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_25B778B1C(v97, v32, type metadata accessor for PrecipitationOutlook.State);
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v50 = v95;
      v49 = v96;
      v51 = *(v95 + 32);
      v52 = v89;
      v51(v89, &v32[v48], v96);
      v51(v93, &v41[v48], v49);
      v53 = *(v91 + 48);
      v54 = v88;
      sub_25B76D804(v32, v88);
      sub_25B76D804(v41, v54 + v53);
      v55 = *(v50 + 48);
      if (v55(v54, 1, v49) == 1)
      {
        if (v55(v54 + v53, 1, v49) == 1)
        {
          sub_25B76966C(v54, &qword_27FBA1AF8, &unk_25B791E40);
          goto LABEL_40;
        }
      }

      else
      {
        v64 = v86;
        sub_25B7794F0(v54, v86);
        if (v55(v54 + v53, 1, v49) != 1)
        {
          v71 = v87;
          v51(v87, (v54 + v53), v49);
          sub_25B7784E8(&qword_27FBA1F30, MEMORY[0x277CE3328], MEMORY[0x277CE3340]);
          v72 = sub_25B790608();
          v65 = *(v50 + 8);
          v65(v71, v49);
          v65(v64, v49);
          sub_25B76966C(v54, &qword_27FBA1AF8, &unk_25B791E40);
          if (v72)
          {
LABEL_40:
            sub_25B7784E8(&qword_27FBA1F28, MEMORY[0x277CE3328], MEMORY[0x277CE3348]);
            sub_25B790708();
            sub_25B790708();
            if (v100 == v98 && v101 == v99)
            {
              v73 = *(v50 + 8);
              v73(v93, v49);
              v73(v52, v49);

              goto LABEL_14;
            }

            v75 = sub_25B790BE8();
            v76 = *(v50 + 8);
            v76(v93, v49);
            v76(v52, v49);

            if (v75)
            {
              goto LABEL_14;
            }

LABEL_52:
            sub_25B778B84(v97, type metadata accessor for PrecipitationOutlook.State);
            return 0;
          }

LABEL_29:
          v65(v93, v49);
          v65(v52, v49);
          goto LABEL_52;
        }

        (*(v50 + 8))(v64, v49);
      }

      sub_25B76966C(v54, &qword_27FBA1F18, &qword_25B793060);
      v65 = *(v50 + 8);
      goto LABEL_29;
    }

    (*(v95 + 8))(&v32[v48], v96);
    v47 = v32;
LABEL_20:
    sub_25B76966C(v47, &qword_27FBA1AF8, &unk_25B791E40);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_22;
    }

LABEL_14:
    sub_25B778B84(v97, type metadata accessor for PrecipitationOutlook.State);
    return 1;
  }

  if (swift_getEnumCaseMultiPayload() == 4)
  {
    goto LABEL_14;
  }

LABEL_22:
  sub_25B76966C(v97, &qword_27FBA1F20, &qword_25B793068);
  return 0;
}

unint64_t sub_25B77C3B8()
{
  result = qword_27FBA1DC8;
  if (!qword_27FBA1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1DC8);
  }

  return result;
}

unint64_t sub_25B77C40C()
{
  result = qword_27FBA1DD0;
  if (!qword_27FBA1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1DD0);
  }

  return result;
}

unint64_t sub_25B77C460()
{
  result = qword_27FBA1DE0;
  if (!qword_27FBA1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1DE0);
  }

  return result;
}

unint64_t sub_25B77C4B4()
{
  result = qword_27FBA1DE8;
  if (!qword_27FBA1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1DE8);
  }

  return result;
}

unint64_t sub_25B77C508()
{
  result = qword_27FBA1DF0;
  if (!qword_27FBA1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1DF0);
  }

  return result;
}

unint64_t sub_25B77C55C()
{
  result = qword_27FBA1DF8;
  if (!qword_27FBA1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1DF8);
  }

  return result;
}

uint64_t sub_25B77C5C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25B78FD88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = type metadata accessor for PrecipitationOutlook.State(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[8];
    goto LABEL_3;
  }

  v15 = sub_25B78FF28();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_25B77C758(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_25B78FD88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v13 = type metadata accessor for PrecipitationOutlook.State(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_25B78FF28();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_25B77C8C8(uint64_t a1)
{
  result = sub_25B78FD88();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PrecipitationOutlook.State(319);
    if (v3 <= 0x3F)
    {
      result = sub_25B78FF28();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_25B77C9C8(uint64_t a1)
{
  sub_25B77CA50(319);
  if (v1 <= 0x3F)
  {
    sub_25B77CAA8(319);
    if (v2 <= 0x3F)
    {
      sub_25B77CB24(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_25B77CA50(uint64_t a1)
{
  if (!qword_27FBA1E68)
  {
    sub_25B790348();
    v1 = sub_25B7909B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FBA1E68);
    }
  }
}

void sub_25B77CAA8(uint64_t a1)
{
  if (!qword_27FBA1E70)
  {
    sub_25B790348();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBA1AF8, &unk_25B791E40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FBA1E70);
    }
  }
}

void sub_25B77CB24(uint64_t a1)
{
  if (!qword_27FBA1E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBA1AF8, &unk_25B791E40);
    sub_25B790348();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FBA1E78);
    }
  }
}

uint64_t getEnumTagSinglePayload for PrecipitationOutlook.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}