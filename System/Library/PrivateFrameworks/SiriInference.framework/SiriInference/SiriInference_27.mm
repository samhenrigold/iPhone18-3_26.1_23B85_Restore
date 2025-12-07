uint64_t sub_1DD57DD68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001DD673030 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DD673050 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001DD673070 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001DD673090 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x657461446D6F7266 && a2 == 0xEC000000656D6954;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6954657461446F74 && a2 == 0xEA0000000000656DLL;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x5664656E69666564 && a2 == 0xEC00000065756C61)
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

unint64_t sub_1DD57DFB0(char a1)
{
  result = 0x657461446D6F7266;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      return result;
    case 5:
      result = 0x6954657461446F74;
      break;
    case 6:
      result = 0x5664656E69666564;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_1DD57E0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD57DD68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD57E0DC(uint64_t a1)
{
  v2 = sub_1DD57EE18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD57E118(uint64_t a1)
{
  v2 = sub_1DD57EE18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTime.RecurrencePattern.deinit()
{

  return v0;
}

uint64_t DateTime.RecurrencePattern.__deallocating_deinit()
{
  DateTime.RecurrencePattern.deinit();
  OUTLINED_FUNCTION_5_75();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD57E1C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF038, &qword_1DD65CFC8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD57EE18();
  sub_1DD640EF8();
  v19 = *(v3 + 16);
  HIBYTE(v18) = 0;
  type metadata accessor for DateTime.DateTimeRange();
  OUTLINED_FUNCTION_6_65();
  sub_1DD57F010(v11, 255, v12, &protocol conformance descriptor for DateTime.DateTimeRange);
  OUTLINED_FUNCTION_2_90();
  sub_1DD640C08();
  if (!v2)
  {
    v19 = *(v3 + 24);
    HIBYTE(v18) = 1;
    type metadata accessor for DateTime.Interval();
    OUTLINED_FUNCTION_7_53();
    sub_1DD57F010(v13, 255, v14, &protocol conformance descriptor for DateTime.Interval);
    OUTLINED_FUNCTION_2_90();
    sub_1DD640C08();
    LOBYTE(v19) = 2;
    OUTLINED_FUNCTION_56();
    sub_1DD640BF8();
    v19 = *(v3 + 48);
    HIBYTE(v18) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF048, &qword_1DD65CFD0);
    sub_1DD57EEE4(&qword_1ECCDF050, &qword_1ECCDD480, &protocol conformance descriptor for DateTime, MEMORY[0x1E69E64F0]);
    OUTLINED_FUNCTION_2_90();
    sub_1DD640C68();
    v19 = *(v3 + 56);
    HIBYTE(v18) = 4;
    type metadata accessor for DateTime();
    OUTLINED_FUNCTION_0_121();
    sub_1DD57F010(v15, 255, v16, &protocol conformance descriptor for DateTime);
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_56();
    sub_1DD640C08();
    v19 = *(v3 + 64);
    HIBYTE(v18) = 5;
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_56();
    sub_1DD640C08();
    LOBYTE(v19) = *(v3 + 72);
    HIBYTE(v18) = 6;
    sub_1DD57EE6C();
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_56();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1DD57E4D0()
{
  sub_1DD640E28();
  sub_1DD57D78C(v1);
  return sub_1DD640E78();
}

uint64_t DateTime.RecurrencePattern.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_5_75();
  v2 = swift_allocObject();
  DateTime.RecurrencePattern.init(from:)(a1);
  return v2;
}

uint64_t DateTime.RecurrencePattern.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF060, &qword_1DD65CFD8);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD57EE18();
  sub_1DD640ED8();
  if (v2)
  {
    type metadata accessor for DateTime.RecurrencePattern();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_6_65();
    sub_1DD57F010(v5, 255, v6, &protocol conformance descriptor for DateTime.DateTimeRange);
    OUTLINED_FUNCTION_1_105();
    sub_1DD640B18();
    *(v1 + 16) = v15;
    type metadata accessor for DateTime.Interval();
    OUTLINED_FUNCTION_7_53();
    sub_1DD57F010(v7, 255, v8, &protocol conformance descriptor for DateTime.Interval);
    OUTLINED_FUNCTION_1_105();
    sub_1DD640B18();
    *(v1 + 24) = v15;
    LOBYTE(v15) = 2;
    *(v1 + 32) = sub_1DD640B08();
    *(v1 + 40) = v9 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF048, &qword_1DD65CFD0);
    sub_1DD57EEE4(&qword_1ECCDF068, &qword_1ECCDD4A8, &protocol conformance descriptor for DateTime, MEMORY[0x1E69E6510]);
    OUTLINED_FUNCTION_1_105();
    sub_1DD640B78();
    *(v1 + 48) = v15;
    type metadata accessor for DateTime();
    OUTLINED_FUNCTION_0_121();
    sub_1DD57F010(v11, 255, v12, &protocol conformance descriptor for DateTime);
    OUTLINED_FUNCTION_15_41();
    sub_1DD640B18();
    *(v1 + 56) = v15;
    OUTLINED_FUNCTION_15_41();
    sub_1DD640B18();
    *(v1 + 64) = v15;
    sub_1DD57EF74();
    sub_1DD640B18();
    v13 = OUTLINED_FUNCTION_41();
    v14(v13);
    *(v1 + 72) = 2;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1DD57EA20(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD57D78C(v2);
  return sub_1DD640E78();
}

uint64_t sub_1DD57EA60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTime.RecurrencePattern.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD57EAD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1DD6407B8();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_1DD640808();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DD57EBD8(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DD640E78();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_1DD640778();
    type metadata accessor for DateTime();
    sub_1DD57F010(&qword_1ECCDC740, 255, type metadata accessor for DateTime, &protocol conformance descriptor for DateTime);
    result = sub_1DD6402A8();
    a2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = 0;
  if (a2 < 0)
  {
    goto LABEL_10;
  }

  while (v7)
  {
    v12 = v6;
LABEL_17:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v17[9] = *(*(a2 + 48) + ((v12 << 9) | (8 * v15)));

    while (1)
    {
      sub_1DD640E28();
      sub_1DD489FC8(v17);
      v16 = sub_1DD640E78();

      v11 ^= v16;
      if ((a2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_10:
      v13 = sub_1DD6407F8();
      if (!v13)
      {
        goto LABEL_20;
      }

      v17[0] = v13;
      type metadata accessor for DateTime();
      swift_dynamicCast();
    }
  }

  v14 = v6;
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= ((v5 + 64) >> 6))
    {
LABEL_20:
      sub_1DD3AA5A4(a2);
      return MEMORY[0x1E12B3140](v11);
    }

    v7 = *(v4 + 8 * v12);
    ++v14;
    if (v7)
    {
      v6 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD57EE18()
{
  result = qword_1ECCDF040;
  if (!qword_1ECCDF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF040);
  }

  return result;
}

unint64_t sub_1DD57EE6C()
{
  result = qword_1ECCDF058;
  if (!qword_1ECCDF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF058);
  }

  return result;
}

uint64_t sub_1DD57EEE4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF048, &qword_1DD65CFD0);
    OUTLINED_FUNCTION_0_121();
    sub_1DD57F010(a2, 255, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD57EF74()
{
  result = qword_1ECCDF070;
  if (!qword_1ECCDF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF070);
  }

  return result;
}

uint64_t sub_1DD57F010(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

_BYTE *_s17RecurrencePatternC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD57F260()
{
  result = qword_1ECCDF080;
  if (!qword_1ECCDF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF080);
  }

  return result;
}

unint64_t sub_1DD57F2B8()
{
  result = qword_1ECCDF088;
  if (!qword_1ECCDF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF088);
  }

  return result;
}

unint64_t sub_1DD57F310()
{
  result = qword_1ECCDF090;
  if (!qword_1ECCDF090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF090);
  }

  return result;
}

uint64_t sub_1DD57F364(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_18_33(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  sub_1DD640E78();
  OUTLINED_FUNCTION_4_1();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;

  v15 = 0;
  v16 = 0;
  if (v11)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return MEMORY[0x1E12B3140](v15);
    }

    v11 = *(v8 + 56 + 8 * v17);
    ++v16;
    if (v11)
    {
      v16 = v17;
      do
      {
LABEL_7:
        v11 &= v11 - 1;
        sub_1DD640E28();

        sub_1DD63FD28();
        v18 = sub_1DD640E78();

        v15 ^= v18;
      }

      while (v11);
      continue;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD57F490(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_18_33(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  sub_1DD640E78();
  v9 = 0;
  v10 = 0;
  OUTLINED_FUNCTION_4_1();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  if ((v12 & v11) != 0)
  {
    do
    {
      v16 = v10;
LABEL_7:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = *(*(v8 + 48) + (v17 | (v16 << 6)));
      sub_1DD640E28();
      MEMORY[0x1E12B3140](v18);
      v9 ^= sub_1DD640E78();
    }

    while (v13);
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {
      MEMORY[0x1E12B3140](v9);
      return;
    }

    v13 = *(v8 + 56 + 8 * v16);
    ++v10;
    if (v13)
    {
      v10 = v16;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_12_36(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1DD63FD28();
}

uint64_t OUTLINED_FUNCTION_19_31(uint64_t a1)
{

  return sub_1DD640E28();
}

uint64_t sub_1DD57F5F8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_recurrencePattern;
  *(v2 + OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_recurrencePattern) = 0;
  v6 = OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval;
  v7 = sub_1DD63C868();
  (*(*(v7 - 8) + 32))(v2 + v6, a1, v7);
  *(v2 + v5) = a2;
  return v2;
}

uint64_t sub_1DD57F684()
{
  v1 = sub_1DD63C868();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval, v1, v3);
  v6 = sub_1DD63C808();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_1DD57F784()
{
  v1 = OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval;
  v2 = sub_1DD63C868();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecurringDateInterval(uint64_t a1)
{
  result = qword_1ECCDF098;
  if (!qword_1ECCDF098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD57F884(uint64_t a1)
{
  result = sub_1DD63C868();
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

uint64_t sub_1DD57F940()
{
  sub_1DD5D3268(0);
  v1 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DD5D2E58();
    if (v0)
    {
      break;
    }

    if (!v2)
    {
      return v1;
    }

    v21 = v2;
    sub_1DD4DD9E4(&v21, &v15);

    v3 = v16;
    if (v16)
    {
      v4 = v17;
      v5 = v18;
      v6 = v19;
      v7 = v20;
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3C0934(0, *(v1 + 16) + 1, 1, v1);
        v1 = v11;
      }

      v9 = *(v1 + 16);
      v8 = *(v1 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1DD3C0934(v8 > 1, v9 + 1, 1, v1);
        v1 = v12;
      }

      *(v1 + 16) = v9 + 1;
      v10 = (v1 + 48 * v9);
      v10[4] = v14;
      v10[5] = v3;
      v10[6] = v4;
      v10[7] = v5;
      v10[8] = v6;
      v10[9] = v7;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1DD57FAAC(uint64_t a1)
{
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v2 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_1_4();
  v89 = (v3 - v4);
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v80 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v80 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v80 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC30, &unk_1DD6575D0);
  v13 = *(v2 + 72);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v91 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DD643F90;
  v93 = v15;
  v90 = v14;
  sub_1DD4DDC08(a1, v15 + v14, &qword_1ECCDBC18, &unk_1DD6459A0);
  v16 = *(a1 + 184);
  if (v16)
  {
    v17 = *(a1 + 176);
    v18 = 1;
    switch(*(a1 + 248))
    {
      case 1:
        break;
      default:
        v18 = sub_1DD640CD8();
        break;
    }

    sub_1DD4DDC08(a1, v12, &qword_1ECCDBC18, &unk_1DD6459A0);
    v19 = v12[8];
    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v12[7] & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v99[0] = v12[7];
      v99[1] = v19;

      MEMORY[0x1E12B2260](32, 0xE100000000000000);
      MEMORY[0x1E12B2260](v17, v16);

      v17 = v99[0];
      v21 = v99[1];
    }

    else
    {

      v21 = v16;
    }

    v12[7] = v17;
    v12[8] = v21;
    sub_1DD4178B4(v12[21], v12[22], v12[23]);

    v12[21] = 0;
    v12[22] = 0;
    v12[23] = 0;
    v22 = v12 + *(v92 + 36);
    v23 = type metadata accessor for ContactResolver.SignalSet(0);
    v22[*(v23 + 148)] = v18 & 1;
    v22[*(v23 + 164)] = 1;
    sub_1DD3BF7FC();
    *(v24 + 16) = 2;
    v93 = v24;
    sub_1DD4DDCBC(v12, v24 + v90 + v91, &qword_1ECCDBC18, &unk_1DD6459A0);
  }

  memcpy(v99, a1, 0x108uLL);
  memcpy(v98, a1, sizeof(v98));
  sub_1DD3C9478(v99, v97);
  v35 = sub_1DD5806FC(v98);
  memcpy(v97, v98, sizeof(v97));
  sub_1DD3C9580(v97);
  v36 = qword_1EE165FB0;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v37 = sub_1DD63F9F8();
  __swift_project_value_buffer(v37, qword_1EE16F068);
  v38 = sub_1DD63F9D8();
  v39 = sub_1DD640368();

  v40 = os_log_type_enabled(v38, v39);
  v85 = v35;
  if (v40)
  {
    OUTLINED_FUNCTION_18_1();
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v42 = swift_slowAlloc();
    v96[0] = v42;
    *v41 = 136315138;
    v43 = sub_1DD640278();
    v45 = sub_1DD39565C(v43, v44, v96);

    *(v41 + 4) = v45;
    v35 = v85;
    _os_log_impl(&dword_1DD38D000, v38, v39, "found aliases: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v46 = 0;
  v87 = a1;
  v84 = *(a1 + 184);
  v83 = v84 == 0;
  v47 = v35 + 56;
  v48 = 1 << *(v35 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v35 + 56);
  v51 = (v48 + 63) >> 6;
  v81 = v35 + 56;
  v82 = v51;
  if (v50)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v52 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v52 >= v51)
    {
      goto LABEL_41;
    }

    v50 = *(v47 + 8 * v52);
    ++v46;
    if (v50)
    {
      v46 = v52;
      do
      {
LABEL_27:
        v53 = (*(v35 + 48) + ((v46 << 10) | (16 * __clz(__rbit64(v50)))));
        v54 = *v53;
        v55 = v53[1];
        v56 = v87;
        sub_1DD4DDC08(v87, v9, &qword_1ECCDBC18, &unk_1DD6459A0);
        memcpy(v96, v9, 0x108uLL);

        sub_1DD3C9580(v96);
        *v9 = 0;
        v9[1] = 0xE000000000000000;
        *(v9 + 16) = 0;
        v9[3] = 0;
        v9[4] = 0xE000000000000000;
        v9[5] = 0;
        v9[6] = 0xE000000000000000;
        v9[7] = 0;
        v9[8] = 0xE000000000000000;
        v9[9] = 0;
        v9[10] = 0xE000000000000000;
        v9[11] = 0;
        v9[12] = 0xE000000000000000;
        v9[13] = 0;
        v9[14] = 0xE000000000000000;
        v9[15] = 0;
        v9[16] = 0xE000000000000000;
        v9[17] = 0;
        v9[18] = 0xE000000000000000;
        v9[19] = 0;
        v9[20] = 0xE000000000000000;
        *(v9 + 27) = 0u;
        *(v9 + 25) = 0u;
        *(v9 + 23) = 0u;
        *(v9 + 21) = 0u;
        v9[29] = 0;
        v9[30] = MEMORY[0x1E69E7CC0];
        v9[32] = 0;
        *(v9 + 248) = *(v56 + 248);

        sub_1DD4178B4(0, 0, 0);
        v9[21] = 0;
        v9[22] = v54;
        v86 = v54;
        v9[23] = v55;
        v57 = v9 + *(v92 + 36);
        v58 = type metadata accessor for ContactResolver.SignalSet(0);
        v61 = v58;
        v57[*(v58 + 148)] = 1;
        v57[*(v58 + 164)] = v83;
        v62 = v93;
        v63 = *(v93 + 16);
        if (v63 >= *(v93 + 24) >> 1)
        {
          OUTLINED_FUNCTION_12_37();
          v62 = v58;
        }

        v50 &= v50 - 1;
        OUTLINED_FUNCTION_11_44(v58, v59, v60, v62);
        sub_1DD4DDCBC(v9, v64 + v63 * v65, &qword_1ECCDBC18, &unk_1DD6459A0);
        if (v84)
        {
          v66 = v89;
          sub_1DD4DDC08(v87, v89, &qword_1ECCDBC18, &unk_1DD6459A0);
          v67 = *(v66 + 64);
          v68 = HIBYTE(v67) & 0xF;
          if ((v67 & 0x2000000000000000) == 0)
          {
            v68 = *(v66 + 56) & 0xFFFFFFFFFFFFLL;
          }

          if (v68)
          {
            v94 = *(v66 + 56);
            v95 = v67;

            MEMORY[0x1E12B2260](32, 0xE100000000000000);
            MEMORY[0x1E12B2260](v86, v55);

            v69 = v94;
            v55 = v95;
          }

          else
          {

            v69 = v86;
          }

          v70 = v89;
          v89[7] = v69;
          v70[8] = v55;
          sub_1DD4178B4(v70[21], v70[22], v70[23]);
          v70[21] = 0;
          v70[22] = 0;
          v70[23] = 0;
          v71 = v70 + *(v92 + 36);
          v71[*(v61 + 148)] = 1;
          v71[*(v61 + 164)] = 1;
          v72 = sub_1DD4DDCBC(v70, v88, &qword_1ECCDBC18, &unk_1DD6459A0);
          v75 = v93;
          v76 = *(v93 + 16);
          v35 = v85;
          if (v76 >= *(v93 + 24) >> 1)
          {
            OUTLINED_FUNCTION_12_37();
            v75 = v72;
          }

          OUTLINED_FUNCTION_11_44(v72, v73, v74, v75);
          sub_1DD4DDCBC(v88, v77 + v76 * v78, &qword_1ECCDBC18, &unk_1DD6459A0);
        }

        else
        {

          v35 = v85;
        }

        v47 = v81;
        v51 = v82;
      }

      while (v50);
    }
  }

  __break(1u);
  OUTLINED_FUNCTION_0_2();
  swift_once();
  v25 = sub_1DD63F9F8();
  __swift_project_value_buffer(v25, qword_1EE16F068);
  v26 = &qword_1ECCDBC18;
  v27 = sub_1DD63F9D8();
  v28 = sub_1DD640378();

  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_18_1();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v30 = swift_slowAlloc();
    v96[0] = v30;
    *v29 = 136315138;
    v94 = &qword_1ECCDBC18;
    v31 = &qword_1ECCDBC18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v32 = sub_1DD63FE38();
    v34 = sub_1DD39565C(v32, v33, v96);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1DD38D000, v27, v28, "RelationshipAliasExpander failed to find aliases. error=%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  type metadata accessor for InferenceError();
  swift_allocObject();
  sub_1DD4DE96C(24, 0, 0xE000000000000000, 0xD000000000000095, 0x80000001DD6731B0, 0x7128646E61707865, 0xEE00293A79726575, 45, MEMORY[0x1E69E7CC0], 1);
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  __swift_project_value_buffer(v25, qword_1EE16F0C8);
  sub_1DD4DEB78();

LABEL_41:

  return v93;
}

uint64_t sub_1DD5804E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD406240(a1, a2, a3, &v12);
  if (!v3)
  {
    if (v13)
    {
      sub_1DD3AA4A8(&v12, v14);
      sub_1DD3C2388(v14, &v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v14);
        return v11;
      }

      else
      {
        v8 = sub_1DD4CF1AC();
        v9 = OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v8);
        OUTLINED_FUNCTION_8_57(xmmword_1DD65D4A0, v9, v10);
        return __swift_destroy_boxed_opaque_existential_1(v14);
      }
    }

    else
    {
      sub_1DD390754(&v12, &qword_1ECCDCF98, &qword_1DD6547F0);
      v5 = sub_1DD4CF1AC();
      v6 = OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v5);
      return OUTLINED_FUNCTION_7_54(xmmword_1DD65D4A0, v6, v7);
    }
  }

  return result;
}

uint64_t sub_1DD5805F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD406240(a1, a2, a3, &v12);
  if (!v3)
  {
    if (v13)
    {
      sub_1DD3AA4A8(&v12, v14);
      sub_1DD3C2388(v14, &v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v14);
        return v11;
      }

      else
      {
        v8 = sub_1DD4CF1AC();
        v9 = OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v8);
        OUTLINED_FUNCTION_8_57(xmmword_1DD65D4A0, v9, v10);
        return __swift_destroy_boxed_opaque_existential_1(v14);
      }
    }

    else
    {
      sub_1DD390754(&v12, &qword_1ECCDCF98, &qword_1DD6547F0);
      v5 = sub_1DD4CF1AC();
      v6 = OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v5);
      return OUTLINED_FUNCTION_7_54(xmmword_1DD65D4A0, v6, v7);
    }
  }

  return result;
}

uint64_t sub_1DD5806FC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v69 - v5;
  v7 = a1[22];
  v89 = a1[21];
  v8 = a1[23];
  if (!sub_1DD581B24())
  {
    return MEMORY[0x1E69E7CD0];
  }

  if (v8)
  {
    v73 = v7;
    v9 = sub_1DD63FE58();
    v11 = v10;

    v72 = v8;

    OUTLINED_FUNCTION_10_49();
    sub_1DD580E80(v12, v13);
    v71 = v9;

    v86[0] = v9;
    v86[1] = v11;
    v14 = v1 + *(type metadata accessor for RelationshipAliasGenerator(0) + 24);
    v15 = type metadata accessor for StringTokenizer(0);
    v70 = v11;
    v16 = *(v15 + 20);
    v17 = sub_1DD63D168();
    OUTLINED_FUNCTION_7();
    (*(v18 + 16))(v6, v14 + v16, v17);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v17);
    sub_1DD3B7F10();
    v19 = sub_1DD6406C8();
    v21 = v20;
    sub_1DD390754(v6, &qword_1ECCDC3F0, &unk_1DD64AF50);
    sub_1DD580E80(v19, v21);
    v40 = v70;

    OUTLINED_FUNCTION_10_49();
    v42 = sub_1DD581048(v41);
    v44 = v43;
    v45 = v71;
    OUTLINED_FUNCTION_10_49();
    v88[0] = sub_1DD581118(v46, v47, v48);
    sub_1DD56CE00(v86, v42, v44, v50, v51, v52, v53, v54, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86[0], v86[1], v86[2], v86[3], v86[4]);

    sub_1DD581CB8(v45, v40);

    sub_1DD4178B4(v89, v73, v72);

    return v88[0];
  }

  v22 = v1 + *(type metadata accessor for RelationshipAliasGenerator(0) + 24);
  v72 = type metadata accessor for StringTokenizer(0);
  v88[3] = v72;
  v88[4] = &off_1F58C2FE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
  v73 = v22;
  sub_1DD4BE2A4(v22, boxed_opaque_existential_1);
  memcpy(v86, a1, 0xA8uLL);
  v86[21] = v89;
  v86[22] = v7;
  v86[23] = 0;
  memcpy(v87, a1 + 24, sizeof(v87));
  sub_1DD41E258();
  MEMORY[0x1EEE9AC00](v24);
  *(&v69 - 2) = v88;
  *(&v69 - 4) = 1;
  sub_1DD582E38();
  v26 = v25;

  v27 = sub_1DD41859C(v26);
  __swift_destroy_boxed_opaque_existential_1(v88);
  if (*(v27 + 16) != 1)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v28 = sub_1DD558C68(v27);
  v30 = v29;

  if (!v30)
  {

    return MEMORY[0x1E69E7CD0];
  }

  OUTLINED_FUNCTION_10_49();
  v33 = sub_1DD580E80(v31, v32);
  if (v2)
  {

    v86[0] = v28;
    v86[1] = v30;
    v34 = v72[5];
    v35 = sub_1DD63D168();
    OUTLINED_FUNCTION_7();
    (*(v36 + 16))(v6, v73 + v34, v35);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v35);
    sub_1DD3B7F10();
    v37 = sub_1DD6406C8();
    v39 = v38;
    sub_1DD390754(v6, &qword_1ECCDC3F0, &unk_1DD64AF50);

    v56 = sub_1DD580E80(v37, v39);
  }

  else
  {
    v56 = v33;
  }

  v57 = sub_1DD581048(v56);
  v59 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = v57;
  *(inited + 40) = v59;
  sub_1DD56C2F4(inited, v61, v62, v63, v64, v65, v66, v67, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86[0], v86[1], v86[2], v86[3], v86[4]);
  v55 = v68;

  return v55;
}

uint64_t sub_1DD580E80(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F80;
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = v7;
  *(inited + 40) = v6;
  *(inited + 96) = v8;
  *(inited + 104) = &off_1F58C4E78;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  v9 = sub_1DD5804E4(0xD00000000000007CLL, 0x80000001DD673360, inited);
  swift_setDeallocating();
  sub_1DD46CB4C();
  return v9;
}

uint64_t sub_1DD580F70(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  v3 = sub_1DD63FE58();
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  v5 = sub_1DD5804E4(0xD000000000000033, 0x80000001DD6732E0, inited);
  swift_setDeallocating();
  sub_1DD46CB4C();
  return v5;
}

uint64_t sub_1DD581048(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  v3 = MEMORY[0x1E69E7360];
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 56) = v3;
  *(inited + 64) = &off_1F58C4E70;
  *(inited + 32) = a1;
  v4 = sub_1DD5805F0(0xD000000000000033, 0x80000001DD673320, inited);
  swift_setDeallocating();
  sub_1DD46CB4C();
  return v4;
}

uint64_t sub_1DD581118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  v9 = MEMORY[0x1E69E6158];
  v11 = *(v3 + 8);
  v10 = *(v3 + 16);
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = v11;
  *(inited + 40) = v10;
  *(inited + 96) = MEMORY[0x1E69E7360];
  *(inited + 104) = &off_1F58C4E70;
  *(inited + 72) = a1;
  *(inited + 136) = v9;
  *(inited + 144) = &off_1F58C4E78;
  *(inited + 112) = a2;
  *(inited + 120) = a3;

  v12 = sub_1DD4061B8(0xD00000000000008CLL, 0x80000001DD673250, inited);
  if (v4)
  {
    swift_setDeallocating();
    sub_1DD46CB4C();
  }

  else
  {
    v13 = v12;
    swift_setDeallocating();
    sub_1DD46CB4C();
    v20 = sub_1DD4DC214(v13, v14, v15, v16, v17, v18, v19);
    inited = sub_1DD41859C(v20);
  }

  return inited;
}

uint64_t sub_1DD58125C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_4();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  __swift_allocate_value_buffer(v8, qword_1EE16F038);
  v9 = __swift_project_value_buffer(v0, qword_1EE16F038);
  sub_1DD628068(0xD00000000000001ALL, v4);
  swift_storeEnumTagMultiPayload();
  sub_1DD4DDCBC(v4, v7, &qword_1ECCDCCA0, &qword_1DD64AED0);
  return sub_1DD4DDCBC(v7, v9, &qword_1ECCDCCA0, &qword_1DD64AED0);
}

uint64_t static RelationshipDB.superSlowFetchEverything()()
{
  result = sub_1DD440D24(&v3);
  if (!v0)
  {
    sub_1DD4061B8(0xD0000000000000B0, 0x80000001DD6730F0, MEMORY[0x1E69E7CC0]);

    v2 = sub_1DD57F940();

    return v2;
  }

  return result;
}

uint64_t type metadata accessor for RelationshipAliasGenerator(uint64_t a1)
{
  result = qword_1EE163D88;
  if (!qword_1EE163D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD5814C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD581554(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    type metadata accessor for StringTokenizer(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD581554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EE1604F0)
  {
    v4 = type metadata accessor for DBLoader(0, &type metadata for RelationshipDB, &off_1F58BE940, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EE1604F0);
    }
  }
}

void sub_1DD5815AC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  v34 = (v9 - v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = *(v7 + 16);
  v15(&v31 - v13, a1, v5, v12);
  v16 = sub_1DD5CF3F4(v14, 1, MEMORY[0x1E69E7CC0]);
  if (v2)
  {
    v32 = *(v7 + 8);
    v33 = a2;
    v32(v14, v5);
    v17 = [objc_opt_self() defaultManager];
    sub_1DD63CE58();
    v18 = sub_1DD63FDA8();

    v19 = [v17 fileExistsAtPath_];

    if (v19)
    {
      swift_willThrow();
      return;
    }

    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v21 = sub_1DD63F9F8();
    __swift_project_value_buffer(v21, qword_1EE16F0C8);
    v22 = v34;
    (v15)(v34, a1, v5);
    v23 = sub_1DD63F9D8();
    v24 = sub_1DD640368();
    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_18_1();
      v25 = v22;
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v26 = 136446210;
      v27 = sub_1DD63CE58();
      v29 = v28;
      v32(v25, v5);
      v30 = sub_1DD39565C(v27, v29, &v35);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1DD38D000, v23, v24, "database at %{public}s does not exist", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {

      v32(v22, v5);
    }

    v20 = 0;
    a2 = v33;
  }

  else
  {
    v20 = v16;
    (*(v7 + 8))(v14, v5);
  }

  *a2 = v20;
}

void sub_1DD5818F0(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v1 + 104);
  if (*(v1 + v13))
  {
    v14 = *(v1 + v13);
LABEL_6:
    *a1 = v14;

    return;
  }

  v17 = a1;
  v15 = qword_1EE165D80;
  swift_beginAccess();
  sub_1DD4DDC08(v1 + v15, v6, &qword_1ECCDBF78, &unk_1DD644440);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1DD390754(v6, &qword_1ECCDBF78, &unk_1DD644440);
    v14 = 0;
LABEL_5:
    a1 = v17;
    goto LABEL_6;
  }

  (*(v9 + 32))(v12, v6, v7);
  sub_1DD5815AC(v12, &v18);
  if (!v2)
  {
    (*(v9 + 8))(v12, v7);
    v14 = v18;
    if (v18)
    {
      *(v1 + v13) = v18;
    }

    goto LABEL_5;
  }

  (*(v9 + 8))(v12, v7);
}

uint64_t sub_1DD581CB8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DD640E28();
  sub_1DD63FD28();
  v6 = sub_1DD640E78();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1DD640CD8() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DD5763B0();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1DD5820C8(v8);
  *v2 = v15;
  return v13;
}

uint64_t sub_1DD581DE0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    type metadata accessor for DateTimeConstraint();
    sub_1DD640E28();
    sub_1DD48E664(v16);
    v8 = sub_1DD640E78();
    v9 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v10 = v8 & v9;
      if (((*(v4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
      {
        break;
      }

      v12 = sub_1DD48E554(v11, a1);

      if (v12)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = *v2;
        v16[0] = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DD576E28();
          v14 = v16[0];
        }

        v7 = *(*(v14 + 48) + 8 * v10);
        sub_1DD582280(v10);
        *v2 = v16[0];
        return v7;
      }

      v8 = v10 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = sub_1DD640808();

  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = sub_1DD581F6C(v5, a1);

  return v7;
}

unint64_t sub_1DD5820C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DD640738();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1DD640E28();

        sub_1DD63FD28();
        v10 = sub_1DD640E78();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1DD582280(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DD640738();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1DD640E28();

        sub_1DD48E664(v21);
        v10 = sub_1DD640E78();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void OUTLINED_FUNCTION_12_37()
{

  sub_1DD3BF7FC();
}

unint64_t DateTime.Date.Holiday.Religion.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD5824C4()
{
  result = qword_1ECCDF0A8;
  if (!qword_1ECCDF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF0A8);
  }

  return result;
}

uint64_t sub_1DD582520@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.Holiday.Religion.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s8ReligionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5826D4()
{
  result = qword_1ECCDF0B0;
  if (!qword_1ECCDF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF0B0);
  }

  return result;
}

void sub_1DD582738(void *a1, uint64_t a2)
{
  v4 = &selRef_setUnderlyingQueue_;
  v5 = [a1 intent];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = [v6 temporalEventTrigger]) == 0 || (v7, v8 = sub_1DD5F3E04(a1), (v28 = v9) == 0))
  {
LABEL_33:

    return;
  }

  v27 = v8;
  v10 = sub_1DD5F3F18(a2);
  v11 = sub_1DD3CC020();
  if (!v11)
  {

LABEL_32:

    goto LABEL_33;
  }

  v12 = v11;
  v26 = v5;
  v13 = 0;
  v14 = v10 & 0xC000000000000001;
  v29 = v10 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v14)
    {
      v15 = MEMORY[0x1E12B2C10](v13, v10);
    }

    else
    {
      if (v13 >= *(v29 + 16))
      {
        goto LABEL_35;
      }

      v15 = *(v10 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v18 = [v15 *(v4 + 96)];
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {
      v25 = v16;
      goto LABEL_23;
    }

    v20 = v19;
    v21 = [v19 targetTask];
    if (!v21)
    {
      v25 = v18;
      v18 = v16;
      goto LABEL_23;
    }

    v22 = sub_1DD582C90(v21);
    if (!v23)
    {
      v25 = v18;
      v18 = v16;
      goto LABEL_23;
    }

    v12 = v14;
    v14 = v10;
    v10 = v4;
    if (v22 == v27 && v23 == v28)
    {
    }

    else
    {
      v4 = sub_1DD640CD8();

      if ((v4 & 1) == 0)
      {
        v18 = v16;
        OUTLINED_FUNCTION_0_122();
LABEL_23:

        goto LABEL_24;
      }
    }

    v5 = [v20 temporalEventTrigger];

    OUTLINED_FUNCTION_0_122();
    if (v5)
    {

      goto LABEL_32;
    }

LABEL_24:
    ++v13;
    if (v17 == v12)
    {

      v5 = v26;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1DD5829EC(void *a1, uint64_t a2)
{
  v4 = &selRef_setUnderlyingQueue_;
  v5 = [a1 intent];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = [v6 spatialEventTrigger]) == 0 || (v7, v8 = sub_1DD5F3E04(a1), (v28 = v9) == 0))
  {
LABEL_33:

    return;
  }

  v27 = v8;
  v10 = sub_1DD5F3F18(a2);
  v11 = sub_1DD3CC020();
  if (!v11)
  {

LABEL_32:

    goto LABEL_33;
  }

  v12 = v11;
  v26 = v5;
  v13 = 0;
  v14 = v10 & 0xC000000000000001;
  v29 = v10 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v14)
    {
      v15 = MEMORY[0x1E12B2C10](v13, v10);
    }

    else
    {
      if (v13 >= *(v29 + 16))
      {
        goto LABEL_35;
      }

      v15 = *(v10 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v18 = [v15 *(v4 + 96)];
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {
      v25 = v16;
      goto LABEL_23;
    }

    v20 = v19;
    v21 = [v19 targetTask];
    if (!v21)
    {
      v25 = v18;
      v18 = v16;
      goto LABEL_23;
    }

    v22 = sub_1DD582C90(v21);
    if (!v23)
    {
      v25 = v18;
      v18 = v16;
      goto LABEL_23;
    }

    v12 = v14;
    v14 = v10;
    v10 = v4;
    if (v22 == v27 && v23 == v28)
    {
    }

    else
    {
      v4 = sub_1DD640CD8();

      if ((v4 & 1) == 0)
      {
        v18 = v16;
        OUTLINED_FUNCTION_0_122();
LABEL_23:

        goto LABEL_24;
      }
    }

    v5 = [v20 spatialEventTrigger];

    OUTLINED_FUNCTION_0_122();
    if (v5)
    {

      goto LABEL_32;
    }

LABEL_24:
    ++v13;
    if (v17 == v12)
    {

      v5 = v26;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1DD582C90(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t type metadata accessor for RequestMatchSignalProvider(uint64_t a1)
{
  result = qword_1EE161310;
  if (!qword_1EE161310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD582D74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD582DC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void sub_1DD582E38()
{
  OUTLINED_FUNCTION_31_20();
  v14 = v1;
  v3 = *(v2 + 16);
  v4 = (v2 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    while (1)
    {
      v6 = *v4;
      v15[0] = *(v4 - 1);
      v15[1] = v6;

      v14(&v16, v15);
      if (v0)
      {

        goto LABEL_16;
      }

      v7 = v16;
      v8 = *(v16 + 16);
      v9 = *(v5 + 16);
      if (__OFADD__(v9, v8))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v9 + v8 > *(v5 + 24) >> 1)
      {
        OUTLINED_FUNCTION_17_34();
        sub_1DD3BE2A4();
        v5 = v10;
      }

      if (*(v7 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v8)
        {
          goto LABEL_19;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v11 = *(v5 + 16);
          v12 = __OFADD__(v11, v8);
          v13 = v11 + v8;
          if (v12)
          {
            goto LABEL_20;
          }

          *(v5 + 16) = v13;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_18;
        }
      }

      v4 += 2;
      if (!--v3)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_19_32();
  }
}

void sub_1DD582FA8(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = 0;
  v18 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v18 == v5)
    {
      goto LABEL_16;
    }

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8);
    a1(&v19, a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5);
    if (v4)
    {

LABEL_16:
      OUTLINED_FUNCTION_19_32();
      return;
    }

    v8 = v5;
    v9 = v19;
    v10 = *(v19 + 16);
    v11 = *(v6 + 16);
    if (__OFADD__(v11, v10))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v6 + 24) >> 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1DD3BF7FC();
      v6 = v12;
    }

    if (*(v9 + 16))
    {
      if ((*(v6 + 24) >> 1) - *(v6 + 16) < v10)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v13 = *(v6 + 16);
        v14 = __OFADD__(v13, v10);
        v15 = v13 + v10;
        if (v14)
        {
          goto LABEL_20;
        }

        *(v6 + 16) = v15;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_18;
      }
    }

    v5 = v8 + 1;
    v4 = 0;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1DD583174()
{
  OUTLINED_FUNCTION_16_42();
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v19 == v2)
    {
      goto LABEL_16;
    }

    v7 = sub_1DD63FA38();
    OUTLINED_FUNCTION_51(v7);
    v9 = OUTLINED_FUNCTION_32_18(v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));
    v10(v9);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_19_32();
      return;
    }

    OUTLINED_FUNCTION_30_17();
    if (v11)
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v3 > *(v6 + 24) >> 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1DD3BEC44(v12, v13, v14, v15);
      v6 = v16;
    }

    if (*(v5 + 16))
    {
      v3 = (*(v6 + 24) >> 1) - *(v6 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      if (v3 < v4)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v4)
      {
        v17 = *(v6 + 16);
        v11 = __OFADD__(v17, v4);
        v18 = v17 + v4;
        if (v11)
        {
          goto LABEL_20;
        }

        *(v6 + 16) = v18;
      }
    }

    else
    {

      if (v4)
      {
        goto LABEL_18;
      }
    }

    ++v2;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1DD583330()
{
  OUTLINED_FUNCTION_16_42();
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v19 == v2)
    {
      goto LABEL_16;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
    OUTLINED_FUNCTION_51(v7);
    v9 = OUTLINED_FUNCTION_32_18(v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));
    v10(v9);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_19_32();
      return;
    }

    OUTLINED_FUNCTION_30_17();
    if (v11)
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v3 > *(v6 + 24) >> 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1DD3BEC44(v12, v13, v14, v15);
      v6 = v16;
    }

    if (*(v5 + 16))
    {
      v3 = (*(v6 + 24) >> 1) - *(v6 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      if (v3 < v4)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v4)
      {
        v17 = *(v6 + 16);
        v11 = __OFADD__(v17, v4);
        v18 = v17 + v4;
        if (v11)
        {
          goto LABEL_20;
        }

        *(v6 + 16) = v18;
      }
    }

    else
    {

      if (v4)
      {
        goto LABEL_18;
      }
    }

    ++v2;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1DD5834F8()
{
  OUTLINED_FUNCTION_31_20();
  v19 = v1;
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return OUTLINED_FUNCTION_19_32();
  }

  while (1)
  {
    memcpy(__dst, v4, 0x108uLL);
    memcpy(__src, v4, sizeof(__src));
    sub_1DD3C9478(__dst, v20);
    v19(&v23, __src);
    if (v0)
    {
      memcpy(v20, __src, sizeof(v20));
      sub_1DD3C9580(v20);

      return OUTLINED_FUNCTION_19_32();
    }

    memcpy(v20, __src, sizeof(v20));
    result = sub_1DD3C9580(v20);
    v7 = v23;
    v8 = *(v23 + 16);
    v9 = *(v5 + 16);
    if (__OFADD__(v9, v8))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v9 + v8 > *(v5 + 24) >> 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1DD3BEC44(v10, v11, v12, v13);
      v5 = v14;
    }

    if (*(v7 + 16))
    {
      v15 = (*(v5 + 24) >> 1) - *(v5 + 16);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      if (v15 < v8)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v8)
      {
        v16 = *(v5 + 16);
        v17 = __OFADD__(v16, v8);
        v18 = v16 + v8;
        if (v17)
        {
          goto LABEL_20;
        }

        *(v5 + 16) = v18;
      }
    }

    else
    {

      if (v8)
      {
        goto LABEL_18;
      }
    }

    v4 += 264;
    if (!--v3)
    {
      return OUTLINED_FUNCTION_19_32();
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_1DD5836DC(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v24 - v5);
  v8 = *v1;
  v7 = v1[1];
  v9 = *(*v1 + 16);
  if (v7 == v9)
  {
    OUTLINED_FUNCTION_28_12();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    if (v7 >= v9)
    {
      __break(1u);
    }

    else
    {
      matched = type metadata accessor for ContactMatchRuntimeData(0);
      OUTLINED_FUNCTION_51(matched);
      v17 = v8 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v16 + 72) * v7;
      v1[1] = v7 + 1;
      v18 = *(v3 + 48);
      v19 = v1[2];
      *v6 = v19;
      sub_1DD586E9C(v17, v6 + v18);
      if (!__OFADD__(v19, 1))
      {
        v1[2] = v19 + 1;
        sub_1DD4DDCBC(v6, a1, &qword_1ECCDBE50, &unk_1DD654F80);
        OUTLINED_FUNCTION_28_12();
        __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
        return;
      }
    }

    __break(1u);
  }
}

void sub_1DD583860(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v24 - v5);
  v8 = *v1;
  v7 = v1[1];
  v9 = *(*v1 + 16);
  if (v7 == v9)
  {
    OUTLINED_FUNCTION_28_12();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    if (v7 >= v9)
    {
      __break(1u);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      OUTLINED_FUNCTION_51(v14);
      v17 = v8 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v16 + 72) * v7;
      v1[1] = v7 + 1;
      v18 = *(v3 + 48);
      v19 = v1[2];
      *v6 = v19;
      sub_1DD4DDC08(v17, v6 + v18, &qword_1ECCDBBE8, &qword_1DD644470);
      if (!__OFADD__(v19, 1))
      {
        v1[2] = v19 + 1;
        sub_1DD4DDCBC(v6, a1, &qword_1ECCDC238, &unk_1DD654E40);
        OUTLINED_FUNCTION_28_12();
        __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DD5839F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v23 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        sub_1DD640E28();

        sub_1DD63FD28();
        v17 = sub_1DD640E78();
        v18 = ~(-1 << *(a1 + 32));
        do
        {
          v19 = v17 & v18;
          if (((*(v9 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {

            return 0;
          }

          v20 = (*(a1 + 48) + 16 * v19);
          if (*v20 == v16 && v20[1] == v15)
          {
            break;
          }

          v22 = sub_1DD640CD8();
          v17 = v19 + 1;
        }

        while ((v22 & 1) == 0);

        v2 = v23;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD583BB8(uint64_t *a1)
{
  v224 = a1;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  OUTLINED_FUNCTION_0();
  v243 = v1;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  v250 = &v216 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD68, &unk_1DD65F510);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v234 = (&v216 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD70, &qword_1DD654CC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_2_1();
  v240 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v238 = (&v216 - v10);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v239 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  v227 = (&v216 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_2_1();
  v226 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v225 = &v216 - v17;
  v18 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v216 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    goto LABEL_150;
  }

LABEL_2:
  v22 = qword_1EE16F0C0;
  v23 = (v21 + *(v18 + 20));
  *v23 = "RequestMatchSignalProvider";
  *(v23 + 1) = 26;
  v23[16] = 2;
  v24 = v22;
  sub_1DD63F9B8();
  *(v21 + *(v18 + 24)) = v24;
  v25 = v24;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DD643F90;
  v27 = sub_1DD6408F8();
  v29 = v28;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = sub_1DD392BD8();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v216 = v25;
  v217 = v21;
  sub_1DD63F998();

  v30 = v224;
  v31 = *v224;

  v32 = v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD586A30();
    v32 = v215;
  }

  v33 = 0;
  v248 = 0;
  v34 = *(v31 + 16);
  v35 = v31 + 32;
  v230 = *MEMORY[0x1E69964B0];
  v229 = v230 + 16;
  *v30 = v32;
  v18 = &qword_1ECCDBBE8;
  *(&v36 + 1) = 14;
  v223 = xmmword_1DD6504B0;
  *&v36 = 136315906;
  v222 = v36;
  v37 = v225;
  v241 = v4;
  v219 = v34;
  v220 = v31;
  v218 = v31 + 32;
  while (1)
  {
    if (v33 == v34)
    {
      goto LABEL_133;
    }

    if (v33 >= *(v31 + 16))
    {
      goto LABEL_149;
    }

    v38 = *(v35 + 8 * v33);
    v252 = v33;
    v221 = v33 + 1;
    v267 = v38;
    v268 = 0;
    v269 = 0;
    *v30 = v32;

LABEL_8:
    v39 = v226;
    sub_1DD583860(v226);
    sub_1DD4DDCBC(v39, v37, &qword_1ECCDC240, &qword_1DD645AA0);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
    if (__swift_getEnumTagSinglePayload(v37, 1, v40) != 1)
    {
      break;
    }

    v31 = v220;
    v33 = v221;
    v35 = v218;
    v34 = v219;
  }

  v254 = v32;
  v251 = *v37;
  v41 = v227;
  sub_1DD4DDCBC(v37 + *(v40 + 48), v227, &qword_1ECCDBBE8, &qword_1DD644470);
  v265 = 0uLL;
  *v266 = 0;
  memset(&v266[8], 0, 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF0C8, &qword_1DD65D818);
  v42 = swift_allocObject();
  *(v42 + 16) = v223;
  v43 = v41[6];
  *(v42 + 32) = v41[5];
  v247 = v42 + 32;
  *(v42 + 40) = v43;
  KeyPath = swift_getKeyPath();
  v45 = v41[7];
  v46 = v41[8];
  *(v42 + 48) = KeyPath;
  *(v42 + 56) = v45;
  *(v42 + 64) = v46;
  v47 = swift_getKeyPath();
  v48 = v41[9];
  v49 = v41[10];
  *(v42 + 72) = v47;
  *(v42 + 80) = v48;
  *(v42 + 88) = v49;
  v50 = swift_getKeyPath();
  v51 = v41[17];
  v52 = v41[18];
  *(v42 + 96) = v50;
  *(v42 + 104) = v51;
  *(v42 + 112) = v52;
  v53 = swift_getKeyPath();
  v54 = v41[15];
  v55 = v41[16];
  *(v42 + 120) = v53;
  *(v42 + 128) = v54;
  *(v42 + 136) = v55;
  v56 = swift_getKeyPath();
  v57 = v41[3];
  v58 = v41[4];
  *(v42 + 144) = v56;
  *(v42 + 152) = v57;
  *(v42 + 160) = v58;
  v59 = swift_getKeyPath();
  v60 = v41[13];
  v61 = v41[14];
  *(v42 + 168) = v59;
  *(v42 + 176) = v60;
  *(v42 + 184) = v61;
  v62 = swift_getKeyPath();
  v244 = v42;
  *(v42 + 192) = v62;
  v63 = v41 + *(v253 + 36);
  memcpy(v270, v63 + 8, 0x108uLL);

  v64 = v242;
  v256 = sub_1DD586B64(v242, 1, v270);
  v65 = sub_1DD586D00(v64, 1, v41);
  v245 = v63;
  v246 = v65;
  memcpy(v264, v63 + 8, sizeof(v264));
  v66 = type metadata accessor for StringTokenizer(0);
  *(&v263[1] + 1) = v66;
  *&v263[2] = &off_1F58C2FE8;
  __swift_allocate_boxed_opaque_existential_1(v263);
  OUTLINED_FUNCTION_5_76();
  v68 = v67;
  sub_1DD586E9C(v64, v69);
  sub_1DD41E258();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_31_0();
  *(v71 - 16) = v263;
  *(v71 - 8) = 257;
  OUTLINED_FUNCTION_25_20();
  v18 = v248;
  sub_1DD582E38();
  v73 = v72;

  v74 = sub_1DD41859C(v73);
  __swift_destroy_boxed_opaque_existential_1(v263);
  *&v264[24] = v66;
  *&v264[32] = &off_1F58C2FE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v264);
  sub_1DD586E9C(v64, boxed_opaque_existential_1);
  sub_1DD40FC64();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_31_0();
  *(v77 - 16) = v264;
  *(v77 - 8) = 257;
  OUTLINED_FUNCTION_25_20();
  sub_1DD582E38();
  v79 = v78;

  v80 = sub_1DD41859C(v79);
  __swift_destroy_boxed_opaque_existential_1(v264);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v81 = sub_1DD63F9F8();
  __swift_project_value_buffer(v81, qword_1EE16F068);
  v82 = v256;

  v83 = v246;

  v84 = sub_1DD63F9D8();
  v85 = sub_1DD640368();

  v86 = os_log_type_enabled(v84, v85);
  v228 = v80;
  v255 = v74;
  if (v86)
  {
    v87 = swift_slowAlloc();
    LODWORD(v237) = v85;
    v88 = v87;
    v248 = swift_slowAlloc();
    *v264 = v248;
    *v88 = v222;
    v89 = sub_1DD640278();
    OUTLINED_FUNCTION_36_14(v89, v90);
    OUTLINED_FUNCTION_20_30();

    *(v88 + 4) = v68;
    *(v88 + 12) = 2080;
    v91 = sub_1DD640278();
    OUTLINED_FUNCTION_36_14(v91, v92);
    OUTLINED_FUNCTION_20_30();

    *(v88 + 14) = v68;
    *(v88 + 22) = 2080;
    v93 = sub_1DD640278();
    OUTLINED_FUNCTION_36_14(v93, v94);
    OUTLINED_FUNCTION_20_30();

    *(v88 + 24) = v68;
    *(v88 + 32) = 2080;
    v80 = v228;
    v95 = sub_1DD640278();
    OUTLINED_FUNCTION_36_14(v95, v96);
    OUTLINED_FUNCTION_20_30();
    v82 = v256;

    *(v88 + 34) = v68;
    _os_log_impl(&dword_1DD38D000, v84, v237, "primaryQueryTokens: %s\nprimaryMatchTokens: %s\nqueryTokens: %s\nmatchTokens: %s", v88, 0x2Au);
    v97 = v248;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v97, -1, -1);
    MEMORY[0x1E12B3DA0](v88, -1, -1);
  }

  v98 = *(v83 + 16);
  *&v265 = v98;
  if (v80[2])
  {
    v99 = v80;
    v100 = v255;
    v101 = sub_1DD5839F8(v99, v255);
    v98 = *(v83 + 16);
  }

  else
  {
    v101 = 0;
    v100 = v255;
  }

  BYTE8(v265) = v101 & 1;
  if (v98)
  {
    v102 = sub_1DD5839F8(v82, v83);
  }

  else
  {
    v102 = 0;
  }

  v21 = 0;
  BYTE9(v265) = v102 & 1;
  v103 = v100 + 56;
  while (1)
  {
    v104 = (v247 + 24 * v21);
    v105 = *v104;
    v106 = v104[1];
    v107 = HIBYTE(v106) & 0xF;
    if ((v106 & 0x2000000000000000) == 0)
    {
      v107 = *v104 & 0xFFFFFFFFFFFFLL;
    }

    if (v107)
    {
      break;
    }

LABEL_37:
    if (++v21 == 7)
    {

      swift_setDeallocating();
      sub_1DD46CB78();
      if (BYTE13(v265) == 1)
      {
        v125 = v240;
        v4 = v241;
        v32 = v254;
        v126 = v245;
        if (BYTE9(v265) & 1) != 0 || (v266[0] & 1) != 0 || (BYTE10(v265) & 1) != 0 || (BYTE11(v265) & 1) != 0 || (BYTE12(v265) & 1) != 0 || (v266[1] & 1) != 0 || (HIBYTE(v265))
        {
          v127 = 0;
        }

        else
        {
          v127 = v126[*(type metadata accessor for ContactResolver.SignalSet(0) + 140)] ^ 1;
        }
      }

      else
      {
        v127 = 0;
        v125 = v240;
        v4 = v241;
        v32 = v254;
        v126 = v245;
      }

      BYTE14(v265) = v127 & 1;
      v233 = *(v126 + 27);
      if (!v233)
      {

        v37 = v225;
        goto LABEL_122;
      }

      v128 = *(v126 + 26);
      v21 = *(v126 + 29);
      v129 = *(v126 + 30);
      v231 = *(v126 + 28);
      v232 = v128;
      v237 = v126[200];
      v244 = *(v126 + 34);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD586A30();
        v32 = v212;
      }

      v130 = 0;
      v131 = 0;
      v254 = v32;
      v255 = v32 + 32;
      v235 = v21;
      v236 = v129;
      while (2)
      {
        v132 = *(v244 + 16);
        LODWORD(v247) = v130;
        if (v131 == v132)
        {
          v246 = v131;
          v133 = 1;
        }

        else
        {
          if (v131 >= v132)
          {
            goto LABEL_145;
          }

          v134 = v131 + 1;
          v135 = v244 + ((*(v243 + 80) + 32) & ~*(v243 + 80)) + *(v243 + 72) * v131;
          v136 = *(v4 + 48);
          v137 = v234;
          *v234 = v131;
          sub_1DD4DDC08(v135, v137 + v136, &qword_1ECCDBBD8, &unk_1DD645A90);
          sub_1DD4DDCBC(v137, v125, &qword_1ECCDDD68, &unk_1DD65F510);
          v133 = 0;
          v246 = v134;
        }

        __swift_storeEnumTagSinglePayload(v125, v133, 1, v4);
        v138 = v238;
        sub_1DD4DDCBC(v125, v238, &qword_1ECCDDD70, &qword_1DD654CC0);
        if (__swift_getEnumTagSinglePayload(v138, 1, v4) != 1)
        {
          v256 = *v138;
          v139 = v138 + *(v4 + 48);
          v140 = v250;
          sub_1DD4DDCBC(v139, v250, &qword_1ECCDBBD8, &unk_1DD645A90);
          memcpy(v264, v140, 0x4AuLL);
          v141 = v237;
          v248 = v18;
          if (v237 && v264[16] != v237)
          {
LABEL_59:
            v18 = 0;
            goto LABEL_85;
          }

          if (v237)
          {
            if (v237 == 1)
            {
              v142 = OUTLINED_FUNCTION_27_24();
              sub_1DD3C6A40(v142, v143);
              OUTLINED_FUNCTION_21_29();
              sub_1DD63FDA8();
              v144 = OUTLINED_FUNCTION_34_17();
              v146 = v145(v144);
              goto LABEL_65;
            }

            sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);
            v155 = OUTLINED_FUNCTION_27_24();
            sub_1DD3C6A40(v155, v156);
LABEL_68:

            OUTLINED_FUNCTION_21_29();
            v157 = sub_1DD40B8E0();
            v158 = sub_1DD415480(v157);
            if (v159)
            {
              v152 = v158;
            }

            else
            {
              v152 = 0;
            }

            if (v159)
            {
              v154 = v159;
            }

            else
            {
              v154 = 0xE000000000000000;
            }
          }

          else
          {
            *&v259 = v21;
            *(&v259 + 1) = v129;
            v257 = 64;
            v258 = 0xE100000000000000;
            v147 = OUTLINED_FUNCTION_27_24();
            sub_1DD3C6A40(v147, v148);
            sub_1DD3B7F10();
            v140 = &v259;
            if ((sub_1DD6406D8() & 1) == 0)
            {
              sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_21_29();
            sub_1DD63FDA8();
            v149 = OUTLINED_FUNCTION_34_17();
            v146 = v150(v149);
LABEL_65:
            v151 = v146;

            v152 = sub_1DD63FDD8();
            v154 = v153;
          }

          v160 = HIBYTE(v154) & 0xF;
          if ((v154 & 0x2000000000000000) == 0)
          {
            v160 = v152 & 0xFFFFFFFFFFFFLL;
          }

          if (!v160 || (v152 == *&v264[56] ? (v161 = v154 == *&v264[64]) : (v161 = 0), v161))
          {
          }

          else
          {
            v162 = sub_1DD640CD8();

            if ((v162 & 1) == 0)
            {
              sub_1DD3C6A9C(v264);
              goto LABEL_59;
            }
          }

          memcpy(v263, v264, 0x4AuLL);
          LOBYTE(v259) = v141;
          *(&v259 + 1) = v232;
          *&v260 = v233;
          *(&v260 + 1) = v231;
          *&v261 = v21;
          *(&v261 + 1) = v129;
          sub_1DD412278();
          v164 = v163;
          sub_1DD3C6A9C(v264);
          v18 = v164;
LABEL_85:
          memcpy(v263, v250, 0x4AuLL);
          if (LOBYTE(v263[1]) == 2)
          {
            sub_1DD3C6A40(v263, &v259);
            OUTLINED_FUNCTION_21_29();
            if (sub_1DD63FF08() < 2 || (OUTLINED_FUNCTION_21_29(), sub_1DD63FF08() > 4))
            {
              sub_1DD3C6A9C(v263);
              v165 = 0;
LABEL_91:
              v21 = v18 != 0;
              v166 = v252;
              if (v252 >= *(v32 + 16))
              {
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
                goto LABEL_146;
              }

              v167 = v255;
              v168 = *(v255 + 8 * v252);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v167 + 8 * v166) = v168;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1DD586A18();
                v168 = v185;
                *(v255 + 8 * v252) = v185;
              }

              if ((v251 & 0x8000000000000000) != 0)
              {
                goto LABEL_135;
              }

              if (v251 >= *(v168 + 16))
              {
                goto LABEL_136;
              }

              LODWORD(v245) = v165;
              v4 = *(v239 + 72) * v251;
              v170 = OUTLINED_FUNCTION_12_38();
              *(v32 + 272) = v168;
              if ((v170 & 1) == 0)
              {
                sub_1DD586A48();
                v168 = v186;
                *(v32 + 272) = v186;
              }

              if ((v256 & 0x8000000000000000) != 0)
              {
                goto LABEL_137;
              }

              if (v256 >= *(v168 + 16))
              {
                goto LABEL_138;
              }

              *(v168 + ((*(v243 + 80) + 32) & ~*(v243 + 80)) + *(v243 + 72) * v256 + *(v249 + 36) + 3) = v18 != 0;
              *(v32 + 272) = v168;
              v171 = v252;
              if (v252 >= *(v254 + 16))
              {
                goto LABEL_139;
              }

              v21 = v18;
              v18 = v255;
              v172 = *(v255 + 8 * v252);
              v173 = swift_isUniquelyReferenced_nonNull_native();
              *(v18 + 8 * v171) = v172;
              if ((v173 & 1) == 0)
              {
                sub_1DD586A18();
                v172 = v187;
                *(v255 + 8 * v171) = v187;
              }

              if (v251 >= *(v172 + 16))
              {
                goto LABEL_140;
              }

              v18 = v21;
              v174 = OUTLINED_FUNCTION_12_38();
              *(v171 + 272) = v172;
              if ((v174 & 1) == 0)
              {
                sub_1DD586A48();
                v172 = v188;
                *(v171 + 272) = v188;
              }

              v175 = v252;
              if (v256 >= *(v172 + 16))
              {
                goto LABEL_141;
              }

              OUTLINED_FUNCTION_33_14();
              *(v177 + 2) = v176;
              if (v175 >= *(v178 + 16))
              {
                goto LABEL_142;
              }

              v179 = v255;
              v180 = *(v255 + 8 * v175);
              v181 = swift_isUniquelyReferenced_nonNull_native();
              *(v179 + 8 * v175) = v180;
              if ((v181 & 1) == 0)
              {
                sub_1DD586A18();
                v180 = v189;
                *(v255 + 8 * v175) = v189;
              }

              v18 = v248;
              if (v251 >= *(v180 + 16))
              {
                goto LABEL_143;
              }

              v182 = OUTLINED_FUNCTION_12_38();
              *(v175 + 272) = v180;
              if ((v182 & 1) == 0)
              {
                sub_1DD586A48();
                *(v175 + 272) = v190;
              }

              sub_1DD390754(v250, &qword_1ECCDBBD8, &unk_1DD645A90);
              v129 = v236;
              if (v256 >= *(*(v175 + 272) + 16))
              {
                goto LABEL_144;
              }

              OUTLINED_FUNCTION_33_14();
              *(v183 + 4) = v245 & 1;
              *(v175 + 272) = v184;
              v125 = v240;
              v4 = v241;
              v32 = v254;
              v21 = v235;
              v131 = v246;
              continue;
            }
          }

          else
          {
            sub_1DD3C6A40(v263, &v259);
          }

          v259 = *(&v263[3] + 8);
          v257 = v21;
          v258 = v129;
          sub_1DD3B7F10();
          v165 = sub_1DD6406D8();
          sub_1DD3C6A9C(v263);
          goto LABEL_91;
        }

        break;
      }

      v37 = v225;
      if (v247)
      {

        v266[2] = 1;
      }

      else if (*(*(v227 + *(type metadata accessor for Contact(0) + 80)) + 16))
      {
        v191 = sub_1DD63FE58();
        v193 = sub_1DD47EEBC(v191, v192, v228);

        if (v193)
        {
          *&v266[2] = 257;
        }
      }

      else
      {
      }

LABEL_122:
      *v264 = v265;
      *&v264[16] = *v266;
      *&v264[32] = *&v266[16];
      *&v264[48] = *&v266[32];
      v194 = OUTLINED_FUNCTION_27_24();
      sub_1DD4338FC(v194, v195);
      v196 = swift_isUniquelyReferenced_nonNull_native();
      v248 = v18;
      if ((v196 & 1) == 0)
      {
        sub_1DD586A30();
        v32 = v210;
      }

      v18 = v252;
      if (v252 >= *(v32 + 16))
      {
LABEL_146:
        __break(1u);
      }

      else
      {
        v197 = v32 + 32;
        v198 = *(v32 + 32 + 8 * v252);
        v199 = swift_isUniquelyReferenced_nonNull_native();
        *(v32 + 32 + 8 * v18) = v198;
        if ((v199 & 1) == 0)
        {
          sub_1DD586A18();
          *(v197 + 8 * v252) = v211;
        }

        v259 = v265;
        v260 = *v266;
        v261 = *&v266[16];
        v262 = *&v266[32];
        sub_1DD4339AC(&v259);
        v18 = &qword_1ECCDBBE8;
        if ((v251 & 0x8000000000000000) == 0)
        {
          v200 = *(v197 + 8 * v252);
          if (v251 < *(v200 + 16))
          {
            v201 = v200 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v251;
            v202 = *(v253 + 36);
            v203 = v201 + v202 + *(type metadata accessor for ContactResolver.SignalSet(0) + 132);
            v205 = *(v203 + 16);
            v204 = *(v203 + 32);
            v206 = *v203;
            *&v263[3] = *(v203 + 48);
            v263[1] = v205;
            v263[2] = v204;
            v263[0] = v206;
            v207 = *&v264[48];
            v209 = *&v264[16];
            v208 = *&v264[32];
            *v203 = *v264;
            *(v203 + 16) = v209;
            *(v203 + 32) = v208;
            *(v203 + 48) = v207;
            sub_1DD4339AC(v263);
            v30 = v224;
            *v224 = v32;
            sub_1DD390754(v227, &qword_1ECCDBBE8, &qword_1DD644470);
            goto LABEL_8;
          }

LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          swift_once();
          goto LABEL_2;
        }
      }

      __break(1u);
      goto LABEL_148;
    }
  }

  v108 = v104[2];

  v248 = v108;

  v109 = v105;
  v110 = v242;
  StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(v109, v106, 1, 1);
  OUTLINED_FUNCTION_20_30();

  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_31_0();
  *(v112 - 16) = v110;
  sub_1DD582E38();
  v256 = v113;

  v114 = 1 << *(v100 + 32);
  if (v114 < 64)
  {
    v115 = ~(-1 << v114);
  }

  else
  {
    v115 = -1;
  }

  v116 = v115 & *(v100 + 56);
  v117 = (v114 + 63) >> 6;

  v119 = 0;
  while (v116)
  {
    v120 = v119;
LABEL_33:
    v121 = (*(v255 + 48) + ((v120 << 10) | (16 * __clz(__rbit64(v116)))));
    v122 = v121[1];
    v116 &= v116 - 1;
    *v264 = *v121;
    *&v264[8] = v122;
    MEMORY[0x1EEE9AC00](v118);

    v123 = sub_1DD450388();

    if (v123)
    {
      v124 = 1;
LABEL_36:
      v100 = v255;

      v264[0] = v124;
      swift_setAtWritableKeyPath();

      goto LABEL_37;
    }
  }

  while (1)
  {
    v120 = v119 + 1;
    if (__OFADD__(v119, 1))
    {
      break;
    }

    if (v120 >= v117)
    {
      v124 = 0;
      goto LABEL_36;
    }

    v116 = *(v103 + 8 * v120);
    ++v119;
    if (v116)
    {
      v119 = v120;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_133:

  sub_1DD6404C8();
  v213 = v217;
  sub_1DD63F9A8();
  return sub_1DD41BFFC(v213);
}

BOOL sub_1DD585198(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || ((*(a1 + 8) ^ *(a2 + 8)) & 1) != 0 || ((*(a1 + 9) ^ *(a2 + 9)) & 1) != 0 || ((*(a1 + 10) ^ *(a2 + 10)) & 1) != 0 || ((*(a1 + 11) ^ *(a2 + 11)) & 1) != 0 || ((*(a1 + 12) ^ *(a2 + 12)) & 1) != 0 || ((*(a1 + 13) ^ *(a2 + 13)) & 1) != 0 || ((*(a1 + 14) ^ *(a2 + 14)) & 1) != 0 || ((*(a1 + 15) ^ *(a2 + 15)) & 1) != 0 || ((*(a1 + 16) ^ *(a2 + 16)) & 1) != 0 || ((*(a1 + 17) ^ *(a2 + 17)) & 1) != 0 || ((*(a1 + 18) ^ *(a2 + 18)) & 1) != 0 || ((*(a1 + 19) ^ *(a2 + 19)) & 1) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = *(a2 + 32);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v9 = a2;
    v10 = a1;
    v5 = *(a1 + 24) == *(a2 + 24) && v3 == v4;
    if (!v5 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v9 = a2;
    v10 = a1;
    if (v4)
    {
      return 0;
    }
  }

  v6 = *(v10 + 48);
  v7 = *(v9 + 48);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(v10 + 40) == *(v9 + 40) && v6 == v7;
    return v8 || (sub_1DD640CD8() & 1) != 0;
  }

  return !v7;
}

double sub_1DD585314@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 40);
  v11 = *(v1 + 24);
  v12 = v4;
  v10 = *(v1 + 8);
  sub_1DD55D81C(v3);
  v6 = v5;
  sub_1DD4338FC(v1, &v14);
  sub_1DD390754(&v11, &unk_1ECCDFDF0, &unk_1DD644950);
  sub_1DD390754(&v12, &unk_1ECCDFDF0, &unk_1DD644950);
  *v13 = v6;
  *&v13[8] = v10;
  memset(&v13[24], 0, 32);
  v14 = v6;
  v15 = v10;
  v16 = 0u;
  v17 = 0u;
  sub_1DD4338FC(v13, v9);
  sub_1DD4339AC(&v14);
  v7 = *&v13[16];
  *a1 = *v13;
  *(a1 + 16) = v7;
  result = *&v13[32];
  *(a1 + 32) = *&v13[32];
  *(a1 + 48) = *&v13[48];
  return result;
}

uint64_t sub_1DD5853FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v10 = *a1;
  v9 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DD643F80;
  *(v11 + 32) = v10;
  *(v11 + 40) = v9;
  v18[0] = v10;
  v18[1] = v9;
  v12 = *(type metadata accessor for StringTokenizer(0) + 20);
  v13 = sub_1DD63D168();
  (*(*(v13 - 8) + 16))(v8, a2 + v12, v13);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
  sub_1DD3B7F10();

  v14 = sub_1DD6406C8();
  v16 = v15;
  result = sub_1DD390754(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);
  *(v11 + 48) = v14;
  *(v11 + 56) = v16;
  *a3 = v11;
  return result;
}

uint64_t sub_1DD585590(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001DD667440 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79726575516C6C61 && a2 == 0xEF6465686374614DLL;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001DD673400 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001DD673420 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001DD673440 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001DD673460 == a2;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000001DD673480 == a2;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000001DD667130 == a2;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x656D616E6B63696ELL && a2 == 0xEF6465686374614DLL;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x80000001DD6734A0 == a2;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x80000001DD6734C0 == a2;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x80000001DD6734E0 == a2;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001BLL && 0x80000001DD673500 == a2;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000012 && 0x80000001DD673520 == a2;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000014 && 0x80000001DD673540 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1DD640CD8();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

unint64_t sub_1DD585A10(char a1)
{
  result = 0x79726575516C6C61;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 6:
    case 7:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x656D616E6B63696ELL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
    case 13:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1DD585B98(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF0B8, &qword_1DD65D800);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD58663C();
  sub_1DD640EF8();
  v10[15] = 0;
  OUTLINED_FUNCTION_3_7();
  sub_1DD640C48();
  if (!v1)
  {
    v10[14] = 1;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v10[13] = 2;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v10[12] = 3;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v10[11] = 4;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v10[10] = 5;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v10[9] = 6;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v10[8] = 7;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v10[7] = 8;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v10[6] = 9;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v10[5] = 10;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v10[4] = 11;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v10[3] = 12;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v10[2] = 13;
    sub_1DD640BC8();
    v10[1] = 14;
    sub_1DD640BC8();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1DD585E8C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF0C0, &unk_1DD65D808);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v61 - v7;
  v9 = a1[3];
  v10 = a1[4];
  v72 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DD58663C();
  sub_1DD640ED8();
  if (v2)
  {
    v77 = v2;
    OUTLINED_FUNCTION_1_106();
    OUTLINED_FUNCTION_8_58();
    v5 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v72);
    v82 = v14;
    v83 = v13;
    v84 = v12;
    v85 = v5;
    v86 = a2;
    v87 = v11;
    v88 = v10;
    v89 = v9;
    v90 = v8;
    OUTLINED_FUNCTION_13_42();
    v91 = 0;
    v92 = 0;
    return sub_1DD4339AC(&v82);
  }

  LOBYTE(v82) = 0;
  v71 = sub_1DD640B58();
  OUTLINED_FUNCTION_0_123(1);
  v16 = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_0_123(2);
  v17 = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_0_123(3);
  v18 = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_0_123(4);
  v19 = sub_1DD640B38();
  v70 = v16;
  v20 = v19 & 1;
  OUTLINED_FUNCTION_0_123(5);
  v21 = sub_1DD640B38();
  v69 = v18;
  v22 = v21 & 1;
  OUTLINED_FUNCTION_0_123(6);
  v23 = sub_1DD640B38();
  v67 = v22;
  v68 = v17;
  v66 = a2;
  v24 = v23 & 1;
  OUTLINED_FUNCTION_0_123(7);
  v25 = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_0_123(8);
  v26 = sub_1DD640B38();
  v77 = 0;
  v63 = v25;
  v64 = v24;
  v62 = v20;
  v12 = v68;
  v13 = v70;
  v65 = v26 & 1;
  OUTLINED_FUNCTION_0_123(9);
  v27 = v77;
  v28 = sub_1DD640B38();
  v77 = v27;
  if (v27)
  {
    v29 = OUTLINED_FUNCTION_7_55();
    v30(v29);
    OUTLINED_FUNCTION_6_66();
    v93 = 0;
LABEL_16:
    OUTLINED_FUNCTION_26_26();
    LOBYTE(a2) = v62;
    v11 = v67;
    LOBYTE(v10) = v64;
    LOBYTE(v9) = v63;
    LOBYTE(v8) = v65;
    v14 = v71;
    goto LABEL_4;
  }

  v93 = v28 & 1;
  OUTLINED_FUNCTION_0_123(10);
  v31 = v77;
  v32 = sub_1DD640B38();
  v77 = v31;
  if (v31)
  {
    v33 = OUTLINED_FUNCTION_7_55();
    v34(v33);
    OUTLINED_FUNCTION_6_66();
    goto LABEL_16;
  }

  v74 = v32 & 1;
  OUTLINED_FUNCTION_0_123(11);
  v35 = v77;
  v36 = sub_1DD640B38();
  v77 = v35;
  if (v35)
  {
    v37 = OUTLINED_FUNCTION_7_55();
    v38(v37);
    v75 = 0;
    v76 = 0;
    v73 = 0;
    goto LABEL_16;
  }

  HIDWORD(v73) = v36 & 1;
  OUTLINED_FUNCTION_0_123(12);
  v39 = v77;
  v40 = sub_1DD640B38();
  v77 = v39;
  if (v39)
  {
    v41 = OUTLINED_FUNCTION_7_55();
    v42(v41);
    v75 = 0;
    v76 = 0;
    LODWORD(v73) = 0;
    goto LABEL_16;
  }

  LODWORD(v73) = v40 & 1;
  OUTLINED_FUNCTION_0_123(13);
  v43 = v77;
  v44 = sub_1DD640AD8();
  v75 = v45;
  v76 = v44;
  v77 = v43;
  if (v43)
  {
    v46 = OUTLINED_FUNCTION_7_55();
    v47(v46);
    v75 = 0;
    v76 = 0;
    goto LABEL_16;
  }

  v94 = 14;
  v48 = sub_1DD640AD8();
  v77 = 0;
  v49 = v48;
  v51 = v50;
  v52 = OUTLINED_FUNCTION_7_55();
  v53(v52);
  v54 = v71;
  *&v78 = v71;
  BYTE8(v78) = v13;
  BYTE9(v78) = v12;
  OUTLINED_FUNCTION_26_26();
  BYTE10(v78) = v5;
  v55 = v62;
  BYTE11(v78) = v62;
  v56 = v67;
  BYTE12(v78) = v67;
  v57 = v64;
  BYTE13(v78) = v64;
  v58 = v63;
  BYTE14(v78) = v63;
  HIBYTE(v78) = v65;
  LOBYTE(v79) = v93;
  BYTE1(v79) = v74;
  BYTE2(v79) = BYTE4(v73);
  BYTE3(v79) = v73;
  *(&v79 + 1) = v76;
  *&v80 = v75;
  *(&v80 + 1) = v49;
  v81 = v51;
  sub_1DD4338FC(&v78, &v82);
  __swift_destroy_boxed_opaque_existential_1(v72);
  v82 = v54;
  v83 = v13;
  v84 = v68;
  v85 = v5;
  v86 = v55;
  v87 = v56;
  v88 = v57;
  v89 = v58;
  v90 = v65;
  OUTLINED_FUNCTION_13_42();
  v91 = v49;
  v92 = v51;
  result = sub_1DD4339AC(&v82);
  v59 = v79;
  v60 = v66;
  *v66 = v78;
  v60[1] = v59;
  v60[2] = v80;
  *(v60 + 6) = v81;
  return result;
}

uint64_t sub_1DD586504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD585590(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD58652C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD585A08();
  *a1 = result;
  return result;
}

uint64_t sub_1DD586554(uint64_t a1)
{
  v2 = sub_1DD58663C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD586590(uint64_t a1)
{
  v2 = sub_1DD58663C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD5865CC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD585E8C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_1DD58663C()
{
  result = qword_1EE163D20[0];
  if (!qword_1EE163D20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE163D20);
  }

  return result;
}

uint64_t sub_1DD586690()
{
  OUTLINED_FUNCTION_31_20();
  sub_1DD39638C(0, &qword_1ECCDBA80, 0x1E69ACA48);
  return sub_1DD6405B8() & 1;
}

uint64_t sub_1DD5866F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DD640CD8() & 1;
  }
}

BOOL sub_1DD586734(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {
    return 1;
  }

  v7 = a1[3];
  v8 = a2[3];
  v5 = v7 != 0;
  if (!v7)
  {
    if (!v8)
    {
      return v5;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = a1[2] == a2[2] && v7 == v8;
  if (!v9 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  return v5;
}

BOOL sub_1DD5867DC(double *a1, double *a2)
{
  if (*a1 == *a2 && (*(a1 + 1) == *(a2 + 1) ? (v5 = *(a1 + 2) == *(a2 + 2)) : (v5 = 0), (v5 || (sub_1DD640CD8() & 1) != 0) && (*(a1 + 3) == *(a2 + 3) ? (v6 = *(a1 + 4) == *(a2 + 4)) : (v6 = 0), v6 || (sub_1DD640CD8() & 1) != 0)))
  {
    return a1[5] == a2[5];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD5868A8()
{
  OUTLINED_FUNCTION_31_20();
  sub_1DD63D0F8();
  sub_1DD3C4E5C();
  return sub_1DD63FD98() & 1;
}

uint64_t sub_1DD586934(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(v3);
    *v1 = result;
  }

  return result;
}

unint64_t sub_1DD586984(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD586A8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1DD6407B8();
  }

  return sub_1DD640918();
}

uint64_t sub_1DD586B64(uint64_t a1, char a2, void *a3)
{
  v6 = OUTLINED_FUNCTION_14();
  v25[3] = type metadata accessor for StringTokenizer(v6);
  v25[4] = &off_1F58C2FE8;
  __swift_allocate_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_5_76();
  sub_1DD586E9C(v3, v7);
  memcpy(v24, a3, sizeof(v24));
  sub_1DD41E024();
  v9 = isUniquelyReferenced_nonNull_native;
  if (!*(isUniquelyReferenced_nonNull_native + 16))
  {
    v11 = a3[19];
    v10 = a3[20];
    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_87_1();
        sub_1DD3BE2A4();
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v13 = *(v9 + 16);
      v14 = v13 + 1;
      if (v13 >= *(v9 + 24) >> 1)
      {
        v23 = v13 + 1;
        OUTLINED_FUNCTION_87_1();
        v22 = v21;
        sub_1DD3BE2A4();
        v13 = v22;
        v14 = v23;
        v9 = isUniquelyReferenced_nonNull_native;
      }

      *(v9 + 16) = v14;
      v15 = v9 + 16 * v13;
      *(v15 + 32) = v11;
      *(v15 + 40) = v10;
    }
  }

  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  OUTLINED_FUNCTION_31_0();
  *(v16 - 16) = v25;
  *(v16 - 8) = 1;
  *(v16 - 7) = a2 & 1;
  OUTLINED_FUNCTION_25_20();
  sub_1DD582E38();
  v18 = v17;

  v19 = sub_1DD41859C(v18);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v19;
}

uint64_t sub_1DD586D00(uint64_t a1, char a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_14();
  v24[3] = type metadata accessor for StringTokenizer(v6);
  v24[4] = &off_1F58C2FE8;
  __swift_allocate_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_5_76();
  sub_1DD586E9C(v3, v7);
  isUniquelyReferenced_nonNull_native = sub_1DD40FB18();
  v9 = isUniquelyReferenced_nonNull_native;
  if (!*(isUniquelyReferenced_nonNull_native + 16))
  {
    v11 = *(a3 + 136);
    v10 = *(a3 + 144);
    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_87_1();
        sub_1DD3BE2A4();
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v13 = *(v9 + 16);
      v14 = v13 + 1;
      if (v13 >= *(v9 + 24) >> 1)
      {
        v23 = v13 + 1;
        OUTLINED_FUNCTION_87_1();
        v22 = v21;
        sub_1DD3BE2A4();
        v13 = v22;
        v14 = v23;
        v9 = isUniquelyReferenced_nonNull_native;
      }

      *(v9 + 16) = v14;
      v15 = v9 + 16 * v13;
      *(v15 + 32) = v11;
      *(v15 + 40) = v10;
    }
  }

  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  OUTLINED_FUNCTION_31_0();
  *(v16 - 16) = v24;
  *(v16 - 8) = 1;
  *(v16 - 7) = a2 & 1;
  OUTLINED_FUNCTION_25_20();
  sub_1DD582E38();
  v18 = v17;

  v19 = sub_1DD41859C(v18);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v19;
}

uint64_t sub_1DD586E9C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_14();
  v5(v4);
  OUTLINED_FUNCTION_7();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t getEnumTagSinglePayload for RequestMatchSignalProvider.MatchSignals.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RequestMatchSignalProvider.MatchSignals.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD587060()
{
  result = qword_1ECCDF0D0;
  if (!qword_1ECCDF0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF0D0);
  }

  return result;
}

unint64_t sub_1DD5870B8()
{
  result = qword_1EE163D10;
  if (!qword_1EE163D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163D10);
  }

  return result;
}

unint64_t sub_1DD587110()
{
  result = qword_1EE163D18;
  if (!qword_1EE163D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163D18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_38()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_13_42()
{
  *(v0 - 128) = *(v0 - 72);
  v1 = *(v0 - 232);
  *(v0 - 127) = *(v0 - 228);
  *(v0 - 126) = v1;
  *(v0 - 125) = *(v0 - 236);
  v2 = *(v0 - 224);
  *(v0 - 120) = *(v0 - 216);
  *(v0 - 112) = v2;
}

unint64_t OUTLINED_FUNCTION_36_14(uint64_t a1, unint64_t a2)
{

  return sub_1DD39565C(a1, a2, (v2 + 544));
}

uint64_t sub_1DD587288@<X0>(uint64_t a1@<X8>)
{
  sub_1DD63F488();
  if (sub_1DD63F468() && (sub_1DD63F448(), , sub_1DD63F738(), v3 = v2, , v3))
  {

    sub_1DD63D088();
    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = sub_1DD63D0F8();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
  }
}

uint64_t ResolutionResult.result.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for ResolutionState(0, *(a1 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4, v6);
}

uint64_t ResolutionResult.result.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ResolutionState(0, *(a2 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

uint64_t ResolutionResult.eraseToAnyResolutionResult()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_7_0();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return sub_1DD5875C8(v7, a2, *(a1 + 16), *(a1 + 24), v9);
}

uint64_t sub_1DD5875C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for ResolutionResult(0, a3, a4, a5);
  a2[3] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v9 = *(*(v7 - 8) + 32);

  return v9(boxed_opaque_existential_1, a1, v7);
}

uint64_t static ResolutionState<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v49 = a1;
  v50 = a2;
  OUTLINED_FUNCTION_7_0();
  v47 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v43 - v8;
  v48 = v9;
  v11 = type metadata accessor for ResolutionState(0, v9, v9, v10);
  OUTLINED_FUNCTION_7_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_7_0();
  v25 = v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v43 - v28;
  v31 = *(v30 + 48);
  v46 = v13;
  v32 = *(v13 + 16);
  v32(&v43 - v28, v49, v11, v27);
  (v32)(&v29[v31], v50, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (v32)(v19, v29, v11);
      if (OUTLINED_FUNCTION_11_2() == 1)
      {
        v35 = v47;
        v34 = v48;
        v36 = v44;
        (*(v47 + 32))(v44, &v29[v31], v48);
        v33 = sub_1DD63FD98();
        v37 = *(v35 + 8);
        v37(v36, v34);
        v37(v19, v34);
        goto LABEL_14;
      }

      (*(v47 + 8))(v19, v48);
      goto LABEL_12;
    case 2u:
      (v32)(v16, v29, v11);
      if (OUTLINED_FUNCTION_11_2() == 2)
      {
        v33 = sub_1DD640188();

        goto LABEL_14;
      }

      goto LABEL_12;
    case 3u:
      if (OUTLINED_FUNCTION_11_2() != 3)
      {
        goto LABEL_12;
      }

      v33 = 1;
      goto LABEL_14;
    default:
      (v32)(v22, v29, v11);
      if (OUTLINED_FUNCTION_11_2())
      {
        (*(v47 + 8))(v22, v48);
LABEL_12:
        v33 = 0;
      }

      else
      {
        v39 = v47;
        v38 = v48;
        v40 = v43;
        (*(v47 + 32))(v43, &v29[v31], v48);
        v33 = sub_1DD63FD98();
        v41 = *(v39 + 8);
        v41(v40, v38);
        v41(v22, v38);
LABEL_14:
        v25 = v46;
        TupleTypeMetadata2 = v11;
      }

      (*(v25 + 8))(v29, TupleTypeMetadata2);
      return v33 & 1;
  }
}

uint64_t AnyResolutionResult.unbox<A, B>()@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_1DD395720(v3, &v11);
  v8 = type metadata accessor for ResolutionResult(0, a2, a3, v7);
  v9 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a1, v9 ^ 1u, 1, v8);
}

uint64_t sub_1DD587B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ResolutionState(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD587BF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(*(v5 - 8) + 64);
  v7 = *(v4 - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0xFC)
  {
    v11 = 252;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v6 + v9 + 1;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_25;
  }

  v14 = (v12 & ~v9) + v10;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_25:
      if (v8 > 0xFC)
      {
        return __swift_getEnumTagSinglePayload((a1 + v12) & ~v9, v8, v4);
      }

      v20 = *(a1 + v6);
      if (v20 >= 4)
      {
        return (v20 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_25;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    switch(v14)
    {
      case 2:
        LODWORD(v14) = *a1;
        break;
      case 3:
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v14) = *a1;
        break;
      default:
        LODWORD(v14) = *a1;
        break;
    }
  }

  return v11 + (v14 | v19) + 1;
}

void sub_1DD587D94(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = *(*(v7 - 8) + 64);
  v9 = *(v6 - 8);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v10 = *(v9 + 84);
  if (v10 <= 0xFC)
  {
    v11 = 252;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = v8 + v12 + 1;
  v14 = (v13 & ~v12) + *(v9 + 64);
  v15 = 8 * v14;
  v16 = a3 >= v11;
  v17 = a3 - v11;
  if (v17 != 0 && v16)
  {
    if (v14 <= 3)
    {
      v21 = ((v17 + ~(-1 << v15)) >> v15) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v11 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v10 > 0xFC)
          {
            v24 = &a1[v13] & ~v12;

            __swift_storeEnumTagSinglePayload(v24, a2, v10, v6);
          }

          else if (a2 > 0xFC)
          {
            v25 = (v8 + 1);
            if (v25 <= 3)
            {
              v26 = ~(-1 << (8 * (v8 + 1)));
            }

            else
            {
              v26 = -1;
            }

            if (v8 != -1)
            {
              v27 = v26 & (a2 - 253);
              if (v25 <= 3)
              {
                v28 = v8 + 1;
              }

              else
              {
                v28 = 4;
              }

              bzero(a1, v25);
              switch(v28)
              {
                case 2:
                  *a1 = v27;
                  break;
                case 3:
                  *a1 = v27;
                  a1[2] = BYTE2(v27);
                  break;
                case 4:
                  *a1 = v27;
                  break;
                default:
                  *a1 = v27;
                  break;
              }
            }
          }

          else
          {
            a1[v8] = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v11 + a2;
    if (v14 < 4)
    {
      v20 = (v19 >> v15) + 1;
      if (v14)
      {
        v23 = v19 & ~(-1 << v15);
        bzero(a1, v14);
        if (v14 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v14 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v14] = v20;
        break;
      case 2:
        *&a1[v14] = v20;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v14] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DD588084(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 253;
}

void sub_1DD5881A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DD58836C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD5883AC(uint64_t result, int a2, int a3)
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

uint64_t ResolvableContact.candidates.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ResolvableContact.init(contact:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-v7 - 8];
  v9 = type metadata accessor for Contact(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = type metadata accessor for ContactResolver.SignalSet(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1DD43038C(v14);
  sub_1DD5886C4(a1, v11, type metadata accessor for Contact);
  sub_1DD41D418(v11, v19);
  memcpy(v20, v14 + 8, 0x108uLL);
  sub_1DD3C9580(v20);
  memcpy(v14 + 8, v19, 0x108uLL);
  sub_1DD5886C4(a1, v8, type metadata accessor for Contact);
  sub_1DD5886C4(v14, &v8[*(v5 + 44)], type metadata accessor for ContactResolver.SignalSet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF0, &qword_1DD644038);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD643F90;
  sub_1DD3C68F8(v8, v16 + v15);
  sub_1DD58872C(a1, type metadata accessor for Contact);
  sub_1DD3C6968(v8);
  *a2 = v16;
  return sub_1DD58872C(v14, type metadata accessor for ContactResolver.SignalSet);
}

uint64_t sub_1DD5886C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD58872C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static Resolver.resolve<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))(MEMORY[0x1E69E7CC0], a2);
}

{
  return (*(a3 + 16))(MEMORY[0x1E69E7CC0], a2);
}

const char *static Resolver.resolve(tasks:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF0D8, &qword_1DD65DBA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v80 - v5;
  v7 = type metadata accessor for LocationSlotResolutionTask(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v82 = v9;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050);
  v83 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v11 = &v80 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF0E0, &qword_1DD65DBB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v80 - v13;
  type metadata accessor for ContactSlotResolutionTask(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v88 = v17;
  v87 = *(a1 + 16);
  if (!v87)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v80 = v7;
  v81 = v6;
  v18 = 0;
  v85 = a1 + 32;
  v19 = MEMORY[0x1E69E7CC0];
  v84 = v14;
  v86 = v16;
  while (1)
  {
    v90 = v2;
    sub_1DD589204(v85 + 48 * v18, v97);
    sub_1DD395720(v98, __dst);
    v20 = v14;
    v21 = v86;
    v22 = swift_dynamicCast();
    v89 = v18;
    if (v22)
    {
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
      v23 = v20;
      sub_1DD589C6C(v20, v88, type metadata accessor for ContactSlotResolutionTask);
      v24 = v90;
      v25 = ContactSlotResolutionTask.run(withAlreadyResolvedSlots:)();
      v2 = v24;
      if (!v24)
      {
        v26 = *(v25 + 2);
        if (v26)
        {
          v90 = 0;
          v27 = &v25[(*(v83 + 80) + 32) & ~*(v83 + 80)];
          v28 = *(v83 + 72);
          do
          {
            sub_1DD589D24(v27, v11);
            *(&__dst[1] + 1) = v99;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__dst);
            sub_1DD589D94(v11, boxed_opaque_existential_1);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_0_124();
              v19 = v34;
            }

            v31 = *(v19 + 2);
            v30 = *(v19 + 3);
            if (v31 >= v30 >> 1)
            {
              v35 = OUTLINED_FUNCTION_1_0(v30);
              OUTLINED_FUNCTION_4_77(v35, v31 + 1);
              v19 = v36;
            }

            *(v19 + 2) = v31 + 1;
            v32 = &v19[32 * v31];
            v33 = __dst[1];
            *(v32 + 2) = __dst[0];
            *(v32 + 3) = v33;
            v27 += v28;
            --v26;
          }

          while (v26);

          v2 = v90;
          v23 = v84;
        }

        else
        {
        }

        v53 = OUTLINED_FUNCTION_2_92();
        sub_1DD589CCC(v53, v54);
        sub_1DD589260(v97);
        v55 = v89;
        v14 = v23;
        goto LABEL_38;
      }

      v68 = OUTLINED_FUNCTION_2_92();
      goto LABEL_44;
    }

    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
    sub_1DD390754(v20, &qword_1ECCDF0E0, &qword_1DD65DBB0);
    sub_1DD395720(v98, &v94);
    if (!swift_dynamicCast())
    {
      break;
    }

    memcpy(__dst, v93, 0x4BuLL);
    v37 = v90;
    DateTimeSlotResolutionTask.run(withAlreadyResolvedSlots:)(&v94);
    v2 = v37;
    if (v37)
    {
      sub_1DD589C18(__dst);
LABEL_45:
      sub_1DD589260(v97);

      return v19;
    }

    v38 = v94;
    LODWORD(v90) = v95;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF108, &qword_1DD65DBD8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_124();
      v19 = v59;
    }

    v41 = *(v19 + 2);
    v40 = *(v19 + 3);
    if (v41 >= v40 >> 1)
    {
      v60 = OUTLINED_FUNCTION_1_0(v40);
      OUTLINED_FUNCTION_4_77(v60, v41 + 1);
      v19 = v61;
    }

    sub_1DD589C18(__dst);
    sub_1DD589260(v97);
    *(v19 + 2) = v41 + 1;
    v42 = &v19[32 * v41];
    *(v42 + 4) = v38;
    *(v42 + 40) = v90;
    v43 = *(v93 + 7);
    *(v42 + 41) = *&v93[0];
    *(v42 + 6) = v43;
    *(v42 + 7) = v39;
    v14 = v84;
LABEL_37:
    v55 = v89;
LABEL_38:
    v18 = v55 + 1;
    if (v18 == v87)
    {
      return v19;
    }
  }

  v14 = v20;
  memset(v93, 0, 75);
  sub_1DD390754(v93, &qword_1ECCDF0E8, &qword_1DD65DBB8);
  sub_1DD395720(v98, __dst);
  v45 = v80;
  v44 = v81;
  v46 = swift_dynamicCast();
  v2 = v90;
  if (v46)
  {
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
    sub_1DD589C6C(v44, v82, type metadata accessor for LocationSlotResolutionTask);
    LocationSlotResolutionTask.run(withAlreadyResolvedSlots:)(v91);
    if (v2)
    {
      OUTLINED_FUNCTION_3_76();
      v68 = v82;
LABEL_44:
      sub_1DD589CCC(v68, v69);
      goto LABEL_45;
    }

    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF100, &qword_1DD65DBD0);
    v47 = swift_allocObject();
    memcpy((v47 + 16), v91, 0x2C9uLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_124();
      v19 = v62;
    }

    v49 = *(v19 + 2);
    v48 = *(v19 + 3);
    if (v49 >= v48 >> 1)
    {
      v63 = OUTLINED_FUNCTION_1_0(v48);
      OUTLINED_FUNCTION_4_77(v63, v49 + 1);
      v19 = v64;
    }

    OUTLINED_FUNCTION_3_76();
    sub_1DD589CCC(v82, v50);
    sub_1DD589260(v97);
    *(v19 + 2) = v49 + 1;
    v51 = &v19[32 * v49];
    *(v51 + 4) = v47;
    v52 = __dst[0];
    goto LABEL_36;
  }

  __swift_storeEnumTagSinglePayload(v44, 1, 1, v45);
  sub_1DD390754(v44, &qword_1ECCDF0D8, &qword_1DD65DBA8);
  sub_1DD395720(v98, &v94);
  if (swift_dynamicCast())
  {
    __dst[0] = v93[0];
    __dst[1] = v93[1];
    __dst[2] = v93[2];
    LOBYTE(__dst[3]) = v93[3];
    SportsSlotResolutionTask.run(withAlreadyResolvedSlots:)(v92);
    if (v2)
    {
      sub_1DD5892B4(__dst);
      goto LABEL_45;
    }

    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF0F8, &qword_1DD65DBC8);
    v56 = swift_allocObject();
    memcpy((v56 + 16), v92, 0x81uLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_124();
      v19 = v65;
    }

    v58 = *(v19 + 2);
    v57 = *(v19 + 3);
    if (v58 >= v57 >> 1)
    {
      v66 = OUTLINED_FUNCTION_1_0(v57);
      OUTLINED_FUNCTION_4_77(v66, v58 + 1);
      v19 = v67;
    }

    sub_1DD5892B4(__dst);
    sub_1DD589260(v97);
    *(v19 + 2) = v58 + 1;
    v51 = &v19[32 * v58];
    *(v51 + 4) = v56;
    v52 = v93[0];
LABEL_36:
    *(v51 + 40) = v52;
    *(v51 + 7) = v90;
    goto LABEL_37;
  }

  memset(v93, 0, 49);

  sub_1DD390754(v93, &qword_1ECCDF0F0, &qword_1DD65DBC0);
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v71 = sub_1DD63F9F8();
  __swift_project_value_buffer(v71, qword_1EE16F0C8);
  sub_1DD589204(v97, __dst);
  v72 = sub_1DD63F9D8();
  v73 = sub_1DD640378();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v93[0] = v75;
    *v74 = 136315138;
    v76 = __dst[0];

    sub_1DD589260(__dst);
    v77 = sub_1DD39565C(v76, *(&v76 + 1), v93);

    *(v74 + 4) = v77;
    _os_log_impl(&dword_1DD38D000, v72, v73, "Don't know how to resolve %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x1E12B3DA0](v75, -1, -1);
    MEMORY[0x1E12B3DA0](v74, -1, -1);
  }

  else
  {

    sub_1DD589260(__dst);
  }

  v19 = "matchedContactTokens";
  type metadata accessor for InferenceError();
  swift_allocObject();
  v78 = sub_1DD4DE96C(71, 0, 0xE000000000000000, 0xD00000000000006DLL, 0x80000001DD673560, 0x2865766C6F736572, 0xEF293A736B736174, 46, MEMORY[0x1E69E7CC0], 1);
  sub_1DD426968();
  swift_allocError();
  *v79 = v78;
  swift_willThrow();
  sub_1DD589260(v97);
  return v19;
}

uint64_t sub_1DD589308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17)
{
  if (a17 >= 2u)
  {
    if (a17 != 2)
    {
      return result;
    }
  }

  else
  {
  }
}

uint64_t sub_1DD5893D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = LOBYTE(STACK[0x598]);
  if (v67 == 2)
  {
  }

  else
  {
    result = a67;
    if (v67 <= 1)
    {
      v69 = STACK[0x588];
      v70 = STACK[0x590];

      sub_1DD3AD738(a12, a13, a14, a15);
      sub_1DD58979C(a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);

      sub_1DD589B3C(a52, a53);
      sub_1DD589BB0(a65, a66);

      return sub_1DD3AD77C(v69, v70);
    }
  }

  return result;
}

void sub_1DD58979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a2 != 1)
  {

    sub_1DD589950(a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
  }
}

void sub_1DD589950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a2 != 1)
  {

    sub_1DD589AA8(a6, a7);
  }
}

uint64_t sub_1DD589AA8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD589B3C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD589BB0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD589C6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DD589CCC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD589D24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD589D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for Resolver(_BYTE *result, int a2, int a3)
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

id RestartableBlockOperation.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id RestartableBlockOperation.clone()()
{
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block);
  v2 = *(v0 + OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block + 8);
  v4 = objc_allocWithZone(ObjectType);
  v5 = &v4[OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block];
  *v5 = v3;
  *(v5 + 1) = v2;
  v7.receiver = v4;
  v7.super_class = ObjectType;

  return objc_msgSendSuper2(&v7, sel_init);
}

id RestartableBlockOperation.init(block:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id RestartableBlockOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RestartableBlockOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

objc_class *RolloutsAnalyticsActivity.__allocating_init(analyticsManager:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1DD3C2388(a1, v3 + OBJC_IVAR____TtC13SiriInference25RolloutsAnalyticsActivity_analyticsManager);
  v6.receiver = v3;
  v6.super_class = v1;
  objc_msgSendSuper2(&v6, sel_init);
  v4 = OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1;
}

void *RolloutsAnalyticsActivity.init(analyticsManager:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1DD3C2388(a1, v1 + OBJC_IVAR____TtC13SiriInference25RolloutsAnalyticsActivity_analyticsManager);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_init);
  v4 = OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1;
}

Swift::Void __swiftcall RolloutsAnalyticsActivity.main()()
{
  ObjectType = swift_getObjectType();
  if ([v0 isCancelled])
  {
    if (qword_1EE161CB0 != -1)
    {
      OUTLINED_FUNCTION_1_107(&qword_1EE161CB0);
    }

    v2 = sub_1DD63F9F8();
    __swift_project_value_buffer(v2, qword_1EE16EF28);
    oslog = sub_1DD63F9D8();
    v3 = sub_1DD640368();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DD38D000, oslog, v3, "Operation canceled, returning.", v4, 2u);
      MEMORY[0x1E12B3DA0](v4, -1, -1);
    }
  }

  else
  {
    v5 = sub_1DD6408F8();
    sub_1DD636DE8(v5, v6, v0, ObjectType);
  }
}

uint64_t sub_1DD58A3DC(uint64_t a1)
{
  v10 = a1;
  v11 = sub_1DD63F9C8();
  v1 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DD643F90;
  v6 = sub_1DD6408F8();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1DD392BD8();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  OUTLINED_FUNCTION_5_77();
  sub_1DD63F998();

  sub_1DD58A5C8();
  sub_1DD6404C8();
  OUTLINED_FUNCTION_5_77();
  sub_1DD63F9A8();
  return (*(v1 + 8))(v3, v11);
}

uint64_t sub_1DD58A5C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  if (qword_1EE161CB0 != -1)
  {
    OUTLINED_FUNCTION_1_107(&qword_1EE161CB0);
  }

  v6 = sub_1DD63F9F8();
  __swift_project_value_buffer(v6, qword_1EE16EF28);
  v7 = sub_1DD63F9D8();
  v8 = sub_1DD640368();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DD38D000, v7, v8, "Executing main for RolloutAnalyticsActivity", v9, 2u);
    OUTLINED_FUNCTION_8_2();
  }

  v10 = sub_1DD6401F8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = ObjectType;
  v12 = v1;
  sub_1DD4B0E18();
}

uint64_t sub_1DD58A7C0()
{
  OUTLINED_FUNCTION_4_78();
  v1 = (v0[2] + OBJC_IVAR____TtC13SiriInference25RolloutsAnalyticsActivity_analyticsManager);
  v0[3] = OBJC_IVAR____TtC13SiriInference25RolloutsAnalyticsActivity_analyticsManager;
  v0[4] = 0;
  v0[5] = off_1F58AECE0;
  OUTLINED_FUNCTION_3_77(v1);

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_0_125(v2);
  OUTLINED_FUNCTION_13_43();

  return MEMORY[0x1EEDE8C28](v3);
}

uint64_t sub_1DD58A870()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {
    v5 = sub_1DD58AA84;
  }

  else
  {
    v5 = sub_1DD58A998;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD58A998()
{
  OUTLINED_FUNCTION_4_78();
  v1 = v0[4] + 1;
  if (v0[4] == 3)
  {
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_13_43();

    __asm { BRAA            X1, X16 }
  }

  v0[4] = v1;
  v4 = (v0[2] + v0[3]);
  v0[5] = *(&unk_1F58AECB8 + 2 * v1 + 5);
  OUTLINED_FUNCTION_3_77(v4);

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_0_125(v5);
  OUTLINED_FUNCTION_13_43();

  return MEMORY[0x1EEDE8C28](v6);
}

uint64_t sub_1DD58AA84()
{
  OUTLINED_FUNCTION_4_78();
  if (qword_1EE161CB0 != -1)
  {
    OUTLINED_FUNCTION_1_107(&qword_1EE161CB0);
  }

  v1 = v0[7];
  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16EF28);
  v3 = OUTLINED_FUNCTION_15_2();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640378();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_12_39(&dword_1DD38D000, v12, v13, "Error in tryMain of RolloutsAnalyticsActivity: %@");
    sub_1DD3CBE0C(v9);
    OUTLINED_FUNCTION_8_2();
    MEMORY[0x1E12B3DA0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[4] + 1;
  if (v0[4] == 3)
  {
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_13_43();

    __asm { BRAA            X1, X16 }
  }

  v0[4] = v14;
  v17 = (v0[2] + v0[3]);
  v0[5] = *(&unk_1F58AECB8 + 2 * v14 + 5);
  OUTLINED_FUNCTION_3_77(v17);

  v18 = swift_task_alloc();
  v0[6] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_0_125(v18);
  OUTLINED_FUNCTION_13_43();

  return MEMORY[0x1EEDE8C28](v19);
}

uint64_t static RolloutsAnalyticsActivity.deregister(analyticsManager:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1DD6401F8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_1DD3C2388(a1, v10);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  sub_1DD3AA4A8(v10, (v7 + 4));
  v7[9] = v1;
  sub_1DD4B0E18();
}

uint64_t sub_1DD58AD88()
{
  OUTLINED_FUNCTION_4_78();
  v1 = v0[2];
  v0[3] = 0;
  v0[4] = off_1F58AECE0;
  OUTLINED_FUNCTION_3_77(v1);

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_2_93(v2);
  OUTLINED_FUNCTION_13_43();

  return MEMORY[0x1EEDE8C20](v3);
}

uint64_t sub_1DD58AE30()
{
  v5 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v2 = v5;
  *(v5 + 48) = v0;

  if (v0)
  {

    v3 = sub_1DD58B038;
  }

  else
  {
    v3 = sub_1DD58AF44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD58AF44()
{
  OUTLINED_FUNCTION_4_78();

  v1 = v0[3] + 1;
  v0[3] = v1;
  if (v1 == 4)
  {
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_13_43();

    __asm { BRAA            X1, X16 }
  }

  v4 = v0[2];
  v0[4] = *(&unk_1F58AECB8 + 2 * v1 + 5);
  OUTLINED_FUNCTION_3_77(v4);

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_2_93(v5);
  OUTLINED_FUNCTION_13_43();

  return MEMORY[0x1EEDE8C20](v6);
}

uint64_t sub_1DD58B038()
{
  OUTLINED_FUNCTION_4_78();
  if (qword_1EE161CB0 != -1)
  {
    OUTLINED_FUNCTION_1_107(&qword_1EE161CB0);
  }

  v1 = *(v0 + 48);
  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16EF28);
  v3 = OUTLINED_FUNCTION_15_2();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640378();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_12_39(&dword_1DD38D000, v12, v13, "Error in deregister of RolloutsAnalyticsActivity: %@");
    sub_1DD3CBE0C(v9);
    OUTLINED_FUNCTION_8_2();
    MEMORY[0x1E12B3DA0](v8, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return v14();
}

id RolloutsAnalyticsActivity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RolloutsAnalyticsActivity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DD58B25C()
{
  OUTLINED_FUNCTION_4_78();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD58B30C;
  v2 = OUTLINED_FUNCTION_11_45();

  return sub_1DD58AD68(v2, v3, v4, v5);
}

uint64_t sub_1DD58B30C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v2 = v1;

  OUTLINED_FUNCTION_26();

  return v3();
}

uint64_t sub_1DD58B444()
{
  OUTLINED_FUNCTION_4_78();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DD58B4F4;
  v4 = OUTLINED_FUNCTION_11_45();

  return sub_1DD58A7A0(v4, v5, v6, v2);
}

void OUTLINED_FUNCTION_12_39(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1DD58B560(uint64_t a1)
{
  sub_1DD5D3268(0);

  sub_1DD5D2CF8();
  v3 = v2;
  v20 = a1;

  v4 = sub_1DD63FC88();
  v5 = 0;
  v21 = *(v3 + 16);
  for (i = (v3 + 40); ; i += 2)
  {
    if (v21 == v5)
    {

      return v20;
    }

    if (v5 >= *(v3 + 16))
    {
      break;
    }

    v8 = *(i - 1);
    v7 = *i;

    swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_1DD3978DC();
    if (__OFADD__(v4[2], (v10 & 1) == 0))
    {
      goto LABEL_15;
    }

    v11 = v9;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
    if (sub_1DD640A08())
    {
      v13 = sub_1DD3978DC();
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_17;
      }

      v11 = v13;
    }

    if (v12)
    {
      *(v4[7] + 8 * v11) = v5;
    }

    else
    {
      v4[(v11 >> 6) + 8] |= 1 << v11;
      v15 = (v4[6] + 16 * v11);
      *v15 = v8;
      v15[1] = v7;
      *(v4[7] + 8 * v11) = v5;
      v16 = v4[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_16;
      }

      v4[2] = v18;
    }

    ++v5;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD58B748()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9[-v4];
  __swift_allocate_value_buffer(v6, qword_1EE166408);
  v7 = __swift_project_value_buffer(v0, qword_1EE166408);
  sub_1DD6282D8(0xD000000000000013, 0x80000001DD6736C0);
  swift_storeEnumTagMultiPayload();
  sub_1DD58BC84(v2, v5);
  return sub_1DD58BC84(v5, v7);
}

uint64_t sub_1DD58B87C()
{
  if (qword_1EE166420 != -1)
  {
    OUTLINED_FUNCTION_0_126(&qword_1EE166420);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);

  return __swift_project_value_buffer(v0, qword_1EE166408);
}

uint64_t static RunTimeDataDB.defaultURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE166420 != -1)
  {
    OUTLINED_FUNCTION_0_126(&qword_1EE166420);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  v3 = __swift_project_value_buffer(v2, qword_1EE166408);
  swift_beginAccess();
  return sub_1DD58B964(v3, a1);
}

uint64_t sub_1DD58B964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static RunTimeDataDB.defaultURL.setter(uint64_t a1)
{
  if (qword_1EE166420 != -1)
  {
    OUTLINED_FUNCTION_0_126(&qword_1EE166420);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  v3 = __swift_project_value_buffer(v2, qword_1EE166408);
  swift_beginAccess();
  sub_1DD58BA6C(a1, v3);
  swift_endAccess();
  return sub_1DD58BADC(a1);
}

uint64_t sub_1DD58BA6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD58BADC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static RunTimeDataDB.defaultURL.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE166420 != -1)
  {
    OUTLINED_FUNCTION_0_126(&qword_1EE166420);
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  __swift_project_value_buffer(v1, qword_1EE166408);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1DD58BBD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DD58B87C();
  swift_beginAccess();
  return sub_1DD58B964(v2, a1);
}

uint64_t sub_1DD58BC20(uint64_t a1)
{
  v2 = sub_1DD58B87C();
  swift_beginAccess();
  sub_1DD58BA6C(a1, v2);
  return swift_endAccess();
}

uint64_t sub_1DD58BC84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD58BCF4(uint64_t a1)
{
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F068);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    OUTLINED_FUNCTION_3_9(&dword_1DD38D000, v6, v7, "running migration to create RunTimeDataDB");
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  return sub_1DD405F44(v8, a1, 0xD000000000000147, 0x80000001DD673790);
}

uint64_t sub_1DD58BDE8(uint64_t a1)
{
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F068);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    OUTLINED_FUNCTION_3_9(&dword_1DD38D000, v6, v7, "running migration to create siriTasksEvaluationData runTimeDB");
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  return sub_1DD405F44(v8, a1, 0xD0000000000000A5, 0x80000001DD6736E0);
}

uint64_t sub_1DD58BEDC()
{
  OUTLINED_FUNCTION_8_59();
  if (qword_1EE165FB0 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v4 = sub_1DD63F9F8();
  __swift_project_value_buffer(v4, qword_1EE16F068);
  OUTLINED_FUNCTION_31_21();

  v5 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_36_15();
  if (OUTLINED_FUNCTION_35_15())
  {
    OUTLINED_FUNCTION_54();
    v47[0] = OUTLINED_FUNCTION_13_44();
    *v3 = 136315138;
    *(v3 + 4) = sub_1DD39565C(v2, v1, v47);
    OUTLINED_FUNCTION_14_39(&dword_1DD38D000, v6, v7, "fetching siriTasksEvaluationData for taskId=%s");
    OUTLINED_FUNCTION_10_50();
    OUTLINED_FUNCTION_13_36();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  OUTLINED_FUNCTION_16_43(inited, MEMORY[0x1E69E6158]);

  v9 = sub_1DD4061B8(0xD000000000000039, 0x80000001DD673B10, inited);
  if (v0)
  {
    swift_setDeallocating();
    v10 = inited;
    sub_1DD46CB4C();
    return v10;
  }

  else
  {
    v11 = v9;
    swift_setDeallocating();
    sub_1DD46CB4C();
    v1 = sub_1DD58B560(v11);
    v2 = v12;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1DD5D2E58();
      v15 = v14;
      if (!v14)
      {
        break;
      }

      v16 = *(v2 + 16);

      if (!v16 || (OUTLINED_FUNCTION_25_21(), v10 = v2, v17 = sub_1DD3978DC(), (v18 & 1) == 0))
      {

        v10 = sub_1DD59402C(v26);
        v27 = sub_1DD4CF1AC();
        OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v27);
        *v28 = xmmword_1DD65DD10;
        *(v28 + 16) = v10;
        *(v28 + 24) = 1;
        swift_willThrow();

        swift_bridgeObjectRelease_n();
        return v10;
      }

      v19 = *(*(v2 + 56) + 8 * v17);
      if ((v19 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v19 >= *(v15 + 16))
      {
        goto LABEL_31;
      }

      sub_1DD58FB78(v15 + 40 * v19 + 32, v47);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
      if ((swift_dynamicCast() & 1) == 0 || (v20 = v51) == 0)
      {
        v29 = sub_1DD4CF1AC();
        v30 = OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v29);
        OUTLINED_FUNCTION_7_54(xmmword_1DD65DD10, v30, v31);

        return v10;
      }

      v21 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12();
        sub_1DD3BE2A4();
        v13 = v24;
      }

      v3 = v13[2];
      v22 = v13[3];
      if (v3 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_14_0(v22);
        sub_1DD3BE2A4();
        v13 = v25;
      }

      v13[2] = v3 + 1;
      v23 = &v13[2 * v3];
      v23[4] = v21;
      v23[5] = v20;
    }

    v33 = v13[2];
    if (!v33)
    {

      v43 = sub_1DD58FB24();
      OUTLINED_FUNCTION_4_42(&type metadata for RunTimeDataLoggerError, v43);
      v10 = v44;
      *v44 = sub_1DD46539C(0xD000000000000082, 0x80000001DD673B50, 0xD000000000000025, 0x80000001DD673BE0, 153, 0) & 1;
      swift_willThrow();
      return v10;
    }

    v52 = MEMORY[0x1E69E7CC0];
    result = sub_1DD42B780(0, v33, 0);
    v34 = 0;
    v10 = v52;
    v35 = v13 + 5;
    v46 = v33;
    while (v34 < v13[2])
    {
      v36 = *v35;
      v50 = *(v35 - 1);
      v51 = v36;

      sub_1DD58F25C(&v50, &v49);

      v38 = v47[0];
      v37 = v47[1];
      v39 = v48;
      v52 = v10;
      v41 = *(v10 + 16);
      v40 = *(v10 + 24);
      if (v41 >= v40 >> 1)
      {
        v45 = v48;
        result = sub_1DD42B780(v40 > 1, v41 + 1, 1);
        v39 = v45;
        v10 = v52;
      }

      ++v34;
      *(v10 + 16) = v41 + 1;
      v42 = v10 + 24 * v41;
      *(v42 + 32) = v38;
      *(v42 + 40) = v37;
      *(v42 + 48) = v39;
      v35 += 2;
      if (v46 == v34)
      {

        return v10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DD58C468()
{
  OUTLINED_FUNCTION_8_59();
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F068);
  OUTLINED_FUNCTION_31_21();

  v3 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_36_15();
  if (OUTLINED_FUNCTION_35_15())
  {
    OUTLINED_FUNCTION_54();
    v4 = OUTLINED_FUNCTION_13_44();
    *(v1 + 4) = OUTLINED_FUNCTION_20_31(4.8149e-34, v4, v5, v6, v7, v8, v9, v10, v11, v4);
    OUTLINED_FUNCTION_14_39(&dword_1DD38D000, v12, v13, "deleting SiriTasksEvaluation runtime data. taskId=%s");
    OUTLINED_FUNCTION_10_50();
    OUTLINED_FUNCTION_13_36();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  OUTLINED_FUNCTION_16_43(inited, MEMORY[0x1E69E6158]);

  OUTLINED_FUNCTION_21_30(52, 0x80000001DD673AD0);
  if (!v0)
  {
  }

  swift_setDeallocating();
  return sub_1DD46CB4C();
}

void sub_1DD58C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for RunTimeDataRecord(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  OUTLINED_FUNCTION_2();
  if (qword_1EE165FB0 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v29 = sub_1DD63F9F8();
  __swift_project_value_buffer(v29, qword_1EE16F068);

  v30 = sub_1DD63F9D8();
  v31 = sub_1DD640368();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_54();
    v70[0] = OUTLINED_FUNCTION_62();
    *v32 = 136315138;
    *(v32 + 4) = sub_1DD39565C(v27, v25, v70);
    _os_log_impl(&dword_1DD38D000, v30, v31, "finding runtime data records. taskId=%s", v32, 0xCu);
    OUTLINED_FUNCTION_10_50();
    OUTLINED_FUNCTION_0_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = v27;
  *(inited + 40) = v25;

  v34 = sub_1DD4061B8(0xD000000000000034, 0x80000001DD673D70, inited);
  if (v23)
  {
    swift_setDeallocating();
    sub_1DD46CB4C();
LABEL_21:
    OUTLINED_FUNCTION_86();
  }

  else
  {
    v35 = v34;
    swift_setDeallocating();
    sub_1DD46CB4C();
    v27 = sub_1DD58B560(v35);
    v37 = v36;
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1DD5D2E58();
      v39 = v38;
      if (!v38)
      {
        break;
      }

      v40 = *(v37 + 16);

      if (!v40 || (OUTLINED_FUNCTION_25_21(), v41 = sub_1DD3978DC(), (v42 & 1) == 0))
      {

        v50 = sub_1DD59402C(v49);
        v51 = sub_1DD4CF1AC();
        OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v51);
        *v52 = xmmword_1DD65DD10;
        *(v52 + 16) = v50;
        *(v52 + 24) = 1;
        swift_willThrow();

        swift_bridgeObjectRelease_n();
        goto LABEL_21;
      }

      v43 = *(*(v37 + 56) + 8 * v41);
      if ((v43 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v43 >= *(v39 + 16))
      {
        goto LABEL_31;
      }

      sub_1DD58FB78(v39 + 40 * v43 + 32, v70);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
      if ((swift_dynamicCast() & 1) == 0 || !v69)
      {
        v53 = sub_1DD4CF1AC();
        v54 = OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v53);
        OUTLINED_FUNCTION_7_54(xmmword_1DD65DD10, v54, v55);

        goto LABEL_21;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12();
        sub_1DD3BE2A4();
        v25 = v47;
      }

      v45 = *(v25 + 16);
      v44 = *(v25 + 24);
      if (v45 >= v44 >> 1)
      {
        OUTLINED_FUNCTION_14_0(v44);
        sub_1DD3BE2A4();
        v25 = v48;
      }

      *(v25 + 16) = v45 + 1;
      v46 = v25 + 16 * v45;
      *(v46 + 32) = v67;
      *(v46 + 40) = v69;
    }

    v56 = *(v25 + 16);
    if (!v56)
    {

      v65 = sub_1DD58FB24();
      OUTLINED_FUNCTION_4_42(&type metadata for RunTimeDataLoggerError, v65);
      *v66 = sub_1DD46539C(0xD000000000000082, 0x80000001DD673B50, 0xD000000000000014, 0x80000001DD673DB0, 130, 0) & 1;
      swift_willThrow();
      goto LABEL_21;
    }

    v68 = MEMORY[0x1E69E7CC0];
    sub_1DD42BB70(0, v56, 0);
    v57 = 0;
    v58 = (v25 + 40);
    while (v57 < *(v25 + 16))
    {
      v59 = *v58;
      v70[0] = *(v58 - 1);
      v70[1] = v59;

      sub_1DD58EFAC(v70, &a10);

      v61 = *(v68 + 16);
      v60 = *(v68 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1DD42BB70(v60 > 1, v61 + 1, 1);
      }

      ++v57;
      *(v68 + 16) = v61 + 1;
      OUTLINED_FUNCTION_18_3();
      OUTLINED_FUNCTION_1_108();
      sub_1DD58FD40(v62, v63, v64);
      v58 += 2;
      if (v56 == v57)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
  }
}

void sub_1DD58CBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = type metadata accessor for RunTimeDataRecord(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  v31 = v30 - v29;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v32 = sub_1DD63F9F8();
  __swift_project_value_buffer(v32, qword_1EE16F068);
  OUTLINED_FUNCTION_1_108();
  sub_1DD58FCE0(v26, v31, v33);
  v34 = sub_1DD63F9D8();
  v35 = sub_1DD640368();
  v51 = v27;
  if (os_log_type_enabled(v34, v35))
  {
    OUTLINED_FUNCTION_54();
    v36 = OUTLINED_FUNCTION_13_44();
    a10 = v36;
    *v21 = 136315138;
    v37 = v31 + *(v27 + 20);
    v38 = *(v37 + 8);
    v39 = *(v37 + 16);

    OUTLINED_FUNCTION_15_42();
    v40 = sub_1DD39565C(v38, v39, &a10);

    *(v21 + 4) = v40;
    v24 = v20;
    OUTLINED_FUNCTION_30_18(&dword_1DD38D000, v34, v35, "saving contact runtime data. taskId=%s", v27);
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_13_36();
  }

  else
  {

    OUTLINED_FUNCTION_15_42();
  }

  v41 = sub_1DD63286C();
  if (!v24)
  {
    v43 = v41;
    v44 = v42;
    sub_1DD58DF90(v41, v42, 30000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD6444F0;
    v46 = v26 + *(v51 + 20);
    v47 = MEMORY[0x1E69E6158];
    v49 = *(v46 + 8);
    v48 = *(v46 + 16);
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &off_1F58C4E78;
    *(inited + 32) = v49;
    *(inited + 40) = v48;

    sub_1DD4C1B10();
    *(inited + 96) = MEMORY[0x1E69E7360];
    *(inited + 104) = &off_1F58C4E70;
    *(inited + 72) = v50;
    *(inited + 136) = v47;
    *(inited + 144) = &off_1F58C4E78;
    *(inited + 112) = v43;
    *(inited + 120) = v44;
    sub_1DD4061B8(0xD00000000000004CLL, 0x80000001DD673A10, inited);

    swift_setDeallocating();
    sub_1DD46CB4C();
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD58CE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B8, &unk_1DD65DD40);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v156 - v25;
  v170 = type metadata accessor for RunTimeDataRecord(0);
  OUTLINED_FUNCTION_0();
  v165 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v29);
  v167 = v156 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v184 = v156 - v32;
  v33 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v37);
  v176 = v156 - v38;
  v177 = type metadata accessor for UnstitchedTask(0);
  OUTLINED_FUNCTION_0();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_1_4();
  v44 = v42 - v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v46);
  v183 = (v156 - v47);
  v171 = *v20;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v48 = sub_1DD63F9F8();
  v175 = __swift_project_value_buffer(v48, qword_1EE16F068);
  v49 = sub_1DD63F9D8();
  v50 = sub_1DD640368();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_1DD38D000, v49, v50, "fetching unstitched tasks from runtime data DB", v51, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  v52 = MEMORY[0x1E69E7CC0];
  sub_1DD4061B8(0xD0000000000000B5, 0x80000001DD673CB0, MEMORY[0x1E69E7CC0]);
  if (v21)
  {
LABEL_55:
    OUTLINED_FUNCTION_86();
    return;
  }

  v159 = v44;
  v160 = v40;

  v178 = sub_1DD58B560(v161);
  v54 = v53;
  v172 = (v35 + 4);
  v158 = (v35 + 2);
  v157 = v35 + 5;
  *(&v55 + 1) = 0xE400000000000000;
  v168 = xmmword_1DD65DD10;
  *&v55 = 136315138;
  v169 = v55;
  v162 = v52;
  v185 = v52;
  v173 = v26;
  v174 = v33;
  v179 = v53;
  while (1)
  {
    sub_1DD5D2E58();
    v57 = v56;
    if (!v56)
    {
      break;
    }

    v58 = sub_1DD4CE934(0x64496B736174, 0xE600000000000000, v54, v57);
    v60 = v59;
    if (!v59)
    {

      v150 = sub_1DD4CF1AC();
      v151 = OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v150);
      OUTLINED_FUNCTION_7_54(xmmword_1DD65DD30, v151, v152);

      OUTLINED_FUNCTION_32_19();
      OUTLINED_FUNCTION_19_33();

      goto LABEL_55;
    }

    v61 = v58;
    sub_1DD4CF054(0x5F64657461657263, 0xEA00000000007461, v57, v184, v54);
    if (__swift_getEnumTagSinglePayload(v184, 1, v33) == 1)
    {

      sub_1DD390754(v184, &qword_1ECCDEBC0, &qword_1DD6445A0);
      v153 = sub_1DD4CF1AC();
      v154 = OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v153);
      OUTLINED_FUNCTION_7_54(xmmword_1DD65DD20, v154, v155);
      OUTLINED_FUNCTION_19_33();

      OUTLINED_FUNCTION_32_19();
      goto LABEL_55;
    }

    v182 = 0;
    v62 = *v172;
    v63 = v176;
    (*v172)(v176, v184, v33);
    v64 = v183;
    v180 = v61;
    v181 = v60;
    *v183 = v61;
    v64[1] = v60;
    v65 = v177;
    v66 = v64 + *(v177 + 20);
    v62(v66, v63, v33);
    v67 = *(v65 + 24);
    v54 = v179;
    *(v64 + v67) = MEMORY[0x1E69E7CC0];
    v68 = v173;
    sub_1DD63C7A8();
    swift_allocObject();
    sub_1DD63C798();
    v69 = OUTLINED_FUNCTION_25_21();
    v70 = v182;
    sub_1DD58DB80(v69, v71, v54, v57, v72);
    v73 = v70;
    if (v70)
    {

      goto LABEL_14;
    }

    if (__swift_getEnumTagSinglePayload(v68, 1, v170) == 1)
    {
      sub_1DD390754(v68, &qword_1ECCDC1B8, &unk_1DD65DD40);
      v74 = sub_1DD4CF1AC();
      v73 = OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v74);
      OUTLINED_FUNCTION_7_54(v168, v73, v75);

LABEL_14:
      v76 = v73;
      v77 = sub_1DD63F9D8();
      v78 = sub_1DD640378();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = v73;
        v80 = OUTLINED_FUNCTION_54();
        v81 = OUTLINED_FUNCTION_62();
        a10 = v81;
        *v80 = v169;
        v186 = v79;
        v82 = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
        v83 = sub_1DD63FE38();
        v85 = sub_1DD39565C(v83, v84, &a10);

        *(v80 + 4) = v85;
        v54 = v179;
        _os_log_impl(&dword_1DD38D000, v77, v78, "could not decode RunTimeDataRecord: %s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        OUTLINED_FUNCTION_0_1();
        v73 = v79;
        OUTLINED_FUNCTION_0_1();
      }

      v33 = v174;
      v86 = v181;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12();
        sub_1DD3BE2A4();
        v185 = v138;
      }

      v88 = *(v185 + 16);
      v87 = *(v185 + 24);
      if (v88 >= v87 >> 1)
      {
        OUTLINED_FUNCTION_14_0(v87);
        sub_1DD3BE2A4();
        v185 = v139;
      }

      v89 = v185;
      *(v185 + 16) = v88 + 1;
      v90 = v89 + 16 * v88;
      *(v90 + 32) = v180;
      *(v90 + 40) = v86;
      OUTLINED_FUNCTION_2_94();
      sub_1DD58FC88(v183, v91);
    }

    else
    {
      v182 = v66;

      OUTLINED_FUNCTION_1_108();
      sub_1DD58FD40(v68, v167, v92);
      sub_1DD3C0784();
      v94 = v93;
      v96 = *(v93 + 16);
      v95 = *(v93 + 24);
      v97 = v181;
      if (v96 >= v95 >> 1)
      {
        OUTLINED_FUNCTION_14_0(v95);
        sub_1DD3C0784();
        v94 = v140;
      }

      *(v94 + 16) = v96 + 1;
      OUTLINED_FUNCTION_18_3();
      v156[2] = v98;
      v99 = v94 + v98;
      v156[1] = *(v100 + 72);
      OUTLINED_FUNCTION_1_108();
      sub_1DD58FD40(v167, v101, v102);
      *(v183 + v67) = v94;
      v103 = *(v162 + 16);
      if (!v103)
      {
        goto LABEL_43;
      }

      v104 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v105 = *(v160 + 72);
      v106 = v105 * (v103 - 1);
      OUTLINED_FUNCTION_3_78();
      v108 = v166;
      sub_1DD58FCE0(v107 + v106, v166, v109);
      v110 = *v108 == v180 && v97 == v108[1];
      if (!v110 && (sub_1DD640CD8() & 1) == 0)
      {
        OUTLINED_FUNCTION_2_94();
        sub_1DD58FC88(v166, v130);
        v54 = v179;
LABEL_43:
        OUTLINED_FUNCTION_3_78();
        sub_1DD58FCE0(v183, v159, v131);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_12();
          sub_1DD3C06AC();
          v162 = v141;
        }

        v33 = v174;
        v132 = v162;
        v133 = *(v162 + 16);
        if (v133 >= *(v162 + 24) >> 1)
        {
          sub_1DD3C06AC();
          v132 = v142;
        }

        *(v132 + 16) = v133 + 1;
        OUTLINED_FUNCTION_18_3();
        v162 = v134;
        OUTLINED_FUNCTION_3_78();
        sub_1DD58FD40(v159, v135, v136);
        goto LABEL_48;
      }

      v181 = v105;
      v111 = v166 + *(v177 + 20);
      OUTLINED_FUNCTION_4_79();
      sub_1DD58FDA0(&qword_1EE166638, v112, MEMORY[0x1E6969548]);
      v113 = v182;
      v114 = v174;
      if (sub_1DD63FD68())
      {
        v115 = v111;
      }

      else
      {
        v115 = v113;
      }

      (*v158)(v164, v115, v114);
      OUTLINED_FUNCTION_19_33();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_19_33();
        sub_1DD586B08();
        v162 = v143;
      }

      if (v103 > *(v162 + 16))
      {
        goto LABEL_58;
      }

      v116 = v162 + v104;
      v117 = v162 + v104 + *(v177 + 20) + v106;
      v33 = v174;
      v118 = v162;
      (*v157)(v117, v164, v174);
      if (!*(v94 + 16))
      {
        goto LABEL_59;
      }

      v119 = *(v118 + 16);
      OUTLINED_FUNCTION_1_108();
      sub_1DD58FCE0(v99, v163, v120);
      v54 = v179;
      if (!v119)
      {
        goto LABEL_60;
      }

      v121 = v116 + (v119 - 1) * v181;
      v122 = *(v177 + 24);
      v123 = *(v121 + v122);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v121 + v122) = v123;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_12();
        sub_1DD3C0784();
        v123 = v144;
        *(v121 + v122) = v144;
      }

      v126 = *(v123 + 16);
      v125 = *(v123 + 24);
      if (v126 >= v125 >> 1)
      {
        OUTLINED_FUNCTION_14_0(v125);
        sub_1DD3C0784();
        v123 = v145;
        *(v121 + v122) = v145;
      }

      *(v123 + 16) = v126 + 1;
      OUTLINED_FUNCTION_1_108();
      sub_1DD58FD40(v163, v127, v128);
      OUTLINED_FUNCTION_2_94();
      sub_1DD58FC88(v166, v129);
LABEL_48:
      OUTLINED_FUNCTION_2_94();
      sub_1DD58FC88(v183, v137);
    }
  }

  v146 = 0;
  v147 = *(v185 + 16);
  v148 = v185 + 40;
  v149 = v171;
  while (1)
  {
    if (v147 == v146)
    {
      OUTLINED_FUNCTION_32_19();

      OUTLINED_FUNCTION_19_33();
      goto LABEL_55;
    }

    if (v146 >= *(v185 + 16))
    {
      break;
    }

    a10 = v149;

    sub_1DD58E7D8();
    a10 = v149;
    sub_1DD58E684();

    v148 += 16;
    ++v146;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

unint64_t sub_1DD58DB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v34 = a5;
  v10 = sub_1DD63FE28();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1DD59B63C(a1, a2, a3);
  if (v15)
  {

    v17 = sub_1DD59402C(v16);
    sub_1DD4CF1AC();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = v17;
    *(v18 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (result >= *(a4 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1DD58FB78(a4 + 40 * result + 32, v33);
  sub_1DD58FB78(v33, v31);
  if (!v32)
  {
    sub_1DD390754(v31, &qword_1ECCDCF98, &qword_1DD6547F0);
LABEL_10:
    sub_1DD58FB78(v33, v31);
    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
      if (swift_dynamicCast())
      {
        sub_1DD63FE18();
        v23 = sub_1DD63FDE8();
        v25 = v24;
        result = (*(v11 + 8))(v13, v10);
        if (v25 >> 60 != 15)
        {

          v21 = type metadata accessor for RunTimeDataRecord(0);
          sub_1DD58FDA0(&qword_1EE1623F8, type metadata accessor for RunTimeDataRecord, &unk_1DD65DEEC);
          v22 = v34;
          sub_1DD63C788();
          sub_1DD390754(v33, &qword_1ECCDCF98, &qword_1DD6547F0);
          result = sub_1DD3AD77C(v23, v25);
          if (v5)
          {
            return result;
          }

          goto LABEL_14;
        }

LABEL_22:
        __break(1u);
        return result;
      }

      v29 = v33;
    }

    else
    {
      sub_1DD390754(v33, &qword_1ECCDCF98, &qword_1DD6547F0);
      v29 = v31;
    }

    sub_1DD390754(v29, &qword_1ECCDCF98, &qword_1DD6547F0);
    v28 = type metadata accessor for RunTimeDataRecord(0);
    v26 = v34;
    v27 = 1;
    return __swift_storeEnumTagSinglePayload(v26, v27, 1, v28);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v19 = v30[0];
  v20 = v30[1];
  v21 = type metadata accessor for RunTimeDataRecord(0);
  sub_1DD58FDA0(&qword_1EE1623F8, type metadata accessor for RunTimeDataRecord, &unk_1DD65DEEC);
  v22 = v34;
  sub_1DD63C788();
  sub_1DD390754(v33, &qword_1ECCDCF98, &qword_1DD6547F0);
  result = sub_1DD3AD790(v19, v20);
  if (v5)
  {
    return result;
  }

LABEL_14:
  v26 = v22;
  v27 = 0;
  v28 = v21;
  return __swift_storeEnumTagSinglePayload(v26, v27, 1, v28);
}

void sub_1DD58DF90(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = ceil(sub_1DD63FF08() / a3);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_8;
  }

  v3 = v8;
  if (v8 >= 10)
  {
    v9 = 10;
  }

  else
  {
    v9 = v8;
  }

  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD000000000000023, 0x80000001DD673A60);
  v10 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v10);

  MEMORY[0x1E12B2260](0xD000000000000018, 0x80000001DD673A90);
  v11 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v11);

  MEMORY[0x1E12B2260](0xD00000000000001BLL, 0x80000001DD673AB0);
  v52 = v9;
  v12 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v12);

  v5 = 0;
  v4 = 0xE000000000000000;
  if (qword_1EE165FB0 != -1)
  {
    goto LABEL_29;
  }

LABEL_8:
  v13 = sub_1DD63F9F8();
  __swift_project_value_buffer(v13, qword_1EE16F068);

  v14 = sub_1DD63F9D8();
  v15 = sub_1DD640368();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v53[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1DD39565C(v5, v4, v53);
    _os_log_impl(&dword_1DD38D000, v14, v15, "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1E12B3DA0](v17, -1, -1);
    MEMORY[0x1E12B3DA0](v16, -1, -1);
  }

  if (v3 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v18 = 0;
    v19 = 15;
    while (v52 != v18)
    {
      if (v52 - 1 == v18)
      {
        v34 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v34 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (4 * v34 >= v19 >> 14)
        {
          v35 = sub_1DD640058();
          v37 = v36;
          v39 = v38;
          v41 = v40;
          v53[0] = 0;
          v53[1] = 0xE000000000000000;
          sub_1DD6408D8();

          strcpy(v53, "RECORD_JSON[");
          BYTE5(v53[1]) = 0;
          HIWORD(v53[1]) = -5120;
          v42 = sub_1DD640CB8();
          MEMORY[0x1E12B2260](v42);

          MEMORY[0x1E12B2260](2112093, 0xE300000000000000);
          v43 = MEMORY[0x1E12B2190](v35, v37, v39, v41);
          v45 = v44;

          MEMORY[0x1E12B2260](v43, v45);

          v47 = v53[0];
          v46 = v53[1];

          v48 = sub_1DD63F9D8();
          v49 = sub_1DD640368();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v53[0] = v51;
            *v50 = 136315138;
            *(v50 + 4) = sub_1DD39565C(v47, v46, v53);
            _os_log_impl(&dword_1DD38D000, v48, v49, "%s", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v51);
            MEMORY[0x1E12B3DA0](v51, -1, -1);
            MEMORY[0x1E12B3DA0](v50, -1, -1);
          }

          return;
        }

        goto LABEL_31;
      }

      v20 = sub_1DD63FF38();
      if (v20 >> 14 < v19 >> 14)
      {
        __break(1u);
        goto LABEL_26;
      }

      v21 = v20;
      v22 = sub_1DD640058();
      v24 = v23;
      v26 = v25;
      v3 = v27;
      v53[0] = 0;
      v53[1] = 0xE000000000000000;
      sub_1DD6408D8();

      strcpy(v53, "RECORD_JSON[");
      BYTE5(v53[1]) = 0;
      HIWORD(v53[1]) = -5120;
      v28 = sub_1DD640CB8();
      MEMORY[0x1E12B2260](v28);

      MEMORY[0x1E12B2260](2112093, 0xE300000000000000);
      v29 = MEMORY[0x1E12B2190](v22, v24, v26, v3);
      v5 = v30;

      MEMORY[0x1E12B2260](v29, v5);

      v32 = v53[0];
      v31 = v53[1];

      v33 = sub_1DD63F9D8();
      v4 = sub_1DD640368();

      if (os_log_type_enabled(v33, v4))
      {
        v3 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v53[0] = v5;
        *v3 = 136315138;
        *(v3 + 4) = sub_1DD39565C(v32, v31, v53);
        _os_log_impl(&dword_1DD38D000, v33, v4, "%s", v3, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v5);
        MEMORY[0x1E12B3DA0](v5, -1, -1);
        MEMORY[0x1E12B3DA0](v3, -1, -1);
      }

      ++v18;
      v19 = v21;
    }
  }
}

uint64_t sub_1DD58E684()
{
  OUTLINED_FUNCTION_8_59();
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F068);
  OUTLINED_FUNCTION_31_21();

  v3 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_36_15();
  if (OUTLINED_FUNCTION_35_15())
  {
    OUTLINED_FUNCTION_54();
    v4 = OUTLINED_FUNCTION_13_44();
    *(v1 + 4) = OUTLINED_FUNCTION_20_31(4.8149e-34, v4, v5, v6, v7, v8, v9, v10, v11, v4);
    OUTLINED_FUNCTION_14_39(&dword_1DD38D000, v12, v13, "deleting contact runtime data. taskId=%s");
    OUTLINED_FUNCTION_10_50();
    OUTLINED_FUNCTION_13_36();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  OUTLINED_FUNCTION_16_43(inited, MEMORY[0x1E69E6158]);

  OUTLINED_FUNCTION_21_30(47, 0x80000001DD673C80);
  if (!v0)
  {
  }

  swift_setDeallocating();
  return sub_1DD46CB4C();
}

uint64_t sub_1DD58E7D8()
{
  OUTLINED_FUNCTION_8_59();
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F068);
  OUTLINED_FUNCTION_31_21();

  v3 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_36_15();
  if (OUTLINED_FUNCTION_35_15())
  {
    OUTLINED_FUNCTION_54();
    v4 = OUTLINED_FUNCTION_13_44();
    *(v1 + 4) = OUTLINED_FUNCTION_20_31(4.8149e-34, v4, v5, v6, v7, v8, v9, v10, v11, v4);
    OUTLINED_FUNCTION_14_39(&dword_1DD38D000, v12, v13, "marking contact runtime data as processed. taskId=%s");
    OUTLINED_FUNCTION_10_50();
    OUTLINED_FUNCTION_13_36();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  OUTLINED_FUNCTION_16_43(inited, MEMORY[0x1E69E6158]);

  OUTLINED_FUNCTION_21_30(106, 0x80000001DD673C10);
  if (!v0)
  {
  }

  swift_setDeallocating();
  return sub_1DD46CB4C();
}

void sub_1DD58E92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  v31 = v30 - v29;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v32 = sub_1DD63F9F8();
  __swift_project_value_buffer(v32, qword_1EE16F068);
  (*(v27 + 16))(v31, v24, v25);
  v33 = sub_1DD63F9D8();
  v34 = sub_1DD640368();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_54();
    v36 = OUTLINED_FUNCTION_62();
    a10 = v36;
    *v35 = 136315138;
    OUTLINED_FUNCTION_4_79();
    sub_1DD58FDA0(v37, v38, MEMORY[0x1E6969570]);
    v39 = sub_1DD640CB8();
    v41 = v40;
    (*(v27 + 8))(v31, v25);
    v42 = sub_1DD39565C(v39, v41, &a10);

    *(v35 + 4) = v42;
    _os_log_impl(&dword_1DD38D000, v33, v34, "runtime data db deleting records older than %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    (*(v27 + 8))(v31, v25);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  sub_1DD4C1B10();
  v44 = MEMORY[0x1E69E7360];
  *(inited + 56) = MEMORY[0x1E69E7360];
  *(inited + 64) = &off_1F58C4E70;
  *(inited + 32) = v45;
  sub_1DD4061B8(0xD00000000000009BLL, 0x80000001DD6738E0, inited);
  if (v20)
  {
    swift_setDeallocating();
    sub_1DD46CB4C();
  }

  else
  {

    swift_setDeallocating();
    sub_1DD46CB4C();
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_1DD643F90;
    sub_1DD4C1B10();
    *(v46 + 56) = v44;
    *(v46 + 64) = &off_1F58C4E70;
    *(v46 + 32) = v47;
    sub_1DD4061B8(0xD000000000000033, 0x80000001DD673980, v46);

    swift_setDeallocating();
    sub_1DD46CB4C();
    v48 = sub_1DD63F9D8();
    v49 = sub_1DD640368();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1DD38D000, v48, v49, "runtime data db finished deleting records", v50, 2u);
      OUTLINED_FUNCTION_0_1();
    }
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD58ECF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  v30 = v29 - v28;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v31 = sub_1DD63F9F8();
  __swift_project_value_buffer(v31, qword_1EE16F068);
  (*(v26 + 16))(v30, v23, v24);
  v32 = sub_1DD63F9D8();
  v33 = sub_1DD640368();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_54();
    v42 = OUTLINED_FUNCTION_62();
    a10 = v42;
    *v34 = 136315138;
    OUTLINED_FUNCTION_4_79();
    sub_1DD58FDA0(v35, v36, MEMORY[0x1E6969570]);
    v37 = sub_1DD640CB8();
    v39 = v38;
    (*(v26 + 8))(v30, v24);
    sub_1DD39565C(v37, v39, &a10);
    OUTLINED_FUNCTION_31_21();

    *(v34 + 4) = v37;
    _os_log_impl(&dword_1DD38D000, v32, v33, "fetching runtime data db taskIds older than %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    (*(v26 + 8))(v30, v24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  sub_1DD4C1B10();
  *(inited + 56) = MEMORY[0x1E69E7360];
  *(inited + 64) = &off_1F58C4E70;
  *(inited + 32) = v41;
  sub_1DD5804E4(0xD00000000000004ALL, 0x80000001DD6739C0, inited);
  swift_setDeallocating();
  sub_1DD46CB4C();
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD58EFAC(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1DD63FE28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD63FE18();
  v9 = sub_1DD63FDE8();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v11 >> 60 == 15)
  {
    type metadata accessor for InferenceError();
    swift_allocObject();
    v12 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000082, 0x80000001DD673B50, 0xD000000000000014, 0x80000001DD673DB0, 135, MEMORY[0x1E69E7CC0], 2);
    *(v12 + 24) = 0;
    *(v12 + 32) = 0xE000000000000000;

    sub_1DD58FDA0(&qword_1EE1663F0, type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    v13 = swift_allocError();
    *v14 = v12;
    result = swift_willThrow();
  }

  else
  {
    sub_1DD63C7A8();
    swift_allocObject();
    sub_1DD63C798();
    type metadata accessor for RunTimeDataRecord(0);
    sub_1DD58FDA0(&qword_1EE1623F8, type metadata accessor for RunTimeDataRecord, &unk_1DD65DEEC);
    sub_1DD63C788();
    v13 = v3;

    result = sub_1DD3AD77C(v9, v11);
    if (!v3)
    {
      return result;
    }
  }

  *a2 = v13;
  return result;
}

uint64_t sub_1DD58F25C(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1DD63FE28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD63FE18();
  v9 = sub_1DD63FDE8();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v11 >> 60 == 15)
  {
    type metadata accessor for InferenceError();
    swift_allocObject();
    v12 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000082, 0x80000001DD673B50, 0xD000000000000025, 0x80000001DD673BE0, 158, MEMORY[0x1E69E7CC0], 2);
    *(v12 + 24) = 0;
    *(v12 + 32) = 0xE000000000000000;

    sub_1DD58FDA0(&qword_1EE1663F0, type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    v13 = swift_allocError();
    *v14 = v12;
    result = swift_willThrow();
  }

  else
  {
    sub_1DD63C7A8();
    swift_allocObject();
    sub_1DD63C798();
    sub_1DD58FBE8();
    sub_1DD63C788();
    v13 = v3;

    result = sub_1DD3AD77C(v9, v11);
    if (!v3)
    {
      return result;
    }
  }

  *a2 = v13;
  return result;
}

uint64_t sub_1DD58F4D4(unint64_t a1)
{
  v4 = v2;
  v89 = *v1;
  if (a1 >> 62)
  {
    result = sub_1DD6407B8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    v88 = "findRecords(taskId:)";
    v7 = &selRef_setUnderlyingQueue_;
    v86 = xmmword_1DD643F80;
    v91 = result;
    do
    {
      v93 = v6;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E12B2C10](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v10 = sub_1DD63F9F8();
      __swift_project_value_buffer(v10, qword_1EE16F068);
      v11 = v9;
      v12 = sub_1DD63F9D8();
      v13 = sub_1DD640368();

      if (os_log_type_enabled(v12, v13))
      {
        OUTLINED_FUNCTION_54();
        v14 = OUTLINED_FUNCTION_13_44();
        v24 = [v11 toJSON];
        v90 = v11;
        v25 = v24;
        v26 = v4;
        v27 = sub_1DD63FDD8();
        v29 = v28;

        v30 = v27;
        v4 = v26;
        v31 = sub_1DD39565C(v30, v29, &v94);

        *(inited + 4) = v31;
        v11 = v90;
        OUTLINED_FUNCTION_30_18(&dword_1DD38D000, v12, v13, "evaluationResults: %s", v86);
        __swift_destroy_boxed_opaque_existential_1(v14);
        v7 = &selRef_setUnderlyingQueue_;
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_13_36();
      }

      v32 = v11;
      v33 = [v32 v7[414]];
      v34 = sub_1DD63FDD8();
      inited = v35;

      LOBYTE(v33) = [v32 isSuccessfulTask];
      v36 = sub_1DD632BE0(v34, inited, v33);
      v38 = v4;
      if (v4)
      {

        v4 = 0;
        v46 = v32;
        v47 = sub_1DD63F9D8();
        v48 = sub_1DD640378();

        if (os_log_type_enabled(v47, v48))
        {
          OUTLINED_FUNCTION_54();
          v49 = OUTLINED_FUNCTION_13_44();
          v59 = [v46 v7[414]];
          v90 = 0;
          v60 = v59;
          v61 = sub_1DD63FDD8();
          v63 = v62;

          v64 = v61;
          v7 = &selRef_setUnderlyingQueue_;
          v65 = sub_1DD39565C(v64, v63, &v94);

          *(inited + 4) = v65;
          v4 = 0;
          OUTLINED_FUNCTION_30_18(&dword_1DD38D000, v47, v48, "Fail to log SiriTasksEvaluation runtime data. taskId=%s", v86);
          __swift_destroy_boxed_opaque_existential_1(v49);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_13_36();
        }

        else
        {
        }
      }

      else
      {
        v39 = v36;
        v40 = v37;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
        inited = swift_initStackObject();
        *(inited + 16) = v86;
        v41 = [v32 v7[414]];
        v42 = sub_1DD63FDD8();
        v44 = v43;

        v45 = MEMORY[0x1E69E6158];
        *(inited + 56) = MEMORY[0x1E69E6158];
        *(inited + 64) = &off_1F58C4E78;
        *(inited + 72) = v39;
        *(inited + 32) = v42;
        *(inited + 40) = v44;
        *(inited + 96) = v45;
        *(inited + 104) = &off_1F58C4E78;
        *(inited + 80) = v40;
        sub_1DD4061B8(0xD00000000000007CLL, v88 | 0x8000000000000000, inited);
        v4 = 0;

        swift_setDeallocating();
        sub_1DD46CB4C();
        v66 = v32;
        v67 = sub_1DD63F9D8();
        v68 = sub_1DD640368();

        if (os_log_type_enabled(v67, v68))
        {
          OUTLINED_FUNCTION_54();
          v69 = OUTLINED_FUNCTION_13_44();
          v79 = [v66 taskId];
          v90 = 0;
          v80 = v79;
          v81 = sub_1DD63FDD8();
          v83 = v82;

          v84 = v81;
          v7 = &selRef_setUnderlyingQueue_;
          v85 = sub_1DD39565C(v84, v83, &v94);

          *(inited + 4) = v85;
          v4 = 0;
          OUTLINED_FUNCTION_30_18(&dword_1DD38D000, v67, v68, "Logging SiriTasksEvaluation runtime data. taskId=%s", v86);
          __swift_destroy_boxed_opaque_existential_1(v69);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_13_36();
        }

        else
        {

          v7 = &selRef_setUnderlyingQueue_;
        }
      }

      v6 = v93 + 1;
      result = v91;
    }

    while (v91 != v93 + 1);
  }

  return result;
}

uint64_t sub_1DD58FA18(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
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

unint64_t sub_1DD58FA6C(char a1)
{
  if (a1)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1DD58FAC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD58FA18(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1DD58FAF8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD58FA6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD58FB24()
{
  result = qword_1EE161760;
  if (!qword_1EE161760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161760);
  }

  return result;
}

uint64_t sub_1DD58FB78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD58FBE8()
{
  result = qword_1EE163478;
  if (!qword_1EE163478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163478);
  }

  return result;
}

uint64_t type metadata accessor for UnstitchedTask(uint64_t a1)
{
  result = qword_1EE162E28;
  if (!qword_1EE162E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD58FC88(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD58FCE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD58FD40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DD58FDA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for RunTimeDataLoggerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1DD58FEEC(uint64_t a1)
{
  sub_1DD63D078();
  if (v1 <= 0x3F)
  {
    sub_1DD3E7EF0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1DD58FF90(uint64_t a1)
{
  result = sub_1DD58FB24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD58FFBC()
{
  result = qword_1ECCDF120;
  if (!qword_1ECCDF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF120);
  }

  return result;
}

void OUTLINED_FUNCTION_10_50()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1E12B3DA0);
}

uint64_t OUTLINED_FUNCTION_13_44()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_14_39(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

__n128 OUTLINED_FUNCTION_29_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  *(v17 - 72) = a1;
  result = a16;
  *v16 = a16.n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_30_18(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_32_19()
{
}

BOOL OUTLINED_FUNCTION_35_15()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_36_15()
{
}

uint64_t type metadata accessor for RunTimeDataRecord(uint64_t a1)
{
  result = qword_1EE166028;
  if (!qword_1EE166028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD590194(uint64_t a1)
{
  type metadata accessor for PrivatizedContactResolverConfig(319);
  if (v1 <= 0x3F)
  {
    sub_1DD590240(319);
    if (v2 <= 0x3F)
    {
      sub_1DD63D078();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD590240(uint64_t a1)
{
  if (!qword_1EE163920)
  {
    type metadata accessor for ContactResolverRunTimeData(255);
    v1 = sub_1DD640178();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE163920);
    }
  }
}

uint64_t sub_1DD590298(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265766C6F736572 && a2 == 0xEC000000656D614ELL;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6769666E6F63 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x44656D69546E7572 && a2 == 0xEB00000000617461;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1702125924 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DD5903F4(char a1)
{
  result = 0x7265766C6F736572;
  switch(a1)
  {
    case 1:
      result = 0x6769666E6F63;
      break;
    case 2:
      result = 0x44656D69546E7572;
      break;
    case 3:
      result = 1702125924;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD59047C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF138, &qword_1DD65DF28);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD590C5C();
  sub_1DD640EF8();
  v32[1] = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v11 = type metadata accessor for RunTimeDataRecord(0);
    v12 = v11[5];
    v32[0] = 1;
    type metadata accessor for PrivatizedContactResolverConfig(0);
    OUTLINED_FUNCTION_0_127();
    v15 = sub_1DD590E08(v13, v14, &unk_1DD64B7BC);
    OUTLINED_FUNCTION_4_80(v3 + v12, v32, v16, v17, v15);
    v31 = *(v3 + v11[6]);
    v30 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF130, &qword_1DD65DF20);
    v18 = sub_1DD590D6C(&qword_1EE1602C0, &qword_1EE163E00, &unk_1DD64C0F8, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_4_80(&v31, &v30, v19, v20, v18);
    v21 = v11[7];
    v29 = 3;
    sub_1DD63D078();
    OUTLINED_FUNCTION_1_109();
    v24 = sub_1DD590E08(v22, v23, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_4_80(v3 + v21, &v29, v25, v26, v24);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1DD5906E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v33 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v36 = v6 - v5;
  type metadata accessor for PrivatizedContactResolverConfig(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF128, &qword_1DD65DF18);
  OUTLINED_FUNCTION_0();
  v37 = v12;
  v38 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v32 - v13;
  v15 = type metadata accessor for RunTimeDataRecord(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v19 = (v18 - v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD590C5C();
  v39 = v14;
  v20 = v40;
  sub_1DD640ED8();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = a1;
  v45 = 0;
  *v19 = sub_1DD640B28();
  v19[1] = v21;
  v32[2] = v21;
  v44 = 1;
  OUTLINED_FUNCTION_0_127();
  sub_1DD590E08(v22, v23, &unk_1DD64B7E4);
  sub_1DD640B78();
  sub_1DD45A994(v10, v19 + v15[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF130, &qword_1DD65DF20);
  v43 = 2;
  sub_1DD590D6C(&qword_1EE1602B8, &qword_1EE1613A0, &unk_1DD64C120, MEMORY[0x1E69E6330]);
  v32[1] = 0;
  sub_1DD640B78();
  v24 = v40;
  *(v19 + v15[6]) = v41;
  v42 = 3;
  OUTLINED_FUNCTION_1_109();
  sub_1DD590E08(v25, v26, MEMORY[0x1E6969558]);
  v27 = v35;
  v28 = v36;
  sub_1DD640B78();
  v29 = OUTLINED_FUNCTION_2_95();
  v30(v29);
  (*(v33 + 32))(v19 + v15[7], v28, v27);
  sub_1DD590CB0(v19, v34);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1DD590D14(v19, type metadata accessor for RunTimeDataRecord);
}

uint64_t sub_1DD590B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD590298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD590BB4(uint64_t a1)
{
  v2 = sub_1DD590C5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD590BF0(uint64_t a1)
{
  v2 = sub_1DD590C5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD590C5C()
{
  result = qword_1EE165508;
  if (!qword_1EE165508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165508);
  }

  return result;
}

uint64_t sub_1DD590CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunTimeDataRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD590D14(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD590D6C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF130, &qword_1DD65DF20);
    sub_1DD590E08(a2, type metadata accessor for ContactResolverRunTimeData, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD590E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for RunTimeDataRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD590F30()
{
  result = qword_1ECCDF140;
  if (!qword_1ECCDF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF140);
  }

  return result;
}

unint64_t sub_1DD590F88()
{
  result = qword_1EE1654F8;
  if (!qword_1EE1654F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1654F8);
  }

  return result;
}

unint64_t sub_1DD590FE0()
{
  result = qword_1EE165500;
  if (!qword_1EE165500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165500);
  }

  return result;
}

uint64_t sub_1DD591040()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1DD6408F8();
  sub_1DD636E14(v2, v3, v0, ObjectType);
}

uint64_t sub_1DD5910C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v14[1] = a2;
  v17 = sub_1DD63F9C8();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DD643F90;
  v9 = sub_1DD6408F8();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1DD392BD8();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  OUTLINED_FUNCTION_5_1();
  sub_1DD63F998();

  v12 = v16;
  sub_1DD591310(v15);
  if (v12)
  {

    sub_1DD6404C8();
    OUTLINED_FUNCTION_5_1();
    sub_1DD63F9A8();
    result = (*(v3 + 8))(v6, v17);
    __break(1u);
  }

  else
  {
    sub_1DD6404C8();
    OUTLINED_FUNCTION_5_1();
    sub_1DD63F9A8();
    return (*(v3 + 8))(v6, v17);
  }

  return result;
}