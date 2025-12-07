void HKActivitySummary.humanReadableDate.getter(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D15A26A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v22 - v13;
  v15 = [v2 _endDate];
  if (v15)
  {
    v23 = a1;
    v16 = v15;
    sub_1D15A2668();

    v17 = *(v5 + 32);
    v17(v14, v10, v4);
    v18 = [v2 _creationDate];
    sub_1D15A2668();

    LOBYTE(v18) = sub_1D15A2638();
    v19 = *(v5 + 8);
    v19(v7, v4);
    if (v18)
    {
      v17(v23, v14, v4);
    }

    else
    {
      v21 = [v2 _creationDate];
      sub_1D15A2668();

      v19(v14, v4);
    }
  }

  else
  {
    v23 = [v2 _creationDate];
    sub_1D15A2668();
    v20 = v23;
  }
}

id sub_1D14DB3B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v0 setNumberStyle_];
  result = [v0 setRoundingMode_];
  qword_1EE05AD40 = v0;
  return result;
}

NSAttributedString_optional __swiftcall HKActivitySummary.createAttributedString(from:valueText:valueFont:unitText:unitFont:)(Swift::String from, Swift::String valueText, UIFont valueFont, Swift::String unitText, UIFont unitFont)
{
  sub_1D14DBEE4(0, &qword_1EE05ABD0, sub_1D14DBF38);
  inited = swift_initStackObject();
  v8 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v9 = MEMORY[0x1E69DB650];
  *(inited + 16) = xmmword_1D15AEBB0;
  v10 = *v9;
  *(inited + 40) = valueFont;
  *(inited + 48) = v10;
  v11 = objc_opt_self();
  v12 = v8;
  v13 = v10;
  v14 = v12;
  v15 = v13;
  v16 = valueFont.super.isa;
  *(inited + 56) = [v11 labelColor];
  v17 = sub_1D159BBE0(inited);
  swift_setDeallocating();
  sub_1D14DBF38(0);
  swift_arrayDestroy();
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1D15AEBB0;
  *(v18 + 32) = v14;
  *(v18 + 40) = unitFont;
  *(v18 + 48) = v15;
  v19 = unitFont.super.isa;
  *(v18 + 56) = [v11 secondaryLabelColor];
  v35 = sub_1D159BBE0(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  v20 = sub_1D15A3EF8();
  v21 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v22 = sub_1D15A3EF8();
  v23 = [v21 initWithString_];

  v24 = sub_1D15A3EF8();
  v25 = [v20 rangeOfString_];
  v27 = v26;

  v28 = sub_1D15A3EF8();
  v36 = [v20 rangeOfString_];
  v30 = v29;

  sub_1D14DBA5C(v17);

  type metadata accessor for Key(0);
  sub_1D14587E0();
  v31 = sub_1D15A3E48();

  [v23 addAttributes:v31 range:{v25, v27}];

  sub_1D14DBA5C(v35);

  v32 = sub_1D15A3E48();

  [v23 addAttributes:v32 range:{v36, v30}];

  v34 = v23;
  result.value.super.isa = v34;
  result.is_nil = v33;
  return result;
}

id HKActivitySummary.createStandHourTitleText(_:titleFont:healthStore:)(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1D15A3268();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D15A4228();
  result = [a3 displayTypeController];
  if (result)
  {
    v12 = result;
    v13 = 0xD00000000000001DLL;
    v14 = [result displayTypeWithIdentifier_];

    v15 = "ACTIVITY_SUMMARY_EXERCISE_UNIT";
    v32 = v7;
    if (v14 && [v14 _isWheelchairUser])
    {
      v13 = 0xD000000000000028;
      v15 = "ACTIVITY_SUMMARY_STAND_HEADER";
    }

    v16 = v15 | 0x8000000000000000;
    sub_1D1479D10(a1, v34);
    type metadata accessor for Localization();
    swift_initStaticObject();
    v17 = sub_1D144E91C(v13, v15 | 0x8000000000000000, v34, 0, 0);
    v19 = v18;
    v20 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v21 = v17;

      v13 = v21;
    }

    else
    {

      sub_1D15A3238();

      v22 = sub_1D15A3248();
      v23 = sub_1D15A42F8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v31 = a2;
        v25 = v24;
        v26 = swift_slowAlloc();
        v33 = v26;
        *v25 = 136446210;
        *(v25 + 4) = sub_1D1479780(v13, v16, &v33);
        _os_log_impl(&dword_1D1446000, v22, v23, "Localization: no localization found for '%{public}s'", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x1D388BF00](v26, -1, -1);
        v27 = v25;
        a2 = v31;
        MEMORY[0x1D388BF00](v27, -1, -1);
      }

      (*(v32 + 8))(v9, v6);
      v19 = v16;
    }

    sub_1D144ED4C(v34);
    v28 = [objc_opt_self() hk_activityStandGoalLineColor];
    v29 = _sSo17HKActivitySummaryC19HealthVisualizationE27createTitleAttributedString4text9titleFont0J5ColorSo012NSAttributedH0CSS_So6UIFontCSo7UIColorCtF_0(v13, v19, a2, v28);

    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D14DBA5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D1458770(0);
    v1 = sub_1D15A4968();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v25 = *(*(a1 + 56) + v10);
    v12 = v25;
    sub_1D1453BA0(0, &qword_1EE05ACD0, 0x1E69E58C0);
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_1D1458AC4((v26 + 8), v24);
    sub_1D1458AC4(v24, v26);
    sub_1D15A3F38();
    sub_1D15A4C88();
    sub_1D15A3F88();
    v15 = sub_1D15A4CB8();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v8 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v13;
    sub_1D1458AC4(v26, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

id _sSo17HKActivitySummaryC19HealthVisualizationE27createTitleAttributedString4text9titleFont0J5ColorSo012NSAttributedH0CSS_So6UIFontCSo7UIColorCtF_0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1D14DBEE4(0, &qword_1EE05ABD0, sub_1D14DBF38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D15AEBB0;
  v7 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v8 = *MEMORY[0x1E69DB650];
  *(inited + 40) = a3;
  *(inited + 48) = v8;
  *(inited + 56) = a4;
  v9 = v7;
  v10 = a3;
  v11 = v8;
  v12 = a4;
  v13 = sub_1D159BBE0(inited);
  swift_setDeallocating();
  sub_1D14DBF38(0);
  swift_arrayDestroy();
  sub_1D14DBA5C(v13);

  v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v15 = sub_1D15A3EF8();
  type metadata accessor for Key(0);
  sub_1D14587E0();
  v16 = sub_1D15A3E48();

  v17 = [v14 initWithString:v15 attributes:v16];

  return v17;
}

void sub_1D14DBE88()
{
  if (!qword_1EE05ADD0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE05ADD0);
    }
  }
}

void sub_1D14DBEE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4B78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D14DBF38(uint64_t a1)
{
  if (!qword_1EE05AD10)
  {
    type metadata accessor for Key(255);
    sub_1D1453BA0(255, &qword_1EE05ACD0, 0x1E69E58C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE05AD10);
    }
  }
}

id _sSo17HKActivitySummaryC19HealthVisualizationE24createStandHourTitleText_9titleFont14wheelchairUserSo18NSAttributedStringCyp_So6UIFontCSbtF_0(uint64_t a1, void *a2, char a3)
{
  v6 = sub_1D15A3268();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v10 = 0xD000000000000028;
  }

  else
  {
    v10 = 0xD00000000000001DLL;
  }

  if (a3)
  {
    v11 = "ACTIVITY_SUMMARY_STAND_HEADER";
  }

  else
  {
    v11 = "ACTIVITY_SUMMARY_EXERCISE_UNIT";
  }

  v12 = v11 | 0x8000000000000000;
  sub_1D1479D10(a1, v27);
  type metadata accessor for Localization();
  swift_initStaticObject();
  v13 = sub_1D144E91C(v10, v12, v27, 0, 0);
  v15 = v14;
  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = v13;

    v10 = v17;
  }

  else
  {

    sub_1D15A3238();

    v18 = sub_1D15A3248();
    v19 = sub_1D15A42F8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1D1479780(v10, v12, &v26);
      _os_log_impl(&dword_1D1446000, v18, v19, "Localization: no localization found for '%{public}s'", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D388BF00](v21, -1, -1);
      MEMORY[0x1D388BF00](v20, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v15 = v12;
  }

  sub_1D144ED4C(v27);
  v22 = [objc_opt_self() hk_activityStandGoalLineColor];
  v23 = _sSo17HKActivitySummaryC19HealthVisualizationE27createTitleAttributedString4text9titleFont0J5ColorSo012NSAttributedH0CSS_So6UIFontCSo7UIColorCtF_0(v10, v15, a2, v22);

  return v23;
}

HealthVisualization::MostRecentRangeQueryConfiguration __swiftcall MostRecentRangeQueryConfiguration.init(dateRange:anchorDate:aggregationInterval:)(HealthVisualization::DateRange dateRange, HealthVisualization::AnchorDate anchorDate, HealthVisualization::StatisticsInterval aggregationInterval)
{
  v4 = *anchorDate;
  *v3 = dateRange;
  *(v3 + 1) = v4;
  *(v3 + 2) = aggregationInterval;
  result.dateRange = dateRange;
  return result;
}

uint64_t static MostRecentRangeQueryConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1D1477464(*a1, *a2) & 1) == 0 || (sub_1D1477670(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1D147783C(v3, v5);
}

unint64_t sub_1D14DC320()
{
  v1 = 0x6144726F68636E61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E615265746164;
  }
}

uint64_t sub_1D14DC388@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D14DCBE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D14DC3B0(uint64_t a1)
{
  v2 = sub_1D14DC618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14DC3EC(uint64_t a1)
{
  v2 = sub_1D14DC618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MostRecentRangeQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D14DC894(0, &qword_1EE056310, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v14 = v1[2];
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14DC618();
  sub_1D15A4CE8();
  v21 = v9;
  v20 = 0;
  sub_1D147903C();
  sub_1D15A4B38();
  if (!v2)
  {
    v11 = v14;
    v19 = v15;
    v18 = 1;
    sub_1D148D93C();
    sub_1D15A4B38();
    v17 = v11;
    v16 = 2;
    sub_1D14A46D0();
    sub_1D15A4B38();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D14DC618()
{
  result = qword_1EE057D28[0];
  if (!qword_1EE057D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE057D28);
  }

  return result;
}

uint64_t MostRecentRangeQueryConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D14DC894(0, &qword_1EE0563F8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14DC618();
  sub_1D15A4CD8();
  if (!v2)
  {
    v19 = 0;
    sub_1D14790F4();
    sub_1D15A4A78();
    v10 = v20;
    v17 = 1;
    sub_1D148DC18();
    sub_1D15A4A78();
    v11 = v18;
    v15 = 2;
    sub_1D14A4848();
    sub_1D15A4A78();
    (*(v7 + 8))(v9, v6);
    v13 = v16;
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D14DC894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D14DC618();
    v7 = a3(a1, &type metadata for MostRecentRangeQueryConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D14DC928(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1D1477464(*a1, *a2) & 1) == 0 || (sub_1D1477670(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1D147783C(v3, v5);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MostRecentRangeQueryConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC)
  {
    if ((a2 + 33554180) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776964;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776964;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 5;
  v6 = v4 - 5;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MostRecentRangeQueryConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554180) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFB)
  {
    v3 = 0;
  }

  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 2) = (a2 - 252) >> 16;
    if (v3)
    {
      v4 = ((a2 - 252) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 4;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1D14DCADC()
{
  result = qword_1EC630898;
  if (!qword_1EC630898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630898);
  }

  return result;
}

unint64_t sub_1D14DCB34()
{
  result = qword_1EE057D18;
  if (!qword_1EE057D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE057D18);
  }

  return result;
}

unint64_t sub_1D14DCB8C()
{
  result = qword_1EE057D20;
  if (!qword_1EE057D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE057D20);
  }

  return result;
}

uint64_t sub_1D14DCBE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E615265746164 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726F68636E61 && a2 == 0xEA00000000006574 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D15BEA10 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D14DCD28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D14DCD48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

id sub_1D14DCDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id a3@<X2>, char *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v49 = a3;
  sub_1D14547D8(0, &qword_1EE05B7E8, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - v13;
  sub_1D14547D8(0, &qword_1EE05B7F0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_1D15A23A8();
  v50 = *(v18 - 8);
  v51 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v48 - v28;
  v30 = a6 - a5;
  if (v6[4] >= a6 - a5)
  {
    v37 = sub_1D15A2848();
    v38 = *(v37 - 8);
    (*(v38 + 16))(v17, a1, v37);
    v36 = 1;
    (*(v38 + 56))(v17, 0, 1, v37);
    v39 = sub_1D15A2898();
    (*(*(v39 - 8) + 56))(v14, 1, 1, v39);
    sub_1D15A2378();
    result = HKDateFormatterFromTemplate();
    if (result)
    {
      v49 = result;
      v33 = 6;
      v29 = v20;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v6[5] >= v30)
  {
    v40 = sub_1D15A2848();
    v41 = *(v40 - 8);
    (*(v41 + 16))(v17, a1, v40);
    v36 = 1;
    (*(v41 + 56))(v17, 0, 1, v40);
    v42 = sub_1D15A2898();
    (*(*(v42 - 8) + 56))(v14, 1, 1, v42);
    sub_1D15A2378();
    v33 = 12;
    result = HKDateFormatterFromTemplate();
    if (result)
    {
      v49 = result;
      v29 = v23;
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6[6] >= v30)
  {
    v43 = sub_1D15A2848();
    v44 = *(v43 - 8);
    (*(v44 + 16))(v17, a1, v43);
    v33 = 1;
    (*(v44 + 56))(v17, 0, 1, v43);
    v45 = sub_1D15A2898();
    (*(*(v45 - 8) + 56))(v14, 1, 1, v45);
    sub_1D15A2378();
    result = HKDateFormatterFromTemplate();
    if (result)
    {
      v49 = result;
      v29 = v26;
      v36 = 1;
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  sub_1D15A19A4(a2, v49, v30 / *MEMORY[0x1E696B510]);
  v31 = sub_1D15A2848();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v17, a1, v31);
  v33 = 1;
  (*(v32 + 56))(v17, 0, 1, v31);
  v34 = sub_1D15A2898();
  (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
  sub_1D15A2378();
  result = HKDateFormatterFromTemplate();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v49 = result;
  v36 = 0;
LABEL_12:
  v46 = type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy(0);
  (*(v50 + 32))(&a4[v46[5]], v29, v51);
  *&a4[v46[6]] = v33;
  a4[v46[7]] = 0;
  v47 = v49;
  *&a4[v46[8]] = v49;
  *&a4[v46[9]] = v47;
  *a4 = v36;
  a4[v46[10]] = 1;

  return v47;
}

uint64_t DiagramMultiDayDateAxisMetricsCalculator.__allocating_init(boundsLabelsShouldShowDaySpan:customLabelDateFormatter:)(char a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = *MEMORY[0x1E696B510];
  if ((*MEMORY[0x1E696B510] - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(result + 32) = (4 * v5);
  if ((v5 * 10) >> 64 != (10 * v5) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(result + 40) = (10 * v5);
  v6 = (v5 * 20) >> 64;
  v7 = 20 * v5;
  if (v6 == v7 >> 63)
  {
    *(result + 48) = v7;
    *(result + 16) = a1 & 1;
    *(result + 24) = a2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t DiagramMultiDayDateAxisMetricsCalculator.init(boundsLabelsShouldShowDaySpan:customLabelDateFormatter:)(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E696B510];
  if ((*MEMORY[0x1E696B510] - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v2 + 32) = (4 * v3);
  if ((v3 * 10) >> 64 != (10 * v3) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v2 + 40) = (10 * v3);
  v4 = (v3 * 20) >> 64;
  v5 = 20 * v3;
  if (v4 == v5 >> 63)
  {
    *(v2 + 48) = v5;
    *(v2 + 16) = result & 1;
    *(v2 + 24) = a2;
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t DiagramMultiDayDateAxisMetricsCalculator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1D14DD7F0()
{
  v1 = OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView____lazy_storage___ringsRenderer;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView____lazy_storage___ringsRenderer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView____lazy_storage___ringsRenderer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6989B20]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id HighlightCalendarView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void HighlightCalendarView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView____lazy_storage___ringsRenderer) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_weekdayLabels) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_monthLabels) = v1;
  sub_1D15A4908();
  __break(1u);
}

uint64_t *HighlightCalendarView.init(model:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings;
  *&v1[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings] = 0;
  v5 = OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings;
  *&v1[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings] = 0;
  *&v1[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView____lazy_storage___ringsRenderer] = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_weekdayLabels] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_monthLabels] = v6;
  v7 = a1[2];
  v8 = *(a1 + 24);
  *&v1[v4] = v3;
  *&v1[v5] = v7;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for HighlightCalendarView();

  v9 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v9 setHorizontalDistribution_];
  [v9 setHorizontalAlignment_];
  [v9 setRowSpacing_];
  [v9 setColumnSpacing_];
  [v9 setLayoutMarginsRelativeArrangement_];
  [v9 setLayoutMargins_];
  v17[0] = v2;
  v17[1] = v3;
  v17[2] = v7;
  v18 = v8;
  sub_1D14DDE10(v17);
  if (*(v2 + 16) && (v10 = *(v2 + 32), *(v10 + 16)))
  {
    v11 = *(type metadata accessor for HighlightCalendarDayViewModel(0) - 8);
    v12 = *(v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v2 + 16);
  if (v13)
  {
    v14 = (v2 + 32);
    do
    {
      v15 = *v14;
      if (v12)
      {
      }

      else
      {
        v17[0] = *v14;

        sub_1D14DE678(v17);
      }

      v17[0] = v15;
      sub_1D14DEAA8(v17);

      ++v14;
      --v13;
    }

    while (v13);
  }

  return v9;
}

double sub_1D14DDCF8()
{
  swift_getObjectType();
  sub_1D14BB1D4(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D15AEBB0;
  v1 = sub_1D15A32B8();
  v2 = MEMORY[0x1E69DC2B0];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_1D15A32A8();
  v4 = MEMORY[0x1E69DC0F8];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  sub_1D15A4548();
  swift_unknownObjectRelease();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D15ACDD0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  sub_1D15A4548();
  swift_unknownObjectRelease();

  return result;
}

void sub_1D14DDE10(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  LOBYTE(v4) = *(a1 + 24);
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_1D15A44D8();
  if (v5)
  {
    v7 = *&v2[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings];
    if (v7)
    {
      goto LABEL_7;
    }

    v8 = &OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings;
  }

  else
  {
    v7 = *&v2[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings];
    if (v7)
    {
      goto LABEL_7;
    }

    v8 = &OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings;
  }

  v7 = *&v2[*v8];
  if (!v7)
  {
    return;
  }

LABEL_7:

  v9 = *(v7 + 16);
  if (v9)
  {
    v27 = v4;
    v4 = v3;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D15A4878();
    v10 = 0;
    v3 = v7 + 40;
    while (v10 < *(v7 + 16))
    {

      sub_1D14DE2CC(&v28);

      ++v10;
      sub_1D15A4858();
      sub_1D15A4888();
      sub_1D15A4898();
      sub_1D15A4868();
      v3 += 16;
      if (v9 == v10)
      {

        v11 = v29;
        v3 = v4;
        LOBYTE(v4) = v27;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    sub_1D1453BA0(0, &qword_1EE059718, 0x1E69DD250);

    sub_1D15A4918();
    goto LABEL_15;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v12 = OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_weekdayLabels;
  *&v2[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_weekdayLabels] = v11;

  if (*&v2[v12] >> 62)
  {
    goto LABEL_26;
  }

  swift_bridgeObjectRetain_n();
  sub_1D15A4BB8();
  sub_1D1453BA0(0, &qword_1EE059718, 0x1E69DD250);
LABEL_15:

  sub_1D1453BA0(0, &qword_1EE059718, 0x1E69DD250);
  v13 = sub_1D15A40A8();

  v14 = [v2 addRowWithArrangedSubviews_];

  if (v4)
  {
    [v14 setSpacingAfter_];
    v15 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    v16 = [objc_opt_self() separatorColor];
    [v15 setBackgroundColor_];

    v17 = *MEMORY[0x1E698B6F8];
    HKUIOnePixel();
    LODWORD(v18) = 1148846080;
    [v15 setLayoutSize:v17 withContentPriority:{v19, v18}];
    sub_1D1496034();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D15AE100;
    *(v20 + 32) = v15;
    v21 = v15;
    v22 = sub_1D15A40A8();

    v23 = [v2 addRowWithArrangedSubviews_];
    swift_unknownObjectRelease();

    [v2 setAlignment:0 forView:v21 inAxis:0];
    v14 = v23;
  }

  if (!*(v3 + 16) || (v24 = *(v3 + 32), !*(v24 + 16)) || (v25 = *(type metadata accessor for HighlightCalendarDayViewModel(0) - 8), v26 = 16.0, (*(v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + 16) & 1) == 0))
  {
    v26 = 14.0;
  }

  [v14 setSpacingAfter_];

  swift_unknownObjectRelease();
}

void sub_1D14DE2CC(void *a3@<X8>)
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = sub_1D15A3EF8();
  [v4 setText_];

  v6 = [objc_opt_self() secondaryLabelColor];
  [v4 setTextColor_];

  [v4 setTextAlignment_];
  if (qword_1EE058BE8 != -1)
  {
    swift_once();
  }

  v7 = off_1EE058BF0;
  v8 = *(off_1EE058BF0 + 2);
  sub_1D1453BA0(0, &qword_1EE0596F8, 0x1E696AEC0);
  v9 = sub_1D15A45B8();
  v10 = *(v8 + 16);
  MEMORY[0x1EEE9AC00](v9);
  os_unfair_lock_lock((v10 + 24));
  sub_1D14BB3C8((v10 + 16), &v18);
  if (v3)
  {
    os_unfair_lock_unlock((v10 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v10 + 24));

    v11 = v18;
    if (!v18)
    {
      v11 = [objc_opt_self() hk:*MEMORY[0x1E69DDD28] preferredFontForTextStyle:32770 symbolicTraits:*MEMORY[0x1E69DDC50] maximumContentSizeCategory:?];
      v12 = v7[2];
      v13 = sub_1D15A45B8();
      v14 = *(v12 + 16);
      MEMORY[0x1EEE9AC00](v13);
      os_unfair_lock_lock((v14 + 24));
      sub_1D14BB3E0((v14 + 16));
      os_unfair_lock_unlock((v14 + 24));
    }

    [v4 setFont_];

    [v4 setAdjustsFontSizeToFitWidth_];
    [v4 setAllowsDefaultTighteningForTruncation_];
    v15 = *MEMORY[0x1E698B6F8];
    type metadata accessor for UILayoutPriority(0);
    sub_1D14BB040();
    sub_1D15A3278();
    LODWORD(v16) = v18;
    [v4 setLayoutSize:35.0 withContentPriority:{v15, v16}];

    *a3 = v4;
  }
}

uint64_t sub_1D14DE678(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v5 = *(*a1 + 16);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_monthLabels;
    v7 = 0;
    v8 = *(type metadata accessor for HighlightCalendarDayViewModel(0) - 8);
    v9 = *(v8 + 72);
    v10 = ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v3 + 8;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v11 = 0;
      v12 = (v10 + v9 * v7);
      v13 = -1;
      while (1)
      {
        v14 = *(v12 - 1);
        v15 = *v12;
        v16 = HIBYTE(*v12) & 0xF;
        if ((*v12 & 0x2000000000000000) == 0)
        {
          v16 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          break;
        }

        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_30;
        }

        ++v11;
        v12 = (v12 + v9);
        ++v13;
        if (v5 - v7 == v11)
        {
          goto LABEL_23;
        }
      }

      v34 = v10;
      if (v11 < 1)
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v18 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        sub_1D1453BA0(0, &qword_1EE059718, 0x1E69DD250);
        v19 = sub_1D15A40F8();
        v20 = v19 & 0xFFFFFFFFFFFFFF8;
        *(v20 + 16) = v11;
        *(v20 + 32) = v18;
        if (v11 != 1)
        {
          v32 = v2;
          v33 = v19;
          v21 = (v20 + 40);
          do
          {
            *v21++ = v18;
            v22 = v18;
            --v13;
          }

          while (v13);
          v2 = v32;
          v19 = v33;
        }
      }

      sub_1D14C49EC(v19);
      v23 = sub_1D14DF374(v14, v15);
      swift_beginAccess();
      v24 = v23;
      MEMORY[0x1D388A400]();
      if (*((*(v2 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D15A40E8();
      }

      sub_1D15A4108();
      swift_endAccess();
      v25 = v24;
      MEMORY[0x1D388A400]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D15A40E8();
      }

      v26 = ~v7 + v5;
      sub_1D15A4108();

      v4 = v35;
      v7 += v11 + 1;
      v10 = v34;
    }

    while (v26 != v11);
  }

  v17 = 0;
LABEL_23:
  if (v4 >> 62)
  {
LABEL_30:
    if (sub_1D15A4708())
    {
      goto LABEL_25;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_25:
    if (v17 < 1)
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v27 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
      v28 = sub_1D14DF2D8(v27, v17);
    }

    sub_1D14C49EC(v28);
    goto LABEL_34;
  }

  sub_1D14DF374(32, 0xE100000000000000);
  MEMORY[0x1D388A400]();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D15A40E8();
  }

  sub_1D15A4108();
LABEL_34:
  sub_1D1453BA0(0, &qword_1EE059718, 0x1E69DD250);
  v29 = sub_1D15A40A8();

  v30 = [v2 addRowWithArrangedSubviews_];

  [v30 setSpacingAfter_];
  return swift_unknownObjectRelease();
}

void sub_1D14DEAA8(uint64_t *a1)
{
  v2 = type metadata accessor for HighlightCalendarDayViewModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = *a1;
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D15A4878();
    sub_1D15A4148();
    v12 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D14BACF0(v12, v8);
      sub_1D15A4138();
      sub_1D15A4128();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v14 = v8[48];
      sub_1D14BACF0(v8, v5);
      if (v14)
      {
        v15 = objc_allocWithZone(type metadata accessor for HighlightCalendarDayView(0));
        sub_1D154EC48(v5, 0);
      }

      else
      {
        v16 = sub_1D14DD7F0();
        v17 = objc_allocWithZone(type metadata accessor for HighlightCalendarDayView(0));
        sub_1D154EC48(v5, v16);
      }

      sub_1D14BB0E8(v8);
      sub_1D15A4858();
      sub_1D15A4888();
      sub_1D15A4898();
      sub_1D15A4868();
      v12 += v13;
      --v10;
    }

    while (v10);
    v11 = v21;
  }

  if (v11 >> 62)
  {
    sub_1D1453BA0(0, &qword_1EE059718, 0x1E69DD250);

    sub_1D15A4918();
  }

  else
  {

    sub_1D15A4BB8();
    sub_1D1453BA0(0, &qword_1EE059718, 0x1E69DD250);
  }

  sub_1D1453BA0(0, &qword_1EE059718, 0x1E69DD250);
  v18 = sub_1D15A40A8();

  v19 = [v20 addRowWithArrangedSubviews_];
  swift_unknownObjectRelease();
}

id HighlightCalendarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id HighlightCalendarView.__allocating_init(arrangedSubviewRows:)(uint64_t a1)
{
  if (a1)
  {
    sub_1D14BA86C(0);
    v2 = sub_1D15A40A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviewRows_];

  return v3;
}

id HighlightCalendarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightCalendarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1D14DF2D8(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    sub_1D1453BA0(0, &qword_1EE059718, 0x1E69DD250);
    v4 = sub_1D15A40F8();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v4;
  }

  return result;
}

id sub_1D14DF374(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  [v2 setTextAlignment_];
  v3 = sub_1D15A3EF8();
  [v2 setText_];

  v4 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  if (qword_1EE058BE8 != -1)
  {
    swift_once();
  }

  v5 = off_1EE058BF0;
  v6 = *(off_1EE058BF0 + 2);
  sub_1D1453BA0(0, &qword_1EE0596F8, 0x1E696AEC0);
  v7 = sub_1D15A45B8();
  v8 = *(v6 + 16);
  MEMORY[0x1EEE9AC00](v7);
  os_unfair_lock_lock((v8 + 24));
  sub_1D14BA9E8((v8 + 16), &v14);
  os_unfair_lock_unlock((v8 + 24));

  v9 = v14;
  if (!v14)
  {
    v9 = [objc_opt_self() hk:*MEMORY[0x1E69DDD10] preferredFontForTextStyle:32770 symbolicTraits:*MEMORY[0x1E69DDC50] maximumContentSizeCategory:?];
    v10 = v5[2];
    v11 = sub_1D15A45B8();
    v12 = *(v10 + 16);
    MEMORY[0x1EEE9AC00](v11);
    os_unfair_lock_lock((v12 + 24));
    sub_1D14BAA04((v12 + 16));
    os_unfair_lock_unlock((v12 + 24));
  }

  [v2 setFont_];

  return v2;
}

uint64_t sub_1D14DF5F0(uint64_t a1, uint64_t a2)
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EE058BE8 != -1)
  {
    swift_once();
  }

  v2 = *(*(off_1EE058BF0 + 2) + 16);
  os_unfair_lock_lock((v2 + 24));
  [*(v2 + 16) removeAllObjects];
  os_unfair_lock_unlock((v2 + 24));
}

void sub_1D14DF6E0(char *a1, uint64_t a2)
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_monthLabels;
  swift_beginAccess();
  v4 = *&a1[v3];
  if (v4 >> 62)
  {
    goto LABEL_66;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v41 = a1;

  v6 = MEMORY[0x1E69DDC50];
  if (v5)
  {
    v7 = 0;
    a1 = 0;
    v50 = v4 & 0xFFFFFFFFFFFFFF8;
    v52 = v4 & 0xC000000000000001;
    v42 = *MEMORY[0x1E69DDC50];
    v44 = *MEMORY[0x1E69DDD10];
    v46 = v5;
    v48 = v4;
    while (1)
    {
      if (v52)
      {
        v8 = MEMORY[0x1D388AB50](v7, v4);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v7 >= *(v50 + 16))
        {
          goto LABEL_61;
        }

        v8 = *(v4 + 8 * v7 + 32);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v5 = sub_1D15A4708();
          goto LABEL_5;
        }
      }

      v54 = v8;
      sub_1D15A4138();
      sub_1D15A4128();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (qword_1EE058BE8 != -1)
      {
        swift_once();
      }

      v10 = off_1EE058BF0;
      v11 = *(off_1EE058BF0 + 2);
      sub_1D1453BA0(0, &qword_1EE0596F8, 0x1E696AEC0);
      v12 = sub_1D15A45B8();
      v13 = *(v11 + 16);
      MEMORY[0x1EEE9AC00](v12);
      os_unfair_lock_lock((v13 + 24));
      sub_1D14BB3C8((v13 + 16), &v56);
      os_unfair_lock_unlock((v13 + 24));

      v14 = v56;
      if (!v56)
      {
        v14 = [objc_opt_self() hk:v44 preferredFontForTextStyle:32770 symbolicTraits:v42 maximumContentSizeCategory:?];
        v15 = v10[2];
        v16 = sub_1D15A45B8();
        v17 = *(v15 + 16);
        MEMORY[0x1EEE9AC00](v16);
        os_unfair_lock_lock((v17 + 24));
        sub_1D14BB3E0((v17 + 16));
        os_unfair_lock_unlock((v17 + 24));
      }

      [v54 setFont_];

      ++v7;
      v4 = v48;
      v6 = MEMORY[0x1E69DDC50];
      if (v9 == v46)
      {
        goto LABEL_21;
      }
    }
  }

  a1 = 0;
LABEL_21:

  v40 = OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_weekdayLabels;
  v4 = *&v41[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_weekdayLabels];
  if (v4 >> 62)
  {
    v18 = sub_1D15A4708();
  }

  else
  {
    v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18)
  {
    v19 = 0;
    v51 = v4 & 0xFFFFFFFFFFFFFF8;
    v53 = v4 & 0xC000000000000001;
    v43 = *v6;
    v45 = *MEMORY[0x1E69DDD28];
    v47 = v18;
    v49 = v4;
    do
    {
      if (v53)
      {
        v20 = MEMORY[0x1D388AB50](v19, v4);
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v19 >= *(v51 + 16))
        {
          goto LABEL_63;
        }

        v20 = *(v4 + 8 * v19 + 32);
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_62;
        }
      }

      v55 = v20;
      sub_1D15A4138();
      sub_1D15A4128();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (qword_1EE058BE8 != -1)
      {
        swift_once();
      }

      v22 = off_1EE058BF0;
      v23 = *(off_1EE058BF0 + 2);
      sub_1D1453BA0(0, &qword_1EE0596F8, 0x1E696AEC0);
      v24 = sub_1D15A45B8();
      v25 = *(v23 + 16);
      MEMORY[0x1EEE9AC00](v24);
      os_unfair_lock_lock((v25 + 24));
      sub_1D14BB3C8((v25 + 16), &v56);
      os_unfair_lock_unlock((v25 + 24));

      v26 = v56;
      if (!v56)
      {
        v26 = [objc_opt_self() hk:v45 preferredFontForTextStyle:32770 symbolicTraits:v43 maximumContentSizeCategory:?];
        v27 = v22[2];
        v28 = sub_1D15A45B8();
        v29 = *(v27 + 16);
        MEMORY[0x1EEE9AC00](v28);
        os_unfair_lock_lock((v29 + 24));
        sub_1D14BB3E0((v29 + 16));
        os_unfair_lock_unlock((v29 + 24));
      }

      [v55 setFont_];

      ++v19;
      v4 = v49;
    }

    while (v21 != v47);
  }

  v30 = [v41 traitCollection];
  v31 = [v30 preferredContentSizeCategory];

  LOBYTE(v30) = sub_1D15A44D8();
  if (v30)
  {
    v32 = *&v41[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings];
    if (v32)
    {
      goto LABEL_44;
    }

    v33 = &OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings;
  }

  else
  {
    v32 = *&v41[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings];
    if (v32)
    {
      goto LABEL_44;
    }

    v33 = &OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings;
  }

  v32 = *&v41[*v33];
  if (!v32)
  {

    return;
  }

LABEL_44:

  v4 = *&v41[v40];
  if (v4 >> 62)
  {
    a1 = sub_1D15A4708();
  }

  else
  {
    a1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1)
  {
    v34 = 0;
    v35 = v32 + 40;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1D388AB50](v34, v4);
      }

      else
      {
        if (v34 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v36 = *(v4 + 8 * v34 + 32);
      }

      v37 = v36;
      v38 = *(v32 + 16);
      if (v34 == v38)
      {
        break;
      }

      if (v34 >= v38)
      {
        goto LABEL_65;
      }

      ++v34;

      v39 = sub_1D15A3EF8();

      [v37 setText_];

      v35 += 16;
      if (a1 == v34)
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
LABEL_56:
  }
}

id StatisticsQueryOperation.__allocating_init(sampleType:configuration:configurationOverrides:name:queryQualityOfService:healthStore:resultHandler:)(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v14 = objc_allocWithZone(v10);
  v15 = *a2;
  v16 = *(a2 + 1);
  v17 = *(a2 + 8);
  v18 = qword_1EE0584A0;
  sub_1D1487B04();
  v19 = swift_allocError();
  *v20 = 0;
  v35 = v19;
  v36 = 1;
  sub_1D14E1318(0, &qword_1EE0593E8, sub_1D1495B48, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v14[v18] = sub_1D15A2D68();
  v21 = a5;
  *&v14[qword_1EE058498] = 0;
  *&v14[qword_1EE0584B0] = a1;
  v22 = &v14[qword_1EE0584A8];
  *v22 = v15;
  *(v22 + 1) = v16;
  *(v22 + 8) = v17;
  sub_1D14E2390(a3, &v14[qword_1EE0681F8], &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  *&v14[qword_1EE068200] = a6;
  *&v14[qword_1EE068210] = a7;
  v23 = &v14[qword_1EE068208];
  *v23 = a8;
  *(v23 + 1) = a9;
  v34.receiver = v14;
  v34.super_class = v10;
  v24 = a1;
  v25 = a7;

  v26 = objc_msgSendSuper2(&v34, sel_init);
  v27 = v26;
  if (v21)
  {
    v28 = sub_1D15A3EF8();
  }

  else
  {
    v28 = 0;
  }

  [v26 setName_];

  sub_1D14E2320(a3, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  return v26;
}

uint64_t sub_1D14E015C@<X0>(uint64_t a2@<X8>)
{

  sub_1D15A2D28();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D14E01BC(uint64_t a1, void *a2)
{

  sub_1D15A2D38();
}

uint64_t sub_1D14E022C()
{

  sub_1D15A2D28();

  return v1;
}

id sub_1D14E027C()
{
  v1 = qword_1EE058498;
  v2 = *(v0 + qword_1EE058498);
  if (v2)
  {
    v3 = *(v0 + qword_1EE058498);
  }

  else
  {
    v4 = sub_1D14E02DC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D14E02DC()
{
  v1 = v0;
  v121 = sub_1D15A31D8();
  v113 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v111 = v2;
  v112 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v120 = &v99 - v4;
  v5 = MEMORY[0x1E69E6720];
  sub_1D14E1318(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v109 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v110 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v99 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v99 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v99 - v13;
  v108 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v99 - v17;
  v19 = sub_1D15A22A8();
  v122 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v99 - v22;
  sub_1D14E1318(0, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides, v5);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v106 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v99 - v27;
  v29 = sub_1D15A26A8();
  v117 = *(v29 - 8);
  v118 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v99 - v33;
  _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
  v115 = v1;
  v104 = qword_1EE0681F8;
  sub_1D14E2390(&v1[qword_1EE0681F8], v28, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  ConfigurationOverrides = type metadata accessor for StatisticsQueryConfigurationOverrides(0);
  v36 = *(ConfigurationOverrides - 8);
  v37 = *(v36 + 48);
  v38 = v36 + 48;
  v39 = v37(v28, 1, ConfigurationOverrides);
  v116 = v34;
  v119 = v19;
  v103 = v38;
  if (v39 != 1)
  {
    sub_1D14E2390(v28, v18, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v46 = v122;
    v114 = *(v122 + 6);
    if (v114(v18, 1, v19) == 1)
    {
      sub_1D14E2320(v18, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v47 = *&v28[*(ConfigurationOverrides + 20)];
      v40 = v115;
      if (!v47)
      {
        v100 = v37;
        v101 = ConfigurationOverrides;
        sub_1D14E2558(v28);
        goto LABEL_3;
      }

      v105 = v47;
    }

    else
    {
      (*(v46 + 4))(v23, v18, v19);
      v56 = objc_opt_self();
      v57 = sub_1D15A2228();
      v58 = [v56 predicateForSamplesWithinDateInterval:v57 options:0];

      (*(v46 + 1))(v23, v19);
      v59 = *&v28[*(ConfigurationOverrides + 20)];
      v40 = v115;
      if (!v59)
      {
        v105 = v58;
        sub_1D14E2558(v28);
        v54 = v111;
        v55 = v109;
        v42 = _TtC19HealthVisualization30StatisticsSnidgetStringBuilder;
        goto LABEL_15;
      }

      sub_1D1496034();
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1D15B1320;
      *(v60 + 32) = v58;
      *(v60 + 40) = v59;
      sub_1D1453BA0(0, &qword_1EE056788, 0x1E696AE18);
      v61 = v59;
      v62 = v58;
      v63 = sub_1D15A40A8();

      v105 = [objc_opt_self() andPredicateWithSubpredicates_];
    }

    v54 = v111;
    v55 = v109;
    v42 = _TtC19HealthVisualization30StatisticsSnidgetStringBuilder;
    sub_1D14E2558(v28);
    goto LABEL_15;
  }

  v100 = v37;
  v101 = ConfigurationOverrides;
  sub_1D14E2320(v28, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  v40 = v115;
LABEL_3:
  v41 = v122;
  v42 = _TtC19HealthVisualization30StatisticsSnidgetStringBuilder;
  DateRange.dateInterval(endingAt:)(v34, v40[qword_1EE0584A8], v14);
  v43 = *(v41 + 6);
  v44 = v119;
  v45 = v43(v14, 1, v119);
  v114 = v43;
  if (v45 == 1)
  {
    sub_1D14E2320(v14, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v105 = 0;
  }

  else
  {
    v48 = v102;
    (*(v41 + 4))(v102, v14, v44);
    v105 = objc_opt_self();
    sub_1D15A2288();
    v49 = sub_1D15A2618();
    v50 = v118;
    v51 = *(v117 + 8);
    v51(v31, v118);
    sub_1D15A2258();
    v52 = sub_1D15A2618();
    v53 = v50;
    v34 = v116;
    v51(v31, v53);
    v40 = v115;
    v105 = [v105 predicateForSamplesWithStartDate:v49 endDate:v52 options:0];

    v42 = _TtC19HealthVisualization30StatisticsSnidgetStringBuilder;
    (*(v41 + 1))(v48, v44);
  }

  v54 = v111;
  v55 = v109;
  ConfigurationOverrides = v101;
  v37 = v100;
LABEL_15:
  v64 = &v40[v42[29].info];
  v65 = *(v64 + 1);
  v66 = *(v65 + 16);
  if (v66)
  {
    v67 = 0;
    v68 = (v65 + 32);
    while (1)
    {
      v70 = *v68++;
      v69 = v70;
      if (v70 > 4)
      {
        if (v69 <= 6)
        {
          if (v69 == 5)
          {
            if ((v67 & 0x40) != 0)
            {
              goto LABEL_18;
            }

            v71 = 64;
            goto LABEL_17;
          }

          v71 = _HKStatisticOptionsAverageSampleDuration();
        }

        else if (v69 == 7)
        {
          v71 = _HKStatisticsOptionPresence();
        }

        else if (v69 == 8)
        {
          v71 = _HKStatisticsOptionBaselineRelativeQuantities();
        }

        else
        {
          v72 = _HKStatisticsOptionAttenuateSamples();
          if ((v72 & 0xFFFFFFFFFFFFFFFDLL) == 0)
          {
            goto LABEL_42;
          }

          v71 = v72 | 2;
        }

        if ((v71 & ~v67) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v69 <= 1)
        {
          if (v69)
          {
            if ((v67 & 4) != 0)
            {
              goto LABEL_18;
            }

            v71 = 4;
            goto LABEL_17;
          }

LABEL_42:
          if ((v67 & 2) != 0)
          {
            goto LABEL_18;
          }

          v71 = 2;
          goto LABEL_17;
        }

        if (v69 == 2)
        {
          if ((v67 & 8) != 0)
          {
            goto LABEL_18;
          }

          v71 = 8;
        }

        else if (v69 == 3)
        {
          if ((v67 & 0x10) != 0)
          {
            goto LABEL_18;
          }

          v71 = 16;
        }

        else
        {
          if ((v67 & 0x20) != 0)
          {
            goto LABEL_18;
          }

          v71 = 32;
        }
      }

LABEL_17:
      v67 |= v71;
LABEL_18:
      if (!--v66)
      {
        goto LABEL_48;
      }
    }
  }

  v67 = 0;
LABEL_48:
  v73 = v106;
  sub_1D14E2390(&v40[v104], v106, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  if (v37(v73, 1, ConfigurationOverrides) == 1)
  {
    sub_1D14E2320(v73, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
    v74 = v107;
    v75 = v119;
    (*(v122 + 7))(v107, 1, 1, v119);
    v76 = v114;
  }

  else
  {
    v74 = v107;
    sub_1D14E2390(v73, v107, &qword_1EE05B520, MEMORY[0x1E6968130]);
    sub_1D14E2558(v73);
    v77 = v122;
    v75 = v119;
    v76 = v114;
    if (v114(v74, 1, v119) != 1)
    {
      v78 = v123;
      (*(v77 + 4))(v123, v74, v75);
      (*(v77 + 7))(v78, 0, 1, v75);
      goto LABEL_54;
    }
  }

  DateRange.dateInterval(endingAt:)(v34, *v64, v123);
  if (v76(v74, 1, v75) != 1)
  {
    sub_1D14E2320(v74, &qword_1EE05B520, MEMORY[0x1E6968130]);
  }

LABEL_54:
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v79 = qword_1EE05B398;
  v80 = v40;
  v81 = v120;
  sub_1D15A31C8();
  v115 = *&v80[qword_1EE0584B0];
  v119 = v80;
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = v112;
  v83 = v113;
  v85 = v121;
  (*(v113 + 16))(v112, v81, v121);
  v122 = MEMORY[0x1E6968130];
  v86 = v110;
  sub_1D14E2390(v123, v110, &qword_1EE05B520, MEMORY[0x1E6968130]);
  v87 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v88 = (v54 + *(v55 + 80) + v87) & ~*(v55 + 80);
  v89 = (v108 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = swift_allocObject();
  (*(v83 + 32))(v90 + v87, v84, v85);
  sub_1D1495C10(v86, v90 + v88);
  *(v90 + v89) = v82;
  v91 = objc_allocWithZone(MEMORY[0x1E696C4E0]);
  aBlock[4] = sub_1D14E2410;
  aBlock[5] = v90;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D14E2280;
  aBlock[3] = &block_descriptor_4;
  v92 = _Block_copy(aBlock);

  v93 = v105;
  v94 = [v91 initWithSampleType:v115 samplePredicate:v105 options:v67 completionHandler:v92];
  _Block_release(v92);

  v95 = v94;
  v96 = v119;
  v97 = [v119 name];
  [v95 setDebugIdentifier_];

  [v95 setQualityOfService_];
  (*(v83 + 8))(v120, v121);
  sub_1D14E2320(v123, &qword_1EE05B520, v122);
  (*(v117 + 8))(v116, v118);
  return v95;
}

id StatisticsQueryOperation.init(sampleType:configuration:configurationOverrides:name:queryQualityOfService:healthStore:resultHandler:)(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v13 = *a2;
  v14 = *(a2 + 1);
  v15 = *(a2 + 8);
  v16 = qword_1EE0584A0;
  sub_1D1487B04();
  v17 = swift_allocError();
  *v18 = 0;
  v32 = v17;
  v33 = 1;
  sub_1D14E1318(0, &qword_1EE0593E8, sub_1D1495B48, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v9[v16] = sub_1D15A2D68();
  *&v9[qword_1EE058498] = 0;
  *&v9[qword_1EE0584B0] = a1;
  v19 = &v9[qword_1EE0584A8];
  *v19 = v13;
  *(v19 + 1) = v14;
  *(v19 + 8) = v15;
  sub_1D14E2390(a3, &v9[qword_1EE0681F8], &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  *&v9[qword_1EE068200] = a6;
  *&v9[qword_1EE068210] = a7;
  v20 = &v9[qword_1EE068208];
  *v20 = a8;
  *(v20 + 1) = a9;
  v31.receiver = v9;
  v31.super_class = type metadata accessor for StatisticsQueryOperation(0);
  v21 = a1;
  v22 = a7;

  v23 = objc_msgSendSuper2(&v31, sel_init);
  v24 = v23;
  if (a5)
  {
    v25 = sub_1D15A3EF8();
  }

  else
  {
    v25 = 0;
  }

  [v23 setName_];

  sub_1D14E2320(a3, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  return v23;
}

void sub_1D14E1318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for StatisticsQueryOperation(uint64_t a1)
{
  result = qword_1EE058488;
  if (!qword_1EE058488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D14E13C8()
{
  v1 = v0;
  v2 = sub_1D15A31D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1487B04();
  v6 = swift_allocError();
  *v7 = 2;
  v27 = v6;
  v28 = 1;

  sub_1D15A2D38();

  v8 = *&v0[qword_1EE0584B0];
  v9 = [v8 identifier];
  v10 = sub_1D15A3F38();
  v12 = v11;

  v13._countAndFlagsBits = 0x676E696E6E7572;
  v13._object = 0xE700000000000000;
  v14._countAndFlagsBits = v10;
  v14._object = v12;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v13, v14);

  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE05B398;
  v16 = v1;
  sub_1D15A31C8();
  v17 = sub_1D15A4478();
  sub_1D1487C24(0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D15ACDD0;
  v19 = [v8 identifier];
  v20 = sub_1D15A3F38();
  v22 = v21;

  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1D1487C8C();
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  sub_1D15A31A8(v17, &dword_1D1446000, v15, "StatisticsQuery", 15, 2, v5, "typeIdentifier=%{private}@", 26, 2, v18);

  v23 = *&v16[qword_1EE068210];
  v24 = sub_1D14E027C();
  [v23 executeQuery_];

  return (*(v3 + 8))(v5, v2);
}

void sub_1D14E16C0(void *a1)
{
  v1 = a1;
  sub_1D14E13C8();
}

void sub_1D14E1708()
{
  v1 = v0;
  if ([v0 isCancelled])
  {
    sub_1D1487B04();
    v2 = swift_allocError();
    *v3 = 3;
    MEMORY[0x1EEE9AC00](v2);

    sub_1D15A2D38();

    v4 = [*&v0[qword_1EE0584B0] identifier];
    v5 = sub_1D15A3F38();
    v7 = v6;

    v8._countAndFlagsBits = 0x656C6C65636E6163;
    v8._object = 0xE900000000000064;
    v9._countAndFlagsBits = v5;
    v9._object = v7;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v8, v9);
  }

  v10 = *&v1[qword_1EE068210];
  v11 = sub_1D14E027C();
  [v10 stopQuery_];
}

id StatisticsQueryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D14E1914()
{

  sub_1D14E2320(v0 + qword_1EE0681F8, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);

  v1 = *(v0 + qword_1EE058498);
}

id StatisticsQueryOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StatisticsQueryOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D14E1A00(uint64_t a1)
{

  sub_1D14E2320(a1 + qword_1EE0681F8, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);

  v2 = *(a1 + qword_1EE058498);
}

uint64_t sub_1D14E1AC0@<X0>(uint64_t a1@<X8>)
{

  sub_1D15A2D28();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void sub_1D14E1B20(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a3;
  v45 = a2;
  sub_1D14E1318(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_1D15A4468();
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE05B398;
  sub_1D1487C24(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D15ACDD0;
  sub_1D14E2390(a5, v10, &qword_1EE05B520, MEMORY[0x1E6968130]);
  v14 = sub_1D15A22A8();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_1D14E2320(v10, &qword_1EE05B520, MEMORY[0x1E6968130]);
    countAndFlagsBits = 0;
    object = 0;
  }

  else
  {
    v18 = DateInterval.stringWithISO8601Format()();
    countAndFlagsBits = v18._countAndFlagsBits;
    object = v18._object;
    (*(v15 + 8))(v10, v14);
  }

  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D1487C8C();
  v19 = 0x3E656E6F6E3CLL;
  if (object)
  {
    v19 = countAndFlagsBits;
  }

  v20 = 0xE600000000000000;
  if (object)
  {
    v20 = object;
  }

  *(v13 + 32) = v19;
  *(v13 + 40) = v20;
  sub_1D15A31A8(v11, &dword_1D1446000, v12, "StatisticsQuery", 15, 2, a4, "dateInterval=%{public}@", 23, 2, v13);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if ([v22 isCancelled])
    {

LABEL_14:
      v24._countAndFlagsBits = 0xD00000000000002DLL;
      v24._object = 0x80000001D15BDC90;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v24, v25);

      return;
    }

    v23 = [v22 isFinished];

    if (v23)
    {
      goto LABEL_14;
    }

    v26 = v45;
    v27 = v45;
    if (!v45)
    {
      v28 = v44;
      if (v44)
      {
        v29 = 0xD00000000000001FLL;
      }

      else
      {
        v29 = 0;
      }

      if (v44)
      {
        v30 = 0x80000001D15BFFD0;
      }

      else
      {
        v30 = 0;
      }

      if (v44)
      {
        v31 = v44 | 0x8000000000000000;
      }

      else
      {
        v31 = 0xC000000000000000;
      }

      sub_1D1487F34();
      v32 = swift_allocError();
      *v33 = v29;
      v33[1] = v30;
      v33[2] = v31;
      swift_getErrorValue();
      v34 = v28;
      sub_1D1487F88(v29, v30, v31);
      v35._countAndFlagsBits = sub_1D15A4C08();
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      NSOperation.logErrorString(_:withInfo:)(v35, v36);

      v27 = swift_allocError();
      *v37 = v29;
      v37[1] = v30;
      v37[2] = v31;
      v38 = v27;
      v26 = v45;
    }

    v39 = v26 == 0;
    v40 = *&v22[qword_1EE068208];
    v41 = v26;

    v40(v27, v39);

    MEMORY[0x1EEE9AC00](v42);
    sub_1D15A2DA8();
    sub_1D14A8208(v27);
    sub_1D14A8208(v27);
  }
}

double sub_1D14E1FDC(uint64_t a1, uint64_t a2, char a3)
{

  sub_1D15A2D38();

  v4 = [*(a1 + qword_1EE0584B0) identifier];
  v5 = sub_1D15A3F38();
  v7 = v6;

  v8._countAndFlagsBits = 0x64656873696E6966;
  v8._object = 0xE800000000000000;
  v9._countAndFlagsBits = v5;
  v9._object = v7;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v8, v9);

  return result;
}

void sub_1D14E20B0(uint64_t a1)
{
  sub_1D14E1318(319, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1D14E2280(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t sub_1D14E2320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D14E1318(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D14E2390(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D14E1318(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D14E2410(uint64_t a1, void *a2, unint64_t a3)
{
  v7 = *(sub_1D15A31D8() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  sub_1D14E1318(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v11 = *(v10 - 8);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v3 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D14E1B20(a1, a2, a3, v3 + v8, v3 + v12, v13);
}

uint64_t sub_1D14E2558(uint64_t a1)
{
  ConfigurationOverrides = type metadata accessor for StatisticsQueryConfigurationOverrides(0);
  (*(*(ConfigurationOverrides - 8) + 8))(a1, ConfigurationOverrides);
  return a1;
}

id sub_1D14E25C0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1D14A8208(*a1);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_1D14E261C(v3);
}

id HKObjectType.currentValueQueryConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 code];
  switch(result)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 0xFuLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x3AuLL:
    case 0x3EuLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x59uLL:
    case 0x5AuLL:
    case 0x72uLL:
    case 0x76uLL:
    case 0x89uLL:
    case 0x8BuLL:
    case 0xB7uLL:
    case 0xBBuLL:
    case 0xC2uLL:
    case 0x102uLL:
    case 0x103uLL:
    case 0x104uLL:
    case 0x10AuLL:
    case 0x10EuLL:
    case 0x112uLL:
    case 0x118uLL:
    case 0x119uLL:
    case 0x11AuLL:
    case 0x11BuLL:
    case 0x12DuLL:
    case 0x12EuLL:
    case 0x12FuLL:
      v4 = &unk_1F4D3A910;
      goto LABEL_8;
    case 5uLL:
    case 0xEuLL:
    case 0x3DuLL:
    case 0xB6uLL:
    case 0xBCuLL:
    case 0xC3uLL:
    case 0xC4uLL:
    case 0x110uLL:
    case 0x11EuLL:
      v4 = &unk_1F4D3A9C8;
      goto LABEL_8;
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3CuLL:
    case 0x4BuLL:
    case 0x4EuLL:
    case 0x53uLL:
    case 0x57uLL:
    case 0x65uLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x71uLL:
    case 0x7DuLL:
    case 0x8AuLL:
    case 0xB3uLL:
    case 0xBAuLL:
    case 0xFBuLL:
    case 0x117uLL:
    case 0x126uLL:
    case 0x127uLL:
    case 0x128uLL:
    case 0x129uLL:
      v4 = &unk_1F4D3A8C0;
      goto LABEL_8;
    case 0x3FuLL:
      *a1 = xmmword_1D15B13A0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v5 = 16;
      goto LABEL_31;
    case 0x46uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 80;
      goto LABEL_31;
    case 0x4FuLL:
    case 0x63uLL:
    case 0xBDuLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 24;
      goto LABEL_31;
    case 0x50uLL:
      *a1 = &unk_1F4D3A938;
      *(a1 + 8) = 2;
      *(a1 + 16) = &unk_1F4D3A978;
      *(a1 + 24) = 256;
      v5 = 8;
      goto LABEL_31;
    case 0x5BuLL:
    case 0x5CuLL:
    case 0x5FuLL:
    case 0x61uLL:
    case 0x90uLL:
    case 0x9DuLL:
    case 0x9EuLL:
    case 0x9FuLL:
    case 0xA0uLL:
    case 0xA1uLL:
    case 0xA2uLL:
    case 0xA3uLL:
    case 0xA4uLL:
    case 0xA5uLL:
    case 0xA6uLL:
    case 0xA7uLL:
    case 0xA8uLL:
    case 0xA9uLL:
    case 0xAAuLL:
    case 0xABuLL:
    case 0xE5uLL:
    case 0xE6uLL:
    case 0xE7uLL:
    case 0xE8uLL:
    case 0xE9uLL:
    case 0xEAuLL:
    case 0xEBuLL:
    case 0xF3uLL:
    case 0xF4uLL:
    case 0xF9uLL:
    case 0x11FuLL:
    case 0x120uLL:
    case 0x139uLL:
    case 0x13AuLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 33;
      goto LABEL_31;
    case 0x60uLL:
      *a1 = 0xD00000000000001CLL;
      *(a1 + 8) = 0x80000001D15BE6C0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v5 = 33;
      goto LABEL_31;
    case 0x64uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 48;
      goto LABEL_31;
    case 0x7CuLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 104;
      goto LABEL_31;
    case 0x8CuLL:
    case 0x93uLL:
    case 0x9CuLL:
    case 0xB2uLL:
    case 0xC7uLL:
    case 0xECuLL:
    case 0xFAuLL:
    case 0xFEuLL:
    case 0x114uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 72;
      goto LABEL_31;
    case 0x91uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 65;
      goto LABEL_31;
    case 0xACuLL:
      v6 = &unk_1F4D3A9A0;
      goto LABEL_29;
    case 0xADuLL:
      v6 = &unk_1F4D3AA18;
LABEL_29:
      *a1 = 3;
      *(a1 + 8) = v6;
      *(a1 + 16) = xmmword_1D15B13B0;
      v5 = 56;
      goto LABEL_31;
    case 0xBFuLL:
    case 0xC0uLL:
    case 0xC1uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 88;
      goto LABEL_31;
    case 0xC9uLL:
    case 0xCAuLL:
    case 0xCBuLL:
    case 0xCCuLL:
    case 0xCDuLL:
    case 0xCEuLL:
    case 0xCFuLL:
    case 0xDCuLL:
    case 0xDDuLL:
    case 0xDEuLL:
    case 0xDFuLL:
    case 0xE0uLL:
    case 0xE1uLL:
    case 0xE2uLL:
    case 0xF0uLL:
    case 0xF1uLL:
    case 0xF2uLL:
    case 0x113uLL:
    case 0x11CuLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 32;
      goto LABEL_31;
    case 0xEDuLL:
      v4 = &unk_1F4D3A9F0;
      goto LABEL_8;
    case 0xF8uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 112;
      goto LABEL_31;
    case 0x100uLL:
      v4 = &unk_1F4D3A8E8;
LABEL_8:
      *a1 = 2;
      *(a1 + 8) = v4;
      *(a1 + 16) = xmmword_1D15B1390;
      *(a1 + 32) = 0;
      return result;
    case 0x101uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 120;
      goto LABEL_31;
    case 0x106uLL:
    case 0x107uLL:
    case 0x108uLL:
    case 0x109uLL:
      *a1 = 0xD000000000000010;
      *(a1 + 8) = 0x80000001D15BE6A0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v5 = 32;
      goto LABEL_31;
    case 0x10DuLL:
      *a1 = 2;
      *(a1 + 8) = &unk_1F4D3AA40;
      *(a1 + 16) = xmmword_1D15B1390;
      v5 = 0x80;
      goto LABEL_31;
    case 0x115uLL:
      *a1 = 65538;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v5 = 40;
      goto LABEL_31;
    case 0x131uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = -120;
      goto LABEL_31;
    case 0x155uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = -112;
      goto LABEL_31;
    default:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = -2;
LABEL_31:
      *(a1 + 32) = v5;
      return result;
  }
}

id HKObjectType.snippetSupplementaryLabelConfiguration.getter@<X0>(char *a1@<X8>)
{
  result = [v1 code];
  v4 = 1;
  switch(result)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x3AuLL:
    case 0x3DuLL:
    case 0x3EuLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x59uLL:
    case 0x5AuLL:
    case 0x72uLL:
    case 0x76uLL:
    case 0x89uLL:
    case 0x8BuLL:
    case 0xB6uLL:
    case 0xC3uLL:
    case 0xC4uLL:
    case 0xEDuLL:
    case 0x102uLL:
    case 0x103uLL:
    case 0x104uLL:
    case 0x10AuLL:
    case 0x10EuLL:
    case 0x110uLL:
    case 0x112uLL:
    case 0x115uLL:
    case 0x118uLL:
    case 0x119uLL:
    case 0x11AuLL:
    case 0x11BuLL:
    case 0x11EuLL:
    case 0x12DuLL:
    case 0x12EuLL:
    case 0x12FuLL:
      v4 = 0;
      break;
    case 0xF8uLL:
    case 0xF9uLL:
      break;
    default:
      v4 = 2;
      break;
  }

  *a1 = v4;
  return result;
}

id HKObjectType.swiftChartDiagramConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 code];
  switch(result)
  {
    case 0uLL:
    case 1uLL:
    case 3uLL:
    case 4uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3CuLL:
    case 0x3DuLL:
    case 0x3EuLL:
    case 0x3FuLL:
    case 0x46uLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x4BuLL:
    case 0x4EuLL:
    case 0x4FuLL:
    case 0x53uLL:
    case 0x57uLL:
    case 0x5AuLL:
    case 0x63uLL:
    case 0x65uLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x71uLL:
    case 0x72uLL:
    case 0x76uLL:
    case 0x7DuLL:
    case 0x89uLL:
    case 0x8AuLL:
    case 0x8BuLL:
    case 0xACuLL:
    case 0xADuLL:
    case 0xB3uLL:
    case 0xB6uLL:
    case 0xB7uLL:
    case 0xBAuLL:
    case 0xBBuLL:
    case 0xBCuLL:
    case 0xBDuLL:
    case 0xC2uLL:
    case 0xC3uLL:
    case 0xC4uLL:
    case 0xFBuLL:
    case 0x100uLL:
    case 0x102uLL:
    case 0x103uLL:
    case 0x104uLL:
    case 0x10AuLL:
    case 0x10EuLL:
    case 0x110uLL:
    case 0x112uLL:
    case 0x117uLL:
    case 0x118uLL:
    case 0x119uLL:
    case 0x11AuLL:
    case 0x11BuLL:
    case 0x11EuLL:
    case 0x126uLL:
    case 0x127uLL:
    case 0x128uLL:
    case 0x129uLL:
    case 0x12DuLL:
    case 0x12EuLL:
    case 0x12FuLL:
      v4 = xmmword_1D15B13E0;
      goto LABEL_3;
    case 5uLL:
    case 0xFuLL:
    case 0x10DuLL:
    case 0x115uLL:
      v4 = xmmword_1D15B13D0;
LABEL_3:
      *a1 = v4;
      v5 = 5;
      goto LABEL_4;
    case 0x7CuLL:
      *a1 = xmmword_1D15B13C0;
      v5 = 4;
LABEL_4:
      *(a1 + 16) = v5;
      *(a1 + 24) = 0;
      break;
    default:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 256;
      break;
  }

  return result;
}

uint64_t HKObjectType.canBeOngoing.getter()
{
  v1 = [v0 code] - 6;
  result = 1;
  switch(v1)
  {
    case 0uLL:
    case 5uLL:
    case 0x35uLL:
    case 0x3AuLL:
    case 0x3BuLL:
    case 0x3CuLL:
    case 0x3FuLL:
    case 0x44uLL:
    case 0x4CuLL:
    case 0x4EuLL:
    case 0x4FuLL:
    case 0x50uLL:
    case 0x52uLL:
    case 0x57uLL:
    case 0x58uLL:
    case 0x59uLL:
    case 0x61uLL:
    case 0x64uLL:
    case 0x67uLL:
    case 0x6DuLL:
    case 0x6FuLL:
    case 0x72uLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x81uLL:
    case 0x82uLL:
    case 0x8CuLL:
    case 0x8EuLL:
    case 0xA8uLL:
    case 0xA9uLL:
    case 0xAAuLL:
    case 0xABuLL:
    case 0xAFuLL:
    case 0xB2uLL:
    case 0xB3uLL:
    case 0xB9uLL:
    case 0xBAuLL:
    case 0xBBuLL:
    case 0xC2uLL:
    case 0xCAuLL:
    case 0xD1uLL:
    case 0xD4uLL:
    case 0xDDuLL:
    case 0xDEuLL:
    case 0xE8uLL:
    case 0xE9uLL:
    case 0xF1uLL:
    case 0xFBuLL:
    case 0xFFuLL:
    case 0x109uLL:
    case 0x110uLL:
    case 0x11DuLL:
    case 0x11EuLL:
    case 0x12CuLL:
    case 0x133uLL:
    case 0x134uLL:
    case 0x137uLL:
    case 0x13CuLL:
    case 0x13DuLL:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

id sub_1D14E2A68(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = 0xD000000000000025;
  v7 = sub_1D15A3268();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v54 - v19;
  if (![a1 _isStandalonePhoneSummary])
  {
    if (((a2 == 1) & a3) != 0)
    {
      v21 = 0x80000001D15C0050;
      type metadata accessor for Localization();
      v56 = 0u;
      v57 = 0u;
      swift_initStaticObject();
      v22 = sub_1D144E91C(0xD00000000000002CLL, 0x80000001D15C0050, &v56, 0, 0);
      v24 = v31;
      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (!v32)
      {

        sub_1D15A3238();
        v33 = sub_1D15A3248();
        v34 = sub_1D15A42F8();
        if (!os_log_type_enabled(v33, v34))
        {

          (*(v8 + 8))(v13, v7);
          v30 = 0xD00000000000002CLL;
          v24 = 0x80000001D15C0050;
          goto LABEL_23;
        }

        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v55 = v36;
        *v35 = 136446210;
        v30 = 0xD00000000000002CLL;
        *(v35 + 4) = sub_1D1479780(0xD00000000000002CLL, 0x80000001D15C0050, &v55);
        _os_log_impl(&dword_1D1446000, v33, v34, "Localization: no localization found for '%{public}s'", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x1D388BF00](v36, -1, -1);
        MEMORY[0x1D388BF00](v35, -1, -1);

        (*(v8 + 8))(v13, v7);
LABEL_14:
        v24 = v21;
LABEL_23:
        sub_1D144ED4C(&v56);
        goto LABEL_28;
      }
    }

    else
    {
      type metadata accessor for Localization();
      v56 = 0u;
      v57 = 0u;
      swift_initStaticObject();
      v22 = sub_1D144E91C(0xD000000000000027, 0x80000001D15C0020, &v56, 0, 0);
      v24 = v40;
      v41 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v41 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (!v41)
      {

        sub_1D15A3238();
        v50 = sub_1D15A3248();
        v51 = sub_1D15A42F8();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v55 = v53;
          *v52 = 136446210;
          v30 = 0xD000000000000027;
          *(v52 + 4) = sub_1D1479780(0xD000000000000027, 0x80000001D15C0020, &v55);
          _os_log_impl(&dword_1D1446000, v50, v51, "Localization: no localization found for '%{public}s'", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v53);
          MEMORY[0x1D388BF00](v53, -1, -1);
          MEMORY[0x1D388BF00](v52, -1, -1);

          (*(v8 + 8))(v10, v7);
        }

        else
        {

          (*(v8 + 8))(v10, v7);
          v30 = 0xD000000000000027;
        }

        v24 = 0x80000001D15C0020;
        goto LABEL_23;
      }
    }

LABEL_22:
    v30 = v22;
    goto LABEL_23;
  }

  if (((a2 == 1) & a3) != 0)
  {
    v21 = 0x80000001D15C00B0;
    type metadata accessor for Localization();
    v56 = 0u;
    v57 = 0u;
    swift_initStaticObject();
    v22 = sub_1D144E91C(0xD00000000000002ALL, 0x80000001D15C00B0, &v56, 0, 0);
    v24 = v23;
    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25)
    {

      sub_1D15A3238();
      v26 = sub_1D15A3248();
      v27 = sub_1D15A42F8();
      if (!os_log_type_enabled(v26, v27))
      {

        (*(v8 + 8))(v20, v7);
        v30 = 0xD00000000000002ALL;
        v24 = 0x80000001D15C00B0;
        goto LABEL_23;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v55 = v29;
      *v28 = 136446210;
      v30 = 0xD00000000000002ALL;
      *(v28 + 4) = sub_1D1479780(0xD00000000000002ALL, 0x80000001D15C00B0, &v55);
      _os_log_impl(&dword_1D1446000, v26, v27, "Localization: no localization found for '%{public}s'", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1D388BF00](v29, -1, -1);
      MEMORY[0x1D388BF00](v28, -1, -1);

      (*(v8 + 8))(v20, v7);
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  type metadata accessor for Localization();
  v56 = 0u;
  v57 = 0u;
  swift_initStaticObject();
  v37 = sub_1D144E91C(0xD000000000000025, 0x80000001D15C0080, &v56, 0, 0);
  v24 = v38;
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    v6 = v37;
  }

  else
  {

    sub_1D15A3238();
    v42 = sub_1D15A3248();
    v43 = sub_1D15A42F8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v55 = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_1D1479780(0xD000000000000025, 0x80000001D15C0080, &v55);
      _os_log_impl(&dword_1D1446000, v42, v43, "Localization: no localization found for '%{public}s'", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1D388BF00](v45, -1, -1);
      MEMORY[0x1D388BF00](v44, -1, -1);
    }

    (*(v8 + 8))(v16, v7);
    v24 = 0x80000001D15C0080;
  }

  sub_1D144ED4C(&v56);
  v30 = v6;
LABEL_28:
  sub_1D14AD968();
  v46 = sub_1D15A4538();
  v47 = [objc_opt_self() labelColor];
  v48 = _sSo17HKActivitySummaryC19HealthVisualizationE27createTitleAttributedString4text9titleFont0J5ColorSo012NSAttributedH0CSS_So6UIFontCSo7UIColorCtF_0(v30, v24, v46, v47);

  return v48;
}

id sub_1D14E3204(uint64_t a1)
{
  v2 = sub_1D15A3268();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v6 setDateStyle_];
  [v6 setTimeStyle_];
  type metadata accessor for Localization();
  memset(v30, 0, sizeof(v30));
  swift_initStaticObject();
  v7 = sub_1D144E91C(0xD00000000000002ELL, 0x80000001D15BFFF0, v30, 0, 0);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    sub_1D15A3238();
    v10 = sub_1D15A3248();
    v11 = sub_1D15A42F8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v28 = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1D1479780(0xD00000000000002ELL, 0x80000001D15BFFF0, &v29);
      _os_log_impl(&dword_1D1446000, v10, v11, "Localization: no localization found for '%{public}s'", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D388BF00](v14, -1, -1);
      MEMORY[0x1D388BF00](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  sub_1D144ED4C(v30);
  sub_1D1487C24(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D15ACDD0;
  v16 = sub_1D15A2618();
  v17 = [v6 stringFromDate_];

  v18 = sub_1D15A3F38();
  v20 = v19;

  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1D1487C8C();
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  v21 = sub_1D15A3F08();
  v23 = v22;

  sub_1D14AD968();
  v24 = sub_1D15A4538();
  v25 = [objc_opt_self() secondaryLabelColor];
  v26 = _sSo17HKActivitySummaryC19HealthVisualizationE27createTitleAttributedString4text9titleFont0J5ColorSo012NSAttributedH0CSS_So6UIFontCSo7UIColorCtF_0(v21, v23, v24, v25);

  return v26;
}

uint64_t SummaryModelAudience.uniqueIdentifierComponent.getter(char a1)
{
  if (a1)
  {
    v1 = 0x676E6972616873;
  }

  else
  {
    v1 = 0x7972616D697270;
  }

  MEMORY[0x1D388A330](v1, 0xE700000000000000);

  return 0x65636E6569647541;
}

uint64_t SummaryModelAudience.description.getter(char a1)
{
  if (a1)
  {
    return 0x676E6972616873;
  }

  else
  {
    return 0x7972616D697270;
  }
}

HealthVisualization::SummaryModelAudience_optional __swiftcall SummaryModelAudience.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D15A49B8();

  if (v1 == 1)
  {
    v2.value = HealthVisualization_SummaryModelAudience_sharing;
  }

  else
  {
    v2.value = HealthVisualization_SummaryModelAudience_unknownDefault;
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

unint64_t sub_1D14E36D4()
{
  result = qword_1EC6308C8;
  if (!qword_1EC6308C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6308C8);
  }

  return result;
}

uint64_t sub_1D14E3728()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

double sub_1D14E37A0(uint64_t a1)
{
  sub_1D15A3F88();

  return result;
}

uint64_t sub_1D14E37FC()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

void sub_1D14E3870(char *a2@<X8>)
{
  v3 = sub_1D15A49B8();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D14E38D0(uint64_t *a1@<X8>)
{
  v2 = 0x7972616D697270;
  if (*v1)
  {
    v2 = 0x676E6972616873;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_1D14E3908(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x676E6972616873;
  }

  else
  {
    v2 = 0x7972616D697270;
  }

  if (*a2)
  {
    v3 = 0x676E6972616873;
  }

  else
  {
    v3 = 0x7972616D697270;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D15A4BA8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D14E3990()
{
  if (*v0)
  {
    return 0x676E6972616873;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t SnippetSupplementaryLabelConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

unint64_t sub_1D14E3A68()
{
  result = qword_1EC6308D0;
  if (!qword_1EC6308D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6308D0);
  }

  return result;
}

double SignificantChange.changes.getter()
{
  type metadata accessor for SignificantChange(0);

  return result;
}

uint64_t SignificantChange.init(baseline:changes:notification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D14E764C(a1, a4, type metadata accessor for SignificantChange.Period);
  v7 = type metadata accessor for SignificantChange(0);
  *(a4 + *(v7 + 20)) = a2;
  v8 = a4 + *(v7 + 24);

  return sub_1D14E3BEC(a3, v8);
}

uint64_t sub_1D14E3BEC(uint64_t a1, uint64_t a2)
{
  sub_1D14E6958(0, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SignificantChange.Period.period.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A22A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SignificantChange.Period.change.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SignificantChange.Period(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

int *SignificantChange.Period.init(period:value:frequency:change:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = *a2;
  v10 = sub_1D15A22A8();
  (*(*(v10 - 8) + 32))(a3, a1, v10);
  result = type metadata accessor for SignificantChange.Period(0);
  *(a3 + result[5]) = a4;
  *(a3 + result[6]) = a5;
  *(a3 + result[7]) = v9;
  return result;
}

HealthVisualization::SignificantChange::Period::ChangeType_optional __swiftcall SignificantChange.Period.ChangeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

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

  *v2 = v5;
  return result;
}

uint64_t SignificantChange.Period.ChangeType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6973616572636564;
  }

  else
  {
    return 0x6973616572636E69;
  }
}

uint64_t sub_1D14E3EB0()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

double sub_1D14E3F24(uint64_t a1)
{
  sub_1D15A3F88();

  return result;
}

uint64_t sub_1D14E3F7C()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D14E3FEC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6973616572636564;
  }

  else
  {
    v2 = 0x6973616572636E69;
  }

  if (*a2)
  {
    v3 = 0x6973616572636564;
  }

  else
  {
    v3 = 0x6973616572636E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D15A4BA8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

void sub_1D14E4124(char *a2@<X8>)
{
  v3 = sub_1D15A49B8();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D14E4184(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0x6973616572636564;
  }

  else
  {
    v2 = 0x6973616572636E69;
  }

  *a1 = v2;
  a1[1] = 0xEA0000000000676ELL;
}

uint64_t sub_1D14E41B8()
{
  v1 = 0x646F69726570;
  v2 = 0x636E657571657266;
  if (*v0 != 2)
  {
    v2 = 0x65676E616863;
  }

  if (*v0)
  {
    v1 = 0x65756C6176;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D14E422C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D14E6548(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D14E4254(uint64_t a1)
{
  v2 = sub_1D14E608C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14E4290(uint64_t a1)
{
  v2 = sub_1D14E608C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChange.Period.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D14E69BC(0, &qword_1EE0563C8, sub_1D14E608C, &type metadata for SignificantChange.Period.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E608C();
  sub_1D15A4CE8();
  v17 = 0;
  sub_1D15A22A8();
  sub_1D14E6134(&qword_1EE0595A0, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
  sub_1D15A4B38();
  if (!v2)
  {
    v10 = type metadata accessor for SignificantChange.Period(0);
    v16 = 1;
    sub_1D15A4B18();
    v15 = 2;
    sub_1D15A4B18();
    v14 = *(v3 + *(v10 + 28));
    v13 = 3;
    sub_1D14E60E0();
    sub_1D15A4AE8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t SignificantChange.Period.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_1D15A22A8();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14E69BC(0, &qword_1EE056458, sub_1D14E608C, &type metadata for SignificantChange.Period.CodingKeys, MEMORY[0x1E69E6F48]);
  v21 = v5;
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for SignificantChange.Period(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E608C();
  v23 = v7;
  v11 = v24;
  sub_1D15A4CD8();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v19;
  v12 = v20;
  v29 = 0;
  sub_1D14E6134(&qword_1EE059598, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
  sub_1D15A4A78();
  (*(v12 + 32))(v10, v22, v3);
  v28 = 1;
  sub_1D15A4A58();
  *&v10[v8[5]] = v14;
  v27 = 2;
  sub_1D15A4A58();
  *&v10[v8[6]] = v15;
  v25 = 3;
  sub_1D14E617C();
  sub_1D15A4A28();
  (*(v13 + 8))(v23, v21);
  v10[v8[7]] = v26;
  sub_1D14E6AE8(v10, v18, type metadata accessor for SignificantChange.Period);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D14E7560(v10, type metadata accessor for SignificantChange.Period);
}

uint64_t SignificantChange.Notification.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SignificantChange.Notification.detectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignificantChange.Notification(0) + 24);
  v4 = sub_1D15A26A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SignificantChange.Notification.originalEventDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignificantChange.Notification(0) + 28);
  v4 = sub_1D15A26A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SignificantChange.Notification.init(identifier:significant:detectionDate:originalEventDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v9 = type metadata accessor for SignificantChange.Notification(0);
  v10 = *(v9 + 24);
  v11 = sub_1D15A26A8();
  v14 = *(*(v11 - 8) + 32);
  (v14)((v11 - 8), a6 + v10, a4, v11);
  v12 = a6 + *(v9 + 28);

  return v14(v12, a5, v11);
}

void SignificantChange.Notification.with(significant:)(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1 & 1;
  if (*(v2 + 16) == (a1 & 1))
  {
    sub_1D14E6AE8(v2, a2, type metadata accessor for SignificantChange.Notification);
  }

  else
  {
    v6 = *v2;
    v5 = *(v2 + 8);
    v7 = type metadata accessor for SignificantChange.Notification(0);
    v8 = *(v7 + 24);
    v9 = sub_1D15A26A8();
    v10 = *(*(v9 - 8) + 16);
    v10(a2 + v8, v2 + v8, v9);
    v10(a2 + *(v7 + 28), v2 + *(v7 + 28), v9);
    *a2 = v6;
    *(a2 + 8) = v5;
    *(a2 + 16) = v4;
  }
}

uint64_t static SignificantChange.Notification.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1D15A4BA8() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for SignificantChange.Notification(0);
  if ((sub_1D15A2658() & 1) == 0)
  {
    return 0;
  }

  return sub_1D15A2658();
}

unint64_t sub_1D14E4D28()
{
  v1 = 0x696669746E656469;
  v2 = 0x6F69746365746564;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x636966696E676973;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D14E4DC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D14E71DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D14E4DE8(uint64_t a1)
{
  v2 = sub_1D14E681C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14E4E24(uint64_t a1)
{
  v2 = sub_1D14E681C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChange.Notification.encode(to:)(void *a1)
{
  sub_1D14E69BC(0, &qword_1EE0563D0, sub_1D14E681C, &type metadata for SignificantChange.Notification.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E681C();
  sub_1D15A4CE8();
  v13 = 0;
  sub_1D15A4AF8();
  if (!v1)
  {
    v12 = 1;
    sub_1D15A4B08();
    type metadata accessor for SignificantChange.Notification(0);
    v11 = 2;
    sub_1D15A26A8();
    sub_1D14E6134(&qword_1EE05B3F8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D15A4B38();
    v10 = 3;
    sub_1D15A4B38();
  }

  return (*(v5 + 8))(v7, v4);
}

void SignificantChange.Notification.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1D15A26A8();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  sub_1D14E69BC(0, &qword_1EE056460, sub_1D14E681C, &type metadata for SignificantChange.Notification.CodingKeys, MEMORY[0x1E69E6F48]);
  v34 = v8;
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for SignificantChange.Notification(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E681C();
  v33 = v10;
  v14 = v35;
  sub_1D15A4CD8();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v30;
    v16 = v31;
    v27 = v13;
    v17 = v32;
    v39 = 0;
    v18 = sub_1D15A4A38();
    v19 = v27;
    *v27 = v18;
    v19[1] = v20;
    v35 = v20;
    v38 = 1;
    *(v19 + 16) = sub_1D15A4A48() & 1;
    v37 = 2;
    v26 = sub_1D14E6134(&qword_1EE05B800, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1D15A4A78();
    v21 = v19 + *(v11 + 24);
    v25 = *(v16 + 32);
    v25(v21, v7, v17);
    v36 = 3;
    sub_1D15A4A78();
    (*(v15 + 8))(v33, v34);
    v22 = *(v11 + 28);
    v23 = v27;
    v25(v27 + v22, v29, v17);
    sub_1D14E6AE8(v23, v28, type metadata accessor for SignificantChange.Notification);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D14E7560(v23, type metadata accessor for SignificantChange.Notification);
  }
}

uint64_t sub_1D14E551C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v5 && (sub_1D15A4BA8() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (sub_1D15A2658() & 1) == 0)
  {
    return 0;
  }

  return sub_1D15A2658();
}

uint64_t SignificantChange.notification.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SignificantChange(0) + 24);

  return sub_1D14E6870(v3, a1);
}

uint64_t sub_1D14E563C()
{
  v1 = 0x7365676E616863;
  if (*v0 != 1)
  {
    v1 = 0x6163696669746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E696C65736162;
  }
}

uint64_t sub_1D14E56A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D14E735C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D14E56C8(uint64_t a1)
{
  v2 = sub_1D14E6904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14E5704(uint64_t a1)
{
  v2 = sub_1D14E6904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChange.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D14E69BC(0, &qword_1EE0563D8, sub_1D14E6904, &type metadata for SignificantChange.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E6904();
  sub_1D15A4CE8();
  v14 = 0;
  type metadata accessor for SignificantChange.Period(0);
  sub_1D14E6134(&qword_1EE058FE0, type metadata accessor for SignificantChange.Period, &protocol conformance descriptor for SignificantChange.Period);
  sub_1D15A4B38();
  if (!v2)
  {
    v11[1] = *(v3 + *(type metadata accessor for SignificantChange(0) + 20));
    v13 = 1;
    sub_1D14E6958(0, &qword_1EE056878, type metadata accessor for SignificantChange.Period, MEMORY[0x1E69E62F8]);
    sub_1D14E6A24(&qword_1EE056870, &qword_1EE058FE0, &protocol conformance descriptor for SignificantChange.Period, MEMORY[0x1E69E6300]);
    sub_1D15A4B38();
    v12 = 2;
    type metadata accessor for SignificantChange.Notification(0);
    sub_1D14E6134(&qword_1EE0590C8, type metadata accessor for SignificantChange.Notification, &protocol conformance descriptor for SignificantChange.Notification);
    sub_1D15A4AE8();
  }

  return (*(v7 + 8))(v9, v6);
}

void SignificantChange.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D14E6958(0, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v23 = type metadata accessor for SignificantChange.Period(0);
  MEMORY[0x1EEE9AC00](v23);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14E69BC(0, &qword_1EE056468, sub_1D14E6904, &type metadata for SignificantChange.CodingKeys, MEMORY[0x1E69E6F48]);
  v25 = v7;
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for SignificantChange(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E6904();
  v26 = v9;
  v13 = v27;
  sub_1D15A4CD8();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v22;
    v27 = v10;
    v15 = v12;
    v16 = a1;
    v31 = 0;
    sub_1D14E6134(&qword_1EE058FD8, type metadata accessor for SignificantChange.Period, &protocol conformance descriptor for SignificantChange.Period);
    v17 = v24;
    v18 = v25;
    sub_1D15A4A78();
    sub_1D14E764C(v17, v15, type metadata accessor for SignificantChange.Period);
    sub_1D14E6958(0, &qword_1EE056878, type metadata accessor for SignificantChange.Period, MEMORY[0x1E69E62F8]);
    v30 = 1;
    sub_1D14E6A24(&qword_1EE056868, &qword_1EE058FD8, &protocol conformance descriptor for SignificantChange.Period, MEMORY[0x1E69E6330]);
    sub_1D15A4A78();
    v19 = v27;
    *(v15 + *(v27 + 20)) = v28;
    type metadata accessor for SignificantChange.Notification(0);
    v29 = 2;
    sub_1D14E6134(&qword_1EE0590C0, type metadata accessor for SignificantChange.Notification, &protocol conformance descriptor for SignificantChange.Notification);
    v24 = v15;
    sub_1D15A4A28();
    (*(v14 + 8))(v26, v18);
    v20 = v24;
    sub_1D14E3BEC(v5, &v24[*(v19 + 24)]);
    sub_1D14E6AE8(v20, v21, type metadata accessor for SignificantChange);
    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_1D14E7560(v20, type metadata accessor for SignificantChange);
  }
}

BOOL _s19HealthVisualization17SignificantChangeV6PeriodV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D15A2238() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SignificantChange.Period(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    return v7 == 2;
  }

  if (v7 == 2)
  {
    return 0;
  }

  if (v6)
  {
    v9 = 0x6973616572636564;
  }

  else
  {
    v9 = 0x6973616572636E69;
  }

  if (v7)
  {
    v10 = 0x6973616572636564;
  }

  else
  {
    v10 = 0x6973616572636E69;
  }

  if (v9 != v10)
  {
    v11 = sub_1D15A4BA8();
    swift_bridgeObjectRelease_n();
    return (v11 & 1) != 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

unint64_t sub_1D14E608C()
{
  result = qword_1EE058FF8;
  if (!qword_1EE058FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058FF8);
  }

  return result;
}

unint64_t sub_1D14E60E0()
{
  result = qword_1EE059018[0];
  if (!qword_1EE059018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE059018);
  }

  return result;
}

uint64_t sub_1D14E6134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D14E617C()
{
  result = qword_1EE059008;
  if (!qword_1EE059008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE059008);
  }

  return result;
}

uint64_t _s19HealthVisualization17SignificantChangeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantChange.Notification(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14E6958(0, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  sub_1D14E74CC(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!_s19HealthVisualization17SignificantChangeV6PeriodV2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    return 0;
  }

  v15 = type metadata accessor for SignificantChange(0);
  if ((sub_1D1489344(*(a1 + *(v15 + 20)), *(a2 + *(v15 + 20))) & 1) == 0)
  {
    return 0;
  }

  v16 = *(v15 + 24);
  v17 = *(v12 + 48);
  sub_1D14E6870(a1 + v16, v14);
  sub_1D14E6870(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v17], 1, v4) == 1)
    {
      sub_1D14E75C0(v14);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1D14E6870(v14, v10);
  if (v18(&v14[v17], 1, v4) == 1)
  {
    sub_1D14E7560(v10, type metadata accessor for SignificantChange.Notification);
LABEL_8:
    sub_1D14E7560(v14, sub_1D14E74CC);
    return 0;
  }

  sub_1D14E764C(&v14[v17], v7, type metadata accessor for SignificantChange.Notification);
  v20 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
  if (v20 || (sub_1D15A4BA8()) && v10[16] == v7[16] && (sub_1D15A2658())
  {
    v21 = sub_1D15A2658();
    sub_1D14E7560(v7, type metadata accessor for SignificantChange.Notification);
    sub_1D14E7560(v10, type metadata accessor for SignificantChange.Notification);
    sub_1D14E75C0(v14);
    if (v21)
    {
      return 1;
    }
  }

  else
  {
    sub_1D14E7560(v7, type metadata accessor for SignificantChange.Notification);
    sub_1D14E7560(v10, type metadata accessor for SignificantChange.Notification);
    sub_1D14E75C0(v14);
  }

  return 0;
}

uint64_t sub_1D14E6548(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F69726570 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676E616863 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t _s19HealthVisualization17SignificantChangeV12NotificationV10identifier9eventDate9directionSS10Foundation0H0V_AC6PeriodV0D4TypeOtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_1D15A25F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  MEMORY[0x1D38884F0](v5);
  sub_1D14E6134(&qword_1EE0594B0, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
  sub_1D15A2688();
  (*(v4 + 8))(v7, v3);
  if (a2)
  {
    v8 = 0x6973616572636564;
  }

  else
  {
    v8 = 0x6973616572636E69;
  }

  MEMORY[0x1D388A330](95, 0xE100000000000000);
  MEMORY[0x1D388A330](v8, 0xEA0000000000676ELL);

  return v10;
}

unint64_t sub_1D14E681C()
{
  result = qword_1EE0590E0;
  if (!qword_1EE0590E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0590E0);
  }

  return result;
}

uint64_t sub_1D14E6870(uint64_t a1, uint64_t a2)
{
  sub_1D14E6958(0, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D14E6904()
{
  result = qword_1EE0590F8[0];
  if (!qword_1EE0590F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0590F8);
  }

  return result;
}

void sub_1D14E6958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D14E69BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D14E6A24(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D14E6958(255, &qword_1EE056878, type metadata accessor for SignificantChange.Period, MEMORY[0x1E69E62F8]);
    sub_1D14E6134(a2, type metadata accessor for SignificantChange.Period, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D14E6AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D14E6B54()
{
  result = qword_1EC6308D8;
  if (!qword_1EC6308D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6308D8);
  }

  return result;
}

void sub_1D14E6BD0(uint64_t a1)
{
  type metadata accessor for SignificantChange.Period(319);
  if (v1 <= 0x3F)
  {
    sub_1D14E6958(319, &qword_1EE056878, type metadata accessor for SignificantChange.Period, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D14E6958(319, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D14E6CF4(uint64_t a1)
{
  sub_1D15A22A8();
  if (v1 <= 0x3F)
  {
    sub_1D14E6D88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D14E6D88()
{
  if (!qword_1EE059000)
  {
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059000);
    }
  }
}

uint64_t sub_1D14E6E10(uint64_t a1)
{
  result = sub_1D15A26A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D14E6EC8()
{
  result = qword_1EC6308E0;
  if (!qword_1EC6308E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6308E0);
  }

  return result;
}

unint64_t sub_1D14E6F20()
{
  result = qword_1EC6308E8;
  if (!qword_1EC6308E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6308E8);
  }

  return result;
}

unint64_t sub_1D14E6F78()
{
  result = qword_1EC6308F0;
  if (!qword_1EC6308F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6308F0);
  }

  return result;
}

unint64_t sub_1D14E6FD0()
{
  result = qword_1EE0590E8;
  if (!qword_1EE0590E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0590E8);
  }

  return result;
}

unint64_t sub_1D14E7028()
{
  result = qword_1EE0590F0;
  if (!qword_1EE0590F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0590F0);
  }

  return result;
}

unint64_t sub_1D14E7080()
{
  result = qword_1EE0590D0;
  if (!qword_1EE0590D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0590D0);
  }

  return result;
}

unint64_t sub_1D14E70D8()
{
  result = qword_1EE0590D8;
  if (!qword_1EE0590D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0590D8);
  }

  return result;
}

unint64_t sub_1D14E7130()
{
  result = qword_1EE058FE8;
  if (!qword_1EE058FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058FE8);
  }

  return result;
}

unint64_t sub_1D14E7188()
{
  result = qword_1EE058FF0;
  if (!qword_1EE058FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058FF0);
  }

  return result;
}

uint64_t sub_1D14E71DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636966696E676973 && a2 == 0xEB00000000746E61 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746365746564 && a2 == 0xED0000657461446ELL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D15C00E0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D14E735C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E696C65736162 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365676E616863 && a2 == 0xE700000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

unint64_t sub_1D14E7478()
{
  result = qword_1EE059010;
  if (!qword_1EE059010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE059010);
  }

  return result;
}

void sub_1D14E74CC(uint64_t a1)
{
  if (!qword_1EC6308F8)
  {
    sub_1D14E6958(255, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC6308F8);
    }
  }
}

uint64_t sub_1D14E7560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D14E75C0(uint64_t a1)
{
  sub_1D14E6958(0, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D14E764C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14E76DC()
{
  v0 = sub_1D15A45D8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1D14E7DEC();
  sub_1D15A45C8();
  result = sub_1D15A45E8();
  qword_1EC630900 = result;
  return result;
}

uint64_t sub_1D14E78C8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_1D14E7DEC();
  result = sub_1D15A45F8();
  *a5 = result;
  return result;
}

id sub_1D14E7954(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_1D14E79D0()
{
  v0 = sub_1D15A3268();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1D14E7B6C(0);
  v2 = v1;
  __swift_allocate_value_buffer(v1, qword_1EE056CC0);
  __swift_project_value_buffer(v2, qword_1EE056CC0);
  sub_1D15A3228();
  sub_1D15A3178();
  sub_1D14E7C5C(&qword_1EE059340, MEMORY[0x1E69A38C8]);
  sub_1D14E7C5C(&qword_1EE059350, MEMORY[0x1E69A38B8]);
  sub_1D14E7C5C(&qword_1EE059348, MEMORY[0x1E69A38C0]);
  return sub_1D15A3158();
}

void sub_1D14E7B6C(uint64_t a1)
{
  if (!qword_1EE059358)
  {
    sub_1D15A3178();
    sub_1D14E7C5C(&qword_1EE059340, MEMORY[0x1E69A38C8]);
    sub_1D14E7C5C(&qword_1EE059350, MEMORY[0x1E69A38B8]);
    sub_1D14E7C5C(&qword_1EE059348, MEMORY[0x1E69A38C0]);
    v1 = sub_1D15A3168();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE059358);
    }
  }
}

uint64_t sub_1D14E7C5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D15A3178();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D14E7CA0()
{
  v0 = sub_1D15A3268();
  __swift_allocate_value_buffer(v0, qword_1EC630910);
  __swift_project_value_buffer(v0, qword_1EC630910);
  return sub_1D15A3258();
}

uint64_t sub_1D14E7D48@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_1D14E7DEC()
{
  result = qword_1EE05ACC8;
  if (!qword_1EE05ACC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE05ACC8);
  }

  return result;
}

id sub_1D14E7E38(uint64_t a1, uint64_t a2, id a3)
{
  v5 = [a3 displayTypeController];
  if (v5 || (v5 = [objc_opt_self() sharedInstance]) != 0)
  {
    v6 = v5;
    v3 = objc_opt_self();
    v7 = sub_1D15A3EF8();
    v4 = &selRef_bundleForClass_;
    v8 = [v3 _typeWithIdentifier_];

    v9 = [v6 displayTypeForObjectType_];
    if (v9)
    {
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1D15A47D8();

  v11 = sub_1D15A3EF8();
  [v3 v4[124]];

  sub_1D14C867C(0);
  v12 = sub_1D15A3F68();
  MEMORY[0x1D388A330](v12);

  result = sub_1D15A4908();
  __break(1u);
  return result;
}

id sub_1D14E8008()
{
  v1 = sub_1D14E7E38(*v0, *(v0 + 8), *(v0 + 16));
  v2 = [v1 categoryIdentifier];

  result = [objc_opt_self() categoryWithID_];
  if (!result)
  {
    result = sub_1D15A4908();
    __break(1u);
  }

  return result;
}

void __swiftcall MostRecentSampleQueryConfiguration.init(valueOverrideLocalizedStringKey:valueOverrideLocalizedStringTable:forceDayGranularity:)(HealthVisualization::MostRecentSampleQueryConfiguration *__return_ptr retstr, Swift::String_optional valueOverrideLocalizedStringKey, Swift::String_optional valueOverrideLocalizedStringTable, Swift::Bool forceDayGranularity)
{
  retstr->valueOverrideLocalizedStringKey = valueOverrideLocalizedStringKey;
  retstr->valueOverrideLocalizedStringTable = valueOverrideLocalizedStringTable;
  retstr->forceDayGranularity = forceDayGranularity;
}

uint64_t MostRecentSampleQueryConfiguration.valueOverrideLocalizedStringKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MostRecentSampleQueryConfiguration.valueOverrideLocalizedStringTable.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MostRecentSampleQueryConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D14E8730(0, &qword_1EE05AC50, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E8340();
  sub_1D15A4CD8();
  if (!v2)
  {
    v22 = 0;
    v10 = sub_1D15A4A38();
    v18 = v11;
    v19 = v10;
    v21 = 1;
    v12 = sub_1D15A4A38();
    v14 = v13;
    v20 = 2;
    v15 = sub_1D15A4A48();
    (*(v7 + 8))(v9, v6);
    v16 = v18;
    *a2 = v19;
    *(a2 + 8) = v16;
    *(a2 + 16) = v12;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D14E8340()
{
  result = qword_1EE05AF78;
  if (!qword_1EE05AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AF78);
  }

  return result;
}

unint64_t sub_1D14E8398()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_1D14E83F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D14E88BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D14E8418(uint64_t a1)
{
  v2 = sub_1D14E8340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14E8454(uint64_t a1)
{
  v2 = sub_1D14E8340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MostRecentSampleQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D14E8730(0, &qword_1EE056308, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  v12 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E8340();
  sub_1D15A4CE8();
  v15 = 0;
  v9 = v11[3];
  sub_1D15A4AA8();
  if (!v9)
  {
    v14 = 1;
    sub_1D15A4AA8();
    v13 = 2;
    sub_1D15A4B08();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t _s19HealthVisualization34MostRecentSampleQueryConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_1D15A4BA8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (v9 && (v4 == v8 && v5 == v9 || (sub_1D15A4BA8() & 1) != 0))
    {
      return v6 ^ v10 ^ 1u;
    }
  }

  else if (!v9)
  {
    return v6 ^ v10 ^ 1u;
  }

  return 0;
}

void sub_1D14E8730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D14E8340();
    v7 = a3(a1, &type metadata for MostRecentSampleQueryConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D14E87B8()
{
  result = qword_1EC630928;
  if (!qword_1EC630928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630928);
  }

  return result;
}

unint64_t sub_1D14E8810()
{
  result = qword_1EE05AF68;
  if (!qword_1EE05AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AF68);
  }

  return result;
}

unint64_t sub_1D14E8868()
{
  result = qword_1EE05AF70;
  if (!qword_1EE05AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AF70);
  }

  return result;
}

uint64_t sub_1D14E88BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001FLL && 0x80000001D15BE9A0 == a2;
  if (v3 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001D15BE9C0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D15C01C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t CoreChartTrendDataElement.init(date:value:value2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v7 = a5.n128_u64[0];
  v10 = type metadata accessor for CoreChartTrendDataElement(0);
  v11 = a4 + *(v10 + 24);
  v12 = sub_1D15A26A8();
  result = (*(*(v12 - 8) + 32))(a4, a1, v12);
  *(a4 + *(v10 + 20)) = v7;
  *v11 = a2;
  *(v11 + 8) = a3 & 1;
  return result;
}

int *CoreChartTrendLineViewModel.init(dateInterval:average:xAxisLabel:lineLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14 = sub_1D15A22A8();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  result = type metadata accessor for CoreChartTrendLineViewModel(0);
  *(a6 + result[5]) = a7;
  v16 = (a6 + result[6]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a6 + result[7]);
  *v17 = a4;
  v17[1] = a5;
  return result;
}

uint64_t CoreChartTrendViewModel.init(diagramStyle:hkType:coveredDateRange:baseTrendLine:changeTrendLine:dataSeries:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for CoreChartTrendViewModel(0);
  v15 = v14[8];
  v16 = type metadata accessor for CoreChartTrendLineViewModel(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  sub_1D14F1A04(a4, a7 + v14[7], type metadata accessor for CoreChartTrendLineViewModel);
  result = sub_1D14EEC44(a5, a7 + v15, sub_1D14E8CA0);
  *(a7 + v14[9]) = a6;
  return result;
}

uint64_t CoreChartTrendDiagram.init(dataViewModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x4000000000000000;
  v4 = type metadata accessor for CoreChartTrendDiagram(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_1D14EEB54(0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = (a2 + v4[7]);
  sub_1D15A2E68();
  sub_1D14F1CB0(&qword_1EC630648, MEMORY[0x1E69A3650], MEMORY[0x1E69A3648]);
  *v7 = sub_1D15A3788();
  v7[1] = v8;
  v9 = v4[9];
  *(a2 + v9) = 0;
  v10 = v4[8];
  sub_1D14F21C8(a1, a2 + v10, type metadata accessor for CoreChartTrendViewModel);
  if (!*(a2 + v10))
  {
    *(a2 + v9) = 1;
  }

  sub_1D1453BA0(0, &qword_1EE05ACF0, 0x1E69DB878);
  v11 = sub_1D15A4538();
  [v11 lineHeight];
  v13 = v12;

  result = sub_1D14F2078(a1, type metadata accessor for CoreChartTrendViewModel);
  *(a2 + v4[10]) = v13;
  return result;
}

uint64_t CoreChartTrendDataElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A26A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D14E8F68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A26A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D14E91C0@<X0>(void *a1@<X8>)
{
  v3 = sub_1D15A3878();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EEB54(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CoreChartTrendDiagram(0);
  sub_1D14F21C8(v1 + *(v10 + 20), v9, sub_1D14EEB54);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D15A3668();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1D15A4328();
    v14 = sub_1D15A39E8();
    sub_1D15A3198(v13, &dword_1D1446000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1D15A3868();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_1D14E93BC()
{
  v1 = sub_1D15A3878();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for CoreChartTrendDiagram(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {

    return v6;
  }

  else
  {
    v11[0] = *v5;

    v8 = sub_1D15A4328();
    v9 = sub_1D15A39E8();
    sub_1D15A3198(v8, &dword_1D1446000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1D15A3868();
    swift_getAtKeyPath();
    v10 = sub_1D14F1AA8(v11[0], 0);
    (*(v2 + 8))(v4, v1, v10);
    return v11[1];
  }
}

uint64_t sub_1D14E9538()
{
  if (qword_1EE059700 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE068250;
  result = sub_1D15A3CC8();
  qword_1EE068218 = result;
  return result;
}

uint64_t sub_1D14E95B8()
{
  if (qword_1EE059700 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE068250;
  result = sub_1D15A3CC8();
  qword_1EE068220 = result;
  return result;
}

void CoreChartTrendDiagram.body.getter(uint64_t a1@<X8>)
{
  v49 = a1;
  sub_1D149B16C(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EECAC(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F1F30(0, &qword_1EC630A88, sub_1D14F0C70, sub_1D14F0F28, MEMORY[0x1E697E830]);
  v10 = v9;
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = objc_opt_self();
  v14 = sub_1D14E93BC();
  v15 = [v13 sharedInstanceForHealthStore_];

  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v1 + *(type metadata accessor for CoreChartTrendDiagram(0) + 32);
  v17 = [v15 displayTypeForObjectType_];

  if (!v17)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v18 = [v17 displayCategory];

  v19 = [v18 color];
  if (!v19)
  {
    v20 = [objc_opt_self() systemGrayColor];
  }

  v21 = sub_1D15A3C38();
  if (*(*(v16 + *(type metadata accessor for CoreChartTrendViewModel(0) + 36)) + 16))
  {
    *v8 = sub_1D15A38E8();
    *(v8 + 1) = 0x4020000000000000;
    v8[16] = 0;
    sub_1D14F0F5C(0);
    sub_1D14E9BD8(v1, v21, &v8[*(v22 + 44)]);
    v23 = sub_1D15A3C78();
    v24 = sub_1D15A3A18();
    sub_1D14EECF4(0);
    v26 = &v8[*(v25 + 36)];
    *v26 = v23;
    v26[8] = v24;
    v27 = &v8[*(v6 + 36)];
    v28 = *(sub_1D15A3758() + 20);
    v29 = *MEMORY[0x1E697F468];
    v30 = sub_1D15A38C8();
    (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
    __asm { FMOV            V0.2D, #4.0 }

    *v27 = _Q0;
    sub_1D14AD5EC(0);
    *&v27[*(v36 + 36)] = 256;
    v37 = *MEMORY[0x1E697E728];
    v38 = sub_1D15A36F8();
    (*(*(v38 - 8) + 104))(v4, v37, v38);
    sub_1D14F1CB0(&qword_1EE056BF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
    if (sub_1D15A3EE8())
    {
      sub_1D14F0D44();
      sub_1D14F1CB0(&qword_1EE056488, sub_1D149B16C, MEMORY[0x1E69E6ED8]);
      sub_1D15A3BF8();

      sub_1D14F2078(v4, sub_1D149B16C);
      sub_1D14F1C24(v8, sub_1D14EECAC);
      KeyPath = swift_getKeyPath();
      v40 = &v12[*(v10 + 36)];
      sub_1D14F0F28(0);
      v42 = *(v41 + 28);
      v43 = *MEMORY[0x1E697E7D0];
      v44 = sub_1D15A3708();
      (*(*(v44 - 8) + 104))(v40 + v42, v43, v44);
      *v40 = KeyPath;
      v45 = v49;
      sub_1D1462F6C(v12, v49);
      (*(v48 + 56))(v45, 0, 1, v10);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v46 = v49;
  v47 = *(v48 + 56);

  v47(v46, 1, 1, v10);
}

double sub_1D14E9BD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a1;
  v94 = a2;
  v92 = a3;
  sub_1D14F1A6C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D15A34B8();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v85 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for CoreChartTrendDiagram(0);
  v70 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v72 = v7;
  v74 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D15A34A8();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v81 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EF1EC(0, v9);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EF138(0, v14);
  v69 = v17;
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EF04C(0, v19);
  v76 = *(v22 - 8);
  v77 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EEEF8(0, v23);
  v78 = *(v26 - 8);
  v79 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v75 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F10B4(0, &qword_1EC630958, sub_1D14EEEF8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  v71 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v91 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v73 = &v69 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v86 = &v69 - v33;
  sub_1D15A4148();
  v90 = sub_1D15A4138();
  sub_1D15A4128();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v84 = &v69;
  v35 = MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v36 = v93;
  sub_1D14EF250(0, v35);
  sub_1D14F0340(v37);
  sub_1D15A3508();
  v38 = sub_1D14F1CB0(&qword_1EC630A70, sub_1D14EF1EC, MEMORY[0x1E695B218]);
  sub_1D15A3B58();
  (*(v13 + 8))(v16, v12);
  *&v108 = v12;
  *(&v108 + 1) = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v69;
  sub_1D15A3B68();
  (*(v18 + 8))(v21, v40);
  v41 = v74;
  sub_1D14F21C8(v36, v74, type metadata accessor for CoreChartTrendDiagram);
  v42 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v43 = swift_allocObject();
  sub_1D14F1A04(v41, v43 + v42, type metadata accessor for CoreChartTrendDiagram);
  v44 = v81;
  sub_1D15A32C8();

  v45 = v85;
  sub_1D15A3498();
  v46 = sub_1D15A3628();
  v47 = v89;
  (*(*(v46 - 8) + 56))(v89, 1, 1, v46);
  *&v108 = v40;
  *(&v108 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v75;
  v49 = v77;
  v50 = v83;
  v51 = v88;
  sub_1D15A3B98();
  sub_1D14F2078(v47, sub_1D14F1A6C);
  (*(v87 + 8))(v45, v51);
  (*(v82 + 8))(v44, v50);
  (*(v76 + 8))(v25, v49);
  sub_1D15A3D48();
  sub_1D15A3778();
  v52 = v73;
  (*(v78 + 32))(v73, v48, v79);
  v53 = (v52 + *(v71 + 36));
  v54 = v113;
  v53[4] = v112;
  v53[5] = v54;
  v53[6] = v114;
  v55 = v109;
  *v53 = v108;
  v53[1] = v55;
  v56 = v111;
  v53[2] = v110;
  v53[3] = v56;
  v57 = v86;
  sub_1D1463EA0(v52, v86);
  v58 = sub_1D15A3898();
  v96 = 1;
  sub_1D14EDCFC(v93, v94, &v105);
  v99 = *&v106[16];
  v100 = *&v106[32];
  v97 = v105;
  v98 = *v106;
  v102[2] = *&v106[16];
  v102[3] = *&v106[32];
  v102[4] = *&v106[48];
  v102[1] = *v106;
  v101 = *&v106[48];
  v102[0] = v105;
  sub_1D14F21C8(&v97, &v103, sub_1D14F0BA8);
  sub_1D14F2078(v102, sub_1D14F0BA8);
  *&v95[23] = v98;
  *&v95[39] = v99;
  *&v95[55] = v100;
  *&v95[71] = v101;
  *&v95[7] = v97;
  LOBYTE(v51) = v96;
  v59 = v91;
  sub_1D1463F3C(v57, v91);
  v60 = v92;
  sub_1D1463F3C(v59, v92);
  sub_1D14EEE50(0);
  v62 = v60 + *(v61 + 48);
  v103 = v58;
  v104[0] = v51;
  *&v104[1] = *v95;
  *&v104[17] = *&v95[16];
  *&v104[65] = *&v95[64];
  *&v104[80] = *&v95[79];
  *&v104[49] = *&v95[48];
  *&v104[33] = *&v95[32];
  v63 = *v104;
  *v62 = v58;
  *(v62 + 16) = v63;
  v64 = *&v104[16];
  v65 = *&v104[32];
  v66 = *&v104[48];
  v67 = *&v104[64];
  *(v62 + 96) = *&v104[80];
  *(v62 + 64) = v66;
  *(v62 + 80) = v67;
  *(v62 + 32) = v64;
  *(v62 + 48) = v65;
  sub_1D14F21C8(&v103, &v105, sub_1D14F0B14);
  sub_1D1463FD8(v57);
  *&v106[33] = *&v95[32];
  *&v106[49] = *&v95[48];
  *v107 = *&v95[64];
  *&v106[1] = *v95;
  v105 = v58;
  v106[0] = v51;
  *&v107[15] = *&v95[79];
  *&v106[17] = *&v95[16];
  sub_1D14F2078(&v105, sub_1D14F0B14);
  sub_1D1463FD8(v59);

  return result;
}

void sub_1D14EA694(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v243 = a2;
  v250 = a1;
  v240 = a3;
  v259 = type metadata accessor for CoreChartTrendLineViewModel(0);
  v257 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v222 = &v201 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F030C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v239 = &v201 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v238 = &v201 - v7;
  v254 = sub_1D15A2838();
  v258 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v221 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v232 = &v201 - v10;
  v253 = sub_1D15A26A8();
  v256 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v234 = &v201 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v218 = &v201 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v248 = &v201 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v247 = &v201 - v17;
  v242 = type metadata accessor for CoreChartTrendLineView(0);
  MEMORY[0x1EEE9AC00](v242);
  v220 = &v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v229 = &v201 - v20;
  sub_1D14EFA40(0);
  v237 = v21;
  v236 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v235 = &v201 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v219 = &v201 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v252 = &v201 - v26;
  v255 = sub_1D15A3668();
  v249 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v231 = &v201 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v230 = &v201 - v29;
  sub_1D14F0FC4(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v233 = (&v201 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v251 = (&v201 - v33);
  sub_1D14E8CA0(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v226 = &v201 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v225 = &v201 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v241 = &v201 - v39;
  v208 = type metadata accessor for CoreChartTrendDistributionSeries(0);
  v209 = *(v208 - 8);
  v40 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v210 = &v201 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v213 = &v201 - v42;
  sub_1D1475DA0(0);
  v214 = v43;
  v212 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v211 = &v201 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for CoreChartTrendLineSeries(0);
  v205 = *(v202 - 8);
  v45 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v207 = &v201 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v224 = &v201 - v47;
  sub_1D14EF4A0(0);
  v217 = v48;
  v216 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v215 = &v201 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EF36C(0);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v244 = &v201 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for CoreChartTrendViewModel(0);
  MEMORY[0x1EEE9AC00](v245);
  v53 = &v201 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v201 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v201 - v58;
  v60 = type metadata accessor for CoreChartTrendBarSeries(0);
  v201 = *(v60 - 8);
  v61 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v201 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v223 = &v201 - v64;
  sub_1D14EF3B4(0);
  v206 = v65;
  v204 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v203 = &v201 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EF2D0(0);
  MEMORY[0x1EEE9AC00](v67 - 8);
  v228 = &v201 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v246 = &v201 - v70;
  sub_1D15A4148();
  v227 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v260 = (v250 + *(type metadata accessor for CoreChartTrendDiagram(0) + 32));
  v71 = *v260;
  if (*v260 == 3)
  {
    sub_1D14F21C8(v260, v53, type metadata accessor for CoreChartTrendViewModel);
    v79 = v213;
    sub_1D14F21C8(v53, v213, type metadata accessor for CoreChartTrendViewModel);
    v80 = v53[16];
    sub_1D14F2078(v53, type metadata accessor for CoreChartTrendViewModel);
    v72 = v245;
    if ((v80 - 2) > 3u)
    {
      v81 = MEMORY[0x1E6969A48];
    }

    else
    {
      v81 = qword_1E83E6A40[(v80 - 2)];
    }

    (*(v258 + 104))(&v79[*(v208 + 20)], *v81, v254);
    v261 = *&v79[v72[9]];
    v107 = v210;
    sub_1D14F21C8(v79, v210, type metadata accessor for CoreChartTrendDistributionSeries);
    v108 = (*(v209 + 80) + 16) & ~*(v209 + 80);
    v109 = swift_allocObject();
    sub_1D14F1A04(v107, v109 + v108, type metadata accessor for CoreChartTrendDistributionSeries);
    sub_1D14EF3D4(0);
    sub_1D14EEB88(0, &qword_1EC62FFD0, sub_1D147598C, MEMORY[0x1E69E6720]);
    sub_1D14F1CB0(&qword_1EC62FFE8, sub_1D14EF3D4, MEMORY[0x1E69E6338]);
    sub_1D1475B60();
    sub_1D14F1CB0(&qword_1EC62FFF8, type metadata accessor for CoreChartTrendDataElement, &protocol conformance descriptor for CoreChartTrendDataElement);

    v110 = v211;
    sub_1D15A3D28();
    sub_1D14F2078(v79, type metadata accessor for CoreChartTrendDistributionSeries);
    v111 = v246;
    (*(v212 + 32))(v246, v110, v214);
    sub_1D14F1F30(0, &qword_1EC630AF8, sub_1D14EF36C, sub_1D1475DA0, MEMORY[0x1E695B1A0]);
    swift_storeEnumTagMultiPayload();
    sub_1D14F1F30(0, &qword_1EC630990, sub_1D14EF36C, sub_1D1475DA0, MEMORY[0x1E695B1A8]);
    (*(*(v112 - 8) + 56))(v111, 0, 1, v112);
    goto LABEL_17;
  }

  v72 = v245;
  if (v71 != 1)
  {
    if (!v71)
    {
      sub_1D14F21C8(v260, v59, type metadata accessor for CoreChartTrendViewModel);
      sub_1D14F21C8(v59, v223, type metadata accessor for CoreChartTrendViewModel);
      v73 = v59[16];
      sub_1D14F2078(v59, type metadata accessor for CoreChartTrendViewModel);
      v74 = *(v60 + 20);
      v75 = v72;
      if ((v73 - 2) > 3u)
      {
        v76 = MEMORY[0x1E6969A48];
      }

      else
      {
        v76 = qword_1E83E6A40[(v73 - 2)];
      }

      v106 = v251;
      v113 = v223;
      (*(v258 + 104))(v223 + v74, *v76, v254);
      v265 = *(v113 + v75[9]);
      sub_1D14F21C8(v113, v62, type metadata accessor for CoreChartTrendBarSeries);
      v114 = (*(v201 + 80) + 16) & ~*(v201 + 80);
      v115 = swift_allocObject();
      sub_1D14F1A04(v62, v115 + v114, type metadata accessor for CoreChartTrendBarSeries);
      sub_1D14EF3D4(0);
      sub_1D14EF408(0);
      sub_1D14F1CB0(&qword_1EC62FFE8, sub_1D14EF3D4, MEMORY[0x1E69E6338]);
      v116 = sub_1D15A3538();

      v261 = v116;
      v262 = MEMORY[0x1E69815C0];
      v263 = MEMORY[0x1E695B228];
      v264 = MEMORY[0x1E6981568];
      swift_getOpaqueTypeConformance2();
      sub_1D14F1CB0(&qword_1EC62FFF8, type metadata accessor for CoreChartTrendDataElement, &protocol conformance descriptor for CoreChartTrendDataElement);
      v117 = v203;
      sub_1D15A3D28();
      v118 = v113;
      v72 = v75;
      sub_1D14F2078(v118, type metadata accessor for CoreChartTrendBarSeries);
      v119 = v244;
      (*(v204 + 32))(v244, v117, v206);
      v120 = MEMORY[0x1E695B1A0];
      sub_1D14F1F30(0, &qword_1EC630B00, sub_1D14EF3B4, sub_1D14EF4A0, MEMORY[0x1E695B1A0]);
      swift_storeEnumTagMultiPayload();
      v121 = v246;
      sub_1D14F2160(v119, v246, sub_1D14EF36C);
      sub_1D14F1F30(0, &qword_1EC630AF8, sub_1D14EF36C, sub_1D1475DA0, v120);
      swift_storeEnumTagMultiPayload();
      sub_1D14F1F30(0, &qword_1EC630990, sub_1D14EF36C, sub_1D1475DA0, MEMORY[0x1E695B1A8]);
      (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
      goto LABEL_20;
    }

    sub_1D14F1F30(0, &qword_1EC630990, sub_1D14EF36C, sub_1D1475DA0, MEMORY[0x1E695B1A8]);
    (*(*(v82 - 8) + 56))(v246, 1, 1, v82);
LABEL_17:
    v106 = v251;
    goto LABEL_20;
  }

  sub_1D14F21C8(v260, v56, type metadata accessor for CoreChartTrendViewModel);
  sub_1D14F21C8(v56, v224, type metadata accessor for CoreChartTrendViewModel);
  v77 = v56[16];
  sub_1D14F2078(v56, type metadata accessor for CoreChartTrendViewModel);
  if ((v77 - 2) > 3u)
  {
    v78 = MEMORY[0x1E6969A48];
  }

  else
  {
    v78 = qword_1E83E6A40[(v77 - 2)];
  }

  v83 = v224;
  (*(v258 + 104))(v224 + *(v202 + 20), *v78, v254);
  v265 = *(v83 + v72[9]);
  v84 = v207;
  sub_1D14F21C8(v83, v207, type metadata accessor for CoreChartTrendLineSeries);
  v85 = (*(v205 + 80) + 16) & ~*(v205 + 80);
  v86 = swift_allocObject();
  sub_1D14F1A04(v84, v86 + v85, type metadata accessor for CoreChartTrendLineSeries);
  sub_1D14EF3D4(0);
  v223 = v87;
  sub_1D14EF5C4(0);
  v214 = v88;
  sub_1D14F1CB0(&qword_1EC62FFE8, sub_1D14EF3D4, MEMORY[0x1E69E6338]);
  sub_1D14EF71C(255);
  v90 = v89;
  sub_1D14EF830(255);
  v92 = v91;
  v93 = sub_1D15A35A8();
  sub_1D14EF90C(255);
  v95 = v94;
  v96 = sub_1D14EF998();
  v97 = sub_1D14EF9EC();

  v261 = MEMORY[0x1E69817E8];
  v262 = v96;
  v72 = v245;
  v263 = v97;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v261 = v93;
  v262 = v95;
  v263 = MEMORY[0x1E695B2A0];
  v264 = OpaqueTypeConformance2;
  v99 = swift_getOpaqueTypeConformance2();
  v261 = v92;
  v262 = v99;
  v100 = swift_getOpaqueTypeConformance2();
  v261 = v90;
  v262 = MEMORY[0x1E69815C0];
  v263 = v100;
  v264 = MEMORY[0x1E6981568];
  swift_getOpaqueTypeConformance2();
  sub_1D14F1CB0(&qword_1EC62FFF8, type metadata accessor for CoreChartTrendDataElement, &protocol conformance descriptor for CoreChartTrendDataElement);
  v101 = v215;
  sub_1D15A3D28();
  sub_1D14F2078(v83, type metadata accessor for CoreChartTrendLineSeries);
  v102 = v244;
  v216[4](v244, v101, v217);
  v103 = MEMORY[0x1E695B1A0];
  sub_1D14F1F30(0, &qword_1EC630B00, sub_1D14EF3B4, sub_1D14EF4A0, MEMORY[0x1E695B1A0]);
  swift_storeEnumTagMultiPayload();
  v104 = v246;
  sub_1D14F2160(v102, v246, sub_1D14EF36C);
  sub_1D14F1F30(0, &qword_1EC630AF8, sub_1D14EF36C, sub_1D1475DA0, v103);
  swift_storeEnumTagMultiPayload();
  sub_1D14F1F30(0, &qword_1EC630990, sub_1D14EF36C, sub_1D1475DA0, MEMORY[0x1E695B1A8]);
  (*(*(v105 - 8) + 56))(v104, 0, 1, v105);
  v106 = v251;
LABEL_20:
  v245 = v72[8];
  v123 = v241;
  sub_1D14F21C8(v260 + v245, v241, sub_1D14E8CA0);
  v124 = v257 + 48;
  v244 = *(v257 + 48);
  v125 = (v244)(v123, 1, v259);
  sub_1D14F2078(v123, sub_1D14E8CA0);
  v126 = v243;
  if (v125 != 1)
  {
    if (qword_1EE058CB8 != -1)
    {
      swift_once();
    }

    v126 = qword_1EE068220;
  }

  v241 = v126;

  v127 = v225;
  sub_1D14F21C8(v260 + v245, v225, sub_1D14E8CA0);
  v128 = (v244)(v127, 1, v259);
  sub_1D14F2078(v127, sub_1D14E8CA0);
  if (v128 == 1 && (v129 = v230, sub_1D14E91C0(v230), v130 = v249, v131 = v231, v132 = v255, (*(v249 + 104))(v231, *MEMORY[0x1E697DBB8], v255), v133 = sub_1D15A3658(), v134 = *(v130 + 8), v134(v131, v132), v134(v129, v132), (v133 & 1) == 0))
  {
    v135 = 1;
  }

  else
  {
    sub_1D14E91C0(v106);
    v135 = 0;
  }

  v136 = *(v249 + 56);
  v217 = v249 + 56;
  v216 = v136;
  (v136)(v106, v135, 1, v255);
  v137 = v260;
  v138 = v260 + v72[7];
  sub_1D15A2288();
  sub_1D15A2258();
  v139 = *(v137 + 16) - 2;
  v140 = (*(v137 + 16) - 2);
  v257 = v124;
  v215 = v139;
  if (v140 > 3)
  {
    v141 = MEMORY[0x1E6969A48];
  }

  else
  {
    v141 = qword_1E83E6A40[v139];
  }

  v142 = *v141;
  v143 = v258;
  v144 = *(v258 + 104);
  v145 = v232;
  v146 = v254;
  v214 = v258 + 104;
  v213 = v144;
  (v144)(v232, v142, v254);
  v225 = sub_1D15A3D58();
  v224 = v147;
  v148 = v259;
  v149 = *&v138[*(v259 + 20)];
  v150 = &v138[*(v259 + 28)];
  v151 = v150[1];
  v223 = *v150;
  v152 = v242;
  v153 = v229;
  sub_1D14F21C8(v106, &v229[*(v242 + 44)], sub_1D14F0FC4);
  v155 = v256 + 32;
  v154 = *(v256 + 32);
  v156 = v253;
  v154(v153, v247, v253);
  v157 = v153 + v152[5];
  v158 = v248;
  v256 = v155;
  v248 = v154;
  v154(v157, v158, v156);
  v159 = *(v143 + 32);
  v160 = v153 + v152[6];
  v258 = v143 + 32;
  v159(v160, v145, v146);
  v161 = (v153 + v152[7]);
  v162 = v224;
  *v161 = v225;
  v161[1] = v162;
  *(v153 + v152[8]) = v149;
  v163 = (v153 + v152[9]);
  *v163 = v223;
  v163[1] = v151;
  *(v153 + v152[10]) = v241;

  CoreChartTrendLineView.averageRuleAndLabel.getter(v252);
  sub_1D14F2078(v153, type metadata accessor for CoreChartTrendLineView);
  v164 = v226;
  sub_1D14F21C8(v260 + v245, v226, sub_1D14E8CA0);
  if ((v244)(v164, 1, v148) == 1)
  {
    sub_1D14F2078(v164, sub_1D14E8CA0);
    v165 = 1;
    v166 = v238;
    v167 = v237;
    v168 = v236;
  }

  else
  {
    v260 = v159;
    v169 = v222;
    sub_1D14F1A04(v164, v222, type metadata accessor for CoreChartTrendLineViewModel);
    v170 = v230;
    sub_1D14E91C0(v230);
    v171 = v249;
    v172 = v231;
    v173 = v255;
    (*(v249 + 104))(v231, *MEMORY[0x1E697DBB8], v255);
    v174 = sub_1D15A3658();
    v175 = *(v171 + 8);
    v175(v172, v173);
    v175(v170, v173);
    v168 = v236;
    if (v174)
    {
      v176 = v233;
      sub_1D14E91C0(v233);
      v177 = 0;
      v178 = v218;
    }

    else
    {
      v177 = 1;
      v178 = v218;
      v176 = v233;
    }

    (v216)(v176, v177, 1, v255);
    sub_1D15A2288();
    sub_1D15A2258();
    if (v215 > 3u)
    {
      v179 = MEMORY[0x1E6969A48];
    }

    else
    {
      v179 = qword_1E83E6A40[v215];
    }

    v180 = v221;
    v181 = v254;
    (v213)(v221, *v179, v254);
    v257 = sub_1D15A3D68();
    v255 = v182;
    v183 = *(v169 + *(v259 + 20));
    v184 = (v169 + *(v259 + 28));
    v185 = v184[1];
    v259 = *v184;
    v186 = v242;
    v187 = v220;
    sub_1D14F21C8(v176, &v220[*(v242 + 44)], sub_1D14F0FC4);
    v188 = v178;
    v189 = v253;
    v190 = v248;
    (v248)(v187, v188, v253);
    v190(v187 + v186[5], v234, v189);
    v260(v187 + v186[6], v180, v181);
    v191 = (v187 + v186[7]);
    v192 = v255;
    *v191 = v257;
    v191[1] = v192;
    *(v187 + v186[8]) = v183;
    v193 = (v187 + v186[9]);
    *v193 = v259;
    v193[1] = v185;
    *(v187 + v186[10]) = v243;

    v194 = v219;
    CoreChartTrendLineView.averageRuleAndLabel.getter(v219);
    sub_1D14F2078(v187, type metadata accessor for CoreChartTrendLineView);
    sub_1D14F2078(v233, sub_1D14F0FC4);
    sub_1D14F2078(v169, type metadata accessor for CoreChartTrendLineViewModel);
    v166 = v238;
    v167 = v237;
    (*(v168 + 32))(v238, v194, v237);
    v165 = 0;
  }

  (*(v168 + 56))(v166, v165, 1, v167);
  v195 = v246;
  v196 = v228;
  sub_1D14F1BBC(v246, v228, sub_1D14EF2D0);
  v261 = v196;
  v197 = v235;
  v198 = v252;
  (*(v168 + 16))(v235, v252, v167);
  v262 = v197;
  v199 = v239;
  sub_1D14F1BBC(v166, v239, sub_1D14F030C);
  v263 = v199;
  sub_1D14ED934(&v261, v240);

  sub_1D14F1C24(v166, sub_1D14F030C);
  v200 = *(v168 + 8);
  v200(v198, v167);
  sub_1D14F2078(v251, sub_1D14F0FC4);
  sub_1D14F1C24(v195, sub_1D14EF2D0);
  sub_1D14F1C24(v199, sub_1D14F030C);
  v200(v197, v167);
  sub_1D14F1C24(v196, sub_1D14EF2D0);
}

uint64_t CoreChartTrendLineView.averageRuleAndLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v130 = a1;
  v131 = sub_1D15A3D78();
  v129 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v128 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F0FC4(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v95 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v127 = &v94 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v94 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v126 = &v94 - v10;
  v123 = sub_1D15A3478();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F0FF8(0, &qword_1EC630190, MEMORY[0x1E69E63B0], MEMORY[0x1E695B450], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v119 = &v94 - v13;
  v132 = sub_1D15A2848();
  v96 = *(v132 - 8);
  v14 = v96;
  MEMORY[0x1EEE9AC00](v132);
  v103 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F104C(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v101 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1D15A26A8();
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F1080(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F10B4(0, &qword_1EC630198, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v107 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v133 = &v94 - v25;
  v112 = sub_1D15A35D8();
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v108 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F00B0(0);
  v116 = v27;
  v111 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v109 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EFFDC(0);
  v118 = v29;
  v115 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v113 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EFED0(0);
  v136 = v31;
  v117 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v114 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EFD80(0);
  v138 = v33;
  v120 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v135 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EFBF8(0);
  v125 = v35;
  v124 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v137 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A38B8();
  v37 = type metadata accessor for CoreChartTrendLineView(0);
  v38 = v132;
  v100 = *(v14 + 56);
  v100(v21, 1, 1, v132);
  v39 = v1;
  sub_1D15A33F8();

  v106 = v21;
  sub_1D14F2078(v21, sub_1D14F1080);
  v98 = sub_1D15A38B8();
  v99 = v40;
  v97 = v41;
  v42 = v103;
  sub_1D15A2818();
  v134 = v37;
  v43 = *(v37 + 20);
  v44 = v101;
  sub_1D15A27F8();
  (*(v96 + 8))(v42, v38);
  v45 = v102;
  v46 = *(v102 + 48);
  v47 = v44;
  v48 = v44;
  v49 = v104;
  if ((v46)(v48, 1) == 1)
  {
    v50 = v1 + v43;
    v51 = v105;
    (*(v45 + 16))(v105, v50, v49);
    v52 = v46(v47, 1, v49);
    v53 = v51;
    if (v52 != 1)
    {
      sub_1D14F2078(v47, sub_1D14F104C);
    }
  }

  else
  {
    v53 = v105;
    (*(v45 + 32))(v105, v47, v49);
  }

  v54 = v106;
  v100(v106, 1, 1, v132);
  sub_1D15A33F8();

  sub_1D14F2078(v54, sub_1D14F1080);
  (*(v45 + 8))(v53, v49);
  sub_1D15A38B8();
  v144[0] = *(v1 + *(v134 + 32));
  sub_1D15A3408();

  v55 = v108;
  sub_1D15A35C8();
  v56 = v121;
  v57 = sub_1D15A3468();
  v58 = MEMORY[0x1EEE9AC00](v57);
  sub_1D14F0154(0, v58);
  v60 = v59;
  v93 = sub_1D14F01E8(v61);
  v62 = v109;
  v63 = v39;
  v64 = v112;
  sub_1D15A32F8();
  (*(v122 + 8))(v56, v123);
  (*(v110 + 8))(v55, v64);
  v144[0] = v64;
  v144[1] = v60;
  v144[2] = MEMORY[0x1E695B2B8];
  v144[3] = v93;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v113;
  v67 = v116;
  sub_1D15A3338();
  (*(v111 + 8))(v62, v67);
  sub_1D15A3688();
  v139 = v67;
  v140 = OpaqueTypeConformance2;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v114;
  v70 = v118;
  sub_1D15A3378();
  sub_1D1476F40(v144);
  (*(v115 + 8))(v66, v70);
  v71 = v134;
  v143 = *(v63 + *(v134 + 40));
  v139 = v70;
  v140 = v68;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = MEMORY[0x1E69815C0];
  v74 = v136;
  sub_1D15A3328();
  (*(v117 + 8))(v69, v74);
  v75 = *(v71 + 44);
  v76 = v126;
  sub_1D14F21C8(v63 + v75, v126, sub_1D14F0FC4);
  v77 = sub_1D15A3668();
  v78 = *(v77 - 8);
  v79 = *(v78 + 48);
  if (v79(v76, 1, v77) != 1)
  {
    v80 = v94;
    sub_1D14F21C8(v76, v94, sub_1D14F0FC4);
    if ((*(v78 + 88))(v80, v77) != *MEMORY[0x1E697DBA8])
    {
      (*(v78 + 8))(v80, v77);
    }
  }

  sub_1D14F2078(v76, sub_1D14F0FC4);
  v139 = v136;
  v140 = v73;
  v141 = v72;
  v142 = MEMORY[0x1E6981568];
  v81 = swift_getOpaqueTypeConformance2();
  v82 = v138;
  v83 = v135;
  sub_1D15A3358();
  (*(v120 + 8))(v83, v82);
  v84 = v127;
  sub_1D14F21C8(v63 + v75, v127, sub_1D14F0FC4);
  if (v79(v84, 1, v77) == 1)
  {
    goto LABEL_12;
  }

  v85 = v95;
  sub_1D14F21C8(v84, v95, sub_1D14F0FC4);
  if ((*(v78 + 88))(v85, v77) != *MEMORY[0x1E697DBB8])
  {
    (*(v78 + 8))(v85, v77);
LABEL_12:
    v86 = MEMORY[0x1E6981DF0];
    goto LABEL_13;
  }

  v86 = MEMORY[0x1E6981DA0];
LABEL_13:
  v87 = v129;
  v88 = v128;
  v89 = v131;
  (*(v129 + 104))(v128, *v86, v131);
  sub_1D14F2078(v84, sub_1D14F0FC4);
  v139 = v138;
  v140 = v81;
  swift_getOpaqueTypeConformance2();
  v90 = v125;
  v91 = v137;
  sub_1D15A3368();
  (*(v87 + 8))(v88, v89);
  return (*(v124 + 8))(v91, v90);
}

uint64_t sub_1D14ED934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D14F20D8(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EF2D0(0);
  sub_1D14F1750(&qword_1EC630A40, sub_1D14EF2D0, sub_1D14F0578, MEMORY[0x1E695B488]);
  sub_1D14F1BBC(*a1, v7, sub_1D14EF2D0);
  sub_1D14EFA40(0);
  v9 = v8;
  sub_1D14EFBF8(255);
  sub_1D14EFD80(255);
  sub_1D14EFED0(255);
  sub_1D14EFFDC(255);
  sub_1D14F00B0(255);
  sub_1D15A35D8();
  sub_1D14F0154(255, v10);
  sub_1D14F01E8(v11);
  v12 = *(v5 + 56);
  v13 = *(v9 - 8);
  (*(v13 + 16))(&v7[v12], a1[1], v9);
  sub_1D14F030C(0);
  sub_1D14F0938();
  v14 = *(v5 + 72);
  sub_1D14F1BBC(a1[2], &v7[v14], sub_1D14F030C);
  sub_1D14F2160(v7, a2, sub_1D14EF2D0);
  (*(v13 + 32))(a2 + *(v5 + 56), &v7[v12], v9);
  return sub_1D14F2160(&v7[v14], a2 + *(v5 + 72), sub_1D14F030C);
}

void sub_1D14EDB54(uint64_t *a1, double *a2)
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a1;
  v5 = COERCE_DOUBLE(sub_1D152CE94(*a1));
  v7 = 0.0;
  if (v6)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  v9 = COERCE_DOUBLE(sub_1D152CBA0(v4));
  v11 = v10;

  if (v11)
  {
    v12 = 100.0;
  }

  else
  {
    v12 = v9;
  }

  if (v12 - v8 < *a2)
  {
    v13 = *a2 - (v12 - v8);
    if (*(a2 + *(type metadata accessor for CoreChartTrendDiagram(0) + 36)) == 1)
    {
      v12 = v12 + v13;
      v8 = 0.0;
    }

    else
    {
      if (v8 - v13 * 0.5 < 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v8 - v13 * 0.5;
      }

      v12 = v12 + v13 * 0.5;
    }
  }

  if (!*(a2 + *(type metadata accessor for CoreChartTrendDiagram(0) + 36)))
  {
    v7 = v8;
  }

  sub_1D147EEB8(0, &qword_1EE059690, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D15AEBB0;
  *(v14 + 32) = v7;
  *(v14 + 40) = v12;

  *a1 = v14;
}

double sub_1D14EDCFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v77 = a3;
  v5 = type metadata accessor for CoreChartTrendLineViewModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v78 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14E8CA0(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v74 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v70 - v11;
  sub_1D15A4148();
  v79 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = a1 + *(type metadata accessor for CoreChartTrendDiagram(0) + 32);
  v14 = type metadata accessor for CoreChartTrendViewModel(0);
  v73 = *(v14 + 32);
  sub_1D14F21C8(v13 + v73, v12, sub_1D14E8CA0);
  v15 = *(v6 + 48);
  v75 = v6 + 48;
  v72 = v15;
  v16 = v15(v12, 1, v5);
  sub_1D14F2078(v12, sub_1D14E8CA0);
  v70[1] = a2;
  if (v16 == 1)
  {

    v17 = a2;
  }

  else
  {
    v18 = [objc_opt_self() secondaryLabelColor];
    v17 = sub_1D15A3C38();
  }

  v19 = (v13 + *(v14 + 28) + *(v5 + 24));
  v20 = v19[1];
  v81 = *v19;
  v82 = v20;
  v21 = sub_1D147ED3C();

  v70[0] = v21;
  v35 = sub_1D15A3B28();
  v23 = v22;
  v25 = v24;
  sub_1D15A3AD8();
  v26 = sub_1D15A3B08();
  v28 = v27;
  v76 = v5;
  v30 = v29;
  v71 = v13;

  sub_1D1491688(v35, v23, v25 & 1);

  v31 = sub_1D15A3AF8();
  v33 = v32;
  LODWORD(v35) = v34;
  v37 = v36;

  v38 = v76;
  sub_1D1491688(v26, v28, v30 & 1);

  v39 = v74;
  sub_1D14F21C8(v71 + v73, v74, sub_1D14E8CA0);
  if (v72(v39, 1, v38) == 1)
  {
    sub_1D14F2078(v39, sub_1D14E8CA0);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v44 = v39;
    v45 = v78;
    sub_1D14F1A04(v44, v78, type metadata accessor for CoreChartTrendLineViewModel);
    v46 = (v45 + *(v38 + 24));
    v47 = v46[1];
    v81 = *v46;
    v82 = v47;

    v48 = sub_1D15A3B28();
    v50 = v49;
    v52 = v51;
    sub_1D15A3AD8();
    v53 = sub_1D15A3B08();
    LODWORD(v73) = v35;
    v35 = v53;
    v75 = v37;
    v76 = v17;
    v55 = v54;
    v56 = v31;
    v58 = v57;
    v74 = v33;

    sub_1D1491688(v48, v50, v52 & 1);

    v40 = sub_1D15A3AF8();
    v41 = v59;
    LOBYTE(v50) = v60;
    v43 = v61;
    v62 = v58 & 1;
    v31 = v56;
    v63 = v35;
    LOBYTE(v35) = v73;
    v64 = v55;
    v37 = v75;
    sub_1D1491688(v63, v64, v62);
    v33 = v74;

    sub_1D14F2078(v78, type metadata accessor for CoreChartTrendLineViewModel);
    v42 = v50 & 1;
    sub_1D14F1B24(v40, v41, v42);
  }

  v65 = v35 & 1;
  LOBYTE(v81) = v65;
  v80 = 1;
  sub_1D14F1B24(v31, v33, v65);

  sub_1D14F1B34(v40, v41, v42, v43);
  sub_1D14F1B78(v40, v41, v42, v43);

  v66 = v81;
  v67 = v80;
  v68 = v77;
  *v77 = v31;
  v68[1] = v33;
  *(v68 + 16) = v66;
  v68[3] = v37;
  v68[4] = 0;
  *(v68 + 40) = v67;
  v68[6] = v40;
  v68[7] = v41;
  v68[8] = v42;
  v68[9] = v43;
  sub_1D14F1B78(v40, v41, v42, v43);
  sub_1D1491688(v31, v33, v65);

  return result;
}

void sub_1D14EE2C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v75 = a2;
  v2 = sub_1D15A3D78();
  v73 = *(v2 - 8);
  v74 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v72 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F0FC4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v63 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v63 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v63 - v11;
  sub_1D14F19D0(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D15A3AE8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F0154(0, v17);
  v68 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A4148();
  v69 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v67 = type metadata accessor for CoreChartTrendLineView(0);
  v22 = (v77 + *(v67 + 36));
  v23 = v22[1];
  v78 = *v22;
  v79 = v23;
  sub_1D147ED3C();

  v24 = sub_1D15A3B28();
  v26 = v25;
  v28 = v27;
  v66 = v29;
  (*(v16 + 104))(v19, *MEMORY[0x1E6980F30], v15);
  v30 = *MEMORY[0x1E6980E28];
  v31 = sub_1D15A3A38();
  v32 = v15;
  v33 = *(v31 - 8);
  (*(v33 + 104))(v14, v30, v31);
  (*(v33 + 56))(v14, 0, 1, v31);
  sub_1D15A3A98();
  sub_1D14F2078(v14, sub_1D14F19D0);
  (*(v16 + 8))(v19, v32);
  sub_1D15A3A48();
  sub_1D15A3AA8();

  v34 = sub_1D15A3B08();
  v36 = v35;
  v38 = v37;

  sub_1D1491688(v24, v26, v28 & 1);

  v39 = v67;
  v40 = v77;
  v41 = sub_1D15A3AF8();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_1D1491688(v34, v36, v38 & 1);

  v48 = *(v39 + 44);
  v49 = v76;
  sub_1D14F21C8(v40 + v48, v76, sub_1D14F0FC4);
  v50 = sub_1D15A3668();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v53 = 1.0;
  if (v52(v49, 1, v50) != 1)
  {
    v54 = v49;
    v55 = v64;
    sub_1D14F21C8(v54, v64, sub_1D14F0FC4);
    if ((*(v51 + 88))(v55, v50) == *MEMORY[0x1E697DBA8])
    {
      v53 = 0.9;
    }

    else
    {
      (*(v51 + 8))(v55, v50);
    }
  }

  v56 = v71;
  sub_1D14F2078(v76, sub_1D14F0FC4);
  sub_1D14F21C8(v77 + v48, v56, sub_1D14F0FC4);
  if (v52(v56, 1, v50) == 1)
  {
    goto LABEL_11;
  }

  v57 = v65;
  sub_1D14F21C8(v56, v65, sub_1D14F0FC4);
  if ((*(v51 + 88))(v57, v50) != *MEMORY[0x1E697DBB8])
  {
    (*(v51 + 8))(v57, v50);
LABEL_11:
    v58 = MEMORY[0x1E6981DF0];
    goto LABEL_12;
  }

  v58 = MEMORY[0x1E6981DA0];
LABEL_12:
  v60 = v72;
  v59 = v73;
  v61 = v74;
  (*(v73 + 104))(v72, *v58, v74);
  sub_1D14F2078(v56, sub_1D14F0FC4);
  v62 = v70;
  (*(v59 + 32))(&v70[*(v68 + 36)], v60, v61);
  *v62 = v41;
  *(v62 + 8) = v43;
  *(v62 + 16) = v45 & 1;
  *(v62 + 24) = v47;
  *(v62 + 32) = v53;
  sub_1D14F1A04(v62, v75, sub_1D14F0154);
}

uint64_t sub_1D14EEA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

void sub_1D14EEB88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D14EEBEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D15A37A8();
  *a1 = result;
  return result;
}

uint64_t sub_1D14EEC44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1D14EECF4(uint64_t a1)
{
  if (!qword_1EC630938)
  {
    sub_1D14EED88(255);
    sub_1D14F0FF8(255, &qword_1EE056AC0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = sub_1D15A3718();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC630938);
    }
  }
}

void sub_1D14EED88(uint64_t a1)
{
  if (!qword_1EC630940)
  {
    sub_1D14EEE1C(255);
    sub_1D14F1CB0(&qword_1EC630A80, sub_1D14EEE1C, MEMORY[0x1E6981F48]);
    v1 = sub_1D15A3CE8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC630940);
    }
  }
}

void sub_1D14EEE50(uint64_t a1)
{
  if (!qword_1EC630950)
  {
    sub_1D14F10B4(255, &qword_1EC630958, sub_1D14EEEF8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1D14F0B14(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC630950);
    }
  }
}

void sub_1D14EEEF8(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630960)
  {
    sub_1D14EF04C(255, a2);
    sub_1D15A34A8();
    sub_1D15A34B8();
    sub_1D14EF138(255, v2);
    sub_1D14EF1EC(255, v3);
    sub_1D14F1CB0(&qword_1EC630A70, sub_1D14EF1EC, MEMORY[0x1E695B218]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630960);
    }
  }
}

void sub_1D14EF04C(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630968)
  {
    sub_1D14EF138(255, a2);
    sub_1D14EF1EC(255, v2);
    sub_1D14F1CB0(&qword_1EC630A70, sub_1D14EF1EC, MEMORY[0x1E695B218]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630968);
    }
  }
}

void sub_1D14EF138(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630970)
  {
    sub_1D14EF1EC(255, a2);
    sub_1D14F1CB0(&qword_1EC630A70, sub_1D14EF1EC, MEMORY[0x1E695B218]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630970);
    }
  }
}

void sub_1D14EF1EC(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630978)
  {
    sub_1D14EF250(255, a2);
    sub_1D14F0340(v2);
    v3 = sub_1D15A3518();
    if (!v4)
    {
      atomic_store(v3, &qword_1EC630978);
    }
  }
}

void sub_1D14EF250(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630980)
  {
    sub_1D14EF2D0(255);
    sub_1D14EFA40(255);
    sub_1D14F030C(255);
    v2 = sub_1D15A32D8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC630980);
    }
  }
}

void sub_1D14EF2D0(uint64_t a1)
{
  if (!qword_1EC630988)
  {
    sub_1D14F1F30(255, &qword_1EC630990, sub_1D14EF36C, sub_1D1475DA0, MEMORY[0x1E695B1A8]);
    v1 = sub_1D15A4608();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC630988);
    }
  }
}

void sub_1D14EF408(uint64_t a1)
{
  if (!qword_1EC6309A8)
  {
    sub_1D15A3538();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309A8);
    }
  }
}

void sub_1D14EF4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1D14EF3D4(255);
    sub_1D15A26A8();
    a3(255);
    sub_1D14F1CB0(&qword_1EC62FFE8, sub_1D14EF3D4, MEMORY[0x1E69E6338]);
    sub_1D14F1CB0(&qword_1EC630010, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    v5 = sub_1D15A3D38();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D14EF5C4(uint64_t a1)
{
  if (!qword_1EC6309B8)
  {
    sub_1D14EF71C(255);
    sub_1D14EF830(255);
    sub_1D15A35A8();
    sub_1D14EF90C(255);
    sub_1D14EF998();
    sub_1D14EF9EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309B8);
    }
  }
}

void sub_1D14EF71C(uint64_t a1)
{
  if (!qword_1EC6309C0)
  {
    sub_1D14EF830(255);
    sub_1D15A35A8();
    sub_1D14EF90C(255);
    sub_1D14EF998();
    sub_1D14EF9EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309C0);
    }
  }
}

void sub_1D14EF830(uint64_t a1)
{
  if (!qword_1EC6309C8)
  {
    sub_1D15A35A8();
    sub_1D14EF90C(255);
    sub_1D14EF998();
    sub_1D14EF9EC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309C8);
    }
  }
}

void sub_1D14EF90C(uint64_t a1)
{
  if (!qword_1EC6309D0)
  {
    sub_1D14EF998();
    sub_1D14EF9EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309D0);
    }
  }
}

unint64_t sub_1D14EF998()
{
  result = qword_1EC6309D8;
  if (!qword_1EC6309D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6309D8);
  }

  return result;
}

unint64_t sub_1D14EF9EC()
{
  result = qword_1EE056A80;
  if (!qword_1EE056A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056A80);
  }

  return result;
}

void sub_1D14EFA40(uint64_t a1)
{
  if (!qword_1EC6309E0)
  {
    sub_1D14EFBF8(255);
    sub_1D14EFD80(255);
    sub_1D14EFED0(255);
    sub_1D14EFFDC(255);
    sub_1D14F00B0(255);
    sub_1D15A35D8();
    sub_1D14F0154(255, v1);
    sub_1D14F01E8(v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309E0);
    }
  }
}

void sub_1D14EFBF8(uint64_t a1)
{
  if (!qword_1EC6309E8)
  {
    sub_1D14EFD80(255);
    sub_1D14EFED0(255);
    sub_1D14EFFDC(255);
    sub_1D14F00B0(255);
    sub_1D15A35D8();
    sub_1D14F0154(255, v1);
    sub_1D14F01E8(v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309E8);
    }
  }
}

void sub_1D14EFD80(uint64_t a1)
{
  if (!qword_1EC6309F0)
  {
    sub_1D14EFED0(255);
    sub_1D14EFFDC(255);
    sub_1D14F00B0(255);
    sub_1D15A35D8();
    sub_1D14F0154(255, v1);
    sub_1D14F01E8(v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309F0);
    }
  }
}

void sub_1D14EFED0(uint64_t a1)
{
  if (!qword_1EC6309F8)
  {
    sub_1D14EFFDC(255);
    sub_1D14F00B0(255);
    sub_1D15A35D8();
    sub_1D14F0154(255, v1);
    sub_1D14F01E8(v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309F8);
    }
  }
}

void sub_1D14EFFDC(uint64_t a1)
{
  if (!qword_1EC630A00)
  {
    sub_1D14F00B0(255);
    sub_1D15A35D8();
    sub_1D14F0154(255, v1);
    sub_1D14F01E8(v2);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630A00);
    }
  }
}

void sub_1D14F00B0(uint64_t a1)
{
  if (!qword_1EC630A08)
  {
    sub_1D15A35D8();
    sub_1D14F0154(255, v1);
    sub_1D14F01E8(v2);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630A08);
    }
  }
}

void sub_1D14F0154(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630A10)
  {
    sub_1D14F0FF8(255, &qword_1EC630A18, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1D15A3768();
    v2 = sub_1D15A3718();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC630A10);
    }
  }
}

unint64_t sub_1D14F01E8(__n128 a1)
{
  result = qword_1EC630A20;
  if (!qword_1EC630A20)
  {
    sub_1D14F0154(255, a1);
    sub_1D14F0268(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A20);
  }

  return result;
}

unint64_t sub_1D14F0268(__n128 a1)
{
  result = qword_1EC630A28;
  if (!qword_1EC630A28)
  {
    sub_1D14F0FF8(255, &qword_1EC630A18, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A28);
  }

  return result;
}

unint64_t sub_1D14F0340(__n128 a1)
{
  result = qword_1EC630A38;
  if (!qword_1EC630A38)
  {
    sub_1D14EF250(255, a1);
    sub_1D14F1750(&qword_1EC630A40, sub_1D14EF2D0, sub_1D14F0578, MEMORY[0x1E695B488]);
    sub_1D14EFBF8(255);
    sub_1D14EFD80(255);
    sub_1D14EFED0(255);
    sub_1D14EFFDC(255);
    sub_1D14F00B0(255);
    sub_1D15A35D8();
    sub_1D14F0154(255, v2);
    sub_1D14F01E8(v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D14F0938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A38);
  }

  return result;
}

unint64_t sub_1D14F0578()
{
  result = qword_1EC630A48;
  if (!qword_1EC630A48)
  {
    sub_1D14F1F30(255, &qword_1EC630990, sub_1D14EF36C, sub_1D1475DA0, MEMORY[0x1E695B1A8]);
    sub_1D14F0680();
    sub_1D14F1750(&qword_1EC630000, sub_1D1475DA0, sub_1D1475B60, MEMORY[0x1E695B408]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A48);
  }

  return result;
}

unint64_t sub_1D14F0680()
{
  result = qword_1EC630A50;
  if (!qword_1EC630A50)
  {
    sub_1D14EF36C(255);
    sub_1D14F0700();
    sub_1D14F07BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A50);
  }

  return result;
}

unint64_t sub_1D14F0700()
{
  result = qword_1EC630A58;
  if (!qword_1EC630A58)
  {
    sub_1D14EF3B4(255);
    sub_1D15A3538();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A58);
  }

  return result;
}

unint64_t sub_1D14F07BC()
{
  result = qword_1EC630A60;
  if (!qword_1EC630A60)
  {
    sub_1D14EF4A0(255);
    sub_1D14EF71C(255);
    sub_1D14EF830(255);
    sub_1D15A35A8();
    sub_1D14EF90C(255);
    sub_1D14EF998();
    sub_1D14EF9EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A60);
  }

  return result;
}

unint64_t sub_1D14F0938()
{
  result = qword_1EC630A68;
  if (!qword_1EC630A68)
  {
    sub_1D14F030C(255);
    sub_1D14EFBF8(255);
    sub_1D14EFD80(255);
    sub_1D14EFED0(255);
    sub_1D14EFFDC(255);
    sub_1D14F00B0(255);
    sub_1D15A35D8();
    sub_1D14F0154(255, v1);
    sub_1D14F01E8(v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A68);
  }

  return result;
}

void sub_1D14F0B14(uint64_t a1)
{
  if (!qword_1EC630A78)
  {
    sub_1D14F0BA8(255);
    sub_1D14F1CB0(&qword_1EE056928, sub_1D14F0BA8, MEMORY[0x1E6981F48]);
    v1 = sub_1D15A3CD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC630A78);
    }
  }
}

void sub_1D14F0BDC(uint64_t a1)
{
  if (!qword_1EE056A88)
  {
    sub_1D147EEB8(255, &qword_1EE056A90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE056A88);
    }
  }
}

void sub_1D14F0C70(uint64_t a1)
{
  if (!qword_1EC630A90)
  {
    sub_1D14EECAC(255);
    sub_1D149B16C(255);
    sub_1D14F0D44();
    sub_1D14F1CB0(&qword_1EE056488, sub_1D149B16C, MEMORY[0x1E69E6ED8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630A90);
    }
  }
}

unint64_t sub_1D14F0D44()
{
  result = qword_1EC630A98;
  if (!qword_1EC630A98)
  {
    sub_1D14EECAC(255);
    sub_1D14F0DF4();
    sub_1D14F1CB0(&qword_1EE056C60, sub_1D14AD5EC, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A98);
  }

  return result;
}

unint64_t sub_1D14F0DF4()
{
  result = qword_1EC630AA0;
  if (!qword_1EC630AA0)
  {
    sub_1D14EECF4(255);
    sub_1D14F1CB0(&qword_1EC630AA8, sub_1D14EED88, MEMORY[0x1E6981870]);
    sub_1D14F0EA4(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630AA0);
  }

  return result;
}

unint64_t sub_1D14F0EA4(__n128 a1)
{
  result = qword_1EE056AC8;
  if (!qword_1EE056AC8)
  {
    sub_1D14F0FF8(255, &qword_1EE056AC0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056AC8);
  }

  return result;
}

void sub_1D14F0F5C(uint64_t a1)
{
  if (!qword_1EC630AB0)
  {
    sub_1D14EEE1C(255);
    v1 = sub_1D15A36D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC630AB0);
    }
  }
}

void sub_1D14F0FF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D14F10B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D14F11D4(uint64_t a1)
{
  sub_1D15A26A8();
  if (v1 <= 0x3F)
  {
    sub_1D147EEB8(319, &qword_1EE059750, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D14F12A4(uint64_t a1)
{
  result = sub_1D15A22A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D14F134C(uint64_t a1)
{
  type metadata accessor for HKCodableSummaryTrendTileViewModel_TrendDiagramStyle(319);
  if (v1 <= 0x3F)
  {
    sub_1D1453BA0(319, &qword_1EE056778, 0x1E696C2E0);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CoreChartTrendLineViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_1D14E8CA0(319);
        if (v4 <= 0x3F)
        {
          sub_1D14EF3D4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D14F1458(uint64_t a1)
{
  sub_1D14EEB88(319, &qword_1EE056C68, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1D14F1564(319);
    if (v2 <= 0x3F)
    {
      sub_1D14F15CC(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CoreChartTrendViewModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D14F1564(uint64_t a1)
{
  if (!qword_1EC630AB8)
  {
    sub_1D1453BA0(255, &qword_1EE056760, 0x1E696C1C0);
    v1 = sub_1D15A3678();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC630AB8);
    }
  }
}

void sub_1D14F15CC(uint64_t a1)
{
  if (!qword_1EC630AC0)
  {
    sub_1D15A2E68();
    sub_1D14F1CB0(&qword_1EC630648, MEMORY[0x1E69A3650], MEMORY[0x1E69A3648]);
    v1 = sub_1D15A3798();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC630AC0);
    }
  }
}

void sub_1D14F1688(uint64_t a1)
{
  sub_1D15A26A8();
  if (v1 <= 0x3F)
  {
    sub_1D15A2838();
    if (v2 <= 0x3F)
    {
      sub_1D14F0FC4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D14F1750(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D14F17C0(uint64_t a1)
{
  if (!qword_1EC630AE0)
  {
    sub_1D14F1F30(255, &qword_1EC630A88, sub_1D14F0C70, sub_1D14F0F28, MEMORY[0x1E697E830]);
    v1 = sub_1D15A4608();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC630AE0);
    }
  }
}

unint64_t sub_1D14F185C()
{
  result = qword_1EC630AE8;
  if (!qword_1EC630AE8)
  {
    sub_1D14F1F30(255, &qword_1EC630A88, sub_1D14F0C70, sub_1D14F0F28, MEMORY[0x1E697E830]);
    sub_1D14EECAC(255);
    sub_1D149B16C(255);
    sub_1D14F0D44();
    sub_1D14F1CB0(&qword_1EE056488, sub_1D149B16C, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1D14F1CB0(&qword_1EE056AB0, sub_1D14F0F28, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630AE8);
  }

  return result;
}

uint64_t sub_1D14F1A04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1D14F1AA8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

void sub_1D14F1AB4(uint64_t *a1)
{
  v3 = *(type metadata accessor for CoreChartTrendDiagram(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_1D14EDB54(a1, v4);
}

double sub_1D14F1B24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_1D14F1B34(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D14F1B24(a1, a2, a3 & 1);
  }

  return result;
}

double sub_1D14F1B78(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D1491688(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1D14F1BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14F1C24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D14F1CB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_62Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v14 = *(*(v2 - 8) + 64);

  v5 = type metadata accessor for CoreChartTrendViewModel(0);
  v6 = v1 + v4 + *(v5 + 28);
  v7 = sub_1D15A22A8();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = type metadata accessor for CoreChartTrendLineViewModel(0);

  v10 = v1 + v4 + *(v5 + 32);
  if (!(*(*(v9 - 8) + 48))(v10, 1, v9))
  {
    v8(v10, v7);
  }

  v11 = *(v2 + 20);
  v12 = sub_1D15A2838();
  (*(*(v12 - 8) + 8))(v1 + v4 + v11, v12);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v14, v3 | 7);
}

void sub_1D14F1F30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1D14F1FE0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_1D14F2078(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D14F20D8(uint64_t a1)
{
  if (!qword_1EC630B08)
  {
    sub_1D14EF2D0(255);
    sub_1D14EFA40(255);
    sub_1D14F030C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC630B08);
    }
  }
}

uint64_t sub_1D14F2160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14F21C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t static StatisticsCurrentValueSupport.statistics(from:)(void *a1)
{
  v2 = sub_1D15A3268();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 statistics];
  sub_1D1453BA0(0, &qword_1EE056768, 0x1E696C4C0);
  v8 = sub_1D15A40C8();

  if (v8 >> 62)
  {
    if (sub_1D15A4708() > 1)
    {
      goto LABEL_3;
    }

    v9 = sub_1D15A4708();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 > 1)
    {
LABEL_3:

      sub_1D15A3238();
      v10 = sub_1D15A3248();
      v11 = sub_1D15A4318();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v24 = v13;
        *v12 = 136315394;
        *(v12 + 4) = sub_1D1479780(0xD00000000000001DLL, 0x80000001D15B1FF0, &v24);
        *(v12 + 12) = 2080;
        v22[1] = 0xD000000000000069;
        v22[2] = 0x80000001D15C0250;
        v23 = 0;
        v14 = sub_1D15A3F68();
        v16 = sub_1D1479780(v14, v15, &v24);
        v22[0] = v2;
        v2 = 0x80000001D15C0250;
        v17 = v16;

        *(v12 + 14) = v17;
        _os_log_impl(&dword_1D1446000, v10, v11, "[%s]: Error: %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v13, -1, -1);
        MEMORY[0x1D388BF00](v12, -1, -1);

        (*(v3 + 8))(v6, v22[0]);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
      }

      sub_1D14F2590();
      swift_allocError();
      *v18 = 0xD000000000000069;
      *(v18 + 8) = 0x80000001D15C0250;
      *(v18 + 16) = 0;
      swift_willThrow();
      return v2;
    }
  }

  if (!v9)
  {

    return 0;
  }

  v19 = __OFSUB__(v9, 1);
  result = v9 - 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v21 = MEMORY[0x1D388AB50](result, v8);
    goto LABEL_15;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v8 + 8 * result + 32);
LABEL_15:
    v2 = v21;

    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D14F2590()
{
  result = qword_1EC630B10;
  if (!qword_1EC630B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630B10);
  }

  return result;
}

uint64_t static StatisticsCurrentValueSupport.queryDateInterval(for:with:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a3@<X8>)
{
  v87 = a3;
  v4 = sub_1D15A2838();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v83 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1D15A2848();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v7 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455B78(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v79 - v9;
  v88 = sub_1D15A26A8();
  v81 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v79[1] = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v89 = v79 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v79 - v15;
  v17 = sub_1D15A3268();
  v18 = *(v17 - 8);
  v90 = v17;
  v91 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v79 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v80 = v79 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v79 - v27;
  v29 = sub_1D15A22A8();
  v92 = *(v29 - 8);
  v93 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = *a1;
  v32 = a1[17];
  v94 = v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A2218();
  if (v32 <= 1)
  {
    if (!v32)
    {
      v38 = 0xD00000000000002FLL;
      v33 = 0x80000001D15C0390;
      sub_1D15A3238();
      v42 = sub_1D15A3248();
      v43 = sub_1D15A4318();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v98 = v45;
        *v44 = 136315394;
        *(v44 + 4) = sub_1D1479780(0xD00000000000001DLL, 0x80000001D15B1FF0, &v98);
        *(v44 + 12) = 2080;
        v95 = 0xD00000000000002FLL;
        v96 = 0x80000001D15C0390;
        v97 = 0;
        v46 = sub_1D15A3F68();
        v48 = sub_1D1479780(v46, v47, &v98);

        *(v44 + 14) = v48;
        _os_log_impl(&dword_1D1446000, v42, v43, "[%s]: Error: %s", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v45, -1, -1);
        MEMORY[0x1D388BF00](v44, -1, -1);
      }

      (*(v91 + 8))(v28, v90);
      goto LABEL_15;
    }

    v49 = v94;
    if (v31 <= 2 && v31 > 1)
    {
    }

    else
    {
      v77 = sub_1D15A4BA8();

      if ((v77 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    return (*(v92 + 32))(v87, v49, v93);
  }

  if (v32 == 2)
  {
    if (v31 > 2)
    {
      v49 = v94;
      if (v31 == 3)
      {

        v58 = v89;
LABEL_26:
        sub_1D15A2818();
        v61 = v85;
        v60 = v86;
        v62 = v83;
        (*(v85 + 104))(v83, *MEMORY[0x1E6969A48], v86);
        sub_1D15A2288();
        sub_1D15A27F8();
        v63 = v81;
        v79[0] = *(v81 + 8);
        (v79[0])(v58, v88);
        v64 = v62;
        v65 = v88;
        (*(v61 + 8))(v64, v60);
        (*(v82 + 8))(v7, v84);
        if ((*(v63 + 48))(v10, 1, v65) != 1)
        {
          (*(v63 + 32))(v16, v10, v65);
          (*(v63 + 16))(v89, v16, v65);
          sub_1D15A2258();
          sub_1D15A2268();
          (v79[0])(v16, v65);
          return (*(v92 + 8))(v49, v93);
        }

        sub_1D14F44CC(v10, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
        v95 = 0;
        v96 = 0xE000000000000000;
        sub_1D15A47D8();

        v95 = 0xD000000000000029;
        v96 = 0x80000001D15C0360;
        v66 = v89;
        sub_1D15A2288();
        sub_1D14F4474();
        v67 = sub_1D15A4B68();
        MEMORY[0x1D388A330](v67);

        (v79[0])(v66, v65);
        v38 = v95;
        v33 = v96;
        v68 = v80;
        sub_1D15A3238();

        v69 = sub_1D15A3248();
        v70 = sub_1D15A4318();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v98 = v72;
          *v71 = 136315394;
          *(v71 + 4) = sub_1D1479780(0xD00000000000001DLL, 0x80000001D15B1FF0, &v98);
          *(v71 + 12) = 2080;
          v95 = v38;
          v96 = v33;
          v57 = 1;
          v97 = 1;

          v73 = sub_1D15A3F68();
          v75 = sub_1D1479780(v73, v74, &v98);

          *(v71 + 14) = v75;
          _os_log_impl(&dword_1D1446000, v69, v70, "[%s]: Error: %s", v71, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D388BF00](v72, -1, -1);
          MEMORY[0x1D388BF00](v71, -1, -1);

          (*(v91 + 8))(v80, v90);
        }

        else
        {

          (*(v91 + 8))(v68, v90);
          v57 = 1;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v49 = v94;
    }

    v58 = v89;
    v59 = sub_1D15A4BA8();

    if (v59)
    {
      goto LABEL_26;
    }

LABEL_33:
    v38 = 0xD00000000000002FLL;
    v33 = 0x80000001D15C0330;
    v57 = 1;
    goto LABEL_34;
  }

  if (v32 == 3)
  {
    v33 = 0x80000001D15C02F0;
    sub_1D15A3238();
    v34 = sub_1D15A3248();
    v35 = sub_1D15A4318();
    if (!os_log_type_enabled(v34, v35))
    {

      (*(v91 + 8))(v23, v90);
      v57 = 0;
      v38 = 0xD000000000000030;
      goto LABEL_16;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v98 = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_1D1479780(0xD00000000000001DLL, 0x80000001D15B1FF0, &v98);
    *(v36 + 12) = 2080;
    v38 = 0xD000000000000030;
    v95 = 0xD000000000000030;
    v96 = 0x80000001D15C02F0;
    v97 = 0;
    v39 = sub_1D15A3F68();
    v41 = sub_1D1479780(v39, v40, &v98);

    *(v36 + 14) = v41;
    _os_log_impl(&dword_1D1446000, v34, v35, "[%s]: Error: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D388BF00](v37, -1, -1);
    MEMORY[0x1D388BF00](v36, -1, -1);

    (*(v91 + 8))(v23, v90);
  }

  else
  {
    v38 = 0xD00000000000002FLL;
    v33 = 0x80000001D15C02C0;
    sub_1D15A3238();
    v50 = sub_1D15A3248();
    v51 = sub_1D15A4318();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v98 = v53;
      *v52 = 136315394;
      *(v52 + 4) = sub_1D1479780(0xD00000000000001DLL, 0x80000001D15B1FF0, &v98);
      *(v52 + 12) = 2080;
      v95 = 0xD00000000000002FLL;
      v96 = 0x80000001D15C02C0;
      v97 = 0;
      v54 = sub_1D15A3F68();
      v56 = sub_1D1479780(v54, v55, &v98);

      *(v52 + 14) = v56;
      _os_log_impl(&dword_1D1446000, v50, v51, "[%s]: Error: %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v53, -1, -1);
      MEMORY[0x1D388BF00](v52, -1, -1);
    }

    (*(v91 + 8))(v20, v90);
  }

LABEL_15:
  v57 = 0;
LABEL_16:
  v49 = v94;
LABEL_34:
  sub_1D14F2590();
  swift_allocError();
  *v78 = v38;
  *(v78 + 8) = v33;
  *(v78 + 16) = v57;
  swift_willThrow();
  return (*(v92 + 8))(v49, v93);
}

id static StatisticsCurrentValueSupport.makeQuantityCurrentValue(quantity:date:dataCount:supplementaryDateInterval:queryConfiguration:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v40 = a3;
  v43 = a2;
  v44 = a1;
  v42 = sub_1D15A26A8();
  v7 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D15A22A8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455B78(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - v19;
  v39 = *a5;
  v41 = *(a5 + 1);
  v38 = a5[16];
  v21 = a5[17];
  (*(v11 + 16))(&v36 - v19, a4, v10, v18);
  (*(v11 + 56))(v20, 0, 1, v10);
  result = [objc_allocWithZone(MEMORY[0x1E69A4300]) init];
  if (result)
  {
    v23 = result;
    sub_1D149D62C(v20, v16);
    v24 = (*(v11 + 48))(v16, 1, v10);
    v37 = v21;
    if (v24 == 1)
    {
      sub_1D14F44CC(v16, &qword_1EE05B520, MEMORY[0x1E6968130]);
    }

    else
    {
      (*(v11 + 32))(v13, v16, v10);
      sub_1D1453BA0(0, &qword_1EE0566F8, 0x1E69A41A8);
      v25 = sub_1D15A44A8();
      [v23 setDateInterval_];

      (*(v11 + 8))(v13, v10);
    }

    [v23 setDataCount_];
    sub_1D14F44CC(v20, &qword_1EE05B520, MEMORY[0x1E6968130]);
    sub_1D1453BA0(0, &qword_1EE056650, 0x1E69A42E0);
    (*(v7 + 16))(v9, v43, v42);
    v26 = v44;
    v27 = sub_1D153FD10(v26, v9);

    v28 = v23;
    v29 = v41;

    result = [v27 data];
    if (result)
    {
      v30 = result;
      v31 = v38 | (v37 << 8);
      sub_1D1453BA0(0, &qword_1EE056670, 0x1E69A42A8);
      v32 = sub_1D15A2518();
      v34 = v33;

      v49 = 14;
      v47[0] = v39;
      v47[1] = v29;
      v47[2] = v31;
      v47[3] = 0;
      v48 = 0;
      v46 = 0;
      memset(v45, 0, sizeof(v45));
      v35 = sub_1D153FE24(v32, v34, &v49, v47, v28, 0, v45);
      sub_1D1498BF4(v32, v34);

      return v35;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id static StatisticsCurrentValueSupport.makeQuantityCurrentValue(quantity:mostRecentEndDate:responseEndDate:dataCount:supplementaryDateInterval:queryConfiguration:)(void *a1, void (*a2)(char *, uint64_t, uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v59 = a5;
  v57 = a4;
  v49[1] = a3;
  v54 = a2;
  v58 = a1;
  v7 = sub_1D15A22A8();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v50 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455B78(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = v49 - v12;
  v13 = sub_1D15A26A8();
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v56 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v63 = v49 - v17;
  v18 = *(a6 + 1);
  v19 = (v18 + 32);
  v53 = *a6;
  v52 = a6[16];
  v51 = a6[17];
  v62 = v18;
  v20 = *(v18 + 16);
  while (1)
  {
    if (!v20)
    {
      v23 = &v71;
      goto LABEL_14;
    }

    v22 = *v19;
    if (v22 <= 4 && *v19 > 1u && v22 != 2 && v22 != 3)
    {
      break;
    }

    v21 = sub_1D15A4BA8();

    ++v19;
    --v20;
    if (v21)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  v23 = &v73;
LABEL_14:
  v24 = *(v23 - 32);
  v25 = v66;
  v26 = v63;
  v54 = *(v65 + 16);
  v54(v63, v24, v66, v16);
  v27 = v60;
  v28 = v64;
  v29 = v61;
  (*(v60 + 16))(v64, v59, v61);
  (*(v27 + 56))(v28, 0, 1, v29);
  result = [objc_allocWithZone(MEMORY[0x1E69A4300]) init];
  v31 = v62;
  if (result)
  {
    v32 = result;
    v33 = v55;
    sub_1D149D62C(v28, v55);
    if ((*(v27 + 48))(v33, 1, v29) == 1)
    {
      sub_1D14F44CC(v33, &qword_1EE05B520, MEMORY[0x1E6968130]);
    }

    else
    {
      v34 = v50;
      (*(v27 + 32))(v50, v33, v29);
      sub_1D1453BA0(0, &qword_1EE0566F8, 0x1E69A41A8);
      v35 = sub_1D15A44A8();
      [v32 setDateInterval_];

      v28 = v64;
      v36 = v34;
      v25 = v66;
      (*(v27 + 8))(v36, v29);
    }

    [v32 setDataCount_];
    sub_1D14F44CC(v28, &qword_1EE05B520, MEMORY[0x1E6968130]);
    sub_1D1453BA0(0, &qword_1EE056650, 0x1E69A42E0);
    v37 = v56;
    (v54)(v56, v26, v25);
    v38 = v58;
    v39 = sub_1D153FD10(v38, v37);

    v40 = v32;

    result = [v39 data];
    if (result)
    {
      v41 = result;
      v42 = v26;
      v43 = v31;
      v44 = v52 | (v51 << 8);
      sub_1D1453BA0(0, &qword_1EE056670, 0x1E69A42A8);
      v45 = sub_1D15A2518();
      v47 = v46;

      v72 = 14;
      v69[0] = v53;
      v69[1] = v43;
      v69[2] = v44;
      v69[3] = 0;
      v70 = 0;
      v68 = 0;
      memset(v67, 0, sizeof(v67));
      v48 = sub_1D153FE24(v45, v47, &v72, v69, v40, 0, v67);
      sub_1D1498BF4(v45, v47);

      (*(v65 + 8))(v42, v66);
      return v48;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id static StatisticsCurrentValueSupport.makeTimePeriodCurrentValue(date:dataCount:supplementaryDateInterval:queryConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v37 = a1;
  v4 = sub_1D15A26A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D15A22A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455B78(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v19 = *(v9 + 16);
  v36 = a3;
  v19(&v34 - v17, a3, v8, v16);
  (*(v9 + 56))(v18, 0, 1, v8);
  result = [objc_allocWithZone(MEMORY[0x1E69A4300]) init];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = result;
  sub_1D149D62C(v18, v14);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_1D14F44CC(v14, &qword_1EE05B520, MEMORY[0x1E6968130]);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_1D1453BA0(0, &qword_1EE0566F8, 0x1E69A41A8);
    v22 = sub_1D15A44A8();
    [v21 setDateInterval_];

    (*(v9 + 8))(v11, v8);
  }

  [v21 setDataCount_];
  sub_1D14F44CC(v18, &qword_1EE05B520, MEMORY[0x1E6968130]);
  sub_1D15A2298();
  v24 = v23;
  (*(v5 + 16))(v7, v37, v4);
  result = [objc_allocWithZone(MEMORY[0x1E69A4308]) init];
  if (!result)
  {
    goto LABEL_9;
  }

  v25 = result;
  [v25 setTimeInterval_];
  v26 = sub_1D15A2618();
  v27 = MEMORY[0x1D388B370]();

  [v25 setDateData_];
  (*(v5 + 8))(v7, v4);
  v28 = v21;
  result = [v25 data];
  if (result)
  {
    v29 = result;
    sub_1D1453BA0(0, &qword_1EE056670, 0x1E69A42A8);
    v30 = sub_1D15A2518();
    v32 = v31;

    v42 = 18;
    memset(v40, 0, sizeof(v40));
    v41 = 24;
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v33 = sub_1D153FE24(v30, v32, &v42, v40, v28, 0, v38);
    sub_1D1498BF4(v30, v32);

    return v33;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t StatisticsCurrentValueSupport.Failure.localizedDescription.getter()
{
  v1 = *v0;
  sub_1D14F4528(*v0, v0[1]);
  return v1;
}

unint64_t sub_1D14F4474()
{
  result = qword_1EE05B3F0;
  if (!qword_1EE05B3F0)
  {
    sub_1D15A26A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B3F0);
  }

  return result;
}

uint64_t sub_1D14F44CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1455B78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D14F4560(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D14F45A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation.init(supplementaryLabelConfiguration:sampleCount:dateInterval:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  *a5 = 2;
  v10 = *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0) + 24);
  v11 = sub_1D15A22A8();
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  *a5 = v9;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;

  return sub_1D14F46E4(a4, a5 + v10);
}

uint64_t sub_1D14F46E4(uint64_t a1, uint64_t a2)
{
  sub_1D14F524C(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.init(displayType:categoryValue:healthStore:unitPreferenceController:forceDayGranularity:metadata:supplementaryFormatInformation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1D159BDE4(MEMORY[0x1E69E7CC0]);
  *a8 = a1;
  *(a8 + 8) = a2;
  type metadata accessor for MostRecentSampleSnidgetStringBuilder();
  v16 = swift_allocObject();
  v16[2] = a3;
  v17 = objc_opt_self();
  v18 = a3;
  v16[4] = [v17 sharedInstanceForHealthStore_];

  v16[3] = a4;

  v19 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0);
  *(a8 + *(v19 + 36)) = v16;
  *(a8 + 16) = a5;
  *(a8 + 24) = a6;
  v20 = a8 + *(v19 + 32);

  return sub_1D14F5120(a7, v20);
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation.sampleCount.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0) + 24);

  return sub_1D149D62C(v3, a1);
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation.dateInterval.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0) + 24);

  return sub_1D14F46E4(a1, v3);
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.supplementaryFormatInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0) + 32);

  return sub_1D14F5184(v3, a1);
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.supplementaryFormatInformation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0) + 32);

  return sub_1D14F51E8(a1, v3);
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.primaryString.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1D14F524C(0, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_1D15A23F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0) + 36));
  v12 = *v2;
  v13 = *(v2 + 8);
  sub_1D149C950(*v2, *(v2 + 24), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D14F52A0(v6, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
    v14 = [v12 presentation];
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v16 = [v14 adjustedValueForDaemonValue_];

    v17 = [v12 hk:0 valueFormatterForUnit:?];
    v18 = sub_1D15A3058();
    v19 = *(v11 + 24);
    v20 = v18;
    v21 = sub_1D15A3068();
    v22 = [v17 attributedStringFromValue:v16 displayType:v12 unitController:v19 valueFont:v20 unitFont:v21];

    if (!v22)
    {

      v24 = 1;
      return (*(v8 + 56))(a1, v24, 1, v7);
    }

    sub_1D15A2428();
  }

  else
  {
    v23 = *(v8 + 32);
    v23(v10, v6, v7);
    v23(a1, v10, v7);
  }

  v24 = 0;
  return (*(v8 + 56))(a1, v24, 1, v7);
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.supplementaryString.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0) + 32));
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = sub_1D15A23F8();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }

  else
  {
    v15 = v7 & 1;
    v11 = *(v6 + 1);
    v12 = v6[16];
    sub_1D14F5184(v6, v5);
    v13 = *(v3 + 24);
    MostRecentSampleSnidgetStringBuilder.makeMostRecentSampleSupplementaryString(supplementaryLabelConfiguration:supplementaryLabelInfo:)(&v15, v11, v12, &v5[v13], a1);
    return sub_1D14F52A0(&v5[v13], &qword_1EE05B520, MEMORY[0x1E6968130]);
  }
}

uint64_t sub_1D14F4F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v2 + *(a1 + 32));
  v9 = *v8;
  if (v9 == 2)
  {
    v10 = sub_1D15A23F8();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }

  else
  {
    v17 = v9 & 1;
    v13 = *(v8 + 1);
    v14 = v8[16];
    sub_1D14F5184(v8, v7);
    v15 = *(v5 + 24);
    MostRecentSampleSnidgetStringBuilder.makeMostRecentSampleSupplementaryString(supplementaryLabelConfiguration:supplementaryLabelInfo:)(&v17, v13, v14, &v7[v15], a2);
    return sub_1D14F52A0(&v7[v15], &qword_1EE05B520, MEMORY[0x1E6968130]);
  }
}

uint64_t sub_1D14F5120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D14F5184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D14F51E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D14F524C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D14F52A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D14F524C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D14F5360(uint64_t a1)
{
  sub_1D14F542C();
  if (v1 <= 0x3F)
  {
    sub_1D14F5478();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MostRecentSampleSnidgetStringBuilder();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D14F542C()
{
  result = qword_1EE05AD58;
  if (!qword_1EE05AD58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE05AD58);
  }

  return result;
}

void sub_1D14F5478()
{
  if (!qword_1EE0568B8)
  {
    v0 = sub_1D15A3E78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0568B8);
    }
  }
}

void sub_1D14F5504(uint64_t a1)
{
  sub_1D14F55DC(319, &qword_1EE057818, &type metadata for SnippetSupplementaryLabelConfiguration);
  if (v1 <= 0x3F)
  {
    sub_1D14F55DC(319, &qword_1EE059748, MEMORY[0x1E69E6530]);
    if (v2 <= 0x3F)
    {
      sub_1D14F524C(319, &qword_1EE05B520, MEMORY[0x1E6968130]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D14F55DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1D14F5628(uint64_t a1, void *a2)
{

  sub_1D15A2D38();

  return result;
}

uint64_t sub_1D14F5698()
{

  sub_1D15A2D28();

  return v1;
}

id sub_1D14F56E8()
{
  v1 = qword_1EE05B1C0;
  v2 = *(v0 + qword_1EE05B1C0);
  if (v2)
  {
    v3 = *(v0 + qword_1EE05B1C0);
  }

  else
  {
    sub_1D14F5754((v0 + qword_1EE068370));
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D14F5754(char *a1)
{
  v63 = a1;
  v2 = sub_1D15A22A8();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v55 = v3;
  v56 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D15A26A8();
  v4 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D15A2708();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D15A2848();
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D15A31D8();
  v59 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v53 = v14;
  v54 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v18 = qword_1EE05B398;
  v64 = v1;
  v65 = v17;
  sub_1D15A31C8();
  (*(v8 + 104))(v10, *MEMORY[0x1E6969868], v7);
  sub_1D15A2718();
  (*(v8 + 8))(v10, v7);
  v19 = v63;
  sub_1D15A2288();
  v20 = sub_1D15A2618();
  v21 = *(v4 + 8);
  v22 = v62;
  v21(v6, v62);
  v23 = sub_1D15A27B8();
  v24 = [v20 hk:v23 morningIndexWithCalendar:?];

  sub_1D15A2258();
  v25 = sub_1D15A2618();
  v21(v6, v22);
  v26 = sub_1D15A27B8();
  v27 = [v25 hk:v26 morningIndexWithCalendar:?];

  v62 = v24;
  v28 = v27 - v24;
  if (__OFSUB__(v27, v24))
  {
    __break(1u);
  }

  else if (!__OFADD__(v28, 1))
  {
    v29 = v13;
    v30 = v19;
    v52 = *&v64[qword_1EE068230];
    v51 = v28 + 1;
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = v59;
    v33 = v54;
    (*(v59 + 16))(v54, v65, v66);
    v35 = v56;
    v34 = v57;
    v36 = v58;
    (*(v57 + 16))(v56, v30, v58);
    v37 = *(v32 + 80);
    v63 = v29;
    v38 = (v37 + 16) & ~v37;
    v39 = (v53 + *(v34 + 80) + v38) & ~*(v34 + 80);
    v40 = (v55 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v42 = v33;
    v43 = v66;
    (*(v32 + 32))(v41 + v38, v42, v66);
    (*(v34 + 32))(v41 + v39, v35, v36);
    *(v41 + v40) = v31;
    v44 = objc_allocWithZone(MEMORY[0x1E696C470]);
    aBlock[4] = sub_1D14F7664;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D14F73E4;
    aBlock[3] = &block_descriptor_5;
    v45 = _Block_copy(aBlock);

    v46 = [v44 initWithMorningIndexRange:v62 ascending:v51 limit:1 options:0 resultsHandler:{v52, v45}];
    _Block_release(v45);

    v47 = v46;
    v48 = v64;
    v49 = [v64 name];
    [v47 setDebugIdentifier_];

    [v47 setCacheSettings_];
    [v47 setQualityOfService_];

    (*(v60 + 8))(v63, v61);
    (*(v32 + 8))(v65, v43);
    return;
  }

  __break(1u);
}

id SleepQueryOperation.__allocating_init(dateInterval:name:queryOptions:queryQualityOfService:queryCacheSettings:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v8 = v7;
  v14 = objc_allocWithZone(v7);
  v15 = qword_1EE058E20;
  sub_1D1487B04();
  v16 = swift_allocError();
  *v17 = 0;
  v29 = v16;
  v30 = 1;
  sub_1D14F6344(0, &qword_1EE059400, sub_1D14F6294, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v14[v15] = sub_1D15A2D68();
  *&v14[qword_1EE05B1C0] = 0;
  v18 = qword_1EE068370;
  v19 = sub_1D15A22A8();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v14[v18], a1, v19);
  *&v14[qword_1EE068378] = a7;
  *&v14[qword_1EE068230] = a4;
  *&v14[qword_1EE068368] = a5;
  *&v14[qword_1EE068228] = a6;
  v28.receiver = v14;
  v28.super_class = v8;
  v21 = a7;
  v22 = a6;
  v23 = objc_msgSendSuper2(&v28, sel_init);
  v24 = v23;
  if (a3)
  {
    v25 = sub_1D15A3EF8();
  }

  else
  {
    v25 = 0;
  }

  [v23 setName_];

  (*(v20 + 8))(a1, v19);
  return v23;
}