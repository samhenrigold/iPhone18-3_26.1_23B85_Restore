id sub_1DD488B98(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + 24))
  {
    return 0;
  }

  v3 = *(v2 + 25);
  if (v3 == 13)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = *(v1 + 48);

  v8 = sub_1DD488C68(v7);

  sub_1DD488E50();
  v9 = 0;
  if ((v3 - 1) <= 0xB)
  {
    v9 = qword_1DD64F850[(v3 - 1)];
  }

  v4 = sub_1DD4E099C(v9, v8, v6);

  return v4;
}

uint64_t sub_1DD488C68(uint64_t a1)
{
  sub_1DD487C10(a1);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      v3 |= qword_1DD64F8B0[v5];
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1DD488CD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v13 = sub_1DD63CBB8();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v13) != 1)
  {
    v14 = sub_1DD63CA08();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v13) != 1)
  {
    v15 = sub_1DD63CA08();
    (*(*(v13 - 8) + 8))(a2, v13);
    if (a5)
    {
      goto LABEL_5;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v15 = 0;
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_5:
  v16 = sub_1DD63FDA8();

LABEL_8:
  v17 = [v7 initWithStartDateComponents:v14 endDateComponents:v15 recurrenceRule:a3 userInput:v16 allDay:a6];

  return v17;
}

unint64_t sub_1DD488E50()
{
  result = qword_1ECCDD378;
  if (!qword_1ECCDD378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDD378);
  }

  return result;
}

unint64_t sub_1DD488E94()
{
  result = qword_1ECCDC740;
  if (!qword_1ECCDC740)
  {
    type metadata accessor for DateTime();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC740);
  }

  return result;
}

void OUTLINED_FUNCTION_3_35()
{

  JUMPOUT(0x1E12B3DA0);
}

uint64_t DateTime.RecurrencePattern.DefinedRecurrencePattern.init(rawValue:)@<X0>(char *a2@<X8>)
{
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1DD488FBC@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.RecurrencePattern.DefinedRecurrencePattern.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE800000000000000;
  return result;
}

unint64_t sub_1DD48909C()
{
  result = qword_1ECCDD380;
  if (!qword_1ECCDD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD380);
  }

  return result;
}

_BYTE *_s24DefinedRecurrencePatternOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4891CC()
{
  result = qword_1ECCDD388;
  if (!qword_1ECCDD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD388);
  }

  return result;
}

uint64_t DateTime.__allocating_init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  OUTLINED_FUNCTION_1_47();
  v16 = swift_allocObject();
  DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t DateTime.__allocating_init(withDate:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_47();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  result = OUTLINED_FUNCTION_0_60(v2);
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t DateTime.__allocating_init(occurringIn:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_47();
  result = swift_allocObject();
  *(result + 56) = a1;
  *(result + 64) = 0;
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 48) = 4;
  return result;
}

BOOL static DateTime.> infix(_:_:)(uint64_t a1)
{
  type metadata accessor for DateTime();
  v1 = OUTLINED_FUNCTION_1_8();
  return !static DateTime.<= infix(_:_:)(v1);
}

BOOL static DateTime.<= infix(_:_:)(uint64_t a1)
{
  type metadata accessor for DateTime();
  v1 = OUTLINED_FUNCTION_1_8();
  if (static DateTime.< infix(_:_:)(v1, v2))
  {
    return 1;
  }

  v4 = OUTLINED_FUNCTION_1_8();
  return static DateTime.== infix(_:_:)(v4, v5);
}

BOOL static DateTime.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  v4 = a2[2];
  if (!v4)
  {
    return 0;
  }

  type metadata accessor for DateTime.Date();
  if (static DateTime.Date.< infix(_:_:)(v2, v4))
  {
    return 1;
  }

  if (!static DateTime.Date.== infix(_:_:)(v2, v4))
  {
    goto LABEL_10;
  }

  v7 = a1[3];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = a2[3];
  if (!v8)
  {
    goto LABEL_10;
  }

  type metadata accessor for DateTime.Time();
  if (static DateTime.Time.< infix(_:_:)(v7, v8))
  {

    return 1;
  }

  if (!static DateTime.Time.== infix(_:_:)(v7, v8))
  {
    goto LABEL_10;
  }

  v9 = a1[7];
  if (!v9)
  {

LABEL_19:

LABEL_10:

    return 0;
  }

  v10 = a2[7];
  if (!v10)
  {

    goto LABEL_19;
  }

  type metadata accessor for DateTime.DateTimeRange();

  v11 = static DateTime.DateTimeRange.< infix(_:_:)(v9, v10);

  return (v11 & 1) != 0;
}

BOOL static DateTime.>= infix(_:_:)(uint64_t a1)
{
  type metadata accessor for DateTime();
  v1 = OUTLINED_FUNCTION_1_8();
  return !static DateTime.< infix(_:_:)(v1, v2);
}

uint64_t DateTime.__allocating_init(withDate:time:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_47();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  result = OUTLINED_FUNCTION_0_60(v4);
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t DateTime.__allocating_init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1_47();
  result = swift_allocObject();
  v13 = *a3;
  v14 = *a5;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v13;
  *(result + 40) = a4;
  *(result + 48) = v14;
  *(result + 56) = a6;
  *(result + 64) = 0;
  return result;
}

void sub_1DD489734(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 64) = v2;
}

uint64_t sub_1DD489774()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = sub_1DD63D2D8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = sub_1DD63D328();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  result = sub_1DD63CB68(v6, v3, 0, 1, 0, 1, 0, 1, 0, 1, 0);
  if (*(v0 + 16))
  {

    sub_1DD63CA38();
    sub_1DD63CAC8();
    sub_1DD63CAA8();
    sub_1DD63CB58();
  }

  v10 = *(v0 + 24);
  if (v10)
  {
    if (*(v10 + 24) == 1 || *(v10 + 57) == 2)
    {
    }

    else
    {

      sub_1DD63CA88();
    }

    sub_1DD63CAF8();
    sub_1DD63CB18();
  }

  return result;
}

uint64_t DateTime.init(withDate:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return OUTLINED_FUNCTION_2_38();
}

uint64_t DateTime.init(withDate:time:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_2_38();
}

uint64_t DateTime.__allocating_init(withDate:time:occurringIn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_47();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[7] = a3;
  v6[8] = 0;
  return OUTLINED_FUNCTION_0_60(v6);
}

uint64_t DateTime.init(withDate:time:occurringIn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 56) = a3;
  *(v3 + 64) = 0;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  return OUTLINED_FUNCTION_5_38();
}

uint64_t DateTime.__allocating_init(withDefinedValue:)()
{
  OUTLINED_FUNCTION_1_47();
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 48) = 4;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t DateTime.init(withDefinedValue:)()
{
  result = v0;
  *(v0 + 40) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 48) = 4;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

uint64_t DateTime.__allocating_init(withTime:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_47();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  result = OUTLINED_FUNCTION_0_60(v2);
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t DateTime.init(withTime:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return OUTLINED_FUNCTION_2_38();
}

uint64_t DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v7 = *a3;
  v8 = *a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v7;
  *(v6 + 40) = a4;
  *(v6 + 48) = v8;
  *(v6 + 56) = a6;
  *(v6 + 64) = 0;
  return v6;
}

uint64_t DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v9 = v8;
  v16 = *a4;
  v17 = *a8;
  *(v9 + 64) = 0;
  v24 = v16;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  v18 = DateTime.Time.init(withHour:minute:second:meridiem:)(a1, a2, a3, &v24);
  v23 = v17;
  swift_allocObject();
  v19 = DateTime.Time.init(withHour:minute:second:meridiem:)(a5, a6, a7, &v23);
  *(v9 + 24) = v18;
  type metadata accessor for DateTime();
  OUTLINED_FUNCTION_23_5();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = v18;
  *(v20 + 32) = 1;
  *(v20 + 40) = 0;
  *(v20 + 48) = 4;
  *(v20 + 56) = 0;
  *(v20 + 64) = 0;
  OUTLINED_FUNCTION_23_5();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = v19;
  *(v21 + 32) = 1;
  *(v21 + 40) = 0;
  *(v21 + 48) = 4;
  *(v21 + 56) = 0;
  *(v21 + 64) = 0;
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  *(v9 + 56) = DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v20, v21);
  *(v9 + 16) = 0;
  *(v9 + 32) = 1;
  *(v9 + 40) = 0;
  *(v9 + 48) = 4;

  return v9;
}

uint64_t DateTime.__allocating_init(withStartHour:startMinute:startSecond:startMeridiem:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  OUTLINED_FUNCTION_1_47();
  v8 = swift_allocObject();
  DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:)(a1, a2, a3, a4);
  return v8;
}

uint64_t DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v9 = *a4;
  *(v5 + 64) = 0;
  v12 = v9;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  v10 = DateTime.Time.init(withHour:minute:second:meridiem:)(a1, a2, a3, &v12);
  *(v5 + 56) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = v10;
  *(v5 + 32) = 1;
  *(v5 + 40) = 0;
  *(v5 + 48) = 4;
  return v5;
}

uint64_t DateTime.__allocating_init(withDate:occurringIn:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_47();
  v4 = swift_allocObject();
  v4[7] = a2;
  v4[8] = 0;
  v4[2] = a1;
  v4[3] = 0;
  return OUTLINED_FUNCTION_0_60(v4);
}

uint64_t DateTime.init(withDate:occurringIn:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  *(v2 + 64) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;
  *(v2 + 40) = 0;
  return OUTLINED_FUNCTION_5_38();
}

uint64_t DateTime.init(occurringIn:)(uint64_t a1)
{
  *(v1 + 56) = a1;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  return OUTLINED_FUNCTION_5_38();
}

uint64_t sub_1DD489E08(void *a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  if (!v3)
  {
    v5 = 0;
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 32);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *(v6 + 24);

LABEL_9:
  v8 = a1[2];
  type metadata accessor for DateTime();
  OUTLINED_FUNCTION_23_5();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v5;
  *(v9 + 32) = 1;
  *(v9 + 40) = 0;
  *(v9 + 48) = 4;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  v10 = a1[7];
  if (v10 && (v11 = *(v10 + 32)) != 0)
  {
    v12 = *(v11 + 16);
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_23_5();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v7;
  *(v13 + 32) = 1;
  *(v13 + 40) = 0;
  *(v13 + 48) = 4;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  v20 = 38;
  v19 = 20;
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v14 = DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(0, v9, v13, 0, 0, &v20, &v19);
  v15 = a1[2];
  v16 = a1[5];
  OUTLINED_FUNCTION_23_5();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v5;
  *(v17 + 32) = 1;
  *(v17 + 40) = v16;
  *(v17 + 48) = 4;
  *(v17 + 56) = v14;
  *(v17 + 64) = 0;

  return v17;
}

uint64_t sub_1DD489FC8(void *a1)
{
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_64();
    sub_1DD481A74(a1);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_64();
    sub_1DD5FBA5C();
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v1 + 32) == 1)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](0);
  }

  if (*(v1 + 40))
  {
    OUTLINED_FUNCTION_64();
    sub_1DD57D78C(a1);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (!*(v1 + 56))
  {
    return OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_64();
  return sub_1DD49CDC8();
}

BOOL static DateTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    type metadata accessor for DateTime.Date();

    v6 = static DateTime.Date.== infix(_:_:)(v4, v5);

    if (!v6)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  type metadata accessor for DateTime.Time();
  if (!static DateTime.Time.== infix(_:_:)(v7, v8))
  {
    return 0;
  }

LABEL_11:
  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v10 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!v10)
    {
      return 0;
    }

    type metadata accessor for DateTime.DateTimeRange();

    v11 = static DateTime.DateTimeRange.== infix(_:_:)();

    if (!v11)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = *(a1 + 40);
  v13 = *(a2 + 40);
  result = (v12 | v13) == 0;
  if (v12)
  {
    if (v13)
    {
      type metadata accessor for DateTime.RecurrencePattern();

      v14 = OUTLINED_FUNCTION_1_8();
      v16 = static DateTime.RecurrencePattern.== infix(_:_:)(v14, v15);

      return v16 & 1;
    }
  }

  return result;
}

uint64_t sub_1DD48A1FC()
{
  if (v0[2])
  {
    OUTLINED_FUNCTION_23_15();
    v1 = sub_1DD481F00();
    MEMORY[0x1E12B2260](v1);

    sub_1DD3BE2A4();
    v3 = v2;
    if (*(v2 + 16) >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v3 = v13;
    }

    OUTLINED_FUNCTION_16_22();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v0[3])
  {
    OUTLINED_FUNCTION_23_15();
    v4 = sub_1DD5FBC68();
    MEMORY[0x1E12B2260](v4);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v3 = v14;
    }

    if (*(v3 + 16) >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v3 = v15;
    }

    OUTLINED_FUNCTION_16_22();
  }

  if (v0[7])
  {

    v5 = sub_1DD49D2E4();
    MEMORY[0x1E12B2260](v5);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v3 = v16;
    }

    if (*(v3 + 16) >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v3 = v17;
    }

    OUTLINED_FUNCTION_16_22();
  }

  if (v0[5])
  {

    sub_1DD6408D8();

    v6 = sub_1DD57DA68();
    MEMORY[0x1E12B2260](v6);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v3 = v18;
    }

    v7 = *(v3 + 16);
    if (v7 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v3 = v19;
    }

    *(v3 + 16) = v7 + 1;
    v8 = v3 + 16 * v7;
    *(v8 + 32) = 0xD000000000000012;
    *(v8 + 40) = 0x80000001DD66D350;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v9 = sub_1DD63FD58();
  v11 = v10;

  MEMORY[0x1E12B2260](v9, v11);

  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0x656D695465746144;
}

uint64_t sub_1DD48A504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701669236 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5664656E69666564 && a2 == 0xEC00000065756C61;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001DD66D3A0 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C61726F706D6574 && a2 == 0xEE00746E65746E49;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6972727563636FLL && a2 == 0xEB000000006E4967;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000015 && 0x80000001DD66D3D0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD640CD8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD48A750(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 1701669236;
      break;
    case 2:
      result = 0x5664656E69666564;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6C61726F706D6574;
      break;
    case 5:
      result = 0x6E6972727563636FLL;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD48A838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD48A504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD48A860(uint64_t a1)
{
  v2 = sub_1DD48B254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD48A89C(uint64_t a1)
{
  v2 = sub_1DD48B254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTime.deinit()
{

  return v0;
}

uint64_t DateTime.__deallocating_deinit()
{
  DateTime.deinit();
  OUTLINED_FUNCTION_1_47();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD48A93C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD390, &qword_1DD64FA38);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD48B254();
  sub_1DD640EF8();
  v26[0] = *(v3 + 16);
  LOBYTE(v25) = 0;
  type metadata accessor for DateTime.Date();
  OUTLINED_FUNCTION_9_25();
  v13 = sub_1DD48B4A0(v11, 255, v12, &protocol conformance descriptor for DateTime.Date);
  OUTLINED_FUNCTION_4_31(v13);
  if (!v2)
  {
    v26[0] = *(v3 + 24);
    LOBYTE(v25) = 1;
    type metadata accessor for DateTime.Time();
    OUTLINED_FUNCTION_12_21();
    v16 = sub_1DD48B4A0(v14, 255, v15, &protocol conformance descriptor for DateTime.Time);
    OUTLINED_FUNCTION_4_31(v16);
    LOBYTE(v26[0]) = *(v3 + 32);
    LOBYTE(v25) = 2;
    sub_1DD48B2A8();
    OUTLINED_FUNCTION_10_4();
    sub_1DD640C08();
    v26[0] = *(v3 + 40);
    LOBYTE(v25) = 3;
    type metadata accessor for DateTime.RecurrencePattern();
    OUTLINED_FUNCTION_11_25();
    v19 = sub_1DD48B4A0(v17, 255, v18, &protocol conformance descriptor for DateTime.RecurrencePattern);
    OUTLINED_FUNCTION_4_31(v19);
    LOBYTE(v26[0]) = *(v3 + 48);
    LOBYTE(v25) = 4;
    sub_1DD48B2FC();
    OUTLINED_FUNCTION_10_4();
    sub_1DD640C08();
    v26[0] = *(v3 + 56);
    LOBYTE(v25) = 5;
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_10_28();
    v22 = sub_1DD48B4A0(v20, 255, v21, &protocol conformance descriptor for DateTime.DateTimeRange);
    OUTLINED_FUNCTION_4_31(v22);
    swift_beginAccess();
    v25 = *(v3 + 64);
    v24[15] = 6;
    sub_1DD48B350();
    OUTLINED_FUNCTION_10_4();
    sub_1DD640C68();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1DD48AC3C()
{
  sub_1DD640E28();
  sub_1DD489FC8(v1);
  return sub_1DD640E78();
}

uint64_t DateTime.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_1_47();
  v2 = swift_allocObject();
  DateTime.init(from:)(a1);
  return v2;
}

uint64_t DateTime.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD3D0, &qword_1DD64FA40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  *(v1 + 64) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD48B254();
  sub_1DD640ED8();
  if (v2)
  {
    type metadata accessor for DateTime();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_9_25();
    sub_1DD48B4A0(v5, 255, v6, &protocol conformance descriptor for DateTime.Date);
    OUTLINED_FUNCTION_3_36();
    *(v1 + 16) = v16;
    type metadata accessor for DateTime.Time();
    OUTLINED_FUNCTION_12_21();
    sub_1DD48B4A0(v7, 255, v8, &protocol conformance descriptor for DateTime.Time);
    OUTLINED_FUNCTION_3_36();
    *(v1 + 24) = v16;
    sub_1DD48B3A4();
    OUTLINED_FUNCTION_17_21();
    sub_1DD640B18();
    *(v1 + 32) = v16;
    type metadata accessor for DateTime.RecurrencePattern();
    OUTLINED_FUNCTION_11_25();
    sub_1DD48B4A0(v9, 255, v10, &protocol conformance descriptor for DateTime.RecurrencePattern);
    OUTLINED_FUNCTION_3_36();
    *(v1 + 40) = v16;
    sub_1DD48B3F8();
    OUTLINED_FUNCTION_17_21();
    sub_1DD640B18();
    *(v1 + 48) = v16;
    type metadata accessor for DateTime.DateTimeRange();
    LOBYTE(v17) = 5;
    OUTLINED_FUNCTION_10_28();
    sub_1DD48B4A0(v12, 255, v13, &protocol conformance descriptor for DateTime.DateTimeRange);
    OUTLINED_FUNCTION_3_36();
    *(v1 + 56) = v16;
    sub_1DD48B44C();
    OUTLINED_FUNCTION_17_21();
    sub_1DD640B78();
    v14 = OUTLINED_FUNCTION_8_27();
    v15(v14);
    swift_beginAccess();
    *(v1 + 64) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1DD48B0EC(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD489FC8(v2);
  return sub_1DD640E78();
}

uint64_t sub_1DD48B1E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTime.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DD48B254()
{
  result = qword_1ECCDD398;
  if (!qword_1ECCDD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD398);
  }

  return result;
}

unint64_t sub_1DD48B2A8()
{
  result = qword_1ECCDD3B0;
  if (!qword_1ECCDD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD3B0);
  }

  return result;
}

unint64_t sub_1DD48B2FC()
{
  result = qword_1ECCDD3C0;
  if (!qword_1ECCDD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD3C0);
  }

  return result;
}

unint64_t sub_1DD48B350()
{
  result = qword_1ECCDD3C8;
  if (!qword_1ECCDD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD3C8);
  }

  return result;
}

unint64_t sub_1DD48B3A4()
{
  result = qword_1ECCDD3E8;
  if (!qword_1ECCDD3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD3E8);
  }

  return result;
}

unint64_t sub_1DD48B3F8()
{
  result = qword_1ECCDD3F8;
  if (!qword_1ECCDD3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD3F8);
  }

  return result;
}

unint64_t sub_1DD48B44C()
{
  result = qword_1ECCDD400;
  if (!qword_1ECCDD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD400);
  }

  return result;
}

uint64_t sub_1DD48B4A0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

_BYTE *storeEnumTagSinglePayload for DateTime.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD48B7DC()
{
  result = qword_1ECCDD410;
  if (!qword_1ECCDD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD410);
  }

  return result;
}

unint64_t sub_1DD48B834()
{
  result = qword_1ECCDD418;
  if (!qword_1ECCDD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD418);
  }

  return result;
}

unint64_t sub_1DD48B88C()
{
  result = qword_1ECCDD420;
  if (!qword_1ECCDD420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD420);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_36()
{

  return sub_1DD640B18();
}

_BYTE *_s5BoundOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD48BBA0()
{
  OUTLINED_FUNCTION_79();
  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t sub_1DD48BCB0()
{
  OUTLINED_FUNCTION_0_61();
  sub_1DD640E58();
  return sub_1DD640E78();
}

uint64_t sub_1DD48BD10()
{
  OUTLINED_FUNCTION_79();
  MEMORY[0x1E12B3140](0);
  return sub_1DD640E78();
}

uint64_t sub_1DD48BD70()
{
  OUTLINED_FUNCTION_0_61();
  MEMORY[0x1E12B3140](v0 + 1);
  return sub_1DD640E78();
}

uint64_t sub_1DD48BE34(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_79();
  v2 = sub_1DD538ED0(v1);
  OUTLINED_FUNCTION_2_39(v2, v3, v4);

  return sub_1DD640E78();
}

uint64_t sub_1DD48BEE8()
{
  OUTLINED_FUNCTION_0_61();
  MEMORY[0x1E12B3140](qword_1DD64FF58[v0]);
  return sub_1DD640E78();
}

uint64_t sub_1DD48BF84()
{
  OUTLINED_FUNCTION_0_61();
  MEMORY[0x1E12B3140](v0 & 1);
  return sub_1DD640E78();
}

uint64_t sub_1DD48C008(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_79();
  v4 = a2(a1);
  OUTLINED_FUNCTION_2_39(v4, v5, v6);

  return sub_1DD640E78();
}

uint64_t sub_1DD48C094(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_79();
  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t sub_1DD48C154(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_79();
  a2(v5, a1);
  return sub_1DD640E78();
}

uint64_t sub_1DD48C19C()
{
  OUTLINED_FUNCTION_0_61();
  MEMORY[0x1E12B3140](v0);
  return sub_1DD640E78();
}

uint64_t sub_1DD48C1D8(uint64_t a1)
{
  OUTLINED_FUNCTION_79();
  MEMORY[0x1E12B3140](a1);
  return sub_1DD640E78();
}

unint64_t sub_1DD48C230(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD48C27C(char a1)
{
  if (!a1)
  {
    return 0x7472617473;
  }

  if (a1 == 1)
  {
    return 6581861;
  }

  return 0x746573746F6ELL;
}

unint64_t sub_1DD48C2E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD48C230(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD48C318@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD48C27C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD48C348()
{
  result = qword_1ECCDD428;
  if (!qword_1ECCDD428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD428);
  }

  return result;
}

uint64_t sub_1DD48C3AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D218();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s19ConvergenceStrategyOMa(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC168, &unk_1DD64FFB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_1DD3DD8F4(a1, &v19 - v12);
  sub_1DD3DD8F4(a2, &v13[v15]);
  switch(__swift_getEnumTagSinglePayload(v13, 3, v4))
  {
    case 1u:
      if (OUTLINED_FUNCTION_0_62() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (OUTLINED_FUNCTION_0_62() == 2)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 3u:
      if (OUTLINED_FUNCTION_0_62() != 3)
      {
        goto LABEL_7;
      }

LABEL_5:
      sub_1DD3DD958(v13);
      v16 = 1;
      break;
    default:
      sub_1DD3DD8F4(v13, v10);
      if (OUTLINED_FUNCTION_0_62())
      {
        (*(v5 + 8))(v10, v4);
LABEL_7:
        sub_1DD48C670(v13);
        v16 = 0;
      }

      else
      {
        (*(v5 + 32))(v7, &v13[v15], v4);
        v16 = sub_1DD63D208();
        v18 = *(v5 + 8);
        v18(v7, v4);
        v18(v10, v4);
        sub_1DD3DD958(v13);
      }

      break;
  }

  return v16 & 1;
}

uint64_t _s19ConvergenceStrategyOMa(uint64_t a1)
{
  result = qword_1ECCDD430;
  if (!qword_1ECCDD430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD48C670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC168, &unk_1DD64FFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD48C700(uint64_t a1)
{
  v1 = sub_1DD63D218();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t _s5GrainOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s5GrainOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD48C8FC()
{
  OUTLINED_FUNCTION_2_40();
  v3 = v2;
  v4 = v1;
  switch(v5)
  {
    case 1:
      v4 = OUTLINED_FUNCTION_6_31();
      break;
    case 2:
      v4 = OUTLINED_FUNCTION_10_29();
      break;
    case 3:
      v4 = OUTLINED_FUNCTION_13_23();
      break;
    case 4:
      v4 = OUTLINED_FUNCTION_12_22();
      break;
    case 5:
      v4 = OUTLINED_FUNCTION_27_14();
      break;
    case 6:
      v4 = OUTLINED_FUNCTION_8_28();
      break;
    case 7:
      v4 = OUTLINED_FUNCTION_0_63();
      break;
    case 8:
      v4 = OUTLINED_FUNCTION_11_26();
      break;
    case 9:
      v4 = OUTLINED_FUNCTION_9_26();
      break;
    case 10:
      v4 = OUTLINED_FUNCTION_7_31();
      break;
    case 11:
      v4 = OUTLINED_FUNCTION_22_14();
      break;
    default:
      break;
  }

  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_3_37();
      break;
    case 2:
      OUTLINED_FUNCTION_15_19();
      break;
    case 3:
      OUTLINED_FUNCTION_18_18();
      break;
    case 4:
      OUTLINED_FUNCTION_17_22();
      break;
    case 5:
      OUTLINED_FUNCTION_26_16();
      break;
    case 6:
      OUTLINED_FUNCTION_5_39();
      break;
    case 7:
      OUTLINED_FUNCTION_1_48();
      break;
    case 8:
      OUTLINED_FUNCTION_16_23();
      break;
    case 9:
      OUTLINED_FUNCTION_14_24();
      break;
    case 10:
      OUTLINED_FUNCTION_4_32();
      break;
    case 11:
      OUTLINED_FUNCTION_21_15();
      break;
    default:
      break;
  }

  if (v4 == v1 && v0 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19_17(v4);

    v8 = v7 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_1DD48CA6C()
{
  OUTLINED_FUNCTION_25_9();
  v4 = v3 | 0x6973754274780000;
  if (v0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v0)
  {
    v6 = 0xEF7961447373656ELL;
  }

  else
  {
    v6 = v2;
  }

  if (v1)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = v4;
  }

  if (v1)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0xEF7961447373656ELL;
  }

  if (v5 == v7 && v6 == v8)
  {

    v11 = 1;
  }

  else
  {
    v10 = sub_1DD640CD8();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

BOOL sub_1DD48CB28()
{
  OUTLINED_FUNCTION_24_11();
  v0 = sub_1DD63CFC8();
  return OUTLINED_FUNCTION_20_17(v0);
}

uint64_t sub_1DD48CBB4()
{
  OUTLINED_FUNCTION_2_40();
  v4 = v3;
  v5 = "ISLAMIC_UMALQURA";
  v6 = v2;
  switch(v4)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_6_31();
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_10_29();
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_13_23();
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_12_22();
      break;
    case 5:
      v6 = 0xD000000000000010;
      v0 = 0x80000001DD668C10;
      break;
    case 6:
      v6 = OUTLINED_FUNCTION_8_28();
      break;
    case 7:
      v6 = OUTLINED_FUNCTION_0_63();
      break;
    case 8:
      v6 = OUTLINED_FUNCTION_11_26();
      break;
    case 9:
      v6 = OUTLINED_FUNCTION_9_26();
      break;
    case 10:
      v6 = OUTLINED_FUNCTION_7_31();
      break;
    case 11:
      v6 = OUTLINED_FUNCTION_22_14();
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_3_37();
      break;
    case 2:
      OUTLINED_FUNCTION_15_19();
      break;
    case 3:
      OUTLINED_FUNCTION_18_18();
      break;
    case 4:
      OUTLINED_FUNCTION_17_22();
      break;
    case 5:
      v2 = 0xD000000000000010;
      v7 = (v5 - 32) | 0x8000000000000000;
      break;
    case 6:
      OUTLINED_FUNCTION_5_39();
      break;
    case 7:
      OUTLINED_FUNCTION_1_48();
      break;
    case 8:
      OUTLINED_FUNCTION_16_23();
      break;
    case 9:
      OUTLINED_FUNCTION_14_24();
      break;
    case 10:
      OUTLINED_FUNCTION_4_32();
      break;
    case 11:
      OUTLINED_FUNCTION_21_15();
      break;
    default:
      break;
  }

  if (v6 == v2 && v0 == v7)
  {

    v10 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_19_17(v6);

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_1DD48CD38(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x697375427478656ELL;
  }

  if (v2)
  {
    v4 = 0xEF7961447373656ELL;
  }

  else
  {
    v4 = 0x80000001DD668CC0;
  }

  if (a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x697375427478656ELL;
  }

  if (a2)
  {
    v6 = 0x80000001DD668CC0;
  }

  else
  {
    v6 = 0xEF7961447373656ELL;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1DD640CD8();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

BOOL sub_1DD48CDFC()
{
  OUTLINED_FUNCTION_24_11();
  v0 = sub_1DD63CFC8();
  return OUTLINED_FUNCTION_20_17(v0);
}

uint64_t sub_1DD48CE70()
{
  OUTLINED_FUNCTION_2_40();
  v3 = v2;
  v4 = v1;
  switch(v5)
  {
    case 1:
      v4 = OUTLINED_FUNCTION_6_31();
      break;
    case 2:
      v4 = OUTLINED_FUNCTION_10_29();
      break;
    case 3:
      v4 = OUTLINED_FUNCTION_13_23();
      break;
    case 4:
      v4 = OUTLINED_FUNCTION_12_22();
      break;
    case 5:
      v4 = OUTLINED_FUNCTION_27_14();
      break;
    case 6:
      v4 = OUTLINED_FUNCTION_8_28();
      break;
    case 7:
      v4 = OUTLINED_FUNCTION_0_63();
      break;
    case 8:
      v4 = OUTLINED_FUNCTION_11_26();
      break;
    case 9:
      v4 = OUTLINED_FUNCTION_9_26();
      break;
    case 10:
      v4 = OUTLINED_FUNCTION_7_31();
      break;
    case 11:
      v4 = OUTLINED_FUNCTION_22_14();
      break;
    default:
      break;
  }

  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_3_37();
      break;
    case 2:
      OUTLINED_FUNCTION_15_19();
      break;
    case 3:
      OUTLINED_FUNCTION_18_18();
      break;
    case 4:
      OUTLINED_FUNCTION_17_22();
      break;
    case 5:
      OUTLINED_FUNCTION_26_16();
      break;
    case 6:
      OUTLINED_FUNCTION_5_39();
      break;
    case 7:
      OUTLINED_FUNCTION_1_48();
      break;
    case 8:
      OUTLINED_FUNCTION_16_23();
      break;
    case 9:
      OUTLINED_FUNCTION_14_24();
      break;
    case 10:
      OUTLINED_FUNCTION_4_32();
      break;
    case 11:
      OUTLINED_FUNCTION_21_15();
      break;
    default:
      break;
  }

  if (v4 == v1 && v0 == 0xE800000000000000)
  {
    v7 = 0;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19_17(v4);
  }

  return v7 & 1;
}

uint64_t sub_1DD48CFCC()
{
  OUTLINED_FUNCTION_25_9();
  v4 = v3 | 0x6973754274780000;
  if (v0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v0)
  {
    v6 = 0xEF7961447373656ELL;
  }

  else
  {
    v6 = v2;
  }

  if (v1)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = v4;
  }

  if (v1)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0xEF7961447373656ELL;
  }

  if (v5 == v7 && v6 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_19_17(v5);
  }

  return v10 & 1;
}

uint64_t sub_1DD48D068()
{
  OUTLINED_FUNCTION_24_11();

  return sub_1DD63CFC8();
}

BOOL sub_1DD48D0A4(uint64_t a1)
{
  v17 = *(a1 + 72);
  v2 = sub_1DD3B7F10();
  v9 = OUTLINED_FUNCTION_23_16(v2, MEMORY[0x1E69E6158], v3, v4, v5, v6, v7, v8, v17);
  if (v9 == -1)
  {
    return 1;
  }

  if (v9 == 1)
  {
    return 0;
  }

  return OUTLINED_FUNCTION_23_16(v9, MEMORY[0x1E69E6158], v10, v11, v12, v13, v14, v15, *(a1 + 40)) == -1;
}

unint64_t sub_1DD48D158(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

unint64_t sub_1DD48D168@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD48D158(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD48D194@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD48D150(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1DD48D1F0()
{
  result = qword_1ECCDD440;
  if (!qword_1ECCDD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD440);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_17(uint64_t a1)
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_24_11()
{

  return type metadata accessor for LearnedDisambiguation(0);
}

_BYTE *_s7MeasureOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD48D420()
{
  result = qword_1ECCDD448;
  if (!qword_1ECCDD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD448);
  }

  return result;
}

unsigned __int8 *_s6SourceOwet(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD7)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 0x26)
    {
      v7 = v6 - 37;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 5)
    {
      return (v7 - 4);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 41;
    if (a2 + 41 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 41);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *_s6SourceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 41;
  if (a3 + 41 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xD7)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xD6)
  {
    v7 = ((a2 - 215) >> 8) + 1;
    *result = a2 + 41;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 41;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD48D5F8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x26)
  {
    return v1 - 37;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1DD48D60C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 37;
  }

  return result;
}

BOOL sub_1DD48D62C(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case '&':
      if (v2 == 38)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    case '\'':
      if (v2 == 39)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    case '(':
      if (v2 != 40)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    case ')':
      if (v2 != 41)
      {
        goto LABEL_11;
      }

LABEL_9:
      result = 1;
      break;
    default:
      if ((v2 - 38) >= 4)
      {
        result = *a1 == v2;
      }

      else
      {
LABEL_11:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriInference18DateTimeConstraintC5ValueO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 5)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DD48D6E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 25))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 6)
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

uint64_t sub_1DD48D728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DD48D770(uint64_t result, unsigned int a2)
{
  v2 = a2 - 6;
  if (a2 >= 6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 6;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_1DD48D7A0()
{
  result = qword_1ECCDD450;
  if (!qword_1ECCDD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD450);
  }

  return result;
}

uint64_t sub_1DD48D7F4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *(a1 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  switch(v3)
  {
    case 0:
      if (v12)
      {
        return 0;
      }

      return v6 == *&v9;
    case 1:
      if (v12 != 1)
      {
        return 0;
      }

      return ((v9 ^ LODWORD(v6)) & 1) == 0;
    case 2:
      if (v12 != 2)
      {
        return 0;
      }

      v13 = *&v6 == v9;
      result = (*&v6 == v9) & v11;
      if (v13)
      {
        if (v8)
        {
          return result;
        }

        else
        {
          return (v7 == v10) & ~v11;
        }
      }

      return result;
    case 3:
      if (v12 != 3)
      {
        return 0;
      }

      if (*&v6 == v9 && v7 == v10)
      {
        if (v11 != v8)
        {
          return 0;
        }
      }

      else
      {
        v16 = sub_1DD640CD8();
        result = 0;
        if ((v16 & 1) == 0 || v11 != v8)
        {
          return result;
        }
      }

      result = (v11 & 0xFF00) == 0x1400 && (v8 & 0xFF00) == 5120;
      if ((v8 & 0xFF00) != 0x1400 && (v11 & 0xFF00) != 5120)
      {
        return ((v11 ^ v8) & 0xFF00) == 0;
      }

      return result;
    case 4:
      if (v12 != 4)
      {
        return 0;
      }

      return sub_1DD3AE3B4(LOBYTE(v6), v9);
    case 5:
      if (v12 != 5)
      {
        return 0;
      }

      if (v6 != *&v9 || (v10 ^ v7) != 0)
      {
        return 0;
      }

      v18 = *(a1 + 16);

      return sub_1DD57D41C(v18, v11);
    case 6:
      if (v7 | *&v6 | v8)
      {
        v19 = 0;
      }

      else
      {
        v19 = v12 == 6;
      }

      return v19 && (v10 | v9 | v11) == 0;
    default:
      return 0;
  }
}

void sub_1DD48D9CC(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  switch(v5)
  {
    case 1:
      MEMORY[0x1E12B3140](1);
      v8 = v2 & 1;
      goto LABEL_22;
    case 2:
      MEMORY[0x1E12B3140](2);
      MEMORY[0x1E12B3140](v2);
      if (v4)
      {
        goto LABEL_12;
      }

      sub_1DD640E48();
      v8 = v3;
      goto LABEL_22;
    case 3:
      MEMORY[0x1E12B3140](3);
      sub_1DD63FD28();
      MEMORY[0x1E12B3140](v4);
      if ((v4 & 0xFF00) == 0x1400)
      {
LABEL_12:
        sub_1DD640E48();
      }

      else
      {
        sub_1DD640E48();
        v8 = BYTE1(v4);
LABEL_22:
        MEMORY[0x1E12B3140](v8);
      }

      return;
    case 4:
      MEMORY[0x1E12B3140](4);

      sub_1DD408DD8(a1, v2);
      return;
    case 5:
      MEMORY[0x1E12B3140](5);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v2;
      }

      else
      {
        v9 = 0;
      }

      MEMORY[0x1E12B3170](v9);
      MEMORY[0x1E12B3140](v3);

      sub_1DD57F490(a1, v4, v10, v11, v12, v13, v14, v15);
      return;
    case 6:
      v8 = 6;
      goto LABEL_22;
    default:
      MEMORY[0x1E12B3140](0);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x1E12B3170](v7);
      return;
  }
}

uint64_t sub_1DD48DB34()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1DD640E28();
  sub_1DD48D9CC(v4);
  return sub_1DD640E78();
}

uint64_t sub_1DD48DB9C(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1DD640E28();
  sub_1DD48D9CC(v5);
  return sub_1DD640E78();
}

uint64_t sub_1DD48DBF4(uint64_t a1, void (*a2)(uint64_t))
{
  v41 = sub_1DD63C868();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v40 = v7 - v6;
  sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v39 = v11;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1DD42B688();
    v14 = v47;
    result = sub_1DD55B198();
    v17 = result;
    v18 = 0;
    v46 = a1 + 56;
    v38 = v4;
    v36 = a1 + 64;
    v37 = v12;
    v19 = v4;
    v43 = a1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v17 < 1 << *(a1 + 32))
      {
        v20 = v17 >> 6;
        if ((*(v46 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v15)
        {
          goto LABEL_27;
        }

        v45 = v16;
        v44 = v15;
        v21 = v19;
        v22 = (*(v19 + 16))(v40, *(a1 + 48) + *(v19 + 72) * v17, v41);
        a2(v22);
        v23 = v14;
        (*(v21 + 8))(v40, v41);
        v24 = *(v14 + 16);
        if (v24 >= *(v14 + 24) >> 1)
        {
          sub_1DD42B688();
          v23 = v14;
        }

        *(v23 + 16) = v24 + 1;
        OUTLINED_FUNCTION_18_3();
        v14 = v23;
        result = (*(v26 + 32))(v23 + v25 + *(v26 + 72) * v24, v39);
        if (v45)
        {
          goto LABEL_31;
        }

        a1 = v43;
        v27 = 1 << *(v43 + 32);
        v19 = v38;
        if (v17 >= v27)
        {
          goto LABEL_28;
        }

        v28 = *(v46 + 8 * v20);
        if ((v28 & (1 << v17)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v43 + 36) != v44)
        {
          goto LABEL_30;
        }

        v29 = v28 & (-2 << (v17 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v17 & 0x7FFFFFFFFFFFFFC0;
          v30 = v37;
        }

        else
        {
          v31 = v20 << 6;
          v32 = v20 + 1;
          v30 = v37;
          v33 = (v36 + 8 * v20);
          while (v32 < (v27 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              result = sub_1DD3AA558(v17, v44, 0);
              v19 = v38;
              v27 = __clz(__rbit64(v34)) + v31;
              goto LABEL_19;
            }
          }

          result = sub_1DD3AA558(v17, v44, 0);
          v19 = v38;
LABEL_19:
          a1 = v43;
        }

        if (++v18 == v30)
        {
          return v14;
        }

        v16 = 0;
        v15 = *(a1 + 36);
        v17 = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD48DFB4(char a1, uint64_t a2, char a3, char a4, char *a5, char a6, char a7, char a8)
{
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *a5;
  *(v8 + 55) = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 49) = a3;
  *(v8 + 50) = a4;
  *(v8 + 51) = v11;
  *(v8 + 52) = a7;
  *(v8 + 53) = a6;
  *(v8 + 56) = MEMORY[0x1E69E7CC0];
  *(v8 + 54) = a8;
  return v8;
}

uint64_t sub_1DD48E004()
{
  sub_1DD6408D8();
  v1 = MEMORY[0x1E12B2260](0xD000000000000019, 0x80000001DD66D4A0);
  OUTLINED_FUNCTION_15_20(v1, v2, &_s5GrainON, v3, v4, v5, v6, v7, *(v0 + 16), 0xE000000000000000, v36, v39, 0);
  v8 = MEMORY[0x1E12B2260](0x3D646E756F622CLL, 0xE700000000000000);
  LOBYTE(v32) = *(v0 + 49);
  OUTLINED_FUNCTION_15_20(v8, v9, &_s5BoundON, v10, v11, v12, v13, v14, v32, v34, v37, v40, v43);
  v15 = MEMORY[0x1E12B2260](0x6572757361656D2CLL, 0xEA00000000005B3DLL);
  LOBYTE(v33) = *(v0 + 50);
  OUTLINED_FUNCTION_15_20(v15, v16, &_s7MeasureON, v17, v18, v19, v20, v21, v33, v35, v38, v41, v44);
  MEMORY[0x1E12B2260](0x5579427465732C5DLL, 0xEC0000003D726573);
  if (*(v0 + 53))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v0 + 53))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x1E12B2260](v22, v23);

  v24 = MEMORY[0x1E12B2260](0x3D65756C61762CLL, 0xE700000000000000);
  LOBYTE(v42) = *(v0 + 48);
  OUTLINED_FUNCTION_15_20(v24, v25, &_s5ValueON, v26, v27, v28, v29, v30, *(v0 + 24), *(v0 + 32), *(v0 + 40), v42, v45);
  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return v46;
}

void sub_1DD48E1B8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v32 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v39 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v43 = v13 - v12;
  if (*(v2 + 50) > 1u)
  {
    return;
  }

  v14 = MEMORY[0x1E6968120];
  if (!*(v2 + 49))
  {
    goto LABEL_5;
  }

  if (*(v2 + 49) == 1)
  {
    v14 = MEMORY[0x1E6968110];
LABEL_5:
    v31 = sub_1DD48DBF4(a1, v14);
    goto LABEL_7;
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v15 = sub_1DD48E73C();
  v38 = *(v15 + 16);
  if (v38)
  {
    v16 = 0;
    OUTLINED_FUNCTION_18_3();
    v35 = v15 + v17;
    v36 = v15;
    v18 = *(v31 + 16);
    v33 = (v19 + 8);
    v34 = v18;
    v37 = v9;
    while (v16 < *(v15 + 16))
    {
      v40 = v16;
      (*(v39 + 16))(v43, v35 + *(v39 + 72) * v16, v9);
      if (v18)
      {
        OUTLINED_FUNCTION_18_3();
        v21 = v31 + v20;
        v42 = *(v22 + 72);
        v23 = *(v22 + 16);
        v24 = v18;
        do
        {
          v23(v8, v21, v41);
          v25 = sub_1DD63D2C8();
          (*(v32 + 8))(v8, v41);
          v26 = *(v2 + 56);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 56) = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DD3BE460();
            v26 = v29;
            *(v2 + 56) = v29;
          }

          v28 = *(v26 + 16);
          if (v28 >= *(v26 + 24) >> 1)
          {
            sub_1DD3BE460();
            v26 = v30;
          }

          *(v26 + 16) = v28 + 1;
          *(v26 + 8 * v28 + 32) = v25;
          *(v2 + 56) = v26;
          v21 += v42;
          --v24;
        }

        while (v24);
      }

      v16 = v40 + 1;
      v9 = v37;
      (*v33)(v43, v37);
      v15 = v36;
      v18 = v34;
      if (v40 + 1 == v38)
      {

        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1DD48E554(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    v25 = v2;
    v26 = v3;
    if (*(a1 + 50) == *(a2 + 50) && (v6 = *(a1 + 24), v7 = *(a1 + 32), v8 = *(a1 + 40), v9 = *(a1 + 48), v21 = *(a1 + 24), v22 = v7, v23 = v8, v24 = v9, v10 = *(a2 + 32), v11 = *(a2 + 40), v12 = *(a2 + 48), v17 = *(a2 + 24), v18 = v10, v19 = v11, v20 = v12, sub_1DD48FEF0(v6, v7, v8, v9), sub_1DD48FEF0(v17, v10, v11, v12), v14 = sub_1DD48D7F4(&v21, &v17, v13), sub_1DD48FF14(v17, v18, v19, v20), sub_1DD48FF14(v21, v22, v23, v24), (v14 & 1) != 0) && (sub_1DD3B017C(*(a1 + 49), *(a2 + 49)) & 1) != 0)
    {
      v15 = *(a1 + 54) ^ *(a2 + 54) ^ 1;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1DD48E664(void *a1)
{
  MEMORY[0x1E12B3140](*(v1 + 16));
  sub_1DD48D9CC(a1);
  MEMORY[0x1E12B3140](*(v1 + 50));
  sub_1DD63FD28();

  return sub_1DD640E48();
}

uint64_t sub_1DD48E73C()
{
  v2 = MEMORY[0x1E69E7CC0];
  switch(*(v0 + 16))
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49();
      v4 = v3;
      OUTLINED_FUNCTION_3_38();
      v5 = swift_allocObject();
      v2 = v5;
      *(v5 + 16) = xmmword_1DD643F90;
      v6 = MEMORY[0x1E6969A98];
      goto LABEL_13;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49();
      v4 = v9;
      OUTLINED_FUNCTION_3_38();
      v5 = swift_allocObject();
      v2 = v5;
      *(v5 + 16) = xmmword_1DD643F90;
      v6 = MEMORY[0x1E6969A88];
      goto LABEL_13;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49();
      v4 = v7;
      OUTLINED_FUNCTION_3_38();
      v5 = swift_allocObject();
      v2 = v5;
      *(v5 + 16) = xmmword_1DD643F90;
      v6 = MEMORY[0x1E6969A58];
      goto LABEL_13;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49();
      v4 = v12;
      OUTLINED_FUNCTION_3_38();
      v5 = swift_allocObject();
      v2 = v5;
      *(v5 + 16) = xmmword_1DD643F90;
      v6 = MEMORY[0x1E6969A48];
      goto LABEL_13;
    case 6:
      if (*(v0 + 48) == 2)
      {
        v13 = *(v0 + 40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
        OUTLINED_FUNCTION_43();
        sub_1DD63D2B8();
        OUTLINED_FUNCTION_1_49();
        v15 = v14;
        v17 = *(v16 + 72);
        v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v2 = OUTLINED_FUNCTION_32_12();
        if (v13)
        {
          *(v2 + 16) = xmmword_1DD643F90;
          (*(v15 + 104))(v2 + v18, *MEMORY[0x1E6969AB0], v0);
        }

        else
        {
          *(v2 + 16) = xmmword_1DD643F80;
          v21 = v2 + v18;
          v22 = *(v15 + 104);
          v22(v21, *MEMORY[0x1E6969AB0], v0);
          v22(v21 + v17, *MEMORY[0x1E6969A30], v0);
        }
      }

      return v2;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49();
      v4 = v8;
      OUTLINED_FUNCTION_3_38();
      v5 = swift_allocObject();
      v2 = v5;
      *(v5 + 16) = xmmword_1DD643F90;
      v6 = MEMORY[0x1E6969A20];
      goto LABEL_13;
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49();
      v4 = v10;
      OUTLINED_FUNCTION_3_38();
      v5 = swift_allocObject();
      v2 = v5;
      *(v5 + 16) = xmmword_1DD643F90;
      v6 = MEMORY[0x1E6969A10];
      goto LABEL_13;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49();
      v4 = v11;
      OUTLINED_FUNCTION_3_38();
      v5 = swift_allocObject();
      v2 = v5;
      *(v5 + 16) = xmmword_1DD643F90;
      v6 = MEMORY[0x1E6969A78];
      goto LABEL_13;
    case 0xB:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49();
      v4 = v19;
      OUTLINED_FUNCTION_3_38();
      v5 = swift_allocObject();
      v2 = v5;
      *(v5 + 16) = xmmword_1DD643F90;
      v6 = MEMORY[0x1E6969A68];
LABEL_13:
      (*(v4 + 104))(v5 + v1, *v6, v0);
      break;
    default:
      return v2;
  }

  return v2;
}

void sub_1DD48ECD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v194 = &v189 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_0();
  v193 = v4;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_0();
  v192 = v6;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_0();
  v191 = v8;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_0();
  v190 = v10;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_0();
  v189 = v12;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v189 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v189 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v189 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v189 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v189 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v189 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v189 - v32;
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v189 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v189 - v40;
  v195 = v0;
  v42 = *(v0 + 16);
  v196 = MEMORY[0x1E69E7CC0];
  switch(v42)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      v43 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v43);
      OUTLINED_FUNCTION_24_12();
      v44 = swift_allocObject();
      v45 = OUTLINED_FUNCTION_21_16(v44, xmmword_1DD643F90);
      v48 = OUTLINED_FUNCTION_9_27(v41, v46, v47, v45);
      OUTLINED_FUNCTION_8_29(v18, v49, v50, v48);
      if (v52)
      {
        goto LABEL_69;
      }

      if (v51)
      {
        OUTLINED_FUNCTION_27_15();
LABEL_69:
        OUTLINED_FUNCTION_18_19();
        OUTLINED_FUNCTION_28_7();
        v196 = v44;
        v187 = 1;
        v186 = 0;
        goto LABEL_91;
      }

      OUTLINED_FUNCTION_31_13();
      if (v52)
      {
        goto LABEL_96;
      }

      if (v53 > -9.22337204e18)
      {
        OUTLINED_FUNCTION_19_2();
        if (!v54)
        {
          goto LABEL_110;
        }

        OUTLINED_FUNCTION_30_11();
        goto LABEL_69;
      }

      goto LABEL_103;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      OUTLINED_FUNCTION_43();
      v77 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v77);
      v78 = OUTLINED_FUNCTION_5_40();
      OUTLINED_FUNCTION_21_16(v78, xmmword_1DD643F90);
      OUTLINED_FUNCTION_19_18();
      v82 = OUTLINED_FUNCTION_9_27(v37, v79, v80, v81);
      OUTLINED_FUNCTION_8_29(v15, v83, v84, v82);
      if (v52)
      {
        goto LABEL_71;
      }

      if (v85)
      {
        OUTLINED_FUNCTION_27_15();
LABEL_71:
        OUTLINED_FUNCTION_4_33();
        LOBYTE(v198) = v18;
        v197 = 0;
        OUTLINED_FUNCTION_0_64();
        LOBYTE(v194) = v149;
        v193 = v150;
        LOBYTE(v192) = v18;
        v191 = 0;
        v196 = v78;
        OUTLINED_FUNCTION_26_17();
        goto LABEL_91;
      }

      OUTLINED_FUNCTION_31_13();
      if (v52)
      {
        goto LABEL_97;
      }

      if (v86 > -9.22337204e18)
      {
        OUTLINED_FUNCTION_19_2();
        if (!v54)
        {
          goto LABEL_111;
        }

        OUTLINED_FUNCTION_30_11();
        goto LABEL_71;
      }

      goto LABEL_104;
    case 4:
      if (*(v195 + 48))
      {
        goto LABEL_52;
      }

      v55 = v39;
      v56 = *(v195 + 24);
      if (*(v195 + 50) == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
        OUTLINED_FUNCTION_43();
        v57 = sub_1DD63CBB8();
        OUTLINED_FUNCTION_51(v57);
        v58 = OUTLINED_FUNCTION_5_40();
        v59 = OUTLINED_FUNCTION_21_16(v58, xmmword_1DD643F90);
        OUTLINED_FUNCTION_9_27(v55, v60, v61, v59);
        OUTLINED_FUNCTION_65_0();
        __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
        if ((~*&v56 & 0x7FF0000000000000) == 0)
        {
          goto LABEL_116;
        }

        if (v56 <= -9.22337204e18)
        {
          goto LABEL_117;
        }

        OUTLINED_FUNCTION_23_17();
        if (!v54)
        {
          goto LABEL_118;
        }

        OUTLINED_FUNCTION_11_27();
        LOBYTE(v190) = v66;
        v189 = 0;
        goto LABEL_91;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      OUTLINED_FUNCTION_43();
      v154 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v154);
      if (v56 > 12.0)
      {
        v155 = OUTLINED_FUNCTION_32_12();
        v156 = OUTLINED_FUNCTION_21_16(v155, xmmword_1DD643F90);
        OUTLINED_FUNCTION_9_27(v55, v157, v158, v156);
        OUTLINED_FUNCTION_65_0();
        __swift_storeEnumTagSinglePayload(v159, v160, v161, v162);
        if ((~*&v56 & 0x7FF0000000000000) == 0)
        {
          goto LABEL_119;
        }

        if (v56 <= -9.22337204e18)
        {
          goto LABEL_121;
        }

        OUTLINED_FUNCTION_23_17();
        if (!v54)
        {
          goto LABEL_123;
        }

        OUTLINED_FUNCTION_11_27();
        LOBYTE(v190) = v163;
        goto LABEL_84;
      }

      v164 = OUTLINED_FUNCTION_32_12();
      v165 = OUTLINED_FUNCTION_21_16(v164, xmmword_1DD643F80);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v166, v167, v168, v165);
      v169 = sub_1DD63D328();
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v170, v171, v172, v169);
      if ((~*&v56 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_120;
      }

      if (v56 <= -9.22337204e18)
      {
        goto LABEL_122;
      }

      OUTLINED_FUNCTION_23_17();
      if (!v54)
      {
        goto LABEL_124;
      }

      v196 = v164;
      OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_17_23();
      sub_1DD63CB68(v173, v174, v175, v176, v177, v178, 0, 1, 0, 1, v56);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v179, v180, v181, v165);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v182, v183, v184, v169);
      if (!__OFADD__(v56, 12))
      {
        OUTLINED_FUNCTION_12_23();
        v187 = 1;
        v186 = 0;
        v188 = v185;
        goto LABEL_91;
      }

      goto LABEL_125;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      OUTLINED_FUNCTION_43();
      v107 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v107);
      v196 = OUTLINED_FUNCTION_5_40();
      OUTLINED_FUNCTION_21_16(v196, xmmword_1DD643F90);
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_9_27(v33, v108, v109, v110);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
      v115 = *(v195 + 24);
      if (*(v195 + 48))
      {
        goto LABEL_75;
      }

      if ((~*&v115 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_100;
      }

      if (v115 <= -9.22337204e18)
      {
        goto LABEL_107;
      }

      OUTLINED_FUNCTION_19_2();
      if (!v54)
      {
        goto LABEL_114;
      }

LABEL_75:
      OUTLINED_FUNCTION_4_33();
      LOBYTE(v198) = v18;
      v197 = 0;
      OUTLINED_FUNCTION_0_64();
      LOBYTE(v194) = v18;
      OUTLINED_FUNCTION_14_25();
      LOBYTE(v190) = v152;
      v189 = v153;
      goto LABEL_91;
    case 6:
      if (*(v195 + 48) != 2)
      {
LABEL_52:
        v196 = MEMORY[0x1E69E7CC0];
        return;
      }

      v116 = *(v195 + 32);
      v117 = *(v195 + 40);
      v118 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      v119 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v119);
      OUTLINED_FUNCTION_3_38();
      v120 = swift_allocObject();
      v121 = OUTLINED_FUNCTION_21_16(v120, xmmword_1DD643F90);
      OUTLINED_FUNCTION_9_27(v118, v122, v123, v121);
      v124 = v189;
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v125, v126, v127, v128);
      v196 = v120;
      if (v117)
      {
        OUTLINED_FUNCTION_29_12();
        v188 = v116;
        v187 = 1;
        v186 = v116;
        v129 = v118;
        v130 = v124;
        v131 = v116;
        v132 = 1;
        v133 = v116;
        v134 = 1;
        v135 = v116;
        goto LABEL_93;
      }

      OUTLINED_FUNCTION_18_19();
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_28_7();
      v187 = 1;
LABEL_84:
      v189 = 0;
      goto LABEL_91;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      OUTLINED_FUNCTION_43();
      v67 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v67);
      OUTLINED_FUNCTION_24_12();
      v68 = swift_allocObject();
      OUTLINED_FUNCTION_21_16(v68, xmmword_1DD643F90);
      OUTLINED_FUNCTION_19_18();
      v72 = OUTLINED_FUNCTION_9_27(v30, v69, v70, v71);
      OUTLINED_FUNCTION_8_29(v191, v73, v74, v72);
      if (v52)
      {
        goto LABEL_65;
      }

      if (v75)
      {
        OUTLINED_FUNCTION_27_15();
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_31_13();
      if (v52)
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      if (v76 <= -9.22337204e18)
      {
        goto LABEL_102;
      }

      OUTLINED_FUNCTION_19_2();
      if (v54)
      {
        OUTLINED_FUNCTION_30_11();
LABEL_65:
        OUTLINED_FUNCTION_4_33();
        LOBYTE(v198) = v147;
        v197 = v148;
        OUTLINED_FUNCTION_0_64();
        LOBYTE(v194) = v18;
        OUTLINED_FUNCTION_14_25();
        v196 = v68;
        OUTLINED_FUNCTION_26_17();
        goto LABEL_91;
      }

LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
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
      return;
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      OUTLINED_FUNCTION_43();
      v87 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v87);
      v88 = OUTLINED_FUNCTION_5_40();
      OUTLINED_FUNCTION_21_16(v88, xmmword_1DD643F90);
      OUTLINED_FUNCTION_19_18();
      v92 = OUTLINED_FUNCTION_9_27(v27, v89, v90, v91);
      OUTLINED_FUNCTION_8_29(v192, v93, v94, v92);
      if (v52)
      {
        goto LABEL_73;
      }

      if (v95)
      {
        OUTLINED_FUNCTION_27_15();
      }

      else
      {
        OUTLINED_FUNCTION_31_13();
        if (v52)
        {
          goto LABEL_98;
        }

        if (v96 <= -9.22337204e18)
        {
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        OUTLINED_FUNCTION_19_2();
        if (!v54)
        {
          goto LABEL_112;
        }

        OUTLINED_FUNCTION_30_11();
      }

LABEL_73:
      OUTLINED_FUNCTION_0_64();
      OUTLINED_FUNCTION_14_25();
      v196 = v88;
      OUTLINED_FUNCTION_26_17();
LABEL_91:
      OUTLINED_FUNCTION_17_23();
LABEL_92:
      v135 = 0;
LABEL_93:
      v151 = 1;
LABEL_94:
      sub_1DD63CB68(v129, v130, v131, v132, v133, v134, v135, v151, v186, v187, v188);
      return;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      OUTLINED_FUNCTION_43();
      v97 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v97);
      v98 = OUTLINED_FUNCTION_5_40();
      OUTLINED_FUNCTION_21_16(v98, xmmword_1DD643F90);
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_9_27(v24, v99, v100, v101);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
      v106 = *(v195 + 24);
      if (*(v195 + 48))
      {
        goto LABEL_74;
      }

      if ((~*&v106 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_99;
      }

      if (v106 <= -9.22337204e18)
      {
        goto LABEL_106;
      }

      OUTLINED_FUNCTION_19_2();
      if (!v54)
      {
        goto LABEL_113;
      }

LABEL_74:
      OUTLINED_FUNCTION_4_33();
      LOBYTE(v198) = v18;
      v197 = 0;
      OUTLINED_FUNCTION_0_64();
      LOBYTE(v194) = v18;
      v196 = v98;
      OUTLINED_FUNCTION_14_25();
      OUTLINED_FUNCTION_26_17();
      OUTLINED_FUNCTION_17_23();
      goto LABEL_94;
    case 11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      OUTLINED_FUNCTION_43();
      v136 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v136);
      v137 = OUTLINED_FUNCTION_5_40();
      OUTLINED_FUNCTION_21_16(v137, xmmword_1DD643F90);
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_9_27(v21, v138, v139, v140);
      v141 = v194;
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v142, v143, v144, v145);
      v146 = *(v195 + 24);
      if (*(v195 + 48))
      {
        goto LABEL_76;
      }

      if ((~*&v146 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_101;
      }

      if (v146 <= -9.22337204e18)
      {
        goto LABEL_108;
      }

      OUTLINED_FUNCTION_19_2();
      if (!v54)
      {
        goto LABEL_115;
      }

LABEL_76:
      OUTLINED_FUNCTION_4_33();
      LOBYTE(v198) = v18;
      v197 = 0;
      OUTLINED_FUNCTION_0_64();
      LOBYTE(v194) = v18;
      v196 = v137;
      OUTLINED_FUNCTION_14_25();
      OUTLINED_FUNCTION_26_17();
      v129 = v21;
      v130 = v141;
      v131 = 0;
      v132 = 1;
      goto LABEL_92;
    default:
      return;
  }
}

uint64_t sub_1DD48FBC0@<X0>(uint64_t a1@<X8>)
{
  switch(*(v1 + 16))
  {
    case 1:
      v3 = MEMORY[0x1E6969A98];
      goto LABEL_11;
    case 2:
      v3 = MEMORY[0x1E6969A88];
      goto LABEL_11;
    case 4:
      v3 = MEMORY[0x1E6969A58];
      goto LABEL_11;
    case 5:
    case 6:
    case 0xA:
      v3 = MEMORY[0x1E6969A48];
      goto LABEL_11;
    case 7:
      v3 = MEMORY[0x1E6969A20];
      goto LABEL_11;
    case 8:
      v3 = MEMORY[0x1E6969A10];
      goto LABEL_11;
    case 9:
      v3 = MEMORY[0x1E6969A78];
      goto LABEL_11;
    case 0xB:
      v3 = MEMORY[0x1E6969A68];
LABEL_11:
      v8 = *v3;
      v9 = sub_1DD63D2B8();
      (*(*(v9 - 8) + 104))(a1, v8, v9);
      v4 = a1;
      v5 = 0;
      v6 = 1;
      v7 = v9;
      break;
    default:
      sub_1DD63D2B8();
      OUTLINED_FUNCTION_65_0();
      break;
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1DD48FD00()
{
  sub_1DD48FF14(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t sub_1DD48FD30()
{
  sub_1DD48FD00();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD48FD88()
{
  sub_1DD640E28();
  sub_1DD48E664(v1);
  return sub_1DD640E78();
}

uint64_t sub_1DD48FE10(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD48E664(v2);
  return sub_1DD640E78();
}

unint64_t sub_1DD48FE9C()
{
  result = qword_1ECCDD458;
  if (!qword_1ECCDD458)
  {
    type metadata accessor for DateTimeConstraint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD458);
  }

  return result;
}

uint64_t sub_1DD48FEF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3 || a4 == 5)
  {
  }

  return result;
}

uint64_t sub_1DD48FF14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3 || a4 == 5)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_12()
{

  return swift_allocObject();
}

uint64_t sub_1DD4900A4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_1DD640778();
    type metadata accessor for DateTime();
    sub_1DD492CF8(&qword_1ECCDC740, type metadata accessor for DateTime, &protocol conformance descriptor for DateTime);
    sub_1DD6402A8();
    result = v10;
    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v3 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

uint64_t sub_1DD490190(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC750();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DD490B34(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1DD4901FC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned __int8 *a5)
{
  v6 = v5;
  LODWORD(v167) = a4;
  v169 = a3;
  v10 = sub_1DD63D168();
  v164 = *(v10 - 8);
  v165 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v163 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v166) = *a2;
  v12 = a2[1];
  v170 = *(a2 + 1);
  HIDWORD(v168) = a2[16];
  LODWORD(v11) = a2[17];
  HIDWORD(v167) = v12;
  LODWORD(v168) = v11;
  LODWORD(v171) = a2[18];
  v13 = *a5;
  if (sub_1DD3CC020())
  {
    sub_1DD56C450(MEMORY[0x1E69E7CC0], v14, v15, v16, v17, v18, v19, v20, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, *v176, *&v176[8], *&v176[16], v177, v178, v179, v180, v181, v182, v183);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CD0];
  }

  v180 = v21;
  v177 = &type metadata for DefinedTimeStore;
  v178 = &off_1F58B7818;
  v179 = v6;
  v22 = v166;
  if (*(a1 + 16))
  {
    LOBYTE(v172) = v166;
    BYTE1(v172) = BYTE4(v167);
    OUTLINED_FUNCTION_0_65(v170);
    HIBYTE(v171) = v13;

    OUTLINED_FUNCTION_1_50();
    sub_1DD4841F0(v23, v24, v25, v167, v26);
    sub_1DD608750(v27);
  }

  else
  {
  }

  v35 = *(a1 + 24);
  if (v35)
  {
    OUTLINED_FUNCTION_2_41();
    if (v38)
    {
      v39 = 0;
    }

    else
    {
      v39 = v36;
    }

    if (!v37)
    {
      v36 = 0;
    }

    v40 = v36 | HIDWORD(v168);
    OUTLINED_FUNCTION_3_39();
    if (v38)
    {
      v42 = 0;
    }

    else
    {
      v42 = v41;
    }

    v44 = sub_1DD491BD8(v43, v39 | v22, v170, v40 | v42, v169, v167, v13);
    sub_1DD608750(v44);
    v45 = *(v35 + 64);
    if (v45 && (v46 = *(v45 + 56), v46 != 38))
    {
      LOBYTE(v172) = *(v45 + 56);
      v48 = v164;
      v47 = v165;
      v49 = v169;
      v50 = v163;
      (*(v164 + 16))(v163, v169 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language, v165);
      v51 = OUTLINED_FUNCTION_5_41(*(v49 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere));
      (*(v48 + 8))(v50, v47);
      if (v51)
      {
        v22 = v166;
        LOBYTE(v172) = v166;
        BYTE1(v172) = BYTE4(v167);
        OUTLINED_FUNCTION_0_65(v170);
        HIBYTE(v171) = v46;
        v56 = OUTLINED_FUNCTION_6_32(v52, v53, v54, v55);
        sub_1DD608750(v56);
      }

      else
      {

        v22 = v166;
      }
    }

    else
    {
    }
  }

  HIDWORD(v166) = v13;
  v57 = *(a1 + 56);
  if (v57)
  {
    v58 = *(v57 + 24);
    v59 = BYTE4(v166);
    if (v58 && *(v58 + 16))
    {
      LOBYTE(v172) = v22;
      BYTE1(v172) = BYTE4(v167);
      OUTLINED_FUNCTION_0_65(v170);
      HIBYTE(v171) = v59;

      OUTLINED_FUNCTION_1_50();
      sub_1DD4841F0(v60, v61, v62, v167, v63);
      sub_1DD608750(v64);
    }

    v65 = *(v57 + 32);
    if (v65 && *(v65 + 16))
    {
      LOBYTE(v172) = v22;
      BYTE1(v172) = BYTE4(v167);
      OUTLINED_FUNCTION_0_65(v170);
      HIBYTE(v171) = v59;

      OUTLINED_FUNCTION_1_50();
      sub_1DD4841F0(v66, v67, v68, 1, v69);
      sub_1DD608750(v70);
    }

    v71 = *(v57 + 24);
    if (v71 && *(v71 + 24))
    {
      OUTLINED_FUNCTION_2_41();
      if (v38)
      {
        v74 = 0;
      }

      else
      {
        v74 = v72;
      }

      if (!v73)
      {
        v72 = 0;
      }

      v75 = v72 | HIDWORD(v168);
      OUTLINED_FUNCTION_3_39();
      if (v38)
      {
        v77 = 0;
      }

      else
      {
        v77 = v76;
      }

      v79 = v75 | v77;
      v22 = v166;
      v59 = BYTE4(v166);
      v80 = sub_1DD491BD8(v78, v74 | v166, v170, v79, v169, v167, SHIDWORD(v166));
      sub_1DD608750(v80);
    }

    v81 = *(v57 + 32);
    if (!v81 || (v82 = *(v81 + 24)) == 0)
    {
LABEL_59:
      v90 = *(v57 + 48);
      if (v90)
      {
        LOBYTE(v172) = v59;
        sub_1DD4E1DE8(v90, &v172, v167);
        if (v91)
        {
          OUTLINED_FUNCTION_4_34(v91, v28, v29, v30, v31, v32, v33, v34, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, *v176, *&v176[8], *&v176[16], v177, v178, v179, v180, v181);
        }
      }

      v92 = *(v57 + 16);
      if (v92)
      {
        if (!*(v92 + 16) || (LOBYTE(v172) = v22, BYTE1(v172) = BYTE4(v167), OUTLINED_FUNCTION_0_65(v170), HIBYTE(v171) = v59, , OUTLINED_FUNCTION_1_50(), sub_1DD4841F0(v93, v94, v95, 0, v96), sub_1DD608750(v97), , (v92 = *(v57 + 16)) != 0))
        {
          if (*(v92 + 24))
          {
            OUTLINED_FUNCTION_2_41();
            if (v38)
            {
              v100 = 0;
            }

            else
            {
              v100 = v98;
            }

            if (!v99)
            {
              v98 = 0;
            }

            v101 = v98 | HIDWORD(v168);
            OUTLINED_FUNCTION_3_39();
            if (v38)
            {
              v103 = 0;
            }

            else
            {
              v103 = v102;
            }

            v105 = v101 | v103;
            v22 = v166;
            v59 = BYTE4(v166);
            v106 = sub_1DD491BD8(v104, v100 | v166, v170, v105, v169, 0, SHIDWORD(v166));
            sub_1DD608750(v106);
          }
        }
      }

      v107 = *(v57 + 40);
      if (v107)
      {
        if (v171)
        {
          LOBYTE(v172) = v59;
          sub_1DD4E1DE8(v107, &v172, v167);
          if (!v108)
          {
            goto LABEL_81;
          }
        }

        else
        {
          LOBYTE(v172) = v59;
          v108 = sub_1DD4B7048(v107);
          if (!v108)
          {
            goto LABEL_81;
          }
        }

        OUTLINED_FUNCTION_4_34(v108, v28, v29, v30, v31, v32, v33, v34, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, *v176, *&v176[8], *&v176[16], v177, v178, v179, v180, v181);
      }

LABEL_81:
      v109 = *(v57 + 56);
      if (v109 == 38)
      {
        goto LABEL_105;
      }

      if (v35 && *(v35 + 58) != 3 || (v110 = *(v57 + 24)) != 0 && (v111 = *(v110 + 24)) != 0 && *(v111 + 58) != 3)
      {
        if (v109 > 0x18)
        {
LABEL_90:
          LOBYTE(v172) = *(v57 + 56);
          v112 = v22;
          v114 = v164;
          v113 = v165;
          v115 = v169;
          v116 = v163;
          (*(v164 + 16))(v163, v169 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language, v165);
          v117 = OUTLINED_FUNCTION_5_41(*(v115 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere));
          (*(v114 + 8))(v116, v113);
          v22 = v112;
          if (v117)
          {
            LOBYTE(v172) = v112;
            BYTE1(v172) = BYTE4(v167);
            OUTLINED_FUNCTION_0_65(v170);
            HIBYTE(v171) = v109;
            v122 = OUTLINED_FUNCTION_6_32(v118, v119, v120, v121);
            sub_1DD608750(v122);
          }

LABEL_92:
          v123 = *(v57 + 57);
          if (v123 != 20)
          {
            if (v123 == 6)
            {
              LOBYTE(v172) = v109;
              v125 = sub_1DD4A0D90(&v172);
              if (!v125)
              {
                goto LABEL_105;
              }

              goto LABEL_100;
            }

            if (v123 != 7)
            {
              if (v123 == 3)
              {
                LOBYTE(v172) = v109;
                sub_1DD4A0AC8(&v172, v28, v29, v30, v31, v32, v33, v34, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, *v176, *&v176[8], *&v176[16], v177, v178, v179, v180, v181, v182, v183);
                sub_1DD608750(v124);
              }

              else
              {
                LOBYTE(v172) = v109;
                HIBYTE(v171) = v123;
                v133 = sub_1DD4AD794(&v171 + 7);
                if (v133)
                {
                  v134 = a1;
                  LOBYTE(v172) = BYTE4(v166);
                  sub_1DD4E1DE8(v133, &v172, v167);
                  if (v135)
                  {
                    v136 = v135;

                    sub_1DD56E250(&v172, v136, v137, v138, v139, v140, v141, v142, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, *v176, *&v176[8], *&v176[16], v177, v178, v179, v180, v181);
                  }

                  a1 = v134;
                }
              }

              goto LABEL_105;
            }
          }

          LOBYTE(v172) = v109;
          v125 = sub_1DD4A0D98(&v172);
          if (!v125)
          {
            goto LABEL_105;
          }

LABEL_100:
          OUTLINED_FUNCTION_4_34(v125, v126, v127, v128, v129, v130, v131, v132, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, *v176, *&v176[8], *&v176[16], v177, v178, v179, v180, v181);

          goto LABEL_105;
        }

        if (((1 << v109) & 0x1C1F1FD) != 0)
        {
          goto LABEL_105;
        }
      }

      if (v109 == 10)
      {
        goto LABEL_92;
      }

      goto LABEL_90;
    }

    v162 = a1;
    v83 = *(v57 + 24);
    if (v83 && (v84 = *(v83 + 24)) != 0)
    {
    }

    else
    {

      v84 = v35;
      if (!v35)
      {
        goto LABEL_48;
      }
    }

    type metadata accessor for DateTime.Time();
    if (static DateTime.Time.== infix(_:_:)(v84, v82))
    {

      v59 = BYTE4(v166);
LABEL_58:
      a1 = v162;
      goto LABEL_59;
    }

LABEL_48:
    __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
    if (HIDWORD(v167))
    {
      v85 = 256;
    }

    else
    {
      v85 = 0;
    }

    if (v168)
    {
      v86 = 256;
    }

    else
    {
      v86 = 0;
    }

    v87 = v86 | HIDWORD(v168);
    if (v171)
    {
      v88 = 0x10000;
    }

    else
    {
      v88 = 0;
    }

    v59 = BYTE4(v166);
    v89 = sub_1DD491BD8(v82, v85 | v22, v170, v87 | v88, v169, 1u, SHIDWORD(v166));
    sub_1DD608750(v89);

    goto LABEL_58;
  }

LABEL_105:
  v143 = *(a1 + 48);
  v144 = HIDWORD(v166);
  if (v143 != 4)
  {
    v173 = 0;
    v174 = 0;
    v172 = v143;
    LOBYTE(v175) = 4;
    HIBYTE(v171) = BYTE4(v166);
    type metadata accessor for DateTimeConstraint();
    swift_allocObject();
    v145 = sub_1DD48DFB4(13, &v172, 2, 4, &v171 + 7, 1, 1, 0);
    OUTLINED_FUNCTION_4_34(v145, v146, v147, v148, v149, v150, v151, v152, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, *v176, *&v176[8], *&v176[16], v177, v178, v179, v180, v181);
  }

  if (*(a1 + 40))
  {
    OUTLINED_FUNCTION_2_41();
    if (v38)
    {
      v155 = 0;
    }

    else
    {
      v155 = v153;
    }

    if (!v154)
    {
      v153 = 0;
    }

    v156 = v153 | HIDWORD(v168);
    OUTLINED_FUNCTION_3_39();
    if (v38)
    {
      v158 = 0;
    }

    else
    {
      v158 = v157;
    }

    v160 = sub_1DD492494(v159, v155 | v22, v170, v156 | v158, v169, v144);
    sub_1DD608750(v160);
  }

  sub_1DD490AE0(v176);
  return v180;
}

uint64_t sub_1DD490B34(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD640CA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DD490C9C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DD490C28(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD490C28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = qword_1DD650400[v7];
      v9 = v6;
      v10 = v5;
      do
      {
        v11 = *(v10 - 1);
        if (v8 >= qword_1DD650400[v11])
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v10 = v11;
        *--v10 = v7;
      }

      while (!__CFADD__(v9++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD490C9C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = qword_1DD650400[*(*a3 + v8)];
        v10 = *(*a3 + v8);
        v11 = qword_1DD650400[*(*a3 + v6)];
        v12 = v6 + 2;
        if (v5 <= v6 + 2)
        {
          v8 = v6 + 2;
        }

        else
        {
          v8 = v5;
        }

        while (v12 < v5)
        {
          v13 = *(*a3 + v12);
          v14 = (v9 < v11) ^ (qword_1DD650400[v13] >= qword_1DD650400[v10]);
          ++v12;
          v10 = v13;
          if ((v14 & 1) == 0)
          {
            v8 = v12 - 1;
            break;
          }
        }

        if (v9 < v11)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            v15 = v8 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + v16);
                *(v17 + v16) = *(v17 + v15);
                *(v17 + v15) = v18;
              }
            }

            while (++v16 < v15--);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = (*a3 + v8);
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = qword_1DD650400[v23];
              v25 = v22;
              v26 = v21;
              do
              {
                v27 = *(v26 - 1);
                if (v24 >= qword_1DD650400[v27])
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v26 = v27;
                *--v26 = v23;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BEB7C();
        v7 = v70;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1DD3BEB7C();
        v7 = v71;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v74;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_55:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_70:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_84;
          }

LABEL_77:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_1DD491284((*a3 + *v65), (*a3 + *v67), (*a3 + v68), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7[2];
          if (v33 > v69)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v69)
          {
            goto LABEL_93;
          }

          v30 = v69 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v69 - 1 - v33));
          v7[2] = v69 - 1;
          if (v69 <= 2)
          {
            goto LABEL_84;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_55;
      }

LABEL_84:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1DD491158(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_1DD491158(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1DD491284((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1DD491284(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (a2 - a1 < a3 - a2)
  {
    sub_1DD3C2528(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_43;
      }

      v12 = *v4;
      if (qword_1DD650400[*v6] < qword_1DD650400[v12])
      {
        break;
      }

      v15 = v4 + 1;
      if (v7 < v4 || v7 >= v15)
      {
        goto LABEL_19;
      }

LABEL_20:
      ++v7;
      v4 = v15;
    }

    if (v7 >= v6 && v7 < v6 + 1)
    {
      ++v6;
      v15 = v4;
      goto LABEL_20;
    }

    LOBYTE(v12) = *v6++;
    v15 = v4;
LABEL_19:
    *v7 = v12;
    goto LABEL_20;
  }

  sub_1DD3C2528(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_22:
  v16 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    if (qword_1DD650400[v18] < qword_1DD650400[v19])
    {
      v21 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v21)
      {
        *v5 = v19;
        v6 = v16;
      }

      goto LABEL_22;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = v18;
    }

    --v5;
    --v10;
  }

LABEL_43:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_1DD491428(uint64_t a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  HIDWORD(v74) = a6;
  v71 = a5;
  HIDWORD(v68) = a4;
  v65 = a3;
  v7 = MEMORY[0x1E69E7CD0];
  v82 = MEMORY[0x1E69E7CD0];
  if (sub_1DD3CC020())
  {
    sub_1DD56C450(MEMORY[0x1E69E7CC0], v8, v9, v10, v11, v12, v13, v14, v55, v58, v61, v65, v68, v71, v74, v77, *v78, *&v78[8], *&v78[16], v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
    v7 = v15;
  }

  v81 = v7;

  sub_1DD4900A4(v16, &v83);
  v17 = v83;
  v18 = v84;
  v19 = v86;
  v20 = v87;
  v21 = v88;
  v62 = v85;
  v22 = ((v85 + 64) >> 6);
  if (v83 < 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v23 = v19;
  v24 = v20;
  v25 = v19;
  if (!v20)
  {
    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        goto LABEL_15;
      }

      v24 = *(v18 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_8:
  v26 = (v24 - 1) & v24;
  v27 = *(*(v17 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

  if (v27)
  {
    while (!__OFADD__(v21, 1))
    {
      sub_1DD49298C(v21, v27, &v82, &v81, SHIDWORD(v74), a2 & 0x1FF, v65, HIDWORD(v68) & 0x10101, v71);

      ++v21;
      v19 = v25;
      v20 = v26;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v28 = sub_1DD6407F8();
      if (v28)
      {
        v77 = v28;
        type metadata accessor for DateTime();
        swift_dynamicCast();
        v27 = *v78;
        v25 = v19;
        v26 = v20;
        if (*v78)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  sub_1DD3AA5A4(v17);
  v36 = v82;
  if (!*(v82 + 16))
  {

    return v81;
  }

  sub_1DD5986CC(v82, v29, v30, v31, v32, v33, v34, v35, v55, v58, v62, v65, v68, v71, v74, v77, *v78, *&v78[8], *&v78[16], v79, v80, v81, v82, v83, v84, v85);
  *v78 = v37;
  v22 = 0;
  sub_1DD490190(v78);
  if (*(*v78 + 16))
  {
    v38 = *(*v78 + 32);

    *v78 = qword_1DD650400[v38];
    *&v78[8] = xmmword_1DD642F70;
    LOBYTE(v79) = 2;
    v39 = BYTE4(v75);
    LOBYTE(v77) = BYTE4(v75);
    type metadata accessor for DateTimeConstraint();
    swift_allocObject();
    v40 = sub_1DD48DFB4(6, v78, 0, 0, &v77, 1, 1, 0);
    sub_1DD56E250(v78, v40, v41, v42, v43, v44, v45, v46, v56, v59, v63, v66, v69, v72, v75, v77, *v78, *&v78[8], *&v78[16], v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);

    *v78 = xmmword_1DD6503B0;
    *&v78[16] = v36;
    LOBYTE(v79) = 5;
    LOBYTE(v77) = v39;
    swift_allocObject();
    v47 = sub_1DD48DFB4(13, v78, 2, 3, &v77, 1, 1, 0);

    sub_1DD56E250(v78, v47, v48, v49, v50, v51, v52, v53, v57, v60, v64, v67, v70, v73, v76, v77, *v78, *&v78[8], *&v78[16], v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);

    return v81;
  }

LABEL_22:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1DD491770(char a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  v12 = sub_1DD63D168();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v53 = &type metadata for DefinedTimeStore;
  v54 = &off_1F58B7818;
  if (sub_1DD3CC020())
  {
    sub_1DD56C450(MEMORY[0x1E69E7CC0], v16, v17, v18, v19, v20, v21, v22, v37, *v38, *&v38[8], *&v38[16], *&v38[24], *&v38[32], *&v38[40], *&v38[48], *&v38[56], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CD0];
  }

  v49 = v23;
  if (!a1)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    LOBYTE(v47) = 6;
    LOBYTE(v39) = 41;
    type metadata accessor for DateTimeConstraint();
    swift_allocObject();
    v25 = sub_1DD48DFB4(12, &v44, a6, 0, &v39, 1, 1, 0);
    sub_1DD56E250(&v44, v25, v26, v27, v28, v29, v30, v31, v37, *v38, *&v38[8], *&v38[16], *&v38[24], *&v38[32], *&v38[40], *&v38[48], *&v38[56], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    goto LABEL_10;
  }

  if (a1 != 1)
  {
    __swift_project_boxed_opaque_existential_1(&v50, &type metadata for DefinedTimeStore);
    LOBYTE(v44) = 2;
    (*(v13 + 16))(v15, a5 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language, v12);
    LOBYTE(v39) = *(a5 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere);
    v32 = sub_1DD4AF538();
    (*(v13 + 8))(v15, v12);
    if (!v32)
    {
      goto LABEL_11;
    }

    sub_1DD3C2388(&v50, &v44);
    __swift_mutable_project_boxed_opaque_existential_1(&v44, v47);
    v42 = &type metadata for DefinedTimeStore;
    v43 = &off_1F58B7818;
    type metadata accessor for DateTimeConstraintGenerator();
    v33 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(&v39, &type metadata for DefinedTimeStore);
    *(v33 + 40) = &type metadata for DefinedTimeStore;
    *(v33 + 48) = &off_1F58B7818;
    __swift_destroy_boxed_opaque_existential_1(&v39);
    __swift_destroy_boxed_opaque_existential_1(&v44);
    LOWORD(v44) = a2 & 0x1FF;
    v45 = a3;
    LOWORD(v46) = a4 & 0x101;
    BYTE2(v46) = BYTE2(a4) & 1;
    LOBYTE(v39) = 41;
    v34 = sub_1DD4901FC(v32, &v44, a5, a6, &v39);

    sub_1DD608750(v34);
LABEL_10:

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6503C0;
  v44 = 0;
  v45 = 0;
  LOBYTE(v47) = 0;
  v46 = 0;
  LOBYTE(v39) = 41;
  type metadata accessor for DateTimeConstraint();
  swift_allocObject();
  *(inited + 32) = sub_1DD48DFB4(4, &v44, a6, 0, &v39, 1, 1, 0);
  v44 = 0;
  v45 = 0;
  LOBYTE(v47) = 0;
  v46 = 0;
  LOBYTE(v39) = 41;
  swift_allocObject();
  *(inited + 40) = sub_1DD48DFB4(2, &v44, a6, 0, &v39, 1, 1, 0);
  v44 = 0;
  v45 = 0;
  LOBYTE(v47) = 0;
  v46 = 0;
  LOBYTE(v39) = 41;
  swift_allocObject();
  *(inited + 48) = sub_1DD48DFB4(1, &v44, a6, 0, &v39, 1, 1, 0);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  LOBYTE(v47) = 1;
  LOBYTE(v39) = 41;
  swift_allocObject();
  *(inited + 56) = sub_1DD48DFB4(3, &v44, a6, 5, &v39, 1, 1, 0);
  sub_1DD608904(inited);
LABEL_11:
  v35 = v49;
  __swift_destroy_boxed_opaque_existential_1(&v50);
  return v35;
}

uint64_t sub_1DD491BD8(uint64_t a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, int a7)
{
  LODWORD(v131) = a7;
  v13 = sub_1DD63D168();
  v129 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v128 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = &type metadata for DefinedTimeStore;
  v141 = &off_1F58B7818;
  if (sub_1DD3CC020())
  {
    sub_1DD56C450(MEMORY[0x1E69E7CC0], v15, v16, v17, v18, v19, v20, v21, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, *&v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CD0];
  }

  v136 = v22;
  v23 = *(a1 + 58);
  if (v23 != 3)
  {
    if (v23 == 2 && (*(a1 + 24) & 1) == 0 && *(a1 + 57) == 2)
    {
      v24 = *(a1 + 16);
      v25 = v24 <= 11 && (v24 - 1) >= 6;
      v26 = *(a1 + 72);
      v27 = !v25;
      v133 = 0;
      v134 = 0;
      v132 = *&v27;
      LOBYTE(v135) = 1;
      HIBYTE(v131) = v131;
      type metadata accessor for DateTimeConstraint();
      swift_allocObject();
      v28 = sub_1DD48DFB4(3, &v132, a6, 5, &v131 + 7, v26, 1, 0);
      sub_1DD56E250(&v132, v28, v29, v30, v31, v32, v33, v34, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, *&v132, v133, v134, v135, v136, v137, v138, v139, v140);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v137, &type metadata for DefinedTimeStore);
      v35 = sub_1DD491770(v23, a2 & 0x1FF, a3, a4 & 0x10101, a5, a6);
      sub_1DD608750(v35);
    }
  }

  v130 = a5;
  if ((*(a1 + 24) & 1) == 0)
  {
    v126 = *(a1 + 16);
    v36 = *(a1 + 72);
    v132 = v126;
    v133 = 0;
    v134 = 0;
    LOBYTE(v135) = 0;
    HIBYTE(v131) = v131;
    v127 = type metadata accessor for DateTimeConstraint();
    swift_allocObject();
    v37 = sub_1DD48DFB4(4, &v132, a6, 0, &v131 + 7, v36, 1, 0);
    sub_1DD56E250(&v132, v37, v38, v39, v40, v41, v42, v43, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, *&v132, v133, v134, v135, v136, v137, v138, v139, v140);

    if (qword_1ECCDB0C0 != -1)
    {
      swift_once();
    }

    v44 = sub_1DD63F9F8();
    v45 = __swift_project_value_buffer(v44, qword_1ECD0DDC0);
    v46 = v130;
    swift_retain_n();
    v125 = v45;
    v47 = sub_1DD63F9D8();
    v48 = sub_1DD640368();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      HIDWORD(v123) = v48;
      v50 = v49;
      v122 = swift_slowAlloc();
      v132 = *&v122;
      *v50 = 136315394;
      v119 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat;
      LODWORD(v124) = a6;
      v51 = v129;
      v120 = *(v129 + 16);
      v121 = v47;
      v52 = v128;
      v120(v128, v46 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, v13);
      sub_1DD492CF8(&qword_1EE1637E8, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
      v53 = sub_1DD640CB8();
      v55 = v54;
      v56 = *(v51 + 8);
      v56(v52, v13);
      v57 = sub_1DD39565C(v53, v55, &v132);

      *(v50 + 4) = v57;
      *(v50 + 12) = 1024;
      v58 = (v120)(v52, v46 + v119, v13);
      LOBYTE(a6) = v124;
      LOBYTE(v57) = sub_1DD4F9988(v58);
      v56(v52, v13);

      *(v50 + 14) = v57 & 1;

      v59 = v121;
      _os_log_impl(&dword_1DD38D000, v121, BYTE4(v123), "context.regionFormat: %s, follows 24 hour clock: %{BOOL}d", v50, 0x12u);
      v60 = v122;
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x1E12B3DA0](v60, -1, -1);
      MEMORY[0x1E12B3DA0](v50, -1, -1);
    }

    else
    {
    }

    if (*(a1 + 57) == 2)
    {
      v61 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat;
      v62 = v129;
      v63 = *(v129 + 16);
      v64 = v128;
      v65 = v63(v128, v130 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, v13);
      v66 = sub_1DD4F9988(v65);
      v67 = *(v62 + 8);
      v129 = v62 + 8;
      v67(v64, v13);
      if (v66)
      {
        v68 = v130;

        v69 = sub_1DD63F9D8();
        v70 = sub_1DD640368();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v124 = v69;
          v72 = v71;
          v125 = swift_slowAlloc();
          v132 = *&v125;
          *v72 = 136315138;
          v73 = v68 + v61;
          v74 = v128;
          v63(v128, v73, v13);
          sub_1DD492CF8(&qword_1EE1637E8, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
          v75 = v70;
          v76 = sub_1DD640CB8();
          v77 = v13;
          v79 = v78;
          v67(v74, v77);
          v80 = sub_1DD39565C(v76, v79, &v132);

          v81 = v72;
          *(v72 + 4) = v80;
          v69 = v124;
          v82 = v81;
          _os_log_impl(&dword_1DD38D000, v124, v75, "locale: %s follows 24 hour clock", v81, 0xCu);
          v83 = v125;
          __swift_destroy_boxed_opaque_existential_1(v125);
          MEMORY[0x1E12B3DA0](v83, -1, -1);
          MEMORY[0x1E12B3DA0](v82, -1, -1);
        }

        v84 = *(a1 + 72);
        v133 = 0;
        v134 = 0;
        *&v132 = v126 > 11;
        LOBYTE(v135) = 1;
        HIBYTE(v131) = 39;
        swift_allocObject();
        v85 = sub_1DD48DFB4(3, &v132, a6, 5, &v131 + 7, v84, 1, 0);
        sub_1DD56E250(&v132, v85, v86, v87, v88, v89, v90, v91, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, *&v132, v133, v134, v135, v136, v137, v138, v139, v140);
      }
    }
  }

  v92 = *(a1 + 57);
  if (v92 != 2)
  {
    v93 = *(a1 + 72);
    v133 = 0;
    v134 = 0;
    *&v132 = v92 & 1;
    LOBYTE(v135) = 1;
    HIBYTE(v131) = v131;
    type metadata accessor for DateTimeConstraint();
    swift_allocObject();
    v94 = sub_1DD48DFB4(3, &v132, a6, 5, &v131 + 7, v93, 1, 0);
    sub_1DD56E250(&v132, v94, v95, v96, v97, v98, v99, v100, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, *&v132, v133, v134, v135, v136, v137, v138, v139, v140);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v101 = *(a1 + 72);
    v132 = *(a1 + 32);
    v133 = 0;
    v134 = 0;
    LOBYTE(v135) = 0;
    HIBYTE(v131) = v131;
    type metadata accessor for DateTimeConstraint();
    swift_allocObject();
    v102 = sub_1DD48DFB4(2, &v132, a6, 0, &v131 + 7, v101, 1, 0);
    sub_1DD56E250(&v132, v102, v103, v104, v105, v106, v107, v108, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, *&v132, v133, v134, v135, v136, v137, v138, v139, v140);
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v109 = *(a1 + 72);
    v132 = *(a1 + 48);
    v133 = 0;
    v134 = 0;
    LOBYTE(v135) = 0;
    HIBYTE(v131) = v131;
    type metadata accessor for DateTimeConstraint();
    swift_allocObject();
    v110 = sub_1DD48DFB4(1, &v132, a6, 0, &v131 + 7, v109, 1, 0);
    sub_1DD56E250(&v132, v110, v111, v112, v113, v114, v115, v116, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, *&v132, v133, v134, v135, v136, v137, v138, v139, v140);
  }

  v117 = v136;
  __swift_destroy_boxed_opaque_existential_1(&v137);
  return v117;
}

void *sub_1DD492494(uint64_t a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  v80 = &type metadata for DefinedTimeStore;
  v81 = &off_1F58B7818;
  if (sub_1DD3CC020())
  {
    sub_1DD56C450(MEMORY[0x1E69E7CC0], v12, v13, v14, v15, v16, v17, v18, v68, v69, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CD0];
  }

  v76 = v19;
  v20 = *(a1 + 48);
  if ((sub_1DD49C318() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(&v77, &type metadata for DefinedTimeStore);
    v21 = sub_1DD491428(v20, a2 & 0x1FF, a3, a4 & 0x10101, a5, a6);
    sub_1DD608750(v21);
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    v23 = *(a1 + 64);
    if (v23)
    {
      LOBYTE(v82) = a6;

      v24 = sub_1DD57B660(v22, v23, &v82, 0.0);
      sub_1DD608750(v24);
    }
  }

  if (*(a1 + 72) != 3)
  {
    LOBYTE(v72) = *(a1 + 72);
    LOWORD(v82) = a2 & 0x1FF;
    v83 = a3;
    LOWORD(v84) = a4 & 0x101;
    BYTE2(v84) = BYTE2(a4) & 1;
    LOBYTE(v71) = a6;
    v25 = sub_1DD57B850(&v72, &v82, &v71);
    sub_1DD56E250(&v82, v25, v26, v27, v28, v29, v30, v31, v68, v69, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
  }

  v32 = *(a1 + 24);
  if (v32)
  {
    LOBYTE(v82) = a6;
    v33 = sub_1DD57B8EC(v32, &v82);
    if (v33)
    {
      v70 = v33;
      v34 = v76;
      if ((v76 & 0xC000000000000001) != 0)
      {

        sub_1DD640778();
        type metadata accessor for DateTimeConstraint();
        sub_1DD492CF8(&qword_1ECCDC188, type metadata accessor for DateTimeConstraint, &unk_1DD650364);
        result = sub_1DD6402A8();
        v34 = v82;
        v36 = v83;
        v37 = v84;
        v38 = v85;
        v39 = v86;
      }

      else
      {
        v40 = -1 << *(v76 + 32);
        v36 = v76 + 56;
        v37 = ~v40;
        v41 = -v40;
        if (v41 < 64)
        {
          v42 = ~(-1 << v41);
        }

        else
        {
          v42 = -1;
        }

        v39 = v42 & *(v76 + 56);

        v38 = 0;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_20:
      v43 = sub_1DD6407F8();
      if (v43 && (v71 = v43, type metadata accessor for DateTimeConstraint(), swift_dynamicCast(), v44 = v72, v45 = v38, v46 = v39, v72))
      {
        while (*(v44 + 50) != 3)
        {

          v38 = v45;
          v39 = v46;
          if (v34 < 0)
          {
            goto LABEL_20;
          }

LABEL_23:
          v47 = v38;
          v48 = v39;
          v45 = v38;
          if (!v39)
          {
            while (1)
            {
              v45 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
                break;
              }

              if (v45 >= ((v37 + 64) >> 6))
              {
                goto LABEL_31;
              }

              v48 = *(v36 + 8 * v45);
              ++v47;
              if (v48)
              {
                goto LABEL_27;
              }
            }

            __break(1u);
            return result;
          }

LABEL_27:
          v46 = (v48 - 1) & v48;
          v44 = *(*(v34 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v48)))));

          if (!v44)
          {
            goto LABEL_31;
          }
        }

        sub_1DD3AA5A4(v34);
        if (*(v44 + 48) != 5)
        {
          goto LABEL_32;
        }

        v56 = *(v44 + 24);
        v57 = *(v44 + 32);
        v58 = *(v44 + 40);
        if (*(v70 + 48) == 5)
        {
          v59 = *(v70 + 24);
          v60 = *(v70 + 32);

          if (v57 == v60)
          {
            sub_1DD581DE0(v44);

            v72 = v59;
            v73 = v57;
            v74 = v58;
            LOBYTE(v75) = 5;
            LOBYTE(v71) = 38;
            type metadata accessor for DateTimeConstraint();
            swift_allocObject();
            v61 = sub_1DD48DFB4(13, &v72, 2, 3, &v71, 1, 1, 0);
            sub_1DD56E250(&v72, v61, v62, v63, v64, v65, v66, v67, v68, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);

            goto LABEL_32;
          }
        }

        else
        {
        }

        sub_1DD48FF14(v56, v57, v58, 5);
      }

      else
      {
LABEL_31:
        sub_1DD3AA5A4(v34);

        sub_1DD56E250(&v72, v70, v49, v50, v51, v52, v53, v54, v68, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
LABEL_32:
      }
    }
  }

  v55 = v76;
  __swift_destroy_boxed_opaque_existential_1(&v77);
  return v55;
}

uint64_t sub_1DD49298C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  v63 = &type metadata for DefinedTimeStore;
  v64 = &off_1F58B7818;
  v12 = a2[2];
  v57 = __PAIR64__(a8, a6);
  if (v12 && (v13 = *(v12 + 89), v13 != 7))
  {
    sub_1DD56E428(&v58, v13);
  }

  else
  {
    v14 = a2[7];
    if (v14 && ((v15 = *(v14 + 56), v15 != 35) ? (v16 = v15 == 21) : (v16 = 1), v16) || v12 && (v18 = *(v12 + 112)) != 0 && ((v19 = *(v18 + 56), v19 == 21) || v19 == 35))
    {
      v17 = &unk_1F58ACF08;
LABEL_20:
      sub_1DD56C5AC(v17);
      v58 = xmmword_1DD6503B0;
      v59 = v21;
      LOBYTE(v60) = 5;
      HIBYTE(v61) = a5;
      type metadata accessor for DateTimeConstraint();
      swift_allocObject();
      v22 = sub_1DD48DFB4(13, &v58, 2, 3, &v61 + 7, 1, 1, 0);
      sub_1DD56E250(&v58, v22, v23, v24, v25, v26, v27, v28, v50, v51, v52, v53, v55, v57, v58, *(&v58 + 1), v59, v60, v61, v62[0], v62[1], v62[2], v63, v64, v65, v66, v67, v68, v69, v70);
LABEL_21:

      goto LABEL_23;
    }

    if (v14 && *(v14 + 56) == 19 || v12 && (v20 = *(v12 + 112)) != 0 && *(v20 + 56) == 19)
    {
      v17 = &unk_1F58ACF30;
      goto LABEL_20;
    }

    if (v14)
    {
      v43 = *(v14 + 24);
      if (v43)
      {
        v44 = *(v14 + 32);
        if (v44)
        {
          LOBYTE(v58) = a5;

          v45 = sub_1DD57B660(v43, v44, &v58, 1.0);
          sub_1DD608750(v45);

LABEL_41:

          goto LABEL_21;
        }
      }
    }

    if (v12)
    {
      v46 = *(v12 + 112);
      if (v46)
      {
        v47 = *(v46 + 24);
        if (v47)
        {
          v48 = *(v46 + 32);
          if (v48)
          {
            LOBYTE(v58) = a5;

            v49 = sub_1DD57B660(v47, v48, &v58, 1.0);
            sub_1DD608750(v49);

            goto LABEL_41;
          }
        }
      }
    }
  }

LABEL_23:
  v29 = a2[3];
  if (v29)
  {
    v30 = a2[7];
    if (v30 && (v31 = *(v30 + 56), v31 != 38))
    {
      v54 = a7;
      v56 = *(v29 + 16);
      v33 = *(v29 + 24);
      v34 = *(v29 + 32);
      v35 = *(v29 + 40);
      v36 = *(v29 + 48);
      v37 = *(v29 + 56);
      HIBYTE(v61) = v31;
      sub_1DD57B970(&v61 + 7, &v58);
      v38 = v58;
      if (v58 == 2)
      {
        v38 = *(v29 + 57);
      }

      LOBYTE(v58) = v38;
      HIBYTE(v61) = *(v29 + 58);
      v39 = *(v29 + 64);
      v40 = *(v29 + 72);
      type metadata accessor for DateTime.Time();
      swift_allocObject();
      v29 = DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(v56, v33, v34, v35, v36, v37, &v58, &v61 + 7, v39, v40);

      v32 = v63;
      a7 = v54;
    }

    else
    {

      v32 = &type metadata for DefinedTimeStore;
    }

    __swift_project_boxed_opaque_existential_1(v62, v32);
    v41 = sub_1DD491BD8(v29, v57 & 0x1FF, a7, HIDWORD(v57) & 0x10101, a9, 0, a5);
    sub_1DD608750(v41);
  }

  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t sub_1DD492CF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DD492D50(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DD6407B8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1DD42BC08(0, v2 & ~(v2 >> 63), 0);
    v3 = v37;
    v34 = sub_1DD55AD40(v1);
    v35 = v4;
    v36 = v5 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (!__OFADD__(v6++, 1))
      {
        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_1DD55AE74(v34, v35, v36, v1);
        v13 = *(v12 + 16);

        v37 = v3;
        v15 = *(v3 + 16);
        v14 = *(v3 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1DD42BC08(v14 > 1, v15 + 1, 1);
          v3 = v37;
        }

        *(v3 + 16) = v15 + 1;
        *(v3 + v15 + 32) = v13;
        if (v32)
        {
          if (!v10)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v16 = v3;
          if (sub_1DD640788())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v21 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD468, &qword_1DD650488);
          v22 = sub_1DD640298();
          sub_1DD640818();
          v22(v33, 0);
        }

        else
        {
          if (v10)
          {
            goto LABEL_37;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v16 = v3;
          v1 = v11;
          v17 = 1 << *(v11 + 32);
          if (v9 >= v17)
          {
            goto LABEL_32;
          }

          v18 = v9 >> 6;
          v19 = *(v30 + 8 * (v9 >> 6));
          if (((v19 >> v9) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_34;
          }

          v20 = v19 & (-2 << (v9 & 0x3F));
          if (v20)
          {
            v17 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v23 = v18 << 6;
            v24 = v18 + 1;
            v25 = (v29 + 8 * v18);
            while (v24 < (v17 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_1DD3AA558(v9, v8, 0);
                v17 = __clz(__rbit64(v26)) + v23;
                goto LABEL_27;
              }
            }

            sub_1DD3AA558(v9, v8, 0);
          }

LABEL_27:
          v28 = *(v11 + 36);
          v34 = v17;
          v35 = v28;
          v36 = 0;
          v21 = v31;
        }

        v3 = v16;
        if (v6 == v21)
        {
          sub_1DD3AA558(v34, v35, v36);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_1DD493044(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1DD4EC918();
    *a1 = v5;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + 32;
  v9[1] = v7;

  sub_1DD497F10(v9, a2);
  sub_1DD640968();
  if (!v2)
  {
  }
}

BOOL sub_1DD493108(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_1DD6407B8();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

void *sub_1DD493148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = MEMORY[0x1E69E7CC0];
  v3[4] = a3;
  v3[5] = v4;
  return v3;
}

uint64_t sub_1DD493160()
{
  sub_1DD63D2D8();
  OUTLINED_FUNCTION_0();
  v51 = v2;
  v52 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v57 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  v56 = sub_1DD63C868();
  OUTLINED_FUNCTION_0();
  v50 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD643B80;
  v17 = *(v0 + 24);
  v18 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date;
  v19 = *(v6 + 16);
  v19(v11, v17 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date, v4);
  v53 = v17;
  v19(v55, v17 + v18, v4);
  sub_1DD63C838();
  type metadata accessor for RecurringDateInterval(0);
  swift_allocObject();
  v55 = v15;
  *(v16 + 32) = sub_1DD57F5F8(v15, 0);
  v60 = v16;
  sub_1DD4962A0();
  v21 = v20;
  swift_beginAccess();
  *(v0 + 40) = v21;

  sub_1DD497974();
  if (qword_1ECCDB0C0 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v22 = sub_1DD63F9F8();
  __swift_project_value_buffer(v22, qword_1ECD0DDC0);

  v23 = sub_1DD63F9D8();
  v24 = sub_1DD640368();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v59[0] = v26;
    *v25 = 136315138;
    v27 = type metadata accessor for DateTimeConstraint();

    v29 = MEMORY[0x1E12B2430](v28, v27);
    v31 = v30;

    v32 = sub_1DD39565C(v29, v31, v59);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_1DD38D000, v23, v24, "ordered constraints: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v33 = v54;

  sub_1DD494160(v34, &v60);
  if (v33)
  {
    v35 = v60;

    return v35;
  }

  v36 = v60;
  v37 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
  v38 = v53;
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  (*(v51 + 16))(v57, v38 + v37, v52);
  v35 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC0];
  v54 = v36;
  result = sub_1DD3CC020();
  if (!result)
  {
LABEL_16:
    (*(v51 + 8))(v57, v52);

    return v35;
  }

  v40 = result;
  v49 = 0;
  if (result >= 1)
  {
    v41 = 0;
    v53 = v54 & 0xC000000000000001;
    v42 = (v50 + 16);
    v43 = (v50 + 8);
    v44 = v56;
    do
    {
      if (v53)
      {
        v45 = MEMORY[0x1E12B2C10](v41, v54);
      }

      else
      {
        v45 = *(v54 + 8 * v41 + 32);
      }

      v46 = v55;
      (*v42)(v55, v45 + OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval, v44);
      v47 = *(v45 + OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_recurrencePattern);

      sub_1DD484CB8(v57, v47);

      v48 = (*v43)(v46, v44);
      MEMORY[0x1E12B23F0](v48);
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD640138();
      }

      ++v41;
      sub_1DD640168();
      v35 = v58;
    }

    while (v40 != v41);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

BOOL sub_1DD493734()
{
  OUTLINED_FUNCTION_113();
  swift_beginAccess();

  v2 = sub_1DD498FB0(v1, v0);
  v3 = sub_1DD493108(v2);

  return !v3;
}

uint64_t sub_1DD4937AC(char a1)
{
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v3 = *(v1 + 40);
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_28:
    v6 = 0;
    return v6 & 1;
  }

  while (2)
  {
    v5 = v3 & 0xC000000000000001;

    v6 = 0;
    v7 = 0;
    v8 = 0;
LABEL_4:
    v9 = v8;
    if (v5)
    {
LABEL_5:
      v10 = OUTLINED_FUNCTION_62_5();
      v11 = MEMORY[0x1E12B2C10](v10);
      goto LABEL_8;
    }

LABEL_6:
    if (v9 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_8:
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      OUTLINED_FUNCTION_18_20();
      v4 = sub_1DD6407B8();
      if (!v4)
      {
        goto LABEL_28;
      }

      continue;
    }

    break;
  }

  switch(*(v11 + 50))
  {
    case 0:
      v12 = *(v11 + 16);

      if (v12 != 12 && v12 != 11)
      {
        goto LABEL_14;
      }

      v6 = 1;
      v7 = 1;
      goto LABEL_23;
    case 1:

      if (v7)
      {
LABEL_14:
        if (v8 == v4)
        {
          goto LABEL_24;
        }

        ++v9;
        v7 = 1;
        if (v5)
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      }

      v7 = 0;
LABEL_22:
      v6 = 1;
LABEL_23:
      if (v8 != v4)
      {
        goto LABEL_4;
      }

LABEL_24:

      return v6 & 1;
    case 2:

      goto LABEL_22;
    case 4:

      v6 |= a1;
      goto LABEL_23;
    default:

      goto LABEL_23;
  }
}

void sub_1DD493938(char a1)
{
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = sub_1DD3CC020();

  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      v7 = *(v1 + 40);
      v8 = sub_1DD3CC020();

      for (j = 0; ; ++j)
      {
        if (v8 == j)
        {
          goto LABEL_45;
        }

        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1E12B2C10](j, v7);
        }

        else
        {
          if (j >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v10 = *(v7 + 8 * j + 32);
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_48;
        }

        v11 = 0xE300000000000000;
        if (v10[49] != 1)
        {
          v11 = 0xE600000000000000;
        }

        if (v10[49])
        {
          v12 = v11;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (a1)
        {
          OUTLINED_FUNCTION_29_13();
          v16 = v15 & 0xFFFF00000000FFFFLL | 0x746573740000;
          if (v13)
          {
            v17 = 6581861;
          }

          else
          {
            v17 = v16;
          }

          if (v13)
          {
            v18 = 0xE300000000000000;
          }

          else
          {
            v18 = 0xE600000000000000;
          }
        }

        else
        {
          v18 = 0xE500000000000000;
          OUTLINED_FUNCTION_12_0();
        }

        if (v14 == v17 && v12 == v18)
        {
        }

        else
        {
          v20 = sub_1DD640CD8();

          if ((v20 & 1) == 0)
          {

            continue;
          }
        }

        if (v10[51] == 38)
        {
          goto LABEL_44;
        }

        v21 = v10[53];

        if (v21)
        {
          goto LABEL_45;
        }
      }
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E12B2C10](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return;
    }

    if (v5[50] != 2)
    {

      continue;
    }

    if (v5[51] == 38)
    {
      break;
    }

    v6 = v5[53];

    if (v6)
    {
      goto LABEL_45;
    }
  }

LABEL_44:

LABEL_45:
}

void sub_1DD493BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18_4();
  v23 = v22;
  v24 = 0;
  OUTLINED_FUNCTION_54_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v25 = *(v20 + 16);
  HIDWORD(v89) = v23;
  LOBYTE(v96) = v23;
  if ((v25 & 0xC000000000000001) == 0)
  {
    v53 = *(v25 + 32) & 0x3F;
    OUTLINED_FUNCTION_10_30();
    v55 = v54 >> 6;

    if (v53 > 0xD)
    {
      goto LABEL_81;
    }

    while (1)
    {
      v83 = v24;
      v85 = &v82;
      OUTLINED_FUNCTION_44_10();
      MEMORY[0x1EEE9AC00](v56);
      v57 = OUTLINED_FUNCTION_11_28();
      v86 = v55;
      v87 = v58;
      sub_1DD57634C(v57, v55, v58);
      v88 = 0;
      v59 = 0;
      v55 = v25 + 56;
      OUTLINED_FUNCTION_4_1();
      v62 = v61 & v60;
      v24 = (v63 + 63) >> 6;
      while (v62)
      {
        v64 = __clz(__rbit64(v62));
        v62 &= v62 - 1;
LABEL_47:
        v68 = *(*(v25 + 48) + 8 * (v64 | (v59 << 6)));
        if (sub_1DD48FCF0())
        {
          v69 = 0;
          v70 = *(v68 + 16);
          while (v69 != 7)
          {
            OUTLINED_FUNCTION_60_5();
            if (v34)
            {
              goto LABEL_54;
            }
          }

          if (sub_1DD4E21DC(v70, &unk_1F58ADBE8))
          {
LABEL_54:
            OUTLINED_FUNCTION_59_5();
            v72 = 0xE300000000000000;
            if (!v34)
            {
              v72 = 0xE600000000000000;
            }

            if (v71)
            {
              v73 = v72;
            }

            else
            {
              v73 = 0xE500000000000000;
            }

            OUTLINED_FUNCTION_58_5();
            if (v34)
            {
              v21 = 0xE500000000000000;
              OUTLINED_FUNCTION_12_0();
            }

            else
            {
              if (v75 == 1)
              {
                v76 = 6581861;
              }

              else
              {
                v76 = v21;
              }

              if (v75 == 1)
              {
                v21 = 0xE300000000000000;
              }

              else
              {
                v21 = 0xE600000000000000;
              }
            }

            if (v74 == v76 && v73 == v21)
            {

LABEL_74:
              v78 = *(v68 + 53);

              OUTLINED_FUNCTION_44_10();
              if (v78)
              {
                OUTLINED_FUNCTION_32_13();
                OUTLINED_FUNCTION_13_24(v79);
                if (__OFADD__(v88++, 1))
                {
                  __break(1u);
LABEL_78:
                  sub_1DD51607C(v87, v86, v88, v25);
                  OUTLINED_FUNCTION_57_9();
                  goto LABEL_79;
                }
              }
            }

            else
            {
              HIDWORD(v84) = sub_1DD640CD8();

              if ((v84 & 0x100000000) != 0)
              {
                goto LABEL_74;
              }

              OUTLINED_FUNCTION_44_10();
            }
          }
        }
      }

      v65 = v59;
      while (1)
      {
        v59 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if (v59 >= v24)
        {
          goto LABEL_78;
        }

        ++v65;
        if (*(v55 + 8 * v59))
        {
          OUTLINED_FUNCTION_14_3();
          v62 = v67 & v66;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_81:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v81 = swift_slowAlloc();
        OUTLINED_FUNCTION_66_3(v81);

        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        goto LABEL_79;
      }
    }
  }

  v26 = MEMORY[0x1E69E7CD0];
  v93 = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_37_13();
  sub_1DD640778();
  while (1)
  {
    v27 = sub_1DD6407F8();
    if (!v27)
    {
      break;
    }

    OUTLINED_FUNCTION_71_1(v27);
    OUTLINED_FUNCTION_27_16();
    swift_dynamicCast();
    v28 = v92;
    if (!sub_1DD48FCF0())
    {
      goto LABEL_36;
    }

    v29 = 0;
    v30 = *(v28 + 16);
    while (v29 != 7)
    {
      OUTLINED_FUNCTION_60_5();
      if (v34)
      {
        goto LABEL_11;
      }
    }

    if (!sub_1DD4E21DC(v30, &unk_1F58ADBE8))
    {
      goto LABEL_36;
    }

LABEL_11:
    OUTLINED_FUNCTION_59_5();
    if (v34)
    {
      v32 = 0xE300000000000000;
    }

    else
    {
      v32 = 0xE600000000000000;
    }

    if (v31)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    OUTLINED_FUNCTION_58_5();
    if (v34)
    {
      v39 = 0xE500000000000000;
      OUTLINED_FUNCTION_12_0();
    }

    else
    {
      OUTLINED_FUNCTION_29_13();
      v37 = v36 & 0xFFFF00000000FFFFLL | 0x746573740000;
      if (v34)
      {
        v38 = 6581861;
      }

      else
      {
        v38 = v37;
      }

      if (v34)
      {
        v39 = 0xE300000000000000;
      }

      else
      {
        v39 = 0xE600000000000000;
      }
    }

    if (v35 == v38 && v33 == v39)
    {

LABEL_32:
      if ((*(v28 + 53) & 1) == 0)
      {
        goto LABEL_36;
      }

      v49 = v92;
      v50 = v26[2];
      if (v26[3] <= v50)
      {
        OUTLINED_FUNCTION_70_1(v50, v42, v43, v44, v45, v46, v47, v48, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91[0], v91[1], v91[2], v91[3], v91[4], v91[5], v91[6], v91[7], v91[8], v92, v93, v94, v95, v96, v97);
      }

      v26 = v93;
      sub_1DD640E28();
      sub_1DD48E664(v91);
      sub_1DD640E78();
      OUTLINED_FUNCTION_9_28();
      OUTLINED_FUNCTION_25_10();
      OUTLINED_FUNCTION_5_42(v51);
      *(v26[6] + 8 * v52) = v49;
      ++v26[2];
    }

    else
    {
      v41 = sub_1DD640CD8();

      if (v41)
      {
        goto LABEL_32;
      }

LABEL_36:
    }
  }

LABEL_79:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4940DC(unsigned __int8 **a1, uint64_t a2)
{
  v3 = *a1;
  if (sub_1DD48FCF0() && ((v4 = v3[16], sub_1DD4E21DC(v4, &unk_1F58ADBC0)) || sub_1DD4E21DC(v4, &unk_1F58ADBE8)) && (sub_1DD3B017C(v3[49], a2) & 1) != 0)
  {
    return v3[53];
  }

  else
  {
    return 0;
  }
}

void sub_1DD494160(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD3CC020();

  v5 = 0;
  for (i = 0; ; i = v7)
  {
    if (v4 == v5)
    {
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E12B2C10](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v7 = *(a1 + 8 * v5 + 32);
    }

    if (__OFADD__(v5, 1))
    {
      break;
    }

    sub_1DD49427C(v7, i, a2);
    if (v2)
    {

LABEL_12:

      return;
    }

    ++v5;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1DD49427C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = *(v3 + 32);
  v7 = *(v6 + 16);
  v8 = v6 + 32;
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1DD3C2388(v8, &v19);
    v9 = v20;
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    if ((*(v10 + 8))(v4, v9, v10))
    {
      sub_1DD3AA4A8(&v19, v22);
      sub_1DD3AA4A8(v22, v23);
      v11 = v24;
      v12 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v13 = *(v3 + 24);
      v14 = sub_1DD4943FC(v4);
      v15 = sub_1DD494980(v4);
      v16 = v26;
      (*(v12 + 16))(v4, a2, v13, v14, v15, a3, v11, v12);

      if (!v16)
      {
        *(v4 + 55) = 1;
      }

      return __swift_destroy_boxed_opaque_existential_1(v23);
    }

    ++v5;
    result = __swift_destroy_boxed_opaque_existential_1(&v19);
    v8 += 40;
  }

  return result;
}

uint64_t sub_1DD4943FC(uint64_t a1)
{
  OUTLINED_FUNCTION_113();
  swift_beginAccess();

  v3 = sub_1DD499304(v2, a1);
  v56[0] = v3;
  swift_retain_n();

  v4 = sub_1DD4994E0(v3, a1);
  sub_1DD492D50(v4);
  v54 = v5;

  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_1DD640778();
    OUTLINED_FUNCTION_67_2();
    sub_1DD49C1EC();
    sub_1DD6402A8();
    v3 = v56[1];
    v6 = v56[2];
    v7 = v56[3];
    v8 = v56[4];
    v9 = v56[5];
  }

  else
  {
    v8 = 0;
    OUTLINED_FUNCTION_23_18();
    v6 = v3 + 56;
    OUTLINED_FUNCTION_10_5();
    v9 = v10 & v11;
  }

  v53 = v3;
  v12 = (v7 + 64) >> 6;
LABEL_5:
  while (v3 < 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    if (!sub_1DD6407F8())
    {
      goto LABEL_73;
    }

    type metadata accessor for DateTimeConstraint();
    OUTLINED_FUNCTION_42_7();
    v19 = v55[0];
    v14 = v8;
    v17 = v9;
    if (!v55[0])
    {
      goto LABEL_73;
    }

LABEL_14:
    if (*(a1 + 50) == 1 && !v19[50])
    {
      v4 = v56;
      sub_1DD581DE0(v19);
    }

    v20 = a1;
    v21 = *(a1 + 49);
    if (v19[49])
    {
      if (v19[49] == 1)
      {
        OUTLINED_FUNCTION_24_13();
        OUTLINED_FUNCTION_43_11();
      }

      else
      {
        v4 = 0xE600000000000000;
        OUTLINED_FUNCTION_43_11();
        v22 = v23;
      }

      v24 = 0x7472617473;
      if (!v21)
      {
LABEL_21:
        v25 = 0xE500000000000000;
        v23 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v4 = 0xE500000000000000;
      OUTLINED_FUNCTION_43_11();
      if (!v21)
      {
        goto LABEL_21;
      }
    }

    if (v21 == 1)
    {
      v25 = 0xE300000000000000;
      v23 = 6581861;
    }

    else
    {
      v25 = 0xE600000000000000;
    }

LABEL_27:
    if (v22 == v23 && v4 == v25)
    {
    }

    else
    {
      v27 = OUTLINED_FUNCTION_41_8(v22);

      if ((v27 & 1) == 0 && v19[50] == 1)
      {
        v4 = v56;
        sub_1DD581DE0(v19);
      }
    }

    v28 = (v54 + 32);
    v29 = *(v54 + 16);
    do
    {
      if (!v29)
      {

        v8 = v14;
        v9 = v17;
        a1 = v20;
        v3 = v53;
        goto LABEL_5;
      }

      v30 = *v28++;
      --v29;
    }

    while (v30 != v19[16]);
    v31 = v19[49];
    if (v31 == 1)
    {
      v32 = 6581861;
    }

    else
    {
      v32 = 0x746573746F6ELL;
    }

    if (v31 == 1)
    {
      v33 = 0xE300000000000000;
    }

    else
    {
      v33 = 0xE600000000000000;
    }

    if (v19[49])
    {
      v34 = v32;
    }

    else
    {
      v34 = 0x7472617473;
    }

    if (v19[49])
    {
      v4 = v33;
    }

    else
    {
      v4 = 0xE500000000000000;
    }

    if (v21 == 1)
    {
      v35 = 6581861;
    }

    else
    {
      v35 = 0x746573746F6ELL;
    }

    if (v21 == 1)
    {
      v36 = 0xE300000000000000;
    }

    else
    {
      v36 = 0xE600000000000000;
    }

    if (v21)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0x7472617473;
    }

    if (v21)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    v39 = v34 == v37 && v4 == v38;
    a1 = v20;
    if (v39)
    {
    }

    else
    {
      v40 = OUTLINED_FUNCTION_41_8(v34);

      if ((v40 & 1) == 0)
      {
        v4 = sub_1DD581DE0(v19);
      }
    }

    v8 = v14;
    v9 = v17;
    v3 = v53;
  }

  v13 = v8;
  v14 = v8;
  if (!v9)
  {
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        goto LABEL_73;
      }

      ++v13;
      if (*(v6 + 8 * v14))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_78;
  }

LABEL_10:
  OUTLINED_FUNCTION_14_3();
  v17 = v16 & v15;
  v19 = *(*(v3 + 48) + ((v14 << 9) | (8 * v18)));

  if (v19)
  {
    goto LABEL_14;
  }

LABEL_73:

  sub_1DD3AA5A4(v3);
  if (qword_1ECCDB0C0 == -1)
  {
    goto LABEL_74;
  }

LABEL_78:
  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_74:
  v41 = sub_1DD63F9F8();
  __swift_project_value_buffer(v41, qword_1ECD0DDC0);
  v42 = v56[0];

  v43 = sub_1DD63F9D8();
  v44 = sub_1DD640368();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v45 = 136315394;
    v46 = sub_1DD48E004();
    v48 = sub_1DD39565C(v46, v47, v55);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;
    type metadata accessor for DateTimeConstraint();
    sub_1DD49C1EC();
    v49 = sub_1DD640278();
    v51 = sub_1DD39565C(v49, v50, v55);

    *(v45 + 14) = v51;
    _os_log_impl(&dword_1DD38D000, v43, v44, "constraints stricter than %s: %s", v45, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  return v42;
}

BOOL sub_1DD494980(uint64_t a1)
{
  OUTLINED_FUNCTION_113();
  swift_beginAccess();

  v3 = sub_1DD499750(v2, a1);
  v4 = sub_1DD493108(v3);

  return v4;
}

void sub_1DD4949F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18_4();
  v22 = v21;
  OUTLINED_FUNCTION_54_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v23 = *(v20 + 16);
  HIDWORD(v87) = v22;
  LOBYTE(v94) = v22;
  v86 = 0;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x1E69E7CD0];
    v91 = MEMORY[0x1E69E7CD0];
    OUTLINED_FUNCTION_37_13();
    sub_1DD640778();
LABEL_3:
    while (1)
    {
      v25 = sub_1DD6407F8();
      if (!v25)
      {
        break;
      }

      OUTLINED_FUNCTION_71_1(v25);
      OUTLINED_FUNCTION_27_16();
      swift_dynamicCast();
      v26 = v90;
      if (sub_1DD48FCF0())
      {
        v27 = 0;
        while (v27 != 4)
        {
          v28 = &unk_1F58ADBE8 + v27++;
          if (v28[32] == *(v26 + 16))
          {
            OUTLINED_FUNCTION_59_5();
            if (v32)
            {
              v30 = 0xE300000000000000;
            }

            else
            {
              v30 = 0xE600000000000000;
            }

            if (v29)
            {
              v31 = v30;
            }

            else
            {
              v31 = 0xE500000000000000;
            }

            OUTLINED_FUNCTION_58_5();
            if (v32)
            {
              v37 = 0xE500000000000000;
              OUTLINED_FUNCTION_12_0();
            }

            else
            {
              OUTLINED_FUNCTION_29_13();
              v35 = v34 & 0xFFFF00000000FFFFLL | 0x746573740000;
              if (v32)
              {
                v36 = 6581861;
              }

              else
              {
                v36 = v35;
              }

              if (v32)
              {
                v37 = 0xE300000000000000;
              }

              else
              {
                v37 = 0xE600000000000000;
              }
            }

            if (v33 == v36 && v31 == v37)
            {
            }

            else
            {
              v39 = sub_1DD640CD8();

              if ((v39 & 1) == 0)
              {
                break;
              }
            }

            v47 = *(v24 + 16);
            if (*(v24 + 24) <= v47)
            {
              OUTLINED_FUNCTION_70_1(v47, v40, v41, v42, v43, v44, v45, v46, v82, v83, v84, v85, v86, v87, v88, v89[0], v89[1], v89[2], v89[3], v89[4], v89[5], v89[6], v89[7], v89[8], v90, v91, v92, v93, v94, v95, v96, v97);
            }

            v24 = v91;
            sub_1DD640E28();
            sub_1DD48E664(v89);
            sub_1DD640E78();
            OUTLINED_FUNCTION_9_28();
            OUTLINED_FUNCTION_25_10();
            OUTLINED_FUNCTION_5_42(v48);
            OUTLINED_FUNCTION_50_10(v49);
            goto LABEL_3;
          }
        }
      }
    }
  }

  else
  {
    v50 = *(v23 + 32) & 0x3F;
    OUTLINED_FUNCTION_10_30();
    v52 = v51 >> 6;

    if (v50 > 0xD)
    {
      goto LABEL_72;
    }

    while (1)
    {
      v82 = &v82;
      MEMORY[0x1EEE9AC00](v53);
      v54 = OUTLINED_FUNCTION_11_28();
      v83 = v52;
      v84 = v55;
      sub_1DD57634C(v54, v52, v55);
      v56 = 0;
      v57 = 0;
      v52 = v23 + 56;
      OUTLINED_FUNCTION_4_1();
      v60 = v59 & v58;
      v62 = (v61 + 63) >> 6;
LABEL_35:
      while (v60)
      {
        v63 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
LABEL_42:
        v67 = *(*(v23 + 48) + 8 * (v63 | (v57 << 6)));
        if (sub_1DD48FCF0())
        {
          v68 = 0;
          while (v68 != 4)
          {
            v69 = &unk_1F58ADBE8 + v68++;
            if (v69[32] == *(v67 + 16))
            {
              OUTLINED_FUNCTION_59_5();
              v71 = 0xE300000000000000;
              if (!v32)
              {
                v71 = 0xE600000000000000;
              }

              if (v70)
              {
                v72 = v71;
              }

              else
              {
                v72 = 0xE500000000000000;
              }

              v85 = v56;
              OUTLINED_FUNCTION_58_5();
              if (v32)
              {
                v76 = 0xE500000000000000;
                OUTLINED_FUNCTION_12_0();
              }

              else
              {
                if (v74 == 1)
                {
                  v75 = 6581861;
                }

                else
                {
                  v75 = 0x746573746F6ELL;
                }

                if (v74 == 1)
                {
                  v76 = 0xE300000000000000;
                }

                else
                {
                  v76 = 0xE600000000000000;
                }
              }

              if (v73 == v75 && v72 == v76)
              {

                v56 = v85;
              }

              else
              {
                v78 = sub_1DD640CD8();

                v56 = v85;
                if ((v78 & 1) == 0)
                {
                  goto LABEL_35;
                }
              }

              OUTLINED_FUNCTION_32_13();
              OUTLINED_FUNCTION_13_24(v79);
              if (__OFADD__(v56++, 1))
              {
                __break(1u);
                goto LABEL_69;
              }

              goto LABEL_35;
            }
          }
        }
      }

      v64 = v57;
      while (1)
      {
        v57 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          break;
        }

        if (v57 >= v62)
        {
LABEL_69:
          sub_1DD51607C(v84, v83, v56, v23);
          OUTLINED_FUNCTION_57_9();
          goto LABEL_70;
        }

        ++v64;
        if (*(v52 + 8 * v57))
        {
          OUTLINED_FUNCTION_14_3();
          v60 = v66 & v65;
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_72:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v81 = swift_slowAlloc();
    OUTLINED_FUNCTION_66_3(v81);

    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

LABEL_70:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD494EC4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (sub_1DD48FCF0() && sub_1DD4E21DC(*(v3 + 16), &unk_1F58ADBE8))
  {
    return sub_1DD3B017C(*(v3 + 49), a2) & 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DD494F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18_4();
  v22 = v21;
  OUTLINED_FUNCTION_54_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v23 = *(v20 + 16);
  LOBYTE(v164) = v22;
  v24 = MEMORY[0x1E69E7CD0];
  v150 = v23;
  v147 = 0;
  v149 = v20;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v162 = MEMORY[0x1E69E7CD0];

    v25 = sub_1DD640778();
    for (i = v24; ; ++i[2])
    {
      while (1)
      {
        v27 = v25;
        v28 = sub_1DD6407F8();
        if (!v28)
        {

          goto LABEL_66;
        }

        OUTLINED_FUNCTION_71_1(v28);
        OUTLINED_FUNCTION_27_16();
        OUTLINED_FUNCTION_42_7();
        v29 = v161;
        if (*(v161 + 51) == 38)
        {
          break;
        }

LABEL_29:
      }

      if (*(v161 + 49))
      {
        if (*(v161 + 49) == 1)
        {
          OUTLINED_FUNCTION_24_13();
        }

        else
        {
          v27 = 0xE600000000000000;
          OUTLINED_FUNCTION_6_33();
        }
      }

      else
      {
        v27 = 0xE500000000000000;
        OUTLINED_FUNCTION_8_30();
      }

      if (v22)
      {
        OUTLINED_FUNCTION_29_13();
        v33 = v32 & 0xFFFF00000000FFFFLL | 0x746573740000;
        if (v30)
        {
          v34 = 6581861;
        }

        else
        {
          v34 = v33;
        }

        if (v30)
        {
          v35 = 0xE300000000000000;
        }

        else
        {
          v35 = 0xE600000000000000;
        }
      }

      else
      {
        v35 = 0xE500000000000000;
        OUTLINED_FUNCTION_12_0();
      }

      if (v31 == v34 && v27 == v35)
      {
      }

      else
      {
        v37 = OUTLINED_FUNCTION_41_8(v31);

        if ((v37 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v45 = *(v29 + 16);
      v46 = v161;
      if (v45 != 4)
      {
        goto LABEL_29;
      }

      v47 = i[2];
      if (i[3] <= v47)
      {
        OUTLINED_FUNCTION_70_1(v47, v38, v39, v40, v41, v42, v43, v44, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163[0], v163[1], v164, v165);
      }

      i = v162;
      sub_1DD640E28();
      sub_1DD48E664(&v152);
      sub_1DD640E78();
      OUTLINED_FUNCTION_9_28();
      OUTLINED_FUNCTION_25_10();
      OUTLINED_FUNCTION_5_42(v48);
      *(i[6] + 8 * v49) = v46;
    }
  }

  v50 = v150[4] & 0x3F;
  OUTLINED_FUNCTION_10_30();
  v52 = v51 >> 6;

  if (v50 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v138 = swift_slowAlloc();
      i = sub_1DD497E80(v138, v52, v150, sub_1DD49C27C, v163);
      v147 = 0;

      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      goto LABEL_67;
    }
  }

  v143 = &v143;
  MEMORY[0x1EEE9AC00](v53);
  v54 = OUTLINED_FUNCTION_11_28();
  v144 = v52;
  v145 = v55;
  sub_1DD57634C(v54, v52, v55);
  v146 = 0;
  v56 = 0;
  v57 = (v150 + 7);
  OUTLINED_FUNCTION_4_1();
  v60 = v59 & v58;
  v62 = (v61 + 63) >> 6;
  while (v60)
  {
    v63 = __clz(__rbit64(v60));
    v60 &= v60 - 1;
LABEL_40:
    v67 = *(v150[6] + 8 * (v63 | (v56 << 6)));
    if (v67[51] == 38)
    {
      if (v67[49])
      {
        if (v67[49] == 1)
        {
          v68 = 0xE300000000000000;
          OUTLINED_FUNCTION_30_12();
        }

        else
        {
          v68 = 0xE600000000000000;
          OUTLINED_FUNCTION_6_33();
        }
      }

      else
      {
        v68 = 0xE500000000000000;
        OUTLINED_FUNCTION_8_30();
      }

      if (v22)
      {
        OUTLINED_FUNCTION_29_13();
        v73 = v72 & 0xFFFF00000000FFFFLL | 0x746573740000;
        if (v69)
        {
          v74 = 6581861;
        }

        else
        {
          v74 = v73;
        }

        if (v69)
        {
          v75 = 0xE300000000000000;
        }

        else
        {
          v75 = 0xE600000000000000;
        }
      }

      else
      {
        v75 = 0xE500000000000000;
        OUTLINED_FUNCTION_12_0();
      }

      v148 = v71;
      if (v70 == v74 && v68 == v75)
      {

LABEL_61:
        v78 = v67[16];

        if (v78 == 4)
        {
          OUTLINED_FUNCTION_32_13();
          OUTLINED_FUNCTION_13_24(v79);
          v80 = __OFADD__(v146, 1);
          v146 = (v146 + 1);
          if (v80)
          {
            __break(1u);
            goto LABEL_65;
          }
        }
      }

      else
      {
        v77 = sub_1DD640CD8();

        if (v77)
        {
          goto LABEL_61;
        }
      }
    }
  }

  v64 = v56;
  while (1)
  {
    v56 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      __break(1u);
      goto LABEL_135;
    }

    if (v56 >= v62)
    {
      break;
    }

    ++v64;
    if (*(v57 + 8 * v56))
    {
      OUTLINED_FUNCTION_14_3();
      v60 = v66 & v65;
      goto LABEL_40;
    }
  }

LABEL_65:
  sub_1DD51607C(v145, v144, v146, v150);
  i = v81;
  OUTLINED_FUNCTION_57_9();
LABEL_66:
  v20 = v149;
LABEL_67:
  LODWORD(v57) = sub_1DD493108(i);

  v150 = &v143;
  v83 = *(v20 + 16);
  MEMORY[0x1EEE9AC00](v82);
  LOBYTE(v141) = v22;
  LODWORD(v148) = v57;
  if ((v83 & 0xC000000000000001) != 0)
  {
    v162 = v24;

    v84 = sub_1DD640778();
    while (1)
    {
      while (1)
      {
        v85 = v84;
        v86 = sub_1DD6407F8();
        if (!v86)
        {

          goto LABEL_129;
        }

        OUTLINED_FUNCTION_71_1(v86);
        OUTLINED_FUNCTION_27_16();
        OUTLINED_FUNCTION_42_7();
        if ((*(v161 + 51) | 8) == 0x18)
        {
          break;
        }

LABEL_89:
      }

      if (*(v161 + 49))
      {
        if (*(v161 + 49) == 1)
        {
          OUTLINED_FUNCTION_24_13();
        }

        else
        {
          v85 = 0xE600000000000000;
          OUTLINED_FUNCTION_6_33();
        }
      }

      else
      {
        v85 = 0xE500000000000000;
        OUTLINED_FUNCTION_8_30();
      }

      if (v22)
      {
        OUTLINED_FUNCTION_29_13();
        v90 = v89 & 0xFFFF00000000FFFFLL | 0x746573740000;
        if (v87)
        {
          v91 = 6581861;
        }

        else
        {
          v91 = v90;
        }

        if (v87)
        {
          v92 = 0xE300000000000000;
        }

        else
        {
          v92 = 0xE600000000000000;
        }
      }

      else
      {
        v92 = 0xE500000000000000;
        OUTLINED_FUNCTION_12_0();
      }

      if (v88 == v91 && v85 == v92)
      {
      }

      else
      {
        v94 = OUTLINED_FUNCTION_41_8(v88);

        if ((v94 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v102 = v161;
      v103 = v24[2];
      if (v24[3] <= v103)
      {
        OUTLINED_FUNCTION_70_1(v103, v95, v96, v97, v98, v99, v100, v101, v140[0], v140[1], v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);
      }

      v24 = v162;
      sub_1DD640E28();
      sub_1DD48E664(&v152);
      sub_1DD640E78();
      OUTLINED_FUNCTION_20_18();
      OUTLINED_FUNCTION_25_10();
      OUTLINED_FUNCTION_5_42(v104);
      *(v24[6] + 8 * v105) = v102;
      OUTLINED_FUNCTION_46_3();
    }
  }

  v106 = *(v83 + 32) & 0x3F;
  OUTLINED_FUNCTION_10_30();
  v108 = (v107 >> 6);

  if (v106 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v139 = swift_slowAlloc();
      v24 = sub_1DD497E80(v139, v108, v83, sub_1DD49C29C, v140);

      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
LABEL_130:
      v22 = sub_1DD493108(v24);

      if (qword_1ECCDB0C0 != -1)
      {
        goto LABEL_136;
      }

      goto LABEL_131;
    }
  }

  v144 = v140;
  MEMORY[0x1EEE9AC00](v109);
  v110 = OUTLINED_FUNCTION_11_28();
  v145 = v108;
  v146 = v111;
  sub_1DD57634C(v110, v108, v111);
  v149 = 0;
  v57 = 0;
  OUTLINED_FUNCTION_4_1();
  v114 = v113 & v112;
  v116 = (v115 + 63) >> 6;
  while (v114)
  {
    v117 = __clz(__rbit64(v114));
    v114 &= v114 - 1;
LABEL_104:
    v121 = *(*(v83 + 48) + 8 * (v117 | (v57 << 6)));
    if ((*(v121 + 51) | 8) == 0x18)
    {
      v122 = *(v121 + 49);
      if (v122)
      {
        if (v122 == 1)
        {
          v123 = 0xE300000000000000;
          OUTLINED_FUNCTION_30_12();
        }

        else
        {
          v123 = 0xE600000000000000;
          OUTLINED_FUNCTION_6_33();
        }
      }

      else
      {
        v123 = 0xE500000000000000;
        OUTLINED_FUNCTION_8_30();
      }

      if (v22)
      {
        OUTLINED_FUNCTION_29_13();
        v127 = v126 & 0xFFFF00000000FFFFLL | 0x746573740000;
        if (v124)
        {
          v128 = 6581861;
        }

        else
        {
          v128 = v127;
        }

        if (v124)
        {
          v129 = 0xE300000000000000;
        }

        else
        {
          v129 = 0xE600000000000000;
        }
      }

      else
      {
        v129 = 0xE500000000000000;
        OUTLINED_FUNCTION_12_0();
      }

      if (v125 == v128 && v123 == v129)
      {

LABEL_125:
        OUTLINED_FUNCTION_32_13();
        OUTLINED_FUNCTION_13_24(v132);
        v80 = __OFADD__(v149++, 1);
        if (v80)
        {
          __break(1u);
LABEL_128:
          sub_1DD51607C(v146, v145, v149, v83);
          v24 = v133;
          OUTLINED_FUNCTION_57_9();
LABEL_129:
          LOBYTE(v57) = v148;
          goto LABEL_130;
        }
      }

      else
      {
        v131 = sub_1DD640CD8();

        if (v131)
        {
          goto LABEL_125;
        }
      }
    }
  }

  v118 = v57;
  while (1)
  {
    v57 = v118 + 1;
    if (__OFADD__(v118, 1))
    {
      break;
    }

    if (v57 >= v116)
    {
      goto LABEL_128;
    }

    ++v118;
    if (*(v83 + 56 + 8 * v57))
    {
      OUTLINED_FUNCTION_14_3();
      v114 = v120 & v119;
      goto LABEL_104;
    }
  }

LABEL_135:
  __break(1u);
LABEL_136:
  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_131:
  v134 = sub_1DD63F9F8();
  __swift_project_value_buffer(v134, qword_1ECD0DDC0);
  v135 = sub_1DD63F9D8();
  v136 = sub_1DD640368();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    *v137 = 67109376;
    *(v137 + 4) = (v57 & 1) == 0;
    *(v137 + 8) = 1024;
    *(v137 + 10) = !v22;
    _os_log_impl(&dword_1DD38D000, v135, v136, "startHourConstraintSet: %{BOOL}d, nightTimeConstraintsExist: %{BOOL}d", v137, 0xEu);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD495994(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 51) | 8) == 0x18)
  {
    return sub_1DD3B017C(*(*a1 + 49), a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD4959E0(unsigned __int8 a1, char a2)
{
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v4 = *(v2 + 16);
  if ((v4 & 0xC000000000000001) != 0)
  {

    sub_1DD640778();
    OUTLINED_FUNCTION_67_2();
    sub_1DD49C1EC();
    sub_1DD6402A8();
    v4 = v43;
    v5 = v44;
    v6 = v45;
    v7 = v46;
    v8 = v47;
  }

  else
  {
    OUTLINED_FUNCTION_23_18();
    v5 = v4 + 56;
    v6 = ~v9;
    OUTLINED_FUNCTION_10_5();
    v8 = v10 & v11;

    v7 = 0;
  }

  v39 = a1;
  *&v12 = (v6 + 64) >> 6;
  v40 = v4;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1DD6407F8() || (type metadata accessor for DateTimeConstraint(), OUTLINED_FUNCTION_42_7(), (v17 = v42) == 0))
      {
LABEL_38:
        v27 = OUTLINED_FUNCTION_38_9();
        sub_1DD3AA5A4(v27);
        goto LABEL_39;
      }
    }

    else
    {
      v13 = v7;
      if (!v8)
      {
        while (1)
        {
          v7 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v7 >= *&v12)
          {
            goto LABEL_38;
          }

          ++v13;
          if (*(v5 + 8 * v7))
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        return *&v12;
      }

LABEL_10:
      OUTLINED_FUNCTION_14_3();
      v8 = v15 & v14;
      v17 = *(*(v4 + 48) + ((v7 << 9) | (8 * v16)));

      if (!v17)
      {
        goto LABEL_38;
      }
    }

    if (*(v17 + 51) == 38)
    {
      if (*(v17 + 49))
      {
        if (*(v17 + 49) == 1)
        {
          v18 = 0xE300000000000000;
          OUTLINED_FUNCTION_30_12();
        }

        else
        {
          v18 = 0xE600000000000000;
          OUTLINED_FUNCTION_6_33();
        }
      }

      else
      {
        v18 = 0xE500000000000000;
        OUTLINED_FUNCTION_8_30();
      }

      if (a2)
      {
        OUTLINED_FUNCTION_29_13();
        v22 = v21 & 0xFFFF00000000FFFFLL | 0x746573740000;
        v23 = v19 ? 6581861 : v22;
        v24 = v19 ? 0xE300000000000000 : 0xE600000000000000;
      }

      else
      {
        v24 = 0xE500000000000000;
        OUTLINED_FUNCTION_12_0();
      }

      if (v20 == v23 && v18 == v24)
      {

        v4 = v40;
      }

      else
      {
        v26 = sub_1DD640CD8();

        v4 = v40;
        if ((v26 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      if (*(v17 + 16) == v39 && !*(v17 + 50))
      {
        break;
      }
    }

LABEL_37:
  }

  v29 = OUTLINED_FUNCTION_38_9();
  sub_1DD3AA5A4(v29);
  v12 = *(v17 + 24);
  v30 = *(v17 + 48);
  v31 = OUTLINED_FUNCTION_56_6();
  sub_1DD48FEF0(v31, v32, v33, v34);

  if (v30 == 2)
  {
    return *&v12;
  }

  if (v30)
  {
    v35 = OUTLINED_FUNCTION_56_6();
    sub_1DD48FF14(v35, v36, v37, v38);
LABEL_39:
    v12 = 0.0;
    return *&v12;
  }

  if ((~*&v12 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v12 < 9.22337204e18)
  {
    *&v12 = v12;
    return *&v12;
  }

LABEL_52:
  __break(1u);
  return result;
}

unint64_t *sub_1DD495D20(unsigned __int8 a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a1;
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v4 = *(v1 + 16);
  LOBYTE(v44) = a1;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E69E7CD0];
    v42 = MEMORY[0x1E69E7CD0];

    sub_1DD640778();
    while (1)
    {
      v6 = sub_1DD6407F8();
      if (!v6)
      {
        break;
      }

      v40[0] = v6;
      type metadata accessor for DateTimeConstraint();
      swift_dynamicCast();
      v14 = v41;
      if (!*(v41 + 48) && *(v41 + 24) == 0.0 && *(v41 + 16) == v3 && *(v41 + 50) == 1)
      {
        v15 = v5[2];
        if (v5[3] <= v15)
        {
          OUTLINED_FUNCTION_53_6(v15, v7, v8, v9, v10, v11, v12, v13, v39, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v41, v42, v43[0], v43[1], v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
        }

        v5 = v42;
        sub_1DD640E28();
        sub_1DD48E664(v40);
        sub_1DD640E78();
        OUTLINED_FUNCTION_20_18();
        OUTLINED_FUNCTION_25_10();
        OUTLINED_FUNCTION_5_42(v16);
        *(v5[6] + 8 * v17) = v14;
        ++v5[2];
      }

      else
      {
      }
    }
  }

  else
  {
    v18 = *(v4 + 32) & 0x3F;
    OUTLINED_FUNCTION_10_30();
    v20 = v19 >> 6;
    v21 = 8 * (v19 >> 6);

    if (v18 > 0xD)
    {
      goto LABEL_32;
    }

    while (1)
    {
      MEMORY[0x1EEE9AC00](v22);
      v23 = OUTLINED_FUNCTION_40_6();
      sub_1DD57634C(v23, v20, v21);
      OUTLINED_FUNCTION_2_42();
      while (v27)
      {
        OUTLINED_FUNCTION_17_24();
LABEL_22:
        v31 = *(*(v4 + 48) + 8 * v28);
        if (!*(v31 + 48) && *(v31 + 24) == 0.0 && *(v31 + 16) == v3 && *(v31 + 50) == 1)
        {
          OUTLINED_FUNCTION_33_9();
          if (v32)
          {
            __break(1u);
LABEL_29:
            v33 = OUTLINED_FUNCTION_62_5();
            sub_1DD51607C(v33, v34, v35, v4);
            return v36;
          }
        }
      }

      v29 = v25;
      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v30 >= v26)
        {
          goto LABEL_29;
        }

        ++v29;
        if (*(v24 + 8 * v30))
        {
          OUTLINED_FUNCTION_16_24();
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_32:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v38 = swift_slowAlloc();
    v5 = sub_1DD497E80(v38, v20, v4, sub_1DD49C25C, v43);

    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  return v5;
}

BOOL sub_1DD49602C(uint64_t *a1, unsigned __int8 a2)
{
  result = 0;
  v4 = *a1;
  if (!*(v4 + 48) && *(v4 + 24) == 0.0)
  {
    return *(v4 + 16) == a2 && *(v4 + 50) == 1;
  }

  return result;
}

uint64_t sub_1DD496070(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = a1[49];
  v6 = a2[49];
  if (sub_1DD3B017C(a1[49], a2[49]))
  {
    v7 = a1[16];
    v8 = a2[16];
    if (v7 == v8)
    {
      v9 = a1[50];
      if (v9 == a2[50])
      {
        v10 = a1[54] ^ 1;
      }

      else
      {
        v10 = v9 == 0;
      }
    }

    else
    {
      v10 = v8 < v7;
    }

    return v10 & 1;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      v11 = 6581861;
    }

    else
    {
      v11 = 0x746573746F6ELL;
    }

    OUTLINED_FUNCTION_65_4(v11);
    OUTLINED_FUNCTION_68_2();
    if ((v2 & 1) == 0)
    {
      goto LABEL_19;
    }

    if (v6)
    {
      goto LABEL_11;
    }

LABEL_15:
    v12 = 0x7472617473;
    goto LABEL_18;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v6 == 1)
  {
    goto LABEL_37;
  }

  v12 = 0x746573746F6ELL;
LABEL_18:
  OUTLINED_FUNCTION_22_15(v12);
  OUTLINED_FUNCTION_68_2();
  if (v2)
  {
    goto LABEL_38;
  }

LABEL_19:
  if (!v5)
  {

    if (!v6)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (v5 == 1)
  {
    v13 = 6581861;
  }

  else
  {
    v13 = 0x746573746F6ELL;
  }

  OUTLINED_FUNCTION_65_4(v13);
  OUTLINED_FUNCTION_68_2();
  if (v2)
  {
    if (!v6)
    {
      goto LABEL_28;
    }

LABEL_25:
    if (v6 != 1)
    {
LABEL_37:

      goto LABEL_38;
    }

    OUTLINED_FUNCTION_30_12();
LABEL_28:
    sub_1DD640CD8();
    OUTLINED_FUNCTION_68_2();
    if ((v2 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_38:
    v10 = 1;
    return v10 & 1;
  }

LABEL_29:
  if (v5)
  {
    if (v5 == 1)
    {

      goto LABEL_35;
    }

    v14 = 0x746573746F6ELL;
  }

  else
  {
    v14 = 0x7472617473;
  }

  v15 = OUTLINED_FUNCTION_22_15(v14);

  v10 = 0;
  if (v15)
  {
LABEL_35:
    if (v6 <= 1)
    {
      v16 = sub_1DD640CD8();

      return v16 & 1;
    }

    goto LABEL_37;
  }

  return v10 & 1;
}

void sub_1DD4962A0()
{
  OUTLINED_FUNCTION_18_4();
  v267 = v0;
  OUTLINED_FUNCTION_54_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CD0];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v290 = MEMORY[0x1E69E7CD0];

    sub_1DD640778();
    v3 = v2;
    while (1)
    {
      v4 = sub_1DD6407F8();
      if (!v4)
      {
        break;
      }

      OUTLINED_FUNCTION_39_8(v4);
      OUTLINED_FUNCTION_42_7();
      v12 = v285;
      if (*(v285 + 51) == 38 || (*(v285 + 54) & 1) != 0)
      {
      }

      else
      {
        v13 = *(v3 + 16);
        if (*(v3 + 24) <= v13)
        {
          OUTLINED_FUNCTION_53_6(v13, v5, v6, v7, v8, v9, v10, v11, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
        }

        v3 = v290;
        sub_1DD640E28();
        sub_1DD48E664(&v270);
        sub_1DD640E78();
        OUTLINED_FUNCTION_20_18();
        OUTLINED_FUNCTION_25_10();
        OUTLINED_FUNCTION_5_42(v14);
        *(*(v3 + 48) + 8 * v15) = v12;
        ++*(v3 + 16);
      }
    }
  }

  else
  {
    v16 = *(v1 + 32) & 0x3F;
    OUTLINED_FUNCTION_10_30();
    v18 = v17 >> 6;
    v19 = 8 * (v17 >> 6);

    if (v16 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v259 = swift_slowAlloc();

        v3 = sub_1DD497E80(v259, v18, v1, sub_1DD49785C, 0);
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        goto LABEL_26;
      }
    }

    MEMORY[0x1EEE9AC00](v20);
    v21 = (&v261 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v18, v21);
    OUTLINED_FUNCTION_2_42();
    while (1)
    {
      if (v26)
      {
        OUTLINED_FUNCTION_17_24();
      }

      else
      {
        v29 = v24;
        do
        {
          v30 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_192;
          }

          if (v30 >= v25)
          {
            goto LABEL_25;
          }

          ++v29;
        }

        while (!*(v23 + 8 * v30));
        OUTLINED_FUNCTION_16_24();
      }

      v31 = *(*(v1 + 48) + 8 * v28);
      if (*(v31 + 51) != 38 && (*(v31 + 54) & 1) == 0)
      {
        *(v21 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= v27 << v28;
        v32 = __OFADD__(v22++, 1);
        if (v32)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    sub_1DD51607C(v21, v18, v22, v1);
    v3 = v33;
  }

LABEL_26:
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_1DD640778();
    OUTLINED_FUNCTION_67_2();
    sub_1DD49C1EC();
    sub_1DD6402A8();
    v34 = v285;
    v35 = v286;
    v36 = v287;
    v37 = v288;
    v38 = v289;
  }

  else
  {
    OUTLINED_FUNCTION_23_18();
    v35 = (v3 + 56);
    v40 = ~v39;
    OUTLINED_FUNCTION_10_5();
    v38 = v41 & v42;

    v36 = v40;
    v37 = 0;
    v34 = v3;
  }

  v262 = v36;
  v43 = (v36 + 64) >> 6;
  v265 = v34;
  v263 = v43;
  v264 = v35;
  if (v34 < 0)
  {
    goto LABEL_36;
  }

LABEL_30:
  v44 = v37;
  i = v37;
  if (!v38)
  {
    while (1)
    {
      i = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (i >= v43)
      {
        v38 = 0;
        goto LABEL_131;
      }

      ++v44;
      if (*&v35[8 * i])
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:

LABEL_195:
    v210 = OUTLINED_FUNCTION_12_24();
    sub_1DD3AA5A4(v210);

    i = v263;
    if (qword_1ECCDB0C0 == -1)
    {
      goto LABEL_196;
    }

    goto LABEL_228;
  }

LABEL_34:
  OUTLINED_FUNCTION_14_3();
  v266 = v47 & v46;
  v49 = *(*(v34 + 48) + ((i << 9) | (8 * v48)));

  if (v49)
  {
    do
    {
      OUTLINED_FUNCTION_55_6();
      v51 = *(v38 + 16);

      sub_1DD498A58(v52, v49);
      OUTLINED_FUNCTION_49_7();
      if (v193)
      {
        v53 = *(v51 + 16);
      }

      else
      {
        v53 = sub_1DD6407B8();
      }

      if (v53)
      {
        OUTLINED_FUNCTION_15_21();
        OUTLINED_FUNCTION_69_1();
        OUTLINED_FUNCTION_52_6();
      }

      if (v49[16] == 3 && v49[51] == 39)
      {
        v54 = *(v38 + 16);

        sub_1DD498D04(v55, v49);
        OUTLINED_FUNCTION_49_7();
        v56 = v193 ? *(v54 + 16) : sub_1DD6407B8();

        if (v56)
        {
          OUTLINED_FUNCTION_15_21();
          OUTLINED_FUNCTION_69_1();
          OUTLINED_FUNCTION_52_6();
        }
      }

      if (v49[49])
      {
        if (v49[49] == 1)
        {

          goto LABEL_56;
        }

        v64 = OUTLINED_FUNCTION_6_33();
      }

      else
      {
        v64 = OUTLINED_FUNCTION_8_30();
      }

      v65 = OUTLINED_FUNCTION_22_15(v64);

      if ((v65 & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_56:
      if ((v49[51] & 0xFE) != 0x28)
      {
        goto LABEL_86;
      }

      sub_1DD4949F8(0, v57, v58, v59, v60, v61, v62, v63, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);
      OUTLINED_FUNCTION_49_7();
      if (v193)
      {
        OUTLINED_FUNCTION_28_8();
        if (!(!v193 & v80))
        {
          goto LABEL_67;
        }

        if (swift_stdlib_isStackAllocationSafe())
        {

LABEL_67:
          MEMORY[0x1EEE9AC00](v79);
          OUTLINED_FUNCTION_36_10(v81, v82, v83, v84, v85, v86, v87, v88, v261);
          OUTLINED_FUNCTION_19_19();
          while (v92)
          {
            OUTLINED_FUNCTION_48_10();
LABEL_75:
            OUTLINED_FUNCTION_61_6();
            if (v193)
            {
              OUTLINED_FUNCTION_34_12();
              if (v32)
              {
                while (1)
                {
                  __break(1u);
LABEL_227:
                  __break(1u);
LABEL_228:
                  OUTLINED_FUNCTION_0_6();
                  swift_once();
LABEL_196:
                  v211 = sub_1DD63F9F8();
                  v212 = __swift_project_value_buffer(v211, qword_1ECD0DDC0);
                  v213 = swift_allocObject();
                  *(v213 + 16) = i;
                  v262 = v212;
                  v214 = sub_1DD63F9D8();
                  v215 = sub_1DD640368();
                  v216 = swift_allocObject();
                  *(v216 + 16) = 0;
                  v217 = swift_allocObject();
                  *(v217 + 16) = 8;
                  v218 = swift_allocObject();
                  *(v218 + 16) = sub_1DD49C244;
                  *(v218 + 24) = v213;
                  v219 = swift_allocObject();
                  *(v219 + 16) = sub_1DD49C24C;
                  *(v219 + 24) = v218;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
                  v220 = swift_allocObject();
                  sub_1DD3AE030(v220, 3);
                  *v221 = sub_1DD3FA50C;
                  v221[1] = v216;
                  v221[2] = sub_1DD3FAEC8;
                  v221[3] = v217;
                  v221[4] = sub_1DD49C254;
                  v221[5] = v219;

                  if (os_log_type_enabled(v214, v215))
                  {
                    v222 = swift_slowAlloc();
                    *v222 = 134217984;

                    *(v222 + 4) = i;

                    _os_log_impl(&dword_1DD38D000, v214, v215, "removing .pm constraint for hourValue: %ld and adding an .am constraint", v222, 0xCu);
                    OUTLINED_FUNCTION_13_0();
                    MEMORY[0x1E12B3DA0]();
                  }

                  else
                  {
                  }

                  v223 = v264;
                  v224 = v264[16];
                  v271 = 0;
                  v270 = 0;
                  v272 = 0;
                  LOBYTE(v273) = 1;
                  v225 = v264[50];
                  v226 = v264[49];
                  LOBYTE(v279) = v264[51];
                  v227 = v264[53];
                  v228 = v264[52];
                  v229 = v264[54];
                  v230 = type metadata accessor for DateTimeConstraint();
                  swift_allocObject();
                  v231 = sub_1DD48DFB4(v224, &v270, v226, v225, &v279, v227, v228, v229);
                  v232 = v267;
                  OUTLINED_FUNCTION_45_8(v267 + 16, &v270);
                  sub_1DD56E250(&v279, v231, v233, v234, v235, v236, v237, v238, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282);
                  swift_endAccess();

                  OUTLINED_FUNCTION_45_8(v232 + 16, &v270);
                  sub_1DD581DE0(v223);
                  OUTLINED_FUNCTION_52_6();

                  v239 = *(v232 + 16);
                  v266 = v230;
                  if ((v239 & 0xC000000000000001) != 0)
                  {
                    OUTLINED_FUNCTION_37_13();
                    swift_unknownObjectRetain();
                    sub_1DD640778();
                    sub_1DD49C1EC();
                    sub_1DD6402A8();
                    v240 = v270;
                    v38 = v271;
                    v241 = v272;
                    v242 = v273;
                    v243 = v274;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_23_18();
                    v38 = v239 + 56;
                    v241 = ~v244;
                    OUTLINED_FUNCTION_10_5();
                    v243 = v245 & v246;
                    swift_bridgeObjectRetain_n();
                    v242 = 0;
                    v240 = v239;
                  }

                  v265 = v241;
                  for (i = (v241 + 64) >> 6; v240 < 0; v243 = v251)
                  {
                    v253 = sub_1DD6407F8();
                    if (!v253)
                    {
                      goto LABEL_214;
                    }

                    v268 = v253;
                    swift_dynamicCast();
                    v3 = v279;
                    v248 = v242;
                    v251 = v243;
LABEL_210:
                    if (!v3)
                    {
LABEL_214:
                      v254 = OUTLINED_FUNCTION_12_24();
                      sub_1DD3AA5A4(v254);

LABEL_187:

                      OUTLINED_FUNCTION_55_6();
                      goto LABEL_188;
                    }

                    v279 = v3;
                    if (sub_1DD497898(&v279))
                    {
                      goto LABEL_216;
                    }

                    v242 = v248;
                  }

                  v247 = v242;
                  v248 = v242;
                  if (v243)
                  {
                    break;
                  }

                  while (1)
                  {
                    v248 = v247 + 1;
                    if (__OFADD__(v247, 1))
                    {
                      break;
                    }

                    if (v248 >= i)
                    {
                      goto LABEL_214;
                    }

                    ++v247;
                    if (*(v38 + 8 * v248))
                    {
                      goto LABEL_207;
                    }
                  }

                  __break(1u);
                }

LABEL_207:
                OUTLINED_FUNCTION_14_3();
                v251 = v250 & v249;
                v3 = *(*(v240 + 48) + ((v248 << 9) | (8 * v252)));

                goto LABEL_210;
              }
            }
          }

          v93 = v90;
          while (1)
          {
            v94 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              goto LABEL_190;
            }

            if (v94 >= v91)
            {
              break;
            }

            ++v93;
            if (*(v89 + 8 * v94))
            {
              OUTLINED_FUNCTION_51_7();
              goto LABEL_75;
            }
          }

          v95 = OUTLINED_FUNCTION_38_9();
          sub_1DD51607C(v95, v96, v97, v38);
          v66 = v98;
          goto LABEL_81;
        }

        swift_slowAlloc();

        v142 = OUTLINED_FUNCTION_38_9();
        v66 = sub_1DD497E80(v142, v143, v38, v144, 0);
        OUTLINED_FUNCTION_35_10();
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
        v290 = v2;
        OUTLINED_FUNCTION_18_20();
        sub_1DD640778();
        v66 = v2;
        while (1)
        {
          v67 = sub_1DD6407F8();
          if (!v67)
          {
            break;
          }

          OUTLINED_FUNCTION_39_8(v67);
          OUTLINED_FUNCTION_47_8();
          OUTLINED_FUNCTION_42_7();
          v75 = v279;
          if (*(v279 + 51) == 38)
          {
            v76 = v66[2];
            if (v66[3] <= v76)
            {
              OUTLINED_FUNCTION_53_6(v76, v68, v69, v70, v71, v72, v73, v74, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
            }

            v66 = v290;
            sub_1DD640E28();
            sub_1DD48E664(&v270);
            sub_1DD640E78();
            OUTLINED_FUNCTION_9_28();
            OUTLINED_FUNCTION_25_10();
            OUTLINED_FUNCTION_5_42(v77);
            *(v66[6] + 8 * v78) = v75;
            OUTLINED_FUNCTION_46_3();
          }

          else
          {
          }
        }
      }

LABEL_81:
      v38 = v267;
      if ((v66 & 0xC000000000000001) != 0)
      {
        v99 = sub_1DD6407B8();
      }

      else
      {
        v99 = v66[2];
      }

      if (v99)
      {
        OUTLINED_FUNCTION_15_21();
        OUTLINED_FUNCTION_69_1();
        OUTLINED_FUNCTION_52_6();
      }

LABEL_86:
      if (!v49[49])
      {
        v107 = OUTLINED_FUNCTION_8_30();
        goto LABEL_91;
      }

      if (v49[49] != 1)
      {
        v107 = OUTLINED_FUNCTION_6_33();
LABEL_91:
        v108 = OUTLINED_FUNCTION_22_15(v107);

        if ((v108 & 1) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_92;
      }

LABEL_92:
      if (v49[51] - 38 > 3)
      {
        sub_1DD4949F8(0, v100, v101, v102, v103, v104, v105, v106, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);
        OUTLINED_FUNCTION_49_7();
        if (!v193)
        {
          v290 = v2;
          OUTLINED_FUNCTION_18_20();
          sub_1DD640778();
          v109 = v2;
          while (1)
          {
            v110 = sub_1DD6407F8();
            if (!v110)
            {
              break;
            }

            OUTLINED_FUNCTION_39_8(v110);
            OUTLINED_FUNCTION_47_8();
            OUTLINED_FUNCTION_42_7();
            v118 = v279;
            if (*(v279 + 51) == 38)
            {
              v119 = v109[2];
              if (v109[3] <= v119)
              {
                OUTLINED_FUNCTION_53_6(v119, v111, v112, v113, v114, v115, v116, v117, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
              }

              v109 = v290;
              sub_1DD640E28();
              sub_1DD48E664(&v270);
              sub_1DD640E78();
              OUTLINED_FUNCTION_9_28();
              OUTLINED_FUNCTION_25_10();
              OUTLINED_FUNCTION_5_42(v120);
              *(v109[6] + 8 * v121) = v118;
              OUTLINED_FUNCTION_46_3();
            }

            else
            {
            }
          }

LABEL_117:
          if ((v109 & 0xC000000000000001) != 0)
          {
            v141 = sub_1DD6407B8();
          }

          else
          {
            v141 = v109[2];
          }

          if (v141)
          {
            OUTLINED_FUNCTION_15_21();
            OUTLINED_FUNCTION_69_1();
            OUTLINED_FUNCTION_52_6();
          }

          goto LABEL_122;
        }

        OUTLINED_FUNCTION_28_8();
        if (!v193 & v80)
        {

          if (!swift_stdlib_isStackAllocationSafe())
          {
            swift_slowAlloc();

            v145 = OUTLINED_FUNCTION_38_9();
            v109 = sub_1DD497E80(v145, v146, v38, v147, 0);
            OUTLINED_FUNCTION_35_10();
            swift_bridgeObjectRelease_n();
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
            goto LABEL_117;
          }
        }

        MEMORY[0x1EEE9AC00](v122);
        OUTLINED_FUNCTION_36_10(v123, v124, v125, v126, v127, v128, v129, v130, v261);
        OUTLINED_FUNCTION_19_19();
        while (v134)
        {
          OUTLINED_FUNCTION_48_10();
LABEL_111:
          OUTLINED_FUNCTION_61_6();
          if (v193)
          {
            OUTLINED_FUNCTION_34_12();
            if (v32)
            {
              goto LABEL_227;
            }
          }
        }

        v135 = v132;
        while (1)
        {
          v136 = v135 + 1;
          if (__OFADD__(v135, 1))
          {
            goto LABEL_191;
          }

          if (v136 >= v133)
          {
            break;
          }

          ++v135;
          if (*(v131 + 8 * v136))
          {
            OUTLINED_FUNCTION_51_7();
            goto LABEL_111;
          }
        }

        v137 = OUTLINED_FUNCTION_38_9();
        sub_1DD51607C(v137, v138, v139, v38);
        v109 = v140;
        goto LABEL_117;
      }

LABEL_122:

      v37 = i;
      v38 = v266;
      v34 = v265;
      v43 = v263;
      v35 = v264;
      if ((v265 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_36:
      v50 = sub_1DD6407F8();
      if (!v50)
      {
        goto LABEL_131;
      }

      v290 = v50;
      type metadata accessor for DateTimeConstraint();
      OUTLINED_FUNCTION_42_7();
      v49 = v270;
      i = v37;
      v266 = v38;
    }

    while (v270);
  }

  v34 = v265;
LABEL_131:
  sub_1DD3AA5A4(v34);
  OUTLINED_FUNCTION_55_6();
  sub_1DD4949F8(v148, v149, v150, v151, v152, v153, v154, v155, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);
  OUTLINED_FUNCTION_49_7();
  if (!v193)
  {

    v290 = v2;
    OUTLINED_FUNCTION_18_20();
    sub_1DD640778();
    while (1)
    {
      v156 = sub_1DD6407F8();
      if (!v156)
      {
        break;
      }

      OUTLINED_FUNCTION_39_8(v156);
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_42_7();
      v3 = v279;
      if (*(v279 + 50) == 1)
      {
        v164 = v2[2];
        if (v2[3] <= v164)
        {
          OUTLINED_FUNCTION_53_6(v164, v157, v158, v159, v160, v161, v162, v163, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
        }

        v2 = v290;
        sub_1DD640E28();
        sub_1DD48E664(&v270);
        sub_1DD640E78();
        OUTLINED_FUNCTION_20_18();
        OUTLINED_FUNCTION_25_10();
        OUTLINED_FUNCTION_5_42(v165);
        OUTLINED_FUNCTION_50_10(v166);
      }

      else
      {
      }
    }

    goto LABEL_154;
  }

  v167 = *(v38 + 32);
  v168 = ((1 << v167) + 63) >> 6;
  v169 = (8 * v168);
  if ((v167 & 0x3Fu) <= 0xD)
  {
LABEL_141:

    MEMORY[0x1EEE9AC00](v170);
    v171 = OUTLINED_FUNCTION_40_6();
    sub_1DD57634C(v171, v168, v169);
    OUTLINED_FUNCTION_2_42();
    while (1)
    {
      if (v176)
      {
        OUTLINED_FUNCTION_17_24();
      }

      else
      {
        v178 = v174;
        do
        {
          v179 = v178 + 1;
          if (__OFADD__(v178, 1))
          {
            goto LABEL_193;
          }

          if (v179 >= v175)
          {
            goto LABEL_153;
          }

          ++v178;
        }

        while (!*(v173 + 8 * v179));
        OUTLINED_FUNCTION_16_24();
      }

      if (*(*(*(v38 + 48) + 8 * v177) + 50) == 1)
      {
        OUTLINED_FUNCTION_33_9();
        if (v32)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_153:
    sub_1DD51607C(v169, v168, v172, v38);
    v2 = v180;
    goto LABEL_154;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_141;
  }

  v260 = swift_slowAlloc();

  v2 = sub_1DD497E80(v260, v168, v38, sub_1DD497884, 0);
  OUTLINED_FUNCTION_35_10();
  swift_bridgeObjectRelease_n();

  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1E12B3DA0]();
LABEL_154:
  v181 = sub_1DD493108(v2);

  if (!v181)
  {
    v189 = sub_1DD495D20(5u);
    OUTLINED_FUNCTION_15_21();
    sub_1DD49BD28(v189);
    swift_endAccess();
  }

  sub_1DD494F2C(0, v182, v183, v184, v185, v186, v187, v188, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);
  if ((v190 & 1) == 0)
  {
    goto LABEL_188;
  }

  v191 = sub_1DD4959E0(4u, 0);
  if (v192)
  {
    goto LABEL_188;
  }

  v193 = v191 < 4 || v191 == 12;
  if (!v193)
  {
    goto LABEL_188;
  }

  v194 = *(v38 + 16);
  v263 = v191;
  v266 = v194;
  if ((v194 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1DD640778();
    OUTLINED_FUNCTION_67_2();
    sub_1DD49C1EC();
    sub_1DD6402A8();
    v194 = v290;
    v38 = v291;
    v195 = v292;
    v196 = v293;
    v197 = v294;
  }

  else
  {
    OUTLINED_FUNCTION_23_18();
    v38 = v194 + 56;
    v195 = ~v198;
    OUTLINED_FUNCTION_10_5();
    v197 = v199 & v200;
    swift_bridgeObjectRetain_n();
    v196 = 0;
  }

  v265 = v195;
  while (v194 < 0)
  {
    v205 = sub_1DD6407F8();
    if (!v205 || (v279 = v205, type metadata accessor for DateTimeConstraint(), OUTLINED_FUNCTION_42_7(), (v204 = v270) == 0))
    {
LABEL_186:
      v207 = OUTLINED_FUNCTION_12_24();
      sub_1DD3AA5A4(v207);
      goto LABEL_187;
    }

LABEL_177:
    if (v204[51] | 8) == 0x18 && v204[48] == 1 && (*(v204 + 6))
    {
      v206 = v204[49];
      v264 = v204;
      if (v206 == 1)
      {
        OUTLINED_FUNCTION_24_13();
      }

      else
      {
        if (v206 != 2)
        {
          goto LABEL_194;
        }

        OUTLINED_FUNCTION_6_33();
      }

      OUTLINED_FUNCTION_12_0();
      v3 = sub_1DD640CD8();

      if (v3)
      {
        goto LABEL_195;
      }
    }
  }

  v201 = v196;
  if (v197)
  {
LABEL_173:
    OUTLINED_FUNCTION_14_3();
    v197 = v203 & v202;

    if (!v204)
    {
      goto LABEL_186;
    }

    goto LABEL_177;
  }

  while (1)
  {
    v196 = v201 + 1;
    if (__OFADD__(v201, 1))
    {
      break;
    }

    if (v196 >= ((v195 + 64) >> 6))
    {
      goto LABEL_186;
    }

    ++v201;
    if (*(v38 + 8 * v196))
    {
      goto LABEL_173;
    }
  }

  __break(1u);
LABEL_216:
  v255 = OUTLINED_FUNCTION_12_24();
  sub_1DD3AA5A4(v255);

  v256 = sub_1DD63F9D8();
  v257 = sub_1DD640368();
  if (os_log_type_enabled(v256, v257))
  {
    v258 = swift_slowAlloc();
    *v258 = 0;
    _os_log_impl(&dword_1DD38D000, v256, v257, "Removing dayOfWeekConstraint of value: 0", v258, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_45_8(v38 + 16, &v279);
  sub_1DD581DE0(v3);
  swift_endAccess();

LABEL_188:

  sub_1DD59870C(v208);

  swift_retain_n();

  v279 = sub_1DD4D3D7C(v209);
  sub_1DD493044(&v279, v38);

  OUTLINED_FUNCTION_17();
}