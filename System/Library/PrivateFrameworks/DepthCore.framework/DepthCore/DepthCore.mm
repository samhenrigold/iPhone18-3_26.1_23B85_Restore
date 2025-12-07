uint64_t get_enum_tag_for_layout_string_9DepthCore19TemperatureProviderO(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

void sub_2487F567C(uint64_t a1)
{
  sub_2487F573C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2487F573C(uint64_t a1)
{
  if (!qword_280DD0B40)
  {
    sub_24882AA28();
    v1 = sub_24882B218();
    if (!v2)
    {
      atomic_store(v1, &qword_280DD0B40);
    }
  }
}

id DepthFormatter.init(configuration:)(uint64_t a1)
{
  v3 = *(a1 + 112);
  v57[6] = *(a1 + 96);
  v58 = v3;
  v59 = *(a1 + 128);
  v4 = *(a1 + 48);
  v57[2] = *(a1 + 32);
  v57[3] = v4;
  v5 = *(a1 + 80);
  v57[4] = *(a1 + 64);
  v57[5] = v5;
  v6 = *(a1 + 16);
  v57[0] = *a1;
  v57[1] = v6;
  v7 = OBJC_IVAR___DKDepthFormatter____lazy_storage___decimalDigitsAndPunctuationSet;
  v8 = sub_24882AA28();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v9 = &v1[OBJC_IVAR___DKDepthFormatter_configuration];
  v10 = *(a1 + 112);
  *(v9 + 6) = *(a1 + 96);
  *(v9 + 7) = v10;
  *(v9 + 16) = *(a1 + 128);
  v11 = *(a1 + 48);
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 3) = v11;
  v12 = *(a1 + 80);
  *(v9 + 4) = *(a1 + 64);
  *(v9 + 5) = v12;
  v13 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v13;
  v14 = objc_allocWithZone(MEMORY[0x277CCABB8]);
  sub_2487F5E08(v57, v56);
  v15 = [v14 init];
  v16 = OBJC_IVAR___DKDepthFormatter_depthNumberFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_depthNumberFormatter] = v15;
  v17 = BYTE2(v58);
  [v15 setMaximumFractionDigits_];
  [*&v1[v16] setMinimumFractionDigits_];
  v18 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  v19 = OBJC_IVAR___DKDepthFormatter_depthMeasurementFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_depthMeasurementFormatter] = v18;
  [v18 setUnitStyle_];
  [*&v1[v19] setUnitOptions_];
  result = [*&v1[v19] numberFormatter];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = result;
  [result setMaximumFractionDigits_];

  result = [*&v1[v19] numberFormatter];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = result;
  [result setMinimumFractionDigits_];

  v23 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  v24 = OBJC_IVAR___DKDepthFormatter_depthIntegerNumberFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_depthIntegerNumberFormatter] = v23;
  [v23 setMaximumFractionDigits_];
  [*&v1[v24] setMinimumFractionDigits_];
  v25 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  v26 = OBJC_IVAR___DKDepthFormatter_depthIntegerMeasurementFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_depthIntegerMeasurementFormatter] = v25;
  [v25 setUnitStyle_];
  [*&v1[v26] setUnitOptions_];
  result = [*&v1[v26] numberFormatter];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = result;
  [result setMaximumFractionDigits_];

  result = [*&v1[v26] numberFormatter];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v28 = result;
  [result setMinimumFractionDigits_];

  v29 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v30 = OBJC_IVAR___DKDepthFormatter_hoursMinutesSecondsUnderwaterTimeFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_hoursMinutesSecondsUnderwaterTimeFormatter] = v29;
  [v29 setZeroFormattingBehavior_];
  [*&v1[v30] setAllowedUnits_];
  v31 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v32 = OBJC_IVAR___DKDepthFormatter_hoursMinutesUnderwaterTimeFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_hoursMinutesUnderwaterTimeFormatter] = v31;
  [v31 setZeroFormattingBehavior_];
  [*&v1[v32] setAllowedUnits_];
  v33 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v34 = OBJC_IVAR___DKDepthFormatter_minutesSecondsShortUnderwaterTimeFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_minutesSecondsShortUnderwaterTimeFormatter] = v33;
  [v33 setZeroFormattingBehavior_];
  [*&v1[v34] setAllowedUnits_];
  v35 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v36 = OBJC_IVAR___DKDepthFormatter_secondsOnlyShortUnderwaterTimeFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_secondsOnlyShortUnderwaterTimeFormatter] = v35;
  [v35 setZeroFormattingBehavior_];
  [*&v1[v36] setAllowedUnits_];
  v37 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v38 = OBJC_IVAR___DKDepthFormatter_diveHistoryDiveDurationFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_diveHistoryDiveDurationFormatter] = v37;
  [v37 setAllowedUnits_];
  [*&v1[v38] setUnitsStyle_];
  [*&v1[v38] setZeroFormattingBehavior_];
  v39 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  v40 = OBJC_IVAR___DKDepthFormatter_temperatureFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_temperatureFormatter] = v39;
  [v39 setUnitStyle_];
  result = [*&v1[v40] numberFormatter];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v41 = result;
  [result setMaximumFractionDigits_];

  result = [*&v1[v40] numberFormatter];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v42 = result;
  [result setMinimumFractionDigits_];

  [*&v1[v40] setUnitOptions_];
  v43 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  v44 = OBJC_IVAR___DKDepthFormatter_temperatureUnitlessFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_temperatureUnitlessFormatter] = v43;
  [v43 setUnitStyle_];
  [*&v1[v44] setUnitOptions_];
  result = [*&v1[v44] numberFormatter];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v45 = result;
  [result setMaximumFractionDigits_];

  result = [*&v1[v44] numberFormatter];
  if (result)
  {
    v46 = result;
    sub_2487F5E64(v57);
    [v46 setMinimumFractionDigits_];

    v47 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v48 = OBJC_IVAR___DKDepthFormatter_startDateFormatter;
    *&v1[OBJC_IVAR___DKDepthFormatter_startDateFormatter] = v47;
    [v47 setDoesRelativeDateFormatting_];
    [*&v1[v48] setDateStyle_];
    [*&v1[v48] setTimeStyle_];
    v49 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v50 = OBJC_IVAR___DKDepthFormatter_endDateFormatter;
    *&v1[OBJC_IVAR___DKDepthFormatter_endDateFormatter] = v49;
    [v49 setDateStyle_];
    [*&v1[v50] setTimeStyle_];
    v51 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v52 = OBJC_IVAR___DKDepthFormatter_voiceoverDateFormatter;
    *&v1[OBJC_IVAR___DKDepthFormatter_voiceoverDateFormatter] = v51;
    [v51 setDateStyle_];
    [*&v1[v52] setTimeStyle_];
    v53 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    v54 = OBJC_IVAR___DKDepthFormatter_batteryLevelFormatter;
    *&v1[OBJC_IVAR___DKDepthFormatter_batteryLevelFormatter] = v53;
    [v53 setMaximumFractionDigits_];
    [*&v1[v54] setNumberStyle_];
    v55.receiver = v1;
    v55.super_class = type metadata accessor for DepthFormatter(0);
    return objc_msgSendSuper2(&v55, sel_init);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DepthFormatter(uint64_t a1)
{
  result = qword_280DD0B28;
  if (!qword_280DD0B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_2487F5F24(void *a1, uint64_t *a2)
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

uint64_t sub_2487F5FA0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2487F5FD8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2487F5FE8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2487F6020()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

__n128 sub_2487F606C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_2487F6078@<X0>(uint64_t *a1@<X8>)
{
  result = sub_248802AD8();
  *a1 = result;
  return result;
}

uint64_t sub_2487F6104(uint64_t a1, uint64_t a2)
{
  v4 = sub_24882AA88();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2487F6170(uint64_t a1, uint64_t a2)
{
  v4 = sub_24882AA88();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2487F61F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24882ABE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_24882AB78();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 36) + 16);
      if (v14 > 2)
      {
        return (v14 ^ 0xFF) + 1;
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

uint64_t sub_2487F6300(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24882ABE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24882AB78();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 16) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2487F6414(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24882ABE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24882AA88();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 253)
  {
    v14 = *(a1 + a3[8] + 16);
    if (v14 > 2)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2487F6590(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24882ABE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_24882AA88();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 253)
  {
    *(a1 + a4[8] + 16) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[11];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t _s9DepthCore14DepthTransformVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9DepthCore14DepthTransformVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_2487F6764()
{
  if (*v0)
  {
    return 0x65746144646E65;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_2487F67A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnderwaterTime(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_2487F6820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnderwaterTime(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_2487F689C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24882ABE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for UnderwaterTime(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 32));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
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

uint64_t sub_2487F69B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24882ABE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UnderwaterTime(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2487F6AD8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2487F6BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24882ABE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2487F6C68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24882ABE8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2487F6D20()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2487F6D68()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2487F6DAC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2487F6DE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2487F6E2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2487F6E64()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2487F6E9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2487F6EF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2487F6FB0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t getEnumTagSinglePayload for TemperatureValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TemperatureValue(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_2487F713C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0xE700000000000000;
      v5 = 0x6C616E696D6F6ELL;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0xD000000000000011;
      }

      else
      {
        v5 = 0xD000000000000014;
      }

      if (v2 == 4)
      {
        v6 = 0x800000024882FFB0;
      }

      else
      {
        v6 = 0x800000024882FFD0;
      }
    }
  }

  else
  {
    v3 = 0x656D627553746F6ELL;
    v4 = 0xEC00000064656772;
    if (a1 != 1)
    {
      v3 = 0x776F6C6C616873;
      v4 = 0xE700000000000000;
    }

    if (a1)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v7 = 0xE700000000000000;
      if (v5 != 0x6C616E696D6F6ELL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v8 = 0xD000000000000011;
      }

      else
      {
        v8 = 0xD000000000000014;
      }

      if (a2 == 4)
      {
        v7 = 0x800000024882FFB0;
      }

      else
      {
        v7 = 0x800000024882FFD0;
      }

      if (v5 != v8)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xEC00000064656772;
      if (v5 != 0x656D627553746F6ELL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v7 = 0xE700000000000000;
      if (v5 != 0x776F6C6C616873)
      {
LABEL_39:
        v9 = sub_24882B4B8();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v5 != 0x6E776F6E6B6E75)
    {
      goto LABEL_39;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9 & 1;
}

uint64_t sub_2487F7334()
{
  sub_24882B528();
  MEMORY[0x24C1D9CA0](1);
  return sub_24882B548();
}

uint64_t sub_2487F7378(unsigned __int8 a1)
{
  sub_24882B528();
  sub_24882AF88();

  return sub_24882B548();
}

uint64_t sub_2487F74B4(uint64_t a1)
{
  sub_24882B528();
  MEMORY[0x24C1D9CA0](1);
  return sub_24882B548();
}

uint64_t sub_2487F74F4(uint64_t a1, unsigned __int8 a2)
{
  sub_24882B528();
  sub_24882AF88();

  return sub_24882B548();
}

uint64_t sub_2487F7628()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6C616E696D6F6ELL;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D627553746F6ELL;
  if (v1 != 1)
  {
    v5 = 0x776F6C6C616873;
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

uint64_t static WaterDepth.Category.fromString(_:)@<X0>(char *x8_0@<X8>)
{

  return WaterDepth.Category.init(rawValue:)(x8_0);
}

uint64_t WaterDepth.Category.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_24882B3A8();

  v6 = 6;
  if (v4 < 6)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_2487F77B4(uint64_t a1)
{
  sub_24882AF88();
}

void sub_2487F78C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x6C616E696D6F6ELL;
  v7 = 0xD000000000000011;
  v8 = 0x800000024882FFB0;
  if (v2 != 4)
  {
    v7 = 0xD000000000000014;
    v8 = 0x800000024882FFD0;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xEC00000064656772;
  v10 = 0x656D627553746F6ELL;
  if (v2 != 1)
  {
    v10 = 0x776F6C6C616873;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

void WaterDepth.category.getter(char *a1@<X8>)
{
  if (v1[8] > 1u)
  {
    if (v1[8] == 2)
    {
      *a1 = 4;
    }

    else
    {
      *a1 = 0x50100u >> (8 * *v1);
    }
  }

  else
  {
    if (v1[8])
    {
      v2 = 3;
    }

    else
    {
      v2 = 2;
    }

    *a1 = v2;
  }
}

void static WaterDepth.depth(fromDepthValue:categoryString:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);

  WaterDepth.Category.init(rawValue:)(&v18);
  if (v18 <= 2u)
  {
    if (!v18)
    {
      v9 = 3;
      v7 = 0;
      goto LABEL_25;
    }

    if (v18 == 1)
    {
      v9 = 3;
      v7 = 1;
      goto LABEL_25;
    }

    if ((v8 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if (v18 > 4u)
    {
      if (v18 == 5)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }

      if (v18 == 5)
      {
        v9 = 3;
      }

      else
      {
        v9 = -1;
      }

      goto LABEL_25;
    }

    if (v18 == 3)
    {
      if ((v8 & 1) == 0)
      {
        v9 = 1;
        goto LABEL_25;
      }
    }

    else if ((v8 & 1) == 0)
    {
      v9 = 2;
      goto LABEL_25;
    }
  }

  if (qword_27EEA9950 != -1)
  {
    swift_once();
  }

  v10 = sub_24882AC88();
  __swift_project_value_buffer(v10, qword_27EEAA810);

  v11 = sub_24882AC68();
  v12 = sub_24882B138();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315394;
    v18 = v7;
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA99A0, &qword_24882BDB0);
    v15 = sub_24882AF58();
    v17 = sub_2487F852C(v15, v16, &v20);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2487F852C(a2, a3, &v20);
    _os_log_impl(&dword_2487F4000, v11, v12, "ERROR: Failure to realized serialized WaterDepth from values %s,%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1DA290](v14, -1, -1);
    MEMORY[0x24C1DA290](v13, -1, -1);
  }

  v7 = 0;
  v9 = -1;
LABEL_25:
  *a4 = v7;
  *(a4 + 8) = v9;
}

uint64_t static WaterDepth.maxDepth(fromMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_2487F8B2C(0xD00000000000001DLL, 0x8000000248830060), (v5 & 1) != 0) && (sub_2487F8BA4(*(a1 + 56) + 32 * v4, v17), swift_dynamicCast()))
  {
    v6 = 0;
    v7 = v13;
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  v15 = v7;
  v16 = v6;
  if (*(a1 + 16) && (v8 = sub_2487F8B2C(0xD000000000000025, 0x8000000248830080), (v9 & 1) != 0) && (sub_2487F8BA4(*(a1 + 56) + 32 * v8, v17), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v13;
    v11 = v14;
  }

  else
  {
    v11 = 0xEF79726F67657461;
    v10 = 0x63676E697373696DLL;
  }

  static WaterDepth.depth(fromDepthValue:categoryString:)(&v15, v10, v11, a2);
}

uint64_t static WaterDepth.depth(fromMetadata:valueKey:categoryKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a1 + 16) && (v10 = sub_2487F8B2C(a2, a3), (v11 & 1) != 0) && (sub_2487F8BA4(*(a1 + 56) + 32 * v10, v23), (swift_dynamicCast() & 1) != 0))
  {
    v12 = 0;
    v13 = v19;
  }

  else
  {
    v13 = 0;
    v12 = 1;
  }

  v21 = v13;
  v22 = v12;
  if (*(a1 + 16) && (v14 = sub_2487F8B2C(a4, a5), (v15 & 1) != 0) && (sub_2487F8BA4(*(a1 + 56) + 32 * v14, v23), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v19;
    v17 = v20;
  }

  else
  {
    v17 = 0xEF79726F67657461;
    v16 = 0x63676E697373696DLL;
  }

  static WaterDepth.depth(fromDepthValue:categoryString:)(&v21, v16, v17, a6);
}

unint64_t WaterDepth.asMetadata(usingValueKey:categoryKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(v4 + 8);
  v11 = sub_2487F8CB8(MEMORY[0x277D84F90]);
  if (v10 < 3)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v11;
    sub_2487F8DBC(v12, a1, a2, isUniquelyReferenced_nonNull_native, &v17);

    v11 = v17;
  }

  v14 = sub_24882AED8();

  v15 = swift_isUniquelyReferenced_nonNull_native();
  v17 = v11;
  sub_2487F8DBC(v14, a3, a4, v15, &v17);

  return v17;
}

void static TemperatureRange.temperatureRange(fromMetadata:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_2487F8B2C(0xD000000000000021, 0x80000002488300E0), (v5 & 1) != 0) && (sub_2487F8BA4(*(a1 + 56) + 32 * v4, v14), sub_2487F8F38(), (swift_dynamicCast() & 1) != 0) && ([v13 doubleValue], v7 = v6, v13, *(a1 + 16)) && (v8 = sub_2487F8B2C(0xD000000000000021, 0x80000002488300B0), (v9 & 1) != 0) && (sub_2487F8BA4(*(a1 + 56) + 32 * v8, v14), (swift_dynamicCast() & 1) != 0))
  {
    [v13 doubleValue];
    v11 = v10;

    if (v7 == v11)
    {
      *a2 = v7;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return;
    }

    if (v11 >= v7)
    {
      *a2 = v7;
      *(a2 + 8) = v11;
    }

    else
    {
      *a2 = v11;
      *(a2 + 8) = v7;
    }

    v12 = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = -1;
  }

  *(a2 + 16) = v12;
}

unint64_t TemperatureRange.asMetadata.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  result = sub_2487F8CB8(MEMORY[0x277D84F90]);
  if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    v5 = v1;
    v6 = result;
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v6;
    sub_2487F8DBC(v7, 0xD000000000000021, 0x80000002488300B0, isUniquelyReferenced_nonNull_native, &v17);
    v9 = v17;
    v10 = "_HKPrivateMetadataKeyMaxWaterTemp";
  }

  else
  {
    v2 = v1;
    v11 = result;
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v17 = v11;
    sub_2487F8DBC(v12, 0xD000000000000021, 0x80000002488300E0, v13, &v17);
    v9 = v17;
    v10 = "_HKPrivateMetadataKeyMinWaterTemp";
  }

  v14 = v10 - 32;
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v17 = v9;
  sub_2487F8DBC(v15, 0xD000000000000021, v14 | 0x8000000000000000, v16, &v17);
  return v17;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2487F845C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2487F84D0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2487F852C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2487F852C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2487F85F8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2487F8BA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2487F85F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2487F8704(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24882B2F8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2487F8704(uint64_t a1, unint64_t a2)
{
  v3 = sub_2487F8750(a1, a2);
  sub_2487F8880(&unk_285B43708);
  return v3;
}

void *sub_2487F8750(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2487F896C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24882B2F8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24882AFA8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2487F896C(v10, 0);
        result = sub_24882B268();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2487F8880(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2487F89E0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2487F896C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9AF8, &qword_24882BF88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2487F89E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9AF8, &qword_24882BF88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2487F8AD4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
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

unint64_t sub_2487F8B2C(uint64_t a1, uint64_t a2)
{
  sub_24882B528();
  sub_24882AF88();
  v4 = sub_24882B548();

  return sub_2487F8C00(a1, a2, v4);
}

uint64_t sub_2487F8BA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2487F8C00(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24882B4B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2487F8CB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9AF0, &qword_24882BF80);
    v3 = sub_24882B388();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_2487F8B2C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2487F8DBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_2487F8B2C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2487FD128(v16, a4 & 1);
      v11 = sub_2487F8B2C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_24882B4C8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2487FDB58();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
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

unint64_t sub_2487F8F38()
{
  result = qword_27EEA99A8;
  if (!qword_27EEA99A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEA99A8);
  }

  return result;
}

unint64_t sub_2487F8F88()
{
  result = qword_27EEA99B0;
  if (!qword_27EEA99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA99B0);
  }

  return result;
}

unint64_t sub_2487F8FE0()
{
  result = qword_27EEA99B8;
  if (!qword_27EEA99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA99B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiveWorkoutUtil(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DiveWorkoutUtil(_WORD *result, int a2, int a3)
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

uint64_t _s8CategoryOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8CategoryOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2487F9280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9A28, qword_24882BF68);
    v3 = sub_24882B388();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2487F8B2C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2487F93A8()
{
  sub_24882B528();
  MEMORY[0x24C1D9CA0](0);
  v0 = sub_24882B548();

  return sub_2487F937C(v0);
}

unint64_t sub_2487F9400(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9A20, &qword_24882BF60);
    v3 = sub_24882B388();
    for (i = (a1 + 32); ; ++i)
    {
      v5 = *i;
      result = sub_2487F93A8();
      if (v7)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 56) + result) = v5;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t FormattedDepthComponents.formattedString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormattedDepthComponents.valueString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormattedDepthComponents.unitString.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2487F95F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24882AA28();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C50, &qword_24882C0B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v20[-v15];
  v17 = OBJC_IVAR___DKDepthFormatter____lazy_storage___decimalDigitsAndPunctuationSet;
  swift_beginAccess();
  sub_2487FAE0C(v2 + v17, v16);
  if ((*(v5 + 48))(v16, 1, v4) != 1)
  {
    return (*(v5 + 32))(a1, v16, v4);
  }

  sub_2487FAE7C(v16);
  sub_24882A9E8();
  sub_24882A9F8();
  sub_24882AA08();
  v18 = *(v5 + 8);
  v18(v8, v4);
  v18(v10, v4);
  (*(v5 + 16))(v14, a1, v4);
  (*(v5 + 56))(v14, 0, 1, v4);
  swift_beginAccess();
  sub_2487FAEE4(v14, v2 + v17);
  return swift_endAccess();
}

uint64_t sub_2487F98A4()
{
  if (*(v0 + OBJC_IVAR___DKDepthFormatter_configuration + 115))
  {
    v1 = "BOL_CELCIUS_SHORT";
  }

  else
  {
    v1 = "taKeyDiveSegmentType";
  }

  if (*(v0 + OBJC_IVAR___DKDepthFormatter_configuration + 115))
  {
    v2 = 0xD000000000000036;
  }

  else
  {
    v2 = 0xD000000000000031;
  }

  return sub_2487FB274(v2, v1 | 0x8000000000000000);
}

uint64_t sub_2487F98EC()
{
  if (*(v0 + OBJC_IVAR___DKDepthFormatter_configuration + 114))
  {
    v1 = "BOL_FAHRENHEIGHT_SHORT";
  }

  else
  {
    v1 = "CHARON_SUBMERGE_TO_CONTINUE_M";
  }

  if (*(v0 + OBJC_IVAR___DKDepthFormatter_configuration + 114))
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v2 = 0xD00000000000001ELL;
  }

  return sub_2487FB274(v2, v1 | 0x8000000000000000);
}

uint64_t sub_2487F9930(double a1)
{
  v3 = &OBJC_IVAR___DKDepthFormatter_minutesSecondsShortUnderwaterTimeFormatter;
  if (a1 >= 3600.0)
  {
    v3 = &OBJC_IVAR___DKDepthFormatter_hoursMinutesSecondsUnderwaterTimeFormatter;
  }

  v4 = *(v1 + *v3);
  v5 = [v4 stringFromTimeInterval_];
  if (v5)
  {
    v6 = v5;
    v7 = sub_24882AEF8();

    v4 = v6;
  }

  else
  {
    v7 = sub_2487FB274(0xD000000000000013, 0x8000000248830230);
  }

  return v7;
}

uint64_t sub_2487F99FC()
{
  v1 = [*(v0 + OBJC_IVAR___DKDepthFormatter_diveHistoryDiveDurationFormatter) stringFromTimeInterval_];
  if (v1)
  {
    v2 = v1;
    v3 = sub_24882AEF8();

    return v3;
  }

  else
  {

    return sub_2487FB274(0xD000000000000013, 0x8000000248830230);
  }
}

uint64_t sub_2487F9A98(double a1)
{
  v3 = &OBJC_IVAR___DKDepthFormatter_secondsOnlyShortUnderwaterTimeFormatter;
  v4 = &OBJC_IVAR___DKDepthFormatter_minutesSecondsShortUnderwaterTimeFormatter;
  if (a1 >= 3600.0)
  {
    v4 = &OBJC_IVAR___DKDepthFormatter_hoursMinutesUnderwaterTimeFormatter;
  }

  if (a1 >= 60.0)
  {
    v3 = v4;
  }

  v5 = *(v1 + *v3);
  v6 = [v5 stringFromTimeInterval_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_24882AEF8();
  }

  else
  {
    v8 = sub_2487FB274(0xD000000000000013, 0x8000000248830230);
    v7 = v5;
  }

  return v8;
}

uint64_t sub_2487F9B84(double a1)
{
  v1 = 72;
  if (a1 < 3600.0)
  {
    v1 = 77;
  }

  if (a1 >= 60.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 83;
  }

  MEMORY[0x24C1D9700](v2, 0xE100000000000000);

  v3 = sub_2487FB274(0xD00000000000001ELL, 0x8000000248830250);

  return v3;
}

uint64_t sub_2487F9C34(uint64_t a1)
{
  sub_2487FB274(0xD000000000000023, 0x8000000248830270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C40, &qword_24882C000);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_24882BFD0;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_24882AF18();

  return v5;
}

uint64_t sub_2487F9CEC(uint64_t *a1, char a2, char a3)
{
  if (a1[1])
  {
    return 11565;
  }

  v4 = *a1;
  return sub_2487F9D34(&v4, a2 & 1, a3 & 1);
}

uint64_t sub_2487F9D34(double *a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C58, &qword_24882C0B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  if (v3[OBJC_IVAR___DKDepthFormatter_configuration + 115] == 1)
  {
    v9 = &selRef_fahrenheit;
  }

  else
  {
    v9 = &selRef_celsius;
  }

  v10 = [objc_opt_self() *v9];
  sub_2487FAF54();
  sub_24882A9D8();
  v11 = sub_24882B1E8();
  v18 = v11;
  v19 = v12;
  if ((a3 & 1) == 0)
  {
    v16 = v11;
    v17 = v12;
    v13 = v3;
    sub_2487FAFA0(&v16, v13);

    v18 = v16;
    v19 = v17;
  }

  if (sub_24882AFB8())
  {
    v16 = 45;
    v17 = 0xE100000000000000;
    sub_2487FB214();
    sub_24882B118();
  }

  (*(v6 + 8))(v8, v5);
  return v18;
}

uint64_t sub_2487F9F5C(uint64_t a1, char a2)
{
  v2 = *a1;
  if (!*(a1 + 16))
  {
    v15 = *a1;
    return sub_2487F9D34(&v15, 0, a2 & 1);
  }

  if (*(a1 + 16) != 1)
  {
    return 11565;
  }

  v3 = *(a1 + 8);
  if (vabdd_f64(v2, v3) < 1.0)
  {
    v15 = (v3 + v2) * 0.5;
    return sub_2487F9D34(&v15, 0, a2 & 1);
  }

  sub_2487FB274(0x525F4E4F52414843, 0xEC00000045474E41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C40, &qword_24882C000);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24882BFE0;
  v15 = v2;
  v7 = sub_2487F9D34(&v15, 0, 0);
  v9 = v8;
  v10 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2487FA950();
  *(v6 + 64) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v15 = v3;
  v12 = sub_2487F9D34(&v15, 0, a2 & 1);
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 72) = v12;
  *(v6 + 80) = v13;
  v14 = sub_24882AEE8();

  return v14;
}

uint64_t sub_2487FA0F0(__int128 *a1)
{
  v2 = *(a1 + 16);
  v7 = *a1;
  v8 = v2;
  v3 = sub_2487F9F5C(&v7, 0);
  if (*(v1 + OBJC_IVAR___DKDepthFormatter_configuration + 115))
  {
    v4 = "BOL_CELCIUS_SHORT";
  }

  else
  {
    v4 = "taKeyDiveSegmentType";
  }

  if (*(v1 + OBJC_IVAR___DKDepthFormatter_configuration + 115))
  {
    v5 = 0xD000000000000036;
  }

  else
  {
    v5 = 0xD000000000000031;
  }

  sub_2487FB274(v5, v4 | 0x8000000000000000);
  return v3;
}

uint64_t sub_2487FA198()
{
  v1 = v0;
  v2 = sub_24882AB78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24882AA78();
  if (v6 >= 60.0)
  {
    v11 = sub_2487FB274(0x525F4E4F52414843, 0xEC00000045474E41);
    v29[0] = v12;
    v29[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C40, &qword_24882C000);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24882BFE0;
    v14 = *(v0 + OBJC_IVAR___DKDepthFormatter_startDateFormatter);
    sub_24882AA68();
    v15 = sub_24882AB28();
    v16 = *(v3 + 8);
    v16(v5, v2);
    v17 = [v14 stringFromDate_];

    v18 = sub_24882AEF8();
    v20 = v19;

    *(v13 + 56) = MEMORY[0x277D837D0];
    v21 = sub_2487FA950();
    *(v13 + 64) = v21;
    *(v13 + 32) = v18;
    *(v13 + 40) = v20;
    v22 = *(v1 + OBJC_IVAR___DKDepthFormatter_endDateFormatter);
    sub_24882AA48();
    v23 = sub_24882AB28();
    v16(v5, v2);
    v24 = [v22 stringFromDate_];

    v25 = sub_24882AEF8();
    v27 = v26;

    *(v13 + 96) = MEMORY[0x277D837D0];
    *(v13 + 104) = v21;
    *(v13 + 72) = v25;
    *(v13 + 80) = v27;
    v10 = sub_24882AEE8();
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR___DKDepthFormatter_startDateFormatter);
    sub_24882AA68();
    v8 = sub_24882AB28();
    (*(v3 + 8))(v5, v2);
    v9 = [v7 stringFromDate_];

    v10 = sub_24882AEF8();
  }

  return v10;
}

uint64_t sub_2487FA498(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  v4 = sub_24882AB28();
  v5 = [v3 stringFromDate_];

  v6 = sub_24882AEF8();
  return v6;
}

uint64_t sub_2487FA510(uint64_t a1)
{
  if (*(a1 + 4) > 1u)
  {
    return 11565;
  }

  sub_2487FB274(0x425F4E4F52414843, 0xEE00595245545441);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C40, &qword_24882C000);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24882BFD0;
  v3 = *(v1 + OBJC_IVAR___DKDepthFormatter_batteryLevelFormatter);
  v4 = sub_24882B0E8();
  v5 = [v3 stringFromNumber_];

  if (v5)
  {
    v6 = sub_24882AEF8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2487FA950();
  v10 = 11565;
  if (v8)
  {
    v10 = v6;
  }

  v11 = 0xE200000000000000;
  if (v8)
  {
    v11 = v8;
  }

  *(v2 + 32) = v10;
  *(v2 + 40) = v11;
  v12 = sub_24882AEE8();

  return v12;
}

uint64_t sub_2487FA678()
{
  v1 = *(v0 + OBJC_IVAR___DKDepthFormatter_depthIntegerNumberFormatter);
  v2 = sub_24882B0F8();
  v3 = [v1 stringForObjectValue_];

  if (!v3)
  {
    return sub_24882B498();
  }

  v4 = sub_24882AEF8();

  return v4;
}

id DepthFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DepthFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DepthFormatter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2487FA950()
{
  result = qword_27EEA9C48;
  if (!qword_27EEA9C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9C48);
  }

  return result;
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

uint64_t sub_2487FA9B8(uint64_t a1, int a2)
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

uint64_t sub_2487FAA00(uint64_t result, int a2, int a3)
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

uint64_t sub_2487FAE0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C50, &qword_24882C0B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2487FAE7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C50, &qword_24882C0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2487FAEE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C50, &qword_24882C0B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2487FAF54()
{
  result = qword_27EEA9C60;
  if (!qword_27EEA9C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEA9C60);
  }

  return result;
}

uint64_t sub_2487FAFA0(void *a1, uint64_t a2)
{
  v30 = a2;
  v26 = sub_24882AA28();
  MEMORY[0x28223BE20](v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  v28 = 0;
  v29 = 0xE000000000000000;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    v19 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_25;
  }

  v22 = a1;
  v23 = v2;
  v10 = 0;
  v24 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v25 = v7 & 0xFFFFFFFFFFFFFFLL;
  v11 = (v4 + 8);
  do
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      sub_24882B278();
      v15 = v14;
      goto LABEL_16;
    }

    if ((v7 & 0x2000000000000000) != 0)
    {
      v27[0] = v8;
      v27[1] = v25;
      v13 = v27 + v10;
    }

    else
    {
      v12 = v24;
      if ((v8 & 0x1000000000000000) == 0)
      {
        v12 = sub_24882B2F8();
      }

      v13 = (v12 + v10);
    }

    if ((*v13 & 0x80000000) == 0)
    {
LABEL_15:
      v15 = 1;
      goto LABEL_16;
    }

    v17 = (__clz(*v13 ^ 0xFF) - 24);
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v15 = 3;
      }

      else
      {
        v15 = 4;
      }
    }

    else
    {
      if (v17 == 1)
      {
        goto LABEL_15;
      }

      v15 = 2;
    }

LABEL_16:
    sub_2487F95F0(v6);
    v16 = sub_24882AA18();
    (*v11)(v6, v26);
    if (v16)
    {
      sub_24882AF78();
    }

    v10 += v15;
  }

  while (v10 < v9);

  v19 = v28;
  v20 = v29;
  a1 = v22;
LABEL_25:
  *a1 = v19;
  a1[1] = v20;
  return result;
}

unint64_t sub_2487FB214()
{
  result = qword_27EEA9C68;
  if (!qword_27EEA9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9C68);
  }

  return result;
}

Swift::String __swiftcall String.localizedDepthCore(comment:)(Swift::String comment)
{
  v3 = sub_2487FB274(v1, v2);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2487FB274(uint64_t a1, uint64_t a2)
{
  v2 = sub_24882AED8();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (!v3)
  {
    return 11565;
  }

  v4 = sub_24882AED8();
  v5 = sub_24882AED8();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_24882AEF8();
  return v7;
}

void sub_2487FB388(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2487FCC20(0, &qword_27EEA9C70, 0x277CCD830);
  v4 = *MEMORY[0x277CCCCD0];
  v5 = MEMORY[0x24C1D98C0]();
  v6 = COERCE_DOUBLE([a1 statisticsForType_]);

  if (v6 == 0.0)
  {
    goto LABEL_5;
  }

  v7 = [*&v6 minimumQuantity];

  if (!v7)
  {
    v6 = 0.0;
LABEL_5:
    v13 = 1;
    goto LABEL_6;
  }

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 degreeCelsiusUnit];
  [v9 doubleValueForUnit_];
  v12 = v11;

  v13 = 0;
  v6 = v12;
LABEL_6:
  v14 = MEMORY[0x24C1D98C0](v4);
  v15 = [a1 statisticsForType_];

  if (!v15 || (v16 = [v15 maximumQuantity], v15, !v16))
  {
    v22 = 0.0;
    if ((v13 & 1) == 0)
    {
      v23 = 0;
      goto LABEL_20;
    }

    v23 = 2;
    goto LABEL_12;
  }

  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 degreeCelsiusUnit];
  [v18 doubleValueForUnit_];
  v21 = v20;

  v22 = v21;
  if (v13)
  {
    v23 = 0;
LABEL_12:
    v6 = v22;
    v22 = 0.0;
    goto LABEL_20;
  }

  if (v21 <= v6)
  {
    v24 = v21;
  }

  else
  {
    v24 = v6;
  }

  if (v21 <= v6)
  {
    v22 = v6;
  }

  v23 = 1;
  v6 = v24;
LABEL_20:
  *a2 = v6;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
}

void static DiveWorkoutUtil.waterTemperatureRange(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 metadata];
  if (!v4 || (v5 = v4, sub_24882AE68(), v5, v6 = , static TemperatureRange.temperatureRange(fromMetadata:)(v6, &v8), swift_bridgeObjectRelease_n(), v7 = v9, v9 == 255))
  {

    sub_2487FB388(a1, a2);
  }

  else
  {
    *a2 = v8;
    *(a2 + 16) = v7;
  }
}

uint64_t static DiveWorkoutUtil.numberOfDives(from:)(void *a1)
{
  v1 = _s9DepthCore15DiveWorkoutUtilO23underwaterTimeIntervals4fromSay10Foundation12DateIntervalVGSo9HKWorkoutC_tFZ_0(a1)[2];

  return v1;
}

void static DiveWorkoutUtil.deviceType(fromWorkout:)(void *a1@<X0>, char *a2@<X8>)
{
  v3 = [a1 device];
  if (v3 && (v4 = v3, v5 = [v3 hardwareVersion], v4, v5))
  {
    v6 = sub_24882AEF8();
    v8 = v7;

    static DeviceType.deviceType(forDeviceIdentifier:)(v6, v8, &v10);

    v9 = v10;
  }

  else
  {
    v9 = 3;
  }

  *a2 = v9;
}

void static DiveWorkoutUtil.depthLimit(fromWorkout:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 device];
  if (v3 && (v4 = v3, v5 = [v3 hardwareVersion], v4, v5))
  {
    v6 = sub_24882AEF8();
    v8 = v7;

    static DeviceType.deviceType(forDeviceIdentifier:)(v6, v8, &v11);

    if (v11)
    {
      if (v11 == 1)
      {
        if (qword_27EEA9940 != -1)
        {
          swift_once();
        }

        v9 = &xmmword_27EEB0FD0;
      }

      else
      {
        if (qword_27EEA9948 != -1)
        {
          swift_once();
        }

        v9 = &xmmword_27EEB0FE0;
      }
    }

    else
    {
      if (qword_27EEA9938 != -1)
      {
        swift_once();
      }

      v9 = &xmmword_27EEB0FC0;
    }

    v10 = *(v9 + 1);
    *a2 = *v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }
}

void static DiveWorkoutUtil.waterDepthFrom(depthValue:workout:)(id a1@<X1>, double *a2@<X0>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = [a1 device];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [v5 hardwareVersion];

  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = sub_24882AEF8();
  v10 = v9;

  static DeviceType.deviceType(forDeviceIdentifier:)(v8, v10, &v13);

  if (v13)
  {
    if (v13 == 1)
    {
      if (qword_27EEA9940 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_27EEB0FD0 + 1;
    }

    else
    {
      if (qword_27EEA9948 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_27EEB0FE0 + 1;
    }
  }

  else
  {
    if (qword_27EEA9938 != -1)
    {
      swift_once();
    }

    v11 = &xmmword_27EEB0FC0 + 1;
  }

  if (*v11 <= v4)
  {
    v12 = 2;
  }

  else
  {
LABEL_15:
    v12 = 1;
  }

  *a3 = v4;
  *(a3 + 8) = v12;
}

void static DiveWorkoutUtil.maxDepth(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 metadata];
  if (!v4 || (v5 = v4, v6 = sub_24882AE68(), v5, static WaterDepth.maxDepth(fromMetadata:)(v6, &v14), , v7 = v15, v15 == 255))
  {
    sub_2487FCC20(0, &qword_27EEA9C70, 0x277CCD830);
    v8 = MEMORY[0x24C1D98C0](*MEMORY[0x277CCCC90]);
    v9 = [a1 statisticsForType_];

    if (v9)
    {
      v10 = [v9 maximumQuantity];

      if (v10)
      {
        v11 = [objc_opt_self() meterUnit];
        [v10 doubleValueForUnit_];
        v13 = v12;

        v14 = v13;
        static DiveWorkoutUtil.waterDepthFrom(depthValue:workout:)(a1, &v14, a2);

        return;
      }
    }

    *a2 = 0;
    v7 = 3;
  }

  else
  {
    *a2 = v14;
  }

  *(a2 + 8) = v7;
}

void *DiveWorkout.underwaterTimeIntervals.getter()
{
  v31 = sub_24882AA88();
  v1 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [*v0 workoutEvents];
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v30 = v3;
  sub_2487FCC20(0, &qword_27EEA9C78, 0x277CCDC68);
  v7 = sub_24882AFF8();

  v33 = v5;
  if (v7 >> 62)
  {
    goto LABEL_35;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v29 = "taKeyDiveIDString";
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1D9A30](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v8 = sub_24882B358();
        goto LABEL_4;
      }

      v14 = [v11 metadata];
      if (v14)
      {
        v15 = v14;
        v16 = sub_24882AE68();

        if (*(v16 + 16) && (v17 = sub_2487F8B2C(0xD000000000000024, v29 | 0x8000000000000000), (v18 & 1) != 0))
        {
          sub_2487F8BA4(*(v16 + 56) + 32 * v17, v32);

          if (swift_dynamicCast())
          {
            sub_24882B308();
            sub_24882B328();
            sub_24882B338();
            sub_24882B318();
            goto LABEL_8;
          }
        }

        else
        {
        }
      }

LABEL_8:
      ++v10;
      if (v13 == v8)
      {
        v19 = v33;
        v9 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_21:

  if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  v20 = sub_24882B358();
  if (!v20)
  {
LABEL_37:

    return MEMORY[0x277D84F90];
  }

LABEL_24:
  v32[0] = v9;
  result = sub_2487FC248(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v5 = v32[0];
    v23 = v30;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x24C1D9A30](v22, v19);
      }

      else
      {
        v24 = *(v19 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = [v25 dateInterval];
      sub_24882AA38();

      v32[0] = v5;
      v28 = *(v5 + 16);
      v27 = *(v5 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2487FC248((v27 > 1), v28 + 1, 1);
        v5 = v32[0];
      }

      ++v22;
      *(v5 + 16) = v28 + 1;
      (*(v1 + 32))(v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v28, v23, v31);
    }

    while (v20 != v22);

    return v5;
  }

  __break(1u);
  return result;
}

double DiveWorkout.underwaterTime.getter()
{
  v1 = sub_24882AA88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = [*v0 metadata];
  if (v6)
  {
    v7 = v6;
    v8 = sub_24882AE68();

    if (*(v8 + 16) && (v9 = sub_2487F8B2C(0xD000000000000023, 0x8000000248830030), (v10 & 1) != 0))
    {
      sub_2487F8BA4(*(v8 + 56) + 32 * v9, v25);

      if (swift_dynamicCast())
      {
        return *&v24[1];
      }
    }

    else
    {
    }
  }

  v25[0] = v5;
  v12 = DiveWorkout.underwaterTimeIntervals.getter()[2];

  if (v12)
  {
    v25[0] = v5;
    v13 = DiveWorkout.underwaterTimeIntervals.getter();
    v14 = v13[2];
    if (v14)
    {
      v17 = *(v2 + 16);
      v15 = v2 + 16;
      v16 = v17;
      v18 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v19 = *(v15 + 56);
      v11 = 0.0;
      do
      {
        v16(v4, v18, v1);
        sub_24882AA78();
        v21 = v20;
        (*(v15 - 8))(v4, v1);
        v11 = v11 + v21;
        v18 += v19;
        --v14;
      }

      while (v14);
    }

    else
    {

      return 0.0;
    }
  }

  else
  {
    [v5 duration];
    return v22;
  }

  return v11;
}

void *sub_2487FC248(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2487FC2F0(a1, a2, a3, *v3, &unk_27EEA9C90, &qword_24882C120, MEMORY[0x277CC88A8]);
  *v3 = result;
  return result;
}

void *sub_2487FC28C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2487FC2F0(a1, a2, a3, *v3, &qword_27EEA9C88, &qword_24882C118, type metadata accessor for DepthIntervalSummary);
  *v3 = result;
  return result;
}

char *sub_2487FC2D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2487FC4CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2487FC2F0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

char *sub_2487FC4CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C80, "@W");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *_s9DepthCore15DiveWorkoutUtilO23underwaterTimeIntervals4fromSay10Foundation12DateIntervalVGSo9HKWorkoutC_tFZ_0(void *a1)
{
  v33 = sub_24882AA88();
  v2 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 workoutEvents];
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v7 = v5;
  v32 = v4;
  sub_2487FCC20(0, &qword_27EEA9C78, 0x277CCDC68);
  v8 = sub_24882AFF8();

  v36 = v6;
  if (v8 >> 62)
  {
    goto LABEL_36;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = 0;
    v31 = "taKeyDiveIDString";
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1D9A30](v11, v8);
      }

      else
      {
        if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v9 = sub_24882B358();
        goto LABEL_4;
      }

      v15 = [v12 metadata];
      if (!v15)
      {
        goto LABEL_17;
      }

      v16 = v15;
      v17 = sub_24882AE68();

      if (!*(v17 + 16))
      {
        break;
      }

      v18 = sub_2487F8B2C(0xD000000000000024, v31 | 0x8000000000000000);
      if ((v19 & 1) == 0)
      {
        break;
      }

      sub_2487F8BA4(*(v17 + 56) + 32 * v18, v35);

      if ((swift_dynamicCast() & 1) == 0 || v34 != 1)
      {
        goto LABEL_17;
      }

      sub_24882B308();
      sub_24882B328();
      sub_24882B338();
      sub_24882B318();
LABEL_18:
      ++v11;
      if (v14 == v9)
      {
        v20 = v36;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_22;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_22:

  if ((v20 & 0x8000000000000000) == 0 && (v20 & 0x4000000000000000) == 0)
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  v21 = sub_24882B358();
  if (!v21)
  {
LABEL_38:

    return MEMORY[0x277D84F90];
  }

LABEL_25:
  v35[0] = v10;
  result = sub_2487FC248(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v6 = v35[0];
    v24 = v32;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x24C1D9A30](v23, v20);
      }

      else
      {
        v25 = *(v20 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = [v26 dateInterval];
      sub_24882AA38();

      v35[0] = v6;
      v29 = *(v6 + 16);
      v28 = *(v6 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2487FC248((v28 > 1), v29 + 1, 1);
        v6 = v35[0];
      }

      ++v23;
      *(v6 + 16) = v29 + 1;
      (*(v2 + 32))(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v29, v24, v33);
    }

    while (v21 != v23);

    return v6;
  }

  __break(1u);
  return result;
}

double _s9DepthCore15DiveWorkoutUtilO14underwaterTime4fromSdSo9HKWorkoutC_tFZ_0(void *a1)
{
  v2 = sub_24882AA88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s9DepthCore15DiveWorkoutUtilO23underwaterTimeIntervals4fromSay10Foundation12DateIntervalVGSo9HKWorkoutC_tFZ_0(a1);
  v7 = [a1 metadata];
  if (v7)
  {
    v8 = v7;
    v9 = sub_24882AE68();

    if (*(v9 + 16) && (v10 = sub_2487F8B2C(0xD000000000000023, 0x8000000248830030), (v11 & 1) != 0))
    {
      sub_2487F8BA4(*(v9 + 56) + 32 * v10, v24);

      if (swift_dynamicCast())
      {

        return *&v23[1];
      }
    }

    else
    {
    }
  }

  v13 = v6[2];
  if (v13)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = v6 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    v12 = 0.0;
    do
    {
      v15(v5, v17, v2);
      sub_24882AA78();
      v20 = v19;
      (*(v14 - 8))(v5, v2);
      v12 = v12 + v20;
      v17 += v18;
      --v13;
    }

    while (v13);
  }

  else
  {

    [a1 duration];
    return v21;
  }

  return v12;
}

uint64_t sub_2487FCC20(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2487FCC84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2487FCCCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DepthFeatureKey.isEnabled.getter()
{
  if (qword_27EEA9930 != -1)
  {
    swift_once();
  }

  v0 = off_27EEA9CA0;
  swift_beginAccess();
  v1 = v0[2];
  if (*(v1 + 16) && (v2 = sub_2487F93A8(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + v2);
  }

  else
  {
    v4 = 0;
  }

  swift_endAccess();
  return v4;
}

uint64_t DepthFeatures.isEnabled(_:)()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (*(v1 + 16) && (v2 = sub_2487F93A8(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + v2);
  }

  else
  {
    v4 = 0;
  }

  swift_endAccess();
  return v4;
}

uint64_t DepthFeatureKey.hashValue.getter()
{
  sub_24882B528();
  MEMORY[0x24C1D9CA0](0);
  return sub_24882B548();
}

uint64_t sub_2487FCEBC()
{
  sub_24882B528();
  MEMORY[0x24C1D9CA0](0);
  return sub_24882B548();
}

uint64_t sub_2487FCF00(uint64_t a1)
{
  sub_24882B528();
  MEMORY[0x24C1D9CA0](0);
  return sub_24882B548();
}

uint64_t sub_2487FCF68()
{
  type metadata accessor for DepthFeatures();
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = sub_2487F9400(MEMORY[0x277D84F90]);
  v2 = sub_2487F9400(v1);
  swift_beginAccess();
  *(v0 + 16) = v2;

  off_27EEA9CA0 = v0;
  return result;
}

uint64_t static DepthFeatures.shared.getter()
{
  if (qword_27EEA9930 != -1)
  {
    swift_once();
  }
}

uint64_t DepthFeatures.override(feature:_:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_2487FDA40(v3, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v6;
  return swift_endAccess();
}

uint64_t DepthFeatures.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2487FD128(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9AF0, &qword_24882BF80);
  v34 = v4;
  result = sub_24882B378();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_24882B528();
      sub_24882AF88();
      result = sub_24882B548();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2487FD3D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9A28, qword_24882BF68);
  v34 = v4;
  result = sub_24882B378();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_24882B528();
      sub_24882AF88();
      result = sub_24882B548();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2487FD670(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9A20, &qword_24882BF60);
  result = sub_24882B378();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 56) + (v16 | (v8 << 6)));
      sub_24882B528();
      MEMORY[0x24C1D9CA0](0);
      result = sub_24882B548();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 56) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v28)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_2487FD8DC(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2487F8B2C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2487FD3D0(v16, a4 & 1);
      result = sub_2487F8B2C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_24882B4C8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2487FDCC8();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_2487FDA40(char a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_2487F93A8();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 >= v12 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v14 >= v12 && (a2 & 1) == 0)
  {
    v15 = result;
    sub_2487FDE30();
    result = v15;
    goto LABEL_8;
  }

  sub_2487FD670(v12, a2 & 1);
  result = sub_2487F93A8();
  if ((v13 & 1) == (v16 & 1))
  {
LABEL_8:
    v17 = *v3;
    if (v13)
    {
      *(*(v17 + 56) + result) = a1 & 1;
      return result;
    }

    *(v17 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v17 + 56) + result) = a1 & 1;
    v18 = *(v17 + 16);
    v11 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (!v11)
    {
      *(v17 + 16) = v19;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_24882B4C8();
  __break(1u);
  return result;
}

void *sub_2487FDB58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9AF0, &qword_24882BF80);
  v2 = *v0;
  v3 = sub_24882B368();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2487FDCC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9A28, qword_24882BF68);
  v2 = *v0;
  v3 = sub_24882B368();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2487FDE30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9A20, &qword_24882BF60);
  v2 = *v0;
  v3 = sub_24882B368();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = *(*(v2 + 56) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2487FDF74()
{
  result = qword_27EEA9CA8;
  if (!qword_27EEA9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9CA8);
  }

  return result;
}

double *static TemperatureRange.orderedRange(t1:t2:)@<X0>(double *result@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result >= *a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = *result;
  }

  if (*result < *a2)
  {
    v3 = *a2;
  }

  *a3 = v4;
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

void TemperatureRange.temperatureSpan.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v1 + 16))
  {
    if (v2 == 1)
    {
      *a1 = vabdd_f64(*v1, *(v1 + 8));
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 1;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = v2;
  }
}

void TemperatureRange.average.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (*(v1 + 16))
  {
    if (v3 == 1)
    {
      *a1 = (*(v1 + 8) + v2) * 0.5;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 1;
    }
  }

  else
  {
    *a1 = v2;
    *(a1 + 8) = v3;
  }
}

void TemperatureRange.minValue.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 16) > 1u;
  if (*(v1 + 16) > 1u)
  {
    v2 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
}

void TemperatureRange.maxValue.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 == 1)
  {
    v3 = *(v1 + 8);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 != 1;
}

uint64_t TemperatureRange.values.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v2 = v0[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9CB0, &qword_24882C210);
      result = swift_allocObject();
      *(result + 16) = xmmword_24882BFE0;
      *(result + 32) = v1;
      *(result + 40) = v2;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9CB0, &qword_24882C210);
    result = swift_allocObject();
    *(result + 16) = xmmword_24882BFD0;
    *(result + 32) = v1;
  }

  return result;
}

double *TemperatureRange.updated(withTemperature:)@<X0>(double *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v5 = *v2;
  v4 = *(v2 + 8);
  if (!*(v2 + 16))
  {
    if (v3 == v5)
    {
      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 16) = 0;
      return result;
    }

    if (v3 <= v5)
    {
      *a2 = v3;
      *(a2 + 8) = v5;
      goto LABEL_14;
    }

    *a2 = v5;
    goto LABEL_12;
  }

  if (*(v2 + 16) != 1)
  {
    *a2 = v3;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  if (v3 >= v5)
  {
    *a2 = v5;
    if (v3 <= v4)
    {
      goto LABEL_9;
    }

LABEL_12:
    *(a2 + 8) = v3;
    goto LABEL_14;
  }

  *a2 = v3;
LABEL_9:
  *(a2 + 8) = v4;
LABEL_14:
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_2487FE258()
{
  v1 = *v0;
  sub_24882B528();
  MEMORY[0x24C1D9CA0](v1);
  return sub_24882B548();
}

uint64_t sub_2487FE2A0(uint64_t a1)
{
  v2 = *v1;
  sub_24882B528();
  MEMORY[0x24C1D9CA0](v2);
  return sub_24882B548();
}

uint64_t sub_2487FE2E4()
{
  v1 = 0x72616C75676E6973;
  if (*v0 != 1)
  {
    v1 = 0x65676E6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_2487FE33C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2487FFD70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2487FE37C(uint64_t a1)
{
  v2 = sub_2487FF410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2487FE3B8(uint64_t a1)
{
  v2 = sub_2487FF410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2487FE3F4()
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

uint64_t sub_2487FE410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_24882B4B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24882B4B8();

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

uint64_t sub_2487FE4DC(uint64_t a1)
{
  v2 = sub_2487FF464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2487FE518(uint64_t a1)
{
  v2 = sub_2487FF464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2487FE560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24882B4B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2487FE5E0(uint64_t a1)
{
  v2 = sub_2487FF50C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2487FE61C(uint64_t a1)
{
  v2 = sub_2487FF50C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2487FE664(uint64_t a1)
{
  v2 = sub_2487FF560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2487FE6A0(uint64_t a1)
{
  v2 = sub_2487FF560();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureRange.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9CB8, &qword_24882C218);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9CC0, &qword_24882C220);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9CC8, &qword_24882C228);
  v23 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9CD0, &qword_24882C230);
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v29 = *v1;
  v14 = v1[1];
  v15 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2487FF410();
  sub_24882B568();
  if (v15)
  {
    if (v15 != 1)
    {
      LOBYTE(v34) = 0;
      sub_2487FF560();
      v21 = v31;
      sub_24882B438();
      (*(v23 + 8))(v10, v8);
      return (*(v30 + 8))(v13, v21);
    }

    LOBYTE(v34) = 2;
    sub_2487FF464();
    v16 = v26;
    v17 = v31;
    sub_24882B438();
    v34 = v29;
    v33 = 0;
    sub_2487FF4B8();
    v18 = v28;
    v19 = v32;
    sub_24882B488();
    if (!v19)
    {
      v34 = v14;
      v33 = 1;
      sub_24882B488();
    }

    (*(v27 + 8))(v16, v18);
  }

  else
  {
    LOBYTE(v34) = 1;
    sub_2487FF50C();
    v17 = v31;
    sub_24882B438();
    v34 = v29;
    sub_2487FF4B8();
    v20 = v25;
    sub_24882B488();
    (*(v24 + 8))(v7, v20);
  }

  return (*(v30 + 8))(v13, v17);
}

uint64_t TemperatureRange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D00, &qword_24882C238);
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v52 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D08, &qword_24882C240);
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D10, &qword_24882C248);
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D18, &unk_24882C250);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v15 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2487FF410();
  v16 = v53;
  sub_24882B558();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  v44 = 0;
  v45 = v14;
  v18 = v51;
  v17 = v52;
  v53 = v12;
  v19 = sub_24882B428();
  v20 = v19;
  v21 = *(v19 + 16);
  if (!v21 || ((v22 = *(v19 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = sub_24882B2E8();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D20, &qword_24882CE60);
    *v26 = &type metadata for TemperatureRange;
    v27 = v45;
    sub_24882B3C8();
    sub_24882B2D8();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v53 + 8))(v27, v11);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  if (!*(v19 + 32))
  {
    LOBYTE(v57) = 0;
    sub_2487FF560();
    v33 = v44;
    v32 = v45;
    sub_24882B3B8();
    if (!v33)
    {
      (*(v18 + 8))(v10, v8);
      (*(v53 + 8))(v32, v11);
      swift_unknownObjectRelease();
      v39 = 0;
      v37 = 0;
      v38 = 2;
      v31 = v50;
      goto LABEL_21;
    }

LABEL_18:
    (*(v53 + 8))(v32, v11);
    goto LABEL_9;
  }

  v29 = v45;
  if (v22 != 1)
  {
    LOBYTE(v57) = 2;
    sub_2487FF464();
    v32 = v29;
    v34 = v44;
    sub_24882B3B8();
    v35 = v50;
    if (!v34)
    {
      v51 = v20;
      LOBYTE(v56) = 0;
      sub_2487FF5B4();
      v40 = v17;
      v41 = v46;
      sub_24882B418();
      v42 = v53;
      v39 = v57;
      v55 = 1;
      sub_24882B418();
      (*(v49 + 8))(v40, v41);
      (*(v42 + 8))(v45, v11);
      swift_unknownObjectRelease();
      v37 = v56;
      v38 = 1;
      v31 = v35;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  LOBYTE(v57) = 1;
  sub_2487FF50C();
  v30 = v44;
  sub_24882B3B8();
  v31 = v50;
  if (v30)
  {
    (*(v53 + 8))(v29, v11);
    goto LABEL_9;
  }

  sub_2487FF5B4();
  v36 = v47;
  sub_24882B418();
  (*(v48 + 8))(v7, v36);
  (*(v53 + 8))(v29, v11);
  swift_unknownObjectRelease();
  v37 = 0;
  v38 = 0;
  v39 = v57;
LABEL_21:
  *v31 = v39;
  *(v31 + 8) = v37;
  *(v31 + 16) = v38;
  return __swift_destroy_boxed_opaque_existential_0(v54);
}

uint64_t sub_2487FF248()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2487FF27C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2487FF2B0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2487FF2E4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL _s9DepthCore16TemperatureRangeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    return !*(a2 + 16) && v2 == v3;
  }

  v5 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (v4 == 1 && v2 == v3)
    {
      return *(a1 + 8) == v5;
    }

    return 0;
  }

  v7 = *&v5 | *&v3;
  return v4 == 2 && v7 == 0;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2487FF410()
{
  result = qword_27EEA9CD8;
  if (!qword_27EEA9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9CD8);
  }

  return result;
}

unint64_t sub_2487FF464()
{
  result = qword_27EEA9CE0;
  if (!qword_27EEA9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9CE0);
  }

  return result;
}

unint64_t sub_2487FF4B8()
{
  result = qword_27EEA9CE8;
  if (!qword_27EEA9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9CE8);
  }

  return result;
}

unint64_t sub_2487FF50C()
{
  result = qword_27EEA9CF0;
  if (!qword_27EEA9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9CF0);
  }

  return result;
}

unint64_t sub_2487FF560()
{
  result = qword_27EEA9CF8;
  if (!qword_27EEA9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9CF8);
  }

  return result;
}

unint64_t sub_2487FF5B4()
{
  result = qword_27EEA9D28;
  if (!qword_27EEA9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D28);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TemperatureRange(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TemperatureRange(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2487FF6A8(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2487FF6C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TemperatureRange.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TemperatureRange.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TemperatureRange.RangeCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InterfaceSettings(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2487FF9AC()
{
  result = qword_27EEA9D30;
  if (!qword_27EEA9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D30);
  }

  return result;
}

unint64_t sub_2487FFA04()
{
  result = qword_27EEA9D38;
  if (!qword_27EEA9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D38);
  }

  return result;
}

unint64_t sub_2487FFA5C()
{
  result = qword_27EEA9D40;
  if (!qword_27EEA9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D40);
  }

  return result;
}

unint64_t sub_2487FFAB4()
{
  result = qword_27EEA9D48;
  if (!qword_27EEA9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D48);
  }

  return result;
}

unint64_t sub_2487FFB0C()
{
  result = qword_27EEA9D50;
  if (!qword_27EEA9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D50);
  }

  return result;
}

unint64_t sub_2487FFB64()
{
  result = qword_27EEA9D58;
  if (!qword_27EEA9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D58);
  }

  return result;
}

unint64_t sub_2487FFBBC()
{
  result = qword_27EEA9D60;
  if (!qword_27EEA9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D60);
  }

  return result;
}

unint64_t sub_2487FFC14()
{
  result = qword_27EEA9D68;
  if (!qword_27EEA9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D68);
  }

  return result;
}

unint64_t sub_2487FFC6C()
{
  result = qword_27EEA9D70;
  if (!qword_27EEA9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D70);
  }

  return result;
}

unint64_t sub_2487FFCC4()
{
  result = qword_27EEA9D78;
  if (!qword_27EEA9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D78);
  }

  return result;
}

unint64_t sub_2487FFD1C()
{
  result = qword_27EEA9D80;
  if (!qword_27EEA9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D80);
  }

  return result;
}

uint64_t sub_2487FFD70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24882B4B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C75676E6973 && a2 == 0xE800000000000000 || (sub_24882B4B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24882B4B8();

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

uint64_t sub_2487FFE8C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_24882AF48();
}

uint64_t StateRepresentable.on(_:transitionTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v21 = a1;
  v22 = a2;
  v20 = a5;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23[0] = a3;
  v23[1] = AssociatedTypeWitness;
  v23[2] = a4;
  v23[3] = AssociatedConformanceWitness;
  v14 = type metadata accessor for StateDescription(0, v23);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v19 - v16;
  (*(v9 + 16))(v11, v6, a3);
  StateDescription.init(state:)(v11, a3, AssociatedTypeWitness, a4, AssociatedConformanceWitness, v17);
  StateDescription.on(_:transitionTo:)(v21, v22, v14, v20);
  return (*(v15 + 8))(v17, v14);
}

uint64_t StateRepresentable.onEntry(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return sub_248800178(a1, a2, a3, a4, StateDescription.onEntry(perform:), a5);
}

{
  return sub_248800178(a1, a2, a3, a4, StateDescription.onEntry(perform:), a5);
}

{
  return sub_248800178(a1, a2, a3, a4, StateDescription.onEntry(perform:), a5);
}

uint64_t sub_248800178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v22 = a2;
  v23 = a5;
  v7 = v6;
  v20 = a6;
  v21 = a1;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24[0] = a3;
  v24[1] = AssociatedTypeWitness;
  v24[2] = a4;
  v24[3] = AssociatedConformanceWitness;
  v15 = type metadata accessor for StateDescription(0, v24);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v20 - v17;
  (*(v10 + 16))(v12, v7, a3);
  StateDescription.init(state:)(v12, a3, AssociatedTypeWitness, a4, AssociatedConformanceWitness, v18);
  v23(v21, v22, v15);
  return (*(v16 + 8))(v18, v15);
}

int *StateDescription.init(state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a2 - 8);
  (*(v12 + 16))(a6, a1, a2);
  type metadata accessor for StateTransition(0, a2, a3, v13);
  v14 = sub_24882AE48();
  (*(v12 + 8))(a1, a2);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  result = type metadata accessor for StateDescription(0, v18);
  *(a6 + result[13]) = v14;
  v16 = (a6 + result[14]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a6 + result[15]);
  *v17 = 0;
  v17[1] = 0;
  return result;
}

uint64_t StateDescription.on(_:transitionTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v21 = a1;
  v22 = a2;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v7);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StateTransition(0, v5, v11, v15);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v21 - v18;
  (*(v12 + 16))(v14, v21, v11);
  (*(v6 + 16))(v9, v22, v5);
  sub_248800EE0(v14, v9, v5, v11, v19);
  sub_248801084(v19, a3, v23);
  return (*(v17 + 8))(v19, v16);
}

uint64_t StateDescription.onEntry(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v25 = a1;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + *(v13 + 56)))
  {
    result = sub_24882B348();
    __break(1u);
  }

  else
  {
    (*(v10 + 16))(v12, v5, v9);
    v14 = *(v5 + *(a3 + 52));
    v15 = (v5 + *(a3 + 60));
    v16 = *v15;
    v17 = v15[1];
    v18 = *(a3 + 40);
    v19 = *(v10 + 32);
    v24 = *(a3 + 24);
    v19(a4, v12, v9);
    v26 = v9;
    v27 = v24;
    v28 = v18;
    v20 = type metadata accessor for StateDescription(0, &v26);
    *(a4 + v20[13]) = v14;
    v21 = (a4 + v20[14]);
    *v21 = v25;
    v21[1] = a2;
    v22 = (a4 + v20[15]);
    *v22 = v16;
    v22[1] = v17;

    sub_2487F5FD8(v16, v17);
  }

  return result;
}

{
  v5 = v4;
  v29 = a4;
  v30 = a2;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + *(v12 + 56)))
  {
    result = sub_24882B348();
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    v15 = *(a3 + 24);
    v14 = *(a3 + 32);
    *(v13 + 2) = v8;
    *(v13 + 3) = v15;
    v16 = *(a3 + 40);
    *(v13 + 4) = v14;
    *(v13 + 5) = v16;
    v17 = v30;
    *(v13 + 6) = a1;
    *(v13 + 7) = v17;
    (*(v9 + 16))(v11, v5, v8);
    v18 = *(v5 + *(a3 + 52));
    v19 = (v5 + *(a3 + 60));
    v20 = v19[1];
    v28 = *v19;
    v21 = v29;
    (*(v9 + 32))(v29, v11, v8);
    v31[0] = v8;
    v31[1] = v15;
    v31[2] = v14;
    v31[3] = v16;
    v22 = type metadata accessor for StateDescription(0, v31);
    *(v21 + v22[13]) = v18;
    v23 = (v21 + v22[14]);
    *v23 = sub_248801518;
    v23[1] = v13;
    v24 = (v21 + v22[15]);
    v25 = v28;
    *v24 = v28;
    v24[1] = v20;

    return sub_2487F5FD8(v25, v20);
  }

  return result;
}

uint64_t StateRepresentable.onExit(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return sub_248800178(a1, a2, a3, a4, StateDescription.onExit(perform:), a5);
}

{
  return sub_248800178(a1, a2, a3, a4, StateDescription.onExit(perform:), a5);
}

uint64_t sub_248800B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v11 = swift_allocObject();
  v12 = *(a3 + 32);
  *(v11 + 16) = *(a3 + 16);
  *(v11 + 32) = v12;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  a6(a5, v11, a3);
}

uint64_t StateDescription.onExit(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a1;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + *(v12 + 60)))
  {
    result = sub_24882B348();
    __break(1u);
  }

  else
  {
    (*(v9 + 16))(v11, v4, v8);
    v13 = *(v4 + *(a3 + 52));
    v14 = (v4 + *(a3 + 56));
    v15 = *v14;
    v16 = v14[1];
    v17 = *(a3 + 40);
    v18 = *(v9 + 32);
    v23 = *(a3 + 24);
    v18(a4, v11, v8);
    v25 = v8;
    v26 = v23;
    v27 = v17;
    v19 = type metadata accessor for StateDescription(0, &v25);
    *(a4 + v19[13]) = v13;
    v20 = (a4 + v19[14]);
    *v20 = v15;
    v20[1] = v16;
    v21 = (a4 + v19[15]);
    *v21 = v24;
    v21[1] = a2;

    sub_2487F5FD8(v15, v16);
  }

  return result;
}

{
  v5 = v4;
  v29 = a4;
  v30 = a2;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + *(v12 + 60)))
  {
    result = sub_24882B348();
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    v15 = *(a3 + 24);
    v14 = *(a3 + 32);
    *(v13 + 2) = v8;
    *(v13 + 3) = v15;
    v16 = *(a3 + 40);
    *(v13 + 4) = v14;
    *(v13 + 5) = v16;
    v17 = v30;
    *(v13 + 6) = a1;
    *(v13 + 7) = v17;
    (*(v9 + 16))(v11, v5, v8);
    v18 = *(a3 + 56);
    v19 = *(v5 + *(a3 + 52));
    v20 = *(v5 + v18 + 8);
    v28 = *(v5 + v18);
    v21 = v29;
    (*(v9 + 32))(v29, v11, v8);
    v31[0] = v8;
    v31[1] = v15;
    v31[2] = v14;
    v31[3] = v16;
    v22 = type metadata accessor for StateDescription(0, v31);
    *(v21 + v22[13]) = v19;
    v23 = (v21 + v22[14]);
    v24 = v28;
    *v23 = v28;
    v23[1] = v20;
    v25 = (v21 + v22[15]);
    *v25 = sub_248801B2C;
    v25[1] = v13;

    return sub_2487F5FD8(v24, v20);
  }

  return result;
}

int *StateRepresentable.emptyStateDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v9, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return StateDescription.init(state:)(v7, a1, AssociatedTypeWitness, a2, AssociatedConformanceWitness, a3);
}

uint64_t sub_248800EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v10 = type metadata accessor for StateTransition(0, a3, a4, v9);
  v11 = *(*(a3 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a3);
}

int *StateDescription.init(state:transitions:entryHandler:exitHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v22[0] = a7;
  v22[1] = a8;
  v22[2] = a10;
  v22[3] = a11;
  result = type metadata accessor for StateDescription(0, v22);
  *(a9 + result[13]) = a2;
  v20 = (a9 + result[14]);
  *v20 = a3;
  v20[1] = a4;
  v21 = (a9 + result[15]);
  *v21 = a5;
  v21[1] = a6;
  return result;
}

uint64_t sub_248801084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v48 = a3;
  v46 = *(*(a2 + 16) - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v45 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 24);
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v10;
  v12 = type metadata accessor for StateTransition(255, v10, v8, v11);
  v13 = sub_24882B218();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v41 - v18;
  v20 = *(a2 + 52);
  v49 = v3;
  v50 = v8;
  v21 = *(v3 + v20);
  v22 = v5;
  v43 = *(a2 + 40);
  v41[1] = *(v43 + 8);
  sub_24882AE98();
  v23 = *(v12 - 8);
  LODWORD(v5) = (*(v23 + 48))(v19, 1, v12);
  (*(v14 + 8))(v19, v13);
  if (v5 == 1)
  {
    v51 = v21;
    v24 = v50;
    (*(v42 + 16))(v44, v22, v50);
    (*(v23 + 16))(v17, v22, v12);
    (*(v23 + 56))(v17, 0, 1, v12);
    sub_24882AE88();

    sub_24882AEA8();
    v25 = v45;
    v26 = v46;
    v27 = v49;
    v28 = v47;
    (*(v46 + 16))(v45, v49, v47);
    v44 = v51;
    v29 = (v27 + *(a2 + 56));
    v30 = *v29;
    v31 = v29[1];
    v32 = (v27 + *(a2 + 60));
    v33 = *v32;
    v34 = v32[1];
    v35 = *(a2 + 32);
    v36 = v48;
    (*(v26 + 32))(v48, v25, v28);
    v52 = v28;
    v53 = v24;
    v54 = v35;
    v55 = v43;
    v37 = type metadata accessor for StateDescription(0, &v52);
    *(v36 + v37[13]) = v44;
    v38 = (v36 + v37[14]);
    *v38 = v30;
    v38[1] = v31;
    v39 = (v36 + v37[15]);
    *v39 = v33;
    v39[1] = v34;
    sub_2487F5FD8(v30, v31);
    return sub_2487F5FD8(v33, v34);
  }

  else
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_24882B288();
    MEMORY[0x24C1D9700](0x206574617453, 0xE600000000000000);
    sub_24882B4A8();
    MEMORY[0x24C1D9700](0xD000000000000023, 0x8000000248830A40);
    sub_24882B4A8();
    result = sub_24882B348();
    __break(1u);
  }

  return result;
}

uint64_t sub_248801538(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_248807F14;

  return v12(a6, a7);
}

uint64_t sub_248801874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = a7;
  v36 = a8;
  v33 = a3;
  v34 = a4;
  v31 = a2;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v37 = a10;
  v32 = a9;
  v15 = MEMORY[0x28223BE20](a1);
  v30 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v30 - v21;
  v23 = sub_24882B0B8();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  (*(v17 + 16))(v19, a1, a5);
  (*(v13 + 16))(&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v31, a6);
  v24 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v25 = (v18 + *(v13 + 80) + v24) & ~*(v13 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = a5;
  *(v26 + 5) = a6;
  v27 = v36;
  *(v26 + 6) = v35;
  *(v26 + 7) = v27;
  v28 = v34;
  *(v26 + 8) = v33;
  *(v26 + 9) = v28;
  (*(v17 + 32))(&v26[v24], v19, a5);
  (*(v13 + 32))(&v26[v25], v30, a6);

  sub_248825F90(0, 0, v22, v37, v26);
}

uint64_t sub_248801B84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_248801C8C;

  return v12(a6, a7);
}

uint64_t sub_248801C8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_248801D80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9)
{
  v65 = a8;
  v69 = a4;
  v67 = a3;
  v62 = a1;
  v13 = sub_24882B218();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v18 = *(a6 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a7 - 1);
  MEMORY[0x28223BE20](v19);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v22 + 16);
  v26 = a5;
  v28 = v27;
  v68 = a7;
  v25(v24, v26, a7);
  v29 = *(v18 + 16);
  v30 = v67;
  v67 = a6;
  v29(v21, v30, a6);
  v31 = *(v14 + 16);
  v32 = v69;
  v69 = v13;
  v61 = v31;
  v31(v28, v32, v13);

  v33 = sub_24882AC68();
  v34 = sub_24882B148();
  v63 = a2;

  if (os_log_type_enabled(v33, v34))
  {
    v58 = v34;
    v59 = v33;
    v60 = v14;
    v66 = v28;
    v35 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v70 = v57;
    *v35 = 136315906;
    *(v35 + 4) = sub_2487F852C(v62, v63, &v70);
    *(v35 + 12) = 2082;
    v36 = v68;
    v37 = (*(a9 + 16))(v68, a9);
    v39 = v38;
    (*(v22 + 8))(v24, v36);
    v40 = sub_2487F852C(v37, v39, &v70);

    *(v35 + 14) = v40;
    *(v35 + 22) = 2082;
    v41 = v67;
    v68 = *(v65 + 40);
    v42 = v68(v67);
    v44 = v43;
    v45 = *(v18 + 8);
    v45(v21, v41);
    v46 = sub_2487F852C(v42, v44, &v70);

    *(v35 + 24) = v46;
    *(v35 + 32) = 2082;
    v47 = v64;
    v48 = v69;
    v61(v64, v66, v69);
    if ((*(v18 + 48))(v47, 1, v41) == 1)
    {
      v49 = *(v60 + 8);
      v49(v47, v48);
      v50 = 0xED00004E4F495449;
      v51 = 0x534E4152545F4F4ELL;
    }

    else
    {
      v52 = v47;
      v51 = (v68)(v41, v65);
      v50 = v53;
      v45(v52, v41);
      v49 = *(v60 + 8);
    }

    v49(v66, v48);
    v54 = sub_2487F852C(v51, v50, &v70);

    *(v35 + 34) = v54;
    v55 = v59;
    _os_log_impl(&dword_2487F4000, v59, v58, "%s: %{public}s ! %{public}s -> %{public}s", v35, 0x2Au);
    v56 = v57;
    swift_arrayDestroy();
    MEMORY[0x24C1DA290](v56, -1, -1);
    MEMORY[0x24C1DA290](v35, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v28, v69);
    (*(v18 + 8))(v21, v67);
    (*(v22 + 8))(v24, v68);
  }
}

uint64_t sub_248802300@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v12 = *(a1 + a2 - 16);
  v13 = *(a1 + a2 - 32);
  v4 = sub_248806B7C();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = swift_allocObject();
    v5 = v7;
    v9 = v8;
    v4 = v6;
    *(v9 + 16) = v13;
    *(v9 + 32) = v12;
    *(v9 + 48) = v6;
    *(v9 + 56) = v7;
    v10 = sub_2488079B4;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a3 = v10;
  a3[1] = v9;

  return sub_2487F5FD8(v4, v5);
}

uint64_t sub_2488023B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    v8 = *(v6 - 16);
    *(v7 + 16) = *(v6 - 32);
    *(v7 + 32) = v8;
    *(v7 + 48) = v4;
    *(v7 + 56) = v5;
    v9 = sub_24880798C;
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  sub_2487F5FD8(v4, v5);
  return sub_248802480(v9, v7);
}

uint64_t sub_24880244C()
{
  v0 = sub_248806B7C();
  sub_2487F5FD8(v0, v1);
  return v0;
}

uint64_t sub_248802480(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_248806BB0(v5, v6);
}

uint64_t sub_248802528@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  swift_beginAccess();
  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  type metadata accessor for StateDescription(255, v8);
  v6 = sub_24882B218();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_248802600(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  swift_beginAccess();
  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  type metadata accessor for StateDescription(255, v8);
  v6 = sub_24882B218();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t sub_248802704@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  swift_beginAccess();
  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  type metadata accessor for StateDescription(255, v8);
  v6 = sub_24882B218();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_2488027DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  swift_beginAccess();
  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  type metadata accessor for StateDescription(255, v8);
  v6 = sub_24882B218();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t sub_2488028BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v13 = *(*v1 + 80);
  v14[0] = v13;
  v14[1] = v3;
  v4 = type metadata accessor for StateDescription(255, v14);
  v5 = sub_24882B218();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-1] - v7;
  sub_248802704(&v14[-1] - v7);
  if ((*(*(v4 - 8) + 48))(v8, 1, v4))
  {
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = 1;
  }

  else
  {
    v10 = *(v13 - 8);
    (*(v10 + 16))(a1, v8);
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v11 = 0;
  }

  return (*(v10 + 56))(a1, v11, 1, v9);
}

uint64_t sub_248802AD8()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 168));
  if (v2)
  {
    v4 = *(v1 + 96);
    v5[0] = *(v1 + 80);
    v5[1] = v4;
    type metadata accessor for StateDescription(0, v5);
    *&v5[0] = v2;
    sub_24882AE78();

    swift_getWitnessTable();
    return sub_24882B068();
  }

  else
  {
    result = sub_24882B348();
    __break(1u);
  }

  return result;
}

uint64_t sub_248802C14(uint64_t a1)
{
  AssociatedConformanceWitness = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v95 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v79 = &v68 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v68 - v8;
  v10 = sub_24882B218();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v68 - v11;
  v13 = v2[12];
  v14 = *(v13 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v86 = (&v68 - v16);
  v87 = v14;
  v75 = *(swift_getAssociatedConformanceWitness() + 8);
  v88 = AssociatedTypeWitness;
  v83 = swift_getAssociatedTypeWitness();
  v71 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v94 = &v68 - v17;
  *&v18 = v3;
  v78 = v2[11];
  *(&v18 + 1) = v78;
  v73 = v1;
  v19 = v2[13];
  v84 = v13;
  *&v20 = v13;
  v77 = v19;
  *(&v20 + 1) = v19;
  v76 = v20;
  v98[1] = v20;
  v90 = v18;
  v98[0] = v18;
  v21 = type metadata accessor for StateDescription(255, v98);
  v69 = sub_24882B218();
  v85 = *(v69 - 8);
  v22 = MEMORY[0x28223BE20](v69);
  v82 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v81 = &v68 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v68 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v68 - v30;
  v32 = *(v21 - 8);
  MEMORY[0x28223BE20](v29);
  v34 = &v68 - v33;
  *&v98[0] = AssociatedConformanceWitness;
  v35 = sub_24882B058();
  swift_getWitnessTable();
  v74 = v35;
  sub_24882B108();
  v36 = v32;
  v39 = *(v32 + 48);
  v37 = v32 + 48;
  v38 = v39;
  if (v39(v31, 1, v21) == 1)
  {
    (*(v85 + 8))(v31, v69);
    DWORD2(v67) = 0;
    *&v67 = 189;
LABEL_13:
    result = sub_24882B348();
    __break(1u);
    return result;
  }

  v72 = v36;
  (*(v36 + 32))(v34, v31, v21);
  sub_248802704(v28);
  v92 = v38;
  v93 = v37;
  v40 = v38(v28, 1, v21);
  v41 = *(v85 + 8);
  v42 = v69;
  v85 += 8;
  v91 = v41;
  v41(v28, v69);
  if (v40 != 1)
  {
    DWORD2(v67) = 0;
    *&v67 = 192;
    goto LABEL_13;
  }

  v70 = v34;
  v97 = AssociatedConformanceWitness;
  swift_getTupleTypeMetadata2();
  v43 = sub_24882B008();
  v44 = *(v84 + 16);
  v45 = sub_248806890(v43, v3, v21, v44);

  v68 = &v68;
  v96 = v45;
  MEMORY[0x28223BE20](v46);
  v47 = v76;
  *(&v68 - 2) = v90;
  v67 = v47;
  *&v90 = v44;
  v48 = sub_24882AE88();
  swift_getWitnessTable();
  *&v76 = v48;
  sub_24882AFD8();

  sub_24882B298();
  sub_24882AFC8();
  v49 = v83;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24882B228();
  v87 = *(v95 + 48);
  v88 = v95 + 48;
  v50 = v87(v12, 1, v3);
  v51 = v21;
  v52 = v81;
  if (v50 != 1)
  {
    v86 = *(v95 + 32);
    v60 = (v95 + 8);
    v95 += 32;
    v75 = (v95 - 16);
    v74 = (v72 + 56);
    v86(v9, v12, v3);
    while (1)
    {
      sub_24882AE98();
      if (v92(v52, 1, v51) == 1)
      {
        v91(v52, v42);
        v61 = *v75;
        (*v75)(v79, v9, v3);
        v62 = v51;
        v63 = v80;
        v61(v80, v9, v3);
        v64 = v42;
        v65 = v82;
        v66 = v63;
        v51 = v62;
        v49 = v83;
        StateDescription.init(state:)(v66, v3, v78, v84, v77, v82);
        (*v74)(v65, 0, 1, v51);
        v42 = v64;
        v52 = v81;
        sub_24882AEA8();
        (*v60)(v9, v3);
      }

      else
      {
        (*v60)(v9, v3);
        v91(v52, v42);
      }

      sub_24882B228();
      if (v87(v12, 1, v3) == 1)
      {
        break;
      }

      v86(v9, v12, v3);
    }
  }

  (*(v71 + 8))(v94, v49);
  v53 = v72;
  v54 = *(v72 + 16);
  v55 = v82;
  v56 = v70;
  v54(v82, v70, v51);
  v57 = *(v53 + 56);
  v57(v55, 0, 1, v51);
  v58 = v73;
  sub_248802600(v55);
  v54(v55, v56, v51);
  v57(v55, 0, 1, v51);
  sub_2488027DC(v55);
  *(v58 + *(*v58 + 168)) = *&v98[0];

  (*(v53 + 8))(v56, v51);
}

uint64_t sub_24880375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v8 = type metadata accessor for StateDescription(255, v17);
  v9 = sub_24882B218();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v17 - v11;
  MEMORY[0x28223BE20](v10);
  (*(v14 + 16))(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3);
  v15 = *(v8 - 8);
  (*(v15 + 16))(v12, a2, v8);
  (*(v15 + 56))(v12, 0, 1, v8);
  sub_24882AE88();
  return sub_24882AEA8();
}

uint64_t (*sub_248803928(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_248802AD8();
  return sub_248803970;
}

uint64_t sub_248803970(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_248802C14(*a1);
  }

  sub_248802C14(v2);
}

uint64_t StateMachine.__allocating_init(name:stateDescriptions:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  StateMachine.init(name:stateDescriptions:log:)(a1, a2, a3, a4);
  return v8;
}

char *StateMachine.init(name:stateDescriptions:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v5;
  v10 = *v5;

  *(v5 + 4) = 0;
  *(v5 + 5) = 0;
  v11 = qword_27EEA9D88;
  v28 = *(v10 + 80);
  swift_getFunctionTypeMetadata2();
  v12 = *(v9 + 96);
  *&v5[v11] = sub_24882AE48();
  v13 = qword_27EEA9D90;
  *&v5[v13] = sub_24882AE58();
  *&v5[qword_27EEA9D98] = 0;
  v14 = *(*v5 + 160);
  v15 = *(v9 + 104);
  *&v16 = v12;
  *(&v16 + 1) = v15;
  v30 = v16;
  aBlock = v28;
  v17 = type metadata accessor for StateDescription(0, &aBlock);
  v18 = *(*(v17 - 8) + 56);
  v18(&v5[v14], 1, 1, v17);
  *&v5[*(*v5 + 168)] = 0;
  v18(&v5[*(*v5 + 176)], 1, 1, v17);
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  v19 = qword_27EEA9DA0;
  v20 = sub_24882AC88();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v5[v19], a4, v20);
  sub_248806BE0();
  v22 = sub_24882B168();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v28;
  *(v24 + 32) = v12;
  *(v24 + 40) = v15;
  *(v24 + 48) = v23;
  v31 = sub_248806C2C;
  v32 = v24;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_24880450C;
  *(&v30 + 1) = &block_descriptor;
  v25 = _Block_copy(&aBlock);

  v26 = qword_27EEA9D98;
  swift_beginAccess();
  notify_register_dispatch("com.apple.depth.dumpfsmstate", &v5[v26], v22, v25);
  swift_endAccess();
  _Block_release(v25);

  (*(v21 + 8))(a4, v20);
  return v5;
}

uint64_t sub_248803D94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_248803DEC();
  }

  return result;
}

uint64_t sub_248803DEC()
{
  v1 = v0;
  v2 = sub_24882AF38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24882AAE8();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v43[1] = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = v43 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v43 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v43 - v14;
  v16 = NSTemporaryDirectory();
  sub_24882AEF8();

  sub_24882AAC8();

  v17 = *(v1 + 24);
  v44 = *(v1 + 16);
  v49[0] = v44;
  v49[1] = v17;

  MEMORY[0x24C1D9700](1953457198, 0xE400000000000000);
  v18 = v13;
  v46 = v15;
  sub_24882AAD8();

  StateMachine.dotRepresentation.getter(v19, v20, v21, v22);
  sub_24882AF28();
  v23 = sub_24882AF08();
  v25 = v24;

  (*(v3 + 8))(v5, v2);
  if (v25 >> 60 != 15)
  {
    sub_24882AAF8();
    sub_248807A34(v23, v25);
  }

  if (qword_27EEA9950 != -1)
  {
    swift_once();
  }

  v26 = sub_24882AC88();
  __swift_project_value_buffer(v26, qword_27EEAA810);
  v27 = v47;
  v28 = v45;
  v29 = v18;
  v30 = v18;
  v31 = v48;
  (*(v47 + 16))(v45, v30, v48);

  v32 = sub_24882AC68();
  v33 = sub_24882B148();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v43[0] = v29;
    v35 = v34;
    v36 = swift_slowAlloc();
    v49[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_2487F852C(v44, v17, v49);
    *(v35 + 12) = 2080;
    sub_2488079DC();
    v37 = sub_24882B498();
    v39 = v38;
    v40 = *(v27 + 8);
    v40(v28, v31);
    v41 = sub_2487F852C(v37, v39, v49);

    *(v35 + 14) = v41;
    _os_log_impl(&dword_2487F4000, v32, v33, "Wrote %s state to %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1DA290](v36, -1, -1);
    MEMORY[0x24C1DA290](v35, -1, -1);

    v40(v43[0], v31);
  }

  else
  {

    v40 = *(v27 + 8);
    v40(v28, v31);
    v40(v29, v31);
  }

  return (v40)(v46, v31);
}

uint64_t sub_24880450C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *StateMachine.deinit()
{
  v1 = *v0;
  v2 = qword_27EEA9D98;
  swift_beginAccess();
  notify_cancel(*(v0 + v2));

  sub_248806BB0(v0[4], v0[5]);
  v3 = qword_27EEA9DA0;
  v4 = sub_24882AC88();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 160);
  v6 = *(v1 + 96);
  v10[0] = *(v1 + 80);
  v10[1] = v6;
  type metadata accessor for StateDescription(255, v10);
  v7 = sub_24882B218();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v5, v7);

  v8(v0 + *(*v0 + 176), v7);
  return v0;
}

uint64_t StateMachine.__deallocating_deinit()
{
  StateMachine.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_248804758(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v5 - v1);
  swift_beginAccess();
  sub_24882B058();
  sub_24882B038();
  swift_endAccess();
  swift_beginAccess();

  v3 = sub_24882B028();

  if (v3 == 1)
  {
    return sub_2488048B0(result);
  }

  return result;
}

uint64_t sub_2488048B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v105 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v94 = v83 - v5;
  v7 = *(v6 + 88);
  v98 = type metadata accessor for StateTransition(255, v4, v7, v8);
  v91 = sub_24882B218();
  v92 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v97 = v83 - v9;
  v10 = sub_24882B218();
  v102 = *(v10 - 8);
  v103 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v99 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = v83 - v13;
  v14 = *(v3 + 96);
  v104 = v4;
  *&v15 = v4;
  *(&v15 + 1) = v7;
  v106 = v14;
  v111[0] = v15;
  v111[1] = v14;
  v16 = type metadata accessor for StateDescription(255, v111);
  v88 = sub_24882B218();
  v87 = *(v88 - 8);
  v17 = MEMORY[0x28223BE20](v88);
  v89 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v93 = v83 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v95 = v83 - v22;
  v109 = v16;
  v107 = *(v16 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v90 = v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v110 = v83 - v25;
  v26 = sub_24882B218();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v83 - v29;
  v31 = *(v7 - 8);
  v32 = MEMORY[0x28223BE20](v28);
  v101 = v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = v83 - v34;
  v36 = qword_27EEA9D90;
  swift_beginAccess();
  *&v111[0] = *(v2 + v36);
  v37 = sub_24882B058();

  swift_getWitnessTable();
  v100 = v37;
  v38 = v7;
  sub_24882B108();
  if ((*(v31 + 48))(v30, 1, v7) == 1)
  {
    (*(v27 + 8))(v30, v26);
  }

  v86 = v31;
  (*(v31 + 32))(v35, v30, v7);

  v40 = *(v2 + *(*v2 + 168));
  if (v40)
  {
    v41 = v95;
    sub_248802704(v95);
    v42 = v107;
    v43 = *(v107 + 48);
    v44 = v109;
    v85 = v107 + 48;
    v84 = v43;
    v45 = v43(v41, 1, v109);
    v46 = v98;
    v47 = v97;
    if (v45 != 1)
    {
      v48 = *(v42 + 32);
      v83[1] = v42 + 32;
      v83[0] = v48;
      v48(v110, v41, v44);
      v49 = *(&v106 + 1);
      v95 = v40;

      v96 = v38;
      sub_24882AE98();
      v50 = *(v46 - 8);
      v51 = 1;
      if ((*(v50 + 48))(v47, 1, v46) == 1)
      {
        v52 = v91;
        v53 = v108;
        v54 = v104;
        v55 = v105;
        v50 = v92;
      }

      else
      {
        v56 = *(v46 + 36);
        v52 = v46;
        v54 = v104;
        v55 = v105;
        v53 = v108;
        (*(v105 + 16))(v108, &v47[v56], v104);
        v51 = 0;
      }

      (*(v50 + 8))(v47, v52);
      (*(v55 + 56))(v53, v51, 1, v54);
      v57 = v2[2];
      v58 = v2[3];
      v59 = v106;
      *&v106 = v35;
      sub_248801D80(v57, v58, v110, v53, v35, v54, v96, v59, v49);
      v61 = v102;
      v60 = v103;
      v62 = v99;
      (*(v102 + 16))(v99, v53, v103);
      if ((*(v55 + 48))(v62, 1, v54) == 1)
      {

        (*(v61 + 8))(v62, v60);
      }

      else
      {
        v63 = v62;
        v64 = v94;
        (*(v55 + 32))(v94, v63, v54);
        v65 = v93;
        v66 = v109;
        sub_24882AE98();

        if (v84(v65, 1, v66) != 1)
        {
          v70 = v60;
          v71 = v90;
          (v83[0])(v90, v65, v66);
          v72 = (v110 + *(v66 + 60));
          if (*v72)
          {
            (*v72)();
          }

          v68 = v107;
          v73 = v89;
          (*(v107 + 16))(v89, v71, v66);
          (*(v68 + 56))(v73, 0, 1, v66);
          sub_2488027DC(v73);
          v74 = *&v71[*(v66 + 56)];
          v75 = v94;
          if (v74)
          {
            v74(v94, v106);
          }

          swift_beginAccess();
          v76 = v2[4];
          if (v76)
          {
            v77 = v2[5];
            sub_2487F5FD8(v2[4], v77);
            v76(v75);
            sub_248806BB0(v76, v77);
          }

          (*(v105 + 8))(v75, v104);
          (*(v68 + 8))(v71, v109);
          v69 = v110;
          v67 = v70;
          goto LABEL_20;
        }

        (*(v55 + 8))(v64, v54);
        (*(v87 + 8))(v65, v88);
      }

      v67 = v60;
      v68 = v107;
      v69 = v110;
LABEL_20:
      swift_beginAccess();
      swift_getWitnessTable();
      v78 = v101;
      sub_24882B128();
      v79 = *(v86 + 8);
      v80 = v96;
      v79(v78, v96);
      v81 = swift_endAccess();
      sub_2488048B0(v81);
      (*(v61 + 8))(v108, v67);
      v79(v106, v80);
      return (*(v68 + 8))(v69, v109);
    }

    v82 = *(v87 + 8);

    v82(v41, v88);
  }

  result = sub_24882B348();
  __break(1u);
  return result;
}

uint64_t StateMachine.dotRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v167 = *(v6 + 80);
  v7 = v167;
  v8 = type metadata accessor for StateTransition(0, v167, *(&v167 + 1), a4);
  v145 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v164 = &v119 - v10;
  v144 = *(*(&v167 + 1) - 8);
  MEMORY[0x28223BE20](v9);
  v168 = &v119 - v11;
  v165 = v12;
  v166 = *(&v7 + 1);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v156 = sub_24882B218();
  v162 = *(v156 - 8);
  v14 = MEMORY[0x28223BE20](v156);
  v160 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v119 - v16;
  v153 = *(v6 + 96);
  v175[1] = v153;
  v175[0] = v167;
  v18 = type metadata accessor for StateDescription(0, v175);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v124 = &v119 - v20;
  v21 = swift_getTupleTypeMetadata2();
  v134 = sub_24882B218();
  v155 = *(v134 - 8);
  v22 = MEMORY[0x28223BE20](v134);
  v140 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v133 = &v119 - v25;
  v158 = v7;
  v130 = *(v7 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v157 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v126 = &v119 - v28;
  *&v167 = sub_24882B218();
  v163 = *(v167 - 8);
  v29 = MEMORY[0x28223BE20](v167);
  v154 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v119 - v31;
  v33 = *(v5 + *(v6 + 168));
  if (v33)
  {
    v135 = v21;
    v159 = v17;
    *&v175[0] = 0;
    *(&v175[0] + 1) = 0xE000000000000000;
    v128 = v33;

    sub_24882B288();
    MEMORY[0x24C1D9700](0x2068706172676964, 0xE800000000000000);
    v34 = v5[3];
    v173 = v5[2];
    v174 = v34;
    v171 = 32;
    v172 = 0xE100000000000000;
    v169 = 95;
    v170 = 0xE100000000000000;
    sub_248806C54();
    v35 = sub_24882B238();
    MEMORY[0x24C1D9700](v35);

    MEMORY[0x24C1D9700](0xD00000000000003DLL, 0x8000000248830830);
    sub_248802528(v32);
    v136 = v19;
    v36 = *(v19 + 48);
    v37 = v36(v32, 1, v18);
    v127 = v18;
    if (v37)
    {
      v38 = *(v163 + 8);
      v38(v32, v167);
      v39 = 0x54535F5954504D45;
      v40 = 0xEE0050414D455441;
    }

    else
    {
      v41 = v130;
      v42 = v126;
      v43 = v158;
      (*(v130 + 16))(v126, v32, v158);
      v38 = *(v163 + 8);
      v38(v32, v167);
      v39 = (*(v153 + 40))(v43);
      v40 = v44;
      v45 = v43;
      v18 = v127;
      (*(v41 + 8))(v42, v45);
    }

    MEMORY[0x24C1D9700](v39, v40);

    MEMORY[0x24C1D9700](0xD000000000000027, 0x8000000248830870);
    v46 = v154;
    sub_248802704(v154);
    v47 = v36(v46, 1, v18);
    v48 = v140;
    if (v47)
    {
      v38(v46, v167);
      v49 = v130;
      v50 = v162;
      v51 = v155;
      v52 = 0xEE0050414D455441;
      v53 = 0x54535F5954504D45;
    }

    else
    {
      v49 = v130;
      v54 = v126;
      v55 = v158;
      (*(v130 + 16))(v126, v46, v158);
      v38(v46, v167);
      v56 = (*(v153 + 40))(v55);
      v52 = v57;
      v58 = v55;
      v48 = v140;
      (*(v49 + 8))(v54, v58);
      v53 = v56;
      v50 = v162;
      v51 = v155;
    }

    MEMORY[0x24C1D9700](v53, v52);

    MEMORY[0x24C1D9700](0xD00000000000001FLL, 0x80000002488308A0);
    v59 = 0;
    v60 = *(v128 + 64);
    v120 = v128 + 64;
    v61 = 1 << *(v128 + 32);
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    else
    {
      v62 = -1;
    }

    v63 = v62 & v60;
    v119 = (v61 + 63) >> 6;
    v64 = v135;
    v132 = v135 - 8;
    v123 = v49 + 16;
    v65 = v49;
    v66 = v136;
    v122 = v136 + 16;
    v139 = (v65 + 32);
    v121 = v136 + 32;
    v131 = (v51 + 32);
    v129 = (v136 + 8);
    v155 = TupleTypeMetadata2 - 8;
    v143 = v144 + 16;
    v142 = v145 + 16;
    v162 = (v145 + 32);
    v163 = v144 + 32;
    v154 = (v50 + 4);
    v152 = v153;
    v151 = v153 + 40;
    v150 = *(&v153 + 1);
    v149 = *(&v153 + 1) + 16;
    v148 = (v145 + 8);
    v147 = (v144 + 8);
    v125 = (v65 + 8);
    v161 = TupleTypeMetadata2;
    while (v63)
    {
      v67 = v59;
LABEL_21:
      v138 = (v63 - 1) & v63;
      v69 = __clz(__rbit64(v63)) | (v67 << 6);
      v70 = v128;
      v71 = v130;
      (*(v130 + 16))(v126, *(v128 + 48) + *(v130 + 72) * v69, v158);
      v72 = *(v70 + 56) + *(v66 + 72) * v69;
      v73 = v124;
      (*(v66 + 16))(v124, v72, v18);
      v74 = *(v64 + 48);
      v48 = v140;
      (*(v71 + 32))();
      (*(v66 + 32))(&v48[v74], v73, v18);
      v75 = 0;
      v137 = v67;
LABEL_22:
      v76 = *(v64 - 8);
      (*(v76 + 56))(v48, v75, 1, v64);
      v77 = v133;
      (*v131)();
      if ((*(v76 + 48))(v77, 1, v64) == 1)
      {
        goto LABEL_42;
      }

      v78 = &v77[*(v64 + 48)];
      (*v139)(v157, v77, v158);
      v79 = *&v78[*(v18 + 52)];
      v80 = *v129;

      v80(v78, v18);
      v81 = 0;
      v82 = *(v79 + 64);
      v141 = v79 + 64;
      v146 = v79;
      v83 = 1 << *(v79 + 32);
      if (v83 < 64)
      {
        v84 = ~(-1 << v83);
      }

      else
      {
        v84 = -1;
      }

      v85 = v84 & v82;
      v86 = (v83 + 63) >> 6;
      *&v153 = v86;
      if ((v84 & v82) == 0)
      {
LABEL_28:
        if (v86 <= v81 + 1)
        {
          v88 = v81 + 1;
        }

        else
        {
          v88 = v86;
        }

        v89 = v88 - 1;
        v90 = v160;
        v91 = v161;
        v92 = v159;
        while (1)
        {
          v87 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            break;
          }

          if (v87 >= v86)
          {
            v85 = 0;
            v104 = 1;
            goto LABEL_36;
          }

          v85 = *(v141 + 8 * v87);
          ++v81;
          if (v85)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_42:

        MEMORY[0x24C1D9700](125, 0xE100000000000000);
        return *&v175[0];
      }

      while (1)
      {
        v87 = v81;
LABEL_35:
        v93 = __clz(__rbit64(v85));
        v85 &= v85 - 1;
        v94 = v93 | (v87 << 6);
        v95 = v146;
        v96 = v144;
        v97 = v168;
        v98 = v166;
        (*(v144 + 16))(v168, *(v146 + 48) + *(v144 + 72) * v94, v166);
        v99 = v145;
        v101 = v164;
        v100 = v165;
        (*(v145 + 16))(v164, *(v95 + 56) + *(v145 + 72) * v94, v165);
        v90 = v160;
        v102 = *(v161 + 48);
        v103 = *(v96 + 32);
        v91 = v161;
        v103(v160, v97, v98);
        (*(v99 + 32))(&v90[v102], v101, v100);
        v104 = 0;
        v89 = v87;
        v92 = v159;
LABEL_36:
        v105 = *(v91 - 8);
        (*(v105 + 56))(v90, v104, 1, v91);
        (*v154)(v92, v90, v156);
        if ((*(v105 + 48))(v92, 1, v91) == 1)
        {
          break;
        }

        v106 = *(v91 + 48);
        v107 = *v163;
        *&v167 = v89;
        v108 = v166;
        v107(v168, v92, v166);
        v110 = v164;
        v109 = v165;
        (*v162)(v164, &v92[v106], v165);
        v173 = 0;
        v174 = 0xE000000000000000;
        sub_24882B288();

        v173 = 34;
        v174 = 0xE100000000000000;
        v111 = v152;
        v112 = *(v152 + 40);
        v113 = v158;
        v114 = v112(v158, v152);
        MEMORY[0x24C1D9700](v114);

        MEMORY[0x24C1D9700](0x22203E2D2022, 0xE600000000000000);
        v115 = v112(v113, v111);
        MEMORY[0x24C1D9700](v115);

        MEMORY[0x24C1D9700](0x6C6562616C5B2022, 0xEA0000000000223DLL);
        v116 = v168;
        v117 = (*(v150 + 16))(v108);
        MEMORY[0x24C1D9700](v117);

        MEMORY[0x24C1D9700](171662626, 0xE400000000000000);
        MEMORY[0x24C1D9700](v173, v174);

        (*v148)(v110, v109);
        (*v147)(v116, v108);
        v81 = v167;
        v86 = v153;
        if (!v85)
        {
          goto LABEL_28;
        }
      }

      (*v125)(v157, v158);

      v59 = v137;
      v18 = v127;
      v66 = v136;
      v64 = v135;
      v48 = v140;
      v63 = v138;
    }

    if (v119 <= v59 + 1)
    {
      v68 = v59 + 1;
    }

    else
    {
      v68 = v119;
    }

    while (1)
    {
      v67 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v67 >= v119)
      {
        v137 = v68 - 1;
        v138 = 0;
        v75 = 1;
        goto LABEL_22;
      }

      v63 = *(v120 + 8 * v67);
      ++v59;
      if (v63)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  result = sub_24882B348();
  __break(1u);
  return result;
}

unint64_t sub_2488066AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24882AEB8();

  return sub_248806708(a1, v6, a2, a3);
}

unint64_t sub_248806708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_24882AEC8();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_248806890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24882B028())
  {
    sub_24882B398();
    v13 = sub_24882B388();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24882B028();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24882B018())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24882B2B8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2488066AC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_248806BB0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_248806BE0()
{
  result = qword_27EEAA7D0;
  if (!qword_27EEAA7D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEAA7D0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_248806C54()
{
  result = qword_27EEA9DA8[0];
  if (!qword_27EEA9DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEA9DA8);
  }

  return result;
}

uint64_t dispatch thunk of StateRepresentable.onEntry(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 56))(a1, a2, a3);
}

{
  return (*(a4 + 64))(a1, a2, a3);
}

uint64_t sub_248806D14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_248806DA0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_248806F7C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

void sub_248807240(void *a1)
{
  v2 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for StateTransition(255, v2, a1[3], v3);
    sub_24882AE88();
    if (v5 <= 0x3F)
    {
      sub_248807620(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_248807304(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_248807450(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_248807620(uint64_t a1)
{
  if (!qword_27EEA9EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EEA9EB8, qword_24882C7B8);
    v1 = sub_24882B218();
    if (!v2)
    {
      atomic_store(v1, &qword_27EEA9EB0);
    }
  }
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

uint64_t sub_2488076D0(uint64_t a1)
{
  v7 = &unk_24882C800;
  v8 = &unk_24882C818;
  result = sub_24882AC88();
  if (v3 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v10 = MEMORY[0x277D833F0] + 64;
    v11 = MEMORY[0x277D833F0] + 64;
    v12 = MEMORY[0x277D83408] + 64;
    v4 = *(a1 + 96);
    v6[0] = *(a1 + 80);
    v6[1] = v4;
    type metadata accessor for StateDescription(255, v6);
    result = sub_24882B218();
    if (v5 <= 0x3F)
    {
      v13 = *(result - 8) + 64;
      v14 = &unk_24882C830;
      v15 = v13;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_2488079DC()
{
  result = qword_27EEA9F40;
  if (!qword_27EEA9F40)
  {
    sub_24882AAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9F40);
  }

  return result;
}

uint64_t sub_248807A34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_248807A48(a1, a2);
  }

  return a1;
}

uint64_t sub_248807A48(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_248807A9C(uint64_t a1)
{
  v3 = v2;
  v4 = (*(*(v1[4] - 8) + 80) + 80) & ~*(*(v1[4] - 8) + 80);
  v5 = (v4 + *(*(v1[4] - 8) + 64) + *(*(v1[5] - 8) + 80)) & ~*(*(v1[5] - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_248801C8C;

  return sub_248801B84(a1, v6, v7, v8, v9, v1 + v4, v1 + v5);
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 80) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);
  (*(v6 + 8))(v0 + v8, v2);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_248807D60(uint64_t a1)
{
  v3 = v2;
  v4 = (*(*(v1[4] - 8) + 80) + 80) & ~*(*(v1[4] - 8) + 80);
  v5 = (v4 + *(*(v1[4] - 8) + 64) + *(*(v1[5] - 8) + 80)) & ~*(*(v1[5] - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_248807F14;

  return sub_248801538(a1, v6, v7, v8, v9, v1 + v4, v1 + v5);
}

uint64_t LocationTimerPurpose.hashValue.getter()
{
  v1 = *v0;
  sub_24882B528();
  MEMORY[0x24C1D9CA0](v1);
  return sub_24882B548();
}

Swift::Double __swiftcall LocationSettings.timeout(forPurpose:)(DepthCore::LocationTimerPurpose forPurpose)
{
  if (*forPurpose)
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = v1;
  }

  return *v2;
}

unint64_t sub_24880802C()
{
  result = qword_27EEA9F50;
  if (!qword_27EEA9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9F50);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LocationSettings(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LocationSettings(uint64_t result, int a2, int a3)
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

double DepthValueRange.min.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double DepthValueRange.min.setter(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double DepthValueRange.max.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double DepthValueRange.max.setter(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double DepthValueRange.range.getter@<D0>(double *a1@<X8>)
{
  result = v1[1] - *v1;
  *a1 = result;
  return result;
}

DepthCore::DepthValueRange __swiftcall DepthValueRange.init(min:max:)(DepthCore::DepthValue min, DepthCore::DepthValue max)
{
  v5 = *v2;
  v6 = *v3;
  *v4 = *v2;
  v4[1] = v6;
  result.max = *&v6;
  result.min = *&v5;
  return result;
}

uint64_t sub_248808184()
{
  if (*v0)
  {
    return 7889261;
  }

  else
  {
    return 7235949;
  }
}

uint64_t sub_2488081A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v5 || (sub_24882B4B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24882B4B8();

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

uint64_t sub_248808284(uint64_t a1)
{
  v2 = sub_24880BD24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2488082C0(uint64_t a1)
{
  v2 = sub_24880BD24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DepthValueRange.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F58, &qword_24882C970);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880BD24();
  sub_24882B568();
  v12 = v9;
  HIBYTE(v11) = 0;
  sub_24880BD78();
  sub_24882B488();
  if (!v2)
  {
    v12 = v8;
    HIBYTE(v11) = 1;
    sub_24882B488();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DepthValueRange.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F70, &qword_24882C978);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880BD24();
  sub_24882B558();
  if (!v2)
  {
    HIBYTE(v12) = 0;
    sub_24880BDCC();
    sub_24882B418();
    v9 = v13;
    HIBYTE(v12) = 1;
    sub_24882B418();
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t DepthIntervalSummary.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24882AA88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DepthIntervalSummary.dateInterval.setter(uint64_t a1)
{
  v3 = sub_24882AA88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

__n128 DepthIntervalSummary.depthRange.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DepthIntervalSummary(0) + 20));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t DepthIntervalSummary.depthRange.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for DepthIntervalSummary(0);
  v6 = v1 + *(result + 20);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t sub_248808874()
{
  if (*v0)
  {
    return 0x6E61526874706564;
  }

  else
  {
    return 0x65746E4965746164;
  }
}

uint64_t sub_2488088BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672;
  if (v6 || (sub_24882B4B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E61526874706564 && a2 == 0xEA00000000006567)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24882B4B8();

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

uint64_t sub_2488089A4(uint64_t a1)
{
  v2 = sub_24880BE6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2488089E0(uint64_t a1)
{
  v2 = sub_24880BE6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DepthIntervalSummary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F80, &qword_24882C980);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880BE6C();
  sub_24882B568();
  LOBYTE(v13) = 0;
  sub_24882AA88();
  sub_24880C9F4(&qword_27EEA9F90, MEMORY[0x277CC88A8], MEMORY[0x277CC88B0]);
  sub_24882B488();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for DepthIntervalSummary(0) + 20));
    v10 = *(v9 + 16);
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_24880BEC0();
    sub_24882B458();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DepthIntervalSummary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v21 = sub_24882AA88();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9FA0, &qword_24882C988);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v17 - v6;
  v8 = type metadata accessor for DepthIntervalSummary(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v11[*(v9 + 28)];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880BE6C();
  sub_24882B558();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v19;
  LOBYTE(v23) = 0;
  sub_24880C9F4(&qword_27EEA9FA8, MEMORY[0x277CC88A8], MEMORY[0x277CC88D0]);
  v14 = v21;
  sub_24882B418();
  (*(v13 + 32))(v11, v5, v14);
  v25 = 1;
  sub_24880BF14();
  sub_24882B3E8();
  (*(v20 + 8))(v7, v22);
  v15 = v24;
  *v12 = v23;
  v12[16] = v15;
  sub_24880BF68(v11, v18);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_24880BFCC(v11);
}

uint64_t sub_248808F84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24882AB78();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = sub_24882AA88();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = [v1 startDate];
  sub_24882AB58();

  v13 = [v1 endDate];
  sub_24882AB58();

  sub_24882AA58();
  v14 = [v1 minimumQuantity];
  if (v14)
  {
    v15 = v14;
    v16 = [v1 maximumQuantity];
    if (v16)
    {
      v17 = v16;
      (*(v6 + 16))(a1, v11, v5);
      v18 = objc_opt_self();
      v19 = [v18 meterUnit];
      [v15 doubleValueForUnit_];
      v21 = v20;

      v22 = [v18 meterUnit];
      [v17 doubleValueForUnit_];
      v24 = v23;

      (*(v6 + 8))(v11, v5);
      result = type metadata accessor for DepthIntervalSummary(0);
      v26 = a1 + *(result + 20);
      *v26 = v21;
      *(v26 + 8) = v24;
      *(v26 + 16) = 0;
      return result;
    }
  }

  if (qword_27EEA9958 != -1)
  {
    swift_once();
  }

  v27 = sub_24882AC88();
  __swift_project_value_buffer(v27, qword_27EEAA828);
  (*(v6 + 16))(v9, v11, v5);
  v28 = sub_24882AC68();
  v29 = sub_24882B148();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v30 = 136315138;
    sub_24880C9F4(&qword_27EEAA060, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v31 = sub_24882B498();
    v32 = a1;
    v34 = v33;
    (*(v6 + 8))(v9, v5);
    v35 = sub_2487F852C(v31, v34, &v39);
    a1 = v32;

    *(v30 + 4) = v35;
    _os_log_impl(&dword_2487F4000, v28, v29, "DiveGraphDataProvider: Statistics exists for interval, but min/max not populated for dateInterval=%s", v30, 0xCu);
    v36 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x24C1DA290](v36, -1, -1);
    MEMORY[0x24C1DA290](v30, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  (*(v6 + 32))(a1, v11, v5);
  result = type metadata accessor for DepthIntervalSummary(0);
  v37 = a1 + *(result + 20);
  *v37 = 0;
  *(v37 + 8) = 0;
  *(v37 + 16) = 1;
  return result;
}

uint64_t sub_248809448(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_24882AB78();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA000, &qword_24882CCF0);
  v3[9] = swift_task_alloc();
  v5 = sub_24882AE38();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA008, &qword_24882CCF8);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA010, &qword_24882CD00);
  v3[14] = swift_task_alloc();
  v6 = sub_24882AAA8();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA018, &qword_24882CD08);
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2488096EC, 0, 0);
}