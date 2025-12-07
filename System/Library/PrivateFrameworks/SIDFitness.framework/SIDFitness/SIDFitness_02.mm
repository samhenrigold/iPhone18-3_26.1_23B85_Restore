uint64_t sub_2629C5C34@<X0>(Swift::Int *a1@<X0>, SIDFitness::SIDWorkoutDailyDuration_optional *a2@<X8>)
{
  result = _s10SIDFitness23SIDWorkoutDailyDurationO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t sub_2629C5C88()
{
  v1 = *v0;
  sub_262A2A998();
  MEMORY[0x26672F240](*&asc_262A2DD90[8 * v1]);
  return sub_262A2A9D8();
}

uint64_t sub_2629C5D10(uint64_t a1)
{
  v2 = *v1;
  sub_262A2A998();
  MEMORY[0x26672F240](*&asc_262A2DD90[8 * v2]);
  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness23SIDWorkoutDailyDurationO8rawValueACSgSi_tcfC_0(uint64_t a1)
{
  if (a1 > 44)
  {
    if (a1 == 45)
    {
      return 3;
    }

    if (a1 != 60)
    {
      if (a1 == 90)
      {
        return 5;
      }

      return 6;
    }

    return 4;
  }

  else
  {
    if (a1 == 10)
    {
      return 0;
    }

    if (a1 != 20)
    {
      if (a1 == 30)
      {
        return 2;
      }

      return 6;
    }

    return 1;
  }
}

unint64_t sub_2629C5DD0()
{
  result = qword_27FF3C608;
  if (!qword_27FF3C608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C610, &qword_262A2DCE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C608);
  }

  return result;
}

unint64_t sub_2629C5E38()
{
  result = qword_27FF3C618;
  if (!qword_27FF3C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C618);
  }

  return result;
}

SIDFitness::SIDWorkoutPlanCalendarDay __swiftcall SIDWorkoutPlanCalendarDay.init(year:month:day:)(Swift::Int year, Swift::Int month, Swift::Int day)
{
  *v3 = year;
  v3[1] = month;
  v3[2] = day;
  result.day = day;
  result.month = month;
  result.year = year;
  return result;
}

uint64_t SIDWorkoutPlanCalendarDay.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x26672F240](*v0);
  MEMORY[0x26672F240](v1);
  return MEMORY[0x26672F240](v2);
}

uint64_t SIDWorkoutPlanCalendarDay.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  MEMORY[0x26672F240](v2);
  MEMORY[0x26672F240](v3);
  return sub_262A2A9D8();
}

uint64_t sub_2629C5FA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  MEMORY[0x26672F240](v2);
  MEMORY[0x26672F240](v3);
  return sub_262A2A9D8();
}

uint64_t sub_2629C6010()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x26672F240](*v0);
  MEMORY[0x26672F240](v1);
  return MEMORY[0x26672F240](v2);
}

uint64_t sub_2629C6058(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_262A2A998();
  MEMORY[0x26672F240](v2);
  MEMORY[0x26672F240](v3);
  MEMORY[0x26672F240](v4);
  return sub_262A2A9D8();
}

unint64_t sub_2629C60C4()
{
  result = qword_27FF3C620;
  if (!qword_27FF3C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C620);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SIDWorkoutPlanCalendarDay(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SIDWorkoutPlanCalendarDay(uint64_t result, int a2, int a3)
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

uint64_t SIDWorkoutPlanItemReference.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x26672F240](0);

  return sub_262A2A448();
}

uint64_t SIDWorkoutPlanItemReference.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_262A2A998();
  MEMORY[0x26672F240](0);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629C6270()
{
  sub_262A2A998();
  MEMORY[0x26672F240](0);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629C62D0(uint64_t a1)
{
  MEMORY[0x26672F240](0);

  return sub_262A2A448();
}

uint64_t sub_2629C6324(uint64_t a1)
{
  sub_262A2A998();
  MEMORY[0x26672F240](0);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t static SIDWorkoutPlanItemReference.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_262A2A878();
  }
}

unint64_t sub_2629C63A4()
{
  result = qword_27FF3C628;
  if (!qword_27FF3C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C628);
  }

  return result;
}

Swift::String __swiftcall SIDWorkoutPlanOffset.getWeekday()()
{
  if (*v0 % 7 < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = &unk_2875347E0 + 16 * (*v0 % 7);
    v2 = *(v1 + 4);
    v3 = *(v1 + 5);

    v4 = v2;
    v5 = v3;
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

SIDFitness::SIDWorkoutPlanOffset __swiftcall SIDWorkoutPlanOffset.init(days:hours:minutes:seconds:)(Swift::Int days, Swift::Int hours, Swift::Int minutes, Swift::Int seconds)
{
  *v4 = days;
  v4[1] = hours;
  v4[2] = minutes;
  v4[3] = seconds;
  result.seconds = seconds;
  result.minutes = minutes;
  result.hours = hours;
  result.days = days;
  return result;
}

uint64_t sub_2629C64A0()
{
  v1 = 1937334628;
  v2 = 0x736574756E696DLL;
  if (*v0 != 2)
  {
    v2 = 0x73646E6F636573;
  }

  if (*v0)
  {
    v1 = 0x7372756F68;
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

uint64_t sub_2629C6510@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2629C6E40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2629C6544(uint64_t a1)
{
  v2 = sub_2629C6C20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629C6580(uint64_t a1)
{
  v2 = sub_2629C6C20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SIDWorkoutPlanOffset.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x26672F240](*v0);
  MEMORY[0x26672F240](v1);
  MEMORY[0x26672F240](v2);
  return MEMORY[0x26672F240](v3);
}

uint64_t SIDWorkoutPlanOffset.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  MEMORY[0x26672F240](v2);
  MEMORY[0x26672F240](v3);
  MEMORY[0x26672F240](v4);
  return sub_262A2A9D8();
}

uint64_t sub_2629C6694()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  MEMORY[0x26672F240](v2);
  MEMORY[0x26672F240](v3);
  MEMORY[0x26672F240](v4);
  return sub_262A2A9D8();
}

uint64_t sub_2629C6714()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x26672F240](*v0);
  MEMORY[0x26672F240](v1);
  MEMORY[0x26672F240](v2);
  return MEMORY[0x26672F240](v3);
}

uint64_t sub_2629C676C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_262A2A998();
  MEMORY[0x26672F240](v2);
  MEMORY[0x26672F240](v3);
  MEMORY[0x26672F240](v4);
  MEMORY[0x26672F240](v5);
  return sub_262A2A9D8();
}

uint64_t SIDWorkoutPlanOffset.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C630, &qword_262A2DF20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629C6C20();
  sub_262A2AA28();
  v15 = 0;
  sub_262A2A838();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = 1;
  sub_262A2A838();
  v13 = 2;
  sub_262A2A838();
  v12 = 3;
  sub_262A2A838();
  return (*(v5 + 8))(v7, v4);
}

uint64_t SIDWorkoutPlanOffset.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C640, &qword_262A2DF28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629C6C20();
  sub_262A2AA08();
  if (!v2)
  {
    v18 = 0;
    v9 = sub_262A2A7D8();
    v17 = 1;
    v10 = sub_262A2A7D8();
    v16 = 2;
    v14 = sub_262A2A7D8();
    v15 = 3;
    v13 = sub_262A2A7D8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    v12 = v13;
    a2[2] = v14;
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_2629C6C20()
{
  result = qword_27FF3C638;
  if (!qword_27FF3C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C638);
  }

  return result;
}

unint64_t sub_2629C6C78()
{
  result = qword_27FF3C648;
  if (!qword_27FF3C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C648);
  }

  return result;
}

uint64_t sub_2629C6CCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2629C6CEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_2629C6D3C()
{
  result = qword_27FF3C650;
  if (!qword_27FF3C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C650);
  }

  return result;
}

unint64_t sub_2629C6D94()
{
  result = qword_27FF3C658;
  if (!qword_27FF3C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C658);
  }

  return result;
}

unint64_t sub_2629C6DEC()
{
  result = qword_27FF3C660;
  if (!qword_27FF3C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C660);
  }

  return result;
}

uint64_t sub_2629C6E40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1937334628 && a2 == 0xE400000000000000;
  if (v3 || (sub_262A2A878() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372756F68 && a2 == 0xE500000000000000 || (sub_262A2A878() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736574756E696DLL && a2 == 0xE700000000000000 || (sub_262A2A878() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73646E6F636573 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_262A2A878();

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

uint64_t SIDWorkoutPlanProgressData.planIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SIDWorkoutPlanProgressData(0) + 20);
  v4 = sub_262A2A018();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SIDWorkoutPlanProgressData(uint64_t a1)
{
  result = qword_27FF3C670;
  if (!qword_27FF3C670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 SIDWorkoutPlanProgressData.startDate.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SIDWorkoutPlanProgressData(0) + 28));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  return result;
}

double SIDWorkoutPlanProgressData.workouts.getter()
{
  type metadata accessor for SIDWorkoutPlanProgressData(0);

  return result;
}

__n128 SIDWorkoutPlanProgressData.init(planIdentifier:startDate:completedWeeks:totalWeeks:workouts:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v16 = *a2;
  v10 = a2[1].n128_u64[0];
  *a6 = a3;
  v11 = type metadata accessor for SIDWorkoutPlanProgressData(0);
  v12 = v11[5];
  v13 = sub_262A2A018();
  (*(*(v13 - 8) + 32))(&a6[v12], a1, v13);
  v14 = &a6[v11[7]];
  result = v16;
  *v14 = v16;
  *(v14 + 2) = v10;
  *&a6[v11[6]] = a4;
  *&a6[v11[8]] = a5;
  return result;
}

uint64_t SIDWorkoutPlanProgressData.hash(into:)(uint64_t a1)
{
  MEMORY[0x26672F240](*v1);
  v3 = type metadata accessor for SIDWorkoutPlanProgressData(0);
  sub_262A2A018();
  sub_2629C76E0(&qword_27FF3C3D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_262A2A388();
  MEMORY[0x26672F240](*(v1 + v3[6]));
  v4 = (v1 + v3[7]);
  v5 = v4[1];
  v6 = v4[2];
  MEMORY[0x26672F240](*v4);
  MEMORY[0x26672F240](v5);
  MEMORY[0x26672F240](v6);
  v7 = *(v1 + v3[8]);

  return sub_2629BF8B8(a1, v7);
}

uint64_t SIDWorkoutPlanProgressData.hashValue.getter()
{
  sub_262A2A998();
  MEMORY[0x26672F240](*v0);
  v1 = type metadata accessor for SIDWorkoutPlanProgressData(0);
  sub_262A2A018();
  sub_2629C76E0(&qword_27FF3C3D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_262A2A388();
  MEMORY[0x26672F240](*(v0 + v1[6]));
  v2 = (v0 + v1[7]);
  v3 = v2[1];
  v4 = v2[2];
  MEMORY[0x26672F240](*v2);
  MEMORY[0x26672F240](v3);
  MEMORY[0x26672F240](v4);
  sub_2629BF8B8(v6, *(v0 + v1[8]));
  return sub_262A2A9D8();
}

uint64_t sub_2629C73DC(uint64_t a1, int *a2)
{
  MEMORY[0x26672F240](*v2);
  sub_262A2A018();
  sub_2629C76E0(&qword_27FF3C3D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_262A2A388();
  MEMORY[0x26672F240](*(v2 + a2[6]));
  v5 = (v2 + a2[7]);
  v6 = v5[1];
  v7 = v5[2];
  MEMORY[0x26672F240](*v5);
  MEMORY[0x26672F240](v6);
  MEMORY[0x26672F240](v7);
  v8 = *(v2 + a2[8]);

  return sub_2629BF8B8(a1, v8);
}

uint64_t sub_2629C74C8(uint64_t a1, int *a2)
{
  sub_262A2A998();
  MEMORY[0x26672F240](*v2);
  sub_262A2A018();
  sub_2629C76E0(&qword_27FF3C3D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_262A2A388();
  MEMORY[0x26672F240](*(v2 + a2[6]));
  v4 = (v2 + a2[7]);
  v5 = v4[1];
  v6 = v4[2];
  MEMORY[0x26672F240](*v4);
  MEMORY[0x26672F240](v5);
  MEMORY[0x26672F240](v6);
  sub_2629BF8B8(v8, *(v2 + a2[8]));
  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness26SIDWorkoutPlanProgressDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for SIDWorkoutPlanProgressData(0);
  if ((sub_262A29FF8() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = (a2 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v6 == v10 && v7 == v11;
  if (!v13 || v8 != v12)
  {
    return 0;
  }

  v16 = v4[8];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);

  return sub_2629E797C(v17, v18);
}

uint64_t sub_2629C76E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2629C773C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262A2A018();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2629C7810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_262A2A018();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_2629C78CC(uint64_t a1)
{
  sub_262A2A018();
  if (v1 <= 0x3F)
  {
    sub_2629C7970(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2629C7970(uint64_t a1)
{
  if (!qword_27FF3C680)
  {
    type metadata accessor for SIDWorkoutPlanProgressWorkout(255);
    v1 = sub_262A2A558();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF3C680);
    }
  }
}

uint64_t SIDWorkoutPlanProgressWorkout.workoutIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SIDWorkoutPlanProgressWorkout.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SIDWorkoutPlanProgressWorkout(0) + 20);
  v4 = sub_262A29FD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SIDWorkoutPlanProgressWorkout(uint64_t a1)
{
  result = qword_27FF3C690;
  if (!qword_27FF3C690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SIDWorkoutPlanProgressWorkout.init(workoutIdentifier:date:duration:modality:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char *a6@<X8>, double a7@<D0>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v12 = type metadata accessor for SIDWorkoutPlanProgressWorkout(0);
  v13 = v12[5];
  v14 = sub_262A29FD8();
  result = (*(*(v14 - 8) + 32))(&a6[v13], a3, v14);
  *&a6[v12[6]] = a7;
  a6[v12[7]] = a4;
  a6[v12[8]] = a5 & 1;
  return result;
}

uint64_t SIDWorkoutPlanProgressWorkout.hash(into:)(uint64_t a1)
{
  sub_262A2A448();
  v2 = type metadata accessor for SIDWorkoutPlanProgressWorkout(0);
  sub_262A29FD8();
  sub_2629C7F08(&qword_27FF3C4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_262A2A388();
  v3 = *(v1 + v2[6]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26672F260](*&v3);
  SIDWorkoutModality.rawValue.getter(*(v1 + v2[7]));
  sub_262A2A448();

  return MEMORY[0x26672F240](*(v1 + v2[8]));
}

uint64_t SIDWorkoutPlanProgressWorkout.hashValue.getter()
{
  sub_262A2A998();
  SIDWorkoutPlanProgressWorkout.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629C7D20()
{
  sub_262A2A998();
  SIDWorkoutPlanProgressWorkout.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629C7D64(uint64_t a1)
{
  sub_262A2A998();
  SIDWorkoutPlanProgressWorkout.hash(into:)(v2);
  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness29SIDWorkoutPlanProgressWorkoutV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_262A2A878() & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = type metadata accessor for SIDWorkoutPlanProgressWorkout(0);
  if ((sub_262A29FB8() & 1) == 0 || *(a1 + v5[6]) != *(a2 + v5[6]))
  {
    goto LABEL_13;
  }

  v6 = v5[7];
  v7 = *(a2 + v6);
  v8 = SIDWorkoutModality.rawValue.getter(*(a1 + v6));
  v10 = v9;
  if (v8 == SIDWorkoutModality.rawValue.getter(v7) && v10 == v11)
  {

    goto LABEL_16;
  }

  v13 = sub_262A2A878();

  if (v13)
  {
LABEL_16:
    v14 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
    return v14 & 1;
  }

LABEL_13:
  v14 = 0;
  return v14 & 1;
}

uint64_t sub_2629C7F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2629C7F64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_262A29FD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2629C8024(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_262A29FD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2629C80C8(uint64_t a1)
{
  result = sub_262A29FD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

SIDFitness::SIDWorkoutPlanProgressWorkoutState_optional __swiftcall SIDWorkoutPlanProgressWorkoutState.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = SIDFitness_SIDWorkoutPlanProgressWorkoutState_completed;
  }

  else
  {
    v1.value = SIDFitness_SIDWorkoutPlanProgressWorkoutState_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_2629C8180@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_2629C81B0()
{
  result = qword_27FF3C6A0;
  if (!qword_27FF3C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C6A0);
  }

  return result;
}

uint64_t SIDWorkoutPlanScaffold.init(durationRange:modalities:recommendedDuration:totalWeekCount:weekdays:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t SIDWorkoutPlanScaffold.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  MEMORY[0x26672F240](*v1);
  MEMORY[0x26672F240](v3);
  sub_2629BFB8C(a1, v4);
  MEMORY[0x26672F240](v5);
  MEMORY[0x26672F240](v6);

  return sub_2629B602C(a1, v7);
}

uint64_t SIDWorkoutPlanScaffold.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  MEMORY[0x26672F240](v2);
  sub_2629BFB8C(v8, v3);
  MEMORY[0x26672F240](v4);
  MEMORY[0x26672F240](v5);
  sub_2629B602C(v8, v6);
  return sub_262A2A9D8();
}

uint64_t sub_2629C837C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  MEMORY[0x26672F240](v2);
  sub_2629BFB8C(v8, v3);
  MEMORY[0x26672F240](v4);
  MEMORY[0x26672F240](v5);
  sub_2629B602C(v8, v6);
  return sub_262A2A9D8();
}

uint64_t sub_2629C8420(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  MEMORY[0x26672F240](*v1);
  MEMORY[0x26672F240](v3);
  sub_2629BFB8C(a1, v4);
  MEMORY[0x26672F240](v5);
  MEMORY[0x26672F240](v6);

  return sub_2629B602C(a1, v7);
}

uint64_t sub_2629C84A8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  sub_262A2A998();
  MEMORY[0x26672F240](v2);
  MEMORY[0x26672F240](v3);
  sub_2629BFB8C(v9, v4);
  MEMORY[0x26672F240](v5);
  MEMORY[0x26672F240](v6);
  sub_2629B602C(v9, v7);
  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness22SIDWorkoutPlanScaffoldV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = a2[4];
  v4 = a2[5];
  v6 = a2[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[3];
  if ((sub_2629E7DF4(a1[2], a2[2]) & 1) == 0 || v9 != v6 || v8 != v5)
  {
    return 0;
  }

  return sub_2629D6494(v7, v4);
}

unint64_t sub_2629C85E8()
{
  result = qword_27FF3C6A8;
  if (!qword_27FF3C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C6A8);
  }

  return result;
}

uint64_t sub_2629C863C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2629C8684(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_2629C86E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_2629CD7E0(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = sub_262A2A648();
  v6 = 0;
  v25 = *(a1 + 36);
  v23 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v24 = v6;
    v9 = *(*(a1 + 48) + 32 * v5);
    v10 = *(*(a1 + 56) + 8 * v5);
    if (v9 > 6)
    {
      goto LABEL_28;
    }

    v11 = *(v26 + 16);
    v12 = *(v26 + 24);

    if (v11 >= v12 >> 1)
    {
      sub_2629CD7E0((v12 > 1), v11 + 1, 1);
    }

    *(v26 + 16) = v11 + 1;
    v13 = v26 + 16 * v11;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_25;
    }

    v4 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_26;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_2629D40E8(v5, v25, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_2629D40E8(v5, v25, 0);
    }

LABEL_4:
    v6 = v24 + 1;
    v5 = v7;
    if (v24 + 1 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  sub_262A2A6F8();

  v22 = sub_262A2A868();
  MEMORY[0x26672ECF0](v22);

  result = sub_262A2A748();
  __break(1u);
  return result;
}

uint64_t sub_2629C89E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  sub_2629CD9A0(0, v1, 0);
  v2 = v27;
  v4 = a1 + 56;
  result = sub_262A2A648();
  v6 = result;
  v7 = 0;
  v24 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v25 = v7;
    v26 = *(a1 + 36);
    v10 = *(a1 + 48) + 24 * v6;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    sub_2629D40D0(*v10, v12, v13);
    v14 = SIDWorkoutPlanScheduleFilterProperty.dictionary()(v11, v12, v13);
    result = sub_2629B6A68(v11, v12, v13);
    v16 = *(v27 + 16);
    v15 = *(v27 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_2629CD9A0((v15 > 1), v16 + 1, 1);
    }

    *(v27 + 16) = v16 + 1;
    *(v27 + 8 * v16 + 32) = v14;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 64 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_2629D40E8(v6, v26, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_2629D40E8(v6, v26, 0);
    }

LABEL_4:
    v7 = v25 + 1;
    v6 = v8;
    if (v25 + 1 == v24)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2629C8C34(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 << 16 == a1 << 16)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_262A2A878();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2629C8CA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE100000000000000;
  if (a1 > 4u)
  {
    v9 = 57;
    v10 = 12337;
    if (a1 != 8)
    {
      v10 = 12593;
    }

    if (a1 != 7)
    {
      v9 = v10;
      v3 = 0xE200000000000000;
    }

    v11 = 55;
    if (a1 != 5)
    {
      v11 = 56;
    }

    if (a1 <= 6u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 6)
    {
      v8 = 0xE100000000000000;
    }

    else
    {
      v8 = v3;
    }
  }

  else
  {
    v4 = 50;
    v5 = 52;
    v6 = 53;
    if (a1 != 3)
    {
      v6 = 54;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 51;
    }

    if (a1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    v8 = 0xE100000000000000;
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      v12 = 0xE100000000000000;
      if (a2 == 5)
      {
        if (v7 != 55)
        {
          goto LABEL_54;
        }
      }

      else if (v7 != 56)
      {
LABEL_54:
        v13 = sub_262A2A878();
        goto LABEL_55;
      }
    }

    else if (a2 == 7)
    {
      v12 = 0xE100000000000000;
      if (v7 != 57)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      if (a2 == 8)
      {
        if (v7 != 12337)
        {
          goto LABEL_54;
        }
      }

      else if (v7 != 12593)
      {
        goto LABEL_54;
      }
    }
  }

  else
  {
    v12 = 0xE100000000000000;
    if (a2 <= 1u)
    {
      if (a2)
      {
        if (v7 != 51)
        {
          goto LABEL_54;
        }
      }

      else if (v7 != 50)
      {
        goto LABEL_54;
      }
    }

    else if (a2 == 2)
    {
      if (v7 != 52)
      {
        goto LABEL_54;
      }
    }

    else if (a2 == 3)
    {
      if (v7 != 53)
      {
        goto LABEL_54;
      }
    }

    else if (v7 != 54)
    {
      goto LABEL_54;
    }
  }

  if (v8 != v12)
  {
    goto LABEL_54;
  }

  v13 = 1;
LABEL_55:

  return v13 & 1;
}

uint64_t sub_2629C8EB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000003037;
  v3 = 0x3932343038373431;
  v4 = a1;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v8 = 0x3032383934393431;
        v9 = 0xEA00000000003735;
      }

      else
      {
        v8 = 0x3930393836383531;
        v9 = 0xEA00000000003638;
      }
    }

    else
    {
      if (a1 == 4)
      {
        v9 = 0xEA00000000003836;
      }

      else
      {
        v9 = 0xEA00000000003736;
      }

      v8 = 0x3932343038373431;
    }
  }

  else
  {
    v5 = 0xEA00000000003739;
    v6 = 0xEA00000000003636;
    if (a1 != 2)
    {
      v6 = 0xEA00000000003037;
    }

    if (a1)
    {
      v7 = 0x3932343038373431;
    }

    else
    {
      v7 = 0x3931333738353531;
    }

    if (a1)
    {
      v5 = 0xEA00000000003936;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x3932343038373431;
    }

    if (v4 <= 1)
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEA00000000003735;
        if (v8 != 0x3032383934393431)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xEA00000000003638;
        if (v8 != 0x3930393836383531)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_41;
    }

    if (a2 == 4)
    {
      v2 = 0xEA00000000003836;
      if (v8 != 0x3932343038373431)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    v2 = 0xEA00000000003736;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0xEA00000000003936;
      }

      else
      {
        v3 = 0x3931333738353531;
        v2 = 0xEA00000000003739;
      }

      if (v8 != v3)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    if (a2 == 2)
    {
      v2 = 0xEA00000000003636;
      if (v8 != 0x3932343038373431)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }
  }

  if (v8 != 0x3932343038373431)
  {
LABEL_45:
    v10 = sub_262A2A878();
    goto LABEL_46;
  }

LABEL_41:
  if (v9 != v2)
  {
    goto LABEL_45;
  }

  v10 = 1;
LABEL_46:

  return v10 & 1;
}

uint64_t sub_2629C9088(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x7552646564697567;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x697461746964656DLL;
    }

    else
    {
      v5 = 0x6F65646976;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000006E6FLL;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6157646564697567;
    }

    else
    {
      v5 = 0x7552646564697567;
    }

    if (v4)
    {
      v6 = 0xEA00000000006B6CLL;
    }

    else
    {
      v6 = 0xE90000000000006ELL;
    }
  }

  v7 = 0x697461746964656DLL;
  v8 = 0xEA00000000006E6FLL;
  if (a2 != 2)
  {
    v7 = 0x6F65646976;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x6157646564697567;
    v2 = 0xEA00000000006B6CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_262A2A878();
  }

  return v11 & 1;
}

uint64_t sub_2629C91DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E656D7069757165;
  v5 = 0xE500000000000000;
  v6 = 0x656D656874;
  if (a1 != 4)
  {
    v6 = 0x76654C6C6C696B73;
    v5 = 0xEA00000000006C65;
  }

  if (a1 == 3)
  {
    v7 = 0xE900000000000074;
  }

  else
  {
    v4 = v6;
    v7 = v5;
  }

  v8 = 0xE500000000000000;
  v9 = 0x636973756DLL;
  if (a1 != 1)
  {
    v9 = 0x75636F4679646F62;
    v8 = 0xE900000000000073;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x72656E69617274;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x6E656D7069757165)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x656D656874)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v12 = 0xEA00000000006C65;
      if (v10 != 0x76654C6C6C696B73)
      {
LABEL_35:
        v13 = sub_262A2A878();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x636973756DLL)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x75636F4679646F62)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x72656E69617274)
    {
      goto LABEL_35;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_35;
  }

  v13 = 1;
LABEL_36:

  return v13 & 1;
}

uint64_t sub_2629C93D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_2629C1D98(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_2629CB0BC(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_2629C1DF4(&v24);
      return 0;
    }

    sub_2629C1D98(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x26672EF20](v23, &v24);
    sub_2629C1DF4(v23);
    result = sub_2629C1DF4(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_2629C956C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v38 = a1 + 64;
      v5 = 1 << *(a1 + 32);
      v6 = -1;
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      v7 = v6 & *(a1 + 64);
      v8 = (v5 + 63) >> 6;
      v39 = v8;
      if (v7)
      {
        while (1)
        {
          v9 = __clz(__rbit64(v7));
          v40 = (v7 - 1) & v7;
LABEL_12:
          v12 = v9 | (v4 << 6);
          v13 = (*(v3 + 48) + 32 * v12);
          v14 = *v13;
          v15 = v13[1];
          v16 = v13[2];
          v17 = v13[3];
          v18 = *(*(v3 + 56) + 8 * v12);

          if (!v18)
          {
            break;
          }

          v19 = sub_2629CB134(v14, v15, v16, v17);
          if ((v20 & 1) == 0 || (v21 = *(*(v2 + 56) + 8 * v19), v22 = *(v21 + 16), v22 != *(v18 + 16)))
          {
LABEL_37:

            return;
          }

          if (v22)
          {
            v23 = v21 == v18;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            v36 = v3;
            v37 = v2;

            v25 = 0;
            v26 = 0;
            v41 = v24;
            v42 = v18;
            while (v26 < *(v24 + 16))
            {
              if (v26 >= *(v18 + 16))
              {
                goto LABEL_41;
              }

              v28 = (v24 + v25);
              v29 = (v18 + v25);
              if (*(v24 + v25 + 32) != *(v18 + v25 + 32))
              {

                goto LABEL_37;
              }

              v30 = v28[5];
              v31 = v28[6];
              v32 = v28[7];
              v33 = v29[5];
              v34 = v29[6];
              v35 = v29[7];

              if ((sub_2629D5E3C(v30, v33) & 1) == 0)
              {

                goto LABEL_37;
              }

              if (v31 == v34 && v32 == v35)
              {
              }

              else
              {
                v27 = sub_262A2A878();

                if ((v27 & 1) == 0)
                {

                  goto LABEL_37;
                }
              }

              ++v26;
              v25 += 32;
              v24 = v41;
              v18 = v42;
              if (v22 == v26)
              {

                v3 = v36;
                v2 = v37;
                goto LABEL_20;
              }
            }

            goto LABEL_40;
          }

LABEL_20:

          v8 = v39;
          v7 = v40;
          if (!v40)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v10 = v4;
        while (1)
        {
          v4 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v4 >= v8)
          {
            return;
          }

          v11 = *(v38 + 8 * v4);
          ++v10;
          if (v11)
          {
            v9 = __clz(__rbit64(v11));
            v40 = (v11 - 1) & v11;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
      }
    }
  }
}

uint64_t sub_2629C9854(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = *(*(v3 + 48) + v12);

    result = sub_2629CB364(v14, SIDWorkoutModality.rawValue.getter, sub_2629CB8C4);
    if ((v15 & 1) == 0 || (v16 = *(*(a2 + 56) + 8 * result), v17 = *(v16 + 16), v17 != *(v13 + 16)))
    {
LABEL_26:

      return 0;
    }

    if (v17)
    {
      v18 = v16 == v13;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = 32;
      while (v17)
      {
        if (*(v16 + v19) != *(v13 + v19))
        {
          goto LABEL_26;
        }

        v19 += 8;
        if (!--v17)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_29;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2629C99E4(uint64_t result, uint64_t a2, __n128 a3)
{
  if (result == a2)
  {
    return 1;
  }

  v4 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v5 << 6);
    v14 = *(*(v4 + 56) + 8 * v13);
    result = sub_2629CB364(*(*(v4 + 48) + v13), SIDWorkoutModality.rawValue.getter, sub_2629CB8C4);
    if ((v15 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v14)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(v4 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629C9B14(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v26 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 32 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    v18 = *(*(result + 56) + 8 * v12);

    if (!v18)
    {
      return 1;
    }

    result = sub_2629CB134(v14, v15, v16, v17);
    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * result), v21 = *(v20 + 16), v21 != *(v18 + 16)))
    {
LABEL_29:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v18;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v20 + 40);
      v24 = (v18 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_262A2A878();
          if ((result & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    result = v26;
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

void sub_2629C9CC0(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v3 = 0;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v30 = a1;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v31 = (v7 - 1) & v7;
LABEL_15:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a1 + 56) + 8 * v12);
    v14 = *(*(a1 + 48) + v12);

    v15 = sub_2629CB364(v14, SIDWorkoutModality.rawValue.getter, sub_2629CB8C4);
    if ((v16 & 1) == 0 || (v17 = *(*(v2 + 56) + 8 * v15), v18 = *(v17 + 16), v18 != *(v13 + 16)))
    {
LABEL_62:

      return;
    }

    if (v18)
    {
      v19 = v17 == v13;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v29 = v2;

      v20 = 32;
      while (1)
      {
        if ((v20 - 32) >= *(v17 + 16))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          return;
        }

        if ((v20 - 32) >= *(v13 + 16))
        {
          goto LABEL_65;
        }

        v22 = *(v17 + v20);
        if (v22 > 2)
        {
          v25 = 0x76654C6C6C696B73;
          if (v22 == 4)
          {
            v25 = 0x656D656874;
          }

          v26 = 0xE500000000000000;
          if (v22 != 4)
          {
            v26 = 0xEA00000000006C65;
          }

          if (v22 == 3)
          {
            v24 = 0x6E656D7069757165;
          }

          else
          {
            v24 = v25;
          }

          if (v22 == 3)
          {
            v23 = 0xE900000000000074;
          }

          else
          {
            v23 = v26;
          }
        }

        else if (*(v17 + v20))
        {
          if (v22 == 1)
          {
            v23 = 0xE500000000000000;
            v24 = 0x636973756DLL;
          }

          else
          {
            v24 = 0x75636F4679646F62;
            v23 = 0xE900000000000073;
          }
        }

        else
        {
          v23 = 0xE700000000000000;
          v24 = 0x72656E69617274;
        }

        v27 = *(v13 + v20);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            v28 = 0xE900000000000074;
            if (v24 != 0x6E656D7069757165)
            {
              goto LABEL_22;
            }
          }

          else if (v27 == 4)
          {
            v28 = 0xE500000000000000;
            if (v24 != 0x656D656874)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v28 = 0xEA00000000006C65;
            if (v24 != 0x76654C6C6C696B73)
            {
              goto LABEL_22;
            }
          }
        }

        else if (*(v13 + v20))
        {
          if (v27 == 1)
          {
            v28 = 0xE500000000000000;
            if (v24 != 0x636973756DLL)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v28 = 0xE900000000000073;
            if (v24 != 0x75636F4679646F62)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          v28 = 0xE700000000000000;
          if (v24 != 0x72656E69617274)
          {
            goto LABEL_22;
          }
        }

        if (v23 == v28)
        {

          goto LABEL_23;
        }

LABEL_22:
        v21 = sub_262A2A878();

        if ((v21 & 1) == 0)
        {

          goto LABEL_62;
        }

LABEL_23:
        ++v20;
        if (!--v18)
        {

          v2 = v29;
          break;
        }
      }
    }

    a1 = v30;
    v7 = v31;
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_66;
    }

    if (v3 >= v8)
    {
      break;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v31 = (v11 - 1) & v11;
      goto LABEL_15;
    }
  }
}

uint64_t sub_2629CA084(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v29 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v30 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(result + 56) + 24 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);

    sub_2629C1CA8(v17, v18, v19);
    v20 = sub_2629CB0BC(v14, v15);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
LABEL_35:
      sub_2629C1CC0(v17, v18, v19);
      return 0;
    }

    v23 = *(a2 + 56) + 24 * v20;
    v24 = *v23;
    if (*(v23 + 16) > 1u)
    {
      if (*(v23 + 16) == 2)
      {
        if (v19 != 2)
        {
          goto LABEL_35;
        }

        v25 = *&v24 == v17;
LABEL_21:
        result = v29;
        v7 = v30;
        if (!v25)
        {
          return 0;
        }
      }

      else
      {
        if (v19 != 3)
        {
          goto LABEL_35;
        }

        if (*&v24 == v17 && *(v23 + 8) == v18)
        {
          sub_2629C1CC0(v17, v18, 3);
          result = v29;
          v7 = v30;
        }

        else
        {
          v28 = sub_262A2A878();
          sub_2629C1CC0(v17, v18, 3);
          result = v29;
          v7 = v30;
          if ((v28 & 1) == 0)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      if (!*(v23 + 16))
      {
        if (v19)
        {
          goto LABEL_35;
        }

        v25 = v24 == *&v17;
        goto LABEL_21;
      }

      if (v19 != 1)
      {
        goto LABEL_35;
      }

      v26 = LOBYTE(v24) ^ v17;
      result = v29;
      v7 = v30;
      if (v26)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v30 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629CA2B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);

    sub_2629CB0BC(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v19 = sub_2629CA084(v18, v15);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *SIDWorkoutPlanSchedule.metricScaffold.getter()
{
  v1 = sub_2629C86E0(*v0);
  if (*(v1 + 16))
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6B0, &unk_262A2E470);
    v3 = sub_262A2A778();
    v1 = v2;
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v57 = v3;
  sub_2629CD9E0(v1, 1, &v57);
  v4 = v57;
  v5 = v57 + 64;
  v6 = 1 << *(v57 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v57 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v50 = v5;
  v51 = v4;
  v49 = v9;
  while (v8)
  {
LABEL_14:
    v54 = v10;
    v13 = __clz(__rbit64(v8)) | (v10 << 6);
    v14 = *(*(v4 + 48) + v13);
    v15 = *(*(v4 + 56) + 8 * v13);
    v16 = *(v15 + 16);
    if (v16)
    {
      v52 = v11;
      v53 = v8;
      v59[0] = MEMORY[0x277D84F90];

      sub_2629CD860(0, v16, 0);
      v17 = v59[0];
      v18 = (v15 + 56);
      do
      {
        v55 = v17;
        v20 = *(v18 - 3);
        v19 = *(v18 - 2);
        v22 = *(v18 - 1);
        v21 = *v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6B8, &unk_262A2E7A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_262A2E460;
        *(inited + 32) = 0x6E6F697461727564;
        *(inited + 40) = 0xE800000000000000;
        v57 = v20;
        sub_262A2A6A8();
        *(inited + 88) = 0xD000000000000010;
        *(inited + 96) = 0x8000000262A32440;
        v24 = sub_2629C89E4(v19);
        v26 = sub_2629CAF7C(v24, v25);

        v27 = MEMORY[0x277D84F90];
        if (v26)
        {
          v27 = v26;
        }

        v57 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6C0, &unk_262A2E480);
        sub_2629D3A2C();
        sub_262A2A6A8();
        *(inited + 144) = 0xD000000000000012;
        *(inited + 152) = 0x8000000262A323C0;
        v57 = v22;
        v58 = v21;

        sub_262A2A6A8();
        v28 = sub_2629AC344(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C080, &qword_262A2E490);
        swift_arrayDestroy();
        v17 = v55;
        v59[0] = v55;
        v30 = *(v55 + 16);
        v29 = *(v55 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_2629CD860((v29 > 1), v30 + 1, 1);
          v17 = v59[0];
        }

        *(v17 + 16) = v30 + 1;
        *(v17 + 8 * v30 + 32) = v28;
        v18 += 4;
        --v16;
      }

      while (v16);
      v56 = v17;
      v5 = v50;
      v4 = v51;
      v9 = v49;
      v11 = v52;
      v8 = v53;
    }

    else
    {

      v56 = MEMORY[0x277D84F90];
    }

    v57 = 0;
    v58 = 0xE000000000000000;
    LOBYTE(v59[0]) = v14;
    sub_262A2A738();
    v32 = v57;
    v31 = v58;
    v33 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v33;
    v35 = sub_2629CB0BC(v32, v31);
    v37 = v33[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      goto LABEL_35;
    }

    v41 = v36;
    if (v33[3] < v40)
    {
      sub_2629D0E54(v40, isUniquelyReferenced_nonNull_native, &qword_27FF3C780, &qword_262A2E748);
      v35 = sub_2629CB0BC(v32, v31);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_37;
      }

LABEL_28:
      v11 = v57;
      if (v41)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    v46 = v8;
    v47 = v35;
    sub_2629CE9A4(&qword_27FF3C780, &qword_262A2E748);
    v35 = v47;
    v8 = v46;
    v11 = v57;
    if (v41)
    {
LABEL_7:
      *(v11[7] + 8 * v35) = v56;
      goto LABEL_8;
    }

LABEL_29:
    v11[(v35 >> 6) + 8] |= 1 << v35;
    v43 = (v11[6] + 16 * v35);
    *v43 = v32;
    v43[1] = v31;
    *(v11[7] + 8 * v35) = v56;
    v44 = v11[2];
    v39 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v39)
    {
      goto LABEL_36;
    }

    v11[2] = v45;

LABEL_8:
    v8 &= v8 - 1;

    v10 = v54;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v11;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_262A2A938();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_2629CA984()
{
  sub_262A2A998();
  MEMORY[0x26672F240](0);
  return sub_262A2A9D8();
}

uint64_t sub_2629CA9F0(uint64_t a1)
{
  sub_262A2A998();
  MEMORY[0x26672F240](0);
  return sub_262A2A9D8();
}

uint64_t sub_2629CAA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4F7942736D657469 && a2 == 0xED00007465736666)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262A2A878();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2629CAAF0(uint64_t a1)
{
  v2 = sub_2629D3B2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629CAB2C(uint64_t a1)
{
  v2 = sub_2629D3B2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SIDWorkoutPlanSchedule.hashValue.getter()
{
  v1 = *v0;
  sub_262A2A998();
  sub_2629BFEE0(v3, v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629CABB8()
{
  v1 = *v0;
  sub_262A2A998();
  sub_2629BFEE0(v3, v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629CAC08(uint64_t a1)
{
  v2 = *v1;
  sub_262A2A998();
  sub_2629BFEE0(v4, v2);
  return sub_262A2A9D8();
}

uint64_t SIDWorkoutPlanSchedule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6E0, &qword_262A2E498);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629D3B2C();

  sub_262A2AA28();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6F0, &qword_262A2E4A0);
  sub_2629D3B80();
  sub_262A2A848();

  return (*(v4 + 8))(v6, v3);
}

uint64_t SIDWorkoutPlanSchedule.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C720, &qword_262A2E4B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629D3B2C();
  sub_262A2AA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6F0, &qword_262A2E4A0);
    sub_2629D3D5C();
    sub_262A2A7E8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2629CAF7C(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_2629CD860(0, v3, 0);
  v4 = v10;
  if (v3)
  {
    for (i = a1 + 32; ; i += 8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C788, &unk_262A2E750);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6D8, &unk_262A2E7B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2629CD860((v6 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 8 * v7 + 32) = v9;
      if (!--v3)
      {
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

unint64_t sub_2629CB0BC(uint64_t a1, uint64_t a2)
{
  sub_262A2A998();
  sub_262A2A448();
  v4 = sub_262A2A9D8();

  return sub_2629CB788(a1, a2, v4);
}

unint64_t sub_2629CB134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_262A2A998();
  MEMORY[0x26672F240](a1);
  MEMORY[0x26672F240](a2);
  MEMORY[0x26672F240](a3);
  MEMORY[0x26672F240](a4);
  v8 = sub_262A2A9D8();

  return sub_2629CB840(a1, a2, a3, a4, v8);
}

unint64_t sub_2629CB250(uint64_t a1)
{
  v1 = a1;
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  v2 = sub_262A2A9D8();
  return sub_2629CBBF0(v1, v2);
}

unint64_t sub_2629CB2B8(uint64_t a1, uint64_t a2)
{
  sub_262A2A998();
  MEMORY[0x26672F240](a1);
  MEMORY[0x26672F240](a2);
  v4 = sub_262A2A9D8();

  return sub_2629CBCCC(a1, a2, v4);
}

uint64_t sub_2629CB364(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_262A2A998();
  a2(a1);
  sub_262A2A448();

  v5 = sub_262A2A9D8();

  return a3(a1, v5);
}

unint64_t sub_2629CB400(uint64_t a1)
{
  v2 = sub_262A2A678();

  return sub_2629CC614(a1, v2);
}

unint64_t sub_2629CB444(uint64_t a1)
{
  v1 = a1;
  sub_262A2A998();
  MEMORY[0x26672F240](qword_262A2E768[v1]);
  v2 = sub_262A2A9D8();

  return sub_2629CC6DC(v1, v2);
}

unint64_t sub_2629CB4BC(uint64_t a1)
{
  v1 = a1;
  sub_262A2A998();
  SIDWorkoutTrainerIdentifier.rawValue.getter();
  sub_262A2A448();

  v2 = sub_262A2A9D8();

  return sub_2629CC75C(v1, v2);
}

unint64_t sub_2629CB574(uint64_t a1)
{
  v1 = a1;
  sub_262A2A998();
  sub_262A2A448();

  v2 = sub_262A2A9D8();

  return sub_2629CD10C(v1, v2);
}

unint64_t sub_2629CB618(uint64_t a1)
{
  v2 = a1;
  v3 = sub_2629C2D58(*(v1 + 40), a1);

  return sub_2629CD264(v2, v3);
}

uint64_t sub_2629CB688(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_262A2A998();
  a2(v8, a1);
  v5 = sub_262A2A9D8();

  return a3(a1, v5);
}

unint64_t sub_2629CB708(char a1)
{
  sub_262A2A998();
  sub_262A2A448();

  v2 = sub_262A2A9D8();

  return sub_2629CD6F4(a1 & 1, v2);
}

unint64_t sub_2629CB788(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_262A2A878())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2629CB840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = -1 << *(v5 + 32);
  result = a5 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    do
    {
      v10 = (*(v5 + 48) + 32 * result);
      v11 = *v10;
      v12 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      if (v11 == a1 && v12 == a2 && v14 == a3 && v13 == a4)
      {
        break;
      }

      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2629CB8C4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA00000000003638;
      v8 = 0x3932343038373431;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xEA00000000003937;
          goto LABEL_17;
        case 2:
          v7 = 0xEA00000000003438;
          goto LABEL_17;
        case 3:
          v7 = 0xEA00000000003238;
          goto LABEL_17;
        case 4:
          v7 = 0xEA00000000003633;
          v8 = 0x3532363037343631;
          break;
        case 5:
          v7 = 0xEA00000000003839;
          goto LABEL_13;
        case 6:
          v7 = 0xEA00000000003738;
          goto LABEL_17;
        case 7:
          v7 = 0xEA00000000003739;
          goto LABEL_13;
        case 8:
          v8 = 0x3932343038373431;
          v7 = 0xEA00000000003038;
          break;
        case 9:
          v7 = 0xEA00000000003639;
LABEL_13:
          v8 = 0x3332373831363531;
          break;
        case 0xA:
          v7 = 0xEA00000000003338;
          goto LABEL_17;
        case 0xB:
          v7 = 0xEA00000000003138;
          goto LABEL_17;
        case 0xC:
          v7 = 0xEA00000000003635;
          v8 = 0x3032383934393431;
          break;
        case 0xD:
          v7 = 0xEA00000000003538;
LABEL_17:
          v8 = 0x3932343038373431;
          break;
        default:
          break;
      }

      v9 = 0xEA00000000003638;
      switch(a1)
      {
        case 1:
          v9 = 0xEA00000000003937;
          goto LABEL_35;
        case 2:
          v9 = 0xEA00000000003438;
          goto LABEL_35;
        case 3:
          v9 = 0xEA00000000003238;
          goto LABEL_35;
        case 4:
          v9 = 0xEA00000000003633;
          if (v8 != 0x3532363037343631)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        case 5:
          v9 = 0xEA00000000003839;
          goto LABEL_30;
        case 6:
          v9 = 0xEA00000000003738;
          goto LABEL_35;
        case 7:
          v9 = 0xEA00000000003739;
          goto LABEL_30;
        case 8:
          v9 = 0xEA00000000003038;
          if (v8 != 0x3932343038373431)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        case 9:
          v9 = 0xEA00000000003639;
LABEL_30:
          if (v8 != 0x3332373831363531)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        case 10:
          v9 = 0xEA00000000003338;
          goto LABEL_35;
        case 11:
          v9 = 0xEA00000000003138;
          goto LABEL_35;
        case 12:
          v9 = 0xEA00000000003635;
          if (v8 != 0x3032383934393431)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        case 13:
          v9 = 0xEA00000000003538;
          goto LABEL_35;
        default:
LABEL_35:
          if (v8 != 0x3932343038373431)
          {
            goto LABEL_37;
          }

LABEL_36:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_37:
          v10 = sub_262A2A878();

          if (v10)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2629CBBF0(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_2629CBC60(uint64_t a1, uint64_t a2)
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

unint64_t sub_2629CBCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2629CBD44(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE0064656C62616ELL;
      v8 = 0x456C65646F4D7369;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000014;
          v7 = 0x8000000262A313B0;
          break;
        case 2:
          v8 = 0xD000000000000021;
          v7 = 0x8000000262A313D0;
          break;
        case 3:
          v8 = 0xD000000000000014;
          v7 = 0x8000000262A31400;
          break;
        case 4:
          v8 = 0xD00000000000001BLL;
          v7 = 0x8000000262A31420;
          break;
        case 5:
          break;
        case 6:
          v8 = 0xD00000000000001BLL;
          v7 = 0x8000000262A31450;
          break;
        case 7:
          v8 = 0x6B6361426B6F6F6CLL;
          v7 = 0xEC00000073796144;
          break;
        case 8:
          v8 = 0xD000000000000014;
          v7 = 0x8000000262A31480;
          break;
        case 9:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000262A314A0;
          break;
        case 0xA:
          v8 = 0xD000000000000039;
          v7 = 0x8000000262A314C0;
          break;
        case 0xB:
          v8 = 0xD000000000000026;
          v7 = 0x8000000262A31500;
          break;
        case 0xC:
          v8 = 0xD000000000000026;
          v7 = 0x8000000262A31530;
          break;
        case 0xD:
          v8 = 0xD000000000000028;
          v7 = 0x8000000262A31560;
          break;
        case 0xE:
          v8 = 0xD000000000000027;
          v7 = 0x8000000262A31590;
          break;
        case 0xF:
          v8 = 0xD000000000000022;
          v7 = 0x8000000262A315C0;
          break;
        case 0x10:
          v8 = 0xD000000000000024;
          v7 = 0x8000000262A315F0;
          break;
        case 0x11:
          v8 = 0xD000000000000028;
          v7 = 0x8000000262A31620;
          break;
        case 0x12:
          v8 = 0xD000000000000014;
          v7 = 0x8000000262A31650;
          break;
        case 0x13:
          v8 = 0xD000000000000022;
          v7 = 0x8000000262A31670;
          break;
        case 0x14:
          v8 = 0xD000000000000026;
          v7 = 0x8000000262A316A0;
          break;
        case 0x15:
          v8 = 0xD000000000000012;
          v7 = 0x8000000262A316D0;
          break;
        case 0x16:
          v8 = 0xD000000000000022;
          v7 = 0x8000000262A316F0;
          break;
        case 0x17:
          v8 = 0xD00000000000001DLL;
          v7 = 0x8000000262A31720;
          break;
        case 0x18:
          v8 = 0xD00000000000001FLL;
          v7 = 0x8000000262A31740;
          break;
        case 0x19:
          v8 = 0xD00000000000001DLL;
          v7 = 0x8000000262A31760;
          break;
        case 0x1A:
          v8 = 0xD000000000000013;
          v7 = 0x8000000262A31780;
          break;
        default:
          v8 = 0xD000000000000021;
          v7 = 0x8000000262A31380;
          break;
      }

      v9 = 0x456C65646F4D7369;
      v10 = 0xEE0064656C62616ELL;
      switch(a1)
      {
        case 1:
          v10 = 0x8000000262A313B0;
          if (v8 == 0xD000000000000014)
          {
            goto LABEL_81;
          }

          goto LABEL_82;
        case 2:
          v10 = 0x8000000262A313D0;
          if (v8 != 0xD000000000000021)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 3:
          v10 = 0x8000000262A31400;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 4:
          v10 = 0x8000000262A31420;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 5:
          goto LABEL_80;
        case 6:
          v10 = 0x8000000262A31450;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 7:
          v10 = 0xEC00000073796144;
          if (v8 != 0x6B6361426B6F6F6CLL)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 8:
          v10 = 0x8000000262A31480;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 9:
          v10 = 0x8000000262A314A0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 10:
          v10 = 0x8000000262A314C0;
          if (v8 != 0xD000000000000039)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 11:
          v10 = 0x8000000262A31500;
          if (v8 != 0xD000000000000026)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 12:
          v10 = 0x8000000262A31530;
          if (v8 != 0xD000000000000026)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 13:
          v10 = 0x8000000262A31560;
          if (v8 != 0xD000000000000028)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 14:
          v10 = 0x8000000262A31590;
          if (v8 != 0xD000000000000027)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 15:
          v10 = 0x8000000262A315C0;
          if (v8 != 0xD000000000000022)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 16:
          v10 = 0x8000000262A315F0;
          if (v8 != 0xD000000000000024)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 17:
          v10 = 0x8000000262A31620;
          if (v8 != 0xD000000000000028)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 18:
          v10 = 0x8000000262A31650;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 19:
          v10 = 0x8000000262A31670;
          if (v8 != 0xD000000000000022)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 20:
          v10 = 0x8000000262A316A0;
          if (v8 != 0xD000000000000026)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 21:
          v10 = 0x8000000262A316D0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 22:
          v10 = 0x8000000262A316F0;
          if (v8 != 0xD000000000000022)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 23:
          v9 = 0xD00000000000001DLL;
          v10 = 0x8000000262A31720;
LABEL_80:
          if (v8 == v9)
          {
            goto LABEL_81;
          }

          goto LABEL_82;
        case 24:
          v10 = 0x8000000262A31740;
          if (v8 != 0xD00000000000001FLL)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 25:
          v10 = 0x8000000262A31760;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 26:
          v10 = 0x8000000262A31780;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        default:
          v10 = 0x8000000262A31380;
          if (v8 != 0xD000000000000021)
          {
            goto LABEL_82;
          }

LABEL_81:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_82:
          v11 = sub_262A2A878();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2629CC614(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2629C1D98(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26672EF20](v9, a1);
      sub_2629C1DF4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2629CC6DC(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_262A2E768[*(*(v2 + 48) + result)] == qword_262A2E768[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2629CC75C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA00000000003436;
      v8 = 0x3936313931323531;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xEA00000000003432;
          goto LABEL_31;
        case 2:
          v7 = 0xEA00000000003834;
          goto LABEL_37;
        case 3:
          v7 = 0xEA00000000003536;
          goto LABEL_28;
        case 4:
          v8 = 0x3536313931323531;
          v7 = 0xEA00000000003630;
          break;
        case 5:
          v7 = 0xEA00000000003137;
          goto LABEL_40;
        case 6:
          v8 = 0x3131303236323531;
          v7 = 0xEA00000000003536;
          break;
        case 7:
          v7 = 0xEA00000000003137;
          goto LABEL_28;
        case 8:
          v7 = 0xEA00000000003537;
          goto LABEL_28;
        case 9:
          v8 = 0x3535313931323531;
          v7 = 0xEA00000000003231;
          break;
        case 0xA:
          v8 = 0x3136393933373531;
          v7 = 0xEA00000000003830;
          break;
        case 0xB:
          v7 = 0xEA00000000003936;
          goto LABEL_37;
        case 0xC:
          v8 = 0x3835313931323531;
          goto LABEL_22;
        case 0xD:
          v7 = 0xEA00000000003631;
          v8 = 0x3936313931323531;
          break;
        case 0xE:
          v8 = 0x3035343739323631;
          v7 = 0xEA00000000003234;
          break;
        case 0xF:
          v8 = 0x3236313931323531;
          goto LABEL_22;
        case 0x10:
          v8 = 0x3534333231373531;
          v7 = 0xEA00000000003330;
          break;
        case 0x11:
          v8 = 0x3036313931323531;
          v7 = 0xEA00000000003634;
          break;
        case 0x12:
          v7 = 0xEA00000000003138;
          v8 = 0x3936313931323531;
          break;
        case 0x13:
          v7 = 0xEA00000000003533;
          goto LABEL_33;
        case 0x14:
          v7 = 0xEA00000000003335;
          goto LABEL_35;
        case 0x15:
          v8 = 0x3331393535343631;
LABEL_22:
          v7 = 0xEA00000000003832;
          break;
        case 0x16:
          v7 = 0xEA00000000003831;
LABEL_31:
          v8 = 0x3236313931323531;
          break;
        case 0x17:
          v7 = 0xEA00000000003336;
LABEL_35:
          v8 = 0x3439303330373531;
          break;
        case 0x18:
          v8 = 0x3531393535343631;
          v7 = 0xEA00000000003437;
          break;
        case 0x19:
          v7 = 0xEA00000000003934;
LABEL_28:
          v8 = 0x3337313931323531;
          break;
        case 0x1A:
          v7 = 0xEA00000000003537;
LABEL_40:
          v9 = 0x303236323531;
          goto LABEL_41;
        case 0x1B:
          v7 = 0xEA00000000003630;
          v9 = 0x393535343631;
LABEL_41:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x3331000000000000;
          break;
        case 0x1C:
          v7 = 0xEA00000000003636;
LABEL_37:
          v8 = 0x3637313931323531;
          break;
        case 0x1D:
          v8 = 0x3436393933373531;
          v7 = 0xEA00000000003539;
          break;
        case 0x1E:
          v7 = 0xEA00000000003534;
LABEL_33:
          v8 = 0x3835313931323531;
          break;
        default:
          break;
      }

      v10 = 0x3936313931323531;
      v11 = 0xEA00000000003436;
      switch(a1)
      {
        case 1:
          v11 = 0xEA00000000003432;
          goto LABEL_82;
        case 2:
          v11 = 0xEA00000000003834;
          goto LABEL_91;
        case 3:
          v11 = 0xEA00000000003536;
          goto LABEL_78;
        case 4:
          v11 = 0xEA00000000003630;
          if (v8 != 0x3536313931323531)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 5:
          v11 = 0xEA00000000003137;
          goto LABEL_100;
        case 6:
          v11 = 0xEA00000000003536;
          if (v8 != 0x3131303236323531)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 7:
          v11 = 0xEA00000000003137;
          goto LABEL_78;
        case 8:
          v11 = 0xEA00000000003537;
          goto LABEL_78;
        case 9:
          v11 = 0xEA00000000003231;
          if (v8 != 0x3535313931323531)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 10:
          v11 = 0xEA00000000003830;
          if (v8 != 0x3136393933373531)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 11:
          v11 = 0xEA00000000003936;
          goto LABEL_91;
        case 12:
          v13 = 0x3835313931323531;
          goto LABEL_67;
        case 13:
          v11 = 0xEA00000000003631;
          goto LABEL_73;
        case 14:
          v11 = 0xEA00000000003234;
          if (v8 != 0x3035343739323631)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 15:
          v13 = 0x3236313931323531;
          goto LABEL_67;
        case 16:
          v11 = 0xEA00000000003330;
          if (v8 != 0x3534333231373531)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 17:
          v11 = 0xEA00000000003634;
          if (v8 != 0x3036313931323531)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 18:
          v11 = 0xEA00000000003138;
LABEL_73:
          if (v8 != 0x3936313931323531)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 19:
          v11 = 0xEA00000000003533;
          goto LABEL_85;
        case 20:
          v11 = 0xEA00000000003335;
          goto LABEL_88;
        case 21:
          v13 = 0x3331393535343631;
LABEL_67:
          v11 = 0xEA00000000003832;
          if (v8 != v13)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 22:
          v11 = 0xEA00000000003831;
LABEL_82:
          if (v8 != 0x3236313931323531)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 23:
          v11 = 0xEA00000000003336;
LABEL_88:
          if (v8 != 0x3439303330373531)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 24:
          v11 = 0xEA00000000003437;
          if (v8 != 0x3531393535343631)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 25:
          v11 = 0xEA00000000003934;
LABEL_78:
          if (v8 != 0x3337313931323531)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 26:
          v11 = 0xEA00000000003537;
LABEL_100:
          v12 = 0x303236323531;
          goto LABEL_101;
        case 27:
          v11 = 0xEA00000000003630;
          v12 = 0x393535343631;
LABEL_101:
          if (v8 != (v12 & 0xFFFFFFFFFFFFLL | 0x3331000000000000))
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 28:
          v11 = 0xEA00000000003636;
LABEL_91:
          if (v8 != 0x3637313931323531)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        case 29:
          v10 = 0x3436393933373531;
          v11 = 0xEA00000000003539;
          goto LABEL_94;
        case 30:
          v11 = 0xEA00000000003534;
LABEL_85:
          if (v8 != 0x3835313931323531)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        default:
LABEL_94:
          if (v8 != v10)
          {
            goto LABEL_96;
          }

LABEL_95:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_96:
          v14 = sub_262A2A878();

          if (v14)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2629CD018(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1 << 16;
    while (v6 != *(*(v2 + 48) + v4) << 16)
    {
      v7 = sub_262A2A878();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_2629CD10C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0xE200000000000000;
        if (*(*(v2 + 48) + v4) == 1)
        {
          v8 = 12337;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v8 = 12593;
          v9 = a1;
          if (!a1)
          {
LABEL_14:
            v11 = 0xE100000000000000;
            if (v8 != 57)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
        v7 = 0xE100000000000000;
        v8 = 57;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_14;
        }
      }

      if (v9 == 1)
      {
        v10 = 12337;
      }

      else
      {
        v10 = 12593;
      }

      v11 = 0xE200000000000000;
      if (v8 != v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_16:
      v12 = sub_262A2A878();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_2629CD264(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v2 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v11 = 0xEA00000000003735;
            v10 = 0x3032383934393431;
          }

          else
          {
            v11 = 0xEA00000000003638;
            v10 = 0x3930393836383531;
          }
        }

        else
        {
          v11 = v6 == 4 ? 0xEA00000000003836 : 0xEA00000000003736;
          v10 = 0x3932343038373431;
        }
      }

      else
      {
        v7 = 0xEA00000000003739;
        v8 = 0xEA00000000003636;
        if (v6 != 2)
        {
          v8 = 0xEA00000000003037;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0x3932343038373431;
        }

        else
        {
          v9 = 0x3931333738353531;
        }

        if (*(*(v2 + 48) + v4))
        {
          v7 = 0xEA00000000003936;
        }

        v10 = *(*(v2 + 48) + v4) <= 1u ? v9 : 0x3932343038373431;
        v11 = *(*(v2 + 48) + v4) <= 1u ? v7 : v8;
      }

      v12 = 0xEA00000000003739;
      v13 = 0xEA00000000003735;
      v14 = 0x3930393836383531;
      if (v5 == 6)
      {
        v14 = 0x3032383934393431;
      }

      else
      {
        v13 = 0xEA00000000003638;
      }

      v15 = 0xEA00000000003836;
      if (v5 != 4)
      {
        v15 = 0xEA00000000003736;
      }

      if (v5 <= 5)
      {
        v14 = 0x3932343038373431;
        v13 = v15;
      }

      v16 = 0xEA00000000003636;
      if (v5 != 2)
      {
        v16 = 0xEA00000000003037;
      }

      if (v5)
      {
        v17 = 0x3932343038373431;
      }

      else
      {
        v17 = 0x3931333738353531;
      }

      if (v5)
      {
        v12 = 0xEA00000000003936;
      }

      if (v5 <= 1)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0x3932343038373431;
      }

      if (v5 > 1)
      {
        v12 = v16;
      }

      v19 = v5 <= 3 ? v18 : v14;
      v20 = v5 <= 3 ? v12 : v13;
      if (v10 == v19 && v11 == v20)
      {
        break;
      }

      v21 = sub_262A2A878();

      if ((v21 & 1) == 0)
      {
        v4 = (v4 + 1) & v23;
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

unint64_t sub_2629CD4A0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 4)
      {
        if (*(*(v2 + 48) + v4) <= 6u)
        {
          v11 = 0xE100000000000000;
          v10 = v7 == 5 ? 55 : 56;
        }

        else if (v7 == 7)
        {
          v11 = 0xE100000000000000;
          v10 = 57;
        }

        else
        {
          v11 = 0xE200000000000000;
          v10 = v7 == 8 ? 12337 : 12593;
        }
      }

      else
      {
        v8 = 53;
        if (v7 != 3)
        {
          v8 = 54;
        }

        if (v7 == 2)
        {
          v8 = 52;
        }

        v9 = 50;
        if (*(*(v2 + 48) + v4))
        {
          v9 = 51;
        }

        v10 = *(*(v2 + 48) + v4) <= 1u ? v9 : v8;
        v11 = 0xE100000000000000;
      }

      if (v6 > 4)
      {
        break;
      }

      if (v6 <= 1)
      {
        if (v6)
        {
          v14 = 51;
        }

        else
        {
          v14 = 50;
        }

LABEL_39:
        v12 = 0xE100000000000000;
        if (v10 != v14)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      v12 = 0xE100000000000000;
      if (v6 == 2)
      {
        if (v10 != 52)
        {
          goto LABEL_41;
        }
      }

      else if (v6 == 3)
      {
        if (v10 != 53)
        {
          goto LABEL_41;
        }
      }

      else if (v10 != 54)
      {
        goto LABEL_41;
      }

LABEL_40:
      if (v11 == v12)
      {

        return v4;
      }

LABEL_41:
      v15 = sub_262A2A878();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    if (v6 > 6)
    {
      if (v6 == 7)
      {
        v12 = 0xE100000000000000;
        if (v10 != 57)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v6 == 8)
        {
          v13 = 12337;
        }

        else
        {
          v13 = 12593;
        }

        v12 = 0xE200000000000000;
        if (v10 != v13)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_40;
    }

    if (v6 == 5)
    {
      v14 = 55;
    }

    else
    {
      v14 = 56;
    }

    goto LABEL_39;
  }

  return v4;
}

unint64_t sub_2629CD6F4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 52;
    }

    else
    {
      v6 = 53;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 52 : 53;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_262A2A878();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

void *sub_2629CD7E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1D674(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2629CD800(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1D7A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2629CD820(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1DB90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2629CD840(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1D8B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2629CD860(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1DBB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2629CD880(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1DBD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2629CD8A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1DD04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2629CD8C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1DD18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2629CD8E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1D9B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2629CD900(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1DD2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2629CD920(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1DE30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2629CD940(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1DF3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2629CD960(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1E04C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2629CD980(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1E390(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2629CD9A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1E4B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2629CD9C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262A1E608(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2629CD9E0(uint64_t a1, char a2, void *a3)
{
  v43 = *(a1 + 16);
  if (!v43)
  {
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = *a3;
  v9 = sub_2629CB250(v6);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_2629CEE14(&qword_27FF3C6B0, &unk_262A2E470);
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    MEMORY[0x26672F6B0](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x26672F6A0](v19);
    }

    goto LABEL_29;
  }

  sub_2629D1F30(v13, a2 & 1, &qword_27FF3C6B0, &unk_262A2E470);
  v17 = sub_2629CB250(v6);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_262A2A938();
    __break(1u);
LABEL_29:
    sub_262A2A6F8();
    MEMORY[0x26672ECF0](0xD00000000000001BLL, 0x8000000262A32480);
    sub_262A2A738();
    MEMORY[0x26672ECF0](39, 0xE100000000000000);
    result = sub_262A2A748();
    __break(1u);
    return result;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v21[6] + v14) = v6;
  *(v21[7] + 8 * v14) = v7;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v43 != 1)
  {
    v25 = (a1 + 56);
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      v28 = *v25;
      v27 = *(v25 - 8);
      v29 = *a3;
      v30 = sub_2629CB250(v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];

      if (v37 < v34)
      {
        sub_2629D1F30(v34, 1, &qword_27FF3C6B0, &unk_262A2E470);
        v38 = sub_2629CB250(v27);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }

        v35 = v38;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v40[6] + v35) = v27;
      *(v40[7] + 8 * v35) = v28;
      v41 = v40[2];
      v23 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v40[2] = v42;
      v25 += 2;
      if (v43 == v26)
      {
      }
    }

    goto LABEL_27;
  }
}

void *sub_2629CDD84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0E0, &qword_262A2B578);
  v2 = *v0;
  v3 = sub_262A2A758();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2629ADE10(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_2629AD99C(v19, (*(v4 + 56) + 32 * v17));
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

void sub_2629CDF3C()
{
  v1 = v0;
  v2 = type metadata accessor for SIDCatalogWorkoutReference(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C790, &qword_262A2E760);
  v4 = *v0;
  v5 = sub_262A2A758();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_2629D40F4(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_2629D4158(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_2629CE16C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF20, &qword_262A2E6D0);
  v2 = *v0;
  v3 = sub_262A2A758();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void sub_2629CE2C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C038, &unk_262A2B4E0);
  v2 = *v0;
  v3 = sub_262A2A758();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void *sub_2629CE428()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C018, &unk_262A2B4C0);
  v2 = *v0;
  v3 = sub_262A2A758();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void *sub_2629CE574()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C028, &unk_262A2B4D0);
  v2 = *v0;
  v3 = sub_262A2A758();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void sub_2629CE6C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C030, &unk_262A2E730);
  v2 = *v0;
  v3 = sub_262A2A758();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
}

void sub_2629CE828()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF58, &qword_262A2B400);
  v2 = *v0;
  v3 = sub_262A2A758();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        v20 = (*(v4 + 48) + 32 * v17);
        v21 = v18[1];
        *v20 = *v18;
        v20[1] = v21;
        *(*(v4 + 56) + 8 * v17) = v19;
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
}

void sub_2629CE9A4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_262A2A758();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void *sub_2629CEB18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF50, &unk_262A2E6E0);
  v2 = *v0;
  v3 = sub_262A2A758();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 48) + 32 * v14);
      v18 = *(*(v2 + 56) + 8 * v14);
      v19 = (*(v4 + 48) + 32 * v14);
      v20 = v17[1];
      *v19 = *v17;
      v19[1] = v20;
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

void *sub_2629CEC70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C058, &qword_262A2B500);
  v2 = *v0;
  v3 = sub_262A2A758();
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
        v18 = *(*(v2 + 48) + v17);
        sub_2629ADE10(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_2629AD99C(v19, (*(v4 + 56) + 32 * v17));
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

void sub_2629CEE14(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_262A2A758();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_2629CEF88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFD8, &qword_262A2B480);
  v2 = *v0;
  v3 = sub_262A2A758();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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
}

void *sub_2629CF140(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_262A2A758();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2629CF27C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF68, &qword_262A2B410);
  v2 = *v0;
  v3 = sub_262A2A758();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

void sub_2629CF3C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFA0, &unk_262A2E6F0);
  v2 = *v0;
  v3 = sub_262A2A758();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *v18;
        v21 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v20 = (*(v4 + 56) + 32 * v17);
        *v20 = v19;
        v20[1] = v21;
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
}

uint64_t sub_2629CF564(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0E0, &qword_262A2B578);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_2629AD99C(v21, v31);
      }

      else
      {
        sub_2629ADE10(v21, v31);
      }

      result = sub_262A2A988();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_2629AD99C(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2629CF7F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CDD0, &qword_262A2B3B0);
  v6 = sub_262A2A768();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_31:

    goto LABEL_32;
  }

  v32 = v4;
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
  v14 = v6 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v23 = v20 | (v8 << 6);
    v24 = *(*(v5 + 48) + v23);
    v25 = *(*(v5 + 56) + 8 * v23);
    sub_262A2A998();
    sub_262A2A448();

    v15 = sub_262A2A9D8();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v27 && (v26 & 1) != 0)
        {
          goto LABEL_34;
        }

        v28 = v18 == v27;
        if (v18 == v27)
        {
          v18 = 0;
        }

        v26 |= v28;
        v29 = *(v14 + 8 * v18);
      }

      while (v29 == -1);
      v19 = __clz(__rbit64(~v29)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v24;
    *(*(v7 + 56) + 8 * v19) = v25;
    ++*(v7 + 16);
  }

  v21 = v8;
  while (1)
  {
    v8 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      JUMPOUT(0x2629CFB50);
    }

    if (v8 >= v13)
    {
      break;
    }

    v22 = v9[v8];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v12 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  if (v32)
  {
    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  v3 = v2;
LABEL_32:
  *v3 = v7;
  return result;
}

uint64_t sub_2629CFB9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SIDCatalogWorkoutReference(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C790, &qword_262A2E760);
  v40 = v4;
  result = sub_262A2A768();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_2629D4158(v28, v41);
      }

      else
      {
        sub_2629D40F4(v28, v41);
      }

      sub_262A2A998();
      sub_262A2A448();
      result = sub_262A2A9D8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_2629D4158(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2629CFF00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF20, &qword_262A2E6D0);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_262A2A988();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2629D0170(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C038, &unk_262A2B4E0);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v19 = v16 | (v8 << 6);
      v29 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_262A2A998();
      MEMORY[0x26672F240](v29);
      MEMORY[0x26672F240](*(&v29 + 1));
      result = sub_262A2A9D8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v29;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2629D0410(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C018, &unk_262A2B4C0);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_262A2A988();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2629D0674(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C028, &unk_262A2B4D0);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_262A2A988();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2629D08D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C030, &unk_262A2E730);
  v34 = v4;
  result = sub_262A2A768();
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
      }

      sub_262A2A998();
      sub_262A2A448();
      result = sub_262A2A9D8();
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

uint64_t sub_2629D0B78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF58, &qword_262A2B400);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = (*(v5 + 48) + 32 * v20);
      v31 = v21[1];
      v32 = *v21;
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v4 & 1) == 0)
      {
      }

      sub_262A2A998();
      MEMORY[0x26672F240](v32);
      MEMORY[0x26672F240](*(&v32 + 1));
      MEMORY[0x26672F240](v31);
      MEMORY[0x26672F240](*(&v31 + 1));
      result = sub_262A2A9D8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v32;
      v16[1] = v31;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2629D0E54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_262A2A768();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_262A2A998();
      sub_262A2A448();
      result = sub_262A2A9D8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_2629D10F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFB0, &qword_262A2B458);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_262A2A998();
      MEMORY[0x26672F240](v20);
      result = sub_262A2A9D8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_2629D1374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF50, &unk_262A2E6E0);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v4;
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
      v21 = (*(v5 + 48) + 32 * v20);
      v32 = v21[1];
      v33 = *v21;
      v22 = *(*(v5 + 56) + 8 * v20);
      sub_262A2A998();
      MEMORY[0x26672F240](v33);
      MEMORY[0x26672F240](*(&v33 + 1));
      MEMORY[0x26672F240](v32);
      MEMORY[0x26672F240](*(&v32 + 1));
      result = sub_262A2A9D8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v33;
      v16[1] = v32;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
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

uint64_t sub_2629D1630(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C058, &qword_262A2B500);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_2629AD99C(v21, v30);
      }

      else
      {
        sub_2629ADE10(v21, v30);
      }

      sub_262A2A998();
      sub_2629AF16C(v20);
      sub_262A2A448();

      result = sub_262A2A9D8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_2629AD99C(v30, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2629D18E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C008, &unk_262A2B4B0);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_262A2A998();
      MEMORY[0x26672F240](qword_262A2E768[v20]);
      result = sub_262A2A9D8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
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

uint64_t sub_2629D1B7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v34 = v6;
  v8 = sub_262A2A768();
  v9 = v8;
  if (!*(v7 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = v8 + 64;
  while (v14)
  {
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v25 = v22 | (v10 << 6);
    v26 = *(*(v7 + 48) + v25);
    v27 = *(*(v7 + 56) + 8 * v25);
    if ((v34 & 1) == 0)
    {
    }

    sub_262A2A998();
    sub_262A2A448();

    v17 = sub_262A2A9D8();
    v18 = -1 << *(v9 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v16 + 8 * (v19 >> 6))) != 0)
    {
      v21 = __clz(__rbit64((-1 << v19) & ~*(v16 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = 0;
      v29 = (63 - v18) >> 6;
      do
      {
        if (++v20 == v29 && (v28 & 1) != 0)
        {
          goto LABEL_36;
        }

        v30 = v20 == v29;
        if (v20 == v29)
        {
          v20 = 0;
        }

        v28 |= v30;
        v31 = *(v16 + 8 * v20);
      }

      while (v31 == -1);
      v21 = __clz(__rbit64(~v31)) + (v20 << 6);
    }

    *(v16 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v26;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
  }

  v23 = v10;
  while (1)
  {
    v10 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x2629D1EE4);
    }

    if (v10 >= v15)
    {
      break;
    }

    v24 = v11[v10];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v14 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  if (v34)
  {
    v32 = 1 << *(v7 + 32);
    v5 = v4;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
    goto LABEL_33;
  }

  v5 = v4;
LABEL_34:
  *v5 = v9;
  return result;
}

uint64_t sub_2629D1F30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v32 = v6;
  result = sub_262A2A768();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v32 & 1) == 0)
      {
      }

      sub_262A2A998();
      MEMORY[0x26672F240](v22);
      result = sub_262A2A9D8();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_2629D21B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFD0, &unk_262A2E700);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_262A2A998();
      SIDWorkoutTrainerIdentifier.rawValue.getter();
      sub_262A2A448();

      result = sub_262A2A9D8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
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

uint64_t sub_2629D2454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFC0, &qword_262A2B468);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_262A2A998();
      sub_262A2A448();

      result = sub_262A2A9D8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
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

uint64_t sub_2629D26E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFD8, &qword_262A2B480);
  v6 = sub_262A2A768();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

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
  v14 = v6 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v23 = v20 | (v8 << 6);
    v24 = *(*(v5 + 48) + v23);
    v31 = *(*(v5 + 56) + 16 * v23);
    if ((v4 & 1) == 0)
    {
    }

    sub_262A2A998();
    sub_262A2A448();

    v15 = sub_262A2A9D8();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = 0;
      v26 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v26 && (v25 & 1) != 0)
        {
          goto LABEL_36;
        }

        v27 = v18 == v26;
        if (v18 == v26)
        {
          v18 = 0;
        }

        v25 |= v27;
        v28 = *(v14 + 8 * v18);
      }

      while (v28 == -1);
      v19 = __clz(__rbit64(~v28)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v24;
    *(*(v7 + 56) + 16 * v19) = v31;
    ++*(v7 + 16);
  }

  v21 = v8;
  while (1)
  {
    v8 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x2629D2A60);
    }

    if (v8 >= v13)
    {
      break;
    }

    v22 = v9[v8];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v12 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  if (v4)
  {
    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  v3 = v2;
LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2629D2A98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF98, &unk_262A2B440);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_262A2A998();
      sub_262A2A448();

      result = sub_262A2A9D8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
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

uint64_t sub_2629D2D44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF88, &qword_262A2B430);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_262A2A998();
      sub_262A2A448();

      result = sub_262A2A9D8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
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

uint64_t sub_2629D30A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF78, &qword_262A2B420);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      sub_262A2A998();
      sub_262A2A448();

      result = sub_262A2A9D8();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
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

uint64_t sub_2629D33C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF68, &qword_262A2B410);
  result = sub_262A2A768();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_262A2A998();
      sub_262A2A448();

      result = sub_262A2A9D8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
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